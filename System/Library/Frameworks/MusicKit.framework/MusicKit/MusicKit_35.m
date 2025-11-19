uint64_t sub_2174E080C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21776F920;
  if (qword_280BE66C8 != -1)
  {
    OUTLINED_FUNCTION_9_37();
  }

  *(v0 + 32) = qword_280C02048;
  v1 = qword_280BE66F8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_6_45();
  }

  *(v0 + 40) = qword_280C02060;
  v2 = qword_280BE6720;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_21_28();
  }

  *(v0 + 48) = qword_280C02070;
  v3 = qword_280BE66C0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_8_41();
  }

  *(v0 + 56) = qword_280C02040;
  v4 = qword_280BE6738;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_20_29();
  }

  *(v0 + 64) = qword_280C02080;
  v5 = qword_280BE6700;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_19_23();
  }

  *(v0 + 72) = qword_280C02068;
  v6 = qword_280BE66D8;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_2_67();
  }

  *(v0 + 80) = qword_280BE66E0;
  v7 = qword_280BE66B8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_17_27();
  }

  *(v0 + 88) = qword_280C02038;
  v8 = qword_280BE6730;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_16_36();
  }

  *(v0 + 96) = qword_280C02078;
  v9 = qword_280BE66A8;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_15_35();
  }

  *(v0 + 104) = qword_280C02030;
  v10 = qword_280BE66F0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_14_31();
  }

  *(v0 + 112) = qword_280C02058;
  v11 = qword_280BE6748;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_13_33();
  }

  *(v0 + 120) = qword_280C02088;
  v12 = qword_280BE66D0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_28();
  }

  *(v0 + 128) = qword_280C02050;
  v13 = qword_280BE6710;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_1_60();
  }

  *(v0 + 136) = qword_280BE6718;
  qword_280C01FB0 = v0;
}

uint64_t PlaylistEntryPropertyProvider.knownProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 72));

  return sub_217751DE8();
}

void PlaylistEntryPropertyProvider.merge<A>(_:with:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279A8, &qword_21776B560);
  if (swift_dynamicCastClass())
  {

    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177AF030);
    sub_217752C78();
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AEFF0);
    v2 = *(v1 + 216);
    type metadata accessor for PartialMusicAsyncProperty();
    sub_217753018();
  }

  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_7_24();
  __break(1u);
}

uint64_t PlaylistEntryPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_45_20() + 76);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *PlaylistEntryPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_31_22() + 76);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t PlaylistEntryPropertyProvider.type.getter()
{
  v0 = OUTLINED_FUNCTION_45_20();
  OUTLINED_FUNCTION_160_0(*(v0 + 80));

  return sub_217751DE8();
}

uint64_t PlaylistEntryPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = type metadata accessor for PlaylistEntryPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 80));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t PlaylistEntryPropertyProvider.href.getter()
{
  v1 = (v0 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 84));
  v2 = *v1;
  v3 = v1[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t PlaylistEntryPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = type metadata accessor for PlaylistEntryPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v3 + 84));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PlaylistEntryPropertyProvider.rawAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 88));

  return sub_217751DE8();
}

uint64_t PlaylistEntryPropertyProvider.rawRelationships.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 92));

  return sub_217751DE8();
}

uint64_t PlaylistEntryPropertyProvider.rawAssociations.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 96));

  return sub_217751DE8();
}

uint64_t PlaylistEntryPropertyProvider.rawMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 100));

  return sub_217751DE8();
}

void static PlaylistEntryPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2, v3);
  v5 = v4;
  v7 = v6;
  v8 = sub_2177517D8();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  v261 = &v255 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  OUTLINED_FUNCTION_6_1();
  v259 = v19 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v255 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v255 - v27;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  v29 = OUTLINED_FUNCTION_43(v262);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_6_1();
  v260 = (v33 - v34);
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_47_17();
  MEMORY[0x28223BE20](v37, v38);
  v40 = (&v255 - v39);
  v41 = OUTLINED_FUNCTION_36_20();
  memcpy(v41, v7, 0x221uLL);
  v42 = OUTLINED_FUNCTION_37_19();
  memcpy(v42, v5, 0x221uLL);
  v43 = OUTLINED_FUNCTION_152();
  memcpy(v43, v7, 0x221uLL);
  memcpy(v276, v5, sizeof(v276));
  memcpy(v277, v7, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v277) == 1)
  {
    memcpy(v269, v276, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v269) == 1)
    {
      v257 = v11;
      v258 = v0;
      OUTLINED_FUNCTION_4_63();
      memcpy(v44, v45, 0x221uLL);
      OUTLINED_FUNCTION_36_20();
      OUTLINED_FUNCTION_22_29();
      sub_21726A630(v46, v47, v48, &unk_21775E9A0);
      OUTLINED_FUNCTION_37_19();
      OUTLINED_FUNCTION_22_29();
      sub_21726A630(v49, v50, v51, &unk_21775E9A0);
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v52, v53, v54);
      goto LABEL_11;
    }

    v63 = OUTLINED_FUNCTION_36_20();
    OUTLINED_FUNCTION_157(v63, v270);
    v64 = OUTLINED_FUNCTION_37_19();
    OUTLINED_FUNCTION_157(v64, v270);
LABEL_7:
    OUTLINED_FUNCTION_4_63();
    memcpy(v65, v66, 0x449uLL);
    v67 = &unk_27CB25C18;
    v68 = &unk_21775ECE0;
    v69 = v269;
