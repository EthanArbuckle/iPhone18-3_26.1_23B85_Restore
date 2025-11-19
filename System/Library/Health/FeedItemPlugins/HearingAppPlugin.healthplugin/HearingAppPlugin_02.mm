uint64_t sub_29D60E690()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_29D660724();
  sub_29D65FFA4();
  return sub_29D660744();
}

uint64_t sub_29D60E6D8()
{
  v0 = sub_29D660024();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (!v1)
  {
    return 0;
  }

  v2 = sub_29D65FF64();

  return v2;
}

uint64_t (*sub_29D60E75C(uint64_t *a1))(uint64_t a1)
{
  v2 = sub_29D660024();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = sub_29D65FF64();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  return sub_29D60E7F4;
}

id sub_29D60E7FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v10 = v2[4];
  a2[3] = a1;
  a2[4] = sub_29D60EC20();
  v8 = swift_allocObject();
  *a2 = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v6;
  v8[6] = v10;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  return v10;
}

void sub_29D60E89C(uint64_t a1, void *a2)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 32);
  type metadata accessor for AudiogramPDFAsyncConfigurationDataSource();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 40) = 0x3FF8000000000000;
  *(v5 + 48) = 0;
  type metadata accessor for AudiogramPDFProvider();
  v6 = swift_allocObject();
  v6[2] = v4;
  v7 = sub_29D65EAA4();
  v8 = v4;
  v9 = sub_29D65EA94();
  v10 = MEMORY[0x29EDC24D0];
  v6[6] = v7;
  v6[7] = v10;
  v6[3] = v9;
  *(v5 + 24) = v6;
  *(v5 + 32) = v8;
  sub_29D60F004(&qword_2A17AC950, type metadata accessor for AudiogramPDFAsyncConfigurationDataSource);
  v11 = objc_allocWithZone(sub_29D65EF34());

  v12 = sub_29D65EF24();
  v13 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v13 setModalPresentationStyle_];
  [a2 presentViewController:v13 animated:1 completion:0];
}

uint64_t sub_29D60EAB0(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_29D60EC78(a2);
}

uint64_t sub_29D60EAF0@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29D65E974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_29D60EB70()
{
  result = qword_2A17AC938;
  if (!qword_2A17AC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC938);
  }

  return result;
}

unint64_t sub_29D60EBCC()
{
  result = qword_2A17AC940;
  if (!qword_2A17AC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC940);
  }

  return result;
}

unint64_t sub_29D60EC20()
{
  result = qword_2A17AC948;
  if (!qword_2A17AC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC948);
  }

  return result;
}

uint64_t sub_29D60EC78(void *a1)
{
  v2 = v1;
  v4 = sub_29D65FCA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65FCC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605BAC();
  v16 = sub_29D6602B4();
  v17 = *v1;
  v27 = v1[1];
  v28 = v17;
  v18 = *(v1 + 4);
  v19 = swift_allocObject();
  v20 = v2[1];
  *(v19 + 16) = *v2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v2 + 4);
  *(v19 + 56) = a1;
  aBlock[4] = sub_29D60EF84;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A2432560;
  v21 = _Block_copy(aBlock);
  sub_29D60EFA8(&v28, v25);
  sub_29D60EFA8(&v27, v25);
  v22 = v18;
  v23 = a1;
  sub_29D65FCB4();
  v25[0] = MEMORY[0x29EDCA190];
  sub_29D60F004(&qword_2A17AC0F0, MEMORY[0x29EDCA248]);
  sub_29D5DF124();
  sub_29D60F004(&qword_2A17AC100, sub_29D5DF124);
  sub_29D660484();
  MEMORY[0x29ED62660](0, v15, v9, v21);
  _Block_release(v21);

  (*(v5 + 8))(v9, v4);
  (*(v11 + 8))(v15, v10);
}

uint64_t sub_29D60EF90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D60F004(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_29D60F04C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D60F060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D60F0A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for HearingTestPromptTileActionHandler()
{
  result = qword_2A17AC958;
  if (!qword_2A17AC958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D60F190()
{
  v1 = *v0;
  v2 = sub_29D65EEC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v8 = sub_29D65F314();
  sub_29D5DE6EC(v8, qword_2A1A20C00);
  v9 = sub_29D65F2F4();
  v10 = sub_29D6601E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    v13 = sub_29D6607A4();
    v15 = sub_29D64A1D0(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29D5D7000, v9, v10, "[%{public}s] Presenting Hearing Test.", v11, 0xCu);
    sub_29D5DF1C4(v12);
    MEMORY[0x29ED63350](v12, -1, -1);
    MEMORY[0x29ED63350](v11, -1, -1);
  }

  sub_29D65DD04();
  sub_29D65ED14();
  sub_29D65EEA4();
  v16 = *(v3 + 8);
  v16(v7, v2);
  v17 = sub_29D65E7D4();

  sub_29D65DD34();
  v18 = sub_29D65DD24();
  type metadata accessor for HearingTestArticleProvider();
  swift_allocObject();
  v19 = sub_29D65DCF4();

  sub_29D65ED14();
  v20 = sub_29D65EEB4();
  v16(v7, v2);
  [v20 presentViewController:v19 animated:1 completion:0];
}

uint64_t sub_29D60F480(uint64_t a1)
{
  v3 = sub_29D65EEC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v8, a1, v3);
  v11 = sub_29D65ED24();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_29D60F5FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HearingTestPromptTileActionHandler();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D60F644(uint64_t a1)
{
  sub_29D6123E8(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v2 = sub_29D65DFE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D663690;
  v6 = (v43 + v5);
  sub_29D660554();

  v7 = sub_29D660674();
  MEMORY[0x29ED62350](v7);

  MEMORY[0x29ED62350](0x5245444145485FLL, 0xE700000000000000);
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = objc_opt_self();
  v8 = [v41 bundleForClass_];
  v9 = sub_29D65DA74();
  v11 = v10;

  *v6 = v9;
  v6[1] = v11;
  v6[2] = 0;
  v12 = *(v3 + 104);
  v12(v6, *MEMORY[0x29EDC15D0], v2);
  v13 = v6 + v4;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *v13 = sub_29D612524;
  *(v13 + 1) = v14;
  v13[16] = 1;
  v15 = *MEMORY[0x29EDC15A8];
  v12((v6 + v4), v15, v2);
  v16 = v6 + 2 * v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *v16 = sub_29D612540;
  *(v16 + 1) = v17;
  v16[16] = 1;
  v12(v16, v15, v2);
  v18 = v6 + 3 * v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *v18 = sub_29D61255C;
  *(v18 + 1) = v19;
  v18[16] = 1;
  v12(v18, v15, v2);
  v20 = v6 + 4 * v4;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *v20 = sub_29D612580;
  *(v20 + 1) = v21;
  v20[16] = 1;
  v12(v20, v15, v2);
  v22 = v6 + 5 * v4;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *v22 = sub_29D6125A4;
  *(v22 + 1) = v23;
  v22[16] = 1;
  v12(v22, v15, v2);
  v24 = v6 + 6 * v4;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *v24 = sub_29D6125C8;
  *(v24 + 1) = v25;
  v24[16] = 1;
  v12(v24, v15, v2);
  v26 = v6 + 7 * v4;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *v26 = sub_29D6125E4;
  *(v26 + 1) = v27;
  v26[16] = 1;
  v12(v26, v15, v2);
  v28 = &v6[v4];
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *v28 = sub_29D612608;
  v28[1] = v29;
  *(v28 + 16) = 1;
  v12(v28, v15, v2);
  v30 = v6 + 9 * v4;
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *v30 = sub_29D61262C;
  *(v30 + 1) = v31;
  v30[16] = 1;
  v12(v30, v15, v2);
  v32 = v6 + 10 * v4;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *v32 = sub_29D612650;
  *(v32 + 1) = v33;
  v32[16] = 1;
  v12(v32, v15, v2);
  v34 = (v6 + 11 * v4);
  sub_29D660554();

  v35 = sub_29D660674();
  MEMORY[0x29ED62350](v35);

  MEMORY[0x29ED62350](0x435F54524148435FLL, 0xEE004E4F49545041);
  v36 = [v41 bundleForClass_];
  v37 = sub_29D65DA74();
  v39 = v38;

  *v34 = v37;
  v34[1] = v39;
  v12(v34, *MEMORY[0x29EDC1620], v2);
  return v43;
}

uint64_t sub_29D60FCDC(uint64_t a1)
{
  sub_29D6123E8(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v2 = sub_29D65DFE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D663690;
  v6 = (v43 + v5);
  sub_29D660554();

  v7 = sub_29D660674();
  MEMORY[0x29ED62350](v7);

  MEMORY[0x29ED62350](0x5245444145485FLL, 0xE700000000000000);
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = objc_opt_self();
  v8 = [v41 bundleForClass_];
  v9 = sub_29D65DA74();
  v11 = v10;

  *v6 = v9;
  v6[1] = v11;
  v6[2] = 0;
  v12 = *(v3 + 104);
  v12(v6, *MEMORY[0x29EDC15D0], v2);
  v13 = v6 + v4;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *v13 = sub_29D611778;
  *(v13 + 1) = v14;
  v13[16] = 1;
  v15 = *MEMORY[0x29EDC15A8];
  v12((v6 + v4), v15, v2);
  v16 = v6 + 2 * v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *v16 = sub_29D611794;
  *(v16 + 1) = v17;
  v16[16] = 1;
  v12(v16, v15, v2);
  v18 = v6 + 3 * v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *v18 = sub_29D6117B0;
  *(v18 + 1) = v19;
  v18[16] = 1;
  v12(v18, v15, v2);
  v20 = v6 + 4 * v4;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *v20 = sub_29D6117D4;
  *(v20 + 1) = v21;
  v20[16] = 1;
  v12(v20, v15, v2);
  v22 = v6 + 5 * v4;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *v22 = sub_29D6117F8;
  *(v22 + 1) = v23;
  v22[16] = 1;
  v12(v22, v15, v2);
  v24 = v6 + 6 * v4;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *v24 = sub_29D61181C;
  *(v24 + 1) = v25;
  v24[16] = 1;
  v12(v24, v15, v2);
  v26 = v6 + 7 * v4;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *v26 = sub_29D611838;
  *(v26 + 1) = v27;
  v26[16] = 1;
  v12(v26, v15, v2);
  v28 = &v6[v4];
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *v28 = sub_29D61185C;
  v28[1] = v29;
  *(v28 + 16) = 1;
  v12(v28, v15, v2);
  v30 = v6 + 9 * v4;
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *v30 = sub_29D611880;
  *(v30 + 1) = v31;
  v30[16] = 1;
  v12(v30, v15, v2);
  v32 = v6 + 10 * v4;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *v32 = sub_29D6118A4;
  *(v32 + 1) = v33;
  v32[16] = 1;
  v12(v32, v15, v2);
  v34 = (v6 + 11 * v4);
  sub_29D660554();

  v35 = sub_29D660674();
  MEMORY[0x29ED62350](v35);

  MEMORY[0x29ED62350](0x435F54524148435FLL, 0xEE004E4F49545041);
  v36 = [v41 bundleForClass_];
  v37 = sub_29D65DA74();
  v39 = v38;

  *v34 = v37;
  v34[1] = v39;
  v12(v34, *MEMORY[0x29EDC1620], v2);
  return v43;
}

uint64_t sub_29D610374()
{
  sub_29D6123E8(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v128 = &v117 - v3;
  sub_29D6123E8(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v127 = v4;
  v5 = sub_29D65DFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  v9 = (v8 + 32) & ~v8;
  v125 = v9;
  v126 = v8;
  v123 = 8 * v7;
  v10 = v7;
  v131 = v7;
  v11 = swift_allocObject();
  v124 = v11;
  *(v11 + 16) = xmmword_29D663270;
  v12 = v11 + v9;
  *v12 = sub_29D611688();
  *(v12 + 8) = 0;
  v13 = *MEMORY[0x29EDC1608];
  v14 = *(v6 + 104);
  v136 = v12;
  v137 = v14;
  v138 = v5;
  (v14)(v12, v13, v5);
  v139 = v6 + 104;
  v15 = (v12 + v10);
  v135 = "HAEN_SETTINGS_LEARN_MORE_TEXT";
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  v19 = sub_29D65DA74();
  v21 = v20;

  *v15 = v19;
  v15[1] = v21;
  v22 = v5;
  v23 = v137;
  (v137)(v12 + v10, *MEMORY[0x29EDC1610], v22);
  v24 = v131;
  v25 = 2 * v131;
  v26 = v136 + 2 * v131;
  v27 = v17;
  v133 = v17;
  v28 = [v17 bundleForClass_];
  v132 = 0xD000000000000013;
  v29 = sub_29D65DA74();
  v31 = v30;

  *v26 = v29;
  *(v26 + 8) = v31;
  *(v26 + 16) = 0;
  v130 = *MEMORY[0x29EDC1630];
  v23(v26);
  v120 = v25;
  v122 = 3 * v24;
  v32 = v136;
  v33 = (v136 + 3 * v24);
  v34 = [v27 bundleForClass_];
  v35 = sub_29D65DA74();
  v37 = v36;

  *v33 = v35;
  v33[1] = v37;
  v33[2] = 0;
  LODWORD(v129) = *MEMORY[0x29EDC15D0];
  v38 = v137;
  v137(v33);
  v39 = v24;
  v121 = 4 * v24;
  v40 = v32 + 4 * v24;
  v41 = v133;
  v42 = ObjCClassFromMetadata;
  v134 = ObjCClassFromMetadata;
  v43 = [v133 bundleForClass_];
  v44 = sub_29D65DA74();
  v46 = v45;

  *v40 = v44;
  *(v40 + 8) = v46;
  *(v40 + 16) = 0;
  v47 = v138;
  (v38)(v40, v130, v138);
  v48 = v136;
  v49 = (v136 + v121 + v39);
  v50 = [v41 bundleForClass_];
  v51 = sub_29D65DA74();
  v53 = v52;

  *v49 = v51;
  v49[1] = v53;
  v49[2] = 0;
  v54 = v137;
  (v137)(v49, v129, v47);
  v55 = v131;
  v56 = v48 + 6 * v131;
  v57 = [v133 bundleForClass_];
  v58 = sub_29D65DA74();
  v60 = v59;

  *v56 = v58;
  *(v56 + 8) = v60;
  *(v56 + 16) = 0;
  (v54)(v56, v130, v138);
  v61 = (v136 + v123 - v55);
  sub_29D60E298(0, v62);
  v123 = v63;
  v64 = (v61 + *(v63 + 80));
  v65 = v133;
  v66 = v134;
  v67 = [v133 bundleForClass_];
  v68 = sub_29D65DA74();
  v70 = v69;

  *v61 = v68;
  v61[1] = v70;
  v71 = [v65 bundleForClass_];
  v136 = 0xD00000000000001ELL;
  v72 = sub_29D65DA74();
  v74 = v73;

  v61[2] = v72;
  v61[3] = v74;
  v61[4] = 0;
  v61[5] = 0;
  *v64 = sub_29D610F50;
  v64[1] = 0;
  v75 = *MEMORY[0x29EDC15B8];
  v76 = sub_29D65DFD4();
  v77 = *(v76 - 8);
  v78 = *(v77 + 104);
  v121 = v76;
  v119 = v78;
  v118 = v77 + 104;
  (v78)(v64, v75);
  HIDWORD(v117) = *MEMORY[0x29EDC15E8];
  v79 = v138;
  v80 = v137;
  v137(v61);
  v81 = sub_29D60FCDC(4);
  v140 = v124;
  sub_29D65A3F0(v81);
  v124 = v140;
  v82 = v125;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_29D661ED0;
  v127 = v83;
  v84 = (v83 + v82);
  v85 = v65;
  v86 = v65;
  v87 = v134;
  v88 = [v86 bundleForClass_];
  v89 = sub_29D65DA74();
  v91 = v90;

  *v84 = v89;
  v84[1] = v91;
  v84[2] = 0;
  (v80)(v84, v129, v79);
  v92 = v128;
  v129 = v84;
  v93 = (v84 + v131);
  v94 = [v85 bundleForClass_];
  v95 = sub_29D65DA74();
  v97 = v96;

  *v93 = v95;
  v93[1] = v97;
  v98 = [v85 bundleForClass_];
  v99 = sub_29D65DA74();
  v101 = v100;

  v93[2] = v99;
  v93[3] = v101;
  v93[4] = 0;
  v93[5] = 0;
  v140 = 0;
  v141 = 0xE000000000000000;
  sub_29D660554();
  v102 = [objc_opt_self() internalSoundsSettingsURLString];
  v103 = sub_29D65FF64();
  v105 = v104;

  v140 = v103;
  v141 = v105;
  MEMORY[0x29ED62350](v136, 0x800000029D667DA0);
  sub_29D65DAE4();

  v106 = sub_29D65DAF4();
  v107 = *(v106 - 8);
  result = (*(v107 + 48))(v92, 1, v106);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v109 = *(v123 + 80);
    (*(v107 + 32))(v93 + v109, v92, v106);
    v119(v93 + v109, *MEMORY[0x29EDC15C0], v121);
    v111 = v137;
    v110 = v138;
    (v137)(v93, HIDWORD(v117), v138);
    v112 = v129 + v120;
    v113 = [v133 bundleForClass_];
    v114 = sub_29D65DA74();
    v116 = v115;

    *v112 = v114;
    *(v112 + 1) = v116;
    v112[16] = 0;
    (v111)(v112, v130, v110);
    v140 = v124;
    sub_29D65A3F0(v127);
    return v140;
  }

  return result;
}

uint64_t sub_29D610F50(void *a1)
{
  v2 = sub_29D65FCA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65FCC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v14 = sub_29D6602B4();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = sub_29D612370;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A24327F8;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  sub_29D65FCB4();
  v19[1] = MEMORY[0x29EDCA190];
  sub_29D612390();
  sub_29D6123E8(0, &qword_2A17AC0F8, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D61244C();
  sub_29D660484();
  MEMORY[0x29ED62660](0, v13, v7, v16);
  _Block_release(v16);

  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v13, v8);
}

void sub_29D611204(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D65DA74();

  sub_29D5F3928(1u);
  v4 = objc_allocWithZone(sub_29D65E004());
  v7 = sub_29D65DFF4();
  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }

  else
  {
  }
}

uint64_t sub_29D61142C()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D6114E8()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D6115B4()
{
  sub_29D6124D4(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

id sub_29D611688()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D6118C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D65DA74();
  v8 = v7;

  v9 = v6 == a1 && v8 == a2;
  if (v9 || (sub_29D660694() & 1) != 0)
  {

    return 0;
  }

  return v6;
}

uint64_t sub_29D6119C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D65DA74();
  v8 = v7;

  v9 = v6 == a1 && v8 == a2;
  if (v9 || (sub_29D660694() & 1) != 0)
  {

    return 0;
  }

  return v6;
}

char *sub_29D611AC0(float a1, float a2)
{
  sub_29D660554();

  v4 = sub_29D660674();
  MEMORY[0x29ED62350](v4);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v5 = sub_29D660674();
  MEMORY[0x29ED62350](v5);

  MEMORY[0x29ED62350](0x454C5449545FLL, 0xE600000000000000);
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_29D65DA74();
  v29 = v10;
  v30 = v9;

  sub_29D660554();

  v11 = sub_29D660674();
  MEMORY[0x29ED62350](v11);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v12 = sub_29D660674();
  MEMORY[0x29ED62350](v12);

  MEMORY[0x29ED62350](0x45554C41565FLL, 0xE600000000000000);
  v13 = [v7 bundleForClass_];
  v14 = sub_29D65DA74();
  v16 = v15;

  sub_29D660554();

  v17 = sub_29D660674();
  MEMORY[0x29ED62350](v17);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v18 = sub_29D660674();
  MEMORY[0x29ED62350](v18);

  MEMORY[0x29ED62350](0x474E494E5241575FLL, 0xE800000000000000);
  v19 = sub_29D6118C8(0x4E4F4954434553, 0xE700000000000000);
  v21 = v20;

  v22 = objc_opt_self();
  v23 = [v22 hk_hearingHealthKeyColor];
  v24 = [v22 secondarySystemBackgroundColor];
  v25 = 0.0;
  if (a1 > 0.0)
  {
    v26 = a1;
  }

  else
  {
    v26 = 0.0;
  }

  if (v26 > 1.0)
  {
    v26 = 1.0;
  }

  if (a2 > 0.0)
  {
    v25 = a2;
  }

  if (v25 > 1.0)
  {
    v25 = 1.0;
  }

  v31[0] = v30;
  v31[1] = v29;
  v31[2] = v14;
  v31[3] = v16;
  v31[4] = v19;
  v31[5] = v21;
  v32 = 1;
  if ((1.0 - v26) < v25)
  {
    v25 = 1.0 - v26;
  }

  v33 = v26;
  v34 = v25;
  v35 = v23;
  v36 = v24;
  v37 = 0x4010000000000000;
  v27 = objc_allocWithZone(type metadata accessor for SoundLevelView());
  return SoundLevelView.init(model:)(v31);
}

char *sub_29D611F18(float a1, float a2)
{
  sub_29D660554();

  v4 = sub_29D660674();
  MEMORY[0x29ED62350](v4);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v5 = sub_29D660674();
  MEMORY[0x29ED62350](v5);

  MEMORY[0x29ED62350](0x454C5449545FLL, 0xE600000000000000);
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_29D65DA74();
  v29 = v10;
  v30 = v9;

  sub_29D660554();

  v11 = sub_29D660674();
  MEMORY[0x29ED62350](v11);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v12 = sub_29D660674();
  MEMORY[0x29ED62350](v12);

  MEMORY[0x29ED62350](0x45554C41565FLL, 0xE600000000000000);
  v13 = [v7 bundleForClass_];
  v14 = sub_29D65DA74();
  v16 = v15;

  sub_29D660554();

  v17 = sub_29D660674();
  MEMORY[0x29ED62350](v17);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v18 = sub_29D660674();
  MEMORY[0x29ED62350](v18);

  MEMORY[0x29ED62350](0x474E494E5241575FLL, 0xE800000000000000);
  v19 = sub_29D6119C4(0x4E4F4954434553, 0xE700000000000000);
  v21 = v20;

  v22 = objc_opt_self();
  v23 = [v22 hk_hearingHealthKeyColor];
  v24 = [v22 secondarySystemBackgroundColor];
  v25 = 0.0;
  if (a1 > 0.0)
  {
    v26 = a1;
  }

  else
  {
    v26 = 0.0;
  }

  if (v26 > 1.0)
  {
    v26 = 1.0;
  }

  if (a2 > 0.0)
  {
    v25 = a2;
  }

  if (v25 > 1.0)
  {
    v25 = 1.0;
  }

  v31[0] = v30;
  v31[1] = v29;
  v31[2] = v14;
  v31[3] = v16;
  v31[4] = v19;
  v31[5] = v21;
  v32 = 1;
  if ((1.0 - v26) < v25)
  {
    v25 = 1.0 - v26;
  }

  v33 = v26;
  v34 = v25;
  v35 = v23;
  v36 = v24;
  v37 = 0x4010000000000000;
  v27 = objc_allocWithZone(type metadata accessor for SoundLevelView());
  return SoundLevelView.init(model:)(v31);
}

uint64_t sub_29D612378(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D612390()
{
  result = qword_2A17AC0F0;
  if (!qword_2A17AC0F0)
  {
    sub_29D65FCA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC0F0);
  }

  return result;
}

void sub_29D6123E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D61244C()
{
  result = qword_2A17AC100;
  if (!qword_2A17AC100)
  {
    sub_29D6123E8(255, &qword_2A17AC0F8, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC100);
  }

  return result;
}

void sub_29D6124D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D612674(uint64_t a1)
{
  if (sub_29D65EC64() == 1)
  {
    sub_29D6128C0(a1);
    sub_29D5FA89C();
    sub_29D61599C(&qword_2A17AC5C8, sub_29D5FA89C);
    sub_29D65E674();

    sub_29D65E644();

    sub_29D65E5F4();

    sub_29D65E654();
  }

  else
  {
    v2 = sub_29D65E5F4();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_29D65E5E4();
    sub_29D65E674();

    sub_29D65E644();

    sub_29D5FA89C();
    sub_29D61599C(&qword_2A17AC5C8, sub_29D5FA89C);

    sub_29D65E664();
  }

  sub_29D5FA990();
  sub_29D61599C(&qword_2A17AC5D8, sub_29D5FA990);

  v5 = sub_29D65E644();

  return v5;
}

uint64_t sub_29D6128C0(uint64_t a1)
{
  v77 = *v1;
  v3 = v77;
  v101 = sub_29D65EC74();
  v99 = *(v101 - 8);
  v100 = *(v99 + 64);
  MEMORY[0x2A1C7C4A8](v101, v4);
  v98 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61535C(0, &qword_2A17AC760, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v97 = &v76 - v9;
  v10 = sub_29D6601A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D614D5C();
  v78 = v16;
  v79 = *(v16 - 8);
  v17 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D614F30();
  v81 = v21;
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61500C();
  v27 = *(v26 - 8);
  v84 = v26;
  v85 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6150B8();
  v33 = *(v32 - 8);
  v86 = v32;
  v87 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v32, v35);
  v80 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D615270();
  v38 = *(v37 - 8);
  v90 = v37;
  v91 = v38;
  v39 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v37, v40);
  v83 = &v76 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61553C();
  v93 = v42;
  v95 = *(v42 - 8);
  v43 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v42, v44);
  v89 = &v76 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61563C();
  v94 = v46;
  v96 = *(v46 - 8);
  v47 = *(v96 + 64);
  MEMORY[0x2A1C7C4A8](v46, v48);
  v92 = &v76 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  v50 = sub_29D65EC54();
  v51 = sub_29D65EC54();
  sub_29D5ED310();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_29D662030;
  sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
  *(v52 + 32) = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_29D6601C4();

  *(swift_allocObject() + 16) = v3;
  sub_29D614E48();
  sub_29D61599C(&qword_2A17AC998, MEMORY[0x29EDC2E88]);
  sub_29D61599C(&qword_2A17AC9A0, sub_29D614E48);
  sub_29D65F964();

  (*(v11 + 8))(v15, v10);
  sub_29D660194();
  sub_29D5DF210(0, &qword_2A17AC108);
  sub_29D61599C(&qword_2A17AC9B0, sub_29D614D5C);
  v53 = v78;
  sub_29D65F914();
  (*(v79 + 8))(v20, v53);
  *(swift_allocObject() + 16) = v50;
  sub_29D660184();
  sub_29D61599C(&qword_2A17AC9C0, sub_29D614F30);
  v54 = v50;
  v55 = v81;
  sub_29D65F954();

  (*(v82 + 8))(v25, v55);
  sub_29D61599C(&qword_2A17AC9D8, sub_29D61500C);
  sub_29D61599C(&qword_2A17AC9E0, MEMORY[0x29EDC2E78]);
  v56 = v80;
  v57 = v84;
  sub_29D65F9A4();
  (*(v85 + 8))(v31, v57);
  *(swift_allocObject() + 16) = v77;
  sub_29D61535C(0, &qword_2A17AC9F8, sub_29D6153C0, MEMORY[0x29EDB8AB0]);
  sub_29D61599C(&qword_2A17ACA08, sub_29D6150B8);
  sub_29D6154B4();
  v58 = v83;
  v59 = v86;
  sub_29D65F964();

  (*(v87 + 8))(v56, v59);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v60 = sub_29D6602B4();
  v102 = v60;
  v61 = sub_29D6602A4();
  v62 = v97;
  (*(*(v61 - 8) + 56))(v97, 1, 1, v61);
  sub_29D61599C(&qword_2A17ACA20, sub_29D615270);
  sub_29D615470(&qword_2A17AC768, &qword_2A17AC0E8, 0x29EDCA548);
  v64 = v89;
  v63 = v90;
  sub_29D65F984();
  sub_29D615730(v62);

  (*(v91 + 8))(v58, v63);
  v66 = v98;
  v65 = v99;
  v67 = v101;
  (*(v99 + 16))(v98, v88, v101);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = swift_allocObject();
  (*(v68 + 32))(v70 + v69, v66, v67);
  sub_29D61535C(0, &qword_2A17AC5A8, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
  sub_29D61599C(&qword_2A17ACA30, sub_29D61553C);
  v72 = v92;
  v71 = v93;
  sub_29D65F954();

  (*(v95 + 8))(v64, v71);
  sub_29D61599C(&qword_2A17ACA38, sub_29D61563C);
  v73 = v94;
  sub_29D65F924();
  (*(v96 + 8))(v72, v73);
  sub_29D65ECB4();
  sub_29D65E6B4();

  sub_29D5FA930();
  sub_29D61599C(&qword_2A17AC5C0, sub_29D5FA930);
  v74 = sub_29D65E6C4();

  return v74;
}

uint64_t sub_29D6135FC(void **a1)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_29D6600C4();
  v9 = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F2A4();
  v10 = v8;
  v11 = sub_29D65F2F4();
  v12 = sub_29D6601F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v9;
    v15 = v14;
    v33 = v14;
    *v13 = 136446466;
    v16 = sub_29D6607A4();
    v18 = sub_29D64A1D0(v16, v17, &v33);
    v29 = v2;
    v19 = v18;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v21 = *(*(v32 - 8) + 64);
    MEMORY[0x2A1C7C4A8](ErrorValue, v31);
    (*(v23 + 16))(&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = sub_29D65FF84();
    v26 = sub_29D64A1D0(v24, v25, &v33);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_29D5D7000, v11, v12, "[%{public}s] Error fetching db changes: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v15, -1, -1);
    MEMORY[0x29ED63350](v13, -1, -1);

    (*(v3 + 8))(v7, v29);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  sub_29D614EB0();
  sub_29D65F874();
}

uint64_t sub_29D613958()
{
  sub_29D5ED310();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D662030;
  sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
  *(v0 + 32) = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_29D6601B4();
}

uint64_t sub_29D613A08(void **a1)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_29D6600C4();
  v9 = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F2A4();
  v10 = v8;
  v11 = sub_29D65F2F4();
  v12 = sub_29D6601F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v9;
    v15 = v14;
    v33 = v14;
    *v13 = 136446466;
    v16 = sub_29D6607A4();
    v18 = sub_29D64A1D0(v16, v17, &v33);
    v29 = v2;
    v19 = v18;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v21 = *(*(v32 - 8) + 64);
    MEMORY[0x2A1C7C4A8](ErrorValue, v31);
    (*(v23 + 16))(&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = sub_29D65FF84();
    v26 = sub_29D64A1D0(v24, v25, &v33);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_29D5D7000, v11, v12, "[%{public}s] Error fetching sample counts: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v15, -1, -1);
    MEMORY[0x29ED63350](v13, -1, -1);

    (*(v3 + 8))(v7, v29);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  v33 = sub_29D5E23F0(MEMORY[0x29EDCA190]);
  sub_29D6153C0();
  sub_29D65F864();
}

uint64_t sub_29D613D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v99 = a2;
  v5 = sub_29D65EF84();
  v107 = *(v5 - 8);
  v6 = *(v107 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v106 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D65E974();
  v103 = *(v9 - 8);
  v104 = v9;
  v10 = *(v103 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v105 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x29EDC9C68];
  sub_29D61535C(0, &qword_2A17ACA40, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v102 = v84 - v17;
  v18 = sub_29D65EC74();
  v95 = *(v18 - 8);
  v96 = v18;
  v19 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v94 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61535C(0, &qword_2A17ACA48, MEMORY[0x29EDC7770], v13);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8, v23);
  v91 = v84 - v24;
  v93 = sub_29D65F364();
  v92 = *(v93 - 8);
  v25 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v93, v26);
  v28 = v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D65F324();
  v90 = *(v29 - 8);
  v30 = *(v90 + 64);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v33 = v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D65E9E4();
  v100 = *(v34 - 8);
  v101 = v34;
  v35 = *(v100 + 64);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v98 = v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_29D65F414();
  v97 = *(v108 - 8);
  v38 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v108, v39);
  v109 = v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  sub_29D6600C4();
  v110 = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
  v42 = [swift_getObjCClassFromMetadata() audiogramSampleType];
  v43 = v42;
  if (!*(v41 + 16) || (v44 = sub_29D5E1C04(v42), (v45 & 1) == 0))
  {

    goto LABEL_11;
  }

  v46 = *(*(v41 + 56) + 8 * v44);

  if (v46 < 1)
  {
LABEL_11:

    v54 = MEMORY[0x29EDCA190];
    goto LABEL_12;
  }

  v85 = v29;
  v87 = v5;
  v47 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
  [v47 setNumberStyle_];
  [v47 setMaximumFractionDigits_];
  sub_29D65F404();
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v88 = a3;
  v48 = sub_29D65DA74();
  v50 = v49;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65F3F4();
  v51 = sub_29D660134();
  v86 = v47;
  v52 = [v47 stringFromNumber_];

  if (v52)
  {
    sub_29D65FF64();
  }

  v55 = v109;
  sub_29D65F3B4();
  v111 = v46;
  v56 = sub_29D660674();
  v58 = v57;
  v111 = v48;
  v112 = v50;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](v56, v58);

  v84[1] = v111;
  v84[0] = v112;
  v59 = v108;
  v113 = v108;
  v114 = MEMORY[0x29EDC7800];
  v60 = sub_29D5E3C20(&v111);
  v61 = v97;
  (*(v97 + 16))(v60, v55, v59);
  v62 = MEMORY[0x29EDC9E90];
  sub_29D61535C(0, &qword_2A17ACA50, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v63 = *(sub_29D65F374() - 8);
  v64 = *(v63 + 72);
  v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v66 = swift_allocObject();
  v89 = xmmword_29D661D90;
  *(v66 + 16) = xmmword_29D661D90;
  v67 = v90;
  v68 = v85;
  (*(v90 + 104))(v33, *MEMORY[0x29EDC7768], v85);
  v69 = sub_29D65F334();
  (*(*(v69 - 8) + 56))(v91, 1, 1, v69);
  sub_29D65F354();
  sub_29D65F344();
  (*(v92 + 8))(v28, v93);
  (*(v67 + 8))(v33, v68);
  v71 = v95;
  v70 = v96;
  v72 = v94;
  (*(v95 + 16))(v94, v99, v96);
  v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v74 = swift_allocObject();
  (*(v71 + 32))(v74 + v73, v72, v70);
  v75 = sub_29D65F3A4();
  (*(*(v75 - 8) + 56))(v102, 1, 1, v75);
  (*(v103 + 104))(v105, *MEMORY[0x29EDC22C8], v104);
  (*(v107 + 104))(v106, *MEMORY[0x29EDC2A38], v87);
  v76 = v98;
  sub_29D65E9D4();
  sub_29D61535C(0, &qword_2A17AC5E0, MEMORY[0x29EDC2240], v62);
  v77 = *(sub_29D65E904() - 8);
  v78 = *(v77 + 72);
  v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v89;
  sub_29D615934();
  v80 = swift_allocObject();
  *(v80 + 16) = v89;
  v81 = v101;
  *(v80 + 56) = v101;
  *(v80 + 64) = sub_29D61599C(&qword_2A17ACA58, MEMORY[0x29EDC23F8]);
  v82 = sub_29D5E3C20((v80 + 32));
  v83 = v100;
  (*(v100 + 16))(v82, v76, v81);
  sub_29D65E8E4();

  (*(v83 + 8))(v76, v81);
  (*(v61 + 8))(v109, v108);

  a3 = v88;
LABEL_12:
  *a3 = v54;
  return result;
}

void sub_29D614968(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_29D65EC54();
  v3 = objc_allocWithZone(type metadata accessor for AudiogramAllDataViewController());
  v6 = sub_29D630740(v2);
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v6 animated:1];
  }

  else
  {
  }
}

