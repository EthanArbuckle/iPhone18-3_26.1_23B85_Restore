uint64_t sub_23D7B454C()
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7B45D4()
{
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0]);

  return sub_23D80DD0C();
}

uint64_t sub_23D7B4658()
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7B46DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D7B4744(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4558, &qword_23D8112F0);
    sub_23D7B4930(a2, type metadata accessor for AXRTextContent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D7B47E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRArticle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7B4844(uint64_t a1)
{
  v2 = type metadata accessor for AXRArticle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D7B4930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D7B4990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D80D67C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23D7B4AD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D80D67C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_23D7B4C0C()
{
  sub_23D80D67C();
  if (v0 <= 0x3F)
  {
    sub_23D7B4D24(319, &qword_27E2E4898, type metadata accessor for AXRTextContent, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23D7B4D24(319, &qword_27E2E48A0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D7B4D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23D7B4D9C()
{
  result = qword_27E2E48A8;
  if (!qword_27E2E48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48A8);
  }

  return result;
}

unint64_t sub_23D7B4DF4()
{
  result = qword_27E2E48B0;
  if (!qword_27E2E48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48B0);
  }

  return result;
}

unint64_t sub_23D7B4E4C()
{
  result = qword_27E2E48B8;
  if (!qword_27E2E48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48B8);
  }

  return result;
}

uint64_t sub_23D7B4EA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23D80E4DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E69646E614C7369 && a2 == 0xED00006567615067 || (sub_23D80E4DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6964616F4C7369 && a2 == 0xE900000000000067)
  {

    return 7;
  }

  else
  {
    v6 = sub_23D80E4DC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t EnvironmentValues.axRuntimeClient.getter()
{
  sub_23D7B5174();
  sub_23D80DB2C();
  return v1;
}

unint64_t sub_23D7B5174()
{
  result = qword_27E2E48C0;
  if (!qword_27E2E48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48C0);
  }

  return result;
}

uint64_t sub_23D7B51C8(void **a1)
{
  v1 = *a1;
  sub_23D7B5174();
  v2 = v1;
  return sub_23D80DB3C();
}

void (*EnvironmentValues.axRuntimeClient.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_23D7B5174();
  sub_23D80DB2C();
  return sub_23D7B52C0;
}

void sub_23D7B52C0(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_23D80DB3C();
    v7 = *a1;
  }

  else
  {
    sub_23D80DB3C();
  }
}

uint64_t sub_23D7B5354@<X0>(void *a1@<X8>)
{
  sub_23D7B5174();
  result = sub_23D80DB2C();
  *a1 = v3;
  return result;
}

uint64_t sub_23D7B53C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D7B5424();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23D7B5424()
{
  result = qword_27E2E48C8;
  if (!qword_27E2E48C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E48D0, &unk_23D8115C0);
    sub_23D7B54A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48C8);
  }

  return result;
}

unint64_t sub_23D7B54A8()
{
  result = qword_27E2E48D8;
  if (!qword_27E2E48D8)
  {
    type metadata accessor for AXRuntimeClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48D8);
  }

  return result;
}

AccessibilityReaderData::AXRSpeechState_optional __swiftcall AXRSpeechState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AXRSpeechState.rawValue.getter()
{
  v1 = 0x676E696B61657073;
  v2 = 0x64656C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x64656873696E6966;
  }

  if (*v0)
  {
    v1 = 0x646573756170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23D7B55E0()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D7B56A0()
{
  *v0;
  *v0;
  *v0;
  sub_23D80DDAC();
}

uint64_t sub_23D7B574C()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

void sub_23D7B5814(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x676E696B61657073;
  v4 = 0x64656C65636E6163;
  if (*v1 != 2)
  {
    v4 = 0x64656873696E6966;
  }

  if (*v1)
  {
    v3 = 0x646573756170;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

AccessibilityReaderData::AXRIndexPathIndex_optional __swiftcall AXRIndexPathIndex.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23D7B58C0()
{
  v23[3] = *MEMORY[0x277D85DE8];
  v0 = sub_23D80D97C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D80D89C();
  v5 = sub_23D80D88C();
  v6 = sub_23D80D7DC();
  v7 = *MEMORY[0x277CB8030];
  v23[0] = 0;
  v8 = [v6 setCategory:v7 error:v23];

  if (v8)
  {
    v9 = v23[0];
  }

  else
  {
    v10 = v23[0];
    v11 = sub_23D80D5DC();

    swift_willThrow();
    if (qword_27E2E4248 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v0, qword_27E2E5348);
    swift_beginAccess();
    (*(v1 + 16))(v4, v12, v0);
    v13 = v11;
    v14 = sub_23D80D95C();
    v15 = sub_23D80E07C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_23D78A000, v14, v15, "Failed to configure reader mode audio session with error: %@", v16, 0xCu);
      sub_23D790730(v17, &qword_27E2E45B0, &unk_23D810330);
      MEMORY[0x23EEED790](v17, -1, -1);
      MEMORY[0x23EEED790](v16, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
  }

  sub_23D80D7EC();
  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AXRBlockManager.preferredLanguage.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t AXRBlockManager.preferredLanguage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AXRBlockManager.shouldShowNowPlayingControls.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXRBlockManager.shouldShowNowPlayingControls.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void (*AXRBlockManager.pages.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B5ECC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$pages.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$pages.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.pageContentAtIndex(_:)(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v2 = *(v5 + 16);

  if (v2 <= a1)
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v5 + 16) > a1)
  {
    v4 = *(v5 + 8 * a1 + 32);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AXRBlockManager.currentBlock.getter()
{
  v73 = sub_23D80D67C();
  v74 = *(v73 - 8);
  v0 = *(v74 + 64);
  v1 = MEMORY[0x28223BE20](v73);
  v71 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v72 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = sub_23D80D6CC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v23 = AXRBlockManager.blockAtIndexPath(_:)();
  (*(v19 + 8))(v22, v18);
  if (!v23)
  {
    v67 = v15;
    v68 = v8;
    v66 = *(v19 + 56);
    v70 = v17;
    v66(v17, 1, 1, v18);
    v24 = sub_23D80D5BC();
    v25 = *(v24 - 8);
    v64 = *(v25 + 56);
    v65 = (v25 + 56);
    v69 = v10;
    v64(v10, 1, 1, v24);
    sub_23D80D66C();
    v26 = type metadata accessor for AXRTextBlock();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v23 = swift_allocObject();
    v29 = v71;
    sub_23D80D66C();
    v30 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
    v31 = v74;
    v60 = *(v74 + 32);
    v60(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v29, v73);
    v32 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
    v33 = v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
    v34 = v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
    *v34 = 4;
    *(v34 + 4) = 1;
    v61 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
    v35 = v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
    *v35 = 0;
    *(v35 + 8) = 1;
    v62 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
    v63 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
    v66((v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath), 1, 1, v18);
    v64((v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText), 1, 1, v24);
    v36 = v73;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
    v64 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
    v37 = (v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
    *v37 = 0;
    v37[1] = 0;
    v65 = v37;
    v38 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
    sub_23D80D72C();
    (*(v31 + 16))(v29, v72, v36);
    v39 = *(v31 + 8);
    v74 = v31 + 8;
    v66 = v39;
    (v39)(v23 + v30, v36);
    v60(v23 + v30, v29, v36);
    v40 = (v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
    *v40 = 0;
    v40[1] = 0xE000000000000000;
    *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
    swift_beginAccess();
    if (*(v23 + v32))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v59 - 2) = v23;
      *(&v59 - 8) = 0;
      v80[3] = v23;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *(v23 + v32) = 0;
    }

    swift_beginAccess();
    v42 = *(v33 + 16) == 1;
    v71 = v38;
    if (v42)
    {
      *v33 = 0;
      *(v33 + 8) = 0;
      *(v33 + 16) = 1;
    }

    else
    {
      v43 = swift_getKeyPath();
      MEMORY[0x28223BE20](v43);
      *(&v59 - 3) = 0;
      *(&v59 - 2) = 0;
      *(&v59 - 4) = v23;
      *(&v59 - 8) = 1;
      v80[0] = v23;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6EC();
    }

    v44 = v69;
    sub_23D7D339C(MEMORY[0x277D84F90]);
    LODWORD(v80[0]) = 4;
    BYTE4(v80[0]) = 1;
    sub_23D7D37C0(v80);
    v45 = v61;
    swift_beginAccess();
    if (*(v23 + v45))
    {
      v46 = swift_getKeyPath();
      MEMORY[0x28223BE20](v46);
      *(&v59 - 2) = v23;
      *(&v59 - 8) = 0;
      v79 = v23;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *(v23 + v45) = 0;
    }

    v47 = v62;
    sub_23D7D42EC(0, 0);
    swift_beginAccess();
    if (*(v23 + v47))
    {
      v48 = swift_getKeyPath();
      MEMORY[0x28223BE20](v48);
      *(&v59 - 2) = v23;
      *(&v59 - 8) = 0;
      v78 = v23;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *(v23 + v47) = 0;
    }

    v49 = v63;
    swift_beginAccess();
    if (*(v23 + v49))
    {
      v50 = swift_getKeyPath();
      MEMORY[0x28223BE20](v50);
      *(&v59 - 2) = v23;
      *(&v59 - 8) = 0;
      v77 = v23;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *(v23 + v49) = 0;
    }

    v51 = v68;
    v52 = v67;
    sub_23D790648(v70, v67, &qword_27E2E43F8, &qword_23D811650);
    sub_23D7D4AF8(v52);
    sub_23D790648(v44, v51, &qword_27E2E43F0, &unk_23D811FD0);
    sub_23D7D512C(v51);
    v53 = sub_23D7A1CF4(0, 0xE000000000000000);
    v54 = v64;
    swift_beginAccess();
    if (v53 == *(v54 + v23))
    {
      *(v54 + v23) = v53;
    }

    else
    {
      v55 = swift_getKeyPath();
      MEMORY[0x28223BE20](v55);
      *(&v59 - 2) = v23;
      *(&v59 - 8) = v53;
      v76 = v23;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6EC();
    }

    v56 = v65;
    swift_beginAccess();
    if (v56[1])
    {
      v57 = swift_getKeyPath();
      MEMORY[0x28223BE20](v57);
      *(&v59 - 3) = 0;
      *(&v59 - 2) = 0;
      *(&v59 - 4) = v23;
      v75 = v23;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *v56 = 0;
      v56[1] = 0;
    }

    (v66)(v72, v73);
    sub_23D790730(v44, &qword_27E2E43F0, &unk_23D811FD0);
    sub_23D790730(v70, &qword_27E2E43F8, &qword_23D811650);
  }

  return v23;
}

uint64_t AXRBlockManager.blockIndex.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

uint64_t AXRBlockManager.blockAtIndexPath(_:)()
{
  if (sub_23D80D6AC() < 2)
  {
    return 0;
  }

  v0 = sub_23D80D6DC();
  v1 = sub_23D80D6DC();
  v2 = AXRBlockManager.pageContentAtIndex(_:)(v0);
  if ((v0 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v4 = *(v8 + 16);

  if (v0 >= v4)
  {
    goto LABEL_11;
  }

  result = v3;
  if (v1 < 0)
  {
    goto LABEL_11;
  }

  if (v3 >> 62)
  {
    v7 = sub_23D80E31C();
    result = v3;
    if (v1 < v7)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x23EEECB80](v1, result);
    goto LABEL_10;
  }

  if (v1 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v1 + 32);

LABEL_10:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t AXRBlockManager.totalCharacterCount.getter()
{
  v1 = v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  if (*(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount + 8) != 1)
  {
    return *v1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v2 = sub_23D7B7534(v11);

  v10 = v1;
  if (v2 >> 62)
  {
LABEL_20:
    v1 = sub_23D80E31C();
  }

  else
  {
    v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = 0;
  while (v1 != v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EEECB80](v3, v2);
      if (__OFADD__(v3, 1))
      {
LABEL_14:
        __break(1u);
        return *v1;
      }
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v5 = *(v2 + 8 * v3 + 32);

      if (__OFADD__(v3, 1))
      {
        goto LABEL_14;
      }
    }

    swift_getKeyPath();
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6FC();

    v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
    swift_beginAccess();
    v7 = *(v5 + v6);

    ++v3;
    v8 = __OFADD__(v4, v7);
    v4 += v7;
    if (v8)
    {
      goto LABEL_19;
    }
  }

  *v10 = v4;
  *(v10 + 8) = 0;
  return v4;
}

uint64_t AXRBlockManager.totalCharacterCount.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_23D7B7534(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v23 = *(v25 + 8 * v1);
      }

      v6 = sub_23D80E31C();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_23D80E31C();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v29 = v6;
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_23D80E31C();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = sub_23D80E27C();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v29)
    {
      goto LABEL_40;
    }

    v27 = v2;
    v15 = v10 + 8 * v12 + 32;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_23D7CE9C0(&qword_27E2E4A40, &qword_27E2E43C0, &qword_23D811E40);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C0, &qword_23D811E40);
        v17 = sub_23D7CD090(v28, i, v4);
        v19 = *v18;

        (v17)(v28, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for AXRTextBlock();
      swift_arrayInitWithCopy();
    }

    v2 = v27;
    if (v29 >= 1)
    {
      v20 = *(v10 + 16);
      v21 = __OFADD__(v20, v29);
      v22 = v20 + v29;
      if (v21)
      {
        goto LABEL_41;
      }

      *(v10 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  result = sub_23D80E31C();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v29 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void *(*AXRBlockManager.totalCharacterCount.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = AXRBlockManager.totalCharacterCount.getter();
  return sub_23D7B784C;
}

void *sub_23D7B784C(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t AXRBlockManager.totalVisibleCharacterCount.getter()
{
  v0 = sub_23D7B78B0();
  v2 = v1;
  v3 = AXRBlockManager.totalCharacterCount.getter();
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  result = v4 - v0;
  if (__OFSUB__(v4, v0))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D7B78B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v1 = ceil(*&v3 * 7200.0 * (v3 * 5.0 / 60.0));
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v2 = ceil(v4 * 7200.0 * (v3 * 5.0 / 60.0));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 < 9.22337204e18)
  {
    return v1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t AXRBlockManager.visibleChunkRange.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

double AXRBlockManager.estimatedWPM.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7B7BF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7B7C84(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_23D80DA1C();
}

uint64_t sub_23D7B7D0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.visiblePages.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B7E34(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$visiblePages.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$visiblePages.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

double sub_23D7B8270@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23D7B82F0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_23D80DA1C();
}

uint64_t AXRBlockManager.visibleChunkRange.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.visibleChunkRange.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B84A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4938, &qword_23D8118C0);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$visibleChunkRange.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4938, &qword_23D8118C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$visibleChunkRange.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4938, &qword_23D8118C0);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.visibleChunkCharacterOffset.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7B8940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23D7B89C0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23D80DA1C();
}

uint64_t AXRBlockManager.visibleChunkCharacterOffset.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.visibleChunkCharacterOffset.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B8B5C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4950, &qword_23D811918);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$visibleChunkCharacterOffset.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4950, &qword_23D811918);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$visibleChunkCharacterOffset.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4950, &qword_23D811918);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.totalVisibleChunks.getter()
{
  v0 = AXRBlockManager.totalCharacterCount.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v2 = v0 / (v4 * 5.0 / 60.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  v3 = ceil(v2 / 7200.0);
  if (*&v3 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v3 > -9.22337204e18)
  {
    if (v3 < 9.22337204e18)
    {
      return v3;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_23D7B9090(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

uint64_t sub_23D7B910C(uint64_t a1, void **a2)
{
  v4 = sub_23D80D6CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);
  v14 = v13;
  sub_23D80DA1C();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.blockIndex.setter(uint64_t a1)
{
  v3 = sub_23D80D6CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1;
  sub_23D80DA1C();
  return (*(v4 + 8))(a1, v3);
}

void (*AXRBlockManager.blockIndex.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7B9440;
}

uint64_t sub_23D7B9460(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4960, &qword_23D811928);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$blockIndex.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4960, &qword_23D811928);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$blockIndex.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4960, &qword_23D811928);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7A3B84;
}

void (*AXRBlockManager.needsRefresh.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B999C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$needsRefresh.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$needsRefresh.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.playbackSpeed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a1 = *v3;
  *(a1 + 4) = v5;
  return result;
}

uint64_t AXRBlockManager.playbackSpeed.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return sub_23D7B9E80();
}

uint64_t sub_23D7B9E80()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = &v0[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  swift_beginAccess();
  if (v3[4])
  {
    v4 = qword_23D811EA8[*v3];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v0;
  return sub_23D80DA1C();
}

uint64_t AXRBlockManager.estimatedWPM.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23D80DA1C();
}

uint64_t (*AXRBlockManager.playbackSpeed.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23D7BA030;
}

uint64_t sub_23D7BA030(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_23D7B9E80();
  }

  return result;
}

uint64_t AXRBlockManager.useAXRuntimeFetch.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXRBlockManager.useAXRuntimeFetch.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double AXRBlockManager.defaultWPM.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXRBlockManager.defaultWPM.setter(double a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_23D7BA24C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23D7BA2CC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.estimatedWPM.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7BA404(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$estimatedWPM.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$estimatedWPM.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.articles.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t AXRBlockManager.articles.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AXRBlockManager.speechSkippingInProgress.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXRBlockManager.speechSkippingInProgress.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23D7BAA38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7BAACC(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23D80DA1C();
}

uint64_t sub_23D7BAB4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.nowPlayingRequestScrollPositionUpdate.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7BAC74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$nowPlayingRequestScrollPositionUpdate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$nowPlayingRequestScrollPositionUpdate.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.speechState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

uint64_t sub_23D7BB118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  return result;
}

void sub_23D7BB198(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_23D80DA1C();
  sub_23D7BB288();
}

void AXRBlockManager.speechState.setter(char *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_23D80DA1C();
  sub_23D7BB288();
}

void sub_23D7BB288()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  v9 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls;
  swift_beginAccess();
  if (*(v1 + v9) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (v21 - 2 < 2)
    {
      if (qword_27E2E4250 != -1)
      {
        swift_once();
      }

      v10 = [objc_opt_self() defaultCenter];
      [v10 setPlaybackState_];

      sub_23D80B03C();
      return;
    }

    if (!v21)
    {
      if (qword_27E2E4250 != -1)
      {
        swift_once();
      }

      v11 = qword_27E2E5360;
      v12 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
      swift_beginAccess();
      v13 = *(v1 + v12);
      v14 = *(v13 + 16);
      v15 = type metadata accessor for AXRArticle();
      v16 = *(v15 - 8);
      if (v14)
      {
        sub_23D7CD444(v13 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), v8, type metadata accessor for AXRArticle);
        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      (*(v16 + 56))(v8, v17, 1, v15);
      swift_unknownObjectWeakAssign();
      sub_23D790648(v8, v6, &qword_27E2E4A90, &unk_23D815170);
      v19 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
      swift_beginAccess();
      sub_23D7CEC14(v6, v11 + v19);
      swift_endAccess();
      sub_23D80A798();
      sub_23D790730(v8, &qword_27E2E4A90, &unk_23D815170);
      return;
    }

    if (qword_27E2E4250 == -1)
    {
LABEL_18:
      v18 = [objc_opt_self() defaultCenter];
      [v18 setPlaybackState_];

      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v20[24] <= 1u)
  {
    if (qword_27E2E4250 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (qword_27E2E4250 != -1)
  {
    swift_once();
  }

  sub_23D80B3A4();
}

void (*AXRBlockManager.speechState.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return sub_23D7BB768;
}

void sub_23D7BB768(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;
  v4 = v3;
  sub_23D80DA1C();
  sub_23D7BB288();
}

uint64_t sub_23D7BB7FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A8, &qword_23D811A30);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AXRBlockManager.$speechState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A8, &qword_23D811A30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$speechState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A8, &qword_23D811A30);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

id AXRBlockManager.init(document:withPlaybackSpeed:bundleID:appName:preferredLanguage:)(void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v124 = a7;
  v125 = a8;
  v130 = a5;
  v131 = a6;
  v132 = a3;
  v133 = a4;
  v127 = a1;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v103 - v12;
  v126 = type metadata accessor for AXRArticle();
  v13 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v129 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v121 = *(v122 - 8);
  v15 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v103 - v16;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v118 = *(v119 - 8);
  v17 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v103 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v115 = *(v116 - 8);
  v19 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v103 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v112 = *(v113 - 8);
  v21 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v109 = &v103 - v22;
  v23 = sub_23D80D6CC();
  v24 = *(v23 - 8);
  v136 = v23;
  v137 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v135 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v134 = &v103 - v28;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v107 = *(v108 - 1);
  v29 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v103 - v30;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v104 = *(v105 - 8);
  v31 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v33 = &v103 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v103 - v37;
  v111 = *a2;
  v110 = *(a2 + 4);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v8[v39] = sub_23D7B58C0();
  v40 = &v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v40 = 0;
  v40[1] = 0;
  v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v41 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v42 = MEMORY[0x277D84F90];
  *&v139 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v43 = *(v35 + 32);
  v43(&v8[v41], v38, v34);
  v44 = &v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v44 = 0;
  v44[8] = 1;
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v139 = v42;
  sub_23D80D9CC();
  v43(&v8[v45], v38, v34);
  v46 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v139 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v104 + 32))(&v8[v46], v33, v105);
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v139 = 0;
  v48 = v106;
  sub_23D80D9CC();
  (*(v107 + 32))(&v8[v47], v48, v108);
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v50 = v134;
  MEMORY[0x23EEEBFA0](&unk_284FCE308);
  v51 = v137;
  v107 = *(v137 + 16);
  v52 = v136;
  (v107)(v135, v50, v136);
  v53 = v109;
  sub_23D80D9CC();
  v54 = *(v51 + 8);
  v137 = v51 + 8;
  v108 = v54;
  v54(v50, v52);
  (*(v112 + 32))(&v8[v49], v53, v113);
  v55 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v139) = 0;
  v56 = v114;
  sub_23D80D9CC();
  v57 = *(v115 + 32);
  v58 = v116;
  v57(&v8[v55], v56, v116);
  v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v59 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v139 = 0x4069000000000000;
  v60 = v117;
  sub_23D80D9CC();
  (*(v118 + 32))(&v8[v59], v60, v119);
  *&v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v61 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v139) = 0;
  sub_23D80D9CC();
  v57(&v8[v61], v56, v58);
  v62 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v139) = 3;
  v63 = v120;
  sub_23D80D9CC();
  (*(v121 + 32))(&v8[v62], v63, v122);
  v64 = &v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v64 = v111;
  v64[4] = v110;
  swift_beginAccess();
  v65 = v40[1];
  v66 = v125;
  *v40 = v124;
  v40[1] = v66;

  v138.receiver = v8;
  v138.super_class = ObjectType;
  v67 = objc_msgSendSuper2(&v138, sel_init);
  v68 = v134;
  MEMORY[0x23EEEBFA0](&unk_284FCE340);
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v136;
  (v107)(v135, v68, v136);
  v71 = v126;
  v70 = v127;
  v72 = v67;
  sub_23D80DA1C();
  v108(v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C8, &unk_23D811FC0);
  v73 = (type metadata accessor for AXRTextContent() - 8);
  v74 = *(*v73 + 72);
  v75 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_23D80FB00;
  v77 = v76 + v75;
  v78 = VNDocumentObservation.text.getter();
  v80 = v79;
  v81 = sub_23D80D5BC();
  v82 = v128;
  (*(*(v81 - 8) + 56))(v128, 1, 1, v81);
  v83 = v73[15];
  *(v77 + v83) = 0;
  sub_23D80D66C();
  v84 = (v77 + v73[7]);
  *v84 = v78;
  v84[1] = v80;
  *(v77 + v73[8]) = 0;
  *(v77 + v73[11]) = 0;
  sub_23D7AF7D0(v82, v77 + v73[12], &qword_27E2E43F0, &unk_23D811FD0);
  v85 = v77 + v73[9];
  *v85 = 1;
  *(v85 + 8) = 0;
  *(v77 + v73[10]) = 0;
  *(v77 + v73[13]) = 0;
  *(v77 + v73[14]) = 0;
  v86 = *(v77 + v83);
  *(v77 + v83) = 0;
  v87 = v129;

  v88 = v71[9];
  v89 = sub_23D80D63C();
  (*(*(v89 - 8) + 56))(v87 + v88, 1, 1, v89);
  v90 = 0x800000023D815CB0;
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  v91 = 0xD00000000000001FLL;
  if (qword_27E2E4610)
  {
    v92 = qword_27E2E4610;
    v93 = sub_23D80DD4C();
    v94 = sub_23D80DD4C();
    v95 = [v92 localizedStringForKey:v93 value:0 table:v94];

    v91 = sub_23D80DD7C();
    v90 = v96;
  }

  sub_23D80D66C();
  v97 = (v87 + v71[5]);
  v98 = v131;
  *v97 = v130;
  v97[1] = v98;
  v99 = (v87 + v71[6]);
  v100 = v133;
  *v99 = v132;
  v99[1] = v100;
  v101 = (v87 + v71[7]);
  *v101 = v91;
  v101[1] = v90;
  *(v87 + v71[8]) = v76;
  *(v87 + v71[10]) = 0;
  *(v87 + v71[11]) = 0;
  AXRBlockManager.appendArticle(_:splitStrings:)(v87, 1);
  sub_23D7BD6E0();

  sub_23D7CD3E4(v87, type metadata accessor for AXRArticle);
  return v72;
}