LABEL_8:
    sub_2171F0738(v69, v67, v68);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_4_63();
  memcpy(v55, v56, 0x221uLL);
  OUTLINED_FUNCTION_4_63();
  memcpy(v57, v58, 0x221uLL);
  memcpy(v269, v276, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v269) == 1)
  {
    OUTLINED_FUNCTION_4_63();
    memcpy(v59, v60, 0x221uLL);
    v61 = OUTLINED_FUNCTION_36_20();
    OUTLINED_FUNCTION_157(v61, v264);
    v62 = OUTLINED_FUNCTION_37_19();
    OUTLINED_FUNCTION_157(v62, v264);
    OUTLINED_FUNCTION_157(v270, v264);
    sub_217284084(v265);
    goto LABEL_7;
  }

  v257 = v11;
  v258 = v0;
  memcpy(v265, v276, 0x221uLL);
  v70 = OUTLINED_FUNCTION_36_20();
  OUTLINED_FUNCTION_195_3(v70, v264);
  v71 = OUTLINED_FUNCTION_37_19();
  OUTLINED_FUNCTION_195_3(v71, v264);
  OUTLINED_FUNCTION_195_3(v270, v264);
  v72 = static Artwork.== infix(_:_:)(v268, v265);
  memcpy(v263, v265, 0x221uLL);
  sub_217284084(v263);
  memcpy(v264, v268, 0x221uLL);
  sub_217284084(v264);
  OUTLINED_FUNCTION_4_63();
  memcpy(v73, v74, 0x221uLL);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v75, v76, v77);
  if ((v72 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v78 = *(v5 + 560);
  if (*(v7 + 560))
  {
    if (!*(v5 + 560))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*(v7 + 552) != *(v5 + 552))
    {
      v78 = 1;
    }

    if (v78)
    {
      goto LABEL_9;
    }
  }

  v79 = *(v7 + 576);
  v80 = *(v5 + 576);
  if (v79)
  {
    if (!v80)
    {
      goto LABEL_9;
    }

    v81 = *(v7 + 568) == *(v5 + 568) && v79 == v80;
    if (!v81 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v80)
  {
    goto LABEL_9;
  }

  v82 = *(v7 + 592);
  v83 = *(v5 + 592);
  if (v82)
  {
    if (!v83)
    {
      goto LABEL_9;
    }

    v84 = *(v7 + 584) == *(v5 + 584) && v82 == v83;
    if (!v84 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v83)
  {
    goto LABEL_9;
  }

  v255 = type metadata accessor for PlaylistEntryPropertyProvider();
  v85 = v255[8];
  v86 = *(v262 + 48);
  sub_21726A630(v7 + v85, v40, &qword_27CB241C0, &qword_217759480);
  v256 = v86;
  sub_21726A630(v5 + v85, v40 + v86, &qword_27CB241C0, &qword_217759480);
  v87 = v258;
  OUTLINED_FUNCTION_133(v40, 1, v258);
  if (v81)
  {
    OUTLINED_FUNCTION_73(v40 + v256);
    if (v81)
    {
      sub_2171F0738(v40, &qword_27CB241C0, &qword_217759480);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  sub_21726A630(v40, v28, &qword_27CB241C0, &qword_217759480);
  v88 = v256;
  OUTLINED_FUNCTION_73(v40 + v256);
  if (v89)
  {
    (*(v257 + 8))(v28, v87);
LABEL_43:
    v67 = &qword_27CB25C10;
    v68 = &unk_217765A50;
    v69 = v40;
    goto LABEL_8;
  }

  v90 = v257;
  (*(v257 + 32))(v261, v40 + v88, v87);
  OUTLINED_FUNCTION_0_62();
  sub_2174E2DF8(v91, v92);
  OUTLINED_FUNCTION_91();
  LODWORD(v256) = sub_217751F08();
  v93 = *(v90 + 8);
  v93(v261, v87);
  v94 = OUTLINED_FUNCTION_91();
  (v93)(v94);
  sub_2171F0738(v40, &qword_27CB241C0, &qword_217759480);
  if ((v256 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_45:
  v258 = v87;
  v95 = v255[9];
  v96 = *(v262 + 48);
  OUTLINED_FUNCTION_195_3(v7 + v95, v1);
  v97 = v258;
  sub_21726A630(v5 + v95, v1 + v96, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v1, 1, v97);
  if (v81)
  {
    OUTLINED_FUNCTION_133(v1 + v96, 1, v97);
    if (v81)
    {
      sub_2171F0738(v1, &qword_27CB241C0, &qword_217759480);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  sub_21726A630(v1, v24, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v1 + v96, 1, v97);
  if (v98)
  {
    (*(v257 + 8))(v24, v97);
LABEL_53:
    v67 = &qword_27CB25C10;
    v68 = &unk_217765A50;
    v69 = v1;
    goto LABEL_8;
  }

  v99 = v257;
  (*(v257 + 32))(v261, v1 + v96, v97);
  OUTLINED_FUNCTION_0_62();
  sub_2174E2DF8(v100, v101);
  v102 = sub_217751F08();
  v103 = *(v99 + 8);
  v104 = OUTLINED_FUNCTION_91();
  v103(v104);
  (v103)(v24, v97);
  sub_2171F0738(v1, &qword_27CB241C0, &qword_217759480);
  if ((v102 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_55:
  v105 = v255[10];
  OUTLINED_FUNCTION_4_63();
  OUTLINED_FUNCTION_195_3(v106, v107);
  OUTLINED_FUNCTION_195_3(v5 + v105, &v273[48]);
  if (v273[40] == 255)
  {
    if (v273[104] == 255)
    {
      v115 = OUTLINED_FUNCTION_152();
      sub_2171F0738(v115, v116, v117);
      goto LABEL_61;
    }

LABEL_70:
    v69 = OUTLINED_FUNCTION_152();
    goto LABEL_8;
  }

  v108 = OUTLINED_FUNCTION_152();
  sub_21726A630(v108, v269, v109, v110);
  if (v273[104] == 255)
  {
    sub_21729C7F8(v269);
    goto LABEL_70;
  }

  v270[0] = *&v273[48];
  v270[1] = *&v273[64];
  v270[2] = *&v273[80];
  *(&v270[2] + 9) = *&v273[89];
  v111 = static Playlist.Entry.Item.== infix(_:_:)(v269, v270);
  sub_21729C7F8(v270);
  sub_21729C7F8(v269);
  v112 = OUTLINED_FUNCTION_152();
  sub_2171F0738(v112, v113, v114);
  if ((v111 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_61:
  v118 = v255[11];
  OUTLINED_FUNCTION_24_3();
  if (v121)
  {
    if (!v119)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_59_0(v120);
    v124 = v81 && v122 == v123;
    if (!v124 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v119)
    {
      goto LABEL_9;
    }
  }

  v125 = v7 + v255[12];
  memcpy(v266, v125, sizeof(v266));
  v126 = v5 + v255[12];
  memcpy(v267, v126, sizeof(v267));
  v127 = v266[0];
  v128 = v266[1];
  memcpy(v264, (v125 + 16), 0x68uLL);
  v129 = v267[0];
  v130 = v267[1];
  memcpy(v263, (v126 + 16), 0x68uLL);
  if (!v266[1])
  {
    if (!v267[1])
    {
      v271 = v266[0];
      v272 = 0;
      OUTLINED_FUNCTION_42_17();
      OUTLINED_FUNCTION_195_3(v266, v269);
      OUTLINED_FUNCTION_195_3(v267, v269);
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v159, v160, v161);
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_157(v144, v145);
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_157(v146, v147);
    goto LABEL_80;
  }

  v271 = v266[0];
  v272 = v266[1];
  OUTLINED_FUNCTION_42_17();
  OUTLINED_FUNCTION_4_63();
  memcpy(v131, v132, 0x78uLL);
  if (!v130)
  {
    OUTLINED_FUNCTION_4_63();
    memcpy(v148, v149, 0x78uLL);
    OUTLINED_FUNCTION_22_29();
    sub_21726A630(v150, v151, v152, &unk_21775D620);
    OUTLINED_FUNCTION_22_29();
    sub_21726A630(v153, v154, v155, &unk_21775D620);
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_22_29();
    sub_21726A630(v156, v157, v158, &unk_21775D620);
    sub_2172848C0(v270);
LABEL_80:
    v271 = v127;
    v272 = v128;
    memcpy(v273, v264, 0x68uLL);
    *&v273[104] = v129;
    v274 = v130;
    memcpy(v275, v263, sizeof(v275));
    goto LABEL_70;
  }

  memcpy(&v270[1], (v126 + 16), 0x68uLL);
  *&v270[0] = v129;
  *(&v270[0] + 1) = v130;
  OUTLINED_FUNCTION_22_29();
  sub_21726A630(v133, v134, v135, &unk_21775D620);
  OUTLINED_FUNCTION_22_29();
  sub_21726A630(v136, v137, v138, &unk_21775D620);
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_22_29();
  sub_21726A630(v139, v140, v141, &unk_21775D620);
  static PlayParameters.== infix(_:_:)(v269, v270);
  v143 = v142;
  memcpy(v265, v270, 0x78uLL);
  sub_2172848C0(v265);
  memcpy(v268, v269, 0x78uLL);
  sub_2172848C0(v268);
  *&v270[0] = v127;
  *(&v270[0] + 1) = v128;
  memcpy(&v270[1], v264, 0x68uLL);
  sub_2171F0738(v270, &qword_27CB244D0, &unk_21775D620);
  if ((v143 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_82:
  v162 = v255[13];
  v163 = (v7 + v162);
  v164 = *(v7 + v162 + 8);
  v165 = (v5 + v162);
  v166 = *(v5 + v162 + 8);
  if (v164)
  {
    if (!v166)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*v163 != *v165)
    {
      LOBYTE(v166) = 1;
    }

    if (v166)
    {
      goto LABEL_9;
    }
  }

  v167 = v255[14];
  v168 = *(v7 + v167 + 8);
  v169 = v5 + v167;
  v170 = *(v169 + 8);
  if (!v168)
  {
    if (!v170)
    {
      goto LABEL_94;
    }

    v178 = *(v169 + 8);
LABEL_99:
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (!v170)
  {
    goto LABEL_99;
  }

  *&v273[8] = swift_getObjectType();
  v271 = v168;
  v171 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v172 = OUTLINED_FUNCTION_152();
  v173 = sub_2174E2D44(v172);
  *&v273[8] = swift_getObjectType();
  v271 = v170;
  v174 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v175 = OUTLINED_FUNCTION_152();
  v176 = sub_2174E2D44(v175);
  v177 = [v173 isEqual_];
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();

  if ((v177 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_94:
  v179 = v255[15];
  v180 = *(v262 + 48);
  v181 = v260;
  OUTLINED_FUNCTION_195_3(v7 + v179, v260);
  OUTLINED_FUNCTION_195_3(v5 + v179, v181 + v180);
  OUTLINED_FUNCTION_133(v181, 1, v258);
  if (v81)
  {
    OUTLINED_FUNCTION_133(v260 + v180, 1, v258);
    if (v81)
    {
      sub_2171F0738(v260, &qword_27CB241C0, &qword_217759480);
      goto LABEL_105;
    }

LABEL_103:
    v67 = &qword_27CB25C10;
    v68 = &unk_217765A50;
    v69 = v260;
    goto LABEL_8;
  }

  v182 = v260;
  sub_21726A630(v260, v259, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v182 + v180, 1, v258);
  if (v183)
  {
    (*(v257 + 8))(v259, v258);
    goto LABEL_103;
  }

  v184 = v257;
  v186 = v260;
  v185 = v261;
  v187 = v260 + v180;
  v188 = v258;
  (*(v257 + 32))(v261, v187, v258);
  OUTLINED_FUNCTION_0_62();
  sub_2174E2DF8(v189, v190);
  v191 = v259;
  v192 = sub_217751F08();
  v193 = *(v184 + 8);
  v193(v185, v188);
  v193(v191, v188);
  sub_2171F0738(v186, &qword_27CB241C0, &qword_217759480);
  if ((v192 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_105:
  v194 = v255[16];
  OUTLINED_FUNCTION_24_3();
  if (v197)
  {
    if (!v195)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_59_0(v196);
    v200 = v81 && v198 == v199;
    if (!v200 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v195)
  {
    goto LABEL_9;
  }

  v201 = v255[17];
  OUTLINED_FUNCTION_4_63();
  OUTLINED_FUNCTION_195_3(v202, v203);
  OUTLINED_FUNCTION_195_3(v5 + v201, &v273[24]);
  if (!*&v273[8])
  {
    if (!*&v273[48])
    {
      v215 = OUTLINED_FUNCTION_152();
      sub_2171F0738(v215, v216, v217);
      goto LABEL_120;
    }

    goto LABEL_70;
  }

  v204 = OUTLINED_FUNCTION_152();
  sub_21726A630(v204, v269, v205, v206);
  if (!*&v273[48])
  {
    sub_217350E74(v269);
    goto LABEL_70;
  }

  v270[0] = *&v273[24];
  v270[1] = *&v273[40];
  *&v270[2] = *&v273[56];
  v207 = v269[3];
  v208 = v269[4];
  __swift_project_boxed_opaque_existential_1(v269, v269[3]);
  v209 = *(v208 + 80);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
  v211 = v209(v270, v210, v207, v208);
  sub_217350E74(v270);
  sub_217350E74(v269);
  v212 = OUTLINED_FUNCTION_152();
  sub_2171F0738(v212, v213, v214);
  if ((v211 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_120:
  v218 = OUTLINED_FUNCTION_136(v255[18]);
  sub_217270140(v218, v219, v220, v221, v222, v223, v224, v225, v255, v256, v257, v258);
  if (v226)
  {
    v227 = v255[19];
    memcpy(v268, (v7 + v227), 0x161uLL);
    memcpy(v265, (v7 + v227), 0x161uLL);
    v228 = v255[19];
    memcpy(v270, (v5 + v228), 0x161uLL);
    memcpy(v264, (v5 + v228), 0x161uLL);
    sub_217269EF4(v268, v263);
    sub_217269EF4(v270, v263);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v228) = v229;
    memcpy(v269, v264, 0x161uLL);
    sub_217269F50(v269);
    v230 = OUTLINED_FUNCTION_152();
    memcpy(v230, v265, 0x161uLL);
    v231 = OUTLINED_FUNCTION_152();
    sub_217269F50(v231);
    if (v228)
    {
      v232 = v255[20];
      v233 = *(v7 + v232);
      v234 = *(v7 + v232 + 8);
      v235 = (v5 + v232);
      v236 = v233 == *v235 && v234 == v235[1];
      if (v236 || (sub_217753058() & 1) != 0)
      {
        v237 = v255[21];
        OUTLINED_FUNCTION_24_3();
        if (!v240)
        {
          if (v238)
          {
            goto LABEL_9;
          }

          goto LABEL_138;
        }

        if (v238)
        {
          OUTLINED_FUNCTION_59_0(v239);
          v243 = v81 && v241 == v242;
          if (v243 || (sub_217753058() & 1) != 0)
          {
LABEL_138:
            v244 = OUTLINED_FUNCTION_136(v255[22]);
            sub_217261FB0(v244, v245);
            if (v246)
            {
              v247 = OUTLINED_FUNCTION_136(v255[23]);
              sub_217261FB0(v247, v248);
              if (v249)
              {
                v250 = OUTLINED_FUNCTION_136(v255[24]);
                sub_217261FB0(v250, v251);
                if (v252)
                {
                  v253 = OUTLINED_FUNCTION_136(v255[25]);
                  sub_217261FB0(v253, v254);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_13();
}

void PlaylistEntryPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v5 = sub_2177517D8();
  v6 = OUTLINED_FUNCTION_41(v5);
  v75[1] = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  OUTLINED_FUNCTION_6_1();
  v75[0] = v16 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v75 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = v75 - v24;
  OUTLINED_FUNCTION_225_3(v80);
  OUTLINED_FUNCTION_225_3(v81);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v81) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v77, v80, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v78, v80, 0x221uLL);
    sub_217284028(v78, v79);
    Artwork.hash(into:)(v4);
    memcpy(v79, v77, sizeof(v79));
    sub_217284084(v79);
  }

  if (*(v0 + 560) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v26 = *(v0 + 552);
    OUTLINED_FUNCTION_119();
    if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x21CEA3580](v27);
  }

  if (*(v0 + 576))
  {
    v28 = *(v0 + 568);
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 592))
  {
    v29 = *(v0 + 584);
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v30 = type metadata accessor for PlaylistEntryPropertyProvider();
  sub_21726A630(v0 + v30[8], v25, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v25, 1, v1);
  if (v31)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v32 = OUTLINED_FUNCTION_18_30();
    v33(v32, v25, v1);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_62();
    sub_2174E2DF8(v34, v35);
    OUTLINED_FUNCTION_147();
    v36 = OUTLINED_FUNCTION_55_15();
    v37(v36);
  }

  sub_21726A630(v0 + v30[9], v21, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v21, 1, v1);
  if (v31)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v38 = OUTLINED_FUNCTION_18_30();
    v39(v38, v21, v1);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_62();
    sub_2174E2DF8(v40, v41);
    OUTLINED_FUNCTION_147();
    v42 = OUTLINED_FUNCTION_55_15();
    v43(v42);
  }

  sub_21726A630(v0 + v30[10], v79, &qword_27CB27D20, &qword_217758B80);
  if (v79[56] == 255)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v78[0] = *v79;
    v78[1] = *&v79[16];
    v78[2] = *&v79[32];
    *(&v78[2] + 9) = *&v79[41];
    OUTLINED_FUNCTION_119();
    Playlist.Entry.Item.hash(into:)();
    sub_21729C7F8(v78);
  }

  v44 = (v0 + v30[11]);
  if (v44[1])
  {
    v45 = *v44;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v46 = v0 + v30[12];
  v47 = *v46;
  v48 = *(v46 + 8);
  memcpy(v76, (v46 + 16), sizeof(v76));
  if (v48)
  {
    memcpy(&v77[2], (v46 + 16), 0x68uLL);
    v77[0] = v47;
    v77[1] = v48;
    OUTLINED_FUNCTION_119();
    *&v78[0] = v47;
    *(&v78[0] + 1) = v48;
    memcpy(&v78[1], v76, 0x68uLL);
    sub_2172DF5A4(v78, v79);
    PlayParameters.hash(into:)(v4);
    memcpy(v79, v77, 0x78uLL);
    sub_2172848C0(v79);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v49 = v2 + v30[13];
  if (*(v49 + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v47 = *v49;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v47);
  }

  v50 = *(v2 + v30[14] + 8);
  if (v50)
  {
    OUTLINED_FUNCTION_119();
    *&v79[24] = swift_getObjectType();
    *v79 = v50;
    v51 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
    swift_unknownObjectRetain_n();
    v47 = sub_2174E2D44(v79);
    MEMORY[0x21CEA3550]([v47 hash]);
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v52 = v75[0];
  sub_21726A630(v2 + v30[15], v75[0], &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v52, 1, v1);
  if (v31)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_103_3();
    v53();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_62();
    sub_2174E2DF8(v54, v55);
    OUTLINED_FUNCTION_147();
    (*(v47 + 1))(v12, v1);
  }

  v56 = (v2 + v30[16]);
  if (v56[1])
  {
    v57 = *v56;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v30[17], v78, &qword_27CB24BA8, &unk_217772FF0);
  if (*(&v78[1] + 1))
  {
    *v79 = v78[0];
    *&v79[16] = v78[1];
    *&v79[32] = *&v78[2];
    OUTLINED_FUNCTION_119();
    v58 = *&v79[24];
    v59 = *&v79[32];
    __swift_project_boxed_opaque_existential_1(v79, *&v79[24]);
    (*(v59 + 88))(v4, v58, v59);
    sub_217350E74(v79);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v60 = OUTLINED_FUNCTION_201(v30[18]);
  sub_217281970(v60, v61);
  memcpy(v79, (v2 + v30[19]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v4);
  v62 = (v2 + v30[20]);
  v63 = *v62;
  v64 = v62[1];
  sub_217751FF8();
  v65 = (v2 + v30[21]);
  if (v65[1])
  {
    v66 = *v65;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v67 = OUTLINED_FUNCTION_201(v30[22]);
  sub_217265A08(v67, v68);
  v69 = OUTLINED_FUNCTION_201(v30[23]);
  sub_217265A08(v69, v70);
  v71 = OUTLINED_FUNCTION_201(v30[24]);
  sub_217265A08(v71, v72);
  v73 = OUTLINED_FUNCTION_201(v30[25]);
  sub_217265A08(v73, v74);
  OUTLINED_FUNCTION_13();
}

uint64_t PlaylistEntryPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  PlaylistEntryPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_2174E28D0(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  PlaylistEntryPropertyProvider.subscript.getter();
  return sub_2174E076C;
}

uint64_t sub_2174E2954()
{
  sub_2177531E8();
  PlaylistEntryPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t (*sub_2174E299C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 76);
  return result;
}

uint64_t MusicIdentifierSet.equivalentPlaylistEntryIdentifierSet(with:)@<X0>(uint64_t a1@<X8>)
{
  v25 = v1[1];
  v26 = *v1;
  v3 = v1[3];
  v45 = v1[2];
  v44 = *(v1 + 32);
  v43 = v1[5];
  v53 = v1[6];
  v42 = v1[7];
  v52 = v1[8];
  v41 = v1[9];
  v51 = v1[10];
  v40 = v1[11];
  v50 = v1[12];
  v38 = v1[13];
  v49 = v1[14];
  v33 = v1[15];
  v54 = v1[18];
  v55 = v1[17];
  v47 = v1[19];
  v48 = v1[20];
  v56 = v1[22];
  v57 = v1[21];
  v5 = v1[23];
  v4 = v1[24];
  v6 = v1[28];
  v32 = v1[27];
  v24 = v1[30];
  v7 = v1[32];
  v29 = v1[31];
  v30 = v1[29];
  v8 = v1[33];
  v28 = *(v1 + 272);
  v9 = v1[35];
  v36 = v1[37];
  v37 = v1[36];
  v34 = v1[16];
  v35 = v1[38];
  v10 = v1[39];
  v39 = *(v1 + 352);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172A5428(v55, v54);
  v46 = v5;
  sub_2172A5428(v57, v56);
  v31 = v7;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v11 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v11);

  sub_217751DE8();
  v12 = OUTLINED_FUNCTION_91();
  MEMORY[0x21CEA23B0](v12);

  v13 = v26;
  if (qword_280BE90D0 != -1)
  {
    swift_once();
  }

  v15 = qword_280BE90E8;
  v14 = unk_280BE90F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 4;
  *a1 = v26;
  *(a1 + 8) = v25;
  sub_217751DE8();
  sub_217751DE8();
  v27 = xmmword_280BE90D8;

  *(a1 + 16) = v45;
  *(a1 + 24) = v3;
  *(a1 + 32) = v44;
  *(a1 + 40) = v43;
  *(a1 + 48) = v53;
  *(a1 + 56) = v42;
  *(a1 + 64) = v52;
  *(a1 + 72) = v41;
  *(a1 + 80) = v51;
  *(a1 + 88) = v40;
  *(a1 + 96) = v50;
  *(a1 + 104) = v38;
  *(a1 + 112) = v49;
  *(a1 + 120) = v33;
  *(a1 + 128) = v34;
  v16 = *(a1 + 152);
  v17 = *(a1 + 160);
  sub_2172B8404(*(a1 + 136), *(a1 + 144));
  *(a1 + 136) = v55;
  *(a1 + 144) = v54;
  *(a1 + 152) = v47;
  *(a1 + 160) = v48;
  *(a1 + 200) = v13;
  *(a1 + 208) = v25;
  v18 = *(a1 + 184);
  v19 = *(a1 + 192);
  sub_2172B8404(*(a1 + 168), *(a1 + 176));
  *(a1 + 168) = v57;
  *(a1 + 176) = v56;
  *(a1 + 184) = v46;
  *(a1 + 192) = v4;
  *(a1 + 216) = v32;
  *(a1 + 224) = v6;
  *(a1 + 232) = v30;
  *(a1 + 240) = v24;
  *(a1 + 248) = v29;
  *(a1 + 256) = v31;
  *(a1 + 264) = v8;
  *(a1 + 272) = v28;
  *(a1 + 288) = v27;
  *(a1 + 304) = v15;
  *(a1 + 312) = v14;
  v20 = *(a1 + 328);
  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  result = sub_2172AC65C(*(a1 + 320));
  *(a1 + 320) = v37;
  *(a1 + 328) = v36;
  *(a1 + 336) = v35;
  *(a1 + 344) = v10;
  *(a1 + 280) = v9;
  *(a1 + 352) = v39;
  return result;
}

id sub_2174E2D44(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithUnderlyingModelObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2174E2DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2174E2E68()
{
  sub_2172E2E58(319, &qword_280BE7698);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7538);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE5928);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2174E3144(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2172E2E58(319, &qword_280BE2668);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E58(319, &qword_280BE49B8);
          if (v11 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E58(319, &qword_280BE7DD0);
          if (v12 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E58(319, &qword_280BE7528);
          if (v13 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E58(319, qword_280BE3640);
          if (v14 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E58(319, &qword_280BE7598);
          v1 = v15;
          if (v16 > 0x3F)
          {
            return v1;
          }

          sub_2172E2E58(319, &qword_280BE77D0);
          if (v17 > 0x3F)
          {
            return v9;
          }

          sub_2174E3144(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
          if (v18 > 0x3F)
          {
            return v9;
          }

          sub_217351BFC();
          v1 = v19;
          if (v20 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_2174E3144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_14_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_28()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_42_17()
{

  return memcpy((v0 + 4184), (v1 + 16), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_43_13()
{
}

uint64_t OUTLINED_FUNCTION_45_20()
{

  return type metadata accessor for PlaylistEntryPropertyProvider();
}

__n128 OUTLINED_FUNCTION_49_19(uint64_t a1)
{
  result = *(v1 + 1664);
  v3 = *(v1 + 1680);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_11()
{
}

uint64_t sub_2174E3318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SharedRelatedItemStore.__allocating_init()()
{
  v0 = swift_allocObject();
  SharedRelatedItemStore.init()();
  return v0;
}

void JSONDecoder.sharedRelatedItemStore.setter(uint64_t a1)
{
  v2 = sub_217752CA8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_217751318();
  if (qword_280BE2200 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  v13 = __swift_project_value_buffer(v2, qword_280C01F70);
  (*(v4 + 16))(v11, v13, v2);
  if (a1)
  {
    *(&v33 + 1) = type metadata accessor for SharedRelatedItemStore();
    *&v32 = a1;
    sub_2172124CC(&v32, &v30);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v12;
    v15 = *(&v31 + 1);
    __swift_mutable_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    OUTLINED_FUNCTION_0();
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v18, v19);
    OUTLINED_FUNCTION_1();
    v22 = v21 - v20;
    (*(v23 + 16))(v21 - v20);
    sub_2174E473C(v22, v11, isUniquelyReferenced_nonNull_native, &v29, v15);
    __swift_destroy_boxed_opaque_existential_1(&v30);
    (*(v4 + 8))(v11, v2);
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    sub_2171F06D8(&v32, &qword_27CB26E00, &unk_217767590);
    v24 = sub_217632604(v11);
    if (v25)
    {
      v26 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      v29 = v12;
      v27 = v12[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E20, &qword_217767718);
      sub_217752CB8();
      v28 = *(v4 + 8);
      v28(v12[6] + *(v4 + 72) * v26, v2);
      sub_2172124CC((v12[7] + 32 * v26), &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E08, &unk_21776FB50);
      sub_217752CD8();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = *(v4 + 8);
    }

    v28(v11, v2);
    sub_2171F06D8(&v30, &qword_27CB26E00, &unk_217767590);
  }

  sub_217751328();

  OUTLINED_FUNCTION_13();
}

uint64_t Decoder.sharedRelatedItemStore.getter()
{
  v0 = sub_2177532B8();
  if (qword_280BE2200 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  v1 = sub_217752CA8();
  v2 = __swift_project_value_buffer(v1, qword_280C01F70);
  sub_2173B0718(v5, v2, v0);

  if (v5[3])
  {
    type metadata accessor for SharedRelatedItemStore();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2171F06D8(v5, &qword_27CB2AD40, &qword_2177583F0);
    return 0;
  }
}

uint64_t SharedRelatedItemStore.init()()
{
  sub_2172A4EFC();
  *(v0 + 16) = sub_217751DC8();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 24) = v1;
  return v0;
}

void sub_2174E3820(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v20 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v19 - v14;
  sub_217751DE8();
  sub_2174E3B48(a1);
  v16 = v4[3];

  sub_217751DE8();
  sub_217751DE8();
  sub_217586664(v16, v4, v24);
  sub_2174E4BCC(v24, v21);
  if (v21[3])
  {
    sub_2171FF30C(v21, v22);
    sub_21729C698(v21);
  }

  else
  {
    sub_2171F06D8(v21, &qword_27CB24B50, &qword_2177595A0);
    memset(v22, 0, sizeof(v22));
    v23 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27590, &qword_21776ADF0);
  if (swift_dynamicCast())
  {
    sub_2171F06D8(v24, &qword_27CB24B50, &qword_2177595A0);

    __swift_storeEnumTagSinglePayload(v15, 0, 1, a2);
    (*(*(a2 - 8) + 32))(a3, v15, a2);
    OUTLINED_FUNCTION_13();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a2);
    (*(v20 + 8))(v15, v8);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6F2065737573694DLL, 0xEA00000000002066);
    v17 = *v4;
    v18 = sub_217753348();
    MEMORY[0x21CEA23B0](v18);

    MEMORY[0x21CEA23B0](0xD000000000000035, 0x80000002177AB110);
    sub_217752D08();
    __break(1u);
  }
}

void sub_2174E3B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a4;
  v36 = a3;
  OUTLINED_FUNCTION_0();
  v38 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  sub_217751DE8();
  v33 = a1;
  v37 = a6;
  v20 = sub_2174E3B48(a1);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v7 + 24);
  v28 = *(v27 + 16);

  sub_217751DE8();
  sub_217751DE8();
  os_unfair_lock_lock(v28);
  v34 = v24;
  sub_2174E3DC8(v7, &v39);
  os_unfair_lock_unlock(*(v27 + 16));

  if (v39)
  {

    OUTLINED_FUNCTION_13();
  }

  else
  {
    v30 = v36(v33, a2);
    MEMORY[0x28223BE20](v30, v31);
    v32 = v37;
    *(&v33 - 8) = a5;
    *(&v33 - 7) = v32;
    *(&v33 - 6) = v19;
    *(&v33 - 5) = v7;
    *(&v33 - 4) = v20;
    *(&v33 - 3) = v22;
    *(&v33 - 2) = v34;
    *(&v33 - 1) = v26;
    sub_21720BA7C();

    (*(v38 + 8))(v19, a5);
    OUTLINED_FUNCTION_13();
  }
}

uint64_t sub_2174E3DC8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (!*(v5 + 16))
  {
    goto LABEL_6;
  }

  v6 = *(a1 + 16);
  sub_217751DE8();
  v7 = sub_217632668();
  if ((v8 & 1) == 0)
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  sub_21733B548(*(v5 + 56) + 48 * v7, v11);

  v13[0] = v11[0];
  v13[1] = v11[1];
  v14 = v12;
  result = sub_2171FF30C(v13, v11);
  if (!__OFADD__(*(&v14 + 1), 1))
  {
    *(&v12 + 1) = *(&v14 + 1) + 1;
    sub_21733B548(v11, v10);
    swift_beginAccess();
    sub_217751DE8();
    sub_217751DE8();
    sub_21729CCC4(v10);
    swift_endAccess();
    sub_21729C698(v11);
    result = sub_21729C698(v13);
    v9 = 1;
LABEL_7:
    *a2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2174E3F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[3] = a7;
  v13[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a1, a7);
  v13[5] = 1;
  sub_21733B548(v13, v12);
  swift_beginAccess();
  sub_217751DE8();
  sub_217751DE8();
  sub_21729CCC4(v12);
  swift_endAccess();
  return sub_21729C698(v13);
}

uint64_t sub_2174E4038()
{
  v1 = *(v0 + 24);
  sub_21720BA7C();
  if (!*(&v4 + 1))
  {
    return sub_2171F06D8(&v3, &qword_27CB24B50, &qword_2177595A0);
  }

  v6[0] = v3;
  v6[1] = v4;
  v6[2] = v5;
  return sub_21729C698(v6);
}

uint64_t sub_2174E40D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  sub_217751DE8();
  sub_2174E3B48(a1);
  swift_beginAccess();
  v6 = *(a2 + 16);
  sub_217751DE8();
  sub_2173ACC08(v6, &v9);

  if (*(&v10 + 1))
  {
    v12[0] = v9;
    v12[1] = v10;
    v13 = v11;
    result = sub_2171FF30C(v12, &v9);
    if (__OFSUB__(*(&v13 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v11 + 1) = *(&v13 + 1) - 1;
      if (*(&v13 + 1) - 1 < 1)
      {
        sub_2171F06D8(a3, &qword_27CB24B50, &qword_2177595A0);
        sub_21733B548(v12, a3);
        memset(v8, 0, sizeof(v8));
      }

      else
      {
        sub_21733B548(&v9, v8);
      }

      swift_beginAccess();
      sub_21729CCC4(v8);
      swift_endAccess();
      sub_21729C698(&v9);
      return sub_21729C698(v12);
    }
  }

  else
  {

    return sub_2171F06D8(&v9, &qword_27CB24B50, &qword_2177595A0);
  }

  return result;
}

uint64_t sub_2174E42B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_217753058(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_217753058();
    }
  }

  return result;
}

uint64_t sub_2174E4358()
{
  sub_217751FF8();

  return sub_217751FF8();
}

uint64_t sub_2174E43A8()
{
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2174E4434()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_2174E43A8();
}

uint64_t sub_2174E4440()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_2174E4358();
}

uint64_t sub_2174E444C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2177531E8();
  sub_2174E4358();
  return sub_217753238();
}

uint64_t SharedRelatedItemStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SharedRelatedItemStore.__deallocating_deinit()
{
  SharedRelatedItemStore.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2174E4504()
{
  v0 = sub_217752CA8();
  __swift_allocate_value_buffer(v0, qword_280C01F70);
  v1 = __swift_project_value_buffer(v0, qword_280C01F70);
  return CodingUserInfoKey.init(label:)(0xD00000000000001FLL, 0x80000002177AF090, v1);
}

uint64_t JSONDecoder.sharedRelatedItemStore.getter()
{
  if (qword_280BE2200 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  v0 = sub_217752CA8();
  v1 = __swift_project_value_buffer(v0, qword_280C01F70);
  v2 = sub_217751318();
  sub_2173B0718(v5, v1, v2);

  if (v5[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E08, &unk_21776FB50);
    type metadata accessor for SharedRelatedItemStore();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2171F06D8(v5, &qword_27CB26E00, &unk_217767590);
    return 0;
  }
}

void sub_2174E464C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  JSONDecoder.sharedRelatedItemStore.setter(v4);
}

void (*JSONDecoder.sharedRelatedItemStore.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = JSONDecoder.sharedRelatedItemStore.getter();
  return sub_2174E46C0;
}

void sub_2174E46C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    JSONDecoder.sharedRelatedItemStore.setter(v5);
  }

  else
  {
    JSONDecoder.sharedRelatedItemStore.setter(*a1);
  }
}

_OWORD *sub_2174E473C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_217752CA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v34);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v16 = *a4;
  v17 = sub_217632604(a2);
  if (__OFADD__(v16[2], (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E20, &qword_217767718);
  if ((sub_217752CB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *a4;
  v22 = sub_217632604(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_10:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *a4;
  if (v20)
  {
    v25 = (v24[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return sub_2172124CC(&v34, v25);
  }

  else
  {
    (*(v10 + 16))(v14, a2, v9);
    v27 = v35;
    v28 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
    v29 = *(*(v27 - 8) + 64);
    v30 = MEMORY[0x28223BE20](v28, v28);
    v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v32, v30);
    sub_2174E4C3C(v19, v14, v32, v24, a5);
    return __swift_destroy_boxed_opaque_existential_1(&v34);
  }
}

uint64_t sub_2174E49FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2174E4A3C(uint64_t result, int a2, int a3)
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

uint64_t sub_2174E4A98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2174E4AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2174E4B2C()
{
  result = qword_280BE37F8;
  if (!qword_280BE37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE37F8);
  }

  return result;
}

uint64_t sub_2174E4B80@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  return sub_2174E40D8(v1[4], v1[6], a1);
}

uint64_t sub_2174E4BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B50, &qword_2177595A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2174E4C3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = sub_217752CA8();
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  result = sub_2172124CC(&v17, (a4[7] + 32 * a1));
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_2174E4D44()
{
  OUTLINED_FUNCTION_30_0();
  v0[3] = v1;
  v0[4] = v2;
  OUTLINED_FUNCTION_8_0(&dword_217769928);
  OUTLINED_FUNCTION_36_1();
  v0[5] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_68(v3);

  return v6(v5);
}

uint64_t sub_2174E4DD4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = v2[5];
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v3[6] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v7 = v3[4];
      swift_getObjectType();
      v8 = sub_217752498();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    return MEMORY[0x2822009F8](sub_2174E4F30, v8, v10);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v11();
  }
}

uint64_t sub_2174E4F30()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_2174E4FB8()
{
  OUTLINED_FUNCTION_30_0();
  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_8_0(&dword_217769928);
  OUTLINED_FUNCTION_36_1();
  *(v0 + 24) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_68(v2);

  return v5(v4);
}

uint64_t sub_2174E5048()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  if (v0)
  {

    v6 = OUTLINED_FUNCTION_6_34();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v9();
  }
}

uint64_t sub_2174E5164()
{
  v1 = *(v0 + 16);
  *(v1 + 2) = 0;
  *v1 = 2;
  return OUTLINED_FUNCTION_1_61();
}

uint64_t sub_2174E5178(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_217752498();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](sub_2174E5214, v4, v6);
}

uint64_t sub_2174E5214()
{
  OUTLINED_FUNCTION_10();
  v1 = **(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_2174E52A8;
  v4 = *(v0 + 16);

  return sub_2174E5EEC();
}

uint64_t sub_2174E52A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2174E538C()
{
  OUTLINED_FUNCTION_30_0();
  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_8_0(&dword_217769A28);
  OUTLINED_FUNCTION_36_1();
  *(v0 + 24) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_68(v2);

  return v5(v4);
}

uint64_t sub_2174E541C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  if (v0)
  {

    v6 = OUTLINED_FUNCTION_6_34();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v9();
  }
}

uint64_t sub_2174E5548()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28990, &qword_21776FDB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v32 = &v31 - v5;
  *(v0 + 24) = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  v6 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationsIterator;
  v31 = sub_217752888();
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v31);
  v7 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationCenter;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  v8 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationName;
  *(v0 + v8) = sub_217751F18();
  v9 = (v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_underlyingNotificationKey);
  *v9 = 0xD000000000000016;
  v9[1] = 0x80000002177AF1E0;
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  v10 = qword_280C029A0;
  [qword_280C029A0 beginObservingCloudServiceStatus];
  swift_weakInit();
  swift_weakAssign();
  v11 = [objc_opt_self() defaultCenter];
  v12 = *MEMORY[0x277D7F8F0];
  sub_217202078(v40, v33, &qword_27CB289A0, &qword_21776FDD8);
  v13 = swift_allocObject();
  sub_2174E6CCC(v33, v13 + 16);
  v38 = sub_2174E6E34;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_217586F94;
  v37 = &block_descriptor_7;
  v14 = _Block_copy(&aBlock);

  v15 = [v11 addObserverForName:v12 object:v10 queue:0 usingBlock:v14];
  _Block_release(v14);
  OUTLINED_FUNCTION_14_32();
  v16 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v16);
  OUTLINED_FUNCTION_13_34();
  sub_217752378();
  swift_endAccess();
  v17 = *MEMORY[0x277D7F8F8];
  sub_217202078(v40, v33, &qword_27CB289A0, &qword_21776FDD8);
  v18 = swift_allocObject();
  sub_2174E6CCC(v33, v18 + 16);
  v38 = sub_2174E6D44;
  v39 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_217586F94;
  v37 = &block_descriptor_29;
  v19 = _Block_copy(&aBlock);

  v20 = [v11 addObserverForName:v17 object:v10 queue:0 usingBlock:v19];
  _Block_release(v19);
  OUTLINED_FUNCTION_14_32();
  v21 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v21);
  OUTLINED_FUNCTION_13_34();
  sub_217752378();
  swift_endAccess();
  v22 = *(v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationName);
  v23 = *(v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationCenter);
  v24 = v22;
  v25 = sub_217752898();

  swift_beginAccess();
  v26 = *(v1 + 32);
  *(v1 + 32) = v25;

  swift_beginAccess();
  if (*(v1 + 32))
  {
    swift_endAccess();

    v27 = v32;
    sub_217752868();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_2171F06D8(v40, &qword_27CB289A0, &qword_21776FDD8);
    v28 = 0;
  }

  else
  {
    sub_2171F06D8(v40, &qword_27CB289A0, &qword_21776FDD8);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v28 = 1;
    v27 = v32;
  }

  __swift_storeEnumTagSinglePayload(v27, v28, 1, v31);
  v29 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationsIterator;
  swift_beginAccess();
  sub_2174E6D60(v27, v1 + v29);
  swift_endAccess();
  return v1;
}

uint64_t sub_2174E5A68(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2174E5DBC(a1);
  }

  return result;
}

uint64_t sub_2174E5AB0()
{
  v1 = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = sub_217204DD0(v2);
  sub_217751DE8();
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEA2E30](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    [v1 removeObserver_];
    swift_unknownObjectRelease();
  }

  if (qword_280BEAE60 == -1)
  {
    goto LABEL_10;
  }

LABEL_13:
  OUTLINED_FUNCTION_3_3();
LABEL_10:
  [qword_280C029A0 endObservingCloudServiceStatus];

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  sub_2171F06D8(v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationsIterator, &qword_27CB28990, &qword_21776FDB8);

  v8 = *(v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_underlyingNotificationKey + 8);

  return v0;
}

uint64_t sub_2174E5C68()
{
  sub_2174E5AB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2174E5CE8()
{
  sub_2174E6848();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2174E5DBC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationCenter);
  v4 = *(v1 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationName);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28998, &unk_217780360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  v9 = *(v1 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_underlyingNotificationKey);
  v10 = *(v1 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_underlyingNotificationKey + 8);
  sub_217751DE8();
  sub_217752A48();
  v6 = sub_2177513E8();
  *(inited + 96) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, a1, v6);
  v8 = sub_217751DC8();
  sub_2174E6C30(v4, 0, v8, v3);
}

uint64_t sub_2174E5EEC()
{
  OUTLINED_FUNCTION_10();
  v1[16] = v2;
  v1[17] = v0;
  v3 = sub_217752888();
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28990, &qword_21776FDB8) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB282D0, &qword_21776C3D0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v8 = sub_2177513E8();
  v1[24] = v8;
  v9 = *(v8 - 8);
  v1[25] = v9;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2174E6084()
{
  v1 = v0[16];
  v2 = v0[17];
  updated = _s13UpdateTriggerOMa(0);
  v0[28] = updated;
  OUTLINED_FUNCTION_7_41();
  if ((*(v2 + 16) & 1) == 0)
  {
    v10 = v0[16];
    sub_2171F06D8(v10, &qword_27CB27230, &qword_217769A30);
    *(v2 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, updated);
    goto LABEL_5;
  }

  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationsIterator;
  swift_beginAccess();
  sub_217202078(v6 + v7, v4, &qword_27CB28990, &qword_21776FDB8);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    v8 = v0[23];
    v9 = v0[24];
    sub_2171F06D8(v0[21], &qword_27CB28990, &qword_21776FDB8);
    OUTLINED_FUNCTION_7_41();
    sub_2171F06D8(v0[23], &unk_27CB282D0, &qword_21776C3D0);
LABEL_5:
    v12 = v0[26];
    v11 = v0[27];
    v14 = v0[22];
    v13 = v0[23];
    v16 = v0[20];
    v15 = v0[21];

    OUTLINED_FUNCTION_20_0();

    return v17();
  }

  v19 = v0[21];
  (*(v0[19] + 16))(v0[20], v19, v0[18]);
  sub_2171F06D8(v19, &qword_27CB28990, &qword_21776FDB8);
  v20 = *(MEMORY[0x277CC9D60] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[29] = v21;
  *v21 = v22;
  v21[1] = sub_2174E62C4;
  v23 = v0[23];
  v24 = v0[20];

  return MEMORY[0x28211EE50](v23);
}

uint64_t sub_2174E62C4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v2 = v1[29];
  v3 = v1[20];
  v4 = v1[19];
  v5 = v1[18];
  v6 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  v8 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2174E6404()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v2;
LABEL_11:
    sub_2171F06D8(v3, &unk_27CB282D0, &qword_21776C3D0);
    goto LABEL_12;
  }

  v4 = *(*(v0 + 200) + 32);
  v4(*(v0 + 216), v2, v1);
  v5 = sub_2177513D8();
  if (!v5)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
LABEL_9:
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    sub_2171F06D8(v0 + 56, &qword_27CB2AD40, &qword_2177583F0);
    OUTLINED_FUNCTION_7_41();
    goto LABEL_10;
  }

  v6 = v5;
  v7 = (*(v0 + 136) + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_underlyingNotificationKey);
  v8 = v7[1];
  *(v0 + 112) = *v7;
  *(v0 + 120) = v8;
  sub_217751DE8();
  sub_217752A48();
  sub_2173AC9A0(v0 + 16, v6);

  sub_2174E6BDC(v0 + 16);
  if (!*(v0 + 80))
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    goto LABEL_9;
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  v11 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v10, v11 ^ 1u, 1, v9);
  if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
LABEL_10:
    v3 = *(v0 + 176);
    goto LABEL_11;
  }

  v4(*(v0 + 208), *(v0 + 176), *(v0 + 192));
  v22 = sub_2177513C8();
  v23 = *MEMORY[0x277D7F8F0];
  v24 = sub_217751F48();
  v26 = v25;
  if (v24 == sub_217751F48() && v26 == v27)
  {

    goto LABEL_26;
  }

  v29 = OUTLINED_FUNCTION_12_29();

  if (v29)
  {
LABEL_26:

    v37 = *(v0 + 224);
    v38 = *(v0 + 208);
    v39 = *(v0 + 192);
    v40 = *(v0 + 128);
    (*(*(v0 + 200) + 8))(*(v0 + 216), v39);
    sub_2171F06D8(v40, &qword_27CB27230, &qword_217769A30);
    v4(v40, v38, v39);
LABEL_27:
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v37);
    goto LABEL_12;
  }

  v30 = *MEMORY[0x277D7F8F8];
  v31 = sub_217751F48();
  v33 = v32;
  if (v31 == sub_217751F48() && v33 == v34)
  {
    v36 = 1;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_12_29();
  }

  v41 = *(v0 + 216);
  v42 = *(v0 + 192);
  v43 = *(v0 + 200);

  v44 = *(v43 + 8);
  v44(v41, v42);
  if (v36)
  {
    v37 = *(v0 + 224);
    v45 = *(v0 + 208);
    v46 = *(v0 + 192);
    v40 = *(v0 + 128);
    sub_2171F06D8(v40, &qword_27CB27230, &qword_217769A30);
    v4(v40, v45, v46);
    goto LABEL_27;
  }

  v44(*(v0 + 208), *(v0 + 192));
LABEL_12:
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v19 = *(v0 + 160);
  v18 = *(v0 + 168);

  OUTLINED_FUNCTION_20_0();

  return v20();
}

void sub_2174E6848()
{
  if (!qword_280BE22F8)
  {
    sub_217752888();
    v0 = sub_2177528F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE22F8);
    }
  }
}

unint64_t sub_2174E68B4()
{
  result = qword_27CB28988;
  if (!qword_27CB28988)
  {
    _s14UpdateTriggersV8IteratorCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28988);
  }

  return result;
}

uint64_t sub_2174E690C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2172AFE20;

  return sub_2174E5EEC();
}

uint64_t sub_2174E69A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2174E6A74;

  return (sub_2174E5178)(a1, a2, a3, v3 + 16);
}

uint64_t sub_2174E6A74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2174E6B5C()
{
  updated = _s14UpdateTriggersV8IteratorCMa(0);
  v1 = *(updated + 48);
  v2 = *(updated + 52);
  swift_allocObject();
  return sub_2174E5548();
}

uint64_t sub_2174E6B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2174E6B5C();
  *a1 = result;
  return result;
}

void sub_2174E6C30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_217751D88();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_2174E6CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB289A0, &qword_21776FDD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174E6D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28990, &qword_21776FDB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174E6DD0()
{
  result = sub_2177513E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return swift_beginAccess();
}

void *CloudResource.init(item:type:href:customMetadata:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  v18 = type metadata accessor for CloudResource();
  v19 = a9 + v18[9];
  *v19 = v15;
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  v20 = (a9 + v18[10]);
  *v20 = a3;
  v20[1] = a4;
  result = memcpy((a9 + v18[11]), a5, 0x180uLL);
  *(a9 + v18[12]) = a6;
  *(a9 + v18[13]) = a7;
  *(a9 + v18[14]) = a8;
  *(a9 + v18[15]) = a10;
  return result;
}

uint64_t CloudResource.equivalentResource<A>(with:)@<X0>(int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a1[10];
  v15 = v3 + a1[9];
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v15) = *(v15 + 16);
  v23[0] = v16;
  v23[1] = v17;
  v24 = v15;
  v18 = *(v3 + v14 + 8);
  v21 = *(v3 + v14);
  v19 = a1[11];
  memcpy(v25, (v3 + v19), 0x180uLL);
  CloudResource.init(item:type:href:customMetadata:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)(v12, v23, v21, v18, (v3 + v19), *(v3 + a1[12]), *(v3 + a1[13]), *(v3 + a1[14]), a3, *(v3 + a1[15]), a2);
  sub_217751DE8();
  sub_217751DE8();
  sub_2174E712C(v25, v23);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2174E712C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25620, &qword_21776A5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174E719C(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_21_29(v7);
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!OUTLINED_FUNCTION_29_25())
  {
    return (*(*(a1 + 24) + 152))(v2);
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2174E72D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_21_29(v7);
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!OUTLINED_FUNCTION_29_25())
  {
    return (*(*(a1 + 24) + 168))(v2);
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t CloudResource.type.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return sub_217751DE8();
}

uint64_t CloudResource.href.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];
  sub_217751DE8();
  return v3;
}

uint64_t CloudResource.customMetadata.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 44);
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(a2, (v2 + v4), 0x180uLL);
  return sub_2174E712C(__dst, &v6);
}

