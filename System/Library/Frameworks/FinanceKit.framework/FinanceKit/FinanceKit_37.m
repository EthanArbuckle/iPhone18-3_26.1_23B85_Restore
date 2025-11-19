uint64_t sub_1B7512F3C()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = *(v2 + 52);
    v4 = *(v2 + 608);

    sub_1B7201D10(v4, v3);

    v5 = sub_1B7514808;
  }

  else
  {

    v5 = sub_1B75130BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1B75130BC()
{
  v184 = v0;
  v1 = v0;
  v3 = *(v0 + 216);
  v2 = (v0 + 216);
  v4 = v2[52];
  v5 = *(v2 - 164);
  v6 = v2[49];
  v7 = v2[41];
  v8 = v2[26];
  v9 = v8 + v2[29];
  v10 = v2[1];
  v11 = v2[2];
  v12 = *v9;
  *v9 = v6;
  v13 = *(v9 + 8);
  *(v9 + 8) = v5;
  sub_1B7227500(v6, v5);
  sub_1B7201CF8(v12, v13);
  v14 = [*(*(v8 + v7) + 16) persistentStoreCoordinator];
  sub_1B7514A04(v3, v14);
  if (v4)
  {
    v16 = *(v1 + 52);
    v17 = *(v1 + 608);
    v162 = *(v1 + 592);
    v164 = v14;
    v18 = *(v1 + 584);
    v19 = v1;
    v20 = *(v1 + 576);
    v21 = *(v1 + 568);
    v22 = *(v19 + 560);
    v23 = *(v19 + 50);
    v24 = *(v19 + 51);
    sub_1B7201D10(v17, v16);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v17, v16);
    sub_1B73F1960(v22, v21, v20, v18, v23);
    sub_1B7201CF8(v162, v24);

    v26 = *(v19 + 8);
LABEL_4:

    v26();
    return;
  }

  v161 = v2;
  v163 = v15;
  sub_1B7514A04(v10, v14);
  v27 = v25;
  v29 = *(v1 + 456);
  v28 = *(v1 + 464);
  v30 = *(v1 + 432);
  *(v1 + 392) = v11;
  v31 = swift_task_alloc();
  v31[2] = v30[14];
  v31[3] = v29;
  v31[4] = v30[16];
  v31[5] = v30[17];
  v31[6] = v28;
  v31[7] = v30[19];

  v168 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F708);
  swift_getAssociatedTypeWitness();
  sub_1B728216C(&qword_1EB996850, &qword_1EB98F708);
  v32 = sub_1B7800B28();

  v33 = v161;

  swift_bridgeObjectRelease_n();

  v175 = v1;
  v34 = v163;
  *(v1 + 400) = v163;
  v35 = v27;
  sub_1B7800CB8();
  swift_getWitnessTable();
  if (sub_1B7801078() & 1) != 0 && (v161[24] = v27, (sub_1B7801078()) && (v161[25] = v32, sub_1B7800CB8(), swift_getWitnessTable(), (sub_1B7801078()))
  {
    v36 = v175;
    v37 = *(v175 + 592);
    v38 = *(v175 + 51);
    sub_1B7201D10(*(v175 + 608), *(v175 + 52));
    sub_1B7201CF8(v37, v38);

    v39 = *(v175 + 50);
    v40 = *(v175 + 584);
    v41 = *(v175 + 576);
    v42 = *(v175 + 560);
  }

  else
  {
    v43 = (v161 - 25);
    v36 = v175;
    v44 = *(v175 + 560);
    v45 = *(v175 + 51);
    if (v44)
    {
      v153 = v32;
      v46 = *(v175 + 576);
      v173 = *(v175 + 568);
      if (v45 == 255)
      {
        v66 = *(v175 + 584);
        v67 = *(v175 + 50);

        sub_1B73F1960(v44, v173, v46, v66, v67);
        v32 = v153;
      }

      else
      {
        v149 = *(v175 + 51);
        v165 = v14;
        v47 = *(v175 + 50);
        v48 = *(v175 + 584);
        sub_1B73F19C8(v44, v173, v46, v48, v47);
        sub_1B73F19C8(v44, v173, v46, v48, v47);
        sub_1B73F19C8(v44, v173, v46, v48, v47);
        sub_1B73F19C8(v44, v173, v46, v48, v47);
        sub_1B73F19C8(v44, v173, v46, v48, v47);

        v152 = v46;

        sub_1B7227500(v48, v47 & 1);
        v49 = sub_1B7800098();
        v50 = sub_1B78011F8();
        v51 = os_log_type_enabled(v49, v50);
        v52 = *(v175 + 584);
        v53 = *(v175 + 576);
        v54 = *(v175 + 568);
        v55 = *(v175 + 560);
        if (v51)
        {
          v135 = *(v175 + 584);
          log = v49;
          v56 = *(v175 + 464);
          v57 = *(v175 + 472);
          v139 = v50;
          v58 = *(v175 + 456);
          v133 = *(v175 + 50);
          v59 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v177 = v137;
          *v59 = 136315906;
          v60 = v57(v58, v56);
          v62 = sub_1B71A3EF8(v60, v61, &v177);

          *(v59 + 4) = v62;
          *(v59 + 12) = 2048;
          v132 = sub_1B7800C98();
          sub_1B73F1960(v55, v54, v53, v135, v133);
          *(v59 + 14) = v132;
          v63 = v53;
          sub_1B73F1960(v55, v54, v53, v135, v133);
          *(v59 + 22) = 2048;
          v64 = sub_1B7800C98();
          sub_1B73F1960(v55, v54, v53, v135, v133);
          *(v59 + 24) = v64;
          sub_1B73F1960(v55, v54, v53, v135, v133);
          *(v59 + 32) = 2048;
          v65 = v152;
          v156 = sub_1B7800C98();
          sub_1B73F1960(v55, v54, v63, v135, v133);
          *(v59 + 34) = v156;
          sub_1B73F1960(v55, v54, v63, v135, v133);
          _os_log_impl(&dword_1B7198000, log, v139, "Adding relevant pending updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v59, 0x2Au);
          __swift_destroy_boxed_opaque_existential_1(v137);
          MEMORY[0x1B8CA7A40](v137, -1, -1);
          MEMORY[0x1B8CA7A40](v59, -1, -1);
        }

        else
        {
          v68 = *(v175 + 50);
          sub_1B73F1960(*(v175 + 560), *(v175 + 568), *(v175 + 576), *(v175 + 584), v68);
          sub_1B73F1960(v55, v54, v53, v52, v68);

          v65 = v152;

          sub_1B7201D10(v52, v47 & 1);

          sub_1B7201D10(v52, v47 & 1);

          sub_1B7201D10(v52, v47 & 1);

          sub_1B7201D10(v52, v47 & 1);
        }

        v69 = *(v175 + 592);
        v140 = *(v175 + 576);
        loga = *(v175 + 584);
        v136 = *(v175 + 560);
        v138 = *(v175 + 568);
        v70 = *(v175 + 424) + *(v175 + 448);
        *(v175 + 360) = v69;
        *(v161 + 152) = v149 & 1;
        v71 = *(v175 + 51);
        v134 = *(v175 + 50);
        sub_1B74E33B8(v44, v173, v65, v161 + 18, (v161 - 10));
        v72 = *(v175 + 136);
        v150 = *(v175 + 144);
        v131 = *(v175 + 152);
        v144 = *(v175 + 160);
        v157 = *(v175 + 168);
        v73 = *v70;
        *v70 = v69;
        v74 = *(v70 + 8);
        *(v70 + 8) = v71 & 1;
        sub_1B72274E8(v69, v71);
        sub_1B72274E8(v69, v71);

        sub_1B7201CF8(v73, v74);
        *(v175 + 176) = v72;
        *(v175 + 184) = v150;
        *(v175 + 192) = v131;
        *(v175 + 200) = v144;
        *(v175 + 208) = v157;
        swift_beginAccess();

        sub_1B7227500(v144, v157);
        type metadata accessor for FinanceStore.Changes();
        sub_1B7800CB8();
        sub_1B7800CA8();
        swift_endAccess();
        sub_1B7201CF8(v69, v71);
        v33 = v161;

        sub_1B7201D10(v144, v157);
        sub_1B73F1960(v136, v138, v140, loga, v134);

        v34 = v163;
        v35 = v168;
        v32 = v153;
        v43 = (v161 - 25);
      }
    }

    else
    {
      sub_1B7201CF8(*(v175 + 592), v45);
    }

    v75 = *(v175 + 52);
    *(v175 + 344) = *(v175 + 608);
    *(v33 + 136) = v75;
    sub_1B74E33B8(v34, v35, v32, v33 + 16, v43);
    v42 = *(v175 + 16);
    v41 = *(v175 + 32);
    v40 = *(v175 + 40);
    v39 = *(v175 + 48);
  }

  v171 = *(v36 + 52);
  v169 = *(v36 + 608);
  v76 = *(v36 + 600) + 1;
  v174 = v41;
  v167 = v42;
  if (v76 == *(v36 + 520))
  {
LABEL_21:
    v166 = v40;

    if (v167)
    {

      sub_1B73F19C8(v167, *(&v167 + 1), v41, v40, v39);
      sub_1B73F19C8(v167, *(&v167 + 1), v41, v40, v39);
      sub_1B73F19C8(v167, *(&v167 + 1), v41, v40, v39);
      sub_1B73F19C8(v167, *(&v167 + 1), v41, v40, v39);
      sub_1B73F19C8(v167, *(&v167 + 1), v41, v40, v39);

      sub_1B7227500(v40, v39 & 1);
      v77 = sub_1B7800098();
      v78 = sub_1B78011F8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = v39;
        v80 = *(v36 + 472);
        v158 = v78;
        v81 = *(v36 + 456);
        v82 = *(v36 + 464);
        v147 = v77;
        v83 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v177 = v145;
        *v83 = 136315906;
        v84 = v80(v81, v82);
        v86 = sub_1B71A3EF8(v84, v85, &v177);

        *(v83 + 4) = v86;
        *(v83 + 12) = 2048;
        v87 = sub_1B7800C98();
        sub_1B73F1960(v167, *(&v167 + 1), v174, v166, v79);
        *(v83 + 14) = v87;
        sub_1B73F1960(v167, *(&v167 + 1), v174, v166, v79);
        *(v83 + 22) = 2048;
        v88 = sub_1B7800C98();
        sub_1B73F1960(v167, *(&v167 + 1), v174, v166, v79);
        *(v83 + 24) = v88;
        sub_1B73F1960(v167, *(&v167 + 1), v174, v166, v79);
        *(v83 + 32) = 2048;
        v41 = v174;
        swift_getAssociatedTypeWitness();
        v89 = sub_1B7800C98();
        sub_1B73F1960(v167, *(&v167 + 1), v174, v166, v79);
        *(v83 + 34) = v89;
        v90 = *(&v167 + 1);
        v154 = v79;
        sub_1B73F1960(v167, *(&v167 + 1), v174, v166, v79);
        _os_log_impl(&dword_1B7198000, v147, v158, "Adding final updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v83, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v145);
        MEMORY[0x1B8CA7A40](v145, -1, -1);
        MEMORY[0x1B8CA7A40](v83, -1, -1);
      }

      else
      {
        sub_1B73F1960(v167, *(&v167 + 1), v41, v40, v39);
        sub_1B73F1960(v167, *(&v167 + 1), v41, v40, v39);

        sub_1B7201D10(v40, v39 & 1);

        sub_1B7201D10(v40, v39 & 1);

        sub_1B7201D10(v40, v39 & 1);

        v90 = *(&v167 + 1);

        sub_1B7201D10(v40, v39 & 1);

        v154 = v39;
      }

      v148 = v90;
      v100 = *(v36 + 424) + *(v36 + 448);
      v182 = v169;
      v183 = v171;
      sub_1B74E33B8(v167, v90, v41, &v182, &v177);
      logb = v177;
      v146 = v178;
      v101 = v180;
      v159 = v179;
      v102 = v181;
      v103 = *v100;
      *v100 = v169;
      v104 = *(v100 + 8);
      *(v100 + 8) = v171;
      sub_1B72274E8(v169, v171);
      sub_1B72274E8(v169, v171);

      v36 = v175;
      sub_1B7201CF8(v103, v104);
      *(v175 + 96) = logb;
      *(v175 + 104) = v146;
      *(v175 + 112) = v159;
      *(v175 + 120) = v101;
      *(v175 + 128) = v102;
      swift_beginAccess();

      sub_1B7227500(v101, v102);
      type metadata accessor for FinanceStore.Changes();
      sub_1B7800CB8();
      sub_1B7800CA8();
      swift_endAccess();
      sub_1B7201CF8(v169, v171);

      sub_1B7201D10(v101, v102);
      sub_1B73F1960(v167, v148, v174, v166, v154);
    }

    else if (*(v36 + 49))
    {
      sub_1B73F1960(0, *(&v167 + 1), v41, v40, v39);
      sub_1B7201CF8(v169, v171);
    }

    else
    {
      v155 = v39;
      v107 = sub_1B7800098();
      v108 = sub_1B78011F8();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_1B7198000, v107, v108, "Initial fetch, sending empty updates", v109, 2u);
        MEMORY[0x1B8CA7A40](v109, -1, -1);
      }

      sub_1B7227500(v169, v171);
      v110 = *(v36 + 448);
      v160 = *(v36 + 424);

      v111 = v160 + v110;
      v112 = sub_1B7800C68();
      v113 = sub_1B7800C68();
      swift_getAssociatedTypeWitness();
      v114 = sub_1B7800C68();
      v182 = v169;
      v183 = v171;
      sub_1B74E33B8(v112, v113, v114, &v182, &v177);
      v116 = v177;
      v115 = v178;
      v118 = v179;
      v117 = v180;
      v151 = v181;
      v119 = *(v160 + v110);
      *v111 = v169;
      LOBYTE(v110) = *(v160 + v110 + 8);
      *(v111 + 8) = v171;
      sub_1B7227500(v169, v171);
      sub_1B7227500(v169, v171);
      v36 = v175;
      sub_1B7201CF8(v119, v110);
      *(v175 + 56) = v116;
      *(v175 + 64) = v115;
      *(v175 + 72) = v118;
      *(v175 + 80) = v117;
      *(v175 + 88) = v151;
      swift_beginAccess();

      sub_1B7227500(v117, v151);
      type metadata accessor for FinanceStore.Changes();
      sub_1B7800CB8();
      sub_1B7800CA8();
      swift_endAccess();
      sub_1B73F1960(0, *(&v167 + 1), v174, v166, v155);
      sub_1B7201CF8(v169, v171);

      sub_1B7201D10(v117, v151);
      sub_1B7201D10(v169, v171);
    }

    v26 = *(v36 + 8);
    goto LABEL_4;
  }

  while (1)
  {
    *(v36 + 600) = v76;
    *(v36 + 51) = v171;
    *(v36 + 592) = v169;
    *(v36 + 50) = v39;
    *(v36 + 584) = v40;
    *(v36 + 576) = v41;
    *(v36 + 560) = v42;
    v91 = *(v36 + 504);
    if (v76 >= *(v91 + 16))
    {
      __break(1u);
      return;
    }

    v92 = v91 + 16 * v76;
    v93 = *(v36 + 424) + *(v36 + 448);
    v94 = *(v92 + 32);
    *(v36 + 608) = v94;
    v95 = *(v92 + 40);
    *(v36 + 52) = v95;
    v96 = *v93;
    v97 = *(v93 + 8);
    if (v97 == 255)
    {
      sub_1B7227500(v94, v95);
      sub_1B7227500(v94, v95);
      sub_1B7227500(v94, v95);
      sub_1B72274E8(v96, 255);
      sub_1B7201CF8(v96, 255);
      v105 = v94;
      v106 = v95;
      goto LABEL_45;
    }

    *(v33 + 424) = v97;
    if ((v97 & 1) == 0)
    {
      break;
    }

    sub_1B7227500(v94, v95);
    if ((v95 & 1) == 0)
    {
      goto LABEL_44;
    }

    v98 = 1;
    sub_1B7227500(v94, 1);
    sub_1B7227500(v94, 1);
    sub_1B72274E8(v96, v97);
    sub_1B72274E8(v96, v97);
    sub_1B7201D10(v96, 1);
    sub_1B7201D10(v94, 1);
    v99 = v96 == v94;
LABEL_31:
    sub_1B7201D10(v96, v98);
    sub_1B7201CF8(v96, v97);
    if ((v99 & 1) == 0)
    {
      goto LABEL_46;
    }

    sub_1B7201D10(v94, v95);
    sub_1B7201D10(v94, v95);
    v41 = v174;
    v36 = v175;
    v76 = *(v175 + 600) + 1;
    v42 = v167;
    if (v76 == *(v175 + 520))
    {
      goto LABEL_21;
    }
  }

  if ((v95 & 1) == 0)
  {
    sub_1B7205540(0, &qword_1EDAFC4C0);
    sub_1B7227500(v94, 0);
    sub_1B7227500(v94, 0);
    sub_1B7227500(v94, 0);
    sub_1B72274E8(v96, v97);
    sub_1B7227500(v94, 0);
    sub_1B72274E8(v96, v97);
    sub_1B72274E8(v96, v97);
    sub_1B72274E8(v94, v95);
    sub_1B7227500(v96, 0);
    v99 = sub_1B7801558();
    sub_1B7201D10(v94, 0);
    sub_1B7201CF8(v96, v97);
    sub_1B7201D10(v96, 0);
    sub_1B7201D10(v94, 0);
    sub_1B7201CF8(v94, v95);
    v98 = *(v33 + 424);
    goto LABEL_31;
  }

  sub_1B7227500(v94, 1);
  v120 = v96;
LABEL_44:
  v95 = v97 ^ 1;
  sub_1B7227500(v94, (v97 ^ 1) & 1);
  sub_1B7227500(v94, (v97 ^ 1) & 1);
  sub_1B72274E8(v96, v97);
  sub_1B72274E8(v96, v97);
  sub_1B7201D10(v96, v97 & 1);
  sub_1B7201D10(v94, (v97 ^ 1) & 1);
  sub_1B7201D10(v96, v97 & 1);
  v105 = v96;
  v106 = v97;
LABEL_45:
  sub_1B7201CF8(v105, v106);
LABEL_46:
  v121 = v175;
  v176 = *(v175 + 536);
  v122 = v121[59];
  v123 = v121[57];
  v124 = v121[58];
  v125 = v121[55];
  v172 = v121[53];
  v126 = *(v172 + v121[66]);
  v121[41] = v94;
  *(v33 + 120) = v95 & 1;

  v127 = v122(v123, v124);
  v129 = v128;
  v121[77] = v128;
  v121[48] = v125;
  v170 = (v126 + *v126);
  v130 = swift_task_alloc();
  v121[78] = v130;
  *v130 = v121;
  v130[1] = sub_1B7512F3C;

  (v170)(v33, v121 + 41, v127, v129, v172 + v176, v121 + 48);
}

uint64_t sub_1B7514808()
{
  v1 = *(v0 + 52);
  v2 = *(v0 + 608);
  v3 = *(v0 + 592);
  v4 = *(v0 + 51);
  sub_1B73F1960(*(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 50));
  sub_1B7201CF8(v3, v4);
  sub_1B7201D10(v2, v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B75148AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v8 ^ 1u, 1, AssociatedTypeWitness);
}

void sub_1B7514A04(uint64_t a1, id a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    sub_1B78006E8();
    return;
  }

  v5 = v2;
  v17 = *v2;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7;
    while (1)
    {
      if (v9 >= v4)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        sub_1B7800C58();
        goto LABEL_14;
      }

      sub_1B77FF4F8();
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }

      sub_1B7514E2C(a2, v5, &v18);
      v3 = v18;
      if (v18)
      {
        break;
      }

      ++v9;
      if (v7 == v4)
      {
        goto LABEL_12;
      }
    }

    MEMORY[0x1B8CA4F20](v10);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    v8 = v19;
  }

  while (v7 != v4);
LABEL_12:
  a2 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A40);
  *(v12 + 64) = sub_1B728216C(&qword_1EB993A48, &qword_1EB993A40);
  *(v12 + 32) = v8;
  *(v11 + 32) = sub_1B78010E8();
  v19 = v11;
  v13 = *(v5 + qword_1EDB08728);
  if (!v13)
  {
    goto LABEL_15;
  }

  v3 = v13;
  MEMORY[0x1B8CA4F20]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

LABEL_14:
  sub_1B7800C88();

LABEL_15:
  v14 = sub_1B7800C18();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  [a2 setPredicate_];
  [a2 setReturnsObjectsAsFaults_];
  v16 = [*(*(v5 + qword_1EDB08748) + 16) newBackgroundContext];
  MEMORY[0x1EEE9AC00](v16);
  sub_1B7800CB8();
  sub_1B7801468();
}

