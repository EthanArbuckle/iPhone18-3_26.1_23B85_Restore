uint64_t _s13BookAnalytics20ListeningSessionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v9 = *(a1 + 44);
  v10 = *(a1 + 48);
  v11 = *(a1 + 49);
  v12 = *(a1 + 52);
  v13 = *(a1 + 56);
  v14 = *(a1 + 57);
  v15 = *(a2 + 8);
  v16 = *(a2 + 12);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 41);
  v22 = *(a2 + 44);
  v23 = *(a2 + 48);
  v24 = *(a2 + 49);
  v25 = *(a2 + 52);
  v26 = *(a2 + 56);
  v27 = *(a2 + 57);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v28 = *(a2 + 4);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (v4 == v17)
    {
      v29 = v16;
    }

    else
    {
      v29 = 0;
    }

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    result = 0;
    if (v3 != v15 || v4 != v17)
    {
      return result;
    }
  }

  if (!v5)
  {
    result = 0;
    if (v19 || ((v7 ^ v20) & 1) != 0)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (!v19)
  {
    return 0;
  }

  if (v6 != v18 || v5 != v19)
  {
    v34 = v26;
    v35 = v13;
    v36 = v27;
    v37 = v14;
    v31 = sub_1E1D30();
    result = 0;
    if ((v31 & 1) == 0)
    {
      return result;
    }

    if ((v7 ^ v20))
    {
      return result;
    }

    v27 = v36;
    v14 = v37;
    v26 = v34;
    v13 = v35;
    if ((v8 ^ v21))
    {
      return result;
    }

    goto LABEL_30;
  }

  result = 0;
  if (v7 != v20)
  {
    return result;
  }

LABEL_25:
  if ((v8 ^ v21))
  {
    return result;
  }

LABEL_30:
  result = 0;
  if (v10)
  {
    if (!v23)
    {
      return result;
    }

LABEL_37:
    if ((v11 ^ v24))
    {
      return result;
    }

    if (v13)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (v12 == v25)
      {
        v33 = v26;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    if (v14 == 2)
    {
      if (v27 != 2)
      {
        return 0;
      }
    }

    else if (v27 == 2 || ((v27 ^ v14) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v9 == v22)
  {
    v32 = v23;
  }

  else
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_37;
  }

  return result;
}

unint64_t sub_140ADC()
{
  result = qword_2892D0;
  if (!qword_2892D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2892D0);
  }

  return result;
}

__n128 sub_140B38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_140B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_140BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_140C38()
{
  result = qword_2892E0;
  if (!qword_2892E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2892E0);
  }

  return result;
}

unint64_t sub_140C90()
{
  result = qword_2892E8;
  if (!qword_2892E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2892E8);
  }

  return result;
}

unint64_t sub_140CE8()
{
  result = qword_2892F0;
  if (!qword_2892F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2892F0);
  }

  return result;
}

uint64_t sub_140D3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED00006465657053 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696E657473696CLL && a2 == 0xEB00000000444967 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6569766572507369 && a2 == 0xE900000000000077 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D61657274537369 && a2 == 0xEB00000000676E69 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000216D40 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72676B6361427369 && a2 == 0xEE006465646E756FLL || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002155E0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000216D60 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t YIRSourceData.totalReadTime.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t YIRSourceData.totalReadTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.longestPageCount.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t YIRSourceData.longestPageCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.finishedSeries.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t YIRSourceData.finishedSeries.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t LinkData.previousGenreID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t LinkData.previousGenreID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t LinkData.previousCollectionID.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t LinkData.previousCollectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t YIRSourceData.totalRatedContent.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t YIRSourceData.totalRatedContent.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.finishedBooks.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t YIRSourceData.finishedBooks.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.longestStreak.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t YIRSourceData.longestStreak.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.readingGoalsReachedDays.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t YIRSourceData.readingGoalsReachedDays.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.avgReadingTime.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t YIRSourceData.avgReadingTime.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

