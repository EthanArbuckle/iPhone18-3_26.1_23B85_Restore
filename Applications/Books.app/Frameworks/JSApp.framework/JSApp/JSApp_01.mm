uint64_t sub_300E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *(*v1 + 272);
  v6 = *v1;
  *(v2 + 576) = a1;

  sub_371A8((v2 + 136));

  return _swift_task_switch(sub_30200, v4, 0);
}

uint64_t sub_30200()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  if (*(v0 + 576))
  {
    v3 = *(v0 + 504);
    v4 = *(v0 + 512);
    v5 = *(v0 + 496);
    v6 = (v0 + 448);
    v7 = *(v0 + 448);
    [objc_opt_self() updateUsedBootstrapFallback:0];

    sub_371A8((v0 + 16));
    v8 = sub_83CBC();
    sub_83D0C();
    v9 = sub_8486C();
    if (sub_848CC())
    {
      v10 = *(v0 + 504);
      v11 = *(v0 + 336);
      v12 = *(v0 + 304);
      v13 = *(v0 + 312);

      sub_83D3C();

      if ((*(v13 + 88))(v11, v12) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v14 = 0;
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 312) + 8))(*(v0 + 336), *(v0 + 304));
        v15 = "qos: 0x%x";
        v14 = 1;
      }

      v30 = *v6;
      v31 = swift_slowAlloc();
      *v31 = 0;
      *(v31 + 1) = v14;
      *(v31 + 2) = 1024;
      *(v31 + 4) = qos_class_self();
      v32 = sub_83C8C();
      _os_signpost_emit_with_name_impl(&dword_0, v8, v9, v32, "Package Provision", v15, v31, 8u);
    }

    v58 = *(v0 + 576);
LABEL_18:
    v36 = *v6;
    v38 = *(v0 + 496);
    v37 = *(v0 + 504);
    v39 = *(v0 + 480);
    v40 = *(v0 + 488);
    v42 = *(v0 + 464);
    v41 = *(v0 + 472);
    v46 = *(v0 + 456);
    v47 = *(v0 + 448);
    v48 = *(v0 + 440);
    v49 = *(v0 + 432);
    v43 = *(v0 + 416);
    v50 = *(v0 + 408);
    v51 = *(v0 + 384);
    v52 = *(v0 + 376);
    v53 = *(v0 + 344);
    v54 = *(v0 + 336);
    v55 = *(v0 + 328);
    v56 = *(v0 + 320);
    v57 = *(v0 + 296);
    v44 = *(*(v0 + 424) + 8);
    v44(v36, v43);

    v44(v41, v43);
    (*(v40 + 8))(v38, v39);

    v45 = *(v0 + 8);

    return v45(v58);
  }

  sub_371A8((v0 + 16));

  if ((*(v0 + 601) & 1) == 0)
  {
    v19 = *(v0 + 504);
    v20 = *(v0 + 496);
    v6 = (v0 + 432);
    v21 = *(v0 + 432);

    v22 = sub_83CBC();
    sub_83D0C();
    v23 = sub_8486C();
    if (sub_848CC())
    {
      v24 = *(v0 + 504);
      v26 = *(v0 + 312);
      v25 = *(v0 + 320);
      v27 = *(v0 + 304);

      sub_83D3C();

      if ((*(v26 + 88))(v25, v27) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v28 = 0;
        v29 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
        v29 = "qos: 0x%x";
        v28 = 1;
      }

      v33 = *v6;
      v34 = swift_slowAlloc();
      *v34 = 0;
      *(v34 + 1) = v28;
      *(v34 + 2) = 1024;
      *(v34 + 4) = qos_class_self();
      v35 = sub_83C8C();
      _os_signpost_emit_with_name_impl(&dword_0, v22, v23, v35, "Package Provision", v29, v34, 8u);
    }

    v58 = 0;
    goto LABEL_18;
  }

  v16 = swift_task_alloc();
  *(v0 + 584) = v16;
  *v16 = v0;
  v16[1] = sub_306D4;
  v17 = *(v0 + 272);

  return sub_350D8(2);
}

uint64_t sub_306D4(uint64_t a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 592) = a1;

  return _swift_task_switch(sub_307EC, v3, 0);
}

uint64_t sub_307EC()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  v4 = v0[55];
  [objc_opt_self() updateUsedBootstrapFallback:1];

  v5 = sub_83CBC();
  sub_83D0C();
  v6 = sub_8486C();
  if (sub_848CC())
  {
    v7 = v0[63];
    v8 = v0[41];
    v9 = v0[38];
    v10 = v0[39];

    sub_83D3C();

    if ((*(v10 + 88))(v8, v9) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = 0;
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[39] + 8))(v0[41], v0[38]);
      v12 = "qos: 0x%x";
      v11 = 1;
    }

    v13 = v0[55];
    v14 = swift_slowAlloc();
    *v14 = 0;
    *(v14 + 1) = v11;
    *(v14 + 2) = 1024;
    *(v14 + 4) = qos_class_self();
    v15 = sub_83C8C();
    _os_signpost_emit_with_name_impl(&dword_0, v5, v6, v15, "Package Provision", v12, v14, 8u);
  }

  v37 = v0[74];

  v17 = v0[62];
  v16 = v0[63];
  v18 = v0[60];
  v19 = v0[61];
  v20 = v0[59];
  v25 = v0[58];
  v26 = v0[57];
  v27 = v0[56];
  v28 = v0[54];
  v21 = v0[52];
  v29 = v0[51];
  v30 = v0[48];
  v31 = v0[47];
  v32 = v0[43];
  v33 = v0[42];
  v34 = v0[41];
  v35 = v0[40];
  v36 = v0[37];
  v22 = *(v0[53] + 8);
  v22(v0[55], v21);

  v22(v20, v21);
  (*(v19 + 8))(v17, v18);

  v23 = v0[1];

  return v23(v37);
}