void sub_1B7514E2C(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1B77FF3F8();
  v7 = [a1 managedObjectIDForURIRepresentation_];

  if (v7)
  {
    if (![v7 isTemporaryID])
    {
      v8 = [v7 persistentStore];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 identifier];

        if (v10)
        {
          v11 = sub_1B7800868();
          v13 = v12;

          v14 = *(a2 + qword_1EDB08730 + 8);
          if (v14)
          {
            if (v11 == *(a2 + qword_1EDB08730) && v14 == v13)
            {

              goto LABEL_14;
            }

            v16 = sub_1B78020F8();

            if (v16)
            {
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }
    }

    v7 = 0;
  }

LABEL_14:
  *a3 = v7;
}

void *sub_1B7514F78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v11[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v11];

  if (v6)
  {
    v7 = v11[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60);
    result = sub_1B7801498();
    if (!v2)
    {
      v11[0] = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996838);
      sub_1B728216C(&unk_1EB996840, &qword_1EB996838);
      v9 = sub_1B7800B28();

      *a2 = v9;
    }
  }

  else
  {
    v10 = v11[0];
    sub_1B77FF318();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B751515C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + qword_1EDB08740);
    swift_unknownObjectRetain();
    v8(v7);
    if (!v2)
    {
      (*(*(*(v5 + 128) - 8) + 56))(a2, 0, 1);
      return swift_unknownObjectRelease();
    }

    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v9 = sub_1B78000B8();
    __swift_project_value_buffer(v9, qword_1EDAF6590);
    swift_unknownObjectRetain();
    v10 = sub_1B7800098();
    v11 = sub_1B78011D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v7;
      *v13 = v7;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_1B7198000, v10, v11, "Unable to convert %@ into a model", v12, 0xCu);
      sub_1B7205418(v13, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v14 = sub_1B78000B8();
    __swift_project_value_buffer(v14, qword_1EDAF6590);
    v10 = sub_1B7800098();
    v15 = sub_1B78011F8();
    if (os_log_type_enabled(v10, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B7198000, v10, v15, "Fetch returned non managed objects", v16, 2u);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
    }
  }

  return (*(*(*(v5 + 128) - 8) + 56))(a2, 1, 1);
}

uint64_t sub_1B75154D8()
{

  v1 = qword_1EDB08750;
  v2 = sub_1B78013E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B7201CF8(*(v0 + qword_1EDB086F0), *(v0 + qword_1EDB086F0 + 8));

  sub_1B7205418(v0 + qword_1EDB086F8, &unk_1EB993A10);

  v3 = qword_1EDB08700;
  v4 = sub_1B78000B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7515660()
{
  v0 = sub_1B74E3474();

  v1 = qword_1EDB08750;
  v2 = sub_1B78013E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B7201CF8(*(v0 + qword_1EDB086F0), *(v0 + qword_1EDB086F0 + 8));

  sub_1B7205418(v0 + qword_1EDB086F8, &unk_1EB993A10);

  v3 = qword_1EDB08700;
  v4 = sub_1B78000B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B75157E8()
{
  sub_1B7515660();

  return swift_deallocClassInstance();
}

unint64_t sub_1B751583C()
{
  result = qword_1EDAF9658;
  if (!qword_1EDAF9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9658);
  }

  return result;
}

void sub_1B75158A0()
{
  sub_1B78013E8();
  if (v0 <= 0x3F)
  {
    sub_1B73F170C();
    if (v1 <= 0x3F)
    {
      sub_1B78000B8();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B7515A3C()
{
  result = qword_1EB996808;
  if (!qword_1EB996808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996808);
  }

  return result;
}

unint64_t sub_1B7515A94()
{
  result = qword_1EDAF9640;
  if (!qword_1EDAF9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9640);
  }

  return result;
}

unint64_t sub_1B7515AEC()
{
  result = qword_1EDAF9648;
  if (!qword_1EDAF9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9648);
  }

  return result;
}

uint64_t AccountOriginType.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x6E6F43206B6E6142;
  v3 = 0x614320656C707041;
  v4 = 0x615320656C707041;
  if (v1 != 3)
  {
    v4 = 0x6C6F686563616C50;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614320656C707041;
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

FinanceKit::AccountOriginType_optional __swiftcall AccountOriginType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B7515C94()
{
  result = qword_1EB996860;
  if (!qword_1EB996860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996860);
  }

  return result;
}

unint64_t sub_1B7515DA4()
{
  result = qword_1EB996868;
  if (!qword_1EB996868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996868);
  }

  return result;
}

uint64_t sub_1B7515E18()
{
  v1 = *v0;
  v2 = 0x6E6F43206B6E6142;
  v3 = 0x614320656C707041;
  v4 = 0x615320656C707041;
  if (v1 != 3)
  {
    v4 = 0x6C6F686563616C50;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614320656C707041;
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

unint64_t sub_1B7515EEC()
{
  result = qword_1EB996878;
  if (!qword_1EB996878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996878);
  }

  return result;
}

id ManagedOrderDashboardItem.backingItem.getter@<X0>(void *a1@<X8>)
{
  result = [v1 classicOrder];
  if (result)
  {
    goto LABEL_4;
  }

  v4 = [v1 extractedOrder];
  if (v4)
  {
    result = (v4 | 0x8000000000000000);
LABEL_4:
    *a1 = result;
    return result;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t static ManagedOrderDashboardItem.showsAsActiveUntilDate(orderUpdateDate:calendar:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B77FFC88();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = sub_1B77FFCF8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_1B77FECD8();
  sub_1B77FFC08();
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v4, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B720D780(v13);
    return (*(v17 + 32))(a1, v4, v16);
  }

  return result;
}

void sub_1B7516308(id *a1)
{
  v1 = [*a1 storedArchiveDate];
  sub_1B77FF928();
}

uint64_t sub_1B7516368@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 storedOrderUpdateDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B751640C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7280900(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setStoredOrderUpdateDate_];
}

uint64_t ManagedOrderDashboardItem.__allocating_init(backingItem:context:)(void **a1, void *a2)
{
  v5 = sub_1B77FFCF8();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFC88();
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B77FF988();
  v11 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = objc_allocWithZone(v2);
  v40 = a2;
  v16 = [v15 initWithContext_];
  v17 = v16;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v28 = v16;
    v37 = v28;
    v19 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    [v28 setExtractedOrder_];
    v29 = [v19 orderContent];
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    ManagedExtractedOrderContent.archiveDate(calendar:timeZone:)(v10, v7, v13);

    (*(v38 + 8))(v7, v5);
    v30 = *(v39 + 8);
    v30(v10, v8);
    v31 = sub_1B77FF8B8();
    v39 = *(v11 + 8);
    (v39)(v13, v41);
    v32 = v37;
    [v37 setStoredArchiveDate_];

    sub_1B77FF938();
    sub_1B77FFBC8();
    LOBYTE(v31) = ManagedExtractedOrder.showsAsActive(now:calendar:)(v13, v10);
    v30(v10, v8);
    v23 = v41;
    v22 = v39;
    (v39)(v13, v41);
    [v32 setStoredShowsAsActive_];
    v33 = [v19 orderContent];
    v34 = [v33 orderUpdateDate];

    sub_1B77FF928();
    v27 = sub_1B77FF8B8();
    goto LABEL_5;
  }

  v18 = v16;
  v19 = v14;
  [v18 setClassicOrder_];
  v20 = [v19 archiveDate];
  sub_1B77FF928();

  v21 = sub_1B77FF8B8();
  v22 = *(v11 + 8);
  v23 = v41;
  v22(v13, v41);
  [v18 setStoredArchiveDate_];

  [v18 setStoredShowsAsActive_];
  v24 = [v19 ecommerceOrderContent];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 updatedDate];
    sub_1B77FF928();

    v27 = sub_1B77FF8B8();
LABEL_5:
    v22(v13, v23);
    [v17 setStoredOrderUpdateDate_];

    return v17;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

id ManagedOrderDashboardItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderDashboardItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderDashboardItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ManagedOrderDashboardItem.priority.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B77FFCF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFC88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 classicOrder];
  if (v12)
  {
    v17 = v12;
    ManagedOrder.priority.getter(a1);
    v13 = v17;
  }

  else
  {
    v14 = [v2 extractedOrder];
    if (v14)
    {
      v15 = v14;
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      sub_1B75523A4(v11, v7, a1);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      sub_1B7801C88();
      __break(1u);
    }
  }
}

id static ManagedOrderDashboardItem.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderDashboardItem.fetchShowsAsActiveRequest()()
{
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v0 = objc_msgSendSuper2(&v6, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = sub_1B7205540(0, &qword_1EDAFC4C8);
  v3 = sub_1B7801528();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1B7451BE4();
  *(v1 + 32) = v3;
  v4 = sub_1B78010E8();
  [v0 setPredicate_];

  return v0;
}

uint64_t static ManagedOrderDashboardItem.predicateForShowsAsActive()()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B7205540(0, &qword_1EDAFC4C8);
  v2 = sub_1B7801528();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1B7451BE4();
  *(v0 + 32) = v2;
  return sub_1B78010E8();
}

unint64_t static ManagedOrderDashboardItem.existingItemForClassicOrder(with:in:)(__int128 *a1)
{
  v2 = v1;
  v11 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v5 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v12 = v11;
  v13 = v3;
  v14 = v4;
  v6 = _s10FinanceKit25ManagedOrderDashboardItemC012predicateForfh7ClassicD04withSo11NSPredicateCAA014FullyQualifiedD10IdentifierV_tFZ_0(&v12);
  [v5 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v2 = v8;

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t static ManagedOrderDashboardItem.existingItemForExtractedOrder(with:in:)(uint64_t a1, uint64_t a2)
{
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v4 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30);
  v6 = "storedShowsAsActive == %@";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  *(v5 + 32) = sub_1B78010E8();
  v8 = sub_1B7800C18();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v4 setPredicate_];
  v10 = v16;
  result = sub_1B7801498();
  if (v10)
  {

    return v6;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v13 = result;
  v14 = sub_1B7801958();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v6 = v12;

    return v6;
  }

  __break(1u);
  return result;
}

id static ManagedOrderDashboardItem.predicateForItemForExtractedOrder(with:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  *(v4 + 32) = sub_1B78010E8();
  v6 = sub_1B7800C18();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

id static ManagedOrderDashboardItem.predicateForItems(withMessageID:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  *(v4 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v10;
}

uint64_t static ManagedOrderDashboardItem.predicateForDashboardItemsWithObjectIDs(_:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0);
  *(v2 + 64) = sub_1B7451C4C();
  *(v2 + 32) = a1;

  return sub_1B78010E8();
}

uint64_t ManagedOrderDashboardItem.updateShowsAsActiveIfNeeded(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFC88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 classicOrder];
  if (v12)
  {
    v13 = v12;
    sub_1B77FFBC8();
    v14 = _s10FinanceKit12ManagedOrderC13showsAsActive5order3now8calendarSbAC_10Foundation4DateVAH8CalendarVtFZ_0(v13, a1);
    (*(v9 + 8))(v11, v8);
    v15 = v14 ^ [v13 showsAsActive];
    if (v15)
    {
      [v13 setShowsAsActive_];
    }

    v16 = [v2 storedShowsAsActive];
    if (v16 == [v13 showsAsActive])
    {
      goto LABEL_10;
    }

    LOBYTE(v17) = [v13 showsAsActive];
    goto LABEL_8;
  }

  v18 = [v1 extractedOrder];
  if (v18)
  {
    v13 = v18;
    sub_1B77FF938();
    sub_1B77FFBC8();
    v17 = ManagedExtractedOrder.showsAsActive(now:calendar:)(v7, v11);
    (*(v9 + 8))(v11, v8);
    (*(v5 + 8))(v7, v4);
    if (((v17 ^ [v2 storedShowsAsActive]) & 1) == 0)
    {
      v15 = 0;
      goto LABEL_10;
    }

LABEL_8:
    [v2 setStoredShowsAsActive_];
    v15 = 1;
LABEL_10:

    return v15 & 1;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

id static ManagedOrderDashboardItem.activeDashboardItemsFetchRequest()()
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v0 = objc_msgSendSuper2(&v9, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = sub_1B7205540(0, &qword_1EDAFC4C8);
  v3 = sub_1B7801528();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1B7451BE4();
  *(v1 + 32) = v3;
  v4 = sub_1B78010E8();
  [v0 setPredicate_];

  [v0 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470);
  swift_getKeyPath();
  *(v5 + 32) = sub_1B7801288();
  v6 = sub_1B7800C18();

  [v0 setSortDescriptors_];

  v7 = sub_1B7800C18();
  [v0 setRelationshipKeyPathsForPrefetching_];

  return v0;
}

id _s10FinanceKit25ManagedOrderDashboardItemC012predicateForfh7ClassicD04withSo11NSPredicateCAA014FullyQualifiedD10IdentifierV_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  v12 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v12;
  *(v8 + 40) = v3;
  *(v4 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

id sub_1B7517EA0(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    type metadata accessor for ManagedOrderDashboardItem();
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void OrderTitleFormatter.Input.init(orderContent:fulfillment:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~a2 & 0xF000000000000007) != 0)
  {
    if (a2 < 0)
    {
      v12 = [a2 & 0x7FFFFFFFFFFFFFFFLL lineItemObjects];
      type metadata accessor for ManagedOrderLineItem();
      sub_1B7519F70(&qword_1EB98FFA0, type metadata accessor for ManagedOrderLineItem);
      v13 = sub_1B7800FA8();

      v15 = sub_1B7519D38(v13, sub_1B72635A4, sub_1B7261D6C);
      sub_1B74D29C8(&v15);
      sub_1B7483848(a2);

      v10 = v15;
      goto LABEL_6;
    }

    v9 = ManagedOrderShippingFulfillment.lineItems.getter();
  }

  else
  {
    v9 = ManagedECommerceOrderContent.lineItems.getter();
  }

  v10 = v9;
LABEL_6:
  v11 = [a1 createdDate];
  sub_1B77FF928();

  OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)(v10, v8, a3);
  sub_1B7483848(a2);
}

uint64_t OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = sub_1B7801958();
    if (result)
    {
LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CA5DC0](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v8 = *(a1 + 32);
      }

      v9 = v8;
      v10 = [v8 title];

      v11 = sub_1B77FFA48();
      v12 = sub_1B741F7D4(v11);
      v14 = v13;

      v15 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_7;
      }

LABEL_10:
      v16 = sub_1B7801958();
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = *(v15 + 16);
LABEL_11:

  *a3 = v12;
  a3[1] = v14;
  a3[2] = v16;
  v17 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v18 = sub_1B77FF988();
  v19 = *(*(v18 - 8) + 32);

  return v19(a3 + v17, a2, v18);
}

uint64_t OrderTitleFormatter.Input.firstLineItemTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OrderTitleFormatter.Input.firstLineItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrderTitleFormatter.Input.orderCreatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderTitleFormatter.Input.orderCreatedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderTitleFormatter.Input.init(firstLineItemTitle:totalNumberOfLineItems:orderCreatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v8 = sub_1B77FF988();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t OrderTitleFormatter.format(_:now:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for OrderedDateFormatter();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v23 - v7;
  v9 = a1[1];
  if (v9)
  {
    v10 = *a1;
    v11 = a1[2];
    if (v11 < 2)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B7808C50;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      v13 = sub_1B721FF04();
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      v14 = MEMORY[0x1E69E65A8];
      *(v12 + 96) = MEMORY[0x1E69E6530];
      *(v12 + 104) = v14;
      *(v12 + 64) = v13;
      *(v12 + 72) = v11 - 1;
      v15 = qword_1EDAF93A8;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDAF93B0;
      v17 = sub_1B7800838();
      v18 = sub_1B7800838();
      v19 = sub_1B7800838();
      v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

      sub_1B7800868();
      v10 = sub_1B78008A8();
    }
  }

  else
  {
    sub_1B7519EB8(v2, &v23 - v7);
    v21 = type metadata accessor for OrderTitleFormatter.Input(0);
    v10 = OrderedDateFormatter.format(_:now:)(a1 + *(v21 + 24), a2);
    sub_1B751A118(v8, type metadata accessor for OrderedDateFormatter);
  }

  return v10;
}

BOOL static OrderTitleFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration();
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B75188F4(uint64_t a1)
{
  v2 = sub_1B7519F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7518930(uint64_t a1)
{
  v2 = sub_1B7519F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderTitleFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996880);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7519F1C();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B7519F70(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t OrderTitleFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t OrderTitleFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t OrderTitleFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996890);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for OrderTitleFormatter(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7519F1C();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v15;
    sub_1B7519F70(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    v13 = v17;
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B7519FD8(v13, v11, type metadata accessor for FormatterConfiguration);
    sub_1B7519FD8(v11, v12, type metadata accessor for OrderTitleFormatter);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7518FE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OrderTitleFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B7519010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = OrderTitleFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B7519110(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996880);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7519F1C();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B7519F70(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B7519288()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B75193D8()
{
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t sub_1B7519518()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7519668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[2];
  if (v5)
  {
    v7 = a1[9];
    v6 = a1[10];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a3 = v7;
  *(a3 + 1) = v6;
  *(a3 + 2) = v5;
  v8 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v9 = sub_1B77FF988();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

void OrderTitleFormatter.Input.init(orderContent:orderReturn:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ManagedOrderReturn.lineItems.getter();
  v10 = [a1 createdDate];
  sub_1B77FF928();

  OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)(v9, v8, a3);
}

void OrderTitleFormatter.Input.init(orderContent:contentItem:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if ((~*a2 & 0x7000000000000007) != 0)
  {
    if ((v9 & 0x4000000000000000) != 0)
    {
      v11 = ManagedOrderReturn.lineItems.getter();
    }

    else
    {
      if (v9 < 0)
      {
        v13 = [v9 & 0x3FFFFFFFFFFFFFFFLL lineItemObjects];
        type metadata accessor for ManagedOrderLineItem();
        sub_1B7519F70(&qword_1EB98FFA0, type metadata accessor for ManagedOrderLineItem);
        v14 = sub_1B7800FA8();

        v16 = sub_1B7519D38(v14, sub_1B72635A4, sub_1B7261D6C);
        sub_1B74D29C8(&v16);

        sub_1B7290634(v9);
        v10 = v16;
        goto LABEL_8;
      }

      v11 = ManagedOrderShippingFulfillment.lineItems.getter();
    }

    v10 = v11;
    sub_1B7290634(v9);
  }

  else
  {
    v10 = ManagedECommerceOrderContent.lineItems.getter();
  }

LABEL_8:
  v12 = [a1 createdDate];
  sub_1B77FF928();

  OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)(v10, v8, a3);
}

uint64_t OrderTitleFormatter.Input.init(orderContent:contentItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990838);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  sub_1B751A040(a2, &v21 - v11);
  v13 = type metadata accessor for RawECommerceOrderContent.ContentItem(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_1B751A0B0(v12);
    v14 = *(a1 + *(type metadata accessor for RawECommerceOrderContent(0) + 76));
  }

  else
  {
    v14 = RawECommerceOrderContent.ContentItem.lineItems.getter();
    sub_1B751A118(v12, type metadata accessor for RawECommerceOrderContent.ContentItem);
  }

  v15 = type metadata accessor for RawECommerceOrderContent(0);
  (*(v7 + 16))(v9, a1 + *(v15 + 44), v6);
  v16 = v14[2];
  if (v16)
  {
    v18 = v14[9];
    v17 = v14[10];
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  *a3 = v18;
  *(a3 + 1) = v17;
  *(a3 + 2) = v16;
  v19 = type metadata accessor for OrderTitleFormatter.Input(0);
  (*(v7 + 32))(&a3[*(v19 + 24)], v9, v6);
  sub_1B751A0B0(a2);
  return sub_1B751A118(a1, type metadata accessor for RawECommerceOrderContent);
}

char *sub_1B7519D38(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1B7801958();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1B71B7B58();
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

uint64_t _s10FinanceKit19OrderTitleFormatterV5InputV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for OrderTitleFormatter.Input(0);

  return sub_1B77FF918();
}

uint64_t sub_1B7519EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7519F1C()
{
  result = qword_1EB996888;
  if (!qword_1EB996888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996888);
  }

  return result;
}

uint64_t sub_1B7519F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7519FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B751A040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B751A0B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B751A118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B751A178(uint64_t a1)
{
  result = sub_1B7519F70(&qword_1EB996898, type metadata accessor for OrderTitleFormatter);
  *(a1 + 8) = result;
  return result;
}

void sub_1B751A340()
{
  sub_1B7280028();
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B751A3E0()
{
  result = qword_1EB9968E0;
  if (!qword_1EB9968E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9968E0);
  }

  return result;
}

unint64_t sub_1B751A438()
{
  result = qword_1EB9968E8;
  if (!qword_1EB9968E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9968E8);
  }

  return result;
}

unint64_t sub_1B751A490()
{
  result = qword_1EB9968F0;
  if (!qword_1EB9968F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9968F0);
  }

  return result;
}

uint64_t AppleAccountDataImporterError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1B751A574()
{
  result = qword_1EB9968F8;
  if (!qword_1EB9968F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9968F8);
  }

  return result;
}

uint64_t sub_1B751A5C8(uint64_t a1)
{
  v2 = sub_1B751A6D0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B751A604(uint64_t a1)
{
  v2 = sub_1B751A6D0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1B751A640()
{
  result = qword_1EB996900;
  if (!qword_1EB996900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996900);
  }

  return result;
}

unint64_t sub_1B751A6D0()
{
  result = qword_1EB996908;
  if (!qword_1EB996908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996908);
  }

  return result;
}

