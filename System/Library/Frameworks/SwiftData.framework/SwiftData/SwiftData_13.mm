uint64_t Schema.Entity.__allocating_init(_:properties:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  Schema.Entity.init(_:properties:)(a1, a2, a3);
  return v6;
}

uint64_t Schema.Entity.init(_:properties:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  swift_weakInit();
  *(v3 + 176) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_109;
  }

LABEL_2:

  v7 = MEMORY[0x1E69E7CD0];
LABEL_3:
  *(v3 + 32) = v7;
  *(v3 + 64) = a3;
  v8 = MEMORY[0x1E69E7CD0];
  v123 = MEMORY[0x1E69E7CD0];
  v124 = MEMORY[0x1E69E7CD0];
  v9 = *(a3 + 16);
  v116 = v3;
  if (!v9)
  {

    *(v3 + 80) = v8;
    *(v3 + 88) = v8;
    *(v3 + 160) = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();

    v25 = MEMORY[0x1E69E7CC8];
    v110 = v8;
LABEL_39:

    *(v3 + 112) = v25;
    if ((v8 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1975220AC();
      type metadata accessor for Schema.Attribute();
      sub_1973FA628(&qword_1ED7CA320, 255, type metadata accessor for Schema.Attribute);
      sub_197521C1C();
      v46 = *(&v125 + 1);
      v8 = v125;
      v3 = v126;
      v47 = v127;
      v48 = v128;
    }

    else
    {
      v49 = -1 << *(v8 + 32);
      v46 = v8 + 56;
      v3 = ~v49;
      v50 = -v49;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v48 = v51 & *(v8 + 56);

      v47 = 0;
    }

    v109 = v3;
    v52 = (v3 + 64) >> 6;
    v53 = MEMORY[0x1E69E7CC8];
    v119 = v8;
    v112 = v46;
    v114 = v52;
    while (1)
    {
      if (v8 < 0)
      {
        v60 = sub_19752212C();
        if (!v60)
        {
          goto LABEL_69;
        }

        v122 = v60;
        type metadata accessor for Schema.Attribute();
        swift_dynamicCast();
        a3 = v129[0];
        v58 = v47;
        v59 = v48;
        if (!v129[0])
        {
          goto LABEL_69;
        }
      }

      else
      {
        v56 = v47;
        v57 = v48;
        v58 = v47;
        if (!v48)
        {
          while (1)
          {
            v58 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              __break(1u);
              goto LABEL_100;
            }

            if (v58 >= v52)
            {
              break;
            }

            v57 = *(v46 + 8 * v58);
            ++v56;
            if (v57)
            {
              goto LABEL_53;
            }
          }

          v48 = 0;
LABEL_69:
          sub_197416DA8(v8, v46, v109, v47, v48);
          v75 = v116;
          v116[12] = v53;
          v76 = v110;
          if ((v110 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_1975220AC();
            type metadata accessor for Schema.Relationship();
            sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship);
            sub_197521C1C();
            v76 = v129[0];
            v77 = v129[1];
            v3 = v129[2];
            v78 = v130;
            v79 = v131;
          }

          else
          {
            v80 = -1 << *(v110 + 32);
            v77 = v110 + 56;
            v3 = ~v80;
            v81 = -v80;
            if (v81 < 64)
            {
              v82 = ~(-1 << v81);
            }

            else
            {
              v82 = -1;
            }

            v79 = v82 & *(v110 + 56);

            v78 = 0;
          }

          v113 = v3;
          v83 = (v3 + 64) >> 6;
          v84 = MEMORY[0x1E69E7CC8];
          v115 = v83;
          while (2)
          {
            if (v76 < 0)
            {
              if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), a3 = v121, v89 = v78, v90 = v79, !v121))
              {
LABEL_98:
                sub_197416DA8(v76, v77, v113, v78, v79);

                v75[13] = v84;
                v107 = MEMORY[0x1E69E7CC0];
                v75[9] = MEMORY[0x1E69E7CC0];
                v75[15] = sub_1973FAE70(v107);
                v75[21] = v107;
                return v75;
              }
            }

            else
            {
              v87 = v78;
              v88 = v79;
              v89 = v78;
              if (!v79)
              {
                while (1)
                {
                  v89 = v87 + 1;
                  if (__OFADD__(v87, 1))
                  {
                    break;
                  }

                  if (v89 >= v83)
                  {
                    v79 = 0;
                    goto LABEL_98;
                  }

                  v88 = *(v77 + 8 * v89);
                  ++v87;
                  if (v88)
                  {
                    goto LABEL_83;
                  }
                }

LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

LABEL_83:
              v90 = (v88 - 1) & v88;
              a3 = *(*(v76 + 48) + ((v89 << 9) | (8 * __clz(__rbit64(v88)))));

              if (!a3)
              {
                goto LABEL_98;
              }
            }

            v120 = v90;
            v91 = v77;
            v92 = v76;
            swift_beginAccess();
            v94 = *(a3 + 16);
            v93 = *(a3 + 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v121 = v84;
            v3 = v84;
            v96 = sub_1973F4028(v94, v93);
            v98 = v84[2];
            v99 = (v97 & 1) == 0;
            v38 = __OFADD__(v98, v99);
            v100 = v98 + v99;
            if (v38)
            {
              goto LABEL_106;
            }

            v101 = v97;
            if (v84[3] >= v100)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_92;
              }

              v3 = &v121;
              v106 = v96;
              sub_197479A88();
              v96 = v106;
              if (v101)
              {
                goto LABEL_76;
              }

LABEL_93:
              v84 = v121;
              v121[(v96 >> 6) + 8] |= 1 << v96;
              v103 = (v84[6] + 16 * v96);
              *v103 = v94;
              v103[1] = v93;
              *(v84[7] + 8 * v96) = a3;

              v104 = v84[2];
              v38 = __OFADD__(v104, 1);
              v105 = v104 + 1;
              if (v38)
              {
                goto LABEL_108;
              }

              v84[2] = v105;
            }

            else
            {
              sub_197478114(v100, isUniquelyReferenced_nonNull_native);
              v3 = v121;
              v96 = sub_1973F4028(v94, v93);
              if ((v101 & 1) != (v102 & 1))
              {
                goto LABEL_111;
              }

LABEL_92:
              if ((v101 & 1) == 0)
              {
                goto LABEL_93;
              }

LABEL_76:
              v3 = v96;

              v84 = v121;
              v85 = v121[7];
              v86 = *(v85 + 8 * v3);
              *(v85 + 8 * v3) = a3;
            }

            v78 = v89;
            v79 = v120;
            v75 = v116;
            v76 = v92;
            v77 = v91;
            v83 = v115;
            continue;
          }
        }

LABEL_53:
        v59 = (v57 - 1) & v57;
        a3 = *(*(v8 + 48) + ((v58 << 9) | (8 * __clz(__rbit64(v57)))));

        if (!a3)
        {
          goto LABEL_69;
        }
      }

      swift_beginAccess();
      v62 = *(a3 + 16);
      v61 = *(a3 + 24);

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v129[0] = v53;
      v3 = v53;
      v65 = sub_1973F4028(v62, v61);
      v66 = v53[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_105;
      }

      v69 = v64;
      if (v53[3] >= v68)
      {
        if (v63)
        {
          if (v64)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v3 = v129;
          sub_197479A9C();
          if (v69)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        sub_197478128(v68, v63);
        v3 = v129[0];
        v70 = sub_1973F4028(v62, v61);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_111;
        }

        v65 = v70;
        if (v69)
        {
LABEL_46:

          v53 = v129[0];
          v54 = *(v129[0] + 56);
          v55 = *(v54 + 8 * v65);
          *(v54 + 8 * v65) = a3;

          goto LABEL_47;
        }
      }

      v53 = v129[0];
      *(v129[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v72 = (v53[6] + 16 * v65);
      *v72 = v62;
      v72[1] = v61;
      *(v53[7] + 8 * v65) = a3;

      v73 = v53[2];
      v38 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v38)
      {
        goto LABEL_107;
      }

      v53[2] = v74;
LABEL_47:
      v47 = v58;
      v48 = v59;
      v46 = v112;
      v52 = v114;
      v8 = v119;
    }
  }

  v10 = a3 + 32;

  v11 = 0;
  v117 = MEMORY[0x1E69E7CC0];
  v118 = a3;
  while (1)
  {
    if (v11 >= *(a3 + 16))
    {
      goto LABEL_101;
    }

    sub_1973FA430(v10 + 40 * v11, v129);
    sub_1973FA430(v129, &v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
    type metadata accessor for Schema.Attribute();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v12 = v122;

    v3 = &v124;
    sub_197417B28(&v125, v12);

    swift_beginAccess();
    v13 = *(v12 + 48);
    v14 = (v13 + 64);
    v15 = *(v13 + 16) + 1;
    while (--v15)
    {
      v16 = *v14;
      v14 += 40;
      if (v16)
      {
        goto LABEL_18;
      }
    }

LABEL_5:

    __swift_destroy_boxed_opaque_existential_1Tm_5(v129);
LABEL_6:
    if (++v11 == v9)
    {

      v3 = v123;
      v24 = v124;
      v116[10] = v124;
      v116[11] = v3;
      v116[20] = v117;
      v111 = v24;

      v110 = v3;

      a3 = 0;
      v25 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (a3 >= *(v118 + 16))
        {
          goto LABEL_102;
        }

        sub_1973FA430(v10, v129);
        v28 = v130;
        v29 = v131;
        __swift_project_boxed_opaque_existential_1(v129, v130);
        v30 = (*(v29 + 32))(v28, v29);
        v32 = v31;
        sub_1973FA430(v129, &v125);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v122 = v25;
        v3 = v25;
        v34 = sub_1973F4028(v30, v32);
        v36 = v25[2];
        v37 = (v35 & 1) == 0;
        v38 = __OFADD__(v36, v37);
        v39 = v36 + v37;
        if (v38)
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          if (!sub_1975220EC())
          {
            goto LABEL_2;
          }

          v7 = sub_1974F7E80(MEMORY[0x1E69E7CC0]);
          goto LABEL_3;
        }

        v40 = v35;
        if (v25[3] < v39)
        {
          break;
        }

        if (v33)
        {
          goto LABEL_32;
        }

        v3 = &v122;
        v45 = v34;
        sub_1974798E0();
        v34 = v45;
        if ((v40 & 1) == 0)
        {
LABEL_33:
          v25 = v122;
          v122[(v34 >> 6) + 8] |= 1 << v34;
          v42 = (v25[6] + 16 * v34);
          *v42 = v30;
          v42[1] = v32;
          sub_1973FA670(&v125, v25[7] + 40 * v34);
          v43 = v25[2];
          v38 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v38)
          {
            goto LABEL_104;
          }

          v25[2] = v44;
          goto LABEL_25;
        }

LABEL_24:
        v26 = v34;

        v25 = v122;
        v27 = (v122[7] + 40 * v26);
        __swift_destroy_boxed_opaque_existential_1Tm_5(v27);
        sub_1973FA670(&v125, v27);
LABEL_25:
        ++a3;
        __swift_destroy_boxed_opaque_existential_1Tm_5(v129);
        v10 += 40;
        if (v9 == a3)
        {
          v3 = v116;
          v8 = v111;
          a3 = v118;
          goto LABEL_39;
        }
      }

      sub_1973FA674(v39, v33);
      v3 = v122;
      v34 = sub_1973F4028(v30, v32);
      if ((v40 & 1) != (v41 & 1))
      {
LABEL_111:
        sub_1975229CC();
        __break(1u);
        goto LABEL_112;
      }

LABEL_32:
      if ((v40 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }
  }

  sub_1973FA430(v129, &v125);
  type metadata accessor for Schema.Relationship();
  if (swift_dynamicCast())
  {
    v12 = v122;

    v3 = &v123;
    sub_19741DE84(&v125, v12);

    swift_beginAccess();
    v17 = *(v12 + 56);
    v18 = *(v17 + 16);
    v19 = (v17 + 32);
    while (v18)
    {
      v20 = *v19++;
      --v18;
      if (v20 == 1)
      {
        if ((*(v12 + 168) & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_19752C280;
        swift_beginAccess();
        v21 = *(v12 + 24);
        *(v3 + 32) = *(v12 + 16);
        *(v3 + 40) = v21;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_19741E43C(0, v117[2] + 1, 1, v117);
        }

        v23 = v117[2];
        v22 = v117[3];
        if (v23 >= v22 >> 1)
        {
          v117 = sub_19741E43C((v22 > 1), v23 + 1, 1, v117);
        }

        __swift_destroy_boxed_opaque_existential_1Tm_5(v129);
        v117[2] = v23 + 1;
        v117[v23 + 4] = v3;
        a3 = v118;
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

LABEL_112:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t Schema.Entity.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Schema.Entity.init(from:)(a1);
  return v2;
}

uint64_t Schema.Entity.init(from:)(uint64_t *a1)
{
  v190 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC10, &qword_197531D38);
  v189 = *(v4 - 8);
  v5 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v178 - v7;
  v1[5] = 0;
  v1[6] = 0;
  swift_weakInit();
  v1[22] = 0;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  v191 = a1;
  v192 = v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974F98E8();
  sub_197522AFC();
  if (v2)
  {
    v11 = 0;
    v12 = 0;
    v13 = v191;
    v14 = v192;
LABEL_4:
    v15 = v14[6];

    swift_weakDestroy();
    if (v11)
    {
      v24 = v14[8];

      v25 = v14[9];

      if (!v12)
      {
LABEL_6:
        if (v11)
        {
LABEL_7:
          v16 = v14[11];

          v17 = v14[12];

          v18 = v14[13];

          v19 = v14[14];

          v20 = v14[15];

          v21 = v14[17];

          v22 = v14[20];

          v23 = v14[21];
LABEL_11:

          v28 = v14[22];

          swift_deallocPartialClassInstance();
          v29 = v13;
          goto LABEL_12;
        }

LABEL_10:
        v27 = v14[17];
        goto LABEL_11;
      }
    }

    else if (!v12)
    {
      goto LABEL_6;
    }

    v26 = v14[10];

    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v187 = v1 + 5;
  LOBYTE(v196[0]) = 0;
  v10 = sub_1975225EC();
  v31 = v192;
  v192[2] = v10;
  v31[3] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC20, &qword_197531D40);
  LOBYTE(v195[0]) = 5;
  sub_1974F993C();
  sub_19752255C();
  *&v188 = v196[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC30, &qword_197531D48);
  LOBYTE(v195[0]) = 6;
  sub_1974F99F4();
  sub_19752255C();
  v181 = v8;
  v34 = v196[0];
  v183 = v4;
  v35 = v188;
  if (v188 && v196[0])
  {
    v36 = v192;
    v192[10] = v188;
    v36[11] = v34;
    v37 = v35;

    v38 = sub_1974F6438(v37, sub_1974D4C0C, sub_1974D34C4);

    v39 = sub_1974AE644(v38);

    v40 = sub_1974F6438(v34, sub_1974D4C08, sub_1974D347C);

    v41 = sub_1974AE68C(v40);

    v196[0] = v39;
  }

  else
  {

    LOBYTE(v195[0]) = 3;
    sub_19752261C();
    v36 = v192;
    v192[10] = v196[0];
    LOBYTE(v195[0]) = 4;
    sub_19752261C();
    v36[11] = v196[0];
    swift_beginAccess();
    v171 = v36[10];

    v173 = sub_1974F6438(v172, sub_1974D4C0C, sub_1974D34C4);

    v174 = sub_1974AE644(v173);

    swift_beginAccess();
    v175 = v36[11];

    v177 = sub_1974F6438(v176, sub_1974D4C08, sub_1974D347C);

    v41 = sub_1974AE68C(v177);

    v196[0] = v174;
  }

  sub_1974EE6F8(v41, sub_1973FA494, &qword_1EAF2B1C8, &unk_19752EA30);
  v42 = v196[0];
  v43 = v189;
  v36[8] = v196[0];
  v44 = v36 + 8;
  v45 = *(v42 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  v47 = 0;
  if (v45)
  {
    v185 = v42;
    v186 = v44;
    v48 = v42 + 32;

    v188 = xmmword_19752C280;
    do
    {
      v49 = v47;
      sub_1973FA430(v48, v196);
      v50 = v197;
      v51 = v198;
      __swift_project_boxed_opaque_existential_1(v196, v197);
      if ((*(v51 + 136))(v50, v51))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
        v52 = swift_allocObject();
        *(v52 + 16) = v188;
        v53 = v197;
        v54 = v198;
        __swift_project_boxed_opaque_existential_1(v196, v197);
        *(v52 + 32) = (*(v54 + 32))(v53, v54);
        *(v52 + 40) = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_19741E43C(0, v46[2] + 1, 1, v46);
        }

        v47 = v49;
        v56 = v46;
        v58 = v46[2];
        v57 = v46[3];
        if (v58 >= v57 >> 1)
        {
          v56 = sub_19741E43C((v57 > 1), v58 + 1, 1, v46);
        }

        v56[2] = v58 + 1;
        v46 = v56;
        v56[v58 + 4] = v52;
        v43 = v189;
      }

      else
      {
        v47 = v49;
      }

      __swift_destroy_boxed_opaque_existential_1Tm_5(v196);
      v48 += 40;
      --v45;
    }

    while (v45);
  }

  v59 = v192;
  v192[20] = v46;
  swift_beginAccess();
  v60 = v59[8];
  v184 = *(v60 + 16);
  v180 = v46;
  if (v184)
  {
    v61 = v60 + 32;

    v62 = 0;
    v63 = MEMORY[0x1E69E7CC8];
    v185 = v60;
    while (1)
    {
      *&v188 = v47;
      v66 = *(v185 + 16);
      v186 = v62;
      if (v62 >= v66)
      {
        goto LABEL_114;
      }

      v67 = v61;
      sub_1973FA430(v61, v196);
      v68 = v197;
      v69 = v198;
      __swift_project_boxed_opaque_existential_1(v196, v197);
      v70 = (*(v69 + 32))(v68, v69);
      v72 = v71;
      sub_1973FA430(v196, v195);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v194 = v63;
      v75 = sub_1973F4028(v70, v72);
      v76 = v63[2];
      v77 = (v74 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_115;
      }

      v79 = v74;
      if (v63[3] >= v78)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v74 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_1974798E0();
          if ((v79 & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        sub_1973FA674(v78, isUniquelyReferenced_nonNull_native);
        v80 = sub_1973F4028(v70, v72);
        if ((v79 & 1) != (v81 & 1))
        {
          goto LABEL_121;
        }

        v75 = v80;
        if ((v79 & 1) == 0)
        {
LABEL_40:
          v63 = v194;
          v194[(v75 >> 6) + 8] |= 1 << v75;
          v82 = (v63[6] + 16 * v75);
          *v82 = v70;
          v82[1] = v72;
          sub_1973FA670(v195, v63[7] + 40 * v75);
          v83 = v63[2];
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_116;
          }

          v63[2] = v85;
          goto LABEL_31;
        }
      }

      v63 = v194;
      v64 = (v194[7] + 40 * v75);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v64);
      sub_1973FA670(v195, v64);
LABEL_31:
      v47 = v188;
      v43 = v189;
      v65 = v67;
      v62 = (v186 + 1);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v196);
      v61 = v65 + 40;
      if (v184 == v62)
      {

        goto LABEL_47;
      }
    }
  }

  v63 = MEMORY[0x1E69E7CC8];
