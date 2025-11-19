uint64_t sub_21732C780(void *a1)
{
  v75 = type metadata accessor for CloudArtist(0);
  v2 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75, v3);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257E8, &qword_21775D8C8);
  v78 = *(v5 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v72 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257F0, &qword_21775D8D0);
  sub_21733CCD4(&qword_27CB257F8, &qword_27CB257F0, &qword_21775D8D0);
  v12 = v86;
  sub_2177532F8();
  v13 = v12[1];
  v81[0] = *v12;
  v81[1] = v13;
  LOBYTE(v80[0]) = 0;
  sub_2172E1B18();
  v14 = v77;
  sub_217752F88();
  if (v14)
  {
    return (*(v78 + 8))(v9, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
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
  v82[391] = 1;
  sub_21733ABF0();
  sub_217751DE8();
  sub_217752F88();

  v22 = sub_217751DC8();
  memcpy(v82, v12 + v16[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v82) != 1)
  {

    v29 = sub_217751378();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_217751368();
    memcpy(v81, v82, 0x180uLL);
    sub_21733AC98();
    v33 = sub_217751358();
    v73 = v32;
    v76 = v33;
    v77 = v36;
    v37 = sub_217751348();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    sub_217751308();

    sub_217275694(v76, v77);

    v22 = v81[0];
    v12 = v86;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v23 = v75;
  if (!swift_dynamicCast())
  {
    memset(v80, 0, 40);
    sub_2171F0738(v80, &qword_27CB25588, &unk_21775D380);
    v73 = v16;
    v34 = *(v12 + v16[12]);
    if (*(v34 + 16))
    {
      v35 = sub_2173887C0(v12 + *(v23 + 20), v74, v34);
      v77 = v22;
      v81[0] = v35;
      LOBYTE(v80[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else
    {
      v77 = v22;
      LOBYTE(v81[0]) = 3;
      type metadata accessor for CloudArtist.Attributes(0);
      sub_21733CDD0(&qword_280BE53E0, type metadata accessor for CloudArtist.Attributes);
      sub_217752F88();
    }

    v48 = v77;
    v49 = v75;
    sub_21726A630(v12 + *(v75 + 24), v80, &qword_27CB24328, &unk_21775D440);
    if (*&v80[1] == 1)
    {
      sub_2171F0738(v80, &qword_27CB24328, &unk_21775D440);
      v50 = *(v12 + v73[13]);
      if (!*(v50 + 16))
      {
        v12 = v86;
        goto LABEL_26;
      }

      v81[0] = v50;
      LOBYTE(v80[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();

      v12 = v86;
    }

    else
    {
      memcpy(v81, v80, 0x380uLL);
      if (*(*(v12 + v73[13]) + 16))
      {
        v77 = sub_217388B68();
        *&v80[0] = v77;
        v79 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
        sub_217752F88();
        sub_21726A204(v81);
      }

      else
      {
        LOBYTE(v80[0]) = 4;
        sub_21733C2D0();
        sub_217752F88();
        sub_21726A204(v81);
      }
    }

    v49 = v75;
LABEL_26:
    sub_21726A630(v12 + *(v49 + 28), v80, &qword_27CB24AB0, &qword_217759088);
    if (*&v80[1] == 1)
    {
      sub_2171F0738(v80, &qword_27CB24AB0, &qword_217759088);
      v51 = *(v12 + v73[14]);
      if (!*(v51 + 16))
      {
        v53 = v78;
        goto LABEL_37;
      }

      v81[0] = v51;
      LOBYTE(v80[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
    }

    else
    {
      memcpy(v81, v80, sizeof(v81));
      if (!*(*(v12 + v73[14]) + 16))
      {
        LOBYTE(v80[0]) = 5;
        sub_21733C27C();
        sub_217752F88();
        sub_21728463C(v81);
LABEL_36:
        v53 = v78;
        v49 = v75;
LABEL_37:
        v58 = *(v86 + *(v49 + 32));
        v59 = *(v86 + v73[15]);
        v60 = *(v59 + 16);
        if (v58 == 1)
        {
          if (v60)
          {
            v61 = *(v86 + v73[15]);
            sub_217751DE8();
            v81[0] = sub_2174EB024(v48, v59);
            LOBYTE(v80[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
            sub_217752F88();
            (*(v53 + 8))(v9, v5);
          }

          else
          {
            if (*(v48 + 16))
            {
              v81[0] = v48;
              LOBYTE(v80[0]) = 6;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
              sub_217752F88();

              return (*(v53 + 8))(v9, v5);
            }

            (*(v53 + 8))(v9, v5);
          }
        }

        else
        {
          if (v60)
          {
            sub_2171FF30C(v74, v81);
            sub_217221020(v58);
            v62 = sub_217751DE8();
            v63 = sub_2174D63C0(v62, v81);
            v64 = sub_217751DE8();
            v65 = sub_2175472EC(v64, v63);
            v66 = sub_2175472EC(v48, v65);
          }

          else
          {
            sub_2171FF30C(v74, v81);
            sub_217221020(v58);
            v67 = sub_217751DE8();
            v68 = sub_2174D63C0(v67, v81);
            v66 = sub_2174D37FC(v48, v68);
          }

          v81[0] = v66;
          LOBYTE(v80[0]) = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
          sub_217752F88();
          (*(v53 + 8))(v9, v5);
          sub_217221010(v58);
        }
      }

      sub_217388DA0();
      *&v80[0] = v52;
      v79 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_21728463C(v81);
    }

    goto LABEL_36;
  }

  v76 = v9;
  v77 = v22;
  sub_2171F3F0C(v80, v81);
  v24 = v16;
  v25 = v12;
  v26 = v81[3];
  v27 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v28 = (*(v27 + 48))(*(v25 + v24[12]), v74, v26, v27);
  v73 = v24;
  *&v80[0] = v28;
  v79 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v40 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
  sub_217752F88();
  v75 = v40;

  v41 = v81[3];
  v42 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v43 = v73;
  v44 = (*(v42 + 56))(*(v86 + v73[13]), v74, v41, v42);
  if (v44)
  {
    *&v80[0] = v44;
    v79 = 4;
    sub_217752F88();
  }

  v45 = v81[3];
  v46 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v47 = (*(v46 + 64))(*(v86 + v43[14]), v74, v45, v46);
  if (v47)
  {
    *&v80[0] = v47;
    v79 = 5;
    sub_217752F88();
    v72 = v5;
  }

  else
  {
    v72 = v5;
  }

  v54 = *(v86 + v43[15]);
  sub_217751DE8();
  v55 = sub_2174EB024(v77, v54);
  v56 = v81[3];
  v57 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v69 = (*(v57 + 72))(v55, v74, v56, v57);

  if (v69)
  {
    *&v80[0] = v69;
    v79 = 6;
    v70 = v72;
    v71 = v76;
    sub_217752F88();
    (*(v78 + 8))(v71, v70);
  }

  else
  {
    (*(v78 + 8))(v76, v72);
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

void sub_21732D9E4()
{
  OUTLINED_FUNCTION_171();
  v54 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258B8, &qword_21775D950);
  OUTLINED_FUNCTION_0_0(v5);
  v53 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_111();
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_160(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258C0, &qword_21775D958);
  sub_21733CCD4(&qword_27CB258C8, &qword_27CB258C0, &qword_21775D958);
  sub_2177532F8();
  v57[0] = sub_2172E924C(type metadata accessor for LegacyModelCodablePlaylistEntryItem);
  v57[1] = v15;
  LOBYTE(v55[0]) = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_177_2();
  sub_217752F88();
  if (v1)
  {

    (*(v53 + 8))(v2, v5);
  }

  else
  {

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v17 = (v54 + v16[10]);
    if (v17[1])
    {
      v18 = *v17;
      LOBYTE(v57[0]) = 2;
      OUTLINED_FUNCTION_184_2();
      sub_217752F48();
    }

    v19 = (v54 + v16[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v19) = *(v19 + 16);
    v57[48] = v20;
    v57[49] = v21;
    v58 = v19;
    sub_21733ABF0();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_184_2();
    sub_217752F88();

    v22 = sub_217751DC8();
    memcpy(v57, (v54 + v16[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v57) == 1)
    {
      v51 = v22;
    }

    else
    {

      v24 = sub_217751378();
      OUTLINED_FUNCTION_235_0(v24);
      sub_217751368();
      memcpy(v55, v57, sizeof(v55));
      sub_21733AC98();
      v25 = sub_217751358();
      v32 = v31;
      v52 = v25;
      v33 = sub_217751348();
      OUTLINED_FUNCTION_235_0(v33);
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_95();
      sub_21733ACEC(v34, v35);
      sub_217751308();

      sub_217275694(v52, v32);

      v51 = v55[0];
    }

    v55[3] = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
    v55[4] = &protocol witness table for LegacyModelCodablePlaylistEntryItem;
    __swift_allocate_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_32_9();
    sub_21733CAD0();
    OUTLINED_FUNCTION_160(v55, v55[3]);
    v23 = *(v54 + v16[12]);
    LegacyModelCodablePlaylistEntryItem.mergeAttributes(with:for:)();
    v56 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_0_21();
    v30 = sub_21733ACEC(v28, v29);
    OUTLINED_FUNCTION_166_2();
    OUTLINED_FUNCTION_184_2();
    sub_217752F88();

    OUTLINED_FUNCTION_160(v55, v55[3]);
    OUTLINED_FUNCTION_210_2(v16[13]);
    LegacyModelCodablePlaylistEntryItem.mergeRelationships(with:for:)();
    if (v36)
    {
      v56 = v36;
      OUTLINED_FUNCTION_166_2();
      OUTLINED_FUNCTION_184_2();
      sub_217752F88();
    }

    OUTLINED_FUNCTION_160(v55, v55[3]);
    v37 = OUTLINED_FUNCTION_210_2(v16[14]);
    LegacyModelCodablePlaylistEntryItem.mergeAssociations(with:for:)(v37, v38, v39, v40, v41, v42, v43, v44, v30, v27);
    if (v45)
    {
      v56 = v45;
      OUTLINED_FUNCTION_166_2();
      OUTLINED_FUNCTION_184_2();
      sub_217752F88();
      v49 = v5;
      v50 = v2;
    }

    else
    {
      v49 = v5;
      v50 = v2;
    }

    v46 = *(v54 + v16[15]);
    sub_217751DE8();
    sub_2174EB024(v51, v46);
    OUTLINED_FUNCTION_160(v55, v55[3]);
    LegacyModelCodablePlaylistEntryItem.mergeMetadata(with:for:)();
    v48 = v47;

    if (v48)
    {
      v56 = v48;
      sub_217752F88();
      (*(v53 + 8))(v50, v49);
    }

    else
    {
      (*(v53 + 8))(v50, v49);
    }

    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  OUTLINED_FUNCTION_170();
}

void sub_21732E104()
{
  OUTLINED_FUNCTION_171();
  v122 = v0;
  v4 = v3;
  v108 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  v5 = OUTLINED_FUNCTION_43(v108);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25750, &qword_21775D878);
  OUTLINED_FUNCTION_0_0(v9);
  v112 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_131_0();
  v16 = *(v4 + 24);
  v15 = *(v4 + 32);
  v107 = v4;
  v17 = OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_160(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25758, &qword_21775D880);
  sub_21733CCD4(&qword_27CB25760, &qword_27CB25758, &qword_21775D880);
  v19 = v122;
  sub_2177532F8();
  v20 = v122[1];
  v117[0] = *v122;
  v117[1] = v20;
  LOBYTE(v113[0]) = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_177_2();
  sub_217752F88();
  if (v1)
  {
    v21 = *(v112 + 8);
    v22 = OUTLINED_FUNCTION_70_6();
    v23(v22);
    goto LABEL_6;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v25 = (v122 + v24[10]);
  if (v25[1])
  {
    v26 = *v25;
    LOBYTE(v117[0]) = 2;
    OUTLINED_FUNCTION_66_4();
    sub_217752F48();
  }

  v27 = v122 + v24[9];
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v27) = v27[16];
  v119 = v28;
  v120 = v29;
  v121 = v27;
  v118 = 1;
  sub_21733ABF0();
  OUTLINED_FUNCTION_87_6();
  sub_217751DE8();
  OUTLINED_FUNCTION_66_4();
  sub_217752F88();

  v30 = sub_217751DC8();
  memcpy(v117, v122 + v24[11], sizeof(v117));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v117) != 1)
  {

    v35 = sub_217751378();
    OUTLINED_FUNCTION_235_0(v35);
    sub_217751368();
    memcpy(v113, v117, sizeof(v113));
    sub_21733AC98();
    OUTLINED_FUNCTION_176_4();
    v110 = sub_217751358();
    v39 = v38;
    v40 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v40);
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v41, v42);
    sub_217751308();

    sub_217275694(v110, v39);

    v30 = v113[0];
  }

  OUTLINED_FUNCTION_7_14();
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!swift_dynamicCast())
  {
    v116 = 0;
    memset(v115, 0, sizeof(v115));
    sub_2171F0738(v115, &qword_27CB25588, &unk_21775D380);
    v109 = v24;
    v36 = *(v122 + v24[12]);
    if (*(v36 + 16))
    {
      v37 = v107;
      v111 = v30;
      v113[0] = sub_217388F70(v122 + *(v108 + 20), v107, v36);
      LOBYTE(v115[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v45, v46);
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();

      v19 = v122;
    }

    else
    {
      v111 = v30;
      LOBYTE(v113[0]) = 3;
      type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
      sub_21733CDD0(&qword_27CB25778, type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes);
      OUTLINED_FUNCTION_177_2();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();
      v37 = v107;
    }

    v57 = v108;
    v58 = *(v19 + *(v108 + 24));
    v59 = *(v19 + v109[13]);
    v60 = *(v59 + 16);
    if (v58)
    {
      if (!v60)
      {
        goto LABEL_26;
      }

      v113[0] = v59;
      LOBYTE(v115[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v61, v62);
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();
    }

    else if (v60)
    {
      sub_2171FF30C(v37, v113);
      v63 = OUTLINED_FUNCTION_176_4();
      v64 = sub_2174D66A8(v63);
      v65 = sub_217751DE8();
      v113[0] = sub_2174D37FC(v65, v64);
      LOBYTE(v115[0]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v66, v67);
      OUTLINED_FUNCTION_15_18();
      sub_217752F88();

      v37 = v107;
    }

    else
    {
      LOBYTE(v113[0]) = 4;
      sub_21733C0C8();
      OUTLINED_FUNCTION_177_2();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();
    }

    v57 = v108;
LABEL_26:
    v68 = *(*(v122 + v109[14]) + 16);
    if (*(v122 + *(v57 + 28)))
    {
      if (!v68)
      {
        v106 = v2;
        v76 = v112;
        goto LABEL_35;
      }

      v113[0] = *(v122 + v109[14]);
      LOBYTE(v115[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v69, v70);
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();
      v106 = v2;
    }

    else
    {
      if (v68)
      {
        sub_2171FF30C(v37, v113);
        v71 = OUTLINED_FUNCTION_176_4();
        v72 = sub_2174D6674(v71);
        v73 = sub_217751DE8();
        v113[0] = sub_2174D37FC(v73, v72);
        LOBYTE(v115[0]) = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        OUTLINED_FUNCTION_0_21();
        sub_21733ACEC(v74, v75);
        OUTLINED_FUNCTION_15_18();
        sub_217752F88();
        v106 = v2;

        v76 = v112;
        v37 = v107;
        v57 = v108;
        goto LABEL_35;
      }

      LOBYTE(v113[0]) = 5;
      sub_21733C074();
      OUTLINED_FUNCTION_177_2();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();
      v106 = v2;
    }

    v76 = v112;
    v57 = v108;
LABEL_35:
    v77 = *(v122 + v109[15]);
    v78 = *(v77 + 16);
    if (*(v122 + *(v57 + 32)))
    {
      if (!v78)
      {
        if (*(v111 + 16))
        {
          v113[0] = v111;
          LOBYTE(v115[0]) = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          OUTLINED_FUNCTION_0_21();
          sub_21733ACEC(v85, v86);
          OUTLINED_FUNCTION_15_18();
          sub_217752F88();

          v87 = *(v76 + 8);
          v88 = OUTLINED_FUNCTION_153();
          v89(v88);
          goto LABEL_6;
        }

        (*(v76 + 8))(v106, v9);
        goto LABEL_33;
      }

      v79 = *(v122 + v109[15]);
      sub_217751DE8();
      v80 = sub_2174EB024(v111, v77);
    }

    else if (v78)
    {
      sub_2171FF30C(v37, v113);
      v81 = OUTLINED_FUNCTION_176_4();
      v82 = sub_2174D6640(v81);
      v83 = sub_217751DE8();
      v84 = sub_2175472EC(v83, v82);
      v80 = sub_2175472EC(v111, v84);
    }

    else
    {
      sub_2171FF30C(v37, v113);
      v90 = OUTLINED_FUNCTION_176_4();
      v91 = sub_2174D6640(v90);
      v80 = sub_2174D37FC(v111, v91);
    }

    v113[0] = v80;
    LOBYTE(v115[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_0_21();
    sub_21733ACEC(v96, v97);
    OUTLINED_FUNCTION_15_18();
    sub_217752F88();
    v98 = *(v76 + 8);
    v99 = OUTLINED_FUNCTION_153();
    v100(v99);
LABEL_33:

    goto LABEL_6;
  }

  v105 = v2;
  sub_2171F3F0C(v115, v113);
  v31 = v113[4];
  OUTLINED_FUNCTION_91_4(v113);
  v32 = *(v122 + v24[12]);
  v33 = *(v31 + 48);
  OUTLINED_FUNCTION_117_5();
  *&v115[0] = v34();
  v114 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_0_21();
  sub_21733ACEC(v43, v44);
  OUTLINED_FUNCTION_122_2();
  sub_217752F88();

  v47 = v113[4];
  OUTLINED_FUNCTION_91_4(v113);
  v48 = *(v122 + v24[13]);
  v49 = *(v47 + 56);
  OUTLINED_FUNCTION_117_5();
  v51 = v50();
  if (v51)
  {
    *&v115[0] = v51;
    v114 = 4;
    OUTLINED_FUNCTION_122_2();
    sub_217752F88();
  }

  v52 = v113[4];
  OUTLINED_FUNCTION_91_4(v113);
  v53 = *(v122 + v24[14]);
  v54 = *(v52 + 64);
  OUTLINED_FUNCTION_117_5();
  v56 = v55();
  if (v56)
  {
    *&v115[0] = v56;
    v114 = 5;
    OUTLINED_FUNCTION_122_2();
    sub_217752F88();
    v104 = v9;
  }

  else
  {
    v104 = v9;
  }

  v92 = *(v122 + v24[15]);
  sub_217751DE8();
  v93 = sub_2174EB024(v30, v92);
  v94 = v113[3];
  v95 = v113[4];
  OUTLINED_FUNCTION_160(v113, v113[3]);
  v101 = (*(v95 + 72))(v93, v107, v94, v95);

  if (v101)
  {
    *&v115[0] = v101;
    v114 = 6;
    sub_217752F88();
    OUTLINED_FUNCTION_105_6();
    v102(v105, v104);
  }

  else
  {
    OUTLINED_FUNCTION_105_6();
    v103(v105, v104);
  }

  __swift_destroy_boxed_opaque_existential_1(v113);
LABEL_6:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21732EF24(void *a1)
{
  v69 = type metadata accessor for CloudPlaylist(0);
  v2 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v3);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25788, &qword_21775D890);
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v66 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25790, &qword_21775D898);
  sub_21733CCD4(&qword_27CB25798, &qword_27CB25790, &qword_21775D898);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
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
    v35 = sub_2173884CC(v12 + *(v23 + 20), v68, v34);
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
    type metadata accessor for CloudPlaylist.Attributes(0);
    sub_21733CDD0(&qword_27CB257B0, type metadata accessor for CloudPlaylist.Attributes);
    sub_217752F88();
  }

  v48 = v71;
  v49 = v69;
  sub_21726A630(v12 + *(v69 + 24), v74, &qword_27CB24358, &unk_21775D510);
  if (*&v74[1] != 1)
  {
    memcpy(v75, v74, sizeof(v75));
    if (!*(*(v12 + v67[13]) + 16))
    {
      LOBYTE(v74[0]) = 4;
      sub_21733C170();
      sub_217752F88();
      sub_21726A354(v75);
LABEL_25:
      v49 = v69;
      goto LABEL_26;
    }

    *&v74[0] = sub_2173888A8();
    v73 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    sub_21726A354(v75);
LABEL_24:

    goto LABEL_25;
  }

  sub_2171F0738(v74, &qword_27CB24358, &unk_21775D510);
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
  sub_21726A630(v80 + v50, v74, &qword_27CB24350, &unk_21776A5D0);
  if (*&v74[1] == 1)
  {
    sub_2171F0738(v74, &qword_27CB24350, &unk_21776A5D0);
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
      *&v74[0] = sub_217388C50();
      v73 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_21726A300(v75);
      goto LABEL_34;
    }

    LOBYTE(v74[0]) = 5;
    sub_21733C11C();
    sub_217752F88();
    sub_21726A300(v75);
  }

  v56 = v72;
  v57 = v80;
  sub_21726A630(v80 + *(v69 + 32), v74, &qword_27CB24348, &unk_21775D520);
  if (*&v74[3] == 1)
  {
    sub_2171F0738(v74, &qword_27CB24348, &unk_21775D520);
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
      v61 = sub_217331390(v75, v48, v68, v60, sub_21733C1C4, sub_2174D5A94);
    }

    else
    {
      v61 = sub_217388E88();
    }

    v62 = v61;

    *&v74[0] = v62;
    v73 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    sub_217752F88();
    sub_21726A2AC(v75);
  }

  (*(v56 + 8))(v9, v5);
}

uint64_t sub_217330174(void *a1)
{
  v80 = type metadata accessor for CloudRadioShow(0);
  v2 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v3);
  v81 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25970, &qword_21775D9F0);
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v77 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25978, &qword_21775D9F8);
  sub_21733CCD4(&qword_27CB25980, &qword_27CB25978, &qword_21775D9F8);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
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
    v84[0] = sub_217388738();
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
    type metadata accessor for CloudRadioShow.Attributes(0);
    sub_21733CDD0(&qword_27CB25998, type metadata accessor for CloudRadioShow.Attributes);
    sub_217752F88();
    v35 = v79;
    v42 = v82;
  }

  v49 = v80;
  sub_21726A630(v12 + *(v80 + 24), v86, &qword_27CB25640, &qword_217764750);
  if (*&v86[1] == 1)
  {
    v82 = v42;
    sub_2171F0738(v86, &qword_27CB25640, &qword_217764750);
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
      v52 = sub_217388A28();
      v82 = v42;
      *&v86[0] = v52;
      v85 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
      sub_217752F88();
      sub_21733BB04(v84);

      v12 = v92;
    }

    else
    {
      v82 = v42;
      LOBYTE(v86[0]) = 4;
      sub_21733CA00();
      sub_217752F88();
      sub_21733BB04(v84);
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
      v56 = sub_2174D57FC(v84);
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
      sub_21733C9AC();
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
      v68 = sub_2174D5FC8(v67, v84);
      v69 = sub_217751DE8();
      v70 = sub_2175472EC(v69, v68);
      v71 = sub_2175472EC(v82, v70);
    }

    else
    {
      sub_2171FF30C(v79, v84);
      sub_217221020(v62);
      v72 = sub_217751DE8();
      v73 = sub_2174D5FC8(v72, v84);
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

uint64_t sub_217331390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *), uint64_t (*a6)(_BYTE *, _BYTE *))
{
  a5(a1, v15);
  sub_2171FF30C(a3, v14);
  result = a6(v15, v14);
  if (!v6)
  {
    v10 = result;
    v11 = sub_217751DE8();
    v12 = sub_2175472EC(v11, v10);
    v13 = sub_217751DE8();
    return sub_2175472EC(v13, v12);
  }

  return result;
}

uint64_t sub_217331434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v88 = a3;
  v89 = a2;
  v90 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v83 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v76[-v11];
  v13 = type metadata accessor for CloudMusicVideo(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v85 = &v76[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v82 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v76[-v23];
  v25 = type metadata accessor for CloudSong(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v84 = &v76[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = type metadata accessor for CloudTrack();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29, v31);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v76[-v34];
  sub_21733CAD0();
  v86 = v35;
  sub_21733CAD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_21733CE30();
    sub_21733CAD0();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v37 = v36[10];
    v38 = a1 + v36[9];
    v39 = *v38;
    v84 = *(v38 + 8);
    v40 = v84;
    LODWORD(v78) = *(v38 + 16);
    v41 = *(a1 + v37 + 8);
    v82 = *(a1 + v37);
    v79 = v39;
    v80 = v41;
    v42 = v36[11];
    memcpy(v94, (a1 + v42), 0x180uLL);
    v43 = *(a1 + v36[12]);
    v44 = *(a1 + v36[13]);
    v45 = a1;
    v46 = *(a1 + v36[14]);
    v47 = *(v45 + v36[15]);
    v81 = v45;
    v48 = &v12[v5[9]];
    v49 = v80;
    *v48 = v79;
    *(v48 + 1) = v40;
    v48[16] = v78;
    v50 = &v12[v5[10]];
    *v50 = v82;
    v50[1] = v49;
    memcpy(&v12[v5[11]], (v45 + v42), 0x180uLL);
    *&v12[v5[12]] = v43;
    *&v12[v5[13]] = v44;
    *&v12[v5[14]] = v46;
    *&v12[v5[15]] = v47;
    v51 = v83;
    sub_21726A630(v12, v83, &qword_27CB24808, &qword_217758D90);
    v52 = v89;
    sub_2172CA838(v89, v93);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v94, v91, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172F1160(v91, v51, v93, v88);
    sub_21733AB9C(v52);
    sub_2171F0738(v81, &qword_27CB24820, &unk_2177650E0);
    sub_2171F0738(v12, &qword_27CB24808, &qword_217758D90);
    v53 = type metadata accessor for CloudMusicVideo;
    v54 = v85;
  }

  else
  {
    sub_21733CE30();
    sub_21733CAD0();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v56 = v55[10];
    v57 = a1 + v55[9];
    v58 = *v57;
    v85 = *(v57 + 8);
    v59 = v85;
    v77 = *(v57 + 16);
    v60 = *(a1 + v56 + 8);
    v80 = *(a1 + v56);
    v78 = v58;
    v79 = v60;
    v61 = v55[11];
    memcpy(v94, (a1 + v61), 0x180uLL);
    v62 = v55[13];
    v83 = *(a1 + v55[12]);
    v63 = v83;
    v64 = *(a1 + v62);
    v65 = v55[15];
    v66 = *(a1 + v55[14]);
    v67 = *(a1 + v65);
    v68 = &v24[v17[9]];
    *v68 = v78;
    *(v68 + 1) = v59;
    v68[16] = v77;
    v69 = &v24[v17[10]];
    v70 = v79;
    *v69 = v80;
    v69[1] = v70;
    memcpy(&v24[v17[11]], (a1 + v61), 0x180uLL);
    *&v24[v17[12]] = v63;
    *&v24[v17[13]] = v64;
    *&v24[v17[14]] = v66;
    *&v24[v17[15]] = v67;
    v71 = v82;
    sub_21726A630(v24, v82, &qword_27CB24748, &unk_217758CD0);
    v72 = v89;
    sub_2172CA838(v89, v93);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v94, v91, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217303E60(v71, v93);
    sub_21733AB9C(v72);
    sub_2171F0738(a1, &qword_27CB24820, &unk_2177650E0);
    sub_2171F0738(v24, &qword_27CB24748, &unk_217758CD0);
    v53 = type metadata accessor for CloudSong;
    v54 = v84;
  }

  sub_21733CA78(v54, v53);
  result = sub_21733CA78(v86, type metadata accessor for CloudTrack);
  v74 = v91[1];
  v75 = v90;
  *v90 = v91[0];
  v75[1] = v74;
  v75[2] = v91[2];
  *(v75 + 6) = v92;
  *(v75 + 56) = EnumCaseMultiPayload == 1;
  return result;
}

void *sub_217331B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v44 - v13;
  sub_217275710(v2, v50);
  v48[0] = v50[0];
  v48[1] = v50[1];
  v48[2] = v50[2];
  v49 = v51;
  if (v52)
  {
    sub_2172F34C8(a1);
    sub_217283C08(v48);
    sub_21733CE30();
    type metadata accessor for CloudTrack();
    swift_storeEnumTagMultiPayload();
    v15 = v5[10];
    v16 = &v9[v5[9]];
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = v16[16];
    v20 = *&v9[v5[12]];
    v46 = v5[11];
    v47 = v20;
    v21 = v5[14];
    v45 = *&v9[v5[13]];
    v23 = *&v9[v15];
    v22 = *&v9[v15 + 8];
    v24 = *&v9[v21];
    v25 = *&v9[v5[15]];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v27 = a2 + v26[9];
    *v27 = v17;
    *(v27 + 8) = v18;
    *(v27 + 16) = v19;
    v28 = (a2 + v26[10]);
    *v28 = v23;
    v28[1] = v22;
    result = memcpy((a2 + v26[11]), &v9[v46], 0x180uLL);
    *(a2 + v26[12]) = v47;
    *(a2 + v26[13]) = v45;
    *(a2 + v26[14]) = v24;
    *(a2 + v26[15]) = v25;
  }

  else
  {
    sub_21730D230(a1);
    sub_217283B58(v48);
    sub_21733CE30();
    type metadata accessor for CloudTrack();
    swift_storeEnumTagMultiPayload();
    v30 = v10[10];
    v31 = &v14[v10[9]];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = v31[16];
    v35 = *&v14[v10[12]];
    v46 = v10[11];
    v47 = v35;
    v36 = v10[14];
    v45 = *&v14[v10[13]];
    v38 = *&v14[v30];
    v37 = *&v14[v30 + 8];
    v39 = *&v14[v36];
    v40 = *&v14[v10[15]];
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v42 = a2 + v41[9];
    *v42 = v32;
    *(v42 + 8) = v33;
    *(v42 + 16) = v34;
    v43 = (a2 + v41[10]);
    *v43 = v38;
    v43[1] = v37;
    result = memcpy((a2 + v41[11]), &v14[v46], 0x180uLL);
    *(a2 + v41[12]) = v47;
    *(a2 + v41[13]) = v45;
    *(a2 + v41[14]) = v39;
    *(a2 + v41[15]) = v40;
  }

  return result;
}

uint64_t sub_217331E44(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v162 = v2;
  v163 = v3;
  v164 = v5;
  v165 = v4;
  v159 = v7;
  v160 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v151 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v153 = &v147 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v152 = &v147 - v17;
  v156 = type metadata accessor for PlaylistEntryPropertyProvider();
  v18 = *(*(v156 - 1) + 64);
  MEMORY[0x28223BE20](v156, v19);
  v158 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v155 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v147 - v27;
  v29 = type metadata accessor for CloudMusicVideo(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  *&v157 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v34 = *(*(v33 - 1) + 64);
  MEMORY[0x28223BE20](v33, v35);
  v154 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v147 - v39;
  v41 = type metadata accessor for CloudSong(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8, v43);
  v45 = &v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CloudPlaylistEntry();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v147 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v147 - v53;
  sub_21733CAD0();
  v161 = v54;
  sub_21733CAD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v150 = v45;
    sub_21733CE30();
    sub_21733CAD0();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v78 = v77[10];
    v79 = v165;
    v80 = v165 + v77[9];
    v81 = *(v80 + 8);
    v153 = *v80;
    LODWORD(v152) = *(v80 + 16);
    v82 = *(v165 + v78 + 8);
    v156 = *(v165 + v78);
    *&v157 = v81;
    v155 = v82;
    v83 = v77[11];
    memcpy(v179, (v165 + v83), 0x180uLL);
    v84 = v77[13];
    v158 = *(v165 + v77[12]);
    v85 = v158;
    v86 = *(v165 + v84);
    v87 = *(v165 + v77[14]);
    v88 = *(v165 + v77[15]);
    v89 = &v40[v33[9]];
    *v89 = v153;
    *(v89 + 1) = v81;
    v89[16] = v152;
    v90 = &v40[v33[10]];
    v91 = v155;
    *v90 = v156;
    v90[1] = v91;
    memcpy(&v40[v33[11]], (v79 + v83), 0x180uLL);
    *&v40[v33[12]] = v85;
    *&v40[v33[13]] = v86;
    *&v40[v33[14]] = v87;
    *&v40[v33[15]] = v88;
    v92 = v154;
    sub_21726A630(v40, v154, &qword_27CB24748, &unk_217758CD0);
    v93 = v164;
    sub_2172CA838(v164, v167);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v179, v169, &qword_27CB25620, &qword_21776A5F0);

    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217303E60(v92, v167);
    sub_217283AFC(v168, v169);
    v169[56] = 0;
    Playlist.Entry.init(track:position:occurrence:)();

    sub_21733AB9C(v93);
    sub_2171F0738(v79, &qword_27CB24A28, &qword_217758FE0);
    sub_217283B58(v168);
    sub_2171F0738(v40, &qword_27CB24748, &unk_217758CD0);
    v75 = type metadata accessor for CloudSong;
    v76 = v150;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21733CE30();
    sub_21733CAD0();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v57 = v56[10];
    v58 = v165;
    v59 = (v165 + v56[9]);
    v60 = *v59;
    v156 = v59[1];
    v61 = v156;
    LODWORD(v150) = *(v59 + 16);
    v62 = *(v165 + v57 + 8);
    v153 = *(v165 + v57);
    v151 = v60;
    v152 = v62;
    v63 = v56[11];
    memcpy(v179, (v165 + v63), 0x180uLL);
    v64 = v56[13];
    v154 = *(v165 + v56[12]);
    v65 = v154;
    v66 = *(v165 + v64);
    v67 = v56[15];
    v158 = *(v165 + v56[14]);
    v68 = v158;
    v69 = *(v165 + v67);
    v70 = &v28[v21[9]];
    *v70 = v151;
    *(v70 + 1) = v61;
    v70[16] = v150;
    v71 = &v28[v21[10]];
    v72 = v152;
    *v71 = v153;
    *(v71 + 1) = v72;
    memcpy(&v28[v21[11]], (v58 + v63), 0x180uLL);
    *&v28[v21[12]] = v65;
    *&v28[v21[13]] = v66;
    *&v28[v21[14]] = v68;
    *&v28[v21[15]] = v69;
    v73 = v155;
    sub_21726A630(v28, v155, &qword_27CB24808, &qword_217758D90);
    v74 = v164;
    sub_2172CA838(v164, v167);
    sub_217751DE8();

    sub_217751DE8();
    sub_21726A630(v179, v169, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172F1160(v73, v167);
    sub_217283BAC(v168, v169);
    v169[56] = 1;
    Playlist.Entry.init(track:position:occurrence:)();

    sub_21733AB9C(v74);
    sub_2171F0738(v58, &qword_27CB24A28, &qword_217758FE0);
    sub_217283C08(v168);
    sub_2171F0738(v28, &qword_27CB24808, &qword_217758D90);
    v75 = type metadata accessor for CloudMusicVideo;
    v76 = v157;
LABEL_5:
    sub_21733CA78(v76, v75);
    v94 = type metadata accessor for CloudPlaylistEntry;
    v95 = v161;
    return sub_21733CA78(v95, v94);
  }

  memcpy(v181, v50, 0x1F9uLL);
  sub_21726A630(v181, v180, &qword_27CB256E8, &qword_21775D830);
  if ((v180[504] & 1) == 0)
  {
    memcpy(v176, v180, sizeof(v176));
    v100 = v176[0];
    v101 = v176[1];
    v102 = qword_280BE90D0;
    sub_217751DE8();
    if (v102 != -1)
    {
      swift_once();
    }

    v104 = qword_280BE90E8;
    v103 = unk_280BE90F0;
    sub_217751DE8();
    sub_217751DE8();
    v157 = xmmword_280BE90D8;

    *v177 = v100;
    *&v177[8] = v101;
    *&v177[16] = v100;
    *&v177[24] = v101;
    v177[32] = 6;
    bzero(&v177[40], 0xE0uLL);
    *&v177[264] = MEMORY[0x277D84FA0];
    v177[272] = 0;
    *&v177[280] = &unk_28295F140;
    *&v177[288] = v157;
    *&v177[304] = v104;
    *&v177[312] = v103;
    memset(&v177[320], 0, 32);
    v177[352] = 4;
    v174 = 0;
    memset(v173, 0, sizeof(v173));
    v175 = -1;
    memcpy(v179, v177, 0x161uLL);
    MusicIdentifierSet.equivalentPlaylistEntryIdentifierSet(with:)(v178);
    sub_217269F50(v177);
    if (qword_280BE8AC8 != -1)
    {
      swift_once();
    }

    v105 = *algn_280BE8AD8;
    *&v157 = qword_280BE8AD0;
    LODWORD(v155) = byte_280BE8AE0;
    sub_217751DE8();
    v154 = sub_217751DC8();
    v150 = sub_217751DC8();
    v149 = sub_217751DC8();
    v148 = sub_217751DC8();
    v172 = 0;
    memset(v171, 0, sizeof(v171));
    sub_2172A497C(v179);
    v106 = v158;
    memcpy(v158, v179, 0x221uLL);
    *(v106 + 69) = 0;
    v106[560] = 1;
    *(v106 + 568) = 0u;
    *(v106 + 584) = 0u;
    v107 = v156;
    v108 = v156[8];
    v109 = sub_2177517D8();
    __swift_storeEnumTagSinglePayload(&v106[v108], 1, 1, v109);
    __swift_storeEnumTagSinglePayload(&v106[v107[9]], 1, 1, v109);
    v110 = &v106[v107[10]];
    *(v110 + 48) = 0;
    *(v110 + 16) = 0u;
    *(v110 + 32) = 0u;
    *v110 = 0u;
    *(v110 + 56) = -1;
    v111 = &v106[v107[11]];
    *v111 = 0;
    *(v111 + 1) = 0;
    v111[16] = 0;
    v112 = &v106[v107[12]];
    *(v112 + 14) = 0;
    *(v112 + 5) = 0u;
    *(v112 + 6) = 0u;
    *(v112 + 3) = 0u;
    *(v112 + 4) = 0u;
    *(v112 + 1) = 0u;
    *(v112 + 2) = 0u;
    *v112 = 0u;
    v113 = &v106[v107[14]];
    *v113 = 0;
    *(v113 + 1) = 0;
    v159 = v107[15];
    __swift_storeEnumTagSinglePayload(&v106[v159], 1, 1, v109);
    v114 = &v106[v107[17]];
    *(v114 + 32) = 0;
    *v114 = 0u;
    *(v114 + 16) = 0u;
    if (qword_280BE3168 != -1)
    {
      swift_once();
    }

    v115 = qword_280C01FB0;
    if (qword_280C01FB0 >> 62)
    {
      type metadata accessor for AnyMusicProperty();
      sub_217751DE8();
      v146 = sub_217752D28();

      v115 = v146;
    }

    else
    {
      sub_217751DE8();
      sub_217753128();
      type metadata accessor for AnyMusicProperty();
    }

    v116 = v156;
    v117 = v158;
    v118 = &v158[v156[13]];
    v119 = &v158[v156[16]];
    *&v158[v156[18]] = v115;
    v120 = &v117[v116[21]];
    memcpy(&v117[v116[19]], v178, 0x161uLL);
    v121 = &v117[v116[20]];
    *v121 = v157;
    *(v121 + 1) = v105;
    v121[16] = v155;
    *v120 = 0;
    *(v120 + 1) = 0;
    *&v117[v116[22]] = v154;
    v122 = v149;
    *&v117[v116[23]] = v150;
    *&v117[v116[24]] = v122;
    *&v117[v116[25]] = v148;
    sub_21733BBDC(v173, v110, &qword_27CB27D20, &qword_217758B80);
    *v118 = v160;
    v118[8] = 0;
    sub_21733BBDC(v171, v114, &qword_27CB24BA8, &unk_217772FF0);
    v123 = v176[60];
    *v119 = v176[59];
    *(v119 + 1) = v123;
    memcpy(v170, &v176[2], sizeof(v170));
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v170) == 1)
    {
      memcpy(v169, v179, 0x221uLL);
      sub_217751DE8();
    }

    else
    {
      memcpy(v169, v170, 0x1B8uLL);
      sub_217751DE8();
      sub_21726A630(&v176[2], v168, &qword_27CB25000, &unk_21776EA00);
      CloudAttribute<A>.convertToArtwork()(v167);
      memcpy(v166, v169, sizeof(v166));
      sub_2171F0738(v166, &qword_27CB243F0, &qword_21775D690);
      memcpy(v168, v167, 0x221uLL);
      nullsub_1(v168, v124);
      memcpy(v169, v168, 0x221uLL);
    }

    v126 = v163;
    v125 = v164;
    v127 = v158;
    memcpy(v168, v158, 0x221uLL);
    sub_2171F0738(v168, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v127, v169, 0x221uLL);
    if ((v176[58] & 1) == 0)
    {
      v128 = v158;
      *(v158 + 69) = v176[57] / 1000.0;
      v128[560] = 0;
    }

    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v129 = type metadata accessor for CloudFormatter();
    v130 = __swift_project_value_buffer(v129, qword_280BE8918);
    v131 = v176[62];
    v132 = v153;
    __swift_storeEnumTagSinglePayload(v153, 1, 1, v109);
    if (v131)
    {
      v133 = *(v130 + *(v129 + 20));
      v134 = sub_217751F18();
      v135 = [v133 dateFromString_];

      if (v135)
      {
        v136 = v151;
        sub_2177517C8();

        v137 = 0;
        v138 = v153;
      }

      else
      {
        v137 = 1;
        v138 = v153;
        v136 = v151;
      }

      sub_2171F0738(v138, &qword_27CB241C0, &qword_217759480);
      __swift_storeEnumTagSinglePayload(v136, v137, 1, v109);
      sub_21726A594(v136, v138, &qword_27CB241C0, &qword_217759480);
      v139 = v152;
      sub_21726A594(v138, v152, &qword_27CB241C0, &qword_217759480);
    }

    else
    {
      sub_2171F0738(v132, &qword_27CB241C0, &qword_217759480);
      v139 = v152;
      __swift_storeEnumTagSinglePayload(v152, 1, 1, v109);
    }

    sub_21733BC90(v176);
    v140 = v158;
    sub_21733BBDC(v139, &v158[v159], &qword_27CB241C0, &qword_217759480);
    v141 = v156;
    v126[5] = v156;
    v126[6] = &protocol witness table for PlaylistEntryPropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v126 + 2);
    sub_21733CAD0();

    v143 = (boxed_opaque_existential_0 + v141[19]);
    v145 = *v143;
    v144 = v143[1];
    sub_217751DE8();
    sub_21733AB9C(v125);
    sub_2171F0738(v165, &qword_27CB24A28, &qword_217758FE0);
    sub_2171F0738(v181, &qword_27CB256E8, &qword_21775D830);
    sub_21733CA78(v161, type metadata accessor for CloudPlaylistEntry);
    *v126 = v145;
    v126[1] = v144;
    v94 = type metadata accessor for PlaylistEntryPropertyProvider;
    v95 = v140;
    return sub_21733CA78(v95, v94);
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry))
  {
    v98 = v164;
    v99 = v165;
    (*(v97 + 16))(v165, v160, v159, v164, v162, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration);

    sub_21733AB9C(v98);
    sub_2171F0738(v99, &qword_27CB24A28, &qword_217758FE0);
    sub_2171F0738(v181, &qword_27CB256E8, &qword_21775D830);
    sub_21733CA78(v161, type metadata accessor for CloudPlaylistEntry);
    return sub_2171F0738(v180, &qword_27CB256E8, &qword_21775D830);
  }

  else
  {
    v179[0] = 0;
    v179[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AB9C0);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217333074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v18[-v13 - 8];
  sub_21726A630(a3, &v18[-v13 - 8], &qword_27CB24A28, &qword_217758FE0);
  v15 = *a5;
  sub_2172CA838(a6, v18);

  return sub_217331E44(v14, a4);
}

uint64_t sub_21733316C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v112 = v3;
  v113 = v2;
  v5 = v4;
  v111 = v6;
  v116 = type metadata accessor for CloudGenre(0);
  v7 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116, v8);
  v117 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for GenrePropertyProvider();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v105 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v94 - v16;
  if (qword_280BE62C8 != -1)
  {
    swift_once();
  }

  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0;
  sub_2172DB230();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v19 = v18[10];
  v20 = (v5 + v18[9]);
  v21 = v20[1];
  v109 = *v20;
  LODWORD(v108) = *(v20 + 16);
  v22 = *(v5 + v19 + 8);
  v114 = *(v5 + v19);
  v23 = v18[13];
  v106 = *(v5 + v18[12]);
  v24 = *(v5 + v23);
  v25 = *(v5 + v18[14]);
  v26 = *(v5 + v18[15]);
  sub_2172A497C(v138);
  memcpy(v17, v138, 0x221uLL);
  *(v17 + 36) = xmmword_2177586D0;
  *(v17 + 37) = 0u;
  *(v17 + 38) = 0u;
  *(v17 + 39) = 0u;
  v27 = v10[9];
  v103 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(&v17[v27], 1, 1, v103);
  memcpy(&v17[v10[10]], v138, 0x221uLL);
  v28 = &v17[v10[12]];
  *(v28 + 48) = 0;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v104 = v28;
  *(v28 + 56) = -1;
  v29 = v10[13];
  v30 = sub_2177516D8();
  v110 = v29;
  v102 = v30;
  __swift_storeEnumTagSinglePayload(&v17[v29], 1, 1, v30);
  v31 = &v17[v10[15]];
  *(v31 + 12) = 0;
  *(v31 + 4) = 0u;
  *(v31 + 5) = 0u;
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = qword_280BE3A58;
  v107 = v21;
  sub_217751DE8();
  v115 = v22;
  v33 = v24;
  v34 = v106;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v32 != -1)
  {
    swift_once();
  }

  v35 = qword_280C01FD0;
  v118 = v5;
  v100 = qword_280C01FD0 >> 62;
  v101 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v35 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v36 = &v17[v10[11]];
  *&v17[v10[17]] = v35;
  v37 = &v17[v10[20]];
  memcpy(&v17[v10[18]], v137, 0x161uLL);
  v38 = &v17[v10[19]];
  v39 = v107;
  *v38 = v109;
  *(v38 + 1) = v39;
  v38[16] = v108;
  v40 = v115;
  *v37 = v114;
  v37[1] = v40;
  *&v17[v10[21]] = v34;
  *&v17[v10[22]] = v33;
  *&v17[v10[23]] = v25;
  *&v17[v10[24]] = v26;
  v41 = v117;
  sub_21733CAD0();
  v42 = (v41 + *(v116 + 20));
  v43 = v42[70];
  *v36 = v42[69];
  *(v36 + 1) = v43;
  memcpy(v127, v42, sizeof(v127));
  memcpy(v128, v42, sizeof(v128));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v128) == 1)
  {
    memcpy(v126, v138, sizeof(v126));
    sub_217751DE8();
  }

  else
  {
    memcpy(v126, v128, 0x1B8uLL);
    sub_217751DE8();
    sub_21726A630(v127, v125, &qword_27CB25000, &unk_21776EA00);
    CloudAttribute<A>.convertToArtwork()(v120);
    memcpy(v119, v126, sizeof(v119));
    sub_2171F0738(v119, &qword_27CB243F0, &qword_21775D690);
    memcpy(v125, v120, 0x221uLL);
    nullsub_1(v125, v44);
    memcpy(v126, v125, sizeof(v126));
  }

  memcpy(v125, v17, 0x221uLL);
  sub_2171F0738(v125, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v17, v126, 0x221uLL);
  *(v17 + 71) = v42[57];
  if (v42[66])
  {
    v45 = v42[65];
    v47 = v42[63];
    v46 = v42[64];
    v48 = v42[61];
    v108 = v42[62];
    v109 = v46;
    v50 = v42[59];
    v49 = v42[60];
    v106 = v42[58];
    v107 = v49;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v48 = 0;
    v108 = 0;
    v109 = 0;
    v47 = 0;
    v45 = 0;
    v50 = 1;
  }

  v51 = &v17[v10[14]];
  v52 = *(v17 + 37);
  v120[0] = *(v17 + 36);
  v120[1] = v52;
  v53 = *(v17 + 39);
  v120[2] = *(v17 + 38);
  v120[3] = v53;
  sub_217751DE8();
  sub_2171F0738(v120, &qword_27CB24B70, &unk_217759460);
  v54 = v107;
  *(v17 + 72) = v106;
  *(v17 + 73) = v50;
  *(v17 + 74) = v54;
  *(v17 + 75) = v48;
  v55 = v109;
  *(v17 + 76) = v108;
  *(v17 + 77) = v47;
  *(v17 + 78) = v55;
  *(v17 + 79) = v45;
  *(v17 + 80) = v42[67];
  v56 = v42[76];
  *v51 = v42[75];
  *(v51 + 1) = v56;
  v57 = *(type metadata accessor for CloudGenre.Attributes(0) + 56);
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(v42 + v57, &v17[v110], &unk_27CB277C0, &qword_217758DC0);
  v58 = v42[56];
  *(v17 + 69) = v42[55];
  *(v17 + 70) = v58;
  v59 = v42[72];
  if (v59)
  {
    v60 = v42[74];
    v61 = v118;
    if (!v60)
    {
      sub_217751DE8();
      goto LABEL_27;
    }

    v110 = v42[71];
    v108 = v42[73];
    v62 = qword_280BE4A88;
    sub_217751DE8();
    sub_217751DE8();
    if (v62 != -1)
    {
      swift_once();
    }

    v109 = v60;
    v64 = qword_280BE4A90;
    v63 = *algn_280BE4A98;
    v99 = byte_280BE4AA0;
    v98 = xmmword_280BE62D0;
    v65 = unk_280BE62E8;
    v97 = qword_280BE62E0;
    swift_bridgeObjectRetain_n();
    v96 = v65;
    sub_217751DE8();

    v106 = v63;
    v107 = v64;
    if (v115)
    {
      *v119 = v114;
      *&v119[8] = v115;
      v123 = 47;
      v124 = 0xE100000000000000;
      sub_217751DE8();
      sub_217751DE8();
      MEMORY[0x21CEA23B0](v64, v63);
      MEMORY[0x21CEA23B0](47, 0xE100000000000000);
      MEMORY[0x21CEA23B0](*v117, v117[1]);
      v121 = 47;
      v122 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](v64, v63);
      MEMORY[0x21CEA23B0](47, 0xE100000000000000);
      MEMORY[0x21CEA23B0](v110, v59);
      sub_21733A5C8();
      v114 = sub_217752998();
      v95 = v66;
    }

    else
    {
      sub_217751DE8();
      v114 = 0;
      v95 = 0;
    }

    v115 = sub_217751DC8();
    v94 = sub_217751DC8();
    v67 = sub_217751DC8();
    v68 = sub_217751DC8();
    v69 = v105;
    memcpy(v105, v138, 0x221uLL);
    *(v69 + 552) = 0u;
    *(v69 + 568) = 0u;
    *(v69 + 73) = 1;
    *(v69 + 37) = 0u;
    *(v69 + 38) = 0u;
    *(v69 + 39) = 0u;
    *(v69 + 80) = 0;
    __swift_storeEnumTagSinglePayload(&v69[v10[9]], 1, 1, v103);
    memcpy(&v69[v10[10]], v138, 0x221uLL);
    v70 = &v69[v10[12]];
    *(v70 + 6) = 0;
    *(v70 + 1) = 0u;
    *(v70 + 2) = 0u;
    *v70 = 0u;
    v70[56] = -1;
    __swift_storeEnumTagSinglePayload(&v69[v10[13]], 1, 1, v102);
    v71 = &v69[v10[14]];
    *v71 = 0;
    *(v71 + 1) = 0;
    v72 = &v69[v10[15]];
    *(v72 + 12) = 0;
    *(v72 + 4) = 0u;
    *(v72 + 5) = 0u;
    *(v72 + 2) = 0u;
    *(v72 + 3) = 0u;
    *v72 = 0u;
    *(v72 + 1) = 0u;
    *&v69[v10[16]] = 0;
    if (v100)
    {
      type metadata accessor for AnyMusicProperty();
      sub_217751DE8();
      v73 = sub_217752D28();
    }

    else
    {
      v73 = v101;
      sub_217751DE8();
      sub_217753128();
      type metadata accessor for AnyMusicProperty();
    }

    v74 = &v69[v10[11]];
    *&v69[v10[17]] = v73;
    v75 = &v69[v10[20]];
    v76 = &v69[v10[18]];
    v77 = v110;
    *v76 = v110;
    *(v76 + 1) = v59;
    *(v76 + 2) = v77;
    *(v76 + 3) = v59;
    v76[32] = 0;
    *(v76 + 33) = v123;
    *(v76 + 9) = *(&v123 + 3);
    bzero(v76 + 40, 0xE0uLL);
    *(v76 + 33) = MEMORY[0x277D84FA0];
    v76[272] = 0;
    *(v76 + 273) = v121;
    *(v76 + 69) = *(&v121 + 3);
    *(v76 + 35) = &unk_28295F1C0;
    *(v76 + 18) = v98;
    v78 = v96;
    *(v76 + 38) = v97;
    *(v76 + 39) = v78;
    *(v76 + 20) = 0u;
    *(v76 + 21) = 0u;
    v76[352] = 4;
    v79 = &v69[v10[19]];
    v80 = v106;
    *v79 = v107;
    *(v79 + 1) = v80;
    v79[16] = v99;
    v81 = v115;
    v82 = v95;
    *v75 = v114;
    v75[1] = v82;
    *&v69[v10[21]] = v81;
    *&v69[v10[22]] = v94;
    *&v69[v10[23]] = v67;
    *&v69[v10[24]] = v68;
    v83 = v109;
    *v74 = v108;
    *(v74 + 1) = v83;
    *&v119[40] = v10;
    *&v119[48] = &protocol witness table for GenrePropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v119[16]);
    sub_21733CAD0();
    v85 = (boxed_opaque_existential_0 + v10[18]);
    v86 = v85[1];
    *v119 = *v85;
    *&v119[8] = v86;
    sub_217751DE8();
    v87 = v104;
    sub_2171F0738(v104, &qword_27CB256A0, &unk_21775D750);
    v88 = *&v119[16];
    *v87 = *v119;
    *(v87 + 16) = v88;
    *(v87 + 32) = *&v119[32];
    *(v87 + 48) = *&v119[48];
    *(v87 + 56) = 0;
    sub_21733CA78(v69, type metadata accessor for GenrePropertyProvider);
  }

  else
  {
    sub_217751DE8();
  }

  v61 = v118;
