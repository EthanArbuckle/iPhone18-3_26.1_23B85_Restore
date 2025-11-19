uint64_t sub_100067340(uint64_t a1, char a2, char *a3, void (*a4)(void), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v85 = a8;
  v68 = a6;
  v86 = a5;
  v67 = a1;
  v11 = sub_100002A10(&qword_100132600, &qword_1000F3DA0);
  v84 = *(v11 - 8);
  v12 = *(v84 + 64);
  __chkstk_darwin(v11);
  v81 = v64 - v13;
  v14 = sub_100002A10(&qword_100132608, &qword_1000F3DA8);
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = *(v82 + 64);
  __chkstk_darwin(v14);
  v78 = v64 - v16;
  v17 = sub_100002A10(&qword_100132610, &qword_1000F3DB0);
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = *(v79 + 64);
  __chkstk_darwin(v17);
  v77 = v64 - v19;
  v20 = sub_100002A10(&qword_100132618, &qword_1000F3DB8);
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  __chkstk_darwin(v20);
  v89 = v64 - v22;
  v23 = sub_100002A10(&qword_100132638, &unk_1000F54C0);
  v73 = *(v23 - 8);
  v74 = v23;
  v24 = *(v73 + 64);
  __chkstk_darwin(v23);
  v88 = v64 - v25;
  v26 = sub_100002A10(&qword_100132620, &unk_1000F3DC0);
  v71 = *(v26 - 8);
  v72 = v26;
  v27 = *(v71 + 64);
  __chkstk_darwin(v26);
  v87 = v64 - v28;
  v29 = sub_100002A10(&qword_100132628, &unk_1000F54D0);
  v69 = *(v29 - 8);
  v70 = v29;
  v30 = *(v69 + 64);
  __chkstk_darwin(v29);
  v32 = v64 - v31;
  v33 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = v64 - v35;
  v37 = type metadata accessor for WeatherDataOperationResult(0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = (v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v66 = a4;
    v41 = v86;
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v67 = v11;
    v42 = sub_1000E9F64();
    sub_100008CB8(v42, qword_100145C10);
    v43 = v68;
    v44 = sub_1000E9F44();
    v45 = sub_1000EC194();

    v46 = a3;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2113;
      *(v47 + 14) = v43;
      *v48 = v43;
      v49 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to interpolate, falling back to aggregate fetch from WDS; location=%{private,mask.hash}@", v47, 0x16u);
      sub_100008E48(v48, &qword_1001325D0, &unk_1000F3D80);
    }

    v68 = *&a3[qword_1001323F8];
    v65 = v32;
    sub_1000E8FE4();
    sub_1000E8FF4();
    sub_1000E8FC4();
    sub_1000E8FA4();
    v64[1] = v43;
    v50 = v77;
    sub_1000E8F94();
    v51 = v78;
    sub_1000E8FD4();
    v52 = v81;
    sub_1000E8FB4();
    v53 = swift_allocObject();
    v54 = v66;
    v53[2] = v46;
    v53[3] = v54;
    v53[4] = v41;
    sub_1000E88D4();
    v55 = v46;

    sub_100002A10(&qword_10012F108, &qword_1000EEF10);
    sub_100002A10(&qword_100132670, &unk_1000F54E0);
    sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
    sub_100002A10(&qword_10012F260, &unk_1000EF030);
    sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
    sub_100002A10(&qword_100132678, &qword_1000F54F0);
    v56 = v65;
    v57 = v87;
    v58 = v88;
    v59 = v89;
    sub_1000E8B94();

    (*(v84 + 8))(v52, v67);
    (*(v82 + 8))(v51, v83);
    (*(v79 + 8))(v50, v80);
    (*(v75 + 8))(v59, v76);
    (*(v73 + 8))(v58, v74);
    (*(v71 + 8))(v57, v72);
    return (*(v69 + 8))(v56, v70);
  }

  else
  {
    *v40 = v67;
    type metadata accessor for WeatherDataOperationResult.Data(0);
    swift_storeEnumTagMultiPayload();
    v61 = qword_1001323F0;
    v62 = *(v37 + 20);
    v63 = sub_1000E9A84();
    (*(*(v63 - 8) + 16))(v40 + v62, &a3[v61], v63);
    sub_10006B8A8(v40, v36);
    swift_storeEnumTagMultiPayload();

    a4(v36);
    sub_100008E48(v36, &qword_1001325D8, &unk_1000FABC0);
    return sub_10006B90C(v40);
  }
}

void sub_100067C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v21;
  a20 = v22;
  v178 = v23;
  v179 = v24;
  v176 = v26;
  v177 = v25;
  v181 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  sub_1000069E4(v181);
  v28 = *(v27 + 64);
  sub_100009204();
  __chkstk_darwin(v29);
  sub_10000D58C();
  v182 = v30;
  v31 = sub_10000921C();
  v172 = type metadata accessor for WeatherDataOperationResult(v31);
  v32 = sub_1000069E4(v172);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_10004B3F0();
  v175 = v35;
  sub_10000921C();
  v36 = sub_1000E8CD4();
  v37 = sub_1000090D4(v36);
  v173 = v38;
  v174 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_10004B3F0();
  v180 = v41;
  v42 = sub_100002A10(&qword_1001325F0, &qword_1000F3D90);
  v43 = sub_1000069E4(v42);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v48 = &v148 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v46);
  v51 = &v148 - v50;
  __chkstk_darwin(v49);
  sub_10000D4D0();
  v171 = v52;
  sub_10004B6F4();
  __chkstk_darwin(v53);
  sub_10000D4D0();
  v55 = v54;
  sub_10004B6F4();
  __chkstk_darwin(v56);
  sub_10000D4D0();
  v183 = v57;
  sub_10004B6F4();
  __chkstk_darwin(v58);
  sub_10000D4D0();
  v184 = v59;
  sub_10004B6F4();
  __chkstk_darwin(v60);
  sub_10000D4D0();
  v62 = v61;
  sub_10004B6F4();
  __chkstk_darwin(v63);
  sub_10000D56C();
  v65 = v64;
  v66 = sub_100002A10(&qword_1001325F8, &qword_1000F3D98);
  sub_1000069E4(v66);
  v68 = *(v67 + 64);
  sub_100009204();
  __chkstk_darwin(v69);
  sub_10006BC48();
  sub_1000068F4(v177, v20, &qword_1001325F8, &qword_1000F3D98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100008E48(v20, &qword_1001325F8, &qword_1000F3D98);
    sub_10006B550();
    v70 = swift_allocError();
    *v71 = 0;
    v72 = v182;
    *v182 = v70;
    swift_storeEnumTagMultiPayload();
    v178(v72);
    v73 = &qword_1001325D8;
    v74 = &unk_1000FABC0;
    v75 = v72;
  }

  else
  {
    v76 = v65;
    sub_1000068A4(v20, v65, &qword_1001325F0, &qword_1000F3D90);
    v170 = v62;
    sub_10006BCA0(v65, v62);
    v77 = v42[12];
    v166 = v42[16];
    v167 = v77;
    v78 = v42[20];
    v164 = v42[24];
    v165 = v78;
    sub_10006BBFC(v42[28]);
    sub_10006BCA0(v65, v184);
    v177 = v42[12];
    sub_10006BCF0(v42[16]);
    v162 = v79;
    v161 = v42[24];
    sub_10006BBFC(v42[28]);
    sub_10006BCA0(v65, v183);
    sub_10006BC64(v42[12]);
    v169 = v80;
    v160 = v42[20];
    v159 = v42[24];
    sub_10006BBFC(v42[28]);
    sub_10006BCA0(v65, v55);
    sub_10006BC64(v42[12]);
    sub_10006BCF0(v81);
    v168 = v82;
    v158 = v42[24];
    v157 = v42[28];
    v83 = *(v55 + v42[32]);
    v155 = v55;

    v84 = v171;
    sub_10006BCA0(v65, v171);
    sub_10006BC64(v42[12]);
    sub_10006BCF0(v85);
    v156 = v86;
    v87 = v42[24];
    sub_10006BBFC(v42[28]);
    v163 = v76;
    sub_1000068F4(v76, v51, &qword_1001325F0, &qword_1000F3D90);
    sub_10006BC64(v42[12]);
    sub_10006BCF0(v88);
    v154 = v89;
    v153 = v42[24];
    v90 = v42[28];
    v91 = *&v51[v42[32]];

    sub_1000068F4(v76, v48, &qword_1001325F0, &qword_1000F3D90);
    sub_10006BC64(v42[12]);
    v151 = v92;
    v93 = v42[20];
    v94 = v42[24];
    v95 = v42[28];
    v96 = *&v48[v42[32]];
    sub_1000E8C54();
    sub_100008E48(&v48[v95], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(&v48[v94], &qword_10012F260, &unk_1000EF030);
    v97 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
    sub_1000069E4(v97);
    v99 = *(v98 + 8);
    v177 = v98 + 8;
    v99(&v48[v93], v97);
    v100 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
    sub_1000069E4(v100);
    v169 = *(v101 + 8);
    v102 = v101 + 8;
    v168 = v100;
    v169(&v48[v151], v100);
    sub_100008E48(v152 + v48, &qword_10012F108, &qword_1000EEF10);
    v103 = sub_1000E88D4();
    sub_1000069E4(v103);
    v105 = *(v104 + 8);
    v105(v48, v103);
    v152 = v105;
    v106 = sub_10006BD1C(&v173);
    sub_100008E48(v106, &qword_10012F260, &unk_1000EF030);
    v107 = sub_10006BD1C(&v174);
    v148 = v97;
    v99(v107, v97);
    v149 = v99;
    v108 = sub_10006BD1C(&v175);
    v109 = v100;
    v110 = v169;
    v169(v108, v109);
    v111 = sub_10006BD1C(&v176);
    sub_100008E48(v111, &qword_10012F108, &qword_1000EEF10);
    v105(v51, v103);
    v112 = sub_10006BD28(&v178);
    sub_100008E48(v112, &qword_10012F0F8, &qword_1000EEF00);
    v113 = sub_10006BD28(&v179);
    v99(v113, v97);
    v114 = sub_10006BD28(&v180);
    v115 = v168;
    v150 = v102;
    v110(v114, v168);
    v116 = v110;
    v117 = sub_10006BD28(&v181);
    sub_100008E48(v117, &qword_10012F108, &qword_1000EEF10);
    v118 = v152;
    v152(v84, v103);
    v119 = v155;
    sub_100008E48(v155 + v157, &qword_10012F0F8, &qword_1000EEF00);
    v120 = sub_10006BB50(&v183);
    sub_100008E48(v120, &qword_10012F260, &unk_1000EF030);
    v121 = sub_10006BB50(&v184);
    v116(v121, v115);
    v122 = sub_10006BB50(&v185);
    sub_100008E48(v122, &qword_10012F108, &qword_1000EEF10);
    v118(v119, v103);
    v123 = v183;
    v124 = sub_10006BB50(&a9);
    sub_100008E48(v124, &qword_10012F0F8, &qword_1000EEF00);
    v125 = sub_10006BB50(&a10);
    sub_100008E48(v125, &qword_10012F260, &unk_1000EF030);
    v126 = sub_10006BB50(&a11);
    v127 = v148;
    v128 = v149;
    v149(v126, v148);
    v129 = sub_10006BB50(&a12);
    sub_100008E48(v129, &qword_10012F108, &qword_1000EEF10);
    v118(v123, v103);
    v130 = v184;
    v131 = sub_10006BB50(&a13);
    sub_100008E48(v131, &qword_10012F0F8, &qword_1000EEF00);
    v132 = sub_10006BB50(&a14);
    sub_100008E48(v132, &qword_10012F260, &unk_1000EF030);
    v133 = sub_10006BB50(&a15);
    v128(v133, v127);
    v134 = sub_10006BB50(&a16);
    v135 = v168;
    v136 = v169;
    v169(v134, v168);
    v118(v130, v103);
    v137 = v170;
    v138 = sub_10006BB50(&a17);
    sub_100008E48(v138, &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v137 + v164, &qword_10012F260, &unk_1000EF030);
    v128(v137 + v165, v127);
    v136(v137 + v166, v135);
    sub_100008E48(v137 + v167, &qword_10012F108, &qword_1000EEF10);
    v140 = v173;
    v139 = v174;
    v141 = v175;
    v142 = v180;
    (*(v173 + 16))(v175, v180, v174);
    type metadata accessor for WeatherDataOperationResult.Data(0);
    swift_storeEnumTagMultiPayload();
    v143 = qword_1001323F0;
    v144 = *(v172 + 20);
    v145 = sub_1000E9A84();
    sub_1000069E4(v145);
    (*(v146 + 16))(v141 + v144, v176 + v143);
    v147 = v182;
    sub_10006B8A8(v141, v182);
    swift_storeEnumTagMultiPayload();
    v178(v147);
    sub_100008E48(v147, &qword_1001325D8, &unk_1000FABC0);
    sub_10006B90C(v141);
    (*(v140 + 8))(v142, v139);
    v75 = v163;
    v73 = &qword_1001325F0;
    v74 = &qword_1000F3D90;
  }

  sub_100008E48(v75, v73, v74);
  sub_100006A20();
}

uint64_t sub_100068728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v427 = a2;
  v6 = sub_1000E8CD4();
  v7 = sub_10006BB10(v6, &v444);
  v415 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10004B3F0();
  sub_10000D4C4(v11);
  v412 = sub_100002A10(&qword_1001325F0, &qword_1000F3D90);
  v12 = sub_1000069E4(v412);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v15);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v16);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v17);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v18);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v19);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v20);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v21);
  sub_10000D56C();
  sub_10000D4C4(v22);
  v483 = sub_100002A10(&qword_1001325F8, &qword_1000F3D98);
  v23 = sub_1000069E4(v483);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v26);
  sub_10000D56C();
  sub_10000D4C4(v27);
  v28 = sub_100002A10(&qword_100132600, &qword_1000F3DA0);
  sub_10006BB10(v28, &v500);
  v480 = v29;
  v31 = *(v30 + 64);
  sub_100009204();
  __chkstk_darwin(v32);
  sub_10000D58C();
  sub_10000D4C4(v33);
  v34 = sub_100002A10(&qword_100132608, &qword_1000F3DA8);
  sub_10006BB10(v34, &v498);
  v479 = v35;
  v37 = *(v36 + 64);
  sub_100009204();
  __chkstk_darwin(v38);
  sub_10000D58C();
  sub_10000D4C4(v39);
  v40 = sub_100002A10(&qword_100132610, &qword_1000F3DB0);
  sub_10006BB10(v40, &v496);
  v478 = v41;
  v43 = *(v42 + 64);
  sub_100009204();
  __chkstk_darwin(v44);
  sub_10000D58C();
  sub_10000D4C4(v45);
  v46 = sub_100002A10(&qword_100132618, &qword_1000F3DB8);
  sub_10006BB10(v46, &v494);
  v477 = v47;
  v49 = *(v48 + 64);
  sub_100009204();
  __chkstk_darwin(v50);
  sub_10000D58C();
  sub_10000D4C4(v51);
  v52 = sub_100002A10(&qword_100132620, &unk_1000F3DC0);
  sub_10006BB10(v52, v492);
  v476 = v53;
  v55 = *(v54 + 64);
  sub_100009204();
  __chkstk_darwin(v56);
  sub_10000D58C();
  v475 = v57;
  v58 = sub_100002A10(&qword_100132628, &unk_1000F54D0);
  sub_10006BB10(v58, &v491);
  v474 = v59;
  v61 = *(v60 + 64);
  sub_100009204();
  __chkstk_darwin(v62);
  sub_10000D58C();
  v473 = v63;
  v64 = sub_100002A10(&qword_100132630, &unk_1000F3DD0);
  v65 = sub_100009210(v64);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v68);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v69);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v70);
  sub_10000D56C();
  sub_10000D4C4(v71);
  v72 = sub_1000E8A94();
  v73 = sub_10006BB10(v72, &v490);
  v472 = v74;
  v76 = *(v75 + 64);
  __chkstk_darwin(v73);
  sub_10004B3F0();
  sub_10000D4C4(v77);
  v78 = sub_100002A10(&qword_100132638, &unk_1000F54C0);
  v79 = sub_10006BB10(v78, &v501);
  v434 = v80;
  v82 = *(v81 + 64);
  __chkstk_darwin(v79);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v83);
  sub_10000D56C();
  v490 = v84;
  sub_10000921C();
  v489 = sub_1000E8604();
  v85 = sub_1000090D4(v489);
  v456 = v86;
  v88 = *(v87 + 64);
  __chkstk_darwin(v85);
  sub_10000D45C();
  v488 = v89;
  sub_10004B6F4();
  __chkstk_darwin(v90);
  sub_10000D56C();
  v481 = v91;
  sub_10000921C();
  v92 = sub_1000E9004();
  v93 = sub_10006BB10(v92, &v457);
  v425 = v94;
  v96 = *(v95 + 64);
  __chkstk_darwin(v93);
  sub_10004B3F0();
  v485 = v97;
  v98 = sub_100002A10(&qword_100132640, &unk_1000F3DE0);
  sub_100009210(v98);
  v100 = *(v99 + 64);
  sub_100009204();
  __chkstk_darwin(v101);
  sub_10000D58C();
  sub_10000D4C4(v102);
  v103 = sub_1000E8A14();
  v104 = sub_10006BB10(v103, &v484);
  v453 = v105;
  v107 = *(v106 + 64);
  __chkstk_darwin(v104);
  sub_100006A10();
  v108 = sub_100002A10(&qword_100132648, &qword_1000F54A0);
  sub_100009210(v108);
  v110 = *(v109 + 64);
  sub_100009204();
  __chkstk_darwin(v111);
  v113 = &v410 - v112;
  v114 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  sub_100009210(v114);
  v116 = *(v115 + 64);
  sub_100009204();
  __chkstk_darwin(v117);
  sub_10006BC48();
  v118 = sub_1000E8A64();
  v119 = sub_10006BB10(v118, &v455);
  v423 = v120;
  v122 = *(v121 + 64);
  __chkstk_darwin(v119);
  sub_10004B3F0();
  v484 = v123;
  sub_10000921C();
  v487 = sub_1000E94B4();
  v124 = sub_1000090D4(v487);
  v126 = v125;
  v128 = *(v127 + 64);
  __chkstk_darwin(v124);
  sub_100006A10();
  v131 = v130 - v129;
  v132 = sub_1000E8A84();
  v133 = sub_10006BB10(v132, &v460);
  v429 = v134;
  v136 = *(v135 + 64);
  __chkstk_darwin(v133);
  sub_10004B3F0();
  sub_10000D4C4(v137);
  sub_1000E99B4();
  v139 = v138;
  v486 = a1;
  sub_1000E99B4();
  v141 = [objc_allocWithZone(CLLocation) initWithLatitude:v139 longitude:v140];
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v142 = sub_1000E9F64();
  v143 = sub_100008CB8(v142, qword_100145C10);
  v144 = v141;
  v482 = v143;
  v145 = sub_1000E9F44();
  v146 = sub_1000EC1B4();
  v471 = v144;

  if (os_log_type_enabled(v145, v146))
  {
    v147 = sub_1000327F4();
    v148 = sub_10006BC88();
    sub_10006BB28(7.2225e-34);
    sub_10006BBD4();
    *(v147 + 14) = v149;
    *v150 = v149;
    v151 = v149;
    _os_log_impl(&_mh_execute_header, v145, v146, "About to retrieve cached weather data; location=%{private,mask.hash}@", v147, 0x16u);
    sub_100008E48(v148, &qword_1001325D0, &unk_1000F3D80);
    sub_100009194();
    sub_10006BBAC();
  }

  v152 = (v4 + qword_100132400);
  v153 = *(v4 + qword_100132400 + 32);
  sub_100008DA8((v4 + qword_100132400), *(v4 + qword_100132400 + 24));
  sub_1000E9804();
  sub_1000E9484();
  v154 = *(v126 + 8);
  v452 = v126 + 8;
  v154(v131, v487);
  sub_1000E8A74();
  v155 = WCCountryCodeEstimate();
  v428 = v4;
  if (v155)
  {
    v156 = v155;
    v451 = sub_1000EBE84();
    v450 = v157;
  }

  else
  {
    v451 = 0;
    v450 = 0;
  }

  sub_1000E9A74();
  v158 = sub_1000E8784();
  sub_10000D554();
  sub_1000028A0(v159, v160, v161, v158);
  v162 = v430;
  (*(v429 + 16))(v113, v431, v430);
  sub_10000D554();
  sub_1000028A0(v163, v164, v165, v162);
  sub_100002A10(&qword_100132650, &qword_1000F3DF0);
  v166 = *(v453 + 72);
  v167 = (*(v453 + 80) + 32) & ~*(v453 + 80);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_1000EFAD0;
  sub_1000E8A04();
  v491 = v168;
  sub_10006BB5C();
  sub_10006B5CC(v169, v170);
  sub_100002A10(&qword_100132660, &qword_1000F3DF8);
  sub_10006B614();
  sub_1000EC3C4();
  v171 = v152[4];
  sub_100008DA8(v152, v152[3]);
  sub_1000E9804();
  sub_1000E9454();
  v154(v131, v487);
  v172 = sub_1000E8A44();
  sub_1000028A0(v455, 1, 1, v172);
  sub_1000E8A54();
  v173 = v428;
  v174 = *(v428 + qword_100132418);
  sub_1000E9A74();
  sub_10000D554();
  sub_1000028A0(v175, v176, v177, v158);
  sub_1000E9014();
  sub_100008E48(v3, &qword_1001304C8, &qword_1000F3D70);
  switch(*(v173 + qword_100132410))
  {
    case 1:
    case 2:
    case 4:
      sub_10006BBD4();

      goto LABEL_29;
    default:
      v411 = *(v173 + qword_100132410);
      v178 = v456[2];
      v450 = v456 + 2;
      v449 = v178;
      v178(v481, v173 + qword_100132420, v489);
      sub_10006BBD4();
      v180 = v179;
      v181 = sub_1000E9F44();
      v182 = sub_1000EC1B4();

      v183 = os_log_type_enabled(v181, v182);
      v471 = v180;
      if (v183)
      {
        v184 = sub_1000327F4();
        v185 = sub_10006BC88();
        *v184 = 141558275;
        *(v184 + 4) = 1752392040;
        *(v184 + 12) = 2113;
        *(v184 + 14) = v180;
        *v185 = v180;
        v186 = v180;
        _os_log_impl(&_mh_execute_header, v181, v182, "Attempting to retrieve cached weather data; location=%{private,mask.hash}@", v184, 0x16u);
        sub_100008E48(v185, &qword_1001325D0, &unk_1000F3D80);
        sub_10006BBAC();
        sub_100009194();
      }

      sub_10006BC7C(&v504);
      v188 = *(v187 + 104);
      v189 = v458;
      LODWORD(v448) = v190;
      v191 = v459;
      v447 = v187 + 104;
      v446 = v188;
      v188(v458);
      sub_1000E8AF4();
      v192 = *(v3 + 8);
      v472 = v3 + 8;
      v445 = v192;
      v192(v189, v191);
      v455 = *(v173 + qword_1001323F8);
      sub_1000E8FE4();
      sub_1000E8FF4();
      v193 = v462;
      sub_1000E8FA4();
      v194 = v464;
      sub_1000E8F94();
      v195 = v466;
      sub_1000E8FD4();
      v196 = v468;
      sub_1000E8FB4();
      v197 = sub_1000E88D4();
      v198 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
      v199 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
      v200 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
      v201 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
      v202 = sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
      v441 = sub_100002A10(&qword_100132678, &qword_1000F54F0);
      v442 = v202;
      v443 = v201;
      v453 = v200;
      v454 = v199;
      v444 = v198;
      v452 = v197;
      v203 = v433;
      v204 = v473;
      v205 = v475;
      sub_1000E8BB4();
      v206 = *(v480 + 8);
      v480 += 8;
      v440 = v206;
      v206(v196, v469);
      v207 = *(v479 + 8);
      v479 += 8;
      v439 = v207;
      v207(v195, v467);
      v208 = *(v478 + 8);
      v478 += 8;
      v438 = v208;
      v208(v194, v465);
      v209 = *(v477 + 8);
      v477 += 8;
      v437 = v209;
      v209(v193, v463);
      v210 = *(v476 + 8);
      v476 += 8;
      v436 = v210;
      v210(v205, v461);
      v211 = *(v474 + 8);
      v474 += 8;
      v435 = v211;
      v212 = (v211)(v204, v460);
      v213 = 0;
      v214 = (v456 + 1);
      v456 = v434 + 1;
      v434 += 4;
      v212.n128_u64[0] = 134218499;
      v432 = v212;
      v215 = v203;
      v451 = v214;
      v216 = v464;
      while (1)
      {
        sub_10006BD10(&v503);
        sub_1000068F4(v217, v218, &qword_100132630, &unk_1000F3DD0);
        v219 = sub_100005B30(v203, 1, v483);
        sub_100008E48(v203, &qword_100132630, &unk_1000F3DD0);
        v220 = v471;
        if (v219 != 1 || v213 == 19)
        {
          break;
        }

        v221 = v488;
        v222 = v481;
        sub_1000E8594();
        v223 = v489;
        v487 = *v214;
        (v487)(v222, v489);
        v449(v222, v221, v223);
        v224 = v213 + 1;
        v225 = v458;
        v226 = v459;
        v446(v458, v448, v459);
        v227 = v457;
        sub_1000E8AF4();
        v445(v225, v226);
        v228 = v490;
        v229 = v470;
        (*v456)(v490, v470);
        (*v434)(v228, v227, v229);
        v230 = v220;
        v231 = sub_1000E9F44();
        v232 = sub_1000EC1B4();

        if (os_log_type_enabled(v231, v232))
        {
          v233 = swift_slowAlloc();
          v234 = sub_10006BC88();
          *v233 = v432.n128_u32[0];
          *(v233 + 4) = v224;
          *(v233 + 12) = 2160;
          *(v233 + 14) = 1752392040;
          *(v233 + 22) = 2113;
          *(v233 + 24) = v230;
          *v234 = v220;
          v235 = v230;
          _os_log_impl(&_mh_execute_header, v231, v232, "Cache retrieval attempt #%ld; location=%{private,mask.hash}@", v233, 0x20u);
          sub_100008E48(v234, &qword_1001325D0, &unk_1000F3D80);
          sub_100009194();
          v215 = v433;
          sub_100009194();
        }

        v236 = v473;
        sub_1000E8FE4();
        v203 = v475;
        sub_1000E8FF4();
        v486 = v224;
        v237 = v215;
        v238 = v462;
        sub_1000E8FA4();
        sub_1000E8F94();
        v239 = v466;
        sub_1000E8FD4();
        v240 = v468;
        sub_1000E8FB4();
        sub_10006BC7C(&v488);
        sub_1000E8BB4();
        v440(v240, v469);
        v439(v239, v467);
        v438(v216, v465);
        v241 = v238;
        v215 = v237;
        v437(v241, v463);
        v436(v203, v461);
        v435(v236, v460);
        v214 = v451;
        (v487)(v488, v489);
        sub_100008E48(v237, &qword_100132630, &unk_1000F3DD0);
        sub_1000068A4(v220, v237, &qword_100132630, &unk_1000F3DD0);
        v213 = v486;
      }

      sub_10006BD10(&v452);
      sub_1000068F4(v242, v243, v244, v245);
      v246 = sub_100005B30(v203, 1, v483);
      v247 = v422;
      if (v246 == 1)
      {
        sub_100008E48(v203, &qword_100132630, &unk_1000F3DD0);
        v248 = v220;
        v249 = sub_1000E9F44();
        v250 = sub_1000EC194();

        if (os_log_type_enabled(v249, v250))
        {
          v251 = sub_1000327F4();
          v252 = sub_10006BC88();
          sub_10006BB28(7.2225e-34);
          *(v251 + 14) = v248;
          *v253 = v220;
          v254 = v248;
          _os_log_impl(&_mh_execute_header, v249, v250, "Aborting: NO cached weather data found; location=%{private,mask.hash}@,", v251, 0x16u);
          sub_100008E48(v252, &qword_1001325D0, &unk_1000F3D80);
          sub_100009194();
          sub_10006BBAC();
        }

        goto LABEL_28;
      }

      sub_1000068A4(v203, v422, &qword_1001325F8, &qword_1000F3D98);
      v256 = v220;
      v257 = sub_1000E9F44();
      v258 = sub_1000EC1B4();

      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        v260 = sub_10006BC88();
        *v259 = v432.n128_u32[0];
        *(v259 + 4) = v213;
        *(v259 + 12) = 2160;
        *(v259 + 14) = 1752392040;
        *(v259 + 22) = 2113;
        *(v259 + 24) = v256;
        *v260 = v220;
        v261 = v256;
        _os_log_impl(&_mh_execute_header, v257, v258, "Successfully retrieved for cached weather after %ld iteration; location=%{private,mask.hash}@", v259, 0x20u);
        sub_100008E48(v260, &qword_1001325D0, &unk_1000F3D80);
        sub_100009194();
        sub_10006BBAC();
      }

      sub_10006BD10(&v445);
      sub_1000068F4(v262, v263, v264, v265);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v266 = *v203;
        v267 = v256;
        swift_errorRetain();
        v268 = sub_1000E9F44();
        v269 = sub_1000EC194();

        if (os_log_type_enabled(v268, v269))
        {
          v270 = swift_slowAlloc();
          v271 = swift_slowAlloc();
          sub_10006BB28(7.2226e-34);
          *(v270 + 14) = v267;
          *v272 = v220;
          *(v270 + 22) = 2112;
          v273 = v267;
          swift_errorRetain();
          v274 = _swift_stdlib_bridgeErrorToNSError();
          *(v270 + 24) = v274;
          *(v271 + 8) = v274;
          _os_log_impl(&_mh_execute_header, v268, v269, "Aborting: unexpected error while fetching cached weather data; location=%{private,mask.hash}@, error=%@", v270, 0x20u);
          sub_100002A10(&qword_1001325D0, &unk_1000F3D80);
          swift_arrayDestroy();
          sub_100009194();
          sub_10006BBAC();
        }

        sub_100008E48(v247, &qword_1001325F8, &qword_1000F3D98);
