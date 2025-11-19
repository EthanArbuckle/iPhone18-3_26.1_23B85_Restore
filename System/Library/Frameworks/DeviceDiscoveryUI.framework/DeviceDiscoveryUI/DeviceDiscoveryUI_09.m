uint64_t sub_23813F930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v119 = a3;
  v120 = a1;
  v121 = a2;
  v134 = a7;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCE8, &qword_23815F828);
  v10 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v127 = &v114 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCF0, &qword_23815F830);
  v12 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v118 = &v114 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCF8, &qword_23815F838);
  v14 = *(*(v117 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v117);
  v17 = (&v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v114 = &v114 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD00, &qword_23815F840);
  v123 = *(v19 - 8);
  v124 = v19;
  v20 = *(v123 + 64);
  MEMORY[0x28223BE20](v19);
  v116 = &v114 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD08, &qword_23815F848);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v125 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v126 = &v114 - v26;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD10, &qword_23815F850);
  v27 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v131 = &v114 - v28;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD18, &qword_23815F858);
  v29 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v31 = &v114 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD20, &qword_23815F860);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v122 = &v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (&v114 - v37);
  MEMORY[0x28223BE20](v36);
  v40 = &v114 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD28, &qword_23815F868);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v132 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v130 = &v114 - v45;
  if (a4)
  {
    v46 = *(a5 + 24);
    v47 = sub_238135F00();
    v122 = a6;
    v48 = sub_2380BECE0(a6, a6, v47);
    v50 = a5;
    if (v49 == -1)
    {
      v84 = v126;
      (*(v123 + 56))(v126, 1, 1, v124);
    }

    else
    {
      v51 = v48;
      v52 = v49;
      if (v49)
      {
        swift_storeEnumTagMultiPayload();
        sub_2380711D4(&qword_27DEEDD58, &qword_27DEEDCF8, &qword_23815F838);
        v53 = v116;
        sub_238153ECC();
        sub_2380B3E24(v51, v52);
      }

      else
      {
        v85 = sub_238139870();
        sub_2381533AC();
        v86 = MEMORY[0x2383E79D0]();
        v87 = sub_23815337C();

        if ((((v85 - 3) < 0xFEu) & ~v87) != 0 || v85 == 3)
        {
          v88 = sub_2381548DC();
        }

        else
        {
          v88 = sub_2381548AC();
        }

        v53 = v116;
        *v17 = v88;
        v17[1] = v89;
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD60, &qword_23815F8D0);
        v50 = a5;
        sub_238142478(a5, v17 + *(v90 + 44));
        v122 = v51;
        v91 = v114;
        sub_23807121C(v17, v114, &qword_27DEEDCF8, &qword_23815F838);
        sub_2380712E4(v91, v118, &qword_27DEEDCF8, &qword_23815F838);
        swift_storeEnumTagMultiPayload();
        sub_2380711D4(&qword_27DEEDD58, &qword_27DEEDCF8, &qword_23815F838);
        sub_238153ECC();
        sub_2380B3E24(v122, v52);
        sub_238071284(v91, &qword_27DEEDCF8, &qword_23815F838);
      }

      v84 = v126;
      sub_23807121C(v53, v126, &qword_27DEEDD00, &qword_23815F840);
      (*(v123 + 56))(v84, 0, 1, v124);
    }

    v92 = *(v50 + *(type metadata accessor for _DDDevicePickerView() + 52) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    sub_238141270(v166, *(&v166 + 1), &v166);

    v154 = v174;
    v155[0] = v175[0];
    *(v155 + 15) = *(v175 + 15);
    v150 = v170;
    v151 = v171;
    v152 = v172;
    v153 = v173;
    v146 = v166;
    v147 = v167;
    v148 = v168;
    v149 = v169;
    v93 = v125;
    sub_2380712E4(v84, v125, &qword_27DEEDD08, &qword_23815F848);
    v144 = v154;
    v145[0] = v155[0];
    *(v145 + 15) = *(v155 + 15);
    v140 = v150;
    v141 = v151;
    v142 = v152;
    v143 = v153;
    v136 = v146;
    v137 = v147;
    v138 = v148;
    v139 = v149;
    v94 = v127;
    sub_2380712E4(v93, v127, &qword_27DEEDD08, &qword_23815F848);
    v95 = v94 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD30, &qword_23815F8B8) + 48);
    v96 = v143;
    v97 = v144;
    v164 = v144;
    v165[0] = v145[0];
    v98 = v139;
    v99 = v140;
    v160 = v140;
    v161 = v141;
    v100 = v141;
    v101 = v142;
    v162 = v142;
    v163 = v143;
    v156 = v136;
    v157 = v137;
    v103 = v136;
    v102 = v137;
    v158 = v138;
    v159 = v139;
    v104 = v143;
    v105 = v145[0];
    *(v95 + 128) = v144;
    *(v95 + 144) = v105;
    v107 = v138;
    v106 = v139;
    v108 = v141;
    *(v95 + 64) = v140;
    *(v95 + 80) = v108;
    *(v95 + 96) = v142;
    *(v95 + 112) = v104;
    v109 = v137;
    *v95 = v136;
    *(v95 + 16) = v109;
    *(v95 + 32) = v138;
    *(v95 + 48) = v106;
    v174 = v97;
    v175[0] = v145[0];
    v170 = v99;
    v171 = v100;
    v172 = v101;
    v173 = v96;
    v166 = v103;
    v167 = v102;
    *(v165 + 15) = *(v145 + 15);
    *(v95 + 159) = *(v145 + 15);
    *(v175 + 15) = *(v145 + 15);
    v168 = v107;
    v169 = v98;
    sub_2380712E4(&v146, v135, &qword_27DEEDD38, &qword_23815F8C0);
    sub_2380712E4(&v156, v135, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(&v166, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(v93, &qword_27DEEDD08, &qword_23815F848);
    sub_2380712E4(v94, v131, &qword_27DEEDCE8, &qword_23815F828);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEDD40, &qword_27DEEDD18, &qword_23815F858);
    sub_2380711D4(&qword_27DEEDD48, &qword_27DEEDCE8, &qword_23815F828);
    v80 = v130;
    sub_238153ECC();
    sub_238071284(&v146, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(v94, &qword_27DEEDCE8, &qword_23815F828);
    v81 = v84;
    v82 = &qword_27DEEDD08;
    v83 = &qword_23815F848;
  }

  else
  {
    v127 = v31;
    v54 = sub_238139870();
    sub_2381533AC();
    v55 = MEMORY[0x2383E79D0]();
    v56 = sub_23815337C();

    if ((((v54 - 3) < 0xFEu) & ~v56) != 0 || v54 == 3)
    {
      v57 = sub_2381548DC();
    }

    else
    {
      v57 = sub_2381548AC();
    }

    *v38 = v57;
    v38[1] = v58;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD68, &qword_23815F8D8);
    v61 = v120;
    v60 = v121;
    sub_2381406B0(v38 + *(v59 + 44));
    sub_23807121C(v38, v40, &qword_27DEEDD20, &qword_23815F860);
    sub_238141270(v61, v60, &v146);
    v62 = v122;
    sub_2380712E4(v40, v122, &qword_27DEEDD20, &qword_23815F860);
    v144 = v154;
    v145[0] = v155[0];
    *(v145 + 15) = *(v155 + 15);
    v140 = v150;
    v141 = v151;
    v142 = v152;
    v143 = v153;
    v136 = v146;
    v137 = v147;
    v138 = v148;
    v139 = v149;
    v63 = v127;
    sub_2380712E4(v62, v127, &qword_27DEEDD20, &qword_23815F860);
    v64 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD70, &qword_23815F8E0) + 48);
    v65 = v143;
    v66 = v142;
    v163 = v143;
    v164 = v144;
    v67 = v144;
    v165[0] = v145[0];
    v68 = v139;
    v69 = v140;
    v160 = v140;
    v161 = v141;
    v70 = v141;
    v162 = v142;
    v156 = v136;
    v157 = v137;
    v72 = v136;
    v71 = v137;
    v158 = v138;
    v159 = v139;
    v73 = v143;
    v74 = v145[0];
    *(v64 + 128) = v144;
    *(v64 + 144) = v74;
    v76 = v138;
    v75 = v139;
    v77 = v141;
    *(v64 + 64) = v140;
    *(v64 + 80) = v77;
    *(v64 + 96) = v142;
    *(v64 + 112) = v73;
    v78 = v137;
    *v64 = v136;
    *(v64 + 16) = v78;
    *(v64 + 32) = v138;
    *(v64 + 48) = v75;
    v173 = v65;
    v174 = v67;
    v175[0] = v145[0];
    v170 = v69;
    v171 = v70;
    v172 = v66;
    v166 = v72;
    v167 = v71;
    *(v165 + 15) = *(v145 + 15);
    *(v64 + 159) = *(v145 + 15);
    *(v175 + 15) = *(v145 + 15);
    v168 = v76;
    v169 = v68;
    sub_2380712E4(&v146, v135, &qword_27DEEDD38, &qword_23815F8C0);
    sub_2380712E4(&v156, v135, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(&v166, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(v62, &qword_27DEEDD20, &qword_23815F860);
    sub_2380712E4(v63, v131, &qword_27DEEDD18, &qword_23815F858);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEDD40, &qword_27DEEDD18, &qword_23815F858);
    sub_2380711D4(&qword_27DEEDD48, &qword_27DEEDCE8, &qword_23815F828);
    v79 = v130;
    sub_238153ECC();
    sub_238071284(&v146, &qword_27DEEDD38, &qword_23815F8C0);
    v80 = v79;
    sub_238071284(v63, &qword_27DEEDD18, &qword_23815F858);
    v81 = v40;
    v82 = &qword_27DEEDD20;
    v83 = &qword_23815F860;
  }

  sub_238071284(v81, v82, v83);
  v110 = v132;
  sub_2380712E4(v80, v132, &qword_27DEEDD28, &qword_23815F868);
  v111 = v134;
  sub_2380712E4(v110, v134, &qword_27DEEDD28, &qword_23815F868);
  v112 = v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD50, &qword_23815F8C8) + 48);
  *v112 = 0;
  *(v112 + 8) = 1;
  sub_238071284(v80, &qword_27DEEDD28, &qword_23815F868);
  return sub_238071284(v110, &qword_27DEEDD28, &qword_23815F868);
}

uint64_t sub_2381406B0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD78, &qword_23815F8E8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v32 - v6;
  v7 = sub_23815468C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277CE0FE0], v7);
  v38 = sub_2381546CC();
  (*(v8 + 8))(v11, v7);
  sub_2381548DC();
  sub_2381538EC();
  v12 = v67;
  v13 = v68;
  v14 = v69;
  v15 = v70;
  v36 = v71;
  v32 = v72;
  v33 = v67;
  LOBYTE(v8) = sub_23815411C();
  sub_238139870();
  sub_23815377C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v66 = v13;
  v34 = v13;
  v64 = v15;
  v61 = 0;
  v24 = v37;
  sub_238140AAC(v37);
  v25 = v35;
  sub_2380712E4(v24, v35, &qword_27DEEDD78, &qword_23815F8E8);
  *&v39 = v38;
  *(&v39 + 1) = v12;
  LOBYTE(v40) = v13;
  *(&v40 + 1) = *v65;
  DWORD1(v40) = *&v65[3];
  *(&v40 + 1) = v14;
  LOBYTE(v41) = v15;
  *(&v41 + 1) = *v63;
  DWORD1(v41) = *&v63[3];
  v26 = v32;
  *(&v41 + 1) = v36;
  *&v42 = v32;
  BYTE8(v42) = v8;
  *(&v42 + 9) = *v62;
  HIDWORD(v42) = *&v62[3];
  *&v43 = v17;
  *(&v43 + 1) = v19;
  *&v44 = v21;
  *(&v44 + 1) = v23;
  v45 = 0;
  *(a1 + 96) = 0;
  v27 = v40;
  *a1 = v39;
  *(a1 + 16) = v27;
  v28 = v44;
  *(a1 + 64) = v43;
  *(a1 + 80) = v28;
  v29 = v42;
  *(a1 + 32) = v41;
  *(a1 + 48) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD80, &qword_23815F8F0);
  sub_2380712E4(v25, a1 + *(v30 + 48), &qword_27DEEDD78, &qword_23815F8E8);
  sub_2380712E4(&v39, v46, &qword_27DEEDD88, &qword_23815F8F8);
  sub_238071284(v37, &qword_27DEEDD78, &qword_23815F8E8);
  sub_238071284(v25, &qword_27DEEDD78, &qword_23815F8E8);
  v46[0] = v38;
  v46[1] = v33;
  v47 = v34;
  *v48 = *v65;
  *&v48[3] = *&v65[3];
  v49 = v14;
  v50 = v15;
  *v51 = *v63;
  *&v51[3] = *&v63[3];
  v52 = v36;
  v53 = v26;
  v54 = v8;
  *&v55[3] = *&v62[3];
  *v55 = *v62;
  v56 = v17;
  v57 = v19;
  v58 = v21;
  v59 = v23;
  v60 = 0;
  return sub_238071284(v46, &qword_27DEEDD88, &qword_23815F8F8);
}

