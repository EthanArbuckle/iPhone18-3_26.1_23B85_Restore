uint64_t sub_21578F1B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v148 = a1;
  v155 = a2;
  v4 = sub_2157A8FB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v158 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2157A8F40();
  v7 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v156 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2157A8FA0();
  v164 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v154 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2157A8FE0();
  v159 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v153 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2157A9000();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SmallLockupLayout(0);
  v15 = v14[6];
  sub_215783024(v2 + v15, &v176, &qword_27CA71078);
  LODWORD(v16) = v177;
  v163 = v5;
  v162 = v4;
  if (!v177)
  {
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v176, v177);
  v17 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(&v176);
  if ((v17 & 1) == 0)
  {
    sub_215783024(v2 + v15, &v176, &qword_27CA71078);
    LODWORD(v16) = v177;
    if (v177)
    {
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      LODWORD(v16) = sub_2157A8A60();
      __swift_destroy_boxed_opaque_existential_1(&v176);
      goto LABEL_7;
    }

LABEL_6:
    sub_215783830(&v176, &qword_27CA71078);
    goto LABEL_7;
  }

  LODWORD(v16) = 0;
LABEL_7:
  v152 = v14[9];
  sub_215783024(v2 + v152, &v176, &qword_27CA71078);
  v160 = v10;
  v166 = v7;
  if (!v177)
  {
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(&v176, v177);
  v18 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(&v176);
  if (v18)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  sub_215783024(v3 + v152, &v176, &qword_27CA71078);
  if (!v177)
  {
LABEL_11:
    sub_215783830(&v176, &qword_27CA71078);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(&v176, v177);
  v19 = sub_2157A8A60();
  __swift_destroy_boxed_opaque_existential_1(&v176);
LABEL_13:
  v20 = (v3 + v14[7]);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  if (sub_2157A8A60() & 1) == 0 || (__swift_project_boxed_opaque_existential_1((v3 + v14[8]), *(v3 + v14[8] + 24)), (sub_2157A8A60()))
  {
LABEL_20:
    if ((v16 | v19))
    {
      goto LABEL_21;
    }

LABEL_32:
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v87 = sub_2157A8A60();
    v88 = v164;
    if ((v87 & 1) != 0 || (v89 = (v3 + v14[8]), __swift_project_boxed_opaque_existential_1(v89, v89[3]), (sub_2157A8A60() & 1) == 0))
    {
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      if (sub_2157A8A60() & 1) == 0 || (__swift_project_boxed_opaque_existential_1((v3 + v14[8]), *(v3 + v14[8] + 24)), (sub_2157A8A60()))
      {
        v96 = [v148 traitCollection];
        v97 = [v96 preferredContentSizeCategory];

        LOBYTE(v96) = sub_2157A94D0();
        sub_21578326C(v20, &v176);
        sub_21578326C(v3 + v14[8], &v173);
        if (v96)
        {
          sub_21578326C(v3 + 296, &v170);
          v98 = sub_2157A9310();
          v99 = MEMORY[0x277D229F0];
          v100 = v155;
          v155[3] = v98;
          v100[4] = v99;
          __swift_allocate_boxed_opaque_existential_1(v100);
          return sub_2157A9300();
        }

        else
        {
          sub_21578326C(v3 + 96, &v170);
          sub_21578326C(v3 + 136, v168);
          sub_21578326C(v3 + 296, &v167);
          v101 = sub_2157A92F0();
          v102 = MEMORY[0x277D229C8];
          v103 = v155;
          v155[3] = v101;
          v103[4] = v102;
          __swift_allocate_boxed_opaque_existential_1(v103);
          return sub_2157A92E0();
        }
      }

      sub_215783024(v3 + v14[10], &v173, &qword_27CA71080);
      if (*(&v174 + 1))
      {
        sub_21571DF08(&v173, &v176);
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        if ((sub_2157A8AA0() & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(&v176, v177);
          if (sub_2157A8A60())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B0);
            v157 = *(v159 + 72);
            v104 = (*(v159 + 80) + 32) & ~*(v159 + 80);
            v105 = swift_allocObject();
            v159 = v105;
            *(v105 + 16) = xmmword_2157B33C0;
            v160 = v105 + v104;
            v106 = v20[3];
            v107 = v20[4];
            v108 = __swift_project_boxed_opaque_existential_1(v20, v106);
            *(&v174 + 1) = v106;
            v175 = *(v107 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v173);
            (*(*(v106 - 8) + 16))(boxed_opaque_existential_1, v108, v106);
            v172 = 0;
            v170 = 0u;
            v171 = 0u;
            LODWORD(v149) = *MEMORY[0x277D227C8];
            v110 = *(v166 + 104);
            v152 = v166 + 104;
            v153 = v110;
            v111 = v156;
            (v110)(v156);
            LODWORD(v148) = *MEMORY[0x277D227F0];
            v112 = *(v163 + 104);
            v146 = v163 + 104;
            v147 = v112;
            v113 = v158;
            v112(v158);
            v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098);
            v144 = *(v88 + 72);
            v139 = (*(v88 + 80) + 32) & ~*(v88 + 80);
            v114 = swift_allocObject();
            v143 = xmmword_2157B2B70;
            *(v114 + 16) = xmmword_2157B2B70;
            sub_2157A8F70();
            *&v168[0] = v114;
            v141 = sub_215791C98(&qword_280D2AF60, MEMORY[0x277D227D8]);
            v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0);
            v142 = sub_215783784();
            v115 = v154;
            v116 = v150;
            sub_2157A9540();
            sub_2157A8FD0();
            v164 = *(v88 + 8);
            (v164)(v115, v116);
            v161 = v3;
            v117 = *(v163 + 8);
            v163 += 8;
            v138 = v117;
            v118 = v162;
            v117(v113, v162);
            v119 = *(v166 + 8);
            v166 += 8;
            v137 = v119;
            v120 = v165;
            v119(v111, v165);
            sub_215783830(&v170, &qword_27CA710A8);
            __swift_destroy_boxed_opaque_existential_1(&v173);
            v175 = 0;
            v173 = 0u;
            v174 = 0u;
            (v153)(v111, v149, v120);
            v147(v113, v148, v118);
            v121 = swift_allocObject();
            *(v121 + 16) = v143;
            sub_2157A8F70();
            *&v170 = v121;
            sub_2157A9540();
            sub_2157A8FD0();
            (v164)(v115, v116);
            v138(v113, v118);
            v137(v111, v120);
            sub_215783830(&v173, &qword_27CA710A8);
            v122 = MEMORY[0x277D22808];
            v123 = v155;
            v155[3] = v151;
            v123[4] = v122;
            __swift_allocate_boxed_opaque_existential_1(v123);
            sub_2157A8FC0();
            return __swift_destroy_boxed_opaque_existential_1(&v176);
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v176);
      }

      else
      {
        sub_215783830(&v173, &qword_27CA71080);
      }

      v126 = v20[3];
      v127 = v20[4];
      v128 = __swift_project_boxed_opaque_existential_1(v20, v126);
      v129 = v155;
      v155[3] = &type metadata for CenteringLayout;
      v129[4] = sub_215791C44();
      v94 = swift_allocObject();
      *v129 = v94;
      v94[5] = v126;
      v94[6] = *(v127 + 8);
      v130 = __swift_allocate_boxed_opaque_existential_1(v94 + 2);
      result = (*(*(v126 - 8) + 16))(v130, v128, v126);
    }

    else
    {
      v90 = v89[3];
      v91 = v89[4];
      v92 = __swift_project_boxed_opaque_existential_1(v89, v90);
      v93 = v155;
      v155[3] = &type metadata for CenteringLayout;
      v93[4] = sub_215791C44();
      v94 = swift_allocObject();
      *v93 = v94;
      v94[5] = v90;
      v94[6] = *(v91 + 8);
      v95 = __swift_allocate_boxed_opaque_existential_1(v94 + 2);
      result = (*(*(v90 - 8) + 16))(v95, v92, v90);
    }

    v94[7] = 2;
    return result;
  }

  sub_215783024(v3 + v15, &v173, &qword_27CA71078);
  if (!*(&v174 + 1))
  {
    sub_215783830(&v173, &qword_27CA71078);
    goto LABEL_20;
  }

  sub_21571DF08(&v173, &v176);
  if ((v16 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(&v176);
LABEL_21:
    v134 = v14;
    sub_2157A8FC0();
    sub_215783024(v3 + v15, &v173, &qword_27CA71078);
    v161 = v3;
    v157 = v13;
    if (*(&v174 + 1))
    {
      sub_21571DF08(&v173, &v176);
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      sub_2157A8D30();
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      sub_2157A8D10();
      v21 = v177;
      v22 = v178;
      v23 = __swift_project_boxed_opaque_existential_1(&v176, v177);
      *(&v174 + 1) = v21;
      v175 = *(v22 + 8);
      v24 = __swift_allocate_boxed_opaque_existential_1(&v173);
      (*(*(v21 - 8) + 16))(v24, v23, v21);
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2157B33C0;
      sub_2157A8F90();
      sub_2157A8F80();
      *&v168[0] = v25;
      sub_215791C98(&qword_280D2AF60, MEMORY[0x277D227D8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0);
      sub_215783784();
      v26 = v154;
      v27 = v150;
      sub_2157A9540();
      v28 = v166;
      v29 = v156;
      v30 = v165;
      (*(v166 + 104))(v156, *MEMORY[0x277D227C8], v165);
      v31 = *MEMORY[0x277D227F0];
      v32 = v163;
      v33 = *(v163 + 104);
      v34 = v158;
      LODWORD(v148) = v16;
      v16 = v162;
      v33(v158, v31, v162);
      v35 = v153;
      sub_2157A8FD0();
      v36 = v16;
      LOBYTE(v16) = v148;
      (*(v32 + 8))(v34, v36);
      v37 = v29;
      (*(v28 + 8))(v29, v30);
      (*(v164 + 8))(v26, v27);
      sub_215783830(&v170, &qword_27CA710A8);
      __swift_destroy_boxed_opaque_existential_1(&v173);
      sub_2157A8FF0();
      (*(v159 + 8))(v35, v160);
      __swift_destroy_boxed_opaque_existential_1(&v176);
    }

    else
    {
      sub_215783830(&v173, &qword_27CA71078);
      v37 = v156;
      v27 = v150;
    }

    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_2157A8D10();
    v38 = 176;
    if (v16)
    {
      v38 = 216;
    }

    sub_21578326C(v161 + v38, &v176);
    v39 = v20[3];
    v40 = v20[4];
    v41 = __swift_project_boxed_opaque_existential_1(v20, v39);
    *(&v174 + 1) = v39;
    v175 = *(v40 + 8);
    v42 = __swift_allocate_boxed_opaque_existential_1(&v173);
    (*(*(v39 - 8) + 16))(v42, v41, v39);
    v172 = 0;
    v170 = 0u;
    v171 = 0u;
    LODWORD(v148) = *MEMORY[0x277D227C8];
    v43 = *(v166 + 104);
    v150 = v166 + 104;
    v147 = v43;
    v44 = v37;
    v43(v37);
    LODWORD(v145) = *MEMORY[0x277D227F0];
    v45 = v163;
    v46 = *(v163 + 104);
    v146 = v163 + 104;
    v144 = v46;
    v47 = v158;
    v48 = v162;
    v46(v158);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098);
    v49 = v164;
    *&v143 = *(v164 + 72);
    v50 = *(v164 + 80);
    v142 = (v50 + 8) & ~v50;
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_2157B2B70;
    sub_2157A8F70();
    *&v168[0] = v51;
    v140 = sub_215791C98(&qword_280D2AF60, MEMORY[0x277D227D8]);
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0);
    v137 = sub_215783784();
    v52 = v154;
    sub_2157A9540();
    v53 = v153;
    sub_2157A8FD0();
    v133 = *(v49 + 8);
    v133(v52, v27);
    v54 = *(v45 + 8);
    v163 = v45 + 8;
    v136 = v54;
    v54(v47, v48);
    v55 = *(v166 + 8);
    v166 += 8;
    v135 = v55;
    v55(v44, v165);
    sub_215783830(&v170, &qword_27CA710A8);
    __swift_destroy_boxed_opaque_existential_1(&v173);
    sub_2157A8FF0();
    v56 = v159 + 8;
    v138 = *(v159 + 8);
    v138(v53, v160);
    v57 = (v161 + v134[8]);
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    sub_2157A8D10();
    v58 = v57[3];
    v59 = v57[4];
    v60 = __swift_project_boxed_opaque_existential_1(v57, v58);
    *(&v174 + 1) = v58;
    v175 = *(v59 + 8);
    v61 = __swift_allocate_boxed_opaque_existential_1(&v173);
    (*(*(v58 - 8) + 16))(v61, v60, v58);
    v172 = 0;
    v170 = 0u;
    v171 = 0u;
    v134 = v50;
    v132 = v142 + 2 * v143;
    v62 = swift_allocObject();
    v131 = xmmword_2157B33C0;
    *(v62 + 16) = xmmword_2157B33C0;
    sub_2157A8F90();
    v63 = v158;
    sub_2157A8F80();
    *&v168[0] = v62;
    sub_2157A9540();
    v64 = v156;
    v65 = v165;
    v147(v156, v148, v165);
    v66 = v162;
    v144(v63, v145, v162);
    v67 = v161;
    sub_2157A8FD0();
    v136(v63, v66);
    v68 = v64;
    v69 = v65;
    v70 = v160;
    v135(v64, v69);
    v164 = v49 + 8;
    v71 = v133;
    v133(v52, v27);
    v72 = v71;
    sub_215783830(&v170, &qword_27CA710A8);
    __swift_destroy_boxed_opaque_existential_1(&v173);
    sub_2157A8FF0();
    v138(v53, v70);
    sub_215783024(v67 + v152, &v170, &qword_27CA71078);
    if (*(&v171 + 1))
    {
      v73 = v68;
      sub_21571DF08(&v170, &v173);
      __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
      v159 = v56;
      sub_2157A8D30();
      __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
      sub_2157A8D10();
      v74 = *(&v174 + 1);
      v75 = v175;
      v76 = __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
      *(&v171 + 1) = v74;
      v172 = *(v75 + 8);
      v77 = __swift_allocate_boxed_opaque_existential_1(&v170);
      (*(*(v74 - 8) + 16))(v77, v76, v74);
      v169 = 0;
      memset(v168, 0, sizeof(v168));
      v78 = swift_allocObject();
      *(v78 + 16) = v131;
      sub_2157A8F90();
      sub_2157A8F80();
      v167 = v78;
      sub_2157A9540();
      v79 = v165;
      v147(v73, v148, v165);
      v80 = v162;
      v144(v63, v145, v162);
      sub_2157A8FD0();
      v136(v63, v80);
      v135(v73, v79);
      v72(v52, v27);
      sub_215783830(v168, &qword_27CA710A8);
      __swift_destroy_boxed_opaque_existential_1(&v170);
      v81 = v157;
      sub_2157A8FF0();
      v138(v53, v160);
      __swift_destroy_boxed_opaque_existential_1(&v173);
    }

    else
    {
      sub_215783830(&v170, &qword_27CA71078);
      v81 = v157;
    }

    v82 = MEMORY[0x277D22808];
    v83 = v155;
    v84 = v151;
    v155[3] = v151;
    v83[4] = v82;
    v85 = __swift_allocate_boxed_opaque_existential_1(v83);
    (*(v149 + 32))(v85, v81, v84);
    return __swift_destroy_boxed_opaque_existential_1(&v176);
  }

  v124 = v155;
  v155[3] = &type metadata for CenteredThreeLineReverseTextLayout;
  v124[4] = sub_215791CE0();
  v125 = swift_allocObject();
  *v124 = v125;
  sub_21578326C(v20, v125 + 16);
  sub_21571DF08(&v176, v125 + 56);
  result = sub_21578326C(v3 + 216, v125 + 96);
  *(v125 + 136) = 2;
  return result;
}

uint64_t sub_215790D7C()
{
  v0 = sub_2157A9160();
  __swift_allocate_value_buffer(v0, qword_280D2B4F8);
  v1 = __swift_project_value_buffer(v0, qword_280D2B4F8);
  v2 = *MEMORY[0x277D228B8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_215790E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v37 = sub_2157A9160();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v33 - v7;
  v41 = sub_2157A9190();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2157A9130();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v34 = sub_2157A9150();
  v16 = *(v34 - 8);
  *&v17 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = [a1 traitCollection];
  v22 = sub_2157A94B0();

  if (v22)
  {
    sub_21578F1B4(v20, v47);
    v23 = type metadata accessor for SmallLockupLayout(0);
    sub_21578326C(v3 + *(v23 + 20), v46);
    sub_21578326C(v3 + 16, v45);
    sub_21578326C(v3 + *(v23 + 44), v44);
    sub_21578326C(v3 + 416, v43);
    v24 = *MEMORY[0x277D22898];
    v25 = *(v10 + 104);
    v25(v15, v24, v9);
    v25(v12, v24, v9);
    sub_2157A9140();
    sub_2157A9120();
    return (*(v16 + 8))(v19, v34);
  }

  else
  {
    sub_21578F1B4(v20, v47);
    v27 = type metadata accessor for SmallLockupLayout(0);
    sub_21578326C(v3 + *(v27 + 20), v46);
    sub_21578326C(v3 + 16, v45);
    v28 = type metadata accessor for SmallLockupLayout.Metrics(0);
    v29 = *(v36 + 16);
    v30 = v37;
    v29(v35, v3 + *(v28 + 76), v37);
    sub_21578326C(v3 + *(v27 + 44), v44);
    sub_21578326C(v3 + 456, v43);
    if (qword_280D2B4F0 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v30, qword_280D2B4F8);
    v29(v40, v31, v30);
    v32 = v38;
    sub_2157A9180();
    sub_2157A9170();
    return (*(v39 + 8))(v32, v41);
  }
}

double sub_21579136C(uint64_t a1, void *a2)
{
  swift_getObjectType();

  return sub_2157913D8(a1, a2);
}

double sub_2157913D8(uint64_t a1, void *a2)
{
  v4 = sub_2157A8E50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2157A8E80();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D22788], v4, v10);
  sub_2157A8E60();
  v13 = [a2 traitCollection];
  LOBYTE(v7) = sub_2157A94B0();

  if (v7)
  {
    v14 = *(a1 + 8);
    v20[3] = MEMORY[0x277D85048];
    v20[4] = MEMORY[0x277D225F8];
    v20[0] = v14;
    v15 = sub_2157A91A0();
    v16 = MEMORY[0x277D228E0];
    v22 = v15;
    v23 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 16, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 56, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 216, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 296, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 336, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 456, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 496, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 416, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 536, v20);
  }

  else
  {
    sub_21578326C(a1 + 96, v20);
    v15 = sub_2157A91A0();
    v16 = MEMORY[0x277D228E0];
    v22 = v15;
    v23 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 296, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 416, v20);
  }

  v22 = v15;
  v23 = v16;
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_2157A91B0();
  sub_2157A8E70();
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2157A8E40();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  return v18;
}