LABEL_27:
  v89 = v117;
  v90 = *(v116 + 32);
  v91 = *(v117 + v90);
  if (v91 == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = *(v117 + v90);
  }

  *&v17[v10[16]] = v92;
  *&v119[24] = v10;
  *&v119[32] = &protocol witness table for GenrePropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v119);
  sub_21733CAD0();
  sub_217221020(v91);
  Genre.init(propertyProvider:)(v119, v111);

  sub_21733AB9C(v113);
  sub_2171F0738(v61, &qword_27CB24768, &qword_217758CF0);
  sub_21733CA78(v89, type metadata accessor for CloudGenre);
  return sub_21733CA78(v17, type metadata accessor for GenrePropertyProvider);
}

void *sub_217333E00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v153 = a1;
  v151 = type metadata accessor for CloudGenre(0);
  v3 = *(*(v151 - 1) + 64);
  MEMORY[0x28223BE20](v151, v4);
  v152 = (&v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = type metadata accessor for CloudGenre.Attributes(0);
  v6 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150, v7);
  v16 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6A70 != -1)
  {
    swift_once();
  }

  sub_2176CAE18(qword_280C021E8, v8, v9, v10, v11, v12, v13, v14, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  memcpy(v172, v171, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v172) == 1)
  {
    sub_2172E22C0(v154);
  }

  else
  {
    memcpy(v154, v172, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v156);
    memcpy(v155, v154, 0x221uLL);
    sub_217284084(v155);
    memcpy(v157, v156, sizeof(v157));
    nullsub_1(v157, v17);
    memcpy(v154, v157, 0x1B8uLL);
  }

  if (qword_280BE6AE0 != -1)
  {
    swift_once();
  }

  v18 = sub_2172A4344();
  v148 = v19;
  v149 = v18;
  if (qword_280BE6AA8 != -1)
  {
    swift_once();
  }

  v147 = sub_2172A4850(qword_280C02210);
  if (qword_280BE6AD0 != -1)
  {
    swift_once();
  }

  sub_2176CAE24(qword_280C02228, v20, v21, v22, v23, v24, v25, v26, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v27 = v164;
  if (v164 == 1)
  {
    v139 = 0;
    v140 = 0;
    v27 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v138 = 0;
  }

  else
  {
    v144 = v169;
    v145 = v170;
    v28 = v168;
    v142 = v167;
    v29 = v166;
    v139 = v163;
    v140 = v165;
    sub_217751DE8();
    sub_217751DE8();
    v141 = v29;
    sub_217751DE8();
    v143 = v28;
    sub_217751DE8();
    v138 = sub_217751DC8();
    sub_2171F0738(&v163, &qword_27CB24B70, &unk_217759460);
  }

  v146 = v27;
  if (qword_280BE6A98 != -1)
  {
    swift_once();
  }

  v137 = sub_2172A4834(qword_280C02208);
  v30 = v2[5];
  v31 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v30);
  (*(v31 + 96))(v155, v30, v31);
  v32 = v155[3];
  v33 = v155[4];
  __swift_project_boxed_opaque_existential_1(v155, v155[3]);
  (*(*(v33 + 8) + 48))(v157, v32);
  __swift_destroy_boxed_opaque_existential_1(v155);
  v34 = v157[0];
  v35 = v157[1];
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  if (v34 == qword_280BE4BF8 && v35 == unk_280BE4C00)
  {

    v38 = 1;
  }

  else
  {
    v37 = sub_217753058();

    if (v37)
    {
      v38 = 1;
    }

    else
    {
      v38 = 3;
    }
  }

  HIDWORD(v136) = v38;
  if (qword_280BE6A88 != -1)
  {
    swift_once();
  }

  v46 = sub_2172A4344();
  v47 = v39;
  if (qword_280BE6A80 != -1)
  {
    swift_once();
  }

  v48 = qword_280C021F0;
  sub_2176CA6B8(qword_280C021F0, v39, v40, v41, v42, v43, v44, v45, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v49 = v155[1];
  if (v155[1])
  {
    v135 = v155[0];
    sub_217751DE8();
    sub_21728418C(v155);
  }

  else
  {
    sub_2171F0738(v155, &unk_27CB27760, &unk_21775A2D0);
    v135 = 0;
  }

  sub_2176CA6B8(v48, v50, v51, v52, v53, v54, v55, v56, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  if (v155[1])
  {
    v57 = sub_2172A4344();
    if (v58)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0;
    }

    v134 = v59;
    if (v58)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0xE000000000000000;
    }

    sub_21728418C(v155);
  }

  else
  {
    sub_2171F0738(v155, &unk_27CB27760, &unk_21775A2D0);
    v134 = 0;
    v60 = 0;
  }

  if (qword_280BE6AF8 != -1)
  {
    swift_once();
  }

  v68 = sub_2172A4344();
  v69 = v61;
  if (qword_280BE6A90 != -1)
  {
    swift_once();
  }

  if (!v47)
  {
    v47 = 0xE000000000000000;
    v46 = 0;
  }

  v70 = &v16[*(v150 + 56)];
  sub_2176CAEB4(qword_280C02200, v61, v62, v63, v64, v65, v66, v67, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154[0]);
  memcpy(v16, v154, 0x1B8uLL);
  v71 = v148;
  *(v16 + 55) = v149;
  *(v16 + 56) = v71;
  v72 = v139;
  *(v16 + 57) = v147;
  *(v16 + 58) = v72;
  v73 = v140;
  v74 = v141;
  *(v16 + 59) = v146;
  *(v16 + 60) = v73;
  v75 = v142;
  v76 = v143;
  *(v16 + 61) = v74;
  *(v16 + 62) = v75;
  v78 = v144;
  v77 = v145;
  *(v16 + 63) = v76;
  *(v16 + 64) = v78;
  *(v16 + 65) = v77;
  v79 = v137;
  *(v16 + 66) = v138;
  *(v16 + 67) = v79;
  v16[544] = BYTE4(v136);
  *(v16 + 69) = v46;
  *(v16 + 70) = v47;
  v80 = v134;
  *(v16 + 71) = v135;
  *(v16 + 72) = v49;
  *(v16 + 73) = v80;
  *(v16 + 74) = v60;
  *(v16 + 75) = v68;
  *(v16 + 76) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25470, &unk_21775D4C0);
  swift_allocObject();
  v81 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  v82 = sub_2172A4818(v81);

  if (v82 <= 1)
  {
    v83 = 1;
  }

  else
  {
    v83 = v82;
  }

  v85 = *v2;
  v84 = v2[1];
  v86 = v151;
  v87 = v152;
  v88 = v151[5];
  sub_21733CAD0();
  v89 = v87 + v86[6];
  *v89 = 0;
  *(v89 + 1) = 0;
  *(v89 + 2) = 1;
  *(v89 + 24) = 0u;
  *(v89 + 40) = 0u;
  *(v89 + 56) = 0u;
  *(v89 + 72) = 0u;
  *(v89 + 88) = 0u;
  *(v89 + 104) = 0u;
  *(v89 + 15) = 0;
  *v87 = v85;
  v87[1] = v84;
  *(v87 + v86[7]) = 1;
  *(v87 + v86[8]) = v83;
  v90 = v2[5];
  v91 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v90);
  v92 = *(v91 + 24);
  sub_217751DE8();
  v92(v156, v90, v91);
  nullsub_1(v156, v93);
  memcpy(v157, v156, 0x161uLL);
  v94 = v87;
  sub_21733CAD0();
  v95 = v2[5];
  v96 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v95);
  (*(v96 + 96))(v155, v95, v96);
  v97 = v155[3];
  v98 = v155[4];
  __swift_project_boxed_opaque_existential_1(v155, v155[3]);
  (*(*(v98 + 8) + 48))(v161, v97);
  __swift_destroy_boxed_opaque_existential_1(v155);
  v150 = v161[1];
  v151 = v161[0];
  LODWORD(v149) = v162;
  v99 = v2[5];
  v100 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v99);
  (*(v100 + 96))(v155, v99, v100);
  v101 = v155[3];
  v102 = v155[4];
  __swift_project_boxed_opaque_existential_1(v155, v155[3]);
  v103 = (*(*(v102 + 8) + 56))(v101);
  v147 = v104;
  v148 = v103;
  __swift_destroy_boxed_opaque_existential_1(v155);
  memcpy(v155, v157, 0x168uLL);
  memset(&v155[45], 0, 24);
  nullsub_1(v155, v105);
  v106 = v2[5];
  v107 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v106);
  (*(v107 + 96))(v158, v106, v107);
  v108 = v159;
  v109 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v110 = (*(*(v109 + 8) + 64))(v108);
  __swift_destroy_boxed_opaque_existential_1(v158);
  v111 = v2[5];
  v112 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v111);
  (*(v112 + 96))(v158, v111, v112);
  v113 = v159;
  v114 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v115 = (*(*(v114 + 8) + 72))(v113);
  __swift_destroy_boxed_opaque_existential_1(v158);
  v116 = v2[5];
  v117 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v116);
  (*(v117 + 96))(v158, v116, v117);
  v118 = v159;
  v119 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v120 = (*(*(v119 + 8) + 80))(v118);
  __swift_destroy_boxed_opaque_existential_1(v158);
  v121 = v2[5];
  v122 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v121);
  (*(v122 + 96))(v158, v121, v122);
  v123 = v159;
  v124 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v125 = (*(*(v124 + 8) + 88))(v123);
  sub_21733CA78(v94, type metadata accessor for CloudGenre);
  sub_21733CA78(v16, type metadata accessor for CloudGenre.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v158);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v127 = v153;
  v128 = v153 + v126[9];
  v129 = v150;
  *v128 = v151;
  *(v128 + 8) = v129;
  *(v128 + 16) = v149;
  v130 = (v127 + v126[10]);
  v131 = v147;
  *v130 = v148;
  v130[1] = v131;
  result = memcpy((v127 + v126[11]), v155, 0x180uLL);
  *(v127 + v126[12]) = v110;
  *(v127 + v126[13]) = v115;
  *(v127 + v126[14]) = v120;
  *(v127 + v126[15]) = v125;
  return result;
}