unint64_t sub_1413B0(char a1)
{
  result = 0x6D614E656D617266;
  switch(a1)
  {
    case 1:
      result = 0x7954726564616572;
      break;
    case 2:
      result = 0x6165526C61746F74;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 9:
      result = 0x64656873696E6966;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 8:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x53747365676E6F6CLL;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x6964616552677661;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_14157C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_143190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1415B0(uint64_t a1)
{
  v2 = sub_142B50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1415EC(uint64_t a1)
{
  v2 = sub_142B50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YIRSourceData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2892F8, &qword_200068);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = *v1;
  v37 = v1[1];
  v36 = *(v1 + 1);
  v35 = v1[16];
  v34 = *(v1 + 3);
  v9 = v1[32];
  v31 = *(v1 + 5);
  v32 = v1[48];
  v33 = v9;
  v10 = *(v1 + 7);
  v30 = v1[64];
  v11 = *(v1 + 9);
  v28 = *(v1 + 10);
  v29 = v10;
  v12 = *(v1 + 12);
  v25 = *(v1 + 11);
  v26 = v12;
  v27 = v11;
  v23 = *(v1 + 13);
  v24 = v1[112];
  v21 = *(v1 + 15);
  v22 = v1[128];
  v19 = *(v1 + 17);
  v20 = v1[144];
  v17[1] = *(v1 + 19);
  v18 = v1[160];
  v17[0] = *(v1 + 21);
  v13 = v1[176];
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_142B50();
  sub_1E1E00();
  v53 = v8;
  v52 = 0;
  sub_142BA4();
  v15 = v38;
  sub_1E1C80();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  LODWORD(v38) = v13;
  v51 = v37;
  v50 = 1;
  sub_142BF8();
  sub_1E1C80();
  v49 = 2;
  sub_1E1CA0();
  v48 = 3;
  sub_1E1CA0();
  v47 = 4;
  sub_1E1CA0();
  v46 = 5;
  sub_1E1CA0();
  v45 = 6;
  sub_1E1C50();
  v44 = 7;
  sub_1E1C50();
  v43 = 8;
  sub_1E1CA0();
  v42 = 9;
  sub_1E1CA0();
  v41 = 10;
  sub_1E1CA0();
  v40 = 11;
  sub_1E1CA0();
  v39 = 12;
  sub_1E1CA0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t YIRSourceData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_3D68(&qword_289318, &qword_200070);
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v54);
  v8 = &v39 - v7;
  v126 = 1;
  v124 = 1;
  v122 = 1;
  v120 = 1;
  v118 = 1;
  v116 = 1;
  v114 = 1;
  v112 = 1;
  v110 = 1;
  v9 = a1[3];
  v10 = a1[4];
  v55 = a1;
  sub_48B8(a1, v9);
  sub_142B50();
  sub_1E1DF0();
  if (v2)
  {
    v129 = v2;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    sub_4E48(v55);
    v76 = 16;
    v77 = 6;
    v78 = v127;
    v79 = v128;
    v80 = 0;
    v81 = v126;
    *v82 = *v125;
    *&v82[3] = *&v125[3];
    v83 = 0;
    v84 = v124;
    *v85 = *v123;
    *&v85[3] = *&v123[3];
    v86 = 0;
    v87 = v122;
    *v88 = *v121;
    *&v88[3] = *&v121[3];
    v89 = 0;
    v90 = v120;
    *v91 = *v119;
    *&v91[3] = *&v119[3];
    v92 = 0;
    v93 = v59;
    v94 = v57;
    v95 = v58;
    v96 = v56;
    v97 = v118;
    *&v98[3] = *&v117[3];
    *v98 = *v117;
    v99 = v62;
    v100 = v116;
    *&v101[3] = *&v115[3];
    *v101 = *v115;
    v102 = v61;
    v103 = v114;
    *v104 = *v113;
    *&v104[3] = *&v113[3];
    v105 = v60;
    v106 = v112;
    *&v107[3] = *&v111[3];
    *v107 = *v111;
    v108 = 0;
    v109 = v110;
  }

  else
  {
    LOBYTE(v63) = 0;
    sub_142C7C();
    sub_1E1BB0();
    v53 = v76;
    LOBYTE(v63) = 1;
    sub_142CD0();
    sub_1E1BB0();
    v52 = v76;
    v76 = 2;
    v51 = sub_1E1BD0();
    v126 = v12 & 1;
    v76 = 3;
    v50 = sub_1E1BD0();
    v124 = v13 & 1;
    v76 = 4;
    v49 = sub_1E1BD0();
    v122 = v14 & 1;
    v76 = 5;
    v48 = sub_1E1BD0();
    v120 = v15 & 1;
    v76 = 6;
    v47 = sub_1E1B80();
    v59 = v16;
    v76 = 7;
    v57 = sub_1E1B80();
    v58 = v17;
    v76 = 8;
    v18 = sub_1E1BD0();
    v129 = 0;
    v56 = v18;
    v118 = v19 & 1;
    v76 = 9;
    v62 = sub_1E1BD0();
    v129 = 0;
    v116 = v20 & 1;
    v76 = 10;
    v61 = sub_1E1BD0();
    v129 = 0;
    v114 = v21 & 1;
    v76 = 11;
    v60 = sub_1E1BD0();
    v129 = 0;
    v112 = v22 & 1;
    v75 = 12;
    v23 = sub_1E1BD0();
    v129 = 0;
    v24 = v23;
    v26 = v25;
    (*(v5 + 8))(v8, v54);
    v110 = v26 & 1;
    v27 = v52;
    v28 = v53;
    LOBYTE(v63) = v53;
    BYTE1(v63) = v52;
    v29 = v50;
    *(&v63 + 1) = v51;
    v40 = v126;
    LOBYTE(v64) = v126;
    *(&v64 + 1) = v50;
    v41 = v124;
    LOBYTE(v65) = v124;
    v30 = v49;
    *(&v65 + 1) = v49;
    v42 = v122;
    LOBYTE(v66) = v122;
    *(&v66 + 1) = v48;
    v44 = v120;
    LOBYTE(v67) = v120;
    *(&v67 + 1) = v47;
    *&v68 = v59;
    *(&v68 + 1) = v57;
    *&v69 = v58;
    *(&v69 + 1) = v56;
    LODWORD(v54) = v118;
    LOBYTE(v70) = v118;
    *(&v70 + 1) = *v117;
    DWORD1(v70) = *&v117[3];
    *(&v70 + 1) = v62;
    v46 = v116;
    LOBYTE(v71) = v116;
    *(&v71 + 1) = *v115;
    DWORD1(v71) = *&v115[3];
    *(&v71 + 1) = v61;
    v45 = v114;
    LOBYTE(v72) = v114;
    DWORD1(v72) = *&v113[3];
    *(&v72 + 1) = *v113;
    *(&v72 + 1) = v60;
    v43 = v112;
    LOBYTE(v73) = v112;
    DWORD1(v73) = *&v111[3];
    *(&v73 + 1) = *v111;
    *(&v73 + 1) = v24;
    v31 = v110;
    v74 = v110;
    *(a2 + 176) = v110;
    v32 = v72;
    *(a2 + 128) = v71;
    *(a2 + 144) = v32;
    v33 = v63;
    v34 = v64;
    v35 = v66;
    *(a2 + 32) = v65;
    *(a2 + 48) = v35;
    *a2 = v33;
    *(a2 + 16) = v34;
    v36 = v67;
    v37 = v68;
    v38 = v70;
    *(a2 + 96) = v69;
    *(a2 + 112) = v38;
    *(a2 + 64) = v36;
    *(a2 + 80) = v37;
    *(a2 + 160) = v73;
    sub_142D24(&v63, &v76);
    sub_4E48(v55);
    v76 = v28;
    v77 = v27;
    v78 = v127;
    v79 = v128;
    v80 = v51;
    v81 = v40;
    *v82 = *v125;
    *&v82[3] = *&v125[3];
    v83 = v29;
    v84 = v41;
    *v85 = *v123;
    *&v85[3] = *&v123[3];
    v86 = v30;
    v87 = v42;
    *&v88[3] = *&v121[3];
    *v88 = *v121;
    v89 = v48;
    v90 = v44;
    *v91 = *v119;
    *&v91[3] = *&v119[3];
    v92 = v47;
    v93 = v59;
    v94 = v57;
    v95 = v58;
    v96 = v56;
    v97 = v54;
    *&v98[3] = *&v117[3];
    *v98 = *v117;
    v99 = v62;
    v100 = v46;
    *v101 = *v115;
    *&v101[3] = *&v115[3];
    v102 = v61;
    v103 = v45;
    *v104 = *v113;
    *&v104[3] = *&v113[3];
    v105 = v60;
    v106 = v43;
    *&v107[3] = *&v111[3];
    *v107 = *v111;
    v108 = v24;
    v109 = v31;
  }

  return sub_142C4C(&v76);
}

BOOL _s13BookAnalytics13YIRSourceDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v138 = *(a1 + 1);
  v141 = a1[16];
  v134 = *(a1 + 3);
  v139 = a1[32];
  v131 = *(a1 + 5);
  v135 = a1[48];
  v4 = *(a1 + 7);
  v5 = a1[64];
  v6 = *(a1 + 9);
  v7 = *(a1 + 10);
  v9 = *(a1 + 11);
  v8 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 15);
  v126 = a1[128];
  v127 = a1[112];
  v12 = *(a1 + 17);
  v13 = a1[144];
  v14 = *(a1 + 19);
  v15 = a1[160];
  v123 = *(a1 + 21);
  v16 = a1[176];
  v17 = *a2;
  v18 = a2[1];
  v136 = *(a2 + 1);
  v140 = a2[16];
  v132 = *(a2 + 3);
  v137 = a2[32];
  v129 = *(a2 + 5);
  v133 = a2[48];
  v128 = *(a2 + 7);
  v130 = a2[64];
  v19 = *(a2 + 9);
  v20 = *(a2 + 10);
  v22 = *(a2 + 11);
  v21 = *(a2 + 12);
  v23 = *(a2 + 13);
  v24 = a2[112];
  v25 = *(a2 + 15);
  v26 = a2[128];
  v124 = *(a2 + 17);
  v27 = a2[144];
  v28 = *(a2 + 19);
  v125 = a2[160];
  v122 = *(a2 + 21);
  v29 = a2[176];
  if (v2 == 16)
  {
    v120 = v5;
    v121 = *(a2 + 9);
    if (v17 != 16)
    {
      return 0;
    }

LABEL_3:
    if (v3 == 6)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v17 == 16)
  {
    return 0;
  }

  v120 = v5;
  v83 = v4;
  v84 = *(a2 + 10);
  v121 = *(a2 + 9);
  v93 = v7;
  v95 = v6;
  v103 = *(a2 + 12);
  v109 = *(a2 + 13);
  v85 = *(a2 + 15);
  v86 = v11;
  v106 = a2[128];
  v30 = v8;
  v31 = a2[144];
  v32 = *(a2 + 19);
  v33 = v10;
  v96 = a2[176];
  v98 = v16;
  v87 = v13;
  v88 = v12;
  v90 = v15;
  v116 = v14;
  v34 = FrameName.rawValue.getter();
  v36 = v35;
  if (v34 != FrameName.rawValue.getter() || v36 != v37)
  {
    v53 = sub_1E1D30();

    v29 = v96;
    v16 = v98;
    v14 = v116;
    v15 = v90;
    v12 = v88;
    v13 = v87;
    v25 = v85;
    v11 = v86;
    v10 = v33;
    v28 = v32;
    v27 = v31;
    v8 = v30;
    v26 = v106;
    v23 = v109;
    v21 = v103;
    v7 = v93;
    v6 = v95;
    v4 = v83;
    v20 = v84;
    if ((v53 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v29 = v96;
  v16 = v98;
  v14 = v116;
  v15 = v90;
  v12 = v88;
  v13 = v87;
  v25 = v85;
  v11 = v86;
  v10 = v33;
  v28 = v32;
  v27 = v31;
  v8 = v30;
  v26 = v106;
  v23 = v109;
  v21 = v103;
  v7 = v93;
  v6 = v95;
  v4 = v83;
  v20 = v84;
  if (v3 == 6)
  {
LABEL_4:
    if (v18 != 6)
    {
      return 0;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (v18 == 6)
  {
    return 0;
  }

  v38 = v3;
  v39 = v18;
  v117 = v14;
  v40 = v15;
  v41 = v12;
  v113 = v24;
  v42 = v13;
  v97 = v29;
  v99 = v16;
  v94 = v7;
  v43 = v11;
  v101 = v22;
  v104 = v21;
  v44 = v10;
  v107 = v26;
  v89 = v28;
  v91 = v8;
  v45 = v27;
  v46 = v25;
  v110 = v23;
  v47 = v20;
  v48 = v4;
  v49 = sub_23D4C(v38, v39);
  v4 = v48;
  v20 = v47;
  v23 = v110;
  v29 = v97;
  v16 = v99;
  v25 = v46;
  v28 = v89;
  v8 = v91;
  v27 = v45;
  v26 = v107;
  v10 = v44;
  v22 = v101;
  v21 = v104;
  v11 = v43;
  v7 = v94;
  v13 = v42;
  v24 = v113;
  v12 = v41;
  v15 = v40;
  v14 = v117;
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v50 = v4;
  if (v141)
  {
    v51 = v121;
    v52 = v120;
    if (!v140)
    {
      return 0;
    }
  }

  else
  {
    v54 = v140;
    if (v138 != v136)
    {
      v54 = 1;
    }

    v51 = v121;
    v52 = v120;
    if (v54)
    {
      return 0;
    }
  }

  if (v139)
  {
    if (!v137)
    {
      return 0;
    }
  }

  else
  {
    v55 = v137;
    if (v134 != v132)
    {
      v55 = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  if (v135)
  {
    if (!v133)
    {
      return 0;
    }
  }

  else
  {
    v56 = v133;
    if (v131 != v129)
    {
      v56 = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  if (v52)
  {
    if (!v130)
    {
      return 0;
    }
  }

  else
  {
    v57 = v130;
    if (v50 != v128)
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v20)
    {
      return 0;
    }

    if (v6 != v51 || v7 != v20)
    {
      v142 = v27;
      v108 = v26;
      v92 = v8;
      v118 = v14;
      v58 = v15;
      v102 = v22;
      v105 = v21;
      v59 = v12;
      v114 = v24;
      v60 = v13;
      v111 = v23;
      v61 = v29;
      v62 = v11;
      v63 = v10;
      v64 = v28;
      v65 = v25;
      v66 = v16;
      v67 = sub_1E1D30();
      v16 = v66;
      v25 = v65;
      v8 = v92;
      v26 = v108;
      v27 = v142;
      v28 = v64;
      v10 = v63;
      v11 = v62;
      v29 = v61;
      v23 = v111;
      v13 = v60;
      v24 = v114;
      v12 = v59;
      v22 = v102;
      v21 = v105;
      v15 = v58;
      v14 = v118;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    if (v9 != v22 || v8 != v21)
    {
      v143 = v27;
      v119 = v14;
      v68 = v15;
      v69 = v12;
      v115 = v24;
      v70 = v13;
      v112 = v23;
      v71 = v29;
      v72 = v11;
      v73 = v10;
      v74 = v28;
      v75 = v25;
      v100 = v16;
      v76 = sub_1E1D30();
      v16 = v100;
      v25 = v75;
      v27 = v143;
      v28 = v74;
      v10 = v73;
      v11 = v72;
      v29 = v71;
      v23 = v112;
      v13 = v70;
      v24 = v115;
      v12 = v69;
      v15 = v68;
      v14 = v119;
      if ((v76 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v127)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v23)
    {
      v77 = v24;
    }

    else
    {
      v77 = 1;
    }

    if (v77)
    {
      return 0;
    }
  }

  if (v126)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == v25)
    {
      v78 = v26;
    }

    else
    {
      v78 = 1;
    }

    if (v78)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == v124)
    {
      v79 = v27;
    }

    else
    {
      v79 = 1;
    }

    if (v79)
    {
      return 0;
    }
  }

  if (v15)
  {
    if (!v125)
    {
      return 0;
    }
  }

  else
  {
    v80 = v125;
    if (v14 != v28)
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  if ((v16 & 1) == 0)
  {
    if (v123 == v122)
    {
      v82 = v29;
    }

    else
    {
      v82 = 1;
    }

    return (v82 & 1) == 0;
  }

  return (v29 & 1) != 0;
}

unint64_t sub_142B50()
{
  result = qword_289300;
  if (!qword_289300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289300);
  }

  return result;
}

unint64_t sub_142BA4()
{
  result = qword_289308;
  if (!qword_289308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289308);
  }

  return result;
}

unint64_t sub_142BF8()
{
  result = qword_289310;
  if (!qword_289310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289310);
  }

  return result;
}

unint64_t sub_142C7C()
{
  result = qword_289320;
  if (!qword_289320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289320);
  }

  return result;
}

unint64_t sub_142CD0()
{
  result = qword_289328;
  if (!qword_289328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289328);
  }

  return result;
}

unint64_t sub_142D60()
{
  result = qword_289330;
  if (!qword_289330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289330);
  }

  return result;
}

unint64_t sub_142DB8()
{
  result = qword_289338;
  if (!qword_289338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289338);
  }

  return result;
}

__n128 sub_142E0C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_142E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_142EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for YIRSourceData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for YIRSourceData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_14308C()
{
  result = qword_289340;
  if (!qword_289340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289340);
  }

  return result;
}

unint64_t sub_1430E4()
{
  result = qword_289348;
  if (!qword_289348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289348);
  }

  return result;
}

unint64_t sub_14313C()
{
  result = qword_289350;
  if (!qword_289350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289350);
  }

  return result;
}

uint64_t sub_143190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656D617266 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954726564616572 && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165526C61746F74 && a2 == 0xED0000656D695464 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000216D80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000216DA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xEE00736569726553 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000216DC0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000216DE0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000216E00 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xED0000736B6F6F42 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274 || (sub_1E1D30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000216E20 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6964616552677661 && a2 == 0xEE00656D6954676ELL)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E1D30();

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