void sub_21579197C()
{
  type metadata accessor for SmallLockupLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_215791AB0(319, &qword_280D2B5E8);
    if (v1 <= 0x3F)
    {
      sub_215791B0C(319, &qword_280D2B5C8, &qword_27CA711B0);
      if (v2 <= 0x3F)
      {
        sub_215791AB0(319, &qword_280D2B5D0);
        if (v3 <= 0x3F)
        {
          sub_215791B0C(319, &qword_280D2B5E0, &qword_27CA71100);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_215791AB0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_215791B0C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2157A9520();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_215791C44()
{
  result = qword_27CA711C0;
  if (!qword_27CA711C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA711C0);
  }

  return result;
}

uint64_t sub_215791C98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_215791CE0()
{
  result = qword_27CA711C8;
  if (!qword_27CA711C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA711C8);
  }

  return result;
}

uint64_t sub_215791D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallLockupLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ASCLayoutProxy.traitEnvironment(with:)(void *a1)
{
  v2 = objc_allocWithZone(sub_2157A91D0());
  v3 = a1;
  return sub_2157A91C0();
}

uint64_t static ASCLayoutProxy.rectWithLayoutDirection(for:in:relativeTo:)(void *a1)
{
  v1 = [a1 traitCollection];
  [v1 layoutDirection];

  return sub_2157A94F0();
}

uint64_t ASCLayoutProxy.alignmentInsets(in:)(uint64_t a1)
{
  sub_21578B2C8(v1 + OBJC_IVAR_____ASCLayoutProxy_base, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711E0);
  if (swift_dynamicCast())
  {
    sub_21571DF08(v6, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v4 + 16))(a1, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    return sub_21579227C(v6);
  }
}

uint64_t sub_21579227C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ASCLayoutProxy.placeChildren(relativeTo:in:)()
{
  v1 = sub_2157A8A50();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR_____ASCLayoutProxy_base), *(v0 + OBJC_IVAR_____ASCLayoutProxy_base + 24));
  sub_2157A9260();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2157925E0()
{
  v0 = sub_2157A8E00();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2157A8E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_27CA73840);
  __swift_project_value_buffer(v4, qword_27CA73840);
  sub_2157A8E10();
  sub_2157A8DF0();
  sub_2157A8DE0();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t ASCLayoutProxy.description.getter()
{
  sub_2157A9550();
  MEMORY[0x216070240](0x756F79614C435341, 0xEF2879786F725074);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711D8);
  sub_2157A9590();
  MEMORY[0x216070240](41, 0xE100000000000000);
  return 0;
}

id ASCLayoutProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCLayoutProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_215792A48(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v9 = objc_allocWithZone(a2);
  sub_21578B2C8(v13, v9 + OBJC_IVAR_____ASCLayoutProxy_base);
  v12.receiver = v9;
  v12.super_class = a2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t sub_215792B04()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = @"small";
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v107 = MEMORY[0x277D839F8];
  v108 = MEMORY[0x277D22A30];
  *&v106 = 0x4024000000000000;
  v8 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v62 = *MEMORY[0x277D22620];
  v61 = v1[13];
  v61(v3);
  v57 = sub_2157A8E90();
  v104 = v57;
  v105 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v103);
  v101 = v0;
  v102 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v100);
  v60 = v1[2];
  v60(boxed_opaque_existential_1, v3, v0);
  v10 = v1 + 2;
  v55 = v8;
  sub_2157A8EA0();
  v59 = v1[1];
  v59(v3, v0);
  v58 = v1 + 1;
  v11 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v12 = v62;
  v13 = v61;
  (v61)(v3, v62, v0);
  v56 = v1 + 13;
  v101 = v57;
  v102 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v100);
  v98 = v0;
  v99 = MEMORY[0x277D22628];
  v14 = __swift_allocate_boxed_opaque_existential_1(&v97);
  v60(v14, v3, v0);
  v15 = v11;
  sub_2157A8EA0();
  v59(v3, v0);
  *v3 = v15;
  v13(v3, v12, v0);
  v16 = v13;
  v17 = v57;
  v98 = v57;
  v99 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v97);
  v95 = v0;
  v96 = MEMORY[0x277D22628];
  v18 = __swift_allocate_boxed_opaque_existential_1(&v94);
  v19 = v60;
  v60(v18, v3, v0);
  v20 = v15;
  sub_2157A8EA0();
  v21 = v59;
  v59(v3, v0);
  *v3 = v20;
  v16(v3, v62, v0);
  v22 = v17;
  v95 = v17;
  v96 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v94);
  v92 = v0;
  v93 = MEMORY[0x277D22628];
  v23 = __swift_allocate_boxed_opaque_existential_1(&v91);
  v19(v23, v3, v0);
  v24 = v20;
  sub_2157A8EA0();
  v21(v3, v0);
  v25 = v21;
  *v3 = v24;
  v26 = v62;
  (v61)(v3, v62, v0);
  v92 = v22;
  v93 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v91);
  v89 = v0;
  v90 = MEMORY[0x277D22628];
  v27 = __swift_allocate_boxed_opaque_existential_1(&v88);
  v60(v27, v3, v0);
  v54 = v10;
  v28 = v24;
  sub_2157A8EA0();
  v25(v3, v0);
  v29 = v55;
  *v3 = v55;
  v30 = v26;
  v31 = v61;
  (v61)(v3, v26, v0);
  v89 = v57;
  v90 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v88);
  v86 = v0;
  v87 = MEMORY[0x277D22628];
  v32 = __swift_allocate_boxed_opaque_existential_1(&v85);
  v33 = v60;
  v60(v32, v3, v0);
  v34 = v29;
  sub_2157A8EA0();
  v35 = v59;
  v59(v3, v0);
  *v3 = v34;
  v31(v3, v30, v0);
  v36 = v57;
  v86 = v57;
  v87 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v85);
  v83 = v0;
  v84 = MEMORY[0x277D22628];
  v37 = __swift_allocate_boxed_opaque_existential_1(&v82);
  v33(v37, v3, v0);
  v38 = v34;
  sub_2157A8EA0();
  v39 = v35;
  v35(v3, v0);
  *v3 = v38;
  v40 = v62;
  (v61)(v3, v62, v0);
  v83 = v36;
  v84 = MEMORY[0x277D22798];
  v55 = __swift_allocate_boxed_opaque_existential_1(&v82);
  v80 = v0;
  v81 = MEMORY[0x277D22628];
  v41 = __swift_allocate_boxed_opaque_existential_1(&v79);
  v60(v41, v3, v0);
  v42 = v38;
  sub_2157A8EA0();
  v39(v3, v0);
  *v3 = v42;
  v43 = v61;
  (v61)(v3, v40, v0);
  v44 = v36;
  v80 = v36;
  v81 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v79);
  v77 = v0;
  v78 = MEMORY[0x277D22628];
  v45 = __swift_allocate_boxed_opaque_existential_1(&v76);
  v46 = v60;
  v60(v45, v3, v0);
  v47 = v42;
  sub_2157A8EA0();
  v59(v3, v0);
  *v3 = v47;
  (v43)(v3, v62, v0);
  v77 = v36;
  v78 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v76);
  v74 = v0;
  v75 = MEMORY[0x277D22628];
  v48 = __swift_allocate_boxed_opaque_existential_1(&v73);
  v46(v48, v3, v0);
  v49 = v47;
  sub_2157A8EA0();
  v50 = v59;
  v59(v3, v0);
  v75 = MEMORY[0x277D22A30];
  v74 = MEMORY[0x277D839F8];
  v72 = MEMORY[0x277D22A30];
  *&v73 = 0x4024000000000000;
  v71 = MEMORY[0x277D839F8];
  v69 = MEMORY[0x277D22A30];
  *&v70 = 0x4014000000000000;
  v68 = MEMORY[0x277D839F8];
  *&v67 = 0x401C000000000000;
  *v3 = v49;
  (v61)(v3, v62, v0);
  v65 = v44;
  v66 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v64);
  v63[3] = v0;
  v63[4] = MEMORY[0x277D22628];
  v51 = __swift_allocate_boxed_opaque_existential_1(v63);
  v46(v51, v3, v0);
  v52 = v49;
  sub_2157A8EA0();
  v50(v3, v0);
  qword_27CA71480 = MEMORY[0x277D839F8];
  qword_27CA71488 = MEMORY[0x277D22A30];
  qword_27CA71468 = 0x4040000000000000;
  qword_27CA714A8 = MEMORY[0x277D839F8];
  qword_27CA714B0 = MEMORY[0x277D22A30];
  qword_27CA71490 = 0x4024000000000000;
  qword_27CA711F0 = *&IconSize;
  unk_27CA711F8 = v7;
  sub_21571DF08(&v106, &unk_27CA71200);
  sub_21571DF08(&v103, &unk_27CA71228);
  sub_21571DF08(&v100, &unk_27CA71250);
  sub_21571DF08(&v97, &unk_27CA71278);
  sub_21571DF08(&v94, &unk_27CA712A0);
  sub_21571DF08(&v91, &unk_27CA712C8);
  sub_21571DF08(&v88, &unk_27CA712F0);
  sub_21571DF08(&v85, &unk_27CA71318);
  sub_21571DF08(&v82, &unk_27CA71340);
  sub_21571DF08(&v79, &unk_27CA71368);
  sub_21571DF08(&v76, &unk_27CA71390);
  xmmword_27CA713B8 = xmmword_2157B3B50;
  sub_21571DF08(&v73, &unk_27CA713C8);
  sub_21571DF08(&v70, &unk_27CA713F0);
  sub_21571DF08(&v67, &unk_27CA71418);
  return sub_21571DF08(&v64, &unk_27CA71440);
}

uint64_t sub_215793468()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A93B0();
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  if (qword_27CA70FA8 != -1)
  {
    swift_once();
  }

  v8 = sub_2157A8B70();
  v9 = __swift_project_value_buffer(v8, qword_27CA714E8);
  v10 = *(v8 - 8);
  v48 = *(v10 + 16);
  v44 = v10 + 16;
  v48(v3, v9, v8);
  v12 = v1 + 13;
  v11 = v1[13];
  v47 = *MEMORY[0x277D22618];
  v13 = v11;
  v11(v3);
  v51 = sub_2157A8E90();
  v72 = v51;
  v73 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v71);
  v69 = v0;
  v70 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
  v15 = v1 + 2;
  v50 = v1[2];
  v50(boxed_opaque_existential_1, v3, v0);
  sub_2157A8EA0();
  v16 = v1[1];
  v49 = v1 + 1;
  v45 = v16;
  v16(v3, v0);
  if (qword_27CA70F98 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v8, qword_27CA714B8);
  v48(v3, v43, v8);
  v46 = v13;
  v13(v3, v47, v0);
  v69 = v51;
  v70 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v68);
  v66 = v0;
  v67 = MEMORY[0x277D22628];
  v17 = __swift_allocate_boxed_opaque_existential_1(&v65);
  v18 = v50;
  v50(v17, v3, v0);
  sub_2157A8EA0();
  v19 = v45;
  v45(v3, v0);
  v41 = v8;
  v48(v3, v43, v8);
  v43 = v12;
  v20 = v46;
  v46(v3, v47, v0);
  v66 = v51;
  v21 = MEMORY[0x277D22798];
  v67 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v65);
  v63 = v0;
  v64 = MEMORY[0x277D22628];
  v22 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v42 = v15;
  v18(v22, v3, v0);
  sub_2157A8EA0();
  v19(v3, v0);
  if (qword_27CA70FA0 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v40 = __swift_project_value_buffer(v41, qword_27CA714D0);
  v24 = v48;
  v48(v3, v40, v23);
  v25 = v47;
  v20(v3, v47, v0);
  v63 = v51;
  v64 = v21;
  __swift_allocate_boxed_opaque_existential_1(&v62);
  v26 = v21;
  v60 = v0;
  v61 = MEMORY[0x277D22628];
  v27 = __swift_allocate_boxed_opaque_existential_1(&v59);
  v50(v27, v3, v0);
  sub_2157A8EA0();
  v28 = v45;
  v45(v3, v0);
  v24(v3, v40, v23);
  v29 = v46;
  v46(v3, v25, v0);
  v30 = v51;
  v60 = v51;
  v61 = v26;
  __swift_allocate_boxed_opaque_existential_1(&v59);
  v57 = v0;
  v58 = MEMORY[0x277D22628];
  v31 = __swift_allocate_boxed_opaque_existential_1(&v56);
  v32 = v50;
  v50(v31, v3, v0);
  sub_2157A8EA0();
  v28(v3, v0);
  v33 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  LODWORD(v48) = *MEMORY[0x277D22620];
  v29(v3);
  v57 = v30;
  v58 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v56);
  v54 = v0;
  v55 = MEMORY[0x277D22628];
  v34 = __swift_allocate_boxed_opaque_existential_1(&v53);
  v32(v34, v3, v0);
  v35 = v33;
  sub_2157A8EA0();
  v28(v3, v0);
  *v3 = v35;
  v46(v3, v48, v0);
  v54 = v51;
  v55 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v53);
  v52[3] = v0;
  v52[4] = MEMORY[0x277D22628];
  v36 = __swift_allocate_boxed_opaque_existential_1(v52);
  v50(v36, v3, v0);
  v37 = v35;
  sub_2157A8EA0();
  v28(v3, v0);
  qword_27CA73858 = *&IconSize;
  unk_27CA73860 = v7;
  sub_21571DF08(&v71, &unk_27CA73868);
  sub_21571DF08(&v68, &unk_27CA73890);
  sub_21571DF08(&v65, &unk_27CA738B8);
  sub_21571DF08(&v62, &unk_27CA738F0);
  sub_21571DF08(&v59, &unk_27CA73918);
  sub_21571DF08(&v56, &unk_27CA73940);
  result = sub_21571DF08(&v53, &unk_27CA73968);
  qword_27CA738E0 = 2;
  byte_27CA738E8 = 0;
  return result;
}

unint64_t sub_215793DD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v53 = a3;
  v51 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v51);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2157A8B50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v48 - v14;
  MEMORY[0x28223BE20](v15);
  v55 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 > 1)
  {
    sub_2157A8B30();
  }

  else
  {
    sub_2157A8B60();
  }

  v25 = *(v9 + 56);
  v25(v22, 0, 1, v8);
  v26 = v55;
  v27 = a1;
  v28 = v53;
  sub_215787E04(a2, v53, v27, v55);
  sub_215798C18(v26, v54, type metadata accessor for LockupMediaLayout.DisplayType);
  result = sub_215788950(a2, v28, 0, 1);
  if (result >> 62)
  {
    v33 = result;
    v34 = sub_2157A95B0();
    result = v33;
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_11:

    v32 = v49;
    sub_2157A8B60();
    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x2160703B0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v30 = *(result + 32);
  }

  v31 = v30;

  [v31 width];
  [v31 height];
  v32 = v49;
  sub_2157A8B60();