uint64_t sub_30AC0@<X0>(void (*a1)(_BYTE *, _BYTE *, uint64_t)@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  LODWORD(v180) = a2;
  v182 = a1;
  v184 = a3;
  v5 = sub_2805C(&unk_CAE60, &qword_A1800);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v172 = &v167[-v7];
  v8 = sub_839CC();
  v178 = *(v8 - 8);
  v179 = v8;
  v9 = *(v178 + 64);
  v10 = __chkstk_darwin(v8);
  v170 = &v167[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v169 = &v167[-v13];
  v14 = __chkstk_darwin(v12);
  v175 = &v167[-v15];
  v16 = __chkstk_darwin(v14);
  v177 = &v167[-v17];
  v18 = __chkstk_darwin(v16);
  v174 = &v167[-v19];
  v20 = __chkstk_darwin(v18);
  v176 = &v167[-v21];
  __chkstk_darwin(v20);
  v181 = &v167[-v22];
  v23 = sub_2805C(&qword_CA740, &qword_A0F60);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v167[-v26];
  v28 = sub_2805C(&qword_CA718, &qword_A0F00);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v167[-v31];
  v188 = sub_8402C();
  v33 = *(v188 - 8);
  v34 = *(v33 + 8);
  v35 = __chkstk_darwin(v188);
  v37 = &v167[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v35);
  v171 = &v167[-v39];
  v40 = __chkstk_darwin(v38);
  v42 = &v167[-v41];
  v43 = __chkstk_darwin(v40);
  v173 = &v167[-v44];
  __chkstk_darwin(v43);
  v187 = &v167[-v45];
  v189 = v4;
  v183 = v4[OBJC_IVAR___JSAPackageProvisioner_isLaunching];
  v185 = v42;
  if (v183 != 1)
  {
    goto LABEL_5;
  }

  if (qword_CA420 != -1)
  {
    swift_once();
  }

  v46 = sub_2C284(v28, qword_CACD0);
  (*(v29 + 16))(v32, v46, v28);
  sub_83BAC();
  (*(v29 + 8))(v32, v28);
  if (LOBYTE(v190[0]) != 1)
  {
    v47 = &enum case for JetPackAssetRequestSourcePolicy.standard(_:);
  }

  else
  {
LABEL_5:
    v47 = &enum case for JetPackAssetRequestSourcePolicy.remoteOnly(_:);
  }

  v48 = *v47;
  v186 = v33;
  v49 = *(v33 + 13);
  v50 = v187;
  v51 = v188;
  (v49)(v187, v48, v188);
  if ((sub_83BDC() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (qword_CA410 != -1)
  {
    swift_once();
  }

  v52 = sub_2C284(v23, qword_CACA0);
  (*(v24 + 16))(v27, v52, v23);
  sub_83BAC();
  (*(v24 + 8))(v27, v23);
  if (!v190[1])
  {
    goto LABEL_29;
  }

  if (sub_481FC())
  {
    v172 = v49;

    v53 = v178;
    if (qword_CA3D0 != -1)
    {
      swift_once();
    }

    v54 = v179;
    v55 = sub_2C284(v179, qword_CA688);
    v56 = *(v53 + 16);
    v57 = v181;
    v56(v181, v55, v54);
    v58 = v176;
    v182 = v56;
    v175 = (v53 + 16);
    v56(v176, v57, v54);
    v59 = sub_83D4C();
    v60 = sub_847CC();
    if (os_log_type_enabled(v59, v60))
    {
      LODWORD(v171) = v60;
      v61 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      v62 = v180;
      *v61 = 136315394;
      v63 = 0xE600000000000000;
      v64 = 0x622D68636E75616CLL;
      v65 = 0xEE0064656C646E75;
      if (v62 != 2)
      {
        v64 = 0x756F72676B636162;
        v65 = 0xEA0000000000646ELL;
      }

      v66 = 0x6E2D68636E75616CLL;
      if (v62)
      {
        v63 = 0xED00006761622D6FLL;
      }

      else
      {
        v66 = 0x68636E75616CLL;
      }

      if (v62 <= 1)
      {
        v67 = v66;
      }

      else
      {
        v67 = v64;
      }

      if (v62 <= 1)
      {
        v68 = v63;
      }

      else
      {
        v68 = v65;
      }

      v69 = sub_3A93C(v67, v68, v190);

      *(v61 + 4) = v69;
      *(v61 + 12) = 2082;
      sub_38448(&qword_CA790, &type metadata accessor for URL);
      v70 = v176;
      v54 = v179;
      v71 = sub_84BBC();
      v73 = v72;
      v74 = *(v53 + 8);
      v180 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v189 = v74;
      v74(v70, v54);
      v75 = sub_3A93C(v71, v73, v190);

      *(v61 + 14) = v75;
      _os_log_impl(&dword_0, v59, v171, "JSAPackageProvisioner [%s] Step 1: Found user-specified boot url: local, i.e. %{public}s, loading with sourcePolicy .remoteOnly", v61, 0x16u);
      swift_arrayDestroy();

      v51 = v188;
    }

    else
    {

      v111 = *(v53 + 8);
      v180 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v189 = v111;
      v111(v58, v54);
    }

    v112 = v174;
    v182(v174, v181, v54);
    v191._countAndFlagsBits = 0x656A2E7865646E69;
    v191._object = 0xED00006B63617074;
    sub_8395C(v191);
    v113 = v173;
    (v172)(v173, enum case for JetPackAssetRequestSourcePolicy.remoteOnly(_:), v51);
    v114 = v183;
    if (v183)
    {
      v115 = 0x402E000000000000;
    }

    else
    {
      v115 = 0;
    }

    v116 = swift_allocObject();
    *(v116 + 16) = v115;
    *(v116 + 24) = v114 ^ 1;
    v117 = sub_83ECC();
    v118 = v184;
    v184[3] = v117;
    v118[4] = sub_38448(&qword_CA788, &type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
    sub_382A8(v118);
    v182(v177, v112, v54);
    v119 = v186;
    (*(v186 + 2))(v185, v113, v51);
    sub_83EDC();
    v120 = *(v119 + 1);
    v120(v113, v51);
    v121 = v189;
    v189(v112, v54);
    v121(v181, v54);
    return (v120)(v50, v51);
  }

  v76 = v172;
  sub_8399C();

  v77 = v178;
  v78 = v179;
  if ((*(v178 + 48))(v76, 1, v179) == 1)
  {
    sub_38328(v76, &unk_CAE60, &qword_A1800);
LABEL_29:
    v79 = v186;
    v81 = v186 + 16;
    v80 = *(v186 + 2);
    v80(v37, v50, v51);
    v82 = sub_83D4C();
    v83 = sub_847CC();
    v84 = os_log_type_enabled(v82, v83);
    v181 = v81;
    if (v84)
    {
      v85 = v80;
      v86 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v190[0] = v179;
      v87 = v180;
      *v86 = 136315394;
      v88 = 0xE600000000000000;
      v89 = 0x622D68636E75616CLL;
      v90 = 0xEE0064656C646E75;
      if (v87 != 2)
      {
        v89 = 0x756F72676B636162;
        v90 = 0xEA0000000000646ELL;
      }

      v91 = 0x6E2D68636E75616CLL;
      if (v87)
      {
        v88 = 0xED00006761622D6FLL;
      }

      else
      {
        v91 = 0x68636E75616CLL;
      }

      if (v87 <= 1)
      {
        v92 = v91;
      }

      else
      {
        v92 = v89;
      }

      if (v87 <= 1)
      {
        v93 = v88;
      }

      else
      {
        v93 = v90;
      }

      v94 = sub_3A93C(v92, v93, v190);

      *(v86 + 4) = v94;
      *(v86 + 12) = 2080;
      v95 = v185;
      v51 = v188;
      v80 = v85;
      v85(v185, v37, v188);
      v96 = sub_843FC();
      v97 = v37;
      v98 = v96;
      v100 = v99;
      v101 = *(v186 + 1);
      v101(v97, v51);
      v102 = sub_3A93C(v98, v100, v190);

      *(v86 + 14) = v102;
      _os_log_impl(&dword_0, v82, v83, "JSAPackageProvisioner [%s] Step 1: Loading JetPack using Bag Key with sourcePolicy %s", v86, 0x16u);
      swift_arrayDestroy();

      v50 = v187;
    }

    else
    {

      v101 = *(v79 + 1);
      v101(v37, v51);
      v95 = v185;
    }

    v103 = [objc_opt_self() jsAppUrlKey];
    v104 = v183;
    if (v183)
    {
      v105 = 0x402E000000000000;
    }

    else
    {
      v105 = 0;
    }

    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v104 ^ 1;
    v107 = sub_83EFC();
    v108 = v184;
    v184[3] = v107;
    v108[4] = sub_38448(&qword_CA7A0, &type metadata accessor for ValidatedJetPackAssetLocations.BagKeyLocation);
    sub_382A8(v108);
    v80(v95, v50, v51);

    v109 = v182;
    sub_83F0C();
    return (v101)(v50, v51);
  }

  v122 = v175;
  (*(v77 + 32))(v175, v76, v78);
  v123 = *(v77 + 16);
  v124 = v169;
  v181 = (v77 + 16);
  v176 = v123;
  (v123)(v169, v122, v78);
  v125 = v77;
  v126 = v186;
  v127 = v186 + 16;
  v128 = v171;
  v182 = *(v186 + 2);
  v182(v171, v50, v51);
  v129 = sub_83D4C();
  v130 = sub_847CC();
  v131 = os_log_type_enabled(v129, v130);
  v173 = v127;
  if (v131)
  {
    v168 = v130;
    v172 = v129;
    v132 = swift_slowAlloc();
    v190[0] = swift_slowAlloc();
    v133 = v180;
    *v132 = 136315650;
    v134 = 0xE600000000000000;
    v135 = 0x622D68636E75616CLL;
    v136 = 0xEE0064656C646E75;
    if (v133 != 2)
    {
      v135 = 0x756F72676B636162;
      v136 = 0xEA0000000000646ELL;
    }

    v137 = 0x6E2D68636E75616CLL;
    if (v133)
    {
      v134 = 0xED00006761622D6FLL;
    }

    else
    {
      v137 = 0x68636E75616CLL;
    }

    if (v133 <= 1)
    {
      v138 = v137;
    }

    else
    {
      v138 = v135;
    }

    if (v133 <= 1)
    {
      v139 = v134;
    }

    else
    {
      v139 = v136;
    }

    v140 = v185;
    v141 = sub_3A93C(v138, v139, v190);

    *(v132 + 4) = v141;
    *(v132 + 12) = 2082;
    sub_38448(&qword_CA790, &type metadata accessor for URL);
    v142 = v179;
    v143 = sub_84BBC();
    v145 = v144;
    v146 = *(v178 + 8);
    v180 = (v178 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v189 = v146;
    v146(v124, v142);
    v147 = sub_3A93C(v143, v145, v190);

    *(v132 + 14) = v147;
    *(v132 + 22) = 2080;
    v148 = v171;
    v149 = v188;
    v182(v140, v171, v188);
    v150 = sub_843FC();
    v152 = v151;
    v153 = *(v186 + 1);
    v174 = ((v186 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v186 = v153;
    (v153)(v148, v149);
    v154 = sub_3A93C(v150, v152, v190);
    v51 = v149;

    *(v132 + 24) = v154;
    v155 = v172;
    _os_log_impl(&dword_0, v172, v168, "JSAPackageProvisioner [%s] Step 1: Found user-specified boot url: %{public}s, loading with sourcePolicy %s", v132, 0x20u);
    swift_arrayDestroy();

    v78 = v142;

    v50 = v187;
  }

  else
  {

    v156 = *(v126 + 1);
    v174 = ((v126 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v186 = v156;
    (v156)(v128, v51);
    v157 = *(v125 + 8);
    v180 = (v125 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v189 = v157;
    v157(v124, v78);
  }

  v158 = v170;
  v159 = v175;
  v160 = v176;
  (v176)(v170, v175, v78);
  v192._countAndFlagsBits = 0x656A2E7865646E69;
  v192._object = 0xED00006B63617074;
  sub_8395C(v192);
  v161 = v183;
  if (v183)
  {
    v162 = 0x402E000000000000;
  }

  else
  {
    v162 = 0;
  }

  v163 = swift_allocObject();
  *(v163 + 16) = v162;
  *(v163 + 24) = v161 ^ 1;
  v164 = sub_83ECC();
  v165 = v184;
  v184[3] = v164;
  v165[4] = sub_38448(&qword_CA788, &type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
  sub_382A8(v165);
  v160(v177, v158, v78);
  v182(v185, v50, v51);
  sub_83EDC();
  v166 = v189;
  v189(v158, v78);
  v166(v159, v78);
  return (v186)(v50, v51);
}

uint64_t sub_31E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6[2] = a1;
  v6[3] = a4;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_31EC0;

  return sub_31FF8(a5, a6);
}

uint64_t sub_31EC0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_31FD8, v3, 0);
}

uint64_t sub_31FF8(uint64_t a1, char a2)
{
  *(v3 + 368) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = sub_2805C(&qword_CA740, &qword_A0F60);
  *(v3 + 144) = v4;
  v5 = *(v4 - 8);
  *(v3 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v7 = type metadata accessor for BooksJetPackResourceBundle();
  *(v3 + 168) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v9 = sub_83EAC();
  *(v3 + 192) = v9;
  v10 = *(v9 - 8);
  *(v3 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v12 = sub_839CC();
  *(v3 + 224) = v12;
  v13 = *(v12 - 8);
  *(v3 + 232) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  v15 = *(*(sub_2805C(&qword_CA750, &qword_A0F70) - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v16 = sub_2805C(&qword_CA758, &qword_A0F78);
  *(v3 + 272) = v16;
  v17 = *(v16 - 8);
  *(v3 + 280) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  v19 = *(*(sub_83F6C() - 8) + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  v20 = sub_83F4C();
  *(v3 + 304) = v20;
  v21 = *(v20 - 8);
  *(v3 + 312) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_32308, v2, 0);
}

uint64_t sub_32308()
{
  v32 = v0;
  v1 = *(v0 + 136);
  *(v0 + 328) = OBJC_IVAR___JSAPackageProvisioner_logger;
  v2 = sub_83D4C();
  v3 = sub_847CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 368);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136315138;
    v7 = 0xE600000000000000;
    v8 = 0x622D68636E75616CLL;
    v9 = 0xEE0064656C646E75;
    if (v4 != 2)
    {
      v8 = 0x756F72676B636162;
      v9 = 0xEA0000000000646ELL;
    }

    v10 = 0x6E2D68636E75616CLL;
    if (v4)
    {
      v7 = 0xED00006761622D6FLL;
    }

    else
    {
      v10 = 0x68636E75616CLL;
    }

    if (v4 <= 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (v4 <= 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    v13 = sub_3A93C(v11, v12, v31);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_0, v2, v3, "JSAPackageProvisioner [%s] Step 2: Computing bootURL from defaults or bag", v5, 0xCu);
    sub_371A8(v6);
  }

  v14 = [objc_opt_self() defaultBag];
  *(v0 + 336) = v14;
  v15 = sub_83FBC();
  v16 = sub_83FAC();
  *(v0 + 344) = v16;
  v17 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 128);
  v31[3] = v15;
  v31[4] = &protocol witness table for JetPackAssetDiskCache;
  v31[0] = v16;

  sub_83F5C();
  v20 = sub_83F8C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_83F7C();
  sub_370FC(v19, v0 + 16);
  v23 = v14;
  sub_83F3C();
  v24 = async function pointer to ValidatedJetPackLoadingCoordinator.getJetPackAsset<A>(unpackAsset:)[1];
  v25 = swift_task_alloc();
  *(v0 + 352) = v25;
  *v25 = v0;
  v25[1] = sub_3289C;
  v26 = *(v0 + 320);
  v27 = *(v0 + 288);
  v28 = *(v0 + 192);
  v29 = *(v0 + 136);

  return ValidatedJetPackLoadingCoordinator.getJetPackAsset<A>(unpackAsset:)(v27, &unk_A0F90, v29, v28, &protocol witness table for InMemoryJetPackResourceBundle);
}

uint64_t sub_3289C()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_33834;
  }

  else
  {
    v6 = sub_329C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_329C8()
{
  v160 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 136);
  sub_370FC(*(v0 + 128), v0 + 56);
  sub_2805C(&qword_CA730, &qword_A0F28);
  v5 = sub_83ECC();
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  (*(v7 + 56))(v3, v6 ^ 1u, 1, v5);
  sub_37660(v3, v2, &qword_CA750, &qword_A0F70);
  v8 = sub_83D4C();
  v9 = sub_847CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 368);
    v11 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = 0xE600000000000000;
    v13 = 0x622D68636E75616CLL;
    v14 = 0xEE0064656C646E75;
    if (v10 != 2)
    {
      v13 = 0x756F72676B636162;
      v14 = 0xEA0000000000646ELL;
    }

    v15 = 0x6E2D68636E75616CLL;
    if (v10)
    {
      v12 = 0xED00006761622D6FLL;
    }

    else
    {
      v15 = 0x68636E75616CLL;
    }

    if (v10 <= 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (v10 <= 1)
    {
      v17 = v12;
    }

    else
    {
      v17 = v14;
    }

    v19 = *(v0 + 248);
    v18 = *(v0 + 256);
    v20 = sub_3A93C(v16, v17, &v159);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2082;
    sub_37660(v18, v19, &qword_CA750, &qword_A0F70);
    v21 = (*(v7 + 48))(v19, 1, v5);
    v22 = *(v0 + 248);
    if (v21 == 1)
    {
      sub_38328(*(v0 + 248), &qword_CA750, &qword_A0F70);
      v23 = 0xE300000000000000;
      v24 = 6775138;
    }

    else
    {
      v27 = *(v0 + 232);
      v26 = *(v0 + 240);
      v28 = *(v0 + 224);
      sub_83EBC();
      (*(v7 + 8))(v22, v5);
      v24 = sub_838FC();
      v23 = v29;
      (*(v27 + 8))(v26, v28);
    }

    sub_38328(*(v0 + 256), &qword_CA750, &qword_A0F70);
    v30 = sub_3A93C(v24, v23, &v159);

    *(v11 + 14) = v30;
    _os_log_impl(&dword_0, v8, v9, "JSAPackageProvisioner [%s] Step 3: Decrypting and verifying JetPack from %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = *(v0 + 256);

    sub_38328(v25, &qword_CA750, &qword_A0F70);
  }

  v31 = *(v0 + 272);
  v33 = *(v0 + 208);
  v32 = *(v0 + 216);
  v35 = *(v0 + 192);
  v34 = *(v0 + 200);
  v36 = *(v0 + 368);
  v155 = sub_378EC(*(v0 + 288), *(v0 + 264));
  v38 = v37;
  sub_83F2C();
  (*(v34 + 16))(v33, v32, v35);
  v39 = 0xE600000000000000;
  v40 = 0x622D68636E75616CLL;
  v41 = 0xEE0064656C646E75;
  if (v36 != 2)
  {
    v40 = 0x756F72676B636162;
    v41 = 0xEA0000000000646ELL;
  }

  v42 = 0x6E2D68636E75616CLL;
  if (v36)
  {
    v39 = 0xED00006761622D6FLL;
  }

  else
  {
    v42 = 0x68636E75616CLL;
  }

  if (v36 <= 1)
  {
    v43 = v42;
  }

  else
  {
    v43 = v40;
  }

  if (v36 <= 1)
  {
    v44 = v39;
  }

  else
  {
    v44 = v41;
  }

  v46 = *(v0 + 176);
  v45 = *(v0 + 184);
  v47 = *(v0 + 368);
  BooksJetPackResourceBundle.init(memoryJetPack:provisionMode:)(*(v0 + 208), v43, v44, v45);
  sub_38138(v45, v46);
  v48 = type metadata accessor for Package();
  v49 = objc_allocWithZone(v48);
  sub_38138(v46, &v49[OBJC_IVAR___JSAPackage_jetPack]);
  v50 = &v49[OBJC_IVAR___JSAPackage_nameForJSContext];
  *v50 = v155;
  v50[1] = v38;
  v49[OBJC_IVAR___JSAPackage_isBundled] = 0;
  *(v0 + 96) = v49;
  *(v0 + 104) = v48;

  v51 = objc_msgSendSuper2((v0 + 96), "init");
  sub_3819C(v46);
  if (v47 > 1)
  {
    if (v47 == 2 && (Package.isSupported.getter() & 1) == 0)
    {
      v52 = *(v0 + 328);
      v53 = *(v0 + 136);

      v54 = v38;
      v55 = v51;
      v56 = sub_83D4C();
      v57 = sub_847BC();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 168);
        v59 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *v59 = 136315906;
        *(v59 + 4) = sub_3A93C(0x622D68636E75616CLL, 0xEE0064656C646E75, &v159);
        *(v59 + 12) = 2082;
        sub_38448(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle);
        v60 = sub_83FCC();
        if (v61)
        {
          v62 = v61;
        }

        else
        {
          v60 = 0x302E302E30;
          v62 = 0xE500000000000000;
        }

        v63 = sub_3A93C(v60, v62, &v159);

        *(v59 + 14) = v63;
        *(v59 + 22) = 2082;
        *(v59 + 24) = sub_3A93C(v155, v54, &v159);
        *(v59 + 32) = 2080;
        *(v59 + 34) = sub_3A93C(14454, 0xE200000000000000, &v159);
        _os_log_impl(&dword_0, v56, v57, "JSAPackageProvisioner [%s] Error: Bundled JetPack is outdated and needs update, version=%{public}s, name=%{public}s, supportedVersion=%s", v59, 0x2Au);
        swift_arrayDestroy();
      }

      v38 = v54;
    }

    goto LABEL_41;
  }

  if (!v47)
  {
    sub_59ED4();
LABEL_41:
    v64 = *(v0 + 328);
    v65 = *(v0 + 136);

    v66 = v51;
    v67 = sub_83D4C();
    v68 = sub_847CC();
    v153 = v66;

    if (os_log_type_enabled(v67, v68))
    {
      log = v67;
      v149 = v38;
      v69 = *(v0 + 368);
      v70 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *v70 = 136315650;
      v71 = 0xE600000000000000;
      v72 = 0x622D68636E75616CLL;
      v73 = 0xEE0064656C646E75;
      if (v69 != 2)
      {
        v72 = 0x756F72676B636162;
        v73 = 0xEA0000000000646ELL;
      }

      v74 = 0x6E2D68636E75616CLL;
      if (v69)
      {
        v71 = 0xED00006761622D6FLL;
      }

      else
      {
        v74 = 0x68636E75616CLL;
      }

      if (v69 <= 1)
      {
        v75 = v74;
      }

      else
      {
        v75 = v72;
      }

      if (v69 <= 1)
      {
        v76 = v71;
      }

      else
      {
        v76 = v73;
      }

      v132 = *(v0 + 336);
      v133 = *(v0 + 344);
      v141 = *(v0 + 304);
      v143 = *(v0 + 320);
      v77 = *(v0 + 280);
      v137 = *(v0 + 288);
      v139 = *(v0 + 312);
      v135 = *(v0 + 216);
      v136 = *(v0 + 272);
      v78 = *(v0 + 200);
      v134 = *(v0 + 192);
      v131 = *(v0 + 184);
      v79 = *(v0 + 168);
      v80 = sub_3A93C(v75, v76, &v159);

      *(v70 + 4) = v80;
      *(v70 + 12) = 2082;
      sub_38448(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle);
      v81 = sub_83FCC();
      if (v82)
      {
        v83 = v82;
      }

      else
      {
        v81 = 0x302E302E30;
        v83 = 0xE500000000000000;
      }

      v84 = sub_3A93C(v81, v83, &v159);

      *(v70 + 14) = v84;
      *(v70 + 22) = 2082;
      v85 = sub_3A93C(v155, v149, &v159);

      *(v70 + 24) = v85;
      _os_log_impl(&dword_0, log, v68, "JSAPackageProvisioner [%s] Done: Provision succeeded with version=%{public}s, name=%{public}s", v70, 0x20u);
      swift_arrayDestroy();

      sub_3819C(v131);
      (*(v78 + 8))(v135, v134);
      (*(v77 + 8))(v137, v136);
      (*(v139 + 8))(v143, v141);
    }

    else
    {
      v87 = *(v0 + 336);
      v86 = *(v0 + 344);
      v88 = *(v0 + 312);
      v156 = *(v0 + 320);
      v89 = *(v0 + 280);
      loga = *(v0 + 288);
      v150 = *(v0 + 304);
      v144 = *(v0 + 272);
      v90 = *(v0 + 216);
      v91 = *(v0 + 192);
      v92 = *(v0 + 200);
      v93 = v67;
      v94 = *(v0 + 184);

      sub_3819C(v94);
      (*(v92 + 8))(v90, v91);
      (*(v89 + 8))(loga, v144);
      (*(v88 + 8))(v156, v150);
    }

    v95 = *(v0 + 264);
    goto LABEL_59;
  }

  if (Package.isSupported.getter())
  {
    goto LABEL_41;
  }

  v108 = *(v0 + 328);
  v109 = *(v0 + 136);

  v110 = v51;
  v111 = sub_83D4C();
  v112 = sub_847CC();

  v154 = v110;
  if (os_log_type_enabled(v111, v112))
  {
    v113 = v38;
    v114 = *(v0 + 168);
    v115 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *v115 = 136315906;
    *(v115 + 4) = sub_3A93C(0x6E2D68636E75616CLL, 0xED00006761622D6FLL, &v159);
    *(v115 + 12) = 2082;
    sub_38448(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle);
    v116 = sub_83FCC();
    if (v117)
    {
      v118 = v117;
    }

    else
    {
      v116 = 0x302E302E30;
      v118 = 0xE500000000000000;
    }

    v119 = sub_3A93C(v116, v118, &v159);

    *(v115 + 14) = v119;
    *(v115 + 22) = 2082;
    v120 = sub_3A93C(v155, v113, &v159);

    *(v115 + 24) = v120;
    *(v115 + 32) = 2080;
    *(v115 + 34) = sub_3A93C(14454, 0xE200000000000000, &v159);
    _os_log_impl(&dword_0, v111, v112, "JSAPackageProvisioner [%s] Done: Rejected unsupported fallback JetPack with version=%{public}s, name=%{public}s, supportedVersion=%s", v115, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (qword_CA418 != -1)
  {
    swift_once();
  }

  v122 = *(v0 + 336);
  v121 = *(v0 + 344);
  v123 = *(v0 + 312);
  v158 = *(v0 + 320);
  v124 = *(v0 + 280);
  v142 = *(v0 + 272);
  v145 = *(v0 + 288);
  logb = *(v0 + 264);
  v152 = *(v0 + 304);
  v125 = *(v0 + 200);
  v138 = *(v0 + 192);
  v140 = *(v0 + 216);
  v126 = *(v0 + 184);
  v128 = *(v0 + 152);
  v127 = *(v0 + 160);
  v129 = *(v0 + 144);
  v130 = sub_2C284(v129, qword_CACB8);
  (*(v128 + 16))(v127, v130, v129);
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  sub_83BBC();

  (*(v128 + 8))(v127, v129);
  sub_3819C(v126);
  (*(v125 + 8))(v140, v138);
  (*(v124 + 8))(v145, v142);
  (*(v123 + 8))(v158, v152);
  v95 = logb;
  v153 = 0;
LABEL_59:
  sub_38328(v95, &qword_CA750, &qword_A0F70);
  v96 = *(v0 + 320);
  v97 = *(v0 + 288);
  v98 = *(v0 + 296);
  v100 = *(v0 + 256);
  v99 = *(v0 + 264);
  v102 = *(v0 + 240);
  v101 = *(v0 + 248);
  v104 = *(v0 + 208);
  v103 = *(v0 + 216);
  v105 = *(v0 + 184);
  v151 = *(v0 + 176);
  v157 = *(v0 + 160);

  v106 = *(v0 + 8);

  return v106(v153);
}

uint64_t sub_33834()
{
  v37 = v0;
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 360);
  v6 = *(v0 + 328);
  v7 = *(v0 + 136);
  swift_errorRetain();
  v8 = sub_83D4C();
  v9 = sub_847AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 368);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    v14 = 0xE600000000000000;
    *v11 = 136315394;
    v15 = 0x68636E75616CLL;
    v16 = 0xEE0064656C646E75;
    v17 = 0x622D68636E75616CLL;
    if (v10 != 2)
    {
      v17 = 0x756F72676B636162;
      v16 = 0xEA0000000000646ELL;
    }

    if (v10)
    {
      v15 = 0x6E2D68636E75616CLL;
      v14 = 0xED00006761622D6FLL;
    }

    if (v10 <= 1)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    v20 = sub_3A93C(v18, v19, &v36);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v21;
    *v12 = v21;
    _os_log_impl(&dword_0, v8, v9, "JSAPackageProvisioner [%s] Error: Provision failed due to error=%@", v11, 0x16u);
    sub_38328(v12, &qword_CA760, &qword_A0F80);

    sub_371A8(v13);
  }

  else
  {
  }

  v22 = *(v0 + 320);
  v23 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v30 = *(v0 + 208);
  v29 = *(v0 + 216);
  v31 = *(v0 + 184);
  v34 = *(v0 + 176);
  v35 = *(v0 + 160);

  v32 = *(v0 + 8);

  return v32(0);
}

uint64_t sub_33B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_33BDC;

  return static Task<>.sleep(nanoseconds:)(15000000000);
}

uint64_t sub_33BDC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_33D0C, 0, 0);
  }
}

uint64_t sub_33D0C()
{
  v1 = *(v0 + 16);
  sub_2805C(&qword_CA728, &qword_A0F20);
  sub_8469C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_33D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_37660(a3, v24 - v10, &qword_CA5E8, &qword_A0850);
  v12 = sub_8468C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_38328(v11, &qword_CA5E8, &qword_A0850);
  }

  else
  {
    sub_8467C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_8460C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_8442C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_38328(a3, &qword_CA5E8, &qword_A0850);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_38328(a3, &qword_CA5E8, &qword_A0850);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_34048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 192) = a6;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  v7 = sub_2805C(&qword_CA740, &qword_A0F60);
  *(v6 + 104) = v7;
  v8 = *(v7 - 8);
  *(v6 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v10 = sub_839CC();
  *(v6 + 128) = v10;
  v11 = *(v10 - 8);
  *(v6 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v13 = *(*(sub_2805C(&qword_CA748, &qword_A0F68) - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v14 = sub_83EFC();
  *(v6 + 160) = v14;
  v15 = *(v14 - 8);
  *(v6 + 168) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_34208, 0, 0);
}

uint64_t sub_34208()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  sub_370FC(v0[11], (v0 + 2));
  sub_2805C(&qword_CA730, &qword_A0F28);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[21];
    v6 = v0[22];
    v9 = v0[19];
    v8 = v0[20];
    v5(v9, 0, 1, v8);
    (*(v7 + 32))(v6, v9, v8);
    v10 = async function pointer to ValidatedJetPackAssetLocations.BagKeyLocation.url()[1];
    v11 = swift_task_alloc();
    v0[23] = v11;
    *v11 = v0;
    v11[1] = sub_343D0;
    v12 = v0[22];
    v13 = v0[18];

    return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v13);
  }

  else
  {
    v14 = v0[19];
    v5(v14, 1, 1, v0[20]);
    sub_38328(v14, &qword_CA748, &qword_A0F68);
    v15 = v0[22];
    v16 = v0[18];
    v17 = v0[19];
    v18 = v0[15];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_343D0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_34908;
  }

  else
  {
    v3 = sub_344E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_344E8()
{
  v44 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = sub_8391C();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_CA418 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = sub_2C284(v9, qword_CACB8);
  v11 = *(v8 + 16);
  v11(v7, v10, v9);
  sub_83BAC();
  v12 = *(v8 + 8);
  v12(v7, v9);
  v13 = *(v0 + 64);
  if (v13)
  {
    if (*(v0 + 56) == v4 && v13 == v6)
    {
      v14 = *(v0 + 64);
LABEL_9:

      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      goto LABEL_23;
    }

    v15 = *(v0 + 64);
    v16 = sub_84BEC();

    if (v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v11(v17, v10, v18);
  *(v0 + 72) = v4;
  *(v0 + 80) = v6;
  sub_83BBC();
  v12(v17, v18);

  v19 = sub_83D4C();
  v20 = sub_847CC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 192);
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v23 = 0xE600000000000000;
    *v22 = 136315394;
    v24 = 0x68636E75616CLL;
    v25 = 0xEE0064656C646E75;
    v26 = 0x622D68636E75616CLL;
    if (v21 != 2)
    {
      v26 = 0x756F72676B636162;
      v25 = 0xEA0000000000646ELL;
    }

    if (v21)
    {
      v24 = 0x6E2D68636E75616CLL;
      v23 = 0xED00006761622D6FLL;
    }

    if (v21 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    if (v21 <= 1)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    v29 = *(v0 + 168);
    v42 = *(v0 + 176);
    v41 = *(v0 + 160);
    v30 = sub_3A93C(v27, v28, &v43);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2082;
    v31 = sub_3A93C(v4, v6, &v43);

    *(v22 + 14) = v31;
    _os_log_impl(&dword_0, v19, v20, "JSAPackageProvisioner [%s] Persisting LastCachedBootURL='%{public}s", v22, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v42, v41);
  }

  else
  {
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    v34 = *(v0 + 160);

    (*(v33 + 8))(v32, v34);
  }

LABEL_23:
  v35 = *(v0 + 176);
  v36 = *(v0 + 144);
  v37 = *(v0 + 152);
  v38 = *(v0 + 120);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_34908()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_349A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_8402C();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  v5 = __chkstk_darwin(v3);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v49 - v7;
  v8 = sub_2805C(&qword_CA740, &qword_A0F60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = sub_2805C(&unk_CAE60, &qword_A1800);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v49 - v15;
  v17 = sub_839CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v53 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v49 - v23;
  __chkstk_darwin(v22);
  v26 = &v49 - v25;
  if (qword_CA418 != -1)
  {
    swift_once();
  }

  v27 = sub_2C284(v8, qword_CACB8);
  (*(v9 + 16))(v12, v27, v8);
  sub_83BAC();
  (*(v9 + 8))(v12, v8);
  sub_8399C();

  v28 = *(v18 + 48);
  if (v28(v16, 1, v17) == 1)
  {
    if (qword_CA460 != -1)
    {
      swift_once();
    }

    v29 = sub_2C284(v17, qword_CEEC8);
    v30 = *(v18 + 16);
    v31 = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v26, v29, v17);
    if (v28(v16, 1, v17) != 1)
    {
      sub_38328(v16, &unk_CAE60, &qword_A1800);
    }
  }

  else
  {
    (*(v18 + 32))(v26, v16, v17);
    v30 = *(v18 + 16);
    v31 = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v54 = v26;
  v51 = v31;
  v52 = v30;
  v30(v24, v26, v17);
  v55 = v2;
  v32 = sub_83D4C();
  v33 = sub_847CC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_3A93C(0x6E2D68636E75616CLL, 0xED00006761622D6FLL, &v61);
    *(v34 + 12) = 2082;
    sub_38448(&qword_CA790, &type metadata accessor for URL);
    v35 = sub_84BBC();
    v37 = v36;
    v50 = *(v18 + 8);
    v50(v24, v17);
    v38 = sub_3A93C(v35, v37, &v61);

    *(v34 + 14) = v38;
    _os_log_impl(&dword_0, v32, v33, "JSAPackageProvisioner [%s] Obtained fallbackURL='%{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v50 = *(v18 + 8);
    v50(v24, v17);
  }

  v40 = v58;
  v39 = v59;
  v41 = v60;
  (*(v59 + 104))(v58, enum case for JetPackAssetRequestSourcePolicy.localOnly(_:), v60);
  v42 = *(v55 + OBJC_IVAR___JSAPackageProvisioner_isLaunching);
  if (v42)
  {
    v43 = 0x402E000000000000;
  }

  else
  {
    v43 = 0;
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v42 ^ 1;
  v45 = sub_83ECC();
  v46 = v56;
  v56[3] = v45;
  v46[4] = sub_38448(&qword_CA788, &type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
  sub_382A8(v46);
  v47 = v54;
  v52(v53, v54, v17);
  (*(v39 + 16))(v57, v40, v41);
  sub_83EDC();
  (*(v39 + 8))(v40, v41);
  return (v50)(v47, v17);
}

uint64_t sub_350D8(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 426) = a1;
  *(v2 + 168) = swift_getObjectType();
  v3 = *(*(type metadata accessor for BooksJetPackResourceBundle() - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v4 = sub_83E6C();
  *(v2 + 192) = v4;
  v5 = *(v4 - 8);
  *(v2 + 200) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v7 = sub_83EAC();
  *(v2 + 216) = v7;
  v8 = *(v7 - 8);
  *(v2 + 224) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v10 = sub_83FEC();
  *(v2 + 264) = v10;
  v11 = *(v10 - 8);
  *(v2 + 272) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 280) = swift_task_alloc();
  v13 = sub_2805C(&qword_CA718, &qword_A0F00);
  *(v2 + 288) = v13;
  v14 = *(v13 - 8);
  *(v2 + 296) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 304) = swift_task_alloc();
  v16 = sub_839CC();
  *(v2 + 312) = v16;
  v17 = *(v16 - 8);
  *(v2 + 320) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_35398, v1, 0);
}

uint64_t sub_35398()
{
  v63 = v0;
  v1 = *(v0 + 168);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_8437C();
  v5 = sub_8437C();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (!v6)
  {
    return sub_84AFC();
  }

  v7 = *(v0 + 344);
  sub_8396C();

  if (qword_CA430 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  v10 = *(v0 + 288);
  v11 = sub_2C284(v10, qword_CAD00);
  v12 = *(v9 + 16);
  *(v0 + 352) = v12;
  *(v0 + 360) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  sub_83BAC();
  v13 = *(v9 + 8);
  *(v0 + 368) = v13;
  *(v0 + 376) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v10);
  if (*(v0 + 424) == 1)
  {
    if (qword_CA3D0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 336);
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    v17 = sub_2C284(v15, qword_CA688);
    v18 = *(v16 + 16);
    v18(v14, v17, v15);
    v65._countAndFlagsBits = 0x656A2E7865646E69;
    v65._object = 0xED00006B63617074;
    sub_8395C(v65);
  }

  else
  {
    v18 = *(*(v0 + 320) + 16);
    v18(*(v0 + 336), *(v0 + 344), *(v0 + 312));
  }

  v20 = *(v0 + 328);
  v21 = *(v0 + 336);
  v22 = *(v0 + 312);
  v23 = *(v0 + 160);
  *(v0 + 384) = OBJC_IVAR___JSAPackageProvisioner_logger;
  v18(v20, v21, v22);
  v24 = sub_83D4C();
  v25 = sub_847CC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 426);
    v27 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v28 = 0xE600000000000000;
    *v27 = 136315394;
    v29 = 0x68636E75616CLL;
    v30 = 0xEE0064656C646E75;
    v31 = 0x622D68636E75616CLL;
    if (v26 != 2)
    {
      v31 = 0x756F72676B636162;
      v30 = 0xEA0000000000646ELL;
    }

    if (v26)
    {
      v29 = 0x6E2D68636E75616CLL;
      v28 = 0xED00006761622D6FLL;
    }

    if (v26 <= 1)
    {
      v32 = v29;
    }

    else
    {
      v32 = v31;
    }

    if (v26 <= 1)
    {
      v33 = v28;
    }

    else
    {
      v33 = v30;
    }

    v34 = *(v0 + 320);
    v35 = *(v0 + 328);
    v36 = *(v0 + 312);
    v37 = sub_3A93C(v32, v33, &v62);

    *(v27 + 4) = v37;
    *(v27 + 12) = 2082;
    v38 = sub_8398C();
    v40 = v39;
    v41 = *(v34 + 8);
    v41(v35, v36);
    v42 = sub_3A93C(v38, v40, &v62);

    *(v27 + 14) = v42;
    _os_log_impl(&dword_0, v24, v25, "JSAPackageProvisioner [%s] Step 4: Loading bundled JetPack at %{public}s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v44 = *(v0 + 320);
    v43 = *(v0 + 328);
    v45 = *(v0 + 312);

    v41 = *(v44 + 8);
    v41(v43, v45);
  }

  *(v0 + 392) = v41;
  v46 = *(v0 + 336);
  v48 = *(v0 + 272);
  v47 = *(v0 + 280);
  v49 = *(v0 + 264);
  v51 = *(v0 + 200);
  v50 = *(v0 + 208);
  v52 = *(v0 + 192);
  v53 = *(v0 + 160);
  sub_8398C();
  sub_83FDC();
  sub_2DC18();
  *(v0 + 40) = v49;
  *(v0 + 48) = &protocol witness table for JetPackFileStreamSource;
  v54 = sub_382A8((v0 + 16));
  (*(v48 + 16))(v54, v47, v49);
  v55 = *(v53 + OBJC_IVAR___JSAPackageProvisioner_unpackQueue);
  *(v0 + 80) = sub_280A4();
  *(v0 + 88) = &protocol witness table for OS_dispatch_queue;
  *(v0 + 56) = v55;
  v56 = v55;
  *(v0 + 400) = sub_83E5C();
  (*(v51 + 8))(v50, v52);
  sub_371A8((v0 + 56));
  sub_371A8((v0 + 16));
  v57 = sub_2805C(&qword_CA778, &unk_A0FA0);
  v58 = sub_38254(&qword_CA780, &qword_CA778, &unk_A0FA0);
  v59 = async function pointer to dispatch thunk of Future.then()[1];
  v60 = swift_task_alloc();
  *(v0 + 408) = v60;
  *v60 = v0;
  v60[1] = sub_359D0;
  v61 = *(v0 + 256);

  return dispatch thunk of Future.then()(v61, v57, v58);
}

uint64_t sub_359D0()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 416) = v0;

  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_36234;
  }

  else
  {
    v7 = sub_35B18;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_35B18()
{
  v78 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 160);
  v3 = *(*(v0 + 224) + 16);
  v3(*(v0 + 248), *(v0 + 256), *(v0 + 216));
  v4 = sub_83D4C();
  v5 = sub_847CC();
  if (os_log_type_enabled(v4, v5))
  {
    v70 = v5;
    v6 = *(v0 + 426);
    v7 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = 0xE600000000000000;
    v9 = 0x622D68636E75616CLL;
    v10 = 0xEE0064656C646E75;
    if (v6 != 2)
    {
      v9 = 0x756F72676B636162;
      v10 = 0xEA0000000000646ELL;
    }

    v11 = 0x6E2D68636E75616CLL;
    if (v6)
    {
      v8 = 0xED00006761622D6FLL;
    }

    else
    {
      v11 = 0x68636E75616CLL;
    }

    if (v6 <= 1)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (v6 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 216);
    v17 = *(v0 + 224);
    v18 = sub_3A93C(v12, v13, &v76);

    *(v7 + 4) = v18;
    *(v7 + 12) = 2080;
    v3(v15, v14, v16);
    v19 = sub_843FC();
    v21 = v20;
    v75 = *(v17 + 8);
    v75(v14, v16);
    v22 = sub_3A93C(v19, v21, &v76);

    *(v7 + 14) = v22;
    _os_log_impl(&dword_0, v4, v70, "JSAPackageProvisioner [%s] bundle provision succeeded with bundle %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 248);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);

    v75 = *(v25 + 8);
    v75(v23, v24);
  }

  if (qword_CA470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_CB321)
  {
    goto LABEL_24;
  }

  if (qword_CA468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_CB320)
  {
    goto LABEL_24;
  }

  if (qword_CA458 != -1)
  {
    swift_once();
  }

  if (*(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant) == 1)
  {
LABEL_24:
    if (qword_CA400 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 368);
    v26 = *(v0 + 376);
    v29 = *(v0 + 352);
    v28 = *(v0 + 360);
    v30 = *(v0 + 304);
    v31 = *(v0 + 288);
    v32 = sub_2C284(v31, qword_CAC70);
    v29(v30, v32, v31);
    sub_83BAC();
    v27(v30, v31);
    v33 = *(v0 + 425);
  }

  else
  {
    v33 = 1;
  }

  v34 = *(v0 + 256);
  v35 = *(v0 + 216);
  sub_83FCC();
  if (v36)
  {
    v37 = *(v0 + 256);
    v38 = *(v0 + 216);

    v76 = 0;
    v77 = 0xE000000000000000;
    v39._countAndFlagsBits = sub_83FCC();
    if (!v39._object)
    {
      __break(1u);
      return v39._countAndFlagsBits;
    }

    sub_844AC(v39);

    v80._countAndFlagsBits = 0x64656C646E75622DLL;
    v80._object = 0xE800000000000000;
    sub_844AC(v80);
    v65 = v76;
    v66 = v77;
  }

  else
  {
    v65 = 0x64656C646E7562;
    v66 = 0xE700000000000000;
  }

  v73 = v33;
  v40 = *(v0 + 426);
  v3(*(v0 + 232), *(v0 + 256), *(v0 + 216));
  v41 = 0xE600000000000000;
  v42 = 0x622D68636E75616CLL;
  v43 = 0xEE0064656C646E75;
  if (v40 != 2)
  {
    v42 = 0x756F72676B636162;
    v43 = 0xEA0000000000646ELL;
  }

  v44 = 0x6E2D68636E75616CLL;
  if (v40)
  {
    v41 = 0xED00006761622D6FLL;
  }

  else
  {
    v44 = 0x68636E75616CLL;
  }

  if (v40 <= 1)
  {
    v45 = v44;
  }

  else
  {
    v45 = v42;
  }

  if (v40 <= 1)
  {
    v46 = v41;
  }

  else
  {
    v46 = v43;
  }

  v47 = *(v0 + 392);
  v48 = *(v0 + 336);
  v49 = *(v0 + 344);
  v50 = *(v0 + 312);
  v67 = *(v0 + 328);
  v68 = *(v0 + 304);
  v51 = *(v0 + 272);
  v63 = *(v0 + 280);
  v64 = *(v0 + 320);
  v61 = *(v0 + 256);
  v62 = *(v0 + 264);
  v69 = *(v0 + 248);
  v71 = *(v0 + 240);
  v59 = *(v0 + 224);
  v60 = *(v0 + 216);
  v72 = *(v0 + 208);
  v53 = *(v0 + 176);
  v52 = *(v0 + 184);
  BooksJetPackResourceBundle.init(memoryJetPack:provisionMode:)(*(v0 + 232), v45, v46, v52);
  sub_38138(v52, v53);
  v54 = type metadata accessor for Package();
  v55 = objc_allocWithZone(v54);
  sub_38138(v53, &v55[OBJC_IVAR___JSAPackage_jetPack]);
  v56 = &v55[OBJC_IVAR___JSAPackage_nameForJSContext];
  *v56 = v65;
  v56[1] = v66;
  v55[OBJC_IVAR___JSAPackage_isBundled] = v73;
  *(v0 + 144) = v55;
  *(v0 + 152) = v54;
  v74 = objc_msgSendSuper2((v0 + 144), "init");
  sub_3819C(v53);
  sub_3819C(v52);
  v75(v61, v60);
  (*(v51 + 8))(v63, v62);
  v47(v48, v50);
  v47(v49, v50);

  v57 = *(v0 + 8);

  v39._countAndFlagsBits = v57(v74);
  return v39._countAndFlagsBits;
}

uint64_t sub_36234()
{
  v1 = v0[52];
  v2 = v0[48];
  v3 = v0[20];
  swift_errorRetain();
  v4 = sub_83D4C();
  v5 = sub_847AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[52];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v4, v5, "JSAPackageProvisioner bundle provision failed due to error=%@", v7, 0xCu);
    sub_38328(v8, &qword_CA760, &qword_A0F80);
  }

  return sub_84AFC();
}

uint64_t sub_363AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v5 = sub_83E6C();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_36474, a3, 0);
}