unint64_t sub_143828(char a1)
{
  result = 0x657366664F637475;
  switch(a1)
  {
    case 1:
      result = 0x437972746E756F63;
      break;
    case 2:
      result = 0x65676175676E616CLL;
      break;
    case 3:
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x74654D7472617473;
      break;
    case 6:
      result = 0x54746375646F7270;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
    case 11:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x47676E6964616572;
      break;
    case 12:
      result = 0x795468636E75616CLL;
      break;
    case 13:
      result = 0x6C6C617261507369;
      break;
    case 14:
      result = 0x69576E69614D7369;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_143A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1455F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_143AB0(uint64_t a1)
{
  v2 = sub_144E4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_143AEC(uint64_t a1)
{
  v2 = sub_144E4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_289358, &qword_2002D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v29 = *(v1 + 2);
  v30 = v9;
  v10 = *(v1 + 3);
  v27 = *(v1 + 4);
  v28 = v10;
  v32 = *(v1 + 40);
  LODWORD(v10) = *(v1 + 41);
  v25 = *(v1 + 42);
  v26 = v10;
  v11 = *(v1 + 7);
  v23 = *(v1 + 6);
  v24 = v11;
  LODWORD(v10) = *(v1 + 64);
  v21 = *(v1 + 65);
  v22 = v10;
  LODWORD(v10) = *(v1 + 66);
  v19 = *(v1 + 67);
  v20 = v10;
  LODWORD(v10) = *(v1 + 68);
  v17 = *(v1 + 69);
  v18 = v10;
  LODWORD(v10) = *(v1 + 70);
  v16[4] = *(v1 + 71);
  v16[5] = v10;
  v16[3] = *(v1 + 72);
  v12 = *(v1 + 73);
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_144E4C();
  sub_1E1E00();
  v34 = 0;
  v14 = v31;
  sub_1E1D00();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  LODWORD(v31) = v12;
  v34 = 1;
  sub_1E1CB0();
  v34 = 2;
  sub_1E1CB0();
  v34 = 3;
  sub_1E1CC0();
  v34 = 4;
  sub_1E1CC0();
  v34 = v25;
  v33 = 5;
  sub_144EA0();
  sub_1E1CF0();
  v34 = 6;
  sub_1E1CB0();
  v34 = v22;
  v33 = 7;
  sub_144EF4();
  sub_1E1CF0();
  v34 = v21;
  v33 = 8;
  sub_144F48();
  sub_1E1CF0();
  v34 = v20;
  v33 = 9;
  sub_144F9C();
  sub_1E1CF0();
  v34 = v19;
  v33 = 10;
  sub_1E1CF0();
  v34 = 11;
  sub_1E1CC0();
  v34 = v17;
  v33 = 12;
  sub_144FF0();
  sub_1E1CF0();
  v34 = 13;
  sub_1E1CC0();
  v34 = 14;
  sub_1E1CC0();
  v34 = 15;
  sub_1E1CC0();
  v34 = 16;
  sub_1E1CC0();
  return (*(v4 + 8))(v7, 0);
}

uint64_t SessionData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_289390, &qword_2002D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_144E4C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v51) = 0;
  v11 = sub_1E1C30();
  LOBYTE(v51) = 1;
  v44 = sub_1E1BE0();
  v46 = v12;
  LOBYTE(v51) = 2;
  v13 = sub_1E1BE0();
  v45 = v14;
  v42 = v13;
  LOBYTE(v51) = 3;
  v41 = sub_1E1BF0();
  LOBYTE(v51) = 4;
  v40 = sub_1E1BF0();
  LOBYTE(v47) = 5;
  sub_145044();
  sub_1E1C20();
  v39 = v51;
  LOBYTE(v51) = 6;
  v38 = sub_1E1BE0();
  v43 = v15;
  LOBYTE(v47) = 7;
  sub_145098();
  sub_1E1C20();
  v37 = v51;
  LOBYTE(v47) = 8;
  sub_1450EC();
  sub_1E1C20();
  v35 = v51;
  LOBYTE(v47) = 9;
  v36 = sub_145140();
  sub_1E1C20();
  v34 = v51;
  LOBYTE(v47) = 10;
  sub_1E1C20();
  LODWORD(v36) = v51;
  LOBYTE(v51) = 11;
  v33 = sub_1E1BF0();
  LOBYTE(v47) = 12;
  sub_145194();
  sub_1E1C20();
  v32 = v51;
  LOBYTE(v51) = 13;
  v31 = sub_1E1BF0();
  LOBYTE(v51) = 14;
  v30 = sub_1E1BF0();
  LOBYTE(v51) = 15;
  v29 = sub_1E1BF0();
  v73 = 16;
  v16 = sub_1E1BF0();
  v17 = v41 & 1;
  v28 = v41 & 1;
  HIDWORD(v27) = v40 & 1;
  v33 &= 1u;
  v31 &= 1u;
  v41 = v30 & 1;
  v40 = v29 & 1;
  (*(v6 + 8))(v9, v5);
  v30 = v16 & 1;
  LODWORD(v47) = v11;
  v18 = v44;
  v19 = v46;
  *(&v47 + 1) = v44;
  *&v48 = v46;
  v20 = v45;
  *(&v48 + 1) = v42;
  *&v49 = v45;
  BYTE8(v49) = v17;
  v21 = BYTE4(v27);
  BYTE9(v49) = BYTE4(v27);
  v22 = v39;
  BYTE10(v49) = v39;
  *v50 = v38;
  *&v50[8] = v43;
  v50[16] = v37;
  v50[17] = v35;
  v50[18] = v34;
  v50[19] = v36;
  v50[20] = v33;
  v50[21] = v32;
  v50[22] = v31;
  v50[23] = v41;
  v50[24] = v40;
  v50[25] = v30;
  v23 = v47;
  v24 = v48;
  *(a2 + 58) = *&v50[10];
  v25 = *v50;
  a2[2] = v49;
  a2[3] = v25;
  *a2 = v23;
  a2[1] = v24;
  sub_1451E8(&v47, &v51);
  sub_4E48(a1);
  v51 = v11;
  v52 = v18;
  v53 = v19;
  v54 = v42;
  v55 = v20;
  v56 = v28;
  v57 = v21;
  v58 = v22;
  v59 = v74;
  v60 = v75;
  v61 = v38;
  v62 = v43;
  v63 = v37;
  v64 = v35;
  v65 = v34;
  v66 = v36;
  v67 = v33;
  v68 = v32;
  v69 = v31;
  v70 = v41;
  v71 = v40;
  v72 = v30;
  return sub_127688(&v51);
}

uint64_t _s13BookAnalytics11SessionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  v6 = *(a1 + 42);
  v67 = *(a1 + 48);
  v66 = *(a1 + 56);
  v63 = *(a1 + 64);
  v60 = *(a1 + 65);
  v58 = *(a1 + 66);
  v55 = *(a1 + 68);
  v56 = *(a1 + 67);
  v52 = *(a1 + 70);
  v53 = *(a1 + 71);
  v49 = *(a1 + 72);
  v45 = *(a1 + 73);
  v46 = *(a1 + 69);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  v11 = *(a2 + 42);
  v64 = *(a2 + 56);
  v65 = *(a2 + 48);
  v61 = *(a2 + 65);
  v62 = *(a2 + 64);
  v59 = *(a2 + 66);
  v57 = *(a2 + 67);
  v54 = *(a2 + 68);
  v50 = *(a2 + 70);
  v51 = *(a2 + 71);
  v47 = *(a2 + 69);
  v48 = *(a2 + 72);
  v44 = *(a2 + 73);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    result = 0;
    if (v4 != v9)
    {
      return result;
    }
  }

  else
  {
    v13 = sub_1E1D30();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if ((v5 ^ v10))
  {
    return result;
  }

  if ((sub_241D4(v6, v11) & 1) == 0 || (v67 != v65 || v66 != v64) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v14 = CellularRadioAccessTechnology.rawValue.getter();
  v16 = v15;
  if (v14 == CellularRadioAccessTechnology.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_1E1D30();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = 0x6E776F6E6B6E75;
  if (v60)
  {
    v20 = v61;
    if (v60 == 1)
    {
      v21 = 0xE200000000000000;
      v22 = 28271;
    }

    else
    {
      v21 = 0xE300000000000000;
      v22 = 6710895;
    }
  }

  else
  {
    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
    v20 = v61;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      v23 = 0xE200000000000000;
      v24 = 28271;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 6710895;
    }
  }

  else
  {
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
  }

  if (v22 == v24 && v21 == v23)
  {
  }

  else
  {
    v25 = sub_1E1D30();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = 0x64656C62616E65;
  if (v58)
  {
    v27 = v59;
    if (v58 == 1)
    {
      v28 = 0xE700000000000000;
      v29 = 0x64656C62616E65;
    }

    else
    {
      v28 = 0xE800000000000000;
      v29 = 0x64656C6261736964;
    }
  }

  else
  {
    v28 = 0xE700000000000000;
    v29 = 0x6E776F6E6B6E75;
    v27 = v59;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      v30 = 0xE700000000000000;
      v31 = 0x64656C62616E65;
    }

    else
    {
      v30 = 0xE800000000000000;
      v31 = 0x64656C6261736964;
    }
  }

  else
  {
    v30 = 0xE700000000000000;
    v31 = 0x6E776F6E6B6E75;
  }

  if (v29 == v31 && v28 == v30)
  {
  }

  else
  {
    v32 = sub_1E1D30();

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  if (v56)
  {
    v33 = v57;
    if (v56 == 1)
    {
      v34 = 0xE700000000000000;
      v35 = 0x64656C62616E65;
    }

    else
    {
      v34 = 0xE800000000000000;
      v35 = 0x64656C6261736964;
    }
  }

  else
  {
    v34 = 0xE700000000000000;
    v35 = 0x6E776F6E6B6E75;
    v33 = v57;
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v36 = 0xE700000000000000;
    }

    else
    {
      v36 = 0xE800000000000000;
      v26 = 0x64656C6261736964;
    }
  }

  else
  {
    v36 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
  }

  if (v35 == v26 && v34 == v36)
  {

    if (v55 != v54)
    {
      return 0;
    }

    goto LABEL_65;
  }

  v37 = sub_1E1D30();

  result = 0;
  if ((v37 & 1) != 0 && ((v55 ^ v54) & 1) == 0)
  {
LABEL_65:
    if (v46)
    {
      v38 = v47;
      v39 = 0xE400000000000000;
      if (v46 == 1)
      {
        v40 = 1684828003;
      }

      else
      {
        v40 = 1836212599;
      }
    }

    else
    {
      v39 = 0xE700000000000000;
      v40 = 0x6E776F6E6B6E75;
      v38 = v47;
    }

    if (v38)
    {
      v41 = 0xE400000000000000;
      if (v38 == 1)
      {
        v19 = 1684828003;
      }

      else
      {
        v19 = 1836212599;
      }
    }

    else
    {
      v41 = 0xE700000000000000;
    }

    v42 = v49 ^ v48;
    if (v40 == v19 && v39 == v41)
    {

      if (((v52 ^ v50 | v53 ^ v51 | v42) & 1) == 0)
      {
        return v45 ^ v44 ^ 1u;
      }
    }

    else
    {
      v43 = sub_1E1D30();

      if (!((v52 ^ v50) & 1 | ((v43 & 1) == 0) | ((v53 ^ v51) | v42) & 1))
      {
        return v45 ^ v44 ^ 1u;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_144E4C()
{
  result = qword_289360;
  if (!qword_289360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289360);
  }

  return result;
}

unint64_t sub_144EA0()
{
  result = qword_289368;
  if (!qword_289368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289368);
  }

  return result;
}

unint64_t sub_144EF4()
{
  result = qword_289370;
  if (!qword_289370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289370);
  }

  return result;
}

unint64_t sub_144F48()
{
  result = qword_289378;
  if (!qword_289378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289378);
  }

  return result;
}

unint64_t sub_144F9C()
{
  result = qword_289380;
  if (!qword_289380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289380);
  }

  return result;
}

unint64_t sub_144FF0()
{
  result = qword_289388;
  if (!qword_289388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289388);
  }

  return result;
}

unint64_t sub_145044()
{
  result = qword_289398;
  if (!qword_289398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289398);
  }

  return result;
}

unint64_t sub_145098()
{
  result = qword_2893A0;
  if (!qword_2893A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893A0);
  }

  return result;
}

unint64_t sub_1450EC()
{
  result = qword_2893A8;
  if (!qword_2893A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893A8);
  }

  return result;
}

unint64_t sub_145140()
{
  result = qword_2893B0;
  if (!qword_2893B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893B0);
  }

  return result;
}

unint64_t sub_145194()
{
  result = qword_2893B8;
  if (!qword_2893B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893B8);
  }

  return result;
}

unint64_t sub_145224()
{
  result = qword_2893C0;
  if (!qword_2893C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893C0);
  }

  return result;
}

unint64_t sub_14527C()
{
  result = qword_2893C8;
  if (!qword_2893C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893C8);
  }

  return result;
}

__n128 sub_1452D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1452F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_14533C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1454F4()
{
  result = qword_2893D0;
  if (!qword_2893D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893D0);
  }

  return result;
}

unint64_t sub_14554C()
{
  result = qword_2893D8;
  if (!qword_2893D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893D8);
  }

  return result;
}