LABEL_12:
  sub_215787230(v22, v19);
  v35 = v51;
  v36 = *(v51 + 24);
  v25(&v7[v36], 1, 1, v8);
  v37 = v35;
  v38 = v54;
  sub_215798C18(v54, v7, type metadata accessor for LockupMediaLayout.DisplayType);
  (*(v9 + 16))(&v7[*(v37 + 20)], v32, v8);
  sub_215798C80(v19, &v7[v36]);
  if ([objc_opt_self() isMainThread])
  {
    v39 = [objc_opt_self() mainScreen];
    [v39 bounds];
    v41 = v40;
    v43 = v42;

    sub_215798CF0(v19);
    (*(v9 + 8))(v32, v8);
    sub_215798BB8(v38, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v55, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798CF0(v22);
    v44 = &v7[*(v37 + 28)];
    *v44 = v41;
    *(v44 + 1) = v43;
  }

  else
  {
    sub_215798CF0(v19);
    (*(v9 + 8))(v32, v8);
    sub_215798BB8(v38, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v55, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798CF0(v22);
    v45 = &v7[*(v37 + 28)];
    *v45 = 0;
    *(v45 + 1) = 0;
  }

  v46 = v52;
  sub_215798D58(v7, v52, type metadata accessor for LockupMediaLayout.Metrics);
  v47 = v50;
  sub_215787C6C(v50);
  return sub_215798DC0(v47, v46);
}

id static ASCLayoutProxy.lockupMediaSizingLayout(for:screenshots:trailers:containerView:mediaViews:)(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v11 = type metadata accessor for LockupMediaLayout(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24.receiver - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215793DD0(a1, a2, a3, v16);
  sub_215798C18(v16, v13 + *(v11 + 24), type metadata accessor for LockupMediaLayout.Metrics);
  v17 = sub_215788D28(0, &qword_280D2B5B0);
  v18 = MEMORY[0x277D22A58];
  v13[3] = v17;
  v13[4] = v18;
  *v13 = a4;
  v19 = a4;
  v13[5] = sub_2157945B4(a5);
  v25[3] = v11;
  v25[4] = sub_215795CF8(&qword_27CA71518);
  v25[5] = sub_215795CF8(&qword_27CA71520);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_215798C18(v13, boxed_opaque_existential_1, type metadata accessor for LockupMediaLayout);
  v21 = objc_allocWithZone(v5);
  sub_21578B2C8(v25, v21 + OBJC_IVAR_____ASCLayoutProxy_base);
  v24.receiver = v21;
  v24.super_class = v5;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  sub_215798BB8(v16, type metadata accessor for LockupMediaLayout.Metrics);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_215798BB8(v13, type metadata accessor for LockupMediaLayout);
  return v22;
}

void *sub_2157945B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2157A95B0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_2157955A4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x277D22A58];
      do
      {
        v7 = MEMORY[0x2160703B0](v5, a1);
        v19 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_2157955A4((v8 > 1), v9 + 1, 1);
          v3 = v19;
        }

        ++v5;
        v17 = sub_215788D28(0, &qword_280D2B5B0);
        v18 = v6;
        *&v16 = v7;
        *(v3 + 16) = v9 + 1;
        sub_21571DF08(&v16, v3 + 40 * v9 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = MEMORY[0x277D22A58];
      do
      {
        v12 = *v10;
        v19 = v3;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        v15 = v12;
        if (v14 >= v13 >> 1)
        {
          sub_2157955A4((v13 > 1), v14 + 1, 1);
          v3 = v19;
        }

        v17 = sub_215788D28(0, &qword_280D2B5B0);
        v18 = v11;
        *&v16 = v15;
        *(v3 + 16) = v14 + 1;
        sub_21571DF08(&v16, v3 + 40 * v14 + 32);
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

double static ASCLayoutProxy.lockupMediaPreferredMediaSize(fitting:for:with:and:in:)(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v12 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215793DD0(a1, a2, a3, v14);
  v15 = sub_2157872A0(v14, a4, a5, a6);
  sub_215798BB8(v14, type metadata accessor for LockupMediaLayout.Metrics);
  return v15;
}

uint64_t sub_215794EB4()
{
  v0 = sub_2157A8B70();
  __swift_allocate_value_buffer(v0, qword_27CA714D0);
  v1 = __swift_project_value_buffer(v0, qword_27CA714D0);
  v2 = *MEMORY[0x277D74410];
  *v1 = 0xD000000000000010;
  v1[1] = 0x80000002157B7D60;
  v1[2] = j___s18AppStoreComponents14ASCLayoutProxyC31lockupSubtitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0;
  v1[3] = 0;
  v1[4] = v2;
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_215794FF8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2157A8B70();
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  v11 = *a3;
  *v10 = 0x70756B636F4C6461;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = 0;
  v10[4] = v11;
  v12 = *(*(v9 - 8) + 104);

  return v12();
}

uint64_t sub_2157950FC()
{
  v0 = sub_2157A8B70();
  __swift_allocate_value_buffer(v0, qword_27CA71500);
  v1 = __swift_project_value_buffer(v0, qword_27CA71500);
  v2 = *MEMORY[0x277D74418];
  *v1 = 0xD000000000000019;
  v1[1] = 0x80000002157B7D80;
  v1[2] = j___s18AppStoreComponents14ASCLayoutProxyC42adTransparencyButtonTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0;
  v1[3] = 0;
  v1[4] = v2;
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

double static ASCLayoutProxy.adTransparencyButtonScaledCapInset(_:in:)()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CA70FB0 != -1)
  {
    swift_once();
  }

  v4 = sub_2157A8B70();
  v5 = __swift_project_value_buffer(v4, qword_27CA71500);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v11[3] = v0;
  v11[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_2157A89B0();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

void *sub_2157955A4(void *a1, int64_t a2, char a3)
{
  result = sub_2157955C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2157955C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_21579570C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2160703B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21579578C;
  }

  __break(1u);
  return result;
}

id sub_215795794(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  if (qword_27CA70F88 != -1)
  {
    swift_once();
  }

  sub_215782FEC(&qword_27CA711F0, v70);
  v69 = a1;
  v18 = MEMORY[0x277D22A68];
  if (a2)
  {
    v57 = sub_215788D28(0, &qword_280D2B5A8);
    v56 = MEMORY[0x277D22A68];
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v19 = sub_215788D28(0, &qword_280D2B5A8);
  v20 = v19;
  v67 = v19;
  v68 = v18;
  v65 = v18;
  *&v66 = a3;
  if (a5)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (a5)
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v54 = v22;
  v55 = v21;
  v64 = v19;
  *&v63 = a4;
  v23 = sub_215788D28(0, &qword_280D2B5B0);
  v61 = v23;
  v62 = MEMORY[0x277D22A58];
  *&v60 = a6;
  if (a7)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a7)
  {
    v25 = MEMORY[0x277D22A58];
  }

  else
  {
    v25 = 0;
  }

  v48 = v25;
  v49 = v24;
  if (a8)
  {
    v26 = v18;
  }

  else
  {
    v26 = 0;
  }

  if (a8)
  {
    v27 = v20;
  }

  else
  {
    v27 = 0;
  }

  if (a10)
  {
    v28 = MEMORY[0x277D22A58];
  }

  else
  {
    v28 = 0;
  }

  v52 = v26;
  v53 = v28;
  if (a10)
  {
    v29 = v23;
  }

  else
  {
    v29 = 0;
  }

  v101 = v20;
  if (a9)
  {
    v30 = MEMORY[0x277D22A58];
  }

  else
  {
    v30 = 0;
  }

  v50 = v30;
  v51 = v29;
  if (a9)
  {
    v31 = v23;
  }

  else
  {
    v31 = 0;
  }

  v46 = v31;
  v47 = v27;
  v102 = v18;
  v100 = a11;
  sub_215782FEC(v70, v71);
  v32 = a9;
  v33 = a11;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a10;
  sub_2157A8AB0();
  sub_215783140(v70);
  v72 = a2;
  v73 = 0u;
  v74 = v57;
  v75 = v56;
  sub_21571DF08(&v66, &v76);
  sub_21571DF08(&v63, v77);
  *&v77[40] = 0u;
  v78 = 0u;
  v79 = 0;
  v80 = a5;
  v81 = 0u;
  v82 = v55;
  v83 = v54;
  sub_21571DF08(&v60, v84);
  v84[5] = a7;
  v85 = 0u;
  v86 = v49;
  v87 = v48;
  v88 = a8;
  v89 = 0u;
  v90 = v47;
  v91 = v52;
  v92 = a10;
  v93 = 0u;
  v94 = v51;
  v95 = v53;
  v96 = a9;
  v97 = 0u;
  v98 = v46;
  v99 = v50;
  v70[3] = &type metadata for AdLockupLayout;
  v70[4] = sub_215798E24();
  v70[5] = sub_215798E78();
  v70[0] = swift_allocObject();
  sub_215798ECC(v71, v70[0] + 16);
  v42 = type metadata accessor for ASCLayoutProxy();
  v43 = objc_allocWithZone(v42);
  sub_21578B2C8(v70, v43 + OBJC_IVAR_____ASCLayoutProxy_base);
  v59.receiver = v43;
  v59.super_class = v42;
  v44 = objc_msgSendSuper2(&v59, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_215798F28(v71);
  return v44;
}

uint64_t _s18AppStoreComponents14ASCLayoutProxyC32numberOfViewsInLockupMediaLayout3for4with3andSiSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgtFZ_0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_215787E04(a2, a3, a1, &v15 - v10);
  sub_215798D58(v11, v8, type metadata accessor for LockupMediaLayout.DisplayType);
  v12 = sub_2157A8B50();
  v13 = (*(*(v12 - 8) + 48))(v8, 10, v12);
  if (v13 <= 4)
  {
    if (v13 <= 1)
    {
      if (!v13)
      {
        sub_215798BB8(v8, type metadata accessor for LockupMediaLayout.DisplayType);
      }
    }

    else
    {
      if (v13 == 2)
      {
        return 2;
      }

      if (v13 == 3)
      {
        return 3;
      }
    }

    return 1;
  }

  if (v13 > 7)
  {
    if (v13 == 8)
    {
      return 5;
    }

    else if (v13 == 9)
    {
      return 7;
    }

    else
    {
      return 4;
    }
  }

  else if (v13 == 5)
  {
    return 0;
  }

  else if (v13 == 6)
  {
    return 9;
  }

  else
  {
    return 14;
  }
}

uint64_t sub_215795CF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LockupMediaLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t _s18AppStoreComponents14ASCLayoutProxyC17lockupMediaLayout3for11screenshots8trailers13containerView10mediaViewsACSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgSo6UIViewCSayATGtFZ_0(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v68 = a4;
  v69 = a5;
  v70 = a1;
  v67 = type metadata accessor for LockupMediaLayout(0);
  MEMORY[0x28223BE20](v67);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2157A8B50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  v63 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v63);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v66 = &v61 - v27;
  v64 = v9;
  v28 = v22;
  v29 = v22;
  v30 = v8;
  v62 = *(v9 + 56);
  v62(v29, 1, 1, v8, v26);
  sub_215787E04(a2, a3, v70, v16);
  v61 = v16;
  v70 = v13;
  sub_215798C18(v16, v13, type metadata accessor for LockupMediaLayout.DisplayType);
  result = sub_215788950(a2, a3, 0, 1);
  if (result >> 62)
  {
    v60 = result;
    v32 = sub_2157A95B0();
    result = v60;
  }

  else
  {
    v32 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v71;
  v34 = v8;
  v35 = v28;
  if (v32)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x2160703B0](0);
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v36 = *(result + 32);
    }

    v37 = v36;

    [v37 width];
    [v37 height];
    sub_2157A8B60();
  }

  else
  {

    sub_2157A8B60();
  }

  sub_215787230(v28, v19);
  v38 = v63;
  v39 = *(v63 + 24);
  (v62)(&v24[v39], 1, 1, v30);
  v40 = v70;
  sub_215798C18(v70, v24, type metadata accessor for LockupMediaLayout.DisplayType);
  v41 = v64;
  (*(v64 + 16))(&v24[*(v38 + 20)], v33, v34);
  sub_215798C80(v19, &v24[v39]);
  if ([objc_opt_self() isMainThread])
  {
    v42 = [objc_opt_self() mainScreen];
    [v42 bounds];
    v44 = v43;
    v46 = v45;

    sub_215798CF0(v19);
    (*(v41 + 8))(v33, v34);
    sub_215798BB8(v40, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v61, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798CF0(v35);
    v47 = &v24[*(v38 + 28)];
    *v47 = v44;
    *(v47 + 1) = v46;
  }

  else
  {
    sub_215798CF0(v19);
    (*(v41 + 8))(v33, v34);
    sub_215798BB8(v40, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v61, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798CF0(v35);
    v48 = &v24[*(v38 + 28)];
    *v48 = 0;
    *(v48 + 1) = 0;
  }

  v49 = v66;
  sub_215798D58(v24, v66, type metadata accessor for LockupMediaLayout.Metrics);
  v50 = v67;
  v51 = v65;
  sub_215798C18(v49, &v65[*(v67 + 24)], type metadata accessor for LockupMediaLayout.Metrics);
  v52 = sub_215788D28(0, &qword_280D2B5B0);
  v53 = MEMORY[0x277D22A58];
  v51[3] = v52;
  v51[4] = v53;
  v54 = v68;
  *v51 = v68;
  v55 = v54;
  v51[5] = sub_2157945B4(v69);
  v73[3] = v50;
  v73[4] = sub_215795CF8(&qword_27CA71518);
  v73[5] = sub_215795CF8(&qword_27CA71520);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  sub_215798C18(v51, boxed_opaque_existential_1, type metadata accessor for LockupMediaLayout);
  v57 = type metadata accessor for ASCLayoutProxy();
  v58 = objc_allocWithZone(v57);
  sub_21578B2C8(v73, v58 + OBJC_IVAR_____ASCLayoutProxy_base);
  v72.receiver = v58;
  v72.super_class = v57;
  v59 = objc_msgSendSuper2(&v72, sel_init);
  sub_215798BB8(v49, type metadata accessor for LockupMediaLayout.Metrics);
  __swift_destroy_boxed_opaque_existential_1(v73);
  sub_215798BB8(v51, type metadata accessor for LockupMediaLayout);
  return v59;
}

unint64_t _s18AppStoreComponents14ASCLayoutProxyC25estimatedMediaContentSize3for11screenshots8trailers7fitting2inSo6CGSizeVSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgAKSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v66 = a4;
  v11 = sub_2157A8B50();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v71);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v60 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v60 - v32;
  sub_215787E04(a2, a3, a1, v30);
  sub_215787C6C(v33);
  sub_215798BB8(v30, type metadata accessor for LockupMediaLayout.DisplayType);
  v64 = v12;
  v34 = *(v12 + 56);
  v67 = v21;
  v35 = v21;
  v36 = v11;
  v37 = v11;
  v38 = v34;
  v34(v35, 1, 1, v37);
  v63 = v33;
  sub_215787C6C(v27);
  v61 = v27;
  v62 = v24;
  sub_215798C18(v27, v24, type metadata accessor for LockupMediaLayout.DisplayType);
  result = sub_215788950(a2, a3, 0, 1);
  if (result >> 62)
  {
    v59 = result;
    v40 = sub_2157A95B0();
    result = v59;
  }

  else
  {
    v40 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v71;
  v42 = v36;
  v43 = v69;
  if (v40)
  {
    v44 = v67;
    if ((result & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x2160703B0](0);
      v45 = v70;
      v46 = v68;
    }

    else
    {
      v45 = v70;
      v46 = v68;
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v47 = *(result + 32);
    }

    [v47 width];
    [v47 height];
    sub_2157A8B60();
  }

  else
  {

    v45 = v70;
    sub_2157A8B60();
    v44 = v67;
    v46 = v68;
  }

  sub_215787230(v44, v43);
  v48 = v41[6];
  v38(v46 + v48, 1, 1, v42);
  v49 = v62;
  sub_215798C18(v62, v46, type metadata accessor for LockupMediaLayout.DisplayType);
  v50 = v64;
  (*(v64 + 16))(v46 + v41[5], v45, v42);
  sub_215798C80(v43, v46 + v48);
  if ([objc_opt_self() isMainThread])
  {
    v51 = [objc_opt_self() mainScreen];
    [v51 bounds];
    v53 = v52;
    v55 = v54;

    sub_215798CF0(v43);
    (*(v50 + 8))(v45, v42);
    sub_215798BB8(v49, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v61, type metadata accessor for LockupMediaLayout.DisplayType);
    v56 = (v46 + v41[7]);
    *v56 = v53;
    v56[1] = v55;
  }

  else
  {
    sub_215798CF0(v43);
    (*(v50 + 8))(v45, v42);
    sub_215798BB8(v49, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v61, type metadata accessor for LockupMediaLayout.DisplayType);
    v57 = (v46 + v41[7]);
    *v57 = 0;
    v57[1] = 0;
  }

  v58 = v65;
  sub_215798D58(v46, v65, type metadata accessor for LockupMediaLayout.Metrics);
  sub_215785944(v58, v66, a5, a6);
  sub_215798BB8(v58, type metadata accessor for LockupMediaLayout.Metrics);
  sub_215798CF0(v44);
  return sub_215798BB8(v63, type metadata accessor for LockupMediaLayout.DisplayType);
}

unint64_t _s18AppStoreComponents14ASCLayoutProxyC26containerViewRotationAngle3for11screenshots8trailers12CoreGraphics7CGFloatVSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgtFZ_0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  sub_215787E04(a2, a3, a1, v11);
  sub_215787C6C(v14);
  sub_215798BB8(v11, type metadata accessor for LockupMediaLayout.DisplayType);
  result = sub_215788950(a2, a3, 0, 1);
  if (result >> 62)
  {
    v18 = result;
    v19 = sub_2157A95B0();
    result = v18;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2160703B0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(result + 32);
  }

  v17 = v16;

  [v17 isPortrait];

LABEL_9:
  sub_215798D58(v14, v8, type metadata accessor for LockupMediaLayout.DisplayType);
  v20 = sub_2157A8B50();
  result = (*(*(v20 - 8) + 48))(v8, 10, v20);
  if (result != 7 && result != 6)
  {
    return sub_215798BB8(v8, type metadata accessor for LockupMediaLayout.DisplayType);
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC13layoutMargins3for014existingLayoutG0So12UIEdgeInsetsVSo16ASCLockupContextaSg_AHtFZ_0(void *a1, double a2)
{
  if (!a1)
  {
    return a2;
  }

  v4 = sub_2157A93E0();
  v6 = v5;
  if (v4 == sub_2157A93E0() && v6 == v7)
  {
    v21 = a1;
    goto LABEL_16;
  }

  v9 = sub_2157A95F0();
  v10 = a1;

  if (v9)
  {
LABEL_17:
    a2 = *MEMORY[0x277D768C8];

    return a2;
  }

  v11 = sub_2157A93E0();
  v13 = v12;
  if (v11 == sub_2157A93E0() && v13 == v14)
  {
LABEL_16:

    goto LABEL_17;
  }

  v16 = sub_2157A95F0();

  if (v16)
  {
    goto LABEL_17;
  }

  v17 = sub_2157A93E0();
  v19 = v18;
  if (v17 == sub_2157A93E0() && v19 == v20)
  {
  }

  else
  {
    v23 = sub_2157A95F0();

    if ((v23 & 1) == 0)
    {

      return a2;
    }
  }

  v24 = [objc_opt_self() currentDevice];
  [v24 userInterfaceIdiom];

  return a2;
}

double _s18AppStoreComponents14ASCLayoutProxyC28lockupTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0()
{
  v0 = sub_2157A93E0();
  v2 = v1;
  if (v0 == sub_2157A93E0() && v2 == v3)
  {

    return 19.0;
  }

  else
  {
    v5 = sub_2157A95F0();

    result = 19.0;
    if ((v5 & 1) == 0)
    {
      v7 = sub_2157A93E0();
      v9 = v8;
      if (v7 == sub_2157A93E0() && v9 == v10)
      {

        return 20.0;
      }

      v12 = sub_2157A95F0();

      result = 20.0;
      if ((v12 & 1) == 0)
      {
        v13 = sub_2157A93E0();
        v15 = v14;
        if (v13 == sub_2157A93E0() && v15 == v16)
        {

          return 21.0;
        }

        v17 = sub_2157A95F0();

        result = 21.0;
        if ((v17 & 1) == 0)
        {
          v18 = sub_2157A93E0();
          v20 = v19;
          if (v18 == sub_2157A93E0() && v20 == v21)
          {

            return 22.0;
          }

          v22 = sub_2157A95F0();

          result = 22.0;
          if ((v22 & 1) == 0)
          {
            v23 = sub_2157A93E0();
            v25 = v24;
            if (v23 == sub_2157A93E0() && v25 == v26)
            {

              return 24.0;
            }

            v27 = sub_2157A95F0();

            result = 24.0;
            if ((v27 & 1) == 0)
            {
              v28 = sub_2157A93E0();
              v30 = v29;
              if (v28 == sub_2157A93E0() && v30 == v31)
              {

                return 26.0;
              }

              v32 = sub_2157A95F0();

              result = 26.0;
              if ((v32 & 1) == 0)
              {
                v33 = sub_2157A93E0();
                v35 = v34;
                if (v33 == sub_2157A93E0() && v35 == v36)
                {

                  return 28.0;
                }

                v37 = sub_2157A95F0();

                result = 28.0;
                if ((v37 & 1) == 0)
                {
                  v38 = sub_2157A93E0();
                  v40 = v39;
                  if (v38 == sub_2157A93E0() && v40 == v41)
                  {

                    return 34.0;
                  }

                  v42 = sub_2157A95F0();

                  if (v42)
                  {
                    return 34.0;
                  }

                  v43 = sub_2157A93E0();
                  v45 = v44;
                  if (v43 == sub_2157A93E0() && v45 == v46)
                  {
                    goto LABEL_52;
                  }

                  v47 = sub_2157A95F0();

                  if (v47)
                  {
                    return 36.0;
                  }

                  v48 = sub_2157A93E0();
                  v50 = v49;
                  if (v48 == sub_2157A93E0() && v50 == v51)
                  {
                    goto LABEL_52;
                  }

                  v52 = sub_2157A95F0();

                  if (v52)
                  {
                    return 36.0;
                  }

                  v53 = sub_2157A93E0();
                  v55 = v54;
                  if (v53 == sub_2157A93E0() && v55 == v56)
                  {
                    goto LABEL_52;
                  }

                  v57 = sub_2157A95F0();

                  if (v57)
                  {
                    return 36.0;
                  }

                  v58 = sub_2157A93E0();
                  v60 = v59;
                  if (v58 == sub_2157A93E0() && v60 == v61)
                  {
LABEL_52:

                    return 36.0;
                  }

                  v62 = sub_2157A95F0();

                  result = 36.0;
                  if ((v62 & 1) == 0)
                  {
                    return 22.0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC31lockupSubtitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0()
{
  v0 = sub_2157A93E0();
  v2 = v1;
  if (v0 == sub_2157A93E0() && v2 == v3)
  {

    return 13.0;
  }

  v5 = sub_2157A95F0();

  result = 13.0;
  if ((v5 & 1) == 0)
  {
    v7 = sub_2157A93E0();
    v9 = v8;
    if (v7 == sub_2157A93E0() && v9 == v10)
    {

      return 14.0;
    }

    v12 = sub_2157A95F0();

    result = 14.0;
    if ((v12 & 1) == 0)
    {
      v13 = sub_2157A93E0();
      v15 = v14;
      if (v13 == sub_2157A93E0() && v15 == v16)
      {

        return 15.0;
      }

      v17 = sub_2157A95F0();

      result = 15.0;
      if ((v17 & 1) == 0)
      {
        v18 = sub_2157A93E0();
        v20 = v19;
        if (v18 == sub_2157A93E0() && v20 == v21)
        {

          return 16.0;
        }

        v22 = sub_2157A95F0();

        result = 16.0;
        if ((v22 & 1) == 0)
        {
          v23 = sub_2157A93E0();
          v25 = v24;
          if (v23 == sub_2157A93E0() && v25 == v26)
          {

            return 18.0;
          }

          v27 = sub_2157A95F0();

          result = 18.0;
          if ((v27 & 1) == 0)
          {
            v28 = sub_2157A93E0();
            v30 = v29;
            if (v28 == sub_2157A93E0() && v30 == v31)
            {

              return 20.0;
            }

            v32 = sub_2157A95F0();

            result = 20.0;
            if ((v32 & 1) == 0)
            {
              v33 = sub_2157A93E0();
              v35 = v34;
              if (v33 == sub_2157A93E0() && v35 == v36)
              {

                return 22.0;
              }

              v37 = sub_2157A95F0();

              result = 22.0;
              if ((v37 & 1) == 0)
              {
                v38 = sub_2157A93E0();
                v40 = v39;
                if (v38 == sub_2157A93E0() && v40 == v41)
                {
                  goto LABEL_36;
                }

                v42 = sub_2157A95F0();

                if (v42)
                {
                  return 24.0;
                }

                v43 = sub_2157A93E0();
                v45 = v44;
                if (v43 != sub_2157A93E0() || v45 != v46)
                {
                  v47 = sub_2157A95F0();

                  if (v47)
                  {
                    return 24.0;
                  }

                  v48 = sub_2157A93E0();
                  v50 = v49;
                  if (v48 == sub_2157A93E0() && v50 == v51)
                  {
                    goto LABEL_36;
                  }

                  v52 = sub_2157A95F0();

                  if (v52)
                  {
                    return 24.0;
                  }

                  v53 = sub_2157A93E0();
                  v55 = v54;
                  if (v53 == sub_2157A93E0() && v55 == v56)
                  {
                    goto LABEL_36;
                  }

                  v57 = sub_2157A95F0();

                  if (v57)
                  {
                    return 24.0;
                  }

                  v58 = sub_2157A93E0();
                  v60 = v59;
                  if (v58 != sub_2157A93E0() || v60 != v61)
                  {
                    v62 = sub_2157A95F0();

                    result = 16.0;
                    if (v62)
                    {
                      return 24.0;
                    }

                    return result;
                  }
                }

LABEL_36:

                return 24.0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC30lockupHeadingPointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0()
{
  v0 = sub_2157A93E0();
  v2 = v1;
  if (v0 == sub_2157A93E0() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = sub_2157A95F0();

  result = 12.0;
  if (v5)
  {
    return result;
  }

  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {
    goto LABEL_13;
  }

  v12 = sub_2157A95F0();

  if (v12)
  {
    return 12.0;
  }

  v13 = sub_2157A93E0();
  v15 = v14;
  if (v13 == sub_2157A93E0() && v15 == v16)
  {
LABEL_13:

    return 12.0;
  }

  v17 = sub_2157A95F0();

  result = 12.0;
  if ((v17 & 1) == 0)
  {
    v18 = sub_2157A93E0();
    v20 = v19;
    if (v18 == sub_2157A93E0() && v20 == v21)
    {

      return 13.0;
    }

    v22 = sub_2157A95F0();

    result = 13.0;
    if ((v22 & 1) == 0)
    {
      v23 = sub_2157A93E0();
      v25 = v24;
      if (v23 == sub_2157A93E0() && v25 == v26)
      {

        return 15.0;
      }

      v27 = sub_2157A95F0();

      result = 15.0;
      if ((v27 & 1) == 0)
      {
        v28 = sub_2157A93E0();
        v30 = v29;
        if (v28 == sub_2157A93E0() && v30 == v31)
        {

          return 17.0;
        }

        v32 = sub_2157A95F0();

        result = 17.0;
        if ((v32 & 1) == 0)
        {
          v33 = sub_2157A93E0();
          v35 = v34;
          if (v33 == sub_2157A93E0() && v35 == v36)
          {

            return 19.0;
          }

          v37 = sub_2157A95F0();

          result = 19.0;
          if ((v37 & 1) == 0)
          {
            v38 = sub_2157A93E0();
            v40 = v39;
            if (v38 == sub_2157A93E0() && v40 == v41)
            {
              goto LABEL_35;
            }

            v42 = sub_2157A95F0();

            if (v42)
            {
              return 22.0;
            }

            v43 = sub_2157A93E0();
            v45 = v44;
            if (v43 == sub_2157A93E0() && v45 == v46)
            {
              goto LABEL_35;
            }

            v47 = sub_2157A95F0();

            if (v47)
            {
              return 22.0;
            }

            v48 = sub_2157A93E0();
            v50 = v49;
            if (v48 == sub_2157A93E0() && v50 == v51)
            {
              goto LABEL_35;
            }

            v52 = sub_2157A95F0();

            if (v52)
            {
              return 22.0;
            }

            v53 = sub_2157A93E0();
            v55 = v54;
            if (v53 == sub_2157A93E0() && v55 == v56)
            {
              goto LABEL_35;
            }

            v57 = sub_2157A95F0();

            if (v57)
            {
              return 22.0;
            }

            v58 = sub_2157A93E0();
            v60 = v59;
            if (v58 == sub_2157A93E0() && v60 == v61)
            {
LABEL_35:

              return 22.0;
            }

            v62 = sub_2157A95F0();

            result = 13.0;
            if (v62)
            {
              return 22.0;
            }
          }
        }
      }
    }
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC42adTransparencyButtonTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0()
{
  v0 = sub_2157A93E0();
  v2 = v1;
  if (v0 == sub_2157A93E0() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = sub_2157A95F0();

  result = 11.0;
  if (v5)
  {
    return result;
  }

  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {
    goto LABEL_13;
  }

  v12 = sub_2157A95F0();

  if (v12)
  {
    return 11.0;
  }

  v13 = sub_2157A93E0();
  v15 = v14;
  if (v13 == sub_2157A93E0() && v15 == v16)
  {
    goto LABEL_13;
  }

  v17 = sub_2157A95F0();

  if (v17)
  {
    return 11.0;
  }

  v18 = sub_2157A93E0();
  v20 = v19;
  if (v18 == sub_2157A93E0() && v20 == v21)
  {
LABEL_13:

    return 11.0;
  }

  v22 = sub_2157A95F0();

  result = 11.0;
  if ((v22 & 1) == 0)
  {
    v23 = sub_2157A93E0();
    v25 = v24;
    if (v23 == sub_2157A93E0() && v25 == v26)
    {

      return 13.0;
    }

    v27 = sub_2157A95F0();

    result = 13.0;
    if ((v27 & 1) == 0)
    {
      v28 = sub_2157A93E0();
      v30 = v29;
      if (v28 == sub_2157A93E0() && v30 == v31)
      {

        return 15.0;
      }

      v32 = sub_2157A95F0();

      result = 15.0;
      if ((v32 & 1) == 0)
      {
        v33 = sub_2157A93E0();
        v35 = v34;
        if (v33 == sub_2157A93E0() && v35 == v36)
        {

          return 17.0;
        }

        v37 = sub_2157A95F0();

        result = 17.0;
        if ((v37 & 1) == 0)
        {
          v38 = sub_2157A93E0();
          v40 = v39;
          if (v38 == sub_2157A93E0() && v40 == v41)
          {

            return 20.0;
          }

          v42 = sub_2157A95F0();

          result = 20.0;
          if ((v42 & 1) == 0)
          {
            v43 = sub_2157A93E0();
            v45 = v44;
            if (v43 == sub_2157A93E0() && v45 == v46)
            {

              return 24.0;
            }

            v47 = sub_2157A95F0();

            result = 24.0;
            if ((v47 & 1) == 0)
            {
              v48 = sub_2157A93E0();
              v50 = v49;
              if (v48 == sub_2157A93E0() && v50 == v51)
              {
                goto LABEL_42;
              }

              v52 = sub_2157A95F0();

              if (v52)
              {
                return 27.0;
              }

              v53 = sub_2157A93E0();
              v55 = v54;
              if (v53 == sub_2157A93E0() && v55 == v56)
              {
                goto LABEL_42;
              }

              v57 = sub_2157A95F0();

              if (v57)
              {
                return 27.0;
              }

              v58 = sub_2157A93E0();
              v60 = v59;
              if (v58 == sub_2157A93E0() && v60 == v61)
              {
LABEL_42:

                return 27.0;
              }

              v62 = sub_2157A95F0();

              result = 11.0;
              if (v62)
              {
                return 27.0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC44adTransparencyDeveloperNamePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0()
{
  v0 = sub_2157A93E0();
  v2 = v1;
  if (v0 == sub_2157A93E0() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = sub_2157A95F0();

  result = 11.0;
  if (v5)
  {
    return result;
  }

  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {
    goto LABEL_13;
  }

  v12 = sub_2157A95F0();

  if (v12)
  {
    return 11.0;
  }

  v13 = sub_2157A93E0();
  v15 = v14;
  if (v13 == sub_2157A93E0() && v15 == v16)
  {
LABEL_13:

    return 11.0;
  }

  v17 = sub_2157A95F0();

  result = 11.0;
  if ((v17 & 1) == 0)
  {
    v18 = sub_2157A93E0();
    v20 = v19;
    if (v18 == sub_2157A93E0() && v20 == v21)
    {

      return 12.0;
    }

    v22 = sub_2157A95F0();

    result = 12.0;
    if ((v22 & 1) == 0)
    {
      v23 = sub_2157A93E0();
      v25 = v24;
      if (v23 == sub_2157A93E0() && v25 == v26)
      {

        return 14.0;
      }

      v27 = sub_2157A95F0();

      result = 14.0;
      if ((v27 & 1) == 0)
      {
        v28 = sub_2157A93E0();
        v30 = v29;
        if (v28 == sub_2157A93E0() && v30 == v31)
        {

          return 16.0;
        }

        v32 = sub_2157A95F0();

        result = 16.0;
        if ((v32 & 1) == 0)
        {
          v33 = sub_2157A93E0();
          v35 = v34;
          if (v33 == sub_2157A93E0() && v35 == v36)
          {

            return 18.0;
          }

          v37 = sub_2157A95F0();

          result = 18.0;
          if ((v37 & 1) == 0)
          {
            v38 = sub_2157A93E0();
            v40 = v39;
            if (v38 == sub_2157A93E0() && v40 == v41)
            {

              return 22.0;
            }

            v42 = sub_2157A95F0();

            result = 22.0;
            if ((v42 & 1) == 0)
            {
              v43 = sub_2157A93E0();
              v45 = v44;
              if (v43 == sub_2157A93E0() && v45 == v46)
              {
                goto LABEL_39;
              }

              v47 = sub_2157A95F0();

              if (v47)
              {
                return 24.0;
              }

              v48 = sub_2157A93E0();
              v50 = v49;
              if (v48 == sub_2157A93E0() && v50 == v51)
              {
                goto LABEL_39;
              }

              v52 = sub_2157A95F0();

              if (v52)
              {
                return 24.0;
              }

              v53 = sub_2157A93E0();
              v55 = v54;
              if (v53 == sub_2157A93E0() && v55 == v56)
              {
                goto LABEL_39;
              }

              v57 = sub_2157A95F0();

              if (v57)
              {
                return 24.0;
              }

              v58 = sub_2157A93E0();
              v60 = v59;
              if (v58 == sub_2157A93E0() && v60 == v61)
              {
LABEL_39:

                return 24.0;
              }

              v62 = sub_2157A95F0();

              result = 12.0;
              if (v62)
              {
                return 24.0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_215798BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_215798C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_215798C80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_215798CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215798D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_215798DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_215798E24()
{
  result = qword_27CA71530;
  if (!qword_27CA71530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71530);
  }

  return result;
}

unint64_t sub_215798E78()
{
  result = qword_27CA71538;
  if (!qword_27CA71538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71538);
  }

  return result;
}

uint64_t sub_215798FB8(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for ASCLayoutProxy();
  v4 = sub_2157A93E0();
  sub_2157A04EC(v4, v5, v8);

  v6 = v8[9];
  result = sub_21579ECCC(v8);
  *a3 = v6;
  return result;
}

uint64_t sub_21579904C(uint64_t a1, uint64_t a2, double *a3)
{
  type metadata accessor for ASCLayoutProxy();
  v4 = sub_2157A93E0();
  v6 = static ASCLayoutProxy.axOfferButtonHeightForSize(_:)(v4, v5);

  *a3 = v6;
  return result;
}

uint64_t sub_2157990D8(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_2157A9110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26[-1] - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-1] - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26[-1] - v16;
  __swift_allocate_value_buffer(v18, a2);
  __swift_project_value_buffer(v5, a2);
  sub_2157A9100();
  v19 = sub_2157A89D0();
  v26[3] = v19;
  v26[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  v21 = *a3;
  *boxed_opaque_existential_1 = v21;
  (*(*(v19 - 8) + 104))();
  v22 = v21;
  sub_2157A90C0();
  v23 = *(v6 + 8);
  v23(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_2157A90D0();
  v23(v11, v5);
  sub_2157A90E0();
  v23(v14, v5);
  sub_2157A90F0();
  return (v23)(v17, v5);
}

uint64_t sub_215799330()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v23[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A93B0();
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v31 = MEMORY[0x277D839F8];
  v32 = MEMORY[0x277D22A30];
  *&v30 = 0x4024000000000000;
  v8 = *MEMORY[0x277D769D0];
  v9 = *MEMORY[0x277D74410];
  *v3 = *MEMORY[0x277D769D0];
  v3[1] = v9;
  v10 = *MEMORY[0x277D22688];
  v11 = sub_2157A8B70();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  v12 = v1[13];
  v12(v3, *MEMORY[0x277D22618], v0);
  v13 = sub_2157A8E90();
  v28 = v13;
  v29 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v27);
  v25 = v0;
  v26 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  v15 = v1[2];
  v15(boxed_opaque_existential_1, v3, v0);
  v16 = v8;
  sub_2157A8EA0();
  v17 = v1[1];
  v17(v3, v0);
  v18 = *MEMORY[0x277D76938];
  *v3 = *MEMORY[0x277D76938];
  v12(v3, *MEMORY[0x277D22620], v0);
  v25 = v13;
  v26 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v24);
  v23[3] = v0;
  v23[4] = MEMORY[0x277D22628];
  v19 = __swift_allocate_boxed_opaque_existential_1(v23);
  v15(v19, v3, v0);
  v20 = v18;
  sub_2157A8EA0();
  v17(v3, v0);
  qword_280D2B438 = MEMORY[0x277D839F8];
  qword_280D2B440 = MEMORY[0x277D22A30];
  qword_280D2B420 = 0x4030000000000000;
  qword_280D2B398 = *&IconSize;
  unk_280D2B3A0 = v7;
  sub_21571DF08(&v30, &unk_280D2B3A8);
  sub_21571DF08(&v27, &unk_280D2B3D0);
  return sub_21571DF08(&v24, &unk_280D2B3F8);
}

uint64_t sub_215799638()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A93B0();
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v35 = MEMORY[0x277D839F8];
  v36 = MEMORY[0x277D22A30];
  *&v34 = 0x4024000000000000;
  v8 = *MEMORY[0x277D76938];
  v9 = *MEMORY[0x277D74410];
  *v3 = *MEMORY[0x277D76938];
  v3[1] = v9;
  v25 = *MEMORY[0x277D22688];
  v10 = v25;
  v11 = sub_2157A8B70();
  v12 = *(v11 - 8);
  v24 = *(v12 + 104);
  v26 = v12 + 104;
  v24(v3, v10, v11);
  v23 = *MEMORY[0x277D22618];
  v22 = v1[13];
  v22(v3);
  v13 = sub_2157A8E90();
  v32 = v13;
  v33 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v31);
  v29 = v0;
  v30 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  v15 = v1[2];
  v15(boxed_opaque_existential_1, v3, v0);
  v16 = v8;
  sub_2157A8EA0();
  v17 = v1[1];
  v17(v3, v0);
  v18 = *MEMORY[0x277D769D0];
  *v3 = *MEMORY[0x277D769D0];
  v3[1] = v9;
  v24(v3, v25, v11);
  (v22)(v3, v23, v0);
  v29 = v13;
  v30 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v28);
  v27[3] = v0;
  v27[4] = MEMORY[0x277D22628];
  v19 = __swift_allocate_boxed_opaque_existential_1(v27);
  v15(v19, v3, v0);
  v20 = v18;
  sub_2157A8EA0();
  v17(v3, v0);
  qword_27CA71670 = MEMORY[0x277D839F8];
  qword_27CA71678 = MEMORY[0x277D22A30];
  qword_27CA71658 = 0x4030000000000000;
  qword_27CA715D0 = *&IconSize;
  unk_27CA715D8 = v7;
  sub_21571DF08(&v34, &unk_27CA715E0);
  sub_21571DF08(&v31, &unk_27CA71608);
  return sub_21571DF08(&v28, &unk_27CA71630);
}

void sub_2157999A8()
{
  if (qword_280D2B390 != -1)
  {
    swift_once();
  }

  v0 = *&qword_280D2B398;
  v1 = unk_280D2B3A0;
  v2 = [objc_opt_self() clearColor];
  v4.width = v0;
  v4.height = v1;
  UIGraphicsBeginImageContextWithOptions(v4, 0, 0.0);
  [v2 set];
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = v0;
  v5.size.height = v1;
  UIRectFill(v5);
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  qword_27CA71680 = v3;
}

uint64_t sub_215799A9C(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (qword_280D2B380 != -1)
  {
    v10 = a2;
    v11 = a4;
    v12 = a3;
    swift_once();
    a2 = v10;
    a3 = v12;
    a4 = v11;
  }

  v6 = MEMORY[0x277D85048];
  v7 = MEMORY[0x277D225F8];
  v17 = MEMORY[0x277D85048];
  v18 = MEMORY[0x277D225F8];
  *&v16 = qword_280D2B388;
  if (qword_280D2B648 != -1)
  {
    v13 = a2;
    v14 = a4;
    v15 = a3;
    swift_once();
    a2 = v13;
    a3 = v15;
    a4 = v14;
  }

  v8 = qword_280D2B650;
  *a2 = v6;
  *a3 = v7;
  *a4 = v8;
  return sub_21571DF08(&v16, a5);
}

uint64_t sub_215799BA4()
{
  if (qword_27CA70FB8 != -1)
  {
    swift_once();
  }

  v0 = MEMORY[0x277D85048];
  v1 = MEMORY[0x277D225F8];
  v4 = MEMORY[0x277D85048];
  v5 = MEMORY[0x277D225F8];
  *&v3 = qword_27CA71540;
  if (qword_27CA70FC0 != -1)
  {
    swift_once();
  }

  qword_27CA716C8 = v0;
  unk_27CA716D0 = v1;
  qword_27CA716B0 = qword_27CA71548;
  return sub_21571DF08(&v3, &unk_27CA71688);
}

uint64_t sub_215799C68()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SmallLockupLayout.Metrics(0);
  __swift_allocate_value_buffer(v4, qword_280D2B590);
  v57 = v4;
  v56 = __swift_project_value_buffer(v4, qword_280D2B590);
  v5 = @"small";
  IconSize = ASCLockupViewSizeGetIconSize(v5, 1);
  v8 = v7;

  v106 = MEMORY[0x277D839F8];
  v107 = MEMORY[0x277D22A30];
  *&v105 = 0x4024000000000000;
  v9 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v63 = *MEMORY[0x277D22620];
  v10 = v1[13];
  v64 = v1 + 13;
  v65 = v10;
  v10(v3);
  v103 = sub_2157A8E90();
  v104 = MEMORY[0x277D22798];
  v11 = v103;
  v58 = v103;
  __swift_allocate_boxed_opaque_existential_1(&v102);
  v100 = v0;
  v101 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
  v60 = v1[2];
  v60(boxed_opaque_existential_1, v3, v0);
  v55 = v9;
  sub_2157A8EA0();
  v13 = v1[1];
  v13(v3, v0);
  v62 = v1 + 1;
  v14 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v15 = v63;
  v65(v3, v63, v0);
  v100 = v11;
  v101 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v99);
  v97 = v0;
  v98 = MEMORY[0x277D22628];
  v16 = __swift_allocate_boxed_opaque_existential_1(&v96);
  v17 = v60;
  v60(v16, v3, v0);
  v18 = v14;
  sub_2157A8EA0();
  v61 = v13;
  v13(v3, v0);
  *v3 = v18;
  v19 = v15;
  v20 = v65;
  v65(v3, v19, v0);
  v21 = v58;
  v97 = v58;
  v98 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v96);
  v94 = v0;
  v95 = MEMORY[0x277D22628];
  v22 = __swift_allocate_boxed_opaque_existential_1(&v93);
  v17(v22, v3, v0);
  v59 = v1 + 2;
  v23 = v18;
  sub_2157A8EA0();
  v13(v3, v0);
  *v3 = v23;
  v24 = v63;
  v20(v3, v63, v0);
  v94 = v21;
  v95 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v93);
  v91 = v0;
  v92 = MEMORY[0x277D22628];
  v25 = __swift_allocate_boxed_opaque_existential_1(&v90);
  v17(v25, v3, v0);
  v26 = v23;
  sub_2157A8EA0();
  v27 = v61;
  v61(v3, v0);
  *v3 = v26;
  v20(v3, v24, v0);
  v28 = v58;
  v91 = v58;
  v92 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v90);
  v88 = v0;
  v89 = MEMORY[0x277D22628];
  v29 = __swift_allocate_boxed_opaque_existential_1(&v87);
  v30 = v60;
  v60(v29, v3, v0);
  v31 = v26;
  sub_2157A8EA0();
  v27(v3, v0);
  v32 = v55;
  *v3 = v55;
  v33 = v65;
  v65(v3, v63, v0);
  v34 = v28;
  v88 = v28;
  v89 = MEMORY[0x277D22798];
  v54[1] = __swift_allocate_boxed_opaque_existential_1(&v87);
  v85 = v0;
  v86 = MEMORY[0x277D22628];
  v35 = __swift_allocate_boxed_opaque_existential_1(&v84);
  v30(v35, v3, v0);
  v36 = v32;
  sub_2157A8EA0();
  v61(v3, v0);
  *v3 = v36;
  v37 = v63;
  v33(v3, v63, v0);
  v85 = v28;
  v86 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v84);
  v82 = v0;
  v83 = MEMORY[0x277D22628];
  v38 = __swift_allocate_boxed_opaque_existential_1(&v81);
  v39 = v60;
  v60(v38, v3, v0);
  v40 = v36;
  sub_2157A8EA0();
  v41 = v61;
  v61(v3, v0);
  *v3 = v40;
  v65(v3, v37, v0);
  v42 = MEMORY[0x277D839F8];
  v82 = v34;
  v83 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v81);
  v79 = v0;
  v80 = MEMORY[0x277D22628];
  v43 = __swift_allocate_boxed_opaque_existential_1(&v78);
  v39(v43, v3, v0);
  v44 = v40;
  sub_2157A8EA0();
  v45 = v0;
  v46 = MEMORY[0x277D22A30];
  v41(v3, v45);
  v79 = v42;
  v80 = v46;
  *&v78 = 0x4024000000000000;
  if (qword_280D2B648 != -1)
  {
    swift_once();
  }

  v76 = MEMORY[0x277D85048];
  v77 = MEMORY[0x277D225F8];
  *&v75 = qword_280D2B650;
  v73 = v42;
  v74 = v46;
  *&v72 = 0;
  v47 = sub_2157A8CF0();
  v48 = MEMORY[0x277D226F0];
  v70 = v47;
  v71 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v69);
  sub_2157A8CE0();
  v67 = v47;
  v68 = v48;
  __swift_allocate_boxed_opaque_existential_1(&v66);
  sub_2157A8CE0();
  v49 = *(v57 + 76);
  v50 = *MEMORY[0x277D228C8];
  v51 = sub_2157A9160();
  v52 = v56;
  (*(*(v51 - 8) + 104))(v56 + v49, v50, v51);
  *v52 = IconSize;
  *(v52 + 1) = v8;
  sub_21571DF08(&v105, (v52 + 2));
  sub_21571DF08(&v102, (v52 + 7));
  sub_21571DF08(&v99, (v52 + 12));
  sub_21571DF08(&v96, (v52 + 17));
  sub_21571DF08(&v93, (v52 + 22));
  sub_21571DF08(&v90, (v52 + 27));
  sub_21571DF08(&v69, (v52 + 32));
  sub_21571DF08(&v87, (v52 + 37));
  sub_21571DF08(&v84, (v52 + 42));
  sub_21571DF08(&v66, (v52 + 47));
  sub_21571DF08(&v81, (v52 + 52));
  sub_21571DF08(&v78, (v52 + 57));
  sub_21571DF08(&v75, (v52 + 62));
  return sub_21571DF08(&v72, (v52 + 67));
}

uint64_t sub_21579A480()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = @"medium";
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v8 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v42 = *MEMORY[0x277D22620];
  v44 = v1[13];
  v44(v3);
  v9 = v1 + 13;
  v68 = sub_2157A8E90();
  v69 = MEMORY[0x277D22798];
  v10 = v68;
  v40 = v68;
  __swift_allocate_boxed_opaque_existential_1(&v67);
  v65 = v0;
  v66 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
  v41 = v1[2];
  v41(boxed_opaque_existential_1, v3, v0);
  v43 = v1 + 2;
  v39 = v8;
  sub_2157A8EA0();
  v46 = v1[1];
  v47 = v1 + 1;
  v46(v3, v0);
  v12 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v13 = v42;
  v14 = v44;
  (v44)(v3, v42, v0);
  v45 = v9;
  v65 = v10;
  v66 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v64);
  v62 = v0;
  v63 = MEMORY[0x277D22628];
  v15 = __swift_allocate_boxed_opaque_existential_1(&v61);
  v16 = v41;
  v41(v15, v3, v0);
  v17 = v12;
  sub_2157A8EA0();
  v46(v3, v0);
  *v3 = v17;
  v14(v3, v13, v0);
  v18 = v40;
  v62 = v40;
  v63 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v61);
  v59 = v0;
  v60 = MEMORY[0x277D22628];
  v19 = __swift_allocate_boxed_opaque_existential_1(&v58);
  v16(v19, v3, v0);
  v20 = v16;
  v21 = v17;
  sub_2157A8EA0();
  v22 = v46;
  v46(v3, v0);
  v23 = v39;
  *v3 = v39;
  v24 = v42;
  (v44)(v3, v42, v0);
  v59 = v18;
  v60 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v58);
  v56 = v0;
  v57 = MEMORY[0x277D22628];
  v25 = __swift_allocate_boxed_opaque_existential_1(&v55);
  v20(v25, v3, v0);
  v26 = v23;
  sub_2157A8EA0();
  v22(v3, v0);
  *v3 = v26;
  v27 = v44;
  (v44)(v3, v24, v0);
  v28 = v40;
  v56 = v40;
  v57 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v55);
  v53 = v0;
  v54 = MEMORY[0x277D22628];
  v29 = __swift_allocate_boxed_opaque_existential_1(&v52);
  v30 = v41;
  v41(v29, v3, v0);
  v31 = v26;
  sub_2157A8EA0();
  v46(v3, v0);
  *v3 = v31;
  v32 = v42;
  v27(v3, v42, v0);
  v53 = v28;
  v54 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v52);
  v50 = v0;
  v51 = MEMORY[0x277D22628];
  v33 = __swift_allocate_boxed_opaque_existential_1(&v49);
  v30(v33, v3, v0);
  v34 = v31;
  sub_2157A8EA0();
  v35 = v46;
  v46(v3, v0);
  *v3 = v34;
  v27(v3, v32, v0);
  v50 = v28;
  v51 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v49);
  v48[3] = v0;
  v48[4] = MEMORY[0x277D22628];
  v36 = __swift_allocate_boxed_opaque_existential_1(v48);
  v41(v36, v3, v0);
  v37 = v34;
  sub_2157A8EA0();
  v35(v3, v0);
  if (qword_280D2B380 != -1)
  {
    swift_once();
  }

  qword_27CA71820 = MEMORY[0x277D85048];
  unk_27CA71828 = MEMORY[0x277D225F8];
  qword_27CA71808 = qword_280D2B388;
  qword_27CA716D8 = *&IconSize;
  unk_27CA716E0 = v7;
  qword_27CA716E8 = 0x402C000000000000;
  sub_21571DF08(&v67, &unk_27CA716F0);
  sub_21571DF08(&v64, &unk_27CA71718);
  sub_21571DF08(&v61, &unk_27CA71740);
  sub_21571DF08(&v58, &unk_27CA71768);
  sub_21571DF08(&v55, &unk_27CA71790);
  sub_21571DF08(&v52, &unk_27CA717B8);
  return sub_21571DF08(&v49, &unk_27CA717E0);
}

uint64_t sub_21579AABC()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = @"medium";
  IconSize = ASCLockupViewSizeGetIconSize(v4, 2);
  v7 = v6;

  v8 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v42 = *MEMORY[0x277D22620];
  v44 = v1[13];
  v44(v3);
  v9 = v1 + 13;
  v68 = sub_2157A8E90();
  v69 = MEMORY[0x277D22798];
  v10 = v68;
  v40 = v68;
  __swift_allocate_boxed_opaque_existential_1(&v67);
  v65 = v0;
  v66 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
  v41 = v1[2];
  v41(boxed_opaque_existential_1, v3, v0);
  v43 = v1 + 2;
  v39 = v8;
  sub_2157A8EA0();
  v46 = v1[1];
  v47 = v1 + 1;
  v46(v3, v0);
  v12 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v13 = v42;
  v14 = v44;
  (v44)(v3, v42, v0);
  v45 = v9;
  v65 = v10;
  v66 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v64);
  v62 = v0;
  v63 = MEMORY[0x277D22628];
  v15 = __swift_allocate_boxed_opaque_existential_1(&v61);
  v16 = v41;
  v41(v15, v3, v0);
  v17 = v12;
  sub_2157A8EA0();
  v46(v3, v0);
  *v3 = v17;
  v14(v3, v13, v0);
  v18 = v40;
  v62 = v40;
  v63 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v61);
  v59 = v0;
  v60 = MEMORY[0x277D22628];
  v19 = __swift_allocate_boxed_opaque_existential_1(&v58);
  v16(v19, v3, v0);
  v20 = v16;
  v21 = v17;
  sub_2157A8EA0();
  v22 = v46;
  v46(v3, v0);
  v23 = v39;
  *v3 = v39;
  v24 = v42;
  (v44)(v3, v42, v0);
  v59 = v18;
  v60 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v58);
  v56 = v0;
  v57 = MEMORY[0x277D22628];
  v25 = __swift_allocate_boxed_opaque_existential_1(&v55);
  v20(v25, v3, v0);
  v26 = v23;
  sub_2157A8EA0();
  v22(v3, v0);
  *v3 = v26;
  v27 = v44;
  (v44)(v3, v24, v0);
  v28 = v40;
  v56 = v40;
  v57 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v55);
  v53 = v0;
  v54 = MEMORY[0x277D22628];
  v29 = __swift_allocate_boxed_opaque_existential_1(&v52);
  v30 = v41;
  v41(v29, v3, v0);
  v31 = v26;
  sub_2157A8EA0();
  v46(v3, v0);
  *v3 = v31;
  v32 = v42;
  v27(v3, v42, v0);
  v53 = v28;
  v54 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v52);
  v50 = v0;
  v51 = MEMORY[0x277D22628];
  v33 = __swift_allocate_boxed_opaque_existential_1(&v49);
  v30(v33, v3, v0);
  v34 = v31;
  sub_2157A8EA0();
  v35 = v46;
  v46(v3, v0);
  *v3 = v34;
  v27(v3, v32, v0);
  v50 = v28;
  v51 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v49);
  v48[3] = v0;
  v48[4] = MEMORY[0x277D22628];
  v36 = __swift_allocate_boxed_opaque_existential_1(v48);
  v41(v36, v3, v0);
  v37 = v34;
  sub_2157A8EA0();
  v35(v3, v0);
  if (qword_280D2B380 != -1)
  {
    swift_once();
  }

  qword_27CA71978 = MEMORY[0x277D85048];
  unk_27CA71980 = MEMORY[0x277D225F8];
  qword_27CA71960 = qword_280D2B388;
  qword_27CA71830 = *&IconSize;
  *algn_27CA71838 = v7;
  qword_27CA71840 = 0x402E000000000000;
  sub_21571DF08(&v67, &unk_27CA71848);
  sub_21571DF08(&v64, &unk_27CA71870);
  sub_21571DF08(&v61, &unk_27CA71898);
  sub_21571DF08(&v58, &unk_27CA718C0);
  sub_21571DF08(&v55, &unk_27CA718E8);
  sub_21571DF08(&v52, &unk_27CA71910);
  return sub_21571DF08(&v49, &unk_27CA71938);
}

uint64_t sub_21579B0F8()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A93B0();
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v8 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v9 = *MEMORY[0x277D22620];
  v40 = v1[13];
  v40(v3, v9, v0);
  v66 = sub_2157A8E90();
  v67 = MEMORY[0x277D22798];
  v10 = v66;
  __swift_allocate_boxed_opaque_existential_1(&v65);
  v63 = v0;
  v64 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v45 = v1[2];
  v42 = v1 + 2;
  v45(boxed_opaque_existential_1, v3, v0);
  v38[0] = v8;
  sub_2157A8EA0();
  v39 = v1[1];
  v39(v3, v0);
  v12 = *MEMORY[0x277D76A20];
  *v3 = *MEMORY[0x277D76A20];
  v43 = v9;
  v13 = v40;
  v38[1] = v1 + 13;
  v40(v3, v9, v0);
  v63 = v10;
  v44 = v10;
  v64 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v62);
  v60 = v0;
  v61 = MEMORY[0x277D22628];
  v14 = __swift_allocate_boxed_opaque_existential_1(&v59);
  v45(v14, v3, v0);
  v15 = v12;
  sub_2157A8EA0();
  v16 = v39;
  v39(v3, v0);
  *v3 = v15;
  v13(v3, v9, v0);
  v17 = v13;
  v60 = v10;
  v61 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v59);
  v57 = v0;
  v58 = MEMORY[0x277D22628];
  v18 = __swift_allocate_boxed_opaque_existential_1(&v56);
  v19 = v45;
  v45(v18, v3, v0);
  v20 = v15;
  sub_2157A8EA0();
  v16(v3, v0);
  v41 = v1 + 1;
  v21 = *MEMORY[0x277D769D0];
  *v3 = *MEMORY[0x277D769D0];
  v22 = v43;
  v17(v3, v43, v0);
  v57 = v44;
  v58 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v56);
  v54 = v0;
  v55 = MEMORY[0x277D22628];
  v23 = __swift_allocate_boxed_opaque_existential_1(&v53);
  v19(v23, v3, v0);
  v24 = v21;
  sub_2157A8EA0();
  v25 = v39;
  v39(v3, v0);
  *v3 = v24;
  v26 = v40;
  v40(v3, v22, v0);
  v27 = v44;
  v54 = v44;
  v55 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v53);
  v51 = v0;
  v52 = MEMORY[0x277D22628];
  v28 = __swift_allocate_boxed_opaque_existential_1(&v50);
  v45(v28, v3, v0);
  v29 = v24;
  sub_2157A8EA0();
  v25(v3, v0);
  v30 = v25;
  v31 = v38[0];
  *v3 = v38[0];
  v26(v3, v43, v0);
  v51 = v27;
  v52 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v50);
  v48 = v0;
  v49 = MEMORY[0x277D22628];
  v32 = __swift_allocate_boxed_opaque_existential_1(&v47);
  v33 = v45;
  v45(v32, v3, v0);
  v34 = v31;
  sub_2157A8EA0();
  v30(v3, v0);
  *v3 = v34;
  v26(v3, v43, v0);
  v48 = v44;
  v49 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v47);
  v46[3] = v0;
  v46[4] = MEMORY[0x277D22628];
  v35 = __swift_allocate_boxed_opaque_existential_1(v46);
  v33(v35, v3, v0);
  v36 = v34;
  sub_2157A8EA0();
  v30(v3, v0);
  qword_27CA71988 = *&IconSize;
  unk_27CA71990 = v7;
  sub_21571DF08(&v65, &unk_27CA71998);
  sub_21571DF08(&v62, &unk_27CA719C0);
  sub_21571DF08(&v59, &unk_27CA719E8);
  sub_21571DF08(&v56, &unk_27CA71A20);
  sub_21571DF08(&v53, &unk_27CA71A48);
  sub_21571DF08(&v50, &unk_27CA71A70);
  result = sub_21571DF08(&v47, &unk_27CA71A98);
  qword_27CA71A10 = 0;
  byte_27CA71A18 = 1;
  return result;
}

double static ASCLayoutProxy.smallLockupEstimatedSize(fitting:compatibleWith:)(void *a1)
{
  if (qword_280D2B588 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SmallLockupLayout.Metrics(0);
  v3 = __swift_project_value_buffer(v2, qword_280D2B590);
  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2157B3B70;
  *(v4 + 32) = a1;
  v5 = a1;
  v6 = sub_2157A91E0();
  v7 = sub_21579BB5C(v3, v6);

  return v7;
}

double sub_21579BB5C(uint64_t a1, void *a2)
{
  v4 = sub_2157A8E50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2157A8E80();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D22788], v4, v10);
  sub_2157A8E60();
  v13 = [a2 traitCollection];
  LOBYTE(v7) = sub_2157A94B0();

  if (v7)
  {
    v14 = *(a1 + 8);
    v20[3] = MEMORY[0x277D85048];
    v20[4] = MEMORY[0x277D225F8];
    v20[0] = v14;
    v15 = sub_2157A91A0();
    v16 = MEMORY[0x277D228E0];
    v22 = v15;
    v23 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 16, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 56, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 216, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 296, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 336, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 456, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 496, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 416, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 536, v20);
  }

  else
  {
    sub_21578326C(a1 + 96, v20);
    v15 = sub_2157A91A0();
    v16 = MEMORY[0x277D228E0];
    v22 = v15;
    v23 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 296, v20);
    v22 = v15;
    v23 = v16;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_21578326C(a1 + 416, v20);
  }

  v22 = v15;
  v23 = v16;
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_2157A91B0();
  sub_2157A8E70();
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2157A8E40();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  return v18;
}

double _s18AppStoreComponents14ASCLayoutProxyC23miniLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(uint64_t a1, double a2)
{
  v28 = a1;
  v29 = sub_2157A92C0();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2157A8D70();
  MEMORY[0x28223BE20](v5 - 8);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2157A9110();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2157A8E20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D2B390 != -1)
  {
    swift_once();
  }

  sub_21578CA80(&qword_280D2B398, v41);
  if (qword_27CA70FE8 != -1)
  {
    swift_once();
  }

  v15 = qword_27CA70F80;
  v16 = qword_27CA71680;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_27CA73840);
  (*(v12 + 16))(v14, v17, v11);
  v40[3] = sub_2157A8EB0();
  v40[4] = MEMORY[0x277D227A8];
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_2157A8EC0();
  if (qword_27CA70FC8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_27CA71550);
  v19 = *(v8 + 16);
  v19(v10, v18, v7);
  sub_2157A8ED0();
  v20 = sub_2157A8EE0();
  v21 = MEMORY[0x277D227B8];
  v39[3] = v20;
  v39[4] = MEMORY[0x277D227B8];
  __swift_allocate_boxed_opaque_existential_1(v39);
  sub_2157A8F00();
  if (qword_27CA70FD0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v7, qword_27CA71568);
  v19(v10, v22, v7);
  sub_2157A8ED0();
  v37 = v20;
  v38 = v21;
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_2157A8F00();
  if (qword_27CA70FD8 != -1)
  {
    swift_once();
  }

  v34 = &type metadata for OfferButtonPlaceholder;
  v35 = sub_21579ED20();
  *&v33 = swift_allocObject();
  sub_21579ED74(&unk_27CA71580, v33 + 16);
  sub_21578CA80(v41, v32);
  sub_21578326C(v40, &v32[176]);
  sub_21578326C(v39, &v32[216]);
  sub_21579EA48(v36, &v30);
  if (v31)
  {
    sub_21579EAB8(v41);
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_21571DF08(&v30, v42);
  }

  else
  {
    sub_2157A8D60();
    sub_2157A8ED0();
    *(&v42[1] + 1) = v20;
    *&v42[2] = v21;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A8EF0();
    sub_21579EAB8(v41);
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(v40);
    if (v31)
    {
      sub_21579EB0C(&v30);
    }
  }

  sub_21571DF08(v42, &v32[256]);
  v23 = v37 == 0;
  sub_21579EB0C(v36);
  v32[336] = v23;
  sub_21571DF08(&v33, &v32[296]);
  memcpy(v42, v32, 0x151uLL);
  sub_21578B4C4(v4);
  v24 = v29;
  sub_2157A9370();
  (*(v27 + 8))(v4, v24);
  sub_21579EDD0(v42);
  return a2;
}

double _s18AppStoreComponents14ASCLayoutProxyC35smallOfferButtonLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(void *a1, double a2)
{
  v4 = sub_2157A95E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D2B328 != -1)
  {
    swift_once();
  }

  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2157B3B70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_2157A91E0();
  v11 = [v10 traitCollection];
  v12 = sub_2157A94B0();

  if (v12)
  {
    v13 = qword_280D2B358;
  }

  else
  {
    v13 = &unk_280D2B330;
  }

  v14 = &qword_280D2B358[3];
  if ((v12 & 1) == 0)
  {
    v14 = &unk_280D2B348;
  }

  __swift_project_boxed_opaque_existential_1(v13, *v14);
  sub_21579F1CC();
  sub_2157A8BB0();

  (*(v5 + 8))(v7, v4);
  return a2;
}

