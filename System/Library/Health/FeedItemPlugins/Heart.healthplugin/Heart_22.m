uint64_t sub_29D8EBE40()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D8EB698();
  [v1 addSubview_];

  v3 = sub_29D8EB8B8();
  [v1 addSubview_];

  v4 = sub_29D8EBA80();
  [v1 addSubview_];

  v5 = sub_29D8EBBB8();
  [v1 addSubview_];

  v61 = objc_opt_self();
  sub_29D6A0C58();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D946510;
  v7 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView;
  v8 = [*&v1[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView] leadingAnchor];
  v9 = [v1 &selRef_initWithLoggingCategory_healthDataSource_ + 1];
  v10 = [v8 constraintEqualToAnchor:v9 constant:12.0];

  *(v6 + 32) = v10;
  v11 = [*&v1[v7] topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 40) = v13;
  v14 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel;
  v15 = [*&v1[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel] centerYAnchor];
  v16 = [*&v1[v7] centerYAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v6 + 48) = v17;
  v18 = [*&v1[v14] centerXAnchor];
  v19 = [*&v1[v7] centerXAnchor];
  v20 = [v18 &selRef:v19 showAdaptively:? sender:? animated:? + 5];

  *(v6 + 56) = v20;
  v21 = [*&v1[v14] firstBaselineAnchor];
  v22 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel;
  v23 = [*&v1[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel] firstBaselineAnchor];
  v24 = [v21 &selRef:v23 showAdaptively:? sender:? animated:? + 5];

  *(v6 + 64) = v24;
  v25 = [*&v1[v22] topAnchor];
  v26 = [v1 topAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 72) = v27;
  v28 = [*&v1[v22] leadingAnchor];
  v29 = [*&v1[v7] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:6.0];

  *(v6 + 80) = v30;
  v31 = [*&v1[v22] trailingAnchor];
  v32 = [v1 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-12.0];

  *(v6 + 88) = v33;
  v34 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel;
  v35 = [*&v1[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel] topAnchor];
  v36 = [*&v1[v22] bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:4.0];

  *(v6 + 96) = v37;
  v38 = [*&v1[v34] leadingAnchor];
  v39 = [*&v1[v22] leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v6 + 104) = v40;
  v41 = [*&v1[v34] trailingAnchor];
  v42 = [*&v1[v22] trailingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v6 + 112) = v43;
  v44 = [*&v1[v34] bottomAnchor];
  v45 = [v1 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v6 + 120) = v46;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v47 = sub_29D939F18();

  [v61 activateConstraints_];

  v48 = *&v1[v22];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v49 = *MEMORY[0x29EDC80E0];
  v50 = *MEMORY[0x29EDC7700];
  v51 = v48;
  v52 = sub_29D93A658();
  [v51 setFont_];

  v53 = *&v1[v34];
  v54 = sub_29D93A658();
  [v53 setFont_];

  sub_29D6B2AD0();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_29D93F680;
  v56 = sub_29D937BC8();
  v57 = MEMORY[0x29EDC7870];
  *(v55 + 32) = v56;
  *(v55 + 40) = v57;
  v58 = sub_29D937968();
  v59 = MEMORY[0x29EDC77A0];
  *(v55 + 48) = v58;
  *(v55 + 56) = v59;
  sub_29D93A678();
  sub_29D936978();
}

id sub_29D8EC5A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NumberedTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D8EC698()
{
  v0 = sub_29D8EBA80();
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v1 = *MEMORY[0x29EDC80E0];
  v2 = *MEMORY[0x29EDC7700];
  v3 = sub_29D93A658();
  [v0 setFont_];

  v4 = sub_29D8EBBB8();
  v5 = sub_29D93A658();
  [v4 setFont_];
}

uint64_t sub_29D8EC7BC(uint64_t a1)
{
  v165 = a1;
  v1 = sub_29D933AA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v181 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_29D939D18();
  v187 = *(v173 - 8);
  v5 = *(v187 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v173, v6);
  v183 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v157 - v10;
  v12 = sub_29D9376E8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v16 = v15;
  v17 = sub_29D934548();
  v18 = *(*(v17 - 8) + 72);
  v19 = *(v17 - 8);
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~v20;
  v170 = 8 * v18;
  v166 = 7 * v18;
  v162 = v20;
  v164 = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D943DD0;
  v163 = v21;
  v161 = v22;
  v23 = v22 + v21;
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A2C038;
  sub_29D9376B8();
  *v23 = sub_29D93A6A8();
  *(v23 + 8) = 0;
  v25 = *MEMORY[0x29EDC1608];
  v26 = *(v19 + 104);
  v178 = v19 + 104;
  v182 = v26;
  (v26)(v23, v25, v17);
  sub_29D939D08();
  v185 = v17;
  if (qword_2A1A242A8 != -1)
  {
    swift_once();
  }

  v27 = (v23 + v18);
  v28 = qword_2A1A2BE68;
  v186 = qword_2A1A2BE68;
  v29 = qword_2A1A2BE78;
  v184 = qword_2A1A2BE70;
  v30 = v187;
  v31 = *(v187 + 16);
  v177 = v187 + 16;
  v175 = v23;
  v176 = v31;
  v32 = v183;
  v31(v183, v11, v173);
  sub_29D935E88();
  v174 = v28;
  sub_29D933A98();
  v33 = sub_29D939D98();
  v34 = v30;
  v35 = v33;
  v37 = v36;
  v38 = *(v34 + 8);
  v187 = v34 + 8;
  v180 = v38;
  v39 = v173;
  v38(v11, v173);
  *v27 = v35;
  v27[1] = v37;
  (v182)(v23 + v18, *MEMORY[0x29EDC1610], v185);
  v171 = v18;
  v168 = (2 * v18);
  v40 = (v175 + 2 * v18);
  sub_29D939D08();
  v41 = v176;
  v176(v32, v11, v39);
  v179 = v29;
  sub_29D935E88();
  v174 = v174;
  sub_29D933A98();
  v42 = sub_29D939D98();
  v44 = v43;
  v180(v11, v39);
  *v40 = v42;
  v40[1] = v44;
  v40[2] = 0;
  LODWORD(v172) = *MEMORY[0x29EDC15D0];
  v182(v40);
  v169 = &v168[v18];
  v45 = v175;
  v46 = &v168[v18 + v175];
  sub_29D939D08();
  v47 = v183;
  v41(v183, v11, v39);
  sub_29D935E88();
  v160 = v174;
  sub_29D933A98();
  v48 = v47;
  v49 = sub_29D939D98();
  v51 = v50;
  v52 = v39;
  v180(v11, v39);
  *v46 = v49;
  *(v46 + 1) = v51;
  v46[16] = 0;
  LODWORD(v174) = *MEMORY[0x29EDC1630];
  v182(v46);
  v53 = v171;
  v167 = 4 * v171;
  v54 = (v45 + 4 * v171);
  sub_29D939D08();
  v176(v48, v11, v39);
  sub_29D935E88();
  v159 = v160;
  sub_29D933A98();
  v55 = sub_29D939D98();
  v57 = v56;
  v58 = v180;
  v180(v11, v52);
  *v54 = v55;
  v54[1] = v57;
  v54[2] = 0;
  v59 = v182;
  (v182)(v54, v172, v185);
  v160 = (v167 + v53);
  v60 = (v175 + v167 + v53);
  sub_29D939D08();
  v176(v183, v11, v52);
  sub_29D935E88();
  v158 = v159;
  sub_29D933A98();
  v61 = sub_29D939D98();
  v63 = v62;
  v58(v11, v52);
  *v60 = v61;
  *(v60 + 1) = v63;
  v60[16] = 0;
  v64 = v60;
  v65 = v174;
  v59(v64, v174, v185);
  v159 = (2 * v169);
  v66 = (v175 + 2 * v169);
  sub_29D939D08();
  v176(v183, v11, v52);
  sub_29D935E88();
  v158 = v158;
  sub_29D933A98();
  v67 = sub_29D939D98();
  v69 = v68;
  v70 = v52;
  v71 = v52;
  v72 = v180;
  v180(v11, v71);
  *v66 = v67;
  *(v66 + 1) = v69;
  v66[16] = 0;
  (v182)(v66, v65, v185);
  v73 = sub_29D8EDCE0(v165);
  v188 = v161;
  sub_29D88BEE0(v73);
  v74 = v163;
  v75 = swift_allocObject();
  v165 = v75;
  *(v75 + 16) = xmmword_29D954840;
  v175 = v75 + v74;
  sub_29D939D08();
  v76 = v70;
  v77 = v70;
  v78 = v176;
  v176(v183, v11, v76);
  sub_29D935E88();
  v164 = v158;
  sub_29D933A98();
  v79 = sub_29D939D98();
  v81 = v80;
  v72(v11, v77);
  v82 = v175;
  *v175 = v79;
  v82[1] = v81;
  v82[2] = 0;
  v83 = v82;
  (v182)();
  v84 = v83 + v171;
  sub_29D939D08();
  v78(v183, v11, v77);
  sub_29D935E88();
  v171 = v164;
  sub_29D933A98();
  v85 = sub_29D939D98();
  v87 = v86;
  v88 = v180;
  v180(v11, v77);
  *v84 = v85;
  *(v84 + 1) = v87;
  v84[16] = 0;
  v89 = v174;
  (v182)(v84, v174, v185);
  v90 = &v168[v175];
  sub_29D939D08();
  v78(v183, v11, v77);
  sub_29D935E88();
  v171 = v171;
  sub_29D933A98();
  v91 = sub_29D939D98();
  v93 = v92;
  v94 = v173;
  v88(v11, v173);
  *v90 = v91;
  *(v90 + 1) = v93;
  v90[16] = 0;
  v95 = v182;
  (v182)(v90, v89, v185);
  v96 = &v169[v175];
  sub_29D939D08();
  v97 = v94;
  v98 = v94;
  v99 = v176;
  v176(v183, v11, v97);
  sub_29D935E88();
  v171 = v171;
  sub_29D933A98();
  v100 = sub_29D939D98();
  v102 = v101;
  v180(v11, v98);
  *v96 = v100;
  *(v96 + 1) = v102;
  v96[16] = 0;
  v103 = v185;
  v95(v96, v174, v185);
  v104 = (v175 + v167);
  sub_29D939D08();
  v105 = v183;
  v99(v183, v11, v98);
  sub_29D935E88();
  v171 = v171;
  sub_29D933A98();
  v106 = sub_29D939D98();
  v108 = v107;
  v180(v11, v98);
  *v104 = v106;
  v104[1] = v108;
  v104[2] = 0;
  (v182)(v104, v172, v103);
  v109 = v175;
  v110 = &v160[v175];
  sub_29D939D08();
  v176(v105, v11, v98);
  sub_29D935E88();
  v171 = v171;
  sub_29D933A98();
  v111 = sub_29D939D98();
  v113 = v112;
  v114 = v180;
  v180(v11, v98);
  *v110 = v111;
  *(v110 + 1) = v113;
  v110[16] = 0;
  (v182)(v110, v174, v185);
  v172 = &v159[v109];
  sub_29D939D08();
  v115 = v98;
  v116 = v176;
  v176(v183, v11, v98);
  sub_29D935E88();
  v168 = v171;
  sub_29D933A98();
  v171 = sub_29D939D98();
  v169 = v117;
  v114(v11, v98);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_29D946CA0;
  sub_29D939D08();
  v119 = v183;
  v116(v183, v11, v115);
  sub_29D935E88();
  v168 = v168;
  sub_29D933A98();
  v120 = sub_29D939D98();
  v122 = v121;
  v180(v11, v115);
  *(v118 + 32) = v120;
  *(v118 + 40) = v122;
  sub_29D939D08();
  v116(v119, v11, v115);
  sub_29D935E88();
  v168 = v168;
  sub_29D933A98();
  v123 = v119;
  v124 = sub_29D939D98();
  v126 = v125;
  v127 = v173;
  v128 = v180;
  v180(v11, v173);
  *(v118 + 48) = v124;
  *(v118 + 56) = v126;
  sub_29D939D08();
  v129 = v123;
  v130 = v176;
  v176(v129, v11, v127);
  sub_29D935E88();
  v168 = v168;
  sub_29D933A98();
  v131 = sub_29D939D98();
  v133 = v132;
  v134 = v173;
  v128(v11, v173);
  *(v118 + 64) = v131;
  *(v118 + 72) = v133;
  sub_29D939D08();
  v130(v183, v11, v134);
  sub_29D935E88();
  v168 = v168;
  sub_29D933A98();
  v135 = sub_29D939D98();
  v137 = v136;
  v138 = v134;
  v139 = v134;
  v140 = v180;
  v180(v11, v139);
  *(v118 + 80) = v135;
  *(v118 + 88) = v137;
  v141 = v172;
  v142 = v169;
  *v172 = v171;
  *(v141 + 1) = v142;
  *(v141 + 2) = v118;
  v143 = *MEMORY[0x29EDC15F0];
  (v182)();
  v144 = (v175 + v166);
  sub_29D939D08();
  v145 = v183;
  v130(v183, v11, v138);
  sub_29D935E88();
  v172 = v168;
  sub_29D933A98();
  v146 = sub_29D939D98();
  v148 = v147;
  v140(v11, v138);
  *v144 = v146;
  *(v144 + 1) = v148;
  v144[16] = 0;
  v149 = v185;
  v150 = v182;
  (v182)(v144, v174, v185);
  v151 = (v175 + v170);
  sub_29D939D08();
  v176(v145, v11, v138);
  sub_29D935E88();
  v152 = v172;
  sub_29D933A98();
  v153 = sub_29D939D98();
  v155 = v154;
  v180(v11, v138);
  *v151 = v153;
  v151[1] = v155;
  *(v151 + 16) = 0;
  v150(v151, v174, v149);
  sub_29D88BEE0(v165);
  return v188;
}

uint64_t sub_29D8EDCE0(uint64_t a1)
{
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v162 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v138 - v14;
  if (a1 == 1)
  {
    sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
    v159 = sub_29D934548();
    v83 = *(v159 - 8);
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v157 = *(v83 + 72);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_29D944710;
    v142 = v85;
    v156 = v85 + v84;
    sub_29D939D08();
    if (qword_2A1A242A8 != -1)
    {
      swift_once();
    }

    v86 = qword_2A1A2BE68;
    v87 = qword_2A1A2BE78;
    v88 = *(v7 + 16);
    v153 = qword_2A1A2BE70;
    v154 = v88;
    v160 = v12;
    v88(v12, v15, v6);
    v148 = v7 + 16;
    v152 = v87;
    sub_29D935E88();
    v155 = v86;
    sub_29D933A98();
    v144 = v86;
    v89 = sub_29D939D98();
    v90 = v7;
    v92 = v91;
    v93 = *(v90 + 8);
    v161 = v90 + 8;
    v93(v15, v6);
    v147 = v93;
    v94 = v156;
    *v156 = v89;
    *(v94 + 8) = v92;
    *(v94 + 16) = 0;
    v95 = *MEMORY[0x29EDC1630];
    v96 = *(v83 + 104);
    v145 = v83 + 104;
    v149 = v96;
    v97 = v94;
    v96();
    v98 = (v97 + v157);
    sub_29D84D460();
    v143 = v99;
    v146 = *(v99 + 48);
    sub_29D939D08();
    v100 = v154;
    v154(v160, v15, v6);
    sub_29D935E88();
    v141 = v155;
    sub_29D933A98();
    v101 = sub_29D939D98();
    v103 = v102;
    v93(v15, v6);
    *v98 = v101;
    v98[1] = v103;
    v150 = sub_29D9333D8();
    v104 = *(v150 - 8);
    v151 = *(v104 + 56);
    v155 = (v104 + 56);
    v151(v146 + v98, 1, 1, v150);
    LODWORD(v146) = *MEMORY[0x29EDC15F8];
    (v149)(v98);
    v140 = (2 * v157);
    v105 = v156;
    v106 = (v156 + 2 * v157);
    v107 = v143;
    v139 = *(v143 + 48);
    sub_29D939D08();
    v100(v160, v15, v6);
    sub_29D935E88();
    v141 = v141;
    sub_29D933A98();
    v108 = sub_29D939D98();
    v110 = v109;
    v147(v15, v6);
    *v106 = v108;
    v106[1] = v110;
    v151(v106 + v139, 1, 1, v150);
    v111 = v149;
    (v149)(v106, v146, v159);
    v112 = v6;
    v113 = v157;
    v114 = &v140[v157 + v105];
    v139 = *(v107 + 48);
    sub_29D939D08();
    v115 = v160;
    v116 = v112;
    v158 = v112;
    v154(v160, v15, v112);
    sub_29D935E88();
    v140 = v141;
    sub_29D933A98();
    v117 = sub_29D939D98();
    v119 = v118;
    v120 = v147;
    v147(v15, v116);
    *v114 = v117;
    v114[1] = v119;
    v151(v114 + v139, 1, 1, v150);
    v121 = v115;
    v122 = v146;
    (v111)(v114, v146, v159);
    v141 = (4 * v113);
    v123 = (v156 + 4 * v113);
    v139 = *(v143 + 48);
    sub_29D939D08();
    v124 = v158;
    v154(v121, v15, v158);
    sub_29D935E88();
    v140 = v140;
    sub_29D933A98();
    v125 = sub_29D939D98();
    v127 = v126;
    v120(v15, v124);
    *v123 = v125;
    v123[1] = v127;
    v129 = v150;
    v128 = v151;
    v151(v123 + v139, 1, 1, v150);
    v130 = v123;
    v131 = v149;
    (v149)(v130, v122, v159);
    v132 = &v141[v157 + v156];
    v157 = *(v143 + 48);
    sub_29D939D08();
    v154(v160, v15, v124);
    sub_29D935E88();
    v133 = v140;
    sub_29D933A98();
    v134 = sub_29D939D98();
    v136 = v135;
    v147(v15, v124);
    *v132 = v134;
    v132[1] = v136;
    v128(v132 + v157, 1, 1, v129);
    (v131)(v132, v146, v159);
    return v142;
  }

  if (!a1)
  {
    v16 = v12;
    v158 = v6;
    sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
    v156 = sub_29D934548();
    v17 = *(v156 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v157 = *(v17 + 72);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29D943DD0;
    v142 = v19;
    v159 = v19 + v18;
    sub_29D939D08();
    if (qword_2A1A242A8 != -1)
    {
      swift_once();
    }

    v20 = qword_2A1A2BE68;
    v21 = qword_2A1A2BE70;
    v22 = qword_2A1A2BE78;
    v23 = v7;
    v24 = *(v7 + 16);
    v153 = qword_2A1A2BE68;
    v154 = v24;
    v144 = (v7 + 16);
    v25 = v158;
    v24(v16, v15, v158);
    sub_29D935E88();
    v155 = v20;
    sub_29D933A98();
    v148 = v21;
    v26 = sub_29D939D98();
    v28 = v27;
    v29 = *(v23 + 8);
    v161 = v23 + 8;
    v152 = v29;
    v29(v15, v25);
    v30 = v159;
    *v159 = v26;
    *(v30 + 8) = v28;
    *(v30 + 16) = 0;
    v31 = *MEMORY[0x29EDC1630];
    v32 = *(v17 + 104);
    v145 = v17 + 104;
    v146 = v32;
    v33 = v30;
    v32();
    v34 = (v33 + v157);
    sub_29D84D460();
    v36 = *(v35 + 48);
    v149 = v35;
    v150 = v36;
    sub_29D939D08();
    v160 = v16;
    v37 = v25;
    v38 = v25;
    v39 = v154;
    v154(v16, v15, v37);
    v143 = v22;
    sub_29D935E88();
    v141 = v155;
    sub_29D933A98();
    v40 = sub_29D939D98();
    v42 = v41;
    v152(v15, v38);
    *v34 = v40;
    v34[1] = v42;
    v151 = sub_29D9333D8();
    v43 = *(v151 - 1);
    v147 = *(v43 + 56);
    v155 = (v43 + 56);
    (v147)(v34 + v150, 1, 1, v151);
    v44 = v34;
    LODWORD(v150) = *MEMORY[0x29EDC15F8];
    v45 = v150;
    v46 = v146;
    (v146)(v44);
    v140 = (2 * v157);
    v47 = (v159 + 2 * v157);
    v139 = *(v149 + 12);
    sub_29D939D08();
    v39(v160, v15, v38);
    sub_29D935E88();
    v141 = v141;
    sub_29D933A98();
    v48 = sub_29D939D98();
    v50 = v49;
    v51 = v38;
    v52 = v38;
    v53 = v152;
    v152(v15, v51);
    *v47 = v48;
    v47[1] = v50;
    (v147)(v47 + v139, 1, 1, v151);
    v54 = v156;
    v46(v47, v45, v156);
    v55 = &v140[v157 + v159];
    v139 = *(v149 + 12);
    sub_29D939D08();
    v154(v160, v15, v52);
    sub_29D935E88();
    v140 = v141;
    sub_29D933A98();
    v56 = sub_29D939D98();
    v58 = v57;
    v59 = v158;
    v53(v15, v158);
    *v55 = v56;
    v55[1] = v58;
    (v147)(v55 + v139, 1, 1, v151);
    (v146)(v55, v150, v54);
    v60 = v157;
    v141 = (4 * v157);
    v61 = (v159 + 4 * v157);
    v62 = v149;
    v63 = *(v149 + 12);
    sub_29D939D08();
    v154(v160, v15, v59);
    sub_29D935E88();
    v140 = v140;
    sub_29D933A98();
    v64 = sub_29D939D98();
    v66 = v65;
    v67 = v158;
    v152(v15, v158);
    *v61 = v64;
    v61[1] = v66;
    v68 = v61 + v63;
    v69 = v147;
    (v147)(v68, 1, 1, v151);
    (v146)(v61, v150, v156);
    v70 = &v141[v60 + v159];
    v139 = *(v62 + 12);
    sub_29D939D08();
    v71 = v160;
    v154(v160, v15, v67);
    sub_29D935E88();
    v141 = v140;
    sub_29D933A98();
    v72 = sub_29D939D98();
    v74 = v73;
    v75 = v158;
    v152(v15, v158);
    *v70 = v72;
    v70[1] = v74;
    v76 = v151;
    (v69)(v70 + v139, 1, 1, v151);
    v77 = v146;
    (v146)(v70, v150, v156);
    v78 = (v159 + 6 * v157);
    v159 = *(v149 + 12);
    sub_29D939D08();
    v154(v71, v15, v75);
    sub_29D935E88();
    v79 = v141;
    sub_29D933A98();
    v80 = sub_29D939D98();
    v82 = v81;
    v152(v15, v75);
    *v78 = v80;
    v78[1] = v82;
    (v147)(v78 + v159, 1, 1, v76);
    v77(v78, v150, v156);
    return v142;
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29D8EEF58()
{
  v1 = *v0;
  v2 = 0xD000000000000037;
  v3 = 0x416E776F6E6B6E55;
  if (!*v0)
  {
    v3 = 0xD000000000000038;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0x697472414F474946;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D8EF054()
{
  v0 = sub_29D9376E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A2C038;
  sub_29D9376B8();
  return sub_29D93A6A8();
}

uint64_t sub_29D8EF144()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D8EF204()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  sub_29D939D08();
  if (qword_2A1A242A8 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE68;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v15;
}

uint64_t sub_29D8EF3F4()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  sub_29D939D08();
  if (qword_2A1A242A8 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE68;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v15;
}

uint64_t type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource()
{
  result = qword_2A17B7A50;
  if (!qword_2A17B7A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8EF678@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 relevantStartDate];
  if (v3)
  {
    v4 = v3;
    sub_29D933998();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_29D9339F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_29D8EF71C(uint64_t a1, void **a2)
{
  sub_29D6A08F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A0A20(a1, v8);
  v9 = *a2;
  v10 = sub_29D9339F8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_29D933958();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setRelevantStartDate_];
}

uint64_t sub_29D8EF840@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B18();
  v5 = sub_29D934D58();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_29D934D38();
  a1[3] = v5;
  result = sub_29D8EFBC4(&qword_2A17B2C98, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v8;
  return result;
}

id sub_29D8EF9FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8EFA54()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935668();
  v6 = sub_29D935608();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D8EFBC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8EFC0C(uint64_t *a1)
{
  sub_29D934528();
  v2 = sub_29D9344E8();
  sub_29D6A0C58();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D940030;
  sub_29D8EFD98();
  swift_getKeyPath();
  *(v3 + 32) = sub_29D93A338();
  v4 = v2;
  v5 = sub_29D9344F8();

  v6 = sub_29D939F18();

  [v5 setSortDescriptors_];

  v7 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  v8 = v5;
  v9 = sub_29D933EC8();
  [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v8 managedObjectContext:v9 sectionNameKeyPath:0 cacheName:0];

  v10 = sub_29D936A38();
  sub_29D69417C(a1);
  return v10;
}

unint64_t sub_29D8EFD98()
{
  result = qword_2A17B50C0;
  if (!qword_2A17B50C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B50C0);
  }

  return result;
}

uint64_t sub_29D8EFDF0(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 doubleValue];
    v4 = v3;
    v5 = [objc_opt_self() sharedInstanceForHealthStore_];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() quantityTypeForIdentifier_];
      v8 = [v6 displayTypeForObjectType_];

      if (v8)
      {
        v9 = [objc_allocWithZone(MEMORY[0x29EDBAE60]) initWithHealthStore_];
        v10 = [objc_opt_self() _quantityWithBeatsPerMinute_];
        v11 = [objc_allocWithZone(MEMORY[0x29EDC4698]) initWithQuantity_];
        v12 = [v11 stringWithDisplayType:v8 unitController:v9];
        if (v12)
        {
          v13 = v12;
          v14 = sub_29D939D68();

          return v14;
        }
      }

      else
      {
      }
    }
  }

  result = sub_29D93AB28();
  __break(1u);
  return result;
}

id sub_29D8F007C(uint64_t a1, void (*a2)(void), void *a3)
{
  a2(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a3 = result;
  return result;
}

id sub_29D8F00D8()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0EB0 = qword_2A1A2C038;
  *algn_2A17D0EB8 = 0xD000000000000016;
  qword_2A17D0EC0 = 0x800000029D95C0E0;

  return v1;
}

id sub_29D8F015C()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0EC8 = qword_2A1A2C038;
  unk_2A17D0ED0 = 0xD000000000000019;
  qword_2A17D0ED8 = 0x800000029D957C10;

  return v1;
}