uint64_t sub_29D614A8C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F074();
  sub_29D660254();
}

uint64_t sub_29D614B40()
{
  v0 = sub_29D65E9A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65E984();
  v6 = sub_29D65E994();
  (*(v1 + 8))(v5, v0);

  return v6;
}

uint64_t sub_29D614C8C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_29D614D04()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

void sub_29D614D5C()
{
  if (!qword_2A17AC980)
  {
    sub_29D6601A4();
    sub_29D614E48();
    sub_29D61599C(&qword_2A17AC998, MEMORY[0x29EDC2E88]);
    sub_29D61599C(&qword_2A17AC9A0, sub_29D614E48);
    v0 = sub_29D65F7B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC980);
    }
  }
}

void sub_29D614E48()
{
  if (!qword_2A17AC988)
  {
    sub_29D614EB0();
    v0 = sub_29D65F884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC988);
    }
  }
}

void sub_29D614EB0()
{
  if (!qword_2A17AC990)
  {
    sub_29D660194();
    sub_29D5DF210(255, &qword_2A17AC108);
    v0 = sub_29D660754();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC990);
    }
  }
}

void sub_29D614F30()
{
  if (!qword_2A17AC9A8)
  {
    sub_29D614D5C();
    sub_29D660194();
    sub_29D5DF210(255, &qword_2A17AC108);
    sub_29D61599C(&qword_2A17AC9B0, sub_29D614D5C);
    v0 = sub_29D65F784();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC9A8);
    }
  }
}

void sub_29D61500C()
{
  if (!qword_2A17AC9B8)
  {
    sub_29D614F30();
    sub_29D660184();
    sub_29D61599C(&qword_2A17AC9C0, sub_29D614F30);
    v0 = sub_29D65F794();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC9B8);
    }
  }
}

void sub_29D6150B8()
{
  if (!qword_2A17AC9C8)
  {
    sub_29D660184();
    sub_29D6151A4();
    sub_29D61599C(&qword_2A17AC9E0, MEMORY[0x29EDC2E78]);
    sub_29D61599C(&qword_2A17AC9E8, sub_29D6151A4);
    v0 = sub_29D65F774();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC9C8);
    }
  }
}

void sub_29D6151A4()
{
  if (!qword_2A17AC9D0)
  {
    sub_29D61500C();
    sub_29D5DF210(255, &qword_2A17AC108);
    sub_29D61599C(&qword_2A17AC9D8, sub_29D61500C);
    v0 = sub_29D65F764();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC9D0);
    }
  }
}

void sub_29D615270()
{
  if (!qword_2A17AC9F0)
  {
    sub_29D6150B8();
    sub_29D61535C(255, &qword_2A17AC9F8, sub_29D6153C0, MEMORY[0x29EDB8AB0]);
    sub_29D61599C(&qword_2A17ACA08, sub_29D6150B8);
    sub_29D6154B4();
    v0 = sub_29D65F7B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC9F0);
    }
  }
}

void sub_29D61535C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D6153C0()
{
  if (!qword_2A17ACA00)
  {
    sub_29D5DF448(255, &qword_2A1A1E700, 0x29EDBAD78);
    sub_29D615470(&qword_2A1A1E6F8, &qword_2A1A1E700, 0x29EDBAD78);
    v0 = sub_29D65FEC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACA00);
    }
  }
}

uint64_t sub_29D615470(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D5DF448(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D6154B4()
{
  result = qword_2A17ACA10;
  if (!qword_2A17ACA10)
  {
    sub_29D61535C(255, &qword_2A17AC9F8, sub_29D6153C0, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA10);
  }

  return result;
}

void sub_29D61553C()
{
  if (!qword_2A17ACA18)
  {
    sub_29D615270();
    sub_29D5DF448(255, &qword_2A17AC0E8, 0x29EDCA548);
    sub_29D61599C(&qword_2A17ACA20, sub_29D615270);
    sub_29D615470(&qword_2A17AC768, &qword_2A17AC0E8, 0x29EDCA548);
    v0 = sub_29D65F804();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACA18);
    }
  }
}

void sub_29D61563C()
{
  if (!qword_2A17ACA28)
  {
    sub_29D61553C();
    sub_29D61535C(255, &qword_2A17AC5A8, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
    sub_29D61599C(&qword_2A17ACA30, sub_29D61553C);
    v0 = sub_29D65F794();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACA28);
    }
  }
}

uint64_t sub_29D615730(uint64_t a1)
{
  sub_29D61535C(0, &qword_2A17AC760, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D6157BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D65EC74() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D613D64(a1, v6, a2);
}

uint64_t sub_29D61583C()
{
  v1 = sub_29D65EC74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

void sub_29D6158C4(void *a1)
{
  v2 = *(*(sub_29D65EC74() - 8) + 80);

  sub_29D614968(a1);
}

void sub_29D615934()
{
  if (!qword_2A17AC570)
  {
    sub_29D5DF210(255, &qword_2A17AC578);
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC570);
    }
  }
}

uint64_t sub_29D61599C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6159E4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = sub_29D65F414();
  v6 = MEMORY[0x29EDC7800];
  a1[3] = v5;
  a1[4] = v6;
  sub_29D5E3C20(a1);
  sub_29D65F3E4();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return sub_29D65F3F4();
}

uint64_t sub_29D615A50()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D615A80(uint64_t a1)
{
  v2 = sub_29D607148();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D615ACC(void *a1, void *a2)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a2[5];
  v5 = a2[6];
  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v6 || (v7 = sub_29D660694(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_29D660694();
    }
  }

  return result;
}

uint64_t sub_29D615B70()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  sub_29D660724();
  sub_29D65FFA4();
  sub_29D65FFA4();
  return sub_29D660744();
}

uint64_t sub_29D615BD8()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  sub_29D65FFA4();

  return sub_29D65FFA4();
}

uint64_t sub_29D615C28()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  sub_29D660724();
  sub_29D65FFA4();
  sub_29D65FFA4();
  return sub_29D660744();
}

uint64_t sub_29D615C8C()
{
  sub_29D616138(0, &qword_2A17ACA48, MEMORY[0x29EDC7770], MEMORY[0x29EDC9C68]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v23 - v3;
  v5 = sub_29D65F364();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D65F324();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D616138(0, &qword_2A17ACA50, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v17 = *(sub_29D65F374() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D661D90;
  (*(v12 + 104))(v16, *MEMORY[0x29EDC7768], v11);
  v21 = sub_29D65F334();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_29D65F354();
  sub_29D65F344();
  (*(v6 + 8))(v10, v5);
  (*(v12 + 8))(v16, v11);
  return v20;
}

uint64_t sub_29D615F9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  a2[3] = a1;
  a2[4] = sub_29D61619C();
  v11 = swift_allocObject();
  *a2 = v11;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v11[7] = v9;
  v11[8] = v10;
  v12 = v4;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  return _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
}

uint64_t sub_29D616040(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 6);
  return sub_29D6162F0(a2);
}

unint64_t sub_29D61608C()
{
  result = qword_2A17ACA60;
  if (!qword_2A17ACA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA60);
  }

  return result;
}

unint64_t sub_29D6160E4()
{
  result = qword_2A17ACA68;
  if (!qword_2A17ACA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA68);
  }

  return result;
}

void sub_29D616138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D61619C()
{
  result = qword_2A17ACA70;
  if (!qword_2A17ACA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA70);
  }

  return result;
}

uint64_t sub_29D6161F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29D65F074();
  v4 = sub_29D65E564();
  v6 = v5;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  result = sub_29D65DA74();
  *a2 = a1;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = 0xD000000000000014;
  a2[4] = 0x800000029D663960;
  a2[5] = result;
  a2[6] = v8;
  return result;
}

uint64_t sub_29D6162F0(void *a1)
{
  v3 = sub_29D65F314();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D65FE04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v24 - v17;
  v19 = *v1;
  sub_29D65F2E4();
  sub_29D65FDF4();
  (*(v4 + 8))(v8, v3);
  (*(v10 + 16))(v15, v18, v9);
  sub_29D6164E8();
  v21 = objc_allocWithZone(v20);
  v22 = sub_29D65FD04();
  [a1 showAdaptively:v22 sender:0];

  return (*(v10 + 8))(v18, v9);
}

void sub_29D6164E8()
{
  if (!qword_2A17ACA78)
  {
    sub_29D65FE04();
    sub_29D61654C();
    v0 = sub_29D65FD14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACA78);
    }
  }
}

unint64_t sub_29D61654C()
{
  result = qword_2A17ACA80;
  if (!qword_2A17ACA80)
  {
    sub_29D65FE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA80);
  }

  return result;
}