double _s18AppStoreComponents14ASCLayoutProxyC36mediumOfferButtonLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(void *a1, double a2)
{
  v4 = sub_2157A95E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CA70FF0 != -1)
  {
    swift_once();
  }

  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2157B3B70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_2157A91E0();
  v11 = [v10 traitCollection];
  v12 = sub_2157A94B0();

  if (v12)
  {
    v13 = &qword_27CA716B0;
  }

  else
  {
    v13 = &unk_27CA71688;
  }

  v14 = &qword_27CA716C8;
  if ((v12 & 1) == 0)
  {
    v14 = &unk_27CA716A0;
  }

  __swift_project_boxed_opaque_existential_1(v13, *v14);
  sub_21579F1CC();
  sub_2157A8BB0();

  (*(v5 + 8))(v7, v4);
  return a2;
}

double sub_21579CAC4(void *a1, void *a2, double a3)
{
  v6 = sub_2157A95E0();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 traitCollection];
  __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v12 = *(v7 + 8);
  v12(v10, v6);
  if (sub_2157A9490())
  {
    __swift_project_boxed_opaque_existential_1(a1 + 18, a1[21]);
    sub_21579F1CC();
    sub_2157A8BB0();
    v12(v10, v6);
  }

  else
  {
    if (sub_2157A94B0())
    {
      __swift_project_boxed_opaque_existential_1(a1 + 18, a1[21]);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1 + 23, a1[26]);
    }

    sub_21579F1CC();
    sub_2157A8BB0();
    v12(v10, v6);
    __swift_project_boxed_opaque_existential_1(a1 + 28, a1[31]);
    sub_21579F1CC();
    sub_2157A8BB0();
    v12(v10, v6);
  }

  __swift_project_boxed_opaque_existential_1(a1 + 33, a1[36]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1(a1 + 38, a1[41]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v12(v10, v6);
  sub_2157A94B0();

  return a3;
}

double _s18AppStoreComponents14ASCLayoutProxyC25mediumLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(void *a1, double a2)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    if (qword_27CA70FF8 != -1)
    {
      swift_once();
    }

    v4 = &qword_27CA716D8;
  }

  else
  {
    if (qword_27CA71000 != -1)
    {
      swift_once();
    }

    v4 = &qword_27CA71830;
  }

  sub_21578B48C(v4, v10);
  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2157B3B70;
  *(v5 + 32) = a1;
  v6 = a1;
  v7 = sub_2157A91E0();
  v8 = sub_21579CAC4(v10, v7, a2);

  sub_21579E6DC(v10);
  return v8;
}

