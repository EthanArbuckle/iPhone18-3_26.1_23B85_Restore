uint64_t sub_100028C28(int a1, int a2)
{
  v3 = v2;
  v6 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v177[-v8];
  v10 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v197 = &v177[-v12];
  v199 = sub_100034354();
  v13 = *(v199 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v199);
  v16 = &v177[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v198 = type metadata accessor for Geotime();
  v17 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v19 = &v177[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100034874();
  v202 = *(v20 - 1);
  v203 = v20;
  v21 = *(v202 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v177[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v22);
  v27 = &v177[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v177[-v29];
  __chkstk_darwin(v28);
  v191 = &v177[-v31];
  sub_100007864(*(v3 + 16), &v209);
  v204 = v212;
  if (v212 == 1)
  {
    sub_100034814();
    v32 = sub_100034854();
    v33 = sub_100034C64();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to create configuration", v34, 2u);
    }

    return (*(v202 + 8))(v24, v203);
  }

  v192 = v27;
  v193 = v16;
  v188 = v19;
  v189 = a1;
  v36 = v209;
  v37 = v210;
  v200 = v213;
  v195 = v214;
  v38 = v215;
  v217 = v210;
  v216[0] = *v211;
  *(v216 + 3) = *&v211[3];
  sub_10002AD2C();
  v39 = *(v3 + 120);

  v40 = sub_100034714();

  v41 = *(v3 + 16);
  v42 = sub_100009644(v41, v40);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v196 = v42;

  v49 = *(v3 + 24);
  v201 = v36;
  v194 = v13;
  v187 = v9;
  v190 = a2;
  if (v49 != v36)
  {
    v62 = v38;
    v63 = *(v3 + 72);
    v186 = (v3 + 72);
    v185 = (v3 + 76);
    v184 = (v3 + 80);
    v183 = (v3 + 88);
    if (v63 == v44)
    {
      v65 = *(v3 + 80) == v48 && *(v3 + 76) == v46;
      v66 = v65 && *(v3 + 88) == v196;
LABEL_35:
      v181 = v66;
      goto LABEL_46;
    }

LABEL_45:
    v181 = 0;
LABEL_46:
    v71 = v204;
    sub_100034814();
    v218 = v200;
    v72 = v71;

    sub_10001CCAC(&v218, &v205, &unk_1000481C0, &qword_100036F70);
    v73 = v195;
    sub_1000053EC(v195);
    v74 = sub_100034854();
    v75 = sub_100034C64();
    v180 = v72;

    v57 = v73;
    v55 = v62;
    sub_100007DDC(&v218, &unk_1000481C0, &qword_100036F70);
    sub_1000054D4(v73);
    v191 = v74;
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v182 = v62;
      v77 = v76;
      v205 = swift_slowAlloc();
      *v77 = 136315394;
      v78 = *(v3 + 24);
      v79 = *(v3 + 32);
      v179 = v30;
      v80 = *(v3 + 40);
      v82 = *(v3 + 56);
      v81 = *(v3 + 64);
      v83 = *(v3 + 48);
      v178 = v75;
      v84 = v83;
      v85 = v80;
      sub_1000053EC(v82);
      v86 = sub_100007B44(v78, v79, v80);
      v88 = v87;

      v89 = v82;
      v57 = v195;
      sub_1000054D4(v89);
      v90 = sub_10001AF94(v86, v88, &v205);

      *(v77 + 4) = v90;
      *(v77 + 12) = 2080;
      v91 = v217;
      v92 = v180;
      sub_10001CCAC(&v218, &v219, &unk_1000481C0, &qword_100036F70);
      sub_1000053EC(v57);
      v93 = sub_100007B44(v201, v91, v204);
      v95 = v94;

      sub_100007DDC(&v218, &unk_1000481C0, &qword_100036F70);
      sub_1000054D4(v57);
      v96 = sub_10001AF94(v93, v95, &v205);

      *(v77 + 14) = v96;
      v97 = v191;
      _os_log_impl(&_mh_execute_header, v191, v178, "Configuration changed from: %s; to: %s", v77, 0x16u);
      swift_arrayDestroy();

      v55 = v182;

      (*(v202 + 8))(v179, v203);
    }

    else
    {

      (*(v202 + 8))(v30, v203);
    }

    v56 = v192;
    if (v181)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (*(v3 + 32))
  {
    v50 = 0x6C6961746544;
  }

  else
  {
    v50 = 1819047238;
  }

  if (*(v3 + 32))
  {
    v51 = 0xE600000000000000;
  }

  else
  {
    v51 = 0xE400000000000000;
  }

  if (v37)
  {
    v52 = 0x6C6961746544;
  }

  else
  {
    v52 = 1819047238;
  }

  if (v37)
  {
    v53 = 0xE600000000000000;
  }

  else
  {
    v53 = 0xE400000000000000;
  }

  if (v50 != v52 || v51 != v53)
  {
    v67 = sub_100034EC4();

    v68 = *(v3 + 72);
    v69 = *(v3 + 80);
    v186 = (v3 + 72);
    v70 = *(v3 + 88);
    v183 = (v3 + 88);
    v55 = v38;
    v56 = v192;
    v185 = (v3 + 76);
    v184 = (v3 + 80);
    if (v68 == v44 && *(v3 + 76) == v46 && v69 == v48 && v70 == v196)
    {
      if (v67)
      {
        v57 = v195;
        goto LABEL_24;
      }

      v62 = v38;
      v66 = 1;
      goto LABEL_35;
    }

    if (v67)
    {
      goto LABEL_43;
    }

    v62 = v38;
    goto LABEL_45;
  }

  v54 = *(v3 + 72);
  v186 = (v3 + 72);
  v55 = v38;
  v56 = v192;
  v185 = (v3 + 76);
  v184 = (v3 + 80);
  v183 = (v3 + 88);
  if (v54 != v44)
  {
LABEL_43:
    v57 = v195;
LABEL_50:
    sub_100034814();

    v98 = sub_100034854();
    v99 = sub_100034C64();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      *v100 = 136315394;
      v101 = *v186;
      v102 = *v185;
      v103 = *v184;
      v104 = *v183;
      v105 = sub_100008654();
      v107 = sub_10001AF94(v105, v106, &v205);

      *(v100 + 4) = v107;
      *(v100 + 12) = 2080;
      v108 = sub_100008654();
      v110 = sub_10001AF94(v108, v109, &v205);

      *(v100 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v98, v99, "Environment changed from: %s; to: %s", v100, 0x16u);
      swift_arrayDestroy();
    }

    (*(v202 + 8))(v56, v203);
    goto LABEL_53;
  }

  v57 = v195;
  if (*(v3 + 76) != v46 || *(v3 + 80) != v48 || *(v3 + 88) != v196)
  {
    goto LABEL_50;
  }

LABEL_24:
  if ((v190 & 1) == 0)
  {
    v58 = v191;
    sub_100034814();
    v59 = sub_100034854();
    v60 = sub_100034C64();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Configuration and Environment are equal and not rotating", v61, 2u);

      v219 = v204;
      sub_100007DDC(&v219, &unk_100047890, &unk_100036B40);
      v205 = v200;
      sub_100007DDC(&v205, &unk_1000481C0, &qword_100036F70);
      sub_1000054D4(v57);
    }

    else
    {
      v219 = v204;
      sub_100007DDC(&v219, &unk_100047890, &unk_100036B40);
      v205 = v200;
      sub_100007DDC(&v205, &unk_1000481C0, &qword_100036F70);
      sub_1000054D4(v57);
    }

    return (*(v202 + 8))(v58, v203);
  }

LABEL_53:
  v111 = *(v3 + 96);
  if (!v111)
  {
    v128 = *(v3 + 40);
    v129 = *(v3 + 48);
    v130 = *(v3 + 56);
    v131 = *(v3 + 64);
    *(v3 + 24) = v201;
    *(v3 + 32) = v217;
    *(v3 + 33) = v216[0];
    *(v3 + 36) = *(v216 + 3);
    v132 = v200;
    *(v3 + 40) = v204;
    *(v3 + 48) = v132;
    *(v3 + 56) = v57;
    *(v3 + 64) = v55;

    return sub_1000054D4(v130);
  }

  v112 = *(v3 + 24);
  v113 = v111;
  v114 = v113;
  v115 = v201;
  v116 = v204;
  if (v112 != v201)
  {
    [v113 setVista:v201];
  }

  v117 = v200;
  v219 = v200;
  v118 = *(v3 + 40);
  v119 = *(v3 + 48);
  v120 = *(v3 + 56);
  v121 = *(v3 + 64);
  *(v3 + 24) = v115;
  *(v3 + 32) = v217;
  *(v3 + 33) = v216[0];
  *(v3 + 36) = *(v216 + 3);
  *(v3 + 40) = v116;
  *(v3 + 48) = v117;
  *(v3 + 56) = v57;
  *(v3 + 64) = v55;
  v203 = v116;
  sub_10001CCAC(&v219, &v205, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v57);

  v122 = sub_1000054D4(v120);
  v123 = v196;
  v124 = v199;
  if ((v190 & 1) == 0)
  {
    *v186 = v44;
    *v185 = v46;
    *v184 = v48;
    *v183 = v123;
  }

  v125 = v188;
  v126 = v197;
  if (v57)
  {
    v57(v122);
    v127 = v194;
    (*(v194 + 56))(v126, 0, 1, v124);
    (*(v127 + 32))(v193, v126, v124);
  }

  else
  {
    v133 = v194;
    (*(v194 + 56))(v197, 1, 1, v124);
    sub_100034334();
    if ((*(v133 + 48))(v126, 1, v124) != 1)
    {
      sub_100007DDC(v126, &unk_100048480, &qword_100036730);
    }
  }

  v134 = v203;
  if (!v204)
  {
    v134 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  LOBYTE(v135) = v217;
  (*(v194 + 32))(v125, v193, v124);
  *(v125 + *(v198 + 20)) = v134;
  if (v201 <= 2)
  {
    if (v201)
    {
      if (v201 == 1)
      {
        if (v135)
        {
          v146 = v203;
          sub_100009BF0(v125, v123);
          goto LABEL_102;
        }
      }

      else if (v201 == 2)
      {
        v139 = qword_100046A10;
        v140 = v203;
        if (v139 != -1)
        {
          swift_once();
        }

        if ((v123 - 3) >= 2)
        {
          v141 = &dword_100046D18;
          goto LABEL_101;
        }

        v138 = &dword_100046D38;
        goto LABEL_94;
      }
    }

    else if (v135)
    {
      v144 = qword_100046A80;
      v145 = v203;
      if (v144 != -1)
      {
        swift_once();
      }

      if ((v123 - 3) >= 2)
      {
        v141 = &dword_100046F58;
        goto LABEL_101;
      }

      v138 = &dword_100046F78;
      goto LABEL_94;
    }

LABEL_91:
    v147 = qword_100046A00;
    v148 = v203;
    if (v147 != -1)
    {
      goto LABEL_122;
    }

    goto LABEL_92;
  }

  if ((v201 - 4) >= 6)
  {
    if (v201 == 3)
    {
      v142 = qword_100046A08;
      v143 = v203;
      if (v142 != -1)
      {
        swift_once();
      }

      if ((v123 - 3) >= 2)
      {
        v141 = &dword_100046CD8;
        goto LABEL_101;
      }

      v138 = &dword_100046CF8;
      goto LABEL_94;
    }

    goto LABEL_91;
  }

  v136 = qword_100046A18;
  v137 = v203;
  if (v136 != -1)
  {
    swift_once();
  }

  if ((v123 - 3) >= 2)
  {
    v141 = &dword_100046D58;
    goto LABEL_101;
  }

  v138 = &dword_100046D78;
LABEL_94:
  v149 = *v138;
  v150 = *(v138 + 1);
  v151 = *(v138 + 2);
  v152 = v138[6];
  while (1)
  {
LABEL_102:
    sub_100009914(v135, v123);
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v164 = v163;
    sub_10000A5B0(v125);
    if ((v189 & 1) == 0)
    {
      LODWORD(v205) = v158;
      v206 = v160;
      v207 = v162;
      v208 = v164;
      [v114 applyStyleDefinition:&v205];
      goto LABEL_117;
    }

    sub_10002A3CC();
    v166 = *(v3 + 96);
    if (v166)
    {
      v135 = v166;
      if ([v135 mode])
      {
        [v135 applyMode:0];
      }
    }

    if ((v190 & 1) == 0)
    {
      LODWORD(v205) = v158;
      v206 = v160;
      v207 = v162;
      v208 = v164;
      LODWORD(v165) = 1050253722;
      [v114 animateToStyleDefinition:&v205 duration:v165];
      v171 = 300000000;
      goto LABEL_116;
    }

    [v114 hideLocationDotPulse];
    *(v3 + 114) = 0;
    v167 = *(v3 + 120);

    sub_100034754();
    v169 = v168;

    v170 = (v169 + 0.1) * 1000000000.0;
    if (COERCE_INT(fabs(v170)) > 2139095039)
    {
      __break(1u);
      goto LABEL_120;
    }

    if (v170 > -1.0)
    {
      break;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    swift_once();
LABEL_92:
    if ((v123 - 3) < 2)
    {
      v138 = &dword_100046CB8;
      goto LABEL_94;
    }

    v141 = &dword_100046C98;
LABEL_101:
    v153 = v141[6];
    v154 = *(v141 + 1);
    v155 = *(v141 + 2);
    v156 = *v141;
  }

  if (v170 >= 1.8447e19)
  {
    goto LABEL_121;
  }

  if (v170 <= 0x11E1A300)
  {
    v171 = 300000000;
  }

  else
  {
    v171 = v170;
  }

LABEL_116:
  sub_10002A564(v171);
LABEL_117:
  v172 = sub_100034B44();
  v173 = v187;
  (*(*(v172 - 8) + 56))(v187, 1, 1, v172);
  v174 = swift_allocObject();
  swift_weakInit();
  sub_100034B24();

  v175 = sub_100034B14();
  v176 = swift_allocObject();
  v176[2] = v175;
  v176[3] = &protocol witness table for MainActor;
  v176[4] = v174;

  sub_10000E0F4(0, 0, v173, &unk_100037128, v176);

  sub_100007DDC(&v219, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v57);
}

uint64_t sub_100029FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_100034874();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_100034B24();
  v4[9] = sub_100034B14();
  v9 = sub_100034B04();

  return _swift_task_switch(sub_10002A0D0, v9, v8);
}

uint64_t sub_10002A0D0()
{
  v33 = v0;
  v1 = v0[9];
  v2 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[8];
    v6 = *(Strong + 120);

    v7 = sub_100034714();

    LODWORD(v8) = !sub_1000097C8(*(v4 + 32), v7);
    sub_100034814();
    v9 = sub_100034854();
    v10 = sub_100034C64();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];
    if (v11)
    {
      v31 = v0[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 67109378;
      *(v15 + 4) = v8 & 1;
      *(v15 + 8) = 2080;
      v17 = sub_100034CD4();
      v30 = v13;
      v19 = v8;
      v8 = sub_10001AF94(v17, v18, &v32);

      *(v15 + 10) = v8;
      LOBYTE(v8) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Foreground should be hidden: %{BOOL}d, using orientation: %s", v15, 0x12u);
      sub_1000026BC(v16);

      (*(v12 + 8))(v30, v31);
    }

    else
    {

      (*(v12 + 8))(v13, v14);
    }

    v20 = *(v4 + 96);
    if (v20)
    {
      v21 = v20;
      v22 = [v21 vistaView];
      v23 = [v22 quadViews];

      sub_1000057F4();
      v24 = sub_100034AC4();

      if (v24 >> 62)
      {
        result = sub_100034E44();
        if (result)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_8:
          if ((v24 & 0xC000000000000001) != 0)
          {
            v26 = sub_100034DC4();
          }

          else
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v26 = *(v24 + 32);
          }

          v27 = v26;
          goto LABEL_15;
        }
      }

      v27 = 0;
LABEL_15:

      [v27 setHidden:v8 & 1];

      goto LABEL_16;
    }
  }