LABEL_47:
  v86 = v192;
  v192[14] = v63;
  swift_beginAccess();
  v179 = v86[10];
  if ((v179 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_1973FA628(&qword_1ED7CA320, 255, type metadata accessor for Schema.Attribute);
    sub_197521C1C();
    v87 = v199;
    v88 = v200;
    v90 = v201;
    v89 = v202;
    v91 = v203;
  }

  else
  {
    v92 = -1 << *(v179 + 32);
    v88 = v179 + 56;
    v93 = ~v92;
    v94 = -v92;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    else
    {
      v95 = -1;
    }

    v91 = v95 & *(v179 + 56);
    v96 = v179;
    swift_bridgeObjectRetain_n();
    v90 = v93;
    v89 = 0;
    v87 = v96;
  }

  v13 = v191;
  v178 = v90;
  v97 = (v90 + 64) >> 6;
  v186 = MEMORY[0x1E69E7CC8];
  v182 = v97;
  v184 = v87;
  while ((v87 & 0x8000000000000000) == 0)
  {
    v101 = v89;
    v102 = v91;
    v103 = v89;
    if (!v91)
    {
      while (1)
      {
        v103 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          break;
        }

        if (v103 >= v97)
        {
          v91 = 0;
          v43 = v189;
          goto LABEL_76;
        }

        v102 = *(v88 + 8 * v103);
        ++v101;
        if (v102)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
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
      result = sub_1975229CC();
      __break(1u);
      return result;
    }

LABEL_61:
    *&v188 = v89;
    v104 = (v102 - 1) & v102;
    v105 = *(*(v87 + 48) + ((v103 << 9) | (8 * __clz(__rbit64(v102)))));

LABEL_64:
    if (!v105)
    {
      v13 = v191;
      v43 = v189;
      v89 = v188;
      goto LABEL_76;
    }

    v185 = v104;
    v107 = v88;
    *&v188 = v47;
    swift_beginAccess();
    v108 = *(v105 + 16);
    v109 = *(v105 + 24);

    v110 = v186;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    *&v195[0] = v110;
    v112 = sub_1973F4028(v108, v109);
    v114 = v110[2];
    v115 = (v113 & 1) == 0;
    v84 = __OFADD__(v114, v115);
    v116 = v114 + v115;
    if (v84)
    {
      goto LABEL_117;
    }

    v117 = v113;
    if (v110[3] < v116)
    {
      sub_197478128(v116, v111);
      v112 = sub_1973F4028(v108, v109);
      if ((v117 & 1) != (v118 & 1))
      {
        goto LABEL_121;
      }

LABEL_70:
      if (v117)
      {
        goto LABEL_54;
      }

      goto LABEL_71;
    }

    if (v111)
    {
      goto LABEL_70;
    }

    v123 = v112;
    sub_197479A9C();
    v112 = v123;
    if (v117)
    {
LABEL_54:
      v98 = v112;

      v186 = *&v195[0];
      v99 = *(*&v195[0] + 56);
      v100 = *(v99 + 8 * v98);
      *(v99 + 8 * v98) = v105;

      goto LABEL_55;
    }

LABEL_71:
    v119 = *&v195[0];
    *(*&v195[0] + 8 * (v112 >> 6) + 64) |= 1 << v112;
    v120 = (v119[6] + 16 * v112);
    *v120 = v108;
    v120[1] = v109;
    *(v119[7] + 8 * v112) = v105;

    v121 = v119[2];
    v84 = __OFADD__(v121, 1);
    v122 = v121 + 1;
    if (v84)
    {
      goto LABEL_119;
    }

    v186 = v119;
    v119[2] = v122;
LABEL_55:
    v89 = v103;
    v13 = v191;
    v47 = v188;
    v43 = v189;
    v88 = v107;
    v87 = v184;
    v91 = v185;
    v97 = v182;
  }

  *&v188 = v89;
  v106 = sub_19752212C();
  if (v106)
  {
    v194 = v106;
    type metadata accessor for Schema.Attribute();
    swift_dynamicCast();
    v105 = *&v195[0];
    v103 = v188;
    v104 = v91;
    goto LABEL_64;
  }

  v89 = v188;
LABEL_76:
  sub_197416DA8(v87, v88, v178, v89, v91);

  v124 = v192;
  v192[12] = v186;
  swift_beginAccess();
  v179 = v124[11];
  if ((v179 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v125 = v204;
    v126 = v205;
    v127 = v206;
    v128 = v207;
    v129 = v208;
  }

  else
  {
    v130 = -1 << *(v179 + 32);
    v126 = (v179 + 56);
    v131 = ~v130;
    v132 = -v130;
    if (v132 < 64)
    {
      v133 = ~(-1 << v132);
    }

    else
    {
      v133 = -1;
    }

    v134 = v133 & *(v179 + 56);
    v135 = v179;
    swift_bridgeObjectRetain_n();
    v129 = v134;
    v127 = v131;
    v128 = 0;
    v125 = v135;
  }

  v136 = v183;
  v178 = v127;
  v137 = (v127 + 64) >> 6;
  v185 = v125;
  v186 = MEMORY[0x1E69E7CC8];
  v182 = v137;
  v184 = v126;
  while (2)
  {
    if ((v125 & 0x8000000000000000) == 0)
    {
      v141 = v128;
      v142 = v129;
      for (i = v128; !v142; ++v141)
      {
        i = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          goto LABEL_113;
        }

        if (i >= v137)
        {
          v129 = 0;
          v43 = v189;
          goto LABEL_105;
        }

        v142 = v126[i];
      }

      *&v188 = v47;
      v144 = (v142 - 1) & v142;
      v145 = *(*(v125 + 48) + ((i << 9) | (8 * __clz(__rbit64(v142)))));

LABEL_93:
      if (!v145)
      {
        v13 = v191;
        v47 = v188;
        v43 = v189;
        v126 = v184;
        v125 = v185;
        goto LABEL_105;
      }

      swift_beginAccess();
      v147 = v145[2];
      v148 = v145[3];

      v149 = v186;
      v150 = swift_isUniquelyReferenced_nonNull_native();
      v194 = v149;
      v151 = sub_1973F4028(v147, v148);
      v153 = v149[2];
      v154 = (v152 & 1) == 0;
      v84 = __OFADD__(v153, v154);
      v155 = v153 + v154;
      if (v84)
      {
        goto LABEL_118;
      }

      v156 = v152;
      if (v149[3] >= v155)
      {
        if (v150)
        {
          goto LABEL_99;
        }

        v162 = v151;
        sub_197479A88();
        v151 = v162;
        if (v156)
        {
          goto LABEL_83;
        }

LABEL_100:
        v158 = v194;
        v194[(v151 >> 6) + 8] |= 1 << v151;
        v159 = (v158[6] + 16 * v151);
        *v159 = v147;
        v159[1] = v148;
        *(v158[7] + 8 * v151) = v145;

        v160 = v158[2];
        v84 = __OFADD__(v160, 1);
        v161 = v160 + 1;
        if (v84)
        {
          goto LABEL_120;
        }

        v186 = v158;
        v158[2] = v161;
      }

      else
      {
        sub_197478114(v155, v150);
        v151 = sub_1973F4028(v147, v148);
        if ((v156 & 1) != (v157 & 1))
        {
          goto LABEL_121;
        }

LABEL_99:
        if ((v156 & 1) == 0)
        {
          goto LABEL_100;
        }

LABEL_83:
        v138 = v151;

        v186 = v194;
        v139 = v194[7];
        v140 = *(v139 + 8 * v138);
        *(v139 + 8 * v138) = v145;
      }

      v128 = i;
      v129 = v144;
      v13 = v191;
      v47 = v188;
      v43 = v189;
      v137 = v182;
      v136 = v183;
      v126 = v184;
      v125 = v185;
      continue;
    }

    break;
  }

  v146 = sub_19752212C();
  if (v146)
  {
    *&v188 = v47;
    v209 = v146;
    type metadata accessor for Schema.Relationship();
    swift_dynamicCast();
    v145 = v194;
    i = v128;
    v144 = v129;
    goto LABEL_93;
  }

  v125 = v185;
LABEL_105:
  sub_197416DA8(v125, v126, v178, v128, v129);

  v14 = v192;
  v192[13] = v186;
  v163 = MEMORY[0x1E69E7CC0];
  v14[9] = MEMORY[0x1E69E7CC0];
  v14[15] = sub_1973FAE70(v163);
  v14[21] = v163;
  LOBYTE(v194) = 2;
  v164 = v181;
  v165 = sub_1975224FC();
  if (v47)
  {
    (*(v43 + 8))(v164, v136);
    v11 = 1;
    v12 = 1;
    v33 = v14[3];

    goto LABEL_4;
  }

  v167 = v166;
  v168 = v165;
  swift_beginAccess();
  v169 = v14[6];
  v14[5] = v168;
  v14[6] = v167;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC40, &qword_197531D50);
  v193 = 1;
  v170 = v183;
  sub_1974F9AAC();
  sub_19752261C();
  (*(v43 + 8))(v164, v170);
  v14[4] = v209;
  v29 = v191;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1Tm_5(v29);
  return v14;
}

uint64_t Schema.Entity.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC50, &qword_197531D58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v27 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974F98E8();
  sub_197522B0C();
  swift_beginAccess();
  v13 = v4[2];
  v14 = v4[3];
  LOBYTE(v31[0]) = 0;

  sub_19752268C();
  if (v3)
  {
    (*(v7 + 8))(v11, v6);
  }

  else
  {

    swift_beginAccess();
    v31[0] = v4[4];
    LOBYTE(v30[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC40, &qword_197531D50);
    sub_1974F9B60();
    sub_1975226EC();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      swift_beginAccess();
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
    }

    LOBYTE(v31[0]) = 2;
    sub_19752267C();

    v20 = MEMORY[0x1E69E7CD0];
    v33 = MEMORY[0x1E69E7CD0];
    v32 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    v21 = v4[8];
    v22 = *(v21 + 16);
    if (v22)
    {
      v28 = v7;
      v23 = v21 + 32;

      v24 = 0;
      while (v24 < *(v21 + 16))
      {
        sub_1973FA430(v23, v31);
        sub_1973FA430(v31, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
        type metadata accessor for Schema.Attribute();
        if (swift_dynamicCast())
        {
          sub_197417B28(v30, v29);
        }

        else
        {
          sub_1973FA430(v31, v30);
          type metadata accessor for Schema.Relationship();
          if (!swift_dynamicCast())
          {
            goto LABEL_16;
          }

          sub_19741DE84(v30, v29);
        }

        __swift_destroy_boxed_opaque_existential_1Tm_5(v31);
        ++v24;
        v23 += 40;
        if (v22 == v24)
        {

          v20 = v33;
          v7 = v28;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
LABEL_14:
      v31[0] = v20;
      LOBYTE(v30[0]) = 5;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC20, &qword_197531D40);
      sub_1974F9C14();
      sub_1975226EC();
      v28 = v25;

      v31[0] = v32;
      LOBYTE(v30[0]) = 6;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC30, &qword_197531D48);
      sub_1974F9CCC();
      v27[1] = v26;
      sub_1975226EC();

      swift_beginAccess();
      v30[0] = v4[10];
      LOBYTE(v33) = 3;
      sub_1975226EC();
      swift_beginAccess();
      v33 = v4[11];
      LOBYTE(v32) = 4;
      sub_1975226EC();
      return (*(v7 + 8))(v11, v6);
    }
  }

  return result;
}

uint64_t Schema.Entity.hash(into:)()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_19752180C();
}