uint64_t sub_36474()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  sub_2DC18();

  return _swift_task_switch(sub_364E0, 0, 0);
}

uint64_t sub_364E0()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  sub_8407C();
  v6 = *(v4 + OBJC_IVAR___JSAPackageProvisioner_unpackQueue);
  v0[10] = sub_280A4();
  v0[11] = &protocol witness table for OS_dispatch_queue;
  v0[7] = v6;
  v7 = v6;
  v0[18] = sub_83E5C();
  sub_371A8(v0 + 2);
  (*(v2 + 8))(v1, v3);
  sub_371A8(v0 + 7);
  v8 = sub_2805C(&qword_CA778, &unk_A0FA0);
  v9 = sub_38254(&qword_CA780, &qword_CA778, &unk_A0FA0);
  v10 = async function pointer to dispatch thunk of Future.then()[1];
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_36648;
  v12 = v0[12];

  return dispatch thunk of Future.then()(v12, v8, v9);
}

uint64_t sub_36648()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

void sub_3677C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_839CC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5._countAndFlagsBits = 0x656A2E7865646E69;
  v5._object = 0xED00006B63617074;
  sub_8395C(v5);
}

id sub_36800(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_2805C(&qword_CA798, &qword_A0FB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = [v12 currentProcess];
  v14 = [v11 ams_configurationWithProcessInfo:v13 bag:a1];

  if ((a4 & 1) == 0)
  {
    [v14 setTimeoutIntervalForRequest:*&a3];
  }

  swift_unknownObjectRetain();
  sub_8420C();
  v15 = sub_8421C();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  v16 = [v12 currentProcess];
  sub_8401C();

  sub_38328(v10, &qword_CA798, &qword_A0FB0);
  return v14;
}

void PackageProvisioner.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void PackageProvisioner.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t PackageProvisioner.deinit()
{
  v1 = OBJC_IVAR___JSAPackageProvisioner_logger;
  v2 = sub_83D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR___JSAPackageProvisioner_packagePromise);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PackageProvisioner.__deallocating_deinit()
{
  v1 = OBJC_IVAR___JSAPackageProvisioner_logger;
  v2 = sub_83D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR___JSAPackageProvisioner_packagePromise);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_36B90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_36BD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38510;

  return sub_2E748(a1, v4, v5, v6, v7);
}