LABEL_16:
  v28 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10002A3CC()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 136))
  {
    v8 = *(v1 + 136);

    sub_100034814();
    v9 = sub_100034854();
    v10 = sub_100034C64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Applying scheduled deactive mode", v11, 2u);
    }

    (*(v3 + 8))(v7, v2);
    sub_1000035B0(&qword_1000479D0, &unk_100036DD0);
    sub_100034B54();

    v12 = *(v1 + 136);
    *(v1 + 136) = 0;
  }

  return result;
}

id sub_10002A564(uint64_t a1)
{
  v3 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8);
  v7 = &v16 - v6;
  if (!*(v1 + 136))
  {
    v8 = *(v1 + 96);
    if (!v8 || (result = [v8 mode], result != 1))
    {
      v9 = sub_100034B44();
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
      v10 = swift_allocObject();
      swift_weakInit();
      sub_100034B24();

      v11 = v1;
      v12 = sub_100034B14();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = a1;
      v13[5] = v10;

      v14 = sub_1000237C8(0, 0, v7, &unk_100037120, v13);
      v15 = *(v11 + 136);
      *(v11 + 136) = v14;
    }
  }

  return result;
}

uint64_t sub_10002A6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  v5[6] = sub_100034B24();
  v5[7] = sub_100034B14();
  v7 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_10002A7AC;

  return static Task<>.sleep(nanoseconds:)(a4);
}

uint64_t sub_10002A7AC()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = sub_100034B04();
  if (v2)
  {
    v8 = sub_100012B6C;
  }

  else
  {
    v8 = sub_10002A908;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10002A908()
{
  v1 = v0[7];

  if ((sub_100034B64() & 1) == 0)
  {
    v2 = v0[5];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + 96);
      if (v4)
      {
        v5 = Strong;
        v6 = v4;
        if ([v6 mode] != 1)
        {
          [v6 applyMode:1];
        }

        Strong = v5;
      }

      v7 = *(Strong + 136);
      *(Strong + 136) = 0;
    }
  }

  v8 = v0[1];

  return v8();
}

void sub_10002A9F0()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 120);

  v8 = sub_100034704();

  if ((v8 & 1) == 0 && (*(v1 + 114) & 1) == 0)
  {
    sub_100034814();
    v9 = sub_100034854();
    v10 = sub_100034C64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Applying deactive mode", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    sub_10002A3CC();
    v12 = *(v1 + 96);
    if (v12)
    {
      v13 = v12;
      if ([v13 mode] != 1)
      {
        [v13 applyMode:1];
      }
    }
  }
}

void sub_10002ABA0(void *a1)
{
  v3 = a1;
  sub_100024620(a1);
  sub_10002AD2C();
  v4 = *(v1 + 96);
  if (v4)
  {
    v5 = objc_allocWithZone(CLLocation);
    v10 = v4;
    v6 = [v5 initWithLatitude:37.33182 longitude:-122.03118];
    [v10 updateLocation:v3 fallbackLocation:v6 animated:0];

    if ([v10 mode] == 1)
    {
      v7 = [v10 vistaView];
      [v7 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }

    if (!*(v1 + 24) && *(v1 + 152) && (*(v1 + 144) & 1) != 0)
    {
      sub_10002A3CC();
      v8 = *(v1 + 96);
      if (v8)
      {
        v9 = v8;
        if ([v9 mode])
        {
          [v9 applyMode:0];
        }
      }

      sub_10002A564(1500000000);
      [v10 pulseLocationDot];
    }
  }
}

void sub_10002AD2C()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v3 = v1;
    if (![v3 vista])
    {
      v2 = 0.0;
      if (((*(v0 + 152) != 0) & *(v0 + 144)) != 0)
      {
        v2 = 1.0;
      }

      [v3 setLocationDotAlpha:v2];
    }
  }
}

void sub_10002ADB8()
{
  v0 = sub_100034874();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100034814();
    v7 = sub_100034854();
    v8 = sub_100034C64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Location Updated", v9, 2u);
    }

    v10 = (*(v1 + 8))(v4, v0);
    v11 = *(v6 + 104);
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationQueue);
      __chkstk_darwin(v10);
      v16[-2] = v13;
      v14 = v13;
      sub_1000035B0(&unk_100047890, &unk_100036B40);
      sub_100034CA4();

      v15 = v16[2];
    }

    else
    {
      v15 = 0;
    }

    sub_10002ABA0(v15);
  }
}

uint64_t sub_10002AFCC()
{
  v0 = sub_100034874();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100034814();
    v6 = sub_100034854();
    v7 = sub_100034C64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Location Failed", v8, 2u);
    }

    (*(v1 + 8))(v4, v0);
    sub_10002ABA0(0);
  }

  return result;
}

