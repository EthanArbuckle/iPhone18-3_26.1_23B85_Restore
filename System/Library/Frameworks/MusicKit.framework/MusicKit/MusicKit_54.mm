void sub_217649C00()
{
  if (!qword_280BE7590)
  {
    type metadata accessor for AnyMusicProperty();
    v0 = sub_217752418();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE7590);
    }
  }
}

uint64_t MusicDetailedIdentifierKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_217649D14()
{
  v2 = *v0;
  sub_2177531E8();
  MusicDetailedIdentifierKind.hash(into:)();
  return sub_217753238();
}

unint64_t sub_217649D60()
{
  result = qword_27CB2B180;
  if (!qword_27CB2B180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B188, &qword_217788AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B180);
  }

  return result;
}

unint64_t sub_217649DC8()
{
  result = qword_27CB2B190;
  if (!qword_27CB2B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B190);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicDetailedIdentifierKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t static CloudRecordLabel.== infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_186_0(a1) == *a2 && *(v2 + 8) == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CloudRecordLabel(0);
  v6 = v5[5];
  static CloudRecordLabel.Attributes.== infix(_:_:)();
  if ((v7 & 1) == 0 || *(v2 + v5[6]) != *(a2 + v5[6]))
  {
    return 0;
  }

  v8 = v5[7];
  sub_21738C4B0(v2 + v8, v21, &qword_27CB24A98, &unk_217759060);
  sub_21738C4B0(a2 + v8, v23, &qword_27CB24A98, &unk_217759060);
  if (v22 == 1)
  {
    if (v23[2] == 1)
    {
      sub_2171F0738(v21, &qword_27CB24A98, &unk_217759060);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_21738C4B0(v21, v20, &qword_27CB24A98, &unk_217759060);
  if (v23[2] == 1)
  {
    sub_217284540(v20);
LABEL_13:
    sub_2171F0738(v21, &qword_27CB2B1A0, &qword_217788B98);
    return 0;
  }

  memcpy(v19, v23, sizeof(v19));
  v9 = static CloudRecordLabel.Associations.== infix(_:_:)(v20, v19);
  sub_217284540(v19);
  sub_217284540(v20);
  sub_2171F0738(v21, &qword_27CB24A98, &unk_217759060);
  if (!v9)
  {
    return 0;
  }

LABEL_15:
  v10 = v5[8];
  v11 = *(v2 + v10);
  v12 = *(a2 + v10);
  if (v11 != 1)
  {
    if (v12 == 1)
    {
      sub_21733CF78(v11);
      sub_21733CF78(1);
      sub_21733CF78(v11);

LABEL_21:
      sub_217221010(v11);
      v14 = v12;
LABEL_32:
      sub_217221010(v14);
      return 0;
    }

    if (v11)
    {
      if (v12)
      {
        sub_21733CF78(v11);
        sub_21733CF78(v12);
        sub_21733CF78(v11);
        sub_21733CF78(v12);
        OUTLINED_FUNCTION_93();
        sub_21726F358();
        v16 = v15;
        sub_217221010(v12);
        sub_217221010(v12);
        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_28:

        sub_217221010(v11);
        return 1;
      }

      sub_21733CF78(v11);
      v17 = v11;
    }

    else
    {
      sub_21733CF78(0);
      v17 = 0;
      if (!v12)
      {
        sub_21733CF78(0);
        sub_21733CF78(0);
        sub_217221010(0);
        goto LABEL_28;
      }
    }

    sub_21733CF78(v12);
    sub_21733CF78(v17);
    sub_217221010(v12);
LABEL_31:

    v14 = v11;
    goto LABEL_32;
  }

  sub_21733CF78(1);
  if (v12 != 1)
  {
    sub_21733CF78(v12);
    goto LABEL_21;
  }

  v13 = 1;
  sub_21733CF78(1);
  sub_217221010(1);
  return v13;
}

void CloudRecordLabel.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v43 = v0;
  v3 = v2;
  v39 = v4;
  v5 = type metadata accessor for CloudRecordLabel.Attributes(0);
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_34();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1A8, &qword_217788BA0);
  OUTLINED_FUNCTION_0_0(v42);
  v40 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v38 - v15;
  v17 = type metadata accessor for CloudRecordLabel(0);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  v23 = *(v22 + 32);
  v44 = (v25 - v24);
  v45 = v23;
  *(v44 + v23) = 1;
  v26 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21764DFE0();
  v41 = v16;
  v27 = v43;
  sub_2177532C8();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_217221010(*(v44 + v45));
  }

  else
  {
    v43 = v3;
    v28 = v40;
    sub_2172E1C68();
    OUTLINED_FUNCTION_12_55();
    sub_217752EA8();
    v29 = v46[1];
    v30 = v44;
    *v44 = v46[0];
    *(v30 + 8) = v29;
    v38[1] = v29;
    LOBYTE(v46[0]) = 1;
    OUTLINED_FUNCTION_15_59();
    sub_21764E1EC(v31);
    sub_217752EA8();
    sub_21764E034(v1, v30 + v17[5]);
    sub_21764E098();
    v38[0] = 0;
    sub_217752E58();
    v32 = v28;
    v33 = v43;
    *(v30 + v17[6]) = v46[0];
    sub_21764E0EC();
    OUTLINED_FUNCTION_12_55();
    sub_217752E58();
    memcpy((v30 + v17[7]), v46, 0x100uLL);
    sub_21764E140();
    OUTLINED_FUNCTION_12_55();
    sub_217752E58();
    (*(v32 + 8))(v41, v42);
    v35 = v45;
    v34 = v46[0];
    sub_217221010(*(v30 + v45));
    *(v30 + v35) = v34;
    OUTLINED_FUNCTION_4_103();
    sub_21764E2A0(v30, v39, v36);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_3_100();
    sub_21764E194(v30, v37);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudRecordLabel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1D8, &qword_217788BA8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  v14 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21764DFE0();
  sub_2177532F8();
  v15 = v3[1];
  v23 = *v3;
  v24 = v15;
  v22 = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_4_5();
  sub_217752F88();
  if (!v2)
  {
    v16 = type metadata accessor for CloudRecordLabel(0);
    v17 = v16[5];
    LOBYTE(v23) = 1;
    type metadata accessor for CloudRecordLabel.Attributes(0);
    OUTLINED_FUNCTION_15_59();
    sub_21764E1EC(v18);
    sub_217752F88();
    LOBYTE(v23) = *(v3 + v16[6]);
    v22 = 2;
    sub_21733CB7C();
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v19 = v16[7];
    LOBYTE(v23) = 3;
    sub_21733CB28();
    sub_217752F38();
    v23 = *(v3 + v16[8]);
    v22 = 4;
    sub_21733CF78(v23);
    sub_2174D7A24();
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    sub_217221010(v23);
  }

  return (*(v7 + 8))(v13, v5);
}