uint64_t sub_238140AAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD90, &qword_23815F900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - v6;
  v8 = type metadata accessor for _DDDevicePickerView();
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD98, &qword_23815F908);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDA0, &qword_23815F910);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v72 = &v64 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDA8, &qword_23815F918);
  v17 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v73 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDB0, &qword_23815F920);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  if (*(*(v2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType))
  {
    goto LABEL_2;
  }

  v67 = a1;
  v65 = &v64 - v22;
  v64 = v23;
  v25 = sub_238139870();
  sub_2381533AC();
  v26 = MEMORY[0x2383E79D0]();
  v27 = sub_23815337C();
  v66 = v4;
  v28 = v27;

  if ((((v25 - 3) < 0xFEu) & ~v28) != 0 || v25 == 3)
  {
LABEL_2:
    swift_storeEnumTagMultiPayload();
    sub_23814C024();
    return sub_238153ECC();
  }

  else
  {
    v29 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v30 = sub_238154C8C();
    v31 = [v29 initWithBundleIdentifier_];

    v32 = *MEMORY[0x277D1B240];
    v33 = objc_opt_self();
    v34 = v31;
    v35 = [v33 imageDescriptorNamed_];
    sub_23814EF88(v2, &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
    v36 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v37 = swift_allocObject() + v36;
    v38 = v34;
    sub_23814E8B0(&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v37, type metadata accessor for _DDDevicePickerView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB760, &qword_23815F800);
    sub_23814C274();
    sub_2381528FC();
    v39 = sub_238139870();
    CGSizeMake(v39);
    v40 = v72;
    v41 = sub_238139870();
    CGSizeMake(v41);
    sub_2381548DC();
    sub_2381538EC();
    (*(v69 + 32))(v40, v13, v70);
    v42 = (v40 + *(v14 + 36));
    v43 = v75;
    *v42 = v74;
    v42[1] = v43;
    v42[2] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238158810;
    v45 = sub_23815410C();
    *(inited + 32) = v45;
    v46 = sub_23815412C();
    *(inited + 33) = v46;
    v47 = sub_23815413C();
    sub_23815413C();
    if (sub_23815413C() != v45)
    {
      v47 = sub_23815413C();
    }

    sub_23815413C();
    if (sub_23815413C() != v46)
    {
      v47 = sub_23815413C();
    }

    sub_23815377C();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v73;
    sub_23807121C(v40, v73, &qword_27DEEDDA0, &qword_23815F910);
    v57 = v56 + *(v71 + 36);
    *v57 = v47;
    *(v57 + 8) = v49;
    *(v57 + 16) = v51;
    *(v57 + 24) = v53;
    *(v57 + 32) = v55;
    *(v57 + 40) = 0;
    sub_2381545DC();
    v58 = sub_23815460C();

    v59 = v56;
    v60 = v64;
    sub_23807121C(v59, v64, &qword_27DEEDDA8, &qword_23815F918);
    v61 = (v60 + *(v19 + 36));
    *v61 = v58;
    v61[1] = 0x4026000000000000;
    v61[2] = 0;
    v61[3] = 0;
    v62 = v60;
    v63 = v65;
    sub_23807121C(v62, v65, &qword_27DEEDDB0, &qword_23815F920);
    sub_2380712E4(v63, v7, &qword_27DEEDDB0, &qword_23815F920);
    swift_storeEnumTagMultiPayload();
    sub_23814C024();
    sub_238153ECC();

    return sub_238071284(v63, &qword_27DEEDDB0, &qword_23815F920);
  }
}

__n128 sub_238141270@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_238139870() == 1)
  {
    v5 = 46;
  }

  else
  {
    v5 = 43;
  }

  if (*(*(v3 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType))
  {
    v6 = (v3 + *(type metadata accessor for _DDDevicePickerView() + 96));
    v7 = *v6;
    v8 = v6[1];
    v9 = *MEMORY[0x277CE7BF8];
    v10 = sub_238154CCC();
    if (v8)
    {
      if (v7 == v10 && v8 == v11)
      {

LABEL_15:
        v5 = 45;
        goto LABEL_16;
      }

      v13 = sub_2381555CC();

      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v5 = 41;
  }

LABEL_16:
  v14 = sub_238139870();
  if (v14 <= 1)
  {
    if (v14)
    {
      v56 = sub_238153DFC();
      LOBYTE(v144) = 0;
      sub_238142D2C(v5, v3, a1, a2, &v98);
      *&v153[7] = v98;
      *&v153[23] = *v99;
      *&v153[39] = *&v99[16];
      *&v153[55] = *&v99[32];
      v106 = v56;
      v107[0] = v144;
      *&v107[1] = *v153;
      *&v107[17] = *&v153[16];
      *&v107[33] = *&v153[32];
      *&v107[49] = *&v153[48];
      *&v107[64] = *&v99[40];
      *&v153[32] = *&v107[16];
      *&v153[48] = *&v107[32];
      *&v153[64] = *&v107[48];
      *&v154 = *&v99[40];
      *v153 = v56;
      *&v153[16] = *v107;
      LOBYTE(v89) = 0;
      BYTE8(v154) = 0;
      sub_2380712E4(&v106, &v144, &qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC998, &qword_23815DAA0);
      sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0);
      sub_238153ECC();
      v126 = v146;
      v127 = v147;
      v128[0] = v148[0];
      *(v128 + 9) = *(v148 + 9);
      v124 = v144;
      v125 = v145;
      sub_23814C52C(&v124);
      v157 = v131;
      *v158 = v132;
      *&v158[16] = v133;
      *&v153[64] = v128[0];
      v154 = v128[1];
      v155 = v129;
      v156 = v130;
      *v153 = v124;
      *&v153[16] = v125;
      *&v153[32] = v126;
      *&v153[48] = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE00, &qword_23815F938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE28, &qword_23815F948);
      sub_23814C398();
      sub_23814C47C();
      sub_238153ECC();
      v151 = v121;
      *v152 = v122;
      *&v152[16] = v123;
      v148[0] = v117;
      v148[1] = v118;
      v149 = v119;
      v150 = v120;
      v144 = v113;
      v145 = v114;
      v146 = v115;
      v147 = v116;
      sub_23814C538(&v144);
      v157 = v151;
      *v158 = *v152;
      *&v158[15] = *&v152[15];
      *&v153[64] = v148[0];
      v154 = v148[1];
      v155 = v149;
      v156 = v150;
      *v153 = v144;
      *&v153[16] = v145;
      *&v153[32] = v146;
      *&v153[48] = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
      sub_23814C30C();
      sub_238153ECC();
      sub_238071284(&v106, &qword_27DEEC998, &qword_23815DAA0);
    }

    else
    {
      v54 = sub_238153DFC();
      LOBYTE(v144) = 0;
      sub_2381429D0(v5, a1, a2, &v89);
      *&v153[7] = v89;
      *&v153[23] = v90;
      *&v153[39] = v91;
      *&v153[55] = v92;
      v98 = v54;
      v99[0] = v144;
      *&v99[1] = *v153;
      *&v99[17] = *&v153[16];
      *&v99[33] = *&v153[32];
      *&v99[49] = *&v153[48];
      *&v99[64] = *(&v92 + 1);
      v106 = v54;
      *v107 = *v99;
      *&v107[64] = *(&v92 + 1);
      *&v107[32] = *&v99[32];
      *&v107[48] = *&v99[48];
      *&v107[16] = *&v99[16];
      sub_23814C554(&v106);
      v157 = v110;
      *v158 = v111;
      v158[16] = v112;
      *&v153[64] = *&v107[48];
      v154 = *&v107[64];
      v155 = v108;
      v156 = v109;
      *v153 = v106;
      *&v153[16] = *v107;
      *&v153[32] = *&v107[16];
      *&v153[48] = *&v107[32];
      sub_2380712E4(&v98, &v144, &qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE18, &qword_23815F940);
      sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0);
      sub_2380711D4(&qword_27DEEDE10, &qword_27DEEDE18, &qword_23815F940);
      sub_238153ECC();
      v131 = v151;
      v132 = *v152;
      LOBYTE(v133) = v152[16];
      v128[0] = v148[0];
      v128[1] = v148[1];
      v129 = v149;
      v130 = v150;
      v124 = v144;
      v125 = v145;
      v126 = v146;
      v127 = v147;
      sub_23814C54C(&v124);
      v157 = v131;
      *v158 = v132;
      *&v158[16] = v133;
      *&v153[64] = v128[0];
      v154 = v128[1];
      v155 = v129;
      v156 = v130;
      *v153 = v124;
      *&v153[16] = v125;
      *&v153[32] = v126;
      *&v153[48] = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE00, &qword_23815F938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE28, &qword_23815F948);
      sub_23814C398();
      sub_23814C47C();
      sub_238153ECC();
      v151 = v121;
      *v152 = v122;
      *&v152[16] = v123;
      v148[0] = v117;
      v148[1] = v118;
      v149 = v119;
      v150 = v120;
      v144 = v113;
      v145 = v114;
      v146 = v115;
      v147 = v116;
      sub_23814C538(&v144);
      v156 = v150;
      v157 = v151;
      *v158 = *v152;
      *&v158[15] = *&v152[15];
      *&v153[64] = v148[0];
      v154 = v148[1];
      v155 = v149;
      *v153 = v144;
      *&v153[16] = v145;
      *&v153[32] = v146;
      *&v153[48] = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
      sub_23814C30C();
      sub_238153ECC();
      sub_238071284(&v98, &qword_27DEEC998, &qword_23815DAA0);
    }

    v157 = v142;
    *v158 = v143[0];
    *&v158[15] = *(v143 + 15);
    *&v153[64] = v138;
    v154 = v139;
    v155 = v140;
    v156 = v141;
    *v153 = v134;
    *&v153[16] = v135;
    *&v153[32] = v136;
    *&v153[48] = v137;
  }

  else
  {
    if (v14 == 2)
    {
      v55 = sub_238153DFC();
      LOBYTE(v144) = 0;
      sub_238143038(v5, a1, a2, &v98);
      *&v153[7] = v98;
      *&v153[23] = *v99;
      *&v153[39] = *&v99[16];
      *&v153[55] = *&v99[32];
      v106 = v55;
      v107[0] = v144;
      *&v107[1] = *v153;
      *&v107[17] = *&v153[16];
      *&v107[33] = *&v153[32];
      *&v107[49] = *&v153[48];
      *&v107[64] = *&v99[40];
      *&v153[32] = *&v107[16];
      *&v153[48] = *&v107[32];
      *&v153[64] = *&v107[48];
      *&v154 = *&v99[40];
      *v153 = v55;
      *&v153[16] = *v107;
      LOBYTE(v89) = 1;
      BYTE8(v154) = 1;
      sub_2380712E4(&v106, &v144, &qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC998, &qword_23815DAA0);
      sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0);
      sub_238153ECC();
      v126 = v146;
      v127 = v147;
      v128[0] = v148[0];
      *(v128 + 9) = *(v148 + 9);
      v124 = v144;
      v125 = v145;
      sub_23814C52C(&v124);
      v157 = v131;
      *v158 = v132;
      *&v158[16] = v133;
      *&v153[64] = v128[0];
      v154 = v128[1];
      v155 = v129;
      v156 = v130;
      *v153 = v124;
      *&v153[16] = v125;
      *&v153[32] = v126;
      *&v153[48] = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE00, &qword_23815F938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE28, &qword_23815F948);
      sub_23814C398();
      sub_23814C47C();
      sub_238153ECC();
      v151 = v121;
      *v152 = v122;
      *&v152[16] = v123;
      v148[0] = v117;
      v148[1] = v118;
      v149 = v119;
      v150 = v120;
      v144 = v113;
      v145 = v114;
      v146 = v115;
      v147 = v116;
      sub_23814C538(&v144);
      v157 = v151;
      *v158 = *v152;
      *&v158[15] = *&v152[15];
      *&v153[64] = v148[0];
      v154 = v148[1];
      v155 = v149;
      v156 = v150;
      *v153 = v144;
      *&v153[16] = v145;
      *&v153[32] = v146;
      *&v153[48] = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
      sub_23814C30C();
      sub_238153ECC();
      sub_238071284(&v106, &qword_27DEEC998, &qword_23815DAA0);
      v157 = v142;
      *v158 = v143[0];
      *&v158[15] = *(v143 + 15);
      *&v153[64] = v138;
      v154 = v139;
      v155 = v140;
      v156 = v141;
      *v153 = v134;
      *&v153[16] = v135;
      v53 = v136;
      v52 = v137;
    }

    else
    {
      if (v14 != 3)
      {
        sub_23814C300(&v144);
        v142 = v151;
        v143[0] = *v152;
        *(v143 + 15) = *&v152[15];
        v138 = v148[0];
        v139 = v148[1];
        v140 = v149;
        v141 = v150;
        v134 = v144;
        v135 = v145;
        v136 = v146;
        v137 = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
        sub_23814C30C();
        sub_238153ECC();
        goto LABEL_27;
      }

      *v153 = sub_23807CB28(v5);
      sub_2380704A0();
      v15 = sub_23815438C();
      v68 = a3;
      v17 = v16;
      v19 = v18;
      sub_2381542BC();
      sub_2381541AC();

      v20 = sub_23815435C();
      v63 = v21;
      v65 = v20;
      v23 = v22;
      v62 = v24;

      sub_238070490(v15, v17, v19 & 1);

      v25 = sub_23815412C();
      sub_23815377C();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v153[0] = v23 & 1;
      LOBYTE(v144) = 0;
      v34 = sub_23815414C();
      sub_23815377C();
      LOBYTE(v134) = 0;
      *&v80 = v65;
      *(&v80 + 1) = v63;
      LOBYTE(v81) = v23 & 1;
      *(&v81 + 1) = v62;
      LOBYTE(v82) = v25;
      *(&v82 + 1) = v27;
      *&v83 = v29;
      *(&v83 + 1) = v31;
      *&v84 = v33;
      BYTE8(v84) = 0;
      HIDWORD(v84) = *&v153[3];
      *(&v84 + 9) = *v153;
      LOBYTE(v85) = v34;
      DWORD1(v85) = *(&v144 + 3);
      *(&v85 + 1) = v144;
      *(&v85 + 1) = v35;
      *v86 = v36;
      *&v86[8] = v37;
      *&v86[16] = v38;
      v86[24] = 0;
      *v153 = a1;
      *&v153[8] = a2;

      v39 = sub_23815438C();
      v41 = v40;
      v43 = v42;
      sub_2381542BC();
      v44 = sub_23815435C();
      v64 = v45;
      v66 = v44;
      v47 = v46;

      sub_238070490(v39, v41, v43 & 1);

      sub_23815463C();
      v70 = sub_23815431C();
      v72 = v48;
      v67 = v49;
      v51 = v50;

      sub_238070490(v66, v64, v47 & 1);

      *v79 = *v86;
      *&v79[9] = *&v86[9];
      v75 = v82;
      v76 = v83;
      v87[2] = v82;
      v87[3] = v83;
      v73 = v80;
      v74 = v81;
      v87[0] = v80;
      v87[1] = v81;
      *(v88 + 9) = *&v86[9];
      v88[0] = *v86;
      v77 = v84;
      v78 = v85;
      v87[4] = v84;
      v87[5] = v85;
      v91 = v82;
      v92 = v83;
      v89 = v80;
      v90 = v81;
      *(v95 + 9) = *&v86[9];
      v94 = v85;
      v95[0] = *v86;
      v93 = v84;
      *&v96 = v70;
      *(&v96 + 1) = v67;
      LOBYTE(v97) = v51 & 1;
      *(&v97 + 1) = v72;
      v98 = v80;
      *v99 = v81;
      *&v99[48] = v84;
      *&v99[64] = v85;
      *&v99[16] = v82;
      *&v99[32] = v83;
      v102 = v96;
      v103 = v97;
      v100 = *v86;
      v101 = v95[1];
      sub_2380712E4(&v80, v153, &qword_27DEEDE30, &qword_23815F950);
      sub_238070430(v70, v67, v51 & 1);

      sub_2380712E4(v87, v153, &qword_27DEEDE30, &qword_23815F950);
      sub_238070430(v70, v67, v51 & 1);

      sub_238070490(v70, v67, v51 & 1);

      v104[4] = v77;
      v104[5] = v78;
      *v105 = *v79;
      *&v105[9] = *&v79[9];
      v104[0] = v73;
      v104[1] = v74;
      v104[2] = v75;
      v104[3] = v76;
      sub_238071284(v104, &qword_27DEEDE30, &qword_23815F950);
      v108 = v100;
      v109 = v101;
      v110 = v102;
      v111 = v103;
      *&v107[16] = *&v99[16];
      *&v107[32] = *&v99[32];
      *&v107[48] = *&v99[48];
      *&v107[64] = *&v99[64];
      v106 = v98;
      *v107 = *v99;
      sub_23814C540(&v106);
      v157 = v110;
      *v158 = v111;
      v158[16] = v112;
      *&v153[64] = *&v107[48];
      v154 = *&v107[64];
      v155 = v108;
      v156 = v109;
      *v153 = v106;
      *&v153[16] = *v107;
      *&v153[32] = *&v107[16];
      *&v153[48] = *&v107[32];
      sub_2380712E4(&v89, &v144, &qword_27DEEDE38, &qword_23815F958);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE18, &qword_23815F940);
      sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0);
      sub_2380711D4(&qword_27DEEDE10, &qword_27DEEDE18, &qword_23815F940);
      a3 = v68;
      sub_238153ECC();
      v131 = v151;
      v132 = *v152;
      LOBYTE(v133) = v152[16];
      v128[0] = v148[0];
      v128[1] = v148[1];
      v129 = v149;
      v130 = v150;
      v124 = v144;
      v125 = v145;
      v126 = v146;
      v127 = v147;
      sub_23814C54C(&v124);
      v157 = v131;
      *v158 = v132;
      *&v158[16] = v133;
      *&v153[64] = v128[0];
      v154 = v128[1];
      v155 = v129;
      v156 = v130;
      *v153 = v124;
      *&v153[16] = v125;
      *&v153[32] = v126;
      *&v153[48] = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE00, &qword_23815F938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE28, &qword_23815F948);
      sub_23814C398();
      sub_23814C47C();
      sub_238153ECC();
      v151 = v121;
      *v152 = v122;
      *&v152[16] = v123;
      v148[0] = v117;
      v148[1] = v118;
      v149 = v119;
      v150 = v120;
      v144 = v113;
      v145 = v114;
      v146 = v115;
      v147 = v116;
      sub_23814C538(&v144);
      v157 = v151;
      *v158 = *v152;
      *&v158[15] = *&v152[15];
      *&v153[64] = v148[0];
      v154 = v148[1];
      v155 = v149;
      v156 = v150;
      *v153 = v144;
      *&v153[16] = v145;
      *&v153[32] = v146;
      *&v153[48] = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
      sub_23814C30C();
      sub_238153ECC();
      sub_238071284(&v89, &qword_27DEEDE38, &qword_23815F958);
      sub_238070490(v70, v67, v51 & 1);

      sub_238071284(&v80, &qword_27DEEDE30, &qword_23815F950);
      v157 = v142;
      *v158 = v143[0];
      *&v158[15] = *(v143 + 15);
      *&v153[64] = v138;
      v154 = v139;
      v155 = v140;
      v156 = v141;
      *v153 = v134;
      *&v153[16] = v135;
      v53 = v136;
      v52 = v137;
    }

    *&v153[32] = v53;
    *&v153[48] = v52;
  }