uint64_t sub_10002B218(char *a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v175 = a3;
  v7 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v166 = &v162 - v12;
  *&v174 = sub_100034354();
  v13 = *(v174 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v174);
  v172 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  *&v170 = &v162 - v17;
  *&v171 = type metadata accessor for Geotime();
  v18 = *(*(v171 - 8) + 64);
  v19 = __chkstk_darwin(v171);
  v164 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  *&v173 = &v162 - v21;
  v22 = sub_100034874();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v27 = sub_100034854();
  v28 = sub_100034C64();
  v29 = os_log_type_enabled(v27, v28);
  v167 = v11;
  v165 = a2;
  v176 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v168 = v22;
    v31 = v30;
    v32 = swift_slowAlloc();
    v169 = v13;
    v177[0] = v32;
    *v31 = 134218498;
    *(v31 + 4) = v175.n128_f32[0];
    *(v31 + 12) = 2080;
    v33 = sub_100034CD4();
    v35 = sub_10001AF94(v33, v34, v177);

    *(v31 + 14) = v35;
    *(v31 + 22) = 2080;
    v36 = sub_100034CD4();
    v38 = sub_10001AF94(v36, v37, v177);

    *(v31 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Editor rotating: %f from: %s to: %s", v31, 0x20u);
    swift_arrayDestroy();
    v13 = v169;

    result = (*(v23 + 8))(v26, v168);
  }

  else
  {

    result = (*(v23 + 8))(v26, v22);
  }

  v40 = *(v4 + 96);
  if (!v40)
  {
    return result;
  }

  v41 = 0.0;
  v42 = 0.0;
  if ((v176 - 2) <= 2)
  {
    v42 = flt_100037134[(v176 - 2)];
  }

  v43 = *(v4 + 48);
  v44 = *(v4 + 56);
  v45 = *(v4 + 64);
  v46 = v165;
  if ((v165 - 2) <= 2)
  {
    v41 = flt_100037134[v165 - 2];
  }

  v47 = *(v4 + 40);
  v48 = vabds_f32(v42, v41);
  if (v48 == 3.1416)
  {
    if (v42 < v41)
    {
      v41 = v41 + -6.2832;
    }
  }

  else if (v48 > 3.1416)
  {
    if (v42 >= v41)
    {
      v49 = -6.2832;
    }

    else
    {
      v49 = 6.2832;
    }

    v42 = v42 + v49;
  }

  v50 = *(v4 + 24);
  LODWORD(v169) = *(v4 + 32);
  v162 = v43;
  v51 = v40;
  v176 = v47;
  sub_1000053EC(v44);
  v163 = v51;
  v52 = [v51 vistaView];
  v53 = [v52 scene];

  v54 = *(v4 + 72);
  v55 = *(v4 + 76);
  v56 = *(v4 + 80);
  v57 = *(v4 + 88);
  v58 = *(v4 + 16);
  v165 = sub_100009644(v58, v46);

  v168 = v45;
  if (v44)
  {
    v59 = v166;
    v44();
    v60 = *(v13 + 56);
    v61 = v174;
    v60(v59, 0, 1, v174);
    (*(v13 + 32))(v170, v59, v61);
  }

  else
  {
    v60 = *(v13 + 56);
    v62 = v166;
    v63 = v174;
    v60(v166, 1, 1, v174);
    sub_100034334();
    if ((*(v13 + 48))(v62, 1, v63) != 1)
    {
      sub_100007DDC(v62, &unk_100048480, &qword_100036730);
    }
  }

  v64 = v176;
  v166 = v47;
  if (!v47)
  {
    v64 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v65 = *(v13 + 32);
  v66 = v173;
  v65(v173, v170, v174);
  *(v66 + *(v171 + 20)) = v64;
  if (v50 > 2)
  {
    if ((v50 - 4) < 6)
    {
      v67 = qword_100046A18;
      v68 = v176;
      if (v67 != -1)
      {
        swift_once();
      }

      v69 = v164;
      if ((v57 - 3) < 2)
      {
        v70 = &dword_100046D78;
LABEL_53:
        v81 = *v70;
        v82 = *(v70 + 1);
        v83 = *(v70 + 2);
        v84 = v70[6];
        goto LABEL_59;
      }

      v73 = &dword_100046D58;
      goto LABEL_58;
    }

    if (v50 == 3)
    {
      v74 = qword_100046A08;
      v75 = v176;
      if (v74 != -1)
      {
        swift_once();
      }

      v69 = v164;
      if ((v57 - 3) < 2)
      {
        v70 = &dword_100046CF8;
        goto LABEL_53;
      }

      v73 = &dword_100046CD8;
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (!v50)
  {
    if (v169)
    {
      v76 = qword_100046A80;
      v77 = v176;
      if (v76 != -1)
      {
        swift_once();
      }

      v69 = v164;
      if ((v57 - 3) < 2)
      {
        v70 = &dword_100046F78;
        goto LABEL_53;
      }

      v73 = &dword_100046F58;
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v50 == 1)
  {
    if (v169)
    {
      v78 = v176;
      sub_100009BF0(v173, v57);
      v69 = v164;
      goto LABEL_59;
    }

    goto LABEL_49;
  }

  if (v50 != 2)
  {
LABEL_49:
    v79 = qword_100046A00;
    v80 = v176;
    if (v79 != -1)
    {
      swift_once();
    }

    v69 = v164;
    if ((v57 - 3) < 2)
    {
      v70 = &dword_100046CB8;
      goto LABEL_53;
    }

    v73 = &dword_100046C98;
    goto LABEL_58;
  }

  v71 = qword_100046A10;
  v72 = v176;
  if (v71 != -1)
  {
    swift_once();
  }

  v69 = v164;
  if ((v57 - 3) < 2)
  {
    v70 = &dword_100046D38;
    goto LABEL_53;
  }

  v73 = &dword_100046D18;
LABEL_58:
  v85 = v73[6];
  v86 = *(v73 + 1);
  v87 = *(v73 + 2);
  v88 = *v73;
LABEL_59:
  v89 = v50;
  sub_100009914(v169, v57);
  v91 = v90;
  v170 = v92;
  v94 = v93;
  v95 = sub_10000A5B0(v173);
  v96 = v44;
  if (v44)
  {
    v97 = v167;
    v98 = v96;
    (v96)(v95);
    v99 = v174;
    v60(v97, 0, 1, v174);
    v65(v172, v97, v99);
  }

  else
  {
    v98 = 0;
    v100 = v167;
    v101 = v174;
    v60(v167, 1, 1, v174);
    sub_100034334();
    if ((*(v13 + 48))(v100, 1, v101) != 1)
    {
      sub_100007DDC(v100, &unk_100048480, &qword_100036730);
    }
  }

  v102 = v176;
  if (!v166)
  {
    v102 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v65(v69, v172, v174);
  *(v69 + *(v171 + 20)) = v102;
  if (v89 > 2)
  {
    v103 = v89;
    if ((v89 - 4) < 6)
    {
      v104 = qword_100046A18;
      v105 = v176;
      v106 = v165;
      if (v104 != -1)
      {
        swift_once();
      }

      v107 = v163;
      if ((v106 - 3) < 2)
      {
        v108 = &dword_100046D78;
LABEL_95:
        v119 = *v108;
        v120 = *(v108 + 1);
        v121 = *(v108 + 2);
        v122 = v108[6];
        goto LABEL_101;
      }

      v111 = &dword_100046D58;
      goto LABEL_100;
    }

    v106 = v165;
    if (v103 == 3)
    {
      v112 = qword_100046A08;
      v113 = v176;
      if (v112 != -1)
      {
        swift_once();
      }

      v107 = v163;
      if ((v106 - 3) < 2)
      {
        v108 = &dword_100046CF8;
        goto LABEL_95;
      }

      v111 = &dword_100046CD8;
      goto LABEL_100;
    }

    goto LABEL_91;
  }

  v103 = v89;
  if (!v89)
  {
    v106 = v165;
    if (v169)
    {
      v114 = qword_100046A80;
      v115 = v176;
      if (v114 != -1)
      {
        swift_once();
      }

      v107 = v163;
      if ((v106 - 3) < 2)
      {
        v108 = &dword_100046F78;
        goto LABEL_95;
      }

      v111 = &dword_100046F58;
      goto LABEL_100;
    }

    goto LABEL_91;
  }

  v106 = v165;
  if (v103 == 1)
  {
    if (v169)
    {
      v116 = v176;
      sub_100009BF0(v69, v106);
      v107 = v163;
      goto LABEL_101;
    }

    goto LABEL_91;
  }

  if (v103 != 2)
  {
LABEL_91:
    v117 = qword_100046A00;
    v118 = v176;
    if (v117 != -1)
    {
      swift_once();
    }

    v107 = v163;
    if ((v106 - 3) < 2)
    {
      v108 = &dword_100046CB8;
      goto LABEL_95;
    }

    v111 = &dword_100046C98;
    goto LABEL_100;
  }

  v109 = qword_100046A10;
  v110 = v176;
  if (v109 != -1)
  {
    swift_once();
  }

  v107 = v163;
  if ((v106 - 3) < 2)
  {
    v108 = &dword_100046D38;
    goto LABEL_95;
  }

  v111 = &dword_100046D18;
LABEL_100:
  v123 = v111[6];
  v124 = *(v111 + 1);
  v125 = *(v111 + 2);
  v126 = *v111;
LABEL_101:
  sub_100009914(v169, v106);
  v128 = v127;
  v174 = v129;
  v131 = v130;
  sub_10000A5B0(v69);
  *&v132 = v91 + (v175.n128_f32[0] * (v128 - v91));
  [v53 setCameraOrbit:v132];
  *&v133 = vceqz_f32(*&v170);
  if ((vpmin_u32(*&v133, *&v133).u32[0] & 0x80000000) != 0 || (v134 = vceqz_f32(*&v174), (vpmin_u32(v134, v134).u32[0] & 0x80000000) != 0) || (vceq_f32(*&v170, *&v174).u8[0] & 1) != 0 || (v135 = *(&v170 + 1), v136 = *(&v174 + 1), *(&v170 + 1) == *(&v174 + 1)))
  {
    v137 = vmla_n_f32(*&v170, vsub_f32(*&v174, *&v170), v175.n128_f32[0]);
  }

  else
  {
    *&v133 = vmul_f32(*&v170, *&v170);
    v151 = vadd_f32(*&v133, vdup_lane_s32(*&v133, 1)).u32[0];
    v152 = vmul_f32(*&v174, *&v174);
    LODWORD(v173) = sqrtf(vaddv_f32(*&v133));
    *&v133 = vadd_f32(v152, vdup_lane_s32(v152, 1));
    v171 = v133;
    LODWORD(v172) = sqrtf(vaddv_f32(v152));
    v153 = vrsqrte_f32(v151);
    v154 = vmul_f32(v153, vrsqrts_f32(v151, vmul_f32(v153, v153)));
    v155 = acosf(fminf(fmaxf(vmul_f32(*&v170, vmul_f32(v154, vrsqrts_f32(v151, vmul_f32(v154, v154)))).f32[0], -1.0), 1.0));
    if (v135 >= 0.0)
    {
      v156 = v155;
    }

    else
    {
      v156 = 6.2832 - v155;
    }

    v157 = vrsqrte_f32(v171);
    v158 = vmul_f32(v157, vrsqrts_f32(v171, vmul_f32(v157, v157)));
    v159 = acosf(fminf(fmaxf(vmul_f32(*&v174, vmul_f32(v158, vrsqrts_f32(v171, vmul_f32(v158, v158)))).f32[0], -1.0), 1.0));
    if (v136 < 0.0)
    {
      v159 = 6.2832 - v159;
    }

    if ((v159 - v156) >= 3.1406)
    {
      v156 = v156 + 6.2832;
    }

    else if ((v156 - v159) > 3.1426)
    {
      v159 = v159 + 6.2832;
    }

    *&v160 = *&v173 + (v175.n128_f32[0] * (*&v172 - *&v173));
    v174 = v160;
    v161 = __sincosf_stret(v156 + (v175.n128_f32[0] * (v159 - v156)));
    v137 = vmul_n_f32(__PAIR64__(LODWORD(v161.__sinval), LODWORD(v161.__cosval)), *&v174);
  }

  [v53 setCameraOffset:*&v137];
  *&v138 = *&CLLocationCoordinate2DMake(0.0, 0.0);
  if (v103 == 1)
  {
    v139.f64[1] = v138;
  }

  else
  {
    __asm { FMOV            V0.2S, #-15.0 }

    v139 = vcvtq_f64_f32(vmul_f32(vmla_n_f32(v94, vsub_f32(v131, v94), v175.n128_f32[0]), _D0));
  }

  [v53 setOffsetCoordinate:v139.f64[1]];
  [v53 restingCameraRoll];
  v146 = v145;
  [v53 cameraPosition];
  v174 = v147;
  [v53 cameraTarget];
  v173 = v148;
  [v53 cameraUp];
  *&v149 = (v42 + (v175.n128_f32[0] * (v41 - v42))) + v146;
  [v53 setCamera:*&v174 target:*&v173 up:v150 roll:v149];
  [v53 updateCamera];

  return sub_1000054D4(v98);
}

uint64_t sub_10002C26C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C2A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001D270;

  return sub_100029FDC(a1, v4, v5, v6);
}

uint64_t sub_10002C35C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002C39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C9D4;

  return sub_10002A6F8(a1, v4, v5, v7, v6);
}

uint64_t sub_10002C45C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C49C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C9D4;

  return sub_100029FDC(a1, v4, v5, v6);
}

uint64_t sub_10002C550()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 56);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002C5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C5E0(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v2 + 113) = 0;
  v6 = sub_100034784();
  *(v2 + 96) = 0u;
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v2 + 120) = sub_100034774();
  *(v2 + 128) = [objc_allocWithZone(type metadata accessor for _AegirEditingCoordinatorScrollViewScrollObserver()) init];
  *(v2 + 136) = 0;
  *(v2 + 144) = 2;
  *(v2 + 152) = 0;
  *(v2 + 16) = a2;
  *(v2 + 72) = vneg_f32(0x7F0000007FLL);
  *(v2 + 80) = 2139095040;
  *(v2 + 88) = 0;
  v9 = a2;
  *(v3 + 112) = !UIAccessibilityIsReduceMotionEnabled();
  v10 = v9;
  sub_100007864(v10, &v29);
  v11 = v31;
  if (v31 == 1)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0uLL;
  }

  else
  {
    v14 = v33;
    v15 = v32;
    v13 = v30;
    v12 = v29;
  }

  *(v3 + 24) = v12;
  *(v3 + 32) = v13 & 1;
  *(v3 + 40) = v11;
  *(v3 + 48) = v15;
  *(v3 + 64) = v14;
  v16 = *(v3 + 120);

  sub_100034724();

  v17 = *(v3 + 120);
  sub_10002D5E0(&unk_1000481D0, v18, type metadata accessor for AegirEditingCoordinator);

  sub_100034764();

  v19 = *(v3 + 128);
  swift_weakAssign();
  if (*(v3 + 112) == 1)
  {
    [v10 setLooksScrollingDecelerationRate:PRScrollViewDecelerationRateSlow];
  }

  v20 = *(v3 + 56);
  v35 = *(v3 + 40);
  v36 = v20;
  v34 = *(v3 + 24);
  v37 = v35;
  v21 = v20;
  sub_10001CCAC(&v37, v28, &unk_100047890, &unk_100036B40);
  sub_10001CCAC(&v37 + 8, v28, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v21);
  v22 = sub_100027C58(&v34, v10);
  sub_100007DDC(&v37, &unk_100047890, &unk_100036B40);
  sub_100007DDC(&v37 + 8, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v21);
  [v22 setStyleAnimationDelegate:v3];
  [v22 setPulseAnimationDelegate:v3];
  v23 = *(v3 + 96);
  *(v3 + 96) = v22;
  v24 = v22;

  sub_100028C28(0, 0);
  sub_1000246C0();
  v25 = *(v3 + 104);
  if (v25)
  {
    v26 = (*(v25 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus) - 3) < 2;
  }

  else
  {
    v26 = 2;
  }

  *(v3 + 144) = v26;
  sub_100024A8C(a1);

  return v3;
}