void RecordLabel.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v67 = v3;
  v5 = v4;
  v78 = v6;
  v8 = v7;
  v76 = v9;
  v80 = type metadata accessor for CloudRecordLabel(0);
  v10 = OUTLINED_FUNCTION_43(v80);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1();
  v81 = v15 - v14;
  v16 = type metadata accessor for RecordLabelPropertyProvider();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_34();
  if (qword_280BE6348 != -1)
  {
    swift_once();
  }

  v77 = v5;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  sub_2172DB678();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v22 = v21[10];
  v23 = v8 + v21[9];
  v24 = *(v23 + 8);
  v72 = *v23;
  v70 = *(v23 + 16);
  v25 = *(v8 + v22 + 8);
  v69 = *(v8 + v22);
  v26 = *(v8 + v21[12]);
  v27 = *(v8 + v21[13]);
  v28 = *(v8 + v21[14]);
  v79 = v8;
  v29 = *(v8 + v21[15]);
  sub_2172A497C(v99);
  memcpy(v0, v99, 0x221uLL);
  memcpy((v0 + 600), v99, 0x221uLL);
  v30 = v16[11];
  v31 = sub_2177516D8();
  v74 = v30;
  __swift_storeEnumTagSinglePayload(v0 + v30, 1, 1, v31);
  v32 = v0 + v16[12];
  *(v32 + 96) = 0;
  *(v32 + 64) = 0u;
  *(v32 + 80) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  v68 = v32;
  v33 = v0 + v16[13];
  *(v33 + 96) = 0;
  *(v33 + 64) = 0u;
  *(v33 + 80) = 0u;
  *(v33 + 32) = 0u;
  *(v33 + 48) = 0u;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  v75 = v33;
  v34 = qword_27CB23D38;
  v71 = v24;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_27CB8A2E0;
  if (qword_27CB8A2E0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v66 = sub_217752D28();

    v35 = v66;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v0 + v16[15]) = v35;
  v36 = (v0 + v16[18]);
  memcpy((v0 + v16[16]), v98, 0x161uLL);
  v37 = v0 + v16[17];
  *v37 = v72;
  *(v37 + 8) = v71;
  *(v37 + 16) = v70;
  *v36 = v69;
  v36[1] = v25;
  *(v0 + v16[19]) = v26;
  *(v0 + v16[20]) = v27;
  *(v0 + v16[21]) = v28;
  *(v0 + v16[22]) = v29;
  OUTLINED_FUNCTION_4_103();
  sub_21764E2A0(v79, v81, v38);
  v39 = v81 + v80[5];
  memcpy(v88, v39, sizeof(v88));
  memcpy(v89, v39, sizeof(v89));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v89) == 1)
  {
    v40 = v99;
  }

  else
  {
    memcpy(v87, v89, 0x1B8uLL);
    memcpy(v82, v88, 0x1B8uLL);
    sub_21738C4B0(v82, v86, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v84);
    memcpy(v83, v87, sizeof(v83));
    sub_2171F0738(v83, &qword_27CB243F0, &qword_21775D690);
    memcpy(v86, v84, 0x221uLL);
    nullsub_1(v86, v41);
    v40 = v86;
  }

  memcpy(v87, v40, sizeof(v87));
  memcpy(v86, v0, 0x221uLL);
  sub_2171F0738(v86, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v0, v87, 0x221uLL);
  v42 = *(v39 + 472);
  *(v0 + 552) = *(v39 + 480);
  *(v0 + 560) = *(v39 + 488);
  if (v42)
  {
    v43 = *(v39 + 440);
    v44 = *(v39 + 464);
    v73 = *(v39 + 448);
    sub_217751DE8();
    sub_217751DE8();
    v45 = v73;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 0uLL;
  }

  *(v0 + 568) = v43;
  *(v0 + 576) = v45;
  *(v0 + 592) = v44;
  v46 = *(v39 + 504);
  *(v0 + 1152) = *(v39 + 496);
  *(v0 + 1160) = v46;
  v47 = *(type metadata accessor for CloudRecordLabel.Attributes(0) + 36);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(v39 + v47, v0 + v74);
  v48 = v80[7];
  sub_21738C4B0(v81 + v48, v84, &qword_27CB24A98, &unk_217759060);
  if (v84[2] == 1)
  {
    sub_2171F0738(v84, &qword_27CB24A98, &unk_217759060);
    v49 = v77;
  }

  else
  {
    sub_21738C4B0(v84, v83, &qword_27CB24270, &unk_21775D640);
    sub_217284540(v84);
    v49 = v77;
    if (v83[2])
    {
      OUTLINED_FUNCTION_38_32();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
      v50 = sub_2172E2038();
      OUTLINED_FUNCTION_21_45(v50, v51, v52, v53, &type metadata for Album, v54, v50, &protocol witness table for Album, v67);
      sub_2171F0738(v85, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v83, &qword_27CB24278, &unk_217759070);
      goto LABEL_19;
    }

    sub_2171F0738(v83, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_26_41();
LABEL_19:
  sub_21764E230(v82, v68);
  sub_21738C4B0(v81 + v48, v84, &qword_27CB24A98, &unk_217759060);
  if (v84[2] == 1)
  {
    sub_2171F0738(v84, &qword_27CB24A98, &unk_217759060);
    v55 = v79;
  }

  else
  {
    sub_21738C4B0(&v84[16], v83, &qword_27CB24270, &unk_21775D640);
    sub_217284540(v84);
    v55 = v79;
    if (v83[2])
    {
      OUTLINED_FUNCTION_38_32();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
      v56 = sub_2172E2038();
      OUTLINED_FUNCTION_21_45(v56, v57, v58, v59, &type metadata for Album, v60, v56, &protocol witness table for Album, v67);
      sub_2171F0738(v85, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v83, &qword_27CB24278, &unk_217759070);
      goto LABEL_25;
    }

    sub_2171F0738(v83, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_26_41();
LABEL_25:
  sub_21764E230(v82, v75);
  v61 = v80[8];
  v62 = *(v81 + v61);
  if (v62 == 1)
  {
    v63 = 0;
  }

  else
  {
    v63 = *(v81 + v61);
  }

  *(v0 + v16[14]) = v63;
  v84[3] = v16;
  v84[4] = &protocol witness table for RecordLabelPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
  sub_21764E2A0(v0, boxed_opaque_existential_0, type metadata accessor for RecordLabelPropertyProvider);
  sub_21733CF78(v62);
  RecordLabel.init(propertyProvider:)(v84, v76);

  (*(*(v49 - 8) + 8))(v78, v49);
  sub_2171F0738(v55, &qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_3_100();
  sub_21764E194(v81, v65);
  sub_21764E194(v0, type metadata accessor for RecordLabelPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void RecordLabel.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v173 = v8;
  v162 = type metadata accessor for CloudRecordLabel(0);
  v9 = OUTLINED_FUNCTION_43(v162);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_1();
  v168 = v14 - v13;
  v157 = type metadata accessor for CloudRecordLabel.Attributes(0);
  v15 = OUTLINED_FUNCTION_43(v157);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v178 = v27 - v26;
  if (qword_27CB23B10 != -1)
  {
    swift_once();
  }

  sub_2176CA854(qword_27CB8A248, v19, v20, v21, v22, v23, v24, v25, v126, v130, v134, v138, v142, v147, v152, v157, v162, v168, v173, v178, v183[0], v183[1], v183[2], v183[3], v183[4], v183[5]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v195) == 1)
  {
    sub_2172E22C0(v183);
  }

  else
  {
    memcpy(v183, v195, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v185);
    memcpy(v184, v183, 0x221uLL);
    sub_217284084(v184);
    memcpy(v186, v185, 0x1B8uLL);
    nullsub_1(v186, v28);
    memcpy(v183, v186, 0x1B8uLL);
  }

  if (qword_27CB23B38 != -1)
  {
    swift_once();
  }

  v131 = v7;
  v29 = sub_2172A4004();
  v148 = v30;
  v153 = v29;
  if (qword_27CB23B40 != -1)
  {
    swift_once();
  }

  v143 = sub_2172A4004();
  v32 = v31;
  v33 = sub_217751DC8();
  if (qword_27CB23B18 != -1)
  {
    swift_once();
  }

  v34 = sub_2172A48C0(qword_27CB8A250);
  if (qword_27CB23B20 != -1)
  {
    swift_once();
  }

  v135 = v5;
  v35 = sub_2172A48A4(qword_27CB8A258);
  if (qword_27CB23B30 != -1)
  {
    swift_once();
  }

  v139 = v3;
  v36 = sub_2172A4004();
  if (v37)
  {
    v44 = v36;
  }

  else
  {
    v44 = 0;
  }

  if (v37)
  {
    v45 = v37;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  if (qword_27CB23B48 != -1)
  {
    swift_once();
  }

  v46 = v179;
  v47 = v179 + *(v158 + 36);
  sub_2176CA39C(qword_27CB8A280, v37, v38, v39, v40, v41, v42, v43, v127, v131, v135, v139, v143, v148, v153, v158, v163, v169, v174, v179, v183[0], v183[1], v183[2], v183[3], v183[4], v183[5], v183[6], v183[7], v183[8], v183[9]);
  memcpy(v46, v183, 0x1B8uLL);
  v46[55] = v154;
  v46[56] = v149;
  v46[57] = v144;
  v46[58] = v32;
  v46[59] = v33;
  v46[60] = v34;
  v46[61] = v35;
  v46[62] = v44;
  v46[63] = v45;
  v194[1] = 0;
  v194[0] = 0;
  v194[2] = 1;
  bzero(&v194[3], 0xE8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255E8, &unk_21775D4D0);
  swift_allocObject();
  v48 = sub_21736C3E8(0x722D74736574616CLL, 0xEF73657361656C65, 1);
  sub_2176CAF84(v48, v49, v50, v51, v52, v53, v54, v55, v128, v132, v136, v140, v144, v149, v154, v159, v164, v170, v175, v180, v183[0], v183[1], v183[2], v183[3], v183[4], v183[5], v183[6], v183[7], v183[8], v183[9]);

  swift_allocObject();
  v56 = sub_21736C3E8(0x656C65722D706F74, 0xEC00000073657361, 1);
  sub_2176CAF84(v56, v57, v58, v59, v60, v61, v62, v63, v129, v133, v137, v141, v145, v150, v155, v160, v165, v171, v176, v181, v183[0], v183[1], v183[2], v183[3], v183[4], v183[5], v183[6], v183[7], v183[8], v183[9]);

  if (v193[11] | v192[11])
  {
    sub_21738C4B0(v193, v184, &qword_27CB25318, &qword_2177657C0);
    if (v184[11])
    {
      sub_2172E2038();
      sub_217230490(v185);
      LOBYTE(v187[0]) = v185[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
      OUTLINED_FUNCTION_46_28();
      sub_2171F0738(v184, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v184, &qword_27CB25318, &qword_2177657C0);
      memset(v186, 0, 128);
    }

    sub_21738C4B0(v192, v184, &qword_27CB25318, &qword_2177657C0);
    if (v184[11])
    {
      sub_2172E2038();
      sub_217230490(v187);
      LOBYTE(v189) = v187[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
      OUTLINED_FUNCTION_46_28();
      sub_2171F0738(v194, &qword_27CB24A98, &unk_217759060);
      sub_2171F0738(v184, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v194, &qword_27CB24A98, &unk_217759060);
      sub_2171F0738(v184, &qword_27CB25318, &qword_2177657C0);
      memset(v185, 0, 128);
    }

    memcpy(v184, v186, 0x80uLL);
    memcpy(&v184[16], v185, 0x80uLL);
    memcpy(v194, v184, sizeof(v194));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25488, &qword_21775CD08);
  swift_allocObject();
  v64 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  sub_2172A4888(v64);
  OUTLINED_FUNCTION_5_4();

  if ((v0 + 2) <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = (v0 + 2);
  }

  v67 = *v0;
  v66 = v0[1];
  v68 = v166[5];
  OUTLINED_FUNCTION_6_87();
  sub_21764E2A0(v182, v172 + v69, v70);
  sub_21738C4B0(v194, v172 + v166[7], &qword_27CB24A98, &unk_217759060);
  *v172 = v67;
  v172[1] = v66;
  *(v172 + v166[6]) = 1;
  *(v172 + v166[8]) = v65;
  v71 = v1[5];
  v72 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v71);
  v73 = *(v72 + 24);
  sub_217751DE8();
  v73(v185, v71, v72);
  nullsub_1(v185, v74);
  memcpy(v186, v185, 0x161uLL);
  OUTLINED_FUNCTION_4_103();
  sub_21764E2A0(v172, v177, v75);
  OUTLINED_FUNCTION_9_72();
  v76 = OUTLINED_FUNCTION_5_4();
  v77(v76, v72);
  v78 = v184[4];
  __swift_project_boxed_opaque_existential_1(v184, v184[3]);
  v79 = *(*(v78 + 8) + 48);
  v80 = OUTLINED_FUNCTION_5_4();
  v81(v80);
  __swift_destroy_boxed_opaque_existential_1(v184);
  v161 = v190;
  v167 = v189;
  v156 = v191;
  OUTLINED_FUNCTION_9_72();
  v82 = OUTLINED_FUNCTION_5_4();
  v83(v82, v72);
  __swift_project_boxed_opaque_existential_1(v184, v184[3]);
  OUTLINED_FUNCTION_26_1();
  v85 = *(v84 + 56);
  v86 = OUTLINED_FUNCTION_5_4();
  v88 = v87(v86);
  v146 = v89;
  v151 = v88;
  __swift_destroy_boxed_opaque_existential_1(v184);
  memcpy(v184, v186, 0x168uLL);
  memset(&v184[45], 0, 24);
  nullsub_1(v184, v90);
  OUTLINED_FUNCTION_9_72();
  v91 = OUTLINED_FUNCTION_5_4();
  v92(v91, v72);
  v93 = v188;
  v94 = OUTLINED_FUNCTION_37_34();
  __swift_project_boxed_opaque_existential_1(v94, v93);
  OUTLINED_FUNCTION_26_1();
  v96 = *(v95 + 64);
  v97 = OUTLINED_FUNCTION_5_4();
  v99 = v98(v97);
  __swift_destroy_boxed_opaque_existential_1(v187);
  OUTLINED_FUNCTION_9_72();
  v100 = OUTLINED_FUNCTION_5_4();
  v101(v100, v72);
  v102 = v188;
  v103 = OUTLINED_FUNCTION_37_34();
  __swift_project_boxed_opaque_existential_1(v103, v102);
  OUTLINED_FUNCTION_26_1();
  v105 = *(v104 + 72);
  v106 = OUTLINED_FUNCTION_5_4();
  v108 = v107(v106);
  __swift_destroy_boxed_opaque_existential_1(v187);
  v109 = v1[5];
  v110 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v109);
  (*(v110 + 96))(v187, v109, v110);
  v111 = v188;
  v112 = OUTLINED_FUNCTION_37_34();
  __swift_project_boxed_opaque_existential_1(v112, v111);
  OUTLINED_FUNCTION_26_1();
  v114 = (*(v113 + 80))(v111);
  __swift_destroy_boxed_opaque_existential_1(v187);
  v116 = v1[5];
  v115 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v116);
  (*(v115 + 96))(v187, v116, v115);
  v117 = v188;
  v118 = OUTLINED_FUNCTION_37_34();
  __swift_project_boxed_opaque_existential_1(v118, v117);
  OUTLINED_FUNCTION_26_1();
  v120 = (*(v119 + 88))(v117);
  OUTLINED_FUNCTION_3_100();
  sub_21764E194(v172, v121);
  sub_2171F0738(v194, &qword_27CB24A98, &unk_217759060);
  OUTLINED_FUNCTION_5_88();
  sub_21764E194(v182, v122);
  __swift_destroy_boxed_opaque_existential_1(v187);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v124 = v177 + v123[9];
  *v124 = v167;
  *(v124 + 8) = v161;
  *(v124 + 16) = v156;
  v125 = (v177 + v123[10]);
  *v125 = v151;
  v125[1] = v146;
  memcpy((v177 + v123[11]), v184, 0x180uLL);
  *(v177 + v123[12]) = v99;
  *(v177 + v123[13]) = v108;
  *(v177 + v123[14]) = v114;
  *(v177 + v123[15]) = v120;
  OUTLINED_FUNCTION_169_1(v193);
  OUTLINED_FUNCTION_169_1(v192);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudRecordLabel.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

void static CloudRecordLabel.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v90 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v90 - v26;
  memcpy(v108, v5, sizeof(v108));
  OUTLINED_FUNCTION_11_3();
  memcpy(v28, v29, v30);
  memcpy(v106, v5, 0x1B8uLL);
  OUTLINED_FUNCTION_11_3();
  memcpy(v31, v32, v33);
  memcpy(v110, v5, 0x1B8uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v110) == 1)
  {
    OUTLINED_FUNCTION_25_2(v105);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v105) == 1)
    {
      v99 = v20;
      v100 = v21;
      memcpy(v107, v106, sizeof(v107));
      OUTLINED_FUNCTION_33_1(v108, v104);
      OUTLINED_FUNCTION_33_1(v109, v104);
      OUTLINED_FUNCTION_169_1(v107);
      goto LABEL_8;
    }

LABEL_5:
    memcpy(v105, v106, sizeof(v105));
    OUTLINED_FUNCTION_33_1(v108, v107);
    OUTLINED_FUNCTION_33_1(v109, v107);
    v34 = &qword_27CB25008;
    v35 = &qword_21778F850;
    v36 = v105;
LABEL_6:
    sub_2171F0738(v36, v34, v35);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_25_2(v104);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v104) == 1)
  {
    goto LABEL_5;
  }

  v99 = v20;
  v100 = v21;
  OUTLINED_FUNCTION_25_2(v102);
  OUTLINED_FUNCTION_25_2(v105);
  memcpy(v107, v106, sizeof(v107));
  OUTLINED_FUNCTION_33_1(v108, v103);
  OUTLINED_FUNCTION_33_1(v109, v103);
  sub_2172A92BC();
  v38 = v37;
  OUTLINED_FUNCTION_169_1(v102);
  memcpy(v103, v106, sizeof(v103));
  OUTLINED_FUNCTION_169_1(v103);
  if ((v38 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v96 = v27;
  v97 = v15;
  v98 = v9;
  v95 = v6;
  v40 = v5[55];
  v39 = v5[56];
  v42 = v5[57];
  v41 = v5[58];
  v43 = v5[59];
  v45 = v3[55];
  v44 = v3[56];
  v46 = v3[57];
  v47 = v3[58];
  v48 = v3[59];
  if (!v43)
  {
    if (!v48)
    {
      v65 = v5[55];
      v66 = v5[56];
      v67 = v5[57];
      v91 = v3[57];
      v68 = v41;
      sub_21733B8BC(v65, v66, v42, v41, 0);
      sub_21733B8BC(v45, v44, v91, v47, 0);
      sub_21733B90C(v40, v39, v67, v68, 0);
      goto LABEL_16;
    }

LABEL_13:
    v60 = v5[55];
    v101 = v5[56];
    v61 = v39;
    v62 = v42;
    v94 = v44;
    v63 = v46;
    v64 = v41;
    sub_21733B8BC(v60, v61, v42, v41, v43);
    sub_21733B8BC(v45, v44, v63, v47, v48);
    sub_21733B90C(v40, v101, v62, v64, v43);
    sub_21733B90C(v45, v94, v63, v47, v48);
    goto LABEL_14;
  }

  if (!v48)
  {
    goto LABEL_13;
  }

  v106[0] = v3[55];
  v106[1] = v44;
  v106[2] = v46;
  v106[3] = v47;
  v106[4] = v48;
  v104[0] = v40;
  v104[1] = v39;
  v104[2] = v42;
  v104[3] = v41;
  v104[4] = v43;
  v92 = v40;
  v93 = v42;
  v101 = v39;
  v49 = v41;
  sub_21733B8BC(v40, v39, v42, v41, v43);
  v50 = OUTLINED_FUNCTION_28_46();
  sub_21733B8BC(v50, v51, v52, v53, v54);
  LODWORD(v91) = sub_2172AA368(v104, v106);
  v55 = OUTLINED_FUNCTION_28_46();
  sub_21733B90C(v55, v56, v57, v58, v59);
  sub_21733B90C(v92, v101, v93, v49, v43);
  if ((v91 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  v69 = v3[60];
  if (v5[60])
  {
    v71 = v97;
    v70 = v98;
    v72 = v96;
    v73 = v100;
    if (!v69)
    {
      goto LABEL_14;
    }

    v74 = v3[60];
    sub_217751DE8();
    sub_217262A00();
    v76 = v75;

    if ((v76 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v71 = v97;
    v70 = v98;
    v72 = v96;
    v73 = v100;
    if (v69)
    {
      goto LABEL_14;
    }
  }

  v77 = v3[61];
  if (v5[61])
  {
    if (!v77)
    {
      goto LABEL_14;
    }

    v78 = v3[61];
    sub_217751DE8();
    sub_217262CB4();
    v80 = v79;

    if ((v80 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v77)
  {
    goto LABEL_14;
  }

  v81 = v5[63];
  v82 = v3[63];
  if (!v81)
  {
    if (v82)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  if (v82)
  {
    v83 = v5[62] == v3[62] && v81 == v82;
    if (v83 || (sub_217753058() & 1) != 0)
    {
LABEL_35:
      v84 = *(type metadata accessor for CloudRecordLabel.Attributes(0) + 36);
      v85 = *(v73 + 48);
      OUTLINED_FUNCTION_33_1(v5 + v84, v72);
      OUTLINED_FUNCTION_33_1(v3 + v84, v72 + v85);
      v86 = v95;
      if (__swift_getEnumTagSinglePayload(v72, 1, v95) == 1)
      {
        if (__swift_getEnumTagSinglePayload(v72 + v85, 1, v86) == 1)
        {
          sub_2171F0738(v72, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_14;
        }
      }

      else
      {
        v87 = v99;
        sub_21738C4B0(v72, v99, &unk_27CB277C0, &qword_217758DC0);
        if (__swift_getEnumTagSinglePayload(v72 + v85, 1, v86) != 1)
        {
          (*(v70 + 32))(v71, v72 + v85, v86);
          OUTLINED_FUNCTION_1_117();
          sub_21764E1EC(v88);
          sub_217751F08();
          v89 = *(v70 + 8);
          v89(v71, v86);
          v89(v87, v86);
          sub_2171F0738(v72, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_14;
        }

        (*(v70 + 8))(v87, v86);
      }

      v34 = &qword_27CB24840;
      v35 = &unk_217758DD0;
      v36 = v72;
      goto LABEL_6;
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21764C2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_217753058();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21764C4AC(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21764C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21764C2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21764C5B0(uint64_t a1)
{
  v2 = sub_21764E2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21764C5EC(uint64_t a1)
{
  v2 = sub_21764E2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudRecordLabel.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1E0, &unk_217788BB0);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_111();
  v13 = v5[4];
  OUTLINED_FUNCTION_160(v5, v5[3]);
  sub_21764E2FC();
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  OUTLINED_FUNCTION_11_3();
  memcpy(v14, v15, v16);
  OUTLINED_FUNCTION_11_3();
  memcpy(v17, v18, v19);
  sub_21738C4B0(&v33, v31, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2172DEEB4();
  OUTLINED_FUNCTION_11_10();
  memcpy(v31, v32, sizeof(v31));
  sub_2171F0738(v31, &qword_27CB25000, &unk_21776EA00);
  if (!v1)
  {
    v24 = v3[55];
    v27 = v3[56];
    v28 = v3[57];
    v29 = v3[58];
    v30 = v3[59];
    sub_21733B8BC(v24, v27, v28, v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261D8, &qword_217761D38);
    sub_21737ABAC();
    OUTLINED_FUNCTION_10_59();
    sub_21733B90C(v24, v27, v28, v29, v30);
    v25 = v3[60];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    sub_2175D4B00(&unk_280BE23A0);
    OUTLINED_FUNCTION_10_59();
    v26 = v3[61];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_2175D4A04();
    OUTLINED_FUNCTION_10_59();
    v20 = v3[62];
    v21 = v3[63];
    sub_217752EF8();
    v22 = *(type metadata accessor for CloudRecordLabel.Attributes(0) + 36);
    sub_2177516D8();
    OUTLINED_FUNCTION_1_117();
    sub_21764E1EC(v23);
    OUTLINED_FUNCTION_11_10();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_170();
}

void CloudRecordLabel.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = v24 - v16;
  memcpy(v25, v0, sizeof(v25));
  v18 = *(v0 + 432);
  memcpy(v26, v0, sizeof(v26));
  v27 = v18;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v26) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v24, v25, sizeof(v24));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v18);
  }

  v19 = *(v0 + 472);
  if (v19)
  {
    v20 = *(v0 + 456);
    v24[0] = *(v0 + 440);
    v24[1] = v20;
    *&v24[2] = v19;
    OUTLINED_FUNCTION_119();
    sub_2172E3DD4(v2);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 480))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 504))
  {
    v21 = *(v0 + 496);
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v22 = type metadata accessor for CloudRecordLabel.Attributes(0);
  sub_21738C4B0(v0 + *(v22 + 36), v17, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v6 + 32))(v12, v17, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_117();
    sub_21764E1EC(v23);
    sub_217751EB8();
    (*(v6 + 8))(v12, v3);
  }

  OUTLINED_FUNCTION_13();
}

void CloudRecordLabel.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v34 = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1F0, &qword_217788BC8);
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v35 = v11;
  v36 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_36_34();
  v16 = type metadata accessor for CloudRecordLabel.Attributes(0);
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  v37 = (v22 - v21);
  v38 = v2;
  v23 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21764E2FC();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DF600();
    sub_217752E58();
    v24 = v37;
    memcpy(v37, v42, 0x1B8uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261D8, &qword_217761D38);
    sub_21737AF28();
    sub_217752E58();
    v25 = v41;
    v26 = v40;
    *(v24 + 440) = v39;
    *(v24 + 456) = v26;
    *(v24 + 59) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    sub_2175D4B00(&unk_280BE2398);
    OUTLINED_FUNCTION_20_45();
    *(v24 + 60) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_2175D4B80();
    OUTLINED_FUNCTION_20_45();
    *(v24 + 61) = v39;
    LOBYTE(v39) = 4;
    *(v24 + 62) = sub_217752E18();
    *(v24 + 63) = v27;
    sub_2177516D8();
    LOBYTE(v39) = 5;
    OUTLINED_FUNCTION_1_117();
    sub_21764E1EC(v28);
    sub_217752E58();
    v29 = OUTLINED_FUNCTION_8_73();
    v30(v29);
    sub_21751AF10(v8, &v24[*(v16 + 36)]);
    OUTLINED_FUNCTION_6_87();
    sub_21764E2A0(v24, v34, v31);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_5_88();
    sub_21764E194(v24, v32);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21764D1E8(uint64_t a1)
{
  v2 = sub_21764EDF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21764D224(uint64_t a1)
{
  v2 = sub_21764EDF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudRecordLabel.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1F8, &unk_217788BD0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_111();
  v10 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21764EDF4();
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudRecordLabel.Associations.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x656C65722D706F74;
  }

  else
  {
    result = 0x722D74736574616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_21764D4B4@<X0>(uint64_t *a1@<X8>)
{
  result = CloudRecordLabel.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21764D4F8(uint64_t a1)
{
  v2 = sub_21738C3B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21764D534(uint64_t a1)
{
  v2 = sub_21738C3B4();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudRecordLabel.Associations.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_50_26(a1, v9);
  OUTLINED_FUNCTION_50_26(a2, v11);
  if (v10)
  {
    sub_21738C4B0(v9, v8, &qword_27CB24270, &unk_21775D640);
    if (!v11[2])
    {
LABEL_11:
      sub_2171F0738(v8, &qword_27CB24278, &unk_217759070);
      goto LABEL_13;
    }

    memcpy(v7, v11, sizeof(v7));
    v4 = sub_2172DDD44(v8);
    sub_2171F0738(v7, &qword_27CB24278, &unk_217759070);
    sub_2171F0738(v8, &qword_27CB24278, &unk_217759070);
    sub_2171F0738(v9, &qword_27CB24270, &unk_21775D640);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11[2])
    {
LABEL_13:
      sub_2171F0738(v9, &qword_27CB25070, &unk_21777EF10);
      return 0;
    }

    sub_2171F0738(v9, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_50_26(a1 + 128, v9);
  OUTLINED_FUNCTION_50_26(a2 + 128, v11);
  if (!v10)
  {
    if (!v11[2])
    {
      sub_2171F0738(v9, &qword_27CB24270, &unk_21775D640);
      return 1;
    }

    goto LABEL_13;
  }

  sub_21738C4B0(v9, v8, &qword_27CB24270, &unk_21775D640);
  if (!v11[2])
  {
    goto LABEL_11;
  }

  memcpy(v7, v11, sizeof(v7));
  v5 = sub_2172DDD44(v8);
  OUTLINED_FUNCTION_169_1(v7);
  OUTLINED_FUNCTION_169_1(v8);
  sub_2171F0738(v9, &qword_27CB24270, &unk_21775D640);
  return (v5 & 1) != 0;
}

uint64_t CloudRecordLabel.Associations.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B208, &unk_217788BE0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_111();
  v11 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738C3B4();
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_21764EF08(&qword_27CB250C0);
  OUTLINED_FUNCTION_33_40();
  if (!v1)
  {
    OUTLINED_FUNCTION_33_40();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t CloudRecordLabel.Associations.hash(into:)(uint64_t a1)
{
  sub_21738C4B0(v1, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(v4, __src, sizeof(v4));
    OUTLINED_FUNCTION_24();
    sub_2172DE6DC(a1);
    sub_2171F0738(v4, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_21738C4B0(v1 + 128, __src, &qword_27CB24270, &unk_21775D640);
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE6DC(a1);
  return sub_2171F0738(v4, &qword_27CB24278, &unk_217759070);
}

uint64_t CloudRecordLabel.Associations.hashValue.getter()
{
  sub_2177531E8();
  sub_21738C4B0(v0, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_21738C4B0(v0 + 128, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudRecordLabel.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v12 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B210, &qword_217788BF0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_36_34();
  v9 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21738C3B4();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    sub_21764EF08(&qword_27CB25158);
    OUTLINED_FUNCTION_19_40();
    memcpy(v14, v13, sizeof(v14));
    OUTLINED_FUNCTION_19_40();
    v10 = OUTLINED_FUNCTION_41_33();
    v11(v10);
    memcpy(v15, v13, sizeof(v15));
    sub_21738C118(v14, v12);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217284540(v14);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21764DD94()
{
  sub_2177531E8();
  sub_21738C4B0(v0, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_21738C4B0(v0 + 128, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

MusicKit::CloudRecordLabel::Metadata __swiftcall CloudRecordLabel.Metadata.init(snippets:)(Swift::OpaquePointer_optional snippets)
{
  rawValue = snippets.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.snippets.value._rawValue = v4;
  result.snippets.is_nil = v5;
  return result;
}

uint64_t CloudRecordLabel.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static CloudRecordLabel.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;
      sub_217751DE8();
      sub_21726F358();
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21764DFE0()
{
  result = qword_27CB2B1B0;
  if (!qword_27CB2B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1B0);
  }

  return result;
}

uint64_t sub_21764E034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudRecordLabel.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21764E098()
{
  result = qword_27CB2B1C0;
  if (!qword_27CB2B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1C0);
  }

  return result;
}

unint64_t sub_21764E0EC()
{
  result = qword_27CB2B1C8;
  if (!qword_27CB2B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1C8);
  }

  return result;
}

unint64_t sub_21764E140()
{
  result = qword_27CB2B1D0;
  if (!qword_27CB2B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1D0);
  }

  return result;
}

uint64_t sub_21764E194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_21764E1EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21764E230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25318, &qword_2177657C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21764E2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_93();
  v8(v7);
  return a2;
}

unint64_t sub_21764E2FC()
{
  result = qword_27CB2B1E8;
  if (!qword_27CB2B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1E8);
  }

  return result;
}

uint64_t sub_21764E350(uint64_t a1)
{
  v2 = sub_21764EF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21764E38C(uint64_t a1)
{
  v2 = sub_21764EF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudRecordLabel.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B218, &qword_217788BF8);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_111();
  v11 = *v0;
  v12 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21764EF8C();
  sub_217751DE8();
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
  sub_2175D4ED4(&qword_27CB25298);
  sub_217752F38();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_170();
}

void CloudRecordLabel.Metadata.hash(into:)()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_119();

    sub_21727DDE0();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }
}

uint64_t CloudRecordLabel.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_21727DDE0();
  }

  return sub_217753238();
}

void CloudRecordLabel.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B228, &qword_217788C00);
  OUTLINED_FUNCTION_0_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &a9 - v34;
  v36 = v24[4];
  OUTLINED_FUNCTION_160(v24, v24[3]);
  sub_21764EF8C();
  sub_2177532C8();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2175D4ED4(&qword_280BE2358);
    sub_217752E58();
    (*(v29 + 8))(v35, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudRecordLabel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudRecordLabel.attributes.getter()
{
  v2 = *(OUTLINED_FUNCTION_51_23() + 20);
  OUTLINED_FUNCTION_6_87();
  return sub_21764E2A0(v1 + v3, v0, v4);
}

uint64_t CloudRecordLabel.relationships.getter()
{
  result = OUTLINED_FUNCTION_51_23();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t CloudRecordLabel.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_51_23() + 32));
  *v0 = v2;

  return sub_21733CF78(v2);
}

uint64_t CloudRecordLabel.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudRecordLabel(0) + 32);
  result = sub_217221010(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21764E994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4C38 != -1)
  {
    swift_once();
  }

  v1 = *algn_280BE4C48;
  v2 = byte_280BE4C50;
  *(v0 + 32) = qword_280BE4C40;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_280BE3F58 = v0;

  return sub_217751DE8();
}

uint64_t sub_21764EA64(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21764EAF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21764EB4C(uint64_t a1)
{
  v2 = sub_21764DFE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21764EB88(uint64_t a1)
{
  v2 = sub_21764DFE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudRecordLabel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_217751FF8();
  v6 = type metadata accessor for CloudRecordLabel(0);
  v7 = v1 + v6[5];
  CloudRecordLabel.Attributes.hash(into:)();
  v8 = *(v2 + v6[6]);
  sub_217753208();
  sub_21738C4B0(v2 + v6[7], __src, &qword_27CB24A98, &unk_217759060);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v24, __src, sizeof(v24));
    OUTLINED_FUNCTION_24();
    sub_2172640D4(a1, v9, v10, v11, v12, v13, v14, v15);
    sub_2172640D4(a1, v16, v17, v18, v19, v20, v21, v22);
    sub_217284540(v24);
  }

  v23 = *(v2 + v6[8]);
  if (v23 == 1 || (OUTLINED_FUNCTION_24(), !v23))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0();
  }
}

uint64_t sub_21764ECF0(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_21764EDA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

unint64_t sub_21764EDF4()
{
  result = qword_27CB2B200;
  if (!qword_27CB2B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B200);
  }

  return result;
}

unint64_t sub_21764EE48(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB247F0, &qword_21775D360);
    sub_21764E1EC(&unk_27CB250D0);
    sub_21764E1EC(&unk_27CB250D8);
    result = OUTLINED_FUNCTION_44();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21764EF08(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24278, &unk_217759070);
    sub_21764EE48(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21764EF8C()
{
  result = qword_27CB2B220;
  if (!qword_27CB2B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B220);
  }

  return result;
}

unint64_t sub_21764F02C()
{
  result = qword_27CB2B238;
  if (!qword_27CB2B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B238);
  }

  return result;
}

unint64_t sub_21764F084()
{
  result = qword_27CB2B240;
  if (!qword_27CB2B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B240);
  }

  return result;
}

unint64_t sub_21764F0DC()
{
  result = qword_27CB2B248;
  if (!qword_27CB2B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B248);
  }

  return result;
}

unint64_t sub_21764F134()
{
  result = qword_27CB2B250;
  if (!qword_27CB2B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B250);
  }

  return result;
}

unint64_t sub_21764F18C()
{
  result = qword_27CB2B258;
  if (!qword_27CB2B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B260, &qword_217788E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B258);
  }

  return result;
}

unint64_t sub_21764F1F4()
{
  result = qword_27CB2B268;
  if (!qword_27CB2B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B268);
  }

  return result;
}

unint64_t sub_21764F24C()
{
  result = qword_27CB2B270;
  if (!qword_27CB2B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B270);
  }

  return result;
}