unint64_t sub_1455A4()
{
  result = qword_2893E0;
  if (!qword_2893E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893E0);
  }

  return result;
}

uint64_t sub_1455F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657366664F637475 && a2 == 0xE900000000000074;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216E40 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216E60 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74654D7472617473 && a2 == 0xEB00000000646F68 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000000216E80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000216EA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000216EC0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x47676E6964616572 && a2 == 0xEB000000006C616FLL || (sub_1E1D30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000216EE0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x795468636E75616CLL && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6C617261507369 && a2 == 0xEA00000000006C65 || (sub_1E1D30() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x69576E69614D7369 && a2 == 0xEC000000776F646ELL || (sub_1E1D30() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000216F00 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000000216F20 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_145B90()
{
  v1 = *v0;
  v2 = 0x44496B63696C63;
  v3 = 0x7954746567726174;
  v4 = 0x7865646E69;
  if (v1 != 3)
  {
    v4 = 0x646E756F4274756FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x697463416B6E696CLL;
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

uint64_t sub_145C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14664C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_145C68(uint64_t a1)
{
  v2 = sub_146388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_145CA4(uint64_t a1)
{
  v2 = sub_146388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClickData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2893E8, &qword_200550);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v20 = *(v1 + 16);
  v11 = v1[3];
  v19[3] = v1[4];
  v19[4] = v11;
  v12 = v1[5];
  v19[1] = v1[6];
  v19[2] = v12;
  v19[0] = v1[7];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  sub_48B8(v15, v13);
  sub_146388();
  sub_1E1E00();
  v26 = 0;
  sub_1E1C50();
  if (!v2)
  {
    v25 = v20;
    v24 = 1;
    sub_1463DC();
    sub_1E1CF0();
    v23 = 2;
    sub_1E1CB0();
    v22 = 3;
    sub_1E1D10();
    v21 = 4;
    sub_1E1C50();
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t ClickData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_289400, &qword_200558);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_146388();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    v11 = sub_1E1B80();
    v13 = v12;
    v30 = v11;
    LOBYTE(v31) = 1;
    sub_146430();
    sub_1E1C20();
    v14 = LOBYTE(v35[0]);
    LOBYTE(v35[0]) = 2;
    v15 = sub_1E1BE0();
    v17 = v16;
    v29 = v15;
    LOBYTE(v35[0]) = 3;
    v18 = sub_1E1C40();
    v42 = v14;
    v28 = v18;
    v43 = 4;
    v19 = sub_1E1B80();
    v20 = v9;
    v22 = v21;
    (*(v6 + 8))(v20, v5);
    v23 = v30;
    *&v31 = v30;
    *(&v31 + 1) = v13;
    LOBYTE(v32) = v42;
    v24 = v28;
    *(&v32 + 1) = v29;
    *&v33 = v17;
    *(&v33 + 1) = v28;
    *&v34 = v19;
    *(&v34 + 1) = v22;
    v25 = v32;
    *a2 = v31;
    a2[1] = v25;
    v26 = v34;
    a2[2] = v33;
    a2[3] = v26;
    sub_B4464(&v31, v35);
    sub_4E48(a1);
    v35[0] = v23;
    v35[1] = v13;
    v36 = v42;
    v37 = v29;
    v38 = v17;
    v39 = v24;
    v40 = v19;
    v41 = v22;
    return sub_B5218(v35);
  }
}

BOOL _s13BookAnalytics9ClickDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v19 = *(a2 + 48);
    v20 = *(a1 + 48);
    if ((*a1 != *a2 || v3 != v10) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = *(a2 + 48);
    v20 = *(a1 + 48);
    if (v10)
    {
      return 0;
    }
  }

  if ((sub_201BC(v4, v11) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v12 && v6 == v13)
  {
    if (v8 != v15)
    {
      return 0;
    }

    goto LABEL_15;
  }

  v17 = sub_1E1D30();
  result = 0;
  if ((v17 & 1) != 0 && v8 == v15)
  {
LABEL_15:
    if (v9)
    {
      return v16 && (v20 == v19 && v9 == v16 || (sub_1E1D30() & 1) != 0);
    }

    return !v16;
  }

  return result;
}

unint64_t sub_146388()
{
  result = qword_2893F0;
  if (!qword_2893F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893F0);
  }

  return result;
}

unint64_t sub_1463DC()
{
  result = qword_2893F8;
  if (!qword_2893F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2893F8);
  }

  return result;
}

unint64_t sub_146430()
{
  result = qword_289408;
  if (!qword_289408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289408);
  }

  return result;
}

uint64_t sub_14648C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1464D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_146548()
{
  result = qword_289410;
  if (!qword_289410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289410);
  }

  return result;
}

unint64_t sub_1465A0()
{
  result = qword_289418;
  if (!qword_289418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289418);
  }

  return result;
}

unint64_t sub_1465F8()
{
  result = qword_289420;
  if (!qword_289420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289420);
  }

  return result;
}

uint64_t sub_14664C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496B63696C63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463416B6E696CLL && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E756F4274756FLL && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E1D30();

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

BookAnalytics::ViewLocation_optional __swiftcall ViewLocation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261188;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ViewLocation.rawValue.getter()
{
  v1 = 0x434F546D6F7266;
  if (*v0 != 1)
  {
    v1 = 0x646165526D6F7266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1468CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x434F546D6F7266;
  if (v2 != 1)
  {
    v5 = 0x646165526D6F7266;
    v4 = 0xEB00000000676E69;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x434F546D6F7266;
  if (*a2 != 1)
  {
    v8 = 0x646165526D6F7266;
    v3 = 0xEB00000000676E69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_1469E0()
{
  result = qword_289428;
  if (!qword_289428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289428);
  }

  return result;
}

Swift::Int sub_146A34()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_146AE0()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_146B78()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_146C2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x434F546D6F7266;
  if (v2 != 1)
  {
    v5 = 0x646165526D6F7266;
    v4 = 0xEB00000000676E69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_146D54()
{
  result = qword_289430;
  if (!qword_289430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289430);
  }

  return result;
}

uint64_t sub_146E68(uint64_t a1)
{
  v2 = sub_147044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_146EA4(uint64_t a1)
{
  v2 = sub_147044();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppResignEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_289468, &qword_2008B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_147044();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810);
  sub_1E1CF0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_147044()
{
  result = qword_289470;
  if (!qword_289470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289470);
  }

  return result;
}

uint64_t AppResignEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E1150();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_289478, &qword_2008B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AppResignEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_147044();
  v16 = v23;
  sub_1E1DF0();
  if (!v16)
  {
    v17 = v21;
    sub_14E5C(&qword_27D830);
    sub_1E1C20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_147324(v14, v20);
  }

  return sub_4E48(a1);
}

uint64_t sub_147324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppResignEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_147424(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1474B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_147560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1475E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_147664()
{
  result = qword_2895A0;
  if (!qword_2895A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2895A0);
  }

  return result;
}

unint64_t sub_1476BC()
{
  result = qword_2895A8;
  if (!qword_2895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2895A8);
  }

  return result;
}

unint64_t sub_147714()
{
  result = qword_2895B0;
  if (!qword_2895B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2895B0);
  }

  return result;
}

uint64_t static CollectionData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E1D30(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1E1D30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_147808()
{
  if (*v0)
  {
    result = 0x54746E65746E6F63;
  }

  else
  {
    result = 0x697463656C6C6F63;
  }

  *v0;
  return result;
}

uint64_t sub_147854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463656C6C6F63 && a2 == 0xEC00000044496E6FLL;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_147938(uint64_t a1)
{
  v2 = sub_147B44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_147974(uint64_t a1)
{
  v2 = sub_147B44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2895B8, &qword_200AB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_147B44();
  sub_1E1E00();
  v16 = 0;
  v12 = v14[3];
  sub_1E1CB0();
  if (!v12)
  {
    v15 = 1;
    sub_1E1C50();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_147B44()
{
  result = qword_2895C0;
  if (!qword_2895C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2895C0);
  }

  return result;
}

uint64_t CollectionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_2895C8, &qword_200AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_147B44();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v21 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E1B80();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  sub_4E48(a1);
}

unint64_t sub_147DF4()
{
  result = qword_2895D0;
  if (!qword_2895D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2895D0);
  }

  return result;
}

unint64_t sub_147E4C()
{
  result = qword_2895D8;
  if (!qword_2895D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2895D8);
  }

  return result;
}

unint64_t sub_147EA4()
{
  result = qword_2895E0;
  if (!qword_2895E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2895E0);
  }

  return result;
}

uint64_t WidgetEngagementEvent.widgetData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_289618, &unk_200CF0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WidgetEngagementEvent.widgetData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_289618, &unk_200CF0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WidgetExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_289618, &unk_200CF0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t WidgetEngagementEvent.Model.widgetData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
}

uint64_t WidgetExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExposureEvent.Model.init(widgetData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 33) = v8;
  v9 = *(type metadata accessor for WidgetExposureEvent.Model(0) + 20);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a3 + v9, a2, v10);
}

uint64_t sub_148484()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x6144746567646977;
  }

  *v0;
  return result;
}

uint64_t sub_1484C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6144746567646977 && a2 == 0xEA00000000006174;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1485B4(uint64_t a1)
{
  v2 = sub_148828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1485F0(uint64_t a1)
{
  v2 = sub_148828();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_289620, &qword_200D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_148828();
  sub_1E1E00();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v14 = *(v3 + 32);
  v15 = *(v3 + 33);
  v19 = *v3;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v18[7] = 0;
  sub_13D870();

  sub_1E1CF0();

  if (!v2)
  {
    v16 = *(type metadata accessor for WidgetExposureEvent.Model(0) + 20);
    LOBYTE(v19) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_148828()
{
  result = qword_289628;
  if (!qword_289628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289628);
  }

  return result;
}

uint64_t WidgetExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_1E1150();
  v26 = *(v28 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v28);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_289630, &qword_200D08);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for WidgetExposureEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_148828();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v16 = v14;
  v25 = v11;
  v17 = v28;
  v36 = 0;
  sub_13D818();
  v18 = v30;
  sub_1E1C20();
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  *v16 = v31;
  *(v16 + 16) = v19;
  *(v16 + 24) = v20;
  *(v16 + 32) = v21;
  *(v16 + 33) = v22;
  LOBYTE(v31) = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v29 + 8))(v10, v18);
  (*(v26 + 32))(v16 + *(v25 + 20), v6, v17);
  sub_148BB8(v16, v27);
  sub_4E48(a1);
  return sub_148C1C(v16);
}

uint64_t sub_148BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_148C1C(uint64_t a1)
{
  v2 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_148D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_289618, &unk_200CF0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_148E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_289618, &unk_200CF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_148F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_289618, &unk_200CF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_149034()
{
  sub_1490B8();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1490B8()
{
  if (!qword_2896A0)
  {
    sub_13D818();
    sub_13D870();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_2896A0);
    }
  }
}

uint64_t sub_149134(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1491F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_149298()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_149328()
{
  result = qword_289760;
  if (!qword_289760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289760);
  }

  return result;
}

unint64_t sub_149380()
{
  result = qword_289768;
  if (!qword_289768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289768);
  }

  return result;
}

unint64_t sub_1493D8()
{
  result = qword_289770;
  if (!qword_289770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289770);
  }

  return result;
}

