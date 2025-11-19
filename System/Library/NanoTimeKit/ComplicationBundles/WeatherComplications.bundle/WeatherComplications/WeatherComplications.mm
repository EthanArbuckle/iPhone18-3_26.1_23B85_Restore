__n128 sub_23BD94EA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23BD94EB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BD94ED0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23BD94F20@<X0>(void *a1@<X8>)
{
  v49 = a1;
  v1 = sub_23BDC6010();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - v5;
  sub_23BD9628C(&qword_27E1C5670, &qword_23BDC8A00);
  v6 = sub_23BD9628C(&qword_27E1C5678, &qword_23BDC8A08);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v44 = 4 * v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23BDC88C0;
  v10 = v9 + v8;
  v11 = *(v6 + 48);
  *(v9 + v8) = 2;
  v12 = objc_opt_self();
  v13 = [v12 milesPerHour];
  sub_23BD96820(0, &qword_27E1C5680, 0x277CCAE40);
  sub_23BDC5F40();
  v14 = *(v6 + 48);
  *(v10 + v7) = 0;
  v15 = [v12 milesPerHour];
  sub_23BDC5F40();
  v16 = *(v6 + 48);
  *(v10 + 2 * v7) = 15;
  v17 = [v12 milesPerHour];
  sub_23BDC5F40();
  v18 = *(v6 + 48);
  *(v10 + 3 * v7) = 2;
  v19 = [v12 milesPerHour];
  sub_23BDC5F40();
  v20 = *(v6 + 48);
  *(v10 + v44) = 0;
  v21 = [v12 milesPerHour];
  v22 = sub_23BDC5F40();
  v53 = 0;
  v54 = MEMORY[0x277D84F90];
  v23 = v45;
  sub_23BD9D208(v22);
  v24 = v46;
  sub_23BDC5F80();
  v50 = &v53;
  v51 = v9;
  v52 = &v54;
  sub_23BDC5FD0();
  swift_setDeallocating();
  v25 = *(v9 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v48;
  v27 = *(v47 + 8);
  v27(v24, v48);
  v27(v23, v26);
  v28 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
  sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
  v29 = sub_23BDC6770();
  v30 = [v28 initWithEntries_];

  v31 = type metadata accessor for WindRectangularTemplateModel();
  v32 = v49;
  v33 = v49 + v31[5];
  sub_23BD9D208(v31);
  v34 = type metadata accessor for WindTemplateModel();
  v35 = &v33[v34[5]];
  sub_23BD9D20C(v34);
  v36 = v34[7];
  v37 = [v12 milesPerHour];
  sub_23BDC5F40();
  v38 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v39 = (*(*(v38 - 8) + 56))(&v33[v36], 0, 1, v38);
  v33[v34[6]] = 2;
  v40 = v32 + v31[6];
  v41 = sub_23BD9D208(v39);
  v42 = v32 + v31[7];
  sub_23BD9D20C(v41);

  *v32 = v30;
  return result;
}

uint64_t sub_23BD953D8(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v7 = (*(*(sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v34 - v8;
  v10 = sub_23BDC6080();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23BD9628C(&qword_27E1C5678, &qword_23BDC8A08);
  v15 = *(v36 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20]();
  v37 = &v34 - v18;
  v19 = *a2;
  if (!*a2)
  {
    v25 = 0;
    v23 = 0;
    goto LABEL_6;
  }

  v35 = a4;
  a4 = a2;
  if (qword_27E1C55D8 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v20 = qword_27E1C5B78;
    v21 = sub_23BDC5FA0();
    v22 = [v20 stringFromDate_];

    v23 = sub_23BDC66F0();
    v25 = v24;

    v19 = *a4;
    if ((*a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v15 = v17;
      sub_23BDC6790();
      goto LABEL_14;
    }

    a2 = a4;
    a4 = v35;
LABEL_6:
    if (v19 >= *(a3 + 16))
    {
      goto LABEL_17;
    }

    v34 = v23;
    v35 = a2;
    v26 = v37;
    sub_23BD96394(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19, v37, &qword_27E1C5678, &qword_23BDC8A08);
    v27 = *v26;
    sub_23BDC6490();
    v28 = *(v36 + 48);
    sub_23BDC6070();
    sub_23BDC5F20();
    (*(v11 + 8))(v14, v10);
    v41 = v38;
    sub_23BD96334(&v41);
    v40 = v39;
    sub_23BD96334(&v40);
    sub_23BDC60B0();
    a3 = sub_23BDC60C0();
    v11 = *(a3 - 8);
    (*(v11 + 56))(v9, 0, 1, a3);
    v15 = sub_23BDC66C0();

    v10 = sub_23BDC66C0();

    if (v25)
    {
      v14 = sub_23BDC66C0();
    }

    else
    {
      v14 = 0;
    }

    if ((*(v11 + 48))(v9, 1, a3) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_23BDC60A0();
      v30 = *(v11 + 8);
      v11 += 8;
      v30(v9, a3);
    }

    v9 = *(v36 + 48);
    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v15 middleString:v10 bottomString:v14 isDay:1 timeZone:v29];

    v31 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v32 = (*(*(v31 - 8) + 8))(&v9[v37], v31);
    MEMORY[0x23EEBD070](v32);
    v17 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_14:
    result = sub_23BDC67A0();
    if (!__OFADD__(*v35, 1))
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  ++*v35;
  return result;
}

uint64_t sub_23BD958D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23BDC6010();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_23BD95950@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23BD95980(uint64_t a1)
{
  result = sub_23BD968B0(&unk_27E1C5650, type metadata accessor for WindRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for WindRectangularTemplateModel()
{
  result = qword_27E1C56A8;
  if (!qword_27E1C56A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BD95A2C(uint64_t a1, id *a2)
{
  result = sub_23BDC66D0();
  *a2 = 0;
  return result;
}

uint64_t sub_23BD95AA4(uint64_t a1, id *a2)
{
  v3 = sub_23BDC66E0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23BD95B24@<X0>(uint64_t *a1@<X8>)
{
  sub_23BDC66F0();
  v2 = sub_23BDC66C0();

  *a1 = v2;
  return result;
}

uint64_t sub_23BD95B68()
{
  v1 = *v0;
  v2 = sub_23BDC66F0();
  v3 = MEMORY[0x23EEBD060](v2);

  return v3;
}

uint64_t sub_23BD95BA4()
{
  v1 = *v0;
  sub_23BDC66F0();
  sub_23BDC6710();
}

uint64_t sub_23BD95BF8()
{
  v1 = *v0;
  sub_23BDC66F0();
  sub_23BDC69A0();
  sub_23BDC6710();
  v2 = sub_23BDC69B0();

  return v2;
}

uint64_t sub_23BD95C6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23BDC66F0();
  v6 = v5;
  if (v4 == sub_23BDC66F0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23BDC6980();
  }

  return v9 & 1;
}

uint64_t sub_23BD95CF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23BDC66C0();

  *a2 = v5;
  return result;
}

uint64_t sub_23BD95D3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23BDC66F0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23BD95D68(uint64_t a1)
{
  v2 = sub_23BD968B0(&qword_27E1C56F0, type metadata accessor for Key);
  v3 = sub_23BD968B0(&qword_27E1C56F8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BD95E24(uint64_t a1, uint64_t a2)
{
  v28[1] = a1;
  v3 = sub_23BDC6080();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  v11 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v28 - v13;
  v15 = sub_23BD9628C(&qword_27E1C5668, &qword_23BDC89F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v28 - v17;
  v19 = sub_23BDC64C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BD96394(a2, v14, &qword_27E1C5660, &qword_23BDC89F0);
  v24 = sub_23BDC6280();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    sub_23BD962D4(v14, &qword_27E1C5660, &qword_23BDC89F0);
    (*(v20 + 56))(v18, 1, 1, v19);
    sub_23BDC6180();
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      sub_23BD962D4(v18, &qword_27E1C5668, &qword_23BDC89F8);
    }
  }

  else
  {
    sub_23BDC6260();
    (*(v25 + 8))(v14, v24);
    (*(v20 + 56))(v18, 0, 1, v19);
    (*(v20 + 32))(v23, v18, v19);
  }

  sub_23BDC64A0();
  v26 = sub_23BDC6490();
  sub_23BDC64B0();
  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v31 + 8))(v6, v32);
  (*(v29 + 8))(v10, v30);
  (*(v20 + 8))(v23, v19);
  v36 = v33;
  sub_23BD96334(&v36);
  v35 = v34;
  sub_23BD96334(&v35);
  return v26;
}

uint64_t sub_23BD9628C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23BD962D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23BD9628C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23BD96394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23BD9628C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_23BD96410(uint64_t a1, unint64_t *a2)
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

uint64_t sub_23BD96470(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for WindTemplateModel();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_23BD965F0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for WindTemplateModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23BD9675C()
{
  result = sub_23BD96820(319, &qword_27E1C56B8, 0x277D2C7B8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WindTemplateModel();
    if (v2 <= 0x3F)
    {
      result = sub_23BDC6010();
      if (v3 <= 0x3F)
      {
        result = sub_23BDC6590();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BD96820(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23BD968B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BD968F8(uint64_t a1)
{
  result = sub_23BD968B0(&unk_27E1C5D40, type metadata accessor for WindRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BD96950(uint64_t a1)
{
  result = sub_23BD968B0(&qword_27E1C56D0, type metadata accessor for WindRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BD96A80()
{
  type metadata accessor for UVTemplateFormatter();
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_23BDC65F0();
  strcpy((v0 + 24), "sun.max.fill");
  *(v0 + 37) = 0;
  *(v0 + 38) = -5120;
  v2 = sub_23BD97B6C(&qword_27E1C5768, v1, type metadata accessor for UVTemplateFormatter);
  *&xmmword_27E1C7750 = v0;
  *(&xmmword_27E1C7750 + 1) = v2;
}

id sub_23BD96B30(uint64_t a1)
{
  v3 = type metadata accessor for UVTemplateModel();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BD97CA8(a1, v6);
  v7 = sub_23BDBA204(&v6[v3[7]], v6[v3[5] + 8]);
  v8 = [objc_opt_self() systemCyanColor];
  [v7 setTintColor_];

  sub_23BD97D0C(v6);
  v9 = (*(**(v1 + 16) + 88))(*(a1 + v3[5]), *(a1 + v3[5] + 8), 2);
  v11 = v10;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v12 = qword_27E1C5B70;
  v13 = sub_23BDC66C0();
  v14 = sub_23BDC66C0();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23BDC8C40;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_23BD97C54();
  *(v16 + 32) = v9;
  *(v16 + 40) = v11;
  sub_23BDC6700();

  v17 = sub_23BDC66C0();

  v18 = objc_opt_self();
  v19 = [v18 textProviderWithText_];

  v20 = (a1 + v3[6]);
  if (v20[1])
  {
    v21 = *v20;
    v22 = v20[1];
  }

  v23 = sub_23BDC66C0();

  v24 = [v18 textProviderWithText_];

  v25 = [objc_allocWithZone(MEMORY[0x277CBBA08]) initWithHeaderTextProvider:v7 body1TextProvider:v19 body2TextProvider:v24];
  return v25;
}

id sub_23BD96E84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for UVTemplateModel();
  (*(*v3 + 88))(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8), 1);
  v5 = sub_23BDC66C0();

  v6 = [objc_opt_self() textProviderWithText_];

  v7 = v6;
  v8 = sub_23BD97994(a1);
  v9 = [objc_allocWithZone(MEMORY[0x277CBBA90]) initWithTextProvider:v7 imageProvider:v8];

  return v9;
}

id sub_23BD96F78(uint64_t a1)
{
  v3 = type metadata accessor for UVTemplateModel();
  v4 = (a1 + *(v3 + 20));
  if ((v4[1] & 1) != 0 || (v5 = (a1 + *(v3 + 24)), (v6 = v5[1]) == 0))
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v24 = qword_27E1C5B70;
    v25 = sub_23BDC66C0();
    v26 = sub_23BDC66C0();
    v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

    v21 = sub_23BDC66F0();
    v23 = v28;
  }

  else
  {
    v7 = *v4;
    v8 = *v5;
    v9 = qword_27E1C55D0;
    v10 = v5[1];

    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_27E1C5B70;
    v12 = sub_23BDC66C0();
    v13 = sub_23BDC66C0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23BDC8C50;
    v16 = (*(**(v1 + 16) + 88))(v7, 0, 0);
    v18 = v17;
    v19 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v20 = sub_23BD97C54();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 64) = v20;
    *(v15 + 72) = v8;
    *(v15 + 80) = v6;
    v21 = sub_23BDC6700();
    v23 = v22;
  }

  v33 = v23;
  sub_23BD97C00();
  sub_23BDC6860();

  v29 = sub_23BDC66C0();

  v30 = [objc_opt_self() textProviderWithText_];

  v31 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v31;
}

id sub_23BD972FC(uint64_t a1, Class *a2, Class *a3)
{
  v4 = sub_23BD97658(a1);
  v34 = v5;
  v7 = v6;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v8 = qword_27E1C5B70;
  v9 = sub_23BDC66C0();
  v10 = sub_23BDC66C0();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = sub_23BDC66F0();
  v14 = v13;

  v15 = v12 == 1702195828 && v14 == 0xE400000000000000;
  if (!v15 && (sub_23BDC6980() & 1) == 0)
  {
    if (v12 == 0x65736C6166 && v14 == 0xE500000000000000)
    {
    }

    else
    {
      v31 = sub_23BDC6980();

      if ((v31 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v22 = v34;
    v29 = [objc_allocWithZone(*a3) initWithGaugeProvider:v4 bottomTextProvider:v7 centerTextProvider:v34];
    goto LABEL_12;
  }

LABEL_9:
  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  v18 = sub_23BDC66C0();
  v19 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v20 = sub_23BD9C038();
  [v19 setTintColor_];

  v21 = qword_27E1C5B70;
  v22 = v19;
  v23 = v21;
  v24 = sub_23BDC66C0();
  v25 = sub_23BDC66C0();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  if (!v26)
  {
    sub_23BDC66F0();
    v26 = sub_23BDC66C0();
  }

  [v22 setAccessibilityLabel_];

  v27 = objc_allocWithZone(*a2);
  v28 = v4;
  v29 = [v27 initWithGaugeProvider:v28 bottomImageProvider:v22 centerTextProvider:v34];

  v7 = v28;
  v4 = v22;
LABEL_12:

  return v29;
}

id sub_23BD97658(uint64_t a1)
{
  v3 = type metadata accessor for UVTemplateModel();
  v4 = *(a1 + v3[10]);
  v5 = a1 + v3[5];
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = 0.0;
  if ((v7 & 1) == 0)
  {
    v9 = *(a1 + v3[9]);
    v8 = (v6 / v9) > 0.0 ? v6 / v9 : 0.0;
    if (v8 >= 1.0)
    {
      v8 = 1.0;
    }
  }

  sub_23BD97BB4();
  v10 = sub_23BDC6770();
  v11 = objc_opt_self();
  *&v12 = v8;
  v13 = [v11 gaugeProviderWithStyle:0 gaugeColors:v10 gaugeColorLocations:0 fillFraction:v12];

  (*(**(v1 + 16) + 88))(v6, v7, 1);
  v14 = sub_23BDC66C0();

  v15 = objc_opt_self();
  [v15 textProviderWithText_];

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v16 = qword_27E1C5B70;
  v17 = sub_23BDC66C0();
  v18 = sub_23BDC66C0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  if (!v19)
  {
    sub_23BDC66F0();
    v19 = sub_23BDC66C0();
  }

  v20 = [v15 textProviderWithText_];

  v21 = sub_23BD9C038();
  [v20 setTintColor_];

  return v13;
}

uint64_t sub_23BD978E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_23BD97994(uint64_t a1)
{
  v2 = sub_23BDC66C0();
  v3 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v4 = *(type metadata accessor for UVTemplateModel() + 32);
  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = *(a1 + v4);
  }

  else
  {
    v6 = [objc_opt_self() systemCyanColor];
  }

  v7 = v3;
  v8 = v5;
  [v7 setTintColor_];
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v9 = qword_27E1C5B70;
  v10 = sub_23BDC66C0();
  v11 = sub_23BDC66C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_23BDC66F0();
    v12 = sub_23BDC66C0();
  }

  [v7 setAccessibilityLabel_];

  return v7;
}

uint64_t sub_23BD97B6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BD97BB4()
{
  result = qword_27E1C5770;
  if (!qword_27E1C5770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5770);
  }

  return result;
}

unint64_t sub_23BD97C00()
{
  result = qword_27E1C57A0;
  if (!qword_27E1C57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C57A0);
  }

  return result;
}

unint64_t sub_23BD97C54()
{
  result = qword_27E1C5890;
  if (!qword_27E1C5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5890);
  }

  return result;
}

uint64_t sub_23BD97CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVTemplateModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BD97D0C(uint64_t a1)
{
  v2 = type metadata accessor for UVTemplateModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BD97D9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23BD97DF8()
{
  type metadata accessor for ConditionRectangularTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BD99AA8(&qword_27E1C58E0, v1, type metadata accessor for ConditionRectangularTemplateFormatter);
  *&xmmword_27E1C7760 = v0;
  *(&xmmword_27E1C7760 + 1) = result;
  return result;
}

unint64_t sub_23BD97E68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_23BD9628C(&unk_27E1C58C0, &qword_23BDC8D70);
    v2 = sub_23BDC6960();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a1 + 56) + 8 * v16);
        sub_23BD96820(0, &qword_27E1C56B8, 0x277D2C7B8);

        v21 = v20;
        sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
        swift_dynamicCast();
        result = sub_23BDB13C4(v19, v18);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v27;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v19;
          v23[1] = v18;
          *(v2[7] + 8 * result) = v27;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23BD980A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_23BD9628C(&qword_27E1C58E8, &qword_23BDC8D88);
    v1 = sub_23BDC6960();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    sub_23BD96820(0, &qword_27E1C58F0, 0x277D74300);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_23BD99AF0((v28 + 8), v26);
    sub_23BD99AF0(v26, v28);
    v16 = *(v1 + 40);
    sub_23BDC66F0();
    sub_23BDC69A0();
    sub_23BDC6710();
    v17 = sub_23BDC69B0();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_23BD99AF0(v28, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_23BD983CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BD9628C(&qword_27E1C58D8, &qword_23BDC8D80);
    v3 = sub_23BDC6960();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23BDB13C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_23BD984E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BD9628C(&qword_27E1C58D0, &qword_23BDC8D78);
    v3 = sub_23BDC6960();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23BDB13C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_23BD985E4(void **a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  *&v148 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v147 = &v136 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v136 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v136 - v11;
  v13 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v149 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v136 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v136 - v20;
  v22 = type metadata accessor for ConditionTemplateModel();
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *sub_23BDC65E0();
  v146 = type metadata accessor for ConditionRectangularTemplateModel();
  v27 = *(v146 + 20);
  v152 = a1;
  sub_23BD99928(a1 + v27, v25);
  sub_23BD9998C(&v25[v22[8]], v12);
  v28 = v14[6];
  v29 = v28(v12, 1, v13);
  v153 = v26;
  v151 = v25;
  if (v29 == 1)
  {

LABEL_7:
    sub_23BD962D4(v12, &qword_27E1C5790, &unk_23BDC92E0);
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v37 = qword_27E1C5B70;
    v38 = sub_23BDC66C0();
    v39 = sub_23BDC66C0();
    v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

    v41 = sub_23BDC66F0();
    v43 = v42;

    v156 = v41;
    v157 = v43;
    sub_23BD97C00();
    sub_23BDC6860();

    v44 = qword_27E1C5B70;
    v45 = sub_23BDC66C0();
    v46 = sub_23BDC66C0();
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    v48 = sub_23BDC66F0();
    v50 = v49;

    v154 = v48;
    v155 = v50;
    sub_23BDC6860();

    v51 = sub_23BDC66C0();

    v52 = sub_23BDC66C0();

    v53 = [objc_opt_self() textProviderWithText:v51 shortText:v52];

    v54 = objc_opt_self();
    v55 = v53;
    v56 = [v54 grayColor];
    [v55 setTintColor_];

    goto LABEL_10;
  }

  v30 = v12;
  v31 = v14[4];
  v31(v21, v30, v13);
  sub_23BD9998C(&v25[v22[10]], v10);
  if (v28(v10, 1, v13) == 1)
  {
    v32 = v14[1];

    v32(v21, v13);
    v12 = v10;
    goto LABEL_7;
  }

  v144 = v21;
  v145 = v14;
  v33 = v150;
  v31(v150, v10, v13);
  v34 = &v25[v22[9]];
  v35 = v147;
  sub_23BD9998C(v34, v147);
  if (v28(v35, 1, v13) == 1)
  {
    v36 = v145[1];

    v36(v33, v13);
    v36(v144, v13);
    v12 = v35;
    goto LABEL_7;
  }

  v31(v149, v35, v13);
  v69 = v145;
  v70 = v148;
  v142 = v145[2];
  v138 = v145 + 2;
  v142(v148, v144, v13);
  v141 = v69[7];
  (v141)(v70, 0, 1, v13);
  v71 = *(*v153 + 152);
  v72 = *v153 + 152;

  v140 = v71;
  v139 = v72;
  v73 = v71(v70, 1, 0);
  v75 = v74;
  sub_23BD962D4(v70, &qword_27E1C5790, &unk_23BDC92E0);
  v76 = v152 + *(v146 + 28);
  v77 = v76[*(sub_23BDC6590() + 28)] == 1;
  v147 = v13;
  if (v77)
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v78 = qword_27E1C5B70;
    v79 = sub_23BDC66C0();
    v80 = sub_23BDC66C0();
    v81 = [v78 localizedStringForKey:v79 value:0 table:v80];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_23BDC8C40;
    *(v82 + 56) = MEMORY[0x277D837D0];
    *(v82 + 64) = sub_23BD97C54();
    *(v82 + 32) = v73;
    *(v82 + 40) = v75;

    sub_23BDC6700();

    v83 = sub_23BDC66C0();

    v84 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
    v85 = NWCGlyphPrefixedTextProvider();
  }

  else
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v86 = qword_27E1C5B70;
    v87 = sub_23BDC66C0();
    v88 = sub_23BDC66C0();
    v89 = [v86 localizedStringForKey:v87 value:0 table:v88];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_23BDC8C40;
    *(v90 + 56) = MEMORY[0x277D837D0];
    *(v90 + 64) = sub_23BD97C54();
    *(v90 + 32) = v73;
    *(v90 + 40) = v75;

    sub_23BDC6700();

    v84 = sub_23BDC66C0();

    v85 = [objc_opt_self() textProviderWithText_];
  }

  v91 = sub_23BDC66C0();

  [v85 setAccessibilityLabel_];

  v136 = objc_opt_self();
  v92 = [v136 systemCyanColor];
  v143 = v85;
  [v85 setTintColor_];

  v93 = v148;
  v94 = v147;
  v95 = v142;
  v142(v148, v150, v147);
  v96 = v141;
  (v141)(v93, 0, 1, v94);
  v97 = v140;
  v146 = v140(v93, 1, 0);
  v137 = v98;
  sub_23BD962D4(v93, &qword_27E1C5790, &unk_23BDC92E0);
  v95(v93, v149, v94);
  (v96)(v93, 0, 1, v94);
  v99 = v97(v93, 1, 0);
  v101 = v100;
  sub_23BD962D4(v93, &qword_27E1C5790, &unk_23BDC92E0);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v102 = qword_27E1C5B70;
  v103 = sub_23BDC66C0();
  v141 = "uviFormatter";
  v104 = sub_23BDC66C0();
  v105 = [v102 localizedStringForKey:v103 value:0 table:v104];

  sub_23BDC66F0();
  v142 = sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v106 = swift_allocObject();
  v148 = xmmword_23BDC8C50;
  *(v106 + 16) = xmmword_23BDC8C50;
  v107 = MEMORY[0x277D837D0];
  *(v106 + 56) = MEMORY[0x277D837D0];
  v108 = sub_23BD97C54();
  v109 = v137;
  *(v106 + 32) = v146;
  *(v106 + 40) = v109;
  *(v106 + 96) = v107;
  *(v106 + 104) = v108;
  *(v106 + 64) = v108;
  *(v106 + 72) = v99;
  *(v106 + 80) = v101;

  sub_23BDC6700();

  v110 = sub_23BDC66C0();

  v111 = [objc_opt_self() textProviderWithText_];

  v112 = v111;
  v140 = v99;
  v113 = v112;
  v114 = [v136 whiteColor];
  [v113 setTintColor_];

  v115 = qword_27E1C5B70;
  v116 = sub_23BDC66C0();
  v117 = sub_23BDC66C0();
  v118 = [v115 localizedStringForKey:v116 value:0 table:v117];

  sub_23BDC66F0();
  v119 = swift_allocObject();
  *(v119 + 16) = v148;
  v120 = MEMORY[0x277D837D0];
  *(v119 + 56) = MEMORY[0x277D837D0];
  *(v119 + 64) = v108;
  *(v119 + 32) = v146;
  *(v119 + 40) = v109;
  *(v119 + 96) = v120;
  *(v119 + 104) = v108;
  *(v119 + 72) = v140;
  *(v119 + 80) = v101;
  sub_23BDC6700();

  v121 = sub_23BDC66C0();

  [v113 setAccessibilityLabel_];

  v122 = qword_27E1C5B70;
  v123 = sub_23BDC66C0();
  v124 = sub_23BDC66C0();
  v125 = [v122 localizedStringForKey:v123 value:0 table:v124];

  if (!v125)
  {
    sub_23BDC66F0();
    v125 = sub_23BDC66C0();
  }

  v126 = sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  inited = swift_initStackObject();
  *(inited + 16) = v148;
  *(inited + 56) = sub_23BD96820(0, &unk_27E1C58A0, 0x277CBBBA0);
  *(inited + 64) = sub_23BD99A58(&unk_27E1C5BB0, &unk_27E1C58A0, 0x277CBBBA0);
  v128 = v143;
  *(inited + 32) = v143;
  *(inited + 96) = v126;
  *(inited + 104) = sub_23BD99A58(&unk_27E1C58B0, &qword_27E1C5D30, 0x277CBBB88);
  *(inited + 72) = v113;
  v129 = v113;
  v130 = v128;
  v131 = sub_23BDC69C0();
  swift_setDeallocating();
  v132 = *(inited + 16);
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v133 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v125 arguments:v131];

  v134 = v145[1];
  v135 = v147;
  v134(v149, v147);
  v134(v150, v135);
  v134(v144, v135);
  v55 = v133;
LABEL_10:
  sub_23BD96820(0, &qword_27E1C57A8, 0x277D2C7A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  v59 = *v152;
  sub_23BD9628C(&unk_27E1C57B0, qword_23BDC9790);
  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_23BDC8C40;
  v61 = *MEMORY[0x277D2C790];
  *(v60 + 32) = sub_23BDC66F0();
  *(v60 + 40) = v62;
  *(v60 + 48) = v59;
  v63 = v59;
  v64 = sub_23BD984E0(v60);
  swift_setDeallocating();
  sub_23BD962D4(v60 + 32, &unk_27E1C5D20, qword_23BDC8D50);
  sub_23BD97E68(v64);

  sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
  v65 = sub_23BDC6670();

  [v58 setMetadata_];

  v66 = [objc_allocWithZone(MEMORY[0x277CBB9B0]) initWithTextProvider:v55 imageProvider:v58];
  v67 = sub_23BDB1D54();

  sub_23BD999FC(v151);
  return v67;
}

uint64_t sub_23BD99928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionTemplateModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BD9998C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BD999FC(uint64_t a1)
{
  v2 = type metadata accessor for ConditionTemplateModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BD99A58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23BD96820(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BD99AA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_23BD99AF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23BD99B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BD9628C(&qword_27E1C58F8, &qword_23BDC8D90);
    v3 = sub_23BDC6960();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23BDB143C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_23BD99BF8()
{
  v1 = (v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter);
  if (*(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter))
  {
    v2 = v1[1];
    v3 = *(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter);
  }

  else
  {
    if (qword_27E1C55E0 != -1)
    {
      swift_once();
      v6 = *v1;
    }

    v3 = qword_27E1C7790;
    v4 = *algn_27E1C7798;
    *v1 = qword_27E1C7790;
    v1[1] = v4;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

char *sub_23BD99D04(void *a1, uint64_t a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLocationCache;
  if (qword_27E1C55B0 != -1)
  {
    swift_once();
  }

  *&v3[v8] = qword_27E1C5900;

  sub_23BDC6640();
  sub_23BDC6640();
  *&v3[OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpFamilies] = &unk_284E8CEA0;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ChanceRainDataSource(0);
  v9 = objc_msgSendSuper2(&v15, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v10 = qword_27E1C55F8;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v14 = xmmword_27E1C77C0;
  swift_unknownObjectRetain();

  v12 = *&v11[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter];
  *&v11[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v14;

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_23BD99F30()
{
  sub_23BD9628C(&qword_27E1C5968, &unk_23BDC8E20);
  v0 = *(sub_23BDC63A0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_23BDC8C50;
  sub_23BDC6390();
  sub_23BDC6380();
  sub_23BD9B810();
  sub_23BD9628C(&qword_27E1C5978, &qword_23BDC9520);
  sub_23BD9B868();
  return sub_23BDC6880();
}

uint64_t sub_23BD9A054@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BDC6010();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 family];
  sub_23BDC6000();
  LOBYTE(v8) = sub_23BD9A8F0(v8);
  (*(v4 + 8))(v7, v3);
  v9 = sub_23BDC6650();
  v10 = &OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLogger;
  if ((v8 & 1) == 0)
  {
    v10 = &OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_logger;
  }

  return (*(*(v9 - 8) + 16))(a1, &v1[*v10], v9);
}

uint64_t sub_23BD9A198()
{
  if ([v0 family] == 11)
  {
    return sub_23BD99BF8();
  }

  v2 = *&v0[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter];
  v3 = *&v0[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter + 8];
  return swift_unknownObjectRetain();
}

uint64_t sub_23BD9A2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a2;
  v54 = a6;
  v52 = a5;
  v8 = sub_23BDC63A0();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v48 - v20;
  v51 = sub_23BDC6010();
  v22 = *(v51 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v51);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v48 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v48 - v30;
  if (sub_23BD9A8F0(a1))
  {
    sub_23BD96394(a4, v17, &qword_27E1C5960, &qword_23BDC8F50);
    v32 = sub_23BDC6240();
    if ((*(*(v32 - 8) + 48))(v17, 1, v32) == 1)
    {
      sub_23BD962D4(v17, &qword_27E1C5960, &qword_23BDC8F50);
      v33 = v51;
      (*(v22 + 56))(v21, 1, 1, v51);
      sub_23BDC6000();
      if ((*(v22 + 48))(v21, 1, v33) != 1)
      {
        sub_23BD962D4(v21, &qword_27E1C5958, &unk_23BDC8E10);
      }
    }

    else
    {
      sub_23BD9628C(&qword_27E1C5968, &unk_23BDC8E20);
      v35 = v49;
      v36 = *(v49 + 72);
      v37 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_23BDC8C50;
      sub_23BDC6390();
      sub_23BDC6380();
      v55 = v38;
      sub_23BD9B810();
      sub_23BD9628C(&qword_27E1C5978, &qword_23BDC9520);
      sub_23BD9B868();
      v39 = v48;
      v40 = v50;
      sub_23BDC6880();
      sub_23BDC5F80();
      (*(v35 + 8))(v39, v40);
      sub_23BD962D4(v17, &qword_27E1C5960, &qword_23BDC8F50);
      v33 = v51;
      (*(v22 + 56))(v21, 0, 1, v51);
      (*(v22 + 32))(v31, v21, v33);
    }

    sub_23BDC5FE0();
  }

  else
  {
    sub_23BD96394(a4, v15, &qword_27E1C5960, &qword_23BDC8F50);
    v34 = sub_23BDC6240();
    if ((*(*(v34 - 8) + 48))(v15, 1, v34) == 1)
    {
      sub_23BD962D4(v15, &qword_27E1C5960, &qword_23BDC8F50);
      sub_23BDC6000();
      v33 = v51;
    }

    else
    {
      sub_23BD9628C(&qword_27E1C5968, &unk_23BDC8E20);
      v41 = v49;
      v42 = *(v49 + 72);
      v43 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_23BDC8C50;
      sub_23BDC6390();
      sub_23BDC6380();
      v55 = v44;
      sub_23BD9B810();
      sub_23BD9628C(&qword_27E1C5978, &qword_23BDC9520);
      sub_23BD9B868();
      v45 = v48;
      v46 = v50;
      sub_23BDC6880();
      sub_23BDC5F80();
      (*(v41 + 8))(v45, v46);
      sub_23BD962D4(v15, &qword_27E1C5960, &qword_23BDC8F50);
      v33 = v51;
      (*(v22 + 32))(v29, v26, v51);
    }

    sub_23BDC5FD0();
    v31 = v29;
  }

  return (*(v22 + 8))(v31, v33);
}

BOOL sub_23BD9A8F0(uint64_t a1)
{
  v3 = sub_23BDC62A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BD9628C(&qword_27E1C5988, &qword_23BDC8E30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  v12 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - v14;
  v16 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v54 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpFamilies);
  v26 = *(v25 + 16);
  v27 = (v25 + 32);
  do
  {
    if (!v26)
    {
      return 0;
    }

    v28 = *v27++;
    --v26;
  }

  while (v28 != a1);
  v58 = v4;
  v59 = v22;
  sub_23BD96394(v1 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v15, &qword_27E1C5960, &qword_23BDC8F50);
  v29 = sub_23BDC6240();
  v30 = 1;
  v31 = v1;
  if (!(*(*(v29 - 8) + 48))(v15, 1, v29))
  {
    sub_23BDC6230();
    v32 = sub_23BD9628C(&qword_27E1C5990, &unk_23BDC8E38);
    if (!(*(*(v32 - 8) + 48))(v11, 1, v32))
    {
      sub_23BDC6530();
      sub_23BDC6290();
      (*(v58 + 8))(v7, v3);
      v30 = 0;
    }

    sub_23BD962D4(v11, &qword_27E1C5988, &qword_23BDC8E30);
  }

  sub_23BD962D4(v15, &qword_27E1C5960, &qword_23BDC8F50);
  v33 = sub_23BDC6010();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v24, v30, 1, v33);
  v35 = OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location;
  v36 = (v1 + *(sub_23BDC6590() + 32) + v35);
  v37 = *v36;
  v38 = v36[1];
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_23BDC67D0();
  MEMORY[0x23EEBD040](44, 0xE100000000000000);
  sub_23BDC67D0();
  v40 = v60;
  v39 = v61;
  sub_23BD96394(v24, v21, &qword_27E1C5958, &unk_23BDC8E10);

  v41 = sub_23BDC6630();
  v42 = sub_23BDC6800();

  if (os_log_type_enabled(v41, v42))
  {
    v56 = v42;
    v57 = v40;
    v58 = v1;
    v43 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v60 = v55;
    *v43 = 136315395;
    v44 = v59;
    sub_23BD96394(v21, v59, &qword_27E1C5958, &unk_23BDC8E10);
    if ((*(v34 + 48))(v44, 1, v33) == 1)
    {
      sub_23BD962D4(v44, &qword_27E1C5958, &unk_23BDC8E10);
      v45 = 0xE300000000000000;
      v46 = 7104878;
    }

    else
    {
      v46 = sub_23BDC5F60();
      v45 = v48;
      (*(v34 + 8))(v44, v33);
    }

    sub_23BD962D4(v21, &qword_27E1C5958, &unk_23BDC8E10);
    v49 = sub_23BDB4C84(v46, v45, &v60);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2081;
    v50 = sub_23BDB4C84(v57, v39, &v60);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_23BD93000, v41, v56, "nhpDate: %s, coordinate: %{private}s", v43, 0x16u);
    v51 = v55;
    swift_arrayDestroy();
    MEMORY[0x23EEBD7D0](v51, -1, -1);
    MEMORY[0x23EEBD7D0](v43, -1, -1);

    v31 = v58;
  }

  else
  {

    sub_23BD962D4(v21, &qword_27E1C5958, &unk_23BDC8E10);
  }

  v52 = *(v31 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLocationCache);
  v47 = sub_23BD9B344(v24, v37, v38);
  sub_23BD962D4(v24, &qword_27E1C5958, &unk_23BDC8E10);
  return v47;
}

uint64_t sub_23BD9B040()
{
  v1 = *(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLocationCache);

  v3 = OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLogger;
  v4 = sub_23BDC6650();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_logger, v4);
  v6 = *(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpFamilies);
}

id sub_23BD9B108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChanceRainDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BD9B234()
{
  result = sub_23BDC6650();
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

uint64_t sub_23BD9B2EC()
{
  v0 = type metadata accessor for NHPLocationCache(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  result = sub_23BDC5F70();
  qword_27E1C5900 = v3;
  return result;
}

BOOL sub_23BD9B344(uint64_t a1, double a2, double a3)
{
  v7 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_23BDC6010();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  if ((*(v3 + 32) & 1) != 0 || (*(v3 + 16) == a2 ? (v22 = *(v3 + 24) == a3) : (v22 = 0), !v22))
  {
    *(v3 + 16) = a2;
    *(v3 + 24) = a3;
    *(v3 + 32) = 0;
    sub_23BDC5F70();
    v23 = OBJC_IVAR____TtC20WeatherComplicationsP33_C744A1176000CEBEC10BC3DB63BD29F816NHPLocationCache_lastNHPDate;
    swift_beginAccess();
    (*(v12 + 40))(v3 + v23, v21, v11);
    swift_endAccess();
  }

  sub_23BD96394(a1, v10, &qword_27E1C5958, &unk_23BDC8E10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_23BD962D4(v10, &qword_27E1C5958, &unk_23BDC8E10);
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    v24 = OBJC_IVAR____TtC20WeatherComplicationsP33_C744A1176000CEBEC10BC3DB63BD29F816NHPLocationCache_lastNHPDate;
    swift_beginAccess();
    (*(v12 + 24))(v3 + v24, v19, v11);
    swift_endAccess();
    (*(v12 + 8))(v19, v11);
  }

  sub_23BDC6000();
  v25 = OBJC_IVAR____TtC20WeatherComplicationsP33_C744A1176000CEBEC10BC3DB63BD29F816NHPLocationCache_lastNHPDate;
  swift_beginAccess();
  (*(v12 + 16))(v16, v3 + v25, v11);
  sub_23BDC5F90();
  v27 = v26;
  v28 = *(v12 + 8);
  v28(v16, v11);
  v28(v21, v11);
  return v27 < 86400.0;
}

uint64_t sub_23BD9B678()
{
  v1 = OBJC_IVAR____TtC20WeatherComplicationsP33_C744A1176000CEBEC10BC3DB63BD29F816NHPLocationCache_lastNHPDate;
  v2 = sub_23BDC6010();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23BD9B73C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BD9B774()
{
  result = sub_23BDC6010();
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

unint64_t sub_23BD9B810()
{
  result = qword_27E1C5970;
  if (!qword_27E1C5970)
  {
    sub_23BDC63A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5970);
  }

  return result;
}

unint64_t sub_23BD9B868()
{
  result = qword_27E1C5980;
  if (!qword_27E1C5980)
  {
    sub_23BD9B8CC(&qword_27E1C5978, &qword_23BDC9520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5980);
  }

  return result;
}

uint64_t sub_23BD9B8CC(uint64_t *a1, uint64_t *a2)
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

void sub_23BD9B914(char *a1, uint64_t a2)
{
  v4 = sub_23BDC6010();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BDC6650();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 family];
  sub_23BDC6000();
  LOBYTE(v14) = sub_23BD9A8F0(v14);
  (*(v5 + 8))(v8, v4);
  v15 = &OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLogger;
  if ((v14 & 1) == 0)
  {
    v15 = &OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_logger;
  }

  (*(v10 + 16))(v13, &a1[*v15], v9);
  v16 = sub_23BDC6630();
  v17 = sub_23BDC6810();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23BD93000, v16, v17, "Migrating to widget.", v18, 2u);
    MEMORY[0x23EEBD7D0](v18, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v19 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v20 = sub_23BDC66C0();
  v21 = sub_23BDC66C0();
  v22 = sub_23BDC66C0();
  v23 = [v19 initWithExtensionBundleIdentifier:v20 containerBundleIdentifier:v21 kind:v22 intent:0];

  (*(a2 + 16))(a2, v23);
}

uint64_t sub_23BD9BC0C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BDC6010();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = [objc_opt_self() complicationDate];
  if (v11)
  {
    v12 = v11;
    sub_23BDC5FF0();

    v13 = *(v3 + 32);
    v13(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    return (v13)(a1, v10, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
    sub_23BDC6000();
    result = (*(v3 + 48))(v10, 1, v2);
    if (result != 1)
    {
      return sub_23BD962D4(v10, &qword_27E1C5958, &unk_23BDC8E10);
    }
  }

  return result;
}

uint64_t sub_23BD9BE08()
{
  v0 = sub_23BDC6040();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BDC60C0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27E1C5B70;
  v8 = sub_23BDC66C0();
  v9 = sub_23BDC66C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  sub_23BDC66F0();
  sub_23BDC60B0();
  v11 = sub_23BDC6030();
  MEMORY[0x23EEBC930](v11);
  (*(v1 + 8))(v4, v0);
  return sub_23BDC6570();
}

id sub_23BD9C038()
{
  v1 = type metadata accessor for UVTemplateModel();
  v2 = *(v0 + v1[10]);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v19 = *(v0 + v1[10]);
    }

    v20 = v1;
    v21 = sub_23BDC6930();
    v1 = v20;
    if (v21 < 2)
    {
      goto LABEL_4;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_4:
    v5 = [objc_opt_self() whiteColor];

    return v5;
  }

  v4 = v0 + v1[5];
  if (*(v4 + 8))
  {
    goto LABEL_4;
  }

  v7 = *v4;
  if (v3)
  {
    v9 = v1;
    v8 = sub_23BDC6930();
    v1 = v9;
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v7 / *(v0 + v1[9]);
  v11 = fminf(v10, 1.0);
  v12 = v10 > 0.0;
  v13 = 0.0;
  if (v12)
  {
    v13 = v11;
  }

  v14 = v8 * v13;
  if (COERCE__INT64(fabs(v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v3)
  {
    v15 = sub_23BDC6930();
  }

  else
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_36;
  }

  if (v16 >= (v14 & ~(v14 >> 63)))
  {
    v17 = v14 & ~(v14 >> 63);
  }

  else
  {
    v17 = v15 - 1;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_37:

LABEL_42:
    JUMPOUT(0x23EEBD1D0);
  }

  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = *(v2 + 8 * v17 + 32);

  return v18;
}

uint64_t sub_23BD9C258()
{
  v0 = sub_23BDC64D0();
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];

    sub_23BDC6900();
    v4 = 40;
    do
    {
      v5 = *(v1 + v4);
      sub_23BDC68E0();
      v6 = *(v7 + 16);
      sub_23BDC6910();
      sub_23BDC6920();
      sub_23BDC68F0();
      v4 += 16;
      --v2;
    }

    while (v2);

    return v7;
  }

  return result;
}

uint64_t sub_23BD9C318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_23BD9628C(&qword_27E1C59A0, &unk_23BDC8EB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v55 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v14 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v55 - v16;
  v18 = sub_23BDC6010();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v63 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - v23;
  v58 = type metadata accessor for TemplateData();
  v25 = *(v58 + 20);
  v61 = v19;
  v26 = *(v19 + 16);
  v64 = v18;
  v56 = v26;
  v26(v24, a1, v18);
  v65 = a1;
  sub_23BD96394(a1 + v25, v17, &qword_27E1C5960, &qword_23BDC8F50);
  v27 = sub_23BDC6240();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v17, 1, v27) == 1)
  {
    sub_23BD962D4(v17, &qword_27E1C5960, &qword_23BDC8F50);
    memset(v69, 0, sizeof(v69));
    v70 = 0;
  }

  else
  {
    sub_23BDC6200();
    (*(v28 + 8))(v17, v27);
  }

  sub_23BD96394(v69, v66, &qword_27E1C59A8, &unk_23BDC8EC0);
  v29 = v67;
  v60 = v24;
  if (v67)
  {
    v30 = v68;
    sub_23BD9CCFC(v66, v67);
    (*(v30 + 96))(v29, v30);
    v31 = sub_23BDC6520();
    (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
    sub_23BD9CD40(v66);
  }

  else
  {
    sub_23BD962D4(v66, &qword_27E1C59A8, &unk_23BDC8EC0);
    v31 = sub_23BDC6520();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  }

  sub_23BD96394(v13, v11, &qword_27E1C59A0, &unk_23BDC8EB0);
  sub_23BDC6520();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v11, 1, v31) == 1)
  {
    sub_23BD962D4(v11, &qword_27E1C59A0, &unk_23BDC8EB0);
    v34 = 0;
  }

  else
  {
    sub_23BDC6510();
    (*(v32 + 8))(v11, v31);
    sub_23BDC64E0();
    sub_23BD97BB4();
    v34 = sub_23BDC6840();
    v35 = v34;
  }

  v56(v63, v65, v64);
  v36 = v57;
  sub_23BD96394(v13, v57, &qword_27E1C59A0, &unk_23BDC8EB0);
  v37 = v33(v36, 1, v31);
  if (v37 == 1)
  {
    sub_23BD962D4(v36, &qword_27E1C59A0, &unk_23BDC8EB0);
    v38 = 0;
  }

  else
  {
    v38 = sub_23BDC6500();
    (*(v32 + 8))(v36, v31);
  }

  v39 = v59;
  sub_23BD96394(v13, v59, &qword_27E1C59A0, &unk_23BDC8EB0);
  if (v33(v39, 1, v31) == 1)
  {
    sub_23BD962D4(v39, &qword_27E1C59A0, &unk_23BDC8EB0);
    v40 = 0;
    v41 = 0xE000000000000000;
  }

  else
  {
    sub_23BDC6510();
    (*(v32 + 8))(v39, v31);
    v40 = sub_23BDC64F0();
    v41 = v42;
  }

  v43 = v37 == 1;
  v44 = *(v58 + 24);
  v45 = type metadata accessor for UVTemplateModel();
  v46 = v65 + v44;
  v47 = v62;
  sub_23BD9CC98(v46, v62 + v45[7]);
  v48 = v61;
  v49 = v64;
  (*(v61 + 32))(v47, v63, v64);
  v50 = v47 + v45[5];
  *v50 = v38;
  *(v50 + 8) = v43;
  v51 = (v47 + v45[6]);
  *v51 = v40;
  v51[1] = v41;
  *(v47 + v45[8]) = v34;
  *(v47 + v45[9]) = 11;
  v52 = v45[10];
  v53 = sub_23BD9C258();

  sub_23BD962D4(v13, &qword_27E1C59A0, &unk_23BDC8EB0);
  sub_23BD962D4(v69, &qword_27E1C59A8, &unk_23BDC8EC0);
  result = (*(v48 + 8))(v60, v49);
  *(v47 + v52) = v53;
  return result;
}

uint64_t sub_23BD9CA14(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  if (v2[1])
  {
    v3 = 0xE200000000000000;
    v4 = 11565;
  }

  else
  {
    v7 = *v2;
    sub_23BD9CD8C();
    v4 = sub_23BDC6870();
    v3 = v5;
  }

  MEMORY[0x23EEBD040](v4, v3);

  MEMORY[0x23EEBD040](41, 0xE100000000000000);
  return 0x3A7865646E497675;
}

uint64_t sub_23BD9CABC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BD9BC0C(a2);
  v4 = sub_23BDC64F0();
  v6 = v5;
  v7 = a2 + a1[7];
  sub_23BD9BE08();
  v8 = [objc_opt_self() orangeColor];
  v9 = a1[6];
  v10 = a2 + a1[5];
  *v10 = 6;
  *(v10 + 8) = 0;
  v11 = (a2 + v9);
  *v11 = v4;
  v11[1] = v6;
  v12 = a1[9];
  *(a2 + a1[8]) = v8;
  *(a2 + v12) = 11;
  v13 = a1[10];
  result = sub_23BD9C258();
  *(a2 + v13) = result;
  return result;
}

unint64_t sub_23BD9CB64(uint64_t a1)
{
  result = sub_23BD9CB8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BD9CB8C()
{
  result = qword_27E1C5998;
  if (!qword_27E1C5998)
  {
    type metadata accessor for UVTemplateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5998);
  }

  return result;
}

uint64_t type metadata accessor for UVTemplateModel()
{
  result = qword_27E1C59B8;
  if (!qword_27E1C59B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BD9CC30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BDC6010();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23BD9CC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BDC6590();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_23BD9CCFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23BD9CD40(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_23BD9CD8C()
{
  result = qword_27E1C59B0;
  if (!qword_27E1C59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C59B0);
  }

  return result;
}

uint64_t sub_23BD9CDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23BD9CF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23BDC6590();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BD9D01C()
{
  sub_23BDC6010();
  if (v0 <= 0x3F)
  {
    sub_23BD9D15C(319, &qword_27E1C59C8);
    if (v1 <= 0x3F)
    {
      sub_23BD9D15C(319, &qword_27E1C59D0);
      if (v2 <= 0x3F)
      {
        sub_23BDC6590();
        if (v3 <= 0x3F)
        {
          sub_23BD9D1A8(319, &qword_27E1C59D8, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23BD9D1A8(319, &qword_27E1C59E0, MEMORY[0x277D83940]);
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

void sub_23BD9D15C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23BDC6850();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_23BD9D1A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_23BD97BB4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_23BD9D210(char *a1, int a2)
{
  LODWORD(v152) = a2;
  v3 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v145 = v118 - v5;
  v6 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v129 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v128 = v118 - v11;
  MEMORY[0x28223BE20](v10);
  v148 = v118 - v12;
  v13 = sub_23BDC61B0();
  v131 = *(v13 - 8);
  v14 = *(v131 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23BD9628C(&qword_27E1C59F8, &qword_23BDC8F40);
  v140 = *(v17 - 8);
  v18 = *(v140 + 64);
  MEMORY[0x28223BE20](v17);
  v130 = (v118 - v19);
  v20 = sub_23BD9628C(&qword_27E1C5A00, &qword_23BDC8F48);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v147 = v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v146 = v118 - v24;
  v153 = sub_23BDC60C0();
  v150 = *(v153 - 8);
  v25 = *(v150 + 64);
  MEMORY[0x28223BE20](v153);
  v149 = v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v127 = v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v118 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v118 - v34;
  v36 = sub_23BDC6010();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v151 = v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = v118 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v118 - v44;
  (*(v37 + 16))(v118 - v44, a1, v36);
  if (v152)
  {
    v155 = MEMORY[0x277D84F90];
    v154 = 1;
    v46 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v46);
    v118[-4] = v142;
    v118[-3] = &v154;
    v118[-2] = &v155;
    sub_23BDC5FD0();
    v47 = *(v37 + 8);
    v47(v43, v36);
    v48 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v49 = sub_23BDC6770();

    v50 = [v48 initWithEntries_];

    v47(v45, v36);
    return v50;
  }

  v143 = v17;
  v144 = v13;
  v152 = type metadata accessor for TemplateData();
  sub_23BD96394(&a1[*(v152 + 20)], v35, &qword_27E1C5960, &qword_23BDC8F50);
  v126 = v35;
  sub_23BD96394(v35, v33, &qword_27E1C5960, &qword_23BDC8F50);
  v51 = sub_23BDC6240();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v122 = v52 + 48;
  v121 = v53;
  v54 = v53(v33, 1, v51);
  v55 = MEMORY[0x277D84F90];
  if (v54 == 1)
  {
    sub_23BD962D4(v33, &qword_27E1C5960, &qword_23BDC8F50);
LABEL_38:
    v155 = v55;
    v154 = 1;
    v112 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v112);
    v118[-4] = v142;
    v118[-3] = &v154;
    v118[-2] = &v155;
    sub_23BDC5FD0();
    v113 = *(v37 + 8);
    v113(v43, v36);
    v114 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v115 = sub_23BDC6770();

    v50 = [v114 initWithEntries_];

    sub_23BD962D4(v126, &qword_27E1C5960, &qword_23BDC8F50);
    v113(v45, v36);
    return v50;
  }

  v141 = a1;
  v56 = sub_23BDC61F0();
  v58 = *(v52 + 8);
  v57 = v52 + 8;
  v119 = v58;
  v58(v33, v51);
  if (*(v56 + 16) != 5)
  {

    goto LABEL_38;
  }

  v125 = v56;
  v118[1] = v57;
  v120 = v51;
  v118[0] = v45;
  v155 = v55;
  v59 = v141 + *(v152 + 24);
  v137 = sub_23BDC6590();
  v138 = v59;
  v60 = *(v137 + 24);
  v61 = v150 + 16;
  v136 = *(v150 + 16);
  result = v136(v149, &v59[v60], v153);
  v63 = 0;
  v123 = v131 + 16;
  v64 = v140;
  v140 += 48;
  v141 = (v64 + 56);
  v135 = (v131 + 32);
  v134 = (v61 + 40);
  v133 = (v61 + 32);
  v150 = v61;
  v124 = (v61 - 8);
  v142 = (v37 + 8);
  v132 = (v131 + 8);
  v139 = v36;
  v65 = v147;
  v66 = v148;
  v67 = v144;
  while (1)
  {
    v68 = v143;
    if (v63 == 5)
    {
      v69 = 1;
      v152 = 5;
      goto LABEL_12;
    }

    if ((v63 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v63 >= *(v125 + 16))
    {
      goto LABEL_42;
    }

    v70 = v63 + 1;
    v71 = v131;
    v72 = v125 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v63;
    v73 = *(v143 + 48);
    v74 = v130;
    *v130 = v63;
    (*(v71 + 16))(v74 + v73, v72, v67);
    sub_23BDA1D38(v74, v65, &qword_27E1C59F8, &qword_23BDC8F40);
    v69 = 0;
    v152 = v70;
LABEL_12:
    (*v141)(v65, v69, 1, v68);
    v75 = v146;
    sub_23BDA1D38(v65, v146, &qword_27E1C5A00, &qword_23BDC8F48);
    if ((*v140)(v75, 1, v68) == 1)
    {

      v116 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
      sub_23BDA182C();
      v117 = sub_23BDC6770();

      v50 = [v116 initWithEntries_];

      (*v124)(v149, v153);
      sub_23BD962D4(v126, &qword_27E1C5960, &qword_23BDC8F50);
      (*v142)(v118[0], v36);
      return v50;
    }

    v76 = *v75;
    (*v135)(v16, &v75[*(v68 + 48)], v67);
    sub_23BDC6170();
    if (!v76)
    {
      v83 = v127;
      sub_23BD96394(v126, v127, &qword_27E1C5960, &qword_23BDC8F50);
      v84 = v120;
      v85 = v121(v83, 1, v120);
      v86 = v129;
      v87 = v128;
      if (v85 == 1)
      {
        v88 = v83;
        v89 = &qword_27E1C5960;
        v90 = &qword_23BDC8F50;
        goto LABEL_21;
      }

      sub_23BDC6210();
      v119(v83, v84);
      v91 = sub_23BDC6280();
      v92 = *(v91 - 8);
      if ((*(v92 + 48))(v86, 1, v91) == 1)
      {
        v88 = v86;
        v89 = &qword_27E1C5660;
        v90 = &qword_23BDC89F0;
LABEL_21:
        sub_23BD962D4(v88, v89, v90);
        v93 = sub_23BDC6280();
        (*(*(v93 - 8) + 56))(v87, 1, 1, v93);
      }

      else
      {
        sub_23BDC65D0();
        (*(v92 + 8))(v86, v91);
      }

      sub_23BDA1D38(v87, v66, &qword_27E1C5660, &qword_23BDC89F0);
      v81 = 0;
      goto LABEL_24;
    }

    if (qword_27E1C55B8 != -1)
    {
      swift_once();
    }

    v77 = *(off_27E1C59E8 + 2);
    v78 = sub_23BDC5FA0();
    v79 = [v77 stringFromDate_];

    sub_23BDC66F0();
    v81 = v80;

    v82 = sub_23BDC6280();
    (*(*(v82 - 8) + 56))(v66, 1, 1, v82);
LABEL_24:
    v94 = &v138[*(v137 + 32)];
    v95 = *v94;
    v96 = *(v94 + 1);
    sub_23BDC6820();
    sub_23BD95E24(v16, v66);
    v98 = v97;
    v100 = v99;
    v101 = v16;
    v102 = sub_23BDC6130();
    v103 = v145;
    v104 = v153;
    v136(v145, v149, v153);
    (*v134)(v103, 0, 1, v104);
    if (v98)
    {
      v105 = sub_23BDC66C0();

      v16 = v101;
      if (v100)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v105 = 0;
      v16 = v101;
      if (v100)
      {
LABEL_26:
        v106 = sub_23BDC66C0();

        v65 = v147;
        if (v81)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    v106 = 0;
    v65 = v147;
    if (v81)
    {
LABEL_27:
      v107 = sub_23BDC66C0();

      goto LABEL_31;
    }

LABEL_30:
    v107 = 0;
LABEL_31:
    v108 = v153;
    if ((*v133)(v103, 1, v153) == 1)
    {
      v109 = 0;
    }

    else
    {
      v110 = v103;
      v109 = sub_23BDC60A0();
      (*v124)(v110, v108);
    }

    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v105 middleString:v106 bottomString:v107 isDay:v102 & 1 timeZone:v109];

    MEMORY[0x23EEBD070]();
    if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v111 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    v66 = v148;
    sub_23BD962D4(v148, &qword_27E1C5660, &qword_23BDC89F0);
    v36 = v139;
    (*v142)(v151, v139);
    v67 = v144;
    result = (*v132)(v16, v144);
    v63 = v152;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_23BD9E1D4(char *a1, int a2)
{
  LODWORD(v153) = a2;
  v3 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v146 = v119 - v5;
  v6 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v130 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v129 = v119 - v11;
  MEMORY[0x28223BE20](v10);
  v149 = v119 - v12;
  v13 = sub_23BDC61B0();
  v132 = *(v13 - 8);
  v14 = *(v132 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23BD9628C(&qword_27E1C59F8, &qword_23BDC8F40);
  v141 = *(v17 - 8);
  v18 = *(v141 + 64);
  MEMORY[0x28223BE20](v17);
  v131 = (v119 - v19);
  v20 = sub_23BD9628C(&qword_27E1C5A00, &qword_23BDC8F48);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v148 = v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v147 = v119 - v24;
  v154 = sub_23BDC60C0();
  v151 = *(v154 - 8);
  v25 = *(v151 + 64);
  MEMORY[0x28223BE20](v154);
  v150 = v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v128 = v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v119 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v119 - v34;
  v36 = sub_23BDC6010();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v152 = v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = v119 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v119 - v44;
  (*(v37 + 16))(v119 - v44, a1, v36);
  if (v153)
  {
    v156 = MEMORY[0x277D84F90];
    v155 = 1;
    v46 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v46);
    v119[-4] = v143;
    v119[-3] = &v155;
    v119[-2] = &v156;
    sub_23BDC5FD0();
    v47 = *(v37 + 8);
    v47(v43, v36);
    v48 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v49 = sub_23BDC6770();

    v50 = [v48 initWithEntries_];

    v47(v45, v36);
    return v50;
  }

  v144 = v17;
  v145 = v13;
  v153 = type metadata accessor for TemplateData();
  sub_23BD96394(&a1[*(v153 + 20)], v35, &qword_27E1C5960, &qword_23BDC8F50);
  v127 = v35;
  sub_23BD96394(v35, v33, &qword_27E1C5960, &qword_23BDC8F50);
  v51 = sub_23BDC6240();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v123 = v52 + 48;
  v122 = v53;
  v54 = v53(v33, 1, v51);
  v55 = MEMORY[0x277D84F90];
  if (v54 == 1)
  {
    sub_23BD962D4(v33, &qword_27E1C5960, &qword_23BDC8F50);
LABEL_38:
    v156 = v55;
    v155 = 1;
    v113 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v113);
    v119[-4] = v143;
    v119[-3] = &v155;
    v119[-2] = &v156;
    sub_23BDC5FD0();
    v114 = *(v37 + 8);
    v114(v43, v36);
    v115 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v116 = sub_23BDC6770();

    v50 = [v115 initWithEntries_];

    sub_23BD962D4(v127, &qword_27E1C5960, &qword_23BDC8F50);
    v114(v45, v36);
    return v50;
  }

  v142 = a1;
  v56 = sub_23BDC61F0();
  v58 = *(v52 + 8);
  v57 = v52 + 8;
  v120 = v58;
  v58(v33, v51);
  if (*(v56 + 16) != 5)
  {

    goto LABEL_38;
  }

  v126 = v56;
  v119[1] = v57;
  v121 = v51;
  v119[0] = v45;
  v156 = v55;
  v59 = v142 + *(v153 + 24);
  v138 = sub_23BDC6590();
  v139 = v59;
  v60 = *(v138 + 24);
  v61 = v151 + 16;
  v137 = *(v151 + 16);
  result = v137(v150, &v59[v60], v154);
  v63 = 0;
  v124 = v132 + 16;
  v64 = v141;
  v141 += 48;
  v142 = (v64 + 56);
  v136 = (v132 + 32);
  v135 = (v61 + 40);
  v134 = (v61 + 32);
  v151 = v61;
  v125 = (v61 - 8);
  v143 = (v37 + 8);
  v133 = (v132 + 8);
  v140 = v36;
  v65 = v148;
  v66 = v149;
  v67 = v145;
  while (1)
  {
    v68 = v144;
    if (v63 == 5)
    {
      v69 = 1;
      v153 = 5;
      goto LABEL_12;
    }

    if ((v63 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v63 >= *(v126 + 16))
    {
      goto LABEL_42;
    }

    v70 = v63 + 1;
    v71 = v132;
    v72 = v126 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v63;
    v73 = *(v144 + 48);
    v74 = v131;
    *v131 = v63;
    (*(v71 + 16))(v74 + v73, v72, v67);
    sub_23BDA1D38(v74, v65, &qword_27E1C59F8, &qword_23BDC8F40);
    v69 = 0;
    v153 = v70;
LABEL_12:
    (*v142)(v65, v69, 1, v68);
    v75 = v147;
    sub_23BDA1D38(v65, v147, &qword_27E1C5A00, &qword_23BDC8F48);
    if ((*v141)(v75, 1, v68) == 1)
    {

      v117 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
      sub_23BDA182C();
      v118 = sub_23BDC6770();

      v50 = [v117 initWithEntries_];

      (*v125)(v150, v154);
      sub_23BD962D4(v127, &qword_27E1C5960, &qword_23BDC8F50);
      (*v143)(v119[0], v36);
      return v50;
    }

    v76 = *v75;
    (*v136)(v16, &v75[*(v68 + 48)], v67);
    sub_23BDC6170();
    if (!v76)
    {
      v83 = v128;
      sub_23BD96394(v127, v128, &qword_27E1C5960, &qword_23BDC8F50);
      v84 = v121;
      v85 = v122(v83, 1, v121);
      v86 = v130;
      v87 = v129;
      if (v85 == 1)
      {
        v88 = v83;
        v89 = &qword_27E1C5960;
        v90 = &qword_23BDC8F50;
        goto LABEL_21;
      }

      sub_23BDC6210();
      v120(v83, v84);
      v91 = sub_23BDC6280();
      v92 = *(v91 - 8);
      if ((*(v92 + 48))(v86, 1, v91) == 1)
      {
        v88 = v86;
        v89 = &qword_27E1C5660;
        v90 = &qword_23BDC89F0;
LABEL_21:
        sub_23BD962D4(v88, v89, v90);
        v93 = sub_23BDC6280();
        (*(*(v93 - 8) + 56))(v87, 1, 1, v93);
      }

      else
      {
        sub_23BDC65D0();
        (*(v92 + 8))(v86, v91);
      }

      sub_23BDA1D38(v87, v66, &qword_27E1C5660, &qword_23BDC89F0);
      v81 = 0;
      goto LABEL_24;
    }

    if (qword_27E1C55B8 != -1)
    {
      swift_once();
    }

    v77 = *(off_27E1C59E8 + 2);
    v78 = sub_23BDC5FA0();
    v79 = [v77 stringFromDate_];

    sub_23BDC66F0();
    v81 = v80;

    v82 = sub_23BDC6280();
    (*(*(v82 - 8) + 56))(v66, 1, 1, v82);
LABEL_24:
    v94 = &v139[*(v138 + 32)];
    v95 = *v94;
    v96 = *(v94 + 1);
    v97 = sub_23BDC6820();
    sub_23BDAF330(v16, v66, v97 & 1);
    v99 = v98;
    v101 = v100;
    v102 = v16;
    v103 = sub_23BDC6130();
    v104 = v146;
    v105 = v154;
    v137(v146, v150, v154);
    (*v135)(v104, 0, 1, v105);
    if (v99)
    {
      v106 = sub_23BDC66C0();

      v16 = v102;
      if (v101)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v106 = 0;
      v16 = v102;
      if (v101)
      {
LABEL_26:
        v107 = sub_23BDC66C0();

        v65 = v148;
        if (v81)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    v107 = 0;
    v65 = v148;
    if (v81)
    {
LABEL_27:
      v108 = sub_23BDC66C0();

      goto LABEL_31;
    }

LABEL_30:
    v108 = 0;
LABEL_31:
    v109 = v154;
    if ((*v134)(v104, 1, v154) == 1)
    {
      v110 = 0;
    }

    else
    {
      v111 = v104;
      v110 = sub_23BDC60A0();
      (*v125)(v111, v109);
    }

    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v106 middleString:v107 bottomString:v108 isDay:v103 & 1 timeZone:v110];

    MEMORY[0x23EEBD070]();
    if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v112 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    v66 = v149;
    sub_23BD962D4(v149, &qword_27E1C5660, &qword_23BDC89F0);
    v36 = v140;
    (*v143)(v152, v140);
    v67 = v145;
    result = (*v133)(v16, v145);
    v63 = v153;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_23BD9F19C(void (**a1)(char *, char *, uint64_t), char a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v149 = v121 - v6;
  v7 = sub_23BD9628C(&qword_27E1C5A20, &qword_23BDC8F68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v148 = v121 - v9;
  v10 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v124 = v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v130 = v121 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v121 - v16;
  v152 = sub_23BDC61B0();
  v132 = *(v152 - 8);
  v18 = *(v132 + 64);
  MEMORY[0x28223BE20](v152);
  v160 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23BD9628C(&qword_27E1C59F8, &qword_23BDC8F40);
  v156 = *(v20 - 8);
  v21 = *(v156 + 64);
  MEMORY[0x28223BE20](v20);
  v131 = (v121 - v22);
  v23 = sub_23BD9628C(&qword_27E1C5A00, &qword_23BDC8F48);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v151 = v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v150 = v121 - v27;
  v159 = sub_23BDC60C0();
  v154 = *(v159 - 8);
  v28 = *(v154 + 64);
  MEMORY[0x28223BE20](v159);
  v153 = v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v129 = v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v121 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v121 - v37;
  v39 = sub_23BDC6010();
  v40 = *(v39 - 8);
  v41 = v40[8];
  v42 = MEMORY[0x28223BE20](v39);
  v158 = v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = v121 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = v121 - v47;
  (v40[2])(v121 - v47, a1, v39);
  if (a2)
  {
    v162 = MEMORY[0x277D84F90];
    v161 = 1;
    v49 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v49);
    v121[-4] = i;
    v121[-3] = &v161;
    v121[-2] = &v162;
    sub_23BDC5FD0();
    v50 = v40[1];
    v50(v46, v39);
    v51 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v52 = sub_23BDC6770();

    v53 = [v51 initWithEntries_];

    v50(v48, v39);
    return v53;
  }

  v145 = v40;
  v146 = v20;
  v147 = v17;
  v54 = type metadata accessor for TemplateData();
  sub_23BD96394(a1 + *(v54 + 20), v38, &qword_27E1C5960, &qword_23BDC8F50);
  sub_23BD96394(v38, v36, &qword_27E1C5960, &qword_23BDC8F50);
  v55 = sub_23BDC6240();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  v126 = v56 + 48;
  v125 = v57;
  v58 = v57(v36, 1, v55);
  v59 = MEMORY[0x277D84F90];
  if (v58 == 1)
  {
    sub_23BD962D4(v36, &qword_27E1C5960, &qword_23BDC8F50);
LABEL_38:
    v162 = v59;
    v161 = 1;
    v115 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v115);
    v121[-4] = i;
    v121[-3] = &v161;
    v121[-2] = &v162;
    sub_23BDC5FD0();
    v116 = v145[1];
    v116(v46, v39);
    v117 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v118 = sub_23BDC6770();

    v53 = [v117 initWithEntries_];

    sub_23BD962D4(v38, &qword_27E1C5960, &qword_23BDC8F50);
    v116(v48, v39);
    return v53;
  }

  v144 = v54;
  v155 = a1;
  v60 = sub_23BDC61F0();
  v62 = *(v56 + 8);
  v61 = v56 + 8;
  v122 = v62;
  v62(v36, v55);
  if (*(v60 + 16) != 5)
  {

    goto LABEL_38;
  }

  v128 = v60;
  v121[1] = v61;
  v123 = v55;
  v162 = v59;
  v63 = v155 + *(v144 + 24);
  v139 = sub_23BDC6590();
  v64 = *(v139 + 24);
  v66 = v154 + 16;
  v65 = *(v154 + 16);
  v140 = v63;
  v138 = v65;
  result = (v65)(v153, &v63[v64], v159);
  v68 = 0;
  v155 = (v132 + 16);
  v143 = (v156 + 48);
  v144 = v156 + 56;
  v137 = (v132 + 32);
  v136 = (v132 + 56);
  v135 = (v66 + 40);
  v134 = (v66 + 32);
  v154 = v66;
  v127 = (v66 - 8);
  ++v145;
  v133 = (v132 + 8);
  v69 = v146;
  v70 = v147;
  v72 = v151;
  v71 = v152;
  v142 = v38;
  v141 = v48;
LABEL_7:
  if ((v68 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v68 >= *(v128 + 16))
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v73 = v68 + 1;
  v74 = v132;
  v75 = v128 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v68;
  v76 = *(v69 + 48);
  v77 = v131;
  *v131 = v68;
  (*(v74 + 16))(v77 + v76, v75, v71);
  sub_23BDA1D38(v77, v72, &qword_27E1C59F8, &qword_23BDC8F40);
  v78 = 0;
  for (i = v73; ; i = 5)
  {
    (*v144)(v72, v78, 1, v69);
    v79 = v150;
    sub_23BDA1D38(v72, v150, &qword_27E1C5A00, &qword_23BDC8F48);
    if ((*v143)(v79, 1, v69) == 1)
    {
      break;
    }

    v80 = *v79;
    (*v137)(v160, &v79[*(v69 + 48)], v71);
    sub_23BDC6170();
    if (!v80)
    {
      v87 = v129;
      sub_23BD96394(v38, v129, &qword_27E1C5960, &qword_23BDC8F50);
      v88 = v123;
      if (v125(v87, 1, v123) == 1)
      {
        v89 = v87;
        v90 = &qword_27E1C5960;
        v91 = &qword_23BDC8F50;
        goto LABEL_19;
      }

      v92 = v124;
      sub_23BDC6210();
      v93 = v92;
      v122(v87, v88);
      v94 = sub_23BDC6280();
      v95 = *(v94 - 8);
      if ((*(v95 + 48))(v93, 1, v94) == 1)
      {
        v89 = v93;
        v90 = &qword_27E1C5660;
        v91 = &qword_23BDC89F0;
LABEL_19:
        sub_23BD962D4(v89, v90, v91);
        v96 = sub_23BDC6280();
        v97 = v130;
        (*(*(v96 - 8) + 56))(v130, 1, 1, v96);
      }

      else
      {
        v97 = v130;
        sub_23BDC65D0();
        (*(v95 + 8))(v93, v94);
      }

      sub_23BDA1D38(v97, v70, &qword_27E1C5660, &qword_23BDC89F0);
      v156 = 0;
      v85 = 0;
      goto LABEL_22;
    }

    if (qword_27E1C55B8 != -1)
    {
      swift_once();
    }

    v81 = *(off_27E1C59E8 + 2);
    v82 = sub_23BDC5FA0();
    v83 = [v81 stringFromDate_];

    v156 = sub_23BDC66F0();
    v85 = v84;

    v86 = sub_23BDC6280();
    (*(*(v86 - 8) + 56))(v70, 1, 1, v86);
LABEL_22:
    v98 = v39;
    v99 = &v140[*(v139 + 32)];
    v100 = *v99;
    v101 = *(v99 + 1);
    sub_23BDC6820();
    if (qword_27E1C5630 != -1)
    {
      swift_once();
    }

    v102 = off_27E1C5E60;
    v103 = v148;
    (*v155)(v148, v160, v71);
    (*v136)(v103, 0, 1, v71);
    (*(*v102 + 144))(v103);
    sub_23BD962D4(v103, &qword_27E1C5A20, &qword_23BDC8F68);
    sub_23BDC6120();
    v105 = v104;
    v106 = sub_23BDC6130();
    v107 = v149;
    v108 = v159;
    v138(v149, v153, v159);
    (*v135)(v107, 0, 1, v108);
    v109 = sub_23BDC66C0();

    if (v105)
    {
      v110 = sub_23BDC66C0();
    }

    else
    {
      v110 = 0;
    }

    v39 = v98;
    v48 = v141;
    v38 = v142;
    if (v85)
    {
      v111 = sub_23BDC66C0();
    }

    else
    {
      v111 = 0;
    }

    v112 = v159;
    if ((*v134)(v107, 1, v159) == 1)
    {
      v113 = 0;
    }

    else
    {
      v113 = sub_23BDC60A0();
      (*v127)(v107, v112);
    }

    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v109 middleString:v110 bottomString:v111 isDay:v106 & 1 timeZone:v113];

    MEMORY[0x23EEBD070]();
    if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v114 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    v70 = v147;
    sub_23BD962D4(v147, &qword_27E1C5660, &qword_23BDC89F0);
    (*v145)(v158, v39);
    v71 = v152;
    result = (*v133)(v160, v152);
    v69 = v146;
    v72 = v151;
    v68 = i;
    if (i != 5)
    {
      goto LABEL_7;
    }

    v78 = 1;
  }

  v119 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
  sub_23BDA182C();
  v120 = sub_23BDC6770();

  v53 = [v119 initWithEntries_];

  (*v127)(v153, v159);
  sub_23BD962D4(v38, &qword_27E1C5960, &qword_23BDC8F50);
  (*v145)(v48, v39);
  return v53;
}

void sub_23BDA0298()
{
  v1 = [*v0 hourlyEntryModels];
  sub_23BDA182C();
  v2 = sub_23BDC6780();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:

    sub_23BD9628C(&qword_27E1C5A08, &qword_23BDC8F58);
    sub_23BDA1DA0();
    v26 = sub_23BDC66A0();
    v28 = v27;

    MEMORY[0x23EEBD040](v26, v28);

    MEMORY[0x23EEBD040](93, 0xE100000000000000);
    return;
  }

  v3 = sub_23BDC6930();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EEBD1D0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 topString];
      if (v8)
      {
        v9 = v8;
        v10 = sub_23BDC66F0();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      MEMORY[0x23EEBD040](v10, v12);

      MEMORY[0x23EEBD040](8236, 0xE200000000000000);
      v13 = [v7 middleString];
      if (v13)
      {
        v14 = v13;
        v15 = sub_23BDC66F0();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      MEMORY[0x23EEBD040](v15, v17);

      MEMORY[0x23EEBD040](8236, 0xE200000000000000);
      v18 = [v7 bottomString];
      if (v18)
      {
        v19 = v18;
        v20 = sub_23BDC66F0();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      MEMORY[0x23EEBD040](v20, v22);

      MEMORY[0x23EEBD040](41, 0xE100000000000000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_23BDA1B20(0, *(v5 + 2) + 1, 1, v5);
      }

      v24 = *(v5 + 2);
      v23 = *(v5 + 3);
      if (v24 >= v23 >> 1)
      {
        v5 = sub_23BDA1B20((v23 > 1), v24 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v24 + 1;
      v25 = &v5[16 * v24];
      *(v25 + 4) = v29;
      *(v25 + 5) = 0xE100000000000000;
    }

    while (v3 != v4);
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_23BDA05D8@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v26 = type metadata accessor for TemplateData();
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChanceRainTemplateModel();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = sub_23BDC6010();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14);
  sub_23BDAC47C(a1, v13);
  v19 = v13[*(v8 + 32) + 8];
  v20 = sub_23BD9F19C(a1, v19);
  if ((sub_23BDAFFA8() & 1) != 0 && (v19 & 1) == 0)
  {
    sub_23BDA8A4C(v6);
    v21 = v25;
    sub_23BDAC47C(v6, v25);
    sub_23BDA1E90(v6, type metadata accessor for TemplateData);
    sub_23BDA1E90(v13, type metadata accessor for ChanceRainTemplateModel);
    sub_23BDA1E28(v21, v13, type metadata accessor for ChanceRainTemplateModel);
  }

  v22 = *(v26 + 24);
  v23 = type metadata accessor for ChanceRainRectangularTemplateModel();
  sub_23BD9CC98(a1 + v22, a2 + v23[7]);
  *a2 = v20;
  sub_23BDA1E28(v13, a2 + v23[5], type metadata accessor for ChanceRainTemplateModel);
  return (*(v15 + 32))(a2 + v23[6], v18, v14);
}

uint64_t sub_23BDA088C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v62 = type metadata accessor for TemplateData();
  v3 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - v9;
  v11 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v17 = type metadata accessor for ConditionTemplateModel();
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v55 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  v23 = sub_23BDC6010();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v59 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v26;
  v27 = *(v26 + 16);
  v61 = v28;
  v27();
  v64 = a1;
  sub_23BDAD3F4(a1, v22);
  v29 = v17[6];
  sub_23BD96394(&v22[v29], v16, &qword_27E1C59F0, &unk_23BDC8F30);
  v30 = sub_23BDC62F0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v16, 1, v30) == 1)
  {
    sub_23BD962D4(v16, &qword_27E1C59F0, &unk_23BDC8F30);
  }

  else
  {
    v33 = v22[v17[7]];
    sub_23BDC62B0();
    v35 = v34;
    (*(v31 + 8))(v16, v30);
    if (v35)
    {

      sub_23BD96394(&v22[v17[9]], v10, &qword_27E1C5790, &unk_23BDC92E0);
      v36 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
      v37 = (*(*(v36 - 8) + 48))(v10, 1, v36) == 1;
      sub_23BD962D4(v10, &qword_27E1C5790, &unk_23BDC92E0);
      v38 = v37;
      goto LABEL_6;
    }
  }

  v38 = 1;
LABEL_6:
  v39 = sub_23BD9E1D4(v64, v38);
  if (sub_23BDAFFA8())
  {
    v40 = v58;
    sub_23BD96394(&v22[v29], v58, &qword_27E1C59F0, &unk_23BDC8F30);
    if (v32(v40, 1, v30) == 1)
    {
      sub_23BD962D4(v40, &qword_27E1C59F0, &unk_23BDC8F30);
    }

    else
    {
      v41 = v22[v17[7]];
      sub_23BDC62B0();
      v43 = v42;
      (*(v31 + 8))(v40, v30);
      if (v43)
      {

        v44 = v57;
        sub_23BD96394(&v22[v17[9]], v57, &qword_27E1C5790, &unk_23BDC92E0);
        v45 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
        v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
        sub_23BD962D4(v44, &qword_27E1C5790, &unk_23BDC92E0);
        if (v46 != 1)
        {
          v47 = v56;
          sub_23BDA8A4C(v56);
          v48 = v55;
          sub_23BDAD3F4(v47, v55);
          sub_23BDA1E90(v47, type metadata accessor for TemplateData);
          sub_23BDA1E90(v22, type metadata accessor for ConditionTemplateModel);
          sub_23BDA1E28(v48, v22, type metadata accessor for ConditionTemplateModel);
        }
      }
    }
  }

  v49 = *(v62 + 24);
  v50 = type metadata accessor for ConditionRectangularTemplateModel();
  v51 = &v64[v49];
  v52 = v63;
  sub_23BD9CC98(v51, v63 + v50[7]);
  *v52 = v39;
  sub_23BDA1E28(v22, v52 + v50[5], type metadata accessor for ConditionTemplateModel);
  return (*(v60 + 32))(v52 + v50[6], v59, v61);
}

uint64_t sub_23BDA0EB8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = type metadata accessor for TemplateData();
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UVTemplateModel();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = sub_23BDC6010();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14);
  sub_23BD9C318(a1, v13);
  v19 = v13[*(v8 + 28) + 8];
  v20 = sub_23BDA2920(a1, v19);
  if ((sub_23BDAFFA8() & 1) != 0 && (v19 & 1) == 0)
  {
    sub_23BDA8A4C(v6);
    v21 = v25;
    sub_23BD9C318(v6, v25);
    sub_23BDA1E90(v6, type metadata accessor for TemplateData);
    sub_23BDA1E90(v13, type metadata accessor for UVTemplateModel);
    sub_23BDA1E28(v21, v13, type metadata accessor for UVTemplateModel);
  }

  v22 = *(v26 + 24);
  v23 = type metadata accessor for UVRectangularTemplateModel();
  sub_23BD9CC98(&a1[v22], a2 + v23[7]);
  *a2 = v20;
  sub_23BDA1E28(v13, a2 + v23[5], type metadata accessor for UVTemplateModel);
  return (*(v15 + 32))(a2 + v23[6], v18, v14);
}

uint64_t sub_23BDA116C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v47 = type metadata accessor for TemplateData();
  v3 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = type metadata accessor for WindTemplateModel();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  v18 = sub_23BDC6010();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v44 = v21;
  v45 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 16);
  v46 = v23;
  v22();
  sub_23BDA677C(a1, v17);
  v24 = *(v12 + 36);
  sub_23BD96394(&v17[v24], v10, &unk_27E1C5D50, &unk_23BDC8F70);
  v25 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v26 = *(*(v25 - 8) + 48);
  LODWORD(v12) = v26(v10, 1, v25) == 1;
  v27 = v10;
  v28 = a1;
  sub_23BD962D4(v27, &unk_27E1C5D50, &unk_23BDC8F70);
  v29 = sub_23BD9D210(a1, v12);
  if (sub_23BDAFFA8())
  {
    v30 = &v17[v24];
    v31 = v43;
    sub_23BD96394(v30, v43, &unk_27E1C5D50, &unk_23BDC8F70);
    v32 = v26(v31, 1, v25);
    sub_23BD962D4(v31, &unk_27E1C5D50, &unk_23BDC8F70);
    if (v32 != 1)
    {
      v33 = v42;
      sub_23BDA8A4C(v42);
      v34 = v41;
      sub_23BDA677C(v33, v41);
      sub_23BDA1E90(v33, type metadata accessor for TemplateData);
      sub_23BDA1E90(v17, type metadata accessor for WindTemplateModel);
      sub_23BDA1E28(v34, v17, type metadata accessor for WindTemplateModel);
    }
  }

  v35 = *(v47 + 24);
  v36 = type metadata accessor for WindRectangularTemplateModel();
  v37 = &v28[v35];
  v38 = v48;
  sub_23BD9CC98(v37, v48 + v36[7]);
  *v38 = v29;
  sub_23BDA1E28(v17, v38 + v36[5], type metadata accessor for WindTemplateModel);
  return (*(v44 + 32))(v38 + v36[6], v45, v46);
}

uint64_t sub_23BDA1574()
{
  v0 = sub_23BDA15BC();
  type metadata accessor for DateFormatterCache();
  result = swift_allocObject();
  *(result + 16) = v0;
  *(result + 24) = 10;
  off_27E1C59E8 = result;
  return result;
}

id sub_23BDA15BC()
{
  v0 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_23BDC6080();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23BDC6050();
  v10 = sub_23BDC6060();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  v11 = sub_23BDC66C0();
  [v9 setDateFormat_];

  sub_23BDC6090();
  v12 = sub_23BDC60C0();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    v14 = sub_23BDC60A0();
    (*(v13 + 8))(v3, v12);
  }

  [v9 setTimeZone_];

  return v9;
}

unint64_t sub_23BDA182C()
{
  result = qword_27E1C5688;
  if (!qword_27E1C5688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5688);
  }

  return result;
}

uint64_t sub_23BDA1878(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v6 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  if (qword_27E1C55B8 != -1)
  {
    swift_once();
  }

  v10 = *(off_27E1C59E8 + 2);
  v11 = sub_23BDC5FA0();
  v12 = [v10 stringFromDate_];

  sub_23BDC66F0();
  v14 = v13;

  if (*a3 == 1)
  {

    v14 = 0;
    *a3 = 0;
  }

  sub_23BDC60B0();
  v15 = sub_23BDC60C0();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v9, 0, 1, v15);
  if (v14)
  {
    v17 = sub_23BDC66C0();
  }

  else
  {
    v17 = 0;
  }

  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_23BDC60A0();
    (*(v16 + 8))(v9, v15);
  }

  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:0 middleString:0 bottomString:v17 isDay:1 timeZone:v18];

  MEMORY[0x23EEBD070]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23BDC6790();
  }

  return sub_23BDC67A0();
}

char *sub_23BDA1B20(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BD9628C(&qword_27E1C5A18, &qword_23BDC8F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_23BDA1C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BD9628C(&qword_27E1C5A28, &unk_23BDC8F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_23BDA1D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23BD9628C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23BDA1DA0()
{
  result = qword_27E1C5A10;
  if (!qword_27E1C5A10)
  {
    sub_23BD9B8CC(&qword_27E1C5A08, &qword_23BDC8F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5A10);
  }

  return result;
}

uint64_t sub_23BDA1E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BDA1E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BDA1EF8@<X0>(void *a1@<X8>)
{
  v68 = a1;
  v1 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v64 - v3;
  v5 = sub_23BDC6010();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for UVTemplateModel();
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BD9D208(v15);
  v18 = sub_23BDC64F0();
  v20 = v19;
  v21 = &v17[v13[7]];
  sub_23BD9D20C(v18);
  v67 = objc_opt_self();
  v22 = [v67 orangeColor];
  v23 = &v17[v13[5]];
  *v23 = 6;
  v23[8] = 0;
  v24 = &v17[v13[6]];
  *v24 = v18;
  v24[1] = v20;
  *&v17[v13[8]] = v22;
  *&v17[v13[9]] = 11;
  v25 = v13[10];
  v26 = sub_23BD9C258();
  *&v17[v25] = v26;
  v27 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  sub_23BD9D208(v26);
  sub_23BDC5F80();
  v72 = &v75;
  sub_23BDC5FC0();
  v28 = *(v6 + 8);
  v28(v10, v5);
  result = (v28)(v12, v5);
  v74 = v27;
  v69 = v75;
  if (*(v75 + 16) < 7uLL)
  {
    __break(1u);
  }

  else
  {
    v65 = v13;
    v66 = v17;
    v30 = 0;
    v31 = 1;
    v32 = &qword_284E8CE68;
    v71 = v4;
    do
    {
      if (v31)
      {
        v73 = 6;
        sub_23BD9CD8C();
        sub_23BDC6870();
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v69 + v30 + 40);
      v70 = *(v69 + v30 + 32);
      v73 = *v32;
      sub_23BD9CD8C();

      sub_23BDC6870();
      v36 = v71;
      sub_23BDC60B0();
      v37 = sub_23BDC60C0();
      v38 = *(v37 - 8);
      (*(v38 + 56))(v36, 0, 1, v37);
      if (v34)
      {
        v39 = sub_23BDC66C0();
      }

      else
      {
        v39 = 0;
      }

      v40 = sub_23BDC66C0();

      v41 = sub_23BDC66C0();

      v42 = v71;
      if ((*(v38 + 48))(v71, 1, v37) == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = sub_23BDC60A0();
        (*(v38 + 8))(v42, v37);
      }

      [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v39 middleString:v40 bottomString:v41 isDay:1 timeZone:v43];

      MEMORY[0x23EEBD070]();
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23BDC6790();
      }

      sub_23BDC67A0();
      v31 = 0;
      v30 += 16;
      ++v32;
    }

    while (v30 != 112);
    v45 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
    v46 = sub_23BDC6770();

    v47 = [v45 initWithEntries_];

    v48 = type metadata accessor for UVRectangularTemplateModel();
    v49 = v68;
    v50 = v68 + v48[5];
    sub_23BD9D208(v48);
    v51 = sub_23BDC64F0();
    v53 = v52;
    v54 = v65;
    v55 = &v50[v65[7]];
    sub_23BD9D20C(v51);
    v56 = [v67 orangeColor];
    v57 = &v50[v54[5]];
    *v57 = 6;
    v57[8] = 0;
    v58 = &v50[v54[6]];
    *v58 = v51;
    v58[1] = v53;
    *&v50[v54[8]] = v56;
    *&v50[v54[9]] = 11;
    v59 = v54[10];
    v60 = sub_23BD9C258();
    *&v50[v59] = v60;
    v61 = v49 + v48[6];
    v62 = sub_23BD9D208(v60);
    v63 = v49 + v48[7];
    sub_23BD9D20C(v62);
    sub_23BD97D0C(v66);

    *v49 = v47;
  }

  return result;
}

uint64_t sub_23BDA24F8(uint64_t a1, uint64_t *a2)
{
  if (qword_27E1C55B8 != -1)
  {
    swift_once();
  }

  v3 = *(off_27E1C59E8 + 2);
  v4 = sub_23BDC5FA0();
  v5 = [v3 stringFromDate_];

  v6 = sub_23BDC66F0();
  v8 = v7;

  v9 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_23BDA1B20(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_23BDA1B20((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 16 * v12;
  *(v13 + 32) = v6;
  *(v13 + 40) = v8;
  return result;
}

uint64_t sub_23BDA2624(uint64_t a1)
{
  result = sub_23BDA3E28(&qword_27E1C5A30, type metadata accessor for UVRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for UVRectangularTemplateModel()
{
  result = qword_27E1C5A48;
  if (!qword_27E1C5A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDA26C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  if (qword_27E1C55B8 != -1)
  {
    swift_once();
  }

  v8 = *(off_27E1C59E8 + 2);
  v9 = sub_23BDC5FA0();
  v10 = [v8 stringFromDate_];

  sub_23BDC66F0();
  sub_23BDC60B0();
  v11 = sub_23BDC60C0();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v7, 0, 1, v11);
  v13 = sub_23BDC66C0();

  v14 = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    v14 = sub_23BDC60A0();
    (*(v12 + 8))(v7, v11);
  }

  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:0 middleString:0 bottomString:v13 isDay:1 timeZone:v14];

  MEMORY[0x23EEBD070]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23BDC6790();
  }

  return sub_23BDC67A0();
}

uint64_t sub_23BDA2920(char *a1, char a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v131 = v110 - v6;
  v137 = sub_23BDC6520();
  i = *(v137 - 8);
  v7 = *(i + 64);
  MEMORY[0x28223BE20](v137);
  v136 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_23BDC6110();
  v129 = *(v135 - 8);
  v9 = *(v129 + 64);
  MEMORY[0x28223BE20](v135);
  v134 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_23BD9628C(&qword_27E1C5A38, &qword_23BDC8FE8);
  v121 = *(v133 - 8);
  v11 = *(v121 + 64);
  MEMORY[0x28223BE20](v133);
  v13 = v110 - v12;
  v14 = sub_23BD9628C(&qword_27E1C5A40, &unk_23BDC8FF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v141 = v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v132 = v110 - v18;
  v19 = sub_23BDC60C0();
  v20 = *(v19 - 8);
  v139 = v19;
  v140 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v138 = v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23BD9628C(&qword_27E1C5A20, &qword_23BDC8F68);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v124 = v110 - v25;
  v26 = sub_23BDC61B0();
  v125 = *(v26 - 8);
  v126 = v26;
  v27 = *(v125 + 64);
  MEMORY[0x28223BE20](v26);
  v128 = v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = v110 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v110 - v37;
  v39 = sub_23BDC6010();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = v110 - v45;
  (*(v40 + 16))(v110 - v45, a1, v39);
  if (a2)
  {
    v47 = type metadata accessor for UVRectangularTemplateModel();
    v143 = MEMORY[0x277D84F90];
    v48 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v48);
    v110[-2] = v47;
    v110[-1] = &v143;
    sub_23BDC5FC0();
    v49 = *(v40 + 8);
    v49(v44, v39);
    v50 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
    v51 = sub_23BDC6770();

    v52 = [v50 initWithEntries_];

    v49(v46, v39);
    return v52;
  }

  v119 = v13;
  v127 = v46;
  v130 = v39;
  v120 = type metadata accessor for TemplateData();
  sub_23BDA38EC(&a1[*(v120 + 20)], v38);
  v123 = v38;
  sub_23BDA38EC(v38, v36);
  v53 = sub_23BDC6240();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  if (v55(v36, 1, v53) == 1)
  {
    sub_23BD962D4(v36, &qword_27E1C5960, &qword_23BDC8F50);
LABEL_9:
    v59 = v130;
    v60 = v127;
LABEL_10:
    v61 = type metadata accessor for UVRectangularTemplateModel();
    v143 = MEMORY[0x277D84F90];
    v62 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v62);
    v110[-2] = v61;
    v110[-1] = &v143;
    sub_23BDC5FC0();
    v63 = *(v40 + 8);
    v63(v44, v59);
    v64 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
    v65 = sub_23BDC6770();

    v52 = [v64 initWithEntries_];

    sub_23BD962D4(v123, &qword_27E1C5960, &qword_23BDC8F50);
    v63(v60, v59);
    return v52;
  }

  v118 = a1;
  v56 = sub_23BDC61D0();
  v57 = *(v54 + 8);
  v57(v36, v53);
  if (*(v56 + 16) != 7)
  {

    goto LABEL_9;
  }

  v112 = v56;
  sub_23BDA38EC(v123, v33);
  if (v55(v33, 1, v53) == 1)
  {

    sub_23BD962D4(v33, &qword_27E1C5960, &qword_23BDC8F50);
    v58 = v124;
    (*(v125 + 56))(v124, 1, 1, v126);
    v59 = v130;
    v60 = v127;
LABEL_14:
    sub_23BD962D4(v58, &qword_27E1C5A20, &qword_23BDC8F68);
    goto LABEL_10;
  }

  v58 = v124;
  v60 = v127;
  sub_23BDC61E0();
  v57(v33, v53);
  v68 = v125;
  v67 = v126;
  if ((*(v125 + 48))(v58, 1, v126) == 1)
  {

    v59 = v130;
    goto LABEL_14;
  }

  (*(v68 + 32))(v128, v58, v67);
  v143 = MEMORY[0x277D84F90];
  v69 = &v118[*(v120 + 24)];
  v70 = sub_23BDC6590();
  v71 = v140 + 16;
  v72 = &v69[*(v70 + 24)];
  v118 = *(v140 + 16);
  result = (v118)(v138, v72, v139);
  v73 = 0;
  v110[1] = v129 + 16;
  v74 = *(v112 + 16);
  v120 = v121 + 56;
  v121 += 48;
  v117 = (v129 + 32);
  v113 = (i + 8);
  v124 = (v40 + 8);
  v116 = (v71 + 40);
  v115 = (v71 + 32);
  v140 = v71;
  v111 = (v71 - 8);
  v114 = (v129 + 8);
  v75 = v137;
  v77 = v134;
  v76 = v135;
  v78 = v133;
  v79 = v141;
  for (i = v74; ; v74 = i)
  {
    v80 = v136;
    if (v73 == v74)
    {
      v81 = 1;
      v73 = v74;
      goto LABEL_20;
    }

    if (v73 >= *(v112 + 16))
    {
      break;
    }

    v82 = v129;
    v83 = v112 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v73;
    v84 = *(v78 + 48);
    v85 = v119;
    *v119 = v73;
    (*(v82 + 16))(&v85[v84], v83, v76);
    v86 = v85;
    v79 = v141;
    sub_23BDA1D38(v86, v141, &qword_27E1C5A38, &qword_23BDC8FE8);
    v81 = 0;
    ++v73;
LABEL_20:
    (*v120)(v79, v81, 1, v78);
    v87 = v79;
    v88 = v132;
    sub_23BDA1D38(v87, v132, &qword_27E1C5A40, &unk_23BDC8FF0);
    if ((*v121)(v88, 1, v78) == 1)
    {

      v108 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
      sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
      v109 = sub_23BDC6770();

      v52 = [v108 initWithEntries_];

      (*v111)(v138, v139);
      (*(v125 + 8))(v128, v126);
      sub_23BD962D4(v123, &qword_27E1C5960, &qword_23BDC8F50);
      (*v124)(v127, v130);
      return v52;
    }

    v89 = *v88;
    (*v117)(v77, &v88[*(v78 + 48)], v76);
    if (v89)
    {
      v90 = 0;
      v91 = v113;
    }

    else
    {
      sub_23BDC6190();
      v92 = sub_23BDC6500();
      v91 = v113;
      (*v113)(v80, v75);
      v142 = v92;
      sub_23BD9CD8C();
      sub_23BDC6870();
      v90 = v93;
    }

    sub_23BDC6100();
    v94 = sub_23BDC6500();
    (*v91)(v80, v75);
    v142 = v94;
    sub_23BD9CD8C();
    sub_23BDC6870();
    if (qword_27E1C55B8 != -1)
    {
      swift_once();
    }

    v95 = off_27E1C59E8;
    sub_23BDC60F0();
    v96 = v95[2];
    v97 = sub_23BDC5FA0();
    v98 = [v96 stringFromDate_];

    sub_23BDC66F0();
    (*v124)(v44, v130);
    v99 = v131;
    v100 = v139;
    (v118)(v131, v138, v139);
    (*v116)(v99, 0, 1, v100);
    if (v90)
    {
      v101 = sub_23BDC66C0();
    }

    else
    {
      v101 = 0;
    }

    v102 = sub_23BDC66C0();

    v103 = sub_23BDC66C0();

    v104 = (*v115)(v99, 1, v100);
    v105 = v100;
    v77 = v134;
    if (v104 == 1)
    {
      v106 = 0;
    }

    else
    {
      v106 = sub_23BDC60A0();
      (*v111)(v99, v105);
    }

    v75 = v137;
    v79 = v141;
    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v101 middleString:v102 bottomString:v103 isDay:1 timeZone:v106];

    MEMORY[0x23EEBD070]();
    if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v107 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    v76 = v135;
    result = (*v114)(v77, v135);
    v78 = v133;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BDA38EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDA3980(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UVTemplateModel();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_23BDA3B00(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UVTemplateModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23BDA3C6C()
{
  result = sub_23BD96820(319, &qword_27E1C56B8, 0x277D2C7B8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UVTemplateModel();
    if (v2 <= 0x3F)
    {
      result = sub_23BDC6010();
      if (v3 <= 0x3F)
      {
        result = sub_23BDC6590();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BDA3D78(uint64_t a1)
{
  result = sub_23BDA3E28(&unk_27E1C5D00, type metadata accessor for UVRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDA3DD0(uint64_t a1)
{
  result = sub_23BDA3E28(&qword_27E1C5A58, type metadata accessor for UVRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDA3E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BDA3E74()
{
  type metadata accessor for WeatherTemplateFormatter();
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_23BDC65E0();
  v2 = sub_23BDA60AC(&qword_27E1C5A70, v1, type metadata accessor for WeatherTemplateFormatter);
  *&xmmword_27E1C7770 = v0;
  *(&xmmword_27E1C7770 + 1) = v2;
}

id sub_23BDA3F04(uint64_t a1)
{
  v3 = type metadata accessor for WeatherTemplateModel();
  (*(**(v1 + 16) + 152))(a1 + *(v3 + 24), 1, 2);
  v4 = sub_23BDC66C0();

  v5 = [objc_opt_self() textProviderWithText_];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemCyanColor];
  [v7 setTintColor_];

  v9 = [objc_allocWithZone(MEMORY[0x277CBBA60]) initWithTextProvider_];
  v10 = v9;
  v11 = [v6 systemCyanColor];
  [v10 setTintColor_];

  return v10;
}

id sub_23BDA4064(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v107 = &v98 - v4;
  v5 = sub_23BDC62F0();
  v109 = *(v5 - 8);
  v110 = v5;
  v6 = *(v109 + 64);
  MEMORY[0x28223BE20](v5);
  v102 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v98 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v105 = &v98 - v14;
  MEMORY[0x28223BE20](v13);
  v108 = &v98 - v15;
  v16 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v99 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v98 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v100 = &v98 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v98 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v106 = &v98 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v98 - v28;
  v30 = sub_23BDC6590();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for WeatherTemplateModel();
  v35 = *(*(v34 - 1) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  sub_23BDA60F4(a1, v37, type metadata accessor for WeatherTemplateModel);
  sub_23BDA60F4(&v37[v34[5]], v33, MEMORY[0x277D2C7F0]);
  sub_23BD96394(&v37[v34[6]], v29, &qword_27E1C5790, &unk_23BDC92E0);
  v112 = v9;
  v40 = *(v9 + 48);
  v38 = v9 + 48;
  v39 = v40;
  v41 = 1;
  LODWORD(a1) = v40(v29, 1, v8);
  sub_23BD962D4(v29, &qword_27E1C5790, &unk_23BDC92E0);
  if (a1 != 1)
  {
    v42 = v106;
    sub_23BD96394(&v37[v34[8]], v106, &qword_27E1C5790, &unk_23BDC92E0);
    v41 = v39(v42, 1, v8) == 1;
    sub_23BD962D4(v42, &qword_27E1C5790, &unk_23BDC92E0);
  }

  v43 = sub_23BDBA204(v33, v41);
  sub_23BDA615C(v33, MEMORY[0x277D2C7F0]);
  v44 = [objc_opt_self() systemCyanColor];
  [v43 setTintColor_];

  sub_23BDA615C(v37, type metadata accessor for WeatherTemplateModel);
  v45 = v113;
  v46 = v111;
  sub_23BD96394(v113 + v34[6], v111, &qword_27E1C5790, &unk_23BDC92E0);
  v106 = v38;
  v103 = v39;
  if (v39(v46, 1, v8) == 1)
  {
    v47 = v8;
    sub_23BD962D4(v46, &qword_27E1C5790, &unk_23BDC92E0);
    v48 = v112;
    v49 = v34;
  }

  else
  {
    v48 = v112;
    v50 = v108;
    (*(v112 + 32))(v108, v46, v8);
    v51 = v107;
    sub_23BD96394(v45 + v34[7], v107, &qword_27E1C59F0, &unk_23BDC8F30);
    v52 = v109;
    v49 = v34;
    if ((*(v109 + 48))(v51, 1, v110) == 1)
    {
      v47 = v8;
      (*(v48 + 8))(v50, v8);
      sub_23BD962D4(v51, &qword_27E1C59F0, &unk_23BDC8F30);
    }

    else
    {
      v111 = v43;
      v53 = v102;
      (*(v52 + 32))();
      v54 = v100;
      (*(v48 + 16))(v100, v50, v8);
      (*(v48 + 56))(v54, 0, 1, v8);
      v55 = (*(**(v101 + 16) + 152))(v54, 1, 2);
      v107 = v8;
      v56 = v55;
      v58 = v57;
      sub_23BD962D4(v54, &qword_27E1C5790, &unk_23BDC92E0);
      if (qword_27E1C55D0 != -1)
      {
        swift_once();
      }

      v59 = qword_27E1C5B70;
      v60 = sub_23BDC66C0();
      v61 = sub_23BDC66C0();
      v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

      sub_23BDC66F0();
      sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_23BDC8C50;
      v64 = MEMORY[0x277D837D0];
      *(v63 + 56) = MEMORY[0x277D837D0];
      v65 = sub_23BD97C54();
      *(v63 + 64) = v65;
      *(v63 + 32) = v56;
      *(v63 + 40) = v58;
      v66 = *(v113 + v49[11]);

      v67 = sub_23BDC62D0();
      *(v63 + 96) = v64;
      *(v63 + 104) = v65;
      *(v63 + 72) = v67;
      *(v63 + 80) = v68;
      sub_23BDC6700();

      (*(v109 + 8))(v53, v110);
      v48 = v112;
      v47 = v107;
      (*(v112 + 8))(v108, v107);
      v43 = v111;
    }
  }

  v69 = sub_23BDC66C0();

  v70 = sub_23BDC66C0();

  v71 = objc_opt_self();
  v72 = [v71 textProviderWithText:v69 shortText:v70];

  v73 = v113;
  v74 = (v113 + v49[10]);
  if (!v74[1])
  {
    v111 = v72;
    v79 = v104;
    sub_23BD96394(v113 + v49[8], v104, &qword_27E1C5790, &unk_23BDC92E0);
    v80 = v47;
    v81 = v103;
    if (v103(v79, 1, v47) == 1)
    {
      v82 = v79;
    }

    else
    {
      v83 = v81;
      v84 = *(v48 + 32);
      v84(v105, v79, v80);
      v85 = v73 + v49[9];
      v82 = v99;
      sub_23BD96394(v85, v99, &qword_27E1C5790, &unk_23BDC92E0);
      if (v83(v82, 1, v80) != 1)
      {
        v88 = v98;
        v84(v98, v82, v80);
        v89 = v105;
        sub_23BDA58B0(v105, v88, 0xD000000000000029, 0x800000023BDC7A80);
        v90 = sub_23BDC66C0();

        v91 = [v71 textProviderWithText_];

        v78 = v91;
        sub_23BDA58B0(v89, v88, 0xD000000000000019, 0x800000023BDC7670);
        v92 = sub_23BDC66C0();

        [v78 setAccessibilityLabel_];

        [v78 setItalicized_];
        v93 = *(v48 + 8);
        v93(v88, v80);
        v93(v89, v80);
        goto LABEL_18;
      }

      (*(v48 + 8))(v105, v80);
    }

    sub_23BD962D4(v82, &qword_27E1C5790, &unk_23BDC92E0);
    v86 = sub_23BDC66C0();
    v87 = [v71 textProviderWithText_];

    v78 = v87;
LABEL_18:
    v72 = v111;
    goto LABEL_19;
  }

  v75 = *v74;
  v76 = sub_23BDC66C0();
  v77 = [v71 textProviderWithText_];

  v78 = v77;
LABEL_19:
  v94 = objc_allocWithZone(MEMORY[0x277CBBA08]);
  v95 = v72;
  v96 = [v94 initWithHeaderTextProvider:v43 body1TextProvider:v95 body2TextProvider:v78];

  return v96;
}

id sub_23BDA4C78(uint64_t a1)
{
  v3 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for WeatherTemplateModel();
  (*(**(v1 + 16) + 152))(a1 + v10[6], 1, 2);
  v11 = sub_23BDC66C0();

  v28 = [objc_opt_self() textProviderWithText_];

  v12 = *(a1 + v10[11]);
  v13 = v10[7];
  sub_23BD96394(a1 + v13, v9, &qword_27E1C59F0, &unk_23BDC8F30);
  v14 = sub_23BDC62F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v9, 1, v14) == 1)
  {
    sub_23BD962D4(v9, &qword_27E1C59F0, &unk_23BDC8F30);
  }

  else
  {
    sub_23BDC62B0();
    v18 = v17;
    (*(v15 + 8))(v9, v14);
    if (v18)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v19 = sub_23BDC66C0();

  v20 = [objc_opt_self() symbolImageProviderWithSystemName_];

  sub_23BD96394(a1 + v13, v7, &qword_27E1C59F0, &unk_23BDC8F30);
  LODWORD(v19) = v16(v7, 1, v14);
  v21 = v20;
  if (v19 == 1)
  {
    sub_23BD962D4(v7, &qword_27E1C59F0, &unk_23BDC8F30);
    v22 = 0;
  }

  else
  {
    sub_23BDC62E0();
    (*(v15 + 8))(v7, v14);
    v22 = sub_23BDC66C0();
  }

  [v21 setAccessibilityLabel_];

  v23 = objc_allocWithZone(MEMORY[0x277CBBA90]);
  v24 = v28;
  v25 = [v23 initWithTextProvider:v24 imageProvider:v21];

  return v25;
}

id sub_23BDA4FEC(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v62 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v58 - v6;
  v8 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = v58 - v10;
  v11 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v58 - v13;
  v15 = sub_23BDC62F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WeatherTemplateModel();
  sub_23BD96394(a1 + v20[7], v14, &qword_27E1C59F0, &unk_23BDC8F30);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v21 = &qword_27E1C59F0;
    v22 = &unk_23BDC8F30;
    v23 = v14;
LABEL_5:
    sub_23BD962D4(v23, v21, v22);
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v25 = qword_27E1C5B70;
    v26 = sub_23BDC66C0();
    v27 = sub_23BDC66C0();
    v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

    v29 = sub_23BDC66F0();
    v31 = v30;

    goto LABEL_11;
  }

  (*(v16 + 32))(v19, v14, v15);
  sub_23BD96394(a1 + v20[6], v7, &qword_27E1C5790, &unk_23BDC92E0);
  v24 = v64;
  if ((*(v64 + 48))(v7, 1, v8) == 1)
  {
    (*(v16 + 8))(v19, v15);
    v21 = &qword_27E1C5790;
    v22 = &unk_23BDC92E0;
    v23 = v7;
    goto LABEL_5;
  }

  v60 = v15;
  v61 = a1;
  (*(v24 + 32))(v65, v7, v8);
  v32 = v24;
  v59 = v8;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v33 = qword_27E1C5B70;
  v34 = sub_23BDC66C0();
  v35 = sub_23BDC66C0();
  v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

  v37 = sub_23BDC66F0();
  v58[1] = v38;
  v58[2] = v37;

  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23BDC8C50;
  v40 = *(v61 + v20[11]);
  v41 = v19;
  v42 = sub_23BDC62D0();
  v44 = v43;
  *(v39 + 56) = MEMORY[0x277D837D0];
  v45 = sub_23BD97C54();
  *(v39 + 64) = v45;
  *(v39 + 32) = v42;
  *(v39 + 40) = v44;
  v46 = *(v24 + 16);
  v47 = v62;
  v48 = v65;
  v49 = v59;
  v46(v62, v65, v59);
  (*(v32 + 56))(v47, 0, 1, v49);
  v50 = (*(**(v63 + 16) + 152))(v47, 1, 2);
  v52 = v51;
  sub_23BD962D4(v47, &qword_27E1C5790, &unk_23BDC92E0);
  *(v39 + 96) = MEMORY[0x277D837D0];
  *(v39 + 104) = v45;
  *(v39 + 72) = v50;
  *(v39 + 80) = v52;
  v29 = sub_23BDC6700();
  v31 = v53;

  (*(v32 + 8))(v48, v49);
  (*(v16 + 8))(v41, v60);
LABEL_11:
  v66 = v29;
  v67 = v31;
  sub_23BD97C00();
  sub_23BDC6860();

  v54 = sub_23BDC66C0();

  v55 = [objc_opt_self() textProviderWithText_];

  v56 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v56;
}

id sub_23BDA56E8(uint64_t a1, Class *a2)
{
  v5 = type metadata accessor for WeatherTemplateModel();
  (*(**(v2 + 16) + 152))(a1 + *(v5 + 24), 1, 1);
  v6 = sub_23BDC66C0();

  v7 = [objc_opt_self() textProviderWithText_];

  v8 = [objc_allocWithZone(*a2) initWithTextProvider_];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemCyanColor];
  [v10 setTintColor_];

  return v10;
}

uint64_t sub_23BDA5808()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23BDA58B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v5 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = *sub_23BDC65E0();
  v10 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(v8, a1, v10);
  v13 = *(v11 + 56);
  v13(v8, 0, 1, v10);
  v14 = *(*v9 + 152);

  v15 = v14(v8, 1, 1);
  v34 = v16;
  v35 = v15;
  sub_23BD962D4(v8, &qword_27E1C5790, &unk_23BDC92E0);
  v12(v8, v31, v10);
  v13(v8, 0, 1, v10);
  v17 = v14(v8, 1, 1);
  v19 = v18;
  sub_23BD962D4(v8, &qword_27E1C5790, &unk_23BDC92E0);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v20 = qword_27E1C5B70;
  v21 = sub_23BDC66C0();
  v22 = sub_23BDC66C0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23BDC8C50;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v26 = sub_23BD97C54();
  v27 = v34;
  *(v24 + 32) = v35;
  *(v24 + 40) = v27;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = v17;
  *(v24 + 80) = v19;
  v28 = sub_23BDC6700();

  return v28;
}

uint64_t sub_23BDA5BC8()
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1C5B70;
  v1 = sub_23BDC66C0();
  v2 = sub_23BDC66C0();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_23BDC66F0();
  v6 = v5;

  v7 = v4 == 1702195828 && v6 == 0xE400000000000000;
  if (v7 || (sub_23BDC6980() & 1) != 0)
  {

    v8 = 1;
  }

  else if (v4 == 0x65736C6166 && v6 == 0xE500000000000000)
  {

    v8 = 0;
  }

  else
  {
    v10 = sub_23BDC6980();

    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

id sub_23BDA5D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherTemplateModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDA60F4(a2, v7, type metadata accessor for WeatherTemplateModel);
  sub_23BDBA208(v7, a1 == 8, &v33);
  v8 = sub_23BDC66C0();
  v9 = objc_opt_self();
  v10 = [v9 textProviderWithText_];

  v11 = sub_23BDC66C0();
  v12 = [v9 textProviderWithText_];

  v13 = v35;
  v14 = v12;
  [v14 setTintColor_];
  v15 = sub_23BDC66C0();
  v16 = [v9 textProviderWithText_];

  v17 = v34;
  v18 = v16;
  [v18 setTintColor_];
  v19 = v33;
  sub_23BD96820(0, &qword_27E1C5770, 0x277D75348);
  v20 = sub_23BDC6770();
  sub_23BD96820(0, &qword_27E1C5A68, 0x277CCABB0);
  v21 = sub_23BDC6770();
  v22 = objc_opt_self();
  LODWORD(v23) = v19;
  v24 = [v22 gaugeProviderWithStyle:0 gaugeColors:v20 gaugeColorLocations:v21 fillFraction:v23];

  if (a1 == 12)
  {
    v28 = MEMORY[0x277CBB950];
    goto LABEL_7;
  }

  if (a1 == 10)
  {
    v28 = MEMORY[0x277CBB868];
LABEL_7:
    v29 = objc_allocWithZone(v28);
    v26 = v24;
    v27 = [v29 initWithGaugeProvider:v26 leadingTextProvider:v14 trailingTextProvider:v18 centerTextProvider:v10];
    goto LABEL_8;
  }

  if (a1 != 8)
  {

    sub_23BDA6058(&v33);
    return 0;
  }

  v25 = objc_allocWithZone(MEMORY[0x277CBB8D0]);
  v26 = v24;
  v27 = [v25 initWithGaugeProvider:v26 leadingTextProvider:v14 trailingTextProvider:v18 outerTextProvider:v10];
LABEL_8:
  v30 = v27;

  sub_23BDA6058(&v33);
  return v30;
}

uint64_t sub_23BDA60AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BDA60F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BDA615C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BDA61BC()
{
  v1 = sub_23BDC6080();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - v8;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v10 = qword_27E1C5B70;
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v14 = sub_23BDC66F0();
  v16 = v15;

  if (v14 == 1702195828 && v16 == 0xE400000000000000)
  {

    v17 = 1;
  }

  else
  {
    v17 = sub_23BDC6980();
  }

  v18 = type metadata accessor for WindTemplateModel();
  sub_23BD96394(v0 + *(v18 + 28), v9, &unk_27E1C5D50, &unk_23BDC8F70);
  v19 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_23BD962D4(v9, &unk_27E1C5D50, &unk_23BDC8F70);
    v21 = 0;
    v22 = 0xE000000000000000;
    if (v17)
    {
      return v21;
    }

    goto LABEL_11;
  }

  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v2 + 8))(v5, v1);
  (*(v20 + 8))(v9, v19);
  v21 = v26;
  v22 = v27;
  v30 = v25;
  sub_23BD96334(&v30);
  v29 = v28;
  sub_23BD96334(&v29);
  if ((v17 & 1) == 0)
  {
LABEL_11:
    v24[0] = v21;
    v24[1] = v22;
    sub_23BD97C00();
    v21 = sub_23BDC6860();
  }

  return v21;
}

uint64_t sub_23BDA6544()
{
  v1 = sub_23BDC6080();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v18[0] = 40;
  v18[1] = 0xE100000000000000;
  v10 = type metadata accessor for WindTemplateModel();
  sub_23BD96394(v0 + *(v10 + 28), v9, &unk_27E1C5D50, &unk_23BDC8F70);
  v11 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_23BD962D4(v9, &unk_27E1C5D50, &unk_23BDC8F70);
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    sub_23BDC6070();
    v15 = sub_23BDC5F10();
    v13 = v16;
    (*(v2 + 8))(v5, v1);
    (*(v12 + 8))(v9, v11);
    v14 = v15;
  }

  MEMORY[0x23EEBD040](v14, v13);

  MEMORY[0x23EEBD040](41, 0xE100000000000000);
  return v18[0];
}

uint64_t sub_23BDA677C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v43 - v5;
  v6 = sub_23BD9628C(&qword_27E1C5668, &qword_23BDC89F8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v43 - v17;
  v19 = sub_23BDC6010();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TemplateData();
  v47 = v19;
  v24 = *(v46 + 20);
  v45 = *(v20 + 16);
  v43 = v20 + 16;
  v45(v23, a1, v19);
  v50 = a1;
  sub_23BD96394(a1 + v24, v18, &qword_27E1C5960, &qword_23BDC8F50);
  v25 = sub_23BDC6240();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v18, 1, v25) == 1)
  {
    sub_23BD962D4(v18, &qword_27E1C5960, &qword_23BDC8F50);
    memset(v55, 0, sizeof(v55));
    v56 = 0;
  }

  else
  {
    sub_23BDC6200();
    (*(v26 + 8))(v18, v25);
  }

  sub_23BD96394(v55, v52, &qword_27E1C59A8, &unk_23BDC8EC0);
  v27 = v53;
  v44 = v23;
  if (v53)
  {
    v28 = v54;
    sub_23BD9CCFC(v52, v53);
    (*(v28 + 112))(v27, v28);
    v29 = sub_23BDC64C0();
    (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
    sub_23BD9CD40(v52);
  }

  else
  {
    sub_23BD962D4(v52, &qword_27E1C59A8, &unk_23BDC8EC0);
    v29 = sub_23BDC64C0();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  }

  sub_23BD96394(v14, v12, &qword_27E1C5668, &qword_23BDC89F8);
  sub_23BDC64C0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v12, 1, v29) == 1)
  {
    sub_23BD962D4(v12, &qword_27E1C5668, &qword_23BDC89F8);
    v32 = 1;
    v33 = v49;
  }

  else
  {
    v33 = v49;
    sub_23BDC64B0();
    (*(v30 + 8))(v12, v29);
    v32 = 0;
  }

  v34 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  (*(*(v34 - 8) + 56))(v33, v32, 1, v34);
  v35 = v48;
  sub_23BD96394(v14, v48, &qword_27E1C5668, &qword_23BDC89F8);
  if (v31(v35, 1, v29) == 1)
  {
    sub_23BD962D4(v14, &qword_27E1C5668, &qword_23BDC89F8);
    sub_23BD962D4(v55, &qword_27E1C59A8, &unk_23BDC8EC0);
    v36 = v47;
    (*(v20 + 8))(v44, v47);
    sub_23BD962D4(v35, &qword_27E1C5668, &qword_23BDC89F8);
    v37 = 16;
  }

  else
  {
    v37 = sub_23BDC64A0();
    sub_23BD962D4(v14, &qword_27E1C5668, &qword_23BDC89F8);
    sub_23BD962D4(v55, &qword_27E1C59A8, &unk_23BDC8EC0);
    v36 = v47;
    (*(v20 + 8))(v44, v47);
    (*(v30 + 8))(v35, v29);
  }

  v39 = v50;
  v38 = v51;
  v45(v51, v50, v36);
  v40 = *(v46 + 24);
  v41 = type metadata accessor for WindTemplateModel();
  sub_23BD9CC98(v39 + v40, &v38[v41[5]]);
  result = sub_23BDA6FB8(v33, &v38[v41[7]]);
  v38[v41[6]] = v37;
  return result;
}

uint64_t sub_23BDA6E10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BD9D208(a1);
  v5 = a2 + a1[5];
  sub_23BD9D20C(v4);
  v6 = a1[7];
  v7 = [objc_opt_self() milesPerHour];
  sub_23BDA7028();
  sub_23BDC5F40();
  v8 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  result = (*(*(v8 - 8) + 56))(a2 + v6, 0, 1, v8);
  *(a2 + a1[6]) = 2;
  return result;
}

unint64_t sub_23BDA6EEC(uint64_t a1)
{
  result = sub_23BDA6F14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDA6F14()
{
  result = qword_27E1C5A78;
  if (!qword_27E1C5A78)
  {
    type metadata accessor for WindTemplateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5A78);
  }

  return result;
}

uint64_t type metadata accessor for WindTemplateModel()
{
  result = qword_27E1C5A80;
  if (!qword_27E1C5A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDA6FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BDA7028()
{
  result = qword_27E1C5680;
  if (!qword_27E1C5680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5680);
  }

  return result;
}

uint64_t sub_23BDA7088(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 239)
  {
    v14 = *(a1 + a3[6]);
    if (v14 <= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = *(a1 + a3[6]);
    }

    v16 = v15 - 16;
    if (v14 >= 0x10)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23BDA7220(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23BDC6590();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 239)
  {
    *(a1 + a4[6]) = a2 + 16;
  }

  else
  {
    v15 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_23BDA739C()
{
  sub_23BDC6010();
  if (v0 <= 0x3F)
  {
    sub_23BDC6590();
    if (v1 <= 0x3F)
    {
      sub_23BDA7450();
      if (v2 <= 0x3F)
      {
        sub_23BDA74A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BDA7450()
{
  if (!qword_27E1C5A90)
  {
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C5A90);
    }
  }
}

void sub_23BDA74A0()
{
  if (!qword_27E1C5A98)
  {
    sub_23BD9B8CC(&unk_27E1C5D70, &unk_23BDC9100);
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C5A98);
    }
  }
}

id sub_23BDA7508(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v7 = sub_23BD96F78(a2);
        goto LABEL_27;
      }

      if (a1 != 4)
      {
        if (a1 != 6)
        {
          goto LABEL_30;
        }

LABEL_17:
        v7 = sub_23BD96E84(a2);
LABEL_27:
        v6 = v7;
        goto LABEL_34;
      }

      v24 = *(v2 + 16);
      v26 = type metadata accessor for UVTemplateModel();
      (*(*v24 + 88))(*(a2 + *(v26 + 20)), *(a2 + *(v26 + 20) + 8), 2);
      v27 = sub_23BDC66C0();

      v12 = [objc_opt_self() textProviderWithText_];

      v13 = sub_23BD97994(a2);
      v14 = MEMORY[0x277CBB7A0];
    }

    else
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = sub_23BD96B30(a2);
          goto LABEL_27;
        }

        if (a1 != 2)
        {
LABEL_30:
          if (*MEMORY[0x277CBB668] == a1)
          {
            v28 = *(v2 + 16);
            v30 = type metadata accessor for UVTemplateModel();
            (*(*v28 + 88))(*(a2 + *(v30 + 20)), *(a2 + *(v30 + 20) + 8), 2);
            v31 = sub_23BDC66C0();

            v12 = [objc_opt_self() textProviderWithText_];

            v13 = sub_23BD97994(a2);
            v14 = MEMORY[0x277CBB758];
            goto LABEL_32;
          }

LABEL_33:
          v6 = 0;
          goto LABEL_34;
        }

        goto LABEL_17;
      }

      v8 = *(v2 + 16);
      v10 = type metadata accessor for UVTemplateModel();
      (*(*v8 + 88))(*(a2 + *(v10 + 20)), *(a2 + *(v10 + 20) + 8), 2);
      v11 = sub_23BDC66C0();

      v12 = [objc_opt_self() textProviderWithText_];

      v13 = sub_23BD97994(a2);
      v14 = MEMORY[0x277CBBA68];
    }

LABEL_32:
    v6 = [objc_allocWithZone(v14) initWithLine1ImageProvider:v13 line2TextProvider:v12];

    goto LABEL_34;
  }

  if (a1 > 9)
  {
    switch(a1)
    {
      case 10:
        v7 = sub_23BD972D4(a2);
        break;
      case 11:
        goto LABEL_33;
      case 12:
        v7 = sub_23BD972E8(a2);
        break;
      default:
        goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a1 == 7)
  {
    v15 = *(v2 + 16);
    v17 = type metadata accessor for UVTemplateModel();
    (*(*v15 + 88))(*(a2 + *(v17 + 20)), *(a2 + *(v17 + 20) + 8), 2);
    v18 = sub_23BDC66C0();

    v12 = [objc_opt_self() textProviderWithText_];

    v13 = sub_23BD97994(a2);
    v14 = MEMORY[0x277CBB800];
    goto LABEL_32;
  }

  if (a1 == 8)
  {
    v19 = sub_23BD97658(a2);
    v21 = v20;
    v23 = v22;
    v6 = [objc_allocWithZone(MEMORY[0x277CBB8D0]) initWithGaugeProvider:v19 leadingTextProvider:v22 trailingTextProvider:0 outerTextProvider:v20];
  }

  else
  {
    v4 = sub_23BD972D4(a2);
    if (!v4)
    {
      goto LABEL_33;
    }

    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
    }
  }

LABEL_34:
  v32 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CA70, v32), vceqq_s64(unk_284E8CA80, v32)))) & 1) == 0 && qword_284E8CA90 != a1 && v6)
  {
    v33 = [objc_opt_self() clearColor];
    [v6 setTintColor_];
  }

  return v6;
}

id sub_23BDA79D0(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v6 = sub_23BDA4FEC(a2);
        goto LABEL_33;
      }

      if (a1 == 4)
      {
        v6 = sub_23BDA56D0(a2);
        goto LABEL_33;
      }

      if (a1 != 6)
      {
LABEL_30:
        if (*MEMORY[0x277CBB668] == a1)
        {
          v9 = type metadata accessor for WeatherTemplateModel();
          (*(**(v2 + 16) + 152))(a2 + *(v9 + 24), 1, 1);
          v10 = sub_23BDC66C0();

          v11 = [objc_opt_self() textProviderWithText_];

          v6 = [objc_allocWithZone(MEMORY[0x277CBB798]) initWithTextProvider_];
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (!a1)
      {
        v6 = sub_23BDA3F04(a2);
        goto LABEL_33;
      }

      if (a1 == 1)
      {
        v6 = sub_23BDA4064(a2);
        goto LABEL_33;
      }

      if (a1 != 2)
      {
        goto LABEL_30;
      }
    }

    v6 = sub_23BDA4C78(a2);
    goto LABEL_33;
  }

  if (a1 > 9)
  {
    switch(a1)
    {
      case 10:
        v7 = 10;
        break;
      case 11:
        goto LABEL_32;
      case 12:
        v7 = 12;
        break;
      default:
        goto LABEL_30;
    }

LABEL_28:
    v6 = sub_23BDA5D60(v7, a2);
    goto LABEL_33;
  }

  if (a1 == 7)
  {
    v6 = sub_23BDA56DC(a2);
    goto LABEL_33;
  }

  if (a1 == 8)
  {
    v7 = 8;
    goto LABEL_28;
  }

  v4 = sub_23BDA5D60(10, a2);
  if (!v4)
  {
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
  }

LABEL_33:
  v12 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CAB8, v12), vceqq_s64(unk_284E8CAC8, v12)))) & 1) == 0 && qword_284E8CAD8 != a1 && v6 != 0)
  {
    v14 = [objc_opt_self() clearColor];
    [v6 setTintColor_];
  }

  return v6;
}