uint64_t static BankConnectConsentHeaderParser.parse<A>(httpURLResponse:responseType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[3] = a3;
  v6 = sub_1B77FE8B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7800838();
  v11 = [a1 valueForHTTPHeaderField_];

  if (!v11)
  {
    sub_1B7280708();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  v21[0] = v3;
  v21[1] = a2;
  sub_1B7800868();

  v12 = sub_1B77FF548();
  v14 = v13;

  if (v14 >> 60 == 15)
  {
    sub_1B7280708();
    swift_allocError();
    *v15 = 3;
    return swift_willThrow();
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_1EB991BC8);
  (*(v7 + 16))(v9, v18, v6);
  sub_1B77FE8C8();
  v19 = v21[0];
  sub_1B77FE8D8();

  if (v19)
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B751B49C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    *v20 = v19;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return sub_1B72380B8(v12, v14);
}

uint64_t static BankConnectConsentHeaderBuilder.encode(consent:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B77FE968();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77FE9B8();
  swift_allocObject();
  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EB991BE8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1B77FE988();
  v10 = sub_1B77FE998();
  v12 = v11;

  if (!v2)
  {
    v14 = sub_1B77FF5A8();
    v16 = v15;
    result = sub_1B720A388(v10, v12);
    *a2 = 0x746E65736E6F43;
    a2[1] = 0xE700000000000000;
    a2[2] = v14;
    a2[3] = v16;
  }

  return result;
}

uint64_t static BankConnectConsentHeaderBuilder.build(consent:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = sub_1B77FE968();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BankConnectConsent();
  v6 = v5[6];
  v7 = (a1 + v5[5]);
  v8 = *v7;
  v33 = v7[1];
  v34 = v8;
  v9 = type metadata accessor for RawBankConnectData.Consent(0);
  v39 = v9;
  v40 = sub_1B751B49C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  v11 = v9[5];
  v12 = sub_1B77FF988();
  v13 = *(*(v12 - 8) + 16);
  v13(boxed_opaque_existential_1 + v11, a1 + v6, v12);
  v13(boxed_opaque_existential_1 + v9[6], a1 + v5[7], v12);
  v14 = *(a1 + v5[9]);
  v15 = (a1 + v5[10]);
  v16 = *v15;
  v17 = v15[1];
  v18 = v33;
  *boxed_opaque_existential_1 = v34;
  boxed_opaque_existential_1[1] = v18;
  *(boxed_opaque_existential_1 + v9[7]) = v14;
  v19 = (boxed_opaque_existential_1 + v9[8]);
  *v19 = v16;
  v19[1] = v17;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v20 = v37;
  v21 = __swift_project_value_buffer(v37, qword_1EB991BE8);
  (*(v36 + 16))(v35, v21, v20);
  sub_1B77FE988();
  v22 = v41;
  v23 = sub_1B77FE998();
  v25 = v24;

  if (!v22)
  {
    v26 = sub_1B77FF5A8();
    v28 = v27;
    sub_1B720A388(v23, v25);
    v29 = v32;
    *v32 = 0x746E65736E6F43;
    v29[1] = 0xE700000000000000;
    v29[2] = v26;
    v29[3] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t static BankConnectResponseHeadersParser.parse(httpURLResponse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FE8B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.Consent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7800838();
  v12 = [a1 valueForHTTPHeaderField_];

  if (!v12)
  {
    sub_1B7280708();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  v27 = a2;
  sub_1B7800868();

  v28 = sub_1B77FF548();
  v14 = v13;

  if (v14 >> 60 == 15)
  {
    sub_1B7280708();
    swift_allocError();
    *v15 = 3;
    return swift_willThrow();
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_1EB991BC8);
  (*(v5 + 16))(v7, v18, v4);
  sub_1B77FE8C8();
  sub_1B751B49C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v19 = v10;
  v21 = v28;
  v20 = v29;
  sub_1B77FE8D8();

  if (v20)
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B751B49C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    *v22 = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1B72380B8(v21, v14);
  }

  else
  {
    sub_1B72380B8(v21, v14);
    sub_1B751B9B0(a1);
    v24 = v23;
    v25 = v27;
    sub_1B751BD9C(v19, v27);
    result = type metadata accessor for BankConnectResponseHeaders();
    v26 = v25 + *(result + 20);
    *v26 = v24;
    *(v26 + 2) = 0;
  }

  return result;
}

uint64_t sub_1B751B49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static BankConnectConsentHeaderBuilder.build(rawConsent:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B77FE968();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RawBankConnectData.Consent(0);
  v21 = sub_1B751B49C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_1B751BE50(a1, boxed_opaque_existential_1, type metadata accessor for RawBankConnectData.Consent);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_1B77FE9B8();
  swift_allocObject();
  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_1EB991BE8);
  (*(v6 + 16))(v8, v10, v5);
  sub_1B77FE988();
  v11 = sub_1B77FE998();
  v13 = v12;

  if (!v2)
  {
    v14 = sub_1B77FF5A8();
    v16 = v15;
    sub_1B720A388(v11, v13);
    *a2 = 0x746E65736E6F43;
    a2[1] = 0xE700000000000000;
    a2[2] = v14;
    a2[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1B751B72C(uint64_t a1)
{
  v2 = sub_1B77FFA18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserPresence();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B751BE50(a1, v8, type metadata accessor for UserPresence);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7807CD0;
    *(result + 32) = 0xD000000000000015;
    *(result + 40) = 0x80000001B7883E10;
    *(result + 48) = 0x544E4553455250;
    *(result + 56) = 0xE700000000000000;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B7808C50;
    *(v11 + 32) = 0xD000000000000015;
    *(v11 + 40) = 0x80000001B7883E10;
    *(v11 + 48) = 0x534552505F544F4ELL;
    *(v11 + 56) = 0xEB00000000544E45;
    v12 = sub_1B77FF9A8();
    *(v11 + 64) = 0xD000000000000014;
    *(v11 + 72) = 0x80000001B7883DF0;
    *(v11 + 80) = v12;
    *(v11 + 88) = v13;
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  return result;
}

void sub_1B751B9B0(void *a1)
{
  v2 = sub_1B7800838();
  v3 = [a1 valueForHTTPHeaderField_];

  if (!v3)
  {
    sub_1B7280708();
    swift_allocError();
    v17 = 1;
LABEL_66:
    *v16 = v17;
    swift_willThrow();
    return;
  }

  v4 = sub_1B7800868();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_65;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v39[0] = v4;
      v39[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            LOWORD(v26) = 0;
            v27 = v39 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = (10 * v26);
              if (v29 != 10 * v26)
              {
                break;
              }

              v26 = v29 + v28;
              if ((v29 + v28) != v26)
              {
                break;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_75:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          LOWORD(v33) = 0;
          v34 = v39;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = (10 * v33);
            if (v36 != 10 * v33)
            {
              break;
            }

            v33 = v36 + v35;
            if ((v36 + v35) != v33)
            {
              break;
            }

            ++v34;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v7)
      {
        if (--v7)
        {
          LOWORD(v18) = 0;
          v19 = v39 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = (10 * v18);
            if (v21 != 10 * v18)
            {
              break;
            }

            v18 = v21 - v20;
            if ((v21 - v20) != v18)
            {
              break;
            }

            ++v19;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_1B7801B48();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            LOWORD(v22) = 0;
            if (v10)
            {
              v23 = v10 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_63;
                }

                v25 = (10 * v22);
                if (v25 != 10 * v22)
                {
                  goto LABEL_63;
                }

                v22 = v25 + v24;
                if ((v25 + v24) != v22)
                {
                  goto LABEL_63;
                }

                ++v23;
                if (!--v7)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_74;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          LOWORD(v30) = 0;
          if (v10)
          {
            while (1)
            {
              v31 = *v10 - 48;
              if (v31 > 9)
              {
                goto LABEL_63;
              }

              v32 = (10 * v30);
              if (v32 != 10 * v30)
              {
                goto LABEL_63;
              }

              v30 = v32 + v31;
              if ((v32 + v31) != v30)
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v7) = 1;
LABEL_64:
        v40 = v7;
        v37 = v7;

        if ((v37 & 1) == 0)
        {
          return;
        }

        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(v12) = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_63;
              }

              v15 = (10 * v12);
              if (v15 != 10 * v12)
              {
                goto LABEL_63;
              }

              v12 = v15 - v14;
              if ((v15 - v14) != v12)
              {
                goto LABEL_63;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v7) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v40 = 0;
  v38 = sub_1B75D589C(v4, v6, 10);

  if ((v38 & 0x10000) != 0)
  {
LABEL_65:
    sub_1B7280708();
    swift_allocError();
    v17 = 2;
    goto LABEL_66;
  }
}

uint64_t sub_1B751BD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Consent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B751BE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t XPCService.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B751BF30()
{
  result = qword_1EB996910;
  if (!qword_1EB996910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996910);
  }

  return result;
}

uint64_t sub_1B751BF84()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B751BFF8()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B751C04C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t ManagedOrderReturn.status.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 statusValue];
  v3 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  result = _s10FinanceKit24ManagedOrderPickupStatusO8rawValueACSgs5Int16V_tcfC_0(v2);
  if (result == 6)
  {
    sub_1B7801A78();

    v5 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v5);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

char *ManagedOrderReturn.lineItems.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v3 = sub_1B7800FA8();

  v4 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  v6 = sub_1B7519CE0(v3);
  sub_1B74D29C8(&v6);

  return v6;
}

void sub_1B751C334(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_1B751C470@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B751C528(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &unk_1EB994C70);
  v7 = *a2;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF3F8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setReturnManagementURL_];
}

void sub_1B751C664(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 returnIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id ManagedOrderReturn.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderReturn.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderReturn.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderReturn.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedOrderReturn;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderReturn.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void sub_1B751C934(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B7800838();
  [v3 willChangeValueForKey_];

  [v3 setStatusValue_];
  v5 = sub_1B7800838();
  [v3 didChangeValueForKey_];
}

void ManagedOrderReturn.status.setter(unsigned __int8 a1)
{
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setStatusValue_];
  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedOrderReturn.status.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedOrderReturn.status.getter();
  return sub_1B751CAE0;
}

void sub_1B751CAE0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setStatusValue_];
  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void sub_1B751CB94(uint64_t a1, void **a2)
{
  v2 = *a2;

  sub_1B723B95C(v3);

  v4 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v5 = sub_1B7800F78();

  [v2 setLineItemObjects_];

  v6 = sub_1B7800838();
  [v2 didChangeValueForKey_];
}

void ManagedOrderReturn.lineItems.setter(unint64_t a1)
{
  sub_1B723B95C(a1);

  v2 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v3 = sub_1B7800F78();

  [v1 setLineItemObjects_];

  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedOrderReturn.lineItems.modify(char **a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedOrderReturn.lineItems.getter();
  return sub_1B751CDE0;
}

void sub_1B751CDE0(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723B95C(v3);

    v4 = sub_1B7800838();
    [v2 willChangeValueForKey_];

    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v5 = sub_1B7800F78();

    [v2 setLineItemObjects_];

    v6 = sub_1B7800838();
    [v2 didChangeValueForKey_];
  }

  else
  {
    sub_1B723B95C(*a1);

    v7 = sub_1B7800838();
    [v2 willChangeValueForKey_];

    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v8 = sub_1B7800F78();

    [v2 setLineItemObjects_];

    v9 = sub_1B7800838();
    [v2 didChangeValueForKey_];
  }
}

id ManagedOrderReturn.__allocating_init(_:bundle:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B751D7F4(a1, a2, a3);

  return v4;
}

char *ManagedOrderReturn.rawOrderReturn.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v110 = &v98 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v106 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v105 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v98 - v11;
  v12 = ManagedOrderReturn.status.getter();
  v13 = [v2 returnIdentifier];
  v14 = sub_1B7800868();
  v16 = v15;

  v17 = type metadata accessor for RawOrderReturn();
  v18 = v17[8];
  v19 = sub_1B77FF988();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v101 = v18;
  v21(a1 + v18, 1, 1, v19);
  v102 = v17[9];
  v21(a1 + v102, 1, 1, v19);
  v104 = v17[10];
  v112 = v21;
  v113 = v19;
  v111 = v22;
  v21(a1 + v104, 1, 1, v19);
  v23 = v17[15];
  v24 = sub_1B77FF4F8();
  v25 = *(v24 - 8);
  v108 = *(v25 + 56);
  v107 = v25 + 56;
  v108(a1 + v23, 1, 1, v24);
  *(a1 + 8) = v12;
  v26 = (a1 + v17[16]);
  *v26 = v14;
  v26[1] = v16;
  v27 = ManagedOrderReturn.lineItems.getter();
  v28 = v27;
  if (v27 >> 62)
  {
    v29 = sub_1B7801958();
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v110;
  v109 = v17;
  if (v29)
  {
    v115 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FE27C(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v99 = v24;
    v100 = v23;
    v32 = 0;
    v33 = v115;
    if ((v28 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1B8CA5DC0](v32, v28); ; i = *(v28 + 8 * v32 + 32))
    {
      v35 = i;
      ManagedOrderLineItem.rawOrderLineItem.getter(v114);

      v115 = v33;
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B71FE27C((v36 > 1), v37 + 1, 1);
        v33 = v115;
      }

      *(v33 + 16) = v37 + 1;
      v38 = (v33 + (v37 << 7));
      v39 = v114[0];
      v40 = v114[1];
      v41 = v114[3];
      v38[4] = v114[2];
      v38[5] = v41;
      v38[2] = v39;
      v38[3] = v40;
      v42 = v114[4];
      v43 = v114[5];
      v44 = v114[7];
      v38[8] = v114[6];
      v38[9] = v44;
      v38[6] = v42;
      v38[7] = v43;
      if (v29 - 1 == v32)
      {
        break;
      }

      ++v32;
      if ((v28 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    v30 = v110;
    v23 = v100;
    v24 = v99;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v33;
  v45 = [v2 statusDescription];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1B77FFA48();
    v48 = sub_1B741F7D4(v47);
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = v109;
  *(a1 + 16) = v48;
  *(a1 + 24) = v50;
  v52 = [v2 notes];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1B77FFA48();
    v55 = sub_1B741F7D4(v54);
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v58 = v106;
  v59 = v105;
  *(a1 + 32) = v55;
  *(a1 + 40) = v57;
  v60 = [v2 initiationDate];
  if (v60)
  {
    v61 = v103;
    v62 = v60;
    sub_1B77FF928();

    v63 = 0;
  }

  else
  {
    v63 = 1;
    v61 = v103;
  }

  v64 = 1;
  v112(v61, v63, 1, v113);
  sub_1B7213740(v61, a1 + v101, &qword_1EB98EBD0);
  v65 = [v2 dropOffDate];
  if (v65)
  {
    v66 = v65;
    sub_1B77FF928();

    v64 = 0;
  }

  v67 = 1;
  v112(v59, v64, 1, v113);
  sub_1B7213740(v59, a1 + v102, &qword_1EB98EBD0);
  v68 = [v2 returnDate];
  if (v68)
  {
    v69 = v68;
    sub_1B77FF928();

    v67 = 0;
  }

  v70 = v104;
  v112(v58, v67, 1, v113);
  sub_1B7213740(v58, a1 + v70, &qword_1EB98EBD0);
  v71 = [v2 returnNumber];
  if (v71)
  {
    v72 = v71;
    v73 = sub_1B7800868();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  v76 = (a1 + v51[11]);
  *v76 = v73;
  v76[1] = v75;
  v77 = [v2 carrier];
  if (v77)
  {
    v78 = v77;
    v79 = sub_1B7800868();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  v82 = (a1 + v51[12]);
  *v82 = v79;
  v82[1] = v81;
  v83 = [v2 trackingNumber];
  if (v83)
  {
    v84 = v83;
    v85 = sub_1B7800868();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v88 = (a1 + v51[13]);
  *v88 = v85;
  v88[1] = v87;
  v89 = [v2 returnLabel];
  if (v89)
  {
    v90 = v89;
    v91 = sub_1B7800868();
    v93 = v92;
  }

  else
  {
    v91 = 0;
    v93 = 0;
  }

  v94 = (a1 + v51[14]);
  *v94 = v91;
  v94[1] = v93;
  v95 = [v2 returnManagementURL];
  if (v95)
  {
    v96 = v95;
    sub_1B77FF478();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v108(v30, v97, 1, v24);
  return sub_1B7213740(v30, a1 + v23, &unk_1EB994C70);
}

id sub_1B751D7F4(uint64_t a1, uint64_t a2, void *a3)
{
  v87 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v78 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v76 - v14;
  v16 = objc_allocWithZone(v3);
  v86 = a3;
  v17 = [v16 initWithContext_];
  v18 = type metadata accessor for RawOrderReturn();
  v19 = *(a1 + *(v18 + 48) + 8);
  v20 = v17;
  if (v19)
  {
    v19 = sub_1B7800838();
  }

  [v17 setCarrier_];

  if (*(a1 + *(v18 + 52) + 8))
  {
    v21 = sub_1B7800838();
  }

  else
  {
    v21 = 0;
  }

  v80 = v18;
  v81 = v17;
  [v17 setTrackingNumber_];

  v22 = *a1;
  v23 = *(*a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v82 = v8;
  if (!v23)
  {
LABEL_16:
    sub_1B723B95C(v24);

    v43 = sub_1B7800838();
    v44 = v81;
    [v81 willChangeValueForKey_];

    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v45 = sub_1B7800F78();

    [v44 setLineItemObjects_];

    v46 = sub_1B7800838();
    [v44 didChangeValueForKey_];

    v47 = *(a1 + 8);
    v48 = sub_1B7800838();
    [v44 willChangeValueForKey_];

    [v44 setStatusValue_];
    v49 = sub_1B7800838();
    [v44 didChangeValueForKey_];

    v51 = *(a1 + 24);
    if (v51)
    {
      MEMORY[0x1EEE9AC00](v50);
      *(&v76 - 4) = v52;
      *(&v76 - 3) = v51;
      *(&v76 - 2) = 0x726564726FLL;
      *(&v76 - 1) = 0xE500000000000000;

      v53 = sub_1B723940C(sub_1B726357C, (&v76 - 6));
    }

    else
    {
      v53 = 0;
    }

    [v44 setStatusDescription_];

    v55 = *(a1 + 40);
    if (v55)
    {
      MEMORY[0x1EEE9AC00](v54);
      *(&v76 - 4) = v56;
      *(&v76 - 3) = v55;
      *(&v76 - 2) = v57;
      *(&v76 - 1) = 0xE500000000000000;

      v58 = sub_1B723940C(sub_1B7262E4C, (&v76 - 6));
    }

    else
    {
      v58 = 0;
    }

    [v44 setNotes_];

    v59 = v80;
    if (*(a1 + v80[11] + 8))
    {
      v60 = sub_1B7800838();
    }

    else
    {
      v60 = 0;
    }

    [v44 setReturnNumber_];

    if (*(a1 + v59[14] + 8))
    {
      v61 = sub_1B7800838();
    }

    else
    {
      v61 = 0;
    }

    [v44 setReturnLabel_];

    sub_1B7205588(a1 + v59[8], v15, &qword_1EB98EBD0);
    v62 = sub_1B77FF988();
    v63 = *(v62 - 8);
    v64 = *(v63 + 48);
    v65 = 0;
    if (v64(v15, 1, v62) != 1)
    {
      v65 = sub_1B77FF8B8();
      (*(v63 + 8))(v15, v62);
    }

    [v44 setInitiationDate_];

    v66 = v78;
    sub_1B7205588(a1 + v59[9], v78, &qword_1EB98EBD0);
    if (v64(v66, 1, v62) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = sub_1B77FF8B8();
      (*(v63 + 8))(v66, v62);
    }

    [v44 setDropOffDate_];

    v68 = v79;
    sub_1B7205588(a1 + v59[10], v79, &qword_1EB98EBD0);
    if (v64(v68, 1, v62) == 1)
    {
      v69 = 0;
    }

    else
    {
      v70 = v68;
      v69 = sub_1B77FF8B8();
      (*(v63 + 8))(v70, v62);
    }

    v71 = v82;
    [v44 setReturnDate_];

    sub_1B7205588(a1 + v59[15], v71, &unk_1EB994C70);
    v72 = sub_1B77FF4F8();
    v73 = *(v72 - 8);
    v74 = 0;
    if ((*(v73 + 48))(v71, 1, v72) != 1)
    {
      v74 = sub_1B77FF3F8();
      (*(v73 + 8))(v71, v72);
    }

    [v44 setReturnManagementURL_];

    v75 = sub_1B7800838();
    [v44 setReturnIdentifier_];

    sub_1B7457314(a1);
    return v44;
  }

  v76 = v15;
  v77 = a1;
  v118 = MEMORY[0x1E69E7CC0];
  sub_1B7801B98();
  v25 = *(v22 + 16);
  result = type metadata accessor for ManagedOrderLineItem();
  v85 = result;
  v83 = v25;
  if (!v25)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    v24 = v118;
    v15 = v76;
    a1 = v77;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = (v22 + 32);
  v84 = v23 - 1;
  while (v27 < *(v22 + 16))
  {
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[3];
    v98[2] = v28[2];
    v98[3] = v31;
    v98[0] = v29;
    v98[1] = v30;
    v32 = v28[4];
    v33 = v28[5];
    v34 = v28[7];
    v98[6] = v28[6];
    v98[7] = v34;
    v98[4] = v32;
    v98[5] = v33;
    v35 = *v28;
    v36 = v28[1];
    v37 = v28[3];
    v92 = v28[2];
    v93 = v37;
    v90 = v35;
    v91 = v36;
    v38 = v28[4];
    v39 = v28[5];
    v40 = v28[7];
    v96 = v28[6];
    v97 = v40;
    v94 = v38;
    v95 = v39;
    memmove(v99, v28, 0x80uLL);
    v105 = v99[4];
    v106 = v99[5];
    v107 = v99[6];
    v108 = v99[7];
    v101 = v99[0];
    v102 = v99[1];
    v103 = v99[2];
    v104 = v99[3];
    v117 = v97;
    v116 = v96;
    v115 = v95;
    v114 = v94;
    v113 = v93;
    v112 = v92;
    v111 = v91;
    v100 = v27;
    v109 = v27;
    v110 = v90;
    sub_1B73261F0(v98, v88);
    sub_1B73261F0(v99, v88);
    sub_1B751E284(&v109);
    v41 = v100;
    v89[4] = v105;
    v89[5] = v106;
    v89[6] = v107;
    v89[7] = v108;
    v89[0] = v101;
    v89[1] = v102;
    v89[2] = v103;
    v89[3] = v104;
    sub_1B7205588(&v100, v88, &qword_1EB995FF8);
    v42 = v87;

    result = ManagedOrderLineItem.__allocating_init(_:bundle:context:)(v89, v42, v86);
    if (v41 < -32768)
    {
      goto LABEL_40;
    }

    if (v41 >= 0x8000)
    {
      goto LABEL_41;
    }

    [result setPositionIndex_];
    sub_1B751E284(&v100);
    sub_1B7801B68();
    sub_1B7801BA8();
    sub_1B7801BB8();
    result = sub_1B7801B78();
    if (v84 == v27)
    {
      goto LABEL_15;
    }

    ++v27;
    v28 += 8;
    if (v83 == v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1B751E284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B751E2EC(uint64_t a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    v6 = [v4 leftExpression];
    v7 = sub_1B751E5F8(a1);

    v8 = [v4 rightExpression];
    v9 = sub_1B751E5F8(a1);

    v10 = [v4 comparisonPredicateModifier];
    v11 = [v4 predicateOperatorType];
    v12 = [v4 options];
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v7 rightExpression:v9 modifier:v10 type:v11 options:v12];

    return v13;
  }

  else
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    result = v1;
    if (v15)
    {
      v16 = result;
      v17 = [v15 subpredicates];
      v18 = sub_1B7800C38();

      v29 = MEMORY[0x1E69E7CC0];
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + 32;
        do
        {
          sub_1B719BDE4(v20, v28);
          sub_1B719BDE4(v28, v27);
          sub_1B729D790();
          if (swift_dynamicCast())
          {
            sub_1B751E2EC(a1);

            v21 = __swift_destroy_boxed_opaque_existential_1(v28);
            MEMORY[0x1B8CA4F20](v21);
            if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B7800C58();
            }

            sub_1B7800C88();
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v28);
          }

          v20 += 32;
          --v19;
        }

        while (v19);
      }

      else
      {
      }

      v22 = [v15 compoundPredicateType];
      v23 = objc_allocWithZone(MEMORY[0x1E696AB28]);
      sub_1B729D790();
      v24 = sub_1B7800C18();

      v25 = [v23 initWithType:v22 subpredicates:v24];

      return v25;
    }
  }

  return result;
}

id sub_1B751E5F8(uint64_t a1)
{
  v2 = v1;
  v18 = v2;
  if ([v2 expressionType] == 3)
  {
    v4 = [v18 keyPath];
    v5 = sub_1B7800868();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v18 keyPath];
      v10 = sub_1B7800868();
      v12 = v11;

      if (*(a1 + 16))
      {
        sub_1B724548C(v10, v12);
        v14 = v13;

        if (v14)
        {

          v15 = sub_1B7800838();

          v16 = [objc_opt_self() expressionForKeyPath_];

          return v16;
        }
      }

      else
      {
      }
    }
  }

  return v18;
}

double NSXPCConnection.value<A>(for:)@<D0>(_OWORD *a1@<X8>)
{
  sub_1B7800B38();
  v3 = sub_1B7800838();

  v4 = [v1 valueForEntitlement_];

  if (v4)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1B751E820(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B751E88C()
{
  v1 = (v0 + OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B751E8E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id FinanciaDataConnectionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanciaDataConnectionInfo.init()()
{
  v1 = &v0[OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier];
  v2 = type metadata accessor for FinanciaDataConnectionInfo();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id FinanciaDataConnectionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanciaDataConnectionInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BackgroundDeliveryExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_1B751EDA4;
  a3[1] = v10;
  return result;
}

uint64_t sub_1B751ECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v13[3] = a3;
  v13[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_1B719B06C(v13, v12);
  type metadata accessor for BackgroundDeliveryExtensionModel();
  v9 = swift_allocObject();
  sub_1B71E4C44(v12, v9 + 16);
  v10 = *(a1 + 16);
  [v10 setExportedObject_];

  [v10 resume];
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t dispatch thunk of BackgroundDeliveryExtensionProviding.didReceiveData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BackgroundDeliveryExtensionProviding.willTerminate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return v7(a1, a2);
}

unint64_t sub_1B751F034()
{
  result = qword_1EB996920;
  if (!qword_1EB996920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996920);
  }

  return result;
}

uint64_t sub_1B751F198()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B751F1F8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B751F290;
}

void sub_1B751F290(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id BankConnectAccountsProvider.__allocating_init(primaryAccountIdentifier:store:consentStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_1B7522A68(a1, a2, a3, v11, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v12;
}

id BankConnectAccountsProvider.init(primaryAccountIdentifier:store:consentStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1B7522948(a1, a2, a3, v13, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v15;
}

id BankConnectAccountsProvider.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    sub_1B7800E68();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAccountsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B751F6B4()
{
  v1[4] = v0;
  v2 = sub_1B78000B8();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for BankConnectConsent();
  v1[9] = swift_task_alloc();
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for InternalAccount();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B751F83C, 0, 0);
}

uint64_t sub_1B751F83C()
{
  v56 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = __swift_project_value_buffer(v0[5], qword_1EDAF65B0);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v55[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B71A3EF8(*(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier), *(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier + 8), v55);
    _os_log_impl(&dword_1B7198000, v4, v5, "Fetching account and reconsent status for primaryAccountIdentifier: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
  }

  v9 = [*(*(v0[4] + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store) + 16) newBackgroundContext];
  *(swift_task_alloc() + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996948);
  sub_1B7801468();
  v10 = v0[4];

  v11 = v0[2];
  if (!*(v10 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask))
  {
    type metadata accessor for SendableNSPersistentHistoryToken();
    v12 = swift_allocObject();
    v13 = v12;
    if (v11)
    {
      *(v12 + 16) = v11;
      v14 = v11;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v13 = 0;
      v14 = 0;
    }

    v15 = v14;
    sub_1B75205D4(v13);
  }

  v16 = (v0[4] + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier);
  v17 = *v16;
  v18 = v16[1];
  v19 = swift_task_alloc();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v9;
  sub_1B7801468();
  v54 = v11;
  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[11];

  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    v23 = v0[4];
    sub_1B7205418(v0[11], &qword_1EB991920);
    v24 = v23;
    v25 = sub_1B7800098();
    v26 = sub_1B78011D8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B71A3EF8(v17, v18, v55);
      _os_log_impl(&dword_1B7198000, v25, v26, "Unable to find an account for primaryAccountIdentifier: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1B8CA7A40](v28, -1, -1);
      MEMORY[0x1B8CA7A40](v27, -1, -1);
    }

    else
    {
    }

    v51 = 0;
  }

  else
  {
    v29 = v0[14];
    v30 = v0[12];
    v31 = v0[4];
    sub_1B72EABA0(v0[11], v29);
    v32 = (v29 + *(v30 + 20));
    v33 = v32[3];
    v53 = v32[2];
    v35 = *v32;
    v34 = v32[1];
    v36 = (v31 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore);
    v37 = *(v31 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore + 24);
    v38 = *(v31 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore + 32);
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v55[0] = v35;
    v55[1] = v34;
    v55[2] = v53;
    v55[3] = v33;
    v52 = v33;
    (*(v38 + 16))(v55, v37, v38);
    v39 = v0[14];
    v42 = v0[9];
    v44 = v0[6];
    v43 = v0[7];
    v45 = v0[5];
    LOBYTE(v33) = *(v42 + *(v0[8] + 44));
    sub_1B7522CD0(v42, type metadata accessor for BankConnectConsent);
    (*(v44 + 16))(v43, v2, v45);
    v46 = swift_task_alloc();
    *(v46 + 16) = v53;
    *(v46 + 24) = v52;
    *(v46 + 32) = v9;
    *(v46 + 40) = v43;
    *(v46 + 48) = v39;
    *(v46 + 56) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996960);
    sub_1B7801468();
    v47 = v0[14];
    v49 = v0[6];
    v48 = v0[7];
    v50 = v0[5];

    (*(v49 + 8))(v48, v50);
    v51 = v0[3];
    sub_1B7522CD0(v47, type metadata accessor for InternalAccount);
  }

  v40 = v0[1];

  return v40(v51);
}

id sub_1B751FEE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v9[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
    result = NSManagedObjectContext.currentLocalHistoryToken.getter();
    *a2 = result;
  }

  else
  {
    v8 = v9[0];
    sub_1B77FF318();

    return swift_willThrow();
  }

  return result;
}

void sub_1B751FFD4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, char a4@<W5>, void *a5@<X8>)
{
  v11 = type metadata accessor for InternalAccount();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInstitution();
  v14 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(a1, a2);
  if (!v5)
  {
    if (v14)
    {
      v15 = v14;
      sub_1B7205540(0, &unk_1EDAF6430);
      sub_1B72EAA7C(a3, v13);
      v16 = FKAccount.init(from:)(v13);
      sub_1B7205540(0, &qword_1EB9969B0);
      v17 = v15;
      v18 = FKInstitution.init(_:)(v17);
      v19 = [objc_allocWithZone(FKBankConnectAccountsProviderResponse) initWithAccount:v16 consentStatus:a4 & 1 institution:v18];

      *a5 = v19;
    }

    else
    {

      v20 = sub_1B7800098();
      v21 = sub_1B78011D8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1B71A3EF8(a1, a2, &v25);
        _os_log_impl(&dword_1B7198000, v20, v21, "Unable to find an institution with institutionID: %s.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1B8CA7A40](v23, -1, -1);
        MEMORY[0x1B8CA7A40](v22, -1, -1);
      }

      *a5 = 0;
    }
  }
}

uint64_t sub_1B752038C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B7520434;

  return sub_1B751F6B4();
}

uint64_t sub_1B7520434(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1B77FF308();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1B75205D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B78000B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  if (!*(v2 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask))
  {
    v21 = OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask;
    v22 = a1;
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_1EDAF65B0);
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Starting to observe persistent store remote change notifications", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = sub_1B7800DF8();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = *(v2 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store);
    (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v4);
    v18 = (*(v5 + 80) + 56) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = v22;
    *(v19 + 5) = v17;
    *(v19 + 6) = v16;
    (*(v5 + 32))(&v19[v18], &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    v20 = sub_1B76A1F9C(0, 0, v10, &unk_1B7839370, v19);
    *(v2 + v21) = v20;
  }

  return result;
}

uint64_t sub_1B75208D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969B8);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969C0);
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969C8);
  v7[26] = v10;
  v7[27] = *(v10 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7520A74, 0, 0);
}

uint64_t sub_1B7520A74()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[16];
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969D0);
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1B7800E48();

  sub_1B7800E28();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[29] = 0;
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1B7520C18;
  v11 = v0[26];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v11);
}

