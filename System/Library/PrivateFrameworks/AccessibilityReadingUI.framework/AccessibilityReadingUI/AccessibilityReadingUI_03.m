uint64_t sub_23D8885CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AXRTextColorSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = 0x800000023D8E6230;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000010;
  if (qword_27E2F3C80)
  {
    v9 = qword_27E2F3C80;
    v10 = sub_23D8DE830();
    v11 = sub_23D8DE830();
    v12 = v5;
    v13 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v8 = sub_23D8DE870();
    v7 = v14;

    v5 = v12;
  }

  v37 = v8;
  v38 = v7;
  LODWORD(v36) = sub_23D887058();
  v15 = (a1 + *(v4 + 24));
  if (*v15)
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v16 = sub_23D8DEB80();
    v35 = sub_23D8DEB70();

    sub_23D888D50(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_23D8DE9D0();
    v17 = sub_23D8DE9C0();
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_23D888DB8(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
    sub_23D888D50(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v21 = sub_23D8DE9C0();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    sub_23D888DB8(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v18);
    sub_23D8DE480();
    v23 = v42;
    LOBYTE(v18) = v36 & 1;
    v24 = v35 & 1;
    v36 = v43;
    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v26 = type metadata accessor for AXRCustomizationColorButton();
    *(a2 + v26[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v27 = (a2 + v26[6]);
    v28 = v38;
    *v27 = v37;
    v27[1] = v28;
    *(a2 + v26[7]) = v18;
    *(a2 + v26[8]) = v24;
    *(a2 + v26[9]) = 0;
    v29 = a2 + v26[10];
    *v29 = v23;
    *(v29 + 8) = v36;
    v30 = a2 + v26[11];
    v39 = 0;
    result = sub_23D8DE310();
    v32 = v41;
    *v30 = v40;
    *(v30 + 1) = v32;
  }

  else
  {
    v33 = v15[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D888A14@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AXRTextColorSelectionView() + 24));
  if (*v3)
  {
    v4 = *v3;

    sub_23D8DC960();

    v5 = sub_23D8DC810();

    if (!v5)
    {
      result = sub_23D8DE1F0();
      v5 = result;
    }

    *a2 = v5;
  }

  else
  {
    v7 = v3[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D888AF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23D8DC510();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a4 + *(type metadata accessor for AXRTextColorSelectionView() + 24));
  if (*v11)
  {
    v12 = *a1;
    v13 = *v11;

    sub_23D8DC960();

    sub_23D8DC820();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15 = v11[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D888C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5C0, &unk_23D8E3400);
  sub_23D835AD0(&qword_27E2EE5C8, &qword_27E2EE5C0, &unk_23D8E3400);
  return sub_23D8DDBC0();
}

uint64_t sub_23D888D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextColorSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D888DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextColorSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D888E1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AXRTextColorSelectionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D888A14(v6, a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for AXRTextColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCCB0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCF90();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *&v6[v9];
  }

  v12 = *&v6[*(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D889030(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRTextColorSelectionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D888AF0(a1, v4, v5, v6);
}

uint64_t sub_23D8890D4()
{
  v1 = type metadata accessor for AXRTextColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D8DCF90();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = *&v5[*(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D88926C(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRTextColorSelectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D887818(a1, v4);
}

uint64_t sub_23D8892EC()
{
  v1 = type metadata accessor for AXRTextColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D8DCF90();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *&v5[*(v1 + 24)];

  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_23D889498()
{
  v1 = *(type metadata accessor for AXRTextColorSelectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D8879F4(v0 + v2);
}

uint64_t sub_23D889578(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D8DD6A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23D8DD6B0();
}

uint64_t sub_23D889670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23D8DD6A0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23D8DD6B0();
}

uint64_t String.localized.getter(uint64_t a1)
{
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v2 = qword_27E2F3C80;
    v3 = sub_23D8DE830();
    v4 = sub_23D8DE830();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    a1 = sub_23D8DE870();
  }

  else
  {
  }

  return a1;
}

Swift::String __swiftcall Double.timeDisplayString()()
{
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v0 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto _$sSd22AccessibilityReadingUIE17timeDisplayStringSSyF;
  }

  v1 = ((((34953 * (v0 % 3600)) >> 16) >> 5) + (((v0 % 3600 + ((-30583 * (v0 % 3600)) >> 16)) & 0x8000) >> 15));
  v2 = v0 % 60;
  if (v0 < 3600)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE250, &qword_23D8E2360);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_23D8E0D60;
    v8 = MEMORY[0x277D83B88];
    v9 = MEMORY[0x277D83C10];
    *(v7 + 56) = MEMORY[0x277D83B88];
    *(v7 + 64) = v9;
    *(v7 + 32) = v1;
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = v2;
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE250, &qword_23D8E2360);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_23D8E34F0;
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v6;
    *(v4 + 32) = v3 / 0xE10;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = v1;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = v2;
  }

  v10 = sub_23D8DE880();
_$sSd22AccessibilityReadingUIE17timeDisplayStringSSyF:
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t blockFont(forModel:isHeader:headingLevel:)(char *a1, char a2, void (*a3)(char *, id), int a4)
{
  LODWORD(v92) = a4;
  v87 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v86 - v10;
  v11 = sub_23D8DCF90();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = *(v90 + 64);
  MEMORY[0x28223BE20](v11);
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23D8DCA70();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v86 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v93 = &v86 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  v30 = sub_23D8DDBB0();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v35);
  v95 = v37;
  if (a2)
  {
    v94 = a1;
    v39 = *MEMORY[0x277D76A20];
    v40 = *MEMORY[0x277CE0A80];
    v41 = *(v37 + 104);
    v88 = &v86 - v36;
    v41();
    if (v92)
    {
      v42 = v39;
      v43 = 22.0;
    }

    else if (v87 == 2)
    {
      v92 = v30;
      v87 = *(v95 + 8);
      v42 = v39;
      v67 = v88;
      v87(v88, v92);
      v30 = v92;
      (v41)(v67, v40, v92);
      v43 = 22.0;
    }

    else if (v87 == 1)
    {
      v54 = *(v95 + 8);
      v92 = *MEMORY[0x277D769A8];
      v55 = v88;
      v54(v88, v30);
      v56 = v55;
      v42 = v92;
      (v41)(v56, *MEMORY[0x277CE0A50], v30);
      v43 = 34.0;
    }

    else
    {
      v68 = *(v95 + 8);
      v92 = *MEMORY[0x277D76988];
      v69 = v88;
      v68(v88, v30);
      v70 = v69;
      v42 = v92;
      (v41)(v70, *MEMORY[0x277CE0AC0], v30);
      v43 = 17.0;
    }

    sub_23D8DC840();
    sub_23D8DCA40();
    sub_23D88A61C();
    sub_23D8DE980();
    sub_23D8DE980();
    if (v98 == v96 && v99 == v97)
    {
      v71 = 1;
    }

    else
    {
      v71 = sub_23D8DED20();
    }

    v72 = *(v15 + 8);
    v72(v27, v14);
    v72(v29, v14);

    if (v71)
    {
      if (sub_23D8DC6A0())
      {
        v73 = *MEMORY[0x277D74400];
        v74 = v89;
        sub_23D8DC720();
        v53 = sub_23D8DDA80();

        (*(v90 + 8))(v74, v91);
        v75 = *(v95 + 8);
        v76 = v88;
LABEL_34:
        v75(v76, v30);
        return v53;
      }

      v82 = sub_23D8DDAB0();
      v83 = v86;
      (*(*(v82 - 8) + 56))(v86, 1, 1, v82);
      sub_23D8DDAD0();
      v81 = v88;
      v53 = sub_23D8DDB40();

      sub_23D88A674(v83);
    }

    else
    {
      v77 = v93;
      sub_23D8DC840();
      v78 = sub_23D8DCA30();
      v80 = v79;
      v72(v77, v14);
      v81 = v88;
      MEMORY[0x23EEEFC60](v78, v80, v88, v43);

      v53 = sub_23D8DDA90();
    }

    v75 = *(v95 + 8);
    v76 = v81;
    goto LABEL_34;
  }

  v88 = v38;
  v92 = v30;
  sub_23D8DC840();
  sub_23D8DCA40();
  sub_23D88A61C();
  sub_23D8DE980();
  sub_23D8DE980();
  if (v98 == v96 && v99 == v97)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_23D8DED20();
  }

  v45 = *(v15 + 8);
  v45(v19, v14);
  v45(v22, v14);

  if (v44)
  {
    v46 = sub_23D8DC6A0();
    v47 = v92;
    if (v46)
    {
      v48 = *MEMORY[0x277D76918];
      v49 = sub_23D8DC860();
      v50 = MEMORY[0x277D74418];
      if (v49)
      {
        v50 = MEMORY[0x277D74400];
      }

      v51 = *v50;
      v52 = v89;
      sub_23D8DC720();
      v53 = sub_23D8DDA80();
      (*(v90 + 8))(v52, v91);
    }

    else
    {
      (*(v95 + 104))(v88, *MEMORY[0x277CE0A68], v92);
      v62 = sub_23D8DDAB0();
      v63 = v94;
      (*(*(v62 - 8) + 56))(v94, 1, 1, v62);
      if (sub_23D8DC860())
      {
        sub_23D8DDAD0();
      }

      else
      {
        sub_23D8DDAF0();
      }

      v85 = v88;
      v53 = sub_23D8DDB40();
      sub_23D88A674(v63);
      (*(v95 + 8))(v85, v47);
    }
  }

  else
  {
    v57 = sub_23D8DC860();
    v58 = v93;
    sub_23D8DC840();
    v59 = v92;
    if (v57)
    {
      v60 = sub_23D8DCA50();
    }

    else
    {
      v60 = sub_23D8DCA60();
    }

    v64 = v60;
    v65 = v61;
    v45(v58, v14);
    v66 = v95;
    (*(v95 + 104))(v34, *MEMORY[0x277CE0A68], v59);
    v53 = MEMORY[0x23EEEFC60](v64, v65, v34, 17.0);

    (*(v66 + 8))(v34, v59);
  }

  return v53;
}

Swift::String __swiftcall localizedNameFor(speed:)(Swift::Float speed)
{
  if (qword_27E2ECED0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2EF148;
  v2 = sub_23D8DEA30();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_23D8DE870();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v7 = qword_27E2F3C80;
    v8 = sub_23D8DE830();
    v9 = sub_23D8DE830();
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

    sub_23D8DE870();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE250, &qword_23D8E2360);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23D8E0890;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_23D8605B0();
  v12 = 3157553;
  if (v6)
  {
    v12 = v4;
  }

  v13 = 0xE300000000000000;
  if (v6)
  {
    v13 = v6;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_23D8DE840();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void sub_23D88A5AC()
{
  v0 = sub_23D8DE830();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27E2F3C80 = v1;
}

unint64_t sub_23D88A61C()
{
  result = qword_27E2EF150[0];
  if (!qword_27E2EF150[0])
  {
    sub_23D8DCA70();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2EF150);
  }

  return result;
}

uint64_t sub_23D88A674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Binding<A>.init(_:deselectTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v40 = a5;
  v41 = a2;
  v38 = *(a3 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23D8DE490();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v30);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = *(v9 + 16);
  v35 = a1;
  v15(&v30 - v13, a1);
  v16 = *(v9 + 80);
  v36 = v9;
  v17 = (v16 + 48) & ~v16;
  v31 = v17 + v10;
  v33 = v16 | 7;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  v32 = *(v9 + 32);
  v19 = v14;
  v20 = v30;
  v32(&v18[v17], v19, v30);
  v21 = a1;
  v22 = v20;
  (v15)(v12, v21, v20);
  v24 = v37;
  v23 = v38;
  (*(v38 + 16))(v37, v41, a3);
  v25 = v23;
  v26 = (v31 + *(v23 + 80)) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v34;
  *(v27 + 4) = a3;
  *(v27 + 5) = v28;
  v32(&v27[v17], v12, v22);
  (*(v25 + 32))(&v27[v26], v24, a3);
  sub_23D8DE480();
  (*(v25 + 8))(v41, a3);
  return (*(v36 + 8))(v35, v22);
}

uint64_t sub_23D88A9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_23D8DE490();
  MEMORY[0x23EEF05A0]();
  v16 = sub_23D8DE820();
  (*(v9 + 8))(v13, a6);
  if (v16)
  {
    v17 = a5;
  }

  else
  {
    v17 = a1;
  }

  (*(v9 + 16))(v15, v17, a6);
  return sub_23D8DE460();
}

uint64_t View.if<A>(_:transform:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v39 = a1;
  v43 = a7;
  v44 = a6;
  v36[1] = a3;
  v37 = a2;
  v42 = a8;
  v38 = *(a4 - 8);
  v10 = *(v38 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v36 - v15;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v14);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v36 - v23;
  v25 = sub_23D8DD6C0();
  v41 = *(v25 - 8);
  v26 = *(v41 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v36 - v28;
  if (v39(v27))
  {
    v37(v40);
    v30 = v43;
    sub_23D8361EC(v22, a5, v43);
    v31 = *(v18 + 8);
    v31(v22, a5);
    sub_23D8361EC(v24, a5, v30);
    sub_23D889578(v22, a5);
    v31(v22, a5);
    v31(v24, a5);
  }

  else
  {
    v32 = v44;
    sub_23D8361EC(v40, a4, v44);
    sub_23D8361EC(v16, a4, v32);
    sub_23D889670(v13, a5, a4);
    v33 = *(v38 + 8);
    v33(v13, a4);
    v33(v16, a4);
  }

  v45 = v43;
  v46 = v44;
  WitnessTable = swift_getWitnessTable();
  sub_23D8361EC(v29, v25, WitnessTable);
  return (*(v41 + 8))(v29, v25);
}

void sub_23D88AEE4(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v16.origin.x = v7;
      v16.origin.y = v9;
      v16.size.width = v11;
      v16.size.height = v13;
      Height = CGRectGetHeight(v16);
      CGAffineTransformMakeTranslation(&v15, 0.0, Height);
      [v3 setTransform_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_23D88AFD0(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    return [a2 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D88B040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v39 = a1;
  v40 = a7;
  type metadata accessor for BottomPocketModifier();
  swift_getWitnessTable();
  v9 = sub_23D8DD7F0();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD6C0();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = a6;
  swift_getWitnessTable();
  v11 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_23D8DD4F0();
  v12 = sub_23D8DD020();
  v13 = swift_getOpaqueTypeConformance2();
  v59 = v11;
  v60 = swift_getWitnessTable();
  v14 = v11;
  v15 = swift_getWitnessTable();
  v51 = v9;
  v52 = MEMORY[0x277CE1350];
  v53 = OpaqueTypeMetadata2;
  v54 = v12;
  v55 = v11;
  v56 = MEMORY[0x277CE1340];
  v57 = v13;
  v58 = v15;
  v16 = v13;
  v32 = v15;
  v34 = MEMORY[0x277CE0E60];
  v17 = swift_getOpaqueTypeMetadata2();
  v35 = *(v17 - 8);
  v18 = *(v35 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  sub_23D8DE5D0();
  v46 = a5;
  v47 = a6;
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v41 = a5;
  v42 = a6;
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v24 = swift_checkMetadataState();
  v25 = swift_checkMetadataState();
  v26 = swift_checkMetadataState();
  v27 = MEMORY[0x277CE1350];
  sub_23D8DE0A0();
  v51 = v24;
  v52 = v27;
  v53 = v25;
  v54 = v26;
  v55 = v14;
  v56 = MEMORY[0x277CE1340];
  v57 = v16;
  v58 = v32;
  v28 = swift_getOpaqueTypeConformance2();
  sub_23D8361EC(v21, v17, v28);
  v29 = *(v35 + 8);
  v29(v21, v17);
  sub_23D8361EC(v23, v17, v28);
  return (v29)(v23, v17);
}

uint64_t sub_23D88B4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a4;
  v28 = a3;
  v30 = a1;
  v31 = a7;
  type metadata accessor for BottomPocketModifier();
  swift_getWitnessTable();
  v10 = sub_23D8DD7F0();
  swift_getOpaqueTypeMetadata2();
  v11 = sub_23D8DD6C0();
  v27[0] = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = a6;
  WitnessTable = swift_getWitnessTable();
  v37 = v10;
  v38 = v11;
  v39 = v27[0];
  v40 = WitnessTable;
  v27[1] = MEMORY[0x277CDEE48];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v27 - v19;
  v32 = a5;
  v33 = a6;
  v34 = a2;
  v35 = v28;
  v36 = v29;
  sub_23D8DD560();
  v21 = swift_checkMetadataState();
  v22 = swift_checkMetadataState();
  v23 = v27[0];
  sub_23D8DDFC0();
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = WitnessTable;
  v24 = swift_getOpaqueTypeConformance2();
  sub_23D8361EC(v18, OpaqueTypeMetadata2, v24);
  v25 = *(v14 + 8);
  v25(v18, OpaqueTypeMetadata2);
  sub_23D8361EC(v20, OpaqueTypeMetadata2, v24);
  return (v25)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_23D88B7D8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v31 = a6;
  v30 = *(a4 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &OpaqueTypeMetadata2 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v13;
  v43 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = sub_23D8DD6C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &OpaqueTypeMetadata2 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &OpaqueTypeMetadata2 - v22;
  a1(v21);
  v35 = a4;
  v36 = a5;
  v37 = a1;
  v38 = a2;
  v39 = v29;
  v33 = a4;
  v34 = a5;
  v42 = a4;
  v43 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.if<A>(_:transform:)(sub_23D88C5C8, sub_23D88C5D0, v32, a4, OpaqueTypeMetadata2, a5, OpaqueTypeConformance2, v20);
  (*(v30 + 8))(v12, a4);
  v40 = OpaqueTypeConformance2;
  v41 = a5;
  WitnessTable = swift_getWitnessTable();
  sub_23D8361EC(v20, v15, WitnessTable);
  v26 = *(v16 + 8);
  v26(v20, v15);
  sub_23D8361EC(v23, v15, WitnessTable);
  return (v26)(v23, v15);
}

uint64_t sub_23D88BA8C()
{
  v0 = sub_23D8DD550();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DD540();
  sub_23D8DDD50();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_23D88BB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a4;
  v26 = a1;
  v27 = a7;
  type metadata accessor for BottomPocketModifier();
  swift_getWitnessTable();
  sub_23D8DD7F0();
  sub_23D8DD4F0();
  v11 = sub_23D8DD020();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v24[-v17];
  v28 = a5;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v32 = v25;
  sub_23D8DD560();
  WitnessTable = swift_getWitnessTable();
  sub_23D8DDD90();
  v19 = swift_getWitnessTable();
  v33 = WitnessTable;
  v34 = v19;
  v20 = swift_getWitnessTable();
  sub_23D8361EC(v16, v11, v20);
  v21 = *(v12 + 8);
  v21(v16, v11);
  sub_23D8361EC(v18, v11, v20);
  return (v21)(v18, v11);
}

uint64_t sub_23D88BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  v12();
  sub_23D8361EC(v11, a4, a5);
  v15 = *(v7 + 8);
  v15(v11, a4);
  sub_23D8361EC(v14, a4, a5);
  return (v15)(v14, a4);
}

id sub_23D88BF34()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMinimumFractionDigits_];
  [v0 setMaximumFractionDigits_];
  result = [v0 setNumberStyle_];
  qword_27E2EF148 = v0;
  return result;
}

uint64_t sub_23D88BFAC()
{
  v1 = *(v0 + 32);
  v2 = (sub_23D8DE490() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + v4);

  v8 = *(v0 + v4 + 8);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23D88C0AC()
{
  v1 = *(v0 + 32);
  v2 = *(*(sub_23D8DE490() - 8) + 80);
  return MEMORY[0x23EEF05A0]();
}

uint64_t sub_23D88C114()
{
  v1 = *(v0 + 32);
  v2 = (sub_23D8DE490() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = (v0 + v4);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = v2[10];
  v15 = *(v5 + 8);
  v15(&v11[v14], v1);
  v15((v0 + v7), v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_23D88C268(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(sub_23D8DE490() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1 + ((v6 + *(v5 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_23D88A9F0(a1, v7, v8, v1 + v6, v9, v3);
}

id static NSNumberFormatter.decimal.getter()
{
  if (qword_27E2ECED0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2EF148;

  return v1;
}

uint64_t sub_23D88C3A4(int8x16_t *a1)
{
  v3 = a1->i64[0];
  v2 = a1->i64[1];
  sub_23D8DD6C0();
  v5 = vextq_s8(a1[1], a1[1], 8uLL);
  return swift_getWitnessTable();
}

uint64_t sub_23D88C404()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23D88C454(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23D88C49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D88C5D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23D88BA8C();
}

uint64_t sub_23D88C5D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BottomPocketModifier();
  swift_getWitnessTable();
  sub_23D8DD7F0();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD6C0();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD4F0();
  sub_23D8DD020();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D88C7F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23D88C838(uint64_t result, int a2, int a3)
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

uint64_t sub_23D88C8B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23D8DC250();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v46 = &v44 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v49 = v1;
  v15 = *(v1 + 2);
  if (!v15)
  {
    v43 = *(v49 + 3);
    sub_23D8DC430();
    sub_23D88D1FC(&unk_27E2F0420, MEMORY[0x277CE7230]);
    sub_23D8DD120();
    __break(1u);
    goto LABEL_27;
  }

  v47 = v15;
  sub_23D8DC2A0();
  v16 = *MEMORY[0x277CE7200];
  v45 = v4[13];
  v45(v12, v16, v3);
  sub_23D88D1FC(&qword_27E2EDE60, MEMORY[0x277CE7208]);
  sub_23D8DE980();
  sub_23D8DE980();
  v50 = a1;
  if (v53 == v52)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_23D8DED20();
  }

  v17 = v4[1];
  v17(v12, v3);
  v17(v14, v3);

  v19 = v46;
  v18 = v47;
  sub_23D8DC2A0();

  v45(v51, v16, v3);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v53 == v52)
  {
    v17(v51, v3);
    v17(v19, v3);

    v20 = v49;
    goto LABEL_8;
  }

  v21 = sub_23D8DED20();
  v17(v51, v3);
  v17(v19, v3);

  v20 = v49;
  if (v21)
  {
LABEL_8:
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v22 = 0x737561702E727861;
    if (!qword_27E2F3C80)
    {
      v23 = 0xE900000000000065;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v22 = 0x79616C702E727861;
  if (qword_27E2F3C80)
  {
LABEL_15:
    v24 = qword_27E2F3C80;
    v25 = sub_23D8DE830();
    v26 = sub_23D8DE830();
    v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

    v22 = sub_23D8DE870();
    v23 = v28;

    goto LABEL_16;
  }

  v23 = 0xE800000000000000;
LABEL_16:
  v53 = *v20;
  v30 = *(v20 + 4);
  v29 = *(v20 + 5);
  v31 = swift_allocObject();
  v32 = v20[1];
  v31[1] = *v20;
  v31[2] = v32;
  v31[3] = v20[2];
  v33 = v18;
  sub_23D88D184(&v53, &v52);

  sub_23D8DDA60();
  sub_23D8DDB00();
  v34 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  if (!v30)
  {
LABEL_27:
    sub_23D8DC9F0();
    sub_23D88D1FC(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v36 = KeyPath;
  sub_23D8380E8();

  sub_23D8DC960();

  sub_23D8DC7E0();

  v37 = sub_23D8DEB80();
  v38 = sub_23D8DEB70();

  if (v38)
  {
    result = sub_23D8DE220();
  }

  else
  {
    result = sub_23D8DE240();
  }

  v40 = 0xE90000000000006CLL;
  if (v48)
  {
    v40 = 0xEA00000000006C6CLL;
  }

  v41 = 0x6C69662E79616C70;
  if (v48)
  {
    v41 = 0x69662E6573756170;
  }

  v42 = v50;
  *v50 = v41;
  v42[1] = v40;
  v42[2] = v22;
  v42[3] = v23;
  v42[4] = 0;
  *(v42 + 40) = 1;
  v42[6] = sub_23D88D17C;
  v42[7] = v31;
  v42[8] = v36;
  v42[9] = v34;
  v42[10] = result;
  return result;
}

void sub_23D88CF5C(uint64_t a1)
{
  v2 = sub_23D8DC250();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v7;
    sub_23D8DC2A0();
    v9 = (*(v3 + 88))(v6, v2);
    if (v9 == *MEMORY[0x277CE7200])
    {
      sub_23D8DC3C0();
    }

    else if (v9 == *MEMORY[0x277CE71E8])
    {
      sub_23D8DC3E0();
    }

    else if (v9 == *MEMORY[0x277CE71F0])
    {
      sub_23D8DC3D0();
    }

    else if (v9 == *MEMORY[0x277CE71F8])
    {
      sub_23D8DC3A0();
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    v10 = *(a1 + 24);
    sub_23D8DC430();
    sub_23D88D1FC(&unk_27E2F0420, MEMORY[0x277CE7230]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D88D134()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D88D184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF1D8, &qword_23D8E3698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D88D1FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D88D248()
{
  result = qword_27E2EF1E0;
  if (!qword_27E2EF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF1E8, &qword_23D8E36D0);
    sub_23D88D300();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF1E0);
  }

  return result;
}

unint64_t sub_23D88D300()
{
  result = qword_27E2EF1F0;
  if (!qword_27E2EF1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF1F8, &qword_23D8E36D8);
    sub_23D88D3B8();
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF1F0);
  }

  return result;
}

unint64_t sub_23D88D3B8()
{
  result = qword_27E2EF200;
  if (!qword_27E2EF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF200);
  }

  return result;
}

uint64_t sub_23D88D444@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23D88D4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, float a9@<S0>)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v15 = sub_23D8DC4D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D83C744(a1, a8, &qword_27E2ED118, "r^");
  v20 = type metadata accessor for SSHUDRoundView();
  sub_23D83C744(a2, a8 + v20[9], &qword_27E2ED110, &unk_23D8E03D0);
  v21 = (a8 + v20[10]);
  type metadata accessor for SSStore();
  sub_23D898790(&qword_27E2ED008, type metadata accessor for SSStore);
  *v21 = sub_23D8DD140();
  v21[1] = v22;
  v23 = a8 + v20[11];
  *&v45 = a9;
  sub_23D8DE310();
  v24 = *(&v46 + 1);
  *v23 = v46;
  *(v23 + 8) = v24;
  v25 = a8 + v20[12];
  LOBYTE(v45) = a3;
  sub_23D8DE310();
  v26 = *(&v46 + 1);
  *v25 = v46;
  *(v25 + 8) = v26;
  v27 = v20[13];
  v45 = 8;
  sub_23D8DE310();
  *(a8 + v27) = v46;
  v28 = (a8 + v20[14]);
  *v28 = sub_23D883540();
  v28[1] = v29;
  v30 = (a8 + v20[15]);
  v31 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v45 = [v31 init];
  sub_23D856774(0, &qword_27E2EF328, 0x277D755B8);
  sub_23D8DE310();
  v32 = *(&v46 + 1);
  *v30 = v46;
  v30[1] = v32;
  v33 = (a8 + v20[16]);
  v34 = *(a7 + 8);
  *v33 = sub_23D8DCEF0();
  v33[1] = v35;
  v36 = a8 + v20[17];
  LOBYTE(v45) = 0;
  sub_23D8DE310();
  v37 = *(&v46 + 1);
  *v36 = v46;
  *(v36 + 8) = v37;
  v38 = v20[18];
  (*(v16 + 104))(v19, *MEMORY[0x277CE7238], v15);
  result = sub_23D88DD18(v19);
  v40 = a8 + v20[19];
  v41 = v44;
  *v40 = v43;
  *(v40 + 8) = v41;
  *(v40 + 16) = 0;
  return result;
}

uint64_t sub_23D88D7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23D83C67C(v2, &v17 - v11, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCCB0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_23D88D9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D8DD3C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_23D83C67C(v2 + *(a1 + 36), &v18 - v12, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23D8DCF90();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_23D8DEAB0();
    v17 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_23D88DBC0(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
  sub_23D8DE320();
  return v3;
}

uint64_t sub_23D88DC14(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
  return sub_23D8DE330();
}

uint64_t sub_23D88DC6C(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE320();
  return v3;
}

uint64_t sub_23D88DCC0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  return sub_23D8DE330();
}

uint64_t sub_23D88DD18(uint64_t a1)
{
  v2 = sub_23D8DC4D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_23D8DE310();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_23D88DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D8DC4D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *(a2 + 72);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
  sub_23D8DE330();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_23D88DF20(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  sub_23D8DBFB0();
  sub_23D898790(qword_27E2EEC90, MEMORY[0x277CE78A0]);

  return sub_23D8DCD40();
}

uint64_t SSHUDRoundView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v101 = sub_23D8DCCB0();
  v100 = *(v101 - 8);
  v4 = *(v100 + 64);
  v5 = MEMORY[0x28223BE20](v101);
  v99 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = &v87 - v7;
  v94 = sub_23D8DC4D0();
  v95 = *(v94 - 8);
  v8 = *(v95 + 64);
  v9 = MEMORY[0x28223BE20](v94);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v111 = v13;
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF208, &qword_23D8E3710);
  v15 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v17 = &v87 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF210, &qword_23D8E3718);
  v92 = *(v91 - 8);
  v18 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  v107 = &v87 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF218, &qword_23D8E3720);
  v20 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v108 = &v87 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF220, &qword_23D8E3728);
  v23 = *(v22 - 8);
  v97 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v93 = &v87 - v25;
  *v17 = sub_23D8DD560();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF228, &qword_23D8E3730) + 44);
  v27 = *(a1 + 24);
  v106 = *(a1 + 16);
  v28 = v106;
  v29 = v27;
  v104 = v27;
  v30 = type metadata accessor for SSHUDRoundView();
  sub_23D88EB34(v30, &v17[v26]);
  v31 = v2 + *(a1 + 64);
  v103 = v2;
  v118 = [*(v31 + 8) stopType];
  v32 = v11;
  v33 = v11 + 16;
  v34 = *(v11 + 16);
  v110 = v33;
  v88 = v14;
  v34(v14, v2, a1);
  v105 = *(v32 + 80);
  v35 = v32;
  v36 = (v105 + 32) & ~v105;
  v37 = swift_allocObject();
  *(v37 + 16) = v28;
  *(v37 + 24) = v29;
  v109 = *(v35 + 32);
  v112 = v35 + 32;
  v109(v37 + v36, v14, a1);
  type metadata accessor for AXSpeakStopType(0);
  v87 = v38;
  v39 = sub_23D835AD0(&qword_27E2EF238, &qword_27E2EF208, &qword_23D8E3710);
  v40 = sub_23D898790(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  v41 = v89;
  sub_23D8DE070();

  sub_23D83C6E4(v17, &qword_27E2EF208, &qword_23D8E3710);
  v42 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
  v43 = v103;
  v44 = v90;
  sub_23D8DE320();
  v45 = v88;
  v34(v88, v43, a1);
  v46 = swift_allocObject();
  v47 = v104;
  *(v46 + 16) = v106;
  *(v46 + 24) = v47;
  v109(v46 + v36, v45, a1);
  v118 = v41;
  v119 = v87;
  v120 = v39;
  v121 = v40;
  swift_getOpaqueTypeConformance2();
  sub_23D898790(&qword_27E2EF240, MEMORY[0x277CE7250]);
  v48 = v91;
  v49 = v94;
  v50 = v107;
  sub_23D8DE060();

  (*(v95 + 8))(v44, v49);
  (*(v92 + 8))(v50, v48);
  v51 = v45;
  v52 = v45;
  v53 = v103;
  v34(v52, v103, a1);
  v54 = swift_allocObject();
  v55 = v106;
  v56 = v104;
  *(v54 + 16) = v106;
  *(v54 + 24) = v56;
  v109(v54 + v36, v51, a1);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF248, &qword_23D8E3740);
  v58 = v108;
  v59 = &v108[*(v57 + 36)];
  *v59 = sub_23D8969DC;
  v59[1] = v54;
  v59[2] = 0;
  v59[3] = 0;
  v34(v51, v53, a1);
  v60 = swift_allocObject();
  *(v60 + 16) = v55;
  *(v60 + 24) = v56;
  v109(v60 + v36, v51, a1);
  v61 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF250, &qword_23D8E3748) + 36));
  *v61 = 0;
  v61[1] = 0;
  v61[2] = sub_23D896A8C;
  v61[3] = v60;
  LOBYTE(v60) = sub_23D8DD9E0();
  sub_23D8DCC20();
  v62 = v96;
  v63 = v58 + *(v96 + 36);
  *v63 = v60;
  *(v63 + 8) = v64;
  *(v63 + 16) = v65;
  *(v63 + 24) = v66;
  *(v63 + 32) = v67;
  *(v63 + 40) = 0;
  sub_23D8DE5D0();
  v116 = v55;
  v117 = v56;
  v113 = v55;
  v114 = v56;
  v115 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF258, &qword_23D8E3750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF260, &qword_23D8E3758);
  v68 = sub_23D896B00();
  v69 = sub_23D8DD090();
  v70 = sub_23D898790(&qword_27E2EE3D0, MEMORY[0x277CDFC08]);
  v118 = v62;
  v119 = v69;
  v120 = v68;
  v121 = v70;
  swift_getOpaqueTypeConformance2();
  sub_23D896DF0();
  v71 = v93;
  sub_23D8DE0A0();
  sub_23D83C6E4(v58, &qword_27E2EF218, &qword_23D8E3720);
  v72 = v71;
  v73 = &v71[*(v97 + 44)];
  v74 = *(swift_checkMetadataState() + 20);
  v75 = *MEMORY[0x277CE0118];
  v76 = sub_23D8DD4E0();
  (*(*(v76 - 8) + 104))(&v73->i8[v74], v75, v76);
  *v73 = vdupq_n_s64(0x4042000000000000uLL);
  *(v73->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE30, &qword_23D8E4AD0) + 36)) = 256;
  v77 = v98;
  sub_23D88D7BC(v98);
  v78 = v100;
  v79 = v99;
  v80 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x277CDF3C0], v101);
  v81 = v79;
  LOBYTE(v79) = sub_23D8DCCA0();
  v82 = *(v78 + 8);
  v82(v81, v80);
  v82(v77, v80);
  if (v79)
  {
    sub_23D8DE240();
  }

  else
  {
    sub_23D8DE220();
  }

  v83 = sub_23D8DE250();

  v84 = v102;
  sub_23D896EA8(v72, v102);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2EF288, &qword_23D8E3760);
  v86 = (v84 + *(result + 36));
  *v86 = v83;
  v86[1] = 0x4020000000000000;
  v86[2] = 0;
  v86[3] = 0;
  return result;
}

