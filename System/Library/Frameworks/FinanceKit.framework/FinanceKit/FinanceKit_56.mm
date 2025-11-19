BOOL _s10FinanceKit27RawOrderShippingFulfillmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration();
  v144 = *(v4 - 8);
  v145 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v137 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v140 = &v133 - v7;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B520);
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v133 - v8;
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v149 = v9;
  v150 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v141 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v136 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v139 = &v133 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v147 = &v133 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v18 = MEMORY[0x1EEE9AC00](v148);
  v138 = (&v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v142 = (&v133 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v133 - v22;
  v24 = sub_1B77FF4F8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v133 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v133 - v32;
  if ((sub_1B731D48C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v34 = *(a1 + 16);
  v35 = *(a2 + 16);
  if (v34)
  {
    if (!v35 || (*(a1 + 8) != *(a2 + 8) || v34 != v35) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = *(a1 + 32);
  v37 = *(a2 + 32);
  if (v36)
  {
    if (!v37 || (*(a1 + 24) != *(a2 + 24) || v36 != v37) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  if ((sub_1B72C11B8(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v38 = *(a1 + 56);
  v39 = *(a2 + 56);
  if (v38)
  {
    if (!v39 || (*(a1 + 48) != *(a2 + 48) || v38 != v39) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = *(a1 + 72);
  v41 = *(a2 + 72);
  if (v40)
  {
    if (!v41 || (*(a1 + 64) != *(a2 + 64) || v40 != v41) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = *(a1 + 88);
  v43 = *(a2 + 88);
  if (v42)
  {
    if (!v43 || (*(a1 + 80) != *(a2 + 80) || v42 != v43) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v133 = type metadata accessor for RawOrderShippingFulfillment();
  v135 = v133[11];
  v44 = *(v31 + 48);
  sub_1B7205588(a1 + v135, v33, &unk_1EB994C70);
  v45 = a2 + v135;
  v135 = v44;
  sub_1B7205588(v45, &v33[v44], &unk_1EB994C70);
  v134 = *(v25 + 48);
  if (v134(v33, 1, v24) == 1)
  {
    if (v134(&v33[v135], 1, v24) == 1)
    {
      sub_1B7205418(v33, &unk_1EB994C70);
      goto LABEL_46;
    }

LABEL_43:
    v46 = &qword_1EB991C30;
LABEL_44:
    v47 = v33;
LABEL_60:
    sub_1B7205418(v47, v46);
    return 0;
  }

  sub_1B7205588(v33, v30, &unk_1EB994C70);
  if (v134(&v33[v135], 1, v24) == 1)
  {
    (*(v25 + 8))(v30, v24);
    goto LABEL_43;
  }

  (*(v25 + 32))(v27, &v33[v135], v24);
  sub_1B76E20D8(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  LODWORD(v135) = sub_1B7800828();
  v48 = *(v25 + 8);
  v48(v27, v24);
  v48(v30, v24);
  sub_1B7205418(v33, &unk_1EB994C70);
  if ((v135 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v49 = v133;
  v50 = a1 + v133[12];
  v52 = *(v50 + 48);
  v51 = *(v50 + 64);
  v53 = v51;
  v187[5] = *(v50 + 80);
  v187[4] = v51;
  v188 = *(v50 + 144);
  v54 = *(v50 + 112);
  v187[8] = *(v50 + 128);
  v55 = *(v50 + 96);
  v56 = *(v50 + 80);
  v187[7] = *(v50 + 112);
  v187[6] = v55;
  v57 = *(v50 + 32);
  v58 = *(v50 + 16);
  v187[3] = *(v50 + 48);
  v187[2] = v57;
  v59 = *(v50 + 16);
  v187[0] = *v50;
  v187[1] = v59;
  v60 = a2 + v133[12];
  v61 = *(v60 + 112);
  v62 = *(v60 + 80);
  v194 = *(v60 + 96);
  v195 = v61;
  v63 = *(v60 + 112);
  v196 = *(v60 + 128);
  v64 = *(v60 + 48);
  v65 = *(v60 + 16);
  v190 = *(v60 + 32);
  v191 = v64;
  v66 = *(v60 + 48);
  v67 = *(v60 + 80);
  v192 = *(v60 + 64);
  v193 = v67;
  v68 = *(v60 + 16);
  v189[0] = *v60;
  v189[1] = v68;
  v69 = *(v50 + 112);
  v186[6] = *(v50 + 96);
  v186[7] = v69;
  v186[8] = *(v50 + 128);
  v70 = *(v50 + 48);
  v186[2] = *(v50 + 32);
  v186[3] = v70;
  v71 = *(v50 + 80);
  v186[4] = *(v50 + 64);
  v186[5] = v71;
  v72 = *(v50 + 16);
  v186[0] = *v50;
  v186[1] = v72;
  v73 = *(v60 + 128);
  *(&v186[16] + 8) = v63;
  *(&v186[17] + 8) = v73;
  *(&v186[15] + 8) = v194;
  *(&v186[11] + 8) = v190;
  *(&v186[12] + 8) = v66;
  *(&v186[13] + 8) = v192;
  *(&v186[14] + 8) = v62;
  *(&v186[9] + 8) = v189[0];
  *(&v186[10] + 8) = v65;
  v198[6] = v55;
  v198[7] = v54;
  v198[8] = *(v50 + 128);
  v198[2] = v57;
  v198[3] = v52;
  v198[4] = v53;
  v198[5] = v56;
  v197 = *(v60 + 144);
  v74 = *(v60 + 144);
  *&v186[9] = *(v50 + 144);
  *(&v186[18] + 1) = v74;
  v199 = *(v50 + 144);
  v198[0] = v187[0];
  v198[1] = v58;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v198) == 1)
  {
    v175[6] = *(&v186[15] + 8);
    v175[7] = *(&v186[16] + 8);
    v175[8] = *(&v186[17] + 8);
    *&v175[9] = *(&v186[18] + 1);
    v175[2] = *(&v186[11] + 8);
    v175[3] = *(&v186[12] + 8);
    v175[4] = *(&v186[13] + 8);
    v175[5] = *(&v186[14] + 8);
    v175[0] = *(&v186[9] + 8);
    v175[1] = *(&v186[10] + 8);
    if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v175) == 1)
    {
      v182 = v186[6];
      v183 = v186[7];
      v184 = v186[8];
      v185 = *&v186[9];
      v178 = v186[2];
      v179 = v186[3];
      v180 = v186[4];
      v181 = v186[5];
      v176 = v186[0];
      v177 = v186[1];
      sub_1B7205588(v187, &v165, &qword_1EB996070);
      sub_1B7205588(v189, &v165, &qword_1EB996070);
      sub_1B7205418(&v176, &qword_1EB996070);
      goto LABEL_54;
    }

    sub_1B7205588(v187, &v176, &qword_1EB996070);
    sub_1B7205588(v189, &v176, &qword_1EB996070);
LABEL_52:
    memcpy(v175, v186, sizeof(v175));
    v46 = &unk_1EB99BC50;
    v47 = v175;
    goto LABEL_60;
  }

  v182 = v186[6];
  v183 = v186[7];
  v184 = v186[8];
  v178 = v186[2];
  v179 = v186[3];
  v180 = v186[4];
  v181 = v186[5];
  v176 = v186[0];
  v177 = v186[1];
  v171 = v186[6];
  v172 = v186[7];
  v173 = v186[8];
  v167 = v186[2];
  v168 = v186[3];
  v169 = v186[4];
  v170 = v186[5];
  v185 = *&v186[9];
  v174 = *&v186[9];
  v165 = v186[0];
  v166 = v186[1];
  v175[6] = *(&v186[15] + 8);
  v175[7] = *(&v186[16] + 8);
  v175[8] = *(&v186[17] + 8);
  *&v175[9] = *(&v186[18] + 1);
  v175[2] = *(&v186[11] + 8);
  v175[3] = *(&v186[12] + 8);
  v175[4] = *(&v186[13] + 8);
  v175[5] = *(&v186[14] + 8);
  v175[0] = *(&v186[9] + 8);
  v175[1] = *(&v186[10] + 8);
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v175) == 1)
  {
    v161 = v186[6];
    v162 = v186[7];
    v163 = v186[8];
    v164 = *&v186[9];
    v157 = v186[2];
    v158 = v186[3];
    v159 = v186[4];
    v160 = v186[5];
    v155 = v186[0];
    v156 = v186[1];
    sub_1B7205588(v187, v153, &qword_1EB996070);
    sub_1B7205588(v189, v153, &qword_1EB996070);
    sub_1B7205588(&v176, v153, &qword_1EB996070);
    sub_1B760E304(&v155);
    goto LABEL_52;
  }

  v161 = *(&v186[15] + 8);
  v162 = *(&v186[16] + 8);
  v163 = *(&v186[17] + 8);
  v164 = *(&v186[18] + 1);
  v157 = *(&v186[11] + 8);
  v158 = *(&v186[12] + 8);
  v159 = *(&v186[13] + 8);
  v160 = *(&v186[14] + 8);
  v155 = *(&v186[9] + 8);
  v156 = *(&v186[10] + 8);
  sub_1B7205588(v187, v153, &qword_1EB996070);
  sub_1B7205588(v189, v153, &qword_1EB996070);
  sub_1B7205588(&v176, v153, &qword_1EB996070);
  v75 = _s10FinanceKit25RawOrderShippingRecipientV2eeoiySbAC_ACtFZ_0(&v165, &v155);
  v151[6] = v161;
  v151[7] = v162;
  v151[8] = v163;
  v152 = v164;
  v151[2] = v157;
  v151[3] = v158;
  v151[4] = v159;
  v151[5] = v160;
  v151[0] = v155;
  v151[1] = v156;
  sub_1B760E304(v151);
  v153[6] = v171;
  v153[7] = v172;
  v153[8] = v173;
  v154 = v174;
  v153[2] = v167;
  v153[3] = v168;
  v153[4] = v169;
  v153[5] = v170;
  v153[0] = v165;
  v153[1] = v166;
  sub_1B760E304(v153);
  v161 = v186[6];
  v162 = v186[7];
  v163 = v186[8];
  v164 = *&v186[9];
  v157 = v186[2];
  v158 = v186[3];
  v159 = v186[4];
  v160 = v186[5];
  v155 = v186[0];
  v156 = v186[1];
  sub_1B7205418(&v155, &qword_1EB996070);
  if (!v75)
  {
    return 0;
  }

LABEL_54:
  v76 = v49[13];
  v77 = *(v148 + 48);
  sub_1B7205588(a1 + v76, v23, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v76, &v23[v77], &qword_1EB98EBD0);
  v78 = v149;
  v79 = v150 + 48;
  v80 = *(v150 + 48);
  if (v80(v23, 1, v149) == 1)
  {
    if (v80(&v23[v77], 1, v78) == 1)
    {
      v134 = v80;
      v135 = v79;
      sub_1B7205418(v23, &qword_1EB98EBD0);
      goto LABEL_64;
    }

LABEL_59:
    v46 = &qword_1EB98FCE0;
    v47 = v23;
    goto LABEL_60;
  }

  v81 = v147;
  sub_1B7205588(v23, v147, &qword_1EB98EBD0);
  if (v80(&v23[v77], 1, v78) == 1)
  {
    (*(v150 + 8))(v81, v78);
    goto LABEL_59;
  }

  v134 = v80;
  v135 = v79;
  v83 = v150;
  v84 = v81;
  v85 = v141;
  (*(v150 + 32))(v141, &v23[v77], v78);
  sub_1B76E20D8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v86 = v78;
  v87 = sub_1B7800828();
  v88 = *(v83 + 8);
  v88(v85, v86);
  v88(v84, v86);
  v49 = v133;
  sub_1B7205418(v23, &qword_1EB98EBD0);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_64:
  v89 = v49[14];
  v90 = *(v143 + 48);
  v33 = v146;
  sub_1B7205588(a1 + v89, v146, &qword_1EB995FF0);
  sub_1B7205588(a2 + v89, &v33[v90], &qword_1EB995FF0);
  v91 = v145;
  v92 = *(v144 + 48);
  if (v92(v33, 1, v145) == 1)
  {
    if (v92(&v33[v90], 1, v91) == 1)
    {
      sub_1B7205418(v33, &qword_1EB995FF0);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v93 = v140;
  sub_1B7205588(v33, v140, &qword_1EB995FF0);
  if (v92(&v33[v90], 1, v91) == 1)
  {
    sub_1B76E13B0(v93, type metadata accessor for Duration);
LABEL_69:
    v46 = &qword_1EB99B520;
    goto LABEL_44;
  }

  v94 = &v33[v90];
  v95 = v137;
  sub_1B719AAB4(v94, v137, type metadata accessor for Duration);
  v96 = MEMORY[0x1B8CA2F10](v93, v95);
  sub_1B76E13B0(v95, type metadata accessor for Duration);
  sub_1B76E13B0(v93, type metadata accessor for Duration);
  sub_1B7205418(v33, &qword_1EB995FF0);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  v97 = v133[15];
  v98 = *(v148 + 48);
  v99 = v142;
  sub_1B7205588(a1 + v97, v142, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v97, v99 + v98, &qword_1EB98EBD0);
  v100 = v149;
  v102 = v134;
  v101 = v135;
  v103 = v134(v99, 1, v149);
  v135 = v101;
  if (v103 == 1)
  {
    v104 = v102;
    if (v102(v99 + v98, 1, v100) == 1)
    {
      sub_1B7205418(v142, &qword_1EB98EBD0);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  sub_1B7205588(v99, v139, &qword_1EB98EBD0);
  v104 = v102;
  if (v102(v99 + v98, 1, v100) == 1)
  {
    (*(v150 + 8))(v139, v149);
LABEL_76:
    v46 = &qword_1EB98FCE0;
    v47 = v142;
    goto LABEL_60;
  }

  v106 = v149;
  v105 = v150;
  v107 = v141;
  (*(v150 + 32))(v141, v142 + v98, v149);
  sub_1B76E20D8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v108 = v139;
  v109 = sub_1B7800828();
  v110 = *(v105 + 8);
  v110(v107, v106);
  v110(v108, v106);
  sub_1B7205418(v142, &qword_1EB98EBD0);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_78:
  v111 = v133[16];
  v112 = *(a1 + v111);
  v113 = *(a1 + v111 + 8);
  v114 = (a2 + v111);
  if ((v112 != *v114 || v113 != v114[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v115 = v133[17];
  v116 = *(v148 + 48);
  v117 = v138;
  sub_1B7205588(a1 + v115, v138, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v115, v117 + v116, &qword_1EB98EBD0);
  if (v104(v117, 1, v149) != 1)
  {
    v118 = v138;
    sub_1B7205588(v138, v136, &qword_1EB98EBD0);
    if (v104(v118 + v116, 1, v149) != 1)
    {
      v119 = v150;
      v120 = v138;
      v121 = v138 + v116;
      v122 = v141;
      v123 = v149;
      (*(v150 + 32))(v141, v121, v149);
      sub_1B76E20D8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v124 = v136;
      v125 = sub_1B7800828();
      v126 = *(v119 + 8);
      v126(v122, v123);
      v126(v124, v123);
      sub_1B7205418(v120, &qword_1EB98EBD0);
      if ((v125 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_88;
    }

    (*(v150 + 8))(v136, v149);
    goto LABEL_86;
  }

  if (v104(v138 + v116, 1, v149) != 1)
  {
LABEL_86:
    v46 = &qword_1EB98FCE0;
    v47 = v138;
    goto LABEL_60;
  }

  sub_1B7205418(v138, &qword_1EB98EBD0);
LABEL_88:
  v127 = v133[18];
  v128 = *(a1 + v127);
  v129 = *(a2 + v127);
  if (v128)
  {
    v130 = 0x79726576696C6564;
  }

  else
  {
    v130 = 0x676E697070696873;
  }

  if (v129)
  {
    v131 = 0x79726576696C6564;
  }

  else
  {
    v131 = 0x676E697070696873;
  }

  if (v130 == v131)
  {
    swift_bridgeObjectRelease_n();
    return 1;
  }

  v132 = sub_1B78020F8();
  swift_bridgeObjectRelease_n();
  return (v132 & 1) != 0;
}

uint64_t sub_1B76E0B9C(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v38 = a1;
  v2 = sub_1B77FFB08();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFC88();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for Duration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v31 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v40, v16, &qword_1EB98EBD0);
  v21 = *(v18 + 48);
  if (v21(v16, 1, v17) == 1)
  {
    v22 = &qword_1EB98EBD0;
    v23 = v16;
    return sub_1B7205418(v23, v22);
  }

  (*(v18 + 32))(v20, v16, v17);
  sub_1B7205588(v38, v8, &qword_1EB995FF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v22 = &qword_1EB995FF0;
    v23 = v8;
    return sub_1B7205418(v23, v22);
  }

  v40 = v20;
  sub_1B719AAB4(v8, v39, type metadata accessor for Duration);
  v26 = v36;
  v25 = v37;
  v27 = v33;
  (*(v36 + 104))(v33, *MEMORY[0x1E6969830], v37);
  v28 = v32;
  sub_1B77FFB18();
  (*(v26 + 8))(v27, v25);
  v29 = v31;
  v30 = v40;
  sub_1B77FFC08();
  (*(v34 + 8))(v28, v35);
  LODWORD(v25) = v21(v29, 1, v17);
  sub_1B7205418(v29, &qword_1EB98EBD0);
  if (v25 == 1)
  {
    sub_1B76E2120();
    swift_allocError();
    swift_willThrow();
  }

  sub_1B76E13B0(v39, type metadata accessor for Duration);
  return (*(v18 + 8))(v30, v17);
}

unint64_t sub_1B76E1110()
{
  result = qword_1EB99BB78;
  if (!qword_1EB99BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB78);
  }

  return result;
}

unint64_t sub_1B76E1164()
{
  result = qword_1EB99BB88;
  if (!qword_1EB99BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB88);
  }

  return result;
}

unint64_t sub_1B76E11B8()
{
  result = qword_1EB99BB90;
  if (!qword_1EB99BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB90);
  }

  return result;
}

unint64_t sub_1B76E120C()
{
  result = qword_1EB99BB98;
  if (!qword_1EB99BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB98);
  }

  return result;
}

unint64_t sub_1B76E1260()
{
  result = qword_1EB99BBA8;
  if (!qword_1EB99BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BBA8);
  }

  return result;
}

unint64_t sub_1B76E12B4()
{
  result = qword_1EB99BBB0;
  if (!qword_1EB99BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BBB0);
  }

  return result;
}

unint64_t sub_1B76E1308()
{
  result = qword_1EB99BBB8;
  if (!qword_1EB99BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BBB8);
  }

  return result;
}

unint64_t sub_1B76E135C()
{
  result = qword_1EB99BBC8;
  if (!qword_1EB99BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BBC8);
  }

  return result;
}

uint64_t sub_1B76E13B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B76E1414()
{
  result = qword_1EB99BBD8;
  if (!qword_1EB99BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BBD8);
  }

  return result;
}

unint64_t sub_1B76E14B0()
{
  result = qword_1EB99BBF0;
  if (!qword_1EB99BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BBF0);
  }

  return result;
}

unint64_t sub_1B76E154C()
{
  result = qword_1EB99BC08;
  if (!qword_1EB99BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC08);
  }

  return result;
}

void sub_1B76E15F8()
{
  sub_1B75E4A4C(319, &qword_1EDAF64E8, &type metadata for RawOrderLineItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B75E4A4C(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B76E17D4(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1B75E4A4C(319, qword_1EDAF7B48, &type metadata for RawOrderShippingRecipient, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B76E17D4(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
          if (v4 <= 0x3F)
          {
            sub_1B76E17D4(319, &unk_1EDAF6610, type metadata accessor for Duration);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B76E17D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit10RawAddressVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B76E184C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B76E18A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B76E1954()
{
  result = qword_1EB99BC10;
  if (!qword_1EB99BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC10);
  }

  return result;
}

unint64_t sub_1B76E19AC()
{
  result = qword_1EB99BC18;
  if (!qword_1EB99BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC18);
  }

  return result;
}

unint64_t sub_1B76E1A04()
{
  result = qword_1EB99BC20;
  if (!qword_1EB99BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC20);
  }

  return result;
}

unint64_t sub_1B76E1A5C()
{
  result = qword_1EB99BC28;
  if (!qword_1EB99BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC28);
  }

  return result;
}

unint64_t sub_1B76E1AB4()
{
  result = qword_1EB99BC30;
  if (!qword_1EB99BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC30);
  }

  return result;
}

unint64_t sub_1B76E1B0C()
{
  result = qword_1EB99BC38;
  if (!qword_1EB99BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC38);
  }

  return result;
}

uint64_t sub_1B76E1B60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D657449656E696CLL && a2 == 0xE900000000000073 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656972726163 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7882030 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78749D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEB000000004C5255 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xE900000000000074 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788AF10 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B788AF30 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65726576696C6564 && a2 == 0xEB00000000744164 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7881AD0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4164657070696873 && a2 == 0xE900000000000074 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x676E697070696873 && a2 == 0xEC00000065707954)
  {

    return 14;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

unint64_t sub_1B76E2030()
{
  result = qword_1EB99BC40;
  if (!qword_1EB99BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC40);
  }

  return result;
}

unint64_t sub_1B76E2084()
{
  result = qword_1EB99BC48;
  if (!qword_1EB99BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC48);
  }

  return result;
}

uint64_t sub_1B76E20D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B76E2120()
{
  result = qword_1EB99BC58;
  if (!qword_1EB99BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC58);
  }

  return result;
}

id WalletBankCredentialImporter.__allocating_init(financeStore:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____FKWalletBankCredentialImporter_financeStore] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id WalletBankCredentialImporter.init(financeStore:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____FKWalletBankCredentialImporter_financeStore] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static WalletBankCredentialImporter.makeImporter()()
{
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAFB7C8;
  v2 = objc_allocWithZone(v0);
  *&v2[OBJC_IVAR____FKWalletBankCredentialImporter_financeStore] = v1;
  v4.receiver = v2;
  v4.super_class = v0;

  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t WalletBankCredentialImporter.insertCredential(from:bankName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for BankCredential(0);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC68);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for BankCredential.ACH(0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76E24DC, 0, 0);
}

uint64_t sub_1B76E24DC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = [v5 routingNumber];
  v7 = sub_1B7800868();
  v9 = v8;

  v10 = [v5 accountNumber];
  v45 = sub_1B7800868();
  v46 = v11;

  v12 = (v1 + *(v2 + 20));
  sub_1B77FFA08();
  *v12 = v3;
  v12[1] = v4;
  v13 = *(v2 + 32);

  sub_1B77FF938();
  sub_1B77FFE58();
  sub_1B77FFE58();
  sub_1B77FFE78();
  v48 = v13;
  v14 = v0[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC78);
  v16 = *(*(v15 - 8) + 48);
  v47 = v16(v14, 1, v15);
  if (v47 == 1)
  {

    v17 = v0[8];
    v18 = 1;
    v19 = v1;
LABEL_3:
    v20 = v0[14];
    v22 = v0[11];
    v21 = v0[12];
    v24 = v0[9];
    v23 = v0[10];

    sub_1B76E2CEC(v17);
    sub_1B76E2D54();
    swift_allocError();
    *v25 = v18;
    swift_willThrow();
    v26 = *(v23 + 8);
    v26(v22, v24);
    v26(v21, v24);
    v27 = sub_1B77FFA18();
    (*(*(v27 - 8) + 8))(v20, v27);

    if (v47 != 1)
    {
    }

    v28 = sub_1B77FF988();
    (*(*(v28 - 8) + 8))(v19 + v48, v28);

    v29 = v0[1];

    return v29();
  }

  v44 = v9;
  v31 = v7;
  v33 = v0[13];
  v32 = v0[14];
  sub_1B76E2CEC(v14);
  v34 = (v32 + *(v33 + 24));
  *v34 = v31;
  v34[1] = v44;
  sub_1B77FFE78();
  v17 = v0[7];
  v19 = v1;
  if (v16(v17, 1, v15) == 1)
  {
    v18 = 0;
    goto LABEL_3;
  }

  v36 = v0[14];
  v35 = v0[15];
  v38 = v0[12];
  v37 = v0[13];
  v39 = v0[9];
  v49 = v0[6];
  v40 = *(v0[10] + 8);
  v40(v0[11], v39);
  v40(v38, v39);
  sub_1B76E2CEC(v17);
  v41 = (v36 + *(v37 + 28));
  *v41 = v45;
  v41[1] = v46;
  sub_1B76E2DA8(v36, v35);
  sub_1B76E2E0C(v35, v49);
  v42 = swift_task_alloc();
  v0[16] = v42;
  *v42 = v0;
  v42[1] = sub_1B76E29FC;
  v43 = v0[6];

  return FinanceStore.insertOrUpdateBankCredential(credential:)(v43);
}

uint64_t sub_1B76E29FC()
{
  v2 = *(*v1 + 48);
  *(*v1 + 136) = v0;

  sub_1B76E2E70(v2, type metadata accessor for BankCredential);
  if (v0)
  {
    v3 = sub_1B76E2C18;
  }

  else
  {
    v3 = sub_1B76E2B40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B76E2B40()
{
  sub_1B76E2E70(*(v0 + 120), type metadata accessor for BankCredential.ACH);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B76E2C18()
{
  sub_1B76E2E70(*(v0 + 120), type metadata accessor for BankCredential.ACH);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B76E2CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B76E2D54()
{
  result = qword_1EB99BC80;
  if (!qword_1EB99BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC80);
  }

  return result;
}

uint64_t sub_1B76E2DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankCredential.ACH(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76E2E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankCredential.ACH(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76E2E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B76E3060(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1B7800868();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1B76E314C;

  return WalletBankCredentialImporter.insertCredential(from:bankName:)(v10, v7, v9);
}

uint64_t sub_1B76E314C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_1B77FF308();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t WalletBankCredentialImporter.insert(credential:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B76E332C, 0, 0);
}

uint64_t sub_1B76E332C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B7306F3C;
  v2 = *(v0 + 16);

  return FinanceStore.insertOrUpdateBankCredential(credential:)(v2);
}

id WalletBankCredentialImporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalletBankCredentialImporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B76E3500()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B7201BB0;

  return sub_1B76E3060(v2, v3, v5, v4);
}

void *ManagedNetworkResponseEvent.__allocating_init(response:body:traceID:context:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v59 = a5;
  v60 = a3;
  v61 = a4;
  v62[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B78008E8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FF4F8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  v20 = [a1 URL];
  if (!v20)
  {
    v31 = sub_1B77FFA18();
    (*(*(v31 - 8) + 8))(v61, v31);

    sub_1B72380B8(a2, v60);
    return 0;
  }

  v21 = v20;
  v55 = a1;
  v57 = a2;
  sub_1B77FF478();

  v14[4](v19, v17, v13);
  v22 = objc_allocWithZone(v58);
  v23 = v59;
  v24 = [v22 initWithContext_];
  sub_1B77FF938();
  v25 = sub_1B77FF8B8();
  (*(v10 + 8))(v12, v9);
  [v24 setEventDate_];

  v26 = sub_1B77FF9B8();
  [v24 setTraceID_];

  v27 = sub_1B77FF3F8();
  [v24 setEventURL_];

  v28 = v60;
  v29 = v13;
  if (v60 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v33 = v57;
    sub_1B720ABEC(v57, v60);
    v30 = sub_1B77FF598();
    sub_1B72380B8(v33, v28);
  }

  v34 = v55;
  [v24 setResponseBody_];

  v35 = [v34 statusCode];
  if (v35 < -32768)
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  if (v35 >= 0x8000)
  {
    goto LABEL_17;
  }

  v54 = v19;
  v55 = v14;
  v58 = v29;
  [v24 setResponseStatusCode_];
  v36 = objc_opt_self();
  v37 = [v34 allHeaderFields];
  v38 = v24;
  sub_1B7800728();

  v39 = sub_1B7800708();

  v62[0] = 0;
  v40 = [v36 dataWithJSONObject:v39 options:0 error:v62];

  v41 = v62[0];
  if (v40)
  {
    v42 = sub_1B77FF5B8();
    v44 = v43;

    sub_1B78008C8();
    sub_1B7800888();
    v45 = v58;
    v46 = v55;
    if (v47)
    {
      v48 = sub_1B7800838();
    }

    else
    {
      v48 = 0;
    }

    v51 = v38;
    [v38 setResponseHeaders_];

    sub_1B720A388(v42, v44);
  }

  else
  {
    v49 = v41;
    v50 = sub_1B77FF318();

    swift_willThrow();
    v51 = v23;
    v45 = v58;
    v46 = v55;
  }

  sub_1B72380B8(v57, v60);
  v52 = sub_1B77FFA18();
  (*(*(v52 - 8) + 8))(v61, v52);
  v46[1](v54, v45);
  return v38;
}

void sub_1B76E3BA8(id *a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(void))
{
  v6 = [*a1 *a4];
  a5();
}

void sub_1B76E3C0C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 responseBody];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B77FF5B8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B76E3C74(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B77FF598();
  }

  v4 = v3;
  [v2 setResponseBody_];
}

void sub_1B76E3CEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 responseHeaders];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B76E3D54(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setResponseHeaders_];
}

id static ManagedNetworkResponseEvent.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedNetworkResponseEvent;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

unint64_t static ManagedNetworkResponseEvent.existingResponse(withTraceID:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedNetworkResponseEvent;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
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

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

id ManagedNetworkResponseEvent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedNetworkResponseEvent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedNetworkResponseEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void keypath_setTm_9(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  v8 = a5();
  [v7 *a6];
}

uint64_t BankCredential.ACH.init(routingNumber:accountNumber:nickname:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a2;
  v51 = a4;
  v41 = a3;
  v49 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC68);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC70);
  v46 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  v21 = type metadata accessor for BankCredential.ACH(0);
  v22 = (a7 + *(v21 + 20));
  sub_1B77FFA08();
  *v22 = a5;
  v22[1] = a6;
  v47 = a7;
  v48 = v21;
  v42 = *(v21 + 32);
  v43 = a6;
  sub_1B77FF938();
  sub_1B77FFE58();
  v50 = v18;
  v23 = v44;
  sub_1B77FFE58();
  v24 = v45;
  sub_1B77FFE78();
  if (v24)
  {
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC78);
    v26 = *(*(v25 - 8) + 48);
    LODWORD(v45) = v26(v14, 1, v25);
    if (v45 == 1)
    {

      v27 = 1;
      v28 = v14;
      v29 = v47;
    }

    else
    {
      sub_1B7205418(v14, &qword_1EB99BC68);
      v29 = v47;
      v30 = (v47 + *(v48 + 24));
      *v30 = v49;
      v30[1] = v23;
      v28 = v40;
      sub_1B77FFE78();
      if (v26(v28, 1, v25) != 1)
      {
        sub_1B7205418(v28, &qword_1EB99BC68);
        v36 = *(v46 + 8);
        v36(v50, v15);
        result = (v36)(v20, v15);
        v37 = (v29 + *(v48 + 28));
        v38 = v51;
        *v37 = v41;
        v37[1] = v38;
        return result;
      }

      v27 = 0;
    }

    sub_1B7205418(v28, &qword_1EB99BC68);
    sub_1B76E2D54();
    swift_allocError();
    *v31 = v27;
    swift_willThrow();
    v32 = *(v46 + 8);
    v32(v50, v15);
    v32(v20, v15);
    v33 = sub_1B77FFA18();
    (*(*(v33 - 8) + 8))(v29, v33);

    if (v45 != 1)
    {
    }

    v34 = sub_1B77FF988();
    return (*(*(v34 - 8) + 8))(v29 + v42, v34);
  }

  return result;
}

uint64_t BankCredential.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BankCredential.ACH(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76E98A0(v2, v9, type metadata accessor for BankCredential);
  sub_1B76E973C(v9, v6, type metadata accessor for BankCredential.ACH);
  v10 = sub_1B77FFA18();
  (*(*(v10 - 8) + 16))(a1, v6, v10);
  return sub_1B76E9908(v6, type metadata accessor for BankCredential.ACH);
}

uint64_t BankCredential.nickname.getter()
{
  v1 = type metadata accessor for BankCredential.ACH(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76E98A0(v0, v7, type metadata accessor for BankCredential);
  sub_1B76E973C(v7, v4, type metadata accessor for BankCredential.ACH);
  v8 = *&v4[*(v2 + 28)];

  sub_1B76E9908(v4, type metadata accessor for BankCredential.ACH);
  return v8;
}

uint64_t BankCredential.seal(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a1;
  v51 = a2;
  v49 = type metadata accessor for BankCredential.ACH(0);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9970B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_1B78004C8();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B7800558();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FE968();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_1EB991BE8);
  (*(v16 + 16))(v18, v19, v15);
  sub_1B77FE988();
  sub_1B76E96F4(&qword_1EB999CA8, type metadata accessor for BankCredential);
  v20 = v62;
  v21 = sub_1B77FE998();
  if (v20)
  {
  }

  v62 = v21;
  v60 = v21;
  v61 = v22;
  v23 = v22;
  v24 = (v57 + *(type metadata accessor for CredentialCenterKey() + 20));
  v25 = v24[1];
  v58 = *v24;
  v59 = v25;
  sub_1B720ABEC(v58, v25);
  sub_1B78004A8();
  v26 = sub_1B7800528();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_1B736E424();
  v27 = v54;
  sub_1B7800518();
  sub_1B7205418(v9, &qword_1EB9970B8);
  (*(v55 + 8))(v12, v56);
  v55 = sub_1B7800538();
  v30 = v29;
  result = (*(v52 + 8))(v27, v53);
  v56 = v30;
  if (v30 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B720A388(v62, v23);

    v31 = v48;
    sub_1B76E98A0(v2, v48, type metadata accessor for BankCredential);
    v32 = v50;
    sub_1B76E973C(v31, v50, type metadata accessor for BankCredential.ACH);
    v54 = sub_1B77FFA18();
    v33 = *(v54 - 1);
    v53 = *(v33 + 16);
    v62 = v33 + 16;
    v34 = v51;
    v53(v51, v32, v54);
    sub_1B76E9908(v32, type metadata accessor for BankCredential.ACH);
    sub_1B76E98A0(v2, v31, type metadata accessor for BankCredential);
    sub_1B76E973C(v31, v32, type metadata accessor for BankCredential.ACH);
    v35 = v49;
    v36 = (v32 + *(v49 + 20));
    v37 = v36[1];
    v52 = *v36;
    v47 = v37;

    sub_1B76E9908(v32, type metadata accessor for BankCredential.ACH);
    sub_1B76E98A0(v3, v31, type metadata accessor for BankCredential);
    sub_1B76E973C(v31, v32, type metadata accessor for BankCredential.ACH);
    v38 = *(v35 + 32);
    v39 = type metadata accessor for BankCredential.SealedBox(0);
    v40 = v39[8];
    v41 = sub_1B77FF988();
    (*(*(v41 - 8) + 16))(v34 + v40, v32 + v38, v41);
    sub_1B76E9908(v32, type metadata accessor for BankCredential.ACH);
    result = (v53)(v34 + v39[9], v57, v54);
    v42 = (v34 + v39[5]);
    v43 = v47;
    *v42 = v52;
    v42[1] = v43;
    v44 = (v34 + v39[7]);
    v45 = v56;
    *v44 = v55;
    v44[1] = v45;
  }

  return result;
}

uint64_t BankCredential.updatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BankCredential.ACH(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76E98A0(v2, v10, type metadata accessor for BankCredential);
  sub_1B76E973C(v10, v7, type metadata accessor for BankCredential.ACH);
  v11 = *(v5 + 40);
  v12 = sub_1B77FF988();
  (*(*(v12 - 8) + 16))(a1, &v7[v11], v12);
  return sub_1B76E9908(v7, type metadata accessor for BankCredential.ACH);
}

uint64_t static BankCredential.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A450);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_1B76E98A0(a1, &v10 - v6, type metadata accessor for BankCredential);
  sub_1B76E98A0(a2, &v7[v8], type metadata accessor for BankCredential);
  LOBYTE(a2) = _s10FinanceKit14BankCredentialO3ACHV2eeoiySbAE_AEtFZ_0(v7, &v7[v8]);
  sub_1B76E9908(&v7[v8], type metadata accessor for BankCredential.ACH);
  sub_1B76E9908(v7, type metadata accessor for BankCredential.ACH);
  return a2 & 1;
}

uint64_t sub_1B76E5304(uint64_t a1)
{
  v2 = sub_1B76E96A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76E5340(uint64_t a1)
{
  v2 = sub_1B76E96A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76E538C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6841185 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B76E5414(uint64_t a1)
{
  v2 = sub_1B76E964C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76E5450(uint64_t a1)
{
  v2 = sub_1B76E964C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankCredential.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC88);
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BC90);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E964C();
  sub_1B78023F8();
  sub_1B76E98A0(v14, v7, type metadata accessor for BankCredential);
  sub_1B76E96A0();
  sub_1B7801ED8();
  type metadata accessor for BankCredential.ACH(0);
  sub_1B76E96F4(&qword_1EB99BCA8, type metadata accessor for BankCredential.ACH);
  v12 = v15;
  sub_1B7801FC8();
  sub_1B76E9908(v7, type metadata accessor for BankCredential.ACH);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t BankCredential.hash(into:)()
{
  v1 = type metadata accessor for BankCredential.ACH(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76E98A0(v0, v6, type metadata accessor for BankCredential);
  sub_1B76E973C(v6, v3, type metadata accessor for BankCredential.ACH);
  MEMORY[0x1B8CA6620](0);
  sub_1B77FFA18();
  sub_1B76E96F4(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  if (*&v3[*(v1 + 20) + 8])
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B76E96F4(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  return sub_1B76E9908(v3, type metadata accessor for BankCredential.ACH);
}

uint64_t BankCredential.hashValue.getter()
{
  sub_1B78022F8();
  BankCredential.hash(into:)();
  return sub_1B7802368();
}

uint64_t BankCredential.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BCB0);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BCB8);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E964C();
  v11 = v30;
  sub_1B78023C8();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_1B7801E98();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_1B721CE60() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_1B7801B18();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v20 = v22;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_1B76E96A0();
  sub_1B7801D38();
  type metadata accessor for BankCredential.ACH(0);
  sub_1B76E96F4(&qword_1EB99BCC0, type metadata accessor for BankCredential.ACH);
  v22 = v10;
  sub_1B7801E48();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_1B76E973C(v4, v12, type metadata accessor for BankCredential);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1B76E5E14()
{
  sub_1B78022F8();
  BankCredential.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B76E5E58()
{
  sub_1B78022F8();
  BankCredential.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B76E5E94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BankCredential.ACH(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76E98A0(v1, v8, type metadata accessor for BankCredential);
  sub_1B76E973C(v8, v6, type metadata accessor for BankCredential.ACH);
  v9 = sub_1B77FFA18();
  (*(*(v9 - 8) + 16))(a1, v6, v9);
  return sub_1B76E9908(v6, type metadata accessor for BankCredential.ACH);
}

uint64_t sub_1B76E5FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A450);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_1B76E98A0(a1, &v10 - v6, type metadata accessor for BankCredential);
  sub_1B76E98A0(a2, &v7[v8], type metadata accessor for BankCredential);
  LOBYTE(a2) = _s10FinanceKit14BankCredentialO3ACHV2eeoiySbAE_AEtFZ_0(v7, &v7[v8]);
  sub_1B76E9908(&v7[v8], type metadata accessor for BankCredential.ACH);
  sub_1B76E9908(v7, type metadata accessor for BankCredential.ACH);
  return a2 & 1;
}

uint64_t BankCredential.SealedBox.keyIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankCredential.SealedBox(0) + 36);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankCredential.SealedBox.keyIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankCredential.SealedBox(0) + 36);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankCredential.SealedBox.open(using:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v46 = a1;
  v4 = sub_1B77FE8B8();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7800558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB98EA80 != -1)
  {
    swift_once();
  }

  v10 = sub_1B78000B8();
  v47 = __swift_project_value_buffer(v10, qword_1EB994900);
  v11 = sub_1B7800098();
  v12 = sub_1B78011B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B7198000, v11, v12, "Decrypting bank credential.", v13, 2u);
    v3 = v2;
    MEMORY[0x1B8CA7A40](v13, -1, -1);
  }

  v14 = (v1 + *(type metadata accessor for BankCredential.SealedBox(0) + 28));
  v15 = *v14;
  v16 = v14[1];
  sub_1B720ABEC(*v14, v16);
  sub_1B77506AC(v15, v16);
  if (v3)
  {
    v17 = v3;
    v18 = sub_1B7800098();
    v19 = sub_1B78011D8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1B7198000, v18, v19, "Failed decrypting bank credential. Error: %@", v20, 0xCu);
      sub_1B7205418(v21, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v21, -1, -1);
      MEMORY[0x1B8CA7A40](v20, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v25 = sub_1B7800508();
    v27 = v26;
    (*(v7 + 8))(v9, v6);
    sub_1B720ABEC(v25, v27);
    v28 = sub_1B7800098();
    v29 = sub_1B78011B8();
    sub_1B720A388(v25, v27);
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      sub_1B720ABEC(v25, v27);
      v33 = sub_1B77FF528();
      v34 = v25;
      v35 = v33;
      v37 = v36;
      v38 = v34;
      sub_1B720A388(v34, v27);
      v39 = sub_1B71A3EF8(v35, v37, &v48);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_1B7198000, v28, v29, "    Decrypted bank credential. Decoding [BankCredential]     from %s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1B8CA7A40](v32, -1, -1);
      MEMORY[0x1B8CA7A40](v31, -1, -1);
    }

    else
    {
      v38 = v25;
    }

    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v40 = v45;
    v41 = __swift_project_value_buffer(v45, qword_1EB991BC8);
    (*(v44 + 16))(v43, v41, v40);
    sub_1B77FE8C8();
    type metadata accessor for BankCredential(0);
    sub_1B76E96F4(&qword_1EB99A0A8, type metadata accessor for BankCredential);
    sub_1B77FE8D8();
    sub_1B720A388(v38, v27);
  }
}

