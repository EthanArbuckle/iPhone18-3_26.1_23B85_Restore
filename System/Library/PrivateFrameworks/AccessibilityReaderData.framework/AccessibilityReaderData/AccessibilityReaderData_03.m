uint64_t storeEnumTagSinglePayload for AXRSpeechState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23D7CE430()
{
  sub_23D7CE76C(319, &qword_27E2E4A08, &qword_27E2E49B8, &qword_23D811A38);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    sub_23D7CE76C(319, &qword_27E2E4A10, &qword_27E2E49C0, &unk_23D811A40);
    if (v3 <= 0x3F)
    {
      v16 = *(v2 - 8) + 64;
      sub_23D7CE818(319, &qword_27E2E4A18);
      if (v5 <= 0x3F)
      {
        v17 = *(v4 - 8) + 64;
        sub_23D7CE7C0();
        if (v7 <= 0x3F)
        {
          v18 = *(v6 - 8) + 64;
          sub_23D7CE818(319, &qword_27E2E4A28);
          if (v9 <= 0x3F)
          {
            v10 = *(v8 - 8) + 64;
            sub_23D7CE818(319, &qword_27E2E4A30);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              sub_23D7CE818(319, &qword_27E2E4A38);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D7CE76C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23D80DA2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23D7CE7C0()
{
  if (!qword_27E2E4A20)
  {
    sub_23D80D6CC();
    v0 = sub_23D80DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E4A20);
    }
  }
}

void sub_23D7CE818(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23D80DA2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_23D7CE864()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D7CE8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRArticle();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23D7CE978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D7CE9C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D7CEA08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D7CEA6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D7CEAA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D7CECB0;

  return sub_23D7CCCF0(a1, v5);
}

uint64_t sub_23D7CEB5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D7A0C28;

  return sub_23D7CCCF0(a1, v5);
}

uint64_t sub_23D7CEC14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static AXReaderLaunchHelper.launchAccessibilityReader(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23D80D60C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D7CED8C, 0, 0);
}

uint64_t sub_23D7CED8C()
{
  if (v0[4])
  {
    v1 = VNDocumentObservation.text.getter();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  v4 = v0[8];
  v5 = v0[5];
  sub_23D7CF060(v0[2], v0[3], v1, v3, v4);

  v6 = swift_task_alloc();
  v0[9] = v6;
  *(v6 + 16) = v4;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_23D7CEEC4;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 11, 0, 0, 0x284C52556E65706FLL, 0xEB00000000293A5FLL, sub_23D7CFAC0, v6, v9);
}

uint64_t sub_23D7CEEC4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23D7CEFDC, 0, 0);
}

uint64_t sub_23D7CEFDC()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23D7CF060@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4AA0, &qword_23D811F78);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v50 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4AA8, &unk_23D811F80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = sub_23D80D51C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23D80D57C();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    sub_23D80D5FC();
    v38 = sub_23D80D60C();
    v39 = *(v38 - 8);
    result = (*(v39 + 48))(v12, 1, v38);
    if (result != 1)
    {
      return (*(v39 + 32))(a5, v12, v38);
    }

    __break(1u);
    goto LABEL_18;
  }

  v45 = v29;
  v46 = v28;
  v47 = a5;
  sub_23D80D56C();
  sub_23D80D55C();
  MEMORY[0x23EEEBE60](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A0, &qword_23D80FB18);
  v33 = *(v22 + 72);
  v34 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_23D80FB00;
  sub_23D80D50C();
  if (v49)
  {
    sub_23D80D50C();
    (*(v22 + 32))(v20, v25, v21);
    v51 = v35;
    v36 = *(v35 + 16);
    if (v36 >= *(v35 + 24) >> 1)
    {
      v51 = sub_23D790258(1uLL, v36 + 1, 1, v35);
    }

    v37 = v50;
    sub_23D7D0020(0, 0, 1, v20);
  }

  else
  {
    v37 = v50;
  }

  sub_23D80D52C();
  sub_23D80D53C();
  v41 = sub_23D80D60C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v16, 1, v41) != 1)
  {
    (*(v45 + 8))(v31, v46);

    return (*(v42 + 32))(v47, v16, v41);
  }

  sub_23D80D5FC();
  result = (v43)(v37, 1, v41);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  (*(v45 + 8))(v31, v46);

  (*(v42 + 32))(v47, v37, v41);
  result = (v43)(v16, 1, v41);
  if (result != 1)
  {
    return sub_23D790730(v16, &qword_27E2E4AA0, &qword_23D811F78);
  }

  return result;
}

uint64_t sub_23D7CF5DC(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v34 = a1;
  v37 = sub_23D80DC7C();
  v40 = *(v37 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D80DCAC();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A98, &qword_23D811F68);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v30 - v9;
  v10 = sub_23D80D60C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23D80DC8C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D7CFC18();
  (*(v15 + 104))(v18, *MEMORY[0x277D851B8], v14);
  v32 = sub_23D80E0DC();
  (*(v15 + 8))(v18, v14);
  (*(v11 + 16))(v13, v33, v10);
  v20 = v30;
  v19 = v31;
  (*(v7 + 16))(v30, v34, v31);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = (v12 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v11 + 32))(v23 + v21, v13, v10);
  (*(v7 + 32))(v23 + v22, v20, v19);
  aBlock[4] = sub_23D7CFDB8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D79FA1C;
  aBlock[3] = &block_descriptor_1;
  v24 = _Block_copy(aBlock);
  v25 = v35;
  sub_23D80DC9C();
  v41 = MEMORY[0x277D84F90];
  sub_23D7A1144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45C8, &qword_23D811F70);
  sub_23D7A119C();
  v27 = v36;
  v26 = v37;
  sub_23D80E1DC();
  v28 = v32;
  MEMORY[0x23EEEC9E0](0, v25, v27, v24);
  _Block_release(v24);

  (*(v40 + 8))(v27, v26);
  (*(v38 + 8))(v25, v39);
}

id sub_23D7CFAC8()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_23D80D5EC();
    sub_23D793ACC(MEMORY[0x277D84F90]);
    v3 = sub_23D80DCEC();

    [v1 openSensitiveURL:v2 withOptions:v3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A98, &qword_23D811F68);
    return sub_23D80DF4C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23D7CFC18()
{
  result = qword_27E2E45B8;
  if (!qword_27E2E45B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E45B8);
  }

  return result;
}

uint64_t sub_23D7CFC64()
{
  v1 = sub_23D80D60C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A98, &qword_23D811F68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

id sub_23D7CFDB8()
{
  v0 = *(sub_23D80D60C() - 8);
  v1 = ((*(v0 + 80) + 16) & ~*(v0 + 80)) + *(v0 + 64);
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A98, &qword_23D811F68) - 8) + 80);

  return sub_23D7CFAC8();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D7CFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for AXRArticle();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_23D790730(a4, &qword_27E2E49D8, &qword_23D811B10);
  }

  if (v17 < 1)
  {
    return sub_23D790730(a4, &qword_27E2E49D8, &qword_23D811B10);
  }

  result = sub_23D7B47E0(a4, v15);
  if (v12 >= v17)
  {
    return sub_23D790730(a4, &qword_27E2E49D8, &qword_23D811B10);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_23D7D0020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_23D80D51C();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_23D790730(v25, &qword_27E2E4AA8, &unk_23D811F80);
  }

  if (v18 < 1)
  {
    return sub_23D790730(v25, &qword_27E2E4AA8, &unk_23D811F80);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_23D790730(v25, &qword_27E2E4AA8, &unk_23D811F80);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_23D7D01BC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C0, &qword_23D811E40);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