char *static Schema.Entity.cachedEntityNamesChain(for:)(unint64_t a1, uint64_t a2)
{
  v2 = sub_1973F69F8(a1, a2);
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1975220EC();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  result = sub_19741E264(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v14;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A8E0960](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      swift_beginAccess();
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19741E264((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974F3888(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v94 = a6;
  v7 = a1[1];
  v86 = *a1;
  v8 = a1[2];
  sub_1973FA578((a1 + 3), v93, &qword_1EAF2AF20, &unk_19752F320);
  sub_1973FA578((a1 + 7), v92, &qword_1EAF2BB80, &qword_197531238);
  v9 = *v8;
  v87 = v7;

  sub_197521FFC();
  v11 = v10;
  *&v89 = v10;
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v11;
  if (!v13)
  {
    v14 = v11;
    do
    {
      sub_1973F732C(v14, &v89);
      v14 = v89;
      if (swift_conformsToProtocol2())
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }
    }

    while (!v15);
  }

  v74 = v12;
  sub_1973FA578(v92, &v89, &qword_1EAF2BB80, &qword_197531238);
  if (!v90)
  {
    sub_1973FA518(&v89, &qword_1EAF2BB80, &qword_197531238);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  v16 = type metadata accessor for Schema.Attribute();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v27 = swift_conformsToProtocol2();
    if (v27 && v14)
    {
      v28 = v27;
      sub_1973FA578(v92, &v89, &qword_1EAF2BB80, &qword_197531238);
      if (v90)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
        type metadata accessor for Schema.Relationship();
        if (swift_dynamicCast())
        {
          v29 = *&v88[0];
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {

        sub_1973FA518(&v89, &qword_1EAF2BB80, &qword_197531238);
        v29 = 0;
      }

      v34 = type metadata accessor for Schema.Relationship();
      swift_allocObject();
      v35 = sub_1973FB21C(v86, v87, v11, v8, v29);
      v90 = v34;
      v91 = sub_1973FA628(&qword_1ED7C9190, 255, type metadata accessor for Schema.Relationship);
      *&v89 = v35;
      sub_1973F548C(v14, a2, a3, a4, a5, v14, v28);
      goto LABEL_83;
    }

    if (swift_conformsToProtocol2() && v14)
    {
      sub_1974F4538(v86, v7, v11, v8, v92, a2, a3, &v89, a4, a5, v93);

      goto LABEL_83;
    }

    sub_1973FA578(v92, &v89, &qword_1EAF2BB80, &qword_197531238);
    if (v90)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Attribute();
      if (swift_dynamicCast())
      {
        v30 = *&v88[0];
      }

      else
      {
        v30 = 0;
      }

      if (sub_1973F6EEC(v14))
      {
        if (v30)
        {
          swift_beginAccess();
          v31 = v30[5];
          v84 = v30[4];
          swift_beginAccess();
          v32 = v30[6];

          sub_1973FA578(v93, v88, &qword_1EAF2AF20, &unk_19752F320);
          swift_beginAccess();
          v33 = v30[14];
          v80 = v30[13];

LABEL_45:
          v36 = type metadata accessor for Schema.Attribute();
          v37 = swift_allocObject();
          v38 = v37;
          *(v37 + 80) = 0u;
          *(v37 + 64) = 0u;
          v39 = v37 + 64;
          *(v37 + 112) = 0;
          *(v37 + 120) = 0;
          *(v37 + 104) = 0;
          v40 = (v37 + 104);
          *(v37 + 16) = v86;
          *(v37 + 24) = v87;
          v41 = v84;
          if (!v31)
          {
            v41 = 0;
          }

          v42 = 0xE000000000000000;
          if (v31)
          {
            v42 = v31;
          }

          *(v37 + 32) = v41;
          *(v37 + 40) = v42;
          *(v37 + 48) = v32;
          *(v37 + 56) = v11;
          swift_beginAccess();
          sub_1973F7958(v88, v39);
          swift_endAccess();
          swift_beginAccess();
          v43 = *(v38 + 112);
          *v40 = v80;
          *(v38 + 112) = v33;

          if (v74)
          {
            v44 = v11 == 0;
          }

          else
          {
            v44 = 1;
          }

          v45 = !v44;
          *(v38 + 96) = v45;
          sub_1973F710C();
          sub_1973FA518(v88, &qword_1EAF2AF20, &unk_19752F320);
          v90 = v36;
          v91 = sub_1973FA628(&qword_1ED7CA308, 255, type metadata accessor for Schema.Attribute);

          *&v89 = v38;
          goto LABEL_81;
        }

LABEL_44:
        sub_1973FA578(v93, v88, &qword_1EAF2AF20, &unk_19752F320);
        v31 = 0;
        v80 = 0;
        v84 = 0;
        v33 = 0;
        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }

    else
    {
      sub_1973FA518(&v89, &qword_1EAF2BB80, &qword_197531238);
      if (sub_1973F6EEC(v14))
      {
        goto LABEL_44;
      }

      v30 = 0;
    }

    *&v89 = v14;
    if (swift_conformsToProtocol2() && v14)
    {
      do
      {
        sub_1973F732C(v14, &v89);
        v14 = v89;
        if (swift_conformsToProtocol2())
        {
          v46 = v14 == 0;
        }

        else
        {
          v46 = 1;
        }
      }

      while (!v46);
    }

    sub_197520C6C();
    if (!swift_dynamicCastMetatype())
    {
      if (v30)
      {
        swift_beginAccess();
        v51 = v30[4];
        v50 = v30[5];
        swift_beginAccess();
        v52 = v30[6];

        sub_1973FA578(v93, &v89, &qword_1EAF2AF20, &unk_19752F320);
        swift_beginAccess();
        v53 = v30[13];
        v54 = v30[14];
      }

      else
      {
        sub_1973FA578(v93, &v89, &qword_1EAF2AF20, &unk_19752F320);
        v50 = 0;
        v51 = 0;
        v53 = 0;
        v54 = 0;
        v52 = MEMORY[0x1E69E7CC0];
      }

      v72 = type metadata accessor for Schema.CompositeAttribute();
      swift_allocObject();
      v73 = Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(v86, v87, v51, v50, v52, v11, &v89, v53, v54);
      v90 = v72;
      v91 = sub_1973FA628(qword_1ED7C6FB0, 255, type metadata accessor for Schema.CompositeAttribute);

      *&v89 = v73;
      sub_1973FA670(&v89, v88);
      goto LABEL_82;
    }

    if (v30)
    {
      swift_beginAccess();
      v47 = v30[5];
      v85 = v30[4];
      swift_beginAccess();
      v48 = v30[6];

      sub_1973FA578(v93, &v89, &qword_1EAF2AF20, &unk_19752F320);
      swift_beginAccess();
      v77 = v30[14];
      v81 = v30[13];
      v49 = v47 == 0;
    }

    else
    {
      sub_1973FA578(v93, &v89, &qword_1EAF2AF20, &unk_19752F320);
      v47 = 0;
      v81 = 0;
      v85 = 0;
      v77 = 0;
      v49 = 1;
      v48 = MEMORY[0x1E69E7CC0];
    }

    v55 = type metadata accessor for Schema.Attribute();
    v56 = swift_allocObject();
    v57 = v56;
    *(v56 + 80) = 0u;
    *(v56 + 64) = 0u;
    v58 = v56 + 64;
    *(v56 + 112) = 0;
    *(v56 + 120) = 0;
    *(v56 + 104) = 0;
    v59 = (v56 + 104);
    *(v56 + 16) = v86;
    *(v56 + 24) = v87;
    v60 = v85;
    if (v49)
    {
      v60 = 0;
    }

    v61 = 0xE000000000000000;
    if (!v49)
    {
      v61 = v47;
    }

    *(v56 + 32) = v60;
    *(v56 + 40) = v61;
    *(v56 + 48) = v48;
    *(v56 + 56) = v11;
    swift_beginAccess();
    sub_1973F7958(&v89, v58);
    swift_endAccess();
    swift_beginAccess();
    v62 = *(v57 + 112);
    *v59 = v81;
    *(v57 + 112) = v77;

    if (v74)
    {
      v63 = v11 == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = !v63;
    *(v57 + 96) = v64;
    sub_1973F710C();
    sub_1973FA518(&v89, &qword_1EAF2AF20, &unk_19752F320);
    v90 = v55;
    v91 = sub_1973FA628(&qword_1ED7CA308, 255, type metadata accessor for Schema.Attribute);

    *&v89 = v57;
LABEL_81:
    sub_1973FA670(&v89, v88);
LABEL_82:
    sub_1973FA670(v88, &v89);
    goto LABEL_83;
  }

  swift_beginAccess();
  v17 = *(*&v88[0] + 48);
  v18 = *(v17 + 16) + 1;
  v19 = 32;
  do
  {
    if (!--v18)
    {

      goto LABEL_25;
    }

    v20 = *(v17 + v19);
    v19 += 40;
  }

  while (v20 != 1);
  swift_beginAccess();
  v21 = *(*&v88[0] + 40);
  v79 = *(*&v88[0] + 32);
  sub_1973FA578(v93, &v89, &qword_1EAF2AF20, &unk_19752F320);
  swift_beginAccess();
  v22 = *(*&v88[0] + 112);
  v83 = *(*&v88[0] + 104);
  v23 = swift_allocObject();
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 112) = 0;
  *(v23 + 120) = 0;
  *(v23 + 104) = 0;
  *(v23 + 16) = v86;
  *(v23 + 24) = v7;
  *(v23 + 32) = v79;
  *(v23 + 40) = v21;
  *(v23 + 48) = v17;
  *(v23 + 56) = v11;
  swift_beginAccess();

  sub_1973F7958(&v89, v23 + 64);
  swift_endAccess();
  swift_beginAccess();
  v24 = *(v23 + 112);
  *(v23 + 104) = v83;
  *(v23 + 112) = v22;

  if (v74)
  {
    v25 = v11 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  *(v23 + 96) = v26;
  sub_1973F710C();
  sub_1973FA518(&v89, &qword_1EAF2AF20, &unk_19752F320);
  v90 = v16;
  v91 = sub_1973FA628(&qword_1ED7CA308, 255, type metadata accessor for Schema.Attribute);

  *&v89 = v23;
LABEL_83:
  v65 = v94;
  sub_1973FA430(&v89, v88);
  v66 = *v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v65 = v66;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v66 = sub_1973FA494(0, v66[2] + 1, 1, v66);
    *v65 = v66;
  }

  v69 = v66[2];
  v68 = v66[3];
  if (v69 >= v68 >> 1)
  {
    *v65 = sub_1973FA494((v68 > 1), v69 + 1, 1, v66);
  }

  sub_1973FA518(v92, &qword_1EAF2BB80, &qword_197531238);
  sub_1973FA518(v93, &qword_1EAF2AF20, &unk_19752F320);
  v70 = *v65;
  v70[2] = v69 + 1;
  sub_1973FA670(v88, &v70[5 * v69 + 4]);
  return __swift_destroy_boxed_opaque_existential_1Tm_5(&v89);
}

uint64_t sub_1974F4538@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = AssociatedTypeWitness == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v23 = v18;
    sub_1973FA578(a5, v43, &qword_1EAF2BB80, &qword_197531238);
    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Relationship();
      if (swift_dynamicCast())
      {
        v24 = v42;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      sub_1973FA518(v43, &qword_1EAF2BB80, &qword_197531238);
      v24 = 0;
    }

    v36 = type metadata accessor for Schema.Relationship();
    swift_allocObject();

    v37 = sub_1973FB21C(a1, a2, a3, a4, v24);
    a8[3] = v36;
    a8[4] = sub_1973FA628(&qword_1ED7C9190, 255, type metadata accessor for Schema.Relationship);
    *a8 = v37;
    return sub_1973F548C(AssociatedTypeWitness, a6, a7, a9, a10, AssociatedTypeWitness, v23);
  }

  sub_1973FA578(a5, v43, &qword_1EAF2BB80, &qword_197531238);
  if (!v44)
  {
    sub_1973FA518(v43, &qword_1EAF2BB80, &qword_197531238);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  type metadata accessor for Schema.Attribute();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_1973FA578(a11, v43, &qword_1EAF2AF20, &unk_19752F320);
    v20 = 0;
    v38 = 0;
    v39 = 0;
    v22 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  swift_beginAccess();
  v20 = v42[5];
  v38 = v42[4];
  swift_beginAccess();
  v21 = v42[6];

  sub_1973FA578(a11, v43, &qword_1EAF2AF20, &unk_19752F320);
  swift_beginAccess();
  v22 = v42[14];
  v39 = v42[13];

LABEL_15:
  v25 = type metadata accessor for Schema.Attribute();
  v26 = swift_allocObject();
  v27 = v26;
  *(v26 + 80) = 0u;
  *(v26 + 64) = 0u;
  v28 = v26 + 64;
  *(v26 + 112) = 0;
  *(v26 + 120) = 0;
  *(v26 + 104) = 0;
  v29 = (v26 + 104);
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v30 = v38;
  if (!v20)
  {
    v30 = 0;
  }

  v31 = 0xE000000000000000;
  if (v20)
  {
    v31 = v20;
  }

  *(v26 + 32) = v30;
  *(v26 + 40) = v31;
  *(v26 + 48) = v21;
  *(v26 + 56) = a3;
  swift_beginAccess();

  sub_1973F7958(v43, v28);
  swift_endAccess();
  swift_beginAccess();
  v32 = *(v27 + 112);
  *v29 = v39;
  *(v27 + 112) = v22;

  if (swift_conformsToProtocol2())
  {
    v33 = a3 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = !v33;
  *(v27 + 96) = v34;
  sub_1973F710C();
  sub_1973FA518(v43, &qword_1EAF2AF20, &unk_19752F320);
  a8[3] = v25;
  a8[4] = sub_1973FA628(&qword_1ED7CA308, 255, type metadata accessor for Schema.Attribute);

  *a8 = v27;
  return result;
}

uint64_t sub_1974F49B4(uint64_t a1)
{
  sub_1973FA578(a1 + 56, &v26, &qword_1EAF2BB80, &qword_197531238);
  if (!v27)
  {
    return sub_1973FA518(&v26, &qword_1EAF2BB80, &qword_197531238);
  }

  sub_1973FA670(&v26, v28);
  sub_1973FA430(v28, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  type metadata accessor for Schema.Index();
  if (swift_dynamicCast())
  {
    v2 = sub_197418B20();
    if (!v1)
    {
      if ((v2 & 1) == 0)
      {
        goto LABEL_29;
      }

      v3 = sub_1974194C0();
      sub_19741997C(v3);

      goto LABEL_12;
    }

    swift_unexpectedError();
    __break(1u);
    goto LABEL_22;
  }

  v5 = v29;
  v6 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v7 = (*(v6 + 32))(v5, v6);
  v9 = v8;
  if (v7 == sub_197418AB0() && v9 == v10)
  {
LABEL_22:

    goto LABEL_23;
  }

  v12 = sub_19752282C();

  if (v12)
  {
LABEL_23:
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000034, 0x80000001975299A0);
    v24 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v24);

    MEMORY[0x19A8DFF80](0x7669672074756220, 0xED0000202D206E65);
    sub_19752235C();
    goto LABEL_29;
  }

LABEL_12:
  sub_1973FA430(v28, &v26);
  type metadata accessor for Schema.Unique();
  if (swift_dynamicCast())
  {
    v13 = sub_1974FA6E8();
    if (v1)
    {
      swift_unexpectedError();
      __break(1u);
    }

    else if (v13)
    {
      v14 = sub_1974FA9FC();
      sub_19741997C(v14);

      return __swift_destroy_boxed_opaque_existential_1Tm_5(v28);
    }
  }

  else
  {
    v15 = v29;
    v16 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    if (((*(v16 + 136))(v15, v16) & 1) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm_5(v28);
    }

    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v19 = (*(v18 + 32))(v17, v18);
    v21 = v20;
    if (v19 == sub_1974FAD10() && v21 == v22)
    {
    }

    else
    {
      v23 = sub_19752282C();

      if ((v23 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm_5(v28);
      }
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000040, 0x8000000197529900);
    v25 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v25);

    MEMORY[0x19A8DFF80](0x7669672074756220, 0xED0000202D206E65);
    sub_19752235C();
  }

LABEL_29:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974F4F18(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  v126 = a1;
  v3 = a1[11];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = a1[11];
    }

    v5 = a1[11];

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v3 = v128;
    v6 = v129;
    v7 = v130;
    v8 = v131;
    v9 = v132;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
  }

  LODWORD(v148) = 0;
  while (1)
  {
    v13 = v8;
    v14 = v9;
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    v18 = sub_19752212C();
    if (!v18)
    {
      goto LABEL_29;
    }

    v138 = v18;
    type metadata accessor for Schema.Relationship();
    swift_dynamicCast();
    v17 = v143;
    if (!v143)
    {
      goto LABEL_29;
    }

LABEL_19:
    swift_beginAccess();
    v19 = *(v17 + 112);
    if (v19)
    {
      v20 = *v19;

      v21 = sub_197521FFC();
      v148 = sub_197522B8C();
      v124 = v22;
      swift_beginAccess();
      v23 = *a2;
      if (!*(*a2 + 16))
      {
        goto LABEL_140;
      }

      v24 = sub_1973F4028(v148, v124);
      if ((v25 & 1) == 0)
      {
        goto LABEL_140;
      }

      v148 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();
      v26 = v21;
      v27 = swift_conformsToProtocol2();
      if (v27)
      {
        v28 = v21 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        goto LABEL_143;
      }

      v29 = v27;

      sub_1974F5E3C(v26, v19, v148, v17, v26, v29);

      LODWORD(v148) = 1;
    }

    else
    {
    }
  }

  v15 = v8;
  v16 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v16 - 1) & v16;
    v17 = *(*(v3 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      break;
    }

    v16 = *(v6 + 8 * v8);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_29:
  result = sub_197416DA8(v3, v6, v7, v13, v14);
  if (v148)
  {
    return result;
  }

  v31 = v126[11];
  if ((v31 & 0xC000000000000001) != 0)
  {
    if (v31 < 0)
    {
      v32 = v126[11];
    }

    v33 = v126[11];

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v31 = v133;
    v34 = v134;
    v35 = v135;
    v36 = v136;
    v37 = v137;
  }

  else
  {
    v38 = -1 << *(v31 + 32);
    v34 = v31 + 56;
    v39 = ~v38;
    v40 = -v38;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v37 = v41 & *(v31 + 56);
    v42 = v126[11];

    v35 = v39;
    v36 = 0;
  }

  v115 = v35;
  v116 = v34;
  v43 = (v35 + 64) >> 6;
  v117 = v31;
  v123 = v43;
  while (1)
  {
LABEL_40:
    if (v31 < 0)
    {
      if (!sub_19752212C())
      {
        return sub_197416DA8(v31, v34, v115, v36, v37);
      }

      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v48 = v127;
      v46 = v36;
      v47 = v37;
      if (!v127)
      {
        return sub_197416DA8(v31, v34, v115, v36, v37);
      }
    }

    else
    {
      v44 = v36;
      v45 = v37;
      v46 = v36;
      if (!v37)
      {
        while (1)
        {
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_136;
          }

          if (v46 >= v43)
          {
            break;
          }

          v45 = *(v34 + 8 * v46);
          ++v44;
          if (v45)
          {
            goto LABEL_45;
          }
        }

        v37 = 0;
        return sub_197416DA8(v31, v34, v115, v36, v37);
      }

LABEL_45:
      v47 = (v45 - 1) & v45;
      v48 = *(*(v31 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v45)))));

      if (!v48)
      {
        return sub_197416DA8(v31, v34, v115, v36, v37);
      }
    }

    v125 = v47;
    swift_beginAccess();
    v49 = *(v48 + 64);
    v50 = !swift_conformsToProtocol2() || v49 == 0;
    if (!v50 && *(v48 + 169) != 1)
    {
      break;
    }

    v36 = v46;
    v37 = v47;
  }

  swift_beginAccess();
  v52 = *(v48 + 72);
  v51 = *(v48 + 80);
  swift_beginAccess();
  v53 = *a2;
  if (!*(*a2 + 16) || (, v54 = sub_1973F4028(v52, v51), v56 = v55, , (v56 & 1) == 0))
  {
    swift_endAccess();
    sub_1975221EC();

    v110 = *(v48 + 72);
    v109 = *(v48 + 80);

    MEMORY[0x19A8DFF80](v110, v109);

    MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
    swift_beginAccess();
    v111 = *a2;
    type metadata accessor for Schema.Entity();

    v112 = sub_19752160C();
    v114 = v113;

    MEMORY[0x19A8DFF80](v112, v114);

    goto LABEL_143;
  }

  v57 = *(*(v53 + 56) + 8 * v54);
  swift_endAccess();
  swift_beginAccess();
  v58 = *(v57 + 88);
  if ((v58 & 0xC000000000000001) != 0)
  {
    if (v58 < 0)
    {
      v59 = *(v57 + 88);
    }

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v58 = v138;
    v60 = v139;
    v61 = v140;
    v62 = v141;
    v63 = v142;
  }

  else
  {
    v64 = -1 << *(v58 + 32);
    v60 = v58 + 56;
    v65 = ~v64;
    v66 = -v64;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v63 = v67 & *(v58 + 56);

    v61 = v65;
    v62 = 0;
  }

  v118 = v61;
  v119 = 0;
  v120 = 0;
  v68 = (v61 + 64) >> 6;
  v148 = v48;
  v124 = v58;
  while (2)
  {
    v69 = v62;
    v70 = v63;
LABEL_67:
    if (v58 < 0)
    {
      if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v73 = v127, v62 = v69, v63 = v70, !v127))
      {
LABEL_91:
        v58 = v124;
        goto LABEL_92;
      }

      goto LABEL_76;
    }

    v71 = v69;
    v72 = v70;
    v62 = v69;
    if (v70)
    {
LABEL_72:
      v63 = (v72 - 1) & v72;
      v73 = *(*(v58 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v72)))));

      if (!v73)
      {
        goto LABEL_91;
      }