LABEL_27:
  v57 = *v158;
  *(a3 + 128) = v157;
  *(a3 + 144) = v57;
  *(a3 + 159) = *&v158[15];
  v58 = v154;
  *(a3 + 64) = *&v153[64];
  *(a3 + 80) = v58;
  v59 = v156;
  *(a3 + 96) = v155;
  *(a3 + 112) = v59;
  v60 = *&v153[16];
  *a3 = *v153;
  *(a3 + 16) = v60;
  result = *&v153[48];
  *(a3 + 32) = *&v153[32];
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_238142478@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD78, &qword_23815F8E8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v26 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-v7];
  v9 = sub_23815468C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
  v14 = sub_2381546CC();
  (*(v10 + 8))(v13, v9);
  sub_2381548DC();
  sub_2381538EC();
  LOBYTE(v13) = v29;
  v15 = v30;
  v24 = v31;
  v17 = v32;
  v16 = v33;
  v25 = v8;
  v18 = v28;
  sub_238140AAC(v8);
  v19 = v8;
  v20 = v26;
  sub_2380712E4(v19, v26, &qword_27DEEDD78, &qword_23815F8E8);
  *a2 = v14;
  *(a2 + 8) = v18;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v24;
  *(a2 + 40) = v17;
  *(a2 + 48) = v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE0, &qword_23815F928);
  sub_2380712E4(v20, a2 + *(v21 + 48), &qword_27DEEDD78, &qword_23815F8E8);

  sub_238071284(v25, &qword_27DEEDD78, &qword_23815F8E8);
  sub_238071284(v20, &qword_27DEEDD78, &qword_23815F8E8);
}

double sub_23814270C(char a1, char a2)
{
  if (a2 == 1)
  {
    return 16.0;
  }

  sub_2381533AC();
  v5 = MEMORY[0x2383E79D0]();
  v6 = sub_23815337C();

  if (v6)
  {
    if (a2 == 3)
    {
      return 13.0;
    }
  }

  else if (a2 != 2)
  {
    return 13.0;
  }

  v7 = a2 != 2 && a1 == 0;
  result = 0.0;
  if (!v7)
  {
    return 16.0;
  }

  return result;
}

double sub_2381427C8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23815468C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v7 = sub_2381546CC();
  (*(v3 + 8))(v6, v2);
  v8 = sub_238139870();
  CGSizeMake(v8);
  v9 = sub_238139870();
  CGSizeMake(v9);
  sub_2381548DC();
  sub_2381538EC();
  *&v12[8] = v13;
  *&v12[24] = v14;
  *&v12[40] = v15;
  v10 = *&v12[18];
  *(a1 + 18) = *&v12[2];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v10;
  result = *&v12[34];
  *(a1 + 50) = *&v12[34];
  *(a1 + 64) = *&v12[48];
  return result;
}

uint64_t sub_2381429A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2381545EC();
  *a1 = result;
  return result;
}

uint64_t sub_2381429D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a3;
  v55 = sub_23815426C();
  v50 = *(v55 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v55);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_23807CB28(a1);
  v58 = v8;
  v46 = sub_2380704A0();
  v9 = sub_23815438C();
  v11 = v10;
  v13 = v12;
  sub_23815428C();
  v14 = sub_23815435C();
  v16 = v15;
  v18 = v17;

  sub_238070490(v9, v11, v13 & 1);

  sub_23815463C();
  v19 = sub_23815431C();
  v52 = v20;
  v53 = v19;
  v51 = v21;
  v54 = v22;

  sub_238070490(v14, v16, v18 & 1);

  v57 = v48;
  v58 = v49;

  v23 = sub_23815438C();
  v25 = v24;
  LOBYTE(v14) = v26;
  sub_23815424C();
  v27 = v50;
  v28 = v47;
  v29 = v55;
  (*(v50 + 104))(v47, *MEMORY[0x277CE0A10], v55);
  sub_23815429C();

  (*(v27 + 8))(v28, v29);
  v30 = sub_23815435C();
  v32 = v31;
  LOBYTE(v27) = v33;

  sub_238070490(v23, v25, v14 & 1);

  sub_23815421C();
  v34 = sub_2381542FC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_238070490(v30, v32, v27 & 1);

  v41 = v51 & 1;
  v56 = v51 & 1;
  LOBYTE(v57) = v51 & 1;
  v59 = v38 & 1;
  v43 = v52;
  v42 = v53;
  *a4 = v53;
  *(a4 + 8) = v43;
  *(a4 + 16) = v41;
  *(a4 + 24) = v54;
  *(a4 + 32) = v34;
  *(a4 + 40) = v36;
  *(a4 + 48) = v38 & 1;
  *(a4 + 56) = v40;
  v44 = v42;
  sub_238070430(v42, v43, v41);

  sub_238070430(v34, v36, v38 & 1);

  sub_238070490(v34, v36, v38 & 1);

  sub_238070490(v44, v43, v56);
}

uint64_t sub_238142D2C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_23807CB28(a1);
  sub_2380704A0();
  v6 = sub_23815438C();
  v8 = v7;
  v10 = v9;
  sub_23815424C();
  v11 = sub_23815435C();
  v13 = v12;
  v15 = v14;

  sub_238070490(v6, v8, v10 & 1);

  v16 = sub_23815434C();
  v43 = v17;
  v44 = v16;
  v42 = v18;
  v45 = v19;
  sub_238070490(v11, v13, v15 & 1);

  if (*(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType))
  {
  }

  else
  {
    sub_23807CB28(44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_238157F20;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2380F1440();
    *(v20 + 32) = a3;
    *(v20 + 40) = a4;

    sub_238154CEC();
  }

  v21 = sub_23815438C();
  v23 = v22;
  v25 = v24;
  sub_23815417C();
  v26 = sub_23815435C();
  v28 = v27;
  v30 = v29;

  sub_238070490(v21, v23, v25 & 1);

  sub_23815463C();
  v31 = sub_23815431C();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_238070490(v26, v28, v30 & 1);

  *a5 = v44;
  *(a5 + 8) = v43;
  *(a5 + 16) = v42 & 1;
  *(a5 + 24) = v45;
  *(a5 + 32) = v31;
  *(a5 + 40) = v33;
  *(a5 + 48) = v35 & 1;
  *(a5 + 56) = v37;
  sub_238070430(v44, v43, v42 & 1);

  sub_238070430(v31, v33, v35 & 1);

  sub_238070490(v31, v33, v35 & 1);

  sub_238070490(v44, v43, v42 & 1);
}

uint64_t sub_238143038@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v57 = a2;
  v58 = a3;
  v59 = a4;
  v5 = sub_23815426C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23807CB28(a1);
  v62 = v10;
  v53 = sub_2380704A0();
  v11 = sub_23815438C();
  v13 = v12;
  v15 = v14;
  sub_23815419C();
  v52 = *MEMORY[0x277CE0A10];
  v16 = v6[13];
  v47 = v6 + 13;
  v48 = v5;
  v51 = v16;
  v16(v9);
  sub_23815429C();

  v17 = v6[1];
  v49 = v6 + 1;
  v50 = v17;
  v17(v9, v5);
  v18 = sub_23815435C();
  v20 = v19;
  LOBYTE(v5) = v21;

  sub_238070490(v11, v13, v15 & 1);

  sub_23815463C();
  v22 = sub_23815431C();
  v55 = v23;
  v56 = v22;
  v25 = v24;
  v54 = v26;

  sub_238070490(v18, v20, v5 & 1);

  v61 = v57;
  v62 = v58;

  v27 = sub_23815438C();
  v29 = v28;
  LOBYTE(v18) = v30;
  sub_23815424C();
  v31 = v48;
  v51(v9, v52, v48);
  sub_23815429C();

  v50(v9, v31);
  v32 = sub_23815435C();
  v34 = v33;
  LOBYTE(v20) = v35;

  sub_238070490(v27, v29, v18 & 1);

  sub_23815421C();
  v36 = sub_2381542FC();
  v38 = v37;
  LOBYTE(v18) = v39;
  v41 = v40;
  sub_238070490(v32, v34, v20 & 1);

  v42 = v54 & 1;
  v60 = v54 & 1;
  LOBYTE(v61) = v54 & 1;
  v63 = v18 & 1;
  v43 = v59;
  v44 = v55;
  v45 = v56;
  *v59 = v56;
  v43[1] = v25;
  *(v43 + 16) = v42;
  v43[3] = v44;
  v43[4] = v36;
  v43[5] = v38;
  *(v43 + 48) = v18 & 1;
  v43[7] = v41;
  sub_238070430(v45, v25, v42);

  sub_238070430(v36, v38, v18 & 1);

  sub_238070490(v36, v38, v18 & 1);

  sub_238070490(v45, v25, v60);
}

uint64_t sub_2381433E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v23 = sub_2381547FC();
  v21 = *(v23 - 8);
  v3 = v21;
  v4 = *(v21 + 64);
  v5 = MEMORY[0x28223BE20](v23);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v22 = sub_238153D1C();
  v37 = 1;
  sub_2381438D0(a1, &v33);
  v50 = *&v34[176];
  v51 = *&v34[192];
  v52 = *&v34[208];
  v46 = *&v34[112];
  v47 = *&v34[128];
  v49 = *&v34[160];
  v48 = *&v34[144];
  v42 = *&v34[48];
  v43 = *&v34[64];
  v45 = *&v34[96];
  v44 = *&v34[80];
  v38 = v33;
  v39 = *v34;
  v41 = *&v34[32];
  v40 = *&v34[16];
  v53[12] = *&v34[176];
  v53[13] = *&v34[192];
  v53[14] = *&v34[208];
  v53[8] = *&v34[112];
  v53[9] = *&v34[128];
  v53[11] = *&v34[160];
  v53[10] = *&v34[144];
  v53[4] = *&v34[48];
  v53[5] = *&v34[64];
  v53[7] = *&v34[96];
  v53[6] = *&v34[80];
  v53[0] = v33;
  v53[1] = *v34;
  v53[3] = *&v34[32];
  v53[2] = *&v34[16];
  sub_2380712E4(&v38, v32, &qword_27DEEDCB0, &qword_23815F7D8);
  sub_238071284(v53, &qword_27DEEDCB0, &qword_23815F7D8);
  *&v36[183] = v49;
  *&v36[199] = v50;
  *&v36[215] = v51;
  *&v36[231] = v52;
  *&v36[119] = v45;
  *&v36[135] = v46;
  *&v36[151] = v47;
  *&v36[167] = v48;
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[103] = v44;
  *&v36[7] = v38;
  *&v36[23] = v39;
  *&v36[39] = v40;
  v10 = v37;
  sub_2381548EC();
  sub_238153A8C();
  v11 = v9;
  v20 = v9;
  sub_2381547EC();
  v12 = *(v3 + 16);
  v13 = v23;
  v12(v7, v11, v23);
  v14 = v22;
  v32[0] = v22;
  v32[1] = 0;
  LOBYTE(v32[2]) = v10;
  *(&v32[26] + 1) = *&v36[192];
  *(&v32[28] + 1) = *&v36[208];
  *(&v32[30] + 1) = *&v36[224];
  v32[32] = *&v36[239];
  *(&v32[18] + 1) = *&v36[128];
  *(&v32[20] + 1) = *&v36[144];
  *(&v32[22] + 1) = *&v36[160];
  *(&v32[24] + 1) = *&v36[176];
  *(&v32[10] + 1) = *&v36[64];
  *(&v32[12] + 1) = *&v36[80];
  *(&v32[14] + 1) = *&v36[96];
  *(&v32[16] + 1) = *&v36[112];
  *(&v32[2] + 1) = *v36;
  *(&v32[4] + 1) = *&v36[16];
  *(&v32[6] + 1) = *&v36[32];
  *(&v32[8] + 1) = *&v36[48];
  *&v32[41] = v29;
  *&v32[43] = v30;
  *&v32[45] = v31;
  *&v32[33] = v25;
  *&v32[35] = v26;
  *&v32[37] = v27;
  *&v32[39] = v28;
  v15 = v24;
  memcpy(v24, v32, 0x178uLL);
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCB8, &qword_23815F7E0) + 48)];
  v12(v16, v7, v13);
  sub_2380712E4(v32, &v33, &qword_27DEEDCC0, &qword_23815F7E8);
  v17 = *(v21 + 8);
  v17(v20, v13);
  v17(v7, v13);
  v33 = v14;
  v34[0] = v10;
  *&v34[193] = *&v36[192];
  *&v34[209] = *&v36[208];
  *v35 = *&v36[224];
  *&v35[15] = *&v36[239];
  *&v34[129] = *&v36[128];
  *&v34[145] = *&v36[144];
  *&v34[161] = *&v36[160];
  *&v34[177] = *&v36[176];
  *&v34[65] = *&v36[64];
  *&v34[81] = *&v36[80];
  *&v34[97] = *&v36[96];
  *&v34[113] = *&v36[112];
  *&v34[1] = *v36;
  *&v34[17] = *&v36[16];
  *&v34[33] = *&v36[32];
  *&v34[49] = *&v36[48];
  *&v35[87] = v29;
  *&v35[103] = v30;
  *&v35[119] = v31;
  *&v35[23] = v25;
  *&v35[39] = v26;
  *&v35[55] = v27;
  *&v35[71] = v28;
  return sub_238071284(&v33, &qword_27DEEDCC0, &qword_23815F7E8);
}