id sub_29D8F01E0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0EE0 = qword_2A1A2C038;
  *algn_2A17D0EE8 = 0xD000000000000026;
  qword_2A17D0EF0 = 0x800000029D96E3C0;

  return v1;
}

id sub_29D8F0264()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0EF8 = qword_2A1A2C038;
  unk_2A17D0F00 = 0x617A696C61636F4CLL;
  qword_2A17D0F08 = 0xEB00000000656C62;

  return v1;
}

id sub_29D8F02EC()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F10 = qword_2A1A2C038;
  *algn_2A17D0F18 = 0xD000000000000025;
  qword_2A17D0F20 = 0x800000029D96E250;

  return v1;
}

id sub_29D8F0370()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F28 = qword_2A1A2C038;
  unk_2A17D0F30 = 0xD00000000000002FLL;
  qword_2A17D0F38 = 0x800000029D96E360;

  return v1;
}

id sub_29D8F03F4()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F40 = qword_2A1A2C038;
  *algn_2A17D0F48 = 0xD000000000000028;
  qword_2A17D0F50 = 0x800000029D96E390;

  return v1;
}

id sub_29D8F0478()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F58 = qword_2A1A2C038;
  unk_2A17D0F60 = 0xD000000000000015;
  qword_2A17D0F68 = 0x800000029D96E340;

  return v1;
}

id sub_29D8F04FC()
{
  if (qword_2A17B0D38 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17D0EA8;
  qword_2A17D0F70 = qword_2A17D0EA8;
  *algn_2A17D0F78 = 0xD00000000000001CLL;
  qword_2A17D0F80 = 0x800000029D96E3F0;

  return v1;
}

id sub_29D8F0580()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A1A2BE98 = qword_2A1A2C038;
  unk_2A1A2BEA0 = 0xD000000000000020;
  qword_2A1A2BEA8 = 0x800000029D96E220;

  return v1;
}

unint64_t sub_29D8F0604()
{
  result = qword_2A17B7A68;
  if (!qword_2A17B7A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B7A68);
  }

  return result;
}

id sub_29D8F0650()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F88 = qword_2A1A2C038;
  unk_2A17D0F90 = 0xD00000000000002ALL;
  qword_2A17D0F98 = 0x800000029D96E410;

  return v1;
}

id sub_29D8F06D4()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A1A2BE80 = qword_2A1A2C038;
  *algn_2A1A2BE88 = 0xD000000000000027;
  qword_2A1A2BE90 = 0x800000029D96E440;

  return v1;
}

id sub_29D8F0758()
{
  if (qword_2A1A21FE0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2BCC0;
  qword_2A1A2BE68 = qword_2A1A2BCC0;
  qword_2A1A2BE70 = 0xD00000000000002CLL;
  qword_2A1A2BE78 = 0x800000029D96E4B0;

  return v1;
}

id sub_29D8F07DC()
{
  if (qword_2A1A21FE0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2BCC0;
  qword_2A17D0FA0 = qword_2A1A2BCC0;
  *algn_2A17D0FA8 = 0xD000000000000030;
  qword_2A17D0FB0 = 0x800000029D96E470;

  return v1;
}

uint64_t sub_29D8F0860(uint64_t result, void *a2, uint64_t a3)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v5, qword_2A1A2BF58);
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = a2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D8F0948(void *a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD000000000000021, 0x800000029D96E5F0);
  v3 = a1;
  sub_29D8F3D14(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
  v4 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v4);

  return 91;
}

uint64_t sub_29D8F0A70()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1;
  v2();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_29D6B7D8C();
  sub_29D8F3B3C(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D8F0BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v4, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = a3;
  sub_29D9371C8();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 104);

    MEMORY[0x2A1C7C4A8](v7, v8);
    v9 = *(*v6 + *MEMORY[0x29EDC9DE8] + 16);
    v10 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v10));
    sub_29D8F418C(v6 + v9);
    os_unfair_lock_unlock((v6 + v10));
  }

  return result;
}

uint64_t sub_29D8F0D74()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000020, 0x800000029D96E850);
  return 91;
}

uint64_t sub_29D8F0E08(uint64_t a1, uint64_t a2)
{
  sub_29D8F3E20(a1, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v4 = sub_29D9371A8();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_29D8F0ED8()
{
  v1 = *v0;
  sub_29D8F3FEC();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  sub_29D8F4080();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_29D938368();
  sub_29D8F3B3C(&qword_2A17B7B38, sub_29D8F4080);

  sub_29D938378();
  sub_29D8F3B3C(&qword_2A17B7B40, sub_29D8F3FEC);
  v14 = sub_29D938418();

  (*(v4 + 8))(v8, v3);
  return v14;
}

uint64_t sub_29D8F10FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 48);
    v10 = Strong;
    v11 = swift_allocObject();
    v11[2] = sub_29D8F41B4;
    v11[3] = v7;
    v11[4] = v10;
    v11[5] = a4;
    aBlock[4] = sub_29D8F4108;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8F18C4;
    aBlock[3] = &unk_2A244DDB8;
    v12 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v9 fetchMobileCountryCodeFromCellularWithCompletion_];
    _Block_release(v12);

    return sub_29D936978();
  }

  else
  {
  }
}

void sub_29D8F127C(uint64_t a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34[1] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v21, qword_2A1A2BF58);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a6;
    v34[0] = 0;
    v23 = a2;
    sub_29D9371E8();

    v24 = a2;
    if (!a2)
    {
      type metadata accessor for HKError(0);
      sub_29D8F3B8C(MEMORY[0x29EDCA190]);
      sub_29D8F3B3C(&qword_2A17B1328, type metadata accessor for HKError);
      sub_29D933578();
      v24 = v34[0];
    }

    v25 = a2;
    a3(v24, 1);
    v26 = v24;
    goto LABEL_14;
  }

  v9 = *(a5 + 16);
  v10 = [swift_unknownObjectRetain() ISOCode];
  if (!v10)
  {
    sub_29D939D68();
    v10 = sub_29D939D28();
  }

  v34[0] = 0;
  v11 = [v9 onboardingEligibilityForCountryCode:v10 error:v34];

  v14 = v34[0];
  if (!v11)
  {
    v27 = v34[0];
    v28 = sub_29D933598();

    swift_willThrow();
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v29, qword_2A1A2BF58);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = a6;
    v34[0] = 0;
    v31 = v28;
    sub_29D9371E8();

    v32 = v28;
    a3(v28, 1);
    sub_29D936978();

    v26 = v28;
LABEL_14:

    goto LABEL_15;
  }

  v15 = *(a5 + 104);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v16 = *(*v15 + *MEMORY[0x29EDC9DE8] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  v18 = v14;

  os_unfair_lock_lock((v15 + v17));
  sub_29D8F4124(v15 + v16);
  os_unfair_lock_unlock((v15 + v17));

  v19 = v11;
  a3(v11, 0);

  sub_29D936978();
LABEL_15:
  v33 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29D8F1688(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002DLL, 0x800000029D96E7B0);
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D96E820);
  if (a1)
  {
    swift_getErrorValue();
    sub_29D93ADF8();
    v3 = sub_29D939DA8();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x29ED6A240](v3, v5);

  return 0;
}

uint64_t sub_29D8F17BC()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002DLL, 0x800000029D96E7B0);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D96E7E0);
  swift_getErrorValue();
  v1 = sub_29D93ADF8();
  MEMORY[0x29ED6A240](v1);

  return 0;
}

uint64_t sub_29D8F18C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return sub_29D936978();
}

uint64_t sub_29D8F1944()
{
  v1 = v0;
  v81 = *v0;
  sub_29D8F3AE8(0, &qword_2A1A24A48, MEMORY[0x29EDB8AB0]);
  v3 = v2;
  v78 = *(v2 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v68 - v6;
  sub_29D8F3A78(0, &qword_2A1A24830, MEMORY[0x29EDB8B18]);
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v68 - v11;
  sub_29D8F3A78(0, &qword_2A17B7AA0, MEMORY[0x29EDB8AA0]);
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v72 = &v68 - v16;
  sub_29D8F39C4();
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v75 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8F3AE8(0, &qword_2A17B7AC0, MEMORY[0x29EDC2EA0]);
  v70 = *(v21 - 8);
  v71 = v21;
  v22 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v69 = &v68 - v24;
  sub_29D8F3D14(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25 - 8, v27);
  v29 = &v68 - v28;
  v30 = v1[13];
  v31 = MEMORY[0x29EDC9DE8];
  v32 = v30 + *(*v30 + *MEMORY[0x29EDC9DE8] + 16);
  v33 = (*(*v30 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v30 + v33));
  v34 = type metadata accessor for AFibBurdenOnboardingFlowManager.State();
  LOBYTE(v32) = *(v32 + *(v34 + 24));
  os_unfair_lock_unlock((v30 + v33));

  if (v32)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v35, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v81;
    v83 = 0;
    sub_29D9371E8();

    LOBYTE(v83) = 1;
    sub_29D938338();
    sub_29D6A0CD0();
    sub_29D938318();
    (*(v78 + 8))(v7, v3);
    sub_29D8F3C90(&qword_2A1A24838, &qword_2A1A24830, MEMORY[0x29EDB8B18]);
    v36 = v80;
    v37 = sub_29D938418();
    v38 = v79;
LABEL_11:
    (*(v38 + 8))(v12, v36);
    return v37;
  }

  v39 = v1[13];
  v40 = v39 + *(*v39 + *v31 + 16);
  v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v39 + v41));
  v42 = *(v40 + *(v34 + 20));
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v39 + v41));

  if (!v42)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v49, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v81;
    v83 = 0;
    sub_29D9371E8();

    type metadata accessor for HKError(0);
    v82 = 3;
    sub_29D8F3B8C(MEMORY[0x29EDCA190]);
    sub_29D8F3B3C(&qword_2A17B1328, type metadata accessor for HKError);
    sub_29D933578();
    v82 = v83;
    sub_29D6A0CD0();
    v12 = v72;
    sub_29D938308();
    sub_29D8F3C90(&unk_2A17B7AD0, &qword_2A17B7AA0, MEMORY[0x29EDB8AA0]);
    v36 = v74;
    v37 = sub_29D938418();
    v38 = v73;
    goto LABEL_11;
  }

  v43 = v1[13];
  v44 = *(*v43 + *v31 + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v43 + v45));
  sub_29D8F3D78(v43 + v44, v29, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  os_unfair_lock_unlock((v43 + v45));

  v46 = sub_29D9371A8();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v29, 1, v46) == 1)
  {
    sub_29D8F3E20(v29, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    v48 = v81;
  }

  else
  {
    v50 = *MEMORY[0x29EDBA5A0];
    v51 = sub_29D9371B8();
    (*(v47 + 8))(v29, v46);
    v52 = [v51 isRequirementSatisfiedWithIdentifier_];

    v48 = v81;
    if ((v52 & 1) == 0)
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4();
      sub_29D69C6C0(v53, qword_2A1A2BF58);
      *(swift_allocObject() + 16) = v48;
      v83 = 0;
      sub_29D9371C8();

      v54 = v1[5];
      swift_getObjectType();
      v55 = v69;
      sub_29D93A408();
      *(swift_allocObject() + 16) = v48;
      sub_29D93A608();

      (*(v70 + 8))(v55, v71);
    }
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v56, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v48;
  v83 = 0;
  sub_29D9371C8();

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v57 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  v58 = v1[11];
  sub_29D693E2C(v1 + 7, v1[10]);
  sub_29D934328();
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  v60[2] = v59;
  v60[3] = v42;
  v60[4] = v48;
  v61 = MEMORY[0x29EDB8AD0];
  sub_29D8F3A78(0, &qword_2A17B7AB0, MEMORY[0x29EDB8AD0]);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_29D938368();
  sub_29D8F3C90(&qword_2A17B7AB8, &qword_2A17B7AB0, v61);

  v65 = v75;
  sub_29D938378();
  sub_29D8F3B3C(&unk_2A17B7AE0, sub_29D8F39C4);
  v66 = v77;
  v37 = sub_29D938418();
  sub_29D936978();

  (*(v76 + 8))(v65, v66);
  return v37;
}

uint64_t sub_29D8F25D0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD000000000000043, 0x800000029D96E5A0);
  return 0;
}

uint64_t sub_29D8F269C()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD00000000000003FLL, 0x800000029D96E740);
  return 0;
}

uint64_t sub_29D8F276C()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96E620);
  return 91;
}

uint64_t sub_29D8F2834()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D96E710);
  return 91;
}

uint64_t sub_29D8F28FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_29D8F3D14(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v37 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = qword_2A1A24678;

    if (v21 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v22, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a5;
    aBlock[0] = 0;
    sub_29D9371C8();

    sub_29D8F3D14(0, &qword_2A17B7B00, sub_29D74D460, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    v24 = *MEMORY[0x29EDBA788];
    *(inited + 32) = sub_29D939D68();
    *(inited + 40) = v25;
    *(inited + 72) = MEMORY[0x29EDC9A98];
    *(inited + 48) = 1;
    sub_29D73F010(inited);
    swift_setDeallocating();
    sub_29D798AB0(inited + 32);
    v26 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
    v27 = sub_29D939C58();

    v38 = [v26 initWithDictionary_];

    v40 = a5;
    sub_29D8F2EDC(a5, v17);
    v39 = *(v20 + 16);
    v28 = [a4 ISOCode];
    if (!v28)
    {
      sub_29D939D68();
      v28 = sub_29D939D28();
    }

    v29 = [a4 provenance];
    sub_29D8F3D78(v17, v14, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v30 = sub_29D9339F8();
    v31 = *(v30 - 8);
    v32 = 0;
    if ((*(v31 + 48))(v14, 1, v30) != 1)
    {
      v32 = sub_29D933958();
      (*(v31 + 8))(v14, v30);
    }

    v33 = swift_allocObject();
    v33[2] = a4;
    v33[3] = sub_29D8F3D08;
    v33[4] = v18;
    v33[5] = v20;
    v33[6] = v40;
    aBlock[4] = sub_29D8F3DF8;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8E44F0;
    aBlock[3] = &unk_2A244DCA0;
    v34 = _Block_copy(aBlock);
    v35 = v38;
    swift_unknownObjectRetain();

    [v39 setCurrentOnboardingVersionCompletedForCountryCode:v28 countryCodeProvenance:v29 date:v32 settings:v35 completion:v34];
    _Block_release(v34);

    sub_29D8F3E20(v17, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  }

  else
  {
  }
}

uint64_t sub_29D8F2E14()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD00000000000001ELL, 0x800000029D96E6F0);
  return 91;
}

uint64_t sub_29D8F2EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9339F8();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v21 - v10;
  v12 = HKHRAFibBurdenOnboardingDateOverride();
  if (v12)
  {
    v22 = a1;
    v13 = v12;
    sub_29D933998();

    v14 = *(v23 + 32);
    v14(a2, v11, v4);
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    (*(v23 + 16))(v8, a2, v4);
    v16 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    v14(v18 + v16, v8, v4);
    *(v18 + v17) = v22;
    v24 = 0;
    sub_29D9371C8();

    return (*(v23 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v20 = *(v23 + 56);

    return v20(a2, 1, 1, v4);
  }
}

uint64_t sub_29D8F316C()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD000000000000024, 0x800000029D96E6C0);
  sub_29D9339F8();
  sub_29D8F3B3C(&qword_2A17B7B10, MEMORY[0x29EDB9BC8]);
  v1 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v1);

  return 91;
}

void sub_29D8F32A4(int a1, id a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v11 = a2;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v12, qword_2A1A2BF58);
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a2;
    v13[4] = a7;
    swift_unknownObjectRetain();
    v14 = a2;
    sub_29D9371E8();

    v15 = a2;
    a4(a2, 1);
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v17, qword_2A1A2BF58);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a7;
    swift_unknownObjectRetain();
    sub_29D9371C8();

    v19 = *(a6 + 104);
    v20 = v19 + *(*v19 + *MEMORY[0x29EDC9DE8] + 16);
    v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v19 + v21));
    *(v20 + *(type metadata accessor for AFibBurdenOnboardingFlowManager.State() + 24)) = 1;
    os_unfair_lock_unlock((v19 + v21));

    a4(1, 0);
  }
}

uint64_t sub_29D8F351C()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD000000000000036, 0x800000029D96E650);
  sub_29D8F3960();
  sub_29D93AB08();
  MEMORY[0x29ED6A240](0x203A726F72726520, 0xE800000000000000);
  swift_getErrorValue();
  v1 = sub_29D93ADF8();
  MEMORY[0x29ED6A240](v1);

  return 0;
}

uint64_t sub_29D8F3670()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96E690);
  sub_29D8F3960();
  sub_29D93AB08();
  return 0;
}