uint64_t _s18AppStoreComponents14ASCLayoutProxyC12lockupLayout6ofSize15traitCollection11artworkView11headingText05titleO008subtitleO005offerO00R6Button5badgeACSo09ASCLockupmI0a_So07UITraitK0CSo6UIViewCSo7UILabelCSgA2uv2SSgtFZ_0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v168 = a3;
  v169 = a8;
  v164 = a7;
  v165 = a6;
  v166 = a4;
  v167 = a5;
  v162 = a2;
  v9 = type metadata accessor for SmallLockupLayout.Metrics(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SmallLockupLayout(0);
  MEMORY[0x28223BE20](v12);
  v163 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2157A8D70();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2157A93B0();
  v16 = sub_2157A93E0();
  v18 = v17;
  if (v16 == sub_2157A93E0() && v18 == v19)
  {

    goto LABEL_5;
  }

  v20 = sub_2157A95F0();

  if (v20)
  {
LABEL_5:
    v21 = v168;
    if (v166)
    {
      v22 = v166;
      if (([v22 isHidden] & 1) == 0 && objc_msgSend(v22, sel_hasContent))
      {
        v23 = qword_27CA70FE0;
        v24 = v22;
        v25 = v167;
        if (v23 != -1)
        {
          swift_once();
        }

        sub_21578CA80(&qword_27CA715D0, v211);
LABEL_15:
        sub_21578CA80(v211, v186);
        v178[6] = v21;
        sub_215788D28(0, &qword_280D2B5B0);
        sub_2157A8AE0();
        v178[5] = v24;
        sub_215788D28(0, &qword_280D2B5A8);
        sub_2157A8AE0();

        *v187 = v25;
        sub_2157A8AE0();
        v177 = v169;
        sub_2157A8AE0();
        v218 = &type metadata for MiniLockupLayout;
        v219 = sub_21578C9B8();
        v28 = swift_allocObject();
        *&v217 = v28;
        sub_21578CA80(v186, v187);
        sub_21578326C(&v214, &v187[176]);
        sub_21578326C(&v183, &v187[216]);
        sub_21579EA48(v178, &v171);
        if (v172)
        {
          __swift_destroy_boxed_opaque_existential_1(&v183);
          __swift_destroy_boxed_opaque_existential_1(&v214);
          sub_21579EAB8(v186);
          sub_21571DF08(&v171, &v173);
        }

        else
        {
          sub_2157A8D60();
          sub_2157A8ED0();
          v174 = sub_2157A8EE0();
          v175 = MEMORY[0x277D227B8];
          __swift_allocate_boxed_opaque_existential_1(&v173);
          sub_2157A8EF0();
          __swift_destroy_boxed_opaque_existential_1(&v183);
          __swift_destroy_boxed_opaque_existential_1(&v214);
          sub_21579EAB8(v186);
          if (v172)
          {
            sub_21579EB0C(&v171);
          }
        }

        sub_21571DF08(&v173, &v187[256]);
        v29 = v178[3] == 0;
        sub_21579EB0C(v178);
        v187[336] = v29;
        sub_21571DF08(&v176, &v187[296]);
        memcpy((v28 + 16), v187, 0x151uLL);
        sub_21571DF08(&v217, v186);
        *&v187[24] = &type metadata for PlaceableLayoutProxy;
        *&v187[32] = sub_21579EB74();
        *&v187[40] = sub_21579EBC8();
        *v187 = swift_allocObject();
        sub_21579EC1C(v186, *v187 + 16);
        v30 = type metadata accessor for ASCLayoutProxy();
        v31 = objc_allocWithZone(v30);
        sub_21578B2C8(v187, v31 + OBJC_IVAR_____ASCLayoutProxy_base);
        v170.receiver = v31;
        v170.super_class = v30;
        v32 = objc_msgSendSuper2(&v170, sel_init);

        sub_21579EC78(v186);
        sub_21579EAB8(v211);
        __swift_destroy_boxed_opaque_existential_1(v187);
        return v32;
      }
    }

    v26 = qword_280D2B390;
    v27 = v167;
    v25 = v165;
    if (v26 != -1)
    {
      swift_once();
    }

    sub_21578CA80(&qword_280D2B398, v211);
    v24 = v27;
    goto LABEL_15;
  }

  v33 = sub_2157A93B0();
  v34 = sub_2157A93E0();
  v36 = v35;
  if (v34 == sub_2157A93E0() && v36 == v37)
  {

LABEL_24:
    if (qword_280D2B328 != -1)
    {
      swift_once();
    }

    sub_21578E75C(&unk_280D2B330, v187);
    v39 = sub_215788D28(0, &qword_280D2B5B0);
    *&v187[112] = MEMORY[0x277D22A58];
    *&v187[104] = v39;
    v40 = v169;
    *&v187[80] = v169;
    *(&v211[1] + 1) = &type metadata for OfferButtonLockupLayout;
    *&v211[2] = sub_21579E8F0();
    *(&v211[2] + 1) = sub_21579E944();
    *&v211[0] = swift_allocObject();
    sub_21579E998(v187, *&v211[0] + 16);
    v41 = type metadata accessor for ASCLayoutProxy();
    v42 = objc_allocWithZone(v41);
    sub_21578B2C8(v211, v42 + OBJC_IVAR_____ASCLayoutProxy_base);
    v179.receiver = v42;
    v179.super_class = v41;
    v43 = v40;
    v44 = objc_msgSendSuper2(&v179, sel_init);
LABEL_27:
    v32 = v44;
    __swift_destroy_boxed_opaque_existential_1(v211);
    sub_21579E9F4(v187);
    return v32;
  }

  v38 = sub_2157A95F0();

  if (v38)
  {
    goto LABEL_24;
  }

  v46 = sub_2157A93B0();
  v47 = sub_2157A93E0();
  v49 = v48;
  if (v47 == sub_2157A93E0() && v49 == v50)
  {

LABEL_33:
    if (qword_27CA70FF0 != -1)
    {
      swift_once();
    }

    sub_21578E75C(&unk_27CA71688, v187);
    v52 = sub_215788D28(0, &qword_280D2B5B0);
    *&v187[112] = MEMORY[0x277D22A58];
    *&v187[104] = v52;
    v53 = v169;
    *&v187[80] = v169;
    *(&v211[1] + 1) = &type metadata for OfferButtonLockupLayout;
    *&v211[2] = sub_21579E8F0();
    *(&v211[2] + 1) = sub_21579E944();
    *&v211[0] = swift_allocObject();
    sub_21579E998(v187, *&v211[0] + 16);
    v54 = type metadata accessor for ASCLayoutProxy();
    v55 = objc_allocWithZone(v54);
    sub_21578B2C8(v211, v55 + OBJC_IVAR_____ASCLayoutProxy_base);
    v180.receiver = v55;
    v180.super_class = v54;
    v56 = v53;
    v44 = objc_msgSendSuper2(&v180, sel_init);
    goto LABEL_27;
  }

  v51 = sub_2157A95F0();

  if (v51)
  {
    goto LABEL_33;
  }

  v57 = sub_2157A93E0();
  v59 = v58;
  if (v57 == sub_2157A93E0() && v59 == v60)
  {

LABEL_40:
    if (qword_280D2B588 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v9, qword_280D2B590);
    sub_21579E82C(v62, v11, type metadata accessor for SmallLockupLayout.Metrics);
    v63 = sub_215788D28(0, &qword_280D2B5B0);
    *&v187[32] = MEMORY[0x277D22A58];
    *&v187[24] = v63;
    *v187 = v168;
    if (v166)
    {
      v64 = sub_215788D28(0, &qword_280D2B5A8);
      v65 = MEMORY[0x277D22A68];
    }

    else
    {
      v65 = 0;
      v64 = 0;
    }

    v66 = sub_215788D28(0, &qword_280D2B5A8);
    *&v211[2] = MEMORY[0x277D22A68];
    *(&v211[1] + 1) = v66;
    *&v211[0] = v167;
    *&v186[24] = v66;
    *&v186[32] = MEMORY[0x277D22A68];
    v67 = v164;
    *v186 = v165;
    if (v164)
    {
      v68 = MEMORY[0x277D22A68];
    }

    else
    {
      v68 = 0;
    }

    if (v164)
    {
      v69 = v66;
    }

    else
    {
      v69 = 0;
    }

    v70 = v163;
    v71 = &v163[v12[10]];
    *(v71 + 4) = 0;
    *v71 = 0u;
    *(v71 + 1) = 0u;
    v72 = (v70 + v12[11]);
    v72[3] = v63;
    v72[4] = MEMORY[0x277D22A58];
    *v72 = v169;
    sub_21579E784(v11, v70);
    sub_21571DF08(v187, v70 + v12[5]);
    v73 = (v70 + v12[6]);
    v74 = v166;
    *v73 = v166;
    v73[1] = 0;
    v73[2] = 0;
    v73[3] = v64;
    v73[4] = v65;
    sub_21571DF08(v211, v70 + v12[7]);
    sub_21571DF08(v186, v70 + v12[8]);
    v75 = (v70 + v12[9]);
    *v75 = v67;
    v75[1] = 0;
    v75[2] = 0;
    v75[3] = v69;
    v75[4] = v68;
    *&v187[24] = v12;
    *&v187[32] = sub_21579E7E8(&qword_280D2B4E8);
    *&v187[40] = sub_21579E7E8(&qword_280D2B4E0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v187);
    sub_21579E82C(v70, boxed_opaque_existential_1, type metadata accessor for SmallLockupLayout);
    v77 = type metadata accessor for ASCLayoutProxy();
    v78 = objc_allocWithZone(v77);
    sub_21578B2C8(v187, v78 + OBJC_IVAR_____ASCLayoutProxy_base);
    v181.receiver = v78;
    v181.super_class = v77;
    v79 = v74;
    v80 = v167;
    v81 = v165;
    v82 = v169;
    v83 = v168;
    v84 = v67;
    v32 = objc_msgSendSuper2(&v181, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v187);
    sub_21579E894(v70);
    return v32;
  }

  v61 = sub_2157A95F0();

  if (v61)
  {
    goto LABEL_40;
  }

  v85 = sub_2157A93E0();
  v87 = v86;
  if (v85 == sub_2157A93E0() && v87 == v88)
  {

LABEL_56:
    if ([v162 horizontalSizeClass] == 1)
    {
      v90 = v168;
      if (qword_27CA70FF8 != -1)
      {
        swift_once();
      }

      v91 = &qword_27CA716D8;
    }

    else
    {
      v90 = v168;
      if (qword_27CA71000 != -1)
      {
        swift_once();
      }

      v91 = &qword_27CA71830;
    }

    sub_21578B48C(v91, v211);
    sub_21578B48C(v211, v186);
    v92 = sub_215788D28(0, &qword_280D2B5B0);
    v93 = MEMORY[0x277D22A58];
    v218 = v92;
    v219 = MEMORY[0x277D22A58];
    *&v217 = v90;
    if (v166)
    {
      v94 = sub_215788D28(0, &qword_280D2B5A8);
      v95 = MEMORY[0x277D22A68];
    }

    else
    {
      v94 = 0;
      v95 = 0;
    }

    v96 = sub_215788D28(0, &qword_280D2B5A8);
    v215 = v96;
    v216 = MEMORY[0x277D22A68];
    *&v214 = v167;
    v184 = v96;
    v185 = MEMORY[0x277D22A68];
    v98 = v164;
    v97 = v165;
    *&v183 = v165;
    if (v164)
    {
      v99 = v96;
    }

    else
    {
      v99 = 0;
    }

    if (v164)
    {
      v100 = MEMORY[0x277D22A68];
    }

    else
    {
      v100 = 0;
    }

    v209 = v92;
    v210 = v93;
    v101 = v169;
    v208 = v169;
    memcpy(v187, v186, sizeof(v187));
    sub_21571DF08(&v217, &v188);
    v194 = 0u;
    v102 = v166;
    v193 = v166;
    v195 = v94;
    v196 = v95;
    sub_21571DF08(&v214, &v197);
    sub_21571DF08(&v183, &v199);
    v204 = v98;
    v205 = 0u;
    v206 = v99;
    v207 = v100;
    *&v186[24] = &type metadata for MediumLockupLayout;
    *&v186[32] = sub_21579E5D8();
    *&v186[40] = sub_21579E62C();
    *v186 = swift_allocObject();
    sub_21579E680(v187, *v186 + 16);
    v103 = type metadata accessor for ASCLayoutProxy();
    v104 = objc_allocWithZone(v103);
    sub_21578B2C8(v186, v104 + OBJC_IVAR_____ASCLayoutProxy_base);
    v182.receiver = v104;
    v182.super_class = v103;
    v105 = v102;
    v106 = v167;
    v107 = v97;
    v108 = v101;
    v109 = v168;
    v110 = v98;
    v32 = objc_msgSendSuper2(&v182, sel_init);
    sub_21579E6DC(v211);
    __swift_destroy_boxed_opaque_existential_1(v186);
    sub_21579E730(v187);
    return v32;
  }

  v89 = sub_2157A95F0();

  if (v89)
  {
    goto LABEL_56;
  }

  v111 = sub_2157A93B0();
  v112 = sub_2157A93E0();
  v114 = v113;
  if (v112 == sub_2157A93E0() && v114 == v115)
  {

LABEL_77:
    if (qword_27CA71008 != -1)
    {
      swift_once();
    }

    sub_215785534(&qword_27CA71988, v211);
    v117 = sub_215788D28(0, &qword_280D2B5B0);
    v118 = MEMORY[0x277D22A58];
    *&v186[24] = v117;
    *&v186[32] = MEMORY[0x277D22A58];
    *v186 = v168;
    if (v166)
    {
      v119 = sub_215788D28(0, &qword_280D2B5A8);
      v120 = MEMORY[0x277D22A58];
    }

    else
    {
      v119 = 0;
      v120 = 0;
    }

    v121 = sub_215788D28(0, &qword_280D2B5A8);
    v218 = v121;
    v219 = MEMORY[0x277D22A68];
    v216 = MEMORY[0x277D22A68];
    *&v217 = v167;
    v215 = v121;
    v123 = v164;
    v122 = v165;
    *&v214 = v165;
    if (v164)
    {
      v124 = v121;
    }

    else
    {
      v124 = 0;
    }

    if (v164)
    {
      v125 = MEMORY[0x277D22A68];
    }

    else
    {
      v125 = 0;
    }

    v207 = v117;
    v208 = v118;
    v126 = v169;
    *&v205 = v169;
    memcpy(v187, v211, 0x138uLL);
    sub_21571DF08(v186, &v187[312]);
    v127 = v166;
    v189 = v166;
    v190 = 0;
    v191 = 0;
    v192 = v119;
    v193 = v120;
    sub_21571DF08(&v217, &v194);
    sub_21571DF08(&v214, v198);
    v200 = v123;
    v201 = 0;
    v202 = 0;
    v203 = v124;
    v204 = v125;
    *(&v211[1] + 1) = &type metadata for AppShowcaseLockupLayout;
    *&v211[2] = sub_21579E480();
    *(&v211[2] + 1) = sub_21579E4D4();
    *&v211[0] = swift_allocObject();
    sub_21579E528(v187, *&v211[0] + 16);
    v128 = type metadata accessor for ASCLayoutProxy();
    v129 = objc_allocWithZone(v128);
    sub_21578B2C8(v211, v129 + OBJC_IVAR_____ASCLayoutProxy_base);
    v212.receiver = v129;
    v212.super_class = v128;
    v130 = v127;
    v131 = v167;
    v132 = v122;
    v133 = v126;
    v134 = v168;
    v135 = v123;
    v136 = objc_msgSendSuper2(&v212, sel_init);
LABEL_105:
    v32 = v136;
    __swift_destroy_boxed_opaque_existential_1(v211);
    sub_21579E584(v187);
    return v32;
  }

  v116 = sub_2157A95F0();

  if (v116)
  {
    goto LABEL_77;
  }

  v137 = sub_2157A93B0();
  v138 = sub_2157A93E0();
  v140 = v139;
  if (v138 == sub_2157A93E0() && v140 == v141)
  {

LABEL_93:
    if (qword_27CA70F90 != -1)
    {
      swift_once();
    }

    sub_215785534(&qword_27CA73858, v211);
    v143 = sub_215788D28(0, &qword_280D2B5B0);
    v144 = MEMORY[0x277D22A58];
    *&v186[24] = v143;
    *&v186[32] = MEMORY[0x277D22A58];
    *v186 = v168;
    if (v166)
    {
      v145 = sub_215788D28(0, &qword_280D2B5A8);
      v146 = MEMORY[0x277D22A58];
    }

    else
    {
      v145 = 0;
      v146 = 0;
    }

    v147 = sub_215788D28(0, &qword_280D2B5A8);
    v218 = v147;
    v219 = MEMORY[0x277D22A68];
    v216 = MEMORY[0x277D22A68];
    *&v217 = v167;
    v215 = v147;
    v149 = v164;
    v148 = v165;
    *&v214 = v165;
    if (v164)
    {
      v150 = v147;
    }

    else
    {
      v150 = 0;
    }

    if (v164)
    {
      v151 = MEMORY[0x277D22A68];
    }

    else
    {
      v151 = 0;
    }

    v207 = v143;
    v208 = v144;
    v152 = v169;
    *&v205 = v169;
    memcpy(v187, v211, 0x138uLL);
    sub_21571DF08(v186, &v187[312]);
    v153 = v166;
    v189 = v166;
    v190 = 0;
    v191 = 0;
    v192 = v145;
    v193 = v146;
    sub_21571DF08(&v217, &v194);
    sub_21571DF08(&v214, v198);
    v200 = v149;
    v201 = 0;
    v202 = 0;
    v203 = v150;
    v204 = v151;
    *(&v211[1] + 1) = &type metadata for AppShowcaseLockupLayout;
    *&v211[2] = sub_21579E480();
    *(&v211[2] + 1) = sub_21579E4D4();
    *&v211[0] = swift_allocObject();
    sub_21579E528(v187, *&v211[0] + 16);
    v154 = type metadata accessor for ASCLayoutProxy();
    v155 = objc_allocWithZone(v154);
    sub_21578B2C8(v211, v155 + OBJC_IVAR_____ASCLayoutProxy_base);
    v213.receiver = v155;
    v213.super_class = v154;
    v156 = v153;
    v157 = v167;
    v158 = v148;
    v159 = v152;
    v160 = v168;
    v161 = v149;
    v136 = objc_msgSendSuper2(&v213, sel_init);
    goto LABEL_105;
  }

  v142 = sub_2157A95F0();

  if (v142)
  {
    goto LABEL_93;
  }

  *v187 = 0;
  *&v187[8] = 0xE000000000000000;
  sub_2157A9550();
  MEMORY[0x216070240](0xD000000000000019, 0x80000002157B7E90);
  *&v211[0] = a1;
  type metadata accessor for Size(0);
  sub_2157A9590();
  result = sub_2157A95A0();
  __break(1u);
  return result;
}