id sub_23BDA7C88(int64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        goto LABEL_28;
      }

      if (a1 == 4)
      {
        v4 = sub_23BDAA664(a2);
        goto LABEL_27;
      }

      if (a1 != 6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!a1)
      {
        v4 = sub_23BDAA408(a2);
        goto LABEL_27;
      }

      if (a1 == 1)
      {
        goto LABEL_28;
      }

      if (a1 != 2)
      {
        goto LABEL_25;
      }
    }

    v4 = sub_23BDAA650(a2);
LABEL_27:
    v3 = v4;
    goto LABEL_28;
  }

  if (a1 <= 9)
  {
    if (a1 == 7)
    {
      v4 = sub_23BDAA88C(a2);
      goto LABEL_27;
    }

    if (a1 != 8)
    {
      v4 = sub_23BDAB084(a2);
      goto LABEL_27;
    }

    v5 = sub_23BDAAD4C(a2, 8uLL);
    v6 = [objc_allocWithZone(MEMORY[0x277CBB8B8]) initWithImageProvider_];
    v7 = sub_23BDB1C20();
LABEL_23:
    v3 = v7;

    goto LABEL_28;
  }

  switch(a1)
  {
    case 10:
      v5 = sub_23BDAAD4C(a2, 0xAuLL);
      v6 = [objc_allocWithZone(MEMORY[0x277CBB850]) initWithImageProvider_];
      v7 = sub_23BDB1C20();
      goto LABEL_23;
    case 11:
      goto LABEL_28;
    case 12:
      v5 = sub_23BDAAD4C(a2, 0xCuLL);
      v6 = [objc_allocWithZone(MEMORY[0x277CBB938]) initWithImageProvider_];
      v7 = sub_23BDB1C20();
      goto LABEL_23;
  }