uint64_t sub_29D8F3774()
{
  v1 = v0[2];
  sub_29D936978();
  v2 = v0[4];

  v3 = v0[5];
  sub_29D936978();
  v4 = v0[6];
  sub_29D936978();
  sub_29D69417C(v0 + 7);
  v5 = v0[12];

  v6 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenOnboardingFlowManager.State()
{
  result = qword_2A17B7A78;
  if (!qword_2A17B7A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8F3874()
{
  sub_29D8F3D14(319, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D8F3D14(319, &qword_2A17B7A88, sub_29D8F3960, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29D8F3960()
{
  result = qword_2A17B7A90;
  if (!qword_2A17B7A90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B7A90);
  }

  return result;
}

void sub_29D8F39C4()
{
  if (!qword_2A17B7AA8)
  {
    v0 = MEMORY[0x29EDB8AD0];
    sub_29D8F3A78(255, &qword_2A17B7AB0, MEMORY[0x29EDB8AD0]);
    sub_29D8F3C90(&qword_2A17B7AB8, &qword_2A17B7AB0, v0);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7AA8);
    }
  }
}

void sub_29D8F3A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D6A0CD0();
    v7 = a3(a1, MEMORY[0x29EDC9A98], v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D8F3AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D8F3B3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D8F3B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D8C5D20();
    v3 = sub_29D93ABA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_29D8F3F88(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_29D6907F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29D6940E0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29D8F3C90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D8F3A78(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D8F3D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8F3D78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D8F3D14(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D8F3E08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8F3E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8F3D14(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D8F3E90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D8F3670();
}

uint64_t sub_29D8F3E98(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2A1C733A0](v2, 40, 7);
}

uint64_t sub_29D8F3EF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_29D8F351C();
}

uint64_t sub_29D8F3EFC()
{
  v1 = *(sub_29D9339F8() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8F316C();
}

uint64_t sub_29D8F3F88(uint64_t a1, uint64_t a2)
{
  sub_29D74D460();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D8F3FEC()
{
  if (!qword_2A17B7B20)
  {
    sub_29D8F4080();
    sub_29D8F3B3C(&qword_2A17B7B38, sub_29D8F4080);
    v0 = sub_29D938388();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7B20);
    }
  }
}

void sub_29D8F4080()
{
  if (!qword_2A17B7B28)
  {
    sub_29D69567C(255, &qword_2A17B7B30, 0x29EDBAB88);
    sub_29D6A0CD0();
    v0 = sub_29D938358();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7B28);
    }
  }
}

uint64_t sub_29D8F411C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D8F17BC();
}

uint64_t sub_29D8F4124(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for AFibBurdenOnboardingFlowManager.State() + 20);
  v5 = *(a1 + v4);
  swift_unknownObjectRetain();
  result = sub_29D936978();
  *(a1 + v4) = v3;
  return result;
}

uint64_t type metadata accessor for AFibBurdenPDFChartViewModel()
{
  result = qword_2A17B7B48;
  if (!qword_2A17B7B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8F422C()
{
  sub_29D9331D8();
  if (v0 <= 0x3F)
  {
    sub_29D8F4318();
    if (v1 <= 0x3F)
    {
      sub_29D69567C(319, &qword_2A17B7B58, 0x29EDBAE50);
      if (v2 <= 0x3F)
      {
        sub_29D69567C(319, &qword_2A17B7B60, 0x29EDC4678);
        if (v3 <= 0x3F)
        {
          sub_29D8F4370();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D8F4318()
{
  if (!qword_2A17B1ED0)
  {
    type metadata accessor for AFibBurdenPDFChartPoint();
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1ED0);
    }
  }
}

void sub_29D8F4370()
{
  if (!qword_2A17B7B68)
  {
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7B68);
    }
  }
}

uint64_t getEnumTagSinglePayload for AFibBurdenPDFChartViewModel.DataRange(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AFibBurdenPDFChartViewModel.DataRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_29D8F4468()
{
  v1 = type metadata accessor for AFibBurdenPDFChartViewModel();
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + *(v4 + 28)) displayCategory];
  v8 = [v7 color];

  if (v8)
  {

    return sub_29D939528();
  }

  else
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v10 = sub_29D937898();
    sub_29D69C6C0(v10, qword_2A1A2BF28);
    sub_29D8F4C04(v0, v6, type metadata accessor for AFibBurdenPDFChartViewModel);
    v11 = sub_29D937878();
    v12 = sub_29D93A298();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = [*&v6[*(v1 + 28)] description];
      v16 = sub_29D939D68();
      v18 = v17;

      sub_29D8F4C6C(v6, type metadata accessor for AFibBurdenPDFChartViewModel);
      v19 = sub_29D6C2364(v16, v18, &v21);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_29D677000, v11, v12, "%s doesn't have a displayCategory color", v13, 0xCu);
      sub_29D69417C(v14);
      MEMORY[0x29ED6BE30](v14, -1, -1);
      MEMORY[0x29ED6BE30](v13, -1, -1);
    }

    else
    {

      sub_29D8F4C6C(v6, type metadata accessor for AFibBurdenPDFChartViewModel);
    }

    return sub_29D939558();
  }
}

uint64_t sub_29D8F4700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9331D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v47[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AFibBurdenPDFChartPoint();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v47[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    LOBYTE(a2) = 0;
    v6 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v19 = *(v6 + *(v12 + 20));
    v11 = *(v15 + 72);
    a3 = -1;
    v20 = v19;
    do
    {
      sub_29D8F4C04(v6, v17, type metadata accessor for AFibBurdenPDFChartPoint);
      v21 = *(v12 + 20);
      v22 = *&v17[v21];
      if (v19 <= v22)
      {
        v19 = *&v17[v21];
      }

      if (v22 < v20)
      {
        v20 = *&v17[v21];
      }

      if (a2)
      {
        a2 = 1;
      }

      else
      {
        v23 = *&v17[*(v12 + 24)];
        if (*(v23 + 16))
        {
          v24 = *(v23 + 40);
          sub_29D93AE58();
          MEMORY[0x29ED6B260](0);
          v25 = sub_29D93AE98() & ~(-1 << *(v23 + 32));
          a2 = (*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1;
        }

        else
        {
          a2 = 0;
        }
      }

      sub_29D8F4C6C(v17, type metadata accessor for AFibBurdenPDFChartPoint);
      v6 += v11;
      --v18;
    }

    while (v18);
    if (v20 <= v19)
    {
      return a2;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_2A1A24660 != -1)
  {
LABEL_21:
    swift_once();
  }

  v27 = sub_29D937898();
  sub_29D69C6C0(v27, qword_2A1A2BF28);
  (*(v7 + 16))(v11, a3, v6);
  v28 = a2;
  v29 = sub_29D937878();
  v30 = sub_29D93A2A8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47[0] = v32;
    *v31 = 136446723;
    v46 = type metadata accessor for AFibBurdenPDFChartViewModel();
    sub_29D8F4BBC();
    v33 = sub_29D939DA8();
    v35 = sub_29D6C2364(v33, v34, v47);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2085;
    v36 = [v28 localization];
    v37 = [v36 displayName];

    v38 = sub_29D939D68();
    v40 = v39;

    v41 = sub_29D6C2364(v38, v40, v47);

    *(v31 + 14) = v41;
    *(v31 + 22) = 2085;
    sub_29D8AC344();
    v42 = sub_29D93AD38();
    v44 = v43;
    (*(v7 + 8))(v11, v6);
    v45 = sub_29D6C2364(v42, v44, v47);

    *(v31 + 24) = v45;
    _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s] No data for display type %{sensitive}s in PDF page for %{sensitive}s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v32, -1, -1);
    MEMORY[0x29ED6BE30](v31, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  return 2;
}

unint64_t sub_29D8F4BBC()
{
  result = qword_2A17B7B70;
  if (!qword_2A17B7B70)
  {
    type metadata accessor for AFibBurdenPDFChartViewModel();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B7B70);
  }

  return result;
}

uint64_t sub_29D8F4C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8F4C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8F4CCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v8 = sub_29D9334A8();
  if (a1)
  {
    v38 = a3;
    v10 = [a2 minimumQuantity];
    if (!v10)
    {
      goto LABEL_11;
    }

    v11 = v10;
    [v10 _value];

    v12 = [a2 maximumQuantity];
    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = v12;
    [v12 _value];

    v14 = [v38 minimumQuantity];
    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = v14;
    [v14 _value];

    v16 = [v38 maximumQuantity];
    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = v16;
    [v16 _value];

    v18 = [a2 averageQuantity];
    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = v18;
    [v18 _value];

    v20 = [v38 averageQuantity];
    if (v20)
    {
      v21 = v20;
      [v20 _value];

      v22 = [objc_opt_self() millimeterOfMercuryUnit];
      v23 = [v22 unitString];

      sub_29D939D68();
      sub_29D9334A8();
      sub_29D9334A8();
      v24 = sub_29D9334A8();
      MEMORY[0x2A1C7C4A8](v24, v25);
      sub_29D934F08();
      v26 = sub_29D9370F8();
      v27 = MEMORY[0x29EDC2C70];
      a4[3] = v26;
      a4[4] = v27;
      sub_29D693F78(a4);
      sub_29D9370E8();
    }

    else
    {
LABEL_11:

      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v29 = sub_29D937898();
      sub_29D69C6C0(v29, qword_2A1A2BF10);
      v30 = sub_29D937878();
      v31 = sub_29D93A288();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v39 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D96E8A0, &v39);
        _os_log_impl(&dword_29D677000, v30, v31, "[%{public}s] Expected data, missing statistics for summary section", v32, 0xCu);
        sub_29D69417C(v33);
        MEMORY[0x29ED6BE30](v33, -1, -1);
        MEMORY[0x29ED6BE30](v32, -1, -1);
      }

      v34 = sub_29D9370A8();
      v35 = MEMORY[0x29EDC2C58];
      a4[3] = v34;
      a4[4] = v35;
      sub_29D693F78(a4);
      return sub_29D937098();
    }
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v8, v9);
    sub_29D934F08();
    v36 = sub_29D9370F8();
    v37 = MEMORY[0x29EDC2C70];
    a4[3] = v36;
    a4[4] = v37;
    sub_29D693F78(a4);
    sub_29D9370E8();
  }
}

uint64_t sub_29D8F52A0(uint64_t a1)
{
  v9[0] = a1;
  sub_29D93AD38();
  sub_29D934FC8();
  v1 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v2 = sub_29D939D28();

  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v3 = sub_29D939C58();

  v4 = [v1 initWithString:v2 attributes:v3];

  v9[3] = sub_29D9370F8();
  v9[4] = MEMORY[0x29EDC2C70];
  sub_29D693F78(v9);
  sub_29D9370C8();

  v5 = sub_29D935808();
  sub_29D69417C(v9);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93DDB0;
  *(v6 + 32) = v5;
  v7 = MEMORY[0x29ED65BE0]();

  return v7;
}

uint64_t sub_29D8F5460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v47 = a8;
  v46 = a7;
  v45 = a6;
  v44 = a5;
  v43 = a4;
  v42 = a15;
  sub_29D8F6B44(0, &qword_2A17B4E38, MEMORY[0x29EDC2C48], MEMORY[0x29EDC9C68]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v27 - 8, v29);
  v31 = &v42 - v30;
  v32 = sub_29D937068();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32 - 8, v34);
  v35 = sub_29D934EE8();
  v36 = [v35 CGColor];

  sub_29D934EF8();
  sub_29D937038();
  v37 = sub_29D937048();
  (*(*(v37 - 8) + 56))(v31, 0, 1, v37);
  sub_29D934FE8();
  sub_29D937058();
  v48 = a1;
  v49 = a2;
  v50 = a3;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v55 = a9;
  v56 = a10;
  v57 = v47;
  v58 = v42;
  v59 = a16;
  v60 = a11;
  v61 = a12;
  v62 = a17;
  v63 = a18;
  v64 = a13;
  v65 = a14;
  v66[3] = sub_29D937088();
  v66[4] = MEMORY[0x29EDC2C50];
  sub_29D693F78(v66);
  sub_29D937078();
  v38 = sub_29D935808();
  sub_29D69417C(v66);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29D93DDB0;
  *(v39 + 32) = v38;
  v40 = MEMORY[0x29ED65BE0]();

  return v40;
}

uint64_t sub_29D8F57A8(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v74 = a1;
  sub_29D93AD38();
  sub_29D934FC8();
  v22 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v23 = sub_29D939D28();

  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v24 = sub_29D939C58();

  v25 = [v22 initWithString:v23 attributes:v24];

  v26 = sub_29D9370F8();
  v76 = v26;
  v77 = MEMORY[0x29EDC2C70];
  sub_29D693F78(&v74);
  sub_29D9370C8();

  v27 = sub_29D935808();
  result = sub_29D69417C(&v74);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v74 = sub_29D93AD38();
  v75 = v29;
  result = MEMORY[0x29ED6A240](45, 0xE100000000000000);
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v71 = v27;
  v30 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v30);

  sub_29D934FC8();
  v31 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v32 = sub_29D939D28();

  v33 = sub_29D939C58();

  v34 = [v31 initWithString:v32 attributes:v33];

  v74 = 32;
  v75 = 0xE100000000000000;
  MEMORY[0x29ED6A240](a14, a15);
  sub_29D934F58();
  v35 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v36 = sub_29D939D28();

  v37 = sub_29D939C58();

  v38 = [v35 initWithString:v36 attributes:v37];

  [v34 appendAttributedString_];
  MEMORY[0x2A1C7C4A8](v39, v40);
  v76 = v26;
  v77 = MEMORY[0x29EDC2C70];
  sub_29D693F78(&v74);
  sub_29D9370C8();

  v41 = sub_29D935808();
  result = sub_29D69417C(&v74);
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v74 = sub_29D93AD38();
  v75 = v42;
  result = MEMORY[0x29ED6A240](45, 0xE100000000000000);
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v70 = v41;
  v43 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v43);

  sub_29D934FC8();
  v44 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v45 = sub_29D939D28();

  v46 = sub_29D939C58();

  v47 = [v44 initWithString:v45 attributes:v46];

  v74 = 32;
  v75 = 0xE100000000000000;
  MEMORY[0x29ED6A240](a14, a15);
  sub_29D934F58();
  v48 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v49 = sub_29D939D28();

  v50 = sub_29D939C58();

  v51 = [v48 initWithString:v49 attributes:v50];

  [v47 appendAttributedString_];
  MEMORY[0x2A1C7C4A8](v52, v53);
  v76 = v26;
  v77 = MEMORY[0x29EDC2C70];
  sub_29D693F78(&v74);
  sub_29D9370C8();

  v54 = sub_29D935808();
  result = sub_29D69417C(&v74);
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v74 = sub_29D93AD38();
  v75 = v55;
  result = MEMORY[0x29ED6A240](47, 0xE100000000000000);
  if ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a7 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a7 < 9.22337204e18)
  {
    v56 = sub_29D93AD38();
    v72 = v54;
    MEMORY[0x29ED6A240](v56);

    sub_29D934FC8();
    v57 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v58 = sub_29D939D28();

    v59 = sub_29D939C58();

    v60 = [v57 initWithString:v58 attributes:v59];

    v74 = 32;
    v75 = 0xE100000000000000;
    MEMORY[0x29ED6A240](a14, a15);
    sub_29D934F58();
    v61 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v62 = sub_29D939D28();

    v63 = sub_29D939C58();

    v64 = [v61 initWithString:v62 attributes:v63];

    [v60 appendAttributedString_];
    MEMORY[0x2A1C7C4A8](v65, v66);
    v76 = v26;
    v77 = MEMORY[0x29EDC2C70];
    sub_29D693F78(&v74);
    sub_29D9370C8();

    v67 = sub_29D935808();
    sub_29D69417C(&v74);
    sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_29D946CA0;
    *(v68 + 32) = v71;
    *(v68 + 40) = v70;
    *(v68 + 48) = v72;
    *(v68 + 56) = v67;
    v69 = MEMORY[0x29ED65BE0]();

    return v69;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_29D8F62AC()
{
  v0 = sub_29D936678();
  v1 = MEMORY[0x29EDC2868];
  v8 = v0;
  v9 = MEMORY[0x29EDC2868];
  sub_29D693F78(v7);
  sub_29D936668();
  v2 = sub_29D935808();
  sub_29D69417C(v7);
  v8 = v0;
  v9 = v1;
  sub_29D693F78(v7);
  sub_29D936668();
  v3 = sub_29D935808();
  sub_29D69417C(v7);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  v5 = MEMORY[0x29ED65BE0]();

  return v5;
}

uint64_t sub_29D8F63FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v15 = sub_29D936FC8();
  v16 = MEMORY[0x29EDC2C28];
  sub_29D693F78(v14);
  sub_29D8F65BC(a4 & 1);
  v5 = sub_29D935808();
  sub_29D69417C(v14);
  sub_29D934F78();
  v6 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v7 = sub_29D939D28();
  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v8 = sub_29D939C58();

  v9 = [v6 initWithString:v7 attributes:v8];

  v15 = sub_29D69567C(0, &qword_2A17B47E8, 0x29EDB9F30);
  v16 = MEMORY[0x29EDC2CE0];
  v14[0] = v9;
  v10 = sub_29D935808();
  sub_29D69417C(v14);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93F680;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  v12 = MEMORY[0x29ED65BE0]();

  return v12;
}

void sub_29D8F65BC(char a1)
{
  v2 = objc_opt_self();
  if (a1)
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 7.0;
  }

  v4 = &selRef_systemPinkColor;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_blackColor;
  }

  v5 = [v2 *v4];
  v6 = [objc_opt_self() hk:v3 compactFontOfSize:*MEMORY[0x29EDC76D8] weight:?];
  v7 = [objc_opt_self() configurationWithFont_];

  v8 = sub_29D939D28();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {

    v10 = v5;
    sub_29D934ED8();
    sub_29D936FB8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D8F6794()
{
  v0 = sub_29D936678();
  v1 = MEMORY[0x29EDC2868];
  v8 = v0;
  v9 = MEMORY[0x29EDC2868];
  sub_29D693F78(v7);
  sub_29D936668();
  v2 = sub_29D935808();
  sub_29D69417C(v7);
  v8 = v0;
  v9 = v1;
  sub_29D693F78(v7);
  sub_29D936668();
  v3 = sub_29D935808();
  sub_29D69417C(v7);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  v5 = MEMORY[0x29ED65BE0]();

  return v5;
}

uint64_t sub_29D8F68D4()
{
  sub_29D934F78();
  v0 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v1 = sub_29D939D28();
  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v2 = sub_29D939C58();

  v3 = [v0 initWithString:v1 attributes:v2];

  v8[3] = sub_29D69567C(0, &qword_2A17B47E8, 0x29EDB9F30);
  v8[4] = MEMORY[0x29EDC2CE0];
  v8[0] = v3;
  v4 = sub_29D935808();
  sub_29D69417C(v8);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93DDB0;
  *(v5 + 32) = v4;
  v6 = MEMORY[0x29ED65BE0]();

  return v6;
}

uint64_t sub_29D8F6A3C(void *a1)
{
  v7[3] = sub_29D69567C(0, &qword_2A17B7B78, 0x29EDBA038);
  v7[4] = MEMORY[0x29EDC2CE0];
  v7[0] = a1;
  v2 = a1;
  v3 = sub_29D935808();
  sub_29D69417C(v7);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93DDB0;
  *(v4 + 32) = v3;
  v5 = MEMORY[0x29ED65BE0]();

  return v5;
}

uint64_t sub_29D8F6B28()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  return sub_29D8F52A0(v0[2]);
}

uint64_t sub_29D8F6B38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_29D8F6794();
}

void sub_29D8F6B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8F6BA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D8F68D4();
}

uint64_t sub_29D8F6C48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  return sub_29D8F62AC();
}

uint64_t sub_29D8F6C60()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return sub_29D8F63FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_29D8F6C80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9386B8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D938818();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9389D8();
  sub_29D938978();
  return sub_29D8F6D54(v11, v6, a1);
}

uint64_t sub_29D8F6D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29D9376C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D938818();
  (*(*(v12 - 8) + 32))(a3, a1, v12);
  v13 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  v14 = v13[5];
  v15 = sub_29D9386B8();
  (*(*(v15 - 8) + 32))(a3 + v14, a2, v15);
  *(a3 + v13[6]) = 0x4024000000000000;
  *(a3 + v13[7]) = 0x4030000000000000;
  *(a3 + v13[8]) = 0x4010000000000000;
  *(a3 + v13[9]) = 0x4020000000000000;
  v16 = v13[10];
  v17 = [objc_opt_self() systemMintColor];
  *(a3 + v16) = sub_29D939528();
  v18 = v13[11];
  if (qword_2A17B0E20 != -1)
  {
    swift_once();
  }

  v19 = sub_29D69C6C0(v6, qword_2A17D1150);
  v20 = *(v7 + 16);
  v20(v11, v19, v6);
  *(a3 + v18) = sub_29D9395E8();
  v21 = v13[12];
  *(a3 + v21) = sub_29D939518();
  *(a3 + v13[13]) = 0x4008000000000000;
  v22 = (a3 + v13[14]);
  *v22 = sub_29D938EE8();
  v22[1] = 1056964608;
  *(a3 + v13[15]) = 0x4041000000000000;
  *(a3 + v13[16]) = 0x4030000000000000;
  v23 = v13[17];
  sub_29D8F7384(0, &qword_2A17B5BE0, MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  v32 = xmmword_29D93F680;
  *(v24 + 16) = xmmword_29D93F680;
  if (qword_2A17B0E10 != -1)
  {
    swift_once();
  }

  v25 = sub_29D69C6C0(v6, qword_2A17D1120);
  v20(v11, v25, v6);
  *(v24 + 32) = sub_29D9395E8();
  if (qword_2A17B0E18 != -1)
  {
    swift_once();
  }

  v26 = sub_29D69C6C0(v6, qword_2A17D1138);
  v20(v11, v26, v6);
  *(v24 + 40) = sub_29D9395E8();
  *(a3 + v23) = v24;
  v27 = v13[18];
  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  if (qword_2A17B0E00 != -1)
  {
    swift_once();
  }

  v29 = sub_29D69C6C0(v6, qword_2A17D10F0);
  v20(v11, v29, v6);
  *(v28 + 32) = sub_29D9395E8();
  if (qword_2A17B0E08 != -1)
  {
    swift_once();
  }

  v30 = sub_29D69C6C0(v6, qword_2A17D1108);
  v20(v11, v30, v6);
  result = sub_29D9395E8();
  *(v28 + 40) = result;
  *(a3 + v27) = v28;
  return result;
}