unint64_t sub_1B76E6894()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000014;
  v4 = 0x4464657461647075;
  if (v1 != 4)
  {
    v4 = 0x746E65644979656BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D616E6B63696ELL;
  if (v1 != 1)
  {
    v5 = 0x69746E6564657263;
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

uint64_t sub_1B76E6968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76EA810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76E6990(uint64_t a1)
{
  v2 = sub_1B76E97A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76E69CC(uint64_t a1)
{
  v2 = sub_1B76E97A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankCredential.SealedBox.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BCC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E97A4();
  sub_1B78023F8();
  LOBYTE(v14) = 0;
  sub_1B77FFA18();
  sub_1B76E96F4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for BankCredential.SealedBox(0);
    LOBYTE(v14) = 1;
    sub_1B7801EF8();
    LOBYTE(v14) = 2;
    sub_1B76E97F8();
    sub_1B7801FC8();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 3;
    sub_1B720ABEC(v14, v11);
    sub_1B727A60C();
    sub_1B7801FC8();
    sub_1B720A388(v14, v15);
    v13[1] = *(v9 + 32);
    LOBYTE(v14) = 4;
    sub_1B77FF988();
    sub_1B76E96F4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    LOBYTE(v14) = 5;
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BankCredential.SealedBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1B77FF988();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFA18();
  v42 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v34 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BCE0);
  v43 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v34 - v10;
  v12 = type metadata accessor for BankCredential.SealedBox(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E97A4();
  v47 = v11;
  v15 = v49;
  sub_1B78023C8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v8;
  v39 = v12;
  v49 = v14;
  v16 = a1;
  v18 = v43;
  v17 = v44;
  v19 = v45;
  LOBYTE(v50) = 0;
  v20 = sub_1B76E96F4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  sub_1B7801E48();
  v21 = v5;
  v37 = v20;
  v22 = *(v42 + 32);
  v23 = v49;
  v24 = v46;
  v46 = v21;
  v22(v49, v24, v21);
  LOBYTE(v50) = 1;
  v25 = sub_1B7801D78();
  v35 = v22;
  v36 = v26;
  v27 = v39;
  v28 = &v23[v39[5]];
  *v28 = v25;
  v28[1] = v26;
  LOBYTE(v50) = 2;
  sub_1B76E984C();
  sub_1B7801E48();
  v51 = 3;
  sub_1B727A53C();
  sub_1B7801E48();
  *&v49[v27[7]] = v50;
  LOBYTE(v50) = 4;
  sub_1B76E96F4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v29 = v41;
  sub_1B7801E48();
  v34 = v16;
  (*(v17 + 32))(&v49[v39[8]], v29, v19);
  LOBYTE(v50) = 5;
  v30 = v38;
  v31 = v46;
  sub_1B7801E48();
  (*(v18 + 8))(v47, v48);
  v32 = v49;
  v35(&v49[v39[9]], v30, v31);
  sub_1B76E98A0(v32, v40, type metadata accessor for BankCredential.SealedBox);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_1B76E9908(v32, type metadata accessor for BankCredential.SealedBox);
}

FinanceKit::BankCredentialError::FieldName_optional __swiftcall BankCredentialError.FieldName.init(rawValue:)(Swift::String rawValue)
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

uint64_t BankCredentialError.FieldName.rawValue.getter()
{
  if (*v0)
  {
    return 0x4E676E6974756F72;
  }

  else
  {
    return 0x4E746E756F636361;
  }
}

uint64_t _s10FinanceKit19BankCredentialErrorO2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4E676E6974756F72;
  }

  else
  {
    v2 = 0x4E746E756F636361;
  }

  if (*a2)
  {
    v3 = 0x4E676E6974756F72;
  }

  else
  {
    v3 = 0x4E746E756F636361;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B78020F8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B76E7504()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76E758C()
{
  sub_1B7800798();
}

uint64_t sub_1B76E7600()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76E7684@<X0>(char *a1@<X8>)
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

void sub_1B76E76E4(uint64_t *a1@<X8>)
{
  v2 = 0x4E746E756F636361;
  if (*v1)
  {
    v2 = 0x4E676E6974756F72;
  }

  *a1 = v2;
  a1[1] = 0xED00007265626D75;
}

uint64_t BankCredential.CredentialType.localizedDescription.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B76E783C()
{
  sub_1B78022F8();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t sub_1B76E78A8()
{
  sub_1B78022F8();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2id10Foundation4UUIDVvs_0(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1B76E7A70(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_1B76E7AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t BankCredential.ACH.routingNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankCredential.ACH(0) + 24));

  return v1;
}

uint64_t BankCredential.ACH.routingNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankCredential.ACH(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankCredential.ACH.accountNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankCredential.ACH(0) + 28));

  return v1;
}

uint64_t BankCredential.ACH.accountNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankCredential.ACH(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankCredential.ACH.updatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankCredential.ACH(0) + 32);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankCredential.ACH.updatedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankCredential.ACH(0) + 32);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B76E7E48()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4E676E6974756F72;
  v4 = 0x4E746E756F636361;
  if (v1 != 3)
  {
    v4 = 0x4464657461647075;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D616E6B63696ELL;
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

uint64_t sub_1B76E7EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76EAA20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76E7F20(uint64_t a1)
{
  v2 = sub_1B76E9968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76E7F5C(uint64_t a1)
{
  v2 = sub_1B76E9968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankCredential.ACH.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BCF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E9968();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FFA18();
  sub_1B76E96F4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for BankCredential.ACH(0);
    v8[14] = 1;
    sub_1B7801EF8();
    v8[13] = 2;
    sub_1B7801F78();
    v8[12] = 3;
    sub_1B7801F78();
    v8[11] = 4;
    sub_1B77FF988();
    sub_1B76E96F4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BankCredential.ACH.hash(into:)()
{
  sub_1B77FFA18();
  sub_1B76E96F4(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  if (*(v0 + *(type metadata accessor for BankCredential.ACH(0) + 20) + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B76E96F4(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  return sub_1B7800768();
}

uint64_t BankCredential.ACH.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B76E96F4(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  if (*(v0 + *(type metadata accessor for BankCredential.ACH(0) + 20) + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B76E96F4(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t BankCredential.ACH.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = sub_1B77FF988();
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFA18();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BD00);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for BankCredential.ACH(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E9968();
  v35 = v9;
  v13 = v36;
  sub_1B78023C8();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v4;
  v36 = v10;
  v14 = v30;
  v15 = v31;
  v41 = 0;
  sub_1B76E96F4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  sub_1B7801E48();
  (*(v14 + 32))(v12, v34, v5);
  v40 = 1;
  v16 = sub_1B7801D78();
  v17 = v36;
  v18 = &v12[v36[5]];
  *v18 = v16;
  v18[1] = v19;
  v34 = v19;
  v39 = 2;
  v20 = sub_1B7801DF8();
  v21 = &v12[v17[6]];
  *v21 = v20;
  v21[1] = v22;
  v38 = 3;
  v23 = sub_1B7801DF8();
  v24 = &v12[v17[7]];
  *v24 = v23;
  v24[1] = v25;
  v37 = 4;
  sub_1B76E96F4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801E48();
  (*(v32 + 8))(v35, v33);
  (*(v28 + 32))(&v12[v17[8]], v27, v15);
  sub_1B76E98A0(v12, v29, type metadata accessor for BankCredential.ACH);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B76E9908(v12, type metadata accessor for BankCredential.ACH);
}

uint64_t sub_1B76E8A9C(uint64_t a1, uint64_t a2)
{
  sub_1B77FFA18();
  sub_1B76E96F4(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B76E96F4(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  return sub_1B7800768();
}

uint64_t sub_1B76E8BE4(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B76E96F4(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B76E96F4(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t BankCredentials.credentials.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BankCredentials.credentialsWithInvalidData.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t BankCredentials.credentialsWithMissingKey.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

FinanceKit::BankCredentials __swiftcall BankCredentials.init(credentials:credentialsWithInvalidData:credentialsWithMissingKey:)(Swift::OpaquePointer credentials, Swift::OpaquePointer credentialsWithInvalidData, Swift::OpaquePointer credentialsWithMissingKey)
{
  v3->_rawValue = credentials._rawValue;
  v3[1]._rawValue = credentialsWithInvalidData._rawValue;
  v3[2]._rawValue = credentialsWithMissingKey._rawValue;
  result.credentialsWithMissingKey = credentialsWithMissingKey;
  result.credentialsWithInvalidData = credentialsWithInvalidData;
  result.credentials = credentials;
  return result;
}

uint64_t sub_1B76E8E4C()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x69746E6564657263;
  }
}

uint64_t sub_1B76E8EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76EABDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76E8EE0(uint64_t a1)
{
  v2 = sub_1B76E99BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76E8F1C(uint64_t a1)
{
  v2 = sub_1B76E99BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankCredentials.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BD08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E99BC();

  sub_1B78023F8();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BD18);
  sub_1B76E9AAC(&qword_1EB99BD20, &qword_1EB999CA8);
  sub_1B7801FC8();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BD28);
    sub_1B76E9A10(&qword_1EB99BD30, &qword_1EB99BD38);
    sub_1B7801FC8();
    v16 = v10;
    v15 = 2;
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t BankCredentials.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BD40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E99BC();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BD18);
  v16 = 0;
  sub_1B76E9AAC(&qword_1EB99BD48, &qword_1EB99A0A8);
  sub_1B7801E48();
  v14 = a2;
  v15 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BD28);
  v16 = 1;
  sub_1B76E9A10(&qword_1EB99BD50, &qword_1EB99BD58);
  sub_1B7801E48();
  v13 = v17;
  v16 = 2;
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v9 = v17;
  v10 = v14;
  v11 = v13;
  *v14 = v15;
  v10[1] = v11;
  v10[2] = v9;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s10FinanceKit14BankCredentialO3ACHV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BankCredential.ACH(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *v6 == *v8 && v7 == v9;
  if (!v10 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v11 = v4[6];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  return sub_1B77FF918();
}

unint64_t sub_1B76E964C()
{
  result = qword_1EB99BC98;
  if (!qword_1EB99BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BC98);
  }

  return result;
}

unint64_t sub_1B76E96A0()
{
  result = qword_1EB99BCA0;
  if (!qword_1EB99BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BCA0);
  }

  return result;
}

uint64_t sub_1B76E96F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B76E973C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B76E97A4()
{
  result = qword_1EB99BCD0;
  if (!qword_1EB99BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BCD0);
  }

  return result;
}

unint64_t sub_1B76E97F8()
{
  result = qword_1EB99BCD8;
  if (!qword_1EB99BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BCD8);
  }

  return result;
}

unint64_t sub_1B76E984C()
{
  result = qword_1EB99BCE8;
  if (!qword_1EB99BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BCE8);
  }

  return result;
}

uint64_t sub_1B76E98A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B76E9908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B76E9968()
{
  result = qword_1EB99BCF8;
  if (!qword_1EB99BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BCF8);
  }

  return result;
}

unint64_t sub_1B76E99BC()
{
  result = qword_1EB99BD10;
  if (!qword_1EB99BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BD10);
  }

  return result;
}

uint64_t sub_1B76E9A10(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99BD28);
    sub_1B76E96F4(a2, type metadata accessor for BankCredential.SealedBox);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B76E9AAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99BD18);
    sub_1B76E96F4(a2, type metadata accessor for BankCredential);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76E9B94()
{
  result = qword_1EB99BD68;
  if (!qword_1EB99BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BD68);
  }

  return result;
}

unint64_t sub_1B76E9BEC()
{
  result = qword_1EB99BD70;
  if (!qword_1EB99BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BD70);
  }

  return result;
}

unint64_t sub_1B76E9C44()
{
  result = qword_1EB99BD78;
  if (!qword_1EB99BD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99BD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BD78);
  }

  return result;
}

uint64_t sub_1B76E9CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankCredential.ACH(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm_1);
}

uint64_t sub_1B76E9D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BankCredential.ACH(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm_1);
}

