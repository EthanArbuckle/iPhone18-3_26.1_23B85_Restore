uint64_t sub_29D51CE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B367C();
  v11 = sub_29D5B365C();
  v35 = a2 + 16;
  v36 = a1;
  sub_29D51D340(sub_29D525390, v34, v10);
  sub_29D5B36AC();

  v12 = sub_29D5B370C();
  v13 = sub_29D5B429C();

  if (!os_log_type_enabled(v12, v13))
  {

    (*(v7 + 8))(v9, v6);
LABEL_7:
    v38[0] = v10;
    sub_29D54F8F4(v11);
    v25 = v38[0];
    v38[0] = MEMORY[0x29EDCA190];
    if (v25 >> 62)
    {
LABEL_25:
      v26 = sub_29D5B485C();
      if (v26)
      {
LABEL_9:
        v27 = 0;
        v28 = MEMORY[0x29EDCA190];
        do
        {
          v29 = v27;
          while (1)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x29ED5EF30](v29, v25);
            }

            else
            {
              if (v29 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v30 = *(v25 + 8 * v29 + 32);
            }

            v31 = v30;
            v27 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v29;
            if (v27 == v26)
            {
              goto LABEL_27;
            }
          }

          MEMORY[0x29ED5E5E0]();
          if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29D5B408C();
          }

          sub_29D5B40AC();
          v28 = v38[0];
        }

        while (v27 != v26);
        goto LABEL_27;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_9;
      }
    }

    v28 = MEMORY[0x29EDCA190];
LABEL_27:

    *a3 = v28;
    return result;
  }

  v32 = v6;
  v33 = a3;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v38[0] = v15;
  *v14 = 136446466;
  v37 = type metadata accessor for UDCSnippetGenerator(0);
  sub_29D523B9C(0);
  v16 = sub_29D5B3E7C();
  v18 = sub_29D501890(v16, v17, v38);

  *(v14 + 4) = v18;
  *(v14 + 12) = 2082;
  if (!(v10 >> 62))
  {
    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v11 >> 62))
    {
      goto LABEL_4;
    }

LABEL_29:
    result = sub_29D5B485C();
    v21 = v19 + result;
    if (!__OFADD__(v19, result))
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

  v19 = sub_29D5B485C();
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

LABEL_4:
  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v21 = v19 + result;
  if (!__OFADD__(v19, result))
  {
LABEL_5:
    v37 = v21;
    v22 = sub_29D5B4C4C();
    v24 = sub_29D501890(v22, v23, v38);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_29D48C000, v12, v13, "[%{public}s] Generating FeedItems for %{public}s UDC concepts", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v15, -1, -1);
    MEMORY[0x29ED5FB80](v14, -1, -1);

    (*(v7 + 8))(v9, v32);
    a3 = v33;
    goto LABEL_7;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_29D51D258(id *a1)
{
  v2 = sub_29D5B0EDC();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*a1 UUID];
  sub_29D5B0EBC();

  v6 = sub_29D5B366C();
  swift_beginAccess();
  sub_29D51B780(v6, v4);
  return swift_endAccess();
}

void sub_29D51D340(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED5EF30](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_29D51D440(void *a1)
{
  sub_29D50CCA4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *a1;
  sub_29D523E04(0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
  sub_29D50B24C();
  sub_29D5B3FEC();
  sub_29D4B3AF4();
  sub_29D5B391C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D51D588@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v23 = a4;
  v24 = a2;
  v26 = a5;
  v7 = sub_29D5B148C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  sub_29D524FEC();
  v25 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  swift_beginAccess();
  v15 = *(a3 + 16);

  v16 = v14;
  v27 = sub_29D5B261C();
  (*(v8 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v7);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v24;
  *(v18 + 3) = v16;
  *(v18 + 4) = v15;
  (*(v8 + 32))(&v18[v17], &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_29D5250C8();
  sub_29D5251EC(0, &qword_2A1A17E28, sub_29D5241A0, MEMORY[0x29EDC9C68]);
  sub_29D523CE4(&qword_2A1A16710, sub_29D5250C8);
  v19 = v16;
  sub_29D5B3B7C();

  sub_29D523CE4(&qword_2A17A48A0, sub_29D524FEC);
  v20 = v25;
  v21 = sub_29D5B3B1C();

  result = (*(v11 + 8))(v13, v20);
  *v26 = v21;
  return result;
}

uint64_t sub_29D51D8B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v249 = a3;
  v250 = a2;
  v190 = type metadata accessor for NavigationFeedItemData();
  v4 = MEMORY[0x2A1C7C4A8](v190);
  v6 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v179 - v7;
  v194 = sub_29D5B1D6C();
  v191 = *(v194 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v194);
  v189 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v224 = &v179 - v11;
  v193 = sub_29D5B1C2C();
  v192 = *(v193 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v193);
  v188 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v225 = &v179 - v14;
  v15 = MEMORY[0x29EDC9C68];
  sub_29D5251EC(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v214 = &v179 - v17;
  v18 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v202 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_29D5B0E6C();
  v20 = *(v230 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v230);
  v201 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v200 = &v179 - v23;
  sub_29D5251EC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v15);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v229 = &v179 - v25;
  sub_29D5251EC(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v15);
  MEMORY[0x2A1C7C4A8](v26 - 8);
  v228 = &v179 - v27;
  v216 = sub_29D5B104C();
  v259 = *(v216 - 8);
  MEMORY[0x2A1C7C4A8](v216);
  v215 = &v179 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_29D5B1AAC();
  v29 = *(v221 - 8);
  MEMORY[0x2A1C7C4A8](v221);
  v220 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5251EC(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v15);
  MEMORY[0x2A1C7C4A8](v31 - 8);
  v219 = &v179 - v32;
  v246 = sub_29D5B134C();
  v33 = *(v246 - 8);
  v34 = MEMORY[0x2A1C7C4A8](v246);
  v184 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v182 = &v179 - v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v183 = &v179 - v39;
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v186 = &v179 - v41;
  v42 = MEMORY[0x2A1C7C4A8](v40);
  v185 = &v179 - v43;
  v44 = MEMORY[0x2A1C7C4A8](v42);
  v187 = &v179 - v45;
  v46 = MEMORY[0x2A1C7C4A8](v44);
  v213 = &v179 - v47;
  v48 = MEMORY[0x2A1C7C4A8](v46);
  v212 = &v179 - v49;
  v50 = MEMORY[0x2A1C7C4A8](v48);
  v244 = &v179 - v51;
  MEMORY[0x2A1C7C4A8](v50);
  v243 = &v179 - v52;
  sub_29D523E04(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDBA1D0]);
  v254 = v53;
  v54 = *(v53 - 8);
  v55 = MEMORY[0x2A1C7C4A8](v53);
  v211 = &v179 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v55);
  v218 = &v179 - v57;
  sub_29D5241A0();
  v251 = v58;
  v59 = *(v58 - 8);
  v60 = MEMORY[0x2A1C7C4A8](v58);
  v247 = &v179 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x2A1C7C4A8](v60);
  v217 = &v179 - v63;
  MEMORY[0x2A1C7C4A8](v62);
  v223 = &v179 - v64;
  sub_29D5251EC(0, &qword_2A1A17E28, sub_29D5241A0, v15);
  v66 = MEMORY[0x2A1C7C4A8](v65 - 8);
  v222 = &v179 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v66);
  v226 = &v179 - v69;
  v70 = *(a1 + 16);
  if (v70)
  {
    v71 = 0;
    v231 = 0;
    v72 = a1 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v242 = *(v68 + 72);
    v245 = (v59 + 48);
    v241 = (v54 + 16);
    v240 = (v54 + 8);
    v210 = *MEMORY[0x29EDC3F28];
    v209 = (v29 + 104);
    v208 = (v29 + 8);
    v205 = *MEMORY[0x29EDC3730];
    v207 = v259 + 104;
    v204 = (v20 + 48);
    v197 = (v20 + 32);
    v196 = (v20 + 16);
    v195 = (v20 + 8);
    v253 = (v33 + 32);
    v203 = v33 + 48;
    v198 = (v33 + 16);
    v206 = v33;
    v199 = (v33 + 8);
    v232 = MEMORY[0x29EDCA190];
    v248 = MEMORY[0x29EDCA190];
    v180 = v6;
    v181 = v8;
    v73 = v224;
    v74 = v225;
    v75 = v251;
    v76 = v223;
    v77 = v226;
    v78 = v222;
    do
    {
      v255 = v72;
      v256 = v70;
      v79 = sub_29D52488C(v72, v77, &qword_2A1A17E28, sub_29D5241A0);
      v259 = MEMORY[0x29ED5F4B0](v79);
      sub_29D52488C(v77, v78, &qword_2A1A17E28, sub_29D5241A0);
      if ((*v245)(v78, 1, v75) == 1)
      {
        sub_29D52490C(v78, &qword_2A1A17E28, sub_29D5241A0);
      }

      else
      {
        v239 = v71;
        sub_29D524C68(v78, v76, sub_29D5241A0);
        v80 = v217;
        sub_29D524CD0(v76, v217, sub_29D5241A0);

        v81 = type metadata accessor for UserDomainConceptFeedItemData();
        v82 = v80 + v81[5];
        v83 = v218;
        v84 = v254;
        v236 = *v241;
        v236(v218, v82, v254);
        sub_29D524BC4(v80, type metadata accessor for UserDomainConceptFeedItemData);
        v85 = sub_29D5B3CEC();
        v235 = *v240;
        v235(v83, v84);
        v86 = [v85 isLowUtility];

        if (v86)
        {
          v87 = 1;
        }

        else
        {
          sub_29D48F51C(0, &qword_2A1A16348);
          v87 = sub_29D5B42BC() | v231;
        }

        v231 = v87;
        v88 = v247;
        sub_29D524CD0(v76, v247, sub_29D5241A0);

        sub_29D523CE4(&qword_2A17A4880, type metadata accessor for UserDomainConceptFeedItemData);
        sub_29D523CE4(&qword_2A17A4888, type metadata accessor for UserDomainConceptFeedItemData);
        v237 = sub_29D5B287C();
        sub_29D524BC4(v88, type metadata accessor for UserDomainConceptFeedItemData);
        v89 = sub_29D5B143C();
        v90 = sub_29D5B3CEC();
        v91 = [v90 UUID];

        v92 = v219;
        sub_29D5B0EBC();

        v93 = sub_29D5B0EDC();
        (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
        v94 = v220;
        v95 = v221;
        (*v209)(v220, v210, v221);
        v96 = v81[12];
        v97 = *(v76 + v96);
        LODWORD(v234) = *(v76 + v96 + 8);
        v238 = v89;
        sub_29D5B294C();
        (*v208)(v94, v95);
        sub_29D52490C(v92, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
        sub_29D523CE4(&qword_2A17A4890, type metadata accessor for UserDomainConceptFeedItemData);
        v98 = v252;
        sub_29D5B0BEC();
        v252 = v98;
        if (v98)
        {

          sub_29D524BC4(v76, sub_29D5241A0);
          objc_autoreleasePoolPop(v259);
          sub_29D52490C(v226, &qword_2A1A17E28, sub_29D5241A0);
          goto LABEL_38;
        }

        v227 = v97;
        type metadata accessor for ConceptLatestValueFeedItemViewController();
        (*v207)(v215, v205, v216);
        v233 = v238;
        sub_29D5B110C();
        v99 = v229;
        sub_29D52488C(v76 + v81[7], v229, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
        v100 = 1;
        if ((*v204)(v99, 1, v230) != 1)
        {
          v101 = v200;
          v102 = v230;
          (*v197)(v200, v229, v230);
          (*v196)(v201, v101, v102);
          sub_29D5B0C6C();
          sub_29D5B16EC();
          (*v195)(v101, v102);
          v100 = 0;
        }

        v103 = sub_29D5B170C();
        (*(*(v103 - 8) + 56))(v228, v100, 1, v103);
        v104 = v244;
        sub_29D5B12BC();

        sub_29D5B124C();
        sub_29D5B12AC();
        v105 = sub_29D524D38();
        v106 = sub_29D5B130C();
        sub_29D4E80E8(v105);
        v106(v257, 0);
        v107 = v248;
        if ((v234 & 1) == 0)
        {
          sub_29D5B132C();
        }

        v108 = *v253;
        (*v253)(v243, v104, v246);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_29D515230(0, *(v107 + 16) + 1, 1, v107);
        }

        v110 = *(v107 + 16);
        v109 = *(v107 + 24);
        v111 = v81;
        if (v110 >= v109 >> 1)
        {
          v107 = sub_29D515230(v109 > 1, v110 + 1, 1, v107);
        }

        *(v107 + 16) = v110 + 1;
        v112 = v206;
        v113 = ((*(v112 + 80) + 32) & ~*(v112 + 80));
        v248 = v107;
        v238 = v113;
        v234 = *(v206 + 72);
        v114 = &v113[v107 + v234 * v110];
        v115 = v246;
        (v108)(v114, v243, v246);
        v116 = v247;
        sub_29D524CD0(v76, v247, sub_29D5241A0);
        v233 = v108;
        v117 = v76;
        v118 = v251;

        v119 = v211;
        v120 = v254;
        v236(v211, v116 + v111[5], v254);
        sub_29D524BC4(v116, type metadata accessor for UserDomainConceptFeedItemData);
        v121 = sub_29D5B3CEC();
        v235(v119, v120);
        v122 = *(v117 + *(v118 + 48));
        v123 = v214;
        v124 = v115;
        sub_29D528128(v121, v122, v250, v249, v214);
        v125 = v123;
        if ((*(v112 + 48))(v123, 1, v115) == 1)
        {

          sub_29D52490C(v123, qword_2A1A19830, MEMORY[0x29EDC3840]);
          v73 = v224;
          v77 = v226;
          v78 = v222;
        }

        else
        {
          v126 = v212;
          v127 = v233;
          (v233)(v212, v125, v115);
          (*v198)(v213, v126, v115);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v232 = sub_29D515230(0, v232[2] + 1, 1, v232);
          }

          v129 = v232[2];
          v128 = v232[3];
          v77 = v226;
          v78 = v222;
          if (v129 >= v128 >> 1)
          {
            v232 = sub_29D515230(v128 > 1, v129 + 1, 1, v232);
          }

          (*v199)(v212, v124);
          v130 = v232;
          v232[2] = v129 + 1;
          (v127)(&v238[v130 + v129 * v234], v213, v124);
          v73 = v224;
        }

        v71 = v237 | v239;
        v76 = v223;
        sub_29D524BC4(v223, sub_29D5241A0);
        v74 = v225;
        v75 = v251;
      }

      objc_autoreleasePoolPop(v259);
      sub_29D52490C(v77, &qword_2A1A17E28, sub_29D5241A0);
      v72 = v255 + v242;
      v70 = v256 - 1;
    }

    while (v256 != 1);
    if (v231)
    {
      v239 = v71;
      v131 = v192;
      v132 = v193;
      (*(v192 + 104))(v74, *MEMORY[0x29EDC4000], v193);
      v133 = v191;
      v134 = v194;
      (*(v191 + 104))(v73, *MEMORY[0x29EDC4068], v194);

      v135 = *(v131 + 16);
      v136 = v181;
      v135(v181, v74, v132);
      (*(v133 + 16))(v136 + *(v190 + 20), v73, v134);
      v137 = sub_29D5B143C();
      sub_29D5B27CC();

      sub_29D523CE4(&qword_2A17A4878, type metadata accessor for NavigationFeedItemData);
      v138 = v252;
      sub_29D5B0BEC();
      if (v138)
      {

        sub_29D524BC4(v136, type metadata accessor for NavigationFeedItemData);
        (*(v133 + 8))(v73, v194);
        (*(v192 + 8))(v225, v193);
LABEL_38:
      }

      v252 = 0;
      type metadata accessor for NavigationFeedItemViewController();
      (*v207)(v215, *MEMORY[0x29EDC36D0], v216);
      sub_29D5B143C();
      v146 = v185;
      sub_29D5B110C();
      sub_29D5B124C();
      v147 = v225;
      sub_29D5B1C1C();
      sub_29D5B132C();
      v148 = sub_29D5B159C();
      v150 = v149;
      v151 = sub_29D5B130C();
      sub_29D59AD10(&v258, v148, v150);

      v151(v257, 0);
      sub_29D524BC4(v181, type metadata accessor for NavigationFeedItemData);
      (*(v133 + 8))(v224, v194);
      (*(v192 + 8))(v147, v193);
      v152 = v187;
      v153 = v246;
      v259 = *v253;
      (v259)(v187, v146, v246);
      v154 = v186;
      (*v198)(v186, v152, v153);
      v140 = sub_29D515230(0, 1, 1, MEMORY[0x29EDCA190]);
      v156 = v140[2];
      v155 = v140[3];
      if (v156 >= v155 >> 1)
      {
        v140 = sub_29D515230(v155 > 1, v156 + 1, 1, v140);
      }

      v157 = v206;
      v158 = v248;
      LOBYTE(v71) = v239;
      (*(v206 + 8))(v187, v153);
      v140[2] = v156 + 1;
      (v259)(v140 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v156, v154, v153);
      v141 = v194;
      v142 = v191;
      v143 = v193;
      v144 = v192;
      v145 = v190;
      result = v158;
    }

    else
    {
      v140 = MEMORY[0x29EDCA190];
      v141 = v194;
      v142 = v191;
      v143 = v193;
      v144 = v192;
      v145 = v190;
      result = v248;
    }

    v159 = v189;
    v160 = v188;
    if ((v71 & 1) == 0)
    {
      return result;
    }

    v248 = result;
    v161 = v143;
    (*(v144 + 104))(v188, *MEMORY[0x29EDC3FF8], v143);
    (*(v142 + 104))(v159, *MEMORY[0x29EDC4068], v141);

    v162 = *(v144 + 16);
    v163 = v180;
    v162(v180, v160, v161);
    (*(v142 + 16))(v163 + *(v145 + 20), v159, v141);
    v164 = sub_29D5B143C();
    sub_29D5B27CC();

    sub_29D523CE4(&qword_2A17A4878, type metadata accessor for NavigationFeedItemData);
    v165 = v252;
    sub_29D5B0BEC();
    if (v165)
    {

      sub_29D524BC4(v163, type metadata accessor for NavigationFeedItemData);
      (*(v191 + 8))(v189, v194);
      (*(v192 + 8))(v188, v193);

      v232 = v140;
      goto LABEL_38;
    }

    v252 = 0;
    type metadata accessor for NavigationFeedItemViewController();
    (*v207)(v215, *MEMORY[0x29EDC36D0], v216);
    sub_29D5B143C();
    v166 = v182;
    sub_29D5B110C();
    sub_29D5B124C();
    v167 = v188;
    sub_29D5B1C1C();
    sub_29D5B132C();
    v168 = sub_29D5B159C();
    v170 = v169;
    v171 = sub_29D5B130C();
    sub_29D59AD10(&v258, v168, v170);

    v171(v257, 0);
    sub_29D524BC4(v180, type metadata accessor for NavigationFeedItemData);
    (*(v191 + 8))(v189, v194);
    (*(v192 + 8))(v167, v193);
    v172 = *v253;
    v173 = v183;
    v174 = v246;
    (*v253)(v183, v166, v246);
    v175 = v184;
    (*v198)(v184, v173, v174);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_29D515230(0, v140[2] + 1, 1, v140);
    }

    v176 = v206;
    v178 = v140[2];
    v177 = v140[3];
    if (v178 >= v177 >> 1)
    {
      v140 = sub_29D515230(v177 > 1, v178 + 1, 1, v140);
    }

    (*(v176 + 8))(v173, v174);
    v140[2] = v178 + 1;
    (v172)(v140 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v178, v175, v174);
    return v248;
  }

  else
  {
    v232 = MEMORY[0x29EDCA190];
    return MEMORY[0x29EDCA190];
  }
}

uint64_t sub_29D51F8C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D5251EC(0, &qword_2A17A4860, sub_29D524380, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v32 - v6;
  sub_29D5245C4(0, &qword_2A17A4868, MEMORY[0x29EDB8B18]);
  v9 = v8;
  v37 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v32 - v10;
  v36 = sub_29D5B371C();
  v12 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = v5;
    v22 = v21;
    v39 = v21;
    v40 = v15;
    *v20 = 136446210;
    v23 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v24 = HKSensitiveLogItem();
    v35 = a2;
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v25 = sub_29D5B3E9C();
    v27 = sub_29D501890(v25, v26, &v39);

    *(v20 + 4) = v27;
    a2 = v35;
    _os_log_impl(&dword_29D48C000, v17, v18, "Error making feed item for record, hiding from UI: %{public}s", v20, 0xCu);
    sub_29D48F668(v22);
    v28 = v22;
    v5 = v34;
    MEMORY[0x29ED5FB80](v28, -1, -1);
    v29 = v20;
    v9 = v33;
    MEMORY[0x29ED5FB80](v29, -1, -1);
  }

  (*(v12 + 8))(v14, v36);
  v40 = MEMORY[0x29EDCA190];
  v41 = MEMORY[0x29EDCA190];
  v42 = MEMORY[0x29EDCA190];
  v43 = MEMORY[0x29EDCA190];
  sub_29D524380(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v38 + 8))(v7, v5);
  sub_29D524C24(&qword_2A17A4870, &qword_2A17A4868, MEMORY[0x29EDB8B18]);
  v30 = sub_29D5B3B1C();
  result = (*(v37 + 8))(v11, v9);
  *a2 = v30;
  return result;
}

void sub_29D51FD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = MEMORY[0x29ED5F4B0]();
  sub_29D5217E8(a6, a1, a3, a4, a5, &v13, &v12);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_29D51FDC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_29D5B36AC();
  v14 = v13;
  v15 = sub_29D5B370C();
  v16 = sub_29D5B427C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v6;
    v20 = v19;
    v40 = v19;
    *v18 = 136446466;
    v39 = sub_29D523B9C(0);
    sub_29D524B58(0, &qword_2A17A4858, sub_29D523B9C);
    v21 = sub_29D5B3E7C();
    v35 = v9;
    v23 = sub_29D501890(v21, v22, &v40);
    v38 = a2;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v39 = v13;
    v25 = v13;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v40);

    *(v18 + 14) = v29;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v30 = v20;
    v6 = v36;
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v18;
    v5 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v10 + 8))(v12, v35);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v39 = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D523CE4(&qword_2A1A165D8, sub_29D4B37EC);
  v32 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v32;
  return result;
}