id AXRViewInReaderService.__allocating_init(store:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23D7CEA08(a1, v3 + OBJC_IVAR____TtC23AccessibilityReaderData22AXRViewInReaderService_store);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id AXRViewInReaderService.init(store:)(uint64_t *a1)
{
  sub_23D7CEA08(a1, v1 + OBJC_IVAR____TtC23AccessibilityReaderData22AXRViewInReaderService_store);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXRViewInReaderService();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_23D7D045C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v51 - v4;
  v6 = type metadata accessor for AXRArticle();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23D80D4EC();
  if (result)
  {
    v11 = result;
    v63 = 0xD000000000000020;
    v64 = 0x800000023D816520;
    sub_23D80E21C();
    if (*(v11 + 16) && (v12 = sub_23D7AC760(v60), (v13 & 1) != 0))
    {
      sub_23D793694(*(v11 + 56) + 32 * v12, &v63);
      sub_23D7AF764(v60);
      v14 = swift_dynamicCast();
      v15 = v58;
      if (!v14)
      {
        v15 = 0;
      }

      v57 = v15;
      if (v14)
      {
        v16 = v59;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      sub_23D7AF764(v60);
      v57 = 0;
      v16 = 0;
    }

    v63 = 0xD000000000000021;
    v64 = 0x800000023D816550;
    sub_23D80E21C();
    if (*(v11 + 16) && (v17 = sub_23D7AC760(v60), (v18 & 1) != 0))
    {
      sub_23D793694(*(v11 + 56) + 32 * v17, &v63);
      sub_23D7AF764(v60);
      v19 = swift_dynamicCast();
      v20 = v58;
      if (!v19)
      {
        v20 = 0;
      }

      v56 = v20;
      if (v19)
      {
        v21 = v59;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      sub_23D7AF764(v60);
      v56 = 0;
      v21 = 0;
    }

    v63 = 0xD000000000000020;
    v64 = 0x800000023D816580;
    sub_23D80E21C();
    if (*(v11 + 16) && (v22 = sub_23D7AC760(v60), (v23 & 1) != 0))
    {
      sub_23D793694(*(v11 + 56) + 32 * v22, &v63);
      sub_23D7AF764(v60);
      v24 = swift_dynamicCast();
      v25 = v58;
      if (!v24)
      {
        v25 = 0;
      }

      v55 = v25;
      if (v24)
      {
        v26 = v59;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      sub_23D7AF764(v60);
      v55 = 0;
      v26 = 0;
    }

    v63 = 0xD00000000000001ELL;
    v64 = 0x800000023D8165B0;
    sub_23D80E21C();
    if (*(v11 + 16) && (v27 = sub_23D7AC760(v60), (v28 & 1) != 0))
    {
      sub_23D793694(*(v11 + 56) + 32 * v27, &v63);
      sub_23D7AF764(v60);

      v29 = swift_dynamicCast();
      if (v29)
      {
        v30 = v58;
      }

      else
      {
        v30 = 0;
      }

      if (v29)
      {
        v31 = v59;
      }

      else
      {
        v31 = 0;
      }

      if (!v16)
      {
        goto LABEL_41;
      }
    }

    else
    {

      sub_23D7AF764(v60);
      v30 = 0;
      v31 = 0;
      if (!v16)
      {
LABEL_41:
      }
    }

    if (v21 && v26 && v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C8, &unk_23D811FC0);
      v54 = v1;
      v32 = type metadata accessor for AXRTextContent();
      v53 = v16;
      v33 = (v32 - 8);
      v34 = *(*(v32 - 8) + 72);
      v35 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
      v36 = swift_allocObject();
      v52 = v36;
      *(v36 + 16) = xmmword_23D80FB00;
      v37 = v36 + v35;
      v38 = sub_23D80D5BC();
      (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
      v39 = v33[15];
      *(v37 + v39) = 0;
      sub_23D80D66C();
      v40 = (v37 + v33[7]);
      *v40 = v55;
      v40[1] = v26;
      *(v37 + v33[8]) = 0;
      *(v37 + v33[11]) = 0;
      sub_23D7D0FB0(v5, v37 + v33[12]);
      v41 = v37 + v33[9];
      *v41 = 1;
      *(v41 + 8) = 0;
      *(v37 + v33[10]) = 0;
      *(v37 + v33[13]) = 0;
      *(v37 + v33[14]) = 0;
      v42 = *(v37 + v39);
      *(v37 + v39) = 0;

      v43 = v6[9];
      v44 = sub_23D80D63C();
      (*(*(v44 - 8) + 56))(&v9[v43], 1, 1, v44);
      sub_23D80D66C();
      v45 = &v9[v6[5]];
      v46 = v53;
      *v45 = v57;
      *(v45 + 1) = v46;
      v47 = &v9[v6[6]];
      *v47 = v56;
      *(v47 + 1) = v21;
      v48 = &v9[v6[7]];
      *v48 = v30;
      *(v48 + 1) = v31;
      *&v9[v6[8]] = v52;
      v9[v6[10]] = 0;
      v9[v6[11]] = 0;
      sub_23D7CEA08(v54 + OBJC_IVAR____TtC23AccessibilityReaderData22AXRViewInReaderService_store, v60);
      v49 = v61;
      v50 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      (*(v50 + 16))(v9, v49, v50);
      sub_23D7B4844(v9);
      return __swift_destroy_boxed_opaque_existential_1(v60);
    }

    goto LABEL_41;
  }

  return result;
}

id AXRViewInReaderService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXRViewInReaderService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXRViewInReaderService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s23AccessibilityReaderData09AXRViewInB7ServiceC04vieweB07appName8bundleID7content5titleySS_S3SSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_23D793F04(MEMORY[0x277D84F90]);
  v15 = MEMORY[0x277D837D0];
  sub_23D80E21C();
  v27 = v15;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  sub_23D794258(&v26, v25);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v14;
  sub_23D7AD818(v25, v28, isUniquelyReferenced_nonNull_native);
  sub_23D7AF764(v28);
  v17 = v29;
  *&v26 = 0xD000000000000021;
  *(&v26 + 1) = 0x800000023D816550;
  sub_23D80E21C();
  v27 = v15;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  sub_23D794258(&v26, v25);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v17;
  sub_23D7AD818(v25, v28, v18);
  sub_23D7AF764(v28);
  v19 = v29;
  *&v26 = 0xD000000000000020;
  *(&v26 + 1) = 0x800000023D816580;
  sub_23D80E21C();
  v27 = v15;
  *&v26 = a5;
  *(&v26 + 1) = a6;
  sub_23D794258(&v26, v25);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_23D7AD818(v25, v28, v20);
  sub_23D7AF764(v28);
  v29 = v19;
  *&v26 = 0xD00000000000001ELL;
  *(&v26 + 1) = 0x800000023D8165B0;
  sub_23D80E21C();
  if (a8)
  {
    v27 = v15;
    *&v26 = a7;
    *(&v26 + 1) = a8;
    sub_23D794258(&v26, v25);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_23D7AD818(v25, v28, v21);
  }

  else
  {
    sub_23D80C420(v28, &v26);
    sub_23D7D1020(&v26);
  }

  sub_23D7AF764(v28);
}

uint64_t sub_23D7D0FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7D1020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45A0, &qword_23D810320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AXRTextBlock.__allocating_init(id:blockText:containsSelection:selectedLocalTextRange:languageRanges:playbackSpeed:isHeader:headingLevel:isLink:isListElement:indexPath:attributedBlockText:preferredSpeakingLanguage:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6, int a7, uint64_t a8, int *a9, unsigned __int8 a10, uint64_t a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v78 = a8;
  v76 = a7;
  v77 = a6;
  v75 = a5;
  v70 = a3;
  v89 = a2;
  v90 = a1;
  v73 = 0;
  v80 = a11;
  LODWORD(v87) = a10;
  v69 = a4 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v84 = &v68[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v83 = &v68[-v25];
  v26 = sub_23D80D67C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v68[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *(v19 + 48);
  v32 = *(v19 + 52);
  v33 = swift_allocObject();
  v72 = *a9;
  v71 = *(a9 + 4);
  sub_23D80D66C();
  v34 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v35 = *(v27 + 32);
  v35(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v30, v26);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
  v37 = v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
  v38 = v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  *v38 = 4;
  *(v38 + 4) = 1;
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
  v40 = v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  *v40 = 0;
  *(v40 + 8) = 1;
  v74 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
  v79 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
  v41 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  v42 = sub_23D80D6CC();
  (*(*(v42 - 8) + 56))(v33 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  v44 = sub_23D80D5BC();
  (*(*(v44 - 8) + 56))(v33 + v43, 1, 1, v44);
  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
  v81 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
  v45 = (v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  *v45 = 0;
  v45[1] = 0;
  v46 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  sub_23D80D72C();
  (*(v27 + 16))(v30, v90, v26);
  v47 = *(v27 + 8);
  v85 = v27 + 8;
  v82 = v47;
  v47(v33 + v34, v26);
  v86 = v26;
  v35(v33 + v34, v30, v26);
  v48 = v69;
  v49 = v70;
  v50 = (v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  *v50 = v89;
  v50[1] = v49;

  *(v33 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
  swift_beginAccess();
  v51 = *(v33 + v36);
  v88 = v46;
  if (v51 == v48)
  {
    *(v33 + v36) = v48;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v68[-16] = v33;
    v68[-8] = v48;
    v95 = v33;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D2E58(v75, v77, v76 & 1);
  sub_23D7D339C(v78);
  LODWORD(v95) = v72;
  BYTE4(v95) = v71;
  sub_23D7D37C0(&v95);
  swift_beginAccess();
  v53 = v87 & 1;
  if (*(v33 + v39) == (v87 & 1))
  {
    *(v33 + v39) = v53;
  }

  else
  {
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54);
    *&v68[-16] = v33;
    v68[-8] = v53;
    v94 = v33;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v55 = v74;
  v87 = a16;
  v78 = a15;
  sub_23D7D42EC(v80, a12 & 1);
  swift_beginAccess();
  v56 = a14 & 1;
  if (*(v33 + v55) == (a14 & 1))
  {
    *(v33 + v55) = v56;
  }

  else
  {
    v57 = swift_getKeyPath();
    MEMORY[0x28223BE20](v57);
    *&v68[-16] = v33;
    v68[-8] = v56;
    v93 = v33;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v58 = v79;
  v80 = a18;
  swift_beginAccess();
  v59 = a13 & 1;
  if (*(v33 + v58) == (a13 & 1))
  {
    *(v33 + v58) = v59;
  }

  else
  {
    v60 = swift_getKeyPath();
    MEMORY[0x28223BE20](v60);
    *&v68[-16] = v33;
    v68[-8] = v59;
    v92 = v33;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v61 = v81;
  v62 = v78;
  v63 = v83;
  sub_23D790648(v78, v83, &qword_27E2E43F8, &qword_23D811650);
  sub_23D7D4AF8(v63);
  v64 = v84;
  sub_23D790648(v87, v84, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D7D512C(v64);
  v65 = sub_23D7A1CF4(v89, v49);

  swift_beginAccess();
  if (v65 == *(v33 + v61))
  {
    *(v33 + v61) = v65;
  }

  else
  {
    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    *&v68[-16] = v33;
    v68[-8] = v65;
    v91 = v33;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D6068(a17, v80);
  sub_23D790730(v87, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790730(v62, &qword_27E2E43F8, &qword_23D811650);
  v82(v90, v86);
  return v33;
}

uint64_t sub_23D7D1B38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v5 = sub_23D80D67C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_23D7D1C30(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23D80D67C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_23D7D1DF4(v7);
}

uint64_t sub_23D7D1CFC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v4 = sub_23D80D67C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_23D7D1DF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23D80D67C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_23D7DB084(&qword_27E2E4B48, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_23D80DD3C();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_23D7D2094(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D80D67C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_23D7D21B0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D1AD8();
  return sub_23D7D22E8;
}

uint64_t sub_23D7D2354()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23D7D2424(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (v7 = v5[1], (sub_23D80E4DC() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }
}

uint64_t sub_23D7D2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*sub_23D7D25F8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D22F4();
  return sub_23D7D2730;
}

uint64_t sub_23D7D279C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_23D7D2858(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  return result;
}

void (*sub_23D7D2978(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D273C();
  return sub_23D7D2AB0;
}

uint64_t sub_23D7D2B94(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_23D7D2BF0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D2ABC();
  return sub_23D7D2D28;
}

uint64_t sub_23D7D2D94()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t sub_23D7D2E58(unint64_t a1, unint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  result = swift_beginAccess();
  if ((*(v7 + 16) & 1) == 0)
  {
    if ((a3 & 1) != 0 || (*v7 ^ a1) >> 14 || (*(v7 + 8) ^ a2) >= 0x4000)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = a3 & 1;
    return result;
  }

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6EC();
}

uint64_t sub_23D7D2FD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  result = swift_beginAccess();
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4 & 1;
  return result;
}

void (*sub_23D7D3044(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D2D34();
  return sub_23D7D317C;
}

uint64_t sub_23D7D31E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23D7D32B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D7D339C(v4);
}

uint64_t sub_23D7D32DC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_23D7D339C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  if (sub_23D7D9400(*(v1 + v3), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }
}

uint64_t sub_23D7D34DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*sub_23D7D354C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D3188();
  return sub_23D7D3684;
}

uint64_t sub_23D7D36F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v3 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a1 = *v3;
  *(a1 + 4) = v5;
  return result;
}

uint64_t sub_23D7D37C0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  if (*(v4 + 4) == 1)
  {
    switch(*v4)
    {
      case 1:
        v6 = LODWORD(v2) == 1;
        break;
      case 2:
        v6 = LODWORD(v2) == 2;
        break;
      case 3:
        v6 = LODWORD(v2) == 3;
        break;
      case 4:
        v6 = LODWORD(v2) == 4;
        break;
      case 5:
        v6 = LODWORD(v2) == 5;
        break;
      case 6:
        v6 = LODWORD(v2) == 6;
        break;
      case 7:
        v6 = LODWORD(v2) == 7;
        break;
      case 8:
        v6 = LODWORD(v2) == 8;
        break;
      case 9:
        v6 = LODWORD(v2) == 9;
        break;
      case 0xA:
        v6 = LODWORD(v2) == 10;
        break;
      case 0xB:
        v6 = LODWORD(v2) == 11;
        break;
      case 0xC:
        v6 = LODWORD(v2) == 12;
        break;
      case 0xD:
        v6 = LODWORD(v2) == 13;
        break;
      case 0xE:
        v6 = LODWORD(v2) == 14;
        break;
      case 0xF:
        v6 = LODWORD(v2) == 15;
        break;
      case 0x10:
        if (LODWORD(v2) > 0xF)
        {
          v9 = v3;
        }

        else
        {
          v9 = 0;
        }

        if (v9)
        {
          goto LABEL_33;
        }

        goto LABEL_8;
      default:
        v6 = LODWORD(v2) == 0;
        break;
    }

    if (v6)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_33;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  if (*v4 == v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_33:
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

uint64_t sub_23D7D3A0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  *v3 = a2;
  *(v3 + 4) = BYTE4(a2) & 1;
  return result;
}

void (*sub_23D7D3A70(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D3690();
  return sub_23D7D3BA8;
}

uint64_t sub_23D7D3C28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_23D7D3D2C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_23D7D3E08(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  return result;
}

uint64_t sub_23D7D3F24(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_23D7D3F80(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D3BB4();
  return sub_23D7D40B8;
}

uint64_t sub_23D7D4124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_23D7D4228()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_23D7D42EC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  result = swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6EC();
}

void (*sub_23D7D4440(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D40C4();
  return sub_23D7D4578;
}

uint64_t sub_23D7D465C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_23D7D46B8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D4584();
  return sub_23D7D47F0;
}

uint64_t sub_23D7D48D4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_23D7D4930(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D47FC();
  return sub_23D7D4A68;
}

uint64_t sub_23D7D4AF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D790648(v1 + v7, v6, &qword_27E2E43F8, &qword_23D811650);
  v8 = sub_23D7D96F4(v6, a1);
  sub_23D790730(v6, &qword_27E2E43F8, &qword_23D811650);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    sub_23D790648(a1, v6, &qword_27E2E43F8, &qword_23D811650);
    swift_beginAccess();
    sub_23D7D9FE8(v6, v1 + v7, &qword_27E2E43F8, &qword_23D811650);
    swift_endAccess();
  }

  return sub_23D790730(a1, &qword_27E2E43F8, &qword_23D811650);
}

void (*sub_23D7D4D00(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D4A74();
  return sub_23D7D4E38;
}

uint64_t sub_23D7D4EA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  swift_beginAccess();
  return sub_23D790648(v3 + v4, a2, &qword_27E2E43F0, &unk_23D811FD0);
}

uint64_t sub_23D7D4F7C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_23D790648(a1, &v10 - v6, &qword_27E2E43F0, &unk_23D811FD0);
  v8 = *a2;
  return sub_23D7D512C(v7);
}

uint64_t sub_23D7D504C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v9 = *a1;
  swift_beginAccess();
  return sub_23D790648(v11 + v9, a4, a2, a3);
}

uint64_t sub_23D7D512C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  swift_beginAccess();
  sub_23D790648(v1 + v7, v6, &qword_27E2E43F0, &unk_23D811FD0);
  v8 = sub_23D7D9A14(v6, a1);
  sub_23D790730(v6, &qword_27E2E43F0, &unk_23D811FD0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    sub_23D790648(a1, v6, &qword_27E2E43F0, &unk_23D811FD0);
    swift_beginAccess();
    sub_23D7D9FE8(v6, v1 + v7, &qword_27E2E43F0, &unk_23D811FD0);
    swift_endAccess();
  }

  return sub_23D790730(a1, &qword_27E2E43F0, &unk_23D811FD0);
}

uint64_t sub_23D7D5334(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  sub_23D790648(a2, &v16 - v12, a3, a4);
  v14 = *a5;
  swift_beginAccess();
  sub_23D7D9FE8(v13, a1 + v14, a3, a4);
  return swift_endAccess();
}

void (*sub_23D7D5418(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D4E44();
  return sub_23D7D5550;
}

id sub_23D7D555C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  v6 = sub_23D80D5BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  swift_getKeyPath();
  v23 = v0;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v14 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  swift_beginAccess();
  sub_23D790648(v1 + v14, v5, &qword_27E2E43F0, &unk_23D811FD0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_23D790730(v5, &qword_27E2E43F0, &unk_23D811FD0);
    swift_getKeyPath();
    v22[0] = v1;
    sub_23D80D6FC();

    v15 = (v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
    swift_beginAccess();
    v17 = *v15;
    v16 = v15[1];
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v19 = sub_23D80DD4C();

    v20 = [v18 initWithString_];
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    sub_23D7DA084();
    (*(v7 + 16))(v11, v13, v6);
    v20 = sub_23D80E0EC();
    (*(v7 + 8))(v13, v6);
  }

  return v20;
}

void (*sub_23D7D5960(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D5888();
  return sub_23D7D5A98;
}

void (*sub_23D7D5B7C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D5AA4();
  return sub_23D7D5CB4;
}

uint64_t sub_23D7D5D98(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_23D7D5DF4(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D5CC0();
  return sub_23D7D5F2C;
}

uint64_t sub_23D7D5F98()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23D7D6068(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = v5[1];
      if (sub_23D80E4DC())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6EC();
}

uint64_t sub_23D7D61D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*sub_23D7D624C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D5F38();
  return sub_23D7D6384;
}

void sub_23D7D6390(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_23D80D70C();

  free(v1);
}

uint64_t AXRTextBlock.init(id:blockText:containsSelection:selectedLocalTextRange:languageRanges:playbackSpeed:isHeader:headingLevel:isLink:isListElement:indexPath:attributedBlockText:preferredSpeakingLanguage:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6, int a7, uint64_t a8, int *a9, unsigned __int8 a10, uint64_t a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v75 = a8;
  v72 = a7;
  v73 = a6;
  v71 = a5;
  v67 = a3;
  v86 = a2;
  v87 = a1;
  v70 = 0;
  v77 = a11;
  LODWORD(v84) = a10;
  v66 = a4 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v81 = &v65[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v80 = &v65[-v25];
  v26 = sub_23D80D67C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v65[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = *a9;
  v68 = *(a9 + 4);
  sub_23D80D66C();
  v31 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v32 = *(v27 + 32);
  v32(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v30, v26);
  v33 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
  v34 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
  v35 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  *v35 = 4;
  *(v35 + 4) = 1;
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
  v37 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  *v37 = 0;
  *(v37 + 8) = 1;
  v74 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
  v76 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
  v38 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  v39 = sub_23D80D6CC();
  (*(*(v39 - 8) + 56))(v19 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  v41 = sub_23D80D5BC();
  (*(*(v41 - 8) + 56))(v19 + v40, 1, 1, v41);
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
  v78 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
  v42 = (v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  *v42 = 0;
  v42[1] = 0;
  v43 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  sub_23D80D72C();
  (*(v27 + 16))(v30, v87, v26);
  v44 = *(v27 + 8);
  v82 = v27 + 8;
  v79 = v44;
  v44(v19 + v31, v26);
  v83 = v26;
  v32(v19 + v31, v30, v26);
  v45 = v66;
  v46 = v67;
  v47 = (v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  *v47 = v86;
  v47[1] = v46;

  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
  swift_beginAccess();
  v48 = *(v19 + v33);
  v85 = v43;
  if (v48 == v45)
  {
    *(v19 + v33) = v45;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v65[-16] = v19;
    v65[-8] = v45;
    v92 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D2E58(v71, v73, v72 & 1);
  sub_23D7D339C(v75);
  LODWORD(v92) = v69;
  BYTE4(v92) = v68;
  sub_23D7D37C0(&v92);
  swift_beginAccess();
  v50 = v84 & 1;
  if (*(v19 + v36) == (v84 & 1))
  {
    *(v19 + v36) = v50;
  }

  else
  {
    v51 = swift_getKeyPath();
    MEMORY[0x28223BE20](v51);
    *&v65[-16] = v19;
    v65[-8] = v50;
    v91 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v52 = v74;
  v84 = a16;
  v75 = a15;
  sub_23D7D42EC(v77, a12 & 1);
  swift_beginAccess();
  v53 = a14 & 1;
  if (*(v19 + v52) == (a14 & 1))
  {
    *(v19 + v52) = v53;
  }

  else
  {
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54);
    *&v65[-16] = v19;
    v65[-8] = v53;
    v90 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v55 = v76;
  v77 = a18;
  swift_beginAccess();
  v56 = a13 & 1;
  if (*(v19 + v55) == (a13 & 1))
  {
    *(v19 + v55) = v56;
  }

  else
  {
    v57 = swift_getKeyPath();
    MEMORY[0x28223BE20](v57);
    *&v65[-16] = v19;
    v65[-8] = v56;
    v89 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v58 = v78;
  v59 = v75;
  v60 = v80;
  sub_23D790648(v75, v80, &qword_27E2E43F8, &qword_23D811650);
  sub_23D7D4AF8(v60);
  v61 = v81;
  sub_23D790648(v84, v81, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D7D512C(v61);
  v62 = sub_23D7A1CF4(v86, v46);

  swift_beginAccess();
  if (v62 == *(v19 + v58))
  {
    *(v19 + v58) = v62;
  }

  else
  {
    v63 = swift_getKeyPath();
    MEMORY[0x28223BE20](v63);
    *&v65[-16] = v19;
    v65[-8] = v62;
    v88 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D6068(a17, v77);
  sub_23D790730(v84, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790730(v59, &qword_27E2E43F8, &qword_23D811650);
  v79(v87, v83);
  return v19;
}

uint64_t type metadata accessor for AXRTextBlock()
{
  result = qword_27E2E4B60;
  if (!qword_27E2E4B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7D6FDC()
{
  v1 = v0;
  v2 = sub_23D80D67C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v0;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v7 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  sub_23D7DB084(&qword_27E2E4820, MEMORY[0x277CC95F0]);
  sub_23D80DD0C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23D7D71A4()
{
  v1 = v0;
  v2 = sub_23D80D97C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - v8;
  swift_getKeyPath();
  v31 = v0;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  if (*(*(v1 + v10) + 16))
  {
    if (qword_27E2E4248 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v2, qword_27E2E5348);
    swift_beginAccess();
    (*(v3 + 16))(v7, v11, v2);
    v12 = sub_23D80D95C();
    v13 = sub_23D80E06C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23D78A000, v12, v13, "Using existing languageRanges", v14, 2u);
      MEMORY[0x23EEED790](v14, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    if (qword_27E2E4248 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v2, qword_27E2E5348);
    swift_beginAccess();
    (*(v3 + 16))(v9, v16, v2);
    v17 = sub_23D80D95C();
    v18 = sub_23D80E06C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23D78A000, v17, v18, "Language Tagging as languageRanges is Empty", v19, 2u);
      MEMORY[0x23EEED790](v19, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    swift_getKeyPath();
    v30[3] = v1;
    sub_23D80D6FC();

    v20 = (v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
    swift_beginAccess();
    v21 = v20[1];
    if (v21)
    {
      v22 = *v20;
      swift_getKeyPath();
      v30[0] = v1;

      sub_23D80D6FC();

      v23 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText;
      swift_beginAccess();
      v24 = _sSS23AccessibilityReaderDataE25getLanguageAndRangeMapFor9substring04withE0SayAA013AXRTextLocalefG0VGSS_SStFZ_0(*v23, *(v23 + 8), v22, v21);

      v25 = v24;
    }

    else
    {
      swift_getKeyPath();
      v30[0] = v1;
      sub_23D80D6FC();

      v26 = (v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
      swift_beginAccess();
      v28 = *v26;
      v27 = v26[1];

      v29 = static String.getLanguageAndRangeMapFor(substring:)();

      v25 = v29;
    }

    return sub_23D7D339C(v25);
  }
}

uint64_t sub_23D7D7664@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_23D7D71A4();
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  swift_beginAccess();
  if (*(v1 + v4) == 1)
  {
    *(v1 + v4) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = sub_23D80D92C();
  v9 = MEMORY[0x277D703A0];
  a1[3] = v8;
  a1[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(a1);

  return sub_23D80D93C();
}

uint64_t sub_23D7D787C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v35 = sub_23D80D90C();
  v34 = *(v35 - 8);
  v5 = *(v34 + 64);
  v6 = MEMORY[0x28223BE20](v35);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[3];
  v33[1] = a1[2];
  v33[0] = v13;
  swift_getKeyPath();
  v41[0] = a2;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  swift_getKeyPath();
  v41[0] = a2;
  sub_23D80D6FC();

  v14 = (a2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v15 = v14[1];
  v16 = *v14 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v15) & 0xF;
  }

  if (v11 >> 14 <= 4 * v16 && v11 >> 14 >= v12 >> 14)
  {
    swift_getKeyPath();
    v41[0] = a2;
    sub_23D80D6FC();

    v18 = *v14;
    v19 = v14[1];

    v20 = sub_23D80DE8C();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    MEMORY[0x23EEEC6B0](v20, v22, v24, v26);

    sub_23D80D91C();

    sub_23D80D8FC();

    v27 = *(v34 + 8);
    v28 = v8;
    v29 = v35;
    v27(v28, v35);
    sub_23D80D7AC();
    v27(v10, v29);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    swift_getKeyPath();
    *&v39[0] = a2;
    sub_23D80D6FC();

    v30 = (a2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed);
    swift_beginAccess();
    if (v30[1])
    {
      v31 = qword_23D812428[*v30];
    }

    LOBYTE(v39[0]) = 0;
    sub_23D80D79C();
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_23D80D78C();
    sub_23D80D8AC();
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_23D80D8AC();
    sub_23D7CEA08(v38, v37);
    sub_23D80D8EC();
    sub_23D790730(v37, &qword_27E2E4A88, &qword_23D811E88);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_23D80D8EC();
    sub_23D790730(v39, &qword_27E2E4A88, &qword_23D811E88);
  }

  sub_23D80D8AC();
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_23D7D7D24(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v8 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  result = swift_beginAccess();
  if (*(a5 + v8) == 1)
  {
    sub_23D7D2E58(a1, a2, 0);
    v10 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
    result = swift_beginAccess();
    if (*(a5 + v10) == 1)
    {
      *(a5 + v10) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_23D80D6EC();
    }
  }

  return result;
}

uint64_t sub_23D7D7ED0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  sub_23D7D71A4();
  v8 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  swift_beginAccess();
  v40 = a3;
  if (*(v3 + v8) == 1)
  {
    *(v3 + v8) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  v11 = *(v3 + v10);
  v12 = *(v11 + 16);

  if (v12)
  {
    v14 = 0;
    v15 = a1 >> 14;
    v16 = a2 >> 14;
    v17 = -v12;
    v18 = v11 + 56;
    v19 = MEMORY[0x277D84F90];
    v36 = v11 + 56;
    v37 = v11;
    do
    {
      v20 = *(v11 + 16);
      if (v14 > v20)
      {
        v20 = v14;
      }

      v21 = -v20;
      v22 = (v18 + 32 * v14++);
      while (1)
      {
        if (v21 + v14 == 1)
        {
          __break(1u);
          return result;
        }

        v23 = *(v22 - 3);
        v24 = *(v22 - 2);
        if (v23 >> 14 >= v15)
        {
          break;
        }

        v25 = v23 >> 14 >= v16 || v15 == v16;
        if (!v25 && v15 < v24 >> 14)
        {
          break;
        }

        ++v14;
        v22 += 4;
        if (v17 + v14 == 1)
        {
          goto LABEL_26;
        }
      }

      v38 = *(v22 - 1);
      v39 = *v22;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23D795438(0, *(v19 + 16) + 1, 1);
      }

      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_23D795438((v27 > 1), v28 + 1, 1);
      }

      *(v19 + 16) = v28 + 1;
      v29 = (v19 + 32 * v28);
      v29[4] = v23;
      v29[5] = v24;
      v29[6] = v38;
      v29[7] = v39;
      v18 = v36;
      v11 = v37;
    }

    while (v17 + v14);
  }

LABEL_26:

  swift_getKeyPath();
  sub_23D80D6FC();

  v30 = (v4 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  swift_getKeyPath();

  sub_23D80D6FC();

  sub_23D80DE1C();

  MEMORY[0x28223BE20](v33);
  v34 = sub_23D80D92C();
  v35 = MEMORY[0x277D703A0];
  v40[3] = v34;
  v40[4] = v35;
  __swift_allocate_boxed_opaque_existential_1(v40);
  return sub_23D80D93C();
}

uint64_t sub_23D7D8318@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v46 = a4;
  v9 = sub_23D80D90C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v43 - v16;
  v18 = a1[2];
  v19 = a1[3];
  v20 = *a1 >> 14;
  v21 = a2 >> 14;
  v22 = a1[1] >> 14;
  if (v20 < a2 >> 14)
  {
    if (v22 >= v21)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v21 = v20;
LABEL_5:
  v43[1] = v19;
  v43[2] = v18;
  v44 = v15;
  v45 = a5;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  v50[0] = a3;
  v24 = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  v43[3] = v23;
  v43[0] = v24;
  sub_23D80D6FC();

  v25 = (a3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  result = swift_beginAccess();
  if (v22 < v21)
  {
    __break(1u);
  }

  else
  {
    v29 = v25;
    v27 = *v25;
    v28 = v29[1];

    v30 = sub_23D80DE8C();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    MEMORY[0x23EEEC6B0](v30, v32, v34, v36);

    sub_23D80D91C();
    v37 = swift_allocObject();
    v38 = v46;
    *(v37 + 16) = a3;
    *(v37 + 24) = v38;

    sub_23D80D8FC();

    v39 = *(v10 + 8);
    v40 = v44;
    v39(v14, v44);
    sub_23D80D7AC();
    v39(v17, v40);
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    swift_getKeyPath();
    v50[0] = a3;
    sub_23D80D6FC();

    v41 = (a3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed);
    swift_beginAccess();
    if (v41[1])
    {
      v42 = qword_23D812428[*v41];
    }

    LOBYTE(v50[0]) = 0;
    sub_23D80D79C();
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    sub_23D80D78C();
    sub_23D80D8AC();
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_23D80D8AC();
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  return result;
}

uint64_t sub_23D7D8730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  result = swift_beginAccess();
  if (*(a5 + v6) == 1)
  {
    swift_getKeyPath();
    sub_23D80D6FC();

    v8 = (a5 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
    swift_beginAccess();
    if ((v8[1] & 0x2000000000000000) == 0)
    {
      v9 = *v8;
    }

    *v8;
    swift_getKeyPath();
    sub_23D80D6FC();

    v10 = *v8;
    v11 = v8[1];

    v12 = sub_23D80DDCC();
    LOBYTE(v10) = v13;

    if ((v10 & 1) == 0)
    {
      swift_getKeyPath();
      sub_23D80D6FC();

      v14 = *v8;
      v15 = v8[1];

      v16 = sub_23D80DDCC();
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        if (v16 >> 14 < v12 >> 14)
        {
          __break(1u);
        }

        else
        {
          sub_23D7D2E58(v12, v16, 0);
          v19 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
          result = swift_beginAccess();
          if (*(a5 + v19) == 1)
          {
            *(a5 + v19) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            sub_23D80D6EC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23D7D8A48()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v4 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  swift_beginAccess();
  if (*(v4 + 16) == 1)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 1;
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x28223BE20](v5);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  result = swift_beginAccess();
  if (*(v1 + v6))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x28223BE20](v8);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    *(v1 + v6) = 0;
  }

  return result;
}

uint64_t sub_23D7D8D54(int *a1)
{
  v1 = *(a1 + 4);
  v3 = *a1;
  v4 = v1;
  return sub_23D7D37C0(&v3);
}

uint64_t AXRTextBlock.deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v2 = sub_23D80D67C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges);

  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath, &qword_27E2E43F8, &qword_23D811650);
  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText, &qword_27E2E43F0, &unk_23D811FD0);
  v5 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage + 8);

  v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  v7 = sub_23D80D73C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t AXRTextBlock.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v2 = sub_23D80D67C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges);

  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath, &qword_27E2E43F8, &qword_23D811650);
  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText, &qword_27E2E43F0, &unk_23D811FD0);
  v5 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage + 8);

  v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  v7 = sub_23D80D73C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t sub_23D7D8FF4()
{
  sub_23D80E58C();
  type metadata accessor for AXRTextBlock();
  sub_23D7DB084(&qword_27E2E4B50, type metadata accessor for AXRTextBlock);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7D9084@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v5 = sub_23D80D67C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_23D7D917C()
{
  v2 = *v0;
  sub_23D80E58C();
  type metadata accessor for AXRTextBlock();
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7D91DC()
{
  v1 = sub_23D80D67C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  swift_getKeyPath();
  v9[1] = v6;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v7 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_23D7DB084(&qword_27E2E4820, MEMORY[0x277CC95F0]);
  sub_23D80DD0C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_23D7D93A0()
{
  sub_23D80E58C();
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7D9400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); !((*(i - 3) ^ *(v3 - 3)) >> 14) && !((*(i - 2) ^ *(v3 - 2)) >> 14); i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23D80E4DC() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _s23AccessibilityReaderData12AXRTextBlockC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D80D67C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  swift_getKeyPath();
  v17[3] = a1;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v12 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v13 = v5[2];
  v13(v11, a1 + v12, v4);
  swift_getKeyPath();
  v17[0] = a2;
  sub_23D80D6FC();

  v14 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v13(v9, a2 + v14, v4);
  LOBYTE(v14) = _s23AccessibilityReaderData10AXRArticleV2eeoiySbAC_ACtFZ_0();
  v15 = v5[1];
  v15(v9, v4);
  v15(v11, v4);
  return v14 & 1;
}

uint64_t sub_23D7D96F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D80D6CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4B90, &unk_23D812418);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23D790648(a1, &v24 - v16, &qword_27E2E43F8, &qword_23D811650);
  sub_23D790648(a2, &v17[v18], &qword_27E2E43F8, &qword_23D811650);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23D790648(v17, v12, &qword_27E2E43F8, &qword_23D811650);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_23D7DB084(&qword_27E2E4B98, MEMORY[0x277CC9AF8]);
      v21 = sub_23D80DD3C();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_23D790730(v17, &qword_27E2E43F8, &qword_23D811650);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_23D790730(v17, &qword_27E2E4B90, &unk_23D812418);
    v20 = 1;
    return v20 & 1;
  }

  sub_23D790730(v17, &qword_27E2E43F8, &qword_23D811650);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23D7D9A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D80D5BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4B80, &qword_23D812410);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23D790648(a1, &v24 - v16, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790648(a2, &v17[v18], &qword_27E2E43F0, &unk_23D811FD0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23D790648(v17, v12, &qword_27E2E43F0, &unk_23D811FD0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_23D7DB084(&qword_27E2E4B88, MEMORY[0x277CC8C40]);
      v21 = sub_23D80DD3C();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_23D790730(v17, &qword_27E2E43F0, &unk_23D811FD0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_23D790730(v17, &qword_27E2E4B80, &qword_23D812410);
    v20 = 1;
    return v20 & 1;
  }

  sub_23D790730(v17, &qword_27E2E43F0, &unk_23D811FD0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23D7D9DD4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_23D7D9E50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D7D339C(v4);
}

uint64_t sub_23D7D9EA0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 4) = v2;
  return result;
}

uint64_t sub_23D7D9F40()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_23D7D9FE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_23D7DA084()
{
  result = qword_27E2E49C8;
  if (!qword_27E2E49C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E49C8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23D7DA1E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

void sub_23D7DA2F0()
{
  v0 = sub_23D80D67C();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_23D7DAF90(319, &qword_27E2E4B70, MEMORY[0x277CC9AF8]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_23D7DAF90(319, &qword_27E2E4B78, MEMORY[0x277CC8C40]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_23D80D73C();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_23D7DAF90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D80E15C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23D7DAFE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D7DB02C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_23D7DB084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AXRPlaybackSpeed.id.getter()
{
  v0 = sub_23D80D67C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D80D66C();
  v5 = sub_23D80D64C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

char *sub_23D7DB32C()
{
  result = sub_23D7DB3A8(0.8, 2.0, 0.1);
  qword_27E2E4BA8 = result;
  return result;
}

void AXRPlaybackSpeed.init(rawValue:)(uint64_t a1@<X8>, float a2@<S0>)
{
  if (a2 <= 0.8)
  {
    a2 = 0.8;
  }

  if (a2 > 2.0)
  {
    a2 = 2.0;
  }

  *a1 = a2;
  *(a1 + 4) = 0;
}

char *sub_23D7DB3A8(float a1, float a2, float a3)
{
  v6 = sub_23D7DF350(a1, a2, a3);
  v28 = MEMORY[0x277D84F90];
  result = sub_23D795458(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_57;
  }

  result = v28;
  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    v10 = a1;
    goto LABEL_32;
  }

  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0.0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v16 = __OFADD__(v9++, 1);
    if (v16)
    {
      goto LABEL_56;
    }

    v17 = 0.8;
    if (v10 > 0.8)
    {
      v17 = v10;
    }

    v10 = a1 + (v9 * a3);
    if (v17 <= 2.0)
    {
      v15 = v17;
    }

    else
    {
      v15 = 2.0;
    }

LABEL_27:
    v29 = result;
    v19 = *(result + 2);
    v18 = *(result + 3);
    if (v19 >= v18 >> 1)
    {
      sub_23D795458((v18 > 1), v19 + 1, 1);
      result = v29;
    }

    *(result + 2) = v19 + 1;
    v20 = &result[8 * v19];
    *(v20 + 8) = v15;
    v20[36] = 0;
    if (!--v6)
    {
      while (1)
      {
LABEL_32:
        v21 = v10 <= a2;
        if (a3 > 0.0)
        {
          v21 = v10 >= a2;
        }

        if (v21)
        {
          if ((v10 != a2) | v8 & 1 || v9 == 0x8000000000000000)
          {
            return result;
          }

          if (v10 <= 2.0)
          {
            v22 = v10;
          }

          else
          {
            v22 = 2.0;
          }

          if (v10 > 0.8)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0.8;
          }

          LOBYTE(v8) = 1;
        }

        else
        {
          v16 = __OFADD__(v9++, 1);
          if (v16)
          {
            __break(1u);
            goto LABEL_55;
          }

          v24 = 0.8;
          if (v10 > 0.8)
          {
            v24 = v10;
          }

          v10 = a1 + (v9 * a3);
          if (v24 <= 2.0)
          {
            v23 = v24;
          }

          else
          {
            v23 = 2.0;
          }
        }

        v30 = result;
        v26 = *(result + 2);
        v25 = *(result + 3);
        if (v26 >= v25 >> 1)
        {
          sub_23D795458((v25 > 1), v26 + 1, 1);
          result = v30;
        }

        *(result + 2) = v26 + 1;
        v27 = &result[8 * v26];
        *(v27 + 8) = v23;
        v27[36] = 0;
      }
    }
  }

  v13 = v10 != a2 || v9 == 0x8000000000000000;
  if (((v8 | v13) & 1) == 0)
  {
    if (v10 <= 2.0)
    {
      v14 = v10;
    }

    else
    {
      v14 = 2.0;
    }

    if (v10 > 0.8)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.8;
    }

    v8 = 1;
    goto LABEL_27;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t static AXRPlaybackSpeed.customCases.getter()
{
  if (qword_27E2E4238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AXRPlaybackSpeed.customCases.setter(uint64_t a1)
{
  if (qword_27E2E4238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27E2E4BA8 = a1;
}

uint64_t (*static AXRPlaybackSpeed.customCases.modify())()
{
  if (qword_27E2E4238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23D7DB790@<X0>(void *a1@<X8>)
{
  if (qword_27E2E4238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27E2E4BA8;
}

uint64_t sub_23D7DB810(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27E2E4238;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27E2E4BA8 = v1;
}

uint64_t sub_23D7DB8EC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
}

uint64_t sub_23D7DB990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;

  swift_beginAccess();
  v7 = *a5;
  *a5 = v6;
}

float AXRPlaybackSpeed.floatValue.getter()
{
  if (v0[4])
  {
    return flt_23D813668[*v0];
  }

  else
  {
    return *v0;
  }
}

uint64_t AXRPlaybackSpeed.hash(into:)()
{
  if (*(v0 + 4) != 1)
  {
    return sub_23D80E5AC();
  }

  switch(*v0)
  {
    case 1:
      v1 = 0x3FE999999999999ALL;
      break;
    case 2:
      v1 = 0x3FE8000000000000;
      break;
    case 3:
      v1 = 0x3FECCCCCCCCCCCCDLL;
      break;
    case 4:
      v1 = 0x3FF0000000000000;
      break;
    case 5:
      v1 = 0x3FF199999999999ALL;
      break;
    case 6:
      v1 = 0x3FF3333333333333;
      break;
    case 7:
      v1 = 0x3FF4000000000000;
      break;
    case 8:
      v1 = 0x3FF4CCCCCCCCCCCDLL;
      break;
    case 9:
      v1 = 0x3FF6666666666666;
      break;
    case 0xA:
      v1 = 0x3FF8000000000000;
      break;
    case 0xB:
      v1 = 0x3FF999999999999ALL;
      break;
    case 0xC:
      v1 = 0x3FFB333333333333;
      break;
    case 0xD:
      v1 = 0x3FFC000000000000;
      break;
    case 0xE:
      v1 = 0x3FFCCCCCCCCCCCCDLL;
      break;
    case 0xF:
      v1 = 0x3FFE666666666666;
      break;
    case 0x10:
      v1 = 0x4000000000000000;
      break;
    default:
      v1 = 0x3FE0000000000000;
      break;
  }

  return MEMORY[0x23EEECED0](v1);
}

unint64_t sub_23D7DBB7C(char a1)
{
  result = 1718378856;
  switch(a1)
  {
    case 1:
      result = 0x6E65547468676965;
      break;
    case 2:
      result = 0x6175516565726874;
      break;
    case 3:
      result = 0x746E6554656E696ELL;
      break;
    case 4:
      result = 0x6C616D726F6ELL;
      break;
    case 5:
      result = 0x6E4F646E41656E6FLL;
      break;
    case 6:
      result = 0x7754646E41656E6FLL;
      break;
    case 7:
      result = 0x5141646E41656E6FLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6F46646E41656E6FLL;
      break;
    case 10:
      result = 0x4841646E41656E6FLL;
      break;
    case 11:
      result = 0x6953646E41656E6FLL;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x694E646E41656E6FLL;
      break;
    case 16:
      result = 0x656C62756F64;
      break;
    case 17:
      result = 0x6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23D7DBE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23D7E0E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23D7DBE38(uint64_t a1)
{
  v2 = sub_23D7DF5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DBE74(uint64_t a1)
{
  v2 = sub_23D7DF5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DBEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23D80E4DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23D7DBF3C(uint64_t a1)
{
  v2 = sub_23D7DF608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DBF78(uint64_t a1)
{
  v2 = sub_23D7DF608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DBFC0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23D7DBFF0(uint64_t a1)
{
  v2 = sub_23D7DF65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC02C(uint64_t a1)
{
  v2 = sub_23D7DF65C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC068(uint64_t a1)
{
  v2 = sub_23D7DFB48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC0A4(uint64_t a1)
{
  v2 = sub_23D7DFB48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC0E0(uint64_t a1)
{
  v2 = sub_23D7DFB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC11C(uint64_t a1)
{
  v2 = sub_23D7DFB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC158(uint64_t a1)
{
  v2 = sub_23D7DFAA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC194(uint64_t a1)
{
  v2 = sub_23D7DFAA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC1D0(uint64_t a1)
{
  v2 = sub_23D7DFA4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC20C(uint64_t a1)
{
  v2 = sub_23D7DFA4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC248(uint64_t a1)
{
  v2 = sub_23D7DF854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC284(uint64_t a1)
{
  v2 = sub_23D7DF854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC2C0(uint64_t a1)
{
  v2 = sub_23D7DF950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC2FC(uint64_t a1)
{
  v2 = sub_23D7DF950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC338(uint64_t a1)
{
  v2 = sub_23D7DF704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC374(uint64_t a1)
{
  v2 = sub_23D7DF704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC3B0(uint64_t a1)
{
  v2 = sub_23D7DF8A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC3EC(uint64_t a1)
{
  v2 = sub_23D7DF8A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC428(uint64_t a1)
{
  v2 = sub_23D7DF6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC464(uint64_t a1)
{
  v2 = sub_23D7DF6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC4A0(uint64_t a1)
{
  v2 = sub_23D7DF9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC4DC(uint64_t a1)
{
  v2 = sub_23D7DF9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC518(uint64_t a1)
{
  v2 = sub_23D7DF7AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC554(uint64_t a1)
{
  v2 = sub_23D7DF7AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC590(uint64_t a1)
{
  v2 = sub_23D7DF800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC5CC(uint64_t a1)
{
  v2 = sub_23D7DF800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC608(uint64_t a1)
{
  v2 = sub_23D7DF758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC644(uint64_t a1)
{
  v2 = sub_23D7DF758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC680(uint64_t a1)
{
  v2 = sub_23D7DF8FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC6BC(uint64_t a1)
{
  v2 = sub_23D7DF8FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC6F8(uint64_t a1)
{
  v2 = sub_23D7DF9A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC734(uint64_t a1)
{
  v2 = sub_23D7DF9A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC770(uint64_t a1)
{
  v2 = sub_23D7DFAF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC7AC(uint64_t a1)
{
  v2 = sub_23D7DFAF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AXRPlaybackSpeed.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BB8, &qword_23D8124B0);
  v124 = *(v3 - 8);
  v125 = v3;
  v4 = *(v124 + 64);
  MEMORY[0x28223BE20](v3);
  v123 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BC0, &qword_23D8124B8);
  v121 = *(v6 - 8);
  v122 = v6;
  v7 = *(v121 + 64);
  MEMORY[0x28223BE20](v6);
  v120 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BC8, &qword_23D8124C0);
  v118 = *(v9 - 8);
  v119 = v9;
  v10 = *(v118 + 64);
  MEMORY[0x28223BE20](v9);
  v117 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BD0, &qword_23D8124C8);
  v115 = *(v12 - 8);
  v116 = v12;
  v13 = *(v115 + 64);
  MEMORY[0x28223BE20](v12);
  v114 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BD8, &qword_23D8124D0);
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  MEMORY[0x28223BE20](v15);
  v111 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BE0, &qword_23D8124D8);
  v109 = *(v18 - 8);
  v110 = v18;
  v19 = *(v109 + 64);
  MEMORY[0x28223BE20](v18);
  v108 = &v73 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BE8, &qword_23D8124E0);
  v106 = *(v107 - 8);
  v21 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v73 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BF0, &qword_23D8124E8);
  v103 = *(v104 - 8);
  v23 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v73 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BF8, &qword_23D8124F0);
  v100 = *(v101 - 8);
  v25 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v73 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C00, &qword_23D8124F8);
  v97 = *(v98 - 8);
  v27 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v73 - v28;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C08, &qword_23D812500);
  v94 = *(v95 - 8);
  v29 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v73 - v30;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C10, &qword_23D812508);
  v91 = *(v92 - 8);
  v31 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v73 - v32;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C18, &qword_23D812510);
  v88 = *(v89 - 8);
  v33 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v73 - v34;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C20, &qword_23D812518);
  v85 = *(v86 - 8);
  v35 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v73 - v36;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C28, &qword_23D812520);
  v82 = *(v83 - 8);
  v37 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v73 - v38;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C30, &qword_23D812528);
  v79 = *(v80 - 8);
  v39 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v73 - v40;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C38, &qword_23D812530);
  v76 = *(v77 - 8);
  v41 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v73 - v42;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C40, &qword_23D812538);
  v73 = *(v74 - 8);
  v43 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v45 = &v73 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C48, &qword_23D812540);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v73 - v49;
  v51 = *v1;
  v52 = *(v1 + 4);
  v53 = a1;
  v55 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(v53, v55);
  sub_23D7DF5B4();
  sub_23D80E5EC();
  if (v52 == 1)
  {
    switch(v51)
    {
      case 1:
        v126 = 1;
        sub_23D7DFB48();
        v68 = v75;
        sub_23D80E42C();
        (*(v76 + 8))(v68, v77);
        return (*(v47 + 8))(v50, v46);
      case 2:
        v126 = 2;
        sub_23D7DFAF4();
        v65 = v78;
        sub_23D80E42C();
        (*(v79 + 8))(v65, v80);
        return (*(v47 + 8))(v50, v46);
      case 3:
        v126 = 3;
        sub_23D7DFAA0();
        v66 = v81;
        sub_23D80E42C();
        (*(v82 + 8))(v66, v83);
        return (*(v47 + 8))(v50, v46);
      case 4:
        v126 = 4;
        sub_23D7DFA4C();
        v63 = v84;
        sub_23D80E42C();
        (*(v85 + 8))(v63, v86);
        return (*(v47 + 8))(v50, v46);
      case 5:
        v126 = 5;
        sub_23D7DF9F8();
        v69 = v87;
        sub_23D80E42C();
        (*(v88 + 8))(v69, v89);
        return (*(v47 + 8))(v50, v46);
      case 6:
        v126 = 6;
        sub_23D7DF9A4();
        v70 = v90;
        sub_23D80E42C();
        (*(v91 + 8))(v70, v92);
        return (*(v47 + 8))(v50, v46);
      case 7:
        v126 = 7;
        sub_23D7DF950();
        v67 = v93;
        sub_23D80E42C();
        (*(v94 + 8))(v67, v95);
        return (*(v47 + 8))(v50, v46);
      case 8:
        v126 = 8;
        sub_23D7DF8FC();
        v72 = v96;
        sub_23D80E42C();
        (*(v97 + 8))(v72, v98);
        return (*(v47 + 8))(v50, v46);
      case 9:
        v126 = 9;
        sub_23D7DF8A8();
        v64 = v99;
        sub_23D80E42C();
        (*(v100 + 8))(v64, v101);
        return (*(v47 + 8))(v50, v46);
      case 10:
        v126 = 10;
        sub_23D7DF854();
        v71 = v102;
        sub_23D80E42C();
        (*(v103 + 8))(v71, v104);
        return (*(v47 + 8))(v50, v46);
      case 11:
        v126 = 11;
        sub_23D7DF800();
        v62 = v105;
        sub_23D80E42C();
        (*(v106 + 8))(v62, v107);
        return (*(v47 + 8))(v50, v46);
      case 12:
        v126 = 12;
        sub_23D7DF7AC();
        v59 = v108;
        sub_23D80E42C();
        v61 = v109;
        v60 = v110;
        goto LABEL_18;
      case 13:
        v126 = 13;
        sub_23D7DF758();
        v59 = v111;
        sub_23D80E42C();
        v61 = v112;
        v60 = v113;
        goto LABEL_18;
      case 14:
        v126 = 14;
        sub_23D7DF704();
        v59 = v114;
        sub_23D80E42C();
        v61 = v115;
        v60 = v116;
        goto LABEL_18;
      case 15:
        v126 = 15;
        sub_23D7DF6B0();
        v59 = v117;
        sub_23D80E42C();
        v61 = v118;
        v60 = v119;
        goto LABEL_18;
      case 16:
        v126 = 16;
        sub_23D7DF65C();
        v59 = v120;
        sub_23D80E42C();
        v61 = v121;
        v60 = v122;
LABEL_18:
        (*(v61 + 8))(v59, v60);
        break;
      default:
        v126 = 0;
        sub_23D7DFB9C();
        sub_23D80E42C();
        (*(v73 + 8))(v45, v74);
        break;
    }

    return (*(v47 + 8))(v50, v46);
  }

  else
  {
    v126 = 17;
    sub_23D7DF608();
    v56 = v123;
    sub_23D80E42C();
    v57 = v125;
    sub_23D80E47C();
    (*(v124 + 8))(v56, v57);
    return (*(v47 + 8))(v50, v46);
  }
}

uint64_t AXRPlaybackSpeed.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_23D80E58C();
  AXRPlaybackSpeed.hash(into:)();
  return sub_23D80E5CC();
}

uint64_t AXRPlaybackSpeed.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4CE8, &qword_23D812548);
  v159 = *(v142 - 8);
  v3 = *(v159 + 64);
  MEMORY[0x28223BE20](v142);
  v155 = v104 - v4;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4CF0, &qword_23D812550);
  v140 = *(v141 - 8);
  v5 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v154 = v104 - v6;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4CF8, &qword_23D812558);
  v138 = *(v139 - 8);
  v7 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v153 = v104 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D00, &qword_23D812560);
  v136 = *(v137 - 8);
  v9 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v152 = v104 - v10;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D08, &qword_23D812568);
  v134 = *(v135 - 8);
  v11 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v151 = v104 - v12;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D10, &qword_23D812570);
  v132 = *(v133 - 8);
  v13 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v150 = v104 - v14;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D18, &qword_23D812578);
  v130 = *(v131 - 8);
  v15 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v149 = v104 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D20, &qword_23D812580);
  v128 = *(v129 - 8);
  v17 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v148 = v104 - v18;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D28, &qword_23D812588);
  v126 = *(v127 - 8);
  v19 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v147 = v104 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D30, &qword_23D812590);
  v124 = *(v125 - 8);
  v21 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v146 = v104 - v22;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D38, &qword_23D812598);
  v122 = *(v123 - 8);
  v23 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v145 = v104 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D40, &qword_23D8125A0);
  v121 = *(v120 - 8);
  v25 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  v158 = v104 - v26;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D48, &qword_23D8125A8);
  v119 = *(v118 - 8);
  v27 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  v157 = v104 - v28;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D50, &qword_23D8125B0);
  v117 = *(v112 - 8);
  v29 = *(v117 + 64);
  MEMORY[0x28223BE20](v112);
  v144 = v104 - v30;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D58, &qword_23D8125B8);
  v115 = *(v116 - 8);
  v31 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v143 = v104 - v32;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D60, &qword_23D8125C0);
  v113 = *(v114 - 8);
  v33 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v156 = v104 - v34;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D68, &qword_23D8125C8);
  v110 = *(v111 - 8);
  v35 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v37 = v104 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D70, &qword_23D8125D0);
  v109 = *(v38 - 8);
  v39 = *(v109 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v104 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D78, &qword_23D8125D8);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = v104 - v45;
  v47 = a1[3];
  v48 = a1[4];
  v161 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_23D7DF5B4();
  v49 = v162;
  sub_23D80E5DC();
  if (v49)
  {
LABEL_43:
    v103 = v161;
    return __swift_destroy_boxed_opaque_existential_1(v103);
  }

  v106 = v41;
  v105 = v38;
  v107 = v37;
  v50 = v156;
  v51 = v157;
  v52 = v158;
  v53 = v159;
  v108 = 0;
  v162 = v43;
  v54 = v160;
  v55 = sub_23D80E41C();
  if (*(v55 + 16) != 1 || (v56 = *(v55 + 32), v56 == 18))
  {
    v61 = sub_23D80E29C();
    swift_allocError();
    v62 = v46;
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D80, &qword_23D8125E0) + 48);
    *v64 = &type metadata for AXRPlaybackSpeed;
    sub_23D80E38C();
    sub_23D80E28C();
    (*(*(v61 - 8) + 104))(v64, *MEMORY[0x277D84160], v61);
    swift_willThrow();
    (*(v162 + 8))(v62, v42);
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v104[1] = v55;
  switch(v56)
  {
    case 1:
      v163 = 1;
      sub_23D7DFB48();
      v86 = v107;
      v87 = v108;
      sub_23D80E37C();
      if (v87)
      {
        goto LABEL_41;
      }

      (*(v110 + 8))(v86, v111);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v60 = 1;
      goto LABEL_47;
    case 2:
      v163 = 2;
      sub_23D7DFAF4();
      v79 = v108;
      sub_23D80E37C();
      if (v79)
      {
        goto LABEL_41;
      }

      (*(v113 + 8))(v50, v114);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 2;
      goto LABEL_46;
    case 3:
      v163 = 3;
      sub_23D7DFAA0();
      v82 = v143;
      v83 = v108;
      sub_23D80E37C();
      if (v83)
      {
        goto LABEL_41;
      }

      (*(v115 + 8))(v82, v116);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 3;
      goto LABEL_46;
    case 4:
      v163 = 4;
      sub_23D7DFA4C();
      v73 = v144;
      v74 = v108;
      sub_23D80E37C();
      if (v74)
      {
        goto LABEL_41;
      }

      (*(v117 + 8))(v73, v112);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 4;
      goto LABEL_46;
    case 5:
      v163 = 5;
      sub_23D7DF9F8();
      v93 = v108;
      sub_23D80E37C();
      if (v93)
      {
        goto LABEL_41;
      }

      (*(v119 + 8))(v51, v118);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 5;
      goto LABEL_46;
    case 6:
      v163 = 6;
      sub_23D7DF9A4();
      v96 = v108;
      sub_23D80E37C();
      if (v96)
      {
        goto LABEL_41;
      }

      (*(v121 + 8))(v52, v120);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 6;
      goto LABEL_46;
    case 7:
      v163 = 7;
      sub_23D7DF950();
      v84 = v145;
      v85 = v108;
      sub_23D80E37C();
      if (v85)
      {
        goto LABEL_41;
      }

      (*(v122 + 8))(v84, v123);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 7;
      goto LABEL_46;
    case 8:
      v163 = 8;
      sub_23D7DF8FC();
      v99 = v146;
      v100 = v108;
      sub_23D80E37C();
      if (v100)
      {
        goto LABEL_41;
      }

      (*(v124 + 8))(v99, v125);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 8;
      goto LABEL_46;
    case 9:
      v163 = 9;
      sub_23D7DF8A8();
      v77 = v147;
      v78 = v108;
      sub_23D80E37C();
      if (v78)
      {
        goto LABEL_41;
      }

      (*(v126 + 8))(v77, v127);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 9;
      goto LABEL_46;
    case 10:
      v163 = 10;
      sub_23D7DF854();
      v97 = v148;
      v98 = v108;
      sub_23D80E37C();
      if (v98)
      {
        goto LABEL_41;
      }

      (*(v128 + 8))(v97, v129);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 10;
      goto LABEL_46;
    case 11:
      v163 = 11;
      sub_23D7DF800();
      v71 = v149;
      v72 = v108;
      sub_23D80E37C();
      if (v72)
      {
        goto LABEL_41;
      }

      (*(v130 + 8))(v71, v131);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 11;
      goto LABEL_46;
    case 12:
      v163 = 12;
      sub_23D7DF7AC();
      v75 = v150;
      v76 = v108;
      sub_23D80E37C();
      if (v76)
      {
        goto LABEL_41;
      }

      (*(v132 + 8))(v75, v133);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 12;
      goto LABEL_46;
    case 13:
      v163 = 13;
      sub_23D7DF758();
      v94 = v151;
      v95 = v108;
      sub_23D80E37C();
      if (v95)
      {
        goto LABEL_41;
      }

      (*(v134 + 8))(v94, v135);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 13;
      goto LABEL_46;
    case 14:
      v163 = 14;
      sub_23D7DF704();
      v69 = v152;
      v70 = v108;
      sub_23D80E37C();
      if (v70)
      {
        goto LABEL_41;
      }

      (*(v136 + 8))(v69, v137);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 14;
      goto LABEL_46;
    case 15:
      v163 = 15;
      sub_23D7DF6B0();
      v80 = v153;
      v81 = v108;
      sub_23D80E37C();
      if (v81)
      {
        goto LABEL_41;
      }

      (*(v138 + 8))(v80, v139);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 15;
      goto LABEL_46;
    case 16:
      v163 = 16;
      sub_23D7DF65C();
      v66 = v154;
      v67 = v108;
      sub_23D80E37C();
      if (v67)
      {
        goto LABEL_41;
      }

      (*(v140 + 8))(v66, v141);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v68 = 16;
LABEL_46:
      v60 = v68;
      goto LABEL_47;
    case 17:
      v163 = 17;
      sub_23D7DF608();
      v88 = v155;
      v89 = v108;
      sub_23D80E37C();
      if (v89)
      {
        goto LABEL_41;
      }

      v90 = v142;
      sub_23D80E3EC();
      v91 = v161;
      v92 = v162;
      v60 = v102;
      (*(v53 + 8))(v88, v90);
      (*(v92 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 0;
      v103 = v91;
      goto LABEL_48;
    default:
      v163 = 0;
      sub_23D7DFB9C();
      v57 = v106;
      v58 = v108;
      sub_23D80E37C();
      if (v58)
      {
LABEL_41:
        (*(v162 + 8))(v46, v42);
        goto LABEL_42;
      }

      (*(v109 + 8))(v57, v105);
      (*(v162 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v59 = 1;
      v60 = 0;
LABEL_47:
      v103 = v161;
LABEL_48:
      *v54 = v60;
      *(v54 + 4) = v59;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v103);
}

uint64_t sub_23D7DF148@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27E2E4BA0;
}

uint64_t sub_23D7DF19C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D80D67C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D80D66C();
  v7 = sub_23D80D64C();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_23D7DF2A8()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_23D80E58C();
  AXRPlaybackSpeed.hash(into:)();
  return sub_23D80E5CC();
}

uint64_t sub_23D7DF300()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_23D80E58C();
  AXRPlaybackSpeed.hash(into:)();
  return sub_23D80E5CC();
}

uint64_t sub_23D7DF350(float a1, float a2, float a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + (v5 * a3);
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

BOOL _s23AccessibilityReaderData16AXRPlaybackSpeedO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    switch(*a1)
    {
      case 1:
        if (LODWORD(v2) != 1)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (LODWORD(v2) != 2)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (LODWORD(v2) != 3)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (LODWORD(v2) != 4)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (LODWORD(v2) != 5)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (LODWORD(v2) != 6)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (LODWORD(v2) != 7)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (LODWORD(v2) != 8)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (LODWORD(v2) != 9)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xA:
        if (LODWORD(v2) != 10)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xB:
        if (LODWORD(v2) != 11)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xC:
        if (LODWORD(v2) != 12)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xD:
        if (LODWORD(v2) != 13)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xE:
        if (LODWORD(v2) != 14)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xF:
        if (LODWORD(v2) != 15)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0x10:
        if (LODWORD(v2) <= 0xF)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v2 != 0.0)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 4) & 1) == 0 && *a1 == v2;
  }

  return result;
}

unint64_t sub_23D7DF5B4()
{
  result = qword_27E2E4C50;
  if (!qword_27E2E4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C50);
  }

  return result;
}

unint64_t sub_23D7DF608()
{
  result = qword_27E2E4C58;
  if (!qword_27E2E4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C58);
  }

  return result;
}

unint64_t sub_23D7DF65C()
{
  result = qword_27E2E4C60;
  if (!qword_27E2E4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C60);
  }

  return result;
}

unint64_t sub_23D7DF6B0()
{
  result = qword_27E2E4C68;
  if (!qword_27E2E4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C68);
  }

  return result;
}

unint64_t sub_23D7DF704()
{
  result = qword_27E2E4C70;
  if (!qword_27E2E4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C70);
  }

  return result;
}

unint64_t sub_23D7DF758()
{
  result = qword_27E2E4C78;
  if (!qword_27E2E4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C78);
  }

  return result;
}

unint64_t sub_23D7DF7AC()
{
  result = qword_27E2E4C80;
  if (!qword_27E2E4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C80);
  }

  return result;
}

unint64_t sub_23D7DF800()
{
  result = qword_27E2E4C88;
  if (!qword_27E2E4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C88);
  }

  return result;
}

unint64_t sub_23D7DF854()
{
  result = qword_27E2E4C90;
  if (!qword_27E2E4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C90);
  }

  return result;
}

unint64_t sub_23D7DF8A8()
{
  result = qword_27E2E4C98;
  if (!qword_27E2E4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C98);
  }

  return result;
}

unint64_t sub_23D7DF8FC()
{
  result = qword_27E2E4CA0;
  if (!qword_27E2E4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CA0);
  }

  return result;
}

unint64_t sub_23D7DF950()
{
  result = qword_27E2E4CA8;
  if (!qword_27E2E4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CA8);
  }

  return result;
}

unint64_t sub_23D7DF9A4()
{
  result = qword_27E2E4CB0;
  if (!qword_27E2E4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CB0);
  }

  return result;
}

unint64_t sub_23D7DF9F8()
{
  result = qword_27E2E4CB8;
  if (!qword_27E2E4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CB8);
  }

  return result;
}

unint64_t sub_23D7DFA4C()
{
  result = qword_27E2E4CC0;
  if (!qword_27E2E4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CC0);
  }

  return result;
}

unint64_t sub_23D7DFAA0()
{
  result = qword_27E2E4CC8;
  if (!qword_27E2E4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CC8);
  }

  return result;
}

unint64_t sub_23D7DFAF4()
{
  result = qword_27E2E4CD0;
  if (!qword_27E2E4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CD0);
  }

  return result;
}

unint64_t sub_23D7DFB48()
{
  result = qword_27E2E4CD8;
  if (!qword_27E2E4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CD8);
  }

  return result;
}

unint64_t sub_23D7DFB9C()
{
  result = qword_27E2E4CE0;
  if (!qword_27E2E4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CE0);
  }

  return result;
}

unint64_t sub_23D7DFBF4()
{
  result = qword_27E2E4D88;
  if (!qword_27E2E4D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4D90, &qword_23D8125E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4D88);
  }

  return result;
}

unint64_t sub_23D7DFC5C()
{
  result = qword_27E2E4D98;
  if (!qword_27E2E4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4D98);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AXRPlaybackSpeed(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AXRPlaybackSpeed(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_23D7DFDBC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D7DFDD8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXRPlaybackSpeed.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRPlaybackSpeed.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D7E007C()
{
  result = qword_27E2E4DA0;
  if (!qword_27E2E4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DA0);
  }

  return result;
}

unint64_t sub_23D7E00D4()
{
  result = qword_27E2E4DA8;
  if (!qword_27E2E4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DA8);
  }

  return result;
}

unint64_t sub_23D7E012C()
{
  result = qword_27E2E4DB0;
  if (!qword_27E2E4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DB0);
  }

  return result;
}

unint64_t sub_23D7E0184()
{
  result = qword_27E2E4DB8;
  if (!qword_27E2E4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DB8);
  }

  return result;
}

unint64_t sub_23D7E01DC()
{
  result = qword_27E2E4DC0;
  if (!qword_27E2E4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DC0);
  }

  return result;
}

unint64_t sub_23D7E0234()
{
  result = qword_27E2E4DC8;
  if (!qword_27E2E4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DC8);
  }

  return result;
}

unint64_t sub_23D7E028C()
{
  result = qword_27E2E4DD0;
  if (!qword_27E2E4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DD0);
  }

  return result;
}

unint64_t sub_23D7E02E4()
{
  result = qword_27E2E4DD8;
  if (!qword_27E2E4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DD8);
  }

  return result;
}

unint64_t sub_23D7E033C()
{
  result = qword_27E2E4DE0;
  if (!qword_27E2E4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DE0);
  }

  return result;
}

unint64_t sub_23D7E0394()
{
  result = qword_27E2E4DE8;
  if (!qword_27E2E4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DE8);
  }

  return result;
}

unint64_t sub_23D7E03EC()
{
  result = qword_27E2E4DF0;
  if (!qword_27E2E4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DF0);
  }

  return result;
}