uint64_t sub_1B76E9DB0(uint64_t a1)
{
  result = type metadata accessor for BankCredential.ACH(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1B76E9E7C()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      sub_1B77FF988();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1B76EA1DC()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      sub_1B77FF988();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B76EA2EC()
{
  result = qword_1EB99BDA0;
  if (!qword_1EB99BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDA0);
  }

  return result;
}

unint64_t sub_1B76EA344()
{
  result = qword_1EB99BDA8;
  if (!qword_1EB99BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDA8);
  }

  return result;
}

unint64_t sub_1B76EA39C()
{
  result = qword_1EB99BDB0;
  if (!qword_1EB99BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDB0);
  }

  return result;
}

unint64_t sub_1B76EA3F4()
{
  result = qword_1EB99BDB8;
  if (!qword_1EB99BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDB8);
  }

  return result;
}

unint64_t sub_1B76EA44C()
{
  result = qword_1EB99BDC0;
  if (!qword_1EB99BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDC0);
  }

  return result;
}

unint64_t sub_1B76EA4A4()
{
  result = qword_1EB99BDC8;
  if (!qword_1EB99BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDC8);
  }

  return result;
}

unint64_t sub_1B76EA4FC()
{
  result = qword_1EB99BDD0;
  if (!qword_1EB99BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDD0);
  }

  return result;
}