LABEL_25:
  if (*MEMORY[0x277CBB668] == a1)
  {
    v4 = sub_23BDAA8A0(a2);
    goto LABEL_27;
  }

  v3 = 0;
LABEL_28:
  v8 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CB48, v8), vceqq_s64(unk_284E8CB58, v8)))) & 1) == 0 && qword_284E8CB68 != a1 && v3 != 0)
  {
    v10 = [objc_opt_self() clearColor];
    [v3 setTintColor_];
  }

  return v3;
}

id sub_23BDA7ED0(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v6 = sub_23BDB9758(a2);
        goto LABEL_31;
      }

      if (a1 == 4)
      {
        v6 = sub_23BDB869C(a2);
        goto LABEL_31;
      }

      if (a1 != 6)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (!a1)
      {
        v6 = sub_23BDB8534(a2);
        goto LABEL_31;
      }

      if (a1 == 1)
      {
        v6 = sub_23BDB94B4(a2);
        goto LABEL_31;
      }

      if (a1 != 2)
      {
LABEL_29:
        if (*MEMORY[0x277CBB668] == a1)
        {
          v6 = sub_23BDB8E44(a2);
          goto LABEL_31;
        }

        goto LABEL_39;
      }
    }

    v6 = sub_23BDB8548(a2);
