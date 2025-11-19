void *sub_21761EE2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v148 = a5;
  v120 = a4;
  v113 = a3;
  v14 = sub_217751968();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v118 = a1;
  v119 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 representedObjectResults];
  v117 = a2;
  v20 = sub_217751938();
  v21 = [v19 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADD0, &unk_217771C18);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v23 = v22;
  sub_21754240C(v22 + 96, v146, &qword_27CB2ADD8, &qword_217787230);
  if (v147)
  {
    v136[0] = *v146;
    v136[1] = *&v146[16];
    v136[2] = *&v146[32];
    *(&v136[2] + 9) = *&v146[41];
LABEL_22:
    sub_21729C6EC(v136, v139);
    *&v139[64] = v23;
    sub_21754240C(v139, v137, &unk_27CB2ADC0, &qword_21775A078);
    sub_21770B7EC();
    v81 = *(*a8 + 16);
    sub_21770BB1C(v81);
    sub_2171F0790(v139, &unk_27CB2ADC0, &qword_21775A078);
    sub_21729C748(v136);
    v82 = *a8;
    *(v82 + 16) = v81 + 1;
    return memcpy((v82 + 72 * v81 + 32), v137, 0x48uLL);
  }

  v107 = a6;
  v108 = a7;
  v109 = v23;
  v110 = a8;
  v112 = v146[0];
  v144[0] = *&v146[8];
  v144[1] = *&v146[24];
  v145[0] = *&v146[40];
  *(v145 + 9) = *&v146[49];
  sub_21754240C(v144, &v125, &qword_27CB245B8, &qword_217758AE0);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &qword_27CB245B8, &qword_217758AE0);
    v26 = 2;
  }

  else
  {
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    *(&v124[1] + 1) = &type metadata for MusicPlayer.Queue.Entry.Item;
    *&v124[2] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
    *&v124[0] = swift_allocObject();
    sub_21729C6EC(v136, *&v124[0] + 16);
    __swift_project_boxed_opaque_existential_1(v124, &type metadata for MusicPlayer.Queue.Entry.Item);
    MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
    v24 = *(&v123[1] + 1);
    v25 = *&v123[2];
    __swift_project_boxed_opaque_existential_1(v123, *(&v123[1] + 1));
    (*(v25 + 24))(v137, v24, v25);
    sub_21729C644(v123);
    memcpy(v139, v137, sizeof(v139));
    __swift_destroy_boxed_opaque_existential_1(v124);
    sub_21729C748(v136);
    sub_217269F50(v139);
    if (v139[272])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  sub_21754240C(v144, v136, &qword_27CB245B8, &qword_217758AE0);
  if (BYTE8(v136[3]) == 255)
  {
    sub_2171F0790(v136, &qword_27CB245B8, &qword_217758AE0);
    v137[0] = v112;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v139);
    v29 = *v139;
    v30 = *&v139[8];
    v31 = *&v139[16];
    v114 = *&v139[24];
    if (*v139)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v148 + 8))(&v140);
    v35 = v140;
    v34 = v141;
    v33 = v142;
    v32 = v143;
    goto LABEL_14;
  }

  *(&v126 + 1) = &type metadata for MusicPlayer.Queue.Entry.Item;
  v127[0] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
  *&v125 = swift_allocObject();
  sub_21729C6EC(v136, v125 + 16);
  __swift_project_boxed_opaque_existential_1(&v125, &type metadata for MusicPlayer.Queue.Entry.Item);
  MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
  v27 = *(&v124[1] + 1);
  v28 = *&v124[2];
  __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
  (*(v28 + 24))(v137, v27, v28);
  sub_21729C644(v124);
  memcpy(v139, v137, sizeof(v139));
  __swift_destroy_boxed_opaque_existential_1(&v125);
  sub_21729C748(v136);
  v29 = *&v139[288];
  v30 = *&v139[296];
  v31 = *&v139[304];
  v114 = *&v139[312];
  sub_217751DE8();
  sub_217269F50(v139);
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_11:
  v140 = v29;
  v141 = v30;
  v32 = v114;
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v142 = v31;
  v143 = v114;
LABEL_14:
  v111 = v8;
  *v137 = v35;
  *&v137[8] = v34;
  *&v137[16] = v33;
  *&v137[24] = v32;
  *&v136[0] = &unk_28295E4C8;
  LOBYTE(v125) = v26;
  v105 = v30;
  v106 = v29;
  v104 = v31;
  sub_2172AC64C(v29);
  v36 = swift_unknownObjectRetain();
  sub_2172B6904(v36, v137, v136, &v125, v139);
  sub_21754240C(v144, v138, &qword_27CB245B8, &qword_217758AE0);
  if (v138[56] == 255)
  {
    sub_2171F0790(v138, &qword_27CB245B8, &qword_217758AE0);
    v103 = v139[352];
    v101 = *&v139[320];
    v102 = *&v139[336];
    v99 = *&v139[288];
    v100 = *&v139[304];
    v98 = *&v139[312];
    v113 = *&v139[280];
    v67 = v139[272];
    v58 = *&v139[264];
    v96 = *&v139[232];
    v97 = *&v139[248];
    v94 = *&v139[200];
    v95 = *&v139[216];
    v92 = *&v139[168];
    v93 = *&v139[184];
    v90 = *&v139[136];
    v91 = *&v139[152];
    v88 = *&v139[104];
    v89 = *&v139[120];
    v86 = *&v139[72];
    v87 = *&v139[88];
    v84 = *&v139[40];
    v85 = *&v139[56];
    v41 = *&v139[16];
    v42 = *&v139[24];
    v43 = v139[32];
    v40 = *v139;
    v39 = *&v139[8];
    sub_217269EF4(v139, v137);
    v45 = v84;
    v44 = v85;
    v47 = v86;
    v46 = v87;
    v49 = v88;
    v48 = v89;
    v51 = v90;
    v50 = v91;
    v53 = v92;
    v52 = v93;
    v55 = v94;
    v54 = v95;
    v57 = v96;
    v56 = v97;
    v61 = v113;
    v59 = v67;
    v63 = v98;
    v65 = v101;
    v64 = v102;
    v62 = v100;
    v60 = v99;
    v66 = v103;
  }

  else
  {
    *(&v126 + 1) = &type metadata for MusicPlayer.Queue.Entry.Item;
    v127[0] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
    *&v125 = swift_allocObject();
    sub_21729C6EC(v138, v125 + 16);
    __swift_project_boxed_opaque_existential_1(&v125, &type metadata for MusicPlayer.Queue.Entry.Item);
    MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
    v37 = *(&v124[1] + 1);
    v38 = *&v124[2];
    __swift_project_boxed_opaque_existential_1(v124, *(&v124[1] + 1));
    (*(v38 + 24))(v137, v37, v38);
    sub_21729C644(v124);
    memcpy(v136, v137, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_21729C748(v138);
    memcpy(v124, v139, 0x161uLL);
    memcpy(v123, v136, 0x161uLL);
    v121 = v136[1];
    v122 = v136[2];
    sub_217269EF4(v139, v137);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v137, v124, sizeof(v137));
    sub_217269F50(v137);
    sub_217269F50(v136);
    v39 = *(&v125 + 1);
    v40 = v125;
    v42 = *(&v126 + 1);
    v41 = v126;
    v43 = v127[0];
    v44 = *&v127[3];
    v45 = *&v127[1];
    v46 = *&v127[7];
    v47 = *&v127[5];
    v48 = *&v127[11];
    v49 = *&v127[9];
    v50 = *&v127[15];
    v51 = *&v127[13];
    v52 = *&v127[19];
    v53 = *&v127[17];
    v54 = *&v127[23];
    v55 = *&v127[21];
    v56 = *&v127[27];
    v57 = *&v127[25];
    v58 = v127[29];
    v59 = v128;
    v60 = v130;
    v61 = v129;
    v62 = v131;
    v63 = v132;
    v65 = v133;
    v64 = v134;
    v66 = v135;
  }

  *v137 = v40;
  *&v137[8] = v39;
  *&v137[16] = v41;
  *&v137[24] = v42;
  v137[32] = v43;
  *&v137[40] = v45;
  *&v137[56] = v44;
  *&v137[72] = v47;
  *&v137[88] = v46;
  *&v137[104] = v49;
  *&v137[120] = v48;
  *&v137[136] = v51;
  *&v137[152] = v50;
  *&v137[168] = v53;
  *&v137[184] = v52;
  *&v137[200] = v55;
  *&v137[216] = v54;
  *&v137[232] = v57;
  *&v137[248] = v56;
  *&v137[264] = v58;
  v137[272] = v59;
  *&v137[288] = v60;
  *&v137[280] = v61;
  *&v137[304] = v62;
  *&v137[312] = v63;
  *&v137[320] = v65;
  *&v137[336] = v64;
  v137[352] = v66;
  memcpy(v136, v137, 0x161uLL);
  (*(v115 + 16))(v119, v117, v116);
  sub_217269EF4(v137, &v125);
  v68 = [v118 results];
  v69 = [v68 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v69;
  sub_21754240C(v144, &v125, &qword_27CB245B8, &qword_217758AE0);
  if (LOBYTE(v127[3]) == 255)
  {
    sub_2171F0790(&v125, &qword_27CB245B8, &qword_217758AE0);
    v70 = 0;
    v73 = 0;
    v72 = 0;
    *&v126 = 0;
    *(&v125 + 1) = 0;
  }

  else
  {
    v70 = swift_allocObject();
    v71 = v126;
    v70[1] = v125;
    v70[2] = v71;
    v70[3] = *v127;
    *(v70 + 57) = *(&v127[1] + 1);
    v72 = &protocol witness table for MusicPlayer.Queue.Entry.Item;
    v73 = &type metadata for MusicPlayer.Queue.Entry.Item;
  }

  v74 = v108;
  *&v125 = v70;
  *(&v126 + 1) = v73;
  v127[0] = v72;
  (*(v148 + 8))(v124);
  v123[0] = v124[0];
  v123[1] = v124[1];
  v138[0] = 2;
  v75 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v136[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v136[1] + 1) = v75;
  *&v136[0] = v78;
  LOBYTE(v125) = v112;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v79 = *(v74 + 24);
  v80 = v107;
  *(&v124[1] + 1) = v107;
  *&v124[2] = v74;
  __swift_allocate_boxed_opaque_existential_0(v124);

  v79(v136, v123, v80, v74);
  sub_21749A32C(v124, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v106);
    sub_217269F50(v139);
    sub_217269F50(v137);

    sub_2171F0790(v144, &qword_27CB245B8, &qword_217758AE0);
    v136[0] = v125;
    v136[1] = v126;
    v136[2] = *v127;
    *(&v136[2] + 9) = *(&v127[1] + 1);
    __swift_destroy_boxed_opaque_existential_1(v124);
    a8 = v110;
    v23 = v109;
    goto LABEL_22;
  }

  v126 = 0u;
  memset(v127, 0, 24);
  v125 = 0u;
  LOBYTE(v127[3]) = -1;
  sub_2171F0790(&v125, &qword_27CB245B8, &qword_217758AE0);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21761FAE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = a6;
  v157 = a5;
  v126 = a4;
  v13 = sub_217751968();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = a1;
  v124 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 representedObjectResults];
  v122 = a2;
  v19 = sub_217751938();
  v20 = [v18 itemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C10, &qword_217787560);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v22 = v21;
  sub_21754240C(v21 + 88, v154, &unk_27CB2AF90, &qword_217787568);
  if (v156)
  {
    *v143 = *v154;
    *&v143[16] = *&v154[16];
    *&v143[32] = *&v154[32];
    *&v143[48] = *&v154[48];
LABEL_22:
    sub_217283D6C(v143, v147);
    *&v147[56] = v22;
    sub_21754240C(v147, v144, &qword_27CB24E98, &qword_217787540);
    sub_21770B804();
    v83 = *(*a8 + 16);
    sub_21770BB34(v83);
    sub_2171F0790(v147, &qword_27CB24E98, &qword_217787540);
    result = sub_217283DC8(v143);
    v85 = *a8;
    *(v85 + 16) = v83 + 1;
    v86 = (v85 + (v83 << 6));
    v87 = *v144;
    v88 = *&v144[16];
    v89 = *&v144[48];
    v86[4] = *&v144[32];
    v86[5] = v89;
    v86[2] = v87;
    v86[3] = v88;
    return result;
  }

  v114 = a7;
  v115 = v22;
  v116 = a8;
  v23 = v154[0];
  v152[0] = *&v154[8];
  v152[1] = *&v154[24];
  v152[2] = *&v154[40];
  v153 = v155;
  sub_21754240C(v152, &v132, &unk_27CB2AF80, &qword_217758C30);
  if (*(&v132 + 1))
  {
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    *(&v131[1] + 1) = &type metadata for Station;
    *&v131[2] = &protocol witness table for Station;
    *&v131[0] = swift_allocObject();
    sub_217283D6C(v143, *&v131[0] + 16);
    v24 = __swift_project_boxed_opaque_existential_1(v131, &type metadata for Station);
    sub_21729C5E8((v24 + 2), v130);
    v25 = *(&v130[1] + 1);
    v26 = *&v130[2];
    __swift_project_boxed_opaque_existential_1(v130, *(&v130[1] + 1));
    (*(v26 + 24))(v144, v25, v26);
    sub_21729C644(v130);
    memcpy(v147, v144, sizeof(v147));
    __swift_destroy_boxed_opaque_existential_1(v131);
    sub_217283DC8(v143);
    sub_217269F50(v147);
    if (v147[272])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB2AF80, &qword_217758C30);
    v27 = 2;
  }

  sub_21754240C(v152, v143, &unk_27CB2AF80, &qword_217758C30);
  if (!*&v143[8])
  {
    sub_2171F0790(v143, &unk_27CB2AF80, &qword_217758C30);
    v144[0] = v23;
    _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v147);
    v31 = *v147;
    v32 = *&v147[8];
    v118 = *&v147[24];
    v119 = *&v147[16];
    if (*v147)
    {
      goto LABEL_11;
    }

LABEL_13:
    (*(v157 + 8))(&v148);
    v36 = v148;
    v35 = v149;
    v34 = v150;
    v33 = v151;
    goto LABEL_14;
  }

  *(&v133 + 1) = &type metadata for Station;
  v134[0] = &protocol witness table for Station;
  *&v132 = swift_allocObject();
  sub_217283D6C(v143, v132 + 16);
  v28 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Station);
  sub_21729C5E8((v28 + 2), v131);
  v29 = *(&v131[1] + 1);
  v30 = *&v131[2];
  __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
  (*(v30 + 24))(v144, v29, v30);
  sub_21729C644(v131);
  memcpy(v147, v144, sizeof(v147));
  __swift_destroy_boxed_opaque_existential_1(&v132);
  sub_217283DC8(v143);
  v31 = *&v147[288];
  v32 = *&v147[296];
  v118 = *&v147[312];
  v119 = *&v147[304];
  sub_217751DE8();
  sub_217269F50(v147);
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_11:
  v148 = v31;
  v149 = v32;
  v33 = v118;
  v34 = v119;
  v35 = v32;
  v36 = v31;
  v150 = v119;
  v151 = v118;