uint64_t sub_29D520198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      v19 = sub_29D5B4D9C();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_29D5B4C7C() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D520380()
{

  v1 = OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D524BC4(v0 + OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t sub_29D520470@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D5204EC(void *a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x29ED5F4B0]();
  sub_29D52057C(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_29D52057C@<X0>(void *a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v125 = a3;
  v145 = a1;
  v133 = a4;
  v7 = sub_29D5B371C();
  v137 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523E04(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDBA1D0]);
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v140 = &v116 - v11;
  v12 = MEMORY[0x29EDC9C68];
  sub_29D5251EC(0, &qword_2A1A17350, MEMORY[0x29EDC4098], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v131 = &v116 - v14;
  v143 = sub_29D5B1D6C();
  v139 = *(v143 - 8);
  MEMORY[0x2A1C7C4A8](v143);
  v138 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5251EC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v12);
  v17 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v126 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v144 = &v116 - v19;
  v127 = type metadata accessor for UserDomainConceptFeedItemData();
  MEMORY[0x2A1C7C4A8](v127);
  v128 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_29D5B200C();
  v123 = *(v124 - 1);
  MEMORY[0x2A1C7C4A8](v124);
  v122 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5251EC(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], v12);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v121 = &v116 - v23;
  sub_29D4A05F4();
  v25 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v142 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v116 = &v116 - v28;
  MEMORY[0x2A1C7C4A8](v27);
  v141 = &v116 - v29;
  v30 = sub_29D5B0EDC();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v34 = (&v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x2A1C7C4A8](v32);
  v37 = &v116 - v36;
  MEMORY[0x2A1C7C4A8](v35);
  v40 = &v116 - v39;
  if (v38 >> 62)
  {
    goto LABEL_51;
  }

  v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v134 = v4;
  if (!v41)
  {
LABEL_52:
    sub_29D5B36AC();
    v103 = v145;
    v104 = sub_29D5B370C();
    v105 = sub_29D5B427C();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v147 = v107;
      *v106 = 136446466;
      v146 = sub_29D523B9C(0);
      sub_29D524B58(0, &qword_2A17A4858, sub_29D523B9C);
      v108 = sub_29D5B3E7C();
      v110 = sub_29D501890(v108, v109, &v147);

      *(v106 + 4) = v110;
      *(v106 + 12) = 2082;
      v111 = sub_29D5B452C();
      v113 = sub_29D501890(v111, v112, &v147);

      *(v106 + 14) = v113;
      _os_log_impl(&dword_29D48C000, v104, v105, "[%{public}s] Unable to create a UDC Feed Item (No records associated) with concept: %{public}s", v106, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v107, -1, -1);
      MEMORY[0x29ED5FB80](v106, -1, -1);
    }

    (*(v137 + 8))(v9, v7);
    v114 = v133;
    sub_29D5241A0();
    return (*(*(v115 - 8) + 56))(v114, 1, 1, v115);
  }

LABEL_3:
  v120 = v38;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x29ED5EF30](0);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v42 = *(v38 + 32);
  }

  v132 = v42;
  v43 = [v145 UUID];
  sub_29D5B0EBC();

  if (*(a2 + 16) && (v44 = sub_29D57A308(v40), (v45 & 1) != 0))
  {
    v46 = *(v31 + 8);
    v31 += 8;
    v9 = v46;
    v47 = *(*(a2 + 56) + 8 * v44);
    (v46)(v40, v30);
    v48 = [v47 listType];
    v49 = [v47 linkCollection];
    v119 = v48;
    v118 = v47;
    if (v49)
    {
      v50 = v49;
      v5 = [v49 links];

      sub_29D48F51C(0, &qword_2A17A48A8);
      a2 = sub_29D5B402C();

      v51 = a2;
      if (!(a2 >> 62))
      {
        v135 = a2 & 0xFFFFFFFFFFFFFF8;
        v137 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
        v7 = 0;
        v136 = v51 & 0xC000000000000001;
        while (1)
        {
          if (v137 == v7)
          {

            goto LABEL_23;
          }

          if (v136)
          {
            a2 = v51;
            v52 = MEMORY[0x29ED5EF30](v7);
          }

          else
          {
            if (v7 >= *(v135 + 16))
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v120 = v38;
              v102 = sub_29D5B485C();
              v38 = v120;
              v134 = v5;
              if (!v102)
              {
                goto LABEL_52;
              }

              goto LABEL_3;
            }

            a2 = v51;
            v52 = *(v51 + 8 * v7 + 32);
          }

          v40 = v52;
          v53 = [v52 targetUUID];
          sub_29D5B0EBC();

          v54 = [v145 UUID];
          sub_29D5B0EBC();

          v5 = sub_29D5B0EAC();
          (v9)(v34, v30);
          (v9)(v37, v30);
          if (v5)
          {

            v31 = 0;
            v117 = 0;
            goto LABEL_25;
          }

          v55 = __OFADD__(v7++, 1);
          v51 = a2;
          if (v55)
          {
            goto LABEL_50;
          }
        }
      }

LABEL_60:
      v5 = v51;
      v135 = v51 & 0xFFFFFFFFFFFFFF8;
      v137 = sub_29D5B485C();
      v51 = v5;
      goto LABEL_11;
    }

LABEL_23:
    v7 = 0;
    v117 = 0;
    v31 = 1;
  }

  else
  {
    (*(v31 + 8))(v40, v30);
    v7 = 0;
    v119 = 0;
    v118 = 0;
    v31 = 1;
    v117 = 1;
  }

LABEL_25:
  sub_29D523E04(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10, MEMORY[0x29EDBA1D0]);
  v57 = v56;
  v58 = *(*(v56 - 8) + 56);
  v40 = v141;
  v58(v141, 1, 1, v56);
  v59 = v132;
  v147 = v132;
  sub_29D48F51C(0, &qword_2A1A16308);
  if (sub_29D5B22FC())
  {
    sub_29D524BC4(v40, sub_29D4A05F4);
    v58(v40, 1, 1, v57);
    v60 = sub_29D5B0EFC();
    v61 = v121;
    (*(*(v60 - 8) + 56))(v121, 1, 1, v60);
    v62 = v122;
    sub_29D5B1FFC();
    v9 = sub_29D5B2A0C();
    v136 = v63;
    (*(v123 + 1))(v62, v124);
    sub_29D52490C(v61, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v135 = 0;
    v125 = 0;
  }

  else
  {
    if (sub_29D5B44FC())
    {
      sub_29D48F51C(0, &qword_2A1A162F0);
      v64 = v116;
      sub_29D5B3D1C();
      sub_29D524BC4(v40, sub_29D4A05F4);
      v58(v64, 0, 1, v57);
      sub_29D524C68(v64, v40, sub_29D4A05F4);
    }

    v9 = sub_29D5B44EC();
    v136 = v65;
    v66 = v59;
    v135 = sub_29D525250(v59);
    v125 = v67;
  }

  v68 = [v59 meaningfulDate];
  v30 = v143;
  v69 = v144;
  if (v68)
  {
    v70 = v68;
    sub_29D5B0E4C();

    v69 = v144;
    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v37 = sub_29D5B0E6C();
  v72 = *(v37 - 1);
  v34 = v72;
  v124 = v72[7];
  v123 = (v72 + 7);
  (v124)(v69, v71, 1, v37);
  sub_29D524CD0(v40, v142, sub_29D4A05F4);
  v73 = [v145 categoryTypes];
  sub_29D48F51C(0, &qword_2A17A3C90);
  a2 = sub_29D5B402C();

  if (!(a2 >> 62))
  {
    v51 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_35;
  }

LABEL_57:
  v51 = sub_29D5B485C();
LABEL_35:
  v74 = v131;
  v137 = v9;
  if (v51)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x29ED5EF30](0, a2);
      goto LABEL_39;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v75 = *(a2 + 32);
LABEL_39:
      v76 = v75;
      v77 = v31;

      [v76 integerValue];

      v30 = v143;
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_60;
  }

  v77 = v31;

LABEL_41:
  sub_29D5B1D4C();
  v78 = v139;
  v79 = *(v139 + 48);
  if (v79(v74, 1, v30) == 1)
  {
    (*(v78 + 104))(v138, *MEMORY[0x29EDC4078], v30);
    if (v79(v74, 1, v30) != 1)
    {
      sub_29D52490C(v74, &qword_2A1A17350, MEMORY[0x29EDC4098]);
    }
  }

  else
  {
    (*(v78 + 32))(v138, v74, v30);
  }

  sub_29D48F51C(0, &qword_2A1A162D0);
  v80 = v145;
  sub_29D5B3D1C();
  v81 = sub_29D5B453C();
  v83 = v82;
  v84 = v144;
  if (v34[6](v144, 1, v37) == 1)
  {
    v85 = [v80 modificationDate];
    v86 = v126;
    sub_29D5B0E4C();

    v84 = v144;
    sub_29D524BC4(v141, sub_29D4A05F4);
    (v124)(v86, 0, 1, v37);
  }

  else
  {
    sub_29D524BC4(v141, sub_29D4A05F4);

    v86 = v126;
    sub_29D52488C(v84, v126, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  }

  v87 = v77;
  v88 = v128;
  (*(v139 + 32))(v128, v138, v143);
  v89 = v127;
  (*(v129 + 32))(v88 + *(v127 + 20), v140, v130);
  v90 = (v88 + v89[6]);
  *v90 = v81;
  v90[1] = v83;
  sub_29D4D1F64(v86, v88 + v89[7]);
  sub_29D524C68(v142, v88 + v89[8], sub_29D4A05F4);
  v91 = (v88 + v89[9]);
  v92 = v136;
  *v91 = v137;
  v91[1] = v92;
  v93 = (v88 + v89[10]);
  v94 = v125;
  *v93 = v135;
  v93[1] = v94;
  v95 = v88 + v89[11];
  *v95 = v119;
  *(v95 + 8) = v117;
  v96 = v88 + v89[12];
  *v96 = v7;
  *(v96 + 8) = v87;
  sub_29D52490C(v84, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D5241A0();
  v98 = v97;
  v99 = *(v97 + 48);
  v100 = v133;
  sub_29D524C68(v88, v133, type metadata accessor for UserDomainConceptFeedItemData);
  *(v100 + v99) = v120;
  (*(*(v98 - 8) + 56))(v100, 0, 1, v98);
}

uint64_t sub_29D5217E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X6>, char **a6@<X8>, uint64_t *a7)
{
  v108 = a2;
  v101 = a5;
  v103 = a4;
  v105 = a3;
  v99 = a6;
  sub_29D5251EC(0, &qword_2A1A17398, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v102 = &v97 - v9;
  v98 = sub_29D5B109C();
  v100 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v97 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B0EDC();
  v114 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B1AAC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v121 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v116 = &v97 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v97 - v20;
  sub_29D5B140C();
  v22 = *MEMORY[0x29EDC3F28];
  v119 = *(v15 + 104);
  v120 = v15 + 104;
  (v119)(v21, v22, v14);
  v127 = a1;
  v118 = sub_29D5B143C();
  v23 = sub_29D5B10AC();
  v24 = sub_29D5B1A8C();
  v117 = v25;
  v115 = v14;
  v110 = v13;
  v111 = v11;
  if (v23)
  {
    *&v125 = 0x656C69666F72505BLL;
    *(&v125 + 1) = 0xE90000000000003ALL;
    v113 = v24;
    v23 = v23;
    v26 = [v23 identifier];
    sub_29D5B0EBC();

    v27 = v15;
    v28 = sub_29D5B0E8C();
    v30 = v29;
    (*(v114 + 8))(v13, v11);
    v31 = v28;
    v15 = v27;
    MEMORY[0x29ED5E510](v31, v30);
    v14 = v115;

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v24 = v113;
    v33 = *(&v125 + 1);
    v32 = v125;
  }

  else
  {
    v33 = 0x800000029D5BBCB0;
    v32 = 0xD000000000000013;
  }

  *&v125 = v32;
  *(&v125 + 1) = v33;
  MEMORY[0x29ED5E510](v24, v117);

  v35 = *(&v125 + 1);
  v34 = v125;
  v118 = *(v15 + 8);
  (v118)(v21, v14);
  v117 = type metadata accessor for FeedItemContextChangeGenerator();
  inited = swift_initStackObject();
  sub_29D497868(v126, inited + 16);
  v106 = v34;
  *(inited + 56) = __PAIR128__(v35, v34);
  v112 = v35;
  v113 = inited;
  sub_29D5B140C();
  (v119)(v116, *MEMORY[0x29EDC3F00], v14);
  v37 = sub_29D5B143C();
  v38 = sub_29D5B10AC();
  v39 = sub_29D5B1A8C();
  v41 = v40;
  if (v38)
  {
    *&v124 = 0x656C69666F72505BLL;
    *(&v124 + 1) = 0xE90000000000003ALL;
    v107 = v39;
    v38 = v38;
    v42 = [v38 identifier];
    v43 = v110;
    sub_29D5B0EBC();

    v44 = sub_29D5B0E8C();
    v46 = v45;
    (*(v114 + 8))(v43, v111);
    v47 = v44;
    v14 = v115;
    MEMORY[0x29ED5E510](v47, v46);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v39 = v107;
    v49 = *(&v124 + 1);
    v48 = v124;
  }

  else
  {
    v49 = 0x800000029D5BBCB0;
    v48 = 0xD000000000000013;
  }

  *&v124 = v48;
  *(&v124 + 1) = v49;
  MEMORY[0x29ED5E510](v39, v41);

  v50 = v124;
  (v118)(v116, v14);
  v51 = swift_initStackObject();
  sub_29D497868(&v125, v51 + 16);
  v104 = v50;
  *(v51 + 56) = v50;
  v116 = *(&v50 + 1);
  sub_29D5B140C();
  (v119)(v121, *MEMORY[0x29EDC3F40], v14);
  v52 = sub_29D5B143C();
  v53 = sub_29D5B10AC();
  v54 = sub_29D5B1A8C();
  v56 = v55;
  v107 = v51;
  if (v53)
  {
    v122 = 0x656C69666F72505BLL;
    v123 = 0xE90000000000003ALL;
    v57 = v54;
    v53 = v53;
    v58 = [v53 identifier];
    v59 = v110;
    sub_29D5B0EBC();

    v60 = sub_29D5B0E8C();
    v62 = v61;
    (*(v114 + 8))(v59, v111);
    v63 = v60;
    v14 = v115;
    MEMORY[0x29ED5E510](v63, v62);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v54 = v57;
    v64 = v122;
    v65 = v123;
  }

  else
  {
    v65 = 0x800000029D5BBCB0;
    v64 = 0xD000000000000013;
  }

  v122 = v64;
  v123 = v65;
  MEMORY[0x29ED5E510](v54, v56);

  v67 = v122;
  v66 = v123;
  (v118)(v121, v14);
  v68 = swift_initStackObject();
  sub_29D497868(&v124, v68 + 16);
  v120 = v67;
  v121 = v66;
  *(v68 + 56) = v67;
  *(v68 + 64) = v66;
  v69 = v113;
  sub_29D499EC0((v113 + 16), *(v113 + 40));
  sub_29D499EC0((v69 + 16), *(v69 + 40));
  v70 = sub_29D5B13BC();
  sub_29D5B13AC();

  v71 = v109;
  v72 = sub_29D5B404C();
  v73 = v71;
  if (v71)
  {

    swift_setDeallocating();
    sub_29D48F668(v68 + 16);

    v74 = v107;
    swift_setDeallocating();
    sub_29D48F668(v74 + 16);

    swift_setDeallocating();
    sub_29D48F668(v69 + 16);
LABEL_14:

    *a7 = v73;
    return result;
  }

  v118 = v72;
  v119 = v68;

  v75 = v107;
  sub_29D499EC0((v107 + 16), *(v107 + 40));
  sub_29D499EC0((v75 + 16), *(v75 + 40));
  v76 = sub_29D5B13BC();
  sub_29D5B13AC();

  v77 = sub_29D5B404C();

  v122 = v118;
  sub_29D54F7FC(v77);
  v117 = 0;
  v118 = v122;
  v78 = v119;
  sub_29D499EC0((v119 + 16), *(v119 + 40));
  sub_29D499EC0((v78 + 16), *(v78 + 40));
  v79 = sub_29D5B13BC();
  sub_29D5B13AC();

  v80 = v117;
  v81 = sub_29D5B404C();
  v73 = v80;
  if (v80)
  {

    swift_setDeallocating();
    sub_29D48F668(v78 + 16);

    swift_setDeallocating();
    sub_29D48F668(v75 + 16);

    v82 = v113;
    swift_setDeallocating();
    sub_29D48F668(v82 + 16);

    goto LABEL_14;
  }

  v84 = v81;

  v122 = v118;
  sub_29D54F7FC(v84);
  v85 = v122;
  v86 = sub_29D5B143C();
  v87 = v102;
  sub_29D522478(v101, v86, v102);

  v88 = v100;
  v89 = v98;
  if ((*(v100 + 48))(v87, 1, v98) == 1)
  {

    result = sub_29D52490C(v87, &qword_2A1A17398, MEMORY[0x29EDC37D8]);
  }

  else
  {
    v90 = v97;
    (*(v88 + 32))(v97, v87, v89);
    sub_29D5251EC(0, &qword_2A1A16218, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9E90]);
    v91 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_29D5B62A0;
    v93 = *(v88 + 16);
    v127 = v92;
    v93(v92 + v91, v90, v89);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = sub_29D51541C(0, *(v85 + 2) + 1, 1, v85);
    }

    v95 = *(v85 + 2);
    v94 = *(v85 + 3);
    if (v95 >= v94 >> 1)
    {
      v85 = sub_29D51541C((v94 > 1), v95 + 1, 1, v85);
    }

    result = (*(v100 + 8))(v97, v89);
    *(v85 + 2) = v95 + 1;
    v96 = &v85[40 * v95];
    *(v96 + 4) = v127;
    *(v96 + 5) = 0;
    *(v96 + 6) = 0;
    *(v96 + 7) = 0;
    v96[64] = 64;
  }

  *v99 = v85;
  return result;
}

void sub_29D522478(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = type metadata accessor for UDCSnippetGeneratorData(0);
  MEMORY[0x2A1C7C4A8](v34);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1AAC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B0EDC();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v33 = a3;
  v15 = a1;
  v32 = a2;
  v16 = sub_29D5B10AC();
  if (!v16)
  {

    a3 = v33;
LABEL_6:
    v28 = sub_29D5B109C();
    (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    return;
  }

  v17 = v16;
  v18 = [v16 identifier];

  sub_29D5B0EBC();
  v19 = sub_29D5B0E8C();
  v21 = v20;
  (*(v12 + 8))(v14, v11);
  v36 = v19;
  v37 = v21;
  MEMORY[0x29ED5E510](58, 0xE100000000000000);
  (*(v8 + 104))(v10, *MEMORY[0x29EDC3F28], v7);
  v22 = sub_29D5B1A9C();
  v24 = v23;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x29ED5E510](v22, v24);

  sub_29D48F51C(0, &qword_2A1A19650);
  v25 = v15;
  v26 = v35;
  sub_29D5B3D1C();
  sub_29D5B0E5C();
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D523CE4(&qword_2A1A18890, type metadata accessor for UDCSnippetGeneratorData);
  v27 = v38;
  sub_29D5B0BEC();
  v38 = v27;
  if (v27)
  {
    sub_29D524BC4(v26, type metadata accessor for UDCSnippetGeneratorData);
  }

  else
  {

    v29 = v32;
    v30 = v33;
    sub_29D5B107C();

    sub_29D524BC4(v26, type metadata accessor for UDCSnippetGeneratorData);
    v31 = sub_29D5B109C();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }
}

uint64_t sub_29D5228C0(void *a1)
{
  sub_29D525548(0, &qword_2A1A16230, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29D499EC0(a1, a1[3]);
  sub_29D525484();
  sub_29D5B4DCC();
  v9[15] = 0;
  sub_29D523E04(0, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  sub_29D5254D8(&qword_2A1A16500);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for UDCSnippetGeneratorData(0);
    v9[14] = 1;
    sub_29D5B0E6C();
    sub_29D523CE4(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29D522AE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_29D5B0E6C();
  v23 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523E04(0, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v26 = &v21 - v7;
  sub_29D525548(0, &qword_2A1A16250, MEMORY[0x29EDC9E80]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for UDCSnippetGeneratorData(0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D525484();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v22 = v11;
  v14 = v13;
  v15 = v25;
  v16 = v27;
  v32 = 0;
  sub_29D5254D8(&qword_2A1A164F8);
  v17 = v26;
  sub_29D5B4B6C();
  v18 = *(v15 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_29D523CE4(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  sub_29D5B4B6C();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v16);
  sub_29D524CD0(v19, v24, type metadata accessor for UDCSnippetGeneratorData);
  sub_29D48F668(a1);
  return sub_29D524BC4(v19, type metadata accessor for UDCSnippetGeneratorData);
}

uint64_t sub_29D522F58(uint64_t a1)
{
  v2 = sub_29D525484();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D522F94(uint64_t a1)
{
  v2 = sub_29D525484();

  return MEMORY[0x2A1C73280](a1, v2);
}

unint64_t sub_29D523000(int64_t a1, uint64_t a2)
{
  v40 = sub_29D5B0EDC();
  v4 = *(v40 - 8);
  result = MEMORY[0x2A1C7C4A8](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_29D5B47EC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_29D523CE4(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
      v23 = sub_29D5B3D8C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_29D523320(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29D5B0EDC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_29D57A308(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_29D593928();
      goto LABEL_7;
    }

    sub_29D592C00(v17, a3 & 1);
    v23 = sub_29D57A308(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_29D5234EC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_29D5B4CCC();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_29D5234EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29D5B0EDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_29D5235A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v52 = *v2;
  v6 = sub_29D5B13CC();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29D5B13EC();
  v47 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for HealthRecordsGeneratorContext();
  v9 = MEMORY[0x2A1C7C4A8](v45);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v41 - v12;
  v14 = sub_29D5B371C();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D524CD0(a1, v13, type metadata accessor for HealthRecordsGeneratorContext);
  v18 = sub_29D5B370C();
  v19 = sub_29D5B429C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v42 = a2;
    v23 = v22;
    v54 = v22;
    *v21 = 136446466;
    v53 = type metadata accessor for UDCSnippetGenerator(0);
    sub_29D523B9C(0);
    v24 = sub_29D5B3E7C();
    v41 = v14;
    v26 = sub_29D501890(v24, v25, &v54);
    v44 = v3;
    v27 = v26;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    sub_29D524CD0(v13, v11, type metadata accessor for HealthRecordsGeneratorContext);
    v28 = sub_29D5B3E7C();
    v30 = v29;
    sub_29D524BC4(v13, type metadata accessor for HealthRecordsGeneratorContext);
    v31 = sub_29D501890(v28, v30, &v54);
    v3 = v44;

    *(v21 + 14) = v31;
    _os_log_impl(&dword_29D48C000, v18, v19, "Init %{public}s for context %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    v32 = v23;
    a2 = v42;
    MEMORY[0x29ED5FB80](v32, -1, -1);
    v33 = v21;
    a1 = v43;
    MEMORY[0x29ED5FB80](v33, -1, -1);

    (*(v15 + 8))(v17, v41);
  }

  else
  {

    sub_29D524BC4(v13, type metadata accessor for HealthRecordsGeneratorContext);
    (*(v15 + 8))(v17, v14);
  }

  sub_29D524CD0(a1, v3 + OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D5B143C();
  sub_29D5251EC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v34 = sub_29D5B104C();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29D5B62A0;
  (*(v35 + 104))(v37 + v36, *MEMORY[0x29EDC3730], v34);
  (*(v50 + 104))(v48, *MEMORY[0x29EDC3898], v51);
  v38 = v46;
  sub_29D5B13DC();
  (*(v47 + 32))(v3 + OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_domain, v38, v49);
  v39 = sub_29D51B940(a1, a2);
  sub_29D524BC4(a1, type metadata accessor for HealthRecordsGeneratorContext);
  v3[2] = v39;
  return v3;
}

void sub_29D523BBC()
{
  if (!qword_2A1A16CB0)
  {
    sub_29D4F7770();
    sub_29D523CE4(&qword_2A1A16800, sub_29D4F7770);
    v0 = sub_29D5B388C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16CB0);
    }
  }
}

void sub_29D523C50()
{
  if (!qword_2A1A16FD0)
  {
    sub_29D523BBC();
    sub_29D523CE4(&qword_2A1A16CB8, sub_29D523BBC);
    v0 = sub_29D5B380C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16FD0);
    }
  }
}

uint64_t sub_29D523CE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D523D2C()
{
  if (!qword_2A1A16E90)
  {
    sub_29D523C50();
    sub_29D523E04(255, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
    sub_29D523CE4(&qword_2A1A16FD8, sub_29D523C50);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E90);
    }
  }
}

void sub_29D523E04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D48F51C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D523E6C()
{
  if (!qword_2A1A16998)
  {
    sub_29D50B1A4();
    sub_29D523F58();
    sub_29D523CE4(&qword_2A1A168C8, sub_29D50B1A4);
    sub_29D523CE4(&qword_2A1A16F88, sub_29D523F58);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16998);
    }
  }
}

void sub_29D523F58()
{
  if (!qword_2A1A16F80)
  {
    sub_29D523D2C();
    sub_29D4B3AF4();
    sub_29D523CE4(&qword_2A1A16E98, sub_29D523D2C);
    v0 = sub_29D5B382C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16F80);
    }
  }
}

void sub_29D524014()
{
  if (!qword_2A1A16AC8)
  {
    sub_29D524100();
    sub_29D523E6C();
    sub_29D523CE4(&qword_2A1A16850, sub_29D524100);
    sub_29D523CE4(&qword_2A1A169A0, sub_29D523E6C);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16AC8);
    }
  }
}

void sub_29D524100()
{
  if (!qword_2A1A16848)
  {
    sub_29D5251EC(255, &qword_2A1A17E28, sub_29D5241A0, MEMORY[0x29EDC9C68]);
    sub_29D4B3AF4();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16848);
    }
  }
}

void sub_29D5241A0()
{
  if (!qword_2A1A17E30)
  {
    type metadata accessor for UserDomainConceptFeedItemData();
    sub_29D523E04(255, &unk_2A1A163E8, &qword_2A1A16308, 0x29EDBAB60, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A17E30);
    }
  }
}

void sub_29D524240()
{
  if (!qword_2A1A16B08)
  {
    sub_29D524014();
    sub_29D523CE4(&qword_2A1A16AD0, sub_29D524014);
    v0 = sub_29D5B38EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B08);
    }
  }
}

void sub_29D5242D4()
{
  if (!qword_2A1A16B80)
  {
    sub_29D524240();
    sub_29D524380(255);
    sub_29D523CE4(&qword_2A1A16B10, sub_29D524240);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B80);
    }
  }
}

void sub_29D524380(uint64_t a1)
{
  if (!qword_2A1A16470)
  {
    MEMORY[0x2A1C7C4A8](a1);
    sub_29D5251EC(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A16470);
    }
  }
}

void sub_29D5244B8()
{
  if (!qword_2A1A16D60)
  {
    sub_29D5242D4();
    v0 = MEMORY[0x29EDB89F8];
    sub_29D5245C4(255, &qword_2A1A167C8, MEMORY[0x29EDB89F8]);
    sub_29D523CE4(&qword_2A1A16B88, sub_29D5242D4);
    sub_29D524C24(&qword_2A1A167D0, &qword_2A1A167C8, v0);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D60);
    }
  }
}

