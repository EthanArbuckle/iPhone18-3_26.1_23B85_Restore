uint64_t AXRTypeSpacingOption.title.getter()
{
  v1 = v0;
  v2 = sub_23D8DC620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CE7340])
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v8 = 0x6974706F2E727861;
    if (qword_27E2F3C80)
    {
LABEL_20:
      v9 = qword_27E2F3C80;
      v10 = sub_23D8DE830();
      v11 = sub_23D8DE830();
      v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

      v8 = sub_23D8DE870();
    }
  }

  else if (v7 == *MEMORY[0x277CE7348])
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v8 = 0x6974706F2E727861;
    if (qword_27E2F3C80)
    {
      goto LABEL_20;
    }
  }

  else if (v7 == *MEMORY[0x277CE7358])
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v8 = 0x6974706F2E727861;
    if (qword_27E2F3C80)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v7 != *MEMORY[0x277CE7350])
    {
      (*(v3 + 8))(v6, v2);
      return 0x746C7561666564;
    }

    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v8 = 0xD000000000000011;
    if (qword_27E2F3C80)
    {
      goto LABEL_20;
    }
  }

  return v8;
}

uint64_t sub_23D8C5F48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[13] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[14];
      goto LABEL_9;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED380, &unk_23D8E0B10);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[20];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_23D8C61F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13] + 8) = (a2 - 1);
    return result;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[14];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED380, &unk_23D8E0B10);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[20];

  return v20(v21, a2, a2, v19);
}

void sub_23D8C64AC()
{
  sub_23D8CB954(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23D8CB954(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23D8C6844(319, &qword_27E2ED608, &qword_27E2EE9E0, &qword_23D8E26D0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23D8C6844(319, &qword_27E2EFEA8, &qword_27E2EE9E0, &qword_23D8E26D0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_23D851F1C(319, &qword_27E2ED018);
          if (v4 <= 0x3F)
          {
            sub_23D8C6844(319, &qword_27E2EFEB0, &qword_27E2EDB90, &qword_23D8E52F0, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_23D83675C();
              if (v6 <= 0x3F)
              {
                sub_23D8366C8();
                if (v7 <= 0x3F)
                {
                  sub_23D836838();
                  if (v8 <= 0x3F)
                  {
                    sub_23D8C6844(319, &qword_27E2EFEB8, &qword_27E2ED260, &qword_23D8E08F8, MEMORY[0x277CE11F8]);
                    if (v9 <= 0x3F)
                    {
                      sub_23D851F1C(319, &qword_27E2EE030);
                      if (v10 <= 0x3F)
                      {
                        sub_23D85B5A8();
                        if (v11 <= 0x3F)
                        {
                          sub_23D8C6844(319, &qword_27E2ED268, &qword_27E2ED270, &qword_23D8E0900, MEMORY[0x277D83D88]);
                          if (v12 <= 0x3F)
                          {
                            sub_23D8CB954(319, &qword_27E2ED398, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                            if (v13 <= 0x3F)
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
    }
  }
}

uint64_t sub_23D8C67FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23D8C6844(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23D8C68C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DC510();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0x800000023D8E6DF0;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v10 = 0xD000000000000012;
  if (qword_27E2F3C80)
  {
    v11 = qword_27E2F3C80;
    v12 = sub_23D8DE830();
    v13 = sub_23D8DE830();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v10 = sub_23D8DE870();
    v9 = v15;
  }

  v16 = (a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48));
  if (*v16)
  {
    v17 = *v16;

    sub_23D8DC970();
    sub_23D8DC9D0();

    (*(v5 + 8))(v8, v4);
    v18 = sub_23D8DC6F0();

    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v20 = type metadata accessor for AXRColorDisplayRowView(0);
    *(a2 + v20[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    result = swift_storeEnumTagMultiPayload();
    v22 = (a2 + v20[6]);
    *v22 = v10;
    v22[1] = v9;
    *(a2 + v20[7]) = v18;
  }

  else
  {
    v23 = v16[1];
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8C6BAC@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(uint64_t)@<X3>, _BYTE *a3@<X8>)
{
  v6 = sub_23D8DC510();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48));
  if (*v11)
  {
    v12 = *v11;

    sub_23D8DC970();
    sub_23D8DC9D0();

    v13 = (*(v7 + 8))(v10, v6);
    v14 = a2(v13);

    *a3 = v14 & 1;
  }

  else
  {
    v16 = v11[1];
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8C6D38(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(_BYTE *), uint64_t (*a7)(void))
{
  v44 = a7;
  v46 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v42[-v12];
  v13 = sub_23D8DC510();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  v19 = type metadata accessor for AXRTextFormatterSheet(0);
  v20 = (a4 + *(v19 + 48));
  if (*v20)
  {
    v21 = v19;
    v22 = *v20;

    sub_23D8DC960();

    a5(v18);

    sub_23D8DC970();
    sub_23D8DC950();

    (*(v14 + 8))(v17, v13);
    v23 = sub_23D8B4868(v48);
    v25 = v24;
    v26 = sub_23D8DC140();
    v27 = *(*(v26 - 8) + 48);
    v28 = v27(v25, 1, v26);
    v43 = v18;
    if (!v28)
    {
      v29 = v46(v47);
      *(v30 + 1) = v18;
      v29(v47, 0);
    }

    v23(v48, 0);
    v31 = sub_23D8B4868(v48);
    if (v27(v32, 1, v26))
    {
      v31(v48, 0);
    }

    else
    {
      v33 = *(v21 + 56);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
      v35 = v45;
      MEMORY[0x23EEF05A0](v34);
      if (v27(v35, 1, v26))
      {
        sub_23D83C6E4(v35, &qword_27E2ED260, &qword_23D8E08F8);
        v36 = 1;
      }

      else
      {
        v37 = v44();
        sub_23D83C6E4(v35, &qword_27E2ED260, &qword_23D8E08F8);
        v36 = v43 ^ v37;
      }

      v38 = v46(v47);
      *(v39 + 2) = v36 & 1;
      v38(v47, 0);
      v31(v48, 0);
    }
  }

  else
  {
    v41 = v20[1];
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8C7120@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DC510();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0x800000023D8E6D30;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v10 = 0xD000000000000018;
  if (qword_27E2F3C80)
  {
    v11 = qword_27E2F3C80;
    v12 = sub_23D8DE830();
    v13 = sub_23D8DE830();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v10 = sub_23D8DE870();
    v9 = v15;
  }

  v16 = (a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48));
  if (*v16)
  {
    v17 = *v16;

    sub_23D8DC970();
    sub_23D8DC9D0();

    (*(v5 + 8))(v8, v4);
    v18 = sub_23D8DC6B0();

    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v20 = type metadata accessor for AXRColorDisplayRowView(0);
    *(a2 + v20[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    result = swift_storeEnumTagMultiPayload();
    v22 = (a2 + v20[6]);
    *v22 = v10;
    v22[1] = v9;
    *(a2 + v20[7]) = v18;
  }

  else
  {
    v23 = v16[1];
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8C7408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  sub_23D8C7764();
  v6 = sub_23D8B4868(&v36);
  v8 = v7;
  v9 = sub_23D8DC140();
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v8, 1, v9))
  {
    v11 = (a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 64));
    v12 = *v11;
    v13 = *(v11 + 2);
    v40 = v12;
    v41 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
    sub_23D8DE320();
    v15 = v38;
    v14 = v39;
    v16 = sub_23D8DC120();
    v18 = *(v17 + 24);
    *(v17 + 16) = v15;
    *(v17 + 24) = v14;

    v16(&v40, 0);
  }

  v6(&v36, 0);
  v19 = sub_23D8B4868(&v40);
  if (v10(v20, 1, v9))
  {
    return (v19)(&v40, 0);
  }

  v22 = type metadata accessor for AXRTextFormatterSheet(0);
  v23 = *(v22 + 56);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
  MEMORY[0x23EEF05A0](v24);
  v25 = v10(v5, 1, v9);
  v26 = 0;
  v27 = 0;
  if (!v25)
  {
    sub_23D8DC130();
    v27 = *(&v36 + 1);
    v26 = v36;
  }

  sub_23D83C6E4(v5, &qword_27E2ED260, &qword_23D8E08F8);
  v28 = (a1 + *(v22 + 64));
  v29 = *v28;
  v30 = *(v28 + 2);
  v36 = v29;
  v37 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE320();
  if (v27)
  {
    if (v26 == v38 && v27 == v39)
    {

      v31 = 0;
    }

    else
    {
      v32 = sub_23D8DED20();

      v31 = v32 ^ 1;
    }
  }

  else
  {

    v31 = 1;
  }

  v33 = sub_23D8DC120();
  *(v34 + 32) = v31 & 1;
  v33(&v36, 0);
  return (v19)(&v40, 0);
}

uint64_t sub_23D8C7764()
{
  v1 = v0;
  v2 = sub_23D8DC510();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AXRTextFormatterSheet(0);
  v7 = (v0 + v6[16]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v26 = *v7;
  v27 = v8;
  v28 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE320();
  v12 = v24;
  v11 = v25;

  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v22 = v2;
    v15 = (v1 + v6[12]);
    if (*v15)
    {
      v16 = *v15;

      sub_23D8DC960();

      v26 = v9;
      v27 = v8;
      v28 = v10;
      sub_23D8DE320();
      sub_23D8DC880();

      sub_23D8DC970();
      sub_23D8DC950();

      (*(v23 + 8))(v5, v22);
      v17 = (v1 + v6[17]);
      v18 = *v17;
      v19 = *(v17 + 1);
      LOBYTE(v17) = v17[16];
      LOBYTE(v26) = v18;
      v27 = v19;
      LOBYTE(v28) = v17;
      LOBYTE(v24) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE228, &qword_23D8E1D28);
      sub_23D8DCC30();
    }

    else
    {
      v20 = v15[1];
      sub_23D8DC9F0();
      sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8]);
      result = sub_23D8DD120();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23D8C79DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = sub_23D8DE8F0();
  result = type metadata accessor for AXRTextFormatterSheet(0);
  v8 = *(a3 + *(result + 72));
  if (v8 < v6)
  {
    v9 = result;

    v11 = sub_23D8CAD78(v8, v5, v4, v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    MEMORY[0x23EEF09F0](v11, v13, v15, v17);

    v18 = (a3 + *(v9 + 64));
    v19 = *v18;
    v20 = *(v18 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
    return sub_23D8DE330();
  }

  return result;
}

uint64_t sub_23D8C7AE0@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for AXRColorDisplayRowView(0);
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

uint64_t sub_23D8C7CE8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23D8DD560();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFEC0, &qword_23D8E5348);
  return sub_23D8B5340(v1, a1 + *(v3 + 44));
}

unint64_t sub_23D8C7D74()
{
  result = qword_27E2EFEE0;
  if (!qword_27E2EFEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFEC8, &qword_23D8E5350);
    sub_23D835AD0(&qword_27E2EFEE8, &qword_27E2EFEF0, &qword_23D8E5368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFEE0);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for AXRTextFormatterSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
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

  v8 = v1[5];
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

  v11 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D8DD850();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(&v5[v11], 1, v12))
    {
      (*(v13 + 8))(&v5[v11], v12);
    }
  }

  else
  {
    v14 = *&v5[v11];
  }

  v15 = &v5[v1[7]];
  v16 = sub_23D8DD850();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8) + 28)];

  v19 = *&v5[v1[8] + 8];

  v20 = &v5[v1[9]];
  v21 = *v20;

  v22 = *(v20 + 1);

  v23 = &v5[v1[10]];
  v24 = *v23;

  v25 = *(v23 + 1);

  v26 = *&v5[v1[12]];

  v27 = *&v5[v1[13] + 8];

  v28 = &v5[v1[14]];
  v29 = *v28;

  v30 = *(v28 + 1);

  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0) + 32);
  v32 = sub_23D8DC140();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(&v28[v31], 1, v32))
  {
    (*(v33 + 8))(&v28[v31], v32);
  }

  v34 = *&v5[v1[15] + 8];

  v35 = &v5[v1[16]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 2);

  v38 = *&v5[v1[17] + 8];

  v39 = &v5[v1[19]];
  if (*v39 >= 2uLL)
  {
    v40 = *(v39 + 1);
  }

  v41 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = sub_23D8DCDE0();
    (*(*(v42 - 8) + 8))(&v5[v41], v42);
  }

  else
  {
    v43 = *&v5[v41];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8C8328(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_23D8C83A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_23D8DD470();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23D8DCF90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0348, &qword_23D8E58B8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v61 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v49 - v14;
  v15 = type metadata accessor for AXRColorDisplayRowView(0);
  v16 = (a1 + *(v15 + 24));
  v17 = v16[1];
  *&v73[0] = *v16;
  *(&v73[0] + 1) = v17;
  sub_23D83CB18();

  v18 = sub_23D8DDCB0();
  v57 = v19;
  v58 = v18;
  v56 = v20;
  v59 = v21;
  sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);
  sub_23D8DEB40();
  v55 = sub_23D8DE130();
  sub_23D8DCD60();
  v22 = v75;
  v23 = v76;
  v24 = v77;
  v54 = v78;
  v25 = v79;
  v26 = sub_23D8DE5F0();
  v52 = v27;
  v53 = v26;
  v28 = *(a1 + *(v15 + 28));
  v29 = sub_23D8DE5F0();
  v50 = v30;
  v51 = v29;

  sub_23D8C7AE0(v9);
  LOBYTE(v17) = sub_23D8DCF80();
  v31 = *(v6 + 8);
  v31(v9, v5);
  if (v17)
  {
    v32 = [objc_opt_self() 0x1FBB5E328];
    [v32 bounds];
  }

  sub_23D8C7AE0(v9);
  v33 = sub_23D8DCF80();
  v31(v9, v5);
  if (v33)
  {
    v34 = [objc_opt_self() mainScreen];
    [v34 bounds];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v63 = v28;
  WORD4(v63) = 256;
  *&v64 = v22;
  *(&v64 + 1) = v23;
  *&v65 = v24;
  *(&v65 + 1) = v54;
  *&v66 = v25;
  *(&v66 + 1) = v55;
  LOWORD(v67) = 256;
  *(&v67 + 1) = v53;
  *&v68 = v52;
  *(&v68 + 1) = v51;
  *&v69 = v50;
  sub_23D8DD450();
  sub_23D8DD440();
  sub_23D8DD460();
  sub_23D8DD440();
  sub_23D8DD490();
  v35 = sub_23D8DDC90();
  v37 = v36;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0350, &qword_23D8E58C0);
  sub_23D8CBDD0();
  v40 = v60;
  sub_23D8DDE00();
  sub_23D83CB6C(v35, v37, v39 & 1);

  v73[6] = v69;
  v73[7] = v70;
  v73[8] = v71;
  v74 = v72;
  v73[2] = v65;
  v73[3] = v66;
  v73[4] = v67;
  v73[5] = v68;
  v73[0] = v63;
  v73[1] = v64;
  sub_23D83C6E4(v73, &qword_27E2F0350, &qword_23D8E58C0);
  v41 = v40;
  v42 = v61;
  sub_23D83C67C(v40, v61, &qword_27E2F0348, &qword_23D8E58B8);
  v43 = v62;
  v45 = v57;
  v44 = v58;
  *v62 = v58;
  v43[1] = v45;
  v46 = v56 & 1;
  *(v43 + 16) = v56 & 1;
  v43[3] = v59;
  v43[4] = 0;
  *(v43 + 40) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0370, &qword_23D8E58D0);
  sub_23D83C67C(v42, v43 + *(v47 + 64), &qword_27E2F0348, &qword_23D8E58B8);
  sub_23D834028(v44, v45, v46);

  sub_23D83C6E4(v41, &qword_27E2F0348, &qword_23D8E58B8);
  sub_23D83C6E4(v42, &qword_27E2F0348, &qword_23D8E58B8);
  sub_23D83CB6C(v44, v45, v46);
}

uint64_t sub_23D8C8964()
{
  v1 = sub_23D8DD910();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0330, &qword_23D8E58A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  *v9 = sub_23D8DD420();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0338, &qword_23D8E58B0);
  sub_23D8C83A4(v0, &v9[*(v10 + 44)]);
  sub_23D8DD900();
  sub_23D835AD0(&qword_27E2F0340, &qword_27E2F0330, &qword_23D8E58A8);
  sub_23D8DDEB0();
  (*(v2 + 8))(v5, v1);
  return sub_23D83C6E4(v9, &qword_27E2F0330, &qword_23D8E58A8);
}

uint64_t sub_23D8C8B24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for AXRListDynamicSizeTextSlider(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23D8DD910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0378, &qword_23D8E58D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  *v13 = sub_23D8DD420();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0380, &qword_23D8E58E0);
  sub_23D8C8DEC(v2, &v13[*(v14 + 44)]);
  sub_23D8DD900();
  sub_23D835AD0(&qword_27E2F0388, &qword_27E2F0378, &qword_23D8E58D8);
  v15 = v20;
  sub_23D8DDEB0();
  (*(v6 + 8))(v9, v5);
  sub_23D83C6E4(v13, &qword_27E2F0378, &qword_23D8E58D8);
  sub_23D8CB4EC(v2, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRListDynamicSizeTextSlider);
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  sub_23D8CBE8C(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AXRListDynamicSizeTextSlider);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0390, &qword_23D8E58E8);
  v19 = (v15 + *(result + 36));
  *v19 = sub_23D8CBEF4;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_23D8C8DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v83 = a2;
  v2 = type metadata accessor for AXRListDynamicSizeTextSlider(0);
  v3 = v2 - 8;
  v77 = *(v2 - 8);
  v76 = *(v77 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03A0, &qword_23D8E58F8);
  v5 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03A8, &qword_23D8E5900);
  v9 = *(v8 - 8);
  v79 = v8;
  v80 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v73 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03B0, &unk_23D8E5908);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v82 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03B8, &qword_23D8E5918);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v81 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v78 = &v66 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v75 = &v66 - v28;
  MEMORY[0x28223BE20](v27);
  v71 = &v66 - v29;
  v30 = sub_23D8DE2C0();
  sub_23D8DDB00();
  v68 = sub_23D8DDAB0();
  v31 = *(v68 - 8);
  v69 = *(v31 + 56);
  v70 = v31 + 56;
  v69(v20, 1, 1, v68);
  v32 = sub_23D8DDB30();
  sub_23D83C6E4(v20, &qword_27E2ED4F8, &qword_23D8E0C40);
  KeyPath = swift_getKeyPath();
  v34 = sub_23D8DE210();
  v87 = v30;
  v88 = KeyPath;
  v89 = v32;
  v90 = v34;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03C0, &unk_23D8E5950);
  sub_23D8CBF28();
  sub_23D8DDE40();

  v35 = v67;
  v36 = (v67 + *(v3 + 28));
  v38 = v36[1];
  *&v86 = *v36;
  v37 = v86;
  *(&v86 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0398, &qword_23D8E58F0);
  sub_23D8DE340();
  v86 = xmmword_23D8E5280;
  v85 = 0x3FF0000000000000;
  sub_23D8CBFE0();
  v39 = MEMORY[0x277D839F8];
  sub_23D8DE3E0();
  v40 = sub_23D8DE200();
  v41 = swift_getKeyPath();
  v42 = v72;
  v43 = &v7[*(v72 + 36)];
  *v43 = v41;
  v43[1] = v40;
  v87 = v37;
  v88 = v38;
  sub_23D8DE320();
  v44 = v74;
  sub_23D8CB4EC(v35, v74, type metadata accessor for AXRListDynamicSizeTextSlider);
  v45 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v46 = swift_allocObject();
  sub_23D8CBE8C(v44, v46 + v45, type metadata accessor for AXRListDynamicSizeTextSlider);
  v47 = sub_23D8CC1D8();
  v48 = MEMORY[0x277D83A28];
  v49 = v73;
  sub_23D8DE060();

  sub_23D83C6E4(v7, &qword_27E2F03A0, &qword_23D8E58F8);
  v87 = v42;
  v88 = v39;
  v89 = v47;
  v90 = v48;
  swift_getOpaqueTypeConformance2();
  v50 = v84;
  v51 = v79;
  sub_23D8DDEE0();
  (*(v80 + 8))(v49, v51);
  v52 = sub_23D8DE2C0();
  sub_23D8DDB00();
  v69(v20, 1, 1, v68);
  v53 = sub_23D8DDB30();
  sub_23D83C6E4(v20, &qword_27E2ED4F8, &qword_23D8E0C40);
  v54 = swift_getKeyPath();
  v55 = sub_23D8DE210();
  v87 = v52;
  v88 = v54;
  v89 = v53;
  v90 = v55;
  v56 = v75;
  sub_23D8DDE40();

  v57 = v71;
  v58 = v78;
  sub_23D83C67C(v71, v78, &qword_27E2F03B8, &qword_23D8E5918);
  v59 = v82;
  sub_23D83C67C(v50, v82, &qword_27E2F03B0, &unk_23D8E5908);
  v60 = v56;
  v61 = v56;
  v62 = v81;
  sub_23D83C67C(v60, v81, &qword_27E2F03B8, &qword_23D8E5918);
  v63 = v83;
  sub_23D83C67C(v58, v83, &qword_27E2F03B8, &qword_23D8E5918);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03E0, &qword_23D8E5998);
  sub_23D83C67C(v59, v63 + *(v64 + 48), &qword_27E2F03B0, &unk_23D8E5908);
  sub_23D83C67C(v62, v63 + *(v64 + 64), &qword_27E2F03B8, &qword_23D8E5918);
  sub_23D83C6E4(v61, &qword_27E2F03B8, &qword_23D8E5918);
  sub_23D83C6E4(v84, &qword_27E2F03B0, &unk_23D8E5908);
  sub_23D83C6E4(v57, &qword_27E2F03B8, &qword_23D8E5918);
  sub_23D83C6E4(v62, &qword_27E2F03B8, &qword_23D8E5918);
  sub_23D83C6E4(v59, &qword_27E2F03B0, &unk_23D8E5908);
  return sub_23D83C6E4(v58, &qword_27E2F03B8, &qword_23D8E5918);
}