unint64_t sub_1B76EA554()
{
  result = qword_1EB99BDD8;
  if (!qword_1EB99BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDD8);
  }

  return result;
}

unint64_t sub_1B76EA5AC()
{
  result = qword_1EB99BDE0;
  if (!qword_1EB99BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDE0);
  }

  return result;
}

unint64_t sub_1B76EA604()
{
  result = qword_1EB99BDE8;
  if (!qword_1EB99BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDE8);
  }

  return result;
}

unint64_t sub_1B76EA65C()
{
  result = qword_1EB99BDF0;
  if (!qword_1EB99BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDF0);
  }

  return result;
}

unint64_t sub_1B76EA6B4()
{
  result = qword_1EB99BDF8;
  if (!qword_1EB99BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BDF8);
  }

  return result;
}

unint64_t sub_1B76EA70C()
{
  result = qword_1EB99BE00;
  if (!qword_1EB99BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE00);
  }

  return result;
}

unint64_t sub_1B76EA764()
{
  result = qword_1EB99BE08;
  if (!qword_1EB99BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE08);
  }

  return result;
}

unint64_t sub_1B76EA7BC()
{
  result = qword_1EB99BE10;
  if (!qword_1EB99BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE10);
  }

  return result;
}

uint64_t sub_1B76EA810(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEE00657079546C61 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B788B0E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEB00000000657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65644979656BLL && a2 == 0xED00007265696669)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B76EAA20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E676E6974756F72 && a2 == 0xED00007265626D75 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xED00007265626D75 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEB00000000657461)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B76EABDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B788B100 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B788B120 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

unint64_t sub_1B76EAD04()
{
  result = qword_1EB99BE18;
  if (!qword_1EB99BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE18);
  }

  return result;
}

id CLLocation.init(_:)(double *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  type metadata accessor for ApplePayTransactionInsight.Location(0);
  v8 = sub_1B77FF8B8();
  v9 = [v2 initWithCoordinate:v8 altitude:v3 horizontalAccuracy:v4 verticalAccuracy:v5 timestamp:{v6, v7}];

  sub_1B76F1B10(a1, type metadata accessor for ApplePayTransactionInsight.Location);
  return v9;
}

uint64_t ApplePayTransactionInsight.init(paymentHash:transactionDate:merchantName:merchantRawName:industryCategory:industryCode:merchantType:merchantCountryCode:terminalIdentifier:merchantAdditionalData:paymentNetwork:tokenType:isCoarseLocation:location:merchantIdentifier:merchantRawCANL:merchantRawCity:merchantRawState:merchantRawCountry:merchantCity:merchantZip:merchantState:merchantCleanConfidenceLevel:rewards:adamIdentifier:webURL:webMerchantIdentifier:webMerchantName:isIssuerInstallmentTransaction:issuerInstallmentManagementURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, __int16 a42, char a43, __int128 *a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53)
{
  v91 = *a23;
  v95 = *(a44 + 4);
  v94 = *(a44 + 40);
  v54 = type metadata accessor for ApplePayTransactionInsight(0);
  v55 = v54[5];
  v88 = v55;
  v56 = sub_1B77FF988();
  v90 = *a44;
  v89 = a44[1];
  (*(*(v56 - 8) + 56))(&a9[v55], 1, 1, v56);
  v84 = &a9[v54[6]];
  v86 = &a9[v54[7]];
  v82 = &a9[v54[8]];
  v85 = &a9[v54[9]];
  v81 = &a9[v54[10]];
  v83 = &a9[v54[11]];
  v78 = &a9[v54[12]];
  v80 = &a9[v54[13]];
  v79 = &a9[v54[14]];
  v57 = v54[17];
  v87 = v54[16];
  v58 = type metadata accessor for ApplePayTransactionInsight.Location(0);
  (*(*(v58 - 8) + 56))(&a9[v57], 1, 1, v58);
  v76 = &a9[v54[18]];
  v77 = &a9[v54[19]];
  v73 = &a9[v54[20]];
  v75 = &a9[v54[21]];
  v71 = &a9[v54[22]];
  v72 = &a9[v54[23]];
  v69 = &a9[v54[24]];
  v70 = &a9[v54[25]];
  v59 = &a9[v54[26]];
  v60 = &a9[v54[27]];
  *(v60 + 25) = 0u;
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v61 = v54[29];
  v68 = v61;
  v74 = &a9[v54[28]];
  v62 = sub_1B77FF4F8();
  v63 = *(*(v62 - 8) + 56);
  v63(&a9[v61], 1, 1, v62);
  v64 = &a9[v54[30]];
  v65 = &a9[v54[31]];
  v66 = v54[33];
  v63(&a9[v66], 1, 1, v62);
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B7213740(a3, &a9[v88], &qword_1EB98EBD0);
  *v84 = a4;
  *(v84 + 1) = a5;
  *v86 = a6;
  *(v86 + 1) = a7;
  *v82 = a8;
  *(v82 + 1) = a10;
  *v85 = a11;
  v85[2] = a12 & 1;
  *v81 = a13;
  *(v81 + 1) = a14;
  *v83 = a15;
  *(v83 + 1) = a16;
  *v78 = a17;
  *(v78 + 1) = a18;
  *v80 = a19;
  *(v80 + 1) = a20;
  *v79 = a21;
  *(v79 + 1) = a22;
  a9[v54[15]] = v91;
  a9[v87] = a24;
  sub_1B7213740(a25, &a9[v57], &qword_1EB990980);
  *v76 = a26;
  *(v76 + 1) = a27;
  *v77 = a28;
  *(v77 + 1) = a29;
  *v73 = a30;
  *(v73 + 1) = a31;
  *v75 = a32;
  *(v75 + 1) = a33;
  *v71 = a34;
  *(v71 + 1) = a35;
  *v72 = a36;
  *(v72 + 1) = a37;
  *v69 = a38;
  *(v69 + 1) = a39;
  *v70 = a40;
  *(v70 + 1) = a41;
  *v59 = a42;
  v59[2] = a43 & 1;

  *v60 = v90;
  *(v60 + 1) = v89;
  *(v60 + 4) = v95;
  v60[40] = v94;
  *v74 = a45;
  v74[8] = a46 & 1;
  sub_1B7213740(a47, &a9[v68], &unk_1EB994C70);
  *v64 = a48;
  *(v64 + 1) = a49;
  *v65 = a50;
  *(v65 + 1) = a51;
  a9[v54[32]] = a52;
  return sub_1B7213740(a53, &a9[v66], &unk_1EB994C70);
}

FinanceKit::ApplePayTransactionInsight::Rewards::EligbilityReason_optional __swiftcall ApplePayTransactionInsight.Rewards.EligbilityReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 ApplePayTransactionInsight.Rewards.init(amount:eligibilityReason:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = v3;
  return result;
}

uint64_t ApplePayTransactionInsight.Location.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ApplePayTransactionInsight.Location(0) + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ApplePayTransactionInsight.Location.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ApplePayTransactionInsight.Location(0) + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_1B76EB62C()
{
  v1 = 0x656475746974616CLL;
  v2 = *v0;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v2 != 4)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6564757469746C61;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B76EB6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76F2520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76EB71C(uint64_t a1)
{
  v2 = sub_1B76F01D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76EB758(uint64_t a1)
{
  v2 = sub_1B76F01D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ApplePayTransactionInsight.Location.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BE20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76F01D4();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F98();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B7801F98();
    v8[13] = 2;
    sub_1B7801F98();
    v8[12] = 3;
    sub_1B7801F98();
    v8[11] = 4;
    sub_1B7801F98();
    type metadata accessor for ApplePayTransactionInsight.Location(0);
    v8[10] = 5;
    sub_1B77FF988();
    sub_1B71A72B0(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ApplePayTransactionInsight.Location.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1B77FF988();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BE30);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ApplePayTransactionInsight.Location(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B76F01D4();
  v31 = v8;
  sub_1B78023C8();
  if (!v2)
  {
    v13 = v6;
    v14 = v28;
    v15 = v29;
    v38 = 0;
    sub_1B7801E18();
    *v11 = v16;
    v37 = 1;
    sub_1B7801E18();
    v17 = v14;
    *(v11 + 1) = v18;
    v36 = 2;
    sub_1B7801E18();
    *(v11 + 2) = v19;
    v35 = 3;
    sub_1B7801E18();
    *(v11 + 3) = v21;
    v34 = 4;
    sub_1B7801E18();
    *(v11 + 4) = v22;
    v33 = 5;
    sub_1B71A72B0(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v26 = v13;
    v24 = v30;
    v23 = v31;
    sub_1B7801E48();
    (*(v17 + 8))(v23, v24);
    (*(v15 + 32))(&v11[*(v9 + 36)], v26, v4);
    sub_1B76F0228(v11, v27);
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t ApplePayTransactionInsight.Rewards.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = *(v1 + 32);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 ApplePayTransactionInsight.Rewards.amount.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1B76EBF80()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

uint64_t sub_1B76EBFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B788B140 == a2)
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

uint64_t sub_1B76EC09C(uint64_t a1)
{
  v2 = sub_1B76F028C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76EC0D8(uint64_t a1)
{
  v2 = sub_1B76F028C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ApplePayTransactionInsight.Rewards.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BE38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v19 = *(v1 + 4);
  v20 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7215720(&v17, &v14);
  sub_1B76F028C();
  sub_1B78023F8();
  v14 = v17;
  v15 = v18;
  v16 = v19;
  v13 = 0;
  sub_1B7215044();
  sub_1B7801FC8();
  v11[0] = v14;
  v11[1] = v15;
  v12 = v16;
  sub_1B721722C(v11);
  if (!v2)
  {
    v10[15] = v20;
    v10[14] = 1;
    sub_1B76F02E0();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ApplePayTransactionInsight.Rewards.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BE50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7 - 16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76F028C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_1B72153F8();
  sub_1B7801E48();
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = 1;
  sub_1B76F0334();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v9 = v24;
  *&v13[16] = v22;
  v10 = v21;
  *v13 = v21;
  v12 = v20;
  v13[24] = v24;
  *a2 = v20;
  a2[1] = v10;
  *(a2 + 25) = *&v13[9];
  sub_1B748D148(&v12, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v14[0] = v20;
  v14[1] = v21;
  v15 = v22;
  v16 = v9;
  return sub_1B76F0388(v14);
}

uint64_t ApplePayTransactionInsight.paymentHash.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ApplePayTransactionInsight.paymentHash.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 24));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantRawName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 28));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantRawName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.industryCategory.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 32));

  return v1;
}

uint64_t ApplePayTransactionInsight.industryCategory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.industryCode.setter(int a1)
{
  result = type metadata accessor for ApplePayTransactionInsight(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 40));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantCountryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 44));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.terminalIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 48));

  return v1;
}

uint64_t ApplePayTransactionInsight.terminalIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantAdditionalData.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 52));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantAdditionalData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.paymentNetwork.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 56));

  return v1;
}

uint64_t ApplePayTransactionInsight.paymentNetwork.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.tokenType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ApplePayTransactionInsight(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t ApplePayTransactionInsight.tokenType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ApplePayTransactionInsight(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t ApplePayTransactionInsight.isCoarseLocation.setter(char a1)
{
  result = type metadata accessor for ApplePayTransactionInsight(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 72));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantRawCANL.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 76));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantRawCANL.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantRawCity.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 80));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantRawCity.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantRawState.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 84));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantRawState.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantRawCountry.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 88));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantRawCountry.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 88));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantCity.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 92));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantCity.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 92));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantZip.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 96));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantZip.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 96));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantState.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 100));

  return v1;
}

uint64_t ApplePayTransactionInsight.merchantState.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 100));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.merchantCleanConfidenceLevel.setter(int a1)
{
  result = type metadata accessor for ApplePayTransactionInsight(0);
  v4 = v1 + *(result + 104);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t ApplePayTransactionInsight.rewards.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ApplePayTransactionInsight(0) + 108);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

__n128 ApplePayTransactionInsight.rewards.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for ApplePayTransactionInsight(0) + 108);

  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t ApplePayTransactionInsight.adamIdentifier.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ApplePayTransactionInsight(0);
  v6 = v2 + *(result + 112);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ApplePayTransactionInsight.webMerchantIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 120));

  return v1;
}

uint64_t ApplePayTransactionInsight.webMerchantIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 120));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.webMerchantName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ApplePayTransactionInsight(0) + 124));

  return v1;
}

uint64_t ApplePayTransactionInsight.webMerchantName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ApplePayTransactionInsight(0) + 124));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ApplePayTransactionInsight.isIssuerInstallmentTransaction.setter(char a1)
{
  result = type metadata accessor for ApplePayTransactionInsight(0);
  *(v1 + *(result + 128)) = a1;
  return result;
}