void sub_2173349C8()
{
  OUTLINED_FUNCTION_12();
  v257 = v0;
  v260 = v1;
  v3 = v2;
  v5 = v4;
  v254 = v6;
  v7 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_31();
  v245 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_99();
  v259 = v16;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v240 - v19;
  v21 = v288;
  sub_21733C5F0(v5, v288);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_65_6();
  sub_2176E3E18(v22, v23, v24, v25);
  v252 = LOBYTE(v282[0]);
  if (v293 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v292;
  }

  if (v293 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v293;
  }

  v282[0] = v26;
  v282[1] = v27;
  sub_2171FB568(v292, v293);
  v305.value.rawValue._countAndFlagsBits = v282;
  MusicPersonalRecommendation._DisplayKind.init(_:)(v305);
  v253 = LOBYTE(v285[0]);
  v287 = MEMORY[0x277D84F90];
  if (v300)
  {
    sub_2176DD510(v300, &v287);
  }

  sub_21726A630(&v301, v283, &qword_27CB244B0, &unk_21776DB80);
  v258 = v5;
  v255 = v3;
  if (v284 == 1)
  {
    sub_2171F0738(v283, &qword_27CB244B0, &unk_21776DB80);
LABEL_14:
    OUTLINED_FUNCTION_111_4(0);
    OUTLINED_FUNCTION_199_0(v35);
    goto LABEL_15;
  }

  sub_21726A630(v283, v282, &qword_27CB244B8, &unk_217758990);
  sub_21728373C(v283);
  if (!v282[2])
  {
    sub_2171F0738(v282, &qword_27CB244B8, &unk_217758990);
    v3 = v255;
    goto LABEL_14;
  }

  v28 = v282[0];
  v29 = v282[1];
  v30 = OUTLINED_FUNCTION_204();
  sub_2171FB568(v30, v31);
  sub_2176DE128();
  v261 = 0;
  v250 = v282[3];
  v251 = v32;
  v33 = v282[4];
  v249 = v282[5];
  v21 = v282[6];
  v34 = v282[7];
  v5 = v282[8];
  sub_21726A630(&v282[9], v286, &qword_27CB24188, &dword_217758930);
  v285[0] = v28;
  v285[1] = v29;
  v285[2] = v251;
  v285[3] = v250;
  v285[4] = v33;
  v285[5] = v249;
  v285[6] = v21;
  v285[7] = v34;
  v285[8] = v5;
  v286[5] = v282[14];
  v286[6] = v282[15];
  OUTLINED_FUNCTION_236_0();
  v7 = v261;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v282, &qword_27CB244C0, &qword_21775D9C0);
  v3 = v255;