uint64_t sub_2381438D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2381548DC();
  v6 = v5;
  sub_238143BD4(&v44);
  v27 = v50;
  v28 = v51;
  v23 = v46;
  v24 = v47;
  v25 = v48;
  v26 = v49;
  v21 = v44;
  v22 = v45;
  v30[6] = v50;
  v30[7] = v51;
  v30[2] = v46;
  v30[3] = v47;
  v30[4] = v48;
  v30[5] = v49;
  v29 = v52;
  v31 = v52;
  v30[0] = v44;
  v30[1] = v45;
  sub_2380712E4(&v21, v34, &qword_27DEEC988, &unk_23815F7F0);
  sub_238071284(v30, &qword_27DEEC988, &unk_23815F7F0);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v11 = v21;
  v12 = v22;
  v7 = sub_238153DFC();
  LOBYTE(v44) = 1;
  sub_238143F38(a1, v32);
  *&v20[7] = v32[0];
  *&v20[23] = v32[1];
  *&v20[39] = v32[2];
  *&v20[55] = v33;
  v8 = v44;
  *&v34[0] = v4;
  *(&v34[0] + 1) = v6;
  v34[7] = v17;
  v34[8] = v18;
  v35 = v19;
  v34[3] = v13;
  v34[4] = v14;
  v34[5] = v15;
  v34[6] = v16;
  v34[1] = v11;
  v34[2] = v12;
  v36[0] = v7;
  v36[1] = 0;
  v37[0] = v44;
  *&v37[1] = *v20;
  *&v37[17] = *&v20[16];
  *&v37[33] = *&v20[32];
  *&v37[49] = *&v20[48];
  *&v37[64] = *(&v33 + 1);
  *&v10[8] = v7;
  *&v10[24] = *v37;
  *&v10[72] = *&v37[48];
  *v10 = v19;
  *&v10[88] = *(&v33 + 1);
  *&v10[56] = *&v37[32];
  *&v10[40] = *&v37[16];
  *a2 = v34[0];
  a2[1] = v11;
  a2[4] = v14;
  a2[5] = v15;
  a2[2] = v12;
  a2[3] = v13;
  a2[8] = v18;
  a2[9] = *v10;
  a2[6] = v16;
  a2[7] = v17;
  a2[13] = *&v10[64];
  a2[14] = *&v10[80];
  a2[11] = *&v10[32];
  a2[12] = *&v10[48];
  a2[10] = *&v10[16];
  v38[0] = v7;
  v38[1] = 0;
  v39 = v8;
  v41 = *&v20[16];
  v42 = *&v20[32];
  *v43 = *&v20[48];
  *&v43[15] = *&v20[63];
  v40 = *v20;
  sub_2380712E4(v34, &v44, &qword_27DEEC990, &unk_23815C9F0);
  sub_2380712E4(v36, &v44, &qword_27DEEC998, &qword_23815DAA0);
  sub_238071284(v38, &qword_27DEEC998, &qword_23815DAA0);
  *&v44 = v4;
  *(&v44 + 1) = v6;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v47 = v13;
  v48 = v14;
  v49 = v15;
  v50 = v16;
  v45 = v11;
  v46 = v12;
  return sub_238071284(&v44, &qword_27DEEC990, &unk_23815C9F0);
}

uint64_t sub_238143BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23815468C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381545CC();
  v7 = sub_23815460C();

  sub_2381548DC();
  sub_2381538EC();
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  if (qword_27DEEA130 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);

  v8 = sub_2381546CC();

  (*(v3 + 8))(v6, v2);
  sub_2381548DC();
  sub_2381538EC();
  *&v28[6] = *&v29[51];
  *&v28[22] = *&v29[59];
  *&v28[38] = v30;
  *&v31[0] = v7;
  WORD4(v31[0]) = 256;
  *(v31 + 10) = *v29;
  *(&v31[1] + 10) = *&v29[8];
  *(&v31[2] + 10) = *&v29[16];
  *(&v31[3] + 1) = *&v29[23];
  *&v22[31] = v31[2];
  *&v22[39] = v31[3];
  *&v22[15] = v31[0];
  *&v22[23] = v31[1];
  v32[0] = v8;
  v32[1] = 0;
  *v33 = 1;
  *&v33[48] = *(&v30 + 1);
  *&v33[34] = *&v28[32];
  *&v33[18] = *&v28[16];
  *&v33[2] = *v28;
  v27 = *&v33[48];
  v25 = *&v33[16];
  v26 = *&v33[32];
  v23 = v8;
  v24 = *v33;
  v9 = v31[0];
  v10 = v31[1];
  v11 = v31[3];
  *(a1 + 32) = v31[2];
  *(a1 + 48) = v11;
  *a1 = v9;
  *(a1 + 16) = v10;
  v12 = v23;
  v13 = v24;
  v14 = v25;
  v15 = v26;
  *(a1 + 128) = v27;
  *(a1 + 96) = v14;
  *(a1 + 112) = v15;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  v34[0] = v8;
  v34[1] = 0;
  v35 = 1;
  v36 = *v28;
  v37 = *&v28[16];
  *v38 = *&v28[32];
  *&v38[14] = *&v28[46];
  sub_2380712E4(v31, &v18, &unk_27DEEC9A0, &unk_23815CA00);
  sub_2380712E4(v32, &v18, &qword_27DEEB760, &qword_23815F800);
  sub_238071284(v34, &qword_27DEEB760, &qword_23815F800);
  v18 = v7;
  v19 = 256;
  v20 = *v29;
  v21 = *&v29[8];
  *v22 = *&v29[16];
  *&v22[7] = *&v29[23];
  return sub_238071284(&v18, &unk_27DEEC9A0, &unk_23815CA00);
}

uint64_t sub_238143F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a1;
  v56 = a2;
  v2 = sub_23815426C();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238153D7C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_238153D8C();
  v7 = sub_23815436C();
  v9 = v8;
  v11 = v10;
  sub_2381542BC();
  v12 = sub_23815435C();
  v14 = v13;
  v16 = v15;

  sub_238070490(v7, v9, v11 & 1);

  v58 = sub_238153F0C();
  v17 = sub_23815432C();
  v51 = v18;
  v52 = v17;
  v20 = v19;
  v50 = v21;
  sub_238070490(v12, v14, v16 & 1);

  sub_238153D6C();
  sub_238153D5C();
  v22 = (v49 + *(type metadata accessor for _DDDevicePickerView() + 100));
  v23 = *v22;
  v24 = v22[1];
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v25 = sub_23815436C();
  v27 = v26;
  v29 = v28;
  sub_23815424C();
  v31 = v53;
  v30 = v54;
  v32 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277CE0A10], v55);
  sub_23815429C();

  (*(v30 + 8))(v31, v32);
  v33 = sub_23815435C();
  v35 = v34;
  LOBYTE(v32) = v36;

  sub_238070490(v25, v27, v29 & 1);

  sub_23815421C();
  v37 = sub_2381542FC();
  v39 = v38;
  LOBYTE(v27) = v40;
  v42 = v41;
  sub_238070490(v33, v35, v32 & 1);

  v43 = v50 & 1;
  v57 = v50 & 1;
  v60 = v50 & 1;
  LOBYTE(v27) = v27 & 1;
  v59 = v27;
  v44 = v56;
  v45 = v51;
  v46 = v52;
  *v56 = v52;
  v44[1] = v20;
  *(v44 + 16) = v43;
  v44[3] = v45;
  v44[4] = v37;
  v44[5] = v39;
  *(v44 + 48) = v27;
  v44[7] = v42;
  sub_238070430(v46, v20, v43);

  sub_238070430(v37, v39, v27);

  sub_238070490(v37, v39, v27);

  sub_238070490(v46, v20, v57);
}

uint64_t sub_238144350()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v3;
}

uint64_t sub_238144458()
{
  v1 = v0;
  v2 = sub_238153A0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 activeInterfaceOrientation];

  IsLandscape = UIInterfaceOrientationIsLandscape(v8);
  v10 = SFDeviceModelCodeGet();
  sub_238135928(v6);
  LOBYTE(v7) = sub_2381539FC();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    return 1;
  }

  if (sub_238139870() == 3)
  {
    return *(v1 + *(type metadata accessor for _DDDevicePickerView() + 104));
  }

  if (sub_2381364CC())
  {
    sub_23815392C();
    if (v12 > 414.0)
    {
      return 6;
    }

    return *(v1 + *(type metadata accessor for _DDDevicePickerView() + 104));
  }

  v13 = v10 == 2 || IsLandscape;
  if (IsLandscape)
  {
    result = 6;
  }

  else
  {
    result = 3;
  }

  if ((v13 & 1) == 0)
  {
    return *(v1 + *(type metadata accessor for _DDDevicePickerView() + 104));
  }

  return result;
}

uint64_t sub_238144610@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v31 = a2;
  v34 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE060, &qword_23815FC30);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v7 = &v30 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFD0, &qword_23815FBE0);
  v8 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1B8, &qword_23815FD90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1C0, &qword_23815FD98);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF70, &qword_23815FBA0);
  v19 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v21 = &v30 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF80, &qword_23815FBA8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v30 - v24;
  if (sub_238139870() || *(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) != 2)
  {
    if (sub_238139870() == 2)
    {
      sub_23814523C(v31, v32, v10);
      sub_2380712E4(v10, v18, &qword_27DEEDFD0, &qword_23815FBE0);
      swift_storeEnumTagMultiPayload();
      sub_23814CAC0();
      sub_23814CDA4(&qword_27DEEDFC8, &qword_27DEEDFD0, &qword_23815FBE0, sub_23814CE58);
      sub_238153ECC();
      sub_2380712E4(v21, v14, &qword_27DEEDF70, &qword_23815FBA0);
      swift_storeEnumTagMultiPayload();
      sub_23814CA08();
      sub_23814CDA4(&qword_27DEEE058, &qword_27DEEE060, &qword_23815FC30, sub_23814D1C4);
      sub_238153ECC();
      sub_238071284(v21, &qword_27DEEDF70, &qword_23815FBA0);
      v26 = v10;
      v27 = &qword_27DEEDFD0;
      v28 = &qword_23815FBE0;
    }

    else
    {
      sub_23814591C(v31, v32, v7);
      sub_2380712E4(v7, v14, &qword_27DEEE060, &qword_23815FC30);
      swift_storeEnumTagMultiPayload();
      sub_23814CA08();
      sub_23814CDA4(&qword_27DEEE058, &qword_27DEEE060, &qword_23815FC30, sub_23814D1C4);
      sub_238153ECC();
      v26 = v7;
      v27 = &qword_27DEEE060;
      v28 = &qword_23815FC30;
    }
  }

  else
  {
    sub_238144BA0(v31, v25);
    sub_2380712E4(v25, v18, &qword_27DEEDF80, &qword_23815FBA8);
    swift_storeEnumTagMultiPayload();
    sub_23814CAC0();
    sub_23814CDA4(&qword_27DEEDFC8, &qword_27DEEDFD0, &qword_23815FBE0, sub_23814CE58);
    sub_238153ECC();
    sub_2380712E4(v21, v14, &qword_27DEEDF70, &qword_23815FBA0);
    swift_storeEnumTagMultiPayload();
    sub_23814CA08();
    sub_23814CDA4(&qword_27DEEE058, &qword_27DEEE060, &qword_23815FC30, sub_23814D1C4);
    sub_238153ECC();
    sub_238071284(v21, &qword_27DEEDF70, &qword_23815FBA0);
    v26 = v25;
    v27 = &qword_27DEEDF80;
    v28 = &qword_23815FBA8;
  }

  return sub_238071284(v26, v27, v28);
}

double sub_238144BA0@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v52 = a2;
  v3 = type metadata accessor for _DDDevicePickerView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFC0, &qword_23815FBC8);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFB0, &qword_23815FBC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v45 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFA0, &qword_23815FBB8);
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v45 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF90, &qword_23815FBB0);
  v14 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v16 = &v45 - v15;
  *v8 = sub_238153DEC();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1C8, &qword_23815FDA0) + 44);
  v17 = sub_238144350();
  v53 = v17;
  swift_getKeyPath();
  sub_23814EF88(v2, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_23814E8B0(&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for _DDDevicePickerView);
  *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1D0, &qword_23815FDC8);
  sub_2380711D4(&qword_27DEEE198, &qword_27DEEB8A8, &unk_23815A080);
  sub_23814F050(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  sub_2380711D4(&qword_27DEEE1D8, &qword_27DEEE1D0, &qword_23815FDC8);
  sub_23815480C();
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_23815541C();

  v53 = 0xD000000000000010;
  v54 = 0x80000002381633E0;
  v20 = 0xE900000000000073;
  v21 = 0x656369766544794DLL;
  v22 = 0xEC00000073656369;
  v23 = 0x766544726568744FLL;
  v24 = 0xEF73656369766544;
  v25 = 0x6465726961706E55;
  if (v46 != 3)
  {
    v25 = 0x6544646572696150;
    v24 = 0xED00007365636976;
  }

  if (v46 != 2)
  {
    v23 = v25;
    v22 = v24;
  }

  if (v46)
  {
    v21 = 0x656C706F6550;
    v20 = 0xE600000000000000;
  }

  if (v46 <= 1u)
  {
    v26 = v21;
  }

  else
  {
    v26 = v23;
  }

  if (v46 <= 1u)
  {
    v27 = v20;
  }

  else
  {
    v27 = v22;
  }

  MEMORY[0x2383E9410](v26, v27);

  sub_2380711D4(&qword_27DEEDFB8, &qword_27DEEDFC0, &qword_23815FBC8);
  v28 = v49;
  sub_2381544AC();

  sub_238071284(v8, &qword_27DEEDFC0, &qword_23815FBC8);
  v29 = sub_238153EFC();
  v30 = sub_2381540FC();
  v31 = v51;
  sub_23807121C(v28, v51, &qword_27DEEDFB0, &qword_23815FBC0);
  v32 = v31 + *(v48 + 36);
  *v32 = v29;
  *(v32 + 4) = v30;
  v33 = &v16[*(v47 + 36)];
  v34 = *(sub_238153A7C() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_238153DDC();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #20.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
  sub_23807121C(v31, v16, &qword_27DEEDFA0, &qword_23815FBB8);
  LOBYTE(v35) = sub_2381540EC();
  v42 = v52;
  sub_23807121C(v16, v52, &qword_27DEEDF90, &qword_23815FBB0);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF80, &qword_23815FBA8) + 36);
  *v43 = v35;
  result = 0.0;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  *(v43 + 40) = 1;
  return result;
}