uint64_t sub_23D8C96B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = (a3 + *(type metadata accessor for AXRListDynamicSizeTextSlider(0) + 20));
  v9 = *v8;
  v10 = v8[1];
  v15 = v9;
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0398, &qword_23D8E58F0);
  result = sub_23D8DE320();
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    v12 = v14;
    sub_23D8DE470();
    sub_23D8CC2BC(v12);
    return sub_23D83C6E4(v7, &qword_27E2F02E0, &unk_23D8E5740);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23D8C9800(uint64_t a1)
{
  v2 = sub_23D8DCF90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  sub_23D8DE470();
  MEMORY[0x23EEF05A0](v10);
  sub_23D83C6E4(v13, &qword_27E2F02E0, &unk_23D8E5740);
  (*(v3 + 32))(v7, v9, v2);
  v14 = (*(v3 + 88))(v7, v2);
  v15 = 0.0;
  if (v14 != *MEMORY[0x277CDF9F8])
  {
    v15 = 1.0;
    if (v14 != *MEMORY[0x277CDF9E0])
    {
      v15 = 2.0;
      if (v14 != *MEMORY[0x277CDF9E8])
      {
        v15 = 3.0;
        if (v14 != *MEMORY[0x277CDF9D8])
        {
          v15 = 4.0;
          if (v14 != *MEMORY[0x277CDF9F0])
          {
            v15 = 5.0;
            if (v14 != *MEMORY[0x277CDFA00])
            {
              v15 = 6.0;
              if (v14 != *MEMORY[0x277CDFA10])
              {
                v15 = 7.0;
                if (v14 != *MEMORY[0x277CDF988])
                {
                  v15 = 8.0;
                  if (v14 != *MEMORY[0x277CDF998])
                  {
                    v15 = 9.0;
                    if (v14 != *MEMORY[0x277CDF9A8])
                    {
                      v15 = 10.0;
                      if (v14 != *MEMORY[0x277CDF9B8])
                      {
                        v15 = 11.0;
                        if (v14 != *MEMORY[0x277CDF9D0])
                        {
                          (*(v3 + 8))(v7, v2);
                          v15 = 7.0;
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

  v16 = (a1 + *(type metadata accessor for AXRListDynamicSizeTextSlider(0) + 20));
  v17 = *v16;
  v18 = v16[1];
  *&v20[1] = v15;
  v20[2] = v17;
  v20[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0398, &qword_23D8E58F0);
  return sub_23D8DE330();
}

uint64_t sub_23D8C9B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0328, &qword_23D8E58A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_23D8C9BCC(uint64_t a1)
{
  v2 = sub_23D8DCF90();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD210();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8C9CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D8C38D4(v4, a1);
}

unint64_t sub_23D8C9D2C()
{
  result = qword_27E2EFF70;
  if (!qword_27E2EFF70)
  {
    sub_23D856774(255, &qword_27E2EFF60, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFF70);
  }

  return result;
}

uint64_t sub_23D8C9DC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_23D8C9E50()
{
  result = qword_27E2F0040;
  if (!qword_27E2F0040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0030, &qword_23D8E5460);
    sub_23D8C9EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0040);
  }

  return result;
}

unint64_t sub_23D8C9EDC()
{
  result = qword_27E2F0048;
  if (!qword_27E2F0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0048);
  }

  return result;
}

unint64_t sub_23D8C9F40()
{
  result = qword_27E2F0078;
  if (!qword_27E2F0078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0068, &qword_23D8E5478);
    sub_23D86052C();
    sub_23D8C9EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0078);
  }

  return result;
}

unint64_t sub_23D8C9FCC()
{
  result = qword_27E2F0080;
  if (!qword_27E2F0080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0070, &unk_23D8E5480);
    sub_23D8C67FC(&qword_27E2F0088, type metadata accessor for AXRSegmentedPicker);
    sub_23D8C67FC(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0080);
  }

  return result;
}

unint64_t sub_23D8CA134()
{
  result = qword_27E2F00B8;
  if (!qword_27E2F00B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00B0, &qword_23D8E54A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00C0, &qword_23D8E54A8);
    sub_23D8CA240();
    swift_getOpaqueTypeConformance2();
    sub_23D8C67FC(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F00B8);
  }

  return result;
}

unint64_t sub_23D8CA240()
{
  result = qword_27E2F00C8;
  if (!qword_27E2F00C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00C0, &qword_23D8E54A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00D0, &unk_23D8E54B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE1C0, &qword_23D8E1C80);
    sub_23D835AD0(&qword_27E2EE1B8, &qword_27E2EE1C0, &qword_23D8E1C80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F00C8);
  }

  return result;
}

unint64_t sub_23D8CA388()
{
  result = qword_27E2F00E0;
  if (!qword_27E2F00E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00D8, &qword_23D8E54C0);
    sub_23D8CA444();
    sub_23D8C67FC(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F00E0);
  }

  return result;
}

unint64_t sub_23D8CA444()
{
  result = qword_27E2F00E8;
  if (!qword_27E2F00E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00F0, &qword_23D8E54C8);
    sub_23D835AD0(&qword_27E2F00F8, &qword_27E2F0100, &unk_23D8E54D0);
    sub_23D835AD0(&qword_27E2EF7E8, &qword_27E2EF7F0, &qword_23D8E4250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F00E8);
  }

  return result;
}

unint64_t sub_23D8CA530()
{
  result = qword_27E2F0110;
  if (!qword_27E2F0110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFFC8, &qword_23D8E53F0);
    sub_23D8C9F40();
    sub_23D8C67FC(&qword_27E2F0088, type metadata accessor for AXRSegmentedPicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0110);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = type metadata accessor for AXRTextFormatterSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
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

  v9 = v1[5];
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

  v12 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DD850();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v6[v12], 1, v13))
    {
      (*(v14 + 8))(&v6[v12], v13);
    }
  }

  else
  {
    v15 = *&v6[v12];
  }

  v16 = &v6[v1[7]];
  v17 = sub_23D8DD850();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  v19 = *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8) + 28)];

  v20 = *&v6[v1[8] + 8];

  v21 = &v6[v1[9]];
  v22 = *v21;

  v23 = *(v21 + 1);

  v24 = &v6[v1[10]];
  v25 = *v24;

  v26 = *(v24 + 1);

  v27 = *&v6[v1[12]];

  v28 = *&v6[v1[13] + 8];

  v29 = &v6[v1[14]];
  v30 = *v29;

  v31 = *(v29 + 1);

  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0) + 32);
  v33 = sub_23D8DC140();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(&v29[v32], 1, v33))
  {
    (*(v34 + 8))(&v29[v32], v33);
  }

  v35 = *&v6[v1[15] + 8];

  v36 = &v6[v1[16]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 2);

  v39 = *&v6[v1[17] + 8];

  v40 = &v6[v1[19]];
  if (*v40 >= 2uLL)
  {
    v41 = *(v40 + 1);
  }

  v42 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_23D8DCDE0();
    (*(*(v43 - 8) + 8))(&v6[v42], v43);
  }

  else
  {
    v44 = *&v6[v42];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8CAB2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD370();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D8CAB5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD370();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D8CAC44()
{
  v1 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_23D8C7764();
}

uint64_t sub_23D8CACA0(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D8C79DC(a1, a2, v6);
}

uint64_t sub_23D8CAD20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DD220();
  *a1 = result;
  return result;
}