uint64_t AXRBlockManager.appendArticle(_:splitStrings:)(uint64_t a1, int a2)
{
  LODWORD(v119) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v123 = &v105 - v5;
  v6 = sub_23D80D6CC();
  v112 = *(v6 - 8);
  v7 = *(v112 + 64);
  MEMORY[0x28223BE20](v6);
  v114 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = &v105 - v11;
  v113 = sub_23D80D5BC();
  v110 = *(v113 - 8);
  v12 = *(v110 + 64);
  v13 = MEMORY[0x28223BE20](v113);
  v106 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v107 = &v105 - v15;
  v109 = type metadata accessor for AXRTextContent();
  v124 = *(v109 - 8);
  v16 = *(v124 + 64);
  v17 = MEMORY[0x28223BE20](v109);
  v122 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v115 = &v105 - v19;
  v20 = type metadata accessor for AXRArticle();
  v117 = *(v20 - 1);
  v21 = *(v117 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v116 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v105 - v25;
  v130 = *(a1 + *(v24 + 32));

  _s23AccessibilityReaderData14AXRTextContentV25clearIntermediateElements2inySayACGz_tFZ_0(&v130);
  v27 = (a1 + v20[5]);
  v28 = *v27;
  v29 = v27[1];
  v30 = (a1 + v20[6]);
  v31 = *v30;
  v32 = v30[1];
  v120 = v28;
  v121 = v31;
  v33 = v130;
  v34 = v20[9];
  v35 = sub_23D80D63C();
  (*(*(v35 - 8) + 56))(&v26[v34], 1, 1, v35);
  v36 = 0x800000023D815CB0;
  v37 = qword_27E2E4228;

  v38 = v32;

  if (v37 != -1)
  {
    swift_once();
  }

  v39 = 0xD00000000000001FLL;
  if (qword_27E2E4610)
  {
    v40 = v33;
    v41 = v26;
    v42 = qword_27E2E4610;
    v43 = sub_23D80DD4C();
    v44 = sub_23D80DD4C();
    v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

    v39 = sub_23D80DD7C();
    v36 = v46;

    v26 = v41;
    v33 = v40;
  }

  sub_23D80D66C();
  v47 = &v26[v20[5]];
  v48 = v121;
  *v47 = v120;
  *(v47 + 1) = v29;
  v49 = &v26[v20[6]];
  *v49 = v48;
  *(v49 + 1) = v38;
  v50 = &v26[v20[7]];
  *v50 = v39;
  v50[1] = v36;
  *&v26[v20[8]] = v33;
  v26[v20[10]] = 0;
  v26[v20[11]] = 0;
  v121 = *(v33 + 16);
  if (v121)
  {
    v129 = MEMORY[0x277D84F90];
    v118 = v26;
    v108 = v33;
    if (v119)
    {
      v51 = v115;
      sub_23D7CD444(v33 + ((*(v124 + 80) + 32) & ~*(v124 + 80)), v115, type metadata accessor for AXRTextContent);
      v52 = v109;
      v53 = v111;
      sub_23D790648(v51 + *(v109 + 40), v111, &qword_27E2E43F0, &unk_23D811FD0);
      v54 = v110;
      v55 = v113;
      if ((*(v110 + 48))(v53, 1, v113) == 1)
      {
        sub_23D790730(v53, &qword_27E2E43F0, &unk_23D811FD0);
        v56 = (v51 + *(v52 + 20));
        v57 = *v56;
        v58 = v56[1];
        v59 = v125;
        v60 = v125 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
        swift_beginAccess();
        v61 = *(v60 + 4);
        v126 = *v60;
        v127 = v61;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v62 = *(v128[0] + 16);

        v63 = (v59 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage);
        swift_beginAccess();
        v65 = *v63;
        v64 = v63[1];

        v66 = String.readerTextBlocks(withPlaybackSpeed:pageIndex:preferredLanguage:)(&v126, v62, v65, v64, v57, v58);

        sub_23D7952C8(v66);
      }

      else
      {
        v79 = v107;
        (*(v54 + 32))(v107, v53, v55);
        sub_23D7936F0(0, &qword_27E2E49C8, 0x277CCA898);
        (*(v54 + 16))(v106, v79, v55);
        v80 = sub_23D80E0EC();
        v81 = v125;
        v82 = v125 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
        swift_beginAccess();
        v83 = *(v82 + 4);
        v126 = *v82;
        v127 = v83;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v84 = *(v128[0] + 16);

        v85 = (v81 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage);
        swift_beginAccess();
        v87 = *v85;
        v86 = v85[1];

        v88 = NSAttributedString.readerTextBlocks(withPlaybackSpeed:pageIndex:preferredLanguage:)(&v126, v84, v87, v86);

        sub_23D7952C8(v88);

        (*(v54 + 8))(v79, v55);
      }

      sub_23D7CD3E4(v51, type metadata accessor for AXRTextContent);
    }

    else
    {
      v67 = v125 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
      v120 = v33 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
      swift_beginAccess();
      v68 = 0;
      v69 = (v112 + 16);
      v70 = (v112 + 56);
      v71 = (v112 + 8);
      v119 = xmmword_23D80FAF0;
      v72 = v114;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
        v73 = swift_allocObject();
        *(v73 + 16) = v119;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v74 = *(v128[0] + 16);

        *(v73 + 32) = v74;
        *(v73 + 40) = v68;
        MEMORY[0x23EEEBFA0](v73);
        v75 = v122;
        sub_23D7CD444(v120 + *(v124 + 72) * v68, v122, type metadata accessor for AXRTextContent);
        v76 = *(v67 + 4);
        LODWORD(v128[0]) = *v67;
        BYTE4(v128[0]) = v76;
        v77 = v123;
        (*v69)(v123, v72, v6);
        (*v70)(v77, 0, 1, v6);
        sub_23D801090(v128, v77);
        sub_23D790730(v77, &qword_27E2E43F8, &qword_23D811650);
        v78 = sub_23D7CD3E4(v75, type metadata accessor for AXRTextContent);
        MEMORY[0x23EEEC7D0](v78);
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23D80DF0C();
        }

        ++v68;
        sub_23D80DF2C();
        (*v71)(v72, v6);
      }

      while (v121 != v68);
    }

    v89 = v129;
    swift_getKeyPath();
    swift_getKeyPath();
    v90 = sub_23D80D9FC();
    v92 = v91;
    v93 = *v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v92 = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = sub_23D790020(0, v93[2] + 1, 1, v93);
      *v92 = v93;
    }

    v96 = v93[2];
    v95 = v93[3];
    if (v96 >= v95 >> 1)
    {
      v93 = sub_23D790020((v95 > 1), v96 + 1, 1, v93);
      *v92 = v93;
    }

    v93[2] = v96 + 1;
    v93[v96 + 4] = v89;
    v90(v128, 0);

    v97 = v116;
    sub_23D7CD444(v118, v116, type metadata accessor for AXRArticle);
    v98 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
    v99 = v125;
    swift_beginAccess();
    v100 = *(v99 + v98);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *(v99 + v98) = v100;
    if ((v101 & 1) == 0)
    {
      v100 = sub_23D78FFF8(0, v100[2] + 1, 1, v100);
      *(v125 + v98) = v100;
    }

    v103 = v100[2];
    v102 = v100[3];
    if (v103 >= v102 >> 1)
    {
      v100 = sub_23D78FFF8(v102 > 1, v103 + 1, 1, v100);
    }

    v100[2] = v103 + 1;
    sub_23D7CD4AC(v97, v100 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v103);
    *(v125 + v98) = v100;
    swift_endAccess();
    sub_23D7CD3E4(v118, type metadata accessor for AXRArticle);
  }

  else
  {
    sub_23D7CD3E4(v26, type metadata accessor for AXRArticle);
  }
}

uint64_t sub_23D7BD6E0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v42 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v40 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v40 - v9;
  v11 = sub_23D80D6CC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v45 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = v40 - v16;
  v17 = sub_23D7B78B0();
  v44 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v17;
  v19 = v0;
  sub_23D80DA1C();
  v20 = AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v17, 0);
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = v20;
  v43 = ObjectType;
  swift_getKeyPath();
  v49 = v21;
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v22 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D790648(v21 + v22, v10, &qword_27E2E43F8, &qword_23D811650);
  v23 = v21;
  v24 = v12[6];
  if (v24(v10, 1, v11) == 1)
  {

    sub_23D790730(v10, &qword_27E2E43F8, &qword_23D811650);
LABEL_4:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v25 = v47;
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = v25;
    v19;
    sub_23D80DA1C();
    sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager);
    sub_23D80D9AC();
    sub_23D80D9BC();
  }

  v40[2] = v23;
  v41 = v12;
  v40[0] = v12[4];
  v40[1] = v12 + 4;
  (v40[0])(v46, v10, v11);
  v27 = AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v44, 0);
  v28 = v11;
  if (!v27)
  {
LABEL_9:
    v31 = sub_23D7CC51C();
    if (v31)
    {
      v32 = v31;
      swift_getKeyPath();
      v47 = v32;
      sub_23D80D6FC();

      v33 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
      swift_beginAccess();
      v8 = v42;
      sub_23D790648(v32 + v33, v42, &qword_27E2E43F8, &qword_23D811650);

      if (v24(v8, 1, v11) != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = v42;
      (v41[7])(v42, 1, 1, v11);
    }

    sub_23D790730(v8, &qword_27E2E43F8, &qword_23D811650);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v39 = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v39;
    v19;
    sub_23D80DA1C();
    sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager);
    sub_23D80D9AC();
    sub_23D80D9BC();

    return (v41[1])(v46, v28);
  }

  v29 = v27;
  swift_getKeyPath();
  v47 = v29;
  sub_23D80D6FC();

  v30 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D790648(v29 + v30, v8, &qword_27E2E43F8, &qword_23D811650);

  if (v24(v8, 1, v11) == 1)
  {
    sub_23D790730(v8, &qword_27E2E43F8, &qword_23D811650);
    goto LABEL_9;
  }