void sub_29D5245C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D524380(255);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D52463C()
{
  if (!qword_2A1A16B90)
  {
    sub_29D5244B8();
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D523CE4(&qword_2A1A16D68, sub_29D5244B8);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B90);
    }
  }
}

void sub_29D52470C()
{
  if (!qword_2A1A16CD0)
  {
    sub_29D52463C();
    sub_29D4B2D8C();
    sub_29D523CE4(&qword_2A1A16B98, sub_29D52463C);
    sub_29D523CE4(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16CD0);
    }
  }
}

void sub_29D5247F8()
{
  if (!qword_2A1A17030)
  {
    sub_29D52470C();
    sub_29D523CE4(&qword_2A1A16CD8, sub_29D52470C);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17030);
    }
  }
}

uint64_t sub_29D52488C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D5251EC(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D52490C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5251EC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D524984@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_29D51D588(a1, v6, v7, v8, a2);
}

uint64_t sub_29D524A0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  result = sub_29D51D8B8(*a1, v2 + v7, *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
  }

  return result;
}

void sub_29D524AC4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  sub_29D51FD00(*a1, a1[1], a1[2], a1[3], *(v2 + 24), v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  if (!v3)
  {
    *a2 = v7;
  }
}

uint64_t sub_29D524B58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D524BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D524C24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D5245C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D524C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D524CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D524D38()
{
  v19 = MEMORY[0x29EDCA1A0];
  v0 = sub_29D5B158C();
  sub_29D59AD10(&v18, v0, v1);

  v2 = sub_29D5B151C();
  sub_29D59AD10(&v18, v2, v3);

  type metadata accessor for UserDomainConceptFeedItemData();
  sub_29D523E04(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDBA1D0]);
  v4 = sub_29D5B3CEC();
  v5 = [v4 isLowUtility];

  if (v5 & 1) != 0 || (sub_29D48F51C(0, &qword_2A1A16348), (sub_29D5B42BC()))
  {
    v6 = sub_29D5B160C();
    sub_29D59AD10(&v18, v6, v7);
  }

  sub_29D523CE4(&qword_2A17A4880, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D523CE4(&qword_2A17A4888, type metadata accessor for UserDomainConceptFeedItemData);
  if (sub_29D5B287C())
  {
    v8 = sub_29D5B15FC();
    sub_29D59AD10(&v18, v8, v9);
  }

  v10 = v19;
  sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B5E20;
  *(inited + 32) = sub_29D5B160C();
  *(inited + 40) = v12;
  *(inited + 48) = sub_29D5B15FC();
  *(inited + 56) = v13;
  v14 = sub_29D5959C4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOBYTE(v10) = sub_29D520198(v14, v10);

  if (v10)
  {
    v15 = sub_29D5B161C();
    sub_29D59AD10(&v18, v15, v16);
  }

  return v19;
}

void sub_29D524FEC()
{
  if (!qword_2A17A4898)
  {
    sub_29D5250C8();
    sub_29D5251EC(255, &qword_2A1A17E28, sub_29D5241A0, MEMORY[0x29EDC9C68]);
    sub_29D523CE4(&qword_2A1A16710, sub_29D5250C8);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4898);
    }
  }
}

void sub_29D5250C8()
{
  if (!qword_2A1A16708)
  {
    sub_29D523E04(255, &unk_2A1A163E8, &qword_2A1A16308, 0x29EDBAB60, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16708);
    }
  }
}

void sub_29D525164(uint64_t a1@<X8>)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_29D5204EC(v4, v5, v6, a1);
}

void sub_29D5251EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D525250(uint64_t result)
{
  if (result)
  {
    sub_29D5B44DC();
    if (v1)
    {
      sub_29D5B1CBC();
      v2 = sub_29D5B1C8C();
      sub_29D5B140C();
      sub_29D499EC0(v9, v9[3]);
      v3 = sub_29D5B136C();
      v4 = sub_29D5B1C9C();

      sub_29D48F668(v9);
      v5 = [v4 ucumDisplayConverter];
      v6 = sub_29D5B3E1C();

      v7 = [v5 synonymForUCUMUnitString_];

      v8 = sub_29D5B3E5C();
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_29D5253D4()
{
  sub_29D523E04(319, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  if (v0 <= 0x3F)
  {
    sub_29D5B0E6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29D525484()
{
  result = qword_2A1A188A8[0];
  if (!qword_2A1A188A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A188A8);
  }

  return result;
}

uint64_t sub_29D5254D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D523E04(255, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D525548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D525484();
    v7 = a3(a1, &type metadata for UDCSnippetGeneratorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D5255C0()
{
  result = qword_2A17A48B0;
  if (!qword_2A17A48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A48B0);
  }

  return result;
}

unint64_t sub_29D525618()
{
  result = qword_2A1A18898;
  if (!qword_2A1A18898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A18898);
  }

  return result;
}

unint64_t sub_29D525670()
{
  result = qword_2A1A188A0;
  if (!qword_2A1A188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A188A0);
  }

  return result;
}

uint64_t sub_29D5256C4(uint64_t a1)
{
  sub_29D526A14(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v33 = &v31 - v3;
  v4 = sub_29D5B148C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HealthRecordsGeneratorContext();
  v9 = v8 - 8;
  v32 = *(v8 - 8);
  v10 = *(v32 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v31 - v12;
  v14 = *(v5 + 16);
  v14(v7, a1, v4);
  v14(v13, v7, v4);
  sub_29D5B140C();
  sub_29D499EC0(v36, v36[3]);
  v15 = sub_29D5B136C();
  v16 = [objc_allocWithZone(MEMORY[0x29EDC3E10]) initWithHealthStore_];

  (*(v5 + 8))(v7, v4);
  sub_29D48F668(v36);
  *&v13[*(v9 + 28)] = v16;
  if (sub_29D5B144C())
  {
    v17 = sub_29D5B143C();
    v18 = sub_29D5B10DC();
    v19 = sub_29D5B10CC();

    if (v19)
    {
      sub_29D527F78(0, &qword_2A1A195E8, MEMORY[0x29EDC9E90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_29D5B62A0;
      v21 = v35;
      sub_29D499E5C(v13, v35);
      v22 = type metadata accessor for CategoryGeneratorPipeline(0);
      swift_allocObject();
      v23 = sub_29D5983B0(v21);
      *(v20 + 56) = v22;
      *(v20 + 64) = sub_29D5280E0(qword_2A1A19BE0, type metadata accessor for CategoryGeneratorPipeline);
      *(v20 + 32) = v23;
    }

    else
    {
      v20 = MEMORY[0x29EDCA190];
    }
  }

  else
  {
    if (sub_29D5B141C())
    {
      v24 = sub_29D5B410C();
      v25 = v33;
      (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
      v26 = v35;
      sub_29D499E5C(v13, v35);
      v27 = (*(v32 + 80) + 40) & ~*(v32 + 80);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v34;
      sub_29D499F90(v26, v28 + v27);

      sub_29D57657C(0, 0, v25, &unk_29D5B98E0, v28);

      v29 = sub_29D527760(v13);
    }

    else
    {
      v29 = sub_29D5279A4(v13);
    }

    v20 = v29;
  }

  sub_29D49A104(v13);
  return v20;
}

uint64_t sub_29D525B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_29D4E7B8C;

  return sub_29D525BE0(a5);
}

uint64_t sub_29D525BE0(uint64_t a1)
{
  v3 = *v1;
  v2[27] = a1;
  v2[28] = v3;
  type metadata accessor for HealthRecordsGeneratorContext();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = sub_29D5B371C();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D525D20, 0, 0);
}

uint64_t sub_29D525D20()
{
  v35 = v0;
  v1 = v0[31];
  v2 = v0[27];
  sub_29D5B140C();
  sub_29D499EC0(v0 + 18, v0[21]);
  v3 = sub_29D5B136C();
  v4 = [objc_allocWithZone(MEMORY[0x29EDC16A8]) initWithHealthStore_];
  v0[37] = v4;

  sub_29D48F668((v0 + 18));
  sub_29D5B36CC();
  sub_29D499E5C(v2, v1);
  v5 = sub_29D5B370C();
  v6 = sub_29D5B429C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[31];
  if (v7)
  {
    v33 = v4;
    v12 = swift_slowAlloc();
    v32 = v10;
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315394;
    v14 = sub_29D5B4DFC();
    v16 = sub_29D501890(v14, v15, &v34);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_29D5B143C();
    v18 = sub_29D5B10BC();
    v31 = v8;
    v20 = v19;

    sub_29D49A104(v11);
    v21 = sub_29D501890(v18, v20, &v34);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_29D48C000, v5, v6, "[%s] Marking universal shard as required for first launch on profile: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v13, -1, -1);
    v22 = v12;
    v4 = v33;
    MEMORY[0x29ED5FB80](v22, -1, -1);

    v23 = *(v9 + 8);
    v23(v31, v32);
  }

  else
  {

    sub_29D49A104(v11);
    v23 = *(v9 + 8);
    v23(v8, v10);
  }

  v0[38] = v23;
  sub_29D526A14(0, &qword_2A1A161D0, type metadata accessor for HKOntologyShardIdentifier, MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29D5B62A0;
  v25 = *MEMORY[0x29EDBA830];
  *(v24 + 32) = *MEMORY[0x29EDBA830];
  type metadata accessor for HKOntologyShardIdentifier(0);
  v26 = v25;
  v27 = sub_29D5B401C();
  v0[39] = v27;

  v0[2] = v0;
  v0[3] = sub_29D5260C8;
  v28 = swift_continuation_init();
  sub_29D52697C();
  v0[17] = v29;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D526724;
  v0[13] = &unk_2A24294D0;
  v0[14] = v28;
  [v4 markShardsWithIdentifiers:v27 options:5 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D5260C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_29D526440;
  }

  else
  {
    v2 = sub_29D5261D8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D5261D8()
{
  v27 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);

  sub_29D5B36CC();
  sub_29D499E5C(v2, v1);
  v3 = sub_29D5B370C();
  v4 = sub_29D5B429C();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 280);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);
  if (v5)
  {
    v25 = *(v0 + 280);
    v11 = swift_slowAlloc();
    v24 = v9;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    v13 = sub_29D5B4DFC();
    v15 = sub_29D501890(v13, v14, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_29D5B143C();
    v17 = sub_29D5B10BC();
    v23 = v6;
    v19 = v18;

    sub_29D49A104(v10);
    v20 = sub_29D501890(v17, v19, &v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_29D48C000, v3, v4, "[%s] Marked universal shard as required for first launch on profile: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v12, -1, -1);
    MEMORY[0x29ED5FB80](v11, -1, -1);

    v23(v25, v24);
  }

  else
  {

    sub_29D49A104(v10);
    v6(v8, v9);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_29D526440()
{
  v35 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  swift_willThrow();

  sub_29D5B36CC();
  sub_29D499E5C(v4, v3);
  v5 = v1;
  v6 = sub_29D5B370C();
  v7 = sub_29D5B427C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 320);
    v32 = *(v0 + 272);
    v33 = *(v0 + 304);
    v30 = *(v0 + 296);
    v31 = *(v0 + 256);
    v9 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34[0] = v11;
    *v10 = 136315650;
    v12 = sub_29D5B4DFC();
    v14 = sub_29D501890(v12, v13, v34);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_29D5B4CDC();
    v17 = sub_29D501890(v15, v16, v34);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v18 = sub_29D5B143C();
    v19 = sub_29D5B10BC();
    v21 = v20;

    sub_29D49A104(v9);
    v22 = sub_29D501890(v19, v21, v34);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_29D48C000, v6, v7, "[%s] Marking universal shard as required failed with error: %s on profile: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v11, -1, -1);
    MEMORY[0x29ED5FB80](v10, -1, -1);

    v33(v32, v31);
  }

  else
  {
    v23 = *(v0 + 320);
    v24 = *(v0 + 304);
    v25 = *(v0 + 272);
    v26 = *(v0 + 256);
    v27 = *(v0 + 232);

    sub_29D49A104(v27);
    v24(v25, v26);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_29D526724(uint64_t a1, int a2, void *a3)
{
  v5 = sub_29D499EC0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x2A1C73CD8](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x2A1C73CD8](v5);
  }

  sub_29D4A02FC(0, &qword_2A1A1A410);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x2A1C73CE0](v6, v7);
}

uint64_t type metadata accessor for HealthRecordsGeneratorContext()
{
  result = qword_2A1A19038;
  if (!qword_2A1A19038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29D526864()
{
  result = sub_29D5B148C();
  if (v1 <= 0x3F)
  {
    result = sub_29D5268E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D5268E8()
{
  result = qword_2A1A16310;
  if (!qword_2A1A16310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A16310);
  }

  return result;
}

void sub_29D52697C()
{
  if (!qword_2A1A16388)
  {
    sub_29D4A02FC(255, &qword_2A1A1A410);
    v0 = sub_29D5B411C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16388);
    }
  }
}

void sub_29D526A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_29D526A78(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v39[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D517180();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B9820;
  sub_29D499E5C(a1, v4);
  v6 = type metadata accessor for AccountStatusSummaryTileGeneratorPipeline();
  swift_allocObject();
  v7 = sub_29D4B987C(v4);
  *(inited + 56) = v6;
  *(inited + 64) = sub_29D5280E0(qword_2A1A17738, type metadata accessor for AccountStatusSummaryTileGeneratorPipeline);
  *(inited + 32) = v7;
  sub_29D499E5C(a1, v4);
  v8 = type metadata accessor for AddAccountGeneratorPipeline();
  swift_allocObject();
  v9 = sub_29D561678(v4);
  *(inited + 96) = v8;
  *(inited + 104) = sub_29D5280E0(qword_2A1A19B18, type metadata accessor for AddAccountGeneratorPipeline);
  *(inited + 72) = v9;
  sub_29D499E5C(a1, v4);
  v10 = type metadata accessor for CategoryGeneratorPipeline(0);
  swift_allocObject();
  v11 = sub_29D5983B0(v4);
  *(inited + 136) = v10;
  *(inited + 144) = sub_29D5280E0(qword_2A1A19BE0, type metadata accessor for CategoryGeneratorPipeline);
  *(inited + 112) = v11;
  sub_29D499E5C(a1, v4);
  v12 = type metadata accessor for ClinicalNotificationSettingsGeneratorPipeline();
  swift_allocObject();
  v13 = sub_29D55F988(v4);
  *(inited + 176) = v12;
  *(inited + 184) = sub_29D5280E0(&unk_2A1A17488, type metadata accessor for ClinicalNotificationSettingsGeneratorPipeline);
  *(inited + 152) = v13;
  sub_29D499E5C(a1, v4);
  v14 = type metadata accessor for NewRecordsGeneratorPipeline();
  swift_allocObject();
  v15 = sub_29D5814CC(v4);
  *(inited + 216) = v14;
  *(inited + 224) = sub_29D5280E0(qword_2A1A1A248, type metadata accessor for NewRecordsGeneratorPipeline);
  *(inited + 192) = v15;
  sub_29D499E5C(a1, v4);
  v16 = type metadata accessor for RecordKindGeneratorPipeline();
  swift_allocObject();
  v17 = sub_29D498648(v4);
  *(inited + 256) = v16;
  *(inited + 264) = sub_29D5280E0(qword_2A1A199C8, type metadata accessor for RecordKindGeneratorPipeline);
  *(inited + 232) = v17;
  sub_29D499E5C(a1, v4);
  v18 = type metadata accessor for UserDomainConceptPipeline();
  swift_allocObject();
  v19 = sub_29D4F568C(v4);
  *(inited + 296) = v18;
  *(inited + 304) = sub_29D5280E0(qword_2A1A18558, type metadata accessor for UserDomainConceptPipeline);
  *(inited + 272) = v19;
  sub_29D499E5C(a1, v4);
  v20 = type metadata accessor for OnboardingGeneratorPipeline();
  swift_allocObject();
  v21 = sub_29D56539C(v4);
  *(inited + 336) = v20;
  *(inited + 344) = sub_29D5280E0(&qword_2A1A18258, type metadata accessor for OnboardingGeneratorPipeline);
  *(inited + 312) = v21;
  sub_29D499E5C(a1, v4);
  v22 = type metadata accessor for LabTipsGeneratorPipeline();
  swift_allocObject();
  v23 = sub_29D564098(v4);
  *(inited + 376) = v22;
  *(inited + 384) = sub_29D5280E0(&qword_2A1A18700, type metadata accessor for LabTipsGeneratorPipeline);
  *(inited + 352) = v23;
  sub_29D499E5C(a1, v4);
  v24 = type metadata accessor for RemovedCategoriesGeneratorPipeline();
  swift_allocObject();
  v25 = sub_29D4A2910(v4);
  *(inited + 416) = v24;
  *(inited + 424) = sub_29D5280E0(qword_2A1A178C8, type metadata accessor for RemovedCategoriesGeneratorPipeline);
  *(inited + 392) = v25;
  v45 = inited;
  v26 = swift_initStackObject();
  v38 = xmmword_29D5B62A0;
  *(v26 + 16) = xmmword_29D5B62A0;
  sub_29D499E5C(a1, v4);
  v27 = type metadata accessor for SharedConceptFeedItemPipeline();
  swift_allocObject();
  v28 = sub_29D51082C(v4);
  *(v26 + 56) = v27;
  *(v26 + 64) = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline);
  *(v26 + 32) = v28;
  sub_29D54FA04(v26);
  v29 = swift_initStackObject();
  *(v29 + 16) = v38;
  sub_29D499E5C(a1, v4);
  v30 = type metadata accessor for ClinicalSharingGeneratorPipeline();
  swift_allocObject();
  v31 = sub_29D4B5368(v4);
  *(v29 + 56) = v30;
  *(v29 + 64) = sub_29D5280E0(&qword_2A1A17C38, type metadata accessor for ClinicalSharingGeneratorPipeline);
  *(v29 + 32) = v31;
  sub_29D54FA04(v29);
  v32 = *(v45 + 16);
  if (v32)
  {
    v33 = v45 + 32;
    v34 = MEMORY[0x29EDCA190];
    do
    {
      sub_29D527FE8(v33, &v42);
      v39[0] = v42;
      v39[1] = v43;
      v40 = v44;
      if (*(&v43 + 1))
      {
        sub_29D497868(v39, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_29D5155B8(0, v34[2] + 1, 1, v34);
        }

        v36 = v34[2];
        v35 = v34[3];
        if (v36 >= v35 >> 1)
        {
          v34 = sub_29D5155B8((v35 > 1), v36 + 1, 1, v34);
        }

        v34[2] = v36 + 1;
        sub_29D497868(v41, &v34[5 * v36 + 4]);
      }

      else
      {
        sub_29D528068(v39);
      }

      v33 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v34;
}

void *sub_29D5271E8(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D517180();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B9830;
  sub_29D499E5C(a1, v4);
  v6 = type metadata accessor for AccountStatusSummaryTileGeneratorPipeline();
  swift_allocObject();
  v7 = sub_29D4B987C(v4);
  *(inited + 56) = v6;
  *(inited + 64) = sub_29D5280E0(qword_2A1A17738, type metadata accessor for AccountStatusSummaryTileGeneratorPipeline);
  *(inited + 32) = v7;
  sub_29D499E5C(a1, v4);
  v8 = type metadata accessor for CategoryGeneratorPipeline(0);
  swift_allocObject();
  v9 = sub_29D5983B0(v4);
  *(inited + 96) = v8;
  *(inited + 104) = sub_29D5280E0(qword_2A1A19BE0, type metadata accessor for CategoryGeneratorPipeline);
  *(inited + 72) = v9;
  sub_29D499E5C(a1, v4);
  v10 = type metadata accessor for RecordKindGeneratorPipeline();
  swift_allocObject();
  v11 = sub_29D498648(v4);
  *(inited + 136) = v10;
  *(inited + 144) = sub_29D5280E0(qword_2A1A199C8, type metadata accessor for RecordKindGeneratorPipeline);
  *(inited + 112) = v11;
  sub_29D499E5C(a1, v4);
  v12 = type metadata accessor for UserDomainConceptPipeline();
  swift_allocObject();
  v13 = sub_29D4F568C(v4);
  *(inited + 176) = v12;
  *(inited + 184) = sub_29D5280E0(qword_2A1A18558, type metadata accessor for UserDomainConceptPipeline);
  *(inited + 152) = v13;
  sub_29D499E5C(a1, v4);
  v14 = type metadata accessor for OnboardingGeneratorPipeline();
  swift_allocObject();
  v15 = sub_29D56539C(v4);
  *(inited + 216) = v14;
  *(inited + 224) = sub_29D5280E0(&qword_2A1A18258, type metadata accessor for OnboardingGeneratorPipeline);
  *(inited + 192) = v15;
  sub_29D499E5C(a1, v4);
  v16 = type metadata accessor for LabTipsGeneratorPipeline();
  swift_allocObject();
  v17 = sub_29D564098(v4);
  *(inited + 256) = v16;
  *(inited + 264) = sub_29D5280E0(&qword_2A1A18700, type metadata accessor for LabTipsGeneratorPipeline);
  *(inited + 232) = v17;
  sub_29D499E5C(a1, v4);
  v18 = type metadata accessor for RemovedCategoriesGeneratorPipeline();
  swift_allocObject();
  v19 = sub_29D4A2910(v4);
  *(inited + 296) = v18;
  *(inited + 304) = sub_29D5280E0(qword_2A1A178C8, type metadata accessor for RemovedCategoriesGeneratorPipeline);
  *(inited + 272) = v19;
  v35 = inited;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_29D5B62A0;
  sub_29D499E5C(a1, v4);
  v21 = type metadata accessor for SharedConceptFeedItemPipeline();
  swift_allocObject();
  v22 = sub_29D51082C(v4);
  *(v20 + 56) = v21;
  *(v20 + 64) = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline);
  *(v20 + 32) = v22;
  sub_29D54FA04(v20);
  v23 = *(v35 + 16);
  if (v23)
  {
    v24 = v35 + 32;
    v25 = MEMORY[0x29EDCA190];
    do
    {
      sub_29D527FE8(v24, &v32);
      v29[0] = v32;
      v29[1] = v33;
      v30 = v34;
      if (*(&v33 + 1))
      {
        sub_29D497868(v29, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_29D5155B8(0, v25[2] + 1, 1, v25);
        }

        v27 = v25[2];
        v26 = v25[3];
        if (v27 >= v26 >> 1)
        {
          v25 = sub_29D5155B8((v26 > 1), v27 + 1, 1, v25);
        }

        v25[2] = v27 + 1;
        sub_29D497868(v31, &v25[5 * v27 + 4]);
      }

      else
      {
        sub_29D528068(v29);
      }

      v24 += 40;
      --v23;
    }

    while (v23);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v25;
}

void *sub_29D527760(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B143C();
  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = v5;
  v7 = [v5 type];
  if (v7 > 2)
  {
    if (v7 != 4)
    {
      goto LABEL_13;
    }

    v16 = sub_29D5271E8(a1);
    goto LABEL_17;
  }

  if (v7 == 1)
  {
    v16 = sub_29D526A78(a1);
LABEL_17:
    v14 = v16;

    return v14;
  }

  if (v7 != 2)
  {
LABEL_13:

    return MEMORY[0x29EDCA190];
  }

  sub_29D499E5C(a1, v4);
  v8 = type metadata accessor for SharedConceptFeedItemPipeline();
  swift_allocObject();
  v9 = sub_29D51082C(v4);
  v23[3] = v8;
  v23[4] = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline);
  v23[0] = v9;
  sub_29D527FE8(v23, &v20);
  v17[0] = v20;
  v17[1] = v21;
  v18 = v22;
  if (*(&v21 + 1))
  {
    sub_29D497868(v17, v19);
    v10 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_29D5155B8(0, v10[2] + 1, 1, v10);
    }

    v11 = v10;
    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_29D5155B8((v12 > 1), v13 + 1, 1, v10);
    }

    v11[2] = v13 + 1;
    v14 = v11;
    sub_29D497868(v19, &v11[5 * v13 + 4]);
  }

  else
  {
    sub_29D528068(v17);
    v14 = MEMORY[0x29EDCA190];
  }

  sub_29D528068(v23);
  return v14;
}

void *sub_29D5279A4(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B143C();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 type];
    if (v7 == 2)
    {
      sub_29D499E5C(a1, v4);
      v22 = type metadata accessor for SharedConceptFeedItemPipeline();
      swift_allocObject();
      v23 = sub_29D51082C(v4);
      v36[3] = v22;
      v36[4] = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline);
      v36[0] = v23;
      sub_29D527FE8(v36, &v33);
      v29 = v33;
      v30 = v34;
      v31 = v35;
      if (*(&v34 + 1))
      {
        sub_29D497868(&v29, v32);
        v19 = MEMORY[0x29EDCA190];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_29D5155B8(0, v19[2] + 1, 1, v19);
        }

        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          v19 = sub_29D5155B8((v24 > 1), v25 + 1, 1, v19);
        }

        v19[2] = v25 + 1;
        sub_29D497868(v32, &v19[5 * v25 + 4]);
      }

      else
      {
        sub_29D528068(&v29);
        v19 = MEMORY[0x29EDCA190];
      }

      sub_29D528068(v36);
      goto LABEL_26;
    }

    if (v7 == 1)
    {
      sub_29D517180();
      inited = swift_initStackObject();
      v27 = xmmword_29D5B62A0;
      *(inited + 16) = xmmword_29D5B62A0;
      sub_29D499E5C(a1, v4);
      v9 = type metadata accessor for CategoryGeneratorPipeline(0);
      swift_allocObject();
      v10 = sub_29D5983B0(v4);
      *(inited + 56) = v9;
      *(inited + 64) = sub_29D5280E0(qword_2A1A19BE0, type metadata accessor for CategoryGeneratorPipeline);
      *(inited + 32) = v10;
      v28 = inited;
      v11 = swift_initStackObject();
      *(v11 + 16) = v27;
      sub_29D499E5C(a1, v4);
      v12 = type metadata accessor for SharedConceptFeedItemPipeline();
      swift_allocObject();
      v13 = sub_29D51082C(v4);
      *(v11 + 56) = v12;
      *(v11 + 64) = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline);
      *(v11 + 32) = v13;
      sub_29D54FA04(v11);
      v14 = swift_initStackObject();
      *(v14 + 16) = v27;
      sub_29D499E5C(a1, v4);
      v15 = type metadata accessor for ClinicalSharingGeneratorPipeline();
      swift_allocObject();
      v16 = sub_29D4B5368(v4);
      *(v14 + 56) = v15;
      *(v14 + 64) = sub_29D5280E0(&qword_2A1A17C38, type metadata accessor for ClinicalSharingGeneratorPipeline);
      *(v14 + 32) = v16;
      sub_29D54FA04(v14);
      v17 = *(v28 + 16);
      if (v17)
      {
        v18 = v28 + 32;
        v19 = MEMORY[0x29EDCA190];
        do
        {
          sub_29D527FE8(v18, &v33);
          v29 = v33;
          v30 = v34;
          v31 = v35;
          if (*(&v34 + 1))
          {
            sub_29D497868(&v29, v32);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_29D5155B8(0, v19[2] + 1, 1, v19);
            }

            v21 = v19[2];
            v20 = v19[3];
            if (v21 >= v20 >> 1)
            {
              v19 = sub_29D5155B8((v20 > 1), v21 + 1, 1, v19);
            }

            v19[2] = v21 + 1;
            sub_29D497868(v32, &v19[5 * v21 + 4]);
          }

          else
          {
            sub_29D528068(&v29);
          }

          v18 += 40;
          --v17;
        }

        while (v17);
      }

      else
      {

        v19 = MEMORY[0x29EDCA190];
      }

LABEL_26:

      return v19;
    }
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29D527E80(uint64_t a1)
{
  v4 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D525B44(a1, v6, v7, v8, v1 + v5);
}

void sub_29D527F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D4A02FC(255, &qword_2A1A19828);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D527FE8(uint64_t a1, uint64_t a2)
{
  sub_29D527F78(0, &qword_2A1A19820, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D528068(uint64_t a1)
{
  sub_29D527F78(0, &qword_2A1A19820, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5280E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D528128@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v137 = a4;
  v141 = a3;
  sub_29D529C10(0, qword_2A1A19830, MEMORY[0x29EDC3840]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v138 = &v123 - v9;
  sub_29D529C10(0, &qword_2A1A17350, MEMORY[0x29EDC4098]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v134 = &v123 - v11;
  v12 = sub_29D5B1D6C();
  v136 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v139 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  MEMORY[0x2A1C7C4A8](v135);
  v140 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B0EDC();
  v143 = *(v15 - 8);
  v144 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v142 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B371C();
  v18 = *(v17 - 8);
  v145 = v17;
  v146 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v24 = &v123 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v27 = &v123 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v123 - v28;
  sub_29D529C10(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v31 = MEMORY[0x2A1C7C4A8](v30 - 8);
  v33 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v35 = &v123 - v34;
  if (a2 >> 62)
  {
    if (sub_29D5B485C() < 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_3:
    sub_29D5B36CC();
    v36 = a1;
    v37 = sub_29D5B370C();
    v38 = sub_29D5B426C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v147[0] = v40;
      *v39 = 136446210;
      v41 = [v36 UUID];
      v42 = v142;
      sub_29D5B0EBC();

      v43 = sub_29D5B0E8C();
      v45 = v44;
      (*(v143 + 8))(v42, v144);
      v46 = sub_29D501890(v43, v45, v147);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_29D48C000, v37, v38, "Too few records to generate delta highlight for concept: %{public}s", v39, 0xCu);
      sub_29D48F668(v40);
      MEMORY[0x29ED5FB80](v40, -1, -1);
      MEMORY[0x29ED5FB80](v39, -1, -1);
    }

    (*(v146 + 8))(v21, v145);
    v47 = sub_29D5B134C();
    return (*(*(v47 - 8) + 56))(a5, 1, 1, v47);
  }

  v133 = a5;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x29ED5EF30](1, a2);
    v52 = MEMORY[0x29ED5EF30](0, a2);
  }

  else
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_38;
    }

    v50 = a2 + 32;
    v49 = *(a2 + 32);
    v51 = *(v50 + 8);
    v52 = v49;
  }

  v53 = v52;
  sub_29D529C64(v51, v52);
  v131 = v54;
  v132 = 0;
  v130 = v51;
  v55 = [v130 meaningfulDate];
  if (v55)
  {
    v56 = v55;
    sub_29D5B0E4C();

    v57 = sub_29D5B0E6C();
    (*(*(v57 - 8) + 56))(v35, 0, 1, v57);
  }

  else
  {
    v58 = sub_29D5B0E6C();
    (*(*(v58 - 8) + 56))(v35, 1, 1, v58);
  }

  v129 = v53;
  v59 = [v129 meaningfulDate];
  if (v59)
  {
    v60 = v59;
    sub_29D5B0E4C();

    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = sub_29D5B0E6C();
  v63 = *(v62 - 8);
  v128 = *(v63 + 56);
  v127 = v63 + 56;
  v128(v33, v61, 1, v62);
  v64 = sub_29D52A158(v35, v33, v131);
  v65 = MEMORY[0x29EDB9BC8];
  sub_29D52A664(v33, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D52A664(v35, &qword_2A1A1A390, v65);
  if (v64)
  {
    v66 = v130;

    v67 = v129;
    sub_29D5B36CC();
    v68 = a1;
    v69 = sub_29D5B370C();
    v70 = sub_29D5B426C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v147[0] = v72;
      *v71 = 136446210;
      v73 = [v68 UUID];
      v74 = v142;
      sub_29D5B0EBC();

      v75 = sub_29D5B0E8C();
      v77 = v76;
      (*(v143 + 8))(v74, v144);
      v78 = sub_29D501890(v75, v77, v147);

      *(v71 + 4) = v78;
      _os_log_impl(&dword_29D48C000, v69, v70, "Suppressing generation of delta highlight for concept: %{public}s", v71, 0xCu);
      sub_29D48F668(v72);
      MEMORY[0x29ED5FB80](v72, -1, -1);
      MEMORY[0x29ED5FB80](v71, -1, -1);
    }

    else
    {
    }

    (*(v146 + 8))(v27, v145);
    v101 = v133;
    v102 = sub_29D5B134C();
    return (*(*(v102 - 8) + 56))(v101, 1, 1, v102);
  }

  sub_29D5B1CBC();
  v79 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v147, v147[3]);
  v80 = sub_29D5B136C();
  v81 = [v80 profileIdentifier];

  sub_29D5B1C3C();
  sub_29D48F668(v147);
  LODWORD(v29) = sub_29D5B362C();

  sub_29D5B36CC();
  v27 = a1;
  v82 = sub_29D5B370C();
  v83 = sub_29D5B426C();

  v84 = os_log_type_enabled(v82, v83);
  v126 = v62;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v147[0] = v124;
    *v85 = 136446466;
    v86 = [v27 UUID];
    v87 = v142;
    sub_29D5B0EBC();

    v88 = v27;
    v89 = v29;
    v29 = sub_29D5B0E8C();
    v91 = v90;
    (*(v143 + 8))(v87, v144);
    v92 = v29;
    LODWORD(v29) = v89;
    v27 = v88;
    v93 = sub_29D501890(v92, v91, v147);

    *(v85 + 4) = v93;
    *(v85 + 12) = 2082;
    if (v29)
    {
      v94 = 0x65736C6166;
    }

    else
    {
      v94 = 1702195828;
    }

    if (v29)
    {
      v95 = 0xE500000000000000;
    }

    else
    {
      v95 = 0xE400000000000000;
    }

    v96 = sub_29D501890(v94, v95, v147);

    *(v85 + 14) = v96;
    _os_log_impl(&dword_29D48C000, v82, v83, "Generating delta highlight for concept: %{public}s, Hide in Discover: %{public}s", v85, 0x16u);
    v97 = v124;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v97, -1, -1);
    MEMORY[0x29ED5FB80](v85, -1, -1);
  }

  (*(v146 + 8))(v24, v145);
  v24 = v139;
  v21 = v140;
  v98 = [v27 categoryTypes];
  sub_29D48F51C(0, &qword_2A17A3C90);
  v35 = sub_29D5B402C();

  if (v35 >> 62)
  {
LABEL_38:
    result = sub_29D5B485C();
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_29:
    if ((v35 & 0xC000000000000001) != 0)
    {
      v99 = MEMORY[0x29ED5EF30](0, v35);
    }

    else
    {
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v99 = *(v35 + 32);
    }

    v100 = v99;

    [v100 integerValue];

    goto LABEL_40;
  }

LABEL_39:

LABEL_40:
  LODWORD(v146) = v29 ^ 1;
  v103 = v134;
  sub_29D5B1D4C();
  v104 = v136;
  v105 = *(v136 + 48);
  v106 = v105(v103, 1, v12);
  v125 = v12;
  if (v106 == 1)
  {
    (*(v104 + 104))(v24, *MEMORY[0x29EDC4078], v12);
    if (v105(v103, 1, v12) != 1)
    {
      sub_29D52A664(v103, &qword_2A1A17350, MEMORY[0x29EDC4098]);
    }
  }

  else
  {
    (*(v104 + 32))(v24, v103, v12);
  }

  v107 = v135;
  sub_29D48F51C(0, &qword_2A1A162D0);
  v108 = v27;
  sub_29D5B3D1C();
  sub_29D48F51C(0, &qword_2A17A48B8);
  v109 = v130;
  sub_29D5B3D1C();
  v110 = v129;
  sub_29D5B3D1C();
  v111 = sub_29D5B453C();
  v113 = v112;
  v114 = v107[10];
  v115 = [v108 modificationDate];
  sub_29D5B0E4C();

  v128(&v21[v114], 0, 1, v126);
  (*(v104 + 32))(v21, v24, v125);
  *&v21[v107[8]] = v131;
  v116 = &v21[v107[9]];
  *v116 = v111;
  v116[1] = v113;
  v21[v107[11]] = v146 & 1;
  v117 = sub_29D5B143C();
  v118 = v138;
  v119 = v132;
  sub_29D52925C(v21, v137, v117, v138);
  if (v119)
  {

    sub_29D52A588(v21);
    v120 = 1;
  }

  else
  {
    sub_29D52A588(v21);

    v120 = 0;
  }

  v121 = v133;
  v122 = sub_29D5B134C();
  (*(*(v122 - 8) + 56))(v118, v120, 1, v122);
  return sub_29D52A5E4(v118, v121);
}

uint64_t sub_29D52925C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a2;
  v85 = a4;
  v86 = a3;
  v5 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v80 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D529C10(0, &qword_2A1A17388, MEMORY[0x29EDC3980]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v81 = v69 - v8;
  v9 = sub_29D5B0E6C();
  v83 = *(v9 - 8);
  v84 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v70 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v71 = v69 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v77 = v69 - v14;
  sub_29D529C10(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v16 = MEMORY[0x2A1C7C4A8](v15 - 8);
  v79 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v82 = v69 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v78 = v69 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v76 = v69 - v22;
  v75 = sub_29D5B104C();
  v73 = *(v75 - 8);
  MEMORY[0x2A1C7C4A8](v75);
  v74 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D5B1AAC();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x29EDB9C08];
  sub_29D529C10(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  MEMORY[0x2A1C7C4A8](v29 - 8);
  v31 = v69 - v30;
  v32 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  v33 = sub_29D5B3CEC();
  v34 = [v33 UUID];

  sub_29D5B0EBC();
  v35 = sub_29D5B0EDC();
  (*(*(v35 - 8) + 56))(v31, 0, 1, v35);
  (*(v25 + 104))(v27, *MEMORY[0x29EDC3F40], v24);
  v36 = v86;
  v72 = sub_29D5B294C();
  v37 = v27;
  v38 = a1;
  (*(v25 + 8))(v37, v24);
  sub_29D52A664(v31, &qword_2A1A193A8, v28);
  sub_29D52A6C0();
  v39 = v88;
  sub_29D5B0BEC();
  if (v39)
  {
  }

  v69[1] = 0;
  type metadata accessor for ConceptDeltaHighlightFeedItemViewController();
  (*(v73 + 104))(v74, *MEMORY[0x29EDC3788], v75);
  v41 = v36;
  sub_29D5B110C();
  LODWORD(v75) = *(a1 + *(v32 + 44));
  v42 = v77;
  sub_29D5B0E5C();
  v43 = v76;
  sub_29D5B0DCC();
  v45 = v83;
  v44 = v84;
  v46 = *(v83 + 8);
  v77 = (v83 + 8);
  v74 = v46;
  (v46)(v42, v84);
  v47 = 1;
  v87 = *(v45 + 56);
  v87(v43, 0, 1, v44);
  v86 = v32;
  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8);
  v88 = v38;
  v48 = sub_29D5B3CEC();
  v49 = [v48 meaningfulDate];

  v50 = v44;
  v51 = v78;
  if (v49)
  {
    sub_29D5B0E4C();

    v47 = 0;
  }

  v52 = 1;
  v87(v51, v47, 1, v50);
  sub_29D58C560(v43, v51);
  v53 = MEMORY[0x29EDB9BC8];
  sub_29D52A664(v51, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D52A664(v43, &qword_2A1A1A390, v53);
  v54 = sub_29D5B3CEC();
  v55 = [v54 meaningfulDate];

  if (v55)
  {
    v56 = v82;
    sub_29D5B0E4C();

    v52 = 0;
    v57 = v81;
  }

  else
  {
    v57 = v81;
    v56 = v82;
  }

  v58 = 1;
  v59 = v52;
  v60 = v84;
  v87(v56, v59, 1, v84);
  v61 = v79;
  sub_29D4D20BC(v56, v79);
  v62 = v83;
  if ((*(v83 + 48))(v61, 1, v60) != 1)
  {
    v63 = v71;
    (*(v62 + 32))(v71, v61, v60);
    (*(v62 + 16))(v70, v63, v60);
    v56 = v82;
    sub_29D5B0C6C();
    sub_29D5B16EC();
    (v74)(v63, v60);
    v58 = 0;
  }

  sub_29D52A664(v56, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v64 = sub_29D5B170C();
  (*(*(v64 - 8) + 56))(v57, v58, 1, v64);
  sub_29D5B12BC();

  sub_29D5B124C();
  sub_29D5B12AC();
  sub_29D5B122C();
  v90 = MEMORY[0x29EDCA1A0];
  v65 = sub_29D5B158C();
  sub_29D59AD10(&v89, v65, v66);

  v67 = v90;
  v68 = sub_29D5B130C();
  sub_29D4E80E8(v67);
  return v68(&v89, 0);
}

void sub_29D529C10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D529C64(void *a1, void *a2)
{
  v3 = [a1 chartableCodedQuantitySet];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [a2 chartableCodedQuantitySet];
  if (!v5)
  {

LABEL_13:
    sub_29D52A718();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    return;
  }

  v6 = v5;
  v7 = [v4 quantities];
  v8 = sub_29D48F51C(0, &qword_2A17A4480);
  v9 = sub_29D5B402C();

  if (v9 >> 62)
  {
    v10 = sub_29D5B485C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 != 1)
  {
    v11 = [v6 quantities];
    v12 = sub_29D5B402C();

    v13 = v12 >> 62 ? sub_29D5B485C() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13 != 1)
    {
      sub_29D52A718();
      swift_allocError();
      v35 = 1;
LABEL_41:
      *v34 = v35;
      swift_willThrow();

      return;
    }
  }

  v14 = [v4 compatibleUnit];
  v15 = [v14 unitString];

  sub_29D5B3E5C();
  v16 = sub_29D5B3E8C();
  v18 = v17;

  v19 = [v6 compatibleUnit];
  v20 = [v19 unitString];

  sub_29D5B3E5C();
  v21 = sub_29D5B3E8C();
  v23 = v22;

  if (v16 == v21 && v18 == v23)
  {

    v24 = &off_29F351000;
    goto LABEL_15;
  }

  v21 = sub_29D5B4C7C();

  v24 = &off_29F351000;
  if ((v21 & 1) == 0)
  {
    sub_29D52A718();
    swift_allocError();
    v35 = 2;
    goto LABEL_41;
  }

LABEL_15:
  v26 = [v4 v24[485]];
  v27 = sub_29D5B402C();

  if (v27 >> 62)
  {
    if (!sub_29D5B485C())
    {
      goto LABEL_39;
    }
  }

  else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x29ED5EF30](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v28 = *(v27 + 32);
  }

  v29 = v28;

  v21 = &off_29F351000;
  v27 = [v29 quantity];

  if (!v27)
  {
LABEL_40:
    sub_29D52A718();
    swift_allocError();
    v35 = 3;
    goto LABEL_41;
  }

  v30 = [v6 v24[485]];
  v8 = sub_29D5B402C();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!sub_29D5B485C())
  {
LABEL_38:

LABEL_39:

    goto LABEL_40;
  }

LABEL_23:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x29ED5EF30](0, v8);
    goto LABEL_26;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v8 + 32);