unint64_t sub_23D7E0444()
{
  result = qword_27E2E4DF8;
  if (!qword_27E2E4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DF8);
  }

  return result;
}

unint64_t sub_23D7E049C()
{
  result = qword_27E2E4E00;
  if (!qword_27E2E4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E00);
  }

  return result;
}

unint64_t sub_23D7E04F4()
{
  result = qword_27E2E4E08;
  if (!qword_27E2E4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E08);
  }

  return result;
}

unint64_t sub_23D7E054C()
{
  result = qword_27E2E4E10;
  if (!qword_27E2E4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E10);
  }

  return result;
}

unint64_t sub_23D7E05A4()
{
  result = qword_27E2E4E18;
  if (!qword_27E2E4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E18);
  }

  return result;
}

unint64_t sub_23D7E05FC()
{
  result = qword_27E2E4E20;
  if (!qword_27E2E4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E20);
  }

  return result;
}

unint64_t sub_23D7E0654()
{
  result = qword_27E2E4E28;
  if (!qword_27E2E4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E28);
  }

  return result;
}

unint64_t sub_23D7E06AC()
{
  result = qword_27E2E4E30;
  if (!qword_27E2E4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E30);
  }

  return result;
}

unint64_t sub_23D7E0704()
{
  result = qword_27E2E4E38;
  if (!qword_27E2E4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E38);
  }

  return result;
}