LABEL_11:
  (v40[0])(v45, v8, v11);
  v34 = sub_23D80D6DC();
  sub_23D80D6DC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v35 = *(v48 + 16);

  if (v34 < v35)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v36 = *(v48 + 16);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v37 = v48;
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v37;
  v19;
  sub_23D80DA1C();
  sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager);
  sub_23D80D9AC();
  sub_23D80D9BC();

  v38 = v41[1];
  v38(v45, v28);
  return (v38)(v46, v28);
}

id AXRBlockManager.init(document:withPlaybackSpeed:preferredLanguage:)(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v123 = a3;
  v124 = a4;
  v121 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v125 = &v99 - v8;
  v115 = type metadata accessor for AXRArticle();
  v9 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v126 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v119 = *(v11 - 8);
  v120 = v11;
  v12 = *(v119 + 64);
  MEMORY[0x28223BE20](v11);
  v118 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v116 = *(v14 - 8);
  v117 = v14;
  v15 = *(v116 + 64);
  MEMORY[0x28223BE20](v14);
  v114 = &v99 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v112 = *(v113 - 8);
  v17 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v99 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v109 = *(v110 - 8);
  v19 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v106 = &v99 - v20;
  v21 = sub_23D80D6CC();
  v22 = *(v21 - 8);
  v128 = v21;
  v129 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v127 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v105 = &v99 - v26;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v103 = *(v104 - 1);
  v27 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v99 - v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v100 = *(v101 - 8);
  v29 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v31 = &v99 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v99 - v35;
  v108 = *a2;
  v107 = *(a2 + 4);
  v37 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v4[v37] = sub_23D7B58C0();
  v38 = &v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v38 = 0;
  v38[1] = 0;
  v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v40 = MEMORY[0x277D84F90];
  *&v131 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v41 = *(v33 + 32);
  v41(&v4[v39], v36, v32);
  v42 = &v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v42 = 0;
  v42[8] = 1;
  v43 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v131 = v40;
  sub_23D80D9CC();
  v41(&v4[v43], v36, v32);
  v44 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v131 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v100 + 32))(&v4[v44], v31, v101);
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v131 = 0;
  v46 = v102;
  sub_23D80D9CC();
  (*(v103 + 32))(&v4[v45], v46, v104);
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v48 = v105;
  MEMORY[0x23EEEBFA0](&unk_284FCE378);
  v49 = v129;
  v103 = *(v129 + 16);
  v50 = v128;
  (v103)(v127, v48, v128);
  v51 = v106;
  sub_23D80D9CC();
  v52 = *(v49 + 8);
  v129 = v49 + 8;
  v104 = v52;
  v52(v48, v50);
  (*(v109 + 32))(&v4[v47], v51, v110);
  v53 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v131) = 0;
  v54 = v111;
  sub_23D80D9CC();
  v55 = *(v112 + 32);
  v56 = v113;
  v55(&v4[v53], v54, v113);
  v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v57 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v131 = 0x4069000000000000;
  v58 = v114;
  sub_23D80D9CC();
  (*(v116 + 32))(&v4[v57], v58, v117);
  *&v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v59 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v131) = 0;
  sub_23D80D9CC();
  v60 = &v4[v59];
  v61 = v121;
  v55(v60, v54, v56);
  v62 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v131) = 3;
  v63 = v118;
  sub_23D80D9CC();
  (*(v119 + 32))(&v4[v62], v63, v120);
  v64 = &v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v64 = v108;
  v64[4] = v107;
  swift_beginAccess();
  v65 = v38[1];
  v66 = v124;
  *v38 = v123;
  v38[1] = v66;

  v130.receiver = v4;
  v130.super_class = ObjectType;
  v67 = objc_msgSendSuper2(&v130, sel_init);
  MEMORY[0x23EEEBFA0](&unk_284FCE3B0);
  swift_getKeyPath();
  swift_getKeyPath();
  v68 = v128;
  (v103)(v127, v48, v128);
  v69 = v67;
  sub_23D80DA1C();
  v104(v48, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C8, &unk_23D811FC0);
  v70 = (type metadata accessor for AXRTextContent() - 8);
  v71 = *(*v70 + 72);
  v72 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_23D80FB00;
  v74 = v73 + v72;
  v75 = VNDocumentObservation.text.getter();
  v77 = v76;
  v78 = sub_23D80D5BC();
  v79 = v125;
  (*(*(v78 - 8) + 56))(v125, 1, 1, v78);
  v80 = v70[15];
  *(v74 + v80) = 0;
  sub_23D80D66C();
  v81 = (v74 + v70[7]);
  *v81 = v75;
  v81[1] = v77;
  *(v74 + v70[8]) = 0;
  *(v74 + v70[11]) = 0;
  sub_23D7AF7D0(v79, v74 + v70[12], &qword_27E2E43F0, &unk_23D811FD0);
  v82 = v74 + v70[9];
  *v82 = 1;
  *(v82 + 8) = 0;
  *(v74 + v70[10]) = 0;
  *(v74 + v70[13]) = 0;
  *(v74 + v70[14]) = 0;
  v83 = *(v74 + v80);
  *(v74 + v80) = 0;
  v84 = v126;

  v85 = v115;
  v86 = *(v115 + 36);
  v87 = sub_23D80D63C();
  (*(*(v87 - 8) + 56))(v84 + v86, 1, 1, v87);
  v88 = 0x800000023D815CB0;
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  v89 = 0xD00000000000001FLL;
  if (qword_27E2E4610)
  {
    v90 = qword_27E2E4610;
    v91 = sub_23D80DD4C();
    v92 = sub_23D80DD4C();
    v93 = [v90 localizedStringForKey:v91 value:0 table:v92];

    v89 = sub_23D80DD7C();
    v88 = v94;
  }

  sub_23D80D66C();
  v95 = (v84 + v85[5]);
  *v95 = 0;
  v95[1] = 0xE000000000000000;
  v96 = (v84 + v85[6]);
  *v96 = 0;
  v96[1] = 0xE000000000000000;
  v97 = (v84 + v85[7]);
  *v97 = v89;
  v97[1] = v88;
  *(v84 + v85[8]) = v73;
  *(v84 + v85[10]) = 0;
  *(v84 + v85[11]) = 0;
  AXRBlockManager.appendArticle(_:splitStrings:)(v84, 1);
  sub_23D7BD6E0();

  sub_23D7CD3E4(v84, type metadata accessor for AXRArticle);
  return v69;
}

id AXRBlockManager.init(string:withPlaybackSpeed:preferredLanguage:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v120 = a4;
  v121 = a5;
  v123 = a1;
  v124 = a2;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v122 = &v97 - v10;
  v117 = type metadata accessor for AXRArticle();
  v11 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v118 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v115 = *(v13 - 8);
  v116 = v13;
  v14 = *(v115 + 64);
  MEMORY[0x28223BE20](v13);
  v114 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v112 = *(v16 - 8);
  v113 = v16;
  v17 = *(v112 + 64);
  MEMORY[0x28223BE20](v16);
  v111 = &v97 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v109 = *(v110 - 8);
  v19 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v97 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v106 = *(v107 - 8);
  v21 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v97 - v22;
  v23 = sub_23D80D6CC();
  v24 = *(v23 - 8);
  v126 = v23;
  v127 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v125 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v102 = &v97 - v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v100 = *(v101 - 1);
  v29 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v97 - v30;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v97 = *(v98 - 8);
  v31 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v97 - v37;
  v105 = *a3;
  v104 = *(a3 + 4);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v5[v39] = sub_23D7B58C0();
  v40 = &v5[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v40 = 0;
  v40[1] = 0;
  v5[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v41 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v42 = MEMORY[0x277D84F90];
  *&v129 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v43 = *(v35 + 32);
  v43(&v6[v41], v38, v34);
  v44 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v44 = 0;
  v44[8] = 1;
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v129 = v42;
  sub_23D80D9CC();
  v43(&v6[v45], v38, v34);
  v46 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v129 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v97 + 32))(&v6[v46], v33, v98);
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v129 = 0;
  v48 = v99;
  sub_23D80D9CC();
  (*(v100 + 32))(&v6[v47], v48, v101);
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v50 = v102;
  MEMORY[0x23EEEBFA0](&unk_284FCE3E8);
  v51 = v127;
  v100 = *(v127 + 16);
  v52 = v126;
  (v100)(v125, v50, v126);
  v53 = v103;
  sub_23D80D9CC();
  v54 = *(v51 + 8);
  v127 = v51 + 8;
  v101 = v54;
  v54(v50, v52);
  (*(v106 + 32))(&v6[v49], v53, v107);
  v55 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v129) = 0;
  v56 = v108;
  sub_23D80D9CC();
  v57 = *(v109 + 32);
  v58 = v110;
  v57(&v6[v55], v56, v110);
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v59 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v129 = 0x4069000000000000;
  v60 = v111;
  sub_23D80D9CC();
  (*(v112 + 32))(&v6[v59], v60, v113);
  *&v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v61 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v129) = 0;
  sub_23D80D9CC();
  v57(&v6[v61], v56, v58);
  v62 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v129) = 3;
  v63 = v114;
  sub_23D80D9CC();
  (*(v115 + 32))(&v6[v62], v63, v116);
  v64 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v64 = v105;
  v64[4] = v104;
  swift_beginAccess();
  v65 = v40[1];
  v66 = v121;
  *v40 = v120;
  v40[1] = v66;

  v128.receiver = v6;
  v67 = v117;
  v128.super_class = ObjectType;
  v68 = objc_msgSendSuper2(&v128, sel_init);
  MEMORY[0x23EEEBFA0](&unk_284FCE420);
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v126;
  (v100)(v125, v50, v126);
  v70 = v118;
  v71 = v68;
  sub_23D80DA1C();
  v101(v50, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C8, &unk_23D811FC0);
  v72 = (type metadata accessor for AXRTextContent() - 8);
  v73 = *(*v72 + 72);
  v74 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_23D80FB00;
  v76 = v75 + v74;
  v77 = sub_23D80D5BC();
  v78 = v122;
  (*(*(v77 - 8) + 56))(v122, 1, 1, v77);
  v79 = v72[15];
  *(v76 + v79) = 0;
  sub_23D80D66C();
  v80 = (v76 + v72[7]);
  v81 = v124;
  *v80 = v123;
  v80[1] = v81;
  *(v76 + v72[8]) = 0;
  *(v76 + v72[11]) = 0;
  sub_23D7AF7D0(v78, v76 + v72[12], &qword_27E2E43F0, &unk_23D811FD0);
  v82 = v76 + v72[9];
  *v82 = 1;
  *(v82 + 8) = 0;
  *(v76 + v72[10]) = 0;
  *(v76 + v72[13]) = 0;
  *(v76 + v72[14]) = 0;
  v83 = *(v76 + v79);
  *(v76 + v79) = 0;

  v84 = v67[9];
  v85 = sub_23D80D63C();
  (*(*(v85 - 8) + 56))(v70 + v84, 1, 1, v85);
  v86 = 0x800000023D815CB0;
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  v87 = 0xD00000000000001FLL;
  if (qword_27E2E4610)
  {
    v88 = qword_27E2E4610;
    v89 = sub_23D80DD4C();
    v90 = sub_23D80DD4C();
    v91 = [v88 localizedStringForKey:v89 value:0 table:v90];

    v87 = sub_23D80DD7C();
    v86 = v92;
  }

  sub_23D80D66C();
  v93 = (v70 + v67[5]);
  *v93 = 0;
  v93[1] = 0xE000000000000000;
  v94 = (v70 + v67[6]);
  *v94 = 0;
  v94[1] = 0xE000000000000000;
  v95 = (v70 + v67[7]);
  *v95 = v87;
  v95[1] = v86;
  *(v70 + v67[8]) = v75;
  *(v70 + v67[10]) = 0;
  *(v70 + v67[11]) = 0;
  AXRBlockManager.appendArticle(_:splitStrings:)(v70, 1);
  sub_23D7BD6E0();

  sub_23D7CD3E4(v70, type metadata accessor for AXRArticle);
  return v71;
}

_BYTE *AXRBlockManager.__allocating_init(article:withPlaybackSpeed:splitStrings:preferredLanguage:useAXRuntimeFetch:)(uint64_t a1, int *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v94 = a3;
  v95 = a6;
  v91 = a4;
  v92 = a5;
  v93 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v9);
  v88 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v85 = &v70 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v83 = *(v84 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v70 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v76 = &v70 - v18;
  v19 = sub_23D80D6CC();
  v20 = *(v19 - 8);
  v97 = v19;
  v98 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v96 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v75 = &v70 - v24;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v73 = *(v74 - 1);
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v70 - v26;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v70 = *(v71 - 8);
  v27 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v29 = &v70 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v70 - v33;
  v35 = objc_allocWithZone(v7);
  v78 = *a2;
  v77 = *(a2 + 4);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v35[v36] = sub_23D7B58C0();
  v37 = &v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v37 = 0;
  v37[1] = 0;
  v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v38 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v39 = MEMORY[0x277D84F90];
  *&v100 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v40 = *(v31 + 32);
  v40(&v35[v38], v34, v30);
  v41 = &v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v41 = 0;
  v41[8] = 1;
  v42 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v100 = v39;
  sub_23D80D9CC();
  v40(&v35[v42], v34, v30);
  v43 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v100 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v70 + 32))(&v35[v43], v29, v71);
  v44 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v100 = 0;
  v45 = v72;
  sub_23D80D9CC();
  (*(v73 + 32))(&v35[v44], v45, v74);
  v46 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v47 = v75;
  MEMORY[0x23EEEBFA0](&unk_284FCE458);
  v48 = v98;
  v73 = *(v98 + 16);
  v49 = v97;
  (v73)(v96, v47, v97);
  v50 = v76;
  sub_23D80D9CC();
  v51 = *(v48 + 8);
  v98 = v48 + 8;
  v74 = v51;
  v51(v47, v49);
  (*(v80 + 32))(&v35[v46], v50, v81);
  v52 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v100) = 0;
  v53 = v82;
  sub_23D80D9CC();
  v54 = *(v83 + 32);
  v55 = v84;
  v54(&v35[v52], v53, v84);
  v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v56 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v100 = 0x4069000000000000;
  v57 = v85;
  sub_23D80D9CC();
  (*(v86 + 32))(&v35[v56], v57, v87);
  *&v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v58 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v100) = 0;
  sub_23D80D9CC();
  v54(&v35[v58], v53, v55);
  v59 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v100) = 3;
  v60 = v88;
  sub_23D80D9CC();
  (*(v89 + 32))(&v35[v59], v60, v90);
  v61 = &v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v61 = v78;
  v61[4] = v77;
  swift_beginAccess();
  v62 = v37[1];
  v63 = v92;
  *v37 = v91;
  v37[1] = v63;

  v99.receiver = v35;
  v99.super_class = v79;
  v64 = objc_msgSendSuper2(&v99, sel_init);
  MEMORY[0x23EEEBFA0](&unk_284FCE490);
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v97;
  (v73)(v96, v47, v97);
  v66 = v64;
  sub_23D80DA1C();
  v74(v47, v65);
  v67 = v93;
  AXRBlockManager.appendArticle(_:splitStrings:)(v93, v94);
  v68 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  swift_beginAccess();
  v66[v68] = v95;
  sub_23D7BD6E0();

  sub_23D7CD3E4(v67, type metadata accessor for AXRArticle);
  return v66;
}

_BYTE *AXRBlockManager.init(article:withPlaybackSpeed:splitStrings:preferredLanguage:useAXRuntimeFetch:)(uint64_t a1, int *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v93 = a3;
  v94 = a6;
  v90 = a4;
  v91 = a5;
  v92 = a1;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  MEMORY[0x28223BE20](v9);
  v86 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v12);
  v83 = &v69 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v81 = *(v82 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v69 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v78 = *(v79 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v69 - v18;
  v19 = sub_23D80D6CC();
  v20 = *(v19 - 8);
  v96 = v19;
  v97 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v95 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = &v69 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v72 = *(v73 - 1);
  v25 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - v26;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v69 = *(v70 - 8);
  v27 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v69 - v33;
  v77 = *a2;
  v76 = *(a2 + 4);
  v35 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v7[v35] = sub_23D7B58C0();
  v36 = &v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v36 = 0;
  v36[1] = 0;
  v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v37 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v38 = MEMORY[0x277D84F90];
  *&v99 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v39 = *(v31 + 32);
  v39(&v7[v37], v34, v30);
  v40 = &v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v40 = 0;
  v40[8] = 1;
  v41 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v99 = v38;
  sub_23D80D9CC();
  v39(&v7[v41], v34, v30);
  v42 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v99 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v69 + 32))(&v7[v42], v29, v70);
  v43 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v99 = 0;
  v44 = v71;
  sub_23D80D9CC();
  (*(v72 + 32))(&v7[v43], v44, v73);
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v46 = v74;
  MEMORY[0x23EEEBFA0](&unk_284FCE458);
  v47 = v97;
  v72 = *(v97 + 16);
  v48 = v96;
  (v72)(v95, v46, v96);
  v49 = v75;
  sub_23D80D9CC();
  v50 = *(v47 + 8);
  v97 = v47 + 8;
  v73 = v50;
  v50(v46, v48);
  (*(v78 + 32))(&v7[v45], v49, v79);
  v51 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v99) = 0;
  v52 = v80;
  sub_23D80D9CC();
  v53 = *(v81 + 32);
  v54 = v82;
  v53(&v7[v51], v52, v82);
  v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v55 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v99 = 0x4069000000000000;
  v56 = v83;
  sub_23D80D9CC();
  (*(v84 + 32))(&v7[v55], v56, v85);
  *&v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v57 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v99) = 0;
  sub_23D80D9CC();
  v53(&v7[v57], v52, v54);
  v58 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v99) = 3;
  v59 = v86;
  sub_23D80D9CC();
  (*(v87 + 32))(&v7[v58], v59, v88);
  v60 = &v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v60 = v77;
  v60[4] = v76;
  swift_beginAccess();
  v61 = v36[1];
  v62 = v91;
  *v36 = v90;
  v36[1] = v62;

  v98.receiver = v7;
  v98.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v98, sel_init);
  MEMORY[0x23EEEBFA0](&unk_284FCE490);
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v96;
  (v72)(v95, v46, v96);
  v65 = v63;
  sub_23D80DA1C();
  v73(v46, v64);
  v66 = v92;
  AXRBlockManager.appendArticle(_:splitStrings:)(v92, v93);
  v67 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  swift_beginAccess();
  v65[v67] = v94;
  sub_23D7BD6E0();

  sub_23D7CD3E4(v66, type metadata accessor for AXRArticle);
  return v65;
}