LABEL_26:
    v32 = v31;

    v33 = [v32 *(v21 + 3896)];

    if (v33)
    {
      [v27 compare_];

      return;
    }

    goto LABEL_40;
  }

  __break(1u);
}

uint64_t sub_29D52A158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a3;
  v39 = a2;
  v3 = sub_29D5B0F0C();
  v38 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B0F8C();
  v37 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D529C10(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v34 - v13;
  v15 = sub_29D5B0E6C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v34 - v20;
  if (v41)
  {
    v22 = 0;
  }

  else
  {
    v35 = v8;
    v36 = v6;
    v41 = v3;
    sub_29D4D20BC(v40, v14);
    v23 = v16[6];
    if (v23(v14, 1, v15) == 1)
    {
      v24 = MEMORY[0x29EDB9BC8];
      v25 = v14;
    }

    else
    {
      v26 = v14;
      v27 = v16[4];
      v27(v21, v26, v15);
      sub_29D4D20BC(v39, v12);
      if (v23(v12, 1, v15) != 1)
      {
        v27(v19, v12, v15);
        v28 = v38;
        v29 = v5;
        v30 = v41;
        (*(v38 + 104))(v5, *MEMORY[0x29EDB9C78], v41);
        v31 = v35;
        sub_29D5B0F1C();
        (*(v28 + 8))(v29, v30);
        v22 = sub_29D5B0F6C();
        (*(v37 + 8))(v31, v36);
        v32 = v16[1];
        v32(v19, v15);
        v32(v21, v15);
        return v22 & 1;
      }

      (v16[1])(v21, v15);
      v24 = MEMORY[0x29EDB9BC8];
      v25 = v12;
    }

    sub_29D52A664(v25, &qword_2A1A1A390, v24);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_29D52A588(uint64_t a1)
{
  v2 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D52A5E4(uint64_t a1, uint64_t a2)
{
  sub_29D529C10(0, qword_2A1A19830, MEMORY[0x29EDC3840]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D52A664(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D529C10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D52A6C0()
{
  result = qword_2A17A48C0;
  if (!qword_2A17A48C0)
  {
    type metadata accessor for ConceptDeltaHighlightFeedItemData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A48C0);
  }

  return result;
}

unint64_t sub_29D52A718()
{
  result = qword_2A17A48D0;
  if (!qword_2A17A48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A48D0);
  }

  return result;
}

unint64_t sub_29D52A780()
{
  result = qword_2A17A48D8;
  if (!qword_2A17A48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A48D8);
  }

  return result;
}

void sub_29D52A7D4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_29D52C294(319, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29D52C294(319, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_29D52A954@<X0>(uint64_t a1@<X8>)
{
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v12[-v4];
  v6 = *(*v1 + 112);
  swift_beginAccess();
  sub_29D52B624(v1 + v6, v5);
  v7 = sub_29D5B19EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) == 1)
  {
    v10 = *(*v1 + 120);
    swift_beginAccess();
    sub_29D52B624(v1 + v10, a1);
    result = v9(v5, 1, v7);
    if (result != 1)
    {
      return sub_29D52B4F0(v5, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    }
  }

  else
  {
    (*(v8 + 32))(a1, v5, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  return result;
}

uint64_t sub_29D52AB50@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = *v1;
  v4 = sub_29D5B1A6C();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v65 = &v60 - v8;
  v9 = sub_29D5B19EC();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v64 = &v60 - v12;
  sub_29D52C294(0, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8], v6);
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v60 - v15;
  v17 = *(v3 + 80);
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v20 = &v60 - v19;
  v21 = sub_29D5B1BCC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v60 - v26;
  (*(v18 + 16))(v20, &v2[*(v3 + 88)], v17);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v16, 0, 1, v21);
    v30 = *(v22 + 32);
    v30(v27, v16, v21);
    v30(v25, v27, v21);
    v31 = (*(v22 + 88))(v25, v21);
    if (v31 == *MEMORY[0x29EDC3FA8] || v31 == *MEMORY[0x29EDC3FA0] || v31 == *MEMORY[0x29EDC3F78] || v31 == *MEMORY[0x29EDC3F90])
    {
      v47 = &v2[*(*v2 + 104)];
      v48 = v47[1];
      v37 = v69;
      *v69 = *v47;
      v37[1] = v48;
      v40 = MEMORY[0x29EDC2360];
      goto LABEL_16;
    }

    (*(v22 + 8))(v25, v21);
  }

  else
  {
    v29(v16, 1, 1, v21);
    sub_29D52B4F0(v16, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8]);
  }

  v32 = v65;
  sub_29D52A954(v65);
  v34 = v67;
  v33 = v68;
  v35 = (*(v67 + 48))(v32, 1, v68);
  v36 = v66;
  if (v35 == 1)
  {
    sub_29D52B4F0(v32, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    v37 = v69;
  }

  else
  {
    v41 = v64;
    (*(v34 + 32))(v64, v32, v33);
    (*(v34 + 16))(v36, v41, v33);
    v42 = (*(v34 + 88))(v36, v33);
    v37 = v69;
    if (v42 == *MEMORY[0x29EDC3EA8])
    {
      (*(v34 + 8))(v41, v33);
      (*(v34 + 96))(v36, v33);
      v43 = *v36;

      v44 = &v2[*(*v2 + 104)];
      v45 = *v44;
      v46 = v44[1];
      *v37 = v43;
      v37[1] = v45;
      v37[2] = v46;
      v40 = MEMORY[0x29EDC2370];
      goto LABEL_16;
    }

    if (v42 == *MEMORY[0x29EDC3EA0])
    {
      (*(v34 + 96))(v36, v33);
      v49 = v61;
      v50 = v62;
      v51 = v63;
      (*(v62 + 32))(v61, v36, v63);
      sub_29D52B560();
      v53 = (v37 + *(v52 + 64));
      *v37 = sub_29D5B1A5C();
      sub_29D5B19FC();
      (*(v50 + 8))(v49, v51);
      (*(v34 + 8))(v41, v33);
      v54 = &v2[*(*v2 + 104)];
      v55 = *(v54 + 1);
      *v53 = *v54;
      v53[1] = v55;
      v40 = MEMORY[0x29EDC2378];
      goto LABEL_16;
    }

    v59 = *(v34 + 8);
    v59(v41, v33);
    v59(v36, v33);
  }

  v38 = &v2[*(*v2 + 104)];
  v39 = v38[1];
  *v37 = *v38;
  v37[1] = v39;
  v40 = MEMORY[0x29EDC2368];
LABEL_16:
  v56 = *v40;
  v57 = sub_29D5B2F9C();
  (*(*(v57 - 8) + 104))(v37, v56, v57);
}

uint64_t sub_29D52B304()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  sub_29D52B4F0(v0 + *(*v0 + 96), &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8]);

  v1 = MEMORY[0x29EDC3EB0];
  sub_29D52B4F0(v0 + *(*v0 + 112), &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  sub_29D52B4F0(v0 + *(*v0 + 120), &unk_2A1A19488, v1);

  return v0;
}

uint64_t sub_29D52B45C()
{
  sub_29D52B304();

  return swift_deallocClassInstance();
}

uint64_t sub_29D52B4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D52C294(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D52B560()
{
  if (!qword_2A17A48E0)
  {
    sub_29D52B5D8();
    sub_29D5B2BDC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17A48E0);
    }
  }
}

