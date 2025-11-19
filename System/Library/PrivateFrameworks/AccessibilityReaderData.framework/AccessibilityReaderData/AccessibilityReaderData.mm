void _axEventHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (a5)
  {
    v9 = [a5 handler];
    v9[2](v9, a3, a4);
  }

  else
  {
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _axEventHandler_cold_1(a3, v10);
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_23D78C9C4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x23EEEC070](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_23D78CA18(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x23EEEC080](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_23D78CAB8()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80E5AC();
  return sub_23D80E5CC();
}

uint64_t sub_23D78CB2C()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80E5AC();
  return sub_23D80E5CC();
}

void *sub_23D78CB70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23D78CB90(uint64_t a1, id *a2)
{
  result = sub_23D80DD5C();
  *a2 = 0;
  return result;
}

uint64_t sub_23D78CC08(uint64_t a1, id *a2)
{
  v3 = sub_23D80DD6C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23D78CC88@<X0>(uint64_t *a1@<X8>)
{
  sub_23D80DD7C();
  v2 = sub_23D80DD4C();

  *a1 = v2;
  return result;
}

uint64_t sub_23D78CCCC()
{
  v1 = *v0;
  v2 = sub_23D80DD7C();
  v3 = MEMORY[0x23EEEC780](v2);

  return v3;
}

uint64_t sub_23D78CD08()
{
  v1 = *v0;
  sub_23D80DD7C();
  sub_23D80DDAC();
}

uint64_t sub_23D78CD5C()
{
  v1 = *v0;
  sub_23D80DD7C();
  sub_23D80E58C();
  sub_23D80DDAC();
  v2 = sub_23D80E5CC();

  return v2;
}

_DWORD *sub_23D78CDE4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_23D78CE00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23D80DD7C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23D78CE2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23D80DD7C();
  v6 = v5;
  if (v4 == sub_23D80DD7C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23D80E4DC();
  }

  return v9 & 1;
}

double sub_23D78CEB4@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_23D78CEC0()
{
  v2 = *v0;
  sub_23D78D354(&qword_27E2E4348, type metadata accessor for Weight);
  sub_23D78D354(&qword_27E2E4350, type metadata accessor for Weight);
  sub_23D78D8AC();
  return sub_23D80E35C();
}

uint64_t sub_23D78CF88()
{
  sub_23D78D354(&qword_27E2E4370, type metadata accessor for AttributeName);
  sub_23D78D354(&qword_27E2E4378, type metadata accessor for AttributeName);

  return sub_23D80E35C();
}

uint64_t sub_23D78D048()
{
  sub_23D78D354(&qword_27E2E4338, type metadata accessor for FeatureKey);
  sub_23D78D354(&qword_27E2E4340, type metadata accessor for FeatureKey);

  return sub_23D80E35C();
}

uint64_t sub_23D78D104()
{
  sub_23D78D354(&qword_27E2E4360, type metadata accessor for TraitKey);
  sub_23D78D354(&qword_27E2E4368, type metadata accessor for TraitKey);

  return sub_23D80E35C();
}

uint64_t sub_23D78D1C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23D80DD4C();

  *a2 = v5;
  return result;
}

uint64_t sub_23D78D208()
{
  sub_23D78D354(&qword_27E2E42A0, type metadata accessor for Key);
  sub_23D78D354(&qword_27E2E42A8, type metadata accessor for Key);

  return sub_23D80E35C();
}

uint64_t sub_23D78D354(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23D78D490(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23D78D6DC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x23EEECED0](*&v1);
}

uint64_t sub_23D78D718(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

unint64_t sub_23D78D8AC()
{
  result = qword_27E2E4358;
  if (!qword_27E2E4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4358);
  }

  return result;
}

uint64_t static String.getLanguageAndRangeMapFor(substring:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE7DB0]);
  v1 = sub_23D80DD4C();
  v2 = [v0 initWithContent_];

  if (v2)
  {
    [v2 tagContent];
    v3 = [v2 tags];
    if (v3)
    {
      v4 = v3;
      sub_23D78DC18();
      sub_23D80DEDC();
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_23D78DC18()
{
  result = qword_27E2E4380;
  if (!qword_27E2E4380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E4380);
  }

  return result;
}

uint64_t String.readerTextBlocks(withPlaybackSpeed:pageIndex:preferredLanguage:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v9 = sub_23D80D4CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 4);
  v29 = a5;
  v30 = a6;
  sub_23D80D4BC();
  sub_23D7904FC();
  v16 = sub_23D80E16C();
  (*(v10 + 8))(v13, v9);
  v17 = *(v16 + 16);
  if (v17)
  {
    v29 = MEMORY[0x277D84F90];
    result = sub_23D80E2DC();
    v19 = 0;
    v20 = *(v16 + 16);
    v21 = (v16 + 40);
    while (v20 != v19)
    {
      if (v19 >= *(v16 + 16))
      {
        goto LABEL_10;
      }

      v22 = *(v21 - 1);
      v23 = *v21;

      v28 = v15;
      sub_23D78DE7C(v19, v22, v23, v25, v14 | (v15 << 32), v26, v27);

      sub_23D80E2BC();
      v24 = *(v29 + 16);
      sub_23D80E2EC();
      sub_23D80E2FC();
      result = sub_23D80E2CC();
      v21 += 2;
      if (v17 == ++v19)
      {

        return v29;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23D78DE7C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a7;
  v80 = a6;
  v71 = a5;
  v85 = a3;
  v84 = a2;
  v69 = 0;
  v83 = sub_23D80D67C();
  v88 = *(v83 - 8);
  v9 = v88;
  v10 = *(v88 + 64);
  v11 = MEMORY[0x28223BE20](v83);
  v82 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v75 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v74 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  v26 = sub_23D80D6CC();
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23EEEBFB0](a1, a4);
  v31 = v27[2];
  v76 = v30;
  v31(v25, v30, v26);
  v77 = v27;
  v73 = v27[7];
  v86 = v25;
  v73(v25, 0, 1, v26);
  v32 = sub_23D80D5BC();
  v72 = *(*(v32 - 8) + 56);
  v79 = v19;
  v72(v19, 1, 1, v32);
  sub_23D80D66C();
  v33 = type metadata accessor for AXRTextBlock();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v37 = v82;
  sub_23D80D66C();
  v38 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v66 = *(v9 + 32);
  v39 = v83;
  v66(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v37, v83);
  v40 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
  v41 = v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
  v42 = v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  *v42 = 4;
  *(v42 + 4) = 1;
  v67 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
  v43 = v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  *v43 = 0;
  *(v43 + 8) = 1;
  v68 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
  v70 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
  v78 = v26;
  v73((v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath), 1, 1, v26);
  v72((v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText), 1, 1, v32);
  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
  v72 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
  v44 = (v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  *v44 = 0;
  v44[1] = 0;
  sub_23D80D72C();
  v45 = v88;
  v46 = v82;
  (*(v88 + 16))(v82, v87, v39);
  v47 = *(v45 + 8);
  v88 = v45 + 8;
  v73 = v47;
  (v47)(v36 + v38, v39);
  v66(v36 + v38, v46, v39);
  v48 = (v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  v49 = v85;
  *v48 = v84;
  v48[1] = v49;

  *(v36 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
  swift_beginAccess();
  if (*(v36 + v40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v66 - 2) = v36;
    *(&v66 - 8) = 0;
    v93[3] = v36;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  else
  {
    *(v36 + v40) = 0;
  }

  swift_beginAccess();
  v51 = v79;
  if (*(v41 + 16) == 1)
  {
    *v41 = 0;
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
  }

  else
  {
    v52 = swift_getKeyPath();
    MEMORY[0x28223BE20](v52);
    *(&v66 - 3) = 0;
    *(&v66 - 2) = 0;
    *(&v66 - 4) = v36;
    *(&v66 - 8) = 1;
    v93[0] = v36;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  sub_23D7D339C(MEMORY[0x277D84F90]);
  LODWORD(v93[0]) = v71;
  BYTE4(v93[0]) = BYTE4(v71) & 1;
  sub_23D7D37C0(v93);
  v53 = v67;
  swift_beginAccess();
  if (*(v36 + v53))
  {
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54);
    *(&v66 - 2) = v36;
    *(&v66 - 8) = 0;
    v92 = v36;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  else
  {
    *(v36 + v53) = 0;
  }

  v55 = v68;
  sub_23D7D42EC(0, 0);
  swift_beginAccess();
  if (*(v36 + v55))
  {
    v56 = swift_getKeyPath();
    MEMORY[0x28223BE20](v56);
    *(&v66 - 2) = v36;
    *(&v66 - 8) = 0;
    v91 = v36;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  else
  {
    *(v36 + v55) = 0;
  }

  v57 = v70;
  swift_beginAccess();
  if (*(v36 + v57))
  {
    v58 = swift_getKeyPath();
    MEMORY[0x28223BE20](v58);
    *(&v66 - 2) = v36;
    *(&v66 - 8) = 0;
    v90 = v36;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  else
  {
    *(v36 + v57) = 0;
  }

  v59 = v74;
  sub_23D790648(v86, v74, &qword_27E2E43F8, &qword_23D811650);
  sub_23D7D4AF8(v59);
  v60 = v75;
  sub_23D790648(v51, v75, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D7D512C(v60);
  v61 = sub_23D7A1CF4(v84, v85);
  v62 = v72;
  swift_beginAccess();
  if (v61 == *(v62 + v36))
  {
    *(v62 + v36) = v61;
  }

  else
  {
    v63 = swift_getKeyPath();
    MEMORY[0x28223BE20](v63);
    *(&v66 - 2) = v36;
    *(&v66 - 8) = v61;
    v89 = v36;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  v64 = v81;

  sub_23D7D6068(v80, v64);
  (v73)(v87, v83);
  sub_23D790730(v51, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790730(v86, &qword_27E2E43F8, &qword_23D811650);
  (v77[1])(v76, v78);
  return v36;
}

uint64_t String.nsRangeFromRange(range:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4390, &qword_23D811B50);
  sub_23D790598();
  sub_23D7904FC();
  return sub_23D80E14C();
}

uint64_t String.isValidURL.getter(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA948]) initWithTypes:32 error:v15];
  if (v4)
  {
    v5 = v4;
    v6 = v15[0];
    v7 = sub_23D80DD4C();
    v8 = [v5 firstMatchInString:v7 options:0 range:{0, MEMORY[0x23EEEC760](a1, a2)}];

    if (v8)
    {
      [v8 range];
      v10 = v9;
      v11 = MEMORY[0x23EEEC760](a1, a2);

      result = v10 == v11;
    }

    else
    {

      result = 0;
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = v15[0];
    sub_23D80D5DC();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t NSAttributedString.components(separatedBy:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v7 = [v2 string];
  sub_23D80DD7C();

  sub_23D7904FC();
  v8 = sub_23D80E17C();

  v9 = MEMORY[0x23EEEC760](a1, a2);
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v9;
    v12 = 0;
    v13 = (v8 + 40);
    while (1)
    {
      v14 = *(v13 - 1);
      if ((*v13 & 0x1000000000000000) != 0)
      {
        v22 = *(v13 - 1);
        v23 = *v13;
        v16 = sub_23D80DE2C();
      }

      else
      {
        if ((*v13 & 0x2000000000000000) == 0)
        {
          v15 = *(v13 - 1);
        }

        v16 = sub_23D80DE3C();
      }

      v17 = v16;
      v18 = [v3 attributedSubstringFromRange_];
      MEMORY[0x23EEEC7D0]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23D80DF0C();
      }

      result = sub_23D80DF2C();
      v20 = v17 + v11;
      if (__OFADD__(v17, v11))
      {
        break;
      }

      v21 = __OFADD__(v12, v20);
      v12 += v20;
      if (v21)
      {
        goto LABEL_16;
      }

      v13 += 2;
      if (!--v10)
      {
        v6 = v25;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    return v6;
  }

  return result;
}

uint64_t NSAttributedString.readerTextBlocks(withPlaybackSpeed:pageIndex:preferredLanguage:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *a1;
  v5 = *(a1 + 4);
  v6 = NSAttributedString.components(separatedBy:)(10, 0xE100000000000000);
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = sub_23D80DD4C();
  v9 = [v7 initWithString_];

  v10 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      v22 = MEMORY[0x277D84F90];
      result = sub_23D80E2DC();
      if (v11 < 0)
      {
        break;
      }

      v18 = v9;
      if (v10)
      {
        v13 = sub_23D80E31C();
      }

      else
      {
        v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = 0;
      v10 = v6 & 0xC000000000000001;
      v9 = (v13 & ~(v13 >> 63));
      while (v9 != v14)
      {
        if (v10)
        {
          v15 = MEMORY[0x23EEECB80](v14, v6);
        }

        else
        {
          if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v15 = *(v6 + 8 * v14 + 32);
        }

        v16 = v15;
        sub_23D78EF88(v14, v15, a2, v19 | (v5 << 32), a3, a4);

        sub_23D80E2BC();
        v17 = *(v22 + 16);
        sub_23D80E2EC();
        sub_23D80E2FC();
        sub_23D80E2CC();
        if (v11 == ++v14)
        {

          return v22;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v11 = sub_23D80E31C();
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23D78EF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v91 = a5;
  v81 = a4;
  v79 = 0;
  v93 = sub_23D80D67C();
  v96 = *(v93 - 8);
  v9 = v96;
  v10 = *(v96 + 64);
  v11 = MEMORY[0x28223BE20](v93);
  v75 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v85 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v83 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - v24;
  v26 = sub_23D80D6CC();
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_23D80FAF0;
  *(v31 + 32) = a3;
  *(v31 + 40) = a1;
  MEMORY[0x23EEEBFA0]();
  v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v33 = [v32 string];
  v94 = sub_23D80DD7C();
  v74 = v34;

  v35 = v27[2];
  v86 = v30;
  v35(v25, v30, v26);
  v87 = v27;
  v82 = v27[7];
  v88 = v25;
  v82(v25, 0, 1, v26);
  v84 = v32;
  sub_23D80D5CC();
  v36 = sub_23D80D5BC();
  v37 = *(v36 - 8);
  v72 = *(v37 + 56);
  v80 = v37 + 56;
  v90 = v19;
  v72(v19, 0, 1, v36);
  sub_23D80D66C();
  v38 = type metadata accessor for AXRTextBlock();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = v75;
  sub_23D80D66C();
  v43 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v73 = *(v9 + 32);
  v44 = v42;
  v45 = v93;
  v73(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v42, v93);
  v46 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
  v47 = v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 16) = 1;
  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
  v48 = v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  *v48 = 4;
  *(v48 + 4) = 1;
  v76 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
  v49 = v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  *v49 = 0;
  *(v49 + 8) = 1;
  v77 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
  v78 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
  v89 = v26;
  v82((v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath), 1, 1, v26);
  v50 = v74;
  v72((v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText), 1, 1, v36);
  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
  v80 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
  v51 = (v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  *v51 = 0;
  v51[1] = 0;
  sub_23D80D72C();
  v52 = v96;
  (*(v96 + 16))(v44, v95, v45);
  v53 = *(v52 + 8);
  v96 = v52 + 8;
  v82 = v53;
  (v53)(v41 + v43, v45);
  v73(v41 + v43, v44, v45);
  v54 = (v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  *v54 = v94;
  v54[1] = v50;

  *(v41 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
  swift_beginAccess();
  if (*(v41 + v46))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v72 - 2) = v41;
    *(&v72 - 8) = 0;
    v101[3] = v41;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  else
  {
    *(v41 + v46) = 0;
  }

  swift_beginAccess();
  if (*(v47 + 16) == 1)
  {
    *v47 = 0;
    *(v47 + 8) = 0;
    *(v47 + 16) = 1;
  }

  else
  {
    v56 = swift_getKeyPath();
    MEMORY[0x28223BE20](v56);
    *(&v72 - 3) = 0;
    *(&v72 - 2) = 0;
    *(&v72 - 4) = v41;
    *(&v72 - 8) = 1;
    v101[0] = v41;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  sub_23D7D339C(MEMORY[0x277D84F90]);
  LODWORD(v101[0]) = v81;
  BYTE4(v101[0]) = BYTE4(v81) & 1;
  sub_23D7D37C0(v101);
  v57 = v76;
  swift_beginAccess();
  if (*(v41 + v57))
  {
    v58 = swift_getKeyPath();
    MEMORY[0x28223BE20](v58);
    *(&v72 - 2) = v41;
    *(&v72 - 8) = 0;
    v100 = v41;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  else
  {
    *(v41 + v57) = 0;
  }

  sub_23D7D42EC(0, 0);
  v59 = v77;
  swift_beginAccess();
  v60 = v88;
  if (*(v41 + v59))
  {
    v61 = swift_getKeyPath();
    MEMORY[0x28223BE20](v61);
    *(&v72 - 2) = v41;
    *(&v72 - 8) = 0;
    v99 = v41;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  else
  {
    *(v41 + v59) = 0;
  }

  v62 = v78;
  swift_beginAccess();
  if (*(v41 + v62))
  {
    v63 = swift_getKeyPath();
    MEMORY[0x28223BE20](v63);
    *(&v72 - 2) = v41;
    *(&v72 - 8) = 0;
    v98 = v41;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  else
  {
    *(v41 + v62) = 0;
  }

  v64 = v90;
  v65 = v80;
  v66 = v83;
  sub_23D790648(v60, v83, &qword_27E2E43F8, &qword_23D811650);
  sub_23D7D4AF8(v66);
  v67 = v85;
  sub_23D790648(v64, v85, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D7D512C(v67);
  v68 = sub_23D7A1CF4(v94, v50);

  swift_beginAccess();
  if (v68 == *(v41 + v65))
  {
    *(v41 + v65) = v68;
  }

  else
  {
    v69 = swift_getKeyPath();
    MEMORY[0x28223BE20](v69);
    *(&v72 - 2) = v41;
    *(&v72 - 8) = v68;
    v97 = v41;
    sub_23D7906D8();
    sub_23D80D6EC();
  }

  v70 = v92;

  sub_23D7D6068(v91, v70);

  (v82)(v95, v93);
  sub_23D790730(v64, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790730(v60, &qword_27E2E43F8, &qword_23D811650);
  (v87[1])(v86, v89);
  return v41;
}

char *sub_23D78FBA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4408, &qword_23D80FC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23D78FCB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43D8, &qword_23D80FB30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23D78FDC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43E0, &unk_23D8100D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_23D78FEC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43D0, &qword_23D8100E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23D790020(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43B8, &qword_23D80FB28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C0, &qword_23D811E40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23D790154(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_23D790280(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _sSS23AccessibilityReaderDataE25getLanguageAndRangeMapFor9substring04withE0SayAA013AXRTextLocalefG0VGSS_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4408, &qword_23D80FC30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23D80FB00;
  *(v9 + 32) = 15;
  *(v9 + 40) = v8;
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;

  return v9;
}

unint64_t sub_23D7904FC()
{
  result = qword_27E2E4388;
  if (!qword_27E2E4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4388);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23D790598()
{
  result = qword_27E2E4398;
  if (!qword_27E2E4398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4390, &qword_23D811B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4398);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23D790648(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_23D7906D8()
{
  result = qword_27E2E4400;
  if (!qword_27E2E4400)
  {
    type metadata accessor for AXRTextBlock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4400);
  }

  return result;
}

uint64_t sub_23D790730(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id static UIColor.whiteThemeBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.901960784 green:0.901960784 blue:0.901960784 alpha:1.0];
}

id static UIColor.sepiaThemeBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.878431373 green:0.847058824 blue:0.784313725 alpha:1.0];
}

id static UIColor.grayThemeBackgroundColor.getter()
{
  v0 = [objc_opt_self() darkGrayColor];

  return v0;
}

id static UIColor.nightThemeBackgroundColor.getter()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id static UIColor.buttonBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.11 green:0.11 blue:0.12 alpha:1.0];
}

id static UIColor.iOSButtonBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.21 green:0.21 blue:0.22 alpha:1.0];
}

id static UIColor.textFormatterSheetBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.22 green:0.22 blue:0.22 alpha:1.0];
}

id static UIColor.darkGrayThemeBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.24 green:0.23 blue:0.25 alpha:1.0];
}

id static UIColor.charcoalThemeBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.29 green:0.27 blue:0.24 alpha:1.0];
}

id static UIColor.backgroundColor.getter()
{
  v0 = [objc_opt_self() systemGray6Color];

  return v0;
}

id static UIColor.backgroundColorDimmed.getter()
{
  v0 = [objc_opt_self() systemGray5Color];

  return v0;
}

id static UIColor.pinkHighlightColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:1.0 green:0.690196078 blue:0.792156863 alpha:1.0];
}

id static UIColor.yellowHighlightColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:1.0 green:0.921568627 blue:0.419607843 alpha:1.0];
}

id static UIColor.greenHighlightColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.752941176 green:0.929411765 blue:0.447058824 alpha:1.0];
}

id static UIColor.purpleHighlightColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.850980392 green:0.698039216 blue:1.0 alpha:1.0];
}

id static UIColor.blueHighlightColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.678431373 green:0.847058824 blue:1.0 alpha:1.0];
}

BOOL UIColor.isLight.getter()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0.0;
  [v0 getWhite:v3 alpha:0];
  result = v3[0] > 0.5;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Color.init(hex:)(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v21[0] = sub_23D80DBBC();
  v4 = *(v21[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D80D4CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  sub_23D80D4AC();
  sub_23D7904FC();
  v13 = sub_23D80E1AC();
  v15 = v14;
  (*(v9 + 8))(v12, v8);

  v22 = v13;
  v23 = v15;
  v21[3] = 35;
  v21[4] = 0xE100000000000000;
  v21[1] = 0;
  v21[2] = 0xE000000000000000;
  sub_23D80E1BC();

  v22 = 0;
  v16 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v17 = sub_23D80DD4C();

  v18 = [v16 initWithString_];

  [v18 scanHexLongLong_];
  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v21[0]);
  result = sub_23D80DC4C();
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Color.iOSButtonBackgroundColorDark.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23D79146C(0x313343324332);
}

uint64_t static Color.iOSButtonBackgroundColorLight.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23D79146C(0x454333443344);
}

uint64_t static Color.warmGray.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23D79146C(0x313342333134);
}

uint64_t static Color.warmWhite.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23D79146C(0x384535463846);
}

