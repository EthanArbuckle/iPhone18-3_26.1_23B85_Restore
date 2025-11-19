uint64_t sub_23D988CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D988D34@<X0>(uint64_t *a1@<X8>)
{
  result = LiveSpeechVoiceSelectionView.keyboard.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D988D60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_23D988DB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23D988F08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D989044()
{
  sub_23D9DAB84();
  if (v0 <= 0x3F)
  {
    sub_23D989194(319, &qword_27E2F6510, &qword_27E2F6410, &qword_23D9E08C0, MEMORY[0x277CDF470]);
    if (v1 <= 0x3F)
    {
      sub_23D95F008();
      if (v2 <= 0x3F)
      {
        sub_23D989194(319, &qword_27E2F6518, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE1200]);
        if (v3 <= 0x3F)
        {
          sub_23D989194(319, &qword_27E2F4660, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE10B0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23D989194(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_23D9891FC()
{
  result = qword_27E2F6520;
  if (!qword_27E2F6520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F64F0, &qword_23D9E0828);
    sub_23D989288();
    sub_23D98938C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6520);
  }

  return result;
}

unint64_t sub_23D989288()
{
  result = qword_27E2F6528;
  if (!qword_27E2F6528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F64D8, &qword_23D9E0788);
    sub_23D989344(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings);
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6528);
  }

  return result;
}

uint64_t sub_23D989344(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D98938C()
{
  result = qword_27E2F6530;
  if (!qword_27E2F6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F64F8, &qword_23D9E0830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6530);
  }

  return result;
}

uint64_t AXSUISystemDefaultVoiceSelectionCell.init(voiceTable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v3 = *(*(v31 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  LOBYTE(v33) = 0;
  sub_23D9DA3A4();
  v9 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v9;
  v10 = type metadata accessor for VoiceSelectionModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  v15 = sub_23D9D8DA4();
  v16 = *(*(v15 - 8) + 56);
  v16(v13 + v14, 1, 1, v15);
  v16(v13 + v14, 1, 1, v15);
  v17 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  v18 = sub_23D9D89C4();
  v19 = *(*(v18 - 8) + 56);
  v19(v13 + v17, 1, 1, v18);
  v19(v13 + v17, 1, 1, v18);
  *(v13 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceResolver) = 0;
  *(v13 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceTable) = 0;
  *(v13 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks) = MEMORY[0x277D84F90];
  sub_23D9D8A44();
  v33 = v13;
  sub_23D9DA3A4();
  v20 = v35;
  *(a2 + 24) = v34;
  *(a2 + 32) = v20;
  v21 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v22 = v21[7];
  v23 = sub_23D9D8C74();
  v24 = *(*(v23 - 8) + 56);
  v24(v8, 1, 1, v23);
  v30 = v6;
  sub_23D91F2DC(v8, v6, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  sub_23D91F344(v8, &qword_27E2F4460, &qword_23D9DC2A0);
  v25 = a2 + v21[8];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a2 + v21[9];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v21[10];
  *(a2 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  swift_storeEnumTagMultiPayload();
  v28 = v21[11];
  v24(v8, 1, 1, v23);
  sub_23D91F2DC(v8, v30, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  result = sub_23D91F344(v8, &qword_27E2F4460, &qword_23D9DC2A0);
  *a2 = v32;
  return result;
}

uint64_t sub_23D9897D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23D91F2DC(a3, v24 - v10, qword_27E2F6C70, &unk_23D9E0A10);
  v12 = sub_23D9DA9F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23D91F344(v11, qword_27E2F6C70, &unk_23D9E0A10);
  }

  else
  {
    sub_23D9DA9E4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23D9DA994();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23D9DA8F4() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_23D91F344(a3, qword_27E2F6C70, &unk_23D9E0A10);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D91F344(a3, qword_27E2F6C70, &unk_23D9E0A10);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23D989A7C@<X0>(void *a1@<X8>)
{
  sub_23D9589B0();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D989ACC@<X0>(void *a1@<X8>)
{
  sub_23D9589B0();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D989B1C(uint64_t *a1)
{
  v2 = *a1;
  sub_23D9589B0();

  return sub_23D9D9974();
}

uint64_t sub_23D989B88()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) + 32));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_23D9DACD4();
    v9 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_23D989CD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  sub_23D91F2DC(v1 + *(v12 + 40), v11, &qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9664();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D989EE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = *(v0 + 32);
  v11 = *(v0 + 24);
  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3D4();
  v6 = v14;
  v7 = v15;
  v8 = v16;
  swift_getKeyPath();
  v11 = v6;
  v12 = v7;
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6660, &qword_23D9E0C28);
  sub_23D9DA574();

  swift_getKeyPath();
  sub_23D9DA504();

  sub_23D91F344(v4, &qword_27E2F6658, &qword_23D9E1E80);
  return v14;
}

uint64_t sub_23D98A070(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23D9D8DA4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_23D98D65C(v7);
}

uint64_t sub_23D98A13C@<X0>(uint64_t a1@<X8>)
{
  v136 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6668, &unk_23D9E0C60);
  v2 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v135 = &v102 - v3;
  v112 = sub_23D9D9954();
  v111 = *(v112 - 8);
  v4 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v117 = &v102 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  v9 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v130 = &v102 - v10;
  v116 = type metadata accessor for AXSUIVoiceSettings();
  v11 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v118 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6670, &qword_23D9E0C70);
  v13 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v119 = &v102 - v14;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6678, &qword_23D9E0C78);
  v15 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v123 = &v102 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6680, &qword_23D9E0C80);
  v124 = *(v126 - 8);
  v17 = *(v124 + 64);
  MEMORY[0x28223BE20](v126);
  v121 = &v102 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6688, &qword_23D9E0C88);
  v19 = *(*(v133 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v133);
  v120 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v125 = &v102 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v128 = &v102 - v25;
  v137 = sub_23D9D8954();
  v131 = *(v137 - 8);
  v26 = *(v131 + 64);
  MEMORY[0x28223BE20](v137);
  v132 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v113 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v129 = &v102 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v102 - v34;
  v36 = sub_23D9D89C4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v1 + 24);
  v42 = *(v1 + 32);
  v127 = v1;
  v140._countAndFlagsBits = v41;
  v140._object = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v43 = v147;
  swift_getKeyPath();
  v140._countAndFlagsBits = v43;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();
  v44 = v36;

  v45 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D91F2DC(v43 + v45, v35, &qword_27E2F4670, &qword_23D9DC650);

  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v46 = &qword_27E2F4670;
    v47 = &qword_23D9DC650;
LABEL_5:
    sub_23D91F344(v35, v46, v47);
    swift_storeEnumTagMultiPayload();
    sub_23D99278C();
    return sub_23D9D9B14();
  }

  (*(v37 + 32))(v40, v35, v36);
  v140._countAndFlagsBits = v41;
  v140._object = v42;
  sub_23D9DA3B4();
  v35 = v128;
  sub_23D98E6E8(v128);

  v48 = v137;
  if ((*(v131 + 48))(v35, 1, v137) == 1)
  {
    (*(v37 + 8))(v40, v44);
    v46 = &qword_27E2F4210;
    v47 = &qword_23D9DBE60;
    goto LABEL_5;
  }

  v50 = v48;
  v51 = v131;
  (*(v131 + 32))(v132, v35, v50);
  v145._countAndFlagsBits = v41;
  v145._object = v42;
  sub_23D9DA3D4();
  v52 = v140;
  v53 = v141;
  swift_getKeyPath();
  v145 = v52;
  v146 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6660, &qword_23D9E0C28);
  sub_23D9DA574();

  v54 = *(v37 + 16);
  v55 = v129;
  v108 = v40;
  v54(v129, v40, v44);
  v109 = v37;
  v56 = *(v37 + 56);
  v57 = v55;
  v56(v55, 0, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
  v58 = v51;
  v59 = *(v51 + 72);
  v60 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_23D9DC3E0;
  v62 = *(v51 + 16);
  v104 = v51 + 16;
  v105 = v62;
  v62((v61 + v60), v132, v137);
  v63 = sub_23D93D8F8(v61);
  swift_setDeallocating();
  v64 = *(v51 + 8);
  v107 = v51 + 8;
  v106 = v64;
  v64((v61 + v60), v137);
  swift_deallocClassInstance();
  v140._countAndFlagsBits = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();

  v103 = v143;
  v102 = v144;
  v65 = v117;
  sub_23D9DA4E4();
  v66 = v57;
  v67 = v113;
  sub_23D91F2DC(v66, v113, &qword_27E2F4670, &qword_23D9DC650);
  v68 = v116;
  v69 = v118;
  v70 = &v118[*(v116 + 28)];
  LOBYTE(v138) = 0;
  sub_23D9DA3A4();
  object = v140._object;
  *v70 = v140._countAndFlagsBits;
  *(v70 + 1) = object;
  v72 = v69 + v68[8];
  sub_23D9D9C64();
  v73 = v68[10];
  v128 = v44;
  v56(v69 + v73, 1, 1, v44);
  v74 = (v69 + v68[12]);
  v75 = v69 + v68[13];
  *v75 = swift_getKeyPath();
  *(v75 + 8) = 0;
  v76 = v69 + v68[14];
  LOBYTE(v138) = 0;
  sub_23D9DA3A4();
  v77 = v140._object;
  *v76 = v140._countAndFlagsBits;
  *(v76 + 8) = v77;
  v78 = v68[15];
  v138 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *(v69 + v78) = v140;
  sub_23D91F2DC(v65, v69, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(v67, v69 + v73);
  *(v69 + v68[11]) = 125;
  v79 = v69 + v68[5];
  *v79 = v103;
  *(v79 + 8) = v102;
  v80 = (v69 + v68[9]);
  *v80 = 0;
  v80[1] = 0;
  v138 = 0;
  v139 = 0xE000000000000000;
  sub_23D9DA5A4();
  sub_23D91F344(v67, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F344(v65, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D91F344(v129, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F344(v130, &qword_27E2F6658, &qword_23D9E1E80);
  v81 = v141;
  v82 = v142;
  v83 = (v69 + v68[6]);
  *v83 = v140;
  v83[1]._countAndFlagsBits = v81;
  v83[1]._object = v82;
  *v74 = 0;
  v74[1] = 0;
  KeyPath = swift_getKeyPath();
  v85 = v119;
  v86 = &v119[*(v115 + 36)];
  v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66B0, &unk_23D9E0C90) + 28);
  v105(v86 + v87, v132, v137);
  v88 = v137;
  (*(v58 + 56))(v86 + v87, 0, 1, v137);
  *v86 = KeyPath;
  sub_23D992A18(v69, v85, type metadata accessor for AXSUIVoiceSettings);
  v89 = swift_getKeyPath();
  v90 = v127 + *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) + 36);
  v91 = *v90;
  if (*(v90 + 8) == 1)
  {
    LOBYTE(v140._countAndFlagsBits) = v91 & 1;
  }

  else
  {

    sub_23D9DACD4();
    v92 = sub_23D9D9D24();
    sub_23D9D91B4();

    v93 = v110;
    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D91F080(v91, 0);
    (*(v111 + 8))(v93, v112);
    LOBYTE(v91) = v140._countAndFlagsBits;
  }

  v94 = v123;
  sub_23D92A2BC(v85, v123, &qword_27E2F6670, &qword_23D9E0C70);
  v95 = v94 + *(v122 + 36);
  *v95 = v89;
  *(v95 + 8) = v91 & 1;
  v96._countAndFlagsBits = 0x5F544C5541464544;
  v96._object = 0xED00004543494F56;
  v140 = AXSUILocString(_:)(v96);
  sub_23D992870();
  sub_23D91B650();
  v97 = v121;
  sub_23D9DA064();

  sub_23D91F344(v94, &qword_27E2F6678, &qword_23D9E0C78);
  v98 = swift_getKeyPath();
  v99 = v120;
  (*(v124 + 32))(v120, v97, v126);
  v100 = v99 + *(v133 + 36);
  *v100 = v98;
  *(v100 + 8) = 0;
  v101 = v125;
  sub_23D992A84(v99, v125);
  sub_23D91F2DC(v101, v135, &qword_27E2F6688, &qword_23D9E0C88);
  swift_storeEnumTagMultiPayload();
  sub_23D99278C();
  sub_23D9D9B14();
  sub_23D91F344(v101, &qword_27E2F6688, &qword_23D9E0C88);
  v106(v132, v88);
  return (*(v109 + 8))(v108, v128);
}

double sub_23D98B114@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9664();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D989CD8(v8);
  v9 = sub_23D9D9654();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v25 = sub_23D9D9AB4();
    LOBYTE(v26) = 1;
    sub_23D93FCC4();
  }

  else
  {
    v25 = sub_23D9D99B4();
    LOBYTE(v26) = 1;
    sub_23D93FC00();
  }

  v10 = sub_23D9DA764();

  sub_23D98B2E8(v2, &v15);
  v22 = v17;
  v23 = v18;
  v24 = v19;
  v20 = v15;
  v21 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v25 = v15;
  v26 = v16;
  sub_23D91F2DC(&v20, v14, &qword_27E2F66B8, &qword_23D9E0D08);
  sub_23D91F344(&v25, &qword_27E2F66B8, &qword_23D9E0D08);

  *a1 = v10;
  v11 = v20;
  *(a1 + 24) = v21;
  v12 = v23;
  *(a1 + 40) = v22;
  *(a1 + 56) = v12;
  result = *&v24;
  *(a1 + 72) = v24;
  *(a1 + 8) = v11;
  return result;
}

