uint64_t sub_A5400()
{
  v7 = sub_C2484();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = &v2 - v3;
  sub_C23D4();
  sub_A7F7C();
  v8 = sub_C2FE4();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t sub_A5530(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v21 = a1;
  v23 = a2;
  v22 = a3;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v24 = sub_C2FD4();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = &v10 - v27;
  v43 = a1;
  v42 = v4;
  v41 = v5;
  v29 = &v40;
  v40 = v4;
  v6 = sub_C25B4();
  v31 = v39;
  v39[0] = v6;
  v39[1] = v7;
  v30 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  sub_1D00C();
  v32 = sub_C3684();
  sub_8224(v31);
  if ((v32 & 1) == 0)
  {
    v11 = 0;
    return v11 & 1;
  }

  v16 = &v38;
  swift_beginAccess();
  v18 = *v22;
  v19 = v22[1];

  swift_endAccess();

  sub_C25C4();
  v17 = sub_C2FC4();
  v20 = v8;
  (*(v25 + 8))(v28, v24);

  v36[0] = v18;
  v36[1] = v19;
  *&v37 = v17;
  *(&v37 + 1) = v20;
  if (!v19)
  {
    if (!*(&v37 + 1))
    {
      sub_8224(v36);
      v15 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_146A0(v36, &v35);
  if (!*(&v37 + 1))
  {
    sub_8224(&v35);
LABEL_9:
    sub_146E0(v36);
    v15 = 0;
    goto LABEL_8;
  }

  v13 = &v34;
  v34 = v35;
  v12 = &v33;
  v33 = v37;
  v14 = sub_C3574();
  sub_8224(v12);
  sub_8224(v13);
  sub_8224(v36);
  v15 = v14;
LABEL_8:
  v10 = v15;

  v11 = v10;
  return v11 & 1;
}

uint64_t sub_A58BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v21 = a1;
  v28 = a2;
  v22 = a3;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v23 = sub_C2FD4();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v27 = &v9 - v26;
  v43 = a1;
  v42 = v4;
  v41 = v5;
  v29 = &v40;
  swift_beginAccess();
  v30 = *v28;
  v32 = v28[1];

  swift_endAccess();
  sub_C25B4();
  v31 = v6;
  v33 = sub_C3574();

  if ((v33 & 1) == 0)
  {
    v11 = 0;
    return v11 & 1;
  }

  v16 = &v39;
  swift_beginAccess();
  v18 = *v22;
  v19 = v22[1];

  swift_endAccess();

  sub_C25C4();
  v17 = sub_C2FC4();
  v20 = v7;
  (*(v24 + 8))(v27, v23);

  v37[0] = v18;
  v37[1] = v19;
  *&v38 = v17;
  *(&v38 + 1) = v20;
  if (!v19)
  {
    if (!*(&v38 + 1))
    {
      sub_8224(v37);
      v15 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_146A0(v37, &v36);
  if (!*(&v38 + 1))
  {
    sub_8224(&v36);
LABEL_9:
    sub_146E0(v37);
    v15 = 0;
    goto LABEL_8;
  }

  v13 = &v35;
  v35 = v36;
  v12 = &v34;
  v34 = v38;
  v14 = sub_C3574();
  sub_8224(v12);
  sub_8224(v13);
  sub_8224(v37);
  v15 = v14;
LABEL_8:
  v10 = v15;

  v11 = v10;
  return v11 & 1;
}

uint64_t sub_A5C58(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  swift_endAccess();
  v6 = v4;
  v7 = v5;
  if (v5)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_C3564("<nil>", 5uLL, 1);
    v9 = v1;
  }

  return v8;
}

uint64_t sub_A5D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v3[6] = a2;
  v3[5] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v4 = sub_C2004();
  v3[8] = v4;
  v8 = *(v4 - 8);
  v3[9] = v8;
  v5 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[2] = a2;
  v3[3] = a3;
  v6 = v3[4];

  return _swift_task_switch(sub_A5E3C, 0);
}

uint64_t sub_A5E3C()
{
  v9 = v0[10];
  v7 = v0[9];
  v8 = v0[8];
  v4 = v0[7];
  v5 = v0[6];
  v6 = v0[5];
  v0[4] = v0;

  sub_A98A4();
  sub_C1FF4();
  sub_C2254();
  (*(v7 + 8))(v9, v8);

  v1 = *(v0[4] + 8);
  v2 = v0[4];

  return v1();
}

uint64_t sub_A5FB4()
{
  v0 = sub_C3564("socialNLv4", 0xAuLL, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_A6084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A60C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6104()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A619C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A61DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A621C()
{
  v3 = *(sub_C23E4() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_A62E8()
{
  v1 = *(sub_C23E4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_A5400();
}

uint64_t sub_A63A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A63E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6424()
{
  v3 = *(sub_C24C4() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_A6548()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6588()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A65F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A668C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A66CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A670C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A67A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A67E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6824()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6864(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_A5D2C(a1, v6, v7);
}

uint64_t sub_A6930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A69C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6A08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6A48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6A88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6C38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6C78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6D10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6D50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6D90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6DD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6E68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6EA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6F40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6F80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A6FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7058()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A70D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7118()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A71B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A71F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7288()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A72C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7308()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A73A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A73E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7420()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7460()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7530()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7570()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7608()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7648()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A76E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A77B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A77F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_A7868()
{
  v2 = qword_F0D20;
  if (!qword_F0D20)
  {
    sub_81B0(&qword_F0CF8, &qword_C7908);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0D20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_A78F0(uint64_t a1)
{
  v3 = sub_21E8(&qword_F0D08, &qword_C7918);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_A79AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7A44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7A84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7B1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7B5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7B9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7C34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7C74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7CBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7D54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7D94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7E2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A7E6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_A7F00()
{
  v2 = qword_F0DD0;
  if (!qword_F0DD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0DD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_A7F7C()
{
  v2 = qword_F0DD8;
  if (!qword_F0DD8)
  {
    sub_C2484();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0DD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_A7FFC(void *a1, void *a2)
{
  v183 = a1;
  v208 = a2;
  v185 = sub_1D834;
  v186 = sub_7BBC;
  v187 = sub_7B48;
  v188 = sub_7B48;
  v189 = sub_7C08;
  v190 = sub_A9640;
  v191 = sub_7BBC;
  v192 = sub_7B48;
  v193 = sub_7B48;
  v194 = sub_7C08;
  v260 = 0;
  v259 = 0;
  v251 = 0;
  v252 = 0;
  v244 = 0;
  v245 = 0;
  v242 = 0;
  v243 = 0;
  v236 = 0;
  v237 = 0;
  v233 = 0;
  v234 = 0;
  v231 = 0;
  v232 = 0;
  v229 = 0;
  v230 = 0;
  v202 = 0;
  v195 = sub_C3234();
  v196 = *(v195 - 8);
  v197 = v195 - 8;
  v198 = (*(v196 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0);
  v199 = v62 - v198;
  v200 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v201 = v62 - v200;
  v203 = sub_C1AC4();
  v204 = *(v203 - 8);
  v205 = v203 - 8;
  v206 = (*(v204 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v202);
  v207 = v62 - v206;
  v209 = sub_C19D4();
  v210 = *(v209 - 8);
  v211 = v209 - 8;
  v212 = (*(v210 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v209);
  v213 = v62 - v212;
  v260 = a1;
  v259 = v5;
  v215 = sub_C2E24();
  v6 = sub_C3564("locale", 6uLL, 1);
  v214 = v257;
  v257[0] = v6;
  v257[1] = v7;
  sub_C33E4();
  sub_8224(v214);

  if (v258[3])
  {
    if (swift_dynamicCast())
    {
      v181 = v216;
      v182 = v217;
    }

    else
    {
      v181 = 0;
      v182 = 0;
    }

    v179 = v181;
    v180 = v182;
  }

  else
  {
    sub_1FA80(v258);
    v179 = 0;
    v180 = 0;
  }

  v177 = v180;
  v178 = v179;
  if (!v180)
  {
    goto LABEL_36;
  }

  v175 = v178;
  v176 = v177;
  v168 = v177;
  v251 = v178;
  v252 = v177;
  v249 = v178;
  v250 = v177;
  sub_C3564("-_", 2uLL, 1);
  v169 = v8;
  sub_C19C4();

  v170 = sub_B2E8();
  v171 = sub_C3994();
  (*(v210 + 8))(v213, v209);
  v248 = v171;
  v172 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  sub_1E160();
  sub_C37F4();
  v173 = v246;
  v174 = v247;
  if (!v247)
  {
    goto LABEL_11;
  }

  v166 = v173;
  v167 = v174;
  v163 = v174;
  v164 = v173;
  v244 = v173;
  v245 = v174;

  v9 = [v208 resourcePath];
  v165 = v9;
  if (v9)
  {
    v162 = v165;
    v157 = v165;
    v158 = sub_C3494();
    v159 = v10;
    _objc_release(v157);
    v160 = v158;
    v161 = v159;
  }

  else
  {
    v160 = 0;
    v161 = 0;
  }

  v155 = v161;
  v156 = v160;
  if (!v161)
  {
LABEL_11:

LABEL_36:
    v62[0] = 12;
    v54 = sub_C3C44();
    v67 = &v255;
    v255 = v54;
    v256 = v55;
    v65 = 1;
    v261._countAndFlagsBits = sub_C3564("CatGlobals: ", v62[0], 1);
    v62[1] = v261._object;
    sub_C3C34(v261);

    _objc_retain(v183);
    v62[3] = &v254;
    v254 = v183;
    v64 = 0;
    v62[2] = sub_C2E74();
    sub_3E724();
    v56 = sub_C3504();
    v63 = v253;
    v253[0] = v56;
    v253[1] = v57;
    sub_C3C24();
    sub_8224(v63);
    v262._countAndFlagsBits = sub_C3564("", v64, v65 & 1);
    object = v262._object;
    sub_C3C34(v262);

    v69 = v255;
    v68 = v256;

    sub_8224(v67);
    v71 = sub_C3544();
    v70 = v58;
    sub_3E7A4();
    v59 = swift_allocError();
    v60 = v70;
    v73 = v59;
    *v61 = v71;
    *(v61 + 8) = v60;
    *(v61 + 16) = 1;
    swift_willThrow();
    return v72;
  }

  v153 = v156;
  v154 = v155;
  v138 = v155;
  v137 = v156;
  v242 = v156;
  v243 = v155;
  v241[2] = v156;
  v241[3] = v155;
  v140 = "/Templates/";
  v139 = 11;
  v144 = 1;
  v11 = sub_C3564("/Templates/", 0xBuLL, 1);
  v132 = v241;
  v241[0] = v11;
  v241[1] = v12;
  v141 = &type metadata for String;
  v134 = sub_C39E4();
  v133 = v13;
  sub_8224(v132);
  v135 = v240;
  v240[0] = v134;
  v240[1] = v133;
  v238 = v164;
  v239 = v163;
  v136 = sub_C39E4();
  v151 = v14;
  sub_8224(v135);
  v236 = v136;
  v237 = v151;
  v235[2] = v137;
  v235[3] = v138;
  v15 = sub_C3564(v140, v139, v144 & 1);
  v142 = v235;
  v235[0] = v15;
  v235[1] = v16;
  v148 = sub_C39E4();
  v149 = v17;
  sub_8224(v142);
  v233 = v148;
  v234 = v149;
  v143 = objc_opt_self();
  sub_C1A64();
  sub_C1A74(v18);
  v145 = v19;
  (*(v204 + 8))(v207, v203);
  v146 = [v143 getDialogAssetsVersion:v145 enableUpdates:v144 & 1];
  _objc_release(v145);
  v147 = sub_C3494();
  v150 = v20;
  v231 = v147;
  v232 = v20;
  _objc_release(v146);

  v229 = v148;
  v230 = v149;
  v152 = sub_C35B4();

  if (v152)
  {
    v131 = sub_A9448(v136, v151);
  }

  else
  {
    v131 = 0;
  }

  v130 = v131;

  if (v130)
  {
    v21 = v201;
    v22 = sub_BF704();
    (*(v196 + 16))(v21, v22, v195);

    v118 = 32;
    v119 = 7;
    v23 = swift_allocObject();
    v24 = v149;
    v120 = v23;
    *(v23 + 16) = v148;
    *(v23 + 24) = v24;
    v128 = sub_C3224();
    v129 = sub_C3874();
    v117 = 17;
    v122 = swift_allocObject();
    *(v122 + 16) = 32;
    v123 = swift_allocObject();
    *(v123 + 16) = 8;
    v25 = swift_allocObject();
    v26 = v120;
    v121 = v25;
    *(v25 + 16) = v185;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v121;
    v125 = v27;
    *(v27 + 16) = v186;
    *(v27 + 24) = v28;
    v127 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v124 = sub_C3C64();
    v126 = v29;

    v30 = v122;
    v31 = v126;
    *v126 = v187;
    v31[1] = v30;

    v32 = v123;
    v33 = v126;
    v126[2] = v188;
    v33[3] = v32;

    v34 = v125;
    v35 = v126;
    v126[4] = v189;
    v35[5] = v34;
    sub_4E48();

    if (os_log_type_enabled(v128, v129))
    {
      v110 = sub_C3954();
      v109 = sub_21E8(&qword_EE828, &qword_C5100);
      v111 = sub_5DD4(0);
      v112 = sub_5DD4(1);
      v113 = &v222;
      v222 = v110;
      v114 = &v221;
      v221 = v111;
      v115 = &v220;
      v220 = v112;
      sub_5E28(2, &v222);
      sub_5E28(1, v113);
      v36 = v184;
      v218 = v187;
      v219 = v122;
      sub_5E3C(&v218, v113, v114, v115);
      v116 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v218 = v188;
        v219 = v123;
        sub_5E3C(&v218, &v222, &v221, &v220);
        v107 = 0;
        v218 = v189;
        v219 = v125;
        sub_5E3C(&v218, &v222, &v221, &v220);
        v106 = 0;
        _os_log_impl(&dword_0, v128, v129, "Unable to find shared dialog assets in %s. Falling back to legacy dialog path.", v110, 0xCu);
        sub_5E88(v111);
        sub_5E88(v112);
        sub_C3934();

        v108 = v106;
      }
    }

    else
    {

      v108 = v184;
    }

    v104 = v108;
    _objc_release(v128);
    (*(v196 + 8))(v201, v195);

    v229 = v136;
    v230 = v151;

    v105 = v104;
  }

  else
  {
    v105 = v184;
  }

  v37 = v199;
  v88 = v105;
  v38 = sub_BF704();
  (*(v196 + 16))(v37, v38, v195);
  v89 = v229;
  v90 = v230;

  v92 = 32;
  v93 = 7;
  v39 = swift_allocObject();
  v40 = v90;
  v94 = v39;
  *(v39 + 16) = v89;
  *(v39 + 24) = v40;
  v102 = sub_C3224();
  v103 = sub_C3874();
  v91 = 17;
  v96 = swift_allocObject();
  *(v96 + 16) = 32;
  v97 = swift_allocObject();
  *(v97 + 16) = 8;
  v41 = swift_allocObject();
  v42 = v94;
  v95 = v41;
  *(v41 + 16) = v190;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v95;
  v99 = v43;
  *(v43 + 16) = v191;
  *(v43 + 24) = v44;
  v101 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v98 = sub_C3C64();
  v100 = v45;

  v46 = v96;
  v47 = v100;
  *v100 = v192;
  v47[1] = v46;

  v48 = v97;
  v49 = v100;
  v100[2] = v193;
  v49[3] = v48;

  v50 = v99;
  v51 = v100;
  v100[4] = v194;
  v51[5] = v50;
  sub_4E48();

  if (os_log_type_enabled(v102, v103))
  {
    v81 = sub_C3954();
    v80 = sub_21E8(&qword_EE828, &qword_C5100);
    v82 = sub_5DD4(0);
    v83 = sub_5DD4(1);
    v84 = &v227;
    v227 = v81;
    v85 = &v226;
    v226 = v82;
    v86 = &v225;
    v225 = v83;
    sub_5E28(2, &v227);
    sub_5E28(1, v84);
    v52 = v88;
    v223 = v192;
    v224 = v96;
    sub_5E3C(&v223, v84, v85, v86);
    v87 = v52;
    if (v52)
    {

      __break(1u);
    }

    else
    {
      v223 = v193;
      v224 = v97;
      sub_5E3C(&v223, &v227, &v226, &v225);
      v78 = 0;
      v223 = v194;
      v224 = v99;
      sub_5E3C(&v223, &v227, &v226, &v225);
      v77 = 0;
      _os_log_impl(&dword_0, v102, v103, "templateDir: %s", v81, 0xCu);
      sub_5E88(v82);
      sub_5E88(v83);
      sub_C3934();

      v79 = v77;
    }
  }

  else
  {

    v79 = v88;
  }

  v76 = v79;
  _objc_release(v102);
  (*(v196 + 8))(v199, v195);
  v75 = &v229;
  v74 = &v228;
  swift_beginAccess();
  swift_endAccess();
  sub_8224(v75);

  return v89;
}

uint64_t sub_A93A4(void *a1, void *a2)
{
  result = sub_A7FFC(a1, a2);
  if (!v2)
  {
    sub_C1A64();
  }

  return result;
}

uint64_t sub_A9448(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v7 = 1;
  v5 = [objc_opt_self() defaultManager];

  v4 = sub_C3484();

  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v7];
  _objc_release(v4);
  _objc_release(v5);
  if (v6)
  {
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_A9600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A9640()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_A958C();
}

uint64_t sub_A96A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A96E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A9724()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A97BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A97FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

BOOL sub_A98E0(uint64_t a1, void *a2)
{
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v2._rawValue = sub_C3C64();
  *v3 = "utterances";
  *(v3 + 8) = 10;
  *(v3 + 16) = 2;
  sub_4E48();
  v6 = sub_C3BC4(v2, v5);

  return v6 != 0;
}

BOOL sub_A9B08@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A98E0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_A9B48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_A99B8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_A9B78(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return v6;
}

unint64_t sub_A9BE8()
{
  v2 = qword_F0DE0;
  if (!qword_F0DE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0DE0);
    return WitnessTable;
  }

  return v2;
}

void *sub_A9C64(uint64_t a1, uint64_t a2)
{
  v278 = a1;
  v277 = a2;
  v274 = 0;
  v294 = sub_1F060;
  v296 = sub_1F278;
  v298 = sub_7BBC;
  v303 = sub_A53D0;
  v306 = sub_7BBC;
  v308 = sub_7B48;
  v310 = sub_7B48;
  v312 = sub_7C08;
  v314 = sub_7B48;
  v316 = sub_7B48;
  v319 = sub_7C08;
  v255 = "Fatal error";
  v256 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v257 = "SocialConversationFlowDelegatePlugin/SocialExactMatchUserInputParser.swift";
  v258 = sub_1D834;
  v259 = sub_7BBC;
  v260 = sub_7B48;
  v261 = sub_7B48;
  v262 = sub_7C08;
  v263 = sub_1D834;
  v264 = sub_7BBC;
  v265 = sub_7B48;
  v266 = sub_7B48;
  v267 = sub_7C08;
  v268 = sub_1D834;
  v269 = sub_7BBC;
  v270 = sub_7B48;
  v271 = sub_7B48;
  v272 = sub_7C08;
  v273 = &unk_C7B30;
  v293 = *v276;
  v366 = 0;
  v365 = 0;
  v364 = 0;
  v358 = 0;
  v359 = 0;
  v356 = 0;
  v357 = 0;
  memset(__b, 0, sizeof(__b));
  v350 = 0;
  v351 = 0;
  v349 = 0;
  v346 = 0;
  v275 = 0;
  v290 = sub_C3234();
  v288 = *(v290 - 8);
  v289 = v290 - 8;
  v284 = v288[8];
  v279 = (v284 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v278);
  v280 = &v93 - v279;
  v281 = v279;
  __chkstk_darwin(v2);
  v282 = &v93 - v281;
  v283 = (v284 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v285 = &v93 - v283;
  v286 = (v284 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v5 = &v93 - v286;
  v287 = &v93 - v286;
  v366 = v6;
  v365 = v7;
  v364 = v8;
  v9 = sub_BF704();
  v291 = v288[2];
  v292 = v288 + 2;
  v291(v5, v9, v290);
  v305 = 7;
  v295 = swift_allocObject();
  *(v295 + 16) = v293;
  v323 = sub_C3224();
  v324 = sub_C3874();
  v301 = 17;
  v309 = swift_allocObject();
  v300 = 32;
  *(v309 + 16) = 32;
  v311 = swift_allocObject();
  v302 = 8;
  *(v311 + 16) = 8;
  v304 = 32;
  v10 = swift_allocObject();
  v11 = v295;
  v297 = v10;
  *(v10 + 16) = v294;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v297;
  v299 = v12;
  *(v12 + 16) = v296;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v299;
  v313 = v14;
  *(v14 + 16) = v298;
  *(v14 + 24) = v15;
  v315 = swift_allocObject();
  *(v315 + 16) = v300;
  v317 = swift_allocObject();
  *(v317 + 16) = v302;
  v16 = swift_allocObject();
  v307 = v16;
  *(v16 + 16) = v303;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v18 = v307;
  v320 = v17;
  *(v17 + 16) = v306;
  *(v17 + 24) = v18;
  v322 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v318 = sub_C3C64();
  v321 = v19;

  v20 = v309;
  v21 = v321;
  *v321 = v308;
  v21[1] = v20;

  v22 = v311;
  v23 = v321;
  v321[2] = v310;
  v23[3] = v22;

  v24 = v313;
  v25 = v321;
  v321[4] = v312;
  v25[5] = v24;

  v26 = v315;
  v27 = v321;
  v321[6] = v314;
  v27[7] = v26;

  v28 = v317;
  v29 = v321;
  v321[8] = v316;
  v29[9] = v28;

  v30 = v320;
  v31 = v321;
  v321[10] = v319;
  v31[11] = v30;
  sub_4E48();

  if (os_log_type_enabled(v323, v324))
  {
    v32 = v275;
    v247 = sub_C3954();
    v246 = sub_21E8(&qword_EE828, &qword_C5100);
    v248 = sub_5DD4(0);
    v249 = sub_5DD4(2);
    v251 = &v329;
    v329 = v247;
    v252 = &v328;
    v328 = v248;
    v253 = &v327;
    v327 = v249;
    v250 = 2;
    sub_5E28(2, &v329);
    sub_5E28(v250, v251);
    v325 = v308;
    v326 = v309;
    sub_5E3C(&v325, v251, v252, v253);
    v254 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v325 = v310;
      v326 = v311;
      sub_5E3C(&v325, &v329, &v328, &v327);
      v244 = 0;
      v325 = v312;
      v326 = v313;
      sub_5E3C(&v325, &v329, &v328, &v327);
      v243 = 0;
      v325 = v314;
      v326 = v315;
      sub_5E3C(&v325, &v329, &v328, &v327);
      v242 = 0;
      v325 = v316;
      v326 = v317;
      sub_5E3C(&v325, &v329, &v328, &v327);
      v241 = 0;
      v325 = v319;
      v326 = v320;
      sub_5E3C(&v325, &v329, &v328, &v327);
      v240 = 0;
      _os_log_impl(&dword_0, v323, v324, "%s.%s", v247, 0x16u);
      sub_5E88(v248);
      sub_5E88(v249);
      sub_C3934();

      v245 = v240;
    }
  }

  else
  {
    v33 = v275;

    v245 = v33;
  }

  v236 = v245;
  _objc_release(v323);
  v237 = v288[1];
  v238 = v288 + 1;
  v237(v287, v290);
  sub_C2D44();
  v239 = sub_C2D34();
  if (v239 && (v235 = v239, v232 = v239, v233 = sub_C2D24(), , v234 = sub_C2FB4(), , v234))
  {
    v231 = v234;
    v229 = v234;
    v230 = [v234 recognition];
    _objc_release(v229);
    if (v230)
    {
      v228 = v230;
    }

    else
    {
      sub_C3B84();
      __break(1u);
    }

    v226 = v228;
    v227 = [v228 oneBestTranscript];
    _objc_release(v226);
    if (v227)
    {
      v225 = v227;
      v220 = v227;
      v221 = sub_C3494();
      v222 = v34;
      _objc_release(v220);
      v223 = v221;
      v224 = v222;
    }

    else
    {
      v223 = 0;
      v224 = 0;
    }

    v218 = v223;
    v219 = v224;
  }

  else
  {
    v218 = 0;
    v219 = 0;
  }

  v360 = v218;
  v361 = v219;
  if (v219)
  {
    v362 = v360;
    v363 = v361;
  }

  else
  {
    v362 = sub_C3564("", 0, 1);
    v363 = v35;
    if (v361)
    {
      sub_8224(&v360);
    }
  }

  v36 = v285;
  v199 = v362;
  v200 = v363;
  v358 = v362;
  v359 = v363;
  v201 = objc_opt_self();

  v202 = sub_C3484();

  v203 = [v201 normalizeUtterance:v202];
  _objc_release(v202);
  v204 = sub_C3494();
  v205 = v37;
  v356 = v204;
  v357 = v37;
  _objc_release(v203);
  v38 = sub_BF704();
  v291(v36, v38, v290);

  v207 = 32;
  v208 = 7;
  v39 = swift_allocObject();
  v40 = v205;
  v209 = v39;
  *(v39 + 16) = v204;
  *(v39 + 24) = v40;
  v216 = sub_C3224();
  v217 = sub_C3874();
  v206 = 17;
  v211 = swift_allocObject();
  *(v211 + 16) = 32;
  v212 = swift_allocObject();
  *(v212 + 16) = 8;
  v41 = swift_allocObject();
  v42 = v209;
  v210 = v41;
  *(v41 + 16) = v258;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v210;
  v214 = v43;
  *(v43 + 16) = v259;
  *(v43 + 24) = v44;
  v213 = sub_C3C64();
  v215 = v45;

  v46 = v211;
  v47 = v215;
  *v215 = v260;
  v47[1] = v46;

  v48 = v212;
  v49 = v215;
  v215[2] = v261;
  v49[3] = v48;

  v50 = v214;
  v51 = v215;
  v215[4] = v262;
  v51[5] = v50;
  sub_4E48();

  if (os_log_type_enabled(v216, v217))
  {
    v52 = v236;
    v192 = sub_C3954();
    v191 = sub_21E8(&qword_EE828, &qword_C5100);
    v193 = sub_5DD4(0);
    v194 = sub_5DD4(1);
    v195 = v334;
    v334[0] = v192;
    v196 = &v333;
    v333 = v193;
    v197 = &v332;
    v332 = v194;
    sub_5E28(2, v334);
    sub_5E28(1, v195);
    v330 = v260;
    v331 = v211;
    sub_5E3C(&v330, v195, v196, v197);
    v198 = v52;
    if (v52)
    {

      __break(1u);
    }

    else
    {
      v330 = v261;
      v331 = v212;
      sub_5E3C(&v330, v334, &v333, &v332);
      v189 = 0;
      v330 = v262;
      v331 = v214;
      sub_5E3C(&v330, v334, &v333, &v332);
      v188 = 0;
      _os_log_impl(&dword_0, v216, v217, "Checking for exact match using ASR hypothesis: '%s'", v192, 0xCu);
      sub_5E88(v193);
      sub_5E88(v194);
      sub_C3934();

      v190 = v188;
    }
  }

  else
  {
    v53 = v236;

    v190 = v53;
  }

  v186 = v190;
  _objc_release(v216);
  v237(v285, v290);

  sub_21E8(&qword_EEFF8, &unk_C5AC0);
  v185 = &v367;
  sub_C3354();
  memcpy(__b, v185, sizeof(__b));
  for (i = v186; ; i = v95)
  {
    v181 = i;
    sub_21E8(&qword_F0D10, &qword_C7B20);
    sub_C33D4();
    v182 = v352;
    v183 = v353;
    v184 = v354;
    if (!v353)
    {
      sub_49790(__b);

      v136 = 0;
      v137 = 0;
      return v136;
    }

    v178 = v182;
    v179 = v183;
    v180 = v184;
    v176 = v184;
    v174 = v183;
    v175 = v182;
    v350 = v182;
    v351 = v183;
    v349 = v184;
    v54 = sub_A99B8();
    v177 = v347;
    v347[0] = v54;
    v347[1] = v55;
    sub_C33E4();
    sub_8224(v177);
    if (v348[3])
    {
      sub_21E8(&qword_EEFE0, &qword_C5AB0);
      if (swift_dynamicCast())
      {
        v173 = v334[1];
      }

      else
      {
        v173 = 0;
      }

      v172 = v173;
    }

    else
    {
      sub_1FA80(v348);
      v172 = 0;
    }

    v171 = v172;
    if (!v172)
    {

      v95 = v181;
      continue;
    }

    v170 = v171;
    v165 = v171;
    v346 = v171;
    v345[2] = v171;
    v164 = v345;
    v345[0] = v204;
    v345[1] = v205;
    v163 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
    sub_1D00C();
    v56 = sub_C3684();
    v166 = v165;
    v167 = v175;
    v168 = v174;
    v169 = v176;
    if (v56)
    {
      break;
    }

    v344[1] = v165;
    sub_1E160();
    if (sub_C3804())
    {
      v97 = v181;
    }

    else
    {
      v75 = v280;
      v76 = sub_BF704();
      v291(v75, v76, v290);

      v124 = 32;
      v125 = 7;
      v77 = swift_allocObject();
      v78 = v174;
      v126 = v77;
      *(v77 + 16) = v175;
      *(v77 + 24) = v78;
      v133 = sub_C3224();
      v134 = sub_C3874();
      v123 = 17;
      v128 = swift_allocObject();
      *(v128 + 16) = 32;
      v129 = swift_allocObject();
      *(v129 + 16) = 8;
      v79 = swift_allocObject();
      v80 = v126;
      v127 = v79;
      *(v79 + 16) = v263;
      *(v79 + 24) = v80;
      v81 = swift_allocObject();
      v82 = v127;
      v131 = v81;
      *(v81 + 16) = v264;
      *(v81 + 24) = v82;
      v130 = sub_C3C64();
      v132 = v83;

      v84 = v128;
      v85 = v132;
      *v132 = v265;
      v85[1] = v84;

      v86 = v129;
      v87 = v132;
      v132[2] = v266;
      v87[3] = v86;

      v88 = v131;
      v89 = v132;
      v132[4] = v267;
      v89[5] = v88;
      sub_4E48();

      if (os_log_type_enabled(v133, v134))
      {
        v90 = v181;
        v113 = sub_C3954();
        v112 = sub_21E8(&qword_EE828, &qword_C5100);
        v114 = sub_5DD4(0);
        v115 = sub_5DD4(1);
        v116 = v344;
        v344[0] = v113;
        v117 = &v343;
        v343 = v114;
        v118 = &v342;
        v342 = v115;
        sub_5E28(2, v344);
        sub_5E28(1, v116);
        v340 = v265;
        v341 = v128;
        sub_5E3C(&v340, v116, v117, v118);
        v119 = v90;
        v120 = v128;
        v121 = v129;
        v122 = v131;
        if (v90)
        {
          v108 = v120;
          v109 = v121;
          v110 = v122;
          v99 = v122;
          v98 = v121;

          __break(1u);
        }

        else
        {
          v340 = v266;
          v341 = v129;
          sub_5E3C(&v340, v344, &v343, &v342);
          v104 = 0;
          v105 = v128;
          v106 = v129;
          v107 = v131;
          v340 = v267;
          v341 = v131;
          sub_5E3C(&v340, v344, &v343, &v342);
          v100 = 0;
          v101 = v128;
          v102 = v129;
          v103 = v131;
          _os_log_impl(&dword_0, v133, v134, "No exact match found for event %s", v113, 0xCu);
          sub_5E88(v114);
          sub_5E88(v115);
          sub_C3934();

          v111 = v100;
        }
      }

      else
      {
        v91 = v181;

        v111 = v91;
      }

      v96 = v111;
      _objc_release(v133);
      v237(v280, v290);
      v97 = v96;
    }

    v94 = v97;

    v95 = v94;
  }

  v57 = v282;
  v147 = v169;
  v150 = v168;
  v149 = v167;
  v148 = v166;
  v58 = sub_BF704();
  v291(v57, v58, v290);

  v152 = 32;
  v153 = 7;
  v59 = swift_allocObject();
  v60 = v150;
  v154 = v59;
  *(v59 + 16) = v149;
  *(v59 + 24) = v60;
  v161 = sub_C3224();
  v162 = sub_C3874();
  v151 = 17;
  v156 = swift_allocObject();
  *(v156 + 16) = 32;
  v157 = swift_allocObject();
  *(v157 + 16) = 8;
  v61 = swift_allocObject();
  v62 = v154;
  v155 = v61;
  *(v61 + 16) = v268;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v155;
  v159 = v63;
  *(v63 + 16) = v269;
  *(v63 + 24) = v64;
  v158 = sub_C3C64();
  v160 = v65;

  v66 = v156;
  v67 = v160;
  *v160 = v270;
  v67[1] = v66;

  v68 = v157;
  v69 = v160;
  v160[2] = v271;
  v69[3] = v68;

  v70 = v159;
  v71 = v160;
  v160[4] = v272;
  v71[5] = v70;
  sub_4E48();

  if (os_log_type_enabled(v161, v162))
  {
    v72 = v181;
    v140 = sub_C3954();
    v139 = sub_21E8(&qword_EE828, &qword_C5100);
    v141 = sub_5DD4(0);
    v142 = sub_5DD4(1);
    v143 = &v339;
    v339 = v140;
    v144 = &v338;
    v338 = v141;
    v145 = &v337;
    v337 = v142;
    sub_5E28(2, &v339);
    sub_5E28(1, v143);
    v335 = v270;
    v336 = v156;
    sub_5E3C(&v335, v143, v144, v145);
    v146 = v72;
    if (v72)
    {

      __break(1u);
    }

    else
    {
      v335 = v271;
      v336 = v157;
      sub_5E3C(&v335, &v339, &v338, &v337);
      v138 = 0;
      v335 = v272;
      v336 = v159;
      sub_5E3C(&v335, &v339, &v338, &v337);
      _os_log_impl(&dword_0, v161, v162, "Found an exact match for event %s", v140, 0xCu);
      sub_5E88(v141);
      sub_5E88(v142);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v161);
  v237(v282, v290);
  v73 = swift_allocObject();
  v74 = v150;
  *(v73 + 16) = v149;
  *(v73 + 24) = v74;
  v135 = v73;

  sub_49790(__b);

  v136 = v273;
  v137 = v135;
  return v136;
}

unint64_t sub_ABACC(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    sub_21E8(&qword_EF000, &qword_C5E10);
    v1 = sub_C3704();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_ABBDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABC1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABC5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABCF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABD34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABD74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABE0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABE4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABE8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABF24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABF64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_ABFA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_AC03C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_AC07C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_AC0BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_AC0FC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_A5D2C(a1, v6, v7);
}

unint64_t sub_AC21C()
{
  v2 = qword_F0E88;
  if (!qword_F0E88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0E88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_AC298()
{
  v6[1] = 0;
  v3 = *sub_6DBBC();

  v2 = *sub_6DC1C();

  sub_C30A4();
  v4 = sub_C36E4();

  v6[0] = v4;
  _objc_retain(v5);
  sub_21E8(&qword_EF9C8, &qword_C6550);
  sub_AC4C8();
  v1 = sub_C3664();
  _objc_release(v5);
  sub_1D7C8(v6);
  return v1 & 1;
}

uint64_t sub_AC3DC(uint64_t a1, void *a2)
{
  sub_C3084();
  v4 = [a2 catId];
  sub_C3494();
  v5 = sub_C3574();

  _objc_release(v4);

  return v5 & 1;
}

unint64_t sub_AC4C8()
{
  v2 = qword_F0E90;
  if (!qword_F0E90)
  {
    sub_81B0(&qword_EF9C8, &qword_C6550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0E90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_AC550()
{
  v8 = v0;
  v4 = [v0 catId];
  v7[0] = sub_C3494();
  v7[1] = v1;
  v6[0] = sub_C3564("dalTellAStory", 0xDuLL, 1);
  v6[1] = v2;
  sub_B2E8();
  v5 = sub_C39D4();
  sub_8224(v6);
  sub_8224(v7);
  _objc_release(v4);
  return v5 & 1;
}

uint64_t *sub_AC62C()
{
  if (qword_EE7D8 != -1)
  {
    swift_once();
  }

  return &qword_F15C8;
}

uint64_t sub_BF244()
{
  v1 = *sub_AC62C();

  return v1;
}

uint64_t sub_BF288(uint64_t *a1)
{
  v8 = a1;
  v7 = v1;
  sub_24F4(a1, v6);
  sub_BD6C(v6, (v1 + 16));
  type metadata accessor for CannedDialogHelper();
  sub_24F4(a1, v5);
  *(v4 + 56) = sub_BC60(v5);
  type metadata accessor for PlayWithMeData();
  *(v4 + 64) = sub_7E490();
  sub_2560(a1);
  return v4;
}

uint64_t sub_BF340()
{
  sub_2560(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v4;
}

uint64_t sub_BF388()
{
  v7 = 0;
  sub_24F4(v0 + 16, v4);
  v3 = v5;
  v2 = v6;
  sub_808C(v4, v5);
  (*(v2 + 8))(v3);
  return sub_2560(v4);
}

uint64_t sub_BF40C()
{
  v7 = 0;
  sub_24F4(v0 + 16, v4);
  v3 = v5;
  v2 = v6;
  sub_808C(v4, v5);
  (*(v2 + 16))(v3);
  return sub_2560(v4);
}

uint64_t sub_BF490()
{
  v8 = 0;
  sub_24F4(v0 + 16, v5);
  v3 = v6;
  v2 = v7;
  sub_808C(v5, v6);
  v4 = (*(v2 + 24))(v3);
  sub_2560(v5);
  return v4;
}

uint64_t sub_BF518()
{
  v8 = 0;
  sub_24F4(v0 + 16, v5);
  v3 = v6;
  v2 = v7;
  sub_808C(v5, v6);
  v4 = (*(v2 + 32))(v3);
  sub_2560(v5);
  return v4;
}

uint64_t sub_BF5A0()
{
  v7 = 0;
  sub_24F4(v0 + 16, v4);
  v3 = v5;
  v2 = v6;
  sub_808C(v4, v5);
  (*(v2 + 40))(v3);
  return sub_2560(v4);
}

uint64_t sub_BF624()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_BF704()
{
  if (qword_EE7E0 != -1)
  {
    swift_once();
  }

  v0 = sub_C3234();
  return sub_6F6B4(v0, qword_F15D0);
}

uint64_t sub_BF770()
{
  v1 = sub_C3234();
  sub_6F618(v1, qword_F15D0);
  sub_6F6B4(v1, qword_F15D0);
  v2 = *sub_BF7DC();
  _objc_retain(v2);
  return sub_C3244();
}

uint64_t *sub_BF7DC()
{
  if (qword_EE7E8 != -1)
  {
    swift_once();
  }

  return &qword_F15E8;
}

uint64_t sub_BF83C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BF704();
  v1 = sub_C3234();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_BF8A0()
{
  sub_5C3F0();
  v0 = sub_BF91C();
  v3 = *v0;
  v4 = v0[1];

  v1 = sub_BF97C();
  v5 = *v1;
  v6 = v1[1];

  result = sub_C3924();
  qword_F15E8 = result;
  return result;
}

uint64_t *sub_BF91C()
{
  if (qword_EE7F0 != -1)
  {
    swift_once();
  }

  return &qword_F15F0;
}

uint64_t *sub_BF97C()
{
  if (qword_EE7F8 != -1)
  {
    swift_once();
  }

  return &qword_F1600;
}

void *sub_BF9DC()
{
  v1 = *sub_BF7DC();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_BFA14()
{
  v1 = *sub_BF7DC();
  _objc_retain(v1);
  return sub_C31F4();
}

uint64_t sub_BFA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v14 = a4;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v17 = sub_C3214();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v18 = &v8 - v8;
  v22 = &v8 - v8;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  sub_BFA14();
  v12 = sub_C38E4();
  v13 = *sub_BF7DC();
  _objc_retain(v13);
  sub_C31E4();
  _objc_release(v13);
  (*(v15 + 16))(v14, v18, v17);
  return (*(v15 + 8))(v18, v17);
}

void sub_BFBD4()
{
  sub_C38E4();
  v0 = *sub_BF7DC();
  _objc_retain(v0);
  sub_C31E4();
  _objc_release(v0);
}

void sub_BFC74()
{
  sub_C38D4();
  v0 = *sub_BF7DC();
  _objc_retain(v0);
  sub_C31E4();
  _objc_release(v0);
}

void sub_BFD14(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v15 = sub_C3214();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v14 = &v6 - v7;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v8 = sub_C38F4();
  v16 = *sub_BF7DC();
  _objc_retain(v16);
  sub_BFE50();
  sub_C31E4();
  (*(v12 + 8))(v14, v15);
  _objc_release(v16);
}

uint64_t sub_BFE68()
{
  result = sub_C3564("com.apple.siri", 0xEuLL, 1);
  qword_F15F0 = result;
  qword_F15F8 = v1;
  return result;
}

uint64_t sub_BFEAC()
{
  v0 = sub_BF91C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_BFEE8()
{
  result = sub_C3564("SiriSocialConversation", 0x16uLL, 1);
  qword_F1600 = result;
  qword_F1608 = v1;
  return result;
}

uint64_t sub_BFF2C()
{
  v0 = sub_BF97C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_BFFF0(uint64_t a1, uint64_t a2)
{
  v121 = a1;
  v122 = a2;
  v101 = sub_1D834;
  v102 = sub_7BBC;
  v103 = sub_7B48;
  v104 = sub_7B48;
  v105 = sub_7C08;
  v106 = sub_1D834;
  v107 = sub_7BBC;
  v108 = sub_7B48;
  v109 = sub_7B48;
  v110 = sub_7C08;
  v151 = 0;
  v149 = 0;
  v150 = 0;
  v148 = 0;
  v147 = 0;
  v145 = 0;
  v146 = 0;
  v111 = 0;
  v139 = 0;
  v131 = 0;
  v112 = sub_C3234();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v112);
  v116 = v42 - v115;
  v117 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42 - v115);
  v118 = v42 - v117;
  v119 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v131);
  v120 = v42 - v119;
  v123 = sub_C1AC4();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v127 = *(v124 + 64);
  v126 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v131);
  v128 = v42 - v126;
  v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v130 = v42 - v129;
  v151 = v42 - v129;
  v149 = v5;
  v150 = v6;
  v148 = v2;
  sub_210D0();
  type metadata accessor for SocialConversationFlowDelegatePlugin();
  v132 = sub_2115C();
  v147 = v132;
  v133 = [v132 resourceURL];
  if (v133)
  {
    v100 = v133;
    v99 = v133;
    sub_C1A94();
    (*(v124 + 32))(v120, v128, v123);
    (*(v124 + 56))(v120, 0, 1, v123);
    _objc_release(v99);
  }

  else
  {
    (*(v124 + 56))(v120, 1, 1, v123);
  }

  if ((*(v124 + 48))(v120, 1, v123) == 1)
  {
    sub_1DAA4(v120);
    _objc_release(v132);
    v68 = 0;
    v69 = 0;
  }

  else
  {
    (*(v124 + 32))(v130, v120, v123);
    sub_C1A84();
    v96 = sub_C1AA4();
    v97 = v7;
    v145 = v96;
    v146 = v7;
    v94 = *(v124 + 8);
    v95 = v124 + 8;
    v94(v128, v123);
    sub_C1338();

    v98 = sub_C139C();
    if (v98)
    {
      v93 = v98;
      v8 = v118;
      v79 = v98;
      v139 = v98;
      v9 = sub_BF704();
      (*(v113 + 16))(v8, v9, v112);

      v81 = 32;
      v82 = 7;
      v10 = swift_allocObject();
      v11 = v97;
      v83 = v10;
      *(v10 + 16) = v96;
      *(v10 + 24) = v11;
      v91 = sub_C3224();
      v92 = sub_C3874();
      v80 = 17;
      v85 = swift_allocObject();
      *(v85 + 16) = 32;
      v86 = swift_allocObject();
      *(v86 + 16) = 8;
      v12 = swift_allocObject();
      v13 = v83;
      v84 = v12;
      *(v12 + 16) = v101;
      *(v12 + 24) = v13;
      v14 = swift_allocObject();
      v15 = v84;
      v88 = v14;
      *(v14 + 16) = v102;
      *(v14 + 24) = v15;
      v90 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v87 = sub_C3C64();
      v89 = v16;

      v17 = v85;
      v18 = v89;
      *v89 = v103;
      v18[1] = v17;

      v19 = v86;
      v20 = v89;
      v89[2] = v104;
      v20[3] = v19;

      v21 = v88;
      v22 = v89;
      v89[4] = v105;
      v22[5] = v21;
      sub_4E48();

      if (os_log_type_enabled(v91, v92))
      {
        v23 = v111;
        v72 = sub_C3954();
        v71 = sub_21E8(&qword_EE828, &qword_C5100);
        v73 = sub_5DD4(0);
        v74 = sub_5DD4(1);
        v75 = v138;
        v138[0] = v72;
        v76 = &v137;
        v137 = v73;
        v77 = &v136;
        v136 = v74;
        sub_5E28(2, v138);
        sub_5E28(1, v75);
        v134 = v103;
        v135 = v85;
        sub_5E3C(&v134, v75, v76, v77);
        v78 = v23;
        if (v23)
        {

          __break(1u);
        }

        else
        {
          v134 = v104;
          v135 = v86;
          sub_5E3C(&v134, v138, &v137, &v136);
          v70 = 0;
          v134 = v105;
          v135 = v88;
          sub_5E3C(&v134, v138, &v137, &v136);
          _os_log_impl(&dword_0, v91, v92, "Loaded image from bundle: %s", v72, 0xCu);
          sub_5E88(v73);
          sub_5E88(v74);
          sub_C3934();
        }
      }

      else
      {
      }

      _objc_release(v91);
      (*(v113 + 8))(v118, v112);
      v63 = 0;
      type metadata accessor for Base64EncodingOptions();
      v64 = sub_C3C64();
      sub_8AB0();
      sub_C3A24();
      v65 = [v79 base64EncodedStringWithOptions:v138[1]];
      v66 = sub_C3494();
      v67 = v24;
      _objc_release(v65);
      _objc_release(v79);

      v94(v130, v123);
      _objc_release(v132);
      v68 = v66;
      v69 = v67;
    }

    else
    {
      v25 = v116;
      v26 = sub_BF704();
      (*(v113 + 16))(v25, v26, v112);

      v51 = 32;
      v52 = 7;
      v27 = swift_allocObject();
      v28 = v97;
      v53 = v27;
      *(v27 + 16) = v96;
      *(v27 + 24) = v28;
      v61 = sub_C3224();
      v62 = sub_C3884();
      v50 = 17;
      v55 = swift_allocObject();
      *(v55 + 16) = 32;
      v56 = swift_allocObject();
      *(v56 + 16) = 8;
      v29 = swift_allocObject();
      v30 = v53;
      v54 = v29;
      *(v29 + 16) = v106;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v54;
      v58 = v31;
      *(v31 + 16) = v107;
      *(v31 + 24) = v32;
      v60 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v57 = sub_C3C64();
      v59 = v33;

      v34 = v55;
      v35 = v59;
      *v59 = v108;
      v35[1] = v34;

      v36 = v56;
      v37 = v59;
      v59[2] = v109;
      v37[3] = v36;

      v38 = v58;
      v39 = v59;
      v59[4] = v110;
      v39[5] = v38;
      sub_4E48();

      if (os_log_type_enabled(v61, v62))
      {
        v40 = v111;
        v43 = sub_C3954();
        v42[2] = sub_21E8(&qword_EE828, &qword_C5100);
        v44 = sub_5DD4(0);
        v45 = sub_5DD4(1);
        v46 = &v144;
        v144 = v43;
        v47 = &v143;
        v143 = v44;
        v48 = &v142;
        v142 = v45;
        sub_5E28(2, &v144);
        sub_5E28(1, v46);
        v140 = v108;
        v141 = v55;
        sub_5E3C(&v140, v46, v47, v48);
        v49 = v40;
        if (v40)
        {

          __break(1u);
        }

        else
        {
          v140 = v109;
          v141 = v56;
          sub_5E3C(&v140, &v144, &v143, &v142);
          v42[1] = 0;
          v140 = v110;
          v141 = v58;
          sub_5E3C(&v140, &v144, &v143, &v142);
          _os_log_impl(&dword_0, v61, v62, "Failed to loaded image from bundle: %s", v43, 0xCu);
          sub_5E88(v44);
          sub_5E88(v45);
          sub_C3934();
        }
      }

      else
      {
      }

      _objc_release(v61);
      (*(v113 + 8))(v116, v112);

      v94(v130, v123);
      _objc_release(v132);
      v68 = 0;
      v69 = 0;
    }
  }

  return v68;
}

unint64_t sub_C1338()
{
  v2 = qword_F0F70;
  if (!qword_F0F70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_F0F70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_C13E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_C1424(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v15 = v2;
  sub_C3514();
  sub_C3564(".png", 4uLL, 1);
  v7 = sub_C3554();
  v8 = v3;

  v9 = sub_BFFF0(v7, v8);
  v10 = v4;

  v11 = v9;
  v12 = v10;
  if (v10)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = sub_C3564("", 0, 1);
    v14 = v5;
  }

  return v13;
}

uint64_t sub_C1550(uint64_t a1, uint64_t a2, char a3)
{
  v18[2] = 0;
  v20 = a1;
  v21 = a2;
  v19 = a3 & 1;
  v18[0] = sub_C3514();
  v18[1] = v3;
  if (a3)
  {
    sub_C3564("-win", 4uLL, 1);
  }

  else
  {
    sub_C3564("-lose", 5uLL, 1);
  }

  sub_C3584();

  sub_C3564(".png", 4uLL, 1);
  v9 = sub_C3554();
  v10 = v4;

  v11 = sub_BFFF0(v9, v10);
  v12 = v5;

  v14 = v11;
  v15 = v12;
  if (v12)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = sub_C3564("", 0, 1);
    v17 = v6;
  }

  v8 = v16;
  sub_8224(v18);
  return v8;
}

id sub_C1748()
{
  v2 = sub_C3484();
  v3 = [v1 initWithContentsOfFile:?];
  _objc_release(v2);

  return v3;
}

uint64_t sub_C1804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_C1844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_C1884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_C191C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_C195C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}