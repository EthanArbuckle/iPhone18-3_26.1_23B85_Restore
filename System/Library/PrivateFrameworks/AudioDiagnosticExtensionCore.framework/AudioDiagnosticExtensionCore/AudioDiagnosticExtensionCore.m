uint64_t createZipFor(directory:at:fileLimit:)@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v145) = a3;
  v135 = a4;
  v148[2] = *MEMORY[0x277D85DE8];
  v6 = sub_24158CBDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v146 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v132 = &v128 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v128 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v136 = &v128 - v16;
  MEMORY[0x28223BE20](v15);
  v140 = &v128 - v17;
  v147 = sub_24158CC2C();
  v18 = *(v147 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v147);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24158CC5C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_opt_self() defaultManager];
  sub_24158CC4C();
  v144 = a1;
  if (sub_241586E64(a1, a2, v27))
  {
    v133 = v7;
    v139 = v26;
    v131 = v23;
    v130 = v22;
    v137 = v6;
    v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v29 = sub_24158CC8C();
    [v28 setDateFormat_];

    sub_24158CC1C();
    v30 = sub_24158CBFC();
    (*(v18 + 8))(v21, v147);
    v31 = [v28 stringFromDate_];

    v32 = sub_24158CCBC();
    v34 = v33;

    v148[0] = 0x72756F4874736170;
    v148[1] = 0xE90000000000005FLL;
    MEMORY[0x245CEA040](v32, v34);

    v35 = v140;
    sub_24158CB8C();

    v36 = sub_24158CB7C();
    v148[0] = 0;
    v37 = [v27 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v148];

    v38 = v27;
    if (v37)
    {
      v39 = v148[0];
      v40 = v139;
      v41 = sub_241587328(v144, v27, v139, v145);
      v43 = *(v41 + 16);
      v44 = v131;
      if (v43)
      {
        v129 = v28;
        v145 = v27;
        v45 = *(v133 + 16);
        v46 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v128 = v41;
        v47 = v41 + v46;
        v141 = *(v133 + 72);
        v144 = (v133 + 8);
        *&v42 = 136315394;
        v134 = v42;
        v48 = v137;
        v49 = v138;
        v50 = v136;
        v143 = v133 + 16;
        v142 = v45;
        v51 = v140;
        do
        {
          v147 = v43;
          v45(v50, v47, v48);
          sub_24158CB6C();
          sub_24158CB9C();

          v55 = sub_24158CB7C();
          v56 = sub_24158CB7C();
          v148[0] = 0;
          v57 = v50;
          v58 = v49;
          v59 = [v145 moveItemAtURL:v55 toURL:v56 error:{v148, v128}];

          if (v59)
          {
            v52 = *v144;
            v53 = v148[0];
            v52(v58, v48);
            v52(v57, v48);
            v54 = v52;
            v49 = v58;
            v50 = v57;
          }

          else
          {
            v60 = v148[0];
            v61 = sub_24158CB2C();

            swift_willThrow();
            v45(v146, v57, v48);
            v62 = v61;
            v63 = sub_24158CC3C();
            v64 = sub_24158CDBC();
            MEMORY[0x245CEA480](v61);
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v148[0] = v66;
              *v65 = v134;
              v67 = sub_24158CBCC();
              v69 = v68;
              v70 = *v144;
              (*v144)(v146, v137);
              v71 = sub_241589774(v67, v69, v148);

              *(v65 + 4) = v71;
              *(v65 + 12) = 2080;
              swift_getErrorValue();
              v72 = sub_24158CEBC();
              v74 = sub_241589774(v72, v73, v148);

              *(v65 + 14) = v74;
              _os_log_impl(&dword_241585000, v63, v64, "Failed to move file: %s - %s", v65, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x245CEA560](v66, -1, -1);
              v75 = v65;
              v50 = v136;
              v48 = v137;
              MEMORY[0x245CEA560](v75, -1, -1);

              v54 = v70;
              MEMORY[0x245CEA480](v61);
              v49 = v138;
              v70(v138, v48);
              v70(v50, v48);
            }

            else
            {
              v50 = v57;

              MEMORY[0x245CEA480](v61);
              v54 = *v144;
              (*v144)(v146, v48);
              v49 = v138;
              v54(v138, v48);
              v54(v57, v48);
            }

            v51 = v140;
          }

          v47 += v141;
          v43 = (v147 - 1);
          v45 = v142;
        }

        while (v147 != 1);
        v96 = v48;
        v147 = v54;

        v97 = v51;
        v98 = v132;
        sub_24158CBAC();
        v99 = v139;
        v100 = sub_2415886A0(v97, v98, v139);
        v101 = sub_24158CB7C();
        v148[0] = 0;
        v102 = v145;
        v103 = [v145 removeItemAtURL:v101 error:v148];

        if (v103)
        {
          v104 = v148[0];

          v105 = v147;
          v147(v97, v96);
          (*(v131 + 8))(v99, v130);
          v106 = v133;
        }

        else
        {
          LODWORD(v146) = v100;
          v110 = v148[0];
          v111 = sub_24158CB2C();

          swift_willThrow();
          v112 = sub_24158CBCC();
          v114 = v113;
          swift_getErrorValue();
          v115 = sub_24158CEBC();
          v117 = v116;

          v118 = sub_24158CC3C();
          v119 = sub_24158CDBC();

          v120 = os_log_type_enabled(v118, v119);
          v106 = v133;
          if (v120)
          {
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v148[0] = v122;
            *v121 = v134;
            v123 = sub_241589774(v112, v114, v148);

            *(v121 + 4) = v123;
            *(v121 + 12) = 2080;
            v124 = sub_241589774(v115, v117, v148);

            *(v121 + 14) = v124;
            _os_log_impl(&dword_241585000, v118, v119, "Failed to remove temp folder: %s  - %s", v121, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245CEA560](v122, -1, -1);
            v125 = v121;
            v98 = v132;
            MEMORY[0x245CEA560](v125, -1, -1);

            MEMORY[0x245CEA480](v111);
            v96 = v137;
            v105 = v147;
            (v147)(v140);
            (*(v131 + 8))(v139, v130);
          }

          else
          {

            MEMORY[0x245CEA480](v111);

            v96 = v137;
            v105 = v147;
            (v147)(v140);
            (*(v131 + 8))(v99, v130);
          }

          LOBYTE(v100) = v146;
        }

        v126 = v135;
        if (v100)
        {
          (*(v106 + 32))(v135, v98, v96);
          result = (*(v106 + 56))(v126, 0, 1, v96);
        }

        else
        {
          v105(v98, v96);
          result = (*(v106 + 56))(v126, 1, 1, v96);
        }
      }

      else
      {

        v108 = v133;
        v109 = v137;
        (*(v133 + 8))(v140, v137);
        (*(v44 + 8))(v40, v130);
        result = (*(v108 + 56))(v135, 1, 1, v109);
      }
    }

    else
    {
      v77 = v133;
      v129 = v28;
      v145 = v38;
      v78 = v148[0];
      v79 = sub_24158CB2C();

      swift_willThrow();
      v80 = sub_24158CBCC();
      v82 = v81;
      swift_getErrorValue();
      v83 = sub_24158CEBC();
      v85 = v84;

      v86 = v139;
      v87 = sub_24158CC3C();
      v88 = sub_24158CDBC();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v148[0] = v90;
        *v89 = 136315394;
        v91 = sub_241589774(v80, v82, v148);

        *(v89 + 4) = v91;
        *(v89 + 12) = 2080;
        v92 = sub_241589774(v83, v85, v148);

        *(v89 + 14) = v92;
        _os_log_impl(&dword_241585000, v87, v88, "Failed to create temp folder %s - %s", v89, 0x16u);
        swift_arrayDestroy();
        v93 = v133;
        MEMORY[0x245CEA560](v90, -1, -1);
        MEMORY[0x245CEA560](v89, -1, -1);

        MEMORY[0x245CEA480](v79);
        v94 = *(v93 + 8);
        v95 = v140;
      }

      else
      {

        MEMORY[0x245CEA480](v79);

        v93 = v77;
        v94 = *(v77 + 8);
        v95 = v35;
      }

      v107 = v137;
      v94(v95, v137);
      (*(v131 + 8))(v86, v130);
      result = (*(v93 + 56))(v135, 1, 1, v107);
    }
  }

  else
  {
    (*(v23 + 8))(v26, v22);

    result = (*(v7 + 56))(v135, 1, 1, v6);
  }

  v127 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_241586E64(uint64_t a1, uint64_t a2, void *a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v6 = sub_24158CBDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  sub_24158CBCC();
  v14 = sub_24158CC8C();

  v15 = [a3 fileExistsAtPath_];

  if (!v15)
  {
    (*(v7 + 16))(v13, a1, v6);
    v20 = sub_24158CC3C();
    v21 = sub_24158CDAC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46[0] = v23;
      *v22 = 136315138;
      sub_24158BAA0(&qword_27E548490, MEMORY[0x277CC9260]);
      v24 = sub_24158CE9C();
      v26 = v25;
      (*(v7 + 8))(v13, v6);
      v27 = sub_241589774(v24, v26, v46);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_241585000, v20, v21, "Source directory does not exist: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x245CEA560](v23, -1, -1);
      MEMORY[0x245CEA560](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    goto LABEL_10;
  }

  v16 = sub_24158CB7C();
  v46[0] = 0;
  v17 = [a3 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v46];

  if (!v17)
  {
    v28 = v46[0];
    v29 = sub_24158CB2C();

    swift_willThrow();
    swift_getErrorValue();
    v30 = sub_24158CEBC();
    v32 = v31;
    (*(v7 + 16))(v11, a2, v6);
    v33 = sub_24158CC3C();
    v34 = sub_24158CDBC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46[0] = v45;
      *v35 = 136315394;
      v36 = sub_24158CBCC();
      v44 = v30;
      v38 = v37;
      (*(v7 + 8))(v11, v6);
      v39 = sub_241589774(v36, v38, v46);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = sub_241589774(v44, v32, v46);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_241585000, v33, v34, "Failed to create destination: %s - %s", v35, 0x16u);
      v41 = v45;
      swift_arrayDestroy();
      MEMORY[0x245CEA560](v41, -1, -1);
      MEMORY[0x245CEA560](v35, -1, -1);

      MEMORY[0x245CEA480](v29);
    }

    else
    {

      MEMORY[0x245CEA480](v29);

      (*(v7 + 8))(v11, v6);
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v18 = v46[0];
  result = 1;
LABEL_11:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_241587328(id a1, void *a2, uint64_t a3, int a4)
{
  LODWORD(v152) = a4;
  v145 = a3;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v163 = *(v160 - 8);
  v6 = *(v163 + 64);
  v7 = MEMORY[0x28223BE20](v160);
  v159 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v158 = &v124 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v157 = &v124 - v12;
  MEMORY[0x28223BE20](v11);
  v138 = &v124 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484E0, &qword_24158D318);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v140 = &v124 - v16;
  v141 = sub_24158CB1C();
  v17 = *(v141 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v141);
  v153 = (&v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484E8, &qword_24158D320);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v124 - v22;
  v24 = sub_24158CBDC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  v27 = MEMORY[0x28223BE20](v24);
  v142 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v162 = &v124 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v156 = &v124 - v32;
  MEMORY[0x28223BE20](v31);
  v161 = &v124 - v33;
  v147 = sub_24158CB4C();
  v146 = *(v147 - 8);
  v34 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v165 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24158CC2C();
  v151 = *(v36 - 8);
  v37 = *(v151 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v139 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v124 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v124 - v43;
  sub_24158CC1C();
  v150 = v42;
  v149 = v44;
  sub_24158CBEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484F0, &qword_24158D328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24158D2E0;
  v46 = *MEMORY[0x277CBE8A8];
  *(inited + 32) = *MEMORY[0x277CBE8A8];
  v47 = *MEMORY[0x277CBE7C0];
  *(inited + 40) = *MEMORY[0x277CBE7C0];
  v48 = v46;
  v49 = v47;
  v50 = sub_24158B5D4(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v51 = *(v50 + 16);
  v164 = v25;
  v155 = v50;
  if (v51)
  {
    v143 = v17;
    v144 = a2;
    v148 = a1;
    v52 = v36;
    v25 = v24;
    v53 = sub_2415896F0(v51, 0);
    v154 = sub_24158B480(&v167, v53 + 4, v51, v50);
    v24 = v168;
    v36 = v169;

    sub_24158B9D0();
    if (v154 != v51)
    {
      goto LABEL_51;
    }

    v24 = v25;
    v25 = v164;
    v36 = v52;
    a1 = v148;
    v17 = v143;
  }

  v54 = sub_24158CD9C();

  v55 = v161;
  if (v54)
  {
    v148 = v54;
    sub_24158CD8C();
    sub_24158CB3C();
    v52 = MEMORY[0x277D84F90];
    if (v170)
    {
      v154 = 0;
      v57 = (v25 + 56);
      v143 = (v25 + 32);
      v136 = (v25 + 16);
      v137 = (v25 + 8);
      v135 = (v17 + 1);
      v132 = (v151 + 48);
      v131 = (v151 + 32);
      v129 = (v151 + 16);
      v130 = (v151 + 8);
      *&v56 = 136315394;
      v134 = v56;
      v58 = v153;
      while (1)
      {
        v59 = swift_dynamicCast();
        v60 = *v57;
        if (v59)
        {
          v60(v23, 0, 1, v24);
          (*v143)(v55, v23, v24);
          v61 = v154;
          sub_24158CB5C();
          if (v61)
          {
            v144 = v52;
            swift_getErrorValue();
            v128 = sub_24158CEBC();
            v133 = v62;
            v63 = v142;
            (*v136)(v142, v161, v24);
            v64 = v61;
            v65 = sub_24158CC3C();
            v66 = sub_24158CDBC();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              v154 = v64;
              v68 = v67;
              v126 = swift_slowAlloc();
              v166 = v126;
              *v68 = v134;
              v125 = v65;
              v69 = sub_24158CBCC();
              v162 = v36;
              v70 = v24;
              v72 = v71;
              v127 = *v137;
              v127(v63, v70);
              v73 = sub_241589774(v69, v72, &v166);
              v24 = v70;
              v36 = v162;

              *(v68 + 4) = v73;
              *(v68 + 12) = 2080;
              v74 = sub_241589774(v128, v133, &v166);

              *(v68 + 14) = v74;
              v75 = v125;
              _os_log_impl(&dword_241585000, v125, v66, "Failed to get resource values for %s: %s", v68, 0x16u);
              v76 = v126;
              swift_arrayDestroy();
              MEMORY[0x245CEA560](v76, -1, -1);
              MEMORY[0x245CEA560](v68, -1, -1);

              MEMORY[0x245CEA480](v154);
              v55 = v161;
              v127(v161, v24);
              v25 = v164;
            }

            else
            {

              MEMORY[0x245CEA480](v64);

              v78 = *v137;
              (*v137)(v63, v24);
              v55 = v161;
              v78(v161, v24);
            }

            v154 = 0;
            v58 = v153;
            v52 = v144;
            goto LABEL_9;
          }

          v154 = 0;
          v77 = sub_24158CB0C();
          if (v77 == 2)
          {
            (*v135)(v58, v141);
            v55 = v161;
            (*v137)(v161, v24);
          }

          else
          {
            v55 = v161;
            if ((v77 & 1) == 0)
            {
              (*v135)(v58, v141);
LABEL_22:
              (*v137)(v55, v24);
              goto LABEL_9;
            }

            v79 = v58;
            v80 = v140;
            sub_24158CAFC();
            if ((*v132)(v80, 1, v36) != 1)
            {
              v81 = v139;
              (*v131)();
              sub_24158BAA0(&qword_27E5484F8, MEMORY[0x277CC9578]);
              if ((sub_24158CC7C() & 1) == 0)
              {
                v82 = *(v160 + 48);
                v83 = v138;
                (*v136)(v138, v55, v24);
                v84 = v83 + v82;
                v85 = v139;
                (*v129)(v84, v139, v36);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v52 = sub_2415893FC(0, v52[2] + 1, 1, v52);
                }

                v87 = v52[2];
                v86 = v52[3];
                v162 = (v87 + 1);
                if (v87 >= v86 >> 1)
                {
                  v52 = sub_2415893FC(v86 > 1, v87 + 1, 1, v52);
                }

                (*v130)(v85, v36);
                v58 = v153;
                (*v135)(v153, v141);
                v55 = v161;
                (*v137)(v161, v24);
                v88 = v163;
                v52[2] = v162;
                sub_24158BAE8(v138, v52 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v87);
                goto LABEL_9;
              }

              (*v130)(v81, v36);
              v58 = v153;
              (*v135)(v153, v141);
              goto LABEL_22;
            }

            (*v135)(v79, v141);
            (*v137)(v55, v24);
            sub_24158BA40(v80, &qword_27E5484E0, &qword_24158D318);
            v58 = v79;
          }
        }

        else
        {
          v60(v23, 1, 1, v24);
          sub_24158BA40(v23, &qword_27E5484E8, &qword_24158D320);
        }

LABEL_9:
        sub_24158CB3C();
        if (!v170)
        {
          goto LABEL_33;
        }
      }
    }

    v154 = 0;
LABEL_33:
    (*(v146 + 8))(v165, v147);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v102 = v148;
      v103 = v52[2];
      v167 = v52 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v168 = v103;
      sub_241589DF8(&v167);
      result = sub_241588F5C(v152, v52);
      v155 = v106;
      v161 = (v107 >> 1);
      v108 = (v107 >> 1) - v105;
      if (__OFSUB__(v107 >> 1, v105))
      {
        break;
      }

      v109 = result;
      if (!v108)
      {

        swift_unknownObjectRelease();
        v122 = *(v151 + 8);
        v122(v150, v36);
        v122(v149, v36);

        return MEMORY[0x277D84F90];
      }

      v110 = v105;
      v167 = MEMORY[0x277D84F90];

      result = sub_24158B274(0, v108 & ~(v108 >> 63), 0);
      if (v108 < 0)
      {
        goto LABEL_54;
      }

      v147 = v109;
      v144 = v52;
      v162 = v36;
      v111 = (v25 + 32);
      v112 = v167;
      v52 = v151;
      v153 = (v151 + 32);
      v152 = (v25 + 16);
      v113 = v161;
      if (v110 > v161)
      {
        v113 = v110;
      }

      v154 = v113;
      while (v154 != v110)
      {
        v114 = v157;
        sub_24158B9D8(v155 + *(v163 + 72) * v110, v157, &qword_27E5484D8, &qword_24158D310);
        v115 = v158;
        sub_24158B9D8(v114, v158, &qword_27E5484D8, &qword_24158D310);
        v52 = v24;
        v116 = *(v160 + 48);
        v117 = v159;
        v165 = *v111;
        (v165)(v159, v115, v52);
        (*v153)(v117 + v116, v115 + v116, v162);
        v25 = v156;
        (*v152)(v156, v117, v52);
        sub_24158BA40(v117, &qword_27E5484D8, &qword_24158D310);
        sub_24158BA40(v114, &qword_27E5484D8, &qword_24158D310);
        v167 = v112;
        v119 = *(v112 + 16);
        v118 = *(v112 + 24);
        v36 = v119 + 1;
        if (v119 >= v118 >> 1)
        {
          sub_24158B274(v118 > 1, v119 + 1, 1);
          v112 = v167;
        }

        *(v112 + 16) = v36;
        (v165)(v112 + ((v164[80] + 32) & ~v164[80]) + *(v164 + 9) * v119, v25, v52);
        ++v110;
        v24 = v52;
        if (v161 == v110)
        {

          swift_unknownObjectRelease();
          v120 = *(v151 + 8);
          v121 = v162;
          v120(v150, v162);
          v120(v149, v121);

          return v112;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      v52 = sub_24158B46C(v52);
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {

    v89 = v162;
    (*(v25 + 2))(v162, a1, v24);
    v90 = v24;
    v91 = sub_24158CC3C();
    v92 = sub_24158CDBC();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = v36;
      v95 = swift_slowAlloc();
      v167 = v95;
      *v93 = 136315138;
      sub_24158BAA0(&qword_27E548490, MEMORY[0x277CC9260]);
      v96 = sub_24158CE9C();
      v97 = v89;
      v99 = v98;
      (*(v25 + 1))(v97, v90);
      v100 = sub_241589774(v96, v99, &v167);

      *(v93 + 4) = v100;
      _os_log_impl(&dword_241585000, v91, v92, "Failed to create enumerator for directory: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      v101 = v95;
      v36 = v94;
      MEMORY[0x245CEA560](v101, -1, -1);
      MEMORY[0x245CEA560](v93, -1, -1);
    }

    else
    {

      (*(v25 + 1))(v89, v90);
    }

    v123 = *(v151 + 8);
    v123(v150, v36);
    v123(v149, v36);
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2415886A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a1;
  v5 = sub_24158CCDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24158CBDC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  if (BOMCopierNew())
  {
    v67 = v9;
    v68 = v6;
    v69 = v5;
    sub_24158CBCC();
    v21 = objc_allocWithZone(MEMORY[0x277CBEB78]);
    v22 = sub_24158CC8C();

    v23 = [v21 initToFileAtPath:v22 append:1];

    if (v23)
    {
      [v23 open];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548498, &qword_24158D2F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24158D2E0;
      *(inited + 32) = sub_24158CC8C();
      v66 = a3;
      v25 = *MEMORY[0x277CBED28];
      *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484A0, &qword_24158D2F8);
      *(inited + 40) = v25;
      sub_241589DB0(0, &qword_27E5484A8, 0x277CCACA8);
      v26 = v25;
      *(inited + 72) = sub_24158CDFC();
      *(inited + 104) = sub_241589DB0(0, &qword_27E5484B0, 0x277CBEB78);
      *(inited + 80) = v23;
      v65 = v23;
      sub_24158B7C8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484B8, &qword_24158D300);
      swift_arrayDestroy();
      sub_24158B8F0();
      v64 = sub_24158CC6C();

      v27 = v11[2];
      v27(v20, v71, v10);
      v27(v18, a2, v10);
      v28 = sub_24158CC3C();
      v29 = sub_24158CDAC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v72[0] = v63;
        *v30 = 136315394;
        v31 = sub_24158CBCC();
        v33 = v32;
        v34 = v11[1];
        v34(v20, v10);
        v35 = sub_241589774(v31, v33, v72);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2080;
        sub_24158BAA0(&qword_27E548490, MEMORY[0x277CC9260]);
        v36 = sub_24158CE9C();
        v38 = v37;
        v34(v18, v10);
        v39 = sub_241589774(v36, v38, v72);

        *(v30 + 14) = v39;
        _os_log_impl(&dword_241585000, v28, v29, "Zipping file. { from=%s, to=%s }", v30, 0x16u);
        v40 = v63;
        swift_arrayDestroy();
        MEMORY[0x245CEA560](v40, -1, -1);
        MEMORY[0x245CEA560](v30, -1, -1);
      }

      else
      {

        v52 = v11[1];
        v52(v18, v10);
        v52(v20, v10);
      }

      v72[0] = sub_24158CBCC();
      v72[1] = v53;
      v54 = v67;
      sub_24158CCCC();
      sub_24158B958();
      sub_24158CE1C();
      (*(v68 + 8))(v54, v69);

      v55 = v64;
      v56 = BOMCopierCopyWithOptions();

      if (!v56)
      {

        v61 = v65;
        [v65 close];

        BOMCopierFree();
        return 1;
      }

      v57 = sub_24158CC3C();
      v58 = sub_24158CDBC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 67109120;
        *(v59 + 4) = v56;
        _os_log_impl(&dword_241585000, v57, v58, "BOMCopier failed: %d", v59, 8u);
        MEMORY[0x245CEA560](v59, -1, -1);
      }

      v60 = v65;
      [v65 close];
    }

    else
    {
      (v11[2])(v15, a2, v10);
      v44 = sub_24158CC3C();
      v45 = sub_24158CDBC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v72[0] = v47;
        *v46 = 136315138;
        sub_24158BAA0(&qword_27E548490, MEMORY[0x277CC9260]);
        v48 = sub_24158CE9C();
        v50 = v49;
        (v11[1])(v15, v10);
        v51 = sub_241589774(v48, v50, v72);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_241585000, v44, v45, "Failed to open output stream: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x245CEA560](v47, -1, -1);
        MEMORY[0x245CEA560](v46, -1, -1);
      }

      else
      {

        (v11[1])(v15, v10);
      }
    }

    BOMCopierFree();
  }

  else
  {
    v41 = sub_24158CC3C();
    v42 = sub_24158CDBC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_241585000, v41, v42, "Failed to create BOMCopier", v43, 2u);
      MEMORY[0x245CEA560](v43, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_241588F5C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_241589004(uint64_t a1, id *a2)
{
  result = sub_24158CC9C();
  *a2 = 0;
  return result;
}

uint64_t sub_24158907C(uint64_t a1, id *a2)
{
  v3 = sub_24158CCAC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2415890FC@<X0>(uint64_t *a1@<X8>)
{
  sub_24158CCBC();
  v2 = sub_24158CC8C();

  *a1 = v2;
  return result;
}

uint64_t sub_241589140()
{
  v1 = *v0;
  v2 = sub_24158CCBC();
  v3 = MEMORY[0x245CEA060](v2);

  return v3;
}

uint64_t sub_24158917C()
{
  v1 = *v0;
  sub_24158CCBC();
  sub_24158CCFC();
}

uint64_t sub_2415891D0()
{
  v1 = *v0;
  sub_24158CCBC();
  sub_24158CECC();
  sub_24158CCFC();
  v2 = sub_24158CEDC();

  return v2;
}

uint64_t sub_241589244(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24158CCBC();
  v6 = v5;
  if (v4 == sub_24158CCBC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24158CEAC();
  }

  return v9 & 1;
}

uint64_t sub_2415892CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24158CC8C();

  *a2 = v5;
  return result;
}

uint64_t sub_241589314@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24158CCBC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_241589340(uint64_t a1)
{
  v2 = sub_24158BAA0(&qword_27E548550, type metadata accessor for URLResourceKey);
  v3 = sub_24158BAA0(&qword_27E548558, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

size_t sub_2415893FC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548500, &qword_24158D330);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2415895EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548510, &qword_24158D340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2415896F0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484F0, &qword_24158D328);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_241589774(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241589840(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_24158BB5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_241589840(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24158994C(a5, a6);
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
    result = sub_24158CE4C();
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

uint64_t sub_24158994C(uint64_t a1, unint64_t a2)
{
  v4 = sub_241589998(a1, a2);
  sub_241589AC8(&unk_28533D2B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_241589998(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_241589BB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24158CE4C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24158CD1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241589BB4(v10, 0);
        result = sub_24158CE3C();
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

uint64_t sub_241589AC8(uint64_t result)
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

  result = sub_241589C28(result, v12, 1, v3);
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

void *sub_241589BB4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548520, &qword_24158D350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_241589C28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548520, &qword_24158D350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_241589DB0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_241589DF8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24158CE8C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
        v6 = sub_24158CD5C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24158A18C(v8, v9, a1, v4);
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
    return sub_241589F3C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_241589F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v38;
    while (1)
    {
      sub_24158B9D8(v22, v17, &qword_27E5484D8, &qword_24158D310);
      sub_24158B9D8(v20, v13, &qword_27E5484D8, &qword_24158D310);
      v24 = *(v23 + 48);
      v25 = sub_24158CC0C();
      sub_24158BA40(v13, &qword_27E5484D8, &qword_24158D310);
      result = sub_24158BA40(v17, &qword_27E5484D8, &qword_24158D310);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_24158BAE8(v22, v37);
      v23 = v38;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_24158BAE8(v26, v20);
      v20 += v35;
      v22 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24158A18C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v108 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v120 = &v104 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v104 - v14;
  result = MEMORY[0x28223BE20](v13);
  v121 = &v104 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_99:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_139;
    }

    v6 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v124 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v100 = v7;
        while (*a3)
        {
          v101 = *(result + 16 * v6);
          v102 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_24158AAB4(*a3 + *(v100 + 72) * v101, *a3 + *(v100 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v100 + 72) * v7, a4);
          if (v33)
          {
          }

          if (v7 < v101)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_24158B058(v102);
          }

          if (v6 - 2 >= *(v102 + 2))
          {
            goto LABEL_127;
          }

          v103 = &v102[16 * v6];
          *v103 = v101;
          *(v103 + 1) = v7;
          v124 = v102;
          sub_24158AFCC(v6 - 1);
          result = v124;
          v6 = *(v124 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_24158B058(v6);
    goto LABEL_102;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v107 = a4;
  v123 = v6;
  v110 = a3;
  v105 = v7;
  while (1)
  {
    v20 = v18 + 1;
    v113 = v19;
    if (v18 + 1 >= v17)
    {
      v32 = v18 + 1;
      v33 = v109;
    }

    else
    {
      v21 = v18;
      v6 = *a3;
      v22 = *(v7 + 72);
      v23 = *a3 + v22 * v20;
      v24 = v121;
      sub_24158B9D8(v23, v121, &qword_27E5484D8, &qword_24158D310);
      v25 = v122;
      sub_24158B9D8(v6 + v22 * v21, v122, &qword_27E5484D8, &qword_24158D310);
      v26 = *(v123 + 48);
      LODWORD(v118) = sub_24158CC0C();
      sub_24158BA40(v25, &qword_27E5484D8, &qword_24158D310);
      result = sub_24158BA40(v24, &qword_27E5484D8, &qword_24158D310);
      v106 = v21;
      v27 = v21 + 2;
      v119 = v22;
      v28 = v6 + v22 * (v21 + 2);
      while (v17 != v27)
      {
        v29 = v121;
        sub_24158B9D8(v28, v121, &qword_27E5484D8, &qword_24158D310);
        v30 = v122;
        sub_24158B9D8(v23, v122, &qword_27E5484D8, &qword_24158D310);
        v31 = *(v123 + 48);
        v6 = sub_24158CC0C() & 1;
        sub_24158BA40(v30, &qword_27E5484D8, &qword_24158D310);
        result = sub_24158BA40(v29, &qword_27E5484D8, &qword_24158D310);
        ++v27;
        v28 += v119;
        v23 += v119;
        if ((v118 & 1) != v6)
        {
          v32 = v27 - 1;
          goto LABEL_12;
        }
      }

      v32 = v17;
LABEL_12:
      v18 = v106;
      a4 = v107;
      v33 = v109;
      a3 = v110;
      v7 = v105;
      if ((v118 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v32 < v106)
      {
        goto LABEL_130;
      }

      if (v106 < v32)
      {
        v34 = v119 * (v32 - 1);
        v35 = v32 * v119;
        v118 = v32;
        v36 = v32;
        v37 = v106;
        v38 = v106 * v119;
        v6 = v123;
        do
        {
          if (v37 != --v36)
          {
            v39 = *v110;
            if (!*v110)
            {
              goto LABEL_136;
            }

            sub_24158BAE8(v39 + v38, v112);
            if (v38 < v34 || v39 + v38 >= (v39 + v35))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_24158BAE8(v112, v39 + v34);
            v6 = v123;
          }

          ++v37;
          v34 -= v119;
          v35 -= v119;
          v38 += v119;
        }

        while (v37 < v36);
        v33 = v109;
        a3 = v110;
        v7 = v105;
        v18 = v106;
        a4 = v107;
        v32 = v118;
      }

      else
      {
LABEL_25:
        v6 = v123;
      }
    }

    v40 = a3[1];
    if (v32 >= v40)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v32, v18))
    {
      goto LABEL_129;
    }

    if (v32 - v18 >= a4)
    {
LABEL_35:
      v41 = v32;
      if (v32 < v18)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v18, a4))
    {
      goto LABEL_131;
    }

    if ((v18 + a4) < v40)
    {
      v40 = v18 + a4;
    }

    if (v40 < v18)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v32 == v40)
    {
      goto LABEL_35;
    }

    v114 = v40;
    v109 = v33;
    v87 = *a3;
    v88 = *(v7 + 72);
    v89 = *a3 + v88 * (v32 - 1);
    v90 = -v88;
    v106 = v18;
    v91 = v18 - v32;
    v111 = v88;
    v119 = v87;
    a4 = v87 + v32 * v88;
LABEL_89:
    v117 = v89;
    v118 = v32;
    v115 = a4;
    v116 = v91;
    v92 = v89;
LABEL_90:
    v93 = v121;
    sub_24158B9D8(a4, v121, &qword_27E5484D8, &qword_24158D310);
    v94 = v122;
    sub_24158B9D8(v92, v122, &qword_27E5484D8, &qword_24158D310);
    v95 = *(v6 + 48);
    v96 = sub_24158CC0C();
    sub_24158BA40(v94, &qword_27E5484D8, &qword_24158D310);
    result = sub_24158BA40(v93, &qword_27E5484D8, &qword_24158D310);
    if (v96)
    {
      break;
    }

    v6 = v123;
LABEL_88:
    v32 = v118 + 1;
    v89 = v117 + v111;
    v91 = v116 - 1;
    a4 = v115 + v111;
    if (v118 + 1 != v114)
    {
      goto LABEL_89;
    }

    v33 = v109;
    a3 = v110;
    v7 = v105;
    v18 = v106;
    v41 = v114;
    if (v114 < v106)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v113;
    }

    else
    {
      result = sub_2415895EC(0, *(v113 + 2) + 1, 1, v113);
      v19 = result;
    }

    v43 = *(v19 + 2);
    v42 = *(v19 + 3);
    a4 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_2415895EC((v42 > 1), v43 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v44 = &v19[16 * v43];
    *(v44 + 4) = v18;
    *(v44 + 5) = v41;
    v114 = v41;
    if (!*v108)
    {
      goto LABEL_138;
    }

    if (v43)
    {
      v45 = *v108;
      v6 = v123;
      while (1)
      {
        v46 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v47 = *(v19 + 4);
          v48 = *(v19 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_56:
          if (v50)
          {
            goto LABEL_117;
          }

          v63 = &v19[16 * a4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_120;
          }

          v69 = &v19[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_124;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v73 = &v19[16 * a4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_70:
        if (v68)
        {
          goto LABEL_119;
        }

        v76 = &v19[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v79 < v67)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v46 - 1;
        if (v46 - 1 >= a4)
        {
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
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v84 = v19;
        a4 = *&v19[16 * v6 + 32];
        v85 = *&v19[16 * v46 + 40];
        sub_24158AAB4(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v19[16 * v46 + 32], *a3 + *(v7 + 72) * v85, v45);
        if (v33)
        {
        }

        if (v85 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_24158B058(v84);
        }

        if (v6 >= *(v84 + 2))
        {
          goto LABEL_114;
        }

        v86 = &v84[16 * v6];
        *(v86 + 4) = a4;
        *(v86 + 5) = v85;
        v124 = v84;
        result = sub_24158AFCC(v46);
        v19 = v124;
        a4 = *(v124 + 16);
        v6 = v123;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v51 = &v19[16 * a4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = &v19[16 * a4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v62 >= v54)
      {
        v80 = &v19[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v49 < v83)
        {
          v46 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v123;
LABEL_4:
    v109 = v33;
    v17 = a3[1];
    v18 = v114;
    a4 = v107;
    if (v114 >= v17)
    {
      goto LABEL_99;
    }
  }

  if (v119)
  {
    v97 = v120;
    sub_24158BAE8(a4, v120);
    v6 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_24158BAE8(v97, v92);
    v92 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_24158AAB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v7 = *(*(v47 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v27 = a4 + v18;
    }

    else
    {
      v25 = -v14;
      v26 = a4 + v18;
      v27 = a4 + v18;
      v43 = a4;
      v44 = -v14;
      v42 = a1;
      do
      {
        v40 = v27;
        v28 = a2;
        v29 = a2 + v25;
        v45 = v28;
        while (1)
        {
          v31 = v48;
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v40;
            goto LABEL_60;
          }

          v41 = v27;
          v48 += v25;
          v32 = v26 + v25;
          sub_24158B9D8(v32, v12, &qword_27E5484D8, &qword_24158D310);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v46;
          sub_24158B9D8(v34, v46, &qword_27E5484D8, &qword_24158D310);
          v37 = *(v47 + 48);
          v38 = sub_24158CC0C();
          v39 = v36;
          v12 = v35;
          sub_24158BA40(v39, &qword_27E5484D8, &qword_24158D310);
          sub_24158BA40(v35, &qword_27E5484D8, &qword_24158D310);
          if (v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
            a1 = v42;
          }

          else
          {
            v29 = v33;
            a1 = v42;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v43;
          v25 = v44;
          v28 = v45;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_59;
          }
        }

        if (v31 < v45 || v48 >= v45)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v25 = v44;
        }

        else
        {
          v27 = v41;
          a1 = v42;
          a2 = v33;
          v25 = v44;
          if (v31 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_59:
    v51 = a2;
    v49 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      v44 = v14;
      do
      {
        sub_24158B9D8(a2, v12, &qword_27E5484D8, &qword_24158D310);
        v20 = v46;
        sub_24158B9D8(a4, v46, &qword_27E5484D8, &qword_24158D310);
        v21 = *(v47 + 48);
        v22 = sub_24158CC0C();
        sub_24158BA40(v20, &qword_27E5484D8, &qword_24158D310);
        sub_24158BA40(v12, &qword_27E5484D8, &qword_24158D310);
        if (v22)
        {
          v23 = a2 + v14;
          if (a1 < a2 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v23;
        }

        else
        {
          v24 = a4 + v14;
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v24;
          a4 = v24;
        }

        v14 = v44;
        a1 += v44;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_60:
  sub_24158B06C(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_24158AFCC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24158B058(v3);
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

uint64_t sub_24158B06C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_24158B15C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24158CDDC();

  return sub_24158B1A0(a1, v5);
}

unint64_t sub_24158B1A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_241589DB0(0, &qword_27E5484A8, 0x277CCACA8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24158CDEC();

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

size_t sub_24158B274(size_t a1, int64_t a2, char a3)
{
  result = sub_24158B294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24158B294(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548508, &qword_24158D338);
  v10 = *(sub_24158CBDC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24158CBDC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24158B480(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24158B5D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548518, &qword_24158D348);
    v3 = sub_24158CE2C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_24158CCBC();
      sub_24158CECC();
      v29 = v7;
      sub_24158CCFC();
      v9 = sub_24158CEDC();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_24158CCBC();
        v20 = v19;
        if (v18 == sub_24158CCBC() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_24158CEAC();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_24158B7C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D0, &qword_24158D308);
    v3 = sub_24158CE6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24158B9D8(v4, &v11, &qword_27E5484B8, &qword_24158D300);
      v5 = v11;
      result = sub_24158B15C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24158B9AC(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24158B8F0()
{
  result = qword_27E5484C0;
  if (!qword_27E5484C0)
  {
    sub_241589DB0(255, &qword_27E5484A8, 0x277CCACA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5484C0);
  }

  return result;
}

unint64_t sub_24158B958()
{
  result = qword_27E5484C8;
  if (!qword_27E5484C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5484C8);
  }

  return result;
}

_OWORD *sub_24158B9AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24158B9D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24158BA40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24158BAA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24158BAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24158BB5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_24158BBCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id createAttachments(paths:zipFolder:)(uint64_t a1, uint64_t a2)
{
  v101 = sub_24158CCDC();
  v100 = *(v101 - 8);
  v4 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484E8, &qword_24158D320);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v98 - v8;
  v10 = sub_24158CBDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v102 = &v98 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v103 = &v98 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v107 = &v98 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v98 - v22;
  v106 = sub_24158CC5C();
  v105 = *(v106 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24158CC4C();
  v122 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  v114 = v10;
  v98 = v15;
  v109 = v26;
  v104 = v11;
  if (v28)
  {
    v29 = (a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
    v30 = (v11 + 48);
    v119 = (v11 + 32);
    v117 = (v11 + 8);
    v115 = MEMORY[0x277D84F90];
    v31 = *(v11 + 72);
    *&v27 = 136315394;
    v108 = v27;
    v112 = v9;
    v113 = a2;
    v111 = v23;
    v118 = v30;
    v116 = v31;
    while (1)
    {
      createZipFor(directory:at:fileLimit:)(v29, a2, 100, v9);
      if ((*v30)(v9, 1, v10) == 1)
      {
        sub_24158BA40(v9, &qword_27E5484E8, &qword_24158D320);
      }

      else
      {
        (*v119)(v23, v9, v10);
        v32 = objc_opt_self();
        sub_24158CBCC();
        v33 = sub_24158CC8C();

        v34 = [v32 attachmentWithPath_];

        if (v34)
        {
          sub_24158CAB0();
          v35 = sub_24158CDCC();
          [v34 setDeleteOnAttach_];

          v36 = v34;
          MEMORY[0x245CEA070]();
          if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v59 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_24158CD4C();
          }

          sub_24158CD6C();
          v115 = v122;
          v37 = [v36 displayName];
          if (v37)
          {
            v38 = v37;
            v39 = sub_24158CCBC();
            v41 = v40;
          }

          else
          {
            v39 = 0;
            v41 = 0;
          }

          v120 = v39;
          v121 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E548570, &qword_24158D548);
          v42 = sub_24158CCEC();
          v44 = v43;
          result = [v36 filesize];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v46 = result;
          [result doubleValue];

          v47 = sub_24158CD7C();
          v49 = v48;

          v50 = sub_24158CC3C();
          v51 = sub_24158CDAC();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v110 = v36;
            v54 = v47;
            v55 = v53;
            v120 = v53;
            *v52 = v108;
            v56 = sub_241589774(v42, v44, &v120);

            *(v52 + 4) = v56;
            *(v52 + 12) = 2080;
            v57 = sub_241589774(v54, v49, &v120);

            *(v52 + 14) = v57;
            _os_log_impl(&dword_241585000, v50, v51, "Created attachment. { name=%s,size=%s }", v52, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245CEA560](v55, -1, -1);
            v58 = v52;
            v26 = v109;
            MEMORY[0x245CEA560](v58, -1, -1);
          }

          else
          {
          }

          v23 = v111;
          v10 = v114;
          (*v117)(v111, v114);
          v9 = v112;
          a2 = v113;
        }

        else
        {
          (*v117)(v23, v10);
        }

        v30 = v118;
        v31 = v116;
      }

      v29 = (v29 + v31);
      if (!--v28)
      {
        goto LABEL_20;
      }
    }
  }

  v115 = MEMORY[0x277D84F90];
LABEL_20:
  v60 = v115;
  if (v115 >> 62)
  {
    v94 = sub_24158CE5C();
    v61 = v107;
    if (!v94)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v61 = v107;
    if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      v62 = objc_opt_self();
      v63 = [v62 defaultManager];
      v64 = [v63 temporaryDirectory];

      v65 = v103;
      sub_24158CBBC();

      sub_24158CB9C();
      v66 = v104;
      v67 = *(v104 + 8);
      v67(v65, v10);
      v68 = [v62 defaultManager];
      sub_24158CBCC();
      v69 = sub_24158CC8C();

      LOBYTE(v65) = [v68 fileExistsAtPath_];

      if ((v65 & 1) == 0)
      {
        v70 = *(v66 + 16);
        v71 = v102;
        (v70)(v102, v61, v10);
        v72 = sub_24158CC3C();
        v73 = sub_24158CDAC();
        v74 = os_log_type_enabled(v72, v73);
        v104 = v66 + 16;
        if (v74)
        {
          v75 = v71;
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v120 = v77;
          *v76 = 136315138;
          v78 = sub_24158CBCC();
          v119 = v70;
          v80 = v79;
          v67(v75, v114);
          v81 = sub_241589774(v78, v80, &v120);

          *(v76 + 4) = v81;
          _os_log_impl(&dword_241585000, v72, v73, "No attachment found. Creating placeholder. { path=%s }", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          v10 = v114;
          MEMORY[0x245CEA560](v77, -1, -1);
          MEMORY[0x245CEA560](v76, -1, -1);
        }

        else
        {

          v67(v71, v10);
        }

        v82 = v99;
        v120 = 0xD00000000000001DLL;
        v121 = 0x800000024158D590;
        sub_24158CCCC();
        sub_24158B958();
        sub_24158CE0C();
        (*(v100 + 8))(v82, v101);
      }

      v83 = objc_opt_self();
      sub_24158CBCC();
      v84 = sub_24158CC8C();

      v85 = [v83 attachmentWithPath_];

      if (v85)
      {
        sub_24158CAB0();
        v86 = sub_24158CDCC();
        [v85 setDeleteOnAttach_];

        v87 = v85;
        MEMORY[0x245CEA070]();
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v97 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24158CD4C();
        }

        sub_24158CD6C();

        v67(v61, v10);
        v60 = v122;
        v26 = v109;
      }

      else
      {
        v67(v61, v10);
        v26 = v109;
        v60 = v115;
      }
    }
  }

  v88 = sub_24158CC3C();
  v89 = sub_24158CDAC();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 134217984;
    if (v60 >> 62)
    {
      v95 = v60;
      v96 = v90;
      v91 = sub_24158CE5C();
      v90 = v96;
      v60 = v95;
    }

    else
    {
      v91 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v90 + 4) = v91;
    v92 = v89;
    v93 = v90;
    _os_log_impl(&dword_241585000, v88, v92, "Returning attachments. { count=%ld }", v90, 0xCu);
    MEMORY[0x245CEA560](v93, -1, -1);
  }

  (*(v105 + 8))(v26, v106);

  return v60;
}

unint64_t sub_24158CAB0()
{
  result = qword_27E548560;
  if (!qword_27E548560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E548560);
  }

  return result;
}