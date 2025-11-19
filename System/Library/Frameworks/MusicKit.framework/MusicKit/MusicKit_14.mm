uint64_t sub_2173131CC()
{
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_197();
  v2 = swift_allocObject();
  LOBYTE(v26[0]) = v2;
  v3 = v1(v0, v2 + 16);
  OUTLINED_FUNCTION_223_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5]);
  OUTLINED_FUNCTION_221_2();
  sub_217751DE8();
  v11 = sub_217751DE8();
  OUTLINED_FUNCTION_169_3(v11, v12, v13, v14);
  swift_endAccess();
  return sub_21729C698(v26);
}

uint64_t sub_217313258()
{
  v2[3] = type metadata accessor for MusicPersonalRecommendation();
  v2[4] = &protocol witness table for MusicPersonalRecommendation;
  __swift_allocate_boxed_opaque_existential_0(v2);
  sub_21733CAD0();
  v2[5] = 1;
  sub_21733B548(v2, v1);
  swift_beginAccess();
  sub_217751DE8();
  sub_217751DE8();
  sub_21729CCC4(v1);
  swift_endAccess();
  return sub_21729C698(v2);
}

uint64_t sub_217313354()
{
  OUTLINED_FUNCTION_132_2();
  v2 = swift_allocObject();
  LOBYTE(v26[0]) = v2;
  v3 = v1(v0, v2 + 16);
  OUTLINED_FUNCTION_223_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5]);
  OUTLINED_FUNCTION_221_2();
  sub_217751DE8();
  v11 = sub_217751DE8();
  OUTLINED_FUNCTION_169_3(v11, v12, v13, v14);
  swift_endAccess();
  return sub_21729C698(v26);
}

uint64_t sub_2173133E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = type metadata accessor for CloudRadioShow.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v122 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259A0, &unk_21775DA00);
  v123 = *(v7 - 8);
  v8 = *(v123 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v114 - v10;
  v12 = type metadata accessor for CloudRadioShow(0);
  v13 = *(v12[-1].Description + 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v114 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v114 - v24;
  sub_2171FF30C(a1, v135);
  v26 = v124;
  CloudRadioShow.init(from:)();
  v124 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_32;
  }

  v115 = v16;
  v116 = v12;
  *(&v114 + 1) = v21;
  v117 = v7;
  v118 = v25;
  v119 = a1;
  v120 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25978, &qword_21775D9F8);
  sub_21733CCD4(&qword_27CB25980, &qword_27CB25978, &qword_21775D9F8);
  v30 = v124;
  sub_2177532C8();
  v124 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v137 = 3;
  v31 = v117;
  v32 = v124;
  sub_217752E08();
  v28 = v119;
  v33 = v120;
  v124 = v32;
  if (v32)
  {
    (*(v123 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudRadioShow);
LABEL_31:
    v27 = 0;
    v25 = v118;
    goto LABEL_32;
  }

  *&v114 = v11;
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  v36 = sub_217751DC8();
  sub_21733BE70(v135);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v37 = v116;
  if (swift_dynamicCast())
  {
    v122 = v36;
    sub_2171F3F0C(v130, v131);
    v38 = v132;
    v39 = v133;
    __swift_project_boxed_opaque_existential_1(v131, v132);
    v40 = v124;
    v41 = (*(v39 + 16))(v136, v38, v39);
    v42 = v123;
    v124 = v40;
    if (v40)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v136);
      (*(v42 + 8))(v114, v117);
LABEL_29:
      v64 = v33;
LABEL_30:
      sub_21733CA78(v64, type metadata accessor for CloudRadioShow);
      __swift_destroy_boxed_opaque_existential_1(v131);
      goto LABEL_31;
    }

    v115 = v41;
    LOBYTE(v130[0]) = 4;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 4;
      v51 = v124;
      sub_217752E08();
      v124 = v51;
      if (v51)
      {
        goto LABEL_28;
      }

      v55 = v132;
      v56 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v57 = v124;
      v58 = (*(v56 + 24))(v130, v55, v56);
      v124 = v57;
      if (v57)
      {
LABEL_36:

        v70 = v130;
LABEL_37:
        __swift_destroy_boxed_opaque_existential_1(v70);
        goto LABEL_10;
      }

      v34 = v58;
      __swift_destroy_boxed_opaque_existential_1(v130);
    }

    LOBYTE(v130[0]) = 5;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 5;
      v63 = v124;
      sub_217752E08();
      v124 = v63;
      if (v63)
      {
LABEL_28:

        __swift_destroy_boxed_opaque_existential_1(v136);
        (*(v42 + 8))(v50, v49);
        goto LABEL_29;
      }

      v66 = v132;
      v67 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v68 = v124;
      v69 = (*(v67 + 32))(v130, v66, v67);
      v124 = v68;
      if (v68)
      {
        goto LABEL_36;
      }

      v35 = v69;
      __swift_destroy_boxed_opaque_existential_1(v130);
    }

    LOBYTE(v129[0]) = 6;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 6;
      v83 = v124;
      sub_217752E08();
      v124 = v83;
      if (v83)
      {
        goto LABEL_28;
      }

      sub_2171FF30C(v128, v126);
      v86 = v124;
      CloudResourceCustomMetadata.init(from:)(v126, v129);
      v124 = v86;
      if (v86)
      {

        v70 = v128;
        goto LABEL_37;
      }

      memcpy(v127, v129, sizeof(v127));
      v105 = v132;
      v106 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v107 = sub_217383B34(&unk_28295F078);
      v108 = v124;
      v109 = (*(v106 + 40))(v128, v107, v105, v106);
      v124 = v108;
      if (v108)
      {

        sub_21733BED8(v127);
        __swift_destroy_boxed_opaque_existential_1(v128);
        __swift_destroy_boxed_opaque_existential_1(v136);
        (*(v42 + 8))(v114, v117);
        v64 = v120;
        goto LABEL_30;
      }

      v122 = v109;
      __swift_destroy_boxed_opaque_existential_1(v128);

      memcpy(v125, v127, sizeof(v125));
      nullsub_1(v125, v112);
      v84 = v125;
    }

    else
    {
      v84 = v135;
    }

    memcpy(v130, v84, sizeof(v130));
    __swift_destroy_boxed_opaque_existential_1(v131);
    v85 = v130;
    goto LABEL_53;
  }

  memset(v130, 0, 40);
  sub_2171F0738(v130, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v136, v130);
  Kind_high = SHIDWORD(v37[1].Kind);
  sub_21733CAD0();
  v44 = v124;
  sub_217385A24();
  v42 = v123;
  v124 = v44;
  if (v44)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v136);
    v46 = *(v42 + 8);
    v47 = v114;
LABEL_14:
    v48 = v117;
LABEL_42:
    v46(v47, v48);
    sub_21733CA78(v33, type metadata accessor for CloudRadioShow);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v115 = v45;
  v122 = v36;
  LOBYTE(v130[0]) = 4;
  v52 = v117;
  v53 = v114;
  if (sub_217752EC8())
  {

    LOBYTE(v129[0]) = 4;
    v54 = v124;
    sub_217752E08();
    v124 = v54;
    if (v54)
    {
      goto LABEL_41;
    }

    sub_2171FF30C(v130, v129);
    v59 = sub_217383884();
    v60 = v124;
    v61 = Dictionary<>.init(from:skippingValuesFor:)(v129, v59);
    v124 = v60;
    if (v60)
    {

      v62 = v130;
LABEL_76:
      __swift_destroy_boxed_opaque_existential_1(v62);
      goto LABEL_13;
    }

    v34 = v61;
    __swift_destroy_boxed_opaque_existential_1(v130);
  }

  LOBYTE(v130[0]) = 5;
  v52 = v117;
  v53 = v114;
  if (sub_217752EC8())
  {

    LOBYTE(v129[0]) = 5;
    v71 = v124;
    sub_217752E08();
    v124 = v71;
    if (v71)
    {
LABEL_41:

      __swift_destroy_boxed_opaque_existential_1(v136);
      v46 = *(v42 + 8);
      v47 = v53;
      v48 = v52;
      goto LABEL_42;
    }

    sub_2171FF30C(v130, v129);
    if (qword_27CB23D50 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2A978, v72, v73, v74, v75, v76, v77, v78, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5]);
    v79 = v124;
    v81 = Dictionary<>.init(from:skippingValuesFor:)(v129, v80);
    v82 = v114;
    v124 = v79;
    if (v79)
    {

      __swift_destroy_boxed_opaque_existential_1(v130);
      __swift_destroy_boxed_opaque_existential_1(v136);
      v46 = *(v42 + 8);
      v47 = v82;
      goto LABEL_14;
    }

    v35 = v81;
    __swift_destroy_boxed_opaque_existential_1(v130);
  }

  LOBYTE(v130[0]) = 6;
  v52 = v117;
  v53 = v114;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v134, v135, sizeof(v134));
    goto LABEL_61;
  }

  LOBYTE(v130[0]) = 6;
  v87 = v124;
  sub_217752E08();
  v124 = v87;
  if (v87)
  {
    goto LABEL_41;
  }

  sub_2171FF30C(v125, v131);
  v104 = v124;
  CloudResourceCustomMetadata.init(from:)(v131, v130);
  v124 = v104;
  if (v104)
  {

LABEL_75:
    v62 = v125;
    goto LABEL_76;
  }

  memcpy(v129, v130, sizeof(v129));
  sub_2171FF30C(v125, v128);
  sub_217221020(*(v33 + SLODWORD(v116[2].Kind)));
  sub_217383B34(&unk_28295F078);
  v110 = v124;
  sub_217387B30();
  v124 = v110;
  if (v110)
  {

    sub_21733BED8(v129);
    goto LABEL_75;
  }

  v122 = v111;
  __swift_destroy_boxed_opaque_existential_1(v125);
  memcpy(v127, v129, sizeof(v127));
  nullsub_1(v127, v113);
  v85 = v127;
LABEL_53:
  memcpy(v134, v85, sizeof(v134));
  v52 = v117;
LABEL_61:
  LOBYTE(v130[0]) = 2;
  v88 = v114;
  if (sub_217752EC8())
  {
    LOBYTE(v130[0]) = 2;
    v89 = v124;
    v90 = sub_217752E68();
    v124 = v89;
    if (v89)
    {

      sub_2171F0738(v134, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v136);
      (*(v42 + 8))(v88, v52);
LABEL_4:
      sub_21733CA78(v120, type metadata accessor for CloudRadioShow);
      v27 = 0;
      v25 = v118;
      v28 = v119;
      goto LABEL_32;
    }

    v92 = v90;
    v93 = v91;
    v123 = v34;
  }

  else
  {
    v123 = v34;
    v92 = 0;
    v93 = 0;
  }

  v94 = v120;
  v25 = v118;
  sub_21733CAD0();
  LOBYTE(v129[0]) = 1;
  sub_21733BE84();
  v95 = v117;
  v96 = v114;
  v97 = v124;
  sub_217752EA8();
  v124 = v97;
  if (!v97)
  {
    __swift_destroy_boxed_opaque_existential_1(v136);
    (*(v42 + 8))(v96, v95);
    sub_21733CA78(v94, type metadata accessor for CloudRadioShow);
    v98 = *(&v130[0] + 1);
    v99 = v130[1];
    v100 = *(&v114 + 1);
    v101 = &v25[*(*(&v114 + 1) + 36)];
    *v101 = *&v130[0];
    *(v101 + 1) = v98;
    v101[16] = v99;
    v102 = &v25[v100[10]];
    *v102 = v92;
    *(v102 + 1) = v93;
    memcpy(&v25[v100[11]], v134, 0x180uLL);
    *&v25[v100[12]] = v115;
    v103 = v122;
    *&v25[v100[13]] = v123;
    *&v25[v100[14]] = v35;
    *&v25[v100[15]] = v103;
    sub_21726A630(v25, v121, &qword_27CB247C0, &unk_21779AA10);
    __swift_destroy_boxed_opaque_existential_1(v119);
    return sub_2171F0738(v25, &qword_27CB247C0, &unk_21779AA10);
  }

  sub_2171F0738(v134, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v136);
  (*(v42 + 8))(v96, v95);
  sub_21733CA78(v94, type metadata accessor for CloudRadioShow);
  v27 = 1;
  v28 = v119;
LABEL_32:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudRadioShow);
  }

  return result;
}

uint64_t sub_217314300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = type metadata accessor for CloudPlaylist.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v113 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257B8, &qword_21775D8A0);
  v114 = *(v7 - 8);
  v8 = *(v114 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v104 - v10;
  v12 = type metadata accessor for CloudPlaylist(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v104 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v104 - v24;
  sub_2171FF30C(a1, v125);
  v26 = v128;
  CloudPlaylist.init(from:)();
  v128 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_31;
  }

  v106 = v16;
  v107 = v12;
  v105 = v21;
  v108 = v7;
  v109 = v25;
  v110 = a1;
  v111 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25790, &qword_21775D898);
  sub_21733CCD4(&qword_27CB25798, &qword_27CB25790, &qword_21775D898);
  v30 = v128;
  sub_2177532C8();
  v128 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v126 = 3;
  v31 = v108;
  v32 = v128;
  sub_217752E08();
  v28 = v110;
  v33 = v111;
  v128 = v32;
  if (v32)
  {
    (*(v114 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudPlaylist);
LABEL_30:
    v27 = 0;
    v25 = v109;
    goto LABEL_31;
  }

  v104 = v11;
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  v36 = sub_217751DC8();
  sub_21733BE70(v125);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v37 = v107;
  if (swift_dynamicCast())
  {
    v113 = v36;
    sub_2171F3F0C(v120, v121);
    v38 = v122;
    v39 = v123;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    v40 = v128;
    v41 = (*(v39 + 16))(v127, v38, v39);
    v42 = v114;
    v128 = v40;
    if (v40)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v127);
      (*(v42 + 8))(v104, v108);
LABEL_28:
      v61 = v33;
LABEL_29:
      sub_21733CA78(v61, type metadata accessor for CloudPlaylist);
      __swift_destroy_boxed_opaque_existential_1(v121);
      goto LABEL_30;
    }

    v106 = v41;
    LOBYTE(v120[0]) = 4;
    v46 = v108;
    v47 = v104;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 4;
      v48 = v128;
      sub_217752E08();
      v128 = v48;
      if (v48)
      {
        goto LABEL_27;
      }

      v52 = v122;
      v53 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v54 = v128;
      v55 = (*(v53 + 24))(v120, v52, v53);
      v128 = v54;
      if (v54)
      {
LABEL_35:

        v67 = v120;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v67);
        goto LABEL_10;
      }

      v34 = v55;
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    LOBYTE(v120[0]) = 5;
    v46 = v108;
    v47 = v104;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 5;
      v60 = v128;
      sub_217752E08();
      v128 = v60;
      if (v60)
      {
LABEL_27:

        __swift_destroy_boxed_opaque_existential_1(v127);
        (*(v42 + 8))(v47, v46);
        goto LABEL_28;
      }

      v63 = v122;
      v64 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v65 = v128;
      v66 = (*(v64 + 32))(v120, v63, v64);
      v128 = v65;
      if (v65)
      {
        goto LABEL_35;
      }

      v35 = v66;
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    LOBYTE(v118[0]) = 6;
    v46 = v108;
    v47 = v104;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 6;
      v73 = v128;
      sub_217752E08();
      v128 = v73;
      if (v73)
      {
        goto LABEL_27;
      }

      sub_2171FF30C(v119, v117);
      v76 = v128;
      CloudResourceCustomMetadata.init(from:)(v117, v118);
      v128 = v76;
      if (v76)
      {

        v67 = v119;
        goto LABEL_36;
      }

      memcpy(v116, v118, sizeof(v116));
      v95 = v122;
      v96 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v97 = sub_217383B34(&unk_28295F078);
      v98 = v128;
      v99 = (*(v96 + 40))(v119, v97, v95, v96);
      v128 = v98;
      if (v98)
      {

        sub_21733BED8(v116);
        __swift_destroy_boxed_opaque_existential_1(v119);
        __swift_destroy_boxed_opaque_existential_1(v127);
        (*(v42 + 8))(v104, v108);
        v61 = v111;
        goto LABEL_29;
      }

      v113 = v99;
      __swift_destroy_boxed_opaque_existential_1(v119);

      memcpy(v115, v116, 0x180uLL);
      nullsub_1(v115, v102);
      v74 = v115;
    }

    else
    {
      v74 = v125;
    }

    memcpy(v120, v74, sizeof(v120));
    __swift_destroy_boxed_opaque_existential_1(v121);
    v75 = v120;
    goto LABEL_50;
  }

  memset(v120, 0, 40);
  sub_2171F0738(v120, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v127, v120);
  v43 = *(v37 + 20);
  sub_21733CAD0();
  v44 = v128;
  sub_217385674();
  v42 = v114;
  v128 = v44;
  if (v44)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v127);
    (*(v42 + 8))(v104, v108);
LABEL_41:
    sub_21733CA78(v33, type metadata accessor for CloudPlaylist);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v113 = v36;
  v106 = v45;
  LOBYTE(v120[0]) = 4;
  v49 = v108;
  v50 = v104;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 4;
    v51 = v128;
    sub_217752E08();
    v128 = v51;
    if (v51)
    {
      goto LABEL_40;
    }

    sub_2171FF30C(v120, v118);
    swift_beginAccess();
    v56 = sub_217751DE8();
    v57 = sub_217383728(v56);

    v58 = v128;
    v59 = Dictionary<>.init(from:skippingValuesFor:)(v118, v57);
    v128 = v58;
    if (v58)
    {
LABEL_43:

      v72 = v120;
LABEL_73:
      __swift_destroy_boxed_opaque_existential_1(v72);
      goto LABEL_13;
    }

    v34 = v59;
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  LOBYTE(v120[0]) = 5;
  v49 = v108;
  v50 = v104;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 5;
    v68 = v128;
    sub_217752E08();
    v128 = v68;
    if (v68)
    {
LABEL_40:

      __swift_destroy_boxed_opaque_existential_1(v127);
      (*(v42 + 8))(v50, v49);
      goto LABEL_41;
    }

    sub_2171FF30C(v120, v118);
    v69 = sub_217383A0C(&unk_28295F028);
    v70 = v128;
    v71 = Dictionary<>.init(from:skippingValuesFor:)(v118, v69);
    v128 = v70;
    if (v70)
    {
      goto LABEL_43;
    }

    v35 = v71;
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  LOBYTE(v120[0]) = 6;
  v49 = v108;
  v50 = v104;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v124, v125, sizeof(v124));
    goto LABEL_58;
  }

  LOBYTE(v120[0]) = 6;
  v77 = v128;
  sub_217752E08();
  v128 = v77;
  if (v77)
  {
    goto LABEL_40;
  }

  sub_2171FF30C(v121, v119);
  v94 = v128;
  CloudResourceCustomMetadata.init(from:)(v119, v120);
  v128 = v94;
  if (v94)
  {

LABEL_72:
    v72 = v121;
    goto LABEL_73;
  }

  memcpy(v118, v120, sizeof(v118));
  sub_2171FF30C(v121, v117);
  sub_21726A630(v33 + *(v107 + 32), v115, &qword_27CB24348, &unk_21775D520);
  sub_217383B34(&unk_28295F078);
  v100 = v128;
  sub_217387380();
  v128 = v100;
  if (v100)
  {

    sub_21733BED8(v118);
    goto LABEL_72;
  }

  v113 = v101;
  __swift_destroy_boxed_opaque_existential_1(v121);
  memcpy(v116, v118, sizeof(v116));
  nullsub_1(v116, v103);
  v75 = v116;
LABEL_50:
  memcpy(v124, v75, sizeof(v124));
  v49 = v108;
LABEL_58:
  LOBYTE(v120[0]) = 2;
  v78 = v104;
  if (sub_217752EC8())
  {
    LOBYTE(v120[0]) = 2;
    v79 = v128;
    v80 = sub_217752E68();
    v128 = v79;
    if (v79)
    {

      sub_2171F0738(v124, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v127);
      (*(v42 + 8))(v78, v49);
LABEL_4:
      sub_21733CA78(v111, type metadata accessor for CloudPlaylist);
      v27 = 0;
      v25 = v109;
      v28 = v110;
      goto LABEL_31;
    }

    v82 = v80;
    v83 = v81;
    v114 = v35;
  }

  else
  {
    v114 = v35;
    v82 = 0;
    v83 = 0;
  }

  v84 = v111;
  v25 = v109;
  sub_21733CAD0();
  LOBYTE(v118[0]) = 1;
  sub_21733BE84();
  v85 = v108;
  v86 = v104;
  v87 = v128;
  sub_217752EA8();
  v128 = v87;
  if (!v87)
  {
    __swift_destroy_boxed_opaque_existential_1(v127);
    (*(v42 + 8))(v86, v85);
    sub_21733CA78(v84, type metadata accessor for CloudPlaylist);
    v88 = *(&v120[0] + 1);
    v89 = v120[1];
    v90 = v105;
    v91 = &v25[v105[9]];
    *v91 = *&v120[0];
    *(v91 + 1) = v88;
    v91[16] = v89;
    v92 = &v25[v90[10]];
    *v92 = v82;
    *(v92 + 1) = v83;
    memcpy(&v25[v90[11]], v124, 0x180uLL);
    *&v25[v90[12]] = v106;
    *&v25[v90[13]] = v34;
    v93 = v113;
    *&v25[v90[14]] = v114;
    *&v25[v90[15]] = v93;
    sub_21726A630(v25, v112, &qword_27CB24790, &unk_21775A220);
    __swift_destroy_boxed_opaque_existential_1(v110);
    return sub_2171F0738(v25, &qword_27CB24790, &unk_21775A220);
  }

  sub_2171F0738(v124, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v127);
  (*(v42 + 8))(v86, v85);
  sub_21733CA78(v84, type metadata accessor for CloudPlaylist);
  v27 = 1;
  v28 = v110;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudPlaylist);
  }

  return result;
}

void sub_217315200()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v142 = v4;
  v5 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_81();
  v143 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25780, &qword_21775D888);
  OUTLINED_FUNCTION_0_0(v11);
  v144 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_130_2();
  v17 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_6_1();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v135 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  OUTLINED_FUNCTION_43(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_111();
  sub_2171FF30C(v3, v154);
  v34 = v145;
  LegacyModelCodablePlaylistEntry.init(from:)();
  v145 = v34;
  if (v34)
  {
    v35 = 0;
    v36 = v3;
    goto LABEL_31;
  }

  v136 = v24;
  v137 = v17;
  *(&v135 + 1) = v29;
  v138 = v11;
  v139 = v0;
  v140 = v3;
  v141 = v28;
  v37 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  v38 = OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  OUTLINED_FUNCTION_171_1();
  sub_21733CCD4(v40, v41, v42);
  v43 = v145;
  sub_2177532C8();
  v145 = v43;
  if (v43)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  OUTLINED_FUNCTION_220_2();
  v44 = v138;
  v45 = v145;
  sub_217752E08();
  v36 = v140;
  v46 = v141;
  v145 = v45;
  if (!v45)
  {
    *&v135 = v1;
    v48 = &type metadata for JSONValue;
    OUTLINED_FUNCTION_65_6();
    v49 = sub_217751DC8();
    OUTLINED_FUNCTION_65_6();
    v50 = sub_217751DC8();
    OUTLINED_FUNCTION_65_6();
    v51 = sub_217751DC8();
    sub_21733BE70(v154);
    OUTLINED_FUNCTION_7_14();
    sub_21733CAD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
    if (swift_dynamicCast())
    {
      v143 = v51;
      sub_2171F3F0C(v151, v152);
      OUTLINED_FUNCTION_73_7();
      v52 = v145;
      OUTLINED_FUNCTION_171_1();
      v54 = v53();
      v145 = v52;
      if (v52)
      {

LABEL_10:
        v55 = OUTLINED_FUNCTION_231_0();
        v57 = v138;
LABEL_28:
        v56(v55, v57);
        OUTLINED_FUNCTION_1_19();
        v77 = v46;
LABEL_29:
        sub_21733CA78(v77, v76);
        __swift_destroy_boxed_opaque_existential_1(v152);
        goto LABEL_30;
      }

      v136 = v54;
      if (OUTLINED_FUNCTION_55_4())
      {

        OUTLINED_FUNCTION_72_5();
        v145 = 0;
        OUTLINED_FUNCTION_73_7();
        v63 = v145;
        OUTLINED_FUNCTION_171_1();
        v65 = v64();
        v145 = v63;
        if (v63)
        {
          goto LABEL_35;
        }

        v49 = v65;
        __swift_destroy_boxed_opaque_existential_1(v151);
      }

      if (OUTLINED_FUNCTION_55_4())
      {

        OUTLINED_FUNCTION_72_5();
        v145 = 0;
        OUTLINED_FUNCTION_73_7();
        v78 = v145;
        OUTLINED_FUNCTION_171_1();
        v80 = v79();
        v145 = v78;
        if (v78)
        {
LABEL_35:

          v81 = v151;
LABEL_36:
          __swift_destroy_boxed_opaque_existential_1(v81);
          goto LABEL_10;
        }

        v50 = v80;
        __swift_destroy_boxed_opaque_existential_1(v151);
      }

      LOBYTE(v150[0]) = 6;
      v93 = v138;
      if (sub_217752EC8())
      {

        LOBYTE(v150[0]) = 6;
        v94 = v145;
        sub_217752E08();
        v145 = v94;
        if (v94)
        {

          v55 = OUTLINED_FUNCTION_71_6();
          v57 = v93;
          goto LABEL_28;
        }

        sub_2171FF30C(v149, v147);
        v97 = v145;
        CloudResourceCustomMetadata.init(from:)(v147, v150);
        v145 = v97;
        if (v97)
        {

          v81 = v149;
          goto LABEL_36;
        }

        memcpy(v148, v150, sizeof(v148));
        OUTLINED_FUNCTION_73_7();
        v125 = sub_217383B34(&unk_28295F078);
        v126 = v145;
        v127 = (*(v93 + 40))(v149, v125, 6, v93);
        v145 = v126;
        if (v126)
        {

          sub_21733BED8(v148);
          __swift_destroy_boxed_opaque_existential_1(v149);
          v128 = OUTLINED_FUNCTION_231_0();
          v129(v128, v138);
          OUTLINED_FUNCTION_1_19();
          v77 = v141;
          goto LABEL_29;
        }

        v143 = v127;
        __swift_destroy_boxed_opaque_existential_1(v149);

        memcpy(v146, v148, sizeof(v146));
        nullsub_1(v146, v133);
        v95 = v146;
      }

      else
      {
        v95 = v154;
      }

      memcpy(v151, v95, sizeof(v151));
      __swift_destroy_boxed_opaque_existential_1(v152);
      v96 = v151;
      goto LABEL_51;
    }

    memset(v151, 0, 40);
    sub_2171F0738(v151, &qword_27CB25588, &unk_21775D380);
    sub_2171FF30C(&v155, v151);
    OUTLINED_FUNCTION_92_3();
    sub_21733CAD0();
    v58 = v145;
    sub_217386290();
    v145 = v58;
    if (v58)
    {

LABEL_13:
      v60 = OUTLINED_FUNCTION_231_0();
LABEL_14:
      v62 = v138;
LABEL_40:
      v61(v60, v62);
      OUTLINED_FUNCTION_1_19();
      sub_21733CA78(v46, v82);
      __swift_destroy_boxed_opaque_existential_1(v36);
      goto LABEL_33;
    }

    v136 = v59;
    v143 = v51;
    if (OUTLINED_FUNCTION_55_4())
    {

      OUTLINED_FUNCTION_72_5();
      v145 = 0;
      sub_2171FF30C(v151, v150);
      if (qword_27CB23DF0 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2BFE8, v66, v67, v68, v69, v70, v71, v72, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146[0], v146[1], v146[2], v146[3], v146[4], v146[5]);
      v73 = v145;
      v75 = Dictionary<>.init(from:skippingValuesFor:)(v150, v74);
      v145 = v73;
      if (v73)
      {
        goto LABEL_44;
      }

      v49 = v75;
      __swift_destroy_boxed_opaque_existential_1(v151);
    }

    if (OUTLINED_FUNCTION_55_4())
    {

      OUTLINED_FUNCTION_72_5();
      v145 = 0;
      sub_2171FF30C(v151, v150);
      if (qword_27CB23DF8 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2BFF0, v83, v84, v85, v86, v87, v88, v89, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146[0], v146[1], v146[2], v146[3], v146[4], v146[5]);
      v90 = v145;
      v92 = Dictionary<>.init(from:skippingValuesFor:)(v150, v91);
      v145 = v90;
      if (v90)
      {
LABEL_44:

        __swift_destroy_boxed_opaque_existential_1(v151);
        v60 = OUTLINED_FUNCTION_71_6();
        goto LABEL_14;
      }

      v50 = v92;
      __swift_destroy_boxed_opaque_existential_1(v151);
    }

    if ((OUTLINED_FUNCTION_55_4() & 1) == 0)
    {
      memcpy(v153, v154, sizeof(v153));
LABEL_59:
      LOBYTE(v151[0]) = 2;
      if (sub_217752EC8())
      {
        LOBYTE(v151[0]) = 2;
        v99 = v145;
        v100 = sub_217752E68();
        v145 = v99;
        if (v99)
        {

          sub_2171F0738(v153, &qword_27CB25620, &qword_21776A5F0);

          v102 = OUTLINED_FUNCTION_71_6();
          v103(v102, v48);
LABEL_4:
          sub_21733CA78(v141, type metadata accessor for LegacyModelCodablePlaylistEntry);
          v35 = 0;
          v0 = v139;
          v36 = v140;
          goto LABEL_31;
        }

        v104 = v100;
        v105 = v101;
        v144 = v50;
      }

      else
      {
        v144 = v50;
        v104 = 0;
        v105 = 0;
      }

      OUTLINED_FUNCTION_7_14();
      v106 = v141;
      v0 = v139;
      sub_21733CAD0();
      LOBYTE(v150[0]) = 1;
      sub_21733BE84();
      v107 = v138;
      v108 = v145;
      sub_217752EA8();
      v145 = v108;
      if (!v108)
      {
        v112 = OUTLINED_FUNCTION_71_6();
        v113(v112, v107);
        OUTLINED_FUNCTION_1_19();
        sub_21733CA78(v106, v114);
        v115 = *(&v151[0] + 1);
        v116 = v151[1];
        v117 = *(&v135 + 1);
        v118 = v0 + *(*(&v135 + 1) + 36);
        *v118 = *&v151[0];
        *(v118 + 8) = v115;
        *(v118 + 16) = v116;
        v119 = (v0 + v117[10]);
        *v119 = v104;
        v119[1] = v105;
        memcpy((v0 + v117[11]), v153, 0x180uLL);
        *(v0 + v117[12]) = v136;
        *(v0 + v117[13]) = v49;
        v120 = v143;
        *(v0 + v117[14]) = v144;
        *(v0 + v117[15]) = v120;
        sub_21726A630(v0, v142, &qword_27CB247D8, &qword_217758D60);
        __swift_destroy_boxed_opaque_existential_1(v140);
        OUTLINED_FUNCTION_158();
        sub_2171F0738(v121, v122, v123);
        goto LABEL_33;
      }

      sub_2171F0738(v153, &qword_27CB25620, &qword_21776A5F0);

      v109 = OUTLINED_FUNCTION_71_6();
      v110(v109, v107);
      OUTLINED_FUNCTION_1_19();
      sub_21733CA78(v106, v111);
      v35 = 1;
      v36 = v140;
      goto LABEL_31;
    }

    LOBYTE(v151[0]) = 6;
    v98 = v145;
    sub_217752E08();
    v145 = v98;
    if (v98)
    {

      v60 = OUTLINED_FUNCTION_71_6();
      v62 = &type metadata for JSONValue;
      goto LABEL_40;
    }

    sub_2171FF30C(v146, v152);
    v124 = v145;
    CloudResourceCustomMetadata.init(from:)(v152, v151);
    v145 = v124;
    if (v124)
    {
    }

    else
    {
      memcpy(v150, v151, sizeof(v150));
      sub_2171FF30C(v146, v149);
      v130 = *(v46 + SLODWORD(v137[2].Kind));
      sub_217383B34(&unk_28295F078);
      v131 = v145;
      sub_21738814C();
      v145 = v131;
      if (!v131)
      {
        v143 = v132;
        __swift_destroy_boxed_opaque_existential_1(v146);
        memcpy(v148, v150, sizeof(v148));
        nullsub_1(v148, v134);
        v96 = v148;
LABEL_51:
        memcpy(v153, v96, sizeof(v153));
        v48 = v138;
        goto LABEL_59;
      }

      sub_21733BED8(v150);
    }

    __swift_destroy_boxed_opaque_existential_1(v146);
    goto LABEL_13;
  }

  (*(v144 + 8))(v1, v44);
  OUTLINED_FUNCTION_1_19();
  sub_21733CA78(v46, v47);
LABEL_30:
  v35 = 0;
  v0 = v139;
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (v35)
  {
    sub_21733CA78(v0, type metadata accessor for LegacyModelCodablePlaylistEntry);
  }

LABEL_33:
  OUTLINED_FUNCTION_170();
}