uint64_t sub_23D88EB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DD420();
  v5 = sub_23D88F560(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF358, &qword_23D8E3818);
  v7 = *(a1 + 24);
  sub_23D88F730(*(a1 + 16), (a2 + *(v6 + 44)));
  LOBYTE(a1) = sub_23D8DD9D0();
  sub_23D8DCC20();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF360, &qword_23D8E3820);
  v17 = a2 + *(result + 36);
  *v17 = a1;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

id sub_23D88EC00(uint64_t a1)
{
  v2 = type metadata accessor for SSHUDRoundView();
  result = [*(a1 + *(v2 + 64) + 8) stopType];
  if (result)
  {
    return sub_23D88EC50(v2);
  }

  return result;
}

uint64_t sub_23D88EC50(uint64_t a1)
{
  v2 = sub_23D88DC6C(a1);
  [v2 invalidate];

  sub_23D88DCC0(0, a1);

  return sub_23D88DC14(8, a1);
}

uint64_t sub_23D88ECB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SSHUDRoundView();
  v5 = *(a3 + *(v4 + 64) + 8);
  swift_unknownObjectRetain();
  sub_23D8DC490();
  [v5 speedButtonSelectionPressed_];
  swift_unknownObjectRelease();
  sub_23D88EC50(v4);
  return sub_23D88EFF0(v4);
}

uint64_t sub_23D88ED3C(uint64_t a1)
{
  v2 = sub_23D8DC4D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v30 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v31 = &v28 - v12;
  v13 = type metadata accessor for SSHUDRoundView();
  sub_23D88EFF0(v13);
  v29 = v13;
  v14 = *(v13 + 64);
  v33 = a1;
  [*(a1 + v14 + 8) speakingRateAsMultiplier];
  v16 = v15;
  result = sub_23D8DC4B0();
  v18 = result;
  v19 = *(result + 16);
  if (!v19)
  {
  }

  v20 = 0;
  v21 = v16;
  while (v20 < *(v18 + 16))
  {
    v22 = *(v3 + 16);
    v22(v9, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v2);
    sub_23D8DC490();
    if (vabds_f32(v23, v21) < 0.01)
    {

      v24 = *(v3 + 32);
      v25 = v30;
      v24(v30, v9, v2);
      v26 = v31;
      v24(v31, v25, v2);
      v27 = v32;
      v22(v32, v26, v2);
      sub_23D88DE10(v27, v29);
      return (*(v3 + 8))(v26, v2);
    }

    ++v20;
    result = (*(v3 + 8))(v9, v2);
    if (v19 == v20)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D88EFF0(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, v1, a1);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a1 + 16);
  (*(v3 + 32))(v8 + v7, v5, a1);
  aBlock[4] = sub_23D8978D8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D87DA4C;
  aBlock[3] = &block_descriptor_3;
  v9 = _Block_copy(aBlock);

  v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
  _Block_release(v9);
  return sub_23D88DCC0(v10, a1);
}

uint64_t sub_23D88F1BC()
{
  v0 = sub_23D8DD090();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v2 + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_23D8DD4E0();
  (*(*(v7 - 8) + 104))(&v4->i8[v5], v6, v7);
  *v4 = vdupq_n_s64(0x4042000000000000uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF218, &qword_23D8E3720);
  sub_23D896B00();
  sub_23D898790(&qword_27E2EE3D0, MEMORY[0x277CDFC08]);
  sub_23D8DDCC0();
  return sub_23D868410(v4);
}

uint64_t sub_23D88F310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v3 = sub_23D8DE150();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DCCB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_23D88D7BC(&v23 - v14);
  (*(v9 + 104))(v13, *MEMORY[0x277CDF3C0], v8);
  v16 = sub_23D8DCCA0();
  v17 = *(v9 + 8);
  v17(v13, v8);
  v17(v15, v8);
  if (v16)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v3);
    v18 = sub_23D8DE280();
  }

  else
  {
    v18 = sub_23D8DE240();
  }

  v19 = v18;
  v20 = sub_23D8DD9E0();
  sub_23D897868(v24, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF260, &qword_23D8E3758);
  v22 = a2 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v20;
  return result;
}

double sub_23D88F560(uint64_t a1)
{
  v2 = sub_23D8DCF90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D88D9BC(a1, v6);
  v7 = (*(v3 + 88))(v6, v2);
  v8.n128_u64[0] = 30.0;
  if (v7 != *MEMORY[0x277CDF9F8] && v7 != *MEMORY[0x277CDF9E0] && v7 != *MEMORY[0x277CDF9E8] && v7 != *MEMORY[0x277CDF9D8] && v7 != *MEMORY[0x277CDF9F0] && v7 != *MEMORY[0x277CDFA00] && v7 != *MEMORY[0x277CDFA10])
  {
    v8.n128_u64[0] = 26.0;
    if (v7 != *MEMORY[0x277CDF988])
    {
      v8.n128_u64[0] = 22.0;
      if (v7 != *MEMORY[0x277CDF998])
      {
        v8.n128_u64[0] = 16.0;
        if (v7 != *MEMORY[0x277CDF9A8] && v7 != *MEMORY[0x277CDF9B8] && v7 != *MEMORY[0x277CDF9D0])
        {
          (*(v3 + 8))(v6, v2, v8);
          v8.n128_u64[0] = 30.0;
        }
      }
    }
  }

  return v8.n128_f64[0];
}

uint64_t sub_23D88F730@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, char *a2@<X8>)
{
  v56 = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF368, &qword_23D8E3828);
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = v65[8];
  v4 = MEMORY[0x28223BE20](v2);
  v64 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF370, &qword_23D8E3830);
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v67 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF378, &qword_23D8E3838);
  v53 = *(v14 - 8);
  v15 = v53;
  v16 = *(v53 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v59 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v60 = &v50 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v58 = &v50 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v50 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v50 - v30;
  v32 = type metadata accessor for SSHUDRoundView();
  v55 = v31;
  sub_23D88FC90(v32, v31);
  v54 = v29;
  sub_23D8905A4(v32, v29);
  v52 = v13;
  sub_23D890EBC(v32, v13);
  v51 = v26;
  sub_23D891C04(v32, v26);
  v33 = v61;
  sub_23D89251C(v32, v61);
  v34 = *(v15 + 16);
  v35 = v58;
  v34(v58, v31, v14);
  v34(v21, v29, v14);
  v36 = v62;
  v56 = *(v63 + 16);
  v56(v67, v13, v62);
  v37 = v59;
  v34(v59, v26, v14);
  v38 = v65[2];
  v38(v64, v33, v66);
  v39 = v57;
  v34(v57, v35, v14);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF380, &qword_23D8E3840);
  v34(&v39[v40[12]], v60, v14);
  v56(&v39[v40[16]], v67, v36);
  v34(&v39[v40[20]], v37, v14);
  v41 = &v39[v40[24]];
  v42 = v64;
  v43 = v66;
  v38(v41, v64, v66);
  v44 = v65[1];
  v45 = v43;
  v44(v61, v43);
  v46 = *(v53 + 8);
  v46(v51, v14);
  v47 = v62;
  v48 = *(v63 + 8);
  v48(v52, v62);
  v46(v54, v14);
  v46(v55, v14);
  v44(v42, v45);
  v46(v59, v14);
  v48(v67, v47);
  v46(v60, v14);
  return (v46)(v58, v14);
}