uint64_t static Color.dark.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23D79146C(0x453243324332);
}

uint64_t static Color.charcoal.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23D79146C(0x303342333234);
}

uint64_t static Color.light.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23D79146C(0x344643464646);
}

uint64_t static Color.sepia.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23D79146C(0x394332453046);
}

uint64_t sub_23D79146C(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = sub_23D80DBBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D80D4CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = 0xE600000000000000;
  sub_23D80D4AC();
  sub_23D7904FC();
  v12 = sub_23D80E1AC();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v21 = v12;
  v22 = v14;
  v20[3] = 35;
  v20[4] = 0xE100000000000000;
  v20[1] = 0;
  v20[2] = 0xE000000000000000;
  sub_23D80E1BC();

  v21 = 0;
  v15 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v16 = sub_23D80DD4C();

  v17 = [v15 initWithString_];

  [v17 scanHexLongLong_];
  (*(v3 + 104))(v6, *MEMORY[0x277CE0EE0], v2);
  result = sub_23D80DC4C();
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::String __swiftcall Color.readerLocalizedName()()
{
  v1 = v0;
  v59 = *MEMORY[0x277D85DE8];
  v52 = sub_23D80DBBC();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D80D4CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D80DBFC();
  v11 = sub_23D80DBCC();

  if (v11)
  {
    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v12 = 0xEB00000000656D65;
    v13 = 0x68742E6B63616C62;
    if (qword_27E2E4610)
    {
LABEL_25:
      v40 = qword_27E2E4610;
      v41 = sub_23D80DD4C();
      v42 = sub_23D80DD4C();
      v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

      v13 = sub_23D80DD7C();
      v12 = v44;
    }
  }

  else
  {
    v57 = 0x453243324332;
    v58 = 0xE600000000000000;
    sub_23D80D4AC();
    sub_23D7904FC();
    v14 = sub_23D80E1AC();
    v16 = v15;
    v51 = *(v7 + 8);
    v51(v10, v6);
    v57 = v14;
    v58 = v16;
    v55 = 35;
    v56 = 0xE100000000000000;
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_23D80E1BC();

    v57 = 0;
    v17 = objc_allocWithZone(MEMORY[0x277CCAC80]);
    v18 = sub_23D80DD4C();

    v19 = [v17 initWithString_];

    [v19 scanHexLongLong_];
    v21 = v2 + 104;
    v20 = *(v2 + 104);
    v50 = *MEMORY[0x277CE0EE0];
    v20(v5);
    sub_23D80DC4C();
    v49[1] = v1;
    v22 = sub_23D80DBCC();

    if (v22)
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v12 = 0xEE00656D6568742ELL;
      v13 = 0x796172476B726164;
      if (qword_27E2E4610)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v57 = 0x313342333134;
      v58 = 0xE600000000000000;
      sub_23D80D4AC();
      v23 = sub_23D80E1AC();
      v25 = v24;
      v51(v10, v6);
      v57 = v23;
      v58 = v25;
      v55 = 35;
      v56 = 0xE100000000000000;
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_23D80E1BC();
      v26 = v20;
      v27 = v21;

      v57 = 0;
      v28 = objc_allocWithZone(MEMORY[0x277CCAC80]);
      v29 = sub_23D80DD4C();

      v30 = [v28 initWithString_];

      [v30 scanHexLongLong_];
      v49[0] = v27;
      (v26)(v5, v50, v52);
      v31 = v26;
      sub_23D80DC4C();
      LOBYTE(v30) = sub_23D80DBCC();

      if (v30)
      {
        if (qword_27E2E4228 != -1)
        {
          swift_once();
        }

        v12 = 0xEE00656D6568742ELL;
        v13 = 0x6C616F6372616863;
        if (qword_27E2E4610)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v57 = 0x384535463846;
        v58 = 0xE600000000000000;
        sub_23D80D4AC();
        v32 = sub_23D80E1AC();
        v34 = v33;
        v51(v10, v6);
        v57 = v32;
        v58 = v34;
        v55 = 35;
        v56 = 0xE100000000000000;
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_23D80E1BC();

        v57 = 0;
        v35 = objc_allocWithZone(MEMORY[0x277CCAC80]);
        v36 = sub_23D80DD4C();

        v37 = [v35 initWithString_];

        [v37 scanHexLongLong_];
        (v31)(v5, v50, v52);
        sub_23D80DC4C();
        v38 = sub_23D80DBCC();

        if (v38)
        {
          if (qword_27E2E4228 != -1)
          {
            swift_once();
          }

          v12 = 0xEB00000000656D65;
          v13 = 0x68742E6169706573;
          if (qword_27E2E4610)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_23D80DC1C();
          v39 = sub_23D80DBCC();

          if ((v39 & 1) == 0)
          {
            v13 = 0;
            v12 = 0xE000000000000000;
            goto LABEL_26;
          }

          if (qword_27E2E4228 != -1)
          {
            swift_once();
          }

          v12 = 0xEB00000000656D65;
          v13 = 0x68742E6574696877;
          if (qword_27E2E4610)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

LABEL_26:
  v45 = *MEMORY[0x277D85DE8];
  v46 = v13;
  v47 = v12;
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t Color.contrastColor.getter()
{
  v3[1] = *MEMORY[0x277D85DE8];
  sub_23D792CE4();

  v0 = sub_23D80E11C();
  v3[0] = 0.0;
  [v0 getWhite:v3 alpha:0];

  if (v3[0] <= 0.5)
  {
    result = sub_23D80DC1C();
  }

  else
  {
    result = sub_23D80DBFC();
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23D792294(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6E65657267;
  if (v2 != 1)
  {
    v4 = 1702194274;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6579570;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6E65657267;
  if (*a2 != 1)
  {
    v8 = 1702194274;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6579570;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D80E4DC();
  }

  return v11 & 1;
}

uint64_t sub_23D792378()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D792408()
{
  *v0;
  *v0;
  sub_23D80DDAC();
}

uint64_t sub_23D792484()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D792510@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23D7930E4();
  *a2 = result;
  return result;
}

void sub_23D792540(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E65657267;
  if (v2 != 1)
  {
    v5 = 1702194274;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6579570;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23D79258C()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_23D7925D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D7930E4();
  *a1 = result;
  return result;
}

uint64_t sub_23D792614(uint64_t a1)
{
  v2 = sub_23D792D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D792650(uint64_t a1)
{
  v2 = sub_23D792D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Color.init(from:)(uint64_t *a1)
{
  v3 = sub_23D80DBBC();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4418, &qword_23D80FCF8);
  v7 = *(v18 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v16 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D792D74();
  sub_23D80E5DC();
  if (!v1)
  {
    v16 = v6;
    v14 = v17;
    v13 = v18;
    v21 = 0;
    sub_23D80E3DC();
    v20 = 1;
    sub_23D80E3DC();
    v19 = 2;
    sub_23D80E3DC();
    (*(v14 + 104))(v16, *MEMORY[0x277CE0EE0], v3);
    v12 = sub_23D80DC4C();
    (*(v7 + 8))(v10, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void Color.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4428, &qword_23D80FD00);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  Color.colorComponents.getter(v15);
  if ((v16 & 1) == 0)
  {
    v9 = v15[1];
    v8 = v15[2];
    v10 = v15[0];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_23D792D74();
    sub_23D80E5EC();
    v14 = v10;
    v13 = 0;
    sub_23D792E14();
    sub_23D80E49C();
    if (!v1)
    {
      v14 = v9;
      v13 = 1;
      sub_23D80E49C();
      v14 = v8;
      v13 = 2;
      sub_23D80E49C();
    }

    (*(v4 + 8))(v7, v3);
  }
}

void Color.colorComponents.getter(uint64_t a1@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12[0] = 0;
  v9 = 0;
  v10 = 0;
  sub_23D792CE4();

  v2 = sub_23D80E11C();
  v3 = [v2 getRed:v12 green:&v11 blue:&v10 alpha:&v9];

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v3)
  {
    v5 = v11;
    v4 = v12[0];
    v7 = v9;
    v6 = v10;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3 ^ 1;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23D792BF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Color.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL Color.compareColorComponents(_:)()
{
  Color.colorComponents.getter(v3);
  v0 = v3[1];
  v1 = v3[2];
  Color.colorComponents.getter(v5);
  if (v4 & 1) != 0 || (v6)
  {
    return 0;
  }

  result = 0;
  if (vabdd_f64(v3[0], v5[0]) < 0.0000001 && vabdd_f64(v1, v5[2]) < 0.0000001)
  {
    return vabdd_f64(v0, v5[1]) < 0.0000001;
  }

  return result;
}

unint64_t sub_23D792CE4()
{
  result = qword_27E2E4410;
  if (!qword_27E2E4410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E4410);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23D792D74()
{
  result = qword_27E2E4420;
  if (!qword_27E2E4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4420);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_23D792E14()
{
  result = qword_27E2E4430;
  if (!qword_27E2E4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4430);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D792FE0()
{
  result = qword_27E2E4438;
  if (!qword_27E2E4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4438);
  }

  return result;
}

unint64_t sub_23D793038()
{
  result = qword_27E2E4440;
  if (!qword_27E2E4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4440);
  }

  return result;
}

unint64_t sub_23D793090()
{
  result = qword_27E2E4448;
  if (!qword_27E2E4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4448);
  }

  return result;
}

uint64_t sub_23D7930E4()
{
  v0 = sub_23D80E36C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t static Color.darkGray.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return static Color.dark.getter();
}

uint64_t VNDocumentObservation.text.getter()
{
  v1 = [v0 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  sub_23D7936F0(0, &qword_27E2E4450, 0x277CE2D70);
  v2 = sub_23D80DEEC();

  v3 = sub_23D793420(v2);

  v14 = v3;
  if (!v3)
  {
    return 0;
  }

  v13 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23D80E31C())
  {
    v5 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EEECB80](v5, v14);
      }

      else
      {
        if (v5 >= *(v13 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v14 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 getTranscript];
      if (v10)
      {
        v11 = v10;
        sub_23D80DD7C();

        v9 = v5 + 1;
        sub_23D80DE7C();
        sub_23D80DDDC();
      }

      v15 = sub_23D80DE7C();
      sub_23D80DDDC();

      v6 = v15;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v6 = 0;
LABEL_18:

  return v6;
}

uint64_t sub_23D793420(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_23D80E2DC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23D80E31C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EEECB80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_23D80E2BC();
      v8 = *(v10 + 16);
      sub_23D80E2EC();
      sub_23D80E2FC();
      sub_23D80E2CC();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_23D80E31C();
    sub_23D80E2DC();
  }

  return v10;
}

uint64_t sub_23D793588(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23D80E2DC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23D793694(i, v6);
    sub_23D7936F0(0, &qword_27E2E4458, 0x277CE6BA0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23D80E2BC();
    v4 = *(v7 + 16);
    sub_23D80E2EC();
    sub_23D80E2FC();
    sub_23D80E2CC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_23D793694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D7936F0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void UIImage.averageColor.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithImage_];
  if (v1)
  {
    v2 = v1;
    [v1 extent];
    v7 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGRect_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4460, &qword_23D80FEB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23D80FAF0;
    v9 = *MEMORY[0x277CBFAF0];
    *(inited + 32) = sub_23D80DD7C();
    *(inited + 40) = v10;
    *(inited + 72) = sub_23D7936F0(0, &qword_27E2E4468, 0x277CBF758);
    *(inited + 48) = v2;
    v11 = *MEMORY[0x277CBFAE8];
    *(inited + 80) = sub_23D80DD7C();
    *(inited + 88) = v12;
    *(inited + 120) = sub_23D7936F0(0, &qword_27E2E4470, 0x277CBF788);
    *(inited + 96) = v7;
    v13 = v7;
    v14 = v2;
    sub_23D793ACC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4478, &qword_23D80FEC0);
    swift_arrayDestroy();
    v15 = sub_23D80DD4C();
    v16 = sub_23D80DCEC();

    v17 = [objc_opt_self() filterWithName:v15 withInputParameters:v16];

    if (v17)
    {
      v18 = [v17 outputImage];
      if (v18)
      {
        v19 = v18;
        v20 = sub_23D80DF1C();
        *(v20 + 16) = 4;
        *(v20 + 32) = 0;
        v21 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
        v22 = *MEMORY[0x277CBF9C8];
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        [v21 render:v19 toBitmap:v20 + 32 rowBytes:8 bounds:v22 format:DeviceRGB colorSpace:{0.0, 0.0, 1.0, 1.0}];

        v25 = *(v20 + 16);
        if (v25)
        {
          if (v25 != 1)
          {
            if (v25 >= 3)
            {
              LOBYTE(v24) = *(v20 + 32);
              *&v26 = v24;
              v27 = *&v26 / 255.0;
              LOBYTE(v26) = *(v20 + 33);
              *&v28 = v26;
              v29 = *&v28 / 255.0;
              LOBYTE(v28) = *(v20 + 34);
              [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v27 green:v29 blue:v28 / 255.0 alpha:1.0];

              return;
            }

            goto LABEL_13;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }
    }
  }
}

unint64_t sub_23D793ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44C8, &qword_23D80FF08);
    v3 = sub_23D80E34C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D790648(v4, &v13, &qword_27E2E4478, &qword_23D80FEC0);
      v5 = v13;
      v6 = v14;
      result = sub_23D7AC5A4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23D794258(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D793BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44C0, &qword_23D80FF00);
    v3 = sub_23D80E34C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23D7AF83C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D793CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4490, &qword_23D80FED8);
    v3 = sub_23D80E34C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D790648(v4, &v11, &qword_27E2E4498, &qword_23D80FEE0);
      v5 = v11;
      result = sub_23D7AF83C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23D794258(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D793E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44B8, &qword_23D80FEF8);
    v3 = sub_23D80E34C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_23D7AC71C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D793F04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44A8, &unk_23D810C00);
    v3 = sub_23D80E34C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D790648(v4, v13, &qword_27E2E44B0, &qword_23D80FEF0);
      result = sub_23D7AC760(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23D794258(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D794040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44A0, &qword_23D80FEE8);
    v3 = sub_23D80E34C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23D7AF83C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D794130(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4480, &qword_23D80FED0);
    v3 = sub_23D80E34C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D790648(v4, &v11, &qword_27E2E4488, &qword_23D814C70);
      v5 = v11;
      result = sub_23D7AF83C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23D794258(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_23D794258(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t AXRFont.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AXRFont.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *static AXRFont.availableReaderFonts.getter()
{
  v0 = [objc_opt_self() familyNames];
  v1 = sub_23D80DEEC();

  v30[0] = v1;
  isUniquelyReferenced_nonNull_native = sub_23D7951D4(&unk_284FCDF18);
  v3 = v1;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = v1 + 40;
    v27 = v4 - 1;
    v28 = v1 + 40;
    do
    {
      v29 = v5;
      v8 = (v7 + 16 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v10 = *(v8 - 1);
        v11 = *v8;
        v6 = v9 + 1;
        v30[0] = v10;
        v30[1] = v11;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v26[2] = v30;

        if ((sub_23D795034(sub_23D797A34, v26, &unk_284FCDA38) & 1) == 0)
        {
          break;
        }

        v8 += 2;
        ++v9;
        if (v4 == v6)
        {
          v5 = v29;
          goto LABEL_13;
        }
      }

      v12 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_23D7953D8(0, *(v12 + 16) + 1, 1);
        v12 = v31;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_23D7953D8((v13 > 1), v14 + 1, 1);
        v12 = v31;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      v7 = v28;
      v5 = v12;
    }

    while (v27 != v9);
  }

LABEL_13:
  swift_arrayDestroy();

  v16 = *(v5 + 16);
  if (v16)
  {
    v30[0] = MEMORY[0x277D84F90];
    sub_23D7953B8(0, v16, 0);
    v17 = v30[0];
    v18 = (v5 + 40);
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v30[0] = v17;
      v21 = *(v17 + 2);
      v22 = *(v17 + 3);

      if (v21 >= v22 >> 1)
      {
        sub_23D7953B8((v22 > 1), v21 + 1, 1);
        v17 = v30[0];
      }

      *(v17 + 2) = v21 + 1;
      v23 = &v17[16 * v21];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v18 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v30[0] = v17;

  sub_23D795AA4(v30);

  v24 = v30[0];
  v30[0] = &unk_284FCDF48;
  sub_23D7950E0(v24);
  return v30[0];
}

uint64_t AXRFont.label.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *v0 == 0x6D6574737953 && v2 == 0xE600000000000000;
  if (v3 || (v4 = *v0, v5 = v0[1], (sub_23D80E4DC() & 1) != 0))
  {
    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v6 = 0x747379732E727861;
    if (qword_27E2E4610)
    {
      v7 = qword_27E2E4610;
      v8 = sub_23D80DD4C();
      v9 = sub_23D80DD4C();
      v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

      v6 = sub_23D80DD7C();
    }
  }

  else
  {
    v6 = 0x6B726F592077654ELL;
    v11 = v1 == 0x6B726F592077654ELL && v2 == 0xE800000000000000;
    if (!v11 && (sub_23D80E4DC() & 1) == 0)
    {

      return v1;
    }
  }

  return v6;
}

uint64_t static AXRFont.defaultLabelFontPointSize.setter(double a1)
{
  result = swift_beginAccess();
  qword_27E2E44D0 = *&a1;
  return result;
}

uint64_t AXRFont.boldName.getter()
{
  v2 = *v0;
  v3 = v0[1];

  MEMORY[0x23EEEC700](0x646C6F4220, 0xE500000000000000);
  return v2;
}

uint64_t AXRFont.scaledFont(_:textStyle:)(uint64_t a1, double a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v7 scaledValueForValue_];
  v9 = v8;

  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  if (v6 == 0x6D6574737953 && v5 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
  {
    v11 = [objc_opt_self() fontWithDescriptor:v10 size:v9];
LABEL_5:
    v12 = v11;
    sub_23D80DB8C();
    sub_23D80DB5C();
    v13 = sub_23D80DB6C();

    return v13;
  }

  if (v6 == 0x6B726F592077654ELL && v5 == 0xE800000000000000 || (sub_23D80E4DC() & 1) != 0)
  {
    v15 = [v10 fontDescriptorWithDesign_];
    v16 = objc_opt_self();
    if (!v15)
    {
      v11 = [v16 fontWithDescriptor:v10 size:v9];
      goto LABEL_5;
    }

    v17 = [v16 fontWithDescriptor:v15 size:v9];
    sub_23D80DB8C();
    sub_23D80DB5C();
    v18 = sub_23D80DB6C();

    return v18;
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D74300]) init];
    v20 = sub_23D80DD4C();
    v21 = [objc_opt_self() fontWithName:v20 size:a2];

    if (v21)
    {
      v22 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
      [v22 scaledFontForFont_];
    }

    v23 = sub_23D80DB8C();

    return v23;
  }
}

void *sub_23D794BD8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23D794BE4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23D794BF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D80E58C();
  sub_23D80DDAC();
  return sub_23D80E5CC();
}

uint64_t sub_23D794C3C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23D80DDAC();
}

uint64_t sub_23D794C44()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D80E58C();
  sub_23D80DDAC();
  return sub_23D80E5CC();
}

uint64_t sub_23D794D3C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23D80E4DC();
  }
}

uint64_t static Font.alternativeFont(textStyle:weight:dynamicTypeSize:)(NSString *a1, double a2)
{
  sub_23D797A8C(a1, a2);

  return sub_23D80DB8C();
}

id Font.TextStyle.uiFontTextStyle.getter()
{
  v1 = v0;
  v2 = sub_23D80DB7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CE0A50])
  {
    v8 = MEMORY[0x277D769A8];
  }

  else if (v7 == *MEMORY[0x277CE0A70])
  {
    v8 = MEMORY[0x277D76A08];
  }

  else if (v7 == *MEMORY[0x277CE0A80])
  {
    v8 = MEMORY[0x277D76A20];
  }

  else if (v7 == *MEMORY[0x277CE0A90])
  {
    v8 = MEMORY[0x277D76A28];
  }

  else if (v7 == *MEMORY[0x277CE0AC0])
  {
    v8 = MEMORY[0x277D76988];
  }

  else if (v7 == *MEMORY[0x277CE0A58])
  {
    v8 = MEMORY[0x277D769D0];
  }

  else if (v7 == *MEMORY[0x277CE0A68])
  {
    v8 = MEMORY[0x277D76918];
  }

  else if (v7 == *MEMORY[0x277CE0A98])
  {
    v8 = MEMORY[0x277D76920];
  }

  else if (v7 == *MEMORY[0x277CE0AB0])
  {
    v8 = MEMORY[0x277D76968];
  }

  else if (v7 == *MEMORY[0x277CE0AA0])
  {
    v8 = MEMORY[0x277D76938];
  }

  else
  {
    if (v7 != *MEMORY[0x277CE0AA8])
    {
      v11 = *(v3 + 8);
      v12 = *MEMORY[0x277D76918];
      v11(v6, v2);
      return v12;
    }

    v8 = MEMORY[0x277D76940];
  }

  v9 = *v8;

  return v9;
}

uint64_t sub_23D795034(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_23D7950E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23D78FCB4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23D7951D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23D78FEC4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23D7952C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23D80E31C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_23D80E31C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_23D7CCEE0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23D7CD118(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_23D7953B8(char *a1, int64_t a2, char a3)
{
  result = sub_23D795478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D7953D8(char *a1, int64_t a2, char a3)
{
  result = sub_23D795584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D7953F8(char *a1, int64_t a2, char a3)
{
  result = sub_23D795690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D795418(char *a1, int64_t a2, char a3)
{
  result = sub_23D795794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D795438(char *a1, int64_t a2, char a3)
{
  result = sub_23D795898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D795458(char *a1, int64_t a2, char a3)
{
  result = sub_23D7959A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D795478(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43D8, &qword_23D80FB30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23D795584(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43D0, &qword_23D8100E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23D795690(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44F8, &qword_23D810098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_23D795794(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_23D795898(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4408, &qword_23D80FC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23D7959A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44F0, &unk_23D810080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_23D795AA4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23D797A20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23D795B10(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23D795B10(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23D80E4AC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23D80DF1C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23D7960FC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23D795C08(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23D795C08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = (*a4 + 16 * a3);
    v5 = result - a3;
LABEL_5:
    v25 = a3;
    v6 = (v26 + 16 * a3);
    v8 = *v6;
    v7 = v6[1];
    v27 = v5;
    v24 = v4;
    while (1)
    {
      v9 = *(v4 - 2);
      v11 = *(v4 - 1);
      v10 = v4 - 2;
      if (v8 == 0x6D6574737953 && v7 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
      {
        v12 = qword_27E2E4228;

        if (v12 != -1)
        {
          swift_once();
        }

        if (qword_27E2E4610)
        {
          v13 = qword_27E2E4610;
          v14 = sub_23D80DD4C();
          v15 = sub_23D80DD4C();
          v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

          v10 = v4 - 2;
          sub_23D80DD7C();
        }
      }

      else if (v8 == 0x6B726F592077654ELL && v7 == 0xE800000000000000 || (sub_23D80E4DC() & 1) != 0)
      {
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      if (v9 == 0x6D6574737953 && v11 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
      {
        if (qword_27E2E4228 != -1)
        {
          swift_once();
        }

        if (qword_27E2E4610)
        {
          v17 = qword_27E2E4610;
          v18 = sub_23D80DD4C();
          v19 = sub_23D80DD4C();
          v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

          sub_23D80DD7C();
        }
      }

      else if ((v9 != 0x6B726F592077654ELL || v11 != 0xE800000000000000) && (sub_23D80E4DC() & 1) == 0)
      {
      }

      sub_23D7904FC();
      v21 = sub_23D80E19C();

      if (v21 != -1)
      {
LABEL_4:
        a3 = v25 + 1;
        v4 = v24 + 2;
        --v5;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v8 = *v4;
      v7 = v4[1];
      *v4 = *v10;
      *(v4 - 1) = v7;
      *(v4 - 2) = v8;
      v4 -= 2;
      if (__CFADD__(v27++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23D7960FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v123 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8;
      v127 = v9;
      if (v8 + 1 >= v7)
      {
        v18 = v8 + 1;
      }

      else
      {
        v128 = v7;
        v121 = v5;
        v11 = (*v6 + 16 * (v8 + 1));
        v130 = 16 * v8;
        v12 = (*v6 + 16 * v8);
        v14 = *v12;
        v13 = v12[1];
        v134 = *v11;
        v135 = v11[1];

        AXRFont.label.getter();
        AXRFont.label.getter();
        sub_23D7904FC();
        v132 = sub_23D80E19C();

        v119 = v8;
        v15 = v8 + 2;
        v16 = v12 + 5;
        while (1)
        {
          v18 = v128;
          if (v128 == v15)
          {
            break;
          }

          v19 = *(v16 - 1);
          v20 = *v16;
          v21 = *(v16 - 3);
          v22 = *(v16 - 2);
          v23 = v19 == 0x6D6574737953 && v20 == 0xE600000000000000;
          if (v23 || (v24 = *(v16 - 1), v25 = *v16, (sub_23D80E4DC() & 1) != 0))
          {
            v26 = qword_27E2E4228;

            if (v26 != -1)
            {
              swift_once();
            }

            if (qword_27E2E4610)
            {
              v27 = qword_27E2E4610;
              v28 = sub_23D80DD4C();
              v29 = sub_23D80DD4C();
              v30 = v21;
              v31 = v22;
              v32 = [v27 localizedStringForKey:v28 value:0 table:v29];

              sub_23D80DD7C();
              v22 = v31;
              v21 = v30;
            }
          }

          else if (v19 == 0x6B726F592077654ELL && v20 == 0xE800000000000000 || (sub_23D80E4DC() & 1) != 0)
          {
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          if (v21 == 0x6D6574737953 && v22 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
          {
            if (qword_27E2E4228 != -1)
            {
              swift_once();
            }

            if (qword_27E2E4610)
            {
              v33 = qword_27E2E4610;
              v34 = sub_23D80DD4C();
              v35 = sub_23D80DD4C();
              v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

              sub_23D80DD7C();
            }
          }

          else if ((v21 != 0x6B726F592077654ELL || v22 != 0xE800000000000000) && (sub_23D80E4DC() & 1) == 0)
          {
          }

          v17 = sub_23D80E19C();

          ++v15;
          v16 += 2;
          v9 = v127;
          if ((v132 == -1) == (v17 != -1))
          {
            v18 = v15 - 1;
            break;
          }
        }

        v10 = v119;
        v5 = v121;
        v6 = a3;
        v37 = v130;
        if (v132 == -1)
        {
          if (v18 < v119)
          {
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            return result;
          }

          if (v119 < v18)
          {
            v38 = 0;
            v39 = 16 * v18;
            v40 = v119;
            do
            {
              if (v40 != (v18 + v38 - 1))
              {
                v45 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v41 = (v45 + v37);
                v42 = v45 + v39;
                v43 = *v41;
                v44 = v41[1];
                *v41 = *(v42 - 16);
                *(v42 - 16) = v43;
                *(v42 - 8) = v44;
              }

              ++v40;
              --v38;
              v39 -= 16;
              v37 += 16;
            }

            while (v40 < v18 + v38);
          }
        }
      }

      v46 = v6[1];
      if (v18 >= v46)
      {
        goto LABEL_54;
      }

      if (__OFSUB__(v18, v10))
      {
        goto LABEL_168;
      }

      if (v18 - v10 >= a4)
      {
        goto LABEL_54;
      }

      if (__OFADD__(v10, a4))
      {
        goto LABEL_169;
      }

      if (&v10[a4] >= v46)
      {
        v47 = v6[1];
      }

      else
      {
        v47 = &v10[a4];
      }

      if (v47 < v10)
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      if (v18 == v47)
      {
LABEL_54:
        v8 = v18;
        if (v18 < v10)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v120 = v10;
        v122 = v5;
        v131 = *v6;
        v94 = (*v6 + 16 * v18);
        v95 = &v10[-v18];
        v124 = v47;
        do
        {
          v129 = v18;
          v96 = (v131 + 16 * v18);
          v98 = *v96;
          v97 = v96[1];
          v125 = v95;
          v126 = v94;
          do
          {
            v99 = *(v94 - 1);
            v100 = v94 - 2;
            v133 = *(v94 - 2);
            if (v98 == 0x6D6574737953 && v97 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
            {
              v101 = qword_27E2E4228;

              if (v101 != -1)
              {
                swift_once();
              }

              if (qword_27E2E4610)
              {
                v102 = qword_27E2E4610;
                v103 = sub_23D80DD4C();
                v104 = sub_23D80DD4C();
                v105 = [v102 localizedStringForKey:v103 value:0 table:v104];

                v100 = v94 - 2;
                sub_23D80DD7C();
              }
            }

            else if (v98 == 0x6B726F592077654ELL && v97 == 0xE800000000000000 || (sub_23D80E4DC() & 1) != 0)
            {
            }

            else
            {
              swift_bridgeObjectRetain_n();
            }

            if (v133 == 0x6D6574737953 && v99 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
            {
              if (qword_27E2E4228 != -1)
              {
                swift_once();
              }

              if (qword_27E2E4610)
              {
                v106 = qword_27E2E4610;
                v107 = sub_23D80DD4C();
                v108 = v100;
                v109 = sub_23D80DD4C();
                v110 = [v106 localizedStringForKey:v107 value:0 table:v109];

                v100 = v108;
                sub_23D80DD7C();
              }
            }

            else if ((v133 != 0x6B726F592077654ELL || v99 != 0xE800000000000000) && (sub_23D80E4DC() & 1) == 0)
            {
            }

            sub_23D7904FC();
            v111 = sub_23D80E19C();

            if (v111 != -1)
            {
              break;
            }

            if (!v131)
            {
              goto LABEL_173;
            }

            v98 = *v94;
            v97 = v94[1];
            *v94 = *v100;
            *(v94 - 1) = v97;
            *(v94 - 2) = v98;
            v94 -= 2;
          }

          while (!__CFADD__(v95++, 1));
          v18 = v129 + 1;
          v94 = v126 + 2;
          v95 = v125 - 1;
          v8 = v124;
        }

        while ((v129 + 1) != v124);
        v10 = v120;
        v5 = v122;
        v6 = a3;
        v9 = v127;
        if (v124 < v120)
        {
          goto LABEL_167;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23D78FDC0(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v49 = *(v9 + 2);
      v48 = *(v9 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        result = sub_23D78FDC0((v48 > 1), v49 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v50;
      v51 = &v9[16 * v49];
      *(v51 + 4) = v10;
      *(v51 + 5) = v8;
      v10 = *v123;
      if (!*v123)
      {
        goto LABEL_177;
      }

      if (v49)
      {
        while (1)
        {
          v52 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v53 = *(v9 + 4);
            v54 = *(v9 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_74:
            if (v56)
            {
              goto LABEL_156;
            }

            v69 = &v9[16 * v50];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_159;
            }

            v75 = &v9[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_163;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v50 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v79 = &v9[16 * v50];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_88:
          if (v74)
          {
            goto LABEL_158;
          }

          v82 = &v9[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_161;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_95:
          v90 = v52 - 1;
          if (v52 - 1 >= v50)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          if (!*v6)
          {
            goto LABEL_174;
          }

          v91 = *&v9[16 * v90 + 32];
          v92 = *&v9[16 * v52 + 40];
          sub_23D796F70((*v6 + 16 * v91), (*v6 + 16 * *&v9[16 * v52 + 32]), (*v6 + 16 * v92), v10);
          if (v5)
          {
          }

          if (v92 < v91)
          {
            goto LABEL_152;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23D797A0C(v9);
          }

          if (v90 >= *(v9 + 2))
          {
            goto LABEL_153;
          }

          v93 = &v9[16 * v90];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          result = sub_23D797980(v52);
          v50 = *(v9 + 2);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v9[16 * v50 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_154;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_155;
        }

        v64 = &v9[16 * v50];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_157;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_160;
        }

        if (v68 >= v60)
        {
          v86 = &v9[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_164;
          }

          if (v55 < v89)
          {
            v52 = v50 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

LABEL_3:
      v7 = v6[1];
      if (v8 >= v7)
      {
        goto LABEL_140;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_140:
  v10 = *v123;
  if (!*v123)
  {
    goto LABEL_178;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_171:
    result = sub_23D797A0C(v9);
    v9 = result;
  }

  v113 = *(v9 + 2);
  if (v113 >= 2)
  {
    while (*v6)
    {
      v114 = *&v9[16 * v113];
      v115 = *&v9[16 * v113 + 24];
      sub_23D796F70((*v6 + 16 * v114), (*v6 + 16 * *&v9[16 * v113 + 16]), (*v6 + 16 * v115), v10);
      if (v5)
      {
      }

      if (v115 < v114)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_23D797A0C(v9);
      }

      if (v113 - 2 >= *(v9 + 2))
      {
        goto LABEL_166;
      }

      v116 = &v9[16 * v113];
      *v116 = v114;
      *(v116 + 1) = v115;
      result = sub_23D797980(v113 - 1);
      v113 = *(v9 + 2);
      if (v113 <= 1)
      {
      }
    }

    goto LABEL_175;
  }
}

uint64_t sub_23D796F70(char *__src, char *__dst, _OWORD *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v63 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v60 = v4;
      v56 = v7;
LABEL_55:
      v57 = v6 - 16;
      --v5;
      v36 = v63;
      v62 = v6;
      do
      {
        v37 = *(v36 - 2);
        v38 = *(v36 - 1);
        v36 -= 16;
        v39 = *(v6 - 2);
        v40 = *(v6 - 1);
        v41 = v37 == 0x6D6574737953 && v38 == 0xE600000000000000;
        if (v41 || (sub_23D80E4DC() & 1) != 0)
        {
          v42 = qword_27E2E4228;

          if (v42 != -1)
          {
            swift_once();
          }

          if (qword_27E2E4610)
          {
            v59 = v39;
            v43 = qword_27E2E4610;
            v44 = sub_23D80DD4C();
            v45 = sub_23D80DD4C();
            v46 = v5;
            v47 = [v43 localizedStringForKey:v44 value:0 table:v45];

            sub_23D80DD7C();
            v39 = v59;

            v5 = v46;
          }
        }

        else
        {
          v48 = v37 == 0x6B726F592077654ELL && v38 == 0xE800000000000000;
          if (v48 || (sub_23D80E4DC() & 1) != 0)
          {
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }
        }

        if (v39 == 0x6D6574737953 && v40 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
        {
          if (qword_27E2E4228 != -1)
          {
            swift_once();
          }

          if (qword_27E2E4610)
          {
            v49 = qword_27E2E4610;
            v50 = sub_23D80DD4C();
            v51 = sub_23D80DD4C();
            v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

            sub_23D80DD7C();
          }
        }

        else if ((v39 != 0x6B726F592077654ELL || v40 != 0xE800000000000000) && (sub_23D80E4DC() & 1) == 0)
        {
        }

        sub_23D7904FC();
        v53 = sub_23D80E19C();

        v54 = (v5 + 1);
        if (v53 == -1)
        {
          v4 = v60;
          if (v54 != v62)
          {
            *v5 = *v57;
          }

          if (v63 <= v60 || (v6 = v57, v57 <= v56))
          {
            v6 = v57;
            goto LABEL_96;
          }

          goto LABEL_55;
        }

        v4 = v60;
        v6 = v62;
        if (v54 != v63)
        {
          *v5 = *v36;
        }

        --v5;
        v63 = v36;
      }

      while (v36 > v60);
      v63 = v36;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v63 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v58 = v5;
      do
      {
        v14 = *v6;
        v15 = *(v6 + 1);
        v61 = v6;
        v16 = *v4;
        v17 = *(v4 + 1);
        v18 = v14 == 0x6D6574737953 && v15 == 0xE600000000000000;
        if (v18 || (sub_23D80E4DC() & 1) != 0)
        {
          v19 = v7;
          v20 = qword_27E2E4228;

          if (v20 != -1)
          {
            swift_once();
          }

          v21 = v4;
          if (qword_27E2E4610)
          {
            v22 = qword_27E2E4610;
            v23 = sub_23D80DD4C();
            v24 = sub_23D80DD4C();
            v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

            sub_23D80DD7C();
          }
        }

        else
        {
          v19 = v7;
          v21 = v4;
          v26 = v14 == 0x6B726F592077654ELL && v15 == 0xE800000000000000;
          if (v26 || (sub_23D80E4DC() & 1) != 0)
          {
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }
        }

        if (v16 == 0x6D6574737953 && v17 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
        {
          if (qword_27E2E4228 != -1)
          {
            swift_once();
          }

          if (qword_27E2E4610)
          {
            v27 = qword_27E2E4610;
            v28 = sub_23D80DD4C();
            v29 = sub_23D80DD4C();
            v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

            sub_23D80DD7C();
          }
        }

        else if ((v16 != 0x6B726F592077654ELL || v17 != 0xE800000000000000) && (sub_23D80E4DC() & 1) == 0)
        {
        }

        sub_23D7904FC();
        v31 = sub_23D80E19C();

        if (v31 == -1)
        {
          v33 = v61;
          v6 = v61 + 16;
          v35 = v19 == v61;
          v4 = v21;
          v34 = v19;
        }

        else
        {
          v32 = v21;
          v33 = v21;
          v4 = v21 + 16;
          v34 = v19;
          v35 = v19 == v32;
          v6 = v61;
        }

        if (!v35)
        {
          *v34 = *v33;
        }

        v7 = v34 + 16;
      }

      while (v4 < v63 && v6 < v58);
    }

    v6 = v7;
  }

LABEL_96:
  if (v6 != v4 || v6 >= &v4[(v63 - v4 + (v63 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v63 - v4) / 16));
  }

  return 1;
}

uint64_t sub_23D797980(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23D797A0C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23D797A34(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23D80E4DC() & 1;
  }
}

id sub_23D797A8C(NSString *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle_];
  [v5 pointSize];
  v7 = v6;

  v8 = [v4 systemFontOfSize:v7 weight:a2];
  v26 = [v8 fontDescriptor];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4500, &qword_23D8100A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D80FB00;
  v10 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4508, &qword_23D8100A8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23D80FB00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4510, &qword_23D8100B0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_23D80FAF0;
  v13 = *MEMORY[0x277D76900];
  *(v12 + 32) = *MEMORY[0x277D76900];
  v14 = *MEMORY[0x277D76908];
  *(v12 + 40) = 12;
  *(v12 + 48) = v14;
  *(v12 + 56) = 35;
  v15 = v10;
  v16 = v13;
  v17 = v14;
  v18 = sub_23D793BFC(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4518, &qword_23D8100B8);
  swift_arrayDestroy();
  *(v11 + 32) = v18;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4520, &unk_23D8100C0);
  *(inited + 40) = v11;
  sub_23D793CE8(inited);
  swift_setDeallocating();
  sub_23D797FC4(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_23D79802C();
  v19 = sub_23D80DCEC();

  v20 = [v26 fontDescriptorByAddingAttributes_];

  v21 = [v4 preferredFontForTextStyle_];
  [v21 pointSize];
  v23 = v22;

  v24 = [v4 fontWithDescriptor:v20 size:v7 * (DynamicTypeSize.numerator(forTextStyle:)(a1) / v23)];
  return v24;
}

unint64_t sub_23D797D88()
{
  result = qword_27E2E44D8;
  if (!qword_27E2E44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E44D8);
  }

  return result;
}

unint64_t sub_23D797DE0()
{
  result = qword_27E2E44E0;
  if (!qword_27E2E44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E44E0);
  }

  return result;
}

double sub_23D797E34@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&qword_27E2E44D0;
  *a1 = qword_27E2E44D0;
  return result;
}

uint64_t sub_23D797E80(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27E2E44D0 = v1;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D797EDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23D797F24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D797F70()
{
  result = qword_27E2E44E8;
  if (!qword_27E2E44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E44E8);
  }

  return result;
}

uint64_t sub_23D797FC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4498, &qword_23D80FEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D79802C()
{
  result = qword_27E2E4370;
  if (!qword_27E2E4370)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4370);
  }

  return result;
}

unint64_t AXRuntimeClientError.errorDescription.getter()
{
  v1 = 0xD000000000000023;
  v2 = *v0;
  v3 = 0xD000000000000019;
  if (v2 != 6)
  {
    v3 = 0xD00000000000001DLL;
  }

  v4 = 0xD000000000000028;
  if (v2 != 4)
  {
    v4 = 0xD000000000000023;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000002CLL;
  if (v2 != 2)
  {
    v5 = 0xD00000000000002ELL;
  }

  if (*v0)
  {
    v1 = 0xD00000000000002ALL;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t AXRuntimeClientError.hashValue.getter()
{
  v1 = *v0;
  sub_23D80E58C();
  MEMORY[0x23EEECEB0](v1);
  return sub_23D80E5CC();
}

uint64_t sub_23D798200()
{
  v1 = *v0;
  sub_23D80E58C();
  MEMORY[0x23EEECEB0](v1);
  return sub_23D80E5CC();
}

uint64_t sub_23D798274()
{
  v1 = *v0;
  sub_23D80E58C();
  MEMORY[0x23EEECEB0](v1);
  return sub_23D80E5CC();
}

id AXRuntimeClient.__allocating_init(logger:handlers:runloop:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_23D7A03DC(a1, a2, a3);

  return v8;
}

id AXRuntimeClient.init(logger:handlers:runloop:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23D7A03DC(a1, a2, a3);

  return v4;
}

id AXRuntimeClient.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver];
  *&v0[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver] = 0;

  sub_23D799584();
  sub_23D798DBC(0);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23D798540@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_allowNotification);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23D7A1098;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23D7A054C(v4);
}

uint64_t sub_23D7985E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23D7A1058;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_allowNotification);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_23D7A054C(v3);
  return sub_23D7A055C(v8);
}

uint64_t AXRuntimeClient.allowNotification.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_allowNotification);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_23D7A054C(v3);
  return v3;
}

uint64_t AXRuntimeClient.allowNotification.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_allowNotification);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23D7A055C(v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXRuntimeClient.enableAccessibility()()
{
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient__isEnabled;
  if (*(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient__isEnabled) == 1)
  {
    v3 = sub_23D80D95C();
    v4 = sub_23D80E09C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23D78A000, v3, v4, "Accessibility already enabled", v5, 2u);
      MEMORY[0x23EEED790](v5, -1, -1);
    }
  }

  else
  {
    sub_23D798890();
    if (!v1)
    {
      *(v0 + v2) = 1;
    }
  }
}

void sub_23D798890()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  sub_23D798DBC(1);
  if (v1)
  {
    goto LABEL_2;
  }

  v3 = v0;
  AXUIElementRegisterSystemWideServerDeathCallback();
  v4 = *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_notificationHandlers];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v7 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (v9)
    {
LABEL_6:
      aBlock[0] = v6;
      sub_23D7953F8(0, v9, 0);
      v10 = aBlock[0];
      v11 = *(aBlock[0] + 16);
      v12 = 32;
      do
      {
        v13 = *(v7 + v12);
        aBlock[0] = v10;
        v14 = *(v10 + 24);
        if (v11 >= v14 >> 1)
        {
          sub_23D7953F8((v14 > 1), v11 + 1, 1);
          v10 = aBlock[0];
        }

        *(v10 + 16) = v11 + 1;
        *(v10 + 4 * v11 + 32) = v13;
        v12 += 4;
        ++v11;
        --v9;
      }

      while (v9);

LABEL_13:
      v15 = sub_23D799200(v10);

      if (v15 >> 62)
      {
        if (sub_23D80E31C())
        {
LABEL_15:
          v16 = [objc_opt_self() systemWideElement];
          if (v16)
          {
            v17 = v16;
            v18 = *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_runloop];
            v19 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v20 = objc_allocWithZone(AXObserverWrapper);
            sub_23D7936F0(0, &qword_27E2E45F0, 0x277CCABB0);

            v21 = v17;
            v22 = sub_23D80DECC();

            aBlock[4] = sub_23D7A1434;
            aBlock[5] = v19;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_23D79FC0C;
            aBlock[3] = &block_descriptor_40;
            v23 = v3;
            v24 = _Block_copy(aBlock);
            v32 = 0;
            v25 = [v20 initWithSystemElement:v21 runloop:v18 notifications:v22 handler:v24 error:&v32];
            _Block_release(v24);

            v26 = v32;
            if (v25)
            {

              v27 = *&v23[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver];
              *&v23[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver] = v25;
            }

            else
            {
              v28 = v26;
              v29 = sub_23D80D5DC();

              swift_willThrow();

              sub_23D7A0A78();
              swift_allocError();
              *v30 = 7;
              swift_willThrow();
            }

LABEL_2:
            v2 = *MEMORY[0x277D85DE8];
            return;
          }
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v31 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_12:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v7 = sub_23D79FCB0(*(v4 + 16), 0);
  v8 = sub_23D7A02DC(aBlock, v7 + 8, v5, v4);

  sub_23D7A142C();
  if (v8 == v5)
  {
    v6 = MEMORY[0x277D84F90];
    v9 = v7[2];
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXRuntimeClient.disableAccessibility()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient__isEnabled;
  if (*(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient__isEnabled))
  {
    v3 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver);
    *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver) = 0;

    sub_23D799584();
    sub_23D798DBC(0);
  }

  else
  {
    v4 = sub_23D80D95C();
    v5 = sub_23D80E09C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23D78A000, v4, v5, "Accessibility already disabled", v6, 2u);
      MEMORY[0x23EEED790](v6, -1, -1);
    }
  }

  *(v1 + v2) = 0;
}

uint64_t sub_23D798DBC(char a1)
{
  v2 = sub_23D80D95C();
  v3 = sub_23D80E09C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_23D78A000, v2, v3, "Updating app ax. Enable? %{BOOL}d", v4, 8u);
    MEMORY[0x23EEED790](v4, -1, -1);
  }

  result = _AXSApplicationAccessibilityEnabled();
  if (a1)
  {
    if (result)
    {
      return result;
    }

    v6 = sub_23D80D95C();
    v7 = sub_23D80E09C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23D78A000, v6, v7, "Enabling app accessibility", v8, 2u);
    goto LABEL_11;
  }

  if (result)
  {
    result = _AXSCanDisableApplicationAccessibility();
    if (result)
    {
      v6 = sub_23D80D95C();
      v9 = sub_23D80E09C();
      if (!os_log_type_enabled(v6, v9))
      {
LABEL_12:

        return _AXSApplicationAccessibilitySetEnabled();
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23D78A000, v6, v9, "Disabling app accessibility", v8, 2u);
LABEL_11:
      MEMORY[0x23EEED790](v8, -1, -1);
      goto LABEL_12;
    }
  }

  return result;
}

void sub_23D798F90(char *a1)
{
  if (a1)
  {
    v1 = sub_23D80D95C();
    v2 = sub_23D80E09C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23D78A000, v1, v2, "AX system server died", v3, 2u);
      MEMORY[0x23EEED790](v3, -1, -1);
    }

    v4 = *&a1[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver];
    *&a1[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver] = 0;

    sub_23D799584();
    sub_23D798DBC(0);
    sub_23D798890();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23D799200(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_23D80E2DC();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_23D80E56C();
      sub_23D80E2BC();
      v6 = *(v7 + 16);
      sub_23D80E2EC();
      sub_23D80E2FC();
      sub_23D80E2CC();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_23D7992A8(int a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v5 = Strong + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_allowNotification;
  v6 = Strong;
  swift_beginAccess();
  v8 = *v5;
  v7 = *(v5 + 8);
  sub_23D7A054C(v8);

  if (!v8)
  {
    goto LABEL_11;
  }

  sub_23D790648(a2, &v20, &qword_27E2E45A0, &qword_23D810320);
  if (!*(&v21 + 1))
  {
    sub_23D7A055C(v8);
    sub_23D790730(&v20, &qword_27E2E45A0, &qword_23D810320);
LABEL_9:
    v22 = 0u;
    v23 = 0u;
LABEL_10:
    sub_23D790730(&v22, &qword_27E2E45A0, &qword_23D810320);
    goto LABEL_11;
  }

  sub_23D7936F0(0, &qword_27E2E45F8, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_23D7A055C(v8);
    goto LABEL_9;
  }

  *&v20 = 6580592;
  *(&v20 + 1) = 0xE300000000000000;
  v9 = [v19 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v9)
  {
    sub_23D80E1CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_23D7A055C(v8);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v18 = v8(v20);
    result = sub_23D7A055C(v8);
    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    sub_23D7A055C(v8);
  }

LABEL_11:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(result + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_notificationHandlers);
    v12 = result;

    if (*(v11 + 16) && (v13 = sub_23D7AC6B0(a1), (v14 & 1) != 0))
    {
      v15 = *(v11 + 56) + 16 * v13;
      v17 = *v15;
      v16 = *(v15 + 8);

      v17(a2);
    }

    else
    {
    }
  }

  return result;
}

void sub_23D799584()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_stayingAliveAssertions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v11 = *(v0 + v1);
    }

    v3 = sub_23D80E31C();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EEECB80](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 invalidate];
  }

LABEL_10:
  v7 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84F90];

  sub_23D79A628();
  v8 = sub_23D80D95C();
  v9 = sub_23D80E06C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23D78A000, v8, v9, "Cleared all RunningBoard assertions", v10, 2u);
    MEMORY[0x23EEED790](v10, -1, -1);
  }
}

void sub_23D799728(uint64_t a1)
{
  if (a1 < 1)
  {
    osloga = sub_23D80D95C();
    v12 = sub_23D80E07C();
    if (os_log_type_enabled(osloga, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_23D78A000, osloga, v12, "Invalid PID for staying alive assertion: %d", v13, 8u);
      MEMORY[0x23EEED790](v13, -1, -1);
    }
  }

  else
  {
    v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_stayingAliveAssertions;
    swift_beginAccess();
    v4 = *(&v1->isa + v3);
    v36 = v3;
    oslog = v1;
    if (v4 >> 62)
    {
LABEL_28:
      v5 = sub_23D80E31C();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EEECB80](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_23D7936F0(0, &qword_27E2E45D8, 0x277D82BB8);
      v9 = [v8 target];
      v10 = [objc_opt_self() targetWithPid_];
      v11 = sub_23D80E13C();

      if (v11)
      {

        v31 = sub_23D80D95C();
        v32 = sub_23D80E06C();
        if (os_log_type_enabled(v31, v32))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109120;
          *(v34 + 4) = a1;
          _os_log_impl(&dword_23D78A000, v31, v32, "Staying Alive Assertion already exists for PID: %d", v34, 8u);
          MEMORY[0x23EEED790](v34, -1, -1);
        }

        return;
      }
    }

    v14 = [objc_opt_self() targetWithPid_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45E0, &unk_23D810340);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23D810130;
    v16 = sub_23D80DD4C();
    v17 = sub_23D80DD4C();
    v18 = [objc_opt_self() attributeWithDomain:v16 name:v17];

    *(v15 + 32) = v18;
    v19 = objc_allocWithZone(MEMORY[0x277D46DB8]);
    v20 = v14;
    v21 = sub_23D80DD4C();
    sub_23D7936F0(0, &qword_27E2E45E8, 0x277D46DD8);
    v22 = sub_23D80DECC();

    v23 = [v19 initWithExplanation:v21 target:v20 attributes:v22];

    v24 = sub_23D80D95C();
    v25 = sub_23D80E09C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = a1;
      _os_log_impl(&dword_23D78A000, v24, v25, "About to acquire RunningBoard assertion for PID %d", v26, 8u);
      MEMORY[0x23EEED790](v26, -1, -1);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = a1;
    aBlock[4] = sub_23D7A13FC;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D799D24;
    aBlock[3] = &block_descriptor_36;
    v29 = _Block_copy(aBlock);

    [v23 acquireWithInvalidationHandler_];
    _Block_release(v29);
    swift_beginAccess();
    v30 = v23;
    MEMORY[0x23EEEC7D0]();
    if (*((*(&oslog->isa + v36) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&oslog->isa + v36) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((*(&oslog->isa + v36) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23D80DF0C();
    }

    sub_23D80DF2C();
    swift_endAccess();
  }
}

void sub_23D799D24(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_23D799DB0(uint64_t a1)
{
  if (a1 < 1)
  {
    osloga = sub_23D80D95C();
    v12 = sub_23D80E07C();
    if (os_log_type_enabled(osloga, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_23D78A000, osloga, v12, "Invalid PID for fetching content assertion: %d", v13, 8u);
      MEMORY[0x23EEED790](v13, -1, -1);
    }
  }

  else
  {
    v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_fetchingContentAssertions;
    swift_beginAccess();
    v4 = *(&v1->isa + v3);
    v37 = v3;
    oslog = v1;
    if (v4 >> 62)
    {
LABEL_28:
      v5 = sub_23D80E31C();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EEECB80](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_23D7936F0(0, &qword_27E2E45D8, 0x277D82BB8);
      v9 = [v8 target];
      v10 = [objc_opt_self() targetWithPid_];
      v11 = sub_23D80E13C();

      if (v11)
      {

        v32 = sub_23D80D95C();
        v33 = sub_23D80E06C();
        if (os_log_type_enabled(v32, v33))
        {
          v35 = swift_slowAlloc();
          *v35 = 67109120;
          *(v35 + 4) = a1;
          _os_log_impl(&dword_23D78A000, v32, v33, "Fetching Content Assertion already exists for PID: %d", v35, 8u);
          MEMORY[0x23EEED790](v35, -1, -1);
        }

        return;
      }
    }

    v14 = [objc_opt_self() targetWithPid_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45E0, &unk_23D810340);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23D810130;
    v16 = sub_23D80DD4C();
    v17 = sub_23D80DD4C();
    v18 = [objc_opt_self() attributeWithDomain:v16 name:v17];

    *(v15 + 32) = v18;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_23D80E24C();
    MEMORY[0x23EEEC700](0xD000000000000037, 0x800000023D815E10);
    v46 = a1;
    v19 = sub_23D80E4BC();
    MEMORY[0x23EEEC700](v19);

    v20 = objc_allocWithZone(MEMORY[0x277D46DB8]);
    v21 = v14;
    v22 = sub_23D80DD4C();

    sub_23D7936F0(0, &qword_27E2E45E8, 0x277D46DD8);
    v23 = sub_23D80DECC();

    v24 = [v20 initWithExplanation:v22 target:v21 attributes:v23];

    v25 = sub_23D80D95C();
    v26 = sub_23D80E09C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = a1;
      _os_log_impl(&dword_23D78A000, v25, v26, "About to acquire fetching content assertion for PID %d", v27, 8u);
      MEMORY[0x23EEED790](v27, -1, -1);
    }

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = a1;
    v44 = sub_23D7A13CC;
    v45 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_23D799D24;
    v43 = &block_descriptor_29;
    v30 = _Block_copy(&aBlock);

    [v24 acquireWithInvalidationHandler_];
    _Block_release(v30);
    swift_beginAccess();
    v31 = v24;
    MEMORY[0x23EEEC7D0]();
    if (*((*(&oslog->isa + v37) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&oslog->isa + v37) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v36 = *((*(&oslog->isa + v37) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23D80DF0C();
    }

    sub_23D80DF2C();
    swift_endAccess();
  }
}

void sub_23D79A41C(uint64_t a1, void *a2, uint64_t a3, int a4, const char *a5, const char *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      v12 = a2;
      v13 = sub_23D80D95C();
      v14 = sub_23D80E07C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136315138;
        swift_getErrorValue();
        v17 = sub_23D80E51C();
        v19 = sub_23D79FD34(v17, v18, &v23);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23D78A000, v13, v14, a5, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x23EEED790](v16, -1, -1);
        MEMORY[0x23EEED790](v15, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v20 = sub_23D80D95C();
      v21 = sub_23D80E09C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = a4;
        _os_log_impl(&dword_23D78A000, v20, v21, a6, v22, 8u);
        MEMORY[0x23EEED790](v22, -1, -1);
      }
    }
  }
}

uint64_t sub_23D79A628()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_fetchingContentAssertions;
  result = swift_beginAccess();
  v27 = v0;
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v22 = *(v0 + v1);
    }

    result = sub_23D80E31C();
    v4 = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_13:
      v21 = *(v27 + v1);
      *(v27 + v1) = MEMORY[0x277D84F90];
    }
  }

  if (v4 >= 1)
  {
    v23 = v1;
    v5 = v3 & 0xC000000000000001;

    v6 = 0;
    v7 = &unk_278BEB000;
    v25 = v3;
    v24 = v4;
    do
    {
      if (v5)
      {
        v16 = MEMORY[0x23EEECB80](v6, v3);
      }

      else
      {
        v16 = *(v3 + 8 * v6 + 32);
      }

      v17 = v16;
      [v16 v7[91]];
      v18 = v17;
      v19 = sub_23D80D95C();
      v20 = sub_23D80E06C();

      if (os_log_type_enabled(v19, v20))
      {
        v8 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v8 = 136315138;
        v9 = v7;
        v10 = v5;
        v11 = [v18 explanation];
        v12 = sub_23D80DD7C();
        v14 = v13;

        v5 = v10;
        v7 = v9;
        v15 = sub_23D79FD34(v12, v14, &v28);
        v4 = v24;

        *(v8 + 4) = v15;
        v3 = v25;
        _os_log_impl(&dword_23D78A000, v19, v20, "Clearing fetching content assertion: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x23EEED790](v26, -1, -1);
        MEMORY[0x23EEED790](v8, -1, -1);
      }

      else
      {
      }

      ++v6;
    }

    while (v4 != v6);

    v1 = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_23D79A88C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_logger;

  v7 = sub_23D80D95C();
  v8 = sub_23D80E09C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v59[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D79FD34(a1, a2, v59);
    _os_log_impl(&dword_23D78A000, v7, v8, "Got bundleID %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EEED790](v10, -1, -1);
    MEMORY[0x23EEED790](v9, -1, -1);
  }

  v11 = sub_23D80D95C();
  v12 = sub_23D80E09C();
  v13 = &unk_278BEB000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [objc_opt_self() systemApplication];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_23D78A000, v11, v12, "Got system application : %@", v14, 0xCu);
    sub_23D790730(v15, &qword_27E2E45B0, &unk_23D810330);
    MEMORY[0x23EEED790](v15, -1, -1);
    MEMORY[0x23EEED790](v14, -1, -1);
  }

  v17 = objc_opt_self();
  v18 = [v17 systemApplication];
  if (!v18 || (v18, !_AXSApplicationAccessibilityEnabled()))
  {
    v19 = sub_23D80D95C();
    v20 = sub_23D80E09C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23D78A000, v19, v20, "System application is nil, try to turn on application accessibility.", v21, 2u);
      MEMORY[0x23EEED790](v21, -1, -1);
    }

    sub_23D798DBC(1);
    v22 = [v17 systemApplication];
    if (v22)
    {
LABEL_10:
    }

    else
    {
      v44 = 1;
      v45 = 0x277CCA000uLL;
      *&v23 = 134217984;
      v57 = v23;
      v58 = v17;
      while (v44 != 4)
      {
        v46 = *(v45 + 3272);
        [objc_opt_self() sleepForTimeInterval_];
        v47 = sub_23D80D95C();
        v48 = sub_23D80E09C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = v3;
          v50 = v6;
          v51 = a2;
          v52 = v13;
          v53 = v45;
          v54 = a1;
          v55 = swift_slowAlloc();
          *v55 = v57;
          *(v55 + 4) = v44;
          _os_log_impl(&dword_23D78A000, v47, v48, "Retry %ld to get system application", v55, 0xCu);
          v56 = v55;
          a1 = v54;
          v45 = v53;
          v13 = v52;
          a2 = v51;
          v6 = v50;
          v3 = v49;
          v17 = v58;
          MEMORY[0x23EEED790](v56, -1, -1);
        }

        v22 = [v17 v13[93]];
        ++v44;
        if (v22)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v24 = [v17 v13[93]];
  if (v24)
  {
    v25 = v24;
    v26 = sub_23D80DD4C();
    v27 = [v25 elementForAttribute:91510 parameter:v26];

    if (v27)
    {
      v28 = v27;
      v29 = v27;
      AXRuntimeClient.addAssertionsFor(app:bundleID:)(v29, a1, a2);

      return v28;
    }
  }

  else
  {
    v31 = sub_23D80D95C();
    v32 = sub_23D80E07C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23D78A000, v31, v32, "System application is still nil after enabling accessibility and retrying", v33, 2u);
      MEMORY[0x23EEED790](v33, -1, -1);
    }

    sub_23D7A0A78();
    v34 = swift_allocError();
    *v35 = 1;
    swift_willThrow();
    v36 = v34;
    v37 = sub_23D80D95C();
    v38 = sub_23D80E07C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = sub_23D80E51C();
      v43 = sub_23D79FD34(v41, v42, v59);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_23D78A000, v37, v38, "Cannot setup application accessibility before getting system application. Error: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x23EEED790](v40, -1, -1);
      MEMORY[0x23EEED790](v39, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

void AXRuntimeClient.addAssertionsFor(app:bundleID:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 uiElement];
  if (v5)
  {
    oslog = v5;
    v6 = [v5 pid];

    v7 = sub_23D80D95C();
    v8 = sub_23D80E06C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 67109378;
      *(v9 + 4) = v6;
      *(v9 + 8) = 2080;
      *(v9 + 10) = sub_23D79FD34(a2, a3, &v19);
      _os_log_impl(&dword_23D78A000, v7, v8, "Got application PID: %d for bundle ID: %s", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x23EEED790](v10, -1, -1);
      MEMORY[0x23EEED790](v9, -1, -1);
    }

    if (v6 < 1)
    {

      v14 = sub_23D80D95C();
      v15 = sub_23D80E07C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19 = v17;
        *v16 = 67109378;
        *(v16 + 4) = v6;
        *(v16 + 8) = 2080;
        *(v16 + 10) = sub_23D79FD34(a2, a3, &v19);
        _os_log_impl(&dword_23D78A000, v14, v15, "Invalid PID (%d) for application with bundle ID: %s", v16, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x23EEED790](v17, -1, -1);
        MEMORY[0x23EEED790](v16, -1, -1);

        goto LABEL_13;
      }
    }

    else
    {
      sub_23D799728(v6);
      sub_23D799DB0(v6);
    }
  }

  else
  {

    oslog = sub_23D80D95C();
    v11 = sub_23D80E07C();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_23D79FD34(a2, a3, &v19);
      _os_log_impl(&dword_23D78A000, oslog, v11, "AXElement has nil uiElement for bundle ID: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x23EEED790](v13, -1, -1);
      MEMORY[0x23EEED790](v12, -1, -1);
      goto LABEL_13;
    }
  }

LABEL_13:
}

void AXRuntimeClient.currentAppStrings(bundleID:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [*(v3 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager) currentApplication];
  if (a2)
  {
    v7 = sub_23D79A88C(a1, a2);
    if (v7)
    {
      v8 = v7;

      v6 = v8;
    }
  }

  v9 = v6;
  v10 = sub_23D80D95C();
  v11 = sub_23D80E06C();

  if (!os_log_type_enabled(v10, v11))
  {

LABEL_8:
    v20 = [v9 visibleElements];
    if (!v20)
    {
      v40 = sub_23D80D95C();
      v41 = sub_23D80E07C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_23D78A000, v40, v41, "Unable to find primary app visible elements.", v42, 2u);
        MEMORY[0x23EEED790](v42, -1, -1);
      }

      goto LABEL_35;
    }

    v21 = v20;
    sub_23D7936F0(0, &qword_27E2E4458, 0x277CE6BA0);
    v22 = sub_23D80DEEC();

    if (v22 >> 62)
    {
LABEL_33:
      v23 = sub_23D80E31C();
      v45 = v9;
      if (v23)
      {
LABEL_11:
        v24 = 0;
        v9 = (v22 & 0xC000000000000001);
        v25 = *MEMORY[0x277CE6D00];
        v26 = MEMORY[0x277D84F90];
        do
        {
          v27 = v24;
          while (1)
          {
            if (v9)
            {
              v28 = MEMORY[0x23EEECB80](v27, v22);
            }

            else
            {
              if (v27 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v28 = *(v22 + 8 * v27 + 32);
            }

            v29 = v28;
            v24 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            if (![v28 hasAnyTraits_])
            {
              break;
            }

            ++v27;
            if (v24 == v23)
            {
              goto LABEL_34;
            }
          }

          v30 = v26;
          v31 = [v29 speakThisString];
          if (!v31)
          {
            goto LABEL_37;
          }

          v32 = v31;
          v33 = sub_23D80DD7C();
          v43 = v34;
          v44 = v33;

          v35 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_23D78FEC4(0, *(v30 + 2) + 1, 1, v30);
          }

          v37 = *(v35 + 2);
          v36 = *(v35 + 3);
          v38 = v35;
          if (v37 >= v36 >> 1)
          {
            v38 = sub_23D78FEC4((v36 > 1), v37 + 1, 1, v35);
          }

          *(v38 + 2) = v37 + 1;
          v26 = v38;
          v39 = &v38[16 * v37];
          *(v39 + 4) = v44;
          *(v39 + 5) = v43;
        }

        while (v24 != v23);
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = v9;
      if (v23)
      {
        goto LABEL_11;
      }
    }

LABEL_34:

    v40 = v45;
LABEL_35:

    return;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v46 = v13;
  *v12 = 136315138;
  v14 = [v9 bundleId];
  v15 = AXAppNameForBundleId();

  if (v15)
  {
    v16 = sub_23D80DD7C();
    v18 = v17;

    v19 = sub_23D79FD34(v16, v18, &v46);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_23D78A000, v10, v11, "Bundle id : %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EEED790](v13, -1, -1);
    MEMORY[0x23EEED790](v12, -1, -1);

    goto LABEL_8;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_23D79B654(void *a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v246 = a2;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45A8, &qword_23D810328);
  v9 = *(*(v237 - 8) + 64);
  MEMORY[0x28223BE20](v237);
  v227 = &v204 - v10;
  v236 = sub_23D80DCCC();
  v11 = *(v236 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v236);
  v235 = &v204 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v234 = &v204 - v15;
  v233 = sub_23D80DC7C();
  v16 = *(v233 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v233);
  v232 = &v204 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_23D80DCAC();
  v248 = *(v231 - 8);
  v19 = v248[8];
  MEMORY[0x28223BE20](v231);
  v230 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AXRTextContent();
  v217 = *(v21 - 8);
  v22 = *(v217 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v214 = &v204 - v27;
  MEMORY[0x28223BE20](v26);
  v215 = &v204 - v28;
  v219 = a1;
  v29 = [a1 uiElement];
  if (!v29)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v30 = v29;
  v31 = [v29 pid];

  if (v31 < 1)
  {
    v48 = sub_23D80D95C();
    v49 = sub_23D80E07C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      *(v50 + 4) = v31;
      _os_log_impl(&dword_23D78A000, v48, v49, "Invalid PID (%d) for app in fetchContentFrom", v50, 8u);
      MEMORY[0x23EEED790](v50, -1, -1);
    }

    sub_23D7A0A78();
    swift_allocError();
    *v51 = 3;
    swift_willThrow();
    return;
  }

  v208 = v25;
  _AXSetAllowsSuspendedAppServer();
  sub_23D799728(v31);
  sub_23D799DB0(v31);
  v32 = [objc_opt_self() server];
  if (v32 && (v33 = v32, v34 = [v32 isScreenLockedWithPasscode_], v33, (v34 & 1) != 0))
  {
    v241 = 1;
    v35 = 10.0;
  }

  else
  {
    v241 = 0;
    v35 = 5.0;
  }

  v240 = v21;
  v216 = a3;
  *&v247 = v16;
  if (!a3)
  {
    v52 = sub_23D80D95C();
    v53 = sub_23D80E06C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_23D78A000, v52, v53, "currentElement is nil, getting initial elements from the current App instead.", v54, 2u);
      MEMORY[0x23EEED790](v54, -1, -1);
    }

    AXOverrideRequestingClientType();
    v55 = [v219 uiElement];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 arrayWithAXAttribute_];

      if (v57)
      {
        v58 = sub_23D80DEEC();
      }

      else
      {
        v58 = MEMORY[0x277D84F90];
      }

      AXOverrideRequestingClientType();
      v64 = *(v58 + 16);

      if (v64)
      {
        v244 = v11;
        v60 = 0xE700000000000000;
        v212 = 0x6C616974696E69;
        goto LABEL_37;
      }

      v228 = v4;

      v62 = 0xEF746E65746E6F63;
      v63 = 0x206C616974696E69;
LABEL_119:

      v188 = sub_23D80D95C();
      v189 = sub_23D80E07C();

      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *&aBlock = v191;
        *v190 = 136315394;
        v192 = sub_23D79FD34(v63, v62, &aBlock);

        *(v190 + 4) = v192;
        *(v190 + 12) = 1024;
        *(v190 + 14) = v31;
        _os_log_impl(&dword_23D78A000, v188, v189, "No elements found for %s in app with PID %d", v190, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v191);
        MEMORY[0x23EEED790](v191, -1, -1);
        MEMORY[0x23EEED790](v190, -1, -1);
      }

      else
      {
      }

      if (!v216)
      {
        v193 = sub_23D80D95C();
        v194 = sub_23D80E07C();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 0;
          _os_log_impl(&dword_23D78A000, v193, v194, "No initial accessible elements found - app may not support accessibility or content may not be ready", v195, 2u);
          MEMORY[0x23EEED790](v195, -1, -1);
        }
      }

      _AXSetAllowsSuspendedAppServer();
      sub_23D79A628();
      return;
    }

LABEL_143:
    __break(1u);
    return;
  }

  v244 = v11;
  if (v246 == 1)
  {
    v36 = 2196;
  }

  else
  {
    v36 = 2244;
  }

  v37 = a3;
  v38 = sub_23D80D95C();
  v39 = sub_23D80E06C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v216;
    v42 = v37;
    _os_log_impl(&dword_23D78A000, v38, v39, "currentElement is %@", v40, 0xCu);
    sub_23D790730(v41, &qword_27E2E45B0, &unk_23D810330);
    v43 = v41;
    v5 = v4;
    MEMORY[0x23EEED790](v43, -1, -1);
    MEMORY[0x23EEED790](v40, -1, -1);
  }

  AXOverrideRequestingClientType();
  v44 = [v37 uiElement];
  if (!v44)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v45 = v44;
  v46 = [v44 arrayWithAXAttribute_];

  if (v46)
  {
    v47 = sub_23D80DEEC();
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  AXOverrideRequestingClientType();

  if (v246 == 1)
  {
    v59 = 1954047342;
  }

  else
  {
    v59 = 0x73756F6976657270;
  }

  if (v246 == 1)
  {
    v60 = 0xE400000000000000;
  }

  else
  {
    v60 = 0xE800000000000000;
  }

  v61 = *(v47 + 16);

  v58 = v47;
  if (!v61)
  {
    v228 = v5;

    *&aBlock = v59;
    *(&aBlock + 1) = v60;
    MEMORY[0x23EEEC700](0x746E65746E6F6320, 0xE800000000000000);
    v62 = *(&aBlock + 1);
    v63 = aBlock;
    goto LABEL_119;
  }

  v212 = v59;
LABEL_37:
  v65 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_logger;

  v245 = v65;
  v66 = sub_23D80D95C();
  v67 = sub_23D80E06C();

  v68 = os_log_type_enabled(v66, v67);
  v242 = v58;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&aBlock = v70;
    *v69 = 134218242;
    *(v69 + 4) = *(v242 + 16);

    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_23D79FD34(v212, v60, &aBlock);
    _os_log_impl(&dword_23D78A000, v66, v67, "Found %ld elements to fetch for %s content", v69, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v71 = v70;
    v58 = v242;
    MEMORY[0x23EEED790](v71, -1, -1);
    MEMORY[0x23EEED790](v69, -1, -1);
  }

  else
  {
  }

  v73 = *(v58 + 16);
  v74 = MEMORY[0x277D84F90];
  if (!v73)
  {
    v211 = 0;
    goto LABEL_108;
  }

  v75 = 0;
  v211 = 0;
  v225 = (v217 + 56);
  v224 = &v250;
  v223 = (v247 + 8);
  v222 = v248 + 1;
  v221 = (v244 + 8);
  v213 = (v217 + 48);
  v76 = v58 + 32;
  v205 = (v73 - 1);
  *&v72 = 136315394;
  v204 = v72;
  *&v72 = 138412290;
  v218 = v72;
  *&v72 = 67109120;
  v209 = v72;
  v226 = v6;
  v207 = v60;
  v238 = v73;
  v206 = v58 + 32;
  while (2)
  {
    v210 = v74;
    v77 = v76 + 32 * v75;
    v248 = v75;
    while (1)
    {
      if (v248 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_137;
      }

      *&aBlock = v248;
      sub_23D793694(v77, &aBlock + 8);
      v254[0] = aBlock;
      v254[1] = v250;
      v255 = v251;
      if (!v251)
      {
LABEL_106:
        v60 = v207;
        v74 = v210;
        goto LABEL_108;
      }

      v247 = aBlock;
      sub_23D794258((v254 + 8), &aBlock);
      type metadata accessor for AXUIElementRef(0);
      swift_dynamicCast();
      v78 = v253;
      v79 = [objc_allocWithZone(MEMORY[0x277CE6BA0]) initWithAXUIElement_];

      if (v79)
      {
        break;
      }

LABEL_45:
      v77 += 32;
      v248 = (v248 + 1);
      if (v73 == v248)
      {
        goto LABEL_106;
      }
    }

    if (v241)
    {
      v80 = [v79 uiElement];
      if (!v80)
      {
        goto LABEL_140;
      }

      v81 = v80;
      v82 = [v80 axElement];

      v83 = v35;
      AXUIElementSetMessagingTimeout(v82, v83);
    }

    v84 = *(v58 + 16) - 1;
    if (v246 == 2)
    {
      v85 = *(v58 + 16) - 1;
    }

    else
    {
      v85 = 0;
    }

    v244 = v85;
    if (v246 == 2)
    {
      v84 = 0;
    }

    v243 = v84;
    v86 = [v79 uiElement];
    if (!v86)
    {
      goto LABEL_139;
    }

    v87 = v86;
    v88 = [v86 pid];

    if (v88 < 1)
    {
      v111 = sub_23D80D95C();
      v112 = sub_23D80E07C();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = v209;
        *(v113 + 4) = v88;
        _os_log_impl(&dword_23D78A000, v111, v112, "Invalid PID (%d) in createTextContentSafely", v113, 8u);
        MEMORY[0x23EEED790](v113, -1, -1);
      }

      sub_23D7A0A78();
      v109 = swift_allocError();
      *v114 = 2;
      swift_willThrow();
      v5 = 0;
      goto LABEL_68;
    }

    v228 = v5;
    v89 = v247;
    sub_23D799DB0(v88);
    v90 = [objc_opt_self() isMainThread];
    v220 = v89;
    if (v90)
    {
      v127 = v89 == v243;
      v128 = v89 == v244;
      v129 = v79;
      v130 = v215;
      AXRTextContent.init(axElement:isFirstElement:isLastElement:)(v129, v128, v127, v215);
      goto LABEL_72;
    }

    v91 = v89 == v243;
    v92 = v89 == v244;
    v93 = dispatch_semaphore_create(0);
    v94 = swift_allocBox();
    v95 = *v225;
    v229 = v96;
    v95(v96, 1, 1, v240);
    sub_23D7936F0(0, &qword_27E2E45B8, 0x277D85C78);
    v97 = sub_23D80E0BC();
    v98 = swift_allocObject();
    *(v98 + 16) = v94;
    *(v98 + 24) = v79;
    *(v98 + 32) = v92;
    *(v98 + 33) = v91;
    *(v98 + 40) = v93;
    v251 = sub_23D7A1118;
    v252 = v98;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v250 = sub_23D79FA1C;
    *(&v250 + 1) = &block_descriptor;
    v99 = _Block_copy(&aBlock);
    *&v247 = v79;
    v100 = v79;
    v239 = v94;

    v101 = v93;

    v102 = v230;
    sub_23D80DC9C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_23D7A1144();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45C8, &qword_23D811F70);
    sub_23D7A119C();
    v103 = v232;
    v104 = v233;
    sub_23D80E1DC();
    MEMORY[0x23EEEC9E0](0, v102, v103, v99);
    _Block_release(v99);

    (*v223)(v103, v104);
    (*v222)(v102, v231);
    v105 = v235;
    sub_23D80DCBC();
    v106 = v234;
    sub_23D80DCDC();
    v107 = *v221;
    v108 = v236;
    (*v221)(v105, v236);
    sub_23D80E0FC();
    v107(v106, v108);
    if (sub_23D80DC6C())
    {
      sub_23D7A0A78();
      v109 = swift_allocError();
      *v110 = 2;
      swift_willThrow();

      goto LABEL_67;
    }

    v115 = v229;
    swift_beginAccess();
    v116 = v115;
    v117 = v227;
    sub_23D790648(v116, v227, &qword_27E2E45A8, &qword_23D810328);
    if ((*v213)(v117, 1, v240) == 1)
    {
      sub_23D790730(v117, &qword_27E2E45A8, &qword_23D810328);
      sub_23D7A0A78();
      v109 = swift_allocError();
      *v118 = 2;
      swift_willThrow();

LABEL_67:

      v5 = 0;
      v79 = v247;
LABEL_68:
      v119 = v109;
      v120 = sub_23D80D95C();
      v121 = sub_23D80E06C();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = v79;
        v124 = swift_slowAlloc();
        *v122 = v218;
        v125 = v109;
        v126 = _swift_stdlib_bridgeErrorToNSError();
        *(v122 + 4) = v126;
        *v124 = v126;
        _os_log_impl(&dword_23D78A000, v120, v121, "Skipping element due to accessibility error: %@", v122, 0xCu);
        sub_23D790730(v124, &qword_27E2E45B0, &unk_23D810330);
        MEMORY[0x23EEED790](v124, -1, -1);
        MEMORY[0x23EEED790](v122, -1, -1);

        v5 = 0;
      }

      else
      {
      }

      v58 = v242;
      v73 = v238;
      goto LABEL_45;
    }

    v130 = v215;
    sub_23D7A1200(v117, v215);

    v58 = v242;
    v79 = v247;
    v89 = v220;
LABEL_72:
    v131 = v240;
    v132 = (v130 + v240[5]);
    v134 = *v132;
    v133 = v132[1];
    v135 = v134 & 0xFFFFFFFFFFFFLL;
    if ((v133 & 0x2000000000000000) != 0)
    {
      v135 = HIBYTE(v133) & 0xF;
    }

    v76 = v206;
    if (v135)
    {
      *&v247 = v135;
      sub_23D7A1264(v130, v214);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = sub_23D78FFD0(0, v210[2] + 1, 1, v210);
      }

      v137 = v210[2];
      v136 = v210[3];
      v138 = v79;
      if (v137 >= v136 >> 1)
      {
        v210 = sub_23D78FFD0(v136 > 1, v137 + 1, 1, v210);
      }

      v139 = v210;
      v210[2] = v137 + 1;
      sub_23D7A1200(v214, v139 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v137);
      v140 = v208;
      sub_23D7A1264(v130, v208);
      v141 = v207;

      v142 = v138;
      v143 = v138;
      v144 = sub_23D80D95C();
      v145 = sub_23D80E06C();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *&aBlock = v147;
        *v146 = v204;
        *(v146 + 4) = sub_23D79FD34(v212, v141, &aBlock);
        *(v146 + 12) = 2080;
        v148 = AXRTextContent.description()();
        sub_23D7A12C8(v140);
        v149 = sub_23D79FD34(v148._countAndFlagsBits, v148._object, &aBlock);

        *(v146 + 14) = v149;
        _os_log_impl(&dword_23D78A000, v144, v145, "Added %s content: %s", v146, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEED790](v147, -1, -1);
        MEMORY[0x23EEED790](v146, -1, -1);
      }

      else
      {

        sub_23D7A12C8(v140);
      }

      v211 = v142;
      v131 = v240;
      v58 = v242;
      v73 = v238;
      v76 = v206;
      v79 = v142;
      v89 = v220;
      v135 = v247;
    }

    else
    {
      v73 = v238;
    }

    if (v246 == 2)
    {
      if (v89 != v244)
      {
        goto LABEL_103;
      }

      v166 = v210[2];
      if (!v166 || v135)
      {
        goto LABEL_103;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = sub_23D7CD054(v210);
      }

      v167 = v210[2];
      if (v166 <= v167)
      {
        v168 = v210 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
        v169 = *(v217 + 72);
        v168[v169 * (v166 - 1) + v131[11]] = 1;
        v170 = &v168[v169 * (v167 - 1)];
        v171 = v131[13];
        v172 = *&v170[v171];
        v173 = v211;
        *&v170[v171] = v211;
        v174 = v173;

        v159 = sub_23D80D95C();
        v175 = sub_23D80E06C();
        v176 = os_log_type_enabled(v159, v175);
        v5 = v228;
        if (v176)
        {
          v162 = swift_slowAlloc();
          *v162 = 0;
          v163 = v175;
          v164 = v159;
          v165 = "Marked next element as first since current first element had empty text";
LABEL_101:
          _os_log_impl(&dword_23D78A000, v164, v163, v165, v162, 2u);
          MEMORY[0x23EEED790](v162, -1, -1);
        }

LABEL_102:
        v73 = v238;

        goto LABEL_104;
      }

LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v89 == v243)
    {
      v150 = v210[2];
      if (v150)
      {
        if (!v135)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v210 = sub_23D7CD054(v210);
          }

          v151 = v210[2];
          if (v150 <= v151)
          {
            v152 = v210 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
            v153 = *(v217 + 72);
            v152[v153 * (v150 - 1) + v131[12]] = 1;
            v154 = &v152[v153 * (v151 - 1)];
            v155 = v131[13];
            v156 = *&v154[v155];
            v157 = v211;
            *&v154[v155] = v211;
            v158 = v157;

            v159 = sub_23D80D95C();
            v160 = sub_23D80E06C();
            v161 = os_log_type_enabled(v159, v160);
            v5 = v228;
            if (v161)
            {
              v162 = swift_slowAlloc();
              *v162 = 0;
              v163 = v160;
              v164 = v159;
              v165 = "Marked previous element as last since current last element had empty text";
              goto LABEL_101;
            }

            goto LABEL_102;
          }

LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }
      }
    }