void sub_217315E8C()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v49 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258D0, &qword_21775D960);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_128();
  v10 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v11 = OUTLINED_FUNCTION_43(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  OUTLINED_FUNCTION_43(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_130_2();
  sub_2171FF30C(v3, v59);
  LegacyModelCodablePlaylistEntryItem.init(from:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v47 = v1;
    v46 = v18;
    v23 = v3[4];
    OUTLINED_FUNCTION_160(v3, v3[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258C0, &qword_21775D958);
    sub_21733CCD4(&qword_27CB258C8, &qword_27CB258C0, &qword_21775D958);
    sub_2177532C8();
    sub_217751DC8();

    OUTLINED_FUNCTION_220_2();
    sub_217752E08();
    OUTLINED_FUNCTION_154();
    v24 = sub_217751DC8();
    OUTLINED_FUNCTION_154();
    v25 = sub_217751DC8();
    OUTLINED_FUNCTION_154();
    v26 = sub_217751DC8();
    sub_21733BE70(v59);
    v57 = v10;
    v58 = &protocol witness table for LegacyModelCodablePlaylistEntryItem;
    __swift_allocate_boxed_opaque_existential_0(v56);
    OUTLINED_FUNCTION_32_9();
    sub_21733CAD0();
    OUTLINED_FUNCTION_160(v56, v57);
    LegacyModelCodablePlaylistEntryItem.decodeRawAttributes(from:)();
    v45 = v27;
    v48 = v25;
    LOBYTE(v55[0]) = 4;
    if (sub_217752EC8())
    {

      LOBYTE(v53[0]) = 4;
      sub_217752E08();
      LegacyModelCodablePlaylistEntryItem.decodeRawRelationships(from:)();
      v43 = v28;
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      v43 = v24;
    }

    LOBYTE(v55[0]) = 5;
    if (sub_217752EC8())
    {

      LOBYTE(v53[0]) = 5;
      OUTLINED_FUNCTION_123_4();
      sub_217752E08();
      LegacyModelCodablePlaylistEntryItem.decodeRawAssociations(from:)();
      v48 = v29;
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    LOBYTE(v53[0]) = 6;
    OUTLINED_FUNCTION_123_4();
    if (sub_217752EC8())
    {

      LOBYTE(v53[0]) = 6;
      OUTLINED_FUNCTION_123_4();
      sub_217752E08();
      sub_2171FF30C(v54, v52);
      CloudResourceCustomMetadata.init(from:)(v52, v53);
      memcpy(v51, v53, sizeof(v51));
      sub_217383B34(&unk_28295F078);
      LegacyModelCodablePlaylistEntryItem.decodeRawMetadata(from:skippingValuesFor:)();
      v26 = v40;
      __swift_destroy_boxed_opaque_existential_1(v54);

      memcpy(v50, v51, sizeof(v50));
      nullsub_1(v50, v41);
      v42 = v50;
    }

    else
    {
      v42 = v59;
    }

    memcpy(v55, v42, sizeof(v55));
    __swift_destroy_boxed_opaque_existential_1(v56);
    LOBYTE(v53[0]) = 2;
    OUTLINED_FUNCTION_123_4();
    if (sub_217752EC8())
    {
      LOBYTE(v53[0]) = 2;
      v30 = sub_217752E68();
      v32 = v31;
      v44 = v30;
    }

    else
    {
      v44 = 0;
      v32 = 0;
    }

    OUTLINED_FUNCTION_32_9();
    sub_21733CAD0();
    v51[0] = 1;
    sub_21733BE84();
    sub_217752EA8();
    OUTLINED_FUNCTION_174_3();
    v33 = OUTLINED_FUNCTION_153();
    v34(v33);
    OUTLINED_FUNCTION_2_26();
    sub_21733CA78(v17, v35);
    v36 = v53[1];
    v37 = v53[2];
    v38 = v47 + v46[9];
    *v38 = v53[0];
    *(v38 + 8) = v36;
    *(v38 + 16) = v37;
    v39 = (v47 + v46[10]);
    *v39 = v44;
    v39[1] = v32;
    memcpy((v47 + v46[11]), v55, 0x180uLL);
    *(v47 + v46[12]) = v45;
    *(v47 + v46[13]) = v43;
    *(v47 + v46[14]) = v48;
    *(v47 + v46[15]) = v26;
    sub_21726A630(v47, v49, &qword_27CB25650, &unk_21778F830);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F0738(v47, &qword_27CB25650, &unk_21778F830);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217316710@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = type metadata accessor for CloudStation.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v131 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A10, &qword_21775DA38);
  v132 = *(v7 - 8);
  v8 = *(v132 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v121 - v10;
  v12 = type metadata accessor for CloudStation(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v121 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v22 = *(v21[-1].Description + 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v121 - v24;
  sub_2171FF30C(a1, v143);
  v26 = v146;
  CloudStation.init(from:)();
  v146 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_34;
  }

  v124 = v16;
  v125 = v12;
  v123 = v21;
  v126 = v7;
  v127 = v25;
  v128 = a1;
  v129 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259E8, &qword_21775DA30);
  sub_21733CCD4(&qword_27CB259F0, &qword_27CB259E8, &qword_21775DA30);
  v30 = v146;
  sub_2177532C8();
  v146 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v144 = 3;
  v31 = v126;
  v32 = v146;
  sub_217752E08();
  v28 = v128;
  v33 = v129;
  v146 = v32;
  if (v32)
  {
    (*(v132 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudStation);
LABEL_33:
    v27 = 0;
    v25 = v127;
    goto LABEL_34;
  }

  v122 = v11;
  *(&v121 + 1) = sub_217751DC8();
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  sub_21733BE70(v143);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v36 = v125;
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(v138, v139);
    v37 = v140;
    v38 = v141;
    __swift_project_boxed_opaque_existential_1(v139, v140);
    v39 = v146;
    v40 = (*(v38 + 16))(v145, v37, v38);
    v41 = v132;
    v146 = v39;
    if (v39)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v145);
      (*(v41 + 8))(v122, v126);
LABEL_31:
      v72 = v33;
LABEL_32:
      sub_21733CA78(v72, type metadata accessor for CloudStation);
      __swift_destroy_boxed_opaque_existential_1(v139);
      goto LABEL_33;
    }

    v131 = v40;
    LOBYTE(v138[0]) = 4;
    v48 = v126;
    v49 = v122;
    if (sub_217752EC8())
    {

      LOBYTE(v136[0]) = 4;
      v50 = v146;
      sub_217752E08();
      v146 = v50;
      if (v50)
      {
        goto LABEL_30;
      }

      v54 = v140;
      v55 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      v56 = v146;
      v57 = (*(v55 + 24))(v138, v54, v55);
      v146 = v56;
      if (v56)
      {
LABEL_38:

        v78 = v138;
LABEL_39:
        __swift_destroy_boxed_opaque_existential_1(v78);
        goto LABEL_10;
      }

      *(&v121 + 1) = v57;
      __swift_destroy_boxed_opaque_existential_1(v138);
    }

    LOBYTE(v138[0]) = 5;
    v48 = v126;
    v49 = v122;
    if (sub_217752EC8())
    {

      LOBYTE(v136[0]) = 5;
      v71 = v146;
      sub_217752E08();
      v146 = v71;
      if (v71)
      {
LABEL_30:

        __swift_destroy_boxed_opaque_existential_1(v145);
        (*(v41 + 8))(v49, v48);
        goto LABEL_31;
      }

      v74 = v140;
      v75 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      v76 = v146;
      v77 = (*(v75 + 32))(v138, v74, v75);
      v146 = v76;
      if (v76)
      {
        goto LABEL_38;
      }

      v34 = v77;
      __swift_destroy_boxed_opaque_existential_1(v138);
    }

    LOBYTE(v136[0]) = 6;
    v48 = v126;
    v49 = v122;
    if (sub_217752EC8())
    {

      LOBYTE(v136[0]) = 6;
      v90 = v146;
      sub_217752E08();
      v146 = v90;
      if (v90)
      {
        goto LABEL_30;
      }

      sub_2171FF30C(v137, v135);
      v93 = v146;
      CloudResourceCustomMetadata.init(from:)(v135, v136);
      v146 = v93;
      if (v93)
      {

        v78 = v137;
        goto LABEL_39;
      }

      memcpy(v134, v136, sizeof(v134));
      v112 = v140;
      v113 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      v114 = sub_217383B34(&unk_28295F078);
      v115 = v146;
      v116 = (*(v113 + 40))(v137, v114, v112, v113);
      v146 = v115;
      if (v115)
      {

        sub_21733BED8(v134);
        __swift_destroy_boxed_opaque_existential_1(v137);
        __swift_destroy_boxed_opaque_existential_1(v145);
        (*(v41 + 8))(v122, v126);
        v72 = v129;
        goto LABEL_32;
      }

      v35 = v116;
      __swift_destroy_boxed_opaque_existential_1(v137);

      memcpy(v133, v134, 0x180uLL);
      nullsub_1(v133, v119);
      v91 = v133;
    }

    else
    {
      v91 = v143;
    }

    memcpy(v138, v91, sizeof(v138));
    __swift_destroy_boxed_opaque_existential_1(v139);
    v92 = v138;
    goto LABEL_55;
  }

  memset(v138, 0, 40);
  sub_2171F0738(v138, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v145, v138);
  v42 = *(v36 + 20);
  sub_21733CAD0();
  v43 = v146;
  sub_2173858E4();
  v41 = v132;
  v146 = v43;
  if (v43)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v145);
    v45 = *(v41 + 8);
    v46 = v122;
LABEL_14:
    v47 = v126;
LABEL_44:
    v45(v46, v47);
    sub_21733CA78(v33, type metadata accessor for CloudStation);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v131 = v44;
  LOBYTE(v138[0]) = 4;
  v51 = v126;
  v52 = v122;
  if (sub_217752EC8())
  {

    LOBYTE(v136[0]) = 4;
    v53 = v146;
    sub_217752E08();
    v146 = v53;
    if (v53)
    {
      goto LABEL_43;
    }

    sub_2171FF30C(v138, v136);
    if (qword_280BE4D60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v58 = sub_217751DE8();
    sub_217383748(v58, v59, v60, v61, v62, v63, v64, v65, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133[0], v133[1], v133[2], v133[3], v133[4]);
    v67 = v66;

    v68 = v146;
    v69 = Dictionary<>.init(from:skippingValuesFor:)(v136, v67);
    v70 = v122;
    v146 = v68;
    if (v68)
    {
      goto LABEL_48;
    }

    *(&v121 + 1) = v69;
    __swift_destroy_boxed_opaque_existential_1(v138);
  }

  LOBYTE(v138[0]) = 5;
  v51 = v126;
  v52 = v122;
  if (sub_217752EC8())
  {

    LOBYTE(v136[0]) = 5;
    v79 = v146;
    sub_217752E08();
    v146 = v79;
    if (v79)
    {
LABEL_43:

      __swift_destroy_boxed_opaque_existential_1(v145);
      v45 = *(v41 + 8);
      v46 = v52;
      v47 = v51;
      goto LABEL_44;
    }

    sub_2171FF30C(v138, v136);
    if (qword_27CB23E58 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C988, v80, v81, v82, v83, v84, v85, v86, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133[0], v133[1], v133[2], v133[3], v133[4]);
    v87 = v146;
    v89 = Dictionary<>.init(from:skippingValuesFor:)(v136, v88);
    v70 = v122;
    v146 = v87;
    if (v87)
    {
LABEL_48:

      __swift_destroy_boxed_opaque_existential_1(v138);
      __swift_destroy_boxed_opaque_existential_1(v145);
      v45 = *(v41 + 8);
      v46 = v70;
      goto LABEL_14;
    }

    v34 = v89;
    __swift_destroy_boxed_opaque_existential_1(v138);
  }

  LOBYTE(v138[0]) = 6;
  v51 = v126;
  v52 = v122;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v142, v143, sizeof(v142));
    goto LABEL_63;
  }

  LOBYTE(v138[0]) = 6;
  v94 = v146;
  sub_217752E08();
  v146 = v94;
  if (v94)
  {
    goto LABEL_43;
  }

  sub_2171FF30C(v139, v137);
  v111 = v146;
  CloudResourceCustomMetadata.init(from:)(v137, v138);
  v146 = v111;
  if (v111)
  {

LABEL_77:
    __swift_destroy_boxed_opaque_existential_1(v139);
    goto LABEL_13;
  }

  memcpy(v136, v138, sizeof(v136));
  sub_2171FF30C(v139, v135);
  sub_21726A630(v33 + *(v125 + 32), v133, &qword_27CB24340, &unk_2177650B0);
  sub_217383B34(&unk_28295F078);
  v117 = v146;
  sub_2173876D0();
  v146 = v117;
  if (v117)
  {

    sub_21733BED8(v136);
    goto LABEL_77;
  }

  v35 = v118;
  __swift_destroy_boxed_opaque_existential_1(v139);
  memcpy(v134, v136, sizeof(v134));
  nullsub_1(v134, v120);
  v92 = v134;
LABEL_55:
  memcpy(v142, v92, sizeof(v142));
  v51 = v126;
LABEL_63:
  LOBYTE(v138[0]) = 2;
  v95 = v122;
  if (sub_217752EC8())
  {
    LOBYTE(v138[0]) = 2;
    v96 = v146;
    v97 = sub_217752E68();
    v146 = v96;
    if (v96)
    {

      sub_2171F0738(v142, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v145);
      (*(v41 + 8))(v95, v51);
LABEL_4:
      sub_21733CA78(v129, type metadata accessor for CloudStation);
      v27 = 0;
      v25 = v127;
      v28 = v128;
      goto LABEL_34;
    }

    v99 = v97;
    v100 = v98;
    v132 = v34;
  }

  else
  {
    v132 = v34;
    v99 = 0;
    v100 = 0;
  }

  v101 = v129;
  v25 = v127;
  sub_21733CAD0();
  LOBYTE(v136[0]) = 1;
  sub_21733BE84();
  v102 = v126;
  v103 = v122;
  v104 = v146;
  sub_217752EA8();
  v146 = v104;
  if (!v104)
  {
    __swift_destroy_boxed_opaque_existential_1(v145);
    (*(v41 + 8))(v103, v102);
    sub_21733CA78(v101, type metadata accessor for CloudStation);
    v105 = *(&v138[0] + 1);
    v106 = v138[1];
    v107 = v123;
    v108 = &v25[SHIDWORD(v123[2].Kind)];
    *v108 = *&v138[0];
    *(v108 + 1) = v105;
    v108[16] = v106;
    v109 = &v25[v107[10]];
    *v109 = v99;
    *(v109 + 1) = v100;
    memcpy(&v25[v107[11]], v142, 0x180uLL);
    v110 = v130;
    *&v25[v107[12]] = v131;
    *&v25[v107[13]] = *(&v121 + 1);
    *&v25[v107[14]] = v132;
    *&v25[v107[15]] = v35;
    sub_21726A630(v25, v110, &qword_27CB24738, &qword_217758CC0);
    __swift_destroy_boxed_opaque_existential_1(v128);
    return sub_2171F0738(v25, &qword_27CB24738, &qword_217758CC0);
  }

  sub_2171F0738(v142, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v145);
  (*(v41 + 8))(v103, v102);
  sub_21733CA78(v101, type metadata accessor for CloudStation);
  v27 = 1;
  v28 = v128;
LABEL_34:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudStation);
  }

  return result;
}

uint64_t sub_217317684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for CloudArtist.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v112 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25810, &qword_21775D8D8);
  v113 = *(v7 - 8);
  v8 = *(v113 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v103 - v10;
  v12 = type metadata accessor for CloudArtist(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v103 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v103 - v24;
  sub_2171FF30C(a1, v125);
  v26 = v114;
  CloudArtist.init(from:)();
  v114 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_31;
  }

  v105 = v16;
  v106 = v12;
  v104 = v21;
  v107 = v7;
  v108 = v25;
  v109 = a1;
  v110 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257F0, &qword_21775D8D0);
  sub_21733CCD4(&qword_27CB257F8, &qword_27CB257F0, &qword_21775D8D0);
  v30 = v114;
  sub_2177532C8();
  v114 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v127 = 3;
  v31 = v107;
  v32 = v114;
  sub_217752E08();
  v28 = v109;
  v33 = v110;
  v114 = v32;
  if (v32)
  {
    (*(v113 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudArtist);
LABEL_30:
    v27 = 0;
    v25 = v108;
    goto LABEL_31;
  }

  v103 = v11;
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  v36 = sub_217751DC8();
  sub_21733BE70(v125);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v37 = v106;
  if (swift_dynamicCast())
  {
    v112 = v36;
    sub_2171F3F0C(v120, v121);
    v38 = v122;
    v39 = v123;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    v40 = v114;
    v41 = (*(v39 + 16))(v126, v38, v39);
    v42 = v113;
    v114 = v40;
    if (v40)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v42 + 8))(v103, v107);
LABEL_28:
      v60 = v33;
LABEL_29:
      sub_21733CA78(v60, type metadata accessor for CloudArtist);
      __swift_destroy_boxed_opaque_existential_1(v121);
      goto LABEL_30;
    }

    v105 = v41;
    LOBYTE(v120[0]) = 4;
    v46 = v107;
    v47 = v103;
    if (sub_217752EC8())
    {

      LOBYTE(v119[0]) = 4;
      v48 = v114;
      sub_217752E08();
      v114 = v48;
      if (v48)
      {
        goto LABEL_27;
      }

      v52 = v122;
      v53 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v54 = v114;
      v55 = (*(v53 + 24))(v120, v52, v53);
      v114 = v54;
      if (v54)
      {
LABEL_35:

        v66 = v120;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v66);
        goto LABEL_10;
      }

      v34 = v55;
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    LOBYTE(v120[0]) = 5;
    v46 = v107;
    v47 = v103;
    if (sub_217752EC8())
    {

      LOBYTE(v119[0]) = 5;
      v59 = v114;
      sub_217752E08();
      v114 = v59;
      if (v59)
      {
LABEL_27:

        __swift_destroy_boxed_opaque_existential_1(v126);
        (*(v42 + 8))(v47, v46);
        goto LABEL_28;
      }

      v62 = v122;
      v63 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v64 = v114;
      v65 = (*(v63 + 32))(v120, v62, v63);
      v114 = v64;
      if (v64)
      {
        goto LABEL_35;
      }

      v35 = v65;
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    LOBYTE(v119[0]) = 6;
    v46 = v107;
    v47 = v103;
    if (sub_217752EC8())
    {

      LOBYTE(v119[0]) = 6;
      v72 = v114;
      sub_217752E08();
      v114 = v72;
      if (v72)
      {
        goto LABEL_27;
      }

      sub_2171FF30C(v118, v116);
      v75 = v114;
      CloudResourceCustomMetadata.init(from:)(v116, v119);
      v114 = v75;
      if (v75)
      {

        v66 = v118;
        goto LABEL_36;
      }

      memcpy(v117, v119, sizeof(v117));
      v94 = v122;
      v95 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v96 = sub_217383B34(&unk_28295F078);
      v97 = v114;
      v98 = (*(v95 + 40))(v118, v96, v94, v95);
      v114 = v97;
      if (v97)
      {

        sub_21733BED8(v117);
        __swift_destroy_boxed_opaque_existential_1(v118);
        __swift_destroy_boxed_opaque_existential_1(v126);
        (*(v42 + 8))(v103, v107);
        v60 = v110;
        goto LABEL_29;
      }

      v112 = v98;
      __swift_destroy_boxed_opaque_existential_1(v118);

      memcpy(v115, v117, sizeof(v115));
      nullsub_1(v115, v101);
      v73 = v115;
    }

    else
    {
      v73 = v125;
    }

    memcpy(v120, v73, sizeof(v120));
    __swift_destroy_boxed_opaque_existential_1(v121);
    v74 = v120;
    goto LABEL_50;
  }

  memset(v120, 0, 40);
  sub_2171F0738(v120, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v126, v120);
  v43 = *(v37 + 20);
  sub_21733CAD0();
  v44 = v114;
  sub_217385F04();
  v42 = v113;
  v114 = v44;
  if (v44)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v126);
    (*(v42 + 8))(v103, v107);
LABEL_41:
    sub_21733CA78(v33, type metadata accessor for CloudArtist);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v105 = v45;
  v112 = v36;
  LOBYTE(v120[0]) = 4;
  v49 = v107;
  v50 = v103;
  if (sub_217752EC8())
  {

    LOBYTE(v119[0]) = 4;
    v51 = v114;
    sub_217752E08();
    v114 = v51;
    if (v51)
    {
      goto LABEL_40;
    }

    sub_2171FF30C(v120, v119);
    v56 = sub_2173839CC(&unk_28295B7B0);
    v57 = v114;
    v58 = Dictionary<>.init(from:skippingValuesFor:)(v119, v56);
    v114 = v57;
    if (v57)
    {
LABEL_43:

      v71 = v120;
LABEL_73:
      __swift_destroy_boxed_opaque_existential_1(v71);
      goto LABEL_13;
    }

    v34 = v58;
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  LOBYTE(v120[0]) = 5;
  v49 = v107;
  v50 = v103;
  if (sub_217752EC8())
  {

    LOBYTE(v119[0]) = 5;
    v67 = v114;
    sub_217752E08();
    v114 = v67;
    if (v67)
    {
LABEL_40:

      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v42 + 8))(v50, v49);
      goto LABEL_41;
    }

    sub_2171FF30C(v120, v119);
    v68 = sub_217383A4C(&unk_28295B7D8);
    v69 = v114;
    v70 = Dictionary<>.init(from:skippingValuesFor:)(v119, v68);
    v114 = v69;
    if (v69)
    {
      goto LABEL_43;
    }

    v35 = v70;
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  LOBYTE(v120[0]) = 6;
  v49 = v107;
  v50 = v103;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v124, v125, sizeof(v124));
    goto LABEL_58;
  }

  LOBYTE(v120[0]) = 6;
  v76 = v114;
  sub_217752E08();
  v114 = v76;
  if (v76)
  {
    goto LABEL_40;
  }

  sub_2171FF30C(v115, v121);
  v93 = v114;
  CloudResourceCustomMetadata.init(from:)(v121, v120);
  v114 = v93;
  if (v93)
  {

LABEL_72:
    v71 = v115;
    goto LABEL_73;
  }

  memcpy(v119, v120, sizeof(v119));
  sub_2171FF30C(v115, v118);
  sub_217221020(*(v33 + *(v106 + 32)));
  sub_217383B34(&unk_28295F078);
  v99 = v114;
  sub_2173880FC();
  v114 = v99;
  if (v99)
  {

    sub_21733BED8(v119);
    goto LABEL_72;
  }

  v112 = v100;
  __swift_destroy_boxed_opaque_existential_1(v115);
  memcpy(v117, v119, sizeof(v117));
  nullsub_1(v117, v102);
  v74 = v117;