uint64_t type metadata accessor for LearnHypertensionJournalSummaryViewSpecs()
{
  result = qword_2A17B7B80;
  if (!qword_2A17B7B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8F7224()
{
  sub_29D938818();
  if (v0 <= 0x3F)
  {
    sub_29D9386B8();
    if (v1 <= 0x3F)
    {
      sub_29D8F732C();
      if (v2 <= 0x3F)
      {
        sub_29D8F7384(319, &qword_2A17B7B90, MEMORY[0x29EDC9A40]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D8F732C()
{
  if (!qword_2A17B3FB0)
  {
    v0 = sub_29D938C48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3FB0);
    }
  }
}

void sub_29D8F7384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDBCA98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for AFibBurdenPDFAFibChart()
{
  result = qword_2A17B7B98;
  if (!qword_2A17B7B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8F744C()
{
  sub_29D8FA8F0(319, &qword_2A17B1E90, MEMORY[0x29EDCA210], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AFibBurdenPDFChartViewModel();
    if (v1 <= 0x3F)
    {
      sub_29D8F7524();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_29D8F7524()
{
  result = qword_2A17B7BA8;
  if (!qword_2A17B7BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B7BA8);
  }

  return result;
}

uint64_t sub_29D8F7594(uint64_t a1)
{
  v2 = sub_29D938828();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29D938A18();
}

uint64_t sub_29D8F765C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v157 = a1;
  v3 = sub_29D938828();
  v155 = *(v3 - 8);
  v156 = v3;
  v4 = *(v155 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v154 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5530(0, &qword_2A17B1EB0, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v150 = &v125 - v10;
  sub_29D8FA1E0();
  v138 = v11;
  v136 = *(v11 - 8);
  v12 = *(v136 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v135 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FAD68();
  v141 = v15;
  v139 = *(v15 - 8);
  v16 = *(v139 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v137 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FAE3C();
  v147 = v19;
  v142 = *(v19 - 8);
  v20 = *(v142 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v140 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FAF5C();
  v149 = v23;
  v148 = *(v23 - 8);
  v24 = *(v148 + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v144 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FB3F0(0, &qword_2A17B7C48, sub_29D8FB0F0, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v145 = v27;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v152 = &v125 - v30;
  sub_29D8FA2B8();
  v153 = v31;
  v151 = *(v31 - 8);
  v32 = *(v151 + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v159 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6C48();
  v132 = v35;
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v130 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v128 = &v125 - v41;
  v42 = sub_29D9339F8();
  v131 = *(v42 - 8);
  v43 = *(v131 + 64);
  v45 = MEMORY[0x2A1C7C4A8](v42, v44);
  v47 = &v125 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45, v48);
  v50 = &v125 - v49;
  sub_29D6D6634();
  v133 = v51;
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v51, v53);
  v160 = &v125 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_29D9331D8();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v55, v58);
  v60 = &v125 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AFibBurdenPDFAFibChart();
  v62 = v2 + v61[6];
  v63 = v2 + v61[7];
  v64 = *v63;
  v65 = *(v63 + 2);
  v66 = v61[9];
  v126 = v61[8];
  v134 = v2;
  v127 = *(v2 + v66);
  LOBYTE(v2) = v63[8];
  v67 = (v62 + *(type metadata accessor for AFibBurdenPDFChartViewModel() + 32));
  v68 = *v67;
  v70 = *(v67 + 1);
  v69 = *(v67 + 2);
  sub_29D8BE424(v68 == 2, 2, v64, v2, v65, &v162);
  v143 = v56;
  v71 = *(v56 + 16);
  v129 = v62;
  v146 = v55;
  v71(v60, v62, v55);
  sub_29D9331A8();
  v158 = v60;
  sub_29D933178();
  sub_29D8FB508(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
  result = sub_29D939CD8();
  if (result)
  {
    v126 += v134;
    v73 = v131;
    v74 = *(v131 + 32);
    v75 = v128;
    v76 = v50;
    v77 = v42;
    (v74)(v128, v76, v42);
    v78 = v132;
    (v74)(v75 + *(v132 + 48), v47, v42);
    v79 = v130;
    sub_29D8FB550(v75, v130, sub_29D6D6C48);
    v134 = *(v78 + 48);
    v80 = v160;
    v74();
    v81 = *(v73 + 8);
    v81(v134 + v79, v77);
    sub_29D8FB5B8(v75, v79, sub_29D6D6C48);
    v82 = *(v78 + 48);
    v83 = v133;
    (v74)(v80 + *(v133 + 36), v79 + v82, v77);
    v81(v79, v77);
    v84 = v159;
    v85 = sub_29D8F84C4(v129, v127, v159);
    v134 = &v125;
    MEMORY[0x2A1C7C4A8](v85, v86);
    v87 = v158;
    *(&v125 - 2) = v84;
    *(&v125 - 1) = v87;
    sub_29D8FA244();
    sub_29D8FAA90();
    v88 = v135;
    sub_29D937E58();
    v89 = sub_29D938028();
    v132 = *(*(v89 - 8) + 56);
    v90 = v150;
    (v132)(v150, 1, 1, v89);
    v91 = sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0);
    v92 = sub_29D6D66C8();
    v93 = v137;
    v94 = v138;
    sub_29D939348();
    sub_29D7D53D4(v90);
    v95 = (*(v136 + 8))(v88, v94);
    MEMORY[0x2A1C7C4A8](v95, v96);
    *(&v125 - 2) = v126;
    *&v163 = v94;
    *(&v163 + 1) = v83;
    *&v164 = v91;
    *(&v164 + 1) = v92;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v98 = MEMORY[0x29EDB8608];
    v99 = MEMORY[0x29EDB8600];
    v100 = v140;
    v101 = v141;
    sub_29D939328();
    (*(v139 + 8))(v93, v101);
    v161 = v162;
    (v132)(v90, 1, 1, v89);
    sub_29D6D7108(0, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    v103 = v102;
    *&v163 = v101;
    *(&v163 + 1) = v98;
    *&v164 = OpaqueTypeConformance2;
    *(&v164 + 1) = v99;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = sub_29D6D69EC();
    v106 = v144;
    v107 = v147;
    sub_29D939358();
    sub_29D7D53D4(v90);
    v108 = (*(v142 + 8))(v100, v107);
    MEMORY[0x2A1C7C4A8](v108, v109);
    *(&v125 - 2) = &v162;
    *&v163 = v107;
    *(&v163 + 1) = v103;
    *&v164 = v104;
    *(&v164 + 1) = v105;
    swift_getOpaqueTypeConformance2();
    v110 = v152;
    v111 = v149;
    sub_29D939338();
    (*(v148 + 8))(v106, v111);
    sub_29D9398B8();
    sub_29D938718();
    v112 = (v110 + *(v145 + 36));
    v113 = v164;
    *v112 = v163;
    v112[1] = v113;
    v112[2] = v165;
    KeyPath = swift_getKeyPath();
    v115 = [objc_opt_self() sharedApplication];
    v116 = [v115 userInterfaceLayoutDirection];

    sub_29D8FB2C0(v160, sub_29D6D6634);
    v118 = v155;
    v117 = v156;
    v119 = MEMORY[0x29EDBC548];
    if (v116 != 1)
    {
      v119 = MEMORY[0x29EDBC540];
    }

    v120 = v154;
    (*(v155 + 104))(v154, *v119, v156);
    sub_29D8FB320();
    v122 = v157;
    v123 = (v157 + *(v121 + 36));
    sub_29D7D5530(0, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    (*(v118 + 32))(v123 + *(v124 + 28), v120, v117);
    *v123 = KeyPath;
    sub_29D68A2CC(v110, v122);
    (*(v151 + 8))(v159, v153);
    (*(v143 + 8))(v158, v146);
    return sub_29D6D6E00(&v162);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8F84C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40[2] = a3;
  v5 = type metadata accessor for AFibBurdenPDFChartViewModel();
  v6 = (v5 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v10 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FB550(a1, v10, type metadata accessor for AFibBurdenPDFChartViewModel);
  v11 = type metadata accessor for AFibBurdenPDFAFibAnnotationFormatter();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_29D8FB550(v10, v14 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_viewModel, type metadata accessor for AFibBurdenPDFChartViewModel);
  *(v14 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_unitController) = a2;
  v15 = *&v10[v6[9]];
  *(v14 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_displayType) = v15;
  v16 = *&v10[v6[8]];
  v17 = a2;
  v18 = v15;
  v19 = v16;
  sub_29D8FB2C0(v10, type metadata accessor for AFibBurdenPDFChartViewModel);
  *(v14 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_unit) = v19;
  v45 = *(a1 + v6[7]);
  sub_29D8FB550(a1, v10, type metadata accessor for AFibBurdenPDFChartViewModel);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_29D8FB5B8(v10, v21 + v20, type metadata accessor for AFibBurdenPDFChartViewModel);
  *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_29D7D5530(0, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
  v40[1] = v22;
  v40[0] = sub_29D9331D8();
  sub_29D8FA3BC();
  sub_29D6D6118();
  sub_29D8FA574();
  v24 = v23;
  sub_29D8FB3F0(255, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v26 = v25;
  sub_29D8FA6A4();
  v28 = v27;
  sub_29D8FA7A4();
  v30 = v29;
  sub_29D8FA86C();
  v32 = v31;
  v33 = sub_29D937F78();
  sub_29D935E88();
  v41 = v33;
  v42 = MEMORY[0x29EDB86E0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v32;
  v42 = MEMORY[0x29EDBCA98];
  v43 = OpaqueTypeConformance2;
  v44 = MEMORY[0x29EDBCA88];
  v35 = swift_getOpaqueTypeConformance2();
  v41 = v30;
  v42 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v41 = v28;
  v42 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_29D8FA940();
  v41 = v24;
  v42 = v26;
  v43 = v37;
  v44 = v38;
  swift_getOpaqueTypeConformance2();
  sub_29D8FB508(&qword_2A17B1F88, type metadata accessor for AFibBurdenPDFChartPoint);
  return sub_29D9397B8();
}

uint64_t sub_29D8F88D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v80 = a3;
  sub_29D8FA2B8();
  v85 = v4;
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v81 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FB3F0(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = v62 - v17;
  v71 = sub_29D937F78();
  v86 = *(v71 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v71, v20);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA9F8();
  v84 = v23;
  v70 = *(v23 - 8);
  v24 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v69 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D61A0();
  v77 = v27;
  v75 = *(v27 - 8);
  v28 = *(v75 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v73 = v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v72 = v62 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v68 = v62 - v37;
  MEMORY[0x2A1C7C4A8](v36, v38);
  v83 = v62 - v39;
  sub_29D938C18();
  v76 = a2;
  sub_29D9331A8();
  sub_29D937D48();

  v40 = *(v9 + 8);
  v67 = v13;
  v74 = v9 + 8;
  v65 = v40;
  v40(v13, v8);
  v66 = v18;
  v78 = v8;
  sub_29D937F48();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v64 = qword_2A17D0CC0;
  v89[0] = qword_2A17D0CC0;

  v41 = v69;
  v42 = v71;
  v43 = MEMORY[0x29EDBCA98];
  v44 = MEMORY[0x29EDB86E0];
  v45 = MEMORY[0x29EDBCA88];
  sub_29D937C48();
  v46 = *(v86 + 8);
  v86 += 8;
  v63 = v46;
  v46(v22, v42);
  sub_29D9386D8();
  v89[0] = v42;
  v89[1] = v43;
  v89[2] = v44;
  v89[3] = v45;
  v62[1] = swift_getOpaqueTypeConformance2();
  v47 = v84;
  sub_29D937C98();
  sub_29D6D70B4(v88);
  v70 = *(v70 + 8);
  (v70)(v41, v47);
  sub_29D938C18();
  v48 = v67;
  sub_29D933178();
  v49 = v78;
  sub_29D937D48();

  v65(v48, v49);
  sub_29D937F48();
  v89[0] = v64;
  sub_29D937C48();

  v63(v22, v42);
  sub_29D9386D8();
  v50 = v68;
  v51 = v84;
  sub_29D937C98();
  sub_29D6D70B4(v89);
  (v70)(v41, v51);
  v53 = v81;
  v52 = v82;
  (*(v82 + 16))(v81, v79, v85);
  v87[0] = v53;
  v54 = v75;
  v55 = *(v75 + 16);
  v56 = v72;
  v57 = v83;
  v58 = v77;
  v55(v72, v83, v77);
  v87[1] = v56;
  v59 = v73;
  v55(v73, v50, v58);
  v87[2] = v59;
  sub_29D90AAC4(v87, v80);
  v60 = *(v54 + 8);
  v60(v50, v58);
  v60(v57, v58);
  v60(v59, v58);
  v60(v56, v58);
  return (*(v52 + 8))(v53, v85);
}

uint64_t sub_29D8F9158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v109 = a3;
  v100 = a2;
  v113 = a4;
  v5 = type metadata accessor for AFibBurdenPDFChartPoint();
  v6 = *(v5 - 8);
  v98 = v5 - 8;
  v106 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v8);
  v107 = v9;
  v108 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D937DD8();
  v111 = *(v10 - 8);
  v112 = v10;
  v11 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v110 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29D938C38();
  v104 = *(v105 - 8);
  v14 = *(v104 + 64);
  MEMORY[0x2A1C7C4A8](v105, v15);
  v103 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D7108(0, &qword_2A17B1F90, MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v95 = v84 - v20;
  v21 = sub_29D9339F8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FB3F0(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x2A1C7C4A8](v27 - 8, v29);
  v114 = v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v84[1] = v84 - v33;
  v90 = sub_29D937F78();
  v91 = *(v90 - 8);
  v34 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v90, v35);
  v88 = v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA86C();
  v93 = v37;
  v94 = *(v37 - 8);
  v38 = *(v94 + 64);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v87 = v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA7A4();
  v96 = v41;
  v97 = *(v41 - 8);
  v42 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v41, v43);
  v89 = v84 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA6A4();
  v86 = v45;
  v99 = *(v45 - 8);
  v46 = *(v99 + 64);
  MEMORY[0x2A1C7C4A8](v45, v47);
  v92 = v84 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA574();
  v102 = v49;
  v101 = *(v49 - 8);
  v50 = *(v101 + 64);
  MEMORY[0x2A1C7C4A8](v49, v51);
  v85 = v84 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938C18();
  sub_29D9331A8();
  sub_29D937D48();

  v53 = *(v22 + 8);
  v53(v26, v21);
  sub_29D938C18();
  sub_29D933178();
  sub_29D937D48();

  v53(v26, v21);
  sub_29D938C18();
  v54 = *(v98 + 28);
  v98 = a1;
  v55 = *(a1 + v54);
  v56 = [*(v100 + *(type metadata accessor for AFibBurdenPDFChartViewModel() + 28)) presentation];
  [v56 scaleFactor];
  v58 = v57;

  v119[0] = v55 * v58;
  sub_29D937D48();

  v59 = v88;
  v60 = v86;
  sub_29D937F68();
  v61 = MEMORY[0x29EDB86E0];
  v62 = v87;
  v63 = *&v90;
  sub_29D937C58();
  v64 = v85;
  (*(v91 + 8))(v59, COERCE_DOUBLE(*&v63));
  v115 = sub_29D8F4468();
  v119[0] = v63;
  v119[1] = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = MEMORY[0x29EDBCA98];
  v67 = MEMORY[0x29EDBCA88];
  v68 = v89;
  v69 = v93;
  sub_29D937C48();

  (*(v94 + 8))(v62, v69);
  sub_29D9386D8();
  v115 = v69;
  v116 = v66;
  v117 = OpaqueTypeConformance2;
  v118 = v67;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v92;
  v72 = v96;
  sub_29D937C98();
  sub_29D6D70B4(v119);
  v73 = v72;
  (*(v97 + 8))(v68, v72);
  v74 = v104;
  v75 = v103;
  v76 = v105;
  (*(v104 + 104))(v103, *MEMORY[0x29EDBC6F8], v105);
  v115 = v73;
  v116 = v70;
  v77 = swift_getOpaqueTypeConformance2();
  sub_29D937C38();
  (*(v74 + 8))(v75, v76);
  (*(v99 + 8))(v71, v60);
  v78 = v110;
  if (v55 >= 0.9)
  {
    sub_29D937DC8();
  }

  else
  {
    sub_29D937DB8();
  }

  v79 = v108;
  sub_29D8FB550(v98, v108, type metadata accessor for AFibBurdenPDFChartPoint);
  v80 = (*(v106 + 80) + 24) & ~*(v106 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v109;
  sub_29D8FB5B8(v79, v81 + v80, type metadata accessor for AFibBurdenPDFChartPoint);

  sub_29D9398A8();
  sub_29D8FB3F0(0, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v115 = v60;
  v116 = v77;
  swift_getOpaqueTypeConformance2();
  sub_29D8FA940();
  v82 = v102;
  sub_29D937C08();

  (*(v111 + 8))(v78, v112);
  return (*(v101 + 8))(v64, v82);
}

double sub_29D8F9D84@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_29D933468();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  sub_29D930258(a1);
  v7 = sub_29D9392E8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  sub_29D9398A8();
  sub_29D938718();
  *&v16[39] = v19;
  *&v16[23] = v18;
  *&v16[7] = v17;
  *(a2 + 41) = *v16;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 57) = *&v16[16];
  result = *&v16[32];
  *(a2 + 73) = *&v16[32];
  *(a2 + 88) = *(&v19 + 1);
  return result;
}

uint64_t sub_29D8F9EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D8FB508(&qword_2A17B7BC0, type metadata accessor for AFibBurdenPDFAFibChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D8F9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D8FB508(&qword_2A17B7BC0, type metadata accessor for AFibBurdenPDFAFibChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29D8FA000(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D8FB508(&qword_2A17B7BB8, type metadata accessor for AFibBurdenPDFAFibChart);
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D8FA188(uint64_t a1)
{
  result = sub_29D8FB508(&qword_2A17B7BC0, type metadata accessor for AFibBurdenPDFAFibChart);
  *(a1 + 8) = result;
  return result;
}

void sub_29D8FA1E0()
{
  if (!qword_2A17B7BC8)
  {
    sub_29D8FA244();
    sub_29D8FAA90();
    v0 = sub_29D937E68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7BC8);
    }
  }
}

void sub_29D8FA244()
{
  if (!qword_2A17B7BD0)
  {
    sub_29D8FA2B8();
    sub_29D6D61A0();
    v0 = sub_29D937BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7BD0);
    }
  }
}

void sub_29D8FA2B8()
{
  if (!qword_2A17B7BD8)
  {
    sub_29D7D5530(255, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
    sub_29D9331D8();
    sub_29D8FA3BC();
    sub_29D6D6118();
    sub_29D8FB508(&qword_2A17B1EF0, MEMORY[0x29EDB98E8]);
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7BD8);
    }
  }
}

void sub_29D8FA3BC()
{
  if (!qword_2A17B7BE0)
  {
    sub_29D8FA574();
    sub_29D8FB3F0(255, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D8FA6A4();
    sub_29D8FA7A4();
    sub_29D8FA86C();
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D8FA940();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7BE0);
    }
  }
}

void sub_29D8FA574()
{
  if (!qword_2A17B7BE8)
  {
    sub_29D8FA6A4();
    sub_29D8FA7A4();
    sub_29D8FA86C();
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7BE8);
    }
  }
}

void sub_29D8FA6A4()
{
  if (!qword_2A17B7BF0)
  {
    sub_29D8FA7A4();
    sub_29D8FA86C();
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7BF0);
    }
  }
}

void sub_29D8FA7A4()
{
  if (!qword_2A17B7BF8)
  {
    sub_29D8FA86C();
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7BF8);
    }
  }
}

void sub_29D8FA86C()
{
  if (!qword_2A17B7C00)
  {
    sub_29D937F78();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C00);
    }
  }
}

void sub_29D8FA8F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D8FA940()
{
  result = qword_2A17B7C10;
  if (!qword_2A17B7C10)
  {
    sub_29D8FB3F0(255, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D72B0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C10);
  }

  return result;
}

void sub_29D8FA9F8()
{
  if (!qword_2A17B1F00)
  {
    sub_29D937F78();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F00);
    }
  }
}

unint64_t sub_29D8FAA90()
{
  result = qword_2A17B7C18;
  if (!qword_2A17B7C18)
  {
    sub_29D8FA244();
    sub_29D8FAB8C();
    sub_29D8FA9F8();
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C18);
  }

  return result;
}

unint64_t sub_29D8FAB8C()
{
  result = qword_2A17B7C20;
  if (!qword_2A17B7C20)
  {
    sub_29D8FA2B8();
    sub_29D8FA574();
    sub_29D8FB3F0(255, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D8FA6A4();
    sub_29D8FA7A4();
    sub_29D8FA86C();
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D8FA940();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C20);
  }

  return result;
}

void sub_29D8FAD68()
{
  if (!qword_2A17B7C28)
  {
    sub_29D8FA1E0();
    sub_29D6D6634();
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0);
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C28);
    }
  }
}

void sub_29D8FAE3C()
{
  if (!qword_2A17B7C38)
  {
    sub_29D8FAD68();
    sub_29D8FA1E0();
    sub_29D6D6634();
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C38);
    }
  }
}

void sub_29D8FAF5C()
{
  if (!qword_2A17B7C40)
  {
    sub_29D8FAE3C();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D8FAD68();
    sub_29D8FA1E0();
    sub_29D6D6634();
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C40);
    }
  }
}

void sub_29D8FB0F0()
{
  if (!qword_2A17B7C50)
  {
    sub_29D8FAF5C();
    sub_29D8FAE3C();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D8FAD68();
    sub_29D8FA1E0();
    sub_29D6D6634();
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C50);
    }
  }
}

uint64_t sub_29D8FB2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8FB320()
{
  if (!qword_2A17B7C58)
  {
    sub_29D8FB3F0(255, &qword_2A17B7C48, sub_29D8FB0F0, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D7D5530(255, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7C58);
    }
  }
}

void sub_29D8FB3F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D8FB45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFibBurdenPDFChartViewModel() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8F9158(a1, v2 + v6, v7, a2);
}

uint64_t sub_29D8FB508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8FB550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8FB5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_29D8FB620@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AFibBurdenPDFChartPoint() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_29D8F9D84(v5, a1);
}

unint64_t sub_29D8FB6A4()
{
  result = qword_2A17B7C60;
  if (!qword_2A17B7C60)
  {
    sub_29D8FB320();
    sub_29D8FB724();
    sub_29D6D74DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C60);
  }

  return result;
}

unint64_t sub_29D8FB724()
{
  result = qword_2A17B7C68;
  if (!qword_2A17B7C68)
  {
    sub_29D8FB3F0(255, &qword_2A17B7C48, sub_29D8FB0F0, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D8FAF5C();
    sub_29D8FAE3C();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D8FAD68();
    sub_29D8FA1E0();
    sub_29D6D6634();
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C68);
  }

  return result;
}

uint64_t sub_29D8FB950(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_29D8FB998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D8FBA18()
{
  v1 = v0;
  sub_29D7C0420(v0 + 40, &v22);
  if (v23)
  {
    sub_29D6959E8(&v22, &v24);
    goto LABEL_10;
  }

  v2 = sub_29D936338();
  v3 = [v2 profileIdentifier];
  v4 = [v3 type];

  if (v4 != 1)
  {

LABEL_8:
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    if (!v23)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v2];

  if (!v5)
  {
    goto LABEL_8;
  }

  *(&v25 + 1) = sub_29D6B8230();
  v26 = MEMORY[0x29EDC2EA8];
  *&v24 = v5;
  if (v23)
  {
LABEL_9:
    sub_29D7C0518(&v22);
  }

LABEL_10:
  if (*(&v25 + 1))
  {
    sub_29D6959E8(&v24, v27);
    sub_29D936318();
    v6 = sub_29D8FBD58(&v24);
    sub_29D69417C(&v24);
    sub_29D6945AC(v27, &v24);
    sub_29D8FC1B4(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();

    sub_29D8FC2D8(&v24, v6);
    v10 = sub_29D936358();
    v12 = *(v1 + 24);
    v11 = *(v1 + 32);
    v13 = type metadata accessor for AFibBurdenChartSection();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_29D7B31F0(v10, v12, v11);
    sub_29D8FC0F8();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_29D935ED8();

    sub_29D69417C(v27);
  }

  else
  {
    sub_29D7C0518(&v24);
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v20, qword_2A1A2BF58);
    v27[0] = 0;
    sub_29D9371E8();
    return 0;
  }

  return v19;
}

uint64_t sub_29D8FBCB0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  sub_29D8FC9AC();
  v0 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD00000000000003ELL, 0x800000029D962DE0);
  return 0;
}

uint64_t sub_29D8FBD58(void *a1)
{
  v2 = sub_29D9356A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v24[-v10];
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  v13 = sub_29D933EC8();
  v14 = sub_29D93A598();

  sub_29D75A420();
  v16 = objc_allocWithZone(v15);
  v17 = v14;
  v18 = sub_29D936A38();
  sub_29D935658();
  sub_29D935618();
  v19 = *(v3 + 8);
  v19(v8, v2);
  v20 = sub_29D935638();
  *v21 = 0x4034000000000000;
  v20(v24, 0);
  sub_29D8FC1D4(&unk_2A17B6100, sub_29D75A420);
  v22 = sub_29D9355A8();

  v19(v11, v2);
  return v22;
}

