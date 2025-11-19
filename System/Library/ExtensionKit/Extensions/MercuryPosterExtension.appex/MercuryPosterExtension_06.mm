void sub_100090238()
{
  v1 = v0;
  v2 = *(v0 + 544);
  if (v2 && *(*(v2 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_sequences) + 16) && (v4 = *(v2 + 16), v3 = *(v2 + 24), , sub_10009F208(v4, v3), v6 = v5, , (v6 & 1) != 0))
  {
    if (*(v1 + 552))
    {
      return;
    }

    *(v1 + 552) = sub_10009287C(0x72702072616C6F73, 0xED00007765697665);
  }

  else
  {
    if (!*(v1 + 552))
    {
      return;
    }

    ContinuousRenderingToken.invalidate()();

    *(v1 + 552) = 0;
  }
}

void sub_100090328()
{
  v1 = *v0;
  [v0[70] invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v8[4] = sub_100098A48;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000889A4;
  v8[3] = &unk_100124E20;
  v5 = _Block_copy(v8);

  v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:0.1];
  _Block_release(v5);
  v7 = v0[70];
  v0[70] = v6;
}

void sub_100090484()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100090660();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 560);
    *(Strong + 560) = 0;
  }
}

void sub_100090660()
{
  v2 = *(v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 16);
  if (v3 < 2)
  {
    return;
  }

  v4 = v0;
  if (*(v0 + 145) != 1)
  {
    return;
  }

  if (!*(v0 + 80))
  {
    if (qword_10012F680 != -1)
    {
LABEL_65:
      swift_once();
    }

    v10 = sub_1000E96A4();
    sub_100007488(v10, qword_100131218);
    v11 = sub_1000E9684();
    v12 = sub_1000E9BA4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "trying to generate snapshots when there’s no renderer yet", v13, 2u);
    }

    return;
  }

  if (*(v0 + 480))
  {
    v5 = qword_10012F680;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      goto LABEL_68;
    }

    goto LABEL_7;
  }

  v120 = v1;
  v105 = *v0;
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
  v20 = *(v0 + 96);
  v117 = *(v0 + 88);
  v113 = *(v0 + 464);
  v115 = *(v0 + 472);
  v21 = *(v0 + 352);
  v235 = *(v0 + 336);
  v236 = v21;
  v237 = *(v0 + 368);
  v238 = *(v0 + 384);
  v22 = *(v0 + 288);
  v231 = *(v0 + 272);
  v232 = v22;
  v23 = *(v0 + 320);
  v233 = *(v0 + 304);
  v234 = v23;
  v24 = *(v0 + 192);
  v25 = *(v0 + 224);
  v227 = *(v0 + 208);
  v228 = v25;
  v26 = *(v0 + 256);
  v229 = *(v0 + 240);
  v230 = v26;
  v27 = *(v0 + 192);
  v226[0] = *(v0 + 176);
  v226[1] = v27;
  v123 = *(&v229 + 1);
  v28 = v229;
  v126 = v230;
  v130 = *(&v228 + 1);
  v29 = v231;
  v222 = v226[0];
  v223 = v24;
  v224 = v227;
  v225 = *(v4 + 224);
  v221 = v231;
  v30 = *(v4 + 273);
  v31 = *(v4 + 289);
  v32 = *(v4 + 305);
  v217 = *(v4 + 321);
  v216 = v32;
  v215 = v31;
  v214 = v30;
  v33 = *(v4 + 337);
  v34 = *(v4 + 353);
  v35 = *(v4 + 369);
  v122 = v4;
  *(v220 + 15) = *(v4 + 384);
  v220[0] = v35;
  v219 = v34;
  v218 = v33;
  v119 = v2;

  v118 = v20;
  v110 = v14;
  v108 = v16;
  v107 = v18;
  sub_100098538(v20, v15, v14, v16, v17, v18, v19, 1);
  swift_unknownObjectRetain();
  if (v231 == 1)
  {
    sub_100004CBC(v226, v199);
    sub_100098664(v130, v28, v123, v126, *(&v126 + 1), 1);
    v29 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v221 = 0;
    v39 = v28;
    v28 = 0;
  }

  else
  {
    sub_100004CBC(v226, v199);
    v36 = v123;
    v38 = *(&v126 + 1);
    v37 = v126;
    v39 = v130;
  }

  v195 = v222;
  v196 = v223;
  v197 = v224;
  *&v198[97] = v217;
  *&v198[81] = v216;
  *&v198[65] = v215;
  *&v198[49] = v214;
  *&v198[160] = *(v220 + 15);
  *&v198[145] = v220[0];
  *&v198[129] = v219;
  *&v198[113] = v218;
  v199[2] = v224;
  v199[1] = v223;
  v199[0] = v222;
  v210 = v217;
  v209 = v216;
  v208 = v215;
  *v198 = v225;
  *&v198[8] = v39;
  *&v198[16] = v28;
  *&v198[24] = v36;
  *&v198[32] = v37;
  *&v198[40] = v38;
  v198[48] = v29;
  v200 = v225;
  v201 = v39;
  v202 = v28;
  v203 = v36;
  v204 = v37;
  v205 = v38;
  v206 = v29;
  v207 = v214;
  *&v213[15] = *(v220 + 15);
  *v213 = v220[0];
  v212 = v219;
  v211 = v218;
  sub_100004CBC(&v195, &aBlock);
  sub_100004D30(v199);
  if (v198[48])
  {
    v40 = &v198[16];
  }

  else
  {
    v40 = &v198[8];
  }

  if (v113 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_70;
  }

  v41 = v120;
  if (v113 >= 9.22337204e18)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if ((*&v113 & 0x7FF0000000000000) == 0x7FF0000000000000 || (*&v115 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_71;
  }

  if (v115 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v115 >= 9.22337204e18)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v104 = *v40;
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000E9DC4();
  v43 = *(v122 + 64);
  v42 = *(v122 + 72);
  v124 = *(v42 + 8);
  v127 = *(v122 + 40);
  v44 = *(v122 + 528);
  do
  {
    v45 = v124(v43, v42);
    sub_10008B378(v113, v115, v127, v45, v44);
    if (v41)
    {

      sub_1000985B8(v20, v15, v110, v108, v17, v107, v19, 1);
      swift_unknownObjectRelease();
      sub_100004D30(&v195);

      return;
    }

    sub_1000E9DA4();
    sub_1000E9DD4();
    sub_1000E9DE4();
    sub_1000E9DB4();
    --v3;
    v41 = 0;
  }

  while (v3);
  v46 = aBlock;
  v47 = v122;
  v116 = [*(v122 + 48) commandBuffer];
  if (!v116)
  {

    sub_1000985B8(v20, v15, v110, v108, v17, v107, v19, 1);

    if (qword_10012F680 == -1)
    {
LABEL_58:
      v96 = sub_1000E96A4();
      sub_100007488(v96, qword_100131218);
      v97 = sub_1000E9684();
      v98 = sub_1000E9BA4();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "couldn’t make command buffer for look snapshotting", v99, 2u);
      }

      swift_unknownObjectRelease();

      sub_100004D30(&v195);
      return;
    }

LABEL_74:
    swift_once();
    goto LABEL_58;
  }

  sub_1000E95A4();
  v103 = swift_allocBox();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000990A8(&qword_100131CE8, &type metadata accessor for IndexSet);
  sub_1000125FC(&qword_100131CF0);
  sub_100028F40(&unk_100131CF8, &qword_100131CF0);
  sub_1000E9CD4();
  v48 = v119;
  v114 = *(v119 + 16);
  if (!v114)
  {
LABEL_61:
    v100 = v48;
    v101 = swift_allocObject();
    v101[2] = v47;
    v101[3] = v118;
    v101[4] = v104;
    v101[5] = v100;
    v101[6] = v103;
    v101[7] = v46;
    v101[8] = v105;
    v181 = sub_100098638;
    v182 = v101;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v179 = sub_10009281C;
    v180 = &unk_100124D58;
    v102 = _Block_copy(&aBlock);

    [v116 addCompletedHandler:v102];
    _Block_release(v102);
    [v116 commit];
    swift_unknownObjectRelease();

    sub_100004D30(&v195);
    swift_unknownObjectRelease();
    return;
  }

  v49 = 0;
  v111 = v46 & 0xC000000000000001;
  v112 = *(v122 + 536);
  v106 = v46 & 0xFFFFFFFFFFFFFF8;
  v50 = (v119 + 40);
  v51 = 0;
  v109 = v46;
  while (1)
  {
    if (v49 >= *(v48 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v58 = *(v50 - 1);
    v59 = *v50;
    v128 = v50;
    v60 = *(v112 + 16);

    if (v60)
    {
      v61 = sub_10009F208(v58, v59);
      if (v62)
      {
        v63 = *(*(v112 + 56) + 8 * v61);
        if (*(v63 + 16))
        {
          break;
        }
      }
    }

LABEL_43:
    v131 = v58;

    v121 = v51;
    v125 = v49;
    if (v111)
    {
      v129 = sub_1000E9D74();
    }

    else
    {
      if (v49 >= *(v106 + 16))
      {
        goto LABEL_64;
      }

      v129 = *(v46 + 8 * v49 + 32);
      swift_unknownObjectRetain();
    }

    v69 = v196;
    v70 = v197;
    v71 = *v198;
    v72 = v198[4];
    v146 = v195;
    v143 = *&v198[133];
    *v144 = *&v198[149];
    *&v144[15] = *&v198[164];
    v139 = *&v198[69];
    v140 = *&v198[85];
    v141 = *&v198[101];
    v142 = *&v198[117];
    v135 = *&v198[5];
    v136 = *&v198[21];
    v137 = *&v198[37];
    v138 = *&v198[53];
    v145 = 0;
    sub_100004CBC(&v195, &v132);

    sub_1000127B0(v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72);
    v161 = v146;
    v175 = v142;
    v176 = v143;
    *v177 = *v144;
    v171 = v138;
    v172 = v139;
    v173 = v140;
    v174 = v141;
    v168 = v135;
    v169 = v136;
    v170 = v137;
    aBlock = v146;
    v192 = v142;
    v193 = v143;
    *v194 = *v144;
    v188 = v138;
    v189 = v139;
    v190 = v140;
    v191 = v141;
    v185 = v135;
    v186 = v136;
    v162 = v58;
    v163 = v59;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v167 = v145;
    *&v177[15] = *&v144[15];
    v179 = v58;
    v180 = v59;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = v145;
    *&v194[15] = *&v144[15];
    v187 = v137;
    sub_100004CBC(&v161, &v132);
    sub_100004D30(&aBlock);
    v159 = v161;
    v160 = DWORD2(v161);
    v73 = *((&v161 | 0xD) + 0xB0);
    v157 = *((&v161 | 0xD) + 0xA0);
    v158[0] = v73;
    *(v158 + 11) = *((&v161 | 0xD) + 0xBB);
    v74 = *((&v161 | 0xD) + 0x70);
    v153 = *((&v161 | 0xD) + 0x60);
    v154 = v74;
    v75 = *((&v161 | 0xD) + 0x90);
    v155 = *((&v161 | 0xD) + 0x80);
    v156 = v75;
    v76 = *((&v161 | 0xD) + 0x30);
    v149 = *((&v161 | 0xD) + 0x20);
    v150 = v76;
    v77 = *((&v161 | 0xD) + 0x50);
    v151 = *((&v161 | 0xD) + 0x40);
    v152 = v77;
    v78 = *((&v161 | 0xD) + 0x10);
    v147 = *(&v161 | 0xD);
    v148 = v78;
    v79 = *(v122 + 496);
    v80 = *(v122 + 504);
    v81 = *(v122 + 512);
    if (*(v122 + 496) && v79 != 1)
    {

      v82 = v129;
    }

    else
    {
      v82 = v129;
      v83 = sub_1000E9F74();

      if ((v83 & 1) == 0)
      {
        if (v79)
        {

          v84 = 1;
        }

        else
        {
          v84 = sub_1000E9F74();
        }

        goto LABEL_53;
      }
    }

    v84 = (v80 == 2) & ~v81;
LABEL_53:
    v51 = v121;
    v85 = v84 & 1;
    v86 = sub_100098370(v122, v118, v131, v59);
    v88 = v87;

    ObjectType = swift_getObjectType();
    v239 = v159;
    v240 = v160;
    v241 = v85;
    v90 = v158[0];
    *((&v239 | 0xD) + 0xA0) = v157;
    *((&v239 | 0xD) + 0xB0) = v90;
    *((&v239 | 0xD) + 0xBB) = *(v158 + 11);
    v91 = v154;
    *((&v239 | 0xD) + 0x60) = v153;
    *((&v239 | 0xD) + 0x70) = v91;
    v92 = v156;
    *((&v239 | 0xD) + 0x80) = v155;
    *((&v239 | 0xD) + 0x90) = v92;
    v93 = v150;
    *((&v239 | 0xD) + 0x20) = v149;
    *((&v239 | 0xD) + 0x30) = v93;
    v94 = v152;
    *((&v239 | 0xD) + 0x40) = v151;
    *((&v239 | 0xD) + 0x50) = v94;
    v95 = v148;
    *(&v239 | 0xD) = v147;
    *((&v239 | 0xD) + 0x10) = v95;
    (*(v117 + 216))(&v239, v82, v86, v88, v116, ObjectType);

    sub_100009DBC(v86, v88);
    swift_unknownObjectRelease();
    v132 = v159;
    v133 = v160;
    v134 = v85;
    v52 = v158[0];
    *((&v132 | 0xD) + 0xA0) = v157;
    *((&v132 | 0xD) + 0xB0) = v52;
    *((&v132 | 0xD) + 0xBB) = *(v158 + 11);
    v53 = v154;
    *((&v132 | 0xD) + 0x60) = v153;
    *((&v132 | 0xD) + 0x70) = v53;
    v54 = v156;
    *((&v132 | 0xD) + 0x80) = v155;
    *((&v132 | 0xD) + 0x90) = v54;
    v55 = v150;
    *((&v132 | 0xD) + 0x20) = v149;
    *((&v132 | 0xD) + 0x30) = v55;
    v56 = v152;
    *((&v132 | 0xD) + 0x40) = v151;
    *((&v132 | 0xD) + 0x50) = v56;
    v57 = v148;
    *(&v132 | 0xD) = v147;
    *((&v132 | 0xD) + 0x10) = v57;
    sub_100004D30(&v132);
    v47 = v122;
    v46 = v109;
    v49 = v125 + 1;
    v50 = v128 + 2;
    v48 = v119;
    if (v114 == v125 + 1)
    {
      goto LABEL_61;
    }
  }

  v180 = sub_1000125FC(&qword_100131D08);
  v181 = sub_100028F40(&unk_100131D10, &qword_100131D08);
  *&aBlock = v63;
  sub_100028EC4(&aBlock, &v161);
  swift_bridgeObjectRetain_n();
  v64 = sub_10000AB5C(1, &v161, 45.0);
  if (v163)
  {
    sub_100012710(&v161);
  }

  sub_100012710(&aBlock);
  if (v64 == 8)
  {
    __break(1u);
    return;
  }

  if (*(v63 + 16))
  {
    v65 = sub_10009F284(v64);
    v67 = v66;

    if ((v67 & 1) == 0)
    {
      goto LABEL_67;
    }

    v68 = (*(v63 + 56) + 16 * v65);
    v58 = *v68;
    v59 = v68[1];

    goto LABEL_43;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  swift_once();
LABEL_7:
  v6 = sub_1000E96A4();
  sub_100007488(v6, qword_100131218);
  v7 = sub_1000E9684();
  v8 = sub_1000E9BA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "trying to generate snapshots with no known pixel size", v9, 2u);
  }

  swift_unknownObjectRelease();
}

void sub_100091810(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v14 = sub_1000E97F4();
  v34 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000E9824();
  v32 = *(v17 - 8);
  v33 = v17;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 status] == 4)
  {
    sub_100012904(0, &qword_100130A20);
    v30 = sub_1000E9C14();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = a3;
    v22[4] = a4;
    v22[5] = a5;
    v22[6] = a6;
    v22[7] = a7;
    v22[8] = v31;
    aBlock[4] = sub_1000986C8;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000927D8;
    aBlock[3] = &unk_100124DD0;
    v23 = _Block_copy(aBlock);

    sub_1000E9804();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000990A8(&qword_100131D20, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000125FC(&qword_100131D28);
    sub_100028F40(&qword_100131D30, &qword_100131D28);
    sub_1000E9CD4();
    v24 = v30;
    sub_1000E9C24();
    _Block_release(v23);

    (v34[1].isa)(v16, v14);
    (*(v32 + 8))(v20, v33);
  }

  else
  {
    if (qword_10012F680 != -1)
    {
      swift_once();
    }

    v25 = sub_1000E96A4();
    sub_100007488(v25, qword_100131218);
    v34 = sub_1000E9684();
    v26 = sub_1000E9BA4();
    if (os_log_type_enabled(v34, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v34, v26, "look-snapshotting command buffer did not complete successfully", v27, 2u);
    }

    v28 = v34;
  }
}