uint64_t sub_23D88FC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v4 = *(*(v69 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v69);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v63 - v7;
  v77 = sub_23D8DCF90();
  v79 = *(v77 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x28223BE20](v77);
  v78 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v63 - v13;
  v14 = sub_23D8DD080();
  v15 = *(v14 - 8);
  v74 = v14;
  v75 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v71 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C0, &qword_23D8E39F0);
  v22 = *(v21 - 8);
  v72 = v21;
  v73 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C8, &qword_23D8E39F8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v63 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D0, &qword_23D8E3A00);
  v30 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v80 = &v63 - v31;
  (*(v19 + 16))(&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v32 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v33 = swift_allocObject();
  v34 = a1;
  v35 = *(a1 + 16);
  v36 = *(v34 + 24);
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  (*(v19 + 32))(v33 + v32, &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v29;
  v38 = v26;
  v81 = v35;
  v82 = v36;
  v83 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D8, &qword_23D8E3A08);
  sub_23D8986D8();
  sub_23D8DE360();
  v39 = v71;
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF4E8, &qword_27E2EF4C0, &qword_23D8E39F0);
  sub_23D898790(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
  v40 = v72;
  v41 = v74;
  sub_23D8DDD10();
  (*(v75 + 8))(v39, v41);
  (*(v73 + 8))(v25, v40);
  *(v37 + *(v38 + 36)) = sub_23D8DE260();
  v42 = 0x800000023D8E6980;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v43 = 0xD00000000000001CLL;
  if (qword_27E2F3C80)
  {
    v44 = qword_27E2F3C80;
    v45 = sub_23D8DE830();
    v46 = sub_23D8DE830();
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    v43 = sub_23D8DE870();
    v42 = v48;
  }

  v50 = v76;
  v49 = v77;
  v84 = v43;
  v85 = v42;
  sub_23D8987D8();
  sub_23D83CB18();
  sub_23D8DDE10();

  sub_23D83C6E4(v37, &qword_27E2EF4C8, &qword_23D8E39F8);
  v51 = v79;
  v52 = *(v79 + 104);
  v52(v50, *MEMORY[0x277CDF9E8], v49);
  v53 = v78;
  v52(v78, *MEMORY[0x277CDF9A8], v49);
  sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
  result = sub_23D8DE810();
  if (result)
  {
    v55 = *(v51 + 32);
    v56 = v65;
    v55(v65, v50, v49);
    v57 = v69;
    v55((v56 + *(v69 + 48)), v53, v49);
    v58 = v68;
    sub_23D83C67C(v56, v68, &qword_27E2EF388, &qword_23D8E3848);
    v59 = *(v57 + 48);
    v60 = v66;
    v55(v66, v58, v49);
    v61 = *(v51 + 8);
    v61(v58 + v59, v49);
    sub_23D83C744(v56, v58, &qword_27E2EF388, &qword_23D8E3848);
    v55((v60 + *(v67 + 36)), (v58 + *(v57 + 48)), v49);
    v61(v58, v49);
    sub_23D897FAC(&qword_27E2EF4F8, &qword_27E2EF4D0, &qword_23D8E3A00, sub_23D8987D8);
    sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850);
    v62 = v80;
    sub_23D8DDDD0();
    sub_23D83C6E4(v60, &qword_27E2EF390, &qword_23D8E3850);
    return sub_23D83C6E4(v62, &qword_27E2EF4D0, &qword_23D8E3A00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8905A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v4 = *(*(v69 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v69);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v63 - v7;
  v77 = sub_23D8DCF90();
  v79 = *(v77 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x28223BE20](v77);
  v78 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v63 - v13;
  v14 = sub_23D8DD080();
  v15 = *(v14 - 8);
  v74 = v14;
  v75 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v71 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C0, &qword_23D8E39F0);
  v22 = *(v21 - 8);
  v72 = v21;
  v73 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C8, &qword_23D8E39F8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v63 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D0, &qword_23D8E3A00);
  v30 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v80 = &v63 - v31;
  (*(v19 + 16))(&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v32 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v33 = swift_allocObject();
  v34 = a1;
  v35 = *(a1 + 16);
  v36 = *(v34 + 24);
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  (*(v19 + 32))(v33 + v32, &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v29;
  v38 = v26;
  v81 = v35;
  v82 = v36;
  v83 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D8, &qword_23D8E3A08);
  sub_23D8986D8();
  sub_23D8DE360();
  v39 = v71;
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF4E8, &qword_27E2EF4C0, &qword_23D8E39F0);
  sub_23D898790(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
  v40 = v72;
  v41 = v74;
  sub_23D8DDD10();
  (*(v75 + 8))(v39, v41);
  (*(v73 + 8))(v25, v40);
  *(v37 + *(v38 + 36)) = sub_23D8DE260();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v42 = 0xEA0000000000646ELL;
  v43 = 0x697765722E727861;
  if (qword_27E2F3C80)
  {
    v44 = qword_27E2F3C80;
    v45 = sub_23D8DE830();
    v46 = sub_23D8DE830();
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    v43 = sub_23D8DE870();
    v42 = v48;
  }

  v50 = v76;
  v49 = v77;
  v84 = v43;
  v85 = v42;
  sub_23D8987D8();
  sub_23D83CB18();
  sub_23D8DDE10();

  sub_23D83C6E4(v37, &qword_27E2EF4C8, &qword_23D8E39F8);
  v51 = v79;
  v52 = *(v79 + 104);
  v52(v50, *MEMORY[0x277CDF9E8], v49);
  v53 = v78;
  v52(v78, *MEMORY[0x277CDF9A8], v49);
  sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
  result = sub_23D8DE810();
  if (result)
  {
    v55 = *(v51 + 32);
    v56 = v65;
    v55(v65, v50, v49);
    v57 = v69;
    v55((v56 + *(v69 + 48)), v53, v49);
    v58 = v68;
    sub_23D83C67C(v56, v68, &qword_27E2EF388, &qword_23D8E3848);
    v59 = *(v57 + 48);
    v60 = v66;
    v55(v66, v58, v49);
    v61 = *(v51 + 8);
    v61(v58 + v59, v49);
    sub_23D83C744(v56, v58, &qword_27E2EF388, &qword_23D8E3848);
    v55((v60 + *(v67 + 36)), (v58 + *(v57 + 48)), v49);
    v61(v58, v49);
    sub_23D897FAC(&qword_27E2EF4F8, &qword_27E2EF4D0, &qword_23D8E3A00, sub_23D8987D8);
    sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850);
    v62 = v80;
    sub_23D8DDDD0();
    sub_23D83C6E4(v60, &qword_27E2EF390, &qword_23D8E3850);
    return sub_23D83C6E4(v62, &qword_27E2EF4D0, &qword_23D8E3A00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D890EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v5 = *(*(v85 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v85);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v81 - v8;
  v9 = sub_23D8DCF90();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = &v81 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  v14 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v81 - v15;
  v16 = sub_23D8DD530();
  v96 = *(v16 - 8);
  v97 = v16;
  v17 = *(v96 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF500, &qword_23D8E3A10);
  v23 = *(v22 - 8);
  v91 = v22;
  v92 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v105 = &v81 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF508, &qword_23D8E3A18);
  v27 = *(v26 - 8);
  v93 = v26;
  v94 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v89 = &v81 - v29;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF510, &qword_23D8E3A20);
  v30 = *(*(v102 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v102);
  v90 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v88 = &v81 - v34;
  MEMORY[0x28223BE20](v33);
  v103 = &v81 - v35;
  v87 = sub_23D8DD560();
  v116 = 1;
  v104 = a1;
  v36 = *(a1 + 24);
  v37 = *(a1 + 16);
  sub_23D893048(v3, &v131);
  v127 = v141;
  v128 = v142;
  v129 = v143;
  v123 = v137;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v119 = v133;
  v120 = v134;
  v121 = v135;
  v122 = v136;
  v117 = v131;
  v118 = v132;
  v130[10] = v141;
  v130[11] = v142;
  v130[12] = v143;
  v130[6] = v137;
  v130[7] = v138;
  v130[9] = v140;
  v130[8] = v139;
  v130[2] = v133;
  v130[3] = v134;
  v130[5] = v136;
  v130[4] = v135;
  v130[0] = v131;
  v130[1] = v132;
  sub_23D83C67C(&v117, &v113, &qword_27E2EF518, &qword_23D8E3A28);
  sub_23D83C6E4(v130, &qword_27E2EF518, &qword_23D8E3A28);
  *&v115[151] = v126;
  *&v115[167] = v127;
  *&v115[183] = v128;
  *&v115[199] = v129;
  *&v115[87] = v122;
  *&v115[103] = v123;
  *&v115[119] = v124;
  *&v115[135] = v125;
  *&v115[23] = v118;
  *&v115[39] = v119;
  *&v115[55] = v120;
  *&v115[71] = v121;
  *&v115[7] = v117;
  *&v114[161] = *&v115[160];
  *&v114[177] = *&v115[176];
  *&v114[193] = *&v115[192];
  *&v114[97] = *&v115[96];
  *&v114[113] = *&v115[112];
  *&v114[129] = *&v115[128];
  *&v114[145] = *&v115[144];
  *&v114[33] = *&v115[32];
  *&v114[49] = *&v115[48];
  *&v114[65] = *&v115[64];
  *&v114[81] = *&v115[80];
  *&v114[1] = *v115;
  v113 = v87;
  v114[0] = v116;
  *&v114[208] = *(&v129 + 1);
  *&v114[17] = *&v115[16];
  v38 = v104;
  (*(v20 + 16))(&v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v106, v104);
  v39 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v36;
  (*(v20 + 32))(v40 + v39, &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF520, &qword_23D8E3A30);
  v42 = sub_23D835AD0(&qword_27E2EF528, &qword_27E2EF520, &qword_23D8E3A30);
  sub_23D8DDD60();

  v143 = *&v114[176];
  v144 = *&v114[192];
  v139 = *&v114[112];
  v140 = *&v114[128];
  v142 = *&v114[160];
  v141 = *&v114[144];
  v135 = *&v114[48];
  v136 = *&v114[64];
  v145 = *&v114[208];
  v138 = *&v114[96];
  v137 = *&v114[80];
  v131 = v113;
  v132 = *v114;
  v134 = *&v114[32];
  v133 = *&v114[16];
  sub_23D83C6E4(&v131, &qword_27E2EF520, &qword_23D8E3A30);
  sub_23D8DE5D0();
  v110 = v37;
  v111 = v36;
  v112 = v106;
  v107 = v37;
  v108 = v36;
  v109 = v106;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF530, &qword_23D8E3A38);
  *&v113 = v41;
  *(&v113 + 1) = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = sub_23D898980();
  v45 = MEMORY[0x277CE1340];
  v46 = MEMORY[0x277CE1350];
  v47 = v89;
  v48 = v91;
  v49 = v105;
  sub_23D8DE0A0();
  v50 = v49;
  v51 = v48;
  (*(v92 + 8))(v50, v48);
  v52 = v95;
  sub_23D8DD520();
  *&v113 = v51;
  *(&v113 + 1) = v46;
  *v114 = v43;
  *&v114[8] = v43;
  *&v114[16] = OpaqueTypeConformance2;
  *&v114[24] = v45;
  *&v114[32] = v80;
  *&v114[40] = v80;
  swift_getOpaqueTypeConformance2();
  v53 = v90;
  v54 = v93;
  sub_23D8DDED0();
  v55 = v97;
  v56 = *(v96 + 8);
  v56(v52, v97);
  (*(v94 + 8))(v47, v54);
  v57 = v52;
  sub_23D8DD510();
  v58 = v88;
  sub_23D8DD010();
  v56(v57, v55);
  sub_23D83C6E4(v53, &qword_27E2EF510, &qword_23D8E3A20);
  if (![*(v106 + *(v104 + 64) + 8) isSpeaking])
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v60 = 0x79616C702E727861;
    v61 = v101;
    v63 = v98;
    v62 = v99;
    if (!qword_27E2F3C80)
    {
      v59 = 0xE800000000000000;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (qword_27E2ECEC8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v59 = 0xE900000000000065;
    v60 = 0x737561702E727861;
    v61 = v101;
    v63 = v98;
    v62 = v99;
    if (qword_27E2F3C80)
    {
LABEL_8:
      v64 = qword_27E2F3C80;
      v65 = sub_23D8DE830();
      v66 = sub_23D8DE830();
      v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

      v60 = sub_23D8DE870();
      v59 = v68;
    }

LABEL_10:
    *&v113 = v60;
    *(&v113 + 1) = v59;
    sub_23D83CB18();
    sub_23D8DCFD0();

    sub_23D83C6E4(v58, &qword_27E2EF510, &qword_23D8E3A20);
    v69 = v100;
    v70 = *(v100 + 104);
    v70(v63, *MEMORY[0x277CDF9E8], v61);
    v70(v62, *MEMORY[0x277CDF9A8], v61);
    sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
    if (sub_23D8DE810())
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v71 = *(v69 + 32);
  v72 = v83;
  v71(v83, v63, v61);
  v73 = v85;
  v71((v72 + *(v85 + 48)), v62, v61);
  v74 = v61;
  v75 = v84;
  sub_23D83C67C(v72, v84, &qword_27E2EF388, &qword_23D8E3848);
  v106 = *(v73 + 48);
  v76 = v81;
  v71(v81, v75, v74);
  v77 = *(v69 + 8);
  v77(v75 + v106, v74);
  sub_23D83C744(v72, v75, &qword_27E2EF388, &qword_23D8E3848);
  v71((v76 + *(v82 + 36)), (v75 + *(v73 + 48)), v74);
  v77(v75, v74);
  sub_23D898AA8();
  sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850);
  v78 = v103;
  sub_23D8DDDD0();
  sub_23D83C6E4(v76, &qword_27E2EF390, &qword_23D8E3850);
  return sub_23D83C6E4(v78, &qword_27E2EF510, &qword_23D8E3A20);
}

uint64_t sub_23D891C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v4 = *(*(v69 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v69);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v63 - v7;
  v77 = sub_23D8DCF90();
  v79 = *(v77 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x28223BE20](v77);
  v78 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v63 - v13;
  v14 = sub_23D8DD080();
  v15 = *(v14 - 8);
  v74 = v14;
  v75 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v71 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C0, &qword_23D8E39F0);
  v22 = *(v21 - 8);
  v72 = v21;
  v73 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C8, &qword_23D8E39F8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v63 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D0, &qword_23D8E3A00);
  v30 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v80 = &v63 - v31;
  (*(v19 + 16))(&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v32 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v33 = swift_allocObject();
  v34 = a1;
  v35 = *(a1 + 16);
  v36 = *(v34 + 24);
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  (*(v19 + 32))(v33 + v32, &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v29;
  v38 = v26;
  v81 = v35;
  v82 = v36;
  v83 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D8, &qword_23D8E3A08);
  sub_23D8986D8();
  sub_23D8DE360();
  v39 = v71;
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF4E8, &qword_27E2EF4C0, &qword_23D8E39F0);
  sub_23D898790(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
  v40 = v72;
  v41 = v74;
  sub_23D8DDD10();
  (*(v75 + 8))(v39, v41);
  (*(v73 + 8))(v25, v40);
  *(v37 + *(v38 + 36)) = sub_23D8DE260();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v42 = 0xEB00000000647261;
  v43 = 0x77726F662E727861;
  if (qword_27E2F3C80)
  {
    v44 = qword_27E2F3C80;
    v45 = sub_23D8DE830();
    v46 = sub_23D8DE830();
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    v43 = sub_23D8DE870();
    v42 = v48;
  }

  v50 = v76;
  v49 = v77;
  v84 = v43;
  v85 = v42;
  sub_23D8987D8();
  sub_23D83CB18();
  sub_23D8DDE10();

  sub_23D83C6E4(v37, &qword_27E2EF4C8, &qword_23D8E39F8);
  v51 = v79;
  v52 = *(v79 + 104);
  v52(v50, *MEMORY[0x277CDF9E8], v49);
  v53 = v78;
  v52(v78, *MEMORY[0x277CDF9A8], v49);
  sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
  result = sub_23D8DE810();
  if (result)
  {
    v55 = *(v51 + 32);
    v56 = v65;
    v55(v65, v50, v49);
    v57 = v69;
    v55((v56 + *(v69 + 48)), v53, v49);
    v58 = v68;
    sub_23D83C67C(v56, v68, &qword_27E2EF388, &qword_23D8E3848);
    v59 = *(v57 + 48);
    v60 = v66;
    v55(v66, v58, v49);
    v61 = *(v51 + 8);
    v61(v58 + v59, v49);
    sub_23D83C744(v56, v58, &qword_27E2EF388, &qword_23D8E3848);
    v55((v60 + *(v67 + 36)), (v58 + *(v57 + 48)), v49);
    v61(v58, v49);
    sub_23D897FAC(&qword_27E2EF4F8, &qword_27E2EF4D0, &qword_23D8E3A00, sub_23D8987D8);
    sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850);
    v62 = v80;
    sub_23D8DDDD0();
    sub_23D83C6E4(v60, &qword_27E2EF390, &qword_23D8E3850);
    return sub_23D83C6E4(v62, &qword_27E2EF4D0, &qword_23D8E3A00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89251C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v4 = *(*(v69 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v69);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v63 - v7;
  v8 = sub_23D8DCF90();
  v9 = *(v8 - 8);
  v86 = v8;
  v87 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v85 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v63 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  v14 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v63 - v15;
  v16 = sub_23D8DD8B0();
  v17 = *(v16 - 8);
  v83 = v16;
  v84 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v82 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_23D8DE6B0();
  v76 = *(v78 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF398, &qword_23D8E3858);
  v72 = *(v23 - 8);
  v24 = *(v72 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3A0, &qword_23D8E3860);
  v74 = *(v27 - 8);
  v28 = *(v74 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v63 - v29;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3A8, &qword_23D8E3868);
  v79 = *(v77 - 8);
  v31 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  v71 = &v63 - v32;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3B0, &qword_23D8E3870);
  v33 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v35 = &v63 - v34;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3B8, &qword_23D8E3878);
  v36 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v88 = &v63 - v37;
  v75 = a1;
  v38 = *(a1 + 24);
  v92 = *(a1 + 16);
  v93 = v38;
  v73 = v2;
  v94 = v2;
  v89 = v92;
  v90 = v38;
  v91 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3C8, &qword_23D8E3888);
  sub_23D897AA4();
  sub_23D897C14();
  v39 = v81;
  sub_23D8DDBE0();
  sub_23D8DE6A0();
  v40 = sub_23D835AD0(&qword_27E2EF400, &qword_27E2EF398, &qword_23D8E3858);
  sub_23D8DE0D0();
  (*(v76 + 8))(v22, v78);
  (*(v72 + 8))(v26, v23);
  v97 = v23;
  v98 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v71;
  sub_23D8DDF40();
  (*(v74 + 8))(v30, v27);
  v43 = v82;
  sub_23D8DD8A0();
  v97 = v27;
  v98 = OpaqueTypeConformance2;
  v44 = v85;
  swift_getOpaqueTypeConformance2();
  sub_23D898790(&qword_27E2EF408, MEMORY[0x277CDE310]);
  v45 = v77;
  v46 = v83;
  sub_23D8DE0E0();
  (*(v84 + 8))(v43, v46);
  (*(v79 + 8))(v42, v45);
  KeyPath = swift_getKeyPath();
  v48 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF410, &qword_23D8E38D0) + 36)];
  *v48 = KeyPath;
  v48[8] = 2;
  *&v35[*(v80 + 36)] = 257;
  sub_23D896888(v75);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v95 = v96;
  v97 = SSActions.title.getter();
  v98 = v49;
  sub_23D897D28();
  sub_23D83CB18();
  sub_23D8DDE10();

  v50 = v35;
  v51 = v86;
  sub_23D83C6E4(v50, &qword_27E2EF3B0, &qword_23D8E3870);
  v52 = v87;
  v53 = *(v87 + 104);
  v53(v39, *MEMORY[0x277CDF9E8], v51);
  v53(v44, *MEMORY[0x277CDF9A8], v51);
  sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
  result = sub_23D8DE810();
  if (result)
  {
    v55 = *(v52 + 32);
    v56 = v65;
    v55(v65, v39, v51);
    v57 = v69;
    v55((v56 + *(v69 + 48)), v44, v51);
    v58 = v68;
    sub_23D83C67C(v56, v68, &qword_27E2EF388, &qword_23D8E3848);
    v59 = *(v57 + 48);
    v60 = v66;
    v55(v66, v58, v51);
    v61 = *(v52 + 8);
    v61(v58 + v59, v51);
    sub_23D83C744(v56, v58, &qword_27E2EF388, &qword_23D8E3848);
    v55((v60 + *(v67 + 36)), (v58 + *(v57 + 48)), v51);
    v61(v58, v51);
    sub_23D897FAC(&qword_27E2EF438, &qword_27E2EF3B8, &qword_23D8E3878, sub_23D897D28);
    sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850);
    v62 = v88;
    sub_23D8DDDD0();
    sub_23D83C6E4(v60, &qword_27E2EF390, &qword_23D8E3850);
    return sub_23D83C6E4(v62, &qword_27E2EF3B8, &qword_23D8E3878);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_23D893048@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DE2D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SSHUDRoundView();
  [*(a1 + *(v9 + 64) + 8) isSpeaking];
  sub_23D8DE2C0();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_23D8DE300();

  (*(v5 + 8))(v8, v4);
  sub_23D893408(v9, 15.0);
  sub_23D893408(v9, 15.0);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v43 = 1;
  *&v42[6] = v45;
  *&v42[22] = v46;
  *&v42[38] = v47;
  LOBYTE(v4) = sub_23D8DD9E0();
  sub_23D8DCC20();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v44 = 0;
  v19 = sub_23D893650(v9);
  sub_23D8937D0(v9);
  v20 = sub_23D8DE130();
  sub_23D8939A0(v9, 40.0);
  sub_23D8939A0(v9, 40.0);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v27[6] = v48;
  *&v27[22] = v49;
  *&v27[38] = v50;
  v21 = sub_23D8DE5F0();
  *&v28[0] = v20;
  WORD4(v28[0]) = 256;
  *(v28 + 10) = *v27;
  *(&v28[1] + 10) = *&v27[16];
  *(&v28[2] + 10) = *&v27[32];
  *(&v28[3] + 1) = *&v27[46];
  *&v29 = v21;
  *(&v29 + 1) = v22;
  v30 = v20;
  v37 = v28[0];
  v40 = v28[3];
  v41 = v29;
  v38 = v28[1];
  v39 = v28[2];
  v31 = 256;
  *&v34[14] = *&v27[46];
  v35 = v21;
  v33 = *&v27[16];
  *v34 = *&v27[32];
  v32 = *v27;
  v36 = v22;
  sub_23D83C67C(v28, &v26, &qword_27E2EF548, &qword_23D8E3AC0);
  sub_23D83C6E4(&v30, &qword_27E2EF548, &qword_23D8E3AC0);
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 18) = *v42;
  *(a2 + 34) = *&v42[16];
  *(a2 + 50) = *&v42[32];
  *(a2 + 64) = *&v42[46];
  *(a2 + 72) = v4;
  *(a2 + 80) = v12;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  *(a2 + 104) = v18;
  *(a2 + 112) = 0;
  *(a2 + 120) = v19;
  v23 = v40;
  *(a2 + 160) = v39;
  *(a2 + 176) = v23;
  *(a2 + 192) = v41;
  result = v38;
  *(a2 + 128) = v37;
  *(a2 + 144) = result;
  return result;
}