uint64_t sub_23D8CAD4C(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D8DD230();
}

uint64_t sub_23D8CAD78(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_23D8DE900();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_23D8CAE6C()
{
  result = qword_27E2F0190;
  if (!qword_27E2F0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0190);
  }

  return result;
}

uint64_t sub_23D8CAFF8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  return sub_23D8C6BAC(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), a1, a2);
}

uint64_t sub_23D8CB25C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_23D8CB2EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D8CB358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DD220();
  *a1 = result;
  return result;
}

uint64_t sub_23D8CB384(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D8DD230();
}

unint64_t sub_23D8CB3B0()
{
  result = qword_27E2F0280;
  if (!qword_27E2F0280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0240, &qword_23D8E5678);
    sub_23D835AD0(&qword_27E2F0288, &qword_27E2F0238, &qword_23D8E5670);
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0280);
  }

  return result;
}

uint64_t sub_23D8CB4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D8CB554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D8CB624(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_23D8CB6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23D8CB7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_23D8CB890()
{
  sub_23D8CB954(319, &qword_27E2F02F8, MEMORY[0x277CDFA28], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_23D851F1C(319, &qword_27E2F0300);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D8CB954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23D8CB9CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23D8CBB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23D8CBC2C()
{
  sub_23D8CB954(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23D8CB954(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23D8CBDD0()
{
  result = qword_27E2F0358;
  if (!qword_27E2F0358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0350, &qword_23D8E58C0);
    sub_23D835AD0(&qword_27E2F0360, &qword_27E2F0368, &qword_23D8E58C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0358);
  }

  return result;
}

uint64_t sub_23D8CBE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23D8CBF28()
{
  result = qword_27E2F03C8;
  if (!qword_27E2F03C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F03C0, &unk_23D8E5950);
    sub_23D8986D8();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F03C8);
  }

  return result;
}

unint64_t sub_23D8CBFE0()
{
  result = qword_27E2F03D0;
  if (!qword_27E2F03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F03D0);
  }

  return result;
}

uint64_t objectdestroy_144Tm()
{
  v1 = (type metadata accessor for AXRListDynamicSizeTextSlider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740) + 32);
  v8 = sub_23D8DCF90();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8CC158(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXRListDynamicSizeTextSlider(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D8C96B4(a1, a2, v6);
}

unint64_t sub_23D8CC1D8()
{
  result = qword_27E2F03D8;
  if (!qword_27E2F03D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F03A0, &qword_23D8E58F8);
    sub_23D835AD0(&qword_27E2EE4B8, &qword_27E2EE4C0, &unk_23D8E2240);
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F03D8);
  }

  return result;
}

uint64_t sub_23D8CC2BC(unint64_t a1)
{
  v2 = sub_23D8DCF90();
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  if (a1 <= 0xB)
  {
    (*(v6 + 104))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_278BEC878 + a1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
    return sub_23D8DE460();
  }

  return result;
}

uint64_t sub_23D8CC3F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0330, &qword_23D8E58A8);
  sub_23D835AD0(&qword_27E2F0340, &qword_27E2F0330, &qword_23D8E58A8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D8CC490()
{
  result = qword_27E2F03F0;
  if (!qword_27E2F03F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0390, &qword_23D8E58E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0378, &qword_23D8E58D8);
    sub_23D835AD0(&qword_27E2F0388, &qword_27E2F0378, &qword_23D8E58D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F03F0);
  }

  return result;
}

uint64_t sub_23D8CC60C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_23D8CC660()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v4 = *(v0 + 32);
    *(v0 + 32) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t AXRCoordinator.__allocating_init(withService:)()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AXRCoordinator.init(withService:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_23D8CC790()
{
  result = sub_23D8DE830();
  qword_27E2F0400 = result;
  return result;
}

id static AXRCoordinator.readerContentNeedsRefreshNotification.getter()
{
  if (qword_27E2ECEE0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2F0400;

  return v1;
}

id sub_23D8CC824()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_23D8CC880();
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_23D8CC880()
{
  v0 = sub_23D8DCAF0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  swift_weakInit();
  swift_weakInit();
  swift_weakDestroy();
  swift_weakDestroy();
  sub_23D878CCC(&unk_284FD4D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F0450, &qword_23D8E5A80);
  swift_arrayDestroy();
  sub_23D8DCAC0();
  v2 = [objc_opt_self() mainRunLoop];
  v3 = objc_allocWithZone(sub_23D8DC480());
  return sub_23D8DC470();
}

uint64_t sub_23D8CC9A0()
{
  sub_23D8DE9D0();
  *(v0 + 16) = sub_23D8DE9C0();
  v2 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8CF86C, v2, v1);
}

uint64_t sub_23D8CCA34()
{
  sub_23D8DE9D0();
  *(v0 + 16) = sub_23D8DE9C0();
  v2 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8CCAC8, v2, v1);
}

uint64_t sub_23D8CCAC8()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() defaultCenter];
  if (qword_27E2ECEE0 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_27E2F0400 object:0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t AXRCoordinator.start()()
{
  v1[6] = v0;
  v2 = sub_23D8DCAF0();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_23D8DE9D0();
  v1[11] = sub_23D8DE9C0();
  v6 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8CCC9C, v6, v5);
}

uint64_t sub_23D8CCC9C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  sub_23D8DCAC0();

  v4 = sub_23D8DCAE0();
  v5 = sub_23D8DEA80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = *(v7 + 48);

    _os_log_impl(&dword_23D82C000, v4, v5, "Coordinator asked to start Accessibility Reader. isRunning: %{BOOL}d", v8, 8u);
    MEMORY[0x23EEF15F0](v8, -1, -1);
  }

  else
  {
    v9 = v0[6];
  }

  v10 = v0[6];
  (*(v0[8] + 8))(v0[10], v0[7]);
  if ((*(v10 + 48) & 1) == 0)
  {
    v11 = v0[6];
    v12 = sub_23D8CC824();
    sub_23D8DC440();

    *(v10 + 48) = 1;
  }

  v14 = v0[9];
  v13 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t AXRCoordinator.stop()()
{
  v1[6] = v0;
  v2 = sub_23D8DCAF0();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_23D8DE9D0();
  v1[11] = sub_23D8DE9C0();
  v6 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8CD064, v6, v5);
}

uint64_t sub_23D8CD064()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  sub_23D8DCAC0();

  v4 = sub_23D8DCAE0();
  v5 = sub_23D8DEA80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = *(v7 + 48);

    _os_log_impl(&dword_23D82C000, v4, v5, "Coordinator asked to stop Accessibility Reader. isRunning=%{BOOL}d", v8, 8u);
    MEMORY[0x23EEF15F0](v8, -1, -1);
  }

  else
  {
    v9 = v0[6];
  }

  v10 = v0[6];
  (*(v0[8] + 8))(v0[10], v0[7]);
  if (*(v10 + 48) == 1)
  {
    v11 = v0[6];
    v12 = sub_23D8CC824();
    sub_23D8DC450();

    *(v10 + 48) = 0;
  }

  v14 = v0[9];
  v13 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t AXRCoordinator.showReaderView()()
{
  v1[27] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF848, &qword_23D8E4530) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v3 = type metadata accessor for AXRRootView();
  v1[29] = v3;
  v4 = *(v3 - 8);
  v1[30] = v4;
  v5 = *(v4 + 64) + 15;
  v1[31] = swift_task_alloc();
  v6 = sub_23D8DC4D0();
  v1[32] = v6;
  v7 = *(v6 - 8);
  v1[33] = v7;
  v8 = *(v7 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F0410, &unk_23D8E1540) - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v10 = sub_23D8DC170();
  v1[37] = v10;
  v11 = *(v10 - 8);
  v1[38] = v11;
  v12 = *(v11 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v13 = sub_23D8DCAF0();
  v1[41] = v13;
  v14 = *(v13 - 8);
  v1[42] = v14;
  v15 = *(v14 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  sub_23D8DE9D0();
  v1[47] = sub_23D8DE9C0();
  v17 = sub_23D8DE9B0();
  v1[48] = v17;
  v1[49] = v16;

  return MEMORY[0x2822009F8](sub_23D8CD5E0, v17, v16);
}

uint64_t sub_23D8CD5E0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 216);
  sub_23D8DCAC0();

  v3 = sub_23D8DCAE0();
  v4 = sub_23D8DEA80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v6 + 48);

    _os_log_impl(&dword_23D82C000, v3, v4, "Coordinator asked to Show Accessibility Reader View. is Accessibility Reader running: %{BOOL}d", v7, 8u);
    MEMORY[0x23EEF15F0](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 216);
  }

  v9 = *(v0 + 368);
  v10 = *(v0 + 328);
  v11 = *(v0 + 336);
  v12 = *(v11 + 8);
  *(v0 + 400) = v12;
  *(v0 + 408) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  *(v0 + 416) = sub_23D8DEA70();
  v13 = MEMORY[0x23EEF0BB0]();
  v14 = *MEMORY[0x277CE7930];
  swift_beginAccess();
  v15 = *(v13 + v14);

  LOBYTE(v13) = sub_23D8DEA50();
  if ((v13 & 1) == 0)
  {
    v19 = *(v0 + 376);
    v20 = *(v0 + 352);

    sub_23D8DCAC0();
    v21 = sub_23D8DCAE0();
    v22 = sub_23D8DEAA0();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 352);
    v25 = *(v0 + 328);
    if (v23)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23D82C000, v21, v22, "Accessibility Reader is not enabled", v26, 2u);
      MEMORY[0x23EEF15F0](v26, -1, -1);
    }

    v12(v24, v25);
    goto LABEL_13;
  }

  v16 = *(v0 + 288);
  v17 = *(v0 + 216);
  v18 = sub_23D8CC824();
  sub_23D8DC460();
  v27 = *(v0 + 296);
  v28 = *(v0 + 304);
  v29 = *(v0 + 288);

  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    v30 = *(v0 + 376);
    v31 = *(v0 + 288);

    sub_23D83C6E4(v31, &unk_27E2F0410, &unk_23D8E1540);
LABEL_13:
    v38 = *(v0 + 360);
    v37 = *(v0 + 368);
    v40 = *(v0 + 344);
    v39 = *(v0 + 352);
    v42 = *(v0 + 312);
    v41 = *(v0 + 320);
    v44 = *(v0 + 280);
    v43 = *(v0 + 288);
    v45 = *(v0 + 272);
    v46 = *(v0 + 248);
    v95 = *(v0 + 224);

    v47 = *(v0 + 8);

    return v47();
  }

  v32 = *(v0 + 216);
  (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 288), *(v0 + 296));
  v33 = *(v0 + 320);
  if (*(v32 + 24))
  {
    v34 = *(v0 + 376);
    v36 = *(v0 + 296);
    v35 = *(v0 + 304);

    (*(v35 + 8))(v33, v36);
    goto LABEL_13;
  }

  v49 = *(v0 + 304);
  v50 = *(v0 + 312);
  v51 = *(v0 + 280);
  v87 = *(v0 + 296);
  v88 = *(v0 + 272);
  v52 = *(v0 + 264);
  v53 = *(v0 + 248);
  v91 = *(v0 + 240);
  v92 = *(v0 + 360);
  v89 = *(v0 + 256);
  v90 = *(v0 + 224);
  v93 = *(v0 + 232);
  v94 = *(v0 + 216);
  v54 = sub_23D8DC900();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v96 = v32;
  sub_23D8DC8F0();
  sub_23D8DC8D0();

  (*(v49 + 16))(v50, v33, v87);
  (*(v52 + 16))(v88, v51, v89);
  v57 = objc_allocWithZone(sub_23D8DC430());
  v58 = sub_23D8DC400();
  *(v0 + 424) = v58;
  objc_allocWithZone(type metadata accessor for AXRRootViewController());
  v59 = sub_23D8DC9F0();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();

  v62 = v58;
  sub_23D8DC9E0();
  *v53 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  v63 = v53 + v93[5];
  *(v0 + 464) = 0;
  sub_23D8DE310();
  v64 = *(v0 + 200);
  *v63 = *(v0 + 192);
  *(v63 + 1) = v64;
  v65 = (v53 + v93[8]);
  v66 = (v53 + v93[6]);
  sub_23D8CF700(&unk_27E2F0420, MEMORY[0x277CE7230]);
  v67 = v62;
  *v66 = sub_23D8DCEF0();
  v66[1] = v68;
  v69 = (v53 + v93[7]);
  sub_23D8CF700(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  v70 = sub_23D8DCEF0();
  v72 = v71;

  *v69 = v70;
  v69[1] = v72;
  *v65 = sub_23D8CF6DC;
  v65[1] = v94;
  sub_23D8AA1B0(v53, v90);
  (*(v91 + 56))(v90, 0, 1, v93);
  v73 = sub_23D8DD5E0();
  sub_23D8AA214(v53);
  v74 = *(v96 + 24);
  *(v96 + 24) = v73;

  sub_23D8DCAC0();
  v75 = sub_23D8DCAE0();
  v76 = sub_23D8DEA90();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_23D82C000, v75, v76, "Show Accessibility Reader UI View", v77, 2u);
    MEMORY[0x23EEF15F0](v77, -1, -1);
  }

  v78 = *(v0 + 360);
  v79 = *(v0 + 328);
  v80 = *(v0 + 216);

  v12(v78, v79);
  v81 = sub_23D8CC660();
  *(v0 + 432) = v81;
  v82 = *(v96 + 24);
  *(v0 + 440) = v82;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 448) = Strong;
  v84 = v82;
  v85 = sub_23D8DE830();
  *(v0 + 456) = v85;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 465;
  *(v0 + 24) = sub_23D8CDF70;
  v86 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0430, &qword_23D8E5A00);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23D8CE778;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v86;
  [v81 addContentViewController:v84 withUserInteractionEnabled:1 forService:Strong forSceneClientIdentifier:v85 context:0 userInterfaceStyle:1 forWindowScene:0 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23D8CDF70()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23D8CE078, v2, v1);
}