uint64_t sub_29D8FBF70()
{
  if (sub_29D8FBA18())
  {
    sub_29D8FC0F8();
    sub_29D8FC1D4(&qword_2A17B7C88, sub_29D8FC0F8);
    sub_29D935438();
    sub_29D9353F8();
    sub_29D935428();
  }

  else
  {
    sub_29D8FC0F8();
    sub_29D8FC1D4(&qword_2A17B7C88, sub_29D8FC0F8);
    sub_29D935428();
  }

  sub_29D8FC21C();
  sub_29D8FC1D4(&qword_2A17B7C98, sub_29D8FC21C);

  v0 = sub_29D9353F8();

  return v0;
}

void sub_29D8FC0F8()
{
  if (!qword_2A17B7C70)
  {
    sub_29D8FC1B4(255);
    type metadata accessor for AFibBurdenChartSection();
    sub_29D8FC1D4(&qword_2A17B7C80, sub_29D8FC1B4);
    v0 = sub_29D935EE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7C70);
    }
  }
}

uint64_t sub_29D8FC1D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D8FC21C()
{
  if (!qword_2A17B7C90)
  {
    sub_29D8FC0F8();
    sub_29D935248();
    sub_29D8FC1D4(&qword_2A17B7C88, sub_29D8FC0F8);
    v0 = sub_29D935C38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7C90);
    }
  }
}

void *sub_29D8FC2D8(uint64_t *a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  sub_29D7C015C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FC904(0, &qword_2A17B60E0, MEMORY[0x29EDC2008]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v11, v15);
  v17 = &v28 - v16;
  *(v2 + *(*v2 + qword_2A17D1068 + 16)) = 0;
  *(v2 + *(*v2 + qword_2A17D1068 + 24)) = 0;
  v18 = v2 + *(*v2 + qword_2A17D1068 + 32);
  sub_29D6945AC(a1, v18);
  v19 = *MEMORY[0x29EDBA570];
  *(v18 + 40) = *MEMORY[0x29EDBA570];
  (*(v13 + 104))(v17, *MEMORY[0x29EDC1FF8], v12);
  v20 = v19;

  v21 = sub_29D935538();
  sub_29D81F02C(v21 + *(*v21 + qword_2A17D1068 + 32), v32);
  swift_retain_n();
  v31 = sub_29D81EC50();
  sub_29D7C05E8(0, &qword_2A17B4F60, MEMORY[0x29EDC9E90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D93DDB0;
  *(v22 + 32) = sub_29D81E240() & 1;
  sub_29D6AD548();
  sub_29D8FC1D4(&qword_2A1A223E0, sub_29D6AD548);
  sub_29D938518();

  sub_29D8FC1D4(&qword_2A17B4F68, sub_29D7C015C);
  v23 = sub_29D938418();
  (*(v6 + 8))(v10, v5);
  sub_29D7C06BC(v32);
  v32[0] = v23;
  swift_allocObject();
  swift_weakInit();

  v24 = sub_29D938588();

  sub_29D69417C(v29);

  v25 = *(*v21 + qword_2A17D1068 + 24);
  v26 = *(v21 + v25);
  *(v21 + v25) = v24;

  return v21;
}

uint64_t sub_29D8FC768(char a1)
{
  sub_29D8FC904(0, &qword_2A17B60E0, MEMORY[0x29EDC2008]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v12[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + *(*Strong + qword_2A17D1068 + 16)) = a1 & 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = MEMORY[0x29EDC2000];
    if ((a1 & 1) == 0)
    {
      v11 = MEMORY[0x29EDC1FF8];
    }

    (*(v4 + 104))(v8, *v11, v3);
    sub_29D935528();
  }

  return result;
}

void sub_29D8FC904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D75A38C();
    v7 = v6;
    v8 = sub_29D8FC1D4(&qword_2A17B3C00, sub_29D75A38C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D8FC9AC()
{
  result = qword_2A17B7CA0;
  if (!qword_2A17B7CA0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B7CA0);
  }

  return result;
}

id sub_29D8FC9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 profileIdentifier];
  v7 = [v6 type];

  if (v7 != 1)
  {
    return 0;
  }

  v8 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  if (!a3)
  {
    return [v8 initWithFeatureIdentifier:a1 healthStore:v3];
  }

  v9 = v8;
  v10 = sub_29D939D28();
  v11 = [v9 initWithFeatureIdentifier:a1 healthStore:v3 currentCountryCode:v10];

  return v11;
}

uint64_t type metadata accessor for HypertensionNotificationsHypertensionWarning()
{
  result = qword_2A17B7CB0;
  if (!qword_2A17B7CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8FCB70()
{
  v1 = (v0 + qword_2A17B7CA8);
  *v1 = 0;
  v1[1] = 0;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();

  return sub_29D936C78();
}

id sub_29D8FCCA8()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v8 = qword_2A1A2C038;
    v9 = sub_29D939D28();
    v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

    v11 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
    v12 = v11;
    [v12 setContentMode_];
    v13 = [v0 contentView];
    [v13 addSubview_];

    v14 = [v0 contentView];
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v16 = [v0 contentView];
    [v12 hk:v16 alignConstraintsWithView:?];

    v17 = [v12 heightAnchor];
    result = [v0 view];
    if (result)
    {
      v18 = result;
      v19 = [result heightAnchor];

      v20 = [v17 constraintEqualToAnchor:v19 multiplier:0.34];
      [v20 setActive_];

      sub_29D93A538();
      static String.hypertensionAccessibilityIdentifier(_:)();
      swift_arrayDestroy();
      sub_29D936C58();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D8FD0E4(void *a1)
{
  v1 = a1;
  sub_29D8FCCA8();
}

uint64_t sub_29D8FD12C()
{
  v1 = *&v0[qword_2A17B7CA8];
  if (v1)
  {
    v2 = *&v0[qword_2A17B7CA8];
    swift_unknownObjectRetain();
    sub_29D8FDA44(v0, v1, 2, &unk_2A244E048, &off_2A244E010);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8FD1A0(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D93A868();
  sub_29D936978();
  v3 = *&v2[qword_2A17B7CA8];
  if (v3)
  {
    v4 = *&v2[qword_2A17B7CA8];
    swift_unknownObjectRetain();
    sub_29D8FDA44(v2, v3, 2, &unk_2A244E048, &off_2A244E010);

    sub_29D936978();
    sub_29D69417C(v5);
  }

  else
  {
    sub_29D69417C(v5);
  }
}

uint64_t sub_29D8FD2A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B7CA8);
  v4 = *(v2 + qword_2A17B7CA8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D8FD2F0(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = a1;
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446722;
    nullsub_1(ObjectType);
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v22);
    *(v9 + 22) = 2082;
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, &v22);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v17 = *&a2[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = 3;
  *(v18 + 32) = v6;
  *(v18 + 40) = &off_2A2447F28;
  *(v18 + 48) = ObjectType;
  v19 = v6;
  v20 = a2;
  sub_29D8FDCA8(3, v19, sub_29D8FEAC0, v18, v17);
}

uint64_t sub_29D8FD55C(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = a1;
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446722;
    nullsub_1(ObjectType);
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v22);
    *(v9 + 22) = 2082;
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, &v22);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v17 = *&a2[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = 5;
  *(v18 + 32) = v6;
  *(v18 + 40) = &off_2A2448080;
  *(v18 + 48) = ObjectType;
  v19 = v6;
  v20 = a2;
  sub_29D8FE104(5, v19, sub_29D8FEA84, v18, v17);
}

uint64_t sub_29D8FD7C8(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = a1;
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446722;
    nullsub_1(ObjectType);
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v22);
    *(v9 + 22) = 2082;
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, &v22);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v17 = *&a2[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 40) = &off_2A24405F0;
  *(v18 + 48) = ObjectType;
  v19 = v6;
  v20 = a2;
  sub_29D8FE628(0, v19, sub_29D8FEAC0, v18, v17);
}

uint64_t sub_29D8FDA44(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2C008);
  v11 = a1;
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446722;
    nullsub_1(ObjectType);
    v16 = sub_29D93AF08();
    v24 = a5;
    v18 = sub_29D6C2364(v16, v17, &v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v25);
    *(v14 + 22) = 2082;
    v19 = sub_29D939DA8();
    v21 = sub_29D6C2364(v19, v20, &v25);

    *(v14 + 24) = v21;
    a5 = v24;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = v11;
  *(v22 + 40) = a5;
  *(v22 + 48) = ObjectType;
  sub_29D8E597C(5, a2, a3, v11, a5, ObjectType);
}

uint64_t sub_29D8FDCA8(char a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a1 == 5)
  {
    v16 = sub_29D693E2C((a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider), *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider + 24));
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = ObjectType;
    v18 = *v16;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_29D8FEABC;
    *(v19 + 24) = v17;

    sub_29D933ED8();

    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_onboardingFlowManager);

    sub_29D7CF6A4(sub_29D8FEAB8, v14);
LABEL_10:
  }

  if (a1)
  {
    v21 = 5;
    return a3(v21);
  }

  v34 = a2;
  v35 = &off_2A2447F28;
  sub_29D695734(0, &qword_2A17B7CC0);
  sub_29D695734(0, &qword_2A17B7CC8);
  v11 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_29D8FE560(v32);
    goto LABEL_15;
  }

  sub_29D679D3C(v32, v36);
  v12 = *(*sub_29D693E2C(v36, v37) + qword_2A17B18C0);
  if (v12 == 2 || (v13 = *(*sub_29D693E2C(v36, v37) + qword_2A17B18C8), v13 == 2))
  {
    sub_29D69417C(v36);
LABEL_15:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = sub_29D937878();
    v24 = sub_29D93A298();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136446466;
      nullsub_1(ObjectType);
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, v36);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, v36);
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s.%{public}s]: Confirm details screen should provide details", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    v21 = 4;
    return a3(v21);
  }

  if (v12)
  {
    if (v13)
    {
      v30 = 1;
    }

    else
    {
      v31 = objc_opt_self();
      if ([v31 isHeartRateEnabled])
      {
        if ([v31 isWristDetectionEnabled])
        {
          v30 = 5;
        }

        else
        {
          v30 = 3;
        }
      }

      else
      {
        v30 = 2;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  a3(v30);
  return sub_29D69417C(v36);
}

uint64_t sub_29D8FE104(char a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a1 == 5)
  {
    v16 = sub_29D693E2C((a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider), *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider + 24));
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = ObjectType;
    v18 = *v16;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_29D8FEABC;
    *(v19 + 24) = v17;

    sub_29D933ED8();

    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_onboardingFlowManager);

    sub_29D7CF6A4(sub_29D8FEAB8, v14);
LABEL_10:
  }

  if (a1)
  {
    v21 = 5;
    return a3(v21);
  }

  v34 = a2;
  v35 = &off_2A2448080;
  sub_29D695734(0, &qword_2A17B7CC0);
  sub_29D695734(0, &qword_2A17B7CC8);
  v11 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_29D8FE560(v32);
    goto LABEL_15;
  }

  sub_29D679D3C(v32, v36);
  v12 = *(*sub_29D693E2C(v36, v37) + qword_2A17B18C0);
  if (v12 == 2 || (v13 = *(*sub_29D693E2C(v36, v37) + qword_2A17B18C8), v13 == 2))
  {
    sub_29D69417C(v36);
LABEL_15:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = sub_29D937878();
    v24 = sub_29D93A298();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136446466;
      nullsub_1(ObjectType);
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, v36);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, v36);
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s.%{public}s]: Confirm details screen should provide details", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    v21 = 4;
    return a3(v21);
  }

  if (v12)
  {
    if (v13)
    {
      v30 = 1;
    }

    else
    {
      v31 = objc_opt_self();
      if ([v31 isHeartRateEnabled])
      {
        if ([v31 isWristDetectionEnabled])
        {
          v30 = 5;
        }

        else
        {
          v30 = 3;
        }
      }

      else
      {
        v30 = 2;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  a3(v30);
  return sub_29D69417C(v36);
}

uint64_t sub_29D8FE560(uint64_t a1)
{
  sub_29D8FE5BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8FE5BC()
{
  if (!qword_2A17B7CD0)
  {
    sub_29D695734(255, &qword_2A17B7CC8);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7CD0);
    }
  }
}

uint64_t sub_29D8FE628(char a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a1 == 5)
  {
    v16 = sub_29D693E2C((a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider), *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider + 24));
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = ObjectType;
    v18 = *v16;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_29D8FEA9C;
    *(v19 + 24) = v17;

    sub_29D933ED8();

    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_onboardingFlowManager);

    sub_29D7CF6A4(sub_29D8FEAB0, v14);
LABEL_10:
  }

  if (a1)
  {
    v21 = 5;
    return a3(v21);
  }

  v34 = a2;
  v35 = &off_2A24405F0;
  sub_29D695734(0, &qword_2A17B7CC0);
  sub_29D695734(0, &qword_2A17B7CC8);
  v11 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_29D8FE560(v32);
    goto LABEL_15;
  }

  sub_29D679D3C(v32, v36);
  v12 = *(*sub_29D693E2C(v36, v37) + qword_2A17B18C0);
  if (v12 == 2 || (v13 = *(*sub_29D693E2C(v36, v37) + qword_2A17B18C8), v13 == 2))
  {
    sub_29D69417C(v36);
LABEL_15:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = sub_29D937878();
    v24 = sub_29D93A298();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136446466;
      nullsub_1(ObjectType);
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, v36);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, v36);
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s.%{public}s]: Confirm details screen should provide details", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    v21 = 4;
    return a3(v21);
  }

  if (v12)
  {
    if (v13)
    {
      v30 = 1;
    }

    else
    {
      v31 = objc_opt_self();
      if ([v31 isHeartRateEnabled])
      {
        if ([v31 isWristDetectionEnabled])
        {
          v30 = 5;
        }

        else
        {
          v30 = 3;
        }
      }

      else
      {
        v30 = 2;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  a3(v30);
  return sub_29D69417C(v36);
}

uint64_t sub_29D8FEA9C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_29D930838(a1, *(v1 + 16));
}

uint64_t type metadata accessor for HypertensionNotificationsFeatureRegulatoryInfoTransformProvider()
{
  result = qword_2A17B7CD8;
  if (!qword_2A17B7CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8FEB54()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D8FEBF0()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9336E8();
}

void sub_29D8FECB0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a3 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_lockedDeliveredCountryCode);
    v4 = MEMORY[0x2A1C7C4A8](a1, a2);

    os_unfair_lock_lock((v3 + 32));
    sub_29D900174((v3 + 16));
    os_unfair_lock_unlock((v3 + 32));
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2C008);
    v7 = a2;
    v18 = sub_29D937878();
    v8 = sub_29D93A288();

    if (os_log_type_enabled(v18, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v9 = 136446466;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, &v19);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v9 + 14) = v16;
      *v10 = v17;
      _os_log_impl(&dword_29D677000, v18, v8, "[%{public}s] Unable to retrieve onboarding record with error %@", v9, 0x16u);
      sub_29D900A70(v10, &qword_2A1A21FC0, sub_29D751594);
      MEMORY[0x29ED6BE30](v10, -1, -1);
      sub_29D69417C(v11);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D8FEF38(uint64_t *a1, void *a2)
{
  v4 = a1[1];

  v5 = [a2 onboardingCompletion];
  if (v5 && (v6 = v5, v7 = [v5 countryCode], v6, v7))
  {
    v8 = sub_29D939D68();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a1 = v8;
  a1[1] = v10;
}

uint64_t sub_29D8FEFE0()
{
  v0 = *MEMORY[0x29EDC5140];
  v1 = sub_29D9371B8();
  v2 = [v1 isRequirementSatisfiedWithIdentifier_];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_wristDetectEnabled);
    v5 = result;

    os_unfair_lock_lock((v4 + 20));
    *(v4 + 16) = v2;
    os_unfair_lock_unlock((v4 + 20));
  }

  return result;
}

uint64_t sub_29D8FF0A0(char a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47[2] = a7;
  v49 = a6;
  v12 = sub_29D9339F8();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D900880(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v21 = v47 - v20;
  v22 = sub_29D933318();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = 1;
    return a3(v28);
  }

  v47[0] = v27;
  v47[1] = a4;
  v29 = a5;
  *(a5 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsChanged) = a1 & 1;
  sub_29D935A58();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_29D900A70(v21, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
LABEL_12:
    v28 = 2;
    return a3(v28);
  }

  v30 = v23;
  v31 = *(v23 + 32);
  v32 = v47[0];
  v31(v47[0], v21, v22);
  v33 = *MEMORY[0x29EDBAFD0];
  v34 = sub_29D933288();
  v35 = *(v29 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_dateProvider + 8);
  (*(v29 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_dateProvider))();
  v36 = sub_29D933958();
  (*(v48 + 8))(v16, v12);
  v37 = [v34 hk:v36 ageWithCurrentDate:?];

  if (v37 >= v33)
  {
    (*(v30 + 8))(v32, v22);
    goto LABEL_12;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v38 = sub_29D937898();
  sub_29D69C6C0(v38, qword_2A1A2C008);
  v39 = sub_29D937878();
  v40 = sub_29D93A2A8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v41 = 136446210;
    v43 = sub_29D93AF08();
    v45 = sub_29D6C2364(v43, v44, &v50);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_29D677000, v39, v40, "[%{public}s] User not old enough to continue onboarding", v41, 0xCu);
    sub_29D69417C(v42);
    MEMORY[0x29ED6BE30](v42, -1, -1);
    MEMORY[0x29ED6BE30](v41, -1, -1);
  }

  a3(0);
  return (*(v30 + 8))(v47[0], v22);
}

uint64_t sub_29D8FF4DC(unsigned __int8 *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (v3 == 2)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = sub_29D937878();
    v6 = sub_29D93A298();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136446466;
      v9 = sub_29D93AF08();
      v11 = sub_29D6C2364(v9, v10, &v29);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, &v29);
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s.%{public}s]: Haven't retrieved feature status by the time we got to setup complete", v7, 0x16u);
      v12 = 2;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);

      return a2(v12);
    }

LABEL_11:

    v12 = 2;
    return a2(v12);
  }

  if (v3)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v13 = sub_29D937898();
    sub_29D69C6C0(v13, qword_2A1A2C008);
    v5 = sub_29D937878();
    v14 = sub_29D93A278();
    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136446466;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v29);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, &v29);
      _os_log_impl(&dword_29D677000, v5, v14, "[%{public}s.%{public}s]: Wrist detect enabled, proceeding", v15, 0x16u);
      v12 = 2;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);

      return a2(v12);
    }

    goto LABEL_11;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v20 = sub_29D937898();
  sub_29D69C6C0(v20, qword_2A1A2C008);
  v21 = sub_29D937878();
  v22 = sub_29D93A278();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446466;
    v25 = sub_29D93AF08();
    v27 = sub_29D6C2364(v25, v26, &v29);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, &v29);
    _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s.%{public}s]: Wrist detect disabled, warning", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v24, -1, -1);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v12 = 3;
  return a2(v12);
}

uint64_t sub_29D8FF944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_29D69C75C();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_featureAvailabilityProvider);
  swift_getObjectType();
  sub_29D93A408();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v14;
  v15[5] = ObjectType;

  swift_unknownObjectRetain();
  sub_29D93A608();

  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_29D8FFAB0(char a1, void *a2, uint64_t (*a3)(void, void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D69C75C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v11, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    v18 = *MEMORY[0x29EDC5108];
    sub_29D939D68();
    sub_29D93A3E8();
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a6;

    sub_29D93A608();

    return (*(v13 + 8))(v17, v12);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v21 = sub_29D937898();
    sub_29D69C6C0(v21, qword_2A1A2C008);
    v22 = a2;
    v23 = sub_29D937878();
    v24 = sub_29D93A288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v25 = 136446466;
      v28 = sub_29D93AF08();
      v30 = sub_29D6C2364(v28, v29, &v35);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2112;
      if (a2)
      {
        v31 = a2;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v32;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *(v25 + 14) = v32;
      *v26 = v33;
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s] Error when setting feature enable setting: %@", v25, 0x16u);
      sub_29D900A70(v26, &qword_2A1A21FC0, sub_29D751594);
      MEMORY[0x29ED6BE30](v26, -1, -1);
      sub_29D69417C(v27);
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    return a3(0, a2);
  }
}

uint64_t sub_29D8FFDD4(char a1, void *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (a1)
  {
    v4 = 1;
    v5 = 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = a2;
    v9 = sub_29D937878();
    v10 = sub_29D93A288();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136446466;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, &v21);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v11 + 14) = v18;
      *v12 = v19;
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Error when setting notification details entered setting: %@", v11, 0x16u);
      sub_29D900A70(v12, &qword_2A1A21FC0, sub_29D751594);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    v4 = 0;
    v5 = a2;
  }

  return a3(v4, v5);
}