id AXRBlockManager.init(articles:withPlaybackSpeed:splitStrings:preferredLanguage:)(uint64_t a1, int *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v98 = a4;
  v99 = a5;
  v100 = a1;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for AXRArticle();
  v76 = *(v9 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v95 = *(v13 - 8);
  v96 = v13;
  v14 = *(v95 + 64);
  MEMORY[0x28223BE20](v13);
  v94 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](v16);
  v91 = &v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v89 = *(v19 - 8);
  v90 = v19;
  v20 = *(v89 + 64);
  MEMORY[0x28223BE20](v19);
  v88 = &v76 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v86 = *(v87 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = &v76 - v23;
  v24 = sub_23D80D6CC();
  v25 = *(v24 - 8);
  v103 = v24;
  v104 = v25;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v102 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v101 = &v76 - v29;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v80 = *(v81 - 1);
  v30 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v76 - v31;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v77 = *(v78 - 8);
  v32 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v34 = &v76 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v76 - v38;
  v85 = *a2;
  v84 = *(a2 + 4);
  v40 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v6[v40] = sub_23D7B58C0();
  v41 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  v82 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v41 = 0;
  v41[1] = 0;
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v42 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  *&v106 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v43 = *(v36 + 32);
  v43(&v6[v42], v39, v35);
  v44 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v44 = 0;
  v44[8] = 1;
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v106 = MEMORY[0x277D84F90];
  sub_23D80D9CC();
  v43(&v6[v45], v39, v35);
  v46 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v106 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v77 + 32))(&v6[v46], v34, v78);
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v106 = 0;
  v48 = v79;
  sub_23D80D9CC();
  (*(v80 + 32))(&v6[v47], v48, v81);
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v50 = v101;
  MEMORY[0x23EEEBFA0](&unk_284FCE4C8);
  v51 = v104;
  v80 = *(v104 + 16);
  v52 = v103;
  (v80)(v102, v50, v103);
  v53 = v83;
  sub_23D80D9CC();
  v54 = *(v51 + 8);
  v104 = v51 + 8;
  v81 = v54;
  v54(v50, v52);
  (*(v86 + 32))(&v6[v49], v53, v87);
  v55 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v106) = 0;
  v56 = v88;
  sub_23D80D9CC();
  v57 = v90;
  v58 = *(v89 + 32);
  v58(&v6[v55], v56, v90);
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v59 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v106 = 0x4069000000000000;
  v60 = v91;
  sub_23D80D9CC();
  (*(v92 + 32))(&v6[v59], v60, v93);
  *&v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v61 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v106) = 0;
  sub_23D80D9CC();
  v58(&v6[v61], v56, v57);
  v62 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v106) = 3;
  v63 = v94;
  sub_23D80D9CC();
  (*(v95 + 32))(&v6[v62], v63, v96);
  v64 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v64 = v85;
  v64[4] = v84;
  v65 = v82;
  swift_beginAccess();
  v66 = v65[1];
  v67 = v99;
  *v65 = v98;
  v65[1] = v67;

  v105.receiver = v6;
  v105.super_class = ObjectType;
  v68 = objc_msgSendSuper2(&v105, sel_init);
  v69 = v101;
  MEMORY[0x23EEEBFA0](&unk_284FCE500);
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v103;
  (v80)(v102, v69, v103);
  v71 = v68;
  sub_23D80DA1C();
  v81(v69, v70);
  v72 = *(v100 + 16);
  if (v72)
  {
    v73 = v100 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v74 = *(v76 + 72);
    do
    {
      sub_23D7CD444(v73, v12, type metadata accessor for AXRArticle);
      AXRBlockManager.appendArticle(_:splitStrings:)(v12, a3 & 1);
      sub_23D7CD3E4(v12, type metadata accessor for AXRArticle);
      v73 += v74;
      --v72;
    }

    while (v72);
  }

  sub_23D7BD6E0();

  return v71;
}

uint64_t AXRBlockManager.updateContent(article:splitStrings:)(uint64_t a1, int a2)
{
  LODWORD(v39) = a2;
  v38 = a1;
  v40 = sub_23D80D6CC();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v40);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_23D80DF8C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_23D80DF6C();
  v15 = v2;
  v16 = sub_23D80DF5C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_23D7C2104(0, 0, v13, &unk_23D811A70, v17);

  swift_getKeyPath();
  swift_getKeyPath();
  v43[0] = 3;
  v19 = v15;
  sub_23D80DA1C();
  sub_23D7BB288();
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = sub_23D80D9FC();
  v22 = *v21;
  v23 = MEMORY[0x277D84F90];
  *v21 = MEMORY[0x277D84F90];

  v20(v43, 0);

  v24 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  swift_beginAccess();
  v25 = *&v19[v24];
  *&v19[v24] = v23;

  AXRBlockManager.appendArticle(_:splitStrings:)(v38, v39);
  MEMORY[0x23EEEBFA0](&unk_284FCE538);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v40;
  (*(v3 + 16))(v7, v9, v40);
  v27 = v19;
  sub_23D80DA1C();
  (*(v3 + 8))(v9, v26);
  AXRBlockManager.currentBlock.getter();
  sub_23D7D8A48();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v28 = sub_23D7B7534(v41);

  v39 = v27;
  if (v28 >> 62)
  {
LABEL_17:
    v29 = sub_23D80E31C();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0;
  v31 = 0;
  while (v29 != v30)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x23EEECB80](v30, v28);
      if (__OFADD__(v30, 1))
      {
LABEL_13:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v32 = *(v28 + 8 * v30 + 32);

      if (__OFADD__(v30, 1))
      {
        goto LABEL_13;
      }
    }

    swift_getKeyPath();
    v42 = v32;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6FC();

    v33 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
    swift_beginAccess();
    v34 = *(v32 + v33);

    ++v30;
    v35 = __OFADD__(v31, v34);
    v31 += v34;
    if (v35)
    {
      goto LABEL_16;
    }
  }

  v36 = &v39[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v36 = v31;
  v36[8] = 0;
  return sub_23D7BD6E0();
}

uint64_t sub_23D7C1DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23D80DF6C();
  v4[3] = sub_23D80DF5C();
  v6 = sub_23D80DF3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_23D7C1E5C, v6, v5);
}

uint64_t sub_23D7C1E5C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  v0[6] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277D701C8] + 4);
    v7 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
    v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_23D7C1F64;

    return v7();
  }

  else
  {
    v5 = v0[3];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23D7C1F64()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23D7C20A4, v5, v4);
}

uint64_t sub_23D7C20A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D7C2104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23D790648(a3, v27 - v11, &qword_27E2E4550, &qword_23D810160);
  v13 = sub_23D80DF8C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23D790730(v12, &qword_27E2E4550, &qword_23D810160);
  }

  else
  {
    sub_23D80DF7C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23D80DF3C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23D80DD8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23D790730(a3, &qword_27E2E4550, &qword_23D810160);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D790730(a3, &qword_27E2E4550, &qword_23D810160);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id AXRBlockManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AXRBlockManager.speak(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_23D80DF8C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23D80DF6C();
  v8 = v1;
  v9 = sub_23D80DF5C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  *(v10 + 40) = a1;
  sub_23D7C2104(0, 0, v6, &unk_23D811A80, v10);
}

uint64_t sub_23D7C2834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 374) = a5;
  *(v5 + 64) = a4;
  v6 = sub_23D80D7FC();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A48, &qword_23D811E58) - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A50, &qword_23D811E60);
  *(v5 + 104) = v10;
  v11 = *(v10 - 8);
  *(v5 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A58, &qword_23D811E68);
  *(v5 + 128) = v13;
  v14 = *(v13 - 8);
  *(v5 + 136) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v16 = sub_23D80D85C();
  *(v5 + 160) = v16;
  v17 = *(v16 - 8);
  *(v5 + 168) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v19 = sub_23D80D7CC();
  *(v5 + 184) = v19;
  v20 = *(v19 - 8);
  *(v5 + 192) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v22 = sub_23D80D7BC();
  *(v5 + 208) = v22;
  v23 = *(v22 - 8);
  *(v5 + 216) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A60, &qword_23D811E70) - 8) + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  v26 = sub_23D80D87C();
  *(v5 + 240) = v26;
  v27 = *(v26 - 8);
  *(v5 + 248) = v27;
  v28 = *(v27 + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  v29 = sub_23D80D6CC();
  *(v5 + 264) = v29;
  v30 = *(v29 - 8);
  *(v5 + 272) = v30;
  v31 = *(v30 + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = sub_23D80DF6C();
  *(v5 + 296) = sub_23D80DF5C();
  v33 = sub_23D80DF3C();
  *(v5 + 304) = v33;
  *(v5 + 312) = v32;

  return MEMORY[0x2822009F8](sub_23D7C2C48, v33, v32);
}

uint64_t sub_23D7C2C48()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v5 = sub_23D80D6DC();
  v6 = *(v2 + 8);
  v6(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v7 = *(*(v0 + 40) + 16);

  if (v5 >= v7)
  {
    v44 = *(v0 + 296);

    goto LABEL_12;
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 264);
  v10 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v11 = sub_23D80D6DC();
  v6(v8, v9);
  v12 = AXRBlockManager.pageContentAtIndex(_:)(v5);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x23EEECB80](v11, v12);
    goto LABEL_6;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822005A8](v12, v13, v14, v15, v16);
  }

  v66 = *(v12 + 8 * v11 + 32);

LABEL_6:
  *(v0 + 320) = v66;
  v17 = *(v0 + 224);
  v18 = *(v0 + 232);
  v19 = *(v0 + 216);
  v20 = *(v0 + 192);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v63 = *(v0 + 176);
  v21 = *(v0 + 168);
  v64 = *(v0 + 160);
  v65 = *(v0 + 256);
  v22 = *(v0 + 374);
  v23 = *(v0 + 64);
  v62 = *(v0 + 184);

  v24 = sub_23D80D80C();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  v25 = swift_task_alloc();
  *(v25 + 16) = v22;
  *(v25 + 24) = v66;
  *(v25 + 32) = v23;
  (*(v19 + 104))(v17, *MEMORY[0x277D70198], v60);
  (*(v20 + 104))(v61, *MEMORY[0x277D701A0], v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A68, &qword_23D811E78);
  v26 = *(v21 + 72);
  v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23D8115E0;
  sub_23D80D84C();
  sub_23D80D83C();
  sub_23D80D82C();
  *(v0 + 48) = v28;
  sub_23D7CE978(&qword_27E2E4A70, MEMORY[0x277D70340]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A78, &qword_23D811E80);
  sub_23D7CE9C0(&qword_27E2E4A80, &qword_27E2E4A78, &qword_23D811E80);
  sub_23D80E1DC();
  sub_23D80D86C();

  v29 = *(v23 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  v30 = *(v0 + 256);
  if (v29)
  {
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v33 = *(v0 + 128);
    v34 = *(v0 + 136);
    v35 = *(v0 + 120);
    v36 = *(v0 + 64);
    v37 = v29;
    sub_23D80D81C();

    (*(v34 + 32))(v31, v32, v33);
    sub_23D80DFAC();
    *(v0 + 328) = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
    swift_beginAccess();
    v38 = MEMORY[0x277D701E8];
    *(v0 + 352) = *MEMORY[0x277D701F0];
    *(v0 + 356) = *v38;
    *(v0 + 360) = *MEMORY[0x277D701D8];
    *(v0 + 364) = *MEMORY[0x277D701E0];
    v39 = *(v0 + 288);
    v40 = sub_23D80DF5C();
    *(v0 + 336) = v40;
    v41 = *(MEMORY[0x277D858B8] + 4);
    v42 = swift_task_alloc();
    *(v0 + 344) = v42;
    *v42 = v0;
    v42[1] = sub_23D7C32A4;
    v43 = *(v0 + 120);
    v12 = *(v0 + 96);
    v15 = *(v0 + 104);
    v14 = MEMORY[0x277D85700];
    v16 = v0 + 56;
    v13 = v40;

    return MEMORY[0x2822005A8](v12, v13, v14, v15, v16);
  }

  v45 = *(v0 + 296);
  v46 = *(v0 + 240);
  v47 = *(v0 + 248);

  (*(v47 + 8))(v30, v46);
LABEL_12:
  v48 = *(v0 + 280);
  v49 = *(v0 + 256);
  v51 = *(v0 + 224);
  v50 = *(v0 + 232);
  v52 = *(v0 + 200);
  v53 = *(v0 + 176);
  v55 = *(v0 + 144);
  v54 = *(v0 + 152);
  v56 = *(v0 + 120);
  v57 = *(v0 + 96);
  v67 = *(v0 + 88);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_23D7C32A4()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;

  v4 = v2[42];

  v5 = v2[38];
  v6 = v2[39];
  if (v0)
  {
    v7 = sub_23D7C39A4;
  }

  else
  {
    v7 = sub_23D7C33C4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23D7C33C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 296);
    v6 = *(v0 + 248);
    v49 = *(v0 + 256);
    v7 = *(v0 + 240);
    v8 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 104);

    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v8, v9);
    (*(v6 + 8))(v49, v7);
    v14 = *(v0 + 280);
    v15 = *(v0 + 256);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 200);
    v19 = *(v0 + 176);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 120);
    v23 = *(v0 + 96);
    v50 = *(v0 + 88);

    v24 = *(v0 + 8);

    return v24();
  }

  v26 = *(v0 + 352);
  v27 = *(v0 + 88);
  (*(v3 + 32))(v27, v1, v2);
  v28 = (*(v3 + 88))(v27, v2);
  if (v28 == v26)
  {
    v29 = *(v0 + 88);
    v30 = *(v0 + 64);
    (*(*(v0 + 80) + 96))(v29, *(v0 + 72));
    v31 = *v29;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (*(v0 + 368) == 2)
    {
    }

    else
    {
      v34 = sub_23D80E4DC();

      if ((v34 & 1) == 0)
      {
        if (v31 && (*(*(v0 + 64) + *(v0 + 328)) & 1) == 0)
        {
          v37 = *(v0 + 320);
          sub_23D7D8A48();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          if (*(v0 + 369) <= 1u || *(v0 + 369) == 2)
          {
            v39 = sub_23D80E4DC();

            if ((v39 & 1) == 0)
            {
              v40 = *(v0 + 64);
              _s23AccessibilityReaderData15AXRBlockManagerC4nextyySbF_0();
            }
          }

          else
          {
          }
        }

        goto LABEL_27;
      }
    }

    v35 = *(v0 + 320);
    v36 = *(v0 + 64);
    sub_23D7D8A48();
    AXRBlockManager.reset(_:)(0);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 370) = 3;
    v36;
    sub_23D80DA1C();
    sub_23D7BB288();
LABEL_27:
    *(*(v0 + 64) + *(v0 + 328)) = 0;
    goto LABEL_28;
  }

  if (v28 == *(v0 + 356))
  {
    v32 = *(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 373) = 0;
    v32;
  }

  else if (v28 == *(v0 + 360))
  {
    v33 = *(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 372) = 1;
    v33;
  }

  else
  {
    if (v28 != *(v0 + 364))
    {
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      goto LABEL_28;
    }

    v38 = *(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 371) = 0;
    v38;
  }

  sub_23D80DA1C();
  sub_23D7BB288();
LABEL_28:
  v41 = *(v0 + 288);
  v42 = sub_23D80DF5C();
  *(v0 + 336) = v42;
  v43 = *(MEMORY[0x277D858B8] + 4);
  v44 = swift_task_alloc();
  *(v0 + 344) = v44;
  *v44 = v0;
  v44[1] = sub_23D7C32A4;
  v45 = *(v0 + 120);
  v46 = *(v0 + 96);
  v47 = *(v0 + 104);
  v48 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v46, v42, v48, v47, v0 + 56);
}