uint64_t sub_23D8CE078()
{
  v55 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 376);

  v6 = *(v0 + 465);

  swift_unknownObjectRelease();
  v7 = *(v0 + 424);
  if (v6 == 1)
  {
    v8 = *(v0 + 416);
    v9 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    v12 = *(v0 + 280);
    v13 = *(v0 + 256);
    v14 = *(v0 + 264);
    v15 = MEMORY[0x23EEF0BB0]();
    [v15 setAccessibilityReaderIsActive_];

    (*(v14 + 8))(v12, v13);
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v16 = *(v0 + 320);
    v17 = *(v0 + 296);
    v18 = *(v0 + 304);
    v19 = *(v0 + 280);
    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    sub_23D8DCA90();
    sub_23D8CF700(&qword_27E2F0438, MEMORY[0x277CE7450]);
    v22 = swift_allocError();
    sub_23D8DCAA0();
    swift_willThrow();

    (*(v21 + 8))(v19, v20);
    (*(v18 + 8))(v16, v17);
    v23 = *(v0 + 344);
    sub_23D8DCAC0();
    v24 = v22;
    v25 = sub_23D8DCAE0();
    v26 = sub_23D8DEAA0();

    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 400);
    v28 = *(v0 + 408);
    v30 = *(v0 + 344);
    v31 = *(v0 + 328);
    if (v27)
    {
      v52 = *(v0 + 400);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v36 = *(v0 + 184);
      v37 = sub_23D8DED40();
      v39 = sub_23D8CF134(v37, v38, &v54);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_23D82C000, v25, v26, "Coordinator could not Show Accessibility Reader View: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23EEF15F0](v33, -1, -1);
      MEMORY[0x23EEF15F0](v32, -1, -1);

      v52(v30, v31);
    }

    else
    {

      v29(v30, v31);
    }
  }

  v41 = *(v0 + 360);
  v40 = *(v0 + 368);
  v43 = *(v0 + 344);
  v42 = *(v0 + 352);
  v45 = *(v0 + 312);
  v44 = *(v0 + 320);
  v47 = *(v0 + 280);
  v46 = *(v0 + 288);
  v48 = *(v0 + 272);
  v49 = *(v0 + 248);
  v53 = *(v0 + 224);

  v50 = *(v0 + 8);

  return v50();
}

void sub_23D8CE400()
{
  v1 = sub_23D8DCAF0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v18 = sub_23D8CF83C;
    v19 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_23D876358;
    v17 = &block_descriptor_8;
    v7 = _Block_copy(&aBlock);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v18 = sub_23D8CF844;
    v19 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_23D8CC60C;
    v17 = &block_descriptor_14;
    v10 = _Block_copy(&aBlock);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(v0 + 24);
    *(v0 + 24) = 0;
  }

  v13 = sub_23D8DCA80();
  sub_23D8DCAB0();
}

uint64_t sub_23D8CE778(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t AXRCoordinator.hideReaderView()()
{
  v1[22] = v0;
  v2 = sub_23D8DCAF0();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_23D8DE9D0();
  v1[29] = sub_23D8DE9C0();
  v6 = sub_23D8DE9B0();
  v1[30] = v6;
  v1[31] = v5;

  return MEMORY[0x2822009F8](sub_23D8CE8EC, v6, v5);
}

uint64_t sub_23D8CE8EC()
{
  v1 = v0[28];
  v2 = v0[22];
  sub_23D8DCAC0();

  v3 = sub_23D8DCAE0();
  v4 = sub_23D8DEA80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v6 + 48);

    _os_log_impl(&dword_23D82C000, v3, v4, "Coordinator asked to Show Accessibility Reader View. is Accessibility Reader running: %{BOOL}d", v7, 8u);
    MEMORY[0x23EEF15F0](v7, -1, -1);
  }

  else
  {
    v8 = v0[22];
  }

  v9 = v0[28];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[22];
  v13 = *(v11 + 8);
  v0[32] = v13;
  v0[33] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v10);
  sub_23D8DEA70();
  v14 = MEMORY[0x23EEF0BB0]();
  [v14 setAccessibilityReaderIsActive_];

  v15 = *(v12 + 24);
  v0[34] = v15;
  if (v15)
  {
    v16 = v0[27];
    v40 = v15;
    sub_23D8DCAC0();
    v17 = sub_23D8DCAE0();
    v18 = sub_23D8DEA90();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23D82C000, v17, v18, "Hide Accessibility Reader UI View", v19, 2u);
      MEMORY[0x23EEF15F0](v19, -1, -1);
    }

    v20 = v0[27];
    v21 = v0[22];
    v22 = v0[23];

    v13(v20, v22);
    v23 = sub_23D8CC660();
    v0[35] = v23;
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[36] = Strong;
    v0[2] = v0;
    v0[7] = v0 + 37;
    v0[3] = sub_23D8CECF0;
    v25 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0430, &qword_23D8E5A00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23D8CE778;
    v0[13] = &block_descriptor_3;
    v0[14] = v25;
    [v23 removeContentViewController:v40 withUserInteractionEnabled:1 forService:Strong context:0 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v26 = v0[29];
    v27 = v0[26];

    sub_23D8DCAC0();
    v28 = sub_23D8DCAE0();
    v29 = sub_23D8DEA90();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[26];
    v32 = v0[23];
    if (v30)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23D82C000, v28, v29, "There is no Accessibility Reader UI View to hide", v33, 2u);
      MEMORY[0x23EEF15F0](v33, -1, -1);
    }

    v13(v31, v32);
    v35 = v0[27];
    v34 = v0[28];
    v37 = v0[25];
    v36 = v0[26];

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_23D8CECF0()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23D8CEDF8, v2, v1);
}

uint64_t sub_23D8CEDF8()
{
  v36 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 232);

  v5 = *(v0 + 296);

  swift_unknownObjectRelease();
  v6 = *(v0 + 272);
  if (v5 == 1)
  {
    v7 = *(v0 + 176);

    v8 = *(v7 + 24);
    *(v7 + 24) = 0;
  }

  else
  {
    v9 = *(v0 + 200);
    sub_23D8DCA90();
    sub_23D8CF700(&qword_27E2F0438, MEMORY[0x277CE7450]);
    v10 = swift_allocError();
    sub_23D8DCAA0();
    swift_willThrow();

    v11 = v10;
    sub_23D8DCAC0();
    v12 = v10;
    v13 = sub_23D8DCAE0();
    v14 = sub_23D8DEAA0();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 200);
    v19 = *(v0 + 184);
    if (v15)
    {
      v34 = *(v0 + 256);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = *(v0 + 144);
      v22 = *(v0 + 152);
      v24 = *(v0 + 160);
      v25 = sub_23D8DED40();
      v27 = sub_23D8CF134(v25, v26, &v35);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_23D82C000, v13, v14, "Coordinator could not Show Accessibility Reader View: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23EEF15F0](v21, -1, -1);
      MEMORY[0x23EEF15F0](v20, -1, -1);

      v34(v18, v19);
    }

    else
    {

      v17(v18, v19);
    }
  }

  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v31 = *(v0 + 200);
  v30 = *(v0 + 208);

  v32 = *(v0 + 8);

  return v32();
}

id *AXRCoordinator.deinit()
{
  sub_23D8CF748((v0 + 2));

  return v0;
}

uint64_t AXRCoordinator.__deallocating_deinit()
{
  sub_23D8CF748((v0 + 2));

  return swift_deallocClassInstance();
}

uint64_t sub_23D8CF134(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D8CF200(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23D835A24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D8CF200(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23D8CF30C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23D8DEC70();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23D8CF30C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D8CF358(a1, a2);
  sub_23D8CF488(&unk_284FD4D10);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D8CF358(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23D8CF574(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23D8DEC70();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23D8DE920();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D8CF574(v10, 0);
        result = sub_23D8DEC40();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23D8CF488(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23D8CF5E8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23D8CF574(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0448, &qword_23D8E5A78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D8CF5E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0448, &qword_23D8E5A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23D8CF700(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23D8CF804()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8CF87C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_23D8DE6E0();
}

uint64_t SSActions.image.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x73697370696C6C65;
    v7 = 0x69616C702E636F64;
    if (v1 != 2)
    {
      v7 = 0x6C75622E7473696CLL;
    }

    if (*v0)
    {
      v6 = 0x7061742E646E6168;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x2E6E6F7276656863;
    v3 = 0xD000000000000028;
    if (v1 != 7)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6D726F6665766177;
    if (v1 != 4)
    {
      v4 = 0x69632E6B72616D78;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t SSActions.title.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 != 6)
      {
        goto LABEL_30;
      }

      if (qword_27E2ECEC8 != -1)
      {
        swift_once();
      }

      v2 = qword_27E2F3C80;
      v3 = 0xD000000000000015;
      if (!qword_27E2F3C80)
      {
        return v3;
      }

LABEL_37:
      v4 = v2;
      goto LABEL_38;
    }

    if (v1 != 4)
    {
      if (qword_27E2ECEC8 != -1)
      {
        swift_once();
      }

      v2 = qword_27E2F3C80;
      v3 = 0xD00000000000001ALL;
      if (!qword_27E2F3C80)
      {
        return v3;
      }

      goto LABEL_37;
    }

    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    if (!qword_27E2F3C80)
    {
      return 0xD00000000000001ELL;
    }

    goto LABEL_17;
  }

  if (*v0 > 1u)
  {
    if (v1 == 2)
    {
      if (qword_27E2ECEC8 != -1)
      {
        swift_once();
      }

      v2 = qword_27E2F3C80;
      v3 = 0xD000000000000021;
      if (!qword_27E2F3C80)
      {
        return v3;
      }

      goto LABEL_37;
    }

    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v3 = 0xD000000000000016;
    if (!qword_27E2F3C80)
    {
      return v3;
    }

LABEL_17:
    v4 = qword_27E2F3C80;
LABEL_38:
    v5 = sub_23D8DE830();
    v6 = sub_23D8DE830();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v3 = sub_23D8DE870();
    return v3;
  }

  if (!*v0)
  {
LABEL_30:
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v2 = qword_27E2F3C80;
    v3 = 0xD000000000000011;
    if (!qword_27E2F3C80)
    {
      return v3;
    }

    goto LABEL_37;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E2F3C80;
  v3 = 0xD00000000000001CLL;
  if (qword_27E2F3C80)
  {
    goto LABEL_37;
  }

  return v3;
}

AccessibilityReadingUI::SSActions_optional __swiftcall SSActions.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23D8CFF44@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_23D8D0144(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  v5 = type metadata accessor for SSStore();
  v6 = sub_23D8DAF50(&qword_27E2ED008, type metadata accessor for SSStore);

  return MEMORY[0x282131550](v3, v4, v5, v6);
}

uint64_t sub_23D8D01EC(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
  sub_23D8DE320();
  return v3;
}

uint64_t sub_23D8D0240(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
  return sub_23D8DE330();
}

uint64_t sub_23D8D0298(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE320();
  return v3;
}

uint64_t sub_23D8D02EC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  return sub_23D8DE330();
}

uint64_t sub_23D8D0344(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 64));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  return sub_23D8DE330();
}

uint64_t SSHUDView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v76 = *(a1 - 8);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](a1);
  v75 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v90 = v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v92 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  v7 = *(a1 + 24);
  v72 = *(a1 + 16);
  v73 = a1;
  v71 = v7;
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v8 = sub_23D8DD020();
  v9 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v10 = sub_23D8D0EF0();
  v105 = v6;
  v106 = &type metadata for SSActions;
  v107 = v8;
  v108 = v9;
  v109 = v10;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v11 = sub_23D8DE6D0();
  v12 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v105 = v5;
  v106 = v11;
  v107 = v12;
  v108 = WitnessTable;
  v14 = sub_23D8DDBF0();
  v15 = swift_getWitnessTable();
  v105 = v14;
  v106 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = sub_23D8DD8B0();
  v105 = v14;
  v106 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  v105 = OpaqueTypeMetadata2;
  v106 = v17;
  v107 = OpaqueTypeConformance2;
  v108 = v19;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v93 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v20 = sub_23D8DE410();
  type metadata accessor for AXSpeakStopType(255);
  v22 = v21;
  v23 = swift_getWitnessTable();
  v24 = sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  v89 = v20;
  v90 = v22;
  v91 = v23;
  v92 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v89 = v20;
  v90 = v22;
  v91 = v23;
  v92 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_23D8D0F44();
  v89 = v25;
  v90 = &type metadata for SSActions;
  v91 = v26;
  v92 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  sub_23D8DD020();
  v28 = sub_23D8DD020();
  v29 = sub_23D8DD090();
  v89 = v25;
  v90 = &type metadata for SSActions;
  v91 = v26;
  v92 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x277CE0790];
  v103 = v30;
  v104 = MEMORY[0x277CE0790];
  v32 = MEMORY[0x277CDFAD8];
  v101 = swift_getWitnessTable();
  v102 = v31;
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x277CDF918];
  v79 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_23D8DAF50(&qword_27E2EE3D0, MEMORY[0x277CDFC08]);
  v89 = v28;
  v90 = v29;
  v91 = v33;
  v92 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED8B8, &qword_23D8E2B80);
  v36 = sub_23D8DD020();
  v89 = v28;
  v90 = v29;
  v91 = v33;
  v92 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80);
  v97 = v33;
  v98 = v38;
  v39 = swift_getWitnessTable();
  v89 = v28;
  v90 = MEMORY[0x277CE1350];
  v91 = v35;
  v92 = v36;
  v93 = v33;
  v94 = MEMORY[0x277CE1340];
  v95 = v37;
  v96 = v39;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE30, &qword_23D8E4AD0);
  sub_23D8DD020();
  sub_23D8DD020();
  v89 = v28;
  v90 = MEMORY[0x277CE1350];
  v91 = v35;
  v92 = v36;
  v93 = v33;
  v94 = MEMORY[0x277CE1340];
  v95 = v37;
  v96 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0);
  v87 = v40;
  v88 = v41;
  v85 = swift_getWitnessTable();
  v86 = MEMORY[0x277CDF760];
  swift_getWitnessTable();
  v42 = sub_23D8DE430();
  v69 = *(v42 - 8);
  v43 = *(v69 + 64);
  MEMORY[0x28223BE20](v42);
  v66 = &v66 - v44;
  v45 = sub_23D8DD020();
  v70 = *(v45 - 8);
  v46 = *(v70 + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v67 = &v66 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v68 = &v66 - v49;
  sub_23D8DE5E0();
  v50 = v71;
  v51 = v72;
  v80 = v72;
  v81 = v71;
  v52 = v74;
  v82 = v74;
  sub_23D8DE420();
  v54 = v75;
  v53 = v76;
  v55 = v73;
  (*(v76 + 16))(v75, v52, v73);
  v56 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v50;
  (*(v53 + 32))(v57 + v56, v54, v55);
  v58 = swift_getWitnessTable();
  v59 = v66;
  v60 = v67;
  sub_23D8DE010();

  (*(v69 + 8))(v59, v42);
  v61 = sub_23D8D4888();
  v83 = v58;
  v84 = v61;
  v62 = swift_getWitnessTable();
  v63 = v68;
  sub_23D8361EC(v60, v45, v62);
  v64 = *(v70 + 8);
  v64(v60, v45);
  sub_23D8361EC(v63, v45, v62);
  return (v64)(v63, v45);
}

unint64_t sub_23D8D0EF0()
{
  result = qword_27E2F0498;
  if (!qword_27E2F0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0498);
  }

  return result;
}