uint64_t sub_23814523C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a3;
  v7 = type metadata accessor for _DDDevicePickerView();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE000, &qword_23815FBF8);
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v11 = &v61 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFF0, &qword_23815FBF0);
  v12 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFE0, &qword_23815FBE8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v19 = sub_238144458();
  v66 = a2;
  sub_23815392C();
  if (v20 <= 414.0)
  {
    v21 = 16.0;
  }

  else
  {
    v21 = 20.0;
  }

  v22 = a1;
  result = sub_238144350();
  v24 = *(result + 16);
  v70 = v19;
  v25 = v19;
  v26 = ceil(v24 / v19);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = result;
  v63 = v14;
  v28 = v4;
  v29 = v26;
  result = sub_2381548EC();
  *v11 = result;
  *(v11 + 1) = v30;
  *(v11 + 2) = 0;
  v11[24] = 1;
  *(v11 + 4) = 0;
  v11[40] = 1;
  if (v29 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1E8, &qword_23815FDE0) + 44);
  v62 = v18;
  v71 = 0;
  v72 = v29;
  swift_getKeyPath();
  v31 = v28;
  v32 = v65;
  sub_23814EF88(v28, v65, type metadata accessor for _DDDevicePickerView);
  v33 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  LODWORD(v64) = v22;
  v34 = v15;
  v35 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v70;
  *(v36 + 16) = v27;
  *(v36 + 24) = v37;
  sub_23814E8B0(v32, v36 + v33, type metadata accessor for _DDDevicePickerView);
  *(v36 + v35) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1F0, &qword_23815FDE8);
  sub_238087E84();
  v38 = v34;
  sub_2380711D4(&qword_27DEEE1F8, &qword_27DEEE1F0, &qword_23815FDE8);
  v39 = v62;
  sub_23815480C();
  v40 = sub_23815494C();
  v41 = *(v31 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v42 = v71;
  v43 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE020, &qword_23815FC08) + 36)];
  *v43 = v40;
  v43[1] = v42;
  v44 = sub_23815494C();
  v45 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE010, &qword_23815FC00) + 36)];
  v46 = v70;
  *v45 = v44;
  v45[1] = v46;
  v47 = sub_2381540EC();
  v48 = &v11[*(v67 + 36)];
  *v48 = v47;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  v48[40] = 1;
  v49 = sub_238139870();
  sub_23815392C();
  v51 = v50 + v25 * -112.0;
  if (v49 == 2)
  {
    v52 = 0x4020000000000000;
  }

  else
  {
    v52 = 0;
  }

  if (v49 == 2)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = sub_2381540FC();
  v55 = v63;
  sub_23807121C(v11, v63, &qword_27DEEE000, &qword_23815FBF8);
  v56 = v55 + *(v68 + 36);
  *v56 = v54;
  *(v56 + 8) = v52;
  *(v56 + 16) = 0;
  *(v56 + 24) = v52;
  *(v56 + 32) = v53;
  *(v56 + 40) = 0;
  KeyPath = swift_getKeyPath();
  sub_23807121C(v55, v39, &qword_27DEEDFF0, &qword_23815FBF0);
  v58 = v39 + *(v38 + 36);
  *v58 = KeyPath;
  *(v58 + 8) = 0;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_23815541C();

  v71 = 0xD000000000000010;
  v72 = 0x80000002381633E0;
  if (v64 <= 1u)
  {
    if (v64)
    {
      v59 = 0xE600000000000000;
      v60 = 0x656C706F6550;
    }

    else
    {
      v59 = 0xE900000000000073;
      v60 = 0x656369766544794DLL;
    }
  }

  else if (v64 == 2)
  {
    v59 = 0xEC00000073656369;
    v60 = 0x766544726568744FLL;
  }

  else if (v64 == 3)
  {
    v59 = 0xEF73656369766544;
    v60 = 0x6465726961706E55;
  }

  else
  {
    v59 = 0xED00007365636976;
    v60 = 0x6544646572696150;
  }

  MEMORY[0x2383E9410](v60, v59);

  sub_23814CE58();
  sub_2381544AC();

  return sub_238071284(v39, &qword_27DEEDFE0, &qword_23815FBE8);
}

uint64_t sub_23814591C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v82 = a2;
  v83 = a1;
  v66 = sub_238153EDC();
  v4 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0C0, &qword_23815FC60);
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v65 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0B0, &qword_23815FC58);
  v9 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v65 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0A0, &qword_23815FC50);
  v11 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v65 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE090, &qword_23815FC48);
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v76 = &v65 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE080, &qword_23815FC40);
  v15 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v75 = &v65 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE070, &qword_23815FC38);
  v17 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v65 - v18;
  v19 = sub_23815485C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_23815486C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_238153A0C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3;
  sub_238135928(v32);
  v34 = sub_2381539FC();
  (*(v29 + 8))(v32, v28);
  if (v34)
  {
    sub_2381548EC();
  }

  else
  {
    sub_2381548BC();
  }

  v35 = sub_238144458();
  v65 = v35;
  *v23 = xmmword_23815F370;
  (*(v20 + 104))(v23, *MEMORY[0x277CDF108], v19);
  sub_23815487C();
  sub_238135680(v27, v35);
  sub_23815392C();
  v36 = sub_238139870();
  MEMORY[0x28223BE20](v36);
  *(&v65 - 4) = v33;
  *(&v65 - 24) = v83;
  sub_238153DEC();
  LODWORD(v84) = 0;
  sub_23814F050(&qword_27DEEDEA8, MEMORY[0x277CE0428]);
  sub_23815570C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE220, &qword_23815FE08);
  v64 = sub_23814D79C(&qword_27DEEE228, &qword_27DEEE220, &qword_23815FE08, sub_23814F6B8);
  v37 = v74;
  sub_23815498C();
  v38 = sub_23815494C();
  v39 = *(v33 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v40 = v84;
  v41 = v71;
  (*(v77 + 32))(v71, v37, v78);
  v42 = (v41 + *(v72 + 36));
  *v42 = v38;
  v42[1] = v40;
  v43 = sub_23815494C();
  v44 = v69;
  sub_23807121C(v41, v69, &qword_27DEEE0B0, &qword_23815FC58);
  v45 = (v44 + *(v70 + 36));
  v46 = v65;
  *v45 = v43;
  v45[1] = v46;
  LOBYTE(v43) = sub_2381540EC();
  v47 = v76;
  sub_23807121C(v44, v76, &qword_27DEEE0A0, &qword_23815FC50);
  v48 = v47 + *(v67 + 36);
  *v48 = v43;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  *(v48 + 40) = 1;
  v49 = sub_238139870();
  sub_23815392C();
  v51 = v50 + v46 * -112.0;
  if (v49 == 2)
  {
    v52 = 0x4020000000000000;
  }

  else
  {
    v52 = 0;
  }

  if (v49 == 2)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = sub_2381540FC();
  v55 = v47;
  v56 = v75;
  sub_23807121C(v55, v75, &qword_27DEEE090, &qword_23815FC48);
  v57 = v56 + *(v73 + 36);
  *v57 = v54;
  *(v57 + 8) = v52;
  *(v57 + 16) = 0;
  *(v57 + 24) = v52;
  *(v57 + 32) = v53;
  *(v57 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v59 = v79;
  sub_23807121C(v56, v79, &qword_27DEEE080, &qword_23815FC40);
  v60 = v59 + *(v80 + 36);
  *v60 = KeyPath;
  *(v60 + 8) = 0;
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_23815541C();

  v84 = 0xD000000000000010;
  v85 = 0x80000002381633E0;
  if (v83 <= 1u)
  {
    if (v83)
    {
      v61 = 0xE600000000000000;
      v62 = 0x656C706F6550;
    }

    else
    {
      v61 = 0xE900000000000073;
      v62 = 0x656369766544794DLL;
    }
  }

  else if (v83 == 2)
  {
    v61 = 0xEC00000073656369;
    v62 = 0x766544726568744FLL;
  }

  else if (v83 == 3)
  {
    v61 = 0xEF73656369766544;
    v62 = 0x6465726961706E55;
  }

  else
  {
    v61 = 0xED00007365636976;
    v62 = 0x6544646572696150;
  }

  MEMORY[0x2383E9410](v62, v61);

  sub_23814D1C4();
  sub_2381544AC();

  return sub_238071284(v59, &qword_27DEEE070, &qword_23815FC38);
}

uint64_t sub_238146268@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_23814641C(a1, &v32);
  v3 = v32;
  v4 = v33;
  v5 = v34;
  v6 = sub_2381540EC();
  LOBYTE(v41[0]) = v5;
  v7 = sub_238139870();
  sub_2381467D4(v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_2381540FC();
  v24[0] = v3;
  v24[1] = v4;
  LOBYTE(v25) = v5;
  BYTE8(v25) = v6;
  v26 = 0u;
  v27 = 0u;
  LOBYTE(v28) = 1;
  BYTE8(v28) = v16;
  *&v29 = v9;
  *(&v29 + 1) = v11;
  *&v30 = v13;
  *(&v30 + 1) = v15;
  v31 = 0;
  LOBYTE(v40) = 0;
  v38 = v29;
  v39 = v30;
  v36 = 0u;
  v37 = v28;
  v34 = v25;
  v35 = 0u;
  v32 = v3;
  v33 = v4;
  v23[136] = 1;
  v17 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v17;
  v18 = v40;
  v19 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v19;
  v20 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v20;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  *(a2 + 128) = v18;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  v41[0] = v3;
  v41[1] = v4;
  v42 = v5;
  v43 = v6;
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  v47 = v16;
  v48 = v9;
  v49 = v11;
  v50 = v13;
  v51 = v15;
  v52 = 0;
  sub_2380712E4(v24, v23, &qword_27DEEE1B0, &qword_23815FD88);
  return sub_238071284(v41, &qword_27DEEE1B0, &qword_23815FD88);
}

__n128 sub_23814641C@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_23815426C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_238152F3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2381533AC();
  v14 = MEMORY[0x2383E79D0]();
  v15 = sub_23815337C();

  if ((v15 & 1) != 0 && (sub_238152F1C(), v16 = sub_238152EEC(), (*(v10 + 8))(v13, v9), (v16 & 1) == 0))
  {
    *&v56 = sub_23807CB28(a1 + 36);
    *(&v56 + 1) = v30;
    sub_2380704A0();
    v31 = sub_23815438C();
    v33 = v32;
    v35 = v34;
    sub_23815419C();
    sub_2381541AC();

    v36 = sub_23815435C();
    v38 = v37;
    v40 = v39;

    sub_238070490(v31, v33, v35 & 1);

    sub_23815463C();
    v41 = sub_23815431C();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_238070490(v36, v38, v40 & 1);

    v51 = v41;
    v52 = v43;
    v53 = v45 & 1;
    v54 = v47;
    v55 = 0;
  }

  else
  {
    *&v56 = sub_23807CB28(a1 + 36);
    *(&v56 + 1) = v17;
    sub_2380704A0();
    v18 = sub_23815438C();
    v20 = v19;
    v22 = v21;
    sub_23815424C();
    sub_2381541AC();

    (*(v5 + 104))(v8, *MEMORY[0x277CE0A10], v4);
    sub_23815429C();

    (*(v5 + 8))(v8, v4);
    v23 = sub_23815435C();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    sub_238070490(v18, v20, v22 & 1);

    v51 = v23;
    v52 = v25;
    v53 = v27 & 1;
    v54 = v29;
    v55 = 1;
  }

  sub_238153ECC();
  result = v57;
  v49 = v58;
  *a2 = v56;
  *(a2 + 16) = result;
  *(a2 + 32) = v49;
  return result;
}

void sub_2381467D4(char a1)
{
  v2 = sub_238152F3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1 && a1 != 3)
  {
    sub_2381533AC();
    v7 = MEMORY[0x2383E79D0]();
    v8 = sub_23815337C();

    if (v8)
    {
      sub_238152F1C();
      sub_238152EEC();
      v9 = (*(v3 + 8))(v6, v2);
    }

    v10 = MEMORY[0x2383E79D0](v9);
    v11 = sub_23815337C();

    if (v11)
    {
      sub_238152F1C();
      sub_238152EEC();
      (*(v3 + 8))(v6, v2);
    }
  }
}

void sub_238146988()
{
  v0 = [objc_opt_self() avatarImageRender];
  v1 = [v0 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
  v2 = sub_23815466C();

  qword_27DEEDA68 = v2;
}

uint64_t sub_238146A00(uint64_t a1)
{
  v2 = type metadata accessor for _DDDevicePickerView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  result = sub_238144350();
  v7 = ceil(*(result + 16) / *(a1 + *(v3 + 116)));
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = result;
    v12[0] = 0;
    v12[1] = v7;
    swift_getKeyPath();
    sub_23814EF88(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
    v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    sub_23814E8B0(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for _DDDevicePickerView);
    *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE110, &qword_23815FC80);
    sub_238087E84();
    sub_23814D818();
    return sub_23815480C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_238146C40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE160, &qword_23815FCA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  sub_238147574(a4, a2, *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE120, &qword_23815FC88);
  sub_23814D8B0();
  sub_23814DA80();
  return sub_23815483C();
}

uint64_t sub_238146D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for _DDDevicePickerView();
  v9 = *(*(v8 - 8) + 64);
  v10 = *(a3 + *(MEMORY[0x28223BE20](v8 - 8) + 116));
  v12 = a2 * v10;
  if ((a2 * v10) >> 64 != (a2 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12 + v10;
  if (__OFADD__(v12, v10))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v53[0] = a3;
  a3 = v11;
  v14 = *(a1 + 16);
  if (v13 >= v14)
  {
    a2 = *(a1 + 16);
  }

  else
  {
    a2 = v12 + v10;
  }

  *a4 = sub_238153D0C();
  *(a4 + 8) = 0x4034000000000000;
  *(a4 + 16) = 0;
  if (a2 < v12)
  {
    goto LABEL_14;
  }

  if (v14 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(a1 + 16);
  swift_unknownObjectRetain();
  if (v15 != a2 - v12)
  {
LABEL_18:
    v50 = *(type metadata accessor for _DDNodeViewModel() - 8);
    sub_23814E204(a1, a1 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v12, (2 * a2) | 1);
    v52 = v51;

    a1 = v52;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE190, &qword_23815FD18) + 44);
  v53[1] = a1;
  sub_23814EF88(v53[0], v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v17 = (*(a3 + 80) + 16) & ~*(a3 + 80);
  v18 = swift_allocObject();
  sub_23814E8B0(v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for _DDDevicePickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  sub_2381527EC();
  type metadata accessor for _DDNodeView(0);
  sub_2380711D4(&qword_27DEEE198, &qword_27DEEB8A8, &unk_23815A080);
  sub_23814F050(&qword_27DEEE1A0, type metadata accessor for _DDNodeView);
  sub_23814F050(&qword_27DEEE1A8, type metadata accessor for _DDNodeViewModel);
  sub_23815481C();
  v19 = sub_2381540EC();
  sub_23815377C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE140, &qword_23815FC98) + 36);
  *v28 = v19;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  v29 = sub_23815410C();
  sub_23815377C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE130, &qword_23815FC90) + 36);
  *v38 = v29;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  *(v38 + 24) = v35;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  v39 = sub_23815411C();
  sub_23815377C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE120, &qword_23815FC88);
  v49 = a4 + *(result + 36);
  *v49 = v39;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  return result;
}