LABEL_50:
  memcpy(v124, v74, sizeof(v124));
  v49 = v107;
LABEL_58:
  LOBYTE(v120[0]) = 2;
  v77 = v103;
  if (sub_217752EC8())
  {
    LOBYTE(v120[0]) = 2;
    v78 = v114;
    v79 = sub_217752E68();
    v114 = v78;
    if (v78)
    {

      sub_2171F0738(v124, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v42 + 8))(v77, v49);
LABEL_4:
      sub_21733CA78(v110, type metadata accessor for CloudArtist);
      v27 = 0;
      v25 = v108;
      v28 = v109;
      goto LABEL_31;
    }

    v81 = v79;
    v82 = v80;
    v113 = v35;
  }

  else
  {
    v113 = v35;
    v81 = 0;
    v82 = 0;
  }

  v83 = v110;
  v25 = v108;
  sub_21733CAD0();
  LOBYTE(v119[0]) = 1;
  sub_21733BE84();
  v84 = v107;
  v85 = v103;
  v86 = v114;
  sub_217752EA8();
  v114 = v86;
  if (!v86)
  {
    __swift_destroy_boxed_opaque_existential_1(v126);
    (*(v42 + 8))(v85, v84);
    sub_21733CA78(v83, type metadata accessor for CloudArtist);
    v87 = *(&v120[0] + 1);
    v88 = v120[1];
    v89 = v104;
    v90 = &v25[v104[9]];
    *v90 = *&v120[0];
    *(v90 + 1) = v87;
    v90[16] = v88;
    v91 = &v25[v89[10]];
    *v91 = v81;
    *(v91 + 1) = v82;
    memcpy(&v25[v89[11]], v124, 0x180uLL);
    *&v25[v89[12]] = v105;
    *&v25[v89[13]] = v34;
    v92 = v112;
    *&v25[v89[14]] = v113;
    *&v25[v89[15]] = v92;
    sub_21726A630(v25, v111, &qword_27CB24728, &qword_217758CB0);
    __swift_destroy_boxed_opaque_existential_1(v109);
    return sub_2171F0738(v25, &qword_27CB24728, &qword_217758CB0);
  }

  sub_2171F0738(v124, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v126);
  (*(v42 + 8))(v85, v84);
  sub_21733CA78(v83, type metadata accessor for CloudArtist);
  v27 = 1;
  v28 = v109;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudArtist);
  }

  return result;
}

uint64_t sub_217318548@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = type metadata accessor for CloudGenre.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v122 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25848, &qword_21775D8F8);
  v123 = *(v7 - 8);
  v8 = *(v123 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v114 - v10;
  v12 = type metadata accessor for CloudGenre(0);
  v13 = *(v12[-1].Description + 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v114 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v114 - v24;
  sub_2171FF30C(a1, v135);
  v26 = v124;
  CloudGenre.init(from:)();
  v124 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_32;
  }

  v115 = v16;
  v116 = v12;
  *(&v114 + 1) = v21;
  v117 = v7;
  v118 = v25;
  v119 = a1;
  v120 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25820, &qword_21775D8E8);
  sub_21733CCD4(&qword_27CB25828, &qword_27CB25820, &qword_21775D8E8);
  v30 = v124;
  sub_2177532C8();
  v124 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v137 = 3;
  v31 = v117;
  v32 = v124;
  sub_217752E08();
  v28 = v119;
  v33 = v120;
  v124 = v32;
  if (v32)
  {
    (*(v123 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudGenre);
LABEL_31:
    v27 = 0;
    v25 = v118;
    goto LABEL_32;
  }

  *&v114 = v11;
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  v36 = sub_217751DC8();
  sub_21733BE70(v135);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v37 = v116;
  if (swift_dynamicCast())
  {
    v122 = v36;
    sub_2171F3F0C(v130, v131);
    v38 = v132;
    v39 = v133;
    __swift_project_boxed_opaque_existential_1(v131, v132);
    v40 = v124;
    v41 = (*(v39 + 16))(v136, v38, v39);
    v42 = v123;
    v124 = v40;
    if (v40)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v136);
      (*(v42 + 8))(v114, v117);
LABEL_29:
      v64 = v33;
LABEL_30:
      sub_21733CA78(v64, type metadata accessor for CloudGenre);
      __swift_destroy_boxed_opaque_existential_1(v131);
      goto LABEL_31;
    }

    v115 = v41;
    LOBYTE(v130[0]) = 4;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 4;
      v51 = v124;
      sub_217752E08();
      v124 = v51;
      if (v51)
      {
        goto LABEL_28;
      }

      v55 = v132;
      v56 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v57 = v124;
      v58 = (*(v56 + 24))(v130, v55, v56);
      v124 = v57;
      if (v57)
      {
LABEL_36:

        v70 = v130;
LABEL_37:
        __swift_destroy_boxed_opaque_existential_1(v70);
        goto LABEL_10;
      }

      v34 = v58;
      __swift_destroy_boxed_opaque_existential_1(v130);
    }

    LOBYTE(v130[0]) = 5;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 5;
      v63 = v124;
      sub_217752E08();
      v124 = v63;
      if (v63)
      {
LABEL_28:

        __swift_destroy_boxed_opaque_existential_1(v136);
        (*(v42 + 8))(v50, v49);
        goto LABEL_29;
      }

      v66 = v132;
      v67 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v68 = v124;
      v69 = (*(v67 + 32))(v130, v66, v67);
      v124 = v68;
      if (v68)
      {
        goto LABEL_36;
      }

      v35 = v69;
      __swift_destroy_boxed_opaque_existential_1(v130);
    }

    LOBYTE(v129[0]) = 6;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 6;
      v83 = v124;
      sub_217752E08();
      v124 = v83;
      if (v83)
      {
        goto LABEL_28;
      }

      sub_2171FF30C(v128, v126);
      v86 = v124;
      CloudResourceCustomMetadata.init(from:)(v126, v129);
      v124 = v86;
      if (v86)
      {

        v70 = v128;
        goto LABEL_37;
      }

      memcpy(v127, v129, sizeof(v127));
      v105 = v132;
      v106 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v107 = sub_217383B34(&unk_28295F078);
      v108 = v124;
      v109 = (*(v106 + 40))(v128, v107, v105, v106);
      v124 = v108;
      if (v108)
      {

        sub_21733BED8(v127);
        __swift_destroy_boxed_opaque_existential_1(v128);
        __swift_destroy_boxed_opaque_existential_1(v136);
        (*(v42 + 8))(v114, v117);
        v64 = v120;
        goto LABEL_30;
      }

      v122 = v109;
      __swift_destroy_boxed_opaque_existential_1(v128);

      memcpy(v125, v127, sizeof(v125));
      nullsub_1(v125, v112);
      v84 = v125;
    }

    else
    {
      v84 = v135;
    }

    memcpy(v130, v84, sizeof(v130));
    __swift_destroy_boxed_opaque_existential_1(v131);
    v85 = v130;
    goto LABEL_53;
  }

  memset(v130, 0, 40);
  sub_2171F0738(v130, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v136, v130);
  Kind_high = SHIDWORD(v37[1].Kind);
  sub_21733CAD0();
  v44 = v124;
  sub_217385A68();
  v42 = v123;
  v124 = v44;
  if (v44)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v136);
    v46 = *(v42 + 8);
    v47 = v114;
LABEL_14:
    v48 = v117;
LABEL_42:
    v46(v47, v48);
    sub_21733CA78(v33, type metadata accessor for CloudGenre);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v115 = v45;
  v122 = v36;
  LOBYTE(v130[0]) = 4;
  v52 = v117;
  v53 = v114;
  if (sub_217752EC8())
  {

    LOBYTE(v129[0]) = 4;
    v54 = v124;
    sub_217752E08();
    v124 = v54;
    if (v54)
    {
      goto LABEL_41;
    }

    sub_2171FF30C(v130, v129);
    v59 = sub_2173838A4();
    v60 = v124;
    v61 = Dictionary<>.init(from:skippingValuesFor:)(v129, v59);
    v124 = v60;
    if (v60)
    {

      v62 = v130;
LABEL_76:
      __swift_destroy_boxed_opaque_existential_1(v62);
      goto LABEL_13;
    }

    v34 = v61;
    __swift_destroy_boxed_opaque_existential_1(v130);
  }

  LOBYTE(v130[0]) = 5;
  v52 = v117;
  v53 = v114;
  if (sub_217752EC8())
  {

    LOBYTE(v129[0]) = 5;
    v71 = v124;
    sub_217752E08();
    v124 = v71;
    if (v71)
    {
LABEL_41:

      __swift_destroy_boxed_opaque_existential_1(v136);
      v46 = *(v42 + 8);
      v47 = v53;
      v48 = v52;
      goto LABEL_42;
    }

    sub_2171FF30C(v130, v129);
    if (qword_27CB23D60 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2AA78, v72, v73, v74, v75, v76, v77, v78, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5]);
    v79 = v124;
    v81 = Dictionary<>.init(from:skippingValuesFor:)(v129, v80);
    v82 = v114;
    v124 = v79;
    if (v79)
    {

      __swift_destroy_boxed_opaque_existential_1(v130);
      __swift_destroy_boxed_opaque_existential_1(v136);
      v46 = *(v42 + 8);
      v47 = v82;
      goto LABEL_14;
    }

    v35 = v81;
    __swift_destroy_boxed_opaque_existential_1(v130);
  }

  LOBYTE(v130[0]) = 6;
  v52 = v117;
  v53 = v114;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v134, v135, sizeof(v134));
    goto LABEL_61;
  }

  LOBYTE(v130[0]) = 6;
  v87 = v124;
  sub_217752E08();
  v124 = v87;
  if (v87)
  {
    goto LABEL_41;
  }

  sub_2171FF30C(v125, v131);
  v104 = v124;
  CloudResourceCustomMetadata.init(from:)(v131, v130);
  v124 = v104;
  if (v104)
  {

LABEL_75:
    v62 = v125;
    goto LABEL_76;
  }

  memcpy(v129, v130, sizeof(v129));
  sub_2171FF30C(v125, v128);
  sub_217221020(*(v33 + SLODWORD(v116[2].Kind)));
  sub_217383B34(&unk_28295F078);
  v110 = v124;
  sub_217387D1C();
  v124 = v110;
  if (v110)
  {

    sub_21733BED8(v129);
    goto LABEL_75;
  }

  v122 = v111;
  __swift_destroy_boxed_opaque_existential_1(v125);
  memcpy(v127, v129, sizeof(v127));
  nullsub_1(v127, v113);
  v85 = v127;
LABEL_53:
  memcpy(v134, v85, sizeof(v134));
  v52 = v117;
LABEL_61:
  LOBYTE(v130[0]) = 2;
  v88 = v114;
  if (sub_217752EC8())
  {
    LOBYTE(v130[0]) = 2;
    v89 = v124;
    v90 = sub_217752E68();
    v124 = v89;
    if (v89)
    {

      sub_2171F0738(v134, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v136);
      (*(v42 + 8))(v88, v52);
LABEL_4:
      sub_21733CA78(v120, type metadata accessor for CloudGenre);
      v27 = 0;
      v25 = v118;
      v28 = v119;
      goto LABEL_32;
    }

    v92 = v90;
    v93 = v91;
    v123 = v34;
  }

  else
  {
    v123 = v34;
    v92 = 0;
    v93 = 0;
  }

  v94 = v120;
  v25 = v118;
  sub_21733CAD0();
  LOBYTE(v129[0]) = 1;
  sub_21733BE84();
  v95 = v117;
  v96 = v114;
  v97 = v124;
  sub_217752EA8();
  v124 = v97;
  if (!v97)
  {
    __swift_destroy_boxed_opaque_existential_1(v136);
    (*(v42 + 8))(v96, v95);
    sub_21733CA78(v94, type metadata accessor for CloudGenre);
    v98 = *(&v130[0] + 1);
    v99 = v130[1];
    v100 = *(&v114 + 1);
    v101 = &v25[*(*(&v114 + 1) + 36)];
    *v101 = *&v130[0];
    *(v101 + 1) = v98;
    v101[16] = v99;
    v102 = &v25[v100[10]];
    *v102 = v92;
    *(v102 + 1) = v93;
    memcpy(&v25[v100[11]], v134, 0x180uLL);
    *&v25[v100[12]] = v115;
    v103 = v122;
    *&v25[v100[13]] = v123;
    *&v25[v100[14]] = v35;
    *&v25[v100[15]] = v103;
    sub_21726A630(v25, v121, &qword_27CB24768, &qword_217758CF0);
    __swift_destroy_boxed_opaque_existential_1(v119);
    return sub_2171F0738(v25, &qword_27CB24768, &qword_217758CF0);
  }

  sub_2171F0738(v134, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v136);
  (*(v42 + 8))(v96, v95);
  sub_21733CA78(v94, type metadata accessor for CloudGenre);
  v27 = 1;
  v28 = v119;
LABEL_32:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudGenre);
  }

  return result;
}

uint64_t sub_217319464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for CloudAlbum.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v112 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25708, &qword_21775D850);
  v113 = *(v7 - 8);
  v8 = *(v113 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v103 - v10;
  v12 = type metadata accessor for CloudAlbum(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v103 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v103 - v24;
  sub_2171FF30C(a1, v125);
  v26 = v114;
  CloudAlbum.init(from:)();
  v114 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_31;
  }

  v105 = v16;
  v106 = v12;
  v104 = v21;
  v107 = v7;
  v108 = v25;
  v109 = a1;
  v110 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25570, &qword_21775D370);
  sub_21733CCD4(qword_280BE4350, &qword_27CB25570, &qword_21775D370);
  v30 = v114;
  sub_2177532C8();
  v114 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v127 = 3;
  v31 = v107;
  v32 = v114;
  sub_217752E08();
  v28 = v109;
  v33 = v110;
  v114 = v32;
  if (v32)
  {
    (*(v113 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudAlbum);
LABEL_30:
    v27 = 0;
    v25 = v108;
    goto LABEL_31;
  }

  v103 = v11;
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  v36 = sub_217751DC8();
  sub_21733BE70(v125);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v37 = v106;
  if (swift_dynamicCast())
  {
    v112 = v36;
    sub_2171F3F0C(v120, v121);
    v38 = v122;
    v39 = v123;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    v40 = v114;
    v41 = (*(v39 + 16))(v126, v38, v39);
    v42 = v113;
    v114 = v40;
    if (v40)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v42 + 8))(v103, v107);
LABEL_28:
      v60 = v33;
LABEL_29:
      sub_21733CA78(v60, type metadata accessor for CloudAlbum);
      __swift_destroy_boxed_opaque_existential_1(v121);
      goto LABEL_30;
    }

    v105 = v41;
    LOBYTE(v120[0]) = 4;
    v46 = v107;
    v47 = v103;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 4;
      v48 = v114;
      sub_217752E08();
      v114 = v48;
      if (v48)
      {
        goto LABEL_27;
      }

      v52 = v122;
      v53 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v54 = v114;
      v55 = (*(v53 + 24))(v120, v52, v53);
      v114 = v54;
      if (v54)
      {
LABEL_35:

        v66 = v120;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v66);
        goto LABEL_10;
      }

      v34 = v55;
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    LOBYTE(v120[0]) = 5;
    v46 = v107;
    v47 = v103;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 5;
      v59 = v114;
      sub_217752E08();
      v114 = v59;
      if (v59)
      {
LABEL_27:

        __swift_destroy_boxed_opaque_existential_1(v126);
        (*(v42 + 8))(v47, v46);
        goto LABEL_28;
      }

      v62 = v122;
      v63 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v64 = v114;
      v65 = (*(v63 + 32))(v120, v62, v63);
      v114 = v64;
      if (v64)
      {
        goto LABEL_35;
      }

      v35 = v65;
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    LOBYTE(v118[0]) = 6;
    v46 = v107;
    v47 = v103;
    if (sub_217752EC8())
    {

      LOBYTE(v118[0]) = 6;
      v72 = v114;
      sub_217752E08();
      v114 = v72;
      if (v72)
      {
        goto LABEL_27;
      }

      sub_2171FF30C(v119, v117);
      v75 = v114;
      CloudResourceCustomMetadata.init(from:)(v117, v118);
      v114 = v75;
      if (v75)
      {

        v66 = v119;
        goto LABEL_36;
      }

      memcpy(v116, v118, sizeof(v116));
      v94 = v122;
      v95 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v96 = sub_217383B34(&unk_28295F078);
      v97 = v114;
      v98 = (*(v95 + 40))(v119, v96, v94, v95);
      v114 = v97;
      if (v97)
      {

        sub_21733BED8(v116);
        __swift_destroy_boxed_opaque_existential_1(v119);
        __swift_destroy_boxed_opaque_existential_1(v126);
        (*(v42 + 8))(v103, v107);
        v60 = v110;
        goto LABEL_29;
      }

      v112 = v98;
      __swift_destroy_boxed_opaque_existential_1(v119);

      memcpy(v115, v116, sizeof(v115));
      nullsub_1(v115, v101);
      v73 = v115;
    }

    else
    {
      v73 = v125;
    }

    memcpy(v120, v73, sizeof(v120));
    __swift_destroy_boxed_opaque_existential_1(v121);
    v74 = v120;
    goto LABEL_50;
  }

  memset(v120, 0, 40);
  sub_2171F0738(v120, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v126, v120);
  v43 = *(v37 + 20);
  sub_21733CAD0();
  v44 = v114;
  sub_217385620();
  v42 = v113;
  v114 = v44;
  if (v44)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v126);
    (*(v42 + 8))(v103, v107);
LABEL_41:
    sub_21733CA78(v33, type metadata accessor for CloudAlbum);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v112 = v36;
  v105 = v45;
  LOBYTE(v120[0]) = 4;
  v49 = v107;
  v50 = v103;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 4;
    v51 = v114;
    sub_217752E08();
    v114 = v51;
    if (v51)
    {
      goto LABEL_40;
    }

    sub_2171FF30C(v120, v118);
    v56 = sub_217383708(&unk_28295E588);
    v57 = v114;
    v58 = Dictionary<>.init(from:skippingValuesFor:)(v118, v56);
    v114 = v57;
    if (v57)
    {
LABEL_43:

      v71 = v120;
LABEL_73:
      __swift_destroy_boxed_opaque_existential_1(v71);
      goto LABEL_13;
    }

    v34 = v58;
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  LOBYTE(v120[0]) = 5;
  v49 = v107;
  v50 = v103;
  if (sub_217752EC8())
  {

    LOBYTE(v118[0]) = 5;
    v67 = v114;
    sub_217752E08();
    v114 = v67;
    if (v67)
    {
LABEL_40:

      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v42 + 8))(v50, v49);
      goto LABEL_41;
    }

    sub_2171FF30C(v120, v118);
    v68 = sub_2173839EC(&unk_28295E650);
    v69 = v114;
    v70 = Dictionary<>.init(from:skippingValuesFor:)(v118, v68);
    v114 = v69;
    if (v69)
    {
      goto LABEL_43;
    }

    v35 = v70;
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  LOBYTE(v120[0]) = 6;
  v49 = v107;
  v50 = v103;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v124, v125, sizeof(v124));
    goto LABEL_58;
  }

  LOBYTE(v120[0]) = 6;
  v76 = v114;
  sub_217752E08();
  v114 = v76;
  if (v76)
  {
    goto LABEL_40;
  }

  sub_2171FF30C(v121, v119);
  v93 = v114;
  CloudResourceCustomMetadata.init(from:)(v119, v120);
  v114 = v93;
  if (v93)
  {

LABEL_72:
    v71 = v121;
    goto LABEL_73;
  }

  memcpy(v118, v120, sizeof(v118));
  sub_2171FF30C(v121, v117);
  sub_21726A630(v33 + *(v106 + 32), v115, &qword_27CB243C0, &unk_21775D3A0);
  sub_217383B34(&unk_28295F078);
  v99 = v114;
  sub_217387350();
  v114 = v99;
  if (v99)
  {

    sub_21733BED8(v118);
    goto LABEL_72;
  }

  v112 = v100;
  __swift_destroy_boxed_opaque_existential_1(v121);
  memcpy(v116, v118, sizeof(v116));
  nullsub_1(v116, v102);
  v74 = v116;
LABEL_50:
  memcpy(v124, v74, sizeof(v124));
  v49 = v107;
LABEL_58:
  LOBYTE(v120[0]) = 2;
  v77 = v103;
  if (sub_217752EC8())
  {
    LOBYTE(v120[0]) = 2;
    v78 = v114;
    v79 = sub_217752E68();
    v114 = v78;
    if (v78)
    {

      sub_2171F0738(v124, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v42 + 8))(v77, v49);
LABEL_4:
      sub_21733CA78(v110, type metadata accessor for CloudAlbum);
      v27 = 0;
      v25 = v108;
      v28 = v109;
      goto LABEL_31;
    }

    v81 = v79;
    v82 = v80;
    v113 = v35;
  }

  else
  {
    v113 = v35;
    v81 = 0;
    v82 = 0;
  }

  v83 = v110;
  v25 = v108;
  sub_21733CAD0();
  LOBYTE(v118[0]) = 1;
  sub_21733BE84();
  v84 = v107;
  v85 = v103;
  v86 = v114;
  sub_217752EA8();
  v114 = v86;
  if (!v86)
  {
    __swift_destroy_boxed_opaque_existential_1(v126);
    (*(v42 + 8))(v85, v84);
    sub_21733CA78(v83, type metadata accessor for CloudAlbum);
    v87 = *(&v120[0] + 1);
    v88 = v120[1];
    v89 = v104;
    v90 = &v25[v104[9]];
    *v90 = *&v120[0];
    *(v90 + 1) = v87;
    v90[16] = v88;
    v91 = &v25[v89[10]];
    *v91 = v81;
    *(v91 + 1) = v82;
    memcpy(&v25[v89[11]], v124, 0x180uLL);
    *&v25[v89[12]] = v105;
    *&v25[v89[13]] = v34;
    v92 = v112;
    *&v25[v89[14]] = v113;
    *&v25[v89[15]] = v92;
    sub_21726A630(v25, v111, &qword_27CB247F0, &qword_21775D360);
    __swift_destroy_boxed_opaque_existential_1(v109);
    return sub_2171F0738(v25, &qword_27CB247F0, &qword_21775D360);
  }

  sub_2171F0738(v124, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v126);
  (*(v42 + 8))(v85, v84);
  sub_21733CA78(v83, type metadata accessor for CloudAlbum);
  v27 = 1;
  v28 = v109;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudAlbum);
  }

  return result;
}

uint64_t sub_21731A338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = type metadata accessor for CloudSong.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v125 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25740, &qword_21775D868);
  v126 = *(v7 - 8);
  v8 = *(v126 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v117 - v10;
  v12 = type metadata accessor for CloudSong(0);
  v13 = *(v12[-1].Description + 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v117 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v117 - v24;
  sub_2171FF30C(a1, v138);
  v26 = v127;
  CloudSong.init(from:)();
  v127 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_32;
  }

  v118 = v16;
  v119 = v12;
  *(&v117 + 1) = v21;
  v120 = v7;
  v121 = v25;
  v122 = a1;
  v123 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25718, &qword_21775D860);
  sub_21733CCD4(&qword_27CB25720, &qword_27CB25718, &qword_21775D860);
  v30 = v127;
  sub_2177532C8();
  v127 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v142 = 3;
  v31 = v120;
  v32 = v127;
  sub_217752E08();
  v28 = v122;
  v33 = v123;
  v127 = v32;
  if (v32)
  {
    (*(v126 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudSong);
LABEL_31:
    v27 = 0;
    v25 = v121;
    goto LABEL_32;
  }

  *&v117 = v11;
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  v36 = sub_217751DC8();
  sub_21733BE70(v138);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v37 = v119;
  if (swift_dynamicCast())
  {
    v125 = v36;
    sub_2171F3F0C(v133, v134);
    v38 = v135;
    v39 = v136;
    __swift_project_boxed_opaque_existential_1(v134, v135);
    v40 = v127;
    v41 = (*(v39 + 16))(v139, v38, v39);
    v42 = v126;
    v127 = v40;
    if (v40)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v139);
      (*(v42 + 8))(v117, v120);
LABEL_29:
      v65 = v33;
LABEL_30:
      sub_21733CA78(v65, type metadata accessor for CloudSong);
      __swift_destroy_boxed_opaque_existential_1(v134);
      goto LABEL_31;
    }

    v118 = v41;
    LOBYTE(v133[0]) = 4;
    v49 = v120;
    v50 = v117;
    if (sub_217752EC8())
    {

      LOBYTE(v132[0]) = 4;
      v51 = v127;
      sub_217752E08();
      v127 = v51;
      if (v51)
      {
        goto LABEL_28;
      }

      v55 = v135;
      v56 = v136;
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v57 = v127;
      v58 = (*(v56 + 24))(v133, v55, v56);
      v127 = v57;
      if (v57)
      {
LABEL_36:

        v71 = v133;
LABEL_37:
        __swift_destroy_boxed_opaque_existential_1(v71);
        goto LABEL_10;
      }

      v34 = v58;
      __swift_destroy_boxed_opaque_existential_1(v133);
    }

    LOBYTE(v133[0]) = 5;
    v49 = v120;
    v50 = v117;
    if (sub_217752EC8())
    {

      LOBYTE(v132[0]) = 5;
      v64 = v127;
      sub_217752E08();
      v127 = v64;
      if (v64)
      {
LABEL_28:

        __swift_destroy_boxed_opaque_existential_1(v139);
        (*(v42 + 8))(v50, v49);
        goto LABEL_29;
      }

      v67 = v135;
      v68 = v136;
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v69 = v127;
      v70 = (*(v68 + 32))(v133, v67, v68);
      v127 = v69;
      if (v69)
      {
        goto LABEL_36;
      }

      v35 = v70;
      __swift_destroy_boxed_opaque_existential_1(v133);
    }

    LOBYTE(v132[0]) = 6;
    v49 = v120;
    v50 = v117;
    if (sub_217752EC8())
    {

      LOBYTE(v132[0]) = 6;
      v84 = v127;
      sub_217752E08();
      v127 = v84;
      if (v84)
      {
        goto LABEL_28;
      }

      sub_2171FF30C(v131, v129);
      v87 = v127;
      CloudResourceCustomMetadata.init(from:)(v129, v132);
      v127 = v87;
      if (v87)
      {

        v71 = v131;
        goto LABEL_37;
      }

      memcpy(v130, v132, sizeof(v130));
      v106 = v135;
      v107 = v136;
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v108 = sub_217383B34(&unk_28295F078);
      v109 = v127;
      v110 = (*(v107 + 40))(v131, v108, v106, v107);
      v127 = v109;
      if (v109)
      {

        sub_21733BED8(v130);
        __swift_destroy_boxed_opaque_existential_1(v131);
        __swift_destroy_boxed_opaque_existential_1(v139);
        (*(v42 + 8))(v117, v120);
        v65 = v123;
        goto LABEL_30;
      }

      v125 = v110;
      __swift_destroy_boxed_opaque_existential_1(v131);

      memcpy(v128, v130, sizeof(v128));
      nullsub_1(v128, v115);
      v85 = v128;
    }

    else
    {
      v85 = v138;
    }

    memcpy(v133, v85, sizeof(v133));
    __swift_destroy_boxed_opaque_existential_1(v134);
    v86 = v133;
    goto LABEL_53;
  }

  memset(v133, 0, 40);
  sub_2171F0738(v133, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v139, v133);
  Kind_high = SHIDWORD(v37[1].Kind);
  sub_21733CAD0();
  v44 = v127;
  sub_217385938();
  v42 = v126;
  v127 = v44;
  if (v44)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v139);
    v46 = *(v42 + 8);
    v47 = v117;