uint64_t sub_1B7520C18()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7520D14, 0, 0);
}

uint64_t sub_1B7520D14()
{
  v1 = v0[14];
  v0[31] = v1;
  if (v1 == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
LABEL_3:

    v2 = v0[1];
LABEL_6:

    return v2();
  }

  v3 = v0[29];
  sub_1B7800EB8();
  if (v3)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_1B728D04C(v1);

    v2 = v0[1];
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (!Strong)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_1B728D04C(v1);
    goto LABEL_3;
  }

  v6 = Strong;
  if (v1)
  {
    v7 = *(v1 + 16);

    [v7 copy];
    sub_1B7801848();
    sub_1B728D04C(v1);
    swift_unknownObjectRelease();
    sub_1B7205540(0, &qword_1EB996830);
    swift_dynamicCast();
    v1 = v0[15];
  }

  v0[33] = v1;
  v8 = *(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier);
  v9 = *(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier + 8);
  sub_1B719B06C(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_persistentHistoryTransactionProvider, (v0 + 2));
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_1B7520F7C;

  return sub_1B752134C(v1, v8, v9, (v0 + 2));
}

uint64_t sub_1B7520F7C()
{
  v2 = *v1;
  *(v2 + 280) = v0;

  v3 = *(v2 + 264);
  __swift_destroy_boxed_opaque_existential_1(v2 + 16);

  if (v0)
  {
    v4 = sub_1B7521174;
  }

  else
  {
    v4 = sub_1B75210B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B75210B8()
{
  v1 = v0[32];
  sub_1B728D04C(v0[31]);

  v0[29] = v0[35];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_1B7520C18;
  v3 = v0[26];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v3);
}

uint64_t sub_1B7521174()
{
  v1 = v0[35];
  v2 = v1;
  v3 = sub_1B7800098();
  v4 = sub_1B78011D8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[35];
  v7 = v0[31];
  v8 = v0[32];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B7198000, v3, v4, "Failed to update accounts with error: %@.", v9, 0xCu);
    sub_1B7205418(v10, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    sub_1B728D04C(v7);
  }

  else
  {
    sub_1B728D04C(v0[31]);
  }

  v0[29] = 0;
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_1B7520C18;
  v14 = v0[26];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v14);
}

uint64_t sub_1B752134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  v5[13] = swift_task_alloc();
  v6 = type metadata accessor for InternalAccount();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75214AC, 0, 0);
}

uint64_t sub_1B75214AC()
{
  v1 = *(v0 + 56);
  v2 = [*(*(*(v0 + 88) + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store) + 16) newBackgroundContext];
  type metadata accessor for SendableNSPersistentHistoryToken();
  v3 = swift_allocObject();
  v4 = v3;
  v5 = *(v0 + 56);
  if (v1)
  {
    *(v3 + 16) = v5;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v4 = 0;
  }

  v6 = *(v0 + 96);
  sub_1B719B06C(*(v0 + 80), v0 + 16);
  v7 = swift_task_alloc();
  v7[2] = v2;
  v7[3] = v0 + 16;
  v7[4] = v4;
  v7[5] = v6;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996980);
  sub_1B7801468();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v9 = *(v0 + 169);
  if (*(v0 + 168) == 1)
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = swift_task_alloc();
    v12[2] = v11;
    v12[3] = v10;
    v12[4] = v2;
    sub_1B7801468();
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);

    sub_1B72EA97C(v13, v14);
    v17 = (*(v16 + 48))(v14, 1, v15);
    v18 = *(v0 + 160);
    if (v17 == 1)
    {
      sub_1B7205418(*(v0 + 160), &qword_1EB991920);
      v19 = 0;
    }

    else
    {
      v20 = *(v0 + 128);
      v21 = *(v0 + 136);
      sub_1B72EABA0(*(v0 + 152), v21);
      sub_1B7205540(0, &unk_1EDAF6430);
      sub_1B72EAA7C(v21, v20);
      v19 = FKAccount.init(from:)(v20);
      sub_1B7522CD0(v21, type metadata accessor for InternalAccount);
      sub_1B7205418(v18, &qword_1EB991920);
    }

    v22 = *(v0 + 104);
    v23 = *(v0 + 88);
    v24 = sub_1B7800DF8();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    sub_1B7800DA8();
    v25 = v19;
    v26 = v23;
    v27 = sub_1B7800D98();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v26;
    v28[5] = v19;
    sub_1B759B8D0(0, 0, v22, &unk_1B7839348, v28);
  }

  if (v9)
  {
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = swift_task_alloc();
    v32[2] = v31;
    v32[3] = v30;
    v32[4] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996988);
    sub_1B7801468();

    v34 = *(v0 + 170);
    if (v34 != 2)
    {
      v35 = *(v0 + 104);
      v36 = *(v0 + 88);
      v37 = v34 & 1;
      v38 = sub_1B7800DF8();
      (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
      sub_1B7800DA8();
      v39 = v36;
      v40 = sub_1B7800D98();
      v41 = swift_allocObject();
      v42 = MEMORY[0x1E69E85E0];
      v41[2] = v40;
      v41[3] = v42;
      v41[4] = v39;
      v41[5] = v37;
      sub_1B759B8D0(0, 0, v35, &unk_1B7839338, v41);
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

void sub_1B75219F4(void *a1@<X0>, void *a2@<X2>, BOOL *a3@<X8>)
{
  v56[4] = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v56[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v56];

  if (v8)
  {
    if (a2)
    {
      v9 = a2[2];
      v10 = v56[0];
      [v9 copy];
      sub_1B7801848();
      swift_unknownObjectRelease();
      sub_1B7205540(0, &qword_1EB996830);
      swift_dynamicCast();
      a2 = v55;
    }

    else
    {
      v12 = v56[0];
    }

    NSManagedObjectContext.fetchPersistentHistory(after:store:)(a2, 0);
    v14 = v13;

    if (!v3)
    {
      if (v14 >> 62)
      {
        goto LABEL_54;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v16 = 0;
        v48 = v14 & 0xFFFFFFFFFFFFFF8;
        v49 = v14 & 0xC000000000000001;
        v45 = v14 + 32;
        do
        {
          v17 = v16;
          if (i == v16)
          {
            break;
          }

          if (v49)
          {
            v18 = MEMORY[0x1B8CA5DC0](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v18 = *(v14 + 8 * v16 + 32);
          }

          v19 = v18;
          if (__OFADD__(v17, 1))
          {
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v20 = sub_1B7523260(v18);

          v16 = v17 + 1;
        }

        while ((v20 & 1) == 0);
        v21 = 0;
        v43 = v14;
        v44 = a3;
        v47 = i;
        while (1)
        {
          if (v49)
          {
            v22 = MEMORY[0x1B8CA5DC0](v21, v14);
          }

          else
          {
            if (v21 >= *(v48 + 16))
            {
              goto LABEL_53;
            }

            v22 = *(v45 + 8 * v21);
          }

          v54 = v22;
          v23 = __OFADD__(v21, 1);
          v24 = v21 + 1;
          if (v23)
          {
            break;
          }

          v46 = v24;
          v25 = [v22 changes];
          if (v25)
          {
            v26 = v25;
            sub_1B7205540(0, &unk_1EB9969A0);
            v27 = sub_1B7800C38();

            if (v27 >> 62)
            {
              v28 = sub_1B7801958();
              a3 = v54;
              if (v28)
              {
LABEL_28:
                v29 = 0;
                v52 = v27 & 0xFFFFFFFFFFFFFF8;
                v53 = v27 & 0xC000000000000001;
                v50 = v28;
                v51 = v27;
                while (1)
                {
                  if (v53)
                  {
                    v30 = MEMORY[0x1B8CA5DC0](v29, v27);
                  }

                  else
                  {
                    if (v29 >= *(v52 + 16))
                    {
                      goto LABEL_49;
                    }

                    v30 = *(v27 + 8 * v29 + 32);
                  }

                  v31 = v30;
                  v32 = v29 + 1;
                  if (__OFADD__(v29, 1))
                  {
                    break;
                  }

                  v33 = [v30 changedObjectID];
                  v14 = [v33 entity];

                  v34 = [v14 name];
                  if (v34)
                  {
                    v35 = sub_1B7800868();
                    v37 = v36;

                    type metadata accessor for ManagedConsent();
                    v38 = [swift_getObjCClassFromMetadata() entityName];
                    v39 = sub_1B7800868();
                    v41 = v40;

                    if (v35 == v39 && v37 == v41)
                    {

                      v42 = 1;
                      a3 = v44;
                      i = v47;
                      goto LABEL_46;
                    }

                    v14 = sub_1B78020F8();

                    i = v47;
                    a3 = v54;
                    if (v14)
                    {

                      v42 = 1;
                      a3 = v44;
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                  }

                  ++v29;
                  v27 = v51;
                  if (v32 == v50)
                  {
                    goto LABEL_19;
                  }
                }

                __break(1u);
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }
            }

            else
            {
              v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
              a3 = v54;
              if (v28)
              {
                goto LABEL_28;
              }
            }

LABEL_19:

            v14 = v43;
            a3 = v44;
          }

          else
          {
          }

          v21 = v46;
          if (v46 == i)
          {
            v42 = 0;
LABEL_46:

            *a3 = i != v17;
            a3[1] = v42;
            return;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        ;
      }

      *a3 = 0;
    }
  }

  else
  {
    v11 = v56[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t sub_1B7521F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1B7800DA8();
  v5[8] = sub_1B7800D98();
  v7 = sub_1B7800CD8();

  return MEMORY[0x1EEE6DFA0](sub_1B7521FC0, v7, v6);
}

uint64_t sub_1B7521FC0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong bankConnectAccountDidChange_];
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B752207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1B7800DA8();
  v5[8] = sub_1B7800D98();
  v7 = sub_1B7800CD8();

  return MEMORY[0x1EEE6DFA0](sub_1B7522118, v7, v6);
}

uint64_t sub_1B7522118()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong bankConnectConsentStatusDidChange_];
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void *sub_1B75221D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ManagedInternalAccount();
  result = static ManagedInternalAccount.existingAccount(withExternalAccountID:in:)(a1, a2);
  if (!v3)
  {
    if (result)
    {
      InternalAccount.init(_:)(result, a3);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = type metadata accessor for InternalAccount();
    return (*(*(v9 - 8) + 56))(a3, v8, 1, v9);
  }

  return result;
}

void sub_1B752229C(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for ManagedConsent();
  v28.receiver = swift_getObjCClassFromMetadata();
  v28.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v6 = objc_msgSendSuper2(&v28, sel_fetchRequest);
  v7 = sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_1B7807CD0;
  v8[7] = MEMORY[0x1E69E6158];
  v8[8] = sub_1B721FF04();
  v8[4] = a1;
  v8[5] = a2;

  v9 = sub_1B78010E8();
  [v6 setPredicate_];

  v10 = sub_1B7801498();
  if (v3)
  {

    return;
  }

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_26:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_27:
    if (*(v13 + 16))
    {
      v25 = *(v13 + 32);

      *a3 = v25;
    }

    else
    {

      *a3 = 2;
    }

    return;
  }

  v12 = sub_1B7801958();
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_5:
  v29 = MEMORY[0x1E69E7CC0];
  sub_1B71FE410(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v29;
    if ((v11 & 0xC000000000000001) == 0)
    {
      v19 = 32;
      while (1)
      {
        v20 = *(v11 + v19);
        v21 = [v20 consentStatusValue];
        if (v21)
        {
          if (v21 != 1)
          {
            sub_1B7801A78();

            [v20 consentStatusValue];
            goto LABEL_33;
          }

          v22 = 1;
        }

        else
        {
          v22 = 0;
        }

        v29 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1B71FE410((v23 > 1), v24 + 1, 1);
          v13 = v29;
        }

        *(v13 + 16) = v24 + 1;
        *(v13 + v24 + 32) = v22;
        v19 += 8;
        if (!--v12)
        {
          goto LABEL_24;
        }
      }
    }

    v14 = 0;
    v8 = &selRef_emailTypeValue;
    do
    {
      v7 = MEMORY[0x1B8CA5DC0](v14, v11);
      v15 = [swift_unknownObjectRetain() consentStatusValue];
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_31;
        }

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      swift_unknownObjectRelease_n();
      v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B71FE410((v17 > 1), v18 + 1, 1);
        v13 = v29;
      }

      ++v14;
      *(v13 + 16) = v18 + 1;
      *(v13 + v18 + 32) = v16;
    }

    while (v12 != v14);
LABEL_24:

    goto LABEL_27;
  }

  __break(1u);
LABEL_31:
  sub_1B7801A78();

  [v7 v8[407]];
LABEL_33:
  v26 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v26);

  sub_1B7801C88();
  __break(1u);
}

id BankConnectAccountsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AccountsProviderResponse.bankConnectConsentStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccountsProviderResponse();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AccountsProviderResponse.bankConnectConsentStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccountsProviderResponse();
  *(v1 + *(result + 20)) = v2;
  return result;
}