LABEL_15:
  v36 = v257;
  v261 = v7;
  v281 = v257;
  memcpy(v282, v5 + 44, sizeof(v282));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v282) == 1 || !v282[45])
  {
    sub_217751DE8();
    v38 = v36;
  }

  else
  {
    sub_217751DE8();
    v37 = sub_217751DE8();
    sub_21754383C(v37);
    v38 = v281;
  }

  v39 = v287;
  v40 = *(v287 + 16);
  v41 = sub_2173C2FA0(0, v40, v287);
  v256 = v20;
  v251 = v38;
  if (v41 != 1)
  {
    sub_21726A630(v285, v283, &qword_27CB25938, &unk_21775D9B0);
    if (v284)
    {
      sub_21726A630(v285, v278, &qword_27CB25938, &unk_21775D9B0);
      if (*&v278[16])
      {
        v265 = 0;
        OUTLINED_FUNCTION_156_2();
        v52 = v279;
        if (v279)
        {
          OUTLINED_FUNCTION_230_1();
          *&v269 = v38;
          *(&v269 + 1) = v52;
          *&v270 = v36;
          OUTLINED_FUNCTION_161_0();
          v53 = swift_allocObject();
          OUTLINED_FUNCTION_170_1(v53);
          sub_2171F0738(&v262, &qword_27CB24188, &dword_217758930);
          *&v262 = v40;
          v264 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
          v265 = &off_282969FA0;
        }

        else
        {
        }

        v72 = v261;
        OUTLINED_FUNCTION_213_3();
        v70 = sub_2171F0738(v278, &qword_27CB25930, &unk_217797B70);
      }

      else
      {

        v70 = sub_2171F0738(v278, &qword_27CB25938, &unk_21775D9B0);
        v269 = 0u;
        v270 = 0u;
        v271 = 0;
        v72 = v261;
      }

      MEMORY[0x28223BE20](v70, v71);
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_178_2(v73);
      v76 = sub_2172E4ECC(sub_21733C8E8, v74, v75, sub_217276318, &qword_27CB24948, &unk_21775A210);
      OUTLINED_FUNCTION_183_2(v76);
      sub_21726A630(&v269, v275, &qword_27CB24188, &dword_217758930);
      if (v276)
      {
        v77 = v5;
        v78 = v20;
        sub_2171F0738(&v269, &qword_27CB24188, &dword_217758930);
        OUTLINED_FUNCTION_48_7();
      }

      else
      {
        OUTLINED_FUNCTION_211_1();
        v77 = v5;
        if (v72)
        {
          OUTLINED_FUNCTION_229_1();
          *v278 = &v240;
          *&v278[8] = v72;
          OUTLINED_FUNCTION_197();
          v79 = swift_allocObject();
          OUTLINED_FUNCTION_150_2(v79);
          OUTLINED_FUNCTION_88_3();
          sub_2171F0738(v80, v81, v82);
          OUTLINED_FUNCTION_88_3();
          sub_2171F0738(v83, v84, v85);
          v272[0] = &v240;
          v273 = &type metadata for MusicCatalogResourceIncrementalLoader;
          v274 = &off_2829650B8;
        }

        else
        {
          sub_2171F0738(&v269, &qword_27CB24188, &dword_217758930);
        }

        v78 = v20;
        OUTLINED_FUNCTION_182_2();
        if (v99)
        {
          sub_2171F0738(v275, &qword_27CB24188, &dword_217758930);
        }
      }

      *&v278[7] = v262;
      OUTLINED_FUNCTION_181_3();
      *&v278[23] = v100;
      *&v278[39] = v265;
      sub_2171FB568(v101, v102);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v283, &qword_27CB25930, &unk_217797B70);
      *(&v280[1] + 1) = *v278;
      OUTLINED_FUNCTION_180_3();
      LOBYTE(v280[1]) = v275[0];
      *(&v280[3] + 1) = v103;
      *&v280[5] = *&v278[31];
      OUTLINED_FUNCTION_16_17();
      v20 = v78;
      v5 = v77;
    }

    else
    {

      sub_2171F0738(v283, &qword_27CB25938, &unk_21775D9B0);
      sub_2174AA410();
    }

    goto LABEL_67;
  }

  if (v40)
  {
    v21 = *(v39 + 48);
    v39 = *(v39 + 56);
    v42 = qword_280BE62F0;
    sub_217751DE8();
    if (v42 == -1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_22:
  v43 = qword_280BE6308 == v21 && unk_280BE6310 == v39;
  v44 = v261;
  if (!v43 && (OUTLINED_FUNCTION_194_2() & 1) == 0)
  {
    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v62 = qword_280BE6238 == v21 && unk_280BE6240 == v39;
    if (v62 || (OUTLINED_FUNCTION_194_2() & 1) != 0)
    {

      OUTLINED_FUNCTION_197_2(v63, v64, &qword_27CB25938, &unk_21775D9B0);
      v65 = *&v278[16];
      if (*&v278[16])
      {
        v66 = OUTLINED_FUNCTION_204();
        sub_2171FB568(v66, v67);
        sub_2176DD918();
        OUTLINED_FUNCTION_36_7(v68);
        sub_21726A630((v20 + 72), v69 + 72, &qword_27CB24188, &dword_217758930);
        OUTLINED_FUNCTION_27_13();
        sub_217751DE8();
        OUTLINED_FUNCTION_236_0();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v278, &qword_27CB25930, &unk_217797B70);
      }

      else
      {
        sub_2171F0738(v278, &qword_27CB25938, &unk_21775D9B0);
        OUTLINED_FUNCTION_37_6();
      }

      v20 = v256;
      v105 = v257;
      sub_21726A630(v283, v278, &qword_27CB242C0, &unk_21775D650);
      if (*&v278[16])
      {
        sub_21726A630(v283, &v269, &qword_27CB242C0, &unk_21775D650);
        if (v270)
        {
          OUTLINED_FUNCTION_116_4();
          if (v65)
          {
            OUTLINED_FUNCTION_153_2();
            *&v262 = v44;
            *(&v262 + 1) = v65;
            v263 = v105;
            OUTLINED_FUNCTION_161_0();
            v106 = swift_allocObject();
            OUTLINED_FUNCTION_90_4(v106);
            sub_2171F0738(v275, &qword_27CB24188, &dword_217758930);
            v275[0] = v105;
            v276 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
            v277 = &off_282969FA0;
          }

          else
          {
          }

          OUTLINED_FUNCTION_48_7();
          sub_2171F0738(&v269, &qword_27CB242C8, &unk_217758970);
        }

        else
        {

          sub_2171F0738(&v269, &qword_27CB242C0, &unk_21775D650);
          OUTLINED_FUNCTION_156_2();
          v265 = 0;
        }

        OUTLINED_FUNCTION_133_4();
        MEMORY[0x28223BE20](v173, v174);
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_178_2(v175);
        v178 = sub_2172E4A28(sub_21733CEE8, v176, v177, sub_217276258, &qword_27CB24790, &unk_21775A220);
        OUTLINED_FUNCTION_183_2(v178);
        sub_21726A630(&v262, v272, &qword_27CB24188, &dword_217758930);
        if (v273)
        {
          sub_2171F0738(&v262, &qword_27CB24188, &dword_217758930);
          sub_2171F0738(v283, &qword_27CB242C0, &unk_21775D650);
          OUTLINED_FUNCTION_126_3();
        }

        else
        {
          OUTLINED_FUNCTION_125_2();
          if (v44)
          {
            OUTLINED_FUNCTION_152_3();
            *&v269 = v105;
            *(&v269 + 1) = v44;
            OUTLINED_FUNCTION_197();
            v179 = swift_allocObject();
            OUTLINED_FUNCTION_59_3(v179);
            OUTLINED_FUNCTION_88_3();
            sub_2171F0738(v180, v181, v182);
            OUTLINED_FUNCTION_88_3();
            sub_2171F0738(v183, v184, v185);
            sub_2171F0738(v283, &qword_27CB242C0, &unk_21775D650);
            v266 = v105;
            v267 = &type metadata for MusicCatalogResourceIncrementalLoader;
            v268 = &off_2829650B8;
          }

          else
          {
            sub_2171F0738(&v262, &qword_27CB24188, &dword_217758930);
            sub_2171F0738(v283, &qword_27CB242C0, &unk_21775D650);
          }

          OUTLINED_FUNCTION_81_4();
          if (v194)
          {
            sub_2171F0738(v272, &qword_27CB24188, &dword_217758930);
          }
        }

        v195 = OUTLINED_FUNCTION_61_2();
        OUTLINED_FUNCTION_60_6(v195, v196, v197, v198);
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v278, &qword_27CB242C8, &unk_217758970);
        *(&v280[1] + 1) = v269;
        OUTLINED_FUNCTION_180_3();
        LOBYTE(v280[1]) = v272[0];
        *(v199 + 153) = v200;
        *(v199 + 168) = *(v65 + 31);
        OUTLINED_FUNCTION_16_17();
      }

      else
      {

        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v107, v108, v109);
        sub_2174AA0FC();
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v110, v111, v112);
      }

      v104 = 1;
      goto LABEL_68;
    }

    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    if (qword_280BE6260 == v21 && unk_280BE6268 == v39)
    {
    }

    else
    {
      v162 = OUTLINED_FUNCTION_194_2();

      if ((v162 & 1) == 0)
      {
        sub_21726A630(v285, v283, &qword_27CB25938, &unk_21775D9B0);
        if (v284)
        {
          sub_21726A630(v285, v278, &qword_27CB25938, &unk_21775D9B0);
          v20 = v256;
          v165 = v257;
          if (*&v278[16])
          {
            v265 = 0;
            OUTLINED_FUNCTION_156_2();
            v166 = v279;
            if (v279)
            {
              OUTLINED_FUNCTION_230_1();
              *&v269 = v44;
              *(&v269 + 1) = v166;
              v44 = v261;
              *&v270 = v165;
              OUTLINED_FUNCTION_161_0();
              v167 = swift_allocObject();
              OUTLINED_FUNCTION_170_1(v167);
              sub_2171F0738(&v262, &qword_27CB24188, &dword_217758930);
              *&v262 = v165;
              v264 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
              v265 = &off_282969FA0;
            }

            else
            {
            }

            OUTLINED_FUNCTION_213_3();
            v221 = sub_2171F0738(v278, &qword_27CB25930, &unk_217797B70);
          }

          else
          {

            v221 = sub_2171F0738(v278, &qword_27CB25938, &unk_21775D9B0);
            v269 = 0u;
            v270 = 0u;
            v271 = 0;
          }

          MEMORY[0x28223BE20](v221, v222);
          OUTLINED_FUNCTION_11_4();
          OUTLINED_FUNCTION_178_2(v223);
          v226 = sub_2172E4ECC(sub_21733CF48, v224, v225, sub_217276318, &qword_27CB24948, &unk_21775A210);
          OUTLINED_FUNCTION_183_2(v226);
          sub_21726A630(&v269, v275, &qword_27CB24188, &dword_217758930);
          if (v276)
          {
            sub_2171F0738(&v269, &qword_27CB24188, &dword_217758930);
            OUTLINED_FUNCTION_48_7();
          }

          else
          {
            OUTLINED_FUNCTION_211_1();
            if (v44)
            {
              OUTLINED_FUNCTION_229_1();
              *v278 = &v240;
              *&v278[8] = v44;
              OUTLINED_FUNCTION_197();
              v227 = swift_allocObject();
              OUTLINED_FUNCTION_150_2(v227);
              OUTLINED_FUNCTION_88_3();
              sub_2171F0738(v228, v229, v230);
              OUTLINED_FUNCTION_88_3();
              sub_2171F0738(v231, v232, v233);
              v272[0] = &v240;
              v273 = &type metadata for MusicCatalogResourceIncrementalLoader;
              v274 = &off_2829650B8;
            }

            else
            {
              sub_2171F0738(&v269, &qword_27CB24188, &dword_217758930);
            }

            OUTLINED_FUNCTION_182_2();
            if (v234)
            {
              sub_2171F0738(v275, &qword_27CB24188, &dword_217758930);
            }
          }

          *&v278[7] = v262;
          OUTLINED_FUNCTION_181_3();
          *(v235 + 247) = v236;
          *&v278[39] = v265;
          sub_2171FB568(v237, v238);
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_2171F0738(v283, &qword_27CB25930, &unk_217797B70);
          *(&v280[1] + 1) = *v278;
          OUTLINED_FUNCTION_180_3();
          LOBYTE(v280[1]) = v275[0];
          *(&v280[3] + 1) = v239;
          *&v280[5] = *&v278[31];
          OUTLINED_FUNCTION_16_17();
        }

        else
        {

          sub_2171F0738(v283, &qword_27CB25938, &unk_21775D9B0);
          sub_2174AA410();
          v20 = v256;
        }

LABEL_67:
        v104 = 3;
LABEL_68:
        LODWORD(v257) = v104;
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_197_2(v163, v164, &qword_27CB25938, &unk_21775D9B0);
    v168 = *&v278[16];
    if (*&v278[16])
    {
      v169 = OUTLINED_FUNCTION_204();
      sub_2171FB568(v169, v170);
      sub_2176DD598();
      OUTLINED_FUNCTION_36_7(v171);
      sub_21726A630((v20 + 72), v172 + 72, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_27_13();
      sub_217751DE8();
      OUTLINED_FUNCTION_236_0();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v278, &qword_27CB25930, &unk_217797B70);
    }

    else
    {
      sub_2171F0738(v278, &qword_27CB25938, &unk_21775D9B0);
      OUTLINED_FUNCTION_37_6();
    }

    v20 = v256;
    v186 = v257;
    sub_21726A630(v283, v278, &qword_27CB242F0, &unk_217797B80);
    if (*&v278[16])
    {
      sub_21726A630(v283, &v269, &qword_27CB242F0, &unk_217797B80);
      if (v270)
      {
        OUTLINED_FUNCTION_116_4();
        if (v168)
        {
          OUTLINED_FUNCTION_153_2();
          *&v262 = v44;
          *(&v262 + 1) = v168;
          v263 = v186;
          OUTLINED_FUNCTION_161_0();
          v187 = swift_allocObject();
          OUTLINED_FUNCTION_90_4(v187);
          sub_2171F0738(v275, &qword_27CB24188, &dword_217758930);
          v275[0] = v186;
          v276 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
          v277 = &off_282969FA0;
        }

        else
        {
        }

        OUTLINED_FUNCTION_48_7();
        sub_2171F0738(&v269, &qword_27CB242F8, &qword_21775D6C0);
      }

      else
      {

        sub_2171F0738(&v269, &qword_27CB242F0, &unk_217797B80);
        OUTLINED_FUNCTION_156_2();
        v265 = 0;
      }

      OUTLINED_FUNCTION_133_4();
      MEMORY[0x28223BE20](v201, v202);
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_178_2(v203);
      v206 = sub_2172E4A28(sub_21733CF00, v204, v205, sub_2172761D8, &qword_27CB24738, &qword_217758CC0);
      OUTLINED_FUNCTION_183_2(v206);
      sub_21726A630(&v262, v272, &qword_27CB24188, &dword_217758930);
      if (v273)
      {
        sub_2171F0738(&v262, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(v283, &qword_27CB242F0, &unk_217797B80);
        OUTLINED_FUNCTION_126_3();
      }

      else
      {
        OUTLINED_FUNCTION_125_2();
        if (v44)
        {
          OUTLINED_FUNCTION_152_3();
          *&v269 = v186;
          *(&v269 + 1) = v44;
          OUTLINED_FUNCTION_197();
          v207 = swift_allocObject();
          OUTLINED_FUNCTION_59_3(v207);
          OUTLINED_FUNCTION_88_3();
          sub_2171F0738(v208, v209, v210);
          OUTLINED_FUNCTION_88_3();
          sub_2171F0738(v211, v212, v213);
          sub_2171F0738(v283, &qword_27CB242F0, &unk_217797B80);
          v266 = v186;
          v267 = &type metadata for MusicCatalogResourceIncrementalLoader;
          v268 = &off_2829650B8;
        }

        else
        {
          sub_2171F0738(&v262, &qword_27CB24188, &dword_217758930);
          sub_2171F0738(v283, &qword_27CB242F0, &unk_217797B80);
        }

        OUTLINED_FUNCTION_81_4();
        if (v214)
        {
          sub_2171F0738(v272, &qword_27CB24188, &dword_217758930);
        }
      }

      v215 = OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_60_6(v215, v216, v217, v218);
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v278, &qword_27CB242F8, &qword_21775D6C0);
      *(&v280[1] + 1) = v269;
      OUTLINED_FUNCTION_180_3();
      LOBYTE(v280[1]) = v272[0];
      *(v219 + 153) = v220;
      *(v219 + 168) = *(v168 + 31);
      OUTLINED_FUNCTION_16_17();
    }

    else
    {

      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v188, v189, v190);
      sub_2174AA04C();
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v191, v192, v193);
    }

    v104 = 2;
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_197_2(v45, v46, &qword_27CB25938, &unk_21775D9B0);
  v47 = *&v278[16];
  if (*&v278[16])
  {
    v48 = OUTLINED_FUNCTION_204();
    sub_2171FB568(v48, v49);
    sub_2176DDC98();
    OUTLINED_FUNCTION_36_7(v50);
    sub_21726A630((v20 + 72), v51 + 72, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_27_13();
    sub_217751DE8();
    OUTLINED_FUNCTION_236_0();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v278, &qword_27CB25930, &unk_217797B70);
  }

  else
  {
    sub_2171F0738(v278, &qword_27CB25938, &unk_21775D9B0);
    OUTLINED_FUNCTION_37_6();
  }

  v20 = v256;
  v54 = v257;
  sub_21726A630(v283, v278, &qword_27CB24270, &unk_21775D640);
  if (*&v278[16])
  {
    sub_21726A630(v283, &v269, &qword_27CB24270, &unk_21775D640);
    if (v270)
    {
      OUTLINED_FUNCTION_116_4();
      if (v47)
      {
        OUTLINED_FUNCTION_153_2();
        *&v262 = v44;
        *(&v262 + 1) = v47;
        v263 = v54;
        OUTLINED_FUNCTION_161_0();
        v55 = swift_allocObject();
        OUTLINED_FUNCTION_90_4(v55);
        sub_2171F0738(v275, &qword_27CB24188, &dword_217758930);
        v275[0] = v54;
        v276 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
        v277 = &off_282969FA0;
      }

      else
      {
      }

      OUTLINED_FUNCTION_48_7();
      sub_2171F0738(&v269, &qword_27CB24278, &unk_217759070);
    }

    else
    {

      sub_2171F0738(&v269, &qword_27CB24270, &unk_21775D640);
      OUTLINED_FUNCTION_156_2();
      v265 = 0;
    }

    OUTLINED_FUNCTION_133_4();
    MEMORY[0x28223BE20](v86, v87);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_178_2(v88);
    v91 = sub_2172E4A28(sub_21733CE88, v89, v90, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
    OUTLINED_FUNCTION_183_2(v91);
    sub_21726A630(&v262, v272, &qword_27CB24188, &dword_217758930);
    if (v273)
    {
      sub_2171F0738(&v262, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v283, &qword_27CB24270, &unk_21775D640);
      OUTLINED_FUNCTION_126_3();
    }

    else
    {
      OUTLINED_FUNCTION_125_2();
      if (v44)
      {
        OUTLINED_FUNCTION_152_3();
        *&v269 = v54;
        *(&v269 + 1) = v44;
        OUTLINED_FUNCTION_197();
        v92 = swift_allocObject();
        OUTLINED_FUNCTION_59_3(v92);
        OUTLINED_FUNCTION_88_3();
        sub_2171F0738(v93, v94, v95);
        OUTLINED_FUNCTION_88_3();
        sub_2171F0738(v96, v97, v98);
        sub_2171F0738(v283, &qword_27CB24270, &unk_21775D640);
        v266 = v54;
        v267 = &type metadata for MusicCatalogResourceIncrementalLoader;
        v268 = &off_2829650B8;
      }

      else
      {
        sub_2171F0738(&v262, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(v283, &qword_27CB24270, &unk_21775D640);
      }

      OUTLINED_FUNCTION_81_4();
      if (v113)
      {
        sub_2171F0738(v272, &qword_27CB24188, &dword_217758930);
      }
    }

    v114 = OUTLINED_FUNCTION_61_2();
    OUTLINED_FUNCTION_60_6(v114, v115, v116, v117);
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v278, &qword_27CB24278, &unk_217759070);
    *(&v280[1] + 1) = v269;
    OUTLINED_FUNCTION_180_3();
    LOBYTE(v280[1]) = v272[0];
    *(v118 + 153) = v119;
    *(v118 + 168) = *(v47 + 31);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {

    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v56, v57, v58);
    sub_2174AA1AC();
    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v59, v60, v61);
  }

  LODWORD(v257) = 0;
LABEL_80:
  v255 = v288[0];
  v261 = v288[1];
  v120 = v5[43];
  v250 = v5[42];
  if (v299)
  {
    v248 = v297;
    v249 = v298;
    sub_217751DE8();
  }

  else
  {
    v248 = 0;
    v249 = 0;
  }

  if (v296)
  {
    v246 = v294;
    v247 = v295;
    sub_217751DE8();
  }

  else
  {
    v246 = 0;
    v247 = 0;
  }

  v121 = qword_280BE8910;
  sub_217751DE8();
  sub_217751DE8();
  if (v121 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v122 = type metadata accessor for CloudFormatter();
  v123 = __swift_project_value_buffer(v122, qword_280BE8918);
  v124 = v290;
  v125 = sub_2177517D8();
  v126 = v259;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v125);
  if (v124)
  {
    v130 = *(v123 + *(v122 + 24));
    OUTLINED_FUNCTION_204();
    v131 = sub_217751F18();
    v132 = [v130 dateFromString_];

    if (v132)
    {
      v133 = v245;
      sub_2177517C8();

      v134 = 0;
      v135 = v259;
    }

    else
    {
      v134 = 1;
      v135 = v259;
      v133 = v245;
    }

    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v139, v140, v141);
    __swift_storeEnumTagSinglePayload(v133, v134, 1, v125);
    sub_21726A594(v133, v135, &qword_27CB241C0, &qword_217759480);
    sub_21726A594(v135, v20, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    sub_2171F0738(v126, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v125);
  }

  sub_2171F0738(v285, &qword_27CB25938, &unk_21775D9B0);
  sub_21733AB9C(v3);
  v260 = v302;
  v142 = v303;
  v143 = v304;
  if (v304 == 1)
  {
    v144 = 0;
  }

  else
  {
    v144 = v302;
  }

  if (v304 == 1)
  {
    v145 = 0;
  }

  else
  {
    v145 = v303;
  }

  if (v304 == 1)
  {
    v146 = 0;
  }

  else
  {
    v146 = v304;
  }

  v241 = v289;
  v242 = v291;
  v147 = v287;
  v148 = v258;
  v149 = v258[93];
  v243 = v258[92];
  v244 = v149;
  v245 = v258[94];
  v259 = v258[95];
  v150 = v254;
  v151 = v261;
  *v254 = v255;
  v150[1] = v151;
  v152 = v251;
  v150[2] = v250;
  v150[3] = v120;
  v150[4] = v152;
  *(v150 + 40) = v252;
  v153 = v249;
  v150[6] = v248;
  v150[7] = v153;
  v154 = v247;
  v150[8] = v246;
  v150[9] = v154;
  v155 = type metadata accessor for MusicPersonalRecommendation();
  sub_21726A594(v256, v150 + v155[10], &qword_27CB241C0, &qword_217759480);
  *(v150 + v155[11]) = v253;
  v156 = v241;
  *(v150 + v155[12]) = v242;
  v157 = (v150 + v155[13]);
  *v157 = v144;
  v157[1] = v145;
  v157[2] = v146;
  *(v150 + v155[14]) = v156;
  *(v150 + v155[15]) = v147;
  v158 = v150 + v155[16];
  memcpy(v158, v280, 0x68uLL);
  v158[104] = v257;
  v159 = v244;
  *(v150 + v155[17]) = v243;
  *(v150 + v155[18]) = v159;
  *(v150 + v155[19]) = v245;
  v160 = v260;
  *(v150 + v155[20]) = v259;
  sub_21733C6A8(v160, v142, v143);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v148, &qword_27CB244A8, &unk_217758980);
  sub_217269D5C(v288);

  OUTLINED_FUNCTION_13();
}

unint64_t sub_2173363C0()
{
  result = qword_27CB254B8;
  if (!qword_27CB254B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254B8);
  }

  return result;
}