unint64_t sub_21579E480()
{
  result = qword_27CA71AC0;
  if (!qword_27CA71AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AC0);
  }

  return result;
}

unint64_t sub_21579E4D4()
{
  result = qword_27CA71AC8;
  if (!qword_27CA71AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AC8);
  }

  return result;
}

unint64_t sub_21579E5D8()
{
  result = qword_27CA71AD0;
  if (!qword_27CA71AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AD0);
  }

  return result;
}

unint64_t sub_21579E62C()
{
  result = qword_27CA71AD8;
  if (!qword_27CA71AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AD8);
  }

  return result;
}

uint64_t sub_21579E784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallLockupLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21579E7E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmallLockupLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21579E82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21579E894(uint64_t a1)
{
  v2 = type metadata accessor for SmallLockupLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21579E8F0()
{
  result = qword_280D2AF78;
  if (!qword_280D2AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2AF78);
  }

  return result;
}

unint64_t sub_21579E944()
{
  result = qword_280D2AF70;
  if (!qword_280D2AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2AF70);
  }

  return result;
}

uint64_t sub_21579EA48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21579EB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21579EB74()
{
  result = qword_280D2AF88[0];
  if (!qword_280D2AF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D2AF88);
  }

  return result;
}

unint64_t sub_21579EBC8()
{
  result = qword_280D2AF80;
  if (!qword_280D2AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2AF80);
  }

  return result;
}