uint64_t sub_23D7C39A4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);
  v23 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v23, v4);

  v11 = *(v0 + 280);
  v12 = *(v0 + 256);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 200);
  v16 = *(v0 + 176);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v19 = *(v0 + 120);
  v20 = *(v0 + 96);
  v24 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23D7C3B1C(char a1, uint64_t a2)
{
  v4 = sub_23D80D6CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    swift_getKeyPath();
    *&v25[0] = a2;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6FC();

    v9 = a2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
    swift_beginAccess();
    if (*(v9 + 16) == 1)
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      sub_23D80D8EC();
      sub_23D790730(v25, &qword_27E2E4A88, &qword_23D811E88);
    }

    else
    {
      sub_23D7D7ED0(*v9, *(v9 + 8), v24);
      sub_23D80D8AC();
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_23D80D8AC();
      sub_23D7CEA08(v23, v22);
      sub_23D80D8EC();
      sub_23D790730(v22, &qword_27E2E4A88, &qword_23D811E88);
      __swift_destroy_boxed_opaque_existential_1(v23);
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    sub_23D80D8AC();
    sub_23D80D8AC();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v10 = sub_23D80D6AC();
    v11 = *(v5 + 8);
    v11(v8, v4);
    if (v10 < 3)
    {
      sub_23D7D7664(v24);
      sub_23D80D8AC();
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_23D80D8AC();
      sub_23D80D8AC();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v12 = sub_23D80D6DC();
      v11(v8, v4);
      swift_getKeyPath();
      *&v25[0] = a2;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6FC();

      v13 = (a2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
      swift_beginAccess();
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_23D80E04C();
      v18 = v17;
      v20 = v19;

      if (!v12 || (v20 & 1) != 0)
      {
        sub_23D7D7664(v25);
        sub_23D80D8AC();
        __swift_destroy_boxed_opaque_existential_1(v25);
        sub_23D80D8AC();
        sub_23D80D8AC();
      }

      else
      {
        sub_23D7D7ED0(v16, v18, v25);
        sub_23D80D8AC();
        __swift_destroy_boxed_opaque_existential_1(v25);
        sub_23D80D8AC();
        sub_23D80D8AC();
      }

      __swift_destroy_boxed_opaque_existential_1(v23);
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_23D80D8AC();
      sub_23D80D8AC();
    }

    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_23D80D8AC();
    sub_23D80D8AC();
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_23D80D8AC();
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

Swift::Void __swiftcall AXRBlockManager.reset(_:)(Swift::Bool a1)
{
  v3 = sub_23D80D6CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22[-v13];
  v15 = sub_23D80DF8C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_23D80DF6C();
  v16 = v1;
  v17 = sub_23D80DF5C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_23D7C2104(0, 0, v14, &unk_23D811A90, v18);

  swift_getKeyPath();
  swift_getKeyPath();
  v22[15] = 3;
  v20 = v16;
  sub_23D80DA1C();
  sub_23D7BB288();
  AXRBlockManager.currentBlock.getter();
  sub_23D7D8A48();

  if (!a1)
  {
    MEMORY[0x23EEEBFA0](&unk_284FCE568);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v4 + 16))(v8, v10, v3);
    v21 = v20;
    sub_23D80DA1C();
    (*(v4 + 8))(v10, v3);
  }

  if (qword_27E2E4250 != -1)
  {
    swift_once();
  }

  sub_23D80B3A4();
}

uint64_t AXRBlockManager.activateAudioSession()()
{
  v9 = *MEMORY[0x277D85DE8];
  v1[11] = v0;
  v2 = sub_23D80D97C();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  sub_23D80DF6C();
  v1[15] = sub_23D80DF5C();
  v5 = sub_23D80DF3C();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23D7C4430, v5, v6);
}

uint64_t sub_23D7C4430()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[11];

  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  v4 = *(v2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v4)
  {
    v5 = v4;
    v6 = sub_23D80D7DC();

    v7 = *MEMORY[0x277CB8030];
    v0[8] = 0;
    v8 = [v6 setCategory:v7 error:v0 + 8];

    v9 = v0[8];
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = *(v2 + v3);
    v11 = v9;
    if (!v10)
    {
      goto LABEL_11;
    }

    v12 = v10;
    v13 = sub_23D80D7DC();

    v0[10] = 0;
    v14 = [v13 setActive:1 error:v0 + 10];

    v9 = v0[10];
    if (v14)
    {
      v15 = v9;
    }

    else
    {
LABEL_6:
      v16 = v9;
      v17 = sub_23D80D5DC();

      swift_willThrow();
      if (qword_27E2E4248 != -1)
      {
        swift_once();
      }

      v19 = v0[13];
      v18 = v0[14];
      v20 = v0[12];
      v21 = __swift_project_value_buffer(v20, qword_27E2E5348);
      swift_beginAccess();
      (*(v19 + 16))(v18, v21, v20);
      v22 = v17;
      v23 = sub_23D80D95C();
      v24 = sub_23D80E07C();

      v25 = os_log_type_enabled(v23, v24);
      v27 = v0[13];
      v26 = v0[14];
      v28 = v0[12];
      if (v25)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42[0] = v30;
        *v29 = 136315138;
        swift_getErrorValue();
        v41 = v26;
        v32 = v0[5];
        v31 = v0[6];
        v33 = v0[7];
        v34 = sub_23D80E51C();
        v36 = sub_23D79FD34(v34, v35, v42);

        *(v29 + 4) = v36;
        _os_log_impl(&dword_23D78A000, v23, v24, "Failed to activate audio session: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x23EEED790](v30, -1, -1);
        MEMORY[0x23EEED790](v29, -1, -1);

        (*(v27 + 8))(v41, v28);
      }

      else
      {

        (*(v27 + 8))(v26, v28);
      }
    }
  }

LABEL_11:
  v37 = v0[14];

  v38 = v0[1];
  v39 = *MEMORY[0x277D85DE8];

  return v38();
}

uint64_t AXRBlockManager.deactivateAudioSession()()
{
  v9 = *MEMORY[0x277D85DE8];
  v1[10] = v0;
  v2 = sub_23D80D97C();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  sub_23D80DF6C();
  v1[14] = sub_23D80DF5C();
  v5 = sub_23D80DF3C();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23D7C4884, v5, v6);
}

uint64_t sub_23D7C4884()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[10];

  v3 = *(v2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v3)
  {
    v4 = v3;
    v5 = sub_23D80D7DC();

    v0[8] = 0;
    v6 = [v5 setActive:0 withOptions:1 error:v0 + 8];

    v7 = v0[8];
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v9 = v7;
      v10 = sub_23D80D5DC();

      swift_willThrow();
      if (qword_27E2E4248 != -1)
      {
        swift_once();
      }

      v12 = v0[12];
      v11 = v0[13];
      v13 = v0[11];
      v14 = __swift_project_value_buffer(v13, qword_27E2E5348);
      swift_beginAccess();
      (*(v12 + 16))(v11, v14, v13);
      v15 = v10;
      v16 = sub_23D80D95C();
      v17 = sub_23D80E07C();

      v18 = os_log_type_enabled(v16, v17);
      v20 = v0[12];
      v19 = v0[13];
      v21 = v0[11];
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v35[0] = v23;
        *v22 = 136315138;
        swift_getErrorValue();
        v34 = v19;
        v25 = v0[5];
        v24 = v0[6];
        v26 = v0[7];
        v27 = sub_23D80E51C();
        v29 = sub_23D79FD34(v27, v28, v35);

        *(v22 + 4) = v29;
        _os_log_impl(&dword_23D78A000, v16, v17, "Failed to deactivate audio session: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x23EEED790](v23, -1, -1);
        MEMORY[0x23EEED790](v22, -1, -1);

        (*(v20 + 8))(v34, v21);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }
    }
  }

  v30 = v0[13];

  v31 = v0[1];
  v32 = *MEMORY[0x277D85DE8];

  return v31();
}

uint64_t sub_23D7C4B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = sub_23D80DF6C();
  v4[5] = sub_23D80DF5C();
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_23D7C4C68;

  return AXRBlockManager.activateAudioSession()();
}

uint64_t sub_23D7C4C68()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D7C4DA4, v5, v4);
}

uint64_t sub_23D7C4DA4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = sub_23D80DF8C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v4;
  v7 = sub_23D80DF5C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v6;
  *(v8 + 40) = 0;
  sub_23D7C2104(0, 0, v3, &unk_23D811E50, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23D7C4EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = sub_23D80DF6C();
  v4[5] = sub_23D80DF5C();
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_23D7C4FC4;

  return AXRBlockManager.activateAudioSession()();
}

uint64_t sub_23D7C4FC4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D7C5100, v5, v4);
}

uint64_t sub_23D7C5100()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = *(v2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v3)
  {
    v4 = v3;
    if ([v4 isPaused])
    {
      v6 = *(v0 + 24);
      v5 = *(v0 + 32);
      v7 = *(v0 + 16);
      v8 = sub_23D80DF8C();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v9 = v7;
      v10 = sub_23D80DF5C();
      v11 = swift_allocObject();
      v12 = MEMORY[0x277D85700];
      *(v11 + 16) = v10;
      *(v11 + 24) = v12;
      *(v11 + 32) = v9;
      *(v11 + 40) = 1;
      sub_23D7C2104(0, 0, v6, &unk_23D811E48, v11);
    }

    v13 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 56) = 0;
    v13;
    sub_23D80DA1C();
    sub_23D7BB288();
  }

  v14 = *(v0 + 24);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_23D7C52C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_23D80DF8C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_23D80DF6C();
  v9 = v2;
  v10 = sub_23D80DF5C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_23D7C2104(0, 0, v7, a2, v11);
}

uint64_t sub_23D7C53E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23D80DF6C();
  v4[3] = sub_23D80DF5C();
  v6 = sub_23D80DF3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_23D7C547C, v6, v5);
}

uint64_t sub_23D7C547C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  v0[6] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277D70318] + 4);
    v7 = (*MEMORY[0x277D70318] + MEMORY[0x277D70318]);
    v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_23D7C55B4;

    return v7();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_23D7C570C;
    v6 = v0[2];

    return AXRBlockManager.deactivateAudioSession()();
  }
}

uint64_t sub_23D7C55B4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_23D7C570C;
  v6 = *(v1 + 16);

  return AXRBlockManager.deactivateAudioSession()();
}

uint64_t sub_23D7C570C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23D7C582C, v4, v3);
}

uint64_t sub_23D7C582C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 1;
  v2;
  sub_23D80DA1C();
  sub_23D7BB288();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23D7C58E4()
{
  v1 = AXRBlockManager.cumulativeCharacterCount(upTo:)();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v3 = floor(v1 / (v7 * 5.0 / 60.0) / 7200.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (*&v7 > v4 || v8 <= v4)
  {
    result = AXRBlockManager.totalVisibleChunks.getter();
    if (!__OFSUB__(result, 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v6 = v0;
      sub_23D80DA1C();
      return sub_23D7BD6E0();
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(uint64_t a1, int a2)
{
  v3 = v2;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v51 - v7;
  v9 = sub_23D80D6CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v57 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  result = sub_23D80D6AC();
  if (result >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = v10;
    sub_23D80DA0C();

    v20 = sub_23D80D6AC();
    v54 = *(v55 + 8);
    result = v54(v18, v9);
    if (v20 >= 2)
    {
      v21 = sub_23D80D6DC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v22 = sub_23D80D6DC();
      v54(v18, v9);
      if (v21 != v22)
      {
        goto LABEL_5;
      }

      v23 = sub_23D80D6DC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v24 = sub_23D80D6DC();
      v54(v18, v9);
      if (v23 != v24)
      {
LABEL_5:
        AXRBlockManager.currentBlock.getter();
        sub_23D7D8A48();
      }

      v25 = sub_23D80D6DC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v26 = *(v58 + 16);

      if (v26 >= v25)
      {
        v27 = sub_23D80D6DC();
        v28 = AXRBlockManager.pageContentAtIndex(_:)(v25);
        if ((v25 & 0x8000000000000000) != 0)
        {
        }

        if (v27 < 0)
        {
        }

        v52 = v27;
        v53 = v28;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v29 = *(v58 + 16);

        if (v25 >= v29)
        {
        }

        v30 = v53 >> 62 ? sub_23D80E31C() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v31 = v52;

        if (v31 < v30)
        {
          v32 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
          swift_beginAccess();
          v53 = v32;
          v3[v32] = 1;
          v52 = sub_23D80D6DC();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v33 = sub_23D80D6DC();
          v34 = v54;
          v54(v18, v9);
          if (v52 == v33)
          {
            v52 = sub_23D80D6DC();
            swift_getKeyPath();
            swift_getKeyPath();
            sub_23D80DA0C();

            v35 = sub_23D80D6DC();
            v34(v18, v9);
            v36 = 0;
            if (v56)
            {
              v37 = v52 == v35;
              v38 = v57;
              v39 = v55;
              if (!v37)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v38 = v57;
              v39 = v55;
            }
          }

          else
          {
            v38 = v57;
            v39 = v55;
            if (v56)
            {
LABEL_20:
              v36 = 1;
              goto LABEL_23;
            }

            v36 = 0;
          }

LABEL_23:
          v3[v53] = v36;
          v55 = *(v39 + 16);
          (v55)(v38, a1, v9);
          if (v56)
          {
            AXRBlockManager.resetCharacterIndex(of:)(a1, v18);
            v54(v38, v9);
            (*(v39 + 32))(v38, v18, v9);
            if (AXRBlockManager.blockAtIndexPath(_:)())
            {
              sub_23D7D8A48();
            }
          }

          v40 = v38;
          v41 = v55;
          (v55)(v18, v40, v9);
          swift_getKeyPath();
          swift_getKeyPath();
          v41(v14, v18, v9);
          v42 = v3;
          sub_23D80DA1C();
          v43 = v54;
          v54(v18, v9);
          v44 = sub_23D80DF8C();
          (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
          sub_23D80DF6C();
          v45 = v42;
          v46 = sub_23D80DF5C();
          v47 = swift_allocObject();
          v48 = MEMORY[0x277D85700];
          *(v47 + 16) = v46;
          *(v47 + 24) = v48;
          *(v47 + 32) = v45;
          *(v47 + 40) = 0;
          sub_23D7C2104(0, 0, v8, &unk_23D811AD8, v47);

          if (AXIsInternalInstall())
          {
            v49 = sub_23D80DD4C();
            v50 = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(v50, v49, 0, 0, 1u);
          }

          return v43(v57, v9);
        }
      }
    }
  }

  return result;
}

void sub_23D7C6284()
{
  v1 = sub_23D80D6CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  v13[15] = 3;
  v9 = v0;
  sub_23D80DA1C();
  sub_23D7BB288();
  MEMORY[0x23EEEBFA0](&unk_284FCE598);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v2 + 16))(v6, v8, v1);
  v10 = v9;
  sub_23D80DA1C();
  (*(v2 + 8))(v8, v1);
  if (AXIsInternalInstall())
  {
    v11 = sub_23D80DD4C();
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v12, v11, 0, 0, 1u);
  }
}

Swift::Void __swiftcall AXRBlockManager.prev()()
{
  v0 = sub_23D80D6CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v5 = sub_23D80D6DC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v7 = *(v16 + 16);

  if (v5 < v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v8 = sub_23D80D6DC();
    v6(v4, v0);
    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v13 = *(v16 + 16);

        if (v5 >= v13)
        {
          sub_23D7C6284();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_23D80FAF0;
          *(v14 + 32) = v5;
          *(v14 + 40) = v9;
          MEMORY[0x23EEEBFA0]();
          sub_23D7C58E4();
          AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v4, 1);
          v6(v4, v0);
        }

        return;
      }

      if (!__OFSUB__(v5--, 1))
      {
        if (v5 < 0)
        {
          return;
        }

        v11 = AXRBlockManager.pageContentAtIndex(_:)(v5);
        if (!(v11 >> 62))
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_8;
        }

LABEL_15:
        v12 = sub_23D80E31C();
LABEL_8:

        v9 = v12 - 1;
        if (__OFSUB__(v12, 1))
        {
          __break(1u);
          return;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t AXRBlockManager.resetCharacterIndex(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D80D6AC();
  v5 = sub_23D80D6CC();
  if (v4 >= 3)
  {
    sub_23D7CE978(&qword_27E2E49D0, MEMORY[0x277CC9AF8]);
    v6 = sub_23D80E01C();
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v8 = v6;
      v17 = MEMORY[0x277D84F90];
      sub_23D795418(0, v6 & ~(v6 >> 63), 0);
      v7 = v17;
      result = sub_23D80E00C();
      if (v8 < 0)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      do
      {
        v10 = sub_23D80E03C();
        v12 = *v11;
        v10(v16, 0);
        v17 = v7;
        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          sub_23D795418((v13 > 1), v14 + 1, 1);
          v7 = v17;
        }

        v7[2] = v14 + 1;
        v7[v14 + 4] = v12;
        sub_23D80E02C();
        --v8;
      }

      while (v8);
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23D7CD068(v7);
      v7 = result;
    }

    if (v7[2] >= 3uLL)
    {
      v7[6] = 0;
      return MEMORY[0x23EEEBFD0](v7);
    }

    __break(1u);
    goto LABEL_16;
  }

  v15 = *(*(v5 - 8) + 16);

  return v15(a2, a1, v5);
}

uint64_t AXRBlockManager.resetSelectedTextRange(of:)()
{
  result = AXRBlockManager.blockAtIndexPath(_:)();
  if (result)
  {
    sub_23D7D8A48();
  }

  return result;
}

uint64_t sub_23D7C6ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23D80DF6C();
  v4[3] = sub_23D80DF5C();
  v6 = sub_23D80DF3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_23D7C6B74, v6, v5);
}