double sub_23D893408(uint64_t a1, double a2)
{
  v4 = sub_23D8DCF90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D88D9BC(a1, v8);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277CDF9F8] && v9 != *MEMORY[0x277CDF9E0] && v9 != *MEMORY[0x277CDF9E8] && v9 != *MEMORY[0x277CDF9D8])
  {
    if (v9 == *MEMORY[0x277CDF9F0] || v9 == *MEMORY[0x277CDFA00])
    {
      return a2 * 1.3;
    }

    else if (v9 == *MEMORY[0x277CDFA10])
    {
      return a2 * 1.5;
    }

    else if (v9 == *MEMORY[0x277CDF988])
    {
      return a2 * 1.8;
    }

    else if (v9 == *MEMORY[0x277CDF998])
    {
      return a2 + a2;
    }

    else if (v9 == *MEMORY[0x277CDF9A8])
    {
      return a2 * 2.1;
    }

    else if (v9 == *MEMORY[0x277CDF9B8])
    {
      return a2 * 2.15;
    }

    else if (v9 == *MEMORY[0x277CDF9D0])
    {
      return a2 * 2.2;
    }

    else
    {
      a2 = a2 + a2;
      (*(v5 + 8))(v8, v4);
    }
  }

  return a2;
}

uint64_t sub_23D893650(uint64_t a1)
{
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_23D88DF20(a1);
  v10 = sub_23D8DBF80();

  sub_23D88D7BC(v9);
  (*(v3 + 104))(v7, *MEMORY[0x277CDF3C0], v2);
  v11 = sub_23D8DCCA0();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v9, v2);
  if (v10)
  {
    if ((v11 & 1) == 0)
    {
      return sub_23D8DE240();
    }
  }

  else if (v11)
  {
    return sub_23D8DE240();
  }

  return sub_23D8DE220();
}

id sub_23D8937D0(uint64_t a1)
{
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_23D88DF20(a1);
  v10 = sub_23D8DBF80();

  if (v10)
  {
    sub_23D88D7BC(v9);
    (*(v3 + 104))(v7, *MEMORY[0x277CDF3C0], v2);
    v11 = sub_23D8DCCA0();
    v12 = *(v3 + 8);
    v12(v7, v2);
    v12(v9, v2);
    v13 = objc_opt_self();
    if (v11)
    {
      v14 = [v13 whiteColor];
    }

    else
    {
      v14 = [v13 blackColor];
    }
  }

  else
  {
    v14 = [objc_opt_self() secondarySystemFillColor];
  }

  return v14;
}

double sub_23D8939A0(uint64_t a1, double a2)
{
  v4 = sub_23D8DCF90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D88D9BC(a1, v8);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277CDF9F8] && v9 != *MEMORY[0x277CDF9E0] && v9 != *MEMORY[0x277CDF9E8] && v9 != *MEMORY[0x277CDF9D8])
  {
    if (v9 == *MEMORY[0x277CDF9F0] || v9 == *MEMORY[0x277CDFA00])
    {
      v14 = 0x3FF3333333333333;
    }

    else
    {
      if (v9 == *MEMORY[0x277CDFA10])
      {
        v15 = 1.25;
        return a2 * v15;
      }

      if (v9 == *MEMORY[0x277CDF988])
      {
        v15 = 1.3;
        return a2 * v15;
      }

      if (v9 == *MEMORY[0x277CDF998])
      {
        v14 = 0x3FF6666666666666;
      }

      else
      {
        if (v9 != *MEMORY[0x277CDF9A8])
        {
          if (v9 == *MEMORY[0x277CDF9B8])
          {
            v15 = 1.5;
          }

          else
          {
            if (v9 != *MEMORY[0x277CDF9D0])
            {
              a2 = a2 * 1.5;
              (*(v5 + 8))(v8, v4);
              return a2;
            }

            v15 = 1.55;
          }

          return a2 * v15;
        }

        v14 = 0x3FF7333333333333;
      }
    }

    v15 = *&v14;
    return a2 * v15;
  }

  return a2;
}

uint64_t sub_23D893BD8(uint64_t a1)
{
  v2 = type metadata accessor for SSHUDRoundView();
  if ([*(a1 + *(v2 + 64) + 8) isSpeaking])
  {
    [*(a1 + *(v2 + 64) + 8) pauseButtonPressed];
  }

  else
  {
    [*(a1 + *(v2 + 64) + 8) playButtonPressedForBundleID:0 sceneID:0 rootAccessibilityElementIdentifier:0];
    v3 = sub_23D8DE670();
    MEMORY[0x28223BE20](v3);
    sub_23D8DCE60();
  }

  sub_23D88EC50(v2);
  return sub_23D88EFF0(v2);
}

uint64_t sub_23D893CF8()
{
  v0 = type metadata accessor for SSHUDRoundView();
  sub_23D896888(v0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

uint64_t sub_23D893D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SSHUDRoundView();
  sub_23D8937D0(v4);
  sub_23D8DE130();
  KeyPath = swift_getKeyPath();
  v6 = sub_23D8DCDC0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF500, &qword_23D8E3A10);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF530, &qword_23D8E3A38);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_23D893E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DCCB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  sub_23D88D7BC(v21 - v10);
  (*(v5 + 104))(v9, *MEMORY[0x277CDF3C0], v4);
  v12 = sub_23D8DCCA0();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  if (v12)
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);
    sub_23D8DEB40();
    v14 = sub_23D8DE130();
  }

  else
  {
    v14 = sub_23D8DE210();
  }

  v15 = v14;
  KeyPath = swift_getKeyPath();
  v21[1] = v15;
  v17 = sub_23D8DCDC0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF500, &qword_23D8E3A10);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF530, &qword_23D8E3A38);
  v20 = (a2 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v17;
  return result;
}

uint64_t sub_23D894080(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = type metadata accessor for SSHUDRoundView();
  [*(a1 + *(v6 + 64) + 8) *a4];
  sub_23D88EC50(v6);
  return sub_23D88EFF0(v6);
}

uint64_t sub_23D8940DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  sub_23D8DDB60();
  sub_23D8DDAE0();
  v3 = sub_23D8DDB70();

  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_23D894148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SSHUDRoundView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_23D8DEA00();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  sub_23D8DE9D0();
  v16 = sub_23D8DE9C0();
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v7 + 32))(&v18[v17], v10, v6);
  sub_23D870938(0, 0, v14, &unk_23D8E39A0, v18);
}

uint64_t sub_23D894348()
{
  v0[2] = sub_23D8DE9D0();
  v0[3] = sub_23D8DE9C0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for SSHUDRoundView();
  *v1 = v0;
  v1[1] = sub_23D894418;

  return sub_23D8945B4(v2);
}

uint64_t sub_23D894418()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D894554, v5, v4);
}

uint64_t sub_23D894554()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D8945B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23D8DCAF0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_23D8DE9D0();
  v2[10] = sub_23D8DE9C0();
  v7 = sub_23D8DE9B0();
  v2[11] = v7;
  v2[12] = v6;

  return MEMORY[0x2822009F8](sub_23D8946CC, v7, v6);
}

uint64_t sub_23D8946CC()
{
  v33 = v0;
  v1 = v0[2];
  v2 = v0[3];
  [*(v2 + *(v1 + 64) + 8) readerButtonPressed];
  v3 = [*(v2 + *(v1 + 64) + 8) currentAppBundleId];
  if (v3)
  {
    v4 = v0[9];
    v5 = v3;
    v6 = sub_23D8DE870();
    v8 = v7;

    v0[13] = v8;
    sub_23D8DC180();

    v9 = sub_23D8DCAE0();
    v10 = sub_23D8DEA90();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[9];
    v13 = v0[4];
    v14 = v0[5];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_23D8CF134(v6, v8, &v32);
      _os_log_impl(&dword_23D82C000, v9, v10, "Attempting to launch Accessibility Reader for bundle: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23EEF15F0](v16, -1, -1);
      MEMORY[0x23EEF15F0](v15, -1, -1);
    }

    v17 = *(v14 + 8);
    v17(v12, v13);
    v0[14] = v17;
    sub_23D8DC640();
    v18 = *(MEMORY[0x277CE7360] + 4);
    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_23D8949E4;

    return MEMORY[0x282139760](v6, v8, 0);
  }

  else
  {
    v20 = v0[10];
    v21 = v0[6];

    sub_23D8DC180();
    v22 = sub_23D8DCAE0();
    v23 = sub_23D8DEA90();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[5];
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23D82C000, v22, v23, "No bundle ID available - cannot launch Accessibility Reader", v26, 2u);
      MEMORY[0x23EEF15F0](v26, -1, -1);
    }

    v27 = v0[8];
    v28 = v0[9];
    v29 = v0[7];
    (*(v25 + 8))(v0[6], v0[4]);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_23D8949E4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 128) = a1;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_23D894B30, v6, v5);
}

uint64_t sub_23D894B30()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);

  if (v1 == 1)
  {
    v4 = (v0 + 64);
    v3 = *(v0 + 64);
    sub_23D8DC180();
    v5 = sub_23D8DCAE0();
    v6 = sub_23D8DEA90();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 40);
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Successfully opened Accessibility Reader from Speak Screen";
  }

  else
  {
    v4 = (v0 + 56);
    v11 = *(v0 + 56);
    sub_23D8DC180();
    v5 = sub_23D8DCAE0();
    v6 = sub_23D8DEA90();
    v12 = os_log_type_enabled(v5, v6);
    v13 = *(v0 + 40);
    if (!v12)
    {
      goto LABEL_7;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Failed to open Accessibility Reader from Speak Screen.";
  }

  _os_log_impl(&dword_23D82C000, v5, v6, v10, v9, 2u);
  MEMORY[0x23EEF15F0](v9, -1, -1);
LABEL_7:

  v14 = *v4;
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  (*(v0 + 112))(v14, *(v0 + 32));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23D894CE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D894E98(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  (*(v2 + 32))(v5 + v4, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF498, &qword_23D8E3990);
  sub_23D835AD0(&qword_27E2EF4A0, &qword_27E2EF498, &qword_23D8E3990);
  return sub_23D8DE360();
}

uint64_t sub_23D89503C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D8951EC()
{
  v0 = type metadata accessor for SSHUDRoundView();
  sub_23D896888(v0);

  sub_23D861AB4();
}

__n128 sub_23D895250@<Q0>(void (*a1)(unint64_t *__return_ptr)@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_23D8DD420();
  v18 = 1;
  a1(&v12);
  v5 = v12;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  result = v13;
  v11 = v18;
  a2->n128_u64[0] = v4;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = v11;
  a2[1].n128_u64[1] = v5;
  a2[2] = result;
  a2[3].n128_u8[0] = v6;
  a2[3].n128_u64[1] = v7;
  a2[4].n128_u64[0] = v8;
  a2[4].n128_u8[8] = v9;
  return result;
}

uint64_t sub_23D8952DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D895488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SSHUDRoundView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v18 - v12;
  sub_23D8955F0(v11, a4);
  (*(v9 + 16))(v13, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v9 + 32))(v15 + v14, v13, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3C8, &qword_23D8E3888);
  v17 = (a4 + *(result + 36));
  *v17 = sub_23D898068;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_23D8955F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v5 = sub_23D8DCFC0();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF448, &qword_23D8E4F50);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF450, &qword_23D8E3960);
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = *(v66 + 64);
  MEMORY[0x28223BE20](v15);
  v65 = &v60 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF458, &qword_23D8E3968);
  v78 = *(v72 - 8);
  v18 = v78[8];
  v19 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v79 = &v60 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF460, &qword_23D8E3970);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v77 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v80 = &v60 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v76 = &v60 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v60 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF468, &qword_23D8E3978);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v75 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v60 - v37;
  v39 = [*(v2 + *(a1 + 64) + 8) isSpeakingOrPaused];
  v64 = v23;
  v63 = v22;
  v74 = v38;
  if (v39 && (sub_23D88DF20(a1), v40 = sub_23D8DBF70(), , (v40 & 1) == 0))
  {
    sub_23D894E98(a1);
    (*(v23 + 32))(v38, v32, v22);
    (*(v23 + 56))(v38, 0, 1, v22);
  }

  else
  {
    (*(v23 + 56))(v38, 1, 1, v22);
  }

  sub_23D894E98(a1);
  v41 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
  sub_23D8DE340();
  sub_23D83C67C(v14, v12, &qword_27E2EF448, &qword_23D8E4F50);
  sub_23D896208(v81);
  sub_23D8DC4D0();
  v60 = v32;
  v62 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF470, &qword_23D8E3980);
  v61 = a1;
  sub_23D898790(&qword_27E2EF478, MEMORY[0x277CE7250]);
  sub_23D898080();
  v42 = v65;
  sub_23D8DE3A0();
  sub_23D83C6E4(v14, &qword_27E2EF448, &qword_23D8E4F50);
  v43 = v68;
  sub_23D8DCFB0();
  sub_23D835AD0(&qword_27E2EF488, &qword_27E2EF450, &qword_23D8E3960);
  v44 = v67;
  v45 = v71;
  sub_23D8DDD30();
  (*(v70 + 8))(v43, v45);
  (*(v66 + 8))(v42, v44);
  v46 = v76;
  sub_23D894E98(v61);
  v47 = v75;
  sub_23D83C67C(v74, v75, &qword_27E2EF468, &qword_23D8E3978);
  v48 = v64;
  v49 = *(v64 + 16);
  v50 = v63;
  v49(v80, v32, v63);
  v51 = v78[2];
  v52 = v69;
  v53 = v72;
  v51(v69, v79, v72);
  v49(v77, v46, v50);
  v54 = v73;
  sub_23D83C67C(v47, v73, &qword_27E2EF468, &qword_23D8E3978);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF490, &qword_23D8E3988);
  v49((v54 + v55[12]), v80, v50);
  v51((v54 + v55[16]), v52, v53);
  v56 = v77;
  v49((v54 + v55[20]), v77, v50);
  v57 = *(v48 + 8);
  v57(v76, v50);
  v58 = v78[1];
  v58(v79, v53);
  v57(v60, v50);
  sub_23D83C6E4(v74, &qword_27E2EF468, &qword_23D8E3978);
  v57(v56, v50);
  v58(v52, v53);
  v57(v80, v50);
  return sub_23D83C6E4(v75, &qword_27E2EF468, &qword_23D8E3978);
}

uint64_t sub_23D895EC0()
{
  v0 = type metadata accessor for SSHUDRoundView();
  sub_23D88EC50(v0);
  return sub_23D88EFF0(v0);
}

double sub_23D895EF8@<D0>(uint64_t a1@<X8>)
{
  sub_23D895F38(&v5);
  v2 = v6;
  v3 = v7;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_23D895F38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  v3 = sub_23D8DE260();
  sub_23D8DDB60();
  sub_23D8DDAE0();
  v4 = sub_23D8DDB70();

  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  a1[3] = v4;
  return result;
}

uint64_t sub_23D895FCC()
{
  sub_23D8DC4B0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4A8, &qword_23D8E39E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4B0, &qword_23D8E39E8);
  sub_23D835AD0(&qword_27E2EF4B8, &qword_27E2EF4A8, &qword_23D8E39E0);
  sub_23D8DC4D0();
  sub_23D898790(&qword_27E2EF478, MEMORY[0x277CE7250]);
  swift_getOpaqueTypeConformance2();
  return sub_23D8DE4C0();
}

uint64_t sub_23D896138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23D8DC490();
  v5 = localizedNameFor(speed:)(v4);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECF58, &qword_23D8DFDE0) + 36);
  v7 = sub_23D8DC4D0();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECF60, &qword_23D8DFDE8);
  *(v6 + *(result + 36)) = 1;
  *a2 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23D896208@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v2 = qword_27E2F3C80;
    v3 = sub_23D8DE830();
    v4 = sub_23D8DE830();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  result = sub_23D8DDCB0();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_23D896340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SSHUDRoundView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - v14;
  if (sub_23D88DBC0(v7) < 1)
  {
    v20 = sub_23D88DC6C(v7);
    [v20 invalidate];

    v21 = sub_23D8DEA00();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    (*(v8 + 16))(v11, a2, v7);
    v22 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = a3;
    *(v23 + 5) = a4;
    (*(v8 + 32))(&v23[v22], v11, v7);
    sub_23D870938(0, 0, v15, &unk_23D8E3810, v23);

    sub_23D88DCC0(0, v7);
    return sub_23D88DC14(8, v7);
  }

  else
  {
    v16 = (a2 + *(v7 + 52));
    v18 = *v16;
    v17 = v16[1];
    v24[3] = *v16;
    v24[4] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
    result = sub_23D8DE320();
    if (__OFSUB__(v25, 1))
    {
      __break(1u);
    }

    else
    {
      v24[1] = v18;
      v24[2] = v17;
      v24[0] = v25 - 1;
      sub_23D8DE330();
    }
  }

  return result;
}

uint64_t sub_23D8965E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_23D896608, 0, 0);
}

uint64_t sub_23D896608()
{
  *(v0 + 40) = sub_23D8DE9D0();
  *(v0 + 48) = sub_23D8DE9C0();
  v2 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8966A0, v2, v1);
}

uint64_t sub_23D8966A0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = type metadata accessor for SSHUDRoundView();
  v0[7] = sub_23D896888(v5);

  return MEMORY[0x2822009F8](sub_23D896738, 0, 0);
}

uint64_t sub_23D896738()
{
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_23D8DE9C0();
  v3 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8967C4, v3, v2);
}

uint64_t sub_23D8967C4()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_23D861AB4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23D896834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD2E0();
  *a1 = result;
  return result;
}

uint64_t sub_23D896888(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  if (!*v2)
  {
    v4 = v2[1];
    type metadata accessor for SSStore();
    sub_23D898790(&qword_27E2ED008, type metadata accessor for SSStore);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D896940(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SSHUDRoundView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23D88ECB4(a1, a2, v8);
}

uint64_t sub_23D8969F4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SSHUDRoundView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_23D896A8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SSHUDRoundView();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  return sub_23D88EC50(v3);
}

uint64_t sub_23D896AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23D88F1BC();
}

uint64_t sub_23D896AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_23D88F310(a1, a2);
}

unint64_t sub_23D896B00()
{
  result = qword_27E2EF268;
  if (!qword_27E2EF268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF218, &qword_23D8E3720);
    sub_23D896B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF268);
  }

  return result;
}

unint64_t sub_23D896B8C()
{
  result = qword_27E2EF270;
  if (!qword_27E2EF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF250, &qword_23D8E3748);
    sub_23D896C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF270);
  }

  return result;
}

unint64_t sub_23D896C18()
{
  result = qword_27E2EF278;
  if (!qword_27E2EF278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF248, &qword_23D8E3740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF210, &qword_23D8E3718);
    sub_23D8DC4D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF208, &qword_23D8E3710);
    type metadata accessor for AXSpeakStopType(255);
    sub_23D835AD0(&qword_27E2EF238, &qword_27E2EF208, &qword_23D8E3710);
    sub_23D898790(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
    swift_getOpaqueTypeConformance2();
    sub_23D898790(&qword_27E2EF240, MEMORY[0x277CE7250]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF278);
  }

  return result;
}

unint64_t sub_23D896DF0()
{
  result = qword_27E2EF280;
  if (!qword_27E2EF280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF260, &qword_23D8E3758);
    sub_23D896B00();
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF280);
  }

  return result;
}