uint64_t sub_238147194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _DDNodeViewModel();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _DDDevicePickerView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_23814EF88(a1, a3, type metadata accessor for _DDNodeViewModel);
  v32 = *(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
  v12 = sub_238139870();
  sub_23814EF88(a2, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(a1, v8, type metadata accessor for _DDNodeViewModel);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v31 + 80) + v13) & ~*(v31 + 80);
  v15 = swift_allocObject();
  sub_23814E8B0(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for _DDDevicePickerView);
  sub_23814E8B0(v8, v15 + v14, type metadata accessor for _DDNodeViewModel);
  v16 = type metadata accessor for _DDNodeView(0);
  v17 = v16[8];
  swift_unknownObjectWeakInit();
  v18 = (a3 + v16[9]);
  v33 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA348, &qword_238157968);
  sub_2381546FC();
  v19 = v35;
  *v18 = v34;
  v18[1] = v19;
  v20 = a3 + v16[10];
  LOBYTE(v33) = 0;
  sub_2381546FC();
  v21 = v35;
  *v20 = v34;
  *(v20 + 8) = v21;
  v22 = a3 + v16[11];
  LOBYTE(v33) = 0;
  sub_2381546FC();
  v23 = v35;
  *v22 = v34;
  *(v22 + 8) = v23;
  v24 = v16[12];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v25 = v16[13];
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v26 = a3 + v16[14];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v16[15];
  *(a3 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v28 = (a3 + v16[5]);
  *v28 = sub_2381507DC;
  v28[1] = v15;
  *(a3 + v16[6]) = v12;
  *(a3 + v16[7]) = v32;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_238147574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE188, &qword_23815FD10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE170, &qword_23815FCB0);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v14 = v27 - v13;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else if (*(a2 + 16) < 6uLL || a1 - 1 == a3)
  {
    swift_storeEnumTagMultiPayload();
    sub_23814DB0C();
    return sub_238153ECC();
  }

  else
  {
    sub_2381547EC();
    v15 = sub_2381540EC();
    sub_23815377C();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0) + 36)];
    *v24 = v15;
    *(v24 + 1) = v17;
    *(v24 + 2) = v19;
    *(v24 + 3) = v21;
    *(v24 + 4) = v23;
    v24[40] = 0;
    sub_2381548DC();
    sub_2381538EC();
    v25 = &v14[*(v10 + 36)];
    v26 = v27[1];
    *v25 = v27[0];
    *(v25 + 1) = v26;
    *(v25 + 2) = v27[2];
    sub_2380712E4(v14, v9, &qword_27DEEE170, &qword_23815FCB0);
    swift_storeEnumTagMultiPayload();
    sub_23814DB0C();
    sub_238153ECC();
    return sub_238071284(v14, &qword_27DEEE170, &qword_23815FCB0);
  }

  return result;
}

uint64_t sub_2381477D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for _DDDevicePickerView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = *a1;
  v16 = *a1 * a3;
  if ((v15 * a3) >> 64 != v16 >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16 + a3;
  if (__OFADD__(v16, a3))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = *(a2 + 16);
  if (v17 >= v18)
  {
    a3 = *(a2 + 16);
  }

  else
  {
    a3 += v16;
  }

  *a5 = sub_238153D0C();
  *(a5 + 8) = 0x4034000000000000;
  *(a5 + 16) = 0;
  if (a3 < v16)
  {
    goto LABEL_15;
  }

  if (v18 < v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v16 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 != a3 - v16)
  {
LABEL_19:
    v23 = *(type metadata accessor for _DDNodeViewModel() - 8);
    sub_23814E204(a2, a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v16, (2 * a3) | 1);
    a2 = v24;
    goto LABEL_12;
  }

LABEL_12:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE200, &qword_23815FDF0) + 44);
  v25[1] = a2;
  sub_23814EF88(a4, v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = swift_allocObject();
  sub_23814E8B0(v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for _DDDevicePickerView);
  *(v21 + ((v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  sub_2381527EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE208, &qword_23815FDF8);
  sub_2380711D4(&qword_27DEEE198, &qword_27DEEB8A8, &unk_23815A080);
  sub_2380711D4(&qword_27DEEE210, &qword_27DEEE208, &qword_23815FDF8);
  sub_23814F050(&qword_27DEEE1A8, type metadata accessor for _DDNodeViewModel);
  return sub_23815481C();
}

uint64_t sub_238147B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _DDNodeViewModel();
  v43[0] = *(v6 - 8);
  v7 = *(v43[0] + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _DDDevicePickerView();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_23814EF88(a1, a3, type metadata accessor for _DDNodeViewModel);
  v45 = *(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
  v44 = sub_238139870();
  v13 = *(v10 + 92);
  v43[1] = swift_unknownObjectWeakLoadStrong();
  sub_23814EF88(a2, v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(a1, v8, type metadata accessor for _DDNodeViewModel);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v43[0] + 80) + v14) & ~*(v43[0] + 80);
  v16 = swift_allocObject();
  sub_23814E8B0(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for _DDDevicePickerView);
  sub_23814E8B0(v8, v16 + v15, type metadata accessor for _DDNodeViewModel);
  v17 = type metadata accessor for _DDNodeView(0);
  v18 = v17[8];
  swift_unknownObjectWeakInit();
  v19 = (a3 + v17[9]);
  v46 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA348, &qword_238157968);
  sub_2381546FC();
  v20 = v48;
  *v19 = v47;
  v19[1] = v20;
  v21 = a3 + v17[10];
  LOBYTE(v46) = 0;
  sub_2381546FC();
  v22 = v48;
  *v21 = v47;
  *(v21 + 8) = v22;
  v23 = a3 + v17[11];
  LOBYTE(v46) = 0;
  sub_2381546FC();
  v24 = v48;
  *v23 = v47;
  *(v23 + 8) = v24;
  v25 = v17[12];
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v26 = v17[13];
  *(a3 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v27 = a3 + v17[14];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = v17[15];
  *(a3 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v29 = (a3 + v17[5]);
  *v29 = sub_23814F694;
  v29[1] = v16;
  v30 = v45;
  *(a3 + v17[6]) = v44;
  *(a3 + v17[7]) = v30;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  LOBYTE(v28) = sub_23815411C();
  sub_23815377C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE218, &qword_23815FE00) + 36);
  *v39 = v28;
  *(v39 + 8) = v32;
  *(v39 + 16) = v34;
  *(v39 + 24) = v36;
  *(v39 + 32) = v38;
  *(v39 + 40) = 0;
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE208, &qword_23815FDF8) + 52);
  v41 = sub_2381527EC();
  return (*(*(v41 - 8) + 16))(a3 + v40, a1, v41);
}

uint64_t sub_238147FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  v10 = *(a2 + 40);
  v17[16] = *(a2 + 32);
  v18 = v10;
  v17[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815471C();
  v11 = a2 + *(type metadata accessor for _DDDevicePickerView() + 92);
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = sub_2381527EC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v9, a3, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  v13(v9, a1);
  return sub_238071284(v9, &qword_27DEEC9F0, &qword_23815A090);
}

uint64_t sub_238148158(uint64_t a1, double a2)
{
  v4 = type metadata accessor for _DDDevicePickerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_238144350();
  v8 = sub_23814F774(v7);

  v13[1] = v8;
  swift_getKeyPath();
  sub_23814EF88(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_23814E8B0(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for _DDDevicePickerView);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23814FF64;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE238, &qword_23815FE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE218, &qword_23815FE00);
  sub_2380711D4(&qword_27DEEE240, &qword_27DEEE238, &qword_23815FE40);
  sub_23814F050(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  sub_23814F6B8();
  return sub_23815480C();
}

uint64_t sub_2381483D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _DDNodeViewModel();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _DDDevicePickerView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_23814EF88(a1, a3, type metadata accessor for _DDNodeViewModel);
  v42 = *(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
  v12 = sub_238139870();
  sub_23814EF88(a2, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(a1, v8, type metadata accessor for _DDNodeViewModel);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v41 + 80) + v13) & ~*(v41 + 80);
  v15 = swift_allocObject();
  sub_23814E8B0(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for _DDDevicePickerView);
  sub_23814E8B0(v8, v15 + v14, type metadata accessor for _DDNodeViewModel);
  v16 = type metadata accessor for _DDNodeView(0);
  v17 = v16[8];
  swift_unknownObjectWeakInit();
  v18 = (a3 + v16[9]);
  v43 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA348, &qword_238157968);
  sub_2381546FC();
  v19 = v45;
  *v18 = v44;
  v18[1] = v19;
  v20 = a3 + v16[10];
  LOBYTE(v43) = 0;
  sub_2381546FC();
  v21 = v45;
  *v20 = v44;
  *(v20 + 8) = v21;
  v22 = a3 + v16[11];
  LOBYTE(v43) = 0;
  sub_2381546FC();
  v23 = v45;
  *v22 = v44;
  *(v22 + 8) = v23;
  v24 = v16[12];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v25 = v16[13];
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v26 = a3 + v16[14];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v16[15];
  *(a3 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v28 = (a3 + v16[5]);
  *v28 = sub_2381507DC;
  v28[1] = v15;
  *(a3 + v16[6]) = v12;
  *(a3 + v16[7]) = v42;
  swift_unknownObjectWeakAssign();
  v29 = sub_23815411C();
  sub_23815377C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE218, &qword_23815FE00);
  v39 = a3 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_238148810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a3;
  v100 = a2;
  v110 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E0, &unk_23815C8B0);
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = *(v108 + 64);
  MEMORY[0x28223BE20](v5);
  v95 = &v93 - v7;
  v101 = sub_2381527EC();
  v113 = *(v101 - 8);
  v8 = *(v113 + 64);
  MEMORY[0x28223BE20](v101);
  v93 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA28, &qword_23815A668);
  v10 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v104 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v94 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v93 - v17;
  MEMORY[0x28223BE20](v16);
  v112 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E8, &qword_23815FDD0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v107 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v106 = &v93 - v23;
  v24 = type metadata accessor for _DDDevicePickerView();
  v96 = *(v24 - 8);
  v25 = *(v96 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for _DDNodeViewModel();
  v27 = *(v99 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v99);
  v30 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v93 - v31;
  v97 = &v93 - v31;
  v33 = type metadata accessor for _DDListNodeView();
  v34 = (v33 - 8);
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v105 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v93 - v38;
  v98 = a1;
  sub_23814EF88(a1, v32, type metadata accessor for _DDNodeViewModel);
  sub_23814EF88(v100, v26, type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(a1, v30, type metadata accessor for _DDNodeViewModel);
  v40 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v41 = *(v27 + 80);
  v42 = (v25 + v41 + v40) & ~v41;
  v43 = swift_allocObject();
  v44 = v26;
  v45 = v27;
  v46 = v113;
  sub_23814E8B0(v44, v43 + v40, type metadata accessor for _DDDevicePickerView);
  sub_23814E8B0(v30, v43 + v42, type metadata accessor for _DDNodeViewModel);
  v47 = v34[10];
  *&v39[v47] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v48 = v34[11];
  *&v39[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v49 = &v39[v34[12]];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  v50 = v34[13];
  *&v39[v50] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  v51 = v112;
  swift_storeEnumTagMultiPayload();
  sub_23814E8B0(v97, v39, type metadata accessor for _DDNodeViewModel);
  v52 = 1;
  (*(v27 + 56))(v39, 0, 1, v99);
  v53 = &v39[v34[7]];
  *v53 = 0;
  *(v53 + 1) = 0;
  *&v39[v34[8]] = 0;
  v54 = v34[9];
  v55 = v101;
  v56 = &v39[v54];
  *v56 = sub_23814EEBC;
  v56[1] = v43;
  v57 = *(v46 + 16);
  v57(v51, v98, v55);
  v58 = *(v46 + 56);
  v58(v51, 0, 1, v55);
  v59 = *(v103 + 16);
  if (v59)
  {
    v60 = v103 + ((v41 + 32) & ~v41) + *(v45 + 72) * (v59 - 1);
    v61 = v111;
    v57(v111, v60, v55);
    v52 = 0;
  }

  else
  {
    v61 = v111;
  }

  v58(v61, v52, 1, v55);
  v62 = *(v102 + 48);
  v63 = v104;
  sub_2380712E4(v51, v104, &qword_27DEEC9F0, &qword_23815A090);
  sub_2380712E4(v61, v63 + v62, &qword_27DEEC9F0, &qword_23815A090);
  v64 = *(v113 + 48);
  if (v64(v63, 1, v55) == 1)
  {
    sub_238071284(v61, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v51, &qword_27DEEC9F0, &qword_23815A090);
    v65 = v64(v63 + v62, 1, v55);
    v66 = v106;
    if (v65 == 1)
    {
      sub_238071284(v63, &qword_27DEEC9F0, &qword_23815A090);
LABEL_12:
      v82 = 1;
      v80 = v109;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v67 = v94;
  sub_2380712E4(v63, v94, &qword_27DEEC9F0, &qword_23815A090);
  if (v64(v63 + v62, 1, v55) == 1)
  {
    sub_238071284(v111, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v112, &qword_27DEEC9F0, &qword_23815A090);
    (*(v113 + 8))(v67, v55);
    v66 = v106;
LABEL_9:
    sub_238071284(v63, &qword_27DEEBA28, &qword_23815A668);
    goto LABEL_10;
  }

  v83 = v113;
  v84 = v93;
  (*(v113 + 32))(v93, v63 + v62, v55);
  sub_23814F050(&qword_27DEEBA30, MEMORY[0x277CC95F0]);
  v85 = v67;
  v86 = sub_238154C7C();
  v87 = *(v83 + 8);
  v87(v84, v55);
  sub_238071284(v111, &qword_27DEEC9F0, &qword_23815A090);
  sub_238071284(v112, &qword_27DEEC9F0, &qword_23815A090);
  v87(v85, v55);
  sub_238071284(v63, &qword_27DEEC9F0, &qword_23815A090);
  v66 = v106;
  if (v86)
  {
    goto LABEL_12;
  }

LABEL_10:
  v68 = v95;
  sub_2381547EC();
  v69 = sub_23815412C();
  sub_23815377C();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0) + 36);
  *v78 = v69;
  *(v78 + 8) = v71;
  *(v78 + 16) = v73;
  *(v78 + 24) = v75;
  *(v78 + 32) = v77;
  *(v78 + 40) = 0;
  v79 = sub_23815414C();
  v80 = v109;
  v81 = v68 + *(v109 + 36);
  *v81 = v79;
  *(v81 + 8) = 0u;
  *(v81 + 24) = 0u;
  *(v81 + 40) = 1;
  sub_23807121C(v68, v66, &qword_27DEEC8E0, &unk_23815C8B0);
  v82 = 0;
LABEL_13:
  (*(v108 + 56))(v66, v82, 1, v80);
  v88 = v105;
  sub_23814EF88(v39, v105, type metadata accessor for _DDListNodeView);
  v89 = v107;
  sub_2380712E4(v66, v107, &qword_27DEEC8E8, &qword_23815FDD0);
  v90 = v110;
  sub_23814EF88(v88, v110, type metadata accessor for _DDListNodeView);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1E0, &qword_23815FDD8);
  sub_2380712E4(v89, v90 + *(v91 + 48), &qword_27DEEC8E8, &qword_23815FDD0);
  sub_238071284(v66, &qword_27DEEC8E8, &qword_23815FDD0);
  sub_23814EFF0(v39, type metadata accessor for _DDListNodeView);
  sub_238071284(v89, &qword_27DEEC8E8, &qword_23815FDD0);
  return sub_23814EFF0(v88, type metadata accessor for _DDListNodeView);
}

uint64_t sub_238149344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = a1 + *(type metadata accessor for _DDDevicePickerView() + 92);
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = sub_2381527EC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  v10(v7, MEMORY[0x277D84F90]);
  return sub_238071284(v7, &qword_27DEEC9F0, &qword_23815A090);
}

unint64_t sub_238149488()
{
  result = qword_27DEEDAD0;
  if (!qword_27DEEDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAA8, &qword_23815F420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    sub_23814965C();
    sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
    sub_23807B04C();
    swift_getOpaqueTypeConformance2();
    sub_2380D0648();
    swift_getOpaqueTypeConformance2();
    sub_2380711D4(&qword_27DEEA518, &qword_27DEEA520, &qword_238157BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDAD0);
  }

  return result;
}

unint64_t sub_23814965C()
{
  result = qword_27DEEDAE8;
  if (!qword_27DEEDAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
    sub_2381496E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDAE8);
  }

  return result;
}