LABEL_31:
    v5 = v6;
    goto LABEL_32;
  }

  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v6 = sub_23BDB88F4(a2);
      goto LABEL_31;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        goto LABEL_29;
      }

      v6 = sub_23BDB8B9C(a2);
      goto LABEL_31;
    }

LABEL_39:
    v5 = 0;
    goto LABEL_32;
  }

  if (a1 == 7)
  {
    v6 = sub_23BDB86B0(a2);
    goto LABEL_31;
  }

  if (a1 == 8)
  {
    v6 = sub_23BDB86C4(a2);
    goto LABEL_31;
  }

  v3 = sub_23BDB88F4(a2);
  if (!v3)
  {
    goto LABEL_39;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
  }

LABEL_32:
  v7 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CB90, v7), vceqq_s64(unk_284E8CBA0, v7)))) & 1) == 0 && qword_284E8CBB0 != a1 && v5 != 0)
  {
    v9 = [objc_opt_self() clearColor];
    [v5 setTintColor_];
  }

  return v5;
}

uint64_t sub_23BDA80DC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v20 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 104))(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = (*(a6 + 32))(a1, v14, a5, a6);
  v17 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v21(v16, v17, v18);

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_23BDA82AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 168))(a1, a2, a3);
  v11 = (*(a3 + 32))(a1, v10, a2, a3);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_23BDA83E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BD9D208(a1);
  v3 = sub_23BDC64F0();
  v5 = v4;
  v6 = type metadata accessor for UVTemplateModel();
  v7 = a2 + v6[7];
  sub_23BD9D20C(v6);
  v8 = [objc_opt_self() orangeColor];
  v9 = a2 + v6[5];
  *v9 = 6;
  *(v9 + 8) = 0;
  v10 = (a2 + v6[6]);
  *v10 = v3;
  v10[1] = v5;
  *(a2 + v6[8]) = v8;
  *(a2 + v6[9]) = 11;
  v11 = v6[10];
  result = sub_23BD9C258();
  *(a2 + v11) = result;
  return result;
}