unint64_t sub_36CA4()
{
  result = qword_CA6D8;
  if (!qword_CA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA6D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HotReloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HotReloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for PackageProvisioner()
{
  result = qword_CA708;
  if (!qword_CA708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36EBC()
{
  result = sub_83D6C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_36FC0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3700C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_37044(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_38510;

  return sub_3DF8C(a1, v5);
}

uint64_t sub_370FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_37160()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_371A8(v0 + 5);

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_371A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_371F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_3720C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2C958;

  return sub_31E10(a1, v4, v5, v6, v1 + 40, v7);
}

uint64_t sub_372D4()
{
  v1 = sub_83D6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_371A8((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_373A4(uint64_t a1)
{
  v4 = *(sub_83D6C() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38510;

  return sub_34048(a1, v5, v6, v1 + 32, v7, v8);
}

uint64_t sub_374C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_37500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2C958;

  return sub_33B38(a1, v4, v5, v6);
}

uint64_t sub_375B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_38510;

  return sub_363AC(a1, a2, v2);
}

uint64_t sub_37660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2805C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_376C8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_377BC;

  return v6(v2 + 16);
}

uint64_t sub_377BC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_378EC(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v3 = sub_83EAC();
  v71 = *(v3 - 8);
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_83AEC();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  __chkstk_darwin(v7);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2805C(&qword_CA770, &qword_A0F98);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v68 = &v62 - v12;
  v13 = sub_83A4C();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  __chkstk_darwin(v13);
  v67 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2805C(&qword_CA750, &qword_A0F70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v62 - v18;
  v20 = sub_839CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v62 - v26;
  sub_37660(a2, v19, &qword_CA750, &qword_A0F70);
  v28 = sub_83ECC();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v19, 1, v28) == 1)
  {
    v30 = &qword_CA750;
    v31 = &qword_A0F70;
    v32 = v19;
  }

  else
  {
    sub_83EBC();
    (*(v29 + 8))(v19, v28);
    (*(v21 + 32))(v27, v25, v20);
    v33 = v20;
    if ((sub_838EC() & 1) == 0)
    {
      (*(v21 + 8))(v27, v20);
      goto LABEL_14;
    }

    v34 = [objc_opt_self() defaultManager];
    sub_8391C();
    v35 = sub_8437C();

    v73 = 0;
    v36 = [v34 attributesOfItemAtPath:v35 error:&v73];

    v37 = v73;
    if (v36)
    {
      v38 = v21;
      v63 = v33;
      type metadata accessor for FileAttributeKey(0);
      sub_38448(&qword_CA650, type metadata accessor for FileAttributeKey);
      v39 = sub_8434C();
      v40 = v37;

      v41 = v70;
      if (*(v39 + 16) && (v42 = sub_58860(NSFileModificationDate), (v43 & 1) != 0))
      {
        sub_381F8(*(v39 + 56) + 32 * v42, v74);

        v44 = v68;
        v45 = swift_dynamicCast();
        v46 = v69;
        (*(v69 + 56))(v44, v45 ^ 1u, 1, v41);
        if ((*(v46 + 48))(v44, 1, v41) != 1)
        {
          v52 = v67;
          (*(v46 + 32))(v67, v44, v41);
          v53 = [objc_allocWithZone(NSISO8601DateFormatter) init];
          v54 = v64;
          sub_83ADC();
          v55 = v46;
          isa = sub_83ACC().super.isa;
          (*(v65 + 8))(v54, v66);
          [v53 setTimeZone:isa];

          [v53 setFormatOptions:544];
          v74[0] = 0x5B746F6F72;
          v74[1] = 0xE500000000000000;
          v57 = sub_83A3C().super.isa;
          v58 = [v53 stringFromDate:v57];

          v59 = sub_843AC();
          v61 = v60;

          v75._countAndFlagsBits = v59;
          v75._object = v61;
          sub_844AC(v75);

          v76._countAndFlagsBits = 93;
          v76._object = 0xE100000000000000;
          sub_844AC(v76);

          v48 = v74[0];
          (*(v55 + 8))(v52, v41);
          (*(v38 + 8))(v27, v63);
          return v48;
        }

        (*(v21 + 8))(v27, v63);
      }

      else
      {

        (*(v21 + 8))(v27, v63);
        v44 = v68;
        (*(v69 + 56))(v68, 1, 1, v41);
      }
    }

    else
    {
      v47 = v73;
      sub_838DC();

      swift_willThrow();

      (*(v21 + 8))(v27, v20);
      v44 = v68;
      (*(v69 + 56))(v68, 1, 1, v70);
    }

    v30 = &qword_CA770;
    v31 = &qword_A0F98;
    v32 = v44;
  }

  sub_38328(v32, v30, v31);
LABEL_14:
  sub_2805C(&qword_CA758, &qword_A0F78);
  sub_83F2C();
  v48 = sub_83FCC();
  v50 = v49;
  (*(v71 + 8))(v6, v3);
  if (!v50)
  {
    return 0x72616C75676572;
  }

  return v48;
}

uint64_t sub_38138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BooksJetPackResourceBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3819C(uint64_t a1)
{
  v2 = type metadata accessor for BooksJetPackResourceBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_381F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_38254(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_280F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_382A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_38328(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2805C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_38388(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_38510;

  return sub_376C8(a1, v5);
}

uint64_t sub_38448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_38490(uint64_t a1, uint64_t *a2)
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

uint64_t BooksJetPackResourceBundle.init(memoryJetPack:provisionMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a3;
  v43 = a2;
  v46 = a4;
  v5 = sub_83EAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8390C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_839CC();
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v45);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v43 - v20;
  v22 = *(v6 + 16);
  v48 = a1;
  v44 = v22;
  v22(v21, a1, v5);
  v50 = v6;
  (*(v6 + 56))(v21, 0, 1, v5);
  v23 = sub_2805C(&qword_CA7B0, &qword_A0FE8);
  v24 = *(v23 + 52);
  v25 = (*(v23 + 48) + 3) & 0x1FFFFFFFCLL;
  v26 = swift_allocObject();
  *(v26 + ((*(*v26 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_3A82C(v21, v26 + *(*v26 + class metadata base offset for ManagedBuffer + 16));
  *v46 = v26;
  sub_8393C();
  v51[0] = 0x556B63615074654ALL;
  v51[1] = 0xEF64656B6361706ELL;
  (*(v10 + 104))(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
  LODWORD(v26) = *(type metadata accessor for BooksJetPackResourceBundle() + 20);
  sub_3A8E8();
  sub_839BC();
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v45);
  if (qword_CA4A0 != -1)
  {
    swift_once();
  }

  v27 = sub_83D6C();
  sub_2C284(v27, qword_CB3F8);
  v29 = v47;
  v28 = v48;
  v44(v47, v48, v5);
  v30 = v49;

  v31 = sub_83D4C();
  v32 = sub_847CC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v33 = 136315394;
    v34 = sub_3A93C(v43, v30, v51);

    *(v33 + 4) = v34;
    *(v33 + 12) = 2082;
    v35 = sub_83FCC();
    if (v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0x302E302E30;
    }

    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = *(v50 + 8);
    v39(v29, v5);
    v40 = sub_3A93C(v37, v38, v51);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_0, v31, v32, "Created in-memory JetPack for provisionMode=%s: %{public}s", v33, 0x16u);
    swift_arrayDestroy();

    return (v39)(v28, v5);
  }

  else
  {

    v42 = *(v50 + 8);
    v42(v28, v5);
    return (v42)(v29, v5);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BooksJetPackResourceBundle.evict()()
{
  v2 = sub_8405C();
  v105 = *(v2 - 8);
  v106 = v2;
  v3 = *(v105 + 64);
  __chkstk_darwin(v2);
  v104 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for BooksJetPackResourceBundle();
  v5 = *(*(v110 - 8) + 64);
  v6 = __chkstk_darwin(v110);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v98 - v9;
  v11 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v98 - v13;
  v15 = sub_83EAC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v107 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v103 = &v98 - v21;
  __chkstk_darwin(v20);
  v23 = &v98 - v22;
  v111 = v0;
  v24 = *v0;
  sub_83CEC();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_3AE70(v14);
  }

  else
  {
    v102 = v1;
    v25 = *(v16 + 32);
    v108 = v23;
    v25(v23, v14, v15);
    if (qword_CA4A0 != -1)
    {
      swift_once();
    }

    v101 = v15;
    v26 = sub_83D6C();
    v27 = sub_2C284(v26, qword_CB3F8);
    sub_38138(v111, v10);
    v100 = v27;
    v28 = sub_83D4C();
    v29 = sub_847CC();
    v30 = os_log_type_enabled(v28, v29);
    v109 = v16;
    v99 = v8;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v112 = v32;
      *v31 = 136446210;
      v33 = v110;
      v34 = *(v110 + 20);
      sub_839CC();
      sub_3AED8();
      v35 = sub_84BBC();
      v37 = v36;
      sub_3819C(v10);
      v38 = sub_3A93C(v35, v37, &v112);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_0, v28, v29, "Purging previous on-disk JetPack files at %{public}s", v31, 0xCu);
      sub_371A8(v32);
    }

    else
    {

      sub_3819C(v10);
      v33 = v110;
    }

    v39 = objc_opt_self();
    v40 = [v39 defaultManager];
    v41 = *(v33 + 20);
    sub_8394C(v42);
    v44 = v43;
    v112 = 0;
    v45 = [v40 removeItemAtURL:v43 error:&v112];

    if (v45)
    {
      v46 = v112;
    }

    else
    {
      v47 = v112;
      sub_838DC();

      swift_willThrow();

      v102 = 0;
    }

    v48 = v101;
    v49 = [v39 defaultManager];
    sub_8394C(v50);
    v52 = v51;
    v112 = 0;
    v53 = [v49 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:&v112];

    v54 = v112;
    if (v53)
    {
      v55 = v109;
      v56 = v103;
      v101 = *(v109 + 16);
      v101(v103, v108, v48);
      v57 = v54;
      v58 = sub_83D4C();
      v59 = sub_847CC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v112 = v98;
        *v60 = 136446210;
        v61 = sub_83FCC();
        v63 = v24;
        if (v62)
        {
          v64 = v61;
        }

        else
        {
          v64 = 0x302E302E30;
        }

        if (v62)
        {
          v65 = v62;
        }

        else
        {
          v65 = 0xE500000000000000;
        }

        v103 = *(v109 + 8);
        (v103)(v56, v48);
        v66 = v64;
        v24 = v63;
        v67 = sub_3A93C(v66, v65, &v112);
        v55 = v109;

        *(v60 + 4) = v67;
        _os_log_impl(&dword_0, v58, v59, "Persisting JetPack: %{public}s", v60, 0xCu);
        sub_371A8(v98);
      }

      else
      {

        v103 = *(v55 + 8);
        (v103)(v56, v48);
      }

      v69 = v107;
      v70 = v104;
      sub_8403C();
      v71 = v108;
      v72 = v102;
      v73 = sub_83E7C();
      if (v72)
      {
        (*(v105 + 8))(v70, v106);
        (v103)(v71, v48);
      }

      else
      {
        v74 = v73;
        (*(v105 + 8))(v70, v106);
        sub_395F0(v74, v71, v111);

        v101(v69, v71, v48);
        v75 = sub_83D4C();
        v76 = sub_847CC();
        v77 = os_log_type_enabled(v75, v76);
        v102 = 0;
        if (v77)
        {
          v78 = swift_slowAlloc();
          v79 = v69;
          v80 = swift_slowAlloc();
          v112 = v80;
          *v78 = 136446210;
          v81 = sub_83FCC();
          if (v82)
          {
            v83 = v81;
          }

          else
          {
            v83 = 0x302E302E30;
          }

          if (v82)
          {
            v84 = v82;
          }

          else
          {
            v84 = 0xE500000000000000;
          }

          (v103)(v79, v48);
          v85 = sub_3A93C(v83, v84, &v112);
          v55 = v109;

          *(v78 + 4) = v85;
          _os_log_impl(&dword_0, v75, v76, "Done persisting JetPack: %{public}s", v78, 0xCu);
          sub_371A8(v80);
        }

        else
        {

          (v103)(v69, v48);
        }

        v86 = *(*v24 + class metadata base offset for ManagedBuffer + 16);
        v87 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((v24 + v87));
        sub_3AE70(v24 + v86);
        (*(v55 + 56))(v24 + v86, 1, 1, v48);
        os_unfair_lock_unlock((v24 + v87));
        v88 = v99;
        sub_38138(v111, v99);
        v89 = sub_83D4C();
        v90 = sub_847CC();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v112 = v92;
          *v91 = 136446210;
          v93 = *(v110 + 20);
          sub_839CC();
          sub_3AED8();
          v94 = sub_84BBC();
          v96 = v95;
          sub_3819C(v88);
          v97 = sub_3A93C(v94, v96, &v112);

          *(v91 + 4) = v97;
          _os_log_impl(&dword_0, v89, v90, "Using on-disk JetPack at %{public}s", v91, 0xCu);
          sub_371A8(v92);
        }

        else
        {

          sub_3819C(v88);
        }

        (v103)(v108, v48);
      }
    }

    else
    {
      v68 = v112;
      sub_838DC();

      swift_willThrow();
      (*(v109 + 8))(v108, v48);
    }
  }
}

uint64_t sub_395F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v61 = sub_8390C();
  v6 = *(v61 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v61);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_839CC();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v60);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = &v49 - v13;
  v14 = sub_8405C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = __chkstk_darwin(v14);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = *(v15 + 16);
    v21 = v15 + 16;
    v65 = v22;
    v55 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v53 = (v6 + 8);
    v54 = (v6 + 104);
    v56 = (v9 + 8);
    v57 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = (v21 - 8);
    v67 = a3;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v64 = *(v21 + 56);
    v58 = v14;
    v51 = v21;
    v22(v19, v23, v14);
    while (1)
    {
      v24 = sub_83E7C();
      if (v3)
      {
        return (*v66)(v19, v14);
      }

      v25 = v24;
      v68 = v20;
      v69 = v24;
      sub_2805C(&qword_CA8B0, &qword_A10A8);
      sub_3BAFC();
      if (sub_8476C())
      {
        v62 = [objc_opt_self() defaultManager];
        v26 = *(type metadata accessor for BooksJetPackResourceBundle() + 20);
        v69 = sub_8404C();
        v70 = v27;
        v28 = v59;
        v29 = v61;
        (*v54)(v59, v55, v61);
        sub_3A8E8();
        v30 = v67;
        v31 = v52;
        sub_839AC();
        (*v53)(v28, v29);

        sub_8394C(v32);
        v34 = v33;
        (*v56)(v31, v60);
        v69 = 0;
        v35 = v62;
        v36 = [v62 createDirectoryAtURL:v34 withIntermediateDirectories:0 attributes:0 error:&v69];

        if (!v36)
        {
          v48 = v69;

          sub_838DC();

          swift_willThrow();
          return (*v66)(v57, v58);
        }

        v37 = v69;
        sub_395F0(v25, v63, v30);
        v19 = v57;
        v14 = v58;
        (*v66)(v57, v58);
      }

      else
      {

        v38 = sub_83E9C();
        v40 = v39;
        if (v39 >> 60 == 15)
        {
          result = (*v66)(v19, v14);
        }

        else
        {
          v41 = v38;
          v42 = *(type metadata accessor for BooksJetPackResourceBundle() + 20);
          v43 = sub_8404C();
          v62 = v44;
          v69 = v43;
          v70 = v44;
          v45 = v59;
          v46 = v61;
          (*v54)(v59, v55, v61);
          sub_3A8E8();
          v47 = v50;
          sub_839AC();
          (*v53)(v45, v46);

          sub_83A1C();
          sub_3BB60(v41, v40);
          (*v56)(v47, v60);
          v19 = v57;
          v14 = v58;
          result = (*v66)(v57, v58);
        }
      }

      v23 += v64;
      v20 = v68 - 1;
      if (v68 == 1)
      {
        return result;
      }

      v65(v19, v23, v14);
    }
  }

  return result;
}

uint64_t BooksJetPackResourceBundle.fileData(atPath:)(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_8390C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_839CC();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = sub_83EAC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  sub_83CEC();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_3AE70(v14);
    v21 = *(type metadata accessor for BooksJetPackResourceBundle() + 20);
    v38 = sub_8404C();
    v39 = v22;
    v24 = v33;
    v23 = v34;
    (*(v33 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v34);
    sub_3A8E8();
    sub_839AC();
    (*(v24 + 8))(v6, v23);

    v25 = v40;
    v26 = sub_839DC();
    if (v25)
    {
      return (*(v35 + 8))(v10, v36);
    }

    else
    {
      v30 = v26;
      (*(v35 + 8))(v10, v36);
      return v30;
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v28 = v40;
    v29 = sub_83E9C();
    if (v28)
    {
      return (*(v16 + 8))(v19, v15);
    }

    else
    {
      v31 = v29;
      (*(v16 + 8))(v19, v15);
      return v31;
    }
  }
}

uint64_t BooksJetPackResourceBundle.data(withName:)()
{
  v2 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_83EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  sub_83CEC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_3AE70(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = sub_83E8C();
    if (v1)
    {
      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      v14 = v13;
      (*(v7 + 8))(v10, v6);
      return v14;
    }
  }
}

void *BooksJetPackResourceBundle.contentsOfDirectory(atPath:)(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_8405C();
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8390C();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_839CC();
  v12 = *(v11 - 8);
  v61 = v11;
  v62 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v20 = sub_83EAC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v2;
  sub_83CEC();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_3AE70(v19);
    v26 = [objc_opt_self() defaultManager];
    v27 = *(type metadata accessor for BooksJetPackResourceBundle() + 20);
    v63[0] = sub_8404C();
    v63[1] = v28;
    v29 = v56;
    v30 = v57;
    (*(v56 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v57);
    sub_3A8E8();
    sub_839AC();
    (*(v29 + 8))(v10, v30);

    sub_8394C(v31);
    v33 = v32;
    v34 = v62;
    v57 = *(v62 + 8);
    v58 = v62 + 8;
    v57(v15, v61);
    v63[0] = 0;
    v35 = [v26 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:16 error:v63];

    v36 = v63[0];
    if (v35)
    {
      v37 = sub_845AC();
      v38 = v36;

      v39 = *(v37 + 16);
      if (v39)
      {
        v63[0] = &_swiftEmptyArrayStorage;
        sub_3AF50(0, v39, 0);
        v10 = v63[0];
        v41 = *(v34 + 16);
        v40 = v34 + 16;
        v42 = *(v40 + 64);
        v52 = v37;
        v43 = v37 + ((v42 + 32) & ~v42);
        v62 = v40;
        v55 = *(v40 + 56);
        v56 = v41;
        v44 = v53;
        do
        {
          v45 = v61;
          (v56)(v15, v43, v61);
          sub_8391C();
          sub_8406C();
          v57(v15, v45);
          v63[0] = v10;
          v47 = v10[2];
          v46 = v10[3];
          if (v47 >= v46 >> 1)
          {
            sub_3AF50(v46 > 1, v47 + 1, 1);
            v44 = v53;
            v10 = v63[0];
          }

          v10[2] = v47 + 1;
          (*(v60 + 32))(v10 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v47, v44, v59);
          v43 += v55;
          --v39;
        }

        while (v39);
      }

      else
      {

        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v50 = v63[0];
      sub_838DC();

      swift_willThrow();
    }
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    v48 = v54;
    v49 = sub_83E7C();
    if (!v48)
    {
      v10 = v49;
    }

    (*(v21 + 8))(v24, v20);
  }

  return v10;
}

uint64_t sub_3A82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BooksJetPackResourceBundle()
{
  result = qword_CA818;
  if (!qword_CA818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_3A8E8()
{
  result = qword_CA7B8;
  if (!qword_CA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA7B8);
  }

  return result;
}

uint64_t sub_3A93C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3AA08(v11, 0, 0, 1, a1, a2);
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
    sub_381F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_371A8(v11);
  return v7;
}

unint64_t sub_3AA08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3AB14(a5, a6);
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
    result = sub_84A8C();
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

char *sub_3AB14(uint64_t a1, unint64_t a2)
{
  v4 = sub_3AB60(a1, a2);
  sub_3AC90(&off_B36E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3AB60(uint64_t a1, unint64_t a2)
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

  v6 = sub_5CA04(v5, 0);
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

  result = sub_84A8C();
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
        v10 = sub_844CC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_5CA04(v10, 0);
        result = sub_84A3C();
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

uint64_t sub_3AC90(uint64_t result)
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

  result = sub_3AD7C(result, v12, 1, v3);
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

char *sub_3AD7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2805C(&qword_CA8C0, &unk_A10B0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_3AE70(uint64_t a1)
{
  v2 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3AED8()
{
  result = qword_CA790;
  if (!qword_CA790)
  {
    sub_839CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA790);
  }

  return result;
}

void *sub_3AF30(void *a1, int64_t a2, char a3)
{
  result = sub_3B294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_3AF50(size_t a1, int64_t a2, char a3)
{
  result = sub_3B920(a1, a2, a3, *v3, &qword_CA8A8, &qword_A10A0, &type metadata accessor for JetPackPath);
  *v3 = result;
  return result;
}

uint64_t sub_3AFA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_839CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_3B068(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_839CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3B10C()
{
  sub_3B190();
  if (v0 <= 0x3F)
  {
    sub_839CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3B190()
{
  if (!qword_CA828)
  {
    sub_280F0(&qword_CA7A8, &qword_A0FE0);
    v0 = sub_83CFC();
    if (!v1)
    {
      atomic_store(v0, &qword_CA828);
    }
  }
}

void *sub_3B1F4(void *a1, int64_t a2, char a3)
{
  result = sub_3B414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3B214(void *a1, int64_t a2, char a3)
{
  result = sub_3B570(a1, a2, a3, *v3, &qword_CA858, &qword_A1050, &qword_CA860, &qword_A1058);
  *v3 = result;
  return result;
}

char *sub_3B254(char *a1, int64_t a2, char a3)
{
  result = sub_3B6B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3B274(void *a1, int64_t a2, char a3)
{
  result = sub_3B7C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3B294(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2805C(&qword_CA8C8, qword_A10C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_2805C(&qword_CA5E0, &qword_A0848);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_2805C(&qword_CA5E0, &qword_A0848);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(&qword_CA5E0, &qword_A0848);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_3B414(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2805C(&qword_CA878, &qword_A1070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(&qword_CA880, &qword_A1078);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_3B570(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2805C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_3B6B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2805C(&qword_CA8A0, &qword_A1CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_3B7C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2805C(&qword_CA888, &qword_A1080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(&qword_CA890, &qword_A1088);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_3B920(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2805C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_3BAFC()
{
  result = qword_CA8B8;
  if (!qword_CA8B8)
  {
    sub_280F0(&qword_CA8B0, &qword_A10A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA8B8);
  }

  return result;
}

uint64_t sub_3BB60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_3BB74(a1, a2);
  }

  return a1;
}

uint64_t sub_3BB74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_3BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_3EDCC(a3, v27 - v11);
  v13 = sub_8468C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_38328(v12, &qword_CA5E8, &qword_A0850);
  }

  else
  {
    sub_8467C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_8460C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_8442C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Int sub_3BEA8()
{
  v1 = *v0;
  sub_84CCC();
  sub_84CDC(v1);
  return sub_84D0C();
}

Swift::Int sub_3BF1C()
{
  v1 = *v0;
  sub_84CCC();
  sub_84CDC(v1);
  return sub_84D0C();
}

unint64_t sub_3BF60@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_3E17C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_3BFA0()
{
  result = [objc_allocWithZone(type metadata accessor for URLParser()) init];
  qword_CA8D0 = result;
  return result;
}

uint64_t sub_3BFF0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_3C0E0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x726F662865707974, 0xEA0000000000293ALL, sub_3E18C, v2, &type metadata for URLParser.ParserURLType);
}

uint64_t sub_3C0E0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_3C1F8, 0, 0);
}

void sub_3C210(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = sub_839CC();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2805C(&qword_CA908, &unk_A1230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = [objc_opt_self() defaultBag];
  v11 = [objc_allocWithZone(AMSURLParser) initWithBag:v10];

  sub_8394C(v12);
  v14 = v13;
  v22 = [v11 typeForURL:v13];

  (*(v6 + 16))(v9, v24, v5);
  v15 = v23;
  v16 = v25;
  (*(v3 + 16))(v23, a2, v25);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + *(v3 + 80) + v17) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v9, v5);
  (*(v3 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_3F080;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_65258;
  aBlock[3] = &unk_B56E8;
  v20 = _Block_copy(aBlock);

  v21 = v22;
  [v22 addFinishBlock:v20];
  _Block_release(v20);
}

uint64_t sub_3C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_839CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_CA4E0 != -1)
    {
      swift_once();
    }

    v13 = sub_83D6C();
    sub_2C284(v13, qword_CB4B8);
    swift_errorRetain();
    v14 = sub_83D4C();
    v15 = sub_847AC();

    if (!os_log_type_enabled(v14, v15))
    {

      if (!a1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v16 = swift_slowAlloc();
    v34[1] = a3;
    v35 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34[0] = v9;
    v19 = v18;
    v36 = a2;
    v37 = v18;
    *v17 = 136446210;
    swift_errorRetain();
    sub_2805C(&qword_CA738, &qword_A1870);
    v20 = sub_843FC();
    v22 = sub_3A93C(v20, v21, &v37);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "Parsing commerce UI URL encountered error: %{public}s", v17, 0xCu);
    sub_371A8(v19);
    v9 = v34[0];

    v8 = v35;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_9:
  v37 = 0;
  v38 = 1;
  sub_8475C();
  if ((v38 & 1) == 0)
  {
    v24 = v37;
    switch(v37)
    {
      case 2:
        v37 = 3;
        goto LABEL_11;
      case 1:
        v37 = 2;
        goto LABEL_11;
      case 0:
        v37 = 1;
        goto LABEL_11;
    }

    if (qword_CA4E0 != -1)
    {
      swift_once();
    }

    v25 = sub_83D6C();
    sub_2C284(v25, qword_CB4B8);
    (*(v9 + 16))(v12, a4, v8);
    v26 = sub_83D4C();
    v27 = sub_847BC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 134218242;
      *(v28 + 4) = v24;
      *(v28 + 12) = 2080;
      sub_3AED8();
      v30 = sub_84BBC();
      v32 = v31;
      (*(v9 + 8))(v12, v8);
      v33 = sub_3A93C(v30, v32, &v37);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_0, v26, v27, "AMSURLParser returned an unknown type value %ld for %s", v28, 0x16u);
      sub_371A8(v29);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

LABEL_10:
  v37 = 0;
LABEL_11:
  sub_2805C(&qword_CA908, &unk_A1230);
  return sub_8462C();
}

uint64_t sub_3CB08(uint64_t a1, const void *a2)
{
  v4 = sub_839CC();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = _Block_copy(a2);
  sub_8396C();

  return _swift_task_switch(sub_3CBF0, 0, 0);
}

uint64_t sub_3CBF0()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_3CCE0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x726F662865707974, 0xEA0000000000293ALL, sub_3F194, v2, &type metadata for URLParser.ParserURLType);
}

uint64_t sub_3CCE0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_3CDF8, 0, 0);
}

uint64_t sub_3CDF8()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1[2](v1, v2);
  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

id URLParser.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id URLParser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_3CF54()
{
  if (qword_CA3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_CA8D0;

  return v1;
}

id sub_3CFB4()
{
  if (qword_CA3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_CA8D0;

  return v1;
}

Swift::Void __swiftcall URLParser.isCommerceUIURLWithCallback(_:_:)(Swift::String a1, JSValue a2)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_8468C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2].super.isa = 0;
  v11[3].super.isa = 0;
  v11[4].super.isa = v2;
  v11[5].super.isa = countAndFlagsBits;
  v11[6].super.isa = object;
  v11[7].super.isa = a2.super.isa;
  v12 = v2;

  v13 = a2.super.isa;
  sub_3BBC8(0, 0, v9, &unk_A1100, v11);

  sub_38328(v9, &qword_CA5E8, &qword_A0850);
}

uint64_t sub_3D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a7;
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  *v10 = v7;
  v10[1] = sub_3D210;

  return (sub_3E26C)(a5, a6);
}

uint64_t sub_3D210(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_3D310, 0, 0);
}

uint64_t sub_3D310()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [objc_opt_self() sharedInstance];
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_A10E0;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 32) = v1;
  isa = sub_8458C().super.isa;
  v6 = sub_8437C();
  [v3 enqueueValueCall:v2 arguments:isa file:v6 line:147];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_3D5C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_8468C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a2;
  v14 = a2;
  v15 = a1;

  sub_3BBC8(0, 0, v11, &unk_A1210, v13);

  return sub_38328(v11, &qword_CA5E8, &qword_A0850);
}

uint64_t sub_3D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(sub_2805C(&unk_CAE60, &qword_A1800) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v9 = sub_839CC();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_3D824, 0, 0);
}

uint64_t sub_3D824()
{
  v1 = v0[2];
  if (!v1)
  {
LABEL_10:
    v30 = v0[10];
    v29 = v0[11];
    v32 = v0[6];
    v31 = v0[7];

    v33 = v0[1];

    return v33();
  }

  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  v7 = objc_opt_self();
  v8 = v1;
  v9 = [v7 defaultBag];
  v10 = objc_allocWithZone(sub_83C6C());
  v0[12] = sub_83C5C();
  sub_8399C();
  v11 = *(v3 + 48);
  v0[13] = v11;
  v0[14] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v4, 1, v2) == 1)
  {
    v12 = v0[5];
    sub_38328(v0[7], &unk_CAE60, &qword_A1800);
    v13 = v0[12];
    if (v12)
    {
      v14 = v0[5];
      v15 = v0[2];
      v16 = objc_opt_self();
      v17 = v14;
      v18 = [v16 sharedInstance];
      v19 = sub_8437C();
      [v18 enqueueValueCall:v17 arguments:0 file:v19 line:158];
    }

    else
    {
      v17 = v0[2];
    }

    goto LABEL_10;
  }

  v20 = v0[11];
  v21 = v0[8];
  v22 = v0[9];
  v23 = v0[7];
  v24 = *(v22 + 32);
  v0[15] = v24;
  v0[16] = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v24(v20, v23, v21);
  v25 = async function pointer to CampaignAttributor.processURL(_:ignoreMarketing:)[1];
  v26 = swift_task_alloc();
  v0[17] = v26;
  *v26 = v0;
  v26[1] = sub_3DACC;
  v27 = v0[11];
  v28 = v0[6];

  return CampaignAttributor.processURL(_:ignoreMarketing:)(v28, v27, 0);
}

uint64_t sub_3DACC()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_3DBC8, 0, 0);
}

uint64_t sub_3DBC8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  if ((*(v0 + 104))(v3, 1, v2) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 88), v2);
    v4 = *(v0 + 40);
    sub_38328(*(v0 + 48), &unk_CAE60, &qword_A1800);
    v5 = *(v0 + 96);
    if (v4)
    {
      v6 = *(v0 + 40);
      v7 = *(v0 + 16);
      v8 = objc_opt_self();
      v9 = v6;
      v10 = [v8 sharedInstance];
      v11 = sub_8437C();
      [v10 enqueueValueCall:v9 arguments:0 file:v11 line:158];
    }

    else
    {
      v9 = *(v0 + 16);
    }
  }

  else
  {
    v12 = *(v0 + 128);
    v13 = *(v0 + 96);
    v30 = *(v0 + 88);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 16);
    (*(v0 + 120))(v14, v3, v2);
    v17 = [objc_opt_self() sharedInstance];
    sub_2805C(&unk_CADB0, &unk_A16E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_A10E0;
    v19 = sub_8391C();
    *(v18 + 56) = &type metadata for String;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    isa = sub_8458C().super.isa;
    v22 = sub_8437C();
    [v17 enqueueValueCall:v16 arguments:isa file:v22 line:162];

    v23 = *(v15 + 8);
    v23(v14, v2);
    v23(v30, v2);
  }

  v25 = *(v0 + 80);
  v24 = *(v0 + 88);
  v27 = *(v0 + 48);
  v26 = *(v0 + 56);

  v28 = *(v0 + 8);

  return v28();
}