LABEL_103:
    v5 = v228;
LABEL_104:
    v177 = v248;
    v75 = (v248 + 1);

    sub_23D7A12C8(v215);
    v60 = v207;
    v74 = v210;
    if (v205 != v177)
    {
      continue;
    }

    break;
  }

LABEL_108:

  v178 = sub_23D80D95C();
  v179 = sub_23D80E06C();

  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    *&aBlock = v181;
    *v180 = 136315394;
    *(v180 + 4) = sub_23D79FD34(v212, v60, &aBlock);
    *(v180 + 12) = 2048;
    *(v180 + 14) = v74[2];
    _os_log_impl(&dword_23D78A000, v178, v179, "fetch %s content returning %ld content items", v180, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v181);
    MEMORY[0x23EEED790](v181, -1, -1);
    MEMORY[0x23EEED790](v180, -1, -1);
  }

  if (v74[2])
  {
  }

  else
  {

    v183 = sub_23D80D95C();
    v184 = sub_23D80E07C();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      *&aBlock = v248;
      *v185 = 134218242;
      v186 = *(v58 + 16);

      *(v185 + 4) = v186;

      *(v185 + 12) = 2080;
      *(v185 + 14) = sub_23D79FD34(v212, v60, &aBlock);
      _os_log_impl(&dword_23D78A000, v183, v184, "Processed %ld elements but got no valid text content for %s", v185, 0x16u);
      v187 = v248;
      __swift_destroy_boxed_opaque_existential_1(v248);
      MEMORY[0x23EEED790](v187, -1, -1);
      MEMORY[0x23EEED790](v185, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    if (v216)
    {

      v196 = sub_23D80D95C();
      v197 = sub_23D80E05C();

      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        *&aBlock = v199;
        *v198 = 136315138;
        v200 = sub_23D79FD34(v212, v60, &aBlock);

        *(v198 + 4) = v200;
        _os_log_impl(&dword_23D78A000, v196, v197, "No %s content available - may have reached end of content", v198, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v199);
        MEMORY[0x23EEED790](v199, -1, -1);
        MEMORY[0x23EEED790](v198, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      v201 = sub_23D80D95C();
      v202 = sub_23D80E07C();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&dword_23D78A000, v201, v202, "No initial text content found - app may not have accessible text or content may not be loaded", v203, 2u);
        MEMORY[0x23EEED790](v203, -1, -1);
      }
    }
  }

  if (v74[2])
  {
    if (v246 == 2)
    {

      sub_23D79EBDC(v182, v219);
    }
  }

  _AXSetAllowsSuspendedAppServer();
  sub_23D79A628();
}