unint64_t sub_23D8D0F44()
{
  result = qword_27E2F04A0;
  if (!qword_27E2F04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F04A0);
  }

  return result;
}

uint64_t sub_23D8D0F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v207 = a1;
  v192 = a4;
  v6 = sub_23D8DCCB0();
  v190 = *(v6 - 8);
  v191 = v6;
  v7 = *(v190 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v189 = v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v188 = v148 - v10;
  v201 = sub_23D8DD090();
  v11 = *(*(v201 - 8) + 64);
  MEMORY[0x28223BE20](v201);
  v187 = v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = a2;
  v206 = a3;
  v202 = type metadata accessor for SSHUDView();
  v208 = *(v202 - 8);
  v205 = *(v208 + 64);
  MEMORY[0x28223BE20](v202);
  v186 = v148 - v13;
  v203 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v221 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v222 = v14;
  v223 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v224 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v17 = sub_23D8DD020();
  v18 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v19 = sub_23D8D0EF0();
  v237 = v16;
  v238 = &type metadata for SSActions;
  v239 = v17;
  v240 = v18;
  v241 = v19;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v20 = sub_23D8DE6D0();
  v21 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v237 = v15;
  v238 = v20;
  v239 = v21;
  v240 = WitnessTable;
  v23 = sub_23D8DDBF0();
  v24 = swift_getWitnessTable();
  v237 = v23;
  v238 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = sub_23D8DD8B0();
  v237 = v23;
  v238 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  v237 = OpaqueTypeMetadata2;
  v238 = v26;
  v239 = OpaqueTypeConformance2;
  v240 = v28;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v225 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  v203 = sub_23D8DE6D0();
  v196 = swift_getWitnessTable();
  v29 = sub_23D8DE410();
  v172 = *(v29 - 8);
  v30 = *(v172 + 64);
  MEMORY[0x28223BE20](v29);
  v156 = v148 - v31;
  type metadata accessor for AXSpeakStopType(255);
  v33 = v32;
  v34 = swift_getWitnessTable();
  v35 = sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  v221 = v29;
  v222 = v33;
  v36 = v29;
  v157 = v29;
  v158 = v35;
  v37 = v33;
  v155 = v33;
  v223 = v34;
  v224 = v35;
  v159 = v34;
  v38 = v35;
  v39 = swift_getOpaqueTypeMetadata2();
  v178 = *(v39 - 8);
  v40 = *(v178 + 64);
  MEMORY[0x28223BE20](v39);
  v200 = v148 - v41;
  v221 = v36;
  v222 = v37;
  v223 = v34;
  v224 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_23D8D0F44();
  v221 = v39;
  v222 = &type metadata for SSActions;
  v44 = v39;
  v149 = v39;
  v150 = v43;
  v223 = v42;
  v224 = v43;
  v45 = v42;
  v151 = v42;
  v46 = v43;
  v173 = swift_getOpaqueTypeMetadata2();
  v176 = *(v173 - 8);
  v47 = *(v176 + 64);
  MEMORY[0x28223BE20](v173);
  v199 = v148 - v48;
  v49 = sub_23D8DD020();
  v182 = *(v49 - 8);
  v50 = *(v182 + 64);
  MEMORY[0x28223BE20](v49);
  v169 = v148 - v51;
  v165 = v49;
  v52 = sub_23D8DD020();
  v180 = *(v52 - 8);
  v53 = *(v180 + 64);
  MEMORY[0x28223BE20](v52);
  v171 = v148 - v54;
  v168 = v52;
  v55 = sub_23D8DD020();
  v185 = *(v55 - 8);
  v56 = *(v185 + 64);
  MEMORY[0x28223BE20](v55);
  v170 = v148 - v57;
  v221 = v44;
  v222 = &type metadata for SSActions;
  v223 = v45;
  v224 = v46;
  v161 = swift_getOpaqueTypeConformance2();
  v58 = MEMORY[0x277CE0790];
  v235 = v161;
  v236 = MEMORY[0x277CE0790];
  v164 = swift_getWitnessTable();
  v233 = v164;
  v234 = v58;
  v167 = swift_getWitnessTable();
  v231 = v167;
  v232 = MEMORY[0x277CDF918];
  v59 = v55;
  v60 = swift_getWitnessTable();
  v61 = sub_23D8DAF50(&qword_27E2EE3D0, MEMORY[0x277CDFC08]);
  v62 = v201;
  v221 = v55;
  v222 = v201;
  v223 = v60;
  v224 = v61;
  v63 = v61;
  v174 = v61;
  v64 = swift_getOpaqueTypeMetadata2();
  v148[1] = v64;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED8B8, &qword_23D8E2B80);
  v65 = sub_23D8DD020();
  v221 = v59;
  v222 = v62;
  v160 = v59;
  v223 = v60;
  v224 = v63;
  v66 = swift_getOpaqueTypeConformance2();
  v153 = v66;
  v67 = sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80);
  v229 = v60;
  v230 = v67;
  v154 = v60;
  v152 = v65;
  v197 = swift_getWitnessTable();
  v221 = v59;
  v222 = MEMORY[0x277CE1350];
  v223 = v64;
  v224 = v65;
  v225 = v60;
  v226 = MEMORY[0x277CE1340];
  v227 = v66;
  v228 = v197;
  v163 = MEMORY[0x277CE0E60];
  v162 = swift_getOpaqueTypeMetadata2();
  v166 = *(v162 - 8);
  v68 = *(v166 + 64);
  MEMORY[0x28223BE20](v162);
  v198 = v148 - v69;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE30, &qword_23D8E4AD0);
  v70 = sub_23D8DD020();
  v179 = *(v70 - 8);
  v71 = *(v179 + 64);
  MEMORY[0x28223BE20](v70);
  v148[0] = v148 - v72;
  v181 = v73;
  v74 = sub_23D8DD020();
  v183 = *(v74 - 8);
  v184 = v74;
  v75 = *(v183 + 64);
  v76 = MEMORY[0x28223BE20](v74);
  v175 = v148 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v177 = v148 - v78;
  sub_23D8DD560();
  v79 = v204;
  v214 = v204;
  v80 = v206;
  v81 = v207;
  v215 = v206;
  v216 = v207;
  v82 = v156;
  sub_23D8DE400();
  v83 = v202;
  v221 = [*(v81 + *(v202 + 60) + 8) stopType];
  v84 = v208;
  v85 = *(v208 + 16);
  v195 = v208 + 16;
  v196 = v85;
  v86 = v186;
  v85(v186, v81, v83);
  v203 = *(v84 + 80);
  v87 = (v203 + 32) & ~v203;
  v88 = swift_allocObject();
  *(v88 + 16) = v79;
  *(v88 + 24) = v80;
  v194 = *(v84 + 32);
  v208 = v84 + 32;
  v194(v88 + v87, v86, v83);
  swift_checkMetadataState();
  v89 = v157;
  sub_23D8DE070();

  (*(v172 + 8))(v82, v89);
  sub_23D8DA65C(v83);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  LOBYTE(v237) = v221;
  v90 = v196;
  v196(v86, v81, v83);
  v193 = v87;
  v91 = swift_allocObject();
  v92 = v204;
  v93 = v206;
  *(v91 + 16) = v204;
  *(v91 + 24) = v93;
  v94 = v91 + v87;
  v95 = v194;
  v194(v94, v86, v83);
  v96 = v200;
  v97 = v149;
  sub_23D8DE060();

  (*(v178 + 8))(v96, v97);
  v98 = v207;
  v99 = v202;
  v90(v86, v207, v202);
  v100 = v193;
  v101 = swift_allocObject();
  v102 = v206;
  *(v101 + 16) = v92;
  *(v101 + 24) = v102;
  v103 = v101 + v100;
  v104 = v99;
  v95(v103, v86, v99);
  v105 = v169;
  v106 = v173;
  v107 = v199;
  sub_23D8DE050();

  (*(v176 + 8))(v107, v106);
  v196(v86, v98, v104);
  v108 = v193;
  v109 = swift_allocObject();
  v110 = v204;
  *(v109 + 16) = v204;
  *(v109 + 24) = v102;
  v194(v109 + v108, v86, v104);
  v111 = v171;
  v112 = v165;
  sub_23D8DDD20();

  (*(v182 + 8))(v105, v112);
  sub_23D8DD9E0();
  v113 = v170;
  v114 = v168;
  sub_23D8DE030();
  (*(v180 + 8))(v111, v114);
  sub_23D8DE5D0();
  v212 = v110;
  v213 = v206;
  v209 = v110;
  v210 = v206;
  v211 = v207;
  v115 = swift_checkMetadataState();
  v116 = swift_checkMetadataState();
  v117 = v153;
  v118 = v154;
  v119 = v160;
  sub_23D8DE0A0();
  v120 = v119;
  (*(v185 + 8))(v113, v119);
  v121 = *(v201 + 20);
  v122 = *MEMORY[0x277CE0118];
  v123 = sub_23D8DD4E0();
  v124 = v187;
  (*(*(v123 - 8) + 104))(&v187[v121], v122, v123);
  __asm { FMOV            V0.2D, #20.0 }

  *v124 = _Q0;
  v221 = v120;
  v222 = MEMORY[0x277CE1350];
  v223 = v115;
  v224 = v116;
  v225 = v118;
  v226 = MEMORY[0x277CE1340];
  v227 = v117;
  v228 = v197;
  v130 = swift_getOpaqueTypeConformance2();
  v131 = v148[0];
  v132 = v162;
  v133 = v198;
  sub_23D8DE0B0();
  sub_23D868410(v124);
  (*(v166 + 8))(v133, v132);
  v134 = v188;
  sub_23D8CFF44(v188);
  v136 = v189;
  v135 = v190;
  v137 = v191;
  (*(v190 + 104))(v189, *MEMORY[0x277CDF3C0], v191);
  LOBYTE(v133) = sub_23D8DCCA0();
  v138 = *(v135 + 8);
  v138(v136, v137);
  v138(v134, v137);
  if (v133)
  {
    sub_23D8DE240();
  }

  else
  {
    sub_23D8DE220();
  }

  sub_23D8DE250();

  v139 = sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0);
  v219 = v130;
  v220 = v139;
  v140 = v181;
  v141 = swift_getWitnessTable();
  v142 = v175;
  sub_23D8DDFE0();

  (*(v179 + 8))(v131, v140);
  v217 = v141;
  v218 = MEMORY[0x277CDF760];
  v143 = v184;
  v144 = swift_getWitnessTable();
  v145 = v177;
  sub_23D8361EC(v142, v143, v144);
  v146 = *(v183 + 8);
  v146(v142, v143);
  sub_23D8361EC(v145, v143, v144);
  return (v146)(v145, v143);
}

uint64_t sub_23D8D24C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v19 = a1;
  v20 = a4;
  *&v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  *(&v41 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  *&v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  *(&v42 + 1) = *(&v41 + 1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  *&v35 = sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  swift_getWitnessTable();
  sub_23D8DDBF0();
  swift_getWitnessTable();
  *&v33 = swift_getOpaqueTypeMetadata2();
  *(&v33 + 1) = sub_23D8DD8B0();
  *&v34 = swift_getOpaqueTypeConformance2();
  *(&v34 + 1) = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  *&v43 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  v4 = sub_23D8DD020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = type metadata accessor for SSHUDView();
  sub_23D8D2B1C(v12, &v41);
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  sub_23D8D2C60(v12, v9);
  v19 = MEMORY[0x277CE1138];
  WitnessTable = swift_getWitnessTable();
  v14 = sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190);
  v32[2] = WitnessTable;
  v32[3] = v14;
  v15 = swift_getWitnessTable();
  sub_23D8361EC(v9, v4, v15);
  v16 = *(v5 + 8);
  v16(v9, v4);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v32[0] = &v24;
  (*(v5 + 16))(v9, v11, v4);
  v32[1] = v9;
  sub_23D83C67C(&v33, &v41, &qword_27E2F0460, &qword_23D8E5AB8);
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v23[1] = v4;
  v21 = sub_23D835AD0(&qword_27E2F0538, &qword_27E2F0460, &qword_23D8E5AB8);
  v22 = v15;
  sub_23D8CF87C(v32, 2uLL, v23);
  sub_23D83C6E4(&v33, &qword_27E2F0460, &qword_23D8E5AB8);
  v16(v11, v4);
  v16(v9, v4);
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  return sub_23D83C6E4(&v41, &qword_27E2F0460, &qword_23D8E5AB8);
}

double sub_23D8D2B1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23D8DD420();
  v23 = 1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_23D8D4968(v3, &v15);
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v31[0] = v15;
  v31[1] = v16;
  v31[2] = v17;
  v31[3] = v18;
  v31[4] = v19;
  v31[5] = v20;
  v32 = v21;
  sub_23D83C67C(&v24, &v14, &qword_27E2F0610, &qword_23D8E5DF0);
  sub_23D83C6E4(v31, &qword_27E2F0610, &qword_23D8E5DF0);
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[7] = v24;
  *&v22[23] = v25;
  *&v22[39] = v26;
  v9 = *&v22[32];
  *(a2 + 65) = *&v22[48];
  v10 = *&v22[80];
  *(a2 + 81) = *&v22[64];
  *(a2 + 97) = v10;
  *(a2 + 112) = *&v22[95];
  result = *v22;
  v12 = *&v22[16];
  *(a2 + 17) = *v22;
  *(a2 + 33) = v12;
  v13 = v23;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 49) = v9;
  return result;
}

uint64_t sub_23D8D2C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v39 = v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  v3 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = v3;
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v35 = sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  swift_getWitnessTable();
  sub_23D8DDBF0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = sub_23D8DD8B0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v40 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v4 = sub_23D8DE390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  v9 = sub_23D8DD020();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v26 = v23;
  v27 = v22;
  v28 = v24;
  sub_23D8DD420();
  sub_23D8DE380();
  sub_23D8DDA70();
  WitnessTable = swift_getWitnessTable();
  sub_23D8DDF90();

  (*(v5 + 8))(v8, v4);
  v18 = sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190);
  v29 = WitnessTable;
  v30 = v18;
  v19 = swift_getWitnessTable();
  sub_23D8361EC(v14, v9, v19);
  v20 = *(v10 + 8);
  v20(v14, v9);
  sub_23D8361EC(v16, v9, v19);
  return (v20)(v16, v9);
}

id sub_23D8D325C(uint64_t a1)
{
  v2 = type metadata accessor for SSHUDView();
  result = [*(a1 + *(v2 + 60) + 8) stopType];
  if (result)
  {
    MEMORY[0x28223BE20](result);
    sub_23D8DE640();
    sub_23D8DCE60();

    return sub_23D8D3338(v2);
  }

  return result;
}