unint64_t sub_23D7E075C()
{
  result = qword_27E2E4E40;
  if (!qword_27E2E4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E40);
  }

  return result;
}

unint64_t sub_23D7E07B4()
{
  result = qword_27E2E4E48;
  if (!qword_27E2E4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E48);
  }

  return result;
}

unint64_t sub_23D7E080C()
{
  result = qword_27E2E4E50;
  if (!qword_27E2E4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E50);
  }

  return result;
}

unint64_t sub_23D7E0864()
{
  result = qword_27E2E4E58;
  if (!qword_27E2E4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E58);
  }

  return result;
}

unint64_t sub_23D7E08BC()
{
  result = qword_27E2E4E60;
  if (!qword_27E2E4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E60);
  }

  return result;
}

unint64_t sub_23D7E0914()
{
  result = qword_27E2E4E68;
  if (!qword_27E2E4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E68);
  }

  return result;
}

unint64_t sub_23D7E096C()
{
  result = qword_27E2E4E70;
  if (!qword_27E2E4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E70);
  }

  return result;
}

unint64_t sub_23D7E09C4()
{
  result = qword_27E2E4E78;
  if (!qword_27E2E4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E78);
  }

  return result;
}

unint64_t sub_23D7E0A1C()
{
  result = qword_27E2E4E80;
  if (!qword_27E2E4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E80);
  }

  return result;
}