id sub_29D900014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D90010C()
{
  v1 = (*v0 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_mostRecentSampleDateProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_29D693E2C(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_29D90019C(char a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_29D8FFDD4(a1, a2, *(v2 + 16));
}

uint64_t sub_29D9001A8(unsigned __int8 a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v63 = a3;
  ObjectType = swift_getObjectType();
  sub_29D900880(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v57 - v16;
  v18 = sub_29D935AB8();
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v28 = &v57 - v27;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      v48 = *&a5[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_wristDetectEnabled];
      MEMORY[0x2A1C7C4A8](v24, v25);
      *(&v57 - 4) = v63;
      *(&v57 - 3) = v49;
      *(&v57 - 2) = ObjectType;

      os_unfair_lock_lock((v48 + 20));
      sub_29D9008D4((v48 + 16));
      os_unfair_lock_unlock((v48 + 20));
    }
  }

  else
  {
    if (a1)
    {
      v37 = v26;
      v60 = ObjectType;
      v61 = a4;
      v62 = v24;
      v64 = a2;
      v65 = a7;
      sub_29D695734(0, &qword_2A17B7D28);
      sub_29D695734(0, &qword_2A17B7D30);
      v38 = a2;
      if (swift_dynamicCast())
      {
        v39 = *(*(*sub_29D693E2C(&v66, *(&v67 + 1)) + qword_2A17B3488) + qword_2A17B5D00);
        v40 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
        swift_beginAccess();
        sub_29D7D9B18(v39 + v40, v17);
        sub_29D69417C(&v66);
        v41 = v37;
        if ((*(v37 + 48))(v17, 1, v62) != 1)
        {
          v58 = *(v37 + 32);
          v42 = v62;
          v58(v28, v17, v62);
          v59 = *&a5[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsProvider];
          (*(v41 + 16))(v22, v28, v42);
          v43 = (*(v41 + 80) + 40) & ~*(v41 + 80);
          v44 = swift_allocObject();
          v45 = v61;
          *(v44 + 2) = v63;
          *(v44 + 3) = v45;
          *(v44 + 4) = a5;
          v58(&v44[v43], v22, v42);
          *&v44[(v19 + v43 + 7) & 0xFFFFFFFFFFFFFFF8] = v60;

          v46 = a5;
          sub_29D935A08();

          return (*(v41 + 8))(v28, v42);
        }
      }

      else
      {
        v68 = 0;
        v66 = 0u;
        v67 = 0u;
        sub_29D9008F4(&v66);
        (*(v37 + 56))(v17, 1, 1, v62);
      }

      sub_29D900A70(v17, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v50 = sub_29D937898();
      sub_29D69C6C0(v50, qword_2A1A2C008);
      v30 = sub_29D937878();
      v51 = sub_29D93A298();
      if (os_log_type_enabled(v30, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v66 = v53;
        *v52 = 136446466;
        v54 = sub_29D93AF08();
        v56 = sub_29D6C2364(v54, v55, &v66);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2082;
        *(v52 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, &v66);
        _os_log_impl(&dword_29D677000, v30, v51, "[%{public}s.%{public}s]: Confirm details screen should provide details", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v53, -1, -1);
        MEMORY[0x29ED6BE30](v52, -1, -1);
      }
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v29 = sub_29D937898();
      sub_29D69C6C0(v29, qword_2A1A2C008);
      v30 = sub_29D937878();
      v31 = sub_29D93A2A8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v66 = v33;
        *v32 = 136446210;
        v34 = sub_29D93AF08();
        v36 = sub_29D6C2364(v34, v35, &v66);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_29D677000, v30, v31, "[%{public}s] Proceeding from start", v32, 0xCu);
        sub_29D69417C(v33);
        MEMORY[0x29ED6BE30](v33, -1, -1);
        MEMORY[0x29ED6BE30](v32, -1, -1);
      }
    }
  }

  return v63(2);
}

void sub_29D900880(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D9008D4(unsigned __int8 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_29D8FF4DC(a1, *(v1 + 16));
}

uint64_t sub_29D9008F4(uint64_t a1)
{
  sub_29D900950();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D900950()
{
  if (!qword_2A17B7D38)
  {
    sub_29D695734(255, &qword_2A17B7D30);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7D38);
    }
  }
}

uint64_t sub_29D9009BC(char a1, char a2)
{
  v5 = *(sub_29D935AB8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8FF0A0(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t sub_29D900A70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D900880(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D900AE0()
{
  result = qword_2A17B7D40;
  if (!qword_2A17B7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D40);
  }

  return result;
}

unint64_t sub_29D900B48()
{
  result = qword_2A17B7D48;
  if (!qword_2A17B7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D48);
  }

  return result;
}

id sub_29D900B9C(void *a1, void *a2, void *a3)
{
  v4 = [a1 userInterfaceStyle];
  if (v4)
  {
    v5 = v4 == 2;
    v6 = a3;
    if (!v5)
    {
      v6 = a2;
    }
  }

  else
  {
    v6 = a3;
  }

  return v6;
}

uint64_t sub_29D900BFC()
{
  v1 = *v0;
  v2 = sub_29D8AA8CC();
  sub_29D8E8608(v2);
  v4 = v3;

  return v4;
}

uint64_t sub_29D900C68@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_29D934798();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x29EDBA570];
  v10 = sub_29D9371B8();
  v11 = [v10 areAllRequirementsSatisfied];

  if (v11)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2C008);
    v13 = sub_29D937878();
    v14 = sub_29D93A2A8();
    v15 = os_log_type_enabled(v13, v14);
    v44 = a1;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v47 = v17;
      *v16 = 136446466;
      v18 = sub_29D93AF08();
      v20 = sub_29D6C2364(v18, v19, &v47);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D958D30, &v47);
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s.%{public}s]: Creating cardio fitness promo tile configuration", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);
    }

    v21 = *MEMORY[0x29EDC5110];
    v22 = sub_29D939D68();
    v45 = v23;
    v46 = v22;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v24 = qword_2A1A2C038;
    sub_29D934788();
    type metadata accessor for HeartHealthPluginDelegate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = objc_opt_self();
    v27 = [v26 bundleForClass_];
    v43[1] = v8;
    v43[0] = sub_29D9334A8();

    v28 = [v26 bundleForClass_];
    sub_29D9334A8();

    v29 = [v26 bundleForClass_];
    sub_29D9334A8();

    v30 = v44;
    sub_29D9349E8();
    v31 = sub_29D934A18();
    return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v33 = sub_29D937898();
    sub_29D69C6C0(v33, qword_2A1A2C008);
    v34 = sub_29D937878();
    v35 = sub_29D93A2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136446466;
      v38 = sub_29D93AF08();
      v40 = sub_29D6C2364(v38, v39, &v47);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D958D30, &v47);
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s.%{public}s]: Onboarding initiation context not satisfied, no promotion tile", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }

    v41 = sub_29D934A18();
    v42 = *(*(v41 - 8) + 56);

    return v42(a1, 1, 1, v41);
  }
}

uint64_t sub_29D9012A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *MEMORY[0x29EDBA578];
  v7 = sub_29D9371B8();
  v8 = [v7 areAllRequirementsSatisfied];

  if (v8)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2C008);
    v10 = sub_29D937878();
    v11 = sub_29D93A2A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136446466;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, &v29);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D958CD0, &v29);
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s.%{public}s]: All requirements met for onboarding promotion, not hiding from discover", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    v17 = sub_29D9340F8();
    v18 = *(*(v17 - 8) + 16);

    return v18(a2, a1, v17);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    sub_29D69C6C0(v20, qword_2A1A2C008);
    v21 = sub_29D937878();
    v22 = sub_29D93A2A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136446466;
      v25 = sub_29D93AF08();
      v27 = sub_29D6C2364(v25, v26, &v29);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D958CD0, &v29);
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s.%{public}s]: Not all requirements for onboarding promotion met, hiding from discover", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v24, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    v28 = sub_29D9340F8();
    (*(*(v28 - 8) + 16))(a2, a1, v28);
    return sub_29D934078();
  }
}

uint64_t type metadata accessor for CardioFitnessPromotionActionHandler()
{
  result = qword_2A1A239E0;
  if (!qword_2A1A239E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9017B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63270](a1, WitnessTable);
}

uint64_t sub_29D90181C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63268](a1, a2, a3, WitnessTable);
}

void sub_29D9018A4()
{
  v1 = sub_29D9350C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D936638();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v27[-1] - v15;
  v26 = v0;
  sub_29D936B88();
  sub_29D936608();
  v17 = *(v8 + 8);
  v17(v16, v7);
  sub_29D693E2C(v27, v28);
  sub_29D936598();
  v18 = (*(v2 + 88))(v6, v1);
  v20 = v18 == *MEMORY[0x29EDC1D20] || v18 == *MEMORY[0x29EDC1D68] || v18 == *MEMORY[0x29EDC1D80];
  v21 = v20;
  if (!v20)
  {
    (*(v2 + 8))(v6, v1);
  }

  sub_29D69417C(v27);
  sub_29D936B88();
  sub_29D936608();
  v17(v13, v7);
  sub_29D693E2C(v27, v28);
  v22 = sub_29D936588();
  v23 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingViewController());
  v24 = sub_29D827BF4(v22, v21);
  sub_29D69417C(v27);
  sub_29D936B88();
  v25 = sub_29D936618();
  v17(v13, v7);
  [v25 presentViewController:v24 animated:1 completion:0];
}

uint64_t sub_29D901B90(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D901C90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessPromotionActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D901D68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29D901DB4(uint64_t a1)
{
  v126 = a1;
  v1 = sub_29D933AA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v136 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v125 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = &v118 - v13;
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v118 - v16;
  v18 = sub_29D9376E8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8, v20);
  sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v22 = v21;
  v23 = sub_29D934548();
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~v25;
  v138 = *(v24 + 72);
  v121 = v25;
  v123 = v22;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D944700;
  v122 = v26;
  v120 = v27;
  v141 = v27 + v26;
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v28 = qword_2A1A2C038;
  sub_29D9376B8();
  v29 = sub_29D93A6A8();
  v30 = v141;
  *v141 = v29;
  v30[8] = 0;
  v31 = *MEMORY[0x29EDC1608];
  v32 = *(v24 + 104);
  v134 = v24 + 104;
  v137 = v32;
  (v32)(v30, v31, v23);
  v33 = &v30[v138];
  sub_29D939D08();
  v133 = v23;
  if (qword_2A1A242B0 != -1)
  {
    swift_once();
  }

  v34 = qword_2A1A2BE80;
  v128 = qword_2A1A2BE80;
  v135 = *algn_2A1A2BE88;
  v35 = qword_2A1A2BE90;
  v36 = v6[2];
  v139 = v6 + 2;
  v140 = v36;
  v37 = v14;
  v36(v14, v17, v5);
  v130 = v35;
  sub_29D935E88();
  v129 = v34;
  sub_29D933A98();
  v38 = sub_29D939D98();
  v40 = v39;
  v142 = v6[1];
  v142(v17, v5);
  v41 = v137;
  v42 = v138;
  v43 = v141;
  *(v141 + v138) = v38;
  *(v33 + 1) = v40;
  v41(v33, *MEMORY[0x29EDC1610], v133);
  v131 = v6 + 1;
  v119 = (2 * v42);
  v44 = &v43[2 * v42];
  sub_29D939D08();
  v132 = v37;
  v140(v37, v17, v5);
  sub_29D935E88();
  v129 = v129;
  sub_29D933A98();
  v45 = sub_29D939D98();
  v47 = v46;
  v124 = v5;
  v142(v17, v5);
  *v44 = v45;
  v44[1] = v47;
  v44[2] = 0;
  v127 = *MEMORY[0x29EDC15D0];
  v48 = v137;
  v137(v44);
  v49 = &v119[v138 + v141];
  sub_29D939D08();
  v140(v132, v17, v5);
  sub_29D935E88();
  v119 = v129;
  sub_29D933A98();
  v50 = sub_29D939D98();
  v52 = v51;
  v53 = v124;
  v142(v17, v124);
  *v49 = v50;
  *(v49 + 1) = v52;
  v49[16] = 0;
  LODWORD(v129) = *MEMORY[0x29EDC1630];
  v48(v49);
  v54 = v125;
  sub_29D939D08();
  v55 = v138;
  v118 = 4 * v138;
  v56 = (v141 + 4 * v138);
  v140(v17, v54, v53);
  sub_29D935E88();
  v119 = v119;
  sub_29D933A98();
  v57 = sub_29D939D98();
  v59 = v58;
  v142(v54, v53);
  *v56 = v57;
  *(v56 + 1) = v59;
  v56[16] = 0;
  (v137)(v56, v129, v133);
  v60 = (v141 + v118 + v55);
  sub_29D939D08();
  v140(v132, v17, v53);
  sub_29D935E88();
  v125 = v119;
  sub_29D933A98();
  v61 = sub_29D939D98();
  v63 = v62;
  v142(v17, v53);
  *v60 = v61;
  v60[1] = v63;
  v60[2] = 0;
  v64 = v133;
  (v137)(v60, v127, v133);
  v65 = (v141 + 6 * v138);
  sub_29D939D08();
  v66 = v132;
  v140(v132, v17, v53);
  sub_29D935E88();
  v119 = v125;
  sub_29D933A98();
  v67 = sub_29D939D98();
  v69 = v68;
  v142(v17, v53);
  *v65 = v67;
  *(v65 + 1) = v69;
  v65[16] = 0;
  v70 = v137;
  (v137)(v65, v129, v64);
  v125 = (8 * v138);
  v71 = (v141 + 7 * v138);
  sub_29D939D08();
  v140(v66, v17, v53);
  sub_29D935E88();
  v119 = v119;
  sub_29D933A98();
  v72 = sub_29D939D98();
  v74 = v73;
  v142(v17, v53);
  *v71 = v72;
  v71[1] = v74;
  v71[2] = 0;
  v75 = v133;
  v70(v71, v127, v133);
  v76 = &v125[v141];
  sub_29D939D08();
  v77 = v140;
  v140(v132, v17, v53);
  sub_29D935E88();
  v119 = v119;
  sub_29D933A98();
  v78 = sub_29D939D98();
  v80 = v79;
  v142(v17, v53);
  *v76 = v78;
  *(v76 + 1) = v80;
  v76[16] = 0;
  (v137)(v76, v129, v75);
  v81 = &v125[v138 + v141];
  sub_29D939D08();
  v77(v132, v17, v53);
  sub_29D935E88();
  v125 = v119;
  sub_29D933A98();
  v82 = sub_29D939D98();
  v84 = v83;
  v142(v17, v53);
  *v81 = v82;
  v81[1] = v84;
  v81[2] = 0;
  (v137)(v81, v127, v133);
  v85 = v138;
  v86 = (v141 + 10 * v138);
  sub_29D939D08();
  v140(v132, v17, v53);
  sub_29D935E88();
  v125 = v125;
  sub_29D933A98();
  v87 = sub_29D939D98();
  v89 = v88;
  v142(v17, v53);
  *v86 = v87;
  *(v86 + 1) = v89;
  v86[16] = 0;
  v90 = v133;
  (v137)(v86, v129, v133);
  v91 = v141;
  v92 = (v141 + 11 * v85);
  sub_29D939D08();
  v140(v132, v17, v53);
  sub_29D935E88();
  v125 = v125;
  sub_29D933A98();
  v93 = sub_29D939D98();
  v95 = v94;
  v142(v17, v53);
  *v92 = v93;
  *(v92 + 1) = v95;
  v92[16] = 0;
  (v137)(v92, v129, v90);
  v96 = &v91[12 * v138];
  sub_29D939D08();
  v140(v132, v17, v53);
  sub_29D935E88();
  v125 = v125;
  sub_29D933A98();
  v97 = sub_29D939D98();
  v99 = v98;
  v142(v17, v53);
  *v96 = v97;
  v96[1] = v99;
  v96[2] = 0;
  (v137)(v96, v127, v133);
  v100 = (v141 + 13 * v138);
  sub_29D939D08();
  v101 = v132;
  v140(v132, v17, v53);
  sub_29D935E88();
  v141 = v125;
  sub_29D933A98();
  v102 = sub_29D939D98();
  v104 = v103;
  v142(v17, v53);
  *v100 = v102;
  *(v100 + 1) = v104;
  v100[16] = 0;
  v105 = v100;
  v106 = v133;
  v107 = v137;
  (v137)(v105, v129, v133);
  v108 = sub_29D902F1C(v126);
  v143 = v120;
  sub_29D88BEE0(v108);
  v109 = v122;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_29D93DDB0;
  v111 = v110 + v109;
  sub_29D939D08();
  v112 = v124;
  v140(v101, v17, v124);
  sub_29D935E88();
  v113 = v141;
  sub_29D933A98();
  v114 = sub_29D939D98();
  v116 = v115;
  v142(v17, v112);
  *v111 = v114;
  *(v111 + 8) = v116;
  *(v111 + 16) = 0;
  v107(v111, v129, v106);
  sub_29D88BEE0(v110);
  return v143;
}

uint64_t sub_29D902F1C(uint64_t a1)
{
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v183 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v184 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v161 - v13;
  switch(a1)
  {
    case 2:
      sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
      v175 = sub_29D934548();
      v122 = *(*(v175 - 8) + 72);
      v181 = *(v175 - 8);
      v123 = (*(v181 + 80) + 32) & ~*(v181 + 80);
      v179 = v122;
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_29D946CA0;
      v180 = v124;
      v125 = v124 + v123;
      sub_29D939D08();
      if (qword_2A1A242B0 != -1)
      {
        swift_once();
      }

      v126 = qword_2A1A2BE80;
      v176 = qword_2A1A2BE80;
      v166 = *algn_2A1A2BE88;
      v127 = qword_2A1A2BE90;
      v177 = v7[2];
      v128 = v184;
      (v177)(v184, v14, v6);
      v172 = (v7 + 2);
      sub_29D935E88();
      v171 = v126;
      sub_29D933A98();
      v129 = sub_29D939D98();
      v130 = v6;
      v131 = v7;
      v132 = v129;
      v134 = v133;
      v135 = v131[1];
      v182 = v131 + 1;
      v178 = v135;
      v135(v14, v130);
      *v125 = v132;
      *(v125 + 8) = v134;
      *(v125 + 16) = 0;
      v136 = *MEMORY[0x29EDC1630];
      v137 = *(v181 + 104);
      v181 += 104;
      v174 = v137;
      v137(v125, v136, v175);
      v138 = (v125 + v179);
      sub_29D84D460();
      v173 = v139;
      v167 = v139[12];
      sub_29D939D08();
      (v177)(v128, v14, v130);
      v163 = v127;
      sub_29D935E88();
      v165 = v171;
      sub_29D933A98();
      v140 = sub_29D939D98();
      v142 = v141;
      v178(v14, v130);
      *v138 = v140;
      v138[1] = v142;
      v170 = sub_29D9333D8();
      v143 = *(v170 - 8);
      v168 = *(v143 + 56);
      v171 = (v143 + 56);
      (v168)(v167 + v138, 1, 1, v170);
      LODWORD(v167) = *MEMORY[0x29EDC15F8];
      v144 = v175;
      (v174)(v138);
      v164 = 2 * v179;
      v145 = (v125 + 2 * v179);
      v162 = v173[12];
      sub_29D939D08();
      v146 = v130;
      (v177)(v184, v14, v130);
      sub_29D935E88();
      v165 = v165;
      sub_29D933A98();
      v147 = sub_29D939D98();
      v149 = v148;
      v150 = v146;
      v178(v14, v146);
      *v145 = v147;
      v145[1] = v149;
      (v168)(v145 + v162, 1, 1, v170);
      v151 = v144;
      v152 = v174;
      (v174)(v145, v167, v144);
      v153 = (v125 + v164 + v179);
      v154 = v173[12];
      sub_29D939D08();
      v155 = v150;
      (v177)(v184, v14, v150);
      sub_29D935E88();
      v156 = v165;
      sub_29D933A98();
      v157 = sub_29D939D98();
      v159 = v158;
      v178(v14, v155);
      *v153 = v157;
      v153[1] = v159;
      (v168)(v153 + v154, 1, 1, v170);
      v152(v153, v167, v151);
      return v180;
    case 1:
      sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
      v178 = sub_29D934548();
      v74 = *(*(v178 - 1) + 72);
      v181 = *(v178 - 1);
      v75 = (*(v181 + 80) + 32) & ~*(v181 + 80);
      v179 = v74;
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_29D944710;
      v180 = v76;
      v174 = v76 + v75;
      sub_29D939D08();
      if (qword_2A1A242B0 != -1)
      {
        swift_once();
      }

      v77 = qword_2A1A2BE80;
      v176 = *algn_2A1A2BE88;
      v177 = qword_2A1A2BE80;
      v78 = qword_2A1A2BE90;
      v172 = v7[2];
      v166 = (v7 + 2);
      v79 = v184;
      v172(v184, v14, v6);
      sub_29D935E88();
      v173 = v77;
      sub_29D933A98();
      v80 = sub_29D939D98();
      v82 = v81;
      v175 = v7[1];
      v182 = v7 + 1;
      (v175)(v14, v6);
      v83 = v174;
      *v174 = v80;
      *(v83 + 8) = v82;
      *(v83 + 16) = 0;
      v84 = *MEMORY[0x29EDC1630];
      v167 = *(v181 + 104);
      v181 += 104;
      v85 = v83;
      v167();
      v86 = (v85 + v179);
      sub_29D84D460();
      v88 = v87;
      v170 = *(v87 + 48);
      v164 = v87;
      sub_29D939D08();
      v169 = v6;
      v172(v79, v14, v6);
      v165 = v78;
      sub_29D935E88();
      v163 = v173;
      sub_29D933A98();
      v89 = sub_29D939D98();
      v91 = v90;
      (v175)(v14, v6);
      *v86 = v89;
      v86[1] = v91;
      v171 = sub_29D9333D8();
      v92 = *(v171 - 1);
      v93 = *(v92 + 56);
      v173 = (v92 + 56);
      (v93)(v86 + v170, 1, 1, v171);
      v168 = v93;
      LODWORD(v170) = *MEMORY[0x29EDC15F8];
      v94 = v178;
      v95 = v167;
      (v167)(v86);
      v162 = 2 * v179;
      v96 = v174;
      v97 = (v174 + 2 * v179);
      v161 = *(v88 + 48);
      sub_29D939D08();
      v98 = v169;
      v172(v184, v14, v169);
      sub_29D935E88();
      v163 = v163;
      sub_29D933A98();
      v99 = sub_29D939D98();
      v101 = v100;
      (v175)(v14, v98);
      *v97 = v99;
      v97[1] = v101;
      (v93)(v97 + v161, 1, 1, v171);
      v95(v97, v170, v94);
      v102 = (v96 + v162 + v179);
      v103 = v164;
      v161 = *(v164 + 48);
      sub_29D939D08();
      v104 = v172;
      v172(v184, v14, v98);
      sub_29D935E88();
      v162 = v163;
      sub_29D933A98();
      v105 = sub_29D939D98();
      v107 = v106;
      (v175)(v14, v98);
      *v102 = v105;
      v102[1] = v107;
      (v168)(v102 + v161, 1, 1, v171);
      (v167)(v102, v170, v178);
      v163 = (4 * v179);
      v108 = (v174 + 4 * v179);
      v161 = *(v103 + 48);
      sub_29D939D08();
      v109 = v184;
      v104(v184, v14, v98);
      sub_29D935E88();
      v162 = v162;
      sub_29D933A98();
      v110 = sub_29D939D98();
      v112 = v111;
      (v175)(v14, v98);
      *v108 = v110;
      v108[1] = v112;
      v113 = v171;
      (v168)(v108 + v161, 1, 1, v171);
      v114 = v108;
      v115 = v170;
      v116 = v167;
      (v167)(v114, v170, v178);
      v117 = (v163 + v179 + v174);
      v179 = *(v164 + 48);
      sub_29D939D08();
      v172(v109, v14, v98);
      sub_29D935E88();
      v118 = v162;
      sub_29D933A98();
      v119 = sub_29D939D98();
      v121 = v120;
      (v175)(v14, v98);
      *v117 = v119;
      v117[1] = v121;
      (v168)(v117 + v179, 1, 1, v113);
      v116(v117, v115, v178);
      return v180;
    case 0:
      sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
      v178 = sub_29D934548();
      v15 = *(*(v178 - 1) + 72);
      v181 = *(v178 - 1);
      v16 = (*(v181 + 80) + 32) & ~*(v181 + 80);
      v179 = v15;
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_29D943DD0;
      v180 = v17;
      v177 = v17 + v16;
      sub_29D939D08();
      if (qword_2A1A242B0 != -1)
      {
        swift_once();
      }

      v18 = qword_2A1A2BE80;
      v165 = qword_2A1A2BE80;
      v19 = qword_2A1A2BE90;
      v172 = v7[2];
      v173 = *algn_2A1A2BE88;
      v174 = (v7 + 2);
      v172(v184, v14, v6);
      sub_29D935E88();
      v171 = v18;
      sub_29D933A98();
      v20 = sub_29D939D98();
      v22 = v21;
      v23 = v7[1];
      v23(v14, v6);
      v176 = v23;
      v182 = v7 + 1;
      v24 = v177;
      *v177 = v20;
      *(v24 + 8) = v22;
      *(v24 + 16) = 0;
      v25 = *MEMORY[0x29EDC1630];
      v26 = *(v181 + 104);
      v181 += 104;
      v168 = v26;
      v27 = v24;
      v26();
      v28 = (v27 + v179);
      sub_29D84D460();
      v175 = v29;
      v164 = *(v29 + 48);
      sub_29D939D08();
      v172(v184, v14, v6);
      v170 = v19;
      sub_29D935E88();
      v163 = v171;
      sub_29D933A98();
      v30 = sub_29D939D98();
      v32 = v31;
      v23(v14, v6);
      *v28 = v30;
      v28[1] = v32;
      v166 = sub_29D9333D8();
      v33 = *(v166 - 8);
      v167 = *(v33 + 56);
      v171 = (v33 + 56);
      (v167)(v28 + v164, 1, 1, v166);
      LODWORD(v164) = *MEMORY[0x29EDC15F8];
      v34 = v28;
      v35 = v178;
      (v168)(v34);
      v36 = v179;
      v162 = 2 * v179;
      v37 = (v177 + 2 * v179);
      v161 = *(v175 + 48);
      sub_29D939D08();
      v169 = v6;
      v172(v184, v14, v6);
      sub_29D935E88();
      v163 = v163;
      sub_29D933A98();
      v38 = sub_29D939D98();
      v40 = v39;
      v176(v14, v6);
      *v37 = v38;
      v37[1] = v40;
      (v167)(v37 + v161, 1, 1, v166);
      (v168)(v37, v164, v35);
      v41 = (v162 + v36);
      v42 = v177;
      v43 = &v41[v177];
      v161 = *(v175 + 48);
      sub_29D939D08();
      v44 = v14;
      v45 = v14;
      v46 = v169;
      v47 = v172;
      v172(v184, v44, v169);
      sub_29D935E88();
      v162 = v163;
      sub_29D933A98();
      v48 = sub_29D939D98();
      v50 = v49;
      v176(v45, v46);
      *v43 = v48;
      v43[1] = v50;
      v51 = v166;
      (v167)(v43 + v161, 1, 1, v166);
      v52 = v168;
      (v168)(v43, v164, v178);
      v163 = (4 * v179);
      v53 = (v42 + 4 * v179);
      v161 = *(v175 + 48);
      v54 = v45;
      sub_29D939D08();
      v55 = v169;
      v47(v184, v45, v169);
      sub_29D935E88();
      v162 = v162;
      sub_29D933A98();
      v56 = sub_29D939D98();
      v58 = v57;
      v176(v45, v55);
      *v53 = v56;
      v53[1] = v58;
      v59 = v167;
      (v167)(v53 + v161, 1, 1, v51);
      v60 = v164;
      (v52)(v53, v164, v178);
      v61 = (v163 + v179 + v177);
      v161 = *(v175 + 48);
      sub_29D939D08();
      v62 = v169;
      v172(v184, v45, v169);
      sub_29D935E88();
      v163 = v162;
      sub_29D933A98();
      v63 = sub_29D939D98();
      v65 = v64;
      v176(v45, v62);
      *v61 = v63;
      v61[1] = v65;
      v59(v61 + v161, 1, 1, v166);
      v66 = v60;
      v67 = v178;
      v68 = v168;
      (v168)(v61, v66, v178);
      v69 = (v177 + 6 * v179);
      v179 = *(v175 + 48);
      sub_29D939D08();
      v172(v184, v45, v62);
      sub_29D935E88();
      v70 = v163;
      sub_29D933A98();
      v71 = sub_29D939D98();
      v73 = v72;
      v176(v54, v62);
      *v69 = v71;
      v69[1] = v73;
      (v167)(v69 + v179, 1, 1, v166);
      (v68)(v69, v164, v67);
      return v180;
  }

  return MEMORY[0x29EDCA190];
}