uint64_t sub_149484()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x6E696E657473696CLL;
  if (v1 != 5)
  {
    v3 = 0x72676B6361427369;
  }

  v4 = 0x6572694470696B73;
  if (v1 != 3)
  {
    v4 = 0x6974634170696B73;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D6954646E65;
  if (v1 != 1)
  {
    v5 = 0x65746E4970696B73;
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

uint64_t sub_149598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14A23C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1495C0(uint64_t a1)
{
  v2 = sub_149EB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1495FC(uint64_t a1)
{
  v2 = sub_149EB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SkipData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_289778, &qword_200F10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v21 = v1[2];
  v10 = *(v1 + 12);
  v19 = *(v1 + 13);
  v20 = v10;
  v18 = *(v1 + 14);
  v11 = *(v1 + 3);
  v17 = *(v1 + 2);
  v12 = *(v1 + 32);
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_149EB4();
  sub_1E1E00();
  v32 = 0;
  v14 = v22;
  sub_1E1CE0();
  if (!v14)
  {
    v16 = v20;
    v22 = v11;
    v31 = 1;
    sub_1E1CE0();
    v30 = 2;
    v29 = v16;
    sub_1E1C70();
    v28 = v19;
    v27 = 3;
    sub_149F08();
    sub_1E1CF0();
    v26 = v18;
    v25 = 4;
    sub_149F5C();
    sub_1E1CF0();
    v24 = 5;
    sub_1E1C50();
    v23 = 6;
    sub_1E1CC0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SkipData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_289798, &qword_200F18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_149EB4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    sub_1E1C10();
    v12 = v11;
    LOBYTE(v34[0]) = 1;
    sub_1E1C10();
    v14 = v13;
    LOBYTE(v34[0]) = 2;
    v15 = sub_1E1BA0();
    v16 = v15;
    v42 = BYTE4(v15) & 1;
    LOBYTE(v31) = 3;
    sub_149FB0();
    sub_1E1C20();
    v17 = LOBYTE(v34[0]);
    LOBYTE(v31) = 4;
    sub_14A004();
    sub_1E1C20();
    v41 = v17;
    v18 = LOBYTE(v34[0]);
    LOBYTE(v34[0]) = 5;
    v19 = sub_1E1B80();
    v21 = v20;
    v29 = v18;
    v30 = v19;
    v43 = 6;
    v22 = sub_1E1BF0();
    (*(v6 + 8))(v9, v5);
    *&v31 = __PAIR64__(v14, v12);
    DWORD2(v31) = v16;
    v28 = v42;
    BYTE12(v31) = v42;
    v23 = v41;
    BYTE13(v31) = v41;
    v24 = v29;
    BYTE14(v31) = v29;
    v25 = v30;
    *&v32 = v30;
    *(&v32 + 1) = v21;
    v22 &= 1u;
    v33 = v22;
    *(a2 + 32) = v22;
    v26 = v32;
    *a2 = v31;
    *(a2 + 16) = v26;
    sub_13AF8(&v31, v34);
    sub_4E48(a1);
    v34[0] = v12;
    v34[1] = v14;
    v34[2] = v16;
    v35 = v28;
    v36 = v23;
    v37 = v24;
    v38 = v25;
    v39 = v21;
    v40 = v22;
    return sub_144CC(v34);
  }
}

uint64_t _s13BookAnalytics8SkipDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    v4 = *(a1 + 13);
    v5 = *(a1 + 14);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(a2 + 14);
    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v12 = *(a2 + 32);
    if (*(a1 + 12))
    {
      if (!*(a2 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) == *(a2 + 8))
      {
        v13 = *(a2 + 12);
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    v23 = v8;
    v14 = 0xE700000000000000;
    v15 = 0xE700000000000000;
    v16 = 0x64726177726F66;
    if (v4 != 1)
    {
      v16 = 1801675106;
      v15 = 0xE400000000000000;
    }

    if (v4)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0x6E776F6E6B6E75;
    }

    if (v4)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v19 = 0x64726177726F66;
    if (*(a2 + 13) != 1)
    {
      v19 = 1801675106;
      v14 = 0xE400000000000000;
    }

    if (*(a2 + 13))
    {
      v20 = v19;
    }

    else
    {
      v20 = 0x6E776F6E6B6E75;
    }

    if (*(a2 + 13))
    {
      v21 = v14;
    }

    else
    {
      v21 = 0xE700000000000000;
    }

    if (v17 == v20 && v18 == v21)
    {
    }

    else
    {
      v22 = sub_1E1D30();

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    if (sub_20BCC(v5, v9))
    {
      if (v7)
      {
        if (!v10 || (v6 != v11 || v7 != v10) && (sub_1E1D30() & 1) == 0)
        {
          return 0;
        }

        return v23 ^ v12 ^ 1u;
      }

      if (!v10)
      {
        return v23 ^ v12 ^ 1u;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_149EB4()
{
  result = qword_289780;
  if (!qword_289780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289780);
  }

  return result;
}

unint64_t sub_149F08()
{
  result = qword_289788;
  if (!qword_289788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289788);
  }

  return result;
}

unint64_t sub_149F5C()
{
  result = qword_289790;
  if (!qword_289790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289790);
  }

  return result;
}

unint64_t sub_149FB0()
{
  result = qword_2897A0;
  if (!qword_2897A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2897A0);
  }

  return result;
}

unint64_t sub_14A004()
{
  result = qword_2897A8;
  if (!qword_2897A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2897A8);
  }

  return result;
}

uint64_t sub_14A060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_14A0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_14A138()
{
  result = qword_2897B0;
  if (!qword_2897B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2897B0);
  }

  return result;
}

unint64_t sub_14A190()
{
  result = qword_2897B8;
  if (!qword_2897B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2897B8);
  }

  return result;
}

unint64_t sub_14A1E8()
{
  result = qword_2897C0;
  if (!qword_2897C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2897C0);
  }

  return result;
}

uint64_t sub_14A23C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E4970696B73 && a2 == 0xEC0000006C617672 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572694470696B73 && a2 == 0xED00006E6F697463 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974634170696B73 && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E696E657473696CLL && a2 == 0xEB00000000444967 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72676B6361427369 && a2 == 0xEE006465646E756FLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t ReadingOrientationChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingOrientationChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingOrientationChangeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingOrientationChangeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingOrientationChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingOrientationChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingOrientationChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingOrientationChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

__n128 ReadingOrientationChangeEvent.Model.orientationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u32[0];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t ReadingOrientationChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingOrientationChangeEvent.Model.init(readingSessionData:contentData:orientationData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *(a3 + 16);
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = *a3;
  *(a5 + 128) = v12;
  v17 = *(type metadata accessor for ReadingOrientationChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_14ACA8()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x7461746E6569726FLL;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_14AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14C0D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14AD68(uint64_t a1)
{
  v2 = sub_14B0DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14ADA4(uint64_t a1)
{
  v2 = sub_14B0DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingOrientationChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2897F8, &qword_201160);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14B0DC();
  sub_1E1E00();
  v10 = *(v2 + 4);
  v11 = v2[2];
  v12 = *(v2 + 12);
  v13 = *(v2 + 13);
  v14 = *(v2 + 14);
  v42 = *v2;
  v43 = v10;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v41 = 0;
  sub_67BE8();
  v15 = v48;
  sub_1E1CF0();
  if (!v15)
  {
    v16 = *(v2 + 4);
    v17 = *(v2 + 2);
    v37 = *(v2 + 3);
    v38 = v16;
    v18 = *(v2 + 4);
    v19 = *(v2 + 6);
    v39 = *(v2 + 5);
    v40 = v19;
    v20 = *(v2 + 2);
    v36[0] = *(v2 + 1);
    v36[1] = v20;
    v32 = v37;
    v33 = v18;
    v21 = *(v2 + 6);
    v34 = v39;
    v35 = v21;
    v30 = v36[0];
    v31 = v17;
    v29 = 1;
    sub_13A5C(v36, v28);
    sub_143D0();
    sub_1E1CF0();
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    sub_14424(v28);
    v22 = v2[32];
    v26 = *(v2 + 7);
    v27 = v22;
    v25[15] = 2;
    sub_67CE4();
    sub_1E1C80();
    v23 = *(type metadata accessor for ReadingOrientationChangeEvent.Model(0) + 28);
    LOBYTE(v26) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_14B0DC()
{
  result = qword_289800;
  if (!qword_289800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289800);
  }

  return result;
}

uint64_t ReadingOrientationChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_1E1150();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_289808, &qword_201168);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ReadingOrientationChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  sub_48B8(a1, v16);
  sub_14B0DC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v35);
  }

  v30 = v12;
  v18 = v33;
  LOBYTE(v36) = 0;
  sub_686E8();
  sub_1E1C20();
  v19 = BYTE4(v38);
  v20 = DWORD2(v38);
  v21 = BYTE12(v38);
  v22 = BYTE13(v38);
  v23 = BYTE14(v38);
  *v15 = v38;
  v15[4] = v19;
  *(v15 + 2) = v20;
  v15[12] = v21;
  v15[13] = v22;
  v15[14] = v23;
  v45 = 1;
  sub_14CB8();
  sub_1E1C20();
  v24 = v41;
  *(v15 + 3) = v40;
  *(v15 + 4) = v24;
  v25 = v43;
  *(v15 + 5) = v42;
  *(v15 + 6) = v25;
  v26 = v39;
  *(v15 + 1) = v38;
  *(v15 + 2) = v26;
  v44 = 2;
  sub_687E4();
  sub_1E1BB0();
  v27 = v37;
  *(v15 + 7) = v36;
  *(v15 + 32) = v27;
  LOBYTE(v36) = 3;
  sub_14E5C(&qword_27D830);
  v28 = v34;
  sub_1E1C20();
  (*(v18 + 8))(v11, v28);
  (*(v31 + 32))(&v15[*(v30 + 28)], v7, v4);
  sub_14B54C(v15, v32);
  sub_4E48(v35);
  return sub_14B5B0(v15);
}

uint64_t sub_14B54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingOrientationChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B5B0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingOrientationChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14B6AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_14B844(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_280D78, &unk_1ED080);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_14BA10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_280D78, &unk_1ED080);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_14BBD4()
{
  sub_14BD30(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_14BD30(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_14BD30(319, &qword_280E58, sub_687E4, sub_67CE4);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_14BD30(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_14BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_14BE80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_14BF24()
{
  sub_71E64();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_14BFD4()
{
  result = qword_289940;
  if (!qword_289940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289940);
  }

  return result;
}

unint64_t sub_14C02C()
{
  result = qword_289948;
  if (!qword_289948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289948);
  }

  return result;
}

unint64_t sub_14C084()
{
  result = qword_289950;
  if (!qword_289950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289950);
  }

  return result;
}

uint64_t sub_14C0D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BookAnalytics::UserAction_optional __swiftcall UserAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2611F0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t UserAction.rawValue.getter()
{
  v1 = 0x6E4974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x74754F74706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_14C310()
{
  result = qword_289958;
  if (!qword_289958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289958);
  }

  return result;
}

Swift::Int sub_14C364()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_14C400()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_14C488()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_14C52C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E4974706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F74706FLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_14C644()
{
  result = qword_289960;
  if (!qword_289960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289960);
  }

  return result;
}

unint64_t sub_14C69C()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_14C6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000000216F50 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000216F70 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_14C7BC(uint64_t a1)
{
  v2 = sub_14CDB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14C7F8(uint64_t a1)
{
  v2 = sub_14CDB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PrevAltContentExposureData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_289968, &qword_2014A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14CDB8();
  sub_1E1E00();
  v17 = v9;
  v16 = 0;
  sub_14CE0C();
  sub_1E1CF0();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_14CE60();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PrevAltContentExposureData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_289988, &qword_2014A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14CDB8();
  sub_1E1DF0();
  if (!v2)
  {
    v17 = 0;
    sub_14CEB4();
    sub_1E1C20();
    v11 = v18;
    v15 = 1;
    sub_14CF08();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics26PrevAltContentExposureDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v5 = 0xE800000000000000;
  v6 = 0x6573616863727570;
  v7 = 0x80000000002124A0;
  if (v2 != 1)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000000002124A0;
  }

  if (*a1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v10 = 0x6573616863727570;
  if (*a2 == 1)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xD000000000000012;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v8 == v11 && v9 == v12)
  {

    goto LABEL_22;
  }

  v13 = sub_1E1D30();

  v14 = 0;
  if (v13)
  {
LABEL_22:
    v15 = 0xE600000000000000;
    v16 = 0x656C676E6973;
    if (v3 != 1)
    {
      v16 = 2037277037;
      v15 = 0xE400000000000000;
    }

    if (v3)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        v19 = 0xE600000000000000;
        if (v17 != 0x656C676E6973)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v19 = 0xE400000000000000;
        if (v17 != 2037277037)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v17 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }

    if (v18 == v19)
    {
      v14 = 1;
LABEL_40:

      return v14 & 1;
    }

LABEL_39:
    v14 = sub_1E1D30();
    goto LABEL_40;
  }

  return v14 & 1;
}

unint64_t sub_14CDB8()
{
  result = qword_289970;
  if (!qword_289970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289970);
  }

  return result;
}