LABEL_76:
      swift_beginAccess();
      v75 = *(v73 + 72);
      v74 = *(v73 + 80);
      swift_beginAccess();
      v76 = v75 == v126[2] && v74 == v126[3];
      if (v76 || (sub_19752282C()) && (*(v73 + 169) & 1) == 0)
      {
        swift_beginAccess();
        v77 = *(v73 + 64);
        v78 = !swift_conformsToProtocol2() || v77 == 0;
        if (!v78 || (*(v73 + 168) & 1) == 0)
        {

          if (!__OFADD__(v120, 1))
          {
            v119 = v73;
            ++v120;
            v58 = v124;
            continue;
          }

LABEL_139:
          __break(1u);
LABEL_140:
          swift_endAccess();
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000018, 0x80000001975297A0);
          MEMORY[0x19A8DFF80](v148, v124);
          MEMORY[0x19A8DFF80](0x202D20726F6620, 0xE700000000000000);
          sub_19752202C();
          sub_19752235C();
          goto LABEL_143;
        }
      }

      v69 = v62;
      v70 = v63;
      v58 = v124;
      goto LABEL_67;
    }

    break;
  }

  while (1)
  {
    v62 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      goto LABEL_135;
    }

    if (v62 >= v68)
    {
      break;
    }

    v72 = *(v60 + 8 * v62);
    ++v71;
    if (v72)
    {
      goto LABEL_72;
    }
  }

  v70 = 0;
LABEL_92:
  sub_197416DA8(v58, v60, v118, v69, v70);
  if (v120 != 1)
  {

    v36 = v46;
    v37 = v125;
    v34 = v116;
    v31 = v117;
    v43 = v123;
    goto LABEL_40;
  }

  v79 = v126[11];
  if ((v79 & 0xC000000000000001) != 0)
  {
    if (v79 < 0)
    {
      v80 = v126[11];
    }

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v81 = v143;
    v82 = v144;
    v83 = v145;
    i = v146;
    v85 = v147;
  }

  else
  {
    v86 = -1 << *(v79 + 32);
    v82 = v79 + 56;
    v83 = ~v86;
    v87 = -v86;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    v85 = v88 & *(v79 + 56);

    i = 0;
  }

  v122 = 0;
  v124 = v81;
  while (2)
  {
    v89 = i;
    v90 = v85;
LABEL_104:
    v43 = v123;
    if (v81 < 0)
    {
      if (!sub_19752212C())
      {
        break;
      }

      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v93 = v127;
      i = v89;
      v85 = v90;
      if (!v127)
      {
        break;
      }

      goto LABEL_113;
    }

    v91 = v89;
    v92 = v90;
    for (i = v89; !v92; ++v91)
    {
      i = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_137;
      }

      if (i >= ((v83 + 64) >> 6))
      {
        v90 = 0;
        goto LABEL_125;
      }

      v92 = *(v82 + 8 * i);
    }

    v85 = (v92 - 1) & v92;
    v93 = *(*(v81 + 48) + ((i << 9) | (8 * __clz(__rbit64(v92)))));

    if (v93)
    {
LABEL_113:
      swift_beginAccess();
      if (*(v93 + 72) == *(v148 + 72) && *(v93 + 80) == *(v148 + 80))
      {

        v81 = v124;
LABEL_120:
        if (__OFADD__(v122++, 1))
        {
          goto LABEL_138;
        }

        continue;
      }

      v95 = sub_19752282C();

      v89 = i;
      v90 = v85;
      v81 = v124;
      if (v95)
      {
        goto LABEL_120;
      }

      goto LABEL_104;
    }

    break;
  }

  v81 = v124;
LABEL_125:
  sub_197416DA8(v81, v82, v83, v89, v90);
  if (v122 != 1)
  {

    v36 = v46;
    v37 = v125;
    v34 = v116;
    v31 = v117;
    goto LABEL_40;
  }

  v34 = v116;
  v31 = v117;
  if (v119)
  {
    swift_beginAccess();
    v97 = *(v148 + 48);
    if (v97)
    {
      swift_beginAccess();
      v98 = v119[6];
      if (v98)
      {

        v99 = sub_1973F8364(v97);
        v101 = v100;
        swift_beginAccess();
        v102 = v119[13];
        v119[12] = v99;
        v119[13] = v101;

        swift_beginAccess();
        v103 = v119[14];
        v119[14] = v97;

        v104 = sub_1973F8364(v98);
        v106 = v105;

        swift_beginAccess();
        v107 = *(v148 + 104);
        *(v148 + 96) = v104;
        *(v148 + 104) = v106;

        swift_beginAccess();
        v108 = *(v148 + 112);
        *(v148 + 112) = v98;

        v36 = v46;
        v37 = v125;
        v43 = v123;
        goto LABEL_40;
      }
    }
  }