uint64_t sub_23BDA8498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BD9D208(a1);
  v3 = type metadata accessor for WeatherTemplateModel();
  v4 = a2 + v3[5];
  sub_23BD9D20C(v3);
  v5 = v3[6];
  v19 = objc_opt_self();
  v6 = [v19 fahrenheit];
  sub_23BDA9AD0();
  sub_23BDC5F40();
  v7 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v8 = *(*(v7 - 8) + 56);
  v8(a2 + v5, 0, 1, v7);
  v9 = v3[7];
  v10 = *MEMORY[0x277CE3250];
  v11 = sub_23BDC62F0();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a2 + v9, v10, v11);
  (*(v12 + 56))(a2 + v9, 0, 1, v11);
  v13 = v3[8];
  v14 = [v19 fahrenheit];
  sub_23BDC5F40();
  v8(a2 + v13, 0, 1, v7);
  v15 = v3[9];
  v16 = [v19 fahrenheit];
  sub_23BDC5F40();
  result = (v8)(a2 + v15, 0, 1, v7);
  v18 = (a2 + v3[10]);
  *v18 = 0;
  v18[1] = 0;
  *(a2 + v3[11]) = 1;
  return result;
}

uint64_t sub_23BDA86D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BD9D208(a1);
  v3 = type metadata accessor for ConditionTemplateModel();
  v4 = a2 + v3[5];
  sub_23BD9D20C(v3);
  v5 = v3[6];
  v6 = *MEMORY[0x277CE3250];
  v7 = sub_23BDC62F0();
  v8 = *(v7 - 8);
  (*(v8 + 104))(a2 + v5, v6, v7);
  (*(v8 + 56))(a2 + v5, 0, 1, v7);
  v9 = v3[8];
  v10 = objc_opt_self();
  v11 = [v10 fahrenheit];
  sub_23BDA9AD0();
  sub_23BDC5F40();
  v12 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v13 = *(*(v12 - 8) + 56);
  v13(a2 + v9, 0, 1, v12);
  v14 = v3[9];
  v15 = [v10 fahrenheit];
  sub_23BDC5F40();
  v13(a2 + v14, 0, 1, v12);
  v16 = v3[10];
  v17 = [v10 fahrenheit];
  sub_23BDC5F40();
  result = (v13)(a2 + v16, 0, 1, v12);
  *(a2 + v3[7]) = 1;
  return result;
}