void AXRuntimeClient.currentAppArticle(sceneID:bundleID:)(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v10 = [*(v3 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager) currentApplication];
    sub_23D7A056C(a1, 0);
    v9 = v4;
    if (v4)
    {

      goto LABEL_6;
    }

    v38 = v11;
    v39 = sub_23D80D95C();
    v40 = sub_23D80E06C();
    v93 = v38;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v94 = v42;
      *v41 = 136315138;
      v43 = type metadata accessor for AXRTextContent();

      v45 = MEMORY[0x23EEEC810](v44, v43);
      v47 = v46;

      v48 = sub_23D79FD34(v45, v47, &v94);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_23D78A000, v39, v40, "Text Content : %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x23EEED790](v42, -1, -1);
      MEMORY[0x23EEED790](v41, -1, -1);
    }

    v49 = [v10 bundleId];
    v50 = AXAppNameForBundleId();

    if (v50)
    {
      v91 = sub_23D80DD7C();
      v52 = v51;

      v53 = [v10 bundleId];
      if (v53)
      {
        v54 = v53;
        v55 = sub_23D80DD7C();
        v7 = v56;

        v57 = type metadata accessor for AXRArticle();
        v58 = v57[9];
        v59 = sub_23D80D63C();
        (*(*(v59 - 8) + 56))(a3 + v58, 1, 1, v59);
        v60 = 0x800000023D815CB0;
        v61 = qword_27E2E4228;
        v62 = v93;

        if (v61 != -1)
        {
          swift_once();
        }

        v63 = 0xD00000000000001FLL;
        if (qword_27E2E4610)
        {
          v64 = qword_27E2E4610;
          v65 = sub_23D80DD4C();
          v66 = v55;
          v67 = sub_23D80DD4C();
          v88 = v10;
          v68 = v52;
          v69 = [v64 localizedStringForKey:v65 value:0 table:v67];

          v55 = v66;
          v63 = sub_23D80DD7C();
          v60 = v70;

          v62 = v93;
          v52 = v68;
          v10 = v88;
        }

        sub_23D80D66C();

        v71 = v91;
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = a2;

  sub_23D7A056C(a1, v7);
  v9 = v4;
  if (v4)
  {

LABEL_6:
    sub_23D7A0A78();
    swift_allocError();
    *v12 = 6;
    swift_willThrow();

    return;
  }

  v13 = v8;
  v14 = sub_23D80D95C();
  v15 = sub_23D80E06C();
  v90 = a1;
  v92 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v94 = v17;
    *v16 = 136315138;
    v18 = type metadata accessor for AXRTextContent();

    v20 = MEMORY[0x23EEEC810](v19, v18);
    v22 = v21;

    v23 = sub_23D79FD34(v20, v22, &v94);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_23D78A000, v14, v15, "Text Content : %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x23EEED790](v17, -1, -1);
    MEMORY[0x23EEED790](v16, -1, -1);
  }

  v24 = sub_23D80D95C();
  v25 = sub_23D80E06C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v94 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_23D79FD34(v90, v7, &v94);
    _os_log_impl(&dword_23D78A000, v24, v25, "bundleID : %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x23EEED790](v27, -1, -1);
    MEMORY[0x23EEED790](v26, -1, -1);
  }

  v28 = sub_23D80D95C();
  v29 = sub_23D80E06C();
  if (!os_log_type_enabled(v28, v29))
  {

    goto LABEL_24;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v94 = v31;
  *v30 = 136315138;
  v32 = sub_23D80DD4C();
  v33 = AXAppNameForBundleId();

  if (v33)
  {
    v34 = sub_23D80DD7C();
    v36 = v35;

    v37 = sub_23D79FD34(v34, v36, &v94);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_23D78A000, v28, v29, "AXAppNameForBundleId : %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x23EEED790](v31, -1, -1);
    MEMORY[0x23EEED790](v30, -1, -1);
LABEL_24:

    v55 = v90;
    v72 = sub_23D80DD4C();
    v73 = AXAppNameForBundleId();

    if (v73)
    {
      v71 = sub_23D80DD7C();
      v52 = v74;

      v57 = type metadata accessor for AXRArticle();
      v75 = v57[9];
      v76 = sub_23D80D63C();
      (*(*(v76 - 8) + 56))(a3 + v75, 1, 1, v76);
      v60 = 0x800000023D815CB0;
      v77 = qword_27E2E4228;
      v62 = v92;

      if (v77 != -1)
      {
        swift_once();
      }

      v63 = 0xD00000000000001FLL;
      if (qword_27E2E4610)
      {
        v78 = qword_27E2E4610;
        v79 = sub_23D80DD4C();
        v80 = sub_23D80DD4C();
        v89 = a3;
        v81 = v71;
        v82 = v52;
        v83 = [v78 localizedStringForKey:v79 value:0 table:v80];

        v55 = v90;
        v63 = sub_23D80DD7C();
        v60 = v84;

        v62 = v92;
        v52 = v82;
        v71 = v81;
        a3 = v89;
      }

      sub_23D80D66C();
LABEL_30:
      v85 = (a3 + v57[5]);
      *v85 = v71;
      v85[1] = v52;
      v86 = (a3 + v57[6]);
      *v86 = v55;
      v86[1] = v7;
      v87 = (a3 + v57[7]);
      *v87 = v63;
      v87[1] = v60;
      *(a3 + v57[8]) = v62;
      *(a3 + v57[10]) = 0;
      *(a3 + v57[11]) = 0;
      type metadata accessor for AXRArticle();
      (*(*(v57 - 1) + 56))(a3, 0, 1, v57);

      return;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

id sub_23D79DCD4(void *a1)
{
  result = [a1 uiElement];
  if (result)
  {
    v3 = result;
    [result rectWithAXAttribute_];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    if (CGRectIsNull(v24) || (v25.origin.x = v5, v25.origin.y = v7, v25.size.width = v9, v25.size.height = v11, CGRectIsEmpty(v25)))
    {
      v12 = sub_23D80D95C();
      v13 = sub_23D80E06C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Element not visible: visible frame is null or empty";
LABEL_6:
        _os_log_impl(&dword_23D78A000, v12, v13, v15, v14, 2u);
        v16 = 0;
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    if (([a1 isVisible] & 1) == 0)
    {
      v12 = sub_23D80D95C();
      v13 = sub_23D80E06C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Element not visible: isVisible attribute is false";
        goto LABEL_6;
      }

LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    result = [a1 uiElement];
    if (result)
    {
      v17 = result;
      [result rectWithAXAttribute_];
      v19 = v18;
      v21 = v20;

      v22 = v9 * v11 / (v19 * v21);
      v16 = v22 >= 0.1;
      v12 = sub_23D80D95C();
      v23 = sub_23D80E06C();
      if (!os_log_type_enabled(v12, v23))
      {
        goto LABEL_15;
      }

      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v22;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v22 >= 0.1;
      _os_log_impl(&dword_23D78A000, v12, v23, "Element visibility check: visibilityRatio=%f, isVisibleEnough=%{BOOL}d", v14, 0x12u);
LABEL_7:
      MEMORY[0x23EEED790](v14, -1, -1);
LABEL_15:

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_23D79DF54(void *a1)
{
  result = [a1 uiElement];
  if (result)
  {
    v2 = result;
    v3 = [result performAXAction:2003 withValue:0];

    v4 = sub_23D80D95C();
    v5 = sub_23D80E06C();
    if (os_log_type_enabled(v4, v5))
    {
      if (v3)
      {
        v6 = "ScrollToVisible action succeeded";
      }

      else
      {
        v6 = "ScrollToVisible action failed";
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23D78A000, v4, v5, v6, v7, 2u);
      MEMORY[0x23EEED790](v7, -1, -1);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23D79E04C(void *a1, void *a2)
{
  v4 = sub_23D80D95C();
  v5 = sub_23D80E06C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23D78A000, v4, v5, "Trying alternative scroll methods for element", v6, 2u);
    MEMORY[0x23EEED790](v6, -1, -1);
  }

  v7 = sub_23D79E644(a1);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23D80D95C();
    v10 = sub_23D80E06C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23D78A000, v9, v10, "Found scroll parent, attempting to scroll", v11, 2u);
      MEMORY[0x23EEED790](v11, -1, -1);
    }

    v12 = [a1 uiElement];
    if (!v12)
    {
      goto LABEL_37;
    }

    v13 = v12;
    [v12 rectWithAXAttribute_];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [v8 uiElement];
    if (!v22)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v23 = v22;
    [v22 rectWithAXAttribute_];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v66.origin.x = v15;
    v66.origin.y = v17;
    v66.size.width = v19;
    v66.size.height = v21;
    MaxY = CGRectGetMaxY(v66);
    v67.origin.x = v25;
    v67.origin.y = v27;
    v67.size.width = v29;
    v67.size.height = v31;
    v32 = CGRectGetMaxY(v67);
    v68.origin.y = v17;
    v33 = v32;
    v68.origin.x = v15;
    v68.size.width = v19;
    v68.size.height = v21;
    MaxX = CGRectGetMaxX(v68);
    v69.origin.x = v25;
    v69.origin.y = v27;
    v69.size.width = v29;
    v69.size.height = v31;
    v35 = CGRectGetMaxX(v69);
    if (v33 < MaxY)
    {
      v36 = [v8 uiElement];
      if (!v36)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v37 = v36;
      [v36 performAXAction:2006 withValue:0];

      v38 = sub_23D80D95C();
      v39 = sub_23D80E06C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_23D78A000, v38, v39, "Performed scroll down action on scroll parent", v40, 2u);
        MEMORY[0x23EEED790](v40, -1, -1);
      }
    }

    if (v35 < MaxX)
    {
      v41 = [v8 uiElement];
      if (!v41)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v42 = v41;
      [v41 performAXAction:2009 withValue:0];

      v43 = sub_23D80D95C();
      v44 = sub_23D80E06C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_23D78A000, v43, v44, "Performed scroll right action on scroll parent", v45, 2u);
        MEMORY[0x23EEED790](v45, -1, -1);
      }
    }
  }

  v46 = sub_23D79E928(a2);
  if (v46)
  {
    v47 = v46;
    v48 = sub_23D80D95C();
    v49 = sub_23D80E06C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_23D78A000, v48, v49, "Found main scroll view, attempting to scroll down", v50, 2u);
      MEMORY[0x23EEED790](v50, -1, -1);
    }

    v51 = [v47 uiElement];
    if (!v51)
    {
      goto LABEL_39;
    }

    v52 = v51;
    [v51 performAXAction:2006 withValue:0];
  }

  v53 = [a1 uiElement];
  if (!v53)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v54 = v53;
  v55 = [v53 objectWithAXAttribute_];

  if (v55)
  {
    sub_23D80E1CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v65[0] = v63;
  v65[1] = v64;
  if (*(&v64 + 1))
  {
    sub_23D7936F0(0, &qword_27E2E4458, 0x277CE6BA0);
    if (swift_dynamicCast())
    {
      v56 = sub_23D80D95C();
      v57 = sub_23D80E06C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_23D78A000, v56, v57, "Found remote parent, attempting to scroll", v58, 2u);
        MEMORY[0x23EEED790](v58, -1, -1);
      }

      v59 = [v62 uiElement];
      if (v59)
      {
        v60 = v59;
        [v59 performAXAction:2006 withValue:0];

        return;
      }

      goto LABEL_42;
    }
  }

  else
  {
    sub_23D790730(v65, &qword_27E2E45A0, &qword_23D810320);
  }
}