LABEL_14:
  v113 = v23;
  v117 = v8;
  *v144 = v36;
  *&v144[8] = v35;
  *&v144[16] = v34;
  *&v144[24] = v33;
  *v143 = &unk_28295E508;
  LOBYTE(v132) = v27;
  v111 = v32;
  v112 = v31;
  sub_2172AC64C(v31);
  v37 = swift_unknownObjectRetain();
  sub_2172B6904(v37, v144, v143, &v132, v147);
  sub_21754240C(v152, v145, &unk_27CB2AF80, &qword_217758C30);
  if (v146)
  {
    *(&v133 + 1) = &type metadata for Station;
    v134[0] = &protocol witness table for Station;
    *&v132 = swift_allocObject();
    sub_217283D6C(v145, v132 + 16);
    v38 = __swift_project_boxed_opaque_existential_1(&v132, &type metadata for Station);
    sub_21729C5E8((v38 + 2), v131);
    v39 = *(&v131[1] + 1);
    v40 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    (*(v40 + 24))(v144, v39, v40);
    sub_21729C644(v131);
    memcpy(v143, v144, sizeof(v143));
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_217283DC8(v145);
    memcpy(v131, v147, 0x161uLL);
    memcpy(v130, v143, 0x161uLL);
    v127 = *&v143[16];
    v128 = *&v143[24];
    v129 = v143[32];
    sub_217269EF4(v147, v144);
    sub_217751DE8();
    sub_2174FC7B8();

    memcpy(v144, v131, sizeof(v144));
    sub_217269F50(v144);
    sub_217269F50(v143);
    v41 = *(&v132 + 1);
    v42 = v132;
    v44 = *(&v133 + 1);
    v43 = v133;
    v45 = v134[0];
    v46 = *&v134[3];
    v47 = *&v134[1];
    v48 = *&v134[7];
    v49 = *&v134[5];
    v50 = *&v134[11];
    v51 = *&v134[9];
    v52 = *&v134[15];
    v53 = *&v134[13];
    v54 = *&v134[19];
    v55 = *&v134[17];
    v56 = *&v134[23];
    v57 = *&v134[21];
    v58 = *&v134[27];
    v59 = *&v134[25];
    v60 = v134[29];
    v61 = v135;
    v62 = v137;
    v63 = v136;
    v64 = v138;
    v65 = v139;
    v67 = v140;
    v66 = v141;
    v68 = v142;
  }

  else
  {
    sub_2171F0790(v145, &unk_27CB2AF80, &qword_217758C30);
    v110 = v147[352];
    v108 = *&v147[336];
    v105 = *&v147[288];
    v106 = *&v147[320];
    v107 = *&v147[304];
    v104 = *&v147[312];
    v109 = *&v147[280];
    v69 = v147[272];
    v60 = *&v147[264];
    v102 = *&v147[232];
    v103 = *&v147[248];
    v100 = *&v147[200];
    v101 = *&v147[216];
    v98 = *&v147[168];
    v99 = *&v147[184];
    v96 = *&v147[136];
    v97 = *&v147[152];
    v94 = *&v147[104];
    v95 = *&v147[120];
    v92 = *&v147[72];
    v93 = *&v147[88];
    v90 = *&v147[40];
    v91 = *&v147[56];
    v43 = *&v147[16];
    v44 = *&v147[24];
    v45 = v147[32];
    v42 = *v147;
    v41 = *&v147[8];
    sub_217269EF4(v147, v144);
    v47 = v90;
    v46 = v91;
    v49 = v92;
    v48 = v93;
    v51 = v94;
    v50 = v95;
    v53 = v96;
    v52 = v97;
    v55 = v98;
    v54 = v99;
    v57 = v100;
    v56 = v101;
    v59 = v102;
    v58 = v103;
    v63 = v109;
    v65 = v104;
    v61 = v69;
    v62 = v105;
    v67 = v106;
    v64 = v107;
    v66 = v108;
    v68 = v110;
  }

  *v144 = v42;
  *&v144[8] = v41;
  *&v144[16] = v43;
  *&v144[24] = v44;
  v144[32] = v45;
  *&v144[40] = v47;
  *&v144[56] = v46;
  *&v144[72] = v49;
  *&v144[88] = v48;
  *&v144[104] = v51;
  *&v144[120] = v50;
  *&v144[136] = v53;
  *&v144[152] = v52;
  *&v144[168] = v55;
  *&v144[184] = v54;
  *&v144[200] = v57;
  *&v144[216] = v56;
  *&v144[232] = v59;
  *&v144[248] = v58;
  *&v144[264] = v60;
  v144[272] = v61;
  *&v144[280] = v63;
  *&v144[288] = v62;
  *&v144[304] = v64;
  *&v144[312] = v65;
  *&v144[320] = v67;
  *&v144[336] = v66;
  v144[352] = v68;
  memcpy(v143, v144, sizeof(v143));
  (*(v120 + 16))(v124, v122, v121);
  sub_217269EF4(v144, &v132);
  v70 = [v123 results];
  v71 = [v70 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v71;
  sub_21754240C(v152, &v132, &unk_27CB2AF80, &qword_217758C30);
  if (*(&v132 + 1))
  {
    v72 = swift_allocObject();
    v73 = v133;
    *(v72 + 16) = v132;
    *(v72 + 32) = v73;
    *(v72 + 48) = *v134;
    *(v72 + 64) = v134[2];
    v74 = &protocol witness table for Station;
    v75 = &type metadata for Station;
  }

  else
  {
    sub_2171F0790(&v132, &unk_27CB2AF80, &qword_217758C30);
    v72 = 0;
    v75 = 0;
    v74 = 0;
    *&v133 = 0;
    *(&v132 + 1) = 0;
  }

  v76 = v114;
  *&v132 = v72;
  *(&v133 + 1) = v75;
  v134[0] = v74;
  (*(v157 + 8))(v131);
  v130[0] = v131[0];
  v130[1] = v131[1];
  v145[0] = 2;
  v77 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v143[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v143[24] = v77;
  *v143 = v80;
  LOBYTE(v132) = v113;
  _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
  v81 = *(v76 + 24);
  v82 = v125;
  *(&v131[1] + 1) = v125;
  *&v131[2] = v76;
  __swift_allocate_boxed_opaque_existential_0(v131);

  v81(v143, v130, v82, v76);
  sub_21749A32C(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_2172AC65C(v112);
    sub_217269F50(v147);
    sub_217269F50(v144);

    sub_2171F0790(v152, &unk_27CB2AF80, &qword_217758C30);
    *v143 = v132;
    *&v143[16] = v133;
    *&v143[32] = *v134;
    *&v143[48] = v134[2];
    __swift_destroy_boxed_opaque_existential_1(v131);
    a8 = v116;
    v22 = v115;
    goto LABEL_22;
  }

  v133 = 0u;
  memset(v134, 0, 24);
  v132 = 0u;
  sub_2171F0790(&v132, &unk_27CB2AF80, &qword_217758C30);
LABEL_25:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217620780@<X0>(char *a1@<X8>)
{
  v21 = &type metadata for Playlist.Entry.Item;
  v22 = &protocol witness table for Playlist.Entry.Item;
  OUTLINED_FUNCTION_203_0();
  v20[0] = swift_allocObject();
  v2 = OUTLINED_FUNCTION_788();
  sub_21729C79C(v2, v3);
  __swift_project_boxed_opaque_existential_1(v20, &type metadata for Playlist.Entry.Item);
  OUTLINED_FUNCTION_207_5();
  Playlist.Entry.Item.innerItem.getter();
  v4 = OUTLINED_FUNCTION_92_15(&v17);
  OUTLINED_FUNCTION_348_0(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_279_0();
  if (v8)
  {
    OUTLINED_FUNCTION_130_12(v8, v9);
    v10();
    v11 = v18;
    v12 = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v13 = sub_21759E240();
    OUTLINED_FUNCTION_814(v13);
    if (v14)
    {
      OUTLINED_FUNCTION_215_6();
      OUTLINED_FUNCTION_267_0();
      if (v11)
      {
        result = OUTLINED_FUNCTION_269_0();
LABEL_7:
        *a1 = v12;
        return result;
      }
    }

    else
    {
    }

    v12 = 10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_209_4();
  v16 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v16);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  OUTLINED_FUNCTION_207_5();
  Playlist.Entry.Item.innerItem.getter();
  OUTLINED_FUNCTION_128_13(&v17);
  OUTLINED_FUNCTION_80_11(&v17);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  result = OUTLINED_FUNCTION_5_14();
  __break(1u);
  return result;
}

uint64_t sub_2176208FC@<X0>(char *a1@<X8>)
{
  v15 = &type metadata for RecentlyPlayedMusicItem;
  v16 = &protocol witness table for RecentlyPlayedMusicItem;
  v14[0] = swift_allocObject();
  sub_21733C220(v1, v14[0] + 16);
  __swift_project_boxed_opaque_existential_1(v14, &type metadata for RecentlyPlayedMusicItem);
  RecentlyPlayedMusicItem.innerItem.getter(v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (dynamic_cast_existential_1_conditional(DynamicType))
  {
    (*(v4 + 8))(v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v5 = sub_21759E240();
    if (*(v5 + 16))
    {
      v6 = sub_217632574();
      v8 = v7;

      if (v8)
      {
        v9 = *(*(v5 + 56) + v6);

LABEL_7:
        *a1 = v9;
        return result;
      }
    }

    else
    {
    }

    v9 = 10;
    goto LABEL_7;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  RecentlyPlayedMusicItem.innerItem.getter(v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v11 = sub_217753348();
  MEMORY[0x21CEA23B0](v11);

  MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217620B58@<X0>(char *a1@<X8>)
{
  v23 = &type metadata for MusicCatalogSearchResponse.TopResult;
  v24 = &protocol witness table for MusicCatalogSearchResponse.TopResult;
  OUTLINED_FUNCTION_203_0();
  v22[0] = swift_allocObject();
  v2 = OUTLINED_FUNCTION_788();
  sub_217283E1C(v2, v3);
  __swift_project_boxed_opaque_existential_1(v22, &type metadata for MusicCatalogSearchResponse.TopResult);
  OUTLINED_FUNCTION_207_5();
  MusicCatalogSearchResponse.TopResult.innerItem.getter(v4);
  v5 = OUTLINED_FUNCTION_92_15(&v19);
  OUTLINED_FUNCTION_348_0(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_279_0();
  if (v9)
  {
    OUTLINED_FUNCTION_130_12(v9, v10);
    v11();
    v12 = v20;
    v13 = v21;
    __swift_destroy_boxed_opaque_existential_1(v22);
    v14 = sub_21759E240();
    OUTLINED_FUNCTION_814(v14);
    if (v15)
    {
      OUTLINED_FUNCTION_215_6();
      OUTLINED_FUNCTION_267_0();
      if (v12)
      {
        result = OUTLINED_FUNCTION_269_0();
LABEL_7:
        *a1 = v13;
        return result;
      }
    }

    else
    {
    }

    v13 = 10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_209_4();
  v17 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v17);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  OUTLINED_FUNCTION_207_5();
  MusicCatalogSearchResponse.TopResult.innerItem.getter(v18);
  OUTLINED_FUNCTION_128_13(&v19);
  OUTLINED_FUNCTION_80_11(&v19);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  result = OUTLINED_FUNCTION_5_14();
  __break(1u);
  return result;
}

void sub_217620CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_217283AFC(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BEB230 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BEB238);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

void sub_217620EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_217283C68(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE5130 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE5138);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

void sub_217621084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_217284338(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE23C0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE23C8);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

void sub_21762125C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_2172757C0(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE84D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE84E0);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

void sub_217621434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_217283BAC(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE7F40 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE7F48);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

void sub_21762160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_217284288(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE7660 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE7668);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

void sub_2176217E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_21725CF68(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE2A18 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE2A20);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

void sub_2176219BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_21725CF0C(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE85B8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE85C0);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

uint64_t sub_217621B94@<X0>(char *a1@<X8>)
{
  v23 = &type metadata for MusicPersonalRecommendation.Item;
  v24 = &protocol witness table for MusicPersonalRecommendation.Item;
  OUTLINED_FUNCTION_203_0();
  v22[0] = swift_allocObject();
  v2 = OUTLINED_FUNCTION_788();
  sub_217283ECC(v2, v3);
  __swift_project_boxed_opaque_existential_1(v22, &type metadata for MusicPersonalRecommendation.Item);
  OUTLINED_FUNCTION_207_5();
  MusicPersonalRecommendation.Item.innerItem.getter(v4);
  v5 = OUTLINED_FUNCTION_92_15(&v19);
  OUTLINED_FUNCTION_348_0(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_279_0();
  if (v9)
  {
    OUTLINED_FUNCTION_130_12(v9, v10);
    v11();
    v12 = v20;
    v13 = v21;
    __swift_destroy_boxed_opaque_existential_1(v22);
    v14 = sub_21759E240();
    OUTLINED_FUNCTION_814(v14);
    if (v15)
    {
      OUTLINED_FUNCTION_215_6();
      OUTLINED_FUNCTION_267_0();
      if (v12)
      {
        result = OUTLINED_FUNCTION_269_0();
LABEL_7:
        *a1 = v13;
        return result;
      }
    }

    else
    {
    }

    v13 = 10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_209_4();
  v17 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v17);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  OUTLINED_FUNCTION_207_5();
  MusicPersonalRecommendation.Item.innerItem.getter(v18);
  OUTLINED_FUNCTION_128_13(&v19);
  OUTLINED_FUNCTION_80_11(&v19);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  result = OUTLINED_FUNCTION_5_14();
  __break(1u);
  return result;
}

void sub_217621D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_217284130(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE2A80 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE2A88);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

uint64_t sub_217621EE8@<X0>(char *a1@<X8>)
{
  v21 = &type metadata for Track;
  v22 = &protocol witness table for Track;
  OUTLINED_FUNCTION_203_0();
  v20[0] = swift_allocObject();
  v2 = OUTLINED_FUNCTION_788();
  sub_217275710(v2, v3);
  __swift_project_boxed_opaque_existential_1(v20, &type metadata for Track);
  OUTLINED_FUNCTION_207_5();
  Track.innerItem.getter();
  v4 = OUTLINED_FUNCTION_92_15(&v17);
  OUTLINED_FUNCTION_348_0(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_279_0();
  if (v8)
  {
    OUTLINED_FUNCTION_130_12(v8, v9);
    v10();
    v11 = v18;
    v12 = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v13 = sub_21759E240();
    OUTLINED_FUNCTION_814(v13);
    if (v14)
    {
      OUTLINED_FUNCTION_215_6();
      OUTLINED_FUNCTION_267_0();
      if (v11)
      {
        result = OUTLINED_FUNCTION_269_0();
LABEL_7:
        *a1 = v12;
        return result;
      }
    }

    else
    {
    }

    v12 = 10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_209_4();
  v16 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v16);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  OUTLINED_FUNCTION_207_5();
  Track.innerItem.getter();
  OUTLINED_FUNCTION_128_13(&v17);
  OUTLINED_FUNCTION_80_11(&v17);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  result = OUTLINED_FUNCTION_5_14();
  __break(1u);
  return result;
}

uint64_t sub_217622064@<X0>(char *a1@<X8>)
{
  v21 = &type metadata for MusicPlayer.Queue.Entry.Item;
  v22 = &protocol witness table for MusicPlayer.Queue.Entry.Item;
  OUTLINED_FUNCTION_203_0();
  v20[0] = swift_allocObject();
  v2 = OUTLINED_FUNCTION_788();
  sub_21729C6EC(v2, v3);
  __swift_project_boxed_opaque_existential_1(v20, &type metadata for MusicPlayer.Queue.Entry.Item);
  OUTLINED_FUNCTION_207_5();
  MusicPlayer.Queue.Entry.Item.innerItem.getter();
  v4 = OUTLINED_FUNCTION_92_15(&v17);
  OUTLINED_FUNCTION_348_0(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_279_0();
  if (v8)
  {
    OUTLINED_FUNCTION_130_12(v8, v9);
    v10();
    v11 = v18;
    v12 = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v13 = sub_21759E240();
    OUTLINED_FUNCTION_814(v13);
    if (v14)
    {
      OUTLINED_FUNCTION_215_6();
      OUTLINED_FUNCTION_267_0();
      if (v11)
      {
        result = OUTLINED_FUNCTION_269_0();
LABEL_7:
        *a1 = v12;
        return result;
      }
    }

    else
    {
    }

    v12 = 10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_209_4();
  v16 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v16);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  OUTLINED_FUNCTION_207_5();
  MusicPlayer.Queue.Entry.Item.innerItem.getter();
  OUTLINED_FUNCTION_128_13(&v17);
  OUTLINED_FUNCTION_80_11(&v17);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  result = OUTLINED_FUNCTION_5_14();
  __break(1u);
  return result;
}

void sub_2176221E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_357();
  a33 = v37;
  a34 = v38;
  v39 = OUTLINED_FUNCTION_114_10();
  sub_217283D6C(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!OUTLINED_FUNCTION_218_4())
  {
    OUTLINED_FUNCTION_120_11();
    sub_2171F0790(&a11, &qword_27CB2AC98, &qword_217786EF0);
    if (qword_280BE26C0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_216_6(&xmmword_280BE26C8);
LABEL_7:
    v47 = sub_21759E240();
    OUTLINED_FUNCTION_237_3(v47);
    if (v48)
    {
      OUTLINED_FUNCTION_77_15();
      OUTLINED_FUNCTION_196_8();
      if (v36)
      {
        OUTLINED_FUNCTION_197_6();
LABEL_12:
        *v34 = v35;
        OUTLINED_FUNCTION_355_0();
        return;
      }
    }

    else
    {
    }

    v35 = 10;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_49(&a11);
  v41 = OUTLINED_FUNCTION_116_14();
  v42(v41);
  v35 = a18;
  OUTLINED_FUNCTION_92_15(&a16);
  OUTLINED_FUNCTION_238_2();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v44 = OUTLINED_FUNCTION_279_0();
  if (v44)
  {
    OUTLINED_FUNCTION_28_43(v44, v45);
    v46();
    OUTLINED_FUNCTION_217_6();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_135_10();
  a11 = a16;
  v49 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CEA23B0](v49);
  v50 = a25;
  __swift_project_boxed_opaque_existential_1(&a22, a25);
  OUTLINED_FUNCTION_21_43();
  v51(v50);
  OUTLINED_FUNCTION_128_13(&a16);
  OUTLINED_FUNCTION_80_11(&a16);
  sub_217753348();
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_69_17();
  OUTLINED_FUNCTION_44_26();
  OUTLINED_FUNCTION_5_14();
  __break(1u);
}

uint64_t MusicItem._libraryMappingItemKind.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, v2);
  OUTLINED_FUNCTION_28_19();
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_117_2();
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  OUTLINED_FUNCTION_80_3();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_18_49(v28);
    v10(v28, a1);
    OUTLINED_FUNCTION_92_15(v28);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v11 = OUTLINED_FUNCTION_279_0();
    if (v11)
    {
      OUTLINED_FUNCTION_243_1(v11, v12);
      v13();
      v15 = BYTE8(v28[0]);
      v14 = v28[0];
      __swift_destroy_boxed_opaque_existential_1(&v30);
      goto LABEL_6;
    }

    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    v20 = OUTLINED_FUNCTION_8();
    MEMORY[0x21CEA23B0](v20);
    v21 = v32;
    v22 = v33;
    v23 = __swift_project_boxed_opaque_existential_1(&v30, v32);
    OUTLINED_FUNCTION_243_1(v23, *(v22 + 8));
    v24(v21);
    OUTLINED_FUNCTION_128_13(v28);
    OUTLINED_FUNCTION_80_11(v28);
    v25 = sub_217753348();
    MEMORY[0x21CEA23B0](v25);

    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL);
  }

  else
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_2171F0790(v28, &qword_27CB2AC98, &qword_217786EF0);
    if (dynamic_cast_existential_1_conditional(a1))
    {
      (*(v16 + 8))(&v30);
      v14 = v30;
      v15 = v31;
LABEL_6:
      v17 = sub_21759E240();
      OUTLINED_FUNCTION_237_3(v17);
      if (v18)
      {
        OUTLINED_FUNCTION_77_15();
        OUTLINED_FUNCTION_196_8();
        if (v15)
        {
          result = OUTLINED_FUNCTION_197_6();
LABEL_11:
          *a2 = v14;
          return result;
        }
      }

      else
      {
      }

      v14 = 10;
      goto LABEL_11;
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    sub_217752AA8();
    v26 = OUTLINED_FUNCTION_8();
    MEMORY[0x21CEA23B0](v26);
    v27 = sub_217753348();
    MEMORY[0x21CEA23B0](v27);

    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL);
  }

  result = OUTLINED_FUNCTION_5_14();
  __break(1u);
  return result;
}

void sub_2176226D8(uint64_t a1, void *a2)
{
  v4 = sub_217204DD0(a1);
  v5 = 0;
  v28 = a1 & 0xC000000000000001;
  v18 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if (v28)
    {
      v6 = MEMORY[0x21CEA2E30](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v26 = 0uLL;
    v27 = 0uLL;
    v25 = 0uLL;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    (*(v9 + 16))(&v19, v6, v8, v9);
    if (!*(&v20 + 1))
    {
      sub_2171F0790(&v19, &qword_27CB2AD40, &qword_2177583F0);
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
LABEL_13:
      sub_2171F0790(&v22, &qword_27CB2AD48, &qword_217787158);

      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD58, &qword_217787168);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_13;
    }

    if (!*(&v23 + 1))
    {
      goto LABEL_13;
    }

    sub_2171F0790(&v25, &qword_27CB2AD50, &qword_217787160);
    sub_2171F3F0C(&v22, &v19);
    *&v25 = v6;
    sub_2171F3F0C(&v19, &v25 + 8);
LABEL_14:
    if (v25)
    {
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v10 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v18 + 16);
        sub_2172B0B30();
        v10 = v16;
      }

      v11 = *(v10 + 16);
      if (v11 >= *(v10 + 24) >> 1)
      {
        sub_2172B0B30();
        v10 = v17;
      }

      *(v10 + 16) = v11 + 1;
      v18 = v10;
      v12 = (v10 + 48 * v11);
      v13 = v19;
      v14 = v21;
      v12[3] = v20;
      v12[4] = v14;
      v12[2] = v13;
      v5 = v7;
    }

    else
    {
      sub_2171F0790(&v25, &qword_27CB2AD50, &qword_217787160);
      ++v5;
    }
  }
}

uint64_t MusicItemCollection.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 528) = v4;
  *(v5 + 520) = a4;
  *(v5 + 512) = a1;
  *(v5 + 595) = *a3;
  return OUTLINED_FUNCTION_20();
}

void sub_2176229A8()
{
  OUTLINED_FUNCTION_904();
  v55 = v0;
  v1 = *(*(v0 + 520) + 16);
  if (v1 == &type metadata for Playlist.Entry)
  {
    v2 = *(v0 + 528);
    OUTLINED_FUNCTION_41_0(*(v0 + 520));
    (*(v3 + 16))(v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACA0, &unk_217759C60);
    if (swift_dynamicCast())
    {
      memcpy((v0 + 16), (v0 + 224), 0x68uLL);
      sub_21754240C(v0 + 16, v0 + 328, &unk_27CB2ACA0, &unk_217759C60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACB0, &unk_217786F10);
      OUTLINED_FUNCTION_117_2();
      v4 = swift_dynamicCast();
      v5 = *(v0 + 595);
      if (v4)
      {
        sub_2171F3F0C((v0 + 472), v0 + 432);
        v6 = *(v0 + 464);
        __swift_project_boxed_opaque_existential_1((v0 + 432), *(v0 + 456));
        *(v0 + 594) = v5;
        v7 = *(v6 + 8);
        OUTLINED_FUNCTION_66_3();
        v53 = v8 + *v8;
        v10 = *(v9 + 4);
        v11 = swift_task_alloc();
        v12 = OUTLINED_FUNCTION_561(v11);
        *v12 = v13;
        v12[1] = sub_217622F14;
        OUTLINED_FUNCTION_354_0();
        OUTLINED_FUNCTION_1432();

        __asm { BRAA            X5, X16 }
      }

      *(v0 + 504) = 0;
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0u;
      sub_2171F0790(v0 + 472, &qword_27CB29720, &qword_217778710);
      *(v0 + 593) = v5;
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      *(v0 + 552) = v39;
      *v39 = v40;
      v39[1] = sub_21762307C;
      OUTLINED_FUNCTION_354_0();
      OUTLINED_FUNCTION_1432();

      sub_2172AD230(v41, v42, v43);
      return;
    }

    *(v0 + 320) = 0;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    sub_2171F0790(v0 + 224, &unk_27CB28A30, &unk_21775E9C0);
  }

  if (!dynamic_cast_existential_1_conditional(v1))
  {
    v28 = *(v0 + 528);
    OUTLINED_FUNCTION_354_0();
    OUTLINED_FUNCTION_41_0(v29);
    (*(v30 + 16))();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1432();

    __asm { BRAA            X1, X16 }
  }

  v16 = dynamic_cast_existential_1_conditional(v1);
  if (!v16)
  {
    OUTLINED_FUNCTION_362_0();
    v33 = OUTLINED_FUNCTION_8();
    MEMORY[0x21CEA23B0](v33);
    v34 = sub_217753348();
    MEMORY[0x21CEA23B0](v34);

    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL);
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_1432();
    return;
  }

  v18 = v16;
  v19 = v17;
  if (dynamic_cast_existential_1_conditional(v1))
  {
    goto LABEL_11;
  }

  (*(v19 + 8))(&v54, v18, v19);
  v35 = sub_21759E240();
  OUTLINED_FUNCTION_814(v35);
  if (v36)
  {
    OUTLINED_FUNCTION_85_3();
    sub_217632574();
    v38 = v37;

    if (v38)
    {
LABEL_11:
      *(v0 + 592) = *(v0 + 595);
      v20 = swift_task_alloc();
      v21 = OUTLINED_FUNCTION_89_17(v20);
      *v21 = v22;
      v21[1] = sub_2176232BC;
      v23 = *(v0 + 528);
      OUTLINED_FUNCTION_354_0();
      OUTLINED_FUNCTION_1432();

      sub_217630B20(v24, v25, v26);
      return;
    }
  }

  else
  {
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 568) = v45;
  *v45 = v46;
  v45[1] = sub_2176231DC;
  v47 = *(v0 + 528);
  v48 = *(v0 + 520);
  v49 = *(v0 + 512);
  OUTLINED_FUNCTION_1432();

  sub_217630490(v50, v51);
}

uint64_t sub_217622F14()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21762300C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_21762307C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 560) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217623174()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2176231DC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 568);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2176232BC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v12();
  }
}