LABEL_14:
    v48 = v120;
LABEL_42:
    v46(v47, v48);
    sub_21733CA78(v33, type metadata accessor for CloudSong);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v125 = v36;
  v118 = v45;
  LOBYTE(v133[0]) = 4;
  v52 = v120;
  v53 = v117;
  if (sub_217752EC8())
  {

    LOBYTE(v132[0]) = 4;
    v54 = v127;
    sub_217752E08();
    v127 = v54;
    if (v54)
    {
      goto LABEL_41;
    }

    sub_2171FF30C(v133, v132);
    swift_beginAccess();
    v59 = sub_217751DE8();
    v60 = sub_217383824(v59);

    v61 = v127;
    v62 = Dictionary<>.init(from:skippingValuesFor:)(v132, v60);
    v127 = v61;
    if (v61)
    {

      v63 = v133;
LABEL_76:
      __swift_destroy_boxed_opaque_existential_1(v63);
      goto LABEL_13;
    }

    v34 = v62;
    __swift_destroy_boxed_opaque_existential_1(v133);
  }

  LOBYTE(v133[0]) = 5;
  v52 = v120;
  v53 = v117;
  if (sub_217752EC8())
  {

    LOBYTE(v132[0]) = 5;
    v72 = v127;
    sub_217752E08();
    v127 = v72;
    if (v72)
    {
LABEL_41:

      __swift_destroy_boxed_opaque_existential_1(v139);
      v46 = *(v42 + 8);
      v47 = v53;
      v48 = v52;
      goto LABEL_42;
    }

    sub_2171FF30C(v133, v132);
    if (qword_27CB23E08 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C158, v73, v74, v75, v76, v77, v78, v79, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1], v128[2], v128[3], v128[4], v128[5]);
    v80 = v127;
    v82 = Dictionary<>.init(from:skippingValuesFor:)(v132, v81);
    v83 = v117;
    v127 = v80;
    if (v80)
    {

      __swift_destroy_boxed_opaque_existential_1(v133);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v46 = *(v42 + 8);
      v47 = v83;
      goto LABEL_14;
    }

    v35 = v82;
    __swift_destroy_boxed_opaque_existential_1(v133);
  }

  LOBYTE(v133[0]) = 6;
  v52 = v120;
  v53 = v117;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v137, v138, sizeof(v137));
    goto LABEL_61;
  }

  LOBYTE(v133[0]) = 6;
  v88 = v127;
  sub_217752E08();
  v127 = v88;
  if (v88)
  {
    goto LABEL_41;
  }

  sub_2171FF30C(v128, v134);
  v105 = v127;
  CloudResourceCustomMetadata.init(from:)(v134, v133);
  v127 = v105;
  if (v105)
  {

LABEL_75:
    v63 = v128;
    goto LABEL_76;
  }

  memcpy(v132, v133, sizeof(v132));
  sub_2171FF30C(v128, v131);
  v111 = v33 + SLODWORD(v119[2].Kind);
  v141 = *(v111 + 32);
  v112 = *(v111 + 16);
  v140[0] = *v111;
  v140[1] = v112;
  sub_21726A630(v140, v130, &qword_27CB25748, &qword_21775D870);
  sub_217383B34(&unk_28295F078);
  v113 = v127;
  sub_217387700();
  v127 = v113;
  if (v113)
  {

    sub_21733BED8(v132);
    goto LABEL_75;
  }

  v125 = v114;
  __swift_destroy_boxed_opaque_existential_1(v128);
  memcpy(v130, v132, sizeof(v130));
  nullsub_1(v130, v116);
  v86 = v130;
LABEL_53:
  memcpy(v137, v86, sizeof(v137));
  v52 = v120;
LABEL_61:
  LOBYTE(v133[0]) = 2;
  v89 = v117;
  if (sub_217752EC8())
  {
    LOBYTE(v133[0]) = 2;
    v90 = v127;
    v91 = sub_217752E68();
    v127 = v90;
    if (v90)
    {

      sub_2171F0738(v137, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v139);
      (*(v42 + 8))(v89, v52);
LABEL_4:
      sub_21733CA78(v123, type metadata accessor for CloudSong);
      v27 = 0;
      v25 = v121;
      v28 = v122;
      goto LABEL_32;
    }

    v93 = v91;
    v94 = v92;
    v126 = v35;
  }

  else
  {
    v126 = v35;
    v93 = 0;
    v94 = 0;
  }

  v95 = v123;
  v25 = v121;
  sub_21733CAD0();
  LOBYTE(v132[0]) = 1;
  sub_21733BE84();
  v96 = v120;
  v97 = v117;
  v98 = v127;
  sub_217752EA8();
  v127 = v98;
  if (!v98)
  {
    __swift_destroy_boxed_opaque_existential_1(v139);
    (*(v42 + 8))(v97, v96);
    sub_21733CA78(v95, type metadata accessor for CloudSong);
    v99 = *(&v133[0] + 1);
    v100 = v133[1];
    v101 = *(&v117 + 1);
    v102 = &v25[*(*(&v117 + 1) + 36)];
    *v102 = *&v133[0];
    *(v102 + 1) = v99;
    v102[16] = v100;
    v103 = &v25[v101[10]];
    *v103 = v93;
    *(v103 + 1) = v94;
    memcpy(&v25[v101[11]], v137, 0x180uLL);
    *&v25[v101[12]] = v118;
    *&v25[v101[13]] = v34;
    v104 = v125;
    *&v25[v101[14]] = v126;
    *&v25[v101[15]] = v104;
    sub_21726A630(v25, v124, &qword_27CB24748, &unk_217758CD0);
    __swift_destroy_boxed_opaque_existential_1(v122);
    return sub_2171F0738(v25, &qword_27CB24748, &unk_217758CD0);
  }

  sub_2171F0738(v137, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v139);
  (*(v42 + 8))(v97, v96);
  sub_21733CA78(v95, type metadata accessor for CloudSong);
  v27 = 1;
  v28 = v122;
LABEL_32:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudSong);
  }

  return result;
}

uint64_t sub_21731B2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = type metadata accessor for CloudRecordLabel.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v122 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259D8, &qword_21775DA20);
  v123 = *(v7 - 8);
  v8 = *(v123 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v114 - v10;
  v12 = type metadata accessor for CloudRecordLabel(0);
  v13 = *(v12[-1].Description + 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v114 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v114 - v24;
  sub_2171FF30C(a1, v135);
  v26 = v124;
  CloudRecordLabel.init(from:)();
  v124 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_34;
  }

  v115 = v16;
  v116 = v12;
  *(&v114 + 1) = v21;
  v117 = v7;
  v118 = v25;
  v119 = a1;
  v120 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259B0, &qword_21775DA18);
  sub_21733CCD4(&qword_27CB259B8, &qword_27CB259B0, &qword_21775DA18);
  v30 = v124;
  sub_2177532C8();
  v124 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v137 = 3;
  v31 = v117;
  v32 = v124;
  sub_217752E08();
  v28 = v119;
  v33 = v120;
  v124 = v32;
  if (v32)
  {
    (*(v123 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudRecordLabel);
LABEL_33:
    v27 = 0;
    v25 = v118;
    goto LABEL_34;
  }

  *&v114 = v11;
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  v36 = sub_217751DC8();
  sub_21733BE70(v135);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v37 = v116;
  if (swift_dynamicCast())
  {
    v122 = v36;
    sub_2171F3F0C(v130, v131);
    v38 = v132;
    v39 = v133;
    __swift_project_boxed_opaque_existential_1(v131, v132);
    v40 = v124;
    v41 = (*(v39 + 16))(v136, v38, v39);
    v42 = v123;
    v124 = v40;
    if (v40)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v136);
      (*(v42 + 8))(v114, v117);
LABEL_31:
      v71 = v33;
LABEL_32:
      sub_21733CA78(v71, type metadata accessor for CloudRecordLabel);
      __swift_destroy_boxed_opaque_existential_1(v131);
      goto LABEL_33;
    }

    v115 = v41;
    LOBYTE(v130[0]) = 4;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 4;
      v51 = v124;
      sub_217752E08();
      v124 = v51;
      if (v51)
      {
        goto LABEL_30;
      }

      v55 = v132;
      v56 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v57 = v124;
      v58 = (*(v56 + 24))(v130, v55, v56);
      v124 = v57;
      if (v57)
      {
LABEL_38:

        v77 = v130;
LABEL_39:
        __swift_destroy_boxed_opaque_existential_1(v77);
        goto LABEL_10;
      }

      v34 = v58;
      __swift_destroy_boxed_opaque_existential_1(v130);
    }

    LOBYTE(v130[0]) = 5;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 5;
      v70 = v124;
      sub_217752E08();
      v124 = v70;
      if (v70)
      {
LABEL_30:

        __swift_destroy_boxed_opaque_existential_1(v136);
        (*(v42 + 8))(v50, v49);
        goto LABEL_31;
      }

      v73 = v132;
      v74 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v75 = v124;
      v76 = (*(v74 + 32))(v130, v73, v74);
      v124 = v75;
      if (v75)
      {
        goto LABEL_38;
      }

      v35 = v76;
      __swift_destroy_boxed_opaque_existential_1(v130);
    }

    LOBYTE(v129[0]) = 6;
    v49 = v117;
    v50 = v114;
    if (sub_217752EC8())
    {

      LOBYTE(v129[0]) = 6;
      v83 = v124;
      sub_217752E08();
      v124 = v83;
      if (v83)
      {
        goto LABEL_30;
      }

      sub_2171FF30C(v128, v126);
      v86 = v124;
      CloudResourceCustomMetadata.init(from:)(v126, v129);
      v124 = v86;
      if (v86)
      {

        v77 = v128;
        goto LABEL_39;
      }

      memcpy(v127, v129, sizeof(v127));
      v105 = v132;
      v106 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v107 = sub_217383B34(&unk_28295F078);
      v108 = v124;
      v109 = (*(v106 + 40))(v128, v107, v105, v106);
      v124 = v108;
      if (v108)
      {

        sub_21733BED8(v127);
        __swift_destroy_boxed_opaque_existential_1(v128);
        __swift_destroy_boxed_opaque_existential_1(v136);
        (*(v42 + 8))(v114, v117);
        v71 = v120;
        goto LABEL_32;
      }

      v122 = v109;
      __swift_destroy_boxed_opaque_existential_1(v128);

      memcpy(v125, v127, sizeof(v125));
      nullsub_1(v125, v112);
      v84 = v125;
    }

    else
    {
      v84 = v135;
    }

    memcpy(v130, v84, sizeof(v130));
    __swift_destroy_boxed_opaque_existential_1(v131);
    v85 = v130;
    goto LABEL_53;
  }

  memset(v130, 0, 40);
  sub_2171F0738(v130, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v136, v130);
  Kind_high = SHIDWORD(v37[1].Kind);
  sub_21733CAD0();
  v44 = v124;
  sub_217385F58();
  v42 = v123;
  v124 = v44;
  if (v44)
  {

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v136);
    v46 = *(v42 + 8);
    v47 = v114;
LABEL_14:
    v48 = v117;
LABEL_44:
    v46(v47, v48);
    sub_21733CA78(v33, type metadata accessor for CloudRecordLabel);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v115 = v45;
  v122 = v36;
  LOBYTE(v130[0]) = 4;
  v52 = v117;
  v53 = v114;
  if (sub_217752EC8())
  {

    LOBYTE(v129[0]) = 4;
    v54 = v124;
    sub_217752E08();
    v124 = v54;
    if (v54)
    {
      goto LABEL_43;
    }

    sub_2171FF30C(v130, v129);
    if (qword_27CB23D88 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2B198, v59, v60, v61, v62, v63, v64, v65, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5]);
    v66 = v124;
    v68 = Dictionary<>.init(from:skippingValuesFor:)(v129, v67);
    v69 = v114;
    v124 = v66;
    if (v66)
    {

      __swift_destroy_boxed_opaque_existential_1(v130);
      __swift_destroy_boxed_opaque_existential_1(v136);
      v46 = *(v42 + 8);
      v47 = v69;
      goto LABEL_14;
    }

    v34 = v68;
    __swift_destroy_boxed_opaque_existential_1(v130);
  }

  LOBYTE(v130[0]) = 5;
  v52 = v117;
  v53 = v114;
  if (sub_217752EC8())
  {

    LOBYTE(v129[0]) = 5;
    v78 = v124;
    sub_217752E08();
    v124 = v78;
    if (v78)
    {
LABEL_43:

      __swift_destroy_boxed_opaque_existential_1(v136);
      v46 = *(v42 + 8);
      v47 = v53;
      v48 = v52;
      goto LABEL_44;
    }

    sub_2171FF30C(v130, v129);
    v79 = sub_217383A6C(&unk_28295F050);
    v80 = v124;
    v81 = Dictionary<>.init(from:skippingValuesFor:)(v129, v79);
    v124 = v80;
    if (v80)
    {

      v82 = v130;
LABEL_76:
      __swift_destroy_boxed_opaque_existential_1(v82);
      goto LABEL_13;
    }

    v35 = v81;
    __swift_destroy_boxed_opaque_existential_1(v130);
  }

  LOBYTE(v130[0]) = 6;
  v52 = v117;
  v53 = v114;
  if ((sub_217752EC8() & 1) == 0)
  {
    memcpy(v134, v135, sizeof(v134));
    goto LABEL_61;
  }

  LOBYTE(v130[0]) = 6;
  v87 = v124;
  sub_217752E08();
  v124 = v87;
  if (v87)
  {
    goto LABEL_43;
  }

  sub_2171FF30C(v125, v131);
  v104 = v124;
  CloudResourceCustomMetadata.init(from:)(v131, v130);
  v124 = v104;
  if (v104)
  {

LABEL_75:
    v82 = v125;
    goto LABEL_76;
  }

  memcpy(v129, v130, sizeof(v129));
  sub_2171FF30C(v125, v128);
  sub_217221020(*(v33 + SLODWORD(v116[2].Kind)));
  sub_217383B34(&unk_28295F078);
  v110 = v124;
  sub_217388124();
  v124 = v110;
  if (v110)
  {

    sub_21733BED8(v129);
    goto LABEL_75;
  }

  v122 = v111;
  __swift_destroy_boxed_opaque_existential_1(v125);
  memcpy(v127, v129, sizeof(v127));
  nullsub_1(v127, v113);
  v85 = v127;
LABEL_53:
  memcpy(v134, v85, sizeof(v134));
  v52 = v117;
LABEL_61:
  LOBYTE(v130[0]) = 2;
  v88 = v114;
  if (sub_217752EC8())
  {
    LOBYTE(v130[0]) = 2;
    v89 = v124;
    v90 = sub_217752E68();
    v124 = v89;
    if (v89)
    {

      sub_2171F0738(v134, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v136);
      (*(v42 + 8))(v88, v52);
LABEL_4:
      sub_21733CA78(v120, type metadata accessor for CloudRecordLabel);
      v27 = 0;
      v25 = v118;
      v28 = v119;
      goto LABEL_34;
    }

    v92 = v90;
    v93 = v91;
    v123 = v35;
  }

  else
  {
    v123 = v35;
    v92 = 0;
    v93 = 0;
  }

  v94 = v120;
  v25 = v118;
  sub_21733CAD0();
  LOBYTE(v129[0]) = 1;
  sub_21733BE84();
  v95 = v117;
  v96 = v114;
  v97 = v124;
  sub_217752EA8();
  v124 = v97;
  if (!v97)
  {
    __swift_destroy_boxed_opaque_existential_1(v136);
    (*(v42 + 8))(v96, v95);
    sub_21733CA78(v94, type metadata accessor for CloudRecordLabel);
    v98 = *(&v130[0] + 1);
    v99 = v130[1];
    v100 = *(&v114 + 1);
    v101 = &v25[*(*(&v114 + 1) + 36)];
    *v101 = *&v130[0];
    *(v101 + 1) = v98;
    v101[16] = v99;
    v102 = &v25[v100[10]];
    *v102 = v92;
    *(v102 + 1) = v93;
    memcpy(&v25[v100[11]], v134, 0x180uLL);
    *&v25[v100[12]] = v115;
    *&v25[v100[13]] = v34;
    v103 = v122;
    *&v25[v100[14]] = v123;
    *&v25[v100[15]] = v103;
    sub_21726A630(v25, v121, &qword_27CB24778, &unk_217758D00);
    __swift_destroy_boxed_opaque_existential_1(v119);
    return sub_2171F0738(v25, &qword_27CB24778, &unk_217758D00);
  }

  sub_2171F0738(v134, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v136);
  (*(v42 + 8))(v96, v95);
  sub_21733CA78(v94, type metadata accessor for CloudRecordLabel);
  v27 = 1;
  v28 = v119;
LABEL_34:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudRecordLabel);
  }

  return result;
}

uint64_t sub_21731C1C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258F0, &unk_21775D978);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for CloudTrack();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v63 - v17;
  sub_2171FF30C(a1, v85);
  CloudTrack.init(from:)();
  v75 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v68 = v18;
  v69 = v9;
  v67 = v14;
  v70 = v4;
  v71 = a1;
  v72 = v13;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258E0, &qword_21775D970);
  sub_21733CCD4(&qword_27CB258E8, &qword_27CB258E0, &qword_21775D970);
  v20 = v75;
  sub_2177532C8();
  v75 = v20;
  if (v20)
  {
    v21 = v72;
LABEL_6:
    sub_21733CA78(v21, type metadata accessor for CloudTrack);
    a1 = v71;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  sub_217751DC8();

  v87 = 3;
  v23 = v70;
  v24 = v75;
  sub_217752E08();
  v25 = v72;
  v75 = v24;
  if (v24)
  {
    (*(v74 + 8))(v8, v23);
    v21 = v25;
    goto LABEL_6;
  }

  v27 = sub_217751DC8();
  v28 = sub_217751DC8();
  v29 = sub_217751DC8();
  sub_21733BE70(v85);
  v83 = v69;
  v84 = &protocol witness table for CloudTrack;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
  sub_21733CAD0();
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v31 = v75;
  CloudTrack.decodeRawAttributes(from:)();
  v33 = v25;
  a1 = v71;
  v75 = v31;
  if (v31)
  {

    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v74 + 8))(v22, v70);
    v34 = v33;
LABEL_38:
    sub_21733CA78(v34, type metadata accessor for CloudTrack);
    __swift_destroy_boxed_opaque_existential_1(v82);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = boxed_opaque_existential_0;
  v66 = v32;
  v69 = v28;
  LOBYTE(v81[0]) = 4;
  v35 = v70;
  v36 = v22;
  v37 = sub_217752EC8();
  v38 = v74;
  if (v37)
  {

    LOBYTE(v79[0]) = 4;
    v39 = v75;
    sub_217752E08();
    v75 = v39;
    if (v39)
    {

      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v36, v35);
LABEL_37:
      v34 = v72;
      goto LABEL_38;
    }

    v40 = v36;
    CloudTrack.decodeRawRelationships(from:)();
    v75 = 0;
    v64 = v42;
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    v64 = v27;
    v40 = v36;
  }

  LOBYTE(v81[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v79[0]) = 5;
    v41 = v75;
    sub_217752E08();
    v75 = v41;
    if (v41)
    {
      goto LABEL_21;
    }

    CloudTrack.decodeRawAssociations(from:)();
    v75 = 0;
    v69 = v43;
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  LOBYTE(v79[0]) = 6;
  if (sub_217752EC8())
  {

    LOBYTE(v79[0]) = 6;
    v44 = v75;
    sub_217752E08();
    v75 = v44;
    if (v44)
    {
LABEL_21:

LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v40, v35);
      goto LABEL_37;
    }

    sub_2171FF30C(v80, v78);
    v51 = v75;
    CloudResourceCustomMetadata.init(from:)(v78, v79);
    v75 = v51;
    if (v51)
    {

LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v80);
      goto LABEL_36;
    }

    memcpy(v77, v79, sizeof(v77));
    sub_217383B34(&unk_28295F078);
    v60 = v75;
    CloudTrack.decodeRawMetadata(from:skippingValuesFor:)();
    v75 = v60;
    if (v60)
    {

      sub_21733BED8(v77);
      goto LABEL_35;
    }

    v29 = v61;
    __swift_destroy_boxed_opaque_existential_1(v80);

    memcpy(v76, v77, sizeof(v76));
    nullsub_1(v76, v62);
    v45 = v76;
  }

  else
  {
    v45 = v85;
  }

  memcpy(v81, v45, sizeof(v81));
  __swift_destroy_boxed_opaque_existential_1(v82);
  LOBYTE(v79[0]) = 2;
  v46 = v40;
  if (sub_217752EC8())
  {
    LOBYTE(v79[0]) = 2;
    v47 = v75;
    v48 = sub_217752E68();
    v75 = v47;
    if (v47)
    {

      sub_2171F0738(v81, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v40, v35);
      sub_21733CA78(v72, type metadata accessor for CloudTrack);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v50 = v49;
    v65 = v48;
  }

  else
  {
    v65 = 0;
    v50 = 0;
  }

  v52 = v72;
  v53 = v68;
  sub_21733CAD0();
  v77[0] = 1;
  sub_21733BE84();
  v54 = v75;
  sub_217752EA8();
  v75 = v54;
  if (v54)
  {

    sub_2171F0738(v81, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v38 + 8))(v46, v35);
    sub_21733CA78(v52, type metadata accessor for CloudTrack);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21733CA78(v53, type metadata accessor for CloudTrack);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v38 + 8))(v46, v35);
    sub_21733CA78(v52, type metadata accessor for CloudTrack);
    v55 = v79[1];
    v56 = v79[2];
    v57 = v67;
    v58 = v53 + v67[9];
    *v58 = v79[0];
    *(v58 + 8) = v55;
    *(v58 + 16) = v56;
    v59 = (v53 + v57[10]);
    *v59 = v65;
    v59[1] = v50;
    memcpy((v53 + v57[11]), v81, 0x180uLL);
    *(v53 + v57[12]) = v66;
    *(v53 + v57[13]) = v64;
    *(v53 + v57[14]) = v69;
    *(v53 + v57[15]) = v29;
    sub_21726A630(v53, v73, &qword_27CB24820, &unk_2177650E0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2171F0738(v53, &qword_27CB24820, &unk_2177650E0);
  }
}

uint64_t sub_21731CB84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v112 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25880, &unk_21775D910);
  v113 = *(v7 - 8);
  v8 = *(v113 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v103 - v10;
  v12 = type metadata accessor for CloudMusicVideo(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v103 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v103 - v24;
  sub_2171FF30C(a1, v125);
  v26 = v114;
  CloudMusicVideo.init(from:)();
  v114 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = a1;
    goto LABEL_31;
  }

  v105 = v16;
  v106 = v12;
  v104 = v21;
  v107 = v7;
  v108 = v25;
  v109 = a1;
  v110 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25858, &qword_21775D908);
  sub_21733CCD4(&qword_27CB25860, &qword_27CB25858, &qword_21775D908);
  v30 = v114;
  sub_2177532C8();
  v114 = v30;
  if (v30)
  {
    goto LABEL_4;
  }

  sub_217751DC8();

  v127 = 3;
  v31 = v107;
  v32 = v114;
  sub_217752E08();
  v28 = v109;
  v33 = v110;
  v114 = v32;
  if (v32)
  {
    (*(v113 + 8))(v11, v31);
    sub_21733CA78(v33, type metadata accessor for CloudMusicVideo);
LABEL_30:
    v27 = 0;
    v25 = v108;
    goto LABEL_31;
  }

  v103 = v11;
  v34 = sub_217751DC8();
  v35 = sub_217751DC8();
  v36 = sub_217751DC8();
  sub_21733BE70(v125);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v37 = v106;
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v120, 0, 40);
    sub_2171F0738(v120, &qword_27CB25588, &unk_21775D380);
    sub_2171FF30C(v126, v120);
    v42 = *(v37 + 20);
    sub_21733CAD0();
    v43 = v114;
    sub_21738598C();
    v114 = v43;
    if (v43)
    {

LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v113 + 8))(v103, v107);
LABEL_41:
      sub_21733CA78(v33, type metadata accessor for CloudMusicVideo);
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

    v45 = v44;
    v112 = v36;
    LOBYTE(v120[0]) = 4;
    v49 = v107;
    v50 = v103;
    if (sub_217752EC8())
    {

      LOBYTE(v119[0]) = 4;
      v51 = v114;
      sub_217752E08();
      v114 = v51;
      if (v51)
      {
        goto LABEL_40;
      }

      sub_2171FF30C(v120, v119);
      swift_beginAccess();
      v56 = sub_217751DE8();
      v57 = sub_217383844(v56);

      v58 = v114;
      v59 = Dictionary<>.init(from:skippingValuesFor:)(v119, v57);
      v114 = v58;
      if (v58)
      {
LABEL_43:

        v72 = v120;
        goto LABEL_72;
      }

      v34 = v59;
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    LOBYTE(v120[0]) = 5;
    v49 = v107;
    v50 = v103;
    if (sub_217752EC8())
    {

      LOBYTE(v119[0]) = 5;
      v68 = v114;
      sub_217752E08();
      v114 = v68;
      if (v68)
      {
LABEL_40:

        __swift_destroy_boxed_opaque_existential_1(v126);
        (*(v113 + 8))(v50, v49);
        goto LABEL_41;
      }

      sub_2171FF30C(v120, v119);
      v69 = sub_217383A2C(&unk_28295F000);
      v70 = v114;
      v71 = Dictionary<>.init(from:skippingValuesFor:)(v119, v69);
      v114 = v70;
      if (v70)
      {
        goto LABEL_43;
      }

      v35 = v71;
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    LOBYTE(v120[0]) = 6;
    v49 = v107;
    v50 = v103;
    if ((sub_217752EC8() & 1) == 0)
    {
      memcpy(v124, v125, sizeof(v124));
      goto LABEL_57;
    }

    LOBYTE(v120[0]) = 6;
    v76 = v114;
    sub_217752E08();
    v114 = v76;
    if (v76)
    {
      goto LABEL_40;
    }

    sub_2171FF30C(v115, v121);
    v93 = v114;
    CloudResourceCustomMetadata.init(from:)(v121, v120);
    v114 = v93;
    if (v93)
    {
    }

    else
    {
      v105 = v45;
      memcpy(v119, v120, sizeof(v119));
      sub_2171FF30C(v115, v118);
      sub_21733C3CC(*(v33 + *(v106 + 32)), *(v33 + *(v106 + 32) + 8), *(v33 + *(v106 + 32) + 16), *(v33 + *(v106 + 32) + 24));
      sub_217383B34(&unk_28295F078);
      v99 = v114;
      sub_2173878F0();
      v114 = v99;
      if (!v99)
      {
        v112 = v100;
        __swift_destroy_boxed_opaque_existential_1(v115);
        memcpy(v117, v119, sizeof(v117));
        nullsub_1(v117, v102);
        memcpy(v124, v117, sizeof(v124));
        v49 = v107;
        v45 = v105;
        goto LABEL_57;
      }

      sub_21733BED8(v119);
    }

    v72 = v115;
LABEL_72:
    __swift_destroy_boxed_opaque_existential_1(v72);
    goto LABEL_13;
  }

  v112 = v36;
  sub_2171F3F0C(v120, v121);
  v38 = v122;
  v39 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  v40 = v114;
  v41 = (*(v39 + 16))(v126, v38, v39);
  v114 = v40;
  if (v40)
  {

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v126);
    (*(v113 + 8))(v103, v107);
LABEL_28:
    v61 = v33;
LABEL_29:
    sub_21733CA78(v61, type metadata accessor for CloudMusicVideo);
    __swift_destroy_boxed_opaque_existential_1(v121);
    goto LABEL_30;
  }

  v45 = v41;
  LOBYTE(v120[0]) = 4;
  v46 = v107;
  v47 = v103;
  if (sub_217752EC8())
  {

    LOBYTE(v119[0]) = 4;
    v48 = v114;
    sub_217752E08();
    v114 = v48;
    if (v48)
    {
      goto LABEL_27;
    }

    v52 = v122;
    v53 = v123;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    v54 = v114;
    v55 = (*(v53 + 24))(v120, v52, v53);
    v114 = v54;
    if (v54)
    {
LABEL_35:

      v67 = v120;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v67);
      goto LABEL_10;
    }

    v34 = v55;
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  LOBYTE(v120[0]) = 5;
  v46 = v107;
  v47 = v103;
  if (sub_217752EC8())
  {

    LOBYTE(v119[0]) = 5;
    v60 = v114;
    sub_217752E08();
    v114 = v60;
    if (v60)
    {
LABEL_27:

      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v113 + 8))(v47, v46);
      goto LABEL_28;
    }

    v63 = v122;
    v64 = v123;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    v65 = v114;
    v66 = (*(v64 + 32))(v120, v63, v64);
    v114 = v65;
    if (v65)
    {
      goto LABEL_35;
    }

    v35 = v66;
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  LOBYTE(v119[0]) = 6;
  v46 = v107;
  v47 = v103;
  if (sub_217752EC8())
  {

    LOBYTE(v119[0]) = 6;
    v73 = v114;
    sub_217752E08();
    v114 = v73;
    if (v73)
    {
      goto LABEL_27;
    }

    sub_2171FF30C(v118, v116);
    v75 = v114;
    CloudResourceCustomMetadata.init(from:)(v116, v119);
    v114 = v75;
    if (v75)
    {

      v67 = v118;
      goto LABEL_36;
    }

    memcpy(v117, v119, sizeof(v117));
    v94 = v122;
    v95 = v123;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    v96 = sub_217383B34(&unk_28295F078);
    v97 = v114;
    v98 = (*(v95 + 40))(v118, v96, v94, v95);
    v114 = v97;
    if (v97)
    {

      sub_21733BED8(v117);
      __swift_destroy_boxed_opaque_existential_1(v118);
      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v113 + 8))(v103, v107);
      v61 = v110;
      goto LABEL_29;
    }

    v112 = v98;
    __swift_destroy_boxed_opaque_existential_1(v118);

    memcpy(v115, v117, sizeof(v115));
    nullsub_1(v115, v101);
    v74 = v115;
  }

  else
  {
    v74 = v125;
  }

  memcpy(v120, v74, sizeof(v120));
  __swift_destroy_boxed_opaque_existential_1(v121);
  memcpy(v124, v120, sizeof(v124));
  v49 = v107;