LABEL_143:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974F5E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6)
{
  v8 = sub_1973F7BBC(a2, a5, a6);
  v10 = v9;
  swift_beginAccess();
  v11 = *(a3 + 104);
  if (*(v11 + 16) && (v12 = sub_1973F4028(v8, v10), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    swift_beginAccess();
    v15 = *(a4 + 48);
    if (v15)
    {

      v16 = sub_1973F8364(v15);
      v18 = v17;
      swift_beginAccess();
      v19 = v14[13];
      v14[12] = v16;
      v14[13] = v18;

      swift_beginAccess();
      v20 = v14[14];
      v14[14] = v15;
    }
  }

  else
  {
    swift_endAccess();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

void *Schema.Entity.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  swift_weakDestroy();
  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[14];

  v11 = v0[15];

  v12 = v0[17];

  v13 = v0[20];

  v14 = v0[21];

  v15 = v0[22];

  return v0;
}

uint64_t Schema.Entity.__deallocating_deinit()
{
  Schema.Entity.deinit();

  return swift_deallocClassInstance();
}

uint64_t Schema.Entity.hashValue.getter()
{
  sub_197522A5C();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_1974F6138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Schema.Entity.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1974F61B4()
{
  v1 = *v0;
  sub_197522A5C();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_1974F6228()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_19752180C();
}

uint64_t sub_1974F6294()
{
  v1 = *v0;
  sub_197522A5C();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_1974F6334(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1975220EC();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_19752213C();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

char *sub_1974F6438(uint64_t a1, char *a2, uint64_t (*a3)(void *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1975220EC();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(v8, a2 + 32, v6, a1);
    sub_197416DA8(v8[0], v8[1], v8[2], v8[3], v8[4]);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1974F64F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_4(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1974F65D0(void *a1, int64_t a2, char a3)
{
  result = sub_1974F6714(a1, a2, a3, *v3, &qword_1EAF2BCA8, &qword_197532038, &qword_1EAF2B970, &unk_19752FC90);
  *v3 = result;
  return result;
}

void *sub_1974F6610(void *a1, int64_t a2, char a3)
{
  result = sub_1974F6848(a1, a2, a3, *v3, &qword_1EAF2B1C0, &unk_19752D350, &qword_1EAF2B1C8, &unk_19752EA30);
  *v3 = result;
  return result;
}

void *sub_1974F6650(void *a1, int64_t a2, char a3)
{
  result = sub_1974F6714(a1, a2, a3, *v3, &qword_1EAF2BCB8, &unk_197532040, &qword_1EAF2AF50, &unk_19752C6C0);
  *v3 = result;
  return result;
}

void *sub_1974F6690(void *a1, int64_t a2, char a3)
{
  result = sub_1974F6848(a1, a2, a3, *v3, &qword_1EAF2B330, &unk_19752FCE0, &qword_1EAF2B338, &qword_19752D4E0);
  *v3 = result;
  return result;
}

char *sub_1974F66D0(char *a1, int64_t a2, char a3)
{
  result = sub_1974F6990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1974F6714(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_4(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1974F6848(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_4(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1974F6990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1974F6AA0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1975220EC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_19752224C();
  *v1 = result;
  return result;
}

uint64_t sub_1974F6B40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1975227BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
        v5 = sub_197521A2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1974F6E0C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1974F6C48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1974F6C48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v28 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      sub_1973FA430(v5, &v25);
      sub_1973FA430(v5 - 40, v22);
      v7 = v26;
      v8 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, v26);
      v9 = (*(v8 + 32))(v7, v8);
      v11 = v10;
      v13 = v23;
      v12 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      if (v9 == (*(v12 + 32))(v13, v12) && v11 == v14)
      {

        __swift_destroy_boxed_opaque_existential_1Tm_5(v22);
        result = __swift_destroy_boxed_opaque_existential_1Tm_5(&v25);
LABEL_5:
        a3 = v28 + 1;
        v5 = v21 + 40;
        v6 = v20 - 1;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_19752282C();

      __swift_destroy_boxed_opaque_existential_1Tm_5(v22);
      result = __swift_destroy_boxed_opaque_existential_1Tm_5(&v25);
      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1973FA670(v5, &v25);
      v17 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v17;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1973FA670(&v25, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1974F6E0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v105 = v5;
      v129 = v8;
      v106 = *(v8 + 2);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v107 = *&v8[16 * v106];
          v5 = *&v8[16 * v106 + 24];
          sub_1974F76D0((*a3 + 40 * v107), (*a3 + 40 * *&v8[16 * v106 + 16]), *a3 + 40 * v5, v6);
          if (v105)
          {
          }

          if (v5 < v107)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1974DAF28(v8);
          }

          if (v106 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v108 = &v8[16 * v106];
          *v108 = v107;
          *(v108 + 1) = v5;
          v129 = v8;
          result = sub_1974DAE9C(v106 - 1);
          v8 = v129;
          v106 = *(v129 + 2);
          if (v106 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_1974DAF28(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    v121 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_1973FA430(*a3 + 40 * v7, &v126);
      v113 = v9;
      sub_1973FA430(v10 + 40 * v9, v123);
      v11 = v127;
      v12 = v128;
      __swift_project_boxed_opaque_existential_1(&v126, v127);
      v13 = (*(v12 + 32))(v11, v12);
      v15 = v14;
      v16 = v124;
      v17 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v19 = v13 == (*(v17 + 32))(v16, v17) && v15 == v18;
      v110 = v5;
      if (v19)
      {
        v119 = 0;
      }

      else
      {
        v119 = sub_19752282C();
      }

      __swift_destroy_boxed_opaque_existential_1Tm_5(v123);
      result = __swift_destroy_boxed_opaque_existential_1Tm_5(&v126);
      v20 = v113 + 2;
      v21 = v10 + 40 * v113 + 80;
      v117 = v6;
      v22 = 40 * v113 + 40;
      v8 = v121;
      do
      {
        v24 = v20;
        v25 = v7;
        v5 = v22;
        if (v20 >= v6)
        {
          break;
        }

        sub_1973FA430(v21, &v126);
        sub_1973FA430(v21 - 40, v123);
        v26 = v127;
        v27 = v128;
        __swift_project_boxed_opaque_existential_1(&v126, v127);
        v28 = (*(v27 + 32))(v26, v27);
        v30 = v29;
        v32 = v124;
        v31 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v34 = v28 == (*(v31 + 32))(v32, v31) && v30 == v33;
        v23 = v34 ? 0 : sub_19752282C();

        __swift_destroy_boxed_opaque_existential_1Tm_5(v123);
        result = __swift_destroy_boxed_opaque_existential_1Tm_5(&v126);
        v20 = v24 + 1;
        v21 += 40;
        v7 = v25 + 1;
        v22 = v5 + 40;
        v8 = v121;
        v6 = v117;
      }

      while (((v119 ^ v23) & 1) == 0);
      if (v119)
      {
        v9 = v113;
        if (v24 < v113)
        {
          goto LABEL_134;
        }

        if (v113 < v24)
        {
          v6 = v113;
          v35 = 40 * v113;
          do
          {
            if (v6 != v25)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v38 = v37 + v35;
              v39 = v37 + v5;
              sub_1973FA670((v37 + v35), &v126);
              v40 = *(v39 + 32);
              v41 = *(v39 + 16);
              *v38 = *v39;
              *(v38 + 16) = v41;
              *(v38 + 32) = v40;
              result = sub_1973FA670(&v126, v39);
            }

            ++v6;
            v5 -= 40;
            v35 += 40;
          }

          while (v6 < v25--);
        }

        v7 = v24;
        v5 = v110;
      }

      else
      {
        v7 = v24;
        v5 = v110;
        v9 = v113;
      }
    }

    v42 = a3[1];
    if (v7 < v42)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_197477094(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_197477094((v58 > 1), v59 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v60;
    v61 = &v8[16 * v59];
    *(v61 + 4) = v9;
    *(v61 + 5) = v7;
    v62 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_73:
          if (v67)
          {
            goto LABEL_121;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_124;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_128;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_87:
        if (v85)
        {
          goto LABEL_123;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_126;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_94:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
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

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v102 = *&v8[16 * v101 + 32];
        v103 = *&v8[16 * v63 + 40];
        sub_1974F76D0((*a3 + 40 * v102), (*a3 + 40 * *&v8[16 * v63 + 32]), *a3 + 40 * v103, v62);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1974DAF28(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v104 = &v8[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v129 = v8;
        result = sub_1974DAE9C(v63);
        v8 = v129;
        v60 = *(v129 + 2);
        v7 = v6;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_119;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_120;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_122;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_125;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_129;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v43 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v43)
  {
    goto LABEL_53;
  }

  v111 = v5;
  v44 = *a3;
  v45 = *a3 + 40 * v7;
  v114 = v9;
  v115 = v43;
  v46 = v9 - v7;
LABEL_42:
  v118 = v45;
  v120 = v7;
  v116 = v46;
  while (1)
  {
    sub_1973FA430(v45, &v126);
    sub_1973FA430(v45 - 40, v123);
    v47 = v127;
    v48 = v128;
    __swift_project_boxed_opaque_existential_1(&v126, v127);
    v49 = (*(v48 + 32))(v47, v48);
    v51 = v50;
    v52 = v124;
    v6 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    if (v49 == (*(v6 + 32))(v52, v6) && v51 == v53)
    {

      __swift_destroy_boxed_opaque_existential_1Tm_5(v123);
      __swift_destroy_boxed_opaque_existential_1Tm_5(&v126);
LABEL_41:
      v7 = v120 + 1;
      v45 = v118 + 40;
      v46 = v116 - 1;
      if (v120 + 1 == v115)
      {
        v7 = v115;
        v5 = v111;
        v8 = v121;
        v9 = v114;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v55 = sub_19752282C();

    __swift_destroy_boxed_opaque_existential_1Tm_5(v123);
    result = __swift_destroy_boxed_opaque_existential_1Tm_5(&v126);
    if ((v55 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v44)
    {
      break;
    }

    sub_1973FA670(v45, &v126);
    v56 = *(v45 - 24);
    *v45 = *(v45 - 40);
    *(v45 + 16) = v56;
    *(v45 + 32) = *(v45 - 8);
    sub_1973FA670(&v126, v45 - 40);
    v45 -= 40;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_41;
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

uint64_t sub_1974F76D0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v58 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v28 = v7;
      v51 = v4;
      do
      {
        __dst = v28;
        v29 = (v28 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          sub_1973FA430(v30, v55);
          v33 = v29;
          sub_1973FA430(v29, v52);
          v34 = v56;
          v35 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          v36 = (*(v35 + 32))(v34, v35);
          v38 = v37;
          v40 = v53;
          v39 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          v42 = v36 == (*(v39 + 32))(v40, v39) && v38 == v41;
          v43 = v42 ? 0 : sub_19752282C();

          __swift_destroy_boxed_opaque_existential_1Tm_5(v52);
          __swift_destroy_boxed_opaque_existential_1Tm_5(v55);
          if (v43)
          {
            break;
          }

          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v32 = v30 > v51;
          v30 -= 40;
          v29 = v33;
          if (!v32)
          {
            v58 = (v31 + 40);
            v7 = __dst;
            v4 = v51;
            goto LABEL_43;
          }
        }

        v7 = v33;
        if ((v5 + 40) != __dst)
        {
          v46 = *v33;
          v47 = *(v33 + 1);
          *(v5 + 32) = *(v33 + 4);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v28 = v7;
      }

      while (v7 > __src);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_1973FA430(v7, v55);
        sub_1973FA430(v4, v52);
        v14 = v56;
        v15 = v57;
        __swift_project_boxed_opaque_existential_1(v55, v56);
        v16 = (*(v15 + 32))(v14, v15);
        v18 = v17;
        v19 = v53;
        v20 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        v22 = v16 == (*(v20 + 32))(v19, v20) && v18 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_19752282C();

        __swift_destroy_boxed_opaque_existential_1Tm_5(v52);
        __swift_destroy_boxed_opaque_existential_1Tm_5(v55);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm_5(v52);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v55);
LABEL_15:
      v24 = v4;
      v22 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__src + 4) = *(v24 + 4);
      *__src = v25;
      *(__src + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v48 = (v58 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v48])
  {
    memmove(v7, v4, 40 * v48);
  }

  return 1;
}

uint64_t sub_1974F7B2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1975220EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1975220EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19745B31C(&qword_1EAF2BCB0, &qword_1EAF2BAE8, &qword_1975309C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAE8, &qword_1975309C8);
            v9 = sub_1974804BC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Schema.Entity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1974F7CCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1975220EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1975220EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19745B31C(&qword_1EAF2B6C0, &qword_1EAF2B6B8, &qword_19752F3A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6B8, &qword_19752F3A0);
            v9 = sub_197480544(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1973FF6C8(0, &qword_1ED7C9BA0, 0x1E695D5B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1974F7E80(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1975220EC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B180, &qword_19752D310);
      result = sub_1975221CC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_1975220EC();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v40 = v1;
  v41 = v1 & 0xC000000000000001;
  v37 = v1 + 32;
  v38 = v1 & 0xFFFFFFFFFFFFFF8;
  v39 = v5;
  while (1)
  {
    if (v41)
    {
      result = MEMORY[0x19A8E0960](v6, v1);
      v8 = result;
      v9 = __OFADD__(v6, 1);
      v10 = v6 + 1;
      if (v9)
      {
        break;
      }

      goto LABEL_16;
    }

    if (v6 >= *(v38 + 16))
    {
      goto LABEL_45;
    }

    v8 = *(v37 + 8 * v6);

    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (v9)
    {
      break;
    }

LABEL_16:
    v42 = v10;
    v11 = *(v3 + 40);
    sub_197522A5C();
    swift_beginAccess();
    v12 = v8[2];
    v13 = v8[3];

    sub_19752180C();

    v14 = sub_197522A9C();
    v15 = -1 << *(v3 + 32);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    result = swift_beginAccess();
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    v18 = *(v7 + 8 * (v16 >> 6));
    v19 = 1 << v16;
    if (((1 << v16) & v18) == 0)
    {
      goto LABEL_39;
    }

    v20 = ~v15;
    do
    {
      v21 = *(*(v3 + 48) + 8 * v16);
      swift_beginAccess();
      v22 = v21[2] == v8[2] && v21[3] == v8[3];
      if (v22 || (result = sub_19752282C(), (result & 1) != 0))
      {
        result = swift_beginAccess();
        v23 = v21[6];
        v24 = v8[6];
        if (v23)
        {
          if (!v24)
          {
            goto LABEL_19;
          }

          if (v21[5] != v8[5] || v23 != v24)
          {
            result = sub_19752282C();
            if ((result & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else if (v24)
        {
          goto LABEL_19;
        }

        swift_beginAccess();
        v26 = v21[10];
        v27 = v8[10];

        v28 = sub_197415D98(v26, v27);

        if ((v28 & 1) == 0)
        {
          goto LABEL_18;
        }

        swift_beginAccess();
        v29 = v21[11];
        v30 = v8[11];

        v31 = sub_19741616C(v29, v30);

        if (v31)
        {
          swift_beginAccess();
          v32 = v21[4];
          v33 = v8[4];

          v34 = sub_197416704(v32, v33);

          if (v34)
          {

            v5 = v39;
            v1 = v40;
            goto LABEL_41;
          }
        }

        else
        {
LABEL_18:
        }
      }

LABEL_19:
      v16 = (v16 + 1) & v20;
      v17 = v16 >> 6;
      v18 = *(v7 + 8 * (v16 >> 6));
      v19 = 1 << v16;
    }

    while (((1 << v16) & v18) != 0);
    v5 = v39;
    v1 = v40;
LABEL_39:
    *(v7 + 8 * v17) = v19 | v18;
    *(*(v3 + 48) + 8 * v16) = v8;
    v35 = *(v3 + 16);
    v9 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v9)
    {
      goto LABEL_44;
    }

    *(v3 + 16) = v36;
LABEL_41:
    v6 = v42;
    if (v42 == v5)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_1974F828C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1975220EC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B350, &qword_19752D4F8);
      result = sub_1975221CC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1975220EC();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v38 = v1;
  v39 = v1 & 0xC000000000000001;
  v34 = v1 + 32;
  v35 = v1 & 0xFFFFFFFFFFFFFF8;
  v36 = v5;
  v37 = v3;
  while (v39)
  {
    result = MEMORY[0x19A8E0960](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_53;
    }

LABEL_17:
    v10 = *(v3 + 40);
    sub_197522A5C();
    swift_beginAccess();
    v11 = v8[2];
    v12 = v8[3];

    sub_19752180C();

    result = sub_197522A9C();
    v13 = -1 << *(v3 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    v16 = *(v7 + 8 * (v14 >> 6));
    v17 = 1 << v14;
    if (((1 << v14) & v16) != 0)
    {
      v18 = ~v13;
      v19 = *(v3 + 48);
      swift_beginAccess();
      swift_beginAccess();
      while (1)
      {
        v20 = *(v19 + 8 * v14);
        swift_beginAccess();
        v21 = v20[2] == v8[2] && v20[3] == v8[3];
        if (v21 || (result = sub_19752282C(), (result & 1) != 0))
        {
          result = swift_beginAccess();
          v22 = v20[6];
          v23 = v8[6];
          v24 = *(v22 + 16);
          if (v24 == *(v23 + 16))
          {
            if (v24)
            {
              v25 = v22 == v23;
            }

            else
            {
              v25 = 1;
            }

            if (!v25)
            {
              v26 = (v23 + 68);
              v27 = (v22 + 68);
              while (v24)
              {
                if (*(v27 - 4) != *(v26 - 4))
                {
                  goto LABEL_20;
                }

                if ((*(v27 - 2) ^ *(v26 - 2)))
                {
                  goto LABEL_20;
                }

                if ((*v27 ^ *v26))
                {
                  goto LABEL_20;
                }

                if ((*(v27 - 3) ^ *(v26 - 3)))
                {
                  goto LABEL_20;
                }

                if ((*(v27 - 1) ^ *(v26 - 1)))
                {
                  goto LABEL_20;
                }

                v28 = *(v27 - 36);
                v29 = *(v26 - 36);
                if ((v28 ^ v29))
                {
                  goto LABEL_20;
                }

                if ((v28 & v29) == 1)
                {
                  v30 = *(v27 - 12);
                  v31 = *(v26 - 12);
                  if (v30)
                  {
                    if (!v31)
                    {
                      goto LABEL_20;
                    }

                    result = *(v27 - 20);
                    if (result != *(v26 - 20) || v30 != v31)
                    {
                      result = sub_19752282C();
                      if ((result & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }
                  }

                  else if (v31)
                  {
                    goto LABEL_20;
                  }
                }

                v27 += 40;
                v26 += 40;
                if (!--v24)
                {
                  goto LABEL_19;
                }
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_19:
            result = swift_beginAccess();
            if (v20[7] == v8[7])
            {
              break;
            }
          }
        }

LABEL_20:
        v14 = (v14 + 1) & v18;
        v15 = v14 >> 6;
        v16 = *(v7 + 8 * (v14 >> 6));
        v17 = 1 << v14;
        if ((v16 & (1 << v14)) == 0)
        {
          v3 = v37;
          v1 = v38;
          v5 = v36;
          goto LABEL_49;
        }
      }

      v3 = v37;
      v1 = v38;
      v5 = v36;
      if (v6 == v36)
      {
        return v3;
      }
    }

    else
    {
LABEL_49:
      *(v7 + 8 * v15) = v16 | v17;
      *(*(v3 + 48) + 8 * v14) = v8;
      v32 = *(v3 + 16);
      v9 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v9)
      {
        goto LABEL_54;
      }

      *(v3 + 16) = v33;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *(v35 + 16))
  {
    goto LABEL_55;
  }

  v8 = *(v34 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1974F864C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1975220EC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B378, &qword_19752D528);
      v3 = sub_1975221CC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    result = *(v4 + 16);
    if (!result)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_1975220EC();
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  v90 = result;
  if ((v1 & 0xC000000000000001) == 0)
  {
    v49 = 0;
    v50 = 0x6E6F697463416F6ELL;
    v88 = v1 + 32;
    v89 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v49 == v89)
      {
        goto LABEL_153;
      }

      v51 = *(v88 + 8 * v49);
      v52 = *(v3 + 40);
      sub_197522A5C();
      swift_beginAccess();
      v53 = *(v51 + 16);
      v54 = *(v51 + 24);

      sub_19752180C();

      v55 = sub_197522A9C();
      v56 = -1 << *(v3 + 32);
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      result = swift_beginAccess();
      v57 = v55 & ~v56;
      v58 = v57 >> 6;
      v59 = *(v6 + 8 * (v57 >> 6));
      v60 = 1 << v57;
      if (((1 << v57) & v59) == 0)
      {
        goto LABEL_143;
      }

      v92 = v49;
      v61 = ~v56;
      do
      {
        v62 = *(*(v3 + 48) + 8 * v57);
        swift_beginAccess();
        v63 = *(v62 + 16) == *(v51 + 16) && *(v62 + 24) == *(v51 + 24);
        if (v63 || (result = sub_19752282C(), (result & 1) != 0))
        {
          result = swift_beginAccess();
          v64 = *(v62 + 56);
          v65 = *(v51 + 56);
          v66 = *(v64 + 16);
          if (v66 == *(v65 + 16))
          {
            if (v66)
            {
              v67 = v64 == v65;
            }

            else
            {
              v67 = 1;
            }

            if (v67)
            {
LABEL_100:
              result = swift_beginAccess();
              if (*(v62 + 64) == *(v51 + 64))
              {
                if (swift_beginAccess(), *(v62 + 72) == *(v51 + 72)) && *(v62 + 80) == *(v51 + 80) || (result = sub_19752282C(), (result))
                {
                  swift_beginAccess();
                  v70 = *(v62 + 88);
                  if (v70 > 1)
                  {
                    if (v70 == 2)
                    {
                      v71 = 0x65646163736163;
                    }

                    else
                    {
                      v71 = 2037278052;
                    }

                    if (v70 == 2)
                    {
                      v72 = 0xE700000000000000;
                    }

                    else
                    {
                      v72 = 0xE400000000000000;
                    }
                  }

                  else
                  {
                    if (*(v62 + 88))
                    {
                      v71 = 0x7966696C6C756ELL;
                    }

                    else
                    {
                      v71 = v50;
                    }

                    if (*(v62 + 88))
                    {
                      v72 = 0xE700000000000000;
                    }

                    else
                    {
                      v72 = 0xE800000000000000;
                    }
                  }

                  v73 = *(v51 + 88);
                  v74 = 2037278052;
                  if (v73 == 2)
                  {
                    v74 = 0x65646163736163;
                  }

                  v75 = 0xE400000000000000;
                  if (v73 == 2)
                  {
                    v75 = 0xE700000000000000;
                  }

                  if (*(v51 + 88))
                  {
                    v76 = 0x7966696C6C756ELL;
                  }

                  else
                  {
                    v76 = v50;
                  }

                  v77 = 0xE800000000000000;
                  if (*(v51 + 88))
                  {
                    v77 = 0xE700000000000000;
                  }

                  if (*(v51 + 88) <= 1u)
                  {
                    v78 = v76;
                  }

                  else
                  {
                    v78 = v74;
                  }

                  if (*(v51 + 88) <= 1u)
                  {
                    v79 = v77;
                  }

                  else
                  {
                    v79 = v75;
                  }

                  v80 = v50;
                  if (v71 == v78 && v72 == v79)
                  {
                  }

                  else
                  {
                    v81 = sub_19752282C();

                    if ((v81 & 1) == 0)
                    {
                      goto LABEL_84;
                    }
                  }

                  swift_beginAccess();
                  v82 = *(v62 + 104);
                  v83 = *(v51 + 104);
                  if (!v82)
                  {
                    if (!v83)
                    {
                      goto LABEL_147;
                    }

LABEL_84:

                    v50 = v80;
                    goto LABEL_85;
                  }

                  if (!v83)
                  {
                    goto LABEL_84;
                  }

                  if (*(v62 + 96) == *(v51 + 96) && v82 == v83)
                  {
LABEL_147:

                    v49 = v92;
                    v50 = v80;
                    goto LABEL_145;
                  }

                  v84 = sub_19752282C();

                  v50 = v80;
                  if (v84)
                  {

                    v49 = v92;
                    goto LABEL_145;
                  }
                }
              }
            }

            else
            {
              v68 = (v64 + 32);
              v69 = (v65 + 32);
              while (1)
              {
                if (!v66)
                {
                  goto LABEL_150;
                }

                if (*v68 != *v69)
                {
                  break;
                }

                ++v68;
                ++v69;
                if (!--v66)
                {
                  goto LABEL_100;
                }
              }
            }
          }
        }

LABEL_85:
        v57 = (v57 + 1) & v61;
        v58 = v57 >> 6;
        v59 = *(v6 + 8 * (v57 >> 6));
        v60 = 1 << v57;
      }

      while (((1 << v57) & v59) != 0);
      v49 = v92;
LABEL_143:
      *(v6 + 8 * v58) = v60 | v59;
      *(*(v3 + 48) + 8 * v57) = v51;
      v85 = *(v3 + 16);
      v10 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v10)
      {
        goto LABEL_154;
      }

      *(v3 + 16) = v86;
LABEL_145:
      if (++v49 == v90)
      {
        return v3;
      }
    }
  }

  v7 = 0;
  v8 = 0x6E6F697463416F6ELL;
  v9 = 0x65646163736163;
  v87 = v1;
  while (1)
  {
    result = MEMORY[0x19A8E0960](v7, v1);
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      goto LABEL_151;
    }

    v12 = result;
    v91 = v11;
    v13 = *(v3 + 40);
    sub_197522A5C();
    swift_beginAccess();
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);

    sub_19752180C();

    v16 = sub_197522A9C();
    v17 = -1 << *(v3 + 32);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    result = swift_beginAccess();
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = *(v6 + 8 * (v18 >> 6));
    v21 = 1 << v18;
    if (((1 << v18) & v20) != 0)
    {
      break;
    }

LABEL_74:
    *(v6 + 8 * v19) = v21 | v20;
    *(*(v3 + 48) + 8 * v18) = v12;
    v47 = *(v3 + 16);
    v10 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    v7 = v91;
    if (v10)
    {
      goto LABEL_152;
    }

    *(v3 + 16) = v48;
LABEL_76:
    v1 = v87;
    if (v7 == v90)
    {
      return v3;
    }
  }

  v22 = ~v17;
  while (1)
  {
    v23 = *(*(v3 + 48) + 8 * v18);
    swift_beginAccess();
    if (*(v23 + 16) != *(v12 + 16) || *(v23 + 24) != *(v12 + 24))
    {
      result = sub_19752282C();
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    result = swift_beginAccess();
    v25 = *(v23 + 56);
    v26 = *(v12 + 56);
    v27 = *(v25 + 16);
    if (v27 != *(v26 + 16))
    {
      goto LABEL_16;
    }

    if (v27 && v25 != v26)
    {
      break;
    }

LABEL_31:
    result = swift_beginAccess();
    if (*(v23 + 64) != *(v12 + 64))
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    if (*(v23 + 72) != *(v12 + 72) || *(v23 + 80) != *(v12 + 80))
    {
      result = sub_19752282C();
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    swift_beginAccess();
    v31 = *(v23 + 88);
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v32 = v9;
      }

      else
      {
        v32 = 2037278052;
      }

      if (v31 == 2)
      {
        v34 = 0xE700000000000000;
      }

      else
      {
        v34 = 0xE400000000000000;
      }

      v33 = 0xE800000000000000;
    }

    else
    {
      if (*(v23 + 88))
      {
        v32 = 0x7966696C6C756ELL;
      }

      else
      {
        v32 = v8;
      }

      v33 = 0xE800000000000000;
      if (*(v23 + 88))
      {
        v34 = 0xE700000000000000;
      }

      else
      {
        v34 = 0xE800000000000000;
      }
    }

    v35 = *(v12 + 88);
    v36 = v9;
    v37 = 2037278052;
    if (v35 == 2)
    {
      v37 = v9;
    }

    v38 = 0xE400000000000000;
    if (v35 == 2)
    {
      v38 = 0xE700000000000000;
    }

    v39 = v8;
    if (*(v12 + 88))
    {
      v40 = 0x7966696C6C756ELL;
    }

    else
    {
      v40 = v8;
    }

    if (*(v12 + 88))
    {
      v33 = 0xE700000000000000;
    }

    if (*(v12 + 88) <= 1u)
    {
      v41 = v40;
    }

    else
    {
      v41 = v37;
    }

    if (*(v12 + 88) <= 1u)
    {
      v42 = v33;
    }

    else
    {
      v42 = v38;
    }

    if (v32 == v41 && v34 == v42)
    {

      v8 = v39;
      v9 = v36;
      v6 = v3 + 56;
    }

    else
    {
      v43 = sub_19752282C();

      v8 = v39;
      v9 = v36;
      v6 = v3 + 56;
      if ((v43 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    swift_beginAccess();
    v44 = *(v23 + 104);
    v45 = *(v12 + 104);
    if (!v44)
    {
      if (!v45)
      {
        goto LABEL_78;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (!v45)
    {
      goto LABEL_15;
    }

    if (*(v23 + 96) == *(v12 + 96) && v44 == v45)
    {
LABEL_78:
      swift_unknownObjectRelease();

      v7 = v91;
      goto LABEL_76;
    }

    v46 = sub_19752282C();

    if (v46)
    {
      swift_unknownObjectRelease();
      v7 = v91;
      goto LABEL_76;
    }

LABEL_16:
    v18 = (v18 + 1) & v22;
    v19 = v18 >> 6;
    v20 = *(v6 + 8 * (v18 >> 6));
    v21 = 1 << v18;
    if (((1 << v18) & v20) == 0)
    {
      goto LABEL_74;
    }
  }

  v29 = (v25 + 32);
  v30 = (v26 + 32);
  while (v27)
  {
    if (*v29 != *v30)
    {
      goto LABEL_16;
    }

    ++v29;
    ++v30;
    if (!--v27)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

unint64_t sub_1974F8FFC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1975220EC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B210, &qword_19752D3A0);
      result = sub_1975221CC();
      v3 = result;
      v19 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1975220EC();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v19 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v18 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x19A8E0960](v5, v19);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    v9 = *(v3 + 40);
    sub_19752202C();
    result = sub_1975216AC();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v6 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      while (1)
      {
        v20 = *(*(v3 + 48) + 8 * v11);
        result = sub_19752173C();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v6 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v4 = v18;
      if (v5 == v18)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v7;
      v16 = *(v3 + 16);
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v17;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v19 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1974F923C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A8E0310](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_197414EA0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1974F92D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_1975220EC();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1974F6AA0(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_19752202C();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1974F93D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E65627573 && a2 == 0xEB00000000736569 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657265707573 && a2 == 0xEF656D614E797469 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001975295D0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001975295F0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_19752282C();

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

uint64_t sub_1974F9648(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1974FA3A4();
  result = MEMORY[0x19A8E0310](v2, &type metadata for ModelContext.AnyPersistentObject, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      swift_unknownObjectRetain();
      sub_1974327FC(&v8, v7, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1974F96E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_197405108();
  result = MEMORY[0x19A8E0310](v2, &type metadata for PersistentIdentifier, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      sub_1974028EC(v6, v7);
      sub_19742AE44(&v8, v6, v7);
      sub_1974028C8(v8, v9);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1974F9780(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1975220EC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for Schema.Entity();
  v6 = sub_1973FA628(&qword_1EAF2B670, v5, type metadata accessor for Schema.Entity);
  result = MEMORY[0x19A8E0310](v3, v4, v6);
  v13 = result;
  if (!i)
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8E0960](i, a1);
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v13;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = *(a1 + 8 * i + 32);

        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_19747D134(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }
  }

  v9 = result;
  v8 = sub_1975220EC();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1974F98E8()
{
  result = qword_1EAF2BC18;
  if (!qword_1EAF2BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC18);
  }

  return result;
}

unint64_t sub_1974F993C()
{
  result = qword_1EAF2BC28;
  if (!qword_1EAF2BC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC20, &qword_197531D40);
    sub_1973FA628(&qword_1ED7CA310, 255, type metadata accessor for Schema.Attribute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC28);
  }

  return result;
}

unint64_t sub_1974F99F4()
{
  result = qword_1EAF2BC38;
  if (!qword_1EAF2BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC30, &qword_197531D48);
    sub_1973FA628(&qword_1ED7C9198, 255, type metadata accessor for Schema.Relationship);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC38);
  }

  return result;
}

unint64_t sub_1974F9AAC()
{
  result = qword_1EAF2BC48;
  if (!qword_1EAF2BC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC40, &qword_197531D50);
    sub_1973FA628(&qword_1EAF2BAF8, v1, type metadata accessor for Schema.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC48);
  }

  return result;
}

unint64_t sub_1974F9B60()
{
  result = qword_1EAF2BC58;
  if (!qword_1EAF2BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC40, &qword_197531D50);
    sub_1973FA628(&qword_1EAF2BB18, v1, type metadata accessor for Schema.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC58);
  }

  return result;
}

unint64_t sub_1974F9C14()
{
  result = qword_1EAF2BC60;
  if (!qword_1EAF2BC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC20, &qword_197531D40);
    sub_1973FA628(&qword_1ED7CA328, 255, type metadata accessor for Schema.Attribute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC60);
  }

  return result;
}

unint64_t sub_1974F9CCC()
{
  result = qword_1EAF2BC68;
  if (!qword_1EAF2BC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC30, &qword_197531D48);
    sub_1973FA628(qword_1ED7C91B0, 255, type metadata accessor for Schema.Relationship);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC68);
  }

  return result;
}

uint64_t _s6EntityC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6EntityC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1974F9FB0()
{
  result = qword_1EAF2BC78;
  if (!qword_1EAF2BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC78);
  }

  return result;
}

unint64_t sub_1974FA008()
{
  result = qword_1EAF2BC80;
  if (!qword_1EAF2BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC80);
  }

  return result;
}

unint64_t sub_1974FA060()
{
  result = qword_1EAF2BC88;
  if (!qword_1EAF2BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC88);
  }

  return result;
}

void sub_1974FA0B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1975220EC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC90, &qword_197532028);
      v3 = sub_1975221CC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1975220EC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x19A8E0960](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_197521F2C();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1973FF6C8(0, qword_1ED7C7910, 0x1E695D630);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_197521F3C();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_197521F2C();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1973FF6C8(0, qword_1ED7C7910, 0x1E695D630);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_197521F3C();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_1974FA3A4()
{
  result = qword_1ED7C7140;
  if (!qword_1ED7C7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7140);
  }

  return result;
}

void static Schema.Attribute.Option.externalStorage.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 256;
  *(a1 + 34) = 0;
}

BOOL SchemaProperty.isOptional.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 80))();
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

BOOL Schema.Relationship.isUnique.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != 1);
  return v4 != 0;
}

uint64_t Schema.Attribute.__allocating_init(name:originalName:options:valueType:defaultValue:hashModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v17 = v16;
  *(v16 + 80) = 0u;
  *(v16 + 64) = 0u;
  v18 = v16 + 64;
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  *(v16 + 104) = 0;
  v19 = (v16 + 104);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  if (a4)
  {
    v20 = a3;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (a4)
  {
    v21 = a4;
  }

  *(v16 + 32) = v20;
  *(v16 + 40) = v21;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  swift_beginAccess();
  sub_1973F7958(a7, v18);
  swift_endAccess();
  swift_beginAccess();
  *v19 = a8;
  *(v17 + 112) = a9;
  if (swift_conformsToProtocol2())
  {
    v22 = a6 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  *(v17 + 96) = v23;
  sub_1973F710C();
  sub_1973F9E68(a7);
  return v17;
}

uint64_t Schema.CompositeAttribute.__allocating_init(name:originalName:options:valueType:defaultValue:hashModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t sub_1974FA6E8()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  sub_19752228C();
  sub_197521AAC();

  if (!sub_197521A5C())
  {
    goto LABEL_23;
  }

  v3 = 0;
  v18 = v1 + 32;
  while (1)
  {
    v4 = sub_197521A3C();
    sub_1975219EC();
    if (v4)
    {
      v5 = *(v18 + 8 * v3);

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v5 = sub_19752222C();
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
LABEL_22:
        __break(1u);
LABEL_23:

        return 1;
      }
    }

    if (sub_197521A5C())
    {
      break;
    }

LABEL_3:

    if (v3 == sub_197521A5C())
    {
      goto LABEL_23;
    }
  }

  v7 = 4;
  while (1)
  {
    v8 = v7 - 4;
    v9 = sub_197521A3C();
    sub_1975219EC();
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = *(v5 + 8 * v7);

    v11 = v7 - 3;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_24;
    }

LABEL_11:
    v12 = *v10;
    v13 = sub_197521FFC();
    if (swift_conformsToProtocol2())
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && !swift_dynamicCastMetatype())
    {
      goto LABEL_25;
    }

    ++v7;
    if (v11 == sub_197521A5C())
    {
      goto LABEL_3;
    }
  }

  v10 = sub_19752222C();
  v11 = v7 - 3;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_11;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x800000019752A030);
  v16 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v16);

  MEMORY[0x19A8DFF80](0xD000000000000013, 0x800000019752A060);
  v17 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v17);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974FA9FC()
{
  v26 = *v0;
  v1 = v0[2];
  v25 = *(*v0 + 80);
  sub_19752228C();
  sub_197521AAC();

  if (sub_197521A5C())
  {
    v2 = 0;
    v23 = v1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = sub_197521A3C();
      sub_1975219EC();
      if (v4)
      {
        v5 = *(v23 + 8 * v2);

        v7 = __OFADD__(v2, 1);
        v8 = v2 + 1;
        if (v7)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = sub_19752222C();
        v5 = result;
        v7 = __OFADD__(v2, 1);
        v8 = v2 + 1;
        if (v7)
        {
LABEL_31:
          __break(1u);
          return result;
        }
      }

      v24 = v8;
      if (sub_197521A5C())
      {
        v9 = 4;
        v10 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v11 = v9 - 4;
          v12 = sub_197521A3C();
          sub_1975219EC();
          if (v12)
          {
            v13 = *(v5 + 8 * v9);

            v14 = v9 - 3;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_30;
            }
          }

          else
          {
            result = sub_19752222C();
            v13 = result;
            v14 = v9 - 3;
            if (__OFADD__(v11, 1))
            {
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }
          }

          v15 = sub_1973F7BBC(v13, v25, *(v26 + 88));
          v17 = v16;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_19741E330(0, *(v10 + 2) + 1, 1, v10);
          }

          v19 = *(v10 + 2);
          v18 = *(v10 + 3);
          if (v19 >= v18 >> 1)
          {
            v10 = sub_19741E330((v18 > 1), v19 + 1, 1, v10);
          }

          *(v10 + 2) = v19 + 1;
          v20 = &v10[16 * v19];
          *(v20 + 4) = v15;
          *(v20 + 5) = v17;
          ++v9;
          if (v14 == sub_197521A5C())
          {
            goto LABEL_19;
          }
        }
      }

      v10 = MEMORY[0x1E69E7CC0];
LABEL_19:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_19741E43C(0, v3[2] + 1, 1, v3);
      }

      v2 = v24;
      v22 = v3[2];
      v21 = v3[3];
      if (v22 >= v21 >> 1)
      {
        v3 = sub_19741E43C((v21 > 1), v22 + 1, 1, v3);
      }

      v3[2] = v22 + 1;
      v3[v22 + 4] = v10;
      if (v24 == sub_197521A5C())
      {
        goto LABEL_29;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_29:

  return v3;
}

uint64_t sub_1974FAD68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1974FAE18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1974FAEC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_1974FAF28()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_1974FAF60(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_1974FAFF8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1974FB088(uint64_t a1, uint64_t *a2)
{
  sub_197413B20(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_1974FE634(v5, v3 + 64);
  return swift_endAccess();
}

uint64_t sub_1974FB0E4(uint64_t a1)
{
  swift_beginAccess();
  sub_1974FE634(a1, v1 + 64);
  return swift_endAccess();
}

uint64_t sub_1974FB184(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1974FB214(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 112);
  *(v4 + 104) = v3;
  *(v4 + 112) = v2;
}

uint64_t sub_1974FB274()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_1974FB2C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

void static Schema.Attribute.Option.unique.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 1;
  *(a1 + 33) = 0;
  *(a1 + 37) = 0;
}

uint64_t static Schema.Attribute.Option.transformable(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
}

double static Schema.Attribute.Option.allowsCloudEncryption.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *&result = 0x100000001;
  *(a1 + 34) = 1;
  return result;
}

void static Schema.Attribute.Option.preserveValueOnDeletion.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 31) = 0;
  *(a1 + 35) = 1;
  *(a1 + 37) = 0;
}

void static Schema.Attribute.Option.ephemeral.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
  *(a1 + 37) = 1;
}

void static Schema.Attribute.Option.spotlight.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
}

uint64_t sub_1974FB418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 56) = a3;
  if (swift_conformsToProtocol2())
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  *(v3 + 96) = v6;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *(v3 + 48) = MEMORY[0x1E69E7CC0];
  (*(*v3 + 448))();
  return v3;
}

uint64_t Schema.Attribute.__allocating_init(_:originalName:hashModifier:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t Schema.Attribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 104) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  if (a4)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (a4)
  {
    v14 = a4;
  }

  *(v9 + 32) = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  swift_beginAccess();
  sub_1973F7958(a7, v9 + 64);
  swift_endAccess();
  swift_beginAccess();
  v15 = *(v9 + 112);
  *(v9 + 104) = a8;
  *(v9 + 112) = a9;

  if (swift_conformsToProtocol2())
  {
    v16 = a6 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  *(v9 + 96) = v17;
  (*(*v9 + 448))();
  sub_1973F9E68(a7);
  return v9;
}

uint64_t sub_1974FB680()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x70795465756C6176;
  v4 = 0x69646F4D68736168;
  if (v1 != 4)
  {
    v4 = 0x6E6F6974704F7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C616E696769726FLL;
  if (v1 != 1)
  {
    v5 = 0x736E6F6974706FLL;
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

uint64_t sub_1974FB754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19750685C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1974FB788(uint64_t a1)
{
  v2 = sub_1974FE6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974FB7C4(uint64_t a1)
{
  v2 = sub_1974FE6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Attribute.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Schema.Attribute.init(from:)(a1);
  return v2;
}

uint64_t Schema.Attribute.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCC8, &qword_197532070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  v27 = a1;
  v28 = v3;
  *(v3 + 64) = 0u;
  v11 = v3 + 64;
  *(v11 + 40) = 0;
  *(v11 + 16) = 0u;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_1974FE6A4();
  sub_197522AFC();
  if (v2)
  {
    v13 = v28;
    sub_1973F9E68(v11);
    v25 = v13[14];

    type metadata accessor for Schema.Attribute();
    swift_deallocPartialClassInstance();
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm_6(v27);
    return v13;
  }

  LOBYTE(v29) = 0;
  v14 = sub_1975225EC();
  v15 = v28;
  v28[2] = v14;
  v15[3] = v16;
  LOBYTE(v29) = 1;
  v15[4] = sub_1975225EC();
  v15[5] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCD8, &qword_197532078);
  v30 = 2;
  sub_1974FE74C(&qword_1EAF2BCE0, sub_1974FE6F8);
  sub_19752261C();
  v15[6] = v29;
  LOBYTE(v29) = 3;
  sub_1975225EC();
  v26 = v18;
  result = sub_1975221FC();
  if (result)
  {
    v20 = result;

    v13 = v28;
    v28[7] = v20;
    LOBYTE(v29) = 4;
    v21 = sub_1975224FC();
    v26 = v22;
    swift_beginAccess();
    v23 = v13[14];
    v24 = v26;
    v13[13] = v21;
    v13[14] = v24;

    v30 = 5;
    *(v13 + 96) = sub_1975225FC() & 1;
    (*(*v13 + 448))();
    (*(v6 + 8))(v10, 0);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974FBC68(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCF0, &unk_197532080);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_1974FE6A4();
  sub_197522B0C();
  swift_beginAccess();
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  v26 = 0;

  sub_19752268C();
  if (v3)
  {
    (*(v7 + 8))(v11, v6);
  }

  else
  {

    swift_beginAccess();
    v15 = *(v4 + 32);
    v16 = *(v4 + 40);
    v25 = 1;

    sub_19752268C();

    swift_beginAccess();
    v24 = *(v4 + 48);
    LOBYTE(v22) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCD8, &qword_197532078);
    sub_1974FE74C(&qword_1EAF2BCF8, sub_1974FE7C4);
    sub_1975226EC();
    swift_beginAccess();
    v18 = *(v4 + 56);
    v22 = sub_19752238C();
    v23 = v19;
    LOBYTE(v21) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    sub_197506F70(&qword_1EAF2BD08, &qword_1EAF2AE58, &unk_19752F390);
    sub_1975226EC();

    swift_beginAccess();
    v21 = *(v4 + 104);
    v27 = 4;
    sub_1975226EC();
    swift_beginAccess();
    v20 = *(v4 + 96);
    v27 = 5;
    sub_19752269C();
    return (*(v7 + 8))(v11, v6);
  }
}

BOOL sub_1974FC038()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 40;
  }

  while (v4 != 1);
  return v3 != 0;
}

uint64_t sub_1974FC094(char a1)
{
  if (!a1)
  {
    return 23899;
  }

  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = sub_19741E330(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_19741E330((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[16 * v5];
  strcpy(v6 + 32, ".isComposite");
  v6[45] = 0;
  *(v6 + 23) = -5120;
  if ((a1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_19741E330((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x6D756E4573692ELL;
    *(v9 + 5) = 0xE700000000000000;
  }

LABEL_14:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_19741E330((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[16 * v11];
    *(v12 + 4) = 0x7473654E7361682ELL;
    *(v12 + 5) = 0xEF736D756E456465;
  }

  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_19741E330((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0xD000000000000010;
    *(v15 + 5) = 0x800000019752A100;
    if ((a1 & 8) == 0)
    {
LABEL_22:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_19741E330((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  strcpy(v18 + 32, ".isJSONCodable");
  v18[47] = -18;
  if ((a1 & 0x20) == 0)
  {
LABEL_23:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v23 = *(v2 + 2);
    v22 = *(v2 + 3);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_19741E330((v22 > 1), v23 + 1, 1, v2);
    }

    *(v2 + 2) = v23 + 1;
    v24 = &v2[16 * v23];
    *(v24 + 4) = 0xD000000000000013;
    *(v24 + 5) = 0x800000019752A0E0;
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_19741E330((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v21 = &v2[16 * v20];
  strcpy(v21 + 32, ".isValueType");
  v21[45] = 0;
  *(v21 + 23) = -5120;
  if ((a1 & 0x40) != 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  if (a1 < 0)
  {
LABEL_46:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v26 = *(v2 + 2);
    v25 = *(v2 + 3);
    if (v26 >= v25 >> 1)
    {
      v2 = sub_19741E330((v25 > 1), v26 + 1, 1, v2);
    }

    *(v2 + 2) = v26 + 1;
    v27 = &v2[16 * v26];
    *(v27 + 4) = 0xD000000000000010;
    *(v27 + 5) = 0x800000019752A0C0;
  }

LABEL_51:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
  sub_19745BA20();
  v28 = sub_1975216CC();
  v30 = v29;

  MEMORY[0x19A8DFF80](v28, v30);

  MEMORY[0x19A8DFF80](23840, 0xE200000000000000);
  return 8283;
}

BOOL sub_1974FC5F0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1974FC620@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1974FC64C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_1974FC740@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_197506CD0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1974FC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v25[0] = a2;
  if (swift_conformsToProtocol2() && v5)
  {
    do
    {
      sub_1973F732C(v5, v25);
      v5 = v25[0];
      if (swift_conformsToProtocol2())
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
  }

  result = swift_conformsToProtocol2();
  if (result && v5 && (v25[0] = swift_getAssociatedTypeWitness(), MetatypeMetadata = swift_getMetatypeMetadata(), result = sub_1974A2910(v25, MetatypeMetadata), (result & 1) != 0))
  {
    v9 = *(a4 + 120);
    v10 = *(a4 + 120);
    if (v9 >= 0)
    {
      v10 |= 0x80u;
    }

    if ((v9 & 0x80000000) == 0 || (v10 & 0x10) == 0)
    {
      *(a4 + 120) = v10 | 0x10;
    }

    v11 = *MEMORY[0x1E696A8B0];
    v12 = sub_1975217BC();
    v14 = v13;
    swift_beginAccess();
    v15 = *(a4 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 48) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1974772DC(0, *(v15 + 2) + 1, 1, v15);
      *(a4 + 48) = v15;
    }

    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v19 = v17 + 1;
    if (v17 >= v18 >> 1)
    {
      v22 = v15;
      v23 = *(v15 + 2);
      v24 = sub_1974772DC((v18 > 1), v17 + 1, 1, v22);
      v17 = v23;
      v15 = v24;
    }

    *(v15 + 2) = v19;
    v20 = &v15[40 * v17];
    v20[32] = 1;
    v21 = *&v26[3];
    *(v20 + 33) = *v26;
    *(v20 + 9) = v21;
    *(v20 + 5) = 0;
    *(v20 + 6) = v12;
    *(v20 + 7) = v14;
    *(v20 + 34) = 0;
    *(v20 + 16) = 0;
    *(a4 + 48) = v15;
    return swift_endAccess();
  }

  else if ((*(a4 + 120) & 8) == 0)
  {
    *(a4 + 120) |= 8u;
  }

  return result;
}

void *Schema.Attribute.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_1973F9E68((v0 + 8));
  v4 = v0[14];

  return v0;
}

uint64_t (*sub_1974FC9D4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess_3_5;
}

uint64_t (*sub_1974FCA28())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess_3_6;
}

uint64_t sub_1974FCA7C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 56) = a1;
  return result;
}

uint64_t (*sub_1974FCAC0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess_3_7;
}

uint64_t sub_1974FCB2C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 336))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1974FCBB4()
{
  sub_197522A5C();
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t Schema.CompositeAttribute.properties.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t Schema.CompositeAttribute.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_1974FCD00()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x70795465756C6176;
  v4 = 0x69747265706F7270;
  if (v1 != 4)
  {
    v4 = 0x6E6F6974704F7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C616E696769726FLL;
  if (v1 != 1)
  {
    v5 = 0x736E6F6974706FLL;
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

uint64_t sub_1974FCDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197506648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1974FCE08(uint64_t a1)
{
  v2 = sub_197505A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974FCE44(uint64_t a1)
{
  v2 = sub_197505A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v162 = *v10;
  *(v10 + 128) = MEMORY[0x1E69E7CC0];
  v163 = (v10 + 128);
  *(v10 + 136) = MEMORY[0x1E69E7CC8];
  v17 = (v10 + 136);
  *(v10 + 144) = MEMORY[0x1E69E7CD0];
  sub_197413B20(a7, &v167);
  *(v10 + 80) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 104) = 0;
  v153 = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  if (a4)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (a4)
  {
    v19 = a4;
  }

  *(v10 + 32) = v18;
  *(v10 + 40) = v19;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  swift_beginAccess();

  sub_1973F7958(&v167, v10 + 64);
  swift_endAccess();
  swift_beginAccess();
  v20 = *(v10 + 112);
  *(v10 + 104) = a8;
  *(v10 + 112) = a9;

  v21 = swift_conformsToProtocol2();
  if (v21)
  {
    v22 = a6 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  *(v10 + 96) = v23;

  sub_1974FE9E4();

  sub_1973F9E68(&v167);
  *&v167 = a6;
  v24 = a6;
  if (v21)
  {
    v24 = a6;
    if (a6)
    {
      v24 = a6;
      do
      {
        sub_1973F732C(v24, &v167);
        v24 = v167;
        if (swift_conformsToProtocol2())
        {
          v25 = v24 == 0;
        }

        else
        {
          v25 = 1;
        }
      }

      while (!v25);
    }
  }

  v26 = *v24;
  v155 = v10;
  if (*v24 > 0x7FF)
  {
    if ((sub_19752148C() - 2048) < 0xFFFFFFFFFFFFF801)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v26 - 513 < 2)
    {
      v28 = v24 + 1;
      v27 = v24[1];
      if (v27[5] & 0xFFFFFF | v27[6])
      {
        v29 = v27[4];
        if (*sub_19752146C())
        {
LABEL_172:
          *&v167 = 0;
          *(&v167 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197529B30);
          v152 = sub_19752149C();
          MEMORY[0x19A8DFF80](v152);

          goto LABEL_173;
        }

        for (i = 1; ; ++i)
        {
          if (*v24 - 513 > 1)
          {
            v31 = 0;
          }

          else
          {
            v31 = (*(*v28 + 20) & 0xFFFFFF) + *(*v28 + 24);
            if (i == v31)
            {
              goto LABEL_111;
            }
          }

          if (i >= v31)
          {
            break;
          }

          v32 = *(*v28 + 16);
          if (*sub_19752146C())
          {
            goto LABEL_172;
          }
        }

        goto LABEL_168;
      }

LABEL_111:

      if ((*(v10 + 120) & 2) == 0)
      {
        *(v10 + 120) |= 2u;
      }

      if (swift_conformsToProtocol2())
      {
        sub_1974FE818(v24, v153, a2, v10);

        goto LABEL_115;
      }

      v92 = 0;
      while (1)
      {
        while (1)
        {
          if (*v24 > 0x7FF || *v24 - 513 > 1)
          {
            if (!v92)
            {
              goto LABEL_115;
            }
          }

          else if (v92 == (*(*v28 + 20) & 0xFFFFFF) + *(*v28 + 24))
          {
            goto LABEL_115;
          }

          v93 = sub_1975214FC();
          if (__OFADD__(v92++, 1))
          {
            goto LABEL_169;
          }

          v95 = v93;
          v96 = sub_1975214AC();
          if (v96)
          {
            break;
          }

          v160 = v92;
          v100 = sub_1975214BC();
          v102 = v101;
          type metadata accessor for Schema.Attribute();
          v103 = swift_allocObject();
          sub_1974FB418(v100, v102, MEMORY[0x1E69E6158]);
          swift_beginAccess();
          *(v103 + 96) = 1;
          swift_beginAccess();

          MEMORY[0x19A8E00D0](v104);
          if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v106 = *(v103 + 16);
          v105 = *(v103 + 24);
          swift_beginAccess();

          v107 = *v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v165 = *v17;
          *v17 = 0x8000000000000000;
          sub_1974184C4(v103, v106, v105, isUniquelyReferenced_nonNull_native);

          *v17 = v165;
          swift_endAccess();
          v109 = sub_1975214BC();
          v111 = v110;
          swift_beginAccess();
          sub_197414EA0(&v165, v109, v111);
          swift_endAccess();

          v92 = v160;
        }

        v97 = v96;
        v98 = *v96;
        v99 = sub_19752148C();
        if (v98 >= 0x800)
        {
          break;
        }

        if (v99 >= 0x800)
        {
          if (!v98)
          {
            goto LABEL_135;
          }

LABEL_139:
          v123 = sub_1975214BC();
          v125 = v124;
          v126 = swift_allocObject();
          *(v126 + 128) = MEMORY[0x1E69E7CC0];
          v127 = (v126 + 128);
          *(v126 + 136) = MEMORY[0x1E69E7CC8];
          *(v126 + 144) = MEMORY[0x1E69E7CD0];
          sub_1974FB418(v123, v125, v97);
          swift_beginAccess();
          *(v126 + 96) = 1;
          if (sub_1973F6EEC(v97))
          {
            goto LABEL_148;
          }

          *&v167 = v97;
          if (swift_conformsToProtocol2())
          {
            v128 = v97;
            do
            {
              sub_1973F732C(v128, &v167);
              v128 = v167;
              if (swift_conformsToProtocol2())
              {
                v129 = v128 == 0;
              }

              else
              {
                v129 = 1;
              }
            }

            while (!v129);
          }

          sub_197520C6C();
          if (swift_dynamicCastMetatype())
          {
LABEL_148:
            type metadata accessor for Schema.Attribute();
            v130 = swift_allocObject();

            sub_1974FB418(12383, 0xE200000000000000, v97);
            swift_beginAccess();
            *(v130 + 96) = 1;
          }

          else
          {
            v167 = 0u;
            v168 = 0u;
            v130 = swift_allocObject();

            Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(12383, 0xE200000000000000, 0, 0, MEMORY[0x1E69E7CC0], v97, &v167, 0, 0);
            swift_beginAccess();
            *(v130 + 96) = 1;
            swift_beginAccess();
            v141 = *(v130 + 128);

            sub_1974FE9CC(v142);
          }

          v161 = v92;

          swift_beginAccess();

          MEMORY[0x19A8E00D0](v131);
          if (*((*v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v143 = *((*v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v132 = *(v130 + 16);
          v133 = *(v130 + 24);
          swift_beginAccess();

          v134 = *(v126 + 136);
          v135 = swift_isUniquelyReferenced_nonNull_native();
          v165 = *(v126 + 136);
          *(v126 + 136) = 0x8000000000000000;
          sub_1974184C4(v130, v132, v133, v135);

          *(v126 + 136) = v165;
          swift_endAccess();
          sub_1974FE9E4();
          swift_beginAccess();

          MEMORY[0x19A8E00D0](v136);
          if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v144 = *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v137 = *(v126 + 16);
          v138 = *(v126 + 24);
          swift_beginAccess();

          v139 = *v17;
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v165 = *v17;
          *v17 = 0x8000000000000000;
          sub_1974184C4(v126, v137, v138, v140);

          *v17 = v165;
          swift_endAccess();

          v92 = v161;
        }

        else
        {
          if (v98 != v99)
          {
            goto LABEL_139;
          }

LABEL_135:
          v112 = *(*(v95 + 8) + 16);
          v113 = *(sub_19752146C() + 8);
          v114 = sub_19752186C();
          v116 = v115;
          v167 = 0u;
          v168 = 0u;
          v117 = swift_allocObject();
          Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(v114, v116, 0, 0, MEMORY[0x1E69E7CC0], v97, &v167, 0, 0);
          swift_beginAccess();
          *(v117 + 96) = 1;
          swift_beginAccess();
          v118 = swift_retain_n();
          MEMORY[0x19A8E00D0](v118);
          if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v145 = *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v119 = *(v117 + 16);
          v120 = *(v117 + 24);
          swift_beginAccess();

          v121 = *v17;
          v122 = swift_isUniquelyReferenced_nonNull_native();
          v165 = *v17;
          *v17 = 0x8000000000000000;
          sub_1974184C4(v117, v119, v120, v122);

          *v17 = v165;
          swift_endAccess();
        }
      }

      if (v99 - 2048 < 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_135;
      }

      goto LABEL_139;
    }

    if (v26 == 512)
    {

      if (sub_19752154C())
      {
        for (j = 0; j != sub_19752154C(); ++j)
        {
          if (j >= sub_19752154C())
          {
            goto LABEL_170;
          }

          v51 = *v24;
          v52 = sub_19752148C();
          if (v51 > 0x7FF)
          {
            if (v52 - 2048 < 0xFFFFFFFFFFFFF801)
            {
              goto LABEL_66;
            }
          }

          else if (v52 >= 0x800)
          {
            if (!v51)
            {
LABEL_66:
              sub_19752145C();
              sub_19752144C();
              v53 = sub_19752142C();
              goto LABEL_71;
            }
          }

          else if (v51 == v52)
          {
            goto LABEL_66;
          }

          v55 = 8;
          if (*v24 - 512 < 3)
          {
            v55 = 1;
          }

          v56 = *(v24[v55] + 16);
          v57 = *(sub_19752146C() + 8);
          v53 = sub_19752186C();
LABEL_71:
          if (v53 != 0x676E696B6361625FLL || v54 != 0xEC00000061746144)
          {
            v59 = sub_19752282C();

            if (v59)
            {
              continue;
            }

            if (sub_19752151C() != 0xD000000000000016 || 0x8000000197525EF0 != v60)
            {
              v61 = sub_19752282C();

              if (v61)
              {
                continue;
              }

              if (sub_19752151C() != 0x7265666675625FLL || v62 != 0xE700000000000000)
              {
                v63 = sub_19752282C();

                if ((v63 & 1) == 0)
                {
                  v64 = sub_19752152C();
                  *&v167 = v64;
                  v65 = v64;
                  if (swift_conformsToProtocol2())
                  {
                    v65 = v64;
                    if (v64)
                    {
                      v65 = v64;
                      do
                      {
                        sub_1973F732C(v65, &v167);
                        v65 = v167;
                        if (swift_conformsToProtocol2())
                        {
                          v66 = v65 == 0;
                        }

                        else
                        {
                          v66 = 1;
                        }
                      }

                      while (!v66);
                    }
                  }

                  if (sub_1973F6EEC(v65) || swift_conformsToProtocol2() && v65)
                  {
                    v67 = sub_19752151C();
                    v68 = v64;
                    v70 = v69;
                    type metadata accessor for Schema.Attribute();
                    v71 = swift_allocObject();
                    sub_1974FB418(v67, v70, v68);
                    swift_beginAccess();

                    MEMORY[0x19A8E00D0](v72);
                    if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v87 = *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_1975219FC();
                    }

                    sub_197521A4C();
                    swift_endAccess();
                    swift_beginAccess();
                    v74 = *(v71 + 16);
                    v73 = *(v71 + 24);
                    swift_beginAccess();

                    v75 = *v17;
                    v76 = swift_isUniquelyReferenced_nonNull_native();
                    v166 = *v17;
                    *v17 = 0x8000000000000000;
                    sub_1974184C4(v71, v74, v73, v76);

                    *v17 = v166;
                    swift_endAccess();
                  }

                  else
                  {
                    *&v167 = v65;
                    v157 = v64;
                    if (swift_conformsToProtocol2() && v65)
                    {
                      do
                      {
                        sub_1973F732C(v65, &v167);
                        v65 = v167;
                        if (swift_conformsToProtocol2())
                        {
                          v77 = v65 == 0;
                        }

                        else
                        {
                          v77 = 1;
                        }
                      }

                      while (!v77);
                    }

                    sub_197520C6C();
                    v78 = swift_dynamicCastMetatype();
                    v79 = sub_19752151C();
                    v156 = v80;
                    if (v78)
                    {
                      type metadata accessor for Schema.Attribute();
                      v81 = swift_allocObject();
                      sub_1974FB418(v79, v156, v157);
                      swift_beginAccess();

                      MEMORY[0x19A8E00D0](v82);
                      if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v88 = *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        sub_1975219FC();
                      }

                      sub_197521A4C();
                      swift_endAccess();
                      swift_beginAccess();
                      v83 = *(v81 + 24);
                      v158 = *(v81 + 16);
                      swift_beginAccess();
                    }

                    else
                    {
                      v167 = 0u;
                      v168 = 0u;
                      v81 = swift_allocObject();
                      Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(v79, v156, 0, 0, MEMORY[0x1E69E7CC0], v157, &v167, 0, 0);
                      swift_beginAccess();
                      v84 = swift_retain_n();
                      MEMORY[0x19A8E00D0](v84);
                      if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v89 = *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        sub_1975219FC();
                      }

                      sub_197521A4C();
                      swift_endAccess();
                      swift_beginAccess();
                      v83 = *(v81 + 24);
                      v158 = *(v81 + 16);
                      swift_beginAccess();
                    }

                    v85 = *v17;
                    v86 = swift_isUniquelyReferenced_nonNull_native();
                    v166 = *v17;
                    *v17 = 0x8000000000000000;
                    sub_1974184C4(v81, v158, v83, v86);

                    *v17 = v166;
                    swift_endAccess();
                  }
                }

                continue;
              }
            }
          }
        }
      }

LABEL_115:
      sub_1974FE9E4();
      sub_1973F9E68(a7);
      return v155;
    }

    v91 = sub_19752148C();
    if (v91 < 0x800)
    {
      if (v26 != v91)
      {
        goto LABEL_156;
      }

LABEL_33:

      if (sub_19752154C())
      {
        v33 = 0;
        while (v33 < sub_19752154C())
        {
          v34 = sub_19752152C();
          v35 = sub_19752151C();
          v37 = v36;
          if (!sub_19752181C())
          {

            *&v167 = 95;
            *(&v167 + 1) = 0xE100000000000000;
            v38 = sub_1975227DC();
            MEMORY[0x19A8DFF80](v38);

            v37 = *(&v167 + 1);
            v35 = v167;
          }

          if (sub_1973F6EEC(v34))
          {
            goto LABEL_48;
          }

          *&v167 = v34;
          if (swift_conformsToProtocol2() && v34)
          {
            v39 = v34;
            do
            {
              sub_1973F732C(v39, &v167);
              v39 = v167;
              if (swift_conformsToProtocol2())
              {
                v40 = v39 == 0;
              }

              else
              {
                v40 = 1;
              }
            }

            while (!v40);
          }

          sub_197520C6C();
          if (swift_dynamicCastMetatype())
          {
LABEL_48:
            type metadata accessor for Schema.Attribute();
            v41 = swift_allocObject();
            sub_1974FB418(v35, v37, v34);
            swift_beginAccess();
            *(v41 + 96) = 1;
          }

          else
          {
            v167 = 0u;
            v168 = 0u;
            v41 = swift_allocObject();
            Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(v35, v37, 0, 0, MEMORY[0x1E69E7CC0], v34, &v167, 0, 0);
            swift_beginAccess();
            *(v41 + 96) = 1;
            swift_beginAccess();
            v47 = *(v41 + 128);

            sub_1974FEDB0(v48);
          }

          swift_beginAccess();

          MEMORY[0x19A8E00D0](v42);
          if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v49 = *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v43 = *(v41 + 16);
          v44 = *(v41 + 24);
          swift_beginAccess();

          v45 = *v17;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v164 = *v17;
          *v17 = 0x8000000000000000;
          sub_1974184C4(v41, v43, v44, v46);

          *v17 = v164;
          swift_endAccess();

          if (v33 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_167;
          }

          if (++v33 == sub_19752154C())
          {
            goto LABEL_115;
          }
        }

        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      goto LABEL_115;
    }

    if (!v26)
    {
      goto LABEL_33;
    }
  }

LABEL_156:
  v146 = *v24;
  if (*v24 - 2048 < 0xFFFFFFFFFFFFF801 || ((v147 = sub_19752147C(), v147 < 0x800) ? (v148 = v147 == v146) : (v148 = 0), !v148 ? (v149 = 0) : (v149 = 1), v146 - 515 < 2 || v149))
  {
LABEL_171:
    *&v167 = 0;
    *(&v167 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000003ELL, 0x8000000197529AB0);
    v151 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v151);

    goto LABEL_173;
  }

  *&v167 = 0;
  *(&v167 + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197529AF0);
  v150 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v150);

LABEL_173:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974FE634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1974FE6A4()
{
  result = qword_1EAF2BCD0;
  if (!qword_1EAF2BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BCD0);
  }

  return result;
}

unint64_t sub_1974FE6F8()
{
  result = qword_1EAF2BCE8;
  if (!qword_1EAF2BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BCE8);
  }

  return result;
}

uint64_t sub_1974FE74C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BCD8, &qword_197532078);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1974FE7C4()
{
  result = qword_1EAF2BD00;
  if (!qword_1EAF2BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD00);
  }

  return result;
}

uint64_t sub_1974FE818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Schema.Attribute();
  v8 = swift_allocObject();

  sub_1974FB418(a2, a3, AssociatedTypeWitness);
  swift_beginAccess();
  *(v8 + 96) = 1;
  swift_beginAccess();

  MEMORY[0x19A8E00D0](v9);
  if (*((*(a4 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(a4 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1975219FC();
  }

  sub_197521A4C();
  swift_endAccess();
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  swift_beginAccess();

  v12 = *(a4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + 136);
  *(a4 + 136) = 0x8000000000000000;
  sub_1974184C4(v8, v10, v11, isUniquelyReferenced_nonNull_native);

  *(a4 + 136) = v16;
  swift_endAccess();
}

uint64_t sub_1974FE9E4()
{
  v1 = v0;
  v2 = *v0;
  sub_1973F710C();
  if ((v0[15] & 1) == 0)
  {
    *(v0 + 120) |= 1u;
  }

  swift_beginAccess();
  v3 = v0[7];
  v27[0] = v3;
  v4 = &protocol descriptor for _Optional;
  if (swift_conformsToProtocol2())
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    do
    {
      sub_1973F732C(v3, v27);
      v3 = v27[0];
      if (swift_conformsToProtocol2())
      {
        v6 = v3 == 0;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
  }

  v7 = *v3;
  if ((*v3 - 513) <= 1 && ((v1[15] & 2) != 0 || (*(v1 + 120) |= 2u, v7 = *v3, *v3 <= 0x7FF)) && (v7 - 513) <= 1 && (v8 = v3[1], v8[5] & 0xFFFFFF | v8[6]))
  {
    v9 = v8[4];
    if (!*(sub_19752146C() + 4))
    {
      v10 = sub_1975214BC();
      v12 = v11;
      swift_beginAccess();
      v4 = (v1 + 18);
      sub_197414EA0(&v26, v10, v12);
      swift_endAccess();
    }

    for (i = 1; ; ++i)
    {
      if ((*v3 - 513) > 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = (*(v3[1] + 20) & 0xFFFFFF) + *(v3[1] + 24);
        if (i == v14)
        {
          goto LABEL_28;
        }
      }

      if (i >= v14)
      {
        break;
      }

      v15 = *(v3[1] + 16);
      if (!*(sub_19752146C() + 4))
      {
        v16 = sub_1975214BC();
        v18 = v17;
        swift_beginAccess();
        v4 = (v1 + 18);
        sub_197414EA0(&v26, v16, v18);
        swift_endAccess();
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
LABEL_28:
    result = swift_beginAccess();
    v4 = v1[16];
    if (!(v4 >> 62))
    {
      v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        return result;
      }

      goto LABEL_30;
    }
  }

  result = sub_1975220EC();
  v20 = result;
  if (!result)
  {
    return result;
  }

LABEL_30:

  for (j = 0; ; ++j)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A8E0960](j, v4);
      v22 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v23 = *(v4 + 8 * j + 32);

      v22 = j + 1;
      if (__OFADD__(j, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v24 = swift_dynamicCastClass();
    if (v24)
    {
      break;
    }

LABEL_32:
    if (v22 == v20)
    {
    }
  }

  v25 = *(v24 + 120);

  if ((v25 & 6) == 0)
  {
    goto LABEL_32;
  }

  if ((v1[15] & 4) == 0)
  {
    *(v1 + 120) |= 4u;
  }

  return result;
}

unint64_t sub_1974FEDC8(unint64_t result, void (*a2)(uint64_t))
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1975220EC();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    do
    {
      v6 = MEMORY[0x19A8E0960](v5, v3);
      type metadata accessor for Schema.CompositeAttribute();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        swift_beginAccess();
        v9 = *(v8 + 128);

        a2(v10);
      }

      ++v5;
      swift_beginAccess();
      *(v6 + 96) = 1;
      result = swift_unknownObjectRelease();
    }

    while (v4 != v5);
  }

  else
  {
    v11 = (v3 + 32);
    type metadata accessor for Schema.CompositeAttribute();
    do
    {
      v15 = *v11;
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v12 = v16;
        swift_beginAccess();
        v13 = *(v12 + 128);

        a2(v14);
      }

      else
      {
      }

      swift_beginAccess();
      *(v15 + 96) = 1;

      ++v11;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t Schema.CompositeAttribute.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Schema.CompositeAttribute.init(from:)(a1);
  return v2;
}

uint64_t Schema.CompositeAttribute.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD10, &qword_197532090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v56 = &v43 - v9;
  v1[16] = MEMORY[0x1E69E7CC0];
  v10 = v1 + 16;
  v1[17] = MEMORY[0x1E69E7CC8];
  v1[18] = MEMORY[0x1E69E7CD0];
  sub_197505A1C(a1, v55);
  Schema.Attribute.init(from:)(v55);
  if (v2)
  {
LABEL_2:
    __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
    return v3;
  }

  v51 = v6;
  v52 = v1 + 17;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505A80();
  sub_197522AFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD20, &qword_197532098);
  LOBYTE(v55[0]) = 4;
  sub_197505AD4(&qword_1EAF2BD28, &qword_1ED7CA310);
  v12 = v5;
  v13 = v56;
  sub_19752261C();
  v50 = 0;
  v15 = v54;
  swift_beginAccess();
  v16 = *v10;
  *v10 = v15;

  v17 = *v10;
  if (v17 >> 62)
  {
    goto LABEL_39;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v19 = MEMORY[0x1E69E7CC0];
  v49 = v12;
  if (!v18)
  {
LABEL_13:
    v23 = v51;
    v48 = v19;
    if (v19 >> 62)
    {
      v24 = sub_1975220EC();
      v19 = v48;
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_15:
        v17 = 0;
        v46 = v19 & 0xFFFFFFFFFFFFFF8;
        v47 = v19 & 0xC000000000000001;
        v25 = MEMORY[0x1E69E7CC8];
        v44 = v24;
        v45 = a1;
        v43 = v3;
        while (1)
        {
          if (v47)
          {
            a1 = MEMORY[0x19A8E0960](v17, v19);
            v29 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v17 >= *(v46 + 16))
            {
              goto LABEL_36;
            }

            a1 = *(v19 + 8 * v17 + 32);

            v29 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v18 = sub_1975220EC();
              goto LABEL_5;
            }
          }

          swift_beginAccess();
          v3 = a1[2];
          v30 = a1[3];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = v25;
          v12 = sub_1973F4028(v3, v30);
          v33 = v25[2];
          v34 = (v32 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_37;
          }

          v13 = v32;
          if (v25[3] >= v35)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v32)
              {
                goto LABEL_16;
              }
            }

            else
            {
              sub_197479A9C();
              if (v13)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            sub_197478128(v35, isUniquelyReferenced_nonNull_native);
            v36 = sub_1973F4028(v3, v30);
            if ((v13 & 1) != (v37 & 1))
            {
              goto LABEL_44;
            }

            v12 = v36;
            if (v13)
            {
LABEL_16:

              v25 = v53;
              v26 = v53[7];
              v27 = *(v26 + 8 * v12);
              *(v26 + 8 * v12) = a1;

              goto LABEL_17;
            }
          }

          v25 = v53;
          v53[(v12 >> 6) + 8] |= 1 << v12;
          v38 = (v25[6] + 16 * v12);
          *v38 = v3;
          v38[1] = v30;
          *(v25[7] + 8 * v12) = a1;

          v39 = v25[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_38;
          }

          v25[2] = v41;
LABEL_17:
          ++v17;
          v3 = v43;
          v28 = v29 == v44;
          a1 = v45;
          v12 = v49;
          v23 = v51;
          v13 = v56;
          v19 = v48;
          if (v28)
          {
            goto LABEL_42;
          }
        }
      }
    }

    v25 = MEMORY[0x1E69E7CC8];
LABEL_42:

    swift_beginAccess();
    v42 = *(v3 + 136);
    *(v3 + 136) = v25;

    sub_1974FE9E4();
    (*(v23 + 8))(v13, v12);
    goto LABEL_2;
  }

  v54 = MEMORY[0x1E69E7CC0];

  sub_1975222CC();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8E0960](v20, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v20 + 32);
      }

      ++v20;
      sub_19752229C();
      v21 = *(v54 + 16);
      sub_1975222DC();
      sub_1975222EC();
      sub_1975222AC();
    }

    while (v18 != v20);

    v19 = v54;
    v12 = v49;
    v13 = v56;
    goto LABEL_13;
  }

  __break(1u);
LABEL_44:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t Schema.CompositeAttribute.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD30, &qword_1975320A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v21[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505A80();
  sub_197522B0C();
  swift_beginAccess();
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  v27 = 0;

  sub_19752268C();
  if (v3)
  {
    (*(v7 + 8))(v11, v6);
  }

  else
  {

    swift_beginAccess();
    v15 = *(v4 + 32);
    v16 = *(v4 + 40);
    v26 = 1;

    sub_19752268C();

    swift_beginAccess();
    v25 = *(v4 + 48);
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCD8, &qword_197532078);
    sub_1974FE74C(&qword_1EAF2BCF8, sub_1974FE7C4);
    sub_1975226EC();
    swift_beginAccess();
    v17 = *(v4 + 96);
    v24 = 5;
    sub_19752269C();
    swift_beginAccess();
    v19 = *(v4 + 56);
    v22 = sub_19752238C();
    v23 = v20;
    LOBYTE(v28) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    sub_197506F70(&qword_1EAF2BD08, &qword_1EAF2AE58, &unk_19752F390);
    sub_1975226EC();

    swift_beginAccess();
    v28 = *(v4 + 128);
    v21[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD20, &qword_197532098);
    sub_197505AD4(&qword_1EAF2BD38, &qword_1ED7CA328);
    sub_1975226EC();
    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t static Schema.CompositeAttribute.== infix(_:_:)(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  v7 = a1[6];
  swift_beginAccess();
  if ((sub_1974D1674(v7, a2[6]) & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  v8 = a1[7];
  swift_beginAccess();
  if (v8 != a2[7])
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  v9 = a1[16];
  swift_beginAccess();
  v10 = a2[16];

  v11 = sub_1974D19EC(v9, v10);

  if (v11)
  {
    swift_beginAccess();
    v12 = a1[17];
    swift_beginAccess();
    v13 = a2[17];

    v14 = sub_19750556C(v12, v13);
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1974FFB8C()
{
  v1 = v0[16];

  v2 = v0[17];

  v3 = v0[18];
}

void *Schema.CompositeAttribute.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_1973F9E68((v0 + 8));
  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[17];

  v7 = v0[18];

  return v0;
}

uint64_t Schema.CompositeAttribute.__deallocating_deinit()
{
  Schema.CompositeAttribute.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1974FFC54()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1974FFCA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1974FFD4C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}