unint64_t sub_21579ED20()
{
  result = qword_27CA71AE8;
  if (!qword_27CA71AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AE8);
  }

  return result;
}

id sub_21579EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_215788D28(0, &qword_280D2B5B0);
  sub_2157A8AE0();
  sub_2157A8AE0();
  v16[8] = a3;
  sub_215788D28(0, &qword_280D2B5A8);
  sub_2157A8AE0();
  v16[7] = a4;
  sub_2157A8AE0();
  v16[6] = a5;
  sub_2157A8AE0();
  v16[5] = a6;
  sub_2157A8AE0();
  v17[0] = vdupq_n_s64(0x404B800000000000uLL);
  v17[1] = vdupq_n_s64(0x4054C00000000000uLL);
  v17[2] = xmmword_2157B3B90;
  v17[3] = xmmword_2157B3BA0;
  v17[4] = xmmword_2157B3BB0;
  v16[3] = &type metadata for MiniProductPageLayout;
  v16[4] = sub_21578DE84();
  v16[0] = swift_allocObject();
  sub_21578DF4C(v17, v16[0] + 16);
  v15[3] = &type metadata for PlaceableLayoutProxy;
  v15[4] = sub_21579EB74();
  v15[5] = sub_21579EBC8();
  v15[0] = swift_allocObject();
  sub_21579EC1C(v16, v15[0] + 16);
  v10 = type metadata accessor for ASCLayoutProxy();
  v11 = objc_allocWithZone(v10);
  sub_21578B2C8(v15, v11 + OBJC_IVAR_____ASCLayoutProxy_base);
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_21579F178(v17);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_21579EC78(v16);
  return v12;
}

double static ASCLayoutProxy.offerButtonHeightForSize(_:)(uint64_t a1, uint64_t a2)
{
  sub_2157A04EC(a1, a2, v4);
  v2 = *&v4[9];
  sub_21579ECCC(v4);
  return v2;
}

double static ASCLayoutProxy.axOfferButtonHeightForSize(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2157A95E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2157B3B70;
  sub_215788D28(0, &qword_280D2B5C0);
  *(v8 + 32) = sub_2157A94C0();
  v9 = sub_2157A91E0();
  sub_2157A04EC(a1, a2, v20);
  v10 = v21;
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v11 = v9;
  sub_2157A89C0();
  sub_2157A8BB0();
  v13 = v12;

  v14 = *(v5 + 8);
  v14(v7, v4);
  v15 = v10 + v13;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v16 = v11;
  sub_2157A89C0();
  sub_2157A8BB0();
  v18 = v17;

  v14(v7, v4);
  sub_21579ECCC(v20);
  return v15 + v18;
}

double static ASCLayoutProxy.offerProgressDiameterForSize(_:)(uint64_t a1, uint64_t a2)
{
  sub_2157A074C(a1, a2, v4);
  v2 = v5;
  sub_21579F4FC(v4);
  return v2;
}

double static ASCLayoutProxy.offerButtonRegularWidthForSize(_:)(uint64_t a1, uint64_t a2)
{
  sub_2157A09AC(a1, a2, v4);
  v2 = *v4;
  sub_21579F4FC(v4);
  return v2;
}

double sub_21579F690()
{
  v0 = sub_2157A93E0();
  v2 = v1;
  swift_getObjCClassMetadata();
  v3 = static ASCLayoutProxy.axOfferButtonHeightForSize(_:)(v0, v2);

  return v3;
}

id static ASCLayoutProxy.offerIconLayoutForSize(_:imageView:titleView:subtitleView:hasTrailingSubtitle:shouldTopAlign:topPadding:shouldTrailingAlign:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, char a7, char a8, double a9)
{
  if (a6)
  {
    sub_2157A074C(a1, a2, v40);
  }

  else
  {
    sub_2157A09AC(a1, a2, v40);
  }

  sub_2157A01E0(v40, v39);
  if (a4)
  {
    v15 = sub_215788D28(0, &qword_280D2B5B0);
    v16 = MEMORY[0x277D22A58];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = MEMORY[0x277D22A58];
  if (a5)
  {
    v18 = sub_215788D28(0, &qword_280D2B5B0);
    v19 = MEMORY[0x277D22A58];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v37 = sub_215788D28(0, &qword_280D2B5B0);
  v38 = v17;
  *&v36 = a3;
  sub_2157A01E0(v39, &v33);
  v31 = MEMORY[0x277D85048];
  v32 = MEMORY[0x277D225F8];
  *&v30 = a9;
  v20 = a5;
  v21 = a3;
  v22 = a4;
  sub_21579F4FC(v39);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_21571DF08(&v30, v34);
  type metadata accessor for OfferIconLayout.Storage();
  v23 = swift_allocObject();
  v24 = v34[0];
  *(v23 + 16) = v33;
  *(v23 + 32) = v24;
  *(v23 + 48) = v34[1];
  *(v23 + 64) = v35;
  sub_21571DF08(&v36, v23 + 72);
  *(v23 + 112) = a4;
  *(v23 + 120) = 0;
  *(v23 + 128) = 0;
  *(v23 + 136) = v15;
  *(v23 + 144) = v16;
  *(v23 + 152) = a5;
  *(v23 + 160) = 0;
  *(v23 + 168) = 0;
  *(v23 + 176) = v18;
  *(v23 + 184) = v19;
  *(v23 + 192) = a7 & 1;
  *(v23 + 193) = a8 & 1;
  v39[3] = &type metadata for OfferIconLayout;
  v39[4] = sub_2157A023C();
  v39[5] = sub_2157A0290();
  v39[0] = v23;
  v25 = objc_allocWithZone(v9);
  sub_21578B2C8(v39, v25 + OBJC_IVAR_____ASCLayoutProxy_base);
  v29.receiver = v25;
  v29.super_class = v9;
  v26 = objc_msgSendSuper2(&v29, sel_init);
  sub_21579F4FC(v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v26;
}

id static ASCLayoutProxy.offerTextLayoutForSize(_:titleBackgroundView:titleView:subtitleView:hasTrailingSubtitle:shouldTopAlign:topPadding:shouldExpandBackground:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, char a7, char a8, double a9)
{
  sub_2157A04EC(a1, a2, v49);
  v16 = MEMORY[0x277D22A68];
  if (a5)
  {
    v17 = sub_215788D28(0, &qword_280D2B5A8);
    v18 = MEMORY[0x277D22A68];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v47 = sub_215788D28(0, &qword_280D2B5B0);
  v48 = MEMORY[0x277D22A58];
  *&v46 = a3;
  v44 = sub_215788D28(0, &qword_280D2B5A8);
  v45 = v16;
  *&v43 = a4;
  sub_2157A02E4(v49, v41);
  v39 = MEMORY[0x277D85048];
  v40 = MEMORY[0x277D225F8];
  *&v38 = a9;
  v19 = a5;
  v20 = a3;
  v21 = a4;
  sub_21579ECCC(v49);
  __swift_destroy_boxed_opaque_existential_1(v42 + 8);
  sub_21571DF08(&v38, v42 + 8);
  type metadata accessor for OfferTextLayout.Storage();
  v22 = swift_allocObject();
  v23 = v41[11];
  v24 = v42[1];
  v25 = v42[2];
  *(v22 + 208) = v42[0];
  *(v22 + 224) = v24;
  *(v22 + 240) = v25;
  v26 = v41[7];
  v27 = v41[9];
  v28 = v41[10];
  *(v22 + 144) = v41[8];
  *(v22 + 160) = v27;
  *(v22 + 176) = v28;
  *(v22 + 192) = v23;
  v29 = v41[5];
  v30 = v41[6];
  *(v22 + 80) = v41[4];
  *(v22 + 96) = v29;
  *(v22 + 112) = v30;
  *(v22 + 128) = v26;
  v31 = v41[1];
  *(v22 + 16) = v41[0];
  *(v22 + 32) = v31;
  v32 = v41[3];
  *(v22 + 48) = v41[2];
  *(v22 + 64) = v32;
  sub_21571DF08(&v46, v22 + 256);
  sub_21571DF08(&v43, v22 + 296);
  *(v22 + 336) = a5;
  *(v22 + 344) = 0;
  *(v22 + 352) = 0;
  *(v22 + 360) = v17;
  *(v22 + 368) = v18;
  *(v22 + 376) = a6 & 1;
  *(v22 + 377) = a7 & 1;
  *(v22 + 378) = a8 & 1;
  v49[3] = &type metadata for OfferTextLayout;
  v49[4] = sub_2157A0340();
  v49[5] = sub_2157A0394();
  v49[0] = v22;
  v33 = objc_allocWithZone(v9);
  sub_21578B2C8(v49, v33 + OBJC_IVAR_____ASCLayoutProxy_base);
  v37.receiver = v33;
  v37.super_class = v9;
  v34 = objc_msgSendSuper2(&v37, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v34;
}

id static ASCLayoutProxy.offerDisclosureLayout(disclosureIndicator:)()
{
  v1 = v0;
  v7[3] = &type metadata for OfferDisclosureLayout;
  v7[4] = sub_2157A03E8();
  v7[0] = swift_allocObject();
  sub_215788D28(0, &qword_280D2B5B0);
  sub_2157A8AE0();
  v6[3] = &type metadata for PlaceableLayoutProxy;
  v6[4] = sub_21579EB74();
  v6[5] = sub_21579EBC8();
  v6[0] = swift_allocObject();
  sub_21579EC1C(v7, v6[0] + 16);
  v2 = objc_allocWithZone(v0);
  sub_21578B2C8(v6, v2 + OBJC_IVAR_____ASCLayoutProxy_base);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_21579EC78(v7);
  return v3;
}

id _s18AppStoreComponents14ASCLayoutProxyC16offerEmptyLayout9imageView05titleJ008subtitleJ0ACSo6UIViewC_AISgAJtFZ_0(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = sub_215788D28(0, &qword_280D2B5B0);
    v7 = MEMORY[0x277D22A58];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = MEMORY[0x277D22A58];
  if (a3)
  {
    v9 = sub_215788D28(0, &qword_280D2B5B0);
    v10 = MEMORY[0x277D22A58];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v21 = sub_215788D28(0, &qword_280D2B5B0);
  v22 = v8;
  *&v20 = a1;
  type metadata accessor for OfferEmptyLayout.Storage();
  v11 = swift_allocObject();
  sub_21571DF08(&v20, (v11 + 2));
  v11[7] = a2;
  v11[8] = 0;
  v11[9] = 0;
  v11[10] = v6;
  v11[11] = v7;
  v11[12] = a3;
  v11[13] = 0;
  v11[14] = 0;
  v11[15] = v9;
  v11[16] = v10;
  v21 = &type metadata for OfferEmptyLayout;
  v22 = sub_2157A043C();
  v23 = sub_2157A0490();
  *&v20 = v11;
  v12 = type metadata accessor for ASCLayoutProxy();
  v13 = objc_allocWithZone(v12);
  sub_21578B2C8(&v20, v13 + OBJC_IVAR_____ASCLayoutProxy_base);
  v19.receiver = v13;
  v19.super_class = v12;
  v14 = a2;
  v15 = a3;
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  return v17;
}

unint64_t sub_2157A023C()
{
  result = qword_280D2B540;
  if (!qword_280D2B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B540);
  }

  return result;
}

unint64_t sub_2157A0290()
{
  result = qword_280D2B538;
  if (!qword_280D2B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B538);
  }

  return result;
}

unint64_t sub_2157A0340()
{
  result = qword_280D2B618;
  if (!qword_280D2B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B618);
  }

  return result;
}

unint64_t sub_2157A0394()
{
  result = qword_280D2B610;
  if (!qword_280D2B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B610);
  }

  return result;
}

unint64_t sub_2157A03E8()
{
  result = qword_27CA71AF0;
  if (!qword_27CA71AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AF0);
  }

  return result;
}

unint64_t sub_2157A043C()
{
  result = qword_280D2B138[0];
  if (!qword_280D2B138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D2B138);
  }

  return result;
}

unint64_t sub_2157A0490()
{
  result = qword_280D2B130;
  if (!qword_280D2B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B130);
  }

  return result;
}

uint64_t sub_2157A04EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2157A93B0();
  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_2157A95F0();
  v13 = v6;

  if (v12)
  {

LABEL_8:
    if (qword_27CA71018 != -1)
    {
      swift_once();
    }

    v14 = &xmmword_27CA71B30;
    goto LABEL_19;
  }

  v15 = sub_2157A93E0();
  v17 = v16;
  if (v15 == sub_2157A93E0() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_2157A95F0();

    if ((v19 & 1) == 0)
    {
      sub_2157A9550();

      MEMORY[0x216070240](a1, a2);
      result = sub_2157A95A0();
      __break(1u);
      return result;
    }
  }

  if (qword_280D2B658 != -1)
  {
    swift_once();
  }

  v14 = &xmmword_280D2B660;
LABEL_19:

  return sub_2157A02E4(v14, a3);
}

uint64_t sub_2157A074C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2157A93B0();
  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_2157A95F0();
  v13 = v6;

  if (v12)
  {

LABEL_8:
    if (qword_27CA71028 != -1)
    {
      swift_once();
    }

    v14 = &xmmword_27CA71C58;
    goto LABEL_19;
  }

  v15 = sub_2157A93E0();
  v17 = v16;
  if (v15 == sub_2157A93E0() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_2157A95F0();

    if ((v19 & 1) == 0)
    {
      sub_2157A9550();

      MEMORY[0x216070240](a1, a2);
      result = sub_2157A95A0();
      __break(1u);
      return result;
    }
  }

  if (qword_27CA71010 != -1)
  {
    swift_once();
  }

  v14 = &xmmword_27CA71AF8;
LABEL_19:

  return sub_2157A01E0(v14, a3);
}

uint64_t sub_2157A09AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2157A93B0();
  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_2157A95F0();
  v13 = v6;

  if (v12)
  {

LABEL_8:
    if (qword_27CA71020 != -1)
    {
      swift_once();
    }

    v14 = &xmmword_27CA71C20;
    goto LABEL_19;
  }

  v15 = sub_2157A93E0();
  v17 = v16;
  if (v15 == sub_2157A93E0() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_2157A95F0();

    if ((v19 & 1) == 0)
    {
      sub_2157A9550();

      MEMORY[0x216070240](a1, a2);
      result = sub_2157A95A0();
      __break(1u);
      return result;
    }
  }

  if (qword_280D2B548 != -1)
  {
    swift_once();
  }

  v14 = &xmmword_280D2B550;
LABEL_19:

  return sub_2157A01E0(v14, a3);
}

double sub_2157A0C0C()
{
  qword_280D2B6C8 = MEMORY[0x277D839F8];
  unk_280D2B6D0 = MEMORY[0x277D22A30];
  qword_280D2B6B0 = 0x4028000000000000;
  qword_280D2B6F0 = MEMORY[0x277D839F8];
  unk_280D2B6F8 = MEMORY[0x277D22A30];
  qword_280D2B6D8 = 0x4008000000000000;
  qword_280D2B718 = MEMORY[0x277D839F8];
  unk_280D2B720 = MEMORY[0x277D22A30];
  qword_280D2B700 = 0x4050000000000000;
  qword_280D2B740 = MEMORY[0x277D839F8];
  unk_280D2B748 = MEMORY[0x277D22A30];
  qword_280D2B728 = 0;
  xmmword_280D2B660 = xmmword_2157B3C10;
  *algn_280D2B670 = xmmword_2157B3C10;
  xmmword_280D2B680 = xmmword_2157B3C10;
  unk_280D2B690 = xmmword_2157B3C10;
  result = 74.0;
  xmmword_280D2B6A0 = xmmword_2157B3B50;
  return result;
}

double sub_2157A0C70()
{
  qword_280D2B578 = MEMORY[0x277D839F8];
  unk_280D2B580 = MEMORY[0x277D22A30];
  qword_280D2B560 = 0;
  result = 74.0;
  xmmword_280D2B550 = xmmword_2157B3C20;
  return result;
}