unint64_t sub_1B76EDE20(char a1)
{
  result = 0x48746E656D796170;
  switch(a1)
  {
    case 1:
      result = 0x746361736E617274;
      break;
    case 2:
    case 3:
    case 6:
    case 15:
    case 16:
    case 19:
    case 20:
    case 21:
      result = 0x746E61686372656DLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7972747375646E69;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
    case 14:
    case 18:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x4E746E656D796170;
      break;
    case 11:
      result = 0x7079546E656B6F74;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E6F697461636F6CLL;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0x73647261776572;
      break;
    case 24:
      result = 0x6E6564496D616461;
      break;
    case 25:
      result = 0x4C5255626577;
      break;
    case 26:
      result = 0xD000000000000015;
      break;
    case 27:
      result = 0x686372654D626577;
      break;
    case 28:
    case 29:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B76EE140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76F2728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76EE168(uint64_t a1)
{
  v2 = sub_1B76F1908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76EE1A4(uint64_t a1)
{
  v2 = sub_1B76F1908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ApplePayTransactionInsight.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BE60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76F1908();
  sub_1B78023F8();
  LOBYTE(v15[0]) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v9 = type metadata accessor for ApplePayTransactionInsight(0);
    LOBYTE(v15[0]) = 1;
    sub_1B77FF988();
    sub_1B71A72B0(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    LOBYTE(v15[0]) = 2;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 3;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 4;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 5;
    sub_1B7801F48();
    LOBYTE(v15[0]) = 6;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 7;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 8;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 9;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 10;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = *(v3 + *(v9 + 60));
    v18 = 11;
    sub_1B76F195C();
    sub_1B7801FC8();
    LOBYTE(v15[0]) = 12;
    sub_1B7801F08();
    LOBYTE(v15[0]) = 13;
    type metadata accessor for ApplePayTransactionInsight.Location(0);
    sub_1B71A72B0(&qword_1EB99BE78, type metadata accessor for ApplePayTransactionInsight.Location);
    sub_1B7801F38();
    LOBYTE(v15[0]) = 14;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 15;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 16;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 17;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 18;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 19;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 20;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 21;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 22;
    sub_1B7801F48();
    v11 = v3 + *(v9 + 108);
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 16);
    v15[0] = *v11;
    v15[1] = v14;
    v16 = v12;
    v17 = v13;
    v18 = 23;
    sub_1B76F19B0();

    sub_1B7801F38();

    LOBYTE(v15[0]) = 24;
    sub_1B7801F68();
    LOBYTE(v15[0]) = 25;
    sub_1B77FF4F8();
    sub_1B71A72B0(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801F38();
    LOBYTE(v15[0]) = 26;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 27;
    sub_1B7801EF8();
    LOBYTE(v15[0]) = 28;
    sub_1B7801F88();
    LOBYTE(v15[0]) = 29;
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ApplePayTransactionInsight.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v133 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v150 = &v124 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v145 = &v124 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BE88);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v12 = &v124 - v11;
  v13 = type metadata accessor for ApplePayTransactionInsight(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 20);
  v18 = sub_1B77FF988();
  v19 = *(*(v18 - 8) + 56);
  v152 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = v13[17];
  v21 = type metadata accessor for ApplePayTransactionInsight.Location(0);
  v22 = *(*(v21 - 8) + 56);
  v151 = v20;
  v22(v16 + v20, 1, 1, v21);
  v23 = v16 + v13[27];
  *(v23 + 25) = 0u;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v146 = v23;
  v24 = v13[29];
  v25 = sub_1B77FF4F8();
  v26 = *(*(v25 - 8) + 56);
  v147 = v24;
  v27 = v16 + v24;
  v28 = v25;
  v26(v27, 1, 1, v25);
  v29 = v13[33];
  v153 = v16;
  v148 = v29;
  v26(v16 + v29, 1, 1, v28);
  v30 = a1[3];
  v149 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1B76F1908();
  v31 = v154;
  sub_1B78023C8();
  if (v31)
  {
    v154 = v31;
    __swift_destroy_boxed_opaque_existential_1(v149);
    *&v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v150 = 0;
LABEL_4:
    v37 = v153;
    sub_1B7205418(v153 + v152, &qword_1EB98EBD0);

    sub_1B7205418(v37 + v151, &qword_1EB990980);

    sub_1B7205418(v37 + v147, &unk_1EB994C70);

    return sub_1B7205418(v37 + v148, &unk_1EB994C70);
  }

  v32 = v145;
  v33 = v150;
  v131 = v28;
  v132 = v13;
  LOBYTE(v155) = 0;
  v34 = v136;
  v35 = sub_1B7801DF8();
  v154 = 0;
  v39 = v153;
  *v153 = v35;
  v39[1] = v36;
  LOBYTE(v155) = 1;
  sub_1B71A72B0(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v40 = v32;
  v41 = v154;
  sub_1B7801DB8();
  v154 = v41;
  v42 = v135;
  if (v41)
  {
    goto LABEL_8;
  }

  sub_1B7213740(v40, v39 + v152, &qword_1EB98EBD0);
  LOBYTE(v155) = 2;
  v43 = v154;
  v44 = sub_1B7801D78();
  if (v43)
  {
    v154 = v43;
LABEL_8:
    (*(v42 + 8))(v12, v34);
    *&v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v150 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v149);

    goto LABEL_4;
  }

  v46 = v132;
  v47 = (v39 + v132[6]);
  *v47 = v44;
  v47[1] = v45;
  v126 = v45;
  LOBYTE(v155) = 3;
  v48 = sub_1B7801D78();
  v49 = (v39 + v46[7]);
  *v49 = v48;
  v49[1] = v50;
  LOBYTE(v155) = 4;
  v51 = sub_1B7801D78();
  v52 = (v39 + v46[8]);
  *v52 = v51;
  v52[1] = v53;
  v127 = v53;
  LOBYTE(v155) = 5;
  v54 = sub_1B7801DC8();
  v55 = v39 + v46[9];
  *v55 = v54;
  v55[2] = BYTE2(v54) & 1;
  LOBYTE(v155) = 6;
  v56 = sub_1B7801D78();
  v57 = (v39 + v46[10]);
  *v57 = v56;
  v57[1] = v58;
  v125 = v58;
  LOBYTE(v155) = 7;
  v59 = sub_1B7801D78();
  v60 = (v153 + v46[11]);
  *v60 = v59;
  v60[1] = v61;
  v128 = v61;
  LOBYTE(v155) = 8;
  v62 = sub_1B7801D78();
  v154 = 0;
  v63 = (v153 + v46[12]);
  *v63 = v62;
  v63[1] = v64;
  LOBYTE(v155) = 9;
  v65 = v12;
  v66 = sub_1B7801D78();
  v130 = v67;
  v154 = 0;
  v68 = (v153 + v132[13]);
  *v68 = v66;
  v68[1] = v67;
  LOBYTE(v155) = 10;
  v69 = sub_1B7801D78();
  v129 = v70;
  v154 = 0;
  v71 = (v153 + v132[14]);
  *v71 = v69;
  v71[1] = v70;
  v159 = 11;
  sub_1B76F1A04();
  v72 = v154;
  sub_1B7801E48();
  v154 = v72;
  if (v72 || (*(v153 + v132[15]) = v155, LOBYTE(v155) = 12, v73 = sub_1B7801D88(), v154 = 0, *(v153 + v132[16]) = v73, LOBYTE(v155) = 13, sub_1B71A72B0(&qword_1EB99BE98, type metadata accessor for ApplePayTransactionInsight.Location), v74 = v154, sub_1B7801DB8(), (v154 = v74) != 0) || (sub_1B7213740(v33, v153 + v151, &qword_1EB990980), LOBYTE(v155) = 14, v75 = v154, v76 = sub_1B7801D78(), v150 = v77, (v154 = v75) != 0))
  {
    (*(v135 + 8))(v12, v136);
    *&v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v150 = 0;
    goto LABEL_9;
  }

  v78 = (v153 + v132[18]);
  v79 = v150;
  *v78 = v76;
  v78[1] = v79;
  LOBYTE(v155) = 15;
  v80 = sub_1B7801D78();
  v145 = v81;
  v154 = 0;
  v82 = (v153 + v132[19]);
  *v82 = v80;
  v82[1] = v81;
  LOBYTE(v155) = 16;
  v83 = sub_1B7801D78();
  v144 = v84;
  v154 = 0;
  v85 = (v153 + v132[20]);
  *v85 = v83;
  v85[1] = v84;
  LOBYTE(v155) = 17;
  v86 = sub_1B7801D78();
  v143 = v87;
  v154 = 0;
  v88 = (v153 + v132[21]);
  *v88 = v86;
  v88[1] = v87;
  LOBYTE(v155) = 18;
  v89 = sub_1B7801D78();
  v142 = v90;
  v154 = 0;
  v91 = (v153 + v132[22]);
  *v91 = v89;
  v91[1] = v90;
  LOBYTE(v155) = 19;
  v92 = sub_1B7801D78();
  v141 = v93;
  v154 = 0;
  v94 = (v153 + v132[23]);
  *v94 = v92;
  v94[1] = v93;
  LOBYTE(v155) = 20;
  v95 = sub_1B7801D78();
  v140 = v96;
  v154 = 0;
  v97 = (v153 + v132[24]);
  *v97 = v95;
  v97[1] = v96;
  LOBYTE(v155) = 21;
  v98 = sub_1B7801D78();
  v139 = v99;
  v154 = 0;
  v100 = (v153 + v132[25]);
  *v100 = v98;
  v100[1] = v99;
  LOBYTE(v155) = 22;
  v101 = sub_1B7801DC8();
  v154 = 0;
  v102 = v153 + v132[26];
  *v102 = v101;
  v102[2] = BYTE2(v101) & 1;
  v159 = 23;
  sub_1B76F1A58();
  v103 = v154;
  sub_1B7801DB8();
  v154 = v103;
  if (v103 || (v104 = v157, v105 = v158, v106 = v146, v137 = v155, v124 = v156, , v107 = v124, *v106 = v137, *(v106 + 1) = v107, *(v106 + 4) = v104, v106[40] = v105, LOBYTE(v155) = 24, v108 = v154, v109 = sub_1B7801DE8(), (v154 = v108) != 0) || (v111 = v153 + v132[28], *v111 = v109, v111[8] = v110 & 1, LOBYTE(v155) = 25, sub_1B71A72B0(&qword_1EB98F730, MEMORY[0x1E6968FB0]), v112 = v154, sub_1B7801DB8(), (v154 = v112) != 0) || (sub_1B7213740(v138, v153 + v147, &unk_1EB994C70), LOBYTE(v155) = 26, v113 = v154, v114 = sub_1B7801D78(), v138 = v115, (v154 = v113) != 0))
  {
    (*(v135 + 8))(v65, v136);
    *&v137 = 0;
    v138 = 0;
    goto LABEL_9;
  }

  v116 = (v153 + v132[30]);
  v117 = v138;
  *v116 = v114;
  v116[1] = v117;
  LOBYTE(v155) = 27;
  v118 = sub_1B7801D78();
  *&v137 = v119;
  v154 = 0;
  v120 = (v153 + v132[31]);
  *v120 = v118;
  v120[1] = v119;
  LOBYTE(v155) = 28;
  v121 = sub_1B7801E08();
  v154 = 0;
  *(v153 + v132[32]) = v121 & 1;
  LOBYTE(v155) = 29;
  v122 = v136;
  sub_1B7801DB8();
  (*(v135 + 8))(v65, v122);
  v154 = 0;
  v123 = v153;
  sub_1B7213740(v133, v153 + v148, &unk_1EB994C70);
  sub_1B76F1AAC(v123, v134);
  __swift_destroy_boxed_opaque_existential_1(v149);
  return sub_1B76F1B10(v123, type metadata accessor for ApplePayTransactionInsight);
}

void ApplePayTransactionInsight.Location.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  [a1 coordinate];
  v5 = v4;
  [a1 coordinate];
  v7 = v6;
  [a1 altitude];
  v9 = v8;
  [a1 horizontalAccuracy];
  v11 = v10;
  [a1 verticalAccuracy];
  v13 = v12;
  v14 = [a1 timestamp];
  type metadata accessor for ApplePayTransactionInsight.Location(0);
  sub_1B77FF928();

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
}

BOOL _s10FinanceKit26ApplePayTransactionInsightV7RewardsV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v13 = *a1;
  v14[0] = v2;
  *&v14[1] = *(a1 + 4);
  v3 = *(a1 + 40);
  v4 = a2[1];
  v15 = *a2;
  v16[0] = v4;
  *&v16[1] = *(a2 + 4);
  v5 = *(a2 + 40);
  v6 = LODWORD(v14[0]);
  v7 = v4;
  v8 = v13;
  v9 = v15;
  sub_1B7215720(&v13, v12);
  sub_1B7215720(&v15, v12);
  if ((MEMORY[0x1B8CA5970](v8, *(&v8 + 1), v6, v9, *(&v9 + 1), v7) & 1) == 0)
  {
    sub_1B721722C(&v15);
    sub_1B721722C(&v13);
    return 0;
  }

  if (*(v14 + 8) == *(v16 + 8))
  {
    sub_1B721722C(&v15);
    sub_1B721722C(&v13);
  }

  else
  {
    v11 = sub_1B78020F8();
    sub_1B721722C(&v15);
    sub_1B721722C(&v13);
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  return v3 == v5;
}

uint64_t _s10FinanceKit26ApplePayTransactionInsightV8LocationV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for ApplePayTransactionInsight.Location(0);

  return sub_1B77FF918();
}

unint64_t sub_1B76F01D4()
{
  result = qword_1EB99BE28;
  if (!qword_1EB99BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE28);
  }

  return result;
}

uint64_t sub_1B76F0228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplePayTransactionInsight.Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B76F028C()
{
  result = qword_1EB99BE40;
  if (!qword_1EB99BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE40);
  }

  return result;
}

unint64_t sub_1B76F02E0()
{
  result = qword_1EB99BE48;
  if (!qword_1EB99BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE48);
  }

  return result;
}

unint64_t sub_1B76F0334()
{
  result = qword_1EB99BE58;
  if (!qword_1EB99BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE58);
  }

  return result;
}