uint64_t sub_2174E7574()
{
  v0 = sub_217752DC8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2174E75CC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 1717924456;
      break;
    case 3:
      result = 0x7475626972747461;
      break;
    case 4:
      result = 0x6E6F6974616C6572;
      break;
    case 5:
      result = 0x7377656976;
      break;
    case 6:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174E7684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174E76F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2174E7764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174E77D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174E7844@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  result = sub_2174E7574();
  *a3 = result;
  return result;
}

uint64_t sub_2174E7880@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  result = sub_2174E75CC(*v2);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_2174E78B4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_2174E7680(*v1);
}

uint64_t sub_2174E78C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_2174E75C0(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a4 = result;
  return result;
}

uint64_t sub_2174E78F8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *v1;
  return OUTLINED_FUNCTION_98_0();
}

uint64_t sub_2174E7920@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_2174E75C4();
  *a2 = result;
  return result;
}

uint64_t sub_2174E7954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2174E79A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CloudResource<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v116 = a4;
  v108 = a6;
  swift_getAssociatedTypeWitness();
  v106 = sub_2177528F8();
  OUTLINED_FUNCTION_43(v106);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_150();
  v105 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43(AssociatedTypeWitness);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_150();
  v109 = v20;
  *&v128[0] = a2;
  *(&v128[0] + 1) = a3;
  *&v128[1] = a4;
  *(&v128[1] + 1) = a5;
  _s10CodingKeysOMa_1();
  OUTLINED_FUNCTION_10_36();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_217752ED8();
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v111 = v23;
  v112 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_150();
  v115 = v28;
  OUTLINED_FUNCTION_0();
  v114 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v98 - v38;
  v40 = type metadata accessor for CloudResource();
  OUTLINED_FUNCTION_0_0(v40);
  v107 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v98 - v46;
  sub_2171FF30C(a1, v128);
  v48 = v117;
  sub_217752608();
  if (v48)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v102 = a3;
  v103 = v35;
  v100 = v40;
  v101 = v47;
  v116 = a2;
  v117 = v39;
  v49 = a1[3];
  v50 = a1[4];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v49);
  sub_2177532C8();
  sub_217751DC8();

  v129[63] = 3;
  sub_217752E08();
  v51 = v114;
  OUTLINED_FUNCTION_154();
  WitnessTable = sub_217751DC8();
  OUTLINED_FUNCTION_154();
  v53 = sub_217751DC8();
  OUTLINED_FUNCTION_154();
  v99 = sub_217751DC8();
  sub_21733BE70(v128);
  v54 = v103;
  v56 = v116;
  v55 = v117;
  v98 = *(v51 + 16);
  v98(v103, v117, v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    sub_21726B918(v123, v124);
    OUTLINED_FUNCTION_18_31();
    v58 = (*(v57 + 16))(v129, v55, v54);
    v59 = v104;
    v109 = v53;
    AssociatedTypeWitness = v58;
    if (OUTLINED_FUNCTION_17_28())
    {

      OUTLINED_FUNCTION_16_37();
      sub_217752E08();
      OUTLINED_FUNCTION_18_31();
      v62 = *(v61 + 24);
      v63 = OUTLINED_FUNCTION_41_18();
      WitnessTable = v64(v63);
      __swift_destroy_boxed_opaque_existential_1(v123);
    }

    if (OUTLINED_FUNCTION_17_28())
    {

      OUTLINED_FUNCTION_16_37();
      sub_217752E08();
      OUTLINED_FUNCTION_18_31();
      v71 = *(v70 + 32);
      v72 = OUTLINED_FUNCTION_41_18();
      v109 = v73(v72);
      __swift_destroy_boxed_opaque_existential_1(v123);
    }

    v122[0] = 6;
    if (sub_217752EC8())
    {

      v122[0] = 6;
      OUTLINED_FUNCTION_24_28();
      sub_217752E08();
      sub_2171FF30C(v121, v119);
      CloudResourceCustomMetadata.init(from:)(v119, v122);
      memcpy(v120, v122, sizeof(v120));
      v92 = v125;
      v93 = v126;
      __swift_project_boxed_opaque_existential_1(v124, v125);
      v94 = sub_217383B34(&unk_28295F078);
      v99 = (*(v93 + 40))(v121, v94, v92, v93);
      __swift_destroy_boxed_opaque_existential_1(v121);

      memcpy(v118, v120, sizeof(v118));
      nullsub_1(v118, v97);
      memcpy(v123, v118, sizeof(v123));
      v56 = v116;
    }

    else
    {
      memcpy(v123, v128, sizeof(v123));
    }

    __swift_destroy_boxed_opaque_existential_1(v124);
    v96 = v123;
  }

  else
  {
    memset(v123, 0, 40);
    sub_2171F0738(v123, &qword_27CB25588, &unk_21775D380);
    sub_2171FF30C(v129, v123);
    v60 = v109;
    (*(v102 + 144))(v56);
    AssociatedTypeWitness = Dictionary<>.init<A>(from:skippingValuesFoundIn:)(v123, v60, AssociatedTypeWitness);
    LOBYTE(v123[0]) = 4;
    if (sub_217752EC8())
    {

      OUTLINED_FUNCTION_16_37();
      sub_217752E08();
      sub_2171FF30C(v123, v122);
      (*(v102 + 160))(v56, v102);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
      OUTLINED_FUNCTION_154();
      sub_217752C68();

      v65 = OUTLINED_FUNCTION_24_28();
      v67 = Dictionary<>.init(from:skippingValuesFor:)(v65, v66);
      v59 = v104;
      WitnessTable = v67;
      v109 = v53;
      __swift_destroy_boxed_opaque_existential_1(v123);
    }

    else
    {
      v109 = v53;
      v59 = v104;
    }

    if (OUTLINED_FUNCTION_17_28())
    {

      OUTLINED_FUNCTION_16_37();
      sub_217752E08();
      sub_2171FF30C(v123, v122);
      (*(v102 + 176))(v56, v102);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
      OUTLINED_FUNCTION_154();
      sub_217752C68();

      v68 = OUTLINED_FUNCTION_24_28();
      v109 = Dictionary<>.init(from:skippingValuesFor:)(v68, v69);
      __swift_destroy_boxed_opaque_existential_1(v123);
    }

    LOBYTE(v123[0]) = 6;
    if (sub_217752EC8())
    {

      LOBYTE(v123[0]) = 6;
      sub_217752E08();
      sub_2171FF30C(v118, v124);
      CloudResourceCustomMetadata.init(from:)(v124, v123);
      memcpy(v122, v123, sizeof(v122));
      sub_2171FF30C(v118, v121);
      v90 = v105;
      (*(v102 + 184))(v56);
      v91 = sub_217383B34(&unk_28295F078);
      v99 = Dictionary<>.init<A>(from:skippingValuesFoundIn:and:)(v121, v90, v91, v106);
      __swift_destroy_boxed_opaque_existential_1(v118);
      memcpy(v120, v122, sizeof(v120));
      nullsub_1(v120, v95);
      v96 = v120;
    }

    else
    {
      v96 = v128;
    }
  }

  memcpy(v127, v96, sizeof(v127));
  v74 = v101;
  LOBYTE(v123[0]) = 2;
  if (sub_217752EC8())
  {
    LOBYTE(v123[0]) = 2;
    v75 = sub_217752E68();
    v77 = v76;
    v116 = v75;
  }

  else
  {
    v116 = 0;
    v77 = 0;
  }

  v98(v74, v117, v56);
  v122[0] = 1;
  sub_21733BE84();
  v78 = v112;
  sub_217752EA8();
  v79 = OUTLINED_FUNCTION_2_69();
  v80(v79, v78);
  v81 = OUTLINED_FUNCTION_27_27();
  v82(v81, v56);
  v83 = *(&v123[0] + 1);
  v84 = v123[1];
  v85 = v100;
  v86 = &v74[v100[9]];
  *v86 = *&v123[0];
  *(v86 + 1) = v83;
  v86[16] = v84;
  v87 = &v74[v85[10]];
  *v87 = v116;
  v87[1] = v77;
  memcpy(&v74[v85[11]], v127, 0x180uLL);
  *&v74[v85[12]] = AssociatedTypeWitness;
  *&v74[v85[13]] = WitnessTable;
  v88 = v108;
  *&v74[v85[14]] = v109;
  *&v74[v85[15]] = v99;
  v89 = v107;
  (*(v107 + 16))(v88, v74, v85);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return (*(v89 + 8))(v74, v85);
}