unint64_t sub_2381496E8()
{
  result = qword_27DEEDAF0;
  if (!qword_27DEEDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAF8, &qword_23815F460);
    sub_2380711D4(&qword_27DEEDB00, &qword_27DEEDB08, &unk_23815F468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDAF0);
  }

  return result;
}

unint64_t sub_2381497A0()
{
  result = qword_27DEEDB10;
  if (!qword_27DEEDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAB8, &qword_23815F430);
    sub_238149488();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    sub_23814965C();
    sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
    sub_23807B04C();
    swift_getOpaqueTypeConformance2();
    sub_2380D0648();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDB10);
  }

  return result;
}

unint64_t sub_238149948()
{
  result = qword_27DEEDB18;
  if (!qword_27DEEDB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAC0, &qword_23815F438);
    sub_238149A00();
    sub_2380711D4(&qword_27DEEDB30, &qword_27DEEDB38, &qword_23815F480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDB18);
  }

  return result;
}

unint64_t sub_238149A00()
{
  result = qword_27DEEDB20;
  if (!qword_27DEEDB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDB28, &qword_23815F478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    sub_23814965C();
    sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
    sub_23807B04C();
    swift_getOpaqueTypeConformance2();
    sub_2380D0648();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDB20);
  }

  return result;
}

unint64_t sub_238149BA8()
{
  result = qword_27DEEDB40;
  if (!qword_27DEEDB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAC8, &qword_23815F440);
    sub_238149948();
    sub_2381497A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDB40);
  }

  return result;
}

uint64_t sub_238149C68(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_238149CDC()
{
  v1 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23813E688(v2);
}

uint64_t sub_238149D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_23813E7DC(a1);
}

uint64_t sub_238149DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_23813EA1C(a1);
}

uint64_t sub_238149E1C(uint64_t a1, __int128 *a2)
{
  v5 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23813ED7C(a1, a2, v6);
}

uint64_t sub_238149EEC@<X0>(void *a1@<X8>)
{
  result = sub_238153B0C();
  *a1 = v3;
  return result;
}

uint64_t sub_238149F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23814A0B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_238153CFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_2380712E4(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_2381550EC();
    v22 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_23814A2B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238153CFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_2380712E4(v2, &v16 - v11, &unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23807121C(v12, a1, &qword_27DEEA850, &qword_2381580D8);
  }

  v14 = *v12;
  sub_2381550EC();
  v15 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23814A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA850, &qword_2381580D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  sub_2380712E4(a1, &v12 - v9, &qword_27DEEA850, &qword_2381580D8);
  return a5(v10);
}

uint64_t sub_23814A6A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23814A728(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_238152A9C();
}

uint64_t sub_23814A7A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_23814A828(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_238152A9C();
}

uint64_t sub_23814A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2381554AC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23814A998, 0, 0);
}

uint64_t sub_23814A998()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2381554BC();
  v7 = sub_23814F050(&qword_27DEEDB50, MEMORY[0x277D85928]);
  sub_23815560C();
  sub_23814F050(&qword_27DEEDB58, MEMORY[0x277D858F8]);
  sub_2381554CC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_23814AB28;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_23814AB28()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23814ACE4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_23814ACE4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_23814AD50(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for _DDDevicePickerView();
  v6 = *(v2 + *(v5 + 64) + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)) + 8);
  sub_23808CAB0(1, a1, a2);
  return 0;
}

void sub_23814ADD8()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(v0 + *(v1 + 64) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 8);
  sub_23808CAB0(0, 0, 0);
}

uint64_t sub_23814AE4C()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A0C();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_238153F1C();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v6 + v13, 1, v14))
    {
      (*(v15 + 8))(v6 + v13, v14);
    }
  }

  else
  {
    v16 = *(v6 + v13);
  }

  v17 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_238153F1C();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v6 + v17, 1, v18))
    {
      (*(v19 + 8))(v6 + v17, v18);
    }
  }

  else
  {
    v20 = *(v6 + v17);
  }

  sub_2380700D8(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v21 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_238153A2C();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_2381537EC();
    (*(*(v25 - 8) + 8))(v6 + v24, v25);
  }

  else
  {
    v26 = *(v6 + v24);
  }

  v27 = (v6 + v1[17]);
  v28 = *v27;

  v29 = v27[1];

  v30 = *(v6 + v1[18] + 8);

  v31 = *(v6 + v1[19] + 8);

  v32 = *(v6 + v1[20] + 8);

  MEMORY[0x2383EA980](v6 + v1[21]);
  v33 = (v6 + v1[22]);
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_238085CA0(*v33, v34);
  }

  v35 = *(v6 + v1[23] + 8);

  v36 = *(v6 + v1[24] + 8);

  v37 = *(v6 + v1[25] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23814B2DC(uint64_t a1)
{
  v4 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238087150;

  return sub_23813E1FC(a1, v6, v7, v1 + v5);
}

uint64_t sub_23814B56C()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_238153A0C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153F1C();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
    v15 = *(v5 + v12);
  }

  v16 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_238153F1C();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v5 + v16, 1, v17))
    {
      (*(v18 + 8))(v5 + v16, v17);
    }
  }

  else
  {
    v19 = *(v5 + v16);
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v20 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_238153A2C();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  v23 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2381537EC();
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  else
  {
    v25 = *(v5 + v23);
  }

  v26 = (v5 + v1[17]);
  v27 = *v26;

  v28 = v26[1];

  v29 = *(v5 + v1[18] + 8);

  v30 = *(v5 + v1[19] + 8);

  v31 = *(v5 + v1[20] + 8);

  MEMORY[0x2383EA980](v5 + v1[21]);
  v32 = (v5 + v1[22]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_238085CA0(*v32, v33);
  }

  v34 = *(v5 + v1[23] + 8);

  v35 = *(v5 + v1[24] + 8);

  v36 = *(v5 + v1[25] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 6, v2 | 7);
}

double sub_23814B9F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 17) & ~*(v5 + 80)));
  v7 = v6 + *(v5 + 64);
  return sub_23813A8E4(a1, *(v2 + 16), v6, *v7, v7[1], v7[2], v7[3], v7[4], a2, v7[5]);
}

unint64_t sub_23814BAB4()
{
  result = qword_27DEEDC10;
  if (!qword_27DEEDC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDC08, &qword_23815F788);
    sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDC10);
  }

  return result;
}

unint64_t sub_23814BB6C()
{
  result = qword_27DEEDC18;
  if (!qword_27DEEDC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDB78, &qword_23815F558);
    sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBE8, &qword_23815F778);
    sub_2380711D4(&qword_27DEEDBF0, &qword_27DEEDBE8, &qword_23815F778);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDC18);
  }

  return result;
}

unint64_t sub_23814BC9C()
{
  result = qword_27DEEDC38;
  if (!qword_27DEEDC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDC28, &qword_23815F798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDC38);
  }

  return result;
}

unint64_t sub_23814BD18()
{
  result = qword_27DEEDC50;
  if (!qword_27DEEDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDC50);
  }

  return result;
}

uint64_t sub_23814BD6C()
{
}

uint64_t sub_23814BDB4()
{
}

unint64_t sub_23814BDFC()
{
  result = qword_27DEEDC68;
  if (!qword_27DEEDC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBA0, &qword_23815F588);
    sub_23814BEB4();
    sub_2380711D4(&qword_27DEEA518, &qword_27DEEA520, &qword_238157BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDC68);
  }

  return result;
}

unint64_t sub_23814BEB4()
{
  result = qword_27DEEDC70;
  if (!qword_27DEEDC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBA8, &qword_23815F590);
    sub_2380711D4(&qword_27DEEDC78, &qword_27DEEDC80, &qword_23815F7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDC70);
  }

  return result;
}

unint64_t sub_23814BF64()
{
  result = qword_27DEEDC90;
  if (!qword_27DEEDC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBC8, &qword_23815F5B0);
    sub_2380711D4(&qword_27DEEDC98, &qword_27DEEDBC0, &qword_23815F5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDC90);
  }

  return result;
}

unint64_t sub_23814C024()
{
  result = qword_27DEEDDB8;
  if (!qword_27DEEDDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDDB0, &qword_23815F920);
    sub_23814C0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDDB8);
  }

  return result;
}

unint64_t sub_23814C0B0()
{
  result = qword_27DEEDDC0;
  if (!qword_27DEEDDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDDA8, &qword_23815F918);
    sub_23814C13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDDC0);
  }

  return result;
}

unint64_t sub_23814C13C()
{
  result = qword_27DEEDDC8;
  if (!qword_27DEEDDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDDA0, &qword_23815F910);
    sub_2380711D4(&qword_27DEEDDD0, &qword_27DEEDD98, &qword_23815F908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDDC8);
  }

  return result;
}

double sub_23814C1F4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for _DDDevicePickerView() - 8) + 80);

  return sub_2381427C8(a1);
}

unint64_t sub_23814C274()
{
  result = qword_27DEEDDD8;
  if (!qword_27DEEDDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB760, &qword_23815F800);
    sub_2380B5048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDDD8);
  }

  return result;
}

unint64_t sub_23814C30C()
{
  result = qword_27DEEDDF0;
  if (!qword_27DEEDDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDDE8, &qword_23815F930);
    sub_23814C398();
    sub_23814C47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDDF0);
  }

  return result;
}

unint64_t sub_23814C398()
{
  result = qword_27DEEDDF8;
  if (!qword_27DEEDDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDE00, &qword_23815F938);
    sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0);
    sub_2380711D4(&qword_27DEEDE10, &qword_27DEEDE18, &qword_23815F940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDDF8);
  }

  return result;
}

unint64_t sub_23814C47C()
{
  result = qword_27DEEDE20;
  if (!qword_27DEEDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDE28, &qword_23815F948);
    sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDE20);
  }

  return result;
}

unint64_t sub_23814C6C4()
{
  result = qword_27DEEDE48;
  if (!qword_27DEEDE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDE40, &qword_23815F960);
    sub_23814F050(&qword_27DEEDE50, type metadata accessor for _DDDevicePickerEducationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDE48);
  }

  return result;
}

unint64_t sub_23814C7C4()
{
  result = qword_27DEEDE80;
  if (!qword_27DEEDE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDE78, &qword_23815FA50);
    sub_2380711D4(&qword_27DEEDE88, &qword_27DEEDE90, &qword_23815FA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDE80);
  }

  return result;
}

double sub_23814C8F4(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_23814C918(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_23814C950()
{
  result = qword_27DEEDF60;
  if (!qword_27DEEDF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF50, &qword_23815FB98);
    sub_23814CA08();
    sub_23814CDA4(&qword_27DEEE058, &qword_27DEEE060, &qword_23815FC30, sub_23814D1C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDF60);
  }

  return result;
}

unint64_t sub_23814CA08()
{
  result = qword_27DEEDF68;
  if (!qword_27DEEDF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF70, &qword_23815FBA0);
    sub_23814CAC0();
    sub_23814CDA4(&qword_27DEEDFC8, &qword_27DEEDFD0, &qword_23815FBE0, sub_23814CE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDF68);
  }

  return result;
}

unint64_t sub_23814CAC0()
{
  result = qword_27DEEDF78;
  if (!qword_27DEEDF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF80, &qword_23815FBA8);
    sub_23814CB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDF78);
  }

  return result;
}

unint64_t sub_23814CB4C()
{
  result = qword_27DEEDF88;
  if (!qword_27DEEDF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF90, &qword_23815FBB0);
    sub_23814CC04();
    sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDF88);
  }

  return result;
}

unint64_t sub_23814CC04()
{
  result = qword_27DEEDF98;
  if (!qword_27DEEDF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDFA0, &qword_23815FBB8);
    sub_23814CCBC();
    sub_2380711D4(&qword_27DEEC898, &qword_27DEEC8A0, &unk_23815FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDF98);
  }

  return result;
}

unint64_t sub_23814CCBC()
{
  result = qword_27DEEDFA8;
  if (!qword_27DEEDFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDFB0, &qword_23815FBC0);
    sub_2380711D4(&qword_27DEEDFB8, &qword_27DEEDFC0, &qword_23815FBC8);
    sub_23814F050(&qword_27DEEAC80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDFA8);
  }

  return result;
}

uint64_t sub_23814CDA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23814F050(&qword_27DEEAC80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23814CE58()
{
  result = qword_27DEEDFD8;
  if (!qword_27DEEDFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDFE0, &qword_23815FBE8);
    sub_23814CF10();
    sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDFD8);
  }

  return result;
}

unint64_t sub_23814CF10()
{
  result = qword_27DEEDFE8;
  if (!qword_27DEEDFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDFF0, &qword_23815FBF0);
    sub_23814CF9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDFE8);
  }

  return result;
}

unint64_t sub_23814CF9C()
{
  result = qword_27DEEDFF8;
  if (!qword_27DEEDFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE000, &qword_23815FBF8);
    sub_23814D028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDFF8);
  }

  return result;
}

unint64_t sub_23814D028()
{
  result = qword_27DEEE008;
  if (!qword_27DEEE008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE010, &qword_23815FC00);
    sub_23814D0E0();
    sub_2380711D4(&qword_27DEEE048, &qword_27DEEE050, &unk_23815FC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE008);
  }

  return result;
}

unint64_t sub_23814D0E0()
{
  result = qword_27DEEE018;
  if (!qword_27DEEE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE020, &qword_23815FC08);
    sub_2380711D4(&qword_27DEEE028, &qword_27DEEE030, &qword_23815FC10);
    sub_2380711D4(&qword_27DEEE038, &qword_27DEEE040, &qword_23815FC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE018);
  }

  return result;
}

unint64_t sub_23814D1C4()
{
  result = qword_27DEEE068;
  if (!qword_27DEEE068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE070, &qword_23815FC38);
    sub_23814D27C();
    sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE068);
  }

  return result;
}

unint64_t sub_23814D27C()
{
  result = qword_27DEEE078;
  if (!qword_27DEEE078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE080, &qword_23815FC40);
    sub_23814D308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE078);
  }

  return result;
}

unint64_t sub_23814D308()
{
  result = qword_27DEEE088;
  if (!qword_27DEEE088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE090, &qword_23815FC48);
    sub_23814D394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE088);
  }

  return result;
}

unint64_t sub_23814D394()
{
  result = qword_27DEEE098;
  if (!qword_27DEEE098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE0A0, &qword_23815FC50);
    sub_23814D44C();
    sub_2380711D4(&qword_27DEEE048, &qword_27DEEE050, &unk_23815FC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE098);
  }

  return result;
}

unint64_t sub_23814D44C()
{
  result = qword_27DEEE0A8;
  if (!qword_27DEEE0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE0B0, &qword_23815FC58);
    sub_2380711D4(&qword_27DEEE0B8, &qword_27DEEE0C0, &qword_23815FC60);
    sub_2380711D4(&qword_27DEEE038, &qword_27DEEE040, &qword_23815FC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE0A8);
  }

  return result;
}

unint64_t sub_23814D530()
{
  result = qword_27DEEE0C8;
  if (!qword_27DEEE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF38, &qword_23815FB80);
    sub_23814D5E8();
    sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE0C8);
  }

  return result;
}

unint64_t sub_23814D5E8()
{
  result = qword_27DEEE0D0;
  if (!qword_27DEEE0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE0D8, &qword_23815FC68);
    sub_2380711D4(&qword_27DEEE0E0, &qword_27DEEE0E8, &qword_23815FC70);
    sub_2380711D4(&qword_27DEEE038, &qword_27DEEE040, &qword_23815FC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE0D0);
  }

  return result;
}