uint64_t sub_23D98B2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D89C4();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D9D8C74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v58 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v19 = *(v58 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v59 = a1;
  sub_23D9DA3B4();
  v20 = *(v8 + 48);
  v21 = v20(v18, 1, v7);
  v53 = v11;
  v54 = v8;
  if (v21)
  {
    sub_23D91F344(v18, &qword_27E2F4460, &qword_23D9DC2A0);
    v60 = 0;
    v61 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    (*(v8 + 16))(v11, v18, v7);
    sub_23D91F344(v18, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9BB28C();
    v25 = v24;
    v27 = v26;
    (*(v8 + 8))(v11, v7);
    v62 = v25;
    v63 = v27;
    sub_23D91B650();
    v28 = sub_23D9D9F04();
    v23 = v29;
    v22 = v30 & 1;
    v60 = v31;
    v61 = v28;
    sub_23D91E0AC(v28, v31, v30 & 1);
  }

  v32 = v59 + *(v58 + 28);
  sub_23D9DA3B4();
  if (v20(v16, 1, v7))
  {
    sub_23D91F344(v16, &qword_27E2F4460, &qword_23D9DC2A0);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v37 = v53;
    v38 = v54;
    (*(v54 + 16))(v53, v16, v7);
    sub_23D91F344(v16, &qword_27E2F4460, &qword_23D9DC2A0);
    v39 = v55;
    sub_23D9D8C04();
    (*(v38 + 8))(v37, v7);
    v40 = sub_23D9D8964();
    v34 = v41;
    (*(v56 + 8))(v39, v57);
    if (v34)
    {
      v62 = v40;
      v63 = v34;
      sub_23D91B650();
      v42 = sub_23D9D9F04();
      v58 = v43;
      v45 = v44;
      sub_23D9DA2F4();
      v33 = sub_23D9D9EB4();
      v34 = v46;
      LODWORD(v59) = v47;
      v36 = v48;

      sub_23D9274BC(v42, v58, v45 & 1);

      v35 = v59 & 1;
      sub_23D91E0AC(v33, v34, v59 & 1);

      goto LABEL_9;
    }

    v33 = 0;
  }

  v35 = 0;
  v36 = 0;
LABEL_9:
  LOBYTE(v62) = 1;
  v50 = v60;
  v49 = v61;
  sub_23D992AF4(v61, v60, v22, v23);
  sub_23D992AF4(v33, v34, v35, v36);
  sub_23D992B38(v49, v50, v22, v23);
  sub_23D992B38(v33, v34, v35, v36);
  v51 = v62;
  *a2 = v49;
  *(a2 + 8) = v50;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = v51;
  *(a2 + 48) = v33;
  *(a2 + 56) = v34;
  *(a2 + 64) = v35;
  *(a2 + 72) = v36;
  sub_23D992B38(v33, v34, v35, v36);
  return sub_23D992B38(v49, v50, v22, v23);
}

uint64_t AXSUISystemDefaultVoiceSelectionCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v38 = sub_23D9D8DA4();
  v45 = *(v38 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6568, &unk_23D9E0950);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  sub_23D98BD90(v1, &v36 - v18);
  sub_23D9905EC(v1, v15);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v40 = v14;
  v21 = swift_allocObject();
  sub_23D992A18(v15, v21 + v20, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
  v41 = v19;
  v42 = v16;
  v22 = &v19[*(v16 + 36)];
  *v22 = sub_23D990654;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  v23 = *(v2 + 24);
  v24 = *(v2 + 32);
  v43 = v2;
  v46 = v23;
  v47 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v25 = v48;
  swift_getKeyPath();
  v46 = v25;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v26 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v25 + v26, v9, &qword_27E2F5900, &unk_23D9DC640);
  v27 = *(v45 + 48);
  v28 = v38;
  if ((v27)(v9, 1) == 1)
  {
    v29 = sub_23D9D8954();
    (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
    LOBYTE(v48) = 1;
    v30 = v39;
    sub_23D9D8D74();

    v31 = v27(v9, 1, v28);
    v32 = v45;
    if (v31 != 1)
    {
      sub_23D91F344(v9, &qword_27E2F5900, &unk_23D9DC640);
    }
  }

  else
  {

    v32 = v45;
    v30 = v39;
    (*(v45 + 32))(v39, v9, v28);
  }

  sub_23D9905EC(v43, v15);
  v33 = swift_allocObject();
  sub_23D992A18(v15, v33 + v20, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
  sub_23D9909C8();
  sub_23D990C78(&qword_27E2F65D8, MEMORY[0x277CE6738]);
  v34 = v41;
  sub_23D9DA1F4();

  (*(v32 + 8))(v30, v28);
  return sub_23D91F344(v34, &qword_27E2F6568, &unk_23D9E0950);
}

uint64_t sub_23D98BD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v69 = *(v74 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v74);
  v68 = &v59 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6650, &qword_23D9E0BB8);
  v5 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v59 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v7 = *(*(v64 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v64);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v59 - v10;
  v65 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v59 = *(v65 - 8);
  v11 = *(v59 + 64);
  v12 = MEMORY[0x28223BE20](v65);
  v61 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v59 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65B0, &qword_23D9E09A0);
  v14 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v66 = (&v59 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v59 - v22;
  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  v67 = a1;
  v76 = v25;
  v77 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v26 = v80;
  swift_getKeyPath();
  v76 = v26;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v27 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D91F2DC(v26 + v27, v23, &qword_27E2F4670, &qword_23D9DC650);

  v28 = sub_23D9D89C4();
  LODWORD(v27) = (*(*(v28 - 8) + 48))(v23, 1, v28);
  sub_23D91F344(v23, &qword_27E2F4670, &qword_23D9DC650);
  if (v27 == 1)
  {
    goto LABEL_3;
  }

  v76 = v25;
  v77 = v24;
  sub_23D9DA3B4();
  sub_23D98E6E8(v19);

  v29 = sub_23D9D8954();
  v30 = (*(*(v29 - 8) + 48))(v19, 1, v29);
  sub_23D91F344(v19, &qword_27E2F4210, &qword_23D9DBE60);
  if (v30 == 1)
  {
LABEL_3:
    v31 = v68;
    sub_23D9D94C4();
    v32 = v69;
    v33 = v74;
    (*(v69 + 16))(v72, v31, v74);
    swift_storeEnumTagMultiPayload();
    sub_23D990B90();
    sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
    sub_23D9D9B14();
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    v35 = v67;
    v36 = v60;
    sub_23D9905EC(v67, v60);
    v37 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v38 = swift_allocObject();
    sub_23D992A18(v36, v38 + v37, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
    v39 = v61;
    sub_23D9905EC(v35, v61);
    v40 = swift_allocObject();
    sub_23D992A18(v39, v40 + v37, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
    KeyPath = swift_getKeyPath();
    v42 = v66;
    *v66 = KeyPath;
    *(v42 + 8) = 0;
    LOBYTE(v75[0]) = 0;
    sub_23D9DA3A4();
    v43 = v77;
    *(v42 + 80) = v76;
    *(v42 + 88) = v43;
    LODWORD(v39) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65C0, &qword_23D9E09A8) + 68);
    v44 = sub_23D9D88A4();
    v45 = v62;
    (*(*(v44 - 8) + 56))(v62, 1, 1, v44);
    sub_23D91F2DC(v45, v63, &unk_27E2F6A30, &qword_23D9E0BC0);
    sub_23D9DA3A4();
    sub_23D91F344(v45, &unk_27E2F6A30, &qword_23D9E0BC0);
    strcpy((v42 + 16), "voiceSelection");
    *(v42 + 31) = -18;
    *(v42 + 32) = sub_23D992628;
    *(v42 + 40) = v38;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_23D9926BC;
    *(v46 + 24) = v40;
    *(v42 + 48) = sub_23D99275C;
    *(v42 + 56) = v46;
    *(v42 + 64) = 0;
    *(v42 + 72) = 0;
    v76 = sub_23D989EE0();
    v77 = v47;
    v78 = v48;
    v79 = v49;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
    MEMORY[0x23EEF3850](v75, v50);
    v51 = v75[0];
    v52 = v75[1];

    v53 = *(v65 + 44);
    v54 = (v42 + *(v70 + 36));
    v55 = type metadata accessor for AXSUIVoiceLoader();
    v56 = *(v55 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    sub_23D9DA3D4();
    v57 = swift_getKeyPath();
    *v54 = v51;
    v54[1] = v52;
    v58 = v54 + *(v55 + 24);
    *v58 = v57;
    v58[8] = 0;
    sub_23D91F2DC(v42, v72, &qword_27E2F65B0, &qword_23D9E09A0);
    swift_storeEnumTagMultiPayload();
    sub_23D990B90();
    sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
    sub_23D9D9B14();
    return sub_23D91F344(v42, &qword_27E2F65B0, &qword_23D9E09A0);
  }
}

uint64_t sub_23D98C6B0(uint64_t *a1)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v2 = *a1;
  v3 = sub_23D989B88();
  sub_23D98EF0C(v2, v3);
}

uint64_t sub_23D98C73C(uint64_t a1)
{
  v2 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_23D9DA9F4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_23D9905EC(a1, v5);
  sub_23D9DA9B4();
  v11 = sub_23D9DA9A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_23D992A18(v5, v13 + v12, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
  sub_23D9BB718(0, 0, v9, &unk_23D9E0BB0, v13);
}

uint64_t sub_23D98C908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_23D9D8DA4();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  sub_23D9DA9B4();
  v4[17] = sub_23D9DA9A4();
  v12 = sub_23D9DA994();
  v4[18] = v12;
  v4[19] = v11;

  return MEMORY[0x2822009F8](sub_23D98CAB0, v12, v11);
}

uint64_t sub_23D98CAB0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v0[5] = v6;
  v0[6] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v7 = v0[7];
  swift_getKeyPath();
  v0[8] = v7;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v8 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v7 + v8, v3, &qword_27E2F5900, &unk_23D9DC640);
  v9 = *(v2 + 48);
  v10 = v9(v3, 1, v1);
  v11 = v0[16];
  if (v10 == 1)
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    v15 = sub_23D9D8954();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_23D9D8D74();

    if (v9(v13, 1, v12) != 1)
    {
      sub_23D91F344(v0[13], &qword_27E2F5900, &unk_23D9DC640);
    }
  }

  else
  {
    v16 = v0[14];
    v17 = v0[15];
    v18 = v0[13];

    (*(v17 + 32))(v11, v18, v16);
  }

  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[14];
  v22 = sub_23D9D8D84();
  v24 = v23;
  v0[20] = v23;
  (*(v20 + 8))(v19, v21);
  if (v24)
  {
    v25 = v0[9];
    v0[21] = sub_23D989B88();
    v26 = *(MEMORY[0x277D70100] + 4);
    v41 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
    v27 = swift_task_alloc();
    v0[22] = v27;
    *v27 = v0;
    v27[1] = sub_23D98CEF8;
    v28 = v0[11];

    return v41(v28, v22, v24);
  }

  else
  {
    v30 = v0[17];
    v31 = v0[11];

    v32 = sub_23D9D8C74();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v33 = v0[16];
    v35 = v0[12];
    v34 = v0[13];
    v37 = v0[10];
    v36 = v0[11];
    v38 = v0[9];
    v39 = *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) + 28);
    sub_23D91F2DC(v36, v37, &qword_27E2F4460, &qword_23D9DC2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    sub_23D9DA3C4();
    sub_23D91F344(v36, &qword_27E2F4460, &qword_23D9DC2A0);

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_23D98CEF8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v8 = *v0;

  v5 = *(v1 + 152);
  v6 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_23D98D058, v6, v5);
}

uint64_t sub_23D98D058()
{
  v1 = v0[17];

  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) + 28);
  sub_23D91F2DC(v5, v6, &qword_27E2F4460, &qword_23D9DC2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3C4();
  sub_23D91F344(v5, &qword_27E2F4460, &qword_23D9DC2A0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23D98D19C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v1 + v7, v6, &qword_27E2F5900, &unk_23D9DC640);
  v8 = sub_23D990EB4(v6, a1);
  sub_23D91F344(v6, &qword_27E2F5900, &unk_23D9DC640);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
    sub_23D9D8A04();
  }

  else
  {
    sub_23D91F2DC(a1, v6, &qword_27E2F5900, &unk_23D9DC640);
    swift_beginAccess();
    sub_23D992220(v6, v1 + v7, &qword_27E2F5900, &unk_23D9DC640);
    swift_endAccess();
  }

  return sub_23D91F344(a1, &qword_27E2F5900, &unk_23D9DC640);
}

uint64_t sub_23D98D3A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18[-v10];
  swift_getKeyPath();
  v19 = v1;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v12 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v2 + v12, v11, &qword_27E2F5900, &unk_23D9DC640);
  v13 = sub_23D9D8DA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  v16 = sub_23D9D8954();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v18[4] = 1;
  sub_23D9D8D74();
  result = (v15)(v11, 1, v13);
  if (result != 1)
  {
    return sub_23D91F344(v11, &qword_27E2F5900, &unk_23D9DC640);
  }

  return result;
}

uint64_t sub_23D98D65C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_23D9D8954();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  sub_23D98E6E8(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v19 = sub_23D9D8DA4();
    (*(*(v19 - 8) + 8))(a1, v19);
    return sub_23D91F344(v10, &qword_27E2F4210, &qword_23D9DBE60);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    swift_getKeyPath();
    v33[0] = v1;
    sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
    sub_23D9D8A14();

    if (*(v1 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceTable))
    {
      v21 = sub_23D9D8DA4();
      v30 = v16;
      v22 = v21;
      v31 = *(v21 - 8);
      v23 = v31;
      v32 = v18;
      v28 = *(v31 + 16);
      v29 = v31 + 16;
      v28(v6, a1, v21);
      v27 = *(v23 + 56);
      v27(v6, 0, 1, v22);

      sub_23D98D19C(v6);
      v24 = v30;
      (*(v12 + 16))(v30, v32, v11);
      v28(v6, a1, v22);
      v27(v6, 0, 1, v22);
      v25 = sub_23D9D8DC4();
      sub_23D95914C(v6, v24);
      v25(v33, 0);

      (*(v31 + 8))(a1, v22);
      return (*(v12 + 8))(v32, v11);
    }

    else
    {
      v26 = sub_23D9D8DA4();
      (*(*(v26 - 8) + 8))(a1, v26);
      return (*(v12 + 8))(v18, v11);
    }
  }
}

void (*sub_23D98DAC0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[5] = v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640) - 8) + 64);
  if (v4)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  v6[6] = v11;
  v13 = sub_23D9D8DA4();
  v6[7] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v6[8] = v14;
  v16 = *(v14 + 64);
  if (v4)
  {
    v6[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v6[9] = malloc(*(v14 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v6[10] = v17;
  swift_getKeyPath();
  v6[3] = v2;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v19 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v2 + v19, v12, &qword_27E2F5900, &unk_23D9DC640);
  v20 = *(v15 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    v21 = sub_23D9D8954();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    sub_23D9D8D74();
    if (v20(v12, 1, v13) != 1)
    {
      sub_23D91F344(v12, &qword_27E2F5900, &unk_23D9DC640);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v12, v13);
  }

  return sub_23D98DE18;
}

void sub_23D98DE18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {
    v5 = v2[7];
    v6 = v2[8];
    v8 = v2[5];
    v7 = v2[6];
    v9 = v2[4];
    (*(v6 + 16))(*(*a1 + 72), v4, v5);
    sub_23D98D65C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[5];
    v7 = v2[6];
    v10 = v2[4];
    sub_23D98D65C(*(*a1 + 80));
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t sub_23D98DF74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v10 = *a2;
  swift_beginAccess();
  return sub_23D91F2DC(v9 + v10, a5, a3, a4);
}

uint64_t sub_23D98E080(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_23D91F2DC(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_23D98E150@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v9 = *a1;
  swift_beginAccess();
  return sub_23D91F2DC(v11 + v9, a4, a2, a3);
}

uint64_t sub_23D98E230(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D91F2DC(v1 + v7, v6, &qword_27E2F4670, &qword_23D9DC650);
  v8 = sub_23D9911D4(v6, a1);
  sub_23D91F344(v6, &qword_27E2F4670, &qword_23D9DC650);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
    sub_23D9D8A04();
  }

  else
  {
    sub_23D91F2DC(a1, v6, &qword_27E2F4670, &qword_23D9DC650);
    swift_beginAccess();
    sub_23D992220(v6, v1 + v7, &qword_27E2F4670, &qword_23D9DC650);
    swift_endAccess();
  }

  return sub_23D91F344(a1, &qword_27E2F4670, &qword_23D9DC650);
}

uint64_t sub_23D98E438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  sub_23D91F2DC(a2, &v16 - v12, a3, a4);
  v14 = *a5;
  swift_beginAccess();
  sub_23D992220(v13, a1 + v14, a3, a4);
  return swift_endAccess();
}

void (*sub_23D98E51C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D9D8A34();

  v4[7] = sub_23D98DEEC();
  return sub_23D98E654;
}

void sub_23D98E654(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_23D9D8A24();

  free(v1);
}

uint64_t sub_23D98E6E8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_23D9D89A4();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D9D89C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - v13;
  swift_getKeyPath();
  v21 = v1;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v15 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D91F2DC(v1 + v15, v14, &qword_27E2F4670, &qword_23D9DC650);
  if ((*(v7 + 48))(v14, 1, v6))
  {
    sub_23D91F344(v14, &qword_27E2F4670, &qword_23D9DC650);
    v16 = sub_23D9D8954();
    return (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
  }

  else
  {
    (*(v7 + 16))(v10, v14, v6);
    sub_23D91F344(v14, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D9D89B4();
    (*(v7 + 8))(v10, v6);
    sub_23D9D8994();
    return (*(v18 + 8))(v5, v19);
  }
}

uint64_t sub_23D98EA38(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v4 = *(v2 + *a2);
}

uint64_t sub_23D98EADC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  *a3 = *(v5 + *a2);
}

uint64_t sub_23D98EB94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A04();
}

uint64_t sub_23D98EC50()
{
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v1 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);
}

uint64_t sub_23D98ECFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  *a2 = *(v3 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);
}

uint64_t sub_23D98EDB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks;
  v4 = *(v1 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);

  v6 = sub_23D990D24(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
    sub_23D9D8A04();
  }
}

uint64_t sub_23D98EF0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C8, &qword_23D9DC748);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E0, &qword_23D9E0A20);
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v32);
  v31 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v28 = v27 - v16;
  sub_23D990190();
  swift_getKeyPath();
  v36 = v2;
  v37 = a2;
  v38 = v2;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A04();

  swift_getKeyPath();
  v34 = v2;
  v35 = a1;
  v38 = v2;
  sub_23D9D8A04();

  sub_23D9D8DB4();
  v17 = v28;
  sub_23D9D8DE4();
  (*(v29 + 8))(v12, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E8, &qword_23D9E0A50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23D9DC3E0;
  v19 = v33;
  sub_23D9DA9C4();
  v20 = sub_23D9DA9F4();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = v31;
  v22 = v32;
  v23 = v17;
  (*(v13 + 16))(v31, v17, v32);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v13 + 32))(v25 + v24, v21, v22);
  *(v25 + ((v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  *(v18 + 32) = sub_23D9897D0(0, 0, v19, &unk_23D9E0A60, v25);
  sub_23D98EDB0(v18);
  return (*(v13 + 8))(v23, v22);
}

uint64_t sub_23D98F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_23D9D8DA4();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6620, &qword_23D9E0B80);
  v5[20] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6628, &qword_23D9E0B88) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6630, &qword_23D9E0B90);
  v5[26] = v13;
  v14 = *(v13 - 8);
  v5[27] = v14;
  v15 = *(v14 + 64) + 15;
  v5[28] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6638, &qword_23D9E0B98);
  v5[30] = v17;
  v18 = *(v17 - 8);
  v5[31] = v18;
  v19 = *(v18 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v20 = swift_task_alloc();
  v5[35] = v20;
  v21 = *(MEMORY[0x277CE6750] + 4);
  v22 = swift_task_alloc();
  v5[36] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E0, &qword_23D9E0A20);
  v5[37] = v23;
  *v22 = v5;
  v22[1] = sub_23D98F66C;

  return MEMORY[0x282138898](v20, v23);
}

uint64_t sub_23D98F66C()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23D98F768, 0, 0);
}

uint64_t sub_23D98F768()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[29];
  v4 = v0[30];
  v21 = v0[28];
  v22 = v0[37];
  v5 = v0[16];
  v20 = v0[15];
  sub_23D91F2DC(v1, v2, &qword_27E2F6638, &qword_23D9E0B98);
  v6 = *(v4 + 48);
  v7 = sub_23D9D89C4();
  v0[38] = v7;
  v8 = *(v7 - 8);
  v9 = v8[4];
  v0[39] = v9;
  v0[40] = (v8 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v3, v2, v7);
  v10 = v8[7];
  v0[41] = v10;
  v0[42] = (v8 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v3, 0, 1, v7);
  v11 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  v0[43] = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D992220(v3, v5 + v11, &qword_27E2F4670, &qword_23D9DC650);
  swift_endAccess();
  sub_23D91F344(v2 + v6, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v1, v2, &qword_27E2F6638, &qword_23D9E0B98);
  sub_23D98D19C(v2 + *(v4 + 48));
  v12 = v8[1];
  v0[44] = v12;
  v0[45] = (v8 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v2, v7);
  sub_23D9D8E14();
  v13 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___observationRegistrar;
  v0[46] = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  v0[47] = v13;
  swift_beginAccess();
  v0[48] = 0;
  v14 = *(MEMORY[0x277D85798] + 4);
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_23D98F9E0;
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[26];

  return MEMORY[0x2822003E8](v17, 0, 0, v18);
}

uint64_t sub_23D98F9E0()
{
  v1 = *(*v0 + 392);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23D98FADC, 0, 0);
}