void sub_217336414()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v226 = v3;
  v227 = v2;
  v5 = v4;
  v224 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v221 = v202 - v12;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  v13 = OUTLINED_FUNCTION_43(v220);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_31();
  v204 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18, v19);
  v203 = v202 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_31();
  v207 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_99();
  v222 = v29;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v30, v31);
  OUTLINED_FUNCTION_99();
  v223 = v32;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_63_5();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_99();
  v232 = v37;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_99();
  v218 = v40;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_99();
  v205 = v43;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v44, v45);
  OUTLINED_FUNCTION_99();
  v231 = v46;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v47, v48);
  v216 = v202 - v49;
  v50 = OUTLINED_FUNCTION_206();
  v230 = type metadata accessor for LegacyModelCodablePlaylistEntry(v50);
  v51 = OUTLINED_FUNCTION_43(v230);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51, v54);
  OUTLINED_FUNCTION_81();
  v233 = v55;
  OUTLINED_FUNCTION_206();
  v56 = type metadata accessor for PlaylistEntryPropertyProvider();
  v57 = OUTLINED_FUNCTION_43(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57, v60);
  OUTLINED_FUNCTION_1();
  v63 = v62 - v61;
  v246 = 0;
  v64 = 0uLL;
  memset(v245, 0, sizeof(v245));
  v247 = -1;
  if (qword_280BE90D0 != -1)
  {
    swift_once();
    v64 = 0uLL;
  }

  v248[0] = v64;
  v248[1] = v64;
  v248[2] = v64;
  v248[3] = v64;
  v248[4] = v64;
  v248[5] = v64;
  v248[6] = v64;
  *&v248[7] = 0;
  sub_2172DABC4();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v66 = v65[10];
  v67 = v5 + v65[9];
  v68 = *(v67 + 8);
  v229 = *v67;
  v213 = *(v67 + 16);
  v69 = *(v5 + v65[12]);
  v70 = *(v5 + v65[13]);
  v71 = v65[15];
  v208 = *(v5 + v65[14]);
  v209 = v69;
  v72 = *(v5 + v66 + 8);
  v211 = *(v5 + v66);
  v234 = v5;
  v73 = *(v5 + v71);
  v244 = 0;
  memset(v243, 0, sizeof(v243));
  sub_2172A497C(v250);
  memcpy(v63, v250, 0x221uLL);
  *(v63 + 552) = 0;
  *(v63 + 560) = 1;
  v74 = v56[8];
  v75 = sub_2177517D8();
  v214 = v74;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
  v215 = v56[9];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v75);
  v82 = v63 + v56[10];
  *(v82 + 48) = 0;
  *(v82 + 16) = 0u;
  *(v82 + 32) = 0u;
  *v82 = 0u;
  v225 = v82;
  *(v82 + 56) = -1;
  v83 = v63 + v56[11];
  *v83 = 0;
  *(v83 + 8) = 0;
  v217 = v83;
  *(v83 + 16) = 0;
  memcpy((v63 + v56[12]), v248, 0x78uLL);
  v84 = (v63 + v56[14]);
  *v84 = 0;
  v84[1] = 0;
  v219 = v56[15];
  OUTLINED_FUNCTION_5_5();
  v235 = v75;
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v75);
  v88 = v63 + v56[17];
  *(v88 + 32) = 0;
  *v88 = 0u;
  *(v88 + 16) = 0u;
  v89 = qword_280BE3168;
  v212 = v68;
  v90 = v73;
  v91 = v208;
  v92 = v209;
  sub_217751DE8();
  v210 = v72;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v93 = v90;
  sub_217751DE8();
  if (v89 != -1)
  {
    swift_once();
  }

  v94 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    v200 = qword_280C01FB0 & 0xFFFFFFFFFFFFFF8;
    if (qword_280C01FB0 < 0)
    {
      v200 = qword_280C01FB0;
    }

    v202[1] = v200;
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v201 = sub_217752D28();

    v94 = v201;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v63 + v56[18]) = v94;
  v95 = (v63 + v56[21]);
  memcpy((v63 + v56[19]), v249, 0x161uLL);
  v96 = v63 + v56[20];
  v97 = v212;
  *v96 = v229;
  *(v96 + 8) = v97;
  *(v96 + 16) = v213;
  v98 = v210;
  *v95 = v211;
  v95[1] = v98;
  *(v63 + v56[22]) = v92;
  *(v63 + v56[23]) = v70;
  *(v63 + v56[24]) = v91;
  *(v63 + v56[25]) = v93;
  sub_21733BBDC(v245, v225, &qword_27CB27D20, &qword_217758B80);
  sub_21733BBDC(v243, v88, &qword_27CB24BA8, &unk_217772FF0);
  OUTLINED_FUNCTION_7_14();
  v99 = v233;
  sub_21733CAD0();
  v100 = v99 + *(v230 + 20);
  memcpy(v241, v100, sizeof(v241));
  memcpy(v242, v100, sizeof(v242));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v242) == 1)
  {
    v101 = v250;
  }

  else
  {
    memcpy(v240, v242, 0x1B8uLL);
    memcpy(v236, v241, sizeof(v236));
    sub_21726A630(v236, v239, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v238);
    memcpy(v237, v240, sizeof(v237));
    OUTLINED_FUNCTION_88_3();
    sub_2171F0738(v102, v103, v104);
    memcpy(v239, v238, 0x221uLL);
    nullsub_1(v239, v105);
    v101 = v239;
  }

  memcpy(v240, v101, sizeof(v240));
  v106 = v235;
  v107 = v231;
  memcpy(v239, v63, 0x221uLL);
  sub_2171F0738(v239, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v63, v240, 0x221uLL);
  if ((*(v100 + 448) & 1) == 0)
  {
    *(v63 + 552) = *(v100 + 440) / 1000.0;
    *(v63 + 560) = 0;
  }

  v228 = v56;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v108 = type metadata accessor for CloudFormatter();
  v109 = __swift_project_value_buffer(v108, qword_280BE8918);
  v110 = *(v100 + 456);
  v111 = *(v100 + 464);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v106);
  v229 = v109;
  v230 = v108;
  if (v111)
  {
    v115 = *(v109 + *(v108 + 20));
    v116 = sub_217751F18();
    v117 = [v115 dateFromString_];

    if (v117)
    {
      v118 = v205;
      sub_2177517C8();

      v119 = 0;
    }

    else
    {
      v119 = 1;
      v118 = v205;
    }

    v124 = v228;
    sub_2171F0738(v231, &qword_27CB241C0, &qword_217759480);
    __swift_storeEnumTagSinglePayload(v118, v119, 1, v106);
    v125 = OUTLINED_FUNCTION_150_0();
    sub_21726A594(v125, v126, &qword_27CB241C0, &qword_217759480);
    v120 = v216;
    OUTLINED_FUNCTION_88_3();
    sub_21726A594(v127, v128, v129, &qword_217759480);
    v108 = v230;
  }

  else
  {
    sub_2171F0738(v107, &qword_27CB241C0, &qword_217759480);
    v120 = v216;
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v106);
    v124 = v228;
  }

  sub_21733BBDC(v120, v63 + v214, &qword_27CB241C0, &qword_217759480);
  v130 = *(v100 + 472);
  v131 = *(v100 + 480);
  v132 = v232;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v106);
  if (v131)
  {
    v136 = *(v229 + *(v108 + 20));
    v137 = sub_217751F18();
    v138 = [v136 dateFromString_];

    if (v138)
    {
      v139 = v206;
      sub_2177517C8();

      v140 = 0;
    }

    else
    {
      v140 = 1;
      v139 = v206;
    }

    sub_2171F0738(v232, &qword_27CB241C0, &qword_217759480);
    __swift_storeEnumTagSinglePayload(v139, v140, 1, v106);
    v145 = OUTLINED_FUNCTION_150_0();
    sub_21726A594(v145, v146, &qword_27CB241C0, &qword_217759480);
    v141 = v218;
    OUTLINED_FUNCTION_88_3();
    sub_21726A594(v147, v148, v149, &qword_217759480);
  }

  else
  {
    sub_2171F0738(v132, &qword_27CB241C0, &qword_217759480);
    v141 = v218;
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v106);
  }

  sub_21733BBDC(v141, v63 + v215, &qword_27CB241C0, &qword_217759480);
  v150 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v151 = v221;
  sub_21726A630(v100 + v150[8], v221, &qword_27CB25648, &qword_21775D598);
  if (__swift_getEnumTagSinglePayload(v151, 1, v220) == 1)
  {
    sub_2171F0738(v151, &qword_27CB25648, &qword_21775D598);
  }

  else
  {
    v152 = v203;
    OUTLINED_FUNCTION_80_3();
    sub_21726A594(v153, v154, v155, &unk_21778F830);
    sub_21726A630(v152, v204, &qword_27CB25650, &unk_21778F830);
    sub_2172CA838(v227, v237);

    v106 = v235;
    sub_21733718C();
    OUTLINED_FUNCTION_88_3();
    sub_2171F0738(v156, v157, v158);
    sub_21733BBDC(v238, v225, &qword_27CB27D20, &qword_217758B80);
  }

  v159 = v222;
  v160 = v230;
  v161 = v63 + *(v124 + 52);
  v162 = v100 + v150[9];
  v164 = *v162;
  v163 = *(v162 + 8);
  LOBYTE(v162) = *(v162 + 16);
  v165 = v217;
  v166 = v217[1];
  *v217 = v164;
  v165[1] = v163;
  *(v165 + 16) = v162;
  sub_217751DE8();

  v167 = v100 + v150[11];
  v168 = *v167;
  LOBYTE(v167) = *(v167 + 8);
  *v161 = v168;
  *(v161 + 8) = v167;
  v169 = (v100 + v150[12]);
  v170 = *v169;
  v171 = v169[1];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v106);
  if (v171)
  {
    v175 = *(v229 + *(v160 + 20));
    v176 = sub_217751F18();
    v177 = [v175 dateFromString_];

    if (v177)
    {
      v178 = v207;
      sub_2177517C8();

      v179 = 0;
      v180 = v234;
    }

    else
    {
      v179 = 1;
      v180 = v234;
      v178 = v207;
    }

    OUTLINED_FUNCTION_88_3();
    sub_2171F0738(v186, v187, v188);
    __swift_storeEnumTagSinglePayload(v178, v179, 1, v235);
    sub_21726A594(v178, v159, &qword_27CB241C0, &qword_217759480);
    v181 = v223;
    OUTLINED_FUNCTION_80_3();
    sub_21726A594(v189, v190, v191, &qword_217759480);
    v185 = v180;
    v124 = v228;
  }

  else
  {
    sub_2171F0738(v159, &qword_27CB241C0, &qword_217759480);
    v181 = v223;
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v182, v183, v184, v106);
    v185 = v234;
  }

  v192 = (v63 + *(v124 + 64));
  sub_21733BBDC(v181, v63 + v219, &qword_27CB241C0, &qword_217759480);
  v193 = (v100 + v150[10]);
  v194 = v193[1];
  *v192 = *v193;
  v192[1] = v194;
  v195 = (v100 + v150[13]);
  v196 = v195[1];
  *(v63 + 568) = *v195;
  *(v63 + 576) = v196;
  v197 = (v100 + v150[14]);
  v198 = v197[1];
  *(v63 + 584) = *v197;
  *(v63 + 592) = v198;
  v238[3] = v124;
  v238[4] = &protocol witness table for PlaylistEntryPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v238);
  sub_21733CAD0();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  Playlist.Entry.init(propertyProvider:)(v238, v224);

  sub_21733AB9C(v227);
  sub_2171F0738(v185, &qword_27CB247D8, &qword_217758D60);
  OUTLINED_FUNCTION_1_19();
  sub_21733CA78(v233, v199);
  sub_21733CA78(v63, type metadata accessor for PlaylistEntryPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void sub_21733718C()
{
  OUTLINED_FUNCTION_12();
  v97 = v2;
  v98 = v1;
  v4 = v3;
  v99 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_31();
  v92 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v85[-v14];
  v16 = type metadata accessor for CloudMusicVideo(0);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_81();
  v94 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_31();
  v91 = v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_115_3();
  v30 = type metadata accessor for CloudSong(0);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_81();
  v93 = v35;
  OUTLINED_FUNCTION_206();
  v36 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v37 = OUTLINED_FUNCTION_43(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_165_3();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v85[-v43];
  sub_21733CAD0();
  v95 = v44;
  sub_21733CAD0();
  OUTLINED_FUNCTION_15();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_98_6();
    sub_21733CE30();
    OUTLINED_FUNCTION_153();
    sub_21733CAD0();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v66 = v65[10];
    v67 = v4 + v65[9];
    v68 = *v67;
    v93 = *(v67 + 8);
    v69 = v93;
    LODWORD(v87) = *(v67 + 16);
    v70 = *(v4 + v66 + 8);
    v91 = *(v4 + v66);
    v88 = v68;
    v89 = v70;
    v71 = v65[11];
    memcpy(v103, (v4 + v71), 0x180uLL);
    v72 = *(v4 + v65[12]);
    v73 = *(v4 + v65[13]);
    v74 = v4;
    v75 = *(v4 + v65[14]);
    v76 = *(v74 + v65[15]);
    v90 = v74;
    v77 = &v15[v6[9]];
    v78 = v89;
    *v77 = v88;
    *(v77 + 1) = v69;
    v77[16] = v87;
    v79 = &v15[v6[10]];
    *v79 = v91;
    v79[1] = v78;
    memcpy(&v15[v6[11]], (v74 + v71), 0x180uLL);
    *&v15[v6[12]] = v72;
    *&v15[v6[13]] = v73;
    *&v15[v6[14]] = v75;
    *&v15[v6[15]] = v76;
    v80 = v92;
    sub_21726A630(v15, v92, &qword_27CB24808, &qword_217758D90);
    v81 = v98;
    sub_2172CA838(v98, v102);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v103, v100, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172F1160(v80, v102);
    sub_21733AB9C(v81);
    sub_2171F0738(v90, &qword_27CB25650, &unk_21778F830);
    sub_2171F0738(v15, &qword_27CB24808, &qword_217758D90);
    OUTLINED_FUNCTION_97_4();
    v64 = v94;
  }

  else
  {
    OUTLINED_FUNCTION_100_5();
    sub_21733CE30();
    OUTLINED_FUNCTION_204();
    sub_21733CAD0();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v46 = v45[10];
    v47 = v4 + v45[9];
    v48 = *v47;
    v94 = *(v47 + 8);
    v49 = v94;
    v86 = *(v47 + 16);
    v50 = *(v4 + v46 + 8);
    v89 = *(v4 + v46);
    v87 = v48;
    v88 = v50;
    v51 = v45[11];
    memcpy(v103, (v4 + v51), 0x180uLL);
    v52 = v45[13];
    v92 = *(v4 + v45[12]);
    v53 = v92;
    v54 = *(v4 + v52);
    v55 = v45[15];
    v56 = *(v4 + v45[14]);
    v57 = *(v4 + v55);
    v58 = v0 + v22[9];
    *v58 = v87;
    *(v58 + 8) = v49;
    *(v58 + 16) = v86;
    v59 = (v0 + v22[10]);
    v60 = v88;
    *v59 = v89;
    v59[1] = v60;
    memcpy((v0 + v22[11]), (v4 + v51), 0x180uLL);
    *(v0 + v22[12]) = v53;
    *(v0 + v22[13]) = v54;
    *(v0 + v22[14]) = v56;
    *(v0 + v22[15]) = v57;
    v61 = v91;
    sub_21726A630(v0, v91, &qword_27CB24748, &unk_217758CD0);
    v62 = v98;
    sub_2172CA838(v98, v102);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v103, v100, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217303E60(v61, v102);
    sub_21733AB9C(v62);
    sub_2171F0738(v4, &qword_27CB25650, &unk_21778F830);
    sub_2171F0738(v0, &qword_27CB24748, &unk_217758CD0);
    OUTLINED_FUNCTION_96_3();
    v64 = v93;
  }

  sub_21733CA78(v64, v63);
  OUTLINED_FUNCTION_2_26();
  sub_21733CA78(v95, v82);
  v83 = v100[1];
  v84 = v99;
  *v99 = v100[0];
  v84[1] = v83;
  v84[2] = v100[2];
  *(v84 + 6) = v101;
  *(v84 + 56) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_13();
}

void sub_217337778()
{
  OUTLINED_FUNCTION_12();
  v3 = v0;
  v256 = v4;
  v267 = v5;
  v266 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  v6 = OUTLINED_FUNCTION_43(v266);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_81();
  v268 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_131_0();
  v16 = sub_2177517D8();
  v17 = OUTLINED_FUNCTION_0_0(v16);
  v250 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17, v21);
  OUTLINED_FUNCTION_31();
  v249 = v22;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_63_5();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v247 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  OUTLINED_FUNCTION_31();
  v253 = v34;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_99();
  v251 = v37;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v247 - v40;
  MEMORY[0x28223BE20](v42, v43);
  OUTLINED_FUNCTION_99();
  v254 = v44;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v247 - v47;
  MEMORY[0x28223BE20](v49, v50);
  v51 = OUTLINED_FUNCTION_201_3();
  v264 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(v51);
  v52 = OUTLINED_FUNCTION_43(v264);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52, v55);
  OUTLINED_FUNCTION_81();
  v265 = v63;
  if (qword_280BE66D8 != -1)
  {
    swift_once();
  }

  sub_2176CA244(qword_280BE66E0, v56, v57, v58, v59, v60, v61, v62, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, qword_280BE66E0, v263, v264);
  v64 = LOBYTE(v274[7]);
  v65 = sub_2171F0738(v274, &qword_27CB27D20, &qword_217758B80);
  LODWORD(v263) = v64;
  if (v64 == 255)
  {
    v74 = COERCE_DOUBLE(Playlist.Entry.duration.getter(v65));
    HIDWORD(v248) = v75;
    if (v75)
    {
      v261 = 0;
LABEL_11:
      Playlist.Entry.artwork.getter(v75, v76, v77, v78, v79, v80, v81, v273);
      memcpy(v274, v273, 0x221uLL);
      v83 = get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v274) == 1;
      v255 = v16;
      if (v83)
      {
        sub_2172E22C0(v269);
      }

      else
      {
        memcpy(v269, v274, 0x221uLL);
        Artwork.convertToCloudArtworkAttribute()(v271);
        memcpy(v270, v269, 0x221uLL);
        sub_217284084(v270);
        memcpy(v272, v271, sizeof(v272));
        nullsub_1(v272, v84);
        memcpy(v269, v272, 0x1B8uLL);
      }

      if (qword_280BE8910 != -1)
      {
        OUTLINED_FUNCTION_2_24();
      }

      v247 = v2;
      v258 = type metadata accessor for CloudFormatter();
      v257 = __swift_project_value_buffer(v258, qword_280BE8918);
      if (qword_280BE6738 != -1)
      {
        swift_once();
      }

      v92 = v3;
      sub_2176CA2EC(qword_280C02080, v85, v86, v87, v88, v89, v90, v91, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
      sub_21726A630(v1, v48, &qword_27CB241C0, &qword_217759480);
      v93 = v255;
      OUTLINED_FUNCTION_237_0(v48, 1);
      if (v83)
      {
        OUTLINED_FUNCTION_158();
        sub_2171F0738(v94, v95, v96);
        OUTLINED_FUNCTION_158();
        sub_2171F0738(v97, v98, v99);
        v259 = 0;
        v260 = 0;
      }

      else
      {
        v100 = v250;
        (*(v250 + 32))(v28, v48, v93);
        v101 = *(v257 + *(v258 + 20));
        v102 = sub_2177517A8();
        v103 = [v101 stringFromDate_];

        v104 = sub_217751F48();
        v259 = v105;
        v260 = v104;

        (*(v100 + 8))(v28, v93);
        sub_2171F0738(v1, &qword_27CB241C0, &qword_217759480);
      }

      v3 = v92;
      v113 = v254;
      if (qword_280BE6700 != -1)
      {
        swift_once();
      }

      sub_2176CA2EC(qword_280C02068, v106, v107, v108, v109, v110, v111, v112, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
      sub_21726A630(v113, v41, &qword_27CB241C0, &qword_217759480);
      v114 = v255;
      OUTLINED_FUNCTION_237_0(v41, 1);
      v2 = v247;
      if (v83)
      {
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v115, v116, v117);
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v118, v119, v120);
        v257 = 0;
        v258 = 0;
      }

      else
      {
        v121 = v250;
        v122 = v252;
        (*(v250 + 32))(v252, v41, v114);
        v123 = *(v257 + *(v258 + 20));
        v124 = sub_2177517A8();
        v125 = [v123 stringFromDate_];

        v126 = sub_217751F48();
        v257 = v127;
        v258 = v126;

        (*(v121 + 8))(v122, v114);
        sub_2171F0738(v113, &qword_27CB241C0, &qword_217759480);
      }

      memcpy(v275, v269, 0x1B8uLL);
      v16 = v255;
      LODWORD(v73) = HIDWORD(v248);
      goto LABEL_27;
    }

    v82 = v74 * 1000.0;
    if (COERCE__INT64(fabs(v74 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 < 9.22337204e18)
      {
        v261 = v82;
        goto LABEL_11;
      }

LABEL_54:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_54;
  }

  sub_2172E22C0(v275);
  v257 = 0;
  v258 = 0;
  v259 = 0;
  v260 = 0;
  v261 = 0;
  LODWORD(v73) = 1;
LABEL_27:
  v128 = v263;
  sub_2176CA244(v262, v66, v67, v68, v69, v70, v71, v72, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
  if (LOBYTE(v274[7]) == 255)
  {
    sub_2171F0738(v274, &qword_27CB27D20, &qword_217758B80);
    v129 = 1;
  }

  else
  {
    sub_2173385F0();
    sub_21729C7F8(v274);
    v129 = 0;
  }

  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  __swift_storeEnumTagSinglePayload(v2, v129, 1, v130);
  if (qword_280BE66B8 != -1)
  {
    swift_once();
  }

  sub_2176CAC5C(qword_280C02038, v131, v132, v133, v134, v135, v136, v137, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266);
  v262 = v272[1];
  v263 = v272[0];
  LODWORD(v256) = LOBYTE(v272[2]);
  if (v128 == 255)
  {
    v139 = Playlist.Entry.title.getter(v138);
    v254 = v140;
    v255 = v139;
  }

  else
  {
    v254 = 0;
    v255 = 0;
  }

  if (qword_280BE66A8 != -1)
  {
    swift_once();
  }

  v141 = sub_2172A3FC8();
  v142 = v141;
  v144 = v143;
  if (v128 == 255)
  {
    v247 = v141;
    v145 = v3;
    if (qword_280BE8910 != -1)
    {
      OUTLINED_FUNCTION_2_24();
    }

    v146 = type metadata accessor for CloudFormatter();
    v147 = __swift_project_value_buffer(v146, qword_280BE8918);
    v148 = v251;
    Playlist.Entry.releaseDate.getter();
    v149 = v253;
    sub_21726A630(v148, v253, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_237_0(v149, 1);
    if (v83)
    {
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v150, v151, v152);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v153, v154, v155);
      v252 = 0;
      v253 = 0;
    }

    else
    {
      HIDWORD(v248) = v73;
      v156 = v249;
      v73 = v250;
      (*(v250 + 32))(v249, v149, v16);
      v157 = *(v147 + *(v146 + 20));
      v158 = sub_2177517A8();
      v159 = [v157 stringFromDate_];

      v160 = sub_217751F48();
      v252 = v161;
      v253 = v160;

      (*(v73 + 8))(v156, v16);
      LOBYTE(v73) = BYTE4(v248);
      sub_2171F0738(v251, &qword_27CB241C0, &qword_217759480);
    }

    v3 = v145;
    v142 = v247;
  }

  else
  {
    v252 = 0;
    v253 = 0;
  }

  v162 = v2;
  if (qword_280BE66F8 != -1)
  {
    swift_once();
  }

  v163 = v3;
  v164 = sub_2172A46D8();
  v166 = v165;
  if (qword_280BE6720 != -1)
  {
    swift_once();
  }

  if (v144)
  {
    v142 = 0;
  }

  v167 = sub_2172A46D8();
  v169 = v168;
  v170 = v265;
  memcpy(v265, v275, 0x1B8uLL);
  v170[55] = v261;
  *(v170 + 448) = v73 & 1;
  v171 = v259;
  v170[57] = v260;
  v170[58] = v171;
  v172 = v257;
  v170[59] = v258;
  v170[60] = v172;
  v173 = v264;
  sub_21726A594(v162, v170 + v264[8], &qword_27CB25648, &qword_21775D598);
  v174 = v170 + v173[9];
  v175 = v262;
  *v174 = v263;
  *(v174 + 1) = v175;
  v174[16] = v256;
  v176 = (v170 + v173[10]);
  v177 = v254;
  *v176 = v255;
  v176[1] = v177;
  v178 = v170 + v173[11];
  *v178 = v142;
  v178[8] = 0;
  v179 = (v170 + v173[12]);
  v180 = v252;
  *v179 = v253;
  v179[1] = v180;
  v181 = (v170 + v173[13]);
  *v181 = v164;
  v181[1] = v166;
  v182 = (v170 + v173[14]);
  *v182 = v167;
  v182[1] = v169;
  v184 = *v163;
  v183 = v163[1];
  v185 = v266;
  OUTLINED_FUNCTION_92_3();
  v186 = v268;
  sub_21733CAD0();
  *v186 = v184;
  v186[1] = v183;
  *(v186 + v185[6]) = 1;
  *(v186 + v185[7]) = 1;
  *(v186 + v185[8]) = 1;
  v187 = v163[5];
  v188 = v163[6];
  __swift_project_boxed_opaque_existential_1(v163 + 2, v187);
  v189 = *(v188 + 24);
  sub_217751DE8();
  v189(v270, v187, v188);
  nullsub_1(v270, v190);
  memcpy(v273, v270, 0x161uLL);
  OUTLINED_FUNCTION_7_14();
  v191 = v267;
  sub_21733CAD0();
  v192 = v163[5];
  v193 = v163[6];
  OUTLINED_FUNCTION_162_2(v163 + 2);
  v194 = OUTLINED_FUNCTION_5_4();
  v195(v194, v193);
  v196 = v274[4];
  __swift_project_boxed_opaque_existential_1(v274, v274[3]);
  v197 = *(*(v196 + 8) + 48);
  v198 = OUTLINED_FUNCTION_5_4();
  v199(v198);
  __swift_destroy_boxed_opaque_existential_1(v274);
  v266 = v271[0];
  v264 = v271[1];
  LODWORD(v263) = LOBYTE(v271[2]);
  v200 = v163[5];
  v201 = v163[6];
  OUTLINED_FUNCTION_162_2(v163 + 2);
  v202 = OUTLINED_FUNCTION_5_4();
  v203(v202, v201);
  OUTLINED_FUNCTION_67(v274, v274[3]);
  v205 = *(v204 + 56);
  v206 = OUTLINED_FUNCTION_5_4();
  v208 = v207(v206);
  v261 = v209;
  v262 = v208;
  __swift_destroy_boxed_opaque_existential_1(v274);
  memcpy(v274, v273, 0x168uLL);
  memset(&v274[45], 0, 24);
  nullsub_1(v274, v210);
  v211 = v163[5];
  v212 = v163[6];
  OUTLINED_FUNCTION_232_0();
  v213 = OUTLINED_FUNCTION_66_5();
  v214(v213, v212);
  v215 = v269[3];
  OUTLINED_FUNCTION_67(v269, v269[3]);
  v217 = (*(v216 + 64))(v215);
  __swift_destroy_boxed_opaque_existential_1(v269);
  v218 = v163[5];
  v219 = v163[6];
  OUTLINED_FUNCTION_232_0();
  v220 = OUTLINED_FUNCTION_66_5();
  v221(v220, v219);
  v222 = v269[3];
  OUTLINED_FUNCTION_67(v269, v269[3]);
  v224 = (*(v223 + 72))(v222);
  __swift_destroy_boxed_opaque_existential_1(v269);
  v225 = v163[5];
  v226 = v163[6];
  OUTLINED_FUNCTION_232_0();
  v227 = OUTLINED_FUNCTION_66_5();
  v228(v227, v226);
  v229 = v269[3];
  OUTLINED_FUNCTION_67(v269, v269[3]);
  v231 = (*(v230 + 80))(v229);
  __swift_destroy_boxed_opaque_existential_1(v269);
  v233 = v163[5];
  v232 = v163[6];
  OUTLINED_FUNCTION_232_0();
  v234 = OUTLINED_FUNCTION_66_5();
  v235(v234, v232);
  OUTLINED_FUNCTION_67(v269, v269[3]);
  v237 = *(v236 + 88);
  v238 = OUTLINED_FUNCTION_5_4();
  v240 = v239(v238);
  OUTLINED_FUNCTION_1_19();
  sub_21733CA78(v268, v241);
  sub_21733CA78(v170, type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v269);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v243 = v191 + v242[9];
  v244 = v264;
  *v243 = v266;
  *(v243 + 8) = v244;
  *(v243 + 16) = v263;
  v245 = (v191 + v242[10]);
  v246 = v261;
  *v245 = v262;
  v245[1] = v246;
  memcpy((v191 + v242[11]), v274, 0x180uLL);
  *(v191 + v242[12]) = v217;
  *(v191 + v242[13]) = v224;
  *(v191 + v242[14]) = v231;
  *(v191 + v242[15]) = v240;
  OUTLINED_FUNCTION_13();
}