unint64_t sub_14CE0C()
{
  result = qword_289978;
  if (!qword_289978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289978);
  }

  return result;
}

unint64_t sub_14CE60()
{
  result = qword_289980;
  if (!qword_289980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289980);
  }

  return result;
}

unint64_t sub_14CEB4()
{
  result = qword_289990;
  if (!qword_289990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289990);
  }

  return result;
}

unint64_t sub_14CF08()
{
  result = qword_289998;
  if (!qword_289998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289998);
  }

  return result;
}

unint64_t sub_14CF88()
{
  result = qword_2899A0;
  if (!qword_2899A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899A0);
  }

  return result;
}

unint64_t sub_14CFE0()
{
  result = qword_2899A8;
  if (!qword_2899A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899A8);
  }

  return result;
}

unint64_t sub_14D038()
{
  result = qword_2899B0;
  if (!qword_2899B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899B0);
  }

  return result;
}

uint64_t SectionData.updating(for:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v4[5];
  v29[4] = v4[4];
  v29[5] = v7;
  v29[6] = v4[6];
  v8 = v4[1];
  v29[0] = *v4;
  v29[1] = v8;
  v9 = v4[3];
  v29[2] = v4[2];
  v29[3] = v9;
  v10 = a2[3];
  v11 = a2[4];
  sub_48B8(a2, v10);
  (*(v11 + 8))(a1, v10, v11);
  if (v12)
  {
    v13 = v4[5];
    *(a3 + 64) = v4[4];
    *(a3 + 80) = v13;
    *(a3 + 96) = v4[6];
    v14 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v14;
    v15 = v4[3];
    *(a3 + 32) = v4[2];
    *(a3 + 48) = v15;
    return sub_274D4(v29, &v27);
  }

  else
  {
    v25 = *v4;
    v26 = *(v4 + 2);
    v22 = *(v4 + 72);
    v23 = *(v4 + 88);
    v24 = *(v4 + 13);
    v20 = *(v4 + 40);
    v21 = *(v4 + 56);
    sub_274D4(v29, &v27);
    v27 = sub_1E1910();
    v28 = v17;
    v30._countAndFlagsBits = 44;
    v30._object = 0xE100000000000000;
    sub_1E17E0(v30);
    v31._countAndFlagsBits = sub_1E1910();
    sub_1E17E0(v31);

    *a3 = v25;
    *(a3 + 56) = v21;
    *(a3 + 72) = v22;
    *(a3 + 88) = v23;
    v18 = v27;
    v19 = v28;
    *(a3 + 16) = v26;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
    *(a3 + 104) = v24;
    *(a3 + 40) = v20;
  }

  return result;
}

unint64_t sub_14D228(uint64_t a1)
{
  *(a1 + 8) = sub_14D258();
  result = sub_14D2AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_14D258()
{
  result = qword_2899B8;
  if (!qword_2899B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899B8);
  }

  return result;
}

unint64_t sub_14D2AC()
{
  result = qword_2899C0;
  if (!qword_2899C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899C0);
  }

  return result;
}

unint64_t sub_14D304()
{
  if (*v0)
  {
    result = 0x65536E6F6974706FLL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_14D350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000000216F90 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65536E6F6974706FLL && a2 == 0xEE0064657463656CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_14D440(uint64_t a1)
{
  v2 = sub_14D9A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14D47C(uint64_t a1)
{
  v2 = sub_14D9A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OptionListData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2899C8, &qword_2016F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[1] = v1[2];
  v13[2] = v9;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14D9A4();

  sub_1E1E00();
  v16 = v10;
  v15 = 0;
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_6E7F0(&qword_281190);
  sub_1E1C80();

  if (!v2)
  {
    v14 = 1;
    sub_1E1CB0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t OptionListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_2899D8, &qword_2016F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14D9A4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    v16[15] = 0;
    sub_6E7F0(&qword_2811B8);
    sub_1E1BB0();
    v11 = v17;
    v16[14] = 1;
    v13 = sub_1E1BE0();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;

    sub_4E48(a1);
  }
}

uint64_t _s13BookAnalytics14OptionListDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v7 || (sub_5C5F8(v4, v7) & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  if (v5 == v8 && v6 == v9)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_14D9A4()
{
  result = qword_2899D0;
  if (!qword_2899D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899D0);
  }

  return result;
}

unint64_t sub_14DA24()
{
  result = qword_2899E0;
  if (!qword_2899E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899E0);
  }

  return result;
}

unint64_t sub_14DA7C()
{
  result = qword_2899E8;
  if (!qword_2899E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899E8);
  }

  return result;
}

unint64_t sub_14DAD4()
{
  result = qword_2899F0;
  if (!qword_2899F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2899F0);
  }

  return result;
}

uint64_t AltContentTypeExposureData.altContentID.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_14DBAC()
{
  v1 = 0x65746E6F43746C61;
  v2 = *v0;
  v3 = 0xD000000000000010;
  if (v2 != 5)
  {
    v3 = 0x69746375646F7270;
  }

  v4 = 0xD000000000000010;
  if (v2 != 3)
  {
    v4 = 0x6563697250746C61;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x657275736F707865;
  if (v2 == 1)
  {
    v5 = 0x65746E6F43746C61;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_14DCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14EB60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14DCD0(uint64_t a1)
{
  v2 = sub_14E8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14DD0C(uint64_t a1)
{
  v2 = sub_14E8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AltContentTypeExposureData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2899F8, &unk_201930);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v23 = *(v1 + 1);
  v25 = v1[16];
  v22 = v1[17];
  v10 = *(v1 + 3);
  v20 = *(v1 + 4);
  v21 = v10;
  v11 = *(v1 + 6);
  v18 = *(v1 + 5);
  v19 = v11;
  HIDWORD(v17) = v1[56];
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14E8C0();
  v13 = v4;
  sub_1E1E00();
  LOBYTE(v24) = v9;
  v26 = 0;
  sub_C480();
  sub_1E1CF0();
  if (!v2)
  {
    v14 = v25;
    v15 = v22;
    v24 = v23;
    v26 = 1;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190);
    sub_1E1CF0();
    LOBYTE(v24) = v14;
    v26 = 2;
    sub_14CE0C();
    sub_1E1CF0();
    LOBYTE(v24) = v15;
    v26 = 3;
    sub_14CE60();
    sub_1E1CF0();
    LOBYTE(v24) = 4;
    sub_1E1C50();
    LOBYTE(v24) = 5;
    sub_1E1C50();
    LOBYTE(v24) = BYTE4(v17);
    v26 = 6;
    sub_F0F68();
    sub_1E1C80();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t AltContentTypeExposureData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_289A08, &qword_201940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14E8C0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_C4D4();
    sub_1E1C20();
    v11 = v33[0];
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    LOBYTE(v30) = 1;
    sub_6E7F0(&qword_2811B8);
    sub_1E1C20();
    v29 = v33[0];
    LOBYTE(v30) = 2;
    sub_14CEB4();
    sub_1E1C20();
    v12 = LOBYTE(v33[0]);
    LOBYTE(v30) = 3;
    sub_14CF08();
    sub_1E1C20();
    v41 = LOBYTE(v33[0]);
    LOBYTE(v33[0]) = 4;
    v13 = sub_1E1B80();
    v28 = v12;
    v27 = v13;
    v15 = v14;
    LOBYTE(v33[0]) = 5;
    v25 = sub_1E1B80();
    v26 = v16;
    v42 = 6;
    sub_F110C();
    sub_1E1BB0();
    (*(v6 + 8))(v9, v5);
    v24 = v43;
    LOBYTE(v30) = v11;
    v17 = v29;
    *(&v30 + 1) = v29;
    LOBYTE(v31) = v28;
    BYTE1(v31) = v41;
    v19 = v26;
    v18 = v27;
    *(&v31 + 1) = v27;
    *v32 = v15;
    v20 = v25;
    *&v32[8] = v25;
    *&v32[16] = v26;
    v32[24] = v43;
    v21 = v31;
    *a2 = v30;
    a2[1] = v21;
    a2[2] = *v32;
    *(a2 + 41) = *&v32[9];
    sub_14E914(&v30, v33);
    sub_4E48(a1);
    LOBYTE(v33[0]) = v11;
    v33[1] = v17;
    v34 = v28;
    v35 = v41;
    v36 = v18;
    v37 = v15;
    v38 = v20;
    v39 = v19;
    v40 = v24;
    return sub_14E94C(v33);
  }
}

BOOL _s13BookAnalytics26AltContentTypeExposureDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v34 = *(a2 + 40);
  v35 = *(a1 + 40);
  v38 = *(a2 + 48);
  v39 = *(a1 + 48);
  v36 = *(a1 + 56);
  v37 = *(a2 + 56);
  if ((sub_218F4(*a1, *a2) & 1) == 0 || (sub_5C5F8(v2, v7) & 1) == 0)
  {
    return 0;
  }

  v12 = 0xE800000000000000;
  v13 = 0x6573616863727570;
  v14 = 0x80000000002124A0;
  if (v3 != 1)
  {
    v13 = 0xD000000000000012;
    v12 = 0x80000000002124A0;
  }

  if (v3)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  v17 = 0x6E776F6E6B6E75;
  v18 = 0x6573616863727570;
  if (v8 == 1)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v18 = 0xD000000000000012;
  }

  if (v8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v20 = v14;
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  if (v15 == v19 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_1E1D30();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v22 = 0x656C676E6973;
    }

    else
    {
      v22 = 2037277037;
    }

    if (v4 == 1)
    {
      v23 = 0xE600000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }
  }

  else
  {
    v23 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
  }

  v24 = 0xE600000000000000;
  v25 = 0x656C676E6973;
  if (v9 != 1)
  {
    v25 = 2037277037;
    v24 = 0xE400000000000000;
  }

  if (v9)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0x6E776F6E6B6E75;
  }

  if (v9)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  if (v22 == v26 && v23 == v27)
  {
  }

  else
  {
    v28 = sub_1E1D30();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v10 || (v5 != v11 || v6 != v10) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v39)
  {
    if (!v38 || (v35 != v34 || v39 != v38) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  if (v36 == 3)
  {
    return v37 == 3;
  }

  if (v37 == 3)
  {
    return 0;
  }

  if (v36)
  {
    if (v36 == 1)
    {
      v30 = 0x6375646F72506773;
      v31 = 0xEC0000006E6F6974;
    }

    else
    {
      v30 = 0x6F725047536E6F6ELL;
      v31 = 0xEF6E6F6974637564;
    }
  }

  else
  {
    v31 = 0xE700000000000000;
    v30 = 0x6E776F6E6B6E75;
  }

  if (v37)
  {
    if (v37 == 1)
    {
      v17 = 0x6375646F72506773;
      v32 = 0xEC0000006E6F6974;
    }

    else
    {
      v17 = 0x6F725047536E6F6ELL;
      v32 = 0xEF6E6F6974637564;
    }
  }

  else
  {
    v32 = 0xE700000000000000;
  }

  if (v30 == v17 && v31 == v32)
  {
  }

  else
  {
    v33 = sub_1E1D30();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_14E8C0()
{
  result = qword_289A00;
  if (!qword_289A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289A00);
  }

  return result;
}

__n128 sub_14E984(uint64_t a1, uint64_t a2)
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

uint64_t sub_14E9A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_14E9E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_14EA5C()
{
  result = qword_289A10;
  if (!qword_289A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289A10);
  }

  return result;
}

unint64_t sub_14EAB4()
{
  result = qword_289A18;
  if (!qword_289A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289A18);
  }

  return result;
}