uint64_t sub_23D8D3338(uint64_t a1)
{
  v2 = sub_23D8D0298(a1);
  [v2 invalidate];

  sub_23D8D02EC(0, a1);

  return sub_23D8D0240(8, a1);
}

void sub_23D8D339C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = &byte_284FD4DD8;
  for (i = qword_284FD4DC8; i; --i)
  {
    v5 = *v3++;
    if (v5 == *a2)
    {
      v8 = *a2;
      v6 = *(a3 + *(type metadata accessor for SSHUDView() + 60) + 8);
      v7 = swift_unknownObjectRetain();
      sub_23D8DA51C(v7, &v8);
      swift_unknownObjectRelease();
      return;
    }
  }
}

uint64_t sub_23D8D3438(uint64_t a1)
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
  aBlock[4] = sub_23D8DA848;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D87DA4C;
  aBlock[3] = &block_descriptor_7;
  v9 = _Block_copy(aBlock);

  v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
  _Block_release(v9);
  return sub_23D8D02EC(v10, a1);
}

uint64_t sub_23D8D3604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_23D8DD090();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v72 = v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v74 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v8 = sub_23D8DD020();
  v9 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v10 = sub_23D8D0EF0();
  v66 = v7;
  v67 = &type metadata for SSActions;
  v68 = v8;
  v69 = v9;
  v70 = v10;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v11 = sub_23D8DE6D0();
  v12 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v66 = v6;
  v67 = v11;
  v68 = v12;
  v69 = WitnessTable;
  v14 = sub_23D8DDBF0();
  v15 = swift_getWitnessTable();
  v66 = v14;
  v67 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = sub_23D8DD8B0();
  v66 = v14;
  v67 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  v66 = OpaqueTypeMetadata2;
  v67 = v17;
  v68 = OpaqueTypeConformance2;
  v69 = v19;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v75 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v20 = sub_23D8DE410();
  type metadata accessor for AXSpeakStopType(255);
  v22 = v21;
  v23 = swift_getWitnessTable();
  v24 = sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  v71 = v20;
  v72 = v22;
  v73 = v23;
  v74 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v71 = v20;
  v72 = v22;
  v73 = v23;
  v74 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_23D8D0F44();
  v71 = v25;
  v72 = &type metadata for SSActions;
  v73 = v26;
  v74 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  sub_23D8DD020();
  v28 = sub_23D8DD020();
  v71 = v25;
  v72 = &type metadata for SSActions;
  v73 = v26;
  v74 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CE0790];
  v64 = v29;
  v65 = MEMORY[0x277CE0790];
  v62 = swift_getWitnessTable();
  v63 = v30;
  v60 = swift_getWitnessTable();
  v61 = MEMORY[0x277CDF918];
  v55 = v28;
  v31 = swift_getWitnessTable();
  v32 = sub_23D8DAF50(&qword_27E2EE3D0, MEMORY[0x277CDFC08]);
  v71 = v28;
  v72 = v2;
  v33 = v2;
  v73 = v31;
  v74 = v32;
  v56 = MEMORY[0x277CE77E8];
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v55 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v55 - v40;
  v42 = *(v33 + 20);
  v43 = *MEMORY[0x277CE0118];
  v44 = sub_23D8DD4E0();
  v45 = v57;
  (*(*(v44 - 8) + 104))(&v57[v42], v43, v44);
  __asm { FMOV            V0.2D, #20.0 }

  *v45 = _Q0;
  v51 = swift_checkMetadataState();
  sub_23D8DDCC0();
  sub_23D868410(v45);
  v71 = v51;
  v72 = v33;
  v73 = v31;
  v74 = v32;
  v52 = swift_getOpaqueTypeConformance2();
  sub_23D8361EC(v39, v34, v52);
  v53 = *(v35 + 8);
  v53(v39, v34);
  sub_23D8361EC(v41, v34, v52);
  return (v53)(v41, v34);
}

uint64_t sub_23D8D3E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v70 = a1;
  v71 = a3;
  v58 = sub_23D8DE150();
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_23D8DCCB0();
  v67 = *(v68 - 8);
  v5 = *(v67 + 64);
  v6 = MEMORY[0x28223BE20](v68);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v55 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v86 = v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v88 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v12 = sub_23D8DD020();
  v13 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v14 = sub_23D8D0EF0();
  v80 = v11;
  v81 = &type metadata for SSActions;
  v82 = v12;
  v83 = v13;
  v84 = v14;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v15 = sub_23D8DE6D0();
  v16 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v80 = v10;
  v81 = v15;
  v82 = v16;
  v83 = WitnessTable;
  v18 = sub_23D8DDBF0();
  v19 = swift_getWitnessTable();
  v80 = v18;
  v81 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = sub_23D8DD8B0();
  v80 = v18;
  v81 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  v80 = OpaqueTypeMetadata2;
  v81 = v21;
  v82 = OpaqueTypeConformance2;
  v83 = v23;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v89 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v24 = sub_23D8DE410();
  type metadata accessor for AXSpeakStopType(255);
  v26 = v25;
  v27 = swift_getWitnessTable();
  v28 = sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  v85 = v24;
  v86 = v26;
  v87 = v27;
  v88 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v85 = v24;
  v86 = v26;
  v87 = v27;
  v88 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_23D8D0F44();
  v63 = v29;
  v85 = v29;
  v86 = &type metadata for SSActions;
  v61 = v30;
  v87 = v30;
  v88 = v31;
  v59 = v31;
  swift_getOpaqueTypeMetadata2();
  v60 = sub_23D8DD020();
  v62 = sub_23D8DD020();
  v32 = sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED8B8, &qword_23D8E2B80);
  v64 = v32;
  v33 = sub_23D8DD020();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v55 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v55 - v39;
  v41 = v65;
  sub_23D8CFF44(v65);
  v42 = v67;
  v43 = v66;
  v44 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x277CDF3C0], v68);
  v45 = sub_23D8DCCA0();
  v46 = *(v42 + 8);
  v46(v43, v44);
  v46(v41, v44);
  if (v45)
  {
    (*(v57 + 104))(v56, *MEMORY[0x277CE0EE0], v58);
    v47 = sub_23D8DE280();
  }

  else
  {
    v47 = sub_23D8DE240();
  }

  v80 = v47;
  sub_23D8DD9E0();
  v85 = v63;
  v86 = &type metadata for SSActions;
  v87 = v61;
  v88 = v59;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = MEMORY[0x277CE0790];
  v78 = v48;
  v79 = MEMORY[0x277CE0790];
  v76 = swift_getWitnessTable();
  v77 = v49;
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x277CDF918];
  v50 = swift_getWitnessTable();
  sub_23D8DDCF0();

  v51 = sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80);
  v72 = v50;
  v73 = v51;
  v52 = swift_getWitnessTable();
  sub_23D8361EC(v38, v33, v52);
  v53 = *(v34 + 8);
  v53(v38, v33);
  sub_23D8361EC(v40, v33, v52);
  return (v53)(v40, v33);
}

uint64_t sub_23D8D481C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for SSHUDView();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return sub_23D8D0344(a1, v5);
}

unint64_t sub_23D8D4888()
{
  result = qword_27E2F04A8;
  if (!qword_27E2F04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F04A8);
  }

  return result;
}

uint64_t sub_23D8D4968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v76 = sub_23D8DCCB0();
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  v4 = MEMORY[0x28223BE20](v76);
  v73 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v67 - v6;
  v8 = sub_23D8DE2D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SSHUDView();
  v14 = [*(a1 + *(v13 + 60) + 8) currentAppTitle];
  if (v14)
  {

    v15 = [*(a1 + *(v13 + 60) + 8) currentAppBundleId];
    if (v15)
    {
      v16 = v15;
      v17 = sub_23D8DE870();
      v19 = v18;

      v20.value._countAndFlagsBits = v17;
      v20.value._object = v19;
      iconForBundleId(_:)(v20);
      sub_23D8DE2B0();
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      sub_23D8DE2B0();
    }

    (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);
    v79 = sub_23D8DE300();

    (*(v9 + 8))(v12, v8);
    sub_23D8DE5F0();
    sub_23D8DCDB0();
    LOBYTE(v86) = 1;
    v71 = v95;
    v70 = v96;
    v69 = v97;
    v78 = v98;
    v68 = v99;
    v67 = v100;
    v77 = 1;
  }

  else
  {
    v79 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v78 = 0;
    v68 = 0;
    v67 = 0;
    v77 = 0;
  }

  v21 = [*(a1 + *(v13 + 60) + 8) currentAppTitle];
  v74 = a1;
  if (v21)
  {
    v22 = v21;
    v23 = sub_23D8DE870();
    v25 = v24;
LABEL_13:

    goto LABEL_14;
  }

  v25 = 0x800000023D8E6830;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v23 = 0xD000000000000017;
  if (qword_27E2F3C80)
  {
    v26 = qword_27E2F3C80;
    v27 = sub_23D8DE830();
    v28 = sub_23D8DE830();
    v22 = [v26 localizedStringForKey:v27 value:0 table:v28];

    v23 = sub_23D8DE870();
    v25 = v29;

    goto LABEL_13;
  }

LABEL_14:
  v86 = v23;
  v87 = v25;
  v86 = sub_23D8DE960();
  v87 = v30;
  sub_23D83CB18();
  v31 = sub_23D8DDCB0();
  v33 = v32;
  v35 = v34;
  sub_23D8DDB50();
  v36 = sub_23D8DDC40();
  v38 = v37;
  v40 = v39;

  sub_23D83CB6C(v31, v33, v35 & 1);

  v41 = sub_23D8DDC20();
  v43 = v42;
  v45 = v44;
  sub_23D83CB6C(v36, v38, v40 & 1);

  sub_23D8CFF44(v7);
  v46 = v75;
  v47 = v73;
  v48 = v76;
  (*(v75 + 104))(v73, *MEMORY[0x277CDF3C0], v76);
  LOBYTE(v31) = sub_23D8DCCA0();
  v49 = *(v46 + 8);
  v49(v47, v48);
  v49(v7, v48);
  if (v31)
  {
    v50 = sub_23D8DE240();
  }

  else
  {
    v50 = sub_23D8DE220();
  }

  v86 = v50;
  v51 = sub_23D8DDC10();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_23D83CB6C(v41, v43, v45 & 1);

  v81 = v79;
  *&v82 = v77;
  v58 = v71;
  *(&v82 + 1) = v71;
  v59 = v70;
  *&v83 = v70;
  v60 = v69;
  *(&v83 + 1) = v69;
  *&v84 = v78;
  v61 = v68;
  v62 = v67;
  *(&v84 + 1) = v68;
  v85 = v67;
  v80 = v55 & 1;
  v63 = v84;
  v64 = v72;
  *(v72 + 32) = v83;
  *(v64 + 48) = v63;
  v65 = v82;
  *v64 = v81;
  *(v64 + 16) = v65;
  *(v64 + 64) = v62;
  *(v64 + 72) = v51;
  *(v64 + 80) = v53;
  *(v64 + 88) = v55 & 1;
  *(v64 + 96) = v57;
  sub_23D83C67C(&v81, &v86, &qword_27E2F0618, &qword_23D8E5DF8);
  sub_23D834028(v51, v53, v55 & 1);

  sub_23D83CB6C(v51, v53, v55 & 1);

  v86 = v79;
  v87 = 0;
  v88 = v77;
  v89 = v58;
  v90 = v59;
  v91 = v60;
  v92 = v78;
  v93 = v61;
  v94 = v62;
  return sub_23D83C6E4(&v86, &qword_27E2F0618, &qword_23D8E5DF8);
}

uint64_t sub_23D8D50EC@<X0>(void (*a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a2;
  v63 = a1;
  v64 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v88 = sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  swift_getWitnessTable();
  sub_23D8DDBF0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = sub_23D8DD8B0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  v84 = OpaqueTypeMetadata2;
  v85 = v55;
  v86 = OpaqueTypeConformance2;
  v87 = v53;
  v51 = MEMORY[0x277CDEF98];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  v52 = sub_23D8DD020();
  v57 = sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v3 = sub_23D8DD6C0();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v46 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v9 = *(*(v61 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v61);
  v69 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v66 = &v46 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v14 = *(*(v59 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v59);
  v67 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v46 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v49 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v68 = &v46 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v24 = *(*(v50 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v50);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v46 - v28;
  v30 = type metadata accessor for SSHUDView();
  v47 = v29;
  sub_23D8D5B48(v30, v29);
  sub_23D8D6398(v30, &unk_284FD8950, sub_23D8DB638, sub_23D8D7B40, v23);
  sub_23D8D5FA0(v30, v13);
  sub_23D8D6398(v30, &unk_284FD8900, sub_23D8DB54C, sub_23D8D7B80, v21);
  sub_23D8D6718(v30, v7);
  v84 = OpaqueTypeMetadata2;
  v85 = v55;
  v86 = OpaqueTypeConformance2;
  v87 = v53;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920);
  v82 = v31;
  v83 = v32;
  WitnessTable = swift_getWitnessTable();
  v81 = MEMORY[0x277CDFC48];
  v33 = swift_getWitnessTable();
  v34 = sub_23D8DAF50(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
  v78 = v33;
  v79 = v34;
  v76 = swift_getWitnessTable();
  v77 = v76;
  v35 = v3;
  v36 = swift_getWitnessTable();
  v37 = v58;
  sub_23D8361EC(v7, v3, v36);
  v38 = v60;
  v63 = *(v60 + 8);
  v63(v7, v3);
  v48 = v27;
  sub_23D83C67C(v29, v27, &qword_27E2F0468, &qword_23D8E5AC0);
  v84 = v27;
  v39 = v65;
  sub_23D83C67C(v68, v65, &qword_27E2F0470, &qword_23D8E5AC8);
  v85 = v39;
  v40 = v69;
  sub_23D83C67C(v66, v69, &qword_27E2F0478, &unk_23D8E5AD0);
  v86 = v40;
  v41 = v49;
  v42 = v67;
  sub_23D83C67C(v49, v67, &qword_27E2F0470, &qword_23D8E5AC8);
  v87 = v42;
  (*(v38 + 16))(v7, v37, v3);
  v88 = v7;
  v75[0] = v50;
  v75[1] = v59;
  v75[2] = v61;
  v75[3] = v59;
  v75[4] = v3;
  v70 = sub_23D8DABE4();
  v43 = sub_23D8DAD28(&qword_27E2F0588, &qword_27E2F0470, &qword_23D8E5AC8, sub_23D8DAF98);
  v71 = v43;
  v72 = sub_23D8DB110();
  v73 = v43;
  v74 = v36;
  sub_23D8CF87C(&v84, 5uLL, v75);
  v44 = v63;
  v63(v37, v35);
  sub_23D83C6E4(v41, &qword_27E2F0470, &qword_23D8E5AC8);
  sub_23D83C6E4(v66, &qword_27E2F0478, &unk_23D8E5AD0);
  sub_23D83C6E4(v68, &qword_27E2F0470, &qword_23D8E5AC8);
  sub_23D83C6E4(v47, &qword_27E2F0468, &qword_23D8E5AC0);
  v44(v7, v35);
  sub_23D83C6E4(v67, &qword_27E2F0470, &qword_23D8E5AC8);
  sub_23D83C6E4(v69, &qword_27E2F0478, &unk_23D8E5AD0);
  sub_23D83C6E4(v65, &qword_27E2F0470, &qword_23D8E5AC8);
  return sub_23D83C6E4(v48, &qword_27E2F0468, &qword_23D8E5AC0);
}

uint64_t sub_23D8D5B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_23D8DD080();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0578, &qword_23D8E5D48);
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  (*(v11 + 16))(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  *(v18 + 16) = v20;
  *(v18 + 24) = v19;
  (*(v11 + 32))(v18 + v17, &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v47 = v20;
  v48 = v19;
  v49 = v3;
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2F0580, &qword_27E2F0578, &qword_23D8E5D48);
  sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
  v21 = v46;
  v23 = v43;
  v22 = v44;
  sub_23D8DDD10();
  (*(v45 + 8))(v10, v22);
  (*(v42 + 8))(v16, v23);
  v24 = sub_23D8DE260();
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0570, &qword_23D8E5D40) + 36)) = v24;
  v25 = v21;
  sub_23D8DDB60();
  sub_23D8DDAC0();
  v26 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  v28 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0560, &qword_23D8E5D38) + 36));
  *v28 = KeyPath;
  v28[1] = v26;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v29 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0550, &qword_23D8E5D30) + 36));
  v30 = v51;
  *v29 = v50;
  v29[1] = v30;
  v29[2] = v52;
  LOBYTE(KeyPath) = sub_23D8DDA30();
  sub_23D8DCC20();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v40 = v25 + *(result + 36);
  *v40 = KeyPath;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  return result;
}