unint64_t sub_23D7E0A74()
{
  result = qword_27E2E4E88;
  if (!qword_27E2E4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E88);
  }

  return result;
}

unint64_t sub_23D7E0ACC()
{
  result = qword_27E2E4E90;
  if (!qword_27E2E4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E90);
  }

  return result;
}

unint64_t sub_23D7E0B24()
{
  result = qword_27E2E4E98;
  if (!qword_27E2E4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E98);
  }

  return result;
}

unint64_t sub_23D7E0B7C()
{
  result = qword_27E2E4EA0;
  if (!qword_27E2E4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EA0);
  }

  return result;
}

unint64_t sub_23D7E0BD4()
{
  result = qword_27E2E4EA8;
  if (!qword_27E2E4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EA8);
  }

  return result;
}

unint64_t sub_23D7E0C2C()
{
  result = qword_27E2E4EB0;
  if (!qword_27E2E4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EB0);
  }

  return result;
}

unint64_t sub_23D7E0C84()
{
  result = qword_27E2E4EB8;
  if (!qword_27E2E4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EB8);
  }

  return result;
}

unint64_t sub_23D7E0CDC()
{
  result = qword_27E2E4EC0;
  if (!qword_27E2E4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EC0);
  }

  return result;
}

unint64_t sub_23D7E0D34()
{
  result = qword_27E2E4EC8;
  if (!qword_27E2E4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EC8);
  }

  return result;
}