uint64_t sub_2176233D0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));
  v1 = *(v0 + 544);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_217623444()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  v1 = *(v0 + 560);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2176234B0()
{
  v1 = *(v0 + 584);
  OUTLINED_FUNCTION_20_0();
  return v2();
}

uint64_t sub_2176234D4()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(dword_217787578);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_217623568(uint64_t a1, char a2, char a3)
{
  *(v4 + 784) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 776) = a1;
  return MEMORY[0x2822009F8](&sub_217623594, 0, 0);
}

uint64_t sub_2176237C0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[101];
  *v4 = *v2;
  v3[102] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 800);

  if (!v0)
  {
    v3[103] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2176238DC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_90_15();
  sub_2172CE3D8(v1, v2);

  if (*(v0 + 440))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_21733C220(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB24E08, &qword_2177872B0);
    OUTLINED_FUNCTION_322_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_55_22();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &qword_27CB2AE08, &qword_2177872A0);
    OUTLINED_FUNCTION_45_32();
    OUTLINED_FUNCTION_321_0();
  }

  v6 = OUTLINED_FUNCTION_242_1();
  sub_21733C220(v6, v7);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v8();
}

uint64_t sub_2176239AC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 792);

  OUTLINED_FUNCTION_20_0();
  v3 = *(v0 + 816);

  return v2();
}

uint64_t sub_217623A08(uint64_t a1, char a2, char a3)
{
  *(v4 + 784) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 776) = a1;
  return MEMORY[0x2822009F8](&sub_217623A34, 0, 0);
}

uint64_t sub_217623C60()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[101];
  *v4 = *v2;
  v3[102] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 800);

  if (!v0)
  {
    v3[103] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217623D7C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_90_15();
  sub_2172CE414(v1, v2);

  if (*(v0 + 440))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217283E1C(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB24E60, &qword_21775A130);
    OUTLINED_FUNCTION_322_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_55_22();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &qword_27CB2AF08, &qword_217787488);
    OUTLINED_FUNCTION_45_32();
    OUTLINED_FUNCTION_321_0();
  }

  v6 = OUTLINED_FUNCTION_242_1();
  sub_217283E1C(v6, v7);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v8();
}

uint64_t sub_217623E4C(uint64_t a1, char a2, char a3)
{
  *(v4 + 784) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 776) = a1;
  return MEMORY[0x2822009F8](&sub_217623E78, 0, 0);
}

uint64_t sub_2176240A4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[101];
  *v4 = *v2;
  v3[102] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 800);

  if (!v0)
  {
    v3[103] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2176241C0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_90_15();
  sub_2172CE450(v1, v2);

  if (*(v0 + 440))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217283ECC(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB24E38, &unk_217771D50);
    OUTLINED_FUNCTION_322_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_55_22();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &qword_27CB2AE98, &qword_2177873D0);
    OUTLINED_FUNCTION_45_32();
    OUTLINED_FUNCTION_321_0();
  }

  v6 = OUTLINED_FUNCTION_242_1();
  sub_217283ECC(v6, v7);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v8();
}

uint64_t sub_217624290(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return MEMORY[0x2822009F8](&sub_2176242BC, 0, 0);
}

uint64_t sub_2176244BC()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2176245D8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE48C(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217283BAC(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB2AE80, &qword_217787390);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &unk_27CB2AE70, &unk_217787380);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_217283BAC(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_2176246A4()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 720);

  OUTLINED_FUNCTION_20_0();
  v3 = *(v0 + 744);

  return v2();
}

uint64_t sub_217624700(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return MEMORY[0x2822009F8](&sub_21762472C, 0, 0);
}

uint64_t sub_21762492C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217624A48()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE4C4(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217283C68(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB24E88, &qword_21775A178);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &qword_27CB2AF58, &qword_217787518);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_217283C68(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_217624B14(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return MEMORY[0x2822009F8](&sub_217624B40, 0, 0);
}

uint64_t sub_217624D40()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217624E5C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE4FC(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217283AFC(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB2AD90, &unk_217771C70);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &unk_27CB2AD80, &qword_2177871C8);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_217283AFC(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_217624F28(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217625148()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217625264()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE534(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_21725CF0C(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB24DC0, &qword_21775A000);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &qword_27CB2AD08, &qword_217787110);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_21725CF0C(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_217625330(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return MEMORY[0x2822009F8](&sub_21762535C, 0, 0);
}

uint64_t sub_21762555C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217625678()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE56C(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217284130(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB24E20, &unk_21775A0C0);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &qword_27CB2AE58, &qword_217787340);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_217284130(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_217625744(uint64_t a1, char a2, char a3)
{
  *(v4 + 784) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 776) = a1;
  return MEMORY[0x2822009F8](&sub_217625770, 0, 0);
}

uint64_t sub_21762599C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[101];
  *v4 = *v2;
  v3[102] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 800);

  if (!v0)
  {
    v3[103] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217625AB8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_90_15();
  sub_2172CE5A4(v1, v2);

  if (*(v0 + 440))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217275710(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB2AEF0, &qword_21775A120);
    OUTLINED_FUNCTION_322_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_55_22();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &unk_27CB2AEE0, &qword_217787448);
    OUTLINED_FUNCTION_45_32();
    OUTLINED_FUNCTION_321_0();
  }

  v6 = OUTLINED_FUNCTION_242_1();
  sub_217275710(v6, v7);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v8();
}

uint64_t sub_217625B88(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return MEMORY[0x2822009F8](&sub_217625BB4, 0, 0);
}

uint64_t sub_217625DB4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217625ED0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE5E0(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_21725CF68(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB2AE40, &qword_217787300);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &unk_27CB2AE30, &unk_2177872F0);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_21725CF68(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_217625F9C(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return MEMORY[0x2822009F8](&sub_217625FC8, 0, 0);
}

uint64_t sub_2176261C8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2176262E4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE618(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217284288(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB2AFB0, &unk_217771CF0);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &unk_27CB2AFA0, &qword_217787590);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_217284288(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_2176263B0(uint64_t a1, char a2, char a3)
{
  *(v4 + 784) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 776) = a1;
  return MEMORY[0x2822009F8](&sub_2176263DC, 0, 0);
}

uint64_t sub_217626608()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[101];
  *v4 = *v2;
  v3[102] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 800);

  if (!v0)
  {
    v3[103] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217626724()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_90_15();
  sub_2172CE650(v1, v2);

  if (*(v0 + 440))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_21729C79C(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB24E48, &qword_21775A0F8);
    OUTLINED_FUNCTION_322_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_55_22();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &unk_27CB2AEC0, &unk_217787410);
    OUTLINED_FUNCTION_45_32();
    OUTLINED_FUNCTION_321_0();
  }

  v6 = OUTLINED_FUNCTION_242_1();
  sub_21729C79C(v6, v7);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v8();
}

uint64_t sub_2176267F4(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217626A14()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217626B30()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE68C(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_2172757C0(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB2ADF0, &qword_217787260);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &qword_27CB2ADE8, &qword_217787258);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_2172757C0(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_217626BFC(uint64_t a1, char a2, char a3)
{
  *(v4 + 712) = v3;
  *(v4 + 370) = a3;
  *(v4 + 369) = a2;
  *(v4 + 704) = a1;
  return MEMORY[0x2822009F8](&sub_217626C28, 0, 0);
}

uint64_t sub_217626E28()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v3[92];
  *v4 = *v2;
  v3[93] = v0;

  OUTLINED_FUNCTION_221_6();
  v7 = *(v6 + 728);

  if (!v0)
  {
    v3[94] = v1;
  }

  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_1322();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_217626F44()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_42_34();
  sub_2172CE6C4(v1, v2);

  if (*(v0 + 384))
  {
    v3 = OUTLINED_FUNCTION_169_7();
    sub_217284338(v3, v4);
    sub_2171F0790(v0 + 376, &qword_27CB2AF40, &unk_21775A140);
    if (*(v0 + 560))
    {
      OUTLINED_FUNCTION_23_47();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2171F0790(v0 + 376, &unk_27CB2AF30, &qword_2177874D8);
    OUTLINED_FUNCTION_45_32();
  }

  v5 = OUTLINED_FUNCTION_189_6();
  sub_217284338(v5, v6);
LABEL_6:
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t MusicItem.libraryMapped(policy:scope:)()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 688) = v0;
  *(v1 + 680) = v8;
  *(v1 + 672) = v2;
  *(v1 + 664) = v9;
  *(v1 + 696) = type metadata accessor for _MusicLibraryMapping.MappedItem();
  v10 = sub_2177528F8();
  *(v1 + 704) = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_66_3();
  *(v1 + 712) = v12;
  v14 = *(v13 + 64) + 15;
  *(v1 + 720) = swift_task_alloc();
  v15 = sub_2177528F8();
  *(v1 + 728) = v15;
  v16 = *(v15 - 8);
  OUTLINED_FUNCTION_66_3();
  *(v1 + 736) = v17;
  v19 = *(v18 + 64) + 15;
  *(v1 + 744) = swift_task_alloc();
  *(v1 + 752) = swift_task_alloc();
  v20 = *(v3 - 8);
  *(v1 + 760) = v20;
  v21 = *(v20 + 64) + 15;
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 372) = *v7;
  *(v1 + 373) = *v5;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_2176271E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_16();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_904();
  a22 = v24;
  if (*(v24 + 372))
  {
    goto LABEL_6;
  }

  v27 = *(v24 + 688);
  MusicItem.identifierSet.getter(*(v24 + 672), *(v24 + 680), v24 + 16);
  OUTLINED_FUNCTION_285_0();
  sub_217269F50(v24 + 16);
  *(v24 + 624) = xmmword_21775A450;
  *(swift_task_alloc() + 16) = v24 + 624;
  OUTLINED_FUNCTION_112_14();
  OUTLINED_FUNCTION_200_5();

  if (((v24 + 624) & 1) == 0)
  {
LABEL_6:
    v41 = *(v24 + 784);
    v42 = *(v24 + 760);
    v43 = *(v24 + 688);
    v44 = *(v24 + 672);
    v45 = *(v42 + 16);
    *(v24 + 792) = v45;
    *(v24 + 800) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (v45)(v41, v43, v44);
    if (swift_dynamicCast())
    {
      v46 = *(v24 + 448);
      *(v24 + 376) = *(v24 + 432);
      *(v24 + 392) = v46;
      *(v24 + 408) = *(v24 + 464);
      *(v24 + 424) = *(v24 + 480);
      sub_217275858(v24 + 376, v24 + 488);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACB0, &unk_217786F10);
      if (swift_dynamicCast())
      {
        v47 = *(v24 + 373);
        sub_2171F3F0C((v24 + 584), v24 + 544);
        v48 = *(v24 + 576);
        __swift_project_boxed_opaque_existential_1((v24 + 544), *(v24 + 568));
        *(v24 + 371) = v47;
        v49 = *(v48 + 8);
        OUTLINED_FUNCTION_66_3();
        v83 = v50 + *v50;
        v52 = *(v51 + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v24 + 808) = v53;
        *v53 = v54;
        v53[1] = sub_217627704;
        OUTLINED_FUNCTION_356_0();
        OUTLINED_FUNCTION_13_3();

        return v60(v55, v56, v57, v58, v59, v60, v61, v62, a9, v48 + 8, v83, a12, a13, a14, a15, a16);
      }

      else
      {
        *(v24 + 616) = 0;
        *(v24 + 584) = 0u;
        *(v24 + 600) = 0u;
        sub_2171F0790(v24 + 584, &qword_27CB29720, &qword_217778710);
        *(v24 + 370) = 0;
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v24 + 824) = v77;
        *v77 = v78;
        v77[1] = sub_217627890;
        OUTLINED_FUNCTION_356_0();
        OUTLINED_FUNCTION_13_3();

        return sub_2172AC89C(v79, v80, v81);
      }
    }

    else
    {
      v84 = *(v24 + 373);
      v63 = *(v24 + 776);
      v64 = *(v24 + 768);
      v65 = *(v24 + 688);
      v66 = *(v24 + 680);
      v67 = *(v24 + 672);
      *(v24 + 432) = 0u;
      *(v24 + 448) = 0u;
      *(v24 + 464) = 0u;
      *(v24 + 480) = 0;
      sub_2171F0790(v24 + 432, &unk_27CB2ACC0, &qword_217758AA8);
      OUTLINED_FUNCTION_313_0();
      type metadata accessor for _MusicLibraryMapping.Item();
      (*(v66 + 8))(v67, v66);
      MusicItem._libraryMappingItemKind.getter(v67, &a12 + 7);
      OUTLINED_FUNCTION_80_3();
      v45();
      OUTLINED_FUNCTION_80_3();
      v45();
      v68 = _MusicLibraryMapping.Item.__allocating_init(id:kind:existingCatalogItem:context:)();
      *(v24 + 840) = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
      OUTLINED_FUNCTION_282();
      sub_2177522C8();
      *v69 = v68;
      sub_21726B91C();
      OUTLINED_FUNCTION_313_0();
      _MusicLibraryMapping.Request.init(mappingItems:)(v70, v71);
      v72 = *(v24 + 640);
      *(v24 + 848) = v72;
      *(v24 + 648) = v72;
      *(v24 + 369) = v84;

      v73 = swift_task_alloc();
      *(v24 + 856) = v73;
      OUTLINED_FUNCTION_313_0();
      type metadata accessor for _MusicLibraryMapping.Request();
      *v73 = v24;
      v73[1] = sub_217627A14;
      OUTLINED_FUNCTION_13_3();

      return _MusicLibraryMapping.Request.mappedItems(scope:)(v74, v75);
    }
  }

  else
  {
    v28 = *(v24 + 760);
    v29 = *(v24 + 688);
    v30 = OUTLINED_FUNCTION_356_0();
    (*(v31 + 16))(v30);
    OUTLINED_FUNCTION_155_9();

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_13_3();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_217627704()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 808);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 816) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2176277FC()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2172758B4(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1((v0 + 544));
  OUTLINED_FUNCTION_155_9();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1322();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_217627890()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 824);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 832) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217627988()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2172758B4(v0 + 376);
  OUTLINED_FUNCTION_155_9();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1322();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_217627A14()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  OUTLINED_FUNCTION_155();
  v5 = v4;
  OUTLINED_FUNCTION_42_0();
  *v6 = v5;
  v8 = *(v7 + 856);
  v9 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  v5[108] = v0;

  if (!v0)
  {
    v11 = v5[106];

    v5[109] = v3;
  }

  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_217627B28()
{
  OUTLINED_FUNCTION_209();
  v1 = v0[105];
  v2 = v0[90];
  v3 = v0[87];
  v0[82] = v0[109];
  sub_217752418();
  OUTLINED_FUNCTION_33();
  swift_getWitnessTable();
  sub_217752728();

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    v4 = v0[94];
    v5 = v0[84];
    (*(v0[89] + 8))(v0[90], v0[88]);
    v6 = OUTLINED_FUNCTION_311();
    v9 = v5;
  }

  else
  {
    v10 = v0[100];
    v11 = v0[99];
    v12 = v0[94];
    v13 = v0[90];
    v14 = v0[87];
    v15 = v0[84];
    v16 = OUTLINED_FUNCTION_56_0();
    v17(v16);
    OUTLINED_FUNCTION_41_0(v14);
    (*(v18 + 8))(v13, v14);
    v6 = v12;
    v7 = 0;
    v8 = 1;
    v9 = v15;
  }

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v19 = v0[93];
  v20 = v0[84];
  (*(v0[92] + 32))(v19, v0[94], v0[91]);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = v0[100];
    v22 = v0[93];
    v23 = v0[84];
    (v0[99])(v0[83], v0[86], v23);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      (*(v0[92] + 8))(v0[93], v0[91]);
    }
  }

  else
  {
    v24 = v0[95];
    v25 = v0[93];
    v26 = OUTLINED_FUNCTION_356_0();
    (*(v27 + 32))(v26);
  }

  OUTLINED_FUNCTION_155_9();

  OUTLINED_FUNCTION_0_2();

  return v28();
}