void sub_21764F404()
{
  type metadata accessor for CloudRecordLabel.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_2172E2E58(319, &unk_280BE3F40);
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE3F60);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE3F38);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21764F520()
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  if (v0 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE42F8, &qword_27CB261D8, &qword_217761D38);
    if (v1 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
      if (v2 <= 0x3F)
      {
        sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
        if (v3 <= 0x3F)
        {
          sub_2172E2E58(319, &qword_280BE7598);
          if (v4 <= 0x3F)
          {
            sub_2172E2DB0();
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

_BYTE *storeEnumTagSinglePayload for CloudRecordLabel.Associations.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_21764F780(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudRecordLabel.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudRecordLabel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21764F9F8()
{
  result = qword_27CB2B288;
  if (!qword_27CB2B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B288);
  }

  return result;
}

unint64_t sub_21764FA50()
{
  result = qword_27CB2B290;
  if (!qword_27CB2B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B290);
  }

  return result;
}

unint64_t sub_21764FAA8()
{
  result = qword_27CB2B298;
  if (!qword_27CB2B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B298);
  }

  return result;
}

unint64_t sub_21764FB00()
{
  result = qword_27CB2B2A0;
  if (!qword_27CB2B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2A0);
  }

  return result;
}

unint64_t sub_21764FB58()
{
  result = qword_27CB2B2A8;
  if (!qword_27CB2B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2A8);
  }

  return result;
}

unint64_t sub_21764FBB0()
{
  result = qword_27CB2B2B0;
  if (!qword_27CB2B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2B0);
  }

  return result;
}

unint64_t sub_21764FC08()
{
  result = qword_27CB2B2B8;
  if (!qword_27CB2B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2B8);
  }

  return result;
}

unint64_t sub_21764FC60()
{
  result = qword_27CB2B2C0;
  if (!qword_27CB2B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2C0);
  }

  return result;
}

unint64_t sub_21764FCB8()
{
  result = qword_27CB2B2C8;
  if (!qword_27CB2B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2C8);
  }

  return result;
}

unint64_t sub_21764FD10()
{
  result = qword_27CB2B2D0;
  if (!qword_27CB2B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2D0);
  }

  return result;
}

unint64_t sub_21764FD68()
{
  result = qword_27CB2B2D8;
  if (!qword_27CB2B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_45()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_21_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(v9 + 104);
  v13 = *(v9 + 112);

  return CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v13, v14, v9 + 1584, v10, a5, v11, a7, a8, v9 + 144, a9);
}

double OUTLINED_FUNCTION_26_41()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  return result;
}

void OUTLINED_FUNCTION_46_28()
{

  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
}

uint64_t OUTLINED_FUNCTION_50_26(uint64_t a1, uint64_t a2)
{

  return sub_21738C4B0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_51_23()
{

  return type metadata accessor for CloudRecordLabel(0);
}

uint64_t CloudStation.Kind.convertToStationKind(with:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  result = 0x6565536D75626C61;
  v6 = *v2;
  v7 = v2[1];
  v8 = *v2 == 0x6565536D75626C61 && v7 == 0xEB00000000646564;
  if (v8 || (v9 = *a1, v10 = a1[1], result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 3;
    goto LABEL_7;
  }

  result = 0x6E4F747369747261;
  v12 = v6 == 0x6E4F747369747261 && v7 == 0xEA0000000000796CLL;
  if (v12 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 4;
    goto LABEL_7;
  }

  result = 0x6553747369747261;
  v13 = v6 == 0x6553747369747261 && v7 == 0xEC00000064656465;
  if (v13 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 5;
    goto LABEL_7;
  }

  result = 0x6169726F74696465;
  v14 = v6 == 0x6169726F74696465 && v7 == 0xE90000000000006CLL;
  if (v14 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 6;
    goto LABEL_7;
  }

  result = 0x74616D726F66;
  v15 = v6 == 0x74616D726F66 && v7 == 0xE600000000000000;
  if (v15 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 7;
    goto LABEL_7;
  }

  result = 0x65726E6567;
  v16 = v6 == 0x65726E6567 && v7 == 0xE500000000000000;
  if (v16 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 8;
    goto LABEL_7;
  }

  v17 = v6 == 0xD000000000000015 && 0x80000002177AC080 == v7;
  if (v17 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 9;
    goto LABEL_7;
  }

  result = 0x7473696C79616C70;
  v18 = v6 == 0x7473696C79616C70 && v7 == 0xEE00646564656553;
  if (v18 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 10;
    goto LABEL_7;
  }

  result = 0x7972657571;
  v19 = v6 == 0x7972657571 && v7 == 0xE500000000000000;
  if (v19 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 11;
    goto LABEL_7;
  }

  result = 0x64656553676E6F73;
  v20 = v6 == 0x64656553676E6F73 && v7 == 0xEA00000000006465;
  if (v20 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    v11 = 12;
    goto LABEL_7;
  }

  result = 0x6E696D6165727473;
  v21 = v6 == 0x6E696D6165727473 && v7 == 0xE900000000000067;
  if (v21 || (result = OUTLINED_FUNCTION_1_118(), (result & 1) != 0))
  {
    if (!v10)
    {
      v11 = 2;
      goto LABEL_7;
    }

    result = OUTLINED_FUNCTION_2_110();
    v22 = v9 == result && v10 == 0xE700000000000000;
    if (v22 || (result = sub_217753058(), (result & 1) != 0))
    {
      v11 = 0;
      goto LABEL_7;
    }

    result = OUTLINED_FUNCTION_3_101();
    v11 = 1;
    if (v9 != result || v10 != 0xE900000000000074)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v11 = 13;
    if (v6 != 1919251317 || v7 != 0xE400000000000000)
    {
LABEL_84:
      result = sub_217753058();
      if ((result & 1) == 0)
      {
        ++v11;
      }
    }
  }

LABEL_7:
  *a2 = v11;
  return result;
}

MusicKit::Station::_StreamingKind_optional __swiftcall CloudStation.StreamingKind.convertToStationStreamingKind()()
{
  v2 = v0;
  v3 = OUTLINED_FUNCTION_2_110();
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == v3 && v4 == 0xE700000000000000;
  if (v6 || (v7 = *v1, v8 = v1[1], LOBYTE(v3) = sub_217753058(), (v3 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_3_101();
    v9 = 1;
    if (v5 != v3 || v4 != v10)
    {
      LOBYTE(v3) = sub_217753058();
      if (v3)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }
  }

  *v2 = v9;
  return v3;
}

uint64_t CloudStation.StreamingKind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudStation.StreamingKind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

void *sub_217650564@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

unint64_t sub_21765065C()
{
  result = qword_27CB2B2E0;
  if (!qword_27CB2B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2E0);
  }

  return result;
}

unint64_t sub_2176506B4()
{
  result = qword_27CB2B2E8;
  if (!qword_27CB2B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2E8);
  }

  return result;
}

unint64_t sub_217650728()
{
  result = qword_280BE4D80;
  if (!qword_280BE4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4D80);
  }

  return result;
}

unint64_t sub_21765077C()
{
  result = qword_280BE4D50;
  if (!qword_280BE4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4D50);
  }

  return result;
}

void sub_2176507D0(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646564;
  v3 = 0x6565536D75626C61;
  switch(*v1)
  {
    case 3:
      break;
    case 4:
      v2 = 0xEA0000000000796CLL;
      v3 = 0x6E4F747369747261;
      break;
    case 5:
      v2 = 0xEC00000064656465;
      v3 = 0x6553747369747261;
      break;
    case 6:
      v2 = 0xE90000000000006CLL;
      v3 = 0x6169726F74696465;
      break;
    case 7:
      v2 = 0xE600000000000000;
      v3 = 0x74616D726F66;
      break;
    case 8:
      v2 = 0xE500000000000000;
      v3 = 0x65726E6567;
      break;
    case 9:
      v2 = 0x80000002177AC080;
      v3 = 0xD000000000000015;
      break;
    case 0xA:
      v2 = 0xEE00646564656553;
      v3 = 0x7473696C79616C70;
      break;
    case 0xB:
      v2 = 0xE500000000000000;
      v3 = 0x7972657571;
      break;
    case 0xC:
      v2 = 0xEA00000000006465;
      v3 = 0x64656553676E6F73;
      break;
    case 0xD:
      v2 = 0xE400000000000000;
      v3 = 1919251317;
      break;
    default:
      v3 = 0x6E696D6165727473;
      v2 = 0xE900000000000067;
      break;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_217650964(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = 0xD000000000000010;
      v4 = "permissionDenied";
      goto LABEL_5;
    case 2:
      v3 = 0xD000000000000010;
      v4 = "userTokenRevoked";
LABEL_5:
      v2 = (v4 - 32) | 0x8000000000000000;
      break;
    case 3:
      v2 = 0xEF6E4964656E6769;
      v3 = 0x53746F4E72657375;
      break;
    case 4:
      v2 = 0x80000002177AA2E0;
      v3 = 0xD00000000000001ELL;
      break;
    case 5:
      v2 = 0x80000002177AA360;
      v3 = 0xD00000000000001BLL;
      break;
    case 6:
      v2 = 0x80000002177AA380;
      v3 = 0xD000000000000016;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v3, v2);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
}

uint64_t sub_217650AC8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(a1 + 32) == 1)
  {
    v6[0] = 0x20726572616542;
    MEMORY[0x21CEA23B0](v2, v1);
    sub_2177512E8();
  }

  else
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6[0] = *a1;
    v6[1] = v1;
    v7 = xmmword_2177899E0;
    v8 = 1;
    sub_217751DE8();
    sub_217650AC8(v6);
    sub_21758A41C(v2, v1, 7, 0, 1);

    return sub_2177512E8();
  }
}

unint64_t sub_217650C0C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_2176510AC();
}