id sub_1B7522850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v15[3] = type metadata accessor for BankConnectConsentStore();
  v15[4] = &protocol witness table for BankConnectConsentStore;
  v15[0] = a4;
  v10 = &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_persistentHistoryTransactionProvider];
  *(v10 + 3) = &type metadata for PersistentHistoryTransactionProvider;
  *(v10 + 4) = &off_1F2F5E570;
  *&a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask] = 0;
  swift_unknownObjectWeakInit();
  v11 = &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store] = a3;
  sub_1B719B06C(v15, &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore]);
  v14.receiver = a5;
  v14.super_class = type metadata accessor for BankConnectAccountsProvider();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

id sub_1B7522948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v19[3] = a6;
  v19[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  v14 = &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_persistentHistoryTransactionProvider];
  *(v14 + 3) = &type metadata for PersistentHistoryTransactionProvider;
  *(v14 + 4) = &off_1F2F5E570;
  *&a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask] = 0;
  swift_unknownObjectWeakInit();
  v15 = &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store] = a3;
  sub_1B719B06C(v19, &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore]);
  v18.receiver = a5;
  v18.super_class = type metadata accessor for BankConnectAccountsProvider();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

id sub_1B7522A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for BankConnectAccountsProvider());
  (*(v13 + 16))(v15, a4, a6);
  return sub_1B7522948(a1, a2, a3, v15, v16, a6, a7);
}

id sub_1B7522B98(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v4 = *(off_1EDAF9E38 + 2);
  v5 = type metadata accessor for BankConnectCloudKitActivityVoucherManaging();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for BankConnectConsentStore();
  v7 = swift_allocObject();
  v7[6] = v5;
  v7[7] = &protocol witness table for BankConnectCloudKitActivityVoucherManaging;
  v7[2] = v4;
  v7[3] = v6;
  v8 = objc_allocWithZone(type metadata accessor for BankConnectAccountsProvider());
  swift_retain_n();

  return sub_1B7522850(a1, a2, v4, v7, v8);
}

uint64_t sub_1B7522CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7522D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalAccount();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AccountsProviderResponse()
{
  result = qword_1EB996970;
  if (!qword_1EB996970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of BankConnectAccountsProvider.accountAndReconsentStatus()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B721FDB8;

  return v5();
}

uint64_t sub_1B752302C()
{
  result = type metadata accessor for InternalAccount();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B75230E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B723838C;

  return sub_1B752207C(a1, v4, v5, v7, v6);
}

uint64_t sub_1B75231A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B723838C;

  return sub_1B7521F24(a1, v4, v5, v7, v6);
}

uint64_t sub_1B7523260(void *a1)
{
  result = [a1 changes];
  if (result)
  {
    v2 = result;
    sub_1B7205540(0, &unk_1EB9969A0);
    v3 = sub_1B7800C38();

    if (v3 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      v5 = 0;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      v36 = i;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B8CA5DC0](v5, v3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_32;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = [v7 changedObjectID];
        v11 = [v10 entity];

        v12 = [v11 name];
        if (v12)
        {
          v13 = sub_1B7800868();
          v15 = v14;

          type metadata accessor for ManagedInternalAccount();
          v16 = [swift_getObjCClassFromMetadata() entityName];
          v17 = sub_1B7800868();
          v19 = v18;

          if (v13 == v17 && v15 == v19)
          {
            goto LABEL_26;
          }

          v20 = sub_1B78020F8();

          if (v20)
          {
            goto LABEL_27;
          }

          type metadata accessor for ManagedAccount();
          v21 = [swift_getObjCClassFromMetadata() entityName];
          v22 = sub_1B7800868();
          v24 = v23;

          if (v13 == v22 && v15 == v24)
          {
            goto LABEL_26;
          }

          v25 = sub_1B78020F8();

          if (v25)
          {
            goto LABEL_27;
          }

          type metadata accessor for ManagedAccountBalance();
          v26 = [swift_getObjCClassFromMetadata() entityName];
          v27 = sub_1B7800868();
          v29 = v28;

          if (v13 == v27 && v15 == v29)
          {
LABEL_26:

LABEL_27:

LABEL_28:

            return 1;
          }

          v30 = sub_1B78020F8();

          if (v30)
          {
            goto LABEL_27;
          }

          type metadata accessor for ManagedInternalAccountBalance();
          v31 = [swift_getObjCClassFromMetadata() entityName];
          v32 = sub_1B7800868();
          v34 = v33;

          if (v13 == v32 && v15 == v34)
          {

            goto LABEL_28;
          }

          v35 = sub_1B78020F8();

          v6 = v3 & 0xFFFFFFFFFFFFFF8;
          i = v36;
          if (v35)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v5;
        if (v9 == i)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:

    return 0;
  }

  return result;
}

uint64_t sub_1B7523610()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B7201BB0;

  return sub_1B752038C(v2, v3);
}

uint64_t sub_1B75236BC(uint64_t a1)
{
  v4 = *(sub_1B78000B8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7201BB0;

  return sub_1B75208D4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

FinanceKit::FullyQualifiedOrderIdentifier __swiftcall FullyQualifiedOrderIdentifier.init(orderTypeIdentifier:orderIdentifier:)(Swift::String orderTypeIdentifier, Swift::String orderIdentifier)
{
  *v2 = orderTypeIdentifier;
  v2[1] = orderIdentifier;
  result.orderIdentifier = orderIdentifier;
  result.orderTypeIdentifier = orderTypeIdentifier;
  return result;
}

uint64_t sub_1B7523824()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1B7523864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7874AD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B7523948(uint64_t a1)
{
  v2 = sub_1B7523DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7523984(uint64_t a1)
{
  v2 = sub_1B7523DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75239C0(uint64_t a1)
{
  v2 = sub_1B7523E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75239FC(uint64_t a1)
{
  v2 = sub_1B7523E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7523A38(uint64_t a1)
{
  v2 = sub_1B7523E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7523A74(uint64_t a1)
{
  v2 = sub_1B7523E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderChangeNotificationsValue.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t OrderChangeNotificationsValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969D8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969E0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7523DD4();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B7523E28();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B7523E7C();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B7523DD4()
{
  result = qword_1EB9969F0;
  if (!qword_1EB9969F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9969F0);
  }

  return result;
}

unint64_t sub_1B7523E28()
{
  result = qword_1EB9969F8;
  if (!qword_1EB9969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9969F8);
  }

  return result;
}

unint64_t sub_1B7523E7C()
{
  result = qword_1EB996A00;
  if (!qword_1EB996A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A00);
  }

  return result;
}

uint64_t OrderChangeNotificationsValue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A08);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A10);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A18);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7523DD4();
  v12 = v31;
  sub_1B78023C8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B7801E98();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B721CE4C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B7801B18();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v22 = &type metadata for OrderChangeNotificationsValue;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B7523E28();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B7523E7C();
        sub_1B7801D38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t FullyQualifiedOrderIdentifier.orderTypeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FullyQualifiedOrderIdentifier.orderTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FullyQualifiedOrderIdentifier.orderIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FullyQualifiedOrderIdentifier.orderIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B75244D0()
{
  if (*v0)
  {
    return 0x656449726564726FLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B752451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001B7873C00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656449726564726FLL && a2 == 0xEF7265696669746ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

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

uint64_t sub_1B752460C(uint64_t a1)
{
  v2 = sub_1B7524BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7524648(uint64_t a1)
{
  v2 = sub_1B7524BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FullyQualifiedOrderIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7524BD0();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FullyQualifiedOrderIdentifier.hash(into:)()
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t FullyQualifiedOrderIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t FullyQualifiedOrderIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7524BD0();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1B7801DF8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t FullyQualifiedOrderIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B7801A78();

  MEMORY[0x1B8CA4D30](v1, v2);
  MEMORY[0x1B8CA4D30](0xD000000000000013, 0x80000001B78812A0);
  MEMORY[0x1B8CA4D30](v3, v4);
  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1B7524BD0()
{
  result = qword_1EB996A28;
  if (!qword_1EB996A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A28);
  }

  return result;
}

unint64_t sub_1B7524C28()
{
  result = qword_1EB996A38;
  if (!qword_1EB996A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A38);
  }

  return result;
}

unint64_t sub_1B7524C80()
{
  result = qword_1EB996A40;
  if (!qword_1EB996A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A40);
  }

  return result;
}

unint64_t sub_1B7524D48()
{
  result = qword_1EB996A48;
  if (!qword_1EB996A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A48);
  }

  return result;
}

unint64_t sub_1B7524DA0()
{
  result = qword_1EB996A50;
  if (!qword_1EB996A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A50);
  }

  return result;
}

unint64_t sub_1B7524DF8()
{
  result = qword_1EB996A58;
  if (!qword_1EB996A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A58);
  }

  return result;
}

unint64_t sub_1B7524E50()
{
  result = qword_1EB996A60;
  if (!qword_1EB996A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A60);
  }

  return result;
}

unint64_t sub_1B7524EA8()
{
  result = qword_1EB996A68;
  if (!qword_1EB996A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A68);
  }

  return result;
}

unint64_t sub_1B7524F00()
{
  result = qword_1EB996A70;
  if (!qword_1EB996A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A70);
  }

  return result;
}

unint64_t sub_1B7524F58()
{
  result = qword_1EB996A78;
  if (!qword_1EB996A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A78);
  }

  return result;
}

unint64_t sub_1B7524FB0()
{
  result = qword_1EB996A80;
  if (!qword_1EB996A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A80);
  }

  return result;
}

unint64_t sub_1B7525008()
{
  result = qword_1EB996A88;
  if (!qword_1EB996A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A88);
  }

  return result;
}

unint64_t sub_1B7525060()
{
  result = qword_1EB996A90;
  if (!qword_1EB996A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996A90);
  }

  return result;
}

void __swiftcall AuditTokenWrapper.init(_:)(FinanceKit::AuditTokenWrapper *__return_ptr retstr, audit_token_t *a2)
{
  *retstr->token.val = a2;
  *&retstr->token.val[2] = v2;
  *&retstr->token.val[4] = v3;
  *&retstr->token.val[6] = v4;
}

uint64_t AuditTokenWrapper.hash(into:)()
{
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  return sub_1B7802338();
}

uint64_t AuditTokenWrapper.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  return sub_1B7802368();
}

uint64_t sub_1B7525220()
{
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  return sub_1B7802338();
}

uint64_t sub_1B75252B0()
{
  sub_1B78022F8();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  return sub_1B7802368();
}

BOOL _s10FinanceKit17AuditTokenWrapperV2eeoiySbAC_ACtFZ_0(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0] && a1[1].i32[1] == a2[1].i32[1] && a1[1].i32[2] == a2[1].i32[2])
  {
    return a1[1].i32[3] == a2[1].i32[3];
  }

  return result;
}

unint64_t sub_1B75253E4()
{
  result = qword_1EDAF9E20;
  if (!qword_1EDAF9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9E20);
  }

  return result;
}

FinanceKit::RawOrderPaymentTransaction::TransactionType_optional __swiftcall RawOrderPaymentTransaction.TransactionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderPaymentTransaction.TransactionType.rawValue.getter()
{
  if (*v0)
  {
    return 0x646E75666572;
  }

  else
  {
    return 0x6573616863727570;
  }
}

uint64_t sub_1B75254F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E75666572;
  }

  else
  {
    v3 = 0x6573616863727570;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E75666572;
  }

  else
  {
    v5 = 0x6573616863727570;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B7525594()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7525614()
{
  sub_1B7800798();
}

uint64_t sub_1B7525680()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B75256FC@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B752575C(uint64_t *a1@<X8>)
{
  v2 = 0x6573616863727570;
  if (*v1)
  {
    v2 = 0x646E75666572;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static RawOrderPaymentTransaction.Status.validCases(for:)(_BYTE *a1)
{
  if (*a1)
  {
    return sub_1B7546ABC(&unk_1F2F450E0);
  }

  else
  {
    return sub_1B7546ABC(&unk_1F2F450B8);
  }
}

Swift::Bool __swiftcall RawOrderPaymentTransaction.Status.isValidCase(for:)(FinanceKit::RawOrderPaymentTransaction::TransactionType a1)
{
  if (*a1)
  {
    v2 = &unk_1F2F450E0;
  }

  else
  {
    v2 = &unk_1F2F450B8;
  }

  v3 = *v1;
  v4 = sub_1B7546ABC(v2);
  LOBYTE(v3) = sub_1B72C3C44(v3, v4);

  return v3 & 1;
}

FinanceKit::RawOrderPaymentTransaction::Status_optional __swiftcall RawOrderPaymentTransaction.Status.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderPaymentTransaction.Status.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6574656C706D6F63;
  v4 = 0x656C6C65636E6163;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465766F72707061;
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

uint64_t sub_1B7525A24()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7525B0C()
{
  sub_1B7800798();
}

uint64_t sub_1B7525BE0()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7525CD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6570;
  v5 = 0x6574656C706D6F63;
  v6 = 0xE900000000000064;
  v7 = 0x656C6C65636E6163;
  v8 = 0xE900000000000064;
  if (v2 != 3)
  {
    v7 = 0x64656C696166;
    v8 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x6465766F72707061;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t RawOrderPaymentTransaction.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v2;
  v7 = *(v1 + 40);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawOrderPaymentTransaction.amount.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v3;
  v7 = *(v1 + 40);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v5;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t RawOrderPaymentTransaction.paymentMethod.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t RawOrderPaymentTransaction.paymentMethod.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t RawOrderPaymentTransaction.applePayTransactionIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RawOrderPaymentTransaction.applePayTransactionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t RawOrderPaymentTransaction.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawOrderPaymentTransaction() + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawOrderPaymentTransaction.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawOrderPaymentTransaction() + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawOrderPaymentTransaction.receipt.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderPaymentTransaction() + 40));

  return v1;
}

uint64_t RawOrderPaymentTransaction.receipt.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderPaymentTransaction() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderPaymentTransaction.init(transactionType:status:amount:paymentMethod:applePayTransactionIdentifier:createdAt:receipt:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = *a1;
  v15 = *a2;
  v17 = *a4;
  v16 = a4[1];
  v18 = type metadata accessor for RawOrderPaymentTransaction();
  v19 = *(v18 + 40);
  v20 = *(a3 + 16);
  *(a9 + 8) = *a3;
  v21 = (a9 + v19);
  *a9 = v14;
  *(a9 + 1) = v15;
  *(a9 + 24) = v20;
  *(a9 + 40) = *(a3 + 32);
  *(a9 + 48) = v17;
  *(a9 + 56) = v16;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  v22 = *(v18 + 36);
  v23 = sub_1B77FF988();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a7, v23);
  *v21 = a8;
  v21[1] = a10;
  return result;
}

uint64_t sub_1B752632C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7527BEC();
  *a1 = result;
  return result;
}

void sub_1B752635C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF657079546E6F69;
  v4 = 0x746361736E617274;
  v5 = 0xE700000000000000;
  v6 = 0x74706965636572;
  if (v2 != 6)
  {
    v6 = 0x7374706965636572;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE900000000000074;
  v8 = 0x4164657461657263;
  if (v2 != 4)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x80000001B7874420;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000646F687465;
  v10 = 0x4D746E656D796170;
  if (v2 != 2)
  {
    v10 = 0x746E756F6D61;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x737574617473;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_1B7526470()
{
  v1 = *v0;
  v2 = 0x746361736E617274;
  v3 = 0x74706965636572;
  if (v1 != 6)
  {
    v3 = 0x7374706965636572;
  }

  v4 = 0x4164657461657263;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4D746E656D796170;
  if (v1 != 2)
  {
    v5 = 0x746E756F6D61;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7526580@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7527BEC();
  *a1 = result;
  return result;
}

uint64_t sub_1B75265A8(uint64_t a1)
{
  v2 = sub_1B75275A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75265E4(uint64_t a1)
{
  v2 = sub_1B75275A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderPaymentTransaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1B77FF988();
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A98);
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for RawOrderPaymentTransaction();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B75275A4();
  v13 = v39;
  sub_1B78023C8();
  if (v13)
  {
    goto LABEL_3;
  }

  v39 = v5;
  v35 = v9;
  v46 = 0;
  sub_1B75275F8();
  sub_1B7801E48();
  v14 = v41;
  *v11 = v41;
  v46 = 1;
  sub_1B752764C();
  sub_1B7801E48();
  v16 = v41;
  if (v14)
  {
    v17 = &unk_1F2F450E0;
  }

  else
  {
    v17 = &unk_1F2F450B8;
  }

  v18 = sub_1B7546ABC(v17);
  v19 = v16;
  v20 = sub_1B72C3C44(v16, v18);

  if ((v20 & 1) == 0)
  {
    v46 = 1;
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0x2720737574617453, 0xE800000000000000);
    v45 = v19;
    sub_1B7801C48();
    MEMORY[0x1B8CA4D30](0xD000000000000020, 0x80000001B7884130);
    v45 = v14;
    sub_1B7801C48();
    MEMORY[0x1B8CA4D30](39, 0xE100000000000000);
    sub_1B7801B18();
    swift_allocError();
    sub_1B728216C(&qword_1EB996AB8, &qword_1EB996A98);
    sub_1B7801AD8();

    swift_willThrow();
    (*(v38 + 8))(v8, v6);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v11[1] = v19;
  v46 = 2;
  sub_1B75276A0();
  sub_1B7801E48();
  v21 = *(&v41 + 1);
  *(v11 + 6) = v41;
  *(v11 + 7) = v21;
  LOBYTE(v41) = 4;
  sub_1B71A6F54(&unk_1EDAF65E0);
  v22 = v39;
  sub_1B7801E48();
  v23 = v38;
  v24 = v35;
  (*(v37 + 32))(&v11[*(v35 + 36)], v22, v3);
  LOBYTE(v41) = 6;
  v34 = 0;
  v25 = sub_1B7801D78();
  v26 = &v11[*(v24 + 40)];
  *v26 = v25;
  v26[1] = v27;
  v39 = v27;
  v46 = 3;
  v45 = 1;
  sub_1B75276F4();
  sub_1B7801D58();
  v28 = v42;
  *(v11 + 8) = v41;
  *(v11 + 24) = v28;
  *(v11 + 5) = v43;
  v44 = 5;
  v29 = sub_1B7801D78();
  v34 = v30;
  v31 = v29;
  (*(v23 + 8))(v8, v6);
  v32 = v34;
  *(v11 + 8) = v31;
  *(v11 + 9) = v32;
  sub_1B74C2794(v11, v36);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_1B7527748(v11);
}

uint64_t RawOrderPaymentTransaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996AD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75275A4();
  sub_1B78023F8();
  LOBYTE(v21[0]) = *v3;
  LOBYTE(v18) = 0;
  sub_1B75277A4();
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v21[0]) = *(v3 + 1);
    LOBYTE(v18) = 1;
    sub_1B75277F8();
    sub_1B7801FC8();
    v9 = *(v3 + 56);
    v24 = *(v3 + 48);
    v25 = v9;
    v23 = 2;
    sub_1B752784C();

    sub_1B7801FC8();

    v10 = *(v3 + 24);
    v21[0] = *(v3 + 8);
    v21[1] = v10;
    v22 = *(v3 + 40);
    v11 = *(v3 + 24);
    v18 = *(v3 + 8);
    v19 = v11;
    v20 = *(v3 + 40);
    v17 = 3;
    sub_1B7215720(v21, v15);
    sub_1B7215044();
    sub_1B7801FC8();
    v15[0] = v18;
    v15[1] = v19;
    v16 = v20;
    sub_1B721722C(v15);
    type metadata accessor for RawOrderPaymentTransaction();
    v14 = 4;
    sub_1B77FF988();
    sub_1B71A6F54(&qword_1EDAF65F0);
    sub_1B7801FC8();
    v14 = 5;
    sub_1B7801EF8();
    v14 = 6;
    sub_1B7801EF8();
  }

  return (*(v6 + 8))(v8, v5);
}

