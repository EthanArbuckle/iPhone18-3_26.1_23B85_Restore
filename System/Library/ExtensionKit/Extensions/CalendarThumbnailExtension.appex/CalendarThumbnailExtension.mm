Swift::Int sub_100001CFC()
{
  v1 = *v0;
  sub_100008534();
  sub_100008544(v1);
  return sub_100008554();
}

Swift::Int sub_100001D70()
{
  v1 = *v0;
  sub_100008534();
  sub_100008544(v1);
  return sub_100008554();
}

uint64_t sub_100001DC0(uint64_t a1)
{
  v2 = sub_1000073DC();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100001DFC(uint64_t a1)
{
  v2 = sub_1000073DC();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100001E40(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_100005504(&qword_100010438, &qword_100008DA8);
  v2[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v5 = sub_1000080B4();
  v2[14] = v5;
  v6 = *(v5 - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v8 = sub_100007E74();
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = *(v9 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v11 = *(*(sub_100005504(&qword_100010440, &qword_100008DB0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v12 = type metadata accessor for TodoView(0);
  v2[24] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v14 = sub_100007EB4();
  v2[26] = v14;
  v15 = *(v14 - 8);
  v2[27] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v2[28] = v17;
  v2[29] = sub_1000084C4();
  v2[30] = sub_1000084B4();
  v18 = async function pointer to ThumbnailRequest.fileURL.getter[1];
  v19 = swift_task_alloc();
  v2[31] = v19;
  *v19 = v2;
  v19[1] = sub_1000020E4;

  return ThumbnailRequest.fileURL.getter(v17);
}

uint64_t sub_1000020E4()
{
  v2 = v0;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v10 = *v1;
  *(*v1 + 256) = v2;

  v7 = sub_1000084A4();
  if (v2)
  {
    v8 = sub_1000028F8;
  }

  else
  {
    v8 = sub_100002240;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100002240()
{
  v1 = v0[30];
  v2 = v0[28];

  v3 = objc_allocWithZone(QLIcalParser);
  sub_100007EA4(v4);
  v6 = v5;
  v7 = [v3 initWithURL:v5];

  if (v7)
  {
    if ([v7 isTodo])
    {
      v8 = [v7 dueDate];
      if (v8)
      {
        v9 = v0[23];
        v10 = v8;
        sub_100007E44();

        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      (*(v0[18] + 56))(v0[23], v11, 1, v0[17]);
      v27 = [v7 isDone];
      v28 = [v7 summary];
      if (v28)
      {
        v29 = v28;
        v30 = sub_100008494();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v48 = v0[24];
      v47 = v0[25];
      sub_100006DB0(v0[23], v47, &qword_100010440, &qword_100008DB0);
      *(v47 + *(v48 + 20)) = v27;
      v49 = (v47 + *(v48 + 24));
      *v49 = v30;
      v49[1] = v32;
      sub_1000054BC(&qword_100010468, type metadata accessor for TodoView);
      v50 = sub_100008424();
LABEL_21:
      v60 = v0[15];
      v59 = v0[16];
      v61 = v0[13];
      v62 = v0[14];
      v64 = v0[11];
      v63 = v0[12];
      v88 = v0[10];
      v89 = v7;

      sub_1000080D4();
      sub_100008094();
      v65 = v50;
      v66 = *(v60 + 8);
      v66(v59, v62);
      sub_1000080D4();
      sub_1000080A4();
      v66(v59, v62);
      KeyPath = swift_getKeyPath();
      v68 = (v61 + *(v63 + 36));
      v69 = v68 + *(sub_100005504(&qword_100010458, &qword_100008DE8) + 28);
      sub_100007FF4();
      *v68 = KeyPath;
      *v61 = v65;
      v70 = sub_100005504(&qword_100010460, &qword_100008DF0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      sub_100008194();
      sub_100008174();
      sub_1000081A4();

      sub_100008084();

      v73 = [v89 isTodo];
      v75 = v0[27];
      v74 = v0[28];
      v76 = v0[26];
      if (v73)
      {
        v77 = v0[10];
        sub_100008074();
        sub_100008064();

        (*(v75 + 8))(v74, v76);
      }

      else
      {
        (*(v75 + 8))(v0[28], v0[26]);
      }

      v78 = v0[28];
      v79 = v0[25];
      v81 = v0[22];
      v80 = v0[23];
      v83 = v0[20];
      v82 = v0[21];
      v84 = v0[19];
      v85 = v0[16];
      v86 = v0[13];

      v46 = v0[1];
      goto LABEL_25;
    }

    v16 = [v7 startDate];
    if (v16)
    {
      v18 = v0[20];
      v17 = v0[21];
      v20 = v0[18];
      v19 = v0[19];
      v21 = v0[17];
      v22 = v16;
      sub_100007E44();

      (*(v20 + 32))(v17, v18, v21);
      (*(v20 + 16))(v19, v17, v21);
      v23 = [v7 endDate];
      if (v23)
      {
        v24 = v0[22];
        v25 = v23;
        sub_100007E44();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      (*(v0[18] + 56))(v0[22], v26, 1, v0[17]);
      v51 = [v7 summary];
      if (v51)
      {
        v52 = v51;
        v53 = sub_100008494();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v56 = v0[21];
      v57 = v0[18];
      v58 = v0[17];
      sub_100005760(v0[19], v0[22], v53, v55, [v7 fullDay], v0 + 2);
      sub_100006C10();
      v50 = sub_100008424();
      (*(v57 + 8))(v56, v58);
      goto LABEL_21;
    }

    v34 = v0[27];
    v33 = v0[28];
    v35 = v0[26];
    sub_1000055A4();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();

    (*(v34 + 8))(v33, v35);
  }

  else
  {
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    sub_1000055A4();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
  }

  v37 = v0[28];
  v38 = v0[25];
  v40 = v0[22];
  v39 = v0[23];
  v42 = v0[20];
  v41 = v0[21];
  v43 = v0[19];
  v44 = v0[16];
  v45 = v0[13];

  v46 = v0[1];
LABEL_25:

  return v46();
}

uint64_t sub_1000028F8()
{
  v1 = v0[30];

  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100002A00(uint64_t a1)
{
  v2 = sub_100008004();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100008234();
}

uint64_t sub_100002AC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000080F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100002B30(uint64_t a1)
{
  v2 = sub_1000054BC(&qword_100010430, type metadata accessor for CalendarThumbnailExtension);

  return ThumbnailExtension.configuration.getter(a1, v2);
}

uint64_t sub_100002BAC()
{
  v0 = sub_100008124();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100008114();
  return sub_1000080E4();
}

uint64_t sub_100002C40()
{
  v0 = sub_1000083C4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.displayP3(_:));
  result = sub_100008404();
  qword_100010AD0 = result;
  return result;
}

uint64_t sub_100002D24()
{
  v0 = sub_100005504(&qword_100010570, &qword_1000090A8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  sub_100008314();
  v4 = enum case for Font.Design.default(_:);
  v5 = sub_1000082E4();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = sub_100008324();
  result = sub_100007954(v3, &qword_100010570, &qword_1000090A8);
  qword_100010AD8 = v7;
  return result;
}

uint64_t sub_100002E70()
{
  v0 = sub_100008484();
  CTFontCreateWithNameAndOptions(v0, 490.0, 0, 0x400uLL);

  result = sub_100008334();
  qword_100010AE0 = result;
  return result;
}

uint64_t sub_100002EDC()
{
  v0 = sub_100005504(&qword_100010570, &qword_1000090A8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  sub_100008304();
  v4 = sub_1000082E4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_100008324();
  result = sub_100007954(v3, &qword_100010570, &qword_1000090A8);
  qword_100010AE8 = v5;
  return result;
}

uint64_t sub_100002FD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = sub_1000083C4();
  v79 = *(v82 - 8);
  v4 = *(v79 + 64);
  __chkstk_darwin(v82);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1000083F4();
  sub_100008444();
  sub_100008154();
  v90 = v109;
  v91 = v111;
  v86 = v112;
  v87 = v110;
  v92 = v113;
  v93 = v114;
  v7 = *a1;
  v8 = a1[1];
  v9 = qword_100010668;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_100008354();
  v12 = v11;
  v14 = v13;

  if (qword_100010660 != -1)
  {
    swift_once();
  }

  v137[0] = qword_100010AD0;

  v15 = sub_100008344();
  v94 = v16;
  v95 = v15;
  v84 = v17;
  v96 = v18;
  sub_1000075B0(v10, v12, v14 & 1);

  v20 = a1[2];
  v19 = a1[3];
  v21 = qword_100010670;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_100008354();
  v24 = v23;
  v26 = v25;

  v137[0] = sub_1000083E4();
  v85 = sub_100008344();
  v88 = v27;
  v89 = v28;
  v81 = v29;
  sub_1000075B0(v22, v24, v26 & 1);

  v76 = sub_100008294();
  v105 = 1;
  v31 = a1[4];
  v30 = a1[5];
  v33 = a1[6];
  v32 = a1[7];

  sub_1000075C0(v31, v30, 0);

  sub_1000075C0(v33, v32, 0);

  v83 = v32;
  sub_1000075B0(v33, v32, 0);

  v80 = v30;
  sub_1000075B0(v31, v30, 0);

  v118 = 0;
  v116 = 0;
  v77 = v105;
  v78 = sub_1000082B4();
  sub_100008134();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v106 = 0;
  KeyPath = swift_getKeyPath();
  v107 = 0;
  if (qword_100010678 != -1)
  {
    swift_once();
  }

  v42 = qword_100010AE8;
  v74 = swift_getKeyPath();
  (*(v79 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v82);

  v43 = sub_100008414();
  v44 = swift_getKeyPath();
  v45 = sub_1000083E4();
  DWORD1(v131) = *&v121[3];
  *(&v131 + 1) = *v121;
  HIDWORD(v132) = *&v122[3];
  *(&v132 + 9) = *v122;
  DWORD1(v135) = *(v108 + 3);
  *(&v135 + 1) = v108[0];
  *v139 = *v119;
  *v143 = v117[0];
  *&v148[3] = *(v115 + 3);
  *v148 = v115[0];
  *&v151[3] = *&v120[3];
  *v151 = *v120;
  *v157 = *v121;
  *v161 = *v122;
  *v167 = v108[0];
  v102 = v87;
  v101 = v86;
  *(&v124 + 1) = *v119;
  DWORD1(v124) = *&v119[3];
  HIDWORD(v125) = *(v117 + 3);
  *(&v125 + 9) = v117[0];
  HIDWORD(v127) = *(v115 + 3);
  *(&v127 + 9) = v115[0];
  HIDWORD(v128) = *&v120[3];
  *(&v128 + 9) = *v120;
  *(a2 + 8) = v90;
  *(a2 + 16) = v102;
  *(a2 + 24) = v91;
  *(a2 + 32) = v101;
  *(a2 + 40) = v92;
  v46 = v84 & 1;
  v47 = v81 & 1;
  v100 = v84 & 1;
  v99 = v81 & 1;
  *&v130 = v39;
  *(&v130 + 1) = v41;
  LOBYTE(v131) = 0;
  v49 = v74;
  v48 = KeyPath;
  *(&v131 + 1) = KeyPath;
  *&v132 = 1;
  BYTE8(v132) = 0;
  *&v133 = v74;
  v50 = v42;
  *(&v133 + 1) = v42;
  v51 = v43;
  *&v134 = v43;
  *(&v134 + 1) = v44;
  LOBYTE(v135) = 1;
  *(&v135 + 1) = v45;
  v136 = xmmword_100008CD0;
  *(a2 + 48) = v93;
  *(a2 + 72) = v100;
  *(a2 + 120) = v99;
  v52 = v133;
  v53 = v135;
  v54 = v136;
  *(a2 + 328) = v134;
  *(a2 + 344) = v53;
  *(a2 + 360) = v54;
  v55 = v131;
  v56 = v132;
  *(a2 + 264) = v130;
  *(a2 + 280) = v55;
  *(a2 + 296) = v56;
  *(a2 + 312) = v52;
  *a2 = v97;
  *&v129 = v35;
  *(&v129 + 1) = v37;
  v57 = v129;
  *(a2 + 88) = xmmword_100008CE0;
  v58 = v76;
  v123 = v76;
  v59 = v77;
  v60 = v78;
  LOBYTE(v124) = v77;
  *(&v124 + 1) = v31;
  v61 = v80;
  *&v125 = v80;
  BYTE8(v125) = 0;
  *&v126 = &_swiftEmptyArrayStorage;
  *(&v126 + 1) = v33;
  v62 = v83;
  *&v127 = v83;
  BYTE8(v127) = 0;
  *&v128 = &_swiftEmptyArrayStorage;
  BYTE8(v128) = v78;
  *(a2 + 136) = xmmword_100008CF0;
  *(a2 + 248) = v57;
  v63 = v126;
  *(a2 + 184) = v125;
  *(a2 + 200) = v63;
  v64 = v128;
  *(a2 + 216) = v127;
  *(a2 + 232) = v64;
  v65 = v124;
  *(a2 + 152) = v123;
  v66 = v31;
  v67 = v94;
  v68 = v95;
  *(a2 + 56) = v95;
  *(a2 + 64) = v67;
  *(a2 + 80) = v96;
  v69 = v85;
  v70 = v88;
  *(a2 + 104) = v85;
  *(a2 + 112) = v70;
  v71 = v69;
  *(a2 + 128) = v89;
  *(a2 + 168) = v65;
  v138 = v59;
  *&v139[3] = *&v119[3];
  v140 = v66;
  v141 = v61;
  *&v143[3] = *(v117 + 3);
  v145 = v33;
  v146 = v62;
  v144 = &_swiftEmptyArrayStorage;
  v149 = &_swiftEmptyArrayStorage;
  v150 = v60;
  *&v157[3] = *&v121[3];
  *&v161[3] = *&v122[3];
  v162 = v49;
  v163 = v50;
  v164 = v51;
  v165 = v44;
  v158 = v48;
  v159 = 1;
  v166 = 1;
  *&v167[3] = *(v108 + 3);
  v168 = v45;
  v137[0] = v58;
  v104 = v46;
  v103 = v47;
  v137[1] = 0;
  v142 = 0;
  v147 = 0;
  v152 = v35;
  v153 = v37;
  v154 = v39;
  v155 = v41;
  v156 = 0;
  v160 = 0;
  v169 = xmmword_100008CD0;

  sub_1000075C0(v68, v67, v46);

  sub_1000075C0(v71, v70, v47);

  sub_1000078EC(&v123, &v98, &qword_100010568, &qword_1000090A0);
  sub_100007954(v137, &qword_100010568, &qword_1000090A0);
  sub_1000075B0(v71, v70, v103);

  sub_1000075B0(v68, v67, v104);
}

uint64_t sub_100003860@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  v7 = v1[3];
  v5[3] = v1[2];
  v5[4] = v7;
  *a1 = sub_100007480;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  return sub_100007578(v10, &v9);
}

double sub_1000038E8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000083C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodoView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_1000075D0(v2, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_100007764(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = sub_1000083D4();
  sub_100005504(&qword_100010578, &qword_1000090B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100008D00;
  *(v15 + 32) = sub_1000083F4();
  (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  *(v15 + 40) = sub_100008414();
  sub_100008454();
  sub_100008464();
  sub_100008434();
  sub_1000081B4();
  v16 = v20[1];
  v17 = sub_1000082C4();
  *a1 = sub_1000077C8;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  result = *&v21;
  v19 = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = v19;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_100003B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v101 = sub_1000083C4();
  v104 = *(v101 - 8);
  v3 = *(v104 + 64);
  __chkstk_darwin(v101);
  v100 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100005504(&qword_100010590, &qword_1000090C8);
  v5 = *(*(v98 - 8) + 64);
  v6 = __chkstk_darwin(v98);
  v108 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = &v90 - v8;
  v9 = sub_100005504(&qword_100010570, &qword_1000090A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v99 = &v90 - v11;
  *&v12 = COERCE_DOUBLE(sub_100008444());
  v106 = v13;
  v107 = *&v12;
  v14 = 0;
  sub_100008144();
  v15 = *&v120;
  v16 = DWORD2(v120);
  v17 = HIDWORD(v120);
  v18 = v121;
  v19 = v122;
  v20 = sub_100008444();
  v22 = v21;
  v23 = 0;
  v24 = *(type metadata accessor for TodoView(0) + 20);
  v102 = a1;
  v25 = *(a1 + v24);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (v25 == 1)
  {
    v29 = sub_1000082C4();
    sub_100008134();
    v14 = v30;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v23 = v29;
  }

  *&v160 = v15 * 0.5;
  *(&v160 + 1) = v15;
  *v161 = v16;
  *&v161[4] = v17;
  *&v161[8] = v18;
  *&v161[24] = v19;
  *&v161[32] = 256;
  *&v161[40] = v20;
  *&v161[48] = v22;
  LOBYTE(v112) = v25 ^ 1;
  v143 = v160;
  *&v147 = v22;
  v146 = *&v161[32];
  v145 = *&v161[16];
  v144 = *v161;
  v177 = v15 * 0.5;
  v178 = v15;
  *v179 = __PAIR64__(v17, v16);
  *&v179[8] = v18;
  *&v179[24] = v19;
  LOWORD(v180) = 256;
  *(&v180 + 1) = v20;
  *&v181 = v22;
  sub_1000078EC(&v160, v152, &qword_1000105D8, &qword_100009128);
  sub_100007954(&v177, &qword_1000105D8, &qword_100009128);
  v113 = v144;
  v114 = v145;
  v115 = v146;
  v112 = v143;
  *&v116 = v147;
  *(&v116 + 1) = v23;
  *&v117 = v14;
  *(&v117 + 1) = v26;
  *&v118 = v27;
  *(&v118 + 1) = v28;
  LOBYTE(v119) = 0;
  HIBYTE(v119) = v25 ^ 1;
  v122 = v145;
  v123 = v146;
  v120 = v143;
  v121 = v144;
  v124 = v147;
  v125 = v23;
  v126 = v14;
  v127 = v26;
  v128 = v27;
  v129 = v28;
  v130 = 0;
  v131 = v25 ^ 1;
  sub_1000078EC(&v112, &v177, &qword_100010598, &qword_1000090D0);
  sub_100007954(&v120, &qword_100010598, &qword_1000090D0);
  v136 = v116;
  v137 = v117;
  v138 = v118;
  v139 = v119;
  v132 = v112;
  v133 = v113;
  v134 = v114;
  v135 = v115;
  sub_100008444();
  sub_100008154();
  *&v111[3] = *&v111[27];
  *&v111[11] = *&v111[35];
  *&v111[19] = *&v111[43];
  sub_100008274();
  v34 = sub_100008374();
  v36 = v35;
  v38 = v37;
  sub_1000082F4();
  v92 = sub_1000082E4();
  v39 = *(v92 - 8);
  v91 = *(v39 + 56);
  v93 = v39 + 56;
  v40 = v99;
  v91(v99, 1, 1, v92);
  sub_100008324();
  sub_100007954(v40, &qword_100010570, &qword_1000090A8);
  v95 = sub_100008354();
  v103 = v41;
  v96 = v42;
  v97 = v43;

  sub_1000075B0(v34, v36, v38 & 1);

  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_100008284();
  v46 = v105;
  (*(*(v45 - 8) + 104))(v105, v44, v45);
  sub_100008444();
  sub_100008154();
  v47 = (v46 + *(sub_100005504(&qword_1000105A0, &qword_1000090D8) + 36));
  v48 = *&v111[59];
  *v47 = *&v111[51];
  v47[1] = v48;
  v47[2] = *&v111[67];
  v49 = enum case for Color.RGBColorSpace.sRGB(_:);
  v50 = *(v104 + 104);
  v52 = v100;
  v51 = v101;
  v50(v100, enum case for Color.RGBColorSpace.sRGB(_:), v101);
  v53 = sub_100008414();
  KeyPath = swift_getKeyPath();
  v55 = (v46 + *(v98 + 36));
  *v55 = KeyPath;
  v55[1] = v53;
  v104 = sub_1000082A4();
  LOBYTE(v177) = 1;
  sub_1000047A4(v102, v140);
  *&v109[7] = v140[0];
  *&v109[23] = v140[1];
  *&v109[39] = v140[2];
  *&v109[55] = v140[3];
  LODWORD(v102) = LOBYTE(v177);
  LODWORD(v98) = sub_1000082D4();
  sub_100008134();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  LOBYTE(v160) = 0;
  v90 = swift_getKeyPath();
  LOBYTE(v177) = 0;
  sub_100008304();
  v91(v40, 1, 1, v92);
  v93 = sub_100008324();
  sub_100007954(v40, &qword_100010570, &qword_1000090A8);
  v99 = swift_getKeyPath();
  v50(v52, v49, v51);
  v101 = sub_100008414();
  v64 = v108;
  sub_1000078EC(v46, v108, &qword_100010590, &qword_1000090C8);
  *&v143 = v107;
  *(&v143 + 1) = v106;
  v148 = v136;
  v149 = v137;
  v150 = v138;
  *v151 = v139;
  v144 = v132;
  v145 = v133;
  v146 = v134;
  v147 = v135;
  *&v151[2] = *v111;
  *&v151[18] = *&v111[8];
  *&v151[34] = *&v111[16];
  *&v151[48] = *&v111[23];
  v65 = v136;
  v66 = v94;
  *(v94 + 64) = v135;
  *(v66 + 80) = v65;
  v67 = v150;
  *(v66 + 96) = v149;
  *(v66 + 112) = v67;
  v68 = v144;
  *v66 = v143;
  *(v66 + 16) = v68;
  v69 = v146;
  *(v66 + 32) = v145;
  *(v66 + 48) = v69;
  v70 = *&v151[16];
  *(v66 + 128) = *v151;
  *(v66 + 144) = v70;
  *(v66 + 160) = *&v151[32];
  v71 = v95;
  *(v66 + 176) = *&v151[48];
  *(v66 + 184) = v71;
  v72 = v103;
  *(v66 + 192) = v103;
  LODWORD(v100) = v96 & 1;
  *(v66 + 200) = v96 & 1;
  *(v66 + 208) = v97;
  v73 = sub_100005504(&qword_1000105A8, &qword_100009110);
  sub_1000078EC(v64, v66 + *(v73 + 64), &qword_100010590, &qword_1000090C8);
  v74 = v66 + *(v73 + 80);
  v152[0] = v104;
  v152[1] = 0;
  LOBYTE(v153[0]) = v102;
  *(&v153[3] + 1) = *&v109[48];
  *&v153[4] = *&v109[63];
  *(&v153[1] + 1) = *&v109[16];
  *(&v153[2] + 1) = *&v109[32];
  *(v153 + 1) = *v109;
  LOBYTE(v73) = v98;
  BYTE8(v153[4]) = v98;
  *(&v153[4] + 9) = *v141;
  HIDWORD(v153[4]) = *&v141[3];
  *&v154 = v57;
  *(&v154 + 1) = v59;
  *&v155 = v61;
  *(&v155 + 1) = v63;
  LOBYTE(v156) = 0;
  DWORD1(v156) = *&v142[3];
  *(&v156 + 1) = *v142;
  v75 = v90;
  *(&v156 + 1) = v90;
  *&v157 = 1;
  BYTE8(v157) = 0;
  *(&v157 + 9) = v110[0];
  HIDWORD(v157) = *(v110 + 3);
  v76 = v99;
  *&v158 = v99;
  v77 = v93;
  *(&v158 + 1) = v93;
  v78 = v101;
  v159 = v101;
  v79 = v104;
  v80 = v153[0];
  v81 = v153[2];
  *(v74 + 32) = v153[1];
  *(v74 + 48) = v81;
  *v74 = v79;
  *(v74 + 16) = v80;
  v82 = v153[3];
  v83 = v153[4];
  v84 = v155;
  *(v74 + 96) = v154;
  *(v74 + 112) = v84;
  *(v74 + 64) = v82;
  *(v74 + 80) = v83;
  v85 = v156;
  v86 = v157;
  v87 = v158;
  *(v74 + 176) = v78;
  *(v74 + 144) = v86;
  *(v74 + 160) = v87;
  *(v74 + 128) = v85;
  sub_1000078EC(&v143, &v177, &qword_1000105B0, &qword_100009118);
  v88 = v72;
  LOBYTE(v72) = v100;
  sub_1000075C0(v71, v88, v100);

  sub_1000078EC(v152, &v177, &qword_1000105B8, &qword_100009120);
  sub_100007954(v105, &qword_100010590, &qword_1000090C8);
  *&v161[17] = *&v109[16];
  *&v161[33] = *&v109[32];
  *&v161[49] = *&v109[48];
  v160 = v104;
  v161[0] = v102;
  *&v161[64] = *&v109[63];
  *&v161[1] = *v109;
  v162 = v73;
  *v163 = *v141;
  *&v163[3] = *&v141[3];
  v164 = v57;
  v165 = v59;
  v166 = v61;
  v167 = v63;
  v168 = 0;
  *&v169[3] = *&v142[3];
  *v169 = *v142;
  v170 = v75;
  v171 = 1;
  v172 = 0;
  *v173 = v110[0];
  *&v173[3] = *(v110 + 3);
  v174 = v76;
  v175 = v77;
  v176 = v101;
  sub_100007954(&v160, &qword_1000105B8, &qword_100009120);
  sub_100007954(v108, &qword_100010590, &qword_1000090C8);
  sub_1000075B0(v71, v103, v72);

  v177 = v107;
  v178 = v106;
  v182 = v136;
  v183 = v137;
  v184 = v138;
  v185 = v139;
  *v179 = v132;
  *&v179[16] = v133;
  v180 = v134;
  v181 = v135;
  *(v188 + 14) = *&v111[23];
  v188[0] = *&v111[16];
  v187 = *&v111[8];
  v186 = *v111;
  return sub_100007954(&v177, &qword_1000105B0, &qword_100009118);
}

uint64_t sub_1000047A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v101 = a2;
  v3 = sub_100007E94();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008044();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v94 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008004();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v93 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005504(&qword_100010480, &qword_100008E08);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v91 = v87 - v15;
  v16 = sub_100005504(&qword_100010488, &qword_100008E10);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v89 = v87 - v18;
  v92 = sub_100007FA4();
  v19 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v90 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100005504(&qword_100010490, &qword_100008E18);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v98 = v87 - v23;
  v100 = sub_100008024();
  v24 = *(v100 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v100);
  v88 = v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v96 = v87 - v28;
  v29 = sub_100005504(&qword_100010440, &qword_100008DB0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v97 = v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = v87 - v33;
  v35 = sub_100005504(&qword_100010498, &qword_100008E20);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = v87 - v37;
  v106 = sub_100007FE4();
  v39 = *(v106 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v106);
  v95 = v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = v87 - v43;
  v45 = (a1 + *(type metadata accessor for TodoView(0) + 24));
  v46 = v45[1];
  v99 = v24;
  if (v46)
  {
    v47 = *v45;
    v48 = v46;
  }

  else
  {
    v48 = 0xE100000000000000;
    v47 = 32;
  }

  v107 = v47;
  v108 = v48;
  sub_1000079B4();

  v49 = sub_100008384();
  v103 = v50;
  v104 = v49;
  v102 = v51;
  v105 = v52;
  v53 = a1;
  sub_1000078EC(a1, v34, &qword_100010440, &qword_100008DB0);
  v54 = sub_100007E74();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v34, 1, v54) == 1)
  {
    sub_100007954(v34, &qword_100010440, &qword_100008DB0);
    (*(v39 + 56))(v38, 1, 1, v106);
LABEL_7:
    v59 = &qword_100010498;
    v60 = &qword_100008E20;
    v61 = v38;
    goto LABEL_8;
  }

  v87[1] = v6;
  sub_100007E54();
  v57 = *(v55 + 8);
  v57(v34, v54);
  v58 = v106;
  if ((*(v39 + 48))(v38, 1, v106) == 1)
  {
    goto LABEL_7;
  }

  (*(v39 + 32))(v44, v38, v58);
  v72 = v97;
  sub_1000078EC(v53, v97, &qword_100010440, &qword_100008DB0);
  if (v56(v72, 1, v54) == 1)
  {
    (*(v39 + 8))(v44, v58);
    sub_100007954(v72, &qword_100010440, &qword_100008DB0);
    v73 = v98;
    (*(v99 + 56))(v98, 1, 1, v100);
  }

  else
  {
    v74 = v44;
    v73 = v98;
    sub_100007E64();
    v57(v72, v54);
    v76 = v99;
    v75 = v100;
    if ((*(v99 + 48))(v73, 1, v100) != 1)
    {
      v77 = v96;
      (*(v76 + 32))(v96, v73, v75);
      v78 = v39;
      v79 = *(v39 + 16);
      v87[0] = v74;
      v79(v95, v74, v106);
      v80 = v89;
      sub_100007EF4();
      v81 = sub_100007F14();
      (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
      v82 = v91;
      sub_100007EC4();
      v83 = sub_100007EE4();
      (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
      (*(v76 + 16))(v88, v77, v75);
      sub_100007FF4();
      sub_100008034();
      sub_100007E84();
      sub_100007F34();
      sub_1000054BC(&qword_1000105C8, &type metadata accessor for Date.FormatStyle);
      sub_1000054BC(&qword_1000105D0, &type metadata accessor for Date);
      v62 = sub_100008364();
      v63 = v84;
      LOBYTE(v80) = v85;
      v65 = v86;
      (*(v76 + 8))(v96, v75);
      (*(v78 + 8))(v87[0], v106);
      v64 = v80 & 1;
      sub_1000075C0(v62, v63, v64);

      goto LABEL_9;
    }

    (*(v39 + 8))(v74, v106);
  }

  v59 = &qword_100010490;
  v60 = &qword_100008E18;
  v61 = v73;
LABEL_8:
  sub_100007954(v61, v59, v60);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
LABEL_9:
  v66 = v102 & 1;
  v68 = v103;
  v67 = v104;
  sub_1000075C0(v104, v103, v102 & 1);
  v69 = v105;

  sub_100007A08(v62, v63, v64, v65);
  sub_100007A4C(v62, v63, v64, v65);
  LOBYTE(v107) = v66;
  v70 = v101;
  *v101 = v67;
  v70[1] = v68;
  *(v70 + 16) = v66;
  v70[3] = v69;
  v70[4] = v62;
  v70[5] = v63;
  v70[6] = v64;
  v70[7] = v65;
  sub_100007A4C(v62, v63, v64, v65);
  sub_1000075B0(v67, v68, v66);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for CalendarThumbnailExtension(0);
  sub_1000054BC(&qword_1000103A8, type metadata accessor for CalendarThumbnailExtension);
  sub_100008054();
  return 0;
}

uint64_t sub_100005298(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000080F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100005318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000080F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100005388()
{
  result = sub_1000080F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000054BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005504(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000556C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000055A4()
{
  result = qword_100010448;
  if (!qword_100010448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010448);
  }

  return result;
}

uint64_t sub_1000055F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_100008244();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000562C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100008254();
}

uint64_t sub_10000565C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008204();
  *a1 = result;
  return result;
}

uint64_t sub_100005688(uint64_t *a1)
{
  v1 = *a1;

  return sub_100008214();
}

uint64_t sub_1000056B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000081E4();
  *a1 = result;
  return result;
}

uint64_t sub_100005708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000081C4();
  *a1 = result;
  return result;
}

uint64_t sub_100005734(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000081D4();
}

uint64_t sub_100005760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  LODWORD(v169) = a5;
  v180 = a4;
  v181 = a2;
  v173 = a3;
  v179 = a6;
  v155 = sub_100005504(&qword_100010470, &qword_100008DF8);
  v7 = *(*(v155 - 8) + 64);
  v8 = (__chkstk_darwin)();
  v154 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v150 = v132 - v10;
  v149 = sub_100005504(&qword_100010478, &qword_100008E00);
  v11 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v149);
  v152 = v132 - v12;
  v153 = sub_100007FD4();
  v151 = *(v153 - 8);
  v13 = *(v151 + 64);
  __chkstk_darwin(v153);
  v156 = v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005504(&qword_100010440, &qword_100008DB0);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - 8);
  v160 = v132 - v17;
  v167 = sub_100007F54();
  v166 = *(v167 - 1);
  v18 = *(v166 + 64);
  __chkstk_darwin(v167);
  v165 = v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_100007F74();
  v163 = *(v164 - 8);
  v20 = *(v163 + 64);
  __chkstk_darwin(v164);
  v162 = v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100007E94();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v172 = v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100008044();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v177 = v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100008004();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v176 = v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100005504(&qword_100010480, &qword_100008E08);
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31 - 8);
  v175 = v132 - v33;
  v34 = sub_100005504(&qword_100010488, &qword_100008E10);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34 - 8);
  v37 = v132 - v36;
  v171 = sub_100007FA4();
  v170 = *(v171 - 8);
  v38 = *(v170 + 64);
  v39 = __chkstk_darwin(v171);
  v161 = v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v168 = v132 - v41;
  v42 = sub_100005504(&qword_100010490, &qword_100008E18);
  v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42 - 8);
  v45 = v132 - v44;
  v46 = sub_100008024();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = __chkstk_darwin(v46);
  v174 = v132 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v178 = v132 - v51;
  v52 = sub_100005504(&qword_100010498, &qword_100008E20);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v159 = v132 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v57 = v132 - v56;
  v58 = sub_100007FE4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  v61 = __chkstk_darwin(v58);
  v157 = v132 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v64 = v132 - v63;
  sub_100007E54();
  v158 = *(v59 + 48);
  if (v158(v57, 1, v58) == 1)
  {
    sub_100007954(v57, &qword_100010498, &qword_100008E20);
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0xE000000000000000;
    v69 = 0xE000000000000000;
    v70 = 0xE000000000000000;
    v71 = a1;
    v72 = v180;
    if (!v180)
    {
      goto LABEL_16;
    }

LABEL_9:
    v186 = v173;
    v187 = v72;
    v169 = v66;
    v184 = 13;
    v185 = 0xE100000000000000;
    v182 = 32;
    v183 = 0xE100000000000000;
    sub_100006D08();
    sub_100006D5C();
    v177 = v70;
    v178 = v67;
    sub_1000084D4();

    v186 = v188;
    v187 = v189;
    v184 = 10;
    v185 = 0xE100000000000000;
    v182 = 32;
    v183 = 0xE100000000000000;
    v66 = v169;
    v70 = v177;
    v67 = v178;
    sub_1000084D4();

    v94 = v190;
    v95 = v191;
LABEL_17:
    sub_100007954(v181, &qword_100010440, &qword_100008DB0);
    v111 = sub_100007E74();
    result = (*(*(v111 - 8) + 8))(v71, v111);
    v113 = v179;
    *v179 = v65;
    v113[1] = v68;
    v113[2] = v66;
    v113[3] = v69;
    v113[4] = v94;
    v113[5] = v95;
    v113[6] = v67;
    v113[7] = v70;
    return result;
  }

  v73 = *(v59 + 32);
  v136 = v59 + 32;
  v135 = v73;
  v73(v64, v57, v58);
  sub_100007E64();
  v71 = a1;
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    (*(v59 + 8))(v64, v58);
    sub_100007954(v45, &qword_100010490, &qword_100008E18);
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0xE000000000000000;
    v69 = 0xE000000000000000;
    v70 = 0xE000000000000000;
    v72 = v180;
    if (!v180)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v132[1] = v59 + 48;
  v134 = v59;
  v137 = v58;
  v133 = a1;
  v138 = v47;
  v74 = *(v47 + 32);
  v75 = v178;
  v76 = v46;
  v148 = v46;
  v74(v178, v45, v46);
  v141 = sub_100007F14();
  v77 = *(v141 - 8);
  v140 = *(v77 + 56);
  v139 = v77 + 56;
  v140(v37, 1, 1, v141);
  v145 = sub_100007EE4();
  v78 = *(v145 - 8);
  v143 = *(v78 + 56);
  v142 = v78 + 56;
  v79 = v37;
  v143(v175, 1, 1, v145);
  v80 = v47 + 16;
  v144 = *(v47 + 16);
  v144(v174, v75, v76);
  sub_100007FF4();
  sub_100008034();
  sub_100007E84();
  v81 = v161;
  v146 = v37;
  sub_100007F34();
  v82 = v162;
  sub_100007F64();
  v83 = v168;
  sub_100007F94();
  (*(v163 + 8))(v82, v164);
  v85 = v170 + 8;
  v84 = *(v170 + 8);
  v86 = v171;
  v84(v81, v171);
  v65 = sub_100007F84();
  v164 = v87;
  v84(v83, v86);
  v140(v79, 1, 1, v141);
  v143(v175, 1, 1, v145);
  v163 = v80;
  v144(v174, v178, v148);
  v147 = v64;
  sub_100007FF4();
  sub_100008034();
  sub_100007E84();
  v88 = v147;
  sub_100007F34();
  v89 = v165;
  sub_100007F44();
  sub_100007F24();
  (*(v166 + 8))(v89, v167);
  v90 = v81;
  v91 = v171;
  v84(v90, v171);
  v92 = sub_100007F84();
  v69 = v93;
  v170 = v85;
  v167 = v84;
  v84(v83, v91);
  if (v169)
  {
    (*(v138 + 8))(v178, v148);
    (*(v134 + 8))(v88, v137);
    v66 = v92;
    v67 = 0;
    v70 = 0xE000000000000000;
    v71 = v133;
    v68 = v164;
    v72 = v180;
    if (v180)
    {
      goto LABEL_9;
    }

LABEL_16:
    v94 = 0;
    v95 = 0xE000000000000000;
    goto LABEL_17;
  }

  v165 = v69;
  v169 = v92;
  v166 = v65;
  v96 = v148;
  v97 = v160;
  sub_1000078EC(v181, v160, &qword_100010440, &qword_100008DB0);
  v98 = sub_100007E74();
  v99 = *(v98 - 8);
  if ((*(v99 + 48))(v97, 1, v98) == 1)
  {
    sub_100007954(v97, &qword_100010440, &qword_100008DB0);
    v100 = v134;
    v101 = v159;
    (*(v134 + 56))(v159, 1, 1, v137);
    v102 = v146;
LABEL_13:
    sub_100007954(v101, &qword_100010498, &qword_100008E20);
    v105 = v96;
    v106 = v178;
LABEL_14:
    sub_100007F04();
    v140(v102, 0, 1, v141);
    v107 = v175;
    sub_100007ED4();
    v143(v107, 0, 1, v145);
    v144(v174, v106, v105);
    sub_100007FF4();
    sub_100008034();
    sub_100007E84();
    v108 = v168;
    sub_100007F34();
    v109 = v147;
    v67 = sub_100007F84();
    v70 = v110;
    v167(v108, v171);
    (*(v138 + 8))(v106, v105);
    (*(v100 + 8))(v109, v137);
    goto LABEL_15;
  }

  v101 = v159;
  sub_100007E54();
  (*(v99 + 8))(v97, v98);
  v103 = v137;
  v104 = v158(v101, 1, v137);
  v100 = v134;
  v102 = v146;
  if (v104 == 1)
  {
    goto LABEL_13;
  }

  v114 = v157;
  v135(v157, v101, v103);
  v115 = v147;
  v106 = v178;
  v105 = v96;
  if ((sub_100008014() & 1) == 0)
  {
    (*(v100 + 8))(v114, v103);
    goto LABEL_14;
  }

  sub_100007F04();
  v140(v102, 0, 1, v141);
  v116 = v175;
  sub_100007ED4();
  v143(v116, 0, 1, v145);
  v117 = v103;
  v144(v174, v106, v105);
  sub_100007FF4();
  sub_100008034();
  sub_100007FB4();
  sub_1000054BC(&qword_1000104B0, &type metadata accessor for Date);
  result = sub_100008474();
  if (result)
  {
    v118 = v114;
    v119 = v103;
    v120 = *(v100 + 16);
    v121 = v150;
    v120(v150, v115, v117);
    v122 = v155;
    v120((v121 + *(v155 + 48)), v118, v119);
    v123 = v154;
    sub_1000078EC(v121, v154, &qword_100010470, &qword_100008DF8);
    v124 = *(v122 + 48);
    v125 = v152;
    v126 = v135;
    v135(v152, v123, v119);
    v127 = *(v100 + 8);
    v127(v123 + v124, v119);
    sub_100006DB0(v121, v123, &qword_100010470, &qword_100008DF8);
    v126(v125 + *(v149 + 36), v123 + *(v122 + 48), v119);
    v127(v123, v119);
    v128 = v156;
    v67 = sub_100007FC4();
    v130 = v129;
    sub_100007954(v125, &qword_100010478, &qword_100008E00);
    (*(v151 + 8))(v128, v153);
    v127(v157, v119);
    (*(v138 + 8))(v178, v148);
    v131 = v119;
    v70 = v130;
    v127(v147, v131);
LABEL_15:
    v71 = v133;
    v65 = v166;
    v68 = v164;
    v66 = v169;
    v69 = v165;
    v72 = v180;
    if (v180)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_100006C10()
{
  result = qword_100010450;
  if (!qword_100010450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010450);
  }

  return result;
}

void sub_100006CA4(void (*a1)(void))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  a1();
}

unint64_t sub_100006D08()
{
  result = qword_1000104A0;
  if (!qword_1000104A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104A0);
  }

  return result;
}

unint64_t sub_100006D5C()
{
  result = qword_1000104A8;
  if (!qword_1000104A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104A8);
  }

  return result;
}

uint64_t sub_100006DB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005504(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

__n128 sub_100006E18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100006E74(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CalendarThumbnailExtension.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalendarThumbnailExtension.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005504(&qword_100010440, &qword_100008DB0);
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

uint64_t sub_10000714C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005504(&qword_100010440, &qword_100008DB0);
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

void sub_100007214()
{
  sub_1000072A0();
  if (v0 <= 0x3F)
  {
    sub_1000072F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000072A0()
{
  if (!qword_100010510)
  {
    sub_100007E74();
    v0 = sub_1000084E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100010510);
    }
  }
}

void sub_1000072F8()
{
  if (!qword_100010518)
  {
    v0 = sub_1000084E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100010518);
    }
  }
}

unint64_t sub_100007350()
{
  result = qword_100010550;
  if (!qword_100010550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010550);
  }

  return result;
}

unint64_t sub_1000073DC()
{
  result = qword_100010558;
  if (!qword_100010558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010558);
  }

  return result;
}

uint64_t sub_100007430()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

void *sub_100007480@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100008294();
  v4 = sub_100008264();
  sub_100002FD4((v1 + 16), __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_1000078EC(__dst, &v8, &qword_100010560, &qword_100009008);
  sub_100007954(v10, &qword_100010560, &qword_100009008);
  memcpy(__src, __dst, sizeof(__src));
  sub_100008164();
  v6 = v5 * 0.0009765625;
  *a1 = v3;
  *(a1 + 8) = v4;
  result = memcpy((a1 + 16), __src, 0x178uLL);
  *(a1 + 392) = v6;
  return result;
}

uint64_t sub_1000075B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000075C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000075D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodoView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007634()
{
  v1 = type metadata accessor for TodoView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_100007E74();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = *(v0 + v3 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100007764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodoView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000077C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodoView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_100008164();
  v6 = v5 / 400.0;
  *a1 = sub_1000082A4();
  *(a1 + 8) = v6 * 20.0;
  *(a1 + 16) = 0;
  v7 = sub_100005504(&qword_100010580, &qword_1000090B8);
  sub_100003B4C(v1 + v4, a1 + *(v7 + 44));
  v8 = sub_1000082C4();
  sub_100008134();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_100005504(&qword_100010588, &qword_1000090C0);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1000078EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005504(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007954(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005504(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000079B4()
{
  result = qword_1000105C0;
  if (!qword_1000105C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000105C0);
  }

  return result;
}

uint64_t sub_100007A08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000075C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100007A4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000075B0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100007A94()
{
  result = qword_1000105E0;
  if (!qword_1000105E0)
  {
    sub_100007B4C(&qword_1000105E8, &qword_100009130);
    sub_100007DC0(&qword_1000105F0, &qword_1000105F8, &qword_100009138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000105E0);
  }

  return result;
}

uint64_t sub_100007B4C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100007B98()
{
  result = qword_100010600;
  if (!qword_100010600)
  {
    sub_100007B4C(&qword_100010608, &qword_100009140);
    sub_100007C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010600);
  }

  return result;
}

unint64_t sub_100007C24()
{
  result = qword_100010610;
  if (!qword_100010610)
  {
    sub_100007B4C(&qword_100010618, &qword_100009148);
    sub_100007CDC();
    sub_100007DC0(&qword_100010650, &qword_100010658, &qword_100009168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010610);
  }

  return result;
}

unint64_t sub_100007CDC()
{
  result = qword_100010620;
  if (!qword_100010620)
  {
    sub_100007B4C(&qword_100010628, &qword_100009150);
    sub_100007DC0(&qword_100010630, &qword_100010638, &qword_100009158);
    sub_100007DC0(&qword_100010640, &qword_100010648, &qword_100009160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010620);
  }

  return result;
}

uint64_t sub_100007DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007B4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}