void sub_2173385F0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_111();
  sub_21729C79C(v0, v50);
  if (v50[56] == 1)
  {
    OUTLINED_FUNCTION_8_2();
    sub_21730D230(v3, v18);
    sub_217283B58(v49);
    OUTLINED_FUNCTION_100_5();
    sub_21733CE30();
    type metadata accessor for LegacyModelCodablePlaylistEntryItem();
    OUTLINED_FUNCTION_188_2();
    swift_storeEnumTagMultiPayload();
    v19 = v13[10];
    v20 = (v1 + v13[9]);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v20 + 16);
    v24 = *(v1 + v13[12]);
    v47 = v13[11];
    v48 = v24;
    v25 = v13[14];
    v46 = *(v1 + v13[13]);
    v27 = *(v1 + v19);
    v26 = *(v1 + v19 + 8);
    v28 = *(v1 + v25);
    v29 = *(v1 + v13[15]);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v31 = OUTLINED_FUNCTION_79_6(v30);
    *v32 = v21;
    *(v32 + 8) = v22;
    *(v32 + 16) = v23;
    v33 = OUTLINED_FUNCTION_47_7(v31);
    memcpy(v33, (v1 + v47), 0x180uLL);
    *(v5 + *(v0 + 48)) = v48;
    OUTLINED_FUNCTION_64_7(*(v0 + 52));
    *(v5 + v34) = v29;
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    sub_2172F34C8(v3, v35);
    sub_217283C08(v49);
    OUTLINED_FUNCTION_98_6();
    sub_21733CE30();
    type metadata accessor for LegacyModelCodablePlaylistEntryItem();
    OUTLINED_FUNCTION_188_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_155_2();
    v47 = v37;
    v48 = v36;
    v39 = *(v6 + 56);
    v46 = *&v12[*(v6 + 52)];
    OUTLINED_FUNCTION_200_1(&v12[v38]);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v41 = OUTLINED_FUNCTION_79_6(v40);
    *v42 = v1;
    *(v42 + 8) = v13;
    *(v42 + 16) = v3;
    v43 = OUTLINED_FUNCTION_47_7(v41);
    memcpy(v43, &v12[v47], 0x180uLL);
    *(v5 + *(v0 + 48)) = v48;
    OUTLINED_FUNCTION_64_7(*(v0 + 52));
    *(v5 + v44) = v6;
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217338840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v65 - v7;
  v9 = sub_2177517D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v87 = v2;
  v19 = *(v2 + 40);
  if (v19 != 10)
  {
    LOBYTE(v110[0]) = *(v2 + 40);
    sub_2176E4CF8();
    v18 = 0x80000002177ABB10;
    v17 = 0x796C746E65636572;
    if (v19 == 6)
    {
      v18 = 0xEF646579616C702DLL;
    }

    else
    {
      v17 = 0xD000000000000015;
    }
  }

  v81 = v18;
  v82 = v17;
  v83 = v16;
  v84 = v15;
  v20 = type metadata accessor for MusicPersonalRecommendation();
  v21 = v87;
  v79 = *(v87 + *(v20 + 56));
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for CloudFormatter();
  v23 = __swift_project_value_buffer(v22, qword_280BE8918);
  v86 = v20;
  sub_21726A630(v21 + *(v20 + 40), v8, &qword_27CB241C0, &qword_217759480);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2171F0738(v8, &qword_27CB241C0, &qword_217759480);
    v77 = 0;
    v78 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v24 = *(v23 + *(v22 + 24));
    v25 = sub_2177517A8();
    v26 = [v24 stringFromDate_];

    v27 = sub_217751F48();
    v77 = v28;
    v78 = v27;

    (*(v10 + 8))(v14, v9);
  }

  v29 = v86;
  v30 = v86[11];
  v76 = *(v21 + v86[12]);
  if (*(v21 + v30) == 7)
  {
    v75 = 0;
    v31 = 1;
  }

  else
  {
    v109[0] = *(v21 + v30);
    MusicPersonalRecommendation._DisplayKind.convertToCloudDisplayInfo()();
    v75 = v110[0];
    v31 = v110[1];
  }

  v74 = v31;
  v32 = v21[9];
  if (v32)
  {
    v73 = v21[8];
    v72 = sub_217751DC8();
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v33 = v21[7];
  v85 = a2;
  v69 = v32;
  if (v33)
  {
    v71 = v21[6];
    sub_217751DE8();
    v70 = sub_217751DC8();
  }

  else
  {
    sub_217751DE8();
    v70 = 0;
    v71 = 0;
  }

  v34 = *(v21 + v29[15]);
  sub_217751DE8();
  v68 = sub_2176E6868(v34);
  MusicPersonalRecommendation.items.getter();
  sub_2172ECD24(0, v110);
  sub_2171F0738(v109, &qword_27CB25928, &unk_21775D9A0);
  v35 = v110[0];
  v36 = v110[1];
  sub_2171FB568(v110[0], v110[1]);
  sub_2176DE488();
  v38 = v37;
  v39 = v110[4];
  v66 = v110[5];
  v67 = v110[3];
  v40 = v110[6];
  v41 = v110[7];
  v80 = v33;
  v42 = v110[8];
  sub_21726A630(&v110[9], v107, &qword_27CB24188, &dword_217758930);
  v106[0] = v35;
  v106[1] = v36;
  v106[2] = v38;
  v106[3] = v67;
  v106[4] = v39;
  v106[5] = v66;
  v106[6] = v40;
  v106[7] = v41;
  v106[8] = v42;
  v107[5] = v110[14];
  v107[6] = v110[15];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v43 = v86;
  sub_217751DE8();
  sub_2171F0738(v110, &qword_27CB25930, &unk_217797B70);
  v44 = (v87 + v43[13]);
  v45 = *v44;
  v46 = v44[1];
  v47 = v44[2];
  v48 = *v87;
  v49 = v87[1];
  sub_21733C840(v106, v102);
  v88[0] = v48;
  v88[1] = v49;
  v88[2] = v83;
  v88[3] = v84;
  v88[4] = v82;
  v88[5] = v81;
  v89 = v79;
  v90 = v78;
  v91 = v77;
  v92 = v76;
  v93 = v75;
  v94 = v74;
  v95 = v73;
  v96 = v69;
  v97 = v72;
  v98 = v71;
  v99 = v80;
  v100 = v70;
  v101 = v68;
  v102[128] = 1;
  v103 = v45;
  v104 = v46;
  v105 = v47;
  sub_2172E1074(v45, v46, v47);
  v50 = v87;
  sub_217751DE8();
  sub_2176EF244();
  nullsub_1(v108, v51);
  v52 = v50[4];
  memcpy(v109, v108, 0x161uLL);
  v53 = v85;
  sub_21733C5F0(v88, v85);
  v54 = qword_280BE4AB0;
  sub_217751DE8();
  if (v54 != -1)
  {
    swift_once();
  }

  v55 = unk_280BE4AC0;
  v84 = qword_280BE4AB8;
  LODWORD(v83) = byte_280BE4AC8;
  sub_217751DE8();
  sub_217269D5C(v88);
  sub_21728373C(v106);
  v57 = v50[2];
  v56 = v50[3];
  memcpy(v110, v109, 0x168uLL);
  v110[47] = 0;
  v110[45] = v52;
  v110[46] = 0;
  nullsub_1(v110, v58);
  v59 = *(v50 + v43[17]);
  v60 = *(v50 + v43[18]);
  v61 = v43[20];
  v62 = *(v50 + v43[19]);
  v63 = *(v50 + v61);
  *(v53 + 312) = v84;
  *(v53 + 320) = v55;
  *(v53 + 328) = v83;
  *(v53 + 336) = v57;
  *(v53 + 344) = v56;
  memcpy((v53 + 352), v110, 0x180uLL);
  *(v53 + 736) = v59;
  *(v53 + 744) = v60;
  *(v53 + 752) = v62;
  *(v53 + 760) = v63;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_217338F1C()
{
  OUTLINED_FUNCTION_12();
  v136 = v2;
  v137 = v3;
  v139 = v4;
  v140 = v5;
  v7 = v6;
  v9 = v8;
  v135 = v10;
  v12 = v11;
  v138 = v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v14 = OUTLINED_FUNCTION_43(v129);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_31();
  v130 = v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19, v20);
  v126 = &v125 - v21;
  v22 = OUTLINED_FUNCTION_206();
  v23 = type metadata accessor for CloudStation(v22);
  v24 = OUTLINED_FUNCTION_45_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_81();
  v133 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v30 = OUTLINED_FUNCTION_43(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  OUTLINED_FUNCTION_31();
  v128 = v34;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v125 - v37;
  v39 = type metadata accessor for CloudPlaylist(0);
  v40 = OUTLINED_FUNCTION_45_0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  OUTLINED_FUNCTION_81();
  v132 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v46 = OUTLINED_FUNCTION_43(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  OUTLINED_FUNCTION_31();
  v127 = v50;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v51, v52);
  v53 = OUTLINED_FUNCTION_201_3();
  v54 = type metadata accessor for CloudAlbum(v53);
  v55 = OUTLINED_FUNCTION_45_0(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55, v58);
  OUTLINED_FUNCTION_81();
  v131 = v59;
  v60 = OUTLINED_FUNCTION_206();
  v61 = v9(v60);
  v62 = OUTLINED_FUNCTION_43(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62, v65);
  OUTLINED_FUNCTION_6_1();
  v68 = v66 - v67;
  MEMORY[0x28223BE20](v69, v70);
  OUTLINED_FUNCTION_115_3();
  OUTLINED_FUNCTION_25_0();
  sub_21733CAD0();
  v134 = v1;
  sub_21733CAD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21733CE30();
      OUTLINED_FUNCTION_154();
      sub_21733CAD0();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
      OUTLINED_FUNCTION_163_1(v72);
      v74 = v73[1];
      v127 = *v73;
      OUTLINED_FUNCTION_205_2(v73);
      v130 = v75;
      v131 = v74;
      v129 = v76;
      OUTLINED_FUNCTION_222_1(v77);
      OUTLINED_FUNCTION_148_1();
      v79 = *(v12 + v78);
      v80 = &v38[v29[9]];
      *v80 = v127;
      *(v80 + 1) = v74;
      v80[16] = v126;
      v81 = &v38[v29[10]];
      v82 = v129;
      *v81 = v130;
      *(v81 + 1) = v82;
      memcpy(&v38[v29[11]], (v12 + v1), 0x180uLL);
      *&v38[v29[12]] = v68;
      *&v38[v29[13]] = v7;
      *&v38[v29[14]] = v125;
      *&v38[v29[15]] = v79;
      sub_21726A630(v38, v128, &qword_27CB24790, &unk_21775A220);
      v83 = v136;
      sub_2172CA838(v136, v142);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v143, v141, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v84 = OUTLINED_FUNCTION_198_2();
      sub_2172F565C(v84, v85);
      sub_21733AB9C(v83);
      sub_2171F0738(v12, v139, v140);
      sub_2171F0738(v38, &qword_27CB24790, &unk_21775A220);
      sub_21733CA78(v132, type metadata accessor for CloudPlaylist);
      sub_21733CA78(v134, v137);
      OUTLINED_FUNCTION_53_6();
      v87 = 1;
    }

    else
    {
      v105 = v133;
      sub_21733CE30();
      v106 = v126;
      sub_21733CAD0();
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
      v108 = OUTLINED_FUNCTION_163_1(v107);
      v110 = *v109;
      v111 = *(v109 + 8);
      LODWORD(v125) = *(v109 + 16);
      v113 = *(v12 + v112 + 8);
      v131 = *(v12 + v112);
      v132 = v111;
      v127 = v110;
      v128 = v113;
      v114 = *(v108 + 44);
      memcpy(v143, (v12 + v114), 0x180uLL);
      v115 = *(v12 + v105[12]);
      v116 = *(v12 + v105[13]);
      v117 = *(v12 + v105[14]);
      v118 = *(v12 + v105[15]);
      v119 = v129;
      v120 = v106 + v129[9];
      *v120 = v127;
      *(v120 + 8) = v111;
      *(v120 + 16) = v125;
      v121 = (v106 + v119[10]);
      v122 = v128;
      *v121 = v131;
      v121[1] = v122;
      memcpy((v106 + v119[11]), (v12 + v114), 0x180uLL);
      *(v106 + v119[12]) = v115;
      *(v106 + v119[13]) = v116;
      *(v106 + v119[14]) = v117;
      *(v106 + v119[15]) = v118;
      v123 = v130;
      sub_21726A630(v106, v130, &qword_27CB24738, &qword_217758CC0);
      v124 = v136;
      sub_2172CA838(v136, v142);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v143, v141, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2173078AC(v123, v142);
      sub_21733AB9C(v124);
      sub_2171F0738(v12, v139, v140);
      sub_2171F0738(v106, &qword_27CB24738, &qword_217758CC0);
      sub_21733CA78(v133, type metadata accessor for CloudStation);
      sub_21733CA78(v134, v137);
      OUTLINED_FUNCTION_53_6();
      v87 = 2;
    }

    *(v86 + 56) = v87;
  }

  else
  {
    sub_21733CE30();
    sub_21733CAD0();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
    OUTLINED_FUNCTION_163_1(v88);
    v90 = *v89;
    v132 = v89[1];
    v91 = v132;
    OUTLINED_FUNCTION_205_2(v89);
    v130 = v92;
    v128 = v94;
    v129 = v93;
    OUTLINED_FUNCTION_222_1(v95);
    OUTLINED_FUNCTION_148_1();
    v97 = *(v12 + v96);
    v98 = v0 + v45[9];
    v99 = v129;
    *v98 = v128;
    *(v98 + 8) = v91;
    *(v98 + 16) = v126;
    v100 = (v0 + v45[10]);
    *v100 = v130;
    v100[1] = v99;
    memcpy((v0 + v45[11]), (v12 + v1), 0x180uLL);
    *(v0 + v45[12]) = v68;
    *(v0 + v45[13]) = v7;
    *(v0 + v45[14]) = v125;
    *(v0 + v45[15]) = v97;
    sub_21726A630(v0, v127, &qword_27CB247F0, &qword_21775D360);
    v101 = v136;
    sub_2172CA838(v136, v142);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v143, v141, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v102 = OUTLINED_FUNCTION_198_2();
    sub_2172E5528(v102, v103);
    sub_21733AB9C(v101);
    sub_2171F0738(v12, v139, v140);
    sub_2171F0738(v0, &qword_27CB247F0, &qword_21775D360);
    sub_21733CA78(v131, type metadata accessor for CloudAlbum);
    sub_21733CA78(v134, v137);
    OUTLINED_FUNCTION_53_6();
    *(v104 + 56) = 0;
  }

  OUTLINED_FUNCTION_13();
}

void sub_21733971C()
{
  OUTLINED_FUNCTION_12();
  v78 = v3;
  v79 = v4;
  v77 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_131_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_130_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v74 - v28;
  v7(v0, &v81, v27);
  if (v82)
  {
    if (v82 == 1)
    {
      OUTLINED_FUNCTION_8_2();
      sub_2172F9998(v9, v30);
      sub_21726B8C4(v80);
      sub_21733CE30();
      v77(0);
      OUTLINED_FUNCTION_188_2();
      swift_storeEnumTagMultiPayload();
      v31 = v17[10];
      v32 = (v2 + v17[9]);
      v33 = *v32;
      v34 = v32[1];
      v35 = *(v32 + 16);
      v36 = *(v2 + v17[12]);
      v76 = v17[11];
      v77 = v36;
      v37 = v17[14];
      v75 = *(v2 + v17[13]);
      v39 = *(v2 + v31);
      v38 = *(v2 + v31 + 8);
      v40 = *(v2 + v37);
      v41 = *(v2 + v17[15]);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
      v43 = OUTLINED_FUNCTION_79_6(v42);
      *v44 = v33;
      *(v44 + 8) = v34;
      *(v44 + 16) = v35;
      v45 = (v11 + *(v43 + 40));
      *v45 = v39;
      v45[1] = v38;
      memcpy((v11 + *(v43 + 44)), (v2 + v76), 0x180uLL);
      OUTLINED_FUNCTION_54_6();
      *(v11 + v46) = v40;
      *(v11 + *(v0 + 60)) = v41;
    }

    else
    {
      OUTLINED_FUNCTION_8_2();
      sub_21730FC14(v9, v57);
      sub_217283DC8(v80);
      sub_21733CE30();
      v77(0);
      OUTLINED_FUNCTION_188_2();
      swift_storeEnumTagMultiPayload();
      v58 = v12[10];
      v59 = (v1 + v12[9]);
      v60 = *v59;
      v61 = v59[1];
      v62 = *(v59 + 16);
      v63 = *(v1 + v12[12]);
      v76 = v12[11];
      v77 = v63;
      v64 = v12[14];
      v75 = *(v1 + v12[13]);
      v66 = *(v1 + v58);
      v65 = *(v1 + v58 + 8);
      v67 = *(v1 + v64);
      v68 = *(v1 + v12[15]);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
      v70 = OUTLINED_FUNCTION_79_6(v69);
      *v71 = v60;
      *(v71 + 8) = v61;
      *(v71 + 16) = v62;
      v72 = OUTLINED_FUNCTION_47_7(v70);
      memcpy(v72, (v1 + v76), 0x180uLL);
      OUTLINED_FUNCTION_54_6();
      *(v11 + v73) = v67;
      *(v11 + *(v0 + 60)) = v68;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    sub_2172E9898(v9, v47);
    sub_21725CE44(v80);
    sub_21733CE30();
    v77(0);
    OUTLINED_FUNCTION_188_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_155_2();
    v76 = v49;
    v77 = v48;
    v51 = *(v22 + 56);
    v75 = *&v29[*(v22 + 52)];
    OUTLINED_FUNCTION_200_1(&v29[v50]);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
    v53 = OUTLINED_FUNCTION_79_6(v52);
    *v54 = v7;
    *(v54 + 8) = v1;
    *(v54 + 16) = v12;
    v55 = OUTLINED_FUNCTION_47_7(v53);
    memcpy(v55, &v29[v76], 0x180uLL);
    OUTLINED_FUNCTION_54_6();
    *(v11 + v56) = v17;
    *(v11 + *(v0 + 60)) = v22;
  }

  OUTLINED_FUNCTION_13();
}

void *sub_217339A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_2173130F4();

  return v3;
}