id sub_23D79E644(void *a1)
{
  v1 = a1;
  v2 = [v1 uiElement];
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x277CE6DB8];
    while (1)
    {
      v5 = [v3 numberWithAXAttribute_];

      if (v5)
      {
        v6 = [v5 unsignedLongLongValue];

        if ((v4 & v6) != 0)
        {
          break;
        }
      }

      result = [v1 uiElement];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v8 = result;
      v9 = [result objectWithAXAttribute_];

      if (v9)
      {
        sub_23D80E1CC();
        swift_unknownObjectRelease();
      }

      else
      {

        v17 = 0u;
        v18 = 0u;
      }

      v19[0] = v17;
      v19[1] = v18;
      if (!*(&v18 + 1))
      {
        sub_23D790730(v19, &qword_27E2E45A0, &qword_23D810320);
LABEL_17:
        v13 = sub_23D80D95C();
        v14 = sub_23D80E06C();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_23D78A000, v13, v14, "No scrollable parent found", v15, 2u);
          MEMORY[0x23EEED790](v15, -1, -1);
        }

        return 0;
      }

      sub_23D7936F0(0, &qword_27E2E4458, 0x277CE6BA0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_17;
      }

      v1 = v16;
      v3 = [v1 uiElement];
      if (!v3)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    __break(1u);
  }

  v10 = sub_23D80D95C();
  v11 = sub_23D80E06C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23D78A000, v10, v11, "Found scrollable parent element", v12, 2u);
    MEMORY[0x23EEED790](v12, -1, -1);
  }

  return v1;
}