uint64_t sub_23D98FADC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  if ((*(*(v0 + 248) + 48))(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 232);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v62 = *(v0 + 176);
    v65 = *(v0 + 168);
    v68 = *(v0 + 152);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    sub_23D91F344(v3, &qword_27E2F6638, &qword_23D9E0B98);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 320);
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);
  v63 = *(v0 + 160);
  v66 = *(v0 + 368);
  v17 = *(v0 + 144);
  v69 = *(v0 + 136);
  v60 = *(v0 + 128);
  v18 = *(v1 + 48);
  (*(v0 + 312))(v13, v2, *(v0 + 304));
  sub_23D92A2BC(v2 + v18, v13 + v18, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v13, v14, &qword_27E2F6638, &qword_23D9E0B98);
  v19 = v14 + *(v1 + 48);
  sub_23D91F2DC(v60 + v66, v15, &qword_27E2F5900, &unk_23D9DC640);
  v20 = *(v63 + 48);
  sub_23D91F2DC(v15, v16, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v19, v16 + v20, &qword_27E2F5900, &unk_23D9DC640);
  v21 = *(v17 + 48);
  if (v21(v16, 1, v69) == 1)
  {
    v22 = *(v0 + 136);
    sub_23D91F344(*(v0 + 192), &qword_27E2F5900, &unk_23D9DC640);
    if (v21(v16 + v20, 1, v22) == 1)
    {
      sub_23D91F344(*(v0 + 168), &qword_27E2F5900, &unk_23D9DC640);
LABEL_13:
      v39 = *(v0 + 368);
      v40 = *(v0 + 176);
      v41 = *(v0 + 128);
      sub_23D91F2DC(v19, v40, &qword_27E2F5900, &unk_23D9DC640);
      swift_beginAccess();
      sub_23D992220(v40, v41 + v39, &qword_27E2F5900, &unk_23D9DC640);
      swift_endAccess();
      v70 = *(v0 + 384);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v23 = *(v0 + 136);
  sub_23D91F2DC(*(v0 + 168), *(v0 + 184), &qword_27E2F5900, &unk_23D9DC640);
  v24 = v21(v16 + v20, 1, v23);
  v25 = *(v0 + 184);
  v26 = *(v0 + 192);
  if (v24 == 1)
  {
    v28 = *(v0 + 136);
    v27 = *(v0 + 144);
    sub_23D91F344(*(v0 + 192), &qword_27E2F5900, &unk_23D9DC640);
    (*(v27 + 8))(v25, v28);
LABEL_10:
    sub_23D91F344(*(v0 + 168), &qword_27E2F6620, &qword_23D9E0B80);
    goto LABEL_11;
  }

  v33 = *(v0 + 168);
  v71 = v19;
  v34 = *(v0 + 144);
  v35 = *(v0 + 152);
  v36 = *(v0 + 136);
  (*(v34 + 32))(v35, v16 + v20, v36);
  sub_23D990C78(&qword_27E2F65D8, MEMORY[0x277CE6738]);
  v37 = sub_23D9DA894();
  v38 = *(v34 + 8);
  v38(v35, v36);
  sub_23D91F344(v26, &qword_27E2F5900, &unk_23D9DC640);
  v38(v25, v36);
  v19 = v71;
  sub_23D91F344(v33, &qword_27E2F5900, &unk_23D9DC640);
  if (v37)
  {
    goto LABEL_13;
  }

LABEL_11:
  v29 = *(v0 + 376);
  v30 = *(v0 + 384);
  v31 = *(v0 + 128);
  swift_getKeyPath();
  v32 = swift_task_alloc();
  *(v32 + 16) = v31;
  *(v32 + 24) = v19;
  *(v0 + 112) = v31;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A04();
  v70 = v30;

LABEL_14:
  v42 = v19;
  v43 = *(v0 + 352);
  v44 = *(v0 + 360);
  v64 = *(v0 + 336);
  v67 = *(v0 + 344);
  v59 = *(v0 + 320);
  v61 = *(v0 + 328);
  v45 = *(v0 + 304);
  v58 = *(v0 + 312);
  v47 = *(v0 + 264);
  v46 = *(v0 + 272);
  v48 = *(v0 + 256);
  v50 = *(v0 + 232);
  v49 = *(v0 + 240);
  v51 = *(v0 + 128);
  sub_23D91F344(v42, &qword_27E2F5900, &unk_23D9DC640);
  v43(v48, v45);
  sub_23D92A2BC(v47, v46, &qword_27E2F6638, &qword_23D9E0B98);
  v52 = *(v49 + 48);
  v58(v50, v46, v45);
  v61(v50, 0, 1, v45);
  swift_beginAccess();
  sub_23D992220(v50, v51 + v67, &qword_27E2F4670, &qword_23D9DC650);
  swift_endAccess();
  sub_23D91F344(v46 + v52, &qword_27E2F5900, &unk_23D9DC640);
  *(v0 + 384) = v70;
  v53 = *(MEMORY[0x277D85798] + 4);
  v54 = swift_task_alloc();
  *(v0 + 392) = v54;
  *v54 = v0;
  v54[1] = sub_23D98F9E0;
  v55 = *(v0 + 224);
  v56 = *(v0 + 200);
  v57 = *(v0 + 208);

  return MEMORY[0x2822003E8](v56, 0, 0, v57);
}

uint64_t sub_23D990190()
{
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel);
  sub_23D9D8A14();

  v1 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    while (v4 < *(v1 + 16))
    {
      v5 = v4 + 1;
      v6 = *(v1 + 32 + 8 * v4);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
      sub_23D9DAA44();

      v4 = v5;
      if (v2 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return sub_23D98EDB0(MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t VoiceSelectionModel.deinit()
{
  sub_23D990190();
  sub_23D91F344(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F344(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale, &qword_27E2F4670, &qword_23D9DC650);
  v1 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceResolver);

  v2 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceTable);

  v3 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);

  v4 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___observationRegistrar;
  v5 = sub_23D9D8A54();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t VoiceSelectionModel.__deallocating_deinit()
{
  sub_23D990190();
  sub_23D91F344(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F344(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale, &qword_27E2F4670, &qword_23D9DC650);
  v1 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceResolver);

  v2 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceTable);

  v3 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);

  v4 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___observationRegistrar;
  v5 = sub_23D9D8A54();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23D990520(uint64_t a1)
{
  v2 = sub_23D9D9664();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D9D97F4();
}

uint64_t sub_23D9905EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v20 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = *v2;

  v4 = v2[2];

  v5 = v2[3];

  v6 = v2[4];

  v7 = v2 + v1[7];
  v8 = sub_23D9D8C74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v12 = *&v7[*(v11 + 28)];

  v13 = *(v2 + v1[8]);

  sub_23D91F080(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23D9D9664();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);
  }

  else
  {
    v16 = *(v2 + v14);
  }

  v17 = v2 + v1[11];
  if (!v10(v17, 1, v8))
  {
    (*(v9 + 8))(v17, v8);
  }

  v18 = *&v17[*(v11 + 28)];

  return swift_deallocObject();
}

uint64_t sub_23D990954(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23D9909C8()
{
  result = qword_27E2F6580;
  if (!qword_27E2F6580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6568, &unk_23D9E0950);
    sub_23D990A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6580);
  }

  return result;
}

unint64_t sub_23D990A54()
{
  result = qword_27E2F6588;
  if (!qword_27E2F6588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6590, &qword_23D9E0990);
    sub_23D990AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6588);
  }

  return result;
}

unint64_t sub_23D990AD8()
{
  result = qword_27E2F6598;
  if (!qword_27E2F6598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65A0, &qword_23D9E0998);
    sub_23D990B90();
    sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6598);
  }

  return result;
}

unint64_t sub_23D990B90()
{
  result = qword_27E2F65A8;
  if (!qword_27E2F65A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65B0, &qword_23D9E09A0);
    sub_23D91F01C(&qword_27E2F65B8, &qword_27E2F65C0, &qword_23D9E09A8);
    sub_23D990C78(&qword_27E2F4818, type metadata accessor for AXSUIVoiceLoader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F65A8);
  }

  return result;
}

uint64_t sub_23D990C78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D990D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = *v4++;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
        v7 = sub_23D9DAA34();

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_23D990E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23D9DAFC4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_23D990EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D9D8DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6620, &qword_23D9E0B80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23D91F2DC(a1, &v24 - v16, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(a2, &v17[v18], &qword_27E2F5900, &unk_23D9DC640);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23D91F2DC(v17, v12, &qword_27E2F5900, &unk_23D9DC640);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_23D990C78(&qword_27E2F65D8, MEMORY[0x277CE6738]);
      v21 = sub_23D9DA894();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_23D91F344(v17, &qword_27E2F5900, &unk_23D9DC640);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_23D91F344(v17, &qword_27E2F6620, &qword_23D9E0B80);
    v20 = 1;
    return v20 & 1;
  }

  sub_23D91F344(v17, &qword_27E2F5900, &unk_23D9DC640);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23D9911D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D9D89C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6640, &qword_23D9E0BA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23D91F2DC(a1, &v24 - v16, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F2DC(a2, &v17[v18], &qword_27E2F4670, &qword_23D9DC650);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23D91F2DC(v17, v12, &qword_27E2F4670, &qword_23D9DC650);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_23D990C78(&qword_27E2F6648, MEMORY[0x277CC9788]);
      v21 = sub_23D9DA894();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_23D91F344(v17, &qword_27E2F4670, &qword_23D9DC650);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_23D91F344(v17, &qword_27E2F6640, &qword_23D9E0BA0);
    v20 = 1;
    return v20 & 1;
  }

  sub_23D91F344(v17, &qword_27E2F4670, &qword_23D9DC650);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23D9915C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E0, &qword_23D9E0A20);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_23D9916A8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E0, &qword_23D9E0A20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23D928310;

  return sub_23D98F358(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23D99182C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23D99197C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D991AB8()
{
  sub_23D991CE8(319, &qword_27E2F45F0, &qword_27E2F4470, &qword_23D9DC2B0, MEMORY[0x277CE6748]);
  if (v0 <= 0x3F)
  {
    sub_23D991DB0(319, &qword_27E2F46A0, MEMORY[0x277D839B0], MEMORY[0x277CE10B0]);
    if (v1 <= 0x3F)
    {
      sub_23D991D4C(319, &qword_27E2F6600, type metadata accessor for VoiceSelectionModel, MEMORY[0x277CE10B0]);
      if (v2 <= 0x3F)
      {
        sub_23D991CE8(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
        if (v3 <= 0x3F)
        {
          sub_23D991D4C(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
          if (v4 <= 0x3F)
          {
            sub_23D991DB0(319, &qword_27E2F4338, &type metadata for AXSUIVoiceOverSpeechViewContext, MEMORY[0x277CDF470]);
            if (v5 <= 0x3F)
            {
              sub_23D991D4C(319, &qword_27E2F4D58, MEMORY[0x277CDFA20], MEMORY[0x277CDF470]);
              if (v6 <= 0x3F)
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

void sub_23D991CE8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23D991D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D991DB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23D991E08()
{
  sub_23D991D4C(319, &qword_27E2F6618, MEMORY[0x277CE6738], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23D991D4C(319, &qword_27E2F4690, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_23D9D8A54();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_23D9920C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6568, &unk_23D9E0950);
  sub_23D9D8DA4();
  sub_23D9909C8();
  sub_23D990C78(&qword_27E2F65D8, MEMORY[0x277CE6738]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D99217C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D98EDB0(v4);
}

uint64_t sub_23D9921A8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);
  *(v1 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks) = *(v0 + 24);
}

uint64_t sub_23D992220(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D992288(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_23D9922CC()
{
  v1 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v2 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = (v0 + ((v2 + 32) & ~v2));
  v5 = *v4;

  v6 = v4[2];

  v7 = v4[3];

  v8 = v4[4];

  v9 = v4 + v1[7];
  v10 = sub_23D9D8C74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v14 = *&v9[*(v13 + 28)];

  v15 = *(v4 + v1[8]);

  sub_23D91F080(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v16 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23D9D9664();
    (*(*(v17 - 8) + 8))(v4 + v16, v17);
  }

  else
  {
    v18 = *(v4 + v16);
  }

  v19 = v4 + v1[11];
  if (!v12(v19, 1, v10))
  {
    (*(v11 + 8))(v19, v10);
  }

  v20 = *&v19[*(v13 + 28)];

  return swift_deallocObject();
}

uint64_t sub_23D992538(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D928310;

  return sub_23D98C908(a1, v6, v7, v1 + v5);
}

double sub_23D992628@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_23D98B114(v8);
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v9;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_23D9926BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_23D98A13C(a1);
}

uint64_t sub_23D992724()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23D99275C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_23D99278C()
{
  result = qword_27E2F6690;
  if (!qword_27E2F6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6688, &qword_23D9E0C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6678, &qword_23D9E0C78);
    sub_23D992870();
    sub_23D91B650();
    swift_getOpaqueTypeConformance2();
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6690);
  }

  return result;
}

unint64_t sub_23D992870()
{
  result = qword_27E2F6698;
  if (!qword_27E2F6698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6678, &qword_23D9E0C78);
    sub_23D992928();
    sub_23D91F01C(&qword_27E2F43D0, &qword_27E2F43D8, &qword_23D9DC0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6698);
  }

  return result;
}

unint64_t sub_23D992928()
{
  result = qword_27E2F66A0;
  if (!qword_27E2F66A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6670, &qword_23D9E0C70);
    sub_23D990C78(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings);
    sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F66A0);
  }

  return result;
}

uint64_t sub_23D992A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D992A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6688, &qword_23D9E0C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D992AF4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23D91E0AC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23D992B38(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23D9274BC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23D992BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23D992D34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for VoiceRotorDetailView()
{
  result = qword_27E2F66C0;
  if (!qword_27E2F66C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D992EBC()
{
  sub_23D91E5A8();
  if (v0 <= 0x3F)
  {
    sub_23D992F50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D992F50()
{
  if (!qword_27E2F4668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4460, &qword_23D9DC2A0);
    v0 = sub_23D9DA3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F4668);
    }
  }
}

uint64_t sub_23D992FD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DAC04();
  *a2 = result;
  return result;
}

uint64_t sub_23D992FFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D9DAC14();
}

uint64_t sub_23D993028@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a1;
  v26 = a2;
  v23 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  v21 = *(v10 - 8);
  v22 = v10;
  v11 = *(v21 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v24 = &v21 - v15;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  sub_23D99515C();
  sub_23D9DA5B4();
  v16 = v30;
  v31 = v30;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  sub_23D9DA5C4();
  if (v16 == v30)
  {
    return (*(v21 + 56))(v23, 1, 1, v22);
  }

  while (1)
  {
    v29 = a5;
    v30 = v16;
    v27 = a3;
    v28 = a4;
    v17 = v24;
    sub_23D9DA5E4();
    v27 = a3;
    v28 = a4;
    v29 = a5;
    sub_23D9DA5D4();
    sub_23D994F08(v17, v14);
    v18 = v25(v14);
    if (v6)
    {
      return sub_23D91F344(v14, &qword_27E2F4D40, &qword_23D9DEA10);
    }

    if (v18)
    {
      break;
    }

    sub_23D91F344(v14, &qword_27E2F4D40, &qword_23D9DEA10);
    v27 = a3;
    v28 = a4;
    v29 = a5;
    sub_23D9DA5C4();
    v16 = v31;
    if (v31 == v30)
    {
      return (*(v21 + 56))(v23, 1, 1, v22);
    }
  }

  v20 = v23;
  sub_23D994F08(v14, v23);
  return (*(v21 + 56))(v20, 0, 1, v22);
}

uint64_t sub_23D9932A4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_23D9D8ED4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_23D993478@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v195 = a1;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66D0, &unk_23D9E0D80);
  v3 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v194 = &v147 - v4;
  v182 = sub_23D9D99A4();
  v181 = *(v182 - 8);
  v5 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v180 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v160 = &v147 - v9;
  v185 = sub_23D9D8C74();
  v196 = *(v185 - 8);
  v10 = *(v196 + 64);
  MEMORY[0x28223BE20](v185);
  v183 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v179 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v161 = &v147 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v157 = &v147 - v19;
  MEMORY[0x28223BE20](v18);
  v156 = &v147 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v159 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v184 = &v147 - v25;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  v26 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v188 = &v147 - v27;
  v165 = type metadata accessor for AXSUIVoiceSettings();
  v28 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v189 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66D8, &qword_23D9E0D90);
  v167 = *(v168 - 8);
  v30 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v164 = &v147 - v31;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66E0, &qword_23D9E0D98);
  v163 = *(v166 - 8);
  v32 = *(v163 + 64);
  MEMORY[0x28223BE20](v166);
  v162 = &v147 - v33;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66E8, &qword_23D9E0DA0);
  v34 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v171 = &v147 - v35;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66F0, &qword_23D9E0DA8);
  v177 = *(v178 - 8);
  v36 = *(v177 + 64);
  MEMORY[0x28223BE20](v178);
  v173 = &v147 - v37;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66F8, &qword_23D9E0DB0);
  v38 = *(*(v190 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v190);
  v172 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v175 = &v147 - v41;
  v176 = sub_23D9D90B4();
  v174 = *(v176 - 8);
  v42 = *(v174 + 64);
  MEMORY[0x28223BE20](v176);
  v191 = &v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v147 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6700, qword_23D9E0DB8);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v147 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v147 - v56;
  v198 = type metadata accessor for VoiceRotorDetailView();
  v58 = v1 + *(v198 + 20);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v45 + 8))(v48, v44);
  v200 = v2;
  sub_23D993028(sub_23D994C5C, v199, v208, v209, v210, v52);

  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    sub_23D91F344(v52, &qword_27E2F6700, qword_23D9E0DB8);
    swift_storeEnumTagMultiPayload();
    sub_23D994C7C();
    return sub_23D9D9B14();
  }

  else
  {
    sub_23D994F08(v52, v57);
    MEMORY[0x23EEF3850](v53);
    swift_getKeyPath();
    sub_23D9DA574();

    v60 = sub_23D9D89C4();
    v61 = *(v60 - 8);
    v62 = *(v61 + 56);
    v63 = v184;
    v154 = v60;
    v153 = v62;
    v152 = v61 + 56;
    (v62)(v184, 1, 1);
    swift_getKeyPath();
    v155 = v53;
    v169 = v57;
    sub_23D9DA574();

    v203 = *v206;
    v204 = *&v206[16];
    v205 = v207;
    v64 = *(v198 + 24);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v198 = v64;
    v66 = v156;
    v197 = v65;
    sub_23D9DA3B4();
    v67 = v196;
    v68 = *(v196 + 48);
    v69 = v185;
    v187 = v196 + 48;
    v186 = v68;
    v70 = v2;
    if (v68(v66, 1, v185))
    {
      sub_23D91F344(v66, &qword_27E2F4460, &qword_23D9DC2A0);
      v71 = 0;
      v72 = 0xE000000000000000;
    }

    else
    {
      v73 = v66;
      v74 = v69;
      v75 = v183;
      (*(v67 + 16))(v183, v73, v74);
      sub_23D91F344(v73, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v71 = v76;
      v72 = v77;
      v78 = v75;
      v69 = v74;
      (*(v67 + 8))(v78, v74);
    }

    v79 = v165;
    v201 = v71;
    v202 = v72;
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
    sub_23D9DA544();

    v156 = v208;
    v151 = v209;
    v150 = v210;
    v149 = v211;
    v80 = v157;
    sub_23D9DA3B4();
    v81 = v186(v80, 1, v69);
    v82 = v69;
    v83 = v188;
    v192 = v70;
    if (v81)
    {
      sub_23D91F344(v80, &qword_27E2F4460, &qword_23D9DC2A0);
      v157 = 0;
      v148 = 0;
    }

    else
    {
      v84 = v196;
      v85 = v183;
      (*(v196 + 16))(v183, v80, v82);
      sub_23D91F344(v80, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v157 = v86;
      v148 = v87;
      (*(v84 + 8))(v85, v82);
    }

    *&v203 = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
    sub_23D9DA5A4();
    v88 = *v206;
    v147 = *&v206[8];
    v89 = v160;
    v90 = v83;
    sub_23D9DA4E4();
    v91 = v159;
    sub_23D91F2DC(v63, v159, &qword_27E2F4670, &qword_23D9DC650);
    v92 = v189;
    v93 = &v189[v79[7]];
    LOBYTE(v203) = 0;
    sub_23D9DA3A4();
    v94 = *&v206[8];
    *v93 = v206[0];
    *(v93 + 1) = v94;
    v95 = v92 + v79[8];
    sub_23D9D9C64();
    v96 = v79[10];
    v153(v92 + v96, 1, 1, v154);
    v97 = (v92 + v79[12]);
    v98 = v92 + v79[13];
    *v98 = swift_getKeyPath();
    *(v98 + 8) = 0;
    v99 = v92 + v79[14];
    LOBYTE(v203) = 0;
    sub_23D9DA3A4();
    v100 = *&v206[8];
    *v99 = v206[0];
    *(v99 + 8) = v100;
    v101 = v79[15];
    *&v203 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
    sub_23D9DA3A4();
    *(v92 + v101) = *v206;
    sub_23D91F2DC(v89, v92, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D929AE4(v91, v92 + v96);
    *(v92 + v79[11]) = 61;
    v102 = v92 + v79[5];
    *v102 = v88;
    *(v102 + 8) = v147;
    v103 = (v92 + v79[9]);
    *v103 = 0;
    v103[1] = 0;
    sub_23D91F344(v91, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v89, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D91F344(v184, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v90, &qword_27E2F6658, &qword_23D9E1E80);
    v104 = (v92 + v79[6]);
    v105 = v151;
    *v104 = v156;
    v104[1] = v105;
    v106 = v149;
    v104[2] = v150;
    v104[3] = v106;
    v107 = v148;
    *v97 = v157;
    v97[1] = v107;
    swift_getKeyPath();
    sub_23D9DA574();

    v203 = *v206;
    v204 = *&v206[16];
    v205 = v207;
    v108 = v161;
    sub_23D9DA3B4();
    v109 = v185;
    if (v186(v108, 1, v185))
    {
      sub_23D91F344(v108, &qword_27E2F4460, &qword_23D9DC2A0);
      v110 = 0;
      v111 = 0xE000000000000000;
    }

    else
    {
      v112 = v196;
      v113 = v183;
      (*(v196 + 16))(v183, v108, v109);
      sub_23D91F344(v108, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v110 = v114;
      v111 = v115;
      (*(v112 + 8))(v113, v109);
    }

    v201 = v110;
    v202 = v111;
    sub_23D9DA544();

    v116 = sub_23D994EC0(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings);
    v117 = v164;
    v118 = v189;
    sub_23D9DA054();

    sub_23D995014(v118);
    v119 = v181;
    v120 = v180;
    v121 = v182;
    (*(v181 + 104))(v180, *MEMORY[0x277CDDDB8], v182);
    v208 = v79;
    v209 = v116;
    swift_getOpaqueTypeConformance2();
    v122 = v162;
    v123 = v168;
    sub_23D9DA144();
    (*(v119 + 8))(v120, v121);
    (*(v167 + 8))(v117, v123);
    KeyPath = swift_getKeyPath();
    v125 = v171;
    (*(v163 + 32))(v171, v122, v166);
    v126 = v125 + *(v170 + 36);
    *v126 = KeyPath;
    *(v126 + 8) = 0;
    v127 = v179;
    sub_23D9DA3B4();
    if (v186(v127, 1, v109))
    {
      sub_23D91F344(v127, &qword_27E2F4460, &qword_23D9DC2A0);
      v128 = 0;
      v129 = 0xE000000000000000;
    }

    else
    {
      v130 = v196;
      v131 = v183;
      (*(v196 + 16))(v183, v127, v109);
      sub_23D91F344(v127, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v128 = v132;
      v129 = v133;
      (*(v130 + 8))(v131, v109);
    }

    v134 = v190;
    v135 = v191;
    v208 = v128;
    v209 = v129;
    sub_23D994D90();
    sub_23D91B650();
    v136 = v173;
    sub_23D9DA064();

    sub_23D91F344(v125, &qword_27E2F66E8, &qword_23D9E0DA0);
    v137 = sub_23D9D9074();
    v139 = v138;
    v140 = v172;
    v141 = &v172[*(v134 + 36)];
    v142 = type metadata accessor for AXSUIVoiceLoader();
    v143 = v141 + *(v142 + 20);
    sub_23D9DA3D4();
    v144 = swift_getKeyPath();
    *v141 = v137;
    v141[1] = v139;
    v145 = v141 + *(v142 + 24);
    *v145 = v144;
    v145[8] = 0;
    (*(v177 + 32))(v140, v136, v178);
    v146 = v175;
    sub_23D99507C(v140, v175);
    sub_23D9950EC(v146, v194);
    swift_storeEnumTagMultiPayload();
    sub_23D994C7C();
    sub_23D9D9B14();
    sub_23D91F344(v146, &qword_27E2F66F8, &qword_23D9E0DB0);
    (*(v174 + 8))(v135, v176);
    return sub_23D91F344(v169, &qword_27E2F4D40, &qword_23D9DEA10);
  }
}

uint64_t sub_23D9949FC(uint64_t a1, void *a2)
{
  v3 = sub_23D9D90B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  MEMORY[0x23EEF3850](v8);
  v9 = sub_23D9D9064();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  if (v9 == *a2 && v11 == a2[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_23D9DAFC4();
  }

  return v13 & 1;
}

uint64_t sub_23D994B38(uint64_t a1)
{
  v2 = sub_23D9D8DA4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D9D90A4();
}

uint64_t sub_23D994C04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DAC04();
  *a2 = result;
  return result;
}

uint64_t sub_23D994C30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D9DAC14();
}

unint64_t sub_23D994C7C()
{
  result = qword_27E2F6708;
  if (!qword_27E2F6708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66F8, &qword_23D9E0DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66E8, &qword_23D9E0DA0);
    sub_23D994D90();
    sub_23D91B650();
    swift_getOpaqueTypeConformance2();
    sub_23D994EC0(&qword_27E2F4818, type metadata accessor for AXSUIVoiceLoader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6708);
  }

  return result;
}

unint64_t sub_23D994D90()
{
  result = qword_27E2F6710;
  if (!qword_27E2F6710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66E8, &qword_23D9E0DA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66D8, &qword_23D9E0D90);
    type metadata accessor for AXSUIVoiceSettings();
    sub_23D994EC0(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6710);
  }

  return result;
}

uint64_t sub_23D994EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D994F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D994FA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9034();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D994FCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D9D9044();
}

uint64_t sub_23D995014(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceSettings();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D99507C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66F8, &qword_23D9E0DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9950EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66F8, &qword_23D9E0DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D99515C()
{
  result = qword_27E2F5580;
  if (!qword_27E2F5580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D78, qword_23D9DD470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5580);
  }

  return result;
}

unint64_t sub_23D9951C4()
{
  result = qword_27E2F6718;
  if (!qword_27E2F6718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6720, qword_23D9E0EE8);
    sub_23D994C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6718);
  }

  return result;
}