uint64_t sub_217650C48(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  if (v6)
  {
    if (a2[4])
    {
      v12 = v3 == v8 && v2 == v7;
      if (v12 || (OUTLINED_FUNCTION_4_104() & 1) != 0)
      {
        if (v5 == 7)
        {
          v13 = 1;
          v14 = OUTLINED_FUNCTION_1_119();
          sub_21758E1D4(v14, v15, v16, v17, 1);
          v18 = OUTLINED_FUNCTION_0_126();
          sub_21758E1D4(v18, v19, v20, v21, 1);
          v22 = OUTLINED_FUNCTION_0_126();
          sub_21758A41C(v22, v23, v24, v25, 1);
          v26 = OUTLINED_FUNCTION_1_119();
          sub_21758A41C(v26, v27, v28, v29, 1);
          if (v9 == 7)
          {
            return v13;
          }

          return 0;
        }

        v67 = OUTLINED_FUNCTION_1_119();
        sub_21758E1D4(v67, v68, v69, v70, 1);
        v71 = OUTLINED_FUNCTION_0_126();
        sub_21758E1D4(v71, v72, v73, v74, 1);
        if (v9 != 7)
        {
          v75 = sub_217708CE0();
          v13 = 1;
          v76 = OUTLINED_FUNCTION_0_126();
          sub_21758A41C(v76, v77, v78, v79, 1);
          v80 = OUTLINED_FUNCTION_1_119();
          sub_21758A41C(v80, v81, v82, v83, 1);
          if (v75)
          {
            return v13;
          }

          return 0;
        }
      }

      else
      {
        v102 = OUTLINED_FUNCTION_1_119();
        sub_21758E1D4(v102, v103, v104, v105, 1);
        v106 = OUTLINED_FUNCTION_0_126();
        sub_21758E1D4(v106, v107, v108, v109, 1);
      }

      v110 = OUTLINED_FUNCTION_0_126();
      sub_21758A41C(v110, v111, v112, v113, 1);
      v42 = OUTLINED_FUNCTION_1_119();
      v46 = 1;
LABEL_13:
      sub_21758A41C(v42, v43, v44, v45, v46);
      return 0;
    }

LABEL_12:
    v30 = OUTLINED_FUNCTION_1_119();
    sub_21758E1D4(v30, v31, v32, v33, v11);
    v34 = OUTLINED_FUNCTION_0_126();
    sub_21758E1D4(v34, v35, v36, v37, v6);
    v38 = OUTLINED_FUNCTION_0_126();
    sub_21758A41C(v38, v39, v40, v41, v6);
    v42 = OUTLINED_FUNCTION_1_119();
    v46 = v11;
    goto LABEL_13;
  }

  if (a2[4])
  {
    goto LABEL_12;
  }

  v48 = v3 == v8 && v2 == v7;
  if (!v48 && (OUTLINED_FUNCTION_4_104() & 1) == 0)
  {
    v114 = OUTLINED_FUNCTION_1_119();
    sub_21758E1D4(v114, v115, v116, v117, 0);
    v118 = OUTLINED_FUNCTION_0_126();
    sub_21758E1D4(v118, v119, v120, v121, 0);
    v122 = OUTLINED_FUNCTION_0_126();
    sub_21758A41C(v122, v123, v124, v125, 0);
    v42 = OUTLINED_FUNCTION_1_119();
    v46 = 0;
    goto LABEL_13;
  }

  if (v5 == v9 && v4 == v10)
  {
    v84 = OUTLINED_FUNCTION_3_102();
    sub_21758E1D4(v84, v85, v86, v87, v88);
    v89 = OUTLINED_FUNCTION_0_126();
    sub_21758E1D4(v89, v90, v91, v92, 0);
    v93 = OUTLINED_FUNCTION_0_126();
    sub_21758A41C(v93, v94, v95, v96, 0);
    v97 = OUTLINED_FUNCTION_3_102();
    sub_21758A41C(v97, v98, v99, v100, v101);
    return 1;
  }

  v50 = sub_217753058();
  v51 = OUTLINED_FUNCTION_1_119();
  sub_21758E1D4(v51, v52, v53, v54, 0);
  v55 = OUTLINED_FUNCTION_0_126();
  sub_21758E1D4(v55, v56, v57, v58, 0);
  v59 = OUTLINED_FUNCTION_0_126();
  sub_21758A41C(v59, v60, v61, v62, 0);
  v63 = OUTLINED_FUNCTION_1_119();
  sub_21758A41C(v63, v64, v65, v66, 0);
  return v50 & 1;
}

uint64_t sub_217650EA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (v0[4])
  {
    MEMORY[0x21CEA3550](1);
    OUTLINED_FUNCTION_6_88();
    if (v3 == 7)
    {
      return sub_217753208();
    }

    else
    {
      sub_217753208();

      return sub_217343DB0();
    }
  }

  else
  {
    v5 = v0[3];
    MEMORY[0x21CEA3550](0);
    OUTLINED_FUNCTION_6_88();

    return sub_217751FF8();
  }
}

uint64_t sub_217650F8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2177531E8();
  if (v5)
  {
    MEMORY[0x21CEA3550](1);
    OUTLINED_FUNCTION_6_88();
    sub_217753208();
    if (v3 != 7)
    {
      sub_217343DB0();
    }
  }

  else
  {
    MEMORY[0x21CEA3550](0);
    OUTLINED_FUNCTION_6_88();
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_21765105C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_2177531E8();
  sub_217650EA0();
  return sub_217753238();
}

unint64_t sub_2176510AC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if ((*(v0 + 32) & 1) == 0)
  {
    v11 = *(v0 + 24);
    OUTLINED_FUNCTION_2_4();
    v32 = 0xD000000000000014;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v29 = v12;
    v13 = OUTLINED_FUNCTION_2_111();
    v16 = sub_2176F98EC(v13, v14, v15, v2, v1);
    MEMORY[0x21CEA23B0](v16);

    MEMORY[0x21CEA23B0](11298, 0xE200000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000014, v29);

    sub_217752AA8();

    v27 = 0x547265737520200ALL;
    v30 = 0xEF22203A6E656B6FLL;
    v17 = OUTLINED_FUNCTION_2_111();
    v20 = sub_2176F98EC(v17, v18, v19, v3, v11);
    MEMORY[0x21CEA23B0](v20);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
LABEL_6:
    MEMORY[0x21CEA23B0](v27, v30);

    v9 = 10506;
    v10 = 0xE200000000000000;
    goto LABEL_7;
  }

  v32 = 0xD000000000000016;
  if (*(v0 + 16) != 7)
  {
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v31 = v21;
    v22 = OUTLINED_FUNCTION_2_111();
    v25 = sub_2176F98EC(v22, v23, v24, v2, v1);
    MEMORY[0x21CEA23B0](v25);

    MEMORY[0x21CEA23B0](11298, 0xE200000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000014, v31);

    v27 = 0;
    v30 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177B3200);
    sub_217650964(v3);
    goto LABEL_6;
  }

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v28 = v4;
  v5 = OUTLINED_FUNCTION_2_111();
  v8 = sub_2176F98EC(v5, v6, v7, v2, v1);
  MEMORY[0x21CEA23B0](v8);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](0xD000000000000011, v28);

  v9 = 41;
  v10 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x21CEA23B0](v9, v10);
  return v32;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2176513E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217651424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_21765148C()
{
  result = qword_27CB2B2F0;
  if (!qword_27CB2B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2F0);
  }

  return result;
}

uint64_t sub_2176514E0(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 1)
  {
    if (a6 == 1)
    {
      return 1;
    }
  }

  else if (a6 != 1)
  {
    if (a1 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 2 || ((a4 ^ a1) & 1) != 0)
    {
      return 0;
    }

    if (a3)
    {
      if (a6)
      {
        v7 = a2 == a5 && a3 == a6;
        if (v7 || (sub_217753058() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_217651584(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69746E6568747561 && a2 == 0xEE006E6F69746163)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_217651628(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B318, &qword_217789C38);
  v10 = OUTLINED_FUNCTION_0_39(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = v20 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217651D38();
  sub_2177532F8();
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  sub_217651DE0();
  sub_217752F38();
  return (*(v12 + 8))(v17, v4);
}

uint64_t sub_217651774(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
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

uint64_t sub_21765181C(char a1, uint64_t a2, uint64_t a3)
{
  sub_2177531E8();
  if (a3 == 1)
  {
    goto LABEL_6;
  }

  sub_217753208();
  if (a1 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!a3)
  {
LABEL_6:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  return sub_217753238();
}

void *sub_2176518D8(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B300, &qword_217789C30);
  v5 = OUTLINED_FUNCTION_0_39(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = v16 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217651D38();
  sub_2177532C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_217651D8C();
    sub_217752E58();
    (*(v7 + 8))(v12, v2);
    v14 = v16[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

uint64_t sub_217651A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217651584(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_217651A74(uint64_t a1)
{
  v2 = sub_217651D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217651AB0(uint64_t a1)
{
  v2 = sub_217651D38();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_217651AEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2176518D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_217651B70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 24))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217651BD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_217651C34()
{
  result = qword_27CB2B2F8;
  if (!qword_27CB2B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2F8);
  }

  return result;
}

uint64_t sub_217651C88()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_2177531E8();
  if (v2 == 1)
  {
    goto LABEL_6;
  }

  sub_217753208();
  if (v1 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!v2)
  {
LABEL_6:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  return sub_217753238();
}

unint64_t sub_217651D38()
{
  result = qword_27CB2B308;
  if (!qword_27CB2B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B308);
  }

  return result;
}

unint64_t sub_217651D8C()
{
  result = qword_27CB2B310;
  if (!qword_27CB2B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B310);
  }

  return result;
}

unint64_t sub_217651DE0()
{
  result = qword_27CB2B320;
  if (!qword_27CB2B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B320);
  }

  return result;
}

_BYTE *_s8MetadataV10CodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_217651EE4()
{
  result = qword_27CB2B328;
  if (!qword_27CB2B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B328);
  }

  return result;
}

unint64_t sub_217651F3C()
{
  result = qword_27CB2B330;
  if (!qword_27CB2B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B330);
  }

  return result;
}

unint64_t sub_217651F94()
{
  result = qword_27CB2B338;
  if (!qword_27CB2B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B338);
  }

  return result;
}

uint64_t CloudMetrics.reco_id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t static CloudMetrics.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21765207C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64695F6F636572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_217652110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21765207C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21765213C(uint64_t a1)
{
  v2 = sub_2176522E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217652178(uint64_t a1)
{
  v2 = sub_2176522E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B340, &qword_217789D58);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176522E0();
  sub_2177532F8();
  sub_217752EF8();
  return (*(v7 + 8))(v12, v2);
}

unint64_t sub_2176522E0()
{
  result = qword_27CB2B348;
  if (!qword_27CB2B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B348);
  }

  return result;
}

uint64_t CloudMetrics.hash(into:)()
{
  if (!v0[1])
  {
    return sub_217753208();
  }

  v1 = *v0;
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudMetrics.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t CloudMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B350, &qword_217789D60);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176522E0();
  sub_2177532C8();
  if (!v2)
  {
    v16 = sub_217752E18();
    v18 = v17;
    (*(v9 + 8))(v14, v3);
    *a2 = v16;
    a2[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2176525C0()
{
  result = qword_27CB2B358;
  if (!qword_27CB2B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudMetrics.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2176526D4()
{
  result = qword_27CB2B360;
  if (!qword_27CB2B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B360);
  }

  return result;
}

unint64_t sub_21765272C()
{
  result = qword_27CB2B368;
  if (!qword_27CB2B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B368);
  }

  return result;
}

unint64_t sub_217652784()
{
  result = qword_27CB2B370;
  if (!qword_27CB2B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B370);
  }

  return result;
}

uint64_t sub_2176527D8()
{
  v1 = v0;
  v85 = *v0;
  v2 = v85;
  v3 = *(v85 + 88);
  OUTLINED_FUNCTION_0();
  v82 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v83 = &v72 - v9;
  v10 = *(v85 + 80);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  v81 = &v72 - v17;
  v18 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v87 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22, v23);
  v86 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v72 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v72 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v72 - v35;
  v37 = *(v2 + 96);
  v88 = v10;
  v84 = v3;
  v80 = v37;
  v38 = type metadata accessor for _MusicLibraryMapping.Item.Source();
  OUTLINED_FUNCTION_0();
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  v43 = MEMORY[0x28223BE20](v41, v42);
  v45 = &v72 - v44;
  (*(v46 + 16))(&v72 - v44, &v1[*(v2 + 120)], v38, v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *(v12 + 8);

    v47(v45, v88);
    return v1;
  }

  v75 = v12;
  v77 = *v45;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = v87;
  v50 = &v45[*(TupleTypeMetadata2 + 48)];
  v74 = *(v87 + 32);
  v74(v36, v50, v18);
  v51 = *(v49 + 16);
  v79 = v32;
  v51(v32, v36, v18);
  v76 = v51;
  v51(v28, v36, v18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v88);
  v53 = v18;
  v78 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v54 = v87;
    (*(v87 + 8))(v28, v18);
    goto LABEL_11;
  }

  v73 = v18;
  v55 = v75;
  v56 = v81;
  v57 = v88;
  (*(v75 + 32))(v81, v28, v88);
  v58 = v80;
  MusicItem.identifierSet.getter(v57, v80, v90);
  v59 = v90[3];
  sub_217751DE8();
  sub_217269F50(v90);
  if (v59)
  {

    MusicItem.identifierSet.getter(v88, v58, v89);
    v60 = v89[6];
    sub_217751DE8();
    sub_217269F50(v89);
    if (v60)
    {

      v61 = v86;
      v62 = v88;
      MusicItem.removingLibraryIdentifiers()(v88, v86);
      (*(v75 + 8))(v56, v62);
      v63 = v87;
      v64 = v79;
      v53 = v73;
      (*(v87 + 8))(v79, v73);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
      v74(v64, v61, v53);
      v54 = v63;
      goto LABEL_11;
    }

    (*(v75 + 8))(v56, v88);
  }

  else
  {
    (*(v55 + 8))(v56, v88);
  }

  v54 = v87;
  v53 = v73;
LABEL_11:
  v65 = *(v1 + 2);
  v66 = *(v1 + 3);
  LOBYTE(v90[0]) = v77;
  v67 = v79;
  v76(v86, v79, v53);
  (*(v82 + 16))(v83, &v1[*(*v1 + 112)], v84);
  sub_217751DE8();
  v68 = _MusicLibraryMapping.Item.__allocating_init(id:kind:catalogItem:context:)();
  if (v68)
  {
    v69 = v68;
    v70 = *(v54 + 8);
    v70(v67, v53);
    v70(v78, v53);
    return v69;
  }

  v90[0] = 0;
  v90[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  v89[0] = v1;
  sub_217753018();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t _MusicLibraryMapping.Item.__allocating_init(id:kind:existingCatalogItem:context:)()
{
  OUTLINED_FUNCTION_1_120();
  v1 = OUTLINED_FUNCTION_0_50();
  _MusicLibraryMapping.Item.init(id:kind:existingCatalogItem:context:)(v1, v2, v3, v4, v5);
  return v0;
}

char *_MusicLibraryMapping.Item.__allocating_init(id:kind:catalogItem:context:)()
{
  OUTLINED_FUNCTION_1_120();
  v0 = OUTLINED_FUNCTION_0_50();
  return _MusicLibraryMapping.Item.init(id:kind:catalogItem:context:)(v0, v1, v2, v3, v4);
}

char *_MusicLibraryMapping.Item.init(id:kind:catalogItem:context:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a4;
  v63 = a5;
  v10 = *v5;
  v11 = *(*v5 + 80);
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v59 - v18;
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  v27 = MEMORY[0x28223BE20](v24, v25);
  v29 = &v59 - v28;
  v30 = *a3;
  v61 = a1;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  if (v30 != 10)
  {
    v44 = &v6[v10[15]];
    v45 = v26;
    v46 = *(swift_getTupleTypeMetadata2() + 48);
    *v44 = v30;
    (*(v13 + 32))(&v44[v46], v62, v45);
    v48 = v10[11];
    v47 = v10[12];
    type metadata accessor for _MusicLibraryMapping.Item.Source();
LABEL_9:
    swift_storeEnumTagMultiPayload();
    v51 = *(*v6 + 112);
    OUTLINED_FUNCTION_1_96();
    (*(v52 + 32))(&v6[v53], v63, v48);
    return v6;
  }

  v60 = v10;
  v31 = v62;
  v32 = v26;
  (*(v13 + 16))(v19, v62, v26, v27);
  if (__swift_getEnumTagSinglePayload(v19, 1, v11) != 1)
  {
    (*(v13 + 8))(v31, v32);
    v49 = *(v21 + 32);
    v49(v29, v19, v11);
    v49(&v6[*(*v6 + 120)], v29, v11);
    v48 = v60[11];
    v50 = v60[12];
    type metadata accessor for _MusicLibraryMapping.Item.Source();
    goto LABEL_9;
  }

  v33 = *(v13 + 8);
  sub_217751DE8();
  v34 = v32;
  v59 = v33;
  v33(v19, v32);
  if (qword_280BE8358 != -1)
  {
    swift_once();
  }

  v35 = sub_217751AF8();
  __swift_project_value_buffer(v35, qword_280C02570);
  sub_217751DE8();
  v36 = sub_217751AD8();
  v37 = sub_217752808();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v64 = v39;
    *v38 = 136446210;
    v40 = v31;
    v41 = sub_21729C0E8(v61, a2, &v64);

    *(v38 + 4) = v41;
    _os_log_impl(&dword_2171EE000, v36, v37, "Failed to create a valid library mapping item for item with id %{public}s. Please make sure to provide the item kind information when library mapping.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x21CEA4360](v39, -1, -1);
    MEMORY[0x21CEA4360](v38, -1, -1);

    OUTLINED_FUNCTION_3_103();
    (*(v42 + 8))(v63);
    v43 = v40;
  }

  else
  {

    OUTLINED_FUNCTION_3_103();
    (*(v54 + 8))(v63);
    v43 = v31;
  }

  v59(v43, v34);
  v55 = *(v6 + 3);

  v56 = *(*v6 + 48);
  v57 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

char *_MusicLibraryMapping.Item.init(id:kind:existingCatalogItem:context:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = *v5;
  v10 = *a3;
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  v11 = *(v8 + 80);
  v12 = &v5[*(v8 + 120)];
  if (v10 == 10)
  {
    OUTLINED_FUNCTION_41_0(*(v8 + 80));
    (*(v13 + 32))(v12, a4, v11);
  }

  else
  {
    v14 = *(v8 + 80);
    sub_2177528F8();
    v15 = *(swift_getTupleTypeMetadata2() + 48);
    *v12 = v10;
    OUTLINED_FUNCTION_41_0(v11);
    (*(v16 + 32))(&v12[v15], a4, v11);
    __swift_storeEnumTagSinglePayload(&v12[v15], 0, 1, v11);
  }

  v18 = *(v9 + 88);
  v17 = *(v9 + 96);
  type metadata accessor for _MusicLibraryMapping.Item.Source();
  swift_storeEnumTagMultiPayload();
  v19 = *(*v5 + 112);
  OUTLINED_FUNCTION_1_96();
  (*(v20 + 32))(&v5[v21], a5, v18);
  return v5;
}

uint64_t _MusicLibraryMapping.Item.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return v1;
}

uint64_t _MusicLibraryMapping.Item.context.getter()
{
  v1 = *(*v0 + 112);
  OUTLINED_FUNCTION_41_0(*(*v0 + 88));
  return (*(v2 + 16))();
}

uint64_t _MusicLibraryMapping.Item.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = type metadata accessor for _MusicLibraryMapping.Item.Source();
  OUTLINED_FUNCTION_41_0(v7);
  v10 = *(v9 + 16);

  return v10(a1, v1 + v3, v8);
}

uint64_t _MusicLibraryMapping.Item.Source.catalogItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 64);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(a1 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_41_0(v13);
    (*(v14 + 32))(a2, v10, v13);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
  }

  else
  {
    v16 = sub_2177528F8();
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    OUTLINED_FUNCTION_1_96();
    return (*(v18 + 32))(a2, &v10[v19], v16);
  }
}

char *_MusicLibraryMapping.Item.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(*v0 + 112);
  v4 = v1[11];
  OUTLINED_FUNCTION_1_96();
  (*(v5 + 8))(&v0[v6], v4);
  v7 = *(*v0 + 120);
  v8 = v1[10];
  v9 = v1[12];
  v10 = type metadata accessor for _MusicLibraryMapping.Item.Source();
  OUTLINED_FUNCTION_41_0(v10);
  (*(v11 + 8))(&v0[v7]);
  return v0;
}