unint64_t sub_29D52B5D8()
{
  result = qword_2A1A16288;
  if (!qword_2A1A16288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A16288);
  }

  return result;
}

uint64_t sub_29D52B624(uint64_t a1, uint64_t a2)
{
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D52B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  v10 = swift_task_alloc();
  v7[12] = v10;
  v13 = (*MEMORY[0x29EDC4100] + MEMORY[0x29EDC4100]);
  v11 = swift_task_alloc();
  v7[13] = v11;
  *v11 = v7;
  v11[1] = sub_29D52B7EC;

  return v13(v10, a5, a6);
}

uint64_t sub_29D52B7EC()
{

  return MEMORY[0x2A1C73D48](sub_29D52B8E8, 0, 0);
}

uint64_t sub_29D52B8E8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = *(*v1 + 120);
  swift_beginAccess();
  sub_29D52C2F8(v2, v1 + v3, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  swift_endAccess();
  v9 = (*MEMORY[0x29EDC40F8] + MEMORY[0x29EDC40F8]);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_29D52B9FC;
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  return v9(v5, v6, v7);
}

uint64_t sub_29D52B9FC()
{

  return MEMORY[0x2A1C73D48](sub_29D52BAF8, 0, 0);
}

uint64_t sub_29D52BAF8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = *(*v1 + 112);
  swift_beginAccess();
  sub_29D52C2F8(v2, v1 + v3, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D52BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v63 = sub_29D5B1A2C();
  v61 = *(v63 - 8);
  v64 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v63);
  v62 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D52C294(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v69 = &v48 - v7;
  v8 = MEMORY[0x29EDC3FB8];
  v56 = MEMORY[0x29EDC3FB8];
  sub_29D52C294(0, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8], v5);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v58 = &v48 - v10;
  v59 = MEMORY[0x29EDC3EB0];
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], v5);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_29D5B1BCC();
  v15 = *(v14 - 8);
  v60 = v15[8];
  MEMORY[0x2A1C7C4A8](v14);
  v67 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v57 = v15[2];
  v57();
  v17 = sub_29D5B1B0C();
  v52 = v18;
  v53 = v17;
  v19 = sub_29D5B19EC();
  v20 = *(*(v19 - 8) + 56);
  v20(v13, 1, 1, v19);
  sub_29D52C294(0, &qword_2A1A194B8, v8, type metadata accessor for BrowseItem);
  v21 = swift_allocObject();
  v22 = *(*v21 + 96);
  v51 = v15[7];
  v51(v21 + v22, 1, 1, v14);
  v20((v21 + *(*v21 + 112)), 1, 1, v19);
  v20((v21 + *(*v21 + 120)), 1, 1, v19);
  v23 = *(*v21 + 128);
  sub_29D5B1F0C();
  *(v21 + v23) = sub_29D5B1EFC();
  v24 = *(*v21 + 88);
  v25 = v15;
  v50 = v15;
  v26 = v15[4];
  v54 = v15 + 4;
  v55 = v26;
  v27 = v67;
  v26((v21 + v24), v67, v14);
  v28 = (v21 + *(*v21 + 104));
  v29 = v52;
  *v28 = v53;
  v28[1] = v29;
  v30 = *(*v21 + 120);
  swift_beginAccess();
  sub_29D52C2F8(v13, v21 + v30, &unk_2A1A19488, v59);
  swift_endAccess();
  v32 = v57;
  v31 = v58;
  v33 = v68;
  (v57)(v58, v68, v14);
  v49 = v14;
  v51(v31, 0, 1, v14);
  v34 = *(*v21 + 96);
  swift_beginAccess();

  sub_29D52C2F8(v31, v21 + v34, &qword_2A1A1A3A8, v56);
  swift_endAccess();
  v35 = sub_29D5B410C();
  (*(*(v35 - 8) + 56))(v69, 1, 1, v35);
  (v32)(v27, v33, v14);
  v36 = v61;
  v37 = v62;
  v38 = v65;
  v39 = v63;
  (*(v61 + 16))(v62, v65, v63);
  v40 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v41 = (v60 + *(v36 + 80) + v40) & ~*(v36 + 80);
  v42 = (v64 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  v44 = v67;
  *(v43 + 4) = v66;
  v45 = &v43[v40];
  v46 = v49;
  v55(v45, v44, v49);
  (*(v36 + 32))(&v43[v41], v37, v39);
  *&v43[v42] = v21;

  sub_29D57657C(0, 0, v69, &unk_29D5B9A40, v43);

  (*(v36 + 8))(v38, v39);
  (v50[1])(v68, v46);
  return v21;
}

void sub_29D52C294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D52C2F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D52C294(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D52C378(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D5B1BCC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_29D5B1A2C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_29D4E7B8C;

  return sub_29D52B6B8(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t type metadata accessor for NewRecordsFeedItemView()
{
  result = qword_2A17A48F8;
  if (!qword_2A17A48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D52C594()
{
  result = sub_29D5B457C();
  qword_2A17A48E8 = v1;
  unk_2A17A48F0 = v2;
  return result;
}

uint64_t sub_29D52C5BC()
{
  v0 = qword_2A17A39E0;
  v1 = *MEMORY[0x29EDC80E0];
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = objc_allocWithZone(sub_29D5B1E9C());
  return sub_29D5B1E8C();
}

id sub_29D52C65C(uint64_t a1)
{
  v3 = sub_29D5B200C();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D52D32C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v57 = &v54 - v6;
  v68 = sub_29D5B1D9C();
  v62 = *(v68 - 8);
  MEMORY[0x2A1C7C4A8](v68);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_29D5B1BCC();
  v61 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70);
  v75 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29D5B1D6C();
  v55 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29D5B1AEC();
  v63 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29D5B0EDC();
  v12 = *(v65 - 1);
  MEMORY[0x2A1C7C4A8](v65);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewRecordsFeedItemViewData();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D52D32C(0, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v73 = (&v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v54 - v21;
  sub_29D52D32C(0, &qword_2A17A4908, MEMORY[0x29EDC4030]);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v25 = &v54 - v24;
  v74 = v1;
  v71 = sub_29D5B22BC();
  v76 = a1;
  sub_29D52D380(a1, v22);
  v26 = 1;
  v72 = *(v15 + 48);
  if ((v72)(v22, 1, v14) != 1)
  {
    sub_29D52D4B8(v22, v17);
    (*(v12 + 16))(v64, &v17[*(v14 + 24)], v65);

    sub_29D5B1CCC();
    sub_29D52D45C(v17);
    v26 = 0;
  }

  v27 = sub_29D5B1CDC();
  (*(*(v27 - 8) + 56))(v25, v26, 1, v27);
  v28 = v71;
  sub_29D5B1A7C();

  sub_29D52D400(v25, &qword_2A17A4908, MEMORY[0x29EDC4030]);
  v29 = sub_29D5B22CC();
  sub_29D5B1E7C();

  v30 = v73;
  sub_29D52D380(v76, v73);
  if ((v72)(v30, 1, v14) == 1)
  {
    sub_29D52D400(v30, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  }

  else
  {
    v31 = *(v30 + *(v14 + 28));

    sub_29D52D45C(v30);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v63 + 16);
      v34 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v54 = v31;
      v35 = v31 + v34;
      v76 = *(v63 + 72);
      v72 = (v61 + 11);
      v36 = (v63 + 8);
      v64 = (v61 + 12);
      v65 = v61 + 1;
      LODWORD(v71) = *MEMORY[0x29EDC3F80];
      ++v62;
      v63 = v55 + 32;
      v61 = (v55 + 8);
      v37 = v56;
      v39 = v69;
      v38 = v70;
      v73 = v33;
      (v33)(v11, v35, v69);
      while (1)
      {
        if (sub_29D5B1ACC())
        {
          (*v36)(v11, v39);
        }

        else
        {
          v40 = v75;
          sub_29D5B1ADC();
          v41 = (*v72)(v40, v38);
          if (v41 == v71)
          {
            (*v64)(v40, v38);
            v42 = v66;
            v43 = v40;
            v44 = v67;
            (*v63)(v66, v43, v67);
            v45 = sub_29D5B22CC();
            sub_29D5B20AC();
            sub_29D5B209C();
            if (qword_2A17A39E0 != -1)
            {
              swift_once();
            }

            sub_29D5B1E6C();

            (*v62)(v37, v68);
            (*v61)(v42, v44);
            v39 = v69;
            (*v36)(v11, v69);
            v38 = v70;
            v33 = v73;
          }

          else
          {
            (*v36)(v11, v39);
            (*v65)(v40, v38);
            v33 = v73;
          }
        }

        v35 += v76;
        if (!--v32)
        {
          break;
        }

        (v33)(v11, v35, v39);
      }
    }
  }

  v46 = v60;
  v47 = v74;
  v48 = sub_29D5B22DC();
  v49 = sub_29D5B0EFC();
  v50 = v57;
  (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
  v51 = v58;
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v59 + 8))(v51, v46);
  sub_29D52D400(v50, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v52 = sub_29D5B3E1C();

  [v48 setTitle:v52 forState:0];

  return [v47 setNeedsLayout];
}

id sub_29D52D0A0(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NewRecordsFeedItemView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_29D52D114(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for NewRecordsFeedItemView();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D52D18C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewRecordsFeedItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D52D1C4(uint64_t a1)
{
  sub_29D52D32C(0, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v7 - v3;
  sub_29D52D2C8(a1, &v7 - v3);
  v5 = type metadata accessor for NewRecordsFeedItemViewData();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_29D52C65C(v4);
  return sub_29D52D400(v4, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
}

uint64_t sub_29D52D2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewRecordsFeedItemViewData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D52D32C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D52D380(uint64_t a1, uint64_t a2)
{
  sub_29D52D32C(0, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D52D400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D52D32C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D52D45C(uint64_t a1)
{
  v2 = type metadata accessor for NewRecordsFeedItemViewData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D52D4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewRecordsFeedItemViewData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_29D52D60C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NullView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D52D664(uint64_t a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v104 = a2;
  v96 = a1;
  v92 = a3;
  v93 = type metadata accessor for SharedConceptFeedItemData(0);
  v87 = *(v93 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v93);
  v100 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v99 = &v79 - v5;
  v6 = type metadata accessor for SharedNewRecordsAlertData(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v88 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B165C();
  v95 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B0E6C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v97 = &v79 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v101 = &v79 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v79 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v94 = &v79 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = &v79 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v79 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v33 = &v79 - v32;
  v89 = MEMORY[0x29ED5F4B0](v31);
  sub_29D5B0E5C();
  sub_29D5B0DBC();
  v34 = v30;
  v35 = v12;
  v102 = *(v13 + 8);
  v103 = v13 + 8;
  v102(v34, v12);
  sub_29D5B0D9C();
  v90 = v33;
  v91 = v27;
  v106 = v27;
  v107 = v33;
  v36 = v104;

  v37 = sub_29D547EE8(sub_29D5339B8, v105, v36);
  v38 = *(v37 + 16);
  if (v38)
  {
    v84 = v7;
    v85 = v6;
    v80 = *(v36 + 16);
    v39 = *(v95 + 16);
    v82 = v11;
    v83 = v9;
    v39(v11, v96, v9);
    sub_29D5B0D9C();
    v40 = *(v13 + 16);
    v79 = v22;
    v40(v101, v22, v35);
    v96 = v99 + *(v93 + 44);
    v41 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v81 = v37;
    v42 = v37 + v41;
    v43 = *(v87 + 72);
    v44 = v42;
    v87 = v38;
    v45 = v38;
    v46 = v86;
    v98 = v35;
    v104 = (v13 + 32);
    do
    {
      v47 = v99;
      sub_29D5339D8(v44, v99, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5B0E1C();
      v48 = v43;
      v49 = v101;
      v50 = sub_29D5B0DFC();
      v51 = v98;
      sub_29D533A40(v47, type metadata accessor for SharedConceptFeedItemData);
      if (v50)
      {
        v52 = v49;
      }

      else
      {
        v52 = v46;
      }

      if (v50)
      {
        v53 = v46;
      }

      else
      {
        v53 = v49;
      }

      v102(v52, v51);
      v54 = *v104;
      v55 = v97;
      (*v104)(v97, v53, v51);
      v56 = v49;
      v43 = v48;
      v57 = v55;
      v58 = v54;
      v54(v56, v57, v51);
      v44 += v48;
      --v45;
    }

    while (v45);
    v102(v79, v51);
    v54(v94, v101, v51);
    v59 = (v100 + *(v93 + 28));
    v60 = MEMORY[0x29EDCA190];
    v61 = v87;
    do
    {
      v62 = v100;
      sub_29D5339D8(v42, v100, type metadata accessor for SharedConceptFeedItemData);
      v64 = *v59;
      v63 = v59[1];

      sub_29D533A40(v62, type metadata accessor for SharedConceptFeedItemData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_29D514C4C(0, *(v60 + 2) + 1, 1, v60);
      }

      v66 = *(v60 + 2);
      v65 = *(v60 + 3);
      if (v66 >= v65 >> 1)
      {
        v60 = sub_29D514C4C((v65 > 1), v66 + 1, 1, v60);
      }

      *(v60 + 2) = v66 + 1;
      v67 = &v60[16 * v66];
      *(v67 + 4) = v64;
      *(v67 + 5) = v63;
      v42 += v43;
      --v61;
    }

    while (v61);

    v68 = *MEMORY[0x29EDC4068];
    v69 = sub_29D5B1D6C();
    v70 = v88;
    (*(*(v69 - 8) + 104))(v88, v68, v69);
    v71 = v85;
    *(v70 + v85[5]) = v80;
    *(v70 + v71[6]) = v60;
    v72 = v82;
    v73 = sub_29D5B164C();
    v75 = v74;
    (*(v95 + 8))(v72, v83);
    v76 = (v70 + v71[7]);
    *v76 = v73;
    v76[1] = v75;
    v35 = v98;
    v58((v70 + v71[8]), v94, v98);
    v77 = v92;
    sub_29D510658(v70, v92);
    (*(v84 + 56))(v77, 0, 1, v71);
  }

  else
  {
    (*(v7 + 56))(v92, 1, 1, v6);
  }

  v78 = v102;
  v102(v91, v35);
  v78(v90, v35);
  objc_autoreleasePoolPop(v89);
}

uint64_t sub_29D52DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D5B0E6C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v16 - v10;
  sub_29D5B29AC();
  if (sub_29D5B299C())
  {
    v12 = 1;
  }

  else
  {
    v16[1] = a3;
    type metadata accessor for SharedConceptFeedItemData(0);
    sub_29D5B0E1C();
    (*(v6 + 16))(v9, a2, v5);
    v13 = sub_29D5B0DFC();
    v14 = *(v6 + 8);
    v14(v9, v5);
    if (v13)
    {
      (*(v6 + 24))(a2, v11, v5);
    }

    v12 = sub_29D5B0E0C();
    v14(v11, v5);
  }

  return v12 & 1;
}

uint64_t sub_29D52E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v44 = a4;
  v45 = a5;
  v37 = a1;
  v38 = a3;
  v41 = sub_29D5B148C();
  v36 = *(v41 - 8);
  v42 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SharedNewRecordsAlertData;
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v35 = &v32 - v9;
  v10 = sub_29D5B143C();
  v11 = sub_29D5B10BC();
  v13 = v12;

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_29D5B494C();

  v46 = 0xD000000000000022;
  v47 = 0x800000029D5BD7A0;
  MEMORY[0x29ED5E510](v11, v13);

  v14 = v46;
  v33 = v47;
  v15 = sub_29D5B143C();
  sub_29D5B10BC();

  sub_29D5B196C();

  v16 = sub_29D5B142C();
  v17 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v18 = sub_29D5B3E1C();

  v34 = [v17 initWithCategory:1 domainName:v18 healthStore:v16];

  v46 = v38;
  sub_29D5B103C();
  sub_29D532B90(&qword_2A1A173A8, MEMORY[0x29EDC36A8]);
  v19 = v14;
  v38 = sub_29D5B17FC();
  v46 = v38;
  v20 = v35;
  sub_29D5105D8(v37, v35);
  v21 = v36;
  v23 = v40;
  v22 = v41;
  (*(v36 + 16))(v40, a2, v41);
  v24 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v21 + 80) + v25 + 16) & ~*(v21 + 80);
  v27 = (v42 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_29D5337E4(v20, v28 + v24, qword_2A1A19160, v43);
  v29 = (v28 + v25);
  v30 = v33;
  *v29 = v19;
  v29[1] = v30;
  (*(v21 + 32))(v28 + v26, v23, v22);
  *(v28 + v27) = v44;
  sub_29D532DF8(0, &qword_2A1A16818, sub_29D4B423C, MEMORY[0x29EDB89F8]);
  sub_29D4B4270();
  sub_29D5330DC(&qword_2A1A16820, &qword_2A1A16818, sub_29D4B423C);
  sub_29D5B3B7C();
}

uint64_t sub_29D52E4D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v41 = a4;
  v42 = a2;
  v9 = sub_29D5B371C();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for SharedNewRecordsAlertData(0);
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_29D5105D8(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_29D533774(v14, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
    v19 = 0;
  }

  else
  {
    sub_29D510658(v14, v18);
    sub_29D5B0D8C();
    v19 = sub_29D5B412C();
    sub_29D533A40(v18, type metadata accessor for SharedNewRecordsAlertData);
  }

  if (sub_29D5B470C())
  {
    v37 = v19;
    sub_29D5B36FC();

    v20 = sub_29D5B370C();
    v21 = sub_29D5B429C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = a6;
      v23 = v22;
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v23 = 136446466;
      v24 = sub_29D5B4DFC();
      v26 = sub_29D501890(v24, v25, v44);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = v42;
      *(v23 + 14) = sub_29D501890(v42, a3, v44);
      _os_log_impl(&dword_29D48C000, v20, v21, "%{public}s Removing any notifications that may have been delivered: %s", v23, 0x16u);
      v28 = v35;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v28, -1, -1);
      v29 = v23;
      a6 = v36;
      MEMORY[0x29ED5FB80](v29, -1, -1);

      (*(v39 + 8))(v11, v40);
    }

    else
    {

      (*(v39 + 8))(v11, v40);
      v27 = v42;
    }

    sub_29D5B140C();
    sub_29D499EC0(v44, v44[3]);
    sub_29D5B138C();
    swift_getObjectType();
    sub_29D48F410(0, &qword_2A1A1A398);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_29D5B62A0;
    *(v30 + 32) = v27;
    *(v30 + 40) = a3;

    sub_29D5B178C();
    swift_unknownObjectRelease();

    sub_29D48F668(v44);
  }

  v31 = sub_29D5B471C();

  sub_29D4B4270();
  v33 = *(v32 + 48);
  result = sub_29D5105D8(v43, a6);
  *(a6 + v33) = v31 & 1;
  return result;
}

uint64_t sub_29D52E988(uint64_t a1, int a2, uint64_t a3, void (*a4)(unint64_t, _BYTE *, uint64_t), uint64_t a5, uint64_t a6, NSObject *a7)
{
  v66 = a7;
  v78 = a4;
  v80 = a3;
  LODWORD(v77) = a2;
  v72 = sub_29D5B148C();
  v69 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72);
  v68 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_29D5B371C();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v74 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x29EDC9C68];
  sub_29D532AA4(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v63[-v16];
  v18 = sub_29D5B134C();
  v75 = *(v18 - 8);
  v76 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v67 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v19);
  v73 = &v63[-v21];
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, v14);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v24 = &v63[-v23];
  v25 = type metadata accessor for SharedNewRecordsAlertData(0);
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v63[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D5105D8(a1, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_29D533774(v24, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    sub_29D510658(v24, v28);
    v79[3] = sub_29D5B103C();
    v79[4] = sub_29D532B90(&qword_2A1A173A8, MEMORY[0x29EDC36A8]);
    v79[0] = a6;

    sub_29D52F1F0(v28, v78, a5, v79, v77 & 1, v17);
    if (v7)
    {
      sub_29D533A40(v28, type metadata accessor for SharedNewRecordsAlertData);
      return sub_29D48F668(v79);
    }

    else
    {
      v30 = a5;
      sub_29D48F668(v79);
      v32 = v75;
      v31 = v76;
      if ((*(v75 + 48))(v17, 1, v76) == 1)
      {
        sub_29D533A40(v28, type metadata accessor for SharedNewRecordsAlertData);
        sub_29D533774(v17, qword_2A1A19830, MEMORY[0x29EDC3840]);
        return MEMORY[0x29EDCA190];
      }

      else
      {
        v33 = *(v32 + 32);
        v34 = v73;
        v80 = v32 + 32;
        v78 = v33;
        v33(v73, v17, v31);
        sub_29D5B36CC();
        v36 = v68;
        v35 = v69;
        (*(v69 + 16))(v68, v30, v72);
        v37 = v67;
        (*(v32 + 16))(v67, v34, v31);
        v38 = sub_29D5B370C();
        v39 = sub_29D5B426C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v79[0] = v65;
          *v40 = 136446722;
          v41 = sub_29D5B4DFC();
          v66 = v38;
          v43 = sub_29D501890(v41, v42, v79);
          v77 = 0;
          v44 = v43;

          *(v40 + 4) = v44;
          *(v40 + 12) = 2080;
          v45 = sub_29D5B143C();
          v46 = sub_29D5B10BC();
          v64 = v39;
          v47 = v36;
          v49 = v48;

          v50 = v47;
          v51 = v76;
          (*(v35 + 8))(v50, v72);
          v52 = sub_29D501890(v46, v49, v79);

          *(v40 + 14) = v52;
          *(v40 + 22) = 2080;
          sub_29D532B90(&qword_2A17A4910, MEMORY[0x29EDC3840]);
          v53 = sub_29D5B4C4C();
          v55 = v54;
          v56 = v75;
          (*(v75 + 8))(v37, v51);
          v57 = sub_29D501890(v53, v55, v79);

          *(v40 + 24) = v57;
          v58 = v66;
          _os_log_impl(&dword_29D48C000, v66, v64, "[%{public}s] Generated notification feed item for profile %s: %s", v40, 0x20u);
          v59 = v65;
          swift_arrayDestroy();
          MEMORY[0x29ED5FB80](v59, -1, -1);
          MEMORY[0x29ED5FB80](v40, -1, -1);

          (*(v70 + 8))(v74, v71);
          v60 = v56;
        }

        else
        {

          (*(v32 + 8))(v37, v31);
          (*(v35 + 8))(v36, v72);
          (*(v70 + 8))(v74, v71);
          v51 = v31;
          v60 = v32;
        }

        sub_29D532AA4(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
        v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_29D5B62A0;
        v78(v62 + v61, v73, v51);
        sub_29D533A40(v28, type metadata accessor for SharedNewRecordsAlertData);
        return v62;
      }
    }
  }
}

void sub_29D52F1F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v13 = MEMORY[0x29ED5F4B0]();
  sub_29D52F6EC(a3, a2, a1, a5, v6, a4, v6, &v14, a6);
  objc_autoreleasePoolPop(v13);
}

uint64_t sub_29D52F298@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  sub_29D532AA4(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v40[-v8];
  sub_29D532DF8(0, &qword_2A1A161B8, sub_29D4B3AC0, MEMORY[0x29EDB8B18]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v47 = &v40[-v13];
  v14 = sub_29D5B371C();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  sub_29D5B36CC();
  v18 = v17;
  v19 = sub_29D5B370C();
  v20 = sub_29D5B427C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v12;
    v22 = v21;
    v42 = swift_slowAlloc();
    v49 = v42;
    *v22 = 136446466;
    v23 = sub_29D5B4DFC();
    v44 = a3;
    v25 = sub_29D501890(v23, v24, &v49);
    v41 = v20;
    v26 = v9;
    v27 = v11;
    v28 = v7;
    v29 = v6;
    v30 = v25;

    *(v22 + 4) = v30;
    v6 = v29;
    v7 = v28;
    v11 = v27;
    v9 = v26;
    *(v22 + 12) = 2082;
    v48 = v17;
    v31 = v17;
    sub_29D4A02FC(0, &qword_2A1A1A410);
    v32 = sub_29D5B3E9C();
    v34 = sub_29D501890(v32, v33, &v49);

    *(v22 + 14) = v34;
    a3 = v44;
    _os_log_impl(&dword_29D48C000, v19, v41, "[%{public}s] Unable to generate notification feed item: %{public}s", v22, 0x16u);
    v35 = v42;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v35, -1, -1);
    v36 = v22;
    v12 = v43;
    MEMORY[0x29ED5FB80](v36, -1, -1);
  }

  (*(v45 + 8))(v16, v46);
  v49 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4A02FC(0, &qword_2A1A1A410);
  v37 = v47;
  sub_29D5B39EC();
  (*(v7 + 8))(v9, v6);
  sub_29D532B08();
  v38 = sub_29D5B3B1C();
  result = (*(v12 + 8))(v37, v11);
  *a3 = v38;
  return result;
}

uint64_t sub_29D52F6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v79 = a8;
  v65 = a7;
  v62 = a6;
  v64 = a5;
  v63 = a4;
  v88 = a3;
  v84 = a2;
  v77 = a9;
  v86 = type metadata accessor for SharedNewRecordsAlertData(0);
  v59 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v60 = v10;
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_29D5B148C();
  v56 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58);
  v57 = v11;
  v76 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D532AA4(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v74 = &v55 - v13;
  v14 = sub_29D5B0E6C();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v71 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v70 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D5B170C();
  v82 = *(v18 - 8);
  v83 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v81 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29D5B104C();
  v67 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v68 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D5B134C();
  v75 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v80 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B1AAC();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D5B1D6C();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v30, *MEMORY[0x29EDC4068], v27);
  (*(v24 + 104))(v26, *MEMORY[0x29EDC3F10], v23);
  v78 = a1;
  v31 = sub_29D5B143C();
  v66 = sub_29D5B26DC();

  (*(v24 + 8))(v26, v23);
  (*(v28 + 8))(v30, v27);
  sub_29D532B90(&qword_2A17A4918, type metadata accessor for SharedNewRecordsAlertData);
  v32 = v85;
  sub_29D5B0BEC();
  if (v32)
  {

    *v79 = v32;
  }

  else
  {
    v85 = v21;
    type metadata accessor for CategoryUpdateViewController();
    (*(v67 + 104))(v68, *MEMORY[0x29EDC3758], v69);
    sub_29D5B143C();
    sub_29D5B110C();
    sub_29D5B140C();
    sub_29D5B11CC();
    sub_29D48F668(&v87);
    v34 = v88;
    (*(v72 + 16))(v71, v88 + *(v86 + 32), v73);
    sub_29D5B0C6C();
    v35 = v81;
    sub_29D5B16EC();
    v36 = v82;
    v37 = v74;
    v38 = v35;
    v39 = v83;
    (*(v82 + 16))(v74, v38, v83);
    (*(v36 + 56))(v37, 0, 1, v39);
    sub_29D5B12BC();
    v40 = sub_29D5B143C();
    v41 = sub_29D5B10DC();
    LOBYTE(v37) = sub_29D5B10CC();

    if (v37)
    {
      (*(v82 + 8))(v81, v83);
      v42 = v77;
      v43 = v85;
      v44 = v75;
      v45 = v80;
    }

    else
    {
      v46 = v56;
      v47 = v58;
      (*(v56 + 16))(v76, v78, v58);
      v48 = v34;
      v49 = v61;
      sub_29D5339D8(v48, v61, type metadata accessor for SharedNewRecordsAlertData);
      sub_29D48F564(v62, &v87);
      v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v51 = (v57 + *(v59 + 80) + v50) & ~*(v59 + 80);
      v52 = (v60 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      *(v53 + 16) = v63 & 1;
      *(v53 + 24) = v64;
      (*(v46 + 32))(v53 + v50, v76, v47);
      sub_29D510658(v49, v53 + v51);
      sub_29D497868(&v87, v53 + v52);
      *(v53 + ((v52 + 47) & 0xFFFFFFFFFFFFFFF8)) = v65;
      v54 = v80;
      sub_29D5B11DC();
      (*(v82 + 8))(v81, v83);
      v42 = v77;
      v43 = v85;
      v44 = v75;
      v45 = v54;
    }

    (*(v44 + 32))(v42, v45, v43);
    return (*(v44 + 56))(v42, 0, 1, v43);
  }

  return result;
}

uint64_t sub_29D5300A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_29D530304(a4, a5, a6);
    sub_29D48F51C(0, &qword_2A17A4920);
    sub_29D4A02FC(0, &qword_2A1A1A410);
    sub_29D5B397C();
  }

  else
  {
    sub_29D5B36FC();
    v15 = sub_29D5B370C();
    v16 = sub_29D5B429C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_29D5B4DFC();
      v21 = sub_29D501890(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_29D48C000, v15, v16, "%s Not generating notification for shared lab updates", v17, 0xCu);
      sub_29D48F668(v18);
      MEMORY[0x29ED5FB80](v18, -1, -1);
      MEMORY[0x29ED5FB80](v17, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_29D530304(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v109 = a3;
  v116 = a2;
  v88 = type metadata accessor for SharedNewRecordsAlertData(0);
  v98 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v99 = v6;
  v100 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29D5B148C();
  v7 = *(v97 - 1);
  MEMORY[0x2A1C7C4A8](v97);
  v95 = v8;
  v96 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_29D5B31AC();
  v93 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94);
  v92 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D532CEC();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v101 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D532F50();
  v107 = v12;
  v105 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v104 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D533140();
  v110 = v14;
  v108 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v106 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B371C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v112 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = v84 - v20;
  sub_29D5B36FC();
  v22 = sub_29D5B370C();
  v23 = sub_29D5B429C();
  v24 = os_log_type_enabled(v22, v23);
  v115 = v4;
  v90 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v114 = v7;
    v26 = v25;
    v27 = swift_slowAlloc();
    *&v117 = v27;
    *v26 = 136446466;
    v28 = sub_29D5B4DFC();
    v30 = a1;
    v31 = sub_29D501890(v28, v29, &v117);

    *(v26 + 4) = v31;
    a1 = v30;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_29D501890(0xD000000000000051, 0x800000029D5BD7D0, &v117);
    _os_log_impl(&dword_29D48C000, v22, v23, "[%{public}s] %s running", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v27, -1, -1);
    v32 = v26;
    v16 = v90;
    v7 = v114;
    MEMORY[0x29ED5FB80](v32, -1, -1);
  }

  v33 = *(v17 + 8);
  v33(v21, v16);
  v113 = sub_29D5B142C();
  v91 = sub_29D5B143C();
  v34 = sub_29D5B10BC();
  v36 = v35;
  *&v117 = 0;
  *(&v117 + 1) = 0xE000000000000000;
  sub_29D5B494C();

  *&v117 = 0xD000000000000022;
  *(&v117 + 1) = 0x800000029D5BD7A0;
  MEMORY[0x29ED5E510](v34, v36);

  v37 = *(&v117 + 1);
  v111 = v117;
  sub_29D5B140C();
  sub_29D499EC0(&v117, v118);
  v114 = sub_29D5B138C();
  v89 = v38;
  sub_29D48F668(&v117);
  sub_29D5B0D8C();
  v88 = sub_29D5B412C();
  v87 = v39;
  v40 = v112;
  sub_29D5B36FC();

  v41 = sub_29D5B370C();
  v42 = sub_29D5B429C();

  v43 = os_log_type_enabled(v41, v42);
  v86 = v37;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v85 = a1;
    v45 = v44;
    v46 = swift_slowAlloc();
    *&v117 = v46;
    *v45 = 136446466;
    v47 = v115;
    v48 = sub_29D5B4DFC();
    v84[1] = v17;
    v50 = v33;
    v51 = sub_29D501890(v48, v49, &v117);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_29D501890(v111, v37, &v117);
    _os_log_impl(&dword_29D48C000, v41, v42, "[%{public}s] Proceeding with notification generation for %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v46, -1, -1);
    v52 = v45;
    a1 = v85;
    MEMORY[0x29ED5FB80](v52, -1, -1);

    v50(v112, v90);
  }

  else
  {

    v33(v40, v16);
    v47 = v115;
  }

  v53 = v93;
  v54 = v92;
  v55 = v94;
  (*(v93 + 104))(v92, *MEMORY[0x29EDC2828], v94);
  type metadata accessor for SharedConceptFeedItemGenerator(0);
  sub_29D532B90(qword_2A1A17D68, type metadata accessor for SharedConceptFeedItemGenerator);
  v56 = v47;
  v57 = sub_29D5B2F4C();
  (*(v53 + 8))(v54, v55);
  *&v117 = v57;
  v58 = v96;
  v59 = v97;
  (*(v7 + 16))(v96, a1, v97);
  v60 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v61 = (v95 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v7 + 32))(v62 + v60, v58, v59);
  *(v62 + v61) = v56;
  sub_29D5B396C();
  sub_29D499998();
  v63 = MEMORY[0x29EDC3928];
  v97 = MEMORY[0x29EDB89F8];
  sub_29D532DF8(0, &qword_2A1A16838, MEMORY[0x29EDC3928], MEMORY[0x29EDB89F8]);
  v112 = MEMORY[0x29EDB8A00];
  sub_29D532B90(&qword_2A1A19778, sub_29D499998);
  sub_29D5330DC(&qword_2A1A16840, &qword_2A1A16838, v63);
  v64 = v101;
  sub_29D5B3C5C();

  v65 = v100;
  sub_29D5339D8(v116, v100, type metadata accessor for SharedNewRecordsAlertData);
  v66 = (*(v98 + 80) + 64) & ~*(v98 + 80);
  v67 = (v99 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v86;
  v68[2] = v111;
  v68[3] = v69;
  v70 = v87;
  v68[4] = v88;
  v68[5] = v70;
  v71 = v113;
  v72 = v91;
  v68[6] = v113;
  v68[7] = v72;
  sub_29D510658(v65, v68 + v66);
  v73 = (v68 + v67);
  v74 = v89;
  *v73 = v114;
  v73[1] = v74;
  *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
  v116 = v72;
  swift_unknownObjectRetain();
  v113 = v71;
  sub_29D5B396C();
  sub_29D53305C();
  sub_29D532DF8(0, &qword_2A17A4948, sub_29D53305C, v97);
  sub_29D532B90(&qword_2A17A4960, sub_29D532CEC);
  sub_29D5330DC(&qword_2A17A4958, &qword_2A17A4948, sub_29D53305C);
  v75 = v104;
  v76 = v103;
  sub_29D5B3BFC();

  (*(v102 + 8))(v64, v76);
  sub_29D48F564(v109, &v117);
  v77 = swift_allocObject();
  sub_29D497868(&v117, v77 + 16);
  *(v77 + 56) = v115;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_29D533434;
  *(v78 + 24) = v77;
  sub_29D5B396C();
  sub_29D48F51C(0, &qword_2A17A4920);
  sub_29D53322C();
  sub_29D532B90(&qword_2A17A4980, sub_29D532F50);
  sub_29D532B90(&qword_2A17A4978, sub_29D53322C);
  v79 = v106;
  v80 = v107;
  sub_29D5B3BFC();

  (*(v105 + 8))(v75, v80);
  sub_29D532B90(&qword_2A17A4988, sub_29D533140);
  v81 = v110;
  v82 = sub_29D5B3B1C();

  swift_unknownObjectRelease();
  (*(v108 + 8))(v79, v81);
  return v82;
}

uint64_t sub_29D5310A0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_29D5B371C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36FC();
  v8 = sub_29D5B370C();
  v9 = sub_29D5B429C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a1;
    v11 = a2;
    v12 = v10;
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136446210;
    v14 = sub_29D5B4DFC();
    v16 = sub_29D501890(v14, v15, v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29D48C000, v8, v9, "[%{public}s] Update notifications are enabled", v12, 0xCu);
    sub_29D48F668(v13);
    MEMORY[0x29ED5FB80](v13, -1, -1);
    v17 = v12;
    a2 = v11;
    MEMORY[0x29ED5FB80](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_29D5B140C();
  sub_29D499EC0(v20, v20[3]);
  *a2 = sub_29D5B139C();
  return sub_29D48F668(v20);
}

uint64_t sub_29D531298@<X0>(uint64_t a1@<X0>, void *a2@<X5>, void *a3@<X6>, char *a4@<X7>, uint64_t *a5@<X8>, void *a6, uint64_t a7, uint64_t a8)
{
  v44 = a2;
  v45 = a3;
  v55 = a5;
  v43[0] = a1;
  v43[1] = a8;
  v49 = a7;
  v50 = a4;
  sub_29D5335E0();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v52 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B0EDC();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v51 = sub_29D5B17CC();
  v14 = *(v51 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v51);
  v46 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = v43 - v17;

  sub_29D5B0ECC();
  sub_29D5B179C();
  v19 = v50;
  v50 = v18;
  v20 = sub_29D531848(v44, v45, v43[0], v19, v18);
  sub_29D5B36FC();
  v21 = v20;
  v22 = sub_29D5B370C();
  v23 = sub_29D5B429C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57[0] = v25;
    *v24 = 136446466;
    v26 = sub_29D5B4DFC();
    v28 = sub_29D501890(v26, v27, v57);
    v45 = a6;
    v29 = v28;

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = HKSensitiveLogItem();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v31 = sub_29D5B3E7C();
    v33 = sub_29D501890(v31, v32, v57);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_29D48C000, v22, v23, "[%{public}s] Generating notification: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v25, -1, -1);
    MEMORY[0x29ED5FB80](v24, -1, -1);
  }

  (*(v47 + 8))(v12, v48);
  swift_getObjectType();
  v56 = sub_29D5B177C();
  v34 = v46;
  v36 = v50;
  v35 = v51;
  (*(v14 + 16))(v46, v50, v51);
  v37 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v38 = swift_allocObject();
  (*(v14 + 32))(v38 + v37, v34, v35);
  sub_29D53322C();
  sub_29D53305C();
  sub_29D532B90(&qword_2A17A4978, sub_29D53322C);
  v39 = v52;
  sub_29D5B3B7C();

  sub_29D532B90(&qword_2A17A49B8, sub_29D5335E0);
  v40 = v54;
  v41 = sub_29D5B3B1C();

  (*(v53 + 8))(v39, v40);
  result = (*(v14 + 8))(v36, v35);
  *v55 = v41;
  return result;
}

uint64_t sub_29D531848(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v11 = MEMORY[0x29ED5F4B0]();
  sub_29D531E34(a1, a3, a4, v5, a5, a2, v5, &v13);
  objc_autoreleasePoolPop(v11);
  return v13;
}

id sub_29D5318D4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v9 = *a1;
  sub_29D53305C();
  v6 = *(v5 + 48);
  *a3 = v9;
  v7 = sub_29D5B17CC();
  (*(*(v7 - 8) + 16))(&a3[v6], a2, v7);

  return v9;
}

uint64_t sub_29D531974(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v40 = a1;
  sub_29D53349C();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B17CC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B371C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36FC();
  (*(v8 + 16))(v10, a2, v7);
  v15 = sub_29D5B370C();
  v16 = sub_29D5B429C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v11;
    v18 = v17;
    v36 = swift_slowAlloc();
    v44 = v36;
    *v18 = 136446466;
    v19 = sub_29D5B4DFC();
    v21 = sub_29D501890(v19, v20, &v44);
    v38 = a2;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = sub_29D5B17AC();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = sub_29D501890(v23, v25, &v44);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s] Saving content state: %s", v18, 0x16u);
    v27 = v36;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v27, -1, -1);
    MEMORY[0x29ED5FB80](v18, -1, -1);

    (*(v12 + 8))(v14, v37);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);
  }

  sub_29D499EC0(v39, v39[3]);
  v44 = sub_29D5B166C();
  v28 = swift_allocObject();
  v29 = v40;
  *(v28 + 16) = v40;
  sub_29D533558();
  sub_29D48F51C(0, &qword_2A17A4920);
  sub_29D532B90(&qword_2A17A49A0, sub_29D533558);
  v30 = v29;
  v31 = v41;
  sub_29D5B3B7C();

  sub_29D532B90(&qword_2A17A49A8, sub_29D53349C);
  v32 = v43;
  v33 = sub_29D5B3B1C();
  (*(v42 + 8))(v31, v32);
  return v33;
}