LABEL_57:
  LOBYTE(v120[0]) = 2;
  v77 = v103;
  if (sub_217752EC8())
  {
    LOBYTE(v120[0]) = 2;
    v78 = v114;
    v79 = sub_217752E68();
    v114 = v78;
    if (v78)
    {

      sub_2171F0738(v124, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v126);
      (*(v113 + 8))(v77, v49);
LABEL_4:
      sub_21733CA78(v110, type metadata accessor for CloudMusicVideo);
      v27 = 0;
      v25 = v108;
      v28 = v109;
      goto LABEL_31;
    }

    v81 = v79;
    v82 = v80;
    v105 = v45;
  }

  else
  {
    v105 = v45;
    v81 = 0;
    v82 = 0;
  }

  v83 = v110;
  v25 = v108;
  sub_21733CAD0();
  LOBYTE(v119[0]) = 1;
  sub_21733BE84();
  v84 = v107;
  v85 = v103;
  v86 = v114;
  sub_217752EA8();
  v114 = v86;
  if (!v86)
  {
    __swift_destroy_boxed_opaque_existential_1(v126);
    (*(v113 + 8))(v85, v84);
    sub_21733CA78(v83, type metadata accessor for CloudMusicVideo);
    v87 = *(&v120[0] + 1);
    v88 = v120[1];
    v89 = v104;
    v90 = &v25[v104[9]];
    *v90 = *&v120[0];
    *(v90 + 1) = v87;
    v90[16] = v88;
    v91 = &v25[v89[10]];
    *v91 = v81;
    *(v91 + 1) = v82;
    memcpy(&v25[v89[11]], v124, 0x180uLL);
    *&v25[v89[12]] = v105;
    *&v25[v89[13]] = v34;
    *&v25[v89[14]] = v35;
    v92 = v111;
    *&v25[v89[15]] = v112;
    sub_21726A630(v25, v92, &qword_27CB24808, &qword_217758D90);
    __swift_destroy_boxed_opaque_existential_1(v109);
    return sub_2171F0738(v25, &qword_27CB24808, &qword_217758D90);
  }

  sub_2171F0738(v124, &qword_27CB25620, &qword_21776A5F0);

  __swift_destroy_boxed_opaque_existential_1(v126);
  (*(v113 + 8))(v85, v84);
  sub_21733CA78(v83, type metadata accessor for CloudMusicVideo);
  v27 = 1;
  v28 = v109;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v27)
  {
    return sub_21733CA78(v25, type metadata accessor for CloudMusicVideo);
  }

  return result;
}

uint64_t sub_21731DABC@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25948, &qword_21775D9D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v46 - v9;
  sub_2171FF30C(a1, v63);
  CloudPersonalRecommendation.init(from:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = a2;
  v50 = v6;
  v51 = v5;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25900, &unk_21775D990);
  sub_21733CCD4(&qword_27CB25908, &qword_27CB25900, &unk_21775D990);
  sub_2177532C8();
  sub_217751DC8();

  __dst[159] = 3;
  sub_217752E08();
  v13 = sub_217751DC8();
  v14 = sub_217751DC8();
  v15 = sub_217751DC8();
  sub_21733BE70(v63);
  sub_21733C5F0(v65, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    v48 = v15;
    sub_2171F3F0C(v57, v59);
    v16 = v60;
    v17 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v18 = (*(v17 + 16))(v64, v16, v17);
    v19 = v50;
    v47 = v18;
    LOBYTE(v58[0]) = 4;
    v21 = v51;
    if (sub_217752EC8())
    {

      LOBYTE(v57[0]) = 4;
      sub_217752E08();
      v22 = v60;
      v23 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v13 = (*(v23 + 24))(v58, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v21 = v51;
    }

    LOBYTE(v58[0]) = 5;
    if (sub_217752EC8())
    {

      LOBYTE(v57[0]) = 5;
      sub_217752E08();
      v26 = v60;
      v27 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v14 = (*(v27 + 32))(v58, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v21 = v51;
    }

    LOBYTE(v57[0]) = 6;
    if (sub_217752EC8())
    {

      LOBYTE(v57[0]) = 6;
      sub_217752E08();
      sub_2171FF30C(v56, v54);
      CloudResourceCustomMetadata.init(from:)(v54, v57);
      memcpy(v55, v57, sizeof(v55));
      v40 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v41 = sub_217383B34(&unk_28295F078);
      v42 = *(v40 + 40);
      *(&v46 + 1) = v41;
      v48 = v42(v56);
      __swift_destroy_boxed_opaque_existential_1(v56);

      memcpy(v53, v55, sizeof(v53));
      nullsub_1(v53, v43);
      memcpy(v58, v53, sizeof(v58));
      v21 = v51;
    }

    else
    {
      memcpy(v58, v63, sizeof(v58));
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    v36 = v58;
    goto LABEL_24;
  }

  memset(v57, 0, 40);
  sub_2171F0738(v57, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v64, v57);
  memcpy(__dst, v66, 0x88uLL);
  sub_21733C64C(__dst, v58);
  sub_217385C20();
  v19 = v50;
  v47 = v20;
  v48 = v15;
  LOBYTE(v58[0]) = 4;
  v21 = v51;
  if (sub_217752EC8())
  {

    LOBYTE(v57[0]) = 4;
    sub_217752E08();
    sub_2171FF30C(v58, v57);
    swift_beginAccess();
    v24 = sub_217751DE8();
    v25 = sub_2173838E4(v24);

    v13 = Dictionary<>.init(from:skippingValuesFor:)(v57, v25);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  LOBYTE(v58[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v57[0]) = 5;
    sub_217752E08();
    sub_2171FF30C(v58, v57);
    if (qword_27CB23E60 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2CDC8, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8], v53[9]);
    v14 = Dictionary<>.init(from:skippingValuesFor:)(v57, v35);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  LOBYTE(v58[0]) = 6;
  if ((sub_217752EC8() & 1) == 0)
  {
    v36 = v63;
LABEL_24:
    memcpy(v62, v36, sizeof(v62));
    goto LABEL_25;
  }

  LOBYTE(v58[0]) = 6;
  sub_217752E08();
  sub_2171FF30C(v53, v59);
  CloudResourceCustomMetadata.init(from:)(v59, v58);
  memcpy(v57, v58, sizeof(v57));
  sub_2171FF30C(v53, v56);
  sub_21733C6A8(v67, v68, v69);
  sub_217383B34(&unk_28295F078);
  sub_217387F34();
  v48 = v44;
  __swift_destroy_boxed_opaque_existential_1(v53);
  memcpy(v55, v57, sizeof(v55));
  nullsub_1(v55, v45);
  memcpy(v62, v55, sizeof(v62));
  v21 = v51;
LABEL_25:
  LOBYTE(v58[0]) = 2;
  if (sub_217752EC8())
  {
    LOBYTE(v58[0]) = 2;
    v51 = sub_217752E68();
    v38 = v37;
  }

  else
  {
    v51 = 0;
    v38 = 0;
  }

  sub_21733C5F0(v65, v70);
  LOBYTE(v57[0]) = 1;
  sub_21733BE84();
  v39 = v52;
  sub_217752EA8();
  __swift_destroy_boxed_opaque_existential_1(v64);
  (*(v19 + 8))(v39, v21);
  sub_217269D5C(v65);
  v70[39] = v58[0];
  v70[40] = v58[1];
  v71 = v58[2];
  v72 = v51;
  v73 = v38;
  memcpy(v74, v62, sizeof(v74));
  v75 = v47;
  v76 = v13;
  v77 = v14;
  v78 = v48;
  sub_21726A630(v70, v49, &qword_27CB244A8, &unk_217758980);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2171F0738(v70, &qword_27CB244A8, &unk_217758980);
}

uint64_t sub_21731E7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258B0, &qword_21775D948);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for CloudPersonalRecommendation.Item();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v63 - v17;
  sub_2171FF30C(a1, v85);
  CloudPersonalRecommendation.Item.init(from:)();
  v75 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v68 = v18;
  v69 = v9;
  v67 = v14;
  v70 = v4;
  v71 = a1;
  v72 = v13;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258A0, &qword_21775D940);
  sub_21733CCD4(&qword_27CB258A8, &qword_27CB258A0, &qword_21775D940);
  v20 = v75;
  sub_2177532C8();
  v75 = v20;
  if (v20)
  {
    v21 = v72;
LABEL_6:
    sub_21733CA78(v21, type metadata accessor for CloudPersonalRecommendation.Item);
    a1 = v71;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  sub_217751DC8();

  v87 = 3;
  v23 = v70;
  v24 = v75;
  sub_217752E08();
  v25 = v72;
  v75 = v24;
  if (v24)
  {
    (*(v74 + 8))(v8, v23);
    v21 = v25;
    goto LABEL_6;
  }

  v27 = sub_217751DC8();
  v28 = sub_217751DC8();
  v29 = sub_217751DC8();
  sub_21733BE70(v85);
  v83 = v69;
  v84 = &protocol witness table for CloudPersonalRecommendation.Item;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
  sub_21733CAD0();
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v31 = v75;
  CloudPersonalRecommendation.Item.decodeRawAttributes(from:)();
  v33 = v25;
  a1 = v71;
  v75 = v31;
  if (v31)
  {

    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v74 + 8))(v22, v70);
    v34 = v33;
LABEL_38:
    sub_21733CA78(v34, type metadata accessor for CloudPersonalRecommendation.Item);
    __swift_destroy_boxed_opaque_existential_1(v82);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = boxed_opaque_existential_0;
  v66 = v32;
  v69 = v28;
  LOBYTE(v81[0]) = 4;
  v35 = v70;
  v36 = v22;
  v37 = sub_217752EC8();
  v38 = v74;
  if (v37)
  {

    LOBYTE(v79[0]) = 4;
    v39 = v75;
    sub_217752E08();
    v75 = v39;
    if (v39)
    {

      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v36, v35);
LABEL_37:
      v34 = v72;
      goto LABEL_38;
    }

    v40 = v36;
    CloudPersonalRecommendation.Item.decodeRawRelationships(from:)();
    v75 = 0;
    v64 = v42;
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    v64 = v27;
    v40 = v36;
  }

  LOBYTE(v81[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v79[0]) = 5;
    v41 = v75;
    sub_217752E08();
    v75 = v41;
    if (v41)
    {
      goto LABEL_21;
    }

    CloudPersonalRecommendation.Item.decodeRawAssociations(from:)();
    v75 = 0;
    v69 = v43;
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  LOBYTE(v79[0]) = 6;
  if (sub_217752EC8())
  {

    LOBYTE(v79[0]) = 6;
    v44 = v75;
    sub_217752E08();
    v75 = v44;
    if (v44)
    {
LABEL_21:

LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v40, v35);
      goto LABEL_37;
    }

    sub_2171FF30C(v80, v78);
    v51 = v75;
    CloudResourceCustomMetadata.init(from:)(v78, v79);
    v75 = v51;
    if (v51)
    {

LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v80);
      goto LABEL_36;
    }

    memcpy(v77, v79, sizeof(v77));
    sub_217383B34(&unk_28295F078);
    v60 = v75;
    CloudPersonalRecommendation.Item.decodeRawMetadata(from:skippingValuesFor:)();
    v75 = v60;
    if (v60)
    {

      sub_21733BED8(v77);
      goto LABEL_35;
    }

    v29 = v61;
    __swift_destroy_boxed_opaque_existential_1(v80);

    memcpy(v76, v77, sizeof(v76));
    nullsub_1(v76, v62);
    v45 = v76;
  }

  else
  {
    v45 = v85;
  }

  memcpy(v81, v45, sizeof(v81));
  __swift_destroy_boxed_opaque_existential_1(v82);
  LOBYTE(v79[0]) = 2;
  v46 = v40;
  if (sub_217752EC8())
  {
    LOBYTE(v79[0]) = 2;
    v47 = v75;
    v48 = sub_217752E68();
    v75 = v47;
    if (v47)
    {

      sub_2171F0738(v81, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v40, v35);
      sub_21733CA78(v72, type metadata accessor for CloudPersonalRecommendation.Item);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v50 = v49;
    v65 = v48;
  }

  else
  {
    v65 = 0;
    v50 = 0;
  }

  v52 = v72;
  v53 = v68;
  sub_21733CAD0();
  v77[0] = 1;
  sub_21733BE84();
  v54 = v75;
  sub_217752EA8();
  v75 = v54;
  if (v54)
  {

    sub_2171F0738(v81, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v38 + 8))(v46, v35);
    sub_21733CA78(v52, type metadata accessor for CloudPersonalRecommendation.Item);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21733CA78(v53, type metadata accessor for CloudPersonalRecommendation.Item);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v38 + 8))(v46, v35);
    sub_21733CA78(v52, type metadata accessor for CloudPersonalRecommendation.Item);
    v55 = v79[1];
    v56 = v79[2];
    v57 = v67;
    v58 = v53 + v67[9];
    *v58 = v79[0];
    *(v58 + 8) = v55;
    *(v58 + 16) = v56;
    v59 = (v53 + v57[10]);
    *v59 = v65;
    v59[1] = v50;
    memcpy((v53 + v57[11]), v81, 0x180uLL);
    *(v53 + v57[12]) = v66;
    *(v53 + v57[13]) = v64;
    *(v53 + v57[14]) = v69;
    *(v53 + v57[15]) = v29;
    sub_21726A630(v53, v73, &qword_27CB24948, &unk_21775A210);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2171F0738(v53, &qword_27CB24948, &unk_21775A210);
  }
}

uint64_t sub_21731F164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25968, &qword_21775D9E8);
  v95 = *(v4 - 8);
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v84 - v7;
  v9 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v84 - v17;
  sub_2171FF30C(a1, v106);
  CatalogSearchRawResponse.TopResult.init(from:)();
  v96 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v89 = v18;
  v90 = v9;
  v88 = v14;
  v91 = v4;
  v92 = a1;
  v93 = v13;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25958, &qword_21775D9E0);
  sub_21733CCD4(&qword_27CB25960, &qword_27CB25958, &qword_21775D9E0);
  v20 = v96;
  sub_2177532C8();
  v96 = v20;
  if (v20)
  {
    v21 = v93;
LABEL_6:
    sub_21733CA78(v21, type metadata accessor for CatalogSearchRawResponse.TopResult);
    a1 = v92;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  sub_217751DC8();

  v108 = 3;
  v23 = v91;
  v24 = v96;
  sub_217752E08();
  v25 = v93;
  v96 = v24;
  if (v24)
  {
    (*(v95 + 8))(v8, v23);
    v21 = v25;
    goto LABEL_6;
  }

  v27 = sub_217751DC8();
  v28 = sub_217751DC8();
  v29 = sub_217751DC8();
  sub_21733BE70(v106);
  v104 = v90;
  v105 = &protocol witness table for CatalogSearchRawResponse.TopResult;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v103);
  sub_21733CAD0();
  __swift_project_boxed_opaque_existential_1(v103, v104);
  v31 = v96;
  CatalogSearchRawResponse.TopResult.decodeRawAttributes(from:)(v107, v32, v33, v34, v35, v36, v37, v38, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  v40 = v25;
  a1 = v92;
  v96 = v31;
  if (v31)
  {

    __swift_destroy_boxed_opaque_existential_1(v107);
    (*(v95 + 8))(v22, v91);
    v41 = v40;
LABEL_38:
    sub_21733CA78(v41, type metadata accessor for CatalogSearchRawResponse.TopResult);
    __swift_destroy_boxed_opaque_existential_1(v103);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v86 = boxed_opaque_existential_0;
  v87 = v39;
  v90 = v28;
  LOBYTE(v102[0]) = 4;
  v42 = v91;
  v43 = v22;
  v44 = sub_217752EC8();
  v45 = v95;
  if (v44)
  {

    LOBYTE(v100[0]) = 4;
    v46 = v96;
    sub_217752E08();
    v96 = v46;
    if (v46)
    {

      __swift_destroy_boxed_opaque_existential_1(v107);
      (*(v45 + 8))(v43, v42);
LABEL_37:
      v41 = v93;
      goto LABEL_38;
    }

    v54 = v43;
    CatalogSearchRawResponse.TopResult.decodeRawRelationships(from:)(v102, v47, v48, v49, v50, v51, v52, v53, v84, v85);
    v96 = 0;
    v85 = v63;
    __swift_destroy_boxed_opaque_existential_1(v102);
  }

  else
  {
    v85 = v27;
    v54 = v43;
  }

  LOBYTE(v102[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v100[0]) = 5;
    v55 = v96;
    sub_217752E08();
    v96 = v55;
    if (v55)
    {
      goto LABEL_21;
    }

    CatalogSearchRawResponse.TopResult.decodeRawAssociations(from:)(v102, v56, v57, v58, v59, v60, v61, v62, v84, v85);
    v96 = 0;
    v90 = v64;
    __swift_destroy_boxed_opaque_existential_1(v102);
  }

  LOBYTE(v100[0]) = 6;
  if (sub_217752EC8())
  {

    LOBYTE(v100[0]) = 6;
    v65 = v96;
    sub_217752E08();
    v96 = v65;
    if (v65)
    {
LABEL_21:

LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v107);
      (*(v45 + 8))(v54, v42);
      goto LABEL_37;
    }

    sub_2171FF30C(v101, v99);
    v72 = v96;
    CloudResourceCustomMetadata.init(from:)(v99, v100);
    v96 = v72;
    if (v72)
    {

LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v101);
      goto LABEL_36;
    }

    memcpy(v98, v100, sizeof(v98));
    sub_217383B34(&unk_28295F078);
    v81 = v96;
    CatalogSearchRawResponse.TopResult.decodeRawMetadata(from:skippingValuesFor:)();
    v96 = v81;
    if (v81)
    {

      sub_21733BED8(v98);
      goto LABEL_35;
    }

    v29 = v82;
    __swift_destroy_boxed_opaque_existential_1(v101);

    memcpy(v97, v98, sizeof(v97));
    nullsub_1(v97, v83);
    v66 = v97;
  }

  else
  {
    v66 = v106;
  }

  memcpy(v102, v66, sizeof(v102));
  __swift_destroy_boxed_opaque_existential_1(v103);
  LOBYTE(v100[0]) = 2;
  v67 = v54;
  if (sub_217752EC8())
  {
    LOBYTE(v100[0]) = 2;
    v68 = v96;
    v69 = sub_217752E68();
    v96 = v68;
    if (v68)
    {

      sub_2171F0738(v102, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v107);
      (*(v45 + 8))(v54, v42);
      sub_21733CA78(v93, type metadata accessor for CatalogSearchRawResponse.TopResult);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v71 = v70;
    v86 = v69;
  }

  else
  {
    v86 = 0;
    v71 = 0;
  }

  v73 = v93;
  v74 = v89;
  sub_21733CAD0();
  v98[0] = 1;
  sub_21733BE84();
  v75 = v96;
  sub_217752EA8();
  v96 = v75;
  if (v75)
  {

    sub_2171F0738(v102, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v107);
    (*(v45 + 8))(v67, v42);
    sub_21733CA78(v73, type metadata accessor for CatalogSearchRawResponse.TopResult);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21733CA78(v74, type metadata accessor for CatalogSearchRawResponse.TopResult);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v107);
    (*(v45 + 8))(v67, v42);
    sub_21733CA78(v73, type metadata accessor for CatalogSearchRawResponse.TopResult);
    v76 = v100[1];
    v77 = v100[2];
    v78 = v88;
    v79 = v74 + v88[9];
    *v79 = v100[0];
    *(v79 + 8) = v76;
    *(v79 + 16) = v77;
    v80 = (v74 + v78[10]);
    *v80 = v86;
    v80[1] = v71;
    memcpy((v74 + v78[11]), v102, 0x180uLL);
    *(v74 + v78[12]) = v87;
    *(v74 + v78[13]) = v85;
    *(v74 + v78[14]) = v90;
    *(v74 + v78[15]) = v29;
    sub_21726A630(v74, v94, &qword_27CB24708, &unk_217758C90);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2171F0738(v74, &qword_27CB24708, &unk_217758C90);
  }
}

uint64_t sub_21731FB28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257E0, &qword_21775D8C0);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v63 - v17;
  sub_2171FF30C(a1, v85);
  CloudRecentlyPlayedMusicItem.init(from:)();
  v75 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v68 = v18;
  v69 = v9;
  v67 = v14;
  v70 = v4;
  v71 = a1;
  v72 = v13;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257D0, &qword_21775D8B8);
  sub_21733CCD4(&qword_27CB257D8, &qword_27CB257D0, &qword_21775D8B8);
  v20 = v75;
  sub_2177532C8();
  v75 = v20;
  if (v20)
  {
    v21 = v72;
LABEL_6:
    sub_21733CA78(v21, type metadata accessor for CloudRecentlyPlayedMusicItem);
    a1 = v71;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  sub_217751DC8();

  v87 = 3;
  v23 = v70;
  v24 = v75;
  sub_217752E08();
  v25 = v72;
  v75 = v24;
  if (v24)
  {
    (*(v74 + 8))(v8, v23);
    v21 = v25;
    goto LABEL_6;
  }

  v27 = sub_217751DC8();
  v28 = sub_217751DC8();
  v29 = sub_217751DC8();
  sub_21733BE70(v85);
  v83 = v69;
  v84 = &protocol witness table for CloudRecentlyPlayedMusicItem;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
  sub_21733CAD0();
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v31 = v75;
  CloudRecentlyPlayedMusicItem.decodeRawAttributes(from:)();
  v33 = v25;
  a1 = v71;
  v75 = v31;
  if (v31)
  {

    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v74 + 8))(v22, v70);
    v34 = v33;
LABEL_38:
    sub_21733CA78(v34, type metadata accessor for CloudRecentlyPlayedMusicItem);
    __swift_destroy_boxed_opaque_existential_1(v82);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = boxed_opaque_existential_0;
  v66 = v32;
  v69 = v28;
  LOBYTE(v81[0]) = 4;
  v35 = v70;
  v36 = v22;
  v37 = sub_217752EC8();
  v38 = v74;
  if (v37)
  {

    LOBYTE(v79[0]) = 4;
    v39 = v75;
    sub_217752E08();
    v75 = v39;
    if (v39)
    {

      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v36, v35);
LABEL_37:
      v34 = v72;
      goto LABEL_38;
    }

    v40 = v36;
    CloudRecentlyPlayedMusicItem.decodeRawRelationships(from:)();
    v75 = 0;
    v64 = v42;
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    v64 = v27;
    v40 = v36;
  }

  LOBYTE(v81[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v79[0]) = 5;
    v41 = v75;
    sub_217752E08();
    v75 = v41;
    if (v41)
    {
      goto LABEL_21;
    }

    CloudRecentlyPlayedMusicItem.decodeRawAssociations(from:)();
    v75 = 0;
    v69 = v43;
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  LOBYTE(v79[0]) = 6;
  if (sub_217752EC8())
  {

    LOBYTE(v79[0]) = 6;
    v44 = v75;
    sub_217752E08();
    v75 = v44;
    if (v44)
    {
LABEL_21:

LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v40, v35);
      goto LABEL_37;
    }

    sub_2171FF30C(v80, v78);
    v51 = v75;
    CloudResourceCustomMetadata.init(from:)(v78, v79);
    v75 = v51;
    if (v51)
    {

LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v80);
      goto LABEL_36;
    }

    memcpy(v77, v79, sizeof(v77));
    sub_217383B34(&unk_28295F078);
    v60 = v75;
    CloudRecentlyPlayedMusicItem.decodeRawMetadata(from:skippingValuesFor:)();
    v75 = v60;
    if (v60)
    {

      sub_21733BED8(v77);
      goto LABEL_35;
    }

    v29 = v61;
    __swift_destroy_boxed_opaque_existential_1(v80);

    memcpy(v76, v77, sizeof(v76));
    nullsub_1(v76, v62);
    v45 = v76;
  }

  else
  {
    v45 = v85;
  }

  memcpy(v81, v45, sizeof(v81));
  __swift_destroy_boxed_opaque_existential_1(v82);
  LOBYTE(v79[0]) = 2;
  v46 = v40;
  if (sub_217752EC8())
  {
    LOBYTE(v79[0]) = 2;
    v47 = v75;
    v48 = sub_217752E68();
    v75 = v47;
    if (v47)
    {

      sub_2171F0738(v81, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v86);
      (*(v38 + 8))(v40, v35);
      sub_21733CA78(v72, type metadata accessor for CloudRecentlyPlayedMusicItem);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v50 = v49;
    v65 = v48;
  }

  else
  {
    v65 = 0;
    v50 = 0;
  }

  v52 = v72;
  v53 = v68;
  sub_21733CAD0();
  v77[0] = 1;
  sub_21733BE84();
  v54 = v75;
  sub_217752EA8();
  v75 = v54;
  if (v54)
  {

    sub_2171F0738(v81, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v38 + 8))(v46, v35);
    sub_21733CA78(v52, type metadata accessor for CloudRecentlyPlayedMusicItem);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21733CA78(v53, type metadata accessor for CloudRecentlyPlayedMusicItem);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v38 + 8))(v46, v35);
    sub_21733CA78(v52, type metadata accessor for CloudRecentlyPlayedMusicItem);
    v55 = v79[1];
    v56 = v79[2];
    v57 = v67;
    v58 = v53 + v67[9];
    *v58 = v79[0];
    *(v58 + 8) = v55;
    *(v58 + 16) = v56;
    v59 = (v53 + v57[10]);
    *v59 = v65;
    v59[1] = v50;
    memcpy((v53 + v57[11]), v81, 0x180uLL);
    *(v53 + v57[12]) = v66;
    *(v53 + v57[13]) = v64;
    *(v53 + v57[14]) = v69;
    *(v53 + v57[15]) = v29;
    sub_21726A630(v53, v73, &qword_27CB257C0, &qword_21775D8A8);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2171F0738(v53, &qword_27CB257C0, &qword_21775D8A8);
  }
}