uint64_t sub_23D896EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF220, &qword_23D8E3728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23D896F64(uint64_t a1)
{
  sub_23D8974E4(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    sub_23D8974E4(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v3 <= 0x3F)
    {
      sub_23D83475C();
      if (v4 <= 0x3F)
      {
        sub_23D851F1C(319, &qword_27E2EF310);
        if (v5 <= 0x3F)
        {
          sub_23D851F1C(319, &qword_27E2ED018);
          if (v6 <= 0x3F)
          {
            sub_23D851F1C(319, &qword_27E2EF318);
            if (v7 <= 0x3F)
            {
              sub_23D897548();
              if (v8 <= 0x3F)
              {
                sub_23D8975AC();
                if (v9 <= 0x3F)
                {
                  v10 = *(a1 + 16);
                  v11 = *(*(a1 + 24) + 8);
                  sub_23D8DCF20();
                  if (v12 <= 0x3F)
                  {
                    sub_23D8974E4(319, &qword_27E2EF330, MEMORY[0x277CE7250], MEMORY[0x277CE10B8]);
                    if (v13 <= 0x3F)
                    {
                      sub_23D87D238();
                      if (v14 <= 0x3F)
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
    }
  }
}

uint64_t sub_23D8971A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[15]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[18];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23D89734C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[18];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_23D8974E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D897548()
{
  if (!qword_27E2ED630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED5C0, &qword_23D8E0DF0);
    v0 = sub_23D8DE350();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED630);
    }
  }
}

void sub_23D8975AC()
{
  if (!qword_27E2EF320)
  {
    sub_23D856774(255, &qword_27E2EF328, 0x277D755B8);
    v0 = sub_23D8DE350();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EF320);
    }
  }
}

unint64_t sub_23D897618()
{
  result = qword_27E2EF338;
  if (!qword_27E2EF338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2EF288, &qword_23D8E3760);
    sub_23D8976A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF338);
  }

  return result;
}

unint64_t sub_23D8976A4()
{
  result = qword_27E2EF340;
  if (!qword_27E2EF340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF220, &qword_23D8E3728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF218, &qword_23D8E3720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF258, &qword_23D8E3750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF260, &qword_23D8E3758);
    sub_23D896B00();
    sub_23D8DD090();
    sub_23D898790(&qword_27E2EE3D0, MEMORY[0x277CDFC08]);
    swift_getOpaqueTypeConformance2();
    sub_23D896DF0();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF340);
  }

  return result;
}

uint64_t sub_23D897868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF218, &qword_23D8E3720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8978D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for SSHUDRoundView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_23D896340(a1, v6, v3, v4);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D897980(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for SSHUDRoundView() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23D836234;

  return sub_23D8965E4(a1, v8, v9, v1 + v7, v4, v5);
}

double sub_23D897A98@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_23D895EF8(a1);
}

unint64_t sub_23D897AA4()
{
  result = qword_27E2EF3D0;
  if (!qword_27E2EF3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
    sub_23D897B5C();
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF3D0);
  }

  return result;
}

unint64_t sub_23D897B5C()
{
  result = qword_27E2EF3D8;
  if (!qword_27E2EF3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3E0, &qword_23D8E3890);
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF3D8);
  }

  return result;
}

unint64_t sub_23D897C14()
{
  result = qword_27E2EF3E8;
  if (!qword_27E2EF3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C8, &qword_23D8E3888);
    sub_23D835AD0(&qword_27E2EF3F0, &qword_27E2EF3F8, &qword_23D8E3898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF3E8);
  }

  return result;
}

uint64_t sub_23D897CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD2E0();
  *a1 = result;
  return result;
}

unint64_t sub_23D897D28()
{
  result = qword_27E2EF418;
  if (!qword_27E2EF418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3B0, &qword_23D8E3870);
    sub_23D897DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF418);
  }

  return result;
}

unint64_t sub_23D897DB4()
{
  result = qword_27E2EF420;
  if (!qword_27E2EF420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF410, &qword_23D8E38D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3A8, &qword_23D8E3868);
    sub_23D8DD8B0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3A0, &qword_23D8E3860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF398, &qword_23D8E3858);
    sub_23D835AD0(&qword_27E2EF400, &qword_27E2EF398, &qword_23D8E3858);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D898790(&qword_27E2EF408, MEMORY[0x277CDE310]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF420);
  }

  return result;
}

uint64_t sub_23D897FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23D898790(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D898080()
{
  result = qword_27E2EF480;
  if (!qword_27E2EF480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF470, &qword_23D8E3980);
    sub_23D8DC4D0();
    sub_23D898790(&qword_27E2EF478, MEMORY[0x277CE7250]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF480);
  }

  return result;
}

id sub_23D898178()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SSHUDRoundView();
  v4 = *(v0 + *(v3 + 64) + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + 8);

  return [v4 stopButtonPressed];
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for SSHUDRoundView();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = &v0[v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D8DCCB0();
    (*(*(v9 - 8) + 8))(&v0[v5], v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D8DCF90();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *&v8[v11];
  }

  v14 = *&v8[v3[10]];

  v15 = *&v8[v3[11] + 8];

  v16 = *&v8[v3[12] + 8];

  v17 = *&v8[v3[13] + 8];

  v18 = &v8[v3[14]];

  v19 = *(v18 + 1);

  v20 = &v8[v3[15]];

  v21 = *(v20 + 1);

  v22 = *&v8[v3[16] + 8];
  swift_unknownObjectRelease();
  v23 = *&v8[v3[17] + 8];

  v24 = &v8[v3[18]];
  v25 = sub_23D8DC4D0();
  (*(*(v25 - 8) + 8))(v24, v25);
  v26 = *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738) + 28)];

  v27 = &v8[v3[19]];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = v27[16];
  sub_23D8531A4();

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23D8984A0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for SSHUDRoundView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23D835CB4;

  return sub_23D894348();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23D898620(SEL *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for SSHUDRoundView() - 8);
  return sub_23D894080(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4, a1);
}

uint64_t sub_23D8986A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_23D8940DC(a1);
}

unint64_t sub_23D8986D8()
{
  result = qword_27E2EF4E0;
  if (!qword_27E2EF4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF4D8, &qword_23D8E3A08);
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF4E0);
  }

  return result;
}

uint64_t sub_23D898790(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D8987D8()
{
  result = qword_27E2EF4F0;
  if (!qword_27E2EF4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF4C8, &qword_23D8E39F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF4C0, &qword_23D8E39F0);
    sub_23D8DD080();
    sub_23D835AD0(&qword_27E2EF4E8, &qword_27E2EF4C0, &qword_23D8E39F0);
    sub_23D898790(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF4F0);
  }

  return result;
}

uint64_t sub_23D898968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_23D893D7C(a1, a2);
}

uint64_t sub_23D898974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_23D893E68(a1, a2);
}

unint64_t sub_23D898980()
{
  result = qword_27E2EF538;
  if (!qword_27E2EF538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF530, &qword_23D8E3A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF520, &qword_23D8E3A30);
    sub_23D835AD0(&qword_27E2EF528, &qword_27E2EF520, &qword_23D8E3A30);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EE4C8, &qword_27E2EE4D0, &qword_23D8E3A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF538);
  }

  return result;
}

unint64_t sub_23D898AA8()
{
  result = qword_27E2EF540;
  if (!qword_27E2EF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF510, &qword_23D8E3A20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF500, &qword_23D8E3A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF530, &qword_23D8E3A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF520, &qword_23D8E3A30);
    sub_23D835AD0(&qword_27E2EF528, &qword_27E2EF520, &qword_23D8E3A30);
    swift_getOpaqueTypeConformance2();
    sub_23D898980();
    swift_getOpaqueTypeConformance2();
    sub_23D898790(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF540);
  }

  return result;
}

uint64_t sub_23D898C5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D893CF8();
}

uint64_t sub_23D898C90@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_23D8940DC(a1);
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SSHUDRoundView();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D8DCCB0();
    (*(*(v8 - 8) + 8))(v0 + v5, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCF90();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
  }

  else
  {
    v12 = *&v7[v10];
  }

  v13 = *&v7[v3[10]];

  v14 = *&v7[v3[11] + 8];

  v15 = *&v7[v3[12] + 8];

  v16 = *&v7[v3[13] + 8];

  v17 = &v7[v3[14]];

  v18 = *(v17 + 1);

  v19 = &v7[v3[15]];

  v20 = *(v19 + 1);

  v21 = *&v7[v3[16] + 8];
  swift_unknownObjectRelease();
  v22 = *&v7[v3[17] + 8];

  v23 = &v7[v3[18]];
  v24 = sub_23D8DC4D0();
  (*(*(v24 - 8) + 8))(v23, v24);
  v25 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738) + 28)];

  v26 = &v7[v3[19]];
  v27 = *v26;
  v28 = *(v26 + 1);
  v29 = v26[16];
  sub_23D8531A4();

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23D898F64@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_23D8940DC(a1);
}

uint64_t sub_23D898FFC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF550, &unk_23D8E3B30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_23D8990CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF550, &unk_23D8E3B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AXRTextBlockView()
{
  result = qword_27E2EF558;
  if (!qword_27E2EF558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D8991C8()
{
  sub_23D8DC240();
  if (v0 <= 0x3F)
  {
    sub_23D86FE4C();
    if (v1 <= 0x3F)
    {
      sub_23D89927C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D89927C()
{
  if (!qword_27E2EF568)
  {
    sub_23D8DCE20();
    v0 = sub_23D8DCD20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EF568);
    }
  }
}

uint64_t sub_23D8992F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v131 = a1;
  v3 = sub_23D8DBE70();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF570, &qword_23D8E3BA8);
  v120 = *(v129 - 8);
  v7 = *(v120 + 64);
  MEMORY[0x28223BE20](v129);
  v119 = &v108 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF578, &qword_23D8E3BB0);
  v9 = *(v130 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v130);
  v12 = &v108 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF580, &qword_23D8E3BB8);
  v13 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v128 = &v108 - v14;
  v15 = sub_23D8DCF90();
  v124 = *(v15 - 8);
  v125 = v15;
  v16 = *(v124 + 64);
  MEMORY[0x28223BE20](v15);
  v123 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_23D8DDC60();
  v112 = *(v113 - 8);
  v18 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AXRTextBlockView();
  v109 = *(v20 - 8);
  v21 = *(v109 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF588, &qword_23D8E3BC0);
  v22 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v24 = &v108 - v23;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF590, &qword_23D8E3BC8);
  v25 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v114 = &v108 - v26;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF598, &qword_23D8E3BD0);
  v116 = *(v122 - 8);
  v27 = *(v116 + 64);
  MEMORY[0x28223BE20](v122);
  v115 = &v108 - v28;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5A0, &qword_23D8E3BD8);
  v118 = *(v126 - 8);
  v29 = *(v118 + 64);
  MEMORY[0x28223BE20](v126);
  v117 = &v108 - v30;
  v31 = *v1;
  if (sub_23D8DC200() & 1) != 0 && (sub_23D8DC220(), v32 = sub_23D8DE8B0(), , (v32))
  {
    v132 = sub_23D8DC220();
    v133 = v33;
    sub_23D83CB18();
    v34 = sub_23D8DDCB0();
    v36 = v35;
    v132 = v34;
    v133 = v35;
    v38 = v37 & 1;
    v134 = v37 & 1;
    v135 = v39;
    sub_23D89C9F0(v2, &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = (*(v109 + 80) + 16) & ~*(v109 + 80);
    v41 = swift_allocObject();
    sub_23D89CB78(&v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
    sub_23D8DDD60();

    sub_23D83CB6C(v34, v36, v38);

    v42 = *(v2 + 24);
    v43 = sub_23D8DC960();
    v44 = sub_23D8DC210();
    v45 = sub_23D8DC1A0();
    v47 = blockFont(forModel:isHeader:headingLevel:)(v43, v44 & 1, v45, v46 & 1);

    KeyPath = swift_getKeyPath();
    v49 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5E0, &unk_23D8E3C20) + 36)];
    *v49 = KeyPath;
    v49[1] = v47;
    sub_23D8DC960();
    v50 = sub_23D8DC6F0();

    *&v24[*(v110 + 36)] = v50;
    v51 = v111;
    sub_23D8DDC50();
    sub_23D89C850();
    v52 = v114;
    sub_23D8DE110();
    (*(v112 + 8))(v51, v113);
    sub_23D83C6E4(v24, &qword_27E2EF588, &qword_23D8E3BC0);
    sub_23D8DC960();
    sub_23D8DC680();
    v54 = v53;

    sub_23D8DC960();
    sub_23D8DC680();
    v56 = v55;

    if (v54 <= 0.0)
    {
      v57 = v56;
    }

    else
    {
      v57 = v56 * 10.0;
    }

    v58 = swift_getKeyPath();
    v59 = v121;
    v60 = v52 + *(v121 + 36);
    *v60 = v58;
    *(v60 + 8) = v57;
    sub_23D8DC960();
    sub_23D8DC670();

    sub_23D8DC960();
    sub_23D8DC670();

    v61 = sub_23D89C75C();
    v62 = v115;
    sub_23D8DE000();
    sub_23D83C6E4(v52, &qword_27E2EF590, &qword_23D8E3BC8);
    sub_23D8DC960();
    v63 = v123;
    sub_23D8DC720();

    v132 = v59;
    v133 = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v65 = v117;
    v66 = v122;
    sub_23D8DDDC0();
    (*(v124 + 8))(v63, v125);
    (*(v116 + 8))(v62, v66);
    v67 = v118;
    v68 = v126;
    (*(v118 + 16))(v128, v65, v126);
    swift_storeEnumTagMultiPayload();
    v132 = v66;
    v133 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF5A8, &qword_23D8E3C10);
    v70 = sub_23D89C6A4();
    v132 = v69;
    v133 = v70;
    v71 = swift_getOpaqueTypeConformance2();
    v132 = v129;
    v133 = v71;
    swift_getOpaqueTypeConformance2();
    sub_23D8DD6B0();
    return (*(v67 + 8))(v65, v68);
  }

  else
  {
    sub_23D89A28C(v6);
    v73 = sub_23D8DDCA0();
    v75 = v74;
    v118 = v9;
    v77 = v76;
    v78 = *(v2 + 24);
    v79 = sub_23D8DC960();
    v80 = sub_23D8DC210();
    v81 = sub_23D8DC1A0();
    blockFont(forModel:isHeader:headingLevel:)(v79, v80 & 1, v81, v82 & 1);

    v83 = sub_23D8DDC40();
    v85 = v84;
    v117 = v12;
    v87 = v86;
    v89 = v88;

    sub_23D83CB6C(v73, v75, v77 & 1);

    sub_23D8DC960();
    sub_23D8DC680();
    v91 = v90;

    sub_23D8DC960();
    sub_23D8DC680();
    v93 = v92;

    if (v91 <= 0.0)
    {
      v94 = v93;
    }

    else
    {
      v94 = v93 * 10.0;
    }

    v95 = swift_getKeyPath();
    v132 = v83;
    v133 = v85;
    v96 = v87 & 1;
    v134 = v87 & 1;
    v135 = v89;
    v136 = v95;
    v137 = v94;
    sub_23D8DC960();
    sub_23D8DC670();

    sub_23D8DC960();
    sub_23D8DC670();

    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5A8, &qword_23D8E3C10);
    v98 = sub_23D89C6A4();
    v99 = v119;
    sub_23D8DE000();
    sub_23D83CB6C(v83, v85, v96);

    sub_23D8DC960();
    v100 = v123;
    sub_23D8DC720();

    v132 = v97;
    v133 = v98;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = v117;
    v103 = v129;
    sub_23D8DDDC0();
    (*(v124 + 8))(v100, v125);
    (*(v120 + 8))(v99, v103);
    v104 = v118;
    v105 = v130;
    (*(v118 + 16))(v128, v102, v130);
    swift_storeEnumTagMultiPayload();
    v106 = sub_23D89C75C();
    v132 = v121;
    v133 = v106;
    v107 = swift_getOpaqueTypeConformance2();
    v132 = v122;
    v133 = v107;
    swift_getOpaqueTypeConformance2();
    v132 = v103;
    v133 = v101;
    swift_getOpaqueTypeConformance2();
    sub_23D8DD6B0();
    return (*(v104 + 8))(v102, v105);
  }
}