double sub_23D8D5FA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_23D8DD080();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05A0, &qword_23D8E5D58);
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  (*(v11 + 16))(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  *(v18 + 16) = v20;
  *(v18 + 24) = v19;
  (*(v11 + 32))(v18 + v17, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v38 = v20;
  v39 = v19;
  v40 = v3;
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2F05A8, &qword_27E2F05A0, &qword_23D8E5D58);
  sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
  v21 = v37;
  v23 = v34;
  v22 = v35;
  sub_23D8DDD10();
  (*(v36 + 8))(v10, v22);
  (*(v33 + 8))(v16, v23);
  v24 = sub_23D8DE260();
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0598, &qword_23D8E5D50) + 36)) = v24;
  v25 = v21;
  sub_23D8DDAA0();
  sub_23D8DDAC0();
  v26 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  v28 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0470, &qword_23D8E5AC8) + 36));
  *v28 = KeyPath;
  v28[1] = v26;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v29 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0478, &unk_23D8E5AD0) + 36));
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  result = *&v43;
  v29[2] = v43;
  return result;
}

uint64_t sub_23D8D6398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30[2] = a3;
  v30[3] = a4;
  v30[1] = a2;
  v6 = v5;
  v32 = a5;
  v31 = sub_23D8DD080();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05A0, &qword_23D8E5D58);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v30 - v18;
  (*(v13 + 16))(v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = *(a1 + 16);
  (*(v13 + 32))(v21 + v20, v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2F05A8, &qword_27E2F05A0, &qword_23D8E5D58);
  sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
  v23 = v31;
  v22 = v32;
  sub_23D8DDD10();
  (*(v8 + 8))(v12, v23);
  (*(v16 + 8))(v19, v15);
  v24 = sub_23D8DE260();
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0598, &qword_23D8E5D50) + 36)) = v24;
  v25 = v22;
  sub_23D8DDB50();
  sub_23D8DDAC0();
  v26 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v29 = (v25 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = v26;
  return result;
}

uint64_t sub_23D8D6718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v112 = *(a1 - 8);
  v3 = *(v112 + 64);
  MEMORY[0x28223BE20](a1);
  v110 = v4;
  v111 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D8DD8B0();
  v134 = *(v5 - 8);
  v6 = *(v134 + 64);
  MEMORY[0x28223BE20](v5);
  v132 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DE6B0();
  v130 = *(v8 - 8);
  v131 = v8;
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v8);
  v129 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  v13 = *(a1 + 16);
  v116 = *(a1 + 24);
  v117 = v13;
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v14 = sub_23D8DD020();
  v15 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v16 = sub_23D8D0EF0();
  v178 = v12;
  v179 = &type metadata for SSActions;
  v180 = v14;
  v181 = v15;
  v182 = v16;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v17 = sub_23D8DE6D0();
  v18 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v127 = v11;
  v178 = v11;
  v179 = v17;
  v115 = v18;
  v180 = v18;
  v181 = WitnessTable;
  v113 = WitnessTable;
  v20 = sub_23D8DDBF0();
  v122 = *(v20 - 8);
  v21 = *(v122 + 64);
  MEMORY[0x28223BE20](v20);
  v118 = &v108 - v22;
  v23 = swift_getWitnessTable();
  v178 = v20;
  v179 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v124 = *(OpaqueTypeMetadata2 - 8);
  v25 = *(v124 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v121 = &v108 - v26;
  v178 = v20;
  v179 = v23;
  v114 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  v147 = OpaqueTypeMetadata2;
  v148 = v5;
  v178 = OpaqueTypeMetadata2;
  v179 = v5;
  v145 = v28;
  v146 = OpaqueTypeConformance2;
  v180 = OpaqueTypeConformance2;
  v181 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v123 = *(v29 - 8);
  v30 = *(v123 + 64);
  MEMORY[0x28223BE20](v29);
  v120 = &v108 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  v125 = v29;
  v32 = sub_23D8DD020();
  v126 = *(v32 - 8);
  v33 = *(v126 + 64);
  MEMORY[0x28223BE20](v32);
  v119 = &v108 - v34;
  v141 = v35;
  v36 = sub_23D8DD020();
  v133 = *(v36 - 8);
  v37 = *(v133 + 64);
  MEMORY[0x28223BE20](v36);
  v128 = &v108 - v38;
  sub_23D8DD960();
  v144 = v36;
  v39 = sub_23D8DD020();
  v137 = *(v39 - 8);
  v40 = *(v137 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v135 = &v108 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v136 = &v108 - v43;
  v44 = sub_23D8DD6C0();
  v139 = *(v44 - 8);
  v140 = v44;
  v45 = *(v139 + 64);
  MEMORY[0x28223BE20](v44);
  v138 = &v108 - v46;
  v143 = a1;
  v47 = v149;
  sub_23D8DA65C(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v153 = v117;
  v154 = v116;
  v155 = v47;
  v150 = v117;
  v151 = v116;
  v152 = v47;
  if (v178)
  {
    v48 = v117;
    v49 = v116;
    v108 = &v108;
    v109 = v39;
    v50 = v112;
    v51 = v111;
    v52 = v143;
    (*(v112 + 16))(v111, v149, v143);
    v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v48;
    *(v54 + 24) = v49;
    (*(v50 + 32))(v54 + v53, v51, v52);
    v55 = v118;
    v39 = v109;
    sub_23D8DDBD0();
    v56 = v129;
    sub_23D8DE6A0();
    v57 = v121;
    sub_23D8DE0D0();
    (*(v130 + 8))(v56, v131);
    (*(v122 + 8))(v55, v20);
    v58 = v132;
    sub_23D8DD8A0();
    v59 = v120;
    v60 = v147;
    v61 = v148;
    v63 = v145;
    v62 = v146;
    sub_23D8DE0E0();
    (*(v134 + 8))(v58, v61);
    (*(v124 + 8))(v57, v60);
    v178 = v60;
    v179 = v61;
    v180 = v62;
    v181 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v119;
    v66 = v125;
    sub_23D8DDD80();
    (*(v123 + 8))(v59, v66);
    v67 = sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920);
    v176 = v64;
    v177 = v67;
    v68 = v141;
    v69 = swift_getWitnessTable();
    v70 = v128;
    sub_23D8DE0C0();
    (*(v126 + 8))(v65, v68);
    v71 = v144;
    sub_23D8DA65C(v143);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v174 = v175;
    v178 = SSActions.title.getter();
    v179 = v72;
    v172 = v69;
    v173 = MEMORY[0x277CDFC48];
    v73 = swift_getWitnessTable();
    sub_23D83CB18();
    v74 = v135;
    sub_23D8DDE10();

    (*(v133 + 8))(v70, v71);
    v75 = sub_23D8DAF50(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    v170 = v73;
    v171 = v75;
    v76 = swift_getWitnessTable();
    v77 = v136;
    sub_23D8361EC(v74, v39, v76);
    v78 = *(v137 + 8);
    v78(v74, v39);
    sub_23D8361EC(v77, v39, v76);
    v79 = v138;
    sub_23D889670(v74, v39, v39);
  }

  else
  {
    v80 = v118;
    sub_23D8DDBE0();
    v81 = v129;
    sub_23D8DE6A0();
    v82 = v121;
    sub_23D8DE0D0();
    (*(v130 + 8))(v81, v131);
    (*(v122 + 8))(v80, v20);
    v83 = v132;
    sub_23D8DD8A0();
    v84 = v120;
    v85 = v147;
    v86 = v148;
    v88 = v145;
    v87 = v146;
    sub_23D8DE0E0();
    (*(v134 + 8))(v83, v86);
    (*(v124 + 8))(v82, v85);
    v178 = v85;
    v179 = v86;
    v180 = v87;
    v181 = v88;
    v89 = swift_getOpaqueTypeConformance2();
    v90 = v119;
    v91 = v125;
    sub_23D8DDD80();
    (*(v123 + 8))(v84, v91);
    v92 = sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920);
    v160 = v89;
    v161 = v92;
    v93 = v141;
    v94 = swift_getWitnessTable();
    v95 = v128;
    sub_23D8DE0C0();
    (*(v126 + 8))(v90, v93);
    sub_23D8DA65C(v143);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v174 = v175;
    v178 = SSActions.title.getter();
    v179 = v96;
    v158 = v94;
    v159 = MEMORY[0x277CDFC48];
    v97 = v144;
    v98 = swift_getWitnessTable();
    sub_23D83CB18();
    v74 = v135;
    sub_23D8DDE10();

    (*(v133 + 8))(v95, v97);
    v99 = sub_23D8DAF50(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    v156 = v98;
    v157 = v99;
    v100 = swift_getWitnessTable();
    v77 = v136;
    sub_23D8361EC(v74, v39, v100);
    v78 = *(v137 + 8);
    v78(v74, v39);
    sub_23D8361EC(v77, v39, v100);
    v79 = v138;
    sub_23D889578(v74, v39);
  }

  v78(v74, v39);
  v78(v77, v39);
  v178 = v147;
  v179 = v148;
  v180 = v146;
  v181 = v145;
  v101 = swift_getOpaqueTypeConformance2();
  v102 = sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920);
  v168 = v101;
  v169 = v102;
  v166 = swift_getWitnessTable();
  v167 = MEMORY[0x277CDFC48];
  v103 = swift_getWitnessTable();
  v104 = sub_23D8DAF50(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
  v164 = v103;
  v165 = v104;
  v162 = swift_getWitnessTable();
  v163 = v162;
  v105 = v140;
  v106 = swift_getWitnessTable();
  sub_23D8361EC(v79, v105, v106);
  return (*(v139 + 8))(v79, v105);
}

id sub_23D8D78EC(uint64_t a1)
{
  v2 = type metadata accessor for SSHUDView();
  if ([*(a1 + *(v2 + 60) + 8) isSpeaking])
  {
    v3 = *(a1 + *(v2 + 60) + 8);

    return [v3 pauseButtonPressed];
  }

  else
  {
    [*(a1 + *(v2 + 60) + 8) playButtonPressedForBundleID:0 sceneID:0 rootAccessibilityElementIdentifier:0];
    v5 = sub_23D8DE670();
    MEMORY[0x28223BE20](v5);
    sub_23D8DCE60();

    sub_23D8D3338(v2);
    return sub_23D8D3438(v2);
  }
}

uint64_t sub_23D8D7A2C()
{
  v0 = type metadata accessor for SSHUDView();
  sub_23D8DA65C(v0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

uint64_t sub_23D8D7AB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  [*(a1 + *(type metadata accessor for SSHUDView() + 60) + 8) isSpeaking];
  result = sub_23D8DE2C0();
  *a2 = result;
  return result;
}

uint64_t sub_23D8D7B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DE2C0();
  *a1 = result;
  return result;
}

uint64_t sub_23D8D7B80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DE2C0();
  *a1 = result;
  return result;
}

uint64_t sub_23D8D7BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = *(a1 - 8);
  v43 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  v47 = v6;
  v7 = *(a1 + 24);
  v8 = *(a1 + 16);
  v40 = type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v9 = sub_23D8DD020();
  v41 = v9;
  v10 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v46 = v10;
  v45 = sub_23D8D0EF0();
  v58 = v6;
  v59 = &type metadata for SSActions;
  v60 = v9;
  v61 = v10;
  v62 = v45;
  v11 = sub_23D8DE4E0();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v38 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v42 = &v36 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v51 = *(v44 - 8);
  v16 = *(v51 + 64);
  v17 = MEMORY[0x28223BE20](v44);
  v50 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = &v36 - v19;
  v52 = v8;
  v53 = v7;
  v54 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05B8, &unk_23D8E5D90);
  sub_23D835AD0(&qword_27E2F05C0, &qword_27E2F05B8, &unk_23D8E5D90);
  sub_23D8DE520();
  v58 = &unk_284FD4DE0;
  swift_getKeyPath();
  v20 = v39;
  (*(v4 + 16))(v39, v2, a1);
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = v7;
  (*(v4 + 32))(v22 + v21, v20, a1);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-");
  v57[3] = WitnessTable;
  v57[4] = v24;
  v35 = swift_getWitnessTable();
  v25 = v38;
  sub_23D8DE4C0();
  v57[2] = v35;
  v26 = swift_getWitnessTable();
  v27 = v42;
  sub_23D8361EC(v25, v11, v26);
  v28 = v48;
  v29 = *(v48 + 8);
  v29(v25, v11);
  v30 = v50;
  v31 = v37;
  v32 = v44;
  (*(v51 + 16))(v50, v37, v44);
  v58 = v30;
  (*(v28 + 16))(v25, v27, v11);
  v59 = v25;
  v57[0] = v32;
  v57[1] = v11;
  v55 = sub_23D8DB2D0();
  v56 = v26;
  sub_23D8CF87C(&v58, 2uLL, v57);
  v29(v27, v11);
  v33 = *(v51 + 8);
  v33(v31, v32);
  v29(v25, v11);
  return (v33)(v50, v32);
}