uint64_t _MusicLibraryMapping.Item.__deallocating_deinit()
{
  _MusicLibraryMapping.Item.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_217653A20(void *a1)
{
  v2 = a1[11];
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v12 = *(v3 - 8) + 64;
    v6 = a1[10];
    v7 = a1[12];
    v8 = type metadata accessor for _MusicLibraryMapping.Item.Source();
    v4 = v8;
    if (v9 <= 0x3F)
    {
      v13 = *(v8 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_217653B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_2177528F8();
  result = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_217653C08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 <= v5 + ((*(v3 + 80) + 1) & ~*(v3 + 80)))
  {
    v6 = v5 + ((*(v3 + 80) + 1) & ~*(v3 + 80));
  }

  else
  {
    v6 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v11 < 2)
    {
LABEL_26:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_26;
  }

LABEL_18:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 255;
}

void sub_217653D70(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = v7 + ((*(v5 + 80) + 1) & ~*(v5 + 80));
  if (v6 > v8)
  {
    v8 = *(v5 + 64);
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v8 != -1)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

id sub_217653F78(uint64_t a1, char a2)
{
  if (a1)
  {
    sub_217696E10(2u, a1);
    sub_217696E10(3u, a1);
    sub_217696E10(4u, a1);
    if (sub_217696E10(0, a1))
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_217696E10(1u, a1);
    v6 = v4 | 0x20;
    if (!v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | 0x100;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
  }

  if (a2 == 2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return [objc_opt_self() rawValueForPlaylistTraits_];
}

uint64_t static CloudResourceConvertible.catalogTypes.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 192))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t CloudResourceConvertible<>.init(usingCloudResourceFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v33 = a4;
  v34 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = type metadata accessor for CloudResource();
  v11 = OUTLINED_FUNCTION_0_0(v32);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v31 - v21;
  v23 = dynamic_cast_existential_1_conditional(a2);
  if (v23)
  {
    sub_21770F91C(v23, v24);
  }

  sub_2171FF30C(a1, v35);
  v25 = v35[6];
  CloudResource<>.init(from:)(v35, AssociatedTypeWitness, AssociatedConformanceWitness, v33, v34, v22);
  if (!v25)
  {
    (*(v13 + 16))(v18, v22, v32);
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    Decoder.dataRequestConfiguration.getter(v26, v27);
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v29 = Decoder.sharedRelatedItemStore.getter();
    (*(a3 + 24))(v18, v35, v29, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, a2, a3);
    (*(v13 + 8))(v22, v32);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudResourceConvertible<>.encodeCloudResource(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for CloudResource();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  v16 = &v20 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  Encoder.dataRequestConfiguration.getter(v17, v18);
  (*(a3 + 32))(v23, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, a2, a3);
  sub_21733AB9C(v23);
  CloudResource<>.encode(to:)(a1, v8, v21, v22);
  return (*(v11 + 8))(v16, v8);
}

void RecentlyPlayedMusicItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v7 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v8 = v7;
    v9 = sub_217751D98();
  }

  else
  {
    v9 = sub_217751DC8();
  }

  v10 = sub_21729FFD4(v9);
  v11 = sub_217638214(v10);
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11;
  }

  v14 = static LegacyModel.innerModelObject(for:)(a2);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  if (v13 == 13)
  {

    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5_84(&xmmword_280BE6250);
    v129 = *v49;
    v50 = objc_opt_self();
    sub_217751DE8();
    v51 = [v50 identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_2_105();
    v52 = sub_217751DE8();
    OUTLINED_FUNCTION_4_100(v52, v53, v54, v55, v56, v57, v58, v59, v112, v119, v129, *(&v129 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
    sub_217269F50(__dst);

    v60 = sub_21736C814(a3, &v141);
    v68 = OUTLINED_FUNCTION_3_97(v60, v61, v62, v63, v64, v65, v66, v67, v115, v122, v130, v137, v141, v142, v143, v144, v145, v146);
    Station.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v68, v69, v70, v71);
    swift_unknownObjectRelease();
    v72 = sub_217638634(a3);
    OUTLINED_FUNCTION_1_112(v72, v73, v74, v75, v76, v77, v78, v79, v116, v123, v131, v138, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
    v48 = 2;
    goto LABEL_17;
  }

  if (v13 == 4)
  {

    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5_84(&xmmword_280BE6228);
    v126 = *v16;
    v17 = objc_opt_self();
    sub_217751DE8();
    v18 = [v17 identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_2_105();
    v19 = sub_217751DE8();
    OUTLINED_FUNCTION_4_100(v19, v20, v21, v22, v23, v24, v25, v26, v112, v119, v126, *(&v126 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
    sub_217269F50(__dst);

    v27 = sub_21736C814(a3, &v141);
    v35 = OUTLINED_FUNCTION_3_97(v27, v28, v29, v30, v31, v32, v33, v34, v113, v120, v127, v135, v141, v142, v143, v144, v145, v146);
    Playlist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v35, v36, v37, v38, v39);
    swift_unknownObjectRelease();
    v40 = sub_217638634(a3);
    OUTLINED_FUNCTION_1_112(v40, v41, v42, v43, v44, v45, v46, v47, v114, v121, v128, v136, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
    v48 = 1;
LABEL_17:
    *(a4 + 56) = v48;
    return;
  }

  if (v13 != 2)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B3330);
    *&v191 = v13;
    type metadata accessor for MusicKit_SoftLinking_MPModelGenericObjectType(0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
LABEL_24:
    sub_217752D08();
    __break(1u);
    return;
  }

  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_84(&xmmword_280BE62F8);
  v132 = *v80;
  v81 = objc_opt_self();
  sub_217751DE8();
  v82 = [v81 identifierSetFromLegacyModelObject_];
  OUTLINED_FUNCTION_2_105();
  v83 = sub_217751DE8();
  OUTLINED_FUNCTION_4_100(v83, v84, v85, v86, v87, v88, v89, v90, v112, v119, v132, *(&v132 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
  sub_217269F50(__dst);

  v91 = sub_21736C814(a3, &v141);
  v99 = OUTLINED_FUNCTION_3_97(v91, v92, v93, v94, v95, v96, v97, v98, v117, v124, v133, v139, v141, v142, v143, v144, v145, v146);
  Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v99, v100, v101, v102, v103);
  swift_unknownObjectRelease();
  v104 = sub_217638634(a3);
  OUTLINED_FUNCTION_1_112(v104, v105, v106, v107, v108, v109, v110, v111, v118, v125, v134, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
  *(a4 + 56) = 0;
}

uint64_t RecentlyPlayedMusicItem.convertToRawDictionary(for:)(char *a1)
{
  v2 = *a1;
  v3 = sub_21733C220(v1, &v21);
  if (v26)
  {
    if (v26 == 1)
    {
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      v11 = sub_21753D3A4();
      sub_21726B8C4(&v13);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      v11 = sub_21753D618(v2);
      sub_217283DC8(&v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
    v11 = sub_21753D86C();
    sub_21725CE44(&v13);
  }

  return v11;
}

uint64_t RecentlyPlayedMusicItem.underlyingLegacyModelObjectType.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_21733C220(v1, v4);
  *a1 = 0x1A0F00u >> (8 * v4[56]);
  return sub_217635D18(v4);
}

BOOL sub_217654B28()
{
  v0 = sub_217752DC8();

  return v0 != 0;
}

BOOL sub_217654B70@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_217654B28();
  *a2 = result;
  return result;
}

uint64_t RecentlyPlayedMusicItem.propertyProvider.getter()
{
  v1 = sub_21733C220(v0, &v27);
  if (v32)
  {
    if (v32 == 1)
    {
      *&v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31).n128_u64[0];
      OUTLINED_FUNCTION_6_84(v10, v11, v9);
      return sub_21726B8C4(&v19);
    }

    else
    {
      *&v16 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31).n128_u64[0];
      OUTLINED_FUNCTION_6_84(v17, v18, v16);
      return sub_217283DC8(&v19);
    }
  }

  else
  {
    *&v13 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31).n128_u64[0];
    OUTLINED_FUNCTION_6_84(v14, v15, v13);
    return sub_21725CE44(&v19);
  }
}

_BYTE *_s45LegacyModelRecentlyPlayedMusicItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_217654CDC(uint64_t a1)
{
  *(a1 + 8) = sub_2172A508C();
  result = sub_217654D0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217654D0C()
{
  result = qword_27CB2B378;
  if (!qword_27CB2B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B378);
  }

  return result;
}

unint64_t sub_217654D64()
{
  result = qword_27CB2B380;
  if (!qword_27CB2B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B380);
  }

  return result;
}

uint64_t sub_217654DB8(uint64_t a1, const void *a2)
{
  bzero((v2 + 16), 0x2EAuLL);
  *(v2 + 1544) = 0;
  *(v2 + 1528) = 0u;
  *(v2 + 1552) = 0xF000000000000000;
  _s7MonitorCMa();
  *(v2 + 1560) = 0u;
  *(v2 + 1576) = 0u;
  *(v2 + 1592) = 0u;
  swift_allocObject();
  *(v2 + 1608) = sub_217548944();
  *(v2 + 768) = a1;
  memcpy((v2 + 776), a2, 0x2EAuLL);
  return v2;
}

BOOL sub_217654E64(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_217752D38();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

BOOL sub_217654EA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8);
  sub_217283840(&qword_27CB2B400, &qword_27CB2B3E8, &qword_21778A5D8);
  sub_217752678();
  sub_2177526A8();
  return v2 == v1;
}

uint64_t sub_217654F4C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 752)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void sub_217654FCC(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v2[1];
  sub_2172CEDE8(v4, v8);
  if (!v8[1])
  {
LABEL_11:
    __break(1u);
    return;
  }

  memcpy(a1, v8, 0x2EAuLL);
  if (!*(v4 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = sub_217658118();
  if (v6)
  {
    v7 = v6;
    v6();
    sub_2172202A4(v7);
  }

  sub_2175B118C(0, 1);
}

uint64_t sub_217655094(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = *(a1 + 16);
  v4 = sub_2176F762C();
  v5 = sub_2176F7F7C(&v7, v4 + 32, v2, a1);
  sub_217751DE8();

  if (v5 == v2)
  {

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21765513C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = *(a1 + 16);
  v4 = sub_2176F7698();
  sub_217751DE8();

  v5 = sub_2176F8038(&v7, v4 + 32, v2, a1);

  if (v5 == v2)
  {

    return v4;
  }

  __break(1u);
  return result;
}

void sub_217655200(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = sub_21765925C(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v6 = *(*v2 + 16);
    if (v6 < v4)
    {
      __break(1u);
    }

    else
    {
      v7 = v2[1];
      v8 = sub_217658118();
      if (v8)
      {
        v9 = v8;
        v8();
        sub_2172202A4(v9);
      }

      sub_2175B118C(v5, v6);
    }
  }
}

void ApplicationMusicPlayer.Queue.init<A, B>(for:startingAt:)()
{
  OUTLINED_FUNCTION_12();
  v32[2] = v1;
  v32[3] = v2;
  v32[1] = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v32 - v17;
  OUTLINED_FUNCTION_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282();
  *(v0 + 1624) = sub_2176582F8();
  v28 = OUTLINED_FUNCTION_8_74(MEMORY[0x277D84F90]);
  (*(v20 + 16))(v27, v9, v5, v28);
  (*(v12 + 16))(v18, v7, v10);
  MusicPlayer.Queue.init<A, B>(for:startingAt:)();

  sub_217656D5C();

  (*(v12 + 8))(v7, v10);
  v29 = *(v20 + 8);
  v30 = OUTLINED_FUNCTION_212_0();
  v31(v30);
  OUTLINED_FUNCTION_13();
}

void ApplicationMusicPlayer.Queue.init<A>(_:startingAt:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282();
  *(v0 + 1624) = sub_2176582F8();
  v16 = OUTLINED_FUNCTION_8_74(MEMORY[0x277D84F90]);
  (*(v8 + 16))(v15, v6, v2, v16);
  sub_2171F5110(v4, &v17, &qword_27CB24410, &unk_2177586F0);
  MusicPlayer.Queue.init<A>(_:startingAt:)();

  sub_217656D5C();

  sub_2171F0738(v4, &qword_27CB24410, &unk_2177586F0);
  (*(v8 + 8))(v6, v2);
  OUTLINED_FUNCTION_13();
}

void ApplicationMusicPlayer.Queue.init(arrayLiteral:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282();
  *(v0 + 1624) = sub_2176582F8();
  v3 = MEMORY[0x277D84F90];
  *(v0 + 1616) = MEMORY[0x277D84F90];
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 0u;
  v4 = *(v2 + 16);
  if (v4)
  {
    v17 = v3;
    sub_217276338(0, v4, 0);
    v5 = v17;
    v6 = v2 + 32;
    do
    {
      sub_2171FF30C(v6, v15);
      sub_2171FF30C(v15, v14);
      sub_2171FF30C(v14, __dst);
      sub_2173E04B4(__dst, 0, 1, 0, 1, __src);
      __swift_destroy_boxed_opaque_existential_1(v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v7 = __src[0];
      v8 = __src[1];
      memcpy(__dst, __src, 0x2D9uLL);
      v16 = 0;
      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      sub_217751DE8();
      if (v10 >= v9 >> 1)
      {
        sub_217276338(v9 > 1, v10 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 752 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      memcpy((v11 + 48), __dst, 0x2D9uLL);
      *(v11 + 777) = v16;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  bzero(__dst, 0x2EAuLL);
  sub_217654DB8(v5, __dst);

  sub_217656D5C();

  OUTLINED_FUNCTION_13();
}

uint64_t ApplicationMusicPlayer.Queue.__allocating_init(album:startingAt:)()
{
  OUTLINED_FUNCTION_2_112();
  OUTLINED_FUNCTION_132();
  return ApplicationMusicPlayer.Queue.init(album:startingAt:)();
}

uint64_t ApplicationMusicPlayer.Queue.init(album:startingAt:)()
{
  OUTLINED_FUNCTION_13_60();
  OUTLINED_FUNCTION_282();
  v2 = sub_2176582F8();
  OUTLINED_FUNCTION_5_89(v2, MEMORY[0x277D84F90]);
  sub_21725CF0C(v0, v6);
  sub_217275710(v1, v5);
  v3 = MusicPlayer.Queue.init(album:startingAt:)();

  sub_217656D5C();

  sub_21727576C(v1);
  sub_21725CE44(v0);
  return v3;
}

uint64_t ApplicationMusicPlayer.Queue.__allocating_init(playlist:startingAt:)()
{
  OUTLINED_FUNCTION_2_112();
  OUTLINED_FUNCTION_132();
  return ApplicationMusicPlayer.Queue.init(playlist:startingAt:)();
}

uint64_t ApplicationMusicPlayer.Queue.init(playlist:startingAt:)()
{
  OUTLINED_FUNCTION_13_60();
  OUTLINED_FUNCTION_282();
  v2 = sub_2176582F8();
  OUTLINED_FUNCTION_5_89(v2, MEMORY[0x277D84F90]);
  sub_2172757C0(v0, v6);
  sub_217275858(v1, &v5);
  v3 = MusicPlayer.Queue.init(playlist:startingAt:)();

  sub_217656D5C();

  sub_2172758B4(v1);
  sub_21726B8C4(v0);
  return v3;
}

double sub_217655A40@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_217655AC4(&v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_217655A7C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v5[0] = *a1;
  v5[1] = v2;
  sub_217751DE8();

  return sub_217655B04(v5);
}

uint64_t sub_217655AC4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 1624);
  *a1 = *(v1 + 1616);
  a1[1] = v2;
  sub_217751DE8();
}

uint64_t sub_217655B04(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_2176562CC(v3, 0);
}

uint64_t sub_217655B60(void *a1)
{
  a1[2] = v1;
  v3 = *(v1 + 1616);
  v4 = *(v1 + 1624);
  *a1 = v3;
  a1[1] = v4;
  sub_217751DE8();

  return OUTLINED_FUNCTION_132();
}

uint64_t sub_217655BC0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v6 = *a1;
    v7 = v2;
    sub_217751DE8();

    sub_217655B04(&v6);
  }

  else
  {
    v6 = *a1;
    v7 = v2;
    return sub_217655B04(&v6);
  }
}

void *ApplicationMusicPlayer.Queue.Entries.init()@<X0>(void *a1@<X8>)
{
  _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282();
  result = sub_2176582F8();
  *a1 = MEMORY[0x277D84F90];
  a1[1] = result;
  return result;
}

void sub_217655CB4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  if (*v4)
  {
    v5 = *(v0 + 1624);
    *&v23[0] = *(v0 + 1616);
    *(&v23[0] + 1) = v5;
    sub_217751DE8();
    sub_217751DE8();

    sub_217655F14(v3);
    *v22 = v23[0];
LABEL_19:
    sub_217655B04(v22);
    OUTLINED_FUNCTION_13();
    return;
  }

  swift_beginAccess();
  sub_2171F5110(v0 + 16, v22, &qword_27CB24410, &unk_2177586F0);
  if (!v22[1])
  {
    goto LABEL_8;
  }

  v6 = memcpy(v23, v22, 0x2EAuLL);
  v7 = *(v0 + 1616);
  v8 = *(v0 + 1624);
  MEMORY[0x28223BE20](v6, v9);
  v21[2] = v23;
  sub_217751DE8();

  v10 = sub_217654F4C(sub_21755F714, v21, v7);
  v12 = v11;

  sub_217276358(v23);
  if (v12)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v13 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_8:
    sub_2171F0738(v22, &qword_27CB24410, &unk_2177586F0);
    goto LABEL_9;
  }

LABEL_10:
  v14 = *(v1 + 1616);
  *(&v23[0] + 1) = *(v1 + 1624);
  sub_217751DE8();

  v15 = sub_217658118();
  if (v15)
  {
    v16 = v15;
    v15();
    sub_2172202A4(v16);
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v17 = *(v14 + 16);
  if (v17 < v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = *(v3 + 16);
  if (!__OFADD__(v17, v18))
  {
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23[0] = v14;
    if (!isUniquelyReferenced_nonNull_native || (v17 + v18) > *(v14 + 24) >> 1)
    {
      sub_2172AFF5C();
      v14 = v20;
      *&v23[0] = v20;
    }

    sub_217503808();
    v22[0] = v14;
    v22[1] = *(&v23[0] + 1);
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_217655F14(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v17 = a1 + 32;
    v4 = *v1;
    v5 = v1[1];
    while (2)
    {
      v6 = *(v4 + 16);
      sub_217275AA0(v17 + 752 * v3, v19);
      v7 = sub_217658118();
      if (v7)
      {
        v8 = v7;
        v7();
        sub_2172202A4(v8);
      }

      result = sub_2171F5110(v19, v18, &qword_27CB28B88, &qword_217771908);
      v10 = *(v4 + 16);
      if (v10 < v6)
      {
LABEL_18:
        __break(1u);
      }

      else
      {
        if (!swift_isUniquelyReferenced_nonNull_native() || v10 >= *(v4 + 24) >> 1)
        {
          sub_2172AFF5C();
          v4 = v11;
        }

        v12 = v4 + 752 * v6;
        v13 = v12 + 32;
        swift_arrayDestroy();
        result = memmove((v12 + 784), (v12 + 32), 752 * (*(v4 + 16) - v6));
        v14 = 0;
        ++*(v4 + 16);
        v15 = v12 - 720;
        do
        {
          if (v14)
          {
            __break(1u);
            goto LABEL_18;
          }

          v15 += 752;
          result = sub_217275AA0(v18, v15);
          v14 = 1;
        }

        while (v15 < v13);
        ++v3;
        sub_2171F0738(v18, &qword_27CB28B88, &qword_217771908);
        sub_2171F0738(v19, &qword_27CB28B88, &qword_217771908);
        if (v3 != v2)
        {
          continue;
        }

        *v16 = v4;
      }

      break;
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_2176560EC(void *__src)
{
  result = memcpy(__dst, __src, 0x2F2uLL);
  v20 = 0;
  v3 = __dst[0];
  if (!__dst[0])
  {
    return sub_2171F0738(__dst, &qword_27CB2B408, &qword_21778A5E8);
  }

  if (__dst[0] >= 1)
  {
    v4 = 0;
    v6 = *v1;
    v5 = v1[1];
    v16 = v1;
    while (2)
    {
      if (v4 == v3)
      {
LABEL_18:
        __break(1u);
      }

      else
      {
        v7 = *(v6 + 16);
        sub_217275AA0(&__dst[1], v18);
        v8 = sub_217658118();
        if (v8)
        {
          v9 = v8;
          v8();
          sub_2172202A4(v9);
        }

        result = sub_2171F5110(v18, v17, &qword_27CB28B88, &qword_217771908);
        v10 = *(v6 + 16);
        if (v10 >= v7)
        {
          if (!swift_isUniquelyReferenced_nonNull_native() || v10 >= *(v6 + 24) >> 1)
          {
            sub_2172AFF5C();
            v6 = v11;
          }

          v12 = v6 + 752 * v7;
          v13 = v12 + 32;
          swift_arrayDestroy();
          result = memmove((v12 + 784), (v12 + 32), 752 * (*(v6 + 16) - v7));
          v14 = 0;
          ++*(v6 + 16);
          v15 = v12 - 720;
          do
          {
            if (v14)
            {
              __break(1u);
              goto LABEL_18;
            }

            v15 += 752;
            result = sub_217275AA0(v17, v15);
            v14 = 1;
          }

          while (v15 < v13);
          ++v4;
          sub_2171F0738(v17, &qword_27CB28B88, &qword_217771908);
          result = sub_2171F0738(v18, &qword_27CB28B88, &qword_217771908);
          if (v4 != v3)
          {
            continue;
          }

          *v16 = v6;
          v20 = v3;
          return sub_2171F0738(__dst, &qword_27CB2B408, &qword_21778A5E8);
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2176562CC(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  if (*(v2 + 1632) == 1 && (a2 & 1) != 0)
  {
    v6 = *(v2 + 1640);
    v7 = v3[206];
    v3[205] = v5;
    v3[206] = v4;
    sub_217751DE8();

    return sub_217659654(v6);
  }

  else
  {
    sub_217656E60(a2 & 1);
    v9 = *(v2 + 1616);
    v10 = *(v2 + 1624);
    sub_217751DE8();

    sub_217658218(0, 0);

    v11 = v3[202];
    v12 = v3[203];
    v3[202] = v5;
    v3[203] = v4;
    sub_217751DE8();

    return sub_217656D5C(v13);
  }
}

void sub_2176563DC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - v12;
  *(v1 + 1632) = 0;
  swift_beginAccess();
  v38 = *(v1 + 1528);
  v14 = *(v1 + 1536);
  swift_beginAccess();
  v15 = *(v1 + 1544);
  v16 = *(v1 + 1552);
  v17 = *(v1 + 1616);
  v18 = *(v1 + 1624);
  sub_217751DE8();
  v40 = v16;
  v41 = v15;
  sub_217275908(v15, v16);
  sub_217751DE8();

  v19 = sub_2172C90C8(v17);

  v43 = v19;
  v49 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24438, &qword_217758740);
  sub_217283840(&qword_27CB2B3F0, &qword_27CB24438, &qword_217758740);
  sub_2175AC040();
  sub_217751EC8();
  if (sub_217654EA8() || (v37 = v14, !*(v1 + 1600)))
  {

    v30 = v40;
  }

  else
  {
    v36 = *(v1 + 1600);
    v20 = v42;
    (*(v5 + 16))(v39, v13, v42);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v25 = v20;
    v26 = v41;
    (*(v5 + 32))(v24 + v21, v39, v25);
    *(v24 + v22) = v19;
    v27 = (v24 + v23);
    v28 = v37;
    *v27 = v38;
    v27[1] = v28;
    v29 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
    v30 = v40;
    *v29 = v26;
    v29[1] = v30;
    v47 = sub_217659AD4;
    v48 = v24;
    v43 = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_217656CF4;
    v46 = &block_descriptor_50_0;
    v31 = _Block_copy(&v43);
    sub_217275908(v26, v30);
    v32 = v36;

    [v32 performQueueTransaction_];
    _Block_release(v31);
  }

  v33 = *(v1 + 1640);
  if (v33)
  {
    v34 = *(v1 + 1648);
    v43 = *(v1 + 1640);
    v44 = v34;
    sub_217751DE8();

    sub_2176562CC(&v43, 1);
    sub_217275680(v41, v30);
    (*(v5 + 8))(v13, v42);
    sub_217659654(v33);
  }

  else
  {
    (*(v5 + 8))(v13, v42);
    sub_217275680(v41, v30);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176567DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8);
  v7 = sub_217752D98();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = v7 + 776 * v9 - 744;
    v11 = &qword_27CB2B3F8;
    v12 = &qword_21778A5E0;
    v49 = v7;
    while (v9 <= *(v8 + 16))
    {
      sub_2171F5110(v10, __src, v11, v12);
      if (v53)
      {
        memcpy(__dst, &__src[1], 0x2EAuLL);
        if (qword_27CB23C60 != -1)
        {
          swift_once();
        }

        v13 = sub_217751AF8();
        __swift_project_value_buffer(v13, qword_27CB8A2A0);
        sub_217275AA0(__dst, __src);
        v14 = sub_217751AD8();
        v15 = sub_217752828();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = v12;
          v17 = v11;
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v51 = v19;
          *v18 = 136446210;
          v20 = MusicPlayer.Queue.Entry.description.getter();
          v22 = v21;
          sub_217276358(__src);
          v23 = sub_21729C0E8(v20, v22, &v51);

          *(v18 + 4) = v23;
          _os_log_impl(&dword_2171EE000, v14, v15, "Removing %{public}s.", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x21CEA4360](v19, -1, -1);
          v24 = v18;
          v11 = v17;
          v12 = v16;
          v8 = v49;
          MEMORY[0x21CEA4360](v24, -1, -1);
        }

        else
        {

          sub_217276358(__src);
        }

        v25 = sub_217751F18();
        [a1 removeItemWithIdentifier_];

        sub_217276358(__dst);
      }

      else
      {
        sub_2171F0738(__src, v11, v12);
      }

      v10 -= 776;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

LABEL_15:

  v26 = sub_217752D88();
  v27 = *(v26 + 16);
  if (!v27)
  {
  }

  v28 = 0;
  v29 = v26 + 32;
  do
  {
    sub_2171F5110(v29, __src, &qword_27CB2B3F8, &qword_21778A5E0);
    if (v53 == 1)
    {
      sub_2171F0738(__src, &qword_27CB2B3F8, &qword_21778A5E0);
      goto LABEL_30;
    }

    v30 = __src[0];
    memcpy(__dst, &__src[1], 0x2EAuLL);
    if (!v28)
    {
      _s5QueueC25ContiguousInsertionRecordCMa();
      v28 = swift_allocObject();
      v37 = MEMORY[0x277D84F90];
      v28[6] = v30;
      v28[7] = v37;
      v28[2] = a4;
      v28[3] = a5;
      v28[4] = a6;
      v28[5] = a7;
      sub_217751DE8();
      sub_217275908(a6, a7);
LABEL_24:

      goto LABEL_25;
    }

    v31 = v28[6];
    swift_beginAccess();
    v32 = *(v28[7] + 16);
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v30 == v34)
    {
      goto LABEL_24;
    }

    sub_21765713C(a1, a3);
    _s5QueueC25ContiguousInsertionRecordCMa();
    v35 = swift_allocObject();

    v36 = MEMORY[0x277D84F90];
    v35[6] = v30;
    v35[7] = v36;
    v35[2] = a4;
    v35[3] = a5;
    v35[4] = a6;
    v35[5] = a7;
    sub_217751DE8();
    sub_217275908(a6, a7);

    v28 = v35;
LABEL_25:
    sub_217275AA0(__dst, __src);
    swift_beginAccess();
    v38 = v28[7];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v38 + 16);
      sub_2172AFF5C();
      v38 = v41;
    }

    v39 = *(v38 + 16);
    if (v39 >= *(v38 + 24) >> 1)
    {
      sub_2172AFF5C();
      v38 = v42;
    }

    *(v38 + 16) = v39 + 1;
    memcpy((v38 + 752 * v39 + 32), __src, 0x2EAuLL);
    v28[7] = v38;
    swift_endAccess();

    sub_217276358(__dst);

LABEL_30:
    v29 += 776;
    --v27;
  }

  while (v27);

  if (v28)
  {
    sub_21765713C(a1, a3);
  }

  return result;
}

void sub_217656CF4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_217656D5C()
{
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1624);
  v3 = swift_allocObject();
  swift_weakInit();
  sub_217751DE8();

  swift_retain_n();
  sub_217658218(sub_217659BAC, v3);
}

uint64_t sub_217656E04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_217656E60();
  }

  return result;
}

void sub_217656E60()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  sub_217751C58();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_217751C88();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  sub_21726E284();
  if ((v3 & 1) == 0 && (*(v0 + 1632) & 1) == 0)
  {
    *(v0 + 1632) = 1;
    v23 = *(v0 + 1616);
    v24 = *(v1 + 1624);
    v25 = *(v1 + 1616);
    sub_217751DE8();

    v33 = v5;
    v26 = sub_2172C90C8(v23);

    sub_2172B38C0();
    v32 = sub_217752838();
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = v26;
    v34[4] = sub_217659AA4;
    v34[5] = v27;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 1107296256;
    v34[2] = sub_2172B5448;
    v34[3] = &block_descriptor_15;
    v28 = _Block_copy(v34);

    sub_217751C78();
    v34[0] = MEMORY[0x277D84F90];
    sub_2172B61B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
    sub_217283840(&qword_280BE84B0, &qword_27CB24DA8, &qword_217768C60);
    sub_217752A08();
    MEMORY[0x21CEA2BA0](0, v22, v12, v28);
    _Block_release(v28);

    v29 = *(v33 + 8);
    v30 = OUTLINED_FUNCTION_212_0();
    v31(v30);
    (*(v15 + 8))(v22, v13);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_21765713C(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[7];
  bzero(v58, 0x2EAuLL);
  swift_bridgeObjectRetain_n();
  sub_21763BD80(v6, v58, __src);
  v7 = v2[3];
  *&v8 = v2[2];
  v55 = v8;
  sub_217751DE8();

  v9 = v2[4];
  v10 = v3[5];
  v11 = *&__src[176];
  v12 = *&__src[184];
  sub_217275908(v3[4], v10);
  sub_217275680(v11, v12);
  *&v13 = v55;
  *(&v13 + 1) = v7;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  *&__src[160] = v13;
  *&__src[176] = v14;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v58, __src, 0x138uLL);
  sub_217283790(__dst, v57);
  v15 = sub_21763C064();
  memcpy(v61, v58, 0x138uLL);
  sub_2172837EC(v61);
  v16 = v3[6];
  if (v16 < 1)
  {
    if (qword_27CB23C60 == -1)
    {
LABEL_9:
      v30 = sub_217751AF8();
      __swift_project_value_buffer(v30, qword_27CB8A2A0);
      sub_217751DE8();
      v31 = sub_217751AD8();
      v32 = sub_217752828();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v58[0] = v34;
        *v33 = 136446210;
        v35 = MEMORY[0x21CEA2610](v6, &type metadata for MusicPlayer.Queue.Entry);
        v37 = v36;

        v38 = sub_21729C0E8(v35, v37, v58);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_2171EE000, v31, v32, "Inserting entries at the beginning of the queue: %{public}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x21CEA4360](v34, -1, -1);
        MEMORY[0x21CEA4360](v33, -1, -1);
      }

      else
      {
      }

LABEL_19:
      v53 = 0;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  if (v16 > *(a2 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_217275AA0(a2 + 752 * v16 - 720, v58);
  if (MusicPlayer.Queue.Entry.isTransient.getter())
  {
    if (qword_27CB23C60 != -1)
    {
      swift_once();
    }

    v17 = sub_217751AF8();
    __swift_project_value_buffer(v17, qword_27CB8A2A0);
    sub_217275AA0(v58, v57);
    sub_217751DE8();
    v18 = sub_217751AD8();
    v19 = sub_217752808();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v56 = v21;
      *v20 = 136446466;
      v22 = MusicPlayer.Queue.Entry.description.getter();
      v24 = v23;
      sub_217276358(v57);
      v25 = sub_21729C0E8(v22, v24, &v56);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      v26 = MEMORY[0x21CEA2610](v6, &type metadata for MusicPlayer.Queue.Entry);
      v28 = v27;

      v29 = sub_21729C0E8(v26, v28, &v56);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_2171EE000, v18, v19, "Inserting entries at the beginning of the queue because previous entry (%{public}s) is unexpectedly transient: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA4360](v21, -1, -1);
      MEMORY[0x21CEA4360](v20, -1, -1);
    }

    else
    {

      sub_217276358(v57);
    }

    sub_217276358(v58);
    goto LABEL_19;
  }

  v39 = qword_27CB23C60;
  sub_217751DE8();
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = sub_217751AF8();
  __swift_project_value_buffer(v40, qword_27CB8A2A0);
  sub_217275AA0(v58, v57);
  sub_217751DE8();
  v41 = sub_217751AD8();
  v42 = sub_217752828();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56 = v44;
    *v43 = 136446466;
    v45 = MusicPlayer.Queue.Entry.description.getter();
    *&v55 = v15;
    v47 = v46;
    sub_217276358(v57);
    v48 = sub_21729C0E8(v45, v47, &v56);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    v49 = MEMORY[0x21CEA2610](v6, &type metadata for MusicPlayer.Queue.Entry);
    v51 = v50;

    v52 = sub_21729C0E8(v49, v51, &v56);

    *(v43 + 14) = v52;
    _os_log_impl(&dword_2171EE000, v41, v42, "Inserting entries after %{public}s: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA4360](v44, -1, -1);
    MEMORY[0x21CEA4360](v43, -1, -1);
  }

  else
  {

    sub_217276358(v57);
  }

  sub_217276358(v58);
  v53 = sub_217751F18();

LABEL_22:
  [a1 insertQueueDescriptor:v15 afterItemWithIdentifier:{v53, v55, v56}];

  memcpy(v58, __src, 0x138uLL);
  return sub_2172837EC(v58);
}

void *sub_2176577E4()
{
  v1 = v0[3];

  sub_217275680(v0[4], v0[5]);
  v2 = v0[7];

  return v0;
}

uint64_t sub_217657814()
{
  v0 = sub_2176577E4();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t ApplicationMusicPlayer.Queue.Entries.makeIterator()()
{
  v2 = *v0;
  v1 = v0[1];

  return v2;
}

Swift::Int __swiftcall ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (offsetBy < 1)
  {
    if (v3 <= 0 && v3 > offsetBy)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (v3 < 0 || v3 >= offsetBy)
  {
LABEL_11:
    v5 = __OFADD__(_, offsetBy);
    _ += offsetBy;
    if (!v5)
    {
      LOBYTE(offsetBy) = 0;
      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_5:
  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_15:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall ApplicationMusicPlayer.Queue.Entries.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ApplicationMusicPlayer.Queue.Entries.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Int __swiftcall ApplicationMusicPlayer.Queue.Entries.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t ApplicationMusicPlayer.Queue.Entries.subscript.getter(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  result = *v2;
  v4 = *(*v2 + 16);
  if (v4 < v3 || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_217751DE8();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21765799C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *a1;
  result = ApplicationMusicPlayer.Queue.Entries.subscript.getter(*a2, a2[1]);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

void sub_2176579E4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  swift_unknownObjectRetain();
  ApplicationMusicPlayer.Queue.Entries.subscript.setter();
}

void ApplicationMusicPlayer.Queue.Entries.subscript.setter()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 8);
  v2 = sub_217658118();
  if (v2)
  {
    v3 = v2;
    v2();
    sub_2172202A4(v3);
  }

  OUTLINED_FUNCTION_13();

  sub_217657B4C(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_217657AE0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_217751DE8();
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_217657B4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_16;
  }

  if (a6 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (*v6 + 752 * a5 + 32 != a2 + 752 * a3)
  {
LABEL_13:
    sub_2175B1464(a5, a6);
    return;
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_18;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
}

void (*ApplicationMusicPlayer.Queue.Entries.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  v8 = *v3;
  v9 = OUTLINED_FUNCTION_132();
  *v7 = sub_217657AE0(v9, v10, v11);
  v7[1] = v12;
  v7[2] = v13;
  v7[3] = v14;
  return sub_217657C58;
}

void sub_217657C58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = *((*a1)[6] + 8);
  if (a2)
  {
    v7 = **a1;
    swift_unknownObjectRetain();
    v8 = sub_217658118();
    if (v8)
    {
      v9 = v8;
      v8();
      sub_2172202A4(v9);
    }

    OUTLINED_FUNCTION_7_67();
    v10 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_217658118();
    if (v11)
    {
      v12 = v11;
      v11();
      sub_2172202A4(v12);
    }

    OUTLINED_FUNCTION_7_67();
  }

  free(v2);
}

unint64_t ApplicationMusicPlayer.Queue.Entries.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    return sub_217275AA0(*v2 + 752 * result + 32, a2);
  }

  __break(1u);
  return result;
}

void sub_217657D88(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  sub_217275AA0(a1, v4);
  ApplicationMusicPlayer.Queue.Entries.subscript.setter(v4, v3);
}

void ApplicationMusicPlayer.Queue.Entries.subscript.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = v2[1];
  v7 = sub_217658118();
  if (v7)
  {
    v8 = v7;
    v7();
    sub_2172202A4(v8);
  }

  v9 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2175035E0(v9);
  v9 = v10;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(v9 + 16) > a2)
  {
    sub_2176595F8(a1, v9 + 752 * a2 + 32);
    *v3 = v9;
    return;
  }

LABEL_9:
  __break(1u);
}

void (*ApplicationMusicPlayer.Queue.Entries.subscript.modify(void (**a1)(uint64_t *a1, char a2), unint64_t a2))(uint64_t *a1, char a2)
{
  result = __swift_coroFrameAllocStub(0x5F0uLL);
  *a1 = result;
  *(result + 189) = v2;
  *(result + 188) = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a2)
  {
    sub_217275AA0(*v2 + 752 * a2 + 32, result);
    return sub_217657F14;
  }

  __break(1u);
  return result;
}

void sub_217657F14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 1512);
  if (a2)
  {
    v4 = v2[188];
    sub_217275AA0(*a1, (v2 + 94));
    ApplicationMusicPlayer.Queue.Entries.subscript.setter((v2 + 94), v4);
    sub_217276358(v2);
  }

  else
  {
    ApplicationMusicPlayer.Queue.Entries.subscript.setter(*a1, v2[188]);
  }

  free(v2);
}

Swift::Int __swiftcall ApplicationMusicPlayer.Queue.Entries.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ApplicationMusicPlayer.Queue.Entries.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

void ApplicationMusicPlayer.Queue.Entries.replaceSubrange<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = *(v0 + 8);
  v15 = sub_217658118();
  if (v15)
  {
    v16 = v15;
    v15();
    sub_2172202A4(v16);
  }

  (*(v6 + 16))(v13, v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24438, &qword_217758740);
  sub_2177522E8();
  OUTLINED_FUNCTION_13();
}

void *ApplicationMusicPlayer.Queue.Entries.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282();
  result = sub_2176582F8();
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t (*sub_217658118())()
{
  v1 = v0[2];
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = v0[3];
  v4 = v0[4];
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_217659BA4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(v1 + 16);
  sub_2172B3A88(v3);
  os_unfair_lock_unlock(v7);

  if (!v3)
  {
    return 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  return sub_217659B9C;
}

uint64_t sub_217658218(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  v6 = OUTLINED_FUNCTION_212_0();
  sub_2172B3A88(v6);

  sub_217586768(v7, v2, a1, a2);
  v8 = OUTLINED_FUNCTION_212_0();
  sub_2172202A4(v8);
}

void *sub_2176582A0()
{
  v1 = v0[2];

  v2 = v0[4];
  sub_2172202A4(v0[3]);
  return v0;
}

uint64_t sub_2176582C8()
{
  v0 = sub_2176582A0();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_2176582F8()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t ApplicationMusicPlayer.Queue.Entries.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  sub_2172824CC();
  return sub_217753238();
}

uint64_t sub_2176583A0()
{
  v1 = *v0;
  sub_2177531E8();
  sub_2172824CC();
  return sub_217753238();
}

uint64_t sub_2176583E4@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.makeIterator()();
  *a1 = result;
  a1[1] = 0;
  return result;
}

uint64_t sub_217658424@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_21765844C(void *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = __swift_coroFrameAllocStub(0x2EAuLL);
  *a1 = v4;
  ApplicationMusicPlayer.Queue.Entries.subscript.getter(*a2, v4);
  return sub_2176584B4;
}

void sub_2176584B4(uint64_t *a1)
{
  v1 = *a1;
  sub_217276358(*a1);

  free(v1);
}

uint64_t sub_2176584F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_217658524@<X0>(void *a1@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

uint64_t sub_217658554(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_217710ED4(*a1, *a2, a2[1]);
}

uint64_t sub_217658568(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_2173C29EC(*a1, *a2, a2[1]);
}

uint64_t sub_21765857C(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_217710EE8(*a1, a1[1], *a2, a2[1]);
}

Swift::Int sub_217658594@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_2176585D8@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.index(before:)(*a1);
  *a2 = result;
  return result;
}

void (*sub_217658624(void *a1, unint64_t *a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x5F0uLL);
  *a1 = v5;
  v5[188] = v2;
  v6 = *a2;
  v5[189] = v6;
  v7 = *v2;
  v8 = OUTLINED_FUNCTION_140_0();
  sub_217504044(v6, v8 & 1, v7);
  if (v8)
  {
    sub_217275AA0(v7 + 752 * v6 + 32, v5);
    return sub_2176586DC;
  }

  else
  {
    result = sub_217658FB8(v6, v7);
    __break(1u);
  }

  return result;
}

void sub_2176586DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[189];
    v4 = v2[188];
    sub_217275AA0(*a1, (v2 + 94));
    ApplicationMusicPlayer.Queue.Entries.subscript.setter((v2 + 94), v3);
    sub_217276358(v2);
  }

  else
  {
    v5 = v2[188];
    ApplicationMusicPlayer.Queue.Entries.subscript.setter(*a1, v2[189]);
  }

  free(v2);
}

void sub_217658758(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  ApplicationMusicPlayer.Queue.Entries.subscript.setter();
}

void (*sub_217658770(void *a1, uint64_t *a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = ApplicationMusicPlayer.Queue.Entries.subscript.modify(v4, *a2, a2[1]);
  return sub_2174C6BD0;
}

void sub_2176587D4(uint64_t (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  sub_217658800(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void sub_217658824(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(*v2 + 16);
      if (v4 > a1)
      {
        v6 = *v2 + 32;
        sub_217275AA0(v6 + 752 * a1, v8);
        if (v4 > a2)
        {
          sub_217275AA0(v6 + 752 * a2, v7);
          ApplicationMusicPlayer.Queue.Entries.subscript.setter(v7, a1);
          ApplicationMusicPlayer.Queue.Entries.subscript.setter(v8, a2);
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_217658918(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  ApplicationMusicPlayer.Queue.Entries.replaceSubrange<A>(_:with:)();
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_2176589A0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _s5QueueC7EntriesV5StateCMa();
  swift_allocObject();
  result = sub_2176582F8();
  v11 = MEMORY[0x277D84F90];
  v12 = result;
  if (!a2)
  {
    v8 = result;
    result = sub_217276358(a1);
    v7 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    __src = a2;
    memcpy(v10, a1, sizeof(v10));
    result = sub_2176560EC(&__src);
    v7 = v11;
    v8 = v12;
LABEL_5:
    *a3 = v7;
    a3[1] = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_217658A74(void *__src)
{
  v2 = *(*v1 + 16);
  memcpy(__dst, __src, 0x2EAuLL);
  v3 = v1[1];
  v4 = sub_217658118();
  if (v4)
  {
    v5 = v4;
    v4();
    sub_2172202A4(v5);
  }

  sub_2171F5110(__dst, &v7, &qword_27CB28B88, &qword_217771908);
  sub_2175B10F8(v2, v2);
  return sub_2171F0738(__dst, &qword_27CB28B88, &qword_217771908);
}

uint64_t sub_217658B54(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x2EAuLL);
  v4 = *(v2 + 8);
  v5 = sub_217658118();
  if (v5)
  {
    v6 = v5;
    v5();
    sub_2172202A4(v6);
  }

  sub_2171F5110(__dst, &v8, &qword_27CB28B88, &qword_217771908);
  sub_2175B10F8(a2, a2);
  return sub_2171F0738(__dst, &qword_27CB28B88, &qword_217771908);
}

void sub_217658C30(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_217275AA0(*v2 + 752 * a1 + 32, a2);
  v5 = v2[1];
  v6 = sub_217658118();
  if (v6)
  {
    v7 = v6;
    v6();
    sub_2172202A4(v7);
  }

  sub_2175B118C(a1, a1 + 1);
}

void sub_217658CE0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_217658118();
  if (v6)
  {
    v7 = v6;
    v6();
    sub_2172202A4(v7);
  }

  sub_2175B118C(a1, a2);
}

void sub_217658D70(Swift::Int offsetBy)
{
  if (!offsetBy)
  {
    return;
  }

  if (offsetBy < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:limitedBy:)(0, offsetBy, *(*v1 + 16));
  if (v7.is_nil)
  {
LABEL_13:
    __break(1u);
    return;
  }

  value = v7.value;
  if (v7.value < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v1[1];
  v4 = sub_217658118();
  if (v4)
  {
    v5 = v4;
    v4();
    sub_2172202A4(v5);
  }

  sub_2175B118C(0, value);
}

void sub_217658E20(char a1)
{
  v2 = v1;
  v3 = *v1;
  if (a1)
  {
    v4 = *(v3 + 16);
    v5 = v2[1];
    v6 = sub_217658118();
    if (v6)
    {
      v7 = v6;
      v6();
      sub_2172202A4(v7);
    }

    sub_2175B118C(0, v4);
  }

  else
  {
    v8 = v2[1];

    _s5QueueC7EntriesV5StateCMa();
    swift_allocObject();
    v9 = sub_2176582F8();
    *v2 = MEMORY[0x277D84F90];
    v2[1] = v9;
  }
}

uint64_t sub_217658EF8()
{
  v1 = v0[202];
  v2 = v0[203];

  v3 = v0[205];
  v4 = v0[206];

  return sub_217659654(v3);
}

void *ApplicationMusicPlayer.Queue.deinit()
{
  v0 = MusicPlayer.Queue.deinit();
  v1 = v0[202];
  v2 = v0[203];

  v3 = v0[206];
  sub_217659654(v0[205]);
  return v0;
}

uint64_t ApplicationMusicPlayer.Queue.__deallocating_deinit()
{
  v0 = ApplicationMusicPlayer.Queue.deinit();

  return MEMORY[0x2821FE8D8](v0, 1656, 7);
}

uint64_t sub_217658FB8(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v5[94] = v2;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    sub_217276358(v5);
    return v2;
  }

LABEL_7:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000043, 0x80000002177B3590);
  MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
  MEMORY[0x21CEA23B0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_217753348();
  MEMORY[0x21CEA23B0](v4);

  result = sub_217752D18();
  __break(1u);
  return result;
}

uint64_t sub_217659108(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    sub_21726B8A0(v5, v6);
    return v2;
  }

LABEL_7:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000043, 0x80000002177B3590);
  MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177B35E0);
  MEMORY[0x21CEA23B0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_217753348();
  MEMORY[0x21CEA23B0](v4);

  result = sub_217752D18();
  __break(1u);
  return result;
}

unint64_t sub_21765925C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = a2;
  v6 = a1;
  v7 = *v2;
  v8 = v2[1];
  v9 = sub_217654F4C(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v10)
  {
    return *(v7 + 16);
  }

  v4 = v9;
  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_31:
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_6;
  }

  sub_2175035E0(v7);
  v7 = v19;
LABEL_6:
  v20 = v2;
  *v2 = v7;
  v25 = v7 + 32;
  v12 = v7 + 752 * v4 + 784;
  v21 = v6;
  v22 = v8;
  while (1)
  {
    v13 = *(v7 + 16);
    if (v11 == v13)
    {
      break;
    }

    if (v11 >= v13)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_217275AA0(v12, v24);
    v2 = v6(v24);
    sub_217276358(v24);
    if ((v2 & 1) == 0)
    {
      if (v11 != v4)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v2 = *(v7 + 16);
        if (v4 >= v2)
        {
          goto LABEL_27;
        }

        v6 = v5;
        v5 = v25 + 752 * v4;
        sub_217275AA0(v5, v24);
        if (v11 >= v2)
        {
          goto LABEL_28;
        }

        sub_217275AA0(v12, v23);
        v2 = v8;
        v14 = sub_217658118();
        if (v14)
        {
          v8 = v14;
          v2 = v15;
          v14();
          sub_2172202A4(v8);
        }

        if (v4 >= *(v7 + 16))
        {
          goto LABEL_29;
        }

        sub_2176595F8(v23, v5);
        v8 = v22;
        v2 = v22;
        v16 = sub_217658118();
        if (v16)
        {
          v5 = v16;
          v2 = v17;
          v16();
          sub_2172202A4(v5);
        }

        if (v11 >= *(v7 + 16))
        {
          goto LABEL_30;
        }

        sub_2176595F8(v24, v12);
        v5 = v6;
        v6 = v21;
      }

      ++v4;
    }

    ++v11;
    v12 += 752;
  }

  *v20 = v7;
  return v4;
}

void sub_217659484(uint64_t (*a1)(_BYTE *))
{
  v4 = 0;
  v5 = *(*v1 + 16);
LABEL_2:
  v6 = 752 * v4 + 32;
  for (i = v4; i < v5; ++i)
  {
    if (v4 < 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v8 = *v14;
    if (i >= *(*v14 + 16))
    {
      goto LABEL_16;
    }

    sub_217275AA0(v8 + v6, v13);
    v9 = a1(v13);
    sub_217276358(v13);
    if (v2)
    {
      return;
    }

    if (v9)
    {
      v10 = v8 + 752 * v5 - 720;
      while (1)
      {
        v11 = v5 - 1;
        if (i >= v5 - 1)
        {
          return;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_17;
        }

        sub_217275AA0(v10, v13);
        v12 = a1(v13);
        sub_217276358(v13);
        v10 -= 752;
        --v5;
        if ((v12 & 1) == 0)
        {
          sub_217658824(i, v11);
          v4 = i + 1;
          v5 = v11;
          goto LABEL_2;
        }
      }
    }

    v6 += 752;
  }
}

uint64_t sub_217659654(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_217659698()
{
  result = qword_27CB2B388;
  if (!qword_27CB2B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B388);
  }

  return result;
}

unint64_t sub_217659734()
{
  result = qword_27CB2B3A0;
  if (!qword_27CB2B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B3A0);
  }

  return result;
}

unint64_t sub_2176597CC()
{
  result = qword_27CB2B3B8;
  if (!qword_27CB2B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B3B8);
  }

  return result;
}

unint64_t sub_217659868()
{
  result = qword_27CB2B3C8;
  if (!qword_27CB2B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B3C8);
  }

  return result;
}

void sub_217659AA4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2176563DC();
}

uint64_t sub_217659AD4(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_2176567DC(a1, v1 + v4, v7, v8, v9, v11, v12);
}

id sub_217659BD4(uint64_t a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (sub_217696E10(2u, a1))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    if (sub_217696E10(3u, a1))
    {
      v4 |= 2uLL;
    }

    if (sub_217696E10(0, a1))
    {
      v4 |= 0x10uLL;
    }

    v5 = sub_217696E10(1u, a1);
    v6 = v4 | 0x20;
    if (!v5)
    {
      v6 = v4;
    }

    v7 = v6 | a2 & ((v6 & 1) == 0);
  }

  else
  {
    if (a2 == 2)
    {
      return 0;
    }

    v7 = a2 & 1;
  }

  return [objc_opt_self() rawValueForAudioTraits_];
}

uint64_t sub_217659CB4(char a1)
{
  if ((a1 & 4) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_2172B1F24(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = v3;
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_0_127(v4);
    v2 = v13;
  }

  *(v2 + 16) = v5 + 1;
  *(v2 + v5 + 32) = 2;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_121();
      v2 = v14;
    }

    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v7 >= v6 >> 1)
    {
      OUTLINED_FUNCTION_0_127(v6);
      v2 = v15;
    }

    *(v2 + 16) = v7 + 1;
    *(v2 + v7 + 32) = 3;
  }

LABEL_12:
  if ((a1 & 0x10) == 0)
  {
    if ((a1 & 0x20) == 0)
    {
      return v2;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_121();
    v2 = v16;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  if (v9 >= v8 >> 1)
  {
    OUTLINED_FUNCTION_0_127(v8);
    v2 = v17;
  }

  *(v2 + 16) = v9 + 1;
  *(v2 + v9 + 32) = 0;
  if ((a1 & 0x20) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_121();
      v2 = v18;
    }

    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_2172B1F24(v10 > 1, v11 + 1, 1, v2);
      v2 = v19;
    }

    *(v2 + 16) = v11 + 1;
    *(v2 + v11 + 32) = 1;
  }

  return v2;
}