void *sub_217339CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_2173130F4();

  return v3;
}

void *sub_21733A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_217751DE8();

  v6 = OUTLINED_FUNCTION_25_0();
  sub_217312F4C(v6, v7, a4);

  return v4;
}

void *sub_21733A50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_2173130F4();

  return v3;
}

unint64_t sub_21733A5C8()
{
  result = qword_280BE7610;
  if (!qword_280BE7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7610);
  }

  return result;
}

unint64_t sub_21733A61C()
{
  result = qword_27CB254E8;
  if (!qword_27CB254E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254E8);
  }

  return result;
}

unint64_t sub_21733A670()
{
  result = qword_27CB254F0;
  if (!qword_27CB254F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254F0);
  }

  return result;
}

unint64_t sub_21733A6C4()
{
  result = qword_27CB254F8;
  if (!qword_27CB254F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254F8);
  }

  return result;
}

void sub_21733A718(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_143_2();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_21733A754()
{
  result = qword_27CB25520;
  if (!qword_27CB25520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25520);
  }

  return result;
}

unint64_t sub_21733A7B0()
{
  result = qword_27CB25528;
  if (!qword_27CB25528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25528);
  }

  return result;
}

_BYTE *sub_21733A838(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21733A938()
{
  result = qword_27CB25530;
  if (!qword_27CB25530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25530);
  }

  return result;
}

unint64_t sub_21733A990()
{
  result = qword_27CB25538;
  if (!qword_27CB25538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25538);
  }

  return result;
}

unint64_t sub_21733A9E8()
{
  result = qword_27CB25540;
  if (!qword_27CB25540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25540);
  }

  return result;
}

unint64_t sub_21733AA40()
{
  result = qword_27CB25548;
  if (!qword_27CB25548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25548);
  }

  return result;
}

unint64_t sub_21733AA98()
{
  result = qword_27CB25550;
  if (!qword_27CB25550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25550);
  }

  return result;
}

unint64_t sub_21733AAF0()
{
  result = qword_27CB25558;
  if (!qword_27CB25558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25558);
  }

  return result;
}

unint64_t sub_21733AB48()
{
  result = qword_27CB25560;
  if (!qword_27CB25560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25560);
  }

  return result;
}

unint64_t sub_21733ABF0()
{
  result = qword_27CB25578;
  if (!qword_27CB25578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25578);
  }

  return result;
}

unint64_t sub_21733AC44()
{
  result = qword_280BE23F0[0];
  if (!qword_280BE23F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE23F0);
  }

  return result;
}

unint64_t sub_21733AC98()
{
  result = qword_27CB25598;
  if (!qword_27CB25598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25598);
  }

  return result;
}

uint64_t sub_21733ACEC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25590, &qword_21776DFB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21733AD70()
{
  result = qword_280BE23E8;
  if (!qword_280BE23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE23E8);
  }

  return result;
}

void sub_21733ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_80_3();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21733B290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

void sub_21733B8A4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0xC8uLL);
}

uint64_t sub_21733B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_217751DE8();
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_21733B90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_21733B95C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return v4;
}

uint64_t sub_21733BBDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return v4;
}

uint64_t sub_21733BC28()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

unint64_t sub_21733BE84()
{
  result = qword_280BE49C0;
  if (!qword_280BE49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE49C0);
  }

  return result;
}

uint64_t sub_21733BF2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_217221020(result);
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_21733BF7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_217221010(result);
  }

  return result;
}

unint64_t sub_21733BFCC()
{
  result = qword_27CB25728;
  if (!qword_27CB25728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25728);
  }

  return result;
}

unint64_t sub_21733C020()
{
  result = qword_27CB25730;
  if (!qword_27CB25730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25730);
  }

  return result;
}

unint64_t sub_21733C074()
{
  result = qword_27CB25768;
  if (!qword_27CB25768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25768);
  }

  return result;
}

unint64_t sub_21733C0C8()
{
  result = qword_27CB25770;
  if (!qword_27CB25770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25770);
  }

  return result;
}

unint64_t sub_21733C11C()
{
  result = qword_27CB257A0;
  if (!qword_27CB257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB257A0);
  }

  return result;
}

unint64_t sub_21733C170()
{
  result = qword_27CB257A8;
  if (!qword_27CB257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB257A8);
  }

  return result;
}

unint64_t sub_21733C27C()
{
  result = qword_27CB25800;
  if (!qword_27CB25800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25800);
  }

  return result;
}

unint64_t sub_21733C2D0()
{
  result = qword_27CB25808;
  if (!qword_27CB25808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25808);
  }

  return result;
}

unint64_t sub_21733C324()
{
  result = qword_27CB25830;
  if (!qword_27CB25830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25830);
  }

  return result;
}

unint64_t sub_21733C378()
{
  result = qword_27CB25838;
  if (!qword_27CB25838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25838);
  }

  return result;
}

uint64_t sub_21733C3CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_217221020(result);

    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_21733C410(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_217221010(result);
  }

  return result;
}

unint64_t sub_21733C454()
{
  result = qword_27CB25868;
  if (!qword_27CB25868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25868);
  }

  return result;
}

unint64_t sub_21733C4A8()
{
  result = qword_27CB25870;
  if (!qword_27CB25870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25870);
  }

  return result;
}

uint64_t sub_21733C6A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_2172E1074(result, a2, a3);
  }

  return result;
}

uint64_t sub_21733C6CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_2172E141C(result, a2, a3);
  }

  return result;
}

unint64_t sub_21733C6F0()
{
  result = qword_27CB25910;
  if (!qword_27CB25910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25910);
  }

  return result;
}

unint64_t sub_21733C744()
{
  result = qword_27CB25918;
  if (!qword_27CB25918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25918);
  }

  return result;
}

unint64_t sub_21733C798()
{
  result = qword_27CB25920;
  if (!qword_27CB25920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25920);
  }

  return result;
}

unint64_t sub_21733C9AC()
{
  result = qword_27CB25988;
  if (!qword_27CB25988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25988);
  }

  return result;
}

unint64_t sub_21733CA00()
{
  result = qword_27CB25990;
  if (!qword_27CB25990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25990);
  }

  return result;
}

uint64_t sub_21733CA54()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_217313258();
}

uint64_t sub_21733CA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21733CAD0()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

unint64_t sub_21733CB28()
{
  result = qword_27CB259C0;
  if (!qword_27CB259C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB259C0);
  }

  return result;
}

unint64_t sub_21733CB7C()
{
  result = qword_27CB259C8;
  if (!qword_27CB259C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB259C8);
  }

  return result;
}

unint64_t sub_21733CBD0()
{
  result = qword_27CB259F8;
  if (!qword_27CB259F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB259F8);
  }

  return result;
}

unint64_t sub_21733CC24()
{
  result = qword_27CB25A00;
  if (!qword_27CB25A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25A00);
  }

  return result;
}

uint64_t sub_21733CCD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21733CD28()
{
  result = qword_27CB25A30;
  if (!qword_27CB25A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25A30);
  }

  return result;
}

unint64_t sub_21733CD7C()
{
  result = qword_27CB25A38;
  if (!qword_27CB25A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25A38);
  }

  return result;
}

uint64_t sub_21733CDD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21733CE30()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_16_17()
{
  v0[85] = v4;
  v0[86] = v5;
  v0[87] = v6;
  v0[88] = v1;
  v0[89] = v2;
  v0[90] = v3;
  v7 = v0[13];
}

uint64_t OUTLINED_FUNCTION_41_8()
{

  return sub_21726A630(v1, v0, v2, v3);
}

void OUTLINED_FUNCTION_42_7(__n128 a1)
{
  v1[74] = a1;
  v1[75] = a1;
  v1[76] = a1;
  v1[77] = a1;
}

uint64_t OUTLINED_FUNCTION_47_7(uint64_t a1)
{
  v4 = (v1 + *(a1 + 40));
  *v4 = v3;
  v4[1] = v2;
  return v1 + *(a1 + 44);
}

__n128 OUTLINED_FUNCTION_48_7()
{
  result = *(v0 + 448);
  v2 = *(v0 + 464);
  *(v0 + 160) = result;
  *(v0 + 176) = v2;
  *(v0 + 192) = *(v0 + 480);
  return result;
}

void OUTLINED_FUNCTION_51_6(__n128 a1)
{
  v1[70] = a1;
  v1[71] = a1;
  v1[72] = a1;
  v1[73] = a1;
}

__n128 OUTLINED_FUNCTION_53_6()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  *v2 = *(v0 + 128);
  *(v2 + 16) = v1;
  result = *(v0 + 160);
  *(v2 + 32) = result;
  *(v2 + 48) = *(v0 + 176);
  return result;
}

void OUTLINED_FUNCTION_54_6()
{
  *(v0 + v1[12]) = *(v2 - 232);
  *(v0 + v1[13]) = *(v2 - 248);
  v3 = v1[14];
}

uint64_t OUTLINED_FUNCTION_55_4()
{
  *(v0 + 1328) = v1;
  v3 = v0[4];
  v4 = *v0;

  return sub_217752EC8();
}

uint64_t OUTLINED_FUNCTION_59_3(uint64_t a1)
{
  v3 = *(v1 + 288);
  *(a1 + 16) = *(v1 + 272);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 304);
  *(a1 + 64) = *(v1 + 320);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_60_6(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  v5 = *(v4 + 520);
  v6 = *(v4 + 528);
  v7 = *(v4 + 608);
  v8 = *(v4 + 616);
  *(v4 + 400) = 0;
  *(v4 + 295) = a4;
  *(v4 + 311) = *(v4 + 480);
  sub_2171FB568(a1, a2);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  v1 = *(v0 + 464);
  *(v0 + 279) = *(v0 + 448);
  result = *(v0 + 496);
  if (*(v0 + 504) != 1)
  {
    v3 = *(v0 + 496);
  }

  return result;
}

void OUTLINED_FUNCTION_64_7(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;
  *(v2 + *(v3 + 56)) = v4;
  v5 = *(v3 + 60);
}