void sub_10002C90C(void *a1)
{
  v2 = v1;
  v4 = [a1 backgroundView];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [v5 superview];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        [v7 _addScrollViewScrollObserver:*(v2 + 128)];
      }
    }
  }

  v8 = *(v2 + 96);
  if (v8)
  {
    v9 = v8;
    v10 = [a1 backgroundView];
    v11 = [a1 floatingView];
    sub_100005528(v10, v11);

    v12 = [v9 vistaView];
    [v12 updateSunLocationAnimated:0];

    sub_10002AD2C();
    v13 = [v9 vistaView];
    [v13 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
  }
}

uint64_t sub_10002CAC0()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Editor did update. Updating editingCoordinator.", v9, 2u);
  }

  result = (*(v3 + 8))(v6, v2);
  if ((*(v1 + 113) & 1) == 0)
  {
    v11 = *(v1 + 120);
    v12 = *(v1 + 16);

    v13 = v12;
    v14 = sub_100034734();

    return sub_100028C28(1, v14 & 1);
  }

  return result;
}

void sub_10002CC4C(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = sub_100034874();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v77 = &v73 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v73 - v12;
  __chkstk_darwin(v11);
  v15 = &v73 - v14;
  sub_100034814();
  v16 = sub_100034854();
  v17 = sub_100034C64();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "finalizeWithCompletion", v18, 2u);
  }

  v21 = *(v4 + 8);
  v20 = v4 + 8;
  v19 = v21;
  v21(v15, v3);
  v22 = [*(a1 + 16) currentLook];
  sub_100004E58(v22, &v82);

  if (v84 != 1)
  {
    v74 = v8;
    v75 = v19;
    v76 = v20;
    v30 = v82;
    v31 = v86;
    v78 = v86;
    v79 = v87;
    v32 = v83;
    v88 = v85;
    v89 = v84;
    *(a1 + 113) = 1;
    v33 = *(a1 + 104);
    if (v33)
    {
      v34 = *&v33[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationQueue];
      __chkstk_darwin(v23);
      *(&v73 - 2) = v33;
      sub_1000053EC(v31);
      sub_10001CCAC(&v88, &v81, &unk_1000481C0, &qword_100036F70);
      v35 = v33;
      sub_1000035B0(&unk_100047890, &unk_100036B40);
      sub_100034CA4();
      v31 = v78;
      sub_100007DDC(&v89, &unk_100047890, &unk_100036B40);

      v36 = v81;
    }

    else
    {
      sub_1000053EC(v31);
      sub_10001CCAC(&v88, &v81, &unk_1000481C0, &qword_100036F70);
      sub_100007DDC(&v89, &unk_100047890, &unk_100036B40);
      v36 = 0;
    }

    v37 = v36;
    v38 = sub_1000079B0(v30, v32 & 1, v36);

    sub_100007DDC(&v88, &unk_1000481C0, &qword_100036F70);
    sub_1000054D4(v31);
    v39 = [objc_msgSend(*(a1 + 16) "environment")];
    swift_unknownObjectRelease();
    sub_100023500(v38);

    isa = sub_100034914().super.isa;

    v81 = 0;
    v41 = [v39 storeUserInfo:isa error:&v81];

    v42 = v81;
    if (!v41)
    {
      goto LABEL_14;
    }

    v43 = *(a1 + 16);
    v44 = v81;
    v45 = [objc_msgSend(v43 "environment")];
    swift_unknownObjectRelease();
    v81 = 0;
    v46 = [v45 loadUserInfoWithError:&v81];

    v42 = v81;
    if (v46)
    {
      sub_100034924();
      v47 = v42;

      v48 = v77;
      sub_100034814();

      v49 = sub_100034854();
      v50 = sub_100034C64();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v81 = v52;
        *v51 = 136315138;
        v53 = v3;
        v54 = v37;
        v55 = sub_100034934();
        v57 = v56;

        v58 = sub_10001AF94(v55, v57, &v81);

        *(v51 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v49, v50, "Stored configuration with userInfo: %s", v51, 0xCu);
        sub_1000026BC(v52);

        sub_100007DDC(&v88, &unk_1000481C0, &qword_100036F70);
        sub_1000054D4(v78);

        v59 = v77;
        v60 = v53;
LABEL_20:
        v75(v59, v60);
        goto LABEL_21;
      }

      sub_100007DDC(&v88, &unk_1000481C0, &qword_100036F70);
      sub_1000054D4(v78);

      v59 = v48;
    }

    else
    {
LABEL_14:
      v77 = v37;
      v61 = v42;
      sub_100034294();

      swift_willThrow();
      v62 = v74;
      sub_100034814();
      swift_errorRetain();
      v63 = sub_100034854();
      v64 = sub_100034C54();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v81 = v66;
        *v65 = 136315138;
        swift_getErrorValue();
        v67 = sub_100034EE4();
        v69 = sub_10001AF94(v67, v68, &v81);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v63, v64, "Failed to store user info in editor.environment.targetConfiguration. %s", v65, 0xCu);
        sub_1000026BC(v66);

        sub_100007DDC(&v88, &unk_1000481C0, &qword_100036F70);
        sub_1000054D4(v78);
      }

      else
      {

        sub_100007DDC(&v88, &unk_1000481C0, &qword_100036F70);
        sub_1000054D4(v78);
      }

      v59 = v62;
    }

    v60 = v3;
    goto LABEL_20;
  }

  sub_100034814();

  v24 = sub_100034854();
  v25 = sub_100034C54();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v19;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = [*(a1 + 16) currentLook];
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "Could not create configuration from current look: %@", v27, 0xCu);
    sub_100007DDC(v28, &unk_1000478C0, &unk_100036B60);

    v19 = v26;
  }

  v19(v13, v3);
LABEL_21:
  (*(v80 + 16))();
  v70 = *(a1 + 96);
  if (v70)
  {
    v71 = v70;
    if ([v71 mode] != 1)
    {
      [v71 applyMode:1];
    }

    v72 = [v71 vistaView];
    [v72 purgeUnused];
  }
}

uint64_t sub_10002D5E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *DeviceUtilities.forceDisableForeground.unsafeMutableAddressor()
{
  if (qword_100046AD0 != -1)
  {
    swift_once();
  }

  return &static DeviceUtilities.forceDisableForeground;
}

void *sub_10002D6B4()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    v1 = [result supportsFamily:1006];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
  }

  static DeviceUtilities.supportsGPUFamilyApple6 = v1;
  return result;
}

char *DeviceUtilities.supportsGPUFamilyApple6.unsafeMutableAddressor()
{
  if (qword_100046AC8 != -1)
  {
    swift_once();
  }

  return &static DeviceUtilities.supportsGPUFamilyApple6;
}

void sub_10002D77C()
{
  v0 = sub_100034984();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    if (sub_1000349B4() == 0x3031303874 && v2 == 0xE500000000000000)
    {

      v4 = 1;
    }

    else
    {
      v4 = sub_100034EC4();
    }
  }

  else
  {
    v4 = 0;
  }

  static DeviceUtilities.forceDisableForeground = v4 & 1;
}