uint64_t sub_23D995250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9DAD74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_23D9952BC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_23D9DA7D4();
}

uint64_t AXSUITTSLanguageList.init(detail:accessory:collapseMacroLanguages:languageFilter:languages:additionalContent:overrideLanguage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v38 = a6;
  v37 = a5;
  v39 = a11;
  v40 = a7;
  v36 = a10;
  v35 = a12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v35 - v21;

  v41 = v35;
  v42 = a13;
  v43 = a14;
  v23 = type metadata accessor for AXSUITTSLanguageList();
  v24 = v23[18];
  *(a8 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v25 = a8 + v23[19];
  v44 = 1;
  sub_23D9DA3A4();
  v26 = *(&v41 + 1);
  *v25 = v41;
  *(v25 + 8) = v26;
  v27 = a8 + v23[20];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = a8 + v23[21];
  *v28 = swift_getKeyPath();
  *(v28 + 40) = 0;
  v29 = v23[22];
  v30 = sub_23D9D8954();
  (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
  sub_23D995A90(v22);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 48) = v37;
  v31 = v39;
  v32 = v40;
  *(a8 + 56) = v38;
  *(a8 + 64) = v32;
  v33 = v36;
  *(a8 + 32) = a9;
  *(a8 + 40) = v33;
  return sub_23D92A2BC(v31, a8 + v23[17], &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t AXSUITTSLanguageList.init<>(detail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_23D9D8954();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  *(&v16 + 1) = MEMORY[0x277CE1420];
  *&v16 = a3;
  return AXSUITTSLanguageList.init(detail:accessory:collapseMacroLanguages:languageFilter:languages:additionalContent:overrideLanguage:)(a1, a2, 0, 0, 0, 0, 0, a5, 0, 0, v13, v16, a4, MEMORY[0x277CE1418]);
}

uint64_t sub_23D9957E4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_23D9D8954() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_23D951300(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_23D99DE54(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_23D9958A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D9D9954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - v12);
  sub_23D91F2DC(v2 + *(a1 + 72), &v17 - v12, &unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v13, v5);
  }

  v15 = *v13;
  sub_23D9DACD4();
  v16 = sub_23D9D9D24();
  sub_23D9D91B4();

  sub_23D9D9944();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23D995A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_23D91F2DC(a1, &v6 - v4, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D9DA3A4();
  return sub_23D91F344(a1, &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t sub_23D995B58(uint64_t a1)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 80));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_23D9DACD4();
    v11 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t sub_23D995D24(uint64_t a1)
{
  sub_23D960024(a1, v3);
  sub_23D960024(v3, &v2);
  sub_23D9A016C();
  sub_23D9D9974();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_23D995D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = *(a1 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D9D8C54();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v30 - v10;
  v30[1] = v30 - v10;
  v12 = sub_23D9D8C94();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6888, &qword_23D9E1108);
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v31 = v30 - v19;
  sub_23D995B58(a1);
  sub_23D9D8AA4();

  v30[3] = v43[4];
  v30[2] = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v20 = sub_23D9D89C4();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  sub_23D9A06BC(&qword_27E2F6890, MEMORY[0x277D702B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6898, &qword_23D9E1110);
  sub_23D91F01C(&qword_27E2F68A0, &qword_27E2F6898, &qword_23D9E1110);
  sub_23D9DADD4();
  v42 = v21;
  sub_23D9DADD4();
  sub_23D9D8C84();
  v22 = v31;
  sub_23D9D8A84();
  (*(v33 + 8))(v15, v34);
  v24 = v38;
  v23 = v39;
  (*(v39 + 16))(v38, v32, a1);
  v25 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v27 = *(a1 + 32);
  *(v26 + 16) = *(a1 + 16);
  *(v26 + 32) = v27;
  (*(v23 + 32))(v26 + v25, v24, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  v28 = v36;
  sub_23D9D8E24();

  (*(v37 + 8))(v22, v28);
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

uint64_t sub_23D996278(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a1;
  v7[7] = a3;
  v9 = sub_23D9D89A4();
  v7[12] = v9;
  v10 = *(v9 - 8);
  v7[13] = v10;
  v11 = *(v10 + 64) + 15;
  v7[14] = swift_task_alloc();
  v12 = sub_23D9D89C4();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *a2;
  v7[18] = v16;
  v7[19] = v17;
  sub_23D9DA9B4();
  v7[20] = sub_23D9DA9A4();
  v19 = sub_23D9DA994();
  v7[21] = v19;
  v7[22] = v18;

  return MEMORY[0x2822009F8](sub_23D996410, v19, v18);
}

uint64_t sub_23D996410()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  v3 = type metadata accessor for AXSUITTSLanguageList();
  *(v0 + 184) = sub_23D995B58(v3);
  v4 = *(MEMORY[0x277D700E8] + 4);
  v8 = (*MEMORY[0x277D700E8] + MEMORY[0x277D700E8]);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_23D9964E0;
  v6 = *(v0 + 136);

  return v8(v6);
}

uint64_t sub_23D9964E0()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_23D996624, v5, v4);
}

uint64_t sub_23D996624()
{
  v32 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);
  v10 = *(v0 + 56);
  v29 = *(v0 + 80);
  v30 = *(v0 + 64);

  sub_23D9D89B4();
  (*(v6 + 8))(v3, v5);
  sub_23D9D8994();
  (*(v8 + 8))(v7, v9);
  v11 = swift_task_alloc();
  *(v11 + 16) = v30;
  *(v11 + 32) = v29;
  *(v11 + 48) = v10;
  v12 = sub_23D996DAC(sub_23D9A0670, v11, v2);

  v13 = sub_23D93D8F8(v12);

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = sub_23D94FB78(*(v13 + 16), 0);
    v16 = *(sub_23D9D8954() - 8);
    v17 = sub_23D99F664(&v31, (v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80))), v14, v13);
    sub_23D92A324();
    if (v17 == v14)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_5:
  v18 = *(v0 + 144);
  v19 = *(v0 + 56);
  v20 = swift_task_alloc();
  v21 = *(v0 + 80);
  *(v20 + 16) = *(v0 + 64);
  *(v20 + 32) = v21;
  *(v20 + 48) = v19;
  *(v20 + 56) = v18;
  v31 = v15;

  sub_23D9957E4(sub_23D9A0694, v20);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 112);
  v25 = *(v0 + 48);

  v26 = v31;

  *v25 = v26;
  sub_23D91F344(v22, &qword_27E2F4210, &qword_23D9DBE60);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_23D9968D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v39 = v37 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v37 - v12;
  v43 = sub_23D9D89A4();
  v42 = *(v43 - 8);
  v14 = *(v42 + 64);
  v15 = MEMORY[0x28223BE20](v43);
  v40 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v37 - v20;
  v22 = sub_23D9D8954();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 56);
  if (v28)
  {
    v37[2] = v3;
    v37[0] = v25;
    v29 = *(v25 + 64);

    v37[1] = a1;
    sub_23D9D89B4();
    sub_23D9D8994();
    (*(v42 + 8))(v21, v43);
    if ((*(v23 + 48))(v13, 1, v22) == 1)
    {
      sub_23D91F064(v28);
      sub_23D91F344(v13, &qword_27E2F4210, &qword_23D9DBE60);
      v25 = v37[0];
    }

    else
    {
      (*(v23 + 32))(v27, v13, v22);
      v30 = v28(v27);
      sub_23D91F064(v28);
      (*(v23 + 8))(v27, v22);
      v25 = v37[0];
      if ((v30 & 1) == 0)
      {
        return (*(v23 + 56))(v41, 1, 1, v22);
      }
    }
  }

  if (*(v25 + 48) != 1)
  {
LABEL_10:
    v34 = v40;
    sub_23D9D89B4();
    sub_23D9D8994();
    return (*(v42 + 8))(v34, v43);
  }

  sub_23D9D89B4();
  v31 = v38;
  sub_23D9D8994();
  (*(v42 + 8))(v19, v43);
  v32 = *(v23 + 48);
  if (v32(v31, 1, v22) == 1)
  {
    sub_23D91F344(v31, &qword_27E2F4210, &qword_23D9DBE60);
    v33 = v39;
    (*(v23 + 56))(v39, 1, 1, v22);
LABEL_9:
    sub_23D91F344(v33, &qword_27E2F4210, &qword_23D9DBE60);
    goto LABEL_10;
  }

  v33 = v39;
  sub_23D9D88E4();
  (*(v23 + 8))(v31, v22);
  if (v32(v33, 1, v22) == 1)
  {
    goto LABEL_9;
  }

  v36 = v41;
  (*(v23 + 32))(v41, v33, v22);
  return (*(v23 + 56))(v36, 0, 1, v22);
}