uint64_t sub_29D531E34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v82[1] = a7;
  v101 = a6;
  v98 = a5;
  v99 = a4;
  v96 = a3;
  v91 = a1;
  v92 = a2;
  v103 = a8;
  v84 = sub_29D5B371C();
  v83 = *(v84 - 8);
  MEMORY[0x2A1C7C4A8](v84);
  v104 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDC9C68];
  sub_29D532AA4(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v97 = v82 - v12;
  sub_29D532AA4(0, &qword_2A17A49C0, MEMORY[0x29EDB9B18], v10);
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v95 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v105 = v82 - v16;
  v17 = sub_29D5B200C();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x29EDB9C70];
  sub_29D532AA4(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], v10);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = v82 - v22;
  v24 = sub_29D5B0EDC();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = [a1 profileIdentifier];
  v28 = [v102 identifier];
  sub_29D5B0EBC();

  v106 = sub_29D5B0E8C();
  v107 = v29;
  v93 = v25;
  v94 = v24;
  (*(v25 + 8))(v27, v24);
  v89 = [objc_allocWithZone(MEMORY[0x29EDBCCC0]) init];
  v30 = sub_29D5B0EFC();
  v31 = *(v30 - 8);
  v88 = *(v31 + 56);
  v87 = v31 + 56;
  v88(v23, 1, 1, v30);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v32 = *(v18 + 8);
  v85 = v18 + 8;
  v86 = v32;
  v32(v20, v17);
  v33 = v90;
  sub_29D533774(v23, &qword_2A1A19588, v90);
  sub_29D5B3E2C();

  v34 = sub_29D5B3E1C();

  v35 = v89;
  [v89 setTitle_];

  v88(v23, 1, 1, v30);
  sub_29D5B1FEC();
  sub_29D5B2A0C();
  v86(v20, v17);
  sub_29D533774(v23, &qword_2A1A19588, v33);
  sub_29D53370C();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29D5B5E20;
  v37 = sub_29D5B164C();
  v39 = v38;
  *(v36 + 56) = MEMORY[0x29EDC99B0];
  *(v36 + 64) = sub_29D4A25A4();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  v40 = *&v96[*(type metadata accessor for SharedNewRecordsAlertData(0) + 20)];
  v41 = MEMORY[0x29EDC9C10];
  *(v36 + 96) = MEMORY[0x29EDC9BA8];
  *(v36 + 104) = v41;
  *(v36 + 72) = v40;
  sub_29D5B3E2C();

  v42 = sub_29D5B3E1C();

  [v35 setBody_];

  v43 = sub_29D5B3E1C();
  [v35 setCategoryIdentifier_];

  v44 = sub_29D5B3E1C();
  v45 = v35;
  [v35 setThreadIdentifier_];

  v46 = [v91 profileIdentifier];
  v47 = [objc_allocWithZone(MEMORY[0x29EDC1570]) initWithProfileIdentifier_];

  v96 = v47;
  v48 = [v47 URLForSharingOverview];
  v49 = v95;
  if (v48)
  {
    v50 = v48;
    sub_29D5B0D4C();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = sub_29D5B0D5C();
  (*(*(v52 - 8) + 56))(v49, v51, 1, v52);
  v53 = v105;
  sub_29D5337E4(v49, v105, &qword_2A17A49C0, MEMORY[0x29EDB9B18]);
  v54 = v97;
  sub_29D5B17BC();
  (*(v93 + 56))(v54, 0, 1, v94);
  type metadata accessor for SharedConceptFeedItemGenerator(0);
  sub_29D532B90(qword_2A1A17D68, type metadata accessor for SharedConceptFeedItemGenerator);
  sub_29D5B2F5C();
  sub_29D533774(v54, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  v55 = sub_29D5B3D2C();

  [v45 setUserInfo_];

  v56 = sub_29D5B2F6C();
  [v45 setSound_];

  sub_29D48F410(0, &qword_2A1A19420);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_29D5B6350;
  v58 = v100;
  v59 = v101;
  v60 = sub_29D5B2F3C();
  v61 = v104;
  if (v58)
  {
    *(v57 + 16) = 0;

    sub_29D5B36FC();
    v62 = v59;
    v63 = v58;
    v64 = sub_29D5B370C();
    v65 = sub_29D5B427C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v108 = v67;
      *v66 = 136315650;
      v68 = sub_29D5B4DFC();
      v70 = sub_29D501890(v68, v69, &v108);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      v71 = sub_29D5B10BC();
      v73 = sub_29D501890(v71, v72, &v108);

      *(v66 + 14) = v73;
      *(v66 + 22) = 2080;
      v110 = v58;
      v74 = v58;
      sub_29D4A02FC(0, &qword_2A1A1A410);
      v75 = sub_29D5B3E9C();
      v77 = sub_29D501890(v75, v76, &v108);
      v53 = v105;

      *(v66 + 24) = v77;
      _os_log_impl(&dword_29D48C000, v64, v65, "[%s] [Contact Photo] Could not create notification attachment for %s. %s", v66, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v67, -1, -1);
      MEMORY[0x29ED5FB80](v66, -1, -1);

      (*(v83 + 8))(v104, v84);
    }

    else
    {

      (*(v83 + 8))(v61, v84);
    }
  }

  else
  {
    *(v57 + 32) = v60;
    sub_29D48F51C(0, &qword_2A17A49C8);
    v78 = sub_29D5B401C();

    [v45 setAttachments_];
  }

  v108 = 0;
  v109 = 0xE000000000000000;
  sub_29D5B494C();

  v108 = 0xD000000000000022;
  v109 = 0x800000029D5BD7A0;
  MEMORY[0x29ED5E510](v106, v107);

  v79 = sub_29D5B3E1C();

  v80 = [objc_opt_self() requestWithIdentifier:v79 content:v45 trigger:0];

  result = sub_29D533774(v53, &qword_2A17A49C0, MEMORY[0x29EDB9B18]);
  *v103 = v80;
  return result;
}

void sub_29D532AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D532B08()
{
  result = qword_2A1A161C0;
  if (!qword_2A1A161C0)
  {
    sub_29D532DF8(255, &qword_2A1A161B8, sub_29D4B3AC0, MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A161C0);
  }

  return result;
}

uint64_t sub_29D532B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D532BD8(uint64_t a1)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SharedNewRecordsAlertData(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_29D5300A4(a1, v8, v9, v1 + v4, (v1 + v7), v10);
}

void sub_29D532CEC()
{
  if (!qword_2A17A4928)
  {
    v0 = MEMORY[0x29EDC3928];
    sub_29D532DF8(255, &qword_2A1A16838, MEMORY[0x29EDC3928], MEMORY[0x29EDB89F8]);
    sub_29D532E84();
    sub_29D5330DC(&qword_2A1A16840, &qword_2A1A16838, v0);
    sub_29D532B90(&qword_2A17A4938, sub_29D532E84);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4928);
    }
  }
}

void sub_29D532DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4A02FC(255, &qword_2A1A1A410);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D532E84()
{
  if (!qword_2A17A4930)
  {
    sub_29D499998();
    sub_29D4A02FC(255, &qword_2A1A1A410);
    sub_29D532B90(&qword_2A1A19778, sub_29D499998);
    v0 = sub_29D5B382C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4930);
    }
  }
}

void sub_29D532F50()
{
  if (!qword_2A17A4940)
  {
    sub_29D532DF8(255, &qword_2A17A4948, sub_29D53305C, MEMORY[0x29EDB89F8]);
    sub_29D532CEC();
    sub_29D5330DC(&qword_2A17A4958, &qword_2A17A4948, sub_29D53305C);
    sub_29D532B90(&qword_2A17A4960, sub_29D532CEC);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4940);
    }
  }
}

void sub_29D53305C()
{
  if (!qword_2A17A4950)
  {
    sub_29D48F51C(255, &qword_2A17A4920);
    sub_29D5B17CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4950);
    }
  }
}

uint64_t sub_29D5330DC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D532DF8(255, a2, a3, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D533140()
{
  if (!qword_2A17A4968)
  {
    sub_29D53322C();
    sub_29D532F50();
    sub_29D532B90(&qword_2A17A4978, sub_29D53322C);
    sub_29D532B90(&qword_2A17A4980, sub_29D532F50);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4968);
    }
  }
}

void sub_29D53322C()
{
  if (!qword_2A17A4970)
  {
    sub_29D48F51C(255, &qword_2A17A4920);
    sub_29D4A02FC(255, &qword_2A1A1A410);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4970);
    }
  }
}

uint64_t sub_29D5332BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29D5310A0(v4, a1);
}

uint64_t sub_29D533368@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SharedNewRecordsAlertData(0) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_29D531298(a1, *(v2 + 48), *(v2 + 56), (v2 + v6), a2, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_29D533440@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  sub_29D53305C();
  result = v5(v6, &a1[*(v7 + 48)]);
  *a2 = result;
  return result;
}

void sub_29D53349C()
{
  if (!qword_2A17A4990)
  {
    sub_29D533558();
    sub_29D48F51C(255, &qword_2A17A4920);
    sub_29D532B90(&qword_2A17A49A0, sub_29D533558);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4990);
    }
  }
}