void sub_3DE90(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_3DF8C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3E084;

  return v7(a1);
}

uint64_t sub_3E084()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_3E17C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_3E198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_38510;

  return sub_3D158(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3E26C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(sub_2805C(&unk_CAE60, &qword_A1800) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_839CC();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_3E364, 0, 0);
}

uint64_t sub_3E364()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_8399C();
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_38328(v0[5], &unk_CAE60, &qword_A1800);
    v6 = v0[8];
    v7 = v0[5];

    v8 = v0[1];

    return v8(0);
  }

  else
  {
    v10 = v0[8];
    (*(v0[7] + 32))(v10, v0[5], v0[6]);
    v11 = swift_task_alloc();
    v0[9] = v11;
    *(v11 + 16) = v10;
    v12 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_3E510;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x726F662865707974, 0xEA0000000000293ALL, sub_3F194, v11, &type metadata for URLParser.ParserURLType);
  }
}

uint64_t sub_3E510()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_3E628, 0, 0);
}

uint64_t sub_3E628()
{
  v1 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v1 != 0);
}

void _s5JSApp9URLParserC28processCampaignAttributedURLySo7JSValueCSSF_0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 environment];

  v6 = [v5 context];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v10[4] = sub_3EC88;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_3DE90;
  v10[3] = &unk_B5620;
  v8 = _Block_copy(v10);

  v9 = [objc_opt_self() valueWithNewPromiseInContext:v6 fromExecutor:v8];
  _Block_release(v8);

  if (!v9)
  {
    __break(1u);
  }
}