uint64_t sub_2173204EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = type metadata accessor for CloudCurator.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v109 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A48, &qword_21775DA50);
  v110 = *(v7 - 8);
  v8 = *(v110 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v101 - v10;
  v12 = type metadata accessor for CloudCurator(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v101 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v101 - v24;
  sub_2171FF30C(a1, v122);
  v26 = v111;
  CloudCurator.init(from:)();
  v111 = v26;
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v103 = v16;
  v104 = v12;
  v102 = v25;
  v105 = v7;
  v106 = a1;
  v107 = v20;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A20, &qword_21775DA48);
  sub_21733CCD4(&qword_27CB25A28, &qword_27CB25A20, &qword_21775DA48);
  v28 = v111;
  sub_2177532C8();
  v111 = v28;
  if (v28)
  {
    goto LABEL_3;
  }

  sub_217751DC8();

  v124 = 3;
  v30 = v105;
  v31 = v111;
  sub_217752E08();
  v32 = v107;
  v111 = v31;
  if (v31)
  {
    (*(v110 + 8))(v11, v30);
LABEL_47:
    v29 = v32;
    goto LABEL_48;
  }

  *(&v101 + 1) = v11;
  *&v101 = sub_217751DC8();
  v33 = sub_217751DC8();
  v34 = sub_217751DC8();
  sub_21733BE70(v122);
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v35 = v104;
  if (swift_dynamicCast())
  {
    v109 = v34;
    sub_2171F3F0C(v117, v118);
    v36 = v119;
    v37 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    v38 = v111;
    v39 = (*(v37 + 16))(v123, v36, v37);
    v40 = v110;
    v111 = v38;
    if (v38)
    {

LABEL_9:
      __swift_destroy_boxed_opaque_existential_1(v123);
      (*(v40 + 8))(*(&v101 + 1), v30);
LABEL_38:
      sub_21733CA78(v32, type metadata accessor for CloudCurator);
      __swift_destroy_boxed_opaque_existential_1(v118);
LABEL_49:
      a1 = v106;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v44 = v39;
    LOBYTE(v117[0]) = 4;
    v45 = *(&v101 + 1);
    if (sub_217752EC8())
    {

      LOBYTE(v116[0]) = 4;
      v46 = v111;
      sub_217752E08();
      v111 = v46;
      if (v46)
      {
        goto LABEL_37;
      }

      v103 = v44;
      v48 = v119;
      v49 = v120;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      v50 = v111;
      v51 = (*(v49 + 24))(v117, v48, v49);
      v111 = v50;
      if (v50)
      {
LABEL_26:

        __swift_destroy_boxed_opaque_existential_1(v117);
        goto LABEL_9;
      }

      *&v101 = v51;
      __swift_destroy_boxed_opaque_existential_1(v117);
      v45 = *(&v101 + 1);
      v44 = v103;
    }

    LOBYTE(v117[0]) = 5;
    if (sub_217752EC8())
    {

      LOBYTE(v116[0]) = 5;
      v55 = v111;
      sub_217752E08();
      v111 = v55;
      if (v55)
      {
        goto LABEL_37;
      }

      v103 = v44;
      v56 = v119;
      v57 = v120;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      v58 = v111;
      v59 = (*(v57 + 32))(v117, v56, v57);
      v111 = v58;
      if (v58)
      {
        goto LABEL_26;
      }

      v33 = v59;
      __swift_destroy_boxed_opaque_existential_1(v117);
      v45 = *(&v101 + 1);
      v44 = v103;
    }

    LOBYTE(v116[0]) = 6;
    if (sub_217752EC8())
    {

      LOBYTE(v116[0]) = 6;
      v72 = v111;
      sub_217752E08();
      v111 = v72;
      if (v72)
      {
LABEL_37:

        __swift_destroy_boxed_opaque_existential_1(v123);
        (*(v40 + 8))(v45, v30);
        goto LABEL_38;
      }

      sub_2171FF30C(v115, v113);
      v74 = v111;
      CloudResourceCustomMetadata.init(from:)(v113, v116);
      a1 = v106;
      v111 = v74;
      if (v74)
      {

        __swift_destroy_boxed_opaque_existential_1(v115);
        __swift_destroy_boxed_opaque_existential_1(v123);
        (*(v40 + 8))(v45, v30);
        sub_21733CA78(v32, type metadata accessor for CloudCurator);
        __swift_destroy_boxed_opaque_existential_1(v118);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v103 = v44;
      memcpy(v114, v116, sizeof(v114));
      v92 = v119;
      v93 = v120;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      v94 = sub_217383B34(&unk_28295F078);
      v95 = v111;
      v96 = (*(v93 + 40))(v115, v94, v92, v93);
      v111 = v95;
      if (v95)
      {

        sub_21733BED8(v114);
        __swift_destroy_boxed_opaque_existential_1(v115);
        __swift_destroy_boxed_opaque_existential_1(v123);
        (*(v40 + 8))(*(&v101 + 1), v105);
        goto LABEL_38;
      }

      v109 = v96;
      __swift_destroy_boxed_opaque_existential_1(v115);

      memcpy(v112, v114, sizeof(v112));
      nullsub_1(v112, v99);
      memcpy(v117, v112, sizeof(v117));
      v30 = v105;
      v45 = *(&v101 + 1);
      v44 = v103;
    }

    else
    {
      memcpy(v117, v122, sizeof(v117));
    }

    __swift_destroy_boxed_opaque_existential_1(v118);
    v73 = v117;
    goto LABEL_52;
  }

  memset(v117, 0, 40);
  sub_2171F0738(v117, &qword_27CB25588, &unk_21775D380);
  sub_2171FF30C(v123, v117);
  v41 = *(v35 + 20);
  sub_21733CAD0();
  v42 = v111;
  sub_2173859E0();
  v40 = v110;
  v111 = v42;
  if (v42)
  {

    __swift_destroy_boxed_opaque_existential_1(v123);
    (*(v40 + 8))(*(&v101 + 1), v30);
    goto LABEL_47;
  }

  v44 = v43;
  v109 = v34;
  LOBYTE(v117[0]) = 4;
  v45 = *(&v101 + 1);
  if (sub_217752EC8())
  {

    LOBYTE(v116[0]) = 4;
    v47 = v111;
    sub_217752E08();
    v111 = v47;
    if (v47)
    {
      goto LABEL_46;
    }

    sub_2171FF30C(v117, v116);
    v52 = sub_217383864();
    v53 = v111;
    v54 = Dictionary<>.init(from:skippingValuesFor:)(v116, v52);
    a1 = v106;
    v111 = v53;
    if (v53)
    {
      goto LABEL_33;
    }

    *&v101 = v54;
    __swift_destroy_boxed_opaque_existential_1(v117);
  }

  LOBYTE(v117[0]) = 5;
  if (sub_217752EC8())
  {

    LOBYTE(v116[0]) = 5;
    v60 = v111;
    sub_217752E08();
    v111 = v60;
    if (v60)
    {
      goto LABEL_46;
    }

    sub_2171FF30C(v117, v116);
    if (qword_27CB23D28 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2A830, v61, v62, v63, v64, v65, v66, v67, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5]);
    v68 = v111;
    v70 = Dictionary<>.init(from:skippingValuesFor:)(v116, v69);
    a1 = v106;
    v111 = v68;
    if (v68)
    {
LABEL_33:

      v71 = v117;
LABEL_68:
      __swift_destroy_boxed_opaque_existential_1(v71);
      __swift_destroy_boxed_opaque_existential_1(v123);
      (*(v40 + 8))(v45, v30);
      sub_21733CA78(v32, type metadata accessor for CloudCurator);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v33 = v70;
    __swift_destroy_boxed_opaque_existential_1(v117);
  }

  LOBYTE(v117[0]) = 6;
  if ((sub_217752EC8() & 1) == 0)
  {
    v73 = v122;
LABEL_52:
    memcpy(v121, v73, sizeof(v121));
    goto LABEL_53;
  }

  LOBYTE(v117[0]) = 6;
  v75 = v111;
  sub_217752E08();
  v111 = v75;
  if (v75)
  {
LABEL_46:

    __swift_destroy_boxed_opaque_existential_1(v123);
    (*(v40 + 8))(v45, v30);
    goto LABEL_47;
  }

  sub_2171FF30C(v112, v118);
  v91 = v111;
  CloudResourceCustomMetadata.init(from:)(v118, v117);
  a1 = v106;
  v111 = v91;
  if (v91)
  {

LABEL_67:
    v71 = v112;
    goto LABEL_68;
  }

  v103 = v44;
  memcpy(v116, v117, sizeof(v116));
  sub_2171FF30C(v112, v115);
  sub_217221020(*(v32 + *(v104 + 32)));
  sub_217383B34(&unk_28295F078);
  v97 = v111;
  sub_217387B08();
  v109 = v98;
  v111 = v97;
  if (v97)
  {

    sub_21733BED8(v116);
    goto LABEL_67;
  }

  __swift_destroy_boxed_opaque_existential_1(v112);
  memcpy(v114, v116, sizeof(v114));
  nullsub_1(v114, v100);
  memcpy(v121, v114, sizeof(v121));
  v44 = v103;
LABEL_53:
  LOBYTE(v117[0]) = 2;
  if (sub_217752EC8())
  {
    LOBYTE(v117[0]) = 2;
    v77 = v111;
    v78 = sub_217752E68();
    v111 = v77;
    if (v77)
    {

      sub_2171F0738(v121, &qword_27CB25620, &qword_21776A5F0);

      __swift_destroy_boxed_opaque_existential_1(v123);
      (*(v40 + 8))(v45, v30);
LABEL_3:
      v29 = v107;
LABEL_48:
      sub_21733CA78(v29, type metadata accessor for CloudCurator);
      goto LABEL_49;
    }

    v80 = v79;
    v110 = v78;
    v103 = v44;
  }

  else
  {
    v103 = v44;
    v110 = 0;
    v80 = 0;
  }

  v81 = v107;
  v82 = v102;
  sub_21733CAD0();
  LOBYTE(v116[0]) = 1;
  sub_21733BE84();
  v83 = v105;
  v84 = *(&v101 + 1);
  v85 = v111;
  sub_217752EA8();
  v111 = v85;
  if (v85)
  {

    sub_2171F0738(v121, &qword_27CB25620, &qword_21776A5F0);

    __swift_destroy_boxed_opaque_existential_1(v123);
    (*(v40 + 8))(v84, v83);
    sub_21733CA78(v81, type metadata accessor for CloudCurator);
    __swift_destroy_boxed_opaque_existential_1(v106);
    return sub_21733CA78(v82, type metadata accessor for CloudCurator);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v123);
    (*(v40 + 8))(v84, v83);
    sub_21733CA78(v81, type metadata accessor for CloudCurator);
    v86 = *(&v117[0] + 1);
    v87 = v117[1];
    v88 = v82 + v21[9];
    *v88 = *&v117[0];
    *(v88 + 8) = v86;
    *(v88 + 16) = v87;
    v89 = (v82 + v21[10]);
    *v89 = v110;
    v89[1] = v80;
    memcpy((v82 + v21[11]), v121, 0x180uLL);
    *(v82 + v21[12]) = v103;
    *(v82 + v21[13]) = v101;
    *(v82 + v21[14]) = v33;
    v90 = v108;
    *(v82 + v21[15]) = v109;
    sub_21726A630(v82, v90, &qword_27CB24490, &qword_21775A250);
    __swift_destroy_boxed_opaque_existential_1(v106);
    return sub_2171F0738(v82, &qword_27CB24490, &qword_21775A250);
  }
}

uint64_t sub_217321420(void *a1)
{
  v80 = type metadata accessor for CloudCurator(0);
  v2 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v3);
  v81 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A18, &qword_21775DA40);
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v77 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A20, &qword_21775DA48);
  sub_21733CCD4(&qword_27CB25A28, &qword_27CB25A20, &qword_21775DA48);
  v12 = v92;
  sub_2177532F8();
  v13 = v12[1];
  v87[0] = *v12;
  v87[1] = v13;
  LOBYTE(v84[0]) = 0;
  sub_2172E1B18();
  v14 = v82;
  sub_217752F88();
  if (v14)
  {
    return (*(v83 + 8))(v9, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v17 = (v12 + v16[10]);
  if (v17[1])
  {
    v18 = *v17;
    LOBYTE(v87[0]) = 2;
    sub_217752F48();
  }

  v19 = v12 + v16[9];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  v89 = v20;
  v90 = v21;
  v91 = v19;
  v88 = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v22 = sub_217751DC8();
  memcpy(v87, v12 + v16[11], sizeof(v87));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v87) != 1)
  {

    v28 = sub_217751378();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_217751368();
    memcpy(v84, v87, sizeof(v84));
    sub_21733AC98();
    v32 = sub_217751358();
    v78 = v31;
    v81 = v16;
    v82 = v32;
    v37 = v36;
    v38 = sub_217751348();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    v77 = v37;
    sub_217751308();

    sub_217275694(v82, v77);

    v22 = v84[0];
    v16 = v81;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v23 = v80;
  if (swift_dynamicCast())
  {
    v82 = v22;
    v80 = v9;
    sub_2171F3F0C(v86, v84);
    v24 = v16;
    v25 = v84[3];
    v26 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v27 = (*(v26 + 48))(*(v12 + v24[12]), v79, v25, v26);
    v81 = v24;
    *&v86[0] = v27;
    v85 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v41 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    v78 = v41;

    v43 = v84[3];
    v44 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v45 = (*(v44 + 56))(*(v92 + v81[13]), v79, v43, v44);
    if (v45)
    {
      *&v86[0] = v45;
      v85 = 4;
      sub_217752F88();
    }

    v46 = v84[3];
    v47 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v48 = (*(v47 + 64))(*(v92 + v81[14]), v79, v46, v47);
    if (v48)
    {
      *&v86[0] = v48;
      v85 = 5;
      sub_217752F88();
      v77 = v5;
    }

    else
    {
      v77 = v5;
    }

    v58 = *(v92 + v81[15]);
    sub_217751DE8();
    v59 = sub_2174EB024(v82, v58);
    v60 = v84[3];
    v61 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v74 = (*(v61 + 72))(v59, v79, v60, v61);

    if (v74)
    {
      *&v86[0] = v74;
      v85 = 6;
      v75 = v77;
      v76 = v80;
      sub_217752F88();
      (*(v83 + 8))(v76, v75);
    }

    else
    {
      (*(v83 + 8))(v80, v77);
    }

    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  memset(v86, 0, 40);
  sub_2171F0738(v86, &qword_27CB25588, &unk_21775D380);
  v81 = v16;
  v33 = *(*(v12 + v16[12]) + 16);
  v34 = *(v23 + 20);
  if (v33)
  {
    v35 = v79;
    v42 = v22;
    v84[0] = sub_2173886F4();
    LOBYTE(v86[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();

    v12 = v92;
  }

  else
  {
    v82 = v22;
    LOBYTE(v84[0]) = 3;
    type metadata accessor for CloudCurator.Attributes(0);
    sub_21733CDD0(&qword_27CB25A40, type metadata accessor for CloudCurator.Attributes);
    sub_217752F88();
    v35 = v79;
    v42 = v82;
  }

  v49 = v80;
  sub_21726A630(v12 + *(v80 + 24), v86, &qword_27CB24498, &unk_217758960);
  if (*&v86[1] == 1)
  {
    v82 = v42;
    sub_2171F0738(v86, &qword_27CB24498, &unk_217758960);
    v50 = v81;
    v51 = *(v12 + v81[13]);
    if (!*(v51 + 16))
    {
      v12 = v92;
      goto LABEL_26;
    }

    v84[0] = v51;
    LOBYTE(v86[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();

    v12 = v92;
  }

  else
  {
    memcpy(v84, v86, 0x80uLL);
    if (*(*(v12 + v81[13]) + 16))
    {
      v52 = sub_2173889F8();
      v82 = v42;
      *&v86[0] = v52;
      v85 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_2172831A8(v84);

      v12 = v92;
    }

    else
    {
      v82 = v42;
      LOBYTE(v86[0]) = 4;
      sub_21733CD7C();
      sub_217752F88();
      sub_2172831A8(v84);
    }

    v50 = v81;
  }

  v49 = v80;
LABEL_26:
  v53 = *(v12 + *(v49 + 28));
  v54 = *(v12 + v50[14]);
  v55 = *(v54 + 16);
  if ((v53 & 1) == 0)
  {
    if (v55)
    {
      sub_2171FF30C(v35, v84);
      v56 = sub_2174D5830(v84);
      v57 = sub_217751DE8();
      v84[0] = sub_2174D37FC(v57, v56);
      LOBYTE(v86[0]) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      v50 = v81;
    }

    else
    {
      LOBYTE(v84[0]) = 5;
      sub_21733CD28();
      sub_217752F88();
    }

    goto LABEL_34;
  }

  if (v55)
  {
    v84[0] = v54;
    LOBYTE(v86[0]) = 5;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();

LABEL_34:
    v49 = v80;
  }

  v62 = *(v92 + *(v49 + 32));
  v63 = *(v92 + v50[15]);
  v64 = *(v63 + 16);
  if (v62 == 1)
  {
    v65 = v83;
    if (v64)
    {
      sub_217751DE8();
      v84[0] = sub_2174EB024(v82, v63);
      LOBYTE(v86[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else if (*(v82 + 16))
    {
      v84[0] = v82;
      LOBYTE(v86[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      return (*(v65 + 8))(v9, v5);
    }

    (*(v65 + 8))(v9, v5);
  }

  else
  {
    v66 = v83;
    if (v64)
    {
      sub_2171FF30C(v79, v84);
      sub_217221020(v62);
      v67 = sub_217751DE8();
      v68 = sub_2174D6198(v67, v84);
      v69 = sub_217751DE8();
      v70 = sub_2175472EC(v69, v68);
      v71 = sub_2175472EC(v82, v70);
    }

    else
    {
      sub_2171FF30C(v79, v84);
      sub_217221020(v62);
      v72 = sub_217751DE8();
      v73 = sub_2174D6198(v72, v84);
      v71 = sub_2174D37FC(v82, v73);
    }

    v84[0] = v71;
    LOBYTE(v86[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    (*(v66 + 8))(v9, v5);
    sub_217221010(v62);
  }
}

uint64_t sub_21732263C(void *a1)
{
  v74 = type metadata accessor for CloudStation(0);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74, v3);
  v75 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259E0, &qword_21775DA28);
  v77 = *(v5 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v71 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259E8, &qword_21775DA30);
  sub_21733CCD4(&qword_27CB259F0, &qword_27CB259E8, &qword_21775DA30);
  v12 = v86;
  sub_2177532F8();
  v13 = v12[1];
  v81[0] = *v12;
  v81[1] = v13;
  LOBYTE(v78[0]) = 0;
  sub_2172E1B18();
  v14 = v76;
  sub_217752F88();
  if (v14)
  {
    return (*(v77 + 8))(v9, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v17 = (v12 + v16[10]);
  if (v17[1])
  {
    v18 = *v17;
    LOBYTE(v81[0]) = 2;
    sub_217752F48();
  }

  v19 = v12 + v16[9];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  v83 = v20;
  v84 = v21;
  v85 = v19;
  v82 = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v22 = sub_217751DC8();
  memcpy(v81, v12 + v16[11], sizeof(v81));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v81) != 1)
  {

    v28 = sub_217751378();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_217751368();
    memcpy(v78, v81, sizeof(v78));
    sub_21733AC98();
    v32 = sub_217751358();
    v72 = v31;
    v75 = v16;
    v76 = v32;
    v37 = v36;
    v38 = sub_217751348();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    v71 = v37;
    sub_217751308();

    sub_217275694(v76, v71);

    v22 = v78[0];
    v16 = v75;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v23 = v74;
  if (swift_dynamicCast())
  {
    v76 = v22;
    v74 = v9;
    sub_2171F3F0C(v80, v78);
    v24 = v16;
    v25 = v78[3];
    v26 = v78[4];
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v27 = (*(v26 + 48))(*(v12 + v24[12]), v73, v25, v26);
    v75 = v24;
    *&v80[0] = v27;
    v79 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v41 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    v72 = v41;

    v42 = v78[3];
    v43 = v78[4];
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v44 = (*(v43 + 56))(*(v86 + v75[13]), v73, v42, v43);
    if (v44)
    {
      *&v80[0] = v44;
      v79 = 4;
      sub_217752F88();
    }

    v45 = v78[3];
    v46 = v78[4];
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v47 = (*(v46 + 64))(*(v86 + v75[14]), v73, v45, v46);
    if (v47)
    {
      *&v80[0] = v47;
      v79 = 5;
      sub_217752F88();
      v71 = v5;
    }

    else
    {
      v71 = v5;
    }

    v58 = *(v86 + v75[15]);
    sub_217751DE8();
    v59 = sub_2174EB024(v76, v58);
    v60 = v78[3];
    v61 = v78[4];
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v68 = (*(v61 + 72))(v59, v73, v60, v61);

    if (v68)
    {
      *&v80[0] = v68;
      v79 = 6;
      v69 = v71;
      v70 = v74;
      sub_217752F88();
      (*(v77 + 8))(v70, v69);
    }

    else
    {
      (*(v77 + 8))(v74, v71);
    }

    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  memset(v80, 0, 40);
  sub_2171F0738(v80, &qword_27CB25588, &unk_21775D380);
  v75 = v16;
  v33 = *(v12 + v16[12]);
  if (*(v33 + 16))
  {
    v34 = v73;
    v35 = sub_2173885F8(v12 + *(v23 + 20), v73, v33);
    v76 = v22;
    v78[0] = v35;
    LOBYTE(v80[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();

    v12 = v86;
  }

  else
  {
    v76 = v22;
    LOBYTE(v78[0]) = 3;
    type metadata accessor for CloudStation.Attributes(0);
    sub_21733CDD0(&qword_27CB25A08, type metadata accessor for CloudStation.Attributes);
    sub_217752F88();
    v34 = v73;
  }

  v48 = v74;
  v49 = *(v12 + *(v74 + 24));
  v50 = *(v12 + v75[13]);
  v51 = *(v50 + 16);
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_25;
    }

    v78[0] = v50;
    LOBYTE(v80[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
  }

  else
  {
    if (!v51)
    {
      LOBYTE(v78[0]) = 4;
      sub_21733CC24();
      sub_217752F88();
      goto LABEL_24;
    }

    sub_2171FF30C(v34, v78);
    v52 = sub_2174D4AA8(v78);
    v53 = sub_217751DE8();
    v78[0] = sub_2174D37FC(v53, v52);
    LOBYTE(v80[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
  }

LABEL_24:
  v48 = v74;
LABEL_25:
  v54 = *(*(v86 + v75[14]) + 16);
  if ((*(v86 + *(v48 + 28)) & 1) == 0)
  {
    if (!v54)
    {
      LOBYTE(v78[0]) = 5;
      sub_21733CBD0();
      sub_217752F88();
LABEL_35:
      v57 = v77;
      v48 = v74;
      goto LABEL_36;
    }

    sub_2171FF30C(v34, v78);
    v55 = sub_2174D53F4(v78);
    v56 = sub_217751DE8();
    v78[0] = sub_2174D37FC(v56, v55);
    LOBYTE(v80[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
LABEL_34:

    goto LABEL_35;
  }

  if (v54)
  {
    v78[0] = *(v86 + v75[14]);
    LOBYTE(v80[0]) = 5;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    goto LABEL_34;
  }

  v57 = v77;
LABEL_36:
  v62 = v86;
  sub_21726A630(v86 + *(v48 + 32), v80, &qword_27CB24340, &unk_2177650B0);
  if (*&v80[3] == 1)
  {
    sub_2171F0738(v80, &qword_27CB24340, &unk_2177650B0);
    v63 = *(v62 + v75[15]);
    if (*(v63 + 16))
    {
      v64 = *(v62 + v75[15]);
      sub_217751DE8();
      v78[0] = sub_2174EB024(v76, v63);
      LOBYTE(v80[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else if (*(v76 + 16))
    {
      v78[0] = v76;
      LOBYTE(v80[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      return (*(v57 + 8))(v9, v5);
    }
  }

  else
  {
    memcpy(v78, v80, 0x140uLL);
    v65 = *(v62 + v75[15]);
    if (*(v65 + 16))
    {
      v66 = sub_217331390(v78, v76, v73, v65, sub_21733CC78, sub_2174D5A4C);
    }

    else
    {
      v66 = sub_217388F30();
    }

    v67 = v66;

    *&v80[0] = v67;
    v79 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    sub_21726A258(v78);
  }

  (*(v57 + 8))(v9, v5);
}

uint64_t sub_21732378C(void *a1)
{
  v78 = type metadata accessor for CloudRecordLabel(0);
  v2 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78, v3);
  v79 = (&v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259A8, &qword_21775DA10);
  v81 = *(v5 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v75 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB259B0, &qword_21775DA18);
  sub_21733CCD4(&qword_27CB259B8, &qword_27CB259B0, &qword_21775DA18);
  v12 = v90;
  sub_2177532F8();
  v13 = v12[1];
  v85[0] = *v12;
  v85[1] = v13;
  LOBYTE(v82[0]) = 0;
  sub_2172E1B18();
  v14 = v80;
  sub_217752F88();
  if (v14)
  {
    return (*(v81 + 8))(v9, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v17 = (v12 + v16[10]);
  if (v17[1])
  {
    v18 = *v17;
    LOBYTE(v85[0]) = 2;
    sub_217752F48();
  }

  v19 = v12 + v16[9];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  v87 = v20;
  v88 = v21;
  v89 = v19;
  v86 = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v22 = sub_217751DC8();
  memcpy(v85, v12 + v16[11], sizeof(v85));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v85) != 1)
  {

    v28 = sub_217751378();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_217751368();
    memcpy(v82, v85, sizeof(v82));
    sub_21733AC98();
    v32 = sub_217751358();
    v76 = v31;
    v79 = v16;
    v80 = v32;
    v37 = v36;
    v38 = sub_217751348();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    v75 = v37;
    sub_217751308();

    sub_217275694(v80, v75);

    v22 = v82[0];
    v16 = v79;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v23 = v78;
  if (!swift_dynamicCast())
  {
    memset(v84, 0, 40);
    sub_2171F0738(v84, &qword_27CB25588, &unk_21775D380);
    v79 = v16;
    v33 = *(v12 + v16[12]);
    if (*(v33 + 16))
    {
      v34 = v77;
      v35 = sub_217388814(v12 + *(v23 + 20), v77, v33);
      v80 = v22;
      v82[0] = v35;
      LOBYTE(v84[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      v12 = v90;
    }

    else
    {
      v80 = v22;
      LOBYTE(v82[0]) = 3;
      type metadata accessor for CloudRecordLabel.Attributes(0);
      sub_21733CDD0(&qword_27CB259D0, type metadata accessor for CloudRecordLabel.Attributes);
      sub_217752F88();
      v34 = v77;
    }

    v48 = v78;
    v49 = *(v12 + *(v78 + 24));
    v50 = *(v12 + v79[13]);
    v51 = *(v50 + 16);
    if (v49)
    {
      if (!v51)
      {
        goto LABEL_26;
      }

      v82[0] = v50;
      LOBYTE(v84[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else
    {
      if (!v51)
      {
        LOBYTE(v82[0]) = 4;
        sub_21733CB7C();
        sub_217752F88();
        goto LABEL_25;
      }

      sub_2171FF30C(v34, v82);
      v52 = sub_2174D5248(v82);
      v53 = sub_217751DE8();
      v82[0] = sub_2174D37FC(v53, v52);
      LOBYTE(v84[0]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

LABEL_25:
    v48 = v78;
LABEL_26:
    v54 = v90;
    sub_21726A630(v90 + *(v48 + 28), v84, &qword_27CB24A98, &unk_217759060);
    if (*&v84[1] == 1)
    {
      sub_2171F0738(v84, &qword_27CB24A98, &unk_217759060);
      if (!*(*(v54 + v79[14]) + 16))
      {
        v55 = v81;
        goto LABEL_37;
      }

      v82[0] = *(v54 + v79[14]);
      LOBYTE(v84[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else
    {
      memcpy(v82, v84, 0x100uLL);
      if (!*(*(v54 + v79[14]) + 16))
      {
        LOBYTE(v84[0]) = 5;
        sub_21733CB28();
        sub_217752F88();
        sub_217284540(v82);
LABEL_36:
        v55 = v81;
        v48 = v78;
LABEL_37:
        v60 = v54;
        v61 = *(v54 + *(v48 + 32));
        v62 = *(v60 + v79[15]);
        v63 = *(v62 + 16);
        if (v61 == 1)
        {
          if (v63)
          {
            v64 = *(v60 + v79[15]);
            sub_217751DE8();
            v82[0] = sub_2174EB024(v80, v62);
            LOBYTE(v84[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            sub_217752F88();
          }

          else if (*(v80 + 16))
          {
            v82[0] = v80;
            LOBYTE(v84[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            sub_217752F88();

            return (*(v55 + 8))(v9, v5);
          }

          (*(v55 + 8))(v9, v5);
        }

        else
        {
          if (v63)
          {
            sub_2171FF30C(v77, v82);
            sub_217221020(v61);
            v65 = sub_217751DE8();
            v66 = sub_2174D638C(v65, v82);
            v67 = sub_217751DE8();
            v68 = sub_2175472EC(v67, v66);
            v69 = sub_2175472EC(v80, v68);
          }

          else
          {
            sub_2171FF30C(v77, v82);
            sub_217221020(v61);
            v70 = sub_217751DE8();
            v71 = sub_2174D638C(v70, v82);
            v69 = sub_2174D37FC(v80, v71);
          }

          v82[0] = v69;
          LOBYTE(v84[0]) = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
          sub_217752F88();
          (*(v55 + 8))(v9, v5);
          sub_217221010(v61);
        }
      }

      *&v84[0] = sub_217388E08();
      v83 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_217284540(v82);
    }

    goto LABEL_36;
  }

  v80 = v22;
  v78 = v9;
  sub_2171F3F0C(v84, v82);
  v24 = v16;
  v25 = v82[3];
  v26 = v82[4];
  __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v27 = (*(v26 + 48))(*(v12 + v24[12]), v77, v25, v26);
  v79 = v24;
  *&v84[0] = v27;
  v83 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v41 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
  sub_217752F88();
  v76 = v41;

  v42 = v82[3];
  v43 = v82[4];
  __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v44 = (*(v43 + 56))(*(v90 + v79[13]), v77, v42, v43);
  if (v44)
  {
    *&v84[0] = v44;
    v83 = 4;
    sub_217752F88();
  }

  v45 = v82[3];
  v46 = v82[4];
  __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v47 = (*(v46 + 64))(*(v90 + v79[14]), v77, v45, v46);
  if (v47)
  {
    *&v84[0] = v47;
    v83 = 5;
    sub_217752F88();
    v75 = v5;
  }

  else
  {
    v75 = v5;
  }

  v56 = *(v90 + v79[15]);
  sub_217751DE8();
  v57 = sub_2174EB024(v80, v56);
  v58 = v82[3];
  v59 = v82[4];
  __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v72 = (*(v59 + 72))(v57, v77, v58, v59);

  if (v72)
  {
    *&v84[0] = v72;
    v83 = 6;
    v73 = v75;
    v74 = v78;
    sub_217752F88();
    (*(v81 + 8))(v74, v73);
  }

  else
  {
    (*(v81 + 8))(v78, v75);
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t sub_217324958(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C8, &qword_21775D8B0);
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v58 - v5;
  v7 = a1[3];
  v8 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257D0, &qword_21775D8B8);
  v9 = v64;
  sub_21733CCD4(&qword_27CB257D8, &qword_27CB257D0, &qword_21775D8B8);
  sub_2177532F8();
  v67[0] = sub_2172E8FE8();
  v67[1] = v10;
  LOBYTE(v65[0]) = 0;
  sub_2172E1B18();
  v11 = v62;
  sub_217752F88();
  if (v11)
  {

    return (*(v63 + 8))(v6, v2);
  }

  else
  {
    v13 = v61;

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
    v15 = (v9 + v14[10]);
    if (v15[1])
    {
      v16 = *v15;
      LOBYTE(v67[0]) = 2;
      sub_217752F48();
    }

    v17 = v13;
    v18 = v64;
    v19 = (v64 + v14[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v19) = *(v19 + 16);
    v67[48] = v20;
    v67[49] = v21;
    v68 = v19;
    v70 = 1;
    sub_21733ABF0();
    sub_217751DE8();
    sub_217752F88();

    v22 = sub_217751DC8();
    memcpy(v67, (v18 + v14[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v67) == 1)
    {
      v62 = v22;
    }

    else
    {

      v25 = sub_217751378();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_217751368();
      memcpy(v65, v67, sizeof(v65));
      sub_21733AC98();
      v28 = sub_217751358();
      v33 = v32;
      v60 = v6;
      v62 = v28;
      v34 = sub_217751348();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
      sub_217751308();

      sub_217275694(v62, v33);

      v62 = v65[0];
      v6 = v60;
      v17 = v13;
    }

    v65[3] = type metadata accessor for CloudRecentlyPlayedMusicItem();
    v65[4] = &protocol witness table for CloudRecentlyPlayedMusicItem;
    __swift_allocate_boxed_opaque_existential_0(v65);
    v23 = v64;
    sub_21733CAD0();
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    v24 = *(v23 + v14[12]);
    CloudRecentlyPlayedMusicItem.mergeAttributes(with:for:)();
    v60 = v29;
    v66 = v29;
    v69 = 3;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v31 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    v59 = v30;
    sub_217752F88();
    v58 = v31;

    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    CloudRecentlyPlayedMusicItem.mergeRelationships(with:for:)(*(v64 + v14[13]), v17, v37, v38, v39, v40, v41, v42, v58, v59);
    if (v43)
    {
      v60 = v43;
      v66 = v43;
      v69 = 4;
      sub_217752F88();
    }

    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    CloudRecentlyPlayedMusicItem.mergeAssociations(with:for:)(*(v64 + v14[14]), v17, v44, v45, v46, v47, v48, v49, v58, v59);
    if (v50)
    {
      v66 = v50;
      v69 = 5;
      sub_217752F88();
      v59 = v2;
      v60 = v6;
    }

    else
    {
      v59 = v2;
      v60 = v6;
    }

    v51 = v62;
    v52 = *(v64 + v14[15]);
    sub_217751DE8();
    sub_2174EB024(v51, v52);
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    CloudRecentlyPlayedMusicItem.mergeMetadata(with:for:)();
    v54 = v53;

    v55 = v63;
    if (v54)
    {
      v66 = v54;
      v69 = 6;
      v56 = v59;
      v57 = v60;
      sub_217752F88();
      (*(v55 + 8))(v57, v56);
    }

    else
    {
      (*(v63 + 8))(v60, v59);
    }

    return __swift_destroy_boxed_opaque_existential_1(v65);
  }
}

uint64_t sub_217325158(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25950, &qword_21775D9D8);
  v76 = *(v2 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v71 - v5;
  v7 = a1[3];
  v8 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25958, &qword_21775D9E0);
  v9 = v77;
  sub_21733CCD4(&qword_27CB25960, &qword_27CB25958, &qword_21775D9E0);
  sub_2177532F8();
  CatalogSearchRawResponse.TopResult.id.getter();
  v80[0] = v10;
  v80[1] = v11;
  LOBYTE(v78[0]) = 0;
  sub_2172E1B18();
  v12 = v75;
  sub_217752F88();
  if (v12)
  {

    return (*(v76 + 8))(v6, v2);
  }

  else
  {
    v14 = v74;

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
    v16 = (v9 + v15[10]);
    if (v16[1])
    {
      v17 = *v16;
      LOBYTE(v80[0]) = 2;
      sub_217752F48();
    }

    v18 = v14;
    v19 = v77;
    v20 = (v77 + v15[9]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v20) = *(v20 + 16);
    v80[48] = v21;
    v80[49] = v22;
    v81 = v20;
    v83 = 1;
    sub_21733ABF0();
    sub_217751DE8();
    sub_217752F88();

    v23 = sub_217751DC8();
    memcpy(v80, (v19 + v15[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v80) == 1)
    {
      v75 = v23;
    }

    else
    {

      v31 = sub_217751378();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      sub_217751368();
      memcpy(v78, v80, sizeof(v78));
      sub_21733AC98();
      v34 = sub_217751358();
      v39 = v38;
      v73 = v6;
      v75 = v34;
      v40 = sub_217751348();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
      sub_217751308();

      sub_217275694(v75, v39);

      v75 = v78[0];
      v6 = v73;
      v18 = v14;
    }

    v78[3] = type metadata accessor for CatalogSearchRawResponse.TopResult();
    v78[4] = &protocol witness table for CatalogSearchRawResponse.TopResult;
    __swift_allocate_boxed_opaque_existential_0(v78);
    v24 = v77;
    sub_21733CAD0();
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    CatalogSearchRawResponse.TopResult.mergeAttributes(with:for:)(*(v24 + v15[12]), v18, v25, v26, v27, v28, v29, v30, v71, v72, v73, v74, v75, v76, v77, v78[0], v78[1], v78[2], v78[3], v78[4]);
    v73 = v35;
    v79 = v35;
    v82 = 3;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v37 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    v72 = v36;
    sub_217752F88();
    v71 = v37;

    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    CatalogSearchRawResponse.TopResult.mergeRelationships(with:for:)(*(v77 + v15[13]), v18, v43, v44, v45, v46, v47, v48, v71, v72);
    if (v49)
    {
      v73 = v49;
      v79 = v49;
      v82 = 4;
      sub_217752F88();
    }

    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    CatalogSearchRawResponse.TopResult.mergeAssociations(with:for:)(*(v77 + v15[14]), v18, v50, v51, v52, v53, v54, v55, v71, v72);
    if (v56)
    {
      v79 = v56;
      v82 = 5;
      sub_217752F88();
      v72 = v2;
      v73 = v6;
    }

    else
    {
      v72 = v2;
      v73 = v6;
    }

    v57 = v75;
    v58 = *(v77 + v15[15]);
    sub_217751DE8();
    v59 = sub_2174EB024(v57, v58);
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    CatalogSearchRawResponse.TopResult.mergeMetadata(with:for:)(v59, v14, v60, v61, v62, v63, v64, v65, v71, v72);
    v67 = v66;

    v68 = v76;
    if (v67)
    {
      v79 = v67;
      v82 = 6;
      v69 = v72;
      v70 = v73;
      sub_217752F88();
      (*(v68 + 8))(v70, v69);
    }

    else
    {
      (*(v76 + 8))(v73, v72);
    }

    return __swift_destroy_boxed_opaque_existential_1(v78);
  }
}

uint64_t sub_217325958(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25898, &qword_21775D938);
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v58 - v5;
  v7 = a1[3];
  v8 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258A0, &qword_21775D940);
  v9 = v64;
  sub_21733CCD4(&qword_27CB258A8, &qword_27CB258A0, &qword_21775D940);
  sub_2177532F8();
  v67[0] = CloudPersonalRecommendation.Item.id.getter();
  v67[1] = v10;
  LOBYTE(v65[0]) = 0;
  sub_2172E1B18();
  v11 = v62;
  sub_217752F88();
  if (v11)
  {

    return (*(v63 + 8))(v6, v2);
  }

  else
  {
    v13 = v61;

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v15 = (v9 + v14[10]);
    if (v15[1])
    {
      v16 = *v15;
      LOBYTE(v67[0]) = 2;
      sub_217752F48();
    }

    v17 = v13;
    v18 = v64;
    v19 = (v64 + v14[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v19) = *(v19 + 16);
    v67[48] = v20;
    v67[49] = v21;
    v68 = v19;
    v70 = 1;
    sub_21733ABF0();
    sub_217751DE8();
    sub_217752F88();

    v22 = sub_217751DC8();
    memcpy(v67, (v18 + v14[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v67) == 1)
    {
      v62 = v22;
    }

    else
    {

      v25 = sub_217751378();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_217751368();
      memcpy(v65, v67, sizeof(v65));
      sub_21733AC98();
      v28 = sub_217751358();
      v33 = v32;
      v60 = v6;
      v62 = v28;
      v34 = sub_217751348();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
      sub_217751308();

      sub_217275694(v62, v33);

      v62 = v65[0];
      v6 = v60;
      v17 = v13;
    }

    v65[3] = type metadata accessor for CloudPersonalRecommendation.Item();
    v65[4] = &protocol witness table for CloudPersonalRecommendation.Item;
    __swift_allocate_boxed_opaque_existential_0(v65);
    v23 = v64;
    sub_21733CAD0();
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    v24 = *(v23 + v14[12]);
    CloudPersonalRecommendation.Item.mergeAttributes(with:for:)();
    v60 = v29;
    v66 = v29;
    v69 = 3;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v31 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    v59 = v30;
    sub_217752F88();
    v58 = v31;

    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    CloudPersonalRecommendation.Item.mergeRelationships(with:for:)(*(v64 + v14[13]), v17, v37, v38, v39, v40, v41, v42, v58, v59);
    if (v43)
    {
      v60 = v43;
      v66 = v43;
      v69 = 4;
      sub_217752F88();
    }

    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    CloudPersonalRecommendation.Item.mergeAssociations(with:for:)(*(v64 + v14[14]), v17, v44, v45, v46, v47, v48, v49, v58, v59);
    if (v50)
    {
      v66 = v50;
      v69 = 5;
      sub_217752F88();
      v59 = v2;
      v60 = v6;
    }

    else
    {
      v59 = v2;
      v60 = v6;
    }

    v51 = v62;
    v52 = *(v64 + v14[15]);
    sub_217751DE8();
    sub_2174EB024(v51, v52);
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    CloudPersonalRecommendation.Item.mergeMetadata(with:for:)();
    v54 = v53;

    v55 = v63;
    if (v54)
    {
      v66 = v54;
      v69 = 6;
      v56 = v59;
      v57 = v60;
      sub_217752F88();
      (*(v55 + 8))(v57, v56);
    }

    else
    {
      (*(v63 + 8))(v60, v59);
    }

    return __swift_destroy_boxed_opaque_existential_1(v65);
  }
}

uint64_t sub_217326158(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258F8, &qword_21775D988);
  v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v64 - v5;
  v7 = a1[3];
  v66 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25900, &unk_21775D990);
  sub_21733CCD4(&qword_27CB25908, &qword_27CB25900, &unk_21775D990);
  v8 = v69;
  sub_2177532F8();
  v9 = v8[1];
  v73[0] = *v8;
  v73[1] = v9;
  LOBYTE(v70[0]) = 0;
  sub_2172E1B18();
  v10 = v68;
  sub_217752F88();
  if (v10)
  {
    return (*(v67 + 8))(v6, v2);
  }

  v68 = a1;
  v12 = v67;
  v13 = v8;
  if (v8[43])
  {
    v14 = v8[42];
    LOBYTE(v73[0]) = 2;
    sub_217752F48();
  }

  v15 = v8[40];
  v16 = *(v8 + 328);
  v73[48] = v8[39];
  v73[49] = v15;
  v74 = v16;
  __dst[159] = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v17 = sub_217751DC8();
  memcpy(v73, (v13 + 352), 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v73) != 1)
  {

    v21 = sub_217751378();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_217751368();
    memcpy(v70, v73, sizeof(v70));
    sub_21733AC98();
    v25 = sub_217751358();
    v27 = v26;
    v66 = v6;
    v28 = sub_217751348();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    sub_217751308();

    sub_217275694(v25, v27);

    v13 = v69;
    v17 = v70[0];
    v6 = v66;
  }

  sub_21733C5F0(v13, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!swift_dynamicCast())
  {
    memset(v71, 0, 40);
    sub_2171F0738(v71, &qword_27CB25588, &unk_21775D380);
    if (*(*(v13 + 736) + 16))
    {
      memcpy(__dst, (v13 + 16), 0x88uLL);
      v24 = v68;
      sub_2171FF30C(v68, v72);
      sub_21733C64C(__dst, v70);
      v32 = sub_2174D4658();
      v33 = sub_217751DE8();
      v70[0] = sub_2174D37FC(v33, v32);
      LOBYTE(v72[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      v13 = v69;
    }

    else
    {
      memcpy(v70, (v13 + 16), 0x88uLL);
      memcpy(v72, (v13 + 16), sizeof(v72));
      __dst[158] = 3;
      sub_21733C64C(v70, v71);
      sub_21733C798();
      sub_217752F88();
      v24 = v68;
      memcpy(v71, v72, 0x88uLL);
      sub_21733C7EC(v71);
    }

    sub_21726A630(v13 + 152, v72, &qword_27CB244B0, &unk_21776DB80);
    if (v72[2] == 1)
    {
      sub_2171F0738(v72, &qword_27CB244B0, &unk_21776DB80);
      v44 = *(v13 + 744);
      if (!*(v44 + 16))
      {
LABEL_27:
        v13 = v69;
LABEL_28:
        v45 = *(v13 + 280);
        v46 = *(v13 + 752);
        v47 = *(v46 + 16);
        if (v45)
        {
          if (v47)
          {
            v70[0] = v46;
            LOBYTE(v72[0]) = 5;
            sub_217751DE8();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            sub_217752F88();
          }
        }

        else if (v47)
        {
          sub_2171FF30C(v24, v70);
          v48 = sub_2174D5898(v70);
          v49 = sub_217751DE8();
          v70[0] = sub_2174D37FC(v49, v48);
          LOBYTE(v72[0]) = 5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
          sub_217752F88();
        }

        else
        {
          LOBYTE(v70[0]) = 5;
          sub_21733C6F0();
          sub_217752F88();
        }

        v50 = v69[95];
        v51 = *(v50 + 16);
        if (v69[38] == 1)
        {
          if (v51)
          {
            v52 = v69[95];
            sub_217751DE8();
            v70[0] = sub_2174EB024(v17, v50);
            LOBYTE(v72[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            sub_217752F88();
            (*(v12 + 8))(v6, v2);
          }

          else
          {
            if (*(v17 + 16))
            {
              v70[0] = v17;
              LOBYTE(v72[0]) = 6;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
              sub_217752F88();

              return (*(v12 + 8))(v6, v2);
            }

            (*(v12 + 8))(v6, v2);
          }
        }

        else
        {
          v64 = v69[38];
          v53 = v69[36];
          v54 = v69[37];
          if (v51)
          {
            v65 = v17;
            v66 = v6;
            sub_2171FF30C(v68, v70);
            v55 = v64;
            sub_21733C6A8(v53, v54, v64);
            sub_2172E1074(v53, v54, v55);
            v58 = sub_2174D6200(v53, v54, v55, v70);
            v59 = sub_217751DE8();
            v60 = sub_2175472EC(v59, v58);
            v70[0] = sub_2175472EC(v65, v60);
            LOBYTE(v72[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            v61 = v66;
            sub_217752F88();
            (*(v12 + 8))(v61, v2);
          }

          else
          {
            sub_2171FF30C(v68, v70);
            v56 = v64;
            sub_21733C6A8(v53, v54, v64);
            sub_2172E1074(v53, v54, v56);
            v57 = sub_2174D6200(v53, v54, v56, v70);
            v70[0] = sub_2174D37FC(v17, v57);
            LOBYTE(v72[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            sub_217752F88();
            (*(v12 + 8))(v6, v2);
          }

          sub_21733C6CC(v53, v54, v64);
        }
      }

      v70[0] = v44;
      LOBYTE(v72[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else
    {
      memcpy(v70, v72, 0x80uLL);
      if (!*(*(v13 + 744) + 16))
      {
        LOBYTE(v72[0]) = 4;
        sub_21733C744();
        sub_217752F88();
        sub_21728373C(v70);
        goto LABEL_28;
      }

      v72[0] = sub_217388B28();
      LOBYTE(v71[0]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_21728373C(v70);
    }

    goto LABEL_27;
  }

  v65 = v17;
  v66 = v6;
  v18 = v2;
  sub_2171F3F0C(v71, v72);
  v19 = v72[3];
  v20 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  v70[0] = (*(v20 + 48))(*(v13 + 736), v68, v19, v20);
  LOBYTE(v71[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v31 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
  sub_217752F88();
  v64 = v31;

  v34 = v72[3];
  v35 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  v36 = (*(v35 + 56))(v69[93], v68, v34, v35);
  if (v36)
  {
    v70[0] = v36;
    LOBYTE(v71[0]) = 4;
    sub_217752F88();
  }

  v37 = v72[3];
  v38 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  v39 = (*(v38 + 64))(v69[94], v68, v37, v38);
  if (v39)
  {
    v70[0] = v39;
    LOBYTE(v71[0]) = 5;
    sub_217752F88();
  }

  v40 = v69[95];
  sub_217751DE8();
  v41 = sub_2174EB024(v65, v40);
  v42 = v72[3];
  v43 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  v62 = (*(v43 + 72))(v41, v68, v42, v43);

  if (v62)
  {
    v70[0] = v62;
    LOBYTE(v71[0]) = 6;
    v63 = v66;
    sub_217752F88();
    (*(v12 + 8))(v63, v18);
  }

  else
  {
    (*(v12 + 8))(v66, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_217327354(void *a1)
{
  v86 = type metadata accessor for CloudMusicVideo(0);
  v2 = *(*(v86 - 1) + 64);
  MEMORY[0x28223BE20](v86, v3);
  v85 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25850, &qword_21775D900);
  v96 = *(v5 - 8);
  v6 = *(v96 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v80 - v8);
  v11 = a1[3];
  v10 = a1[4];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25858, &qword_21775D908);
  sub_21733CCD4(&qword_27CB25860, &qword_27CB25858, &qword_21775D908);
  v12 = v88;
  sub_2177532F8();
  v13 = v12[1];
  v91[0] = *v12;
  v91[1] = v13;
  LOBYTE(v90[0]) = 0;
  sub_2172E1B18();
  v14 = v87;
  sub_217752F88();
  if (v14)
  {
    return (*(v96 + 8))(v9, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v17 = (v12 + v16[10]);
  if (v17[1])
  {
    v18 = *v17;
    LOBYTE(v91[0]) = 2;
    sub_217752F48();
  }

  v19 = v12 + v16[9];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  v93 = v20;
  v94 = v21;
  v95 = v19;
  v92[391] = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v22 = sub_217751DC8();
  memcpy(v92, v12 + v16[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v92) != 1)
  {

    v29 = sub_217751378();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_217751368();
    memcpy(v91, v92, 0x180uLL);
    sub_21733AC98();
    v33 = sub_217751358();
    v82 = v32;
    v83 = v33;
    v87 = v37;
    v38 = sub_217751348();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    sub_217751308();

    sub_217275694(v83, v87);

    v22 = v91[0];
    v12 = v88;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v23 = v86;
  if (!swift_dynamicCast())
  {
    memset(v90, 0, 40);
    sub_2171F0738(v90, &qword_27CB25588, &unk_21775D380);
    v85 = v16;
    v34 = *(v12 + v16[12]);
    v35 = v12;
    if (*(v34 + 16))
    {
      v36 = sub_2173886A0(v12 + v23[5], v84, v34);
      v87 = v22;
      v91[0] = v36;
      LOBYTE(v90[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      v47 = v87;
      v48 = v96;
    }

    else
    {
      v87 = v22;
      LOBYTE(v91[0]) = 3;
      type metadata accessor for CloudMusicVideo.Attributes(0);
      sub_21733CDD0(&qword_27CB25878, type metadata accessor for CloudMusicVideo.Attributes);
      sub_217752F88();
      v48 = v96;
      v47 = v87;
    }

    sub_21726A630(v35 + v86[6], v90, &qword_27CB243A8, &unk_217777720);
    if (*&v90[1] == 1)
    {
      v87 = v47;
      sub_2171F0738(v90, &qword_27CB243A8, &unk_217777720);
      v49 = *(v35 + *(v85 + 52));
      if (!*(v49 + 16))
      {
        goto LABEL_25;
      }

      v91[0] = v49;
      LOBYTE(v90[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else
    {
      memcpy(v91, v90, sizeof(v91));
      if (!*(*(v35 + *(v85 + 52)) + 16))
      {
        v87 = v47;
        LOBYTE(v90[0]) = 4;
        sub_21733C4A8();
        sub_217752F88();
        sub_21726A3FC(v91);
        goto LABEL_25;
      }

      v50 = sub_217388950();
      v87 = v47;
      *&v90[0] = v50;
      v89 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_21726A3FC(v91);
    }

LABEL_25:
    v54 = v85;
    v55 = v88;
    sub_21726A630(v88 + v86[7], v90, &qword_27CB24A90, &unk_21775D5B0);
    if (*&v90[1] == 1)
    {
      sub_2171F0738(v90, &qword_27CB24A90, &unk_21775D5B0);
      v56 = *(v55 + *(v54 + 56));
      if (!*(v56 + 16))
      {
LABEL_34:
        v54 = v85;
LABEL_35:
        v61 = (v88 + v86[8]);
        if (v61[3] == 1)
        {
          v62 = *(v88 + *(v54 + 60));
          v63 = v87;
          if (*(v62 + 16))
          {
            v64 = *(v88 + *(v54 + 60));
            sub_217751DE8();
            v91[0] = sub_2174EB024(v63, v62);
            LOBYTE(v90[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            sub_217752F88();
            (*(v48 + 8))(v9, v5);
          }

          else
          {
            if (*(v87 + 16))
            {
              v91[0] = v87;
              LOBYTE(v90[0]) = 6;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
              sub_217752F88();

              return (*(v48 + 8))(v9, v5);
            }

            (*(v48 + 8))(v9, v5);
          }
        }

        else
        {
          v85 = v61[3];
          v65 = v54;
          v66 = *v61;
          v86 = v61[1];
          v67 = v61[2];
          if (*(*(v88 + *(v65 + 60)) + 16))
          {
            v81 = v5;
            sub_2171FF30C(v84, v91);
            v69 = v85;
            v68 = v86;
            sub_21733C3CC(v66, v86, v67, v85);
            sub_217221020(v66);
            sub_217751DE8();
            v88 = v67;
            v73 = sub_2174D5C54(v66, v68, v67 & 1, v69, v91);
            v67 = v88;
            v74 = sub_217751DE8();
            v75 = sub_2175472EC(v74, v73);
            v91[0] = sub_2175472EC(v87, v75);
            LOBYTE(v90[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            v76 = v81;
          }

          else
          {
            sub_2171FF30C(v84, v91);
            v71 = v85;
            v70 = v86;
            sub_21733C3CC(v66, v86, v67, v85);
            sub_217221020(v66);
            sub_217751DE8();
            v72 = sub_2174D5C54(v66, v70, v67 & 1, v71, v91);
            v76 = v5;
            v91[0] = sub_2174D37FC(v87, v72);
            LOBYTE(v90[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
          }

          sub_217752F88();
          (*(v48 + 8))(v9, v76);
          sub_21733C410(v66, v86, v67, v85);
        }
      }

      v91[0] = v56;
      LOBYTE(v90[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else
    {
      memcpy(v91, v90, 0x100uLL);
      if (!*(*(v55 + *(v54 + 56)) + 16))
      {
        LOBYTE(v90[0]) = 5;
        sub_21733C454();
        sub_217752F88();
        sub_2172844EC(v91);
        goto LABEL_35;
      }

      *&v90[0] = sub_217388CF8();
      v89 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_2172844EC(v91);
    }

    goto LABEL_34;
  }

  v86 = v9;
  v87 = v22;
  sub_2171F3F0C(v90, v91);
  v24 = v16;
  v25 = v12;
  v26 = v91[3];
  v27 = v91[4];
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  v28 = (*(v27 + 48))(*(v25 + *(v24 + 48)), v84, v26, v27);
  v85 = v24;
  *&v90[0] = v28;
  v89 = 3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v42 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
  sub_217752F88();
  v82 = v42;
  v83 = v41;

  v43 = v91[3];
  v44 = v91[4];
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  v45 = v85;
  v46 = (*(v44 + 56))(*(v88 + *(v85 + 52)), v84, v43, v44);
  if (v46)
  {
    *&v90[0] = v46;
    v89 = 4;
    sub_217752F88();
  }

  v51 = v91[3];
  v52 = v91[4];
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  v53 = (*(v52 + 64))(*(v88 + *(v45 + 56)), v84, v51, v52);
  if (v53)
  {
    *&v90[0] = v53;
    v89 = 5;
    sub_217752F88();
    v81 = v5;
  }

  else
  {
    v81 = v5;
  }

  v57 = *(v88 + *(v45 + 60));
  sub_217751DE8();
  v58 = sub_2174EB024(v87, v57);
  v59 = v91[3];
  v60 = v91[4];
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  v77 = (*(v60 + 72))(v58, v84, v59, v60);

  if (v77)
  {
    *&v90[0] = v77;
    v89 = 6;
    v78 = v81;
    v79 = v86;
    sub_217752F88();
    (*(v96 + 8))(v79, v78);
  }

  else
  {
    (*(v96 + 8))(v86, v81);
  }

  return __swift_destroy_boxed_opaque_existential_1(v91);
}

uint64_t sub_217328728(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258D8, &qword_21775D968);
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v53 - v5;
  v7 = a1[3];
  v8 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258E0, &qword_21775D970);
  v9 = v59;
  sub_21733CCD4(&qword_27CB258E8, &qword_27CB258E0, &qword_21775D970);
  sub_2177532F8();
  v62[0] = sub_2172E924C(type metadata accessor for CloudTrack);
  v62[1] = v10;
  LOBYTE(v60[0]) = 0;
  sub_2172E1B18();
  v11 = v57;
  sub_217752F88();
  if (v11)
  {

    return (*(v58 + 8))(v6, v2);
  }

  else
  {
    v13 = v56;

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v15 = (v9 + v14[10]);
    if (v15[1])
    {
      v16 = *v15;
      LOBYTE(v62[0]) = 2;
      sub_217752F48();
    }

    v17 = v13;
    v18 = v59;
    v19 = (v59 + v14[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v19) = *(v19 + 16);
    v62[48] = v20;
    v62[49] = v21;
    v63 = v19;
    v65 = 1;
    sub_21733ABF0();
    sub_217751DE8();
    sub_217752F88();

    v22 = sub_217751DC8();
    memcpy(v62, (v18 + v14[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v62) == 1)
    {
      v57 = v22;
    }

    else
    {

      v25 = sub_217751378();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_217751368();
      memcpy(v60, v62, sizeof(v60));
      sub_21733AC98();
      v28 = sub_217751358();
      v33 = v32;
      v55 = v6;
      v57 = v28;
      v34 = sub_217751348();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
      sub_217751308();

      sub_217275694(v57, v33);

      v57 = v60[0];
      v6 = v55;
      v17 = v13;
    }

    v60[3] = type metadata accessor for CloudTrack();
    v60[4] = &protocol witness table for CloudTrack;
    __swift_allocate_boxed_opaque_existential_0(v60);
    v23 = v59;
    sub_21733CAD0();
    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v24 = *(v23 + v14[12]);
    CloudTrack.mergeAttributes(with:for:)();
    v55 = v29;
    v61 = v29;
    v64 = 3;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v31 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    v54 = v30;
    sub_217752F88();
    v53 = v31;

    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v37 = *(v59 + v14[13]);
    CloudTrack.mergeRelationships(with:for:)();
    if (v38)
    {
      v55 = v38;
      v61 = v38;
      v64 = 4;
      sub_217752F88();
    }

    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    CloudTrack.mergeAssociations(with:for:)(*(v59 + v14[14]), v17, v39, v40, v41, v42, v43, v44, v53, v54);
    if (v45)
    {
      v61 = v45;
      v64 = 5;
      sub_217752F88();
      v54 = v2;
      v55 = v6;
    }

    else
    {
      v54 = v2;
      v55 = v6;
    }

    v46 = v57;
    v47 = *(v59 + v14[15]);
    sub_217751DE8();
    sub_2174EB024(v46, v47);
    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    CloudTrack.mergeMetadata(with:for:)();
    v49 = v48;

    v50 = v58;
    if (v49)
    {
      v61 = v49;
      v64 = 6;
      v51 = v54;
      v52 = v55;
      sub_217752F88();
      (*(v50 + 8))(v52, v51);
    }

    else
    {
      (*(v58 + 8))(v55, v54);
    }

    return __swift_destroy_boxed_opaque_existential_1(v60);
  }
}

uint64_t sub_217328F50(void *a1)
{
  v87 = type metadata accessor for CloudSong(0);
  v2 = *(*(v87 - 1) + 64);
  MEMORY[0x28223BE20](v87, v3);
  v86 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25710, &qword_21775D858);
  v101 = *(v5 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v81 - v8);
  v11 = a1[3];
  v10 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25718, &qword_21775D860);
  sub_21733CCD4(&qword_27CB25720, &qword_27CB25718, &qword_21775D860);
  v12 = v89;
  sub_2177532F8();
  v13 = v12[1];
  v92[0] = *v12;
  v92[1] = v13;
  LOBYTE(v91[0]) = 0;
  sub_2172E1B18();
  v14 = v88;
  sub_217752F88();
  if (v14)
  {
    return (*(v101 + 8))(v9, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v17 = (v12 + v16[10]);
  if (v17[1])
  {
    v18 = *v17;
    LOBYTE(v92[0]) = 2;
    sub_217752F48();
  }

  v19 = v12 + v16[9];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  v94 = v20;
  v95 = v21;
  v96 = v19;
  v93[391] = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v22 = sub_217751DC8();
  memcpy(v93, v12 + v16[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v93) != 1)
  {

    v29 = sub_217751378();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_217751368();
    memcpy(v92, v93, 0x180uLL);
    sub_21733AC98();
    v33 = sub_217751358();
    v83 = v32;
    v84 = v33;
    v88 = v36;
    v37 = sub_217751348();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    sub_217751308();

    sub_217275694(v84, v88);

    v22 = v92[0];
    v12 = v89;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v23 = v87;
  if (!swift_dynamicCast())
  {
    memset(v91, 0, 40);
    sub_2171F0738(v91, &qword_27CB25588, &unk_21775D380);
    v86 = v16;
    v34 = *(v12 + v16[12]);
    if (*(v34 + 16))
    {
      v35 = sub_21738864C(v12 + v23[5], v85, v34);
      v88 = v22;
      v92[0] = v35;
      LOBYTE(v91[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      v47 = v88;
      v48 = v101;
    }

    else
    {
      v88 = v22;
      LOBYTE(v92[0]) = 3;
      type metadata accessor for CloudSong.Attributes(0);
      sub_21733CDD0(&qword_27CB25738, type metadata accessor for CloudSong.Attributes);
      sub_217752F88();
      v48 = v101;
      v47 = v88;
    }

    sub_21726A630(v12 + v87[6], v91, &qword_27CB24A78, &qword_217759040);
    v49 = v86;
    if (*&v91[1] == 1)
    {
      v88 = v47;
      sub_2171F0738(v91, &qword_27CB24A78, &qword_217759040);
      v50 = *(v12 + *(v49 + 13));
      if (*(v50 + 16))
      {
        v92[0] = v50;
        LOBYTE(v91[0]) = 4;
        sub_217751DE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
        sub_217752F88();
      }

      v49 = v86;
    }

    else
    {
      memcpy(v92, v91, sizeof(v92));
      if (*(*(v12 + v86[13]) + 16))
      {
        sub_2173888E8();
        v88 = v47;
        *&v91[0] = v51;
        v90 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
        sub_217752F88();
        sub_217284234(v92);

        v49 = v86;
      }

      else
      {
        v88 = v47;
        LOBYTE(v91[0]) = 4;
        sub_21733C020();
        sub_217752F88();
        sub_217284234(v92);
      }

      v12 = v89;
    }

    v55 = *(v12 + *(v49 + 14));
    v56 = *(v55 + 16);
    if (*(v12 + v87[7]))
    {
      if (!v56)
      {
LABEL_34:
        v59 = (v12 + v87[8]);
        v60 = v59[3];
        if (v60 == 1)
        {
          v61 = *(v12 + v86[15]);
          if (*(v61 + 16))
          {
            v62 = *(v12 + v86[15]);
            sub_217751DE8();
            v92[0] = sub_2174EB024(v88, v61);
            LOBYTE(v91[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            sub_217752F88();
            (*(v48 + 8))(v9, v5);
          }

          else
          {
            if (*(v88 + 16))
            {
              v92[0] = v88;
              LOBYTE(v91[0]) = 6;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
              sub_217752F88();

              return (*(v48 + 8))(v9, v5);
            }

            (*(v48 + 8))(v9, v5);
          }
        }

        else
        {
          v64 = *v59;
          v63 = v59[1];
          v65 = v59[2];
          v66 = v59[4];
          v97[0] = *v59;
          v87 = v63;
          v97[1] = v63;
          v84 = v65;
          v98 = v65 & 1;
          v99 = v60;
          v100 = v66;
          v67 = *(v12 + v86[15]);
          v68 = v60;
          if (*(v67 + 16))
          {
            v82 = v5;
            sub_2171FF30C(v85, v92);
            sub_21733BF2C(v64, v87, v84, v68);
            sub_217221020(v64);
            sub_217751DE8();
            sub_217751DE8();
            v70 = sub_2174D5DD4(v97);
            v89 = v68;
            v71 = sub_217751DE8();
            v72 = sub_2175472EC(v71, v70);
            v92[0] = sub_2175472EC(v88, v72);
            LOBYTE(v91[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            v73 = v82;
          }

          else
          {
            sub_2171FF30C(v85, v92);
            sub_21733BF2C(v64, v87, v84, v68);
            sub_217221020(v64);
            sub_217751DE8();
            sub_217751DE8();
            v69 = sub_2174D5DD4(v97);
            v89 = v68;
            v73 = v5;
            v92[0] = sub_2174D37FC(v88, v69);
            LOBYTE(v91[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
          }

          sub_217752F88();
          (*(v48 + 8))(v9, v73);
          sub_21733BF7C(v64, v87, v84, v89);
        }
      }

      v92[0] = v55;
      LOBYTE(v91[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else
    {
      if (!v56)
      {
        LOBYTE(v92[0]) = 5;
        sub_21733BFCC();
        sub_217752F88();
        goto LABEL_34;
      }

      sub_2171FF30C(v85, v92);
      v57 = sub_2174D5760(v92);
      v58 = sub_217751DE8();
      v92[0] = sub_2174D37FC(v58, v57);
      LOBYTE(v91[0]) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    goto LABEL_34;
  }

  v87 = v9;
  v88 = v22;
  sub_2171F3F0C(v91, v92);
  v24 = v16;
  v25 = v12;
  v26 = v92[3];
  v27 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v28 = (*(v27 + 48))(*(v25 + v24[12]), v85, v26, v27);
  v86 = v24;
  *&v91[0] = v28;
  v90 = 3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v41 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
  sub_217752F88();
  v83 = v41;
  v84 = v40;

  v42 = v92[3];
  v43 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v44 = v86;
  v45 = (*(v43 + 56))(*(v89 + v86[13]), v85, v42, v43);
  v46 = v101;
  if (v45)
  {
    *&v91[0] = v45;
    v90 = 4;
    sub_217752F88();
  }

  v52 = v92[3];
  v53 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v54 = (*(v53 + 64))(*(v89 + *(v44 + 14)), v85, v52, v53);
  if (v54)
  {
    *&v91[0] = v54;
    v90 = 5;
    sub_217752F88();
    v82 = v5;
  }

  else
  {
    v82 = v5;
  }

  v74 = *(v89 + *(v44 + 15));
  sub_217751DE8();
  v75 = sub_2174EB024(v88, v74);
  v76 = v92[3];
  v77 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v78 = (*(v77 + 72))(v75, v85, v76, v77);

  if (v78)
  {
    *&v91[0] = v78;
    v90 = 6;
    v79 = v82;
    v80 = v87;
    sub_217752F88();
    (*(v46 + 8))(v80, v79);
  }

  else
  {
    (*(v46 + 8))(v87, v82);
  }

  return __swift_destroy_boxed_opaque_existential_1(v92);
}

uint64_t sub_21732A314(void *a1)
{
  v69 = type metadata accessor for CloudAlbum(0);
  v2 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v3);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25568, &qword_21775D368);
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v66 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25570, &qword_21775D370);
  sub_21733CCD4(qword_280BE4350, &qword_27CB25570, &qword_21775D370);
  v12 = v80;
  sub_2177532F8();
  v13 = v12[1];
  v75[0] = *v12;
  v75[1] = v13;
  LOBYTE(v74[0]) = 0;
  sub_2172E1B18();
  v14 = v71;
  sub_217752F88();
  if (v14)
  {
    return (*(v72 + 8))(v9, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v17 = (v12 + v16[10]);
  if (v17[1])
  {
    v18 = *v17;
    LOBYTE(v75[0]) = 2;
    sub_217752F48();
  }

  v19 = v12 + v16[9];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  v77 = v20;
  v78 = v21;
  v79 = v19;
  v76[391] = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v22 = sub_217751DC8();
  memcpy(v76, v12 + v16[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v76) != 1)
  {

    v29 = sub_217751378();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_217751368();
    memcpy(v75, v76, 0x180uLL);
    sub_21733AC98();
    v33 = sub_217751358();
    v67 = v32;
    v70 = v33;
    v71 = v36;
    v37 = sub_217751348();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    sub_217751308();

    sub_217275694(v70, v71);

    v22 = v75[0];
    v12 = v80;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v23 = v69;
  if (swift_dynamicCast())
  {
    v70 = v9;
    v71 = v22;
    sub_2171F3F0C(v74, v75);
    v24 = v16;
    v25 = v12;
    v26 = v75[3];
    v27 = v75[4];
    __swift_project_boxed_opaque_existential_1(v75, v75[3]);
    v28 = (*(v27 + 48))(*(v25 + v24[12]), v68, v26, v27);
    v67 = v24;
    *&v74[0] = v28;
    v73 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v40 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    v69 = v40;

    v41 = v75[3];
    v42 = v75[4];
    __swift_project_boxed_opaque_existential_1(v75, v75[3]);
    v43 = v67;
    v44 = (*(v42 + 56))(*(v80 + v67[13]), v68, v41, v42);
    if (v44)
    {
      *&v74[0] = v44;
      v73 = 4;
      sub_217752F88();
    }

    v45 = v75[3];
    v46 = v75[4];
    __swift_project_boxed_opaque_existential_1(v75, v75[3]);
    v47 = (*(v46 + 64))(*(v80 + v43[14]), v68, v45, v46);
    if (v47)
    {
      *&v74[0] = v47;
      v73 = 5;
      sub_217752F88();
      v66 = v5;
    }

    else
    {
      v66 = v5;
    }

    v52 = *(v80 + v43[15]);
    sub_217751DE8();
    v53 = sub_2174EB024(v71, v52);
    v54 = v75[3];
    v55 = v75[4];
    __swift_project_boxed_opaque_existential_1(v75, v75[3]);
    v63 = (*(v55 + 72))(v53, v68, v54, v55);

    if (v63)
    {
      *&v74[0] = v63;
      v73 = 6;
      v64 = v66;
      v65 = v70;
      sub_217752F88();
      (*(v72 + 8))(v65, v64);
    }

    else
    {
      (*(v72 + 8))(v70, v66);
    }

    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  memset(v74, 0, 40);
  sub_2171F0738(v74, &qword_27CB25588, &unk_21775D380);
  v67 = v16;
  v34 = *(v12 + v16[12]);
  if (*(v34 + 16))
  {
    v35 = sub_217388478(v12 + *(v23 + 20), v68, v34);
    v71 = v22;
    v75[0] = v35;
    LOBYTE(v74[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
  }

  else
  {
    v71 = v22;
    LOBYTE(v75[0]) = 3;
    type metadata accessor for CloudAlbum.Attributes(0);
    sub_21733CDD0(&qword_27CB252E0, type metadata accessor for CloudAlbum.Attributes);
    sub_217752F88();
  }

  v48 = v71;
  v49 = v69;
  sub_21726A630(v12 + *(v69 + 24), v74, &qword_27CB243C8, &unk_21775D390);
  if (*&v74[1] != 1)
  {
    memcpy(v75, v74, sizeof(v75));
    if (!*(*(v12 + v67[13]) + 16))
    {
      LOBYTE(v74[0]) = 4;
      sub_2172E1B6C();
      sub_217752F88();
      sub_21726A4EC(v75);
LABEL_25:
      v49 = v69;
      goto LABEL_26;
    }

    *&v74[0] = sub_217388868();
    v73 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    sub_21726A4EC(v75);
LABEL_24:

    goto LABEL_25;
  }

  sub_2171F0738(v74, &qword_27CB243C8, &unk_21775D390);
  if (*(*(v12 + v67[13]) + 16))
  {
    v75[0] = *(v12 + v67[13]);
    LOBYTE(v74[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    goto LABEL_24;
  }

LABEL_26:
  v50 = *(v49 + 28);
  v51 = v80;
  sub_21726A630(v80 + v50, v74, &qword_27CB24AA8, &qword_217759080);
  if (*&v74[1] == 1)
  {
    sub_2171F0738(v74, &qword_27CB24AA8, &qword_217759080);
    if (*(*(v51 + v67[14]) + 16))
    {
      v75[0] = *(v51 + v67[14]);
      LOBYTE(v74[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
LABEL_34:
    }
  }

  else
  {
    memcpy(v75, v74, 0x200uLL);
    if (*(*(v51 + v67[14]) + 16))
    {
      *&v74[0] = sub_217388C10();
      v73 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_2172845E8(v75);
      goto LABEL_34;
    }

    LOBYTE(v74[0]) = 5;
    sub_2172E1BC0();
    sub_217752F88();
    sub_2172845E8(v75);
  }

  v56 = v72;
  v57 = v80;
  sub_21726A630(v80 + *(v69 + 32), v74, &qword_27CB243C0, &unk_21775D3A0);
  if (*&v74[3] == 1)
  {
    sub_2171F0738(v74, &qword_27CB243C0, &unk_21775D3A0);
    v58 = *(v57 + v67[15]);
    if (*(v58 + 16))
    {
      v59 = *(v57 + v67[15]);
      sub_217751DE8();
      v75[0] = sub_2174EB024(v48, v58);
      LOBYTE(v74[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else if (*(v48 + 16))
    {
      v75[0] = v48;
      LOBYTE(v74[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      return (*(v56 + 8))(v9, v5);
    }
  }

  else
  {
    memcpy(v75, v74, 0x140uLL);
    v60 = *(v57 + v67[15]);
    if (*(v60 + 16))
    {
      v61 = sub_217331390(v75, v48, v68, v60, sub_2172E1A8C, sub_2174D5C0C);
    }

    else
    {
      v61 = sub_217388E48();
    }

    v62 = v61;

    *&v74[0] = v62;
    v73 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    sub_21726A498(v75);
  }

  (*(v56 + 8))(v9, v5);
}

uint64_t sub_21732B564(void *a1)
{
  v80 = type metadata accessor for CloudGenre(0);
  v2 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v3);
  v81 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25818, &qword_21775D8E0);
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v77 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25820, &qword_21775D8E8);
  sub_21733CCD4(&qword_27CB25828, &qword_27CB25820, &qword_21775D8E8);
  v12 = v92;
  sub_2177532F8();
  v13 = v12[1];
  v87[0] = *v12;
  v87[1] = v13;
  LOBYTE(v84[0]) = 0;
  sub_2172E1B18();
  v14 = v82;
  sub_217752F88();
  if (v14)
  {
    return (*(v83 + 8))(v9, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v17 = (v12 + v16[10]);
  if (v17[1])
  {
    v18 = *v17;
    LOBYTE(v87[0]) = 2;
    sub_217752F48();
  }

  v19 = v12 + v16[9];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  v89 = v20;
  v90 = v21;
  v91 = v19;
  v88 = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v22 = sub_217751DC8();
  memcpy(v87, v12 + v16[11], sizeof(v87));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v87) != 1)
  {

    v28 = sub_217751378();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_217751368();
    memcpy(v84, v87, sizeof(v84));
    sub_21733AC98();
    v32 = sub_217751358();
    v78 = v31;
    v81 = v16;
    v82 = v32;
    v37 = v36;
    v38 = sub_217751348();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    v77 = v37;
    sub_217751308();

    sub_217275694(v82, v77);

    v22 = v84[0];
    v16 = v81;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v23 = v80;
  if (swift_dynamicCast())
  {
    v82 = v22;
    v80 = v9;
    sub_2171F3F0C(v86, v84);
    v24 = v16;
    v25 = v84[3];
    v26 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v27 = (*(v26 + 48))(*(v12 + v24[12]), v79, v25, v26);
    v81 = v24;
    *&v86[0] = v27;
    v85 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v41 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    v78 = v41;

    v43 = v84[3];
    v44 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v45 = (*(v44 + 56))(*(v92 + v81[13]), v79, v43, v44);
    if (v45)
    {
      *&v86[0] = v45;
      v85 = 4;
      sub_217752F88();
    }

    v46 = v84[3];
    v47 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v48 = (*(v47 + 64))(*(v92 + v81[14]), v79, v46, v47);
    if (v48)
    {
      *&v86[0] = v48;
      v85 = 5;
      sub_217752F88();
      v77 = v5;
    }

    else
    {
      v77 = v5;
    }

    v58 = *(v92 + v81[15]);
    sub_217751DE8();
    v59 = sub_2174EB024(v82, v58);
    v60 = v84[3];
    v61 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v74 = (*(v61 + 72))(v59, v79, v60, v61);

    if (v74)
    {
      *&v86[0] = v74;
      v85 = 6;
      v75 = v77;
      v76 = v80;
      sub_217752F88();
      (*(v83 + 8))(v76, v75);
    }

    else
    {
      (*(v83 + 8))(v80, v77);
    }

    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  memset(v86, 0, 40);
  sub_2171F0738(v86, &qword_27CB25588, &unk_21775D380);
  v81 = v16;
  v33 = *(*(v12 + v16[12]) + 16);
  v34 = *(v23 + 20);
  if (v33)
  {
    v35 = v79;
    v42 = v22;
    v84[0] = sub_21738877C();
    LOBYTE(v86[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();

    v12 = v92;
  }

  else
  {
    v82 = v22;
    LOBYTE(v84[0]) = 3;
    type metadata accessor for CloudGenre.Attributes(0);
    sub_21733CDD0(&qword_27CB25840, type metadata accessor for CloudGenre.Attributes);
    sub_217752F88();
    v35 = v79;
    v42 = v82;
  }

  v49 = v80;
  sub_21726A630(v12 + *(v80 + 24), v86, &qword_27CB24AA0, &qword_21775D8F0);
  if (*&v86[1] == 1)
  {
    v82 = v42;
    sub_2171F0738(v86, &qword_27CB24AA0, &qword_21775D8F0);
    v50 = v81;
    v51 = *(v12 + v81[13]);
    if (!*(v51 + 16))
    {
      v12 = v92;
      goto LABEL_26;
    }

    v84[0] = v51;
    LOBYTE(v86[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();

    v12 = v92;
  }

  else
  {
    memcpy(v84, v86, 0x80uLL);
    if (*(*(v12 + v81[13]) + 16))
    {
      v52 = sub_217388AB8();
      v82 = v42;
      *&v86[0] = v52;
      v85 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_217284594(v84);

      v12 = v92;
    }

    else
    {
      v82 = v42;
      LOBYTE(v86[0]) = 4;
      sub_21733C378();
      sub_217752F88();
      sub_217284594(v84);
    }

    v50 = v81;
  }

  v49 = v80;
LABEL_26:
  v53 = *(v12 + *(v49 + 28));
  v54 = *(v12 + v50[14]);
  v55 = *(v54 + 16);
  if ((v53 & 1) == 0)
  {
    if (v55)
    {
      sub_2171FF30C(v35, v84);
      v56 = sub_2174D57C8(v84);
      v57 = sub_217751DE8();
      v84[0] = sub_2174D37FC(v57, v56);
      LOBYTE(v86[0]) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      v50 = v81;
    }

    else
    {
      LOBYTE(v84[0]) = 5;
      sub_21733C324();
      sub_217752F88();
    }

    goto LABEL_34;
  }

  if (v55)
  {
    v84[0] = v54;
    LOBYTE(v86[0]) = 5;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();

LABEL_34:
    v49 = v80;
  }

  v62 = *(v92 + *(v49 + 32));
  v63 = *(v92 + v50[15]);
  v64 = *(v63 + 16);
  if (v62 == 1)
  {
    v65 = v83;
    if (v64)
    {
      sub_217751DE8();
      v84[0] = sub_2174EB024(v82, v63);
      LOBYTE(v86[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else if (*(v82 + 16))
    {
      v84[0] = v82;
      LOBYTE(v86[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      return (*(v65 + 8))(v9, v5);
    }

    (*(v65 + 8))(v9, v5);
  }

  else
  {
    v66 = v83;
    if (v64)
    {
      sub_2171FF30C(v79, v84);
      sub_217221020(v62);
      v67 = sub_217751DE8();
      v68 = sub_2174D5F94(v67, v84);
      v69 = sub_217751DE8();
      v70 = sub_2175472EC(v69, v68);
      v71 = sub_2175472EC(v82, v70);
    }

    else
    {
      sub_2171FF30C(v79, v84);
      sub_217221020(v62);
      v72 = sub_217751DE8();
      v73 = sub_2174D5F94(v72, v84);
      v71 = sub_2174D37FC(v82, v73);
    }

    v84[0] = v71;
    LOBYTE(v86[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    (*(v66 + 8))(v9, v5);
    sub_217221010(v62);
  }
}