uint64_t CloudResource<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v249 = a2;
  v10 = v8;
  swift_getAssociatedTypeWitness();
  v11 = OUTLINED_FUNCTION_31_23();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v224 = v13;
  v225 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_150();
  v226 = v18;
  v229 = v4;
  OUTLINED_FUNCTION_25_33();
  v228 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_150();
  v227 = v24;
  OUTLINED_FUNCTION_30_24();
  v25 = OUTLINED_FUNCTION_31_23();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v230 = v27;
  v231 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  OUTLINED_FUNCTION_150();
  v233 = v32;
  v235 = v4;
  OUTLINED_FUNCTION_25_33();
  v234 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_150();
  v232 = v38;
  OUTLINED_FUNCTION_30_24();
  v39 = OUTLINED_FUNCTION_31_23();
  v40 = OUTLINED_FUNCTION_0_0(v39);
  v238 = v41;
  v239 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44, v45);
  OUTLINED_FUNCTION_150();
  v237 = v46;
  v241 = v4;
  OUTLINED_FUNCTION_25_33();
  v240 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50, v51);
  OUTLINED_FUNCTION_150();
  v236 = v52;
  v252 = v9;
  v53 = OUTLINED_FUNCTION_30_24();
  v54 = OUTLINED_FUNCTION_0_0(v53);
  v244 = v55;
  v245 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54, v58);
  v243 = &v222 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v61);
  v242 = &v222 - v62;
  v262 = v10;
  OUTLINED_FUNCTION_0();
  v247 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v66, v67);
  OUTLINED_FUNCTION_1();
  v248 = v69 - v68;
  v257[0] = v10;
  v257[1] = v9;
  v257[2] = a3;
  v257[3] = a4;
  _s10CodingKeysOMa_1();
  OUTLINED_FUNCTION_10_36();
  swift_getWitnessTable();
  v70 = sub_217752F98();
  OUTLINED_FUNCTION_0_0(v70);
  v72 = v71;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v75, v76);
  v78 = &v222 - v77;
  v79 = a1[3];
  v80 = a1[4];
  v246 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v79);
  v81 = v251;
  sub_2177532F8();
  v82 = v252[17];
  v83 = OUTLINED_FUNCTION_37_20();
  v257[0] = v84(v83);
  v257[1] = v85;
  LOBYTE(v253[0]) = 0;
  sub_2172E1B18();
  v86 = v250;
  sub_217752F88();
  if (v86)
  {

    return (*(v72 + 8))(v78, v70);
  }

  v250 = v72;

  v88 = v249;
  v89 = (v81 + v249[10]);
  if (v89[1])
  {
    v90 = *v89;
    LOBYTE(v257[0]) = 2;
    v91 = v70;
    sub_217752F48();
  }

  else
  {
    v91 = v70;
  }

  v92 = (v81 + v88[9]);
  v93 = *v92;
  v94 = v92[1];
  LOBYTE(v92) = *(v92 + 16);
  v259 = v93;
  v260 = v94;
  v261 = v92;
  v258 = 1;
  v95 = sub_21733ABF0();
  sub_217751DE8();
  OUTLINED_FUNCTION_22_30();
  if (v95)
  {

    v96 = OUTLINED_FUNCTION_9_38();
    return v97(v96);
  }

  v98 = sub_217751DC8();
  memcpy(v257, (v81 + v88[11]), sizeof(v257));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v257) == 1)
  {
    v99 = v81;
    v223 = v98;
  }

  else
  {
    v103 = v78;

    v104 = sub_217751378();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_allocObject();
    sub_217751368();
    memcpy(v253, v257, sizeof(v253));
    sub_21733AC98();
    v111 = sub_217751358();
    v113 = v112;
    v222 = v91;
    v114 = sub_217751348();
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    sub_217751308();
    v120 = v113;
    v99 = v81;

    sub_217275694(v111, v120);

    v223 = v253[0];
    v91 = v222;
    v78 = v103;
    v88 = v249;
  }

  (*(v247 + 16))(v248, v99, v262);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!swift_dynamicCast())
  {
    v256 = 0;
    memset(v255, 0, sizeof(v255));
    sub_2171F0738(v255, &qword_27CB25588, &unk_21775D380);
    v107 = *(v99 + v88[12]);
    v108 = v252[18];
    if (*(v107 + 16))
    {
      v109 = v243;
      v108(v262, v252);
      v110 = v245;
      swift_getAssociatedConformanceWitness();
      v121 = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v109, v246, v107, v110);
      v122 = v251;
      v123 = OUTLINED_FUNCTION_14_18();
      v124(v123, v110);
      v253[0] = v121;
      LOBYTE(v255[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v125, v126);
      OUTLINED_FUNCTION_1_62();
      sub_217752F88();
    }

    else
    {
      v108(v262, v252);
      LOBYTE(v253[0]) = 3;
      v119 = v245;
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_22_30();
      v132 = OUTLINED_FUNCTION_27_27();
      v133(v132, v119);
      v122 = v251;
    }

    v134 = v252[19];
    v135 = v237;
    v136 = OUTLINED_FUNCTION_37_20();
    v137(v136);
    v138 = v241;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v135, 1, v241);
    v140 = v249;
    if (EnumTagSinglePayload == 1)
    {
      v141 = OUTLINED_FUNCTION_14_18();
      v142(v141);
      v143 = *(v122 + v140[13]);
      if (*(v143 + 16))
      {
        v253[0] = v143;
        LOBYTE(v255[0]) = 4;
        sub_217751DE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        OUTLINED_FUNCTION_0_21();
        sub_21733ACEC(v144, v145);
        OUTLINED_FUNCTION_1_62();
        sub_217752F88();
        v146 = v235;

        v140 = v249;
        goto LABEL_29;
      }
    }

    else
    {
      v147 = v135;
      v148 = v236;
      (*(v240 + 32))(v236, v147, v138);
      v149 = *(v122 + v140[13]);
      if (!*(v149 + 16))
      {
        LOBYTE(v253[0]) = 4;
        OUTLINED_FUNCTION_35_18();
        swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_22_30();
        v161 = OUTLINED_FUNCTION_14_18();
        v162(v161, v138);
LABEL_28:
        v146 = v235;
LABEL_29:
        v165 = v252[21];
        v166 = v233;
        v167 = OUTLINED_FUNCTION_37_20();
        v168(v167);
        v169 = v166;
        if (__swift_getEnumTagSinglePayload(v166, 1, v146) == 1)
        {
          (*(v230 + 8))(v166, v231);
          v170 = *(v122 + v140[14]);
          if (!*(v170 + 16))
          {
LABEL_36:
            v140 = v249;
LABEL_37:
            v181 = v252;
            v182 = v252[23];
            v183 = v226;
            v184 = OUTLINED_FUNCTION_37_20();
            v185(v184, v181);
            v186 = v183;
            v187 = v183;
            v188 = v229;
            if (__swift_getEnumTagSinglePayload(v187, 1, v229) == 1)
            {
              v189 = v91;
              (*(v224 + 8))(v186, v225);
              v190 = *(v122 + v140[15]);
              v191 = v250;
              if (!*(v190 + 16))
              {
                if (*(v223 + 16))
                {
                  v253[0] = v223;
                  OUTLINED_FUNCTION_38_18();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
                  OUTLINED_FUNCTION_0_21();
                  sub_21733ACEC(v203, v204);
                  OUTLINED_FUNCTION_7_42();
                  OUTLINED_FUNCTION_22_30();

                  return (*(v191 + 8))(v78, v189);
                }

                else
                {
                  (*(v250 + 8))(v78, v189);
                }
              }

              v192 = *(v122 + v140[15]);
              sub_217751DE8();
              v253[0] = sub_2174EA164(v223, v190);
              OUTLINED_FUNCTION_38_18();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              OUTLINED_FUNCTION_0_21();
              sub_21733ACEC(v193, v194);
              OUTLINED_FUNCTION_7_42();
              sub_217752F88();
              v195 = *(v191 + 8);
              v196 = OUTLINED_FUNCTION_86();
              v197(v196);
            }

            else
            {
              (*(v228 + 32))(v227, v186, v188);
              v198 = *(v122 + v140[15]);
              v199 = *(v198 + 16);
              swift_getAssociatedConformanceWitness();
              if (v199)
              {
                v200 = v78;
                v201 = Dictionary<>.merging<A>(withValuesFoundIn:and:for:)(v227, v223, v246, v198, v188);
                v202 = v250;
                v206 = v201;

                v253[0] = v206;
                OUTLINED_FUNCTION_38_18();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
                OUTLINED_FUNCTION_0_21();
                sub_21733ACEC(v207, v208);
                OUTLINED_FUNCTION_7_42();
                sub_217752F88();
                v209 = OUTLINED_FUNCTION_27_27();
                v210(v209);
                (*(v202 + 8))(v200, v91);
              }

              else
              {
                v205 = v228;
                v211 = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v227, v246, v223, v188);

                v253[0] = v211;
                OUTLINED_FUNCTION_38_18();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
                OUTLINED_FUNCTION_0_21();
                sub_21733ACEC(v212, v213);
                OUTLINED_FUNCTION_1_62();
                sub_217752F88();
                v214 = *(v205 + 8);
                v215 = OUTLINED_FUNCTION_86();
                v216(v215);
                v177 = OUTLINED_FUNCTION_9_38();
                v178(v177);
              }
            }
          }

          v253[0] = v170;
          LOBYTE(v255[0]) = 5;
          sub_217751DE8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          OUTLINED_FUNCTION_0_21();
          sub_21733ACEC(v171, v172);
          OUTLINED_FUNCTION_1_62();
          sub_217752F88();
        }

        else
        {
          v173 = v232;
          (*(v234 + 32))(v232, v169, v146);
          v174 = *(v122 + v140[14]);
          if (!*(v174 + 16))
          {
            LOBYTE(v253[0]) = 5;
            OUTLINED_FUNCTION_35_18();
            swift_getAssociatedConformanceWitness();
            OUTLINED_FUNCTION_22_30();
            OUTLINED_FUNCTION_33_21();
            v179(v173, v146);
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_35_18();
          swift_getAssociatedConformanceWitness();
          v253[0] = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v173, v246, v174, v146);
          LOBYTE(v255[0]) = 5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          OUTLINED_FUNCTION_0_21();
          sub_21733ACEC(v175, v176);
          OUTLINED_FUNCTION_1_62();
          sub_217752F88();
          OUTLINED_FUNCTION_33_21();
          v180(v232, v146);
        }

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_35_18();
      swift_getAssociatedConformanceWitness();
      v253[0] = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v148, v246, v149, v138);
      LOBYTE(v255[0]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v150, v151);
      OUTLINED_FUNCTION_1_62();
      sub_217752F88();
      v163 = OUTLINED_FUNCTION_34_20();
      v164(v163);
    }

    v140 = v249;
    goto LABEL_28;
  }

  v262 = v78;
  v222 = v91;
  sub_21726B918(v255, v253);
  v100 = v88;
  v101 = v253[3];
  v102 = v253[4];
  __swift_project_boxed_opaque_existential_1(v253, v253[3]);
  *&v255[0] = (*(v102 + 48))(*(v99 + v100[12]), v246, v101, v102);
  v254 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_0_21();
  sub_21733ACEC(v117, v118);
  OUTLINED_FUNCTION_8_42();
  sub_217752F88();

  v127 = v253[4];
  __swift_project_boxed_opaque_existential_1(v253, v253[3]);
  v128 = *(v251 + v249[13]);
  v129 = *(v127 + 56);
  OUTLINED_FUNCTION_40_19();
  v131 = v130();
  if (v131)
  {
    *&v255[0] = v131;
    v254 = 4;
    OUTLINED_FUNCTION_8_42();
    sub_217752F88();
  }

  v152 = v253[4];
  __swift_project_boxed_opaque_existential_1(v253, v253[3]);
  v153 = *(v251 + v249[14]);
  v154 = *(v152 + 64);
  OUTLINED_FUNCTION_40_19();
  v156 = v155();
  if (v156)
  {
    *&v255[0] = v156;
    v254 = 5;
    OUTLINED_FUNCTION_8_42();
    sub_217752F88();
  }

  v157 = *(v251 + v249[15]);
  sub_217751DE8();
  v158 = sub_2174EA164(v223, v157);
  v159 = v253[3];
  v160 = v253[4];
  __swift_project_boxed_opaque_existential_1(v253, v253[3]);
  v217 = (*(v160 + 72))(v158, v246, v159, v160);

  if (v217)
  {
    *&v255[0] = v217;
    v254 = 6;
    sub_217752F88();
    OUTLINED_FUNCTION_12_30();
    v218 = OUTLINED_FUNCTION_28_26();
    v219(v218);
  }

  else
  {
    OUTLINED_FUNCTION_12_30();
    v220 = OUTLINED_FUNCTION_28_26();
    v221(v220);
  }

  return __swift_destroy_boxed_opaque_existential_1(v253);
}

uint64_t sub_2174EA164(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2174EA73C(a1, sub_217747ADC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t static CloudResource<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  if ((sub_217751F08() & 1) == 0)
  {
    goto LABEL_28;
  }

  v6 = type metadata accessor for CloudResource();
  v7 = v6[9];
  v8 = *(v5 + v7);
  v9 = *(v5 + v7 + 8);
  v10 = (v3 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_28;
  }

  v12 = v6[10];
  v13 = (v5 + v12);
  v14 = *(v5 + v12 + 8);
  v15 = (v3 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v16)
  {
    goto LABEL_28;
  }

  v18 = v6[11];
  memcpy(__dst, (v5 + v18), sizeof(__dst));
  v19 = v6[11];
  memcpy(v34, (v3 + v19), sizeof(v34));
  memcpy(__src, (v5 + v18), 0x180uLL);
  memcpy(&__src[384], (v3 + v19), 0x180uLL);
  memcpy(v35, (v5 + v18), sizeof(v35));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v35) != 1)
  {
    OUTLINED_FUNCTION_32_23(v31);
    OUTLINED_FUNCTION_32_23(v29);
    memcpy(v30, &__src[384], 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v30) == 1)
    {
      OUTLINED_FUNCTION_32_23(v28);
      sub_2174E712C(__dst, v27);
      sub_2174E712C(v34, v27);
      sub_2174E712C(v31, v27);
      sub_21733BED8(v28);
LABEL_22:
      memcpy(v30, __src, sizeof(v30));
      sub_2171F0738(v30, &qword_27CB289A8, &qword_217790120);
      goto LABEL_28;
    }

    memcpy(v28, &__src[384], sizeof(v28));
    sub_2174E712C(__dst, v27);
    sub_2174E712C(v34, v27);
    sub_2174E712C(v31, v27);
    v20 = static CloudResourceCustomMetadata.== infix(_:_:)(v29, v28);
    memcpy(v26, v28, sizeof(v26));
    sub_21733BED8(v26);
    memcpy(v27, v29, sizeof(v27));
    sub_21733BED8(v27);
    OUTLINED_FUNCTION_32_23(v28);
    sub_2171F0738(v28, &qword_27CB25620, &qword_21776A5F0);
    if (v20)
    {
      goto LABEL_24;
    }

LABEL_28:
    v24 = 0;
    return v24 & 1;
  }

  memcpy(v30, &__src[384], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v30) != 1)
  {
    sub_2174E712C(__dst, v31);
    sub_2174E712C(v34, v31);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_32_23(v31);
  sub_2174E712C(__dst, v29);
  sub_2174E712C(v34, v29);
  sub_2171F0738(v31, &qword_27CB25620, &qword_21776A5F0);
LABEL_24:
  OUTLINED_FUNCTION_42_18(v6[12]);
  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_42_18(v6[13]);
  if ((v22 & 1) == 0)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_42_18(v6[14]);
  if ((v23 & 1) == 0)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_42_18(v6[15]);
  return v24 & 1;
}

uint64_t sub_2174EA570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  return static CloudResource<>.== infix(_:_:)(a1, a2);
}

uint64_t CloudResource<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  sub_217751EB8();
  v6 = (v2 + *(a2 + 36));
  v7 = *v6;
  v8 = v6[1];
  sub_217751FF8();
  v9 = (v2 + *(a2 + 40));
  if (v9[1])
  {
    v10 = *v9;
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  memcpy(v20, (v2 + *(a2 + 44)), sizeof(v20));
  sub_2172638E8(a1);
  v11 = OUTLINED_FUNCTION_39_15(*(a2 + 48));
  sub_217265A08(v11, v12);
  v13 = OUTLINED_FUNCTION_39_15(*(a2 + 52));
  sub_217265A08(v13, v14);
  v15 = OUTLINED_FUNCTION_39_15(*(a2 + 56));
  sub_217265A08(v15, v16);
  v17 = OUTLINED_FUNCTION_39_15(*(a2 + 60));

  return sub_217265A08(v17, v18);
}

uint64_t CloudResource<>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  CloudResource<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_2174EA6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  CloudResource<>.hash(into:)(v6, a2);
  return sub_217753238();
}

uint64_t sub_2174EA73C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v72 = a5;
  sub_217747F44(v71);
  v5 = v71[1];
  v6 = v71[3];
  v7 = v71[4];
  v57 = v71[5];
  v58 = v71[0];
  v8 = (v71[2] + 64) >> 6;
  sub_217751DE8();

  v55 = v8;
  v56 = v5;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v58 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(v58 + 56) + 24 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v62[0] = *v13;
    v62[1] = v14;
    v63 = v17;
    v64 = v16;
    v65 = v18;
    sub_217751DE8();
    sub_21726A5E0(v17, v16, v18);
    v57(&v66, v62);
    v19 = v63;
    v20 = v64;
    v21 = v65;

    sub_21726A608(v19, v20, v21);
    v22 = v67;
    if (!v67)
    {
LABEL_19:
      sub_2172303F0();
    }

    v23 = v66;
    v25 = v68;
    v24 = v69;
    v60 = v70;
    v26 = *v72;
    v28 = sub_21763246C(v66, v67);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_21;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      v33 = v72;
      sub_217747120(v31, a4 & 1);
      v34 = *v33;
      v35 = sub_21763246C(v23, v22);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v28 = v35;
    }

    v59 = (v9 - 1) & v9;
    v37 = *v72;
    if (v32)
    {
      v38 = 3 * v28;
      v39 = v37[7] + 8 * v38;
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      sub_21726A5E0(*v39, v41, v42);
      v43 = OUTLINED_FUNCTION_86();
      sub_21726A608(v43, v44, v60);

      v45 = v37[7] + 8 * v38;
      v46 = *v45;
      v47 = *(v45 + 8);
      *v45 = v40;
      *(v45 + 8) = v41;
      v48 = *(v45 + 16);
      *(v45 + 16) = v42;
      sub_21726A608(v46, v47, v48);
    }

    else
    {
      v37[(v28 >> 6) + 8] |= 1 << v28;
      v49 = (v37[6] + 16 * v28);
      *v49 = v23;
      v49[1] = v22;
      v50 = v37[7] + 24 * v28;
      *v50 = v25;
      *(v50 + 8) = v24;
      *(v50 + 16) = v60;
      v51 = v37[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_22;
      }

      v37[2] = v53;
    }

    a4 = 1;
    v6 = v10;
    v8 = v55;
    v5 = v56;
    v7 = v59;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