uint64_t sub_23D8D81D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23D8DA65C(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v3 = sub_23D8DE2C0();
  v4 = sub_23D8DE260();
  sub_23D8DDB60();
  sub_23D8DDAC0();
  v5 = sub_23D8DDB70();

  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t sub_23D8D8404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v13[1] = v0;
  v13[2] = &type metadata for SSActions;
  v13[3] = sub_23D8DD020();
  v13[4] = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  v13[5] = sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v1 = sub_23D8DE6D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = type metadata accessor for SSHUDView();
  sub_23D8D7BC0(v9, v6);
  WitnessTable = swift_getWitnessTable();
  sub_23D8361EC(v6, v1, WitnessTable);
  v11 = *(v2 + 8);
  v11(v6, v1);
  sub_23D8361EC(v8, v1, WitnessTable);
  return (v11)(v8, v1);
}

double sub_23D8D865C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SSHUDView();
  sub_23D8D81D0(v2, &v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_23D8D86A8(uint64_t a1)
{
  v2 = type metadata accessor for SSHUDView();
  sub_23D8DA65C(v2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v6[0] = v6[1];
  v3 = *(a1 + *(v2 + 60) + 8);
  v4 = swift_unknownObjectRetain();
  sub_23D8DA51C(v4, v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_23D8D8788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  [*(a1 + *(type metadata accessor for SSHUDView() + 60) + 8) speakingRateAsMultiplier];
  *&v3 = v3;
  localizedNameFor(speed:)(*&v3);
  sub_23D83CB18();
  result = sub_23D8DDCB0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_23D8D8808()
{
  sub_23D8DD480();
  v0 = type metadata accessor for SSHUDView();
  sub_23D8D0144(v0);
  swift_getKeyPath();
  sub_23D8DAF50(&qword_27E2ED008, type metadata accessor for SSStore);
  sub_23D8DD130();

  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = v6;
  *(v2 + 49) = 0;

  sub_23D8DE480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05D0, &qword_23D8E5DB8);
  sub_23D8D0EF0();
  sub_23D8DB458();
  return sub_23D8DE3B0();
}

uint64_t sub_23D8D8A20()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0488, &qword_23D8E5AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05F0, &qword_23D8E5DC8);
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  sub_23D8D0EF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F05E0, &qword_23D8E5DC0);
  sub_23D835AD0(&qword_27E2F05E8, &qword_27E2F05E0, &qword_23D8E5DC0);
  swift_getOpaqueTypeConformance2();
  return sub_23D8DE4C0();
}

uint64_t sub_23D8D8B98(_BYTE *a1)
{
  v2 = sub_23D8DD910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05E0, &qword_23D8E5DC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  LOBYTE(a1) = *a1;
  *v10 = sub_23D8DD420();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05F8, &unk_23D8E5DD0);
  sub_23D8D8D5C(a1, &v10[*(v11 + 44)]);
  sub_23D8DD900();
  sub_23D835AD0(&qword_27E2F05E8, &qword_27E2F05E0, &qword_23D8E5DC0);
  sub_23D8DDEB0();
  (*(v3 + 8))(v6, v2);
  return sub_23D83C6E4(v10, &qword_27E2F05E0, &qword_23D8E5DC0);
}

uint64_t sub_23D8D8D5C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF758, &qword_23D8E3F98);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v24 = a1;
  v22 = SSActions.title.getter();
  v23 = v11;
  sub_23D83CB18();
  v12 = sub_23D8DDCB0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v22 = sub_23D8DE2C0();
  sub_23D8DDE40();

  sub_23D83C67C(v10, v8, &qword_27E2EF758, &qword_23D8E3F98);
  *a2 = v12;
  *(a2 + 8) = v14;
  v16 &= 1u;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0600, &qword_23D8E5DE0);
  sub_23D83C67C(v8, a2 + *(v19 + 48), &qword_27E2EF758, &qword_23D8E3F98);
  sub_23D834028(v12, v14, v16);

  sub_23D83C6E4(v10, &qword_27E2EF758, &qword_23D8E3F98);
  sub_23D83C6E4(v8, &qword_27E2EF758, &qword_23D8E3F98);
  sub_23D83CB6C(v12, v14, v16);
}

uint64_t sub_23D8D9094(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v16) = *a1;
  v6 = type metadata accessor for SSHUDView();
  v7 = *(a2 + *(v6 + 60) + 8);
  swift_unknownObjectRetain();
  sub_23D8B4290(&v16, a4, &v21);
  sub_23D8DA65C(v6);
  type metadata accessor for SSMoreMenuRow();
  type metadata accessor for SSStore();

  swift_getWitnessTable();
  sub_23D8DAF50(&qword_27E2ED008, type metadata accessor for SSStore);
  sub_23D8DDDF0();

  swift_unknownObjectRelease();

  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v8 = sub_23D8DD020();
  sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-");
  WitnessTable = swift_getWitnessTable();
  sub_23D8361EC(&v11, v8, WitnessTable);

  swift_unknownObjectRelease();

  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  sub_23D8361EC(&v16, v8, WitnessTable);

  swift_unknownObjectRelease();
}

uint64_t sub_23D8D934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SSHUDView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - v14;
  if (sub_23D8D01EC(v7) < 1)
  {
    result = sub_23D8D01EC(v7);
    if (result <= 0)
    {
      v20 = sub_23D8D0298(v7);
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
      sub_23D870938(0, 0, v15, &unk_23D8E5CE0, v23);

      sub_23D8D02EC(0, v7);
      return sub_23D8D0240(8, v7);
    }
  }

  else
  {
    v16 = (a2 + *(v7 + 48));
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

uint64_t sub_23D8D9600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_23D8D9624, 0, 0);
}

uint64_t sub_23D8D9624()
{
  *(v0 + 40) = sub_23D8DE9D0();
  *(v0 + 48) = sub_23D8DE9C0();
  v2 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8D96BC, v2, v1);
}

uint64_t sub_23D8D96BC()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = type metadata accessor for SSHUDView();
  v0[7] = sub_23D8DA65C(v5);

  return MEMORY[0x2822009F8](sub_23D896738, 0, 0);
}

uint64_t getEnumTagSinglePayload for SSActions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SSActions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23D8D98B0(uint64_t a1)
{
  sub_23D8D9C14(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    sub_23D83475C();
    if (v3 <= 0x3F)
    {
      sub_23D851F1C(319, &qword_27E2EF310);
      if (v4 <= 0x3F)
      {
        sub_23D851F1C(319, &qword_27E2ED018);
        if (v5 <= 0x3F)
        {
          sub_23D851F1C(319, &qword_27E2EF318);
          if (v6 <= 0x3F)
          {
            sub_23D897548();
            if (v7 <= 0x3F)
            {
              sub_23D8D9C14(319, &qword_27E2EF320, sub_23D8D9C78, MEMORY[0x277CE10B8]);
              if (v8 <= 0x3F)
              {
                v9 = *(a1 + 16);
                v10 = *(*(a1 + 24) + 8);
                sub_23D8DCF20();
                if (v11 <= 0x3F)
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

uint64_t sub_23D8D9A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D8D9B50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

void sub_23D8D9C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23D8D9C78()
{
  result = qword_27E2EF328;
  if (!qword_27E2EF328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2EF328);
  }

  return result;
}

uint64_t sub_23D8D9CC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8);
  sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  swift_getWitnessTable();
  sub_23D8DDBF0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD8B0();
  swift_getOpaqueTypeConformance2();
  sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE410();
  type metadata accessor for AXSpeakStopType(255);
  swift_getWitnessTable();
  sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D8D0F44();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD090();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D8DAF50(&qword_27E2EE3D0, MEMORY[0x277CDFC08]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED8B8, &qword_23D8E2B80);
  sub_23D8DD020();
  swift_getOpaqueTypeConformance2();
  sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE30, &qword_23D8E4AD0);
  sub_23D8DD020();
  sub_23D8DD020();
  swift_getOpaqueTypeConformance2();
  sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D8DE430();
  sub_23D8DD020();
  swift_getWitnessTable();
  sub_23D8D4888();
  return swift_getWitnessTable();
}

id sub_23D8DA51C(id result, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(v2)
  {
    case 5:
      v3 = &selRef_stopButtonPressed;
      break;
    case 2:
      v4 = result;
      result = [result respondsToSelector_];
      if ((result & 1) == 0)
      {
        return result;
      }

      v3 = &selRef_viewInReaderButtonPressed;
      v5 = [v4 respondsToSelector_];
      result = v4;
      if ((v5 & 1) == 0)
      {
        return result;
      }

      break;
    case 1:
      v3 = &selRef_speakUnderFingerButtonPressed;
      break;
    default:
      return result;
  }

  v6 = *v3;

  return [result v6];
}

uint64_t sub_23D8DA5D4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v5 = *a1;
  v6 = a4[1];
  v7 = *(a4 + 16);
  v8 = *a5;
  v12 = *a4;
  v13 = v6;
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0608, &qword_23D8E5DE8);
  MEMORY[0x23EEF05A0](&v11);
  if (v5 == v11)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  v11 = v9;
  return sub_23D8DE460();
}

uint64_t sub_23D8DA65C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  if (!*v2)
  {
    v4 = v2[1];
    type metadata accessor for SSStore();
    sub_23D8DAF50(&qword_27E2ED008, type metadata accessor for SSStore);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D8DA700(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SSHUDView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_23D8D339C(a1, a2, v8);
}

uint64_t sub_23D8DA7CC(uint64_t (*a1)(void))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for SSHUDView() - 8) + 80);
  return a1();
}

uint64_t sub_23D8DA834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_23D8D3604(a1, a2);
}

uint64_t sub_23D8DA83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_23D8D3E1C(a1, v2[4], a2);
}

uint64_t sub_23D8DA848(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for SSHUDView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_23D8D934C(a1, v6, v3, v4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8DA8EC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for SSHUDView();
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

  v11 = *&v8[v3[9]];

  v12 = *&v8[v3[10] + 8];

  v13 = *&v8[v3[11] + 8];

  v14 = *&v8[v3[12] + 8];

  v15 = &v8[v3[13]];

  v16 = *(v15 + 1);

  v17 = &v8[v3[14]];

  v18 = *(v17 + 1);

  v19 = *&v8[v3[15] + 8];
  swift_unknownObjectRelease();
  v20 = *&v8[v3[16] + 8];

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23D8DAAA0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for SSHUDView() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23D835CB4;

  return sub_23D8D9600(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_23D8DABAC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D8D7A2C();
}

unint64_t sub_23D8DABE4()
{
  result = qword_27E2F0540;
  if (!qword_27E2F0540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
    sub_23D8DAC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0540);
  }

  return result;
}

unint64_t sub_23D8DAC70()
{
  result = qword_27E2F0548;
  if (!qword_27E2F0548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0550, &qword_23D8E5D30);
    sub_23D8DAD28(&qword_27E2F0558, &qword_27E2F0560, &qword_23D8E5D38, sub_23D8DADD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0548);
  }

  return result;
}

uint64_t sub_23D8DAD28(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D8DADD8()
{
  result = qword_27E2F0568;
  if (!qword_27E2F0568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0570, &qword_23D8E5D40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0578, &qword_23D8E5D48);
    sub_23D8DD080();
    sub_23D835AD0(&qword_27E2F0580, &qword_27E2F0578, &qword_23D8E5D48);
    sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0568);
  }

  return result;
}

uint64_t sub_23D8DAF50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D8DAF98()
{
  result = qword_27E2F0590;
  if (!qword_27E2F0590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0598, &qword_23D8E5D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F05A0, &qword_23D8E5D58);
    sub_23D8DD080();
    sub_23D835AD0(&qword_27E2F05A8, &qword_27E2F05A0, &qword_23D8E5D58);
    sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0590);
  }

  return result;
}

unint64_t sub_23D8DB110()
{
  result = qword_27E2F05B0;
  if (!qword_27E2F05B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
    sub_23D8DAD28(&qword_27E2F0588, &qword_27E2F0470, &qword_23D8E5AC8, sub_23D8DAF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F05B0);
  }

  return result;
}

uint64_t sub_23D8DB1C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D8D8404();
}

double sub_23D8DB200@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_23D8D865C(a1);
}

uint64_t sub_23D8DB228()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D8D8808();
}

uint64_t sub_23D8DB234(_BYTE *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for SSHUDView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_23D8D9094(a1, v6, v3, v4);
}

unint64_t sub_23D8DB2D0()
{
  result = qword_27E2F05C8;
  if (!qword_27E2F05C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
    sub_23D835AD0(&qword_27E2F05C0, &qword_27E2F05B8, &unk_23D8E5D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F05C8);
  }

  return result;
}

uint64_t sub_23D8DB394()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0608, &qword_23D8E5DE8);
  return MEMORY[0x23EEF05A0](v1);
}

uint64_t objectdestroy_55Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[5];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_23D8DB458()
{
  result = qword_27E2F05D8;
  if (!qword_27E2F05D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F05D0, &qword_23D8E5DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F05E0, &qword_23D8E5DC0);
    sub_23D835AD0(&qword_27E2F05E8, &qword_27E2F05E0, &qword_23D8E5DC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F05D8);
  }

  return result;
}

uint64_t sub_23D8DB570(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SSHUDView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_23D8DB608@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23D8D7AB8(v1[4], a1);
}

uint64_t sub_23D8DB614()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D8D7A2C();
}

uint64_t objectdestroyTm_13()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SSHUDView();
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

  v10 = *(v7 + v3[9]);

  v11 = *(v7 + v3[10] + 8);

  v12 = *(v7 + v3[11] + 8);

  v13 = *(v7 + v3[12] + 8);

  v14 = v7 + v3[13];

  v15 = *(v14 + 1);

  v16 = v7 + v3[14];

  v17 = *(v16 + 1);

  v18 = *(v7 + v3[15] + 8);
  swift_unknownObjectRelease();
  v19 = *(v7 + v3[16] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

id sub_23D8DB7FC(const char **a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for SSHUDView();
  v6 = *(v1 + *(v5 + 60) + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + 8);
  v7 = *a1;

  return [v6 v7];
}

uint64_t sub_23D8DB87C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23D8D8788(v1[4], a1);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E2F3C48 == -1)
  {
    if (qword_27E2F3C50)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27E2F3C50)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E2F3C40 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27E2F3C34 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E2F3C34 >= a3)
      {
        result = dword_27E2F3C38 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27E2F3C50;
  if (qword_27E2F3C50)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E2F3C50 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEF1040](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E2F3C34, &dword_27E2F3C38);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}