unint64_t sub_23814D6CC()
{
  result = qword_27DEEE0F0;
  if (!qword_27DEEE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF28, &qword_23815FB70);
    sub_2380711D4(&qword_27DEEDF58, &qword_27DEEDF48, &qword_23815FB90);
    sub_23814C950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE0F0);
  }

  return result;
}

uint64_t sub_23814D79C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23814D818()
{
  result = qword_27DEEE108;
  if (!qword_27DEEE108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE110, &qword_23815FC80);
    sub_23814D8B0();
    sub_23814DA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE108);
  }

  return result;
}

unint64_t sub_23814D8B0()
{
  result = qword_27DEEE118;
  if (!qword_27DEEE118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE120, &qword_23815FC88);
    sub_23814D93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE118);
  }

  return result;
}

unint64_t sub_23814D93C()
{
  result = qword_27DEEE128;
  if (!qword_27DEEE128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE130, &qword_23815FC90);
    sub_23814D9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE128);
  }

  return result;
}

unint64_t sub_23814D9C8()
{
  result = qword_27DEEE138;
  if (!qword_27DEEE138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE140, &qword_23815FC98);
    sub_2380711D4(&qword_27DEEE148, &qword_27DEEE150, &qword_23815FCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE138);
  }

  return result;
}

unint64_t sub_23814DA80()
{
  result = qword_27DEEE158;
  if (!qword_27DEEE158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE160, &qword_23815FCA8);
    sub_23814DB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE158);
  }

  return result;
}

unint64_t sub_23814DB0C()
{
  result = qword_27DEEE168;
  if (!qword_27DEEE168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE170, &qword_23815FCB0);
    sub_23814DB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE168);
  }

  return result;
}

unint64_t sub_23814DB98()
{
  result = qword_27DEEE178;
  if (!qword_27DEEE178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC8F0, &qword_23815C8C0);
    sub_23814F050(&qword_27DEEE180, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE178);
  }

  return result;
}

uint64_t sub_23814DC54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153C2C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23814DCAC()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A0C();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_238153F1C();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v6 + v13, 1, v14))
    {
      (*(v15 + 8))(v6 + v13, v14);
    }
  }

  else
  {
    v16 = *(v6 + v13);
  }

  v17 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_238153F1C();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v6 + v17, 1, v18))
    {
      (*(v19 + 8))(v6 + v17, v18);
    }
  }

  else
  {
    v20 = *(v6 + v17);
  }

  sub_2380700D8(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v21 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_238153A2C();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_2381537EC();
    (*(*(v25 - 8) + 8))(v6 + v24, v25);
  }

  else
  {
    v26 = *(v6 + v24);
  }

  v27 = (v6 + v1[17]);
  v28 = *v27;

  v29 = v27[1];

  v30 = *(v6 + v1[18] + 8);

  v31 = *(v6 + v1[19] + 8);

  v32 = *(v6 + v1[20] + 8);

  MEMORY[0x2383EA980](v6 + v1[21]);
  v33 = (v6 + v1[22]);
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_238085CA0(*v33, v34);
  }

  v35 = *(v6 + v1[23] + 8);

  v36 = *(v6 + v1[24] + 8);

  v37 = *(v6 + v1[25] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23814E148(uint64_t *a1)
{
  v3 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return sub_238146C40(a1, v6, v1 + v4, v5);
}

void sub_23814E204(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE50, &qword_23815AF70);
      v7 = *(type metadata accessor for _DDNodeViewModel() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for _DDNodeViewModel() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_238153A0C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153F1C();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
    v15 = *(v5 + v12);
  }

  v16 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_238153F1C();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v5 + v16, 1, v17))
    {
      (*(v18 + 8))(v5 + v16, v17);
    }
  }

  else
  {
    v19 = *(v5 + v16);
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v20 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_238153A2C();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  v23 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2381537EC();
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  else
  {
    v25 = *(v5 + v23);
  }

  v26 = (v5 + v1[17]);
  v27 = *v26;

  v28 = v26[1];

  v29 = *(v5 + v1[18] + 8);

  v30 = *(v5 + v1[19] + 8);

  v31 = *(v5 + v1[20] + 8);

  MEMORY[0x2383EA980](v5 + v1[21]);
  v32 = (v5 + v1[22]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_238085CA0(*v32, v33);
  }

  v34 = *(v5 + v1[23] + 8);

  v35 = *(v5 + v1[24] + 8);

  v36 = *(v5 + v1[25] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23814E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238147194(a1, v6, a2);
}

uint64_t sub_23814E8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23814E920@<X0>(void *a1@<X8>)
{
  result = sub_238153B0C();
  *a1 = v3;
  return result;
}

uint64_t sub_23814E974()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_238153A0C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153F1C();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
    v15 = *(v5 + v12);
  }

  v16 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_238153F1C();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v5 + v16, 1, v17))
    {
      (*(v18 + 8))(v5 + v16, v17);
    }
  }

  else
  {
    v19 = *(v5 + v16);
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v20 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_238153A2C();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  v23 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2381537EC();
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  else
  {
    v25 = *(v5 + v23);
  }

  v26 = (v5 + v1[17]);
  v27 = *v26;

  v28 = v26[1];

  v29 = *(v5 + v1[18] + 8);

  v30 = *(v5 + v1[19] + 8);

  v31 = *(v5 + v1[20] + 8);

  MEMORY[0x2383EA980](v5 + v1[21]);
  v32 = (v5 + v1[22]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_238085CA0(*v32, v33);
  }

  v34 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v5 + v1[23] + 8);

  v36 = *(v5 + v1[24] + 8);

  v37 = *(v5 + v1[25] + 8);

  v38 = *(v0 + v34);

  return MEMORY[0x2821FE8E8](v0, v34 + 8, v2 | 7);
}

uint64_t sub_23814EE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_238148810(a1, v2 + v6, v7, a2);
}

uint64_t sub_23814EEBC()
{
  v1 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for _DDNodeViewModel() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_238149344(v0 + v2, v5);
}

uint64_t sub_23814EF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23814EFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23814F050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23814F098()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A0C();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_238153F1C();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v6 + v13, 1, v14))
    {
      (*(v15 + 8))(v6 + v13, v14);
    }
  }

  else
  {
    v16 = *(v6 + v13);
  }

  v17 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_238153F1C();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v6 + v17, 1, v18))
    {
      (*(v19 + 8))(v6 + v17, v18);
    }
  }

  else
  {
    v20 = *(v6 + v17);
  }

  sub_2380700D8(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v21 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_238153A2C();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_2381537EC();
    (*(*(v25 - 8) + 8))(v6 + v24, v25);
  }

  else
  {
    v26 = *(v6 + v24);
  }

  v27 = (v6 + v1[17]);
  v28 = *v27;

  v29 = v27[1];

  v30 = *(v6 + v1[18] + 8);

  v31 = *(v6 + v1[19] + 8);

  v32 = *(v6 + v1[20] + 8);

  MEMORY[0x2383EA980](v6 + v1[21]);
  v33 = (v6 + v1[22]);
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_238085CA0(*v33, v34);
  }

  v35 = *(v6 + v1[23] + 8);

  v36 = *(v6 + v1[24] + 8);

  v37 = *(v6 + v1[25] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23814F534@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2381477D0(a1, v7, v8, v2 + v6, a2, v9);
}

uint64_t sub_23814F5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_238147B20(a1, v2 + v6, a2);
}

unint64_t sub_23814F6B8()
{
  result = qword_27DEEE230;
  if (!qword_27DEEE230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE218, &qword_23815FE00);
    sub_23814F050(&qword_27DEEE1A0, type metadata accessor for _DDNodeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE230);
  }

  return result;
}

uint64_t sub_23814F774(uint64_t a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE248, &qword_23815FE48);
  v2 = *(*(v43 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v43);
  v42 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = &v38 - v7;
  v9 = MEMORY[0x277D84F90];
  v41 = *(a1 + 16);
  if (v41)
  {
    v44 = v6;
    v10 = *(v6 + 80);
    v38 = v10;
    v39 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v39;
    v12 = 0;
    v13 = 0;
    v14 = *(type metadata accessor for _DDNodeViewModel() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v40 = *(v14 + 72);
    v16 = v9;
    while (1)
    {
      v17 = v42;
      v18 = *(v43 + 48);
      *v42 = v12;
      sub_23814EF88(v15, v17 + v18, type metadata accessor for _DDNodeViewModel);
      v19 = v8;
      result = sub_23807121C(v17, v8, &qword_27DEEE248, &qword_23815FE48);
      if (v13)
      {
        v45 = v16;
      }

      else
      {
        v20 = v16[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE250, &unk_23815FE50);
        v23 = *(v44 + 72);
        v24 = v39;
        v45 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v45);
        if (!v23)
        {
          goto LABEL_35;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_36;
        }

        v27 = v25 / v23;
        v28 = v45;
        *(v45 + 2) = v22;
        v28[3] = 2 * (v25 / v23);
        v29 = v28 + v24;
        v30 = v16[3] >> 1;
        v31 = v30 * v23;
        if (v16[2])
        {
          if (v28 < v16 || v29 >= v16 + v39 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v11 = &v29[v31];
        v13 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      }

      v33 = v44;
      v8 = v19;
      v34 = __OFSUB__(v13--, 1);
      if (v34)
      {
        break;
      }

      ++v12;
      result = sub_23807121C(v19, v11, &qword_27DEEE248, &qword_23815FE48);
      v11 += *(v33 + 72);
      v15 += v40;
      v9 = v45;
      v16 = v45;
      if (v41 == v12)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = 0;
LABEL_29:
  v35 = v9[3];
  if (v35 < 2)
  {
    return v9;
  }

  v36 = v35 >> 1;
  v34 = __OFSUB__(v36, v13);
  v37 = v36 - v13;
  if (!v34)
  {
    v9[2] = v37;
    return v9;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t objectdestroy_154Tm()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_238153A0C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153F1C();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
    v15 = *(v5 + v12);
  }

  v16 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_238153F1C();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v5 + v16, 1, v17))
    {
      (*(v18 + 8))(v5 + v16, v17);
    }
  }

  else
  {
    v19 = *(v5 + v16);
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v20 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_238153A2C();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  v23 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2381537EC();
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  else
  {
    v25 = *(v5 + v23);
  }

  v26 = (v5 + v1[17]);
  v27 = *v26;

  v28 = v26[1];

  v29 = *(v5 + v1[18] + 8);

  v30 = *(v5 + v1[19] + 8);

  v31 = *(v5 + v1[20] + 8);

  MEMORY[0x2383EA980](v5 + v1[21]);
  v32 = (v5 + v1[22]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_238085CA0(*v32, v33);
  }

  v34 = *(v5 + v1[23] + 8);

  v35 = *(v5 + v1[24] + 8);

  v36 = *(v5 + v1[25] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23814FF64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2381483D0(a1, v2 + v6, a2);
}

uint64_t sub_238150018()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238150050(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE248, &qword_23815FE48);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t objectdestroy_132Tm()
{
  v1 = type metadata accessor for _DDDevicePickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v52 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for _DDNodeViewModel();
  v5 = *(*(v4 - 1) + 80);
  v53 = *(*(v4 - 1) + 64);
  v54 = v0;
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A0C();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_238153F1C();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v6 + v13, 1, v14))
    {
      (*(v15 + 8))(v6 + v13, v14);
    }
  }

  else
  {
    v16 = *(v6 + v13);
  }

  v17 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_238153F1C();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v6 + v17, 1, v18))
    {
      (*(v19 + 8))(v6 + v17, v18);
    }
  }

  else
  {
    v20 = *(v6 + v17);
  }

  sub_2380700D8(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v21 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_238153A2C();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_2381537EC();
    (*(*(v25 - 8) + 8))(v6 + v24, v25);
  }

  else
  {
    v26 = *(v6 + v24);
  }

  v27 = (v6 + v1[17]);
  v28 = *v27;

  v29 = v27[1];

  v30 = *(v6 + v1[18] + 8);

  v31 = *(v6 + v1[19] + 8);

  v32 = *(v6 + v1[20] + 8);

  MEMORY[0x2383EA980](v6 + v1[21]);
  v33 = (v6 + v1[22]);
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_238085CA0(*v33, v34);
  }

  v35 = v2 | v5;
  v36 = (v3 + v52 + v5) & ~v5;
  v37 = *(v6 + v1[23] + 8);

  v38 = *(v6 + v1[24] + 8);

  v39 = *(v6 + v1[25] + 8);

  v40 = sub_2381527EC();
  (*(*(v40 - 8) + 8))(v54 + v36, v40);
  v41 = v54 + v36 + v4[5];
  sub_238070070(*v41, *(v41 + 8), *(v41 + 16), *(v41 + 24), *(v41 + 32));
  v42 = *(v54 + v36 + v4[6]);

  v43 = v4[7];
  v44 = sub_23815278C();
  v45 = *(*(v44 - 8) + 8);
  v45(v54 + v36 + v43, v44);
  v45(v54 + v36 + v4[8], v44);
  v46 = v4[9];
  v47 = sub_238152BAC();
  (*(*(v47 - 8) + 8))(v54 + v36 + v46, v47);
  v48 = *(v54 + v36 + v4[11]);

  v49 = *(v54 + v36 + v4[12]);

  v50 = *(v54 + v36 + v4[13] + 8);

  return MEMORY[0x2821FE8E8](v54, v36 + v53, v35 | 7);
}

uint64_t sub_2381506D8(uint64_t a1)
{
  v3 = *(type metadata accessor for _DDDevicePickerView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for _DDNodeViewModel() - 8);
  return sub_238147FD0(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

id sub_238150808(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CNSecureFieldPickerViewController();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

void sub_238150A04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_238150C88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_238150D58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_238150DA0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_238150E00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = type metadata accessor for FieldPickerViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_presentedContact] = v1;
  *&v8[OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_selectionFromContact] = v2;
  v9 = &v8[OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_fieldSaveHandler];
  *v9 = v4;
  *(v9 + 1) = v3;
  v10 = &v8[OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_dismissHandler];
  *v10 = v6;
  *(v10 + 1) = v5;
  v11 = objc_allocWithZone(type metadata accessor for CNSecureFieldPickerViewController());
  v12 = v1;
  v13 = v2;

  v23.receiver = v8;
  v23.super_class = v7;
  v14 = [v11 initWithNameDrop:v12 fieldSelections:v13];
  v15 = objc_msgSendSuper2(&v23, sel_initWithRootViewController_, v14);
  [v14 setDelegate_];
  sub_23807A3F8(0, &unk_27DEEE2F0, 0x277D750C8);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v6;
  v17[4] = v5;

  v18 = sub_23815524C();
  sub_23807A3F8(0, &qword_27DEED9F8, 0x277D751E0);
  v19 = v18;
  v20 = sub_23815511C();
  [v20 setStyle_];
  v21 = [v14 navigationItem];

  [v21 setRightBarButtonItem_];
  return v15;
}

uint64_t sub_238151064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238151154();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2381510C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238151154();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23815112C()
{
  sub_238151154();
  sub_23815408C();
  __break(1u);
}

unint64_t sub_238151154()
{
  result = qword_27DEEE2E8;
  if (!qword_27DEEE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE2E8);
  }

  return result;
}

uint64_t sub_2381511A8()
{
  MEMORY[0x2383EA980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2381511E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}