void sub_2174EAAB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598);
    if (v3 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE77E8);
      if (v4 <= 0x3F)
      {
        sub_217351BFC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2174EAB9C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 391) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2174EAD00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 391) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((v9 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 391) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 16) = 0;
              *v17 = a2 & 0x7FFFFFFF;
              *(v17 + 8) = 0;
            }

            else
            {
              *(v17 + 8) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((v9 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 391) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((v9 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 391) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 391) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_2174EAF04(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_30()
{

  return sub_217752F88();
}

uint64_t OUTLINED_FUNCTION_29_25()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_42_18(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v1 + a1);

  sub_217261FB0(v4, v5);
}

void *sub_2174EB138@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (!result)
  {
    LOBYTE(v4) = 6;
    goto LABEL_5;
  }

  v3 = [result musicKit_nowPlayingInfoAudioFormat_badging];
  if (v3 < 7)
  {
    v4 = 0x5030201000406uLL >> (8 * v3);
    result = swift_unknownObjectRelease();
LABEL_5:
    *a2 = v4;
    return result;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AF310);
  type metadata accessor for MusicKit_SoftLinking_MPNowPlayingAudioFormatBadging(0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.init(duration:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t static MusicPlayer.Transition.CrossfadeOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return sub_217753208();
  }

  v2 = *v0;
  sub_217753208();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x21CEA3580](v3);
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2177531E8();
  if (v2 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x21CEA3580](v3);
  }

  return sub_217753238();
}

uint64_t sub_2174EB37C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2177531E8();
  if (v2 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x21CEA3580](v3);
  }

  return sub_217753238();
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.description.getter()
{
  OUTLINED_FUNCTION_0_64();

  OUTLINED_FUNCTION_1_63();
  if (v1)
  {
    v0 = 0xE300000000000000;
    v2 = 7104878;
  }

  else
  {
    sub_2177525E8();
    v2 = 0;
  }

  MEMORY[0x21CEA23B0](v2, v0);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v4;
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.debugDescription.getter()
{
  OUTLINED_FUNCTION_0_64();

  OUTLINED_FUNCTION_1_63();
  if (v1)
  {
    v0 = 0xE300000000000000;
    v2 = 7104878;
  }

  else
  {
    sub_2177525E8();
    v2 = 0;
  }

  MEMORY[0x21CEA23B0](v2, v0);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v4;
}

unint64_t sub_2174EB550()
{
  result = qword_27CB289B0;
  if (!qword_27CB289B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289B0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s16CrossfadeOptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16CrossfadeOptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t CloudCatalogAssetProviding<>.hasSubscriptionOrRedownloadOffer.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(a1, a3);
  if (result)
  {
    v4 = result;
    v5 = (result + 40);
    v6 = -*(result + 16);
    v7 = -1;
    while (1)
    {
      v8 = v6 + v7 != -1;
      if (v6 + v7 == -1)
      {
LABEL_15:

        return v8;
      }

      if (++v7 >= *(v4 + 16))
      {
        break;
      }

      v9 = *(v5 - 1);
      v10 = *v5;
      if (v9 != 0x7069726373627573 || v10 != 0xEC0000006E6F6974)
      {
        v12 = *(v5 - 1);
        v13 = *v5;
        if ((sub_217753058() & 1) == 0 && (v9 != 0x6F6C6E776F646572 || v10 != 0xEA00000000006461))
        {
          v5 += 2;
          result = sub_217753058();
          if ((result & 1) == 0)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

MusicKit::CatalogAsset_optional __swiftcall CloudCatalogAssetProviding.extractCatalogAsset()()
{
  v3 = v1;
  v4 = v0;
  v5 = v2;
  v6 = *(v1 + 8);
  v7 = v6();
  v8 = (v6)(v4, v3);
  v9 = (*(v3 + 24))(v4, v3);
  v10 = (*(v3 + 32))(v4, v3);
  v11 = 3;
  if ((v7 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 256;
  if ((v8 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = v12 | v11;
  v14 = 0x10000;
  if ((v9 & 1) == 0)
  {
    v14 = 0;
  }

  *v5 = v13 | v14;
  *(v5 + 4) = (v10 & 1) != 0;
  return v10;
}

uint64_t LegacyModelObjectWrapper.init(legacyModelObject:type:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *(a3 + 8) = result;
  *a3 = v3;
  return result;
}

id static LegacyModelObjectWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  v10[0] = v2;
  v4 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v5 = sub_2174E2D44(v10);
  ObjectType = swift_getObjectType();
  v10[0] = v3;
  v6 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v7 = sub_2174E2D44(v10);
  v8 = [v5 isEqual_];

  return v8;
}

void LegacyModelObjectWrapper.hash(into:)()
{
  v1 = *(v0 + 8);
  v3[3] = swift_getObjectType();
  v3[0] = v1;
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v2 = sub_2174E2D44(v3);
  MEMORY[0x21CEA3550]([v2 hash]);
}

uint64_t LegacyModelObjectWrapper.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2177531E8();
  v5[3] = swift_getObjectType();
  v5[0] = v1;
  v2 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v3 = sub_2174E2D44(v5);
  MEMORY[0x21CEA3550]([v3 hash]);

  return sub_217753238();
}

uint64_t sub_2174EBAC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002177AF370 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2174EBB94(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2174EBBD4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_2177531E8();
  LegacyModelObjectWrapper.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2174EBC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174EBAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174EBC54(uint64_t a1)
{
  v2 = sub_2174EC214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174EBC90(uint64_t a1)
{
  v2 = sub_2174EC214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LegacyModelObjectWrapper.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB289B8, &qword_2177701F0);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v26 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174EC214();
  sub_2177532C8();
  if (!v2)
  {
    v28 = 0;
    sub_2174EC268();
    OUTLINED_FUNCTION_2_70();
    sub_217752EA8();
    v26 = a2;
    v17 = v29[0];
    v18 = v29[1];
    v19 = objc_opt_self();
    v27 = v17;
    v20 = sub_217751738();
    v29[0] = 0;
    v21 = [v19 unarchiveUnderlyingModelObjectWithData:v20 error:v29];

    v22 = v29[0];
    if (v21)
    {
      v28 = 1;
      sub_2174EC2BC();
      v23 = v22;
      OUTLINED_FUNCTION_2_70();
      sub_217752EA8();
      (*(v8 + 8))(v13, v5);
      sub_217275694(v27, v18);
      v25 = v26;
      *v26 = v29[0];
      *(v25 + 1) = v21;
      swift_unknownObjectRetain();
      __swift_destroy_boxed_opaque_existential_1(a1);
      result = swift_unknownObjectRelease();
      goto LABEL_4;
    }

    v24 = v29[0];
    sub_217751638();

    swift_willThrow();
    sub_217275694(v27, v18);
    (*(v8 + 8))(v13, v5);
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LegacyModelObjectWrapper.encode(to:)(void *a1)
{
  v3 = v2;
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB289D8, &qword_2177701F8);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v28 - v12;
  v30 = *v1;
  v14 = *(v1 + 1);
  v15 = objc_opt_self();
  v32[0] = 0;
  swift_unknownObjectRetain();
  v16 = [v15 archivedDataWithUnderlyingModelObject:v14 error:v32];
  v17 = v32[0];
  if (v16)
  {
    v28 = sub_217751768();
    v29 = v18;

    v19 = v3;
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2174EC214();
    sub_2177532F8();
    LOBYTE(v32[0]) = v30;
    v31 = 1;
    sub_2174EC310();
    OUTLINED_FUNCTION_0_66();
    sub_217752F88();
    if (v19)
    {
      (*(v8 + 8))(v13, v5);
      swift_unknownObjectRelease();
      v21 = v28;
      v22 = v29;
    }

    else
    {
      v26 = v28;
      v25 = v29;
      v32[0] = v28;
      v32[1] = v29;
      v31 = 0;
      sub_2174EC364();
      OUTLINED_FUNCTION_0_66();
      sub_217752F88();
      (*(v8 + 8))(v13, v5);
      swift_unknownObjectRelease();
      v21 = v26;
      v22 = v25;
    }

    result = sub_217275694(v21, v22);
  }

  else
  {
    v23 = v17;
    sub_217751638();

    swift_willThrow();
    result = swift_unknownObjectRelease();
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2174EC214()
{
  result = qword_27CB289C0;
  if (!qword_27CB289C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289C0);
  }

  return result;
}

unint64_t sub_2174EC268()
{
  result = qword_27CB289C8;
  if (!qword_27CB289C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289C8);
  }

  return result;
}

unint64_t sub_2174EC2BC()
{
  result = qword_27CB289D0;
  if (!qword_27CB289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289D0);
  }

  return result;
}

unint64_t sub_2174EC310()
{
  result = qword_27CB289E0;
  if (!qword_27CB289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289E0);
  }

  return result;
}

unint64_t sub_2174EC364()
{
  result = qword_27CB289E8;
  if (!qword_27CB289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289E8);
  }

  return result;
}

unint64_t sub_2174EC3BC()
{
  result = qword_27CB289F0;
  if (!qword_27CB289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelObjectWrapper.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2174EC500()
{
  result = qword_27CB289F8;
  if (!qword_27CB289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289F8);
  }

  return result;
}

unint64_t sub_2174EC558()
{
  result = qword_27CB28A00;
  if (!qword_27CB28A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28A00);
  }

  return result;
}

unint64_t sub_2174EC5B0()
{
  result = qword_27CB28A08;
  if (!qword_27CB28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28A08);
  }

  return result;
}

uint64_t sub_2174EC604(uint64_t a1)
{
  result = sub_2174EC744(&unk_280BE8380, type metadata accessor for MusicKit_SoftLinking_MPModelPlaylistVariants);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2174EC65C(uint64_t a1)
{
  result = sub_2174EC744(&qword_280BE83C8, type metadata accessor for MusicKit_SoftLinking_MPModelPlaylistOptions);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2174EC744(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2174EC78C@<D0>(uint64_t a1@<X8>)
{
  if (qword_280BE8C28 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE8C30;
  v3 = objc_opt_self();

  v4 = [v3 mainBundle];
  v5 = NSBundle.isMusicApp.getter();

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 64) = MEMORY[0x277D84F90];
  *(a1 + 72) = v7;
  *(a1 + 80) = v7;
  *(a1 + 88) = v7;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = v7;
  *(a1 + 112) = v5;
  return result;
}

uint64_t sub_2174EC864(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2174EC884, 0, 0);
}

uint64_t sub_2174EC884()
{
  v13 = v0;
  static MusicAuthorization.currentStatus.getter(v12);
  switch(v12[0])
  {
    case 1:
      OUTLINED_FUNCTION_903();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_611();
      goto LABEL_4;
    case 3:

      goto LABEL_7;
    default:
LABEL_4:
      v1 = OUTLINED_FUNCTION_655();

      if (v1)
      {
LABEL_7:
        v3 = dynamic_cast_existential_1_conditional(&type metadata for Playlist);
        if (v3)
        {
          OUTLINED_FUNCTION_10_37(v3, v4);
          v5();
        }

        else
        {
          sub_2174F0CC0(*(v0[3] + 64), *(v0[3] + 80));
        }

        v0[4] = 0;
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        v0[5] = v8;
        *v8 = v9;
        v8[1] = sub_2174ECA7C;
        v10 = v0[2];
        v11 = v0[3];

        return sub_2174ED4F4(v10);
      }

      else
      {
        sub_21728FC9C();
        swift_allocError();
        *v2 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_20_0();

        return v6();
      }
  }
}

uint64_t sub_2174ECA7C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174ECB74()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2174ECBCC()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2174ECC28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2174ECC48, 0, 0);
}

uint64_t sub_2174ECC48()
{
  v13 = v0;
  static MusicAuthorization.currentStatus.getter(v12);
  switch(v12[0])
  {
    case 1:
      OUTLINED_FUNCTION_903();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_611();
      goto LABEL_4;
    case 3:

      goto LABEL_9;
    default:
LABEL_4:
      v1 = OUTLINED_FUNCTION_655();

      if (v1)
      {
LABEL_9:
        v5 = dynamic_cast_existential_1_conditional(&type metadata for Playlist);
        if (v5)
        {
          OUTLINED_FUNCTION_10_37(v5, v6);
          v7();
        }

        v0[4] = 0;
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        v0[5] = v8;
        *v8 = v9;
        v8[1] = sub_2174ECA7C;
        v10 = v0[2];
        v11 = v0[3];

        return sub_2174ECE0C(v10);
      }

      else
      {
        sub_21728FC9C();
        swift_allocError();
        *v2 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_20_0();

        return v3();
      }
  }
}

uint64_t sub_2174ECE0C(uint64_t a1)
{
  *(v2 + 416) = a1;
  *(v2 + 424) = v1;
  return MEMORY[0x2822009F8](sub_2174ECE2C, 0, 0);
}

uint64_t sub_2174ECE2C()
{
  OUTLINED_FUNCTION_23_31();
  v4 = sub_2174EDC48(sub_2173EA470, sub_21749A82C);
  v1[54] = v4;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_2174ECF44;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_7_43(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_6_47();
  [v4 performWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2174ECF44()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2174ED040()
{
  v2 = v1[24];
  OUTLINED_FUNCTION_31_24(MEMORY[0x277D84F90]);
  v4 = v3;
  v5 = [v3 results];
  v6 = v5;
  if (v0)
  {
    v7 = [v5 numberOfSections];

    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    if (v7)
    {
      OUTLINED_FUNCTION_30_25();
      do
      {
        v8 = [v4 results];
        v9 = [v8 numberOfItemsInSection_];

        if (v9 > 0 || dynamic_cast_existential_1_conditional(&type metadata for Playlist) && ((*(v26 + 16))() & 1) != 0)
        {
          v10 = [v4 results];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28AC8, &qword_2177705D8);
          OUTLINED_FUNCTION_953();
          swift_allocObject();
          v11 = OUTLINED_FUNCTION_29_26();
          sub_217491A88(v11, v12, v13, &unk_28295BCB8, 1);
          OUTLINED_FUNCTION_35_19();
          sub_217751DC8();
          sub_217751DC8();

          v22 = [v4 results];
          OUTLINED_FUNCTION_27_28();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28AD0, qword_2177705E0);
          swift_allocObject();
          v1[23] = OUTLINED_FUNCTION_28_27();
          sub_217202078((v1 + 10), (v1 + 24), &qword_27CB28A40, &qword_21775A168);
          v23 = v1[51];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1[51] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_21_3();
            sub_2172B30E0();
            OUTLINED_FUNCTION_8_43(v27, v28, v29, v30, v31, v32, v33, v34, v57);
          }

          v25 = *(v23 + 24);
          if (*(v23 + 16) >= v25 >> 1)
          {
            OUTLINED_FUNCTION_57(v25);
            sub_2172B30E0();
            OUTLINED_FUNCTION_8_43(v35, v36, v37, v38, v39, v40, v41, v42, v57);
          }

          sub_2171F06D8((v1 + 10), &qword_27CB28A40, &qword_21775A168);
          sub_2171F06D8((v1 + 38), &unk_27CB2ACA0, &unk_217759C60);
          OUTLINED_FUNCTION_17_29();
          v7 = v58;
        }

        ++v6;
      }

      while (v7 != v6);
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_953();
  v43 = swift_allocObject();
  *(v43 + 16) = v4;
  *(v43 + 24) = &type metadata for Playlist.Entry;
  *(v43 + 32) = &protocol witness table for Playlist.Entry;
  *(v43 + 40) = &type metadata for Playlist.Entry;
  *(v43 + 48) = &protocol witness table for Playlist.Entry;
  *(v43 + 56) = 17;
  OUTLINED_FUNCTION_19_24(v43, &protocol witness table for Playlist);
  v44 = swift_allocObject();
  v45 = sub_2174F0E00;
  *(v44 + 16) = sub_2174F0E00;
  *(v44 + 24) = v43;
  v1[14] = sub_2174F0EF8;
  v1[15] = v44;
  v1[10] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_49(COERCE_DOUBLE(1107296256));
  v1[12] = v46;
  v1[13] = &block_descriptor_75;
  v47 = _Block_copy(v1 + 10);
  v48 = v1[15];
  v49 = v4;

  [v6 enumerateSectionIdentifiersUsingBlock_];

  _Block_release(v47);
  LOBYTE(v47) = OUTLINED_FUNCTION_25_34();

  if (v47)
  {
    __break(1u);
LABEL_18:
    v45 = 0;
    v43 = 0;
  }

  v50 = v1[54];
  v51 = v1[51];
  v52 = v1[52];
  sub_217751DE8();
  v53 = [v4 results];
  v54 = [v53 totalItemCount];

  *v52 = v51;
  v52[1] = v54;
  v55 = v1[51];

  sub_2171FF138(v45, v43);
  OUTLINED_FUNCTION_0_2();

  v56();
}

uint64_t sub_2174ED4F4(uint64_t a1)
{
  *(v2 + 416) = a1;
  *(v2 + 424) = v1;
  return MEMORY[0x2822009F8](sub_2174ED514, 0, 0);
}

uint64_t sub_2174ED514()
{
  OUTLINED_FUNCTION_23_31();
  v4 = sub_2174EDC48(sub_2173EA3F0, sub_21749A82C);
  v1[54] = v4;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_2174ED62C;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_7_43(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_6_47();
  [v4 performWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2174ED62C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2174ED728()
{
  v2 = v1[24];
  OUTLINED_FUNCTION_31_24(MEMORY[0x277D84F90]);
  v4 = v3;
  v5 = [v3 results];
  v6 = v5;
  if (v0)
  {
    v7 = [v5 numberOfSections];

    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    if (v7)
    {
      OUTLINED_FUNCTION_30_25();
      do
      {
        v8 = [v4 results];
        v9 = [v8 numberOfItemsInSection_];

        if (v9 > 0 || dynamic_cast_existential_1_conditional(&type metadata for Playlist) && ((*(v26 + 16))() & 1) != 0)
        {
          v10 = [v4 results];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27670, &unk_21776B0C0);
          OUTLINED_FUNCTION_953();
          swift_allocObject();
          v11 = OUTLINED_FUNCTION_29_26();
          sub_217491978(v11, v12, v13, &unk_28295BC78, 1);
          OUTLINED_FUNCTION_35_19();
          sub_217751DC8();
          sub_217751DC8();

          v22 = [v4 results];
          OUTLINED_FUNCTION_27_28();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A80, &qword_217770518);
          swift_allocObject();
          v1[23] = OUTLINED_FUNCTION_28_27();
          sub_217202078((v1 + 10), (v1 + 24), &unk_27CB28A70, &qword_21775A158);
          v23 = v1[51];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1[51] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_21_3();
            sub_2172B31A0();
            OUTLINED_FUNCTION_8_43(v27, v28, v29, v30, v31, v32, v33, v34, v57);
          }

          v25 = *(v23 + 24);
          if (*(v23 + 16) >= v25 >> 1)
          {
            OUTLINED_FUNCTION_57(v25);
            sub_2172B31A0();
            OUTLINED_FUNCTION_8_43(v35, v36, v37, v38, v39, v40, v41, v42, v57);
          }

          sub_2171F06D8((v1 + 10), &unk_27CB28A70, &qword_21775A158);
          sub_2171F06D8((v1 + 38), &qword_27CB240D0, &unk_21775D400);
          OUTLINED_FUNCTION_17_29();
          v7 = v58;
        }

        ++v6;
      }

      while (v7 != v6);
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_953();
  v43 = swift_allocObject();
  *(v43 + 16) = v4;
  *(v43 + 24) = &type metadata for Track;
  *(v43 + 32) = &protocol witness table for Track;
  *(v43 + 40) = &type metadata for Track;
  *(v43 + 48) = &protocol witness table for Track;
  *(v43 + 56) = 28;
  OUTLINED_FUNCTION_19_24(v43, &protocol witness table for Playlist);
  v44 = swift_allocObject();
  v45 = sub_2174F0D90;
  *(v44 + 16) = sub_2174F0D90;
  *(v44 + 24) = v43;
  v1[14] = sub_2174F0DA8;
  v1[15] = v44;
  v1[10] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_49(COERCE_DOUBLE(1107296256));
  v1[12] = v46;
  v1[13] = &block_descriptor_29_0;
  v47 = _Block_copy(v1 + 10);
  v48 = v1[15];
  v49 = v4;

  [v6 enumerateSectionIdentifiersUsingBlock_];

  _Block_release(v47);
  LOBYTE(v47) = OUTLINED_FUNCTION_25_34();

  if (v47)
  {
    __break(1u);
LABEL_18:
    v45 = 0;
    v43 = 0;
  }

  v50 = v1[54];
  v51 = v1[51];
  v52 = v1[52];
  sub_217751DE8();
  v53 = [v4 results];
  v54 = [v53 totalItemCount];

  *v52 = v51;
  v52[1] = v54;
  v55 = v1[51];

  sub_2171FF138(v45, v43);
  OUTLINED_FUNCTION_0_2();

  v56();
}

uint64_t sub_2174EDBDC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 440);

  return v3();
}

uint64_t sub_2174EDC48(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, void), uint64_t (*a2)(_BYTE *, uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[1];
  v26 = *v2;
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v13 = v2[10];
  v12 = v2[11];
  v14 = *(v2 + 98);
  v15 = *(v2 + 99);
  v16 = 256;
  if ((v2[12] & 1) == 0)
  {
    v16 = 0;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFFELL | v2[3] & 1;
  v18 = 0x10000;
  if ((*(v2 + 97) & 1) == 0)
  {
    v18 = 0;
  }

  v19 = 0x1000000;
  if ((*(v2 + 100) & 1) == 0)
  {
    v19 = 0;
  }

  v20 = v17 | v18 | v19;
  v21 = 0x1000000000000;
  if ((v14 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = 0x100000000000000;
  if ((v15 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = v21 | v22;
  sub_2173EA430(v10, v12, v6, v7, v20 | v21 | v22, 0, &v30);
  LOBYTE(__src[10]) = v38;
  *&__src[1] = v31;
  *&__src[3] = v32;
  __src[0] = v30;
  __src[5] = v33;
  __src[6] = v34;
  LOBYTE(__src[7]) = v35;
  __src[8] = v36;
  __src[9] = v37;
  *&__src[11] = v39;
  __src[13] = v40;
  a1(&v30, v11, v13, v8, v9, v20 | v23, 0);
  memcpy(__dst, __src, sizeof(__dst));
  sub_2172147A0(__src, v28);
  v24 = a2(__dst, &v30, v4, v5, v26);
  sub_21721D674(__src);
  sub_21721D674(__src);
  sub_21721D674(&v30);
  return v24;
}

uint64_t sub_2174EDE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_2174EDE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, _BYTE *))
{
  v19 = MEMORY[0x21CEA3980]();
  a16(a4, a1, a5, a6, a7, a8, a9, a2, a10, a11, a12, a13, a14, a15, v25);
  objc_autoreleasePoolPop(v19);
}

uint64_t sub_2174EDF38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t *a14)
{
  v52 = MEMORY[0x277D84F90];
  v21 = [a1 results];
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = a1;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = &v52;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2174F0E70;
  *(v23 + 24) = v22;
  *&v49 = sub_2174F0EF8;
  *(&v49 + 1) = v23;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v48 = sub_2174EDE10;
  *(&v48 + 1) = &block_descriptor_87;
  v24 = _Block_copy(&aBlock);
  v25 = a1;

  [v21 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v24];

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    v27 = *(a10 + 8);
    swift_unknownObjectRetain();
    v27(__src, a9, a10);
    v42 = __src[0];
    v43 = __src[1];
    *&v41[0] = &unk_28295BDB8;
    LOBYTE(v46[0]) = 4;
    sub_2172B6904(a8, &v42, v41, v46, &aBlock);
    v28 = [v25 results];
    v29 = [v28 sectionItemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v29;
    memset(__src, 0, 40);
    v27(&v42, a9, a10);
    v41[0] = v42;
    v41[1] = v43;
    LOBYTE(v46[0]) = 1;
    v30 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
    *(&v48 + 1) = v30;
    *&v49 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    v46[4] = a12;
    *&aBlock = v33;
    LOBYTE(__src[0]) = a13;
    v34 = *(a12 + 24);
    v46[3] = a11;
    __swift_allocate_boxed_opaque_existential_0(v46);

    v34(&aBlock, __src, a11, a12);
    sub_2171FF30C(v46, __src);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if (swift_dynamicCast())
    {
      v42 = aBlock;
      v43 = v48;
      v44 = v49;
      v45 = v50;
      if (*(v52 + 16))
      {
        goto LABEL_10;
      }

      sub_21726B8C4(&v42);
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      aBlock = 0u;
      sub_2171F06D8(&aBlock, &unk_27CB28A90, &qword_217758F90);
    }

    sub_2171FF30C(v46, __src);
    if (!swift_dynamicCast())
    {

      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      aBlock = 0u;
      sub_2171F06D8(&aBlock, &unk_27CB28A90, &qword_217758F90);
      goto LABEL_13;
    }

    v42 = aBlock;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    if (!dynamic_cast_existential_1_conditional(&type metadata for Playlist) || ((*(v35 + 16))() & 1) == 0)
    {
      sub_21726B8C4(&v42);

      goto LABEL_13;
    }

LABEL_10:
    sub_2172757C0(&v42, __src);
    sub_217751DE8();
    sub_2174AA4C0();
    sub_2172757C0(__src, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28AD0, qword_2177705E0);
    swift_allocObject();
    v36 = sub_2174EF438(v41);
    sub_21726B8C4(__src);
    v51 = v36;
    sub_217202078(&aBlock, __src, &qword_27CB28A40, &qword_21775A168);
    sub_21770B84C();
    v37 = *(*a14 + 16);
    sub_21770BB7C(v37);

    sub_2171F06D8(&aBlock, &qword_27CB28A40, &qword_21775A168);
    sub_21726B8C4(&v42);
    v38 = *a14;
    *(v38 + 16) = v37 + 1;
    memcpy((v38 + 112 * v37 + 32), __src, 0x70uLL);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  __break(1u);
  return result;
}

uint64_t sub_2174EE534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t *a14)
{
  v52 = MEMORY[0x277D84F90];
  v21 = [a1 results];
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = a1;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = &v52;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2174F0DE8;
  *(v23 + 24) = v22;
  *&v49 = sub_2174F0EF8;
  *(&v49 + 1) = v23;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v48 = sub_2174EDE10;
  *(&v48 + 1) = &block_descriptor_40;
  v24 = _Block_copy(&aBlock);
  v25 = a1;

  [v21 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v24];

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    v27 = *(a10 + 8);
    swift_unknownObjectRetain();
    v27(__src, a9, a10);
    v42 = __src[0];
    v43 = __src[1];
    *&v41[0] = &unk_28295BDF8;
    LOBYTE(v46[0]) = 4;
    sub_2172B6904(a8, &v42, v41, v46, &aBlock);
    v28 = [v25 results];
    v29 = [v28 sectionItemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v29;
    memset(__src, 0, 40);
    v27(&v42, a9, a10);
    v41[0] = v42;
    v41[1] = v43;
    LOBYTE(v46[0]) = 1;
    v30 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
    *(&v48 + 1) = v30;
    *&v49 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    v46[4] = a12;
    *&aBlock = v33;
    LOBYTE(__src[0]) = a13;
    v34 = *(a12 + 24);
    v46[3] = a11;
    __swift_allocate_boxed_opaque_existential_0(v46);

    v34(&aBlock, __src, a11, a12);
    sub_2171FF30C(v46, __src);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if (swift_dynamicCast())
    {
      v42 = aBlock;
      v43 = v48;
      v44 = v49;
      v45 = v50;
      if (*(v52 + 16))
      {
        goto LABEL_10;
      }

      sub_21726B8C4(&v42);
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      aBlock = 0u;
      sub_2171F06D8(&aBlock, &unk_27CB28A90, &qword_217758F90);
    }

    sub_2171FF30C(v46, __src);
    if (!swift_dynamicCast())
    {

      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      aBlock = 0u;
      sub_2171F06D8(&aBlock, &unk_27CB28A90, &qword_217758F90);
      goto LABEL_13;
    }

    v42 = aBlock;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    if (!dynamic_cast_existential_1_conditional(&type metadata for Playlist) || ((*(v35 + 16))() & 1) == 0)
    {
      sub_21726B8C4(&v42);

      goto LABEL_13;
    }

LABEL_10:
    sub_2172757C0(&v42, __src);
    sub_217751DE8();
    sub_2174AA1D8();
    sub_2172757C0(__src, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A80, &qword_217770518);
    swift_allocObject();
    v36 = sub_2174EF438(v41);
    sub_21726B8C4(__src);
    v51 = v36;
    sub_217202078(&aBlock, __src, &unk_27CB28A70, &qword_21775A158);
    sub_21770B864();
    v37 = *(*a14 + 16);
    sub_21770BB94(v37);

    sub_2171F06D8(&aBlock, &unk_27CB28A70, &qword_21775A158);
    sub_21726B8C4(&v42);
    v38 = *a14;
    *(v38 + 16) = v37 + 1;
    memcpy((v38 + 112 * v37 + 32), __src, 0x70uLL);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  __break(1u);
  return result;
}

void sub_2174EEB30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11)
{
  v47 = a8;
  v44 = a7;
  v46 = a9;
  v45 = a10;
  v16 = sub_217751968();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v43 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v43 - v24;
  v50 = MEMORY[0x21CEA3980](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_217759200;
  *(v26 + 32) = a4;
  *(v26 + 40) = a1;
  MEMORY[0x21CEA1CB0]();
  v27 = *(a6 + 8);
  swift_unknownObjectRetain();
  v27(&v51, a5, a6);
  v56 = v51;
  v57 = v52;
  *&v55[0] = &unk_28295BE78;
  v63[0] = 4;
  sub_2172B6904(a2, &v56, v55, v63, &v59);
  v48 = v17;
  v49 = v16;
  (*(v17 + 16))(v43, v25, v16);
  v28 = [v44 results];
  v29 = [v28 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v29;
  *&v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v27(&v56, a5, a6);
  v55[0] = v56;
  v55[1] = v57;
  v63[0] = 1;
  v30 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v60 + 1) = v30;
  *&v61 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v59 = v33;
  LOBYTE(v51) = v45;
  v35 = v46;
  v34 = v47;
  v36 = *(v46 + 24);
  *(&v57 + 1) = v47;
  v58 = v46;
  __swift_allocate_boxed_opaque_existential_0(&v56);

  v36(&v59, &v51, v34, v35);
  sub_2171FF30C(&v56, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    sub_217275858(&v59, &v51);
    sub_21770B81C();
    v37 = *(*a11 + 16);
    sub_21770BB4C(v37);

    sub_2172758B4(&v59);
    (*(v48 + 8))(v25, v49);
    v38 = *a11;
    *(v38 + 16) = v37 + 1;
    v39 = v38 + 56 * v37;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    *(v39 + 80) = v54;
    *(v39 + 48) = v41;
    *(v39 + 64) = v42;
    *(v39 + 32) = v40;
  }

  else
  {
    (*(v48 + 8))(v25, v49);

    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    sub_2171F06D8(&v51, &unk_27CB2ACC0, &qword_217758AA8);
  }

  __swift_destroy_boxed_opaque_existential_1(&v56);
  objc_autoreleasePoolPop(v50);
}

void sub_2174EEF80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11)
{
  v47 = a8;
  v44 = a7;
  v46 = a9;
  v45 = a10;
  v16 = sub_217751968();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v43 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v43 - v24;
  v50 = MEMORY[0x21CEA3980](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_217759200;
  *(v26 + 32) = a4;
  *(v26 + 40) = a1;
  MEMORY[0x21CEA1CB0]();
  v27 = *(a6 + 8);
  swift_unknownObjectRetain();
  v27(&v51, a5, a6);
  v55 = v51;
  v56 = v52;
  *&v54[0] = &unk_28295BEB8;
  v61[0] = 4;
  sub_2172B6904(a2, &v55, v54, v61, &v58);
  v48 = v17;
  v49 = v16;
  (*(v17 + 16))(v43, v25, v16);
  v28 = [v44 results];
  v29 = [v28 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v29;
  *&v53[0] = 0;
  v51 = 0u;
  v52 = 0u;
  v27(&v55, a5, a6);
  v54[0] = v55;
  v54[1] = v56;
  v61[0] = 1;
  v30 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v59 + 1) = v30;
  *&v60[0] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v58 = v33;
  LOBYTE(v51) = v45;
  v35 = v46;
  v34 = v47;
  v36 = *(v46 + 24);
  *(&v56 + 1) = v47;
  v57 = v46;
  __swift_allocate_boxed_opaque_existential_0(&v55);

  v36(&v58, &v51, v34, v35);
  sub_2171FF30C(&v55, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v58 = v51;
    v59 = v52;
    v60[0] = v53[0];
    *(v60 + 9) = *(v53 + 9);
    sub_217275710(&v58, &v51);
    sub_21770B78C();
    v37 = *(*a11 + 16);
    sub_21770BABC(v37);

    sub_21727576C(&v58);
    (*(v48 + 8))(v25, v49);
    v38 = *a11;
    *(v38 + 16) = v37 + 1;
    v39 = (v38 + (v37 << 6));
    v40 = v51;
    v41 = v52;
    v42 = v53[0];
    *(v39 + 73) = *(v53 + 9);
    v39[3] = v41;
    v39[4] = v42;
    v39[2] = v40;
  }

  else
  {
    (*(v48 + 8))(v25, v49);

    v52 = 0u;
    memset(v53, 0, 24);
    v51 = 0u;
    BYTE8(v53[1]) = -1;
    sub_2171F06D8(&v51, &unk_27CB28AA0, &qword_21775A020);
  }

  __swift_destroy_boxed_opaque_existential_1(&v55);
  objc_autoreleasePoolPop(v50);
}

uint64_t sub_2174EF3D8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  sub_2177529C8();

  return swift_unknownObjectRelease();
}

uint64_t sub_2174EF438(uint64_t a1)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  v5 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v3 + 16) = v4;
  *v4 = 0;
  *(v1 + 16) = v3;
  *(v1 + 40) = v5;
  *(v1 + 56) = *(a1 + 32);
  *(v1 + 72) = *(a1 + 48);
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 513;
  return v1;
}

uint64_t sub_2174EF4C4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = a2;
  *(v3 + 96) = 0;
  *(v3 + 97) = a3 & 1;
  return v3;
}

uint64_t sub_2174EF54C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21775E030;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28AB8, &qword_2177705A0);
  swift_allocObject();
  *(v0 + 32) = sub_217383700(KeyPath);
  v2 = swift_getKeyPath();
  v3 = sub_2173827A4(v2, 25);

  *(v0 + 40) = v3;
  qword_280C01F90 = v0;
  return result;
}

uint64_t sub_2174EF614@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_2174EF66C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217770410;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28AB0, &qword_217770548);
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_12_5();
  *(v0 + 32) = sub_2173834C8(v1, 23);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_12_5();
  *(v0 + 40) = sub_2173834C8(v2, 24);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_12_5();
  result = sub_2173834C8(v3, 25);
  *(v0 + 48) = result;
  qword_280C02588 = v0;
  return result;
}

uint64_t sub_2174EF758(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2174EF7B0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_2174EF808@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_2174EF860(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    v4 = a2 | 4;
  }

  else
  {
    v4 = a2;
  }

  v5 = objc_allocWithZone(MusicKit_SoftLinking_MPModelPlaylistKind);

  return [v5 initWithVariants:a1 options:v4];
}

unint64_t sub_2174EF8BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, &unk_21775ECD0);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177ABDA0);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = qword_280BE93B8;

  if (v3 != -1)
  {
    swift_once();
  }

  if ((static AnyMusicProperty.== infix(_:_:)(qword_280C026D0, v2) & 1) == 0)
  {
    v4 = qword_280BE9390;

    if (v4 != -1)
    {
      swift_once();
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C026B0, v2);
    OUTLINED_FUNCTION_15_2();
    if ((v0 & 1) == 0)
    {
      v5 = qword_280BE9330;

      if (v5 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28220, &unk_21775E9E0);
      v6 = OUTLINED_FUNCTION_12_5();
      v8 = v7;
      static AnyMusicProperty.== infix(_:_:)(v6, v2);
      OUTLINED_FUNCTION_15_2();
      if ((v8 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177ABD70);
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          MEMORY[0x21CEA23B0](46, 0xE100000000000000);
LABEL_14:
          OUTLINED_FUNCTION_37_21();
          __break(1u);
        }
      }
    }
  }

  v9 = Playlist.LegacyModelPlaylistPropertyKey.rawValue.getter();

  return v9;
}