uint64_t sub_10002D868(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

Swift::Void __swiftcall aegirProxyAppDataUsageAttribution()()
{
  nw_parameters_create();
  sub_1000349E4();
  swift_unknownObjectRetain();
  nw_parameters_set_source_application_by_bundle_id();
  swift_unknownObjectRelease_n();
}

uint64_t sub_10002D960@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000348F4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100034904();
  v5 = sub_1000348C4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_1000348D4();
  sub_1000035B0(&qword_100048298, &unk_1000371E0);
  v8 = *(sub_1000343E4() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100037160;
  sub_10002DDFC(&qword_1000482A0, &type metadata accessor for PRRenderingConfiguration);

  sub_1000343D4();
  sub_10002DDFC(&qword_1000482A8, &type metadata accessor for PREditingConfiguration);

  sub_1000343D4();

  *a1 = v11;
  return result;
}

id sub_10002DBBC(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_10002DBFC()
{
  [objc_allocWithZone(type metadata accessor for AegirUpdatingController()) init];
  v0 = sub_1000035B0(&qword_100048288, &unk_100037170);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1000348E4();
  sub_10002DE78(&qword_100048290);
  sub_1000344D4();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10002DD60();
  sub_10002DE78(&qword_100048280);
  sub_1000344B4();
  return 0;
}

unint64_t sub_10002DD60()
{
  result = qword_100048278;
  if (!qword_100048278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048278);
  }

  return result;
}

uint64_t sub_10002DDFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002DE78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100022E0C(&qword_100048288, &unk_100037170);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002DEC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10002DF0C()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for AegirAppViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v1 selector:"onDeviceOrientationDidChange" name:UIDeviceOrientationDidChangeNotification object:0];

  v3 = [objc_opt_self() currentDevice];
  [v3 beginGeneratingDeviceOrientationNotifications];

  if (qword_1000469A0 != -1)
  {
    swift_once();
  }

  v4 = static PreferencePane.aegirPreferencePane;
  v5 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig;
  v6 = *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig];
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig] = static PreferencePane.aegirPreferencePane;
  v7 = v4;

  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  sub_100034434();
  sub_100034484();
  v10 = sub_1000343F4();
  v11 = [v8 standardUserDefaults];
  sub_100034434();

  v12 = sub_100034404();
  v13 = [v8 standardUserDefaults];
  sub_100034434();

  v14 = *&v1[v5];
  if (v14)
  {
    v15 = v1;
    v16 = v14;
    sub_100034474();

    sub_10002E708();
    v17 = *&v15[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController];
    if (v17)
    {
      v18 = v17;
      v19 = [v18 vistaView];
      [v19 setObserver:v15];

      [v18 prepareForTransitions];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10002E20C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = [objc_opt_self() currentDevice];
  [v2 endGeneratingDeviceOrientationNotifications];

  sub_10002EAFC();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AegirAppViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10002E41C()
{
  v1 = sub_100034894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000348B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A83C(0, &qword_100047DB0, OS_dispatch_queue_ptr);
  v11 = sub_100034C94();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_100031BB0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002DEC8;
  aBlock[3] = &unk_100042160;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_1000348A4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100031BD8();
  sub_1000035B0(&unk_1000483C0, "j#");
  sub_100031C30();
  sub_100034D54();
  sub_100034CB4();
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_10002E708()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_100030838(v5, v7, v9, v11);
  v12 = *&v0[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController];
  if (!v12)
  {
    return;
  }

  v38 = v12;
  v13 = [v38 vistaView];
  v14 = [v0 view];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  [v14 addSubview:v13];

  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v16 = sub_100034424();
  if (v16 == 2 || (v16 & 1) == 0)
  {
    sub_10002EBC0();
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  [v38 applyMode:v17];
  sub_10000A83C(0, &qword_1000483B8, UIAction_ptr);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = v1;
  v20 = sub_100034D04();
  v21 = [v19 view];
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v40.origin.x = v24;
  v40.origin.y = v26;
  v40.size.width = v28;
  v40.size.height = v30;
  v31 = [objc_allocWithZone(UIButton) initWithFrame:v20 primaryAction:{20.0, CGRectGetMaxY(v40) + -70.0, 50.0, 50.0}];
  v32 = sub_100034984();
  v33 = [objc_opt_self() imageNamed:v32];

  [v31 setImage:v33 forState:0];
  v34 = [v19 view];
  if (!v34)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v35 = v34;
  [v34 addSubview:v31];

  v36 = *&v19[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton];
  *&v19[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton] = v31;

  v37 = sub_100034424();
  if (v37 != 2 && (v37 & 1) != 0)
  {
    [v38 pulseLocationDot];
  }
}

void sub_10002EAFC()
{
  v1 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton;
  v2 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView;
  v5 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView);
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *(v0 + v4);
    *(v0 + v4) = 0;
  }

  v7 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController;
  v8 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  if (v8)
  {
    v9 = [v8 vistaView];
    [v9 removeFromSuperview];

    v8 = *(v0 + v7);
  }

  *(v0 + v7) = 0;
}

void sub_10002EBC0()
{
  if (qword_1000469B0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1000493C0 + 16);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIScrollView) initWithFrame:{v5, v7, v9, v11}];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v61.origin.x = v16;
  v61.origin.y = v18;
  v61.size.width = v20;
  v61.size.height = v22;
  Width = CGRectGetWidth(v61);
  v24 = [v0 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v62.origin.x = v27;
  v62.origin.y = v29;
  v62.size.width = v31;
  v62.size.height = v33;
  [v12 setContentSize:{Width * v1, CGRectGetHeight(v62)}];
  v34 = objc_opt_self();
  v35 = v12;
  v36 = [v34 clearColor];
  [v35 setBackgroundColor:v36];

  [v35 setPagingEnabled:0];
  [v35 setDelegate:v0];
  [v35 setDecelerationRate:UIScrollViewDecelerationRateNormal];
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v37 = static PreferencePane.aegirGeneralPreferencePane;
  if ([static PreferencePane.aegirGeneralPreferencePane vista] == 1)
  {
    [v35 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v63.origin.x = v39;
    v63.origin.y = v41;
    v63.size.width = v43;
    v63.size.height = v45;
    v46 = CGRectGetWidth(v63);
LABEL_12:
    [v35 setContentOffset:0 animated:{v46, 0.0}];
    goto LABEL_14;
  }

  if ([v37 vista] == 2)
  {
    [v35 bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    v64.origin.x = v48;
    v64.origin.y = v50;
    v64.size.width = v52;
    v64.size.height = v54;
    v55 = CGRectGetWidth(v64);
    v46 = v55 + v55;
    goto LABEL_12;
  }

LABEL_14:
  v56 = [v0 view];
  if (!v56)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v57 = v56;
  [v56 addSubview:v35];

  v58 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapView:"];
  [v35 addGestureRecognizer:v58];

  v59 = *&v0[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView];
  *&v0[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView] = v35;
}

void sub_10002EF94(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  if (!v2)
  {
    return;
  }

  v34 = v2;
  [a1 contentOffset];
  v5 = v4;
  [a1 bounds];
  v7 = v6;
  if (qword_1000469B0 != -1)
  {
    swift_once();
  }

  v8 = qword_1000493C0;
  v9 = *(qword_1000493C0 + 16);
  v10 = fmod(v5, v7) / v7;
  if (v10 > 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = floor(v5 / v7);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v13 = v9 - 1;
  v14 = v12;
  if ((v9 - 1) < v12)
  {
    v14 = v9 - 1;
  }

  v15 = v14 & ~(v14 >> 63);
  if (v15 >= v9)
  {
    goto LABEL_22;
  }

  if (v13 >= v15 + 1)
  {
    v13 = v15 + 1;
  }

  v16 = v8 + 32;
  v17 = v8 + 32 + 48 * v15;
  v19 = *(v17 + 32);
  v18 = *(v17 + 40);
  v20 = *(v17 + 16);
  v31 = *(v17 + 8);
  v21 = *v17;
  v22 = v16 + 48 * v13;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  v28 = *(v22 + 40);
  v33 = *(v17 + 24);
  v32 = v20;
  sub_1000053EC(v19);
  v29 = v26;
  v30 = v25;
  sub_1000053EC(v27);
  sub_100031394(v21, v31, v23, v24, v11);

  sub_1000054D4(v27);
  sub_1000054D4(v19);
}

void sub_10002F25C(void *a1)
{
  v2 = v1;
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034804();
  v9 = a1;
  v10 = sub_100034854();
  v11 = sub_100034C64();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    [v9 contentOffset];
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v10, v11, "scrollViewDidEndDecelerating. %f", v12, 0xCu);
  }

  (*(v5 + 8))(v8, v4);
  sub_10002F544();
  v14 = *(v2 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 vistaView];
    [v16 purgeUnused];
  }
}

uint64_t sub_10002F544()
{
  v3 = v0;
  v4 = type metadata accessor for Geotime();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100034354();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView);
  if (v14)
  {
    v15 = v14;
    [v15 contentOffset];
    if (v16 > 0.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    [v15 bounds];
    v19 = v18;
    if (qword_1000469A8 != -1)
    {
      swift_once();
    }

    v20 = static PreferencePane.aegirGeneralPreferencePane;
    v21 = sub_100034424();
    if (v21 == 2 || (v21 & 1) == 0)
    {
      sub_100034334();
    }

    else
    {
      sub_100034304();
    }

    if (qword_1000469B0 != -1)
    {
      swift_once();
    }

    v22 = floor(v17 / v19);
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        v23 = *(qword_1000493C0 + 16);
        v24 = v23 - 1;
        if ((v23 - 1) >= v22)
        {
          v24 = v22;
        }

        v25 = v24 & ~(v24 >> 63);
        if (v25 < v23)
        {
          v71[1] = v20;
          v26 = qword_1000493C0 + 48 * v25;
          v2 = *(v26 + 32);
          v72 = *(v26 + 40);
          v1 = *(v26 + 48);
          v27 = *(v26 + 56);
          v29 = *(v26 + 64);
          v28 = *(v26 + 72);
          v75 = v29;
          v73 = v27;
          v74 = v28;
          (*(v9 + 16))(v7, v13, v8);
          v30 = *(v3 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation);
          *&v7[*(v4 + 20)] = v30;
          if (v2 <= 2)
          {
            if (v2)
            {
              if (v2 == 1)
              {
                if (v72)
                {
                  v48 = v73;
                  v49 = v1;
                  sub_1000053EC(v75);
                  v50 = v30;
                  sub_100009BF0(v7, 1);
                  goto LABEL_43;
                }
              }

              else if (v2 == 2)
              {
                v36 = v73;
                v37 = v1;
                sub_1000053EC(v75);
                v38 = qword_100046A10;
                v39 = v30;
                if (v38 != -1)
                {
                  swift_once();
                }

                v35 = &dword_100046D18;
                goto LABEL_42;
              }
            }

            else if (v72)
            {
              v44 = v73;
              v45 = v1;
              sub_1000053EC(v75);
              v46 = qword_100046A80;
              v47 = v30;
              if (v46 != -1)
              {
                swift_once();
              }

              v35 = &dword_100046F58;
              goto LABEL_42;
            }
          }

          else
          {
            if ((v2 - 4) < 6)
            {
              v31 = v73;
              v32 = v1;
              sub_1000053EC(v75);
              v33 = qword_100046A18;
              v34 = v30;
              if (v33 == -1)
              {
LABEL_22:
                v35 = &dword_100046D58;
LABEL_42:
                v55 = *v35;
                v56 = *(v35 + 1);
                v57 = *(v35 + 2);
                v58 = v35[6];
LABEL_43:
                sub_100009914(v72, 1);
                v60 = v59;
                v62 = v61;
                v64 = v63;
                v66 = v65;
                sub_10000A5B0(v7);
                v67 = *(v3 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
                if (v67)
                {
                  v68 = v67;
                  [v68 setVista:v2];
                  LODWORD(v76) = v60;
                  v77 = v62;
                  v78 = v64;
                  LODWORD(v79) = v66;
                  [v68 setStyleDefinition:&v76];
                  v69 = sub_10001D27C(v2);
                  v79 = &type metadata for String;
                  v76 = v69;
                  v77 = v70;
                  sub_100034444();
                  sub_10001FCF8(&v76);
                  [v68 cleanUpAfterTransitions];

                  sub_1000054D4(v75);
                  return (*(v9 + 8))(v13, v8);
                }

                else
                {
                  (*(v9 + 8))(v13, v8);

                  return sub_1000054D4(v75);
                }
              }

LABEL_51:
              swift_once();
              goto LABEL_22;
            }

            if (v2 == 3)
            {
              v40 = v73;
              v41 = v1;
              sub_1000053EC(v75);
              v42 = qword_100046A08;
              v43 = v30;
              if (v42 != -1)
              {
                swift_once();
              }

              v35 = &dword_100046CD8;
              goto LABEL_42;
            }
          }

          v51 = v73;
          v52 = v1;
          sub_1000053EC(v75);
          v53 = qword_100046A00;
          v54 = v30;
          if (v53 != -1)
          {
            swift_once();
          }

          v35 = &dword_100046C98;
          goto LABEL_42;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_49;
  }

  return result;
}

void sub_10002FB7C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Geotime();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100034354();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v75 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100034874();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v69[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v69[-v18];
  v20 = *&v2[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController];
  if (v20)
  {
    v73 = v8;
    v74 = v7;
    v72 = v9;
    v21 = v20;
    [v21 setVistaTransitionStyle:0];
    v22 = [v21 vistaView];
    [a1 locationInView:v22];
    v24 = v23;
    v26 = v25;

    sub_100034804();
    v27 = sub_100034854();
    v28 = sub_100034C64();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      *(v29 + 4) = v24;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "tap occured at. %f %f", v29, 0x16u);
    }

    v30 = *(v13 + 8);
    v30(v19, v12);
    if ([v21 vista] != 2)
    {
      goto LABEL_13;
    }

    sub_100034804();
    v31 = sub_100034854();
    v32 = sub_100034C64();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Tapping on the Orrery", v33, 2u);
    }

    v30(v17, v12);
    v34 = [v21 vistaView];
    v35 = [v34 spheroidAtPoint:{v24, v26}];

    if (!v35)
    {
LABEL_13:

      return;
    }

    [v35 type];
    v71 = NUNIAstronomyVistaView_SpheroidTypeToVista();
    if (qword_1000469A8 != -1)
    {
      swift_once();
    }

    v36 = sub_100034424();
    v37 = v75;
    if (v36 == 2 || (v36 & 1) == 0)
    {
      sub_100034334();
    }

    else
    {
      sub_100034304();
    }

    if (qword_1000469B0 != -1)
    {
      swift_once();
    }

    if (*(qword_1000493C0 + 16))
    {
      v70 = *(qword_1000493C0 + 40);
      v38 = *(qword_1000493C0 + 48);
      v39 = *(qword_1000493C0 + 56);
      v30 = *(qword_1000493C0 + 64);
      v40 = *(qword_1000493C0 + 72);
      v41 = v74;
      (*(v72 + 16))(v74, v37, v73);
      v42 = *&v2[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation];
      *(v41 + v4[5]) = v42;
      if (v71 <= 2)
      {
        if (v71)
        {
          if (v71 == 1)
          {
            if (v70)
            {
              v2 = v39;
              v4 = v38;
              sub_1000053EC(v30);
              v52 = v42;
              sub_100009BF0(v74, 1);
LABEL_42:
              v59 = v75;
              sub_100009914(v70, 1);
              v61 = v60;
              v63 = v62;
              v65 = v64;
              v67 = v66;
              sub_10000A5B0(v74);
              v76 = v61;
              v77 = v63;
              v78 = v65;
              v79 = v67;
              LODWORD(v68) = 1.5;
              [v21 animateToVista:v71 styleDefinition:&v76 duration:v68];

              sub_1000054D4(v30);
              (*(v72 + 8))(v59, v73);
              return;
            }
          }

          else if (v71 == 2)
          {
            v2 = v39;
            v4 = v38;
            sub_1000053EC(v30);
            v46 = qword_100046A10;
            v47 = v42;
            if (v46 != -1)
            {
              swift_once();
            }

            v45 = &dword_100046D18;
            goto LABEL_41;
          }
        }

        else if (v70)
        {
          v2 = v39;
          v4 = v38;
          sub_1000053EC(v30);
          v50 = qword_100046A80;
          v51 = v42;
          if (v50 != -1)
          {
            swift_once();
          }

          v45 = &dword_100046F58;
          goto LABEL_41;
        }
      }

      else
      {
        if ((v71 - 4) < 6)
        {
          v2 = v39;
          v4 = v38;
          sub_1000053EC(v30);
          v43 = qword_100046A18;
          v44 = v42;
          if (v43 == -1)
          {
LABEL_21:
            v45 = &dword_100046D58;
LABEL_41:
            v55 = *v45;
            v56 = *(v45 + 1);
            v57 = *(v45 + 2);
            v58 = v45[6];
            goto LABEL_42;
          }

LABEL_45:
          swift_once();
          goto LABEL_21;
        }

        if (v71 == 3)
        {
          v2 = v39;
          v4 = v38;
          sub_1000053EC(v30);
          v48 = qword_100046A08;
          v49 = v42;
          if (v48 != -1)
          {
            swift_once();
          }

          v45 = &dword_100046CD8;
          goto LABEL_41;
        }
      }

      v2 = v39;
      v4 = v38;
      sub_1000053EC(v30);
      v53 = qword_100046A00;
      v54 = v42;
      if (v53 != -1)
      {
        swift_once();
      }

      v45 = &dword_100046C98;
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_45;
  }
}