unint64_t sub_3E828()
{
  result = qword_CA8D8;
  if (!qword_CA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA8D8);
  }

  return result;
}

uint64_t sub_3E8B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2C958;

  return sub_3D158(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3E984()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3E9CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_38510;

  return sub_3CB08(v2, v3);
}

uint64_t sub_3EA84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_38510;

  return sub_55394(v2, v3, v5);
}

uint64_t sub_3EB44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3EB84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_38510;

  return sub_5547C(a1, v4, v5, v7);
}

uint64_t sub_3EC50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3EC90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3ECA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3ECF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_38510;

  return sub_3D710(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3EDCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CA5E8, &qword_A0850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3EE3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3EE74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2C958;

  return sub_3DF8C(a1, v5);
}

uint64_t sub_3EF2C()
{
  v1 = sub_2805C(&qword_CA908, &unk_A1230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_839CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_3F080(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2805C(&qword_CA908, &unk_A1230) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_839CC() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_3C51C(a1, a2, v2 + v6, v9);
}

id sub_3F2B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_3B1F4(0, v2, 0);
    v4 = a1;
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v30 = a1;
    v31 = a1 + 32;
    v29 = v2;
    while (v5 < *(v4 + 16))
    {
      v33 = v6;
      v34 = v5;
      v7 = *(v31 + 8 * v5);
      v8 = *(v7 + 16);
      if (v8)
      {
        sub_2805C(&qword_CA868, &unk_A1060);
        v9 = swift_allocObject();
        v10 = j__malloc_size(v9);
        v9[2] = v8;
        v9[3] = 2 * ((v10 - 32) / 24);
        v32 = sub_6FCE0(&v40, v9 + 4, v8, v7);
        swift_bridgeObjectRetain_n();
        sub_40AE0();
        if (v32 != v8)
        {
          goto LABEL_22;
        }
      }

      else
      {

        v9 = _swiftEmptyArrayStorage;
      }

      v40 = v9;
      sub_3FE78(&v40);
      v11 = v40;
      v12 = v40[2];
      if (v12)
      {
        v39 = _swiftEmptyArrayStorage;
        sub_3B214(0, v12, 0);
        v13 = _swiftEmptyArrayStorage;
        v14 = v11 + 6;
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          v36 = *(v14 - 2);
          v37 = v15;
          v38 = v16;

          swift_unknownObjectRetain();
          sub_2805C(&qword_CA870, &qword_A1280);
          sub_2805C(&qword_CA860, &qword_A1058);
          swift_dynamicCast();
          v17 = v40;
          v18 = v41;
          v39 = v13;
          v20 = v13[2];
          v19 = v13[3];
          if (v20 >= v19 >> 1)
          {
            v27 = v41;
            sub_3B214((v19 > 1), v20 + 1, 1);
            v18 = v27;
            v13 = v39;
          }

          v13[2] = v20 + 1;
          v21 = &v13[3 * v20];
          v21[4] = v17;
          *(v21 + 5) = v18;
          v14 += 3;
          --v12;
        }

        while (v12);
      }

      else
      {

        v13 = _swiftEmptyArrayStorage;
      }

      v6 = v33;
      v42 = v33;
      v23 = v33[2];
      v22 = v33[3];
      if (v23 >= v22 >> 1)
      {
        sub_3B1F4((v22 > 1), v23 + 1, 1);
        v6 = v42;
      }

      v5 = v34 + 1;
      v6[2] = v23 + 1;
      v6[v23 + 4] = v13;
      v4 = v30;
      if (v34 + 1 == v29)
      {
        v24 = v6;

        v25 = v24;
        v1 = v28;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);

    __break(1u);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
LABEL_20:
    *&v1[OBJC_IVAR____TtC5JSApp30FigaroEventFieldViewController_data] = v25;
    v35.receiver = v1;
    v35.super_class = type metadata accessor for FigaroEventFieldViewController();
    return objc_msgSendSuper2(&v35, "initWithStyle:", 2);
  }

  return result;
}