unint64_t sub_14EB0C()
{
  result = qword_289A20;
  if (!qword_289A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289A20);
  }

  return result;
}

uint64_t sub_14EB60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65746E6F43746C61 && a2 == 0xEE0065707954746ELL || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6F43746C61 && a2 == 0xEC0000004449746ELL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xEC00000065707954 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000216FB0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563697250746C61 && a2 == 0xED0000746E696F50 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215B00 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69746375646F7270 && a2 == 0xEE00657079546E6FLL)
  {

    return 6;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t WelcomeScreenViewEvent.welcomeScreenData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WelcomeScreenViewEvent.welcomeScreenData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WelcomeScreenViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeScreenViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WelcomeScreenViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeScreenViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WelcomeScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WelcomeScreenViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t WelcomeScreenViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeScreenViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeScreenViewEvent.Model.init(welcomeScreenData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 4);
  *a4 = *a1;
  *(a4 + 4) = v7;
  v8 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
  v9 = *(v8 + 20);
  v10 = sub_1E1150();
  (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
  v11 = *(v8 + 24);
  v12 = sub_1E11A0();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

unint64_t sub_14F568()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_14F5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1507FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14F5F0(uint64_t a1)
{
  v2 = sub_14F8B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14F62C(uint64_t a1)
{
  v2 = sub_14F8B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WelcomeScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_289A58, &qword_201BA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14F8B8();
  sub_1E1E00();
  v11 = *(v3 + 4);
  v16[8] = *v3;
  v17 = v11;
  v16[7] = 0;
  sub_F478();
  sub_1E1CF0();
  if (!v2)
  {
    v12 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
    v13 = *(v12 + 20);
    v16[6] = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v14 = *(v12 + 24);
    v16[5] = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_14F8B8()
{
  result = qword_289A60;
  if (!qword_289A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289A60);
  }

  return result;
}

uint64_t WelcomeScreenViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_1E11A0();
  v23 = *(v25 - 8);
  v3 = *(v23 + 64);
  __chkstk_darwin(v25);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_289A68, &qword_201BB0);
  v27 = *(v30 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v30);
  v11 = &v23 - v10;
  v12 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_14F8B8();
  v29 = v11;
  v17 = v31;
  sub_1E1DF0();
  if (v17)
  {
    return sub_4E48(a1);
  }

  v31 = a1;
  v19 = v27;
  v18 = v28;
  v34 = 0;
  sub_F9D0();
  sub_1E1C20();
  v20 = v36;
  *v15 = v35;
  *(v15 + 1) = v20;
  v33 = 1;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v18 + 32))(&v15[*(v12 + 20)], v8, v5);
  v32 = 2;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v21 = v25;
  sub_1E1C20();
  (*(v19 + 8))(v29, v30);
  (*(v23 + 32))(&v15[*(v12 + 24)], v26, v21);
  sub_14FD68(v15, v24);
  sub_4E48(v31);
  return sub_14FDCC(v15);
}

uint64_t sub_14FD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14FDCC(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14FEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_150000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_150178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1502E8()
{
  sub_150384();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      sub_5750();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_150384()
{
  if (!qword_27DFE0)
  {
    sub_F9D0();
    sub_F478();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFE0);
    }
  }
}

uint64_t sub_150400(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_150530(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_150650()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1506F8()
{
  result = qword_289BA0;
  if (!qword_289BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289BA0);
  }

  return result;
}

unint64_t sub_150750()
{
  result = qword_289BA8;
  if (!qword_289BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289BA8);
  }

  return result;
}

unint64_t sub_1507A8()
{
  result = qword_289BB0;
  if (!qword_289BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289BB0);
  }

  return result;
}

uint64_t sub_1507FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000000002138F0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1509F0(uint64_t a1)
{
  v2 = sub_150BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_150A2C(uint64_t a1)
{
  v2 = sub_150BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppResumeEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_289BE8, &qword_201DC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_150BCC();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810);
  sub_1E1CF0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_150BCC()
{
  result = qword_289BF0;
  if (!qword_289BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289BF0);
  }

  return result;
}

uint64_t AppResumeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E1150();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_289BF8, &qword_201DC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AppResumeEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_150BCC();
  v16 = v23;
  sub_1E1DF0();
  if (!v16)
  {
    v17 = v21;
    sub_14E5C(&qword_27D830);
    sub_1E1C20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_150EAC(v14, v20);
  }

  return sub_4E48(a1);
}

uint64_t sub_150EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppResumeEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_150FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_151038(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1510E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_151168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1511EC()
{
  result = qword_289D20;
  if (!qword_289D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289D20);
  }

  return result;
}

unint64_t sub_151244()
{
  result = qword_289D28;
  if (!qword_289D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289D28);
  }

  return result;
}

unint64_t sub_15129C()
{
  result = qword_289D30;
  if (!qword_289D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289D30);
  }

  return result;
}

uint64_t SeriesExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SeriesExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t SeriesExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.Model.init(seriesData:exposureData:linkData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v9;
  v10 = *a2;
  v11 = a2[1];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v10;
  v12 = a2[2];
  v13 = a2[3];
  *(a6 + 64) = v11;
  *(a6 + 80) = v12;
  v15 = *a3;
  v14 = a3[1];
  *(a6 + 96) = v13;
  *(a6 + 112) = v15;
  v16 = a3[2];
  v17 = a3[4];
  v18 = a3[5];
  *(a6 + 160) = a3[3];
  *(a6 + 176) = v17;
  *(a6 + 128) = v14;
  *(a6 + 144) = v16;
  v19 = a3[6];
  v20 = a3[7];
  v21 = a3[8];
  *(a6 + 256) = *(a3 + 18);
  *(a6 + 224) = v20;
  *(a6 + 240) = v21;
  *(a6 + 192) = v18;
  *(a6 + 208) = v19;
  v22 = type metadata accessor for SeriesExposureEvent.Model(0);
  v23 = *(v22 + 28);
  v24 = sub_1E1150();
  (*(*(v24 - 8) + 32))(a6 + v23, a4, v24);
  v25 = *(v22 + 32);
  v26 = sub_1E11A0();
  v27 = *(*(v26 - 8) + 32);

  return v27(a6 + v25, a5, v26);
}

uint64_t sub_151D3C()
{
  v1 = *v0;
  v2 = 0x6144736569726573;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
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

uint64_t sub_151DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_15383C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_151E14(uint64_t a1)
{
  v2 = sub_15238C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_151E50(uint64_t a1)
{
  v2 = sub_15238C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_289D68, &qword_201FC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_15238C();
  sub_1E1E00();
  v10 = *v2;
  v11 = *v2;
  v12 = v2[2];
  v70 = v2[1];
  v71 = v12;
  v66 = v11;
  v67 = v70;
  v68 = v2[2];
  v69 = v10;
  v65 = 0;
  sub_CF18(&v69, &v48);
  sub_D57C();
  v13 = v72;
  sub_1E1CF0();
  if (v13)
  {
    v48 = v66;
    v49 = v67;
    v50 = v68;
    sub_D5D0(&v48);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = v5;
    v63[0] = v66;
    v63[1] = v67;
    v63[2] = v68;
    sub_D5D0(v63);
    v16 = v2[4];
    v64[0] = v2[3];
    v64[1] = v16;
    v17 = v2[6];
    v19 = v2[3];
    v18 = v2[4];
    v64[2] = v2[5];
    v64[3] = v17;
    v59 = v19;
    v60 = v18;
    v20 = v2[6];
    v61 = v2[5];
    v62 = v20;
    v58 = 1;
    sub_17AA4(v64, &v48, &qword_27F500, &unk_210330);
    sub_38C28();
    sub_1E1C80();
    v47[0] = v59;
    v47[1] = v60;
    v47[2] = v61;
    v47[3] = v62;
    sub_18E48(v47, &qword_27F500, &unk_210330);
    v21 = v2[14];
    v22 = v2[12];
    v54 = v2[13];
    v55 = v21;
    v23 = v2[14];
    v56 = v2[15];
    v24 = v2[10];
    v25 = v2[8];
    v50 = v2[9];
    v51 = v24;
    v26 = v2[10];
    v27 = v2[12];
    v52 = v2[11];
    v53 = v27;
    v28 = v2[8];
    v48 = v2[7];
    v49 = v28;
    v43 = v54;
    v44 = v23;
    v45 = v2[15];
    v39 = v50;
    v40 = v26;
    v41 = v52;
    v42 = v22;
    v57 = *(v2 + 32);
    v46 = *(v2 + 32);
    v37 = v48;
    v38 = v25;
    v36 = 2;
    sub_17AA4(&v48, v34, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v34[6] = v43;
    v34[7] = v44;
    v34[8] = v45;
    v35 = v46;
    v34[2] = v39;
    v34[3] = v40;
    v34[4] = v41;
    v34[5] = v42;
    v34[0] = v37;
    v34[1] = v38;
    sub_18E48(v34, &qword_27E4A0, &qword_1E8860);
    v29 = type metadata accessor for SeriesExposureEvent.Model(0);
    v30 = *(v29 + 28);
    v33 = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v31 = *(v29 + 32);
    v33 = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v15 + 8))(v8, v4);
  }
}

unint64_t sub_15238C()
{
  result = qword_289D70;
  if (!qword_289D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289D70);
  }

  return result;
}

uint64_t SeriesExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = sub_1E11A0();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v36);
  v37 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_289D78, &qword_201FD0);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = type metadata accessor for SeriesExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v64 = a1;
  sub_48B8(a1, v17);
  sub_15238C();
  v41 = v12;
  v19 = v42;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v64);
  }

  v42 = v13;
  v60 = 0;
  sub_DAD8();
  sub_1E1C20();
  v20 = v62;
  v21 = v16;
  *v16 = v61;
  *(v16 + 1) = v20;
  *(v16 + 2) = v63;
  v55 = 1;
  sub_393C4();
  sub_1E1BB0();
  v22 = v57;
  *(v16 + 3) = v56;
  *(v16 + 4) = v22;
  v23 = v59;
  *(v16 + 5) = v58;
  *(v16 + 6) = v23;
  v44 = 2;
  sub_18FA4();
  v33[1] = 0;
  sub_1E1BB0();
  v24 = v52;
  *(v16 + 13) = v51;
  *(v16 + 14) = v24;
  *(v16 + 15) = v53;
  *(v16 + 32) = v54;
  v25 = v48;
  *(v16 + 9) = v47;
  *(v16 + 10) = v25;
  v26 = v50;
  *(v16 + 11) = v49;
  *(v16 + 12) = v26;
  v27 = v46;
  *(v16 + 7) = v45;
  *(v16 + 8) = v27;
  v43 = 3;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v28 = v5;
  sub_1E1C20();
  v29 = v42;
  (*(v38 + 32))(&v16[*(v42 + 28)], v8, v28);
  v43 = 4;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v30 = v36;
  v31 = v37;
  sub_1E1C20();
  (*(v39 + 8))(v41, v40);
  (*(v34 + 32))(v21 + *(v29 + 32), v31, v30);
  sub_152A58(v21, v35);
  sub_4E48(v64);
  return sub_152ABC(v21);
}