uint64_t Album.TracksPopularityProvider.__allocating_init(underlyingBlock:underlyingModelObject:)(_OWORD *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_2172124CC(a1, (v4 + 16));
  *(v4 + 48) = a2;
  return v4;
}

uint64_t Album.TracksPopularityProvider.init(underlyingBlock:underlyingModelObject:)(_OWORD *a1, uint64_t a2)
{
  sub_2172124CC(a1, (v2 + 16));
  *(v2 + 48) = a2;
  return v2;
}

uint64_t sub_217659EB0(uint64_t a1)
{
  v2 = v1;
  *(&__src[1] + 1) = &type metadata for Track;
  *&__src[2] = &protocol witness table for Track;
  *&__src[0] = swift_allocObject();
  sub_217275710(a1, *&__src[0] + 16);
  __swift_project_boxed_opaque_existential_1(__src, &type metadata for Track);
  Track.propertyProvider.getter();
  v4 = *&__dst[24];
  v5 = *&__dst[32];
  __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
  (*(v5 + 24))(v21, v4, v5);
  sub_21729C644(__dst);
  __swift_destroy_boxed_opaque_existential_1(__src);
  v20[3] = &type metadata for Track;
  v20[4] = &protocol witness table for Track;
  v20[0] = swift_allocObject();
  sub_217275710(a1, v20[0] + 16);
  __swift_project_boxed_opaque_existential_1(v20, &type metadata for Track);
  Track.propertyProvider.getter();
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v7 + 24))(__src, v6, v7);
  sub_21729C644(v17);
  memcpy(__dst, __src, sizeof(__dst));
  __swift_destroy_boxed_opaque_existential_1(v20);
  v8 = *&__dst[304];
  v9 = *&__dst[312];
  sub_217751DE8();
  v16 = *&__dst[288];
  sub_217269F50(__dst);
  __src[0] = v16;
  *&__src[1] = v8;
  *(&__src[1] + 1) = v9;
  MusicItemTypeValue.underlyingLegacyModelObjectType.getter();

  v10 = sub_21721478C();
  LOBYTE(v20[0]) = 5;
  v11 = sub_2172B7F78(v10, v20);
  memcpy(__src, v21, 0x161uLL);
  sub_217269F50(__src);
  v12 = objc_opt_self();
  v13 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v14 = [v12 trackPopularityForIdentifiers:v11 underlyingModelAlbum:v13 tracksPopularityBlock:sub_217753048()];
  swift_unknownObjectRelease();
  if (v14)
  {
    v21[0] = 0;
    LOBYTE(v21[1]) = 1;
    MEMORY[0x21CEA2900](v14, v21);

    swift_unknownObjectRelease();
    return v21[0];
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_21765A154()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = sub_2177528C8();
    MEMORY[0x21CEA3550](v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000028, 0x80000002177B3630);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177B3660);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t Album.TracksPopularityProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Album.TracksPopularityProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_21765A304()
{
  sub_2177531E8();
  sub_21765A154();
  return sub_217753238();
}