__n128 sub_29D6165A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29D6165C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29D616608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for HearingTestRescindedFeedItemProvider()
{
  result = qword_2A1A1E430;
  if (!qword_2A1A1E430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6166DC()
{
  sub_29D5F9D2C(0);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F2A28(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v20 - v14;
  v16 = sub_29D65DEF4();
  v17 = sub_29D6480B4();
  sub_29D644F5C(v17, v15);

  sub_29D5F2D70(v15, v12);
  sub_29D65F864();
  sub_29D5F9DC4(&qword_2A1A1DDE8, sub_29D5F9D2C);
  v18 = sub_29D65F934();
  (*(v2 + 8))(v6, v1);
  sub_29D5F9E0C(v15);
  return v18;
}

uint64_t sub_29D6168BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A20C18;
  v3 = sub_29D65FF24();
  v4 = sub_29D65FF24();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (v5)
  {
    sub_29D65DAD4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_29D65DAF4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t sub_29D6169E8()
{
  v0 = MEMORY[0x29EDC9E90];
  sub_29D61804C(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v145 = sub_29D65DFE4();
  v1 = *(v145 - 8);
  v146 = *(v1 + 72);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_29D663250;
  sub_29D617E70(0, v3);
  v143 = v4[12];
  v5 = v136 + v2;
  v6 = (v136 + v2 + v4[16]);
  v7 = (v136 + v2 + v4[20]);
  v8 = v136 + v2 + v4[24];
  v9 = v5;
  sub_29D6168BC(v5);
  v10 = MEMORY[0x29EDC1650];
  sub_29D61804C(0, &qword_2A17ACA90, MEMORY[0x29EDC1650], v0);
  v11 = *(sub_29D65E084() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_29D661D20;
  sub_29D65E064();
  sub_29D65E074();
  sub_29D617FF4();
  sub_29D61804C(0, &qword_2A17ACAA0, v10, MEMORY[0x29EDC9A40]);
  sub_29D6180B0();
  sub_29D660484();
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0x3FD3333333333333;
  *(v8 + 8) = 0;
  v142 = *(v1 + 104);
  (v142)(v9, *MEMORY[0x29EDC1618], v145);
  v14 = (v9 + v146);
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v138 = objc_opt_self();
  v144 = ObjCClassFromMetadata;
  v16 = [v138 bundleForClass_];
  v17 = sub_29D65DA74();
  v19 = v18;

  *v14 = v17;
  v14[1] = v19;
  (v142)(v9 + v146, *MEMORY[0x29EDC1610], v145);
  v20 = v9 + 2 * v146;
  v21 = [v138 bundleForClass_];
  v22 = sub_29D65DA74();
  v24 = v23;

  *v20 = v22;
  *(v20 + 8) = v24;
  *(v20 + 16) = 0;
  v25 = *MEMORY[0x29EDC1630];
  v140 = *MEMORY[0x29EDC1630];
  (v142)(v20, v25, v145);
  v26 = v9 + 3 * v146;
  v27 = [v138 bundleForClass_];
  v28 = sub_29D65DA74();
  v30 = v29;

  *v26 = v28;
  *(v26 + 8) = v30;
  *(v26 + 16) = 0;
  (v142)(v26, v25, v145);
  v31 = v9 + 4 * v146;
  v32 = [v138 bundleForClass_];
  v33 = sub_29D65DA74();
  v35 = v34;

  *v31 = v33;
  *(v31 + 8) = v35;
  *(v31 + 16) = 0;
  (v142)(v31, v140, v145);
  v36 = (v9 + 5 * v146);
  v37 = [v138 bundleForClass_];
  v38 = sub_29D65DA74();
  v40 = v39;

  *v36 = v38;
  v36[1] = v40;
  v36[2] = 0;
  v137 = *MEMORY[0x29EDC15D0];
  v142(v36);
  v41 = v9 + 6 * v146;
  v42 = [v138 bundleForClass_];
  v43 = sub_29D65DA74();
  v45 = v44;

  *v41 = v43;
  *(v41 + 8) = v45;
  *(v41 + 16) = 0;
  (v142)(v41, v140, v145);
  v46 = v9 + 7 * v146;
  v47 = [v138 bundleForClass_];
  v48 = sub_29D65DA74();
  v50 = v49;

  *v46 = v48;
  *(v46 + 8) = v50;
  *(v46 + 16) = 0;
  (v142)(v46, v140, v145);
  v51 = v9 + 8 * v146;
  v52 = [v138 bundleForClass_];
  v53 = sub_29D65DA74();
  v55 = v54;

  *v51 = v53;
  *(v51 + 8) = v55;
  *(v51 + 16) = 0;
  (v142)(v51, v140, v145);
  v56 = v9 + 9 * v146;
  v57 = [v138 bundleForClass_];
  v58 = sub_29D65DA74();
  v60 = v59;

  *v56 = v58;
  *(v56 + 8) = v60;
  *(v56 + 16) = 0;
  (v142)(v56, v140, v145);
  v61 = (v9 + 10 * v146);
  v62 = [v138 bundleForClass_];
  v63 = sub_29D65DA74();
  v65 = v64;

  *v61 = v63;
  v61[1] = v65;
  v61[2] = 0;
  (v142)(v61, v137, v145);
  v66 = v9 + 11 * v146;
  v67 = [v138 bundleForClass_];
  v68 = sub_29D65DA74();
  v70 = v69;

  *v66 = v68;
  *(v66 + 8) = v70;
  *(v66 + 16) = 0;
  (v142)(v66, v140, v145);
  v71 = v9 + 12 * v146;
  v72 = [v138 bundleForClass_];
  v73 = sub_29D65DA74();
  v75 = v74;

  *v71 = v73;
  *(v71 + 8) = v75;
  *(v71 + 16) = 0;
  (v142)(v71, v140, v145);
  v76 = v9 + 13 * v146;
  v77 = [v138 bundleForClass_];
  v78 = sub_29D65DA74();
  v80 = v79;

  *v76 = v78;
  *(v76 + 8) = v80;
  *(v76 + 16) = 0;
  (v142)(v76, v140, v145);
  v81 = v9 + 14 * v146;
  v82 = [v138 bundleForClass_];
  v83 = sub_29D65DA74();
  v85 = v84;

  *v81 = v83;
  *(v81 + 8) = v85;
  *(v81 + 16) = 0;
  (v142)(v81, v140, v145);
  v86 = (v9 + 15 * v146);
  v87 = [v138 bundleForClass_];
  v88 = sub_29D65DA74();
  v90 = v89;

  *v86 = v88;
  v86[1] = v90;
  v86[2] = 0;
  (v142)(v86, v137, v145);
  v91 = v9 + 16 * v146;
  v92 = [v138 bundleForClass_];
  v93 = sub_29D65DA74();
  v95 = v94;

  *v91 = v93;
  *(v91 + 8) = v95;
  *(v91 + 16) = 0;
  (v142)(v91, v140, v145);
  v139 = (v9 + 17 * v146);
  v96 = [v138 bundleForClass_];
  v147 = sub_29D65DA74();
  v141 = v97;

  sub_29D618138(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_29D663A60;
  v99 = [v138 bundleForClass_];
  v100 = sub_29D65DA74();
  v102 = v101;

  *(v98 + 32) = v100;
  *(v98 + 40) = v102;
  v103 = [v138 bundleForClass_];
  v104 = sub_29D65DA74();
  v106 = v105;

  *(v98 + 48) = v104;
  *(v98 + 56) = v106;
  v107 = [v138 bundleForClass_];
  v108 = sub_29D65DA74();
  v110 = v109;

  *(v98 + 64) = v108;
  *(v98 + 72) = v110;
  v111 = [v138 bundleForClass_];
  v112 = sub_29D65DA74();
  v114 = v113;

  *(v98 + 80) = v112;
  *(v98 + 88) = v114;
  v115 = [v138 bundleForClass_];
  v116 = sub_29D65DA74();
  v118 = v117;

  *(v98 + 96) = v116;
  *(v98 + 104) = v118;
  v119 = [v138 bundleForClass_];
  v120 = sub_29D65DA74();
  v122 = v121;

  *(v98 + 112) = v120;
  *(v98 + 120) = v122;
  v123 = [v138 bundleForClass_];
  v124 = sub_29D65DA74();
  v126 = v125;

  *(v98 + 128) = v124;
  *(v98 + 136) = v126;
  v127 = [v138 bundleForClass_];
  v128 = sub_29D65DA74();
  v130 = v129;

  *(v98 + 144) = v128;
  *(v98 + 152) = v130;
  v131 = [v138 bundleForClass_];
  v132 = sub_29D65DA74();
  v134 = v133;

  *(v98 + 160) = v132;
  *(v98 + 168) = v134;
  *v139 = v147;
  v139[1] = v141;
  v139[2] = v98;
  (v142)(v139, *MEMORY[0x29EDC15F0], v145);
  return v136;
}

uint64_t sub_29D617C24()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D617CE0()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D617DAC()
{
  sub_29D618138(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  sub_29D5E20B8();
  *(inited + 32) = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

void sub_29D617E70(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17ACA88)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D61804C(255, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
    sub_29D65E084();
    v2 = MEMORY[0x29EDC9C68];
    sub_29D618138(255, &qword_2A17AC930, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29D618138(255, &qword_2A17AC598, MEMORY[0x29EDC9AD8], v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17ACA88);
    }
  }
}

unint64_t sub_29D617FF4()
{
  result = qword_2A17ACA98;
  if (!qword_2A17ACA98)
  {
    sub_29D65E084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA98);
  }

  return result;
}

void sub_29D61804C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6180B0()
{
  result = qword_2A17ACAA8;
  if (!qword_2A17ACAA8)
  {
    sub_29D61804C(255, &qword_2A17ACAA0, MEMORY[0x29EDC1650], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACAA8);
  }

  return result;
}

void sub_29D618138(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_29D618188()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D618328@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A20BF8;
  v3 = [qword_2A1A20BF8 noiseEnabled];
  LODWORD(v2) = [v2 notificationsEnabled];
  v4 = sub_29D65E0E4();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x29EDC1760];
  if ((v3 & v2) == 0)
  {
    v6 = MEMORY[0x29EDC1768];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_29D618410@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  swift_getObjectType();
  v1 = sub_29D65E0E4();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v5 = MEMORY[0x2A1C7C4A8](v1, v4);
  v25 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v24 - v8;
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A20BF8;
  v11 = [qword_2A1A20BF8 noiseEnabled];
  v12 = [v10 notificationsEnabled];
  v13 = v2[13];
  v14 = *MEMORY[0x29EDC1760];
  v15 = *MEMORY[0x29EDC1768];
  if ((v11 & v12) != 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v13(v9, v16, v1);
  v24[1] = sub_29D600670(v9);
  v17 = v2[1];
  v17(v9, v1);
  v18 = [v10 noiseEnabled];
  if ((v18 & [v10 notificationsEnabled]) != 0)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  v20 = v25;
  v13(v25, v19, v1);
  sub_29D65E194();
  sub_29D65E174();
  v17(v20, v1);
  sub_29D600654();
  v21 = v26;
  sub_29D65EE24();
  v22 = sub_29D65EE44();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_29D6186AC()
{
  v1 = v0;
  v14 = MEMORY[0x29EDCA190];
  v2 = sub_29D618814();
  sub_29D65A648(v2);
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  if ([qword_2A1A20BF8 noiseEnabled])
  {
    v3 = sub_29D618ABC();
    v4 = qword_2A17ACAF0;
    v5 = *(v1 + qword_2A17ACAF0);
    *(v1 + qword_2A17ACAF0) = v3;

    v6 = *(v1 + v4);
    v7 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D65A648(v7);
  }

  v8 = v14;
  if (v14 >> 62)
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v13 = sub_29D6605B4();
    swift_bridgeObjectRelease_n();
    return v13;
  }

  else
  {
    v9 = v14 & 0xFFFFFFFFFFFFFF8;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D6606A4();
    if (swift_dynamicCastMetatype() || (v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_7:
    }

    else
    {
      v12 = (v9 + 32);
      while (*v12)
      {
        ++v12;
        if (!--v11)
        {
          goto LABEL_7;
        }
      }

      return v9 | 1;
    }

    return v8;
  }
}

uint64_t sub_29D618814()
{
  v1 = v0;
  v2 = MEMORY[0x29EDCA190];
  v21 = MEMORY[0x29EDCA190];
  v3 = objc_opt_self();
  v4 = *(v1 + qword_2A17ACAB0);
  v5 = *(v1 + qword_2A17ACAB0 + 8);
  v6 = sub_29D65FF24();
  v7 = [v3 groupSpecifierWithID_];

  if (v7)
  {
    v8 = qword_2A17ACAD0;
    v9 = [*(v1 + qword_2A17ACAD0) environmentalMeasurementsFooterDescription];
    if (!v9)
    {
      sub_29D65FF64();
      v9 = sub_29D65FF24();
    }

    [v7 setProperty:v9 forKey:*MEMORY[0x29EDC62F8]];

    v10 = v7;
    MEMORY[0x29ED623B0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D660064();
    }

    sub_29D660074();
    v2 = v21;
    v11 = [*(v1 + v8) environmentalMeasurementsTitleDescription];
    if (!v11)
    {
      sub_29D65FF64();
      v11 = sub_29D65FF24();
    }

    v12 = [v3 preferenceSpecifierNamed:v11 target:v1 set:sel_setEnvironmentalSoundMeasurementsWithValue_ get:sel_environmentalSoundMeasurements detail:0 cell:6 edit:0];

    if (v12)
    {
      v13 = *(v1 + qword_2A17ACAB8);
      v14 = *(v1 + qword_2A17ACAB8 + 8);
      v15 = sub_29D65FF24();
      [v12 setIdentifier_];

      v16 = sub_29D660094();
      [v12 setProperty:v16 forKey:*MEMORY[0x29EDC62A0]];

      v17 = v12;
      MEMORY[0x29ED623B0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();

      return v21;
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_29D618ABC()
{
  v1 = v0;
  v2 = MEMORY[0x29EDCA190];
  v35 = MEMORY[0x29EDCA190];
  v3 = objc_opt_self();
  v4 = *(v0 + qword_2A17ACAB0);
  v5 = *(v0 + qword_2A17ACAB0 + 8);
  v6 = sub_29D65FF24();
  v7 = [v3 groupSpecifierWithID_];

  if (v7)
  {
    v8 = qword_2A17ACAD0;
    v9 = [*(v1 + qword_2A17ACAD0) noiseThresholdSectionTitle];
    if (!v9)
    {
      sub_29D65FF64();
      v9 = sub_29D65FF24();
    }

    [v7 setName_];

    v10 = [*(v1 + v8) noiseThresholdFooterDescription];
    v11 = v10;
    v12 = v10;
    if (!v10)
    {
      sub_29D65FF64();
      v12 = sub_29D65FF24();

      sub_29D65FF64();
      v11 = sub_29D65FF24();
    }

    v34 = v3;
    v13 = *(v1 + v8);
    v14 = v10;
    v15 = [v13 noiseThresholdFooterLinkTitle];
    if (!v15)
    {
      sub_29D65FF64();
      v15 = sub_29D65FF24();
    }

    v16 = [objc_allocWithZone(MEMORY[0x29EDBA0F8]) initWithString_];

    v17 = [v16 localizedStandardRangeOfString_];
    v19 = v18;

    sub_29D65DCE4();
    v20 = sub_29D65FF24();
    [v7 setProperty:v20 forKey:*MEMORY[0x29EDC62D0]];

    [v7 setProperty:v12 forKey:*MEMORY[0x29EDC62F0]];
    v36.location = v17;
    v36.length = v19;
    v21 = NSStringFromRange(v36);
    if (!v21)
    {
      sub_29D65FF64();
      v21 = sub_29D65FF24();
    }

    [v7 setProperty:v21 forKey:*MEMORY[0x29EDC62E0]];

    v22 = [objc_opt_self() valueWithNonretainedObject_];
    [v7 setProperty:v22 forKey:*MEMORY[0x29EDC62E8]];
    v23 = sub_29D65FF24();

    [v7 setProperty:v23 forKey:*MEMORY[0x29EDC62D8]];

    v24 = v7;
    MEMORY[0x29ED623B0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D660064();
    }

    sub_29D660074();
    v2 = v35;
    v25 = [*(v1 + v8) noiseThresholdTitleDescription];
    if (!v25)
    {
      sub_29D65FF64();
      v25 = sub_29D65FF24();
    }

    type metadata accessor for NoiseThresholdSpecifierViewController(0);
    v26 = [v34 preferenceSpecifierNamed:v25 target:v1 set:0 get:sel_getNoiseThresholdValue detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

    if (v26)
    {
      v27 = *(v1 + qword_2A17ACAC8);
      v28 = *(v1 + qword_2A17ACAC8 + 8);
      v29 = sub_29D65FF24();
      [v26 setIdentifier_];

      [v26 setButtonAction_];
      v30 = v26;
      MEMORY[0x29ED623B0]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();

      return v35;
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_29D618F90()
{
  sub_29D605988(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605A20();
  v13 = *(v12 - 8);
  v45 = v12;
  v46 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605AB8();
  v19 = *(v18 - 8);
  v47 = v18;
  v48 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61A510();
  v25 = *(v24 - 8);
  v49 = v24;
  v50 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v44 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v0 + qword_2A17ACAD8);
  swift_beginAccess();
  sub_29D61AB68(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  v30 = v29;
  sub_29D65F8C4();
  swift_endAccess();

  sub_29D61AB20(&qword_2A1A1E778, sub_29D5FEBBC);
  sub_29D65F994();
  (*(v7 + 8))(v11, v6);
  sub_29D605BAC();
  v31 = sub_29D6602B4();
  v51 = v31;
  v32 = sub_29D6602A4();
  v33 = v43;
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  sub_29D61AB20(&unk_2A17AC900, sub_29D605A20);
  sub_29D61AB20(&qword_2A17AC768, sub_29D605BAC);
  v34 = v45;
  sub_29D65F984();
  sub_29D61A5A4(v33, sub_29D605988);

  (*(v46 + 8))(v17, v34);
  swift_allocObject();
  v35 = v42;
  swift_unknownObjectWeakInit();
  sub_29D61AB20(&qword_2A17AC770, sub_29D605AB8);
  v36 = v44;
  v37 = v47;
  sub_29D65F974();

  (*(v48 + 8))(v23, v37);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D61AB20(&qword_2A17ACB50, sub_29D61A510);
  v38 = v49;
  v39 = sub_29D65F9B4();

  (*(v50 + 8))(v36, v38);
  v40 = *(v35 + qword_2A17ACAE0);
  *(v35 + qword_2A17ACAE0) = v39;
}

uint64_t sub_29D619584()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[qword_2A17ACAE8] ^ 1;
    Strong[qword_2A17ACAE8] = 0;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_29D6195F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + qword_2A17ACAF8;
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      swift_getObjectType();
      sub_29D65EE14();
      sub_29D65EE94();
    }
  }
}

uint64_t sub_29D619694()
{
  swift_getObjectType();
  sub_29D5E1A44();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6004D0(v4);
  v5 = sub_29D65DAF4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_29D61A5A4(v4, sub_29D5E1A44);
  }

  sub_29D65DAB4();
  return (*(v6 + 8))(v4, v5);
}

id sub_29D6197B8()
{
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v0 = [qword_2A1A20BF8 noiseEnabled];
  v1 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];

  return v1;
}

uint64_t sub_29D619848(void *a1)
{
  v2 = v1;
  *(v2 + qword_2A17ACAE8) = 1;
  v4 = *(v2 + qword_2A17ACAD0);
  [v4 setNoiseEnabled_];

  if ([a1 BOOLValue])
  {
    v5 = v2 + qword_2A17ACAF8;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      swift_getObjectType();
      sub_29D65EDF4();
      sub_29D65EE94();
    }

    v7 = sub_29D618ABC();
    v8 = qword_2A17ACAF0;
    v9 = *(v2 + qword_2A17ACAF0);
    *(v2 + qword_2A17ACAF0) = v7;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v5 + 8);
      v12 = *(v2 + v8);
      if (v12 >> 62)
      {
        if (v12 < 0)
        {
          v23 = *(v2 + v8);
        }

        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        sub_29D6605B4();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_29D6606A4();
        if (!swift_dynamicCastMetatype())
        {
          v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            v20 = ((v12 & 0xFFFFFFFFFFFFFF8) + 32);
            do
            {
              if (!*v20)
              {
                break;
              }

              ++v20;
              --v19;
            }

            while (v19);
          }
        }
      }

      swift_getObjectType();
      v13 = *(v2 + qword_2A17ACAB8);
      v14 = *(v2 + qword_2A17ACAB8 + 8);
      sub_29D65EDE4();

      return sub_29D65EE94();
    }
  }

  else
  {
    v15 = *(v2 + qword_2A17ACAF0);
    *(v2 + qword_2A17ACAF0) = MEMORY[0x29EDCA190];
    v16 = v2 + qword_2A17ACAF8;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      if (v15 >> 62)
      {
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        sub_29D6605B4();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        sub_29D6606A4();
        if (!swift_dynamicCastMetatype())
        {
          v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
            v22 = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
            do
            {
              if (!*v22)
              {
                break;
              }

              ++v22;
              --v21;
            }

            while (v21);
          }
        }
      }

      swift_getObjectType();
      sub_29D65EE04();

      sub_29D65EE94();
    }

    else
    {
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v18 = *(v16 + 8);
      swift_getObjectType();
      sub_29D65EDF4();
      return sub_29D65EE94();
    }
  }

  return result;
}

void sub_29D619B98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D619848(v4);
}

id sub_29D619C00(char *a1)
{
  v2 = qword_2A17ACAD0;
  v3 = *&a1[qword_2A17ACAD0];
  v4 = a1;
  v5 = [*&a1[v2] localizedNoiseThresholdValue_];
  if (!v5)
  {
    sub_29D65FF64();
    v5 = sub_29D65FF24();
  }

  return v5;
}

void sub_29D619CA0(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *((*MEMORY[0x29EDCA1E8] & *Strong) + qword_2A17AD6E0 + 72);
    v5 = a1;
    v4();
  }

  else
  {
  }
}

uint64_t sub_29D619E20()
{
  v1 = *(v0 + qword_2A17ACAB0 + 8);

  v2 = *(v0 + qword_2A17ACAB8 + 8);

  v3 = *(v0 + qword_2A17ACAC0 + 8);

  v4 = *(v0 + qword_2A17ACAC8 + 8);

  v5 = *(v0 + qword_2A17ACAE0);

  v6 = *(v0 + qword_2A17ACAF0);

  sub_29D5DBB60(v0 + qword_2A17ACAF8);
  v7 = v0 + qword_2A17ACB00;

  return sub_29D5DBB60(v7);
}

uint64_t sub_29D619F08(uint64_t a1)
{
  v2 = *(a1 + qword_2A17ACAB0 + 8);

  v3 = *(a1 + qword_2A17ACAB8 + 8);

  v4 = *(a1 + qword_2A17ACAC0 + 8);

  v5 = *(a1 + qword_2A17ACAC8 + 8);

  v6 = *(a1 + qword_2A17ACAE0);

  v7 = *(a1 + qword_2A17ACAF0);

  sub_29D5DBB60(a1 + qword_2A17ACAF8);
  v8 = a1 + qword_2A17ACB00;

  return sub_29D5DBB60(v8);
}

uint64_t sub_29D61A05C()
{
  v1 = v0 + qword_2A17ACAF8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D61A0AC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A17ACAF8;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D65EE94();
}

void (*sub_29D61A118(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17ACAF8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D60AC44;
}

void (*sub_29D61A1B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29D65EE74();
  return sub_29D60AD5C;
}

uint64_t sub_29D61A248(uint64_t a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = qword_2A17ACB30;
  v3 = objc_allocWithZone(type metadata accessor for NoiseAvailability());
  *(a1 + v2) = sub_29D5E98A4(0);
  result = sub_29D660594();
  __break(1u);
  return result;
}

void sub_29D61A32C()
{
  sub_29D65ED74();
  v1 = *&v0[qword_2A17ACB28];
  v2 = *&v0[qword_2A17ACB30];
  v3 = objc_allocWithZone(type metadata accessor for NoiseThresholdSpecifierViewController(0));
  v6 = sub_29D64F030(v1, v2);
  v4 = [v0 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v6 animated:1];
  }
}

void sub_29D61A424()
{
  v1 = *(v0 + qword_2A17ACB30);
}

id sub_29D61A47C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D61A4BC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17ACB30);
}

void sub_29D61A510()
{
  if (!qword_2A17ACB48)
  {
    sub_29D605AB8();
    sub_29D61AB20(&qword_2A17AC770, sub_29D605AB8);
    v0 = sub_29D65F7E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACB48);
    }
  }
}

uint64_t sub_29D61A5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29D61A614(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  sub_29D61AB68(0, &unk_2A17AC838, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v22 - v10;
  v12 = (v3 + qword_2A17ACAB0);
  *v12 = 0xD000000000000029;
  v12[1] = 0x800000029D668420;
  v13 = (v3 + qword_2A17ACAB8);
  *v13 = 0xD00000000000002ALL;
  v13[1] = 0x800000029D668450;
  v14 = (v3 + qword_2A17ACAC0);
  *v14 = 0xD000000000000018;
  v14[1] = 0x800000029D668480;
  v15 = (v3 + qword_2A17ACAC8);
  *v15 = 0xD00000000000001CLL;
  v15[1] = 0x800000029D6684A0;
  *(v3 + qword_2A17ACAE0) = 0;
  *(v3 + qword_2A17ACAE8) = 0;
  *(v3 + qword_2A17ACAF0) = MEMORY[0x29EDCA190];
  *(v3 + qword_2A17ACAF8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17ACB00 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17ACAD0) = a1;
  *(v3 + qword_2A17ACAD8) = a2;
  sub_29D600638();
  v16 = sub_29D65E314();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a3, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  v18 = a1;
  v19 = a2;
  v20 = sub_29D65E304();
  sub_29D618F90();

  (*(v17 + 8))(a3, v16);
  return v20;
}

id sub_29D61A8C8(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v24[3] = a3;
  swift_getObjectType();
  v7 = sub_29D65E314();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_2A17ACB30;
  v14 = objc_allocWithZone(type metadata accessor for NoiseAvailability());
  v15 = sub_29D5E98A4(0);
  *(v4 + v13) = v15;
  *(v4 + qword_2A17ACB28) = a1;
  (*(v8 + 16))(v12, a2, v7);
  objc_allocWithZone(type metadata accessor for NoiseNotificationsSpecifierDataSource(0));
  v16 = a1;
  v17 = v15;
  v18 = sub_29D61A614(v16, v17, v12);

  sub_29D61AB20(&qword_2A17ACB58, type metadata accessor for NoiseNotificationsSpecifierDataSource);
  v19 = v18;
  v20 = sub_29D65ED84();
  *&v19[qword_2A17ACB00 + 8] = &off_2A2432B60;
  swift_unknownObjectWeakAssign();
  v21 = v20;
  sub_29D600598();
  v22 = sub_29D65FF24();

  [v21 setTitle_];

  (*(v8 + 8))(a2, v7);
  return v21;
}

uint64_t sub_29D61AB20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D61AB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_29D61ABCC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_29D65FF64();
  v6 = v5;

  v7 = v4 == 0xD00000000000002ALL && 0x800000029D665B90 == v6;
  if (v7 || (sub_29D660694() & 1) != 0)
  {

    v8 = type metadata accessor for NoiseNotificationsDataTypeDetailConfigurationProvider();
    v9 = [objc_allocWithZone(v8) init];
    *(a2 + 24) = v8;
    v10 = &unk_2A17ACB68;
    v11 = type metadata accessor for NoiseNotificationsDataTypeDetailConfigurationProvider;
LABEL_7:
    *(a2 + 32) = sub_29D61AD90(v10, v11);
    *a2 = v9;
    return result;
  }

  if (v4 == 0xD000000000000033 && 0x800000029D665BC0 == v6)
  {

    goto LABEL_15;
  }

  v14 = sub_29D660694();

  if (v14)
  {
LABEL_15:
    v15 = type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider();
    v9 = [objc_allocWithZone(v15) init];
    *(a2 + 24) = v15;
    v10 = &unk_2A17ACB60;
    v11 = type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider;
    goto LABEL_7;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_29D61AD90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D61ADD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for AudiogramPDFProviderRequest();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D61AEC8, 0, 0);
}

uint64_t sub_29D61AEC8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];
  v4 = *(v2 + 20);
  v5 = sub_29D65DBC4();
  v6 = *(*(v5 - 8) + 56);
  v6(&v1[v4], 1, 1, v5);
  v7 = *(v2 + 24);
  sub_29D65DBA4();
  v6(&v1[v7], 0, 1, v5);
  *v1 = v3;
  sub_29D61B87C(v3);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_29D61B010;
  v9 = v0[8];
  v10 = v0[3];

  return sub_29D5EC6BC(v9);
}