LABEL_28:
        sub_100008E48(v433, &qword_100132630, &unk_1000F3DD0);
        v275 = sub_10006BBE0();
        v276(v275);
        (*v214)(v481, v489);
LABEL_29:
        sub_10006BB44(&v456);
        v277(v485, v426);
        sub_10006BB44(&v454);
        v278(v484, v424);
        sub_10006BB44(&v459);
        v280 = v431;
        v281 = &v460;
        goto LABEL_30;
      }

      sub_10006BD10(&v439);
      sub_10006BBC8();
      sub_1000068A4(v287, v288, v289, v290);
      v291 = v421;
      sub_10006BBC8();
      sub_1000068F4(v292, v293, v294, v295);
      v296 = v412;
      v297 = v412[12];
      v487 = v412[16];
      v488 = v297;
      v486 = v412[20];
      v298 = v412[24];
      v482 = v412[28];
      v483 = v298;
      v299 = *(v291 + v412[32]);

      v300 = v420;
      sub_10006BBC8();
      sub_1000068F4(v301, v302, v303, v304);
      v458 = v296[12];
      v305 = v296[16];
      v479 = v296[20];
      v480 = v305;
      v306 = v296[24];
      v477 = v296[28];
      v478 = v306;
      v307 = *(v300 + v296[32]);

      v308 = v419;
      sub_10006BBC8();
      sub_1000068F4(v309, v310, v311, v312);
      v476 = v296[12];
      v455 = v296[16];
      v313 = v296[20];
      v474 = v296[24];
      v475 = v313;
      v473 = v296[28];
      v314 = *(v308 + v296[32]);

      v315 = v417;
      sub_10006BBC8();
      sub_1000068F4(v316, v317, v318, v319);
      sub_10006BCE4(v296[12]);
      sub_10006BCD8(v320);
      sub_10006BCCC(v321);
      v471 = v322;
      v469 = v296[28];
      v323 = *(v315 + v296[32]);

      v324 = v416;
      sub_10006BBC8();
      sub_1000068F4(v325, v326, v327, v328);
      sub_10006BCE4(v296[12]);
      sub_10006BCD8(v329);
      sub_10006BCCC(v330);
      v448 = v331;
      v465 = v296[28];
      v332 = *(v324 + v296[32]);

      v333 = v414;
      sub_10006BBC8();
      sub_1000068F4(v334, v335, v336, v337);
      sub_10006BCE4(v296[12]);
      sub_10006BCD8(v338);
      sub_10006BCCC(v339);
      v461 = v340;
      v341 = v296[28];
      v342 = *(v333 + v296[32]);

      v343 = v256;
      v344 = v413;
      sub_1000068F4(v203, v413, &qword_1001325F0, &qword_1000F3D90);
      sub_10006BCE4(v296[12]);
      sub_10006BCD8(v345);
      sub_10006BCCC(v346);
      v457 = v347;
      v450 = v296[28];
      v348 = *(v344 + v296[32]);
      sub_1000E8C54();

      sub_100008E48(v203, &qword_1001325F0, &qword_1000F3D90);
      sub_100008E48(v247, &qword_1001325F8, &qword_1000F3D98);
      sub_100008E48(v433, &qword_100132630, &unk_1000F3DD0);
      v349 = sub_10006BBE0();
      v350(v349);
      (*v451)(v481, v489);
      sub_10006BB44(&v456);
      v351(v485, v426);
      sub_10006BB44(&v454);
      v352(v484, v424);
      sub_10006BB44(&v459);
      v353(v431, v430);
      v354 = sub_10006BC70(&v480);
      sub_100008E48(v354, v355, v356);
      v357 = sub_10006BC70(&v487);
      sub_100008E48(v357, v358, v359);
      v360 = v453;
      sub_1000326A0(v453);
      v362 = *(v361 + 8);
      v490 = v361 + 8;
      v363 = sub_10006BC70(&v488);
      v362(v363, v360);
      v364 = v362;
      v365 = v454;
      sub_1000326A0(v454);
      v367 = *(v366 + 8);
      v368 = v366 + 8;
      v369 = sub_10006BC70(&v490);
      v367(v369, v365);
      v489 = v368;
      v370 = sub_10006BC70(&v491);
      sub_100008E48(v370, v371, v372);
      sub_10006BC7C(&v482);
      sub_1000326A0(v373);
      v375 = *(v374 + 8);
      v376 = v374 + 8;
      v375(v344, v296);
      v481 = v375;
      v377 = sub_10006BB74(v492);
      sub_100008E48(v377, &qword_10012F260, &unk_1000EF030);
      v378 = sub_10006BB74(&v493);
      v364(v378, v360);
      v484 = v364;
      v379 = sub_10006BB74(&v494);
      v367(v379, v365);
      v380 = sub_10006BB74(&v495);
      sub_100008E48(v380, &qword_10012F108, &qword_1000EEF10);
      v381 = sub_10006BC58();
      (v375)(v381);
      sub_100008E48(v416 + v465, &qword_10012F0F8, &qword_1000EEF00);
      v382 = sub_10006BB74(&v497);
      v364(v382, v360);
      v383 = sub_10006BB74(&v498);
      v384 = v454;
      v485 = v367;
      v367(v383, v454);
      v385 = sub_10006BB74(&v499);
      sub_100008E48(v385, &qword_10012F108, &qword_1000EEF10);
      v386 = sub_10006BC58();
      v387 = v481;
      (v481)(v386);
      v388 = sub_10006BB74(&v500);
      sub_100008E48(v388, &qword_10012F0F8, &qword_1000EEF00);
      v389 = sub_10006BB74(&v502);
      sub_100008E48(v389, &qword_10012F260, &unk_1000EF030);
      v390 = sub_10006BB74(&v503);
      v367(v390, v384);
      v391 = sub_10006BB74(&v504);
      sub_100008E48(v391, &qword_10012F108, &qword_1000EEF10);
      v392 = sub_10006BC58();
      v387(v392);
      v393 = v419;
      sub_100008E48(v419 + v473, &qword_10012F0F8, &qword_1000EEF00);
      sub_100008E48(v393 + v474, &qword_10012F260, &unk_1000EF030);
      v394 = v453;
      v395 = v484;
      v484(v475 + v393, v453);
      sub_100008E48(v393 + v476, &qword_10012F108, &qword_1000EEF10);
      v396 = sub_10006BC58();
      v387(v396);
      v397 = v420;
      sub_100008E48(v420 + v477, &qword_10012F0F8, &qword_1000EEF00);
      sub_100008E48(v397 + v478, &qword_10012F260, &unk_1000EF030);
      v395(v397 + v479, v394);
      v398 = v454;
      v399 = v485;
      v485(v397 + v480, v454);
      v400 = sub_10006BC58();
      v387(v400);
      v401 = v421;
      sub_100008E48(v421 + v482, &qword_10012F0F8, &qword_1000EEF00);
      sub_100008E48(v401 + v483, &qword_10012F260, &unk_1000EF030);
      v395(v401 + v486, v394);
      v399(v401 + v487, v398);
      sub_100008E48(v401 + v488, &qword_10012F108, &qword_1000EEF10);
      v402 = v428;
      if (((1 << v411) & 0x16) != 0)
      {
        sub_10006BB44(&v443);
        v280 = v418;
        v281 = &v444;
LABEL_30:
        v279(v280, *(v281 - 32));
        v282 = type metadata accessor for WeatherDataOperationResult(0);
        v283 = v427;
        v284 = 1;
        v285 = 1;
        return sub_1000028A0(v283, v284, v285, v282);
      }

      v403 = sub_10006BB80();
      v404(v403);
      type metadata accessor for WeatherDataOperationResult.Data(0);
      swift_storeEnumTagMultiPayload();
      v405 = qword_1001323F0;
      v406 = type metadata accessor for WeatherDataOperationResult(0);
      v407 = *(v406 + 20);
      v408 = sub_1000E9A84();
      sub_1000069E4(v408);
      (*(v409 + 16))(v376 + v407, v402 + v405);
      sub_10000D554();
      v282 = v406;
      return sub_1000028A0(v283, v284, v285, v282);
  }
}

uint64_t sub_10006AB74()
{
  v1 = qword_1001323F0;
  v2 = sub_1000E9A84();
  sub_1000069E4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_1001323F8);

  sub_100009068((v0 + qword_100132400));
  sub_100009068((v0 + qword_100132408));
  v5 = *(v0 + qword_100132418);

  v6 = qword_100132420;
  v7 = sub_1000E8604();
  sub_1000069E4(v7);
  v9 = *(v8 + 8);

  return v9(v0 + v6);
}

id sub_10006AC4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherDataOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006AC84(uint64_t a1)
{
  v2 = qword_1001323F0;
  v3 = sub_1000E9A84();
  sub_1000069E4(v3);
  (*(v4 + 8))(a1 + v2);
  v5 = *(a1 + qword_1001323F8);

  sub_100009068((a1 + qword_100132400));
  sub_100009068((a1 + qword_100132408));
  v6 = *(a1 + qword_100132418);

  v7 = qword_100132420;
  v8 = sub_1000E8604();
  sub_1000069E4(v8);
  v10 = *(v9 + 8);

  return v10(a1 + v7);
}