void RawOrderPaymentTransaction.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B7800838();
  [a1 willAccessValueForKey_];

  v5 = [a1 primitiveTransactionType];
  v6 = sub_1B7800838();
  [a1 didAccessValueForKey_];

  v7 = [v5 shortValue];
  if (v7 > 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = v7;
    ManagedOrderPaymentTransaction.status.getter(&v29);
    *(a2 + 1) = v29;
    ManagedOrderPaymentTransaction.amount.getter(v27);
    v8 = v27[1];
    *(a2 + 8) = v27[0];
    *(a2 + 24) = v8;
    *(a2 + 40) = v28;
    v9 = [a1 paymentMethodDisplayName];
    v10 = sub_1B77FFA48();
    v11 = sub_1B741F7D4(v10);
    v13 = v12;

    *(a2 + 48) = v11;
    *(a2 + 56) = v13;
    v14 = [a1 applePayTransactionIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1B7800868();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *(a2 + 64) = v16;
    *(a2 + 72) = v18;
    v19 = [a1 createdAt];
    v20 = type metadata accessor for RawOrderPaymentTransaction();
    sub_1B77FF928();

    v21 = [a1 receiptName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1B7800868();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0;
    }

    v26 = (a2 + *(v20 + 40));
    *v26 = v23;
    v26[1] = v25;
  }
}

BOOL _s10FinanceKit26RawOrderPaymentTransactionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x646E75666572;
  }

  else
  {
    v5 = 0x6573616863727570;
  }

  if (v4)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (*a2)
  {
    v7 = 0x646E75666572;
  }

  else
  {
    v7 = 0x6573616863727570;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1B78020F8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1B72C07B4(*(a1 + 1), *(a2 + 1)))
  {
    v11 = *(a1 + 24);
    v28 = *(a1 + 8);
    v29[0] = v11;
    *&v29[1] = *(a1 + 40);
    v12 = *(a2 + 24);
    v30 = *(a2 + 8);
    v31[0] = v12;
    *&v31[1] = *(a2 + 40);
    v13 = LODWORD(v29[0]);
    v14 = v12;
    v15 = v28;
    v16 = v30;
    sub_1B7215720(&v28, v27);
    sub_1B7215720(&v30, v27);
    if (MEMORY[0x1B8CA5970](v15, *(&v15 + 1), v13, v16, *(&v16 + 1), v14))
    {
      if (*(v29 + 8) == *(v31 + 8))
      {
        sub_1B721722C(&v30);
        sub_1B721722C(&v28);
      }

      else
      {
        v18 = sub_1B78020F8();
        sub_1B721722C(&v30);
        sub_1B721722C(&v28);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }

      v19 = *(a1 + 72);
      v20 = *(a2 + 72);
      if (v19)
      {
        if (!v20 || (*(a1 + 64) != *(a2 + 64) || v19 != v20) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }

      v21 = type metadata accessor for RawOrderPaymentTransaction();
      if (sub_1B77FF918())
      {
        v22 = *(v21 + 40);
        v23 = (a1 + v22);
        v24 = *(a1 + v22 + 8);
        v25 = (a2 + v22);
        v26 = v25[1];
        if (v24)
        {
          return v26 && (*v23 == *v25 && v24 == v26 || (sub_1B78020F8() & 1) != 0);
        }

        if (!v26)
        {
          return 1;
        }
      }
    }

    else
    {
      sub_1B721722C(&v30);
      sub_1B721722C(&v28);
    }
  }

  return 0;
}

uint64_t type metadata accessor for RawOrderPaymentTransaction()
{
  result = qword_1EB996B20;
  if (!qword_1EB996B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B75275A4()
{
  result = qword_1EB996AA0;
  if (!qword_1EB996AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AA0);
  }

  return result;
}

unint64_t sub_1B75275F8()
{
  result = qword_1EB996AA8;
  if (!qword_1EB996AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AA8);
  }

  return result;
}

unint64_t sub_1B752764C()
{
  result = qword_1EB996AB0;
  if (!qword_1EB996AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AB0);
  }

  return result;
}

unint64_t sub_1B75276A0()
{
  result = qword_1EB996AC0;
  if (!qword_1EB996AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AC0);
  }

  return result;
}

unint64_t sub_1B75276F4()
{
  result = qword_1EB996AC8;
  if (!qword_1EB996AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AC8);
  }

  return result;
}

uint64_t sub_1B7527748(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderPaymentTransaction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B75277A4()
{
  result = qword_1EB996AD8;
  if (!qword_1EB996AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AD8);
  }

  return result;
}

unint64_t sub_1B75277F8()
{
  result = qword_1EB996AE0;
  if (!qword_1EB996AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AE0);
  }

  return result;
}

unint64_t sub_1B752784C()
{
  result = qword_1EB996AE8;
  if (!qword_1EB996AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AE8);
  }

  return result;
}

unint64_t sub_1B75278A4()
{
  result = qword_1EB996AF0;
  if (!qword_1EB996AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996AF0);
  }

  return result;
}

unint64_t sub_1B7527940()
{
  result = qword_1EB996B08;
  if (!qword_1EB996B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B08);
  }

  return result;
}

void sub_1B7527A00()
{
  sub_1B7280028();
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B7527AE8()
{
  result = qword_1EB996B30;
  if (!qword_1EB996B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B30);
  }

  return result;
}

unint64_t sub_1B7527B40()
{
  result = qword_1EB996B38;
  if (!qword_1EB996B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B38);
  }

  return result;
}

unint64_t sub_1B7527B98()
{
  result = qword_1EB996B40;
  if (!qword_1EB996B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B40);
  }

  return result;
}

uint64_t sub_1B7527BEC()
{
  v0 = sub_1B7801D18();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B7527C38()
{
  result = qword_1EB996B48;
  if (!qword_1EB996B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B48);
  }

  return result;
}

unint64_t sub_1B7527C8C()
{
  result = qword_1EB996B50;
  if (!qword_1EB996B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B50);
  }

  return result;
}