uint64_t sub_21765A3B0()
{
  sub_2177531E8();
  v1 = *v0;
  sub_21765A154();
  return sub_217753238();
}

unint64_t sub_21765A3F4()
{
  result = qword_27CB2B410;
  if (!qword_27CB2B410)
  {
    type metadata accessor for Album.TracksPopularityProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B410);
  }

  return result;
}

uint64_t sub_21765A524(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(result + 16);
  for (i = (result + 40); v6; --v6)
  {
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = *(v10 + 16);
      sub_2172AFF2C();
      v10 = v21;
      *a2 = v21;
    }

    v12 = *(v10 + 16);
    if (v12 >= *(v10 + 24) >> 1)
    {
      sub_2172AFF2C();
      v10 = v22;
      *a2 = v22;
    }

    *(v10 + 16) = v12 + 1;
    v13 = v10 + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
    v14 = *a2;
    if (*(*a2 + 16) == a3)
    {
      v15 = *a4;
      v16 = *a2;
      sub_217751DE8();
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v15;
      if ((v17 & 1) == 0)
      {
        v23 = *(v15 + 16);
        sub_2172B353C();
        v15 = v24;
        *a4 = v24;
      }

      v18 = *(v15 + 16);
      if (v18 >= *(v15 + 24) >> 1)
      {
        sub_2172B353C();
        v15 = v25;
        *a4 = v25;
      }

      *(v15 + 16) = v18 + 1;
      *(v15 + 8 * v18 + 32) = v14;
      v19 = *a2;
      *a2 = MEMORY[0x277D84F90];
    }

    i += 2;
  }

  return result;
}