id sub_23D79E928(void *a1)
{
  v1 = [a1 visibleElements];
  if (!v1)
  {
    return v1;
  }

  sub_23D7936F0(0, &qword_27E2E4458, 0x277CE6BA0);
  v2 = sub_23D80DEEC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_22:

    v16 = sub_23D80D95C();
    v17 = sub_23D80E06C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23D78A000, v16, v17, "No main scroll view found in app", v18, 2u);
      MEMORY[0x23EEED790](v18, -1, -1);
    }

    return 0;
  }

LABEL_21:
  v3 = sub_23D80E31C();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_4:
  v4 = 0;
  v5 = *MEMORY[0x277CE6DB8];
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EEECB80](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v1 = v6;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = [v6 uiElement];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result numberWithAXAttribute_];

    if (v10)
    {
      v11 = [v10 unsignedLongLongValue];

      if ((v5 & v11) != 0)
      {
        break;
      }
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_22;
    }
  }

  v12 = sub_23D80D95C();
  v13 = sub_23D80E06C();
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23D78A000, v12, v13, "Found main scroll view in app", v15, 2u);
    MEMORY[0x23EEED790](v15, -1, -1);
  }

  return v1;
}

void sub_23D79EBDC(uint64_t a1, void *a2)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v4 = type metadata accessor for AXRTextContent();
  v5 = *(a1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(v4 + 52));
  if (!v5)
  {
    oslog = sub_23D80D95C();
    v12 = sub_23D80E06C();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23D78A000, oslog, v12, "No first element found to scroll to visible", v13, 2u);
      MEMORY[0x23EEED790](v13, -1, -1);
    }

    goto LABEL_19;
  }

  oslog = v5;
  v6 = sub_23D79DCD4(oslog);
  v7 = sub_23D80D95C();
  v8 = sub_23D80E06C();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "First element is already visible, no scrolling needed";