unint64_t sub_23D7E0D8C()
{
  result = qword_27E2E4ED0;
  if (!qword_27E2E4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4ED0);
  }

  return result;
}

unint64_t sub_23D7E0DE4()
{
  result = qword_27E2E4ED8;
  if (!qword_27E2E4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4ED8);
  }

  return result;
}

uint64_t sub_23D7E0E38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1718378856 && a2 == 0xE400000000000000;
  if (v3 || (sub_23D80E4DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65547468676965 && a2 == 0xEA00000000006874 || (sub_23D80E4DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6175516565726874 && a2 == 0xED00007372657472 || (sub_23D80E4DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6554656E696ELL && a2 == 0xE900000000000068 || (sub_23D80E4DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E4F646E41656E6FLL && a2 == 0xEE0068746E655465 || (sub_23D80E4DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7754646E41656E6FLL && a2 == 0xEE0068746E65546FLL || (sub_23D80E4DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5141646E41656E6FLL && a2 == 0xEE00726574726175 || (sub_23D80E4DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023D816790 == a2 || (sub_23D80E4DC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F46646E41656E6FLL && a2 == 0xEF68746E65547275 || (sub_23D80E4DC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4841646E41656E6FLL && a2 == 0xEB00000000666C61 || (sub_23D80E4DC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6953646E41656E6FLL && a2 == 0xEE0068746E655478 || (sub_23D80E4DC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023D8167B0 == a2 || (sub_23D80E4DC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023D8167D0 == a2 || (sub_23D80E4DC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023D8167F0 == a2 || (sub_23D80E4DC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x694E646E41656E6FLL && a2 == 0xEF68746E6554656ELL || (sub_23D80E4DC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 17;
  }

  else
  {
    v6 = sub_23D80E4DC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_23D7E1424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v28[3] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_23D80D97C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v37 = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v33 = a2;
  v34 = a3;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4750, "@~");
    sub_23D800378(&qword_27E2E5280, sub_23D7FCC14);
    sub_23D80D44C();

    v35 = v36;

    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4750, "@~");
    sub_23D80D9CC();
  }

  v24 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  *(v25 + 24) = v24;
  sub_23D7CE9C0(&qword_27E2E5278, &qword_27E2E4EF8, &qword_23D813700);
  v26 = v30;
  sub_23D80DA3C();

  (*(v29 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(v31);
}

uint64_t sub_23D7E1A08@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v30 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = sub_23D80D97C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v36 = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v33 = a2;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7AE034();
    sub_23D80D44C();

    v34 = v35;
    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v24 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5270, &qword_27E2E4648, &qword_23D8104E8);
  v26 = v31;
  sub_23D80DA3C();

  (*(v29 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4);
}

uint64_t sub_23D7E1F6C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v30 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = sub_23D80D97C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v36 = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v33 = a2;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D80D44C();

    v34 = v35;
    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v24 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5268, &qword_27E2E4978, &qword_23D811980);
  v26 = v31;
  sub_23D80DA3C();

  (*(v29 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4);
}

uint64_t sub_23D7E24D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v32 = a4;
  v30 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = sub_23D80D97C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v36 = a6;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v33 = a1;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D80D44C();

    v34 = v35;
    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v24 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a2;
  sub_23D7CE9C0(&qword_27E2E5260, &qword_27E2E4988, &qword_23D811990);
  v26 = v31;
  sub_23D80DA3C();

  (*(v29 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a3);
}

uint64_t sub_23D7E2A3C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v30 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = sub_23D80D97C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v36 = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v33 = a2;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCC68();
    sub_23D80D44C();

    v34 = v35;
    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v24 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5258, &qword_27E2E4F68, &qword_23D813A80);
  v26 = v31;
  sub_23D80DA3C();

  (*(v29 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4);
}

uint64_t sub_23D7E2FA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v30 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F98, &qword_23D813BB0);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = sub_23D80D97C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v36 = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v33 = a2;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCCBC();
    sub_23D80D44C();

    v34 = v35;
    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v24 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5250, &qword_27E2E4F98, &qword_23D813BB0);
  v26 = v31;
  sub_23D80DA3C();

  (*(v29 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4);
}

uint64_t sub_23D7E3504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v30 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FB0, &qword_23D813C08);
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = sub_23D80D97C();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  MEMORY[0x28223BE20](v13);
  v37 = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v34 = a2;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCC14();
    sub_23D80D44C();

    v35 = v36;

    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v24 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5248, &qword_27E2E4FB0, &qword_23D813C08);
  v26 = v31;
  sub_23D80DA3C();

  (*(v9 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(v32);
}

uint64_t sub_23D7E3AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v32 = a7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FD0, &qword_23D813CA8);
  v31 = *(v33 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v30 - v13;
  v15 = sub_23D80D97C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v40 = a1;
  v41 = a2;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_27E2E4618;
  v35 = a3;
  v18 = sub_23D80DD4C();
  v19 = [v17 dataForKey_];

  if (v19)
  {
    v20 = sub_23D80D62C();
    v22 = v21;

    v23 = sub_23D80D46C();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCD10();
    sub_23D80D44C();

    v36 = v38;
    v37 = v39;

    sub_23D80D9CC();
    sub_23D7AE088(v20, v22);
  }

  else
  {
    sub_23D80D9CC();
  }

  v26 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  sub_23D80D9DC();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = a4;
  sub_23D7CE9C0(&qword_27E2E5240, &qword_27E2E4FD0, &qword_23D813CA8);
  v28 = v33;
  sub_23D80DA3C();

  (*(v31 + 8))(v14, v28);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a5);
}

uint64_t sub_23D7E4024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a5;
  v35 = a6;
  v32 = a7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v30 - v13;
  v15 = sub_23D80D97C();
  v31 = *(v15 - 8);
  v16 = *(v31 + 64);
  MEMORY[0x28223BE20](v15);
  v41 = a1;
  v42 = a2;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_27E2E4618;
  v36 = a3;
  v18 = sub_23D80DD4C();
  v19 = [v17 dataForKey_];

  if (v19)
  {
    v20 = sub_23D80D62C();
    v22 = v21;

    v23 = sub_23D80D46C();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D80D44C();

    v37 = v39;
    v38 = v40;

    sub_23D80D9CC();
    sub_23D7AE088(v20, v22);
  }

  else
  {
    sub_23D80D9CC();
  }

  v26 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9DC();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = a4;
  sub_23D7CE9C0(&qword_27E2E5238, &qword_27E2E4FE8, &qword_23D813D00);
  v28 = v33;
  sub_23D80DA3C();

  (*(v11 + 8))(v14, v28);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(v34);
}

uint64_t sub_23D7E45C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v29[5] = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5218, &unk_23D8147A8);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - v13;
  v15 = sub_23D80D97C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v39 = a1;
  v40 = a2 & 1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_27E2E4618;
  v33 = a3;
  v34 = a4;
  v18 = sub_23D80DD4C();
  v19 = [v17 dataForKey_];

  if (v19)
  {
    v20 = sub_23D80D62C();
    v22 = v21;

    v23 = sub_23D80D46C();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_23D80D45C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5178, &qword_23D814578);
    sub_23D8001F8(&qword_27E2E5228, sub_23D7FCD64);
    sub_23D80D44C();

    v35 = v37;
    v36 = v38;
    sub_23D80D9CC();
    sub_23D7AE088(v20, v22);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5178, &qword_23D814578);
    sub_23D80D9CC();
  }

  v26 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5048, &qword_23D813F20);
  sub_23D80D9DC();
  v27 = swift_allocObject();
  *(v27 + 16) = v33;
  *(v27 + 24) = v26;
  sub_23D7CE9C0(&qword_27E2E5220, &qword_27E2E5218, &unk_23D8147A8);
  sub_23D80DA3C();

  (*(v30 + 8))(v14, v11);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(v31);
}