uint64_t sub_2174EFB70(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 2424) = v4;
  *(v5 + 2416) = a4;
  *(v5 + 2408) = a2;
  *(v5 + 2400) = a1;
  *(v5 + 369) = *a3;
  OUTLINED_FUNCTION_35_1();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2174EFBB0()
{
  v1 = v0[301];
  v0[304] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, &unk_21775ECD0);
  v2 = swift_dynamicCastClass();
  v0[305] = v2;
  if (v2)
  {
    v3 = v0[300];
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;

    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[306] = v4;
    *v4 = v5;
    v4[1] = sub_2174EFD74;
    v6 = v0[303];

    return sub_2176267F4((v0 + 266), 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    v0[293] = v10;
    v0[294] = v11;
    MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
    v0[299] = v1;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000001CLL, 0x80000002177AF390);
    v8 = v0[293];
    v9 = v0[294];
    return OUTLINED_FUNCTION_37_21();
  }
}

uint64_t sub_2174EFD74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2448);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2456) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174EFE6C()
{
  v59 = v0;
  v1 = *(v0 + 2408);
  v2 = qword_280BE91F0;

  if (v2 != -1)
  {
    swift_once();
    v54 = *(v0 + 2408);
  }

  v3 = *(v0 + 2432);
  static AnyMusicProperty.== infix(_:_:)(qword_280BE91F8, *(v0 + 2440));
  OUTLINED_FUNCTION_15_2();
  if (v3)
  {
    sub_2174EC78C(v0 + 1336);
    swift_getKeyPath();
    *(v0 + 2288) = &type metadata for Playlist;
    *(v0 + 2296) = &protocol witness table for Playlist;
    v4 = swift_allocObject();
    *(v0 + 2264) = v4;
    sub_2172757C0(v0 + 2128, v4 + 16);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 2264), &type metadata for Playlist);
    sub_21729C5E8((v5 + 2), v0 + 2304);
    v6 = *(v0 + 2336);
    __swift_project_boxed_opaque_existential_1((v0 + 2304), *(v0 + 2328));
    v7 = OUTLINED_FUNCTION_180_0();
    v8(v7);
    sub_21729C644(v0 + 2304);
    memcpy((v0 + 376), __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2264));
    v9 = *(v0 + 416);
    v10 = *(v0 + 424);
    sub_217751DE8();
    sub_217269F50(v0 + 376);
    if (!v10)
    {
      v11 = *(v0 + 2128);
      v12 = *(v0 + 2136);
      sub_217751DE8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B8, &qword_21776AE68);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_968(v13);

    MEMORY[0x21CEA25D0](v14);
    v15 = *((*(v0 + 1408) & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((*(v0 + 1408) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v15 >> 1)
    {
      OUTLINED_FUNCTION_57(v15);
      sub_2177522F8();
    }

    v16 = *(v0 + 2416);
    sub_217752378();

    *(v0 + 1448) = 1;
    v17 = *(v0 + 1336);

    *(v0 + 1336) = v16;
    memcpy((v0 + 856), (v0 + 1336), 0x71uLL);
    OUTLINED_FUNCTION_8_0(&unk_2177704F8);
    OUTLINED_FUNCTION_36_1();
    *(v0 + 2464) = v18;
    *v18 = v19;
    v18[1] = sub_2174F0508;
    v20 = v0 + 2376;
LABEL_23:

    return v57(v20);
  }

  v21 = *(v0 + 2408);
  v22 = qword_280BE91C0;

  if (v22 != -1)
  {
    swift_once();
    v55 = *(v0 + 2408);
  }

  v23 = *(v0 + 2432);
  static AnyMusicProperty.== infix(_:_:)(qword_280BE91C8, *(v0 + 2440));
  OUTLINED_FUNCTION_15_2();
  if (v23)
  {
    v24 = *(v0 + 369);
    sub_2174EC78C(v0 + 976);
    *(v0 + 1000) = v24;
    swift_getKeyPath();
    *(v0 + 2208) = &type metadata for Playlist;
    *(v0 + 2216) = &protocol witness table for Playlist;
    v25 = swift_allocObject();
    *(v0 + 2184) = v25;
    sub_2172757C0(v0 + 2128, v25 + 16);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 2184), &type metadata for Playlist);
    sub_21729C5E8((v26 + 2), v0 + 2224);
    v27 = *(v0 + 2256);
    __swift_project_boxed_opaque_existential_1((v0 + 2224), *(v0 + 2248));
    v28 = OUTLINED_FUNCTION_180_0();
    v29(v28);
    sub_21729C644(v0 + 2224);
    memcpy((v0 + 16), __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2184));
    v30 = *(v0 + 56);
    v31 = *(v0 + 64);
    sub_217751DE8();
    sub_217269F50(v0 + 16);
    if (!v31)
    {
      v32 = *(v0 + 2128);
      v33 = *(v0 + 2136);
      sub_217751DE8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B8, &qword_21776AE68);
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_968(v34);

    MEMORY[0x21CEA25D0](v35);
    v36 = *((*(v0 + 1048) & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((*(v0 + 1048) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v36 >> 1)
    {
      OUTLINED_FUNCTION_57(v36);
      sub_2177522F8();
    }

    sub_217752378();

    *(v0 + 1088) = 1;
    if (qword_280BE91A0 != -1)
    {
      swift_once();
    }

    sub_2176CA4DC(qword_280C025B8, v37, v38, v39, v40, v41, v42, v43, v56, v57, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17]);
    if (LOBYTE(__src[0]) == 3)
    {
      KeyPath = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28A48, &qword_2177704F0);
      v45 = swift_allocObject();
      *(v45 + 16) = KeyPath;
      *(v45 + 24) = 0;

      MEMORY[0x21CEA25D0](v46);
      v47 = *((*(v0 + 1056) & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*(v0 + 1056) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v47 >> 1)
      {
        OUTLINED_FUNCTION_57(v47);
        sub_2177522F8();
      }

      sub_217752378();
    }

    v48 = *(v0 + 2416);
    v49 = *(v0 + 976);

    *(v0 + 976) = v48;
    memcpy((v0 + 736), (v0 + 976), 0x71uLL);
    OUTLINED_FUNCTION_8_0(&unk_2177704B0);
    OUTLINED_FUNCTION_36_1();
    *(v0 + 2480) = v50;
    *v50 = v51;
    v50[1] = sub_2174F07B4;
    v20 = v0 + 2360;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_40_20();
  sub_21726B8C4(v0 + 2128);
  sub_2171F06D8(v23, &unk_27CB28A10, &qword_21776B0A0);
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  OUTLINED_FUNCTION_0_2();

  return v53();
}

uint64_t sub_2174F0498()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_40_20();
  sub_2171F06D8(v0, &unk_27CB28A10, &qword_21776B0A0);
  v2 = *(v1 + 2456);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2174F0508()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2464);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2472) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174F0600()
{
  v17 = v0;
  sub_2172CED78(*(v0 + 2376), (v0 + 1808));

  if (*(v0 + 1896))
  {
    sub_217202078(v0 + 1808, v0 + 2024, &qword_27CB240D0, &unk_21775D400);
    sub_2171F06D8(v0 + 1808, &unk_27CB28A70, &qword_21775A158);
    memcpy(__dst, (v0 + 2024), sizeof(__dst));
  }

  else
  {
    sub_2171F06D8(v0 + 1808, &qword_27CB28A58, &qword_217770508);
    OUTLINED_FUNCTION_22_31();
    sub_2174AA1D8();
    if (*(v0 + 2112))
    {
      sub_2171F06D8(v0 + 2024, &unk_27CB28A60, &qword_217770B60);
    }
  }

  v2 = *(v0 + 2408);
  v3 = *(v0 + 2400);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240D0, &unk_21775D400);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_34_21(v5, v6, v7, v8, v9, v10, v11, v12, v15, __dst[0]);

  sub_21726B8C4(v0 + 2128);
  sub_2171F06D8(v3, &unk_27CB28A10, &qword_21776B0A0);
  *v3 = v1;
  v3[3] = v4;
  v3[4] = &protocol witness table for MusicItemCollection<A>;
  memcpy((v0 + 1576), (v0 + 1336), 0x71uLL);
  sub_2171F06D8(v0 + 1576, &qword_27CB28A50, &qword_217770500);
  OUTLINED_FUNCTION_0_2();

  return v13();
}