BOOL _s10FinanceKit26ApplePayTransactionInsightV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v206 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v204 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v201 = &v198 - v10;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  v11 = MEMORY[0x1EEE9AC00](v203);
  v205 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v202 = &v198 - v13;
  v211 = type metadata accessor for ApplePayTransactionInsight.Location(0);
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v207 = (&v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v209 = (&v198 - v16);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BF70);
  MEMORY[0x1EEE9AC00](v208);
  v212 = &v198 - v17;
  v18 = sub_1B77FF988();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v198 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v198 - v26;
  v28 = *a1;
  v29 = a1[1];
  v214 = a1;
  v30 = *a2;
  v31 = a2[1];
  v215 = a2;
  if ((v28 != v30 || v29 != v31) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v199 = v6;
  v200 = v4;
  v213 = type metadata accessor for ApplePayTransactionInsight(0);
  v32 = v213[5];
  v33 = *(v25 + 48);
  v34 = v214;
  sub_1B7205588(v214 + v32, v27, &qword_1EB98EBD0);
  v35 = v215 + v32;
  v36 = v215;
  sub_1B7205588(v35, &v27[v33], &qword_1EB98EBD0);
  v37 = *(v19 + 48);
  if (v37(v27, 1, v18) == 1)
  {
    if (v37(&v27[v33], 1, v18) == 1)
    {
      sub_1B7205418(v27, &qword_1EB98EBD0);
      goto LABEL_14;
    }

LABEL_9:
    v38 = &qword_1EB98FCE0;
    v39 = v27;
LABEL_10:
    sub_1B7205418(v39, v38);
    return 0;
  }

  sub_1B7205588(v27, v24, &qword_1EB98EBD0);
  if (v37(&v27[v33], 1, v18) == 1)
  {
    (*(v19 + 8))(v24, v18);
    goto LABEL_9;
  }

  (*(v19 + 32))(v21, &v27[v33], v18);
  sub_1B71A72B0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v41 = sub_1B7800828();
  v42 = *(v19 + 8);
  v42(v21, v18);
  v42(v24, v18);
  sub_1B7205418(v27, &qword_1EB98EBD0);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v43 = v213;
  v44 = v213[6];
  v45 = (v34 + v44);
  v46 = *(v34 + v44 + 8);
  v47 = (v36 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v49 = v43[7];
  v50 = (v34 + v49);
  v51 = *(v34 + v49 + 8);
  v52 = (v36 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v54 = v43[8];
  v55 = (v34 + v54);
  v56 = *(v34 + v54 + 8);
  v57 = (v36 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58 || (*v55 != *v57 || v56 != v58) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v58)
  {
    return 0;
  }

  v59 = v43[9];
  v60 = (v34 + v59);
  v61 = *(v34 + v59 + 2);
  v62 = (v36 + v59);
  v63 = *(v36 + v59 + 2);
  if (v61)
  {
    if (!v63)
    {
      return 0;
    }
  }

  else
  {
    if (*v60 != *v62)
    {
      LOBYTE(v63) = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  v64 = v43[10];
  v65 = (v34 + v64);
  v66 = *(v34 + v64 + 8);
  v67 = (v36 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v69 = v43[11];
  v70 = (v34 + v69);
  v71 = *(v34 + v69 + 8);
  v72 = (v36 + v69);
  v73 = v72[1];
  if (v71)
  {
    if (!v73 || (*v70 != *v72 || v71 != v73) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v73)
  {
    return 0;
  }

  v74 = v43[12];
  v75 = (v34 + v74);
  v76 = *(v34 + v74 + 8);
  v77 = (v36 + v74);
  v78 = v77[1];
  if (v76)
  {
    if (!v78 || (*v75 != *v77 || v76 != v78) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v78)
  {
    return 0;
  }

  v79 = v43[13];
  v80 = (v34 + v79);
  v81 = *(v34 + v79 + 8);
  v82 = (v36 + v79);
  v83 = v82[1];
  if (v81)
  {
    if (!v83 || (*v80 != *v82 || v81 != v83) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v83)
  {
    return 0;
  }

  v84 = v43[14];
  v85 = (v34 + v84);
  v86 = *(v34 + v84 + 8);
  v87 = (v36 + v84);
  v88 = v87[1];
  if (v86)
  {
    if (!v88 || (*v85 != *v87 || v86 != v88) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v88)
  {
    return 0;
  }

  if (*(v34 + v43[15]) != *(v36 + v43[15]))
  {
    return 0;
  }

  v89 = v43[16];
  v90 = *(v34 + v89);
  v91 = *(v36 + v89);
  if (v90 == 2)
  {
    if (v91 != 2)
    {
      return 0;
    }

LABEL_82:
    v92 = v213[17];
    v93 = *(v208 + 48);
    v94 = v212;
    sub_1B7205588(v214 + v92, v212, &qword_1EB990980);
    sub_1B7205588(v215 + v92, v94 + v93, &qword_1EB990980);
    v95 = *(v210 + 48);
    if (v95(v94, 1, v211) == 1)
    {
      if (v95(v212 + v93, 1, v211) == 1)
      {
        sub_1B7205418(v212, &qword_1EB990980);
        goto LABEL_90;
      }
    }

    else
    {
      v96 = v212;
      sub_1B7205588(v212, v209, &qword_1EB990980);
      if (v95(v96 + v93, 1, v211) != 1)
      {
        v98 = v212;
        v99 = v212 + v93;
        v100 = v207;
        sub_1B76F0228(v99, v207);
        v101 = v209;
        v102 = _s10FinanceKit26ApplePayTransactionInsightV8LocationV2eeoiySbAE_AEtFZ_0(v209, v100);
        sub_1B76F1B10(v100, type metadata accessor for ApplePayTransactionInsight.Location);
        sub_1B76F1B10(v101, type metadata accessor for ApplePayTransactionInsight.Location);
        sub_1B7205418(v98, &qword_1EB990980);
        if ((v102 & 1) == 0)
        {
          return 0;
        }

LABEL_90:
        v103 = v213[18];
        v104 = (v214 + v103);
        v105 = *(v214 + v103 + 8);
        v106 = (v215 + v103);
        v107 = v106[1];
        if (v105)
        {
          if (!v107 || (*v104 != *v106 || v105 != v107) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v107)
        {
          return 0;
        }

        v108 = v213[19];
        v109 = (v214 + v108);
        v110 = *(v214 + v108 + 8);
        v111 = (v215 + v108);
        v112 = v111[1];
        if (v110)
        {
          if (!v112 || (*v109 != *v111 || v110 != v112) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v112)
        {
          return 0;
        }

        v113 = v213[20];
        v114 = (v214 + v113);
        v115 = *(v214 + v113 + 8);
        v116 = (v215 + v113);
        v117 = v116[1];
        if (v115)
        {
          if (!v117 || (*v114 != *v116 || v115 != v117) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v117)
        {
          return 0;
        }

        v118 = v213[21];
        v119 = (v214 + v118);
        v120 = *(v214 + v118 + 8);
        v121 = (v215 + v118);
        v122 = v121[1];
        if (v120)
        {
          if (!v122 || (*v119 != *v121 || v120 != v122) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v122)
        {
          return 0;
        }

        v123 = v213[22];
        v124 = (v214 + v123);
        v125 = *(v214 + v123 + 8);
        v126 = (v215 + v123);
        v127 = v126[1];
        if (v125)
        {
          if (!v127 || (*v124 != *v126 || v125 != v127) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v127)
        {
          return 0;
        }

        v128 = v213[23];
        v129 = (v214 + v128);
        v130 = *(v214 + v128 + 8);
        v131 = (v215 + v128);
        v132 = v131[1];
        if (v130)
        {
          if (!v132 || (*v129 != *v131 || v130 != v132) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v132)
        {
          return 0;
        }

        v133 = v213[24];
        v134 = (v214 + v133);
        v135 = *(v214 + v133 + 8);
        v136 = (v215 + v133);
        v137 = v136[1];
        if (v135)
        {
          if (!v137 || (*v134 != *v136 || v135 != v137) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v137)
        {
          return 0;
        }

        v138 = v213[25];
        v139 = (v214 + v138);
        v140 = *(v214 + v138 + 8);
        v141 = (v215 + v138);
        v142 = v141[1];
        if (v140)
        {
          if (!v142 || (*v139 != *v141 || v140 != v142) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v142)
        {
          return 0;
        }

        v143 = v213[26];
        v144 = (v214 + v143);
        v145 = *(v214 + v143 + 2);
        v146 = (v215 + v143);
        v147 = *(v215 + v143 + 2);
        if (v145)
        {
          if (!v147)
          {
            return 0;
          }
        }

        else
        {
          if (*v144 != *v146)
          {
            LOBYTE(v147) = 1;
          }

          if (v147)
          {
            return 0;
          }
        }

        v148 = v213[27];
        v149 = v214 + v148;
        v150 = *(v214 + v148 + 32);
        v151 = v215 + v148;
        v152 = *(v151 + 4);
        if (v150)
        {
          v153 = *v151;
          v154 = *(v151 + 1);
          v155 = v151[40];
          v156 = v149[40];
          v157 = *(v149 + 1);
          v222 = *v149;
          *v223 = v157;
          *&v223[16] = v150;
          v223[24] = v156;
          if (v152)
          {
            v216 = v153;
            *v217 = v154;
            *&v217[16] = v152;
            v217[24] = v155;

            swift_bridgeObjectRetain_n();
            v158 = _s10FinanceKit26ApplePayTransactionInsightV7RewardsV2eeoiySbAE_AEtFZ_0(&v222, &v216);
            v218 = v216;
            v219[0] = *v217;
            *(v219 + 9) = *&v217[9];
            sub_1B76F0388(&v218);
            v220 = v222;
            *v221 = *v223;
            *&v221[9] = *&v223[9];
            sub_1B76F0388(&v220);

            if (!v158)
            {
              return 0;
            }

            goto LABEL_161;
          }

          v220 = v222;
          *v221 = *v223;
          *&v221[9] = *&v223[9];
          swift_bridgeObjectRetain_n();
          sub_1B76F0388(&v220);
        }

        else
        {
          if (!v152)
          {

LABEL_161:
            v159 = v213[28];
            v160 = (v214 + v159);
            v161 = *(v214 + v159 + 8);
            v162 = (v215 + v159);
            v163 = *(v215 + v159 + 8);
            if (v161)
            {
              if (!v163)
              {
                return 0;
              }
            }

            else
            {
              if (*v160 != *v162)
              {
                LOBYTE(v163) = 1;
              }

              if (v163)
              {
                return 0;
              }
            }

            v164 = v213[29];
            v165 = *(v203 + 48);
            v166 = v202;
            sub_1B7205588(v214 + v164, v202, &unk_1EB994C70);
            sub_1B7205588(v215 + v164, v166 + v165, &unk_1EB994C70);
            v167 = *(v206 + 48);
            if (v167(v166, 1, v200) == 1)
            {
              if (v167(v202 + v165, 1, v200) == 1)
              {
                sub_1B7205418(v202, &unk_1EB994C70);
LABEL_174:
                v176 = v213[30];
                v177 = (v214 + v176);
                v178 = *(v214 + v176 + 8);
                v179 = (v215 + v176);
                v180 = v179[1];
                if (v178)
                {
                  if (!v180 || (*v177 != *v179 || v178 != v180) && (sub_1B78020F8() & 1) == 0)
                  {
                    return 0;
                  }
                }

                else if (v180)
                {
                  return 0;
                }

                v181 = v213[31];
                v182 = (v214 + v181);
                v183 = *(v214 + v181 + 8);
                v184 = (v215 + v181);
                v185 = v184[1];
                if (v183)
                {
                  if (!v185 || (*v182 != *v184 || v183 != v185) && (sub_1B78020F8() & 1) == 0)
                  {
                    return 0;
                  }
                }

                else if (v185)
                {
                  return 0;
                }

                if (*(v214 + v213[32]) != *(v215 + v213[32]))
                {
                  return 0;
                }

                v186 = v213[33];
                v187 = *(v203 + 48);
                v188 = v205;
                sub_1B7205588(v214 + v186, v205, &unk_1EB994C70);
                sub_1B7205588(v215 + v186, v188 + v187, &unk_1EB994C70);
                if (v167(v188, 1, v200) == 1)
                {
                  if (v167(v205 + v187, 1, v200) == 1)
                  {
                    sub_1B7205418(v205, &unk_1EB994C70);
                    return 1;
                  }
                }

                else
                {
                  v189 = v205;
                  sub_1B7205588(v205, v204, &unk_1EB994C70);
                  if (v167(v189 + v187, 1, v200) != 1)
                  {
                    v190 = v206;
                    v191 = v205;
                    v192 = v205 + v187;
                    v193 = v199;
                    v194 = v200;
                    (*(v206 + 32))(v199, v192, v200);
                    sub_1B71A72B0(&qword_1EB990310, MEMORY[0x1E6968FB0]);
                    v195 = v204;
                    v196 = sub_1B7800828();
                    v197 = *(v190 + 8);
                    v197(v193, v194);
                    v197(v195, v194);
                    sub_1B7205418(v191, &unk_1EB994C70);
                    return (v196 & 1) != 0;
                  }

                  (*(v206 + 8))(v204, v200);
                }

                v38 = &qword_1EB991C30;
                v97 = &v223[8];
                goto LABEL_88;
              }
            }

            else
            {
              v168 = v202;
              sub_1B7205588(v202, v201, &unk_1EB994C70);
              if (v167(v168 + v165, 1, v200) != 1)
              {
                v169 = v206;
                v170 = v202;
                v171 = v199;
                v172 = v200;
                (*(v206 + 32))(v199, v202 + v165, v200);
                sub_1B71A72B0(&qword_1EB990310, MEMORY[0x1E6968FB0]);
                v173 = v201;
                v174 = sub_1B7800828();
                v175 = *(v169 + 8);
                v175(v171, v172);
                v175(v173, v172);
                sub_1B7205418(v170, &unk_1EB994C70);
                if ((v174 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_174;
              }

              (*(v206 + 8))(v201, v200);
            }

            v38 = &qword_1EB991C30;
            v97 = &v222;
LABEL_88:
            v39 = *(v97 - 32);
            goto LABEL_10;
          }
        }

        return 0;
      }

      sub_1B76F1B10(v209, type metadata accessor for ApplePayTransactionInsight.Location);
    }

    v38 = &qword_1EB99BF70;
    v97 = &v224;
    goto LABEL_88;
  }

  result = 0;
  if (v91 != 2 && ((v91 ^ v90) & 1) == 0)
  {
    goto LABEL_82;
  }

  return result;
}

unint64_t sub_1B76F1908()
{
  result = qword_1EB99BE68;
  if (!qword_1EB99BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE68);
  }

  return result;
}

unint64_t sub_1B76F195C()
{
  result = qword_1EB99BE70;
  if (!qword_1EB99BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE70);
  }

  return result;
}

unint64_t sub_1B76F19B0()
{
  result = qword_1EB99BE80;
  if (!qword_1EB99BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE80);
  }

  return result;
}

unint64_t sub_1B76F1A04()
{
  result = qword_1EB99BE90;
  if (!qword_1EB99BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BE90);
  }

  return result;
}

unint64_t sub_1B76F1A58()
{
  result = qword_1EB99BEA0;
  if (!qword_1EB99BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BEA0);
  }

  return result;
}

uint64_t sub_1B76F1AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplePayTransactionInsight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76F1B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B76F1B74()
{
  result = qword_1EB99BEA8;
  if (!qword_1EB99BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BEA8);
  }

  return result;
}

unint64_t sub_1B76F1BFC()
{
  result = qword_1EB99BEC0;
  if (!qword_1EB99BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BEC0);
  }

  return result;
}

void sub_1B76F1CA8()
{
  sub_1B76F1ED8(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EB99BEE8);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EDAFC578);
        if (v3 <= 0x3F)
        {
          sub_1B76F1ED8(319, &qword_1EB99BEF0, type metadata accessor for ApplePayTransactionInsight.Location);
          if (v4 <= 0x3F)
          {
            sub_1B72F2CB8(319, &qword_1EB99BEF8);
            if (v5 <= 0x3F)
            {
              sub_1B72F2CB8(319, &qword_1EB99BF00);
              if (v6 <= 0x3F)
              {
                sub_1B76F1ED8(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B76F1ED8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B76F1F54()
{
  result = sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for ApplePayTransactionInsight.Rewards(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for ApplePayTransactionInsight.Rewards(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ApplePayTransactionInsight.Rewards(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for ApplePayTransactionInsight.Rewards(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplePayTransactionInsight.Rewards(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B76F220C()
{
  result = qword_1EB99BF18;
  if (!qword_1EB99BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF18);
  }

  return result;
}

unint64_t sub_1B76F2264()
{
  result = qword_1EB99BF20;
  if (!qword_1EB99BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF20);
  }

  return result;
}

unint64_t sub_1B76F22BC()
{
  result = qword_1EB99BF28;
  if (!qword_1EB99BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF28);
  }

  return result;
}

unint64_t sub_1B76F2314()
{
  result = qword_1EB99BF30;
  if (!qword_1EB99BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF30);
  }

  return result;
}

unint64_t sub_1B76F236C()
{
  result = qword_1EB99BF38;
  if (!qword_1EB99BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF38);
  }

  return result;
}

unint64_t sub_1B76F23C4()
{
  result = qword_1EB99BF40;
  if (!qword_1EB99BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF40);
  }

  return result;
}

unint64_t sub_1B76F241C()
{
  result = qword_1EB99BF48;
  if (!qword_1EB99BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF48);
  }

  return result;
}

unint64_t sub_1B76F2474()
{
  result = qword_1EB99BF50;
  if (!qword_1EB99BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF50);
  }

  return result;
}

unint64_t sub_1B76F24CC()
{
  result = qword_1EB99BF58;
  if (!qword_1EB99BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF58);
  }

  return result;
}

uint64_t sub_1B76F2520(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78851E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7885200 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B76F2728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x48746E656D796170 && a2 == 0xEB00000000687361;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657461446E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC000000656D614ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF656D614E776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7880A40 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972747375646E69 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC00000065707954 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7880A80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7880AA0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7880AC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E746E656D796170 && a2 == 0xEE006B726F777465 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7079546E656B6F74 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B78851A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7876A70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF4C4E4143776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF79746943776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7880BC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7880BE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC00000079746943 || (sub_1B78020F8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEB0000000070695ALL || (sub_1B78020F8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xED00006574617453 || (sub_1B78020F8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B78851C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x73647261776572 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6E6564496D616461 && a2 == 0xEE00726569666974 || (sub_1B78020F8() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7880CB0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x686372654D626577 && a2 == 0xEF656D614E746E61 || (sub_1B78020F8() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B7880CE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B7880D00 == a2)
  {

    return 29;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

unint64_t sub_1B76F3094()
{
  result = qword_1EB99BF60;
  if (!qword_1EB99BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF60);
  }

  return result;
}

unint64_t sub_1B76F30E8()
{
  result = qword_1EB99BF68;
  if (!qword_1EB99BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BF68);
  }

  return result;
}

uint64_t sub_1B76F314C()
{
  *(v1 + 48) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76F31E8, 0, 0);
}

uint64_t sub_1B76F31E8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = *(v2 + 40);
  v4 = sub_1B7800DF8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = &unk_1B785F5C0;
  *(v5 + 24) = v2;
  swift_retain_n();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1B76F3340;
  v7 = v0[7];

  return (sub_1B76F3574)(v7, &unk_1B785F5D0, v5, v3);
}

uint64_t sub_1B76F3340(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B76F3464, 0, 0);
}

uint64_t sub_1B76F3464()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 56);
    *(v0 + 40) = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    swift_willThrowTypedImpl();

    sub_1B76A7B5C(v1, 1);
    sub_1B7205418(v2, &unk_1EB99C280);
  }

  else
  {
    v5 = *(v0 + 56);

    sub_1B7205418(v5, &unk_1EB99C280);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B76F3574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  v4[16] = swift_task_alloc();
  v5 = sub_1B7800DF8();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76F3670, 0, 0);
}

uint64_t sub_1B76F3670()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_1B733539C(v0[12], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[16];
    v6 = v0[17];
    sub_1B7800EA8();
    if (v4(v5, 1, v6) != 1)
    {
      sub_1B7205418(v0[16], &unk_1EB99C280);
    }
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B76F3778, 0, 0);
}

uint64_t sub_1B76F3778()
{
  v1 = v0[19];
  v2 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1B76F38B8;
  v3 = swift_continuation_init();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v6));
  sub_1B764D250(v2 + v5);
  os_unfair_lock_unlock((v2 + v6));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B76F38B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B76F3998, 0, 0);
}

uint64_t sub_1B76F3998()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BF78);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  v4 = *(v0 + 104);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1B76F3AAC;

  return MEMORY[0x1EEE6DBF8](v0 + 80);
}

uint64_t sub_1B76F3AAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B76F3BC4, 0, 0);
}

uint64_t sub_1B76F3BC4()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1B76F3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76F3D04, 0, 0);
}

uint64_t sub_1B76F3D04()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = sub_1B7800DF8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v2;

  sub_1B76F4324(v1, &unk_1B785F610, v8);
  sub_1B7205418(v1, &unk_1EB99C280);

  return MEMORY[0x1EEE6DFA0](sub_1B76F3E68, 0, 0);
}

uint64_t sub_1B76F3E68()
{
  v1 = v0 + 16;
  v2 = *(v0 + 128);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 89;
  *(v0 + 24) = sub_1B76F3F9C;
  v3 = swift_continuation_init();
  v4 = *v2;
  v5 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  *(v0 + 144) = v5;
  v6 = *(v4 + 48);
  *(v0 + 92) = v6;
  v7 = (v6 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v7));
  sub_1B764DF90(v2 + v5, v3);
  os_unfair_lock_unlock((v2 + v7));

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1B76F3F9C()
{
  *(*v0 + 90) = *(*v0 + 89);

  return MEMORY[0x1EEE6DFA0](sub_1B76F4080, 0, 0);
}

uint64_t sub_1B76F4080()
{
  if (*(v0 + 90) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BF78);
    sub_1B7800D48();
  }

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BF80);
  *v1 = v0;
  v1[1] = sub_1B76F4170;

  return MEMORY[0x1EEE6D8A0](v0 + 80, 0, 0, v2);
}

uint64_t sub_1B76F4170()
{

  return MEMORY[0x1EEE6DFA0](sub_1B76F426C, 0, 0);
}

void sub_1B76F426C()
{
  v1 = *(v0 + 88);
  if (v1 == 255)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 128);
    v3 = (*(v0 + 92) + 3) & 0x1FFFFFFFCLL;
    v4 = *(v0 + 80);
    os_unfair_lock_lock((v2 + v3));
    sub_1B764C070();
    os_unfair_lock_unlock((v2 + v3));

    v5 = *(v0 + 8);

    v5(v4, v1 & 1);
  }
}

uint64_t sub_1B76F4324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  sub_1B733539C(a1, v20 - v9);
  v11 = sub_1B7800DF8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &unk_1EB99C280);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1B7800CD8();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B7800DE8();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BF78);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1B76F453C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_1B7800DF8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = [*(v0 + 16) viewContext];
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v5;
  *(v0 + 32) = sub_1B759B5D0(0, 0, v3, &unk_1B785F650, v7);
}

uint64_t sub_1B76F4684()
{
  if (*(v0 + 32))
  {

    sub_1B7800E68();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1B76F4738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  v5[22] = swift_task_alloc();
  v6 = sub_1B77FEAA8();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996810);
  v5[26] = swift_task_alloc();
  v7 = sub_1B78013E8();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76F48C4, 0, 0);
}

uint64_t sub_1B76F48C4()
{
  v0[30] = [objc_opt_self() defaultCenter];
  v0[31] = sub_1B78013F8();

  sub_1B78013C8();
  swift_beginAccess();
  v0[32] = *MEMORY[0x1E695D4B8];
  v1 = sub_1B76F8670();
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1B76F49F0;
  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1B76F49F0()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1B76F51C0;
  }

  else
  {
    v2 = sub_1B76F4B04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B76F4B20()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 240);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v5 = *(v0 + 8);

    return v5();
  }

  (*(v3 + 32))(*(v0 + 200), v1, v2);
  v7 = sub_1B77FEA98();
  if (!v7)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_29;
  }

  v8 = v7;
  *(v0 + 112) = sub_1B7800868();
  *(v0 + 120) = v9;
  sub_1B78019E8();
  if (!*(v8 + 16) || (v10 = sub_1B7245898(v0 + 16), (v11 & 1) == 0))
  {

    sub_1B720494C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_27;
  }

  sub_1B719BDE4(*(v8 + 56) + 32 * v10, v0 + 56);
  sub_1B720494C(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_27:
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_29:
    sub_1B7205418(v0 + 56, &qword_1EB98FCB0);
LABEL_30:
    v29 = sub_1B76F8670();
    v30 = swift_task_alloc();
    *(v0 + 264) = v30;
    *v30 = v0;
    v30[1] = sub_1B76F49F0;
    v31 = *(v0 + 208);
    v32 = *(v0 + 216);

    return MEMORY[0x1EEE6D8C8](v31, v32, v29);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_30;
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = [*(v0 + 160) persistentStoreCoordinator];
  if (!v14)
  {
LABEL_51:
    v51 = *(v0 + 192);
    v50 = *(v0 + 200);
    v52 = *(v0 + 184);

    (*(v51 + 8))(v50, v52);
    goto LABEL_30;
  }

  v15 = v14;
  v16 = [v14 persistentStores];

  sub_1B7205540(0, &qword_1EDAFC540);
  v17 = sub_1B7800C38();

  v53 = v12;
  v54 = v13;
  if (v17 >> 62)
  {
    goto LABEL_49;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_50:

    goto LABEL_51;
  }

LABEL_13:
  v19 = 0;
  v55 = v18;
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1B8CA5DC0](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    *(v0 + 280) = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v18 = sub_1B7801958();
      if (!v18)
      {
        goto LABEL_50;
      }

      goto LABEL_13;
    }

    v23 = [v20 configurationName];
    v24 = sub_1B7800868();
    v26 = v25;

    if (v24 == 0x6C61636F4CLL && v26 == 0xE500000000000000)
    {
      break;
    }

    v28 = sub_1B78020F8();

    if (v28)
    {
      goto LABEL_34;
    }

    ++v19;
    if (v22 == v55)
    {
      goto LABEL_50;
    }
  }

LABEL_34:

  v33 = [v21 identifier];
  if (!v33)
  {

    goto LABEL_44;
  }

  v34 = v33;
  v35 = sub_1B7800868();
  v37 = v36;

  if (v53 == v35 && v54 == v37)
  {

    goto LABEL_40;
  }

  v38 = sub_1B78020F8();

  if ((v38 & 1) == 0)
  {
LABEL_44:
    v48 = *(v0 + 192);
    v47 = *(v0 + 200);
    v49 = *(v0 + 184);

    (*(v48 + 8))(v47, v49);
    goto LABEL_30;
  }

LABEL_40:
  Strong = swift_weakLoadStrong();
  *(v0 + 288) = Strong;
  if (!Strong)
  {

    goto LABEL_46;
  }

  v40 = *(v0 + 176);
  v41 = *(Strong + 40);
  v42 = Strong;
  v43 = sub_1B7800DF8();
  (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
  v44 = swift_allocObject();
  *(v0 + 296) = v44;
  *(v44 + 16) = &unk_1B785F658;
  *(v44 + 24) = v42;
  swift_retain_n();
  v45 = swift_task_alloc();
  *(v0 + 304) = v45;
  *v45 = v0;
  v45[1] = sub_1B76F524C;
  v46 = *(v0 + 176);

  return sub_1B76F3574(v46, &unk_1B785F660, v44, v41);
}

uint64_t sub_1B76F51C0()
{
  *(v0 + 144) = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1B76F524C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B76F5370, 0, 0);
}