void *sub_23D996DAC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v54 = sub_23D9D8954();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v39 - v13;
  v14 = sub_23D9D89C4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_23D91F344(v8, &qword_27E2F4210, &qword_23D9DBE60);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_23D93C6B0(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_23D93C6B0(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_23D9971F8(uint64_t a1, uint64_t a2, unsigned int (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a8;
  v72 = a6;
  v73 = a7;
  v75 = a4;
  v76 = a1;
  v77 = a3;
  v71 = a2;
  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v65 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68A8, &qword_23D9E1128);
  v13 = *(*(v84 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v84);
  v70 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v62[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v64 = &v62[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v69 = &v62[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v66 = &v62[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v62[-v27];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v62[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v62[-v32];
  v80 = a5;
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v34 = type metadata accessor for AXSUITTSLanguageList();
  sub_23D91F2DC(v77 + *(v34 + 68), v31, &qword_27E2F4210, &qword_23D9DBE60);
  v35 = *(v10 + 48);
  v36 = v35(v31, 1, v9);
  v77 = v35;
  if (v36 == 1)
  {
    sub_23D91F2DC(v75, v33, &qword_27E2F4210, &qword_23D9DBE60);
    if (v35(v31, 1, v9) != 1)
    {
      sub_23D91F344(v31, &qword_27E2F4210, &qword_23D9DBE60);
    }
  }

  else
  {
    (*(v10 + 32))(v33, v31, v9);
    (*(v10 + 56))(v33, 0, 1, v9);
  }

  v37 = *(v10 + 16);
  v73 = v10 + 16;
  v68 = v37;
  v37(v28, v76, v9);
  v74 = v10;
  v38 = *(v10 + 56);
  v72 = v10 + 56;
  v67 = v38;
  v38(v28, 0, 1, v9);
  v39 = *(v84 + 48);
  sub_23D91F2DC(v33, v17, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D91F2DC(v28, &v17[v39], &qword_27E2F4210, &qword_23D9DBE60);
  v40 = v77;
  if (v77(v17, 1, v9) == 1)
  {
    sub_23D91F344(v28, &qword_27E2F4210, &qword_23D9DBE60);
    sub_23D91F344(v33, &qword_27E2F4210, &qword_23D9DBE60);
    if (v40(&v17[v39], 1, v9) == 1)
    {
      sub_23D91F344(v17, &qword_27E2F4210, &qword_23D9DBE60);
      return 1;
    }

    goto LABEL_10;
  }

  v42 = v66;
  sub_23D91F2DC(v17, v66, &qword_27E2F4210, &qword_23D9DBE60);
  if (v40(&v17[v39], 1, v9) == 1)
  {
    sub_23D91F344(v28, &qword_27E2F4210, &qword_23D9DBE60);
    sub_23D91F344(v33, &qword_27E2F4210, &qword_23D9DBE60);
    (*(v74 + 8))(v42, v9);
LABEL_10:
    sub_23D91F344(v17, &qword_27E2F68A8, &qword_23D9E1128);
    goto LABEL_11;
  }

  v54 = v74;
  v55 = v65;
  (*(v74 + 32))(v65, &v17[v39], v9);
  sub_23D9A06BC(&qword_27E2F4730, MEMORY[0x277CC9640]);
  v63 = sub_23D9DA894();
  v56 = *(v54 + 8);
  v56(v55, v9);
  sub_23D91F344(v28, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D91F344(v33, &qword_27E2F4210, &qword_23D9DBE60);
  v56(v42, v9);
  sub_23D91F344(v17, &qword_27E2F4210, &qword_23D9DBE60);
  if (v63)
  {
    return 1;
  }

LABEL_11:
  v43 = v69;
  v68(v69, v71, v9);
  v67(v43, 0, 1, v9);
  v44 = *(v84 + 48);
  v45 = v70;
  sub_23D91F2DC(v75, v70, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D91F2DC(v43, &v45[v44], &qword_27E2F4210, &qword_23D9DBE60);
  v46 = v77;
  if (v77(v45, 1, v9) == 1)
  {
    sub_23D91F344(v43, &qword_27E2F4210, &qword_23D9DBE60);
    if (v46(&v45[v44], 1, v9) == 1)
    {
      sub_23D91F344(v45, &qword_27E2F4210, &qword_23D9DBE60);
      return 0;
    }

    goto LABEL_16;
  }

  v47 = v46;
  v48 = v64;
  sub_23D91F2DC(v45, v64, &qword_27E2F4210, &qword_23D9DBE60);
  if (v47(&v45[v44], 1, v9) == 1)
  {
    sub_23D91F344(v43, &qword_27E2F4210, &qword_23D9DBE60);
    (*(v74 + 8))(v48, v9);
LABEL_16:
    sub_23D91F344(v45, &qword_27E2F68A8, &qword_23D9E1128);
    goto LABEL_17;
  }

  v57 = v74;
  v58 = v65;
  (*(v74 + 32))(v65, &v45[v44], v9);
  sub_23D9A06BC(&qword_27E2F4730, MEMORY[0x277CC9640]);
  v59 = v48;
  v60 = sub_23D9DA894();
  v61 = *(v57 + 8);
  v61(v58, v9);
  sub_23D91F344(v43, &qword_27E2F4210, &qword_23D9DBE60);
  v61(v59, v9);
  sub_23D91F344(v45, &qword_27E2F4210, &qword_23D9DBE60);
  if (v60)
  {
    return 0;
  }

LABEL_17:
  v49 = sub_23D9D8934();
  if (!v50)
  {
    v49 = sub_23D9D88D4();
  }

  v80 = v49;
  v81 = v50;
  v51 = sub_23D9D8934();
  if (!v52)
  {
    v51 = sub_23D9D88D4();
  }

  v78 = v51;
  v79 = v52;
  sub_23D91B650();
  v53 = sub_23D9DAD94();

  return v53 == -1;
}

uint64_t sub_23D997AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *(a2 + 68);
  sub_23D91F2DC(a1, &v9 - v7, &qword_27E2F4210, &qword_23D9DBE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  sub_23D9DA564();
  return sub_23D91F344(a1, &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t sub_23D997BD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v87 = *(v5 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v5);
  v86 = &v63 - v7;
  v8 = sub_23D9D8954();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v81 = v11;
  v91 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a2 - 1);
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v79 = v13;
  v90 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 32);
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_23D9DA464();
  v75 = swift_getWitnessTable();
  v17 = sub_23D9DA444();
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v77 = &v63 - v19;
  v20 = swift_getWitnessTable();
  v21 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  v80 = v17;
  v92 = v17;
  v93 = v5;
  v88 = v5;
  v74 = v20;
  v94 = v20;
  v95 = v21;
  v72 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  v22 = *(v73 + 64);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v69 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v71 = &v63 - v26;
  v85 = v16;
  v70 = *(v16 - 8);
  v27 = *(v70 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v63 - v28;
  v30 = sub_23D9D8934();
  if (!v31)
  {
    v30 = sub_23D9D88D4();
  }

  v32 = MEMORY[0x28223BE20](v30);
  v33 = a2[2];
  *(&v63 - 8) = v33;
  *(&v63 - 7) = v15;
  v34 = v33;
  v64 = v33;
  v66 = a2[4];
  v65 = a2[5];
  v35 = v65;
  *(&v63 - 6) = v66;
  *(&v63 - 5) = v35;
  *(&v63 - 4) = v32;
  *(&v63 - 3) = v36;
  v37 = v82;
  *(&v63 - 2) = v82;
  *(&v63 - 1) = a1;
  sub_23D9D99B4();
  sub_23D9DA454();

  v38 = v68;
  (*(v68 + 16))(v90, v37, a2);
  v39 = v83;
  v40 = v84;
  v41 = *(v83 + 16);
  v82 = v29;
  v41(v91, a1, v84);
  v42 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v43 = (v79 + *(v39 + 80) + v42) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v34;
  *(v44 + 3) = v15;
  v45 = v15;
  v46 = v66;
  v47 = v65;
  *(v44 + 4) = v66;
  *(v44 + 5) = v47;
  (*(v38 + 32))(&v44[v42], v90, a2);
  v48 = (*(v39 + 32))(&v44[v43], v91, v40);
  MEMORY[0x28223BE20](v48);
  *(&v63 - 6) = v64;
  *(&v63 - 5) = v45;
  *(&v63 - 4) = v46;
  *(&v63 - 3) = v47;
  v49 = v82;
  *(&v63 - 2) = v82;
  v50 = v77;
  v51 = v85;
  sub_23D9DA404();
  v52 = v86;
  sub_23D9D9B54();
  v53 = v69;
  v54 = v80;
  v55 = v88;
  v56 = v74;
  v57 = v72;
  sub_23D9D9FA4();
  (*(v87 + 8))(v52, v55);
  (*(v78 + 8))(v50, v54);
  v92 = v54;
  v93 = v55;
  v94 = v56;
  v95 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v71;
  v60 = OpaqueTypeMetadata2;
  sub_23D91F510(v53, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v61 = *(v73 + 8);
  v61(v53, v60);
  sub_23D91F510(v59, v60, OpaqueTypeConformance2);
  v61(v59, v60);
  return (*(v70 + 8))(v49, v51);
}

uint64_t sub_23D9983D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v59 = a4;
  v60 = a6;
  v67 = a7;
  swift_getTupleTypeMetadata2();
  v11 = sub_23D9DA7C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v55 - v15;
  v58 = *(a5 - 1);
  v17 = *(v58 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  v68 = v23;
  v24 = sub_23D9DAD74();
  v61 = *(v24 - 8);
  v25 = *(v61 + 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v66 = &v55 - v29;
  v74 = a1;
  v75 = a2;
  sub_23D91B650();

  v30 = sub_23D9D9F04();
  v63 = v31;
  v64 = v30;
  v62 = v32;
  v65 = v33;
  v34 = *a3;
  if (*a3)
  {
    v57 = *(a3 + 8);

    v34(v59);
    v56 = v16;
    v35 = v60;
    sub_23D91F510(v20, a5, v60);
    v36 = v58;
    v59 = v24;
    v37 = *(v58 + 8);
    v37(v20, a5);
    v70 = 0;
    LOBYTE(v71) = 1;
    v74 = &v70;
    (*(v36 + 16))(v20, v22, a5);
    v75 = v20;
    v78 = MEMORY[0x277CE1178];
    v79 = a5;
    v72 = MEMORY[0x277CE1168];
    v73 = v35;
    v38 = v56;
    sub_23D9952BC(&v74, 2uLL, &v78);
    sub_23D91F064(v34);
    v37(v22, a5);
    v37(v20, a5);
    v39 = v68;
    (*(v12 + 32))(v28, v38, v68);
    (*(v12 + 56))(v28, 0, 1, v39);
    swift_getWitnessTable();
    v40 = v61;
    v41 = *(v61 + 2);
    v42 = v66;
    v43 = v59;
    v41();
    v44 = v40[1];
    v45 = v28;
    v46 = v28;
    v47 = v43;
    v48 = v43;
  }

  else
  {
    (*(v12 + 56))(v28, 1, 1, v68);
    swift_getWitnessTable();
    v49 = v61;
    v41 = *(v61 + 2);
    v42 = v66;
    v41();
    v44 = v49[1];
    v45 = v28;
    v46 = v28;
    v47 = v24;
    v48 = v24;
  }

  v61 = v44;
  v44(v46, v48);
  v50 = v63;
  v51 = v64;
  v74 = v64;
  v75 = v63;
  v52 = v62 & 1;
  v76 = v62 & 1;
  v77 = v65;
  v78 = &v74;
  (v41)(v45, v42, v47);
  v79 = v45;
  sub_23D91E0AC(v51, v50, v52);

  v72 = MEMORY[0x277CE0BD0];
  v73 = v47;
  v70 = MEMORY[0x277CE0BC0];
  WitnessTable = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  sub_23D9952BC(&v78, 2uLL, &v72);
  sub_23D9274BC(v51, v50, v52);

  v53 = v61;
  v61(v42, v47);
  v53(v45, v47);
  sub_23D9274BC(v74, v75, v76);
}

uint64_t sub_23D9989A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v19 - v13;
  v15 = sub_23D9D8954();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a2, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v17 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  return sub_23D997AF8(v14, v17);
}

uint64_t sub_23D998ADC(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  v2 = sub_23D9DA464();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  WitnessTable = swift_getWitnessTable();
  sub_23D91F510(a1, v2, WitnessTable);
  sub_23D91F510(v6, v2, WitnessTable);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23D998C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v54 = *(a1 - 8);
  v56 = *(v54 + 64);
  MEMORY[0x28223BE20](a1);
  v53 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  v8 = sub_23D9D8954();
  v50 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  v9 = sub_23D9DA444();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  v58 = v9;
  v59 = v10;
  v60 = WitnessTable;
  v61 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = v9;
  v59 = v10;
  v60 = WitnessTable;
  v61 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = OpaqueTypeMetadata2;
  v59 = MEMORY[0x277D837D0];
  v60 = OpaqueTypeConformance2;
  v61 = MEMORY[0x277D837E0];
  v15 = sub_23D9DA474();
  v16 = swift_getWitnessTable();
  v17 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  v58 = v15;
  v59 = v8;
  v60 = v16;
  v61 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0);
  v48 = v7;
  v58 = v7;
  v59 = v8;
  v60 = v18;
  v61 = v19;
  v62 = v17;
  sub_23D9DA634();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
  swift_getTupleTypeMetadata2();
  v20 = sub_23D9DA7C4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v47 = v20;
  v22 = swift_getWitnessTable();
  v46 = v22;
  v23 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
  v58 = v7;
  v59 = v20;
  v60 = v21;
  v61 = v22;
  v62 = v23;
  v24 = type metadata accessor for AXSUIStreamValueView();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v45 - v30;
  v32 = v55;
  v33 = v49;
  (*(v51 + 16))(v49, v55 + *(a1 + 52), v52);
  v35 = v53;
  v34 = v54;
  v36 = v32;
  v37 = a1;
  (*(v54 + 16))(v53, v36, a1);
  v38 = v34;
  v39 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v40 = swift_allocObject();
  v41 = v50;
  *(v40 + 16) = *(v37 + 16);
  *(v40 + 24) = v41;
  *(v40 + 32) = *(v37 + 32);
  (*(v38 + 32))(v40 + v39, v35, v37);
  AXSUIStreamValueView.init<>(stream:animated:content:)(v33, sub_23D99D9B8, v40, v48, v47, v46, v29);
  v42 = swift_getWitnessTable();
  sub_23D91F510(v29, v24, v42);
  v43 = *(v25 + 8);
  v43(v29, v24);
  sub_23D91F510(v31, v24, v42);
  return (v43)(v31, v24);
}

uint64_t sub_23D9992E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a5;
  v62 = a6;
  KeyPath = a1;
  v60 = a3;
  v65 = a2;
  v63 = a7;
  v70 = a3;
  v71 = a4;
  v56 = a4;
  v72 = a5;
  v73 = a6;
  v64 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  v57 = *(v64 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v64);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  v53 = v9;
  v10 = sub_23D9D8954();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  v11 = sub_23D9DA444();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  v70 = v11;
  v71 = v12;
  v72 = WitnessTable;
  v73 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = v11;
  v71 = v12;
  v72 = WitnessTable;
  v73 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = OpaqueTypeMetadata2;
  v71 = MEMORY[0x277D837D0];
  v72 = OpaqueTypeConformance2;
  v73 = MEMORY[0x277D837E0];
  v17 = sub_23D9DA474();
  v55 = v17;
  v18 = swift_getWitnessTable();
  v54 = v18;
  v19 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  v70 = v17;
  v71 = v10;
  v49 = v10;
  v72 = v18;
  v73 = v19;
  v50 = &unk_23D9F1F78;
  v20 = swift_getOpaqueTypeMetadata2();
  v52 = v20;
  v51 = sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0);
  v70 = v9;
  v71 = v10;
  v72 = v20;
  v73 = v51;
  v74 = v19;
  v21 = sub_23D9DA634();
  v48 = *(v21 - 8);
  v22 = *(v48 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v68[0] = *KeyPath;
  KeyPath = swift_getKeyPath();
  v28 = v57;
  v29 = v8;
  v30 = v8;
  v31 = v64;
  (*(v57 + 16))(v30, v65, v64);
  v32 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v33 = swift_allocObject();
  v34 = v56;
  *(v33 + 2) = v60;
  *(v33 + 3) = v34;
  v35 = v62;
  *(v33 + 4) = v61;
  *(v33 + 5) = v35;
  v36 = v29;
  v37 = v27;
  v38 = v48;
  (*(v28 + 32))(&v33[v32], v36, v31);

  v70 = v55;
  v71 = v49;
  v72 = v54;
  v73 = v19;
  v47 = swift_getOpaqueTypeConformance2();
  sub_23D9DA614();
  v69[1] = v47;
  v39 = swift_getWitnessTable();
  sub_23D91F510(v25, v21, v39);
  v40 = *(v38 + 8);
  v40(v25, v21);
  v41 = v65 + *(v64 + 60);
  v42 = *v41;
  if (*v41)
  {
    v43 = *(v41 + 8);

    v45 = v42(v44);
    sub_23D91F064(v42);
  }

  else
  {
    v45 = 0;
  }

  (*(v38 + 16))(v25, v37, v21);
  v69[0] = v45;
  v70 = v25;
  v71 = v69;
  v68[0] = v21;
  v68[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6878, &qword_23D9E10B8);
  v66 = v39;
  v67 = sub_23D99DDD8();
  sub_23D9952BC(&v70, 2uLL, v68);

  v40(v37, v21);

  return (v40)(v25, v21);
}

uint64_t sub_23D99999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a5;
  v49 = a6;
  v47 = a3;
  v45 = a2;
  v50 = a7;
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  v51 = sub_23D9DA444();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  WitnessTable = swift_getWitnessTable();
  v54 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = OpaqueTypeMetadata2;
  v46 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = &v37 - v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = OpaqueTypeMetadata2;
  v52 = MEMORY[0x277D837D0];
  WitnessTable = OpaqueTypeConformance2;
  v54 = MEMORY[0x277D837E0];
  v13 = sub_23D9DA474();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = sub_23D9D8954();
  v37 = v17;
  v18 = swift_getWitnessTable();
  v39 = v18;
  v38 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  v51 = v13;
  v52 = v17;
  WitnessTable = v18;
  v54 = v38;
  v40 = &unk_23D9F1F78;
  v19 = swift_getOpaqueTypeMetadata2();
  v41 = *(v19 - 8);
  v20 = *(v41 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v51 = v47;
  v52 = a4;
  WitnessTable = v48;
  v54 = v49;
  v26 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  v27 = a1;
  sub_23D997BD0(a1, v26, v12);
  v51 = sub_23D9D88D4();
  v52 = v28;
  v29 = v43;
  sub_23D9DA154();

  (*(v46 + 8))(v12, v29);
  v30 = swift_checkMetadataState();
  v31 = v27;
  v33 = v38;
  v32 = v39;
  sub_23D91DE0C(v31, 1, v13, v30, v39);
  (*(v44 + 8))(v16, v13);
  v51 = v13;
  v52 = v30;
  WitnessTable = v32;
  v54 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  sub_23D91F510(v23, v19, v34);
  v35 = *(v41 + 8);
  v35(v23, v19);
  sub_23D91F510(v25, v19, v34);
  return (v35)(v25, v19);
}

uint64_t sub_23D999EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9D8954();
  v16 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  sub_23D9DA444();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D9DA474();
  swift_getWitnessTable();
  sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  swift_getOpaqueTypeMetadata2();
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9DA634();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
  swift_getTupleTypeMetadata2();
  v23 = v3;
  v24 = sub_23D9DA7C4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  WitnessTable = swift_getWitnessTable();
  v27 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
  type metadata accessor for AXSUIStreamValueView();
  swift_getWitnessTable();
  v4 = type metadata accessor for AXSUIPlatformFormListView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v19 = *(a1 + 16);
  v20 = v16;
  v21 = *(a1 + 32);
  v22 = v17;
  AXSUIPlatformFormListView.init(content:)(sub_23D99D99C);
  v12 = swift_getWitnessTable();
  sub_23D91F510(v9, v4, v12);
  v13 = *(v5 + 8);
  v13(v9, v4);
  sub_23D91F510(v11, v4, v12);
  return (v13)(v11, v4);
}

uint64_t sub_23D99A404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a4;
  v22 = a5;
  v20 = a2;
  v23 = a1;
  v24 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9D8954();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  sub_23D9DA444();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D9DA474();
  swift_getWitnessTable();
  sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  swift_getOpaqueTypeMetadata2();
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9DA634();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
  swift_getTupleTypeMetadata2();
  v25 = v7;
  v26 = sub_23D9DA7C4();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  WitnessTable = swift_getWitnessTable();
  v29 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
  v8 = type metadata accessor for AXSUIStreamValueView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v25 = v20;
  v26 = a3;
  v27 = v21;
  WitnessTable = v22;
  v16 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  sub_23D998C68(v16, v13);
  v17 = swift_getWitnessTable();
  sub_23D91F510(v13, v8, v17);
  v18 = *(v9 + 8);
  v18(v13, v8);
  sub_23D91F510(v15, v8, v17);
  return (v18)(v15, v8);
}

uint64_t sub_23D99A8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v18 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  v19 = v18[13];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  (*(*(v20 - 8) + 32))(&a9[v19], a3, v20);
  sub_23D92A2BC(a4, &a9[v18[14]], &qword_27E2F4210, &qword_23D9DBE60);
  v21 = &a9[v18[15]];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &a9[v18[16]];
  *v22 = a7;
  *(v22 + 1) = a8;
  sub_23D92A2BC(a10, &a9[v18[17]], &qword_27E2F4590, &qword_23D9DC410);
  v23 = v18[18];
  v24 = sub_23D9D89C4();
  return (*(*(v24 - 8) + 32))(&a9[v23], a11, v24);
}

uint64_t AXSUITTSLanguageList.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = *(a1 - 1);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](a1);
  v63 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6728, &qword_23D9E0F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v55 - v6;
  v68 = sub_23D9D89C4();
  v57 = a1;
  v7 = a1[2];
  v62 = a1[3];
  v8 = a1[4];
  v61 = a1[5];
  v69 = v7;
  v70 = v62;
  v59 = v7;
  v71 = v8;
  v72 = v61;
  v9 = v8;
  v58 = v8;
  v56 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  v10 = sub_23D9D8954();
  v11 = sub_23D9D96C4();
  v12 = sub_23D99B160();
  v84 = v9;
  v85 = v12;
  WitnessTable = swift_getWitnessTable();
  v69 = v11;
  v70 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = v11;
  v70 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  v69 = OpaqueTypeMetadata2;
  v70 = v10;
  v71 = OpaqueTypeConformance2;
  v72 = v16;
  sub_23D9DA474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66B0, &unk_23D9E0C90);
  v17 = sub_23D9D96C4();
  v18 = swift_getWitnessTable();
  v19 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78);
  v82 = v18;
  v83 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80);
  v80 = v20;
  v81 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90);
  v78 = v22;
  v79 = v23;
  v24 = swift_getWitnessTable();
  v69 = v10;
  v70 = v17;
  v71 = v16;
  v72 = v24;
  type metadata accessor for AXValueNavigationDestination();
  sub_23D9D96C4();
  v25 = sub_23D9D96C4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v76 = v27;
  v77 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_23D927AFC();
  v74 = v29;
  v75 = v30;
  v31 = v25;
  v55 = v25;
  v32 = swift_getWitnessTable();
  v56 = v32;
  v33 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
  v69 = v68;
  v70 = v31;
  v71 = v26;
  v72 = v32;
  v73 = v33;
  v34 = type metadata accessor for AXSUIStreamValueView();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v55 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v55 - v40;
  v42 = v57;
  v43 = v64;
  sub_23D995B58(v57);
  v44 = v60;
  sub_23D9D8AB4();

  v45 = v65;
  v46 = v63;
  (*(v65 + 16))(v63, v43, v42);
  v47 = v45;
  v48 = (*(v45 + 80) + 48) & ~*(v45 + 80);
  v49 = swift_allocObject();
  v50 = v62;
  *(v49 + 2) = v59;
  *(v49 + 3) = v50;
  v51 = v61;
  *(v49 + 4) = v58;
  *(v49 + 5) = v51;
  (*(v47 + 32))(&v49[v48], v46, v42);
  AXSUIStreamValueView.init<>(stream:animated:content:)(v44, sub_23D99BD10, v49, v68, v55, v56, v39);
  v52 = swift_getWitnessTable();
  sub_23D91F510(v39, v34, v52);
  v53 = *(v35 + 8);
  v53(v39, v34);
  sub_23D91F510(v41, v34, v52);
  return (v53)(v41, v34);
}

unint64_t sub_23D99B160()
{
  result = qword_27E2F6730;
  if (!qword_27E2F6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6730);
  }

  return result;
}