uint64_t sub_21765A6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_7_68(v11, v20);
  v12 = sub_217752538();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v5, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2171F06D8(a3, &qword_27CB24D78, &qword_217759EA0);
    OUTLINED_FUNCTION_28_6();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_217752498();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_217751FB8();
  OUTLINED_FUNCTION_28_6();
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;

  v18 = swift_task_create();

  sub_2171F06D8(a3, &qword_27CB24D78, &qword_217759EA0);

  return v18;
}

uint64_t sub_21765A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  OUTLINED_FUNCTION_7_68(v13, v22);
  v14 = sub_217752538();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v5, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v14 - 8) + 8))(v5, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2171F06D8(a3, &qword_27CB24D78, &qword_217759EA0);
    OUTLINED_FUNCTION_28_6();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B428, &qword_21778A740);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_217752498();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_217751FB8();
  OUTLINED_FUNCTION_28_6();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B428, &qword_21778A740);
  v19 = swift_task_create();

  sub_2171F06D8(a3, &qword_27CB24D78, &qword_217759EA0);

  return v19;
}

void *sub_21765AC5C()
{
  v0 = [objc_opt_self() applicationMusicPlayer];
  type metadata accessor for ApplicationMusicPlayer();
  swift_allocObject();
  result = sub_21765AD1C(v0);
  qword_27CB2B418 = result;
  return result;
}

uint64_t static ApplicationMusicPlayer.shared.getter()
{
  if (qword_27CB23D98 != -1)
  {
    swift_once();
  }
}

void *sub_21765AD1C(void *a1)
{
  type metadata accessor for ApplicationMusicPlayer.Queue();
  swift_allocObject();
  ApplicationMusicPlayer.Queue.init(arrayLiteral:)();
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 256;
  v4 = a1;
  v5 = sub_21763A5AC(v4);
  v6 = v5[6];
  v7 = v4;

  sub_21726D458(v4);

  type metadata accessor for NotificationObserver();
  v8 = [objc_opt_self() playbackQueueDidChangeNotificationName];
  OUTLINED_FUNCTION_37_3();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = v7;

  v11 = static NotificationObserver.mainActorObserver(name:object:handler:)(v8, v4, &unk_21778A728, v9);

  v12 = v5[7];
  v5[7] = v11;

  return v5;
}

uint64_t sub_21765AE88(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  sub_217752518();
  v2[15] = sub_217752508();
  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_21765AF20, v4, v3);
}

uint64_t sub_21765AF20()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  v3 = sub_2177513D8();
  if (!v3)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() notificationUserInfoKeyContentItemIDs];
  v6 = sub_217751F48();
  v8 = v7;

  *(v0 + 88) = v6;
  *(v0 + 96) = v8;
  sub_217752A48();
  sub_2173AC9A0(v0 + 16, v4);

  sub_2174E6BDC(v0 + 16);
  if (!*(v0 + 80))
  {
LABEL_7:
    sub_2171F06D8(v0 + 56, &qword_27CB2AD40, &qword_2177583F0);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 112);
    v10 = *(v0 + 16);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_21765B280(v10, 1);
    }

    else
    {
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_20_0();

  return v11();
}

void sub_21765B0C4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_21765B158(&v6);
  v4 = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
}

void sub_21765B110(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *a2;
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  sub_21765B174(&v5);
}

void sub_21765B158(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 81);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

void sub_21765B174(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  *(v1 + 72) = *a1;
  *(v1 + 80) = v2;
  *(v1 + 81) = v3;
  OUTLINED_FUNCTION_11_68();
  sub_21765BC94(v4);
}

void (*sub_21765B1B0(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 80);
  v3 = *(v1 + 81);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  return sub_21765B1EC;
}

void sub_21765B1EC(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  v3 = a1[2];
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  sub_21765B174(&v4);
}

void sub_21765B234()
{
  v1 = v0;
  v2 = *(v0 + 48);
  sub_21726E7A0();
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 81);
  OUTLINED_FUNCTION_11_68();
  sub_21765BC94(v6);
}

void sub_21765B280(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(v2 + 64);
  if (v4 || (a2 & 1) == 0)
  {
    [v5 invalidate];
    v11 = *(v2 + 64);
    *(v2 + 64) = 0;

    sub_21765B604(a1);
  }

  else if (!v5)
  {
    v6 = objc_opt_self();
    OUTLINED_FUNCTION_28_6();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = a1;
    v12[4] = sub_21765C178;
    v12[5] = v7;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_217656CF4;
    v12[3] = &block_descriptor_16;
    v8 = _Block_copy(v12);
    swift_retain_n();
    sub_217751DE8();

    v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:0.25];

    _Block_release(v8);
    v10 = *(v2 + 64);
    *(v2 + 64) = v9;
  }
}

uint64_t sub_21765B3FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_217752518();

  sub_217751DE8();
  v10 = sub_217752508();
  OUTLINED_FUNCTION_99_1();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  v11[5] = a1;
  sub_21765A6D8(0, 0, v8, &unk_21778A708, v11);
}

uint64_t sub_21765B504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_217752518();
  v5[4] = sub_217752508();
  v7 = sub_217752498();

  return MEMORY[0x2822009F8](sub_21765B59C, v7, v6);
}

uint64_t sub_21765B59C()
{
  OUTLINED_FUNCTION_10();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_21765B280(v2, 0);
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21765B604(uint64_t a1)
{
  v43 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  sub_21765A524(a1, &v43, 10, &v44);
  v1 = v43;
  v2 = v44;
  v3 = &v42;
  if (*(v43 + 16))
  {
    sub_217751DE8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_35:
      v32 = *(v2 + 16);
      sub_2172B353C();
      v2 = v33;
    }

    v4 = *(v2 + 16);
    v39 = v4 + 1;
    if (v4 >= *(v2 + 24) >> 1)
    {
      sub_2172B353C();
      v2 = v34;
    }

    *(v2 + 16) = v39;
    *(v2 + 8 * v4 + 32) = v1;
    v3[3] = v2;
  }

  else
  {
    v39 = *(v44 + 16);
  }

  v5 = 0;
  v6 = *(v35 + 24);
  v38 = v2 + 32;
  v7 = MEMORY[0x277D84F90];
  v36 = v6;
  v37 = v2;
  while (v5 != v39)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v8 = *(v38 + 8 * v5);
    OUTLINED_FUNCTION_37_3();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v6;
    v10[4] = v8;
    v11 = *(v8 + 16);
    if (v11)
    {
      v40 = v5;
      v42 = MEMORY[0x277D84F90];
      swift_bridgeObjectRetain_n();
      v12 = v6;

      sub_217276338(0, v11, 0);
      v13 = v42;
      v14 = (v8 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        OUTLINED_FUNCTION_99_1();
        v17 = swift_allocObject();
        v17[2] = sub_21765BFD4;
        v17[3] = v10;
        v17[4] = v15;
        v17[5] = v16;
        _s25LazyEntryPropertyProviderCMa();
        swift_allocObject();
        swift_bridgeObjectRetain_n();

        v18 = sub_2174FB4B4(v15, v16, sub_21765BFE0, v17);
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v42 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        sub_217751DE8();
        if (v22 >= v21 >> 1)
        {
          sub_217276338(v21 > 1, v22 + 1, 1);
          v13 = v42;
        }

        *(v13 + 16) = v22 + 1;
        v23 = v13 + 752 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        *(v23 + 48) = v18;
        memcpy((v23 + 56), __src, 0x2D1uLL);
        *(v23 + 777) = 1;
        v14 += 2;
        --v11;
      }

      while (v11);

      v6 = v36;
      v2 = v37;
      v5 = v40;
    }

    else
    {
      sub_217751DE8();
      v24 = v6;

      v13 = MEMORY[0x277D84F90];
    }

    v1 = *(v13 + 16);
    v3 = *(v7 + 16);
    if (__OFADD__(v3, v1))
    {
      goto LABEL_32;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v3 + v1 > *(v7 + 24) >> 1)
    {
      sub_2172AFF5C();
      v7 = v25;
    }

    ++v5;
    if (*(v13 + 16))
    {
      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v1)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v1)
      {
        v26 = *(v7 + 16);
        v27 = __OFADD__(v26, v1);
        v28 = v26 + v1;
        if (v27)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v28;
      }
    }

    else
    {

      if (v1)
      {
        __break(1u);
        break;
      }
    }
  }

  v29 = *(v35 + 48);
  _s5QueueC7EntriesV5StateCMa();
  swift_allocObject();
  v30 = sub_2176582F8();
  __src[0] = v7;
  __src[1] = v30;
  sub_2176562CC(__src, 1);
}

void *sub_21765BA5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (*(a3 + 16))
  {
    v8 = *(a3 + 16);
  }

  else
  {
    v9 = sub_217752288();
    v10 = [a4 itemsForContentItemIDs_];

    sub_21765BFEC();
    v8 = sub_217751D98();

    swift_beginAccess();
    v11 = *(a3 + 16);
    *(a3 + 16) = v8;
    sub_217751DE8();
  }

  v12 = *(v8 + 16);
  sub_217751DE8();
  if (v12 && (v13 = sub_21763246C(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v8 + 56) + 8 * v13);
    v16 = v15;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_21765BBA4(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = a1(a2, a3);
  if (v7)
  {

    sub_2173E0D6C(v7, a4);
  }

  else
  {
    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xE000000000000000;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    sub_2172A497C(__src);
    memcpy((a4 + 48), __src, 0x221uLL);
    *(a4 + 600) = 0u;
    *(a4 + 616) = 0u;
    *(a4 + 632) = 0u;
    *(a4 + 648) = 0;
    *(a4 + 656) = -1;
    *(a4 + 664) = 0u;
    *(a4 + 680) = 0u;
    *(a4 + 696) = 0u;
    *(a4 + 712) = 1;
    *(a4 + 720) = 0;
    *(a4 + 728) = 1;
    sub_217751DE8();
  }
}

void sub_21765BC94(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (*(a1 + 9))
  {
    v3 = *(v1 + 24);

    [v3 setApplicationMusicPlayerTransitionType:0 withDuration:0.0];
  }

  else
  {
    if (*(a1 + 8))
    {
      v4 = objc_opt_self();
      v5 = [v4 standardUserDefaults];
      v6 = [v5 isCrossFadeEnabled];

      v7 = 4.0;
      if (v6)
      {
        v8 = [v4 standardUserDefaults];
        [v8 crossFadeDuration];
        v7 = v9;
      }
    }

    else
    {
      v7 = *a1;
    }

    v10 = 1.0;
    if (v7 > 1.0)
    {
      v10 = v7;
    }

    if (v10 <= 12.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 12.0;
    }

    if ((*(v1 + 97) & 1) != 0 || (*(v1 + 96) & 1) != 0 || v11 != *(v1 + 88))
    {
      [v2 setApplicationMusicPlayerTransitionType:1 withDuration:v11];
      *(v1 + 88) = v11;
      *(v1 + 96) = 0;
    }
  }
}

void sub_21765BDE8()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];
}

uint64_t ApplicationMusicPlayer.deinit()
{
  v0 = MusicPlayer.deinit();
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t ApplicationMusicPlayer.__deallocating_deinit()
{
  v0 = ApplicationMusicPlayer.deinit();

  return MEMORY[0x2821FE8D8](v0, 98, 7);
}

unint64_t sub_21765BFEC()
{
  result = qword_27CB2B420;
  if (!qword_27CB2B420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB2B420);
  }

  return result;
}

uint64_t sub_21765C030(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_19(v7);
  *v8 = v9;
  v8[1] = sub_21765C554;

  return sub_21765B504(a1, v3, v4, v6, v5);
}

uint64_t sub_21765C0E8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_9_73();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14(v1);

  return v4(v3);
}

uint64_t sub_21765C178()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_21765B3FC(v1);
}

uint64_t sub_21765C1A8()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21725B86C;

  return sub_21765AE88(v3, v0);
}

uint64_t sub_21765C23C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21765C330;

  return v6(v2 + 32);
}

uint64_t sub_21765C330()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v3 = v6;

  *v2 = *(v6 + 32);
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21765C434()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_9_73();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14(v1);

  return v4(v3);
}

uint64_t sub_21765C4C4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_9_73();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14(v1);

  return v4(v3);
}

uint64_t sub_21765C56C()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_2_113();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_128(v1);
  OUTLINED_FUNCTION_1279();

  return MusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)();
}

uint64_t MusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)()
{
  OUTLINED_FUNCTION_2_113();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_9_4();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_1_122(v6);

  return v10(v8);
}

uint64_t sub_21765C728()
{
  OUTLINED_FUNCTION_25_1();
  sub_21725ECA0();
  v0 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v35 - v15;
  OUTLINED_FUNCTION_0();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  v26 = *(v25 + 64);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v22, a1, a3, v29);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 0, 1, a2);
    (*(v24 + 32))(v31, v16, a2);
    v33 = sub_217751F08();
    (*(v24 + 8))(v31, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, a2);
    (*(v10 + 8))(v16, v8);
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t MusicItemCollectionIncrementalLoader.eraseToAnyIncrementalLoader()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

uint64_t sub_21765CA4C()
{
  OUTLINED_FUNCTION_25_1();
  sub_21737F7B0();
  v0 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_21765CA90()
{
  OUTLINED_FUNCTION_25_1();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_21765CAE8()
{
  swift_getWitnessTable();

  return MusicItemCollectionIncrementalLoader<>.combine(into:)();
}

uint64_t sub_21765CB48()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174BF908();
  v0 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t AnyMusicItemCollectionIncrementalLoader.nextBatchLocation.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AnyMusicItemCollectionIncrementalLoader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B430, &qword_21778A758);
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21765CE4C();
  sub_2177532C8();
  if (!v2)
  {
    sub_21765CEA0();
    sub_217752EA8();
    if (v26)
    {
      if (v26 != 1)
      {
        sub_2171FF30C(a1, v25);
        v19 = sub_2175A8BE0(v25);
        v28 = &type metadata for MusicItemCollectionCombinationIncrementalLoader;
        v29 = &off_282971898;
        *&v26 = v19;
        *(&v26 + 1) = v20;
        v27 = v21;
        v22 = OUTLINED_FUNCTION_1_37();
        v23(v22);
        goto LABEL_10;
      }

      sub_2171FF30C(a1, v25);
      v28 = &type metadata for MusicCatalogSearchIncrementalLoader;
      v29 = &protocol witness table for MusicCatalogSearchIncrementalLoader;
      v11 = swift_allocObject();
      v12 = OUTLINED_FUNCTION_16_63(v11);
      MusicCatalogSearchIncrementalLoader.init(from:)(v12, v13);
    }

    else
    {
      sub_2171FF30C(a1, v25);
      v28 = &type metadata for MusicCatalogResourceIncrementalLoader;
      v29 = &off_2829650B8;
      v14 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_16_63(v14);
      sub_2173802F0(v15, v16);
    }

    v17 = OUTLINED_FUNCTION_1_37();
    v18(v17);
LABEL_10:
    sub_2171F3F0C(&v26, v30);
    v24 = v30[1];
    *a2 = v30[0];
    *(a2 + 16) = v24;
    *(a2 + 32) = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21765CE4C()
{
  result = qword_27CB2B438;
  if (!qword_27CB2B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B438);
  }

  return result;
}

unint64_t sub_21765CEA0()
{
  result = qword_27CB2B440;
  if (!qword_27CB2B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B440);
  }

  return result;
}

uint64_t AnyMusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 64) = a3;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21765CF14()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_9_4();
  v15 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_21765D04C;
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);

  return (v15)(v12, v13, v2 & 1, v10, v11, v3, v4);
}

uint64_t sub_21765D04C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}