uint64_t sub_217627D68()
{
  OUTLINED_FUNCTION_209();
  sub_2172758B4(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1((v0 + 544));
  v1 = *(v0 + 816);
  OUTLINED_FUNCTION_232_3();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_217627E08()
{
  OUTLINED_FUNCTION_209();
  sub_2172758B4(v0 + 376);
  v1 = *(v0 + 832);
  OUTLINED_FUNCTION_232_3();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_217627EA0()
{
  OUTLINED_FUNCTION_209();
  v1 = v0[106];
  v2 = v0[105];

  v3 = v0[108];
  OUTLINED_FUNCTION_232_3();

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217627F44()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(dword_217787500);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_217627FD8@<X0>(uint64_t a1@<X8>)
{
  v24[3] = &type metadata for Playlist.Entry.Item;
  v24[4] = &protocol witness table for Playlist.Entry.Item;
  v24[0] = swift_allocObject();
  sub_21729C79C(v1, v24[0] + 16);
  __swift_project_boxed_opaque_existential_1(v24, &type metadata for Playlist.Entry.Item);
  Playlist.Entry.Item.propertyProvider.getter();
  v3 = v19;
  v4 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v4 + 96))(v21, v3, v4);
  sub_21729C644(v18);
  v5 = v22;
  v6 = v23;
  __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v7 = (*(*(v6 + 8) + 40))(v18, v5);
  v9 = v8[17];
  v10 = v8[18];
  v11 = v8[19];
  v12 = v8[20];
  *(v8 + 17) = 0u;
  *(v8 + 19) = 0u;
  sub_2172B8404(v9, v10);
  v7(v18, 0);
  v13 = v22;
  v14 = v23;
  v15 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v19 = v13;
  v20 = *(v14 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v15, v13);
  Playlist.Entry.Item.init(propertyProvider:)(v18, a1);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_21762817C@<X0>(uint64_t a1@<X8>)
{
  v24[3] = &type metadata for RecentlyPlayedMusicItem;
  v24[4] = &protocol witness table for RecentlyPlayedMusicItem;
  v24[0] = swift_allocObject();
  sub_21733C220(v1, v24[0] + 16);
  __swift_project_boxed_opaque_existential_1(v24, &type metadata for RecentlyPlayedMusicItem);
  RecentlyPlayedMusicItem.propertyProvider.getter();
  v3 = v19;
  v4 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v4 + 96))(v21, v3, v4);
  sub_21729C644(v18);
  v5 = v22;
  v6 = v23;
  __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v7 = (*(*(v6 + 8) + 40))(v18, v5);
  v9 = v8[17];
  v10 = v8[18];
  v11 = v8[19];
  v12 = v8[20];
  *(v8 + 17) = 0u;
  *(v8 + 19) = 0u;
  sub_2172B8404(v9, v10);
  v7(v18, 0);
  v13 = v22;
  v14 = v23;
  v15 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v19 = v13;
  v20 = *(v14 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v15, v13);
  RecentlyPlayedMusicItem.init(propertyProvider:)(v18, a1);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_217628320@<X0>(uint64_t a1@<X8>)
{
  v24[3] = &type metadata for MusicCatalogSearchResponse.TopResult;
  v24[4] = &protocol witness table for MusicCatalogSearchResponse.TopResult;
  v24[0] = swift_allocObject();
  sub_217283E1C(v1, v24[0] + 16);
  __swift_project_boxed_opaque_existential_1(v24, &type metadata for MusicCatalogSearchResponse.TopResult);
  MusicCatalogSearchResponse.TopResult.propertyProvider.getter();
  v3 = v19;
  v4 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v4 + 96))(v21, v3, v4);
  sub_21729C644(v18);
  v5 = v22;
  v6 = v23;
  __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v7 = (*(*(v6 + 8) + 40))(v18, v5);
  v9 = v8[17];
  v10 = v8[18];
  v11 = v8[19];
  v12 = v8[20];
  *(v8 + 17) = 0u;
  *(v8 + 19) = 0u;
  sub_2172B8404(v9, v10);
  v7(v18, 0);
  v13 = v22;
  v14 = v23;
  v15 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v19 = v13;
  v20 = *(v14 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v15, v13);
  MusicCatalogSearchResponse.TopResult.init(propertyProvider:)(v18, a1);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_2176284C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  v34[3] = a1;
  v34[4] = a2;
  OUTLINED_FUNCTION_197();
  v34[0] = swift_allocObject();
  v7 = OUTLINED_FUNCTION_788();
  a3(v7);
  v8 = __swift_project_boxed_opaque_existential_1(v34, a1);
  sub_21729C5E8((v8 + 2), v35);
  v9 = v36;
  v10 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v10 + 96))(v31, v9, v10);
  sub_21729C644(v35);
  v11 = v32;
  v12 = v33;
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v13 = (*(*(v12 + 8) + 40))(v35, v11);
  v15 = v14[17];
  v16 = v14[18];
  v17 = v14[19];
  v18 = v14[20];
  *(v14 + 17) = 0u;
  *(v14 + 19) = 0u;
  sub_2172B8404(v15, v16);
  v13(v35, 0);
  v19 = v32;
  v20 = v33;
  v21 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v22 = *(v19 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v21);
  OUTLINED_FUNCTION_28_19();
  (*(v22 + 16))(v13);
  v24 = *(v20 + 8);
  (*(v24 + 24))(v35, v19, v24);
  v26 = v35[0];
  v25 = v35[1];
  sub_217751DE8();
  sub_217269F50(v35);
  *a4 = v26;
  a4[1] = v25;
  PropertyProvider.eraseToAnyPropertyProvider()(v19, v24, a4 + 2);
  v27 = *(v22 + 8);
  v28 = OUTLINED_FUNCTION_154();
  v29(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_2176286F4@<X0>(uint64_t a1@<X8>)
{
  v24[3] = &type metadata for MusicPersonalRecommendation.Item;
  v24[4] = &protocol witness table for MusicPersonalRecommendation.Item;
  v24[0] = swift_allocObject();
  sub_217283ECC(v1, v24[0] + 16);
  __swift_project_boxed_opaque_existential_1(v24, &type metadata for MusicPersonalRecommendation.Item);
  MusicPersonalRecommendation.Item.propertyProvider.getter();
  v3 = v19;
  v4 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v4 + 96))(v21, v3, v4);
  sub_21729C644(v18);
  v5 = v22;
  v6 = v23;
  __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v7 = (*(*(v6 + 8) + 40))(v18, v5);
  v9 = v8[17];
  v10 = v8[18];
  v11 = v8[19];
  v12 = v8[20];
  *(v8 + 17) = 0u;
  *(v8 + 19) = 0u;
  sub_2172B8404(v9, v10);
  v7(v18, 0);
  v13 = v22;
  v14 = v23;
  v15 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v19 = v13;
  v20 = *(v14 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v15, v13);
  MusicPersonalRecommendation.Item.init(propertyProvider:)(v18, a1);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_217628898@<X0>(uint64_t a1@<X8>)
{
  v24[3] = &type metadata for Track;
  v24[4] = &protocol witness table for Track;
  v24[0] = swift_allocObject();
  sub_217275710(v1, v24[0] + 16);
  __swift_project_boxed_opaque_existential_1(v24, &type metadata for Track);
  Track.propertyProvider.getter();
  v3 = v19;
  v4 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v4 + 96))(v21, v3, v4);
  sub_21729C644(v18);
  v5 = v22;
  v6 = v23;
  __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v7 = (*(*(v6 + 8) + 40))(v18, v5);
  v9 = v8[17];
  v10 = v8[18];
  v11 = v8[19];
  v12 = v8[20];
  *(v8 + 17) = 0u;
  *(v8 + 19) = 0u;
  sub_2172B8404(v9, v10);
  v7(v18, 0);
  v13 = v22;
  v14 = v23;
  v15 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v19 = v13;
  v20 = *(v14 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v15, v13);
  Track.init(propertyProvider:)(v18, a1);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_217628A3C()
{
  v17[3] = &type metadata for MusicPlayer.Queue.Entry.Item;
  v17[4] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
  v17[0] = swift_allocObject();
  sub_21729C6EC(v0, v17[0] + 16);
  __swift_project_boxed_opaque_existential_1(v17, &type metadata for MusicPlayer.Queue.Entry.Item);
  MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v2 + 96))(v14, v1, v2);
  sub_21729C644(v11);
  v3 = v15;
  v4 = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v5 = (*(*(v4 + 8) + 40))(v11, v3);
  v7 = v6[17];
  v8 = v6[18];
  v9 = v6[19];
  v10 = v6[20];
  *(v6 + 17) = 0u;
  *(v6 + 19) = 0u;
  sub_2172B8404(v7, v8);
  v5(v11, 0);
  sub_217752D08();
  __break(1u);
}

uint64_t sub_217628B98()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(dword_2177874C0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_217628C2C()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(dword_217787470);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_217628CC0(uint64_t a1)
{
  *(v2 + 520) = v1;
  *(v2 + 512) = a1;
  return MEMORY[0x2822009F8](sub_217628CE4, 0, 0);
}

uint64_t sub_217628F38()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 552);
  *v3 = *v2;
  *(v0 + 560) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 544);
  if (v1)
  {
    OUTLINED_FUNCTION_343_0();
  }

  else
  {
    v7 = *(v5 + 544);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_217629068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_292_0();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_166_9();
      sub_21754240C(v17, v18, v19, v20);
      OUTLINED_FUNCTION_78_15();
      OUTLINED_FUNCTION_162_1();
      v22 = *(v21 + 16);
      OUTLINED_FUNCTION_1071();
      v23();
      OUTLINED_FUNCTION_165_7();
      v24 = OUTLINED_FUNCTION_35_33();
      v25(v24);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v26);
  }

  v27 = v14[65];
  v14[42] = &type metadata for Playlist.Entry.Item;
  v14[43] = &protocol witness table for Playlist.Entry.Item;
  OUTLINED_FUNCTION_203_0();
  v14[39] = swift_allocObject();
  v28 = OUTLINED_FUNCTION_788();
  sub_21729C79C(v28, v29);
  OUTLINED_FUNCTION_129_11(v14 + 39);
  OUTLINED_FUNCTION_52_26();
  OUTLINED_FUNCTION_72_16();
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_173_10();
  v32();
  OUTLINED_FUNCTION_175_8();
  v33 = OUTLINED_FUNCTION_104_13();
  v15(v33);
  OUTLINED_FUNCTION_341_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_142_10())
  {
    OUTLINED_FUNCTION_344_0();

    v34 = OUTLINED_FUNCTION_273_0();
    sub_21729C7F8(v34);
    OUTLINED_FUNCTION_17_51();
    OUTLINED_FUNCTION_156_10();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_51_22();
    sub_2171F0790((v14 + 10), &qword_27CB27D20, &qword_217758B80);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    OUTLINED_FUNCTION_286_0();
    OUTLINED_FUNCTION_107_11();
    v43 = v14[42];
    OUTLINED_FUNCTION_92_15(v14 + 39);
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_217629270()
{
  OUTLINED_FUNCTION_10();
  sub_21729C7F8(v0 + 16);
  OUTLINED_FUNCTION_32_38();
  v2 = *(v0 + 560);

  return v1();
}

uint64_t sub_2176292CC(uint64_t a1)
{
  *(v2 + 520) = v1;
  *(v2 + 512) = a1;
  return MEMORY[0x2822009F8](sub_2176292F0, 0, 0);
}

uint64_t sub_217629544()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 552);
  *v3 = *v2;
  *(v0 + 560) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 544);
  if (v1)
  {
    OUTLINED_FUNCTION_343_0();
  }

  else
  {
    v7 = *(v5 + 544);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_217629674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_292_0();
  if (v17)
  {
    do
    {
      OUTLINED_FUNCTION_166_9();
      sub_21754240C(v18, v19, v20, v21);
      OUTLINED_FUNCTION_78_15();
      OUTLINED_FUNCTION_162_1();
      v23 = *(v22 + 16);
      OUTLINED_FUNCTION_1071();
      v24();
      OUTLINED_FUNCTION_165_7();
      v25 = OUTLINED_FUNCTION_35_33();
      v26(v25);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v27);
  }

  v28 = v15[65];
  v15[42] = &type metadata for RecentlyPlayedMusicItem;
  v15[43] = &protocol witness table for RecentlyPlayedMusicItem;
  OUTLINED_FUNCTION_203_0();
  v15[39] = swift_allocObject();
  v29 = OUTLINED_FUNCTION_788();
  sub_21733C220(v29, v30);
  OUTLINED_FUNCTION_129_11(v15 + 39);
  OUTLINED_FUNCTION_52_26();
  OUTLINED_FUNCTION_72_16();
  v32 = *(v31 + 16);
  OUTLINED_FUNCTION_173_10();
  v33();
  OUTLINED_FUNCTION_175_8();
  v34 = OUTLINED_FUNCTION_104_13();
  v16(v34);
  OUTLINED_FUNCTION_341_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_142_10())
  {
    OUTLINED_FUNCTION_344_0();

    v35 = OUTLINED_FUNCTION_273_0();
    sub_217635D18(v35);
    OUTLINED_FUNCTION_17_51();
    OUTLINED_FUNCTION_156_10();

    v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_51_22();
    sub_2171F0790((v15 + 10), &unk_27CB2AE10, &qword_2177872A8);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](v14 | 4, 0x80000002177B2CB0);
    OUTLINED_FUNCTION_107_11();
    v44 = v15[42];
    OUTLINED_FUNCTION_92_15(v15 + 39);
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_217629894()
{
  OUTLINED_FUNCTION_10();
  sub_217635D18(v0 + 16);
  OUTLINED_FUNCTION_32_38();
  v2 = *(v0 + 560);

  return v1();
}

uint64_t sub_2176298F0(uint64_t a1)
{
  *(v2 + 520) = v1;
  *(v2 + 512) = a1;
  return MEMORY[0x2822009F8](sub_217629914, 0, 0);
}