uint64_t sub_1B7527CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1B71FE318(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1B78018C8();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 88 * result + 80);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1B71FE318((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B723BB64(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B723BB64(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1B7527F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_1B7527F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v56 - v9;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - v16;
  v18 = type metadata accessor for Order.PriorityInfo(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v56 - v23;
  v25 = *(a1 + 16);
  if (v25)
  {
    v71 = v17;
    v60 = v8;
    v56 = a2;
    v68 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v69 = v22;
    result = sub_1B7531490(v68, &v56 - v23, type metadata accessor for Order.PriorityInfo);
    v27 = v63;
    v28 = v24;
    if (v25 == 1)
    {
LABEL_3:
      v29 = v56;
      sub_1B75314F8(v28, v56, type metadata accessor for Order.PriorityInfo);
      return (*(v69 + 56))(v29, 0, 1, v18);
    }

    v57 = (v11 + 32);
    v31 = 1;
    v70 = v24;
    v64 = v18;
    v66 = (v11 + 48);
    v67 = (v11 + 8);
    v59 = v21;
    while (1)
    {
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      v32 = v10;
      v72 = v31 + 1;
      sub_1B7531490(v68 + *(v69 + 72) * v31, v21, type metadata accessor for Order.PriorityInfo);
      v33 = v71;
      sub_1B77FF938();
      v34 = *(v18 + 20);
      v35 = word_1B7839FA2[v21[v34]];
      v36 = v28;
      v37 = word_1B7839FA2[*(v28 + v34)];
      if (v35 != v37)
      {
        v10 = v32;
        (*v67)(v33, v32);
        if (v37 < v35)
        {
          goto LABEL_24;
        }

        goto LABEL_8;
      }

      v38 = *(v18 + 24);
      v39 = *(v65 + 48);
      sub_1B7205588(&v21[v38], v27, &qword_1EB98EBD0);
      sub_1B7205588(v36 + v38, v27 + v39, &qword_1EB98EBD0);
      v10 = v32;
      v40 = v27;
      v41 = *v66;
      if ((*v66)(v40, 1, v10) == 1)
      {
        break;
      }

      v43 = v60;
      sub_1B7205588(v40, v60, &qword_1EB98EBD0);
      if (v41(v40 + v39, 1, v10) == 1)
      {
        v44 = *v67;
        (*v67)(v71, v10);
        v44(v43, v10);
        v21 = v59;
LABEL_21:
        v45 = v62;
        sub_1B7205588(&v21[v38], v62, &qword_1EB98EBD0);
        v46 = v41(v45, 1, v10);
        sub_1B7205418(v45, &qword_1EB98EBD0);
        v27 = v63;
        sub_1B7205418(v63, &qword_1EB98FCE0);
        v18 = v64;
        if (v46 != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_8;
      }

      v47 = *v57;
      (*v57)(v61, v43, v10);
      v48 = v58;
      v47(v58, v40 + v39, v10);
      v49 = v71;
      v50 = v61;
      sub_1B77FF808();
      v52 = fabs(v51);
      sub_1B77FF808();
      v54 = fabs(v53);
      v55 = *v67;
      (*v67)(v48, v10);
      v55(v50, v10);
      v55(v49, v10);
      sub_1B7205418(v40, &qword_1EB98EBD0);
      v27 = v40;
      v18 = v64;
      v21 = v59;
      if (v52 < v54)
      {
LABEL_24:
        v28 = v70;
        sub_1B75315A8(v70, type metadata accessor for Order.PriorityInfo);
        result = sub_1B75314F8(v21, v28, type metadata accessor for Order.PriorityInfo);
        goto LABEL_9;
      }

LABEL_8:
      result = sub_1B75315A8(v21, type metadata accessor for Order.PriorityInfo);
      v28 = v70;
LABEL_9:
      ++v31;
      if (v72 == v25)
      {
        goto LABEL_3;
      }
    }

    if (v41(v40 + v39, 1, v10) == 1)
    {
      v42 = sub_1B77FF8C8();
      (*v67)(v71, v10);
      sub_1B7205418(v40, &qword_1EB98EBD0);
      v27 = v40;
      v18 = v64;
      if (v42)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    (*v67)(v71, v10);
    goto LABEL_21;
  }

  v30 = *(v22 + 56);

  return v30(a2, 1, 1, v18);
}

uint64_t sub_1B75286C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1B7282114();
        v20 = sub_1B78007E8();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

void *static FoundInMailItem.items(fromCascadeEmails:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D10);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28 - v1;
  v33 = type metadata accessor for FoundInMailItem();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v32 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;

  v12 = sub_1B723B9A4(v11);

  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 56);
  v16 = (v13 + 63) >> 6;
  v29 = v3;
  v17 = (v3 + 48);

  v18 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_1B7531490(*(v12 + 48) + *(v32 + 72) * (v20 | (v18 << 6)), v10, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    sub_1B7531490(v10, v8, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    FoundInMailItem.init(cascadeEmail:)(v8, v2);
    sub_1B75315A8(v10, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    if ((*v17)(v2, 1, v33) == 1)
    {
      sub_1B7205418(v2, &qword_1EB992D10);
    }

    else
    {
      sub_1B75314F8(v2, v30, type metadata accessor for FoundInMailItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1B723F508(0, v31[2] + 1, 1, v31);
      }

      v22 = v31[2];
      v21 = v31[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = v22 + 1;
        v26 = sub_1B723F508(v21 > 1, v22 + 1, 1, v31);
        v23 = v28;
        v31 = v26;
      }

      v24 = v30;
      v25 = v31;
      v31[2] = v23;
      sub_1B75314F8(v24, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, type metadata accessor for FoundInMailItem);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      v34 = v31;

      sub_1B776DC78(&v34);

      return v34;
    }

    v15 = *(v12 + 56 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t ExtractedOrder.init(cascadeOrder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v320 = a2;
  v284 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v300 = *(v284 - 8);
  v3 = MEMORY[0x1EEE9AC00](v284);
  v319 = &v280 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v307 = &v280 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v287 = &v280 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v288 = &v280 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v285 = &v280 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v290 = &v280 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v289 = &v280 - v15;
  v16 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  v298 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v297 = &v280 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v296 = &v280 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v295 = &v280 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v294 = &v280 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v293 = &v280 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v292 = &v280 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v291 = &v280 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v305 = &v280 - v31;
  v313 = type metadata accessor for ExtractedOrder.Merchant(0);
  v311 = *(v313 - 8);
  v32 = MEMORY[0x1EEE9AC00](v313);
  v304 = &v280 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v306 = &v280 - v34;
  v35 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v310 = &v280 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996B58);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v312 = &v280 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v317 = &v280 - v40;
  v41 = sub_1B77FF988();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v302 = &v280 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v280 = &v280 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v282 = &v280 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v316 = &v280 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v299 = &v280 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v335 = &v280 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v309 = &v280 - v55;
  v56 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v334 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v280 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v60 = MEMORY[0x1EEE9AC00](v59 - 8);
  v303 = &v280 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v301 = &v280 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v281 = &v280 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v283 = &v280 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v286 = &v280 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v322 = &v280 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v314 = &v280 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v315 = &v280 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v308 = &v280 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v80 = &v280 - v79;
  v81 = MEMORY[0x1EEE9AC00](v78);
  v321 = &v280 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v328 = &v280 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v87 = &v280 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v325 = &v280 - v88;
  v89 = a1[1];
  v318 = *a1;
  v90 = type metadata accessor for CascadeExtractedOrder(0);
  v91 = a1 + *(v90 + 60);
  v327 = v87;
  sub_1B7205588(v91, v87, &qword_1EB98EBD0);
  *&v326 = v90;
  v92 = *(v90 + 36);
  v323 = v89;
  v324 = a1;
  v93 = *(a1 + v92);
  v94 = *(v93 + 16);
  v336 = v41;
  *&v331 = v42;
  if (v94)
  {
    v95 = *(v56 + 20);
    v96 = v93 + ((*(v334 + 80) + 32) & ~*(v334 + 80));
    v97 = *(v334 + 72);
    v332 = (v42 + 48);
    v333 = (v42 + 32);
    v334 = v97;

    v98 = MEMORY[0x1E69E7CC0];
    v99 = &qword_1EB98EBD0;
    v329 = v58;
    v330 = v95;
    do
    {
      sub_1B7531490(v96, v58, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      sub_1B7205588(&v58[v95], v80, v99);
      sub_1B75315A8(v58, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      v100 = v336;
      if ((*v332)(v80, 1, v336) == 1)
      {
        sub_1B7205418(v80, v99);
      }

      else
      {
        v101 = v99;
        v102 = *v333;
        (*v333)(v335, v80, v100);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1B723F170(0, *(v98 + 2) + 1, 1, v98);
        }

        v104 = *(v98 + 2);
        v103 = *(v98 + 3);
        if (v104 >= v103 >> 1)
        {
          v98 = sub_1B723F170(v103 > 1, v104 + 1, 1, v98);
        }

        *(v98 + 2) = v104 + 1;
        v102(&v98[((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v104], v335, v336);
        v99 = v101;
        v58 = v329;
        v95 = v330;
      }

      v96 += v334;
      --v94;
    }

    while (v94);
  }

  else
  {

    v98 = MEMORY[0x1E69E7CC0];
  }

  sub_1B75286C8(v98, v328);

  v105 = v321;
  sub_1B7205588(v327, v321, &qword_1EB98EBD0);
  v106 = v331;
  v107 = v331 + 48;
  v108 = *(v331 + 48);
  v109 = v336;
  if (v108(v105, 1, v336) == 1)
  {
    v110 = v105;
    v111 = v324;
    v112 = v325;
LABEL_16:
    sub_1B7205418(v110, &qword_1EB98EBD0);
    v117 = v314;
    sub_1B7205588(v328, v314, &qword_1EB98EBD0);
    if (v108(v117, 1, v109) == 1)
    {
      v118 = v315;
      sub_1B7205588(v327, v315, &qword_1EB98EBD0);
      v124 = v108(v117, 1, v109) == 1;
      v119 = v326;
      v120 = v117;
      v121 = v322;
      if (!v124)
      {
        sub_1B7205418(v120, &qword_1EB98EBD0);
      }
    }

    else
    {
      v118 = v315;
      (*(v106 + 32))(v315, v117, v109);
      (*(v106 + 56))(v118, 0, 1, v109);
      v119 = v326;
      v121 = v322;
    }

    sub_1B7205340(v118, v112);
    goto LABEL_27;
  }

  v113 = *(v106 + 32);
  v114 = v309;
  v113(v309, v105, v109);
  v115 = v308;
  sub_1B7205588(v328, v308, &qword_1EB98EBD0);
  v116 = v108(v115, 1, v109);
  v112 = v325;
  if (v116 == 1)
  {
    (*(v106 + 8))(v114, v109);
    v110 = v115;
    v111 = v324;
    goto LABEL_16;
  }

  v122 = v299;
  v113(v299, v115, v109);
  sub_1B7282114();
  v123 = sub_1B78007F8();
  v124 = (v123 & 1) == 0;
  if (v123)
  {
    v125 = v114;
  }

  else
  {
    v125 = v122;
  }

  if (!v124)
  {
    v114 = v122;
  }

  v106 = v331;
  (*(v331 + 8))(v125, v109);
  v113(v112, v114, v109);
  (*(v106 + 56))(v112, 0, 1, v109);
  v119 = v326;
  v111 = v324;
  v121 = v322;
LABEL_27:
  sub_1B7205588(v112, v121, &qword_1EB98EBD0);
  if (v108(v121, 1, v109) == 1)
  {
    sub_1B7205418(v121, &qword_1EB98EBD0);
    if (qword_1EB98EA40 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_116;
  }

  v330 = v107;
  v332 = v108;
  v135 = v316;
  v333 = *(v106 + 32);
  v334 = v106 + 32;
  (v333)(v316, v121, v109);
  v136 = v310;
  sub_1B7531490(v111 + v119[11], v310, type metadata accessor for CascadeExtractedOrder.Merchant);
  v137 = v323;

  v138 = v317;
  sub_1B752B208(v136, v318, v137, v317);
  v139 = v312;
  sub_1B7205588(v138, v312, &qword_1EB996B58);
  if ((*(v311 + 48))(v139, 1, v313) == 1)
  {

    sub_1B7205418(v138, &qword_1EB996B58);
    (*(v106 + 8))(v135, v109);
    sub_1B7205418(v328, &qword_1EB98EBD0);
    sub_1B7205418(v327, &qword_1EB98EBD0);
    sub_1B7205418(v325, &qword_1EB98EBD0);
    sub_1B75315A8(v111, type metadata accessor for CascadeExtractedOrder);
    sub_1B7205418(v139, &qword_1EB996B58);
LABEL_35:
    v140 = v320;
    v141 = type metadata accessor for ExtractedOrder(0);
    return (*(*(v141 - 8) + 56))(v140, 1, 1, v141);
  }

  sub_1B75314F8(v139, v306, type metadata accessor for ExtractedOrder.Merchant);
  v143 = (v111 + v119[8]);
  v144 = v143[1];
  v145 = v111;
  if (!v144)
  {
    v147 = v323;
    if (qword_1EB98EA40 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_118;
  }

  v312 = *v143;
  v313 = v144;
  if (*(v111 + v119[10] + 8))
  {
    LOBYTE(v355) = 1;

    v146 = v305;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v305);
  }

  else
  {
    v156 = sub_1B77FED28();
    v146 = v305;
    (*(*(v156 - 8) + 56))(v305, 1, 1, v156);
  }

  v157 = v293;
  v158 = v294;
  v159 = v291;
  sub_1B7205588(v146, v291, &qword_1EB991538);
  v160 = sub_1B77FED28();
  v161 = *(v160 - 8);
  v162 = *(v161 + 48);
  if (v162(v159, 1, v160) == 1)
  {
    sub_1B7205418(v159, &qword_1EB991538);
    v321 = 0;
    LODWORD(v335) = 1;
  }

  else
  {
    v321 = sub_1B77FEC58();
    LODWORD(v335) = v163;
    (*(v161 + 8))(v159, v160);
  }

  v164 = v292;
  sub_1B7205588(v146, v292, &qword_1EB991538);
  if (v162(v164, 1, v160) == 1)
  {
    sub_1B7205418(v164, &qword_1EB991538);
    v315 = 0;
    LODWORD(v311) = 1;
  }

  else
  {
    v315 = sub_1B77FEC78();
    LODWORD(v311) = v165;
    (*(v161 + 8))(v164, v160);
  }

  sub_1B7205588(v146, v157, &qword_1EB991538);
  if (v162(v157, 1, v160) == 1)
  {
    sub_1B7205418(v157, &qword_1EB991538);
    v314 = 0;
    LODWORD(v310) = 1;
  }

  else
  {
    v314 = sub_1B77FEC08();
    LODWORD(v310) = v166;
    (*(v161 + 8))(v157, v160);
  }

  sub_1B7205588(v146, v158, &qword_1EB991538);
  if (v162(v158, 1, v160) == 1)
  {
    sub_1B7205418(v158, &qword_1EB991538);
    v329 = 0;
    v167 = 1;
  }

  else
  {
    v329 = sub_1B77FEC38();
    v167 = v168;
    (*(v161 + 8))(v158, v160);
  }

  v169 = v295;
  sub_1B7205588(v146, v295, &qword_1EB991538);
  if (v162(v169, 1, v160) == 1)
  {
    sub_1B7205418(v169, &qword_1EB991538);
    v322 = 0;
    v170 = 1;
  }

  else
  {
    v322 = sub_1B77FEC98();
    v170 = v171;
    (*(v161 + 8))(v169, v160);
  }

  v172 = v146;
  v173 = v296;
  sub_1B7205588(v172, v296, &qword_1EB991538);
  if (v162(v173, 1, v160) == 1)
  {
    sub_1B7205418(v173, &qword_1EB991538);
    v174 = 0;
    v175 = 1;
  }

  else
  {
    v174 = sub_1B77FECB8();
    v175 = v176;
    (*(v161 + 8))(v173, v160);
  }

  v112 = v324;
  v177 = v298;
  if (v335 & 1) != 0 || (v311 & 1) != 0 || (v310)
  {
    v321 = 0;
    v322 = 0;
    v314 = 0;
    v315 = 0;
    v329 = 0;
    v311 = 0;
    v178 = 254;
LABEL_65:
    LODWORD(v310) = v178;
    goto LABEL_66;
  }

  if ((v167 & 1) == 0 && (v170 & 1) == 0)
  {
    v311 = v174;
    v178 = v175 & 1 | 0xFFFFFF80;
    goto LABEL_65;
  }

  v329 = 0;
  v322 = 0;
  v311 = 0;
  LODWORD(v310) = 0;
LABEL_66:
  v179 = v297;
  v180 = *(v324 + *(v326 + 48));
  v181 = sub_1B72039A4(MEMORY[0x1E69E7CC0]);
  *&v355 = v181;
  v111 = *(v180 + 16);
  if (v111)
  {
    for (i = 0; i != v111; ++i)
    {
      if (i >= *(v180 + 16))
      {
        __break(1u);
        goto LABEL_115;
      }

      sub_1B7531490(v180 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * i, v179, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
      sub_1B752B574(&v355, v179);
      sub_1B75315A8(v179, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
    }

    v183 = v355;
    v184 = *(v355 + 16);
    if (!v184)
    {
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  v183 = v181;
  v184 = *(v181 + 16);
  if (v184)
  {
LABEL_71:
    v145 = sub_1B7247194(v184, 0);
    v106 = sub_1B7261F24(&v355, v145 + ((*(v300 + 80) + 32) & ~*(v300 + 80)), v184, v183);
    v109 = *(&v355 + 1);
    v147 = v355;
    v335 = *(&v356 + 1);
    v309 = v357;
    swift_bridgeObjectRetain_n();
    sub_1B71B7B58();
    if (v106 == v184)
    {
      v112 = v324;
      goto LABEL_75;
    }

    __break(1u);
LABEL_118:
    swift_once();
LABEL_40:
    v148 = sub_1B78000B8();
    __swift_project_value_buffer(v148, qword_1EB994840);

    v149 = sub_1B7800098();
    v150 = sub_1B78011D8();

    v151 = os_log_type_enabled(v149, v150);
    v152 = v325;
    if (v151)
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *&v355 = v154;
      *v153 = 136315138;
      v155 = sub_1B71A3EF8(v318, v147, &v355);

      *(v153 + 4) = v155;
      __swift_destroy_boxed_opaque_existential_1(v154);
      MEMORY[0x1B8CA7A40](v154, -1, -1);
      MEMORY[0x1B8CA7A40](v153, -1, -1);

      sub_1B75315A8(v306, type metadata accessor for ExtractedOrder.Merchant);
      sub_1B7205418(v317, &qword_1EB996B58);
      (*(v106 + 8))(v316, v109);
      sub_1B7205418(v328, &qword_1EB98EBD0);
      sub_1B7205418(v327, &qword_1EB98EBD0);
      sub_1B7205418(v152, &qword_1EB98EBD0);
      v134 = v324;
    }

    else
    {

      sub_1B75315A8(v306, type metadata accessor for ExtractedOrder.Merchant);
      sub_1B7205418(v317, &qword_1EB996B58);
      (*(v106 + 8))(v316, v109);
      sub_1B7205418(v328, &qword_1EB98EBD0);
      sub_1B7205418(v327, &qword_1EB98EBD0);
      sub_1B7205418(v152, &qword_1EB98EBD0);
      v134 = v145;
    }

    goto LABEL_34;
  }

LABEL_74:

  v145 = MEMORY[0x1E69E7CC0];
LABEL_75:
  *&v355 = v145;
  sub_1B752F030(&v355);

  v185 = v355;
  v186 = *(v355 + 16);
  v335 = v355;
  if (v186 == 2)
  {
    v187 = v300;
    v309 = *(v300 + 80);
    v319 = (v309 + 32) & ~v309;
    v188 = v355 + v319;
    v189 = v289;
    sub_1B7531490(v355 + v319, v289, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v190 = *(v187 + 72);
    v191 = v290;
    sub_1B7531490(v188 + v190, v290, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v192 = *(v189 + 16);
    v193 = *(v191 + 16) == 0;

    if ((v192 == 0) == v193)
    {
      v219 = v326;
      sub_1B75315A8(v189, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v208 = v219;
      sub_1B75315A8(v191, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v112 = v324;
      v205 = v336;
      v207 = v316;
      v206 = v317;
      goto LABEL_108;
    }

    v194 = v288;
    sub_1B7531490(v188, v288, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    if (*(v185 + 16) < 2uLL)
    {
      __break(1u);

      sub_1B75315A8(v193, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);

      __break(1u);

      __break(1u);
      return result;
    }

    v308 = v190;
    v195 = v188 + v190;
    v196 = v287;
    sub_1B7531490(v195, v287, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v197 = *(v284 + 48);
    v198 = v286;
    sub_1B7205588(v196 + v197, v286, &qword_1EB98EBD0);
    v199 = v194 + v197;
    v200 = v283;
    sub_1B7205588(v199, v283, &qword_1EB98EBD0);
    v201 = v336;
    v202 = v332;
    if (v332(v200, 1, v336) == 1)
    {
      v203 = v198;
    }

    else
    {
      v220 = v282;
      v221 = v333;
      (v333)(v282, v200, v201);
      v200 = v281;
      sub_1B7205588(v198, v281, &qword_1EB98EBD0);
      if (v202(v200, 1, v201) != 1)
      {
        v224 = v280;
        (v221)(v280, v200, v201);
        v225 = sub_1B77FF8D8();
        v226 = *(v331 + 8);
        v226(v224, v201);
        v226(v220, v201);
        sub_1B7205418(v286, &qword_1EB98EBD0);
        v222 = v290;
        v223 = v288;
        if ((v225 & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_105;
      }

      (*(v331 + 8))(v220, v201);
      v203 = v286;
    }

    sub_1B7205418(v203, &qword_1EB98EBD0);
    sub_1B7205418(v200, &qword_1EB98EBD0);
    v222 = v290;
    v223 = v288;
    if (v192)
    {
LABEL_101:
      sub_1B75315A8(v287, type metadata accessor for ExtractedOrder.ShippingFulfillment);
LABEL_106:
      v207 = v316;
      v206 = v317;
      v227 = v319;

      v228 = v285;
      sub_1B75314F8(v223, v285, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F408);
      v229 = swift_allocObject();
      *(v229 + 16) = xmmword_1B7807CD0;
      v335 = v229;
      sub_1B75314F8(v228, v229 + v227, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      sub_1B75315A8(v289, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      sub_1B75315A8(v222, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v112 = v324;
      v205 = v336;
LABEL_107:
      v208 = v326;
      goto LABEL_108;
    }

LABEL_105:
    sub_1B75315A8(v223, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    sub_1B75314F8(v287, v223, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    goto LABEL_106;
  }

  v204 = v186 >= 3;
  v205 = v336;
  v207 = v316;
  v206 = v317;
  v208 = v326;
  v209 = v300;
  if (v204)
  {
    v210 = v335;
    v111 = *(v335 + 2);
    if (v111)
    {
      v211 = 0;
      v212 = MEMORY[0x1E69E7CC0];
      v213 = v307;
      while (v211 < *(v210 + 2))
      {
        v214 = (*(v209 + 80) + 32) & ~*(v209 + 80);
        v215 = *(v209 + 72);
        sub_1B7531490(&v210[v214 + v215 * v211], v213, type metadata accessor for ExtractedOrder.ShippingFulfillment);
        if (*(v213 + 16))
        {
          sub_1B75314F8(v213, v319, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v355 = v212;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B71FE2D4(0, *(v212 + 2) + 1, 1);
            v212 = v355;
          }

          v218 = *(v212 + 2);
          v217 = *(v212 + 3);
          if (v218 >= v217 >> 1)
          {
            sub_1B71FE2D4(v217 > 1, v218 + 1, 1);
            v212 = v355;
          }

          *(v212 + 2) = v218 + 1;
          sub_1B75314F8(v319, &v212[v214 + v218 * v215], type metadata accessor for ExtractedOrder.ShippingFulfillment);
          v205 = v336;
          v213 = v307;
        }

        else
        {
          sub_1B75315A8(v213, type metadata accessor for ExtractedOrder.ShippingFulfillment);
        }

        ++v211;
        v210 = v335;
        if (v111 == v211)
        {
          goto LABEL_103;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      swift_once();
LABEL_29:
      v126 = sub_1B78000B8();
      __swift_project_value_buffer(v126, qword_1EB994840);
      v127 = v323;

      v128 = sub_1B7800098();
      v129 = sub_1B78011D8();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = v111;
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v355 = v132;
        *v131 = 136315138;
        v133 = sub_1B71A3EF8(v318, v127, &v355);

        *(v131 + 4) = v133;
        __swift_destroy_boxed_opaque_existential_1(v132);
        MEMORY[0x1B8CA7A40](v132, -1, -1);
        MEMORY[0x1B8CA7A40](v131, -1, -1);

        sub_1B7205418(v328, &qword_1EB98EBD0);
        sub_1B7205418(v327, &qword_1EB98EBD0);
        sub_1B7205418(v112, &qword_1EB98EBD0);
        v134 = v130;
      }

      else
      {

        sub_1B7205418(v328, &qword_1EB98EBD0);
        sub_1B7205418(v327, &qword_1EB98EBD0);
        sub_1B7205418(v112, &qword_1EB98EBD0);
        v134 = v111;
      }

LABEL_34:
      sub_1B75315A8(v134, type metadata accessor for CascadeExtractedOrder);
      goto LABEL_35;
    }

    v212 = MEMORY[0x1E69E7CC0];
LABEL_103:

    v335 = v212;
    v207 = v316;
    v206 = v317;
    goto LABEL_107;
  }

LABEL_108:
  v230 = v112 + *(v208 + 24);
  v231 = *(v230 + 8);
  if (v231 && (v232 = (v112 + *(v208 + 28)), (v233 = v232[1]) != 0))
  {
    v332 = *v230;
    v319 = *v232;
    v317 = v231;

    v330 = v233;
  }

  else
  {
    v332 = 0;
    v317 = 0;
    v319 = 0;
    v330 = 0;
  }

  v234 = v331;
  (*(v331 + 16))(v302, v207, v205);
  v235 = v306;
  sub_1B7531490(v306, v304, type metadata accessor for ExtractedOrder.Merchant);
  v236 = v326;
  v237 = (v112 + *(v326 + 52));
  v238 = v237[5];
  v239 = v237[3];
  v351 = v237[4];
  v352 = v238;
  v240 = v237[5];
  v241 = v237[7];
  v353 = v237[6];
  v354 = v241;
  v242 = v237[1];
  v348[0] = *v237;
  v348[1] = v242;
  v243 = v237[3];
  v245 = *v237;
  v244 = v237[1];
  v349 = v237[2];
  v350 = v243;
  v344 = v351;
  v345 = v240;
  v246 = v237[7];
  v346 = v353;
  v347 = v246;
  v341[0] = v245;
  v341[1] = v244;
  v342 = v349;
  v343 = v239;
  sub_1B74783D8(v348, &v355);
  sub_1B752E22C(v341, sub_1B7478410, nullsub_1, sub_1B7531608, &v355);
  v247 = v112 + v236[14];
  v248 = *(v247 + 24);
  v249 = *(v247 + 32);
  *&v341[0] = *v247;
  *(v341 + 8) = *(v247 + 8);
  *(&v341[1] + 1) = v248;
  *&v342 = v249;

  sub_1B752DD68(v341, v338);
  sub_1B7205418(v305, &qword_1EB991538);
  sub_1B75315A8(v235, type metadata accessor for ExtractedOrder.Merchant);
  sub_1B7205418(v206, &qword_1EB996B58);
  (*(v234 + 8))(v207, v205);
  sub_1B7205418(v328, &qword_1EB98EBD0);
  sub_1B7205418(v327, &qword_1EB98EBD0);
  sub_1B7205418(v325, &qword_1EB98EBD0);
  v327 = v340;
  v328 = v339;
  v250 = v236[18];
  LODWORD(v325) = *(v112 + v236[17]);
  sub_1B7205588(v112 + v250, v301, &qword_1EB98EBD0);
  sub_1B7205588(v112 + v236[19], v303, &qword_1EB98EBD0);
  sub_1B75315A8(v112, type metadata accessor for CascadeExtractedOrder);
  v251 = v320;
  *(v320 + 16) = 0u;
  *(v251 + 32) = 0u;
  *(v251 + 64) = 0u;
  *(v251 + 80) = 0u;
  *(v251 + 96) = 0u;
  *(v251 + 112) = -2;
  v252 = type metadata accessor for ExtractedOrder(0);
  v253 = (v251 + v252[11]);
  sub_1B71CDF28(v337);
  v254 = v337[5];
  v253[4] = v337[4];
  v253[5] = v254;
  v255 = v337[7];
  v253[6] = v337[6];
  v253[7] = v255;
  v256 = v337[1];
  *v253 = v337[0];
  v253[1] = v256;
  v257 = v337[3];
  v253[2] = v337[2];
  v253[3] = v257;
  v258 = (v251 + v252[12]);
  *v258 = 0u;
  *(v258 + 1) = 0u;
  *(v258 + 2) = 0u;
  v259 = v252[14];
  v260 = *(v234 + 56);
  v331 = v338[0];
  v326 = v338[1];
  v260(v251 + v259, 1, 1, v205);
  v261 = v252[15];
  v260(v251 + v261, 1, 1, v205);
  v262 = v323;
  *v251 = v318;
  *(v251 + 8) = v262;
  sub_1B74204FC(*(v251 + 16), *(v251 + 24));
  v263 = v317;
  *(v251 + 16) = v332;
  *(v251 + 24) = v263;
  v264 = v330;
  *(v251 + 32) = v319;
  *(v251 + 40) = v264;
  v265 = v313;
  *(v251 + 48) = v312;
  *(v251 + 56) = v265;
  v267 = v314;
  v266 = v315;
  *(v251 + 64) = v321;
  *(v251 + 72) = v266;
  v268 = v329;
  *(v251 + 80) = v267;
  *(v251 + 88) = v268;
  v269 = v311;
  *(v251 + 96) = v322;
  *(v251 + 104) = v269;
  *(v251 + 112) = v310;
  (v333)(v251 + v252[8], v302, v205);
  sub_1B75314F8(v304, v251 + v252[9], type metadata accessor for ExtractedOrder.Merchant);
  *(v251 + v252[10]) = v335;
  v270 = v253[5];
  v344 = v253[4];
  v345 = v270;
  v271 = v253[7];
  v346 = v253[6];
  v347 = v271;
  v272 = v253[3];
  v342 = v253[2];
  v343 = v272;
  v273 = v253[1];
  v341[0] = *v253;
  v341[1] = v273;
  sub_1B7205418(v341, &qword_1EB996B60);
  v274 = v360;
  v253[4] = v359;
  v253[5] = v274;
  v275 = v362;
  v253[6] = v361;
  v253[7] = v275;
  v276 = v356;
  *v253 = v355;
  v253[1] = v276;
  v277 = v358;
  v253[2] = v357;
  v253[3] = v277;
  sub_1B75311F0(*v258, v258[1], v258[2], v258[3], v258[4], v258[5]);
  v278 = v326;
  *v258 = v331;
  *(v258 + 1) = v278;
  v279 = v327;
  v258[4] = v328;
  v258[5] = v279;
  *(v251 + v252[13]) = v325;
  sub_1B72DFF88(v301, v251 + v259);
  sub_1B72DFF88(v303, v251 + v261);
  return (*(*(v252 - 1) + 56))(v251, 0, 1, v252);
}

uint64_t sub_1B752B208@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = a1[1];
  if (v11)
  {
    v12 = *a1;

    v13 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
    sub_1B7205588(a1 + *(v13 + 20), v10, &qword_1EB98EBD0);
    v14 = (a1 + *(v13 + 24));
    v16 = *v14;
    v15 = v14[1];
    v17 = type metadata accessor for ExtractedOrder.Merchant(0);
    v18 = *(v17 + 20);
    v19 = sub_1B77FF988();
    (*(*(v19 - 8) + 56))(&a4[v18], 1, 1, v19);
    v20 = &a4[*(v17 + 24)];
    *a4 = v12;
    *(a4 + 1) = v11;

    sub_1B72DFF88(v10, &a4[v18]);
    *v20 = v16;
    *(v20 + 1) = v15;
    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.Merchant);
    return (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
  }

  else
  {
    if (qword_1EB98EA40 != -1)
    {
      swift_once();
    }

    v22 = sub_1B78000B8();
    __swift_project_value_buffer(v22, qword_1EB994840);

    v23 = sub_1B7800098();
    v24 = sub_1B78011D8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v27 = sub_1B71A3EF8(a2, a3, &v31);

      *(v25 + 4) = v27;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1B8CA7A40](v26, -1, -1);
      MEMORY[0x1B8CA7A40](v25, -1, -1);
    }

    else
    {
    }

    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.Merchant);
    v28 = type metadata accessor for ExtractedOrder.Merchant(0);
    v29 = *(*(v28 - 8) + 56);

    return v29(a4, 1, 1, v28);
  }
}

uint64_t sub_1B752B574(uint64_t *a1, uint64_t a2)
{
  v74 = a1;
  v68 = sub_1B77FF988();
  v70 = *(v68 - 8);
  v3 = MEMORY[0x1EEE9AC00](v68);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v67 = &v59 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - v13;
  v66 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964D0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v65 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v59 - v27;
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v31 = a2;
  v32 = *v74;
  v33 = *(*v74 + 16);
  v73 = &v59 - v27;
  v71 = v18;
  v63 = v30;
  v64 = v29;
  if (v33)
  {
    v34 = sub_1B7245D7C(v29, v30);
    v18 = v71;
    if (v35)
    {
      v28 = v73;
      sub_1B7531490(*(v32 + 56) + *(v71 + 72) * v34, v73, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v36 = *(v18 + 56);
      v37 = v28;
      v38 = 0;
    }

    else
    {
      v36 = *(v71 + 56);
      v28 = v73;
      v37 = v73;
      v38 = 1;
    }

    v39 = v17;
    v62 = v36;
    v36(v37, v38, 1, v17);
  }

  else
  {
    v62 = *(v18 + 56);
    v62(&v59 - v27, 1, 1, v17);
    v39 = v17;
  }

  v40 = v31;
  sub_1B7531490(v31, v16, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
  v69 = v20;
  sub_1B752BD50(v16, v20);
  sub_1B7205588(v28, v26, &qword_1EB9964D0);
  if ((*(v18 + 48))(v26, 1, v39) == 1)
  {
    sub_1B7205418(v26, &qword_1EB9964D0);
    v41 = v70;
    v42 = v68;
    (*(v70 + 56))(v14, 1, 1, v68);
  }

  else
  {
    sub_1B7205588(&v26[*(v39 + 12)], v14, &qword_1EB98EBD0);
    sub_1B75315A8(v26, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v42 = v68;
    v41 = v70;
  }

  v43 = v67;
  v44 = v72;
  sub_1B7205588(v40 + *(v66 + 68), v72, &qword_1EB98EBD0);
  sub_1B7205588(v14, v43, &qword_1EB98EBD0);
  v45 = *(v41 + 48);
  if (v45(v43, 1, v42) == 1)
  {
    goto LABEL_13;
  }

  v67 = v39;
  v68 = v14;
  v46 = *(v41 + 32);
  v47 = v61;
  v46(v61, v43, v42);
  v43 = v60;
  sub_1B7205588(v44, v60, &qword_1EB98EBD0);
  if (v45(v43, 1, v42) == 1)
  {
    (*(v41 + 8))(v47, v42);
    v44 = v72;
    v39 = v67;
    v14 = v68;
LABEL_13:
    sub_1B7205418(v43, &qword_1EB98EBD0);
    v48 = v69;
    v49 = v65;
    sub_1B7531490(v69, v65, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v62(v49, 0, 1, v39);
    v50 = v63;

    sub_1B74E49D4(v49, v64, v50);
    goto LABEL_14;
  }

  v52 = v59;
  v46(v59, v43, v42);
  v53 = v47;
  if (sub_1B77FF8C8())
  {
    v54 = v69;
    v55 = v65;
    sub_1B7531490(v69, v65, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v62(v55, 0, 1, v67);
    v56 = v63;

    sub_1B74E49D4(v55, v64, v56);
    v57 = *(v70 + 8);
    v57(v52, v42);
    v57(v53, v42);
    v48 = v54;
    v44 = v72;
    v14 = v68;
  }

  else
  {
    v58 = *(v70 + 8);
    v58(v52, v42);
    v58(v47, v42);
    v44 = v72;
    v14 = v68;
    v48 = v69;
  }

LABEL_14:
  sub_1B7205418(v44, &qword_1EB98EBD0);
  sub_1B7205418(v14, &qword_1EB98EBD0);
  sub_1B75315A8(v48, type metadata accessor for ExtractedOrder.ShippingFulfillment);
  return sub_1B7205418(v73, &qword_1EB9964D0);
}

uint64_t sub_1B752BD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v220 = &v206 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v219 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v229 = &v206 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v218 = &v206 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v230 = &v206 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v217 = &v206 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v216 = &v206 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v241 = &v206 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v240 = &v206 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v214 = &v206 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v245 = &v206 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v225 = &v206 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v223 = &v206 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v222 = &v206 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v244 = &v206 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v243 = &v206 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v224 = &v206 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v221 = &v206 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v213 = &v206 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v228 = &v206 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v227 = &v206 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v248 = &v206 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v239 = &v206 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v238 = &v206 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v237 = &v206 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v234 = &v206 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v226 = &v206 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v206 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v206 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v206 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v206 - v69;
  v71 = MEMORY[0x1EEE9AC00](v68);
  v247 = &v206 - v72;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v206 - v73;
  if (*(a1 + 64))
  {
    LOBYTE(v254) = 0;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(&v206 - v73);
  }

  else
  {
    v75 = sub_1B77FED28();
    (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
  }

  v76 = *(a1 + 80);
  v242 = a1;
  if (v76)
  {
    LOBYTE(v254) = 2;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v247);
  }

  else
  {
    v77 = sub_1B77FED28();
    (*(*(v77 - 8) + 56))(v247, 1, 1, v77);
  }

  v246 = v74;
  sub_1B7205588(v74, v70, &qword_1EB991538);
  v78 = sub_1B77FED28();
  v79 = *(v78 - 8);
  v80 = v79 + 48;
  *v250 = *(v79 + 48);
  v81 = (*v250)(v70, 1, v78);
  v249 = v79;
  if (v81 == 1)
  {
    sub_1B7205418(v70, &qword_1EB991538);
    v233 = 0;
    v215 = 1;
  }

  else
  {
    v233 = sub_1B77FEC58();
    v215 = v82;
    (*(v79 + 8))(v70, v78);
  }

  sub_1B7205588(v246, v67, &qword_1EB991538);
  v83 = (*v250)(v67, 1, v78);
  v84 = v226;
  if (v83 == 1)
  {
    sub_1B7205418(v67, &qword_1EB991538);
    v232 = 0;
    v212 = 1;
  }

  else
  {
    v232 = sub_1B77FEC78();
    v212 = v85;
    (*(v249 + 8))(v67, v78);
  }

  sub_1B7205588(v246, v64, &qword_1EB991538);
  if ((*v250)(v64, 1, v78) == 1)
  {
    sub_1B7205418(v64, &qword_1EB991538);
    v231 = 0;
    LODWORD(v211) = 1;
  }

  else
  {
    v231 = sub_1B77FEC08();
    LODWORD(v211) = v86;
    (*(v249 + 8))(v64, v78);
  }

  sub_1B7205588(v247, v61, &qword_1EB991538);
  v87 = (*v250)(v61, 1, v78);
  v88 = v237;
  if (v87 == 1)
  {
    sub_1B7205418(v61, &qword_1EB991538);
    v236 = 0;
    v89 = 1;
  }

  else
  {
    v236 = sub_1B77FEC38();
    v89 = v90;
    (*(v249 + 8))(v61, v78);
  }

  sub_1B7205588(v247, v84, &qword_1EB991538);
  if ((*v250)(v84, 1, v78) == 1)
  {
    sub_1B7205418(v84, &qword_1EB991538);
    v235 = 0;
    v91 = 1;
  }

  else
  {
    v235 = sub_1B77FEC98();
    v91 = v92;
    (*(v249 + 8))(v84, v78);
  }

  v93 = v234;
  sub_1B7205588(v247, v234, &qword_1EB991538);
  v94 = (*v250)(v93, 1, v78);
  v95 = v239;
  if (v94 == 1)
  {
    sub_1B7205418(v93, &qword_1EB991538);
    v234 = 0;
    v96 = 1;
    if (v215)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v234 = sub_1B77FECB8();
    v96 = v97;
    (*(v249 + 8))(v93, v78);
    if (v215)
    {
LABEL_28:
      v232 = 0;
      v233 = 0;
      v231 = 0;
      v235 = 0;
      v236 = 0;
      v234 = 0;
      v215 = 254;
LABEL_29:
      v98 = v249;
      goto LABEL_30;
    }
  }

  if (v212 & 1) != 0 || (v211)
  {
    goto LABEL_28;
  }

  if (v89)
  {
    v235 = 0;
    v236 = 0;
    v234 = 0;
    v215 = 0;
    goto LABEL_29;
  }

  v98 = v249;
  if (v91)
  {
    v235 = 0;
    v236 = 0;
    v234 = 0;
    v215 = 0;
  }

  else
  {
    v215 = v96 & 1 | 0xFFFFFF80;
  }

LABEL_30:
  v99 = v242;
  v100 = v238;
  if (*(v242 + 96))
  {
    LOBYTE(v254) = 0;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v88);
    if (v99[14])
    {
      goto LABEL_32;
    }
  }

  else
  {
    (*(v98 + 56))(v88, 1, 1, v78);
    if (v99[14])
    {
LABEL_32:
      LOBYTE(v254) = 2;
      Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v100);
      if (v99[16])
      {
        goto LABEL_33;
      }

LABEL_37:
      (*(v98 + 56))(v95, 1, 1, v78);
      if (v99[18])
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  (*(v98 + 56))(v100, 1, 1, v78);
  if (!v99[16])
  {
    goto LABEL_37;
  }

LABEL_33:
  LOBYTE(v254) = 0;
  Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v95);
  if (v99[18])
  {
LABEL_34:
    LOBYTE(v254) = 2;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v248);
    goto LABEL_39;
  }

LABEL_38:
  (*(v98 + 56))(v248, 1, 1, v78);
LABEL_39:
  v101 = v245;
  v102 = v227;
  sub_1B7205588(v88, v227, &qword_1EB991538);
  if ((*v250)(v102, 1, v78) == 1)
  {
    sub_1B7205418(v102, &qword_1EB991538);
    v226 = 0;
    v212 = 1;
  }

  else
  {
    v226 = sub_1B77FEC58();
    v212 = v103;
    (*(v98 + 8))(v102, v78);
  }

  v104 = v228;
  sub_1B7205588(v88, v228, &qword_1EB991538);
  if ((*v250)(v104, 1, v78) == 1)
  {
    sub_1B7205418(v104, &qword_1EB991538);
    v227 = 0;
    LODWORD(v211) = 1;
  }

  else
  {
    v227 = sub_1B77FEC78();
    LODWORD(v211) = v105;
    (*(v98 + 8))(v104, v78);
  }

  v106 = v213;
  sub_1B7205588(v88, v213, &qword_1EB991538);
  if ((*v250)(v106, 1, v78) == 1)
  {
    sub_1B7205418(v106, &qword_1EB991538);
    v228 = 0;
    LODWORD(v210) = 1;
  }

  else
  {
    v228 = sub_1B77FEC08();
    LODWORD(v210) = v107;
    (*(v98 + 8))(v106, v78);
  }

  v108 = v244;
  v109 = v221;
  sub_1B7205588(v95, v221, &qword_1EB991538);
  if ((*v250)(v109, 1, v78) == 1)
  {
    sub_1B7205418(v109, &qword_1EB991538);
    v245 = 0;
    LODWORD(v213) = 1;
  }

  else
  {
    v245 = sub_1B77FEC58();
    LODWORD(v213) = v110;
    (*(v98 + 8))(v109, v78);
  }

  v111 = v224;
  sub_1B7205588(v95, v224, &qword_1EB991538);
  if ((*v250)(v111, 1, v78) == 1)
  {
    sub_1B7205418(v111, &qword_1EB991538);
    v244 = 0;
    v209 = 1;
  }

  else
  {
    v244 = sub_1B77FEC78();
    v209 = v112;
    (*(v98 + 8))(v111, v78);
  }

  v113 = v243;
  sub_1B7205588(v95, v243, &qword_1EB991538);
  if ((*v250)(v113, 1, v78) == 1)
  {
    sub_1B7205418(v113, &qword_1EB991538);
    v243 = 0;
    v114 = 1;
  }

  else
  {
    v243 = sub_1B77FEC08();
    v114 = v115;
    (*(v98 + 8))(v113, v78);
  }

  sub_1B7205588(v100, v108, &qword_1EB991538);
  if ((*v250)(v108, 1, v78) == 1)
  {
    sub_1B7205418(v108, &qword_1EB991538);
    v224 = 0;
    v207 = 1;
  }

  else
  {
    v224 = sub_1B77FEC38();
    v207 = v116;
    (*(v98 + 8))(v108, v78);
  }

  v117 = v222;
  sub_1B7205588(v100, v222, &qword_1EB991538);
  if ((*v250)(v117, 1, v78) == 1)
  {
    sub_1B7205418(v117, &qword_1EB991538);
    v222 = 0;
    v118 = 1;
  }

  else
  {
    v222 = sub_1B77FEC98();
    v118 = v119;
    (*(v98 + 8))(v117, v78);
  }

  v120 = v223;
  sub_1B7205588(v100, v223, &qword_1EB991538);
  if ((*v250)(v120, 1, v78) == 1)
  {
    sub_1B7205418(v120, &qword_1EB991538);
    v221 = 0;
    v206 = 1;
  }

  else
  {
    v221 = sub_1B77FECB8();
    v206 = v121;
    (*(v98 + 8))(v120, v78);
  }

  v122 = v225;
  sub_1B7205588(v248, v225, &qword_1EB991538);
  if ((*v250)(v122, 1, v78) == 1)
  {
    sub_1B7205418(v122, &qword_1EB991538);
    v225 = 0;
    v123 = 1;
  }

  else
  {
    v225 = sub_1B77FEC38();
    v123 = v124;
    (*(v249 + 8))(v122, v78);
  }

  sub_1B7205588(v248, v101, &qword_1EB991538);
  if ((*v250)(v101, 1, v78) == 1)
  {
    sub_1B7205418(v101, &qword_1EB991538);
    v223 = 0;
    v125 = 1;
  }

  else
  {
    v223 = sub_1B77FEC98();
    v125 = v126;
    (*(v249 + 8))(v101, v78);
  }

  v127 = v214;
  sub_1B7205588(v248, v214, &qword_1EB991538);
  v208 = v80;
  if ((*v250)(v127, 1, v78) == 1)
  {
    sub_1B7205418(v127, &qword_1EB991538);
    v128 = 0;
    v129 = 1;
  }

  else
  {
    v130 = v123;
    v131 = v114;
    v132 = v118;
    v133 = sub_1B77FECB8();
    v129 = v134;
    (*(v249 + 8))(v127, v78);
    v128 = v133;
    v118 = v132;
    v114 = v131;
    v123 = v130;
  }

  if (((v210 | v211 | v212) & 1) == 0)
  {
    v135 = v241;
    if (((v114 | v209) | v213))
    {
      v136 = v123 | v125;
      if (((v207 | v118) & 1) == 0)
      {
        v137 = v242;
        v138 = v240;
        v139 = v230;
        v140 = v216;
        if ((v136 & 1) == 0)
        {
          v214 = 0;
          v141 = v206 & 1;
LABEL_111:
          LODWORD(v213) = v141;
          LOBYTE(v254) = v141;
          LOBYTE(v253[0]) = v129 & 1;
          v212 = 160;
          v244 = v223;
          v245 = v225;
          v243 = v128;
          v225 = v129 & 1;
          goto LABEL_112;
        }

        goto LABEL_103;
      }

LABEL_88:
      v137 = v242;
      v138 = v240;
      v139 = v230;
      v140 = v216;
      if (v136)
      {
        v212 = 0;
        LODWORD(v213) = 0;
        v214 = 0;
      }

      else
      {
        v214 = 0;
        v224 = v225;
        v221 = v128;
        v222 = v223;
        v212 = 64;
        LODWORD(v213) = v129 & 1;
      }

      goto LABEL_112;
    }

    if (v228 != v243 || v227 != v244 || v226 != v245)
    {
      if ((v123 | v125 | v207 | v118))
      {
        LODWORD(v213) = 0;
        v214 = 0;
        v224 = v245;
        v221 = v243;
        v222 = v244;
        v143 = 192;
      }

      else
      {
        v210 = v128;
        v214 = 0;
        LODWORD(v213) = v206 & 1;
        LOBYTE(v254) = v206 & 1;
        LOBYTE(v253[0]) = v129 & 1;
        v143 = v129 & 1 | 0xFFFFFFE0;
      }

      v212 = v143;
      goto LABEL_99;
    }

    v136 = v123 | v125;
    if ((v207 | v118))
    {
      goto LABEL_88;
    }

    v137 = v242;
    v138 = v240;
    v139 = v230;
    v140 = v216;
    if (v136)
    {
LABEL_103:
      v214 = 0;
      v144 = v206 & 1;
LABEL_104:
      LODWORD(v213) = v144;
      v212 = 32;
      goto LABEL_112;
    }

    if (v224 == v225 && v222 == v223)
    {
      if (v206)
      {
        if ((v129 & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      else if (v129 & 1 | (v221 != v128))
      {
        goto LABEL_110;
      }

      v214 = 0;
      v144 = v206 & 1;
      goto LABEL_104;
    }

LABEL_110:
    v214 = 0;
    v141 = v206 & 1;
    goto LABEL_111;
  }

  v135 = v241;
  if (((v114 | v209) | v213))
  {
    v226 = 0;
    v227 = 0;
    v228 = 0;
    v224 = 0;
    v225 = 0;
    v221 = 0;
    v222 = 0;
    v244 = 0;
    v245 = 0;
    v243 = 0;
    v223 = 0;
    v210 = 0;
    v214 = 0x1FFFFFF00;
    v212 = 0;
    LODWORD(v213) = 254;
LABEL_99:
    v137 = v242;
    v138 = v240;
    v139 = v230;
    v140 = v216;
    goto LABEL_112;
  }

  v140 = v216;
  if ((v123 | v125))
  {
    LODWORD(v213) = 0;
    v214 = 0;
    v226 = v245;
    v227 = v244;
    v228 = v243;
    v142 = 96;
  }

  else
  {
    v214 = 0;
    LODWORD(v213) = v129 & 1;
    v226 = v245;
    v227 = v244;
    v228 = v243;
    v224 = v225;
    v221 = v128;
    v222 = v223;
    v142 = 128;
  }

  v212 = v142;
  v137 = v242;
  v138 = v240;
  v139 = v230;
LABEL_112:
  if (*(v137 + 20))
  {
    LOBYTE(v254) = 0;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v138);
    if (*(v137 + 22))
    {
LABEL_114:
      LOBYTE(v254) = 2;
      Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v135);
      goto LABEL_117;
    }
  }

  else
  {
    (*(v249 + 56))(v138, 1, 1, v78);
    if (*(v137 + 22))
    {
      goto LABEL_114;
    }
  }

  (*(v249 + 56))(v135, 1, 1, v78);
LABEL_117:
  sub_1B7205588(v138, v140, &qword_1EB991538);
  if ((*v250)(v140, 1, v78) == 1)
  {
    sub_1B7205418(v140, &qword_1EB991538);
    v230 = 0;
    LODWORD(v216) = 1;
  }

  else
  {
    v230 = sub_1B77FEC58();
    LODWORD(v216) = v145;
    (*(v249 + 8))(v140, v78);
  }

  v146 = v217;
  sub_1B7205588(v138, v217, &qword_1EB991538);
  if ((*v250)(v146, 1, v78) == 1)
  {
    sub_1B7205418(v146, &qword_1EB991538);
    v147 = 0;
    LODWORD(v217) = 1;
  }

  else
  {
    v147 = sub_1B77FEC78();
    LODWORD(v217) = v148;
    (*(v249 + 8))(v146, v78);
  }

  sub_1B7205588(v138, v139, &qword_1EB991538);
  if ((*v250)(v139, 1, v78) == 1)
  {
    sub_1B7205418(v139, &qword_1EB991538);
    v149 = 0;
    LODWORD(v211) = 1;
  }

  else
  {
    v149 = sub_1B77FEC08();
    LODWORD(v211) = v150;
    (*(v249 + 8))(v139, v78);
  }

  v151 = v218;
  sub_1B7205588(v135, v218, &qword_1EB991538);
  if ((*v250)(v151, 1, v78) == 1)
  {
    sub_1B7205418(v151, &qword_1EB991538);
    v242 = 0;
    v209 = 1;
  }

  else
  {
    v242 = sub_1B77FEC38();
    v209 = v152;
    (*(v249 + 8))(v151, v78);
  }

  v153 = v229;
  v229 = v147;
  sub_1B7205588(v135, v153, &qword_1EB991538);
  if ((*v250)(v153, 1, v78) == 1)
  {
    sub_1B7205418(v153, &qword_1EB991538);
    v154 = 0;
    v155 = 1;
  }

  else
  {
    v154 = sub_1B77FEC98();
    v155 = v156;
    (*(v249 + 8))(v153, v78);
  }

  v157 = v219;
  sub_1B7205588(v135, v219, &qword_1EB991538);
  v158 = v149;
  if ((*v250)(v157, 1, v78) == 1)
  {
    sub_1B7205418(v157, &qword_1EB991538);
    v159 = 0;
    v160 = 1;
    if (v216)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v161 = v157;
    v159 = sub_1B77FECB8();
    v160 = v162;
    (*(v249 + 8))(v161, v78);
    if (v216)
    {
LABEL_138:
      v229 = 0;
      v230 = 0;
      v218 = 0;
      v242 = 0;
      v249 = 0;
      v159 = 0;
      v250[0] = 254;
      goto LABEL_139;
    }
  }

  if (v217 & 1) != 0 || (v211)
  {
    goto LABEL_138;
  }

  v218 = v158;
  if (v209 & 1) != 0 || (v155)
  {
    v242 = 0;
    v249 = 0;
    v159 = 0;
    v250[0] = 0;
  }

  else
  {
    v250[0] = v160 & 1 | 0xFFFFFF80;
    v249 = v154;
  }

LABEL_139:
  LODWORD(v219) = *v137;
  v163 = *(v137 + 1);
  v164 = *(v137 + 2);
  v165 = *(v137 + 4);
  v216 = *(v137 + 3);
  v217 = v163;
  v166 = *(v137 + 6);
  v211 = *(v137 + 5);
  v167 = *(v137 + 264);
  v168 = *(v137 + 280);
  v251[4] = *(v137 + 248);
  v251[5] = v167;
  v169 = *(v137 + 264);
  v170 = *(v137 + 296);
  v251[6] = *(v137 + 280);
  v251[7] = v170;
  v171 = *(v137 + 200);
  v251[0] = *(v137 + 184);
  v251[1] = v171;
  v172 = *(v137 + 232);
  v251[2] = *(v137 + 216);
  v251[3] = v172;
  v258 = *(v137 + 248);
  v259 = v169;
  v173 = *(v137 + 296);
  v260 = v168;
  v261 = v173;
  v174 = *(v137 + 200);
  v254 = *(v137 + 184);
  v255 = v174;
  v175 = *(v137 + 232);
  v256 = *(v137 + 216);
  v257 = v175;

  sub_1B7478158(v251, v253);
  sub_1B752E22C(&v254, sub_1B7478190, nullsub_1, sub_1B7531608, v252);
  sub_1B7205418(v241, &qword_1EB991538);
  sub_1B7205418(v240, &qword_1EB991538);
  sub_1B7205418(v248, &qword_1EB991538);
  sub_1B7205418(v239, &qword_1EB991538);
  sub_1B7205418(v238, &qword_1EB991538);
  sub_1B7205418(v237, &qword_1EB991538);
  sub_1B7205418(v247, &qword_1EB991538);
  sub_1B7205418(v246, &qword_1EB991538);
  v176 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  v177 = v220;
  sub_1B7205588(&v137[*(v176 + 68)], v220, &qword_1EB98EBD0);
  sub_1B75315A8(v137, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = -2;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0x1FFFFFFFELL;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = -2;
  sub_1B71CDF28(v253);
  v178 = v253[5];
  *(a2 + 344) = v253[4];
  *(a2 + 360) = v178;
  v179 = v253[7];
  *(a2 + 376) = v253[6];
  *(a2 + 392) = v179;
  v180 = v253[1];
  *(a2 + 280) = v253[0];
  *(a2 + 296) = v180;
  v181 = v253[3];
  *(a2 + 312) = v253[2];
  *(a2 + 328) = v181;
  v182 = *(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) + 48);
  v183 = sub_1B77FF988();
  (*(*(v183 - 8) + 56))(a2 + v182, 1, 1, v183);
  *a2 = v219;
  v184 = v216;
  *(a2 + 8) = v217;
  *(a2 + 16) = v164;
  *(a2 + 24) = v184;
  *(a2 + 32) = v165;
  *(a2 + 40) = v211;
  *(a2 + 48) = v166;
  v185 = v232;
  *(a2 + 56) = v233;
  *(a2 + 64) = v185;
  v187 = v235;
  v186 = v236;
  *(a2 + 72) = v231;
  *(a2 + 80) = v186;
  v188 = v234;
  *(a2 + 88) = v187;
  *(a2 + 96) = v188;
  *(a2 + 104) = v215;
  v189 = v227;
  *(a2 + 112) = v226;
  *(a2 + 120) = v189;
  v190 = v224;
  *(a2 + 128) = v228;
  *(a2 + 136) = v190;
  v191 = v221;
  *(a2 + 144) = v222;
  *(a2 + 152) = v191;
  *(a2 + 160) = v214 | v213;
  v192 = v244;
  *(a2 + 168) = v245;
  *(a2 + 176) = v192;
  v193 = v225;
  *(a2 + 184) = v243;
  *(a2 + 192) = v193;
  v194 = v210;
  *(a2 + 200) = v223;
  *(a2 + 208) = v194;
  *(a2 + 216) = v212;
  v195 = v229;
  *(a2 + 224) = v230;
  *(a2 + 232) = v195;
  v196 = v242;
  *(a2 + 240) = v218;
  *(a2 + 248) = v196;
  *(a2 + 256) = v249;
  *(a2 + 264) = v159;
  *(a2 + 272) = v250[0];
  v197 = *(a2 + 360);
  v258 = *(a2 + 344);
  v259 = v197;
  v198 = *(a2 + 392);
  v260 = *(a2 + 376);
  v261 = v198;
  v199 = *(a2 + 296);
  v254 = *(a2 + 280);
  v255 = v199;
  v200 = *(a2 + 328);
  v256 = *(a2 + 312);
  v257 = v200;
  sub_1B7205418(&v254, &qword_1EB996B70);
  v201 = v252[5];
  *(a2 + 344) = v252[4];
  *(a2 + 360) = v201;
  v202 = v252[7];
  *(a2 + 376) = v252[6];
  *(a2 + 392) = v202;
  v203 = v252[1];
  *(a2 + 280) = v252[0];
  *(a2 + 296) = v203;
  v204 = v252[3];
  *(a2 + 312) = v252[2];
  *(a2 + 328) = v204;
  return sub_1B72DFF88(v177, a2 + v182);
}