uint64_t sub_23BDA88EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(**sub_23BDC6620() + 136);

  v3 = v2(0x3FE3333333333333, 0, 1);
  v5 = v4;

  sub_23BD9D208(v6);
  v7 = type metadata accessor for ChanceRainTemplateModel();
  v8 = a1 + v7[5];
  result = sub_23BD9D20C(v7);
  v10 = a1 + v7[6];
  *v10 = 0x3FE3333333333333;
  *(v10 + 8) = 0;
  v11 = (a1 + v7[7]);
  *v11 = v3;
  v11[1] = v5;
  *(a1 + v7[8]) = 1;
  v12 = (a1 + v7[9]);
  *v12 = 0xD000000000000013;
  v12[1] = 0x800000023BDC7AF0;
  return result;
}

BOOL sub_23BDA8A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_23BDA8A4C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_23BDC6590();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = sub_23BDC6010();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v1, v14);
  v19 = sub_23BDC6240();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v28[1] = v20 + 56;
  v29 = v21;
  v21(v13, 1, 1, v19);
  v22 = type metadata accessor for TemplateData();
  sub_23BD9CC98(v1 + *(v22 + 24), v6);
  sub_23BDA38EC(v13, v11);
  v23 = &v6[*(v3 + 40)];
  if (*v23 == *MEMORY[0x277CE4278])
  {
    v24 = v23[1];
    v25 = *(MEMORY[0x277CE4278] + 8);
    sub_23BDA8EFC(v13);
    if (v24 == v25)
    {
      sub_23BDA8EFC(v11);
      v29(v11, 1, 1, v19);
    }
  }

  else
  {
    sub_23BDA8EFC(v13);
  }

  v26 = v30;
  (*(v15 + 32))(v30, v18, v14);
  sub_23BDA8F64(v11, v26 + *(v22 + 20));
  return sub_23BDA8FD4(v6, v26 + *(v22 + 24));
}

uint64_t sub_23BDA8DD8()
{
  v0 = type metadata accessor for WindTemplateModel();
  v1 = sub_23BDA9BE4();
  return (*(v1 + 40))(v0, v1);
}

uint64_t sub_23BDA8E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BD9D208(a1);
  v3 = type metadata accessor for AQINonNumericalTemplateModel();
  v4 = a2 + v3[5];
  result = sub_23BD9D20C(v3);
  v6 = (a2 + v3[6]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (a2 + v3[7]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(a2 + v3[8]) = 0;
  *(a2 + v3[9]) = MEMORY[0x277D84F90];
  v8 = (a2 + v3[10]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(a2 + v3[11]) = 0;
  return result;
}

uint64_t type metadata accessor for TemplateData()
{
  result = qword_27E1C5AA8;
  if (!qword_27E1C5AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDA8EFC(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDA8F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDA8FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BDC6590();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23BDA9038(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v6 = sub_23BDC1CB4(a2);
        goto LABEL_31;
      }

      if (a1 == 4)
      {
        v6 = sub_23BDC218C(a2);
        goto LABEL_31;
      }

      if (a1 != 6)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (!a1)
      {
        v6 = sub_23BDC0E0C(a2);
        goto LABEL_31;
      }

      if (a1 == 1)
      {
        v6 = sub_23BDC1248(a2);
        goto LABEL_31;
      }

      if (a1 != 2)
      {
LABEL_29:
        if (*MEMORY[0x277CBB668] == a1)
        {
          v6 = sub_23BDC3210(a2);
          goto LABEL_31;
        }

        goto LABEL_39;
      }
    }

    v6 = sub_23BDC18E0(a2);
LABEL_31:
    v5 = v6;
    goto LABEL_32;
  }

  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v6 = sub_23BDC30D0(a2);
      goto LABEL_31;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        goto LABEL_29;
      }

      v6 = sub_23BDC30EC(a2);
      goto LABEL_31;
    }

LABEL_39:
    v5 = 0;
    goto LABEL_32;
  }

  if (a1 == 7)
  {
    v6 = sub_23BDC2514(a2);
    goto LABEL_31;
  }

  if (a1 == 8)
  {
    v6 = sub_23BDC2928(a2);
    goto LABEL_31;
  }

  v3 = sub_23BDC30D0(a2);
  if (!v3)
  {
    goto LABEL_39;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
  }

LABEL_32:
  v7 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CB00, v7), vceqq_s64(unk_284E8CB10, v7)))) & 1) == 0 && qword_284E8CB20 != a1 && v5 != 0)
  {
    v9 = [objc_opt_self() clearColor];
    [v5 setTintColor_];
  }

  return v5;
}