uint64_t sub_152A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_152ABC(uint64_t a1)
{
  v2 = type metadata accessor for SeriesExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_152BB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_152D9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_152FBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_1531D4()
{
  sub_153348(319, &qword_27DE18, sub_DAD8, sub_D57C);
  if (v0 <= 0x3F)
  {
    sub_153348(319, &unk_27F598, sub_393C4, sub_38C28);
    if (v1 <= 0x3F)
    {
      sub_153348(319, &unk_27E588, sub_18FA4, sub_18630);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          sub_5750();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_153348(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1533D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = sub_1E1150();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_15351C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_153640()
{
  sub_19FE0(319, &unk_27F640);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &unk_27E650);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        sub_1E11A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_153738()
{
  result = qword_289EC0;
  if (!qword_289EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289EC0);
  }

  return result;
}

unint64_t sub_153790()
{
  result = qword_289EC8;
  if (!qword_289EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289EC8);
  }

  return result;
}

unint64_t sub_1537E8()
{
  result = qword_289ED0;
  if (!qword_289ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289ED0);
  }

  return result;
}

uint64_t sub_15383C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144736569726573 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E1D30();

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

Swift::Int sub_153A08()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_153B28()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_153C50()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_153D54()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_153E38()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

BookAnalytics::AutoNightThemeStatus_optional __swiftcall AutoNightThemeStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261258;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t AutoNightThemeStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x746867696CLL;
  v4 = 1802658148;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 28271;
  if (v1 != 1)
  {
    v5 = 6710895;
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

unint64_t sub_154024()
{
  result = qword_289ED8;
  if (!qword_289ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289ED8);
  }

  return result;
}

uint64_t sub_154080()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_154168(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x746867696CLL;
  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (v2 != 4)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000000212F60;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 28271;
  if (v2 != 1)
  {
    v10 = 6710895;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1542CC()
{
  result = qword_289EE0;
  if (!qword_289EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289EE0);
  }

  return result;
}

uint64_t SearchFallbackEvent.searchMethodData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_2868C8, &unk_202330);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchFallbackEvent.searchMethodData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_2868C8, &unk_202330);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchFallbackEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchFallbackEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchFallbackEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchFallbackEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchFallbackEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_2868C8, &unk_202330);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SearchFallbackEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t SearchFallbackEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchFallbackEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchFallbackEvent.Model.init(searchMethodData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for SearchFallbackEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

unint64_t sub_154840()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_154884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000000216130 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_154974(uint64_t a1)
{
  v2 = sub_154BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1549B0(uint64_t a1)
{
  v2 = sub_154BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchFallbackEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_289F18, &qword_202340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_154BA8();
  sub_1E1E00();
  v13[15] = *v3;
  v13[14] = 0;
  sub_ABFFC();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(type metadata accessor for SearchFallbackEvent.Model(0) + 20);
    v13[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_154BA8()
{
  result = qword_289F20;
  if (!qword_289F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289F20);
  }

  return result;
}

uint64_t SearchFallbackEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_289F28, &qword_202348);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SearchFallbackEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_154BA8();
  sub_1E1DF0();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_ABFA4();
    v18 = v28;
    sub_1E1C20();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_14E5C(&qword_27D830);
    v21 = v6;
    sub_1E1C20();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v21, v17);
    sub_154EF8(v19, v25);
  }

  return sub_4E48(a1);
}

uint64_t sub_154EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFallbackEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_154FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_2868C8, &unk_202330);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_1550E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_2868C8, &unk_202330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_155204(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_2868C8, &unk_202330);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_155318()
{
  sub_15539C();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_15539C()
{
  if (!qword_286968)
  {
    sub_ABFA4();
    sub_ABFFC();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_286968);
    }
  }
}

uint64_t sub_155418(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1554D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_155570()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_155600()
{
  result = qword_28A050;
  if (!qword_28A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A050);
  }

  return result;
}

unint64_t sub_155658()
{
  result = qword_28A058;
  if (!qword_28A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A058);
  }

  return result;
}

unint64_t sub_1556B0()
{
  result = qword_28A060;
  if (!qword_28A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A060);
  }

  return result;
}

BookAnalytics::AccountUserAction_optional __swiftcall AccountUserAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261308;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t AccountUserAction.rawValue.getter()
{
  v1 = 0x6E49676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x74754F676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1557B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6E49676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x74754F676F6CLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6E49676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x74754F676F6CLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_1558AC()
{
  result = qword_28A068;
  if (!qword_28A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A068);
  }

  return result;
}

Swift::Int sub_155900()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_15599C()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_155A24()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_155AC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E49676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x74754F676F6CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_155BE0()
{
  result = qword_28A070;
  if (!qword_28A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A070);
  }

  return result;
}

uint64_t RedownloadFailEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.redownloadFailData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 28);
  v4 = sub_3D68(&qword_28A0A8, &qword_202678);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.redownloadFailData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 28);
  v4 = sub_3D68(&qword_28A0A8, &qword_202678);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RedownloadFailEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_28A0A8, &qword_202678);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t RedownloadFailEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.Model.init(contentData:contentStoreData:sectionData:redownloadFailData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v10;
  v11 = a1[5];
  *(a7 + 64) = a1[4];
  *(a7 + 80) = v11;
  v12 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v12;
  v13 = *(a2 + 48);
  *(a7 + 128) = *(a2 + 32);
  *(a7 + 144) = v13;
  v14 = *(a2 + 16);
  *(a7 + 96) = *a2;
  *(a7 + 112) = v14;
  v15 = a3[2];
  *(a7 + 216) = a3[3];
  v16 = a3[5];
  *(a7 + 232) = a3[4];
  *(a7 + 248) = v16;
  *(a7 + 264) = a3[6];
  v17 = a3[1];
  *(a7 + 168) = *a3;
  *(a7 + 184) = v17;
  v18 = *a4;
  *(a7 + 157) = *(a2 + 61);
  *(a7 + 200) = v15;
  *(a7 + 280) = v18;
  v19 = type metadata accessor for RedownloadFailEvent.Model(0);
  v20 = *(v19 + 32);
  v21 = sub_1E1150();
  (*(*(v21 - 8) + 32))(a7 + v20, a5, v21);
  v22 = *(v19 + 36);
  v23 = sub_1E11A0();
  v24 = *(*(v23 - 8) + 32);

  return v24(a7 + v22, a6, v23);
}

unint64_t sub_15684C()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0xD000000000000012;
  v4 = 0x746144746E657665;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x446E6F6974636573;
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

uint64_t sub_156920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_15863C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_156948(uint64_t a1)
{
  v2 = sub_156F18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_156984(uint64_t a1)
{
  v2 = sub_156F18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedownloadFailEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28A0B0, &qword_202680);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_156F18();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v68 = *(v2 + 32);
  v69 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v70 = *(v2 + 64);
  v71 = v13;
  v14 = *(v2 + 16);
  v67[0] = *v2;
  v67[1] = v14;
  v63 = v68;
  v64 = v12;
  v15 = *(v2 + 80);
  v65 = v70;
  v66 = v15;
  v61 = v67[0];
  v62 = v11;
  v60 = 0;
  sub_13A5C(v67, &v44);
  sub_143D0();
  v16 = v72;
  sub_1E1CF0();
  if (v16)
  {
    v46 = v63;
    v47 = v64;
    v48 = v65;
    v49 = v66;
    v44 = v61;
    v45 = v62;
    sub_14424(&v44);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v56[2] = v63;
    v56[3] = v64;
    v56[4] = v65;
    v56[5] = v66;
    v56[0] = v61;
    v56[1] = v62;
    sub_14424(v56);
    v18 = *(v2 + 112);
    v19 = *(v2 + 144);
    v58 = *(v2 + 128);
    *v59 = v19;
    v20 = *(v2 + 112);
    v57[0] = *(v2 + 96);
    v57[1] = v20;
    v53 = v18;
    v54 = v58;
    v55[0] = *(v2 + 144);
    *&v59[13] = *(v2 + 157);
    *(v55 + 13) = *(v2 + 157);
    v52 = v57[0];
    v51 = 1;
    sub_17AA4(v57, &v44, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v42[2] = v54;
    v43[0] = v55[0];
    *(v43 + 13) = *(v55 + 13);
    v42[0] = v52;
    v42[1] = v53;
    sub_18E48(v42, &qword_27FFF0, &unk_1E9C00);
    v21 = *(v2 + 216);
    v22 = *(v2 + 248);
    v48 = *(v2 + 232);
    v49 = v22;
    v50 = *(v2 + 264);
    v23 = *(v2 + 184);
    v44 = *(v2 + 168);
    v45 = v23;
    v46 = *(v2 + 200);
    v47 = v21;
    v24 = *(v2 + 216);
    v25 = *(v2 + 248);
    v39 = *(v2 + 232);
    v40 = v25;
    v41 = *(v2 + 264);
    v26 = *(v2 + 184);
    v35 = *(v2 + 168);
    v36 = v26;
    v37 = *(v2 + 200);
    v38 = v24;
    v34 = 2;
    sub_17AA4(&v44, v33, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v33[4] = v39;
    v33[5] = v40;
    v33[6] = v41;
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    sub_18E48(v33, &qword_27E490, &qword_205F90);
    v32 = *(v2 + 280);
    v31[14] = 3;
    sub_156F6C();
    sub_1E1CF0();
    v27 = v8;
    v28 = type metadata accessor for RedownloadFailEvent.Model(0);
    v29 = *(v28 + 32);
    v32 = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v30 = *(v28 + 36);
    v32 = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v5 + 8))(v27, v4);
  }
}

unint64_t sub_156F18()
{
  result = qword_28A0B8;
  if (!qword_28A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A0B8);
  }

  return result;
}

unint64_t sub_156F6C()
{
  result = qword_28A0C0;
  if (!qword_28A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A0C0);
  }

  return result;
}

uint64_t RedownloadFailEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = sub_1E11A0();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v34);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_28A0C8, &qword_202688);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for RedownloadFailEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v63 = a1;
  sub_48B8(a1, v17);
  sub_156F18();
  v39 = v12;
  v19 = v40;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v63);
  }

  v40 = v8;
  v49 = 0;
  sub_14CB8();
  sub_1E1C20();
  v20 = v53;
  *(v16 + 2) = v52;
  *(v16 + 3) = v20;
  v21 = v55;
  *(v16 + 4) = v54;
  *(v16 + 5) = v21;
  v22 = v51;
  *v16 = v50;
  *(v16 + 1) = v22;
  v44 = 1;
  sub_4FB64();
  sub_1E1BB0();
  v23 = *v48;
  *(v16 + 8) = v47;
  *(v16 + 9) = v23;
  *(v16 + 157) = *&v48[13];
  v24 = v46;
  *(v16 + 6) = v45;
  *(v16 + 7) = v24;
  v43 = 2;
  sub_18EFC();
  sub_1E1BB0();
  v25 = v58;
  *(v16 + 216) = v59;
  v26 = v61;
  *(v16 + 232) = v60;
  *(v16 + 248) = v26;
  v27 = v57;
  *(v16 + 168) = v56;
  *(v16 + 184) = v27;
  *(v16 + 200) = v25;
  *(v16 + 264) = v62;
  v41 = 3;
  sub_1576C4();
  sub_1E1C20();
  v31 = v13;
  v16[280] = v42;
  v42 = 4;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v28 = v40;
  sub_1E1C20();
  (*(v36 + 32))(&v16[*(v31 + 32)], v28, v5);
  v42 = 5;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v29 = v34;
  sub_1E1C20();
  (*(v37 + 8))(v39, v38);
  (*(v32 + 32))(&v16[*(v31 + 36)], v35, v29);
  sub_157718(v16, v33);
  sub_4E48(v63);
  return sub_15777C(v16);
}