uint64_t sub_23D99B1B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v103 = a2;
  v106 = a1;
  v111 = a7;
  v135 = a3;
  v136 = a4;
  v118 = a4;
  v137 = a5;
  v138 = a6;
  v113 = a5;
  v119 = a6;
  v117 = type metadata accessor for AXSUITTSLanguageList();
  v109 = *(v117 - 8);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v117);
  v107 = &v84 - v11;
  v104 = sub_23D9D89C4();
  v122 = *(v104 - 8);
  v108 = *(v122 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v115 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v116 = &v84 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v112 = &v84 - v21;
  v114 = a3;
  v135 = a3;
  v136 = a4;
  v137 = a5;
  v138 = a6;
  v120 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  v105 = *(v120 - 8);
  v22 = *(v105 + 64);
  MEMORY[0x28223BE20](v120);
  v121 = &v84 - v23;
  v24 = sub_23D9D8954();
  v25 = sub_23D9D96C4();
  v26 = sub_23D99B160();
  v133 = a5;
  v134 = v26;
  v27 = MEMORY[0x277CDFAD0];
  WitnessTable = swift_getWitnessTable();
  v135 = v25;
  v136 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v135 = v25;
  v136 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  v135 = OpaqueTypeMetadata2;
  v136 = v24;
  v93 = v24;
  v137 = OpaqueTypeConformance2;
  v138 = v31;
  v32 = v31;
  v95 = v31;
  sub_23D9DA474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66B0, &unk_23D9E0C90);
  v33 = sub_23D9D96C4();
  v34 = swift_getWitnessTable();
  v35 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78);
  v131 = v34;
  v132 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80);
  v129 = v36;
  v130 = v37;
  v101 = v27;
  v38 = swift_getWitnessTable();
  v39 = sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90);
  v127 = v38;
  v128 = v39;
  v92 = v33;
  v91 = swift_getWitnessTable();
  v135 = v24;
  v136 = v33;
  v137 = v32;
  v138 = v91;
  v97 = type metadata accessor for AXValueNavigationDestination();
  v94 = sub_23D9D96C4();
  v99 = *(v94 - 8);
  v40 = *(v99 + 64);
  MEMORY[0x28223BE20](v94);
  v89 = &v84 - v41;
  v98 = sub_23D9D96C4();
  v100 = *(v98 - 8);
  v42 = *(v100 + 64);
  v43 = MEMORY[0x28223BE20](v98);
  v90 = &v84 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v96 = &v84 - v45;
  v46 = v103;
  v47 = v103[3];
  v88 = v103[2];
  v87 = v47;
  sub_23D99FD1C(v88);
  v48 = v117;
  sub_23D995D88(v117, v112);
  sub_23D91F2DC(v46 + *(v48 + 68), v116, &qword_27E2F4210, &qword_23D9DBE60);
  v49 = v46;
  v50 = v46[5];
  v85 = v46[4];
  v51 = v46[7];
  v52 = v46[8];
  sub_23D99FD1C(v85);
  sub_23D99FD1C(v51);
  v53 = *(v48 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v54 = v115;
  sub_23D9DA3D4();
  v86 = *(v122 + 16);
  v55 = v102;
  v56 = v106;
  v57 = v104;
  v86(v102, v106, v104);
  sub_23D99A8CC(v88, v87, v112, v116, v85, v50, v51, v52, v121, v54, v55);
  v58 = v117;
  v59 = *(v117 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  sub_23D9DA3D4();
  v60 = v109;
  v61 = v107;
  (*(v109 + 16))(v107, v49, v58);
  v86(v55, v56, v57);
  v62 = v60;
  v63 = (*(v60 + 80) + 48) & ~*(v60 + 80);
  v64 = v122;
  v65 = (v110 + *(v122 + 80) + v63) & ~*(v122 + 80);
  v66 = swift_allocObject();
  v67 = v118;
  *(v66 + 2) = v114;
  *(v66 + 3) = v67;
  v68 = v119;
  *(v66 + 4) = v113;
  *(v66 + 5) = v68;
  (*(v62 + 32))(&v66[v63], v61, v58);
  (*(v64 + 32))(&v66[v65], v55, v57);
  v69 = v120;
  v70 = swift_getWitnessTable();
  v71 = v89;
  v72 = v115;
  v73 = v121;
  View.axNavigationDestination<A, B>(item:_:)(v115, sub_23D9A004C, v66, v69, v93, v92, v70, v95, v89, v91);

  sub_23D91F344(v72, &qword_27E2F4590, &qword_23D9DC410);
  (*(v105 + 8))(v73, v69);
  v74 = swift_getWitnessTable();
  v125 = v70;
  v126 = v74;
  v75 = v94;
  v76 = swift_getWitnessTable();
  v77 = v90;
  View.axSettingsAppearance()(v75, v76);
  (*(v99 + 8))(v71, v75);
  v78 = sub_23D927AFC();
  v123 = v76;
  v124 = v78;
  v79 = v98;
  v80 = swift_getWitnessTable();
  v81 = v96;
  sub_23D91F510(v77, v79, v80);
  v82 = *(v100 + 8);
  v82(v77, v79);
  sub_23D91F510(v81, v79, v80);
  return (v82)(v81, v79);
}

uint64_t sub_23D99BD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v118 = a7;
  v117 = a5;
  v105 = a3;
  v123 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v122 = &v88 - v14;
  v15 = sub_23D9D9954();
  v119 = *(v15 - 8);
  v120 = v15;
  v16 = *(v119 + 64);
  MEMORY[0x28223BE20](v15);
  v106 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_23D9D99A4();
  v101 = *(v108 - 8);
  v18 = *(v101 + 64);
  v19 = MEMORY[0x28223BE20](v108);
  v102 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(a4 - 8);
  v21 = *(v100 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4;
  v25 = sub_23D9D96C4();
  v103 = *(v25 - 8);
  v26 = *(v103 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v88 - v27;
  v29 = sub_23D99B160();
  v116 = a6;
  v136 = a6;
  v137 = v29;
  WitnessTable = swift_getWitnessTable();
  v132 = v25;
  v133 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  v32 = *(v96 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v94 = &v88 - v33;
  v34 = sub_23D9D8954();
  v92 = v25;
  v132 = v25;
  v133 = WitnessTable;
  v95 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  v97 = OpaqueTypeMetadata2;
  v132 = OpaqueTypeMetadata2;
  v133 = v34;
  v125 = v34;
  v91 = OpaqueTypeConformance2;
  v134 = OpaqueTypeConformance2;
  v135 = v36;
  v90 = v36;
  v37 = sub_23D9DA474();
  v98 = *(v37 - 8);
  v38 = *(v98 + 64);
  MEMORY[0x28223BE20](v37);
  v93 = &v88 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  v99 = v37;
  v40 = sub_23D9D96C4();
  v104 = *(v40 - 8);
  v41 = *(v104 + 64);
  MEMORY[0x28223BE20](v40);
  v124 = &v88 - v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  v107 = v40;
  v43 = sub_23D9D96C4();
  v112 = *(v43 - 8);
  v44 = *(v112 + 64);
  MEMORY[0x28223BE20](v43);
  v109 = &v88 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66B0, &unk_23D9E0C90);
  v113 = v43;
  v115 = sub_23D9D96C4();
  v114 = *(v115 - 8);
  v46 = *(v114 + 64);
  v47 = MEMORY[0x28223BE20](v115);
  v110 = &v88 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v111 = &v88 - v49;
  v121 = a2;
  v50 = *a2;
  v51 = *(a2 + 8);
  v52 = v23;
  v50(a1, v105);
  v53 = a1;
  v54 = sub_23D9D8934();
  if (!v55)
  {
    v54 = sub_23D9D88D4();
  }

  v132 = v54;
  v133 = v55;
  v56 = v24;
  v57 = v116;
  MEMORY[0x23EEF34C0](&v132, v24, &type metadata for PlatformNavigationTitle, v116);

  (*(v100 + 8))(v52, v24);
  v58 = v101;
  v59 = v102;
  v60 = v108;
  (*(v101 + 104))(v102, *MEMORY[0x277CDDDB8], v108);
  v61 = v94;
  v62 = v92;
  sub_23D9DA144();
  (*(v58 + 8))(v59, v60);
  (*(v103 + 8))(v28, v62);
  v63 = v93;
  v89 = v53;
  v64 = v97;
  sub_23D9DA154();
  (*(v96 + 8))(v61, v64);
  swift_getKeyPath();
  v132 = v56;
  v133 = v117;
  v134 = v57;
  v135 = v118;
  v65 = type metadata accessor for AXSUITTSLanguageList();
  v66 = v106;
  sub_23D9958A4(v65, v106);
  sub_23D9A016C();
  sub_23D9D9964();
  v67 = v120;
  v68 = *(v119 + 8);
  v68(v66, v120);
  v69 = v99;
  v119 = swift_getWitnessTable();
  sub_23D9D9FC4();

  __swift_destroy_boxed_opaque_existential_0(&v132);
  (*(v98 + 8))(v63, v69);
  swift_getKeyPath();
  sub_23D9958A4(v65, v66);
  sub_23D9589B0();
  sub_23D9D9964();
  v68(v66, v67);
  v70 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78);
  v130 = v119;
  v131 = v70;
  v71 = v107;
  v72 = swift_getWitnessTable();
  v73 = v109;
  v74 = v124;
  sub_23D9D9FC4();

  (*(v104 + 8))(v74, v71);
  swift_getKeyPath();
  v75 = v125;
  v76 = *(v125 - 8);
  v77 = v122;
  (*(v76 + 16))(v122, v89, v125);
  (*(v76 + 56))(v77, 0, 1, v75);
  v78 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80);
  v128 = v72;
  v129 = v78;
  v79 = v113;
  v80 = swift_getWitnessTable();
  v81 = v110;
  sub_23D9D9FC4();

  sub_23D91F344(v77, &qword_27E2F4210, &qword_23D9DBE60);
  (*(v112 + 8))(v73, v79);
  v82 = sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90);
  v126 = v80;
  v127 = v82;
  v83 = v115;
  v84 = swift_getWitnessTable();
  v85 = v111;
  sub_23D91F510(v81, v83, v84);
  v86 = *(v114 + 8);
  v86(v81, v83);
  sub_23D91F510(v85, v83, v84);
  return (v86)(v85, v83);
}

void sub_23D99C99C()
{
  sub_23D95F334();
  if (v0 <= 0x3F)
  {
    sub_23D99D8EC(319, &qword_27E2F4348, &qword_27E2F4350, qword_23D9DBF90, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23D99CF18(319, &qword_27E2F4608, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23D99CF18(319, &qword_27E2F67D0, MEMORY[0x277CE0048], MEMORY[0x277CDF470]);
        if (v3 <= 0x3F)
        {
          sub_23D9273D0();
          if (v4 <= 0x3F)
          {
            sub_23D99CF18(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
            if (v5 <= 0x3F)
            {
              sub_23D99D8EC(319, &qword_27E2F67D8, &qword_27E2F67E0, "XO", MEMORY[0x277CDF470]);
              if (v6 <= 0x3F)
              {
                sub_23D99D8EC(319, &qword_27E2F4698, &qword_27E2F4210, &qword_23D9DBE60, MEMORY[0x277CE10B0]);
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

uint64_t sub_23D99CBE4(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[17];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6748, &qword_23D9E0FE8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[18];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[22];

  return v15(v16, a2, v14);
}

char *sub_23D99CD88(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[17];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6748, &qword_23D9E0FE8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[18];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[22]];

  return v15(v16, a2, a2, v14);
}

void sub_23D99CF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23D99CF7C(__int128 *a1)
{
  sub_23D9D89C4();
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  sub_23D9D8954();
  sub_23D9D96C4();
  sub_23D99B160();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  sub_23D9DA474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66B0, &unk_23D9E0C90);
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78);
  swift_getWitnessTable();
  sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90);
  swift_getWitnessTable();
  type metadata accessor for AXValueNavigationDestination();
  sub_23D9D96C4();
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D927AFC();
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
  type metadata accessor for AXSUIStreamValueView();
  return swift_getWitnessTable();
}

void sub_23D99D37C()
{
  sub_23D99D8EC(319, &qword_27E2F4348, &qword_27E2F4350, qword_23D9DBF90, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23D99D8EC(319, &qword_27E2F6870, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277CE6758]);
    if (v1 <= 0x3F)
    {
      sub_23D99CF18(319, &qword_27E2F4608, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23D99D8EC(319, &qword_27E2F45C0, &qword_27E2F4210, &qword_23D9DBE60, MEMORY[0x277CE1200]);
        if (v3 <= 0x3F)
        {
          sub_23D9D89C4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23D99D51C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[13];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[14];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[17];
    goto LABEL_13;
  }

  v16 = sub_23D9D89C4();
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[18]];

  return v17(v18, a2, v16);
}

char *sub_23D99D714(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[17];
    goto LABEL_9;
  }

  v15 = sub_23D9D89C4();
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[18]];

  return v16(v17, a2, a2, v15);
}

void sub_23D99D8EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23D99D968(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D99D9B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for AXSUITTSLanguageList.LanguageListView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_23D9992E4(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t objectdestroy_20Tm_0()
{
  v22 = *(v0 + 16);
  v23 = *(v0 + 32);
  v1 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  v21 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80)));
  if (*v2)
  {
    v3 = *(v2 + 1);
  }

  v4 = v1[13];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  (*(*(v5 - 8) + 8))(&v2[v4], v5);
  v6 = v1[14];
  v7 = sub_23D9D8954();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(&v2[v6], 1, v7))
  {
    (*(v8 + 8))(&v2[v6], v7);
  }

  v10 = &v2[v1[15]];
  if (*v10)
  {
    v11 = *(v10 + 1);
  }

  v12 = &v2[v1[16]];
  if (*v12)
  {
    v13 = *(v12 + 1);
  }

  v14 = &v2[v1[17]];
  v15 = *v14;

  v16 = *(v14 + 1);

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410) + 32);
  if (!v9(&v14[v17], 1, v7))
  {
    (*(v8 + 8))(&v14[v17], v7);
  }

  v18 = v1[18];
  v19 = sub_23D9D89C4();
  (*(*(v19 - 8) + 8))(&v2[v18], v19);
  return swift_deallocObject();
}

uint64_t sub_23D99DD08(uint64_t a1, uint64_t (*a2)(void, void *), uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v13[0] = v3[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v9 = *(a2(0, v13) - 8);
  v10 = v3 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return a3(a1, v10, v5, v6, v7, v8);
}

unint64_t sub_23D99DDD8()
{
  result = qword_27E2F6880;
  if (!qword_27E2F6880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6880);
  }

  return result;
}