unint64_t sub_29D9047BC()
{
  v1 = *v0;
  v2 = 0xD000000000000034;
  v3 = 0xD000000000000034;
  if (*v0)
  {
    v3 = 0;
  }

  *v0;
  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0xD000000000000035;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D9048A4()
{
  v0 = sub_29D9376E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A2C038;
  sub_29D9376B8();
  return sub_29D93A6A8();
}

uint64_t sub_29D9049B4(uint64_t a1)
{
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF10);
  v3 = sub_29D937878();
  v4 = sub_29D93A278();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_29D93A628();
    v9 = sub_29D6C2364(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v3, v4, "Creating article with blood pressure guidelines: %s", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  return a1;
}

uint64_t sub_29D904B14()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  sub_29D939D08();
  if (qword_2A1A242B0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE80;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v15;
}

uint64_t sub_29D904D04()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  sub_29D939D08();
  if (qword_2A1A242B0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE80;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v15;
}

uint64_t sub_29D904EFC()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  *(inited + 32) = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  *(inited + 48) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D905038()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D905118()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D9051E4()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D9052C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D9059FC();
  *a2 = result;
  return result;
}

void sub_29D9052F0(unint64_t *a1@<X8>)
{
  v2 = 0xEF676E6967676F4CLL;
  v3 = 0x6574616974696E69;
  v4 = 0xD000000000000012;
  v5 = 0x800000029D9576A0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000014;
    v5 = 0x800000029D9576C0;
  }

  if (*v1)
  {
    v3 = 0x6361725074736562;
    v2 = 0xED00007365636974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_29D905390()
{
  result = qword_2A17B7D50;
  if (!qword_2A17B7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D50);
  }

  return result;
}

uint64_t sub_29D9053FC()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D905500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D905A48();
  *a2 = result;
  return result;
}

uint64_t sub_29D905530@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6C65636E6163;
  v5 = 0xE600000000000000;
  v6 = 0x776F4E746F6ELL;
  if (v2 != 5)
  {
    v6 = 0x7461446465646461;
    v5 = 0xE900000000000061;
  }

  v7 = 0xE400000000000000;
  v8 = 1701736292;
  result = 0x4A5042676F6CLL;
  if (v2 != 3)
  {
    v8 = 0x4A5042676F6CLL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE400000000000000;
  v11 = 1954047342;
  if (v2 != 1)
  {
    v11 = 0x64616F4C77656976;
    v10 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_29D905600()
{
  result = qword_2A17B7D58;
  if (!qword_2A17B7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D58);
  }

  return result;
}

uint64_t sub_29D905660()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D90573C()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D905804()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D9058DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D905A94();
  *a2 = result;
  return result;
}

void sub_29D90590C(unint64_t *a1@<X8>)
{
  v2 = 0xEF4A50426D6F6F52;
  v3 = 0x6570795461746164;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x696472616F626E6FLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x800000029D957720;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000029D957700;
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

unint64_t sub_29D9059A8()
{
  result = qword_2A17B7D60;
  if (!qword_2A17B7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D60);
  }

  return result;
}

uint64_t sub_29D9059FC()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D905A48()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D905A94()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D905AE8(uint64_t a1, int64_t a2)
{
  v3 = v2;
  if (sub_29D934DB8())
  {
    v5 = sub_29D906080(a2);
  }

  else
  {
    v5 = sub_29D9063C4();
  }

  v42 = v5;
  v6 = *(v2 + 16);
  v56 = 0;
  v57 = 0;
  v55 = v6;
  v37 = v6;
  sub_29D935E88();
  sub_29D68C234(&v49);
  v53 = v50;
  v54 = v51;
  for (i = v49; v51; i = v49)
  {
    v38 = i;
    sub_29D679D3C((&i + 8), v47);
    sub_29D693E2C(v47, v48);
    v7 = sub_29D935818();
    sub_29D68D79C(v7);

    sub_29D693E2C(v47, v48);
    result = sub_29D935818();
    v9 = 0;
    v10 = *(result + 16);
    v40 = result + 32;
    v41 = result;
    v39 = v10;
    while (1)
    {
      v11 = 0uLL;
      v12 = v10;
      v13 = 0uLL;
      v14 = 0uLL;
      if (v9 != v10)
      {
        if (v9 >= *(v41 + 16))
        {
          goto LABEL_58;
        }

        v12 = v9 + 1;
        *&v44 = v9;
        sub_29D6945AC(v40 + 40 * v9, &v44 + 8);
        v11 = v44;
        v13 = v45;
        v14 = v46;
      }

      v49 = v11;
      v50 = v13;
      v51 = v14;
      if (!v14)
      {
        break;
      }

      v9 = v12;
      v43 = v11;
      result = sub_29D679D3C((&v49 + 8), &v44);
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      if (v43 >= *(v42 + 16))
      {
        goto LABEL_57;
      }

      v15 = *(v42 + 32 + 8 * v43);
      sub_29D934E48();
      result = sub_29D934DB8();
      if (result)
      {
        v16 = *(v3 + 24);
        if (v43 >= *(v16 + 16))
        {
          goto LABEL_9;
        }

        v17 = *(v16 + 8 * v43 + 32);
        sub_29D935E88();
        sub_29D934E48();
        v18 = 0.0;
        v19 = 0.0;
        if (!v43)
        {
          v20 = *(v3 + 32);
          if (*(v20 + 16))
          {
            v21 = *(v20 + 32);
          }

          else
          {
            v21 = 0.0;
          }

          if (sub_29D934DB8())
          {
            v30 = 0.3;
          }

          else
          {
            v30 = 0.7;
          }

          sub_29D934E58();
          v19 = v30 * (CGRectGetWidth(v60) * 0.5 - *(v3 + 40) - v21);
        }

        v31 = *(v17 + 16);
        if (v31)
        {
          v32 = (v17 + 32);
          do
          {
            sub_29D934E48();
            sub_29D934E58();
            sub_29D934DD8();
            v33 = v32[4];
            sub_29D693E2C(v32, v32[3]);
            sub_29D935118();
            Width = CGRectGetWidth(v61);

            if (v18 >= Width)
            {
              v35 = v18;
            }

            else
            {
              v35 = Width;
            }

            if (Width > v35)
            {
              v35 = Width;
            }

            if (v35 > v19)
            {
              v18 = v35;
            }

            else
            {
              v18 = v19;
            }

            v32 += 5;
            --v31;
          }

          while (v31);
        }

        sub_29D693E2C(&v44, *(&v45 + 1));
        sub_29D935118();
        CGRectGetWidth(v62);
        sub_29D934DC8();
        sub_29D934DC8();
        sub_29D934DD8();
      }

      else
      {
        if (v43 != 1)
        {
          sub_29D934E38();
          goto LABEL_9;
        }

        v22 = *(v3 + 24);
        if (*(v22 + 16) < 2uLL)
        {
          goto LABEL_59;
        }

        v23 = *(v22 + 40);
        sub_29D935E88();
        sub_29D934E48();
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = (v23 + 32);
          v26 = 0.0;
          do
          {
            sub_29D934E48();
            sub_29D934E58();
            sub_29D934DD8();
            v27 = v25[4];
            sub_29D693E2C(v25, v25[3]);
            sub_29D935118();
            v28 = CGRectGetWidth(v58);

            if (v26 >= v28)
            {
              v29 = v26;
            }

            else
            {
              v29 = v28;
            }

            if (v28 > v29)
            {
              v29 = v28;
            }

            if (v29 > 0.0)
            {
              v26 = v29;
            }

            else
            {
              v26 = 0.0;
            }

            v25 += 5;
            --v24;
          }

          while (v24);
        }

        sub_29D693E2C(&v44, *(&v45 + 1));
        sub_29D935118();
        CGRectGetWidth(v59);
        sub_29D934E38();
      }

      v3 = v2;
      v10 = v39;
LABEL_9:
      sub_29D693E2C(&v44, *(&v45 + 1));
      sub_29D935128();

      result = sub_29D69417C(&v44);
    }

    sub_29D934E38();
    if (v38 < *(v37 + 16) - 1)
    {
      v36 = *(v3 + 48);
      sub_29D934E38();
    }

    sub_29D69417C(v47);
    sub_29D68C234(&v49);
    v53 = v50;
    v54 = v51;
  }
}

char *sub_29D906080(int64_t a1)
{
  v5 = *(v2 + 24);
  if (!*(v5 + 16))
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D934DC8();
  MaxX = CGRectGetMaxX(v38);
  v8 = *(v5 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = MaxX;
  v10 = *(v5 + 32);
  v35 = v5 + 32;
  v11 = sub_29D935E88();
  v12 = sub_29D906638(v11, 0);

  v4 = v9 - v12;
  v3 = sub_29D68F5F0(0, 1, 1, MEMORY[0x29EDCA190]);
  v1 = *(v3 + 2);
  v8 = *(v3 + 3);
  a1 = v1 + 1;
  if (v1 >= v8 >> 1)
  {
LABEL_38:
    v3 = sub_29D68F5F0((v8 > 1), a1, 1, v3);
  }

  *(v3 + 2) = a1;
  *&v3[8 * v1 + 32] = v4;
  v13 = *(v5 + 16);
  sub_29D935E88();
  v34 = v13;
  if (v13 >= 2)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = *(v35 + 8 * v18);
      v20 = *(v36 + 32);
      v37 = v3;
      if (v17 >= *(v20 + 16))
      {
        sub_29D935E88();
        sub_29D934F18();
        v21 = v22;
      }

      else
      {
        v21 = *(v20 + 8 * v17 + 32);
        sub_29D935E88();
      }

      sub_29D934E48();
      v23 = 0.0;
      v24 = 0.0;
      if (!v17)
      {
        if (*(v20 + 16))
        {
          v25 = *(v20 + 32);
        }

        else
        {
          v25 = 0.0;
        }

        if (sub_29D934DB8())
        {
          v26 = 0.3;
        }

        else
        {
          v26 = 0.7;
        }

        sub_29D934E58();
        v24 = v26 * (CGRectGetWidth(v39) * 0.5 - *(v36 + 40) - v25);
      }

      v27 = *(v19 + 16);
      if (v27)
      {
        v28 = (v19 + 32);
        do
        {
          sub_29D934E48();
          sub_29D934E58();
          sub_29D934DD8();
          v29 = v28[4];
          sub_29D693E2C(v28, v28[3]);
          sub_29D935118();
          Width = CGRectGetWidth(v40);

          if (v23 >= Width)
          {
            v31 = v23;
          }

          else
          {
            v31 = Width;
          }

          if (Width > v31)
          {
            v31 = Width;
          }

          if (v31 > v24)
          {
            v23 = v31;
          }

          else
          {
            v23 = v24;
          }

          v28 += 5;
          --v27;
        }

        while (v27);
      }

      v3 = v37;
      v33 = *(v37 + 2);
      v32 = *(v37 + 3);
      if (v33 >= v32 >> 1)
      {
        v3 = sub_29D68F5F0((v32 > 1), v33 + 1, 1, v37);
      }

      ++v18;
      ++v17;
      v4 = v4 - v21 - v23;
      *(v3 + 2) = v33 + 1;
      *&v3[8 * v33 + 32] = v4;
    }

    while (v18 != v34);
  }

  v15 = *(v3 + 2);
  v14 = *(v3 + 3);
  if (v15 >= v14 >> 1)
  {
    v3 = sub_29D68F5F0((v14 > 1), v15 + 1, 1, v3);
  }

  *(v3 + 2) = v15 + 1;
  *&v3[8 * v15 + 32] = 0;
  return v3;
}

uint64_t sub_29D9063C4()
{
  v1 = *(v0 + 24);
  v23 = *(v1 + 16);
  if (v23)
  {
    v2 = 0;
    v21 = v1 + 32;
    v3 = 0.0;
    v4 = MEMORY[0x29EDCA190];
    v22 = *(v0 + 24);
    while (v2 < *(v1 + 16))
    {
      v7 = *(v21 + 8 * v2);
      sub_29D935E88();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_29D68F5F0(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        v4 = sub_29D68F5F0((v8 > 1), v9 + 1, 1, v4);
      }

      *(v4 + 2) = v9 + 1;
      *&v4[8 * v9 + 32] = v3;
      sub_29D934E48();
      v10 = 0.0;
      v11 = 0.0;
      if (!v2)
      {
        v12 = *(v24 + 32);
        if (*(v12 + 16))
        {
          v13 = *(v12 + 32);
        }

        else
        {
          v13 = 0.0;
        }

        if (sub_29D934DB8())
        {
          v14 = 0.3;
        }

        else
        {
          v14 = 0.7;
        }

        sub_29D934E58();
        v11 = v14 * (CGRectGetWidth(v25) * 0.5 - *(v24 + 40) - v13);
      }

      v15 = *(v7 + 16);
      if (v15)
      {
        v16 = (v7 + 32);
        do
        {
          sub_29D934E48();
          sub_29D934E58();
          sub_29D934DD8();
          v17 = v16[4];
          sub_29D693E2C(v16, v16[3]);
          sub_29D935118();
          Width = CGRectGetWidth(v26);

          if (v10 >= Width)
          {
            v19 = v10;
          }

          else
          {
            v19 = Width;
          }

          if (Width > v19)
          {
            v19 = Width;
          }

          if (v19 > v11)
          {
            v10 = v19;
          }

          else
          {
            v10 = v11;
          }

          v16 += 5;
          --v15;
        }

        while (v15);
      }

      v20 = *(v24 + 32);
      if (v2 >= *(v20 + 16))
      {
        result = sub_29D934F18();
      }

      else
      {
        v6 = *(v20 + 8 * v2 + 32);
      }

      v1 = v22;
      ++v2;
      v3 = v3 + v10 + v6;
      if (v2 == v23)
      {
        return v4;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA190];
  }

  return result;
}

double sub_29D906638(uint64_t a1, uint64_t a2)
{
  sub_29D934E48();
  v5 = 0.0;
  v6 = 0.0;
  if (!a2)
  {
    v7 = *(v2 + 32);
    if (*(v7 + 16))
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0.0;
    }

    if (sub_29D934DB8())
    {
      v9 = 0.3;
    }

    else
    {
      v9 = 0.7;
    }

    sub_29D934E58();
    v6 = v9 * (CGRectGetWidth(v16) * 0.5 - *(v2 + 40) - v8);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    do
    {
      sub_29D934E48();
      sub_29D934E58();
      sub_29D934DD8();
      v12 = v11[4];
      sub_29D693E2C(v11, v11[3]);
      sub_29D935118();
      Width = CGRectGetWidth(v17);

      if (v5 >= Width)
      {
        v14 = v5;
      }

      else
      {
        v14 = Width;
      }

      if (Width > v14)
      {
        v14 = Width;
      }

      if (v14 > v6)
      {
        v5 = v14;
      }

      else
      {
        v5 = v6;
      }

      v11 += 5;
      --v10;
    }

    while (v10);
  }

  return v5;
}

uint64_t sub_29D906790(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v21 = *(a1 + 16);
    v22 = a1 + 32;
    v4 = 0.0;
    v20 = v2 - 1;
    v5 = 0.0;
    do
    {
      v7 = *(v22 + 8 * v3);
      v23 = v3;
      v24 = v3 + 1;
      v8 = *(v7 + 16);
      result = sub_29D935E88();
      v10 = 0;
      v11 = 0.0;
      while (1)
      {
        v12 = 0uLL;
        v13 = v8;
        v14 = 0uLL;
        v15 = 0uLL;
        if (v10 != v8)
        {
          if (v10 >= *(v7 + 16))
          {
            __break(1u);
            return result;
          }

          v13 = v10 + 1;
          *&v26 = v10;
          sub_29D6945AC(v7 + 32 + 40 * v10, &v26 + 8);
          v12 = v26;
          v14 = v27;
          v15 = v28;
        }

        v29[0] = v12;
        v29[1] = v14;
        v29[2] = v15;
        if (!v15)
        {
          break;
        }

        v25 = v12;
        sub_29D679D3C((v29 + 8), &v26);
        sub_29D934E48();
        sub_29D934E58();
        sub_29D934DD8();
        sub_29D693E2C(&v26, *(&v27 + 1));
        sub_29D935118();
        Height = CGRectGetHeight(v30);

        v17 = *(v1 + 56);
        if (Height > v17)
        {
          v17 = Height;
        }

        v11 = v11 + v17;
        if (v25 < *(v7 + 16) - 1)
        {
          v11 = v11 + *(v1 + 48);
        }

        result = sub_29D69417C(&v26);
        v10 = v13;
      }

      if (v11 > v5)
      {
        v5 = v11;
      }

      v18 = sub_29D906638(v7, v23);

      v4 = v4 + v18;
      if (v23 < v20)
      {
        v19 = *(v1 + 32);
        if (v23 >= *(v19 + 16))
        {
          sub_29D934F18();
        }

        else
        {
          v6 = *(v19 + 8 * v23 + 32);
        }

        v4 = v4 + v6;
      }

      v3 = v24;
    }

    while (v24 != v21);
  }

  return sub_29D934DC8();
}

uint64_t sub_29D9069C8(uint64_t a1)
{
  v20[1] = a1;
  sub_29D826404(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  result = swift_initStackObject();
  v20[0] = result;
  *(result + 16) = xmmword_29D93DDB0;
  v21 = v1;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x29EDCA190];
    while (v5 < *(v3 + 16))
    {
      v14 = *(v3 + 32 + 8 * v5);
      if (*(v14 + 16))
      {
        sub_29D6945AC(v14 + 32, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v6 = sub_29D68F5B0(0, v6[2] + 1, 1, v6);
          v25 = v6;
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          v6 = sub_29D68F5B0((v16 > 1), v17 + 1, 1, v6);
          v25 = v6;
        }

        v7 = v23;
        v8 = v24;
        v9 = sub_29D693DDC(v22, v23);
        v10 = *(*(v7 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v9, v9);
        v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v12);
        sub_29D693D44(v17, v12, &v25, v7, v8);
        result = sub_29D69417C(v22);
      }

      if (v4 == ++v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x29EDCA190];
LABEL_12:
    v18 = v20[0];
    v19 = v20[0];
    *(v20[0] + 32) = v6;
    sub_29D906790(v18);
    swift_setDeallocating();
    return sub_29D906E28(v19 + 32);
  }

  return result;
}