uint64_t sub_1B76F5370()
{
  v1 = *(v0 + 176);
  if (*(v0 + 320))
  {
    v2 = *(v0 + 312);
    *(v0 + 152) = v2;
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    swift_willThrowTypedImpl();

    sub_1B76A7B5C(v2, 1);
    sub_1B7205418(v1, &unk_1EB99C280);

    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 312);
    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EDAF6550);
    v6 = v2;
    v7 = sub_1B7800098();
    v8 = sub_1B78011D8();
    sub_1B76A7B5C(v4, 1);
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 312);
    v11 = *(v0 + 280);
    if (v9)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1B7198000, v7, v8, "Failed to apply remote changes: %@", v12, 0xCu);
      sub_1B7205418(v13, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
      MEMORY[0x1B8CA7A40](v12, -1, -1);

      sub_1B76A7B5C(v10, 1);
    }

    else
    {

      sub_1B76A7B5C(v10, 1);
    }
  }

  else
  {
    v16 = *(v0 + 280);

    sub_1B7205418(v1, &unk_1EB99C280);
  }

  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v17 = sub_1B76F8670();
  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  *v18 = v0;
  v18[1] = sub_1B76F49F0;
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);

  return MEMORY[0x1EEE6D8C8](v19, v20, v17);
}

uint64_t sub_1B76F564C(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_1B7801478();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76F5724, 0, 0);
}

uint64_t sub_1B76F5724()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v3 + 24);
  *(v0 + 80) = v4;
  v5 = *(v3 + 16);
  *(v0 + 88) = v5;
  v6 = v4;
  v7 = [v5 newBackgroundContext];
  *(v0 + 96) = v7;
  v8 = swift_allocObject();
  *(v0 + 104) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  *(v0 + 232) = *MEMORY[0x1E695D2B8];
  v9 = *(v2 + 104);
  *(v0 + 112) = v9;
  *(v0 + 120) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v1);
  v10 = v6;
  v7;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F180);
  *v11 = v0;
  v11[1] = sub_1B76F58AC;
  v13 = *(v0 + 72);

  return MEMORY[0x1EEDB6538](v0 + 16, v13, sub_1B76F7C58, v8, v12);
}

uint64_t sub_1B76F58AC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v2[17] = v0;

  v6 = *(v4 + 8);
  v2[18] = v6;
  v2[19] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  if (v0)
  {
    v7 = sub_1B76F64BC;
  }

  else
  {
    v7 = sub_1B76F5A4C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B76F5A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)@<X0>(uint64_t *a1@<X8>), void *a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  *(v5 + 160) = v6;
  if (v6 >> 62)
  {
    v7 = sub_1B7801958();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v5 + 168) = v7;
  v8 = *(v5 + 160);
  if (v7)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8CA5DC0](0);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x1EEDB6538](v7, v8, a3, a4, a5);
      }

      v9 = *(v8 + 32);
    }

    v10 = v9;
    *(v5 + 176) = v9;
    *(v5 + 184) = 1;
    v11 = *(v5 + 112);
    v12 = *(v5 + 232);
    v13 = *(v5 + 96);
    v14 = *(v5 + 64);
    v16 = *(v5 + 32);
    v15 = *(v5 + 40);
    v17 = swift_allocObject();
    *(v5 + 192) = v17;
    v17[2] = v16;
    v17[3] = v10;
    v17[4] = v13;
    v11(v14, v12, v15);
    v18 = v13;

    v19 = v10;
    v20 = swift_task_alloc();
    *(v5 + 200) = v20;
    a5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BF88);
    *v20 = v5;
    v20[1] = sub_1B76F5C80;
    v8 = *(v5 + 64);
    a3 = sub_1B76F7C90;
    v7 = v5 + 24;
    a4 = v17;

    return MEMORY[0x1EEDB6538](v7, v8, a3, a4, a5);
  }

  v21 = *(v5 + 96);
  v22 = *(v5 + 80);

  v23 = *(v5 + 8);

  return v23();
}

void sub_1B76F5C80()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 144))(*(v2 + 64), *(v2 + 40));

    MEMORY[0x1EEE6DFA0](sub_1B76F5DD0, 0, 0);
  }
}

uint64_t sub_1B76F5DD0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 232);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    *(v0 + 208) = [*(v0 + 88) viewContext];
    v7 = swift_allocObject();
    *(v0 + 216) = v7;
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    v2(v4, v3, v5);

    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = sub_1B76F6118;
    v9 = *(v0 + 56);
    v10 = sub_1B76F7CD4;
    v11 = MEMORY[0x1E69E7CA8] + 8;
    v12 = v7;
    goto LABEL_12;
  }

  v13 = *(v0 + 176);
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);
  v16 = *(v0 + 32);
  v17 = [v13 token];

  v18 = *(v16 + 24);
  *(v16 + 24) = v17;

  if (v14 != v15)
  {
    v23 = *(v0 + 184);
    v9 = *(v0 + 160);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8CA5DC0](*(v0 + 184));
    }

    else
    {
      if (v23 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v9 + 8 * v23 + 32);
    }

    v24 = v8;
    *(v0 + 176) = v8;
    *(v0 + 184) = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      v25 = *(v0 + 112);
      v26 = *(v0 + 232);
      v27 = *(v0 + 96);
      v28 = *(v0 + 64);
      v30 = *(v0 + 32);
      v29 = *(v0 + 40);
      v31 = swift_allocObject();
      *(v0 + 192) = v31;
      v31[2] = v30;
      v31[3] = v24;
      v31[4] = v27;
      v25(v28, v26, v29);
      v32 = v27;

      v33 = v24;
      v34 = swift_task_alloc();
      *(v0 + 200) = v34;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BF88);
      *v34 = v0;
      v34[1] = sub_1B76F5C80;
      v9 = *(v0 + 64);
      v10 = sub_1B76F7C90;
      v8 = (v0 + 24);
      v12 = v31;
LABEL_12:

      return MEMORY[0x1EEDB6538](v8, v9, v10, v12, v11);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return MEMORY[0x1EEDB6538](v8, v9, v10, v12, v11);
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 80);

  v21 = *(v0 + 8);

  return v21();
}

void sub_1B76F6118()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 208);
    (*(v2 + 144))(*(v2 + 56), *(v2 + 40));

    MEMORY[0x1EEE6DFA0](sub_1B76F6268, 0, 0);
  }
}

uint64_t sub_1B76F6268()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 32);
  v5 = [v1 token];

  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  if (v2 != v3)
  {
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8CA5DC0](*(v0 + 184));
    }

    else
    {
      if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(v16 + 8 * v15 + 32);
    }

    v17 = v7;
    *(v0 + 176) = v7;
    *(v0 + 184) = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      v18 = *(v0 + 112);
      v19 = *(v0 + 232);
      v20 = *(v0 + 96);
      v21 = *(v0 + 64);
      v23 = *(v0 + 32);
      v22 = *(v0 + 40);
      v24 = swift_allocObject();
      *(v0 + 192) = v24;
      v24[2] = v23;
      v24[3] = v17;
      v24[4] = v20;
      v18(v21, v19, v22);
      v25 = v20;

      v26 = v17;
      v27 = swift_task_alloc();
      *(v0 + 200) = v27;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BF88);
      *v27 = v0;
      v27[1] = sub_1B76F5C80;
      v16 = *(v0 + 64);
      v8 = sub_1B76F7C90;
      v7 = (v0 + 24);
      v9 = v24;

      return MEMORY[0x1EEDB6538](v7, v16, v8, v9, v10);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEDB6538](v7, v16, v8, v9, v10);
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1B76F64BC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B76F654C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B723838C;

  return sub_1B76F564C(a1, v1);
}

uint64_t sub_1B76F65E8(void *a1, void *a2)
{
  v4 = sub_1B77FEAA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 objectIDNotification];
  sub_1B77FEA88();

  v9 = sub_1B77FEA98();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    sub_1B76F69C0(a1, a2);
    v11 = v10;
    if ((v10 & 0xC000000000000001) != 0)
    {
      if (sub_1B7801958())
      {
LABEL_4:
        *&v23[0] = sub_1B7800868();
        *(&v23[0] + 1) = v12;
        sub_1B78019E8();
        if (*(v9 + 16) && (v13 = sub_1B7245898(v24), (v14 & 1) != 0))
        {
          sub_1B719BDE4(*(v9 + 56) + 32 * v13, &v25);
          sub_1B720494C(v24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0);
          if (swift_dynamicCast())
          {
            v15 = *&v23[0];
LABEL_11:
            *&v25 = sub_1B7800868();
            *(&v25 + 1) = v16;
            sub_1B78019E8();
            sub_1B74860E8(v11, v15);
            v18 = v17;
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0);
            *&v25 = v18;
            sub_1B72051F0(&v25, v23);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v22 = v9;
            sub_1B7393DF8(v23, v24, isUniquelyReferenced_nonNull_native);
            sub_1B720494C(v24);
            return v22;
          }
        }

        else
        {
          sub_1B720494C(v24);
        }

        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B7801958())
        {
          sub_1B75474F4(MEMORY[0x1E69E7CC0]);
          v15 = v21;
        }

        else
        {
          v15 = MEMORY[0x1E69E7CD0];
        }

        goto LABEL_11;
      }
    }

    else if (*(v10 + 16))
    {
      goto LABEL_4;
    }
  }

  return v9;
}

void sub_1B76F68B0(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_1B7800708();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780B190;
  *(v5 + 32) = [*(a2 + 16) viewContext];
  sub_1B7205540(0, &unk_1EB99BF90);
  v6 = sub_1B7800C18();

  [v3 mergeChangesFromRemoteContextSave:v4 intoContexts:v6];
}

void sub_1B76F69C0(void *a1, void *a2)
{
  v3 = [a1 changes];
  if (!v3)
  {
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      return;
    }

    goto LABEL_19;
  }

  v4 = v3;
  sub_1B7205540(0, &unk_1EB9969A0);
  v5 = sub_1B7800C38();

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B7801958())
  {
    sub_1B75474F4(MEMORY[0x1E69E7CC0]);
  }

  if (v5 >> 62)
  {
    v6 = sub_1B7801958();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_17:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CA5DC0](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      sub_1B76F6BA0(v8, a2);
      sub_1B723FE54(v10);
    }

    while (v6 != v7);
    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  if (sub_1B7801958())
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_1B75474F4(v11);
  }
}

void sub_1B76F6BA0(void *a1, void *a2)
{
  v5 = [a1 changedObjectID];
  v6 = [v5 entityName];

  v7 = sub_1B7800868();
  v9 = v8;

  type metadata accessor for ManagedOrderDashboardItem();
  v10 = [swift_getObjCClassFromMetadata() entityName];
  v11 = sub_1B7800868();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_1B78020F8();

    if ((v15 & 1) == 0)
    {
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        return;
      }

LABEL_22:
      if (sub_1B7801958())
      {
        v28 = MEMORY[0x1E69E7CC0];

        sub_1B75474F4(v28);
      }

      return;
    }
  }

  sub_1B76F7EA8(a1);
  v17 = v16;
  if (!*(v16 + 16))
  {
    v27 = MEMORY[0x1E69E7CC0];

    if (!(v27 >> 62))
    {
      return;
    }

    goto LABEL_22;
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B7801958())
  {
    sub_1B75474F4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
  }

  v30 = v18;
  if (![a1 changeType] || objc_msgSend(a1, sel_changeType) == 1)
  {
    v19 = [a1 changedObjectID];
    v20 = sub_1B76F821C(v19, v17, a2);

    sub_1B723FE54(v20);
  }

  if ([a1 changeType] == 2 || objc_msgSend(a1, sel_changeType) == 1)
  {
    v21 = [*(v2 + 16) viewContext];
    v22 = swift_allocObject();
    v22[2] = &v30;
    v22[3] = v2;
    v22[4] = a1;
    v22[5] = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B76F8208;
    *(v23 + 24) = v22;
    aBlock[4] = sub_1B720493C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B737BA64;
    aBlock[3] = &block_descriptor_22;
    v24 = _Block_copy(aBlock);

    v25 = a1;

    [v21 performBlockAndWait_];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1B76F6F74(int a1, uint64_t a2, id a3, uint64_t a4)
{
  v6 = [a3 changedObjectID];
  v7 = [*(a2 + 16) viewContext];
  v8 = sub_1B76F821C(v6, a4, v7);

  sub_1B723FE54(v8);
}

uint64_t sub_1B76F7004(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B76F70F0;

  return v5();
}

uint64_t sub_1B76F70F0()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B76F7230;
  }

  else
  {
    v2 = sub_1B76F7204;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B76F7204()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32) != 0;
  *v1 = 0;
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1B76F7230()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = v1;
  *(v2 + 8) = v1 != 0;
  return (*(v0 + 8))();
}

uint64_t sub_1B76F725C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return sub_1B76F7004(a1, v4);
}

uint64_t sub_1B76F7314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1B76F73DC;

  return sub_1B76F3C60(a2, a3, a4, a5, a6);
}

uint64_t sub_1B76F73DC(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1B76F7500(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B723838C;

  return sub_1B76F7314(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1B76F75DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a1;
  v6[5] = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_1B76F76D0;

  return v9(v6 + 2);
}

uint64_t sub_1B76F76D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B76F77CC, 0, 0);
}

uint64_t sub_1B76F77CC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B764BD7C();
  os_unfair_lock_unlock((v1 + v3));
  v4 = *(v0 + 24);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B76F789C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B723838C;

  return sub_1B76F75DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B76F7978(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1B76F7A6C;

  return v5(v2 + 16);
}

uint64_t sub_1B76F7A6C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1B76F7BA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return sub_1B76F7978(a1, v4);
}

void sub_1B76F7C58(void *a1@<X8>)
{
  NSManagedObjectContext.fetchPersistentHistory(after:store:)(*(v1 + 24), 0);
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_1B76F7C90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B76F65E8(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

void *sub_1B76F7CF0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TaskPriorityQueue.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = 0;
  v2[4] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F8);
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B76F854C(v6, v8 + *(*v8 + *MEMORY[0x1E69E6B68] + 16));
  v2[5] = v8;
  v2[2] = a1;
  v9 = [a1 viewContext];
  v10 = NSManagedObjectContext.currentLocalHistoryToken.getter();

  v11 = v2[3];
  v2[3] = v10;

  sub_1B76F453C();
  return v2;
}

void sub_1B76F7EA8(void *a1)
{
  v2 = [a1 changeType];
  if (v2 == 2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v3 = [a1 updatedProperties];
    if (!v3)
    {
      return;
    }

    v4 = MEMORY[0x1E69E7CD0];
    sub_1B7205540(0, &qword_1EB98F188);
    sub_1B72050F0();
    v5 = sub_1B7800FA8();

    v26[2] = v4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1B7801908();
      sub_1B7800FE8();
      v5 = v26[3];
      v6 = v26[4];
      v7 = v26[5];
      v8 = v26[6];
      v9 = v26[7];
    }

    else
    {
      v10 = -1 << *(v5 + 32);
      v6 = v5 + 56;
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

      v9 = v12 & *(v5 + 56);

      v8 = 0;
    }

    v13 = (v7 + 64) >> 6;
    if (v5 < 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= v13)
        {
          goto LABEL_37;
        }

        v15 = *(v6 + 8 * v16);
        ++v14;
        if (v15)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      return;
    }

LABEL_18:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_37:
      sub_1B71B7B58();

      return;
    }

    while (1)
    {
      v19 = [v18 name];
      v20 = sub_1B7800868();
      v22 = v21;

      v23 = v20 == 0xD000000000000012 && 0x80000001B7874C80 == v22;
      if (v23 || (sub_1B78020F8() & 1) != 0)
      {
        break;
      }

      if (v20 == 0xD000000000000013 && 0x80000001B7883CE0 == v22)
      {
        break;
      }

      v25 = sub_1B78020F8();

      if (v25)
      {
        goto LABEL_34;
      }

LABEL_35:
      v8 = v16;
      v9 = v17;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_20:
      if (sub_1B7801988())
      {
        swift_dynamicCast();
        v18 = v26[0];
        v16 = v8;
        v17 = v9;
        if (v26[0])
        {
          continue;
        }
      }

      goto LABEL_37;
    }

LABEL_34:
    sub_1B724E408(v26, 0xD000000000000012, 0x80000001B7874C80);

    goto LABEL_35;
  }

  if (!v2)
  {
LABEL_4:
    sub_1B7545330(&unk_1F2F47270);
    sub_1B73DCE10(&unk_1F2F47290);
  }
}

uint64_t sub_1B76F821C(uint64_t a1, uint64_t a2, id a3)
{
  v4 = a1;
  v13 = sub_1B7517EA0(a1, a3);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B7801958())
  {
    sub_1B75474F4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v26 = v14;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  if (v17)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return v26;
    }

    v17 = *(a2 + 56 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      do
      {
LABEL_16:
        v17 &= v17 - 1;

        v21 = sub_1B7800838();

        v22 = [v13 objectIDsForRelationshipNamed_];

        sub_1B7205540(0, &qword_1EB98F930);
        v23 = sub_1B7800C38();

        v4 = &v26;
        sub_1B7262EF4(v23);
      }

      while (v17);
      continue;
    }
  }

  __break(1u);
  swift_once();
  v5 = sub_1B78000B8();
  __swift_project_value_buffer(v5, qword_1EDAF6550);
  v6 = v4;
  v7 = sub_1B7800098();
  v8 = sub_1B78011F8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_1B7198000, v7, v8, "Failed to retrieve order with object ID: %@", v9, 0xCu);
    sub_1B7205418(v10, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B7801958())
  {
    sub_1B75474F4(MEMORY[0x1E69E7CC0]);
    v25 = v24;

    return v25;
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1B76F854C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskPriorityQueue.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76F85B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B723838C;

  return sub_1B76F4738(a1, v4, v5, v7, v6);
}

unint64_t sub_1B76F8670()
{
  result = qword_1EDAF93D8;
  if (!qword_1EDAF93D8)
  {
    sub_1B78013E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF93D8);
  }

  return result;
}

uint64_t sub_1B76F86C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B7201BB0;

  return sub_1B76F564C(a1, v1);
}

uint64_t sub_1B76F8764(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return sub_1B76F7004(a1, v4);
}

id static ManagedAccount.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedAccount;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedAccount.predicateForAccounts(withPublicAccountIDs:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F708);
  *(v2 + 64) = sub_1B76F8958();
  *(v2 + 32) = a1;

  return sub_1B78010E8();
}

unint64_t sub_1B76F8958()
{
  result = qword_1EB996008;
  if (!qword_1EB996008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996008);
  }

  return result;
}