uint64_t sub_23D99DE54(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_23D9DAF84();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23D9D8954();
        v9 = sub_23D9DA984();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_23D9D8954() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_23D99E27C(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_23D99DF90(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_23D99DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_23D9D8954();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v39 - v16;
  result = MEMORY[0x28223BE20](v15);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v18;
    v20 = *v5;
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = v20 + v23 * (a3 - 1);
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        v49(v51, v26, v11);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          return (v38)(v29, v11);
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        result = (v34)(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return result;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v35)(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = v43 + v39;
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_23D99E27C(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_23D9D8954();
  v12 = *(*(v163 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v134 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v134 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v140 = &v134 - v23;
  MEMORY[0x28223BE20](v22);
  result = MEMORY[0x28223BE20](&v134 - v24);
  v161 = v27;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v26;
  v139 = result;
  v151 = v21;
  v147 = v29;
  v148 = v28;
  v137 = a6;
  v31 = 0;
  v159 = (v27 + 8);
  v160 = v27 + 16;
  v155 = (v27 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163);
      v157 = v36;
      v138 = v35;
      v39 = &v35[v36 * v144];
      v40 = v139;
      v152 = v37;
      v37(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      result = (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = &v138[v157 * (v144 + 2)];
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        result = v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, &v63[v61], v163);
              if (v61 < a4 || &v63[v61] >= &v63[v58])
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v64)(&v63[a4], v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                result = (v123)(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = v138 - 1;
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v33;
    if ((result & 1) == 0)
    {
      result = sub_23D93C534(0, *(v32 + 2) + 1, 1, v32);
      v32 = result;
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_23D93C534((v67 > 1), v68 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_23D99EE88(*v162 + *(v161 + 72) * v110, *v162 + *(v161 + 72) * *&v32[16 * a4 + 32], *v162 + *(v161 + 72) * v111, v71, v33, a5);
    if (v7)
    {
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_23D950D9C(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    result = sub_23D950D10(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = sub_23D950D9C(v32);
  v32 = result;
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_23D99EE88(*v162 + *(v161 + 72) * v128, *v162 + *(v161 + 72) * *&v32[16 * v127 + 16], *v162 + *(v161 + 72) * v129, a4, v33, a5);
    if (v7)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_23D950D9C(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    result = sub_23D950D10(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_23D99EE88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v79 = a6;
  v80 = a5;
  v78 = sub_23D9D8954();
  v11 = *(v78 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v78);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  result = MEMORY[0x28223BE20](v17);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v25 = &v70 - v21;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_67;
  }

  v26 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v24 != -1)
  {
    v27 = (a2 - a1) / v24;
    v86 = a1;
    v85 = a4;
    v81 = v24;
    if (v27 < v26 / v24)
    {
      v28 = v27 * v24;
      if (a4 < a1 || a1 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v77 = a4 + v28;
      v84 = a4 + v28;
      if (v28 >= 1 && a2 < a3)
      {
        v54 = *(v11 + 16);
        v75 = v19;
        v76 = v11 + 16;
        v73 = v54;
        v74 = (v11 + 8);
        v55 = v25;
        v56 = v78;
        v57 = v6;
        v72 = a3;
        while (1)
        {
          v82 = a1;
          v58 = v73;
          v73(v55, a2, v56);
          v59 = a2;
          v60 = v55;
          v61 = v75;
          v58(v75, a4, v56);
          v62 = v80(v60, v61);
          if (v57)
          {
            break;
          }

          v63 = v62;
          v83 = 0;
          v64 = *v74;
          (*v74)(v61, v56);
          v64(v60, v56);
          v55 = v60;
          if (v63)
          {
            v65 = v81;
            v66 = v82;
            a2 = v59 + v81;
            if (v82 < v59 || v82 >= a2)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }
          }

          else
          {
            v65 = v81;
            v66 = v82;
            v67 = a4 + v81;
            a2 = v59;
            if (v82 < a4 || v82 >= v67)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }

            v85 = v67;
            a4 = v67;
          }

          a1 = v66 + v65;
          v86 = a1;
          if (a4 >= v77 || a2 >= v72)
          {
            goto LABEL_65;
          }
        }

        v68 = *v74;
        (*v74)(v61, v56);
        v68(v60, v56);
      }

LABEL_65:
      sub_23D99F580(&v86, &v85, &v84);
      return 1;
    }

    v77 = v22;
    v29 = a3;
    v30 = a2;
    v31 = v26 / v24 * v24;
    if (a4 < v30 || v30 + v31 <= a4)
    {
      v32 = v30;
      v33 = v78;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v32 = v30;
      v33 = v78;
      if (a4 == v30)
      {
LABEL_24:
        v83 = v6;
        v35 = a4 + v31;
        if (v31 >= 1)
        {
          v36 = -v24;
          v70 = a4;
          v71 = (v11 + 16);
          v73 = (v11 + 8);
          v37 = a4 + v31;
          v38 = v29;
          v39 = v77;
          v82 = a1;
          v75 = -v24;
          do
          {
            v76 = v35;
            v72 = v35;
            v40 = v32;
            v78 = v32 + v36;
            v74 = v32;
            while (1)
            {
              if (v40 <= a1)
              {
                v86 = v40;
                v35 = v72;
                goto LABEL_64;
              }

              v41 = v38;
              v42 = v75;
              v81 = v37;
              v43 = v37 + v75;
              v44 = *v71;
              (*v71)(v39, v37 + v75, v33);
              v44(v15, v78, v33);
              v45 = v39;
              v46 = v83;
              v47 = v80(v39, v15);
              v83 = v46;
              if (v46)
              {
                v69 = *v73;
                (*v73)(v15, v33);
                v69(v45, v33);
                v86 = v74;
                v35 = v76;
                goto LABEL_64;
              }

              v48 = v47;
              v49 = &v41[v42];
              v50 = v15;
              v51 = *v73;
              v52 = v50;
              (*v73)();
              v51(v45, v33);
              if (v48)
              {
                break;
              }

              v38 = &v41[v42];
              if (v41 < v81 || v49 >= v81)
              {
                swift_arrayInitWithTakeFrontToBack();
                v15 = v52;
                v39 = v77;
              }

              else
              {
                v15 = v52;
                v39 = v77;
                if (v41 != v81)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v76 = v43;
              v37 = v43;
              a1 = v82;
              v40 = v74;
              if (v43 <= v70)
              {
                v32 = v74;
                v35 = v76;
                goto LABEL_63;
              }
            }

            v38 = &v41[v42];
            if (v41 < v74 || v49 >= v74)
            {
              v32 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v53 = v70;
              v15 = v52;
              v39 = v77;
            }

            else
            {
              v39 = v77;
              v32 = v78;
              v53 = v70;
              v15 = v52;
              if (v41 != v74)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v81;
            a1 = v82;
            v36 = v75;
            v35 = v76;
          }

          while (v81 > v53);
        }

LABEL_63:
        v86 = v32;
LABEL_64:
        v84 = v35;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v81;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_23D99F580(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_23D9D8954();
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

uint64_t sub_23D99F664(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_23D9D8954();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_23D99F908@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_23D9983D4(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 24), *(v1 + 40), a1);
}

uint64_t sub_23D99F91C()
{
  v26 = *(v0 + 16);
  v27 = *(v0 + 32);
  v1 = type metadata accessor for AXSUITTSLanguageList.LanguageListView();
  v24 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v2 = sub_23D9D8954();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v25 = *(v3 + 64);
  v23 = (v24 + 48) & ~v24;
  v5 = v0 + v23;
  if (*(v0 + v23))
  {
    v6 = *(v5 + 8);
  }

  v7 = v1[13];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[14];
  v10 = *(v3 + 48);
  if (!v10(v5 + v9, 1, v2))
  {
    (*(v3 + 8))(v5 + v9, v2);
  }

  v11 = (v5 + v1[15]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = (v5 + v1[16]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = (v5 + v1[17]);
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410) + 32);
  if (!v10(&v15[v18], 1, v2))
  {
    (*(v3 + 8))(&v15[v18], v2);
  }

  v19 = v1[18];
  v20 = sub_23D9D89C4();
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  (*(v3 + 8))(v0 + ((v23 + v22 + v4) & ~v4), v2);
  return swift_deallocObject();
}

uint64_t sub_23D99FBE4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for AXSUITTSLanguageList.LanguageListView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23D9D8954() - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_23D9989A0(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t sub_23D99FD1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D99FD2C()
{
  v27 = *(v0 + 16);
  v28 = *(v0 + 32);
  v1 = type metadata accessor for AXSUITTSLanguageList();
  v2 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v26 = sub_23D9D89C4();
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v25 = *(v3 + 64);
  v5 = (v0 + ((v2 + 48) & ~v2));
  v6 = *(v5 + 1);

  if (*(v5 + 2))
  {
    v7 = *(v5 + 3);
  }

  if (*(v5 + 4))
  {
    v8 = *(v5 + 5);
  }

  if (*(v5 + 7))
  {
    v9 = *(v5 + 8);
  }

  v10 = v1[17];
  v11 = sub_23D9D8954();
  v23 = *(v11 - 8);
  v12 = *(v23 + 48);
  if (!v12(&v5[v10], 1, v11))
  {
    (*(v23 + 8))(&v5[v10], v11);
  }

  v13 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23D9D9954();
    (*(*(v14 - 8) + 8))(&v5[v13], v14);
  }

  else
  {
    v15 = *&v5[v13];
  }

  v16 = *&v5[v1[19] + 8];

  v17 = *&v5[v1[20]];

  v18 = &v5[v1[21]];
  if (v18[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v19 = *v18;
  }

  v20 = &v5[v1[22]];
  if (!v12(v20, 1, v11))
  {
    (*(v23 + 8))(v20, v11);
  }

  v21 = *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658) + 28)];

  (*(v3 + 8))(v0 + ((((v2 + 48) & ~v2) + v24 + v4) & ~v4), v26);
  return swift_deallocObject();
}

uint64_t sub_23D9A004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for AXSUITTSLanguageList() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_23D9D89C4() - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_23D99BD54(a1, v2 + v10, v13, v5, v6, v7, v8, a2);
}

unint64_t sub_23D9A016C()
{
  result = qword_27E2F6C50;
  if (!qword_27E2F6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6C50);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v22 = *(v0 + 16);
  v23 = *(v0 + 32);
  v1 = type metadata accessor for AXSUITTSLanguageList();
  v21 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80)));
  v3 = *(v2 + 1);

  if (*(v2 + 2))
  {
    v4 = *(v2 + 3);
  }

  if (*(v2 + 4))
  {
    v5 = *(v2 + 5);
  }

  if (*(v2 + 7))
  {
    v6 = *(v2 + 8);
  }

  v7 = v1[17];
  v8 = sub_23D9D8954();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(&v2[v7], 1, v8))
  {
    (*(v9 + 8))(&v2[v7], v8);
  }

  v11 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D9D9954();
    (*(*(v12 - 8) + 8))(&v2[v11], v12);
  }

  else
  {
    v13 = *&v2[v11];
  }

  v14 = *&v2[v1[19] + 8];

  v15 = *&v2[v1[20]];

  v16 = &v2[v1[21]];
  if (v16[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v17 = *v16;
  }

  v18 = &v2[v1[22]];
  if (!v10(v18, 1, v8))
  {
    (*(v9 + 8))(v18, v8);
  }

  v19 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658) + 28)];

  return swift_deallocObject();
}

uint64_t sub_23D9A0460(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v3[2] = v6;
  v3[3] = v7;
  v3[4] = v8;
  v3[5] = v9;
  v10 = *(type metadata accessor for AXSUITTSLanguageList() - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_23D9A057C;

  return sub_23D996278(a1, a2, v2 + v11, v6, v7, v8, v9);
}

uint64_t sub_23D9A057C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23D9A0670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_23D9968D4(a1, v2[6], a2);
}

uint64_t sub_23D9A06BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D9A0704(uint64_t a1)
{
  v1 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9D8954();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  sub_23D9DA444();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D9DA474();
  swift_getWitnessTable();
  sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  swift_getOpaqueTypeMetadata2();
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9DA634();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
  type metadata accessor for AXSUIStreamValueView();
  swift_getWitnessTable();
  type metadata accessor for AXSUIPlatformFormListView();
  return swift_getWitnessTable();
}

uint64_t sub_23D9A0AF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23D9A0B38(void *a1)
{
  v2 = type metadata accessor for AXTipCellContentView(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v7 = (v6 + *(v3 + 28));
  type metadata accessor for AXUIInstructionalCellContentViewModel(0);
  sub_23D9A5688(&qword_27E2F68B0, type metadata accessor for AXUIInstructionalCellContentViewModel);
  v8 = a1;
  *v7 = sub_23D9D95E4();
  v7[1] = v9;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68B8, &qword_23D9E1168));
  return sub_23D9D9AF4();
}

id AXUIInstructionalCellContentViewBridge.init()()
{
  v1 = OBJC_IVAR___AXUIInstructionalCellContentViewBridge__colorScheme;
  *&v0[v1] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXUIInstructionalCellContentViewBridge(0);
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_23D9A0F08(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();
}

uint64_t sub_23D9A0F84(uint64_t a1, void **a2)
{
  sub_23D960024(a1, v7);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D960024(v7, &v6);
  v4 = v3;
  sub_23D9D9394();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_23D9A100C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();
}

uint64_t sub_23D9A1084(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D960024(a1, v5);
  v3 = v1;
  sub_23D9D9394();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_23D9A1100(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D9D9374();
  return sub_23D9A11A4;
}

void sub_23D9A11A4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23D9A120C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9354();
  return swift_endAccess();
}

uint64_t sub_23D9A1284(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D8, &qword_23D9E11C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9364();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D9A1408()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9354();
  return swift_endAccess();
}

uint64_t sub_23D9A147C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D8, &qword_23D9E11C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9364();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_23D9A15B4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D8, &qword_23D9E11C0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilitySettingsUI37AXUIInstructionalCellContentViewModel__tip;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9354();
  swift_endAccess();
  return sub_23D9A1724;
}

void sub_23D9A1724(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_23D9D9364();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_23D9D9364();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_23D9A190C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  return v1;
}

uint64_t sub_23D9A19F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v5;
  return result;
}

uint64_t sub_23D9A1A70(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23D9D9394();
}

uint64_t (*sub_23D9A1BF8())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *(swift_allocObject() + 16) = v1;
  return sub_23D9A5EE8;
}

uint64_t (*sub_23D9A1E80())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *(swift_allocObject() + 16) = v1;
  return sub_23D9A5D98;
}

double sub_23D9A1FF0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23D9A206C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_23D9D9394();
}

id AXUIInstructionalCellContentViewModel.__allocating_init(tipType:title:image:imageIgnoresInvertColors:description:linkTitle:linkCallback:closeCallback:)(uint64_t a1, int a2, int a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v65 = v14;
  v19 = objc_allocWithZone(v14);
  if (a1 == 3)
  {
    sub_23D91B650();
    v60 = sub_23D9D9F04();
    v62 = v35;
    v37 = v36;
    v39 = v38;
    v69 = a6;
    v70 = a7;
    v40 = sub_23D9D9F04();
    v42 = v41;
    v29 = v43;
    v45 = v44 & 1;
    v46 = a4;
    v33 = sub_23D9DA354();
    v73 = v39 & 1;
    v71 = &type metadata for AXVoiceControlDonationTip;
    v72 = sub_23D9A45A0();
LABEL_6:
    v34 = swift_allocObject();
    v69 = v34;
    *(v34 + 16) = v60;
    *(v34 + 24) = v37;
    *(v34 + 32) = v73;
    *(v34 + 40) = v62;
    *(v34 + 48) = v40;
    *(v34 + 56) = v42;
    *(v34 + 64) = v45;
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    sub_23D91B650();
    v60 = sub_23D9D9F04();
    v62 = v47;
    v37 = v48;
    v50 = v49;
    v69 = a6;
    v70 = a7;
    v40 = sub_23D9D9F04();
    v42 = v51;
    v29 = v52;
    v45 = v53 & 1;
    v54 = a4;
    v33 = sub_23D9DA354();
    v73 = v50 & 1;
    v71 = &type metadata for AXLiveRecognitionTip;
    v72 = sub_23D9A44E8();
    goto LABEL_6;
  }

  sub_23D91B650();
  v20 = sub_23D9D9F04();
  v59 = v21;
  v61 = v22;
  v24 = v23;
  v70 = a7;
  v25 = sub_23D9D9F04();
  v27 = v26;
  v29 = v28;
  v31 = v30 & 1;
  v32 = a4;
  v33 = sub_23D9DA354();
  v73 = v24 & 1;
  v71 = &type metadata for AXBrailleTip;
  v72 = sub_23D9A45F4();
  v34 = swift_allocObject();
  v69 = v34;
  *(v34 + 16) = v20;
  *(v34 + 24) = v59;
  *(v34 + 32) = v73;
  *(v34 + 40) = v61;
  *(v34 + 48) = v25;
  *(v34 + 56) = v27;
  *(v34 + 64) = v31;
LABEL_7:
  *(v34 + 72) = v29;
  *(v34 + 80) = v33;
  *(v34 + 88) = a8;
  *(v34 + 96) = a9;
  *(v34 + 104) = a12;
  *(v34 + 112) = a13;
  swift_beginAccess();
  sub_23D960024(&v69, &v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68E8, &unk_23D9E11C8);
  sub_23D9D9344();
  __swift_destroy_boxed_opaque_existential_0(&v69);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v67) = a5 & 1;
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v55 = swift_allocObject();
  *(v55 + 16) = a10;
  *(v55 + 24) = a11;
  v67 = sub_23D9A4540;
  v68 = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4350, qword_23D9DBF90);
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v56 = swift_allocObject();
  *(v56 + 16) = a12;
  *(v56 + 24) = a13;
  v67 = sub_23D9A5F0C;
  v68 = v56;

  sub_23D9D9344();
  swift_endAccess();
  v66.receiver = v19;
  v66.super_class = v65;
  v57 = objc_msgSendSuper2(&v66, sel_init);

  return v57;
}

id AXUIInstructionalCellContentViewModel.init(tipType:title:image:imageIgnoresInvertColors:description:linkTitle:linkCallback:closeCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_23D9A46C0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  return v14;
}

id AXUIInstructionalCellContentViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23D9A27DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23D9A2968@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXUIInstructionalCellContentViewModel(0);
  result = sub_23D9D9334();
  *a1 = result;
  return result;
}

uint64_t sub_23D9A2A3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23D9A5CD8(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9464();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_23D9A2C40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_23D91E0AC(v1, v2, v3);

  return v1;
}

uint64_t sub_23D9A2CA0()
{
  v1 = v0[4];
  sub_23D992AF4(v1, v0[5], v0[6], v0[7]);
  return v1;
}

uint64_t sub_23D9A2CF0()
{
  if (!*(v0 + 80))
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6990, &unk_23D9E1680);
  v2 = *(sub_23D9D92F4() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23D9DC3E0;
  sub_23D91B650();

  sub_23D9D92D4();
  return v5;
}

uint64_t sub_23D9A2E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6980, &qword_23D9E1670);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - v3;
  v5 = sub_23D9D92B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6988, &qword_23D9E1678);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_23D9D92C4();
  v15 = MEMORY[0x277CE1A20];
  MEMORY[0x23EEF2570](v9, v5, MEMORY[0x277CE1A20]);
  (*(v6 + 8))(v9, v5);
  v19 = v5;
  v20 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EEF2590](v14, v10, OpaqueTypeConformance2);
  v19 = v10;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = sub_23D9D9284();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_23D9A30E4@<X0>(uint64_t a1@<X8>)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v5 = sub_23D9D9464();
    v102 = &v67;
    v92 = *(v5 - 8);
    v93 = v5;
    v6 = *(v92 + 64);
    v7 = MEMORY[0x28223BE20](v5);
    v85 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v101 = &v67;
    MEMORY[0x28223BE20](v7);
    v81 = &v67 - v9;
    v79 = sub_23D9D9224();
    v100 = &v67;
    v10 = *(v79 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v79);
    v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = type metadata accessor for AXTipCellContentView(0);
    v99 = &v67;
    v15 = v14 - 8;
    v72 = *(v14 - 8);
    v103 = *(v72 + 64);
    MEMORY[0x28223BE20](v14);
    v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6998, &qword_23D9E1690);
    v98 = &v67;
    v19 = v18;
    v73 = *(v18 - 8);
    v20 = *(v73 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = &v67 - v21;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69A0, &qword_23D9E1698);
    v97 = &v67;
    v89 = *(v87 - 8);
    v23 = *(v89 + 64);
    MEMORY[0x28223BE20](v87);
    v68 = &v67 - v24;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69A8, &qword_23D9E16A0);
    v96 = &v67;
    v83 = *(v86 - 8);
    v25 = *(v83 + 64);
    MEMORY[0x28223BE20](v86);
    v75 = &v67 - v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69B0, &qword_23D9E16A8);
    v95 = &v67;
    v28 = *(v27 - 8);
    v78 = v27 - 8;
    v29 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v27 - 8);
    v74 = &v67 - v30;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69B8, &qword_23D9E16B0);
    v94 = &v67;
    v31 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v80);
    v77 = &v67 - v32;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69C0, &qword_23D9E16B8);
    v91 = &v67;
    v33 = *(*(v90 - 8) + 64);
    v34 = MEMORY[0x28223BE20](v90);
    v84 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v88 = &v67;
    MEMORY[0x28223BE20](v34);
    v76 = &v67 - v36;
    v37 = v1 + *(v15 + 28);
    v82 = a1;
    v38 = *(v37 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D9D9384();

    v39 = v17;
    v70 = v17;
    sub_23D9A54E8(v1, v17);
    v72 = *(v72 + 80);
    v40 = (v72 + 16) & ~v72;
    v71 = v40;
    v41 = swift_allocObject();
    sub_23D9A5550(v39, v41 + v40);
    sub_23D9D9254();
    sub_23D9D9264();
    v42 = sub_23D9A5624();
    v43 = sub_23D9A5688(&qword_27E2F69D0, MEMORY[0x277CE19A0]);
    v44 = v19;
    v45 = v79;
    v69 = v1;
    sub_23D9D9F34();
    (*(v10 + 8))(v13, v45);
    (*(v73 + 8))(v22, v44);
    v46 = v81;
    sub_23D9A2A3C(v81);
    v48 = v92;
    v47 = v93;
    v49 = v85;
    (*(v92 + 104))(v85, *MEMORY[0x277CDF3C8], v93);
    v50 = sub_23D9D9454();
    v51 = *(v48 + 8);
    v51(v49, v47);
    v51(v46, v47);
    v52 = objc_opt_self();
    v53 = &selRef_secondarySystemBackgroundColor;
    if ((v50 & 1) == 0)
    {
      v53 = &selRef_systemBackgroundColor;
    }

    v54 = [v52 *v53];
    v104 = sub_23D9DA244();
    v105 = v44;
    v106 = v45;
    v107 = v42;
    v108 = v43;
    swift_getOpaqueTypeConformance2();
    v55 = v75;
    v56 = v87;
    v57 = v68;
    sub_23D9D9F44();

    (*(v89 + 8))(v57, v56);
    v58 = v74;
    (*(v83 + 32))(v74, v55, v86);
    v59 = (v58 + *(v78 + 44));
    *v59 = sub_23D9A3C40;
    v59[1] = 0;
    v59[2] = 0;
    v59[3] = 0;
    v60 = v70;
    sub_23D9A54E8(v69, v70);
    v61 = v71;
    v62 = swift_allocObject();
    sub_23D9A5550(v60, v62 + v61);
    v63 = v77;
    v64 = &v77[*(v80 + 36)];
    v65 = &v64[*(sub_23D9D9584() + 20)];
    sub_23D9DA9C4();
    *v64 = &unk_23D9E16C8;
    *(v64 + 1) = v62;
    sub_23D9A58C0(v58, v63);
    sub_23D9A5930();
    v66 = v76;
    sub_23D9DA114();
    sub_23D91F344(v63, &qword_27E2F69B8, &qword_23D9E16B0);
    sub_23D9A5B5C(v66, v84);
    sub_23D9A5BCC();
    sub_23D9D9B34();
    return sub_23D91F344(v66, &qword_27E2F69C0, &qword_23D9E16B8);
  }
}