uint64_t sub_10006AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherDataOperationResult.Data(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1000E9A84();
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_10006AE50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WeatherDataOperationResult.Data(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1000E9A84();
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t sub_10006AF14()
{
  result = type metadata accessor for WeatherDataOperationResult.Data(319);
  if (v1 <= 0x3F)
  {
    result = sub_1000E9A84();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006AF98()
{
  v0 = sub_1000E8CD4();
  if (v1 <= 0x3F)
  {
    sub_10006B020();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_10006B020()
{
  if (!qword_100132598)
  {
    sub_1000E89B4();
    v0 = sub_1000EC034();
    if (!v1)
    {
      atomic_store(v0, &qword_100132598);
    }
  }
}

uint64_t sub_10006B078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_1000326A0(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_10006B0D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006B12C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B164()
{
  sub_100006A58();
  v1 = sub_1000E8A84();
  sub_1000090D4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1000E9004();
  sub_1000090D4(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = *(v10 + 64);
  v13 = *(v0 + 16);

  v14 = *(v0 + 32);

  v15 = *(v0 + 40);

  v16 = sub_10006BC38();
  v17(v16);
  v18 = sub_10006BC28();
  v19(v18);
  sub_10006BC18();
  sub_100006A20();

  return _swift_deallocObject(v20, v21, v22);
}

uint64_t sub_10006B28C(uint64_t *a1)
{
  v3 = sub_1000E8A84();
  sub_100032590(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_1000E9004();
  sub_100009210(v8);
  v10 = *(v9 + 80);
  sub_10006BCB8();
  return sub_100065410(a1, v12, v13, v14, v15, v16, v1 + v5, v1 + v11);
}

uint64_t sub_10006B360()
{
  sub_100006A58();
  v1 = sub_1000E8A84();
  sub_1000090D4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1000E9004();
  sub_1000090D4(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = *(v10 + 64);
  v13 = *(v0 + 16);

  v14 = *(v0 + 32);

  v15 = *(v0 + 48);

  v16 = sub_10006BC38();
  v17(v16);
  v18 = sub_10006BC28();
  v19(v18);
  sub_10006BC18();
  sub_100006A20();

  return _swift_deallocObject(v20, v21, v22);
}

uint64_t sub_10006B488(uint64_t a1)
{
  v3 = sub_1000E8A84();
  sub_100032590(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_1000E9004();
  sub_100009210(v8);
  v10 = *(v9 + 80);
  sub_10006BCB8();

  return sub_100065A94(a1, v11, v12, v13, v14, v15, v1 + v5, v1 + v16);
}

unint64_t sub_10006B550()
{
  result = qword_1001325E0;
  if (!qword_1001325E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001325E0);
  }

  return result;
}

uint64_t sub_10006B5A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10006B5B8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10006B5CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10006B614()
{
  result = qword_100132668;
  if (!qword_100132668)
  {
    sub_100002ABC(&qword_100132660, &qword_1000F3DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132668);
  }

  return result;
}

uint64_t sub_10006B678()
{
  sub_100006A58();
  v1 = sub_1000E9004();
  sub_1000090D4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1000E8A64();
  sub_1000090D4(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = *(v10 + 64);

  v13 = *(v0 + 32);

  v14 = sub_10006BC38();
  v15(v14);
  v16 = sub_10006BC28();
  v17(v16);
  sub_10006BC18();
  sub_100006A20();

  return _swift_deallocObject(v18, v19, v20);
}

uint64_t sub_10006B798(uint64_t a1, char a2)
{
  v5 = sub_1000E9004();
  sub_100032590(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_1000E8A64();
  sub_100009210(v10);
  v12 = v2[2];
  v13 = v2[3];
  v14 = v2[4];
  v15 = v2[5];
  v16 = v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_100067340(a1, a2 & 1, v12, v13, v14, v15, v2 + v7, v16);
}

uint64_t sub_10006B8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataOperationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B90C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataOperationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B968()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataOperationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10006BA74);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006BAB0()
{
  result = qword_100132690;
  if (!qword_100132690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132690);
  }

  return result;
}

uint64_t sub_10006BB10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

void sub_10006BB28(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2113;
}

uint64_t sub_10006BB80()
{
  v1 = *(*(v0 - 768) + 32);
  result = *(v0 - 648);
  v3 = *(v0 - 728);
  v4 = *(v0 - 760);
  return result;
}

uint64_t sub_10006BBAC()
{
}

uint64_t sub_10006BBE0()
{
  v1 = **(v0 - 408);
  result = *(v0 - 120);
  v3 = *(v0 - 288);
  return result;
}

uint64_t sub_10006BBFC@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  v5 = *(v2 + *(v3 + 128));
}

uint64_t sub_10006BC88()
{

  return swift_slowAlloc();
}

uint64_t sub_10006BCA0(uint64_t a1, uint64_t a2)
{

  return sub_1000068F4(a1, a2, v2, v3);
}

void sub_10006BCB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t sub_10006BD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AdaptiveConditionsComplicationDataStatus();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100005B30(a1, a2, v6);
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

uint64_t sub_10006BE08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AdaptiveConditionsComplicationDataStatus();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000028A0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AdaptiveConditionsRectangularContentView()
{
  result = qword_1001326F0;
  if (!qword_1001326F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006BEFC()
{
  result = type metadata accessor for AdaptiveConditionsComplicationDataStatus();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConditionsEvaluationManager();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006BF9C()
{
  v1 = sub_1000EA4E4();
  v2 = sub_1000090D4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100006A10();
  v9 = v8 - v7;
  v10 = sub_100002A10(&qword_100132728, &qword_1000F3F80);
  sub_1000069E4(v10);
  v12 = *(v11 + 64);
  sub_100009204();
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  *v15 = sub_1000EA2E4();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_100002A10(&qword_100132730, &qword_1000F3F88);
  sub_10006C12C(v0, &v15[*(v16 + 44)]);
  sub_1000EA4C4();
  sub_100072F98();
  sub_100006988(v17, &qword_100132728, &qword_1000F3F80);
  sub_1000EA914();
  (*(v4 + 8))(v9, v1);
  return sub_100008E48(v15, &qword_100132728, &qword_1000F3F80);
}

uint64_t sub_10006C12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v277 = a2;
  v3 = sub_1000EA344();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v247 = &v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_100002A10(&qword_100132740, &qword_1000F3F90);
  v250 = *(v252 - 8);
  v6 = *(v250 + 8);
  __chkstk_darwin(v252);
  v249 = &v206 - v7;
  v276 = sub_100002A10(&qword_100132748, &qword_1000F3F98);
  v8 = *(*(v276 - 8) + 64);
  __chkstk_darwin(v276);
  v251 = &v206 - v9;
  v274 = sub_100002A10(&qword_100132750, &qword_1000F3FA0);
  v10 = *(*(v274 - 8) + 64);
  __chkstk_darwin(v274);
  v275 = &v206 - v11;
  v269 = sub_100002A10(&qword_100132758, &qword_1000F3FA8);
  v12 = *(*(v269 - 8) + 64);
  __chkstk_darwin(v269);
  v267 = &v206 - v13;
  v273 = sub_100002A10(&qword_100132760, &qword_1000F3FB0);
  v14 = *(*(v273 - 8) + 64);
  __chkstk_darwin(v273);
  v268 = &v206 - v15;
  v245 = sub_100002A10(&qword_100132768, &qword_1000F3FB8);
  v16 = *(*(v245 - 8) + 64);
  __chkstk_darwin(v245);
  v248 = &v206 - v17;
  v259 = sub_1000EBAF4();
  v233 = *(v259 - 8);
  v18 = *(v233 + 64);
  __chkstk_darwin(v259);
  v231 = &v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_100002A10(&qword_100132770, &qword_1000F3FC0);
  v20 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v237 = &v206 - v21;
  v255 = sub_100002A10(&qword_100132778, &qword_1000F3FC8);
  v22 = *(*(v255 - 8) + 64);
  __chkstk_darwin(v255);
  v244 = &v206 - v23;
  v230 = sub_100002A10(&qword_100132780, &qword_1000F3FD0);
  v24 = *(*(v230 - 8) + 64);
  __chkstk_darwin(v230);
  v234 = &v206 - v25;
  v232 = sub_100002A10(&qword_100132788, &qword_1000F3FD8);
  v26 = *(*(v232 - 8) + 64);
  __chkstk_darwin(v232);
  v213 = (&v206 - v27);
  v241 = sub_100002A10(&qword_100132790, &qword_1000F3FE0);
  v28 = *(*(v241 - 8) + 64);
  __chkstk_darwin(v241);
  v235 = &v206 - v29;
  v258 = sub_1000EA4E4();
  v257 = *(v258 - 8);
  v30 = *(v257 + 64);
  __chkstk_darwin(v258);
  v256 = &v206 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_100002A10(&qword_100132798, &qword_1000F3FE8);
  v32 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v223 = (&v206 - v33);
  v227 = sub_100002A10(&qword_1001327A0, &qword_1000F3FF0);
  v226 = *(v227 - 8);
  v34 = *(v226 + 64);
  __chkstk_darwin(v227);
  v225 = &v206 - v35;
  v242 = sub_100002A10(&qword_1001327A8, &qword_1000F3FF8);
  v36 = *(*(v242 - 8) + 64);
  v37 = __chkstk_darwin(v242);
  v228 = &v206 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v229 = &v206 - v39;
  v264 = sub_1000EB504();
  v260 = *(v264 - 8);
  v40 = *(v260 + 64);
  __chkstk_darwin(v264);
  v263 = &v206 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_100002A10(&qword_1001327B0, &qword_1000F4000);
  v42 = *(*(v265 - 8) + 64);
  __chkstk_darwin(v265);
  v254 = &v206 - v43;
  v239 = sub_100002A10(&qword_1001327B8, &qword_1000F4008);
  v44 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v236 = &v206 - v45;
  v253 = sub_100002A10(&qword_1001327C0, &qword_1000F4010);
  v46 = *(*(v253 - 8) + 64);
  __chkstk_darwin(v253);
  v240 = &v206 - v47;
  v270 = sub_1000EAD04();
  v262 = *(v270 - 8);
  v48 = *(v262 + 64);
  __chkstk_darwin(v270);
  v261 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_100002A10(&qword_1001327C8, &qword_1000F4018);
  v50 = *(*(v216 - 8) + 64);
  __chkstk_darwin(v216);
  v222 = &v206 - v51;
  v221 = sub_100002A10(&qword_1001327D0, &qword_1000F4020);
  v52 = *(*(v221 - 8) + 64);
  __chkstk_darwin(v221);
  v212 = (&v206 - v53);
  v54 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v215 = &v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v219 = &v206 - v59;
  v60 = __chkstk_darwin(v58);
  v214 = &v206 - v61;
  __chkstk_darwin(v60);
  v218 = &v206 - v62;
  v238 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v217 = *(v238 - 8);
  v63 = *(v217 + 64);
  v64 = __chkstk_darwin(v238);
  v211 = &v206 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v220 = &v206 - v67;
  v68 = __chkstk_darwin(v66);
  v210 = &v206 - v69;
  __chkstk_darwin(v68);
  v71 = &v206 - v70;
  v72 = sub_100002A10(&qword_1001327D8, &qword_1000F4028);
  v73 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v75 = &v206 - v74;
  v266 = sub_100002A10(&qword_1001327E0, &qword_1000F4030);
  v76 = *(*(v266 - 8) + 64);
  __chkstk_darwin(v266);
  v78 = &v206 - v77;
  v246 = type metadata accessor for ConditionState();
  v79 = *(*(v246 - 8) + 64);
  v80 = __chkstk_darwin(v246);
  v82 = (&v206 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v80);
  v84 = (&v206 - v83);
  v85 = type metadata accessor for AggregateWeatherViewModel(0);
  v86 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v88 = &v206 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for AdaptiveConditionsComplicationDataStatus();
  v90 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89 - 8);
  v92 = &v206 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100002A10(&qword_1001327E8, &qword_1000F4038);
  v94 = *(*(v93 - 8) + 64);
  v95 = __chkstk_darwin(v93 - 8);
  v272 = &v206 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95);
  v271 = &v206 - v97;
  sub_100072C58(a1, v92, type metadata accessor for AdaptiveConditionsComplicationDataStatus);
  v98 = sub_100005B30(v92, 2, v85);
  if (v98)
  {
    if (v98 == 1)
    {
      v99 = v261;
      sub_1000EACF4();
      v100 = v262;
      v101 = v270;
      (*(v262 + 16))(v267, v99, v270);
      swift_storeEnumTagMultiPayload();
      sub_100072694();
      sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
      v102 = v268;
      sub_1000EA4A4();
      sub_100072EB0(v102, v275, &qword_100132760, &qword_1000F3FB0);
      swift_storeEnumTagMultiPayload();
      sub_1000725D8();
      sub_100072B60();
      v103 = v271;
      sub_1000EA4A4();
      sub_100008E48(v102, &qword_100132760, &qword_1000F3FB0);
      (*(v100 + 8))(v99, v101);
    }

    else
    {
      sub_1000EA334();
      v285._countAndFlagsBits = 0;
      v285._object = 0xE000000000000000;
      sub_1000EA324(v285);
      sub_1000EAA24();
      sub_1000EA304();

      v286._countAndFlagsBits = 0xD000000000000017;
      v286._object = 0x80000001000FCC70;
      sub_1000EA324(v286);
      sub_1000EA364();
      v119 = sub_1000EA7F4();
      v121 = v120;
      v280 = v119;
      v281 = v120;
      v123 = v122 & 1;
      v282 = v122 & 1;
      v283 = v124;
      v284 = 256;
      v125 = v256;
      sub_1000EA4B4();
      v126 = sub_100002A10(&qword_1001327F0, &qword_1000F4040);
      v127 = sub_100072554();
      v128 = v249;
      sub_1000EA914();
      (*(v257 + 8))(v125, v258);
      sub_1000058EC(v119, v121, v123);

      sub_1000EA354();
      v129 = sub_1000EA7F4();
      v131 = v130;
      v133 = v132;
      v280 = v126;
      v281 = v127;
      swift_getOpaqueTypeConformance2();
      v134 = v251;
      v135 = v252;
      sub_1000EA8C4();
      sub_1000058EC(v129, v131, v133 & 1);

      (*(v250 + 1))(v128, v135);
      sub_100072EB0(v134, v275, &qword_100132748, &qword_1000F3F98);
      swift_storeEnumTagMultiPayload();
      sub_1000725D8();
      sub_100072B60();
      v103 = v271;
      sub_1000EA4A4();
      sub_100008E48(v134, &qword_100132748, &qword_1000F3F98);
    }

    v117 = v277;
    goto LABEL_26;
  }

  v250 = v71;
  v251 = v75;
  v252 = v72;
  v207 = v78;
  sub_10001D31C(v92, v88);
  v104 = *(a1 + *(type metadata accessor for AdaptiveConditionsRectangularContentView() + 20));
  sub_10009D49C(v88, v84);
  sub_100072C58(v84, v82, type metadata accessor for ConditionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v106 = v88;
  v107 = v264;
  v108 = v260;
  v109 = v263;
  v110 = v259;
  v111 = v248;
  v209 = v84;
  v208 = v106;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v158 = *(sub_100002A10(&qword_100132870, &qword_1000F4050) + 48);
      (*(v108 + 32))(v109, v82, v107);
      v159 = v233;
      v160 = v82 + v158;
      v161 = v231;
      (*(v233 + 32))(v231, v160, v110);
      *v111 = sub_1000EA3D4();
      *(v111 + 8) = 0;
      *(v111 + 16) = 0;
      v162 = sub_100002A10(&qword_100132878, &qword_1000F4058);
      sub_100071E80(v109, v161, v111 + *(v162 + 44));
      sub_100072EB0(v111, v237, &qword_100132768, &qword_1000F3FB8);
      swift_storeEnumTagMultiPayload();
      sub_100072A78();
      sub_100006988(&qword_100132858, &qword_100132768, &qword_1000F3FB8);
      v163 = v111;
      v164 = v244;
      sub_1000EA4A4();
      sub_100072EB0(v164, v254, &qword_100132778, &qword_1000F3FC8);
      swift_storeEnumTagMultiPayload();
      sub_100072720();
      sub_1000729C0();
      v152 = v207;
      sub_1000EA4A4();
      sub_100008E48(v164, &qword_100132778, &qword_1000F3FC8);
      sub_100008E48(v163, &qword_100132768, &qword_1000F3FB8);
      (*(v159 + 8))(v161, v259);
      (*(v108 + 8))(v263, v264);
      goto LABEL_13;
    case 2:
      (*(v260 + 32))(v263, v82, v264);
      v136 = sub_1000EA3D4();
      v137 = v223;
      *v223 = v136;
      *(v137 + 8) = 0;
      *(v137 + 16) = 1;
      v138 = sub_100002A10(&qword_100132888, &qword_1000F4068);
      sub_10006FAF0(v106, v137 + *(v138 + 44));
      v139 = v256;
      sub_1000EA4B4();
      v140 = sub_100006988(&qword_100132838, &qword_100132798, &qword_1000F3FE8);
      v141 = v225;
      v142 = v224;
      sub_1000EA914();
      (*(v257 + 8))(v139, v258);
      sub_100008E48(v137, &qword_100132798, &qword_1000F3FE8);
      v280 = sub_1000EB4E4();
      v281 = v143;
      v278 = v142;
      v279 = v140;
      swift_getOpaqueTypeConformance2();
      sub_100005898();
      v144 = v228;
      v145 = v227;
      sub_1000EA8E4();

      (*(v226 + 8))(v141, v145);
      sub_1000EA354();
      v146 = sub_1000EA7F4();
      v148 = v147;
      LOBYTE(v140) = v149;
      v150 = v229;
      sub_1000EA044();
      sub_1000058EC(v146, v148, v140 & 1);

      sub_100008E48(v144, &qword_1001327A8, &qword_1000F3FF8);
      sub_100072EB0(v150, v236, &qword_1001327A8, &qword_1000F3FF8);
      swift_storeEnumTagMultiPayload();
      sub_1000727AC();
      sub_100072894();
      v151 = v240;
      sub_1000EA4A4();
      sub_100072EB0(v151, v254, &qword_1001327C0, &qword_1000F4010);
      swift_storeEnumTagMultiPayload();
      sub_100072720();
      sub_1000729C0();
      v152 = v207;
      sub_1000EA4A4();
      sub_100008E48(v151, &qword_1001327C0, &qword_1000F4010);
      sub_100008E48(v150, &qword_1001327A8, &qword_1000F3FF8);
      (*(v260 + 8))(v263, v264);
LABEL_13:
      v117 = v277;
      v165 = v275;
      goto LABEL_25;
    case 3:
      v153 = *(v85 + 24);
      v154 = v218;
      sub_1000EB5E4();
      v155 = v238;
      if (sub_100005B30(v154, 1, v238) == 1)
      {
        sub_100008E48(v154, &qword_10012EF30, &unk_1000F14F0);
        v156 = v254;
        v157 = v236;
LABEL_16:
        v171 = v261;
        sub_1000EACF4();
        v172 = v262;
        v173 = v270;
        (*(v262 + 16))(v222, v171, v270);
        swift_storeEnumTagMultiPayload();
        sub_100006988(&qword_100132820, &qword_1001327D0, &qword_1000F4020);
        sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
        v174 = v251;
        sub_1000EA4A4();
        (*(v172 + 8))(v171, v173);
        v117 = v277;
        v175 = v240;
        goto LABEL_21;
      }

      v166 = v106;
      v167 = v217;
      v168 = *(v217 + 32);
      v168(v250, v154, v155);
      v169 = v214;
      sub_1000EB5D4();
      v170 = sub_100005B30(v169, 1, v155);
      v157 = v236;
      if (v170 == 1)
      {
        sub_100008E48(v169, &qword_10012EF30, &unk_1000F14F0);
        (*(v167 + 8))(v250, v155);
        v156 = v254;
        goto LABEL_16;
      }

      v184 = v210;
      v168(v210, v169, v155);
      v185 = sub_1000EA3D4();
      v186 = v212;
      *v212 = v185;
      *(v186 + 8) = 0;
      *(v186 + 16) = 1;
      v187 = sub_100002A10(&qword_100132890, &unk_1000F4070);
      v188 = v166;
      v189 = v250;
      sub_10006E5F8(v188, v250, v184, v186 + *(v187 + 44));
      sub_100072EB0(v186, v222, &qword_1001327D0, &qword_1000F4020);
      swift_storeEnumTagMultiPayload();
      sub_100006988(&qword_100132820, &qword_1001327D0, &qword_1000F4020);
      sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
      v174 = v251;
      sub_1000EA4A4();
      sub_100008E48(v186, &qword_1001327D0, &qword_1000F4020);
      v190 = *(v167 + 8);
      v190(v184, v155);
      v190(v189, v155);
      v117 = v277;
      v156 = v254;
      v175 = v240;
LABEL_21:
      sub_100072EB0(v174, v157, &qword_1001327D8, &qword_1000F4028);
      swift_storeEnumTagMultiPayload();
      sub_1000727AC();
      sub_100072894();
      sub_1000EA4A4();
      sub_100072EB0(v175, v156, &qword_1001327C0, &qword_1000F4010);
      swift_storeEnumTagMultiPayload();
      sub_100072720();
      sub_1000729C0();
      v152 = v207;
      sub_1000EA4A4();
      sub_100008E48(v175, &qword_1001327C0, &qword_1000F4010);
      v191 = v174;
      v192 = &qword_1001327D8;
      v193 = &qword_1000F4028;
      goto LABEL_24;
    default:
      v113 = *v82;
      v112 = v82[1];
      v114 = *(v85 + 24);
      v115 = v219;
      sub_1000EB5E4();
      v116 = v238;
      if (sub_100005B30(v115, 1, v238) == 1)
      {

        sub_100008E48(v115, &qword_10012EF30, &unk_1000F14F0);
        v117 = v277;
        v118 = v237;
LABEL_19:
        v180 = v261;
        sub_1000EACF4();
        v181 = v262;
        v182 = v270;
        (*(v262 + 16))(v234, v180, v270);
        swift_storeEnumTagMultiPayload();
        sub_100006988(&qword_100132850, &qword_100132788, &qword_1000F3FD8);
        sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
        v183 = v235;
        sub_1000EA4A4();
        (*(v181 + 8))(v180, v182);
        goto LABEL_23;
      }

      v264 = v113;
      v176 = v217;
      v177 = *(v217 + 32);
      v177(v220, v115, v116);
      v178 = v215;
      sub_1000EB5D4();
      v179 = sub_100005B30(v178, 1, v116);
      v118 = v237;
      if (v179 == 1)
      {

        sub_100008E48(v178, &qword_10012EF30, &unk_1000F14F0);
        (*(v176 + 8))(v220, v116);
        v117 = v277;
        goto LABEL_19;
      }

      v194 = v211;
      v177(v211, v178, v116);
      v195 = sub_1000EA3D4();
      v196 = v213;
      *v213 = v195;
      *(v196 + 8) = 0;
      *(v196 + 16) = 1;
      v197 = sub_100002A10(&qword_100132880, &qword_1000F4060);
      v198 = v220;
      sub_10006FE6C(v264, v112, v106, v220, v194, v196 + *(v197 + 44));

      sub_100072EB0(v196, v234, &qword_100132788, &qword_1000F3FD8);
      swift_storeEnumTagMultiPayload();
      sub_100006988(&qword_100132850, &qword_100132788, &qword_1000F3FD8);
      sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
      v183 = v235;
      sub_1000EA4A4();
      sub_100008E48(v196, &qword_100132788, &qword_1000F3FD8);
      v199 = *(v176 + 8);
      v199(v194, v116);
      v199(v198, v116);
      v117 = v277;
LABEL_23:
      v200 = v254;
      v201 = v244;
      sub_100072EB0(v183, v118, &qword_100132790, &qword_1000F3FE0);
      swift_storeEnumTagMultiPayload();
      sub_100072A78();
      sub_100006988(&qword_100132858, &qword_100132768, &qword_1000F3FB8);
      sub_1000EA4A4();
      sub_100072EB0(v201, v200, &qword_100132778, &qword_1000F3FC8);
      swift_storeEnumTagMultiPayload();
      sub_100072720();
      sub_1000729C0();
      v152 = v207;
      sub_1000EA4A4();
      sub_100008E48(v201, &qword_100132778, &qword_1000F3FC8);
      v191 = v183;
      v192 = &qword_100132790;
      v193 = &qword_1000F3FE0;
LABEL_24:
      sub_100008E48(v191, v192, v193);
      v165 = v275;
LABEL_25:
      sub_100072EB0(v152, v267, &qword_1001327E0, &qword_1000F4030);
      swift_storeEnumTagMultiPayload();
      sub_100072694();
      sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
      v202 = v268;
      sub_1000EA4A4();
      sub_100072EB0(v202, v165, &qword_100132760, &qword_1000F3FB0);
      swift_storeEnumTagMultiPayload();
      sub_1000725D8();
      sub_100072B60();
      v103 = v271;
      sub_1000EA4A4();
      sub_100008E48(v202, &qword_100132760, &qword_1000F3FB0);
      sub_100008E48(v152, &qword_1001327E0, &qword_1000F4030);
      sub_100072DA0(v209, type metadata accessor for ConditionState);
      sub_100072DA0(v208, type metadata accessor for AggregateWeatherViewModel);
LABEL_26:
      v203 = v272;
      sub_100072EB0(v103, v272, &qword_1001327E8, &qword_1000F4038);
      sub_100072EB0(v203, v117, &qword_1001327E8, &qword_1000F4038);
      v204 = v117 + *(sub_100002A10(&qword_100132868, &qword_1000F4048) + 48);
      *v204 = 0;
      *(v204 + 8) = 1;
      sub_100008E48(v103, &qword_1001327E8, &qword_1000F4038);
      return sub_100008E48(v203, &qword_1001327E8, &qword_1000F4038);
  }
}

uint64_t sub_10006E5F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v87 = a3;
  v83 = a2;
  v91 = a4;
  v5 = sub_1000EB2D4();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  __chkstk_darwin(v5);
  v88 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000EAD74();
  v94 = *(v78 - 8);
  v8 = *(v94 + 64);
  __chkstk_darwin(v78);
  v77 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EC224();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v70 - v16;
  v18 = sub_1000EB2E4();
  v85 = *(v18 - 8);
  v86 = v18;
  v19 = *(v85 + 64);
  v20 = __chkstk_darwin(v18);
  v84 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v82 = v70 - v22;
  v23 = sub_1000EAFC4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v92 = v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v93 = v70 - v32;
  sub_10006EE34(a1, v70 - v32);
  v33 = a1 + *(type metadata accessor for AggregateWeatherViewModel(0) + 24);
  sub_1000EB664();
  v34 = sub_1000EAF74();
  v36 = v35;
  (*(v24 + 8))(v27, v23);
  v95 = v34;
  v96 = v36;
  sub_100005898();
  v37 = sub_1000EA814();
  v39 = v38;
  LOBYTE(v27) = v40;
  sub_1000EA5F4();
  v41 = sub_1000EA7D4();
  v79 = v42;
  v80 = v41;
  v76 = v43;
  v81 = v44;

  sub_1000058EC(v37, v39, v27 & 1);

  v45 = v17;
  sub_1000EAD24();
  sub_1000EC214();
  v71 = *(v11 + 8);
  v71(v17, v10);
  v74 = enum case for WeatherFormatPlaceholder.none(_:);
  v46 = v94;
  v73 = *(v94 + 104);
  v48 = v77;
  v47 = v78;
  v73(v77);
  v72 = sub_1000E93A4();
  sub_1000E9394();
  v70[1] = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v70[0] = sub_100072DF8(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v83 = sub_1000E8304();
  v75 = v49;

  v50 = *(v46 + 8);
  v94 = v46 + 8;
  v50(v48, v47);
  v51 = v15;
  v52 = v15;
  v53 = v71;
  v71(v52, v10);
  sub_1000EAD24();
  sub_1000EC214();
  v53(v45, v10);
  (v73)(v48, v74, v47);
  sub_1000E9394();
  sub_1000E8304();
  v87 = v54;

  v50(v48, v47);
  v53(v51, v10);
  sub_1000EA5F4();
  sub_1000EA9E4();
  (*(v89 + 104))(v88, enum case for TemperatureHighLowText.Style.textLabels(_:), v90);
  sub_1000EABD4();
  v55 = v82;
  sub_1000EB2C4();
  v56 = v92;
  sub_100072EB0(v93, v92, &qword_10012FB88, &qword_1000F0538);
  LOBYTE(v95) = v76 & 1;
  v58 = v84;
  v57 = v85;
  v59 = *(v85 + 16);
  v60 = v86;
  v59(v84, v55, v86);
  v61 = v56;
  v62 = v91;
  sub_100072EB0(v61, v91, &qword_10012FB88, &qword_1000F0538);
  v63 = sub_100002A10(&qword_100132898, &unk_1000F4080);
  v64 = v62 + *(v63 + 48);
  v65 = v62;
  LOBYTE(v62) = v95;
  v67 = v79;
  v66 = v80;
  *v64 = v80;
  *(v64 + 8) = v67;
  *(v64 + 16) = v62;
  *(v64 + 24) = v81;
  v59((v65 + *(v63 + 64)), v58, v60);
  sub_10000673C(v66, v67, v62);
  v68 = *(v57 + 8);

  v68(v55, v60);
  sub_100008E48(v93, &qword_10012FB88, &qword_1000F0538);
  v68(v58, v60);
  sub_1000058EC(v66, v67, v95);

  return sub_100008E48(v92, &qword_10012FB88, &qword_1000F0538);
}

uint64_t sub_10006EE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a1;
  v161 = a2;
  v2 = *(*(sub_100002A10(&qword_10012FD68, &unk_1000F5370) - 8) + 64);
  sub_100009204();
  __chkstk_darwin(v3);
  v158 = &v140 - v4;
  sub_10000921C();
  v5 = sub_1000EA4E4();
  v6 = sub_1000090D4(v5);
  v156 = v7;
  v157 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100006A10();
  v155 = v11 - v10;
  v12 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  v13 = sub_1000090D4(v12);
  v159 = v14;
  v160 = v13;
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  v167 = &v140 - v18;
  sub_10000921C();
  v165 = sub_1000EAD74();
  v19 = sub_1000090D4(v165);
  v152 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_100006A10();
  v164 = v24 - v23;
  sub_10000921C();
  v145 = sub_1000EC1F4();
  v25 = sub_1000090D4(v145);
  v144 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  v143 = v30 - v29;
  sub_10000921C();
  v163 = sub_1000EC224();
  v31 = sub_1000090D4(v163);
  v149 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_100006A10();
  v169 = v36 - v35;
  v162 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000090D4(v162);
  v148 = v37;
  v39 = *(v38 + 64);
  sub_100009204();
  __chkstk_darwin(v40);
  v168 = &v140 - v41;
  sub_10000921C();
  v142 = sub_1000E8444();
  v42 = sub_1000090D4(v142);
  v141 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_100006A10();
  v140 = v47 - v46;
  sub_10000921C();
  v48 = sub_1000EAFC4();
  v49 = sub_1000090D4(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49);
  sub_100006A10();
  v56 = v55 - v54;
  v57 = sub_1000EA344();
  v58 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57 - 8);
  sub_100006A10();
  v59 = sub_1000E8684();
  v60 = sub_1000090D4(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v60);
  sub_100006A10();
  v67 = v66 - v65;
  v68 = sub_1000E86A4();
  v69 = sub_1000090D4(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  __chkstk_darwin(v69);
  sub_100006A10();
  v76 = v75 - v74;
  sub_1000E8644();
  sub_1000E8694();
  v77 = *(v71 + 8);
  v154 = v68;
  v77(v76, v68);
  LOBYTE(v71) = sub_1000E8654();
  (*(v62 + 8))(v67, v59);
  sub_1000EA334();
  v174._countAndFlagsBits = sub_10000FEFC();
  sub_1000EA324(v174);
  v153 = type metadata accessor for AggregateWeatherViewModel(0);
  v78 = *(v153 + 24);
  sub_1000EB664();
  sub_1000EAF84();
  (*(v51 + 8))(v56, v48);
  sub_1000EAA24();
  sub_1000EA304();

  v175._countAndFlagsBits = 32;
  v175._object = 0xE100000000000000;
  sub_1000EA324(v175);
  sub_1000EB5B4();
  sub_1000EAD24();
  if (v71)
  {
    v79 = v143;
    v80 = v169;
    sub_1000EC204();
    sub_100072FD4();
    v149 = v81;
    v81(v80, v163);
    v82 = v152;
    sub_100073010(v152);
    v83 = v164;
    sub_100072FF4(v164, v84);
    v85();
    v147 = sub_1000E93A4();
    sub_1000E9394();
    sub_100072DF8(&qword_1001328A8, &type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle);
    v86 = v140;
    v87 = v162;
    v88 = v145;
    sub_1000E82F4();

    v89 = v82[1];
    v146 = (v82 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v152 = v89;
    (v89)(v83, v78);
    (*(v144 + 8))(v79, v88);
    v90 = sub_100072FB0();
    v148 = v91;
    v91(v90, v87);
    sub_1000EA2F4();
    (*(v141 + 8))(v86, v142);
  }

  else
  {
    v92 = v152;
    sub_100073010(v152);
    v93 = v164;
    sub_100072FF4(v164, v94);
    v95();
    v147 = sub_1000E93A4();
    sub_1000E9394();
    sub_100072F80();
    sub_100072DF8(v96, v97);
    v98 = v169;
    v100 = v162;
    v99 = v163;
    v144 = sub_1000E8304();
    v102 = v101;

    v103 = v92[1];
    v146 = (v92 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v152 = v103;
    (v103)(v93, v78);
    sub_100072FD4();
    v149 = v104;
    v104(v98, v99);
    v105 = sub_100072FB0();
    v148 = v106;
    v106(v105, v100);
    v177._countAndFlagsBits = v144;
    v177._object = v102;
    sub_1000EA314(v177);
  }

  v176._countAndFlagsBits = sub_10000FEFC();
  sub_1000EA324(v176);
  sub_1000EA364();
  v107 = sub_100015CA8();
  LODWORD(v141) = v108;
  v142 = v107;
  v143 = v109;
  v144 = v110;
  sub_1000EA704();
  sub_1000EA604();

  v111 = sub_1000EA7D4();
  v113 = v112;
  v115 = v114;
  v117 = v116;

  v170 = v111;
  v171 = v113;
  v172 = v115 & 1;
  v173 = v117;
  v118 = v155;
  sub_1000EA4B4();
  sub_1000EA914();
  (*(v156 + 8))(v118, v157);
  sub_1000058EC(v111, v113, v115 & 1);

  sub_1000EA334();
  v178._countAndFlagsBits = sub_10000FEFC();
  sub_1000EA324(v178);
  v119 = v166 + *(v153 + 24);
  v120 = v168;
  sub_1000EB5B4();
  sub_1000EC0F4();
  v121 = v158;
  sub_1000028A0(v158, 1, 1, v154);
  v122 = v169;
  sub_1000EAD34();

  sub_100008E48(v121, &qword_10012FD68, &unk_1000F5370);
  v124 = v164;
  v123 = v165;
  v150(v164, v151, v165);
  sub_1000E93A4();
  sub_1000E9394();
  sub_100072F80();
  sub_100072DF8(v125, v126);
  v128 = v162;
  v127 = v163;
  v129 = sub_1000E8304();
  v131 = v130;

  (v152)(v124, v123);
  v149(v122, v127);
  v148(v120, v128);
  v179._countAndFlagsBits = v129;
  v179._object = v131;
  sub_1000EA314(v179);

  v180._countAndFlagsBits = 0x7365657267656420;
  v180._object = 0xE800000000000000;
  sub_1000EA324(v180);
  sub_1000EA364();
  v132 = sub_100015CA8();
  v134 = v133;
  v136 = v135;
  v170 = &type metadata for Text;
  v171 = &protocol witness table for Text;
  sub_10004E75C();
  swift_getOpaqueTypeConformance2();
  v137 = v160;
  v138 = v167;
  sub_1000EA8C4();
  sub_1000058EC(v132, v134, v136 & 1);

  sub_1000058EC(v142, v143, v141 & 1);

  return (*(v159 + 8))(v138, v137);
}

uint64_t sub_10006FAF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000E8444();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v48 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v43[-v9];
  sub_10006EE34(a1, &v43[-v9]);
  sub_1000EA354();
  v11 = sub_1000EA7F4();
  v13 = v12;
  v15 = v14;
  sub_1000EA704();
  sub_1000EA604();

  v16 = sub_1000EA7D4();
  v46 = v17;
  v47 = v16;
  v45 = v18;
  v44 = v19;

  sub_1000058EC(v11, v13, v15 & 1);

  sub_1000EB4A4();
  v20 = sub_1000EA804();
  v22 = v21;
  v24 = v23;
  sub_1000EA5F4();
  v25 = sub_1000EA7D4();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_1000058EC(v20, v22, v24 & 1);

  v32 = v48;
  sub_100072EB0(v10, v48, &qword_10012FB88, &qword_1000F0538);
  v33 = v44 & 1;
  v50 = v44 & 1;
  v34 = v49;
  sub_100072EB0(v32, v49, &qword_10012FB88, &qword_1000F0538);
  v35 = sub_100002A10(&qword_1001328B0, &qword_1000F4098);
  v36 = v34 + *(v35 + 48);
  v38 = v46;
  v37 = v47;
  v39 = v45;
  *v36 = v47;
  *(v36 + 8) = v39;
  *(v36 + 16) = v33;
  *(v36 + 24) = v38;
  *(v36 + 32) = xmmword_1000F3EF0;
  v40 = v34 + *(v35 + 64);
  *v40 = v25;
  *(v40 + 8) = v27;
  LOBYTE(v34) = v29 & 1;
  *(v40 + 16) = v29 & 1;
  *(v40 + 24) = v31;
  v41 = v37;
  sub_10000673C(v37, v39, v33);

  sub_10000673C(v25, v27, v34);

  sub_100008E48(v10, &qword_10012FB88, &qword_1000F0538);
  sub_1000058EC(v25, v27, v34);

  sub_1000058EC(v41, v39, v50);

  return sub_100008E48(v32, &qword_10012FB88, &qword_1000F0538);
}

uint64_t sub_10006FE6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v180 = a5;
  v179 = a4;
  v203 = a3;
  v207 = a1;
  v208 = a2;
  v187 = a6;
  v183 = sub_1000EB2D4();
  v182 = *(v183 - 8);
  v6 = *(v182 + 64);
  __chkstk_darwin(v183);
  v184 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1000EB2E4();
  v188 = *(v189 - 8);
  v8 = *(v188 + 64);
  v9 = __chkstk_darwin(v189);
  v186 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v185 = &v159 - v11;
  v12 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v174 = &v159 - v14;
  v173 = sub_1000EA4E4();
  v172 = *(v173 - 8);
  v15 = *(v172 + 64);
  __chkstk_darwin(v173);
  v171 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  v177 = *(v178 - 8);
  v17 = *(v177 + 64);
  __chkstk_darwin(v178);
  v196 = &v159 - v18;
  v19 = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v181 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v206 = &v159 - v23;
  v195 = sub_1000EAFC4();
  v169 = *(v195 - 8);
  v24 = *(v169 + 64);
  __chkstk_darwin(v195);
  v194 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_1000EAD74();
  v198 = *(v205 - 8);
  v26 = v198[8];
  __chkstk_darwin(v205);
  v204 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1000EC1F4();
  v164 = *(v165 - 1);
  v28 = *(v164 + 64);
  __chkstk_darwin(v165);
  v163 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1000EC224();
  v191 = *(v202 - 8);
  v30 = *(v191 + 8);
  v31 = __chkstk_darwin(v202);
  v175 = &v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v200 = &v159 - v33;
  v209 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v168 = *(v209 - 8);
  v34 = *(v168 + 64);
  __chkstk_darwin(v209);
  v190 = &v159 - v35;
  v162 = sub_1000E8444();
  v160 = *(v162 - 8);
  v36 = *(v160 + 64);
  __chkstk_darwin(v162);
  v159 = &v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000EA344();
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v161 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000E8684();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1000E86A4();
  v46 = *(v193 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v193);
  v49 = &v159 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100002A10(&qword_1001328B8, &unk_1000F40A0);
  v51 = *(*(v50 - 8) + 64);
  v52 = __chkstk_darwin(v50 - 8);
  v176 = &v159 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v56 = &v159 - v55;
  __chkstk_darwin(v54);
  v201 = &v159 - v57;
  sub_100002A10(&qword_10012FCE0, &qword_1000F05F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F03E0;
  v59 = sub_1000EA534();
  *(inited + 32) = v59;
  v60 = sub_1000EA554();
  *(inited + 33) = v60;
  v61 = sub_1000EA544();
  sub_1000EA544();
  if (sub_1000EA544() != v59)
  {
    v61 = sub_1000EA544();
  }

  sub_1000EA544();
  if (sub_1000EA544() != v60)
  {
    v61 = sub_1000EA544();
  }

  v62 = v204;
  *v56 = v61;
  v63 = sub_100002A10(&qword_1001328C0, &qword_1000F40B0);
  sub_10007160C(v207, v208, &v56[*(v63 + 44)]);
  sub_100072CB4(v56, v201);
  sub_1000E8644();
  sub_1000E8694();
  (*(v46 + 8))(v49, v193);
  v64 = sub_1000E8654();
  (*(v42 + 8))(v45, v41);
  sub_1000EA334();
  v214._countAndFlagsBits = 0;
  v214._object = 0xE000000000000000;
  sub_1000EA324(v214);
  v167 = type metadata accessor for AggregateWeatherViewModel(0);
  v166 = *(v167 + 24);
  v65 = v190;
  sub_1000EB5B4();
  v66 = v200;
  sub_1000EAD24();
  if (v64)
  {
    v67 = v163;
    sub_1000EC204();
    v68 = *(v191 + 1);
    v170 = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v191 = v68;
    v68(v66, v202);
    v69 = v198;
    v70 = v198[13];
    v192 = (v198 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v71 = v62;
    LODWORD(v208) = enum case for WeatherFormatPlaceholder.none(_:);
    v72 = v205;
    v199 = v70;
    v70(v62);
    v207 = sub_1000E93A4();
    sub_1000E9394();
    sub_100072DF8(&qword_1001328A8, &type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle);
    v73 = v159;
    v74 = v209;
    v75 = v165;
    v76 = v190;
    sub_1000E82F4();

    v77 = v69[1];
    v197 = (v69 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v198 = v77;
    (v77)(v71, v72);
    (*(v164 + 8))(v67, v75);
    v78 = *(v168 + 8);
    v164 = (v168 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v79 = v76;
    v165 = v78;
    (v78)(v76, v74);
    sub_1000EA2F4();
    (*(v160 + 8))(v73, v162);
    v215._countAndFlagsBits = 32;
    v215._object = 0xE100000000000000;
    sub_1000EA324(v215);
    v80 = v194;
    sub_1000EB664();
    v81 = sub_1000EAF74();
    v83 = v82;
    v84 = *(v169 + 8);
    v162 = (v169 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v163 = v84;
    (v84)(v80, v195);
    v216._countAndFlagsBits = v81;
    v216._object = v83;
    sub_1000EA314(v216);

    v217._countAndFlagsBits = 0;
    v217._object = 0xE000000000000000;
    sub_1000EA324(v217);
    sub_1000EA364();
    v85 = sub_1000EA7F4();
    v87 = v86;
    v89 = v88;
    v91 = v90;
  }

  else
  {
    v92 = v198;
    v93 = v198[13];
    v192 = (v198 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    LODWORD(v208) = enum case for WeatherFormatPlaceholder.none(_:);
    v94 = v205;
    v199 = v93;
    v93(v62);
    v207 = sub_1000E93A4();
    sub_1000E9394();
    sub_100072DF8(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v95 = v209;
    v96 = v202;
    v97 = v65;
    v163 = sub_1000E8304();
    v98 = v96;
    v100 = v99;

    v101 = v92[1];
    v197 = (v92 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v198 = v101;
    (v101)(v62, v94);
    v102 = *(v191 + 1);
    v170 = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v191 = v102;
    v102(v66, v98);
    v103 = *(v168 + 8);
    v164 = (v168 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v104 = v97;
    v165 = v103;
    (v103)(v97, v95);
    v218._countAndFlagsBits = v163;
    v218._object = v100;
    sub_1000EA314(v218);

    v219._countAndFlagsBits = 32;
    v219._object = 0xE100000000000000;
    sub_1000EA324(v219);
    v105 = v194;
    sub_1000EB664();
    v106 = sub_1000EAF74();
    v108 = v107;
    v109 = *(v169 + 8);
    v162 = (v169 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v163 = v109;
    (v109)(v105, v195);
    v220._countAndFlagsBits = v106;
    v220._object = v108;
    sub_1000EA314(v220);

    v221._countAndFlagsBits = 0;
    v221._object = 0xE000000000000000;
    sub_1000EA324(v221);
    sub_1000EA364();
    v85 = sub_1000EA7F4();
    v87 = v110;
    v89 = v111;
    v91 = v112;
    v79 = v104;
  }

  LODWORD(v161) = v89;
  v166 = v87;
  v168 = v85;
  v169 = v91;
  sub_1000EA5F4();
  v113 = sub_1000EA7D4();
  v115 = v114;
  v117 = v116;
  v119 = v118;

  v210 = v113;
  v211 = v115;
  v212 = v117 & 1;
  v213 = v119;
  v120 = v171;
  sub_1000EA4B4();
  sub_1000EA914();
  (*(v172 + 8))(v120, v173);
  sub_1000058EC(v113, v115, v117 & 1);

  sub_1000EA334();
  v222._countAndFlagsBits = 0;
  v222._object = 0xE000000000000000;
  sub_1000EA324(v222);
  v173 = *(v167 + 24);
  sub_1000EB5B4();
  sub_1000EC0F4();
  v121 = v174;
  sub_1000028A0(v174, 1, 1, v193);
  v122 = v200;
  sub_1000EAD34();

  sub_100008E48(v121, &qword_10012FD68, &unk_1000F5370);
  v123 = v204;
  v124 = v79;
  v125 = v205;
  v199(v204, v208);
  sub_1000E93A4();
  sub_1000E9394();
  v193 = sub_100072DF8(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v126 = v209;
  v127 = v202;
  v128 = sub_1000E8304();
  v130 = v129;

  (v198)(v123, v125);
  v191(v122, v127);
  (v165)(v124, v126);
  v223._countAndFlagsBits = v128;
  v223._object = v130;
  sub_1000EA314(v223);

  v224._countAndFlagsBits = 0x7365657267656420;
  v224._object = 0xEA0000000000202CLL;
  sub_1000EA324(v224);
  v131 = v194;
  sub_1000EB664();
  v132 = sub_1000EAF74();
  v134 = v133;
  (v163)(v131, v195);
  v225._countAndFlagsBits = v132;
  v225._object = v134;
  sub_1000EA314(v225);

  v226._countAndFlagsBits = 0;
  v226._object = 0xE000000000000000;
  sub_1000EA324(v226);
  sub_1000EA364();
  v135 = sub_1000EA7F4();
  v137 = v136;
  LOBYTE(v130) = v138;
  v210 = &type metadata for Text;
  v211 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v139 = v178;
  v140 = v196;
  sub_1000EA8C4();
  sub_1000058EC(v135, v137, v130 & 1);

  (*(v177 + 8))(v140, v139);
  v141 = v200;
  sub_1000EAD24();
  v142 = v175;
  sub_1000EC214();
  v143 = v202;
  v144 = v191;
  v191(v141, v202);
  v146 = v204;
  v145 = v205;
  (v199)(v204, v208, v205);
  sub_1000E9394();
  v203 = sub_1000E8304();
  v196 = v147;

  (v198)(v146, v145);
  v144(v142, v143);
  sub_1000EAD24();
  sub_1000EC214();
  v144(v141, v143);
  (v199)(v146, v208, v145);
  sub_1000E9394();
  sub_1000E8304();

  (v198)(v146, v145);
  v144(v142, v143);
  sub_1000EA5F4();
  sub_1000EA9E4();
  (*(v182 + 104))(v184, enum case for TemperatureHighLowText.Style.textLabels(_:), v183);
  sub_1000EABD4();
  v148 = v185;
  sub_1000EB2C4();
  v149 = v176;
  sub_100072EB0(v201, v176, &qword_1001328B8, &unk_1000F40A0);
  v150 = v181;
  sub_100072EB0(v206, v181, &qword_10012FB88, &qword_1000F0538);
  v151 = v188;
  v152 = *(v188 + 16);
  v153 = v186;
  v154 = v189;
  v152(v186, v148, v189);
  v155 = v187;
  sub_100072EB0(v149, v187, &qword_1001328B8, &unk_1000F40A0);
  v156 = sub_100002A10(&qword_1001328C8, &qword_1000F40B8);
  sub_100072EB0(v150, v155 + *(v156 + 48), &qword_10012FB88, &qword_1000F0538);
  v152((v155 + *(v156 + 64)), v153, v154);
  sub_1000058EC(v168, v166, v161 & 1);

  v157 = *(v151 + 8);
  v157(v148, v154);
  sub_100008E48(v206, &qword_10012FB88, &qword_1000F0538);
  sub_100008E48(v201, &qword_1001328B8, &unk_1000F40A0);
  v157(v153, v154);
  sub_100008E48(v150, &qword_10012FB88, &qword_1000F0538);
  return sub_100008E48(v149, &qword_1001328B8, &unk_1000F40A0);
}

uint64_t sub_10007160C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v57 = a3;
  v56 = sub_100002A10(&qword_1001328D0, &qword_1000F40C0);
  v55 = *(v56 - 8);
  v5 = *(v55 + 64);
  v6 = __chkstk_darwin(v56);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v50 - v8;
  v51 = sub_1000EA4E4();
  v61 = *(v51 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v51);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EA344();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v53 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  v60 = *(v53 - 8);
  v14 = v60[8];
  v15 = __chkstk_darwin(v53);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v50 - v17;
  sub_1000EA334();
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  sub_1000EA324(v68);
  sub_1000EAA24();
  sub_1000EA304();

  v69._countAndFlagsBits = 32;
  v69._object = 0xE100000000000000;
  sub_1000EA324(v69);
  v70._countAndFlagsBits = a1;
  v70._object = a2;
  sub_1000EA314(v70);
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  sub_1000EA324(v71);
  sub_1000EA364();
  v18 = sub_1000EA7F4();
  v20 = v19;
  v22 = v21;
  sub_1000EA704();
  sub_1000EA604();

  v23 = sub_1000EA7D4();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_1000058EC(v18, v20, v22 & 1);

  *&__dst[0] = v23;
  *(&__dst[0] + 1) = v25;
  LOBYTE(a2) = v27 & 1;
  LOBYTE(__dst[1]) = v27 & 1;
  *(&__dst[1] + 1) = v29;
  v30 = v11;
  sub_1000EA4B4();
  v31 = v58;
  sub_1000EA914();
  v32 = *(v61 + 8);
  v61 += 8;
  v50 = v32;
  v33 = v51;
  v32(v30, v51);
  sub_1000058EC(v23, v25, a2);

  v34 = sub_1000EA2E4();
  v64 = 0;
  sub_100071CAC(__dst);
  v63 = BYTE8(__dst[2]);
  __src[0] = v34;
  __src[1] = 0x4000000000000000;
  LOBYTE(__src[2]) = v64;
  *(&__src[2] + 1) = *v66;
  HIDWORD(__src[2]) = *&v66[3];
  *&__src[3] = __dst[0];
  *&__src[5] = __dst[1];
  __src[7] = *&__dst[2];
  LOBYTE(__src[8]) = BYTE8(__dst[2]);
  *(&__src[8] + 1) = *v65;
  HIDWORD(__src[8]) = *&v65[3];
  __src[9] = *&__dst[3];
  sub_1000EA4B4();
  sub_100002A10(&qword_1001328D8, &qword_1000F40C8);
  sub_100006988(&qword_1001328E0, &qword_1001328D8, &qword_1000F40C8);
  v35 = v59;
  sub_1000EA914();
  v50(v30, v33);
  memcpy(__dst, __src, sizeof(__dst));
  sub_100008E48(__dst, &qword_1001328D8, &qword_1000F40C8);
  v36 = v60[2];
  v37 = v52;
  v38 = v31;
  v39 = v53;
  v36(v52, v38, v53);
  v40 = v55;
  v41 = *(v55 + 16);
  v42 = v54;
  v43 = v35;
  v44 = v56;
  v41(v54, v43, v56);
  v45 = v57;
  v36(v57, v37, v39);
  v46 = sub_100002A10(&qword_1001328E8, &qword_1000F40D0);
  v41(&v45[*(v46 + 48)], v42, v44);
  v47 = *(v40 + 8);
  v47(v59, v44);
  v48 = v60[1];
  v48(v58, v39);
  v47(v42, v44);
  return (v48)(v37, v39);
}

uint64_t sub_100071CAC@<X0>(uint64_t a1@<X8>)
{
  v17 = sub_1000EAA24();
  sub_1000EA5C4();
  v16 = sub_1000EA604();

  KeyPath = swift_getKeyPath();
  sub_1000EA354();
  v2 = sub_1000EA7F4();
  v4 = v3;
  v6 = v5;
  sub_1000EA704();
  sub_1000EA604();

  v7 = sub_1000EA7D4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1000058EC(v2, v4, v6 & 1);

  *a1 = v17;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v16;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  v11 &= 1u;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;

  sub_10000673C(v7, v9, v11);

  sub_1000058EC(v7, v9, v11);
}

uint64_t sub_100071E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v66 = a3;
  v65 = sub_1000EA4E4();
  v63 = *(v65 - 8);
  v4 = *(v63 + 64);
  __chkstk_darwin(v65);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1000EBAF4();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EBB64();
  v10 = *(v9 - 8);
  v58 = v9;
  v59 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100002A10(&qword_1001328F0, &qword_1000F4108);
  v64 = *(v62 - 8);
  v14 = *(v64 + 64);
  __chkstk_darwin(v62);
  v53 = &v53 - v15;
  v16 = sub_100002A10(&qword_1001328F8, &unk_1000F4110);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v61 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v56 = &v53 - v20;
  v21 = type metadata accessor for RainInlineTruncateFallbackText();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002A10(&qword_100132900, &qword_1000F7870);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v53 - v30;
  v32 = sub_1000EB504();
  (*(*(v32 - 8) + 16))(v24, a1, v32);
  sub_1000EA354();
  v33 = sub_1000EA7F4();
  v35 = v34;
  v37 = v36;
  sub_100072DF8(&qword_100132908, type metadata accessor for RainInlineTruncateFallbackText);
  sub_1000EA8C4();
  sub_1000058EC(v33, v35, v37 & 1);

  sub_100072DA0(v24, type metadata accessor for RainInlineTruncateFallbackText);
  (*(v55 + 16))(v54, v60, v57);
  sub_1000EBB54();
  sub_1000EA4B4();
  v38 = sub_100072DF8(&qword_100132910, &type metadata accessor for CompactNextHourPrecipitationChartView);
  v39 = v53;
  v40 = v58;
  sub_1000EA914();
  (*(v63 + 8))(v6, v65);
  v41 = v40;
  (*(v59 + 8))(v13, v40);
  v67 = sub_1000EBAD4();
  v68 = v42;
  sub_100005898();
  v43 = sub_1000EA814();
  v45 = v44;
  LOBYTE(v40) = v46;
  v67 = v41;
  v68 = v38;
  swift_getOpaqueTypeConformance2();
  v47 = v56;
  v48 = v62;
  sub_1000EA8C4();
  sub_1000058EC(v43, v45, v40 & 1);

  (*(v64 + 8))(v39, v48);
  sub_100072E40(v31, v29);
  v49 = v61;
  sub_100072EB0(v47, v61, &qword_1001328F8, &unk_1000F4110);
  v50 = v66;
  sub_100072E40(v29, v66);
  v51 = sub_100002A10(&qword_100132918, &qword_1000F4120);
  sub_100072EB0(v49, v50 + *(v51 + 48), &qword_1001328F8, &unk_1000F4110);
  sub_100008E48(v47, &qword_1001328F8, &unk_1000F4110);
  sub_100008E48(v31, &qword_100132900, &qword_1000F7870);
  sub_100008E48(v49, &qword_1001328F8, &unk_1000F4110);
  return sub_100008E48(v29, &qword_100132900, &qword_1000F7870);
}

unint64_t sub_100072554()
{
  result = qword_1001327F8;
  if (!qword_1001327F8)
  {
    sub_100002ABC(&qword_1001327F0, &qword_1000F4040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001327F8);
  }

  return result;
}

unint64_t sub_1000725D8()
{
  result = qword_100132800;
  if (!qword_100132800)
  {
    sub_100002ABC(&qword_100132760, &qword_1000F3FB0);
    sub_100072694();
    sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132800);
  }

  return result;
}

unint64_t sub_100072694()
{
  result = qword_100132808;
  if (!qword_100132808)
  {
    sub_100002ABC(&qword_1001327E0, &qword_1000F4030);
    sub_100072720();
    sub_1000729C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132808);
  }

  return result;
}

unint64_t sub_100072720()
{
  result = qword_100132810;
  if (!qword_100132810)
  {
    sub_100002ABC(&qword_1001327C0, &qword_1000F4010);
    sub_1000727AC();
    sub_100072894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132810);
  }

  return result;
}

unint64_t sub_1000727AC()
{
  result = qword_100132818;
  if (!qword_100132818)
  {
    sub_100002ABC(&qword_1001327D8, &qword_1000F4028);
    sub_100006988(&qword_100132820, &qword_1001327D0, &qword_1000F4020);
    sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132818);
  }

  return result;
}

unint64_t sub_100072894()
{
  result = qword_100132830;
  if (!qword_100132830)
  {
    sub_100002ABC(&qword_1001327A8, &qword_1000F3FF8);
    sub_100002ABC(&qword_100132798, &qword_1000F3FE8);
    sub_100006988(&qword_100132838, &qword_100132798, &qword_1000F3FE8);
    swift_getOpaqueTypeConformance2();
    sub_100072DF8(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132830);
  }

  return result;
}

unint64_t sub_1000729C0()
{
  result = qword_100132840;
  if (!qword_100132840)
  {
    sub_100002ABC(&qword_100132778, &qword_1000F3FC8);
    sub_100072A78();
    sub_100006988(&qword_100132858, &qword_100132768, &qword_1000F3FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132840);
  }

  return result;
}

unint64_t sub_100072A78()
{
  result = qword_100132848;
  if (!qword_100132848)
  {
    sub_100002ABC(&qword_100132790, &qword_1000F3FE0);
    sub_100006988(&qword_100132850, &qword_100132788, &qword_1000F3FD8);
    sub_100072DF8(&qword_100132828, &type metadata accessor for NoWeatherDataRectangularErrorView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132848);
  }

  return result;
}

unint64_t sub_100072B60()
{
  result = qword_100132860;
  if (!qword_100132860)
  {
    sub_100002ABC(&qword_100132748, &qword_1000F3F98);
    sub_100002ABC(&qword_1001327F0, &qword_1000F4040);
    sub_100072554();
    swift_getOpaqueTypeConformance2();
    sub_100072DF8(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132860);
  }

  return result;
}

uint64_t sub_100072C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1000069E4(v4);
  v6 = *(v5 + 16);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_100072CB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002A10(&qword_1001328B8, &unk_1000F40A0);
  sub_1000069E4(v3);
  v5 = *(v4 + 32);
  v6 = sub_100019AC0();
  v7(v6);
  return a2;
}

uint64_t sub_100072D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EA224();
  *a1 = result;
  return result;
}

uint64_t sub_100072D44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EA224();
  *a1 = result;
  return result;
}

uint64_t sub_100072D70(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000EA234();
}

uint64_t sub_100072DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100072DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100072E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100132900, &qword_1000F7870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100002A10(a3, a4);
  sub_1000069E4(v5);
  v7 = *(v6 + 16);
  v8 = sub_100019AC0();
  v9(v8);
  return a2;
}

uint64_t sub_100072F0C()
{
  v0 = sub_100019AC0();
  sub_100002ABC(v0, v1);
  sub_100072F98();
  sub_100006988(v2, &qword_100132728, &qword_1000F3F80);
  sub_10004E75C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100072FB0()
{
  v2 = *(v1 - 336);
  v3 = *(v2 + 8);
  *(v1 - 360) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

void sub_100072FD4()
{
  v1 = *(v0 - 312);
  v2 = *(v1 + 8);
  *(v0 - 328) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
}

void sub_100072FF4(uint64_t a1, int a2)
{
  *(v3 - 292) = a2;
  v4 = *(v3 - 184);
  *(v3 - 304) = v2;
}

uint64_t sub_100073028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10, char a11, unsigned __int8 a12)
{
  v182 = a8;
  v181 = a7;
  v192 = a6;
  v223 = a5;
  v217 = a4;
  v196 = a3;
  v184 = a2;
  v203 = a1;
  v201 = a9;
  v13 = a12;
  v14 = a10;
  v195 = sub_1000E9A84();
  v15 = sub_1000090D4(v195);
  v194 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100006A10();
  v199 = v20 - v19;
  sub_10000921C();
  v213 = sub_1000EB994();
  v21 = sub_1000090D4(v213);
  v200 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v25);
  sub_10000D408();
  __chkstk_darwin(v26);
  sub_10000D56C();
  v198 = v27;
  sub_10000921C();
  v180 = sub_1000EAFC4();
  v28 = sub_1000090D4(v180);
  v179 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_100006A10();
  v178 = v33 - v32;
  v34 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v36);
  sub_10000D56C();
  v219 = v37;
  sub_10000921C();
  v220 = sub_1000EB214();
  v38 = sub_1000090D4(v220);
  v212 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_10000D45C();
  v211 = v42;
  __chkstk_darwin(v43);
  sub_10000D56C();
  v218 = v44;
  sub_10000921C();
  v221 = sub_1000EB674();
  v45 = sub_1000090D4(v221);
  v214 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_10000D45C();
  v210 = v49;
  __chkstk_darwin(v50);
  sub_10000D56C();
  v222 = v51;
  sub_10000921C();
  v183 = sub_1000EA3B4();
  v52 = sub_1000090D4(v183);
  v177[1] = v53;
  v55 = *(v54 + 64);
  __chkstk_darwin(v52);
  sub_100006A10();
  v177[0] = v57 - v56;
  sub_10000921C();
  v58 = sub_1000E8684();
  v59 = sub_1000090D4(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  __chkstk_darwin(v59);
  sub_100006A10();
  v66 = v65 - v64;
  v67 = sub_1000E86A4();
  v68 = sub_1000090D4(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  __chkstk_darwin(v68);
  sub_100006A10();
  v205 = v74 - v73;
  v75 = sub_100002A10(&qword_100132A00, &unk_1000F4170);
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75 - 8);
  v78 = v177 - v77;
  v209 = sub_1000EBC44();
  v79 = sub_1000090D4(v209);
  v207 = v80;
  v82 = *(v81 + 64);
  __chkstk_darwin(v79);
  sub_100006A10();
  v208 = v84 - v83;
  v190 = sub_1000EA5C4();
  v85 = *(v12 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize);
  v206 = a12;
  v204 = v12;
  v215 = v85;
  if (v85)
  {
    v187 = v70;
    v188 = v67;
    v189 = v66;
    v70 = sub_1000EA6F4();
    v86 = *(v12 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_showsWidgetBackground) == 1;
    v216 = v70;
    v202 = v61;
    if (v86)
    {
    }

    else
    {
      LODWORD(v185) = a10;
      v87 = sub_100074A5C();
      v88 = v209;
      v89(v87);
      sub_10007499C(&qword_100132A08);

      v13 = v206;
      v90 = sub_1000EBE24();
      v14 = v185;
      (*(a10 + 8))(v61, v88);
      if (v90)
      {
        if (v215 == 1)
        {
          v91 = sub_1000EA584();
          sub_100074AE0(v91);
          v92 = sub_1000EA5C4();
          sub_100074A3C(v92);
          sub_100074978();
        }

        else
        {
          sub_100074978();
          if (v14)
          {
            v119 = sub_1000EA6C4();
            sub_100074A3C(v119);

            v120 = sub_1000EA584();
            v121 = &v221;
          }

          else
          {
            v122 = sub_1000EA584();
            sub_100074AE0(v122);
            v120 = sub_1000EA5C4();
            v121 = &v220;
          }

          *(v121 - 32) = v120;
        }

        v123 = sub_1000EA6F4();
        sub_100074AC8(v123);
        v186 = 1;
        goto LABEL_27;
      }
    }

    if (v215 == 1)
    {
      goto LABEL_19;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

    v93 = sub_100074A5C();
    v94 = v58;
    v95 = v209;
    v96(v93);
    sub_100074954(&qword_1001309E8);
    sub_100074A0C();
    sub_1000EBFB4();
    v13 = v206;
    sub_1000EBFB4();
    v97 = v95;
    v58 = v94;
    (*(v14 + 8))(v61, v97);
    sub_100074A7C();
    if (v86)
    {
      v98 = v205;
      sub_1000E8644();
      v99 = v189;
      sub_1000E8694();
      (*(v187 + 8))(v98, v188);
      v100 = sub_1000E8664();
      (*(v202 + 8))(v99, v58);
      if (v100)
      {
        sub_1000EA614();
      }

      else
      {
        sub_1000EA5B4();
      }

      sub_100074978();
      sub_100074AE0(v176);
      v117 = sub_1000EA6C4();
    }

    else
    {
LABEL_19:
      sub_1000EA644();
      v115 = sub_1000EA624();
      sub_1000749C0(v115);
      v116 = sub_1000EA674();
      sub_10000D3A8(v78, &qword_100132A00, &unk_1000F4170);
      v189 = v116;

      sub_1000EA5C4();
      sub_100074978();
    }

    sub_100074A3C(v117);

    v118 = sub_1000EA6F4();
    sub_100074AC8(v118);
    sub_1000EA664();
  }

  else
  {
    v58 = sub_1000EA6C4();
    if (*(v12 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_showsWidgetBackground) == 1)
    {
    }

    else
    {
      v70 = v207;
      v101 = v208;
      v102 = v78;
      v103 = v58;
      v104 = v209;
      (*(v207 + 104))(v208, enum case for WidgetFamily.systemSmall(_:), v209);
      sub_10007499C(&qword_100132A08);

      v105 = sub_1000EBE24();
      v106 = v101;
      v13 = a12;
      v107 = v104;
      v58 = v103;
      v78 = v102;
      (*(v70 + 8))(v106, v107);
      if (v105)
      {
        v186 = 1;
        v108 = sub_1000EA584();
        sub_100074AE0(v108);
        v109 = sub_1000EA6C4();
        sub_100074AC8(v109);
        v110 = sub_1000EA6B4();
        sub_100074A3C(v110);

LABEL_27:
        sub_1000EA664();
        goto LABEL_28;
      }
    }

    sub_1000EA644();
    v111 = sub_1000EA624();
    sub_1000749C0(v111);
    v112 = sub_1000EA674();
    sub_10000D3A8(v78, &qword_100132A00, &unk_1000F4170);
    v189 = v112;

    v113 = sub_1000EA6C4();
    sub_100074AC8(v113);
    v114 = sub_1000EA6B4();
    sub_100074A3C(v114);

    sub_1000EA654();
  }

  v186 = 0;
LABEL_28:
  v124 = sub_1000E9254();
  v216 = v58;
  v202 = HIBYTE(v223) & 0xF;
  if ((v124 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_100074A48();
  if (!v86)
  {
    v125 = v126;
  }

  if (v125)
  {
LABEL_33:
    if (sub_1000E9254() & 1) != 0 && (v13)
    {
      sub_1000749FC();
      if ((v14 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      LODWORD(v185) = v14;
      v127 = v13;
      v128 = sub_1000749E0();
      v129(v128);
      v130 = sub_100074954(&qword_1001309E8);
      sub_1000EBFB4();
      sub_100074AA8();
      (*(v13 + 8))(v78, v70);
      sub_100074A7C();
      if (v86)
      {
        sub_100074A24();
        v132 = *(v131 - 256);
        v133 = v183;
        v134(v132);
        sub_1000CD72C();
        LODWORD(v205) = v135;
        (*(v130 + 8))(v132, v133);
      }

      else
      {
        LODWORD(v205) = 0;
      }

      v13 = v127;
      if ((v185 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_40;
  }

  if (v13)
  {
    sub_1000749FC();
  }

  else
  {
    sub_100074A24();
    v141 = *(v140 - 256);
    v142 = v183;
    v143(v141);
    sub_1000CD388();
    LODWORD(v205) = v144;
    (*(v58 + 8))(v141, v142);
  }

  v145 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v146 = enum case for WidgetFamily.systemSmall(_:);
  v147 = v207;
  v70 = v208;
  v13 = *(v207 + 104);
  v78 = v209;
  (v13)(v208, enum case for WidgetFamily.systemSmall(_:), v209);
  sub_100074954(&qword_1001309E8);
  v185 = v145;
  sub_1000EBFB4();
  sub_100074A88();
  v148 = *(v147 + 8);
  v148(v70, v78);
  sub_100074A7C();
  if (!v86 || (v205 & 1) == 0)
  {
    if ((v14 & 1) == 0)
    {
      v138 = 1;
      LOBYTE(v13) = v206;
      v139 = v203;
      sub_100074978();
      goto LABEL_50;
    }

    v174 = v208;
    v175 = v209;
    (v13)(v208, v146, v209);

    sub_1000EBFB4();
    sub_100074A88();
    v148(v174, v175);
    v138 = 1;
    LOBYTE(v13) = v206;
LABEL_41:
    LODWORD(v185) = sub_10007446C();
    v139 = v203;
    goto LABEL_51;
  }

  sub_1000749FC();
  v13 = v206;
  sub_100074978();
  if (v14)
  {
LABEL_40:
    v136 = sub_1000749E0();
    v137(v136);
    sub_100074954(&qword_1001309E8);

    sub_1000EBFB4();
    sub_100074AA8();
    (*(v13 + 8))(v78, v70);
    v138 = 0;
    goto LABEL_41;
  }

LABEL_49:
  v138 = 0;
  v139 = v203;
LABEL_50:

  LODWORD(v185) = sub_100074594();
LABEL_51:
  sub_100074A48();
  if (v86)
  {
    v150 = v149;
  }

  else
  {
    v150 = v202;
  }

  if (v150)
  {
    v151 = sub_1000EA9C4();
  }

  else
  {
    v151 = 0;
  }

  v152 = type metadata accessor for AggregateWeatherViewModel(0);
  v153 = *(v214 + 16);
  result = v153(v222, v139 + *(v152 + 24), v221);
  v155 = *(v139 + *(v152 + 32));
  if (!*(v155 + 16))
  {
    __break(1u);
    return result;
  }

  v203 = v151;
  v156 = *(v212 + 16);
  v156(v218, v155 + ((*(v212 + 80) + 32) & ~*(v212 + 80)), v220);
  if (v215 == 2)
  {
    v157 = *(v184 + 48);
    LODWORD(v202) = v157 == 2;
    if (v13)
    {
      sub_100074988();
      goto LABEL_63;
    }
  }

  else
  {
    if (v13)
    {
      sub_100074988();
      LODWORD(v202) = 0;
LABEL_63:
      v158 = v191;
      if (!v138)
      {
        goto LABEL_73;
      }

LABEL_71:
      v160 = !sub_1000027EC(v215);
      goto LABEL_74;
    }

    LODWORD(v202) = 0;
    v157 = *(v184 + 48);
  }

  v158 = v191;
  if (v157 == 4)
  {
    v183 = 0xED00006C6C69662ELL;
    v159 = 0x616C6C6572626D75;
  }

  else
  {
    if (v157 != 5)
    {
      sub_100074988();
      if (v138)
      {
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    v183 = 0xEB00000000726574;
    v159 = 0x656D6F6D72656874;
  }

  v184 = v159;
  if (v138)
  {
    goto LABEL_71;
  }

LABEL_73:
  v160 = 1;
LABEL_74:
  LODWORD(v191) = v160;
  v215 = v138;
  if (v150)
  {
    goto LABEL_79;
  }

  v161 = v178;
  sub_1000EB664();
  v162 = sub_1000EAF94();
  (*(v179 + 8))(v161, v180);
  if (v162)
  {
    goto LABEL_79;
  }

  v163 = v207;
  v164 = *(v207 + 104);
  v180 = v153;
  v165 = v208;
  v166 = v209;
  v164(v208, enum case for WidgetFamily.systemSmall(_:), v209);
  sub_100074954(&qword_1001309E8);
  sub_100074A0C();
  sub_1000EBFB4();
  sub_1000EBFB4();
  v167 = v165;
  v153 = v180;
  (*(v163 + 8))(v167, v166);
  sub_100074A7C();
  if (!v86)
  {
LABEL_79:
    v168 = sub_1000EB504();
    sub_1000028A0(v219, 1, 1, v168);
  }

  else
  {
    sub_100077014(v139, 1, 6, v219, 0.6);
  }

  v169 = v213;
  v170 = v200;
  if (v192)
  {
    sub_100074A70(&v214);
    *v158 = v171;
    (*(v170 + 104))(v158, enum case for CurrentObservationViewAttributes.LocationStyle.currentLocation(_:), v169);
  }

  else
  {
    if (v182)
    {
      v172 = &enum case for CurrentObservationViewAttributes.LocationStyle.predictedLocation(_:);
    }

    else
    {
      v172 = &enum case for CurrentObservationViewAttributes.LocationStyle.fixedLocation(_:);
    }

    (*(v200 + 104))(v158, *v172, v213);
  }

  v173 = v198;
  (*(v170 + 32))(v198, v158, v169);
  v153(v210, v222, v221);
  v156(v211, v218, v220);
  sub_1000748E4(v219, v193);
  (*(v194 + 16))(v199, v196, v195);
  (*(v170 + 16))(v197, v173, v169);

  v209 = sub_1000EA9C4();
  sub_1000EA9C4();
  sub_1000EA9C4();
  sub_1000EA9C4();
  sub_1000EA9C4();
  sub_1000EA9C4();
  sub_100074A70(&v223);
  sub_100074A70(&v217);
  sub_100074A70(&v224);
  sub_1000EB924();

  (*(v170 + 8))(v173, v213);
  sub_10000D3A8(v219, &qword_10012FBC0, &unk_1000F6860);
  (*(v212 + 8))(v218, v220);
  return (*(v214 + 8))(v222, v221);
}

uint64_t sub_10007446C()
{
  v1 = sub_1000EA3B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize))
  {
    v6 = &enum case for ContentSizeCategory.extraExtraLarge(_:);
  }

  else
  {
    v6 = &enum case for ContentSizeCategory.extraLarge(_:);
  }

  (*(v2 + 104))(v5, *v6, v1);
  sub_1000CDAD0();
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  return v8 & 1;
}

uint64_t sub_100074594()
{
  v0 = sub_1000EA3B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ContentSizeCategory.extraExtraLarge(_:), v0);
  sub_1000CDAD0();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t sub_10007469C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_1000EA3B4();
  v9 = sub_1000090D4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v16 = (v15 - v14);
  v17 = sub_1000EBC44();
  v18 = sub_1000090D4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_100006A10();
  v25 = v24 - v23;
  (*(v20 + 16))(v24 - v23, a1, v17);
  (*(v11 + 16))(v16, a2, v8);
  v26 = sub_100026CB4(v25, v16, a3, a4);
  (*(v11 + 8))(a2, v8);
  (*(v20 + 8))(a1, v17);
  return v26;
}

uint64_t type metadata accessor for CurrentObservationViewAttributesFactory()
{
  result = qword_100132948;
  if (!qword_100132948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000748A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000EBC44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000748E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074954(unint64_t *a1)
{

  return sub_1000748A0(a1);
}

uint64_t sub_10007499C(unint64_t *a1)
{

  return sub_1000748A0(a1);
}

uint64_t sub_1000749C0(uint64_t a1)
{

  return sub_1000028A0(v1, 1, 1, a1);
}

uint64_t sub_1000749E0()
{
  v1 = *(*(v0 - 256) + 104);
  result = *(v0 - 248);
  v3 = *(v0 - 240);
  return result;
}

uint64_t sub_100074A88()
{

  return sub_1000EBFB4();
}

uint64_t sub_100074AA8()
{

  return sub_1000EBFB4();
}

uint64_t sub_100074AC8(uint64_t a1)
{
  *(v1 - 416) = a1;
}

uint64_t sub_100074AE0(uint64_t a1)
{
  *(v1 - 400) = a1;
}

uint64_t sub_100074B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_100074B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RainInlineTruncateFallbackText()
{
  result = qword_100132A68;
  if (!qword_100132A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100074C1C@<X0>(_BYTE *a1@<X8>)
{
  *a1 = sub_1000EA534();
  v2 = sub_100002A10(&qword_100132AA0, &qword_1000F41F0);
  return sub_100074C68(&a1[*(v2 + 44)]);
}

uint64_t sub_100074C68@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_100002A10(&qword_100132AA8, &qword_1000F41F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v41 = &v38 - v3;
  v4 = sub_100002A10(&qword_100132AB0, &qword_1000F4200);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v38 - v8;
  v9 = sub_1000E8444();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v39 = &v38 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v38 - v17;
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v42 = sub_100002A10(&qword_100132AB8, &qword_1000F4208);
  v21 = *(*(v42 - 8) + 64);
  v22 = __chkstk_darwin(v42);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v38 - v25;
  sub_1000EB4A4();
  sub_1000EA5F4();
  sub_1000E8424();

  v40 = v10;
  v27 = *(v10 + 8);
  v28 = v18;
  v29 = v41;
  v27(v28, v9);
  sub_1000750E0(v20, v26);
  v27(v20, v9);
  sub_1000EB4D4();
  if (sub_100005B30(v29, 1, v9) == 1)
  {
    sub_100075604(v29);
    v30 = 1;
    v31 = v43;
  }

  else
  {
    sub_1000EA5F4();
    v32 = v38;
    sub_1000E8424();

    v27(v29, v9);
    v33 = v39;
    (*(v40 + 32))(v39, v32, v9);
    sub_1000750E0(v33, v24);
    v27(v33, v9);
    v31 = v43;
    sub_10007566C(v24, v43);
    v30 = 0;
  }

  sub_1000028A0(v31, v30, 1, v42);
  sub_10000EBC4(v26, v24, &qword_100132AB8, &qword_1000F4208);
  v34 = v44;
  sub_10000EBC4(v31, v44, &qword_100132AB0, &qword_1000F4200);
  v35 = v45;
  sub_10000EBC4(v24, v45, &qword_100132AB8, &qword_1000F4208);
  v36 = sub_100002A10(&qword_100132AC0, &qword_1000F4210);
  sub_10000EBC4(v34, v35 + *(v36 + 48), &qword_100132AB0, &qword_1000F4200);
  sub_100008E48(v31, &qword_100132AB0, &qword_1000F4200);
  sub_100008E48(v26, &qword_100132AB8, &qword_1000F4208);
  sub_100008E48(v34, &qword_100132AB0, &qword_1000F4200);
  return sub_100008E48(v24, &qword_100132AB8, &qword_1000F4208);
}

uint64_t sub_1000750E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1000EA4E4();
  v4 = sub_1000090D4(v3);
  v28 = v5;
  v29 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_100132AC8, &qword_1000F4218);
  v30 = sub_1000090D4(v10);
  v31 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v30);
  v15 = &v27 - v14;
  v16 = sub_1000EA2E4();
  sub_100075388(a1, &v35);
  v17 = v35;
  v18 = v36;
  v20 = v37;
  v19 = v38;
  v21 = v40;
  v47 = 1;
  v46 = v39;
  v45 = v41;
  v35 = v16;
  v36 = 0;
  LOBYTE(v37) = 1;
  v38 = v17;
  v39 = v18;
  v40 = v20;
  v41 = v19;
  v42 = v46;
  v43 = v21;
  v44 = v45;
  sub_1000EA4B4();
  v22 = sub_100002A10(&qword_100132AD0, &qword_1000F4220);
  v23 = sub_100006988(&qword_100132AD8, &qword_100132AD0, &qword_1000F4220);
  sub_1000EA914();
  (*(v28 + 8))(v9, v29);
  sub_1000756D4(v17, v18, v20);
  v35 = sub_1000EB4E4();
  v36 = v24;
  v33 = v22;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v25 = v30;
  sub_1000EA8E4();

  return (*(v31 + 8))(v15, v25);
}

uint64_t sub_100075388@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000EA344();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000E8444();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB4C4();
  if (v11)
  {
    sub_1000EA334();
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    sub_1000EA324(v33);
    sub_1000EAA24();
    sub_1000EA304();

    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    sub_1000EA324(v34);
    sub_1000EA2F4();
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_1000EA324(v35);
    sub_1000EA364();
    v25 = sub_1000EA7F4();
    v26 = v12;
    v27 = v13 & 1;
    v28 = v14;
    v29 = 0;
  }

  else
  {
    (*(v7 + 16))(v10, a1, v6);
    v25 = sub_1000EA804();
    v26 = v16;
    v27 = v15 & 1;
    v28 = v17;
    v29 = 1;
  }

  sub_1000EA4A4();
  v18 = v30;
  v19 = v31;
  v20 = v32;
  *a2 = v30;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v21 = v18;
  v22 = v19;
  sub_100075710(v18, *(&v18 + 1), v19);
  return sub_1000756D4(v21, *(&v21 + 1), v22);
}

uint64_t sub_100075604(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100132AA8, &qword_1000F41F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007566C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100132AB8, &qword_1000F4208);
  sub_1000069E4(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000756D4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000058EC(a1, a2, a3 & 1);
}

uint64_t sub_100075710(uint64_t a1, uint64_t a2, char a3)
{
  sub_10000673C(a1, a2, a3 & 1);
}

uint64_t sub_100075790@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = sub_1000E8F64();
  v3 = sub_1000090D4(v2);
  v94 = v4;
  v95 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v93 = v8 - v7;
  v90 = sub_1000E8E84();
  v9 = sub_1000090D4(v90);
  v88 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v91 = v14 - v13;
  v92 = sub_1000E8784();
  v15 = sub_1000090D4(v92);
  v89 = v16;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v86 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v87 = v85 - v21;
  v22 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v85 - v24;
  v26 = type metadata accessor for AirQualityViewModel();
  v27 = sub_1000069E4(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100006A10();
  v96 = v31 - v30;
  v32 = type metadata accessor for AggregateWeatherViewModel(0);
  v33 = sub_1000069E4(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100006A10();
  v38 = v37 - v36;
  v39 = type metadata accessor for WeatherDataViewModel();
  v40 = sub_1000069E4(v39);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v45 = v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = v85 - v46;
  v48 = type metadata accessor for ForecastEntry.Model(0);
  v49 = sub_1000069E4(v48);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_100006A10();
  v54 = (v53 - v52);
  v55 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v55 + 28), v54, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100075F9C(v54, v47, type metadata accessor for WeatherDataViewModel);
    sub_10000DA34(v47, v45, type metadata accessor for WeatherDataViewModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100076054();
      sub_100075FFC(v45, v56);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v57 = sub_1000E9F64();
      sub_100008CB8(v57, qword_100145C10);
      v58 = sub_1000E9F44();
      v59 = sub_1000EC194();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Unexpectedly got instant weather instead of aggregate weather", v60, 2u);
      }

      sub_100076054();
      sub_100075FFC(v47, v61);
      goto LABEL_16;
    }

    sub_100075F9C(v45, v38, type metadata accessor for AggregateWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v66 = sub_1000E9F64();
    sub_100008CB8(v66, qword_100145C10);
    v67 = sub_1000E9F44();
    v68 = sub_1000EC1B4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Making AirQuality complication view model entry from aggregate weather", v69, 2u);
    }

    sub_100075EC4(v38 + *(v32 + 36), v25);
    if (sub_100005B30(v25, 1, v26) == 1)
    {
      sub_10007606C();
      sub_100076054();
      sub_100075FFC(v47, v70);
      sub_100075F34(v25);
LABEL_16:
      v63 = sub_1000EB8F4();
      goto LABEL_17;
    }

    sub_100075F9C(v25, v96, type metadata accessor for AirQualityViewModel);
    v72 = *(v32 + 20);
    sub_1000E9A34();
    v73 = sub_1000E9984();
    v75 = v74;
    if (v73 != sub_1000E9984() || v75 != v76)
    {
      sub_1000EC5D4();
    }

    v78 = v87;
    sub_1000E9A74();
    v79 = v89;
    v80 = v92;
    (*(v89 + 16))(v86, v78, v92);
    v81 = v26[7];
    v82 = v96;
    v85[1] = *(v96 + v26[6]);
    (*(v88 + 16))(v91, v96 + v81, v90);
    (*(v94 + 16))(v93, v82 + v26[8], v95);
    v83 = v97;
    sub_1000EB8E4();
    (*(v79 + 8))(v78, v80);
    sub_100075FFC(v82, type metadata accessor for AirQualityViewModel);
    sub_10007606C();
    sub_100076054();
    sub_100075FFC(v47, v84);
    v63 = sub_1000EB8F4();
    v64 = v83;
    v65 = 0;
  }

  else
  {
    v62 = *v54;
    v63 = sub_1000EB8F4();
    if (v62)
    {
LABEL_17:
      v64 = v97;
      v65 = 1;
      return sub_1000028A0(v64, v65, 2, v63);
    }

    v64 = v97;
    v65 = 2;
  }

  return sub_1000028A0(v64, v65, 2, v63);
}

uint64_t sub_100075EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075F34(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100075F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100075FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10007606C()
{

  return sub_100075FFC(v0, type metadata accessor for AggregateWeatherViewModel);
}

id sub_1000761AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1000EBE64();

  return v3;
}

id sub_100076200()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

double sub_10007628C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = sub_1000EA5C4();
  sub_1000EA5A4();
  v7 = v6;
  v8 = sub_1000763A8(a1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v4)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    sub_1000EA354();
    v15 = sub_1000EA7F4();
    v17 = v19 & 1;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  result = fmin(15.0 / v7, 0.1);
  *(a2 + 56) = v18;
  *(a2 + 64) = v5;
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_1000763A8(unsigned __int8 a1)
{
  if (a1 - 1 >= 2 && a1)
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E9F64();
    sub_100008CB8(v2, qword_100145C10);
    v3 = sub_1000E9F44();
    v4 = sub_1000EC1B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected error while building a home screen widget", v5, 2u);
    }

    return 11565;
  }

  else
  {
    sub_1000EA354();
    return sub_1000EA7F4();
  }
}

uint64_t sub_10007653C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_1000EA3B4();
  v9 = sub_1000090D4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EBC44();
  v17 = sub_1000090D4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, a1, v16);
  (*(v11 + 16))(v15, a2, v8);
  v24 = sub_100026CB4(v23, v15, a3, a4);
  (*(v11 + 8))(a2, v8);
  (*(v19 + 8))(a1, v16);
  return v24;
}

uint64_t type metadata accessor for ErrorViewAttributesFactory()
{
  result = qword_100132B40;
  if (!qword_100132B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100076750@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v142 = a2;
  v141 = a3;
  v4 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  v5 = sub_100009210(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000D45C();
  v132 = v8;
  sub_10004B6F4();
  __chkstk_darwin(v9);
  sub_10000D4D0();
  v134 = v10;
  sub_10004B6F4();
  __chkstk_darwin(v11);
  sub_10000D56C();
  v136 = v12;
  sub_10000921C();
  v13 = sub_1000E9F04();
  v14 = sub_1000090D4(v13);
  v138 = v15;
  v139 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10000D45C();
  v131 = v18;
  sub_10004B6F4();
  __chkstk_darwin(v19);
  sub_10000D4D0();
  v133 = v20;
  sub_10004B6F4();
  __chkstk_darwin(v21);
  sub_10000D56C();
  v135 = v22;
  sub_10000921C();
  v23 = sub_1000E8604();
  v24 = sub_100009210(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_10004B3F0();
  v144 = v27;
  v28 = sub_10000921C();
  v29 = type metadata accessor for AggregateWeatherViewModel(v28);
  sub_1000326A0(v29);
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  sub_100006A10();
  v35 = v34 - v33;
  v137 = sub_1000E9E94();
  v36 = sub_1000090D4(v137);
  v145 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_10000D45C();
  v130 = v40;
  sub_10004B6F4();
  v42 = __chkstk_darwin(v41);
  v44 = &v129 - v43;
  __chkstk_darwin(v42);
  v46 = &v129 - v45;
  v47 = sub_1000E8784();
  v48 = sub_1000090D4(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  __chkstk_darwin(v48);
  sub_1000091AC();
  v55 = v53 - v54;
  __chkstk_darwin(v56);
  v58 = &v129 - v57;
  v59 = a1 + *(v29 + 20);
  sub_1000E9A74();
  v60 = v47;
  sub_10007C9D8(a1, v35);
  v140 = v50;
  v61 = *(v50 + 16);
  v143 = v58;
  v62 = v58;
  v63 = v44;
  v61(v55, v62, v47);
  sub_1000E85B4();
  sub_10007CB00(&qword_100132C28, type metadata accessor for AggregateWeatherViewModel);
  sub_10007CEA0();
  v64 = v137;
  v65 = v145;
  sub_1000E9E74();
  v66 = *(v65 + 16);
  v144 = v46;
  v66(v44, v46, v64);
  v67 = (*(v65 + 88))(v44, v64);
  if (v67 == enum case for NextPrecipitation.in60Minutes(_:))
  {
    v68 = sub_10007CD1C();
    v69(v68);
    v71 = v138;
    v70 = v139;
    v72 = v135;
    (*(v138 + 4))(v135, v63, v139);
    v73 = v136;
    v74 = v142;
    sub_100077524(v72, v142, 0, 0, v136);
    (*(v71 + 1))(v72, v70);
    v75 = sub_1000EB504();
    v76 = sub_10007CD98();
    sub_10000D4FC(v76, v77, v75);
    if (!v78)
    {
      v91 = sub_10007CD54();
      v92(v91);
      v93 = *(v140 + 8);
      v94 = v143;
LABEL_9:
      v93(v94, v60);
      sub_1000326A0(v75);
      return (*(v95 + 32))(v141, v73, v75);
    }

    sub_100032054(v73, &qword_10012FBC0, &unk_1000F6860);
  }

  else
  {
    v80 = v138;
    v79 = v139;
    if (v67 == enum case for NextPrecipitation.in24Hours(_:))
    {
      v81 = sub_10007CD1C();
      v82(v81);
      v83 = v80;
      v84 = *(v80 + 4);
      v85 = v133;
      v86 = sub_10007CE10();
      v87(v86);
      v88 = v134;
      v74 = v142;
      sub_100078D8C(v85, v142, v134);
      (*(v83 + 1))(v85, v79);
      v89 = sub_1000EB504();
      sub_10000D4FC(v88, 1, v89);
      if (!v78)
      {
        v104 = sub_10007CD54();
        v105(v104);
        v106 = sub_10007CDD0();
        v107(v106, v60);
        sub_1000326A0(v89);
        return (*(v108 + 32))(v141, v88, v89);
      }

      v90 = v88;
    }

    else
    {
      v74 = v142;
      v96 = v143;
      if (v67 != enum case for NextPrecipitation.in10Days(_:))
      {
        if (v67 != enum case for NextPrecipitation.noneIn10Days(_:))
        {
          v139 = v60;
          if (qword_10012EB28 != -1)
          {
            sub_10007CCD4();
          }

          v138 = v63;
          v110 = sub_1000E9F64();
          sub_100008CB8(v110, qword_100145BE0);
          v66(v130, v144, v64);
          v111 = sub_1000E9F44();
          v112 = sub_1000EC194();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            v136 = v113;
            v114 = swift_slowAlloc();
            v146 = v114;
            *v113 = 136315138;
            sub_10007CB00(&qword_100132C30, &type metadata accessor for NextPrecipitation);
            v115 = sub_1000EC5B4();
            v116 = v64;
            v118 = v117;
            v119 = sub_10007CDE0();
            (v65)(v119, v116);
            v120 = sub_1000E2E18(v115, v118, &v146);
            v64 = v116;

            v121 = v136;
            *(v136 + 4) = v120;
            _os_log_impl(&_mh_execute_header, v111, v112, "Unknown nextPrecipitationEventModel case in makePrecipitationModel: %s", v121, 0xCu);
            sub_100009068(v114);
            v74 = v142;
            sub_100009194();
            sub_100009194();
          }

          else
          {

            v124 = sub_10007CDE0();
            (v65)(v124, v64);
          }

          v60 = v139;
          (v65)(v138, v64);
        }

        goto LABEL_22;
      }

      v97 = sub_10007CD1C();
      v98(v97);
      v99 = v80;
      v100 = *(v80 + 4);
      v101 = v131;
      v100(v131, v63, v79);
      v73 = v132;
      sub_100079BA0(v101, v96, v74, v132);
      (*(v99 + 1))(v101, v79);
      v75 = sub_1000EB504();
      v102 = sub_10007CD98();
      sub_10000D4FC(v102, v103, v75);
      if (!v78)
      {
        v122 = sub_10007CD54();
        v123(v122);
        v94 = sub_10007CDD0();
        goto LABEL_9;
      }

      v90 = v73;
    }

    sub_100032054(v90, &qword_10012FBC0, &unk_1000F6860);
  }

LABEL_22:
  sub_10007B2A8(v74, v141);
  v125 = sub_10007CD54();
  v126(v125);
  v127 = sub_10007CDD0();
  return v128(v127, v60);
}

uint64_t sub_100077014@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v71 = a3;
  v72 = a4;
  v70 = a2;
  v7 = sub_100002A10(&qword_100132BF8, &qword_1000F4290);
  sub_100009210(v7);
  v9 = *(v8 + 64);
  sub_100009204();
  __chkstk_darwin(v10);
  v12 = &v64 - v11;
  v13 = sub_1000E9F04();
  v14 = sub_1000090D4(v13);
  v68 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10004B3F0();
  v67 = v18;
  sub_10000921C();
  v19 = sub_1000E8604();
  v20 = sub_100009210(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_100006A10();
  v23 = sub_1000E8784();
  v24 = sub_1000090D4(v23);
  v65 = v25;
  v66 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_100006A10();
  v30 = v29 - v28;
  v31 = sub_100002A10(&qword_100132C00, &qword_1000F4298);
  v32 = sub_100009210(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_1000091AC();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  v40 = &v64 - v39;
  v41 = type metadata accessor for AggregateWeatherViewModel(0);
  v73 = *(a1 + *(v41 + 28));
  v42 = *(v41 + 20);

  v69 = a1;
  sub_1000E9A74();
  sub_1000E85B4();
  sub_100002A10(&qword_100130F28, &qword_1000F42A0);
  v43 = v71;
  sub_100006988(&qword_100131038, &qword_100130F28, &qword_1000F42A0);
  sub_10007CB00(&qword_100131030, &type metadata accessor for HourlyForecastBannerViewModel);
  sub_1000E9E64();
  v44 = sub_10007CEA0();
  sub_100031FF0(v44, v45, &qword_100132C00, &qword_1000F4298);
  v46 = sub_1000E9E94();
  sub_10000D4FC(v37, 1, v46);
  if (v51)
  {
    sub_100032054(v37, &qword_100132C00, &qword_1000F4298);
    sub_10000D52C();
    sub_1000028A0(v47, v48, v49, v13);
  }

  else
  {
    sub_1000E9E84();
    sub_1000326A0(v46);
    (*(v50 + 8))(v37, v46);
    sub_10000D4FC(v12, 1, v13);
    if (!v51)
    {
      v62 = v67;
      v61 = v68;
      (*(v68 + 32))(v67, v12, v13);
      sub_1000E9A74();
      sub_100078D8C(v62, v70, v72);
      (*(v65 + 8))(v30, v66);
      (*(v61 + 8))(v62, v13);
      return sub_100032054(v40, &qword_100132C00, &qword_1000F4298);
    }
  }

  sub_100032054(v12, &qword_100132BF8, &qword_1000F4290);
  if (qword_10012EB28 != -1)
  {
    sub_10007CCD4();
  }

  v52 = sub_1000E9F64();
  v53 = sub_100008CB8(v52, qword_100145BE0);
  v54 = sub_1000E9F44();
  v55 = sub_1000EC1B4();
  if (sub_100009178(v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134218240;
    *(v56 + 4) = v43;
    *(v56 + 12) = 2048;
    *(v56 + 14) = a5;
    _os_log_impl(&_mh_execute_header, v54, v53, "No precipitation occurring in the next %ld hours(s), with precip threshold %f", v56, 0x16u);
    sub_100009194();
  }

  sub_100032054(v40, &qword_100132C00, &qword_1000F4298);
  sub_1000EB504();
  sub_10000D52C();
  return sub_1000028A0(v57, v58, v59, v60);
}

uint64_t sub_100077524@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, NSDateComponentsFormatterUnitsStyle a5@<X8>)
{
  v304 = a4;
  v300 = a3;
  v325 = a2;
  v7 = a2;
  v324 = sub_1000E8444();
  v8 = sub_1000090D4(v324);
  v311 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v12);
  sub_10000D56C();
  v319 = v13;
  sub_10000921C();
  *&v297 = sub_1000E9F04();
  v14 = sub_1000090D4(v297);
  v296 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10004B3F0();
  v295 = v18;
  v19 = sub_100002A10(&qword_100132C38, &qword_1000F42C0);
  sub_100009210(v19);
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  v298 = &v291 - v23;
  sub_10000921C();
  v24 = sub_1000E8484();
  v25 = sub_100009210(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_10004B3F0();
  v309 = v28;
  sub_10000921C();
  v29 = sub_1000EBE54();
  v30 = sub_1000090D4(v29);
  v320 = v31;
  v321 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v34);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v35);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v36);
  sub_10000D4D0();
  sub_10000D408();
  v38 = __chkstk_darwin(v37);
  v40 = &v291 - v39;
  __chkstk_darwin(v38);
  v42 = &v291 - v41;
  v43 = sub_1000E8684();
  v44 = sub_1000090D4(v43);
  v316 = v45;
  v317 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_10004B3F0();
  v315 = v48;
  sub_10000921C();
  v49 = sub_1000E86A4();
  v50 = sub_1000090D4(v49);
  v313 = v51;
  v314 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v50);
  sub_10004B3F0();
  v312 = v54;
  v55 = sub_100002A10(&qword_100132AA8, &qword_1000F41F8);
  v56 = sub_100009210(v55);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v59);
  sub_10000D4D0();
  v318 = v60;
  sub_10004B6F4();
  __chkstk_darwin(v61);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v62);
  sub_10000D4D0();
  v323 = v63;
  sub_10004B6F4();
  __chkstk_darwin(v64);
  sub_10000D56C();
  v322 = v65;
  sub_10000921C();
  v66 = sub_1000E8E24();
  v67 = sub_1000090D4(v66);
  v326 = v68;
  v327 = v67;
  v70 = *(v69 + 64);
  __chkstk_darwin(v67);
  sub_100006A10();
  v73 = v72 - v71;
  v74 = sub_1000E9ED4();
  v75 = sub_1000090D4(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  __chkstk_darwin(v75);
  sub_1000091AC();
  v82 = (v80 - v81);
  __chkstk_darwin(v83);
  v328 = a1;
  if (v7 == 2 && (sub_1000E9EF4(), v84 = sub_1000E9EC4(), v85 = sub_10007CD64(), v86(v85), (v84 & 1) != 0))
  {
    v87 = 0xEE006C6C69662E6ELL;
    v293 = 0x75732E64756F6C63;
  }

  else
  {
    sub_1000E9EA4();
    v88 = sub_10007EF38();
    v87 = v89;
    (*(v326 + 8))(v73, v327);
    if (!v87)
    {
      goto LABEL_71;
    }

    v293 = v88;
    if (v325 != 2)
    {
      goto LABEL_10;
    }
  }

  sub_1000E9EF4();
  v90 = sub_1000E9EC4();
  v91 = sub_10007CD64();
  v92(v91);
  if (v90)
  {
    v301 = a5;
    if (qword_10012EBF8 != -1)
    {
      sub_10007CCB4();
    }

    v93 = qword_100145E00;
    v290._countAndFlagsBits = 0x80000001000FD780;
    v330._countAndFlagsBits = 0x676E6970706F7473;
    v330._object = 0xE800000000000000;
    v292 = sub_10007CE40(v330, v94, v95, v96, v97, v98, 0xD00000000000005CLL, v290);
    v310 = v99;

    goto LABEL_12;
  }

LABEL_10:
  sub_10007CE28();
  v292 = sub_10007F148();
  v93 = v100;
  (*(v326 + 8))(v73, v327);
  v310 = v93;
  if (!v93)
  {

    goto LABEL_71;
  }

  v301 = a5;
LABEL_12:
  v101 = NSDateComponentsFormatterUnitsStyleAbbreviated;
  sub_10000D52C();
  sub_1000028A0(v102, v103, v104, v105);
  if (!v325)
  {
    sub_10007CEF8();
    v106 = v315;
    sub_1000E8694();
    (*(v313 + 8))(v93, v314);
    v107 = sub_1000E8674();
    (*(v316 + 8))(v106, v317);
    if (v107)
    {
      v101 = NSDateComponentsFormatterUnitsStyleBrief;
    }

    else
    {
      v101 = NSDateComponentsFormatterUnitsStyleShort;
    }
  }

  v108 = v328;
  sub_1000E9EF4();
  v109 = v77[11];
  v110 = sub_10007CE10();
  v112 = v111(v110);
  if (v112 == enum case for PrecipitationEvent.StartStop.start(_:))
  {
    v113 = v77[12];
    v114 = sub_10007CE10();
    v115(v114);
    v116 = v82->n128_u64[0];
    v117 = sub_1000EC0C4(v101);
    v294 = v87;
    if (v118)
    {
      v119 = v117;
      v120 = v118;
      sub_1000EBE44();
      sub_100002A10(&qword_100130558, &qword_1000F0D00);
      v121 = sub_10007CEE0();
      v307 = xmmword_1000EFAD0;
      *(v121 + 16) = xmmword_1000EFAD0;
      v308 = v119;
      *(v121 + 32) = v119;
      *(v121 + 40) = v120;
      (*(v320 + 16))(v40, v42, v321);
      v122 = qword_10012EBF8;

      if (v122 != -1)
      {
        sub_10007CCB4();
      }

      v123 = v325;
      v124 = qword_100145E00;
      if (v123 || (sub_10007CEF8(), v101 = v315, sub_1000E8694(), (*(v313 + 8))(v123, v314), v125 = sub_1000E8674(), (*(v316 + 8))(v101, v317), (v125 & 1) == 0))
      {
        sub_100002A10(&qword_100132C10, &qword_1000F42A8);
        v148 = sub_1000EB2F4();
        sub_1000090D4(v148);
        v150 = v149;
        v152 = *(v151 + 72);
        v101 = (*(v149 + 80) + 32) & ~*(v149 + 80);
        v153 = swift_allocObject();
        *(v153 + 16) = v307;
        v154 = *(v150 + 104);
        v82 = (v150 + 104);
        v154(v153 + v101, enum case for StyledVariableAttribute.Style.lowercaseSmallCaps(_:), v148);
      }

      sub_10007CDF8();
      v155 = v322;
      sub_1000E8414();
      v74 = v155;

      v156 = *(v320 + 8);
      v157 = v40;
      v158 = v321;
      v156(v157, v321);
      v156(v42, v158);
      v159 = sub_10007CED4();
      sub_10007CDA4(v159, v160);
      v161 = qword_100145E00;
      v290._countAndFlagsBits = 0x80000001000FD690;
      v331._countAndFlagsBits = 0x206E692040243125;
      v331._object = 0xEC00000040243225;
      sub_10007CE40(v331, v162, v163, v164, v165, v166, 0xD0000000000000E1, v290);

      sub_100002A10(&qword_100132C18, &unk_1000F42B0);
      v167 = swift_allocObject();
      *(v167 + 16) = xmmword_1000F03E0;
      sub_10007CE28();
      v108 = sub_1000E8E14();
      v169 = v168;
      v170 = sub_10007CCF4();
      v171(v170);
      *(v167 + 56) = &type metadata for String;
      v172 = sub_10007C984();
      *(v167 + 32) = v108;
      *(v167 + 40) = v169;
      *(v167 + 96) = &type metadata for String;
      *(v167 + 104) = v172;
      v173 = v308;
      *(v167 + 64) = v172;
      *(v167 + 72) = v173;
      *(v167 + 80) = v120;
      sub_1000EBEB4();
      sub_10007CE1C();

      goto LABEL_58;
    }

    sub_10007CE28();
    sub_10007C308(v73, v325);
    sub_10007CE1C();
    v178 = sub_10007CCF4();
    v179(v178);
    sub_10007CDF8();
    v82 = v324;
    v180 = v318;
    if (v108)
    {

      sub_1000E8474();
      sub_10007CD40();
      sub_1000E8454();
      v181 = sub_10007CED4();
    }

    else
    {
      v181 = sub_10007CDC0();
    }

    sub_1000028A0(v181, v182, 1, v82);
LABEL_62:
    v246 = v323;
    v261 = v319;
    goto LABEL_63;
  }

  if (v112 == enum case for PrecipitationEvent.StartStop.stop(_:))
  {
    v126 = v77[12];
    v127 = sub_10007CE10();
    v128(v127);
    v129 = v82->n128_u64[0];
    v130 = sub_1000EC0C4(v101);
    v294 = v87;
    if (v131)
    {
      v132 = v130;
      v133 = v131;
      v134 = v305;
      sub_1000EBE44();
      sub_100002A10(&qword_100132C40, &qword_1000F42C8);
      v135 = sub_100002A10(&qword_100132C48, &unk_1000F42D0);
      v296 = v133;
      v136 = v135 - 8;
      v137 = *(*(v135 - 8) + 72);
      v138 = (*(*(v135 - 8) + 80) + 32) & ~*(*(v135 - 8) + 80);
      v139 = swift_allocObject();
      v297 = xmmword_1000EFAD0;
      *(v139 + 16) = xmmword_1000EFAD0;
      v140 = *(v136 + 56);
      v141 = v296;
      *(v139 + v138) = 2;
      sub_1000EBE44();
      sub_10007CA3C();
      v142 = v321;
      v143 = sub_1000EBDE4();
      v295 = sub_100002A10(&qword_100130558, &qword_1000F0D00);
      v82 = sub_10007CEE0();
      sub_10007CD30(v82);
      *(v144 + 32) = v132;
      *(v144 + 40) = v141;
      v145 = v298;
      sub_1000A0594(v325, v143, v298);
      sub_10000D4FC(v145, 1, v142);
      if (v146)
      {
        (*(v320 + 16))(v306, v134, v142);
        v147 = sub_100005B30(v145, 1, v142);

        if (v147 != 1)
        {
          sub_100032054(v145, &qword_100132C38, &qword_1000F42C0);
        }
      }

      else
      {
        (*(v320 + 32))(v306, v145, v142);
      }

      if (qword_10012EBF8 != -1)
      {
        sub_10007CCB4();
      }

      v298 = v132;
      v207 = v325;
      v208 = qword_100145E00;
      if (v207 || (sub_10007CEF8(), v209 = v315, sub_1000E8694(), (*(v313 + 8))(v145, v314), v210 = sub_1000E8674(), (*(v316 + 8))(v209, v317), (v210 & 1) == 0))
      {
        sub_100002A10(&qword_100132C10, &qword_1000F42A8);
        v211 = sub_1000EB2F4();
        sub_1000090D4(v211);
        v213 = v212;
        v215 = *(v214 + 72);
        v216 = (*(v212 + 80) + 32) & ~*(v212 + 80);
        v217 = swift_allocObject();
        v218 = sub_10007CD30(v217);
        (*(v213 + 104))(v219 + v216, enum case for StyledVariableAttribute.Style.lowercaseSmallCaps(_:), v211, v218);
        v142 = v321;
      }

      v220 = v325;
      v221 = v322;
      v222 = v306;
      sub_1000E8414();

      v223 = v320;
      v224 = *(v320 + 8);
      v224(v222, v142);
      v224(v305, v142);
      sub_10007CDA4(v221, 0);
      v225 = v307;
      sub_1000EBE44();
      v226 = sub_10007CEE0();
      v227 = sub_10007CD30(v226);
      v228 = v296;
      *(v229 + 32) = v298;
      *(v229 + 40) = v228;
      (*(v223 + 16))(v308, v225, v142, v227);
      v230 = qword_100145E00;

      v231 = v230;
      if (v220 || (sub_10007CEF8(), v232 = v315, sub_1000E8694(), (*(v313 + 8))(v230, v314), v233 = sub_1000E8674(), (*(v316 + 8))(v232, v317), (v233 & 1) == 0))
      {
        sub_100002A10(&qword_100132C10, &qword_1000F42A8);
        v234 = sub_1000EB2F4();
        sub_1000090D4(v234);
        v236 = v235;
        v238 = *(v237 + 72);
        v239 = (*(v235 + 80) + 32) & ~*(v235 + 80);
        v240 = swift_allocObject();
        v241 = sub_10007CD30(v240);
        v243 = v234;
        v142 = v321;
        (*(v236 + 104))(v242 + v239, enum case for StyledVariableAttribute.Style.lowercaseSmallCaps(_:), v243, v241);
        v82 = v324;
      }

      v244 = v299;
      v245 = v308;
      sub_1000E8414();

      v224(v245, v142);
      v224(v307, v142);
      v246 = v323;
      sub_100032054(v323, &qword_100132AA8, &qword_1000F41F8);
      sub_1000028A0(v244, 0, 1, v82);
      sub_10007CA90(v244, v246);
      v247 = qword_100145E00;
      v332._countAndFlagsBits = 0xD000000000000012;
      v290._countAndFlagsBits = 0x80000001000FD5B0;
      v332._object = 0x80000001000FD590;
      sub_10007CE64(v332, v248, v249, v250, v251, v252, 0xD0000000000000DELL, v290);
      v101 = v253;

      sub_100002A10(&qword_100132C18, &unk_1000F42B0);
      v254 = swift_allocObject();
      *(v254 + 16) = xmmword_1000F03E0;
      sub_10007CE28();
      v108 = sub_1000E8E14();
      v256 = v255;
      v257 = sub_10007CCF4();
      v258(v257);
      *(v254 + 56) = &type metadata for String;
      v259 = sub_10007C984();
      *(v254 + 32) = v108;
      *(v254 + 40) = v256;
      *(v254 + 96) = &type metadata for String;
      *(v254 + 104) = v259;
      v260 = v298;
      *(v254 + 64) = v259;
      *(v254 + 72) = v260;
      *(v254 + 80) = v296;
      sub_1000EBEB4();
      sub_10007CE1C();

      sub_10007CDF8();
      v261 = v319;
      v74 = v322;
      goto LABEL_59;
    }

    sub_10007CE28();
    sub_10007C308(v73, v325);
    sub_10007CE1C();
    v203 = sub_10007CCF4();
    v204(v203);
    v180 = v318;
    if (v108)
    {

      v101 = v309;
      sub_1000E8474();
      sub_10007CD40();
      sub_1000E8454();
      v205 = sub_10007CED4();
    }

    else
    {
      v205 = sub_10007CDC0();
    }

    sub_10007CDA4(v205, v206);
    sub_10007CDF8();
    goto LABEL_62;
  }

  v101 = v301;
  if (v112 == enum case for PrecipitationEvent.StartStop.constant(_:))
  {
    v294 = v87;
    sub_10007CE28();
    sub_10007C308(v73, v325);
    sub_10007CE1C();
    v174 = sub_10007CCF4();
    v175(v174);
    if (v108)
    {

      sub_1000E8474();
      sub_10007CD40();
      sub_1000E8454();
      v176 = sub_10007CED4();
    }

    else
    {
      v176 = sub_10007CDC0();
    }

    sub_10007CDA4(v176, v177);
LABEL_58:
    v246 = v323;
    v261 = v319;
LABEL_59:
    v180 = v318;
LABEL_63:
    sub_100031FF0(v74, v180, &qword_100132AA8, &qword_1000F41F8);
    sub_10000D4FC(v180, 1, v82);
    if (v146)
    {

      sub_100032054(v246, &qword_100132AA8, &qword_1000F41F8);
      v246 = v74;
    }

    else
    {
      v270 = v101;
      v271 = v311 + 32;
      (*(v311 + 32))(v261, v180, v82);
      v272 = (v271 - 24);
      if (v108)
      {
        v273 = v270;
        if (v304)
        {
          swift_bridgeObjectRetain_n();

          sub_1000E8474();
          sub_1000E8454();
          sub_10000D52C();
          sub_1000028A0(v274, v275, v276, v82);
          sub_10007CD78();
          sub_1000EB4B4();
          v277 = *v272;
          v278 = sub_10007CE04();
          v279(v278);
          sub_10007CE88(v246);
          sub_10007CE88(v74);
        }

        else
        {
          v286 = v311 + 16;
          (*(v311 + 16))(v303, v261, v82);
          sub_100031FF0(v246, v302, &qword_100132AA8, &qword_1000F41F8);
          sub_10007CD78();
          sub_1000EB4B4();
          v287 = *(v286 - 8);
          v288 = sub_10007CE04();
          v289(v288);
          sub_100032054(v246, &qword_100132AA8, &qword_1000F41F8);
          sub_10007CE88(v322);
        }

        v285 = sub_1000EB504();
        v283 = v273;
        v284 = 0;
        return sub_1000028A0(v283, v284, 1, v285);
      }

      v280 = *v272;
      v281 = sub_10007CE04();
      v282(v281);
      v180 = v74;
    }

    sub_10007CE88(v246);
    sub_10007CE88(v180);
LABEL_71:
    sub_1000EB504();
    v283 = sub_10007CD98();
    return sub_1000028A0(v283, v284, 1, v285);
  }

  v183 = v328;
  if (qword_10012EB28 != -1)
  {
    sub_10007CCD4();
  }

  v184 = sub_1000E9F64();
  v185 = sub_100008CB8(v184, qword_100145BE0);
  v186 = v296;
  v187 = v295;
  v188 = v297;
  (*(v296 + 16))(v295, v183, v297);
  v189 = sub_1000E9F44();
  v190 = sub_1000EC194();
  if (sub_100009178(v190))
  {
    v191 = swift_slowAlloc();
    v301 = v101;
    v192 = v191;
    v326 = v191;
    v328 = swift_slowAlloc();
    v329 = v328;
    *v192 = 136315138;
    LODWORD(v327) = v185;
    sub_1000E9EF4();
    sub_10007CD04();
    sub_10007CB00(v193, v194);
    v195 = sub_1000EC5B4();
    v196 = v188;
    v198 = v197;
    v199 = sub_10007CD64();
    v200(v199);
    (*(v186 + 8))(v187, v196);
    v201 = sub_1000E2E18(v195, v198, &v329);

    v202 = v326;
    *(v326 + 4) = v201;
    _os_log_impl(&_mh_execute_header, v189, v327, "Unknown PrecipitationStartStop case in makeNextHourPrecipitationModel: %s", v202, 0xCu);
    sub_100009068(v328);
    sub_100009194();
    sub_10007CDF8();
    sub_100009194();
  }

  else
  {

    (*(v186 + 8))(v187, v188);
  }

  sub_100032054(v323, &qword_100132AA8, &qword_1000F41F8);
  sub_1000EB504();
  sub_10000D52C();
  sub_1000028A0(v262, v263, v264, v265);
  v266 = v77[1];
  v267 = sub_10007CE10();
  return v268(v267);
}

uint64_t sub_100078D8C@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v198 = a3;
  v199 = a1;
  LODWORD(v190) = a2;
  v3 = a2;
  v4 = sub_1000E9F04();
  v5 = sub_1000090D4(v4);
  v196 = v6;
  v197 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10004B3F0();
  v195 = v9;
  v10 = sub_100002A10(&qword_100132AA8, &qword_1000F41F8);
  sub_100009210(v10);
  v12 = *(v11 + 64);
  sub_100009204();
  __chkstk_darwin(v13);
  v188 = &v176 - v14;
  sub_10000921C();
  v187 = sub_1000E8E24();
  v15 = sub_1000090D4(v187);
  v189 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_10000D45C();
  v184 = v19;
  sub_10004B6F4();
  __chkstk_darwin(v20);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v21);
  sub_10000D56C();
  v182 = v22;
  sub_10000921C();
  v23 = sub_1000EBE54();
  v24 = sub_1000090D4(v23);
  v191 = v25;
  v192 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v28);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v29);
  sub_10000D56C();
  v178 = v30;
  sub_10000921C();
  v31 = sub_1000E8444();
  v32 = sub_1000090D4(v31);
  v185 = v33;
  v186 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v36);
  sub_10000D56C();
  v194 = v37;
  sub_10000921C();
  v38 = sub_1000E9ED4();
  v39 = sub_1000090D4(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v39);
  sub_10000D45C();
  v193 = v44;
  sub_10004B6F4();
  __chkstk_darwin(v45);
  v47 = (&v176 - v46);
  v48 = sub_1000E8684();
  v49 = sub_1000090D4(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49);
  sub_100006A10();
  v54 = sub_1000E86A4();
  v55 = sub_1000090D4(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  __chkstk_darwin(v55);
  sub_100006A10();
  v62 = v61 - v60;
  v176 = v51;
  v177 = v57;
  if (v3)
  {
    v63 = NSDateComponentsFormatterUnitsStyleAbbreviated;
  }

  else
  {
    sub_1000E8644();
    sub_1000E8694();
    v64 = *(v57 + 8);
    v65 = sub_10007CE04();
    v66(v65);
    v67 = sub_1000E8674();
    v68 = *(v51 + 8);
    v69 = sub_10007CEA0();
    v70(v69);
    if (v67)
    {
      v63 = NSDateComponentsFormatterUnitsStyleBrief;
    }

    else
    {
      v63 = NSDateComponentsFormatterUnitsStyleShort;
    }
  }

  sub_1000E9EF4();
  if ((*(v41 + 88))(v47, v38) != enum case for PrecipitationEvent.StartStop.start(_:))
  {
    v78 = *(v41 + 8);
    v78(v47, v38);
    if (qword_10012EB28 != -1)
    {
      sub_10007CCD4();
    }

    v79 = sub_1000E9F64();
    v80 = sub_100008CB8(v79, qword_100145BE0);
    v82 = v195;
    v81 = v196;
    v83 = v197;
    (*(v196 + 16))(v195, v199, v197);
    v75 = sub_1000E9F44();
    v84 = sub_1000EC194();
    if (!sub_100009178(v84))
    {

      (*(v81 + 8))(v82, v83);
      goto LABEL_24;
    }

    v85 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v200 = v199;
    *v85 = 136315138;
    v192 = v78;
    v86 = v193;
    LODWORD(v194) = v80;
    sub_1000E9EF4();
    sub_10007CD04();
    sub_10007CB00(v87, v88);
    v89 = sub_1000EC5B4();
    v91 = v90;
    v192(v86, v38);
    (*(v81 + 8))(v82, v83);
    v92 = sub_1000E2E18(v89, v91, &v200);

    *(v85 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v75, v194, "unexpectedly got startStop type: %s when calculating 24 hour precipitation string", v85, 0xCu);
    sub_100009068(v199);
    sub_100009194();
    goto LABEL_16;
  }

  (*(v41 + 96))(v47, v38);
  v71 = *v47;
  sub_1000E9EB4();
  if (v72)
  {
    if (qword_10012EB28 != -1)
    {
      sub_10007CCD4();
    }

    v73 = sub_1000E9F64();
    v74 = sub_100008CB8(v73, qword_100145BE0);
    v75 = sub_1000E9F44();
    v76 = sub_1000EC194();
    if (!sub_100009178(v76))
    {
      goto LABEL_17;
    }

    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v74, "unexpectedly got nil precipitation chance when calculating 24 hour precipitation string", v77, 2u);
LABEL_16:
    sub_100009194();
LABEL_17:

LABEL_24:
    v114 = sub_1000EB504();
    v115 = v198;
    v116 = 1;
    return sub_1000028A0(v115, v116, 1, v114);
  }

  v93 = sub_1000EC094(1);
  v95 = v94;
  v96 = sub_1000EC0B4(v63);
  if (v97)
  {
    v98 = v96;
    v99 = v97;
    v196 = v95;
    v197 = v93;
    v195 = v97;
    v193 = v96;
    if (v190 == 2)
    {
      v100 = v178;
      sub_1000EBE44();
      sub_100002A10(&qword_100130558, &qword_1000F0D00);
      v101 = sub_10007CEE0();
      v190 = xmmword_1000EFAD0;
      *(v101 + 16) = xmmword_1000EFAD0;
      *(v101 + 32) = v98;
      *(v101 + 40) = v99;
      v102 = qword_10012EBF8;

      if (v102 != -1)
      {
        sub_10007CCB4();
      }

      v103 = qword_100145E00;
      sub_100002A10(&qword_100132C10, &qword_1000F42A8);
      v104 = sub_1000EB2F4();
      sub_1000090D4(v104);
      v106 = v105;
      v108 = *(v107 + 72);
      v109 = *(v105 + 80);
      sub_10007CEC0();
      v110 = swift_allocObject();
      *(v110 + 16) = v190;
      (*(v106 + 104))(v110 + v62, enum case for StyledVariableAttribute.Style.lowercaseSmallCaps(_:), v104);
      v111 = v103;
      sub_1000E8414();

      (*(v191 + 8))(v100, v192);
      v112 = v187;
      v113 = &selRef_isProxy;
    }

    else
    {
      v122 = v180;
      sub_1000EBE44();
      sub_100002A10(&qword_100130558, &qword_1000F0D00);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_1000F03E0;
      *(v123 + 32) = v93;
      *(v123 + 40) = v95;
      *(v123 + 48) = v98;
      *(v123 + 56) = v99;
      (*(v191 + 16))(v181, v122, v192);
      v113 = &selRef_isProxy;
      v124 = qword_10012EBF8;

      if (v124 != -1)
      {
        sub_10007CCB4();
      }

      v125 = v190;
      v126 = qword_100145E00;
      v127 = v177;
      if (v125)
      {
        goto LABEL_31;
      }

      sub_1000E8644();
      sub_1000E8694();
      v128 = *(v127 + 8);
      v129 = sub_10007CE04();
      v130(v129);
      v131 = sub_1000E8674();
      v132 = *(v176 + 8);
      v133 = sub_10007CEA0();
      v134(v133);
      if ((v131 & 1) == 0)
      {
LABEL_31:
        sub_100002A10(&qword_100132C10, &qword_1000F42A8);
        v135 = sub_1000EB2F4();
        sub_1000090D4(v135);
        v137 = v136;
        v139 = *(v138 + 72);
        v140 = *(v136 + 80);
        sub_10007CEC0();
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_1000EFAD0;
        (*(v137 + 104))(v141 + v62, enum case for StyledVariableAttribute.Style.lowercaseSmallCaps(_:), v135);
      }

      v142 = v181;
      sub_1000E8414();

      v143 = *(v191 + 8);
      v144 = v142;
      v145 = v192;
      v143(v144, v192);
      v143(v180, v145);
      v112 = v187;
    }

    v146 = v193;
    if (v113[383] != -1)
    {
      sub_10007CCB4();
    }

    v147 = qword_100145E00;
    v175._countAndFlagsBits = 0x80000001000FD420;
    v201._object = 0x80000001000FD400;
    v201._countAndFlagsBits = 0xD000000000000013;
    sub_10007CE64(v201, v148, v149, v150, v151, v152, 0xD0000000000000DELL, v175);

    sub_100002A10(&qword_100132C18, &unk_1000F42B0);
    v153 = swift_allocObject();
    *(v153 + 16) = xmmword_1000F03E0;
    *(v153 + 56) = &type metadata for String;
    v154 = sub_10007C984();
    v155 = v196;
    *(v153 + 32) = v197;
    *(v153 + 40) = v155;
    *(v153 + 96) = &type metadata for String;
    *(v153 + 104) = v154;
    *(v153 + 64) = v154;
    *(v153 + 72) = v146;
    *(v153 + 80) = v195;
    v156 = sub_1000EBEB4();
    v196 = v157;
    v197 = v156;

    v158 = v182;
    v159 = v199;
    sub_1000E9EA4();
    sub_10007EF38();
    v161 = v160;
    v162 = v189;
    v163 = *(v189 + 8);
    v163(v158, v112);
    if (!v161)
    {
      v164 = *(v162 + 104);
      v165 = v179;
      v164(v179, enum case for Precipitation.mixed(_:), v112);
      sub_10007EF38();
      v163(v165, v112);
    }

    sub_1000E9EA4();
    sub_10007F148();
    v166 = sub_10007CEAC();
    (v163)(v166);
    if (!v159)
    {
      (*(v189 + 104))(v179, enum case for Precipitation.mixed(_:), v112);
      sub_10007F148();
      v167 = sub_10007CEAC();
      (v163)(v167);
    }

    v169 = v185;
    v168 = v186;
    v170 = v194;
    (*(v185 + 16))(v183, v194, v186);
    sub_10000D52C();
    sub_1000028A0(v171, v172, v173, v168);
    v174 = v198;
    sub_1000EB4B4();
    (*(v169 + 8))(v170, v168);
    v114 = sub_1000EB504();
    v115 = v174;
    v116 = 0;
    return sub_1000028A0(v115, v116, 1, v114);
  }

  sub_1000EB504();
  sub_10000D52C();
  sub_1000028A0(v118, v119, v120, v121);
}

uint64_t sub_100079BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v186 = a2;
  v7 = sub_1000E9F04();
  v208 = *(v7 - 8);
  v209 = v7;
  v8 = *(v208 + 64);
  __chkstk_darwin(v7);
  v207 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1000E8684();
  v183 = *(v184 - 8);
  v10 = *(v183 + 64);
  __chkstk_darwin(v184);
  v182 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1000E86A4();
  v180 = *(v181 - 8);
  v12 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1000EBE54();
  v193 = *(v190 - 8);
  v14 = *(v193 + 64);
  v15 = __chkstk_darwin(v190);
  v189 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v188 = &v178 - v18;
  __chkstk_darwin(v17);
  v187 = &v178 - v19;
  v20 = sub_1000E8604();
  v185 = *(v20 - 8);
  v21 = *(v185 + 64);
  __chkstk_darwin(v20);
  v23 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002A10(&qword_100132AA8, &qword_1000F41F8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v204 = &v178 - v26;
  v27 = sub_1000E8E24();
  v28 = *(v27 - 8);
  v199 = v27;
  v200 = v28;
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v192 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v191 = &v178 - v33;
  v34 = __chkstk_darwin(v32);
  v195 = &v178 - v35;
  v36 = __chkstk_darwin(v34);
  v197 = &v178 - v37;
  __chkstk_darwin(v36);
  v194 = &v178 - v38;
  v39 = sub_1000E8484();
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  *&v196 = &v178 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000E8444();
  v202 = *(v42 - 8);
  v203 = v42;
  v43 = *(v202 + 64);
  v44 = __chkstk_darwin(v42);
  v198 = &v178 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v201 = &v178 - v47;
  __chkstk_darwin(v46);
  v205 = (&v178 - v48);
  v49 = sub_1000E9ED4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v54 = &v178 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v56 = (&v178 - v55);
  v57 = a3;
  if (a3)
  {
    v58 = NSDateComponentsFormatterUnitsStyleAbbreviated;
  }

  else
  {
    v58 = NSDateComponentsFormatterUnitsStyleShort;
  }

  sub_1000E9EF4();
  if ((*(v50 + 88))(v56, v49) == enum case for PrecipitationEvent.StartStop.start(_:))
  {
    (*(v50 + 96))(v56, v49);
    v59 = *v56;
    sub_1000E9EB4();
    if (v60)
    {
      if (qword_10012EB28 != -1)
      {
        swift_once();
      }

      v61 = sub_1000E9F64();
      sub_100008CB8(v61, qword_100145BE0);
      v62 = sub_1000E9F44();
      v63 = sub_1000EC194();
      v64 = a4;
      if (!os_log_type_enabled(v62, v63))
      {
        goto LABEL_44;
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "unexpectedly got nil precipitation chance when calculating 10 day precipitation string";
      v67 = v63;
      v68 = v62;
      v69 = v65;
      v70 = 2;
      goto LABEL_43;
    }

    v85 = a1;
    v209 = sub_1000EC094(1);
    v87 = v59 / 86400.0;
    if (COERCE__INT64(fabs(v59 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v87 > -9.22337204e18)
    {
      if (v87 < 9.22337204e18)
      {
        v88 = v86;
        v89 = v87;
        if (!v87)
        {
          v101 = v86;
          if (v57 == 2)
          {
            v102 = v199;
            if (qword_10012EBF8 != -1)
            {
              swift_once();
            }

            v103 = qword_100145E00;
            v176._countAndFlagsBits = 0x80000001000FDA50;
            v211._countAndFlagsBits = 0x7961646F54;
            v211._object = 0xE500000000000000;
            v215.value._countAndFlagsBits = 0;
            v215.value._object = 0;
            v104.super.isa = v103;
            v219._countAndFlagsBits = 0;
            v219._object = 0xE000000000000000;
            sub_1000E8464(v211, v215, v104, v219, v176);
          }

          else
          {
            v102 = v199;
            if (qword_10012EBF8 != -1)
            {
              swift_once();
            }

            v105 = qword_100145E00;
            v176._countAndFlagsBits = 0x80000001000FD920;
            v212._countAndFlagsBits = 0x7961646F54204025;
            v212._object = 0xE800000000000000;
            v216.value._countAndFlagsBits = 0;
            v216.value._object = 0;
            v106.super.isa = v105;
            v220._countAndFlagsBits = 0;
            v220._object = 0xE000000000000000;
            sub_1000E8464(v212, v216, v106, v220, v176);

            sub_100002A10(&qword_100132C18, &unk_1000F42B0);
            v107 = swift_allocObject();
            *(v107 + 16) = xmmword_1000EFAD0;
            *(v107 + 56) = &type metadata for String;
            *(v107 + 64) = sub_10007C984();
            *(v107 + 32) = v209;
            *(v107 + 40) = v101;

            sub_1000EBEB4();
          }

          v206 = a4;
          sub_1000E8474();
          sub_1000E8454();
          if (qword_10012EBF8 != -1)
          {
            swift_once();
          }

          v108 = qword_100145E00;
          v177._countAndFlagsBits = 0x80000001000FD9B0;
          v213._countAndFlagsBits = 0x636E616863204025;
          v213._object = 0xEF7961646F742065;
          v217.value._countAndFlagsBits = 0;
          v217.value._object = 0;
          v109.super.isa = v108;
          v221._countAndFlagsBits = 0;
          v221._object = 0xE000000000000000;
          sub_1000E8464(v213, v217, v109, v221, v177);

          sub_100002A10(&qword_100132C18, &unk_1000F42B0);
          v110 = swift_allocObject();
          *(v110 + 16) = xmmword_1000EFAD0;
          *(v110 + 56) = &type metadata for String;
          *(v110 + 64) = sub_10007C984();
          *(v110 + 32) = v209;
          *(v110 + 40) = v101;
          v111 = sub_1000EBEB4();
          v208 = v112;
          v209 = v111;

          v113 = v194;
          sub_1000E9EA4();
          sub_10007EF38();
          v115 = v114;
          v116 = v200;
          v117 = *(v200 + 8);
          v117(v113, v102);
          if (!v115)
          {
            v118 = v197;
            (*(v116 + 104))(v197, enum case for Precipitation.mixed(_:), v102);
            sub_10007EF38();
            v117(v118, v102);
          }

          v119 = v195;
          sub_1000E9EA4();
          sub_10007F148();
          v121 = v120;
          v117(v119, v102);
          if (!v121)
          {
            v122 = v197;
            (*(v116 + 104))(v197, enum case for Precipitation.mixed(_:), v102);
            sub_10007F148();
            v117(v122, v102);
          }

          v123 = v202;
          v124 = v205;
          v125 = v203;
          (*(v202 + 16))(v201, v205, v203);
          sub_1000028A0(v204, 1, 1, v125);
          v64 = v206;
          sub_1000EB4B4();
          (*(v123 + 8))(v124, v125);
          goto LABEL_61;
        }

        v90 = sub_1000EC0A4(v58);
        if (v91)
        {
          v92 = v90;
          v93 = v91;
          v207 = v88;
          v208 = v85;
          v206 = a4;
          v94 = sub_1000EC0A4(NSDateComponentsFormatterUnitsStyleShort);
          if (v95)
          {
            v96 = v94;
            v97 = v95;
            if (v57 == 2)
            {
              v98 = v190;
              if (v89 > 6)
              {
                v205 = v94;
                v144 = v187;
                sub_1000EBE44();
                sub_100002A10(&qword_100130558, &qword_1000F0D00);
                v145 = swift_allocObject();
                v196 = xmmword_1000EFAD0;
                *(v145 + 16) = xmmword_1000EFAD0;
                *(v145 + 32) = v92;
                *(v145 + 40) = v93;
                if (qword_10012EBF8 != -1)
                {
                  swift_once();
                }

                v146 = qword_100145E00;
                sub_100002A10(&qword_100132C10, &qword_1000F42A8);
                v147 = sub_1000EB2F4();
                v148 = *(v147 - 8);
                v149 = *(v148 + 72);
                v150 = (*(v148 + 80) + 32) & ~*(v148 + 80);
                v151 = swift_allocObject();
                *(v151 + 16) = v196;
                (*(v148 + 104))(v151 + v150, enum case for StyledVariableAttribute.Style.lowercaseSmallCaps(_:), v147);
                v152 = v146;
                sub_1000E8414();

                (*(v193 + 8))(v144, v98);
                v99 = v199;
                v96 = v205;
              }

              else
              {

                sub_1000E9EE4();
                sub_1000E85D4();
                (*(v185 + 8))(v23, v20);
                sub_1000E8474();
                sub_1000E8454();
                v99 = v199;
              }
            }

            else
            {
              v205 = v94;
              v129 = v188;
              sub_1000EBE44();
              sub_100002A10(&qword_100130558, &qword_1000F0D00);
              v130 = swift_allocObject();
              *(v130 + 16) = xmmword_1000F03E0;
              v131 = v207;
              *(v130 + 32) = v209;
              *(v130 + 40) = v131;
              *(v130 + 48) = v92;
              *(v130 + 56) = v93;
              v132 = v190;
              (*(v193 + 16))(v189, v129, v190);
              v133 = qword_10012EBF8;

              if (v133 != -1)
              {
                swift_once();
              }

              v134 = qword_100145E00;
              if (v57 || (v135 = v179, sub_1000E8644(), v136 = v182, sub_1000E8694(), (*(v180 + 8))(v135, v181), LOBYTE(v135) = sub_1000E8674(), (*(v183 + 8))(v136, v184), (v135 & 1) == 0))
              {
                sub_100002A10(&qword_100132C10, &qword_1000F42A8);
                v137 = sub_1000EB2F4();
                v138 = *(v137 - 8);
                v139 = *(v138 + 72);
                v140 = (*(v138 + 80) + 32) & ~*(v138 + 80);
                v141 = swift_allocObject();
                *(v141 + 16) = xmmword_1000EFAD0;
                (*(v138 + 104))(v141 + v140, enum case for StyledVariableAttribute.Style.lowercaseSmallCaps(_:), v137);
              }

              v99 = v199;
              v96 = v205;
              v142 = v189;
              sub_1000E8414();

              v143 = *(v193 + 8);
              v143(v142, v132);
              v143(v188, v132);
            }

            if (qword_10012EBF8 != -1)
            {
              swift_once();
            }

            v153 = qword_100145E00;
            v176._countAndFlagsBits = 0x80000001000FD420;
            v214._object = 0x80000001000FD400;
            v214._countAndFlagsBits = 0xD000000000000013;
            v218.value._countAndFlagsBits = 0;
            v218.value._object = 0;
            v154.super.isa = v153;
            v222._countAndFlagsBits = 0;
            v222._object = 0xE000000000000000;
            sub_1000E8464(v214, v218, v154, v222, v176);

            sub_100002A10(&qword_100132C18, &unk_1000F42B0);
            v155 = swift_allocObject();
            *(v155 + 16) = xmmword_1000F03E0;
            *(v155 + 56) = &type metadata for String;
            v156 = sub_10007C984();
            v157 = v207;
            *(v155 + 32) = v209;
            *(v155 + 40) = v157;
            *(v155 + 96) = &type metadata for String;
            *(v155 + 104) = v156;
            *(v155 + 64) = v156;
            *(v155 + 72) = v96;
            *(v155 + 80) = v97;
            v158 = sub_1000EBEB4();
            v207 = v159;

            v160 = v191;
            sub_1000E9EA4();
            sub_10007EF38();
            v162 = v161;
            v163 = v200;
            v164 = *(v200 + 8);
            v164(v160, v99);
            v165 = v99;
            v209 = v158;
            if (!v162)
            {
              v166 = v197;
              (*(v163 + 104))(v197, enum case for Precipitation.mixed(_:), v99);
              sub_10007EF38();
              v164(v166, v99);
            }

            v167 = v192;
            sub_1000E9EA4();
            sub_10007F148();
            v169 = v168;
            v164(v167, v165);
            if (!v169)
            {
              v170 = v197;
              (*(v163 + 104))(v197, enum case for Precipitation.mixed(_:), v165);
              sub_10007F148();
              v164(v170, v165);
            }

            v171 = v202;
            v172 = v198;
            v173 = v203;
            (*(v202 + 16))(v201, v198, v203);
            sub_1000028A0(v204, 1, 1, v173);
            v64 = v206;
            sub_1000EB4B4();
            (*(v171 + 8))(v172, v173);
LABEL_61:
            v100 = 0;
            goto LABEL_62;
          }

          a4 = v206;
        }

        if (qword_10012EB28 == -1)
        {
LABEL_41:
          v126 = sub_1000E9F64();
          sub_100008CB8(v126, qword_100145BE0);
          v62 = sub_1000E9F44();
          v127 = sub_1000EC194();
          v64 = a4;
          if (!os_log_type_enabled(v62, v127))
          {
LABEL_44:

            v100 = 1;
            goto LABEL_62;
          }

          v128 = swift_slowAlloc();
          *v128 = 134349056;
          *(v128 + 4) = v59;
          v66 = "unexpectedly failed to derive a day duration string. dayDuration=%{public}f";
          v67 = v127;
          v68 = v62;
          v69 = v128;
          v70 = 12;
LABEL_43:
          _os_log_impl(&_mh_execute_header, v68, v67, v66, v69, v70);

          goto LABEL_44;
        }

LABEL_66:
        swift_once();
        goto LABEL_41;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  v206 = a4;
  v71 = *(v50 + 8);
  v71(v56, v49);
  if (qword_10012EB28 != -1)
  {
    swift_once();
  }

  v72 = sub_1000E9F64();
  sub_100008CB8(v72, qword_100145BE0);
  v74 = v207;
  v73 = v208;
  v75 = v209;
  (*(v208 + 16))(v207, a1, v209);
  v76 = sub_1000E9F44();
  v77 = sub_1000EC194();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v210 = v205;
    *v78 = 136315138;
    sub_1000E9EF4();
    sub_10007CB00(&qword_100132C08, &type metadata accessor for PrecipitationEvent.StartStop);
    v79 = sub_1000EC5B4();
    v80 = v71;
    v81 = v74;
    v83 = v82;
    v80(v54, v49);
    (*(v73 + 8))(v81, v209);
    v84 = sub_1000E2E18(v79, v83, &v210);

    *(v78 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v76, v77, "unexpectedly got startStop type: %s when calculating 10 day precipitation string", v78, 0xCu);
    sub_100009068(v205);
  }

  else
  {

    (*(v73 + 8))(v74, v75);
  }

  v100 = 1;
  v64 = v206;
LABEL_62:
  v174 = sub_1000EB504();
  return sub_1000028A0(v64, v100, 1, v174);
}

uint64_t sub_10007B2A8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v106 = sub_1000E8404();
  v3 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v103 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v105 = &v93 - v7;
  v99 = sub_1000E8684();
  v98 = *(v99 - 8);
  v8 = *(v98 + 64);
  __chkstk_darwin(v99);
  v97 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E86A4();
  v96 = *(v10 - 8);
  v11 = *(v96 + 64);
  __chkstk_darwin(v10);
  v95 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1000EBE54();
  v112 = *(v101 - 8);
  v13 = *(v112 + 64);
  v14 = __chkstk_darwin(v101);
  v102 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v111 = &v93 - v17;
  __chkstk_darwin(v16);
  v110 = &v93 - v18;
  v19 = sub_100002A10(&qword_100132AA8, &qword_1000F41F8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v119 = &v93 - v21;
  v22 = sub_1000E8484();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v100 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1000E8444();
  v104 = *(v118 - 8);
  v25 = *(v104 + 64);
  v26 = __chkstk_darwin(v118);
  v116 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v115 = &v93 - v29;
  __chkstk_darwin(v28);
  v117 = &v93 - v30;
  v31 = sub_1000E8E24();
  v107 = *(v31 - 8);
  v108 = v31;
  v32 = *(v107 + 64);
  v33 = __chkstk_darwin(v31);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v93 - v36;
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v38 = qword_100145E00;
  v92._countAndFlagsBits = 0x80000001000FDA90;
  v122._countAndFlagsBits = 0x726F6620656E6F4ELL;
  v122._object = 0xEB00000000402520;
  v123.value._countAndFlagsBits = 0;
  v123.value._object = 0;
  v39.super.isa = v38;
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  sub_1000E8464(v122, v123, v39, v124, v92);

  sub_100002A10(&qword_100132C18, &unk_1000F42B0);
  v40 = swift_allocObject();
  v109 = xmmword_1000EFAD0;
  *(v40 + 16) = xmmword_1000EFAD0;
  v41 = sub_10007C814(1, a1);
  v43 = v42;
  v44 = a1;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_10007C984();
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  v45 = sub_1000EBEB4();
  v47 = v46;

  v113 = v45;
  v114 = v47;
  if (a1 == 2)
  {
    v48 = enum case for Precipitation.mixed(_:);
    v49 = v107;
    v50 = *(v107 + 104);
    v51 = v37;
    v52 = v37;
    v53 = v108;
    v50(v51, enum case for Precipitation.mixed(_:), v108);
    sub_10007EF38();
    v54 = *(v49 + 8);
    v54(v52, v53);
    v50(v35, v48, v53);
    sub_10007F148();
    v54(v35, v53);
    sub_1000EC094(1);
    sub_1000E8474();
    sub_1000E8454();
    sub_1000028A0(v119, 1, 1, v118);
    return sub_1000EB4B4();
  }

  else
  {
    v94 = v37;
    v56 = v10;
    v57 = v110;
    sub_1000EBE44();
    sub_100002A10(&qword_100130558, &qword_1000F0D00);
    v58 = swift_allocObject();
    *(v58 + 16) = v109;
    LODWORD(v100) = a1;
    *(v58 + 32) = sub_10007C814(0, a1);
    *(v58 + 40) = v59;
    v60 = v101;
    (*(v112 + 16))(v111, v57, v101);
    v61 = qword_100145E00;
    if (v44 || (v62 = v95, sub_1000E8644(), v63 = v97, sub_1000E8694(), (*(v96 + 8))(v62, v56), v64 = sub_1000E8674(), (*(v98 + 8))(v63, v99), (v64 & 1) == 0))
    {
      sub_100002A10(&qword_100132C10, &qword_1000F42A8);
      v65 = sub_1000EB2F4();
      v66 = *(v65 - 8);
      v67 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = v109;
      (*(v66 + 104))(v69 + v68, enum case for StyledVariableAttribute.Style.lowercaseSmallCaps(_:), v65);
    }

    v70 = v100;
    v71 = v111;
    sub_1000E8414();

    v72 = *(v112 + 8);
    v72(v71, v60);
    v72(v110, v60);
    sub_1000EBE44();
    v73 = qword_100145E00;
    sub_1000028A0(v105, 1, 1, v56);
    v121 = &_swiftEmptyArrayStorage;
    sub_10007CB00(&qword_100132C58, &type metadata accessor for AttributedString.FormattingOptions);
    v74 = v73;
    sub_100002A10(&qword_100132C60, &unk_1000F42E0);
    sub_100006988(&qword_100132C68, &qword_100132C60, &unk_1000F42E0);
    sub_1000EC3C4();
    sub_1000E8434();
    v75 = 0;
    v76 = 0;
    if (!v70)
    {
      v77 = enum case for Precipitation.mixed(_:);
      v79 = v107;
      v78 = v108;
      v80 = *(v107 + 104);
      v81 = v94;
      v80(v94, enum case for Precipitation.mixed(_:), v108);
      sub_10007EF38();
      v76 = v82;
      v83 = *(v79 + 8);
      v83(v81, v78);
      v80(v81, v77, v78);
      sub_10007F148();
      v75 = v84;
      v83(v81, v78);
    }

    v111 = v76;
    v112 = v75;
    v85 = v104;
    v86 = *(v104 + 16);
    v87 = v118;
    v88 = v115;
    v86(v117, v115, v118);
    v89 = v119;
    v90 = v116;
    v86(v119, v116, v87);
    sub_1000028A0(v89, 0, 1, v87);
    sub_1000EB4B4();
    v91 = *(v85 + 8);
    v91(v90, v87);
    return (v91)(v88, v87);
  }
}

uint64_t sub_10007BEA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSDateComponentsFormatterUnitsStyle a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v72 = a2;
  v76 = a1;
  v77 = a5;
  v5 = sub_1000E8784();
  v6 = sub_1000090D4(v5);
  v71 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100006A10();
  v12 = v11 - v10;
  v13 = sub_1000E8604();
  v14 = sub_1000090D4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100006A10();
  v21 = v20 - v19;
  v22 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  sub_100009210(v22);
  v24 = *(v23 + 64);
  sub_100009204();
  __chkstk_darwin(v25);
  v27 = &v68 - v26;
  v28 = sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
  sub_100009210(v28);
  v30 = *(v29 + 64);
  sub_100009204();
  __chkstk_darwin(v31);
  v32 = sub_100002A10(&qword_100132C00, &qword_1000F4298);
  sub_100009210(v32);
  v34 = *(v33 + 64);
  sub_100009204();
  __chkstk_darwin(v35);
  v37 = &v68 - v36;
  v38 = sub_100002A10(&qword_100132BF8, &qword_1000F4290);
  sub_100009210(v38);
  v40 = *(v39 + 64);
  sub_100009204();
  __chkstk_darwin(v41);
  v43 = &v68 - v42;
  v44 = sub_1000E9F04();
  v45 = sub_1000090D4(v44);
  v70 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_10004B3F0();
  v69 = v49;
  sub_10000D52C();
  v73 = v5;
  sub_1000028A0(v50, v51, v52, v5);
  sub_1000E85B4();
  AggregateWeatherViewModel.nextHourPrecipitationShift(startDate:timeZone:)();
  (*(v16 + 8))(v21, v13);
  sub_100032054(v27, &qword_1001304C8, &qword_1000F3D70);
  LODWORD(v27) = *(type metadata accessor for AggregateWeatherViewModel(0) + 20);
  sub_1000E9A74();
  sub_1000E85B4();
  sub_1000E9E54();
  v53 = sub_1000E9E94();
  sub_10000D4FC(v37, 1, v53);
  if (v60)
  {
    sub_100032054(v37, &qword_100132C00, &qword_1000F4298);
    sub_10000D52C();
    sub_1000028A0(v54, v55, v56, v44);
  }

  else
  {
    sub_1000E9E84();
    sub_1000326A0(v53);
    (*(v57 + 8))(v37, v53);
    v58 = sub_10007CD98();
    sub_10000D4FC(v58, v59, v44);
    if (!v60)
    {
      v66 = v69;
      v65 = v70;
      (*(v70 + 32))(v69, v43, v44);
      sub_1000E9A74();
      sub_100077524(v66, v72, v74, v75, v77);
      (*(v71 + 8))(v12, v73);
      return (*(v65 + 8))(v66, v44);
    }
  }

  sub_100032054(v43, &qword_100132BF8, &qword_1000F4290);
  sub_1000EB504();
  sub_10000D52C();
  return sub_1000028A0(v61, v62, v63, v64);
}

uint64_t sub_10007C308(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_1000E8E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = *(v5 + 16);
  if (v3)
  {
    v12(v9, a1, v4);
    v13 = (*(v5 + 88))(v9, v4);
    v14 = enum case for Precipitation.none(_:);
    (*(v5 + 8))(v9, v4);
    if (v13 != v14)
    {
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v15 = qword_100145E00;
      v26._countAndFlagsBits = 0x80000001000FD7E0;
      v16._countAndFlagsBits = 7827278;
      v16._object = 0xE300000000000000;
LABEL_6:
      v17.value._countAndFlagsBits = 0;
      v17.value._object = 0;
      v18.super.isa = v15;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
LABEL_19:
      v21 = sub_1000E8464(v16, v17, v18, v19, v26);

      return v21;
    }

    return 0;
  }

  v12(&v27 - v10, a1, v4);
  v20 = (*(v5 + 88))(v11, v4);
  if (v20 == enum case for Precipitation.none(_:))
  {
    return 0;
  }

  if (v20 == enum case for Precipitation.hail(_:))
  {
    if (qword_10012EBF8 != -1)
    {
      swift_once();
    }

    v15 = qword_100145E00;
    v26._countAndFlagsBits = 0x80000001000FD8F0;
    v22 = 1818845512;
LABEL_18:
    v16._countAndFlagsBits = v22 | 0x776F4E2000000000;
    v16._object = 0xE800000000000000;
    v17.value._countAndFlagsBits = 0;
    v17.value._object = 0;
    v18.super.isa = v15;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    goto LABEL_19;
  }

  if (v20 == enum case for Precipitation.mixed(_:) || v20 == enum case for Precipitation.rain(_:))
  {
    if (qword_10012EBF8 != -1)
    {
      swift_once();
    }

    v15 = qword_100145E00;
    v26._countAndFlagsBits = 0x80000001000FD860;
    v22 = 1852399954;
    goto LABEL_18;
  }

  if (v20 == enum case for Precipitation.sleet(_:))
  {
    if (qword_10012EBF8 != -1)
    {
      swift_once();
    }

    v15 = qword_100145E00;
    v26._countAndFlagsBits = 0x80000001000FD8C0;
    v16._countAndFlagsBits = 0x6F4E207465656C53;
    v16._object = 0xE900000000000077;
    goto LABEL_6;
  }

  if (v20 == enum case for Precipitation.snow(_:))
  {
    if (qword_10012EBF8 != -1)
    {
      swift_once();
    }

    v15 = qword_100145E00;
    v26._countAndFlagsBits = 0x80000001000FD890;
    v22 = 2003791443;
    goto LABEL_18;
  }

  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v24 = qword_100145E00;
  v26._countAndFlagsBits = 0x80000001000FD860;
  v28._countAndFlagsBits = 0x776F4E206E696152;
  v28._object = 0xE800000000000000;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v25.super.isa = v24;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v21 = sub_1000E8464(v28, v29, v25, v30, v26);

  (*(v5 + 8))(v11, v4);
  return v21;
}

uint64_t sub_10007C814(char a1, char a2)
{
  v2 = a1 | (a2 == 0);
  if (a1 & 1 | (a2 == 0))
  {
    v3 = NSDateComponentsFormatterUnitsStyleShort;
  }

  else
  {
    v3 = NSDateComponentsFormatterUnitsStyleAbbreviated;
  }

  v4 = sub_1000EC0A4(v3);
  if (v5)
  {
    return v4;
  }

  if (v2)
  {
    if (qword_10012EBF8 != -1)
    {
      swift_once();
    }

    v7 = qword_100145E00;
    v13._countAndFlagsBits = 0x80000001000FDBE0;
    v8._countAndFlagsBits = 0x73796164203031;
    v8._object = 0xE700000000000000;
    v9.value._countAndFlagsBits = 0;
    v9.value._object = 0;
    v10.super.isa = v7;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
  }

  else
  {
    if (qword_10012EBF8 != -1)
    {
      swift_once();
    }

    v7 = qword_100145E00;
    v13._countAndFlagsBits = 0x80000001000FDC00;
    v8._countAndFlagsBits = 6565937;
    v8._object = 0xE300000000000000;
    v9.value._countAndFlagsBits = 0;
    v9.value._object = 0;
    v10.super.isa = v7;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
  }

  v6 = sub_1000E8464(v8, v9, v10, v11, v13);

  return v6;
}

unint64_t sub_10007C984()
{
  result = qword_100132C20;
  if (!qword_100132C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C20);
  }

  return result;
}

uint64_t sub_10007C9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AggregateWeatherViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007CA3C()
{
  result = qword_100132C50;
  if (!qword_100132C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C50);
  }

  return result;
}

uint64_t sub_10007CA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100132AA8, &qword_1000F41F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007CB00(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for RainInlineContentViewModelFactory.ContentLength(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10007CC24);
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

unint64_t sub_10007CC60()
{
  result = qword_100132C70;
  if (!qword_100132C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C70);
  }

  return result;
}

uint64_t sub_10007CCB4()
{

  return swift_once();
}

uint64_t sub_10007CCD4()
{

  return swift_once();
}

uint64_t sub_10007CCF4()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 120) + 8);
  return v0;
}

__n128 sub_10007CD30(__n128 *a1)
{
  result = *(v1 - 384);
  a1[1] = result;
  return result;
}

uint64_t sub_10007CD78()
{
  result = *(v0 - 416);
  v2 = *(v0 - 408);
  v3 = *(v0 - 424);
  v4 = *(v0 - 248);
  return result;
}

uint64_t sub_10007CDA4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 136);

  return sub_1000028A0(a1, a2, 1, v4);
}

uint64_t sub_10007CE28()
{
  v2 = *(v0 - 104);

  return sub_1000E9EA4();
}

uint64_t sub_10007CE40(Swift::String a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, Swift::String a8)
{
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v11.super.isa = v8;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;

  return sub_1000E8464(a1, v10, v11, v12, a8);
}

uint64_t sub_10007CE64(Swift::String a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, Swift::String a8)
{
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v11.super.isa = v8;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;

  return sub_1000E8464(a1, v10, v11, v12, a8);
}

uint64_t sub_10007CE88(uint64_t a1)
{

  return sub_100032054(a1, v1, v2);
}

uint64_t sub_10007CEE0()
{

  return swift_allocObject();
}

uint64_t sub_10007CEF8()
{
  v2 = *(v0 - 232);

  return sub_1000E8644();
}

uint64_t sub_10007CF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EBA54();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_10007CF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EBA54();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DescriptionView()
{
  result = qword_100132CD0;
  if (!qword_100132CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D034@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002A10(&qword_100132D40, &qword_1000F4480);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (v46 - v5);
  v7 = sub_100002A10(&qword_100132D48, &qword_1000F4488);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v46 - v9;
  v11 = sub_100002A10(&qword_100132D50, &qword_1000F4490);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  v15 = sub_100002A10(&qword_100132D58, &qword_1000F4498);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v46 - v17;
  v19 = sub_1000EBA24();
  v50 = v3;
  v51 = a1;
  v49 = v11;
  if (v19)
  {
    v47 = v46;
    __chkstk_darwin(v19);
    v46[-2] = v1;
    sub_100002A10(&qword_100132D80, &qword_1000F44A8);
    sub_100002A10(&qword_100131F38, &qword_1000F2EE8);
    sub_10007DF68();
    v48 = v7;
    sub_10005C15C();
    sub_1000EAA74();
    v20 = sub_1000EBA44();
    KeyPath = swift_getKeyPath();
    v22 = &v18[*(v15 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    sub_10000EBC4(v18, v10, &qword_100132D58, &qword_1000F4498);
    swift_storeEnumTagMultiPayload();
    sub_10007DE60();
    sub_1000EA4A4();
    sub_10000EBC4(v14, v6, &qword_100132D50, &qword_1000F4490);
    swift_storeEnumTagMultiPayload();
    sub_10007DDDC();
    sub_1000EA4A4();
    v23 = v14;
  }

  else
  {
    v47 = v6;
    v24 = sub_1000EB9C4();
    if (!v25)
    {
      v52 = sub_1000EB944();
      v53 = v32;
      sub_100005898();
      v33 = sub_1000EA814();
      v35 = v34;
      v37 = v36;
      sub_1000EBA44();
      v38 = sub_1000EA7D4();
      v40 = v39;
      v42 = v41;
      v44 = v43;

      sub_1000058EC(v33, v35, v37 & 1);

      v45 = v47;
      *v47 = v38;
      *(v45 + 8) = v40;
      *(v45 + 16) = v42 & 1;
      *(v45 + 24) = v44;
      swift_storeEnumTagMultiPayload();
      sub_10007DDDC();
      return sub_1000EA4A4();
    }

    v46[1] = v46;
    v26 = __chkstk_darwin(v24);
    v46[-2] = v1;
    v46[-2] = __chkstk_darwin(v26);
    v46[-1] = v27;
    v46[0] = sub_100002A10(&qword_100132D80, &qword_1000F44A8);
    sub_100002A10(&qword_100131F38, &qword_1000F2EE8);
    v48 = v7;
    sub_10007DF68();
    sub_10005C15C();
    sub_1000EAA74();

    v28 = sub_1000EBA44();
    v29 = swift_getKeyPath();
    v30 = &v18[*(v15 + 36)];
    *v30 = v29;
    v30[1] = v28;
    sub_10000EBC4(v18, v10, &qword_100132D58, &qword_1000F4498);
    swift_storeEnumTagMultiPayload();
    sub_10007DE60();
    sub_1000EA4A4();
    sub_10000EBC4(v14, v47, &qword_100132D50, &qword_1000F4490);
    swift_storeEnumTagMultiPayload();
    sub_10007DDDC();
    sub_1000EA4A4();
    v23 = v14;
  }

  sub_100008E48(v23, &qword_100132D50, &qword_1000F4490);
  return sub_100008E48(v18, &qword_100132D58, &qword_1000F4498);
}

uint64_t sub_10007D630@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000EAA24();
  v3 = (a1 + *(sub_100002A10(&qword_100131F38, &qword_1000F2EE8) + 36));
  v4 = *(sub_100002A10(&qword_1001319B0, &qword_1000F2EF0) + 28);
  v5 = enum case for Image.Scale.small(_:);
  v6 = sub_1000EAA64();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_10007D710@<X0>(uint64_t a1@<X8>)
{
  sub_1000EB944();
  sub_100005898();
  v2 = sub_1000EA814();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_10007D7A4@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_1000EAA24();
  v3 = (a1 + *(sub_100002A10(&qword_100131F38, &qword_1000F2EE8) + 36));
  v4 = *(sub_100002A10(&qword_1001319B0, &qword_1000F2EF0) + 28);
  v5 = enum case for Image.Scale.small(_:);
  v6 = sub_1000EAA64();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_10007D884@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v30 = sub_1000EA4E4();
  v1 = sub_1000090D4(v30);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_100132D08, &qword_1000F43F0);
  v9 = sub_1000069E4(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v31 = sub_100002A10(&qword_100132D10, &qword_1000F43F8);
  v14 = sub_1000090D4(v31);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v30 - v19;
  *v13 = sub_1000EA2E4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v21 = sub_100002A10(&qword_100132D18, &qword_1000F4400);
  sub_10007DB58(&v13[*(v21 + 44)]);
  sub_1000EA4B4();
  v22 = sub_100006988(&qword_100132D20, &qword_100132D08, &qword_1000F43F0);
  sub_1000EA914();
  (*(v3 + 8))(v7, v30);
  sub_100008E48(v13, &qword_100132D08, &qword_1000F43F0);
  v33 = sub_1000EB944();
  v34 = v23;
  sub_100005898();
  v24 = sub_1000EA814();
  v26 = v25;
  LOBYTE(v3) = v27;
  v33 = v8;
  v34 = v22;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_1000EA884();
  sub_1000058EC(v24, v26, v3 & 1);

  return (*(v16 + 8))(v20, v28);
}

uint64_t sub_10007DB58@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_1000EA6A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_100132D28, &qword_1000F4408);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  sub_10007D034(&v23 - v12);
  v14 = sub_1000EA9C4();
  KeyPath = swift_getKeyPath();
  v16 = &v13[*(sub_100002A10(&qword_100132D30, &qword_1000F4440) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  sub_1000EB9A4();
  (*(v2 + 104))(v5, enum case for Font.Leading.tight(_:), v1);
  v17 = sub_1000EA6D4();

  (*(v2 + 8))(v5, v1);
  v18 = swift_getKeyPath();
  v19 = &v13[*(v7 + 44)];
  *v19 = v18;
  v19[1] = v17;
  sub_10000EBC4(v13, v11, &qword_100132D28, &qword_1000F4408);
  v20 = v24;
  sub_10000EBC4(v11, v24, &qword_100132D28, &qword_1000F4408);
  v21 = v20 + *(sub_100002A10(&qword_100132D38, &qword_1000F4478) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_100008E48(v13, &qword_100132D28, &qword_1000F4408);
  return sub_100008E48(v11, &qword_100132D28, &qword_1000F4408);
}

unint64_t sub_10007DDDC()
{
  result = qword_100132D60;
  if (!qword_100132D60)
  {
    sub_100002ABC(&qword_100132D50, &qword_1000F4490);
    sub_10007DE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132D60);
  }

  return result;
}

unint64_t sub_10007DE60()
{
  result = qword_100132D68;
  if (!qword_100132D68)
  {
    sub_100002ABC(&qword_100132D58, &qword_1000F4498);
    sub_100006988(&qword_100132D70, &qword_100132D78, &qword_1000F44A0);
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132D68);
  }

  return result;
}

uint64_t sub_10007DF60@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10007D7A4(a1);
}

unint64_t sub_10007DF68()
{
  result = qword_100132D88;
  if (!qword_100132D88)
  {
    sub_100002ABC(&qword_100132D80, &qword_1000F44A8);
    sub_100006988(&qword_100131B60, &qword_100131B68, &qword_1000F2998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132D88);
  }

  return result;
}

uint64_t sub_10007E068(uint64_t a1)
{
  v2 = sub_1000EAA64();
  v3 = sub_1000090D4(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000EA0F4();
}

uint64_t sub_10007E128@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000EA294();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10007E15C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000EA294();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10007E190(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000EA2A4();
}

unint64_t sub_10007E1C8()
{
  result = qword_100132D90;
  if (!qword_100132D90)
  {
    sub_100002ABC(&qword_100132D98, &qword_1000F4510);
    sub_100002ABC(&qword_100132D08, &qword_1000F43F0);
    sub_100006988(&qword_100132D20, &qword_100132D08, &qword_1000F43F0);
    swift_getOpaqueTypeConformance2();
    sub_10004E704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132D90);
  }

  return result;
}

uint64_t sub_10007E2C8@<X0>(uint64_t a1@<X8>)
{
  v154 = a1;
  v134 = type metadata accessor for InstantWeatherViewModel();
  v2 = sub_1000069E4(v134);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100006A10();
  v141 = v6 - v5;
  v153 = sub_1000EBA74();
  v7 = sub_1000090D4(v153);
  v146 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100006A10();
  v145 = v12 - v11;
  v13 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000091AC();
  v136 = v15 - v16;
  sub_10004B6F4();
  __chkstk_darwin(v17);
  sub_10000D4D0();
  v133 = v18;
  sub_10004B6F4();
  __chkstk_darwin(v19);
  sub_10000D4D0();
  v135 = v20;
  sub_10004B6F4();
  __chkstk_darwin(v21);
  v132 = &v130 - v22;
  v23 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v24 = sub_1000090D4(v23);
  v149 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_1000091AC();
  v137 = v28 - v29;
  sub_10004B6F4();
  __chkstk_darwin(v30);
  sub_10000D4D0();
  v148 = v31;
  sub_10004B6F4();
  __chkstk_darwin(v32);
  sub_10000D4D0();
  v140 = v33;
  sub_10004B6F4();
  __chkstk_darwin(v34);
  sub_10000D4D0();
  v144 = v35;
  sub_10004B6F4();
  __chkstk_darwin(v36);
  sub_10000D4D0();
  v143 = v37;
  sub_10004B6F4();
  __chkstk_darwin(v38);
  sub_10000D4D0();
  v142 = v39;
  sub_10004B6F4();
  __chkstk_darwin(v40);
  sub_10000D4D0();
  v138 = v41;
  sub_10004B6F4();
  __chkstk_darwin(v42);
  sub_10000D4D0();
  v147 = v43;
  sub_10004B6F4();
  __chkstk_darwin(v44);
  v139 = &v130 - v45;
  v46 = sub_1000EB674();
  v47 = sub_1000090D4(v46);
  v151 = v48;
  v152 = v47;
  v50 = *(v49 + 64);
  __chkstk_darwin(v47);
  sub_1000091AC();
  v53 = v51 - v52;
  __chkstk_darwin(v54);
  v56 = &v130 - v55;
  v57 = type metadata accessor for AggregateWeatherViewModel(0);
  v58 = sub_1000069E4(v57);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  sub_100006A10();
  v150 = v62 - v61;
  v63 = type metadata accessor for WeatherDataViewModel();
  v64 = sub_1000069E4(v63);
  v66 = *(v65 + 64);
  __chkstk_darwin(v64);
  sub_1000091AC();
  v69 = v67 - v68;
  __chkstk_darwin(v70);
  v72 = &v130 - v71;
  v73 = type metadata accessor for ForecastEntry.Model(0);
  v74 = sub_1000069E4(v73);
  v76 = *(v75 + 64);
  __chkstk_darwin(v74);
  sub_100006A10();
  v79 = (v78 - v77);
  v80 = type metadata accessor for ForecastEntry(0);
  sub_10007EDEC(v1 + *(v80 + 28), v79, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10007EEB0(v79, v72, type metadata accessor for WeatherDataViewModel);
    sub_10007EDEC(v72, v69, type metadata accessor for WeatherDataViewModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v82 = v72;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_100032F94(v72, type metadata accessor for WeatherDataViewModel);
        sub_1000028A0(v154, 1, 2, v153);
        v111 = sub_100019AC0();
        return sub_100032F94(v111, v112);
      }

      v131 = v72;
      v83 = v141;
      sub_10007EEB0(v69, v141, type metadata accessor for InstantWeatherViewModel);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v84 = sub_1000E9F64();
      sub_100008CB8(v84, qword_100145C10);
      v85 = sub_1000E9F44();
      v86 = sub_1000EC1B4();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v149;
      v89 = v151;
      v90 = v136;
      if (v87)
      {
        *swift_slowAlloc() = 0;
        sub_100009134(&_mh_execute_header, v91, v92, "Making Temperature complication view model entry from interpolated instant weather");
      }

      (*(v89 + 16))(v53, v83 + *(v134 + 24), v152);
      sub_1000EB5B4();
      v93 = v133;
      sub_1000EB5E4();
      sub_10007EF0C(v93);
      v94 = v137;
      if (v95)
      {
        v96 = *(v88 + 16);
        sub_10007EF2C();
        v97();
        sub_10007EF0C(v93);
        if (!v95)
        {
          sub_10007EE48(v93);
        }
      }

      else
      {
        (*(v88 + 32))(v148, v93, v23);
      }

      sub_1000EB5D4();
      sub_10007EF0C(v90);
      if (v95)
      {
        v114 = *(v88 + 16);
        sub_10007EF2C();
        v114();
        sub_10007EF0C(v90);
        if (!v95)
        {
          sub_10007EE48(v90);
        }

        v115 = v137;
      }

      else
      {
        (*(v88 + 32))(v94, v90, v23);
        v114 = *(v88 + 16);
        v115 = v94;
      }

      sub_10007EF2C();
      v114();
      v116 = v148;
      sub_10007EF2C();
      v114();
      (v114)(v144, v115, v23);
      sub_1000EBA64();
      v117 = *(v88 + 8);
      v117(v115, v23);
      v117(v116, v23);
      v117(v140, v23);
      (*(v151 + 8))(v53, v152);
      v118 = type metadata accessor for InstantWeatherViewModel;
      v119 = v141;
    }

    else
    {
      sub_10007EEB0(v69, v150, type metadata accessor for AggregateWeatherViewModel);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v101 = sub_1000E9F64();
      sub_100008CB8(v101, qword_100145C10);
      v102 = sub_1000E9F44();
      v103 = sub_1000EC1B4();
      v104 = os_log_type_enabled(v102, v103);
      v105 = v135;
      if (v104)
      {
        *swift_slowAlloc() = 0;
        sub_100009134(&_mh_execute_header, v106, v107, "Making Temperature complication view model entry from aggregate weather");
      }

      (*(v151 + 16))(v56, v150 + *(v57 + 24), v152);
      sub_1000EB5B4();
      v108 = v132;
      sub_1000EB5E4();
      sub_10007EF0C(v108);
      if (v95)
      {
        v120 = v149;
        v109 = *(v149 + 16);
        sub_10007EF2C();
        v110();
        sub_10007EF0C(v108);
        v121 = v138;
        if (!v95)
        {
          sub_10007EE48(v108);
        }
      }

      else
      {
        v120 = v149;
        (*(v149 + 32))(v147, v108, v23);
        v121 = v138;
      }

      sub_1000EB5D4();
      sub_10007EF0C(v105);
      v131 = v82;
      if (v95)
      {
        v122 = *(v120 + 16);
        sub_10007EF2C();
        v122();
        sub_10007EF0C(v105);
        if (!v95)
        {
          sub_10007EE48(v105);
        }

        v121 = v138;
      }

      else
      {
        (*(v120 + 32))(v121, v105, v23);
        v122 = *(v120 + 16);
      }

      sub_10007EF2C();
      v122();
      v123 = v147;
      sub_10007EF2C();
      v122();
      (v122)(v144, v121, v23);
      sub_1000EBA64();
      v124 = *(v120 + 8);
      v124(v121, v23);
      v124(v123, v23);
      v124(v139, v23);
      (*(v151 + 8))(v56, v152);
      v118 = type metadata accessor for AggregateWeatherViewModel;
      v119 = v150;
    }

    sub_100032F94(v119, v118);
    sub_100032F94(v131, type metadata accessor for WeatherDataViewModel);
    v125 = *(v146 + 32);
    v126 = v154;
    v127 = sub_100019AC0();
    v128 = v153;
    v129(v127);
    v98 = v126;
    v99 = 0;
    v100 = v128;
  }

  else
  {
    v98 = v154;
    if (*v79)
    {
      v99 = 1;
    }

    else
    {
      v99 = 2;
    }

    v100 = v153;
  }

  return sub_1000028A0(v98, v99, 2, v100);
}

uint64_t sub_10007EDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1000069E4(v4);
  v6 = *(v5 + 16);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_10007EE48(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007EEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1000069E4(v4);
  v6 = *(v5 + 32);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_10007EF38()
{
  v1 = v0;
  v2 = sub_1000E8E24();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v1, v2);
  v10 = (*(v5 + 88))(v9, v2);
  v11 = 0;
  if (v10 != enum case for Precipitation.none(_:))
  {
    if (v10 == enum case for Precipitation.hail(_:))
    {
      return 0x61682E64756F6C63;
    }

    else if (v10 == enum case for Precipitation.mixed(_:))
    {
      return 0x616C6C6572626D75;
    }

    else
    {
      v11 = 0x61722E64756F6C63;
      if (v10 != enum case for Precipitation.rain(_:))
      {
        if (v10 == enum case for Precipitation.sleet(_:))
        {
          return 0xD000000000000010;
        }

        else if (v10 == enum case for Precipitation.snow(_:))
        {
          return 0x6B616C66776F6E73;
        }

        else
        {
          (*(v5 + 8))(v9, v2);
        }
      }
    }
  }

  return v11;
}

uint64_t sub_10007F148()
{
  v1 = v0;
  v2 = sub_1000E8E24();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v1, v2);
  v10 = (*(v5 + 88))(v9, v2);
  if (v10 == enum case for Precipitation.none(_:))
  {
    return 0;
  }

  if (v10 == enum case for Precipitation.hail(_:))
  {
    if (qword_10012EBF8 == -1)
    {
LABEL_5:
      v12 = sub_10007F44C(qword_100145E00);
      v14._countAndFlagsBits = v2;
      sub_10007F434();
      v11 = sub_1000E8464(v17, v18, v16, v19, v14);

      return v11;
    }

LABEL_18:
    sub_10007CCB4();
    goto LABEL_5;
  }

  if (v10 != enum case for Precipitation.mixed(_:))
  {
    if (v10 == enum case for Precipitation.rain(_:))
    {
      if (qword_10012EBF8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (v10 == enum case for Precipitation.sleet(_:))
    {
      if (qword_10012EBF8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (v10 == enum case for Precipitation.snow(_:))
    {
      if (qword_10012EBF8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    (*(v5 + 8))(v9, v2);
  }

  return 0;
}

id sub_10007F44C@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t sub_10007F464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461676572676761 && a2 == 0xE900000000000065;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E6174736E69 && a2 == 0xE700000000000000;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x53657369726E7573 && a2 == 0xED00007465736E75)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000EC5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10007F584(char a1)
{
  if (!a1)
  {
    return 0x7461676572676761;
  }

  if (a1 == 1)
  {
    return 0x746E6174736E69;
  }

  return 0x53657369726E7573;
}

uint64_t sub_10007F614(uint64_t a1)
{
  v2 = sub_100080444();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F650(uint64_t a1)
{
  v2 = sub_100080444();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007F694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007F464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007F6BC(uint64_t a1)
{
  v2 = sub_100080348();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F6F8(uint64_t a1)
{
  v2 = sub_100080348();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007F738(uint64_t a1)
{
  v2 = sub_1000803F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F774(uint64_t a1)
{
  v2 = sub_1000803F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007F7B0(uint64_t a1)
{
  v2 = sub_10008039C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F7EC(uint64_t a1)
{
  v2 = sub_10008039C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static WeatherDataViewModel.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_1000EB2B4();
  v4 = sub_1000090D4(v3);
  v57 = v5;
  v58 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100006A10();
  v10 = v9 - v8;
  v56 = type metadata accessor for InstantWeatherViewModel();
  v11 = sub_1000069E4(v56);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100006A10();
  v16 = v15 - v14;
  v17 = type metadata accessor for AggregateWeatherViewModel(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_100006A10();
  v21 = v20 - v19;
  v22 = type metadata accessor for WeatherDataViewModel();
  v23 = sub_1000069E4(v22);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v56 - v30;
  __chkstk_darwin(v29);
  v33 = &v56 - v32;
  v34 = *(*(sub_100002A10(&qword_100132DA0, &qword_1000F4590) - 8) + 64);
  sub_100009204();
  v36 = __chkstk_darwin(v35);
  v38 = &v56 - v37;
  v39 = *(v36 + 56);
  sub_10007FCA8(a1, &v56 - v37);
  sub_10007FCA8(v59, &v38[v39]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10007FCA8(v38, v33);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100081588();
      v48 = v33;
LABEL_13:
      sub_100032F94(v48, v47);
LABEL_15:
      sub_10007FD0C(v38);
LABEL_18:
      v46 = 0;
      return v46 & 1;
    }

    sub_100080D2C(&v38[v39], v21, type metadata accessor for AggregateWeatherViewModel);
    static AggregateWeatherViewModel.__derived_struct_equals(_:_:)();
    v46 = v54;
    sub_100032F94(v21, type metadata accessor for AggregateWeatherViewModel);
    sub_100032F94(v33, type metadata accessor for AggregateWeatherViewModel);
LABEL_20:
    sub_10008151C();
    return v46 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10007FCA8(v38, v28);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v57 + 8))(v28, v58);
      goto LABEL_15;
    }

    v50 = v57;
    v49 = v58;
    (*(v57 + 32))(v10, &v38[v39], v58);
    v46 = sub_1000EB2A4();
    v51 = *(v50 + 8);
    v51(v10, v49);
    v51(v28, v49);
    goto LABEL_20;
  }

  sub_10007FCA8(v38, v31);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100081504();
    v48 = v31;
    goto LABEL_13;
  }

  sub_100080D2C(&v38[v39], v16, type metadata accessor for InstantWeatherViewModel);
  if ((sub_1000E8614() & 1) == 0 || (v41 = *(v56 + 20), (sub_1000E9A04() & 1) == 0))
  {
    sub_100081504();
    sub_100032F94(v16, v52);
    goto LABEL_17;
  }

  v42 = *(v56 + 24);
  v43 = sub_1000EB604();
  sub_100081504();
  sub_100032F94(v16, v44);
  if ((v43 & 1) == 0)
  {
LABEL_17:
    sub_100081504();
    sub_100032F94(v31, v53);
    sub_10008151C();
    goto LABEL_18;
  }

  sub_100081504();
  sub_100032F94(v31, v45);
  sub_10008151C();
  v46 = 1;
  return v46 & 1;
}

uint64_t type metadata accessor for WeatherDataViewModel()
{
  result = qword_100132EA8;
  if (!qword_100132EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007FCA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007FD0C(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100132DA0, &qword_1000F4590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeatherDataViewModel.encode(to:)(void *a1)
{
  v2 = sub_100002A10(&qword_100132DA8, &qword_1000F4598);
  v3 = sub_1000090D4(v2);
  v90 = v4;
  v91 = v3;
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  sub_10000D58C();
  v87 = v8;
  v9 = sub_1000EB2B4();
  v10 = sub_1000090D4(v9);
  v88 = v11;
  v89 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100006A10();
  v86 = v15 - v14;
  v16 = sub_100002A10(&qword_100132DB0, &qword_1000F45A0);
  v17 = sub_1000090D4(v16);
  v84 = v18;
  v85 = v17;
  v20 = *(v19 + 64);
  sub_100009204();
  __chkstk_darwin(v21);
  sub_10000D58C();
  v83 = v22;
  v81 = type metadata accessor for InstantWeatherViewModel();
  v23 = sub_1000069E4(v81);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100006A10();
  v82 = v27 - v26;
  v28 = sub_100002A10(&qword_100132DB8, &qword_1000F45A8);
  v29 = sub_1000090D4(v28);
  v79 = v30;
  v80 = v29;
  v32 = *(v31 + 64);
  sub_100009204();
  __chkstk_darwin(v33);
  v35 = &v78 - v34;
  v36 = type metadata accessor for AggregateWeatherViewModel(0);
  v37 = sub_1000069E4(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_100006A10();
  v42 = v41 - v40;
  v43 = type metadata accessor for WeatherDataViewModel();
  v44 = sub_1000069E4(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_100006A10();
  v49 = v48 - v47;
  v50 = sub_100002A10(&qword_100132DC0, &qword_1000F45B0);
  v51 = sub_1000090D4(v50);
  v93 = v52;
  v94 = v51;
  v54 = *(v53 + 64);
  sub_100009204();
  __chkstk_darwin(v55);
  v57 = &v78 - v56;
  v58 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100080348();
  sub_1000EC6A4();
  sub_10007FCA8(v92, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v71 = v88;
      v70 = v89;
      v72 = v86;
      (*(v88 + 32))(v86, v49, v89);
      v97 = 2;
      sub_10008039C();
      v73 = v87;
      sub_1000815EC();
      sub_100081558();
      sub_100080D8C(v74, v75);
      v76 = v91;
      sub_1000EC594();
      (*(v90 + 8))(v73, v76);
      (*(v71 + 8))(v72, v70);
      return (*(v93 + 8))(v57, v43);
    }

    v60 = v82;
    sub_100080D2C(v49, v82, type metadata accessor for InstantWeatherViewModel);
    v96 = 1;
    sub_1000803F0();
    v61 = v83;
    sub_1000815EC();
    sub_100081570();
    sub_100080D8C(v62, v63);
    v64 = v85;
    sub_1000EC594();
    (*(v84 + 8))(v61, v64);
    sub_100081504();
    v66 = v60;
  }

  else
  {
    sub_100080D2C(v49, v42, type metadata accessor for AggregateWeatherViewModel);
    v95 = 0;
    sub_100080444();
    sub_1000815EC();
    sub_1000815A0();
    sub_100080D8C(v67, v68);
    v69 = v80;
    sub_1000EC594();
    (*(v79 + 8))(v35, v69);
    sub_100081588();
    v66 = v42;
  }

  sub_100032F94(v66, v65);
  return (*(v93 + 8))(v57, v43);
}

unint64_t sub_100080348()
{
  result = qword_100132DC8;
  if (!qword_100132DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132DC8);
  }

  return result;
}

unint64_t sub_10008039C()
{
  result = qword_100132DD0;
  if (!qword_100132DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132DD0);
  }

  return result;
}

unint64_t sub_1000803F0()
{
  result = qword_100132DE0;
  if (!qword_100132DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132DE0);
  }

  return result;
}

unint64_t sub_100080444()
{
  result = qword_100132DF0;
  if (!qword_100132DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132DF0);
  }

  return result;
}

void WeatherDataViewModel.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v108 = sub_100002A10(&qword_100132E00, &qword_1000F45B8);
  sub_1000090D4(v108);
  v101 = v3;
  v5 = *(v4 + 64);
  sub_100009204();
  __chkstk_darwin(v6);
  sub_10000D58C();
  v104 = v7;
  v8 = sub_100002A10(&qword_100132E08, &qword_1000F45C0);
  v9 = sub_1000090D4(v8);
  v99 = v10;
  v100 = v9;
  v12 = *(v11 + 64);
  sub_100009204();
  __chkstk_darwin(v13);
  sub_10000D58C();
  v105 = v14;
  v15 = sub_100002A10(&qword_100132E10, &qword_1000F45C8);
  v16 = sub_1000090D4(v15);
  v97 = v17;
  v98 = v16;
  v19 = *(v18 + 64);
  sub_100009204();
  __chkstk_darwin(v20);
  sub_10000D58C();
  v103 = v21;
  v22 = sub_100002A10(&qword_100132E18, &unk_1000F45D0);
  v23 = sub_1000090D4(v22);
  v106 = v24;
  v107 = v23;
  v26 = *(v25 + 64);
  sub_100009204();
  __chkstk_darwin(v27);
  v28 = type metadata accessor for WeatherDataViewModel();
  v29 = sub_1000069E4(v28);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v37 = &v91 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v91 - v39;
  __chkstk_darwin(v38);
  v42 = &v91 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v109 = a1;
  sub_100008DA8(a1, v44);
  sub_100080348();
  v45 = v110;
  sub_1000EC694();
  if (v45)
  {
    goto LABEL_9;
  }

  v93 = v37;
  v94 = v40;
  v95 = v34;
  v96 = v42;
  v46 = v107;
  v110 = v28;
  v47 = sub_1000EC524();
  sub_100080CF0(v47, 0);
  if (v50 == v51 >> 1)
  {
    goto LABEL_8;
  }

  if (v50 >= (v51 >> 1))
  {
    __break(1u);
    return;
  }

  v52 = *(v49 + v50);
  sub_100081478(v50 + 1, v51 >> 1, v48, v49, v50, v51);
  v54 = v53;
  v56 = v55;
  swift_unknownObjectRelease();
  if (v54 != v56 >> 1)
  {
LABEL_8:
    v62 = sub_1000EC414();
    swift_allocError();
    v64 = v63;
    v65 = *(sub_100002A10(&qword_10012F440, &unk_1000F19E0) + 48);
    *v64 = v110;
    sub_1000EC4B4();
    sub_1000EC404();
    (*(*(v62 - 8) + 104))(v64, enum case for DecodingError.typeMismatch(_:), v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    v66 = sub_10008160C();
    v67(v66, v46);
LABEL_9:
    sub_100009068(v109);
    return;
  }

  if (v52)
  {
    if (v52 == 1)
    {
      v112 = 1;
      sub_1000803F0();
      sub_1000815CC();
      v57 = v96;
      type metadata accessor for InstantWeatherViewModel();
      sub_100081570();
      sub_100080D8C(v58, v59);
      v60 = v93;
      v61 = v100;
      sub_1000EC514();
      v92 = 0;
      swift_unknownObjectRelease();
      v76 = sub_10008160C();
      v77(v76, v61);
      v78 = sub_100081544();
    }

    else
    {
      v113 = 2;
      sub_10008039C();
      sub_1000815CC();
      v57 = v96;
      sub_1000EB2B4();
      sub_100081558();
      sub_100080D8C(v73, v74);
      v60 = v95;
      sub_1000EC514();
      v75 = v106;
      v92 = 0;
      swift_unknownObjectRelease();
      v87 = sub_100081618();
      v88(v87);
      v89 = *(v75 + 8);
      v78 = sub_10004B610();
    }

    v79(v78);
    swift_storeEnumTagMultiPayload();
    v86 = v60;
    v85 = v109;
  }

  else
  {
    v111 = 0;
    sub_100080444();
    sub_1000815CC();
    type metadata accessor for AggregateWeatherViewModel(0);
    sub_1000815A0();
    sub_100080D8C(v68, v69);
    v70 = v94;
    v71 = v98;
    sub_1000EC514();
    v72 = v106;
    v92 = 0;
    swift_unknownObjectRelease();
    v80 = sub_10008160C();
    v81(v80, v71);
    v82 = *(v72 + 8);
    v83 = sub_10004B610();
    v84(v83);
    swift_storeEnumTagMultiPayload();
    v85 = v109;
    v57 = v96;
    v86 = v70;
  }

  v90 = v102;
  sub_100080D2C(v86, v57, type metadata accessor for WeatherDataViewModel);
  sub_100080D2C(v57, v90, type metadata accessor for WeatherDataViewModel);
  sub_100009068(v85);
}

void sub_100080CF0(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1000815B8();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100080D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100080D8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100080DD4()
{
  result = type metadata accessor for AggregateWeatherViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InstantWeatherViewModel();
    if (v2 <= 0x3F)
    {
      result = sub_1000EB2B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100080F28);
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

_BYTE *sub_100080F84(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100081020);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10008105C()
{
  result = qword_100132EE0;
  if (!qword_100132EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132EE0);
  }

  return result;
}

unint64_t sub_1000810B4()
{
  result = qword_100132EE8;
  if (!qword_100132EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132EE8);
  }

  return result;
}

unint64_t sub_10008110C()
{
  result = qword_100132EF0;
  if (!qword_100132EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132EF0);
  }

  return result;
}

unint64_t sub_100081164()
{
  result = qword_100132EF8;
  if (!qword_100132EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132EF8);
  }

  return result;
}

unint64_t sub_1000811BC()
{
  result = qword_100132F00;
  if (!qword_100132F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132F00);
  }

  return result;
}

unint64_t sub_100081214()
{
  result = qword_100132F08;
  if (!qword_100132F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132F08);
  }

  return result;
}

unint64_t sub_10008126C()
{
  result = qword_100132F10;
  if (!qword_100132F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132F10);
  }

  return result;
}

unint64_t sub_1000812C4()
{
  result = qword_100132F18;
  if (!qword_100132F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132F18);
  }

  return result;
}

unint64_t sub_10008131C()
{
  result = qword_100132F20;
  if (!qword_100132F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132F20);
  }

  return result;
}

unint64_t sub_100081374()
{
  result = qword_100132F28;
  if (!qword_100132F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132F28);
  }

  return result;
}