uint64_t sub_29D61B010(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_29D61B7DC;
  }

  else
  {
    v5 = sub_29D61B124;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

size_t sub_29D61B124()
{
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_140;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v95 = MEMORY[0x29EDCA190];
      result = sub_29D5F9060(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        break;
      }

      v4 = 0;
      v94 = v0[4];
      v5 = v95;
      v86 = v2;
      v87 = v1 & 0xC000000000000001;
      v84 = v1 & 0xFFFFFFFFFFFFFF8;
      v85 = v0[5];
      v83 = v0[10] + 32;
      v1 = &qword_2A2431300;
      v89 = v0;
      while (1)
      {
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v93 = v5;
        if (v87)
        {
          v7 = v0[10];
          v8 = MEMORY[0x29ED62900]();
        }

        else
        {
          if (v4 >= *(v84 + 16))
          {
            goto LABEL_139;
          }

          v8 = *(v83 + 8 * v4);
        }

        v91 = v6;
        v92 = v6;
        v9 = v0[6];
        v90 = v8;
        sub_29D5E03E4(v90, v9);
        v10 = 0;
        v11 = *(v9 + *(type metadata accessor for AudiogramPDFChartData() + 36));
        v12 = *(v11 + 16);
        v13 = MEMORY[0x29EDCA190];
LABEL_11:
        v14 = fmax(*&qword_2A2431300, 62.5);
        if (v14 < unk_2A2431308)
        {
          v14 = unk_2A2431308;
        }

        if (v14 < *&qword_2A2431310)
        {
          v14 = *&qword_2A2431310;
        }

        if (v14 < unk_2A2431318)
        {
          v14 = unk_2A2431318;
        }

        if (v14 < *&qword_2A2431320)
        {
          v14 = *&qword_2A2431320;
        }

        if (v14 < unk_2A2431328)
        {
          v14 = unk_2A2431328;
        }

        if (v14 < *&qword_2A2431330)
        {
          v14 = *&qword_2A2431330;
        }

        v15 = fmin(*&qword_2A2431300, 62.5);
        if (unk_2A2431308 < v15)
        {
          v15 = unk_2A2431308;
        }

        if (*&qword_2A2431310 < v15)
        {
          v15 = *&qword_2A2431310;
        }

        if (unk_2A2431318 < v15)
        {
          v15 = unk_2A2431318;
        }

        if (*&qword_2A2431320 < v15)
        {
          v15 = *&qword_2A2431320;
        }

        if (unk_2A2431328 < v15)
        {
          v15 = unk_2A2431328;
        }

        if (*&qword_2A2431330 < v15)
        {
          v15 = *&qword_2A2431330;
        }

        if (unk_2A2431338 >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = unk_2A2431338;
        }

        if (v14 >= unk_2A2431338)
        {
          v17 = v14;
        }

        else
        {
          v17 = unk_2A2431338;
        }

        v18 = round(v17);
        v19 = round(v16);
        v20 = v11 + 40 * v10;
        while (v12 != v10)
        {
          if (v10 >= *(v11 + 16))
          {
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (v19 > v18)
          {
            goto LABEL_135;
          }

          v21 = (v20 + 40);
          ++v10;
          v22 = *(v20 + 32);
          v23 = v19 > v22 || v22 > v18;
          v20 += 40;
          if (!v23)
          {
            v88 = *v21;
            v24 = *(v21 + 4);
            v25 = v21[2];
            v26 = *(v21 + 12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_29D65B21C(0, *(v13 + 2) + 1, 1, v13);
            }

            v28 = *(v13 + 2);
            v27 = *(v13 + 3);
            if (v28 >= v27 >> 1)
            {
              v13 = sub_29D65B21C((v27 > 1), v28 + 1, 1, v13);
            }

            *(v13 + 2) = v28 + 1;
            v29 = &v13[40 * v28];
            *(v29 + 4) = v22;
            *(v29 + 5) = v88;
            *(v29 + 24) = v24;
            *(v29 + 7) = v25;
            *(v29 + 32) = v26;
            v0 = v89;
            goto LABEL_11;
          }
        }

        v30 = *(v13 + 2);
        if (v30)
        {
          v31 = (v13 + 64);
          while (1)
          {
            v32 = *(v31 - 8);
            v33 = *v31;
            if (v32 != 2)
            {
              v34 = v32 & 0xFF00;
              v35 = v32 & 0x100;
              if (v34 != 512 && v35 == 0)
              {
                break;
              }
            }

            if (*v31 != 2)
            {
              v37 = v33 & 0xFF00;
              v38 = v33 & 0x100;
              if (v37 != 512 && v38 == 0)
              {
                break;
              }
            }

            v31 += 20;
            if (!--v30)
            {
              goto LABEL_69;
            }
          }

          v40 = 1;
        }

        else
        {
LABEL_69:
          v40 = 0;
        }

        v41 = v0[6];

        v42 = 0;
        *(v41 + v94[5]) = v40;
        v43 = *(v11 + 16);
        v44 = MEMORY[0x29EDCA190];
LABEL_71:
        v45 = fmax(*&qword_2A2431300, 62.5);
        if (v45 < unk_2A2431308)
        {
          v45 = unk_2A2431308;
        }

        if (v45 < *&qword_2A2431310)
        {
          v45 = *&qword_2A2431310;
        }

        if (v45 < unk_2A2431318)
        {
          v45 = unk_2A2431318;
        }

        if (v45 < *&qword_2A2431320)
        {
          v45 = *&qword_2A2431320;
        }

        if (v45 < unk_2A2431328)
        {
          v45 = unk_2A2431328;
        }

        if (v45 < *&qword_2A2431330)
        {
          v45 = *&qword_2A2431330;
        }

        v46 = fmin(*&qword_2A2431300, 62.5);
        if (unk_2A2431308 < v46)
        {
          v46 = unk_2A2431308;
        }

        if (*&qword_2A2431310 < v46)
        {
          v46 = *&qword_2A2431310;
        }

        if (unk_2A2431318 < v46)
        {
          v46 = unk_2A2431318;
        }

        if (*&qword_2A2431320 < v46)
        {
          v46 = *&qword_2A2431320;
        }

        if (unk_2A2431328 < v46)
        {
          v46 = unk_2A2431328;
        }

        if (*&qword_2A2431330 < v46)
        {
          v46 = *&qword_2A2431330;
        }

        if (unk_2A2431338 >= v46)
        {
          v47 = v46;
        }

        else
        {
          v47 = unk_2A2431338;
        }

        if (v45 >= unk_2A2431338)
        {
          v48 = v45;
        }

        else
        {
          v48 = unk_2A2431338;
        }

        v49 = round(v48);
        v50 = round(v47);
        v51 = v11 + 40 * v42;
        while (v43 != v42)
        {
          if (v42 >= *(v11 + 16))
          {
            goto LABEL_136;
          }

          if (v50 > v49)
          {
            goto LABEL_137;
          }

          v52 = (v51 + 40);
          ++v42;
          v53 = *(v51 + 32);
          v54 = v50 > v53 || v53 > v49;
          v51 += 40;
          if (!v54)
          {
            v55 = *v52;
            v56 = *(v52 + 4);
            v57 = v52[2];
            v58 = *(v52 + 12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_29D65B21C(0, *(v44 + 2) + 1, 1, v44);
            }

            v60 = *(v44 + 2);
            v59 = *(v44 + 3);
            if (v60 >= v59 >> 1)
            {
              v44 = sub_29D65B21C((v59 > 1), v60 + 1, 1, v44);
            }

            *(v44 + 2) = v60 + 1;
            v61 = &v44[40 * v60];
            *(v61 + 4) = v53;
            *(v61 + 5) = v55;
            *(v61 + 24) = v56;
            *(v61 + 7) = v57;
            *(v61 + 32) = v58;
            v0 = v89;
            v1 = &qword_2A2431300;
            goto LABEL_71;
          }
        }

        v62 = *(v44 + 2);
        if (v62)
        {
          v63 = v44 + 64;
          v64 = v86;
          v5 = v93;
          while (*(v63 - 8) == 2 || (*(v63 - 8) & 0x100) == 0)
          {
            if (*v63 != 2 && (*v63 & 0x100) != 0)
            {
              break;
            }

            v63 += 20;
            if (!--v62)
            {
              v67 = 0;
              goto LABEL_130;
            }
          }

          v67 = 1;
        }

        else
        {
          v67 = 0;
          v64 = v86;
          v5 = v93;
        }

LABEL_130:
        v68 = v0[6];

        *(v68 + v94[6]) = v67;
        *(v68 + v94[7]) = sub_29D62C128(v90) & 1;
        v69 = [v90 localizedIngestionSource];
        v70 = sub_29D65FF64();
        v72 = v71;

        v73 = (v68 + v94[8]);
        *v73 = v70;
        v73[1] = v72;
        v75 = *(v5 + 16);
        v74 = *(v5 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_29D5F9060(v74 > 1, v75 + 1, 1);
        }

        v76 = v0[6];
        *(v5 + 16) = v75 + 1;
        sub_29D61B8E8(v76, v5 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v75);
        v4 = v92;
        if (v91 == v64)
        {
          v77 = v0[10];
          sub_29D61B88C(v0[8]);

          goto LABEL_142;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      v2 = sub_29D6604B4();
      if (!v2)
      {
        goto LABEL_141;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_141:
    v78 = v0[10];
    v79 = v0[8];

    sub_29D61B88C(v79);
    v5 = MEMORY[0x29EDCA190];
LABEL_142:
    v80 = v0[8];
    v81 = v0[6];

    v82 = v0[1];

    return v82(v5);
  }

  return result;
}

uint64_t sub_29D61B7DC()
{
  v1 = v0[6];
  sub_29D61B88C(v0[8]);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

id sub_29D61B87C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_29D61B88C(uint64_t a1)
{
  v2 = type metadata accessor for AudiogramPDFProviderRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D61B8E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D61B95C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_29D61DC2C(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v37 - v7;
  if (a1)
  {
    type metadata accessor for HearingAppPluginDelegate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = [v10 bundleForClass_];
    v12 = sub_29D65DA74();
    v14 = v13;

    *a2 = v12;
    a2[1] = v14;
    v15 = [v10 bundleForClass_];
    v16 = sub_29D65DA74();
    v18 = v17;

    a2[2] = v16;
    a2[3] = v18;
    a2[4] = 0;
    a2[5] = 0;
    sub_29D65DAE4();
    v19 = sub_29D65DAF4();
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v8, 1, v19);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_29D60E298(0, v22);
      v24 = *(v23 + 80);
      (*(v20 + 32))(a2 + v24, v8, v19);
      v25 = *MEMORY[0x29EDC15C0];
      v26 = sub_29D65DFD4();
      (*(*(v26 - 8) + 104))(a2 + v24, v25, v26);
      v27 = *MEMORY[0x29EDC15E8];
      v28 = sub_29D65DFE4();
      return (*(*(v28 - 8) + 104))(a2, v27, v28);
    }
  }

  else
  {
    type metadata accessor for HearingAppPluginDelegate();
    v29 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_29D65DA74();
    v33 = v32;

    *a2 = v31;
    a2[1] = v33;
    *(a2 + 16) = 0;
    v34 = *MEMORY[0x29EDC1630];
    v35 = sub_29D65DFE4();
    v36 = *(*(v35 - 8) + 104);

    return v36(a2, v34, v35);
  }

  return result;
}

uint64_t sub_29D61BD64(void *a1)
{
  v2 = sub_29D65FCA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65FCC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v14 = sub_29D6602B4();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = sub_29D61DC0C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A2432C20;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  sub_29D65FCB4();
  v19[1] = MEMORY[0x29EDCA190];
  sub_29D612390();
  sub_29D61DC2C(0, &qword_2A17AC0F8, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D61244C();
  sub_29D660484();
  MEMORY[0x29ED62660](0, v13, v7, v16);
  _Block_release(v16);

  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v13, v8);
}

void sub_29D61C018(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D65DA74();

  sub_29D5F3928(2u);
  v4 = objc_allocWithZone(sub_29D65E004());
  v7 = sub_29D65DFF4();
  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }

  else
  {
  }
}

uint64_t sub_29D61C1D0()
{
  if (qword_2A1A1EA08 != -1)
  {
    swift_once();
  }

  return sub_29D61C534(&unk_2A1A20BA8);
}

uint64_t sub_29D61C288()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D61C344()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D61C410()
{
  sub_29D6124D4(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D61C4E4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = a1[5];
  v4 = sub_29D5E32A8(a1, v1);

  return sub_29D61CF8C(v4, v1, v2);
}

uint64_t sub_29D61C534(uint64_t a1)
{
  sub_29D5F4278(a1, v84);
  sub_29D5EAD50(v84, v81);
  v1 = v82;
  if (v82)
  {
    v2 = v83;
    sub_29D5E32A8(v81, v82);
    v71 = (*(v2 + 8))(v1, v2);
    sub_29D61CF38(v84);
    sub_29D5DF1C4(v81);
  }

  else
  {
    sub_29D61CF38(v84);
    sub_29D5EADE0(v81);
    v71 = 0;
  }

  sub_29D61DC2C(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v80 = sub_29D65DFE4();
  v3 = *(v80 - 8);
  v79 = *(v3 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v73 = v4;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_29D663D50;
  v5 = v72 + v4;
  *v5 = sub_29D61DA2C();
  *(v5 + 8) = 0;
  v70 = *MEMORY[0x29EDC1608];
  v6 = *(v3 + 104);
  v76 = v72 + v4;
  v6(v72 + v4);
  v7 = (v72 + v4 + v79);
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = objc_opt_self();
  v9 = [v75 bundleForClass_];
  v10 = sub_29D65DA74();
  v12 = v11;

  *v7 = v10;
  v7[1] = v12;
  (v6)(v7, *MEMORY[0x29EDC1610], v80);
  v13 = (v76 + 2 * v79);
  v14 = [v75 bundleForClass_];
  v15 = sub_29D65DA74();
  v17 = v16;

  *v13 = v15;
  v13[1] = v17;
  v13[2] = 0;
  v74 = *MEMORY[0x29EDC15D0];
  v6(v13);
  v18 = v76 + 3 * v79;
  v19 = [v75 bundleForClass_];
  v20 = sub_29D65DA74();
  v22 = v21;

  *v18 = v20;
  *(v18 + 8) = v22;
  *(v18 + 16) = 0;
  v78 = *MEMORY[0x29EDC1630];
  v6(v18);
  v23 = v76 + 4 * v79;
  v24 = [v75 bundleForClass_];
  v25 = sub_29D65DA74();
  v27 = v26;

  *v23 = v25;
  *(v23 + 8) = v27;
  *(v23 + 16) = 0;
  (v6)(v23, v78, v80);
  v28 = (v76 + 5 * v79);
  v29 = [v75 bundleForClass_];
  v30 = sub_29D65DA74();
  v32 = v31;

  *v28 = v30;
  v28[1] = v32;
  v28[2] = 0;
  (v6)(v28, v74, v80);
  v33 = v76 + 6 * v79;
  v34 = [v75 bundleForClass_];
  v35 = sub_29D65DA74();
  v37 = v36;

  *v33 = v35;
  *(v33 + 8) = v37;
  *(v33 + 16) = 0;
  (v6)(v33, v78, v80);
  sub_29D61B95C(v71 & 1, (v76 + 7 * v79));
  v38 = v76 + 8 * v79;
  *v38 = sub_29D61DB1C();
  *(v38 + 8) = 1;
  (v6)(v38, v70, v80);
  v39 = v76 + 9 * v79;
  v40 = [v75 bundleForClass_];
  v41 = sub_29D65DA74();
  v43 = v42;

  *v39 = v41;
  *(v39 + 8) = v43;
  *(v39 + 16) = 0;
  (v6)(v39, v78, v80);
  v44 = sub_29D60F644(3);
  sub_29D65A3F0(v44);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_29D661ED0;
  v45 = (v77 + v73);
  v46 = [v75 bundleForClass_];
  v47 = sub_29D65DA74();
  v49 = v48;

  *v45 = v47;
  v45[1] = v49;
  v45[2] = 0;
  (v6)(v77 + v73, v74, v80);
  v50 = (v77 + v73 + v79);
  sub_29D60E298(0, v51);
  v53 = (v50 + *(v52 + 80));
  v54 = [v75 bundleForClass_];
  v55 = sub_29D65DA74();
  v57 = v56;

  *v50 = v55;
  v50[1] = v57;
  v58 = [v75 bundleForClass_];
  v59 = sub_29D65DA74();
  v61 = v60;

  v50[2] = v59;
  v50[3] = v61;
  v50[4] = 0;
  v50[5] = 0;
  *v53 = sub_29D61BD64;
  v53[1] = 0;
  v62 = *MEMORY[0x29EDC15B8];
  v63 = sub_29D65DFD4();
  (*(*(v63 - 8) + 104))(v53, v62, v63);
  (v6)(v50, *MEMORY[0x29EDC15E8], v80);
  v64 = v77 + v73 + 2 * v79;
  v65 = [v75 bundleForClass_];
  v66 = sub_29D65DA74();
  v68 = v67;

  *v64 = v66;
  *(v64 + 8) = v68;
  *(v64 + 16) = 0;
  (v6)(v64, v78, v80);
  sub_29D65A3F0(v77);
  return v72;
}

uint64_t sub_29D61CF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v113 = a2;
  v114 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v9 = *(v8 + 16);
  v112 = v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v106 = (*(a3 + 8))(a2, a3);
  sub_29D61DC2C(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v110 = v10;
  v11 = sub_29D65DFE4();
  v12 = *(*(v11 - 8) + 80);
  v13 = *(v11 - 8);
  v14 = *(v13 + 72);
  v15 = (v12 + 32) & ~v12;
  v108 = v15;
  v109 = v12;
  v16 = swift_allocObject();
  v107 = v16;
  *(v16 + 16) = xmmword_29D663D50;
  v17 = v16 + v15;
  *v17 = sub_29D61DA2C();
  *(v17 + 8) = 0;
  v105 = *MEMORY[0x29EDC1608];
  v125 = *(v13 + 104);
  v125(v17);
  v124 = v13 + 104;
  v18 = (v17 + v14);
  v121 = v17;
  v119 = v14;
  v117 = "headphone_listening_hero_image";
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v123 = objc_opt_self();
  v116 = ObjCClassFromMetadata;
  v20 = [v123 bundleForClass_];
  v21 = sub_29D65DA74();
  v23 = v22;

  *v18 = v21;
  v18[1] = v23;
  v24 = *MEMORY[0x29EDC1610];
  v118 = v11;
  v25 = v125;
  (v125)(v17 + v14, v24, v11);
  v14 *= 2;
  v26 = (v17 + v14);
  v111 = v14;
  v27 = v123;
  v28 = [v123 bundleForClass_];
  v29 = sub_29D65DA74();
  v31 = v30;

  *v26 = v29;
  v26[1] = v31;
  v26[2] = 0;
  v115 = *MEMORY[0x29EDC15D0];
  v25(v26);
  v32 = v119;
  v104[1] = v14 + v119;
  v33 = v121 + v14 + v119;
  v34 = v116;
  v35 = [v27 bundleForClass_];
  v120 = 0xD000000000000013;
  v36 = sub_29D65DA74();
  v38 = v37;

  *v33 = v36;
  *(v33 + 8) = v38;
  *(v33 + 16) = 0;
  v122 = *MEMORY[0x29EDC1630];
  v125(v33);
  v39 = v121;
  v40 = v121 + 4 * v32;
  v41 = v123;
  v42 = [v123 bundleForClass_];
  v43 = sub_29D65DA74();
  v45 = v44;

  *v40 = v43;
  *(v40 + 8) = v45;
  *(v40 + 16) = 0;
  v46 = v118;
  v47 = v125;
  (v125)(v39 + 4 * v32, v122, v118);
  v48 = (v39 + 5 * v32);
  v49 = v116;
  v50 = [v41 bundleForClass_];
  v51 = sub_29D65DA74();
  v53 = v52;

  *v48 = v51;
  v48[1] = v53;
  v48[2] = 0;
  (v47)(v48, v115, v46);
  v54 = v119;
  v55 = v121 + 6 * v119;
  v56 = [v41 bundleForClass_];
  v57 = sub_29D65DA74();
  v59 = v58;

  *v55 = v57;
  *(v55 + 8) = v59;
  *(v55 + 16) = 0;
  v60 = v46;
  v61 = v125;
  (v125)(v55, v122, v46);
  v62 = v121;
  sub_29D61B95C(v106 & 1, (v121 + 7 * v54));
  v63 = v62 + 8 * v54;
  *v63 = sub_29D61DB1C();
  *(v63 + 8) = 1;
  (v61)(v63, v105, v46);
  v64 = v61;
  v65 = v62 + 9 * v54;
  v66 = v123;
  v67 = v116;
  v68 = [v123 bundleForClass_];
  v69 = sub_29D65DA74();
  v71 = v70;

  *v65 = v69;
  *(v65 + 8) = v71;
  *(v65 + 16) = 0;
  (v64)(v65, v122, v60);
  v72 = sub_29D60F644(3);
  v126 = v107;
  sub_29D65A3F0(v72);
  v73 = v108;
  v74 = swift_allocObject();
  v121 = v74;
  *(v74 + 16) = xmmword_29D661ED0;
  v75 = (v74 + v73);
  v76 = [v66 bundleForClass_];
  v77 = sub_29D65DA74();
  v79 = v78;

  *v75 = v77;
  v75[1] = v79;
  v75[2] = 0;
  (v64)(v75, v115, v60);
  v80 = (v75 + v119);
  sub_29D60E298(0, v81);
  v83 = (v80 + *(v82 + 80));
  v84 = v123;
  v85 = [v123 bundleForClass_];
  v86 = sub_29D65DA74();
  v88 = v87;

  *v80 = v86;
  v80[1] = v88;
  v89 = [v84 bundleForClass_];
  v90 = sub_29D65DA74();
  v92 = v91;

  v80[2] = v90;
  v80[3] = v92;
  v80[4] = 0;
  v80[5] = 0;
  *v83 = sub_29D61BD64;
  v83[1] = 0;
  v93 = *MEMORY[0x29EDC15B8];
  v94 = sub_29D65DFD4();
  (*(*(v94 - 8) + 104))(v83, v93, v94);
  v95 = v118;
  v96 = v125;
  (v125)(v80, *MEMORY[0x29EDC15E8], v118);
  v97 = v75 + v111;
  v98 = [v123 bundleForClass_];
  v99 = sub_29D65DA74();
  v101 = v100;

  *v97 = v99;
  *(v97 + 1) = v101;
  v97[16] = 0;
  (v96)(v97, v122, v95);
  sub_29D65A3F0(v121);
  v102 = v126;
  (*(v114 + 8))(v112, v113);
  return v102;
}

id sub_29D61DA2C()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

id sub_29D61DB1C()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D61DC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D61DC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D61DC9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x29EDBA508];
  v3 = HKCurrentLocaleCountryCodeIfUnknown();
  v4 = *MEMORY[0x29EDBA500];
  v5 = sub_29D65FF64();
  v7 = v6;
  if (v5 == sub_29D65FF64() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_29D660694();

    if ((v10 & 1) == 0)
    {
      v11 = sub_29D65E774();
      goto LABEL_9;
    }
  }

  v11 = type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage();
LABEL_9:
  *a1 = v11;
  v12 = *MEMORY[0x29EDC20A8];
  v13 = sub_29D65E764();
  v14 = *(*(v13 - 8) + 104);

  return v14(a1, v12, v13);
}

uint64_t sub_29D61DDCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v36 = a1;
  v38 = a2;
  v37 = sub_29D65E954();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v37, v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65E764();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_29D65E604();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D65ECA4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E8E70(v3 + 24, v39);
  sub_29D65EC94();
  v25 = sub_29D65E8D4();
  (*(v20 + 8))(v24, v19);
  sub_29D61F348();
  v26 = sub_29D65E8D4();
  (*(v14 + 104))(v18, *MEMORY[0x29EDC1F40], v13);
  sub_29D61DC9C(v12);
  v27 = swift_allocObject();
  v29 = v35;
  v28 = v36;
  v27[2] = v36;
  v27[3] = v3;
  v27[4] = v25;
  v27[5] = v26;
  (*(v4 + 104))(v29, *MEMORY[0x29EDC22A0], v37);
  v30 = sub_29D65E624();
  v31 = MEMORY[0x29EDC1F50];
  v32 = v38;
  v38[3] = v30;
  v32[4] = v31;
  sub_29D5E3C20(v32);
  sub_29D61B87C(v28);

  return sub_29D65E614();
}

uint64_t sub_29D61E108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_29D61F3A8();
    v9 = v8;
    v43 = v8;
    v10 = sub_29D61F484(&qword_2A17ACBA0, sub_29D61F3A8);
    v44 = v10;
    v41 = v10;
    v42[0] = a3;
    v40 = v9;
    v39[0] = a4;
    v11 = *(a2 + 16);
    sub_29D5E8C84(v42, &v45);
    sub_29D5E8C84(v39, &v36);
    v12 = type metadata accessor for AudiogramPDFAudiogramSectionProvider();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    type metadata accessor for AudiogramPDFChartDataSource();
    v14 = swift_allocObject();
    v15 = v46;
    *(v13 + 32) = v45;
    *(v13 + 48) = v15;
    v16 = v37;
    *(v13 + 72) = v36;
    *(v14 + 16) = v11;
    *(v13 + 24) = v14;
    *(v13 + 64) = v47;
    *(v13 + 88) = v16;
    *(v13 + 104) = v38;
    *(&v46 + 1) = v12;
    v47 = sub_29D61F484(&qword_2A17ACBA8, type metadata accessor for AudiogramPDFAudiogramSectionProvider);
    *&v45 = v13;

    v17 = v11;
    sub_29D61B87C(a1);
    sub_29D5E8D7C(v39);
    sub_29D5E8D7C(v42);
    v18 = sub_29D65EA74();
    sub_29D5DF1C4(&v45);
    v43 = v9;
    v44 = v10;
    v41 = v10;
    v42[0] = a3;
    v40 = v9;
    v39[0] = a4;
    sub_29D61E590(v42, v39, &v45);

    sub_29D5E8D7C(v39);
    sub_29D5E8D7C(v42);
    v19 = sub_29D65EA74();
    sub_29D5DF1C4(&v45);
    sub_29D61F4CC();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29D661D20;
    *(v20 + 32) = v18;
  }

  else
  {
    sub_29D61F3A8();
    v22 = v21;
    v43 = v21;
    v23 = sub_29D61F484(&qword_2A17ACBA0, sub_29D61F3A8);
    v44 = v23;
    v41 = v23;
    v42[0] = a3;
    v40 = v22;
    v39[0] = a4;
    sub_29D61E590(v42, v39, &v45);

    sub_29D5E8D7C(v39);
    sub_29D5E8D7C(v42);
    v24 = sub_29D65EA74();
    sub_29D5DF1C4(&v45);
    v43 = v22;
    v44 = v23;
    v41 = v23;
    v42[0] = a3;
    v40 = v22;
    v39[0] = a4;
    v25 = *(a2 + 16);
    sub_29D5E8C84(v42, &v45);
    sub_29D5E8C84(v39, &v36);
    v26 = type metadata accessor for AudiogramPDFAudiogramSectionProvider();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    type metadata accessor for AudiogramPDFChartDataSource();
    v28 = swift_allocObject();
    v29 = v46;
    *(v27 + 32) = v45;
    *(v27 + 48) = v29;
    v30 = v37;
    *(v27 + 72) = v36;
    *(v28 + 16) = v25;
    *(v27 + 24) = v28;
    *(v27 + 64) = v47;
    *(v27 + 88) = v30;
    *(v27 + 104) = v38;
    *(&v46 + 1) = v26;
    v47 = sub_29D61F484(&qword_2A17ACBA8, type metadata accessor for AudiogramPDFAudiogramSectionProvider);
    *&v45 = v27;

    v31 = v25;
    sub_29D5E8D7C(v39);
    sub_29D5E8D7C(v42);
    v19 = sub_29D65EA74();
    sub_29D5DF1C4(&v45);
    sub_29D61F4CC();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29D661D20;
    *(v20 + 32) = v24;
  }

  *(v20 + 40) = v19;
  sub_29D65EA44();

  v32 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  sub_29D61F4CC();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29D661D90;
  *(v33 + 32) = v32;
  v34 = sub_29D65EA44();

  return v34;
}

id sub_29D61E590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  sub_29D5E8C84(a1, v16);
  sub_29D5E8C84(a2, v14);
  v7 = type metadata accessor for AudiogramPDFOverviewSectionProvider();
  v8 = swift_allocObject();
  *(v8 + 24) = v6;
  type metadata accessor for AudiogramPDFLongitudinalChartDataSource();
  v9 = swift_allocObject();
  v10 = v16[1];
  *(v8 + 32) = v16[0];
  *(v8 + 48) = v10;
  v11 = v14[1];
  *(v8 + 72) = v14[0];
  *(v9 + 16) = v6;
  *(v8 + 16) = v9;
  *(v8 + 64) = v17;
  *(v8 + 88) = v11;
  *(v8 + 104) = v15;
  a3[3] = v7;
  a3[4] = sub_29D61F484(&qword_2A17ACBC8, type metadata accessor for AudiogramPDFOverviewSectionProvider);
  *a3 = v8;
  v12 = v6;

  return v12;
}