void sub_1000303B0()
{
  v1 = v0;
  v2 = sub_1000344A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig];
  if (v10)
  {
    v11 = v10;
    sub_100034494();
    v12 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController;
    v13 = *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController];
    if (v13)
    {
      goto LABEL_5;
    }

    (*(v3 + 16))(v7, v9, v2);
    v14 = objc_allocWithZone(sub_1000035B0(&qword_100048398, "v"));
    v15 = sub_100034884();
    v16 = *&v1[v12];
    *&v1[v12] = v15;
    v17 = v15;

    v18 = [v17 view];
    if (v18)
    {
      v19 = [objc_opt_self() whiteColor];
      [v18 setBackgroundColor:v19];

      v13 = *&v1[v12];
      if (!v13)
      {
LABEL_14:
        (*(v3 + 8))(v9, v2);
        return;
      }

LABEL_5:
      v20 = *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController];
      v21 = v13;
      if (v20)
      {
        [v20 applyMode:2];
      }

      [v13 setModalInPresentation:1];
      v22 = [objc_opt_self() currentDevice];
      v23 = [v22 userInterfaceIdiom];

      if (v23 == 1)
      {
        [v13 setModalPresentationStyle:7];
        v24 = [v13 popoverPresentationController];
        if (v24)
        {
          v25 = v24;
          [v24 setSourceView:*&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton]];
LABEL_12:
        }
      }

      else
      {
        [v13 setModalPresentationStyle:1];
        v26 = [v13 sheetPresentationController];
        if (v26)
        {
          v25 = v26;
          sub_1000035B0(&qword_1000483A0, qword_100037210);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_100036D80;
          sub_10000A83C(0, &unk_1000483A8, UISheetPresentationControllerDetent_ptr);
          *(swift_allocObject() + 16) = v1;
          v28 = v1;
          v29 = sub_100034CE4();

          *(v27 + 32) = v29;
          isa = sub_100034AB4().super.isa;

          [v25 setDetents:isa];

          [v25 setPrefersGrabberVisible:1];
          [v25 setPrefersScrollingExpandsWhenScrolledToEdge:0];
          [v25 setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierMedium];
          goto LABEL_12;
        }
      }

      [v1 presentViewController:v13 animated:1 completion:0];

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000307CC(int a1, id a2)
{
  result = [a2 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    [result bounds];
    v5 = v4;

    *&result = v5 / 3.0;
  }

  return result;
}