uint64_t sub_23D89A024(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEAB8, &qword_23D8E3C70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_23D8DBF20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_23D8DC220();
  sub_23D8DBF10();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_23D83C6E4(v5, &unk_27E2EEAB8, &qword_23D8E3C70);
  }

  (*(v7 + 32))(v10, v5, v6);
  v13 = [objc_opt_self() sharedApplication];
  v14 = sub_23D8DBF00();
  sub_23D878A60(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_23D89CDB0(&qword_27E2ED190, type metadata accessor for OpenExternalURLOptionsKey);
  v15 = sub_23D8DE7C0();

  [v13 openURL:v14 options:v15 completionHandler:0];

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23D89A28C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DDC60();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v150 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5E8, &qword_23D8E3C78);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v151 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v152 = &v144 - v10;
  v11 = sub_23D8DC590();
  v154 = *(v11 - 8);
  v155 = v11;
  v12 = *(v154 + 64);
  MEMORY[0x28223BE20](v11);
  v153 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F0, &qword_23D8E3C80);
  v14 = *(*(v157 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v157);
  v158 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v156 = &v144 - v17;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F8, &qword_23D8E3C88);
  v18 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v160 = &v144 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF600, &qword_23D8E3C90);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v162 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v164 = &v144 - v25;
  MEMORY[0x28223BE20](v24);
  v165 = (&v144 - v26);
  v166 = sub_23D8DBE50();
  v168 = *(v166 - 8);
  v27 = v168[8];
  v28 = MEMORY[0x28223BE20](v166);
  v161 = &v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v163 = &v144 - v31;
  MEMORY[0x28223BE20](v30);
  v167 = &v144 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF608, &qword_23D8E3C98);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v144 - v35;
  v37 = sub_23D8DBE70();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v144 - v43;
  v45 = sub_23D8DBEC0();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v169 = v1;
  v47 = *v1;
  sub_23D8DC220();
  sub_23D8DBEB0();
  sub_23D8DBE80();
  sub_23D8DC190();
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_23D83C6E4(v36, &qword_27E2EF608, &qword_23D8E3C98);
  }

  else
  {
    (*(v38 + 8))(a1, v37);
    v48 = *(v38 + 32);
    v48(v44, v36, v37);
    v48(a1, v44, v37);
  }

  v49 = v169;
  if (*(v169 + 40) != 1)
  {
    return sub_23D89B744(a1, 0);
  }

  v50 = v42;
  v51 = v169[3];
  sub_23D8DC960();
  v52 = sub_23D8DC740();

  result = sub_23D89B744(a1, v52 & 1);
  if (*(v49 + 8) == 1)
  {
    result = sub_23D8DC1C0();
    if ((v55 & 1) == 0 && (result ^ v54) >= 0x4000)
    {
      v147 = v54;
      sub_23D8DC220();

      sub_23D8DC220();

      v149 = *(v38 + 16);
      v149(v42, a1, v37);
      v56 = sub_23D89CDB0(&qword_27E2EF610, MEMORY[0x277CC8C40]);
      v57 = v165;
      v148 = v56;
      sub_23D8DBE60();
      v58 = a1;
      v59 = v168;
      v60 = v168[6];
      v61 = v50;
      v62 = v166;
      if (v60(v57, 1, v166) == 1)
      {
        return sub_23D83C6E4(v57, &qword_27E2EF600, &qword_23D8E3C90);
      }

      v63 = v57;
      v64 = (v59 + 4);
      v165 = v59[4];
      v165(v167, v63, v62);
      v149(v61, v58, v37);
      v65 = v164;
      sub_23D8DBE60();
      if (v60(v65, 1, v62) == 1)
      {
        (v59[1])(v167, v62);
        return sub_23D83C6E4(v65, &qword_27E2EF600, &qword_23D8E3C90);
      }

      v66 = v65;
      v67 = v163;
      v68 = v165;
      v165(v163, v66, v62);
      v149(v61, v58, v37);
      v69 = v162;
      sub_23D8DBE60();
      if (v60(v69, 1, v62) == 1)
      {
        v70 = v168[1];
        v70(v67, v62);
        v70(v167, v62);
        return sub_23D83C6E4(v69, &qword_27E2EF600, &qword_23D8E3C90);
      }

      v71 = v68;
      v72 = v161;
      v164 = v64;
      v71(v161, v69, v62);
      v73 = v169[3];
      sub_23D8DC960();
      v74 = sub_23D8DC740();

      v76 = v167;
      v75 = v168;
      if ((v74 & 1) == 0)
      {
        v104 = v168[1];
        v104(v72, v62);
        v104(v67, v62);
        return (v104)(v76, v62);
      }

      v162 = v73;
      v169 = v58;
      v149 = sub_23D89CDB0(&qword_27E2EF618, MEMORY[0x277CC8C20]);
      result = sub_23D8DE810();
      if (result)
      {
        v77 = v75[2];
        v78 = v156;
        v77(v156, v76, v62);
        v79 = v157;
        v80 = v78 + *(v157 + 48);
        v146 = v75 + 2;
        v145 = v77;
        v77(v80, v72, v62);
        v81 = v158;
        sub_23D83C67C(v78, v158, &qword_27E2EF5F0, &qword_23D8E3C80);
        v82 = *(v79 + 48);
        v83 = v165;
        v165(v160, v81, v62);
        v84 = v75[1];
        v84(v81 + v82, v62);
        sub_23D89CC44(v78, v81);
        v85 = v160;
        v83(&v160[*(v159 + 36)], v81 + *(v79 + 48), v62);
        v168 = v75 + 1;
        v148 = v84;
        v84(v81, v62);
        sub_23D8DC960();
        v86 = sub_23D8DC810();

        v147 = sub_23D835AD0(&qword_27E2EF620, &qword_27E2EF5F8, &qword_23D8E3C88);
        v87 = sub_23D8DBEA0();
        v88 = v167;
        v89 = v87;
        v170 = v86;
        v90 = sub_23D89CCB4();
        sub_23D8DBEF0();
        v89(v171, 0);
        sub_23D83C6E4(v85, &qword_27E2EF5F8, &qword_23D8E3C88);
        sub_23D8DC960();
        v91 = v153;
        sub_23D8DC6D0();

        v92 = (*(v154 + 88))(v91, v155);
        if (v92 != *MEMORY[0x277CE72D8])
        {
          if (v92 != *MEMORY[0x277CE72D0])
          {
            v118 = v163;
            v119 = v161;
            if (v92 != *MEMORY[0x277CE72E0])
            {
              v152 = v90;
              v132 = v166;
              v133 = v167;
              result = sub_23D8DE810();
              if (result)
              {
                v134 = v156;
                v135 = v145;
                v145(v156, v133, v132);
                v136 = v157;
                v135(v134 + *(v157 + 48), v119, v132);
                v137 = v158;
                sub_23D83C67C(v134, v158, &qword_27E2EF5F0, &qword_23D8E3C80);
                v138 = *(v136 + 48);
                v139 = v160;
                v140 = v165;
                v165(v160, v137, v132);
                v141 = v148;
                v148(v137 + v138, v132);
                sub_23D89CC44(v134, v137);
                v140(v139 + *(v159 + 36), v137 + *(v136 + 48), v132);
                v141(v137, v132);
                sub_23D8DC960();
                v142 = sub_23D8DC810();

                v143 = sub_23D8DBEA0();
                v170 = v142;
                sub_23D8DBEF0();
                v143(v171, 0);
                sub_23D83C6E4(v139, &qword_27E2EF5F8, &qword_23D8E3C88);
                v141(v161, v132);
                v141(v163, v132);
                v141(v133, v132);
                return (*(v154 + 8))(v153, v155);
              }

              goto LABEL_34;
            }

            v120 = v166;
            result = sub_23D8DE810();
            if (result)
            {
              v121 = v156;
              v122 = v145;
              v145(v156, v118, v120);
              v123 = v157;
              v122(v121 + *(v157 + 48), v119, v120);
              v124 = v158;
              sub_23D83C67C(v121, v158, &qword_27E2EF5F0, &qword_23D8E3C80);
              v125 = *(v123 + 48);
              v126 = v160;
              v127 = v165;
              v165(v160, v124, v120);
              v128 = v148;
              v148(v124 + v125, v120);
              sub_23D89CC44(v121, v124);
              v127(v126 + *(v159 + 36), v124 + *(v123 + 48), v120);
              v128(v124, v120);
              sub_23D8DDC50();
              sub_23D8DC960();
              sub_23D8DC6B0();

              v129 = v152;
              sub_23D8DDC70();
              v130 = sub_23D8DDC80();
              (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
              v131 = sub_23D8DBEA0();
              sub_23D83C67C(v129, v151, &qword_27E2EF5E8, &qword_23D8E3C78);
              sub_23D89CD08();
              sub_23D8DBEF0();
              sub_23D83C6E4(v129, &qword_27E2EF5E8, &qword_23D8E3C78);
              v131(v171, 0);
              sub_23D83C6E4(v126, &qword_27E2EF5F8, &qword_23D8E3C88);
              v128(v161, v120);
              v128(v163, v120);
              return (v128)(v167, v120);
            }

LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            return result;
          }

          v105 = v163;
          v106 = v161;
          v107 = v166;
          result = sub_23D8DE810();
          if (result)
          {
            v108 = v156;
            v109 = v145;
            v145(v156, v105, v107);
            v110 = v157;
            v109(v108 + *(v157 + 48), v106, v107);
            v111 = v158;
            sub_23D83C67C(v108, v158, &qword_27E2EF5F0, &qword_23D8E3C80);
            v112 = *(v110 + 48);
            v113 = v160;
            v114 = v165;
            v165(v160, v111, v107);
            v115 = v148;
            v148(v111 + v112, v107);
            sub_23D89CC44(v108, v111);
            v114(v113 + *(v159 + 36), v111 + *(v110 + 48), v107);
            v115(v111, v107);
            sub_23D8DC960();
            sub_23D8DC6B0();

            v116 = sub_23D8DE250();

            v117 = sub_23D8DBEA0();
            v170 = v116;
            sub_23D89CD5C();
            sub_23D8DBEF0();
            v117(v171, 0);
            sub_23D83C6E4(v113, &qword_27E2EF5F8, &qword_23D8E3C88);
            v115(v161, v107);
            v115(v163, v107);
            return (v115)(v167, v107);
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v152 = v90;
        result = sub_23D8DE810();
        if (result)
        {
          v93 = v156;
          v94 = v145;
          v145(v156, v88, v62);
          v95 = v157;
          v94(v93 + *(v157 + 48), v72, v62);
          v96 = v158;
          sub_23D83C67C(v93, v158, &qword_27E2EF5F0, &qword_23D8E3C80);
          v97 = *(v95 + 48);
          v98 = v160;
          v99 = v62;
          v100 = v165;
          v165(v160, v96, v62);
          v101 = v148;
          v148(v96 + v97, v99);
          sub_23D89CC44(v93, v96);
          v100(v98 + *(v159 + 36), v96 + *(v95 + 48), v99);
          v101(v96, v99);
          sub_23D8DC960();
          v102 = sub_23D8DC810();

          v103 = sub_23D8DBEA0();
          v170 = v102;
          sub_23D8DBEF0();
          v103(v171, 0);
          sub_23D83C6E4(v98, &qword_27E2EF5F8, &qword_23D8E3C88);
          v101(v161, v99);
          v101(v163, v99);
          return (v101)(v167, v99);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t sub_23D89B744(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  sub_23D8DC960();
  sub_23D8DC800();

  if (a2)
  {
    v7 = *(v3 + 32);
  }

  sub_23D8DE250();

  sub_23D89CCB4();
  sub_23D8DBE90();
  sub_23D89B808(a1);
}

uint64_t sub_23D89B808(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23D8DBEC0();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = sub_23D8DBE30();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_23D8DBE70();
  v12 = swift_allocBox();
  v44 = v13;
  v45 = v12;
  v14 = *(v11 - 8);
  v15 = *(v14 + 16);
  v43 = v14 + 16;
  v42 = v15;
  v15(v13, a1, v11);
  sub_23D8DBE20();
  v16 = *(v14 + 8);
  v46 = v11;
  v47 = a1;
  v16(a1, v11);
  sub_23D89CDB0(&qword_27E2EF640, MEMORY[0x277CC8B30]);
  v17 = sub_23D8DE950();
  v19 = v18;
  v20 = *(v2 + 24);
  sub_23D8DC960();
  sub_23D8DC690();
  v22 = v21;

  v23 = 1.0;
  if (v22 != 1.0)
  {
    sub_23D8DEA20();
    v23 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EE9F0, &unk_23D8E3CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E0890;
  v26 = *MEMORY[0x277D740D0];
  *(inited + 32) = *MEMORY[0x277D740D0];
  v27 = v26;
  sub_23D8DC960();
  sub_23D8DC690();
  v29 = v28;

  *(inited + 64) = MEMORY[0x277D839F8];
  *(inited + 40) = v23 * v29;
  sub_23D878214(inited);
  swift_setDeallocating();
  sub_23D83C6E4(inited + 32, &unk_27E2EEA00, &qword_23D8E2A80);
  v40 = v8;
  sub_23D8DBED0();
  v30 = swift_allocObject();
  *(v30 + 16) = 15;
  v48 = v17;
  v49 = v19;
  v31 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v31 = v17;
  }

  v32 = 11;
  if (((v19 >> 60) & ((v17 & 0x800000000000000) == 0)) == 0)
  {
    v32 = 7;
  }

  v50 = 15;
  v51 = v32 | (v31 << 16);
  v33 = v41;
  (*(v4 + 16))(&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v41);
  v34 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v17;
  *(v35 + 3) = v19;
  v36 = v45;
  *(v35 + 4) = v30;
  *(v35 + 5) = v36;
  (*(v4 + 32))(&v35[v34], &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED888, &qword_23D8E3CB0);
  sub_23D83CB18();
  sub_23D835AD0(&qword_27E2EF648, &qword_27E2ED888, &qword_23D8E3CB0);
  sub_23D8DEBE0();

  (*(v4 + 8))(v40, v33);

  v37 = v44;
  swift_beginAccess();
  v42(v47, v37, v46);
}

uint64_t sub_23D89BCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v85 = a7;
  v79 = a4;
  v86 = a10;
  v76 = sub_23D8DBE40();
  v75 = *(v76 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F0, &qword_23D8E3C80);
  v17 = *(*(v71 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v71);
  v70 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = v67 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F8, &qword_23D8E3C88);
  v21 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v73 = v67 - v22;
  v23 = sub_23D8DBE70();
  v80 = *(v23 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF600, &qword_23D8E3C90);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v78 = v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = v67 - v31;
  v81 = sub_23D8DBE50();
  v84 = *(v81 - 8);
  v33 = v84[8];
  v34 = MEMORY[0x28223BE20](v81);
  v77 = v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v83 = v67 - v36;
  v82 = swift_projectBox();
  v87 = a8;
  v88 = a9;
  sub_23D83CB18();
  sub_23D8DE8E0();
  v87 = a8;
  v88 = a9;

  v37 = sub_23D8DE8D0();
  if (!a2 || (a1 != 32 || a2 != 0xE100000000000000) && (sub_23D8DED20() & 1) == 0)
  {
    goto LABEL_13;
  }

  v38 = v86;
  swift_beginAccess();
  v39 = *(v38 + 16);
  sub_23D8DE940();
  v40 = sub_23D8DE7F0();

  if (v40)
  {
    goto LABEL_13;
  }

  v87 = a8;
  v88 = a9;
  sub_23D8DE8E0();
  v87 = a8;
  v88 = a9;

  v79 = sub_23D8DE8D0();
  v41 = v82;
  swift_beginAccess();
  v68 = *(v80 + 16);
  v68(v26, v41, v23);
  sub_23D89CDB0(&qword_27E2EF610, MEMORY[0x277CC8C40]);
  v80 = v37;
  sub_23D8DBE60();
  v42 = v84;
  v43 = v84[6];
  v44 = v81;
  if (v43(v32, 1, v81) == 1)
  {
    sub_23D83C6E4(v32, &qword_27E2EF600, &qword_23D8E3C90);
LABEL_12:
    v37 = v80;
LABEL_13:
    v66 = v86;
    result = swift_beginAccess();
    *(v66 + 16) = v37;
    *v85 = 0;
    return result;
  }

  v45 = v42[4];
  v67[1] = v42 + 4;
  v67[0] = v45;
  v45(v83, v32, v44);
  swift_beginAccess();
  v68(v26, v41, v23);
  v46 = v78;
  sub_23D8DBE60();
  v47 = v44;
  if (v43(v46, 1, v44) == 1)
  {
    (v42[1])(v83, v44);
    sub_23D83C6E4(v46, &qword_27E2EF600, &qword_23D8E3C90);
    goto LABEL_12;
  }

  v48 = v77;
  v49 = v67[0];
  (v67[0])(v77, v46, v44);
  sub_23D89CDB0(&qword_27E2EF618, MEMORY[0x277CC8C20]);
  v50 = v83;
  result = sub_23D8DE810();
  if (result)
  {
    v52 = v50;
    v79 = a12;
    v53 = v84;
    v54 = v84[2];
    v55 = v69;
    v54(v69, v52, v47);
    v56 = v71;
    v54((v55 + *(v71 + 48)), v48, v47);
    v57 = v70;
    sub_23D83C67C(v55, v70, &qword_27E2EF5F0, &qword_23D8E3C80);
    v58 = *(v56 + 48);
    v59 = v47;
    v60 = v73;
    v49(v73, v57, v59);
    v61 = v53[1];
    v61(v57 + v58, v59);
    sub_23D89CC44(v55, v57);
    v49((v60 + *(v72 + 36)), v57 + *(v56 + 48), v59);
    v61(v57, v59);
    v62 = v75;
    v63 = v74;
    v64 = v76;
    (*(v75 + 104))(v74, *MEMORY[0x277CC8B80], v76);
    swift_beginAccess();
    sub_23D835AD0(&qword_27E2EF620, &qword_27E2EF5F8, &qword_23D8E3C88);
    v65 = sub_23D8DBEA0();
    sub_23D8DBEE0();
    v65(&v87, 0);
    swift_endAccess();
    (*(v62 + 8))(v63, v64);
    sub_23D83C6E4(v60, &qword_27E2EF5F8, &qword_23D8E3C88);
    v61(v77, v59);
    v61(v83, v59);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D89C650@<X0>(void *a1@<X8>)
{
  result = sub_23D8DD1C0();
  *a1 = v3;
  return result;
}

unint64_t sub_23D89C6A4()
{
  result = qword_27E2EF5B0;
  if (!qword_27E2EF5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF5A8, &qword_23D8E3C10);
    sub_23D835AD0(&qword_27E2EF5B8, &qword_27E2EF5C0, &qword_23D8E3C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF5B0);
  }

  return result;
}

unint64_t sub_23D89C75C()
{
  result = qword_27E2EF5C8;
  if (!qword_27E2EF5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF590, &qword_23D8E3BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF588, &qword_23D8E3BC0);
    sub_23D89C850();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EF5B8, &qword_27E2EF5C0, &qword_23D8E3C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF5C8);
  }

  return result;
}

unint64_t sub_23D89C850()
{
  result = qword_27E2EF5D0;
  if (!qword_27E2EF5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF588, &qword_23D8E3BC0);
    sub_23D89C908();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF5D0);
  }

  return result;
}

unint64_t sub_23D89C908()
{
  result = qword_27E2EF5D8;
  if (!qword_27E2EF5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF5E0, &unk_23D8E3C20);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF5D8);
  }

  return result;
}

uint64_t sub_23D89C9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextBlockView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D89CA54()
{
  v1 = (type metadata accessor for AXRTextBlockView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 24);

  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE788, &qword_23D8E2790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D8DCE20();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D89CB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextBlockView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D89CBDC()
{
  v1 = *(type metadata accessor for AXRTextBlockView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_23D89A024(v2);
}

uint64_t sub_23D89CC44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F0, &qword_23D8E3C80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D89CCB4()
{
  result = qword_27E2EF628;
  if (!qword_27E2EF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF628);
  }

  return result;
}

unint64_t sub_23D89CD08()
{
  result = qword_27E2EF630;
  if (!qword_27E2EF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF630);
  }

  return result;
}

unint64_t sub_23D89CD5C()
{
  result = qword_27E2EF638;
  if (!qword_27E2EF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF638);
  }

  return result;
}

uint64_t sub_23D89CDB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D89CE08()
{
  v1 = sub_23D8DBEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_23D89CFA8()
{
  result = qword_27E2EF650;
  if (!qword_27E2EF650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF658, &qword_23D8E3CB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF598, &qword_23D8E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF590, &qword_23D8E3BC8);
    sub_23D89C75C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF570, &qword_23D8E3BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF5A8, &qword_23D8E3C10);
    sub_23D89C6A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF650);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23D89D138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23D89D180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D89D1FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *a1;
  v30 = a1[1];
  sub_23D83CB18();

  v5 = sub_23D8DDCB0();
  v7 = v6;
  v9 = v8;
  if (a1[3])
  {
    v29 = a1[2];
    v31 = a1[3];
    v26 = v4;

    v10 = sub_23D8DDCB0();
    v12 = v11;
    v27 = v7;
    v14 = v13;
    sub_23D8DDB90();
    v15 = sub_23D8DDC40();
    v17 = v16;
    v25 = v18;
    v20 = v19;

    v21 = v14 & 1;
    v7 = v27;
    sub_23D83CB6C(v10, v12, v21);

    v22 = v25 & 1;
    sub_23D834028(v15, v17, v25 & 1);

    v4 = v26;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v22 = 0;
    v20 = 0;
  }

  v23 = v4 & 1;
  sub_23D834028(v5, v7, v4 & 1);

  sub_23D89D4FC(v15, v17, v22, v20);
  sub_23D89D540(v15, v17, v22, v20);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v23;
  *(a2 + 24) = v9;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v22;
  *(a2 + 56) = v20;
  sub_23D89D540(v15, v17, v22, v20);
  sub_23D83CB6C(v5, v7, v23);
}

uint64_t sub_23D89D3E0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  sub_23D8DE470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF660, &qword_23D8E3D70);
  sub_23D835AD0(&qword_27E2EF668, &qword_27E2EF660, &qword_23D8E3D70);
  return sub_23D8DE3F0();
}