uint64_t sub_100091C68(uint64_t a1, uint64_t a2, Swift::UInt a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v113 = a6;
  v105 = a3;
  v8 = sub_1000E95A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v127 = a2;
    v13 = 232;
    if (*(result + 272))
    {
      v13 = 240;
    }

    v119 = *(a4 + 16);
    if (v119)
    {
      v101 = *(result + v13);

      v14 = v114;
      swift_beginAccess();
      v15 = 0;
      v116 = 0;
      v17 = *(v9 + 16);
      v16 = v9 + 16;
      v118 = v17;
      v117 = (v16 - 8);
      v112 = v113 & 0xC000000000000001;
      v108 = v113 & 0xFFFFFFFFFFFFFF8;
      v18 = (a4 + 40);
      *&v19 = 136446466;
      v100 = v19;
      v111 = v8;
      v110 = v16;
      v109 = v12;
      while (1)
      {
        v20 = v120;
        v118(v120, v14, v8);
        v21 = sub_1000E9594(v15);
        result = (*v117)(v20, v8);
        if (v21)
        {
          goto LABEL_9;
        }

        v23 = *(v18 - 1);
        v22 = *v18;
        if (v112)
        {

          v24 = sub_1000E9D74();
        }

        else
        {
          if (v15 >= *(v108 + 16))
          {
            __break(1u);
            return result;
          }

          v24 = *(v113 + 8 * v15 + 32);

          swift_unknownObjectRetain();
        }

        v25 = (*(*(v12 + 72) + 24))();
        v26 = *(v12 + 528);
        v115 = v24;
        v27 = v116;
        v28 = sub_10008B6FC(v24, v25, v26, 0);
        if (v27)
        {

          if (qword_10012F680 != -1)
          {
            swift_once();
          }

          v32 = sub_1000E96A4();
          sub_100007488(v32, qword_100131218);

          swift_errorRetain();
          v33 = sub_1000E9684();
          v34 = sub_1000E9BA4();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = v23;
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            *&v123 = v38;
            *v35 = v100;
            v39 = sub_100093A3C(v36, v22, &v123);

            *(v35 + 4) = v39;
            *(v35 + 12) = 2114;
            swift_errorRetain();
            v40 = _swift_stdlib_bridgeErrorToNSError();
            *(v35 + 14) = v40;
            *v37 = v40;
            _os_log_impl(&_mh_execute_header, v33, v34, "failed to make snapshot contents for look “%{public}s”: %{public}@", v35, 0x16u);
            sub_1000047C4(v37, &qword_10012FA60);

            sub_100012710(v38);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v116 = 0;
          v12 = v109;
          goto LABEL_8;
        }

        v41 = v28;
        LODWORD(v104) = v29;
        v106 = v30;
        v107 = v31;
        v116 = 0;

        v103 = v23;
        v43 = sub_100092704(&v123, v23, v22);
        if (*v42)
        {
          v44 = v42;
          v45 = v41;
          v46 = v106;
          v47 = v107;
          sub_10009870C(v106, v107);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v121 = v44[3];
          v44[3] = 0x8000000000000000;
          v49 = v41;
          sub_1000B5344(v41, v104 & 1, v46, v47, v105, isUniquelyReferenced_nonNull_native);
          v44[3] = v121;
        }

        else
        {
          v49 = v41;
        }

        (v43)(&v123, 0);
        v12 = v109;
        if (v101 != v105)
        {

          sub_100098720(v106, v107);

          goto LABEL_29;
        }

        v50 = v127;
        v51 = *(v127 + 16);
        v102 = v49;
        v99 = v127;
        if (v51 && (v52 = sub_10009F208(v103, v22), (v53 & 1) != 0))
        {
          v54 = *(v50 + 56) + 56 * v52;
          v55 = *v54;
          v56 = *(v54 + 8);
          v58 = *(v54 + 16);
          v57 = *(v54 + 24);
          v60 = *(v54 + 32);
          v59 = *(v54 + 40);
          v97 = *(v54 + 48);
          v96 = v55;
          v98 = v56;
          v61 = v56;
          v62 = v58;
          v63 = v58;

          v64 = v60;
          v65 = v59;
          if (v55)
          {
            v66 = v96;
            v67 = v96;
            sub_100098734(v66, v98, v62, v57, v60, v59);
            if (v104)
            {
              type metadata accessor for CGImage(0);
            }

            else
            {
              v68 = sub_100012904(0, &qword_100131D38);
            }

            v71 = v99;
            v122 = v68;
            v89 = v102;
            *&v121 = v102;
            sub_100032864(&v121, &v123);
            sub_100012800(&v123, *(&v124 + 1));
            v90 = v89;
            v72 = v89;
            v91 = sub_1000E9F64();
            sub_100012710(&v123);
            [v67 setContents:v91];

            swift_unknownObjectRelease();
            if (!*(v71 + 16))
            {
LABEL_43:

              v78 = 0;
              v79 = 0;
              v80 = 0;
              v82 = 0;
              v81 = 0;
              goto LABEL_44;
            }

            goto LABEL_32;
          }

          v69 = v98;
          v70 = v58;
        }

        else
        {
          v69 = 0;
          v70 = 0;
          v57 = 0;
          v60 = 0;
          v59 = 0;
        }

        sub_100098734(0, v69, v70, v57, v60, v59);
        v71 = v99;
        v72 = v102;
        if (!*(v99 + 16))
        {
          goto LABEL_43;
        }

LABEL_32:
        v73 = sub_10009F208(v103, v22);
        v75 = v74;

        if ((v75 & 1) == 0)
        {
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v82 = 0;
          v81 = 0;
LABEL_39:
          v72 = v102;
LABEL_44:

          sub_100098720(v106, v107);
          swift_unknownObjectRelease();
          sub_100098734(0, v78, v79, v80, v82, v81);
          goto LABEL_8;
        }

        v76 = *(v71 + 56) + 56 * v73;
        v77 = *v76;
        v78 = *(v76 + 8);
        v79 = *(v76 + 16);
        v80 = *(v76 + 24);
        v82 = *(v76 + 32);
        v81 = *(v76 + 40);
        v104 = *v76;
        v103 = v78;
        v83 = v79;

        v84 = v82;
        v85 = v81;
        if (!v77)
        {
          goto LABEL_39;
        }

        v86 = v103;
        sub_100098734(v104, v78, v79, v80, v82, v81);
        if (v78)
        {
          v87 = v86;
          v8 = v111;
          v14 = v114;
          if (v107 == 0xFF)
          {
            v92 = 0;
            v93 = v106;
          }

          else
          {
            if (v107)
            {
              type metadata accessor for CGImage(0);
            }

            else
            {
              v88 = sub_100012904(0, &qword_100131D38);
            }

            v122 = v88;
            v93 = v106;
            *&v121 = v106;
            sub_100032864(&v121, &v123);
            sub_100012800(&v123, *(&v124 + 1));
            v94 = v93;
            v92 = sub_1000E9F64();
            sub_100012710(&v123);
          }

          [v87 setContents:v92];

          sub_100098720(v93, v107);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        sub_100098720(v106, v107);
LABEL_29:
        swift_unknownObjectRelease();
LABEL_8:
        v8 = v111;
        v14 = v114;
LABEL_9:
        ++v15;
        v18 += 2;
        if (v119 == v15)
        {
          a2 = v127;
          goto LABEL_53;
        }
      }
    }

LABEL_53:
    LOBYTE(v121) = 1;
    v95 = *(v12 + 112);
    v123 = *(v12 + 96);
    v124 = v95;
    v125 = *(v12 + 128);
    v126 = *(v12 + 144);
    *(v12 + 96) = a2;
    *(v12 + 145) = 1;

    sub_1000986DC(&v123);
  }

  return result;
}

void (*sub_100092704(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100096748(v6, a2, a3);
  return sub_10009278C;
}

void sub_10009278C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000927D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10009281C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009287C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 520);

  v7 = sub_10008C194(a1, a2, v6);

  if (v7)
  {
    if (qword_10012F680 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E96A4();
    sub_100007488(v8, qword_100131218);
    v9 = sub_1000E9684();
    v10 = sub_1000E9BB4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Request for continuous rendering with a reason that already exists. Don't create a new one. The caller needs to work this out.", v11, 2u);
    }

    return 0;
  }

  else
  {
    swift_beginAccess();

    sub_1000C232C(&v16, a1, a2);
    swift_endAccess();

    *(*(v3 + 56) + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 1;
    sub_1000871AC();
    type metadata accessor for ContinuousRenderingToken();
    v13 = swift_allocObject();

    v15 = sub_100098CD8(v14, a1, a2, v13, &off_100124D10);

    return v15;
  }
}

void sub_100092A60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2 + 520;
  swift_beginAccess();
  v7 = *(*(v3 + 520) + 16);
  swift_beginAccess();
  sub_1000C357C(a1, a2);
  swift_endAccess();

  if (v7)
  {
    if (!*(*v6 + 16))
    {
      *(*(v3 + 56) + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 0;
      sub_1000871AC();
    }
  }
}

uint64_t sub_100092B1C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1000985B8(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 145));

  v1 = *(v0 + 352);
  v8[10] = *(v0 + 336);
  v8[11] = v1;
  v8[12] = *(v0 + 368);
  v9 = *(v0 + 384);
  v2 = *(v0 + 288);
  v8[6] = *(v0 + 272);
  v8[7] = v2;
  v3 = *(v0 + 320);
  v8[8] = *(v0 + 304);
  v8[9] = v3;
  v4 = *(v0 + 224);
  v8[2] = *(v0 + 208);
  v8[3] = v4;
  v5 = *(v0 + 256);
  v8[4] = *(v0 + 240);
  v8[5] = v5;
  v6 = *(v0 + 192);
  v8[0] = *(v0 + 176);
  v8[1] = v6;
  sub_100004D30(v8);
  sub_100098A50(*(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424) | (*(v0 + 428) << 32));

  return v0;
}

uint64_t sub_100092C24()
{
  sub_100092B1C();

  return swift_deallocClassInstance();
}

uint64_t sub_100092C5C()
{
  type metadata accessor for Resources(0);
  swift_allocObject();
  result = sub_100092C9C();
  qword_100131230 = result;
  return result;
}