char *sub_3F790(void *a1)
{
  v4 = sub_8437C();
  isa = sub_83AFC().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  v7 = *(v1 + OBJC_IVAR____TtC5JSApp30FigaroEventFieldViewController_data);
  v8 = sub_83B2C();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v8 >= *(v7 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *(v7 + 8 * v8 + 32);

  v10 = sub_83B1C();
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = (v9 + 24 * v10);
  v13 = v11[4];
  v12 = v11[5];
  v14 = v11[6];

  swift_unknownObjectRetain();

  v15 = [v6 textLabel];
  if (v15)
  {
    v16 = v15;
    v17 = sub_8437C();

    [v16 setText:v17];
  }

  else
  {
  }

  swift_unknownObjectRetain();
  sub_2805C(&qword_CA970, &qword_A1290);
  if (swift_dynamicCast())
  {
    v18 = [v6 detailTextLabel];
    if (v18)
    {
      v19 = v18;
      sub_40AFC();
      sub_8436C();

      v20 = sub_8437C();

      [v19 setText:v20];

LABEL_34:
      swift_unknownObjectRelease();
      return v6;
    }

LABEL_24:

    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  sub_2805C(&qword_CA978, &qword_A1298);
  if (!swift_dynamicCast())
  {
    v33 = [v6 detailTextLabel];
    if (v33)
    {
      v34 = v33;
      sub_84AEC();
      v35 = sub_8437C();

      [v34 setText:v35];
    }

    goto LABEL_34;
  }

  v2 = v43;
  v21 = [v6 detailTextLabel];
  if (!v21)
  {
    goto LABEL_24;
  }

  v42 = v21;
  if (!(v43 >> 62))
  {
    v22 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_32:

LABEL_33:
    sub_40AFC();
    v36 = sub_8436C();
    v38 = v37;

    v45._countAndFlagsBits = v36;
    v45._object = v38;
    sub_844AC(v45);

    v39 = sub_8437C();

    [v42 setText:v39];

    goto LABEL_34;
  }

LABEL_31:
  v22 = sub_84B0C();
  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_15:
  v41 = v6;
  result = sub_3B254(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = &_swiftEmptyArrayStorage;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_84A6C();
      }

      else
      {
        v26 = *(v2 + 8 * v24 + 32);
        swift_unknownObjectRetain();
      }

      v27 = sub_843FC();
      v44 = v25;
      v30 = v25[2];
      v29 = v25[3];
      if (v30 >= v29 >> 1)
      {
        v40 = v27;
        v32 = v28;
        sub_3B254((v29 > 1), v30 + 1, 1);
        v28 = v32;
        v27 = v40;
        v25 = v44;
      }

      ++v24;
      v25[2] = v30 + 1;
      v31 = &v25[2 * v30];
      *(v31 + 4) = v27;
      *(v31 + 5) = v28;
    }

    while (v22 != v24);

    v6 = v41;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

id sub_3FE0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_3FE78(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_40AE8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_3FEE4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_3FEE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_84BAC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2805C(&qword_CA870, &qword_A1280);
        v5 = sub_845DC();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_400D0(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_3FFEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_3FFEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_84BEC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_400D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_409C8(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_406DC((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_84BEC();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_84BEC();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_409DC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_409DC((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_406DC((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_409C8(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_4093C(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_84BEC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_406DC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_84BEC() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_84BEC() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_4093C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_409C8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_409DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2805C(&qword_CA968, &qword_A1288);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_40AFC()
{
  result = qword_CA980;
  if (!qword_CA980)
  {
    sub_280F0(&qword_CA970, &qword_A1290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA980);
  }

  return result;
}

uint64_t static BooksLocalizer.load(using:asPartOf:)(uint64_t a1)
{
  v2[7] = v1;
  v2[8] = sub_841BC();
  v4 = async function pointer to static AppleServicesLocalizer.load(using:)[1];
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_40C20;

  return static AppleServicesLocalizer.load(using:)(a1);
}

uint64_t sub_40C20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_40D6C, 0, 0);
  }
}

uint64_t sub_40D6C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  *(v0 + 40) = *(v0 + 64);
  *(v0 + 48) = &protocol witness table for AppleServicesLocalizer;
  *(v0 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 56) = 1;
  sub_371F4((v0 + 16), v3 + 16);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t static BooksLocalizer.create(basedOn:asPartOf:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_40E4C(a1, v1);

  return sub_4251C(v3, v1, v2);
}

void *sub_40E4C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t BooksLocalizer.jsExport.getter()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_8431C();
}

uint64_t BooksLocalizer.locale.getter()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_842AC();
}

uint64_t BooksLocalizer.hasString(forKey:using:)()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_8432C() & 1;
}

Swift::Bool __swiftcall BooksLocalizer.isLocalizedString(_:)(Swift::String a1)
{
  v2 = v1[6];
  sub_40E4C(v1 + 2, v1[5]);
  return sub_8429C() & 1;
}

uint64_t BooksLocalizer.string(forKey:with:using:)()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_842CC();
}

uint64_t BooksLocalizer.string(forKey:with:defaultValue:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[6];
  sub_40E4C(v3 + 2, v3[5]);
  if (sub_8432C())
  {
    v6 = v3[6];
    sub_40E4C(v3 + 2, v3[5]);
    return sub_842BC();
  }

  v7 = sub_8414C();
  if (!a3)
  {
    return v7;
  }

  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;

  v24 = a3;

  for (i = 0; v11; result = )
  {
    v15 = i;
LABEL_12:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v15 << 10) | (16 * v16);
    v18 = (*(v24 + 48) + v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = (*(v24 + 56) + v17);
    v23 = *v21;
    v22 = v21[1];

    v25._countAndFlagsBits = v20;
    v25._object = v19;
    sub_844AC(v25);
    v26._countAndFlagsBits = 16448;
    v26._object = 0xE200000000000000;
    sub_844AC(v26);
    sub_3A8E8();
    v7 = sub_8492C();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v7;
    }

    v11 = *(v8 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_41360(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v20 = a1;

    for (i = 0; v6; result = )
    {
      v11 = i;
LABEL_10:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (v11 << 10) | (16 * v12);
      v14 = (*(v20 + 48) + v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(v20 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      v21._countAndFlagsBits = v16;
      v21._object = v15;
      sub_844AC(v21);
      v22._countAndFlagsBits = 16448;
      v22._object = 0xE200000000000000;
      sub_844AC(v22);
      sub_3A8E8();
      a2 = sub_8492C();
    }

    while (1)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return a2;
      }

      v6 = *(v3 + 8 * v11);
      ++i;
      if (v6)
      {
        i = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

uint64_t sub_4156C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v15 = v7[5];
  v16 = v7[6];
  sub_40E4C(v7 + 2, v15);
  return a7(a1, a2, a3 & 1, a4, a5 & 1, a6, v15, v16);
}

uint64_t BooksLocalizer.integer(for:in:)()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_842FC();
}

uint64_t BooksLocalizer.string(withCount:forKey:with:using:)()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_842EC();
}

uint64_t BooksLocalizer.string(withCount:forKey:with:defaultValue:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[6];
  sub_40E4C(v4 + 2, v4[5]);
  if (sub_8432C())
  {
    v7 = v4[6];
    sub_40E4C(v4 + 2, v4[5]);
    return sub_842DC();
  }

  else
  {
    v41 = a4;
    v8 = sub_8414C();
    sub_2805C(&qword_CA988, &qword_A12B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_A10E0;
    *(inited + 32) = 0x746E756F63;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = sub_84BBC();
    *(inited + 56) = v10;
    v11 = sub_42650(inited);
    swift_setDeallocating();
    sub_42764(inited + 32);
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;

    v17 = 0;
    if (v14)
    {
      while (1)
      {
        v18 = v17;
LABEL_11:
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v20 = (v18 << 10) | (16 * v19);
        v21 = (*(v11 + 48) + v20);
        v23 = *v21;
        v22 = v21[1];
        v24 = (*(v11 + 56) + v20);
        v25 = *v24;
        v26 = v24[1];

        v42._countAndFlagsBits = v23;
        v42._object = v22;
        sub_844AC(v42);
        v43._countAndFlagsBits = 16448;
        v43._object = 0xE200000000000000;
        sub_844AC(v43);
        sub_3A8E8();
        v8 = sub_8492C();

        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_11;
      }
    }

    if (!v41)
    {
      return v8;
    }

    v27 = 1 << *(v41 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v41 + 64);
    v30 = (v27 + 63) >> 6;

    for (i = 0; v29; result = )
    {
      v32 = i;
LABEL_22:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = (v32 << 10) | (16 * v33);
      v35 = (*(v41 + 48) + v34);
      v37 = *v35;
      v36 = v35[1];
      v38 = (*(v41 + 56) + v34);
      v39 = *v38;
      v40 = v38[1];

      v44._countAndFlagsBits = v37;
      v44._object = v36;
      sub_844AC(v44);
      v45._countAndFlagsBits = 16448;
      v45._object = 0xE200000000000000;
      sub_844AC(v45);
      sub_3A8E8();
      v8 = sub_8492C();
    }

    while (1)
    {
      v32 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        return v8;
      }

      v29 = *(v41 + 64 + 8 * v32);
      ++i;
      if (v29)
      {
        i = v32;
        goto LABEL_22;
      }
    }

LABEL_27:
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall BooksLocalizer.formattedCount(_:)(Swift::Int a1)
{
  v2 = v1[6];
  sub_40E4C(v1 + 2, v1[5]);
  v3 = sub_8428C();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BooksLocalizer.fileSize(forBytes:)(Swift::Double forBytes)
{
  v2 = v1[6];
  sub_40E4C(v1 + 2, v1[5]);
  v3 = sub_8430C();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t BooksLocalizer.formattedDate(format:date:withContext:)()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_8427C();
}

uint64_t BooksLocalizer.formattedDate(format:date:inSentence:)()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_8426C();
}

uint64_t BooksLocalizer.relativeDate(_:using:)()
{
  v1 = v0[6];
  sub_40E4C(v0 + 2, v0[5]);
  return sub_8425C();
}

uint64_t BooksLocalizer.__deallocating_deinit()
{
  sub_371A8((v0 + 16));

  return _swift_deallocClassInstance(v0, 57, 7);
}

uint64_t sub_41DB0()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_8431C();
}

uint64_t sub_41DF8()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_842AC();
}

uint64_t sub_41E48()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_8432C() & 1;
}

uint64_t sub_41EB4()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_8429C() & 1;
}

uint64_t sub_41F18()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_842CC();
}

uint64_t sub_41F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(*v3 + 48);
  sub_40E4C((*v3 + 16), *(*v3 + 40));
  if (sub_8432C())
  {
    v7 = v5[6];
    sub_40E4C(v5 + 2, v5[5]);
    return sub_842BC();
  }

  else
  {
    v9 = sub_8414C();
    v10 = sub_41360(a3, v9);

    return v10;
  }
}

uint64_t sub_420EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, void, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v16 = *(*v9 + 40);
  v17 = *(*v9 + 48);
  sub_40E4C((*v9 + 16), v16);
  return a9(a1, a2, a3 & 1, a4, a5 & 1, a6, v16, v17);
}

uint64_t sub_42184()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_842FC();
}

uint64_t sub_421E4()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_842EC();
}

uint64_t sub_42288()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_8428C();
}

uint64_t sub_422D8()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_8430C();
}

uint64_t sub_42330()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_8427C();
}

uint64_t sub_423A8()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_8426C();
}

uint64_t sub_42428()
{
  v1 = *(*v0 + 48);
  sub_40E4C((*v0 + 16), *(*v0 + 40));
  return sub_8425C();
}

uint64_t sub_42488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v5 = sub_382A8(&v8);
  (*(*(a2 - 8) + 32))(v5, a1, a2);
  type metadata accessor for BooksLocalizer();
  v6 = swift_allocObject();
  *(v6 + 56) = 1;
  sub_371F4(&v8, v6 + 16);
  return v6;
}

uint64_t sub_4251C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10);
  (v12)(v9, v11, a2);
  v13 = sub_42488(v9, a2, a3);
  (*(v5 + 8))(v11, a2);
  return v13;
}