uint64_t sub_23D89D4FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23D834028(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23D89D540(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23D83CB6C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23D89D5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23D89D720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AXRHighlightColorSelectionView()
{
  result = qword_27E2EF680;
  if (!qword_27E2EF680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D89D88C()
{
  sub_23D857704(319, &qword_27E2ED618, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_23D857704(319, &qword_27E2ED228, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_23D8366C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23D89D97C()
{
  result = qword_27E2EF690;
  if (!qword_27E2EF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF690);
  }

  return result;
}

uint64_t sub_23D89D9D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23D83C67C(v2, &v17 - v11, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCCB0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_23D89DBD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AXRHighlightColorSelectionView();
  sub_23D83C67C(v1 + *(v12 + 20), v11, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCF90();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D89DDF4()
{
  v0 = sub_23D8DC560();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D8DC530();
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_23D8DECA0();
    v8 = v1 + 16;
    v7 = *(v1 + 16);
    v14[1] = v5;
    v15 = v7;
    v9 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    v11 = (v8 - 8);
    do
    {
      v15(v4, v9, v0);
      sub_23D8DC550();
      (*v11)(v4, v0);
      sub_23D8DEC80();
      v12 = *(v16 + 16);
      sub_23D8DECB0();
      sub_23D8DECC0();
      sub_23D8DEC90();
      v9 += v10;
      --v6;
    }

    while (v6);

    return v16;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_23D89DF94()
{
  v1 = v0;
  v2 = (v0 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v2)
  {
    v3 = *v2;

    sub_23D8DC960();

    v4 = sub_23D8DC810();

    if (!v4)
    {
      v4 = sub_23D8DE240();
    }

    v12 = v4;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v5 = sub_23D89DDF4();
    MEMORY[0x28223BE20](v5);
    v11[2] = v1;
    v6 = sub_23D8A5668(sub_23D8A1590, v11, v5);

    if (v6)
    {
      v7 = 1;
    }

    else
    {

      sub_23D8DC960();

      v8 = sub_23D8DC6B0();

      v12 = v8;
      sub_23D8DE2A0();
      v7 = sub_23D8DE180();
    }

    return v7 & 1;
  }

  else
  {
    v10 = v2[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89E180(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;
  sub_23D86C2EC();

  sub_23D8DE2A0();
  v3 = (a2 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v3)
  {
    v4 = *v3;

    sub_23D8DC960();

    sub_23D8DC6B0();

    sub_23D8DE2A0();
    v5 = sub_23D8DE180();

    return v5 & 1;
  }

  else
  {
    v7 = v3[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89E2D4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF698, &qword_23D8E3E88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6A0, &qword_23D8E3E90);
  sub_23D835AD0(&qword_27E2EF6A8, &qword_27E2EF6A0, &qword_23D8E3E90);
  sub_23D8DDBC0();
  v12 = (v1 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v12)
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v13 = sub_23D8DEB80();
    v14 = sub_23D8DEB70();

    v15 = MEMORY[0x277CDF3D0];
    if ((v14 & 1) == 0)
    {
      v15 = MEMORY[0x277CDF3C0];
    }

    (*(v3 + 104))(v6, *v15, v2);
    KeyPath = swift_getKeyPath();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6B0, &qword_23D8E3EC8);
    v18 = v24;
    v19 = (v24 + *(v17 + 36));
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v3 + 32))(v19 + *(v20 + 28), v6, v2);
    *v19 = KeyPath;
    return (*(v8 + 32))(v18, v11, v7);
  }

  else
  {
    v22 = v12[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89E60C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5D8, &unk_23D8E24C0);
  v3 = *(v35 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6B8, &qword_23D8E3ED0);
  v33 = *(v9 - 8);
  v10 = v33;
  v11 = *(v33 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6C0, &qword_23D8E3ED8);
  sub_23D835AD0(&qword_27E2EF6C8, &qword_27E2EF6C0, &qword_23D8E3ED8);
  v17 = v16;
  v32 = v16;
  sub_23D8DE520();
  v37 = a1;
  type metadata accessor for AXRCustomizationColorButton();
  sub_23D8A17C8(&qword_27E2EE608, type metadata accessor for AXRCustomizationColorButton);
  v18 = v8;
  v30 = v8;
  sub_23D8DE520();
  v19 = *(v10 + 16);
  v31 = v14;
  v19(v14, v17, v9);
  v20 = v3[2];
  v21 = v34;
  v22 = v18;
  v23 = v35;
  v20(v34, v22, v35);
  v24 = v36;
  v19(v36, v14, v9);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6D0, &qword_23D8E3EE0);
  v20(&v24[*(v25 + 48)], v21, v23);
  v26 = v3[1];
  v26(v30, v23);
  v27 = *(v33 + 8);
  v27(v32, v9);
  v26(v21, v23);
  return (v27)(v31, v9);
}

uint64_t sub_23D89E990@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for AXRHighlightColorSelectionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6D8, &unk_23D8E3F48);
  v6 = *(v37 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE600, &unk_23D8E3420);
  v35 = *(v12 - 8);
  v13 = v35;
  v14 = *(v35 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v34 = &v32 - v18;
  sub_23D89EDDC();
  v39 = sub_23D8DC530();
  sub_23D8A122C(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_23D8A1294(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6E0, &qword_23D8E3F58);
  sub_23D835AD0(&qword_27E2EF6E8, &qword_27E2EF6E0, &qword_23D8E3F58);
  sub_23D835AD0(&qword_27E2EE5F8, &qword_27E2EE600, &unk_23D8E3420);
  sub_23D8A17C8(&qword_27E2EF6F0, MEMORY[0x277CE72C0]);
  v32 = v11;
  sub_23D8DE4D0();
  v22 = *(v13 + 16);
  v33 = v17;
  v22(v17, v19, v12);
  v23 = v6[2];
  v24 = v36;
  v25 = v11;
  v26 = v37;
  v23(v36, v25, v37);
  v27 = v38;
  v22(v38, v17, v12);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6F8, &unk_23D8E3F60);
  v23(&v27[*(v28 + 48)], v24, v26);
  v29 = v6[1];
  v29(v32, v26);
  v30 = *(v35 + 8);
  v30(v34, v12);
  v29(v24, v26);
  return (v30)(v33, v12);
}

uint64_t sub_23D89EDDC()
{
  v1 = v0;
  v2 = type metadata accessor for AXRHighlightColorSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (v0 + *(MEMORY[0x28223BE20](v2 - 8) + 32));
  if (*v5)
  {
    v6 = *v5;

    v7 = sub_23D8DC960();

    v8 = sub_23D8DC810();
    if (!v8)
    {
      v8 = sub_23D8DE240();
    }

    v15[1] = v8;
    sub_23D86C2EC();
    v9 = sub_23D8DE2A0();
    sub_23D8A122C(v1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v12 = sub_23D8A1294(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
    MEMORY[0x28223BE20](v12);
    v15[-4] = v7;
    v15[-3] = v1;
    v15[-2] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
    sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0);
    sub_23D8DE360();
  }

  else
  {
    v14 = v5[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_23D8DC560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AXRHighlightColorSelectionView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[7] = sub_23D8DC550();
  sub_23D86C2EC();
  v13 = sub_23D8DE2A0();
  sub_23D8A122C(a2, v12);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_23D8A1294(v12, v16 + v14);
  (*(v6 + 32))(v16 + v15, v8, v5);
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
  sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0);
  sub_23D8DE360();
}

uint64_t sub_23D89F2EC(uint64_t a1)
{
  v2 = sub_23D8DC510();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v7)
  {
    v8 = *v7;

    sub_23D8DC960();

    sub_23D8DC550();
    sub_23D8DC6C0();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = v7[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89F48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_23D8DD420();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D89F4FC(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_23D89F4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v7);
  v99 = &v88 - v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v10 = *(*(v98 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v98);
  v104 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v97 = &v88 - v14;
  MEMORY[0x28223BE20](v13);
  v103 = &v88 - v15;
  v16 = sub_23D8DCCB0();
  v93 = *(v16 - 8);
  v94 = v16;
  v17 = *(v93 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v88 - v20;
  v21 = sub_23D8DCF90();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB50();
  v113 = sub_23D8DE130();
  sub_23D8DCD60();
  v26 = v159;
  v109 = v161;
  v110 = v160;
  v27 = v162;
  v108 = v163;
  v28 = v164;
  v29 = sub_23D8DE5F0();
  v111 = v30;
  v112 = v29;
  v95 = a1;
  v105 = sub_23D8DC550();
  v31 = sub_23D8DE5F0();
  v106 = v32;
  v107 = v31;
  v114 = a2;
  sub_23D89DBD0(v25);
  v33 = sub_23D8DCF80();
  v34 = *(v22 + 8);
  v34(v25, v21);
  if (v33)
  {
    v35 = [objc_opt_self() mainScreen];
    [v35 bounds];
  }

  sub_23D89DBD0(v25);
  v36 = sub_23D8DCF80();
  v34(v25, v21);
  if (v36)
  {
    v37 = [objc_opt_self() mainScreen];
    [v37 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v96 = sub_23D8DDA30();
  sub_23D8DCC20();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v157 = 0;
  v128 = sub_23D8DC520();
  v129 = v46;
  sub_23D83CB18();
  v90 = sub_23D8DDCB0();
  v48 = v47;
  v50 = v49;
  v92 = v51;
  v52 = v89;
  sub_23D89D9D0(v89);
  v54 = v93;
  v53 = v94;
  v55 = v91;
  (*(v93 + 104))(v91, *MEMORY[0x277CDF3C0], v94);
  v56 = sub_23D8DCCA0();
  v57 = *(v54 + 8);
  v57(v55, v53);
  v57(v52, v53);
  if (v56)
  {
    v58 = sub_23D8DE240();
  }

  else
  {
    v58 = sub_23D8DE220();
  }

  v59 = v99;
  v128 = v58;
  v60 = v90;
  v61 = sub_23D8DDC10();
  v94 = v62;
  v95 = v61;
  LODWORD(v93) = v63;
  v99 = v64;
  sub_23D83CB6C(v60, v48, v50 & 1);

  v128 = sub_23D8DE2C0();
  sub_23D8DDF80();

  v65 = (v114 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v65)
  {
    v66 = *v65;

    sub_23D8DC960();

    v67 = sub_23D8DC6B0();

    v128 = v67;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v68 = sub_23D8DE180();

    if (v68)
    {
      v69 = 1.0;
    }

    else
    {
      v69 = 0.0;
    }

    v70 = v97;
    (*(v101 + 32))(v97, v59, v102);
    *(v70 + *(v98 + 36)) = v69;
    v71 = v103;
    sub_23D86C79C(v70, v103);
    v115 = v154;
    v116 = v155;
    v117 = v156;
    v72 = v104;
    sub_23D86C80C(v71, v104);
    *&v118 = v105;
    WORD4(v118) = 256;
    *(&v118 + 10) = v167;
    HIWORD(v118) = v168;
    *&v119 = v26;
    *(&v119 + 1) = __PAIR64__(v109, v110);
    *&v120 = v27;
    *(&v120 + 1) = v108;
    *&v121 = v28;
    *(&v121 + 1) = v113;
    LOWORD(v122) = 256;
    *(&v122 + 2) = v165;
    WORD3(v122) = v166;
    *(&v122 + 1) = v112;
    *&v123 = v111;
    *(&v123 + 1) = v107;
    *&v124[0] = v106;
    *(v124 + 8) = v154;
    *(&v124[2] + 8) = v156;
    *(&v124[1] + 8) = v155;
    v73 = v96;
    BYTE8(v124[3]) = v96;
    *(&v124[3] + 9) = *v158;
    HIDWORD(v124[3]) = *&v158[3];
    *&v125 = v39;
    *(&v125 + 1) = v41;
    *&v126 = v43;
    *(&v126 + 1) = v45;
    v127 = 0;
    v74 = v124[3];
    v75 = v125;
    v76 = v126;
    *(a4 + 192) = 0;
    *(a4 + 160) = v75;
    *(a4 + 176) = v76;
    v77 = v118;
    v78 = v119;
    v79 = v121;
    *(a4 + 32) = v120;
    *(a4 + 48) = v79;
    v80 = v122;
    *a4 = v77;
    *(a4 + 16) = v78;
    v81 = v124[1];
    *(a4 + 128) = v124[2];
    *(a4 + 144) = v74;
    v82 = v123;
    *(a4 + 96) = v124[0];
    *(a4 + 112) = v81;
    *(a4 + 64) = v80;
    *(a4 + 80) = v82;
    v84 = v94;
    v83 = v95;
    *(a4 + 200) = v95;
    *(a4 + 208) = v84;
    LOBYTE(v70) = v93 & 1;
    *(a4 + 216) = v93 & 1;
    *(a4 + 224) = v99;
    *(a4 + 232) = 0;
    *(a4 + 240) = 1;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v72, a4 + *(v85 + 80));
    sub_23D83C67C(&v118, &v128, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v83, v84, v70);

    sub_23D86C87C(v71);
    sub_23D86C87C(v72);
    sub_23D83CB6C(v83, v84, v70);

    v128 = v105;
    LOWORD(v129) = 256;
    *(&v129 + 2) = v167;
    HIWORD(v129) = v168;
    v130 = v26;
    v131 = v110;
    v132 = v109;
    v133 = v27;
    v134 = v108;
    v135 = v28;
    v136 = v113;
    v137 = 256;
    v138 = v165;
    v139 = v166;
    v140 = v112;
    v141 = v111;
    v142 = v107;
    v143 = v106;
    v144 = v115;
    v145 = v116;
    v146 = v117;
    v147 = v73;
    *v148 = *v158;
    *&v148[3] = *&v158[3];
    v149 = v39;
    v150 = v41;
    v151 = v43;
    v152 = v45;
    v153 = 0;
    return sub_23D86C8E4(&v128);
  }

  else
  {
    v87 = v65[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89FEAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AXRHighlightColorSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = 0x800000023D8E6230;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000010;
  if (qword_27E2F3C80)
  {
    v9 = qword_27E2F3C80;
    v10 = sub_23D8DE830();
    v11 = sub_23D8DE830();
    v12 = v5;
    v13 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v8 = sub_23D8DE870();
    v7 = v14;

    v5 = v12;
  }

  v37 = v8;
  v38 = v7;
  LODWORD(v36) = sub_23D89DF94();
  v15 = (a1 + *(v4 + 24));
  if (*v15)
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v16 = sub_23D8DEB80();
    v35 = sub_23D8DEB70();

    sub_23D8A122C(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_23D8DE9D0();
    v17 = sub_23D8DE9C0();
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_23D8A1294(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
    sub_23D8A122C(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v21 = sub_23D8DE9C0();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    sub_23D8A1294(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v18);
    sub_23D8DE480();
    v23 = v42;
    LOBYTE(v18) = v36 & 1;
    v24 = v35 & 1;
    v36 = v43;
    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v26 = type metadata accessor for AXRCustomizationColorButton();
    *(a2 + v26[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v27 = (a2 + v26[6]);
    v28 = v38;
    *v27 = v37;
    v27[1] = v28;
    *(a2 + v26[7]) = v18;
    *(a2 + v26[8]) = v24;
    *(a2 + v26[9]) = 1;
    v29 = a2 + v26[10];
    *v29 = v23;
    *(v29 + 8) = v36;
    v30 = a2 + v26[11];
    v39 = 0;
    result = sub_23D8DE310();
    v32 = v41;
    *v30 = v40;
    *(v30 + 1) = v32;
  }

  else
  {
    v33 = v15[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A02F8@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v3)
  {
    v4 = *v3;

    sub_23D8DC960();

    v5 = sub_23D8DC6B0();

    *a2 = v5;
  }

  else
  {
    v7 = v3[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A03C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23D8DC510();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a4 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v11)
  {
    v12 = *a1;
    v13 = *v11;

    sub_23D8DC960();

    sub_23D8DC6C0();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15 = v11[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A056C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D8DC510();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v8)
  {
    v9 = *v8;

    sub_23D8DC960();

    sub_23D8DC810();

    sub_23D8DC710();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v11 = v8[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A0710@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = sub_23D8DD420();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D8A0780(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_23D8A0780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v100 = a2;
  v114 = a1;
  v95 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v99 = v91 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v6 = *(*(v98 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v98);
  v104 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v97 = v91 - v10;
  MEMORY[0x28223BE20](v9);
  v103 = v91 - v11;
  v94 = sub_23D8DCCB0();
  v92 = *(v94 - 8);
  v12 = *(v92 + 64);
  v13 = MEMORY[0x28223BE20](v94);
  v93 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91[0] = v91 - v15;
  v16 = sub_23D8DCF90();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB50();
  v113 = sub_23D8DE130();
  sub_23D8DCD60();
  v21 = v163;
  v109 = v165;
  v110 = v164;
  v22 = v166;
  v108 = v167;
  v23 = v168;
  v24 = sub_23D8DE5F0();
  v111 = v25;
  v112 = v24;
  v26 = sub_23D8DC810();
  if (!v26)
  {
    v26 = sub_23D8DE240();
  }

  v105 = v26;
  v27 = sub_23D8DE5F0();
  v106 = v28;
  v107 = v27;
  sub_23D89DBD0(v20);
  v29 = sub_23D8DCF80();
  v30 = *(v17 + 8);
  v30(v20, v16);
  if (v29)
  {
    v31 = [objc_opt_self() mainScreen];
    [v31 bounds];
  }

  sub_23D89DBD0(v20);
  v32 = sub_23D8DCF80();
  v30(v20, v16);
  if (v32)
  {
    v33 = [objc_opt_self() &off_278BEC328];
    [v33 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v96 = sub_23D8DDA30();
  sub_23D8DCC20();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v161 = 0;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v42 = 0xED0000726F6C6F43;
  v43 = 0x747865742E727861;
  if (qword_27E2F3C80)
  {
    v44 = qword_27E2F3C80;
    v45 = sub_23D8DE830();
    v46 = sub_23D8DE830();
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    v43 = sub_23D8DE870();
    v42 = v48;
  }

  v128 = v43;
  v129 = v42;
  sub_23D83CB18();
  v49 = sub_23D8DDCB0();
  v51 = v50;
  v53 = v52;
  v91[1] = v54;
  v55 = v91[0];
  sub_23D89D9D0(v91[0]);
  v56 = v92;
  v57 = v93;
  v58 = v94;
  (*(v92 + 104))(v93, *MEMORY[0x277CDF3C0], v94);
  v59 = sub_23D8DCCA0();
  v60 = *(v56 + 8);
  v60(v57, v58);
  v60(v55, v58);
  if (v59)
  {
    v61 = sub_23D8DE240();
  }

  else
  {
    v61 = sub_23D8DE220();
  }

  v62 = v99;
  v128 = v61;
  v63 = sub_23D8DDC10();
  v93 = v64;
  v94 = v63;
  LODWORD(v92) = v65;
  v99 = v66;
  sub_23D83CB6C(v49, v51, v53 & 1);

  v128 = sub_23D8DE2C0();
  sub_23D8DDF80();

  v67 = (v114 + *(type metadata accessor for AXRHighlightColorSelectionView() + 24));
  if (*v67)
  {
    v68 = *v67;

    sub_23D8DC960();

    v69 = sub_23D8DC6B0();

    v128 = v69;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v70 = sub_23D8DE180();

    if (v70)
    {
      v71 = 1.0;
    }

    else
    {
      v71 = 0.0;
    }

    v72 = v97;
    (*(v101 + 32))(v97, v62, v102);
    *(v72 + *(v98 + 36)) = v71;
    v73 = v103;
    sub_23D86C79C(v72, v103);
    v115 = v154;
    v116 = v155;
    v117 = v156;
    v74 = v104;
    sub_23D86C80C(v73, v104);
    *&v118 = v105;
    WORD4(v118) = 256;
    *(&v118 + 10) = v159;
    HIWORD(v118) = v160;
    *&v119 = v21;
    *(&v119 + 1) = __PAIR64__(v109, v110);
    *&v120 = v22;
    *(&v120 + 1) = v108;
    *&v121 = v23;
    *(&v121 + 1) = v113;
    LOWORD(v122) = 256;
    *(&v122 + 2) = v157;
    WORD3(v122) = v158;
    *(&v122 + 1) = v112;
    *&v123 = v111;
    *(&v123 + 1) = v107;
    *&v124[0] = v106;
    *(v124 + 8) = v154;
    *(&v124[2] + 8) = v156;
    *(&v124[1] + 8) = v155;
    v75 = v96;
    BYTE8(v124[3]) = v96;
    *(&v124[3] + 9) = *v162;
    HIDWORD(v124[3]) = *&v162[3];
    *&v125 = v35;
    *(&v125 + 1) = v37;
    *&v126 = v39;
    *(&v126 + 1) = v41;
    v127 = 0;
    v76 = v124[3];
    v77 = v125;
    v78 = v126;
    v79 = v95;
    *(v95 + 192) = 0;
    *(v79 + 160) = v77;
    *(v79 + 176) = v78;
    v80 = v118;
    v81 = v119;
    v82 = v121;
    *(v79 + 32) = v120;
    *(v79 + 48) = v82;
    v83 = v122;
    *v79 = v80;
    *(v79 + 16) = v81;
    v84 = v124[1];
    *(v79 + 128) = v124[2];
    *(v79 + 144) = v76;
    v85 = v123;
    *(v79 + 96) = v124[0];
    *(v79 + 112) = v84;
    *(v79 + 64) = v83;
    *(v79 + 80) = v85;
    v87 = v93;
    v86 = v94;
    *(v79 + 200) = v94;
    *(v79 + 208) = v87;
    LOBYTE(v72) = v92 & 1;
    *(v79 + 216) = v92 & 1;
    *(v79 + 224) = v99;
    *(v79 + 232) = 0;
    *(v79 + 240) = 1;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v74, v79 + *(v88 + 80));
    sub_23D83C67C(&v118, &v128, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v86, v87, v72);

    sub_23D86C87C(v73);
    sub_23D86C87C(v74);
    sub_23D83CB6C(v86, v87, v72);

    v128 = v105;
    LOWORD(v129) = 256;
    *(&v129 + 2) = v159;
    HIWORD(v129) = v160;
    v130 = v21;
    v131 = v110;
    v132 = v109;
    v133 = v22;
    v134 = v108;
    v135 = v23;
    v136 = v113;
    v137 = 256;
    v138 = v157;
    v139 = v158;
    v140 = v112;
    v141 = v111;
    v142 = v107;
    v143 = v106;
    v144 = v115;
    v145 = v116;
    v146 = v117;
    v147 = v75;
    *v148 = *v162;
    *&v148[3] = *&v162[3];
    v149 = v35;
    v150 = v37;
    v151 = v39;
    v152 = v41;
    v153 = 0;
    return sub_23D86C8E4(&v128);
  }

  else
  {
    v90 = v67[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A122C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRHighlightColorSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8A1294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRHighlightColorSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8A12F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AXRHighlightColorSelectionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D8A02F8(v6, a1);
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for AXRHighlightColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCCB0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCF90();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *&v6[v9];
  }

  v12 = *&v6[*(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A150C(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRHighlightColorSelectionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D8A03C8(a1, v4, v5, v6);
}

uint64_t sub_23D8A15B0()
{
  v1 = type metadata accessor for AXRHighlightColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D8DCF90();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = *&v5[*(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A1748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXRHighlightColorSelectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D89F064(a1, v6, a2);
}

uint64_t sub_23D8A17C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D8A1810()
{
  v1 = type metadata accessor for AXRHighlightColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_23D8DC560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v17 = *(v6 + 64);
  v8 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D8DCCB0();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D8DCF90();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *&v8[v11];
  }

  v14 = (v3 + v4 + v7) & ~v7;
  v15 = *&v8[*(v1 + 24)];

  (*(v6 + 8))(v0 + v14, v5);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v2 | v7 | 7);
}

uint64_t sub_23D8A1A3C()
{
  v1 = *(type metadata accessor for AXRHighlightColorSelectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_23D8DC560() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_23D89F2EC(v0 + v2);
}

uint64_t sub_23D8A1B14()
{
  v1 = type metadata accessor for AXRHighlightColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCCB0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCF90();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *&v6[v9];
  }

  v12 = *&v6[*(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A1CB4()
{
  v1 = *(type metadata accessor for AXRHighlightColorSelectionView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_23D8A056C(v2, v3);
}

unint64_t sub_23D8A1D28()
{
  result = qword_27E2EF700;
  if (!qword_27E2EF700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF6B0, &qword_23D8E3EC8);
    sub_23D835AD0(&qword_27E2EF708, &qword_27E2EF698, &qword_23D8E3E88);
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF700);
  }

  return result;
}

id titleFontStyle.getter()
{
  if (qword_27E2ECED8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2EF710;

  return v1;
}

double titleFontPointSize.getter()
{
  v0 = objc_opt_self();
  if (qword_27E2ECED8 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = [v0 preferredFontForTextStyle_];
  [v1 pointSize];
  v3 = v2;

  return v3;
}

UIImage __swiftcall iconForBundleId(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    v1 = objc_opt_self();
    if (qword_27E2ECED8 != -1)
    {
      v25 = v1;
      swift_once();
      v1 = v25;
    }

    v2 = [v1 preferredFontForTextStyle_];
    [v2 pointSize];
    v4 = v3;

    v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v6 = sub_23D8DE830();
    v7 = [v5 initWithBundleIdentifier_];

    if (v4 + v4 <= 66.0)
    {
      v8 = v4 + v4;
    }

    else
    {
      v8 = 66.0;
    }

    v9 = [objc_opt_self() mainScreen];
    [v9 scale];
    v11 = v10;

    v12 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v8 scale:{v8, v11}];
    v13 = objc_opt_self();
    [v12 setAppearance_];
    [v12 setAppearanceVariant_];
    v14 = [v13 tintColor];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 CGColor];

      if (v16)
      {
        v17 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];
        [v12 setTintColor_];
      }
    }

    v18 = [v7 prepareImageForDescriptor_];
    if (v18)
    {
      v19 = v18;
      result.super.isa = [v19 CGImage];
      if (result.super.isa)
      {
        isa = result.super.isa;
        [v19 scale];
        v23 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:isa scale:0 orientation:v22];

        return v23;
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v24 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v24 init];
}

uint64_t AXRSegmentedPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_23D8DD700();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF718, &qword_23D8E3F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF720, &qword_23D8E3F78);
  v34 = *(v35 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v32 - v10;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF728, &qword_23D8E3F80);
  v12 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v32 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF730, &qword_23D8E3F88);
  v36 = *(v38 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v32 = &v32 - v16;
  sub_23D8DD480();
  v17 = v1 + *(type metadata accessor for AXRSegmentedPicker() + 20);
  sub_23D8DE470();
  v42 = v2;
  sub_23D8DC610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF738, &qword_23D8E3F90);
  sub_23D8A2C54(&qword_27E2EF740, MEMORY[0x277CE7328]);
  sub_23D8A2B14();
  sub_23D8DE3B0();
  sub_23D8DE5F0();
  sub_23D8DD0D0();
  (*(v34 + 32))(v14, v11, v35);
  v18 = &v14[*(v33 + 36)];
  v19 = v48;
  *(v18 + 4) = v47;
  *(v18 + 5) = v19;
  *(v18 + 6) = v49;
  v20 = v44;
  *v18 = v43;
  *(v18 + 1) = v20;
  v21 = v46;
  *(v18 + 2) = v45;
  *(v18 + 3) = v21;
  v22 = v37;
  sub_23D8DD6F0();
  sub_23D8A2C9C();
  v23 = v32;
  v24 = v39;
  sub_23D8DDD30();
  (*(v40 + 8))(v22, v24);
  sub_23D8A2D54(v14);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF770, &unk_23D8E3FA0);
  v26 = v41;
  v27 = (v41 + *(v25 + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE450, &qword_23D8E21D0) + 28);
  v29 = *MEMORY[0x277CDF420];
  v30 = sub_23D8DCCC0();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  return (*(v36 + 32))(v26, v23, v38);
}

uint64_t type metadata accessor for AXRSegmentedPicker()
{
  result = qword_27E2EF778;
  if (!qword_27E2EF778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D8A2820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  v2 = type metadata accessor for AXRSegmentedPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF798, &unk_23D8E4058);
  v5 = sub_23D8DC610();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23D8E34F0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x277CE7320], v5);
  v11(v10 + v7, *MEMORY[0x277CE7318], v5);
  v11(v10 + 2 * v7, *MEMORY[0x277CE7310], v5);
  v18 = v9;
  swift_getKeyPath();
  sub_23D8A33A4(v16, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_23D8A354C(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF7A0, &unk_23D8E4080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF758, &qword_23D8E3F98);
  sub_23D835AD0(&qword_27E2EF7A8, &qword_27E2EF7A0, &unk_23D8E4080);
  sub_23D8A2C54(&qword_27E2EF740, MEMORY[0x277CE7328]);
  sub_23D8A2B98();
  return sub_23D8DE4C0();
}

unint64_t sub_23D8A2B14()
{
  result = qword_27E2EF748;
  if (!qword_27E2EF748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF738, &qword_23D8E3F90);
    sub_23D8A2B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF748);
  }

  return result;
}

unint64_t sub_23D8A2B98()
{
  result = qword_27E2EF750;
  if (!qword_27E2EF750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF758, &qword_23D8E3F98);
    sub_23D8A2C54(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF750);
  }

  return result;
}

uint64_t sub_23D8A2C54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D8A2C9C()
{
  result = qword_27E2EF760;
  if (!qword_27E2EF760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF728, &qword_23D8E3F80);
    sub_23D835AD0(&qword_27E2EF768, &qword_27E2EF720, &qword_23D8E3F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF760);
  }

  return result;
}

uint64_t sub_23D8A2D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF728, &qword_23D8E3F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D8A2DBC()
{
  sub_23D8DC5F0();
  sub_23D8DE2E0();
  sub_23D8DC600();
  sub_23D83CB18();
  sub_23D8DDE10();
}

uint64_t sub_23D8A2E9C(uint64_t a1)
{
  v2 = sub_23D8DCCC0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x23EEEF300](v5);
}

uint64_t sub_23D8A2F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D8DC620();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF718, &qword_23D8E3F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23D8A30A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23D8DC620();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF718, &qword_23D8E3F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_23D8A31B0()
{
  sub_23D8DC620();
  if (v0 <= 0x3F)
  {
    sub_23D8A3234();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D8A3234()
{
  if (!qword_27E2EF788)
  {
    sub_23D8DC610();
    v0 = sub_23D8DE490();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EF788);
    }
  }
}

unint64_t sub_23D8A3290()
{
  result = qword_27E2EF790;
  if (!qword_27E2EF790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF770, &unk_23D8E3FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF728, &qword_23D8E3F80);
    sub_23D8DD700();
    sub_23D8A2C9C();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EE4E0, &qword_27E2EE450, &qword_23D8E21D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF790);
  }

  return result;
}

uint64_t sub_23D8A33A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRSegmentedPicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8A3408()
{
  v1 = (type metadata accessor for AXRSegmentedPicker() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_23D8DC620();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF718, &qword_23D8E3F70) + 32);
  v10 = sub_23D8DC610();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A354C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRSegmentedPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8A35B0()
{
  v0 = *(*(type metadata accessor for AXRSegmentedPicker() - 8) + 80);

  return sub_23D8A2DBC();
}

uint64_t sub_23D8A3674@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = *v1;
  v24[0] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF800, &qword_23D8E4310);
  sub_23D8DE320();
  v4 = v25;
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 userInterfaceLayoutDirection];

  v24[0] = v26;
  sub_23D8DE320();
  if (v25)
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v7 = 0xEB00000000647261;
    v8 = 0x77726F662E727861;
    if (qword_27E2F3C80)
    {
LABEL_9:
      v9 = qword_27E2F3C80;
      v10 = sub_23D8DE830();
      v11 = sub_23D8DE830();
      v12 = [v9 localizedStringForKey:v10 value:0 table:{v11, v24[0]}];

      v8 = sub_23D8DE870();
      v7 = v13;
    }
  }

  else
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v8 = 0x697765722E727861;
    if (qword_27E2F3C80)
    {
      goto LABEL_9;
    }

    v7 = 0xEA0000000000646ELL;
  }

  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  v14[1] = *v2;
  v14[2] = v15;
  v16 = *(v2 + 48);
  v14[3] = *(v2 + 32);
  v14[4] = v16;
  if (*(v2 + 48))
  {
    v17 = v14;
    sub_23D8380E8();
    sub_23D8A4AB0(v2, v24);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v18 = sub_23D8DEB80();
    v19 = sub_23D8DEB70();

    if (v19)
    {
      result = sub_23D8DE220();
    }

    else
    {
      result = sub_23D8DE240();
    }

    v21 = 0xE900000000000064;
    if ((v6 == 1) == v4)
    {
      v21 = 0xEA00000000006472;
    }

    v22 = 0x61776B6361626F67;
    if ((v6 == 1) != v4)
    {
      v22 = 0x726177726F666F67;
    }

    *a1 = v22;
    *(a1 + 8) = v21;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = sub_23D8A4AA8;
    *(a1 + 56) = v17;
    *(a1 + 64) = result;
  }

  else
  {
    v23 = *(v2 + 56);
    sub_23D8A4AB0(v2, v24);
    sub_23D8DC9F0();
    sub_23D8A464C(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D8A3A04(__int128 *a1)
{
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF800, &qword_23D8E4310);
  sub_23D8DE320();
  if (v7 == 1)
  {
    v2 = *(a1 + 4);
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = v2;
    sub_23D8DC290();
  }

  v9 = *a1;
  sub_23D8DE320();
  if (v7)
  {
    return;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
LABEL_8:
    v6 = *(a1 + 5);
    sub_23D8DC430();
    sub_23D8A464C(&unk_27E2F0420, MEMORY[0x277CE7230]);
    sub_23D8DD120();
    __break(1u);
    return;
  }

  v5 = v4;
  sub_23D8DC3F0();
}

uint64_t sub_23D8A3B18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_23D8A3674(a1);
}

uint64_t sub_23D8A3B54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DC5A0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DBF60();
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 8);
  v14 = sub_23D8DC9F0();
  v15 = sub_23D8A464C(&qword_27E2ED238, MEMORY[0x277CE73F8]);

  v59 = v15;
  v60 = v14;
  v16 = sub_23D8DD140();
  v57 = v17;
  v58 = v16;
  v64 = 0;
  sub_23D8DE310();
  v56 = v65;
  v55 = v66;
  sub_23D8DC900();
  sub_23D8A464C(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  v18 = sub_23D8DCEF0();
  v53 = v19;
  v54 = v18;
  v20 = sub_23D8DC430();
  v49[2] = sub_23D8A464C(&unk_27E2F0420, MEMORY[0x277CE7230]);
  v49[3] = v20;
  v21 = sub_23D8DD140();
  v50 = v22;
  v51 = v21;
  v61 = v1;
  v23 = *(v1 + 16);
  if (!v23)
  {
    v47 = *(v61 + 24);
    sub_23D8DD120();
    __break(1u);
    goto LABEL_10;
  }

  v52 = *(v1 + 16);
  v24 = v23;
  sub_23D8DC260();
  v25 = v4[13];
  v25(v7, *MEMORY[0x277CE7300], v3);
  v26 = sub_23D8DBF50();
  v27 = v3;
  v28 = v4[1];
  v29 = v4 + 1;
  v30 = v27;
  v49[1] = v29;
  v28(v7);
  v31 = *(v63 + 8);
  v63 += 8;
  v31(v12, v62);
  if (v26 < 0)
  {
  }

  else
  {
    sub_23D8DC260();

    v25(v7, *MEMORY[0x277CE7308], v30);
    v32 = sub_23D8DBF50();
    (v28)(v7, v30);
    v31(v12, v62);
    if ((v32 & 0x8000000000000000) == 0)
    {
      v33 = 0;
      goto LABEL_7;
    }
  }

  v33 = 1;
LABEL_7:
  v13 = v61;
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  v36 = sub_23D8DCB10();
  v37 = *(v13 + 32);
  if (v37)
  {
    v38 = v36;
    v39 = *(v13 + 32);

    result = sub_23D8DCB10();
    *a1 = v56;
    v41 = v54;
    *(a1 + 8) = v55;
    *(a1 + 16) = v41;
    v43 = v50;
    v42 = v51;
    *(a1 + 24) = v53;
    *(a1 + 32) = v42;
    v44 = v57;
    v45 = v58;
    *(a1 + 40) = v43;
    *(a1 + 48) = v45;
    *(a1 + 56) = v44;
    *(a1 + 64) = KeyPath;
    *(a1 + 72) = sub_23D8A4BB0;
    *(a1 + 80) = v35;
    v46 = v52;
    *(a1 + 88) = v38;
    *(a1 + 96) = v46;
    *(a1 + 104) = result;
    *(a1 + 112) = v37;
    return result;
  }

LABEL_10:
  v48 = *(v13 + 40);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D8A3FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DC5A0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v75 = &v71 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v71 - v10;
  v12 = sub_23D8DBF60();
  v13 = *(v12 - 8);
  v95 = v12;
  v96 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v76 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - v19;
  v21 = v1[1];
  v22 = sub_23D8DC9F0();
  v23 = sub_23D8A464C(&qword_27E2ED238, MEMORY[0x277CE73F8]);

  v91 = v23;
  v92 = v22;
  v24 = sub_23D8DD140();
  v89 = v25;
  v90 = v24;
  v97 = 1;
  sub_23D8DE310();
  v88 = v98;
  v87 = v99;
  sub_23D8DC900();
  sub_23D8A464C(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  v26 = sub_23D8DCEF0();
  v85 = v27;
  v86 = v26;
  v28 = sub_23D8DC430();
  v29 = sub_23D8A464C(&unk_27E2F0420, MEMORY[0x277CE7230]);
  v81 = v28;
  v30 = sub_23D8DD140();
  v82 = v31;
  v83 = v30;
  v93 = v1;
  v32 = v1[2];
  if (!v32)
  {
    v69 = v93[3];
    sub_23D8DD120();
    __break(1u);
    goto LABEL_15;
  }

  v80 = v29;
  v84 = v32;
  v33 = v32;
  sub_23D8DC260();
  v34 = *MEMORY[0x277CE7300];
  v35 = *MEMORY[0x277CE7300];
  v94 = v4[13];
  v94(v11, v35, v3);
  v36 = sub_23D8DBF50();
  v37 = v3;
  v38 = v36;
  v39 = v4[1];
  v79 = v37;
  v78 = v4 + 1;
  v40 = v39;
  (v39)(v11);
  v41 = *(v96 + 8);
  v42 = v96 + 8;
  v41(v20, v95);
  v43 = *(sub_23D8DC3B0() + 16);

  if (v43 > v38)
  {
    v44 = v74;
    sub_23D8DC260();

    v45 = *MEMORY[0x277CE7308];
    v73 = v34;
    v46 = v75;
    v47 = v79;
    v94(v75, v45, v79);
    v71 = sub_23D8DBF50();
    v72 = v41;
    v40(v46, v47);
    v96 = v42;
    v48 = v95;
    v41(v44, v95);
    v49 = v76;
    sub_23D8DC260();

    v50 = v77;
    v94(v77, v73, v47);
    v51 = sub_23D8DBF50();
    v40(v50, v47);
    v72(v49, v48);
    v52 = sub_23D8DC3B0();

    if ((v51 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v51 < *(v52 + 16))
    {
      v53 = *(v52 + 8 * v51 + 32);

      if (!(v53 >> 62))
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
        v4 = v93;

        v55 = v71 >= v54;
        goto LABEL_9;
      }

LABEL_13:
      v54 = sub_23D8DECE0();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_13;
  }

  v55 = 1;
  v4 = v93;
LABEL_9:
  KeyPath = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  v58 = sub_23D8DCB10();
  v59 = v4[4];
  if (v59)
  {
    v60 = v58;
    v61 = v4[4];

    result = sub_23D8DCB10();
    *a1 = v88;
    v63 = v86;
    *(a1 + 8) = v87;
    *(a1 + 16) = v63;
    v65 = v82;
    v64 = v83;
    *(a1 + 24) = v85;
    *(a1 + 32) = v64;
    v66 = v89;
    v67 = v90;
    *(a1 + 40) = v65;
    *(a1 + 48) = v67;
    *(a1 + 56) = v66;
    *(a1 + 64) = KeyPath;
    *(a1 + 72) = sub_23D83B780;
    *(a1 + 80) = v57;
    v68 = v84;
    *(a1 + 88) = v60;
    *(a1 + 96) = v68;
    *(a1 + 104) = result;
    *(a1 + 112) = v59;
    return result;
  }

LABEL_15:
  v70 = v4[5];
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D8A464C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D8A46BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23D8A4704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D8A4768()
{
  result = qword_27E2EF7B0;
  if (!qword_27E2EF7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF7B8, &qword_23D8E4238);
    sub_23D8A4820();
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7B0);
  }

  return result;
}

unint64_t sub_23D8A4820()
{
  result = qword_27E2EF7C0;
  if (!qword_27E2EF7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF7C8, &qword_23D8E4240);
    sub_23D8A48D8();
    sub_23D835AD0(&qword_27E2EDAE8, &qword_27E2EDAF0, &qword_23D8E1408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7C0);
  }

  return result;
}

unint64_t sub_23D8A48D8()
{
  result = qword_27E2EF7D0;
  if (!qword_27E2EF7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF7D8, &qword_23D8E4248);
    sub_23D8A4990();
    sub_23D835AD0(&qword_27E2EF7E8, &qword_27E2EF7F0, &qword_23D8E4250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7D0);
  }

  return result;
}

unint64_t sub_23D8A4990()
{
  result = qword_27E2EF7E0;
  if (!qword_27E2EF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7E0);
  }

  return result;
}

unint64_t sub_23D8A4A04()
{
  result = qword_27E2EF7F8;
  if (!qword_27E2EF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7F8);
  }

  return result;
}

uint64_t sub_23D8A4A58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_23D8A4AEC()
{
  result = qword_27E2EF808;
  if (!qword_27E2EF808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF810, &qword_23D8E4318);
    sub_23D88D3B8();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF808);
  }

  return result;
}

uint64_t sub_23D8A4BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D8A4CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AXRColorSelectionToolbar()
{
  result = qword_27E2EF818;
  if (!qword_27E2EF818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D8A4DB4()
{
  sub_23D8A4E38();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23D8A4E38()
{
  if (!qword_27E2EF828)
  {
    sub_23D8DCEE0();
    v0 = sub_23D8DE490();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EF828);
    }
  }
}

uint64_t sub_23D8A4EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AXRColorSelectionToolbar();
  v5 = (a1 + *(v4 + 24));
  v26 = *v5;
  v27 = v5[1];
  sub_23D83CB18();

  v6 = sub_23D8DDCB0();
  v8 = v7;
  v10 = v9;
  sub_23D8380E8();
  v11 = *(a1 + *(v4 + 20));

  v12 = sub_23D8DEB80();
  LOBYTE(v4) = sub_23D8DEB70();

  if (v4)
  {
    sub_23D8DE220();
  }

  else
  {
    sub_23D8DE240();
  }

  v13 = sub_23D8DDC00();
  v15 = v14;
  v17 = v16;

  sub_23D83CB6C(v6, v8, v10 & 1);

  v18 = sub_23D8DDC20();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_23D83CB6C(v13, v15, v17 & 1);

  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v24;
  return result;
}

uint64_t sub_23D8A501C()
{
  v1 = sub_23D8DD750();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED970, &qword_23D8E1320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  sub_23D8DD740();
  v11 = v0;
  sub_23D8DCD70();
  v8 = sub_23D8A5198();
  MEMORY[0x23EEEF8F0](v7, v3, v8);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23D8A5198()
{
  result = qword_27E2ED978;
  if (!qword_27E2ED978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED978);
  }

  return result;
}

uint64_t sub_23D8A51FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
  sub_23D8A5198();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D8A5274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23D8A53B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AXRHyperlinkColorSelectionView()
{
  result = qword_27E2EF830;
  if (!qword_27E2EF830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D8A5524()
{
  sub_23D857704(319, &qword_27E2ED618, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_23D857704(319, &qword_27E2ED228, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_23D8366C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23D8A5614()
{
  result = qword_27E2EF840;
  if (!qword_27E2EF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF840);
  }

  return result;
}

uint64_t sub_23D8A5668(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_23D8A570C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23D83C67C(v2, &v17 - v11, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCCB0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_23D8A590C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AXRHyperlinkColorSelectionView();
  sub_23D83C67C(v1 + *(v12 + 20), v11, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCF90();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D8A5B30()
{
  v0 = sub_23D8DC560();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D8DC540();
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_23D8DECA0();
    v8 = v1 + 16;
    v7 = *(v1 + 16);
    v14[1] = v5;
    v15 = v7;
    v9 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    v11 = (v8 - 8);
    do
    {
      v15(v4, v9, v0);
      sub_23D8DC550();
      (*v11)(v4, v0);
      sub_23D8DEC80();
      v12 = *(v16 + 16);
      sub_23D8DECB0();
      sub_23D8DECC0();
      sub_23D8DEC90();
      v9 += v10;
      --v6;
    }

    while (v6);

    return v16;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_23D8A5CD0()
{
  v1 = v0;
  v2 = (v0 + *(type metadata accessor for AXRHyperlinkColorSelectionView() + 24));
  if (*v2)
  {
    v3 = *v2;

    sub_23D8DC960();

    v4 = sub_23D8DC810();

    if (!v4)
    {
      v4 = sub_23D8DE240();
    }

    v12 = v4;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v5 = sub_23D8A5B30();
    MEMORY[0x28223BE20](v5);
    v11[2] = v1;
    v6 = sub_23D8A5668(sub_23D8A9294, v11, v5);

    if (v6)
    {
      v7 = 1;
    }

    else
    {

      sub_23D8DC960();

      v8 = sub_23D8DC6F0();

      v12 = v8;
      sub_23D8DE2A0();
      v7 = sub_23D8DE180();
    }

    return v7 & 1;
  }

  else
  {
    v10 = v2[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A5EBC(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;
  sub_23D86C2EC();

  sub_23D8DE2A0();
  v3 = (a2 + *(type metadata accessor for AXRHyperlinkColorSelectionView() + 24));
  if (*v3)
  {
    v4 = *v3;

    sub_23D8DC960();

    sub_23D8DC6F0();

    sub_23D8DE2A0();
    v5 = sub_23D8DE180();

    return v5 & 1;
  }

  else
  {
    v7 = v3[1];
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}