LABEL_14:
      _os_log_impl(&dword_23D78A000, v7, v8, v11, v10, 2u);
      MEMORY[0x23EEED790](v10, -1, -1);
    }
  }

  else
  {
    if (v9)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23D78A000, v7, v8, "First element is not visible, attempting to scroll it into view", v14, 2u);
      MEMORY[0x23EEED790](v14, -1, -1);
    }

    v15 = sub_23D79DF54(oslog);
    v7 = sub_23D80D95C();
    v8 = sub_23D80E06C();
    v16 = os_log_type_enabled(v7, v8);
    if ((v15 & 1) == 0)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_23D78A000, v7, v8, "Failed to scroll first element to visible, trying alternative methods", v17, 2u);
        MEMORY[0x23EEED790](v17, -1, -1);
      }

      sub_23D79E04C(oslog, a2);
      goto LABEL_19;
    }

    if (v16)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Successfully scrolled first element to visible";
      goto LABEL_14;
    }
  }

LABEL_19:
}

uint64_t AXRuntimeClient.fetchContentIn(direction:bundleID:currentElement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D79EF58, 0, 0);
}

uint64_t sub_23D79EF58()
{
  v1 = v0[6];
  if (!v1)
  {
LABEL_10:
    v12 = v0[5];
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_22:
    v14 = [*(v0[7] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager) currentApplication];
    goto LABEL_23;
  }

  v2 = v0[7];
  v3 = v1;
  v4 = sub_23D79DCD4(v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = sub_23D80D95C();
    v7 = sub_23D80E06C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Current element is already visible, no scrolling needed";
LABEL_8:
      _os_log_impl(&dword_23D78A000, v6, v7, v9, v8, 2u);
      MEMORY[0x23EEED790](v8, -1, -1);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = sub_23D79DF54(v3);
  v6 = sub_23D80D95C();
  v7 = sub_23D80E06C();
  v11 = os_log_type_enabled(v6, v7);
  if (v10)
  {
    if (v11)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Successfully scrolled current element to visible";
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v11)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_23D78A000, v6, v7, "Failed to scroll current element to visible, trying alternative methods", v19, 2u);
    MEMORY[0x23EEED790](v19, -1, -1);
  }

  v20 = v0[5];

  if (!v20)
  {

    goto LABEL_22;
  }

  v21 = v0[7];
  v22 = v0[5];
  v23 = sub_23D79A88C(v0[4], v22);
  if (v23)
  {
    v24 = v23;
    v25 = v0[7];
    sub_23D79E04C(v3, v23);
  }

  else
  {
  }

  v12 = v22;