uint64_t sub_217629B68()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 552);
  *v3 = *v2;
  *(v0 + 560) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 544);
  if (v1)
  {
    OUTLINED_FUNCTION_343_0();
  }

  else
  {
    v7 = *(v5 + 544);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_217629C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_292_0();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_166_9();
      sub_21754240C(v17, v18, v19, v20);
      OUTLINED_FUNCTION_78_15();
      OUTLINED_FUNCTION_162_1();
      v22 = *(v21 + 16);
      OUTLINED_FUNCTION_1071();
      v23();
      OUTLINED_FUNCTION_165_7();
      v24 = OUTLINED_FUNCTION_35_33();
      v25(v24);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v26);
  }

  v27 = v14[65];
  v14[42] = &type metadata for MusicCatalogSearchResponse.TopResult;
  v14[43] = &protocol witness table for MusicCatalogSearchResponse.TopResult;
  OUTLINED_FUNCTION_203_0();
  v14[39] = swift_allocObject();
  v28 = OUTLINED_FUNCTION_788();
  sub_217283E1C(v28, v29);
  OUTLINED_FUNCTION_129_11(v14 + 39);
  OUTLINED_FUNCTION_52_26();
  OUTLINED_FUNCTION_72_16();
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_173_10();
  v32();
  OUTLINED_FUNCTION_175_8();
  v33 = OUTLINED_FUNCTION_104_13();
  v15(v33);
  OUTLINED_FUNCTION_341_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_142_10())
  {
    OUTLINED_FUNCTION_344_0();

    v34 = OUTLINED_FUNCTION_273_0();
    sub_217283E78(v34);
    OUTLINED_FUNCTION_17_51();
    OUTLINED_FUNCTION_156_10();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_51_22();
    sub_2171F0790((v14 + 10), &unk_27CB2AF10, &unk_217787490);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
    OUTLINED_FUNCTION_107_11();
    v43 = v14[42];
    OUTLINED_FUNCTION_92_15(v14 + 39);
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_217629EBC()
{
  OUTLINED_FUNCTION_10();
  sub_217283E78(v0 + 16);
  OUTLINED_FUNCTION_32_38();
  v2 = *(v0 + 560);

  return v1();
}

uint64_t sub_217629F18(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762A168()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762A298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for Song;
  v14[41] = &protocol witness table for Song;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_217283AFC(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_217283B58(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &qword_27CB277F0, &unk_21775A2B0);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](1735290707, 0xE400000000000000);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762A494()
{
  OUTLINED_FUNCTION_10();
  sub_217283B58(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762A4F0(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762A740()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762A870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for RecordLabel;
  v14[41] = &protocol witness table for RecordLabel;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_217283C68(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_217283CC4(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &unk_27CB2AF60, &qword_217758C00);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x614C64726F636552, 0xEB000000006C6562);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762AA7C()
{
  OUTLINED_FUNCTION_10();
  sub_217283CC4(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762AAD8(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762AD28()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762AE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for RadioShow;
  v14[41] = &protocol witness table for RadioShow;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_217284338(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_217284394(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &qword_27CB24678, &qword_217758BD0);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x6F68536F69646152, 0xE900000000000077);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762B060()
{
  OUTLINED_FUNCTION_10();
  sub_217284394(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762B0BC(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762B30C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762B43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for Playlist;
  v14[41] = &protocol witness table for Playlist;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_2172757C0(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_21726B8C4(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &unk_27CB28A90, &qword_217758F90);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x7473696C79616C50, 0xE800000000000000);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762B640()
{
  OUTLINED_FUNCTION_10();
  sub_21726B8C4(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762B69C(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762B8EC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for MusicVideo;
  v14[41] = &protocol witness table for MusicVideo;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_217283BAC(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_217283C08(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &qword_27CB24550, &qword_217758A58);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x646956636973754DLL, 0xEA00000000006F65);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762BC24()
{
  OUTLINED_FUNCTION_10();
  sub_217283C08(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762BC80(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762BED0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762C000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for Curator;
  v14[41] = &protocol witness table for Curator;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_217284288(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_2172842E4(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &qword_27CB246E8, &qword_21776C140);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x726F7461727543, 0xE700000000000000);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762C204()
{
  OUTLINED_FUNCTION_10();
  sub_2172842E4(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762C260(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762C4B0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for Artist;
  v14[41] = &protocol witness table for Artist;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_21725CF68(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_217284498(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &qword_27CB2CD90, &unk_21775A2C0);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x747369747241, 0xE600000000000000);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762C7E0()
{
  OUTLINED_FUNCTION_10();
  sub_217284498(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762C83C(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762CA8C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762CBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for Album;
  v14[41] = &protocol witness table for Album;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_21725CF0C(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_21725CE44(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &unk_27CB275E0, &qword_2177589D0);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x6D75626C41, 0xE500000000000000);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762CDBC()
{
  OUTLINED_FUNCTION_10();
  sub_21725CE44(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762CE18(uint64_t a1)
{
  *(v2 + 520) = v1;
  *(v2 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21762CE3C, 0, 0);
}

uint64_t sub_21762D090()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 552);
  *v3 = *v2;
  *(v0 + 560) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 544);
  if (v1)
  {
    OUTLINED_FUNCTION_343_0();
  }

  else
  {
    v7 = *(v5 + 544);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762D1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_292_0();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_166_9();
      sub_21754240C(v17, v18, v19, v20);
      OUTLINED_FUNCTION_78_15();
      OUTLINED_FUNCTION_162_1();
      v22 = *(v21 + 16);
      OUTLINED_FUNCTION_1071();
      v23();
      OUTLINED_FUNCTION_165_7();
      v24 = OUTLINED_FUNCTION_35_33();
      v25(v24);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v26);
  }

  v27 = v14[65];
  v14[42] = &type metadata for MusicPersonalRecommendation.Item;
  v14[43] = &protocol witness table for MusicPersonalRecommendation.Item;
  OUTLINED_FUNCTION_203_0();
  v14[39] = swift_allocObject();
  v28 = OUTLINED_FUNCTION_788();
  sub_217283ECC(v28, v29);
  OUTLINED_FUNCTION_129_11(v14 + 39);
  OUTLINED_FUNCTION_52_26();
  OUTLINED_FUNCTION_72_16();
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_173_10();
  v32();
  OUTLINED_FUNCTION_175_8();
  v33 = OUTLINED_FUNCTION_104_13();
  v15(v33);
  OUTLINED_FUNCTION_341_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_142_10())
  {
    OUTLINED_FUNCTION_344_0();

    v34 = OUTLINED_FUNCTION_273_0();
    sub_217283F28(v34);
    OUTLINED_FUNCTION_17_51();
    OUTLINED_FUNCTION_156_10();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_51_22();
    sub_2171F0790((v14 + 10), &unk_27CB2AEA0, &unk_21775A260);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    OUTLINED_FUNCTION_286_0();
    OUTLINED_FUNCTION_107_11();
    v43 = v14[42];
    OUTLINED_FUNCTION_92_15(v14 + 39);
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762D3C8()
{
  OUTLINED_FUNCTION_10();
  sub_217283F28(v0 + 16);
  OUTLINED_FUNCTION_32_38();
  v2 = *(v0 + 560);

  return v1();
}

uint64_t sub_21762D424(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762D674()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762D7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for Genre;
  v14[41] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_217284130(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_21728418C(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &unk_27CB27760, &unk_21775A2D0);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x65726E6547, 0xE500000000000000);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762D9A4()
{
  OUTLINED_FUNCTION_10();
  sub_21728418C(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762DA00(uint64_t a1)
{
  *(v2 + 520) = v1;
  *(v2 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21762DA24, 0, 0);
}

uint64_t sub_21762DC78()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 552);
  *v3 = *v2;
  *(v0 + 560) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 544);
  if (v1)
  {
    OUTLINED_FUNCTION_343_0();
  }

  else
  {
    v7 = *(v5 + 544);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_292_0();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_166_9();
      sub_21754240C(v17, v18, v19, v20);
      OUTLINED_FUNCTION_78_15();
      OUTLINED_FUNCTION_162_1();
      v22 = *(v21 + 16);
      OUTLINED_FUNCTION_1071();
      v23();
      OUTLINED_FUNCTION_165_7();
      v24 = OUTLINED_FUNCTION_35_33();
      v25(v24);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v26);
  }

  v27 = v14[65];
  v14[42] = &type metadata for Track;
  v14[43] = &protocol witness table for Track;
  OUTLINED_FUNCTION_203_0();
  v14[39] = swift_allocObject();
  v28 = OUTLINED_FUNCTION_788();
  sub_217275710(v28, v29);
  OUTLINED_FUNCTION_129_11(v14 + 39);
  OUTLINED_FUNCTION_52_26();
  OUTLINED_FUNCTION_72_16();
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_173_10();
  v32();
  OUTLINED_FUNCTION_175_8();
  v33 = OUTLINED_FUNCTION_104_13();
  v15(v33);
  OUTLINED_FUNCTION_341_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_142_10())
  {
    OUTLINED_FUNCTION_344_0();

    v34 = OUTLINED_FUNCTION_273_0();
    sub_21727576C(v34);
    OUTLINED_FUNCTION_17_51();
    OUTLINED_FUNCTION_156_10();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_51_22();
    sub_2171F0790((v14 + 10), &unk_27CB28AA0, &qword_21775A020);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x6B63617254, 0xE500000000000000);
    OUTLINED_FUNCTION_107_11();
    v43 = v14[42];
    OUTLINED_FUNCTION_92_15(v14 + 39);
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762DFC4()
{
  OUTLINED_FUNCTION_10();
  sub_21727576C(v0 + 16);
  OUTLINED_FUNCTION_32_38();
  v2 = *(v0 + 560);

  return v1();
}

uint64_t sub_21762E020(uint64_t a1)
{
  *(v2 + 520) = v1;
  *(v2 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21762E044, 0, 0);
}

uint64_t sub_21762E298()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 552);
  *v3 = *v2;
  *(v0 + 560) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 544);
  if (v1)
  {
    OUTLINED_FUNCTION_343_0();
  }

  else
  {
    v7 = *(v5 + 544);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762E3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_292_0();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_166_9();
      sub_21754240C(v17, v18, v19, v20);
      OUTLINED_FUNCTION_78_15();
      OUTLINED_FUNCTION_162_1();
      v22 = *(v21 + 16);
      OUTLINED_FUNCTION_1071();
      v23();
      OUTLINED_FUNCTION_165_7();
      v24 = OUTLINED_FUNCTION_35_33();
      v25(v24);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v26);
  }

  v27 = v14[65];
  v14[42] = &type metadata for MusicPlayer.Queue.Entry.Item;
  v14[43] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
  OUTLINED_FUNCTION_203_0();
  v14[39] = swift_allocObject();
  v28 = OUTLINED_FUNCTION_788();
  sub_21729C6EC(v28, v29);
  OUTLINED_FUNCTION_129_11(v14 + 39);
  OUTLINED_FUNCTION_52_26();
  OUTLINED_FUNCTION_72_16();
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_173_10();
  v32();
  OUTLINED_FUNCTION_175_8();
  v33 = OUTLINED_FUNCTION_104_13();
  v15(v33);
  OUTLINED_FUNCTION_341_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_142_10())
  {
    OUTLINED_FUNCTION_344_0();

    v34 = OUTLINED_FUNCTION_273_0();
    sub_21729C748(v34);
    OUTLINED_FUNCTION_17_51();
    OUTLINED_FUNCTION_156_10();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_51_22();
    sub_2171F0790((v14 + 10), &qword_27CB245B8, &qword_217758AE0);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    OUTLINED_FUNCTION_286_0();
    OUTLINED_FUNCTION_107_11();
    v43 = v14[42];
    OUTLINED_FUNCTION_92_15(v14 + 39);
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762E5D0()
{
  OUTLINED_FUNCTION_10();
  sub_21729C748(v0 + 16);
  OUTLINED_FUNCTION_32_38();
  v2 = *(v0 + 560);

  return v1();
}

uint64_t sub_21762E62C(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21762E87C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  OUTLINED_FUNCTION_13_0();
  *v3 = v0;
  v4 = *(v0 + 536);
  *v3 = *v2;
  *(v0 + 544) = v1;

  OUTLINED_FUNCTION_193_7();
  v6 = *(v5 + 528);
  if (v1)
  {
    OUTLINED_FUNCTION_299_0();
  }

  else
  {
    v7 = *(v5 + 528);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21762E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_240_2();
  if (v16)
  {
    do
    {
      OUTLINED_FUNCTION_133_12();
      OUTLINED_FUNCTION_47_25();
      OUTLINED_FUNCTION_162_1();
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_1071();
      v19();
      OUTLINED_FUNCTION_110_13();
      v20 = OUTLINED_FUNCTION_13_56();
      v21(v20);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v22);
  }

  v23 = v14[63];
  v14[40] = &type metadata for Station;
  v14[41] = &protocol witness table for Station;
  OUTLINED_FUNCTION_197();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_109_14(v24);
  sub_217283D6C(v25, v26);
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_26_38();
  OUTLINED_FUNCTION_72_16();
  v28 = *(v27 + 16);
  OUTLINED_FUNCTION_173_10();
  v29();
  OUTLINED_FUNCTION_136_10();
  v30 = OUTLINED_FUNCTION_62_20();
  v15(v30);
  OUTLINED_FUNCTION_301_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (OUTLINED_FUNCTION_88_15())
  {
    OUTLINED_FUNCTION_304_0();

    v31 = OUTLINED_FUNCTION_174_7();
    sub_217283DC8(v31);
    OUTLINED_FUNCTION_0_119();
    OUTLINED_FUNCTION_156_10();

    v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_36_33();
    sub_2171F0790((v14 + 9), &unk_27CB2AF80, &qword_217758C30);
    OUTLINED_FUNCTION_106_11();
    OUTLINED_FUNCTION_199_5();
    OUTLINED_FUNCTION_34_34();
    MEMORY[0x21CEA23B0](0x6E6F6974617453, 0xE700000000000000);
    OUTLINED_FUNCTION_107_11();
    OUTLINED_FUNCTION_75_14();
    sub_217753348();
    OUTLINED_FUNCTION_280_0();

    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_156_10();
  }
}

uint64_t sub_21762EBB0()
{
  OUTLINED_FUNCTION_10();
  sub_217283DC8(v0 + 16);
  OUTLINED_FUNCTION_19_37();
  v2 = *(v0 + 544);

  return v1();
}

uint64_t sub_21762EC0C()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v1[54] = v2;
  v1[55] = v0;
  v1[53] = v4;
  v5 = sub_2177528F8();
  v1[56] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_66_3();
  v1[57] = v7;
  v9 = *(v8 + 64) + 15;
  v1[58] = swift_task_alloc();
  v10 = *(v3 - 8);
  v1[59] = v10;
  v11 = *(v10 + 64) + 15;
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_21762ED30()
{
  OUTLINED_FUNCTION_904();
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v3 + 16);
  *(v0 + 504) = v6;
  *(v0 + 512) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v5);
  v7 = OUTLINED_FUNCTION_56_0();
  (v6)(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  OUTLINED_FUNCTION_80_3();
  if (swift_dynamicCast())
  {
    sub_2171F3F0C((v0 + 104), v0 + 64);
    v8 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v9 = OUTLINED_FUNCTION_56_0();
    PropertyProviderBackedItem.staticPropertyProvider.getter(v9, v10);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v11);
    v13 = (*(*(v12 + 8) + 16))(v11);
    v14 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    v15 = sub_217204DD0(v13);
    v23 = v15;
    v24 = 0;
LABEL_3:
    *(v0 + 520) = v14;
    while (v23 != v24)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v27 = OUTLINED_FUNCTION_296_0();
        v15 = MEMORY[0x21CEA2E30](v27);
        v25 = v15;
      }

      else
      {
        if (v24 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v25 = *(v13 + 8 * v24 + 32);
      }

      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return MEMORY[0x282200740](v15, v16, v17, v18, v19, v20, v21, v22);
      }

      v26 = *(v25 + 64);
      if (v26 == 2)
      {
        if (!*(v25 + 56) && *(v25 + 48) == 1)
        {
LABEL_16:
          MEMORY[0x21CEA25D0](v15);
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2177522F8();
          }

          v15 = sub_217752378();
          v14 = v45;
          ++v24;
          goto LABEL_3;
        }
      }

      else if (v26 == 1)
      {
        goto LABEL_16;
      }

      ++v24;
    }

    sub_2176226D8(v14, (v0 + 144));
    v33 = v32;
    *(v0 + 528) = v32;
    if (*(v32 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD10, &unk_21775A010);
      OUTLINED_FUNCTION_187_6();
      v34 = swift_task_alloc();
      *(v0 + 536) = v34;
      *(v34 + 16) = v33;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD18, &qword_217787138);
      v36 = *(MEMORY[0x277D859B8] + 4);
      v37 = swift_task_alloc();
      v38 = OUTLINED_FUNCTION_68_20(v37);
      *v38 = v39;
      v38[1] = sub_21762F194;
      v20 = &unk_217787178;
      v15 = v0 + 416;
      v16 = v14;
      v17 = v35;
      v18 = 0;
      v19 = 0;
      v21 = v34;
      v22 = v14;

      return MEMORY[0x282200740](v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v40 = *(v0 + 472);

    v41 = *(v40 + 32);
    v42 = OUTLINED_FUNCTION_329_0();
    v43(v42);
    OUTLINED_FUNCTION_314_0();

    OUTLINED_FUNCTION_0_2();

    return v44();
  }

  else
  {
    v28 = *(v0 + 432);
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    sub_2171F0790(v0 + 104, &qword_27CB24B68, &qword_217759430);
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    v29 = OUTLINED_FUNCTION_8();
    MEMORY[0x21CEA23B0](v29);
    v30 = sub_217753348();
    MEMORY[0x21CEA23B0](v30);

    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD000000000000051);
    return OUTLINED_FUNCTION_5_14();
  }
}

uint64_t sub_21762F194()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_195_8();
  v3 = v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v0;
  v5 = *(v0 + 544);
  *v4 = *v2;
  *(v0 + 552) = v1;

  OUTLINED_FUNCTION_193_7();
  v7 = *(v6 + 536);
  if (v1)
  {
    v8 = *(v3 + 528);
    v9 = *(v3 + 520);
  }

  else
  {
    v10 = *(v6 + 536);
  }

  OUTLINED_FUNCTION_74_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_21762F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_904();
  if (*(*(v16 + 416) + 16))
  {
    do
    {
      OUTLINED_FUNCTION_166_9();
      sub_21754240C(v17, v18, v19, v20);
      v21 = *(v16 + 16);
      v22 = *(v16 + 48);
      __swift_project_boxed_opaque_existential_1((v16 + 24), v22);
      *(v16 + 408) = v22;
      __swift_allocate_boxed_opaque_existential_0((v16 + 384));
      OUTLINED_FUNCTION_162_1();
      v24 = *(v23 + 16);
      OUTLINED_FUNCTION_1071();
      v25();
      __swift_destroy_boxed_opaque_existential_1((v16 + 24));
      v26 = *(v16 + 168);
      v27 = *(v16 + 176);
      __swift_mutable_project_boxed_opaque_existential_1(v16 + 144, v26);
      (*(v27 + 24))(v16 + 384, v21, v26, v27);
      OUTLINED_FUNCTION_192_8();
    }

    while (!v28);
  }

  v29 = *(v16 + 512);
  (*(v16 + 504))(*(v16 + 480), *(v16 + 440), *(v16 + 432));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (!swift_dynamicCast())
  {
    v56 = *(v16 + 432);
    *(v16 + 224) = 0u;
    *(v16 + 240) = 0u;
    *(v16 + 256) = 0;
    sub_2171F0790(v16 + 224, &xmmword_27CB27600, &qword_21776B040);
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    v57 = OUTLINED_FUNCTION_8();
    MEMORY[0x21CEA23B0](v57);
    v58 = sub_217753348();
    MEMORY[0x21CEA23B0](v58);

    MEMORY[0x21CEA23B0](0xD00000000000007BLL, 0x80000002177B2B90);
LABEL_11:
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_13_3();
    return;
  }

  v30 = *(v16 + 464);
  v31 = *(v16 + 432);
  sub_2171F3F0C((v16 + 224), v16 + 184);
  v32 = *(v16 + 208);
  v33 = OUTLINED_FUNCTION_92_15((v16 + 184));
  v34 = *(v16 + 216);
  v35 = *(v16 + 168);
  v36 = *(v16 + 176);
  __swift_project_boxed_opaque_existential_1((v16 + 144), v35);
  *(v16 + 328) = v35;
  *(v16 + 336) = *(v36 + 8);
  __swift_allocate_boxed_opaque_existential_0((v16 + 304));
  OUTLINED_FUNCTION_41_0(v35);
  (*(v37 + 16))();
  v38 = *(v34 + 16);
  *(v16 + 288) = v33;
  *(v16 + 296) = v34;
  __swift_allocate_boxed_opaque_existential_0((v16 + 264));
  v38(v16 + 304, v33, v34);
  sub_21749A32C(v16 + 264, v16 + 344);
  if (!swift_dynamicCast())
  {
    v60 = *(v16 + 456);
    v59 = *(v16 + 464);
    v61 = *(v16 + 448);
    v62 = *(v16 + 432);
    v63 = OUTLINED_FUNCTION_311();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
    v66 = *(v60 + 8);
    v67 = OUTLINED_FUNCTION_56_0();
    v68(v67);
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177B2AE0);
    v69 = sub_217753348();
    MEMORY[0x21CEA23B0](v69);

    MEMORY[0x21CEA23B0](0xD000000000000025, 0x80000002177B2B00);
    v70 = *(v16 + 208);
    OUTLINED_FUNCTION_92_15((v16 + 184));
    v71 = sub_217753348();
    MEMORY[0x21CEA23B0](v71);

    goto LABEL_11;
  }

  v39 = *(v16 + 528);
  v40 = *(v16 + 520);
  v41 = *(v16 + 496);
  v42 = *(v16 + 464);
  v43 = *(v16 + 472);
  v44 = *(v16 + 432);

  __swift_destroy_boxed_opaque_existential_1((v16 + 184));
  (*(v43 + 8))(v41, v44);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v44);
  v45 = *(v43 + 32);
  v46 = OUTLINED_FUNCTION_85_3();
  v45(v46);
  __swift_destroy_boxed_opaque_existential_1((v16 + 264));
  v47 = OUTLINED_FUNCTION_329_0();
  v45(v47);
  OUTLINED_FUNCTION_314_0();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_13_3();

  v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21762F754()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[61];
  v2 = v0[60];
  v3 = v0[58];
  (*(v0[59] + 8))(v0[62], v0[54]);
  OUTLINED_FUNCTION_314_0();

  OUTLINED_FUNCTION_20_0();
  v5 = v0[69];

  return v4();
}

uint64_t sub_21762F7F0()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(dword_217787430);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_21762F884()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(&unk_2177873F8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_21762F918()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(dword_2177873B8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_21762FA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[46] = a2;
  v3[47] = a3;
  v3[45] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD30, &qword_217787140);
  v3[50] = v5;
  v6 = *(v5 - 8);
  v3[51] = v6;
  v7 = *(v6 + 64) + 15;
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21762FB40, 0, 0);
}

uint64_t sub_21762FB40()
{
  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_904();
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v36 = **(v0 + 368);
    do
    {
      v37 = v2;
      v5 = *(v0 + 384);
      v4 = *(v0 + 392);
      sub_21754240C(v3, v0 + 16, &qword_27CB2AD10, &unk_21775A010);
      v6 = *(v0 + 16);
      v7 = sub_217752538();
      v8 = OUTLINED_FUNCTION_311();
      __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
      sub_2171F3F0C((v0 + 24), v0 + 256);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      sub_2171F3F0C((v0 + 256), (v11 + 4));
      v11[9] = v6;
      sub_21754240C(v4, v5, &qword_27CB24D78, &qword_217759EA0);
      LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);

      v13 = *(v0 + 384);
      if (v5 == 1)
      {
        sub_2171F0790(*(v0 + 384), &qword_27CB24D78, &qword_217759EA0);
      }

      else
      {
        sub_217752528();
        OUTLINED_FUNCTION_72_16();
        (*(v14 + 8))(v13, v7);
      }

      if (*v12)
      {
        v15 = v11[3];
        v16 = *v12;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = sub_217752498();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD10, &unk_21775A010);
      v20 = v19 | v17;
      if (v19 | v17)
      {
        v20 = v0 + 296;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0;
        *(v0 + 312) = v17;
        *(v0 + 320) = v19;
      }

      v21 = *(v0 + 392);
      *(v0 + 328) = 1;
      *(v0 + 336) = v20;
      *(v0 + 344) = v36;
      swift_task_create();

      sub_2171F0790(v21, &qword_27CB24D78, &qword_217759EA0);
      v3 += 48;
      v2 = v37 - 1;
    }

    while (v37 != 1);
  }

  v22 = *(v0 + 416);
  v23 = **(v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD10, &unk_21775A010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  sub_217752568();
  *(v0 + 424) = MEMORY[0x277D84F90];
  v24 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 432) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_225_6(v25);
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2822004E8](v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_21762FE68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 424);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_21762FF68()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 64);
  v2 = *(v0 + 424);
  if (v1)
  {
    *(v0 + 112) = v1;
    sub_2171F3F0C((v0 + 72), v0 + 120);
    sub_21754240C(v0 + 112, v0 + 160, &qword_27CB2AD10, &unk_21775A010);
    *(v0 + 208) = *(v0 + 160);
    sub_2171F3F0C((v0 + 168), v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 424);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = *(v4 + 16);
      v32 = *(v0 + 424);
      sub_2172B0B30();
      v4 = v33;
    }

    v5 = *(v4 + 16);
    if (v5 >= *(v4 + 24) >> 1)
    {
      sub_2172B0B30();
      v4 = v34;
    }

    sub_2171F0790(v0 + 112, &qword_27CB2AD10, &unk_21775A010);
    *(v4 + 16) = v5 + 1;
    v6 = (v4 + 48 * v5);
    v7 = *(v0 + 208);
    v8 = *(v0 + 240);
    v6[3] = *(v0 + 224);
    v6[4] = v8;
    v6[2] = v7;
    *(v0 + 424) = v4;
    v9 = *(MEMORY[0x277D85828] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 432) = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_225_6();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = *(v0 + 392);
    v21 = *(v0 + 384);
    v22 = *(v0 + 360);
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
    *v22 = v2;

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_217630148()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[49];
  v2 = v0[48];
  (*(v0[51] + 8))(v0[52], v0[50]);
  v3 = v0[44];

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2176301DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_217630200, 0, 0);
}

uint64_t sub_217630200()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[8];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v0[5] = v3;
  v0[6] = v2;
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[10] = v4;
  *v4 = v5;
  v4[1] = sub_2176302C4;

  return _MusicLibraryMappable.libraryMapped()();
}

uint64_t sub_2176302C4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2176303BC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 56);
  *v1 = *(v0 + 72);
  sub_2171F3F0C((v0 + 16), (v1 + 1));
  OUTLINED_FUNCTION_20_0();
  v4 = v2;

  return v4();
}

uint64_t sub_217630434()
{
  OUTLINED_FUNCTION_10();
  __swift_deallocate_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_217630490(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = *(a2 + 16);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v3[24] = *(v5 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21763056C, 0, 0);
}

uint64_t sub_21763056C()
{
  OUTLINED_FUNCTION_182();
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v0[15] = sub_217752338();
  v0[28] = MusicItemCollection.items.getter(v5, v6);
  v7 = sub_2177522A8();
  v0[16] = v7;
  v8 = v0[28];
  v9 = v0[22];
  if (v7 == sub_217752388())
  {
    OUTLINED_FUNCTION_361_0();
    v0[18] = v0[15];
    OUTLINED_FUNCTION_162_1();
    (*(v10 + 16))(v0 + 2, v1, v2);
    OUTLINED_FUNCTION_365_0();
    v11 = *(v2 + 24);
    OUTLINED_FUNCTION_32_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_166_9();
    MusicItemCollection.init<A>(updatedItems:existingCollection:)(v12, v13, v14, v15, v11, v16, v17);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1279();

    __asm { BRAA            X1, X16 }
  }

  v20 = v0[28];
  v21 = v0[22];
  OUTLINED_FUNCTION_85_3();
  sub_217752358();
  v22 = OUTLINED_FUNCTION_340();
  if (v1)
  {
    v23 = OUTLINED_FUNCTION_251_1(v22, v0[28]);
    v20(v23);
  }

  else
  {
    v28 = v0[24];
    v29 = v0[22];
    result = sub_217752AC8();
    if (v28 != 8)
    {
      __break(1u);
      return result;
    }

    v30 = OUTLINED_FUNCTION_295_0(result);
    MEMORY[8](v30);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_360_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[30] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_219_6(v24);
  OUTLINED_FUNCTION_1279();

  return sub_21762EC0C();
}

uint64_t sub_217630758()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v3[31] = v0;

  if (v0)
  {
    v10 = v3[27];
    v9 = v3[28];
    v11 = v3[22];
    v12 = v3[23];

    (*(v12 + 8))(v10, v11);
    v13 = v3[15];
  }

  else
  {
    v14 = v3[27];
    v15 = v3[22];
    v16 = v3[23];
    v17 = *(v16 + 8);
    v3[32] = v17;
    v3[33] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v15);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2176308AC()
{
  OUTLINED_FUNCTION_182();
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  (*(v0 + 232))(*(v0 + 200), v3, v4);
  OUTLINED_FUNCTION_365_0();
  sub_2177523C8();
  (v2)(v3, v4);
  v5 = *(v0 + 128);
  v6 = *(v0 + 224);
  v7 = *(v0 + 176);
  if (v5 == sub_217752388())
  {
    OUTLINED_FUNCTION_361_0();
    *(v0 + 144) = *(v0 + 120);
    OUTLINED_FUNCTION_162_1();
    (*(v8 + 16))(v0 + 16, v1, v2);
    OUTLINED_FUNCTION_365_0();
    v9 = *(v2 + 24);
    OUTLINED_FUNCTION_32_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_166_9();
    MusicItemCollection.init<A>(updatedItems:existingCollection:)(v10, v11, v12, v13, v9, v14, v15);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1279();

    __asm { BRAA            X1, X16 }
  }

  v18 = *(v0 + 224);
  v19 = *(v0 + 176);
  OUTLINED_FUNCTION_85_3();
  sub_217752358();
  v20 = OUTLINED_FUNCTION_340();
  if (v1)
  {
    v21 = OUTLINED_FUNCTION_251_1(v20, *(v0 + 224));
    v18(v21);
  }

  else
  {
    v26 = *(v0 + 192);
    v27 = *(v0 + 176);
    result = sub_217752AC8();
    if (v26 != 8)
    {
      __break(1u);
      return result;
    }

    v28 = OUTLINED_FUNCTION_295_0(result);
    MEMORY[8](v28);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_360_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 240) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_219_6();
  OUTLINED_FUNCTION_1279();

  return sub_21762EC0C();
}

uint64_t sub_217630AB0()
{
  OUTLINED_FUNCTION_10();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  OUTLINED_FUNCTION_20_0();
  v5 = v0[31];

  return v4();
}

uint64_t sub_217630B20(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  *(v4 + 144) = a1;
  *(v4 + 217) = *a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217630B40()
{
  OUTLINED_FUNCTION_845();
  v1 = *(v0 + 217);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = swift_task_alloc();
  v5 = *(v3 + 16);
  *(v0 + 168) = v5;
  *(v4 + 16) = v5;
  v6 = *(v3 + 24);
  *(v0 + 176) = v6;
  *(v4 + 24) = v6;
  OUTLINED_FUNCTION_352();
  v7 = type metadata accessor for _MusicLibraryMapping.Item();
  WitnessTable = swift_getWitnessTable();
  sub_2175FA70C(sub_217635EBC, v4, v3, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v10 = OUTLINED_FUNCTION_56_0();
  _MusicLibraryMapping.Request.init(mappingItems:)(v10, v11);
  *(v0 + 184) = v15;
  *(v0 + 120) = v15;
  *(v0 + 216) = v1;
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  OUTLINED_FUNCTION_352();
  v13 = type metadata accessor for _MusicLibraryMapping.Request();
  *v12 = v0;
  v12[1] = sub_217630CC0;

  return _MusicLibraryMapping.Request.mappedItems(scope:)((v0 + 216), v13);
}

uint64_t sub_217630CC0()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  OUTLINED_FUNCTION_155();
  v5 = v4;
  OUTLINED_FUNCTION_42_0();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  v5[25] = v0;

  if (!v0)
  {
    v11 = v5[23];

    v5[26] = v3;
  }

  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_217630DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = v14[25];
  v17 = v14[21];
  v16 = v14[22];
  v19 = v14[19];
  v18 = v14[20];
  v38 = v14[18];
  v14[16] = v14[26];
  v20 = swift_task_alloc();
  *v20 = v17;
  v20[1] = v16;
  KeyPath = swift_getKeyPath();

  type metadata accessor for _MusicLibraryMapping.MappedItem();
  v22 = sub_217752418();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_2175FA70C(sub_217635EDC, KeyPath, v22, v17, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);

  v14[17] = v25;
  OUTLINED_FUNCTION_41_0(v19);
  (*(v26 + 16))(v14 + 2, v18, v19);
  v27 = OUTLINED_FUNCTION_365_0();
  OUTLINED_FUNCTION_32_0();
  v28 = swift_getWitnessTable();
  MusicItemCollection.init<A>(updatedItems:existingCollection:)((v14 + 17), v14 + 2, v17, v27, v16, v28, v38);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_120_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, a11, a12, a13, a14);
}

uint64_t sub_217630F5C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_20_0();
  v3 = *(v0 + 200);

  return v2();
}

uint64_t sub_217630FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v17 - v13;
  type metadata accessor for _MusicLibraryMapping.Item();
  (*(a3 + 8))(a2, a3);
  MusicItem._libraryMappingItemKind.getter(a2, &v18);
  v15 = *(v7 + 16);
  v15(v14, a1, a2);
  v15(v10, a1, a2);
  result = _MusicLibraryMapping.Item.__allocating_init(id:kind:existingCatalogItem:context:)();
  *v17 = result;
  return result;
}

uint64_t sub_217631134(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2172849C8;

  return MusicItemCollection.libraryMapped(policy:scope:)(a1, v8, a3, a4);
}

uint64_t *sub_2176311E4(uint64_t a1, unint64_t a2, char a3, _OWORD *a4, uint64_t a5)
{
  v6 = v5;
  v9 = *v5;
  v5[2] = a1;
  v5[3] = a2;
  if (a3 != 10)
  {
    *(v5 + 88) = a3;
    v13 = a4[1];
    *(v5 + 6) = *a4;
    *(v5 + 7) = v13;
    *(v5 + 8) = a4[2];
    *(v5 + 137) = *(a4 + 41);
    *(v5 + 153) = 0;
    goto LABEL_5;
  }

  sub_21754240C(a4, &v23, &qword_27CB27D20, &qword_217758B80);
  if (v25[24] != 255)
  {
    sub_2171F0790(a4, &qword_27CB27D20, &qword_217758B80);
    *&v27[9] = *&v25[9];
    v12 = v24;
    v26[1] = v24;
    *v27 = *v25;
    v26[0] = v23;
    *(v5 + 11) = v23;
    *(v5 + 13) = v12;
    *(v5 + 15) = *v27;
    *(v5 + 129) = *&v27[9];
    *(v5 + 153) = 1;
LABEL_5:
    v14 = *(a5 + 16);
    *(v5 + 2) = *a5;
    *(v5 + 3) = v14;
    *(v5 + 4) = *(a5 + 32);
    v5[10] = *(a5 + 48);
    return v6;
  }

  sub_217751DE8();
  sub_2171F0790(&v23, &qword_27CB27D20, &qword_217758B80);
  if (qword_280BE8358 != -1)
  {
    swift_once();
  }

  v16 = sub_217751AF8();
  __swift_project_value_buffer(v16, qword_280C02570);
  sub_217751DE8();
  v17 = sub_217751AD8();
  v18 = sub_217752808();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v26[0] = v20;
    *v19 = 136446210;
    v21 = sub_21729C0E8(a1, a2, v26);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_2171EE000, v17, v18, "Failed to create a valid library mapping item for item with id %{public}s. Please make sure to provide the item kind information when library mapping.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x21CEA4360](v20, -1, -1);
    MEMORY[0x21CEA4360](v19, -1, -1);
  }

  else
  {
  }

  sub_2172758B4(a5);
  sub_2171F0790(a4, &qword_27CB27D20, &qword_217758B80);
  v22 = v6[3];

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2176314B4()
{
  OUTLINED_FUNCTION_350_0();
  v10 = *v1;
  v1[2] = v4;
  v1[3] = v5;
  if (v6 != 10)
  {
    *(v0 + 96) = v6;
    v18 = v3[1];
    *(v0 + 104) = *v3;
    *(v0 + 120) = v18;
    *(v0 + 136) = v3[2];
    *(v0 + 145) = *(v3 + 41);
    *(v0 + 161) = 0;
    goto LABEL_5;
  }

  v11 = v9;
  v12 = v5;
  v13 = v4;
  sub_21754240C(v3, &v33, v7, v8);
  if (v35[24] != 255)
  {
    OUTLINED_FUNCTION_173_10();
    sub_2171F0790(v14, v15, v16);
    *&v37[9] = *&v35[9];
    v17 = v34;
    v36[1] = v34;
    *v37 = *v35;
    v36[0] = v33;
    *(v0 + 96) = v33;
    *(v0 + 112) = v17;
    *(v0 + 128) = *v37;
    *(v0 + 137) = *&v37[9];
    *(v0 + 161) = 1;
LABEL_5:
    OUTLINED_FUNCTION_351_0();
    *(v0 + 73) = *(v2 + 41);
    return v0;
  }

  v32 = v11;
  sub_217751DE8();
  OUTLINED_FUNCTION_173_10();
  sub_2171F0790(v20, v21, v22);
  if (qword_280BE8358 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v23 = sub_217751AF8();
  __swift_project_value_buffer(v23, qword_280C02570);
  sub_217751DE8();
  v24 = sub_217751AD8();
  v25 = sub_217752808();

  if (os_log_type_enabled(v24, v25))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_187_6();
    v26 = swift_slowAlloc();
    *&v36[0] = v26;
    *v24 = 136446210;
    v27 = sub_21729C0E8(v13, v12, v36);

    *(v24 + 4) = v27;
    _os_log_impl(&dword_2171EE000, v24, v25, "Failed to create a valid library mapping item for item with id %{public}s. Please make sure to provide the item kind information when library mapping.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
  }

  v32(v2);
  OUTLINED_FUNCTION_173_10();
  sub_2171F0790(v28, v29, v30);
  v31 = *(v0 + 24);

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_217631748()
{
  OUTLINED_FUNCTION_350_0();
  v10 = *v1;
  v1[2] = v4;
  v1[3] = v5;
  if (v6 != 10)
  {
    *(v0 + 88) = v6;
    v20 = *(v3 + 16);
    *(v0 + 96) = *v3;
    *(v0 + 112) = v20;
    *(v0 + 128) = *(v3 + 32);
    *(v0 + 144) = *(v3 + 48);
    *(v0 + 152) = 0;
    goto LABEL_5;
  }

  v11 = v9;
  v12 = v5;
  v13 = v4;
  sub_21754240C(v3, &v35, v7, v8);
  if (*(&v35 + 1))
  {
    OUTLINED_FUNCTION_173_10();
    sub_2171F0790(v14, v15, v16);
    v17 = v38;
    v40 = v38;
    v18 = v37;
    v19 = v36;
    v39[1] = v36;
    v39[2] = v37;
    v39[0] = v35;
    *(v0 + 88) = v35;
    *(v0 + 104) = v19;
    *(v0 + 120) = v18;
    *(v0 + 136) = v17;
    *(v0 + 152) = 1;
LABEL_5:
    OUTLINED_FUNCTION_351_0();
    *(v0 + 80) = *(v2 + 48);
    return v0;
  }

  v34 = v11;
  sub_217751DE8();
  OUTLINED_FUNCTION_173_10();
  sub_2171F0790(v22, v23, v24);
  if (qword_280BE8358 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v25 = sub_217751AF8();
  __swift_project_value_buffer(v25, qword_280C02570);
  sub_217751DE8();
  v26 = sub_217751AD8();
  v27 = sub_217752808();

  if (os_log_type_enabled(v26, v27))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_187_6();
    v28 = swift_slowAlloc();
    *&v39[0] = v28;
    *v26 = 136446210;
    v29 = sub_21729C0E8(v13, v12, v39);

    *(v26 + 4) = v29;
    _os_log_impl(&dword_2171EE000, v26, v27, "Failed to create a valid library mapping item for item with id %{public}s. Please make sure to provide the item kind information when library mapping.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
  }

  v34(v2);
  OUTLINED_FUNCTION_173_10();
  sub_2171F0790(v30, v31, v32);
  v33 = *(v0 + 24);

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t *sub_2176319D4(uint64_t a1, unint64_t a2, char a3, _OWORD *a4, _OWORD *a5)
{
  v6 = v5;
  v9 = *v5;
  v5[2] = a1;
  v5[3] = a2;
  if (a3 != 10)
  {
    *(v5 + 96) = a3;
    v13 = a4[1];
    *(v5 + 13) = *a4;
    *(v5 + 15) = v13;
    *(v5 + 17) = a4[2];
    *(v5 + 145) = *(a4 + 41);
    *(v5 + 161) = 0;
    goto LABEL_5;
  }

  sub_21754240C(a4, &v23, &qword_27CB245B8, &qword_217758AE0);
  if (v25[24] != 255)
  {
    sub_2171F0790(a4, &qword_27CB245B8, &qword_217758AE0);
    *&v27[9] = *&v25[9];
    v12 = v24;
    v26[1] = v24;
    *v27 = *v25;
    v26[0] = v23;
    *(v5 + 6) = v23;
    *(v5 + 7) = v12;
    *(v5 + 8) = *v27;
    *(v5 + 137) = *&v27[9];
    *(v5 + 161) = 1;
LABEL_5:
    v14 = a5[1];
    *(v5 + 2) = *a5;
    *(v5 + 3) = v14;
    *(v5 + 4) = a5[2];
    *(v5 + 73) = *(a5 + 41);
    return v6;
  }

  sub_217751DE8();
  sub_2171F0790(&v23, &qword_27CB245B8, &qword_217758AE0);
  if (qword_280BE8358 != -1)
  {
    swift_once();
  }

  v16 = sub_217751AF8();
  __swift_project_value_buffer(v16, qword_280C02570);
  sub_217751DE8();
  v17 = sub_217751AD8();
  v18 = sub_217752808();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v26[0] = v20;
    *v19 = 136446210;
    v21 = sub_21729C0E8(a1, a2, v26);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_2171EE000, v17, v18, "Failed to create a valid library mapping item for item with id %{public}s. Please make sure to provide the item kind information when library mapping.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x21CEA4360](v20, -1, -1);
    MEMORY[0x21CEA4360](v19, -1, -1);
  }

  else
  {
  }

  sub_21729C748(a5);
  sub_2171F0790(a4, &qword_27CB245B8, &qword_217758AE0);
  v22 = v6[3];

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t *sub_217631CA4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *v5;
  v5[2] = a1;
  v5[3] = a2;
  if (a3 != 10)
  {
    *(v5 + 88) = a3;
    v15 = *(a4 + 16);
    *(v5 + 6) = *a4;
    *(v5 + 7) = v15;
    *(v5 + 8) = *(a4 + 32);
    v5[18] = *(a4 + 48);
    *(v5 + 152) = 0;
    goto LABEL_5;
  }

  sub_21754240C(a4, &v25, &unk_27CB2AF80, &qword_217758C30);
  if (*(&v25 + 1))
  {
    sub_2171F0790(a4, &unk_27CB2AF80, &qword_217758C30);
    v12 = v28;
    v30 = v28;
    v13 = v27;
    v14 = v26;
    v29[1] = v26;
    v29[2] = v27;
    v29[0] = v25;
    *(v5 + 11) = v25;
    *(v5 + 13) = v14;
    *(v5 + 15) = v13;
    v5[17] = v12;
    *(v5 + 152) = 1;
LABEL_5:
    v16 = *(a5 + 16);
    *(v5 + 2) = *a5;
    *(v5 + 3) = v16;
    *(v5 + 4) = *(a5 + 32);
    v5[10] = *(a5 + 48);
    return v6;
  }

  sub_217751DE8();
  sub_2171F0790(&v25, &unk_27CB2AF80, &qword_217758C30);
  if (qword_280BE8358 != -1)
  {
    swift_once();
  }

  v18 = sub_217751AF8();
  __swift_project_value_buffer(v18, qword_280C02570);
  sub_217751DE8();
  v19 = sub_217751AD8();
  v20 = sub_217752808();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v29[0] = v22;
    *v21 = 136446210;
    v23 = sub_21729C0E8(a1, a2, v29);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_2171EE000, v19, v20, "Failed to create a valid library mapping item for item with id %{public}s. Please make sure to provide the item kind information when library mapping.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CEA4360](v22, -1, -1);
    MEMORY[0x21CEA4360](v21, -1, -1);
  }

  else
  {
  }

  sub_217283DC8(a5);
  sub_2171F0790(a4, &unk_27CB2AF80, &qword_217758C30);
  v24 = v6[3];

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_217631F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (a3 == 10)
  {
    v6 = (v5 + 88);
  }

  else
  {
    v6 = (v5 + 96);
    *(v5 + 88) = a3;
  }

  v7 = *(a4 + 16);
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = *(a4 + 32);
  *(v6 + 41) = *(a4 + 41);
  *(v5 + 153) = a3 == 10;
  return OUTLINED_FUNCTION_235_3(a1, a2, a3, a4, a5);
}

uint64_t sub_217631FB4(uint64_t a1, uint64_t a2, char a3, _OWORD *a4, _OWORD *a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (a3 == 10)
  {
    v6 = (v5 + 96);
  }

  else
  {
    v6 = (v5 + 104);
    *(v5 + 96) = a3;
  }

  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  *(v6 + 41) = *(a4 + 41);
  *(v5 + 161) = a3 == 10;
  v8 = a5[1];
  *(v5 + 32) = *a5;
  *(v5 + 48) = v8;
  *(v5 + 64) = a5[2];
  *(v5 + 73) = *(a5 + 41);
  return v5;
}

uint64_t sub_217632018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (a3 == 10)
  {
    v6 = v5 + 88;
  }

  else
  {
    v6 = v5 + 96;
    *(v5 + 88) = a3;
  }

  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  *(v5 + 152) = a3 == 10;
  return OUTLINED_FUNCTION_235_3(a1, a2, a3, a4, a5);
}

uint64_t sub_217632060()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(&unk_217787368);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_2176320F4()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(dword_217787328);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_217632188()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(&unk_2177872D8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_21763221C()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(&unk_217787288);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_2176322B0()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(&dword_217787240);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_217632344()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(dword_2177871B0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_2176323D8()
{
  OUTLINED_FUNCTION_173_0();
  v10 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_83_17(v1, v2, v3);
  OUTLINED_FUNCTION_9_14(&dword_2177870F8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_42(v5);

  return v8(v7);
}

uint64_t sub_217632484(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_335_0();
  OUTLINED_FUNCTION_345_0();
  v5 = sub_217753238();

  return a3(a1, a2, v5);
}

unint64_t sub_2176324F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_335_0();
  sub_217751FF8();
  v6 = sub_217753238();

  return sub_217632BA0(a1, a2, a3, v6);
}

unint64_t sub_217632574()
{
  OUTLINED_FUNCTION_289_0();
  OUTLINED_FUNCTION_345_0();
  sub_217753238();
  v0 = OUTLINED_FUNCTION_328_0();

  return sub_217632C60(v0, v1, v2, v3, v4);
}

unint64_t sub_2176325CC()
{
  OUTLINED_FUNCTION_138_6();
  sub_2175F9CC4();
  v0 = OUTLINED_FUNCTION_188_2();

  return sub_217632D14(v0, v1);
}

unint64_t sub_217632604(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_217752CA8();
  v5 = sub_217751EA8();

  return sub_217632EA0(a1, v5);
}

unint64_t sub_217632668()
{
  OUTLINED_FUNCTION_289_0();
  sub_217751FF8();
  OUTLINED_FUNCTION_345_0();
  sub_217753238();
  v0 = OUTLINED_FUNCTION_328_0();

  return sub_217633024(v0, v1, v2, v3, v4);
}

unint64_t sub_2176326D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_217752A28();

  return sub_217633120(a1, v5);
}

unint64_t sub_217632798()
{
  OUTLINED_FUNCTION_335_0();
  OUTLINED_FUNCTION_342_0();
  v0 = sub_217753238();
  return sub_217634F8C(v0);
}

unint64_t sub_2176327E4(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2175F8F38();

  return sub_21763376C(a1 & 1, v4);
}

unint64_t sub_217632828()
{
  OUTLINED_FUNCTION_138_6();
  sub_2175F8F20();
  v0 = OUTLINED_FUNCTION_188_2();

  return sub_2176338B4(v0, v1);
}

uint64_t sub_2176328B8(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_335_0();
  a2(v8, a1);
  v5 = sub_217753238();

  return a3(a1, v5);
}

unint64_t sub_217632930()
{
  OUTLINED_FUNCTION_138_6();
  v1 = sub_2175F8E18();
  return sub_217634E70(v0, v1, Playlist.LegacyModelPlaylistPropertyKey.rawValue.getter);
}

unint64_t sub_217632978()
{
  OUTLINED_FUNCTION_138_6();
  sub_2175F8D58();
  v0 = OUTLINED_FUNCTION_188_2();

  return sub_217634190(v0, v1);
}

unint64_t sub_2176329B0()
{
  OUTLINED_FUNCTION_138_6();
  sub_2175F8E00();
  v0 = OUTLINED_FUNCTION_188_2();

  return sub_217634304(v0, v1);
}

unint64_t sub_2176329E8()
{
  OUTLINED_FUNCTION_138_6();
  sub_2175F8FA4();
  v0 = OUTLINED_FUNCTION_188_2();

  return sub_2176347FC(v0, v1);
}

unint64_t sub_217632A20()
{
  OUTLINED_FUNCTION_138_6();
  v1 = sub_2175F8FBC();
  return sub_217634E70(v0, v1, Song.LegacyModelSongPropertyKey.rawValue.getter);
}

unint64_t sub_217632A68()
{
  OUTLINED_FUNCTION_335_0();
  OUTLINED_FUNCTION_342_0();
  v0 = sub_217753238();
  return sub_217634F8C(v0);
}

unint64_t sub_217632AB4()
{
  OUTLINED_FUNCTION_138_6();
  sub_2175F9018();
  v0 = OUTLINED_FUNCTION_188_2();

  return sub_217634FB8(v0, v1);
}

unint64_t sub_217632AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_217753058() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_217632BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ~(-1 << *(v4 + 32));
  for (i = a4 & v7; ((1 << i) & *(v4 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    v9 = (*(v4 + 48) + 24 * i);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_217753058() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_217632C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = ~(-1 << *(v5 + 32));
  for (i = a5 & v8; ((1 << i) & *(v5 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    v10 = *(v5 + 48) + 32 * i;
    v11 = *(v10 + 16) == a3 && *(v10 + 24) == a4;
    if (v11 || (sub_217753058() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_217632D14(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000010;
          v8 = 0x80000002177AA290;
        }

        else
        {
          v8 = 0xE500000000000000;
          v7 = 0x726568746FLL;
        }
      }

      else
      {
        v7 = 0xD000000000000015;
        v8 = 0x80000002177AA270;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0xD000000000000010 : 0x726568746FLL;
        v10 = a1 == 1 ? 0x80000002177AA290 : 0xE500000000000000;
      }

      else
      {
        v9 = 0xD000000000000015;
        v10 = 0x80000002177AA270;
      }

      if (v7 == v9 && v8 == v10)
      {
        break;
      }

      v12 = sub_217753058();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_217632EA0(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  v4 = sub_217752CA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v4, v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v17 = v2 + 64;
  v11 = ~(-1 << *(v2 + 32));
  for (i = a2 & v11; ((1 << i) & *(v17 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v11)
  {
    (*(v5 + 16))(v10, *(v16 + 48) + *(v5 + 72) * i, v4, v8);
    v13 = sub_217751F08();
    (*(v5 + 8))(v10, v4);
    if (v13)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_217633024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_217753058() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_217753058() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_217633120(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2172CB124(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x21CEA2D90](v8, a1);
    sub_2174E6BDC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2176331E4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000025;
      v8 = "MPModelPropertyCuratorSubKind";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000028;
          v8 = "yricsHasLibraryLyrics";
          break;
        case 2:
          v7 = 0xD000000000000023;
          v8 = "yricsHasTimeSyncedLyrics";
          break;
        case 3:
          v7 = 0xD000000000000019;
          v8 = "yricsHasStoreLyrics";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000025;
      v11 = "MPModelPropertyCuratorSubKind";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000028;
          v11 = "yricsHasLibraryLyrics";
          break;
        case 2:
          v10 = 0xD000000000000023;
          v11 = "yricsHasTimeSyncedLyrics";
          break;
        case 3:
          v10 = 0xD000000000000019;
          v11 = "yricsHasStoreLyrics";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_217753058();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2176333BC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000021;
      v8 = "SocialContributor";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD00000000000001ELL;
          v8 = "ecordLabelArtwork";
          break;
        case 2:
          v7 = 0xD00000000000002ELL;
          v8 = "MPModelPropertyRecordLabelName";
          break;
        case 3:
          v7 = 0xD000000000000029;
          v8 = "ecordLabelShortDescriptionText";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000021;
      v11 = "SocialContributor";
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000001ELL;
          v11 = "ecordLabelArtwork";
          break;
        case 2:
          v10 = 0xD00000000000002ELL;
          v11 = "MPModelPropertyRecordLabelName";
          break;
        case 3:
          v10 = 0xD000000000000029;
          v11 = "ecordLabelShortDescriptionText";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_217753058();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_217633594(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000027;
      v8 = "omeSharingAssetAvailable";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD00000000000002DLL;
          v8 = "toreAssetRedownloadable";
          break;
        case 2:
          v7 = 0xD000000000000028;
          v8 = "toreAssetSubscriptionRequired";
          break;
        case 3:
          v7 = 0xD000000000000025;
          v8 = "toreAssetNeedsUserUpload";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000027;
      v11 = "omeSharingAssetAvailable";
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000002DLL;
          v11 = "toreAssetRedownloadable";
          break;
        case 2:
          v10 = 0xD000000000000028;
          v11 = "toreAssetSubscriptionRequired";
          break;
        case 3:
          v10 = 0xD000000000000025;
          v11 = "toreAssetNeedsUserUpload";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_217753058();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21763376C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a1)
    {
      v6 = "MPModelPropertyGenreName";
    }

    else
    {
      v6 = "toreAssetEndpointType";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000024 : 0xD000000000000018;
      v9 = *(*(v2 + 48) + v4) ? "MPModelPropertyGenreName" : "toreAssetEndpointType";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_217753058();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2176338B4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001CLL;
      v8 = "hipAlbumRepresentativeSong";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD00000000000001FLL;
          v8 = "MPModelPropertyArtistArtwork";
          break;
        case 2:
          v7 = 0xD000000000000023;
          v8 = "MPModelPropertyArtistAlbumCount";
          break;
        case 3:
          v7 = 0xD00000000000002DLL;
          v8 = "rtistCleanSongCount";
          break;
        case 4:
          v7 = 0xD000000000000028;
          v8 = "rtistCleanDownloadedSongCount";
          break;
        case 5:
          v7 = 0xD000000000000031;
          v8 = "rtistDownloadedSongCount";
          break;
        case 6:
          v7 = 0xD00000000000001FLL;
          v8 = "perienceAvailable";
          break;
        case 7:
          v7 = 0xD00000000000001FLL;
          v8 = "MPModelPropertyArtistIsDisliked";
          break;
        case 8:
          v7 = 0xD00000000000001DLL;
          v8 = "MPModelPropertyArtistIsFavorite";
          break;
        case 9:
          v7 = 0xD000000000000022;
          v8 = "MPModelPropertyArtistIsPinned";
          break;
        case 0xA:
          v7 = 0xD000000000000025;
          v8 = "rtistDateFavorited";
          break;
        case 0xB:
          v7 = 0xD000000000000019;
          v8 = "rtistLibraryAddedDate";
          break;
        case 0xC:
          v7 = 0xD00000000000001ELL;
          v8 = "MPModelPropertyPersonName";
          break;
        case 0xD:
          v7 = 0xD00000000000001ELL;
          v8 = "MPModelPropertyArtistSongCount";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001CLL;
      v11 = "hipAlbumRepresentativeSong";
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000001FLL;
          v11 = "MPModelPropertyArtistArtwork";
          break;
        case 2:
          v10 = 0xD000000000000023;
          v11 = "MPModelPropertyArtistAlbumCount";
          break;
        case 3:
          v10 = 0xD00000000000002DLL;
          v11 = "rtistCleanSongCount";
          break;
        case 4:
          v10 = 0xD000000000000028;
          v11 = "rtistCleanDownloadedSongCount";
          break;
        case 5:
          v10 = 0xD000000000000031;
          v11 = "rtistDownloadedSongCount";
          break;
        case 6:
          v10 = 0xD00000000000001FLL;
          v11 = "perienceAvailable";
          break;
        case 7:
          v10 = 0xD00000000000001FLL;
          v11 = "MPModelPropertyArtistIsDisliked";
          break;
        case 8:
          v10 = 0xD00000000000001DLL;
          v11 = "MPModelPropertyArtistIsFavorite";
          break;
        case 9:
          v10 = 0xD000000000000022;
          v11 = "MPModelPropertyArtistIsPinned";
          break;
        case 10:
          v10 = 0xD000000000000025;
          v11 = "rtistDateFavorited";
          break;
        case 11:
          v10 = 0xD000000000000019;
          v11 = "rtistLibraryAddedDate";
          break;
        case 12:
          v10 = 0xD00000000000001ELL;
          v11 = "MPModelPropertyPersonName";
          break;
        case 13:
          v10 = 0xD00000000000001ELL;
          v11 = "MPModelPropertyArtistSongCount";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_217753058();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_217633CAC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001ALL;
      v8 = "ecordLabelDescriptionText";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD00000000000001CLL;
          v8 = "MPModelPropertyCuratorKind";
          break;
        case 2:
          v7 = 0xD000000000000019;
          v8 = "rtistLibraryAddedDate";
          break;
        case 3:
          v7 = 0xD00000000000001FLL;
          v8 = "MPModelPropertyCuratorHandle";
          break;
        case 4:
          v7 = 0xD000000000000026;
          v8 = "MPModelPropertyCuratorShortName";
          break;
        case 5:
          v7 = 0xD000000000000021;
          v8 = "uratorShortEditorNotes";
          break;
        case 6:
          v7 = 0xD00000000000001DLL;
          v8 = "uratorEditorNotes";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001ALL;
      v11 = "ecordLabelDescriptionText";
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000001CLL;
          v11 = "MPModelPropertyCuratorKind";
          break;
        case 2:
          v10 = 0xD000000000000019;
          v11 = "rtistLibraryAddedDate";
          break;
        case 3:
          v10 = 0xD00000000000001FLL;
          v11 = "MPModelPropertyCuratorHandle";
          break;
        case 4:
          v10 = 0xD000000000000026;
          v11 = "MPModelPropertyCuratorShortName";
          break;
        case 5:
          v10 = 0xD000000000000021;
          v11 = "uratorShortEditorNotes";
          break;
        case 6:
          v10 = 0xD00000000000001DLL;
          v11 = "uratorEditorNotes";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_217753058();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_217633EF4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000022;
      v8 = "hipPlaylistCurator";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000026;
          v8 = "adioStationArtwork";
          break;
        case 2:
          v7 = 0xD00000000000002DLL;
          v8 = "adioStationEditorNotes";
          break;
        case 3:
          v7 = 0xD00000000000001FLL;
          v8 = "adioStationHasExplicitContent";
          break;
        case 4:
          v7 = 0xD00000000000001FLL;
          v8 = "MPModelPropertyRadioStationLive";
          break;
        case 5:
          v7 = 0xD000000000000033;
          v8 = "MPModelPropertyRadioStationName";
          break;
        case 6:
          v7 = 0xD000000000000027;
          v8 = "derBundleIdentifier";
          break;
        case 7:
          v7 = 0xD000000000000030;
          v8 = "adioStationProviderName";
          break;
        case 8:
          v7 = 0xD00000000000002BLL;
          v8 = "derUniversalLink";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000022;
      v11 = "hipPlaylistCurator";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000026;
          v11 = "adioStationArtwork";
          break;
        case 2:
          v10 = 0xD00000000000002DLL;
          v11 = "adioStationEditorNotes";
          break;
        case 3:
          v10 = 0xD00000000000001FLL;
          v11 = "adioStationHasExplicitContent";
          break;
        case 4:
          v10 = 0xD00000000000001FLL;
          v11 = "MPModelPropertyRadioStationLive";
          break;
        case 5:
          v10 = 0xD000000000000033;
          v11 = "MPModelPropertyRadioStationName";
          break;
        case 6:
          v10 = 0xD000000000000027;
          v11 = "derBundleIdentifier";
          break;
        case 7:
          v10 = 0xD000000000000030;
          v11 = "adioStationProviderName";
          break;
        case 8:
          v10 = 0xD00000000000002BLL;
          v11 = "derUniversalLink";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_217753058();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_217634190(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000024;
      v6 = 0xD000000000000026;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "ileAssetNonPurgeable";
      }

      else
      {
        v6 = 0xD00000000000001ELL;
        v7 = "ileAssetProtectionType";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000024;
      v9 = *(*(v2 + 48) + v4) ? v7 : "MPModelPropertyLyricsText";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD000000000000026 : 0xD00000000000001ELL;
        v10 = a1 == 1 ? "ileAssetNonPurgeable" : "ileAssetProtectionType";
      }

      else
      {
        v10 = "MPModelPropertyLyricsText";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_217753058();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_217634304(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000037;
      v6 = "adioStationShortEditorNotes";
      switch(*(*(v14 + 48) + v4))
      {
        case 1:
          v6 = "tionUniversalIdentifier";
          v5 = 0xD00000000000002FLL;
          break;
        case 2:
          v6 = "laylistEntryUniversalIdentifier";
          goto LABEL_14;
        case 3:
          v6 = "laylistEntryPosition";
          goto LABEL_32;
        case 4:
          v6 = "odelPlaylistEntryType";
          goto LABEL_35;
        case 5:
          v6 = "MPModelRelationshipArtistGenre";
          v5 = 0xD00000000000001ALL;
          break;
        case 6:
          v6 = "ongShouldShowComposer";
          v5 = 0xD000000000000018;
          break;
        case 7:
          v6 = "MPModelPropertySongDiscNumber";
          goto LABEL_28;
        case 8:
          v6 = "ongKeepLocalManagedStatusReason";
          goto LABEL_30;
        case 9:
          v6 = "ongLastDevicePlaybackDate";
          goto LABEL_23;
        case 0xA:
          v6 = "odelProperty_GenericType";
LABEL_28:
          v5 = 0xD00000000000001BLL;
          break;
        case 0xB:
          v6 = "MPModelPropertyMovieArtwork";
          v5 = 0xD000000000000019;
          break;
        case 0xC:
          v6 = "MPModelPropertyMovieTitle";
          v5 = 0xD00000000000001CLL;
          break;
        case 0xD:
          v6 = "MPModelPropertyMovieDuration";
          v5 = 0xD00000000000002ALL;
          break;
        case 0xE:
          v6 = "ovieLastDevicePlaybackDate";
          goto LABEL_14;
        case 0xF:
          v6 = "ovieLibraryAddedDate";
          goto LABEL_16;
        case 0x10:
          v6 = "MPModelPropertyMovieReleaseDate";
LABEL_16:
          v5 = 0xD00000000000001FLL;
          break;
        case 0x11:
          v6 = "MPModelPropertyTVEpisodeArtwork";
          v5 = 0xD00000000000001DLL;
          break;
        case 0x12:
          v6 = "MPModelPropertyTVEpisodeTitle";
          v5 = 0xD000000000000020;
          break;
        case 0x13:
          v6 = "VEpisodeDuration";
          v5 = 0xD00000000000002ELL;
          break;
        case 0x14:
          v6 = "VEpisodeLastDevicePlaybackDate";
          goto LABEL_35;
        case 0x15:
          v6 = "VEpisodeLibraryAddedDate";
LABEL_23:
          v5 = 0xD000000000000023;
          break;
        case 0x16:
          v6 = "VEpisodeReleaseDate";
LABEL_32:
          v5 = 0xD000000000000025;
          break;
        case 0x17:
          v6 = "hipPlaylistEntryMovie";
LABEL_35:
          v5 = 0xD000000000000028;
          break;
        case 0x18:
          v6 = "hipPlaylistEntryPlaylist";
LABEL_14:
          v5 = 0xD000000000000024;
          break;
        case 0x19:
          v6 = "hipPlaylistEntrySong";
LABEL_30:
          v5 = 0xD000000000000029;
          break;
        case 0x1A:
          v6 = "hipPlaylistEntryTVEpisode";
          v5 = 0xD000000000000031;
          break;
        default:
          break;
      }

      v7 = v6 | 0x8000000000000000;
      v8 = 0xD000000000000037;
      v9 = "adioStationShortEditorNotes";
      switch(a1)
      {
        case 1:
          v9 = "tionUniversalIdentifier";
          v8 = 0xD00000000000002FLL;
          break;
        case 2:
          v9 = "laylistEntryUniversalIdentifier";
          goto LABEL_48;
        case 3:
          v9 = "laylistEntryPosition";
          goto LABEL_66;
        case 4:
          v9 = "odelPlaylistEntryType";
          goto LABEL_69;
        case 5:
          v9 = "MPModelRelationshipArtistGenre";
          v8 = 0xD00000000000001ALL;
          break;
        case 6:
          v9 = "ongShouldShowComposer";
          v8 = 0xD000000000000018;
          break;
        case 7:
          v9 = "MPModelPropertySongDiscNumber";
          goto LABEL_62;
        case 8:
          v9 = "ongKeepLocalManagedStatusReason";
          goto LABEL_64;
        case 9:
          v9 = "ongLastDevicePlaybackDate";
          goto LABEL_57;
        case 10:
          v9 = "odelProperty_GenericType";
LABEL_62:
          v8 = 0xD00000000000001BLL;
          break;
        case 11:
          v9 = "MPModelPropertyMovieArtwork";
          v8 = 0xD000000000000019;
          break;
        case 12:
          v9 = "MPModelPropertyMovieTitle";
          v8 = 0xD00000000000001CLL;
          break;
        case 13:
          v9 = "MPModelPropertyMovieDuration";
          v8 = 0xD00000000000002ALL;
          break;
        case 14:
          v9 = "ovieLastDevicePlaybackDate";
          goto LABEL_48;
        case 15:
          v9 = "ovieLibraryAddedDate";
          goto LABEL_50;
        case 16:
          v9 = "MPModelPropertyMovieReleaseDate";
LABEL_50:
          v8 = 0xD00000000000001FLL;
          break;
        case 17:
          v9 = "MPModelPropertyTVEpisodeArtwork";
          v8 = 0xD00000000000001DLL;
          break;
        case 18:
          v9 = "MPModelPropertyTVEpisodeTitle";
          v8 = 0xD000000000000020;
          break;
        case 19:
          v9 = "VEpisodeDuration";
          v8 = 0xD00000000000002ELL;
          break;
        case 20:
          v9 = "VEpisodeLastDevicePlaybackDate";
          goto LABEL_69;
        case 21:
          v9 = "VEpisodeLibraryAddedDate";
LABEL_57:
          v8 = 0xD000000000000023;
          break;
        case 22:
          v9 = "VEpisodeReleaseDate";
LABEL_66:
          v8 = 0xD000000000000025;
          break;
        case 23:
          v9 = "hipPlaylistEntryMovie";
LABEL_69:
          v8 = 0xD000000000000028;
          break;
        case 24:
          v9 = "hipPlaylistEntryPlaylist";
LABEL_48:
          v8 = 0xD000000000000024;
          break;
        case 25:
          v9 = "hipPlaylistEntrySong";
LABEL_64:
          v8 = 0xD000000000000029;
          break;
        case 26:
          v9 = "hipPlaylistEntryTVEpisode";
          v8 = 0xD000000000000031;
          break;
        default:
          break;
      }

      if (v5 == v8 && v7 == (v9 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_217753058();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2176347FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    while (1)
    {
      v5 = "questPropertyFilter";
      v6 = 0xD00000000000001BLL;
      v20 = v4;
      switch(*(*(v18 + 48) + v4))
      {
        case 1:
          v5 = "MPModelPropertyAlbumArtwork";
          v6 = 0xD00000000000002DLL;
          break;
        case 2:
          v7 = "MPModelPropertyAlbumCleanSongCount";
          goto LABEL_15;
        case 3:
          v8 = "MPModelPropertyAlbumCopyrightText";
          goto LABEL_29;
        case 4:
          v7 = "MPModelPropertyAlbumDownloadedDate";
LABEL_15:
          v5 = (v7 - 32);
          goto LABEL_16;
        case 5:
          v5 = "lbumDownloadedDate";
          goto LABEL_31;
        case 6:
          v8 = "MPModelPropertyAlbumDateFavorited";
LABEL_29:
          v5 = (v8 - 32);
          goto LABEL_33;
        case 7:
          v5 = "lbumDateFavorited";
          v6 = 0xD000000000000023;
          break;
        case 8:
          v5 = "lbumHasCleanContent";
          goto LABEL_35;
        case 9:
          v5 = "lbumHasExplicitContent";
          goto LABEL_24;
        case 0xA:
          v5 = "erienceAvailable";
LABEL_33:
          v6 = 0xD000000000000021;
          break;
        case 0xB:
          v5 = "lbumIsCompilation";
          goto LABEL_45;
        case 0xC:
          v5 = "MPModelPropertyAlbumIsDisliked";
          goto LABEL_45;
        case 0xD:
          v5 = "MPModelPropertyAlbumIsFavorite";
          v6 = 0xD000000000000020;
          break;
        case 0xE:
          v5 = "lbumLibraryAdded";
LABEL_35:
          v6 = 0xD000000000000026;
          break;
        case 0xF:
          v5 = "lbumLibraryAddEligible";
          goto LABEL_18;
        case 0x10:
          v5 = "MPModelPropertyAlbumIsPinned";
LABEL_18:
          v6 = 0xD00000000000001CLL;
          break;
        case 0x11:
          v5 = "MPModelPropertyAlbumPreorder";
          goto LABEL_41;
        case 0x12:
          v5 = "lbumIsStoreRedownloadable";
LABEL_31:
          v6 = 0xD000000000000028;
          break;
        case 0x13:
          v5 = "lbumKeepLocalEnableState";
          goto LABEL_39;
        case 0x14:
          v5 = "lbumKeepLocalManagedStatus";
LABEL_24:
          v6 = 0xD000000000000030;
          break;
        case 0x15:
          v5 = "agedStatusReason";
          goto LABEL_39;
        case 0x16:
          v5 = "lbumLastDevicePlaybackDate";
          v6 = 0xD000000000000024;
          break;
        case 0x17:
          v5 = "lbumLibraryAddedDate";
LABEL_41:
          v6 = 0xD000000000000029;
          break;
        case 0x18:
          v5 = "lbumReleaseDateComponents";
LABEL_16:
          v6 = 0xD000000000000022;
          break;
        case 0x19:
          v5 = "lbumSongPopularity";
          v6 = 0xD000000000000019;
          break;
        case 0x1A:
          v5 = "MPModelPropertyAlbumTitle";
          goto LABEL_45;
        case 0x1B:
          v5 = "MPModelPropertyAlbumTrackCount";
          v6 = 0xD00000000000001ALL;
          break;
        case 0x1C:
          v5 = "MPModelPropertyAlbumTraits";
          v6 = 0xD000000000000018;
          break;
        case 0x1D:
          v5 = "MPModelPropertyAlbumYear";
LABEL_45:
          v6 = 0xD00000000000001ELL;
          break;
        case 0x1E:
          v5 = "MPModelRelationshipAlbumArtist";
          v6 = 0xD00000000000001DLL;
          break;
        case 0x1F:
          v5 = "MPModelRelationshipAlbumGenre";
LABEL_39:
          v6 = 0xD00000000000002ALL;
          break;
        default:
          break;
      }

      v9 = v5 | 0x8000000000000000;
      v10 = 0xD00000000000001BLL;
      v11 = "questPropertyFilter";
      switch(a1)
      {
        case 1:
          v11 = "MPModelPropertyAlbumArtwork";
          v10 = 0xD00000000000002DLL;
          break;
        case 2:
          v12 = "MPModelPropertyAlbumCleanSongCount";
          goto LABEL_58;
        case 3:
          v13 = "MPModelPropertyAlbumCopyrightText";
          goto LABEL_72;
        case 4:
          v12 = "MPModelPropertyAlbumDownloadedDate";
LABEL_58:
          v11 = (v12 - 32);
          goto LABEL_59;
        case 5:
          v11 = "lbumDownloadedDate";
          goto LABEL_74;
        case 6:
          v13 = "MPModelPropertyAlbumDateFavorited";
LABEL_72:
          v11 = (v13 - 32);
          goto LABEL_76;
        case 7:
          v11 = "lbumDateFavorited";
          v10 = 0xD000000000000023;
          break;
        case 8:
          v11 = "lbumHasCleanContent";
          goto LABEL_78;
        case 9:
          v11 = "lbumHasExplicitContent";
          goto LABEL_67;
        case 10:
          v11 = "erienceAvailable";
LABEL_76:
          v10 = 0xD000000000000021;
          break;
        case 11:
          v11 = "lbumIsCompilation";
          goto LABEL_88;
        case 12:
          v11 = "MPModelPropertyAlbumIsDisliked";
          goto LABEL_88;
        case 13:
          v11 = "MPModelPropertyAlbumIsFavorite";
          v10 = 0xD000000000000020;
          break;
        case 14:
          v11 = "lbumLibraryAdded";
LABEL_78:
          v10 = 0xD000000000000026;
          break;
        case 15:
          v11 = "lbumLibraryAddEligible";
          goto LABEL_61;
        case 16:
          v11 = "MPModelPropertyAlbumIsPinned";
LABEL_61:
          v10 = 0xD00000000000001CLL;
          break;
        case 17:
          v11 = "MPModelPropertyAlbumPreorder";
          goto LABEL_84;
        case 18:
          v11 = "lbumIsStoreRedownloadable";
LABEL_74:
          v10 = 0xD000000000000028;
          break;
        case 19:
          v11 = "lbumKeepLocalEnableState";
          goto LABEL_82;
        case 20:
          v11 = "lbumKeepLocalManagedStatus";
LABEL_67:
          v10 = 0xD000000000000030;
          break;
        case 21:
          v11 = "agedStatusReason";
          goto LABEL_82;
        case 22:
          v11 = "lbumLastDevicePlaybackDate";
          v10 = 0xD000000000000024;
          break;
        case 23:
          v11 = "lbumLibraryAddedDate";
LABEL_84:
          v10 = 0xD000000000000029;
          break;
        case 24:
          v11 = "lbumReleaseDateComponents";
LABEL_59:
          v10 = 0xD000000000000022;
          break;
        case 25:
          v11 = "lbumSongPopularity";
          v10 = 0xD000000000000019;
          break;
        case 26:
          v11 = "MPModelPropertyAlbumTitle";
          goto LABEL_88;
        case 27:
          v11 = "MPModelPropertyAlbumTrackCount";
          v10 = 0xD00000000000001ALL;
          break;
        case 28:
          v11 = "MPModelPropertyAlbumTraits";
          v10 = 0xD000000000000018;
          break;
        case 29:
          v11 = "MPModelPropertyAlbumYear";
LABEL_88:
          v10 = 0xD00000000000001ELL;
          break;
        case 30:
          v11 = "MPModelRelationshipAlbumArtist";
          v10 = 0xD00000000000001DLL;
          break;
        case 31:
          v11 = "MPModelRelationshipAlbumGenre";
LABEL_82:
          v10 = 0xD00000000000002ALL;
          break;
        default:
          break;
      }

      if (v6 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v15 = sub_217753058();

      v4 = v20;
      if ((v15 & 1) == 0)
      {
        v4 = (v20 + 1) & v17;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    return v20;
  }

  return v4;
}

unint64_t sub_217634E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = ~(-1 << *(v3 + 32));
  for (i = a2 & v5; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v14 = *(*(v3 + 48) + i);
    v7 = a3();
    v9 = v8;
    if (v7 == a3() && v9 == v10)
    {

      return i;
    }

    v12 = sub_217753058();

    if (v12)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_217634F8C(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_217634FB8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x6D75626C61;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x727543656C707061;
          v9 = 1919906913;
          goto LABEL_26;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x747369747261;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x7265736F706D6F63;
          break;
        case 4:
          v8 = 0x7241746964657263;
          v9 = 1953720692;
          goto LABEL_26;
        case 5:
          v7 = 0xE700000000000000;
          v8 = 0x726F7461727563;
          break;
        case 6:
          v8 = 0x47726F7461727563;
          v9 = 1701998181;
LABEL_26:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 7:
          v8 = 0x6169726F74696465;
          v10 = 0x6D6574496CLL;
          goto LABEL_34;
        case 8:
          v8 = 0x65726E6567;
          break;
        case 9:
          v8 = 0xD000000000000016;
          v7 = 0x80000002177AA9F0;
          break;
        case 0xA:
          v7 = 0xE600000000000000;
          v8 = 0x73636972796CLL;
          break;
        case 0xB:
          v8 = 0x766F4D636973756DLL;
          v7 = 0xEA00000000006569;
          break;
        case 0xC:
          v8 = 0x646956636973756DLL;
          v7 = 0xEA00000000006F65;
          break;
        case 0xD:
          v7 = 0xE300000000000000;
          v8 = 7235952;
          break;
        case 0xE:
          v7 = 0xE700000000000000;
          v8 = 0x6D6574496E6970;
          break;
        case 0xF:
          v7 = 0xE800000000000000;
          goto LABEL_37;
        case 0x10:
          v11 = 0x726F68747541;
          goto LABEL_36;
        case 0x11:
          v7 = 0xED00007972746E45;
          goto LABEL_37;
        case 0x12:
          v8 = 0xD000000000000015;
          v7 = 0x80000002177AAA60;
          break;
        case 0x13:
          v11 = 0x7265646C6F46;
LABEL_36:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_37:
          v8 = 0x7473696C79616C70;
          break;
        case 0x14:
          v8 = 0xD000000000000012;
          v7 = 0x80000002177AAA90;
          break;
        case 0x15:
          v8 = 0x6F68536F69646172;
          v7 = 0xE900000000000077;
          break;
        case 0x16:
          v8 = 0x796C746E65636572;
          v10 = 0x6465646441;
          goto LABEL_34;
        case 0x17:
          v8 = 0x614C64726F636572;
          v7 = 0xEB000000006C6562;
          break;
        case 0x18:
          v8 = 0x72506C6169636F73;
          v10 = 0x656C69666FLL;
          goto LABEL_34;
        case 0x19:
          v7 = 0xE400000000000000;
          v8 = 1735290739;
          break;
        case 0x1A:
          v7 = 0xE700000000000000;
          v8 = 0x6E6F6974617473;
          break;
        case 0x1B:
          v8 = 0x655364656C746974;
          v10 = 0x6E6F697463;
LABEL_34:
          v7 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x1C:
          v8 = 0x6B63617274;
          break;
        case 0x1D:
          v8 = 0x646F736970457674;
          v7 = 0xE900000000000065;
          break;
        case 0x1E:
          v7 = 0xE800000000000000;
          v8 = 0x6E6F736165537674;
          break;
        case 0x1F:
          v7 = 0xE600000000000000;
          v8 = 0x776F68537674;
          break;
        case 0x20:
          v12 = 1768191297;
          goto LABEL_32;
        case 0x21:
          v12 = 1701079382;
LABEL_32:
          v7 = v12 | 0xED00006F00000000;
          v8 = 0x646564616F6C7075;
          break;
        default:
          break;
      }

      v13 = 0xE500000000000000;
      v14 = 0x6D75626C61;
      switch(a1)
      {
        case 1:
          v14 = 0x727543656C707061;
          v15 = 1919906913;
          goto LABEL_61;
        case 2:
          v13 = 0xE600000000000000;
          v14 = 0x747369747261;
          break;
        case 3:
          v13 = 0xE800000000000000;
          v14 = 0x7265736F706D6F63;
          break;
        case 4:
          v14 = 0x7241746964657263;
          v15 = 1953720692;
          goto LABEL_61;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 0x726F7461727563;
          break;
        case 6:
          v14 = 0x47726F7461727563;
          v15 = 1701998181;
LABEL_61:
          v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 7:
          v14 = 0x6169726F74696465;
          v16 = 0x6D6574496CLL;
          goto LABEL_69;
        case 8:
          v14 = 0x65726E6567;
          break;
        case 9:
          v14 = 0xD000000000000016;
          v13 = 0x80000002177AA9F0;
          break;
        case 10:
          v13 = 0xE600000000000000;
          v14 = 0x73636972796CLL;
          break;
        case 11:
          v14 = 0x766F4D636973756DLL;
          v13 = 0xEA00000000006569;
          break;
        case 12:
          v14 = 0x646956636973756DLL;
          v13 = 0xEA00000000006F65;
          break;
        case 13:
          v13 = 0xE300000000000000;
          v14 = 7235952;
          break;
        case 14:
          v13 = 0xE700000000000000;
          v14 = 0x6D6574496E6970;
          break;
        case 15:
          v13 = 0xE800000000000000;
          goto LABEL_72;
        case 16:
          v17 = 0x726F68747541;
          goto LABEL_71;
        case 17:
          v13 = 0xED00007972746E45;
          goto LABEL_72;
        case 18:
          v14 = 0xD000000000000015;
          v13 = 0x80000002177AAA60;
          break;
        case 19:
          v17 = 0x7265646C6F46;
LABEL_71:
          v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_72:
          v14 = 0x7473696C79616C70;
          break;
        case 20:
          v14 = 0xD000000000000012;
          v13 = 0x80000002177AAA90;
          break;
        case 21:
          v14 = 0x6F68536F69646172;
          v13 = 0xE900000000000077;
          break;
        case 22:
          v14 = 0x796C746E65636572;
          v16 = 0x6465646441;
          goto LABEL_69;
        case 23:
          v14 = 0x614C64726F636572;
          v13 = 0xEB000000006C6562;
          break;
        case 24:
          v14 = 0x72506C6169636F73;
          v16 = 0x656C69666FLL;
          goto LABEL_69;
        case 25:
          v13 = 0xE400000000000000;
          v14 = 1735290739;
          break;
        case 26:
          v13 = 0xE700000000000000;
          v14 = 0x6E6F6974617473;
          break;
        case 27:
          v14 = 0x655364656C746974;
          v16 = 0x6E6F697463;
LABEL_69:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 28:
          v14 = 0x6B63617274;
          break;
        case 29:
          v14 = 0x646F736970457674;
          v13 = 0xE900000000000065;
          break;
        case 30:
          v13 = 0xE800000000000000;
          v14 = 0x6E6F736165537674;
          break;
        case 31:
          v13 = 0xE600000000000000;
          v14 = 0x776F68537674;
          break;
        case 32:
          v18 = 1768191297;
          goto LABEL_67;
        case 33:
          v18 = 1701079382;
LABEL_67:
          v13 = v18 | 0xED00006F00000000;
          v14 = 0x646564616F6C7075;
          break;
        default:
          break;
      }

      if (v8 == v14 && v7 == v13)
      {
        break;
      }

      v20 = sub_217753058();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2176357A8()
{
  result = qword_27CB2ACE0;
  if (!qword_27CB2ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2ACE0);
  }

  return result;
}

uint64_t sub_21763582C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_33();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217635874()
{
  result = qword_27CB2ACF8;
  if (!qword_27CB2ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2ACF8);
  }

  return result;
}

_BYTE *sub_2176358D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of _MusicLibraryMappable.libraryMapped(policy:scope:)()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 8);
  OUTLINED_FUNCTION_66_3();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_19(v14);
  *v15 = v16;
  v15[1] = sub_217282D8C;

  return v18(v9, v7, v5, v3, v1);
}

uint64_t sub_217635B1C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_73_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_50(v1);

  return sub_21762FA2C(v3, v4, v5);
}

uint64_t sub_217635BA8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v5[1] = sub_2172849C8;
  OUTLINED_FUNCTION_1322();

  return sub_2176301DC(v7, v8, v9, v10, v11);
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_233Tm()
{
  if (*(v0 + 72) <= 2u)
  {
    v1 = *(v0 + 24);

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_11_66(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_15_57()
{
  v2[39] = sub_2172AB494;
  v2[40] = v0;
  v2[41] = v1;
}

uint64_t OUTLINED_FUNCTION_16_60(uint64_t result)
{
  *(v1 + 352) = result;
  *(v1 + 296) = MEMORY[0x277D85DD0];
  return result;
}

void *OUTLINED_FUNCTION_18_49(__int128 *a1)
{
  sub_2171F3F0C(a1, v1 - 88);
  v2 = *(v1 - 56);
  result = __swift_project_boxed_opaque_existential_1((v1 - 88), *(v1 - 64));
  v4 = *(*(v2 + 8) + 8);
  return result;
}

uint64_t *OUTLINED_FUNCTION_26_38()
{
  v1 = v0[41];
  v2 = v0[30];
  v3 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v2);
  v0[50] = v2;
  v0[51] = *(v3 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v0 + 47);
}

__n128 OUTLINED_FUNCTION_29_38@<Q0>(_OWORD *a1@<X8>)
{
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;
  a1[2] = v4[2];
  *(a1 + 41) = *(v4 + 41);
  *(v3 + 161) = v1;
  v6 = *(v2 + 16);
  *(v3 + 32) = *v2;
  *(v3 + 48) = v6;
  *(v3 + 64) = *(v2 + 32);
  result = *(v2 + 41);
  *(v3 + 73) = result;
  return result;
}

void OUTLINED_FUNCTION_34_34()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_41_31()
{
  v2 = *(v0 + 568);
  v3 = *(v0 + 376);
  *(v0 + 152) = *(v0 + 360);
  *(v0 + 168) = v3;
  *(v0 + 184) = *(v0 + 392);
  *(v0 + 193) = *(v0 + 401);
  v4 = *(v0 + 144);
}

double OUTLINED_FUNCTION_45_32()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t *OUTLINED_FUNCTION_47_25()
{
  v1 = v0[16];
  v2 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  v0[60] = v2;

  return __swift_allocate_boxed_opaque_existential_0(v0 + 57);
}

double OUTLINED_FUNCTION_51_22()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 136) = -1;
  return result;
}

uint64_t *OUTLINED_FUNCTION_52_26()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v2);
  v0[52] = v2;
  v0[53] = *(v3 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v0 + 49);
}