void sub_29D533558()
{
  if (!qword_2A17A4998)
  {
    sub_29D4A02FC(255, &qword_2A1A1A410);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4998);
    }
  }
}

id sub_29D5335D4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void sub_29D5335E0()
{
  if (!qword_2A17A49B0)
  {
    sub_29D53322C();
    sub_29D53305C();
    sub_29D532B90(&qword_2A17A4978, sub_29D53322C);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A49B0);
    }
  }
}

id sub_29D53368C@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v5 = *(sub_29D5B17CC() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D5318D4(a1, v6, a2);
}

void sub_29D53370C()
{
  if (!qword_2A1A195B0)
  {
    sub_29D4A02FC(255, &qword_2A1A19590);
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A195B0);
    }
  }
}

uint64_t sub_29D533774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D532AA4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5337E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D532AA4(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D533864@<X0>(uint64_t a1@<X8>)
{
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_29D5B148C() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D52E4D0(v1 + v4, v8, v9, v1 + v7, v10, a1);
}

uint64_t sub_29D5339D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D533A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D533AA0()
{
  v0 = sub_29D5B1AAC();
  sub_29D50CE1C(v0, qword_2A1A1A6A8);
  v1 = sub_29D50BA5C(v0, qword_2A1A1A6A8);
  v2 = *MEMORY[0x29EDC3F18];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void *sub_29D533B28(uint64_t a1)
{
  v2 = v1;
  v19 = *v1;
  v18 = sub_29D5B13CC();
  v4 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B13EC();
  v7 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5362E8(a1, v1 + OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v16 = sub_29D5B143C();
  sub_29D535C90(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC36D0], v10);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v18);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_domain, v9, v17);
  v14 = sub_29D533E34(a1);
  sub_29D536350(a1, type metadata accessor for HealthRecordsGeneratorContext);
  v2[2] = v14;
  return v2;
}

id sub_29D533E34(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  v87 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v89 = v3;
  v90 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535C5C(0);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v84 = &v77 - v7;
  v82 = sub_29D5B106C();
  v81 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v80 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535CF4();
  v88 = v9;
  v86 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535E1C();
  v93 = v11;
  v92 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v91 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535F10();
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v94 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535FFC();
  v99 = *(v15 - 8);
  v100 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v97 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53611C();
  v101 = *(v17 - 8);
  v102 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v98 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D536208();
  v104 = *(v19 - 8);
  v105 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v103 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29D5B0EDC();
  v77 = *(v78 - 1);
  MEMORY[0x2A1C7C4A8](v78);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B1AAC();
  v24 = *(v23 - 1);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B0C0C();
  swift_allocObject();
  v108 = sub_29D5B0BFC();
  sub_29D5B1CBC();
  v27 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v111, v112);
  v28 = sub_29D5B136C();
  v29 = [v28 profileIdentifier];

  v107 = sub_29D5B1C6C();
  sub_29D48F668(&v111);
  sub_29D5B140C();
  if (qword_2A1A18348 != -1)
  {
    swift_once();
  }

  v30 = sub_29D50BA5C(v23, qword_2A1A1A6A8);
  v31 = *(v24 + 16);
  v106 = v23;
  v31(v26, v30, v23);
  v32 = sub_29D5B143C();
  v33 = sub_29D5B10AC();
  v34 = sub_29D5B1A8C();
  v36 = v35;
  if (v33)
  {
    v109 = 0x656C69666F72505BLL;
    v110 = 0xE90000000000003ALL;
    v37 = v34;
    v33 = v33;
    v38 = [v33 identifier];
    v39 = v22;
    sub_29D5B0EBC();

    v40 = a1;
    v41 = sub_29D5B0E8C();
    v43 = v42;
    (*(v77 + 8))(v39, v78);
    v44 = v41;
    a1 = v40;
    MEMORY[0x29ED5E510](v44, v43);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v34 = v37;
    v45 = v109;
    v46 = v110;
  }

  else
  {
    v46 = 0x800000029D5BBCB0;
    v45 = 0xD000000000000013;
  }

  v109 = v45;
  v110 = v46;
  MEMORY[0x29ED5E510](v34, v36);

  v47 = v109;
  v48 = v110;
  (*(v24 + 8))(v26, v106);
  type metadata accessor for FeedItemContextChangeGenerator();
  v49 = swift_allocObject();
  sub_29D497868(&v111, v49 + 16);
  *(v49 + 56) = v47;
  *(v49 + 64) = v48;
  v50 = [objc_opt_self() predicateForMedicalRecordWithState_];
  sub_29D53629C();
  result = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];
  if (result)
  {
    v52 = result;
    v78 = v52;
    v106 = v50;
    v53 = sub_29D5B262C();

    v54 = v81;
    v55 = v80;
    v56 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x29EDC37B8], v82);
    sub_29D5B105C();
    (*(v54 + 8))(v55, v56);
    v57 = sub_29D5B369C();
    v58 = v84;
    (*(*(v57 - 8) + 56))(v84, 1, 1, v57);
    *&v111 = v53;
    sub_29D5362E8(v58, v83, sub_29D535C5C);
    sub_29D535D88();
    sub_29D535EC8(&qword_2A1A166D0, sub_29D535D88);
    v59 = v85;
    sub_29D5B381C();
    sub_29D536350(v58, sub_29D535C5C);
    v60 = v90;
    sub_29D5362E8(a1, v90, type metadata accessor for HealthRecordsGeneratorContext);
    v61 = (*(v87 + 80) + 24) & ~*(v87 + 80);
    v62 = (v89 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v79;
    *(v63 + 16) = v79;
    sub_29D499F90(v60, v63 + v61);
    *(v63 + v62) = v108;
    sub_29D4B3AC0(0);
    sub_29D535EC8(&qword_2A1A16FE8, sub_29D535CF4);

    v65 = v91;
    v66 = v88;
    sub_29D5B3BCC();

    (*(v86 + 8))(v59, v66);
    sub_29D4B3A8C(0);
    sub_29D535EC8(&qword_2A1A16BE8, sub_29D535E1C);
    sub_29D535EC8(&qword_2A1A167C0, sub_29D4B3A8C);
    v67 = v94;
    v68 = v93;
    sub_29D5B3B8C();
    (*(v92 + 8))(v65, v68);
    sub_29D5360CC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D535EC8(&qword_2A1A16D78, sub_29D535F10);

    v69 = v96;
    v70 = v97;
    sub_29D5B3BCC();

    (*(v95 + 8))(v67, v69);
    *(swift_allocObject() + 16) = v64;
    sub_29D4B2D8C();
    sub_29D535EC8(&qword_2A1A16BA8, sub_29D535FFC);
    sub_29D535EC8(&qword_2A1A16780, sub_29D4B2D8C);
    v71 = v98;
    v72 = v100;
    sub_29D5B3B8C();

    (*(v99 + 8))(v70, v72);
    *&v111 = MEMORY[0x29EDCA190];
    sub_29D535EC8(&qword_2A1A16CE8, sub_29D53611C);
    v73 = v102;
    v74 = v103;
    sub_29D5B3B4C();
    (*(v101 + 8))(v71, v73);
    sub_29D535EC8(&qword_2A1A17048, sub_29D536208);
    v75 = v105;
    v76 = sub_29D5B3B1C();

    (*(v104 + 8))(v74, v75);
    return v76;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D534D1C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v56 = a3;
  v57 = a2;
  v60 = a4;
  v6 = sub_29D5B104C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RemovedCategoryFeedItemData();
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B1D6C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B134C();
  v17 = MEMORY[0x2A1C7C4A8](v16);
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = v46 - v19;
  result = MEMORY[0x2A1C7C4A8](v18);
  v25 = *a1;
  if (v25 == 2 || (v25 & 1) == 0)
  {
    v32 = MEMORY[0x29EDCA190];
  }

  else
  {
    v47 = v8;
    v48 = v46 - v22;
    v49 = v24;
    v50 = v23;
    v51 = result;
    (*(v13 + 104))(v15, *MEMORY[0x29EDC4068], v12);

    v26 = *MEMORY[0x29EDC4010];
    v27 = sub_29D5B1C2C();
    (*(*(v27 - 8) + 104))(v11, v26, v27);
    v52 = v13;
    v53 = v4;
    (*(v13 + 16))(&v11[*(v9 + 20)], v15, v12);
    v28 = sub_29D5B143C();
    v46[2] = sub_29D5B298C();

    sub_29D535EC8(&qword_2A17A49D8, type metadata accessor for RemovedCategoryFeedItemData);
    v29 = v53;
    v30 = sub_29D5B0BEC();
    if (v29)
    {

      sub_29D536350(v11, type metadata accessor for RemovedCategoryFeedItemData);
      return (*(v52 + 8))(v15, v12);
    }

    v53 = 0;
    v56 = v30;
    v46[1] = v31;
    type metadata accessor for NavigationFeedItemViewController();
    (*(v54 + 104))(v47, *MEMORY[0x29EDC36D0], v55);
    sub_29D5B143C();
    sub_29D5B110C();
    sub_29D5B124C();
    v33 = sub_29D5B159C();
    v35 = v34;
    v36 = sub_29D5B130C();
    sub_29D59AD10(&v59, v33, v35);

    v36(v58, 0);
    sub_29D536350(v11, type metadata accessor for RemovedCategoryFeedItemData);
    (*(v52 + 8))(v15, v12);
    v37 = v50;
    v38 = *(v50 + 32);
    v39 = v48;
    v40 = v20;
    v41 = v51;
    v38(v48, v40, v51);
    (*(v37 + 16))(v49, v39, v41);
    v32 = sub_29D515230(0, 1, 1, MEMORY[0x29EDCA190]);
    v43 = v32[2];
    v42 = v32[3];
    if (v43 >= v42 >> 1)
    {
      v32 = sub_29D515230(v42 > 1, v43 + 1, 1, v32);
    }

    v44 = v51;
    v45 = v50 + 8;
    (*(v50 + 8))(v48, v51);
    v32[2] = v43 + 1;
    result = (v38)(v32 + ((*(v45 + 72) + 32) & ~*(v45 + 72)) + *(v45 + 64) * v43, v49, v44);
  }

  *v60 = v32;
  return result;
}

uint64_t sub_29D5352D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D535C90(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v32 - v6;
  sub_29D4B3DC8(0);
  v9 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D5B371C();
  v12 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = v5;
    v22 = v21;
    v40 = v21;
    *v20 = 136446210;
    v39 = v15;
    v23 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v24 = HKSensitiveLogItem();
    v35 = a2;
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v25 = sub_29D5B3E9C();
    v27 = sub_29D501890(v25, v26, &v40);

    *(v20 + 4) = v27;
    a2 = v35;
    _os_log_impl(&dword_29D48C000, v17, v18, "Error making feed item for record, hiding from UI: %{public}s", v20, 0xCu);
    sub_29D48F668(v22);
    v28 = v22;
    v5 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);
    v29 = v20;
    v9 = v34;
    MEMORY[0x29ED5FB80](v29, -1, -1);
  }

  (*(v12 + 8))(v14, v36);
  v39 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v37 + 8))(v7, v5);
  sub_29D535EC8(&qword_2A1A161C0, sub_29D4B3DC8);
  v30 = sub_29D5B3B1C();
  result = (*(v38 + 8))(v11, v9);
  *a2 = v30;
  return result;
}

uint64_t sub_29D5356F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_29D5B36AC();
  v14 = v13;
  v15 = sub_29D5B370C();
  v16 = sub_29D5B427C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v6;
    v20 = v19;
    v40 = v19;
    *v18 = 136446466;
    v39 = sub_29D4A3988();
    sub_29D536464(0, &qword_2A17A49D0, sub_29D4A3988);
    v21 = sub_29D5B3E7C();
    v35 = v9;
    v23 = sub_29D501890(v21, v22, &v40);
    v38 = a2;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v39 = v13;
    v25 = v13;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v40);

    *(v18 + 14) = v29;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v30 = v20;
    v6 = v36;
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v18;
    v5 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v10 + 8))(v12, v35);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v39 = MEMORY[0x29EDCA190];
  sub_29D5360CC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D535EC8(&qword_2A1A165D8, sub_29D4B37EC);
  v32 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v32;
  return result;
}

uint64_t sub_29D535AC4()
{

  v1 = OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D536350(v0 + OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemovedCategoriesGenerator()
{
  result = qword_2A1A18330;
  if (!qword_2A1A18330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D535BE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D535C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D535CF4()
{
  if (!qword_2A1A16FE0)
  {
    sub_29D535D88();
    sub_29D535EC8(&qword_2A1A166D0, sub_29D535D88);
    v0 = sub_29D5B380C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16FE0);
    }
  }
}

void sub_29D535D88()
{
  if (!qword_2A1A166C8)
  {
    sub_29D5360CC(255, &qword_2A1A163B0, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
    sub_29D4B3AF4();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A166C8);
    }
  }
}

void sub_29D535E1C()
{
  if (!qword_2A1A16BE0)
  {
    sub_29D535CF4();
    sub_29D4B3AC0(255);
    sub_29D535EC8(&qword_2A1A16FE8, sub_29D535CF4);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16BE0);
    }
  }
}

uint64_t sub_29D535EC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D535F10()
{
  if (!qword_2A1A16D70)
  {
    sub_29D535E1C();
    sub_29D4B3A8C(255);
    sub_29D535EC8(&qword_2A1A16BE8, sub_29D535E1C);
    sub_29D535EC8(&qword_2A1A167C0, sub_29D4B3A8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16D70);
    }
  }
}

void sub_29D535FFC()
{
  if (!qword_2A1A16BA0)
  {
    sub_29D535F10();
    sub_29D5360CC(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D535EC8(&qword_2A1A16D78, sub_29D535F10);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16BA0);
    }
  }
}

void sub_29D5360CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D53611C()
{
  if (!qword_2A1A16CE0)
  {
    sub_29D535FFC();
    sub_29D4B2D8C();
    sub_29D535EC8(&qword_2A1A16BA8, sub_29D535FFC);
    sub_29D535EC8(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16CE0);
    }
  }
}

void sub_29D536208()
{
  if (!qword_2A1A17040)
  {
    sub_29D53611C();
    sub_29D535EC8(&qword_2A1A16CE8, sub_29D53611C);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17040);
    }
  }
}

unint64_t sub_29D53629C()
{
  result = qword_2A1A162E0;
  if (!qword_2A1A162E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A162E0);
  }

  return result;
}