void sub_100030838(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for Geotime();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v14 = static PreferencePane.aegirGeneralPreferencePane;
  v15 = sub_100034414();
  if (v16)
  {
    if (v15 == 0x65706F696C6C6143 && v16 == 0xE800000000000000)
    {
    }

    else
    {
      v18 = sub_100034EC4();

      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v24 = sub_100007FF8();
    [v24 setQuadViewOptions:{objc_msgSend(v24, "quadViewOptions") | 0x200}];
    goto LABEL_21;
  }

LABEL_9:
  v19 = sub_100034414();
  if (v20)
  {
    if (v19 == 0x7269676541 && v20 == 0xE500000000000000)
    {
    }

    else
    {
      v22 = sub_100034EC4();

      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = sub_100008214();
    goto LABEL_20;
  }

LABEL_15:
  v23 = sub_100008230();
LABEL_20:
  v24 = v23;
LABEL_21:
  v25 = [objc_allocWithZone(NUNIAstronomyVistaView) initWithFrame:v24 configuration:{a1, a2, a3, a4}];

  v26 = objc_allocWithZone(NUNIScene);
  v64 = sub_100030E28;
  v65 = 0;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_100033AE4;
  v63 = &unk_1000420C0;
  v27 = _Block_copy(&aBlock);
  v28 = [v26 initWithSphereoids:16515070 currentDateBlock:v27];
  _Block_release(v27);

  [v28 setSnap:3];
  [v28 setBackgroundType:2];
  [v25 setScene:v28];
  v29 = [objc_allocWithZone(NUNIAstronomyVistaController) initWithVistaView:v25];
  v30 = *(v5 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  *(v5 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController) = v29;
  v31 = v29;

  [v31 setActiveModeFrameInterval:0];
  [v31 setVista:{objc_msgSend(v14, "vista")}];
  v32 = [v14 vista];
  v33 = PreferencePane.crop.getter();
  sub_100034344();
  v34 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation;
  v35 = *(v5 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation);
  *&v13[*(v10 + 20)] = v35;
  if (v32 > 2)
  {
    if ((v32 - 4) < 6)
    {
      v36 = qword_100046A18;
      v37 = v35;
      if (v36 != -1)
      {
        swift_once();
      }

      v38 = &dword_100046D58;
LABEL_45:
      v48 = *v38;
      v49 = *(v38 + 1);
      v50 = *(v38 + 2);
      v51 = v38[6];
      goto LABEL_46;
    }

    if (v32 == 3)
    {
      v41 = qword_100046A08;
      v42 = v35;
      if (v41 != -1)
      {
        swift_once();
      }

      v38 = &dword_100046CD8;
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (!v32)
  {
    if (v33)
    {
      v43 = qword_100046A80;
      v44 = v35;
      if (v43 != -1)
      {
        swift_once();
      }

      v38 = &dword_100046F58;
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v32 != 1)
  {
    if (v32 == 2)
    {
      v39 = qword_100046A10;
      v40 = v35;
      if (v39 != -1)
      {
        swift_once();
      }

      v38 = &dword_100046D18;
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if ((v33 & 1) == 0)
  {
LABEL_42:
    v46 = qword_100046A00;
    v47 = v35;
    if (v46 != -1)
    {
      swift_once();
    }

    v38 = &dword_100046C98;
    goto LABEL_45;
  }

  v45 = v35;
  sub_100009BF0(v13, 1);
LABEL_46:
  sub_100009914(v33 & 1, 1);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_10000A5B0(v13);
  LODWORD(aBlock) = v53;
  v61 = v55;
  v62 = v57;
  LODWORD(v63) = v59;
  [v31 applyStyleDefinition:&aBlock];
  [v31 setVistaTransitionStyle:1];
  [v31 updateLocation:*(v5 + v34) fallbackLocation:0];
  [v31 applyMode:2];
}

uint64_t sub_100030E28()
{
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v0 = sub_100034424();
  if (v0 == 2 || (v0 & 1) == 0)
  {

    return sub_100034334();
  }

  else
  {

    return sub_100034304();
  }
}

void sub_100030EEC()
{
  sub_10000A83C(0, &qword_100048390, NSObject_ptr);
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  if (sub_100034CF4())
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController);
    if (v1)
    {
      v2 = [v1 view];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 superview];

        if (v4)
        {

          sub_10002EAFC();

          sub_10002E708();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_10003106C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController] = 0;
  v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_isActive] = 0;
  v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_animateSun] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_rotationModel] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController] = 0;
  v6 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation;
  *&v3[v6] = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  if (a2)
  {
    v7 = sub_100034984();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for AegirAppViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1000311F4(void *a1)
{
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController] = 0;
  v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_isActive] = 0;
  v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_animateSun] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_rotationModel] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController] = 0;
  v3 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation;
  *&v1[v3] = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AegirAppViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_10003133C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031354()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031394(uint64_t a1, int a2, uint64_t a3, int a4, double a5)
{
  v6 = v5;
  v94 = a1;
  v11 = type metadata accessor for Geotime();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v88 - v16;
  v18 = sub_100034354();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  result = __chkstk_darwin(v18);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v6 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  if (!v24)
  {
    return result;
  }

  LODWORD(v93) = a2;
  v25 = qword_1000469A8;
  *&v92 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_100034424();
  v91 = a3;
  v90 = a4;
  if (v26 == 2 || (v26 & 1) == 0)
  {
    sub_100034334();
  }

  else
  {
    sub_100034304();
  }

  v89 = v19;
  v27 = *(v19 + 16);
  v28 = v18;
  v27(v17, v23, v18);
  v29 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation;
  v30 = *(v6 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation);
  *&v17[*(v11 + 20)] = v30;
  if (v94 <= 2)
  {
    if (v94)
    {
      if (v94 == 1)
      {
        if (v93)
        {
          v40 = v30;
          sub_100009BF0(v17, 1);
          goto LABEL_33;
        }
      }

      else if (v94 == 2)
      {
        v34 = qword_100046A10;
        v35 = v30;
        if (v34 != -1)
        {
          swift_once();
        }

        v33 = &dword_100046D18;
        goto LABEL_32;
      }
    }

    else if (v93)
    {
      v38 = qword_100046A80;
      v39 = v30;
      if (v38 != -1)
      {
        swift_once();
      }

      v33 = &dword_100046F58;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if ((v94 - 4) >= 6)
  {
    if (v94 == 3)
    {
      v36 = qword_100046A08;
      v37 = v30;
      if (v36 != -1)
      {
        swift_once();
      }

      v33 = &dword_100046CD8;
      goto LABEL_32;
    }

LABEL_29:
    v41 = qword_100046A00;
    v42 = v30;
    if (v41 != -1)
    {
      swift_once();
    }

    v33 = &dword_100046C98;
    goto LABEL_32;
  }

  v31 = qword_100046A18;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = &dword_100046D58;
LABEL_32:
  v43 = *v33;
  v44 = *(v33 + 1);
  v45 = *(v33 + 2);
  v46 = v33[6];
LABEL_33:
  sub_100009914(v93 & 1, 1);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_10000A5B0(v17);
  v27(v15, v23, v28);
  v55 = *(v6 + v29);
  *&v15[*(v11 + 20)] = v55;
  v56 = v91;
  if (v91 > 2)
  {
    v57 = v92;
    v58 = v90;
    if ((v91 - 4) < 6)
    {
      v59 = qword_100046A18;
      v60 = v55;
      v61 = v28;
      if (v59 != -1)
      {
        swift_once();
      }

      v62 = v89;
      goto LABEL_58;
    }

    v61 = v28;
    v62 = v89;
    if (v91 == 3)
    {
      v66 = qword_100046A08;
      v67 = v55;
      if (v66 != -1)
      {
        swift_once();
      }

      v65 = &dword_100046CD8;
LABEL_57:
      v73 = *v65;
      v74 = *(v65 + 1);
      v75 = *(v65 + 2);
      v76 = v65[6];
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  v57 = v92;
  v58 = v90;
  if (!v91)
  {
    v61 = v28;
    v62 = v89;
    if (v90)
    {
      v68 = qword_100046A80;
      v69 = v55;
      if (v68 != -1)
      {
        swift_once();
      }

      v65 = &dword_100046F58;
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v61 = v28;
  if (v91 != 1)
  {
    v62 = v89;
    if (v91 == 2)
    {
      v63 = qword_100046A10;
      v64 = v55;
      if (v63 != -1)
      {
        swift_once();
      }

      v65 = &dword_100046D18;
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v62 = v89;
  if ((v90 & 1) == 0)
  {
LABEL_54:
    v71 = qword_100046A00;
    v72 = v55;
    if (v71 != -1)
    {
      swift_once();
    }

    v65 = &dword_100046C98;
    goto LABEL_57;
  }

  v70 = v55;
  sub_100009BF0(v15, 1);
LABEL_58:
  sub_100009914(v58 & 1, 1);
  v78 = v77;
  v92 = v79;
  v93 = v80;
  v82 = v81;
  sub_10000A5B0(v15);
  v83 = [v57 vista];
  if (v94 == v56)
  {
    if (v83 != v94)
    {
      [v57 setVista:?];
    }

    v99 = v48;
    v100 = v50;
    v101 = v52;
    v102 = v54;
    v95 = v92;
    v96 = v78;
    v97 = v93;
    v98 = v82;
    [v57 applyTransitionFraction:&v99 fromStyleDefinition:&v95 toStyleDefinition:a5];
  }

  else
  {
    if (v83 != v94)
    {
      [v57 setVista:v94];
    }

    [v57 styleDefinition];
    *v84.f32 = vdup_lane_s32(v101, 0);
    *&v84.u32[2] = vext_s8(v101, v100, 4uLL);
    v84.i32[0] = v99;
    v85 = v93;
    *v86.f32 = vdup_lane_s32(*&v93, 0);
    *&v86.u32[2] = vext_s8(*&v93, v78, 4uLL);
    v87 = v92;
    v86.i32[0] = v92;
    if ((vminv_u16(vmovn_s32(vceqq_f32(v84, v86))) & 1) == 0 || (vceq_f32(*&v100, v78).i32[1] & 1) == 0)
    {
      v99 = v92;
      v100 = v78;
      v101 = v93;
      v102 = v82;
      [v57 setStyleDefinition:&v99];
      v87 = v92;
      v85 = v93;
    }

    v99 = v48;
    v100 = v50;
    v101 = v52;
    v102 = v54;
    v95 = v87;
    v96 = v78;
    v97 = v85;
    v98 = v82;
    [v57 applyTransitionFraction:v94 fromVista:&v99 fromStyleDefinition:v56 toVista:&v95 toStyleDefinition:a5];
  }

  return (*(v62 + 8))(v23, v61);
}

void sub_100031BB0()
{
  v1 = *(v0 + 16);
  sub_10002EAFC();
  sub_10002E708();
}

unint64_t sub_100031BD8()
{
  result = qword_100047DD0;
  if (!qword_100047DD0)
  {
    sub_100034894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047DD0);
  }

  return result;
}

unint64_t sub_100031C30()
{
  result = qword_100047DE0;
  if (!qword_100047DE0)
  {
    sub_100022E0C(&unk_1000483C0, "j#");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047DE0);
  }

  return result;
}

id sub_100031C94(void *a1, uint64_t a2, double a3)
{
  [a1 contentOffset];
  if (v6 <= 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6;
  result = [a1 bounds];
  v10 = v9;
  v11 = floorf(v7 / v10);
  if ((LODWORD(v11) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 <= -9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  if (__OFADD__(v11, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (a3 > 0.0)
  {
    v12 = v11 + 1;
  }

  v13 = (v10 * v12);
  result = [a1 contentOffset];
  *a2 = v13;
  *(a2 + 8) = v14;
  return result;
}

id sub_100031EBC()
{
  v1 = sub_100034874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator] = 0;
  v6 = OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_overrideDate;
  v7 = sub_100034354();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  v8 = type metadata accessor for AegirRenderingController();
  v14.receiver = v0;
  v14.super_class = v8;
  v9 = objc_msgSendSuper2(&v14, "init");
  sub_100034834();
  v10 = sub_100034854();
  v11 = sub_100034C64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AegirRenderingController created", v12, 2u);
  }

  (*(v2 + 8))(v5, v1);
  nw_parameters_create();
  sub_1000349E4();
  swift_unknownObjectRetain();
  nw_parameters_set_source_application_by_bundle_id();

  swift_unknownObjectRelease_n();

  return v9;
}

id sub_1000320F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AegirRenderingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AegirRenderingController()
{
  result = qword_100048408;
  if (!qword_100048408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000321D0()
{
  sub_10003226C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10003226C()
{
  if (!qword_100048418)
  {
    sub_100034354();
    v0 = sub_100034D14();
    if (!v1)
    {
      atomic_store(v0, &qword_100048418);
    }
  }
}

uint64_t sub_1000322C4(SEL *a1, SEL *a2)
{
  v162 = sub_1000342C4();
  v161 = *(v162 - 8);
  v6 = v161[8];
  v7 = __chkstk_darwin(v162);
  v9 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v142 - v10;
  v12 = type metadata accessor for Geotime();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v153 = (&v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000035B0(&qword_1000479B0, &qword_100036B90);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v160 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v167 = &v142 - v19;
  v20 = sub_100034874();
  v21 = *(v20 - 8);
  v165 = v20;
  v166 = v21;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v156 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v142 - v26;
  __chkstk_darwin(v25);
  v29 = &v142 - v28;
  if (sub_100034BD4())
  {
    sub_1000346F4();
    sub_1000346B4();
  }

  v172 = sub_100033704;
  v173 = 0;
  aBlock = _NSConcreteStackBlock;
  v169 = 1107296256;
  v170 = sub_100020770;
  v171 = &unk_100042188;
  v30 = _Block_copy(&aBlock);

  [(SEL *)a1 updatePreferences:v30];
  _Block_release(v30);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_94;
  }

  v145 = v27;
  v143 = v9;
  v144 = v11;
  v159 = [(SEL *)a2 deviceOrientation];
  v31 = [-[SEL environment](a1 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v32 = sub_10001D800();
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v36 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = v32;
  }

  if (v36 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  v152 = v38;
  sub_100034834();
  sub_100034020(v32, v34, v36);
  v39 = sub_100034854();
  v40 = sub_100034C64();
  sub_10001D240(v32, v34, v36);
  v41 = os_log_type_enabled(v39, v40);
  v155 = v36;
  v163 = v34;
  v154 = v32;
  LODWORD(v164) = (v36 != 1) & v34;
  v157 = v37;
  v147 = v12;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v158 = a1;
    v43 = v42;
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 136315138;
    sub_100034020(v32, v34, v36);
    v45 = sub_100007B44(v37, (v36 != 1) & v34, v152);
    v47 = v46;
    sub_10001D240(v32, v34, v155);
    v48 = sub_10001AF94(v45, v47, &aBlock);

    *(v43 + 4) = v48;
    v49 = v159;
    v50 = v165;
    v36 = v155;
    _os_log_impl(&_mh_execute_header, v39, v40, "didInitialize — configuration: %s", v43, 0xCu);
    sub_1000026BC(v44);

    a1 = v158;

    v151 = *(v166 + 8);
    v151(v29, v50);
  }

  else
  {

    v151 = *(v166 + 8);
    v151(v29, v165);
    v49 = v159;
  }

  v3 = a1;
  v146 = sub_100009638(v3, v49);

  a1 = &stru_100045000;
  v51 = [(SEL *)v3 backgroundView];
  [v51 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;

  (v161[7])(v167, 1, 1, v162);
  v60 = v152;
  if (v152)
  {
    v158 = v152;
  }

  else
  {
    v158 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v61 = v163;
  v62 = v154;
  sub_100034020(v154, v163, v36);
  v149 = sub_100034C14();
  if (sub_100034C14())
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v157;
    *(v63 + 24) = v164;
    *(v63 + 25) = *v174;
    *(v63 + 28) = *&v174[3];
    *(v63 + 32) = v60;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = v3;
    v64 = sub_1000341AC;
LABEL_20:
    sub_100034020(v62, v61, v36);
    v66 = v3;
    v67 = sub_100007FF8();
    goto LABEL_22;
  }

  v65 = sub_100034BD4();
  v63 = swift_allocObject();
  *(v63 + 16) = v157;
  *(v63 + 24) = v164;
  *(v63 + 25) = *v174;
  *(v63 + 28) = *&v174[3];
  *(v63 + 32) = v60;
  *(v63 + 40) = 0;
  *(v63 + 48) = 0;
  *(v63 + 56) = 0;
  *(v63 + 64) = v3;
  if (v65)
  {
    v64 = sub_100034034;
    v61 = v163;
    goto LABEL_20;
  }

  sub_100034020(v62, v163, v36);
  v68 = v3;
  v67 = sub_100007FF8();
  [v67 setQuadViewOptions:{objc_msgSend(v67, "quadViewOptions") | 0x200}];

  v64 = sub_100034034;
LABEL_22:
  v2 = [objc_allocWithZone(NUNIAstronomyVistaView) initWithFrame:v67 configuration:{v53, v55, v57, v59}];

  v69 = objc_allocWithZone(NUNIScene);
  v172 = v64;
  v173 = v63;
  aBlock = _NSConcreteStackBlock;
  v169 = 1107296256;
  v170 = sub_100033AE4;
  v171 = &unk_1000421D8;
  v70 = _Block_copy(&aBlock);
  v152 = v63;

  v71 = [v69 initWithSphereoids:16515070 currentDateBlock:v70];
  _Block_release(v70);

  [v71 setSnap:3];
  [v71 setBackgroundType:2];
  v148 = v71;
  [v2 setScene:v71];
  v9 = [objc_allocWithZone(NUNIAstronomyVistaController) initWithVistaView:v2];
  [v9 setIsBacklightTransitionEnabled:1];
  [v9 setActiveModeFrameInterval:1];
  v72 = v157;
  [v9 setVista:v157];
  [v9 setVistaTransitionStyle:1];
  v73 = [v2 scene];
  v74 = [v73 currentDateBlock];

  v11 = v74[2](v74);
  a2 = v153;
  sub_100034324();

  _Block_release(v74);
  v75 = v158;
  *(a2 + *(v147 + 20)) = v158;
  LOBYTE(v11) = v164;
  if (v164)
  {
    v76 = sub_100034EC4();
    v77 = v75;

    v30 = v161;
    if ((v76 & 1) != 0 && v62 != 2)
    {
      v78 = v62 == 3;
      LOBYTE(v11) = v164;
      goto LABEL_28;
    }

    if (v62 > 2)
    {
      LOBYTE(v11) = v164;
      if ((v62 - 4) < 6)
      {
        if (qword_100046A18 != -1)
        {
          swift_once();
        }

        v12 = v146;
        v27 = v162;
        if ((v146 - 3) < 2)
        {
          v97 = &dword_100046D78;
LABEL_58:
          v98 = *v97;
          v99 = *(v97 + 1);
          v100 = *(v97 + 2);
          v101 = v97[6];
LABEL_62:
          sub_100009914(v11, v12);
          v93 = v107 * 1.1;
          goto LABEL_63;
        }

        v102 = &dword_100046D58;
        goto LABEL_61;
      }

      if (v62 == 3)
      {
        v12 = v146;
        if (qword_100046A08 != -1)
        {
          swift_once();
        }

        v27 = v162;
        if ((v12 - 3) < 2)
        {
          v97 = &dword_100046CF8;
          goto LABEL_58;
        }

        v102 = &dword_100046CD8;
        goto LABEL_61;
      }

LABEL_86:
      v12 = v146;
      if (qword_100046A00 != -1)
      {
        swift_once();
      }

      v27 = v162;
      if ((v12 - 3) < 2)
      {
        v97 = &dword_100046CB8;
        goto LABEL_58;
      }

      v102 = &dword_100046C98;
      goto LABEL_61;
    }

    LOBYTE(v11) = v164;
    if (!v62)
    {
      if (qword_100046A80 != -1)
      {
        swift_once();
      }

      v12 = v146;
      v27 = v162;
      if ((v146 - 3) < 2)
      {
        v97 = &dword_100046F78;
        goto LABEL_58;
      }

      v102 = &dword_100046F58;
      goto LABEL_61;
    }

    if (v62 == 1)
    {
      v12 = v146;
      sub_100009BF0(a2, v146);
      v27 = v162;
      goto LABEL_62;
    }

    if (v62 != 2)
    {
      goto LABEL_86;
    }

LABEL_54:
    v12 = v146;
    if (qword_100046A10 != -1)
    {
      swift_once();
    }

    v27 = v162;
    if ((v12 - 3) < 2)
    {
      v97 = &dword_100046D38;
      goto LABEL_58;
    }

    v102 = &dword_100046D18;
LABEL_61:
    v103 = v102[6];
    v104 = *(v102 + 1);
    v105 = *(v102 + 2);
    v106 = *v102;
    goto LABEL_62;
  }

  v79 = v75;

  v30 = v161;
  if (v72 == 2)
  {
    goto LABEL_54;
  }

  v78 = v72 == 3;
LABEL_28:
  v12 = v146;
  if (v78)
  {
    v27 = v162;
    if (qword_100046A48 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_31;
  }

  v27 = v162;
  if (qword_100046A40 != -1)
  {
    swift_once();
  }

  v80 = &dword_100046E38;
  v81 = &dword_100046E50;
  v82 = &qword_100046E48;
  v83 = &qword_100046E40;
  v84 = (v12 - 3) >= 2;
  for (i = &dword_100046E18; ; i = &dword_100046E58)
  {
    v86 = i + 6;
    v87 = (i + 4);
    if (v84)
    {
      v88 = (i + 2);
    }

    else
    {
      i = v80;
      v88 = v83;
    }

    if (v84)
    {
      v82 = v87;
    }

    if (v84)
    {
      v81 = v86;
    }

    v89 = *v81;
    v90 = *v82;
    v91 = *v88;
    v92 = *i;
    sub_100009914(v11, v12);
LABEL_63:
    *&aBlock = v93;
    v169 = v94;
    v170 = v95;
    LODWORD(v171) = v96;
    [v9 applyStyleDefinition:&aBlock];
    v108 = v160;
    sub_100034078(v167, v160);
    if ((v30[6])(v108, 1, v27) == 1)
    {
      sub_100007DDC(v160, &qword_1000479B0, &qword_100036B90);
    }

    else
    {
      v162 = v2;
      v164 = v3;
      v109 = v144;
      (v30[4])(v144, v160, v27);
      v110 = v30;
      sub_1000342A4(v111);
      v113 = v112;
      [v9 setCacheDirectory:v112];

      v114 = v145;
      sub_100034804();
      v115 = v143;
      (v110[2])(v143, v109, v27);
      v116 = sub_100034854();
      v117 = sub_100034C54();
      if (os_log_type_enabled(v116, v117))
      {
        v12 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        aBlock = v161;
        *v12 = 136315138;
        sub_1000340E8();
        v118 = sub_100034EA4();
        v119 = v27;
        v121 = v120;
        v122 = v110[1];
        v123 = v115;
        v124 = v119;
        v122(v123, v119);
        v125 = sub_10001AF94(v118, v121, &aBlock);
        v27 = v165;

        *(v12 + 4) = v125;
        _os_log_impl(&_mh_execute_header, v116, v117, "Vista Controller created with asset directory: %s", v12, 0xCu);
        sub_1000026BC(v161);

        v151(v145, v27);
        v122(v109, v124);
        a2 = v153;
        v3 = v164;
        a1 = &stru_100045000;
      }

      else
      {

        v126 = v110[1];
        v126(v115, v27);
        v151(v114, v165);
        v126(v109, v27);
        a2 = v153;
        v3 = v164;
      }

      v2 = v162;
    }

    [v9 disableCloudDataFetch:v149 & 1];
    v127 = [v9 mode];
    v128 = v159;
    v129 = v158;
    if (v127 != 1)
    {
      [v9 applyMode:1];
    }

    [v9 updateLocation:0 fallbackLocation:v129 animated:0];
    v130 = [v9 vistaView];
    [v130 updateSunLocationAnimated:0];

    sub_10000A5B0(a2);
    sub_100007DDC(v167, &qword_1000479B0, &qword_100036B90);
    v131 = [v3 a1[251]];
    v132 = [(SEL *)v3 floatingView];
    sub_100005528(v131, v132);

    v133 = type metadata accessor for AegirRenderingCoordinator();
    v134 = *(v133 + 48);
    v135 = *(v133 + 52);
    swift_allocObject();
    a2 = v3;
    v11 = v9;
    v136 = sub_10001BDE0(v11, v128, a2);

    v137 = *(v150 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator);
    *(v150 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator) = v136;

    sub_10000C688(a2);
    v172 = sub_100033714;
    v173 = 0;
    aBlock = _NSConcreteStackBlock;
    v169 = 1107296256;
    v170 = sub_100020770;
    v171 = &unk_100042200;
    v30 = _Block_copy(&aBlock);

    [(SEL *)a2 updatePreferences:v30];
    _Block_release(v30);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
LABEL_31:
    v80 = &dword_100046E78;
    v81 = &dword_100046E90;
    v82 = &qword_100046E88;
    v83 = &qword_100046E80;
    v84 = (v12 - 3) >= 2;
  }

  sub_100034834();
  v138 = sub_100034854();
  v139 = sub_100034C64();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&_mh_execute_header, v138, v139, "Finished setting up renderer", v140, 2u);

    sub_10001D240(v154, v163, v155);
  }

  else
  {
    sub_10001D240(v154, v163, v155);
  }

  return (v151)(v156, v165);
}

id sub_100033714(void *a1)
{
  [a1 setHandlesWakeAnimation:1];
  [a1 setUserTapEventsRequested:1];

  return [a1 setHideDimmingLayer:1];
}

uint64_t sub_100033908()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "didInvalidate", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator);
  *(v1 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator) = 0;

  result = sub_100034BD4();
  if (result)
  {
    sub_1000346F4();
    return sub_1000346A4();
  }

  return result;
}

Class sub_100033AE4(uint64_t a1)
{
  v2 = sub_100034354();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(v9);

  v10.super.isa = sub_1000342F4().super.isa;
  (*(v3 + 8))(v6, v2);

  return v10.super.isa;
}

uint64_t sub_100033BE8(void *a1)
{
  v3 = sub_100034874();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v8 = a1;
  v9 = sub_100034854();
  v10 = sub_100034C64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = sub_100034C14() & 1;
    *(v11 + 8) = 1024;
    *(v11 + 10) = sub_100034BD4() & 1;

    _os_log_impl(&_mh_execute_header, v9, v10, "didUpdate — isPreview: %{BOOL}d; isSnapshot: %{BOOL}d", v11, 0xEu);
  }

  else
  {

    v9 = v8;
  }

  result = (*(v4 + 8))(v7, v3);
  v13 = *(v1 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator);
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

    v15 = sub_100034744();

    if (v15)
    {
      *(v13 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange) = 1;
      v16 = [*(v13 + 24) vistaView];
      v17 = [*(v13 + 24) vistaView];
      [v17 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      [v16 updatePortalLayerBounds:{v19, v21, v23, v25}];
    }

    sub_10000C688(v8);
  }

  return result;
}

uint64_t sub_100033E74(double a1, double a2)
{
  v3 = v2;
  v6 = sub_100034874();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v11 = sub_100034854();
  v12 = sub_100034C64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v11, v12, "didReceiveTapAt: %f, %f", v13, 0x16u);
  }

  result = (*(v7 + 8))(v10, v6);
  if (*(v3 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator))
  {
    v15 = *(v3 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator);

    sub_100014B60(a1, a2);
  }

  return result;
}

uint64_t sub_100034008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100034020(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_100034034@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = sub_100034C14();
  return sub_100005D94(v4 & 1, a1);
}

uint64_t sub_100034078(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035B0(&qword_1000479B0, &qword_100036B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000340E8()
{
  result = qword_1000479B8;
  if (!qword_1000479B8)
  {
    sub_1000342C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000479B8);
  }

  return result;
}

uint64_t sub_100034140()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 56);
  }

  return _swift_deallocObject(v0, 72, 7);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}