uint64_t sub_29D906C3C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_29D906D2C(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D906E84(&qword_2A17B4E50);
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D906E28(uint64_t a1)
{
  sub_29D75F218(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D906E84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BloodPressurePDFClassificationsTable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D906EC4(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 16) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  v39 = *(a1 + 16);
  if (!v39)
  {
    sub_29D935E88();
    v7 = MEMORY[0x29EDCA190];
LABEL_26:
    result = v37;
    *(v37 + 24) = v7;
    return result;
  }

  v38 = a1 + 32;
  sub_29D935E88();
  v6 = 0;
  v7 = MEMORY[0x29EDCA190];
LABEL_4:
  v8 = (v38 + 40 * v6);
  v40 = v6 + 1;
  v9 = v8[4];
  sub_29D693E2C(v8, v8[3]);
  result = sub_29D935818();
  v11 = result;
  v12 = 0;
  v13 = *(result + 16);
  v41 = result + 32;
  while (1)
  {
    v14 = 0uLL;
    v15 = v13;
    v16 = 0uLL;
    v17 = 0uLL;
    if (v12 != v13)
    {
      if (v12 >= *(v11 + 16))
      {
        goto LABEL_29;
      }

      v15 = v12 + 1;
      *&v46[0] = v12;
      sub_29D6945AC(v41 + 40 * v12, v46 + 8);
      v14 = v46[0];
      v16 = v46[1];
      v17 = v46[2];
    }

    v47[0] = v14;
    v47[1] = v16;
    v47[2] = v17;
    if (!v17)
    {

      v6 = v40;
      if (v40 == v39)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

    v42 = v14;
    sub_29D679D3C((v47 + 8), v46);
    v18 = v7[2];
    v19 = v42;
    if (v42 >= v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_29D68F5CC(0, v18 + 1, 1, v7);
      }

      v21 = v7[2];
      v20 = v7[3];
      if (v21 >= v20 >> 1)
      {
        v7 = sub_29D68F5CC((v20 > 1), v21 + 1, 1, v7);
      }

      v7[2] = v21 + 1;
      v7[v21 + 4] = MEMORY[0x29EDCA190];
    }

    sub_29D6945AC(v46, v43);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      break;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    if (v19 >= v7[2])
    {
      goto LABEL_28;
    }

    v22 = &v7[v19];
    v25 = v22[4];
    v23 = v22 + 4;
    v24 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_29D68F5B0(0, v24[2] + 1, 1, v24);
      *v23 = v24;
    }

    v28 = v24[2];
    v27 = v24[3];
    if (v28 >= v27 >> 1)
    {
      *v23 = sub_29D68F5B0((v27 > 1), v28 + 1, 1, v24);
    }

    sub_29D69417C(v46);
    v29 = v44;
    v30 = v45;
    v31 = sub_29D693DDC(v43, v44);
    v32 = *(*(v29 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v31, v31);
    v34 = &v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v34);
    sub_29D693D44(v28, v34, v23, v29, v30);
    result = sub_29D69417C(v43);
    v12 = v15;
  }

  result = sub_29D702C34(v7);
  v7 = result;
  if ((v19 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_29D907250(char a1, void (*a2)(uint64_t *__return_ptr, char *, id *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  BYTE1(v15) = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v14 = *(a4 + 32);
    v9 = v14;
    a2(&v15, &v15 + 1, &v14);
    if (v4)
    {
    }

    else
    {
      v10 = (a4 + 40);
      for (i = v6 - 1; ; --i)
      {

        v5 = v15;
        BYTE1(v15) = v15;
        if (!i)
        {
          break;
        }

        v12 = *v10++;
        v14 = v12;
        v9 = v12;
        a2(&v15, &v15 + 1, &v14);
      }
    }
  }

  return v5 & 1;
}

void *sub_29D907334(uint64_t a1, uint64_t a2)
{
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93F680;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  *(v5 + 32) = sub_29D9334A8();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_29D9334A8();
  *(v5 + 56) = v7;
  v2[3] = a2;
  v2[4] = v5;
  v2[2] = a1;
  return v2;
}

uint64_t sub_29D907470@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = *v1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D90A750(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = v32 - v7;
  sub_29D90A750(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v3);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = v32 - v12;
  v14 = sub_29D9346E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = v32 - v22;
  (*(v15 + 104))(v32 - v22, *MEMORY[0x29EDC1760], v14);
  v24 = sub_29D92F7E0();
  v32[1] = v25;
  v32[2] = v24;
  v32[0] = sub_29D92F7AC();
  (*(v15 + 16))(v20, v23, v14);
  sub_29D92F86C();
  v26 = sub_29D934798();
  (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
  v27 = v1[4];
  sub_29D935E88();
  sub_29D934818();
  v28 = sub_29D934358();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  v29 = v33;
  sub_29D934988();
  (*(v15 + 8))(v23, v14);
  v30 = sub_29D9349A8();
  return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
}

uint64_t sub_29D907808@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = *v1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D90A750(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = v33 - v7;
  sub_29D90A750(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v3);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = v33 - v12;
  v14 = sub_29D9346E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v33[0] = sub_29D9334A8();
  v21 = v20;
  v22 = sub_29D92F7E0();
  v33[3] = v23;
  v33[4] = v22;
  v24 = sub_29D92F7AC();
  v33[1] = v25;
  v33[2] = v24;
  (*(v15 + 104))(v19, *MEMORY[0x29EDC1748], v14);
  sub_29D92F86C();
  v26 = sub_29D934798();
  (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
  sub_29D9334A8();
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D93F680;
  *(v27 + 32) = sub_29D9334A8();
  *(v27 + 40) = v28;
  *(v27 + 48) = v33[0];
  *(v27 + 56) = v21;
  v29 = sub_29D934358();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  v30 = v34;
  sub_29D934988();
  v31 = sub_29D9349A8();
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

uint64_t sub_29D907C70@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = *v1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D90A750(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v36 = v35 - v7;
  sub_29D90A750(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = v35 - v11;
  v13 = sub_29D9346E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v35 - v21;
  (*(v14 + 104))(v35 - v21, *MEMORY[0x29EDC1768], v13);
  v23 = sub_29D92F7E0();
  v35[4] = v24;
  v35[5] = v23;
  v25 = sub_29D92F7AC();
  v35[2] = v26;
  v35[3] = v25;
  (*(v14 + 16))(v19, v22, v13);
  sub_29D92F86C();
  v27 = sub_29D934798();
  (*(*(v27 - 8) + 56))(v12, 0, 1, v27);
  v35[1] = sub_29D9347D8();
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D93F680;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  *(v28 + 32) = sub_29D9334A8();
  *(v28 + 40) = v29;
  *(v28 + 48) = sub_29D9334A8();
  *(v28 + 56) = v30;
  sub_29D934818();
  v31 = sub_29D934358();
  (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
  v32 = v37;
  sub_29D934988();
  (*(v14 + 8))(v22, v13);
  v33 = sub_29D9349A8();
  return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
}

uint64_t sub_29D9080FC(uint64_t a1, uint64_t a2)
{
  sub_29D90A750(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v20 - v6;
  v8 = sub_29D9346E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  sub_29D934958();
  sub_29D9082EC(a2, v7);
  v11 = sub_29D9369E8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_29D9369C8();
  v15 = sub_29D933108();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_29D9330F8();
  v20[1] = v14;
  sub_29D90A7B4(&qword_2A17B3920, 255, MEMORY[0x29EDC2970]);
  v18 = sub_29D9330E8();

  return v18;
}

uint64_t sub_29D9082EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_29D9346B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D90A750(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v58 - v19;
  v21 = sub_29D90883C(a1);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 highestPriorityUnsatisfiedRequirement];
    if (v23)
    {
      v24 = v23;
      v63 = a2;
      v25 = sub_29D9336F8();
      v26 = *(v25 - 8);
      v61 = *(v26 + 56);
      v62 = v25;
      v60 = v26 + 56;
      v61(v20, 1, 1);
      v27 = *MEMORY[0x29EDBA688];
      v28 = sub_29D939D68();
      v30 = v29;
      if (v28 == sub_29D939D68() && v30 == v31)
      {
      }

      else
      {
        v59 = v7;
        v33 = sub_29D93AD78();

        if ((v33 & 1) == 0)
        {
          v34 = *MEMORY[0x29EDBA600];
          v35 = sub_29D939D68();
          v37 = v36;
          if (v35 == sub_29D939D68() && v37 == v38)
          {

LABEL_20:
            sub_29D92FB90(v17);
            goto LABEL_17;
          }

          v43 = sub_29D93AD78();

          if (v43)
          {
            goto LABEL_20;
          }

          v44 = *MEMORY[0x29EDBA620];
          v45 = sub_29D939D68();
          v47 = v46;
          if (v45 == sub_29D939D68() && v47 == v48)
          {
          }

          else
          {
            v49 = sub_29D93AD78();

            if ((v49 & 1) == 0)
            {
              v52 = *MEMORY[0x29EDBA6A8];
              v53 = sub_29D939D68();
              v55 = v54;
              if (v53 == sub_29D939D68() && v55 == v56)
              {
              }

              else
              {
                v57 = sub_29D93AD78();

                if ((v57 & 1) == 0)
                {
                  sub_29D92FDFC(v5, &off_2A244E6C8);
                  goto LABEL_17;
                }
              }

              v50 = MEMORY[0x29EDC1728];
LABEL_26:
              v51 = v59;
              (*(v59 + 104))(v11, *v50, v6);
              sub_29D934698();

              (*(v51 + 8))(v11, v6);
              sub_29D6D96C0(v20);
              goto LABEL_18;
            }
          }

          v50 = MEMORY[0x29EDC1720];
          goto LABEL_26;
        }
      }

      sub_29D92F894(v17);
LABEL_17:

      sub_29D6D96C0(v20);
      (v61)(v17, 0, 1, v62);
LABEL_18:
      v42 = v63;
      sub_29D8C8D38(v17, v20);
      return sub_29D8C8D38(v20, v42);
    }
  }

  v39 = sub_29D9336F8();
  v40 = *(*(v39 - 8) + 56);

  return v40(a2, 1, 1, v39);
}

uint64_t sub_29D90883C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D937118();
  v53 = *(v4 - 8);
  v5 = *(v53 + 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D937178();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v54 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D937158();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D9371A8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, a1, v19);
  v25 = (*(v20 + 88))(v24, v19);
  if (v25 != *MEMORY[0x29EDC2D70])
  {
    if (v25 == *MEMORY[0x29EDC2D68])
    {
      (*(v20 + 96))(v24, v19);
      v40 = v53;
      (*(v53 + 4))(v8, v24, v4);
      v62 = v2;
      type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider();
      sub_29D90A7B4(&qword_2A17B7D70, v41, type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider);
      v42 = sub_29D934CB8();
      if (v42)
      {
        v43 = v42;
        v44 = v54;
        sub_29D937108();
        v45 = sub_29D937188();

        (*(v55 + 8))(v44, v56);
        v40[1](v8, v4);
        return v45;
      }

      v40[1](v8, v4);
    }

    else
    {
      (*(v20 + 8))(v24, v19);
    }

    return 0;
  }

  (*(v20 + 96))(v24, v19);
  v26 = *(v14 + 32);
  v53 = v18;
  v26(v18, v24, v13);
  v59 = *MEMORY[0x29EDBA598];
  v27 = v59;
  v62 = v2;
  v28 = type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider();
  v30 = sub_29D90A7B4(&qword_2A17B7D70, v29, type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider);
  v31 = v27;
  v60 = sub_29D934CB8();
  v57 = v2;
  v52[0] = v30;
  v52[1] = v28;
  result = sub_29D934C88();
  v33 = 0;
  v61 = result;
  v34 = MEMORY[0x29EDCA190];
LABEL_3:
  v35 = 3;
  if (v33 > 3)
  {
    v35 = v33;
  }

  while (v33 != 3)
  {
    if (v35 == v33)
    {
      __break(1u);
      return result;
    }

    v36 = v58[v33++ + 4];
    if (v36)
    {
      v37 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29D6906A4(0, v34[2] + 1, 1, v34);
        v34 = result;
      }

      v39 = v34[2];
      v38 = v34[3];
      if (v39 >= v38 >> 1)
      {
        result = sub_29D6906A4((v38 > 1), v39 + 1, 1, v34);
        v34 = result;
      }

      v34[2] = v39 + 1;
      v34[v39 + 4] = v37;
      goto LABEL_3;
    }
  }

  sub_29D90A750(0, &qword_2A17B7D78, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x29EDC9C68]);
  v46 = swift_arrayDestroy();
  MEMORY[0x2A1C7C4A8](v46, v47);
  v48 = v53;
  v52[-2] = v53;
  v49 = sub_29D907250(0, sub_29D90A734, &v52[-4], v34);

  v45 = 0;
  if ((v49 & 1) == 0)
  {
    v50 = v54;
    sub_29D937108();
    v62 = v2;
    v51 = sub_29D934C88();
    v45 = sub_29D937188();

    (*(v55 + 8))(v50, v56);
  }

  (*(v14 + 8))(v48, v13);
  return v45;
}

void sub_29D908E88(_BYTE *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v6 = sub_29D937178();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v12 = 1;
  }

  else
  {
    v13 = *a2;
    sub_29D937108();
    v14 = sub_29D937188();
    (*(v7 + 8))(v11, v6);
    v12 = [v14 areAllRequirementsSatisfied];
  }

  *a3 = v12;
}

uint64_t sub_29D908FB0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v166 = a1;
  v169 = a2;
  v3 = *v2;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D90A750(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v170 = &v147[-v8];
  sub_29D90A750(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v4);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v161 = &v147[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v147[-v15];
  v17 = sub_29D9349A8();
  v167 = *(v17 - 8);
  v168 = v17;
  v18 = *(v167 + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v171 = &v147[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_29D9346E8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v21, v24);
  v159 = &v147[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v30 = &v147[-v29];
  MEMORY[0x2A1C7C4A8](v28, v31);
  v164 = &v147[-v32];
  sub_29D92F7E0();
  sub_29D92F7AC();
  v33 = *MEMORY[0x29EDC1750];
  v160 = v22;
  v34 = *(v22 + 104);
  v148 = v33;
  v165 = v21;
  v150 = v22 + 104;
  v149 = v34;
  v34(v30);
  v162 = v3;
  sub_29D92F86C();
  v35 = sub_29D934798();
  v36 = *(v35 - 8);
  v157 = *(v36 + 56);
  v158 = v35;
  v156 = v36 + 56;
  v157(v16, 0, 1);
  LOBYTE(v22) = sub_29D9347F8();
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v151 = v37;
  v38 = swift_allocObject();
  v163 = xmmword_29D93DDB0;
  *(v38 + 16) = xmmword_29D93DDB0;
  if (v22)
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v39 = qword_2A1A2C038;
  }

  else
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v39 = qword_2A1A2C038;
  }

  v152 = v39;
  *(v38 + 32) = sub_29D9334A8();
  *(v38 + 40) = v40;
  sub_29D934808();
  v41 = sub_29D934358();
  v42 = *(v41 - 8);
  v154 = *(v42 + 56);
  v155 = v41;
  v153 = v42 + 56;
  v154(v170, 1, 1);
  v43 = v171;
  sub_29D934988();
  v44 = [v166 highestPriorityUnsatisfiedRequirement];
  if (v44)
  {
    v45 = v44;
    v46 = *MEMORY[0x29EDBA680];
    v47 = sub_29D939D68();
    v49 = v48;
    if (v47 == sub_29D939D68() && v49 == v50)
    {
      goto LABEL_11;
    }

    v58 = sub_29D93AD78();

    if (v58)
    {
      goto LABEL_16;
    }

    v60 = *MEMORY[0x29EDBA5A8];
    v61 = sub_29D939D68();
    v63 = v62;
    if (v61 == sub_29D939D68() && v63 == v64)
    {
      goto LABEL_11;
    }

    v65 = sub_29D93AD78();

    if (v65)
    {
      goto LABEL_16;
    }

    v66 = *MEMORY[0x29EDBA618];
    v67 = sub_29D939D68();
    v69 = v68;
    if (v67 == sub_29D939D68() && v69 == v70)
    {
LABEL_11:

LABEL_16:
      v51 = v167;
      v56 = v168;
      (*(v167 + 8))(v43, v168);

      v57 = 1;
      v53 = v169;
      return (*(v51 + 56))(v53, v57, 1, v56);
    }

    v71 = sub_29D93AD78();

    if (v71)
    {
      goto LABEL_16;
    }

    v72 = *MEMORY[0x29EDBA650];
    v73 = sub_29D939D68();
    v75 = v74;
    if (v73 == sub_29D939D68() && v75 == v76)
    {

LABEL_28:
      v149(v164, *MEMORY[0x29EDC1758], v165);
      v78 = swift_allocObject();
      *(v78 + 16) = v163;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      *(v78 + 32) = sub_29D9334A8();
      *(v78 + 40) = v79;
      *&v163 = sub_29D9334A8();
      v166 = v78;
      goto LABEL_37;
    }

    v77 = sub_29D93AD78();

    if (v77)
    {
      goto LABEL_28;
    }

    v80 = *MEMORY[0x29EDBA5D8];
    v81 = sub_29D939D68();
    v83 = v82;
    if (v81 == sub_29D939D68() && v83 == v84)
    {
      goto LABEL_33;
    }

    v85 = sub_29D93AD78();

    if (v85)
    {
      goto LABEL_35;
    }

    v93 = *MEMORY[0x29EDBA5D0];
    v94 = sub_29D939D68();
    v96 = v95;
    if (v94 == sub_29D939D68() && v96 == v97)
    {
LABEL_33:

      goto LABEL_35;
    }

    v98 = sub_29D93AD78();

    if (v98)
    {
LABEL_35:
      v149(v164, v148, v165);
      v86 = swift_allocObject();
      *(v86 + 16) = v163;
      if (qword_2A1A257A0 == -1)
      {
LABEL_36:
        *(v86 + 32) = sub_29D9334A8();
        *(v86 + 40) = v87;
        *&v163 = sub_29D934808();
        v166 = v86;
LABEL_37:
        v152 = sub_29D92F7E0();
        v151 = v88;
        v150 = sub_29D92F7AC();
        v89 = v160;
        v91 = v164;
        v90 = v165;
        (*(v160 + 16))(v159, v164, v165);
        v92 = v161;
        sub_29D92F86C();
        (v157)(v92, 0, 1, v158);
        (v154)(v170, 1, 1, v155);
        v53 = v169;
        sub_29D934988();

        v51 = v167;
        v56 = v168;
        (*(v167 + 8))(v171, v168);
        (*(v89 + 8))(v91, v90);
        goto LABEL_14;
      }

LABEL_66:
      swift_once();
      goto LABEL_36;
    }

    v99 = *MEMORY[0x29EDBA640];
    v100 = sub_29D939D68();
    v102 = v101;
    if (v100 == sub_29D939D68() && v102 == v103)
    {

      goto LABEL_45;
    }

    v104 = sub_29D93AD78();

    if (v104)
    {
LABEL_45:
      v149(v164, v148, v165);
      v86 = swift_allocObject();
      *(v86 + 16) = v163;
      if (qword_2A1A257A0 == -1)
      {
        goto LABEL_36;
      }

      goto LABEL_66;
    }

    v105 = *MEMORY[0x29EDBA5C0];
    v106 = sub_29D939D68();
    v108 = v107;
    if (v106 == sub_29D939D68() && v108 == v109)
    {

LABEL_52:
      v51 = v167;
      v52 = *(v167 + 32);
      v53 = v169;
      v54 = v169;
      v55 = v171;
      goto LABEL_13;
    }

    v110 = sub_29D93AD78();

    if (v110)
    {
LABEL_51:

      goto LABEL_52;
    }

    v111 = *MEMORY[0x29EDBA688];
    v112 = sub_29D939D68();
    v114 = v113;
    if (v112 == sub_29D939D68() && v114 == v115)
    {

      goto LABEL_57;
    }

    v116 = sub_29D93AD78();

    if (v116)
    {
LABEL_57:
      v149(v164, v148, v165);
      v117 = swift_allocObject();
      *(v117 + 16) = v163;
      if (qword_2A1A257A0 == -1)
      {
LABEL_58:
        *(v117 + 32) = sub_29D9334A8();
        *(v117 + 40) = v118;
        v166 = v117;
        v119 = sub_29D934808();
LABEL_59:
        *&v163 = v119;
        goto LABEL_37;
      }

LABEL_80:
      swift_once();
      goto LABEL_58;
    }

    v120 = *MEMORY[0x29EDBA600];
    v121 = sub_29D939D68();
    v123 = v122;
    if (v121 == sub_29D939D68() && v123 == v124)
    {

      goto LABEL_64;
    }

    v125 = sub_29D93AD78();

    if (v125)
    {
LABEL_64:
      v149(v164, v148, v165);
      v117 = swift_allocObject();
      *(v117 + 16) = v163;
      if (qword_2A1A257A0 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_80;
    }

    v126 = *MEMORY[0x29EDBA620];
    v127 = sub_29D939D68();
    v129 = v128;
    if (v127 == sub_29D939D68() && v129 == v130)
    {
    }

    else
    {
      v131 = sub_29D93AD78();

      if ((v131 & 1) == 0)
      {
        v140 = *MEMORY[0x29EDBA6A8];
        v141 = sub_29D939D68();
        v143 = v142;
        if (v141 == sub_29D939D68() && v143 == v144)
        {
        }

        else
        {
          v145 = sub_29D93AD78();

          if ((v145 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v132 = sub_29D934858();
        v134 = v146;
        if (qword_2A1A257A0 == -1)
        {
          goto LABEL_72;
        }

        goto LABEL_82;
      }
    }

    v132 = sub_29D934848();
    v134 = v133;
    if (qword_2A1A257A0 == -1)
    {
LABEL_72:
      sub_29D9334A8();
      sub_29D90A750(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v135 = swift_allocObject();
      *(v135 + 16) = v163;
      *(v135 + 56) = MEMORY[0x29EDC99B0];
      *(v135 + 64) = sub_29D69AD24();
      *(v135 + 32) = v132;
      *(v135 + 40) = v134;
      v136 = sub_29D939D38();
      v138 = v137;

      v149(v164, *MEMORY[0x29EDC1758], v165);
      v139 = swift_allocObject();
      *(v139 + 16) = v163;
      *(v139 + 32) = v136;
      *(v139 + 40) = v138;
      v166 = v139;
      v119 = sub_29D934828();
      goto LABEL_59;
    }

LABEL_82:
    swift_once();
    goto LABEL_72;
  }

  v51 = v167;
  v52 = *(v167 + 32);
  v53 = v169;
  v54 = v169;
  v55 = v43;
LABEL_13:
  v56 = v168;
  v52(v54, v55, v168);
LABEL_14:
  v57 = 0;
  return (*(v51 + 56))(v53, v57, 1, v56);
}