__n128 sub_2157A0CA0()
{
  qword_27CA71B20 = MEMORY[0x277D839F8];
  unk_27CA71B28 = MEMORY[0x277D22A30];
  qword_27CA71B08 = 0;
  __asm { FMOV            V0.2D, #28.0 }

  xmmword_27CA71AF8 = result;
  return result;
}

double sub_2157A0CCC()
{
  qword_27CA71B98 = MEMORY[0x277D839F8];
  unk_27CA71BA0 = MEMORY[0x277D22A30];
  qword_27CA71B80 = 0x4028000000000000;
  qword_27CA71BC0 = MEMORY[0x277D839F8];
  unk_27CA71BC8 = MEMORY[0x277D22A30];
  qword_27CA71BA8 = 0x4008000000000000;
  qword_27CA71BE8 = MEMORY[0x277D839F8];
  unk_27CA71BF0 = MEMORY[0x277D22A30];
  qword_27CA71BD0 = 0x4050000000000000;
  qword_27CA71C10 = MEMORY[0x277D839F8];
  unk_27CA71C18 = MEMORY[0x277D22A30];
  qword_27CA71BF8 = 0;
  xmmword_27CA71B30 = xmmword_2157B3C10;
  unk_27CA71B40 = xmmword_2157B3C10;
  xmmword_27CA71B50 = xmmword_2157B3C10;
  unk_27CA71B60 = xmmword_2157B3C10;
  result = 74.0;
  xmmword_27CA71B70 = xmmword_2157B3C30;
  return result;
}

double sub_2157A0D30()
{
  qword_27CA71C48 = MEMORY[0x277D839F8];
  unk_27CA71C50 = MEMORY[0x277D22A30];
  qword_27CA71C30 = 0;
  result = 74.0;
  xmmword_27CA71C20 = xmmword_2157B3C30;
  return result;
}

double sub_2157A0D60()
{
  qword_27CA71C80 = MEMORY[0x277D839F8];
  unk_27CA71C88 = MEMORY[0x277D22A30];
  qword_27CA71C68 = 0;
  result = 28.0;
  xmmword_27CA71C58 = xmmword_2157B3C40;
  return result;
}

double sub_2157A0D90()
{
  qword_27CA71CC8 = MEMORY[0x277D839F8];
  unk_27CA71CD0 = MEMORY[0x277D22A30];
  qword_27CA71CB0 = 0x4042800000000000;
  result = 0.0;
  xmmword_27CA71C90 = xmmword_2157B3C50;
  unk_27CA71CA0 = xmmword_2157B3C50;
  return result;
}

id _s18AppStoreComponents14ASCLayoutProxyC17tvTextPillOverlay14backgroundView04textK0ACSo6UIViewC_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ASCLayoutProxy();
  if (qword_27CA71030 != -1)
  {
    swift_once();
  }

  sub_2157A1048(&xmmword_27CA71C90, v18);
  v20 = sub_2157A10A4();
  v21 = MEMORY[0x277D22A58];
  v19 = a1;
  v23 = v20;
  v24 = MEMORY[0x277D22A58];
  v22 = a2;
  v17[3] = sub_2157A8F20();
  v17[4] = MEMORY[0x277D227C0];
  __swift_allocate_boxed_opaque_existential_1(v17);
  v5 = a1;
  v6 = a2;
  sub_2157A8F30();
  sub_2157A10F0();
  sub_2157A9270();
  sub_2157A1144(v18);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v10 = __swift_mutable_project_boxed_opaque_existential_2(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = sub_215792A48(v13, v4, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v15;
}

unint64_t sub_2157A10A4()
{
  result = qword_280D2B5B0;
  if (!qword_280D2B5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D2B5B0);
  }

  return result;
}

unint64_t sub_2157A10F0()
{
  result = qword_27CA71CD8;
  if (!qword_27CA71CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CD8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

double sub_2157A1208(double a1)
{
  v3 = sub_2157A94B0();
  v4 = 40;
  if ((v3 & 1) == 0)
  {
    v4 = 0;
  }

  sub_21578326C(v1 + v4, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2157A8BC0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2157A12D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A1318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2157A1370()
{
  v0 = sub_2157A8DD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2157A8DB0();
  sub_2157A8DC0();
  return (*(v1 + 8))(v3, v0);
}

double sub_2157A146C()
{
  v0 = sub_2157A8DD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  sub_2157A8DB0();
  sub_2157A8DC0();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_2157A9370();
  v9 = v8;
  v7(v6, v0);
  return v9;
}

uint64_t sub_2157A15FC()
{
  v0 = sub_2157A8DD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_2157A8DB0();
  sub_2157A8DC0();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_2157A9360();
  return (v7)(v6, v0);
}

uint64_t sub_2157A177C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2157A1848();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_2157A17D8()
{
  result = qword_27CA71CE0;
  if (!qword_27CA71CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CE0);
  }

  return result;
}

unint64_t sub_2157A1848()
{
  result = qword_27CA71CE8;
  if (!qword_27CA71CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CE8);
  }

  return result;
}

uint64_t sub_2157A189C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2157A1908(v0 + 56);
  sub_2157A1908(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_2157A1908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2157A1980(uint64_t a1, uint64_t a2)
{
  sub_2157A94E0();
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_2157A8A90();
  sub_2157A1AF4(a2 + 56, v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_2157A1908(v4);
  }

  sub_2157A1AF4(a2 + 96, v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_2157A1908(v4);
  }

  return sub_2157A8A10();
}

uint64_t sub_2157A1AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2157A1B64()
{
  sub_21579F4FC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  sub_2157A1908(v0 + 112);
  sub_2157A1908(v0 + 152);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2157A1C04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A1C4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2157A1CA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2157A95E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2157A01E0(a2 + 16, v9);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_21579F1CC();
  sub_2157A8BB0();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
  return sub_2157A8AC0();
}

uint64_t sub_2157A1E48(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2157A95E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a6 + 72), *(a6 + 96));
  sub_2157A8AC0();
  v16 = v15;
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  if (v16 < CGRectGetHeight(v27) && *(a6 + 192) == 1)
  {
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    CGRectGetMinY(v28);
    sub_2157A01E0(a6 + 16, v23);
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    sub_21579F1CC();
    sub_2157A8BB0();
    (*(v12 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    CGRectGetMidY(v29);
  }

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  if (*(a6 + 193) == 1)
  {
    CGRectGetMaxX(*&v17);
  }

  else
  {
    CGRectGetMidX(*&v17);
  }

  __swift_project_boxed_opaque_existential_1((a6 + 72), *(a6 + 96));
  sub_2157A94E0();
  sub_2157A8A90();
  sub_2157A94E0();
  sub_2157A1AF4(a6 + 112, v23);
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v23, v25);
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_2157A1908(v23);
  }

  sub_2157A1AF4(a6 + 152, v23);
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v23, v25);
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_2157A1908(v23);
  }

  return sub_2157A89E0();
}

uint64_t sub_2157A2224()
{
  v1 = *v0;
  sub_2157A9610();
  MEMORY[0x216070460](v1);
  return sub_2157A9630();
}

uint64_t sub_2157A2298()
{
  v1 = *v0;
  sub_2157A9610();
  MEMORY[0x216070460](v1);
  return sub_2157A9630();
}

uint64_t sub_2157A22DC()
{
  sub_21579ECCC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  sub_2157A3484(v0 + 336);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for OfferTextLayout.BackgroundContentMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OfferTextLayout.BackgroundContentMode(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_2157A2514(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A255C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2157A25E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2157A95E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + 216), *(a2 + 240));
  sub_21579F1CC();
  sub_2157A8BB0();
  v13[1] = v7;
  v8 = *(v4 + 8);
  v8(v6, v3);
  __swift_project_boxed_opaque_existential_1((a2 + 296), *(a2 + 320));
  sub_2157A8AC0();
  sub_21578B32C(a2 + 336, &v14);
  if (!v15)
  {
    return sub_2157A3484(&v14);
  }

  sub_215783890(&v14, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if ((sub_2157A8A60() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  if (*(a2 + 376) == 1)
  {
    __swift_project_boxed_opaque_existential_1((a2 + 176), *(a2 + 200));
    sub_21579F1CC();
    sub_2157A8BB0();
    v8(v6, v3);
    __swift_project_boxed_opaque_existential_1(v16, v17);
    sub_2157A8AC0();
    __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
    sub_2157A8BD0();
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (sub_2157A8D20() != 1)
  {
    __swift_project_boxed_opaque_existential_1(v16, v17);
    sub_2157A8AC0();
    __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
    sub_2157A8BD0();
    __swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
    sub_2157A8B80();
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  sub_21578326C(a2 + 96, &v14);
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  result = sub_2157A8D40();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  sub_2157A8B90();

  __swift_destroy_boxed_opaque_existential_1(&v14);
  sub_21578326C(a2 + 136, &v14);
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  result = sub_2157A8D40();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = result;
  sub_2157A8BA0();

  __swift_destroy_boxed_opaque_existential_1(&v14);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  result = sub_2157A8D40();
  if (result)
  {
    v12 = result;
    [result lineHeight];

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2157A2B00(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  sub_2157A9510();
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetWidth(v12);
}

uint64_t sub_2157A2BC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v74 = a3;
  v13 = sub_2157A95E0();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 traitCollection];
  v73 = [v18 layoutDirection];

  sub_2157A9500();
  __swift_project_boxed_opaque_existential_1((a2 + 296), *(a2 + 320));
  sub_2157A8AC0();
  v71 = v19;
  v72 = v20;
  sub_2157A2B00(v19, v20, v21, v22, a4, a5, a6, a7);
  width = v23;
  v76.size.height = v25;
  sub_21578B32C(a2 + 336, &v77);
  v76.size.width = width;
  if (v78)
  {
    sub_215783890(&v77, v79);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    if (sub_2157A8A60())
    {
      if (*(a2 + 376) == 1)
      {
        __swift_project_boxed_opaque_existential_1((a2 + 176), *(a2 + 200));
        sub_21579F1CC();
        sub_2157A8BB0();
        (*(v14 + 8))(v17, v13);
        v81.origin.x = a4;
        v81.origin.y = a5;
        v81.size.width = a6;
        v81.size.height = a7;
        CGRectGetHeight(v81);
      }

      __swift_project_boxed_opaque_existential_1(v79, v80);
      sub_2157A8AC0();
      v27 = v26;
      v29 = v28;
      __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
      sub_2157A8BD0();
      v65 = v30;
      __swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
      v70 = v27;
      v69 = v29;
      sub_2157A8B80();
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_1(v79);
      width = v76.size.width;
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  else
  {
    sub_2157A3484(&v77);
  }

  v33 = *(MEMORY[0x277D22A78] + 8);
  v70 = *MEMORY[0x277D22A78];
  v69 = v33;
  v32 = 0.0;
  v65 = 0.0;
LABEL_9:
  v34 = *(a2 + 376);
  v35 = a6;
  if (v34 & 1) != 0 || (*(a2 + 377))
  {
    goto LABEL_14;
  }

  v36 = v69;
  v37 = v32 + v69 + v76.size.height + v65;
  v82.origin.x = a4;
  v82.origin.y = a5;
  v82.size.width = a6;
  v82.size.height = a7;
  if (v37 < CGRectGetHeight(v82))
  {
    v38 = 1;
    goto LABEL_15;
  }

  if ((*&v36 & 0x7FF0000000000000) != 0)
  {
LABEL_14:
    v38 = 0;
  }

  else
  {
    v38 = (*&v36 & 0xFFFFFFFFFFFFFLL) == 0;
  }

LABEL_15:
  __swift_project_boxed_opaque_existential_1((a2 + 216), *(a2 + 240));
  sub_21579F1CC();
  sub_2157A8BB0();
  v40 = v39;
  (*(v14 + 8))(v17, v13);
  v41 = a4;
  v42 = a5;
  if ((v34 & 1) == 0)
  {
    v43 = a4;
    v44 = a5;
    v45 = v35;
    v46 = a7;
    if (v38)
    {
      v42 = floor(CGRectGetMidY(*&v43) + v76.size.height * -0.5);
    }

    else
    {
      v42 = v40 + CGRectGetMinY(*&v43);
    }

    v83.origin.x = a4;
    v83.origin.y = a5;
    v83.size.width = v35;
    v83.size.height = a7;
    v41 = floor(CGRectGetMidX(v83) + width * -0.5);
  }

  __swift_project_boxed_opaque_existential_1((a2 + 256), *(a2 + 280));
  v75 = a5;
  height = v76.size.height;
  sub_2157A94F0();
  sub_2157A8A90();
  v84.origin.x = v41;
  v84.origin.y = v42;
  v84.size.width = width;
  v84.size.height = height;
  CGRectGetMidX(v84);
  v85.size.width = width;
  v85.origin.y = v42;
  v76.origin.x = v41;
  v85.origin.x = v41;
  v76.origin.y = v42;
  v85.size.height = height;
  v48 = v75;
  CGRectGetMidY(v85);
  __swift_project_boxed_opaque_existential_1((a2 + 296), *(a2 + 320));
  v67 = v35;
  v68 = a7;
  sub_2157A94F0();
  sub_2157A8A90();
  v49 = v70;
  v50 = 0.0;
  v66 = a4;
  if (fabs(v70) < COERCE_DOUBLE(1))
  {
    v52 = a4;
    v53 = v48;
    v54 = 0.0;
  }

  else
  {
    v51 = v69;
    v52 = a4;
    v53 = v48;
    v54 = 0.0;
    if (fabs(v69) >= COERCE_DOUBLE(1))
    {
      if (v34)
      {
        x = v76.origin.x;
        y = v76.origin.y;
        v56 = v76.size.width;
        v58 = v69;
        v59 = v76.size.height;
        v52 = v65 + CGRectGetMaxX(v76);
        v86.origin.x = x;
        v86.origin.y = y;
        v86.size.width = v56;
        v86.size.height = v59;
        v53 = floor(CGRectGetMidY(v86) + v58 * -0.5);
        v50 = v49;
        v54 = v58;
      }

      else
      {
        v60 = v76.origin.x;
        v62 = v76.origin.y;
        v61 = v76.size.width;
        v63 = v76.size.height;
        if (CGRectGetWidth(v76) >= v49)
        {
          v88.origin.x = v60;
          v88.origin.y = v62;
          v88.size.width = v61;
          v88.size.height = v63;
          v52 = floor(CGRectGetMidX(v88) + v49 * -0.5);
        }

        else
        {
          v87.origin.x = v66;
          v87.origin.y = v48;
          v87.size.width = v67;
          v87.size.height = v68;
          v52 = CGRectGetMaxX(v87) - v49;
        }

        v89.origin.x = v60;
        v89.origin.y = v62;
        v89.size.width = v61;
        v89.size.height = v63;
        v53 = v65 + CGRectGetMaxY(v89);
        v50 = v49;
        v54 = v51;
      }
    }
  }

  sub_21578B32C(a2 + 336, v79);
  if (v80)
  {
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_2157A94F0();
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  else
  {
    sub_2157A3484(v79);
  }

  v90.origin.x = v52;
  v90.origin.y = v53;
  v90.size.width = v50;
  v90.size.height = v54;
  CGRectUnion(v76, v90);
  return sub_2157A89E0();
}

unint64_t sub_2157A3404(uint64_t a1)
{
  result = sub_2157A0394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2157A3430()
{
  result = qword_27CA71CF0;
  if (!qword_27CA71CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CF0);
  }

  return result;
}

uint64_t sub_2157A3484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2157A34EC(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 296), *(a1 + 320));
  v1 = sub_2157A8D40();
  if (v1)
  {
    v2 = v1;
    [v1 lineHeight];
  }

  else
  {
    __break(1u);
  }
}

uint64_t CenteredThreeLineReverseTextLayout.init(primaryText:secondaryText:primarySpace:numberOfLines:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21571DF08(a1, a5);
  sub_21571DF08(a2, a5 + 40);
  result = sub_21571DF08(a3, a5 + 80);
  *(a5 + 120) = a4;
  return result;
}

uint64_t CenteredThreeLineReverseTextLayout.primaryText.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_21571DF08(a1, v1);
}

uint64_t CenteredThreeLineReverseTextLayout.secondaryText.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_21571DF08(a1, v1 + 40);
}

uint64_t CenteredThreeLineReverseTextLayout.primarySpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_21571DF08(a1, v1 + 80);
}

uint64_t CenteredThreeLineReverseTextLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  if (sub_2157A8D00() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]), (sub_2157A8D00()))
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_2157A8AC0();
    v10 = v9;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_2157A8AC0();
    v10 = v11;
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_2157A8D50();
    sub_21578326C((v4 + 5), v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_2157A8D30();
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_2157A8AC0();
  v13 = v12;
  v15 = v14;
  v23 = v10;
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_2157A8BD0();
  v26 = v16;
  v17 = v10 + v13 - v15 + v16;
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = (CGRectGetHeight(v29) - v17) * 0.5;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  v22 = CGRectGetMinY(v30) + v18;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  MinX = CGRectGetMinX(v31);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  Width = CGRectGetWidth(v32);
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_2157A8A90();
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  v25 = CGRectGetMinX(v33);
  v34.origin.x = MinX;
  v34.origin.y = v22;
  v34.size.width = Width;
  v34.size.height = v13;
  v24 = v26 + CGRectGetMaxY(v34) - v15;
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  v27 = CGRectGetWidth(v35);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2157A8A90();
  v36.origin.x = MinX;
  v36.origin.y = v22;
  v36.size.width = Width;
  v36.size.height = v13;
  CGRectGetMinY(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetMinY(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetMinX(v38);
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetMinY(v39);
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  CGRectGetWidth(v40);
  v41.origin.y = v24;
  v41.origin.x = v25;
  v41.size.width = v27;
  v41.size.height = v23;
  CGRectGetMaxY(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  CGRectGetMinY(v42);
  return sub_2157A89F0();
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2157A3C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A3CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2157A3D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A3DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2157A3E50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2157A3E80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2157A3EAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2157A3F84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2157A3FB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2157A42EC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2157A3FF4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2157A8AC0();
  v10 = v4[5];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if (v10)
  {
    CGRectGetMidX(*&v11);
  }

  else
  {
    CGRectGetMinX(*&v11);
  }

  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  if ((v10 & 2) != 0)
  {
    CGRectGetMidY(*&v15);
  }

  else
  {
    CGRectGetMinY(*&v15);
  }

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2157A94E0();
  sub_2157A8A90();

  return sub_2157A89E0();
}

unint64_t sub_2157A4190()
{
  result = qword_27CA71CF8;
  if (!qword_27CA71CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CF8);
  }

  return result;
}

unint64_t sub_2157A41E8()
{
  result = qword_27CA71D00;
  if (!qword_27CA71D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71D00);
  }

  return result;
}

unint64_t sub_2157A4240()
{
  result = qword_27CA71D08;
  if (!qword_27CA71D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71D08);
  }

  return result;
}

unint64_t sub_2157A4298()
{
  result = qword_27CA71D10;
  if (!qword_27CA71D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71D10);
  }

  return result;
}

uint64_t sub_2157A42EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2157A436C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = [a1 traitCollection];
  sub_2157A9360();

  return sub_2157A89E0();
}

double sub_2157A4434(void *a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = [a1 traitCollection];
  sub_2157A9370();
  v5 = v4;

  return v5;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2157A4510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A4558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2157A45F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A4638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2157A4698(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v29 = a1;
  v30 = a2;
  v7 = sub_2157A95E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
  sub_2157A8AC0();
  v12 = v11;
  *&v28[2] = v11;
  v14 = v13;
  v15 = *(v4 + 8);
  v16 = *(v4 + 24);
  sub_2157A1048(v4, v31);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v32);
  *&v28[3] = v14;
  if (v14 > v18)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v20 = v12 + v15 + v16;
  v22 = v29;
  v21 = v30;
  v33.origin.x = v29;
  v33.origin.y = v30;
  v23 = a3;
  v33.size.width = a3;
  v24 = a4;
  v33.size.height = a4;
  v25 = CGRectGetMaxX(v33) - v20;
  v34.origin.x = v22;
  v34.origin.y = v21;
  v34.size.width = v23;
  *v28 = v23;
  v34.size.height = v24;
  *&v28[1] = v24;
  v26 = CGRectGetMaxY(v34) - v19;
  __swift_project_boxed_opaque_existential_1((v4 + 72), *(v4 + 96));
  sub_2157A94E0();
  sub_2157A8A90();
  v35.origin.x = v25;
  v35.origin.y = v26;
  v35.size.width = v20;
  v35.size.height = v19;
  CGRectGetMidX(v35);
  v36.origin.x = v25;
  v36.origin.y = v26;
  v36.size.width = v20;
  v36.size.height = v19;
  CGRectGetMidY(v36);
  __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
  sub_2157A94E0();
  sub_2157A8A90();
  return sub_2157A89E0();
}

void ASCLockupImageStringForName_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find image %@ for lockup text", &v1, 0xCu);
}

void __ASCSignpostTagCreateForProcess_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = 136446466;
  v3 = "ASCSignpostTag ASCSignpostTagCreateForProcess(uint64_t, pid_t)_block_invoke";
  v4 = 2050;
  v5 = v1;
  _os_log_fault_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "*** %{public}s: Value %{public}llul exceeds 47 bits, break on _ASCSignpostTag_valueTooLarge to debug", &v2, 0x16u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}