uint64_t sub_2174F07B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2480);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2488) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174F08AC()
{
  v17 = v0;
  sub_2172CEDB0(*(v0 + 2360), (v0 + 1696));

  if (*(v0 + 1784))
  {
    sub_217202078(v0 + 1696, v0 + 1920, &unk_27CB2ACA0, &unk_217759C60);
    sub_2171F06D8(v0 + 1696, &qword_27CB28A40, &qword_21775A168);
    memcpy(__dst, (v0 + 1920), sizeof(__dst));
  }

  else
  {
    sub_2171F06D8(v0 + 1696, &qword_27CB28A28, &qword_2177704C0);
    OUTLINED_FUNCTION_22_31();
    sub_2174AA4C0();
    if (*(v0 + 2008))
    {
      sub_2171F06D8(v0 + 1920, &unk_27CB28A30, &unk_21775E9C0);
    }
  }

  v2 = *(v0 + 2408);
  v3 = *(v0 + 2400);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACA0, &unk_217759C60);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_34_21(v5, v6, v7, v8, v9, v10, v11, v12, v15, __dst[0]);

  sub_21726B8C4(v0 + 2128);
  sub_2171F06D8(v3, &unk_27CB28A10, &qword_21776B0A0);
  *v3 = v1;
  v3[3] = v4;
  v3[4] = &protocol witness table for MusicItemCollection<A>;
  memcpy((v0 + 1216), (v0 + 976), 0x71uLL);
  sub_2171F06D8(v0 + 1216, &qword_27CB28A20, &qword_2177704B8);
  OUTLINED_FUNCTION_0_2();

  return v13();
}

uint64_t sub_2174F0A60()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_40_20();
  sub_21726B8C4((v1 + 266));
  sub_2171F06D8(v0, &unk_27CB28A10, &qword_21776B0A0);
  memcpy(v1 + 182, v1 + 167, 0x71uLL);
  sub_2171F06D8((v1 + 182), &qword_27CB28A50, &qword_217770500);
  v2 = v1[309];
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2174F0B00()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_40_20();
  sub_21726B8C4((v1 + 266));
  sub_2171F06D8(v0, &unk_27CB28A10, &qword_21776B0A0);
  memcpy(v1 + 137, v1 + 122, 0x71uLL);
  sub_2171F06D8((v1 + 137), &qword_27CB28A20, &qword_2177704B8);
  v2 = v1[311];
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2174F0C04(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v4 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_217282D8C;

  return sub_2174EFB70(a1, a2, a3, a4);
}

uint64_t sub_2174F0CC0(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (sub_217752D38())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = 2;
    goto LABEL_8;
  }

  if (a2 >> 62)
  {
    result = sub_217752D38();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v3 = 3;
LABEL_8:
  sub_2173546F8();
  swift_allocError();
  *v5 = v3;
  return swift_willThrow();
}

uint64_t sub_2174F0DA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_27_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double OUTLINED_FUNCTION_11_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _OWORD *a11)
{
  *(v12 + 304) = v11;
  *(v12 + 312) = 1;
  result = 0.0;
  *a11 = 0u;
  a11[1] = 0u;
  *(v12 + 392) = v14;
  *(v12 + 400) = v13;
  return result;
}

double OUTLINED_FUNCTION_22_31()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  return result;
}

void *OUTLINED_FUNCTION_34_21(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{
  v11 = (a1 + 16);

  return memcpy(v11, &__src, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_40_20()
{
  v2 = *(v0 + 2408);
  v3 = *(v0 + 2400);
}

uint64_t sub_2174F0F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_217270790(a1, a5) & 1) != 0 && (sub_217270790(a2, a6))
  {
    if (a4)
    {
      if (a8)
      {
        v14 = a3 == a7 && a4 == a8;
        if (v14 || (sub_217753058() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2174F1020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217281100(a1, a2);
  sub_217281100(a1, a3);
  if (!a5)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2174F10A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2177531E8();
  sub_217281100(v8, a1);
  sub_217281100(v8, a2);
  sub_217753208();
  if (a4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_2174F116C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2177531E8();
  sub_2174F1020(v6, v1, v2, v4, v3);
  return sub_217753238();
}

uint64_t sub_2174F11C8()
{
  v1 = [v0 preferredLocalizations];
  v2 = sub_217752298();

  v3 = [v0 localizations];
  sub_217752298();

  sub_2174F1424(v0);
  return v2;
}

unint64_t sub_2174F1264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_4();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v16 = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x21CEA2610](a1, MEMORY[0x277D837D0]);
  MEMORY[0x21CEA23B0](v10);

  MEMORY[0x21CEA23B0](0xD00000000000001BLL, v16);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v17 = v11;
  v12 = MEMORY[0x21CEA2610](a2, v9);
  MEMORY[0x21CEA23B0](v12);

  MEMORY[0x21CEA23B0](0xD000000000000013, v17);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v18 = v13;
  v14 = Optional<A>.musicKit_prettyDescription.getter(a3, a4);
  MEMORY[0x21CEA23B0](v14);

  MEMORY[0x21CEA23B0](0xD00000000000001DLL, v18);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return 0xD000000000000011;
}

uint64_t sub_2174F1424(void *a1)
{
  v1 = [a1 developmentLocalization];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_217751F48();

  return v3;
}

uint64_t sub_2174F1488(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2174F14C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2174F151C()
{
  result = qword_27CB28AD8;
  if (!qword_27CB28AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AD8);
  }

  return result;
}

uint64_t sub_2174F1570(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a4 == 2 || ((a4 ^ a1) & 1) != 0)
    {
      return result;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v8 = a2 == a5 && a3 == a6;
    if (!v8 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2174F1600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574706D65747461 && a2 == 0xE900000000000064;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2174F16CC(char a1)
{
  if (a1)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x6574706D65747461;
  }
}

uint64_t sub_2174F1704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B10, &qword_2177708D0);
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174F2160();
  sub_2177532F8();
  v19 = 0;
  sub_217752F08();
  if (!v4)
  {
    v18 = 1;
    sub_217752EF8();
  }

  return (*(v9 + 8))(v14, v6);
}

uint64_t sub_2174F1870(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!a4)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2174F1908(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_2177531E8();
  if (v4 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  sub_217753208();
  if (a3)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_2174F19AC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B00, &qword_2177708C8);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &v14[-v10];
  v12 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2174F2160();
  sub_2177532C8();
  if (!v1)
  {
    v14[15] = 0;
    v12 = sub_217752E28();
    v14[14] = 1;
    sub_217752E18();
    (*(v6 + 8))(v11, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_2174F1B4C()
{
  v0 = sub_217752DC8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2174F1B98(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0x6369666675736E69;
      break;
    case 2:
      v3 = 0x657269707865;
      goto LABEL_6;
    case 3:
      v3 = 0x696C61766E69;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 4:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174F1C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174F1600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174F1C5C(uint64_t a1)
{
  v2 = sub_2174F2160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174F1C98(uint64_t a1)
{
  v2 = sub_2174F2160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2174F1CD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2174F19AC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_2174F1D54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2177531E8();
  if (v1 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  sub_217753208();
  if (v3)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_2174F1DEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2174F1B4C();
  *a2 = result;
  return result;
}

uint64_t sub_2174F1E1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2174F1B98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2174F1E7C(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x73736563637573;
  switch(a1)
  {
    case 1:
      v2 = 0xEC000000746E6569;
      v3 = 0x6369666675736E69;
      break;
    case 2:
      v4 = 0x657269707865;
      goto LABEL_6;
    case 3:
      v4 = 0x696C61766E69;
LABEL_6:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x726F727265;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v3, v2);

  return 46;
}

_BYTE *_s14AuthenticationV6StatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2174F203C()
{
  result = qword_27CB28AE0;
  if (!qword_27CB28AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AE0);
  }

  return result;
}

unint64_t sub_2174F2094()
{
  result = qword_27CB28AE8;
  if (!qword_27CB28AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28AF0, qword_217770798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AE8);
  }

  return result;
}

unint64_t sub_2174F210C()
{
  result = qword_27CB28AF8;
  if (!qword_27CB28AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AF8);
  }

  return result;
}

unint64_t sub_2174F2160()
{
  result = qword_27CB28B08;
  if (!qword_27CB28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B08);
  }

  return result;
}

_BYTE *_s14AuthenticationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2174F2294()
{
  result = qword_27CB28B18;
  if (!qword_27CB28B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B18);
  }

  return result;
}

unint64_t sub_2174F22EC()
{
  result = qword_27CB28B20;
  if (!qword_27CB28B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B20);
  }

  return result;
}

unint64_t sub_2174F2344()
{
  result = qword_27CB28B28;
  if (!qword_27CB28B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B28);
  }

  return result;
}

uint64_t sub_2174F2398@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MusicLibrarySectionedResponse<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  type metadata accessor for MusicLibrarySection();
  swift_getWitnessTable();
  return sub_217752448() & (v3 == v5);
}

uint64_t sub_2174F2458(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v5 = *(a4 - 16);
  v4 = *(a4 - 8);
  v7 = a3[2];
  v6 = a3[3];
  v8 = a3[4];
  v9 = a3[5];
  return static MusicLibrarySectionedResponse<>.== infix(_:_:)(a1, a2);
}

uint64_t MusicLibrarySectionedResponse<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  type metadata accessor for MusicLibrarySection();
  swift_getWitnessTable();
  sub_217752438();
  return MEMORY[0x21CEA3550](v3);
}

uint64_t MusicLibrarySectionedResponse<>.hashValue.getter(uint64_t a1)
{
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_2177531E8();
  MusicLibrarySectionedResponse<>.hash(into:)(v5, a1);
  return sub_217753238();
}

uint64_t sub_2174F2578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v3 = *(a2 - 8);
  return MusicLibrarySectionedResponse<>.hashValue.getter(a1);
}

uint64_t sub_2174F2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  return MusicLibrarySectionedResponse<>.hash(into:)(a1, a2);
}

uint64_t sub_2174F2590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicLibrarySectionedResponse<>.hash(into:)(v7, a2);
  return sub_217753238();
}

uint64_t sub_2174F25E8(char a1, uint64_t a2)
{
  v4 = *v2;
  v28 = 0;
  v29 = 0xE000000000000000;
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  sub_217751DE8();
  v24 = v5;
  v22 = *(a2 + 24);
  v25 = v22;
  v26 = v6;
  v7 = type metadata accessor for MusicLibrarySection();
  v8 = sub_2177522A8();
  v27 = v8;
  if (v8 == sub_217752388())
  {
LABEL_8:

    if (dynamic_cast_existential_1_conditional(v22))
    {
      (*(v16 + 8))(&v24);
      v18 = *(&v25 + 1);
      v17 = v26;
    }

    else
    {
      v18 = sub_217753348();
      v17 = v19;
    }

    v24 = 0;
    *&v25 = 0xE000000000000000;
    sub_217752AA8();

    v24 = 0xD00000000000001ELL;
    *&v25 = 0x80000002177AF430;
    v20 = sub_217753348();
    MEMORY[0x21CEA23B0](v20);

    MEMORY[0x21CEA23B0](8236, 0xE200000000000000);
    MEMORY[0x21CEA23B0](v18, v17);

    MEMORY[0x21CEA23B0](10302, 0xE200000000000000);
    MEMORY[0x21CEA23B0](0x697463657320200ALL, 0xEE005B203A736E6FLL);
    MEMORY[0x21CEA23B0](v28, v29);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
    MEMORY[0x21CEA23B0](10, 0xE100000000000000);
    MEMORY[0x21CEA23B0](41, 0xE100000000000000);
    return v24;
  }

  else
  {
    while (1)
    {
      v9 = sub_217752358();
      sub_2177522D8();
      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = *(v7 - 8);
      (*(v10 + 16))(&v24, v4 + 32 + 112 * v8, v7);
      sub_2177523E8();
      sub_217685674(a1 & 1, 1, v7);
      (*(v10 + 8))(&v24, v7);
      sub_21733A5C8();
      v11 = sub_217752998();
      v13 = v12;

      v14 = v28 & 0xFFFFFFFFFFFFLL;
      if ((v29 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v29) & 0xF;
      }

      if (v14)
      {
        MEMORY[0x21CEA23B0](44, 0xE100000000000000);
      }

      MEMORY[0x21CEA23B0](v11, v13);

      MEMORY[0x21CEA23B0](0x202020200ALL, 0xE500000000000000);

      v15 = sub_217752388();
      v8 = v27;
      if (v27 == v15)
      {
        goto LABEL_8;
      }
    }

    result = sub_217752AC8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2174F2A04(uint64_t a1, char a2)
{
  v4 = *v2;
  v5 = v2[1];
  return sub_2174F25E8(a2, a1);
}

uint64_t sub_2174F2A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

void StationPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v44 = v0;
  v45 = v1;
  v43 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  memcpy(__dst, v13, sizeof(__dst));
  v14 = *v10;
  v15 = v10[1];
  v16 = *(v10 + 16);
  type metadata accessor for Station._AirTime();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = type metadata accessor for StationPropertyProvider();
  v22 = v21[5];
  sub_2172A497C(__src);
  memcpy((v12 + v22), __src, 0x221uLL);
  *(v12 + v21[6]) = 2;
  v23 = v12 + v21[7];
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v12 + v21[8]) = 0;
  v24 = (v12 + v21[9]);
  *v24 = xmmword_2177586D0;
  v24[1] = 0u;
  v24[2] = 0u;
  v24[3] = 0u;
  *(v12 + v21[10]) = 0;
  v25 = v12 + v21[11];
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v12 + v21[12]) = 2;
  *(v12 + v21[13]) = 14;
  memcpy((v12 + v21[14]), __src, 0x221uLL);
  OUTLINED_FUNCTION_182_3(v21[15]);
  v26 = v12 + v21[16];
  *(v26 + 112) = 0;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *v26 = 0u;
  OUTLINED_FUNCTION_182_3(v21[17]);
  v27 = v21[18];
  v28 = sub_2177516D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  OUTLINED_FUNCTION_182_3(v21[19]);
  v32 = v21[20];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v28);
  v36 = v12 + v21[21];
  *v36 = xmmword_2177586D0;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  OUTLINED_FUNCTION_182_3(v21[22]);
  *(v12 + v21[23]) = 0;
  v37 = (v12 + v21[24]);
  v37[6] = 0u;
  v37[7] = 0u;
  v37[4] = 0u;
  v37[5] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  *v37 = 0u;
  v37[1] = 0u;
  v38 = v12 + v21[25];
  *(v38 + 96) = 0;
  *(v38 + 64) = 0u;
  *(v38 + 80) = 0u;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0u;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  if (qword_280BE3758 != -1)
  {
    swift_once();
  }

  v39 = qword_280C01FC0;
  if (qword_280C01FC0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v42 = sub_217752D28();

    v39 = v42;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v12 + v21[26]) = v39;
  v40 = (v12 + v21[29]);
  memcpy((v12 + v21[27]), __dst, 0x161uLL);
  v41 = v12 + v21[28];
  *v41 = v14;
  *(v41 + 8) = v15;
  *(v41 + 16) = v16;
  *v40 = v8;
  v40[1] = v6;
  *(v12 + v21[30]) = v4;
  *(v12 + v21[31]) = v43;
  *(v12 + v21[32]) = v44;
  *(v12 + v21[33]) = v45;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for StationPropertyProvider()
{
  result = qword_280BE3738;
  if (!qword_280BE3738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StationPropertyProvider.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_59_11();
  memcpy(__dst, (v0 + *(v1 + 20)), 0x221uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x221uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB24400, &unk_21775E9A0);
}

void *StationPropertyProvider.artwork.setter()
{
  OUTLINED_FUNCTION_8_20();
  v0 = type metadata accessor for StationPropertyProvider();
  v1 = *(v0 + 20);
  v9 = OUTLINED_FUNCTION_233(v0, v2, v3, v4, v5, v6, v7, v8, v14, v15[0]);
  memcpy(v9, v10, 0x221uLL);
  sub_2171F0738(v15, &qword_27CB24400, &unk_21775E9A0);
  v11 = OUTLINED_FUNCTION_232_1();
  return memcpy(v11, v12, 0x221uLL);
}

uint64_t StationPropertyProvider.artwork.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 20);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.contentRating.getter()
{
  result = OUTLINED_FUNCTION_59_11();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t StationPropertyProvider.contentRating.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StationPropertyProvider();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t StationPropertyProvider.contentRating.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 24);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for StationPropertyProvider() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void StationPropertyProvider.duration.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for StationPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 28));
}

uint64_t StationPropertyProvider.duration.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 28);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.editorialArtworks.getter()
{
  v1 = *(v0 + *(type metadata accessor for StationPropertyProvider() + 32));

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.editorialArtworks.setter()
{
  OUTLINED_FUNCTION_8_20();
  v2 = *(type metadata accessor for StationPropertyProvider() + 32);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StationPropertyProvider.editorialArtworks.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 32);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.editorialNotes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_11() + 36));
  v4 = v2[3];
  v9 = v2[2];
  v3 = v9;
  v10 = v4;
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *v0 = v8[0];
  v0[1] = v5;
  v0[2] = v3;
  v0[3] = v4;
  return sub_21726A630(v8, &v7, &qword_27CB24B70, &unk_217759460);
}

__n128 StationPropertyProvider.editorialNotes.setter()
{
  OUTLINED_FUNCTION_8_20();
  v2 = (v1 + *(type metadata accessor for StationPropertyProvider() + 36));
  v3 = v2[3];
  v8[2] = v2[2];
  v8[3] = v3;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

uint64_t StationPropertyProvider.editorialNotes.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 36);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.editorialVideoArtworks.getter()
{
  v1 = *(v0 + *(type metadata accessor for StationPropertyProvider() + 40));

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.editorialVideoArtworks.setter()
{
  OUTLINED_FUNCTION_8_20();
  v2 = *(type metadata accessor for StationPropertyProvider() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StationPropertyProvider.editorialVideoArtworks.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 40);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.episodeNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for StationPropertyProvider() + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void StationPropertyProvider.episodeNumber.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for StationPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 44));
}

uint64_t StationPropertyProvider.episodeNumber.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 44);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.isLive.setter(char a1)
{
  result = type metadata accessor for StationPropertyProvider();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t StationPropertyProvider.isLive.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 48);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.kind.getter()
{
  result = OUTLINED_FUNCTION_59_11();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t StationPropertyProvider.kind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StationPropertyProvider();
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t StationPropertyProvider.kind.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 52);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.mainUberArtwork.getter()
{
  v1 = OUTLINED_FUNCTION_59_11();
  memcpy(__dst, (v0 + *(v1 + 56)), 0x221uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x221uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB24400, &unk_21775E9A0);
}