id sub_23BDA9240(int64_t a1, uint64_t a2)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          v10 = sub_23BDC00F4(a2);
          v12 = v16;
          v14 = v17;
          v15 = MEMORY[0x277CBB870];
          break;
        case 11:
          goto LABEL_30;
        case 12:
          v10 = sub_23BDC00F4(a2);
          v12 = v11;
          v14 = v13;
          v15 = MEMORY[0x277CBB958];
          break;
        default:
          goto LABEL_28;
      }

      v18 = [objc_allocWithZone(v15) initWithGaugeProvider:v14 bottomTextProvider:v12 centerTextProvider:v10];
    }

    else
    {
      if (a1 == 7)
      {
        v9 = sub_23BDC00E8(a2);
        goto LABEL_31;
      }

      if (a1 != 8)
      {
        v3 = sub_23BDC00F4(a2);
        v5 = v4;
        v7 = v6;
        v8 = [objc_allocWithZone(MEMORY[0x277CBB870]) initWithGaugeProvider:v6 bottomTextProvider:v4 centerTextProvider:v3];

        v9 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
        goto LABEL_31;
      }

      v10 = sub_23BDC00F4(a2);
      v12 = v19;
      v14 = v20;
      v18 = [objc_allocWithZone(MEMORY[0x277CBB8D0]) initWithGaugeProvider:v20 leadingTextProvider:v19 trailingTextProvider:0 outerTextProvider:v10];
    }

    v9 = v18;

    goto LABEL_31;
  }

  if (a1 <= 2)
  {
    if (!a1)
    {
      v9 = sub_23BDBF4E0(a2);
      goto LABEL_31;
    }

    if (a1 == 1)
    {
      v9 = sub_23BDBF734(a2);
      goto LABEL_31;
    }

    if (a1 != 2)
    {
      goto LABEL_28;
    }

LABEL_14:
    v9 = sub_23BDBFB70(a2);
    goto LABEL_31;
  }

  switch(a1)
  {
    case 3:
      v9 = sub_23BDBFDC4(a2);
      goto LABEL_31;
    case 4:
      v9 = sub_23BDC00DC(a2);
      goto LABEL_31;
    case 6:
      goto LABEL_14;
  }

LABEL_28:
  if (*MEMORY[0x277CBB668] == a1)
  {
    v9 = sub_23BDC0378(a2);
    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
LABEL_31:
  v21 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CBD8, v21), vceqq_s64(unk_284E8CBE8, v21)))) & 1) == 0 && qword_284E8CBF8 != a1 && v9 != 0)
  {
    v23 = [objc_opt_self() clearColor];
    [v9 setTintColor_];
  }

  return v9;
}

id sub_23BDA9508(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          v9 = sub_23BDC4FB0(a2);
          goto LABEL_31;
        case 4:
          v37 = objc_opt_self();

          v38 = (a2 + *(type metadata accessor for AQINonNumericalTemplateModel() + 24));
          v39 = *v38;
          v40 = v38[1];
          v41 = sub_23BDC66C0();
          v16 = [objc_opt_self() symbolImageProviderWithSystemName_];

          v42 = [v37 whiteColor];
          [v16 setTintColor_];

          v18 = MEMORY[0x277CBB790];
          goto LABEL_29;
        case 6:
          goto LABEL_14;
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          v9 = sub_23BDC4B04(a2);
          goto LABEL_31;
        case 1:
          v9 = sub_23BDC4C90(a2);
          goto LABEL_31;
        case 2:
LABEL_14:
          v11 = objc_opt_self();

          v12 = (a2 + *(type metadata accessor for AQINonNumericalTemplateModel() + 24));
          v13 = *v12;
          v14 = v12[1];
          v15 = sub_23BDC66C0();
          v16 = [objc_opt_self() symbolImageProviderWithSystemName_];

          v17 = [v11 whiteColor];
          [v16 setTintColor_];

          v18 = MEMORY[0x277CBBAC0];
LABEL_29:
          v9 = [objc_allocWithZone(v18) initWithImageProvider_];

          goto LABEL_31;
      }
    }

    goto LABEL_27;
  }

  if (a1 <= 9)
  {
    if (a1 == 7)
    {
      v26 = objc_opt_self();

      v27 = (a2 + *(type metadata accessor for AQINonNumericalTemplateModel() + 24));
      v28 = *v27;
      v29 = v27[1];
      v30 = sub_23BDC66C0();
      v16 = [objc_opt_self() symbolImageProviderWithSystemName_];

      v31 = [v26 whiteColor];
      [v16 setTintColor_];

      v18 = MEMORY[0x277CBB7F0];
      goto LABEL_29;
    }

    if (a1 != 8)
    {
      v3 = sub_23BDC51D4(10, a2);
      v5 = v4;
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x277CBB888]) initWithImageProvider:v4 gaugeProvider:v6 textProvider:v3];

      v9 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
      goto LABEL_31;
    }

    v19 = sub_23BDC51D4(8, a2);
    v21 = v34;
    v23 = v35;
    v24 = MEMORY[0x277CBB8F8];
LABEL_25:
    v9 = [objc_allocWithZone(v24) initWithImageProvider:v21 gaugeProvider:v23 textProvider:v19];

    goto LABEL_31;
  }

  switch(a1)
  {
    case 10:
      v19 = sub_23BDC51D4(10, a2);
      v21 = v32;
      v23 = v33;
      v24 = MEMORY[0x277CBB888];
      goto LABEL_25;
    case 11:
      goto LABEL_30;
    case 12:
      v19 = sub_23BDC51D4(12, a2);
      v21 = v20;
      v23 = v22;
      v24 = MEMORY[0x277CBB970];
      goto LABEL_25;
  }

LABEL_27:
  if (*MEMORY[0x277CBB668] == a1)
  {
    v44 = objc_opt_self();

    v45 = (a2 + *(type metadata accessor for AQINonNumericalTemplateModel() + 24));
    v46 = *v45;
    v47 = v45[1];
    v48 = sub_23BDC66C0();
    v16 = [objc_opt_self() symbolImageProviderWithSystemName_];

    v49 = [v44 whiteColor];
    [v16 setTintColor_];

    v18 = MEMORY[0x277CBB748];
    goto LABEL_29;
  }

LABEL_30:
  v9 = 0;
LABEL_31:
  v50 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CC68, v50), vceqq_s64(unk_284E8CC78, v50)))) & 1) == 0 && qword_284E8CC88 != a1 && v9 != 0)
  {
    v52 = [objc_opt_self() clearColor];
    [v9 setTintColor_];
  }

  return v9;
}

unint64_t sub_23BDA9AD0()
{
  result = qword_27E1C5AA0;
  if (!qword_27E1C5AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5AA0);
  }

  return result;
}

void *sub_23BDA9B1C(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), int64x2_t *a4, void *a5)
{
  if (a1 == 11)
  {
    v8 = a3(a2);
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a4, v9), vceqq_s64(a4[1], v9)))) & 1) == 0 && *a5 != a1 && v8)
  {
    v10 = [objc_opt_self() clearColor];
    [v8 setTintColor_];
  }

  return v8;
}

unint64_t sub_23BDA9BE4()
{
  result = qword_27E1C56C0;
  if (!qword_27E1C56C0)
  {
    type metadata accessor for WindTemplateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C56C0);
  }

  return result;
}

uint64_t sub_23BDA9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23BDA9DB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_23BDC6590();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_23BDA9F08()
{
  sub_23BDC6010();
  if (v0 <= 0x3F)
  {
    sub_23BDA9FA4();
    if (v1 <= 0x3F)
    {
      sub_23BDC6590();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BDA9FA4()
{
  if (!qword_27E1C5AB8)
  {
    sub_23BDC6240();
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C5AB8);
    }
  }
}

uint64_t sub_23BDAA004()
{
  type metadata accessor for ConditionTemplateFormatter();
  swift_allocObject();
  v0 = sub_23BDAA07C();
  result = sub_23BDAC434(&qword_27E1C5AC8, v1, type metadata accessor for ConditionTemplateFormatter);
  *&xmmword_27E1C7780 = v0;
  *(&xmmword_27E1C7780 + 1) = result;
  return result;
}

void *sub_23BDAA07C()
{
  sub_23BDC6600();
  v1 = sub_23BDC66C0();

  v2 = [objc_opt_self() textProviderWithText_];

  v0[2] = v2;
  sub_23BD9628C(&qword_27E1C5AD0, &qword_23BDC9210);
  v3 = sub_23BDC62F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23BDC9170;
  v8 = *(v4 + 104);
  v8(v7 + v6, *MEMORY[0x277CE32F0], v3);
  v8(v7 + v6 + v5, *MEMORY[0x277CE32C0], v3);
  v8(v7 + v6 + 2 * v5, *MEMORY[0x277CE3240], v3);
  v8(v7 + v6 + 3 * v5, *MEMORY[0x277CE32A0], v3);
  v9 = sub_23BDAC10C(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[3] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23BDC9180;
  v8(v10 + v6, *MEMORY[0x277CE3298], v3);
  v8(v10 + v6 + v5, *MEMORY[0x277CE3220], v3);
  v8(v10 + v6 + 2 * v5, *MEMORY[0x277CE3288], v3);
  v11 = sub_23BDAC10C(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[4] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23BDC9180;
  v8(v12 + v6, *MEMORY[0x277CE3250], v3);
  v8(v12 + v6 + v5, *MEMORY[0x277CE3230], v3);
  v8(v12 + v6 + 2 * v5, *MEMORY[0x277CE32B0], v3);
  v13 = sub_23BDAC10C(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[5] = v13;
  return v0;
}

id sub_23BDAA408(uint64_t a1)
{
  v3 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_23BDC62F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConditionTemplateModel();
  sub_23BD96394(a1 + *(v12 + 24), v6, &qword_27E1C59F0, &unk_23BDC8F30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_23BD962D4(v6, &qword_27E1C59F0, &unk_23BDC8F30);
    v13 = *(v1 + 16);
    v14 = [objc_opt_self() systemCyanColor];
    [v13 setTintColor_];

    return [objc_allocWithZone(MEMORY[0x277CBBA60]) initWithTextProvider_];
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v16 = sub_23BDAA8B4(v11, *(a1 + *(v12 + 28)));
    v17 = [objc_allocWithZone(MEMORY[0x277CBBA50]) initWithImageProvider_];

    (*(v8 + 8))(v11, v7);
    return v17;
  }
}

id sub_23BDAA678(uint64_t a1, Class *a2, Class *a3)
{
  v20 = a3;
  v6 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = sub_23BDC62F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConditionTemplateModel();
  sub_23BD96394(a1 + *(v15 + 24), v9, &qword_27E1C59F0, &unk_23BDC8F30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_23BD962D4(v9, &qword_27E1C59F0, &unk_23BDC8F30);
    return [objc_allocWithZone(*v20) initWithTextProvider_];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v17 = sub_23BDAA8B4(v14, *(a1 + *(v15 + 28)));
    v18 = [objc_allocWithZone(*a2) initWithImageProvider_];

    (*(v11 + 8))(v14, v10);
    return v18;
  }
}

id sub_23BDAA8B4(uint64_t a1, char a2)
{
  v3 = v2;
  sub_23BDC62B0();
  v6 = sub_23BDC66C0();

  v7 = [objc_opt_self() symbolImageProviderWithSystemName_];

  if (sub_23BDAAA70(a1, v3[3]))
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
  }

  else
  {
    if (sub_23BDAAA70(a1, v3[4]))
    {
      v9 = MEMORY[0x277D75348];
    }

    else
    {
      v10 = sub_23BDAAA70(a1, v3[5]);
      v9 = MEMORY[0x277D75348];
      if ((v10 & 1) == 0 || (a2 & 1) == 0)
      {
        v8 = [objc_opt_self() whiteColor];
        goto LABEL_8;
      }
    }

    v8 = [objc_allocWithZone(v9) initWithRed:0.992156863 green:0.839215686 blue:0.270588235 alpha:1.0];
  }

LABEL_8:
  v11 = v8;
  v12 = v7;
  [v12 setTintColor_];

  sub_23BDC62E0();
  v13 = sub_23BDC66C0();

  [v12 setAccessibilityLabel_];

  return v12;
}

uint64_t sub_23BDAAA70(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BDC62F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_23BDAC434(&qword_27E1C5AE0, 255, MEMORY[0x277CE3328]), v9 = sub_23BDC6690(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v19 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v18 = ~v10;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(a2 + 48) + v14 * v11, v3);
      sub_23BDAC434(&qword_27E1C5AE8, 255, MEMORY[0x277CE3328]);
      v16 = sub_23BDC66B0();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v11 = (v11 + 1) & v18;
    }

    while (((*(v19 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_23BDAAC8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_23BDAAD4C(uint64_t a1, unint64_t a2)
{
  v30 = a2;
  v3 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ConditionTemplateModel();
  v11 = *(v10 + 24);
  sub_23BD96394(a1 + v11, v9, &qword_27E1C59F0, &unk_23BDC8F30);
  v12 = sub_23BDC62F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v9, 1, v12) == 1)
  {
    sub_23BD962D4(v9, &qword_27E1C59F0, &unk_23BDC8F30);
LABEL_6:
    v22 = sub_23BDC35E0(v30);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (v23)
    {
      v25 = v23;
    }

    v31 = v24;
    v32 = v25;
    MEMORY[0x23EEBD040](0x726F7065722D6F6ELL, 0xE900000000000074);
    v26 = sub_23BDC66C0();

    v20 = NWCLocalizedImageNamed();

    v27 = [objc_allocWithZone(MEMORY[0x277CBBB10]) initWithFullColorImage:v20 monochromeFilterType:1];
    goto LABEL_14;
  }

  v15 = *(a1 + *(v10 + 28));
  sub_23BDC62B0();
  v17 = v16;
  v29 = *(v13 + 8);
  v29(v9, v12);
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = sub_23BDC66C0();

  v19 = [objc_opt_self() symbolImageProviderWithSystemName_];

  sub_23BD96394(a1 + v11, v7, &qword_27E1C59F0, &unk_23BDC8F30);
  LODWORD(v18) = v14(v7, 1, v12);
  v20 = v19;
  if (v18 == 1)
  {
    sub_23BD962D4(v7, &qword_27E1C59F0, &unk_23BDC8F30);
    v21 = 0;
  }

  else
  {
    sub_23BDC62E0();
    v29(v7, v12);
    v21 = sub_23BDC66C0();
  }

  [v20 setAccessibilityLabel_];

  v27 = v20;
LABEL_14:

  return v27;
}

id sub_23BDAB084(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v142 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v143 = &v127 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  *&v145 = &v127 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v127 - v10;
  v12 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v146 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v147 = &v127 - v18;
  MEMORY[0x28223BE20](v17);
  v148 = &v127 - v19;
  v20 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v127 - v22;
  v24 = *sub_23BDC65E0();
  v25 = type metadata accessor for ConditionTemplateModel();
  sub_23BD96394(a1 + v25[6], v23, &qword_27E1C59F0, &unk_23BDC8F30);
  v26 = sub_23BDC62F0();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v23, 1, v26) == 1)
  {

    v28 = &qword_27E1C59F0;
    v29 = &unk_23BDC8F30;
    v30 = v23;
LABEL_3:
    sub_23BD962D4(v30, v28, v29);
LABEL_8:
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v38 = qword_27E1C5B70;
    v39 = sub_23BDC66C0();
    v40 = sub_23BDC66C0();
    v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

    if (!v41)
    {
      sub_23BDC66F0();
      v41 = sub_23BDC66C0();
    }

    v42 = [objc_opt_self() textProviderWithText_];

    goto LABEL_13;
  }

  v31 = *(a1 + v25[7]);
  v144 = v24;

  v32 = sub_23BDC62D0();
  v34 = v33;
  (*(v27 + 8))(v23, v26);
  sub_23BD96394(a1 + v25[8], v11, &qword_27E1C5790, &unk_23BDC92E0);
  v35 = *(v13 + 48);
  if (v35(v11, 1, v12) == 1)
  {
LABEL_7:

    sub_23BD962D4(v11, &qword_27E1C5790, &unk_23BDC92E0);
    goto LABEL_8;
  }

  v139 = v32;
  v141 = v34;
  v36 = *(v13 + 32);
  v37 = v148;
  v36(v148, v11, v12);
  v11 = v145;
  sub_23BD96394(a1 + v25[9], v145, &qword_27E1C5790, &unk_23BDC92E0);
  if (v35(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(v37, v12);
    goto LABEL_7;
  }

  v140 = v13;
  v49 = v11;
  v50 = v147;
  v36(v147, v49, v12);
  v51 = a1 + v25[10];
  v52 = v143;
  sub_23BD96394(v51, v143, &qword_27E1C5790, &unk_23BDC92E0);
  v53 = v35(v52, 1, v12);
  v54 = v144;
  if (v53 == 1)
  {

    v55 = *(v140 + 8);
    v55(v50, v12);
    v55(v148, v12);
    v28 = &qword_27E1C5790;
    v29 = &unk_23BDC92E0;
    v30 = v52;
    goto LABEL_3;
  }

  v129 = a1;
  v36(v146, v52, v12);
  v56 = v140;
  v57 = *(v140 + 16);
  v58 = v142;
  v133 = v140 + 16;
  v143 = v57;
  (v57)(v142, v148, v12);
  v59 = *(v56 + 56);
  v137 = v56 + 56;
  v136 = v59;
  v59(v58, 0, 1, v12);
  v60 = (*v54 + 136);
  v135 = *v60;
  v131 = v60;
  v61 = v135(v58);
  v63 = v62;
  sub_23BD962D4(v58, &qword_27E1C5790, &unk_23BDC92E0);
  v138 = v12;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v64 = qword_27E1C5B70;
  v65 = sub_23BDC66C0();
  v130 = "uviFormatter";
  v66 = sub_23BDC66C0();
  v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

  sub_23BDC66F0();
  v132 = sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v68 = swift_allocObject();
  v145 = xmmword_23BDC8C50;
  *(v68 + 16) = xmmword_23BDC8C50;
  v69 = MEMORY[0x277D837D0];
  *(v68 + 56) = MEMORY[0x277D837D0];
  v70 = sub_23BD97C54();
  v134 = v70;
  *(v68 + 32) = v61;
  *(v68 + 40) = v63;
  *(v68 + 96) = v69;
  *(v68 + 104) = v70;
  v71 = v139;
  *(v68 + 64) = v70;
  *(v68 + 72) = v71;
  *(v68 + 80) = v141;

  sub_23BDC6700();

  v72 = sub_23BDC66C0();

  v73 = sub_23BDC66C0();

  v139 = objc_opt_self();
  v141 = [v139 textProviderWithText:v72 shortText:v73];

  v74 = qword_27E1C5B70;
  v75 = sub_23BDC66C0();
  v76 = sub_23BDC66C0();
  v77 = [v74 localizedStringForKey:v75 value:0 table:v76];

  v128 = sub_23BDC66F0();
  v127 = v78;

  v79 = swift_allocObject();
  *(v79 + 16) = v145;
  v80 = v138;
  (v143)(v58, v146, v138);
  v81 = v80;
  v82 = v136;
  v136(v58, 0, 1, v81);
  v83 = v135(v58);
  v85 = v84;
  sub_23BD962D4(v58, &qword_27E1C5790, &unk_23BDC92E0);
  v86 = v134;
  *(v79 + 56) = MEMORY[0x277D837D0];
  *(v79 + 64) = v86;
  *(v79 + 32) = v83;
  *(v79 + 40) = v85;
  v87 = v138;
  (v143)(v58, v147, v138);
  v88 = v87;
  v82(v58, 0, 1, v87);
  v89 = v135(v58);
  v91 = v90;
  sub_23BD962D4(v58, &qword_27E1C5790, &unk_23BDC92E0);
  *(v79 + 96) = MEMORY[0x277D837D0];
  *(v79 + 104) = v86;
  *(v79 + 72) = v89;
  *(v79 + 80) = v91;
  sub_23BDC6700();

  v92 = sub_23BDC66C0();

  v93 = [v139 textProviderWithText_];

  v94 = qword_27E1C5B70;
  v139 = v93;
  v95 = v94;
  v96 = sub_23BDC66C0();
  v97 = sub_23BDC66C0();
  v98 = [v95 localizedStringForKey:v96 value:0 table:v97];

  v128 = sub_23BDC66F0();
  v127 = v99;

  v100 = swift_allocObject();
  *(v100 + 16) = v145;
  v101 = v143;
  (v143)(v58, v146, v88);
  v136(v58, 0, 1, v88);
  v102 = v135;
  v103 = v135(v58);
  v105 = v104;
  sub_23BD962D4(v58, &qword_27E1C5790, &unk_23BDC92E0);
  v106 = v134;
  *(v100 + 56) = MEMORY[0x277D837D0];
  *(v100 + 64) = v106;
  *(v100 + 32) = v103;
  *(v100 + 40) = v105;
  v101(v58, v147, v88);
  v136(v58, 0, 1, v88);
  v107 = v102(v58);
  v109 = v108;
  sub_23BD962D4(v58, &qword_27E1C5790, &unk_23BDC92E0);
  v110 = v134;
  *(v100 + 96) = MEMORY[0x277D837D0];
  *(v100 + 104) = v110;
  *(v100 + 72) = v107;
  *(v100 + 80) = v109;
  v111 = v139;
  sub_23BDC6700();

  v112 = sub_23BDC66C0();

  [v111 setAccessibilityLabel_];

  v113 = qword_27E1C5B70;
  v114 = sub_23BDC66C0();
  v115 = sub_23BDC66C0();
  v116 = [v113 localizedStringForKey:v114 value:0 table:v115];

  if (!v116)
  {
    sub_23BDC66F0();
    v116 = sub_23BDC66C0();
  }

  v117 = sub_23BDAC0C0();
  inited = swift_initStackObject();
  *(inited + 16) = v145;
  *(inited + 56) = v117;
  v119 = sub_23BDAC434(&unk_27E1C58B0, 255, sub_23BDAC0C0);
  v120 = v141;
  *(inited + 32) = v141;
  *(inited + 96) = v117;
  *(inited + 104) = v119;
  *(inited + 64) = v119;
  *(inited + 72) = v111;
  v121 = v111;
  v122 = v120;
  v123 = sub_23BDC69C0();
  swift_setDeallocating();
  v124 = *(inited + 16);
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v42 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v116 arguments:v123];

  v125 = *(v140 + 8);
  v126 = v138;
  v125(v146, v138);
  v125(v147, v126);
  v125(v148, v126);
  a1 = v129;
LABEL_13:
  v43 = v42;
  v44 = sub_23BDAAD4C(a1, 0xAuLL);
  v45 = [objc_allocWithZone(MEMORY[0x277CBB850]) initWithImageProvider_];
  v46 = sub_23BDB1C20();

  objc_opt_self();
  v47 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate:swift_dynamicCastObjCClassUnconditional() textProvider:v43];

  return v47;
}

unint64_t sub_23BDAC0C0()
{
  result = qword_27E1C5D30;
  if (!qword_27E1C5D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5D30);
  }

  return result;
}

uint64_t sub_23BDAC10C(uint64_t a1)
{
  v2 = sub_23BDC62F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_23BD9628C(&qword_27E1C5AD8, &qword_23BDC9218);
    v10 = sub_23BDC6890();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_23BDAC434(&qword_27E1C5AE0, 255, MEMORY[0x277CE3328]);
      v18 = sub_23BDC6690();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_23BDAC434(&qword_27E1C5AE8, 255, MEMORY[0x277CE3328]);
          v25 = sub_23BDC66B0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23BDAC434(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BDAC47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_23BDC62F0();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BDC6590();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BDC6360();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BDC61B0();
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v67 - v18;
  v20 = sub_23BD9628C(&qword_27E1C5A20, &qword_23BDC8F68);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v79 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v29 = sub_23BDC6010();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v84 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v67 - v34;
  v36 = *(v30 + 16);
  v80 = v37;
  v77 = v36;
  (v36)(&v67 - v34, a1);
  v75 = type metadata accessor for TemplateData();
  v38 = *(v75 + 20);
  v81 = a1;
  sub_23BD96394(a1 + v38, v19, &qword_27E1C5960, &qword_23BDC8F50);
  v39 = sub_23BDC6240();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v19, 1, v39) == 1)
  {
    sub_23BD962D4(v19, &qword_27E1C5960, &qword_23BDC8F50);
    v41 = v83;
    (*(v83 + 56))(v28, 1, 1, v12);
  }

  else
  {
    sub_23BDC61E0();
    (*(v40 + 8))(v19, v39);
    v41 = v83;
  }

  sub_23BD96394(v28, v26, &qword_27E1C5A20, &qword_23BDC8F68);
  v74 = *(v41 + 48);
  v76 = v74(v26, 1, v12);
  if (v76 == 1)
  {
    v78 = 0xD000000000000013;
    sub_23BD962D4(v26, &qword_27E1C5A20, &qword_23BDC8F68);
    v73 = "WIND_UNIT_AVOID_ALL_UPPERCASE";
    v42 = 0;
    goto LABEL_11;
  }

  (*(v41 + 32))(v15, v26, v12);
  sub_23BDC6160();
  v42 = v43;
  v44 = v71;
  sub_23BDC6150();
  v45 = (*(v72 + 88))(v44, v73);
  if (v45 == *MEMORY[0x277CE3388])
  {
    v78 = 0xD000000000000013;
    (*(v41 + 8))(v15, v12);
    v46 = "CHANCE_OF_HAIL_TEXT";
LABEL_8:
    v73 = v46 - 32;
    goto LABEL_11;
  }

  if (v45 != *MEMORY[0x277CE33B0])
  {
    v65 = *MEMORY[0x277CE33A0];
    v66 = v45;
    (*(v83 + 8))(v15, v12);
    v78 = 0xD000000000000013;
    if (v66 == v65)
    {
      v46 = "CHANCE_OF_SNOW_TEXT";
    }

    else
    {
      (*(v72 + 8))(v71, v73);
      v46 = "CHANCE_OF_RAIN_TEXT";
    }

    goto LABEL_8;
  }

  (*(v83 + 8))(v15, v12);
  v73 = "CHANCE_OF_SNOW_TEXT";
  v78 = 0xD000000000000014;
LABEL_11:
  v47 = *(**sub_23BDC6620() + 152);

  v48 = v47(v28, 0, 0, 1);
  v50 = v49;

  v51 = v80;
  v77(v84, v35, v80);
  sub_23BD9CC98(v81 + *(v75 + 24), v85);
  v52 = v79;
  sub_23BD96394(v28, v79, &qword_27E1C5A20, &qword_23BDC8F68);
  if (v74(v52, 1, v12) == 1)
  {
    sub_23BD962D4(v28, &qword_27E1C5A20, &qword_23BDC8F68);
    (*(v30 + 8))(v35, v51);
    sub_23BD962D4(v52, &qword_27E1C5A20, &qword_23BDC8F68);
    v53 = 0;
  }

  else
  {
    v54 = v52;
    v55 = v68;
    sub_23BDC61A0();
    v56 = (*(v83 + 8))(v54, v12);
    v53 = MEMORY[0x23EEBCBD0](v56);
    (*(v69 + 8))(v55, v70);
    sub_23BD962D4(v28, &qword_27E1C5A20, &qword_23BDC8F68);
    (*(v30 + 8))(v35, v51);
  }

  v57 = v76 == 1;
  v58 = v73 | 0x8000000000000000;
  v59 = v82;
  (*(v30 + 32))(v82, v84, v51);
  v60 = type metadata accessor for ChanceRainTemplateModel();
  result = sub_23BDA8FD4(v85, v59 + v60[5]);
  v62 = v59 + v60[6];
  *v62 = v42;
  *(v62 + 8) = v57;
  v63 = (v59 + v60[7]);
  *v63 = v48;
  v63[1] = v50;
  *(v59 + v60[8]) = v53 & 1;
  v64 = (v59 + v60[9]);
  *v64 = v78;
  v64[1] = v58;
  return result;
}