uint64_t sub_29D5362E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D536350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5363B0@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_29D534D1C(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_29D536464(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D5364F8()
{
  sub_29D53692C(319, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D5365BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D5365BC()
{
  if (!qword_2A1A19698)
  {
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19698);
    }
  }
}

uint64_t sub_29D536654()
{
  result = sub_29D5B0E6C();
  if (v1 <= 0x3F)
  {
    result = sub_29D5B0EDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29D536730()
{
  sub_29D536844();
  if (v0 <= 0x3F)
  {
    sub_29D536890();
    if (v1 <= 0x3F)
    {
      sub_29D53692C(319, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        sub_29D53692C(319, &qword_2A1A16488, type metadata accessor for LabNameWithDate, MEMORY[0x29EDC9A40]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_29D536844()
{
  result = qword_2A1A19640;
  if (!qword_2A1A19640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A19640);
  }

  return result;
}

void sub_29D536890()
{
  if (!qword_2A1A164B0)
  {
    sub_29D5B1BCC();
    sub_29D537510(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
    v0 = sub_29D5B3D7C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A164B0);
    }
  }
}

void sub_29D53692C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D536990(void *a1)
{
  sub_29D53766C(0, &qword_2A17A49F8, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29D499EC0(a1, a1[3]);
  sub_29D537558();
  sub_29D5B4DCC();
  v9[15] = 0;
  sub_29D5B4BCC();
  if (!v1)
  {
    type metadata accessor for LabNameWithDate(0);
    v9[14] = 1;
    sub_29D5B0E6C();
    sub_29D537510(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4C0C();
    v9[13] = 2;
    sub_29D5B0EDC();
    sub_29D537510(&qword_2A1A193B8, MEMORY[0x29EDB9C08]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29D536BD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_29D5B0EDC();
  v23 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v26 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B0E6C();
  v27 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53766C(0, &qword_2A17A49E8, MEMORY[0x29EDC9E80]);
  v30 = v7;
  v28 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LabNameWithDate(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D499EC0(a1, a1[3]);
  sub_29D537558();
  v29 = v9;
  v13 = v31;
  sub_29D5B4DBC();
  if (v13)
  {
    return sub_29D48F668(a1);
  }

  v14 = v28;
  v34 = 0;
  *v12 = sub_29D5B4B2C();
  v12[1] = v15;
  v31 = v12;
  v22 = v15;
  v33 = 1;
  sub_29D537510(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  sub_29D5B4B6C();
  v21 = v10;
  v16 = *(v10 + 20);
  v17 = v31;
  (*(v27 + 32))(v31 + v16, v6, v4);
  v32 = 2;
  sub_29D537510(&qword_2A17A4030, MEMORY[0x29EDB9C08]);
  v18 = v25;
  sub_29D5B4B6C();
  (*(v14 + 8))(v29, v30);
  (*(v23 + 32))(v17 + *(v21 + 24), v26, v18);
  sub_29D5375AC(v17, v24);
  sub_29D48F668(a1);
  return sub_29D537610(v17);
}

uint64_t sub_29D53706C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D5377E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D537094(uint64_t a1)
{
  v2 = sub_29D537558();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D5370D0(uint64_t a1)
{
  v2 = sub_29D537558();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D53713C()
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  sub_29D5B0E6C();
  sub_29D537510(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
  sub_29D5B3D9C();
  sub_29D5B0EDC();
  sub_29D537510(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  sub_29D5B3D9C();
  return sub_29D5B4D9C();
}

uint64_t sub_29D537240()
{
  sub_29D5B3EFC();
  sub_29D5B0E6C();
  sub_29D537510(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
  sub_29D5B3D9C();
  sub_29D5B0EDC();
  sub_29D537510(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  return sub_29D5B3D9C();
}

uint64_t sub_29D537330()
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  sub_29D5B0E6C();
  sub_29D537510(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
  sub_29D5B3D9C();
  sub_29D5B0EDC();
  sub_29D537510(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  sub_29D5B3D9C();
  return sub_29D5B4D9C();
}

uint64_t sub_29D537430(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_29D5B4C7C() & 1) == 0 || (sub_29D5B0E3C() & 1) == 0)
  {
    return 0;
  }

  return sub_29D5B0EAC();
}

uint64_t sub_29D537510(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D537558()
{
  result = qword_2A17A49F0;
  if (!qword_2A17A49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A49F0);
  }

  return result;
}

uint64_t sub_29D5375AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabNameWithDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D537610(uint64_t a1)
{
  v2 = type metadata accessor for LabNameWithDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D53766C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D537558();
    v7 = a3(a1, &type metadata for LabNameWithDate.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D5376E4()
{
  result = qword_2A17A4A00;
  if (!qword_2A17A4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A00);
  }

  return result;
}

unint64_t sub_29D53773C()
{
  result = qword_2A17A4A08;
  if (!qword_2A17A4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A08);
  }

  return result;
}

unint64_t sub_29D537794()
{
  result = qword_2A17A4A10;
  if (!qword_2A17A4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A10);
  }

  return result;
}

uint64_t sub_29D5377E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E62616CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574614462616CLL && a2 == 0xE700000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449555562616CLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

BOOL sub_29D537900(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_29D5B1BCC();
    ++v2;
    sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
  }

  while ((sub_29D5B3E0C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_29D537A0C(uint64_t a1)
{
  v28 = a1;
  v27 = sub_29D5B104C();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  sub_29D53AF40();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53AFF4();
  v10 = *(v9 - 8);
  v30 = v9;
  v31 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v29 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_context;
  v13 = *(v12 + *(type metadata accessor for HealthRecordsGeneratorContext() + 20));
  *(swift_allocObject() + 16) = v13;
  sub_29D53AFD4(0);
  v26[2] = v14;
  v26[1] = MEMORY[0x29EDB8A00];
  v26[3] = sub_29D53A0B8(&qword_2A1A166C0, sub_29D53AFD4);
  v15 = v13;
  sub_29D5B3A9C();
  sub_29D53A0B8(&qword_2A1A16550, sub_29D53AF40);
  v16 = sub_29D5B3B1C();
  (*(v6 + 8))(v8, v5);
  v32 = v16;
  v17 = v27;
  (*(v2 + 16))(v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v27);
  v18 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v26[0];
  (*(v2 + 32))(v19 + v18, v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_29D53B148;
  *(v20 + 24) = v19;

  sub_29D5B396C();
  sub_29D4F31D4();
  sub_29D53A0B8(&qword_2A1A16750, sub_29D4F31D4);
  v21 = v29;
  sub_29D5B3C6C();

  sub_29D53A0B8(&qword_2A1A16A90, sub_29D53AFF4);
  v22 = v30;
  v23 = v21;
  v24 = sub_29D5B3B1C();
  (*(v31 + 8))(v23, v22);
  return v24;
}

uint64_t sub_29D537E60(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v42[1] = a3;
  v43 = a4;
  v51 = a2;
  sub_29D53B208(0);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = sub_29D5B104C();
  v8 = *(v42[0] - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v42[0]);
  sub_29D53B23C();
  v47 = v10;
  v45 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53B28C();
  v48 = v13;
  v46 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v44 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B371C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = v42 - v20;
  if (a1)
  {
    sub_29D5B36CC();
    v22 = sub_29D5B370C();
    v23 = sub_29D5B425C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v51 & 1;
      _os_log_impl(&dword_29D48C000, v22, v23, "CategoryDataProvider chrCategoriesPublisher() should show CHR section, supports CHR: %{BOOL}d", v24, 8u);
      MEMORY[0x29ED5FB80](v24, -1, -1);
    }

    (*(v16 + 8))(v21, v15);
    v52 = v51 & 1;
    sub_29D5B3A2C();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v42[0];
    (*(v8 + 16))(v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v42[0]);
    v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    (*(v8 + 32))(v28 + v27, v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    sub_29D5B396C();
    sub_29D4F31D4();
    sub_29D53A0B8(&qword_2A1A165C0, sub_29D53B23C);
    sub_29D53A0B8(&qword_2A1A16750, sub_29D4F31D4);
    v29 = v44;
    v30 = v47;
    sub_29D5B3C6C();

    (*(v45 + 8))(v12, v30);
    sub_29D53A0B8(&qword_2A1A16AA0, sub_29D53B28C);
    v31 = v48;
    v32 = sub_29D5B3B1C();
    (*(v46 + 8))(v29, v31);
  }

  else
  {
    sub_29D5B36CC();
    v33 = sub_29D5B370C();
    v34 = sub_29D5B425C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_29D48C000, v33, v34, "CategoryDataProvider chrCategoriesPublisher() should not show CHR section, returning just CDA category", v35, 2u);
      MEMORY[0x29ED5FB80](v35, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
    v36 = sub_29D5B1BCC();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_29D5B62A0;
    (*(v37 + 104))(v39 + v38, *MEMORY[0x29EDC3F98], v36);
    v53 = v39;
    sub_29D53A1AC(0);
    sub_29D5B3A2C();
    sub_29D53A0B8(&qword_2A17A4A18, sub_29D53B208);
    v40 = v50;
    v32 = sub_29D5B3B1C();
    (*(v49 + 8))(v7, v40);
  }

  return v32;
}

uint64_t sub_29D5385AC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D5B104C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53B208(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v5 + 104))(v7, *MEMORY[0x29EDC3770], v4);
    sub_29D53A0B8(&qword_2A1A173A0, MEMORY[0x29EDC3798]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v19 == v18[1] && v20 == v18[2])
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v16 = sub_29D5B4C7C();
      (*(v5 + 8))(v7, v4);

      if ((v16 & 1) == 0)
      {
        v17 = sub_29D53908C(v13);
        goto LABEL_9;
      }
    }

    v17 = sub_29D5388D0(v13);
LABEL_9:
    v14 = v17;

    goto LABEL_10;
  }

  v19 = MEMORY[0x29EDCA190];
  sub_29D53A1AC(0);
  sub_29D5B3A2C();
  sub_29D53A0B8(&qword_2A17A4A18, sub_29D53B208);
  v14 = sub_29D5B3B1C();
  result = (*(v10 + 8))(v12, v9);
LABEL_10:
  *a2 = v14;
  return result;
}

uint64_t sub_29D53890C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v73 = a4;
  v8 = sub_29D5B1BCC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v79 = &v68 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v75 = &v68 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v68 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x29EDCA190];
  }

  if (!a1)
  {
    if (a2 >> 62)
    {
      if (sub_29D5B485C())
      {
        goto LABEL_13;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      sub_29D5B1B7C();
      sub_29D5B1B2C();
      sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
      v32 = v8;
      v33 = sub_29D5B405C();

      v34 = v73;
      v35 = sub_29D53A1F4(v33, v73 & 1, 0, 0, 0);

      v36 = sub_29D53AAE8(a2, v34 & 1);
      v83 = v35;
      sub_29D54FB00(v36);
      sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
      v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_29D5B62A0;
      (*(v9 + 104))(v38 + v37, *MEMORY[0x29EDC3F88], v32);
      sub_29D54FB00(v38);

      return v83;
    }

    return MEMORY[0x29EDCA190];
  }

  v68 = v12;
  v71 = v9;
  v72 = a2;
  v80 = a1;
  v81 = v8;
  v70 = Strong;
  v20 = *(a5 + 16);
  v21 = 0;
  if (v20)
  {
    v22 = *(v9 + 16);
    v23 = a5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v24 = *(v9 + 72);
    v25 = (v9 + 8);
    v26 = v81;
    do
    {
      v22(v18, v23, v26);
      v27 = sub_29D5B3D4C();
      (*v25)(v18, v26);
      v28 = __OFADD__(v21, v27 & 1);
      v21 += v27 & 1;
      if (v28)
      {
        __break(1u);
        goto LABEL_33;
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  if (v72 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v29 = v81;
    v30 = v75;
    v31 = (v73 & 1) != 0 ? sub_29D5B1B2C() : sub_29D5B1B7C();
    v40 = v31;
    v41 = v71;
    v78 = *(v31 + 16);
    if (!v78)
    {
      break;
    }

    v42 = 0;
    v76 = (v71 + 32);
    v77 = v71 + 16;
    v74 = (v71 + 8);
    v43 = MEMORY[0x29EDCA190];
    while (v42 < *(v40 + 16))
    {
      v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v45 = *(v41 + 72);
      (*(v41 + 16))(v30, v40 + v44 + v45 * v42, v29);
      if (sub_29D5B3D4C())
      {
        (*v74)(v30, v29);
      }

      else
      {
        v46 = v30;
        v47 = *v76;
        (*v76)(v79, v46, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D4C6E30(0, *(v43 + 2) + 1, 1);
          v43 = v82;
        }

        v50 = *(v43 + 2);
        v49 = *(v43 + 3);
        if (v50 >= v49 >> 1)
        {
          sub_29D4C6E30(v49 > 1, v50 + 1, 1);
          v43 = v82;
        }

        *(v43 + 2) = v50 + 1;
        v51 = &v43[v44 + v50 * v45];
        v29 = v81;
        v47(v51, v79, v81);
        v30 = v75;
      }

      if (v78 == ++v42)
      {
        goto LABEL_26;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_26:

  sub_29D5B1B7C();
  sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
  v52 = sub_29D5B405C();

  v53 = v73;
  v54 = sub_29D53A1F4(v52, v73 & 1, v21, 0, 0);

  if (i || (v53 & 1) == 0)
  {
    v66 = sub_29D53AAE8(v72, v53 & 1);
    v82 = v54;
    sub_29D54FB00(v66);

    return v82;
  }

  else
  {
    v55 = *MEMORY[0x29EDC3F98];
    v56 = *(v41 + 104);
    v57 = v68;
    v58 = v81;
    v56(v68, v55, v81);
    v59 = sub_29D537900(v57, v54);

    v61 = *(v41 + 8);
    v60 = v41 + 8;
    v61(v57, v58);
    sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
    v62 = *(v60 + 64);
    v63 = (*(v60 + 72) + 32) & ~*(v60 + 72);
    if (v59)
    {
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_29D5B5E20;
      v65 = v64 + v63;
      v56(v65, *MEMORY[0x29EDC3FA8], v58);
      v56((v65 + v62), v55, v58);

      return v64;
    }

    else
    {
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_29D5B62A0;
      v56((v67 + v63), *MEMORY[0x29EDC3FA8], v58);

      return v67;
    }
  }
}

uint64_t sub_29D5390C8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v28 = a3;
  v29 = a4;
  v26 = a2;
  v27 = a1;
  sub_29D539D9C();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53A100();
  v10 = *(v9 - 8);
  v33 = v9;
  v34 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D539F20();
  v14 = v13;
  v30 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthRecordsGeneratorContext();
  v37 = sub_29D4FD49C();
  v36 = MEMORY[0x29EDCA190];
  sub_29D539FB4();
  sub_29D53A0B8(&qword_2A1A16730, sub_29D539FB4);
  sub_29D5B3B4C();

  sub_29D5B1B7C();
  v17 = sub_29D5B1B5C();
  v18 = sub_29D5B242C();

  v37 = v18;
  sub_29D539E88();
  sub_29D53A0B8(&qword_2A1A167F0, sub_29D539E88);
  sub_29D53A0B8(&qword_2A1A170B8, sub_29D539F20);
  sub_29D5B3B6C();

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v27;
  *(v20 + 32) = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  *(v21 + 24) = v20;
  sub_29D53A1AC(0);
  sub_29D53A0B8(&qword_2A1A172D0, sub_29D539D9C);
  v22 = v31;
  sub_29D5B3B7C();

  (*(v32 + 8))(v8, v22);
  sub_29D53A0B8(&qword_2A1A16ED0, sub_29D53A100);
  v23 = v33;
  v24 = sub_29D5B3B1C();
  (*(v34 + 8))(v12, v23);
  (*(v30 + 8))(v16, v14);
  return v24;
}

uint64_t sub_29D539554(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = sub_29D5B1BCC();
  v77 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v76 = &v66 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v73 = &v66 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v66 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x29EDCA190];
  }

  if (!a1)
  {
    if (a2 >> 62)
    {
      if (sub_29D5B485C())
      {
        goto LABEL_13;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      sub_29D5B1B7C();
      sub_29D5B1B2C();
      sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
      v32 = sub_29D5B405C();

      v33 = sub_29D53A1F4(v32, a4 & 1, 0, 0, 1);

      v34 = sub_29D53AAE8(a2, a4 & 1);
      v80 = v33;
      sub_29D54FB00(v34);
LABEL_31:

      return v80;
    }

    return MEMORY[0x29EDCA190];
  }

  v67 = v12;
  v69 = a4;
  v70 = a2;
  v71 = Strong;
  v78 = a1;
  v79 = v9;
  v20 = *(a5 + 16);
  v21 = 0;
  if (v20)
  {
    v22 = *(v77 + 16);
    v23 = a5 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v24 = *(v77 + 72);
    v25 = (v77 + 8);
    v26 = v79;
    do
    {
      v22(v18, v23, v26);
      v27 = sub_29D5B3D4C();
      (*v25)(v18, v26);
      v28 = __OFADD__(v21, v27 & 1);
      v21 += v27 & 1;
      if (v28)
      {
        __break(1u);
        goto LABEL_35;
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  if (v70 >> 62)
  {
    goto LABEL_36;
  }

  v29 = v79;
  v30 = v73;
  v68 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v68)
  {
    goto LABEL_9;
  }

LABEL_10:
  for (i = sub_29D5B1B7C(); ; i = sub_29D5B1B2C())
  {
    v35 = i;
    v75 = *(i + 16);
    if (!v75)
    {
      break;
    }

    v36 = 0;
    v74 = v77 + 16;
    v37 = (v77 + 32);
    v72 = (v77 + 8);
    v38 = MEMORY[0x29EDCA190];
    while (v36 < *(v35 + 16))
    {
      v39 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v40 = *(v77 + 72);
      (*(v77 + 16))(v30, v35 + v39 + v40 * v36, v29);
      if (sub_29D5B3D4C())
      {
        (*v72)(v30, v29);
      }

      else
      {
        v41 = v30;
        v42 = *v37;
        (*v37)(v76, v41, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D4C6E30(0, *(v38 + 2) + 1, 1);
          v38 = v80;
        }

        v45 = *(v38 + 2);
        v44 = *(v38 + 3);
        if (v45 >= v44 >> 1)
        {
          sub_29D4C6E30(v44 > 1, v45 + 1, 1);
          v38 = v80;
        }

        *(v38 + 2) = v45 + 1;
        v46 = &v38[v39 + v45 * v40];
        v29 = v79;
        v42(v46, v76, v79);
        v30 = v73;
      }

      if (v75 == ++v36)
      {
        goto LABEL_26;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    v65 = sub_29D5B485C();
    v29 = v79;
    v30 = v73;
    v68 = v65;
    if (!v65)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (*(v71 + OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_collapseCategories))
    {
      goto LABEL_10;
    }
  }

LABEL_26:

  sub_29D5B1B7C();
  sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
  v47 = sub_29D5B405C();

  v48 = v69;
  v49 = sub_29D53A1F4(v47, v69 & 1, v21, 0, 1);

  if (v68 || (v48 & 1) == 0)
  {
    v63 = sub_29D53AAE8(v70, v48 & 1);
    v80 = v49;
    sub_29D54FB00(v63);
    goto LABEL_31;
  }

  v50 = *MEMORY[0x29EDC3F98];
  v51 = v77;
  v52 = *(v77 + 104);
  v53 = v67;
  v54 = v79;
  v52(v67, v50, v79);
  v55 = sub_29D537900(v53, v49);

  v56 = *(v51 + 8);
  v51 += 8;
  v56(v53, v54);
  sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
  v57 = *(v51 + 64);
  v58 = (*(v51 + 72) + 32) & ~*(v51 + 72);
  if (v55)
  {
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_29D5B5E20;
    v60 = v59 + v58;
    v52(v60, *MEMORY[0x29EDC3FA8], v54);
    v61 = v60 + v57;
    v62 = v50;
  }

  else
  {
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_29D5B62A0;
    v62 = *MEMORY[0x29EDC3FA8];
    v61 = v59 + v58;
  }

  v52(v61, v62, v54);

  return v59;
}

uint64_t sub_29D539C2C()
{
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CategoryDataProvider()
{
  result = qword_2A1A18AF8;
  if (!qword_2A1A18AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D539CF4()
{
  result = type metadata accessor for HealthRecordsGeneratorContext();
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

void sub_29D539D9C()
{
  if (!qword_2A1A172C8)
  {
    sub_29D539E88();
    sub_29D539F20();
    sub_29D53A0B8(&qword_2A1A167F0, sub_29D539E88);
    sub_29D53A0B8(&qword_2A1A170B8, sub_29D539F20);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A172C8);
    }
  }
}

void sub_29D539E88()
{
  if (!qword_2A1A167E8)
  {
    sub_29D53A054(255, &qword_2A1A164A8, sub_29D536890, MEMORY[0x29EDC9C68]);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A167E8);
    }
  }
}

void sub_29D539F20()
{
  if (!qword_2A1A170B0)
  {
    sub_29D539FB4();
    sub_29D53A0B8(&qword_2A1A16730, sub_29D539FB4);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A170B0);
    }
  }
}

void sub_29D539FB4()
{
  if (!qword_2A1A16728)
  {
    sub_29D53A054(255, &qword_2A1A16420, sub_29D536844, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16728);
    }
  }
}

void sub_29D53A054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D53A0B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D53A100()
{
  if (!qword_2A1A16EC8)
  {
    sub_29D539D9C();
    sub_29D53A1AC(255);
    sub_29D53A0B8(&qword_2A1A172D0, sub_29D539D9C);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16EC8);
    }
  }
}

char *sub_29D53A1F4(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v71 = a5;
  v80 = a4;
  v76 = a3;
  v78 = a2;
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  v86 = v6 - 8;
  v89 = v7;
  v8 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v81 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v75 = &v65 - v12;
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v73 = &v65 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v68 = &v65 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v65 - v17;
  v87 = *MEMORY[0x29EDC3F98];
  v88 = v8;
  v19 = v8 + 104;
  v20 = *(v8 + 104);
  v20(&v65 - v17);
  v90 = v20;
  v72 = sub_29D537900(v18, a1);
  v22 = v8 + 8;
  v21 = *(v8 + 8);
  v23 = v6;
  v21(v18, v6);
  v83 = *MEMORY[0x29EDC4080];
  v24 = v83;
  v25 = sub_29D5B1D6C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v84 = v26 + 104;
  v85 = v27;
  v27(v18, v24, v25);
  v28 = *MEMORY[0x29EDC3F80];
  v29 = v23;
  (v20)(v18, v28, v23);
  v74 = sub_29D537900(v18, a1);
  v70 = v18;
  v69 = v22;
  v79 = v21;
  v21(v18, v23);

  v82 = sub_29D5963B0(v30);

  sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
  v31 = *(v89 + 72);
  v32 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29D5B5E20;
  v34 = v90;
  (v90)(v33 + v32, v87, v23);
  v85((v33 + v32 + v31), v83, v25);
  v86 = v31;
  v77 = v28;
  v89 = v19;
  v34(v33 + v32 + v31, v28, v23);
  v35 = sub_29D56E18C(v33, v82);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = sub_29D515C24(*(v35 + 16), 0);
    v38 = sub_29D5A2C00(&v91, &v37[v32], v36, v35);
    sub_29D4B30C0();
    if (v38 == v36)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v37 = MEMORY[0x29EDCA190];
LABEL_5:
  v39 = v79;
  if (v78)
  {

    v40 = sub_29D5B1B5C();
    v41 = v40;
    v67 = v32;
    v66 = v25;
    if (v71)
    {
      v42 = *(v40 + 16);
      v43 = *(v37 + 2);

      if (v42 - v43 >= 3)
      {

        v44 = v68;
        (v90)(v68, *MEMORY[0x29EDC3FA0], v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_29D515898(0, *(v37 + 2) + 1, 1, v37);
        }

        v45 = v74;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          v37 = sub_29D515898(v46 > 1, v47 + 1, 1, v37);
        }

        *(v37 + 2) = v47 + 1;
        (*(v88 + 32))(&v37[v32 + v47 * v86], v44, v29);
        v41 = v37;
        v48 = v85;
        if (!v45)
        {
LABEL_13:
          v49 = v67;
          v50 = v88;
          goto LABEL_24;
        }

LABEL_19:
        v55 = v73;
        v48(v73, v83, v66);
        (v90)(v55, v77, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_29D515898(0, *(v41 + 2) + 1, 1, v41);
        }

        v57 = *(v41 + 2);
        v56 = *(v41 + 3);
        v50 = v88;
        v58 = v67;
        if (v57 >= v56 >> 1)
        {
          v41 = sub_29D515898(v56 > 1, v57 + 1, 1, v41);
        }

        *(v41 + 2) = v57 + 1;
        v49 = v58;
        (*(v50 + 32))(&v41[v58 + v57 * v86], v73, v29);
LABEL_24:
        v37 = v41;
        if (!v72)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
    }

    v51 = *MEMORY[0x29EDC4090];
    v52 = v70;
    v48 = v85;
    v85(v70, v51, v25);
    (v90)(v52, v77, v29);
    v53 = sub_29D537900(v52, v37);

    v39(v52, v29);
    if (!v53)
    {
      v48(v52, v51, v25);
      (v90)(v52, v77, v29);
      sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
      v54 = sub_29D5B406C();

      v39(v52, v29);
      v41 = v54;
    }

    if (!v74)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v49 = v32;
  v50 = v88;
LABEL_25:
  v59 = v75;
  (v90)(v75, v87, v29);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_29D515898(0, *(v37 + 2) + 1, 1, v37);
  }

  v61 = *(v37 + 2);
  v60 = *(v37 + 3);
  if (v61 >= v60 >> 1)
  {
    v37 = sub_29D515898(v60 > 1, v61 + 1, 1, v37);
  }

  *(v37 + 2) = v61 + 1;
  (*(v50 + 32))(&v37[v49 + v61 * v86], v59, v29);
  v41 = v37;
LABEL_30:
  if ((v80 & 1) == 0 && v76 >= 2)
  {
    (v90)(v81, *MEMORY[0x29EDC3F70], v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_29D515898(0, *(v41 + 2) + 1, 1, v41);
    }

    v63 = *(v41 + 2);
    v62 = *(v41 + 3);
    if (v63 >= v62 >> 1)
    {
      v41 = sub_29D515898(v62 > 1, v63 + 1, 1, v41);
    }

    *(v41 + 2) = v63 + 1;
    (*(v50 + 32))(&v41[v49 + v63 * v86], v81, v29);
  }

  return v41;
}

void *sub_29D53AAE8(unint64_t a1, int a2)
{
  v5 = sub_29D5B1BCC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v34 = &v31[-v11];
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v31[-v13];
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v31[-v15];
  if (a1 >> 62)
  {
    v17 = sub_29D5B485C();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x29EDCA190];
  if (v17)
  {
    v35 = MEMORY[0x29EDCA190];
    v18 = &v35;
    sub_29D4C6E30(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v32 = a2;
    v33 = v14;
    v18 = v35;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v17; ++i)
      {
        MEMORY[0x29ED5EF30](i, a1);
        sub_29D5B1BAC();
        swift_unknownObjectRelease();
        v35 = v18;
        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_29D4C6E30(v21 > 1, v22 + 1, 1);
          v18 = v35;
        }

        v18[2] = v22 + 1;
        (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v16, v5);
      }
    }

    else
    {
      v23 = (a1 + 32);
      do
      {
        v24 = *v23;
        sub_29D5B1BAC();

        v35 = v18;
        v26 = v18[2];
        v25 = v18[3];
        if (v26 >= v25 >> 1)
        {
          sub_29D4C6E30(v25 > 1, v26 + 1, 1);
          v18 = v35;
        }

        v18[2] = v26 + 1;
        (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v9, v5);
        ++v23;
        --v17;
      }

      while (v17);
    }

    v14 = v33;
    LOBYTE(a2) = v32;
  }

  if (a2)
  {
    v27 = v18[2];
    v28 = *(v6 + 104);
    if (v27)
    {
      v14 = v34;
      v28(v34, *MEMORY[0x29EDC3F90], v5);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }

      v29 = v27 + 1;
    }

    else
    {
      v28(v14, *MEMORY[0x29EDC3F78], v5);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }

      v29 = 1;
    }

    v18 = sub_29D515898(0, v29, 1, v18);
LABEL_21:
    v17 = v18[2];
    v19 = v18[3];
    v2 = v17 + 1;
    if (v17 < v19 >> 1)
    {
LABEL_22:
      v18[2] = v2;
      (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v14, v5);
      return v18;
    }

LABEL_26:
    v18 = sub_29D515898(v19 > 1, v2, 1, v18);
    goto LABEL_22;
  }

  return v18;
}

uint64_t sub_29D53AEB8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D53AF08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D53AF40()
{
  if (!qword_2A1A16548)
  {
    sub_29D53AFD4(255);
    sub_29D53A0B8(&qword_2A1A166C0, sub_29D53AFD4);
    v0 = sub_29D5B3AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16548);
    }
  }
}

void sub_29D53AFF4()
{
  if (!qword_2A1A16A88)
  {
    sub_29D4F31D4();
    sub_29D53AFD4(255);
    sub_29D53A0B8(&qword_2A1A16750, sub_29D4F31D4);
    sub_29D53A0B8(&qword_2A1A166C0, sub_29D53AFD4);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A88);
    }
  }
}

void sub_29D53B0DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B398C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D53B148(char a1, int a2)
{
  v5 = *(sub_29D5B104C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_29D537E60(a1, a2, v6, v7);
}

uint64_t sub_29D53B1CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D53B23C()
{
  if (!qword_2A1A165B8)
  {
    v0 = sub_29D5B3A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A165B8);
    }
  }
}

void sub_29D53B28C()
{
  if (!qword_2A1A16A98)
  {
    sub_29D4F31D4();
    sub_29D53B23C();
    sub_29D53A0B8(&qword_2A1A16750, sub_29D4F31D4);
    sub_29D53A0B8(&qword_2A1A165C0, sub_29D53B23C);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A98);
    }
  }
}

uint64_t sub_29D53B378()
{
  v1 = sub_29D5B104C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D53B43C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D5B104C();

  return sub_29D5385AC(a1, a2);
}

void *sub_29D53B4C4(uint64_t a1)
{
  v2 = v1;
  v19 = *v1;
  v18 = sub_29D5B13CC();
  v4 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B13EC();
  v7 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_context);
  v16 = sub_29D5B143C();
  sub_29D53F524(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC36E8], v10);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v18);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_domain, v9, v17);
  v14 = sub_29D53B7C4(a1);
  sub_29D53FE18(a1, type metadata accessor for HealthRecordsGeneratorContext);
  *(v2 + OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_publisher) = v14;
  return v2;
}

uint64_t sub_29D53B7C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HealthRecordsGeneratorContext();
  v87 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v85 = v5;
  v92 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F524(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v67 - v7;
  v77 = sub_29D5B13CC();
  v75 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D5B13EC();
  v73 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F588();
  v70 = v11;
  v69 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F6E8();
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v78 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F87C();
  v82 = *(v16 - 8);
  v83 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v81 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F958();
  v90 = v18;
  v88 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v84 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53FA28();
  v91 = v20;
  v89 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v86 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D5B371C();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36EC();
  v26 = sub_29D5B370C();
  v27 = sub_29D5B429C();
  v28 = os_log_type_enabled(v26, v27);
  v93 = a1;
  v72 = v2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v67 = v4;
    v30 = v29;
    v31 = swift_slowAlloc();
    v68 = v8;
    v32 = v31;
    v95 = v31;
    *v30 = 136315138;
    v33 = sub_29D5B4DFC();
    v35 = sub_29D501890(v33, v34, &v95);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_29D48C000, v26, v27, "%s Account sharing generator - make publisher", v30, 0xCu);
    sub_29D48F668(v32);
    v36 = v32;
    v8 = v68;
    a1 = v93;
    MEMORY[0x29ED5FB80](v36, -1, -1);
    v37 = v30;
    v4 = v67;
    MEMORY[0x29ED5FB80](v37, -1, -1);
  }

  (*(v23 + 8))(v25, v22);
  v38 = *(a1 + *(v4 + 20));
  *(swift_allocObject() + 16) = v38;
  v39 = MEMORY[0x29EDB8AD0];
  sub_29D53F7D4(0, &qword_2A1A165A8, MEMORY[0x29EDB8AD0]);
  sub_29D53F6A4(&qword_2A1A165B0, &qword_2A1A165A8, v39);
  v40 = v38;
  sub_29D5B3A9C();
  sub_29D53FD68(&qword_2A1A16530, sub_29D53F588);
  v41 = v70;
  v42 = sub_29D5B3B1C();
  (*(v69 + 8))(v13, v41);
  v95 = v42;
  sub_29D5B143C();
  sub_29D53F524(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v43 = sub_29D5B104C();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_29D5B62A0;
  (*(v44 + 104))(v46 + v45, *MEMORY[0x29EDC36E8], v43);
  (*(v75 + 104))(v74, *MEMORY[0x29EDC3898], v77);
  v47 = v71;
  sub_29D5B13DC();
  v48 = sub_29D5B146C();
  (*(v73 + 8))(v47, v76);
  v94 = v48;
  v49 = sub_29D5B43BC();
  (*(*(v49 - 8) + 56))(v8, 1, 1, v49);
  v50 = MEMORY[0x29EDB89F8];
  sub_29D53F7D4(0, &qword_2A1A16738, MEMORY[0x29EDB89F8]);
  sub_29D48F51C(0, &qword_2A1A1A420);
  v77 = MEMORY[0x29EDB8A00];
  sub_29D53F6A4(&qword_2A1A16740, &qword_2A1A16738, v50);
  sub_29D5127AC();
  v51 = v78;
  sub_29D5B3C1C();
  sub_29D53FCF8(v8, &qword_2A1A19628, MEMORY[0x29EDCA298]);

  v52 = v92;
  sub_29D499E5C(a1, v92);
  v53 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v54 = (v85 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v87 = type metadata accessor for HealthRecordsGeneratorContext;
  sub_29D53FDB0(v52, v55 + v53, type metadata accessor for HealthRecordsGeneratorContext);
  v56 = v72;
  *(v55 + v54) = v72;
  *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v56;
  sub_29D53F524(0, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
  sub_29D53FD68(&qword_2A1A16890, sub_29D53F6E8);
  v57 = v80;
  v58 = v81;
  sub_29D5B3B7C();

  (*(v79 + 8))(v51, v57);
  sub_29D499E5C(v93, v52);
  v59 = swift_allocObject();
  sub_29D53FDB0(v52, v59 + v53, v87);
  *(v59 + v54) = v56;
  sub_29D4CFFEC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v60 = v83;
  v61 = v84;
  sub_29D5B383C();

  (*(v82 + 8))(v58, v60);
  *(swift_allocObject() + 16) = v56;
  sub_29D4B2D8C();
  sub_29D53FD68(&qword_2A1A16B40, sub_29D53F958);
  sub_29D53FD68(&qword_2A1A16780, sub_29D4B2D8C);
  v62 = v86;
  v63 = v90;
  sub_29D5B3B8C();

  (*(v88 + 8))(v61, v63);
  sub_29D53FD68(&qword_2A1A16D28, sub_29D53FA28);
  v64 = v91;
  v65 = sub_29D5B3B1C();
  (*(v89 + 8))(v62, v64);
  return v65;
}