void *StationPropertyProvider.mainUberArtwork.setter()
{
  OUTLINED_FUNCTION_8_20();
  v0 = type metadata accessor for StationPropertyProvider();
  v1 = *(v0 + 56);
  v9 = OUTLINED_FUNCTION_233(v0, v2, v3, v4, v5, v6, v7, v8, v14, v15[0]);
  memcpy(v9, v10, 0x221uLL);
  sub_2171F0738(v15, &qword_27CB24400, &unk_21775E9A0);
  v11 = OUTLINED_FUNCTION_232_1();
  return memcpy(v11, v12, 0x221uLL);
}

uint64_t StationPropertyProvider.mainUberArtwork.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 56);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.name.getter()
{
  v0 = type metadata accessor for StationPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 60));
  return OUTLINED_FUNCTION_93();
}

uint64_t StationPropertyProvider.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for StationPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 60));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t StationPropertyProvider.name.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 60);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_59_11();
  memcpy(__dst, (v0 + *(v1 + 64)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x78uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB244D0, &unk_21775D620);
}

void *StationPropertyProvider.playParameters.setter()
{
  OUTLINED_FUNCTION_8_20();
  v0 = type metadata accessor for StationPropertyProvider();
  v1 = *(v0 + 64);
  v9 = OUTLINED_FUNCTION_233(v0, v2, v3, v4, v5, v6, v7, v8, v14, v15[0]);
  memcpy(v9, v10, 0x78uLL);
  sub_2171F0738(v15, &qword_27CB244D0, &unk_21775D620);
  v11 = OUTLINED_FUNCTION_232_1();
  return memcpy(v11, v12, 0x78uLL);
}

uint64_t StationPropertyProvider.playParameters.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 64);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.providerBundleIdentifier.getter()
{
  v0 = type metadata accessor for StationPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 68));
  return OUTLINED_FUNCTION_93();
}

uint64_t StationPropertyProvider.providerBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for StationPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 68));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t StationPropertyProvider.providerBundleIdentifier.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 68);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.providerUniversalLink.setter()
{
  OUTLINED_FUNCTION_8_20();
  v0 = type metadata accessor for StationPropertyProvider();
  return OUTLINED_FUNCTION_175_2(&unk_27CB277C0, &qword_217758DC0, *(v0 + 72));
}

uint64_t StationPropertyProvider.providerUniversalLink.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 72);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.stationProviderName.getter()
{
  v0 = type metadata accessor for StationPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 76));
  return OUTLINED_FUNCTION_93();
}

uint64_t StationPropertyProvider.stationProviderName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for StationPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 76));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t StationPropertyProvider.stationProviderName.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 76);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.url.setter()
{
  OUTLINED_FUNCTION_8_20();
  v0 = type metadata accessor for StationPropertyProvider();
  return OUTLINED_FUNCTION_175_2(&unk_27CB277C0, &qword_217758DC0, *(v0 + 80));
}

uint64_t StationPropertyProvider.url.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 80);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.pivotMetadata.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_11() + 84));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;

  return sub_2172838F8(v3, v4);
}

__n128 StationPropertyProvider.pivotMetadata.setter()
{
  OUTLINED_FUNCTION_8_20();
  v2 = (v1 + *(type metadata accessor for StationPropertyProvider() + 84));
  v3 = v2[2];
  v4 = v2[3];
  sub_217283940(*v2, v2[1]);
  result = *v0;
  v6 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 1) = v6;
  return result;
}

uint64_t StationPropertyProvider.pivotMetadata.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 84);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.recommendationReason.getter()
{
  v0 = type metadata accessor for StationPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 88));
  return OUTLINED_FUNCTION_93();
}

uint64_t StationPropertyProvider.recommendationReason.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for StationPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 88));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t StationPropertyProvider.recommendationReason.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 88);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.searchContextSnippets.getter()
{
  v1 = *(v0 + *(type metadata accessor for StationPropertyProvider() + 92));

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.searchContextSnippets.setter()
{
  OUTLINED_FUNCTION_8_20();
  v2 = *(type metadata accessor for StationPropertyProvider() + 92);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StationPropertyProvider.searchContextSnippets.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 92);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.friendsWhoListened.setter()
{
  OUTLINED_FUNCTION_8_20();
  v0 = type metadata accessor for StationPropertyProvider();
  return OUTLINED_FUNCTION_175_2(&qword_27CB24230, &unk_21775E9D0, *(v0 + 96));
}

uint64_t StationPropertyProvider.friendsWhoListened.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 96);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.recommendedEntryTracks.setter()
{
  OUTLINED_FUNCTION_8_20();
  v0 = type metadata accessor for StationPropertyProvider();
  return OUTLINED_FUNCTION_175_2(&unk_27CB28A60, &qword_217770B60, *(v0 + 100));
}

uint64_t StationPropertyProvider.recommendedEntryTracks.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 100);
  return OUTLINED_FUNCTION_51();
}

void StationPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v107 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_45_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v107 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B30, &qword_217770B68);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AF480);
    v110[0] = v3;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    v102 = v111;
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_55_12();
    v106 = 58;
    goto LABEL_140;
  }

  v25 = qword_280BE6758;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_37_22();
  }

  if (OUTLINED_FUNCTION_168(qword_280C02098))
  {
    sub_21726A630(v1, v24, &qword_27CB255C0, &unk_21775D480);
    v26 = type metadata accessor for Station._AirTime();
    OUTLINED_FUNCTION_73(v24);
    if (v27)
    {

      sub_2171F0738(v24, &qword_27CB255C0, &unk_21775D480);
      OUTLINED_FUNCTION_86_10();
LABEL_16:
      v35 = *(v28 + 70);
      *v5 = *(v28 + 69);
      *(v5 + 16) = v35;
      goto LABEL_74;
    }

    *(&v111[1] + 1) = v26;
    __swift_allocate_boxed_opaque_existential_0(v111);
    OUTLINED_FUNCTION_9_39();
    sub_2174F8388(v24, v33, v34);
    goto LABEL_14;
  }

  v29 = qword_280BE6760;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_36_22();
  }

  OUTLINED_FUNCTION_168(qword_280C020A0);
  OUTLINED_FUNCTION_161();
  if (v29)
  {
    v30 = *(type metadata accessor for StationPropertyProvider() + 20);
    OUTLINED_FUNCTION_111_10(v110);
    OUTLINED_FUNCTION_111_10(v111);
    OUTLINED_FUNCTION_104(v111);
    if (!v27)
    {
LABEL_71:
      v32 = swift_allocObject();
      memcpy(v109, v110, sizeof(v109));
      sub_217284028(v109, &v108);

      memcpy((v32 + 16), v111, 0x221uLL);
      v31 = &type metadata for Artwork;
      goto LABEL_72;
    }

    goto LABEL_13;
  }

  v36 = qword_280BE6818;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_34_22();
  }

  OUTLINED_FUNCTION_168(qword_280C02128);
  OUTLINED_FUNCTION_161();
  if ((v36 & 1) == 0)
  {
    v40 = qword_280BE6750;

    if (v40 != -1)
    {
      OUTLINED_FUNCTION_32_24();
    }

    OUTLINED_FUNCTION_168(qword_280C02090);
    OUTLINED_FUNCTION_161();
    if (v40)
    {
      v41 = 0;
      v42 = 0;
      v43 = v1 + *(type metadata accessor for StationPropertyProvider() + 28);
      if ((*(v43 + 8) & 1) == 0)
      {
        v42 = *v43;
        v41 = MEMORY[0x277D839F8];
      }

LABEL_29:

      *v5 = v42;
LABEL_30:
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = v41;
      goto LABEL_74;
    }

    v44 = qword_280BE67D8;

    if (v44 != -1)
    {
      OUTLINED_FUNCTION_3_59();
    }

    OUTLINED_FUNCTION_168(qword_280C020F8);
    OUTLINED_FUNCTION_161();
    if (v44)
    {
      v45 = *(v1 + *(type metadata accessor for StationPropertyProvider() + 32));
      if (v45)
      {
        v46 = &unk_27CB24BE8;
        v47 = &unk_2177595F0;
LABEL_36:
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
        sub_217751DE8();
LABEL_124:

        *v5 = v45;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = v48;
        goto LABEL_74;
      }

      goto LABEL_123;
    }

    v49 = qword_280BE6800;

    if (v49 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_168(qword_280C02110);
    OUTLINED_FUNCTION_161();
    if (v49)
    {
      v50 = v1 + *(type metadata accessor for StationPropertyProvider() + 36);
      v52 = *v50;
      v51 = *(v50 + 8);
      v53 = *(v50 + 48);
      *&v109[16] = *(v50 + 32);
      *&v109[32] = v53;
      *v109 = *(v50 + 16);
      if (v51 != 1)
      {
        v32 = swift_allocObject();
        *&v111[0] = v52;
        *(&v111[0] + 1) = v51;
        v54 = *(v50 + 32);
        v111[1] = *(v50 + 16);
        v111[2] = v54;
        v111[3] = *(v50 + 48);
        sub_217350F74(v111, v110);

        *(v32 + 16) = v52;
        *(v32 + 24) = v51;
        v55 = *&v109[16];
        *(v32 + 32) = *v109;
        *(v32 + 48) = v55;
        *(v32 + 64) = *&v109[32];
        v31 = &type metadata for EditorialNotes;
        goto LABEL_72;
      }

LABEL_13:

      v31 = 0;
      v32 = 0;
LABEL_72:
      *v5 = v32;
LABEL_73:
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = v31;
      goto LABEL_74;
    }

    v56 = qword_280BE6798;

    if (v56 != -1)
    {
      OUTLINED_FUNCTION_2_71();
    }

    OUTLINED_FUNCTION_168(qword_280C020D0);
    OUTLINED_FUNCTION_161();
    if (v56)
    {
      v45 = *(v1 + *(type metadata accessor for StationPropertyProvider() + 40));
      if (v45)
      {
        v46 = &unk_27CB24BE0;
        v47 = &unk_2177657E0;
        goto LABEL_36;
      }

LABEL_123:
      v48 = 0;
      goto LABEL_124;
    }

    v57 = qword_280BE6810;

    if (v57 != -1)
    {
      OUTLINED_FUNCTION_29_27();
    }

    OUTLINED_FUNCTION_168(qword_280C02120);
    OUTLINED_FUNCTION_161();
    if (v57)
    {
      v41 = 0;
      v42 = 0;
      v58 = v1 + *(type metadata accessor for StationPropertyProvider() + 44);
      if ((*(v58 + 8) & 1) == 0)
      {
        v42 = *v58;
        v41 = MEMORY[0x277D83B88];
      }

      goto LABEL_29;
    }

    v59 = qword_280BE6768;

    if (v59 != -1)
    {
      OUTLINED_FUNCTION_28_28();
    }

    OUTLINED_FUNCTION_168(qword_280C020A8);
    OUTLINED_FUNCTION_161();
    if (v59)
    {
      v37 = *(v1 + *(type metadata accessor for StationPropertyProvider() + 48));

      v38 = v37 & 1;
      v39 = MEMORY[0x277D839B0];
      goto LABEL_21;
    }

    v60 = qword_280BE6770;

    if (v60 != -1)
    {
      OUTLINED_FUNCTION_45_21();
    }

    OUTLINED_FUNCTION_168(qword_280C020B0);
    OUTLINED_FUNCTION_161();
    if (v60)
    {
      v61 = *(v1 + *(type metadata accessor for StationPropertyProvider() + 52));

      v31 = &type metadata for Station._Kind;
      if (v61 == 14)
      {
        v62 = 0;
      }

      else
      {
        v62 = v61;
      }

      if (v61 == 14)
      {
        v31 = 0;
      }

      *v5 = v62;
      goto LABEL_73;
    }

    v63 = qword_280BE67E0;

    if (v63 != -1)
    {
      OUTLINED_FUNCTION_44_18();
    }

    OUTLINED_FUNCTION_168(qword_280C02100);
    OUTLINED_FUNCTION_161();
    if (v63)
    {
      v64 = *(type metadata accessor for StationPropertyProvider() + 56);
      OUTLINED_FUNCTION_111_10(v110);
      OUTLINED_FUNCTION_111_10(v111);
      OUTLINED_FUNCTION_104(v111);
      if (!v27)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    v65 = qword_280BE6778;

    if (v65 != -1)
    {
      OUTLINED_FUNCTION_6_19();
    }

    OUTLINED_FUNCTION_168(qword_280C020B8);
    OUTLINED_FUNCTION_161();
    if (v65)
    {
      v66 = *(type metadata accessor for StationPropertyProvider() + 60);
LABEL_79:
      v67 = (v1 + v66);
      v68 = v67[1];
      if (v68)
      {
        v69 = *v67;
        v70 = v67[1];
        sub_217751DE8();
        v71 = MEMORY[0x277D837D0];
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }

      *v5 = v69;
      *(v5 + 8) = v68;
      *(v5 + 16) = 0;
      *(v5 + 24) = v71;
      goto LABEL_74;
    }

    v72 = qword_280BE67F0;

    if (v72 != -1)
    {
      OUTLINED_FUNCTION_42_19();
    }

    OUTLINED_FUNCTION_168(qword_280C02108);
    OUTLINED_FUNCTION_161();
    if (v72)
    {
      v73 = (v1 + *(type metadata accessor for StationPropertyProvider() + 64));
      v75 = *v73;
      v74 = v73[1];
      memcpy(v109, v73 + 2, 0x68uLL);
      if (v74)
      {
        v32 = swift_allocObject();
        *&v111[0] = v75;
        *(&v111[0] + 1) = v74;
        memcpy(&v111[1], v73 + 2, 0x68uLL);
        sub_2172DF5A4(v111, v110);

        *(v32 + 16) = v75;
        *(v32 + 24) = v74;
        memcpy((v32 + 32), v109, 0x68uLL);
        v31 = &type metadata for PlayParameters;
        goto LABEL_72;
      }

LABEL_70:

      v32 = 0;
      v31 = 0;
      goto LABEL_72;
    }

    v76 = qword_280BE6790;

    if (v76 != -1)
    {
      OUTLINED_FUNCTION_41_19();
    }

    OUTLINED_FUNCTION_168(qword_280C020C8);
    OUTLINED_FUNCTION_161();
    if (v76)
    {
      v66 = *(type metadata accessor for StationPropertyProvider() + 68);
      goto LABEL_79;
    }

    v77 = qword_280BE67A8;

    if (v77 != -1)
    {
      OUTLINED_FUNCTION_40_21();
    }

    OUTLINED_FUNCTION_168(qword_280C020D8);
    OUTLINED_FUNCTION_161();
    if (v77)
    {
      v78 = type metadata accessor for StationPropertyProvider();
      sub_21726A630(v1 + *(v78 + 72), v17, &unk_27CB277C0, &qword_217758DC0);
      v79 = sub_2177516D8();
      OUTLINED_FUNCTION_73(v17);
      if (!v27)
      {
        *(&v111[1] + 1) = v79;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v111);
        (*(*(v79 - 8) + 32))(boxed_opaque_existential_0, v17, v79);
LABEL_14:

LABEL_15:
        v28 = v109;
        goto LABEL_16;
      }

      v80 = v17;
      goto LABEL_98;
    }

    v81 = qword_280BE67C8;

    if (v81 != -1)
    {
      OUTLINED_FUNCTION_39_16();
    }

    OUTLINED_FUNCTION_168(qword_280C020E8);
    OUTLINED_FUNCTION_161();
    if (v81)
    {
      v66 = *(type metadata accessor for StationPropertyProvider() + 76);
      goto LABEL_79;
    }

    v83 = qword_280BE6780;

    if (v83 != -1)
    {
      OUTLINED_FUNCTION_38_19();
    }

    OUTLINED_FUNCTION_168(qword_280C020C0);
    OUTLINED_FUNCTION_161();
    if (v83)
    {
      v84 = type metadata accessor for StationPropertyProvider();
      sub_21726A630(v1 + *(v84 + 80), v13, &unk_27CB277C0, &qword_217758DC0);
      v85 = sub_2177516D8();
      OUTLINED_FUNCTION_73(v13);
      if (!v27)
      {
        *(&v111[1] + 1) = v85;
        v90 = __swift_allocate_boxed_opaque_existential_0(v111);
        (*(*(v85 - 8) + 32))(v90, v13, v85);
        goto LABEL_14;
      }

      v80 = v13;
LABEL_98:
      sub_2171F0738(v80, &unk_27CB277C0, &qword_217758DC0);
      OUTLINED_FUNCTION_86_10();
      goto LABEL_15;
    }

    v86 = qword_280BE6808;

    if (v86 != -1)
    {
      OUTLINED_FUNCTION_7_44();
    }

    OUTLINED_FUNCTION_168(qword_280C02118);
    OUTLINED_FUNCTION_161();
    if (v86)
    {
      v87 = (v1 + *(type metadata accessor for StationPropertyProvider() + 84));
      v88 = v87[1];
      if (v88 == 1)
      {

        v89 = 0;
        v31 = 0;
      }

      else
      {
        v93 = v87[2];
        v92 = v87[3];
        v94 = *v87;
        v89 = swift_allocObject();
        sub_217751DE8();
        sub_217751DE8();

        v89[2] = v94;
        v89[3] = v88;
        v89[4] = v93;
        v89[5] = v92;
        v31 = &type metadata for CloudPivotMetadata;
      }

      *v5 = v89;
      goto LABEL_73;
    }

    v91 = qword_280BE67B8;

    if (v91 != -1)
    {
      OUTLINED_FUNCTION_6_48();
    }

    OUTLINED_FUNCTION_168(qword_280C020E0);
    OUTLINED_FUNCTION_161();
    if (v91)
    {
      v66 = *(type metadata accessor for StationPropertyProvider() + 88);
      goto LABEL_79;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
    swift_allocObject();
    v95 = OUTLINED_FUNCTION_54_0();
    v96 = OUTLINED_FUNCTION_168(v95);

    if (v96)
    {
      v45 = *(v1 + *(type metadata accessor for StationPropertyProvider() + 92));
      if (v45)
      {
        v46 = &unk_27CB24BD8;
        v47 = &unk_2177595E0;
        goto LABEL_36;
      }

      goto LABEL_123;
    }

    v97 = qword_280BE67D0;

    if (v97 != -1)
    {
      OUTLINED_FUNCTION_5_50();
    }

    OUTLINED_FUNCTION_168(qword_280C020F0);
    OUTLINED_FUNCTION_161();
    if (v97)
    {
      v98 = type metadata accessor for StationPropertyProvider();
      sub_21726A630(v1 + *(v98 + 96), v111, &qword_27CB24230, &unk_21775E9D0);
      if (*&v111[1])
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
        v99 = swift_allocObject();
        v100 = (v99 + 16);
        v101 = 128;
LABEL_134:
        memcpy(v100, v111, v101);

LABEL_138:
        *v5 = v99;
        goto LABEL_30;
      }

      v104 = &qword_27CB24230;
      v105 = &unk_21775E9D0;
    }

    else
    {
      v102 = qword_27CB23B00;

      if (v102 != -1)
      {
        goto LABEL_141;
      }

      while (1)
      {
        OUTLINED_FUNCTION_168(qword_27CB8A238);
        OUTLINED_FUNCTION_161();
        if (v102)
        {
          break;
        }

        OUTLINED_FUNCTION_52_17();
        sub_217752AA8();
        OUTLINED_FUNCTION_49_16();
        MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
        v110[0] = v3;
        type metadata accessor for AnyMusicProperty();
        sub_217752C78();
        v102 = v111;
        MEMORY[0x21CEA23B0](46, 0xE100000000000000);
        OUTLINED_FUNCTION_55_12();
        v106 = 110;
LABEL_140:
        v107 = v106;
        OUTLINED_FUNCTION_58_1();
        __break(1u);
LABEL_141:
        OUTLINED_FUNCTION_4_64();
      }

      v103 = type metadata accessor for StationPropertyProvider();
      sub_21726A630(v1 + *(v103 + 100), v111, &unk_27CB28A60, &qword_217770B60);
      if (*(&v111[5] + 1))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240D0, &unk_21775D400);
        v99 = swift_allocObject();
        v100 = (v99 + 16);
        v101 = 104;
        goto LABEL_134;
      }

      v104 = &unk_27CB28A60;
      v105 = &qword_217770B60;
    }

    sub_2171F0738(v111, v104, v105);
    v99 = 0;
    v41 = 0;
    goto LABEL_138;
  }

  v37 = *(v1 + *(type metadata accessor for StationPropertyProvider() + 24));

  v38 = v37 & 1;
  v39 = &type metadata for ContentRating;
LABEL_21:
  if (v37 == 2)
  {
    v39 = 0;
  }

  *v5 = v38;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = v39;
LABEL_74:
  OUTLINED_FUNCTION_13();
}