id static ManagedAccount.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedAccount;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

uint64_t static ManagedAccount.predicateForAccount(withPublicAccountID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B726E47C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

uint64_t sub_1B76F8AE8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastPruneDate];
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

void sub_1B76F8B8C(uint64_t a1, void **a2)
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

  [v7 setLastPruneDate_];
}

id ManagedInsertionHistoryMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInsertionHistoryMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedInsertionHistoryMetadata();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInsertionHistoryMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedInsertionHistoryMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedInsertionHistoryMetadata.__allocating_init(lastConvertedHistoryTransactionID:lastPruneDate:maxInsertedHistoryID:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v6 = v5;
  v22[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  v14 = [objc_allocWithZone(v6) initWithContext_];
  sub_1B7280900(a2, v13);
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v13, 1, v15);
  v18 = v14;
  v19 = 0;
  if (v17 != 1)
  {
    v19 = sub_1B77FF8B8();
    (*(v16 + 8))(v13, v15);
  }

  [v18 setLastPruneDate_];

  [v18 setLastConvertedHistoryTransactionID_];
  if (a4)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_1B78022B8();
  }

  [v18 setMaxInsertedHistoryID_];

  sub_1B71F31EC(a2);
  return v18;
}

id static ManagedInsertionHistoryMetadata.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit31ManagedInsertionHistoryMetadata;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t ManagedInsertionHistoryMetadata.maxInsertedHistoryIdentifier.getter()
{
  v1 = [v0 maxInsertedHistoryID];
  if (v1)
  {
    v2 = v1;
    sub_1B78022C8();
  }

  return 0;
}

void sub_1B76F90B8(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 maxInsertedHistoryID];
  if (v3)
  {
    v4 = v3;
    sub_1B78022C8();
  }

  *a2 = 0;
}

void ManagedInsertionHistoryMetadata.maxInsertedHistoryIdentifier.setter()
{
  v1 = sub_1B78022B8();
  [v0 setMaxInsertedHistoryID_];
}

void (*ManagedInsertionHistoryMetadata.maxInsertedHistoryIdentifier.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = [v1 maxInsertedHistoryID];
  if (v3)
  {
    v4 = v3;
    sub_1B78022C8();
  }

  *a1 = 0;
  return sub_1B76F9214;
}

void sub_1B76F9214(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_1B78022B8();
  [v1 setMaxInsertedHistoryID_];
}

void ManagedInsertionHistoryMetadata.updatePruningDate(_:)()
{
  v1 = sub_1B77FF8B8();
  [v0 setLastPruneDate_];
}

void ManagedApplePayTransactionInsightImporter.insertOrUpdateInsight(_:on:in:)(void *a1, void *a2, uint64_t a3)
{
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
  if (!v3)
  {
    v8 = v7;
    v9 = [v7 applePayInsightObject];
    if (!v9)
    {
      type metadata accessor for ManagedApplePayTransactionInsight();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v8 setApplePayInsightObject_];
    }

    sub_1B76F93D4(v9, a1, a2);
  }
}

void sub_1B76F93D4(void *a1, void *a2, void *a3)
{
  v151 = a3;
  v5 = sub_1B77FF4F8();
  v157 = *(v5 - 8);
  v158 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v154 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v153 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v155 = &v149 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v152 = &v149 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v149 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v149 - v16);
  v18 = sub_1B77FF988();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v150 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v149 - v25;
  v27 = [a2 paymentHash];
  if (v27)
  {
    v28 = v27;
    sub_1B7800868();

    v29 = sub_1B7800838();
    [a1 setPaymentHash_];
    swift_bridgeObjectRelease_n();
  }

  v30 = [a2 transactionDate];
  if (v30)
  {
    v31 = v30;
    sub_1B77FF928();

    (*(v19 + 56))(v26, 0, 1, v18);
  }

  else
  {
    (*(v19 + 56))(v26, 1, 1, v18);
  }

  v32 = v156;
  sub_1B7205588(v26, v24, &qword_1EB98EBD0);
  if ((*(v19 + 48))(v24, 1, v18) != 1)
  {
    v33 = v150;
    (*(v19 + 32))(v150, v24, v18);
    v34 = sub_1B77FF8B8();
    [a1 setTransactionDate_];

    (*(v19 + 8))(v33, v18);
  }

  sub_1B7205418(v26, &qword_1EB98EBD0);
  v35 = [a2 merchantName];
  if (v35)
  {
    v36 = v35;
    sub_1B7800868();

    v37 = sub_1B7800838();
    [a1 setMerchantName_];
    swift_bridgeObjectRelease_n();
  }

  v38 = [a2 merchantRawName];
  v39 = v155;
  if (v38)
  {
    v40 = v38;
    sub_1B7800868();

    v41 = sub_1B7800838();
    [a1 setMerchantRawName_];
    swift_bridgeObjectRelease_n();
  }

  v42 = [a2 industryCategory];
  if (v42)
  {
    v43 = v42;
    sub_1B7800868();

    v44 = sub_1B7800838();
    [a1 setIndustryCategory_];
    swift_bridgeObjectRelease_n();
  }

  v45 = [a2 industryCode];
  if (v45)
  {
    v46 = v45;
    [a1 setIndustryCodeValue_];
  }

  v47 = [a2 merchantType];
  if (v47)
  {
    v48 = v47;
    sub_1B7800868();

    v49 = sub_1B7800838();
    [a1 setMerchantType_];
    swift_bridgeObjectRelease_n();
  }

  v50 = [a2 merchantCountryCode];
  if (v50)
  {
    v51 = v50;
    sub_1B7800868();

    v52 = sub_1B7800838();
    [a1 setMerchantCountryCode_];
    swift_bridgeObjectRelease_n();
  }

  v53 = [a2 terminalIdentifier];
  if (v53)
  {
    v54 = v53;
    sub_1B7800868();

    v55 = sub_1B7800838();
    [a1 setTerminalIdentifier_];
    swift_bridgeObjectRelease_n();
  }

  v56 = [a2 merchantAdditionalData];
  if (v56)
  {
    v57 = v56;
    sub_1B7800868();

    v58 = sub_1B7800838();
    [a1 setMerchantAdditionalData_];
    swift_bridgeObjectRelease_n();
  }

  v59 = [a2 paymentNetwork];
  if (v59)
  {
    v60 = v59;
    sub_1B7800868();

    v61 = sub_1B7800838();
    [a1 setPaymentNetwork_];
    swift_bridgeObjectRelease_n();
  }

  v62 = [a2 isMerchantTokenTransaction];
  if (v62)
  {
    v63 = v62;
    sub_1B7449284();
    v64 = v63;
    v65 = sub_1B7801528();
    v66 = sub_1B7801558();

    if (v66)
    {
      v67 = 2;
    }

    else
    {
      v67 = 0;
    }

    [a1 setTokenTypeValue_];
  }

  v68 = [a2 isCoarseLocation];
  if (v68)
  {
    v69 = v68;
    [a1 setIsCoarseLocationValue_];
  }

  v70 = [a2 location];
  if (v70)
  {
    v71 = v70;
    [v71 coordinate];
    v73 = v72;
    [v71 coordinate];
    v75 = v74;
    [v71 altitude];
    v77 = v76;
    [v71 horizontalAccuracy];
    v79 = v78;
    [v71 verticalAccuracy];
    v81 = v80;
    v82 = [v71 timestamp];
    v83 = type metadata accessor for ApplePayTransactionInsight.Location(0);
    sub_1B77FF928();

    *v17 = v73;
    v17[1] = v75;
    v17[2] = v77;
    v17[3] = v79;
    v17[4] = v81;
    (*(*(v83 - 8) + 56))(v17, 0, 1, v83);
    ManagedApplePayTransactionInsight.location.setter(v17);
  }

  v84 = [a2 merchantIdentifier];
  if (v84)
  {
    v85 = v84;
    sub_1B7800868();

    v86 = sub_1B7800838();
    [a1 setMerchantIdentifier_];
    swift_bridgeObjectRelease_n();
  }

  v87 = [a2 merchantRawCANL];
  if (v87)
  {
    v88 = v87;
    sub_1B7800868();

    v89 = sub_1B7800838();
    [a1 setMerchantRawCANL_];
    swift_bridgeObjectRelease_n();
  }

  v90 = [a2 merchantRawCity];
  if (v90)
  {
    v91 = v90;
    sub_1B7800868();

    v92 = sub_1B7800838();
    [a1 setMerchantRawCity_];
    swift_bridgeObjectRelease_n();
  }

  v93 = [a2 merchantRawCountry];
  if (v93)
  {
    v94 = v93;
    sub_1B7800868();

    v95 = sub_1B7800838();
    [a1 setMerchantRawCountry_];
    swift_bridgeObjectRelease_n();
  }

  v96 = [a2 merchantRawState];
  if (v96)
  {
    v97 = v96;
    sub_1B7800868();

    v98 = sub_1B7800838();
    [a1 setMerchantRawState_];
    swift_bridgeObjectRelease_n();
  }

  v99 = [a2 merchantCity];
  if (v99)
  {
    v100 = v99;
    sub_1B7800868();

    v101 = sub_1B7800838();
    [a1 setMerchantCity_];
    swift_bridgeObjectRelease_n();
  }

  v102 = [a2 merchantZip];
  if (v102)
  {
    v103 = v102;
    sub_1B7800868();

    v104 = sub_1B7800838();
    [a1 setMerchantZip_];
    swift_bridgeObjectRelease_n();
  }

  v105 = [a2 merchantState];
  if (v105)
  {
    v106 = v105;
    sub_1B7800868();

    v107 = sub_1B7800838();
    [a1 setMerchantState_];
    swift_bridgeObjectRelease_n();
  }

  v108 = [a2 merchantCleanConfidenceLevel];
  if (v108)
  {
    v109 = v108;
    [a1 setMerchantCleanConfidenceLevelValue_];
  }

  v110 = [a2 rewardsAmount];
  v111 = v158;
  if (v110)
  {
    v112 = v110;
    [a1 setRewardsAmount_];
  }

  v113 = [a2 rewardsCurrency];
  if (v113)
  {
    v114 = v113;
    sub_1B7800868();

    v115 = sub_1B7800838();
    [a1 setRewardsCurrency_];
    v111 = v158;
    swift_bridgeObjectRelease_n();
  }

  v116 = [a2 rewardsEligibilityReason];
  if (v116)
  {
    v117 = v116;
    [a1 setRewardsEligibilityReasonValue_];
  }

  v118 = [a2 adamIdentifier];
  if (v118)
  {
    v119 = v118;
    [a1 setAdamIdentifierValue_];
  }

  v120 = [a2 webURL];
  if (v120)
  {
    v121 = v120;
    sub_1B77FF478();

    v122 = 0;
  }

  else
  {
    v122 = 1;
  }

  v123 = v157;
  v124 = *(v157 + 56);
  v124(v32, v122, 1, v111);
  v125 = v152;
  sub_1B7205588(v32, v152, &unk_1EB994C70);
  v126 = *(v123 + 48);
  if (v126(v125, 1, v111) != 1)
  {
    v127 = v157;
    v128 = v154;
    (*(v157 + 32))(v154, v125, v111);
    v129 = sub_1B77FF3F8();
    [a1 setWebURL_];

    v130 = v127;
    v39 = v155;
    (*(v130 + 8))(v128, v111);
  }

  sub_1B7205418(v156, &unk_1EB994C70);
  v131 = [a2 webMerchantIdentifier];
  if (v131)
  {
    v132 = v131;
    sub_1B7800868();

    v133 = sub_1B7800838();
    [a1 setWebMerchantIdentifier_];
    v111 = v158;
    swift_bridgeObjectRelease_n();
  }

  v134 = [a2 webMerchantName];
  if (v134)
  {
    v135 = v134;
    sub_1B7800868();

    v136 = sub_1B7800838();
    [a1 setWebMerchantName_];
    v111 = v158;
    swift_bridgeObjectRelease_n();
  }

  v137 = [a2 isIssuerInstallmentTransaction];
  if (v137)
  {
    v138 = v137;
    [a1 setIsIssuerInstallmentTransaction_];
  }

  v139 = [a2 issuerInstallmentManagementURL];
  if (v139)
  {
    v140 = v139;
    sub_1B77FF478();

    v141 = 0;
  }

  else
  {
    v141 = 1;
  }

  v124(v39, v141, 1, v111);
  v142 = v153;
  sub_1B7205588(v39, v153, &unk_1EB994C70);
  if (v126(v142, 1, v111) != 1)
  {
    v143 = v157;
    v144 = v154;
    (*(v157 + 32))(v154, v142, v111);
    v145 = sub_1B77FF3F8();
    [a1 setIssuerInstallmentManagementURL_];

    (*(v143 + 8))(v144, v111);
  }

  sub_1B7205418(v39, &unk_1EB994C70);
  v146 = [a2 merchantName];
  if (v146)
  {
    v147 = v146;
    v148 = [v151 publicTransactionObject];
    [v148 setMerchantName_];
  }
}

unint64_t TransactionType.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0x16)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = byte_1B785F712[result];
  }

  return result;
}

uint64_t sub_1B76FA790()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B76FA7F0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B751F290;
}

uint64_t sub_1B76FA9B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_transactionChangesObserver);
  swift_beginAccess();
  *(v1 + 32) = &protocol witness table for TransactionsListProvider;
  swift_unknownObjectWeakAssign();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v1 selector:sel_contextDidMergeChangesObjectIDsNotificationWithNotification_ name:*MEMORY[0x1E695D348] object:*(v1 + 16)];

  return _s10FinanceKit24TransactionsListProviderC09didChangeC0yyF_0();
}

uint64_t _s10FinanceKit24TransactionsListProviderC09didChangeC0yyF_0()
{
  v1 = v0;
  v2 = sub_1B7800398();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1B78003C8();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B78000B8();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FED28();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v0[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_formatterConfiguration];
  v40 = *(type metadata accessor for FormatterConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v11 = sub_1B77FFC68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B7808C50;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E6969A68], v11);
  v18 = v16 + v13;
  v19 = v1;
  v17(v18, *MEMORY[0x1E6969A78], v11);
  v20 = v10;
  sub_1B7545E58(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B77FFB68();

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v5, qword_1EDAF65B0);
  v22 = v42;
  v23 = (*(v42 + 16))(v7, v21, v5);
  MEMORY[0x1EEE9AC00](v23);
  *(&v34 - 4) = v19;
  *(&v34 - 3) = v7;
  *(&v34 - 2) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A9E0);
  sub_1B7801468();
  (*(v22 + 8))(v7, v5);
  v24 = aBlock[0];
  v25 = &v19[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_transactions];
  os_unfair_lock_lock(&v19[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_transactions]);

  *(v25 + 1) = v24;

  os_unfair_lock_unlock(v25);
  sub_1B7205540(0, &qword_1EDAFC530);
  v26 = sub_1B7801328();
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  *(v27 + 24) = v24;
  aBlock[4] = sub_1B76FC128;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B72A58C8;
  aBlock[3] = &block_descriptor_23;
  v28 = _Block_copy(aBlock);
  v29 = v19;
  v30 = v34;
  sub_1B78003B8();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1B76684E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA10);
  sub_1B7205294();
  v31 = v36;
  v32 = v39;
  sub_1B78018B8();
  MEMORY[0x1B8CA5660](0, v30, v31, v28);
  _Block_release(v28);

  (*(v38 + 8))(v31, v32);
  (*(v35 + 8))(v30, v37);

  return (*(v43 + 8))(v20, v44);
}

id TransactionsListProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransactionsListProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransactionsListProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B76FB3E8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_context);
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v38[0] = 0;
  v10 = [v8 setQueryGenerationFromToken:v9 error:v38];

  if (!v10)
  {
    v22 = v38[0];
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_groupType);
  v12 = v38[0];
  if (v11 != 1)
  {
    if (v11)
    {
      v18 = sub_1B7800098();
      v19 = sub_1B78011D8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "Not able to fetch transactions for unknown group type";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    v13 = sub_1B77FEC78();
    if (v14 & 1) != 0 || (v15 = v13, v16 = sub_1B77FEC58(), (v17))
    {
      v18 = sub_1B7800098();
      v19 = sub_1B78011D8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
LABEL_14:
        _os_log_impl(&dword_1B7198000, v18, v19, v21, v20, 2u);
        MEMORY[0x1B8CA7A40](v20, -1, -1);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v27 = v16;
    sub_1B77FFA68();
    type metadata accessor for FormatterConfiguration();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    v28 = 100 * v27;
    if ((v27 * 100) >> 64 == (100 * v27) >> 63)
    {
      v29 = __OFADD__(v28, v15);
      v30 = (v28 + v15);
      if (!v29)
      {
        v38[0] = v30;
        v31 = sub_1B7802068();
        v33 = v32;
        sub_1B76685B0(v7, type metadata accessor for ManagedInternalTransaction.MonthYearFormatter);
        v26 = sub_1B766835C(*(a1 + OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_primaryAccountIdentifier), *(a1 + OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_primaryAccountIdentifier + 8), v31, v33);

        v25 = v26;
LABEL_21:
        v34 = sub_1B7667744(v25, 0, 1);

        type metadata accessor for ManagedInternalTransaction();
        v35 = sub_1B7801498();
        if (v2)
        {
        }

        else
        {
          v36 = v35;

          v37 = ManagedTransactionExporter.financeKitTransactions(from:classifyIfNecessary:)(v36, 1);

          *a2 = v37;
        }

        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v23 = sub_1B77FEC58();
  if ((v24 & 1) == 0)
  {
    v25 = sub_1B76FC18C(*(a1 + OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_primaryAccountIdentifier), *(a1 + OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_primaryAccountIdentifier + 8), v23);
    v26 = v25;
    goto LABEL_21;
  }

  v18 = sub_1B7800098();
  v19 = sub_1B78011D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    goto LABEL_14;
  }

LABEL_15:

  sub_1B76FC138();
  swift_allocError();
  swift_willThrow();
LABEL_16:
  sub_1B76FB7FC(a1);
}

void sub_1B76FB7FC(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_context);
  v14[0] = 0;
  v2 = [v1 setQueryGenerationFromToken:0 error:v14];
  v3 = v14[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v14[0];
    v6 = sub_1B77FF318();

    swift_willThrow();
    v7 = v6;
    v8 = sub_1B7800098();
    v9 = sub_1B78011D8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      sub_1B7205418(v11, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v11, -1, -1);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
    }

    else
    {
    }
  }
}