uint64_t sub_23D9A3B40(uint64_t a1, uint64_t a2)
{
  if (sub_23D9D92E4() == 0x6E696C2D6E65706FLL && v3 == 0xE90000000000006BLL)
  {
  }

  else
  {
    v4 = sub_23D9DAFC4();

    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  v6 = *(a2 + *(type metadata accessor for AXTipCellContentView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  v8(v7);
}

void sub_23D9A3C40()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_23D9DA8A4();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_23D9A3CDC(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_23D9D9314();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69F0, &qword_23D9E16D0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69F8, &qword_23D9E16D8);
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A00, &qword_23D9E16E0);
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = sub_23D9DA9B4();
  v1[22] = sub_23D9DA9A4();
  v13 = sub_23D9DA994();
  v1[23] = v13;
  v1[24] = v12;

  return MEMORY[0x2822009F8](sub_23D9A3EE8, v13, v12);
}

uint64_t sub_23D9A3EE8()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 72);
  *(v0 + 200) = *(v5 + *(type metadata accessor for AXTipCellContentView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_23D9D9234();
  sub_23D9DAA04();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = *MEMORY[0x277CE1A50];
  *(v0 + 224) = *MEMORY[0x277CE1A10];
  *(v0 + 228) = v7;
  v8 = *(v0 + 168);
  v9 = sub_23D9DA9A4();
  *(v0 + 208) = v9;
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_23D9A409C;
  v12 = *(v0 + 160);
  v13 = *(v0 + 144);
  v14 = *(v0 + 112);
  v15 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v14, v9, v15, v13);
}

uint64_t sub_23D9A409C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v7 = *v0;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_23D9A41E0, v5, v4);
}

uint64_t sub_23D9A41E0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 136);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v11 = *(v0 + 224);
    v10 = *(v0 + 228);
    v12 = *(v0 + 96);
    (*(v3 + 32))(*(v0 + 104), v1, v2);
    v13 = sub_23D9D92A4();
    (*(*(v13 - 8) + 104))(v12, v11, v13);
    (*(v3 + 104))(v12, v10, v2);
    v14 = sub_23D9D9304();
    v15 = *(v3 + 8);
    v15(v12, v2);
    if (v14)
    {
      v16 = *(v0 + 200);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D9D9384();

      v18 = *(v0 + 64);
      (*(v0 + 56))(v17);
    }

    v15(*(v0 + 104), *(v0 + 80));
    v19 = *(v0 + 168);
    v20 = sub_23D9DA9A4();
    *(v0 + 208) = v20;
    v21 = *(MEMORY[0x277D85798] + 4);
    v22 = swift_task_alloc();
    *(v0 + 216) = v22;
    *v22 = v0;
    v22[1] = sub_23D9A409C;
    v23 = *(v0 + 160);
    v24 = *(v0 + 144);
    v25 = *(v0 + 112);
    v26 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v25, v20, v26, v24);
  }
}

unint64_t sub_23D9A44E8()
{
  result = qword_27E2F68E0;
  if (!qword_27E2F68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F68E0);
  }

  return result;
}

uint64_t sub_23D9A4540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23D9A4568()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_23D9A45A0()
{
  result = qword_27E2F6908;
  if (!qword_27E2F6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6908);
  }

  return result;
}

unint64_t sub_23D9A45F4()
{
  result = qword_27E2F6910;
  if (!qword_27E2F6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6910);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  sub_23D9274BC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  if (*(v0 + 72))
  {
    sub_23D9274BC(*(v0 + 48), *(v0 + 56), *(v0 + 64));
    v2 = *(v0 + 72);
  }

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  return swift_deallocObject();
}

id sub_23D9A46C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a1 == 3)
  {
    sub_23D91B650();
    v32 = sub_23D9D9F04();
    v34 = v33;
    v36 = v35;
    v66 = v37;
    v74 = a7;
    v38 = sub_23D9D9F04();
    v40 = v39;
    v42 = v41;
    v44 = v43 & 1;
    v45 = a4;
    v46 = sub_23D9DA354();
    v77 = v36 & 1;
    v75 = &type metadata for AXVoiceControlDonationTip;
    v76 = sub_23D9A45A0();
    v31 = swift_allocObject();
    v73 = v31;
    *(v31 + 16) = v32;
    *(v31 + 24) = v34;
    v47 = a12;
    *(v31 + 32) = v77;
    *(v31 + 40) = v66;
    *(v31 + 48) = v38;
    *(v31 + 56) = v40;
    *(v31 + 64) = v44;
    *(v31 + 72) = v42;
    *(v31 + 80) = v46;
    *(v31 + 88) = a8;
    *(v31 + 96) = a9;
  }

  else
  {
    if (a1 == 1)
    {
      sub_23D91B650();
      v16 = sub_23D9D9F04();
      v18 = v17;
      v20 = v19;
      v65 = v21;
      v74 = a7;
      v22 = sub_23D9D9F04();
      v24 = v23;
      v26 = v25;
      v28 = v27 & 1;
      v29 = a4;
      v30 = sub_23D9DA354();
      v77 = v20 & 1;
      v75 = &type metadata for AXBrailleTip;
      v76 = sub_23D9A45F4();
      v31 = swift_allocObject();
      v73 = v31;
      *(v31 + 16) = v16;
      *(v31 + 24) = v18;
      *(v31 + 32) = v77;
      *(v31 + 40) = v65;
      *(v31 + 48) = v22;
      *(v31 + 56) = v24;
      *(v31 + 64) = v28;
      *(v31 + 72) = v26;
    }

    else
    {
      sub_23D91B650();
      v48 = sub_23D9D9F04();
      v50 = v49;
      v52 = v51;
      v67 = v53;
      v74 = a7;
      v54 = sub_23D9D9F04();
      v56 = v55;
      v58 = v57;
      v60 = v59 & 1;
      v61 = a4;
      v30 = sub_23D9DA354();
      v77 = v52 & 1;
      v75 = &type metadata for AXLiveRecognitionTip;
      v76 = sub_23D9A44E8();
      v31 = swift_allocObject();
      v73 = v31;
      *(v31 + 16) = v48;
      *(v31 + 24) = v50;
      *(v31 + 32) = v77;
      *(v31 + 40) = v67;
      *(v31 + 48) = v54;
      *(v31 + 56) = v56;
      *(v31 + 64) = v60;
      *(v31 + 72) = v58;
    }

    *(v31 + 80) = v30;
    *(v31 + 88) = a8;
    *(v31 + 96) = a9;
    v47 = a12;
  }

  *(v31 + 104) = v47;
  *(v31 + 112) = a13;
  swift_beginAccess();
  sub_23D960024(&v73, &v71);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68E8, &unk_23D9E11C8);
  sub_23D9D9344();
  __swift_destroy_boxed_opaque_existential_0(&v73);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v71) = a5 & 1;
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v62 = swift_allocObject();
  *(v62 + 16) = a10;
  *(v62 + 24) = a11;
  v71 = sub_23D9A5F0C;
  v72 = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4350, qword_23D9DBF90);
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v63 = swift_allocObject();
  *(v63 + 16) = v47;
  *(v63 + 24) = a13;
  v71 = sub_23D9A5F0C;
  v72 = v63;

  sub_23D9D9344();
  swift_endAccess();
  v70.receiver = v13;
  v70.super_class = type metadata accessor for AXUIInstructionalCellContentViewModel(0);
  return objc_msgSendSuper2(&v70, sel_init);
}

void sub_23D9A4B4C()
{
  sub_23D9A52D0(319, &qword_27E2F6928, MEMORY[0x277CDF460]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23D9A4C4C()
{
  sub_23D953080(319, &qword_27E2F6940, &qword_27E2F68E8, &unk_23D9E11C8);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23D9A4EFC();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23D953080(319, &qword_27E2F6948, &qword_27E2F4350, qword_23D9DBF90);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23D9A4EFC()
{
  if (!qword_27E2F54B0)
  {
    v0 = sub_23D9D93A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F54B0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23D9A4FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_23D9A500C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D9A5088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D9A5168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D9A5230()
{
  sub_23D9A52D0(319, &qword_27E2F48D8, MEMORY[0x277CDF470]);
  if (v0 <= 0x3F)
  {
    sub_23D9A5330();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D9A52D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_23D9D9464();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_23D9A5330()
{
  if (!qword_27E2F6960)
  {
    type metadata accessor for AXUIInstructionalCellContentViewModel(255);
    sub_23D9A5688(&qword_27E2F68B0, type metadata accessor for AXUIInstructionalCellContentViewModel);
    v0 = sub_23D9D95F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F6960);
    }
  }
}

unint64_t sub_23D9A53E4()
{
  result = qword_27E2F6968;
  if (!qword_27E2F6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6968);
  }

  return result;
}

unint64_t sub_23D9A543C()
{
  result = qword_27E2F6970;
  if (!qword_27E2F6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6970);
  }

  return result;
}

unint64_t sub_23D9A5494()
{
  result = qword_27E2F6978;
  if (!qword_27E2F6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6978);
  }

  return result;
}

uint64_t sub_23D9A54E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXTipCellContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9A5550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXTipCellContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9A55B4(uint64_t a1)
{
  v3 = *(type metadata accessor for AXTipCellContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D9A3B40(a1, v4);
}

unint64_t sub_23D9A5624()
{
  result = qword_27E2F69C8;
  if (!qword_27E2F69C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6998, &qword_23D9E1690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F69C8);
  }

  return result;
}

uint64_t sub_23D9A5688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_67Tm()
{
  v1 = type metadata accessor for AXTipCellContentView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D9D9464();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  return swift_deallocObject();
}

uint64_t sub_23D9A57F4()
{
  v2 = *(type metadata accessor for AXTipCellContentView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D928310;

  return sub_23D9A3CDC(v0 + v3);
}

uint64_t sub_23D9A58C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69B0, &qword_23D9E16A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9A5930()
{
  result = qword_27E2F69D8;
  if (!qword_27E2F69D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F69B8, &qword_23D9E16B0);
    sub_23D9A59EC();
    sub_23D9A5688(&qword_27E2F4228, MEMORY[0x277CDD8B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F69D8);
  }

  return result;
}

unint64_t sub_23D9A59EC()
{
  result = qword_27E2F69E0;
  if (!qword_27E2F69E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F69B0, &qword_23D9E16A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F69A0, &qword_23D9E1698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6998, &qword_23D9E1690);
    sub_23D9D9224();
    sub_23D9A5624();
    sub_23D9A5688(&qword_27E2F69D0, MEMORY[0x277CE19A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F69E0);
  }

  return result;
}

uint64_t sub_23D9A5B5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69C0, &qword_23D9E16B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9A5BCC()
{
  result = qword_27E2F69E8;
  if (!qword_27E2F69E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F69C0, &qword_23D9E16B8);
    sub_23D9A5930();
    sub_23D9A5688(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F69E8);
  }

  return result;
}

uint64_t sub_23D9A5CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9A5D98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23D9A5DC8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D9A5E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.axNavigationDestination<A, B>(item:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a7;
  v27 = a6;
  v28 = a1;
  v30 = a9;
  v31 = a4;
  v29 = a2;
  sub_23D9DAD74();
  v14 = sub_23D9DA604();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v33 = a5;
  v34 = a6;
  v35 = a8;
  v36 = a10;
  v19 = a8;
  v20 = type metadata accessor for AXValueNavigationDestination();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v26 - v23);
  (*(v15 + 16))(v18, v28, v14);

  sub_23D9A8078(v18, v29, a3, 0, 0, a5, v27, v19, v24, a10);
  MEMORY[0x23EEF34C0](v24, v31, v20, v32);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_23D9A6118(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_23D9647A8(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_23D9647A8((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

id sub_23D9A62C0()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *v0;

    sub_23D9DACD4();
    v8 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D98504C(v9[0], 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }
}

void *sub_23D9A642C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - v19;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v34 = 0;
  sub_23D9DA3A4();
  v21 = v31;
  *(a9 + 80) = v30;
  *(a9 + 88) = v21;
  v30 = a7;
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v22 = *(type metadata accessor for AXSUISpecifierLink() + 68);
  v23 = sub_23D9D88A4();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_23D9A86D4(v20);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v24 = v27;
  *(a9 + 32) = a3;
  *(a9 + 40) = v24;
  result = swift_allocObject();
  result[2] = a7;
  result[3] = a8;
  result[4] = a10;
  result[5] = a11;
  v26 = v29;
  result[6] = v28;
  result[7] = v26;
  *(a9 + 48) = sub_23D9AE5EC;
  *(a9 + 56) = result;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  return result;
}

uint64_t sub_23D9A65CC()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9A6628()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  return v2;
}

void sub_23D9A6684(void *a1)
{
  v2 = v1;
  v4 = sub_23D9A62C0();
  swift_getKeyPath();
  v23 = v4;
  sub_23D9AE4C0(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v5 = *&v4[qword_27E2F62B0];

  v6 = a1[3];
  v16 = a1[2];
  v18 = v16;
  v19 = v6;
  v7 = a1[4];
  v8 = a1[5];
  v20 = v7;
  v21 = v8;
  v22 = v2;
  v9 = sub_23D92BBB0(sub_23D9AE508, v17, v5);

  if (v9)
  {
    sub_23D9A65CC();
    v10 = sub_23D9A62C0();
    v11 = sub_23D9A62C0();
    swift_getKeyPath();
    v23 = v11;
    sub_23D9D8A14();

    v12 = *&v11[qword_27E2F62B0];

    MEMORY[0x28223BE20](v13);
    v15[2] = v16;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v8;
    v15[6] = v2;
    v14 = sub_23D9A6118(sub_23D9AE558, v15, v12);
    sub_23D980784(v14);
  }
}

uint64_t AXSUISpecifierLink.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v104 = v3;
  v98 = *(v3 - 8);
  v4 = *(v98 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v87 = &v73 - v6;
  v107 = *(a1 - 1);
  v7 = *(v107 + 64);
  MEMORY[0x28223BE20](v5);
  v76 = v8;
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v102 = a1[2];
  *&v101 = a1[4];
  v117 = v102;
  v118 = MEMORY[0x277D837D0];
  v119 = v101;
  v120 = MEMORY[0x277D837E0];
  sub_23D9DA474();
  v10 = sub_23D9D96C4();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_23D91EAB8();
  v115 = WitnessTable;
  v116 = v12;
  v99 = MEMORY[0x277CDFAD0];
  v89 = v10;
  v88 = swift_getWitnessTable();
  v13 = sub_23D9DA444();
  v83 = v13;
  v91 = *(v13 - 8);
  v14 = *(v91 + 64);
  MEMORY[0x28223BE20](v13);
  v78 = &v73 - v15;
  v16 = swift_getWitnessTable();
  v82 = v16;
  v81 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  v117 = v13;
  v118 = v3;
  v119 = v16;
  v120 = v81;
  v90 = MEMORY[0x277CDE670];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v103 = &v73 - v18;
  v85 = sub_23D9D96C4();
  v97 = *(v85 - 8);
  v19 = *(v97 + 64);
  MEMORY[0x28223BE20](v85);
  v105 = &v73 - v20;
  v21 = a1;
  v22 = a1[3];
  v23 = a1[5];
  v117 = MEMORY[0x277D839B0];
  v118 = v22;
  v80 = v22;
  v119 = MEMORY[0x277D839C0];
  v120 = v23;
  v24 = v23;
  v79 = v23;
  v94 = type metadata accessor for AXValueNavigationDestination();
  v95 = sub_23D9D96C4();
  v96 = *(v95 - 8);
  v25 = *(v96 + 64);
  v26 = MEMORY[0x28223BE20](v95);
  v84 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v93 = &v73 - v28;
  v29 = v107;
  v77 = *(v107 + 16);
  v30 = v9;
  v73 = v9;
  v31 = v9;
  v32 = v106;
  v74 = a1;
  v77(v31, v106, a1);
  v33 = v29;
  v34 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v35 = swift_allocObject();
  *&v36 = v102;
  *(&v36 + 1) = v22;
  v102 = v36;
  *&v37 = v101;
  *(&v37 + 1) = v24;
  v101 = v37;
  *(v35 + 16) = v36;
  *(v35 + 32) = v37;
  v38 = *(v33 + 32);
  v107 = v33 + 32;
  v75 = v38;
  v38(v35 + v34, v30, v21);
  v108 = v102;
  v109 = v101;
  v110 = v32;
  v39 = v78;
  sub_23D9DA404();
  v40 = v87;
  sub_23D9D9B54();
  v41 = v83;
  v42 = v104;
  v43 = v82;
  v44 = v81;
  sub_23D9D9FA4();
  (*(v98 + 8))(v40, v42);
  (*(v91 + 8))(v39, v41);
  v45 = v73;
  v46 = v106;
  v47 = v74;
  v77(v73, v106, v74);
  v48 = swift_allocObject();
  v49 = v101;
  *(v48 + 16) = v102;
  *(v48 + 32) = v49;
  v75(v48 + v34, v45, v47);
  v117 = v41;
  v118 = v104;
  v119 = v43;
  v120 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = OpaqueTypeMetadata2;
  v52 = v103;
  sub_23D9DA1D4();

  (*(v92 + 8))(v52, v51);
  v53 = sub_23D9A6628();
  v55 = v54;
  LOBYTE(v51) = v56;
  v57 = v46;
  v58 = *(v46 + 48);
  v59 = *(v57 + 56);
  v107 = *(v57 + 64);
  LOBYTE(v16) = *(v57 + 72);
  v113 = OpaqueTypeConformance2;
  v114 = MEMORY[0x277CE0788];
  v60 = v85;
  v61 = swift_getWitnessTable();
  v62 = v51 & 1;
  v63 = v84;
  v64 = v60;
  v65 = v60;
  v66 = v105;
  sub_23D9A7888(v53, v55, v62, v58, v59, v107, v16, v64, v84, v80, v61, v79);

  (*(v97 + 8))(v66, v65);
  v67 = swift_getWitnessTable();
  v111 = v61;
  v112 = v67;
  v68 = v95;
  v69 = swift_getWitnessTable();
  v70 = v93;
  sub_23D91F510(v63, v68, v69);
  v71 = *(v96 + 8);
  v71(v63, v68);
  sub_23D91F510(v70, v68, v69);
  return (v71)(v70, v68);
}