unint64_t sub_1000813CC()
{
  result = qword_100132F30;
  if (!qword_100132F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132F30);
  }

  return result;
}

unint64_t sub_100081424()
{
  result = qword_100132F38;
  if (!qword_100132F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132F38);
  }

  return result;
}

uint64_t sub_100081478(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10008151C()
{

  return sub_100032F94(v0, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_1000815CC()
{

  return sub_1000EC4A4();
}

uint64_t sub_1000815EC()
{
  v2 = *(v0 - 96);

  return sub_1000EC534();
}

uint64_t sub_100081654()
{
  v0 = sub_1000E9C34();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  sub_1000E9BB4();
  sub_100002A10(&qword_100132FD8, &qword_1000F4B40);
  sub_1000848B8();
  sub_1000E9C14();

  sub_1000E9BB4();
  sub_100002A10(&qword_100132FE0, &qword_1000F4B48);
  sub_1000848B8();
  sub_1000E9C14();

  sub_1000E9BB4();
  sub_100002A10(&qword_100132FE8, &qword_1000F4B50);
  sub_1000848B8();
  sub_1000E9C14();
  sub_100084904();
  v3 = v1[13];
  v4 = sub_1000848D0();
  v3(v4);
  sub_1000848EC();

  v5 = v1[1];
  v6 = sub_1000848E0();
  v5(v6);
  sub_1000E9BB4();
  sub_100002A10(&qword_100132FF0, &qword_1000F4B58);
  sub_1000848B8();
  sub_1000E9C14();

  sub_1000E9BB4();
  sub_100013D84();
  type metadata accessor for WidgetLocationManager();
  sub_1000848B8();
  sub_1000E9C04();
  sub_100084904();
  v7 = sub_1000848D0();
  v3(v7);
  sub_1000848EC();

  v8 = sub_1000848E0();
  v5(v8);
  sub_1000E9BB4();
  sub_100002A10(&qword_100132FF8, &qword_1000F4B60);
  sub_1000848B8();
  sub_1000E9C14();
  sub_100084904();
  v9 = sub_1000848D0();
  v3(v9);
  sub_1000848EC();

  v10 = sub_1000848E0();
  v5(v10);
  sub_1000E9414();
  sub_1000E9A94();

  sub_1000E9BB4();
  sub_100013D84();
  sub_1000E8BD4();
  sub_1000848B8();
  sub_1000E9C04();
  sub_100084904();
  v11 = sub_1000848D0();
  v3(v11);
  sub_1000848EC();

  v12 = sub_1000848E0();
  v5(v12);
  sub_1000E9BB4();
  sub_100013D84();
  type metadata accessor for WeatherDataService();
  sub_1000848B8();
  sub_1000E9C04();
  sub_100084904();
  v13 = sub_1000848D0();
  v3(v13);
  sub_1000848EC();

  v14 = sub_1000848E0();
  v5(v14);
  sub_1000E9BB4();
  sub_100013D84();
  type metadata accessor for EntryFactory();
  sub_1000848B8();
  sub_1000E9C04();
  sub_100084904();
  v15 = sub_1000848D0();
  v3(v15);
  sub_1000848EC();

  v16 = sub_1000848E0();
  v5(v16);
  sub_1000E9BB4();
  sub_100013D84();
  type metadata accessor for RefreshPolicyProvider();
  sub_1000848B8();
  sub_1000E9C04();
  sub_100084904();
  v17 = sub_1000848D0();
  v3(v17);
  sub_1000848EC();

  v18 = sub_1000848E0();
  v5(v18);
  sub_1000E9BB4();
  sub_100013D84();
  sub_1000E97B4();
  sub_1000848B8();
  sub_1000E9C04();
  sub_100084904();
  v19 = sub_1000848D0();
  v3(v19);
  sub_1000848EC();

  v20 = sub_1000848E0();
  v5(v20);
  sub_1000E9BB4();
  sub_100013D84();
  type metadata accessor for DemoManager();
  sub_1000848B8();
  sub_1000E9C04();
  sub_100084904();
  v21 = sub_1000848D0();
  v3(v21);
  sub_1000848EC();

  v22 = sub_1000848E0();
  v5(v22);
  sub_1000E9BC4();
  sub_1000E9BF4();
}

uint64_t sub_100081BB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_1001330D8, &qword_1000F4C38);
  result = sub_1000E9B54();
  if (v11)
  {
    v6 = a1[4];
    sub_100008DA8(a1, a1[3]);
    sub_100002A10(&qword_1001330E0, &unk_1000F4C40);
    result = sub_1000E9B54();
    if (v10)
    {
      v7 = sub_1000E9E44();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      result = sub_1000E9E34();
      a2[3] = v7;
      a2[4] = &protocol witness table for WidgetTimelineTelemetryManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100081CB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_1001330D0, &qword_1000F4C30);
  result = sub_1000E9B54();
  if (v8)
  {
    v5 = sub_1000E9E14();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_1000E9E04();
    a2[3] = v5;
    a2[4] = &protocol witness table for LocationAccessDataProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100081DC4(void *a1)
{
  v2 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v86 - v4;
  v6 = sub_1000EC244();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EC254();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = *(v93 + 64);
  __chkstk_darwin(v9);
  v96 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EAC94();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v95 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000E9B14();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133078, &qword_1000F4BE8);
  result = sub_1000E9B54();
  if (!v124[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133020, &qword_1000F4B88);
  result = sub_1000E9B54();
  if (!v123)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133050, &qword_1000F4BB8);
  result = sub_1000E9B54();
  if (!v121[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133080, &qword_1000F4BF0);
  result = sub_1000E9B54();
  if (!v120[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100132FE8, &qword_1000F4B50);
  result = sub_1000E9B54();
  if (!v119[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133088, &qword_1000F4BF8);
  result = sub_1000E9B54();
  if (!v118[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133090, &qword_1000F4C00);
  result = sub_1000E9B54();
  if (!v117[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133098, &qword_1000F4C08);
  result = sub_1000E9B54();
  if (!v116[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_1001330A0, &qword_1000F4C10);
  result = sub_1000E9B54();
  if (!v115[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v91 = v6;
  v92 = v5;
  v28 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_1001330A8, &qword_1000F4C18);
  result = sub_1000E9B54();
  if (v114[3])
  {
    v29 = sub_100031CF8(0, &qword_100130448, NSUserDefaults_ptr);
    v30 = sub_1000EC1C4();
    v31 = v123;
    v32 = sub_100084790(v122, v123);
    v87 = &v86;
    v33 = *(*(v31 - 8) + 64);
    __chkstk_darwin(v32);
    v35 = (&v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = *v35;
    v38 = type metadata accessor for LocalSearchRequestManager();
    v112 = v38;
    v113 = &off_1001266A0;
    v111[0] = v37;
    v110[3] = v29;
    v110[4] = &protocol witness table for NSUserDefaults;
    v110[0] = v30;
    v89 = type metadata accessor for WidgetLocationManager();
    v39 = objc_allocWithZone(v89);
    v40 = v112;
    v41 = sub_100084790(v111, v112);
    v86 = &v86;
    v42 = *(*(v40 - 8) + 64);
    __chkstk_darwin(v41);
    v44 = (&v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    v46 = *v44;
    v109[3] = v38;
    v109[4] = &off_1001266A0;
    v109[0] = v46;
    v47 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_lock;
    sub_100002A10(&qword_1001330B0, &qword_1000F4C20);
    v48 = *(v16 + 72);
    v49 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1000EFAD0;
    v90 = v30;
    sub_1000E9B04();
    v98[0] = v50;
    sub_1000847E0(&qword_1001330B8, &type metadata accessor for UnfairLock.Options);
    sub_100002A10(&qword_1001330C0, &qword_1000F4C28);
    sub_100031CA4(&qword_1001330C8, &qword_1001330C0, &qword_1000F4C28);
    sub_1000EC3C4();
    v51 = sub_1000E9B34();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    *&v39[v47] = sub_1000E9B24();
    v54 = &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_didReceiveLocationAuthorization];
    *v54 = 0xD00000000000001FLL;
    v54[1] = 0x80000001000FBA10;
    *&v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer] = 0;
    v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationIsUpdating] = 0;
    v88 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue;
    sub_100031CF8(0, &qword_1001316E8, OS_dispatch_queue_ptr);
    sub_1000EAC74();
    (*(v93 + 104))(v96, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v94);
    v98[0] = &_swiftEmptyArrayStorage;
    sub_1000847E0(&qword_1001316F0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100002A10(&qword_1001316F8, &qword_1000F4BA0);
    sub_100031CA4(&qword_100131700, &qword_1001316F8, &qword_1000F4BA0);
    sub_1000EC3C4();
    *&v39[v88] = sub_1000EC274();
    *&v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager] = 0;
    *&v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_completionQueue] = &_swiftEmptyArrayStorage;
    sub_100051D3C(v124, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager]);
    sub_100051D3C(v109, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_localSearchManager]);
    sub_100051D3C(v121, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_defaultLocationManager]);
    sub_100051D3C(v120, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_iCloudStatusProvider]);
    sub_100051D3C(v118, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_ubiquitousKeyValueStoreProvider]);
    sub_100051D3C(v117, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager]);
    sub_100051D3C(v116, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationsOfInterestDataSource]);
    sub_100051D3C(v115, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_weatherLocationCoalescenceManager]);
    sub_100051D3C(v114, &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationMatchHelper]);
    v55 = sub_1000E8524();
    sub_1000028A0(v92, 1, 1, v55);
    v56 = sub_1000E97D4();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    v59 = sub_1000E97C4();
    v99 = v56;
    v100 = &protocol witness table for SyncedDataContextProvider;
    v98[0] = v59;
    sub_100051D3C(v121, v108);
    v60 = sub_1000E96C4();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    v63 = sub_1000E96B4();
    sub_100051D3C(v118, v98);
    v64 = sub_1000E9864();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    v67 = sub_1000E9854();
    v68 = &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationDisplayContextReader];
    v68[3] = v64;
    v68[4] = &protocol witness table for LocationDisplayContextReader;
    *v68 = v67;
    sub_100051D3C(v118, v98);
    sub_100051D3C(v119, v108);
    v107[3] = v60;
    v107[4] = &protocol witness table for CoherenceDataManager;
    v107[0] = v63;
    sub_100051D3C(v110, v106);
    v69 = sub_1000E96E4();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();

    v72 = sub_1000E96D4();
    v73 = &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_savedLocationsReader];
    v73[3] = v69;
    v73[4] = &protocol witness table for SavedLocationsReader;
    *v73 = v72;
    sub_100051D3C(v118, v98);
    sub_100051D3C(v116, v108);
    sub_100051D3C(v115, v107);
    sub_100051D3C(v114, v106);
    sub_100051D3C(v119, &v105);
    sub_100051D3C(v121, &v104);
    sub_100051D3C(v110, &v103);
    v74 = sub_1000E9684();
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();
    v77 = sub_1000E9674();
    v78 = &v39[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_savedLocationFinder];
    v78[3] = v74;
    v78[4] = &protocol witness table for SavedLocationFinder;
    *v78 = v77;
    v102.receiver = v39;
    v102.super_class = v89;
    v79 = objc_msgSendSuper2(&v102, "init", v86, v87);
    v80 = *&v79[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue];
    v81 = swift_allocObject();
    *(v81 + 16) = v79;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_100084860;
    *(v82 + 24) = v81;
    v100 = sub_100084878;
    v101 = v82;
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 1107296256;
    v98[2] = sub_10008162C;
    v99 = &unk_1001272A0;
    v83 = _Block_copy(v98);
    v84 = v79;
    v85 = v80;

    dispatch_sync(v85, v83);

    _Block_release(v83);

    sub_100009068(v114);
    sub_100009068(v115);
    sub_100009068(v116);
    sub_100009068(v117);
    sub_100009068(v118);
    sub_100009068(v119);
    sub_100009068(v120);
    sub_100009068(v121);
    sub_100009068(v124);
    sub_100009068(v110);
    sub_100009068(v109);
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if ((v63 & 1) == 0)
    {
      sub_100009068(v111);
      sub_100009068(v122);
      return v84;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
  return result;
}