uint64_t sub_23D7E4BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v32 = a4;
  v30 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5000, &qword_23D813D58);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = sub_23D80D97C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v36 = a6;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v33 = a1;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCD64();
    sub_23D80D44C();

    v34 = v35;
    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v24 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a2;
  sub_23D7CE9C0(&qword_27E2E5210, &qword_27E2E5000, &qword_23D813D58);
  v26 = v31;
  sub_23D80DA3C();

  (*(v29 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a3);
}

uint64_t sub_23D7E511C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v45 = a1;
  v38 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5040, &qword_23D813F18);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v35[-v10];
  v36 = sub_23D80D97C();
  v11 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v12 = sub_23D80DAAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v35[-v18];
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_27E2E4618;
  v43 = a2;
  v44 = a3;
  v21 = sub_23D80DD4C();
  v22 = [v20 dataForKey_];

  if (v22)
  {
    v23 = sub_23D80D62C();
    v25 = v24;

    v26 = sub_23D80D46C();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D800130(&qword_27E2E50B8, MEMORY[0x277CDFA28]);
    sub_23D80D44C();

    (*(v13 + 16))(v17, v19, v12);
    sub_23D80D9CC();
    sub_23D7AE088(v23, v25);
    (*(v13 + 8))(v19, v12);
  }

  else
  {
    (*(v13 + 16))(v17, v45, v12);
    sub_23D80D9CC();
  }

  v29 = v44;
  v30 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  v31 = v37;
  sub_23D80D9DC();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v29;
  sub_23D7CE9C0(&qword_27E2E5208, &qword_27E2E5040, &qword_23D813F18);
  v33 = v40;
  sub_23D80DA3C();

  (*(v39 + 8))(v31, v33);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  sub_23D7A055C(v41);
  return (*(v13 + 8))(v45, v12);
}