LABEL_11:
  v13 = v0[7];
  v14 = sub_23D79A88C(v0[4], v12);
  if (!v14)
  {
    sub_23D7A0A78();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }

LABEL_23:
  v26 = v14;
  v0[9] = v14;
  v28 = v0[7];
  v27 = v0[8];
  v29 = v0[6];
  v30 = v0[3];
  v31 = sub_23D80DF8C();
  (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23D80DF6C();
  v33 = v29;
  v34 = v26;

  v35 = sub_23D80DF5C();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v32;
  v36[5] = v34;
  v36[6] = v30;
  v36[7] = v29;

  v38 = sub_23D79F760(0, 0, v27, &unk_23D810170, v36);
  v0[10] = v38;
  v39 = *(MEMORY[0x277D857C8] + 4);
  v40 = swift_task_alloc();
  v0[11] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4558, &qword_23D8112F0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4560, &qword_23D810180);
  *v40 = v0;
  v40[1] = sub_23D79F3A0;
  v43 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v38, v41, v42, v43);
}

uint64_t sub_23D79F3A0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);

  if (v0)
  {
    v6 = sub_23D79F548;
  }

  else
  {
    v6 = sub_23D79F4D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23D79F4D4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23D79F548()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23D79F5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_23D80DF6C();
  v7[10] = sub_23D80DF5C();
  v9 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D79F654, v9, v8);
}

uint64_t sub_23D79F654()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_23D79B654(*(v0 + 56), *(v0 + 64), *(v0 + 72));
    v7 = v6;
    v8 = *(v0 + 40);

    *v8 = v7;
  }

  else
  {
    sub_23D7A0A78();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23D79F760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23D790648(a3, v24 - v10, &qword_27E2E4550, &qword_23D810160);
  v12 = sub_23D80DF8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23D790730(v11, &qword_27E2E4550, &qword_23D810160);
  }

  else
  {
    sub_23D80DF7C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23D80DF3C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23D80DD8C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4558, &qword_23D8112F0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_23D790730(a3, &qword_27E2E4550, &qword_23D810160);

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

  sub_23D790730(a3, &qword_27E2E4550, &qword_23D810160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4558, &qword_23D8112F0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23D79FA1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23D79FA60(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45A8, &qword_23D810328);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = swift_projectBox();
  AXRTextContent.init(axElement:isFirstElement:isLastElement:)(a2, a3, a4, v10);
  v12 = type metadata accessor for AXRTextContent();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  swift_beginAccess();
  sub_23D7A1324(v10, v11);
  return sub_23D80E10C();
}

id AXRuntimeClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23D79FC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_23D794258(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6(a2, v10);

  return sub_23D790730(v10, &qword_27E2E45A0, &qword_23D810320);
}

void *sub_23D79FCB0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4600, &unk_23D810350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}