uint64_t OUTLINED_FUNCTION_71_6()
{
  __swift_destroy_boxed_opaque_existential_1((v2 - 128));
  v3 = *(v1 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_72_5()
{
  *(v0 + 944) = v1;
  v3 = *(v0 + 88);

  return sub_217752E08();
}

uint64_t OUTLINED_FUNCTION_76_5()
{

  return sub_217283154(v0 - 128);
}

__n128 OUTLINED_FUNCTION_81_4()
{
  result = *(v0 + 224);
  v2 = *(v0 + 240);
  *(v0 + 448) = result;
  *(v0 + 464) = v2;
  *(v0 + 480) = *(v0 + 256);
  v3 = *(v0 + 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_90_4(_OWORD *a1)
{
  v3 = v1[11];
  a1[1] = v1[10];
  a1[2] = v3;
  v4 = v1[13];
  a1[3] = v1[12];
  a1[4] = v4;

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_111_4(__n128 a1)
{
  v1[78] = a1;
  v1[79] = a1;
  v1[80] = a1;
  v1[81] = a1;
}

uint64_t OUTLINED_FUNCTION_113_4()
{
  v2 = *(*(v0 + 24) + 16);
}

double OUTLINED_FUNCTION_114_2()
{
  result = 0.0;
  v0[193] = 0u;
  v0[194] = 0u;
  v0[195] = 0u;
  v0[196] = 0u;
  v0[197] = 0u;
  v0[198] = 0u;
  v0[199] = 0u;
  v0[200] = 0u;
  return result;
}

double OUTLINED_FUNCTION_116_4()
{
  *(v0 + 480) = 0;
  result = 0.0;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  v2 = *(v0 + 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_120_4()
{
  result = *v0;
  if (v0[1] != 1)
  {
    v2 = *v0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_121_3()
{

  return swift_once();
}

double OUTLINED_FUNCTION_125_2()
{
  *(v0 + 256) = 0;
  result = 0.0;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  v2 = *(v0 + 560);
  return result;
}

__n128 OUTLINED_FUNCTION_126_3()
{
  result = *(v0 + 400);
  v2 = *(v0 + 416);
  *(v0 + 448) = result;
  *(v0 + 464) = v2;
  *(v0 + 480) = *(v0 + 432);
  return result;
}

uint64_t OUTLINED_FUNCTION_132_2()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_136_2()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_139_3()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_140_4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 72) = a5;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_141_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
}

uint64_t OUTLINED_FUNCTION_142_2()
{
  *(v2 + 16) = v0;
  v7 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1;
  v8 = *(v5 - 112);
  v9 = *(v5 - 104);

  return sub_21726A594(v4, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_144_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21726A630(v4 + 16, v5 - 128, a3, a4);
}

void OUTLINED_FUNCTION_148_1()
{
  v3 = *(v2 + v1[12]);
  v0[8] = *(v2 + v1[13]);
  v4 = v1[15];
  *v0 = *(v2 + v1[14]);
}

uint64_t OUTLINED_FUNCTION_150_2(uint64_t a1)
{
  v3 = *(v1 + 512);
  *(a1 + 16) = *(v1 + 496);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 528);
  *(a1 + 64) = *(v1 + 544);

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_151_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_152_3()
{
  v3 = *(v0 + 552);

  return sub_2172CA838(v1, v0 + 288);
}

uint64_t OUTLINED_FUNCTION_153_2()
{
  v3 = *(v0 + 328);

  return sub_2172CA838(v1, v0 + 184);
}

uint64_t OUTLINED_FUNCTION_154_1()
{

  return sub_2171FF30C(v0, v1 - 120);
}

void OUTLINED_FUNCTION_155_2()
{
  v2 = v1[10];
  v3 = (v0 + v1[9]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v1[11];
  v8 = *(v0 + v1[12]);
}

double OUTLINED_FUNCTION_156_2()
{
  result = 0.0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  return result;
}

double OUTLINED_FUNCTION_157_3()
{
  result = 0.0;
  v0[58] = 0u;
  v0[59] = 0u;
  v0[60] = 0u;
  v0[61] = 0u;
  v0[62] = 0u;
  v0[63] = 0u;
  v0[64] = 0u;
  v0[65] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_159_2()
{
  *(v2 - 72) = v1;
  result = 0;
  *(v2 - 120) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_160_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *(v5 - 96) = a1;
  *(v5 - 88) = a2;
  *(v5 - 112) = a4;
  *(v5 - 104) = a5;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

uint64_t OUTLINED_FUNCTION_163_1(uint64_t result)
{
  v2 = *(result + 40);
  v3 = v1 + *(result + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_169_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_21729CCC4(va);
}

uint64_t OUTLINED_FUNCTION_170_1(_OWORD *a1)
{
  v3 = v1[18];
  a1[1] = v1[17];
  a1[2] = v3;
  v4 = v1[20];
  a1[3] = v1[19];
  a1[4] = v4;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_171_2@<X0>(char *a1@<X8>)
{

  return sub_2174E3DC8(v1, a1);
}

double OUTLINED_FUNCTION_173_2()
{
  result = 0.0;
  v0[50] = 0u;
  v0[51] = 0u;
  v0[52] = 0u;
  v0[53] = 0u;
  v0[54] = 0u;
  v0[55] = 0u;
  v0[56] = 0u;
  v0[57] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_174_3()
{
  result = __swift_destroy_boxed_opaque_existential_1((v1 - 128));
  v3 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_181_3()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1240);
  *(v0 + 448) = 0;
}

__n128 OUTLINED_FUNCTION_182_2()
{
  result = *(v0 + 400);
  v2 = *(v0 + 416);
  *(v0 + 160) = result;
  *(v0 + 176) = v2;
  *(v0 + 192) = *(v0 + 432);
  v3 = *(v0 + 472);
  return result;
}

void OUTLINED_FUNCTION_185_1()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_186_2()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_187_2()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_192_2(uint64_t a1@<X8>)
{
  *(a1 - 48) = v1;
  *(a1 - 40) = v4;
  *(a1 - 32) = v6;
  *(a1 - 24) = v5;
  *(a1 - 16) = v3;
  *(a1 - 8) = v2;

  sub_21720BA7C();
}

void OUTLINED_FUNCTION_193_2()
{

  sub_21733971C();
}

uint64_t OUTLINED_FUNCTION_194_2()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_196_3()
{

  sub_217338F1C();
}

uint64_t OUTLINED_FUNCTION_197_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21726A630(v4 + 1248, v4 + 496, a3, a4);
}

uint64_t OUTLINED_FUNCTION_198_2()
{
  result = v1;
  v3 = *(v0 + 80);
  return result;
}

void OUTLINED_FUNCTION_199_0(__n128 a1)
{
  v1[82] = a1;
  v1[83] = a1;
  v1[84] = a1;
  v1[85] = a1;
}

void OUTLINED_FUNCTION_200_1(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(v2 + v1);
  v7 = *(v2 + *(v3 + 60));
}

void OUTLINED_FUNCTION_205_2(uint64_t a1@<X8>)
{
  *(v2 + 8) = *(a1 + 16);
  v4 = v3 + v1;
  v6 = *(v3 + v1);
  v5 = *(v4 + 8);
}

uint64_t OUTLINED_FUNCTION_209_2()
{
  result = v0;
  v3 = *(v1 - 96);
  v4 = *(v1 - 88);
  return result;
}

double OUTLINED_FUNCTION_211_1()
{
  *(v0 + 432) = 0;
  result = 0.0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  v2 = *(v0 + 1184);
  return result;
}

__n128 OUTLINED_FUNCTION_213_3()
{
  result = *(v0 + 160);
  v2 = *(v0 + 176);
  *(v0 + 272) = result;
  *(v0 + 288) = v2;
  *(v0 + 304) = *(v0 + 192);
  return result;
}

void OUTLINED_FUNCTION_215_2(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[3] = a3;
  a1[4] = a4;
  a1[2] = a2;
}

uint64_t OUTLINED_FUNCTION_217_3()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_221_2()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_222_1(uint64_t a1)
{
  v4 = *(a1 + 44);

  return memcpy((v1 + 552), (v2 + v4), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_223_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = 1;

  return sub_21733B548(&a19, &a13);
}

uint64_t OUTLINED_FUNCTION_224_1()
{

  return sub_21726A630(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_225_2()
{

  return Encoder.dataRequestConfiguration.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_226_2()
{
  *(v0 + 296) = 0;
  *(v0 + 304) = 0xE000000000000000;

  return sub_217752AA8();
}

uint64_t OUTLINED_FUNCTION_227_2()
{

  return sub_2171F0738(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_228_2()
{

  return sub_2171F0738(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_229_1()
{
  v3 = *(v0 + 1176);

  return sub_2172CA838(v1, v0 + 512);
}

uint64_t OUTLINED_FUNCTION_230_1()
{
  v3 = *(v0 + 552);

  return sub_2172CA838(v1, v0 + 296);
}

uint64_t OUTLINED_FUNCTION_231_0()
{
  __swift_destroy_boxed_opaque_existential_1((v2 - 128));
  v3 = *(v1 + 8);
  return *v0;
}

void *OUTLINED_FUNCTION_232_0()
{

  return __swift_project_boxed_opaque_existential_1((v1 + 16), v0);
}

uint64_t OUTLINED_FUNCTION_233_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_21726A630(v9, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_234_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2172E4A28(a1, &a9, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_235_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_236_0()
{
  v2 = *(v0 + 128);

  return sub_217751DE8();
}

uint64_t MusicLibrarySearchResponse._requestedTerm.getter()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 672);
  sub_217751DE8();
  return v1;
}

BOOL static MusicLibrarySearchResponse.== infix(_:_:)(void *a1, void *a2)
{
  if ((sub_21733E3E4(a1, a2, sub_2172849D4, sub_2172703B0, sub_217557EA0, sub_2172703D8) & 1) == 0 || (sub_21733E3E4((a1 + 13), (a2 + 13), sub_2172849D4, sub_21727083C, sub_2175581A8, sub_217270864) & 1) == 0 || (sub_21733E3E4((a1 + 26), (a2 + 26), sub_2172849D4, sub_2172710D8, sub_217558CC8, sub_217271100) & 1) == 0 || (sub_21733E3E4((a1 + 39), (a2 + 39), sub_2172849D4, sub_217270680, sub_217558024, sub_217270764) & 1) == 0 || (sub_21733E3E4((a1 + 52), (a2 + 52), sub_2172849D4, sub_217271030, sub_2175589B0, sub_217271058) & 1) == 0 || (sub_21733E3E4((a1 + 65), (a2 + 65), sub_2172849D4, sub_217274178, sub_21755988C, sub_2172741A0) & 1) == 0)
  {
    return 0;
  }

  sub_217202078((a1 + 78), v16, &qword_27CB25AA0, &qword_21775DAC0);
  sub_217202078((a2 + 78), &v18, &qword_27CB25AA0, &qword_21775DAC0);
  if (v17)
  {
    sub_217202078(v16, v13, &qword_27CB25AA0, &qword_21775DAC0);
    if (*(&v19 + 1))
    {
      v11[0] = v18;
      v11[1] = v19;
      v12 = v20;
      v4 = v14;
      v5 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v6 = *(v5 + 40);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AB0, &qword_21775DAD0);
      v8 = v6(v11, v7, v4, v5);
      sub_21733EB14(v11);
      sub_21733EB14(v13);
      sub_2171F06D8(v16, &qword_27CB25AA0, &qword_21775DAC0);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_21733EB14(v13);
LABEL_21:
    sub_2171F06D8(v16, &qword_27CB25AA8, &qword_21775DAC8);
    return 0;
  }

  if (*(&v19 + 1))
  {
    goto LABEL_21;
  }

  sub_2171F06D8(v16, &qword_27CB25AA0, &qword_21775DAC0);
LABEL_13:
  v9 = a1[83] == a2[83] && a1[84] == a2[84];
  if (v9 || (sub_217753058()) && (sub_217270BE0(a1[85], a2[85]))
  {
    return a1[86] == a2[86];
  }

  return 0;
}

uint64_t sub_21733E3E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void), uint64_t (*a6)(void, void))
{
  v11 = a1;
  v12 = *(a1 + 64);
  v13 = *(a2 + 64);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    if (*(a1 + 56) != *(a2 + 56) || v12 != v13)
    {
      a1 = sub_217753058();
      if ((a1 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_17;
  }

  sub_217202078(v11 + 16, v38, &qword_27CB24188, &dword_217758930);
  sub_217202078(a2 + 16, &v40, &qword_27CB24188, &dword_217758930);
  if (v39)
  {
    sub_217202078(v38, v35, &qword_27CB24188, &dword_217758930);
    if (*(&v41 + 1))
    {
      v33[0] = v40;
      v33[1] = v41;
      v34 = v42;
      v15 = v36;
      v16 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v32 = a6;
      v17 = a3;
      v18 = a4;
      v19 = *(v16 + 32);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      v21 = v19(v33, v20, v15, v16);
      a4 = v18;
      a3 = v17;
      a6 = v32;
      v22 = v21;
      sub_217283154(v33);
      sub_217283154(v35);
      a1 = sub_2171F06D8(v38, &qword_27CB24188, &dword_217758930);
      goto LABEL_18;
    }

    sub_217283154(v35);
  }

  else if (!*(&v41 + 1))
  {
    a1 = sub_2171F06D8(v38, &qword_27CB24188, &dword_217758930);
    v22 = 1;
    goto LABEL_18;
  }

  a1 = sub_2171F06D8(v38, &qword_27CB24928, &unk_21775E020);
LABEL_17:
  v22 = 0;
LABEL_18:
  v23 = *v11;
  v24 = *a2;
  v25 = *(a2 + 8);
  if (*(v11 + 8))
  {
    if (*(a2 + 8))
    {
      sub_217283C5C(*a2, 1);
      sub_217283C5C(v23, 1);
      v26 = a3(v23, v24);
      sub_21725CF00(v24, 1);
      v27 = v23;
      v28 = 1;
LABEL_25:
      sub_21725CF00(v27, v28);
      return v26 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    if ((v22 & 1) == 0)
    {
      v26 = 0;
      return v26 & 1;
    }

    sub_217283C5C(*a2, 0);
    sub_217283C5C(v23, 0);
    v26 = a4(v23, v24);
    sub_21725CF00(v23, 0);
    v27 = v24;
    v28 = 0;
    goto LABEL_25;
  }

  v29 = (a5)(a1);
  v30 = a5();
  v26 = a6(v29, v30);

  return v26 & 1;
}

uint64_t MusicLibrarySearchResponse.hash(into:)(uint64_t a1)
{
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_217202078((v1 + 78), v11, &qword_27CB25AA0, &qword_21775DAC0);
  if (v12)
  {
    OUTLINED_FUNCTION_0_22();
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 48))(a1, v3, v4);
    sub_21733EB14(v8);
  }

  else
  {
    sub_217753208();
  }

  v5 = v1[83];
  v6 = v1[84];
  sub_217751FF8();
  sub_21727D7C8(a1, v1[85]);
  return MEMORY[0x21CEA3550](v1[86]);
}

uint64_t MusicLibrarySearchResponse.hashValue.getter()
{
  sub_2177531E8();
  MusicLibrarySearchResponse.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_21733ECCC()
{
  sub_2177531E8();
  MusicLibrarySearchResponse.hash(into:)(v1);
  return sub_217753238();
}

void sub_21733ED08(uint64_t a1)
{
  v35 = 0;
  v36 = 0xE000000000000000;
  v3 = *(v1 + 680);
  v4 = *(v3 + 16);
  sub_217751DE8();
  v5 = 0;
  v6 = (v3 + 56);
  v7 = &qword_27CB25AA0;
  v8 = &qword_21775DAC0;
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = a1;
    v11 = v7;
    v27 = *(v6 - 3);
    v12 = *(v6 - 1);
    v13 = *v6;
    v14 = qword_280BE62F0;
    sub_217751DE8();
    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_280BE6308 == v12 && unk_280BE6310 == v13;
    v7 = v11;
    if (v15 || (sub_217753058() & 1) != 0)
    {

      a1 = v10;
      sub_21759899C();
      v8 = v9;
    }

    else
    {
      a1 = v10;
      if (qword_280BE6270 != -1)
      {
        swift_once();
      }

      v16 = qword_280BE6288 == v12 && unk_280BE6290 == v13;
      v8 = v9;
      if (v16 || (sub_217753058() & 1) != 0)
      {

        sub_2175996FC();
      }

      else
      {
        if (qword_280BE6378 != -1)
        {
          swift_once();
        }

        v17 = qword_280BE6390 == v12 && unk_280BE6398 == v13;
        if (v17 || (sub_217753058() & 1) != 0)
        {

          sub_217599B64();
        }

        else
        {
          if (qword_280BE6220 != -1)
          {
            swift_once();
          }

          v18 = qword_280BE6238 == v12 && unk_280BE6240 == v13;
          if (v18 || (sub_217753058() & 1) != 0)
          {

            sub_217598C8C();
          }

          else
          {
            if (qword_280BEB138 != -1)
            {
              swift_once();
            }

            v19 = qword_280BEB150 == v12 && unk_280BEB158 == v13;
            if (v19 || (sub_217753058() & 1) != 0)
            {

              sub_217599E54();
            }

            else
            {
              sub_217202078(v28 + 624, v32, v7, v9);
              v20 = v33;
              if (v33)
              {
                v26 = v34;
                __swift_project_boxed_opaque_existential_1(v32, v33);
                v29 = v27;
                v30 = v12;
                v31 = v13;
                (*(v26 + 16))(&v29, a1 & 1, &v35, v20);

                sub_21733EB14(v32);
              }

              else
              {

                sub_2171F06D8(v32, v7, v8);
              }
            }
          }
        }
      }
    }

    v6 += 4;
    ++v5;
  }

  sub_21759A144();
  sub_217202078(v28 + 624, v32, &qword_27CB25AA0, &qword_21775DAC0);
  v21 = v33;
  if (v33)
  {
    v22 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    (*(v22 + 24))(a1 & 1, &v35, v21, v22);
    sub_21733EB14(v32);
  }

  else
  {
    sub_2171F06D8(v32, &qword_27CB25AA0, &qword_21775DAC0);
  }

  v32[0] = 0xD00000000000001BLL;
  v32[1] = 0x80000002177ABB70;
  v23 = v35;
  v24 = v36;
  MEMORY[0x21CEA23B0](v35, v36);

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
}

uint64_t sub_21733F284(uint64_t a1)
{
  v2 = v1;
  if (v1[8])
  {
    v4 = v1[7];
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_217202078((v1 + 2), v12, &qword_27CB24188, &dword_217758930);
  if (v13)
  {
    OUTLINED_FUNCTION_0_22();
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 40))(a1, v5, v6);
    sub_217283154(v9);
  }

  else
  {
    sub_217753208();
  }

  v7 = *v1;
  if (*(v2 + 8) == 1)
  {
    swift_beginAccess();
    v7 = *(v7 + 56);
  }

  return MEMORY[0x21CEA3550](*(v7 + 16));
}

unint64_t sub_21733F3A4()
{
  result = qword_27CB25AB8;
  if (!qword_27CB25AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25AB8);
  }

  return result;
}

uint64_t sub_21733F400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 696))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_21733F440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 696) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 696) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21733F630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21733F678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21775E030;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AC8, &qword_21775E0E0);
  swift_allocObject();
  *(v0 + 32) = sub_217383700(KeyPath);
  v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AD0, &unk_21775E110);
  swift_allocObject();
  result = sub_217383428(v2, &unk_28295B948);
  *(v0 + 40) = result;
  qword_27CB8A228 = v0;
  return result;
}

uint64_t sub_21733F75C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21733F7B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_21733F80C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21775E030;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AC0, &qword_21775E088);
  swift_allocObject();
  *(v0 + 32) = sub_217394020(KeyPath, &unk_28295B9B8);
  v2 = swift_getKeyPath();
  swift_allocObject();
  result = sub_217394020(v2, &unk_28295B9E8);
  *(v0 + 40) = result;
  qword_27CB8A230 = v0;
  return result;
}

uint64_t sub_21733F8F4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_21733F94C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_21733F9A4()
{
  v0 = objc_allocWithZone(MusicKit_SoftLinking_MPModelGenreKind);

  return [v0 init];
}

uint64_t MusicLibraryExtendedStorage<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
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

uint64_t static AnyMusicLibraryExtendedStorage.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AD8, &qword_21775E120);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_21733FD10(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t AnyMusicLibraryExtendedStorage.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_21733FE48()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(v4, v1, v2);
  return sub_217753238();
}

unint64_t sub_21733FEBC()
{
  result = qword_27CB25AE0;
  if (!qword_27CB25AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25AE0);
  }

  return result;
}

uint64_t sub_21733FF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21733FEBC();

  return MusicLibraryExtendedStorage<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_21733FFDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657469726F766166 && a2 == 0xE900000000000064;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2173400FC(char a1)
{
  if (!a1)
  {
    return 0x6C61727475656ELL;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64656B696C736964;
}

uint64_t sub_217340160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21733FFDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217340188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2173400F4();
  *a1 = result;
  return result;
}

uint64_t sub_2173401B0(uint64_t a1)
{
  v2 = sub_217340698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173401EC(uint64_t a1)
{
  v2 = sub_217340698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217340228(uint64_t a1)
{
  v2 = sub_2173406EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217340264(uint64_t a1)
{
  v2 = sub_2173406EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2173402A0(uint64_t a1)
{
  v2 = sub_217340740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173402DC(uint64_t a1)
{
  v2 = sub_217340740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217340318(uint64_t a1)
{
  v2 = sub_217340794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217340354(uint64_t a1)
{
  v2 = sub_217340794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LegacyModelFavoriteStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AE8, &qword_21775E210);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v49 = v5;
  v50 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v48 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AF0, &qword_21775E218);
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v46 = v13;
  v47 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  v45 = &v42 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AF8, &qword_21775E220);
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v43 = v21;
  v44 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v42 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B00, &qword_21775E228);
  OUTLINED_FUNCTION_0_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v42 - v35;
  v37 = *v1;
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217340698();
  sub_2177532F8();
  if (v37)
  {
    if (v37 == 1)
    {
      v52 = 1;
      sub_217340740();
      v27 = v45;
      OUTLINED_FUNCTION_2_27();
      v40 = v46;
      v39 = v47;
    }

    else
    {
      v53 = 2;
      sub_2173406EC();
      v27 = v48;
      OUTLINED_FUNCTION_2_27();
      v40 = v49;
      v39 = v50;
    }
  }

  else
  {
    v51 = 0;
    sub_217340794();
    OUTLINED_FUNCTION_2_27();
    v40 = v43;
    v39 = v44;
  }

  (*(v40 + 8))(v27, v39);
  return (*(v30 + 8))(v36, v28);
}

unint64_t sub_217340698()
{
  result = qword_27CB25B08;
  if (!qword_27CB25B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B08);
  }

  return result;
}

unint64_t sub_2173406EC()
{
  result = qword_27CB25B10;
  if (!qword_27CB25B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B10);
  }

  return result;
}

unint64_t sub_217340740()
{
  result = qword_27CB25B18;
  if (!qword_27CB25B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B18);
  }

  return result;
}

unint64_t sub_217340794()
{
  result = qword_27CB25B20;
  if (!qword_27CB25B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B20);
  }

  return result;
}

uint64_t LegacyModelFavoriteStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t LegacyModelFavoriteStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v71 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B28, &qword_21775E230);
  OUTLINED_FUNCTION_0_0(v75);
  v72 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  v74 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B30, &qword_21775E238);
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v69 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B38, &qword_21775E240);
  OUTLINED_FUNCTION_0_0(v18);
  v68 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B40, &unk_21775E248);
  OUTLINED_FUNCTION_0_0(v26);
  v73 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v63 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217340698();
  v35 = v76;
  sub_2177532C8();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = v18;
  v66 = v25;
  v67 = v17;
  v37 = v74;
  v36 = v75;
  v76 = a1;
  v38 = sub_217752EB8();
  result = sub_21733CF68(v38, 0);
  if (v41 == v42 >> 1)
  {
    goto LABEL_9;
  }

  v64 = 0;
  if (v41 >= (v42 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v43) = *(v40 + v41);
    sub_21733CF64(v41 + 1);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    v48 = v45 == v47 >> 1;
    v49 = v72;
    if (!v48)
    {
LABEL_9:
      v54 = sub_217752B48();
      swift_allocError();
      v56 = v55;
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
      *v56 = &type metadata for LegacyModelFavoriteStatus;
      sub_217752DF8();
      sub_217752B08();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v73 + 8))(v33, v26);
      a1 = v76;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v43)
    {
      if (v43 == 1)
      {
        v78 = 1;
        sub_217340740();
        v50 = v67;
        OUTLINED_FUNCTION_4_29();
        v51 = v71;
        v52 = v26;
        v53 = v73;
        swift_unknownObjectRelease();
        (*(v69 + 8))(v50, v70);
        (*(v53 + 8))(v33, v52);
      }

      else
      {
        LODWORD(v70) = v43;
        v79 = 2;
        sub_2173406EC();
        v59 = v64;
        sub_217752DE8();
        v51 = v71;
        v43 = v26;
        v60 = v73;
        if (v59)
        {
          (*(v73 + 8))(v33, v43);
          swift_unknownObjectRelease();
          a1 = v76;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v49 + 8))(v37, v36);
        (*(v60 + 8))(v33, v43);
        LOBYTE(v43) = v70;
      }
    }

    else
    {
      v77 = 0;
      sub_217340794();
      v58 = v66;
      OUTLINED_FUNCTION_4_29();
      swift_unknownObjectRelease();
      (*(v68 + 8))(v58, v65);
      v61 = OUTLINED_FUNCTION_3_1();
      v62(v61);
      v51 = v71;
    }

    *v51 = v43;
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  return result;
}

unint64_t sub_217340E60()
{
  result = qword_27CB25B48;
  if (!qword_27CB25B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25B50, &qword_21775E258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B48);
  }

  return result;
}

unint64_t sub_217340EC8()
{
  result = qword_27CB25B58;
  if (!qword_27CB25B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B58);
  }

  return result;
}

uint64_t _s4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_217340FB4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2173410C4()
{
  result = qword_27CB25B60;
  if (!qword_27CB25B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B60);
  }

  return result;
}

unint64_t sub_21734111C()
{
  result = qword_27CB25B68;
  if (!qword_27CB25B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B68);
  }

  return result;
}

unint64_t sub_217341174()
{
  result = qword_27CB25B70;
  if (!qword_27CB25B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B70);
  }

  return result;
}

unint64_t sub_2173411CC()
{
  result = qword_27CB25B78;
  if (!qword_27CB25B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B78);
  }

  return result;
}

unint64_t sub_217341224()
{
  result = qword_27CB25B80;
  if (!qword_27CB25B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B80);
  }

  return result;
}

unint64_t sub_21734127C()
{
  result = qword_27CB25B88;
  if (!qword_27CB25B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B88);
  }

  return result;
}

unint64_t sub_2173412D4()
{
  result = qword_27CB25B90;
  if (!qword_27CB25B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B90);
  }

  return result;
}

unint64_t sub_21734132C()
{
  result = qword_27CB25B98;
  if (!qword_27CB25B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B98);
  }

  return result;
}

unint64_t sub_217341384()
{
  result = qword_27CB25BA0;
  if (!qword_27CB25BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BA0);
  }

  return result;
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.displayTerm.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.searchTerm.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.source.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicCatalogSearchSuggestionsResponse.Suggestion.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (sub_217753058() & 1) != 0)
  {
    v11 = v2 == v6 && v4 == v7;
    if (v11 || (sub_217753058() & 1) != 0)
    {
      if (v5)
      {
        if (v8)
        {
          if (v3 == v9 && v5 == v8)
          {
            return 1;
          }

          OUTLINED_FUNCTION_93();
          if (sub_217753058())
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217341538(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5479616C70736964 && a2 == 0xEB000000006D7265;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_217341650(char a1)
{
  if (!a1)
  {
    return 0x5479616C70736964;
  }

  if (a1 == 1)
  {
    return 0x6554686372616573;
  }

  return 0x656372756F73;
}

uint64_t sub_2173416B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217341538(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2173416E0(uint64_t a1)
{
  v2 = sub_2173418FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21734171C(uint64_t a1)
{
  v2 = sub_2173418FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BA8, &qword_21775E6E0);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = v19 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v19[3] = v1[3];
  v19[4] = v14;
  v15 = v1[4];
  v19[1] = v1[5];
  v19[2] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173418FC();
  sub_2177532F8();
  v22 = 0;
  v17 = v19[5];
  sub_217752F48();
  if (!v17)
  {
    v21 = 1;
    sub_217752F48();
    v20 = 2;
    sub_217752EF8();
  }

  return (*(v6 + 8))(v11, v3);
}

unint64_t sub_2173418FC()
{
  result = qword_27CB25BB0;
  if (!qword_27CB25BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BB0);
  }

  return result;
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_217751FF8();
  sub_217751FF8();
  if (!v6)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  sub_217753208();
  if (v6)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BB8, &qword_21775E6E8);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v25 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173418FC();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v15 = sub_217752E68();
  v28 = v16;
  v30 = 1;
  v26 = sub_217752E68();
  v27 = v17;
  v29 = 2;
  v18 = sub_217752E18();
  v20 = v19;
  v21 = v18;
  (*(v8 + 8))(v13, v5);
  v23 = v27;
  v22 = v28;
  *a2 = v15;
  a2[1] = v22;
  a2[2] = v26;
  a2[3] = v23;
  a2[4] = v21;
  a2[5] = v20;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217341D24()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[2];
  sub_2177531E8();
  MusicCatalogSearchSuggestionsResponse.Suggestion.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217341D7C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogSearchSuggestionsResponse.Suggestion.searchTerm.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.description.getter()
{
  OUTLINED_FUNCTION_1_20();
  sub_217752AA8();
  OUTLINED_FUNCTION_3_27();
  MEMORY[0x21CEA23B0]();
  MEMORY[0x21CEA23B0](v0, v1);
  OUTLINED_FUNCTION_3_27();
  MEMORY[0x21CEA23B0](0xD000000000000010);
  MEMORY[0x21CEA23B0](v2, v3);
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return v5;
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.debugDescription.getter()
{
  OUTLINED_FUNCTION_1_20();
  sub_217752AA8();
  OUTLINED_FUNCTION_3_27();
  MEMORY[0x21CEA23B0]();
  MEMORY[0x21CEA23B0](v0, v1);
  OUTLINED_FUNCTION_3_27();
  MEMORY[0x21CEA23B0](0xD000000000000012);
  MEMORY[0x21CEA23B0](v2, v3);
  MEMORY[0x21CEA23B0](2689570, 0xE300000000000000);
  return v5;
}

unint64_t sub_217341F28()
{
  result = qword_27CB25BC0;
  if (!qword_27CB25BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BC0);
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

uint64_t sub_217341F9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_217341FDC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *_s10SuggestionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217342118()
{
  result = qword_27CB25BC8;
  if (!qword_27CB25BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BC8);
  }

  return result;
}

unint64_t sub_217342170()
{
  result = qword_27CB25BD0;
  if (!qword_27CB25BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BD0);
  }

  return result;
}

unint64_t sub_2173421C8()
{
  result = qword_27CB25BD8;
  if (!qword_27CB25BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BD8);
  }

  return result;
}

uint64_t sub_217342220()
{
  sub_217751FF8();
}

uint64_t sub_2173422A4()
{
  OUTLINED_FUNCTION_19_8();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_66_6();
      break;
    case 4:
      OUTLINED_FUNCTION_44_8();
      break;
    case 8:
      OUTLINED_FUNCTION_154_2();
      break;
    case 9:
      OUTLINED_FUNCTION_65_7();
      break;
    case 10:
      OUTLINED_FUNCTION_32_10();
      break;
    case 11:
      OUTLINED_FUNCTION_191_3();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

uint64_t sub_217342404()
{
  sub_217751FF8();
}

uint64_t sub_217342474()
{
  OUTLINED_FUNCTION_208_3();
  sub_217751FF8();
}

uint64_t sub_217342580()
{
  OUTLINED_FUNCTION_208_3();
  sub_217751FF8();
}

uint64_t sub_21734269C()
{
  sub_217751FF8();
}

uint64_t sub_217342734()
{
  sub_217751FF8();
}

uint64_t sub_2173427B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_217751FF8();
}

uint64_t sub_21734281C()
{
  sub_217751FF8();
}

uint64_t sub_2173428D8()
{
  OUTLINED_FUNCTION_19_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_66_6();
      break;
    case 4:
      OUTLINED_FUNCTION_32_10();
      break;
    case 5:
      OUTLINED_FUNCTION_60_7();
      break;
    case 6:
      OUTLINED_FUNCTION_164_3();
      break;
    case 7:
      OUTLINED_FUNCTION_151_1();
      break;
    case 8:
      OUTLINED_FUNCTION_191_3();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

uint64_t sub_2173429C4()
{
  sub_217751FF8();
}

uint64_t sub_217342A28()
{
  OUTLINED_FUNCTION_19_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_32_10();
      break;
    case 2:
      OUTLINED_FUNCTION_60_7();
      break;
    case 3:
      OUTLINED_FUNCTION_151_1();
      break;
    case 5:
      OUTLINED_FUNCTION_72_0();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

uint64_t sub_217342ACC()
{
  sub_217751FF8();
}

uint64_t sub_217342B98()
{
  sub_217751FF8();
}

uint64_t sub_217342C00(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_239();
  }

  sub_217751FF8();
}

uint64_t sub_217342C94()
{
  sub_217751FF8();
}

uint64_t sub_217342CFC()
{
  sub_217751FF8();
}

uint64_t sub_217342DD4()
{
  sub_217751FF8();
}

uint64_t sub_217342E54()
{
  OUTLINED_FUNCTION_238_0();
  switch(v0)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
      break;
    case 2:
      OUTLINED_FUNCTION_238_0();
      break;
    default:
      OUTLINED_FUNCTION_72_0();
      break;
  }

  sub_217751FF8();
}

uint64_t sub_217342FCC()
{
  OUTLINED_FUNCTION_44_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_72_0();
      break;
    case 4:
      OUTLINED_FUNCTION_65_7();
      break;
    case 6:
      OUTLINED_FUNCTION_247();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

uint64_t sub_217343094(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_163_2();
  }

  sub_217751FF8();
}

uint64_t sub_217343118()
{
  OUTLINED_FUNCTION_163_2();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_199_1();
      break;
    default:
      break;
  }

  sub_217751FF8();
}