uint64_t sub_23D7C6B74()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  v0[6] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277D701C8] + 4);
    v7 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
    v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_23D7C6C7C;

    return v7();
  }

  else
  {
    v5 = v0[3];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23D7C6C7C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23D7CECC4, v5, v4);
}

Swift::Bool __swiftcall AXRBlockManager.isSpeaking()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v4 > 1u || v4)
  {
    v2 = sub_23D80E4DC();

    if (v2)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
      if (v1)
      {
        LOBYTE(v1) = [v1 isSpeaking];
      }
    }
  }

  else
  {

    LOBYTE(v1) = 1;
  }

  return v1;
}

Swift::Bool __swiftcall AXRBlockManager.isPaused()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v4 <= 1u && v4)
  {

    goto LABEL_7;
  }

  v1 = sub_23D80E4DC();

  if (v1)
  {
LABEL_7:
    LOBYTE(v2) = 1;
    return v2;
  }

  v2 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v2)
  {
    LOBYTE(v2) = [v2 isPaused];
  }

  return v2;
}

void AXRBlockManager.updateSpeed(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v48 - v5;
  v6 = *a1;
  v7 = *(a1 + 4);
  v8 = &v1[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  swift_beginAccess();
  *v8 = v6;
  *(v8 + 4) = v7;
  sub_23D7B9E80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v9 = v76;
  v70 = *(v76 + 16);
  if (v70)
  {
    v49 = v1;
    v10 = 0;
    v69 = v76 + 32;
    if (LODWORD(v6) > 0xF)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    if (LODWORD(v6) == 15)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v66 = v12;
    v67 = v11;
    if (LODWORD(v6) == 14)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    if (LODWORD(v6) == 13)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v64 = v14;
    v65 = v13;
    if (LODWORD(v6) == 12)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0;
    }

    if (LODWORD(v6) == 11)
    {
      v16 = v7;
    }

    else
    {
      v16 = 0;
    }

    v62 = v16;
    v63 = v15;
    if (LODWORD(v6) == 10)
    {
      v17 = v7;
    }

    else
    {
      v17 = 0;
    }

    if (LODWORD(v6) == 9)
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    v60 = v18;
    v61 = v17;
    if (LODWORD(v6) == 8)
    {
      v19 = v7;
    }

    else
    {
      v19 = 0;
    }

    v59 = v19;
    if (LODWORD(v6) == 7)
    {
      v20 = v7;
    }

    else
    {
      v20 = 0;
    }

    v58 = v20;
    if (LODWORD(v6) == 6)
    {
      v21 = v7;
    }

    else
    {
      v21 = 0;
    }

    v57 = v21;
    if (LODWORD(v6) == 5)
    {
      v22 = v7;
    }

    else
    {
      v22 = 0;
    }

    v56 = v22;
    if (LODWORD(v6) == 4)
    {
      v23 = v7;
    }

    else
    {
      v23 = 0;
    }

    v55 = v23;
    if (LODWORD(v6) == 3)
    {
      v24 = v7;
    }

    else
    {
      v24 = 0;
    }

    v54 = v24;
    if (LODWORD(v6) == 2)
    {
      v25 = v7;
    }

    else
    {
      v25 = 0;
    }

    v53 = v25;
    if (LODWORD(v6) == 1)
    {
      v26 = v7;
    }

    else
    {
      v26 = 0;
    }

    v52 = v26;
    if (v6 == 0.0)
    {
      v27 = v7;
    }

    else
    {
      v27 = 0;
    }

    v51 = v27;
    v68 = v76;
    while (v10 < *(v9 + 16))
    {
      v28 = *(v69 + 8 * v10);
      if (!(v28 >> 62))
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      v37 = v9;
      if (v28 < 0)
      {
        v38 = *(v69 + 8 * v10);
      }

      v29 = sub_23D80E31C();
      v9 = v37;
      if (v29)
      {
LABEL_59:
        if (v29 >= 1)
        {
          v71 = v10;
          v30 = v28 & 0xC000000000000001;

          v31 = 0;
          v72 = v28 & 0xC000000000000001;
          v73 = v28;
          while (1)
          {
            if (v30)
            {
              v32 = MEMORY[0x23EEECB80](v31, v28);
            }

            else
            {
              v32 = *(v28 + 8 * v31 + 32);
            }

            v33 = v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
            swift_beginAccess();
            if (*(v33 + 4) == 1)
            {
              switch(*v33)
              {
                case 1:
                  v34 = &v78;
                  break;
                case 2:
                  v34 = &v78 + 4;
                  break;
                case 3:
                  v34 = &v79;
                  break;
                case 4:
                  v34 = &v79 + 4;
                  break;
                case 5:
                  v34 = &v80;
                  break;
                case 6:
                  v34 = &v80 + 4;
                  break;
                case 7:
                  v34 = &v81;
                  break;
                case 8:
                  v34 = &v81 + 4;
                  break;
                case 9:
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xA:
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xB:
                  if ((v62 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xC:
                  if ((v63 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xD:
                  if ((v64 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xE:
                  if ((v65 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xF:
                  if ((v66 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0x10:
                  if (!v67)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                default:
                  v34 = &v77 + 4;
                  break;
              }

              if ((*(v34 - 64) & 1) == 0)
              {
LABEL_99:
                KeyPath = swift_getKeyPath();
                v74 = &v48;
                MEMORY[0x28223BE20](KeyPath);
                *(&v48 - 2) = v32;
                *(&v48 - 2) = v6;
                *(&v48 - 4) = v7;
                v75 = v32;
                sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
                sub_23D80D6EC();

                v30 = v72;

                v28 = v73;
                goto LABEL_62;
              }
            }

            else
            {
              if (*v33 == v6)
              {
                v35 = v7;
              }

              else
              {
                v35 = 1;
              }

              if (v35)
              {
                goto LABEL_99;
              }
            }

LABEL_61:
            *v33 = v6;
            *(v33 + 4) = v7;

LABEL_62:
            if (v29 == ++v31)
            {

              v9 = v68;
              v10 = v71;
              goto LABEL_55;
            }
          }
        }

LABEL_116:
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_111;
      }

LABEL_55:
      if (++v10 == v70)
      {

        v1 = v49;
        goto LABEL_106;
      }
    }

    __break(1u);
    goto LABEL_116;
  }

LABEL_106:
  v39 = *&v1[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth];
  if (v39)
  {
    v40 = v39;
    if ([v40 isSpeaking])
    {
      v41 = sub_23D80DF8C();
      v42 = v50;
      (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
      sub_23D80DF6C();
      v43 = v1;
      v44 = sub_23D80DF5C();
      v45 = swift_allocObject();
      v46 = MEMORY[0x277D85700];
      *(v45 + 16) = v44;
      *(v45 + 24) = v46;
      *(v45 + 32) = v43;
      *(v45 + 40) = 1;
      sub_23D7C2104(0, 0, v42, &unk_23D811B08, v45);
    }
  }

  if (qword_27E2E4250 != -1)
  {
    goto LABEL_117;
  }

LABEL_111:
  if (v7)
  {
    v47 = *&qword_23D811EA8[SLODWORD(v6)];
  }

  else
  {
    v47 = v6;
  }

  sub_23D80B1C0(v47);
}

id AXRBlockManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23D7C7740@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_23D80D9AC();
  *a1 = result;
  return result;
}

uint64_t sub_23D7C7780@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23D80E25C();
  *a1 = result;
  return result;
}

uint64_t AXRBlockManager.insertArticle(_:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v78 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v74 - v7;
  v8 = type metadata accessor for AXRTextContent();
  v87 = *(v8 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_23D80D6CC();
  v81 = *(v86 - 8);
  v11 = *(v81 + 64);
  v12 = MEMORY[0x28223BE20](v86);
  v75 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v76 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v77 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49D8, &qword_23D811B10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  *&v84 = &v74 - v19;
  v20 = type metadata accessor for AXRArticle();
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(a1 + *(v22 + 32));

  _s23AccessibilityReaderData14AXRTextContentV25clearIntermediateElements2inySayACGz_tFZ_0(&v91);
  v25 = (a1 + v20[5]);
  v26 = *v25;
  v27 = v25[1];
  v28 = (a1 + v20[6]);
  v29 = v28[1];
  v85 = *v28;
  v30 = v91;
  v31 = v20[9];
  v32 = sub_23D80D63C();
  (*(*(v32 - 8) + 56))(&v24[v31], 1, 1, v32);
  v33 = 0x800000023D815CB0;
  v34 = qword_27E2E4228;

  v35 = v29;

  if (v34 != -1)
  {
    swift_once();
  }

  v36 = 0xD00000000000001FLL;
  v88 = v30;
  if (qword_27E2E4610)
  {
    v37 = v24;
    v38 = v3;
    v39 = qword_27E2E4610;
    v40 = sub_23D80DD4C();
    v41 = sub_23D80DD4C();
    v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

    v36 = sub_23D80DD7C();
    v33 = v43;

    v3 = v38;
    v24 = v37;
    v30 = v88;
  }

  sub_23D80D66C();
  v44 = &v24[v20[5]];
  *v44 = v26;
  *(v44 + 1) = v27;
  v45 = &v24[v20[6]];
  *v45 = v85;
  *(v45 + 1) = v35;
  v46 = &v24[v20[7]];
  *v46 = v36;
  v46[1] = v33;
  *&v24[v20[8]] = v30;
  v24[v20[10]] = 0;
  v24[v20[11]] = 0;
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  result = swift_beginAccess();
  v49 = v78;
  if (*(*&v3[v47] + 16) < v78)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v78 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v50 = v84;
  sub_23D7CD444(v24, v84, type metadata accessor for AXRArticle);
  sub_23D7CCF80(v49, v49, v50);
  swift_endAccess();
  v51 = *(v30 + 16);
  if (!v51)
  {
    sub_23D7CD3E4(v24, type metadata accessor for AXRArticle);
  }

  v74 = v24;
  v90 = MEMORY[0x277D84F90];
  v85 = v3;
  v52 = &v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  v79 = v30 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  swift_beginAccess();
  v53 = 0;
  v54 = (v81 + 56);
  v80 = (v81 + 16);
  v81 += 8;
  v84 = xmmword_23D80FAF0;
  v55 = v77;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
    v56 = swift_allocObject();
    *(v56 + 16) = v84;
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_23D80DA0C();

    v58 = *(v89[0] + 16);

    *(v56 + 32) = v58;
    *(v56 + 40) = v53;
    MEMORY[0x23EEEBFA0](v56);
    if (v51 > *(v30 + 16))
    {
      break;
    }

    --v51;
    v59 = v83;
    sub_23D7CD444(v79 + *(v87 + 72) * v51, v83, type metadata accessor for AXRTextContent);
    v60 = v52[4];
    LODWORD(v89[0]) = *v52;
    BYTE4(v89[0]) = v60;
    v58 = *v80;
    v61 = v82;
    v62 = v86;
    (*v80)(v82, v55, v86);
    (*v54)(v61, 0, 1, v62);
    sub_23D801090(v89, v61);
    sub_23D790730(v61, &qword_27E2E43F8, &qword_23D811650);
    v63 = sub_23D7CD3E4(v59, type metadata accessor for AXRTextContent);
    MEMORY[0x23EEEC7D0](v63);
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23D80DF0C();
    }

    sub_23D80DF2C();
    KeyPath = *v81;
    (*v81)(v55, v62);
    ++v53;
    v30 = v88;
    if (!v51)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  v64 = v90;
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v85;
  result = sub_23D80D9FC();
  v67 = v78;
  if (*(*v66 + 16) < v78)
  {
    goto LABEL_24;
  }

  v68 = result;
  sub_23D7CDCF8(v78, v78, v64);

  v68(v89, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v76;
  sub_23D80DA0C();

  v70 = sub_23D80D6DC();
  v71 = v86;
  KeyPath(v69, v86);
  if (v70 <= v67)
  {
LABEL_20:
    sub_23D7CD3E4(v74, type metadata accessor for AXRArticle);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v72 = sub_23D80D6DC();
  KeyPath(v69, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
  result = swift_allocObject();
  *(result + 16) = v84;
  if (!__OFADD__(v70, 1))
  {
    *(result + 32) = v70 + 1;
    *(result + 40) = v72;
    MEMORY[0x23EEEBFA0]();
    swift_getKeyPath();
    swift_getKeyPath();
    v58(v75, v69, v71);
    v73 = v65;
    sub_23D80DA1C();
    KeyPath(v69, v71);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t AXRBlockManager.fetchContentIn(direction:using:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_23D80D97C();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = sub_23D80D6CC();
  v3[30] = v7;
  v8 = *(v7 - 8);
  v3[31] = v8;
  v9 = *(v8 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = type metadata accessor for AXRArticle();
  v3[34] = v10;
  v11 = *(v10 - 8);
  v3[35] = v11;
  v12 = *(v11 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  sub_23D80DF6C();
  v3[38] = sub_23D80DF5C();
  v14 = sub_23D80DF3C();
  v3[39] = v14;
  v3[40] = v13;

  return MEMORY[0x2822009F8](sub_23D7C832C, v14, v13);
}

uint64_t sub_23D7C832C()
{
  v1 = v0[24];
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  swift_beginAccess();
  if (*(v1 + v2) == 1 && (v3 = v0[24], v4 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles, swift_beginAccess(), v5 = *(v3 + v4), *(v5 + 16)))
  {
    v6 = v0[37];
    v7 = v0[34];
    v8 = v0[24];
    v9 = v0[22];
    v10 = *(v0[35] + 80);
    sub_23D7CD444(v5 + ((v10 + 32) & ~v10), v6, type metadata accessor for AXRArticle);
    v11 = sub_23D7C92F8(v9);
    v0[41] = v11;
    v12 = (v6 + *(v7 + 24));
    v13 = *v12;
    v0[42] = *v12;
    v14 = v12[1];
    v0[43] = v14;
    v15 = swift_task_alloc();
    v0[44] = v15;
    *v15 = v0;
    v15[1] = sub_23D7C8524;
    v16 = v0[22];
    v17 = v0[23];

    return AXRuntimeClient.fetchContentIn(direction:bundleID:currentElement:)(v16, v13, v14, v11);
  }

  else
  {
    v19 = v0[38];

    v21 = v0[36];
    v20 = v0[37];
    v23 = v0[32];
    v22 = v0[33];
    v25 = v0[28];
    v24 = v0[29];
    v26 = v0[27];

    v27 = v0[1];

    return v27(0);
  }
}

uint64_t sub_23D7C8524(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v7 = *(v3 + 320);
  v8 = *(v3 + 312);
  if (v1)
  {
    v9 = sub_23D7C8FF0;
  }

  else
  {
    v9 = sub_23D7C8668;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23D7C8668()
{
  v109 = v0;
  v1 = v0[45];
  v2 = v0[38];

  if (!*(v1 + 16))
  {
    v30 = v0[45];
    v31 = v0[41];

    goto LABEL_40;
  }

  v3 = v0[43];
  v4 = v0[36];
  v5 = v0[34];
  v6 = (v0[37] + *(v5 + 20));
  v7 = v6[1];
  v106 = *v6;
  v8 = *(v5 + 36);
  v9 = sub_23D80D63C();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = 0x800000023D815CB0;
  v11 = qword_27E2E4228;
  v104 = v7;

  if (v11 != -1)
  {
LABEL_45:
    swift_once();
  }

  v12 = 0xD00000000000001FLL;
  v103 = v1;
  if (qword_27E2E4610)
  {
    v13 = qword_27E2E4610;
    v14 = sub_23D80DD4C();
    v15 = sub_23D80DD4C();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    v12 = sub_23D80DD7C();
    v10 = v17;
  }

  v18 = v0[45];
  v19 = v0[42];
  v20 = v0[43];
  v21 = v0[36];
  v22 = v0[34];
  v23 = v0[22];
  sub_23D80D66C();
  v24 = (v21 + *(v5 + 20));
  *v24 = v106;
  v24[1] = v104;
  v25 = (v21 + v22[6]);
  *v25 = v19;
  v25[1] = v20;
  v26 = (v21 + v22[7]);
  *v26 = v12;
  v26[1] = v10;
  *(v21 + v22[8]) = v18;
  *(v21 + v22[10]) = 0;
  *(v21 + v22[11]) = 0;
  v27 = v0[45];
  if (v23 == 2)
  {
    v32 = v0[36];
    v33 = v0[33];
    v34 = v0[30];
    v35 = v0[31];
    v36 = v0[24];

    AXRBlockManager.insertArticle(_:at:)(v32, 0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v37 = sub_23D80D6DC();
    v38 = *(v35 + 8);
    v38(v33, v34);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v39 = sub_23D80D6DC();
    v38(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_23D80FAF0;
    v41 = v37 + 1;
    if (!__OFADD__(v37, 1))
    {
      v43 = v0[32];
      v42 = v0[33];
      v44 = v0[30];
      v45 = v0[31];
      v46 = v0[24];
      *(v40 + 32) = v41;
      *(v40 + 40) = v39;
      MEMORY[0x23EEEBFA0]();
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v45 + 16))(v43, v42, v44);
      v47 = v46;
      sub_23D80DA1C();
      v38(v42, v44);
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (v23 == 1)
    {
      v28 = v0[36];
      v29 = v0[24];

      AXRBlockManager.appendArticle(_:splitStrings:)(v28, 0);
      goto LABEL_15;
    }

    v48 = qword_27E2E4248;

    if (v48 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v49 = v0[29];
  v50 = v0[25];
  v51 = v0[26];
  v52 = __swift_project_value_buffer(v50, qword_27E2E5348);
  swift_beginAccess();
  (*(v51 + 16))(v49, v52, v50);
  v53 = sub_23D80D95C();
  v54 = sub_23D80E07C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = v0[22];
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = v55;
    _os_log_impl(&dword_23D78A000, v53, v54, "Unknown direction : %ld", v56, 0xCu);
    MEMORY[0x23EEED790](v56, -1, -1);
  }

  v57 = v0[29];
  v58 = v0[25];
  v59 = v0[26];

  (*(v59 + 8))(v57, v58);
LABEL_15:
  v60 = v0[46];
  v61 = v0[24];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v1 = v0[20];
  v10 = sub_23D7B7534(v1);

  if (v10 >> 62)
  {
    v62 = sub_23D80E31C();
  }

  else
  {
    v62 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = 0;
  v64 = 0;
  v5 = v10 & 0xC000000000000001;
  while (v62 != v63)
  {
    if (v5)
    {
      v65 = MEMORY[0x23EEECB80](v63, v10);
      if (__OFADD__(v63, 1))
      {
LABEL_27:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v63 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v65 = *(v10 + 8 * v63 + 32);

      if (__OFADD__(v63, 1))
      {
        goto LABEL_27;
      }
    }

    swift_getKeyPath();
    v0[21] = v65;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6FC();

    v66 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
    swift_beginAccess();
    v1 = *(v65 + v66);

    ++v63;
    v67 = __OFADD__(v64, v1);
    v64 += v1;
    if (v67)
    {
      goto LABEL_44;
    }
  }

  v68 = v0[24];

  v69 = v68 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  *v69 = v64;
  *(v69 + 8) = 0;
  if (qword_27E2E4248 != -1)
  {
    swift_once();
  }

  v70 = v0[45];
  v71 = v0[28];
  v72 = v0[25];
  v73 = v0[26];
  v74 = __swift_project_value_buffer(v72, qword_27E2E5348);
  swift_beginAccess();
  (*(v73 + 16))(v71, v74, v72);

  v75 = sub_23D80D95C();
  v76 = sub_23D80E06C();
  v77 = os_log_type_enabled(v75, v76);
  v78 = v0[45];
  v79 = v0[41];
  v80 = v0[36];
  v81 = v0[28];
  v83 = v0[25];
  v82 = v0[26];
  if (v77)
  {
    v84 = v0[22];
    v107 = v0[28];
    v85 = swift_slowAlloc();
    v105 = v83;
    v86 = swift_slowAlloc();
    v108 = v86;
    *v85 = 134218242;
    v102 = v80;
    v87 = *(v103 + 16);

    *(v85 + 4) = v87;

    *(v85 + 12) = 2080;
    if (v84 == 1)
    {
      v88 = 1954047342;
    }

    else
    {
      v88 = 0x73756F6976657270;
    }

    if (v84 == 1)
    {
      v89 = 0xE400000000000000;
    }

    else
    {
      v89 = 0xE800000000000000;
    }

    v90 = sub_23D79FD34(v88, v89, &v108);

    *(v85 + 14) = v90;
    _os_log_impl(&dword_23D78A000, v75, v76, "Added %ld %s content blocks", v85, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x23EEED790](v86, -1, -1);
    MEMORY[0x23EEED790](v85, -1, -1);

    (*(v82 + 8))(v107, v105);
    v91 = v102;
  }

  else
  {
    v92 = v0[45];
    swift_bridgeObjectRelease_n();

    (*(v82 + 8))(v81, v83);
    v91 = v80;
  }

  sub_23D7CD3E4(v91, type metadata accessor for AXRArticle);
LABEL_40:
  sub_23D7CD3E4(v0[37], type metadata accessor for AXRArticle);
  v94 = v0[36];
  v93 = v0[37];
  v96 = v0[32];
  v95 = v0[33];
  v98 = v0[28];
  v97 = v0[29];
  v99 = v0[27];

  v100 = v0[1];

  return v100(0);
}

uint64_t sub_23D7C8FF0()
{
  v37 = v0;
  v1 = v0[41];
  v2 = v0[38];

  if (qword_27E2E4248 != -1)
  {
    swift_once();
  }

  v3 = v0[46];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = __swift_project_value_buffer(v6, qword_27E2E5348);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_23D80D95C();
  v10 = sub_23D80E07C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[46];
  v14 = v0[26];
  v13 = v0[27];
  v15 = v0[25];
  if (v11)
  {
    v35 = v0[27];
    v16 = v0[22];
    v34 = v0[25];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v17 = 136315394;
    if (v16 == 1)
    {
      v20 = 1954047342;
    }

    else
    {
      v20 = 0x73756F6976657270;
    }

    if (v16 == 1)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE800000000000000;
    }

    v22 = sub_23D79FD34(v20, v21, &v36);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_23D78A000, v9, v10, "Failed to fetch %s content : %@", v17, 0x16u);
    sub_23D790730(v18, &qword_27E2E45B0, &unk_23D810330);
    MEMORY[0x23EEED790](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23EEED790](v19, -1, -1);
    MEMORY[0x23EEED790](v17, -1, -1);

    (*(v14 + 8))(v35, v34);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  sub_23D7CD3E4(v0[37], type metadata accessor for AXRArticle);
  v26 = v0[36];
  v25 = v0[37];
  v28 = v0[32];
  v27 = v0[33];
  v30 = v0[28];
  v29 = v0[29];
  v31 = v0[27];

  v32 = v0[1];

  return v32(0);
}

uint64_t sub_23D7C92F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  if (a1 == 1)
  {
    swift_beginAccess();
    v4 = *(v1 + v3);

    result = sub_23D7C9448(v5);
    v7 = result;
  }

  else
  {
    swift_beginAccess();
    v7 = *(v1 + v3);
  }

  v8 = 0;
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      v13 = 0;
LABEL_10:

      return v13;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = type metadata accessor for AXRArticle();
    v11 = v8 + 1;
    v12 = *(v7 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v8 + *(v10 + 32));

    v13 = _s23AccessibilityReaderData14AXRTextContentV34getElementForPaginationInDirection_4fromSo9AXElementCSgSo11AXDirectionV_SayACGtFZ_0(a1, v12);

    v8 = v11;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D7C9448(void *a1)
{
  v2 = type metadata accessor for AXRArticle();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v17 = &v16 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return a1;
  }

  v10 = 0;
  v11 = v9 >> 1;
  for (i = v9 - 1; ; --i)
  {
    if (v10 == i)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v15 = *(v16 + 72);
    result = sub_23D7CD444(a1 + v14 + v15 * v10, v17, type metadata accessor for AXRArticle);
    if (i >= v13)
    {
      goto LABEL_14;
    }

    sub_23D7CD444(a1 + v14 + v15 * i, v6, type metadata accessor for AXRArticle);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_23D7CD07C(a1);
    }

    result = sub_23D7CE8BC(v6, a1 + v14 + v15 * v10);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_23D7CE8BC(v17, a1 + v14 + v15 * i);
LABEL_5:
    if (v11 == ++v10)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(uint64_t a1, int a2)
{
  v39 = a2;
  v53 = a1;
  v3 = sub_23D80D6CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v41 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v51 = &v38[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v38[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v38[-v15];
  v42 = v4;
  v44 = *(v4 + 56);
  v45 = v4 + 56;
  v44(&v38[-v15], 1, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v2;
  sub_23D80DA0C();

  v17 = *(v54 + 16);

  v50 = v17;
  if (!v17)
  {
LABEL_22:
    v33 = v41;
    sub_23D790648(v16, v41, &qword_27E2E43F8, &qword_23D811650);
    v34 = v42;
    if ((*(v42 + 48))(v33, 1, v3) == 1)
    {
      sub_23D790730(v16, &qword_27E2E43F8, &qword_23D811650);
      v35 = 0;
    }

    else
    {
      v36 = v40;
      (*(v34 + 32))(v40, v33, v3);
      v35 = AXRBlockManager.blockAtIndexPath(_:)();
      if (v35)
      {
        if (v39)
        {
          v37 = v46;
          (*(v34 + 16))(v46, v36, v3);
          v44(v37, 0, 1, v3);
          sub_23D7D4AF8(v37);
        }
      }

      (*(v34 + 8))(v36, v3);
      v33 = v16;
    }

    sub_23D790730(v33, &qword_27E2E43F8, &qword_23D811650);
    return v35;
  }

  v18 = 0;
  v19 = 0;
  v49 = (v42 + 48);
  v43 = xmmword_23D8115E0;
  v47 = v16;
  v48 = v3;
  while (1)
  {
    result = AXRBlockManager.pageContentAtIndex(_:)(v19);
    v21 = result;
    if (!(result >> 62))
    {
      v22 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    result = sub_23D80E31C();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v22 = result;
    if (result)
    {
LABEL_5:
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x23EEECB80](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        swift_getKeyPath();
        v55 = v24;
        sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
        sub_23D80D6FC();

        v25 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
        result = swift_beginAccess();
        v26 = *(v24 + v25);
        v27 = v18 + v26;
        if (__OFADD__(v18, v26))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v27 >= v53)
        {
          break;
        }

        ++v23;

        v18 = v27;
        if (v22 == v23)
        {
          goto LABEL_19;
        }
      }

      v28 = v53 - v18;
      if (__OFSUB__(v53, v18))
      {
        goto LABEL_32;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
      v29 = swift_allocObject();
      *(v29 + 16) = v43;
      *(v29 + 32) = v19;
      *(v29 + 40) = v23;
      *(v29 + 48) = v28;
      v30 = v46;
      MEMORY[0x23EEEBFA0]();

      v16 = v47;
      sub_23D790730(v47, &qword_27E2E43F8, &qword_23D811650);
      v3 = v48;
      v44(v30, 0, 1, v48);
      sub_23D7AF7D0(v30, v16, &qword_27E2E43F8, &qword_23D811650);
      goto LABEL_20;
    }

LABEL_18:
    v27 = v18;
LABEL_19:

    v18 = v27;
    v16 = v47;
    v3 = v48;
LABEL_20:
    v31 = v51;
    sub_23D790648(v16, v51, &qword_27E2E43F8, &qword_23D811650);
    v32 = (*v49)(v31, 1, v3);
    sub_23D790730(v31, &qword_27E2E43F8, &qword_23D811650);
    if (v32 == 1 && ++v19 != v50)
    {
      continue;
    }

    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t AXRBlockManager.cumulativeCharacterCount(upTo:)()
{
  v1 = v0;
  v2 = sub_23D80D6DC();
  KeyPath = sub_23D80D6DC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v4 = *(v35 + 16);

  v5 = 0;
  if (v2 >= v4)
  {
    return v5;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  if (!v2)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v6 = 0;
  v5 = 0;
  v7 = &unk_23D8115F0;
  v31 = KeyPath;
  do
  {
    KeyPath = v6;
    while (1)
    {
      if (KeyPath >= v2)
      {
        goto LABEL_48;
      }

      v6 = KeyPath + 1;
      if (__OFADD__(KeyPath, 1))
      {
        goto LABEL_49;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v8 = *(v35 + 16);

      if (KeyPath >= v8)
      {
LABEL_26:
        KeyPath = v31;
        goto LABEL_28;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v9 = *(v35 + 16);

      v11 = MEMORY[0x277D84F90];
      if (v9 > KeyPath)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        if (KeyPath >= *(v35 + 16))
        {
          goto LABEL_52;
        }

        v11 = *(v35 + 8 * KeyPath + 32);
      }

      v12 = v1;
      v1 = v7;
      if (!(v11 >> 62))
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          break;
        }

        goto LABEL_14;
      }

      result = sub_23D80E31C();
      v13 = result;
      if (result)
      {
        break;
      }

LABEL_14:

      ++KeyPath;
      v7 = v1;
      v1 = v12;
      if (v6 == v2)
      {
        goto LABEL_26;
      }
    }

    v30 = v2;
    if (v13 < 1)
    {
      goto LABEL_61;
    }

    for (i = 0; i != v13; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x23EEECB80](i, v11);
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      KeyPath = swift_getKeyPath();
      v35 = v15;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6FC();

      v16 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
      swift_beginAccess();
      v17 = *(v15 + v16);

      v18 = __OFADD__(v5, v17);
      v5 += v17;
      if (v18)
      {
        goto LABEL_51;
      }
    }

    v2 = v30;
    KeyPath = v31;
    v7 = v1;
    v1 = v12;
  }

  while (v6 != v30);
LABEL_28:
  v19 = AXRBlockManager.pageContentAtIndex(_:)(v2);
  v1 = v19;
  if (v19 >> 62)
  {
    goto LABEL_54;
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (KeyPath >= result)
  {
LABEL_55:

    return v5;
  }

  while (1)
  {
    if (KeyPath < 0)
    {
      __break(1u);
      goto LABEL_58;
    }

    v20 = v1 & 0xC000000000000001;
    if (!KeyPath)
    {
      break;
    }

    if (!v20 && KeyPath > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

    v21 = 0;
    while (1)
    {
      if (v20)
      {
        v22 = MEMORY[0x23EEECB80](v21, v1);
      }

      else
      {
        v22 = *(v1 + 8 * v21 + 32);
      }

      swift_getKeyPath();
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6FC();

      v23 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
      swift_beginAccess();
      v24 = *(v22 + v23);

      v18 = __OFADD__(v5, v24);
      v5 += v24;
      if (v18)
      {
        break;
      }

      if (KeyPath == ++v21)
      {
        goto LABEL_40;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    result = sub_23D80E31C();
    if (KeyPath >= result)
    {
      goto LABEL_55;
    }
  }

LABEL_40:
  if (v20)
  {
LABEL_58:
    v25 = MEMORY[0x23EEECB80](KeyPath, v1);
    goto LABEL_43;
  }

  if (KeyPath < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v1 + 8 * KeyPath + 32);

LABEL_43:

    swift_getKeyPath();
    KeyPath = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6FC();

    v26 = v25 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
    swift_beginAccess();
    if (*(v26 + 16) == 1)
    {

      return v5;
    }

    v34 = *v26;
    swift_getKeyPath();
    sub_23D80D6FC();

    v27 = (v25 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
    swift_beginAccess();
    v32 = *v27;
    v33 = v27[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4390, &qword_23D811B50);
    sub_23D7CE9C0(&qword_27E2E4398, &qword_27E2E4390, &qword_23D811B50);
    sub_23D7904FC();
    v28 = sub_23D80E14C();
    v1 = v29;

    v18 = __OFADD__(v5, v28 + v1);
    v5 += v28 + v1;
    if (!v18)
    {
      return v5;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

BOOL static IndexPath.!= infix(_:_:)()
{
  v0 = sub_23D80D6DC();
  if (v0 != sub_23D80D6DC())
  {
    return 1;
  }

  v1 = sub_23D80D6DC();
  return v1 != sub_23D80D6DC();
}

double AXRBlockManager.currentSpeechTime.getter()
{
  v0 = sub_23D80D6CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v5 = AXRBlockManager.cumulativeCharacterCount(upTo:)();
  (*(v1 + 8))(v4, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v5 / (v7[1] * 5.0 / 60.0);
}

double _s23AccessibilityReaderData15AXRBlockManagerC15totalSpeechTimeSdvg_0()
{
  v0 = AXRBlockManager.totalCharacterCount.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v0 / (v2 * 5.0 / 60.0);
}

void AXRBlockManager.remainingSpeechTimeInMinutes.getter()
{
  v0 = AXRBlockManager.totalCharacterCount.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v1 = ceil((v0 / (v2 * 5.0 / 60.0) - AXRBlockManager.currentSpeechTime.getter()) / 60.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

Swift::Void __swiftcall AXRBlockManager.fastForward()()
{
  v0 = AXRBlockManager.currentSpeechTime.getter() + 10.0;

  AXRBlockManager.seek(to:)(v0);
}

Swift::Void __swiftcall AXRBlockManager.seek(to:)(Swift::Double to)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - v6;
  v8 = sub_23D80D6CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v57 = &v51 - v17;
  v18 = AXRBlockManager.totalCharacterCount.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v18 / (v60 * 5.0 / 60.0) >= to)
  {
    v19 = *&v1[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v22 = v19 / (v60 * 5.0 / 60.0);
    if (v22 >= to)
    {
      v22 = to;
    }

    if (v22 < 0.0)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v22;
    }

    v24 = floor(v23 / 7200.0);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        v21 = AXRBlockManager.totalVisibleChunks.getter();
        v25 = v21 - 1;
        if (!__OFSUB__(v21, 1))
        {
          if (v25 >= v24)
          {
            v25 = v24;
          }

          v26 = v25 & ~(v25 >> 63);
          swift_getKeyPath();
          swift_getKeyPath();
          v60 = *&v26;
          v61 = v26 + 1;
          v2 = v1;
          sub_23D80DA1C();
          sub_23D7BD6E0();
          swift_getKeyPath();
          KeyPath = swift_getKeyPath();
          sub_23D80DA0C();

          v27 = ceil(v23 * (v60 * 5.0 / 60.0));
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v27 > -9.22337204e18)
            {
              if (v27 < 9.22337204e18)
              {
                *&v28 = COERCE_DOUBLE(AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v27, 1));
                if (*&v28 == 0.0)
                {
                  return;
                }

                v29 = *&v28;
                swift_getKeyPath();
                v60 = v29;
                v30 = sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
                sub_23D80D6FC();

                v31 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
                swift_beginAccess();
                sub_23D790648(*&v29 + v31, v7, &qword_27E2E43F8, &qword_23D811650);
                if ((*(v9 + 48))(v7, 1, v8) == 1)
                {

                  sub_23D790730(v7, &qword_27E2E43F8, &qword_23D811650);
                  return;
                }

                v53 = v30;
                v54 = v29;
                v32 = v57;
                (*(v9 + 32))(v57, v7, v8);
                v52 = sub_23D80D6DC();
                v33 = sub_23D80D6DC();
                swift_getKeyPath();
                swift_getKeyPath();
                sub_23D80DA0C();

                v34 = sub_23D80D6DC();
                KeyPath = *(v9 + 8);
                KeyPath(v16, v8);
                v55 = v9 + 8;
                if (v33 != v34)
                {
                  goto LABEL_54;
                }

                v35 = sub_23D80D6DC();
                swift_getKeyPath();
                swift_getKeyPath();
                sub_23D80DA0C();

                v36 = sub_23D80D6DC();
                KeyPath(v16, v8);
                if (v35 != v36)
                {
LABEL_54:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_23D80DA0C();

                  v37 = AXRBlockManager.blockAtIndexPath(_:)();
                  KeyPath(v16, v8);
                  if (v37)
                  {
                    sub_23D7D8A48();
                  }
                }

                v38 = *(v9 + 16);
                v38(v16, v32, v8);
                swift_getKeyPath();
                swift_getKeyPath();
                v38(v13, v16, v8);
                v2 = v2;
                v9 = v57;
                sub_23D80DA1C();
                KeyPath(v16, v8);
                swift_getKeyPath();
                swift_getKeyPath();
                sub_23D80DA0C();

                sub_23D7C58E4();
                KeyPath(v16, v8);
                v39 = sub_23D80D6DC();
                v13 = AXRBlockManager.pageContentAtIndex(_:)(v39);
                v21 = sub_23D80D6DC();
                if ((v13 & 0xC000000000000001) == 0)
                {
                  if ((v21 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                  }

                  else if (v21 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v40 = *(v13 + 8 * v21 + 32);

                    goto LABEL_27;
                  }

                  __break(1u);
                  return;
                }

LABEL_49:
                v40 = MEMORY[0x23EEECB80](v21, v13);
LABEL_27:

                swift_getKeyPath();
                v59 = v40;
                sub_23D80D6FC();

                v41 = (v40 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
                swift_beginAccess();
                v42 = v52;
                if (v52 < 1)
                {
                  sub_23D7D8A48();
                  goto LABEL_38;
                }

                v44 = *v41;
                v43 = v41[1];

                if (sub_23D80DDBC() >= v42)
                {
                  v48 = sub_23D80DE5C();
                  v50 = v49;

                  if (v50)
                  {
                    goto LABEL_38;
                  }

                  v47 = v48;
                }

                else
                {

                  v45 = HIBYTE(v43) & 0xF;
                  if ((v43 & 0x2000000000000000) == 0)
                  {
                    v45 = v44;
                  }

                  v46 = 7;
                  if (((v43 >> 60) & ((v44 & 0x800000000000000) == 0)) != 0)
                  {
                    v46 = 11;
                  }

                  v47 = v46 | (v45 << 16);
                }

                sub_23D7D2E58(0xFuLL, v47, 0);
LABEL_38:
                swift_getKeyPath();
                swift_getKeyPath();
                v58 = 1;
                v2;
                sub_23D80DA1C();
                sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager);
                sub_23D80D9AC();
                sub_23D80D9BC();

                if (AXRBlockManager.isSpeaking()())
                {
                  AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v9, 0);

                  KeyPath(v9, v8);
                }

                else
                {
                  KeyPath(v9, v8);
                }

                return;
              }

LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_44;
  }
}

Swift::Void __swiftcall AXRBlockManager.rewind()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = AXRBlockManager.currentSpeechTime.getter();
  v6 = v5 + -10.0;
  if (v5 + -10.0 < 0.0)
  {
    v6 = 0.0;
  }

  if (v5 >= 10.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = sub_23D80DF8C();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_23D80DF6C();
  v9 = v0;
  v10 = sub_23D80DF5C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v9;
  *(v11 + 40) = v7;
  sub_23D7C2104(0, 0, v4, &unk_23D815210, v11);
}

uint64_t sub_23D7CB218(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a1;
  *(v5 + 72) = a5;
  v6 = sub_23D80DC7C();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v9 = sub_23D80DCAC();
  *(v5 + 112) = v9;
  v10 = *(v9 - 8);
  *(v5 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v12 = sub_23D80DCCC();
  *(v5 + 136) = v12;
  v13 = *(v12 - 8);
  *(v5 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  sub_23D80DF6C();
  *(v5 + 168) = sub_23D80DF5C();
  v16 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D7CB3D4, v16, v15);
}

uint64_t sub_23D7CB3D4()
{
  v1 = *(v0 + 21);
  v16 = *(v0 + 20);
  v3 = *(v0 + 18);
  v2 = *(v0 + 19);
  v4 = *(v0 + 17);
  v21 = *(v0 + 15);
  v22 = *(v0 + 14);
  v17 = *(v0 + 16);
  v18 = *(v0 + 13);
  v19 = *(v0 + 11);
  v20 = *(v0 + 12);
  v5 = v0[10];
  v6 = *(v0 + 9);

  AXRBlockManager.seek(to:)(v5);
  type metadata accessor for AXRBlockManager();
  sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager);
  sub_23D80D9AC();
  sub_23D80D9BC();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 176) = 0;
  v7 = v6;
  sub_23D80DA1C();
  sub_23D7936F0(0, &qword_27E2E45B8, 0x277D85C78);
  v8 = sub_23D80E0BC();
  sub_23D80DCBC();
  sub_23D80DCDC();
  v9 = *(v3 + 8);
  v9(v2, v4);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v0 + 6) = sub_23D7CE89C;
  *(v0 + 7) = v10;
  *(v0 + 2) = MEMORY[0x277D85DD0];
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_23D79FA1C;
  *(v0 + 5) = &block_descriptor_0;
  v11 = _Block_copy(v0 + 2);
  v12 = v7;
  sub_23D80DC9C();
  *(v0 + 8) = MEMORY[0x277D84F90];
  sub_23D7CE978(&qword_27E2E45C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45C8, &qword_23D811F70);
  sub_23D7CE9C0(&qword_27E2E45D0, &qword_27E2E45C8, &qword_23D811F70);
  sub_23D80E1DC();
  MEMORY[0x23EEEC9C0](v16, v17, v18, v11);
  _Block_release(v11);

  (*(v20 + 8))(v18, v19);
  (*(v21 + 8))(v17, v22);
  v9(v16, v4);
  v13 = *(v0 + 7);

  v14 = *(v0 + 1);

  return v14();
}

uint64_t sub_23D7CB778(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_23D80DA1C();
}

Swift::Void __swiftcall AXRBlockManager.startSpeakingFromCharacterIndex(_:)(Swift::Int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_23D80DF8C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23D80DF6C();
  v8 = v1;
  v9 = sub_23D80DF5C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;
  sub_23D7C2104(0, 0, v6, &unk_23D811B98, v10);
}

uint64_t sub_23D7CB918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = sub_23D80D6CC();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v9 = *(v8 + 64) + 15;
  v5[14] = swift_task_alloc();
  sub_23D80DF6C();
  v5[15] = sub_23D80DF5C();
  v11 = sub_23D80DF3C();
  v5[16] = v11;
  v5[17] = v10;

  return MEMORY[0x2822009F8](sub_23D7CBA44, v11, v10);
}

uint64_t sub_23D7CBA44()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  v3 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v3 && [v3 isSpeaking] && (v4 = *(v1 + v2), (*(v0 + 144) = v4) != 0))
  {
    v5 = *(MEMORY[0x277D701C8] + 4);
    v27 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
    v4;
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_23D7CBD60;

    return v27();
  }

  else
  {
    v8 = *(v0 + 120);

    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
    swift_beginAccess();
    *(v10 + v11) = 0;
    v12 = AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v9, 1);
    if (v12)
    {
      v13 = v12;
      v14 = *(v0 + 96);
      v15 = *(v0 + 104);
      v16 = *(v0 + 88);
      swift_getKeyPath();
      *(v0 + 64) = v13;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      sub_23D80D6FC();

      v17 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
      swift_beginAccess();
      sub_23D790648(v13 + v17, v16, &qword_27E2E43F8, &qword_23D811650);
      if ((*(v15 + 48))(v16, 1, v14) == 1)
      {
        v18 = *(v0 + 88);

        sub_23D790730(v18, &qword_27E2E43F8, &qword_23D811650);
      }

      else
      {
        v20 = *(v0 + 104);
        v19 = *(v0 + 112);
        v21 = *(v0 + 96);
        v22 = *(v0 + 72);
        (*(v20 + 32))(v19, *(v0 + 88), v21);
        AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v19, 0);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 160) = 1;
        v23 = v22;
        sub_23D80DA1C();

        (*(v20 + 8))(v19, v21);
      }
    }

    v24 = *(v0 + 112);
    v25 = *(v0 + 88);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_23D7CBD60()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_23D7CBEA0, v5, v4);
}

uint64_t sub_23D7CBEA0()
{
  v1 = *(v0 + 120);

  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
  swift_beginAccess();
  *(v3 + v4) = 0;
  v5 = AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v2, 1);
  if (v5)
  {
    v6 = v5;
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    swift_getKeyPath();
    *(v0 + 64) = v6;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6FC();

    v10 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
    swift_beginAccess();
    sub_23D790648(v6 + v10, v9, &qword_27E2E43F8, &qword_23D811650);
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      v11 = *(v0 + 88);

      sub_23D790730(v11, &qword_27E2E43F8, &qword_23D811650);
    }

    else
    {
      v13 = *(v0 + 104);
      v12 = *(v0 + 112);
      v14 = *(v0 + 96);
      v15 = *(v0 + 72);
      (*(v13 + 32))(v12, *(v0 + 88), v14);
      AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v12, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 160) = 1;
      v16 = v15;
      sub_23D80DA1C();

      (*(v13 + 8))(v12, v14);
    }
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 88);

  v19 = *(v0 + 8);

  return v19();
}

Swift::Int __swiftcall AXRBlockManager.showNextVisibleChunk()()
{
  if (AXRBlockManager.totalVisibleChunks.getter() < 1)
  {

    return sub_23D80D43C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (v16 < AXRBlockManager.totalVisibleChunks.getter())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (__OFADD__(v16, 1))
      {
        __break(1u);
      }

      else
      {
        v2 = AXRBlockManager.totalVisibleChunks.getter();
        if (v2 >= v16 + 1)
        {
          v3 = v16 + 1;
        }

        else
        {
          v3 = v2;
        }

        v4 = sub_23D7B78B0();
        v6 = v5;
        result = AXRBlockManager.totalCharacterCount.getter();
        if (result >= v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = result;
        }

        v8 = v7 - v4;
        if (!__OFSUB__(v7, v4))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          if (v3 >= v15)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v9 = v0;
            sub_23D80DA1C();
            sub_23D7BD6E0();
            result = sub_23D7B78B0();
            v11 = *&v9[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
            if (v11 >= v10)
            {
              v11 = v10;
            }

            v12 = __OFSUB__(v11, result);
            v13 = v11 - result;
            if (!v12)
            {
              v12 = __OFSUB__(v13, v8);
              v14 = v13 - v8;
              if (!v12)
              {
                return v14 & ~(v14 >> 63);
              }

              goto LABEL_26;
            }

LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    return sub_23D80D43C();
  }
}

Swift::Int __swiftcall AXRBlockManager.showPreviousVisibleChunk()()
{
  if (AXRBlockManager.totalVisibleChunks.getter() < 1)
  {

    return sub_23D80D43C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (v13 >= 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (__OFSUB__(v13, 1))
      {
        __break(1u);
      }

      else
      {
        v2 = sub_23D7B78B0();
        v4 = v3;
        result = AXRBlockManager.totalCharacterCount.getter();
        if (result >= v4)
        {
          v5 = v4;
        }

        else
        {
          v5 = result;
        }

        v6 = v5 - v2;
        if (!__OFSUB__(v5, v2))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          if (v14 >= ((v13 - 1) & ~((v13 - 1) >> 63)))
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v7 = v0;
            sub_23D80DA1C();
            sub_23D7BD6E0();
            result = sub_23D7B78B0();
            v9 = *&v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
            if (v9 >= v8)
            {
              v9 = v8;
            }

            v10 = __OFSUB__(v9, result);
            v11 = v9 - result;
            if (!v10)
            {
              v10 = __OFSUB__(v11, v6);
              v12 = v11 - v6;
              if (!v10)
              {
                return v12 & ~(v12 >> 63);
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            return result;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    return sub_23D80D43C();
  }
}

unint64_t sub_23D7CC51C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v0 = *(v6 + 16);
  if (!v0)
  {
    goto LABEL_12;
  }

  v1 = *(v6 + 8 * v0 + 24);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_12:

    return 0;
  }

  v2 = sub_23D80E31C();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_4:
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v5 = MEMORY[0x23EEECB80](result, v1);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v1 + 8 * result + 32);

LABEL_9:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D7CC64C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_23D7CC718(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_23D7D2424(v2, v3);
}

uint64_t sub_23D7CC758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

__n128 sub_23D7CC844@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u8[0] = v5;
  return result;
}

uint64_t sub_23D7CC948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  v6 = *(v4 + 4);
  *a2 = *v4;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_23D7CCA18(int *a1, uint64_t *a2)
{
  v2 = *(a1 + 4);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return sub_23D7D37C0(&v5);
}

uint64_t sub_23D7CCA58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  return sub_23D790648(v3 + v4, a2, &qword_27E2E43F8, &qword_23D811650);
}

uint64_t sub_23D7CCB30(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_23D790648(a1, &v10 - v6, &qword_27E2E43F8, &qword_23D811650);
  v8 = *a2;
  return sub_23D7D4AF8(v7);
}

uint64_t sub_23D7CCBDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_23D7CCCA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_23D7D6068(v2, v3);
}

uint64_t sub_23D7CCCF0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D7CCDE8;

  return v7(a1);
}

uint64_t sub_23D7CCDE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23D7CCEE0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_23D80E31C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_23D80E27C();
  *v1 = result;
  return result;
}

unint64_t sub_23D7CCF80(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_23D78FFF8(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_23D7CFEA8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t (*sub_23D7CD090(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EEECB80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_23D7CD110;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D7CD118(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23D80E31C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23D80E31C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23D7CE9C0(&qword_27E2E4A40, &qword_27E2E43C0, &qword_23D811E40);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C0, &qword_23D811E40);
            v9 = sub_23D7CD090(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AXRTextBlock();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23D7CD2C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_23D7D6068(v2, v3);
}

uint64_t sub_23D7CD3E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D7CD444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D7CD4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRArticle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7CD518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7A0C28;

  return sub_23D7C1DC4(a1, v4, v5, v6);
}

uint64_t sub_23D7CD5D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D7CECB0;

  return sub_23D7C2834(a1, v4, v5, v6, v7);
}

uint64_t sub_23D7CD698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7CECB0;

  return sub_23D7C6ADC(a1, v4, v5, v6);
}

void _s23AccessibilityReaderData15AXRBlockManagerC4nextyySbF_0()
{
  v0 = sub_23D80D6CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v5 = sub_23D80D6DC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v7 = *(v17 + 16);

  if (v5 >= v7)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v8 = sub_23D80D6DC();
  v6(v4, v0);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = AXRBlockManager.pageContentAtIndex(_:)(v5);
  if (v10 >> 62)
  {
LABEL_16:
    v11 = sub_23D80E31C();
    goto LABEL_5;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v9 < v11)
  {
    v12 = v5;
  }

  else
  {
    v12 = v5 + 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v13 = *(v17 + 16);

  if (v12 >= v13)
  {
    sub_23D7C6284();
  }

  else
  {
    if (v9 < v11)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23D80FAF0;
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    MEMORY[0x23EEEBFA0]();
    sub_23D7C58E4();
    AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v4, 1);
    v6(v4, v0);
  }
}

uint64_t sub_23D7CDA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7CECB0;

  return sub_23D7C4B80(a1, v4, v5, v6);
}

uint64_t sub_23D7CDB14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7CECB0;

  return sub_23D7C4EDC(a1, v4, v5, v6);
}

uint64_t sub_23D7CDBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7CECB0;

  return sub_23D7C53E4(a1, v4, v5, v6);
}

uint64_t sub_23D7CDC80(int *a1, uint64_t *a2)
{
  v2 = *(a1 + 4);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return sub_23D7D37C0(&v5);
}

unint64_t sub_23D7CDCF8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_23D790020(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_23D7D01BC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_23D7CDDD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_23D7D2424(v2, v3);
}

uint64_t type metadata accessor for AXRBlockManager()
{
  result = qword_27E2E49F8;
  if (!qword_27E2E49F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7CDE6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D7CECB0;

  return sub_23D7CB918(a1, v4, v5, v7, v6);
}

unint64_t sub_23D7CDF30()
{
  result = qword_27E2E49E8;
  if (!qword_27E2E49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E49E8);
  }

  return result;
}

unint64_t sub_23D7CDF88()
{
  result = qword_27E2E49F0;
  if (!qword_27E2E49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E49F0);
  }

  return result;
}

uint64_t sub_23D7CE01C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AXRBlockManager.totalCharacterCount.getter();
  *a2 = result;
  return result;
}

void *sub_23D7CE048(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_23D7CE16C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_23D7CE1C8(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return sub_23D7B9E80();
}

uint64_t getEnumTagSinglePayload for AXRSpeechState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}