uint64_t sub_23D7E57E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v30 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D8, &qword_23D813F90);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v13 = sub_23D80D97C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v38 = a1;
  v39 = BYTE4(a1) & 1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v33 = a2;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    v21 = sub_23D80D46C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D8000DC();
    sub_23D80D44C();

    v34 = v36;
    v35 = v37;
    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v24 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D0, &qword_23D813F88);
  sub_23D80D9DC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E51D8, &qword_27E2E50D8, &qword_23D813F90);
  v26 = v31;
  sub_23D80DA3C();

  (*(v29 + 8))(v12, v26);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4);
}

void (*sub_23D7E5D84(uint64_t *a1))(void *)
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

uint64_t sub_23D7E5E28(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7E5FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E6100(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customReaderBackgroundColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E6298(uint64_t *a1))(void *)
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

uint64_t sub_23D7E633C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7E64DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E6614(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customSelectedTextColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E67D4(uint64_t *a1))(void *)
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

uint64_t sub_23D7E6878(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7E6A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E6B50(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeReaderBackgroundColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7A3B84;
}

void (*sub_23D7E6D10(uint64_t *a1))(void *)
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

uint64_t sub_23D7E6DB4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7E6F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E708C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeSelectedTextColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7E7224()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7E7290(uint64_t *a1))(void *)
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

uint64_t sub_23D7E7334(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7E74D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E760C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customLinkColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E77CC(uint64_t *a1))(void *)
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

uint64_t sub_23D7E7870(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7E7A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E7B48(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__theme;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E7D08(uint64_t *a1))(void *)
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

uint64_t sub_23D7E7DAC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7E7F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E8084(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lastNonCustomTheme;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E821C(uint64_t *a1))(void *)
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

uint64_t sub_23D7E82C0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23D7E8460(uint64_t a1)
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

uint64_t (*sub_23D7E8598(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__textBold;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E8758(uint64_t *a1))(void *)
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

uint64_t sub_23D7E87FC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23D7E899C(uint64_t a1)
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

uint64_t (*sub_23D7E8AD4(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacing;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E8C94(uint64_t *a1))(void *)
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

uint64_t sub_23D7E8D38(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23D7E8ED8(uint64_t a1)
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

uint64_t (*sub_23D7E9010(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacing;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E91D0(uint64_t *a1))(void *)
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

uint64_t sub_23D7E9274(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23D7E9414(uint64_t a1)
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

uint64_t (*sub_23D7E954C(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacing;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

double sub_23D7E96D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23D7E9760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

double sub_23D7E97EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7E986C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7E98DC(uint64_t *a1))(void *)
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

uint64_t sub_23D7E9980(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23D7E9B20(uint64_t a1)
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

uint64_t (*sub_23D7E9C58(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__contentWidthRegular;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7E9DC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t (*sub_23D7E9ED8(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return sub_23D7E9F70;
}

uint64_t sub_23D7E9F98(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EA138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EA270(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EA3E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t (*sub_23D7EA508(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return sub_23D7EA5A0;
}

uint64_t sub_23D7EA5C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *a1;
  *(a1 + 9) = v7;

  v9 = sub_23D80DA1C();
  return a5(v9);
}

uint64_t sub_23D7EA64C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EA7EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EA924(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EAA94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t (*sub_23D7EABA4(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return sub_23D7EAC3C;
}

uint64_t sub_23D7EAC64(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EAE04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EAF3C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EB0AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7EB1C4(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v6 = sub_23D80DA1C();
  return a4(v6);
}

uint64_t (*sub_23D7EB244(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return sub_23D7EB2DC;
}

uint64_t sub_23D7EB304(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EB4A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EB5DC(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__marginSpacingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

double sub_23D7EB74C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return dbl_23D8147B8[v1];
}

uint64_t sub_23D7EB7E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

uint64_t sub_23D7EB864(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EB8D0(uint64_t *a1))(void *)
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

uint64_t sub_23D7EB974(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F98, &qword_23D813BB0);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EBB14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F98, &qword_23D813BB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EBC4C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F98, &qword_23D813BB0);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightStyle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EBDBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7EBE30()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EBEA0(uint64_t *a1))(void *)
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

uint64_t sub_23D7EBF44(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FB0, &qword_23D813C08);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EC0E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FB0, &qword_23D813C08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EC21C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FB0, &qword_23D813C08);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7EC3B4(uint64_t *a1))(void *)
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

uint64_t sub_23D7EC458(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23D7EC5F8(uint64_t a1)
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

uint64_t (*sub_23D7EC730(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightFollowsTextColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EC8A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

uint64_t sub_23D7EC918(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EC990(uint64_t *a1))(void *)
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

uint64_t sub_23D7ECA34(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FD0, &qword_23D813CA8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7ECBD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FD0, &qword_23D813CA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7ECD0C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FD0, &qword_23D813CA8);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}