uint64_t sub_23BDACD38(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_23BDACD70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(**sub_23BDC6620() + 136);

  v5 = v4(0x3FE3333333333333, 0, 1);
  v7 = v6;

  v9 = sub_23BD9D208(v8);
  v10 = a2 + a1[5];
  result = sub_23BD9D20C(v9);
  v12 = a1[7];
  v13 = a2 + a1[6];
  *v13 = 0x3FE3333333333333;
  *(v13 + 8) = 0;
  v14 = (a2 + v12);
  *v14 = v5;
  v14[1] = v7;
  v15 = a1[9];
  *(a2 + a1[8]) = 1;
  v16 = (a2 + v15);
  *v16 = 0xD000000000000013;
  v16[1] = 0x800000023BDC7AF0;
  return result;
}

unint64_t sub_23BDACE64(uint64_t a1)
{
  result = sub_23BDACE8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDACE8C()
{
  result = qword_27E1C5AF0;
  if (!qword_27E1C5AF0)
  {
    type metadata accessor for ChanceRainTemplateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5AF0);
  }

  return result;
}

uint64_t type metadata accessor for ChanceRainTemplateModel()
{
  result = qword_27E1C5AF8;
  if (!qword_27E1C5AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDACF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23BDAD068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23BDC6590();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BDAD174()
{
  sub_23BDC6010();
  if (v0 <= 0x3F)
  {
    sub_23BDC6590();
    if (v1 <= 0x3F)
    {
      sub_23BDAD224();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BDAD224()
{
  if (!qword_27E1C5B08)
  {
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C5B08);
    }
  }
}

uint64_t sub_23BDAD274()
{
  v1 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v5 = type metadata accessor for ConditionTemplateModel();
  sub_23BD96394(v0 + *(v5 + 24), v4, &qword_27E1C59F0, &unk_23BDC8F30);
  v6 = sub_23BDC62F0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_23BD962D4(v4, &qword_27E1C59F0, &unk_23BDC8F30);
    v8 = 0xE200000000000000;
    v9 = 11565;
  }

  else
  {
    v10 = *(v0 + *(v5 + 28));
    v11 = sub_23BDC62D0();
    v8 = v12;
    (*(v7 + 8))(v4, v6);
    v9 = v11;
  }

  MEMORY[0x23EEBD040](v9, v8);

  return v14[0];
}

uint64_t sub_23BDAD3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v88 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v87 = &v80 - v8;
  MEMORY[0x28223BE20](v7);
  v86 = &v80 - v9;
  v10 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v95 = &v80 - v12;
  v81 = sub_23BDC6590();
  v13 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v94 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23BD9628C(&qword_27E1C5B18, &unk_23BDC92F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v85 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v96 = &v80 - v21;
  v22 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v80 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v80 - v30;
  v32 = sub_23BDC6010();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v92 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v80 - v37;
  v84 = v33;
  v39 = *(v33 + 16);
  v93 = v40;
  v39(&v80 - v37, a1);
  v41 = type metadata accessor for TemplateData();
  v42 = *(v41 + 20);
  v82 = a1;
  sub_23BD96394(a1 + v42, v31, &qword_27E1C5960, &qword_23BDC8F50);
  v91 = v31;
  sub_23BD96394(v31, v29, &qword_27E1C5960, &qword_23BDC8F50);
  v43 = sub_23BDC6240();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v46 = v45(v29, 1, v43);
  v90 = v38;
  if (v46 == 1)
  {
    sub_23BD962D4(v29, &qword_27E1C5960, &qword_23BDC8F50);
    memset(v100, 0, sizeof(v100));
    v101 = 0;
  }

  else
  {
    sub_23BDC6200();
    (*(v44 + 8))(v29, v43);
  }

  sub_23BD96394(v91, v26, &qword_27E1C5960, &qword_23BDC8F50);
  if (v45(v26, 1, v43) == 1)
  {
    sub_23BD962D4(v26, &qword_27E1C5960, &qword_23BDC8F50);
    v47 = sub_23BDC6110();
    (*(*(v47 - 8) + 56))(v96, 1, 1, v47);
  }

  else
  {
    sub_23BDC61C0();
    (*(v44 + 8))(v26, v43);
  }

  v48 = v88;
  v49 = v86;
  v50 = v85;
  v51 = v82;
  v52 = v82 + *(v41 + 24);
  v53 = (v52 + *(v81 + 32));
  v54 = *v53;
  v55 = v53[1];
  LODWORD(v88) = sub_23BDC6820();
  (v39)(v92, v51, v93);
  sub_23BD9CC98(v52, v94);
  sub_23BD96394(v100, v97, &qword_27E1C59A8, &unk_23BDC8EC0);
  v56 = v98;
  if (v98)
  {
    v57 = v99;
    sub_23BD9CCFC(v97, v98);
    v58 = v95;
    (*(v57 + 40))(v56, v57);
    v59 = sub_23BDC62F0();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    sub_23BD9CD40(v97);
  }

  else
  {
    sub_23BD962D4(v97, &qword_27E1C59A8, &unk_23BDC8EC0);
    v60 = sub_23BDC62F0();
    (*(*(v60 - 8) + 56))(v95, 1, 1, v60);
  }

  v61 = v87;
  sub_23BD96394(v100, v97, &qword_27E1C59A8, &unk_23BDC8EC0);
  v62 = v98;
  if (v98)
  {
    v63 = v99;
    sub_23BD9CCFC(v97, v98);
    (*(v63 + 88))(v62, v63);
    v64 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
    (*(*(v64 - 8) + 56))(v49, 0, 1, v64);
    sub_23BD9CD40(v97);
  }

  else
  {
    sub_23BD962D4(v97, &qword_27E1C59A8, &unk_23BDC8EC0);
    v65 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
    (*(*(v65 - 8) + 56))(v49, 1, 1, v65);
  }

  v66 = v83;
  sub_23BD96394(v96, v83, &qword_27E1C5B18, &unk_23BDC92F0);
  v67 = sub_23BDC6110();
  v68 = *(v67 - 8);
  v69 = *(v68 + 48);
  if (v69(v66, 1, v67) == 1)
  {
    sub_23BD962D4(v66, &qword_27E1C5B18, &unk_23BDC92F0);
    v70 = 1;
  }

  else
  {
    sub_23BDC60D0();
    (*(v68 + 8))(v66, v67);
    v70 = 0;
  }

  v71 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  (*(*(v71 - 8) + 56))(v61, v70, 1, v71);
  v72 = v96;
  sub_23BD96394(v96, v50, &qword_27E1C5B18, &unk_23BDC92F0);
  if (v69(v50, 1, v67) == 1)
  {
    sub_23BD962D4(v72, &qword_27E1C5B18, &unk_23BDC92F0);
    sub_23BD962D4(v100, &qword_27E1C59A8, &unk_23BDC8EC0);
    sub_23BD962D4(v91, &qword_27E1C5960, &qword_23BDC8F50);
    v73 = v84;
    v74 = v93;
    (*(v84 + 8))(v90, v93);
    sub_23BD962D4(v50, &qword_27E1C5B18, &unk_23BDC92F0);
    v75 = 1;
  }

  else
  {
    sub_23BDC60E0();
    sub_23BD962D4(v72, &qword_27E1C5B18, &unk_23BDC92F0);
    sub_23BD962D4(v100, &qword_27E1C59A8, &unk_23BDC8EC0);
    sub_23BD962D4(v91, &qword_27E1C5960, &qword_23BDC8F50);
    v73 = v84;
    v74 = v93;
    (*(v84 + 8))(v90, v93);
    (*(v68 + 8))(v50, v67);
    v75 = 0;
  }

  v76 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  (*(*(v76 - 8) + 56))(v48, v75, 1, v76);
  v77 = v89;
  (*(v73 + 32))(v89, v92, v74);
  v78 = type metadata accessor for ConditionTemplateModel();
  sub_23BDA8FD4(v94, v77 + v78[5]);
  sub_23BDA1D38(v95, v77 + v78[6], &qword_27E1C59F0, &unk_23BDC8F30);
  *(v77 + v78[7]) = v88 & 1;
  sub_23BDA1D38(v49, v77 + v78[8], &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BDA1D38(v61, v77 + v78[9], &qword_27E1C5790, &unk_23BDC92E0);
  return sub_23BDA1D38(v48, v77 + v78[10], &qword_27E1C5790, &unk_23BDC92E0);
}

unint64_t sub_23BDADF58(uint64_t a1)
{
  result = sub_23BDADF80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDADF80()
{
  result = qword_27E1C5B10;
  if (!qword_27E1C5B10)
  {
    type metadata accessor for ConditionTemplateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5B10);
  }

  return result;
}

uint64_t type metadata accessor for ConditionTemplateModel()
{
  result = qword_27E1C5B20;
  if (!qword_27E1C5B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDAE038(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 2)
    {
      return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23BDAE22C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_23BDC6590();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v17 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_23BDAE3FC()
{
  sub_23BDC6010();
  if (v0 <= 0x3F)
  {
    sub_23BDC6590();
    if (v1 <= 0x3F)
    {
      sub_23BDAE4C0();
      if (v2 <= 0x3F)
      {
        sub_23BDAE518();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BDAE4C0()
{
  if (!qword_27E1C5B30)
  {
    sub_23BDC62F0();
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C5B30);
    }
  }
}

void sub_23BDAE518()
{
  if (!qword_27E1C5B38)
  {
    sub_23BD9B8CC(&qword_27E1C5798, &unk_23BDC8D40);
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C5B38);
    }
  }
}

uint64_t sub_23BDAE57C@<X0>(void *a1@<X8>)
{
  v87 = a1;
  v1 = sub_23BDC6010();
  v82 = *(v1 - 8);
  v83 = v1;
  v2 = *(v82 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v80 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v78 = &v70 - v5;
  sub_23BD9628C(&qword_27E1C5B48, &qword_23BDC9370);
  v6 = sub_23BD9628C(&qword_27E1C5B50, &qword_23BDC9378);
  v75 = v6;
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v79 = 4 * v7;
  v9 = swift_allocObject();
  v77 = v9;
  *(v9 + 16) = xmmword_23BDC88C0;
  v10 = v9 + v8;
  v11 = *(v6 + 48);
  v12 = objc_opt_self();
  v13 = [v12 fahrenheit];
  v86 = sub_23BD96820(0, &qword_27E1C5AA0, 0x277CCAE48);
  sub_23BDC5F40();
  v14 = *MEMORY[0x277CE3250];
  v15 = sub_23BDC62F0();
  v81 = *(v15 - 8);
  v17 = v81 + 104;
  v16 = *(v81 + 104);
  v84 = v10;
  v85 = v14;
  v71 = v15;
  v16(v10 + v11, v14, v15);
  v72 = v7;
  v18 = v10 + v7;
  v19 = v75;
  v20 = *(v75 + 48);
  v21 = [v12 fahrenheit];
  sub_23BDC5F40();
  v74 = v17;
  v73 = v16;
  v16(v18 + v20, v14, v15);
  v22 = 2 * v7;
  v23 = v84;
  v24 = v84 + 2 * v7;
  v25 = *(v19 + 48);
  v26 = [v12 fahrenheit];
  sub_23BDC5F40();
  v27 = v24 + v25;
  v28 = v85;
  v29 = v71;
  v16(v27, v85, v71);
  v30 = v23 + v22 + v72;
  v31 = v23;
  v32 = v19;
  v33 = *(v19 + 48);
  v76 = v12;
  v34 = [v12 fahrenheit];
  sub_23BDC5F40();
  v35 = v29;
  v36 = v73;
  v73(v30 + v33, *MEMORY[0x277CE32B0], v29);
  v37 = v31 + v79;
  v38 = *(v32 + 48);
  v39 = [v12 fahrenheit];
  sub_23BDC5F40();
  v36(v37 + v38, v28, v35);
  v92 = 0;
  v93 = MEMORY[0x277D84F90];
  v40 = *sub_23BDC65E0();
  v79 = v40;

  v42 = v78;
  sub_23BD9D208(v41);
  v43 = v80;
  sub_23BDC5F80();
  v88 = v40;
  v44 = v77;
  v89 = v77;
  v90 = &v92;
  v91 = &v93;
  sub_23BDC5FD0();
  swift_setDeallocating();
  v45 = *(v44 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = v83;
  v47 = *(v82 + 8);
  v47(v43, v83);
  v47(v42, v46);
  v84 = v93;
  v48 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
  sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
  v49 = sub_23BDC6770();
  v83 = [v48 initWithEntries_];

  v50 = type metadata accessor for ConditionRectangularTemplateModel();
  v51 = v87 + v50[5];
  sub_23BD9D208(v50);
  v52 = type metadata accessor for ConditionTemplateModel();
  v53 = &v51[v52[5]];
  sub_23BD9D20C(v52);
  v54 = v52[6];
  v36(&v51[v54], v85, v35);
  (*(v81 + 56))(&v51[v54], 0, 1, v35);
  v55 = v52[8];
  v56 = v76;
  v57 = [v76 fahrenheit];
  sub_23BDC5F40();
  v58 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v59 = *(*(v58 - 8) + 56);
  v59(&v51[v55], 0, 1, v58);
  v60 = v52[9];
  v61 = [v56 fahrenheit];
  sub_23BDC5F40();
  v59(&v51[v60], 0, 1, v58);
  v62 = v52[10];
  v63 = [v56 fahrenheit];
  sub_23BDC5F40();
  v64 = (v59)(&v51[v62], 0, 1, v58);
  v51[v52[7]] = 1;
  v65 = v87;
  v66 = v87 + v50[6];
  v67 = sub_23BD9D208(v64);
  v68 = v65 + v50[7];
  sub_23BD9D20C(v67);

  *v65 = v83;
  return result;
}

uint64_t sub_23BDAECBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v10 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v50 - v12;
  v14 = sub_23BD9628C(&qword_27E1C5B50, &qword_23BDC9378);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v50 - v17;
  v19 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v50 - v21;
  v23 = *a4;
  if ((*a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = *(a3 + 16);
  if (v23 >= v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v53 = a5;
  v54 = v13;
  v56 = v24;
  v25 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v13 = *(v15 + 72);
  v50[1] = a1;
  v51 = v25;
  sub_23BD96394(v25 + v13 * v23, v18, &qword_27E1C5B50, &qword_23BDC9378);
  v55 = *(v14 + 48);
  v26 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v27 = a4;
  a4 = *(v26 - 8);
  (a4[4])(v22, v18, v26);
  (a4[7])(v22, 0, 1, v26);
  v52 = (*(*a2 + 152))(v22, 1, 1);
  v29 = v28;
  sub_23BD962D4(v22, &qword_27E1C5790, &unk_23BDC92E0);
  v30 = sub_23BDC62F0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 8);
  v33 = v14;
  v14 = v31 + 8;
  v32(&v18[v55], v30);
  v34 = *v27;
  if (*v27 >= v56)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = v29;
  sub_23BD96394(v51 + v34 * v13, v18, &qword_27E1C5B50, &qword_23BDC9378);
  v35 = *(v33 + 48);
  v55 = sub_23BDC62B0();
  v13 = v36;
  v32(&v18[v35], v30);
  (a4[1])(v18, v26);
  a4 = v27;
  if (!*v27)
  {
    v41 = 0;
    v14 = v54;
    goto LABEL_8;
  }

  v14 = v54;
  if (qword_27E1C55D8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v37 = qword_27E1C5B78;
    v38 = sub_23BDC5FA0();
    v39 = [v37 stringFromDate_];

    sub_23BDC66F0();
    v41 = v40;

LABEL_8:
    sub_23BDC60B0();
    v42 = sub_23BDC60C0();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v14, 0, 1, v42);
    v44 = sub_23BDC66C0();

    if (v13)
    {
      v45 = sub_23BDC66C0();

      if (v41)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v45 = 0;
      if (v41)
      {
LABEL_10:
        v46 = sub_23BDC66C0();

        goto LABEL_13;
      }
    }

    v46 = 0;
LABEL_13:
    if ((*(v43 + 48))(v14, 1, v42) == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = sub_23BDC60A0();
      (*(v43 + 8))(v14, v42);
    }

    v13 = [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v44 middleString:v45 bottomString:v46 isDay:1 timeZone:v47];

    v48 = v53;
    MEMORY[0x23EEBD070]();
    if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_22:
      sub_23BDC6790();
    }

    result = sub_23BDC67A0();
    if (!__OFADD__(*a4, 1))
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  ++*a4;
  return result;
}

uint64_t sub_23BDAF28C(uint64_t a1)
{
  result = sub_23BDAFE48(&qword_27E1C5B40, type metadata accessor for ConditionRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ConditionRectangularTemplateModel()
{
  result = qword_27E1C5B58;
  if (!qword_27E1C5B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDAF330(uint64_t a1, uint64_t a2, int a3)
{
  v53 = a3;
  v44 = a1;
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v44 - v8;
  v9 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v44 - v11;
  v12 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v44 - v21;
  v23 = sub_23BDC62F0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  sub_23BD96394(a2, v18, &qword_27E1C5660, &qword_23BDC89F0);
  v28 = sub_23BDC6280();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v31 = v30(v18, 1, v28);
  v46 = v27;
  if (v31 == 1)
  {
    sub_23BD962D4(v18, &qword_27E1C5660, &qword_23BDC89F0);
    (*(v24 + 56))(v22, 1, 1, v23);
    sub_23BDC61A0();
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      sub_23BD962D4(v22, &qword_27E1C59F0, &unk_23BDC8F30);
    }
  }

  else
  {
    sub_23BDC6270();
    (*(v29 + 8))(v18, v28);
    (*(v24 + 56))(v22, 0, 1, v23);
    (*(v24 + 32))(v27, v22, v23);
  }

  v50 = v23;
  sub_23BD96394(v45, v16, &qword_27E1C5660, &qword_23BDC89F0);
  if (v30(v16, 1, v28) == 1)
  {
    sub_23BD962D4(v16, &qword_27E1C5660, &qword_23BDC89F0);
    v32 = v47;
    v33 = v48;
    v34 = *(v48 + 56);
    v35 = v49;
    v34(v47, 1, 1, v49);
    v36 = v51;
    sub_23BDC6140();
    if ((*(v33 + 48))(v32, 1, v35) != 1)
    {
      sub_23BD962D4(v32, &qword_27E1C5790, &unk_23BDC92E0);
    }
  }

  else
  {
    v37 = v47;
    sub_23BDC6250();
    (*(v29 + 8))(v16, v28);
    v33 = v48;
    v35 = v49;
    v34 = *(v48 + 56);
    v34(v37, 0, 1, v49);
    v36 = v51;
    (*(v33 + 32))(v51, v37, v35);
  }

  v38 = *sub_23BDC65E0();
  v39 = v52;
  (*(v33 + 16))(v52, v36, v35);
  v34(v39, 0, 1, v35);
  v40 = *(*v38 + 152);

  v41 = v40(v39, 1, 1);
  sub_23BD962D4(v39, &qword_27E1C5790, &unk_23BDC92E0);
  v42 = v46;
  sub_23BDC62B0();

  (*(v33 + 8))(v36, v35);
  (*(v24 + 8))(v42, v50);
  return v41;
}

uint64_t sub_23BDAF9A0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ConditionTemplateModel();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}