unint64_t sub_42650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA88, &qword_A13F0);
    v3 = sub_84B3C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_55854(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_42764(uint64_t a1)
{
  v2 = sub_2805C(&qword_CA990, &unk_A12B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_42808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA60, &unk_A1E00);
    v3 = sub_84B3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37660(v4, &v13, &qword_CAA68, &qword_A13D0);
      v5 = v13;
      v6 = v14;
      result = sub_55854(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_42FB4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_42938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA78, &qword_A13E0);
    v3 = sub_84B3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37660(v4, &v11, &qword_CAA80, &qword_A13E8);
      v5 = v11;
      result = sub_58860(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_42FB4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_42A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA90, &qword_A13F8);
    v3 = sub_84B3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37660(v4, v13, &qword_CAA98, &unk_A1400);
      result = sub_5595C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_42FB4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_42B9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA70, &qword_A13D8);
    v3 = sub_84B3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_55854(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_42CA0(uint64_t a1)
{
  v2 = sub_2805C(&qword_CAA50, &qword_A13C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2805C(&qword_CAA58, &qword_A13C8);
    v8 = sub_84B3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_37660(v10, v6, &qword_CAA50, &qword_A13C0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_55854(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_8384C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_42E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA40, &qword_A13B0);
    v3 = sub_84B3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37660(v4, &v11, &qword_CAA48, &qword_A13B8);
      v5 = v11;
      result = sub_58860(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_42FB4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

_OWORD *sub_42FB4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_42FC4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_8498C();
    sub_43834(0, &qword_CAB50, UIScene_ptr);
    sub_4387C(&qword_CAB58, &qword_CAB50, UIScene_ptr);
    sub_8474C();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_849BC() || (sub_43834(0, &qword_CAB50, UIScene_ptr), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_40AE0();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_8457C();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v12 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_845CC();
      }

      sub_845EC();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_43248(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(a1, &off_CAAA0, 0, &stru_2E8.segname[9]);
  return swift_endAccess();
}

void *sub_432DC()
{
  v0 = sub_83E0C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  *v4 = sub_8482C();
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v5 = sub_83E2C();
  result = (*(v1 + 8))(v4, v0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_31;
  }

  result = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();
  if (result)
  {
    v7 = result;
    v8 = [result connectedScenes];
    sub_43834(0, &qword_CAB50, UIScene_ptr);
    sub_4387C(&qword_CAB58, &qword_CAB50, UIScene_ptr);
    v9 = sub_8472C();

    sub_42FC4(v9);
    v11 = v10;

    v12 = sub_750FC(v11);

    v34 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_8498C();
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      sub_4387C(&qword_CAB68, &qword_CAB60, UIWindowScene_ptr);
      result = sub_8474C();
      v12 = v40;
      v13 = v41;
      v14 = v42;
      v15 = v43;
      v16 = v44;
    }

    else
    {
      v17 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v12 + 56);

      v15 = 0;
    }

    v33 = v14;
    v20 = (v14 + 64) >> 6;
    v36 = xmmword_A1410;
    v35 = xmmword_A1420;
    while (1)
    {
      if (v12 < 0)
      {
        v31 = sub_849BC();
        if (!v31 || (*&v37 = v31, sub_43834(0, &qword_CAB60, UIWindowScene_ptr), swift_dynamicCast(), v30 = *&v39[0], v28 = v15, v29 = v16, !*&v39[0]))
        {
LABEL_28:
          sub_40AE0();
        }
      }

      else
      {
        v26 = v15;
        v27 = v16;
        v28 = v15;
        if (!v16)
        {
          while (1)
          {
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v28 >= v20)
            {
              goto LABEL_28;
            }

            v27 = *(v13 + 8 * v28);
            ++v26;
            if (v27)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

LABEL_18:
        v29 = (v27 - 1) & v27;
        v30 = *(*(v12 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
        if (!v30)
        {
          goto LABEL_28;
        }
      }

      swift_beginAccess();
      v32 = objc_getAssociatedObject(v30, &off_CAAA0);
      swift_endAccess();
      if (v32)
      {
        sub_8495C();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39[0] = v37;
      v39[1] = v38;
      if (!*(&v38 + 1))
      {
        break;
      }

      type metadata accessor for HotReloadStatusHUD();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      v24 = swift_allocObject();
      *(v24 + 16) = v30;
      v25 = v30;
      sub_5E014(sub_4396C, v24);

      v15 = v28;
      v16 = v29;
    }

    sub_438CC(v39);
LABEL_11:
    type metadata accessor for HotReloadStatusHUD();
    v21 = swift_allocObject();
    v22 = v35;
    *(v21 + 24) = v36;
    *(v21 + 40) = v22;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0x3FB999999999999ALL;
    *(v21 + 72) = 0;
    *(v21 + 74) = 0;
    *(v21 + 80) = &_swiftEmptyArrayStorage;
    v23 = objc_allocWithZone(type metadata accessor for HotReloadStatusHUDWindow());
    *(v21 + 16) = [v23 initWithWindowScene:{v30, v33, v34}];
    swift_beginAccess();

    objc_setAssociatedObject(v30, &off_CAAA0, v21, &stru_2E8.segname[9]);
    swift_endAccess();

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_43834(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_4387C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_43834(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_438CC(uint64_t a1)
{
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43934()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_43974(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v2 = sub_83E0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  *v6 = sub_8482C();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = sub_83E2C();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_31;
  }

  result = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();
  if (result)
  {
    v9 = result;
    v10 = [result connectedScenes];
    sub_43834(0, &qword_CAB50, UIScene_ptr);
    sub_4387C(&qword_CAB58, &qword_CAB50, UIScene_ptr);
    v11 = sub_8472C();

    sub_42FC4(v11);
    v13 = v12;

    v14 = sub_750FC(v13);

    v33 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_8498C();
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      sub_4387C(&qword_CAB68, &qword_CAB60, UIWindowScene_ptr);
      result = sub_8474C();
      v14 = v41;
      v15 = v42;
      v16 = v43;
      v17 = v44;
      v18 = v45;
    }

    else
    {
      v19 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v16 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v18 = v21 & *(v14 + 56);

      v17 = 0;
    }

    v32 = v16;
    v22 = (v16 + 64) >> 6;
    v35 = xmmword_A1410;
    v34 = xmmword_A1420;
    while (1)
    {
      if (v14 < 0)
      {
        v30 = sub_849BC();
        if (!v30 || (*&v38 = v30, sub_43834(0, &qword_CAB60, UIWindowScene_ptr), swift_dynamicCast(), v29 = *&v40[0], v27 = v17, v28 = v18, !*&v40[0]))
        {
LABEL_28:
          sub_40AE0();
        }
      }

      else
      {
        v25 = v17;
        v26 = v18;
        v27 = v17;
        if (!v18)
        {
          while (1)
          {
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v27 >= v22)
            {
              goto LABEL_28;
            }

            v26 = *(v15 + 8 * v27);
            ++v25;
            if (v26)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

LABEL_18:
        v28 = (v26 - 1) & v26;
        v29 = *(*(v14 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v29)
        {
          goto LABEL_28;
        }
      }

      swift_beginAccess();
      v31 = objc_getAssociatedObject(v29, &off_CAAA0);
      swift_endAccess();
      if (v31)
      {
        sub_8495C();
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v40[0] = v38;
      v40[1] = v39;
      if (!*(&v39 + 1))
      {
        break;
      }

      type metadata accessor for HotReloadStatusHUD();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      sub_5DC28(v36, v37);

      v17 = v27;
      v18 = v28;
    }

    sub_438CC(v40);
LABEL_11:
    type metadata accessor for HotReloadStatusHUD();
    v23 = swift_allocObject();
    *(v23 + 24) = v35;
    *(v23 + 40) = v34;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0x3FB999999999999ALL;
    *(v23 + 72) = 0;
    *(v23 + 74) = 0;
    *(v23 + 80) = &_swiftEmptyArrayStorage;
    v24 = objc_allocWithZone(type metadata accessor for HotReloadStatusHUDWindow());
    *(v23 + 16) = [v24 initWithWindowScene:{v29, v32, v33}];
    swift_beginAccess();

    objc_setAssociatedObject(v29, &off_CAAA0, v23, &stru_2E8.segname[9]);
    swift_endAccess();

    goto LABEL_12;
  }

  return result;
}

void sub_43E9C()
{
  v0 = sub_83E0C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  *v4 = sub_8482C();
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v5 = sub_83E2C();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();
    if (!v6)
    {
      v17 = 0;
LABEL_32:

      return;
    }

    v7 = v6;
    v8 = [v6 connectedScenes];
    sub_43834(0, &qword_CAB50, UIScene_ptr);
    sub_4387C(&qword_CAB58, &qword_CAB50, UIScene_ptr);
    v9 = sub_8472C();

    sub_42FC4(v9);
    v11 = v10;

    v12 = sub_750FC(v11);

    v33 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_8498C();
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      sub_4387C(&qword_CAB68, &qword_CAB60, UIWindowScene_ptr);
      sub_8474C();
      v12 = v40;
      v13 = v41;
      v14 = v42;
      v15 = v43;
      v16 = v44;
    }

    else
    {
      v18 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v14 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v16 = v20 & *(v12 + 56);

      v15 = 0;
    }

    v32 = v14;
    v21 = (v14 + 64) >> 6;
    v35 = xmmword_A1410;
    v34 = xmmword_A1420;
    if (v12 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v22 = v15;
    v23 = v16;
    v24 = v15;
    if (!v16)
    {
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
LABEL_30:
          v17 = 0;
          goto LABEL_31;
        }

        v23 = *(v13 + 8 * v24);
        ++v22;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_15:
    v25 = (v23 - 1) & v23;
    v17 = *(*(v12 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v17)
    {
LABEL_31:
      sub_40AE0();

      goto LABEL_32;
    }

    while (1)
    {
      swift_beginAccess();
      v27 = objc_getAssociatedObject(v17, &off_CAAA0);
      swift_endAccess();
      if (v27)
      {
        sub_8495C();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39[0] = v37;
      v39[1] = v38;
      if (*(&v38 + 1))
      {
        type metadata accessor for HotReloadStatusHUD();
        if (swift_dynamicCast())
        {
          v28 = v36;
          goto LABEL_27;
        }
      }

      else
      {
        sub_438CC(v39);
      }

      type metadata accessor for HotReloadStatusHUD();
      v28 = swift_allocObject();
      v29 = v34;
      *(v28 + 24) = v35;
      *(v28 + 40) = v29;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0x3FB999999999999ALL;
      *(v28 + 72) = 0;
      *(v28 + 74) = 0;
      *(v28 + 80) = &_swiftEmptyArrayStorage;
      v30 = objc_allocWithZone(type metadata accessor for HotReloadStatusHUDWindow());
      *(v28 + 16) = [v30 initWithWindowScene:{v17, v32, v33}];
      swift_beginAccess();

      objc_setAssociatedObject(v17, &off_CAAA0, v28, &stru_2E8.segname[9]);
      swift_endAccess();

LABEL_27:
      v31 = *(v28 + 73);

      if (v31 == 1)
      {
        goto LABEL_31;
      }

      v15 = v24;
      v16 = v25;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v26 = sub_849BC();
      if (!v26)
      {
        goto LABEL_30;
      }

      *&v37 = v26;
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      swift_dynamicCast();
      v17 = *&v39[0];
      v24 = v15;
      v25 = v16;
      if (!*&v39[0])
      {
        goto LABEL_31;
      }
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_443D8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "failedInputStream";
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "failedInputStream";
  }

  else
  {
    v4 = "";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_84BEC();
  }

  return v5 & 1;
}

Swift::Int sub_4447C()
{
  v1 = *v0;
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_444F4()
{
  *v0;
  sub_8446C();
}

Swift::Int sub_44558()
{
  v1 = *v0;
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_445CC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_B3708;
  v8._object = v3;
  v5 = sub_84B5C(v4, v8);

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

void sub_4462C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "failedInputStream";
  }

  else
  {
    v2 = "";
  }

  *a1 = 0xD000000000000011;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_4466C()
{
  v1 = *v0;
  sub_2805C(&qword_CABE8, &qword_A15B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_A10E0;
  *(inited + 32) = sub_843AC();
  v4 = "";
  if (v1)
  {
    v4 = "failedInputStream";
  }

  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = v4 | 0x8000000000000000;
  v5 = sub_42808(inited);
  swift_setDeallocating();
  sub_38328(inited + 32, &qword_CAA68, &qword_A13D0);
  return v5;
}

uint64_t sub_44750(uint64_t a1)
{
  v2 = sub_4710C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_4478C(uint64_t a1)
{
  v2 = sub_4710C();

  return Error<>._code.getter(a1, v2);
}

id sub_447D0()
{
  v0 = sub_8390C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_839CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  v13 = [objc_opt_self() books];
  v14 = [v13 containerURL];

  sub_8396C();
  strcpy(v17, "JSAFileStorage");
  v17[15] = -18;
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.isDirectory(_:), v0);
  sub_3A8E8();
  sub_839BC();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v10, v5);
  v15 = objc_allocWithZone(type metadata accessor for JSAFileStorage());
  result = sub_44AE8(v12);
  qword_CAB78 = result;
  return result;
}

id static JSAFileStorage.shared.getter()
{
  if (qword_CA3E0 != -1)
  {
    swift_once();
  }

  v1 = qword_CAB78;

  return v1;
}

id sub_44AE8(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = sub_847FC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_83DDC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_8481C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue;
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  sub_83DAC();
  v23 = &_swiftEmptyArrayStorage;
  sub_46E98();
  sub_2805C(&qword_CA520, &unk_A1670);
  sub_46EF0();
  sub_8496C();
  *&v1[v12] = sub_8485C();
  v13 = OBJC_IVAR____TtC5JSApp14JSAFileStorage_containerURL;
  v14 = sub_839CC();
  v15 = *(v14 - 8);
  v16 = &v2[v13];
  v17 = v21;
  (*(v15 + 16))(v16, v21, v14);
  v18 = type metadata accessor for JSAFileStorage();
  v22.receiver = v2;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, "init");
  (*(v15 + 8))(v17, v14);
  return v19;
}

uint64_t sub_44DA8@<X0>(_OWORD *a1@<X8>)
{
  result = sub_8488C();
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = *(v1 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
      __chkstk_darwin(result);
      sub_8483C();
    }
  }

  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_44F3C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_45580(v2, v3, a1);
}

uint64_t sub_450B8(uint64_t a1, void *a2)
{
  result = sub_8488C();
  if (v5)
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = [a2 isUndefined];
      if ((v7 & 1) != 0 || (v7 = [a2 isNull], v7))
      {
        v11 = 0u;
        v12 = 0u;
      }

      else
      {
        v7 = [a2 toObject];
        if (v7)
        {
          sub_8495C();
          v7 = swift_unknownObjectRelease();
        }

        else
        {
          v9 = 0u;
          v10 = 0u;
        }

        v11 = v9;
        v12 = v10;
      }

      v8 = *(v2 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
      __chkstk_darwin(v7);
      sub_8483C();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_452CC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  return sub_45C3C(v1, v2, v3);
}

uint64_t sub_45374()
{
  result = sub_8488C();
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
      __chkstk_darwin(result);
      sub_8483C();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_454EC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_462F4(v1, v2);
}

uint64_t sub_45580@<X0>(char *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v54 = a2;
  v52 = a3;
  v53 = a1;
  v4 = sub_8390C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_839CC();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_83E0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = sub_83E2C();
  v21 = *(v14 + 8);
  v20 = (v14 + 8);
  v21(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v23 = v53;
  v22 = v54;
  v57[0] = v53;
  v57[1] = v54;
  (*(v5 + 104))(v8, enum case for URL.DirectoryHint.notDirectory(_:), v4);
  sub_3A8E8();
  sub_839BC();
  (*(v5 + 8))(v8, v4);
  v24 = [objc_opt_self() defaultManager];
  sub_8397C(0);
  v25 = sub_8437C();

  v26 = [v24 fileExistsAtPath:v25];

  v5 = v22;
  v20 = v12;
  if (!v26)
  {
    result = (*(v55 + 8))(v12, v56);
    v36 = v52;
    *v52 = 0u;
    v36[1] = 0u;
    return result;
  }

  v12 = v23;
  v27 = objc_allocWithZone(NSInputStream);
  sub_8394C(v28);
  v30 = v29;
  v31 = [v27 initWithURL:v29];

  if (!v31)
  {
    if (qword_CA490 == -1)
    {
LABEL_8:
      v37 = sub_83D6C();
      sub_2C284(v37, qword_CB3C8);

      v38 = sub_83D4C();
      v39 = sub_847AC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v57[0] = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_3A93C(v12, v5, v57);
        _os_log_impl(&dword_0, v38, v39, "[JSAFileStorage] Failed to create input stream for file %{public}s", v40, 0xCu);
        sub_371A8(v41);
      }

      sub_46E44();
      swift_allocError();
      *v42 = 0;
      swift_willThrow();
      return (*(v55 + 8))(v20, v56);
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  [v31 open];
  v32 = objc_opt_self();
  v57[0] = 0;
  v33 = [v32 JSONObjectWithStream:v31 options:4 error:v57];
  v34 = v57[0];
  if (v33)
  {
    sub_8495C();
    swift_unknownObjectRelease();
    [v31 close];
  }

  else
  {
    v43 = v20;
    v44 = v34;
    sub_838DC();

    swift_willThrow();
    if (qword_CA490 != -1)
    {
      swift_once();
    }

    v45 = sub_83D6C();
    sub_2C284(v45, qword_CB3C8);
    swift_errorRetain();
    v46 = sub_83D4C();
    v47 = sub_847AC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      v50 = sub_838CC();
      *(v48 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&dword_0, v46, v47, "[JSAFileStorage] Failed to unarchive data with error=%{public}@", v48, 0xCu);
      sub_38328(v49, &qword_CA760, &qword_A0F80);
    }

    swift_willThrow();
    [v31 close];

    v20 = v43;
  }

  return (*(v55 + 8))(v20, v56);
}

uint64_t sub_45C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v50 = a1;
  *(&v50 + 1) = a2;
  v6 = sub_8390C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_839CC();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_83E0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = sub_83E2C();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_46DD4(a3, &v51);
  if (!v52)
  {
    return sub_462F4(v50, *(&v50 + 1));
  }

  sub_42FB4(&v51, &v53);
  v20 = objc_opt_self();
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_A10E0;
  sub_381F8(&v53, v21 + 32);
  isa = sub_8458C().super.isa;

  v23 = [v20 isValidJSONObject:isa];

  if (!v23)
  {
    if (qword_CA490 == -1)
    {
LABEL_9:
      v33 = sub_83D6C();
      sub_2C284(v33, qword_CB3C8);
      v34 = sub_83D4C();
      v35 = sub_847AC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "[JSAFileStorage] Invalid JSON object", v36, 2u);
      }

      sub_46E44();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();
      return sub_371A8(&v53);
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  sub_46808();
  if (!v4)
  {
    v51 = v50;
    v24 = v46;
    (*(v46 + 104))(v9, enum case for URL.DirectoryHint.notDirectory(_:), v6);
    sub_3A8E8();
    v25 = v47;
    sub_839BC();
    (*(v24 + 8))(v9, v6);
    sub_40E4C(&v53, v54);
    v26 = sub_84BDC();
    *&v51 = 0;
    v27 = [v20 dataWithJSONObject:v26 options:6 error:&v51];
    swift_unknownObjectRelease();
    v28 = v51;
    if (v27)
    {
      v29 = sub_83A0C();
      v31 = v30;

      sub_83A1C();
      (*(v48 + 8))(v25, v49);
      sub_3BB74(v29, v31);
    }

    else
    {
      v38 = v28;
      sub_838DC();

      swift_willThrow();
      if (qword_CA490 != -1)
      {
        swift_once();
      }

      v39 = sub_83D6C();
      sub_2C284(v39, qword_CB3C8);
      swift_errorRetain();
      v40 = sub_83D4C();
      v41 = sub_847AC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        v44 = sub_838CC();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&dword_0, v40, v41, "[JSAFileStorage] Failed to archive data with error=%{public}@", v42, 0xCu);
        sub_38328(v43, &qword_CA760, &qword_A0F80);
      }

      swift_willThrow();
      (*(v48 + 8))(v25, v49);
    }
  }

  return sub_371A8(&v53);
}

uint64_t sub_462F4(void *a1, void *a2)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_8390C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_839CC();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_83E0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = sub_83E2C();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v43[0] = v39;
  v43[1] = v40;
  (*(v4 + 104))(v7, enum case for URL.DirectoryHint.notDirectory(_:), v3);
  sub_3A8E8();
  sub_839BC();
  (*(v4 + 8))(v7, v3);
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  sub_8397C(0);
  v21 = sub_8437C();

  v22 = [v20 fileExistsAtPath:v21];

  if (!v22)
  {
    return (*(v41 + 8))(v11, v42);
  }

  v23 = [v19 defaultManager];
  sub_8394C(v24);
  v26 = v25;
  v43[0] = 0;
  v27 = [v23 removeItemAtURL:v25 error:v43];

  if (v27)
  {
    v28 = *(v41 + 8);
    v29 = v43[0];
    return v28(v11, v42);
  }

  v31 = v43[0];
  sub_838DC();

  swift_willThrow();
  if (qword_CA490 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v32 = sub_83D6C();
  sub_2C284(v32, qword_CB3C8);
  swift_errorRetain();
  v33 = sub_83D4C();
  v34 = sub_847AC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    v37 = sub_838CC();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&dword_0, v33, v34, "[JSAFileStorage] Failed to delete file with error=%{public}@", v35, 0xCu);
    sub_38328(v36, &qword_CA760, &qword_A0F80);
  }

  swift_willThrow();
  return (*(v41 + 8))(v11, v42);
}