uint64_t sub_100092C9C()
{
  v1 = v0;
  v2 = sub_1000E9C04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E9BF4();
  __chkstk_darwin(v6);
  v26 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E9824();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000E96A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MTLCreateSystemDefaultDevice();
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v25 = v5;
  v15 = [v13 newCommandQueue];
  if (!v15)
  {
    swift_unknownObjectRelease();
LABEL_7:
    type metadata accessor for Resources(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = v15;
  v23 = v3;
  v24 = v2;
  v28 = &OBJC_PROTOCOL___MTLCommandQueueSPI;
  v17 = swift_dynamicCastObjCProtocolConditional();
  if (v17)
  {
    [v17 setBackgroundGPUPriority:2];
  }

  *(v0 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_device) = v14;
  *(v0 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_commandQueue) = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1000E98E4();
  [v16 setLabel:v18];

  sub_1000E9694();
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_log, v12, v9);
  v19 = sub_100012904(0, &qword_100130A20);
  v22[0] = "ator snapshot layer";
  v22[1] = v19;
  sub_1000E9814();
  v27 = _swiftEmptyArrayStorage;
  sub_1000990A8(&qword_100130A28, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000125FC(&qword_100130A30);
  sub_100028F40(&qword_100130A38, &qword_100130A30);
  sub_1000E9CD4();
  (*(v23 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v20 = sub_1000E9C34();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_snapshotQueue) = v20;
  return v1;
}

uint64_t sub_100093108()
{
  v1 = OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_log;
  v2 = sub_1000E96A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000931D4()
{

  return swift_deallocClassInstance();
}

void sub_100093214(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000E9784();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000125FC(&qword_100131CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_1000E94E4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = &v41 - v14;
  v15 = *(v1 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_sequences);
  if (!*(v15 + 16) || (v17 = *(v2 + 16), v16 = *(v2 + 24), , v18 = sub_10009F208(v17, v16), v20 = v19, , (v20 & 1) == 0))
  {
    v23 = *(v2 + 16);
    v24 = *(v2 + 24);

    goto LABEL_7;
  }

  v21 = *(*(v15 + 56) + 8 * v18);
  v22 = OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_previewStartDate;
  swift_beginAccess();
  sub_1000299EC(v2 + v22, v8, &qword_100131CE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1000047C4(v8, &qword_100131CE0);
    if (v21[2])
    {
      v23 = v21[5];
      v24 = v21[6];

LABEL_7:
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
LABEL_8:
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v25;
      *(a1 + 24) = v26;
      *(a1 + 32) = v27;
      *(a1 + 36) = v28;
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  (*(v10 + 32))(v45, v8, v9);

  sub_1000E94D4();
  sub_1000E9454();
  v30 = v29;
  v31 = *(v10 + 8);
  v31(v13, v9);
  v32 = v21[2];
  v33 = fmod(v30, v32 * 3.0);
  v34 = floor(v33 / 3.0);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = v34;
  if (__OFADD__(v34, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v33 + v35 * -3.0 < 1.0)
  {
    if (v32 > v35)
    {
      v36 = &v21[3 * v35];
      v23 = v36[5];
      v24 = v36[6];

      v31(v45, v9);
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  if (v32 <= v35)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = (v34 + 1) % v32;
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = &v21[3 * v35 + 4];
    v23 = *(v38 + 8);
    v24 = *(v38 + 16);
    v39 = &v21[3 * v37 + 4];
    v25 = *(v39 + 8);
    v26 = *(v39 + 16);

    v40 = v42;
    sub_1000E9774();
    v46 = 0;
    v47 = 1065353216;
    sub_1000E9764();
    (*(v43 + 8))(v40, v44);
    v31(v45, v9);
    v27 = v48;
    v28 = 1;
    goto LABEL_8;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1000936F8()
{

  sub_1000047C4(v0 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_previewStartDate, &qword_100131CE0);

  return swift_deallocClassInstance();
}

uint64_t sub_100093784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000298B0;

  return sub_100088DCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10009384C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100093944;

  return v6(a1);
}

uint64_t sub_100093944()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100093A3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100093B08(v11, 0, 0, 1, a1, a2);
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
    sub_100012898(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100012710(v11);
  return v7;
}

unint64_t sub_100093B08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100093C14(a5, a6);
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
    result = sub_1000E9D94();
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

char *sub_100093C14(uint64_t a1, unint64_t a2)
{
  v3 = sub_100093C60(a1, a2);
  sub_100093D90(&off_100119D08);
  return v3;
}

char *sub_100093C60(uint64_t a1, unint64_t a2)
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

  v6 = sub_100093E7C(v5, 0);
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

  result = sub_1000E9D94();
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
        v10 = sub_1000E99C4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100093E7C(v10, 0);
        result = sub_1000E9D54();
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

uint64_t sub_100093D90(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100093EF0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100093E7C(uint64_t a1, uint64_t a2)
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

  sub_1000125FC(&qword_100131E60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100093EF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100131E60);
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

void sub_100094058()
{
  sub_1000943D8(319, &unk_100131368, type metadata accessor for WallpaperRenderingCoordinator.LookTransitionInfo);
  if (v0 <= 0x3F)
  {
    sub_1000E94E4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100094220()
{
  result = sub_1000E96A4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100094314()
{
  sub_1000943D8(319, &qword_100131B70, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000943D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9C94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_100094438(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100094454(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10009449C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_100094518(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100094568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1000945BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100094600()
{
  result = sub_1000E94E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100094680(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000E9CE4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_1000E9C74(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_10009480C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000E9CE4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1000E9C74(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_100094998(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000E9CE4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_1000E9C74(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 24 * v3;
          v21 = (v19 + 24 * v6);
          if (v3 != v6 || v20 >= v21 + 24)
          {
            v9 = *v21;
            *(v20 + 16) = *(v21 + 2);
            *v20 = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

uint64_t sub_100094B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000E9CE4() + 1) & ~v5;
    do
    {
      sub_1000EA024();

      sub_1000E9974();
      v12 = sub_1000EA064();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 56 * v3;
        v19 = (v17 + 56 * v6);
        if (56 * v3 < (56 * v6) || v18 >= v19 + 56 || v3 != v6)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[2];
          *(v18 + 48) = *(v19 + 6);
          *(v18 + 16) = v10;
          *(v18 + 32) = v11;
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100094D08(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&v34 + 7) = 0;
      *&v34 = 0;
      sub_100098A34(a4, a5, &v33);
      [a2 getBytes:&v34 bytesPerRow:a3 fromRegion:&v33 mipmapLevel:0];
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();

    sub_1000190E4(v9, v8);
    *&v34 = v9;
    *(&v34 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000F2520;
    sub_1000190E4(0, 0xC000000000000000);
    sub_1000E93C4();
    v16 = v34;
    v17 = *(v34 + 16);
    v18 = sub_1000E9214();
    if (!v18)
    {
      result = swift_unknownObjectRelease();
      __break(1u);
      goto LABEL_26;
    }

    v19 = v18;
    v20 = sub_1000E9244();
    v21 = __OFSUB__(v17, v20);
    v22 = v17 - v20;
    if (!v21)
    {
      sub_1000E9234();
      sub_100098A34(a4, a5, &v33);
      [a2 getBytes:v19 + v22 bytesPerRow:a3 fromRegion:&v33 mipmapLevel:0];
      result = swift_unknownObjectRelease_n();
      v23 = *(&v16 + 1) | 0x8000000000000000;
      *a1 = v16;
LABEL_19:
      a1[1] = v23;
      return result;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v10)
  {
    swift_unknownObjectRetain();
    sub_1000190E4(v9, v8);
    *&v34 = v9;
    WORD4(v34) = v8;
    BYTE10(v34) = BYTE2(v8);
    BYTE11(v34) = BYTE3(v8);
    BYTE12(v34) = BYTE4(v8);
    BYTE13(v34) = BYTE5(v8);
    BYTE14(v34) = BYTE6(v8);
    sub_100098A34(a4, a5, &v33);
    [a2 getBytes:&v34 bytesPerRow:a3 fromRegion:&v33 mipmapLevel:0];
    v11 = v34;
    v12 = DWORD2(v34) | ((WORD6(v34) | (BYTE14(v34) << 16)) << 32);
    result = swift_unknownObjectRelease_n();
    *a1 = v11;
    a1[1] = v12;
    return result;
  }

  v24 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  swift_unknownObjectRetain();
  sub_100031E2C(v9, v8);
  sub_1000190E4(v9, v8);
  *a1 = xmmword_1000F2520;
  sub_1000190E4(0, 0xC000000000000000);
  swift_unknownObjectRetain();
  v25 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v25 < v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_1000E9214() && __OFSUB__(v9, sub_1000E9244()))
    {
LABEL_24:
      __break(1u);
    }

    sub_1000E9254();
    swift_allocObject();
    v26 = sub_1000E91F4();

    v24 = v26;
  }

  if (v25 < v9)
  {
    goto LABEL_21;
  }

  result = sub_1000E9214();
  if (result)
  {
    v27 = result;
    v28 = sub_1000E9244();
    v29 = v9 - v28;
    if (!__OFSUB__(v9, v28))
    {
      sub_1000E9234();
      sub_100098A34(a4, a5, &v33);
      [a2 getBytes:v27 + v29 bytesPerRow:a3 fromRegion:&v33 mipmapLevel:0];
      swift_unknownObjectRelease_n();

      v23 = v24 | 0x4000000000000000;
      *a1 = v9;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

vImage_Error sub_100095180(uint64_t *a1, vImagePixelCount a2, vImagePixelCount a3, size_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_1000190E4(v8, v7);
      *&v29 = v8;
      WORD4(v29) = v7;
      BYTE10(v29) = BYTE2(v7);
      BYTE11(v29) = BYTE3(v7);
      BYTE12(v29) = BYTE4(v7);
      BYTE13(v29) = BYTE5(v7);
      BYTE14(v29) = BYTE6(v7);
      if (((a3 | a2) & 0x8000000000000000) == 0)
      {
        dest.data = &v29;
        dest.height = a2;
        dest.width = a3;
        dest.rowBytes = a4;
        result = vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
        v11 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
        *a1 = v29;
        a1[1] = v11;
        return result;
      }

      __break(1u);
      goto LABEL_25;
    }

    v19 = v7 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000190E4(v8, v7);
    *a1 = xmmword_1000F2520;
    sub_1000190E4(0, 0xC000000000000000);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v8 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v21 < v8)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (sub_1000E9214() && __OFSUB__(v8, sub_1000E9244()))
      {
LABEL_32:
        __break(1u);
      }

      sub_1000E9254();
      swift_allocObject();
      v22 = sub_1000E91F4();

      v19 = v22;
      v21 = v8 >> 32;
    }

    if (v21 < v8)
    {
      goto LABEL_27;
    }

    result = sub_1000E9214();
    if (result)
    {
      v23 = result;
      v24 = sub_1000E9244();
      v25 = v8 - v24;
      if (__OFSUB__(v8, v24))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      sub_1000E9234();
      if (((a3 | a2) & 0x8000000000000000) != 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      dest.data = (v25 + v23);
      dest.height = a2;
      dest.width = a3;
      dest.rowBytes = a4;
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0);

      v18 = v19 | 0x4000000000000000;
      *a1 = v8;
LABEL_23:
      a1[1] = v18;
      return result;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (v9 == 2)
  {

    sub_1000190E4(v8, v7);
    *&v29 = v8;
    *(&v29 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000F2520;
    sub_1000190E4(0, 0xC000000000000000);
    sub_1000E93C4();
    v13 = *(v29 + 16);
    result = sub_1000E9214();
    if (result)
    {
      v14 = result;
      v15 = sub_1000E9244();
      v16 = __OFSUB__(v13, v15);
      v17 = v13 - v15;
      if (v16)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_1000E9234();
      if (((a3 | a2) & 0x8000000000000000) != 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      dest.data = (v17 + v14);
      dest.height = a2;
      dest.width = a3;
      dest.rowBytes = a4;
      result = vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
      v18 = *(&v29 + 1) | 0x8000000000000000;
      *a1 = v29;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_34;
  }

  *(&v29 + 7) = 0;
  *&v29 = 0;
  if (((a3 | a2) & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  dest.data = &v29;
  dest.height = a2;
  dest.width = a3;
  dest.rowBytes = a4;
  return vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
}

vImage_Error sub_100095560(uint64_t *a1, vImagePixelCount a2, vImagePixelCount a3, size_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_1000190E4(v8, v7);
      *&v29 = v8;
      WORD4(v29) = v7;
      BYTE10(v29) = BYTE2(v7);
      BYTE11(v29) = BYTE3(v7);
      BYTE12(v29) = BYTE4(v7);
      BYTE13(v29) = BYTE5(v7);
      BYTE14(v29) = BYTE6(v7);
      if (((a3 | a2) & 0x8000000000000000) == 0)
      {
        dest.data = &v29;
        dest.height = a2;
        dest.width = a3;
        dest.rowBytes = a4;
        result = vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0);
        v11 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
        *a1 = v29;
        a1[1] = v11;
        return result;
      }

      __break(1u);
      goto LABEL_25;
    }

    v19 = v7 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000190E4(v8, v7);
    *a1 = xmmword_1000F2520;
    sub_1000190E4(0, 0xC000000000000000);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v8 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v21 < v8)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (sub_1000E9214() && __OFSUB__(v8, sub_1000E9244()))
      {
LABEL_32:
        __break(1u);
      }

      sub_1000E9254();
      swift_allocObject();
      v22 = sub_1000E91F4();

      v19 = v22;
      v21 = v8 >> 32;
    }

    if (v21 < v8)
    {
      goto LABEL_27;
    }

    result = sub_1000E9214();
    if (result)
    {
      v23 = result;
      v24 = sub_1000E9244();
      v25 = v8 - v24;
      if (__OFSUB__(v8, v24))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      sub_1000E9234();
      if (((a3 | a2) & 0x8000000000000000) != 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      dest.data = (v25 + v23);
      dest.height = a2;
      dest.width = a3;
      dest.rowBytes = a4;
      vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0);

      v18 = v19 | 0x4000000000000000;
      *a1 = v8;
LABEL_23:
      a1[1] = v18;
      return result;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (v9 == 2)
  {

    sub_1000190E4(v8, v7);
    *&v29 = v8;
    *(&v29 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000F2520;
    sub_1000190E4(0, 0xC000000000000000);
    sub_1000E93C4();
    v13 = *(v29 + 16);
    result = sub_1000E9214();
    if (result)
    {
      v14 = result;
      v15 = sub_1000E9244();
      v16 = __OFSUB__(v13, v15);
      v17 = v13 - v15;
      if (v16)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_1000E9234();
      if (((a3 | a2) & 0x8000000000000000) != 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      dest.data = (v17 + v14);
      dest.height = a2;
      dest.width = a3;
      dest.rowBytes = a4;
      result = vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0);
      v18 = *(&v29 + 1) | 0x8000000000000000;
      *a1 = v29;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_34;
  }

  *(&v29 + 7) = 0;
  *&v29 = 0;
  if (((a3 | a2) & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  dest.data = &v29;
  dest.height = a2;
  dest.width = a3;
  dest.rowBytes = a4;
  return vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0);
}

uint64_t sub_100095960(uint64_t *a1, vImagePixelCount a2, vImagePixelCount a3, size_t a4, uint64_t a5)
{
  v64 = a5;
  v63 = a4;
  v66 = a2;
  v67 = a3;
  v6 = sub_1000E9134();
  v7 = *(v6 - 8);
  v8 = (__chkstk_darwin)();
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v52 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v20 = *a1;
  v19 = a1[1];
  v21 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v21 != 2)
    {
      *(&v68 + 7) = 0;
      *&v68 = 0;
      if (((v67 | v66) & 0x8000000000000000) == 0)
      {
        dest.data = &v68;
        dest.height = v66;
        dest.width = v67;
        dest.rowBytes = v63;
        vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
        sub_1000E9124();
        v39 = v65;
        v40 = sub_1000E9BD4();
        if (v39)
        {
          return (*(v7 + 8))(v18, v6);
        }

        v42 = v40;
        (*(v7 + 8))(v18, v6);
        return v42;
      }

      goto LABEL_35;
    }

    sub_1000190E4(v20, v19);
    *&v68 = v20;
    *(&v68 + 1) = v19 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000F2520;
    sub_1000190E4(0, 0xC000000000000000);
    sub_1000E93C4();
    v27 = *(&v68 + 1);
    v20 = v68;
    v28 = *(v68 + 16);
    result = sub_1000E9214();
    if (result)
    {
      v29 = result;
      v30 = sub_1000E9244();
      v31 = __OFSUB__(v28, v30);
      v32 = v28 - v30;
      if (v31)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      sub_1000E9234();
      if (((v67 | v66) & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v62 = v6;
      dest.data = (v32 + v29);
      dest.height = v66;
      dest.width = v67;
      dest.rowBytes = v63;
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
      sub_1000E9124();
      v33 = v65;
      v34 = sub_1000E9BD4();
      if (v33)
      {
        result = (*(v7 + 8))(v13, v62);
        v35 = v27 | 0x8000000000000000;
LABEL_31:
        *a1 = v20;
        a1[1] = v35;
        return result;
      }

      v43 = v34;
      (*(v7 + 8))(v13, v62);
      result = v43;
      v44 = v27 | 0x8000000000000000;
LABEL_33:
      *a1 = v20;
      a1[1] = v44;
      return result;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v62 = v6;
  if (v21)
  {
    v36 = v19 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000190E4(v20, v19);
    *a1 = xmmword_1000F2520;
    sub_1000190E4(0, 0xC000000000000000);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v20 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = v20 >> 32;
      v60 = v38 - v20;
      if (v38 < v20)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (sub_1000E9214() && __OFSUB__(v20, sub_1000E9244()))
      {
LABEL_42:
        __break(1u);
      }

      sub_1000E9254();
      swift_allocObject();
      v45 = sub_1000E91F4();

      v36 = v45;
      v38 = v61;
    }

    if (v38 < v20)
    {
      goto LABEL_37;
    }

    result = sub_1000E9214();
    if (result)
    {
      v46 = result;
      v47 = sub_1000E9244();
      v48 = v20 - v47;
      if (__OFSUB__(v20, v47))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      sub_1000E9234();
      if (((v67 | v66) & 0x8000000000000000) != 0)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      dest.data = (v48 + v46);
      dest.height = v66;
      dest.width = v67;
      dest.rowBytes = v63;
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
      sub_1000E9124();
      v49 = v65;
      v50 = sub_1000E9BD4();
      if (v49)
      {
        (*(v7 + 8))(v10, v62);

        v35 = v36 | 0x4000000000000000;
        goto LABEL_31;
      }

      v51 = v50;
      (*(v7 + 8))(v10, v62);

      result = v51;
      v44 = v36 | 0x4000000000000000;
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  v53 = v7;
  v54 = a1;
  v55 = HIBYTE(v20);
  v56 = v19 >> 8;
  v57 = v19 >> 16;
  v58 = v19 >> 24;
  v59 = HIDWORD(v19);
  v60 = v19 >> 40;
  v61 = HIWORD(v19);
  sub_1000190E4(v20, v19);
  LOWORD(v68) = v20;
  BYTE2(v68) = BYTE2(v20);
  BYTE3(v68) = BYTE3(v20);
  BYTE4(v68) = BYTE4(v20);
  BYTE5(v68) = BYTE5(v20);
  BYTE6(v68) = BYTE6(v20);
  BYTE7(v68) = v55;
  BYTE8(v68) = v19;
  BYTE9(v68) = v56;
  BYTE10(v68) = v57;
  BYTE11(v68) = v58;
  BYTE12(v68) = v59;
  BYTE13(v68) = v60;
  BYTE14(v68) = v61;
  if (((v67 | v66) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  dest.data = &v68;
  dest.height = v66;
  dest.width = v67;
  dest.rowBytes = v63;
  vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
  sub_1000E9124();
  v22 = v65;
  v23 = sub_1000E9BD4();
  if (v22)
  {
    result = (*(v53 + 8))(v16, v62);
  }

  else
  {
    v41 = v23;
    (*(v53 + 8))(v16, v62);
    result = v41;
  }

  v25 = DWORD2(v68) | ((WORD6(v68) | (BYTE14(v68) << 16)) << 32);
  v26 = v54;
  *v54 = v68;
  v26[1] = v25;
  return result;
}

uint64_t sub_100096028(void *a1, char a2, void *a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v39 = a1[2];
  if (!v39)
  {
  }

  LOBYTE(v8) = a2;
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = *a3;

  v13 = sub_10009F208(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    a5(v18, v8 & 1);
    v13 = sub_10009F208(v10, v9);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v13 = sub_1000E9FA4();
    __break(1u);
  }

  if (v8)
  {
LABEL_7:
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v13;
  a4();
  v13 = v22;
  if (v19)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_1000125FC(&unk_100131DD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = v10;
  v24[1] = v9;
  *(v23[7] + 8 * v13) = v11;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1000E9D64(30);
    v40._object = 0x80000001000F7820;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1000E99A4(v40);
    sub_1000E9DF4();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    sub_1000E99A4(v41);
    result = sub_1000E9E44();
    __break(1u);
    return result;
  }

  v23[2] = v26;
  if (v39 != 1)
  {
    v8 = a1 + 9;
    v19 = 1;
    while (v19 < a1[2])
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v27 = *a3;

      v28 = sub_10009F208(v10, v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v17 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v17)
      {
        goto LABEL_23;
      }

      a4 = v29;
      if (v27[3] < v32)
      {
        a5(v32, 1);
        v28 = sub_10009F208(v10, v9);
        if ((a4 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a4)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v10;
      v35[1] = v9;
      *(v34[7] + 8 * v28) = v11;
      v36 = v34[2];
      v17 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v17)
      {
        goto LABEL_24;
      }

      ++v19;
      v34[2] = v37;
      v8 += 3;
      if (v39 == v19)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1000963D8(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v29 = *(a1 + 16);
  if (!v29)
  {
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1000E9FA4();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v3 + v6 + 48);
    v37 = *(v3 + v6 + 32);
    v38 = v7;
    v8 = *(v3 + v6 + 16);
    v36[0] = *(v3 + v6);
    v36[1] = v8;
    v9 = *(v3 + v6 + 64);
    v39 = v9;
    v10 = v38;
    v32 = v37;
    v33 = *(&v8 + 1);
    v30 = *(&v37 + 1);
    v31 = v8;
    v11 = v36[0];
    sub_1000299EC(v36, v35, &qword_100132950);
    if (!*(&v11 + 1))
    {
    }

    v36[0] = v11;
    v12 = *a3;
    v14 = sub_10009F208(v11, *(&v11 + 1));
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_21;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1000B58BC();
      if (v18)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v21[6] + 16 * v14) = v11;
    v22 = v21[7] + 56 * v14;
    *v22 = v31;
    *(v22 + 8) = v33;
    *(v22 + 16) = v32;
    *(v22 + 24) = v30;
    *(v22 + 32) = v10;
    *(v22 + 48) = v9;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_22;
    }

    ++v5;
    v21[2] = v25;
    v6 += 72;
    a2 = 1;
    v3 = a1;
    if (v29 == v5)
    {
    }
  }

  sub_1000B18B8(v17, a2 & 1);
  v19 = sub_10009F208(v11, *(&v11 + 1));
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_23;
  }

  v14 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v26 = swift_allocError();
  swift_willThrow();

  v40 = v26;
  swift_errorRetain();
  sub_1000125FC(&unk_100131DD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_24:
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_1000E9D64(30);
  v41._object = 0x80000001000F7820;
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000E99A4(v41);
  sub_1000E9DF4();
  v42._countAndFlagsBits = 39;
  v42._object = 0xE100000000000000;
  sub_1000E99A4(v42);
  result = sub_1000E9E44();
  __break(1u);
  return result;
}

void (*sub_100096748(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100096BD0(v7);
  v7[9] = sub_100096854(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000967F4;
}

void sub_1000967F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100096854(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xC8uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[22] = a3;
  v10[23] = v4;
  v10[21] = a2;
  v12 = *v4;
  v13 = sub_10009F208(a2, a3);
  *(v11 + 49) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1000B58BC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000B18B8(v18, a4 & 1);
    v13 = sub_10009F208(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1000E9FA4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[24] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 56 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 32);
    v28 = *(v23 + 48);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v28 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
  }

  v11[14] = v24;
  v11[15] = v25;
  *(v11 + 8) = v26;
  *(v11 + 9) = v27;
  *(v11 + 160) = v28;
  return sub_1000969D4;
}

void sub_1000969D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v6 = *(*a1 + 136);
  v7 = *(*a1 + 144);
  v8 = *(*a1 + 152);
  v9 = *(*a1 + 160);
  v10 = *(*a1 + 49);
  if ((a2 & 1) == 0)
  {
    if (!v3)
    {
      if ((*(*a1 + 49) & 1) == 0)
      {
        goto LABEL_15;
      }

      v27 = *(v2 + 192);
      v28 = **(v2 + 184);
      v29 = *(*a1 + 120);
      v15 = *(*a1 + 128);
      v17 = *(*a1 + 136);
      v30 = *(*a1 + 144);
      v31 = *(*a1 + 152);
      sub_10009881C(*(v28 + 48) + 16 * v27);
      sub_100094B30(v27, v28);
      goto LABEL_14;
    }

    v11 = *(v2 + 192);
    v12 = **(v2 + 184);
    if ((v10 & 1) == 0)
    {
      v13 = *(v2 + 168);
      v32 = *(v2 + 176);
      *(v2 + 56) = v3;
      *(v2 + 64) = v5;
      *(v2 + 72) = v4;
      *(v2 + 80) = v6;
      *(v2 + 88) = v7;
      *(v2 + 96) = v8;
      *(v2 + 104) = v9;
      v17 = v6;
      v18 = v2 + 56;
      v15 = v4;
      v16 = v32;
      goto LABEL_13;
    }

LABEL_7:
    v19 = v12[7] + 56 * v11;
    *v19 = v3;
    *(v19 + 8) = v5;
    *(v19 + 16) = v4;
    *(v19 + 24) = v6;
    *(v19 + 32) = v7;
    *(v19 + 40) = v8;
    *(v19 + 48) = v9;
    goto LABEL_15;
  }

  if (v3)
  {
    v11 = *(v2 + 192);
    v12 = **(v2 + 184);
    if ((v10 & 1) == 0)
    {
      v13 = *(v2 + 168);
      v14 = *(v2 + 176);
      *v2 = v3;
      *(v2 + 8) = v5;
      *(v2 + 16) = v4;
      *(v2 + 24) = v6;
      *(v2 + 32) = v7;
      *(v2 + 40) = v8;
      *(v2 + 48) = v9;
      v15 = v4;
      v16 = v14;
      v17 = v6;
      v18 = v2;
LABEL_13:
      v29 = v5;
      v30 = v7;
      v31 = v8;
      sub_1000B5560(v11, v13, v16, v18, v12);

LABEL_14:
      v8 = v31;
      v7 = v30;
      v6 = v17;
      v4 = v15;
      v5 = v29;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (*(*a1 + 49))
  {
    v20 = *(v2 + 192);
    v21 = **(v2 + 184);
    v22 = *(*a1 + 120);
    v23 = *(*a1 + 128);
    v24 = *(*a1 + 136);
    v25 = *(*a1 + 144);
    v26 = *(*a1 + 152);
    sub_10009881C(*(v21 + 48) + 16 * v20);
    sub_100094B30(v20, v21);
    v8 = v26;
    v7 = v25;
    v6 = v24;
    v4 = v23;
    v5 = v22;
  }

LABEL_15:
  v33 = *(v2 + 112);
  v34 = *(v2 + 120);
  v35 = *(v2 + 128);
  v36 = *(v2 + 136);
  v37 = *(v2 + 144);
  v38 = *(v2 + 152);
  sub_1000987A8(v3, v5, v4, v6, v7, v8);
  sub_100098734(v33, v34, v35, v36, v37, v38);

  free(v2);
}

uint64_t (*sub_100096BD0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100096BF8;
}

uint64_t sub_100096C04(unsigned __int8 a1, uint64_t a2)
{
  v12[3] = sub_1000125FC(&qword_100131D08);
  v12[4] = sub_100028F40(&unk_100131D10, &qword_100131D08);
  v12[0] = a2;
  v4 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = -16.0;
      }
    }

    else
    {
      v8 = 18.0;
      if (a1 == 4)
      {
        v7 = 1;
        v8 = 45.0;
        goto LABEL_16;
      }
    }

    v7 = 0;
  }

  else
  {
    v5 = -45.0;
    v6 = 0.0;
    if (a1 != 2)
    {
      v6 = 18.0;
    }

    if (a1)
    {
      v5 = -16.0;
    }

    v7 = 1;
    if (v4 <= 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }
  }

LABEL_16:
  sub_100028EC4(v12, v11);

  v9 = sub_10000AB5C(v7, v11, v8);
  if (v11[3])
  {
    sub_100012710(v11);
  }

  sub_100012710(v12);
  return v9;
}

uint64_t sub_100096D60(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100096E54;

  return v5(v2 + 32);
}

uint64_t sub_100096E54()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100096F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E94E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  if (!*(a1 + 16))
  {
    goto LABEL_62;
  }

  sub_1000E94D4();
  v11 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lastSolarCheckLogDate;
  swift_beginAccess();
  (*(v5 + 16))(v7, a2 + v11, v4);
  sub_1000E9454();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (v13 > 1800.0)
  {
    swift_beginAccess();
    (*(v5 + 24))(a2 + v11, v10, v4);
    swift_endAccess();
  }

  if (qword_10012F538 != -1)
  {
    swift_once();
  }

  v15 = sub_100009580();

  if (v15 == 8)
  {
    v15 = sub_100027720();
    if (v13 > 1800.0)
    {
      if (qword_10012F678 != -1)
      {
        swift_once();
      }

      v16 = sub_1000E96A4();
      sub_100007488(v16, qword_100131200);
      v17 = sub_1000E9684();
      v18 = sub_1000E9BB4();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_58;
      }

      v49 = v18;
      v19 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50[0] = v48;
      v20 = 0xED0000746867696ELL;
      v21 = 0xE600000000000000;
      *v19 = 136446210;
      v22 = 0x7465736E7573;
      if (v15 != 6)
      {
        v22 = 1802728804;
        v21 = 0xE400000000000000;
      }

      v23 = 0x6F6F4E72616C6F73;
      v24 = 0xE90000000000006ELL;
      if (v15 != 4)
      {
        v23 = 0x657466416574616CLL;
        v24 = 0xED00006E6F6F6E72;
      }

      if (v15 <= 5u)
      {
        v22 = v23;
        v21 = v24;
      }

      v25 = 0xE700000000000000;
      v26 = 0x657369726E7573;
      if (v15 != 2)
      {
        v26 = 0x696E726F4D64696DLL;
        v25 = 0xEA0000000000676ELL;
      }

      v27 = 1853317476;
      if (v15)
      {
        v20 = 0xE400000000000000;
      }

      else
      {
        v27 = 0x64694D72616C6F73;
      }

      if (v15 > 1u)
      {
        v20 = v25;
      }

      else
      {
        v26 = v27;
      }

      if (v15 <= 3u)
      {
        v28 = v26;
      }

      else
      {
        v28 = v22;
      }

      if (v15 <= 3u)
      {
        v29 = v20;
      }

      else
      {
        v29 = v21;
      }

      v30 = sub_100093A3C(v28, v29, v50);

      *(v19 + 4) = v30;
      v31 = "no defaults event to fall back to, using time: %{public}s";
LABEL_57:
      _os_log_impl(&_mh_execute_header, v17, v49, v31, v19, 0xCu);
      sub_100012710(v48);

LABEL_58:
    }
  }

  else if (v13 > 1800.0)
  {
    if (qword_10012F678 != -1)
    {
      swift_once();
    }

    v32 = sub_1000E96A4();
    sub_100007488(v32, qword_100131200);
    v17 = sub_1000E9684();
    v33 = sub_1000E9BB4();
    if (!os_log_type_enabled(v17, v33))
    {
      goto LABEL_58;
    }

    v49 = v33;
    v19 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50[0] = v48;
    v34 = 0xED0000746867696ELL;
    v35 = 0xE600000000000000;
    *v19 = 136446210;
    v36 = 0x7465736E7573;
    if (v15 != 6)
    {
      v36 = 1802728804;
      v35 = 0xE400000000000000;
    }

    v37 = 0x6F6F4E72616C6F73;
    v38 = 0xE90000000000006ELL;
    if (v15 != 4)
    {
      v37 = 0x657466416574616CLL;
      v38 = 0xED00006E6F6F6E72;
    }

    if (v15 <= 5u)
    {
      v36 = v37;
      v35 = v38;
    }

    v39 = 0xE700000000000000;
    v40 = 0x657369726E7573;
    if (v15 != 2)
    {
      v40 = 0x696E726F4D64696DLL;
      v39 = 0xEA0000000000676ELL;
    }

    v41 = 1853317476;
    if (v15)
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v41 = 0x64694D72616C6F73;
    }

    if (v15 > 1u)
    {
      v34 = v39;
    }

    else
    {
      v40 = v41;
    }

    if (v15 <= 3u)
    {
      v42 = v40;
    }

    else
    {
      v42 = v36;
    }

    if (v15 <= 3u)
    {
      v43 = v34;
    }

    else
    {
      v43 = v35;
    }

    v44 = sub_100093A3C(v42, v43, v50);

    *(v19 + 4) = v44;
    v31 = "got accurate solar event: %{public}s";
    goto LABEL_57;
  }

  v45 = sub_100096C04(v15, a1);
  if (v45 != 8)
  {
    v46 = v45;
    v14(v10, v4);
    return v46;
  }

  __break(1u);
LABEL_62:
  result = sub_1000E9E44();
  __break(1u);
  return result;
}

double sub_100097614@<D0>(void *a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = [a1 traitCollection];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 userInterfaceStyle];

    v11 = v10 == 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 deviceOrientation];
  v68 = 0;
  [a1 floatingObscurableBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(a2 + 16);
  *(v69 + 1) = *a2;
  *(&v69[1] + 1) = v21;
  *(&v69[1] + 14) = *(a2 + 29);
  [a1 deviceMotionRotation];
  v22 = *&v52[24];
  v24 = *&v52[8];
  v23 = *&v52[16];
  v25 = *v52;
  v26 = sub_1000E9C44();
  *&v41[16] = v23;
  *&v41[24] = v22;
  *v41 = v25;
  *&v41[8] = v24;
  sub_100098AD4(v41, v26, v52);
  v38 = *v52;
  v39 = *&v52[16];
  if (a4)
  {
    swift_unknownObjectRelease();
    v27 = 0.0;
  }

  else
  {
    [a1 salientContentRectangle];
    MinY = CGRectGetMinY(v70);
    swift_unknownObjectRelease();
    v27 = MinY / a3;
  }

  *&v41[15] = v69[0];
  *&v41[31] = v69[1];
  *v41 = 0;
  *&v41[8] = 1065353216;
  v41[12] = v11;
  *&v41[13] = 0;
  *&v41[45] = *(&v69[1] + 14);
  *&v41[56] = v12;
  *v52 = 0;
  *&v52[45] = *(&v69[1] + 14);
  *&v52[31] = v69[1];
  v42 = 0u;
  v43 = 0u;
  LOBYTE(v44) = v68;
  *(&v44 + 1) = v14;
  *&v45 = v16;
  *(&v45 + 1) = v18;
  *&v46 = v20;
  v47 = v38;
  *&v48 = v39;
  *&v49 = v25;
  *(&v49 + 1) = v24;
  *&v50 = v23;
  *(&v50 + 1) = v22;
  v51 = v27;
  *&v52[8] = 1065353216;
  v52[12] = v11;
  *&v52[13] = 0;
  *&v52[15] = v69[0];
  v53 = v12;
  v54 = 0u;
  v55 = 0u;
  v56 = v68;
  v57 = v14;
  v58 = v16;
  v59 = v18;
  v60 = v20;
  v61 = v38;
  v62 = v39;
  v66 = v22;
  v65 = v23;
  v64 = v24;
  v63 = v25;
  v67 = v27;
  sub_100004CBC(v41, v40);
  sub_100004D30(v52);
  v29 = v49;
  *(a5 + 160) = v48;
  *(a5 + 176) = v29;
  *(a5 + 192) = v50;
  *(a5 + 208) = v51;
  v30 = v45;
  *(a5 + 96) = v44;
  *(a5 + 112) = v30;
  v31 = v47;
  *(a5 + 128) = v46;
  *(a5 + 144) = v31;
  v32 = *&v41[48];
  *(a5 + 32) = *&v41[32];
  *(a5 + 48) = v32;
  v33 = v43;
  *(a5 + 64) = v42;
  *(a5 + 80) = v33;
  result = *v41;
  v35 = *&v41[16];
  *a5 = *v41;
  *(a5 + 16) = v35;
  return result;
}

unint64_t sub_1000978B4@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 == 3)
  {
    v9 = a2;
    v10 = a3;
    v28 = 0;
    v29 = 0;
    v27 = 0;
  }

  else if (a1 == 1)
  {
    v7 = [objc_allocWithZone(CALayer) init];
    [v7 setAnchorPoint:{0.0, 0.0}];
    if (qword_10012F550 != -1)
    {
      swift_once();
    }

    sub_1000125FC(&unk_100130D20);
    isa = sub_1000E9894().super.isa;
    [v7 setActions:isa];

    v31._countAndFlagsBits = a2;
    v31._object = a3;
    sub_1000E99A4(v31);
    v9 = a2;
    v10 = a3;
    v11 = sub_1000E98E4();

    v28 = v7;
    [v7 setName:v11];

    v29 = 0;
    v27 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(CALayer) init];
    [v12 setAnchorPoint:{0.0, 0.0}];
    if (qword_10012F550 != -1)
    {
      swift_once();
    }

    sub_1000125FC(&unk_100130D20);
    v13 = sub_1000E9894().super.isa;
    [v12 setActions:v13];

    v14 = a2;
    v32._countAndFlagsBits = a2;
    v10 = a3;
    v32._object = a3;
    sub_1000E99A4(v32);
    v15 = sub_1000E98E4();

    v29 = v12;
    [v12 setName:v15];

    v16 = [objc_allocWithZone(CALayer) init];
    [v16 setAnchorPoint:{0.0, 0.0}];
    v17 = sub_1000E9894().super.isa;
    [v16 setActions:v17];

    v9 = v14;
    v33._countAndFlagsBits = v14;
    v33._object = a3;
    sub_1000E99A4(v33);
    v18 = sub_1000E98E4();

    v27 = v16;
    [v16 setName:v18];

    v28 = 0;
  }

  v19 = [objc_allocWithZone(UIView) init];
  v20 = [v19 layer];
  v34._countAndFlagsBits = v9;
  v34._object = v10;
  sub_1000E99A4(v34);
  v21 = sub_1000E98E4();

  [v20 setName:v21];

  v22 = [objc_allocWithZone(CALayer) init];
  v35._countAndFlagsBits = v9;
  v35._object = v10;
  sub_1000E99A4(v35);

  v23 = sub_1000E98E4();

  [v22 setName:v23];

  [v22 setAnchorPoint:{0.0, 0.0}];
  if (qword_10012F550 != -1)
  {
    swift_once();
  }

  sub_1000125FC(&unk_100130D20);
  v24 = sub_1000E9894().super.isa;
  [v22 setActions:v24];

  result = sub_1000A0540(_swiftEmptyArrayStorage);
  *a4 = v22;
  *(a4 + 8) = v29;
  *(a4 + 16) = v19;
  *(a4 + 24) = result;
  *(a4 + 32) = v28;
  *(a4 + 40) = v27;
  *(a4 + 48) = a1;
  return result;
}

uint64_t sub_100097E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_previewStartDate;
  v7 = sub_1000E94E4();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = *(a1 + 16);
  if (!v8)
  {
    v56 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v9 = 0;
  v10 = a1 + 40;
  v55 = a1 + 40;
  v56 = _swiftEmptyArrayStorage;
  do
  {
    v11 = (v10 + 16 * v9);
    v12 = v9;
    while (1)
    {
      if (v12 >= v8)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_47;
      }

      if (*(a2 + 16))
      {
        break;
      }

LABEL_4:
      ++v12;
      v11 += 2;
      if (v9 == v8)
      {
        goto LABEL_42;
      }
    }

    v13 = *(v11 - 1);
    v14 = *v11;

    v15 = sub_10009F208(v13, v14);
    if ((v16 & 1) == 0)
    {

      goto LABEL_4;
    }

    v54 = v13;
    v17 = *(*(a2 + 56) + 8 * v15);

    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v61 = v17;
    do
    {
      if (*(v17 + 16))
      {
        v23 = *(&off_10011A060 + v18 + 32);
        sub_10009F284(v23);
        if (v24)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64[0] = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000AA3E8(0, v19[2] + 1, 1);
            v19 = v64[0];
          }

          v21 = v19[2];
          v20 = v19[3];
          v22 = v19;
          if (v21 >= v20 >> 1)
          {
            sub_1000AA3E8((v20 > 1), v21 + 1, 1);
            v22 = v64[0];
          }

          v22[2] = v21 + 1;
          *(v22 + v21 + 32) = v23;
          v17 = v61;
          v19 = v22;
        }
      }

      ++v18;
    }

    while (v18 != 8);
    v60 = v19;
    v64[3] = sub_1000125FC(&qword_100131D08);
    v64[4] = sub_100028F40(&unk_100131D10, &qword_100131D08);
    v64[0] = v17;
    sub_100028EC4(v64, v62);

    v26 = sub_10000AB5C(1, v62, 45.0);
    if (v63)
    {
      sub_100012710(v62);
    }

    sub_100012710(v64);
    if (v26 == 8)
    {
      goto LABEL_54;
    }

    v27 = v26;
    v28 = v60;
    v59 = sub_1000259F8(v27, v60);
    if (v29)
    {
      goto LABEL_53;
    }

    v30 = *(v60 + 16);
    if (v30)
    {
      v52 = a2;
      v53 = v3;
      v64[0] = _swiftEmptyArrayStorage;
      sub_1000AA3A8(0, v30, 0);
      v31 = 0;
      v32 = v64[0];
      v58 = v14;
      v57 = v30;
      while (!__OFADD__(v59, v31))
      {
        v33 = (v59 + v31) % v30;
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v33 >= *(v28 + 16))
        {
          goto LABEL_50;
        }

        if (!*(v17 + 16))
        {
          goto LABEL_51;
        }

        v34 = *(v60 + 32 + v33);
        v35 = sub_10009F284(v34);
        if ((v36 & 1) == 0)
        {
          goto LABEL_52;
        }

        v37 = v9;
        v38 = v8;
        v39 = (*(v17 + 56) + 16 * v35);
        v41 = *v39;
        v40 = v39[1];
        v64[0] = v32;
        v43 = v32[2];
        v42 = v32[3];

        if (v43 >= v42 >> 1)
        {
          sub_1000AA3A8((v42 > 1), v43 + 1, 1);
          v32 = v64[0];
        }

        v32[2] = v43 + 1;
        v44 = &v32[3 * v43];
        *(v44 + 32) = v34;
        ++v31;
        v44[5] = v41;
        v44[6] = v40;
        v30 = v57;
        v8 = v38;
        v9 = v37;
        v14 = v58;
        v28 = v60;
        v17 = v61;
        if (v57 == v31)
        {

          a2 = v52;
          v3 = v53;
          goto LABEL_35;
        }
      }

      goto LABEL_48;
    }

    v32 = _swiftEmptyArrayStorage;
LABEL_35:
    v45 = sub_10008808C(v32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1000A3438(0, v56[2] + 1, 1, v56);
    }

    v47 = v56[2];
    v46 = v56[3];
    v48 = v54;
    if (v47 >= v46 >> 1)
    {
      v56 = sub_1000A3438((v46 > 1), v47 + 1, 1, v56);
      v48 = v54;
    }

    v56[2] = v47 + 1;
    v49 = &v56[3 * v47];
    v49[4] = v48;
    v49[5] = v14;
    v49[6] = v45;
    v10 = v55;
  }

  while (v9 != v8);
LABEL_42:

  if (v56[2])
  {
    sub_1000125FC(&unk_100133170);
    v50 = sub_1000E9EA4();
  }

  else
  {
    v50 = &_swiftEmptyDictionarySingleton;
  }

  v64[0] = v50;
  sub_100096028(v56, 1, v64, sub_1000B5734, sub_1000B15F0);
  *(v3 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_sequences) = v64[0];
  return v3;
}

uint64_t sub_100098370(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(*(a1 + 72) + 24))(*(a1 + 64)) != 1)
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v7 = sub_10009F208(a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a2 + 56) + 56 * v7 + 32);
  if (!v9)
  {
    return 0;
  }

  v10 = qword_10012F680;
  v11 = *(*(a2 + 56) + 56 * v7 + 32);
  v12 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E96A4();
  sub_100007488(v13, qword_100131218);

  v14 = sub_1000E9684();
  v15 = sub_1000E9B94();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100093A3C(a3, a4, &v19);
    _os_log_impl(&_mh_execute_header, v14, v15, "setting floating layer resource to background layer %s", v16, 0xCu);
    sub_100012710(v17);
  }

  return v11;
}

id sub_100098538(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  else
  {
    v13 = a6;
    v14 = a1;
    v15 = a2;
    v16 = a3;

    return a5;
  }
}

void sub_1000985B8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  else
  {
  }
}

uint64_t sub_10009864C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100098664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return _objc_release_x2();
  }

  return result;
}

uint64_t sub_100098670()
{

  return _swift_deallocObject(v0, 72, 7);
}

id sub_10009870C(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

void sub_100098720(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_100098734(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a1)
  {
  }
}

id sub_1000987A8(id result, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (result)
  {
    v8 = result;
    v9 = a6;
    v10 = v8;
    v11 = a2;
    v12 = a3;

    return a5;
  }

  return result;
}

unint64_t sub_100098870()
{
  result = qword_100131D40;
  if (!qword_100131D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D40);
  }

  return result;
}

unint64_t sub_1000988C4(_BYTE *a1, _BYTE *a2)
{
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1000AF860(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_100098984(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000988C4(a1, &a1[a2]);
  }

  sub_1000E9254();
  swift_allocObject();
  sub_1000E9204();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1000E93E4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100098A34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

uint64_t sub_100098A50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE4(a5) != 255)
  {
    return sub_1000127B0(result, a2, a3, a4, a5, BYTE4(a5) & 1);
  }

  return result;
}

uint64_t sub_100098A68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE4(a5) != 255)
  {
    return sub_1000073F4(result, a2, a3, a4, a5, BYTE4(a5) & 1);
  }

  return result;
}

void sub_100098AD4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  _Q1 = *a1;
  if (a2 == 2)
  {
    v6 = *a1;
    _Q1.i64[0] = *(a1 + 16);
  }

  else if (a2 == 1)
  {
    v6 = vextq_s8(_Q1, *(a1 + 16), 8uLL);
  }

  else
  {
    v6 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v7 = *(a1 + 24);
  v25 = v6;
  _D9 = v6.f64[1];
  _V4.D[1] = v7;
  __asm { FMLA            D0, D1, V4.D[1] }

  v26 = *_Q1.i64;
  *&v15 = atan2(_D0 + _D0, (vmulq_f64(v6, v6).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v24 = v15;
  v16 = v7 * v25.f64[0] - _D9 * v26 + v7 * v25.f64[0] - _D9 * v26;
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  if (v16 < -1.0)
  {
    v16 = -1.0;
  }

  v23 = asin(v16);
  _V2.D[1] = v25.f64[1];
  _V4.D[1] = v7;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v21 = atan2f(*&_D0, *&_D1);
  if (a2 == 2)
  {
    *v22.i64 = v23;
    v22.i64[1] = v21;
    v21 = v24;
  }

  else if (a2 == 1)
  {
    v22.i64[0] = v24;
    *&v22.i64[1] = v23;
  }

  else
  {
    v22 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v21 = 0x7FF8000000000000;
  }

  *a3 = v22;
  *(a3 + 16) = v21;
  *(a3 + 32) = a2;
}

void sub_100098C88(void *a1, char a2, void *a3, char a4)
{
  if (a2 != -1)
  {

    sub_100098720(a3, a4);
  }
}

uint64_t sub_100098CD8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  if (qword_10012F738 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E96A4();
  sub_100007488(v9, qword_10013DD70);

  v10 = sub_1000E9684();
  v11 = sub_1000E9BB4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_100093A3C(a2, a3, &v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "ContinuousRenderingToken “%{public}s“ init", v12, 0xCu);
    sub_100012710(v13);
  }

  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  *(a4 + 24) = a5;
  swift_unknownObjectWeakAssign();
  *(a4 + 48) = 0;
  return a4;
}

uint64_t sub_100098E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WallpaperRenderingCoordinator.LookTransitionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100098ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WallpaperRenderingCoordinator.LookTransitionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100098F30(uint64_t a1)
{
  v2 = type metadata accessor for WallpaperRenderingCoordinator.LookTransitionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100098F8C()
{
  result = qword_100131D90;
  if (!qword_100131D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D90);
  }

  return result;
}

double sub_100099010(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1000F2530;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_100099040(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000125FC(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000990A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000990F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029AC4;

  return sub_100096D60(a1, v4);
}

uint64_t sub_1000991A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000298B0;

  return sub_100096D60(a1, v4);
}

uint64_t sub_100099268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029AC4;

  return sub_10009384C(a1, v4);
}

uint64_t sub_10009933C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100099350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100099398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 sub_1000993F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100099414(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009945C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000994C4()
{
  result = qword_100131E68;
  if (!qword_100131E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E68);
  }

  return result;
}

uint64_t sub_100099518(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100122050;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for MercuryFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MercuryFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100099658()
{
  result = qword_100131E70;
  if (!qword_100131E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E70);
  }

  return result;
}

Swift::Int sub_1000996AC()
{
  sub_1000EA024();
  sub_1000EA034(0);
  return sub_1000EA064();
}

Swift::Int sub_100099718()
{
  sub_1000EA024();
  sub_1000EA034(0);
  return sub_1000EA064();
}

unint64_t sub_100099794()
{
  result = qword_100131E78;
  if (!qword_100131E78)
  {
    sub_100019048(&qword_100131E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E78);
  }

  return result;
}

uint64_t sub_1000997F8()
{
  v0 = sub_1000E9514();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E98D4();
  __chkstk_darwin(v1 - 8);
  sub_1000E98C4();
  sub_1000E9504();
  return sub_1000E9934();
}

Swift::Int sub_1000999FC()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_100099AAC()
{
  sub_1000E9974();
}

Swift::Int sub_100099B48()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_100099BF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100099E60(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100099C24(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6B63616C62;
  v4 = 0xE600000000000000;
  v5 = 0x65727574616ELL;
  if (*v1 != 2)
  {
    v5 = 1702063986;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6574696877;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100099CA4()
{
  result = qword_100131E88;
  if (!qword_100131E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E88);
  }

  return result;
}

uint64_t sub_100099CF8()
{
  v0 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_deviceEnclosureColor();

  if (!v1)
  {
    return 3;
  }

  v3 = sub_1000E99B4();
  v4 = v2;
  if (v3 == 49 && v2 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  else if (v3 == 50 && v4 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  else if (v3 == 52 && v4 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 3;
  }

  else if (v3 == 53 && v4 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100099E60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10011F740;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100099EC0()
{
  result = qword_100131E90;
  if (!qword_100131E90)
  {
    sub_100019048(&qword_100131E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E90);
  }

  return result;
}

uint64_t sub_100099F24()
{
  v0 = sub_1000E9514();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E98D4();
  __chkstk_darwin(v1 - 8);
  sub_1000E98C4();
  sub_1000E9504();
  return sub_1000E9934();
}

Swift::Int sub_10009A1A4()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_10009A26C()
{
  sub_1000E9974();
}

Swift::Int sub_10009A320()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_10009A3E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009A748(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10009A414(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6B63616C62;
  v5 = 0xE400000000000000;
  v6 = 1802398064;
  v7 = 0xE500000000000000;
  v8 = 0x6E65657267;
  if (v2 != 3)
  {
    v8 = 1702194274;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574696877;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10009A4AC()
{
  result = qword_100131EA0;
  if (!qword_100131EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131EA0);
  }

  return result;
}

uint64_t sub_10009A500()
{
  v0 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_deviceEnclosureColor();

  if (!v1)
  {
    if (qword_10012F778 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E96A4();
    sub_100007488(v6, qword_10013DE30);
    v7 = sub_1000E9684();
    v8 = sub_1000E9B94();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No enclosure color found for current MobileGestalt", v9, 2u);
    }

    return 4;
  }

  v3 = sub_1000E99B4();
  v4 = v2;
  if (v3 == 49 && v2 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  if (v3 == 50 && v4 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  if (v3 == 52 && v4 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 2;
  }

  if ((v3 != 14385 || v4 != 0xE200000000000000) && (sub_1000E9F74() & 1) == 0)
  {
    if (v3 != 57 || v4 != 0xE100000000000000)
    {
      sub_1000E9F74();
    }

    return 4;
  }

  return 3;
}

uint64_t sub_10009A748(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10011A088;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10009A794()
{
  result = qword_100131088;
  if (!qword_100131088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100131088);
  }

  return result;
}

uint64_t sub_10009A7E0()
{
  sub_1000AB384(&off_10011B310);
  v351 = v0;
  type metadata accessor for ToriLight();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 257;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  v337 = (v1 + 64);
  *(v1 + 16) = 2;
  *(v1 + 32) = v351;
  swift_beginAccess();
  *(v1 + 48) = 1;
  swift_beginAccess();
  *(v1 + 52) = 1065353216;
  swift_beginAccess();
  *(v1 + 56) = 0;
  swift_beginAccess();
  v308 = v1;
  *(v1 + 57) = 1;
  sub_1000AB384(&off_10011B340);
  v352 = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 52) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  *(v3 + 16) = 2;
  *(v3 + 32) = v352;
  swift_beginAccess();
  *(v3 + 48) = 1;
  swift_beginAccess();
  *(v3 + 52) = 1065353216;
  swift_beginAccess();
  *(v3 + 56) = 0;
  swift_beginAccess();
  v307 = v3;
  *(v3 + 57) = 1;
  sub_1000AB384(&off_10011B370);
  v353 = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = 257;
  *(v5 + 64) = _swiftEmptyArrayStorage;
  v334 = (v5 + 64);
  *(v5 + 16) = 2;
  *(v5 + 32) = v353;
  swift_beginAccess();
  *(v5 + 48) = 1;
  swift_beginAccess();
  *(v5 + 52) = 1065353216;
  swift_beginAccess();
  *(v5 + 56) = 1;
  swift_beginAccess();
  v306 = v5;
  *(v5 + 57) = 1;
  sub_1000AB384(&off_10011B3A0);
  v354 = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  *(v7 + 52) = 0;
  *(v7 + 56) = 257;
  *(v7 + 64) = _swiftEmptyArrayStorage;
  v342 = (v7 + 64);
  *(v7 + 16) = 2;
  *(v7 + 32) = v354;
  swift_beginAccess();
  *(v7 + 48) = 1;
  swift_beginAccess();
  *(v7 + 52) = 1065353216;
  swift_beginAccess();
  *(v7 + 56) = 1;
  swift_beginAccess();
  v305 = v7;
  *(v7 + 57) = 1;
  sub_1000AB384(&off_10011B3D0);
  v355 = v8;
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 52) = 0;
  *(v9 + 56) = 257;
  *(v9 + 64) = _swiftEmptyArrayStorage;
  v292 = (v9 + 64);
  *(v9 + 16) = 2;
  *(v9 + 32) = v355;
  swift_beginAccess();
  *(v9 + 48) = 1;
  swift_beginAccess();
  *(v9 + 52) = 1065353216;
  swift_beginAccess();
  *(v9 + 56) = 0;
  swift_beginAccess();
  v304 = v9;
  *(v9 + 57) = 1;
  sub_1000AB384(&off_10011B400);
  v356 = v10;
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = 257;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  v336 = (v11 + 64);
  *(v11 + 16) = 2;
  *(v11 + 32) = v356;
  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 52) = 1065353216;
  swift_beginAccess();
  *(v11 + 56) = 1;
  swift_beginAccess();
  v303 = v11;
  *(v11 + 57) = 1;
  sub_1000AB384(&off_10011B430);
  v357 = v12;
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 52) = 0;
  *(v13 + 56) = 257;
  *(v13 + 64) = _swiftEmptyArrayStorage;
  v346 = (v13 + 64);
  *(v13 + 16) = 2;
  *(v13 + 32) = v357;
  swift_beginAccess();
  *(v13 + 48) = 1;
  swift_beginAccess();
  *(v13 + 52) = 1065353216;
  swift_beginAccess();
  *(v13 + 56) = 1;
  swift_beginAccess();
  *(v13 + 57) = 1;
  sub_1000AB384(&off_10011B460);
  v332 = v14;
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 52) = 0;
  *(v15 + 56) = 257;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  v358 = (v15 + 64);
  *(v15 + 16) = 2;
  *(v15 + 32) = v332;
  swift_beginAccess();
  *(v15 + 48) = 1;
  swift_beginAccess();
  *(v15 + 52) = 1065353216;
  swift_beginAccess();
  *(v15 + 56) = 1;
  swift_beginAccess();
  v302 = v15;
  *(v15 + 57) = 1;
  sub_1000AB384(&off_10011B490);
  v310 = v16;
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 52) = 0;
  *(v17 + 56) = 257;
  *(v17 + 64) = _swiftEmptyArrayStorage;
  v333 = (v17 + 64);
  *(v17 + 16) = 2;
  *(v17 + 32) = v310;
  swift_beginAccess();
  *(v17 + 48) = 1;
  swift_beginAccess();
  *(v17 + 52) = 1065353216;
  swift_beginAccess();
  *(v17 + 56) = 1;
  swift_beginAccess();
  v301 = v17;
  *(v17 + 57) = 1;
  sub_1000AB384(&off_10011B4C0);
  v311 = v18;
  v19 = swift_allocObject();
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 56) = 257;
  *(v19 + 64) = _swiftEmptyArrayStorage;
  v290 = (v19 + 64);
  *(v19 + 16) = 2;
  *(v19 + 32) = v311;
  swift_beginAccess();
  *(v19 + 48) = 1;
  swift_beginAccess();
  *(v19 + 52) = 1065353216;
  swift_beginAccess();
  *(v19 + 56) = 1;
  swift_beginAccess();
  *(v19 + 57) = 1;
  sub_1000AB384(&off_10011B4F0);
  v312 = v20;
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  *(v21 + 52) = 0;
  *(v21 + 56) = 257;
  v22 = (v3 + 64);
  *(v21 + 64) = _swiftEmptyArrayStorage;
  v23 = (v21 + 64);
  *(v21 + 16) = 2;
  *(v21 + 32) = v312;
  swift_beginAccess();
  *(v21 + 48) = 0;
  swift_beginAccess();
  *(v21 + 52) = 1065353216;
  swift_beginAccess();
  *(v21 + 56) = 1;
  swift_beginAccess();
  *(v21 + 57) = 1;
  sub_1000AB384(&off_10011B520);
  v313 = v24;
  sub_1000AB384(&off_10011B550);
  v294 = v25;
  swift_beginAccess();
  v26 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_1000A35A4(0, *(v26 + 2) + 1, 1, v26);
    *v22 = v26;
  }

  v29 = *(v26 + 2);
  v28 = *(v26 + 3);
  if (v29 >= v28 >> 1)
  {
    v26 = sub_1000A35A4((v28 > 1), v29 + 1, 1, v26);
  }

  *(v26 + 2) = v29 + 1;
  v30 = &v26[80 * v29];
  *(v30 + 4) = 0x40490FDA00000000;
  *(v30 + 3) = v313;
  *(v30 + 16) = 1071898308;
  *(v30 + 5) = v294;
  *(v30 + 12) = 0x3F8B851F3E4CCCCDLL;
  *v22 = v26;
  swift_endAccess();
  sub_1000AB384(&off_10011B580);
  v314 = v31;
  sub_1000AB384(&off_10011B5B0);
  v295 = v32;
  swift_beginAccess();
  v33 = *v292;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *v292 = v33;
  if ((v34 & 1) == 0)
  {
    v33 = sub_1000A35A4(0, *(v33 + 2) + 1, 1, v33);
    *v292 = v33;
  }

  v36 = *(v33 + 2);
  v35 = *(v33 + 3);
  if (v36 >= v35 >> 1)
  {
    v33 = sub_1000A35A4((v35 > 1), v36 + 1, 1, v33);
  }

  *(v33 + 2) = v36 + 1;
  v37 = &v33[80 * v36];
  *(v37 + 4) = 0x4042CE8100000000;
  *(v37 + 3) = v314;
  *(v37 + 16) = 1083873680;
  *(v37 + 5) = v295;
  *(v37 + 12) = 0x3FA7AE143FA66666;
  *v292 = v33;
  swift_endAccess();
  sub_1000AB384(&off_10011B5E0);
  v315 = v38;
  sub_1000AB384(&off_10011B610);
  v296 = v39;
  swift_beginAccess();
  v40 = *v337;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v337 = v40;
  if ((v41 & 1) == 0)
  {
    v40 = sub_1000A35A4(0, *(v40 + 2) + 1, 1, v40);
    *v337 = v40;
  }

  v43 = *(v40 + 2);
  v42 = *(v40 + 3);
  if (v43 >= v42 >> 1)
  {
    v40 = sub_1000A35A4((v42 > 1), v43 + 1, 1, v40);
  }

  *(v40 + 2) = v43 + 1;
  v44 = &v40[80 * v43];
  *(v44 + 4) = 0x4041E9BF00000000;
  *(v44 + 3) = v315;
  *(v44 + 16) = 1082501756;
  *(v44 + 5) = v296;
  *(v44 + 12) = 0x40A8A3D700000000;
  *v337 = v40;
  swift_endAccess();
  sub_1000AB384(&off_10011B640);
  v297 = v45;
  sub_1000AB384(&off_10011B670);
  v270 = v46;
  swift_beginAccess();
  v47 = *v334;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  *v334 = v47;
  if ((v48 & 1) == 0)
  {
    v47 = sub_1000A35A4(0, *(v47 + 2) + 1, 1, v47);
    *v334 = v47;
  }

  v50 = *(v47 + 2);
  v49 = *(v47 + 3);
  if (v50 >= v49 >> 1)
  {
    v47 = sub_1000A35A4((v49 > 1), v50 + 1, 1, v47);
  }

  *(v47 + 2) = v50 + 1;
  v51 = &v47[80 * v50];
  *(v51 + 4) = 0x40489D7900000000;
  *(v51 + 3) = v297;
  *(v51 + 16) = 1078649407;
  *(v51 + 5) = v270;
  *(v51 + 12) = 0x3F3AE14800000000;
  *v334 = v47;
  swift_endAccess();
  sub_1000AB384(&off_10011B6A0);
  v298 = v52;
  sub_1000AB384(&off_10011B6D0);
  v271 = v53;
  swift_beginAccess();
  v54 = *v342;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v54;
  if ((v55 & 1) == 0)
  {
    v54 = sub_1000A35A4(0, *(v54 + 2) + 1, 1, v54);
    *v342 = v54;
  }

  v57 = *(v54 + 2);
  v56 = *(v54 + 3);
  if (v57 >= v56 >> 1)
  {
    v54 = sub_1000A35A4((v56 > 1), v57 + 1, 1, v54);
  }

  *(v54 + 2) = v57 + 1;
  v58 = &v54[80 * v57];
  *(v58 + 4) = 0x40197A2E00000000;
  *(v58 + 3) = v298;
  *(v58 + 16) = 1078027389;
  *(v58 + 5) = v271;
  *(v58 + 12) = 0x3F56872B3EBB645ALL;
  *v342 = v54;
  swift_endAccess();
  sub_1000AB384(&off_10011B700);
  v299 = v59;
  sub_1000AB384(&off_10011B730);
  v272 = v60;
  swift_beginAccess();
  v61 = *v336;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  *v336 = v61;
  if ((v62 & 1) == 0)
  {
    v61 = sub_1000A35A4(0, *(v61 + 2) + 1, 1, v61);
    *v336 = v61;
  }

  v64 = *(v61 + 2);
  v63 = *(v61 + 3);
  if (v64 >= v63 >> 1)
  {
    v61 = sub_1000A35A4((v63 > 1), v64 + 1, 1, v61);
  }

  *(v61 + 2) = v64 + 1;
  v65 = &v61[80 * v64];
  *(v65 + 4) = 0x4004EC9D00000000;
  *(v65 + 3) = v299;
  *(v65 + 16) = 1084793530;
  *(v65 + 5) = v272;
  *(v65 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v336 = v61;
  swift_endAccess();
  sub_1000AB384(&off_10011B760);
  v300 = v66;
  sub_1000AB384(&off_10011B790);
  v273 = v67;
  swift_beginAccess();
  v68 = *v346;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v68;
  if ((v69 & 1) == 0)
  {
    v68 = sub_1000A35A4(0, *(v68 + 2) + 1, 1, v68);
    *v346 = v68;
  }

  v71 = *(v68 + 2);
  v70 = *(v68 + 3);
  if (v71 >= v70 >> 1)
  {
    v68 = sub_1000A35A4((v70 > 1), v71 + 1, 1, v68);
  }

  *(v68 + 2) = v71 + 1;
  v72 = &v68[80 * v71];
  *(v72 + 4) = 0x40197A2E00000000;
  *(v72 + 3) = v300;
  *(v72 + 16) = 1075112755;
  *(v72 + 5) = v273;
  *(v72 + 12) = 0x3F4A3D713EBB645ALL;
  *v346 = v68;
  swift_endAccess();
  sub_1000AB384(&off_10011B7C0);
  v274 = v73;
  sub_1000AB384(&off_10011B7F0);
  v263 = v74;
  swift_beginAccess();
  v75 = *v358;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  *v358 = v75;
  if ((v76 & 1) == 0)
  {
    v75 = sub_1000A35A4(0, *(v75 + 2) + 1, 1, v75);
    *v358 = v75;
  }

  v78 = *(v75 + 2);
  v77 = *(v75 + 3);
  if (v78 >= v77 >> 1)
  {
    v75 = sub_1000A35A4((v77 > 1), v78 + 1, 1, v75);
  }

  *(v75 + 2) = v78 + 1;
  v79 = &v75[80 * v78];
  *(v79 + 4) = 0x4021BE3F00000000;
  *(v79 + 3) = v274;
  *(v79 + 16) = 1084229967;
  *(v79 + 5) = v263;
  *(v79 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v358 = v75;
  swift_endAccess();
  sub_1000AB384(&off_10011B820);
  v275 = v80;
  sub_1000AB384(&off_10011B850);
  v264 = v81;
  swift_beginAccess();
  v82 = *v333;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  *v333 = v82;
  if ((v83 & 1) == 0)
  {
    v82 = sub_1000A35A4(0, *(v82 + 2) + 1, 1, v82);
    *v333 = v82;
  }

  v85 = *(v82 + 2);
  v84 = *(v82 + 3);
  if (v85 >= v84 >> 1)
  {
    v82 = sub_1000A35A4((v84 > 1), v85 + 1, 1, v82);
  }

  *(v82 + 2) = v85 + 1;
  v86 = &v82[80 * v85];
  *(v86 + 4) = 1140457472;
  *(v86 + 3) = v275;
  *(v86 + 16) = 1077963482;
  *(v86 + 5) = v264;
  *(v86 + 12) = 0x3F65E3543EA3D70ALL;
  *v333 = v82;
  swift_endAccess();
  sub_1000AB384(&off_10011B880);
  v276 = v87;
  sub_1000AB384(&off_10011B8B0);
  v265 = v88;
  swift_beginAccess();
  v89 = *v290;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v89;
  if ((v90 & 1) == 0)
  {
    v89 = sub_1000A35A4(0, *(v89 + 2) + 1, 1, v89);
    *v290 = v89;
  }

  v92 = *(v89 + 2);
  v91 = *(v89 + 3);
  if (v92 >= v91 >> 1)
  {
    v89 = sub_1000A35A4((v91 > 1), v92 + 1, 1, v89);
  }

  *(v89 + 2) = v92 + 1;
  v93 = &v89[80 * v92];
  *(v93 + 4) = 0x4031D3FE46CA7600;
  *(v93 + 3) = v276;
  *(v93 + 16) = 1079994098;
  *(v93 + 5) = v265;
  *(v93 + 12) = 0x3F9333333FAB4396;
  *v290 = v89;
  swift_endAccess();
  sub_1000AB384(&off_10011B8E0);
  v277 = v94;
  sub_1000AB384(&off_10011B910);
  v266 = v95;
  swift_beginAccess();
  v96 = *v23;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v96;
  if ((v97 & 1) == 0)
  {
    v96 = sub_1000A35A4(0, *(v96 + 2) + 1, 1, v96);
    *v23 = v96;
  }

  v99 = *(v96 + 2);
  v98 = *(v96 + 3);
  if (v99 >= v98 >> 1)
  {
    v96 = sub_1000A35A4((v98 > 1), v99 + 1, 1, v96);
  }

  *(v96 + 2) = v99 + 1;
  v100 = &v96[80 * v99];
  *(v100 + 4) = 1142947840;
  *(v100 + 3) = v277;
  *(v100 + 16) = 1077207353;
  *(v100 + 5) = v266;
  *(v100 + 12) = 0x3F8000003E4CCCCDLL;
  *v23 = v96;
  swift_endAccess();
  sub_1000AB384(&off_10011B940);
  v278 = v101;
  sub_1000AB384(&off_10011B970);
  v267 = v102;
  swift_beginAccess();
  v103 = *v22;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v103;
  if ((v104 & 1) == 0)
  {
    v103 = sub_1000A35A4(0, *(v103 + 2) + 1, 1, v103);
    *v22 = v103;
  }

  v106 = *(v103 + 2);
  v105 = *(v103 + 3);
  if (v106 >= v105 >> 1)
  {
    v103 = sub_1000A35A4((v105 > 1), v106 + 1, 1, v103);
  }

  *(v103 + 2) = v106 + 1;
  v107 = &v103[80 * v106];
  *(v107 + 4) = 0x40490FDA455AC000;
  *(v107 + 3) = v278;
  *(v107 + 16) = 1070141402;
  *(v107 + 5) = v267;
  *(v107 + 12) = 0x3F8B851F3E4CCCCDLL;
  *v22 = v103;
  swift_endAccess();
  sub_1000AB384(&off_10011B9A0);
  v279 = v108;
  sub_1000AB384(&off_10011B9D0);
  v268 = v109;
  swift_beginAccess();
  v110 = *v292;
  v111 = swift_isUniquelyReferenced_nonNull_native();
  *v292 = v110;
  if ((v111 & 1) == 0)
  {
    v110 = sub_1000A35A4(0, *(v110 + 2) + 1, 1, v110);
    *v292 = v110;
  }

  v113 = *(v110 + 2);
  v112 = *(v110 + 3);
  if (v113 >= v112 >> 1)
  {
    v110 = sub_1000A35A4((v112 > 1), v113 + 1, 1, v110);
  }

  *(v110 + 2) = v113 + 1;
  v114 = &v110[80 * v113];
  *(v114 + 4) = 0x4042CE81458CA000;
  *(v114 + 3) = v279;
  *(v114 + 16) = 1083873680;
  *(v114 + 5) = v268;
  *(v114 + 12) = 0x3FA7AE143FA66666;
  *v292 = v110;
  swift_endAccess();
  sub_1000AB384(&off_10011BA00);
  v280 = v115;
  sub_1000AB384(&off_10011BA30);
  v269 = v116;
  swift_beginAccess();
  v117 = *v337;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  *v337 = v117;
  if ((v118 & 1) == 0)
  {
    v117 = sub_1000A35A4(0, *(v117 + 2) + 1, 1, v117);
    *v337 = v117;
  }

  v120 = *(v117 + 2);
  v119 = *(v117 + 3);
  if (v120 >= v119 >> 1)
  {
    v117 = sub_1000A35A4((v119 > 1), v120 + 1, 1, v117);
  }

  *(v117 + 2) = v120 + 1;
  v121 = &v117[80 * v120];
  *(v121 + 4) = 0x4041E9BF44723333;
  *(v121 + 3) = v280;
  *(v121 + 16) = 1083673028;
  *(v121 + 5) = v269;
  *(v121 + 12) = 0x40A8A3D700000000;
  *v337 = v117;
  swift_endAccess();
  sub_1000AB384(&off_10011BA60);
  v316 = v122;
  sub_1000AB384(&off_10011BA90);
  v281 = v123;
  swift_beginAccess();
  v124 = *v334;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  *v334 = v124;
  if ((v125 & 1) == 0)
  {
    v124 = sub_1000A35A4(0, *(v124 + 2) + 1, 1, v124);
    *v334 = v124;
  }

  v127 = *(v124 + 2);
  v126 = *(v124 + 3);
  if (v127 >= v126 >> 1)
  {
    v124 = sub_1000A35A4((v126 > 1), v127 + 1, 1, v124);
  }

  *(v124 + 2) = v127 + 1;
  v128 = &v124[80 * v127];
  *(v128 + 4) = 0x40489D7943960000;
  *(v128 + 3) = v316;
  *(v128 + 16) = 1079674268;
  *(v128 + 5) = v281;
  *(v128 + 12) = 0x3F3AE14800000000;
  *v334 = v124;
  swift_endAccess();
  sub_1000AB384(&off_10011BAC0);
  v317 = v129;
  sub_1000AB384(&off_10011BAF0);
  v282 = v130;
  swift_beginAccess();
  v131 = *v342;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v131;
  if ((v132 & 1) == 0)
  {
    v131 = sub_1000A35A4(0, *(v131 + 2) + 1, 1, v131);
    *v342 = v131;
  }

  v134 = *(v131 + 2);
  v133 = *(v131 + 3);
  if (v134 >= v133 >> 1)
  {
    v131 = sub_1000A35A4((v133 > 1), v134 + 1, 1, v131);
  }

  *(v131 + 2) = v134 + 1;
  v135 = &v131[80 * v134];
  *(v135 + 4) = 0x40197A2E44A28000;
  *(v135 + 3) = v317;
  *(v135 + 16) = 1074308604;
  *(v135 + 5) = v282;
  *(v135 + 12) = 0x3F6353F83EBB645ALL;
  *v342 = v131;
  swift_endAccess();
  sub_1000AB384(&off_10011BB20);
  v318 = v136;
  sub_1000AB384(&off_10011BB50);
  v283 = v137;
  swift_beginAccess();
  v138 = *v336;
  v139 = swift_isUniquelyReferenced_nonNull_native();
  *v336 = v138;
  if ((v139 & 1) == 0)
  {
    v138 = sub_1000A35A4(0, *(v138 + 2) + 1, 1, v138);
    *v336 = v138;
  }

  v141 = *(v138 + 2);
  v140 = *(v138 + 3);
  if (v141 >= v140 >> 1)
  {
    v138 = sub_1000A35A4((v140 > 1), v141 + 1, 1, v138);
  }

  *(v138 + 2) = v141 + 1;
  v142 = &v138[80 * v141];
  *(v142 + 4) = 0x4004EC9D44C80000;
  *(v142 + 3) = v318;
  *(v142 + 16) = 1082319221;
  *(v142 + 5) = v283;
  *(v142 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v336 = v138;
  swift_endAccess();
  sub_1000AB384(&off_10011BB80);
  v319 = v143;
  sub_1000AB384(&off_10011BBB0);
  v284 = v144;
  swift_beginAccess();
  v145 = *v346;
  v146 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v145;
  if ((v146 & 1) == 0)
  {
    v145 = sub_1000A35A4(0, *(v145 + 2) + 1, 1, v145);
    *v346 = v145;
  }

  v148 = *(v145 + 2);
  v147 = *(v145 + 3);
  if (v148 >= v147 >> 1)
  {
    v145 = sub_1000A35A4((v147 > 1), v148 + 1, 1, v145);
  }

  *(v145 + 2) = v148 + 1;
  v149 = &v145[80 * v148];
  *(v149 + 4) = 0x40197A2E00000000;
  *(v149 + 3) = v319;
  *(v149 + 16) = 1075112755;
  *(v149 + 5) = v284;
  *(v149 + 12) = 0x3F4A3D713EBB645ALL;
  *v346 = v145;
  swift_endAccess();
  sub_1000AB384(&off_10011BBE0);
  v320 = v150;
  sub_1000AB384(&off_10011BC10);
  v285 = v151;
  swift_beginAccess();
  v152 = *v358;
  v153 = swift_isUniquelyReferenced_nonNull_native();
  *v358 = v152;
  if ((v153 & 1) == 0)
  {
    v152 = sub_1000A35A4(0, *(v152 + 2) + 1, 1, v152);
    *v358 = v152;
  }

  v155 = *(v152 + 2);
  v154 = *(v152 + 3);
  if (v155 >= v154 >> 1)
  {
    v152 = sub_1000A35A4((v154 > 1), v155 + 1, 1, v152);
  }

  *(v152 + 2) = v155 + 1;
  v156 = &v152[80 * v155];
  *(v156 + 4) = 0x4021BE3F00000000;
  *(v156 + 3) = v320;
  *(v156 + 16) = 1084229967;
  *(v156 + 5) = v285;
  *(v156 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v358 = v152;
  swift_endAccess();
  sub_1000AB384(&off_10011BC40);
  v321 = v157;
  sub_1000AB384(&off_10011BC70);
  v322 = vaddq_f32(v321, v158);
  sub_1000AB384(&off_10011BCA0);
  v286 = v159;
  swift_beginAccess();
  v160 = *v333;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  *v333 = v160;
  if ((v161 & 1) == 0)
  {
    v160 = sub_1000A35A4(0, *(v160 + 2) + 1, 1, v160);
    *v333 = v160;
  }

  v162 = v322;
  v162.i32[3] = 0;
  v164 = *(v160 + 2);
  v163 = *(v160 + 3);
  if (v164 >= v163 >> 1)
  {
    v330 = v162;
    v261 = sub_1000A35A4((v163 > 1), v164 + 1, 1, v160);
    v162 = v330;
    v160 = v261;
  }

  *(v160 + 2) = v164 + 1;
  v165 = &v160[80 * v164];
  *(v165 + 4) = 0x40490FDA43FA0000;
  *(v165 + 3) = v162;
  *(v165 + 16) = 1075738667;
  *(v165 + 5) = v286;
  *(v165 + 12) = 0x3F65E3763EA3D70ALL;
  *v333 = v160;
  swift_endAccess();
  sub_1000AB384(&off_10011BCD0);
  v323 = v166;
  sub_1000AB384(&off_10011BD00);
  v287 = v167;
  swift_beginAccess();
  v168 = *v290;
  v169 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v168;
  if ((v169 & 1) == 0)
  {
    v168 = sub_1000A35A4(0, *(v168 + 2) + 1, 1, v168);
    *v290 = v168;
  }

  v171 = *(v168 + 2);
  v170 = *(v168 + 3);
  if (v171 >= v170 >> 1)
  {
    v168 = sub_1000A35A4((v170 > 1), v171 + 1, 1, v168);
  }

  *(v168 + 2) = v171 + 1;
  v172 = &v168[80 * v171];
  *(v172 + 4) = 0x40490FDA46CA7600;
  *(v172 + 3) = v323;
  *(v172 + 16) = 1076037070;
  *(v172 + 5) = v287;
  *(v172 + 12) = 0x3F9333333FAB4396;
  *v290 = v168;
  swift_endAccess();
  sub_1000AB384(&off_10011BD30);
  v324 = v173;
  sub_1000AB384(&off_10011BD60);
  v325 = vaddq_f32(v324, v174);
  sub_1000AB384(&off_10011BD90);
  v288 = v175;
  swift_beginAccess();
  v176 = *v23;
  v177 = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v176;
  if ((v177 & 1) == 0)
  {
    v176 = sub_1000A35A4(0, *(v176 + 2) + 1, 1, v176);
    *v23 = v176;
  }

  v178 = v325;
  v178.i32[3] = 0;
  v180 = *(v176 + 2);
  v179 = *(v176 + 3);
  if (v180 >= v179 >> 1)
  {
    v331 = v178;
    v262 = sub_1000A35A4((v179 > 1), v180 + 1, 1, v176);
    v178 = v331;
    v176 = v262;
  }

  *(v176 + 2) = v180 + 1;
  v181 = &v176[80 * v180];
  *(v181 + 4) = 0x3FF86C54C3D20000;
  *(v181 + 3) = v178;
  *(v181 + 16) = 1077207353;
  *(v181 + 5) = v288;
  *(v181 + 12) = 0x3F8000003E4CCCCDLL;
  *v23 = v176;
  swift_endAccess();
  sub_1000AB384(&off_10011BDC0);
  v326 = v182;
  sub_1000AB384(&off_10011BDF0);
  v289 = v183;
  swift_beginAccess();
  v184 = *v22;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v184;
  if ((v185 & 1) == 0)
  {
    v184 = sub_1000A35A4(0, *(v184 + 2) + 1, 1, v184);
    *v22 = v184;
  }

  v187 = *(v184 + 2);
  v186 = *(v184 + 3);
  if (v187 >= v186 >> 1)
  {
    v184 = sub_1000A35A4((v186 > 1), v187 + 1, 1, v184);
  }

  *(v184 + 2) = v187 + 1;
  v188 = &v184[80 * v187];
  *(v188 + 4) = 0x40490FDA44FA0000;
  *(v188 + 3) = v326;
  *(v188 + 16) = 1070141402;
  *(v188 + 5) = v289;
  *(v188 + 12) = 0x3F8CCCCD3EF5C28FLL;
  *v22 = v184;
  swift_endAccess();
  sub_1000AB384(&off_10011BE20);
  v327 = v189;
  sub_1000AB384(&off_10011BE50);
  v291 = v190;
  swift_beginAccess();
  v191 = *v292;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  *v292 = v191;
  if ((v192 & 1) == 0)
  {
    v191 = sub_1000A35A4(0, *(v191 + 2) + 1, 1, v191);
    *v292 = v191;
  }

  v194 = *(v191 + 2);
  v193 = *(v191 + 3);
  if (v194 >= v193 >> 1)
  {
    v191 = sub_1000A35A4((v193 > 1), v194 + 1, 1, v191);
  }

  *(v191 + 2) = v194 + 1;
  v195 = &v191[80 * v194];
  *(v195 + 4) = 0x4042CE8144610000;
  *(v195 + 3) = v327;
  *(v195 + 16) = 1083873680;
  *(v195 + 5) = v291;
  *(v195 + 12) = 0x3F8106253E4CCCCDLL;
  *v292 = v191;
  swift_endAccess();
  sub_1000AB384(&off_10011BE80);
  v328 = v196;
  sub_1000AB384(&off_10011BEB0);
  v293 = v197;
  swift_beginAccess();
  v198 = *v337;
  v199 = swift_isUniquelyReferenced_nonNull_native();
  *v337 = v198;
  if ((v199 & 1) == 0)
  {
    v198 = sub_1000A35A4(0, *(v198 + 2) + 1, 1, v198);
    *v337 = v198;
  }

  v201 = *(v198 + 2);
  v200 = *(v198 + 3);
  if (v201 >= v200 >> 1)
  {
    v198 = sub_1000A35A4((v200 > 1), v201 + 1, 1, v198);
  }

  *(v198 + 2) = v201 + 1;
  v202 = &v198[80 * v201];
  *(v202 + 4) = 0x4041E9BF43C80000;
  *(v202 + 3) = v328;
  *(v202 + 16) = 1083673028;
  *(v202 + 5) = v293;
  *(v202 + 12) = 0x40A8A3D700000000;
  *v337 = v198;
  swift_endAccess();
  sub_1000AB384(&off_10011BEE0);
  v338 = v203;
  sub_1000AB384(&off_10011BF10);
  v329 = v204;
  swift_beginAccess();
  v205 = *v334;
  v206 = swift_isUniquelyReferenced_nonNull_native();
  *v334 = v205;
  if ((v206 & 1) == 0)
  {
    v205 = sub_1000A35A4(0, *(v205 + 2) + 1, 1, v205);
    *v334 = v205;
  }

  v208 = *(v205 + 2);
  v207 = *(v205 + 3);
  if (v208 >= v207 >> 1)
  {
    v205 = sub_1000A35A4((v207 > 1), v208 + 1, 1, v205);
  }

  *(v205 + 2) = v208 + 1;
  v209 = &v205[80 * v208];
  *(v209 + 4) = 0x40489D7942C80000;
  *(v209 + 3) = v338;
  *(v209 + 16) = 1079674268;
  *(v209 + 5) = v329;
  *(v209 + 12) = 0x3F3AE14800000000;
  *v334 = v205;
  swift_endAccess();
  sub_1000AB384(&off_10011BF40);
  v339 = v210;
  sub_1000AB384(&off_10011BF70);
  v335 = v211;
  swift_beginAccess();
  v212 = *v342;
  v213 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v212;
  if ((v213 & 1) == 0)
  {
    v212 = sub_1000A35A4(0, *(v212 + 2) + 1, 1, v212);
    *v342 = v212;
  }

  v215 = *(v212 + 2);
  v214 = *(v212 + 3);
  if (v215 >= v214 >> 1)
  {
    v212 = sub_1000A35A4((v214 > 1), v215 + 1, 1, v212);
  }

  *(v212 + 2) = v215 + 1;
  v216 = &v212[80 * v215];
  *(v216 + 4) = 0x40490FDA00000000;
  *(v216 + 3) = v339;
  *(v216 + 16) = 1050858253;
  *(v216 + 5) = v335;
  *(v216 + 12) = 0x3F56872B3F000000;
  *v342 = v212;
  swift_endAccess();
  sub_1000AB384(&off_10011BFA0);
  v343 = v217;
  sub_1000AB384(&off_10011BFD0);
  v340 = v218;
  swift_beginAccess();
  v219 = *v336;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  *v336 = v219;
  if ((v220 & 1) == 0)
  {
    v219 = sub_1000A35A4(0, *(v219 + 2) + 1, 1, v219);
    *v336 = v219;
  }

  v222 = *(v219 + 2);
  v221 = *(v219 + 3);
  if (v222 >= v221 >> 1)
  {
    v219 = sub_1000A35A4((v221 > 1), v222 + 1, 1, v219);
  }

  *(v219 + 2) = v222 + 1;
  v223 = &v219[80 * v222];
  *(v223 + 4) = 0x3FFCCC2100000000;
  *(v223 + 3) = v343;
  *(v223 + 16) = 1079550919;
  *(v223 + 5) = v340;
  *(v223 + 12) = 0x3FECCCCD41200000;
  *v336 = v219;
  swift_endAccess();
  sub_1000AB384(&off_10011C000);
  v344 = v224;
  sub_1000AB384(&off_10011C030);
  v341 = v225;
  swift_beginAccess();
  v226 = *v346;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v226;
  if ((v227 & 1) == 0)
  {
    v226 = sub_1000A35A4(0, *(v226 + 2) + 1, 1, v226);
    *v346 = v226;
  }

  v229 = *(v226 + 2);
  v228 = *(v226 + 3);
  if (v229 >= v228 >> 1)
  {
    v226 = sub_1000A35A4((v228 > 1), v229 + 1, 1, v226);
  }

  *(v226 + 2) = v229 + 1;
  v230 = &v226[80 * v229];
  *(v230 + 4) = 0x40197A2E43870000;
  *(v230 + 3) = v344;
  *(v230 + 16) = 1074308604;
  *(v230 + 5) = v341;
  *(v230 + 12) = 0x3F4A3D713EBB645ALL;
  *v346 = v226;
  swift_endAccess();
  sub_1000AB384(&off_10011C060);
  v347 = v231;
  sub_1000AB384(&off_10011C090);
  v345 = v232;
  swift_beginAccess();
  v233 = *v358;
  v234 = swift_isUniquelyReferenced_nonNull_native();
  *v358 = v233;
  if ((v234 & 1) == 0)
  {
    v233 = sub_1000A35A4(0, *(v233 + 2) + 1, 1, v233);
    *v358 = v233;
  }

  v236 = *(v233 + 2);
  v235 = *(v233 + 3);
  if (v236 >= v235 >> 1)
  {
    v233 = sub_1000A35A4((v235 > 1), v236 + 1, 1, v233);
  }

  *(v233 + 2) = v236 + 1;
  v237 = &v233[80 * v236];
  *(v237 + 4) = 0x4004EC9D44160000;
  *(v237 + 3) = v347;
  *(v237 + 16) = 1082319221;
  *(v237 + 5) = v345;
  *(v237 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v358 = v233;
  swift_endAccess();
  sub_1000AB384(&off_10011C0C0);
  v359 = v238;
  sub_1000AB384(&off_10011C0F0);
  v348 = v239;
  swift_beginAccess();
  v240 = *v333;
  v241 = swift_isUniquelyReferenced_nonNull_native();
  *v333 = v240;
  if ((v241 & 1) == 0)
  {
    v240 = sub_1000A35A4(0, *(v240 + 2) + 1, 1, v240);
    *v333 = v240;
  }

  v243 = *(v240 + 2);
  v242 = *(v240 + 3);
  if (v243 >= v242 >> 1)
  {
    v240 = sub_1000A35A4((v242 > 1), v243 + 1, 1, v240);
  }

  *(v240 + 2) = v243 + 1;
  v244 = &v240[80 * v243];
  *(v244 + 4) = 0x40490FDA44480000;
  *(v244 + 3) = v359;
  *(v244 + 16) = 1075738667;
  *(v244 + 5) = v348;
  *(v244 + 12) = 0x3F65E35400000000;
  *v333 = v240;
  swift_endAccess();
  sub_1000AB384(&off_10011C120);
  v360 = v245;
  sub_1000AB384(&off_10011C150);
  v349 = v246;
  swift_beginAccess();
  v247 = *v290;
  v248 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v247;
  if ((v248 & 1) == 0)
  {
    v247 = sub_1000A35A4(0, *(v247 + 2) + 1, 1, v247);
    *v290 = v247;
  }

  v250 = *(v247 + 2);
  v249 = *(v247 + 3);
  if (v250 >= v249 >> 1)
  {
    v247 = sub_1000A35A4((v249 > 1), v250 + 1, 1, v247);
  }

  *(v247 + 2) = v250 + 1;
  v251 = &v247[80 * v250];
  *(v251 + 4) = 0x40490FDA45FA0000;
  *(v251 + 3) = v360;
  *(v251 + 16) = 1076037070;
  *(v251 + 5) = v349;
  *(v251 + 12) = 0x3F828F5C3FAB4396;
  *v290 = v247;
  swift_endAccess();
  sub_1000AB384(&off_10011C180);
  v361 = v252;
  sub_1000AB384(&off_10011C1B0);
  v350 = v253;
  swift_beginAccess();
  v254 = *v23;
  v255 = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v254;
  if ((v255 & 1) == 0)
  {
    v254 = sub_1000A35A4(0, *(v254 + 2) + 1, 1, v254);
    *v23 = v254;
  }

  v257 = *(v254 + 2);
  v256 = *(v254 + 3);
  if (v257 >= v256 >> 1)
  {
    v254 = sub_1000A35A4((v256 > 1), v257 + 1, 1, v254);
  }

  *(v254 + 2) = v257 + 1;
  v258 = &v254[80 * v257];
  *(v258 + 4) = 0x3FF86C54C3480000;
  *(v258 + 3) = v361;
  *(v258 + 16) = 1077207374;
  *(v258 + 5) = v350;
  *(v258 + 12) = 0x41DCE14800000000;
  *(v21 + 64) = v254;
  swift_endAccess();
  sub_1000125FC(&qword_1001303F0);
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_1000F3150;
  *(v259 + 32) = v305;
  *(v259 + 40) = v13;
  *(v259 + 48) = v301;
  *(v259 + 56) = v19;
  *(v259 + 64) = v304;
  *(v259 + 72) = v21;
  *(v259 + 80) = v303;
  *(v259 + 88) = v302;
  *(v259 + 96) = v308;
  *(v259 + 104) = v306;
  *(v259 + 112) = v307;
  swift_beginAccess();
  *(v309 + 144) = v259;
}

uint64_t sub_10009CF9C()
{
  v0 = sub_1000E9514();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E98D4();
  __chkstk_darwin(v1 - 8);
  sub_1000E98C4();
  sub_1000E9504();
  return sub_1000E9934();
}

Swift::Int sub_10009D1A0()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_10009D200()
{
  sub_1000E9974();
}

Swift::Int sub_10009D244()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_10009D2A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009D460(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10009D300()
{
  v0 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_deviceEnclosureColor();

  if (!v1)
  {
    return 0;
  }

  v3 = sub_1000E99B4();
  v4 = v2;
  if (v3 == 49 && v2 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 3;
  }

  else if (v3 == 50 && v4 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 2;
  }

  else if (v3 == 57 && v4 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  else if (v3 == 51 && v4 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1000E9F74();

    return v6 & 1;
  }
}

uint64_t sub_10009D460(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1001214A8;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10009D4C0()
{
  result = qword_100131EA8;
  if (!qword_100131EA8)
  {
    sub_100019048(&qword_100131EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131EA8);
  }

  return result;
}

unint64_t sub_10009D528()
{
  result = qword_100131EB8;
  if (!qword_100131EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131EB8);
  }

  return result;
}

uint64_t sub_10009D5A0(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t static MetalContext.makeComputePipelineState(named:)()
{
  v0 = qword_10012F7B0;
  if (!qword_10012F7B0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = qword_10012F7B8;
  if (!qword_10012F7B8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v2 = sub_1000E98E4();
  v3 = [v1 newFunctionWithName:v2];

  if (!v3)
  {
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  v8 = 0;
  v4 = [v0 newComputePipelineStateWithFunction:v3 error:&v8];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = v8;
    return v4;
  }

  else
  {
    v7 = v8;
    sub_1000E92E4();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t static MetalContext.makeComputePipelineState(named:library:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = qword_10012F7B0;
  if (!qword_10012F7B0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
  }

  swift_unknownObjectRetain();
  v5 = sub_1000E98E4();
  v6 = [a3 newFunctionWithName:v5];

  if (!v6)
  {
    goto LABEL_6;
  }

  v11 = 0;
  v7 = [v3 newComputePipelineStateWithFunction:v6 error:&v11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = v11;
    return v7;
  }

  else
  {
    v10 = v11;
    sub_1000E92E4();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void static MetalContext.makeCommandBuffer()()
{
  if (qword_10012F7C0)
  {
    if ([swift_unknownObjectRetain() commandBuffer])
    {
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static MetalContext.makeBufferFromArray<A>(_:options:stride:)()
{
  sub_1000125FC(&unk_100131EC0);
  sub_1000E9AA4();
  return v1;
}

uint64_t sub_10009D934@<X0>(uint64_t result@<X0>, uint64_t a2@<X4>, char a3@<W5>, uint64_t a4@<X7>, void *a5@<X8>)
{
  v6 = qword_10012F7B0;
  if (!qword_10012F7B0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (result)
  {
    swift_unknownObjectRetain();
    result = sub_1000E9AE4();
    if (a3)
    {
      a2 = *(*(a4 - 8) + 72);
    }

    if ((result * a2) >> 64 == (result * a2) >> 63)
    {
      v11 = [v6 newBufferWithBytes:v7 length:? options:?];
      result = swift_unknownObjectRelease();
      *a5 = v11;
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t MetalContext.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MetalContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t static MetalContext.measureGPUTimePerCommandBuffer(commandBuffer:name:)(void *a1, uint64_t a2, void *a3)
{
  [a1 GPUStartTime];
  [a1 GPUEndTime];
  sub_1000125FC(&qword_100132930);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000EC870;
  sub_1000E9D64(85);
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x80000001000F8760;
  sub_1000E99A4(v8);
  sub_1000E9B44();
  v9._object = 0x80000001000F8780;
  v9._countAndFlagsBits = 0xD000000000000015;
  sub_1000E99A4(v9);
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  sub_1000E99A4(v10);
  v11._countAndFlagsBits = 0x747261747328202ELL;
  v11._object = 0xEE00203A74612073;
  sub_1000E99A4(v11);
  sub_1000E9B44();
  v12._countAndFlagsBits = 0x612073646E65202CLL;
  v12._object = 0xEB00000000203A74;
  sub_1000E99A4(v12);
  sub_1000E9B44();
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  sub_1000E99A4(v13);
  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1000EA014();
}

id MTLDevice.supportsMSAA.getter()
{
  result = [v0 supportsTextureSampleCount:4];
  if (result)
  {
    return [v0 supports32BitMSAA];
  }

  return result;
}

id _s22MercuryPosterExtension12MetalContextC5setup6deviceySo9MTLDevice_pSg_tFZ_0(void *a1)
{
  if (a1)
  {
    sub_1000125FC(&qword_100132930);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1000EC870;
    sub_1000E9D64(36);
    v6._object = 0x80000001000F87E0;
    v6._countAndFlagsBits = 0xD000000000000022;
    sub_1000E99A4(v6);
    sub_1000125FC(&unk_100132040);
    sub_1000E9DF4();
    *(v2 + 56) = &type metadata for String;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0xE000000000000000;
    sub_1000EA014();

    result = a1;
    goto LABEL_4;
  }

  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
LABEL_4:
    qword_10012F7B0 = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    if (qword_10012F7B0)
    {
      result = [swift_unknownObjectRetain() newDefaultLibrary];
      if (result)
      {
        v4 = result;
        swift_unknownObjectRelease();
        qword_10012F7B8 = v4;
        result = swift_unknownObjectRelease();
        if (qword_10012F7B0)
        {
          result = [swift_unknownObjectRetain() newCommandQueue];
          if (result)
          {
            v5 = result;
            swift_unknownObjectRelease();
            qword_10012F7C0 = v5;
            return swift_unknownObjectRelease();
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10009DEC8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6574696877;
    }

    else
    {
      v3 = 0x6B63616C62;
    }

    v2 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 1802398064;
  }

  else if (a1 == 3)
  {
    v2 = 0xE500000000000000;
    v3 = 0x6E65657267;
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 1702194274;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6574696877;
    }

    else
    {
      v8 = 0x6B63616C62;
    }

    v7 = 0xE500000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x6E65657267;
    if (a2 != 3)
    {
      v5 = 1702194274;
      v4 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v6 = 1802398064;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_1000E9F74();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_10009E020(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 40 == a2 << 40)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000E9F74();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_10009E094(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6146686361747461;
    }

    else
    {
      v3 = 0x616C696176616E75;
    }

    if (v2)
    {
      v4 = 0xEC00000064656C69;
    }

    else
    {
      v4 = 0xEB00000000656C62;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001000F65F0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001000F6610;
    }

    else
    {
      v4 = 0x80000001000F6630;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6146686361747461;
    }

    else
    {
      v9 = 0x616C696176616E75;
    }

    if (a2)
    {
      v8 = 0xEC00000064656C69;
    }

    else
    {
      v8 = 0xEB00000000656C62;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x80000001000F6610;
    v6 = 0xD000000000000019;
    if (a2 != 3)
    {
      v6 = 0xD000000000000018;
      v5 = 0x80000001000F6630;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000F65F0;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_1000E9F74();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_10009E22C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6647407;
    }

    else
    {
      v4 = 0x63696D616E7964;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 7305076;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6565726874;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1920298854;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6647407;
    }

    else
    {
      v9 = 0x63696D616E7964;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x6565726874;
    if (a2 != 3)
    {
      v6 = 1920298854;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 7305076;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1000E9F74();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10009E380(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6B63616C62;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65727574616ELL;
    }

    else
    {
      v4 = 1702063986;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6574696877;
    }

    else
    {
      v4 = 0x6B63616C62;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x65727574616ELL;
  if (a2 != 2)
  {
    v7 = 1702063986;
    v6 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6574696877;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000E9F74();
  }

  return v10 & 1;
}

uint64_t sub_10009E4A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000064656CLL;
  v3 = 0x6961467075746573;
  v4 = a1;
  v5 = 0x80000001000F6680;
  v6 = 0x6146657461647075;
  v7 = 0xEC00000064656C69;
  if (a1 != 4)
  {
    v6 = 0x6C69614677617264;
    v7 = 0xEA00000000006465;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7465737341646162;
  if (a1 != 1)
  {
    v9 = 0xD000000000000016;
    v8 = 0x80000001000F6660;
  }

  if (!a1)
  {
    v9 = 0x6961467075746573;
    v8 = 0xEB0000000064656CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001000F6680;
      if (v10 != 0xD000000000000016)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC00000064656C69;
      if (v10 != 0x6146657461647075)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEA00000000006465;
      if (v10 != 0x6C69614677617264)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x7465737341646162)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000016;
      v2 = 0x80000001000F6660;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1000E9F74();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_10009E68C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000746867696ELL;
  v3 = 0x64694D72616C6F73;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x7465736E7573;
  if (a1 != 6)
  {
    v6 = 1802728804;
    v5 = 0xE400000000000000;
  }

  v7 = 0x6F6F4E72616C6F73;
  v8 = 0xE90000000000006ELL;
  if (a1 != 4)
  {
    v7 = 0x657466416574616CLL;
    v8 = 0xED00006E6F6F6E72;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x657369726E7573;
  if (a1 != 2)
  {
    v10 = 0x696E726F4D64696DLL;
    v9 = 0xEA0000000000676ELL;
  }

  v11 = 0xE400000000000000;
  v12 = 1853317476;
  if (!a1)
  {
    v12 = 0x64694D72616C6F73;
    v11 = 0xED0000746867696ELL;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x7465736E7573)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v13 != 1802728804)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE90000000000006ELL;
      if (v13 != 0x6F6F4E72616C6F73)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xED00006E6F6F6E72;
      if (v13 != 0x657466416574616CLL)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x657369726E7573)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x696E726F4D64696DLL;
      v2 = 0xEA0000000000676ELL;
    }

    else if (a2)
    {
      v2 = 0xE400000000000000;
      if (v13 != 1853317476)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1000E9F74();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_10009E8FC()
{
  sub_1000E9974();
}

Swift::Int sub_10009EA38()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

Swift::Int sub_10009EB88()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

id TextureLoader.loadTexture(property:)(uint64_t *a1, void *a2)
{
  v35 = a2;
  v37 = sub_1000E93B4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = v34 - v6;
  v7 = [objc_opt_self() mainBundle];
  v9 = *a1;
  v8 = a1[1];

  v38 = v8;
  v10 = sub_1000E98E4();
  v11 = a1[2];
  v12 = a1[3];

  v13 = sub_1000E98E4();
  v14 = [v7 URLForResource:v10 withExtension:v13];

  if (v14)
  {
    v34[1] = v9;

    sub_1000E9364();

    v15 = v36;
    v16 = v37;
    (*(v36 + 32))(v39, v4, v37);
    sub_1000E9344(v17);
    v19 = v18;
    sub_1000125FC(&unk_100130390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000ED250;
    v21 = MTKTextureLoaderOptionSRGB;
    *(inited + 32) = MTKTextureLoaderOptionSRGB;
    *(inited + 40) = *(a1 + 32);
    v22 = MTKTextureLoaderOptionGenerateMipmaps;
    *(inited + 64) = &type metadata for Bool;
    *(inited + 72) = v22;
    *(inited + 80) = 0;
    v23 = MTKTextureLoaderOptionTextureStorageMode;
    *(inited + 104) = &type metadata for Bool;
    *(inited + 112) = v23;
    *(inited + 144) = &type metadata for UInt;
    *(inited + 120) = 2;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    sub_1000A0EDC(inited);
    swift_setDeallocating();
    sub_1000125FC(&unk_100130CE0);
    swift_arrayDestroy();
    type metadata accessor for Option(0);
    sub_1000A1E1C(&qword_10012F9E0, type metadata accessor for Option);
    isa = sub_1000E9894().super.isa;

    v40 = 0;
    v11 = [v35 newTextureWithContentsOfURL:v19 options:isa error:&v40];

    if (v11)
    {
      v28 = v40;
      v29 = sub_1000E98E4();
      [v11 setLabel:v29];
    }

    else
    {
      v32 = v40;
      sub_1000E92E4();

      swift_willThrow();
    }

    (*(v15 + 8))(v39, v16);
  }

  else
  {
    sub_10009F120();
    swift_allocError();
    v30 = v38;
    *v31 = v9;
    v31[1] = v30;
    v31[2] = v11;
    v31[3] = v12;
    swift_willThrow();
  }

  return v11;
}

unint64_t sub_10009F120()
{
  result = qword_100132050;
  if (!qword_100132050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132050);
  }

  return result;
}

unint64_t sub_10009F174(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E9CF4(*(v2 + 40));

  return sub_10009F6E4(a1, v4);
}

unint64_t sub_10009F1B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E9C74(*(v2 + 40));
  return sub_100002374(a1, v4, &unk_100132110);
}

unint64_t sub_10009F208(uint64_t a1, uint64_t a2)
{
  sub_1000EA024();
  sub_1000E9974();
  v4 = sub_1000EA064();

  return sub_10009F7AC(a1, a2, v4);
}

unint64_t sub_10009F284(unsigned __int8 a1)
{
  v2 = sub_10009EA38();

  return sub_10009F864(a1, v2);
}

unint64_t sub_10009F2C8(unint64_t a1, uint64_t a2, char a3)
{
  sub_1000EA024();
  sub_1000BB81C(v8, a1, a2, a3);
  v6 = sub_1000EA064();

  return sub_10009FB24(a1, a2, a3, v6);
}

unint64_t sub_10009F354(unsigned __int8 a1)
{
  sub_1000EA024();
  sub_1000EA034(a1);
  v2 = sub_1000EA064();
  return sub_10009FC24(a1, v2);
}

unint64_t sub_10009F3BC(__int16 a1)
{
  sub_1000EA024();
  sub_1000BC058(v4, a1 & 0x1FF);
  v2 = sub_1000EA064();

  return sub_10009FC94(a1 & 0x1FF, v2);
}

unint64_t sub_10009F428(char a1)
{
  sub_1000EA024();
  sub_1000E9974();

  v2 = sub_1000EA064();

  return sub_10009FFE0(a1, v2);
}

unint64_t sub_10009F4AC(Swift::UInt a1)
{
  sub_1000EA024();
  sub_1000EA034(a1);
  v2 = sub_1000EA064();
  return sub_1000A00CC(a1, v2);
}

unint64_t sub_10009F514(unsigned __int8 a1)
{
  sub_1000EA024();
  sub_1000E9974();

  v2 = sub_1000EA064();

  return sub_1000A0138(a1, v2);
}

unint64_t sub_10009F59C(uint64_t a1)
{
  sub_1000E9914();
  sub_1000EA024();
  sub_1000E9974();
  v2 = sub_1000EA064();

  return sub_1000A022C(a1, v2);
}

unint64_t sub_10009F630(uint64_t a1)
{
  sub_1000EA024();
  type metadata accessor for CFString(0);
  sub_1000A1E1C(&qword_1001320D8, type metadata accessor for CFString);
  sub_1000E95F4();
  v2 = sub_1000EA064();

  return sub_1000A0330(a1, v2);
}

unint64_t sub_10009F6E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100032808(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000E9D04();
      sub_100012844(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10009F7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000E9F74())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10009F864(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v12 = 0xE600000000000000;
            v11 = 0x7465736E7573;
          }

          else
          {
            v12 = 0xE400000000000000;
            v11 = 1802728804;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x6F6F4E72616C6F73;
          }

          else
          {
            v11 = 0x657466416574616CLL;
          }

          if (v6 == 4)
          {
            v12 = 0xE90000000000006ELL;
          }

          else
          {
            v12 = 0xED00006E6F6F6E72;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x657369726E7573;
        }

        else
        {
          v7 = 0x696E726F4D64696DLL;
        }

        if (v6 == 2)
        {
          v8 = 0xE700000000000000;
        }

        else
        {
          v8 = 0xEA0000000000676ELL;
        }

        if (*(*(v27 + 48) + v4))
        {
          v9 = 1853317476;
        }

        else
        {
          v9 = 0x64694D72616C6F73;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0xE400000000000000;
        }

        else
        {
          v10 = 0xED0000746867696ELL;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0x7465736E7573;
      if (v5 != 6)
      {
        v13 = 1802728804;
      }

      v14 = 0xE600000000000000;
      if (v5 != 6)
      {
        v14 = 0xE400000000000000;
      }

      v15 = 0x6F6F4E72616C6F73;
      if (v5 != 4)
      {
        v15 = 0x657466416574616CLL;
      }

      v16 = 0xED00006E6F6F6E72;
      if (v5 == 4)
      {
        v16 = 0xE90000000000006ELL;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x657369726E7573;
      }

      else
      {
        v17 = 0x696E726F4D64696DLL;
      }

      if (v5 == 2)
      {
        v18 = 0xE700000000000000;
      }

      else
      {
        v18 = 0xEA0000000000676ELL;
      }

      if (v5)
      {
        v19 = 1853317476;
      }

      else
      {
        v19 = 0x64694D72616C6F73;
      }

      if (v5)
      {
        v20 = 0xE400000000000000;
      }

      else
      {
        v20 = 0xED0000746867696ELL;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_1000E9F74();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10009FB24(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = *(v4 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      sub_1000A1DD4(*v10, v12, v13);
      v14 = sub_1000BB58C(v11, v12, v13, a1, a2, a3);
      sub_1000A1DF8(v11, v12, v13);
      if (v14)
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10009FC24(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10009FC94(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    do
    {
      v7 = (*(v2 + 48) + 2 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = 0x7465736E7573;
      if (v8 != 6)
      {
        v10 = 1802728804;
      }

      v11 = 0xE600000000000000;
      if (v8 != 6)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0x6F6F4E72616C6F73;
      if (v8 != 4)
      {
        v12 = 0x657466416574616CLL;
      }

      v13 = 0xED00006E6F6F6E72;
      if (v8 == 4)
      {
        v13 = 0xE90000000000006ELL;
      }

      if (v8 <= 5)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x696E726F4D64696DLL;
      if (v8 == 2)
      {
        v14 = 0x657369726E7573;
      }

      v15 = 0xEA0000000000676ELL;
      if (v8 == 2)
      {
        v15 = 0xE700000000000000;
      }

      v16 = 0x64694D72616C6F73;
      if (v8)
      {
        v16 = 1853317476;
      }

      v17 = 0xED0000746867696ELL;
      if (v8)
      {
        v17 = 0xE400000000000000;
      }

      if (v8 <= 1)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v8 <= 3)
      {
        v18 = v14;
      }

      else
      {
        v18 = v10;
      }

      if (v8 <= 3)
      {
        v19 = v15;
      }

      else
      {
        v19 = v11;
      }

      if (v5 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            v21 = 0xE600000000000000;
            if (v18 != 0x7465736E7573)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v21 = 0xE400000000000000;
            if (v18 != 1802728804)
            {
              goto LABEL_51;
            }
          }
        }

        else if (v5 == 4)
        {
          v21 = 0xE90000000000006ELL;
          if (v18 != 0x6F6F4E72616C6F73)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v21 = 0xED00006E6F6F6E72;
          if (v18 != 0x657466416574616CLL)
          {
            goto LABEL_51;
          }
        }
      }

      else if (v5 > 1)
      {
        if (v5 != 2)
        {
          v20 = 0x696E726F4D64696DLL;
          v21 = 0xEA0000000000676ELL;
LABEL_49:
          if (v18 != v20)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        v21 = 0xE700000000000000;
        if (v18 != 0x657369726E7573)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v20 = 0x64694D72616C6F73;
        v21 = 0xED0000746867696ELL;
        if (!v5)
        {
          goto LABEL_49;
        }

        v21 = 0xE400000000000000;
        if (v18 != 1853317476)
        {
          goto LABEL_51;
        }
      }

LABEL_50:
      if (v19 == v21)
      {

        if (v9 == (a1 & 0x100) >> 8)
        {
          return v4;
        }

        goto LABEL_4;
      }

LABEL_51:
      v22 = sub_1000E9F74();

      if ((v22 & 1) != 0 && ((v9 ^ ((a1 & 0x100) >> 8)) & 1) == 0)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10009FFE0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *&aColor03color01[8 * a1];
    while (*&aColor03color01[8 * *(*(v2 + 48) + v4)] != v6)
    {
      v7 = sub_1000E9F74();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1000A00CC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000A0138(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1 << 40;
    while (*(*(v2 + 48) + v4) << 40 != v6)
    {
      v7 = sub_1000E9F74();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1000A022C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000E9914();
      v8 = v7;
      if (v6 == sub_1000E9914() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000E9F74();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000A0330(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000A1E1C(&qword_1001320D8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000E95E4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000A043C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_1001320F0);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10009F208(v5, v6);
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

unint64_t sub_1000A0540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000125FC(&unk_100133160);
  v3 = sub_1000E9EA4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  result = sub_10009F4AC(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
    return &_swiftEmptyDictionarySingleton;
  }

  v11 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v12 = v3[7] + 32 * result;
    *v12 = v5;
    *(v12 + 8) = v6 & 1;
    *(v12 + 16) = v7;
    *(v12 + 24) = v8;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    v16 = v5;
    sub_10009870C(v7, v8);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v11 - 4);
    v5 = *(v11 - 3);
    v6 = *(v11 - 16);
    v7 = *(v11 - 1);
    v8 = *v11;
    result = sub_10009F4AC(v4);
    v11 += 40;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A0670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&unk_100131E50);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10009F208(v5, v6);
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

unint64_t sub_1000A0774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&unk_1001320A0);
    v3 = sub_1000E9EA4();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 176);
      v40 = *(v4 + 160);
      v41 = v6;
      v42 = *(v4 + 192);
      v43 = *(v4 + 208);
      v7 = *(v4 + 112);
      v36 = *(v4 + 96);
      v37 = v7;
      v8 = *(v4 + 144);
      v38 = *(v4 + 128);
      v39 = v8;
      v9 = *(v4 + 48);
      v32 = *(v4 + 32);
      v33 = v9;
      v10 = *(v4 + 80);
      v34 = *(v4 + 64);
      v35 = v10;
      v11 = *(v4 + 16);
      v31[0] = *v4;
      v31[1] = v11;
      v12 = v31[0];
      v13 = v11;
      sub_1000299EC(v31, &v30, &qword_100131018);
      result = sub_10009F2C8(v12, *(&v12 + 1), v13);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v3[6] + 24 * result;
      *v16 = v12;
      *(v16 + 16) = v13;
      v17 = v3[7] + 192 * result;
      v18 = v32;
      v19 = v33;
      v20 = v35;
      *(v17 + 32) = v34;
      *(v17 + 48) = v20;
      *v17 = v18;
      *(v17 + 16) = v19;
      v21 = v36;
      v22 = v37;
      v23 = v39;
      *(v17 + 96) = v38;
      *(v17 + 112) = v23;
      *(v17 + 64) = v21;
      *(v17 + 80) = v22;
      v24 = v40;
      v25 = v41;
      v26 = v42;
      *(v17 + 176) = v43;
      *(v17 + 144) = v25;
      *(v17 + 160) = v26;
      *(v17 + 128) = v24;
      v27 = v3[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_11;
      }

      v3[2] = v29;
      if (!i)
      {

        return v3;
      }

      v4 += 224;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A092C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_1001320B8);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 72); ; i += 48)
    {
      v20 = v1;
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 24);
      v8 = *(i - 5);
      v9 = *(i - 16);
      v10 = *(i - 3);
      v11 = *(i - 8);
      v12 = *(i - 1);
      v21 = *i;
      sub_1000A1DD4(v5, v6, v7);
      result = sub_10009F2C8(v5, v6, v7);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v3[6] + 24 * result;
      *v15 = v5;
      *(v15 + 8) = v6;
      *(v15 + 16) = v7;
      v16 = v3[7] + 24 * result;
      *v16 = v8;
      *(v16 + 4) = v9;
      *(v16 + 8) = v10;
      *(v16 + 12) = v11;
      *(v16 + 16) = v12;
      *(v16 + 20) = v21;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_1000A0A98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_1001320B0);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 12);
      v9 = *(i - 1);
      v10 = *i;
      sub_1000A1DD4(v5, v6, v7);
      result = sub_10009F2C8(v5, v6, v7);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 24 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      v14 = v3[7] + 16 * result;
      *v14 = v8;
      *(v14 + 8) = v9;
      *(v14 + 12) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_1000A0BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100132098);
    v3 = sub_1000E9EA4();
    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 16);
      v11 = *i;
      result = sub_10009F354(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

void *sub_1000A0CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000125FC(&qword_100132090);
  v3 = sub_1000E9EA4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10009F354(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_10009F354(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000A0DD4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000125FC(&qword_1001320F8);
  v3 = sub_1000E9EA4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10009F4AC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10009F4AC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A0EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100132128);
    v3 = sub_1000E9EA4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000299EC(v4, &v11, &unk_100130CE0);
      v5 = v11;
      result = sub_10009F59C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100032864(&v12, (v3[7] + 32 * result));
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

__n128 sub_1000A1014(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A1028(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000A1070(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_1000A10D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000125FC(&qword_1001320D0);
  v3 = sub_1000E9EA4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10009F354(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;
    swift_unknownObjectRetain();
    v8 = sub_10009F354(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A11E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&unk_100133150);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *i;
      v8 = v6 ? 256 : 0;
      result = sub_10009F3BC(v8 | v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 2 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_13;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}