uint64_t sub_29D61E694(void *a1)
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v3 = sub_29D61EF70(*(v1 + 16));
  v6[8] = sub_29D65E754();
  v6[9] = MEMORY[0x29EDC20A0];
  v6[5] = v3;
  sub_29D61DDCC(a1, v6);
  v4 = objc_allocWithZone(sub_29D65E924());
  return sub_29D65E914();
}

uint64_t sub_29D61E7AC()
{
  sub_29D5DF1C4((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudiogramPDFProviderRequest()
{
  result = qword_2A17ACB70;
  if (!qword_2A17ACB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D61E884()
{
  sub_29D61F2E4(319, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D61E930(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29D61E948(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D61E99C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_29D61E9F8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_29D61EA28()
{
  sub_29D65E454();
  v0 = sub_29D65E444();
  v1 = [v0 CGColor];

  v9 = sub_29D65E944();
  v10 = MEMORY[0x29EDC2290];
  sub_29D5E3C20(v8);
  sub_29D65E934();
  v2 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  v9 = sub_29D65E684();
  v10 = MEMORY[0x29EDC1FC0];
  sub_29D5E3C20(v8);
  sub_29D65E694();
  v3 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  sub_29D61EB84(v8);
  v4 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  sub_29D61F564(0, &qword_2A17AC348, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D661ED0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  v6 = MEMORY[0x29ED60BF0]();

  return v6;
}

uint64_t sub_29D61EB84@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D65E634();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x29EDBA508];
  v9 = HKCurrentLocaleCountryCodeIfUnknown();
  v10 = *MEMORY[0x29EDBA500];
  v11 = sub_29D65FF64();
  v13 = v12;
  if (v11 == sub_29D65FF64() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_29D660694();

    if ((v16 & 1) == 0)
    {
      v17 = sub_29D65E584();
      v18 = MEMORY[0x29EDC1DD0];
      a1[3] = v17;
      a1[4] = v18;
      sub_29D5E3C20(a1);
      return sub_29D65E574();
    }
  }

  if (qword_2A17AC038 != -1)
  {
    swift_once();
  }

  v20 = qword_2A17AD698;
  v21 = *MEMORY[0x29EDC7640];
  v22 = objc_opt_self();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v23 = [v22 clearColor];
  v34 = sub_29D5ED468();
  *&v33 = v23;
  sub_29D5E20A8(&v33, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v20;
  sub_29D62B790(v32, v21, isUniquelyReferenced_nonNull_native);
  v25 = v31;
  if (qword_2A17AC030 != -1)
  {
    swift_once();
  }

  v26 = qword_2A17AD688;
  v27 = unk_2A17AD690;
  (*(v3 + 104))(v7, *MEMORY[0x29EDC1F60], v2);
  v28 = sub_29D65F124();
  v29 = MEMORY[0x29EDC2C00];
  a1[3] = v28;
  a1[4] = v29;
  sub_29D5E3C20(a1);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return MEMORY[0x29ED614D0](v26, v27, v7, v25);
}

uint64_t sub_29D61EE80()
{
  sub_29D61F41C(0, &qword_2A17AC330, &qword_2A17AC338, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D661D90;
  v2 = sub_29D65F1F4();
  v3 = MEMORY[0x29EDC2C70];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  sub_29D5E3C20((v1 + 32));
  sub_29D65F1E4();
  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_29D61EF70(void *a1)
{
  v2 = sub_29D65DC34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65DCC4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v24[2] = sub_29D65E754();
  v11 = sub_29D65EAA4();
  v12 = a1;
  v13 = sub_29D65EA94();
  v24[6] = v11;
  v24[7] = MEMORY[0x29EDC24D0];
  v24[3] = v13;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v14 = sub_29D65DA74();
  v24[0] = v15;
  v24[1] = v14;
  sub_29D61F2E4(0, &qword_2A17ACB80, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v16 = sub_29D65E844();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D661D20;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x29EDC2138], v16);
  v22(v21 + v18, *MEMORY[0x29EDC2140], v16);
  sub_29D63D1C8(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v3 + 104))(v7, *MEMORY[0x29EDB9C78], v2);
  sub_29D65DC44();
  (*(v3 + 8))(v7, v2);
  return sub_29D65E744();
}

void sub_29D61F2E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D61F348()
{
  result = qword_2A17ACB88;
  if (!qword_2A17ACB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACB88);
  }

  return result;
}

void sub_29D61F3A8()
{
  if (!qword_2A17ACB90)
  {
    sub_29D61F564(255, &qword_2A17ACB98, MEMORY[0x29EDC9C68]);
    v0 = sub_29D65E0A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACB90);
    }
  }
}

void sub_29D61F41C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D61F484(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D61F4CC()
{
  if (!qword_2A17ACBB0)
  {
    sub_29D61F41C(255, &qword_2A17ACBB8, &qword_2A17ACBC0, MEMORY[0x29EDC2038], MEMORY[0x29EDC9A40]);
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACBB0);
    }
  }
}

void sub_29D61F564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D61F41C(255, &qword_2A17AC350, &qword_2A17AC338, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9A40]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D61F5F0(uint64_t a1)
{
  v2 = sub_29D65F1F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x29EDCA190];
  if (v8)
  {
    v23 = MEMORY[0x29EDCA190];
    sub_29D5F90A0(0, v8, 0);
    v9 = v23;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v19 = *(v10 + 56);
    do
    {
      v11(v7, v13, v2);
      v23 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_29D5F90A0((v14 > 1), v15 + 1, 1);
      }

      v21 = v2;
      v22 = MEMORY[0x29EDC2C70];
      v16 = sub_29D5E3C20(&v20);
      v11(v16, v7, v2);
      v9 = v23;
      *(v23 + 16) = v15 + 1;
      sub_29D5DBB48(&v20, v9 + 40 * v15 + 32);
      (*(v10 - 8))(v7, v2);
      v13 += v19;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_29D61F7BC(uint64_t a1)
{
  v2 = sub_29D65E9E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x29EDCA190];
  if (v8)
  {
    v23 = MEMORY[0x29EDCA190];
    sub_29D5F90D8(0, v8, 0);
    v9 = v23;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v19 = *(v10 + 56);
    do
    {
      v11(v7, v13, v2);
      v23 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_29D5F90D8((v14 > 1), v15 + 1, 1);
      }

      v21 = v2;
      v22 = sub_29D622C34(&qword_2A17ACA58, MEMORY[0x29EDC23F8]);
      v16 = sub_29D5E3C20(&v20);
      v11(v16, v7, v2);
      v9 = v23;
      *(v23 + 16) = v15 + 1;
      sub_29D5DBB48(&v20, v9 + 40 * v15 + 32);
      (*(v10 - 8))(v7, v2);
      v13 += v19;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_29D61F9B4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = *v1;
  v3 = *(type metadata accessor for AudiogramPDFAudiogramChart.Model(0) - 8);
  v2[20] = v3;
  v4 = *(v3 + 64) + 15;
  v2[21] = swift_task_alloc();
  sub_29D622A88(0, &qword_2A17AC318, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D61FAF4, 0, 0);
}

uint64_t sub_29D61FAF4()
{
  sub_29D5E8C84(v0[18] + 32, (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_29D5E32A8(v0 + 2, v0[5]);
    v3 = *(MEMORY[0x29EDC2210] + 4);
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v5 = sub_29D61FCBC;
LABEL_5:
    v4[1] = v5;

    return MEMORY[0x2A1C61D28](v1, v2);
  }

  sub_29D5E8D7C((v0 + 2));
  v0[26] = 0;
  sub_29D5E8C84(v0[18] + 72, (v0 + 7));
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    sub_29D5E32A8(v0 + 7, v0[10]);
    v6 = *(MEMORY[0x29EDC2210] + 4);
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v5 = sub_29D61FF40;
    goto LABEL_5;
  }

  sub_29D5E8D7C((v0 + 7));
  v0[30] = 0;
  v7 = v0[18];
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_29D620118;

  return sub_29D61ADD8(v8);
}

uint64_t sub_29D61FCBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_29D620700;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_29D61FDE4;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D61FDE4()
{
  sub_29D5DF1C4(v0 + 2);
  v0[26] = v0[25];
  sub_29D5E8C84(v0[18] + 72, (v0 + 7));
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    sub_29D5E32A8(v0 + 7, v0[10]);
    v3 = *(MEMORY[0x29EDC2210] + 4);
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = sub_29D61FF40;

    return MEMORY[0x2A1C61D28](v1, v2);
  }

  else
  {
    sub_29D5E8D7C((v0 + 7));
    v0[30] = 0;
    v5 = v0[18];
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = swift_task_alloc();
    v0[31] = v8;
    *v8 = v0;
    v8[1] = sub_29D620118;

    return sub_29D61ADD8(v6);
  }
}

uint64_t sub_29D61FF40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = *(v4 + 208);

    v8 = sub_29D620774;
  }

  else
  {
    *(v4 + 232) = a1;
    v8 = sub_29D620070;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29D620070()
{
  sub_29D5DF1C4(v0 + 7);
  v0[30] = v0[29];
  v1 = v0[18];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_29D620118;

  return sub_29D61ADD8(v2);
}

uint64_t sub_29D620118(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v7 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v5 = sub_29D6207E8;
  }

  else
  {
    v5 = sub_29D62022C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D62022C()
{
  v44 = v0;
  if (qword_2A17AC040 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v1 = v0[32];
    v2 = *(v1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = v0[20];
    v43[0] = MEMORY[0x29EDCA190];
    sub_29D5F90A0(0, v2, 0);
    if (*(v1 + 16))
    {
      v4 = v43[0];
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v6 = v0[33];
      v7 = v0[19];
      v8 = *(v3 + 72);
      sub_29D6227FC(v1 + v5, v0[21]);
      sub_29D620868(v0 + 12);
      if (v6)
      {
        sub_29D622954(v0[21], type metadata accessor for AudiogramPDFAudiogramChart.Model);
      }

      v42 = v8;
      sub_29D622954(v0[21], type metadata accessor for AudiogramPDFAudiogramChart.Model);
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_29D5F90A0((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[15];
      v13 = v0[16];
      v14 = sub_29D6228F8((v0 + 12), v12);
      v15 = *(v12 - 8);
      v16 = *(v15 + 64) + 15;
      v17 = swift_task_alloc();
      (*(v15 + 16))(v17, v14, v12);
      sub_29D622860(v11, v17, v43, v12, v13);
      sub_29D5DF1C4(v0 + 12);

      v18 = v43[0];
      if (v2 == 1)
      {
        break;
      }

      v28 = v1 + v42 + v5;
      v29 = 1;
      v41 = v1;
      while (v29 < *(v1 + 16))
      {
        v30 = v0[19];
        sub_29D6227FC(v28, v0[21]);
        sub_29D620868(v0 + 12);
        v31 = v2;
        sub_29D622954(v0[21], type metadata accessor for AudiogramPDFAudiogramChart.Model);
        v43[0] = v18;
        v33 = *(v18 + 16);
        v32 = *(v18 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_29D5F90A0((v32 > 1), v33 + 1, 1);
        }

        ++v29;
        v34 = v0[15];
        v35 = v0[16];
        v36 = sub_29D6228F8((v0 + 12), v34);
        v37 = *(v34 - 8);
        v38 = *(v37 + 64) + 15;
        v39 = swift_task_alloc();
        (*(v37 + 16))(v39, v36, v34);
        sub_29D622860(v33, v39, v43, v34, v35);
        sub_29D5DF1C4(v0 + 12);

        v18 = v43[0];
        v28 += v42;
        v2 = v31;
        v40 = v31 == v29;
        v1 = v41;
        if (v40)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_12:
  v19 = v0[32];

  v20 = v0[30];
  v21 = v0[26];
  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[17];
  v25 = sub_29D65E374();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  sub_29D65E404();
  v26 = sub_29D65E414();
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_29D620700()
{
  sub_29D5DF1C4(v0 + 2);
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D620774()
{
  sub_29D5DF1C4(v0 + 7);
  v1 = v0[28];
  v3 = v0[21];
  v2 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D6207E8()
{
  v1 = v0[30];
  v2 = v0[26];

  v3 = v0[33];
  v5 = v0[21];
  v4 = v0[22];

  v6 = v0[1];

  return v6();
}

unint64_t sub_29D620868@<X0>(uint64_t *a1@<X8>)
{
  sub_29D622A88(0, &qword_2A17ACBD8, MEMORY[0x29EDC2C78], MEMORY[0x29EDC9E90]);
  v2 = sub_29D65F1F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D661D90;
  sub_29D65F1E4();
  v7 = sub_29D61F5F0(v6);
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  a1[3] = &type metadata for AudiogramPDFPage;
  result = sub_29D6012D8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_29D6209FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v54 = a2;
  v4 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudiogramPDFOverlayContextPills();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65E634();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D65E684();
  v64 = v20;
  v65 = MEMORY[0x29EDC1FC0];
  sub_29D5E3C20(&v62);
  sub_29D65E694();
  v59 = sub_29D65E884();
  sub_29D5DF1C4(&v62);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v21 = sub_29D65DA74();
  v23 = v22;
  v24 = sub_29D65E494();
  (*(v15 + 104))(v19, *MEMORY[0x29EDC1F60], v14);
  v64 = sub_29D65F124();
  v65 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(&v62);
  MEMORY[0x29ED614D0](v21, v23, v19, v24);
  v58 = sub_29D65E884();
  sub_29D5DF1C4(&v62);
  v64 = v20;
  v25 = MEMORY[0x29EDC1FC0];
  v65 = MEMORY[0x29EDC1FC0];
  sub_29D5E3C20(&v62);
  sub_29D65E694();
  v57 = sub_29D65E884();
  sub_29D5DF1C4(&v62);
  sub_29D6227FC(a1, v13);
  v26 = sub_29D659AD4(v13);
  v64 = &type metadata for PDFHStackWithEqualWidth;
  v65 = sub_29D5F95B8();
  v62 = v26;
  v63 = xmmword_29D663F60;
  sub_29D622954(v13, type metadata accessor for AudiogramPDFOverlayContextPills);
  v56 = sub_29D65E884();
  sub_29D5DF1C4(&v62);
  v64 = v20;
  v65 = v25;
  sub_29D5E3C20(&v62);
  sub_29D65E694();
  v55 = sub_29D65E884();
  v27 = sub_29D5DF1C4(&v62);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v29 = sub_29D65F1F4();
  v30 = MEMORY[0x29EDC2C70];
  v64 = v29;
  v65 = MEMORY[0x29EDC2C70];
  sub_29D5E3C20(&v62);
  sub_29D65F1E4();
  v54 = sub_29D65E884();
  sub_29D5DF1C4(&v62);
  v64 = v20;
  v65 = v25;
  sub_29D5E3C20(&v62);
  sub_29D65E694();
  v53 = sub_29D65E884();
  sub_29D5DF1C4(&v62);
  sub_29D6227FC(a1, v8);
  v31 = type metadata accessor for AudiogramPDFAudiogramChart(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_29D624FF0(v8);
  v64 = v31;
  v35 = sub_29D622C34(&qword_2A17ACBE0, type metadata accessor for AudiogramPDFAudiogramChart);
  v65 = v35;
  v62 = v34;
  v36 = sub_29D5E32A8(&v62, v31);
  v61[3] = v31;
  v61[4] = *(v35 + 8);
  v37 = sub_29D5E3C20(v61);
  (*(*(v31 - 8) + 16))(v37, v36, v31);
  v38 = sub_29D65E884();
  sub_29D5DF1C4(v61);
  sub_29D5DF1C4(&v62);
  v64 = v20;
  v65 = v25;
  sub_29D5E3C20(&v62);
  sub_29D65E694();
  v39 = sub_29D65E884();
  v40 = sub_29D5DF1C4(&v62);
  MEMORY[0x2A1C7C4A8](v40, v41);
  v64 = v29;
  v65 = v30;
  sub_29D5E3C20(&v62);
  sub_29D65F1E4();
  v42 = sub_29D65E884();
  sub_29D5DF1C4(&v62);
  v64 = v20;
  v65 = v25;
  sub_29D5E3C20(&v62);
  sub_29D65E694();
  v43 = sub_29D65E884();
  v44 = sub_29D5DF1C4(&v62);
  MEMORY[0x2A1C7C4A8](v44, v45);
  v64 = v29;
  v65 = v30;
  sub_29D5E3C20(&v62);
  sub_29D65F1E4();
  v46 = sub_29D65E884();
  sub_29D5DF1C4(&v62);
  sub_29D5E8F38();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_29D663690;
  v48 = v58;
  *(v47 + 32) = v59;
  *(v47 + 40) = v48;
  v49 = v56;
  *(v47 + 48) = v57;
  *(v47 + 56) = v49;
  v50 = v54;
  *(v47 + 64) = v55;
  *(v47 + 72) = v50;
  *(v47 + 80) = v53;
  *(v47 + 88) = v38;
  *(v47 + 96) = v39;
  *(v47 + 104) = v42;
  *(v47 + 112) = v43;
  *(v47 + 120) = v46;
  v51 = MEMORY[0x29ED60BF0]();

  return v51;
}

uint64_t sub_29D62109C(void *a1, uint64_t a2)
{
  v4 = sub_29D65E634();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + *(type metadata accessor for AudiogramPDFChartData() + 24);
  v11 = sub_29D65DB84();
  v12 = [a1 stringFromDate_];

  v13 = sub_29D65FF64();
  v15 = v14;

  v16 = sub_29D65E4B4();
  v17 = *MEMORY[0x29EDC1F60];
  v18 = *(v5 + 104);
  v34 = v4;
  v18(v9, v17, v4);
  v19 = sub_29D65F124();
  v36 = v19;
  v37 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v35);
  MEMORY[0x29ED614D0](v13, v15, v9, v16);
  v33 = sub_29D65E884();
  sub_29D5DF1C4(v35);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D622730(0, &qword_2A1A1E668, &qword_2A1A1E660, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D661D90;
  v21 = (a2 + *(type metadata accessor for AudiogramPDFAudiogramChart.Model(0) + 32));
  v22 = *v21;
  v23 = v21[1];
  *(v20 + 56) = MEMORY[0x29EDC99B0];
  *(v20 + 64) = sub_29D5E3BCC();
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v24 = sub_29D65FF74();
  v26 = v25;

  v27 = sub_29D65E4B4();
  v18(v9, v17, v34);
  v36 = v19;
  v37 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v35);
  MEMORY[0x29ED614D0](v24, v26, v9, v27);
  v28 = sub_29D65E884();
  sub_29D5DF1C4(v35);
  sub_29D5E8F38();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_29D661D20;
  *(v29 + 32) = v33;
  *(v29 + 40) = v28;
  v30 = MEMORY[0x29ED60BF0]();

  return v30;
}

uint64_t sub_29D621408(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D65E634();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v80 = qword_2A1A20C18;
  sub_29D65DA74();
  v81 = "HEARING_TEST_RESCINDED_LINK";
  sub_29D622730(0, &qword_2A1A1E668, &qword_2A1A1E660, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v10 = v9;
  v11 = swift_allocObject();
  v79 = xmmword_29D661D90;
  *(v11 + 16) = xmmword_29D661D90;
  v12 = (a2 + *(type metadata accessor for AudiogramPDFChartData() + 32));
  v13 = *v12;
  v14 = v12[1];
  v70 = v12[2];
  v15 = v12[3];
  v68 = v14;
  v69 = v15;
  v71 = *(v12 + 32);
  v77 = v13;
  v16 = v13 == 3;
  if (v13 == 3)
  {
    v17 = 2;
  }

  else
  {
    v17 = v13;
  }

  v18 = v13 >> 8;
  if (v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = v18;
  }

  LODWORD(v76) = v19;
  v20 = sub_29D622AEC(v17);
  v22 = v21;
  *(v11 + 56) = MEMORY[0x29EDC99B0];
  v23 = sub_29D5E3BCC();
  *(v11 + 64) = v23;
  *(v11 + 32) = v20;
  *(v11 + 40) = v22;
  v24 = sub_29D65FF74();
  v26 = v25;

  v27 = sub_29D65E4B4();
  v28 = *MEMORY[0x29EDC1F60];
  v29 = *(v4 + 104);
  v29(v8, v28, v3);
  v30 = sub_29D65F124();
  v75 = v3;
  v31 = v30;
  v83 = v30;
  v84 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v82);
  MEMORY[0x29ED614D0](v24, v26, v8, v27);
  v78 = sub_29D65E884();
  sub_29D5DF1C4(v82);
  sub_29D65DA74();
  v74 = v10;
  v32 = swift_allocObject();
  *(v32 + 16) = v79;
  v33 = sub_29D622AEC(v76);
  *(v32 + 56) = MEMORY[0x29EDC99B0];
  *(v32 + 64) = v23;
  v76 = v23;
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  v35 = sub_29D65FF74();
  v37 = v36;

  v38 = sub_29D65E4B4();
  v72 = v28;
  v39 = v75;
  v73 = v29;
  v29(v8, v28, v75);
  v40 = v31;
  v41 = v77;
  v83 = v40;
  v84 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v82);
  MEMORY[0x29ED614D0](v35, v37, v8, v38);
  v42 = sub_29D65E884();
  sub_29D5DF1C4(v82);
  v43 = MEMORY[0x29EDC1DD0];
  v44 = v8;
  if (v41 == 3 || (v70 & 1) != 0)
  {
    v83 = sub_29D65E584();
    v84 = v43;
    sub_29D5E3C20(v82);
    sub_29D65E574();
  }

  else
  {
    sub_29D65DA74();
    v45 = v39;
    v46 = swift_allocObject();
    *(v46 + 16) = v79;
    v82[0] = v68;
    v47 = sub_29D660674();
    v48 = v76;
    *(v46 + 56) = MEMORY[0x29EDC99B0];
    *(v46 + 64) = v48;
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    v39 = v45;
    v50 = sub_29D65FF74();
    v52 = v51;

    v53 = sub_29D65E4B4();
    v73(v44, v72, v45);
    v83 = v40;
    v84 = MEMORY[0x29EDC2C00];
    sub_29D5E3C20(v82);
    v54 = v50;
    v43 = MEMORY[0x29EDC1DD0];
    MEMORY[0x29ED614D0](v54, v52, v44, v53);
  }

  v55 = sub_29D65E884();
  sub_29D5DF1C4(v82);
  if (v41 == 3 || (v71 & 1) != 0)
  {
    v83 = sub_29D65E584();
    v84 = v43;
    sub_29D5E3C20(v82);
    sub_29D65E574();
  }

  else
  {
    sub_29D65DA74();
    v56 = swift_allocObject();
    *(v56 + 16) = v79;
    v82[0] = v69;
    v57 = sub_29D660674();
    v58 = v76;
    *(v56 + 56) = MEMORY[0x29EDC99B0];
    *(v56 + 64) = v58;
    *(v56 + 32) = v57;
    *(v56 + 40) = v59;
    v60 = sub_29D65FF74();
    v62 = v61;

    v63 = sub_29D65E4B4();
    v73(v44, v72, v39);
    v83 = v40;
    v84 = MEMORY[0x29EDC2C00];
    sub_29D5E3C20(v82);
    MEMORY[0x29ED614D0](v60, v62, v44, v63);
  }

  v64 = sub_29D65E884();
  sub_29D5DF1C4(v82);
  sub_29D5E8F38();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_29D663260;
  *(v65 + 32) = v78;
  *(v65 + 40) = v42;
  *(v65 + 48) = v55;
  *(v65 + 56) = v64;
  v66 = MEMORY[0x29ED60BF0]();

  return v66;
}

uint64_t sub_29D621B34(uint64_t a1, uint64_t a2)
{
  sub_29D621BE4(a2, v8);
  v3 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  sub_29D621F78(a2, v8);
  v4 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  sub_29D5E8F38();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D661D20;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  v6 = MEMORY[0x29ED60BF0]();

  return v6;
}

uint64_t sub_29D621BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65E634();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  if (*(a1 + *(v10 + 24)) == 1)
  {
    v11 = v10;
    v30 = v5;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v27 = 0xE000000000000000;
    v29 = sub_29D65DA74();
    v13 = v12;
    if (*(a1 + *(v11 + 28)))
    {
      v14 = 0x5453524946;
    }

    else
    {
      v14 = 0x4452494854;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_29D660554();

    v31 = 0xD00000000000001ALL;
    v32 = 0x800000029D668770;
    MEMORY[0x29ED62350](v14, 0xE500000000000000);

    MEMORY[0x29ED62350](0xD000000000000015, 0x800000029D6687F0);
    v27 = 0xE000000000000000;
    v15 = sub_29D65DA74();
    v17 = v16;

    v18 = sub_29D6229CC();
    v20 = MEMORY[0x2A1C7C4A8](v18, v19);
    v21 = (v30 + 104);
    if (v20)
    {
      *(&v29 - 4) = v15;
      *(&v29 - 3) = v17;
      v27 = v29;
      v28 = v13;
    }

    else
    {
      *(&v29 - 4) = v29;
      *(&v29 - 3) = v13;
      v27 = v15;
      v28 = v17;
    }

    (*v21)(v9, *MEMORY[0x29EDC1F60], v4);
    v22 = sub_29D65E834();
    v23 = MEMORY[0x29EDC2130];
    a2[3] = v22;
    a2[4] = v23;
    sub_29D5E3C20(a2);
    sub_29D65E824();
  }

  else
  {
    v24 = sub_29D65E584();
    v25 = MEMORY[0x29EDC1DD0];
    a2[3] = v24;
    a2[4] = v25;
    sub_29D5E3C20(a2);
    return sub_29D65E574();
  }
}

uint64_t sub_29D621F78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65E634();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  if (*(a1 + *(v10 + 20)) == 1)
  {
    v11 = v10;
    v30 = v5;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v27 = 0xE000000000000000;
    v29 = sub_29D65DA74();
    v13 = v12;
    if (*(a1 + *(v11 + 28)))
    {
      v14 = 0x5453524946;
    }

    else
    {
      v14 = 0x4452494854;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_29D660554();

    v31 = 0xD00000000000001ALL;
    v32 = 0x800000029D668770;
    MEMORY[0x29ED62350](v14, 0xE500000000000000);

    MEMORY[0x29ED62350](0xD000000000000015, 0x800000029D668790);
    v27 = 0xE000000000000000;
    v15 = sub_29D65DA74();
    v17 = v16;

    v18 = sub_29D6229CC();
    v20 = MEMORY[0x2A1C7C4A8](v18, v19);
    v21 = (v30 + 104);
    if (v20)
    {
      *(&v29 - 4) = v15;
      *(&v29 - 3) = v17;
      v27 = v29;
      v28 = v13;
    }

    else
    {
      *(&v29 - 4) = v29;
      *(&v29 - 3) = v13;
      v27 = v15;
      v28 = v17;
    }

    (*v21)(v9, *MEMORY[0x29EDC1F60], v4);
    v22 = sub_29D65E834();
    v23 = MEMORY[0x29EDC2130];
    a2[3] = v22;
    a2[4] = v23;
    sub_29D5E3C20(a2);
    sub_29D65E824();
  }

  else
  {
    v24 = sub_29D65E584();
    v25 = MEMORY[0x29EDC1DD0];
    a2[3] = v24;
    a2[4] = v25;
    sub_29D5E3C20(a2);
    return sub_29D65E574();
  }
}

uint64_t sub_29D62230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v44 = a4;
  v45 = a6;
  v46 = a3;
  v42 = a1;
  v8 = sub_29D65E634();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65F124();
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v41 = &v41 - v21;
  v22 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v23 = a5(v22);
  v24 = *MEMORY[0x29EDC1F60];
  v25 = *(v9 + 104);
  v25(v13, v24, v8);
  MEMORY[0x29ED614D0](v42, a2, v13, v23);
  v26 = v44;
  v27 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v28 = v45(v27);
  v25(v13, v24, v8);
  v29 = v19;
  MEMORY[0x29ED614D0](v46, v26, v13, v28);
  sub_29D622A88(0, &qword_2A17AC370, sub_29D5E9624, MEMORY[0x29EDC9E90]);
  v30 = swift_allocObject();
  v31 = MEMORY[0x29EDC2C08];
  *(v30 + 16) = xmmword_29D661D20;
  *(v30 + 56) = v14;
  *(v30 + 64) = v31;
  v32 = MEMORY[0x29EDC2C00];
  *(v30 + 72) = MEMORY[0x29EDC2C00];
  v33 = sub_29D5E3C20((v30 + 32));
  v34 = v43;
  v35 = *(v43 + 16);
  v36 = v41;
  v35(v33, v41, v14);
  *(v30 + 104) = v14;
  *(v30 + 112) = v31;
  *(v30 + 120) = v32;
  v37 = sub_29D5E3C20((v30 + 80));
  v35(v37, v29, v14);
  v38 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  v39 = *(v34 + 8);
  v39(v29, v14);
  v39(v36, v14);
  return v38;
}

uint64_t sub_29D622620()
{
  sub_29D622C24(*(v0 + 16));
  v1 = *(v0 + 24);

  sub_29D5E8D7C(v0 + 32);
  sub_29D5E8D7C(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_29D622694(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D5E8B90;

  return sub_29D61F9B4(a1);
}

void sub_29D622730(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_29D622798()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_2A17ACBD0 = v0;
  return result;
}

uint64_t sub_29D6227FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D622860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29D5E3C20(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29D5DBB48(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29D6228F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_29D622954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D622A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D622AEC(char a1)
{
  if (a1 == 2)
  {
    return 45;
  }

  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      return sub_29D65DA74();
    }

    goto LABEL_8;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_29D65DA74();
}

void sub_29D622C24(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_29D622C34(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall HUNoiseSettings.setUpNoiseNotifications()()
{
  [v0 setOnboardingCompleted_];
  [v0 setNoiseEnabled_];
  [v0 setNotificationsEnabled_];

  [v0 setNotificationThreshold_];
}

uint64_t sub_29D622D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_29D65F314();
  sub_29D5EDFD0(v5, a2);
  sub_29D5DE6EC(v5, a2);
  v6 = *a3;
  v7 = *MEMORY[0x29EDC2D38];
  sub_29D65FFC4();
  sub_29D65FFC4();
  return sub_29D65F304();
}

void sub_29D622DF0(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 getActivePairedDevice];

    if (v4)
    {
      if ([v4 valueForProperty:*MEMORY[0x29EDC5E00]])
      {
        sub_29D660474();
        sub_29D65EE94();
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      v31[0] = v29;
      v31[1] = v30;
      if (*(&v30 + 1))
      {
        if (swift_dynamicCast())
        {
          v5 = a1;
          _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
          v6 = sub_29D65F2F4();
          v7 = sub_29D660204();

          if (os_log_type_enabled(v6, v7))
          {
            v8 = swift_slowAlloc();
            v9 = swift_slowAlloc();
            *&v31[0] = v9;
            *v8 = 136446722;
            v10 = sub_29D6607A4();
            v12 = sub_29D64A1D0(v10, v11, v31);

            *(v8 + 4) = v12;
            *(v8 + 12) = 2082;
            swift_getErrorValue();
            v13 = sub_29D6606D4();
            v15 = sub_29D64A1D0(v13, v14, v31);

            *(v8 + 14) = v15;
            *(v8 + 22) = 2082;
            v16 = sub_29D64A1D0(v27, v28, v31);

            *(v8 + 24) = v16;
            _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] Could not access isHeadphoneExposureNotificationsEnabledOnActiveWatch. Error: %{public}s Watch Software %{public}s", v8, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x29ED63350](v9, -1, -1);
            MEMORY[0x29ED63350](v8, -1, -1);
          }

          else
          {
          }

          goto LABEL_14;
        }
      }

      else
      {

        sub_29D624B14(v31);
      }
    }
  }

  v17 = a1;
  v4 = sub_29D65F2F4();
  v18 = sub_29D660204();

  if (os_log_type_enabled(v4, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v31[0] = v20;
    *v19 = 136446466;
    v21 = sub_29D6607A4();
    v23 = sub_29D64A1D0(v21, v22, v31);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    swift_getErrorValue();
    v24 = sub_29D6606D4();
    v26 = sub_29D64A1D0(v24, v25, v31);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_29D5D7000, v4, v18, "[%{public}s] Could not access isHeadphoneExposureNotificationsEnabledOnActiveWatch. Error: %{public}s Could not access active device properties.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v20, -1, -1);
    MEMORY[0x29ED63350](v19, -1, -1);
  }

LABEL_14:
}

uint64_t sub_29D6231B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();

  return v1;
}

uint64_t sub_29D623228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();
}

uint64_t sub_29D6232A0()
{
  v1 = MEMORY[0x29EDB8B00];
  sub_29D605E70(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  v32 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v31 - v6;
  sub_29D5EA87C(0);
  v31[1] = v8;
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v31 - v15;
  sub_29D624B98(0, &qword_2A1A1E740, MEMORY[0x29EDC9A98], v1);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v17, v21);
  v23 = v31 - v22;
  v24 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability__promotionVisibility;
  v34 = 0;
  sub_29D65F8B4();
  (*(v19 + 32))(v0 + v24, v23, v18);
  v25 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability__featureStatus;
  v26 = sub_29D65E0E4();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_29D5EA900(v16, v13);
  sub_29D65F8B4();
  sub_29D5EA964(v16);
  (*(v3 + 32))(v0 + v25, v7, v32);
  v27 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_logger;
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v28 = sub_29D65F314();
  v29 = sub_29D5DE6EC(v28, qword_2A1A20C00);
  (*(*(v28 - 8) + 16))(v0 + v27, v29, v28);
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_notificationsCancellable) = 0;
  sub_29D62362C();
  LOBYTE(v28) = sub_29D623808();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v28 & 1;

  sub_29D65F8E4();
  sub_29D623F7C();
  return v0;
}

uint64_t sub_29D62362C()
{
  sub_29D5EA87C(0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v16 - v7;
  if ((sub_29D623BB8() & 1) == 0)
  {
    v11 = MEMORY[0x29EDC1758];
    goto LABEL_8;
  }

  v9 = [objc_opt_self() isHeadphoneExposureNotificationsEnabled];
  v10 = sub_29D623A88();
  if (v10 != 2)
  {
    if (((v9 | v10) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = MEMORY[0x29EDC1760];
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = MEMORY[0x29EDC1768];
LABEL_8:
  v12 = *v11;
  v13 = sub_29D65E0E4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v8, v12, v13);
  sub_29D65E0E4();
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5EA900(v8, v5);

  sub_29D65F8E4();
  return sub_29D5EA964(v8);
}

uint64_t sub_29D623808()
{
  v1 = *v0;
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() isHeadphoneExposureNotificationsEnabled];
  v9 = sub_29D623A88();
  if (v9 == 2)
  {
    if (!v8)
    {
      v10 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v8)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_7;
  }

  v10 = v9;
LABEL_7:
  (*(v3 + 16))(v7, v0 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_logger, v2);
  v11 = sub_29D65F2F4();
  v12 = sub_29D660214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446722;
    v15 = sub_29D6607A4();
    v17 = sub_29D64A1D0(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v10 & 1;
    *(v13 + 18) = 1024;
    v18 = v10 ^ 1;
    *(v13 + 20) = (v10 ^ 1) & 1;
    _os_log_impl(&dword_29D5D7000, v11, v12, "[%{public}s] Feature Enabled %{BOOL}d. Promotion Visble: %{BOOL}d", v13, 0x18u);
    sub_29D5DF1C4(v14);
    MEMORY[0x29ED63350](v14, -1, -1);
    MEMORY[0x29ED63350](v13, -1, -1);

    (*(v3 + 8))(v7, v2);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
    v18 = v10 ^ 1;
  }

  return v18 & 1;
}

uint64_t sub_29D623A88()
{
  v9[1] = *MEMORY[0x29EDCA608];
  v1 = *v0;
  if ((sub_29D65E194() & 1) == 0 || (v2 = objc_opt_self(), ![v2 isHeadphoneExposureNotificationsSupportedOnActiveWatch]))
  {
LABEL_7:
    result = 2;
    goto LABEL_8;
  }

  v9[0] = 0;
  result = [v2 isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError_];
  v4 = v9[0];
  if (v9[0])
  {
    swift_willThrow();
    v5 = qword_2A1A1EA68;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_29D65F314();
    sub_29D5DE6EC(v7, qword_2A1A20C00);
    sub_29D622DF0(v6);

    goto LABEL_7;
  }

LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29D623BB8()
{
  v0 = objc_opt_self();
  if ([v0 isHeadphoneExposureNotificationsEnabled])
  {
    v1 = [v0 isHeadphoneExposureMeasureLevelsEnabled];
    v2 = sub_29D623A88();
    if (v2 == 2)
    {
      if ((v1 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = v2;
      v6 = sub_29D623C74();
      if (v6 == 2)
      {
        if (!v1)
        {
LABEL_11:
          v3 = 0;
          return v3 & 1;
        }
      }

      else if ((v1 & 1) == 0)
      {
        v3 = v5 ^ 1 | v6;
        return v3 & 1;
      }
    }
  }

  else if (sub_29D623A88() != 2)
  {
    sub_29D623C74();
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_29D623C74()
{
  v26[1] = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if ((sub_29D65E194() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = objc_opt_self();
  if (![v8 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
  {
    goto LABEL_8;
  }

  v26[0] = 0;
  v9 = [v8 isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError_];
  v10 = v26[0];
  if (!v26[0])
  {
    v22 = v9;
    goto LABEL_9;
  }

  swift_willThrow();
  (*(v3 + 16))(v7, v0 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_logger, v2);
  v11 = v10;
  v12 = sub_29D65F2F4();
  v13 = sub_29D660204();

  if (!os_log_type_enabled(v12, v13))
  {

    (*(v3 + 8))(v7, v2);
LABEL_8:
    v22 = 2;
    goto LABEL_9;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v26[0] = v15;
  *v14 = 136446466;
  v16 = sub_29D6607A4();
  v18 = sub_29D64A1D0(v16, v17, v26);

  *(v14 + 4) = v18;
  *(v14 + 12) = 2082;
  swift_getErrorValue();
  v19 = sub_29D6606D4();
  v21 = sub_29D64A1D0(v19, v20, v26);

  *(v14 + 14) = v21;
  _os_log_impl(&dword_29D5D7000, v12, v13, "[%{public}s] Could not access isHeadphoneExposureMeasureLevelsEnabledOnActiveWatch. Error: %{public}s", v14, 0x16u);
  v22 = 2;
  swift_arrayDestroy();
  MEMORY[0x29ED63350](v15, -1, -1);
  MEMORY[0x29ED63350](v14, -1, -1);

  (*(v3 + 8))(v7, v2);
LABEL_9:
  v23 = *MEMORY[0x29EDCA608];
  return v22;
}

uint64_t sub_29D623F7C()
{
  v1 = v0;
  v2 = *v0;
  sub_29D6247F8();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D6602F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v26 - v17;
  sub_29D624954(&qword_2A1A1E348, type metadata accessor for HeadphoneNotificationsAvailability);
  v19 = sub_29D65E284();
  [objc_opt_self() startObservingForChanges];
  v20 = [objc_opt_self() defaultCenter];
  v21 = *MEMORY[0x29EDC2D48];
  sub_29D660304();

  (*(v10 + 16))(v15, v18, v9);
  v29 = v19;
  sub_29D6248E4();
  sub_29D624954(&qword_2A1A1DDD0, MEMORY[0x29EDB9DF8]);
  sub_29D624954(&qword_2A1A1DDF8, sub_29D6248E4);

  sub_29D65F7D4();
  swift_allocObject();
  swift_weakInit();
  sub_29D624954(&qword_2A1A1DE08, sub_29D6247F8);
  v22 = v27;
  v23 = sub_29D65F9B4();

  (*(v28 + 8))(v8, v22);
  (*(v10 + 8))(v18, v9);
  v24 = *(v1 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_notificationsCancellable);
  *(v1 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_notificationsCancellable) = v23;
}

uint64_t sub_29D62433C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D62362C();
    sub_29D623808();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_29D65F8E4();
  }

  return result;
}

uint64_t sub_29D6243D4()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability__promotionVisibility;
  v2 = MEMORY[0x29EDB8B00];
  sub_29D624B98(0, &qword_2A1A1E740, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability__featureStatus;
  sub_29D605E70(0, &qword_2A1A1E750, sub_29D5EA87C, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_logger;
  v7 = sub_29D65F314();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_notificationsCancellable);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphoneNotificationsAvailability()
{
  result = qword_2A1A1E9E8;
  if (!qword_2A1A1E9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6245A4()
{
  sub_29D624B98(319, &qword_2A1A1E740, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_29D605E70(319, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_29D65F314();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_29D624704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();

  *a2 = v5;
  return result;
}

uint64_t sub_29D624784(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29D65F8E4();
}

void sub_29D6247F8()
{
  if (!qword_2A1A1DE00)
  {
    sub_29D6602F4();
    sub_29D6248E4();
    sub_29D624954(&qword_2A1A1DDD0, MEMORY[0x29EDB9DF8]);
    sub_29D624954(&qword_2A1A1DDF8, sub_29D6248E4);
    v0 = sub_29D65F7C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DE00);
    }
  }
}

void sub_29D6248E4()
{
  if (!qword_2A1A1DDF0)
  {
    sub_29D65D9B4();
    v0 = sub_29D65F814();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DDF0);
    }
  }
}

uint64_t sub_29D624954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D62499C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();
}

uint64_t sub_29D624A18(uint64_t a1, uint64_t *a2)
{
  sub_29D5EA87C(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v15 - v11;
  sub_29D5EA900(a1, &v15 - v11);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5EA900(v12, v9);

  sub_29D65F8E4();
  return sub_29D5EA964(v12);
}

uint64_t sub_29D624B14(uint64_t a1)
{
  sub_29D624B98(0, &qword_2A17AC310, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D624B98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D624BE8()
{
  result = type metadata accessor for AudiogramPDFChartData();
  v2 = 0;
  v3 = *(v0 + *(result + 36));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x29EDCA190];
LABEL_2:
  v6 = fmax(*&qword_2A2431300, 62.5);
  if (v6 < unk_2A2431308)
  {
    v6 = unk_2A2431308;
  }

  if (v6 < *&qword_2A2431310)
  {
    v6 = *&qword_2A2431310;
  }

  if (v6 < unk_2A2431318)
  {
    v6 = unk_2A2431318;
  }

  if (v6 < *&qword_2A2431320)
  {
    v6 = *&qword_2A2431320;
  }

  if (v6 < unk_2A2431328)
  {
    v6 = unk_2A2431328;
  }

  if (v6 < *&qword_2A2431330)
  {
    v6 = *&qword_2A2431330;
  }

  v7 = fmin(*&qword_2A2431300, 62.5);
  if (unk_2A2431308 < v7)
  {
    v7 = unk_2A2431308;
  }

  if (*&qword_2A2431310 < v7)
  {
    v7 = *&qword_2A2431310;
  }

  if (unk_2A2431318 < v7)
  {
    v7 = unk_2A2431318;
  }

  if (*&qword_2A2431320 < v7)
  {
    v7 = *&qword_2A2431320;
  }

  if (unk_2A2431328 < v7)
  {
    v7 = unk_2A2431328;
  }

  if (*&qword_2A2431330 < v7)
  {
    v7 = *&qword_2A2431330;
  }

  if (unk_2A2431338 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = unk_2A2431338;
  }

  if (v6 >= unk_2A2431338)
  {
    v9 = v6;
  }

  else
  {
    v9 = unk_2A2431338;
  }

  v10 = round(v9);
  v11 = round(v8);
  v12 = v3 + 16 + 40 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      return v5;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    if (v11 > v10)
    {
      goto LABEL_47;
    }

    ++v2;
    v13 = v12 + 40;
    v14 = *(v12 + 16);
    v15 = v11 > v14 || v14 > v10;
    v12 += 40;
    if (!v15)
    {
      v16 = *(v13 - 16);
      v17 = *(v13 - 8);
      v22 = *v13;
      v21 = *(v13 + 8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29D65B21C(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_29D65B21C((v18 > 1), v19 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v19 + 1;
      v20 = v5 + 40 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      *(v20 + 48) = v17;
      *(v20 + 56) = v22;
      *(v20 + 64) = v21;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_29D624DE8()
{
  v0 = sub_29D624BE8();
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_12:

    return 0;
  }

  v2 = (v0 + 64);
  while (1)
  {
    v3 = *(v2 - 3);
    if (*(v2 - 16) == 2)
    {
      v3 = 0.0;
    }

    if (*v2 != 2)
    {
      break;
    }

LABEL_9:
    if (v3 < -15.0 || v3 > 115.0)
    {
      goto LABEL_13;
    }

    v2 += 5;
    if (!--v1)
    {
      goto LABEL_12;
    }
  }

  if (v3 >= -15.0 && v3 <= 115.0)
  {
    v3 = *(v2 - 1);
    goto LABEL_9;
  }

LABEL_13:

  return 1;
}

uint64_t sub_29D624E88()
{
  sub_29D62F160(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65FB24();
  v5 = *MEMORY[0x29EDBC980];
  v6 = sub_29D65FB14();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = sub_29D65FB44();
  result = sub_29D62EED4(v4, sub_29D62F160);
  qword_2A17AD708 = v8;
  return result;
}

id sub_29D624FC0()
{
  result = HKNumberFormatterWithDecimalPrecision();
  qword_2A17ACBE8 = result;
  return result;
}

uint64_t sub_29D624FF0(uint64_t a1)
{
  v2 = v1;
  sub_29D62F768(a1, v2 + OBJC_IVAR____TtC16HearingAppPlugin26AudiogramPDFAudiogramChart_chartModel, type metadata accessor for AudiogramPDFAudiogramChart.Model);
  v4 = sub_29D6229CC();
  v5 = sub_29D624BE8();
  v6 = *(v5 + 16);
  if (v4)
  {
    v7 = (v5 + 40 * v6 + 8);
    do
    {
      v8 = v6 == 0;
      if (!v6)
      {
        break;
      }

      --v6;
      v9 = *v7;
      v7 -= 40;
    }

    while (v9 == 2);
  }

  else if (v6)
  {
    v10 = 0;
    v11 = (v5 + 48);
    do
    {
      v12 = *v11;
      v11 += 40;
      v8 = v12 == 2;
      if (v12 != 2)
      {
        v6 = v10;
        goto LABEL_13;
      }

      ++v10;
    }

    while (v6 != v10);
    v6 = 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_13:

  v13 = v2 + OBJC_IVAR____TtC16HearingAppPlugin26AudiogramPDFAudiogramChart_leftEarAnnotationIndex;
  *v13 = v6;
  *(v13 + 8) = v8;
  v14 = sub_29D6229CC();
  v15 = sub_29D624BE8();
  v16 = *(v15 + 16);
  if (!v14)
  {
    v20 = 40 * v16 + 24;
    while (v16)
    {
      --v16;
      v21 = *(v15 + v20);
      v20 -= 40;
      if (v21 != 2)
      {

        sub_29D62EED4(a1, type metadata accessor for AudiogramPDFAudiogramChart.Model);
        v19 = 0;
        v17 = v16;
        goto LABEL_24;
      }
    }

    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_18:
    sub_29D62EED4(a1, type metadata accessor for AudiogramPDFAudiogramChart.Model);

    v17 = 0;
    v19 = 1;
    goto LABEL_24;
  }

  v17 = 0;
  v18 = 64;
  while (*(v15 + v18) == 2)
  {
    ++v17;
    v18 += 40;
    if (v16 == v17)
    {
      goto LABEL_18;
    }
  }

  sub_29D62EED4(a1, type metadata accessor for AudiogramPDFAudiogramChart.Model);
  v19 = 0;
LABEL_24:
  v22 = v2 + OBJC_IVAR____TtC16HearingAppPlugin26AudiogramPDFAudiogramChart_rightEarAnnotationIndex;
  *v22 = v17;
  *(v22 + 8) = v19;
  return v2;
}

uint64_t sub_29D62524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v97 = a4;
  LODWORD(v96) = a3;
  v98 = a1;
  v116 = a6;
  v115 = sub_29D65FA04();
  v114 = *(v115 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v115, v11);
  v113 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C234(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C268(0);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v18, v22);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62D4E8(0);
  v99 = v25;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62D51C();
  v101 = v30;
  v102 = *(v30 - 8);
  v31 = *(v102 + 64);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62D768();
  v104 = v35;
  v105 = *(v35 - 8);
  v36 = *(v105 + 64);
  MEMORY[0x2A1C7C4A8](v35, v37);
  v118 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E218();
  v107 = v39;
  v108 = *(v39 - 8);
  v40 = *(v108 + 64);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v100 = &v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E3A8();
  v109 = v43;
  v110 = *(v43 - 8);
  v44 = *(v110 + 64);
  MEMORY[0x2A1C7C4A8](v43, v45);
  v103 = &v95 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62EC38();
  v112 = v47;
  v111 = *(v47 - 8);
  v48 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v47, v49);
  v106 = &v95 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v6;
  v123 = a1;
  v124 = a2;
  v125 = v96 & 1;
  v126 = v97;
  v127 = a5 & 1;
  sub_29D62C2B0();
  sub_29D62CE50();
  sub_29D65F614();
  v51 = *MEMORY[0x29EDC43E0];
  v130 = sub_29D65FF64();
  v131 = v52;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](0xD000000000000022, 0x800000029D668A20);

  sub_29D62B1D4(&qword_2A17ACD48, sub_29D62C268);
  sub_29D65FBC4();

  (*(v20 + 8))(v24, v19);
  v134 = xmmword_29D664160;
  v53 = v17;
  sub_29D65F734();
  v54 = sub_29D65F744();
  v55 = *(v54 - 8);
  v96 = *(v55 + 56);
  v97 = v55 + 56;
  v96(v17, 0, 1, v54);
  sub_29D62F654(0, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v57 = v56;
  v58 = sub_29D62D5EC();
  v59 = sub_29D62D6CC();
  v60 = v99;
  sub_29D65FB94();
  v95 = sub_29D62C234;
  sub_29D62EED4(v53, sub_29D62C234);
  sub_29D62F0F0(v29, sub_29D62D4E8);
  v121 = v117;
  sub_29D62D8B8(0);
  v62 = v61;
  v130 = v60;
  v131 = v57;
  v132 = v58;
  v133 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = MEMORY[0x29EDB86F8];
  v64 = sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8);
  v65 = v101;
  sub_29D65FB74();
  (*(v102 + 8))(v34, v65);
  v66 = v98;
  v67 = sub_29D624DE8();
  v68 = -120.0;
  if (v67)
  {
    v68 = -200.0;
  }

  v69 = 50.0;
  if ((v67 & 1) == 0)
  {
    v69 = 20.0;
  }

  v128 = v68;
  v129 = v69;
  v96(v53, 1, 1, v54);
  v130 = v65;
  v131 = v62;
  v132 = OpaqueTypeConformance2;
  v133 = v64;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v100;
  v72 = v104;
  v73 = v118;
  sub_29D65FBA4();
  sub_29D62EED4(v53, v95);
  v74 = v73;
  v75 = v72;
  (*(v105 + 8))(v74, v72);
  v119 = v66;
  v120 = v117;
  sub_29D62E5AC(0);
  v77 = v76;
  v130 = v75;
  v131 = v57;
  v132 = v70;
  v133 = v59;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_29D62B1D4(&qword_2A17ACE80, sub_29D62E5AC);
  v80 = v103;
  v81 = v107;
  sub_29D65FB84();
  (*(v108 + 8))(v71, v81);
  sub_29D65F574();
  v130 = v81;
  v131 = v77;
  v132 = v78;
  v133 = v79;
  swift_getOpaqueTypeConformance2();
  sub_29D62B1D4(&qword_2A17ACE90, MEMORY[0x29EDB8630]);
  v82 = v106;
  v83 = v109;
  sub_29D65FBB4();
  (*(v110 + 8))(v80, v83);
  KeyPath = swift_getKeyPath();
  v85 = sub_29D6229CC();
  v86 = v114;
  v87 = MEMORY[0x29EDBC548];
  if (!v85)
  {
    v87 = MEMORY[0x29EDBC540];
  }

  v88 = v113;
  v89 = v115;
  (*(v114 + 104))(v113, *v87, v115);
  sub_29D62EF7C(0, &qword_2A17ACE98, sub_29D62EC38, sub_29D62EFF0);
  v91 = v116;
  v92 = (v116 + *(v90 + 36));
  sub_29D62EFF0(0);
  (*(v86 + 32))(v92 + *(v93 + 28), v88, v89);
  *v92 = KeyPath;
  return (*(v111 + 32))(v91, v82, v112);
}

uint64_t sub_29D625DDC@<X0>(char *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, char *a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v84 = a4;
  v73 = a1;
  v83 = a6;
  sub_29D62F654(0, &qword_2A17ACEC8, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = v69 - v12;
  v14 = sub_29D65F6B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v71 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACCF0, MEMORY[0x29EDB86E8]);
  v78 = v19;
  v76 = *(v19 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v72 = v69 - v22;
  sub_29D62CD58();
  v81 = *(v23 - 8);
  v82 = v23;
  v24 = *(v81 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v80 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v79 = v69 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v74 = v69 - v33;
  MEMORY[0x2A1C7C4A8](v32, v34);
  v86 = v69 - v35;
  sub_29D62C324();
  v77 = v36;
  v75 = *(v36 - 8);
  v37 = *(v75 + 64);
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v85 = v69 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v43 = v69 - v42;
  v44 = sub_29D624BE8();
  v91 = sub_29D62BC08(v44);
  swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = v84;
  *(v45 + 24) = a5 & 1;
  *(v45 + 32) = v73;
  *(v45 + 40) = a2;
  *(v45 + 48) = a3 & 1;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_29D62F558;
  *(v46 + 24) = v45;
  sub_29D62C408(0);
  sub_29D62FAFC(0, &qword_2A17ACC68, sub_29D62C504);
  sub_29D62B1D4(&qword_2A17ACCE0, sub_29D62C408);
  sub_29D62CFC0();
  v84 = v43;
  sub_29D65FC44();

  sub_29D65FAC4();
  *&v92 = 0x404F400000000000;
  sub_29D65F544();

  v47 = v71;

  v73 = v13;
  sub_29D65F6A4();
  if (qword_2A17AC070 != -1)
  {
    swift_once();
  }

  v48 = qword_2A17AD730;
  *&v92 = qword_2A17AD730;

  v49 = MEMORY[0x29EDBCA98];
  v50 = MEMORY[0x29EDB86E0];
  v51 = MEMORY[0x29EDBCA88];
  v52 = v72;
  sub_29D65F484();
  v53 = *(v15 + 8);
  v69[1] = v15 + 8;
  v70 = v53;
  v53(v47, v14);
  v54 = v52;
  if (qword_2A17AC078 != -1)
  {
    swift_once();
  }

  v92 = xmmword_2A17AD738;
  v93 = *&qword_2A17AD748;
  v94 = qword_2A17AD758;
  v87 = v14;
  v88 = v49;
  v89 = v50;
  v90 = v51;
  v69[0] = swift_getOpaqueTypeConformance2();
  v55 = v78;
  sub_29D65F4A4();
  v76 = *(v76 + 8);
  (v76)(v54, v55);
  sub_29D65FAC4();
  v87 = 0x40CF400000000000;
  sub_29D65F544();

  sub_29D65F6A4();
  v87 = v48;
  sub_29D65F484();

  v70(v47, v14);
  v56 = v74;
  sub_29D65F4A4();
  (v76)(v54, v55);
  v57 = v75;
  v58 = v85;
  v59 = v77;
  (*(v75 + 16))(v85, v84, v77);
  v87 = v58;
  v61 = v81;
  v60 = v82;
  v62 = *(v81 + 16);
  v63 = v79;
  v64 = v86;
  v62(v79, v86, v82);
  v88 = v63;
  v65 = v80;
  v62(v80, v56, v60);
  v89 = v65;
  sub_29D6266D4(&v87, v83);
  v66 = *(v61 + 8);
  v66(v56, v60);
  v66(v64, v60);
  v67 = *(v57 + 8);
  v67(v84, v59);
  v66(v65, v60);
  v66(v63, v60);
  return (v67)(v85, v59);
}

uint64_t sub_29D6266D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_29D62F900(0, &qword_2A17ACED0, sub_29D62C324);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v22 - v7;
  sub_29D62C324();
  v10 = v9;
  sub_29D62D0A0(&qword_2A17ACD00, sub_29D62C324, sub_29D62CFC0);
  v11 = *a1;
  v22 = v10;
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  sub_29D62CD58();
  v14 = v13;
  sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8]);
  sub_29D65F6B4();
  v15 = *(v4 + 56);
  v16 = *(v14 - 8);
  v17 = *(v16 + 16);
  v17(&v8[v15], a1[1], v14);
  v18 = *(v4 + 72);
  v17(&v8[v18], a1[2], v14);
  v19 = v23;
  (*(v12 + 32))(v23, v8, v22);
  v20 = *(v16 + 32);
  v20(v19 + *(v4 + 56), &v8[v15], v14);
  return (v20)(v19 + *(v4 + 72), &v8[v18], v14);
}

uint64_t sub_29D626934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D62F7D8();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C5B8();
  v11 = v10;
  sub_29D62C6FC();
  sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8]);
  sub_29D65F694();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, *a1, v11);
  sub_29D62C7F4();
  v14 = v13;
  sub_29D62C954();
  sub_29D62DD10(255, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
  sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708]);
  sub_29D65F724();
  sub_29D62CAC4();
  v15 = *(v5 + 56);
  v16 = *(v14 - 8);
  (*(v16 + 16))(&v9[v15], a1[1], v14);
  sub_29D62CBE0(0);
  sub_29D62D380();
  v17 = *(v5 + 72);
  sub_29D62F47C(a1[2], &v9[v17], sub_29D62CBE0);
  (*(v12 + 32))(a2, v9, v11);
  (*(v16 + 32))(a2 + *(v5 + 56), &v9[v15], v14);
  return sub_29D62F4E4(&v9[v17], a2 + *(v5 + 72), sub_29D62CBE0);
}

uint64_t sub_29D626BC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_29D62F900(0, &qword_2A17ACF10, sub_29D62F978);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v22 - v7;
  sub_29D62F978();
  v10 = v9;
  sub_29D62D0A0(&qword_2A17ACF98, sub_29D62F978, sub_29D630018);
  v11 = *a1;
  v22 = v10;
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  sub_29D62CD58();
  v14 = v13;
  sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8]);
  sub_29D65F6B4();
  v15 = *(v4 + 56);
  v16 = *(v14 - 8);
  v17 = *(v16 + 16);
  v17(&v8[v15], a1[1], v14);
  v18 = *(v4 + 72);
  v17(&v8[v18], a1[2], v14);
  v19 = v23;
  (*(v12 + 32))(v23, v8, v22);
  v20 = *(v16 + 32);
  v20(v19 + *(v4 + 56), &v8[v15], v14);
  return (v20)(v19 + *(v4 + 72), &v8[v18], v14);
}

uint64_t sub_29D626E24()
{
  v1 = sub_29D65F564();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D65F4D4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  sub_29D65F4B4();
  *(swift_allocObject() + 16) = v0;
  sub_29D65F554();
  sub_29D62D980();
  sub_29D62DFF4();
  return sub_29D65F6D4();
}

uint64_t sub_29D626F6C()
{
  v1 = sub_29D65F564();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D65F4D4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v7 = sub_29D65F4F4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  sub_29D624DE8();
  sub_29D62F024();
  sub_29D65F4E4();
  *(swift_allocObject() + 16) = v0;
  sub_29D65F4C4();
  sub_29D65F554();
  sub_29D62E5F4(0);
  sub_29D62EA54();
  return sub_29D65F6C4();
}

uint64_t sub_29D627124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65F574();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_29D6271B4(uint64_t a1)
{
  v2 = sub_29D65FA04();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29D65FA54();
}

uint64_t sub_29D62727C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v75 = a4;
  v76 = a7;
  v74 = a6;
  v72 = a3;
  v83 = a8;
  sub_29D62F5BC();
  v82 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v79 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D62C538();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v15, v19);
  v80 = &v69[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D62F620(0);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x2A1C7C4A8](v21 - 8, v23);
  v78 = &v69[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v69[-v27];
  sub_29D62C504(0);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x2A1C7C4A8](v29 - 8, v31);
  v81 = &v69[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v37 = &v69[-v36];
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v41 = &v69[-v40];
  MEMORY[0x2A1C7C4A8](v39, v42);
  v44 = &v69[-v43];
  v45 = *(a2 + 32);
  v77 = a5;
  v73 = a1;
  if (v45 == 2)
  {
    v46 = *(v17 + 56);
    v47 = &v69[-v43];
    v48 = 1;
  }

  else
  {
    v49 = *(a2 + 24);
    v70 = *(a2 + 33) << 8;
    if ((v75 & 1) != 0 || a1 != v72)
    {
      v50 = sub_29D65F5C4();
      (*(*(v50 - 8) + 56))(v28, 1, 1, v50);
    }

    else
    {
      if (sub_29D6229CC())
      {
        sub_29D65F5A4();
      }

      else
      {
        sub_29D65F5B4();
      }

      v51 = sub_29D65F5C4();
      (*(*(v51 - 8) + 56))(v28, 0, 1, v51);
    }

    v52 = v80;
    sub_29D62787C(v70 | v45 & 1, a2, 1, v28, v80, v49);
    sub_29D62EED4(v28, sub_29D62F620);
    sub_29D62F4E4(v52, v44, sub_29D62C538);
    v46 = *(v17 + 56);
    v47 = v44;
    v48 = 0;
  }

  v53 = v16;
  v46(v47, v48, 1, v16);
  v54 = *(a2 + 16);
  if (v54 == 2)
  {
    v55 = 1;
  }

  else
  {
    v56 = *(a2 + 8);
    v57 = *(a2 + 17) << 8;
    v58 = 1;
    v71 = v37;
    if ((v76 & 1) == 0 && v73 == v74)
    {
      if (sub_29D6229CC())
      {
        sub_29D65F5B4();
      }

      else
      {
        sub_29D65F5A4();
      }

      v58 = 0;
    }

    v59 = sub_29D65F5C4();
    v60 = v78;
    (*(*(v59 - 8) + 56))(v78, v58, 1, v59);
    v61 = v57 | v54 & 1;
    v62 = v80;
    sub_29D62787C(v61, a2, 0, v60, v80, v56);
    sub_29D62EED4(v60, sub_29D62F620);
    sub_29D62F4E4(v62, v41, sub_29D62C538);
    v55 = 0;
    v37 = v71;
  }

  v46(v41, v55, 1, v53);
  sub_29D62F47C(v44, v37, sub_29D62C504);
  v63 = v81;
  sub_29D62F47C(v41, v81, sub_29D62C504);
  sub_29D62D0A0(&qword_2A17ACD10, sub_29D62C504, sub_29D62D110);
  v64 = v79;
  sub_29D62F47C(v37, v79, sub_29D62C504);
  v65 = v82;
  v66 = *(v82 + 48);
  sub_29D62F47C(v63, &v64[v66], sub_29D62C504);
  v67 = v83;
  sub_29D62F4E4(v64, v83, sub_29D62C504);
  sub_29D62F4E4(&v64[v66], v67 + *(v65 + 48), sub_29D62C504);
  sub_29D62F0F0(v41, sub_29D62C504);
  sub_29D62F0F0(v44, sub_29D62C504);
  sub_29D62F0F0(v63, sub_29D62C504);
  return sub_29D62F0F0(v37, sub_29D62C504);
}

uint64_t sub_29D62787C@<X0>(unsigned int a1@<W0>, double *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v166 = a4;
  v185 = a3;
  v155 = a2;
  LODWORD(v156) = a1;
  v174 = a5;
  LODWORD(v157) = a1 >> 8;
  sub_29D62CC14();
  v172 = v8;
  v171 = *(v8 - 8);
  v9 = *(v171 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v145 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62F620(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v162 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62CBE0(0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v173 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v170 = &v144 - v22;
  v177 = sub_29D65F5C4();
  v160 = *(v177 - 8);
  v23 = *(v160 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v177, v24);
  v144 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v159 = &v144 - v28;
  *&v182 = COERCE_DOUBLE(sub_29D65F724());
  v187 = *(v182 - 8);
  v29 = *(v187 + 64);
  MEMORY[0x2A1C7C4A8](v182, v30);
  v179 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = MEMORY[0x29EDB8580];
  sub_29D62CA4C(0, &qword_2A17ACCA8, MEMORY[0x29EDB8708]);
  v180 = v32;
  v186 = *(*&v32 - 8);
  v33 = *(v186 + 64);
  MEMORY[0x2A1C7C4A8](*&v32, v34);
  v178 = &v144 - v35;
  sub_29D62C954();
  v183 = v36;
  v188 = *(v36 - 8);
  v37 = *(v188 + 64);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v181 = &v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C7F4();
  v169 = v40;
  v168 = *(v40 - 8);
  v41 = *(v168 + 64);
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v167 = &v144 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43, v45);
  v184 = &v144 - v46;
  v47 = MEMORY[0x29EDB8620];
  sub_29D62F654(0, &qword_2A17ACEE8, MEMORY[0x29EDC99B0], MEMORY[0x29EDB8788], MEMORY[0x29EDB8620]);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v48 - 8, v50);
  sub_29D62F654(0, &qword_2A17ACEC8, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], v47);
  v52 = *(*(v51 - 8) + 64);
  v54 = MEMORY[0x2A1C7C4A8](v51 - 8, v53);
  v56 = &v144 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v54, v57);
  v59 = &v144 - v58;
  *&v148 = COERCE_DOUBLE(sub_29D65F694());
  v149 = *(v148 - 8);
  v60 = *(v149 + 64);
  MEMORY[0x2A1C7C4A8](v148, v61);
  v63 = &v144 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = MEMORY[0x29EDB85E8];
  sub_29D62CA4C(0, &qword_2A17ACC90, MEMORY[0x29EDB86D8]);
  v151 = v64;
  v152 = *(*&v64 - 8);
  v65 = *(v152 + 64);
  MEMORY[0x2A1C7C4A8](*&v64, v66);
  v146 = &v144 - v67;
  sub_29D62C6FC();
  v153 = v68;
  v154 = *(v68 - 8);
  v69 = *(v154 + 8);
  MEMORY[0x2A1C7C4A8](v68, v70);
  v147 = &v144 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C5B8();
  v165 = v72;
  v164 = *(v72 - 8);
  v73 = *(v164 + 64);
  v75 = MEMORY[0x2A1C7C4A8](v72, v74);
  v163 = &v144 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v75, v77);
  v189 = &v144 - v78;
  v79 = *a2;
  sub_29D65FAC4();
  v204[0] = v79;
  v175 = v59;
  sub_29D65F544();

  sub_29D65FAC4();
  v204[0] = -a6;
  v176 = v56;
  sub_29D65F544();

  sub_29D65FAC4();
  v80 = (v185 & 1) == 0;
  v185 &= 1u;
  v81 = 1.63587128e-306;
  if (v80)
  {
    v82 = -1.39234638e188;
  }

  else
  {
    v81 = 9.21322621e242;
    v82 = -9.12488124e192;
  }

  v204[0] = v81;
  v204[1] = v82;
  if (v80)
  {
    v83 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  else
  {
    v83 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  }

  sub_29D65F544();

  sub_29D65F684();
  sub_29D65F9E4();
  v84 = v146;
  v85 = *&v148;
  v86 = MEMORY[0x29EDB86D0];
  sub_29D65F4A4();
  sub_29D62F6A8(v204);
  (*(v149 + 8))(v63, COERCE_DOUBLE(*&v85));
  v87 = [objc_opt_self() *v83];
  v203 = sub_29D65FBD4();
  v199 = v85;
  v200 = v86;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = MEMORY[0x29EDBCA98];
  v90 = v147;
  v91 = v151;
  v92 = MEMORY[0x29EDBCA88];
  sub_29D65F484();
  v93 = v91;
  (*(v152 + 8))(v84, COERCE_DOUBLE(*&v91));

  v195 = v185;
  v196 = a6;
  LODWORD(v152) = v156 & 1;
  v197 = v156 & 1;
  LOBYTE(v91) = v157;
  v198 = v157;
  v199 = v93;
  v200 = v89;
  v201 = OpaqueTypeConformance2;
  v202 = v92;
  v156 = MEMORY[0x29EDB8598];
  swift_getOpaqueTypeConformance2();
  v94 = v153;
  sub_29D65F494();
  (*(v154 + 1))(v90, v94);
  sub_29D65FAC4();
  v199 = v79;
  sub_29D65F544();

  sub_29D65FAC4();
  v199 = -a6;
  sub_29D65F544();

  v95 = v179;
  sub_29D65F714();
  v96 = v178;
  v97 = *&v182;
  v98 = MEMORY[0x29EDB8700];
  sub_29D65F474();
  v99 = *(v187 + 8);
  v187 += 8;
  v154 = v99;
  v99(v95, *&v97);
  v203 = sub_29D65FC04();
  v199 = v97;
  v200 = v98;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v181;
  v102 = v180;
  sub_29D65F484();
  v103 = *(v186 + 8);
  v186 += 8;
  v158 = v103;
  v103(v96, *&v102);

  v104 = v159;
  LOBYTE(v94) = v185;
  v105 = v161;
  sub_29D628D70(v155, v185, v106);
  v190 = v105;
  v191 = a6;
  v192 = v152;
  v193 = LOBYTE(v91);
  v194 = v94;
  sub_29D65FC64();
  sub_29D62DD10(0, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
  v199 = v102;
  v200 = v89;
  v161 = v100;
  v201 = v100;
  v202 = MEMORY[0x29EDBCA88];
  v107 = v160;
  v108 = swift_getOpaqueTypeConformance2();
  sub_29D62CAC4();
  v157 = v108;
  v109 = v162;
  v110 = v183;
  v111 = v101;
  sub_29D65F464();
  v112 = *(v107 + 8);
  v113 = v177;
  v112(v104, v177);
  v114 = *(v188 + 8);
  v188 += 8;
  v114(v111, v110);
  sub_29D62F768(v166, v109, sub_29D62F620);
  if ((*(v107 + 48))(v109, 1, v113) == 1)
  {
    sub_29D62EED4(v109, sub_29D62F620);
    v115 = 1;
    v116 = v172;
    v117 = v171;
    v118 = v170;
  }

  else
  {
    v119 = v144;
    (*(v107 + 32))(v144, v109, v113);
    sub_29D65FAC4();
    v199 = v79;
    sub_29D65F544();

    sub_29D65FAC4();
    v199 = -a6;
    sub_29D65F544();

    v120 = v179;
    sub_29D65F714();
    v121 = v178;
    v122 = v182;
    sub_29D65F474();
    v154(v120, v122);
    v199 = COERCE_DOUBLE(sub_29D65FC04());
    v123 = v181;
    v124 = v180;
    sub_29D65F484();
    v158(v121, *&v124);

    MEMORY[0x2A1C7C4A8](v125, v126);
    sub_29D65FC64();
    v127 = v145;
    v128 = v183;
    sub_29D65F464();
    v114(v123, v128);
    v112(v119, v177);
    v129 = v171;
    v130 = v170;
    v131 = v127;
    v132 = v172;
    (*(v171 + 32))(v170, v131, v172);
    v115 = 0;
    v116 = v132;
    v117 = v129;
    v118 = v130;
  }

  (*(v117 + 56))(v118, v115, 1, v116);
  v133 = v164;
  v134 = v163;
  v135 = v165;
  (*(v164 + 16))(v163, v189, v165);
  v199 = *&v134;
  v136 = v168;
  v137 = v167;
  v138 = v184;
  v139 = v169;
  (*(v168 + 16))(v167, v184, v169);
  v200 = v137;
  v140 = v173;
  sub_29D62F47C(v118, v173, sub_29D62CBE0);
  v201 = v140;
  sub_29D626934(&v199, v174);
  sub_29D62F0F0(v118, sub_29D62CBE0);
  v141 = *(v136 + 8);
  v141(v138, v139);
  v142 = *(v133 + 8);
  v142(v189, v135);
  sub_29D62F0F0(v140, sub_29D62CBE0);
  v141(v137, v139);
  return (v142)(v134, v135);
}

uint64_t sub_29D628CD4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65DA44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  sub_29D602DBC(a1 & 1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_29D65FB54();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_29D628D70(uint64_t a1, char a2, __n128 a3)
{
  a3.n128_u64[0] = *(a1 + 8);
  v3 = *(a1 + 16);
  if ((a2 & 1) == 0)
  {
    if (v3 != 2 && *(a1 + 32) != 2 && *(a1 + 24) <= a3.n128_f64[0])
    {
      return MEMORY[0x2A1C584A8]();
    }

    return MEMORY[0x2A1C584A0](a3);
  }

  if (v3 == 2 || *(a1 + 32) == 2 || *(a1 + 24) <= a3.n128_f64[0])
  {
    return MEMORY[0x2A1C584A0](a3);
  }

  return MEMORY[0x2A1C584A8]();
}

uint64_t sub_29D628DC4@<X0>(int a1@<W1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_29D65DA44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  sub_29D628EA8(a1 & 0xFFFFFF01, a2 & 1, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v12 = sub_29D65FB54();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = swift_getKeyPath();
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v18;
  *(a3 + 32) = result;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_29D628EA8@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v41 = a1;
  v7 = sub_29D65DA84();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v10 = sub_29D65DA44();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v42 = &v39 - v17;
  v18 = sub_29D65E4D4();
  v19 = *MEMORY[0x29EDC7640];
  v20 = objc_opt_self();
  v21 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a2 & 1) == 0)
  {
    v21 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v22 = [v20 *v21];
  sub_29D65FBD4();
  v23 = sub_29D5DF448(0, &qword_2A17AC3D0, 0x29EDC7A00);
  v24 = sub_29D660344();
  v47 = v23;
  *&v46 = v24;
  sub_29D5E20A8(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v18;
  sub_29D62B790(v45, v19, isUniquelyReferenced_nonNull_native);
  v26 = round(a4);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_10:
    sub_29D65DA74();
    sub_29D65DA94();
    sub_29D65DA54();
    sub_29D62B1D4(&qword_2A17ACEF8, MEMORY[0x29EDB9A78]);
    v30 = v42;
    sub_29D65DA34();
    (*(v43 + 8))(v15, v10);
    return (*(v43 + 32))(a3, v30, v10);
  }

  v39 = v19;
  v40 = v15;
  v27 = v10;
  v28 = a3;
  v29 = BYTE1(v41);
  *&v46 = v26;
  sub_29D660674();
  sub_29D65DA94();
  v30 = v42;
  sub_29D65DA54();
  v31 = v29 == 2;
  a3 = v28;
  v10 = v27;
  if (!v31)
  {
    v32 = sub_29D65E494();
    v33 = objc_opt_self();
    v34 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
    if ((a2 & 1) == 0)
    {
      v34 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
    }

    v35 = [v33 *v34];
    sub_29D65FBD4();
    v36 = sub_29D660344();
    v47 = v23;
    *&v46 = v36;
    sub_29D5E20A8(&v46, v45);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v32;
    sub_29D62B790(v45, v39, v37);
    v15 = v40;
    if (qword_2A1A1EAA0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  return (*(v43 + 32))(a3, v30, v10);
}

uint64_t sub_29D629324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80[2] = a2;
  v95 = a3;
  sub_29D62F3D4();
  v94 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v93 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65F5E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v80[1] = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D65F604();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v80[0] = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DC20(0);
  v87 = v16;
  v83 = *(v16 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v81 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E810(0, &qword_2A17ACD90, sub_29D62DC20, &qword_2A17ACDF8, sub_29D62DC20);
  v85 = *(v20 - 8);
  v86 = v20;
  v21 = *(v85 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v84 = v80 - v23;
  sub_29D62DAEC();
  v89 = *(v24 - 8);
  v90 = v24;
  v25 = *(v89 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v82 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DAB8(0);
  v29 = *(*(v28 - 8) + 64);
  v31 = (MEMORY[0x2A1C7C4A8])(v28 - 8, v30);
  v92 = v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v91 = v80 - v34;
  v35 = sub_29D65F444();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v35, v38);
  v40 = v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 64);
  v46 = (MEMORY[0x2A1C7C4A8])(v41, v45);
  v48 = v80 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v46, v49);
  v51 = v80 - v50;
  v52 = sub_29D65F704();
  if (v52)
  {
    if (qword_2A17AC080 != -1)
    {
      swift_once();
    }

    v88 = xmmword_2A17AD760;
    v53 = qword_2A17AD770;
    v54 = qword_2A17AD780;
    v52 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v55 = v88;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    v55 = 0uLL;
  }

  v99 = v55;
  v100 = v53;
  v101 = v52;
  v102 = v54;
  sub_29D65F434();
  if (qword_2A17AC070 != -1)
  {
    swift_once();
  }

  v96 = qword_2A17AD730;
  sub_29D65F624();
  (*(v36 + 8))(v40, v35);
  if (!sub_29D65F704())
  {
    sub_29D65F6E4();
    goto LABEL_14;
  }

  v56 = sub_29D65F704();
  v57 = sub_29D65F6F4();
  v58 = v57 - 1;
  if (__OFSUB__(v57, 1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  v59 = sub_29D65F6E4();
  if (v97)
  {
LABEL_14:
    v61 = 1;
    a1 = v91;
    goto LABEL_15;
  }

  a1 = v91;
  if (v56 == v58)
  {
    v61 = 1;
LABEL_15:
    v63 = v89;
    v62 = v90;
    goto LABEL_16;
  }

  *&v88 = v80;
  MEMORY[0x2A1C7C4A8](v59, v60);
  sub_29D65F5F4();
  sub_29D65F5D4();
  sub_29D62DC68(0);
  v79[2] = v72;
  v79[3] = sub_29D62DE50();
  v79[0] = sub_29D62F54C;
  v79[1] = v79;
  v40 = v81;
  sub_29D65F514();
  if (qword_2A17AC058 != -1)
  {
    goto LABEL_22;
  }

LABEL_18:
  v73 = sub_29D62B1D4(&qword_2A17ACDF8, sub_29D62DC20);
  v74 = v84;
  v75 = v87;
  sub_29D65F634();
  (*(v83 + 8))(v40, v75);
  if (qword_2A17AC088 != -1)
  {
    swift_once();
  }

  v97 = v73;
  v98 = qword_2A17AD788;
  v96 = v75;
  swift_getOpaqueTypeConformance2();
  v76 = v82;
  v77 = v86;
  sub_29D65F624();
  (*(v85 + 8))(v74, v77);
  v63 = v89;
  v78 = v90;
  (*(v89 + 32))(a1, v76, v90);
  v62 = v78;
  v61 = 0;
LABEL_16:
  (*(v63 + 56))(a1, v61, 1, v62);
  v64 = *(v43 + 16);
  v64(v48, v51, v42);
  v65 = v92;
  sub_29D62F47C(a1, v92, sub_29D62DAB8);
  v66 = v93;
  v64(v93, v48, v42);
  sub_29D62E0C0();
  v67 = v94;
  v68 = *(v94 + 48);
  sub_29D62F47C(v65, &v66[v68], sub_29D62DAB8);
  v69 = v95;
  (*(v43 + 32))(v95, v66, v42);
  sub_29D62F4E4(&v66[v68], v69 + *(v67 + 48), sub_29D62DAB8);
  sub_29D62F0F0(a1, sub_29D62DAB8);
  v70 = *(v43 + 8);
  v70(v51, v42);
  sub_29D62F0F0(v65, sub_29D62DAB8);
  return (v70)(v48, v42);
}

__n128 sub_29D629D04@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v15 = sub_29D629E1C(a2);
  *(&v15 + 1) = v3;
  sub_29D60C02C();
  v4 = sub_29D65FB64();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_29D65FC64();
  sub_29D65F9F4();
  *&v14[39] = v17;
  *&v14[23] = v16;
  *&v14[7] = v15;
  *(a1 + 65) = *v14;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0x3FE0000000000000;
  *(a1 + 48) = v12;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 81) = *&v14[16];
  result = *&v14[32];
  *(a1 + 97) = *&v14[32];
  *(a1 + 112) = *(&v17 + 1);
  return result;
}

uint64_t sub_29D629E1C(double a1)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17AC060 != -1)
  {
    swift_once();
  }

  if (qword_2A17ACBE8)
  {
    v8 = qword_2A17ACBE8;
    sub_29D62A03C(v8, a1);
    v10 = v9;
  }

  else
  {
    sub_29D65F2E4();
    v11 = sub_29D65F2F4();
    v12 = sub_29D6601F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      v15 = sub_29D6607A4();
      v17 = sub_29D64A1D0(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29D5D7000, v11, v12, "%{public}s: Failed to create frequency formatter", v13, 0xCu);
      sub_29D5DF1C4(v14);
      MEMORY[0x29ED63350](v14, -1, -1);
      MEMORY[0x29ED63350](v13, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  return v10;
}

void sub_29D62A03C(id a1, double a2)
{
  v3 = a2 / 1000.0;
  sub_29D5DF448(0, &qword_2A17AC258, 0x29EDBA070);
  if (v3 < 1.0)
  {
    v4 = sub_29D660354();
    a1 = [a1 stringFromNumber_];

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v5 = sub_29D65FF24();

    v6 = HKFormatValueAndUnit();

    if (v6)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v7 = sub_29D660354();
  v8 = [a1 stringFromNumber_];

  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v9 = sub_29D65FF24();

  v6 = HKFormatValueAndUnit();

  if (v6)
  {
LABEL_9:
    sub_29D65FF64();

    return;
  }

  __break(1u);
}

uint64_t sub_29D62A29C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v83 = a1;
  v95 = a2;
  sub_29D62F080();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65F5E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D65F604();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v81 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E8C4(0);
  v90 = v16;
  v86 = *(v16 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v84 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E810(0, &qword_2A17ACE48, sub_29D62E8C4, &qword_2A17ACE68, sub_29D62E8C4);
  v88 = *(v20 - 8);
  v89 = v20;
  v21 = *(v88 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v87 = &v77 - v23;
  sub_29D62E6DC();
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v24, v28);
  v85 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E6A8(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v30 - 8, v32);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v38 = &v77 - v37;
  v39 = sub_29D65F444();
  v92 = *(v39 - 8);
  v93 = v39;
  v40 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v43 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v44, v45);
  v47 = &v77 - v46;
  if (qword_2A17AC078 != -1)
  {
    swift_once();
  }

  v99 = xmmword_2A17AD738;
  v100 = qword_2A17AD748;
  v101 = qword_2A17AD750;
  v102 = qword_2A17AD758;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v48 = v47;
  sub_29D65F434();
  sub_29D65F6E4();
  v94 = v7;
  if (v97)
  {
    v49 = 1;
LABEL_12:
    v91 = v47;
    (*(v26 + 56))(v38, v49, 1, v25);
    v62 = v92;
    v63 = v93;
    v64 = *(v92 + 16);
    v64(v43, v47, v93);
    v65 = v43;
    sub_29D62F47C(v38, v34, sub_29D62E6A8);
    v66 = v34;
    v67 = v94;
    v64(v94, v43, v63);
    sub_29D62EAE0();
    v68 = *(v3 + 48);
    sub_29D62F47C(v66, &v67[v68], sub_29D62E6A8);
    v69 = v95;
    (*(v62 + 32))(v95, v67, v63);
    sub_29D62F4E4(&v67[v68], v69 + *(v3 + 48), sub_29D62E6A8);
    sub_29D62F0F0(v38, sub_29D62E6A8);
    v70 = *(v62 + 8);
    v70(v91, v63);
    sub_29D62F0F0(v66, sub_29D62E6A8);
    return (v70)(v65, v63);
  }

  v78 = v25;
  v77 = v43;
  v50 = sub_29D65F704();
  v80 = v3;
  v79 = v34;
  if (!v50 || (sub_29D65F704(), result = sub_29D65F6F4(), !__OFSUB__(result, 1)))
  {
    v52 = sub_29D65FC74();
    MEMORY[0x2A1C7C4A8](v52, v53);
    sub_29D65F5F4();
    sub_29D65F5D4();
    sub_29D62E90C(0);
    v75 = v54;
    v76 = sub_29D62E998();
    v73 = sub_29D62F150;
    v74 = &v71;
    v72 = 0;
    v71 = 0;
    v55 = v84;
    sub_29D65F514();
    v56 = v87;
    if (qword_2A17AC058 != -1)
    {
      swift_once();
    }

    v57 = sub_29D62B1D4(&qword_2A17ACE68, sub_29D62E8C4);
    v58 = v90;
    sub_29D65F634();
    (*(v86 + 8))(v55, v58);
    v59 = v56;
    v3 = v80;
    v34 = v79;
    v47 = v48;
    if (qword_2A17AC088 != -1)
    {
      swift_once();
    }

    v97 = v57;
    v98 = qword_2A17AD788;
    v96 = v58;
    swift_getOpaqueTypeConformance2();
    v60 = v85;
    v61 = v89;
    sub_29D65F624();
    (*(v88 + 8))(v59, v61);
    v25 = v78;
    (*(v26 + 32))(v38, v60, v78);
    v49 = 0;
    v43 = v77;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D62AB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *&v22 = sub_29D62F194(a1, -a3);
  *(&v22 + 1) = v4;
  sub_29D60C02C();
  v5 = sub_29D65FB64();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v9 & 1;
  sub_29D65FC74();
  sub_29D65F9F4();
  *&v21[7] = v22;
  *&v21[23] = v23;
  *&v21[39] = v24;
  v15 = sub_29D65FB04();
  result = sub_29D65F9C4();
  *(a2 + 65) = *v21;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v14;
  *(a2 + 24) = v11;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0x3FE0000000000000;
  *(a2 + 48) = v13;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 81) = *&v21[16];
  *(a2 + 97) = *&v21[32];
  *(a2 + 112) = *(&v24 + 1);
  *(a2 + 120) = v15;
  *(a2 + 128) = v17;
  *(a2 + 136) = v18;
  *(a2 + 144) = v19;
  *(a2 + 152) = v20;
  *(a2 + 160) = 0;
  return result;
}

uint64_t sub_29D62AC78()
{
  sub_29D62EED4(v0 + OBJC_IVAR____TtC16HearingAppPlugin26AudiogramPDFAudiogramChart_chartModel, type metadata accessor for AudiogramPDFAudiogramChart.Model);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D62AD18()
{
  result = type metadata accessor for AudiogramPDFAudiogramChart.Model(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D62ADFC()
{
  result = type metadata accessor for AudiogramPDFChartData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D62AEB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D65E734();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_29D62AF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D62B1D4(&qword_2A17ACBE0, type metadata accessor for AudiogramPDFAudiogramChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D62AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D62B1D4(&qword_2A17ACBE0, type metadata accessor for AudiogramPDFAudiogramChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29D62B068(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D62B1D4(&qword_2A17ACC30, type metadata accessor for AudiogramPDFAudiogramChart);
  *v4 = v1;
  v4[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D62B1D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D62B238(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29D62F860();
  v37 = a2;
  result = sub_29D6605F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_29D5E20A8(v23, v38);
      }

      else
      {
        sub_29D5E0D1C(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_29D65FF64();
      sub_29D660724();
      sub_29D65FFA4();
      v26 = sub_29D660744();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_29D5E20A8(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_29D62B4FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29D63032C();
  v38 = a2;
  result = sub_29D6605F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      }

      v27 = *(v8 + 40);
      sub_29D660724();
      sub_29D65FFA4();
      result = sub_29D660744();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}