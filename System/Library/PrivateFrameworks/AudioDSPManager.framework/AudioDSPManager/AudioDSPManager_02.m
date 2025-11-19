uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift11ModelFolderO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223B6ABFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223B6AC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

void *sub_223B6ACB8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_223B6ACF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223B6AD70(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    if ((v18 + 1) >= 2)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_223B6AEC8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFD)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFD)
    {
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
      *v18 = a2 - 2147483646;
    }

    else
    {
      v18[2] = a2 + 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_223B6B0B4(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15D8, &qword_223BF9768);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15E0, &qword_223BF9770);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15E8, &qword_223BF9778);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B6BDCC();
  sub_223BF4EDC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_223B6BE20();
    sub_223BF4CDC();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_223B6BE74();
    sub_223BF4CDC();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_223B6B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  if (sub_223BF452C())
  {
    v7 = *(type metadata accessor for ModelAssetLocation() + 36);
    v8 = a1 + v7;
    v9 = *(a1 + v7 + 16);
    v10 = (a2 + v7);
    v11 = v10[2];
    if (v9 == 1)
    {
      if (v11 == 1)
      {
        return 1;
      }
    }

    else if (v11 != 1 && ((*v8 ^ *v10) & 0x101) == 0)
    {
      if (v9)
      {
        if (v11)
        {
          v13 = *(v8 + 8) == v10[1] && v9 == v11;
          if (v13 || (sub_223BF4DAC() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_223B6B444()
{
  if (*v0)
  {
    result = 0x7053656369766564;
  }

  else
  {
    result = 0x636972656E6567;
  }

  *v0;
  return result;
}

uint64_t sub_223B6B48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  if (v6 || (sub_223BF4DAC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7053656369766564 && a2 == 0xEE00636966696365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_223BF4DAC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_223B6B570(uint64_t a1)
{
  v2 = sub_223B6BDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B6B5AC(uint64_t a1)
{
  v2 = sub_223B6BDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B6B5F4(uint64_t a1)
{
  v2 = sub_223B6BE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B6B630(uint64_t a1)
{
  v2 = sub_223B6BE20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B6B66C(uint64_t a1)
{
  v2 = sub_223B6BE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B6B6A8(uint64_t a1)
{
  v2 = sub_223B6BE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B6B734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223B6B910(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

BOOL sub_223B6B7A8(unsigned __int16 a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 1)
  {
    return a6 == 1;
  }

  if (a6 == 1 || ((a4 ^ a1) & 0x101) != 0)
  {
    return 0;
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    return a2 == a5 && a3 == a6 || (sub_223BF4DAC() & 1) != 0;
  }

  else
  {
    return !a6;
  }
}

unint64_t sub_223B6B868()
{
  result = qword_27D0B1590;
  if (!qword_27D0B1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1590);
  }

  return result;
}

unint64_t sub_223B6B8BC()
{
  result = qword_27D0B1598;
  if (!qword_27D0B1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1598);
  }

  return result;
}

uint64_t sub_223B6B910(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15A0, &qword_223BF9748);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15A8, &qword_223BF9750);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15B0, &qword_223BF9758);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B6BDCC();
  v15 = v32;
  sub_223BF4ECC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_223BF4CCC();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_223B7F34C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_223BF4ACC();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15C0, &qword_223BF9760) + 48);
    *v24 = &type metadata for AssetSpecificity;
    sub_223BF4C4C();
    sub_223BF4ABC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_223B6BE20();
    sub_223BF4C3C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_223B6BE74();
    sub_223BF4C3C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

unint64_t sub_223B6BDCC()
{
  result = qword_27D0B15B8;
  if (!qword_27D0B15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15B8);
  }

  return result;
}

unint64_t sub_223B6BE20()
{
  result = qword_27D0B15C8;
  if (!qword_27D0B15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15C8);
  }

  return result;
}

unint64_t sub_223B6BE74()
{
  result = qword_27D0B15D0;
  if (!qword_27D0B15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15D0);
  }

  return result;
}

unint64_t sub_223B6BEFC()
{
  result = qword_27D0B15F0;
  if (!qword_27D0B15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15F0);
  }

  return result;
}

unint64_t sub_223B6BF54()
{
  result = qword_27D0B15F8;
  if (!qword_27D0B15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15F8);
  }

  return result;
}

unint64_t sub_223B6BFAC()
{
  result = qword_27D0B1600;
  if (!qword_27D0B1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1600);
  }

  return result;
}

unint64_t sub_223B6C004()
{
  result = qword_27D0B1608;
  if (!qword_27D0B1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1608);
  }

  return result;
}

unint64_t sub_223B6C05C()
{
  result = qword_27D0B1610;
  if (!qword_27D0B1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1610);
  }

  return result;
}

unint64_t sub_223B6C0B4()
{
  result = qword_27D0B1618;
  if (!qword_27D0B1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1618);
  }

  return result;
}

unint64_t sub_223B6C10C()
{
  result = qword_27D0B1620;
  if (!qword_27D0B1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1620);
  }

  return result;
}

uint64_t sub_223B6C1F0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_223BF48DC();
  if (!v26)
  {
    return sub_223BF46CC();
  }

  v48 = v26;
  v52 = sub_223BF4B6C();
  v39 = sub_223BF4B7C();
  sub_223BF4B1C();
  result = sub_223BF48CC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_223BF499C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_223BF4B5C();
      result = sub_223BF48EC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_223B6C614(uint64_t a1)
{
  sub_223BF471C();
  swift_getWitnessTable();
  if ((sub_223BF494C() & 1) == 0)
  {
    return a1;
  }

  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

uint64_t sub_223B6C6E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v24 = a7;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v16;
  v17 = sub_223BF471C();

  WitnessTable = swift_getWitnessTable();
  v19 = v25;
  v20 = sub_223B6C1F0(a1, a2, v17, a5, a6, WitnessTable, v24, v15);

  if (v19)
  {
    return (*(v12 + 32))(v23, v15, a6);
  }

  else
  {
    return sub_223B6C614(v20);
  }
}

uint64_t sub_223B6C858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_223B6C610(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_223B6C890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_223B6C884(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

void (*sub_223B6C8C4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_223B6C998(v7, *a2, *v3, *(a3 + 16));
  return sub_223B6C950;
}

void sub_223B6C950(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_223B6C998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v5 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_223BF476C();
  return sub_223B6CA6C;
}

void sub_223B6CA6C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void *sub_223B6CB58@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_223B6CB70(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_223B6CB94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_223B6CBF0()
{
  swift_getWitnessTable();
  v1 = sub_223B6D2D0();
  v2 = *v0;

  return v1;
}

uint64_t sub_223B6CC74()
{
  v0 = sub_223BF46BC();

  return sub_223B6C614(v0);
}

uint64_t sub_223B6CCB4()
{
  sub_223BF4E8C();
  sub_223BF473C();
  return sub_223BF4EBC();
}

uint64_t sub_223B6CD28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return sub_223B6CCB4();
}

uint64_t sub_223B6CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_223BF4E8C();
  sub_223B6CCB0(v7, *v3, *(a2 + 16), v5);
  return sub_223BF4EBC();
}

uint64_t sub_223B6CDA8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_223B6CE60(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0B1628, &qword_223BF9C48);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_223B6CED4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_223BF44EC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_223BF49BC() + 36);
  result = sub_223BF44EC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_223B6CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_223B6CE60(a3, a3);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = *(a3 - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  swift_allocObject();
  sub_223BF469C();
  (*(v8 + 16))(v11, a1, a3);
  sub_223BF471C();
  v12 = sub_223BF46BC();

  return v12;
}

uint64_t sub_223B6D09C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_223BF471C();
  v6 = sub_223B6CE60(a3, a3);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(a3 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  sub_223BF469C();
  (*(v9 + 16))(v12, a1, a3);
  swift_getWitnessTable();
  sub_223BF49AC();

  return v14;
}

uint64_t sub_223B6D1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_223BF44EC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_223B6D2D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_223B6D32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_223BF46CC();
  v5 = sub_223B6CFA0(a1, v4, a2);

  return v5;
}

uint64_t sub_223B6D384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_223B6D32C(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_223B6D3B0()
{
  type metadata accessor for NonEmptyArray();
  type metadata accessor for NonEmptyArray();

  swift_getWitnessTable();
  sub_223BF496C();
  sub_223B6C6D4();
  sub_223BF4E5C();
  swift_getWitnessTable();
  sub_223BF465C();

  return v1;
}

uint64_t sub_223B6D4FC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_223B6D3B0();
  *a2 = result;
  return result;
}

uint64_t sub_223B6D544(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_223B6D580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = *a2;
  result = sub_223B6CC74();
  *a3 = result;
  return result;
}

uint64_t sub_223B6D5BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift32NotificationStreamBuilderOutcomeOyxq_G(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_223B6D618(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 2)
  {
    v1 = *result + 2;
  }

  if (v1 == 1)
  {
    v2 = *(result + 8);
  }

  else if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(result);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_223B6D65C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v3 = *a1 + 2;
  }

  if (v3 == 1)
  {
    v5 = *(a1 + 8);
    v4 = a1;

    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = a1;
    __swift_destroy_boxed_opaque_existential_0(a1);
LABEL_8:
    a1 = v4;
  }

  v6 = *(a2 + 40);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 40) = 1;
  }

  else if (v6)
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t sub_223B6D71C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223B6D758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_223B6D7A4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_223B6D7C0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

id sub_223B6D8B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteropNotificationStreamKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_223B6D958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteropNotificationStreamKeys();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223B6D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_223B6D9E4(a5);
  return 0;
}

uint64_t sub_223B6D9E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223B6D9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR___ADMNotificationVendor_builder), *(v7 + OBJC_IVAR___ADMNotificationVendor_builder + 24));
  sub_223B547A8(a1, a2, v24);
  if (v25)
  {
    if (v25 == 1)
    {
      v15 = v24[0];
      *a7 = v24[0];
      v23[0] = v15;
      sub_223B6DC3C();
      swift_willThrowTypedImpl();
      sub_223B6D9E4(a5);
    }

    else
    {
      sub_223B6D9E4(a5);

      return 0;
    }

    return a7;
  }

  result = sub_223B6DC90(v24, v23);
  a7 = *(v7 + OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey);
  if (!__OFADD__(a7, 1))
  {
    *(v7 + OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey) = a7 + 1;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    sub_223B57430(v23, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B16C8, &qword_223BF9E80);
    swift_allocObject();

    sub_223B70CB8(a5);
    v18 = sub_223B70B4C(&unk_223BF9E78, v17, a5, a6, v22);
    sub_223B6D9E4(a5);

    v19 = OBJC_IVAR___ADMNotificationVendor_broadcasters;
    swift_beginAccess();
    v20 = *(v7 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v7 + v19);
    *(v7 + v19) = 0x8000000000000000;
    sub_223B706EC(v18, a7, isUniquelyReferenced_nonNull_native);
    *(v7 + v19) = v26;
    swift_endAccess();
    sub_223B6D9E4(a5);

    __swift_destroy_boxed_opaque_existential_0(v23);
    return a7;
  }

  __break(1u);
  return result;
}

unint64_t sub_223B6DC3C()
{
  result = qword_27D0B16B8;
  if (!qword_27D0B16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B16B8);
  }

  return result;
}

uint64_t sub_223B6DC90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_223B6DCA8(unsigned __int8 *a1, int *a2)
{
  v3 = *a1;
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223B4D6F4;

  return v7(v3);
}

uint64_t sub_223B6DD9C(unsigned __int8 *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223B56CF0;

  return sub_223B6DCA8(a1, v5);
}

uint64_t sub_223B6DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR___ADMNotificationVendor_builder), *(v4 + OBJC_IVAR___ADMNotificationVendor_builder + 24));

  sub_223B547A8(a1, a2, v35);
  if (v36)
  {
    if (v36 == 1)
    {
      v10 = v35[0];
      v32[0] = v35[0];
      sub_223B6DC3C();
      swift_willThrowTypedImpl();

      v11 = type metadata accessor for ListenerRegistrationResults();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR___ADMListenerRegistrationResults_state];
      *v13 = v10;
      v13[16] = 0;
      v33.receiver = v12;
      v33.super_class = v11;

      v14 = objc_msgSendSuper2(&v33, sel_init);

LABEL_8:

      return v14;
    }

    v26 = type metadata accessor for ListenerRegistrationResults();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR___ADMListenerRegistrationResults_state];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 2;
    v34.receiver = v27;
    v34.super_class = v26;
    v25 = objc_msgSendSuper2(&v34, sel_init);
LABEL_7:
    v14 = v25;
    goto LABEL_8;
  }

  result = sub_223B6DC90(v35, v32);
  v16 = *(v4 + OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey);
  if (!__OFADD__(v16, 1))
  {
    *(v4 + OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey) = v16 + 1;
    v17 = swift_allocObject();
    *(v17 + 16) = &unk_223BF9E90;
    *(v17 + 24) = v9;
    sub_223B57430(v32, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B16C8, &qword_223BF9E80);
    swift_allocObject();

    v18 = sub_223B70B4C(&unk_223BF9E98, v17, 0, 0, v31);

    v19 = OBJC_IVAR___ADMNotificationVendor_broadcasters;
    swift_beginAccess();
    v20 = *(v4 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + v19);
    *(v4 + v19) = 0x8000000000000000;
    sub_223B706EC(v18, v16, isUniquelyReferenced_nonNull_native);
    *(v4 + v19) = v30;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0(v32);
    v22 = type metadata accessor for ListenerRegistrationResults();
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR___ADMListenerRegistrationResults_state];
    *v24 = v16;
    *(v24 + 1) = 0;
    v24[16] = 1;
    v29.receiver = v23;
    v29.super_class = v22;
    v25 = objc_msgSendSuper2(&v29, sel_init);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_223B6E14C(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_223B6E27C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ADMNotificationVendor_broadcasters;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = sub_223B6F960(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *(v2 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_223B6FC78();
    }

    v12 = v8;
    v13 = *(*(v11 + 56) + 8 * v8);
    sub_223B7057C(v12, v11);
    *(v2 + v4) = v11;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_223B70D7C();
    return swift_willThrowTypedImpl();
  }
}

uint64_t sub_223B6E368(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___ADMListenerRegistrationResults_state + 16) != 1)
  {
    return 0;
  }

  sub_223B6E27C(*(a1 + OBJC_IVAR___ADMListenerRegistrationResults_state));
  return 1;
}

id sub_223B6E4EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationVendor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223B6E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B6E610, a4, 0);
}

uint64_t sub_223B6E610()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_223BF47EC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_223B712D8();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  v6 = sub_223B6E728(0, 0, v2, &unk_223BFA058, v5);
  v7 = *(v1 + 184);
  *(v1 + 184) = v6;

  v8 = v0[1];

  return v8();
}

uint64_t sub_223B6E728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_223B568F8(a3, v27 - v11, &qword_27D0B1060, &qword_223BF76B0);
  v13 = sub_223BF47EC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_223B56960(v12, &qword_27D0B1060, &qword_223BF76B0);
  }

  else
  {
    sub_223BF47DC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_223BF47AC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_223BF455C() + 32;
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

      sub_223B56960(a3, &qword_27D0B1060, &qword_223BF76B0);

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

  sub_223B56960(a3, &qword_27D0B1060, &qword_223BF76B0);
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

uint64_t sub_223B6EA48()
{
  v1 = v0[9];
  v2 = *(v1 + 168);
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 144), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_223BF481C();

  v7 = sub_223B712D8();
  v0[10] = v7;
  v8 = v0[9];
  v9 = v0[5];
  v10 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v9);
  v11 = *(MEMORY[0x277D856D8] + 4);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_223B6EC1C;

  return MEMORY[0x282200310](v0 + 17, v8, v7, v0 + 7, v9, v10);
}

uint64_t sub_223B6EC1C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;

  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_223B6EF74;
  }

  else
  {
    v5 = sub_223B6ED30;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_223B6ED30()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v3 = v2[16];
    *(v0 + 112) = v3;
    if (v3)
    {
      *(v0 + 120) = *(*(v0 + 72) + 136);

      v11 = (v3 + *v3);
      v4 = v3[1];
      v5 = swift_task_alloc();
      *(v0 + 128) = v5;
      *v5 = v0;
      v5[1] = sub_223B6F390;

      return v11();
    }

    else
    {
      v10 = *(v0 + 8);

      return v10();
    }
  }

  else
  {
    *(v0 + 137) = v1 & 1;
    v7 = v2[14];
    *(v0 + 96) = v2[15];

    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_223B6F18C;

    return v12(v0 + 137);
  }
}

uint64_t sub_223B6EF74()
{
  v1 = v0[7];
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
  v2 = sub_223BF4D9C();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D0B0B70 != -1)
  {
    swift_once();
  }

  v5 = sub_223BF442C();
  __swift_project_value_buffer(v5, qword_27D0B97F8);
  v6 = v3;
  v7 = sub_223BF441C();
  v8 = sub_223BF49EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_223B4A000, v7, v8, "SingleListenerBroadcaster::exception while listening to notification provider: %@", v9, 0xCu);
    sub_223B56960(v10, &qword_27D0B16F0, &qword_223BFA068);
    MEMORY[0x223DF4FD0](v10, -1, -1);
    MEMORY[0x223DF4FD0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_223B6F18C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_223B6F2B8, v3, 0);
}

uint64_t sub_223B6F2B8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[5];
  v4 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v3);
  v5 = *(MEMORY[0x277D856D8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_223B6EC1C;

  return MEMORY[0x282200310](v0 + 17, v1, v2, v0 + 7, v3, v4);
}

uint64_t sub_223B6F390()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v6 = *v0;

  sub_223B6D9E4(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_223B6F4B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223B4D8B8;

  return v7(a1);
}

unint64_t sub_223B6F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_223BF4DAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_223B6F668(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_223B7100C();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_223BF432C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_223B6F744(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_223B6F7B0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_223B6F81C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_223BF4E8C();
  sub_223BF458C();
  v6 = sub_223BF4EBC();

  return sub_223B6F5B0(a1, a2, v6);
}

unint64_t sub_223B6F894(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_223BF4E8C();
  type metadata accessor for CFString();
  sub_223B7100C();
  sub_223BF433C();
  v4 = sub_223BF4EBC();

  return sub_223B6F668(a1, v4);
}

unint64_t sub_223B6F918(unsigned int a1)
{
  v3 = MEMORY[0x223DF36A0](*(v1 + 40), a1, 4);

  return sub_223B6F744(a1, v3);
}

unint64_t sub_223B6F960(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_223BF4E7C();

  return sub_223B6F7B0(a1, v4);
}

id sub_223B6F9A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1188, &unk_223BF7C10);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223B6FB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B8, &unk_223BFA070);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223B6FC78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1268, &qword_223BF7CF0);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223B6FDF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11A8, &unk_223BF7C30);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223B6FF8C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v41 = a1;
  v42 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v36 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *v4;
  v12 = sub_223BF4BFC();
  v13 = v12;
  if (*(v11 + 16))
  {
    v37 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = *(v11 + 64);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    v38 = v11;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = v25 | (v18 << 6);
        v29 = *(v11 + 56);
        v30 = *(*(v11 + 48) + 4 * v28);
        v31 = v39;
        v32 = *(v40 + 72) * v28;
        v33 = v41;
        v34 = v42;
        sub_223B568F8(v29 + v32, v39, v41, v42);
        v35 = v43;
        *(*(v43 + 48) + 4 * v28) = v30;
        v11 = v38;
        result = sub_223B56890(v31, *(v35 + 56) + v32, v33, v34);
      }

      while (v23);
    }

    v26 = v18;
    while (1)
    {
      v18 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v18 >= v24)
      {

        v7 = v37;
        v13 = v43;
        goto LABEL_21;
      }

      v27 = *(v15 + 8 * v18);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_223B701E0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v41 = a1;
  v42 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *v4;
  v12 = sub_223BF4BFC();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v7;
    v38 = (v11 + 64);
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, v38, 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = (*(v11 + 48) + 16 * v26);
        v29 = *v28;
        v30 = v28[1];
        v31 = v39;
        v32 = *(v40 + 72) * v26;
        v34 = v41;
        v33 = v42;
        sub_223B568F8(*(v11 + 56) + v32, v39, v41, v42);
        v35 = v43;
        v36 = (*(v43 + 48) + v27);
        *v36 = v29;
        v36[1] = v30;
        sub_223B56890(v31, *(v35 + 56) + v32, v34, v33);

        v21 = v44;
      }

      while (v44);
    }

    v24 = v17;
    v13 = v43;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v37;
        goto LABEL_21;
      }

      v25 = *(v38 + v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v44 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_223B7042C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1298, &unk_223BFAF60);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_223B7057C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_223BF4A4C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_223BF4E7C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_223B706EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_223B6F960(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_223B59254(v14, a3 & 1);
      v18 = *v4;
      result = sub_223B6F960(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_223BF4DEC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_223B6FC78();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_223B70838(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_223B6F81C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_223B701E0(&qword_27D0B1278, &qword_223BF8500, &qword_27D0B1280, &unk_223BF7D00);
      goto LABEL_7;
    }

    sub_223B59790(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_223B6F81C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_223BF4DEC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500) - 8) + 72) * v12;

    return sub_223B71430(a1, v20);
  }

LABEL_13:
  sub_223B709C8(v12, a2, a3, a1, v18);
}

uint64_t sub_223B709C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  result = sub_223B56890(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_27D0B1278, &qword_223BF8500);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_223B70A84()
{
  v7[3] = &type metadata for CanonicalNotificationStreamBuilder;
  v7[4] = &off_283717958;
  v0 = type metadata accessor for NotificationVendor();
  v1 = objc_allocWithZone(v0);
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for CanonicalNotificationStreamBuilder);
  v6[3] = &type metadata for CanonicalNotificationStreamBuilder;
  v6[4] = &off_283717958;
  v2 = OBJC_IVAR___ADMNotificationVendor_broadcasters;
  *&v1[v2] = sub_223B7569C(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey] = 0;
  sub_223B57430(v6, &v1[OBJC_IVAR___ADMNotificationVendor_builder]);
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v3;
}

void *sub_223B70B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - v13;
  swift_defaultActor_initialize();
  v5[23] = 0;
  v5[14] = a1;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = a4;
  sub_223B57430(a5, (v5 + 18));
  v15 = sub_223BF47EC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v5;

  sub_223B70CB8(a3);

  sub_223B6E728(0, 0, v14, &unk_223BFA030, v16);

  __swift_destroy_boxed_opaque_existential_0(a5);
  return v5;
}

uint64_t sub_223B70CB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223B70CC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223B56CF0;

  return sub_223B6E14C(a1, v5);
}

unint64_t sub_223B70D7C()
{
  result = qword_27D0B16D8;
  if (!qword_27D0B16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B16D8);
  }

  return result;
}

unint64_t sub_223B70DF8()
{
  result = qword_27D0B16E0;
  if (!qword_27D0B16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B16E0);
  }

  return result;
}

unint64_t sub_223B7100C()
{
  result = qword_27D0B1190;
  if (!qword_27D0B1190)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1190);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_223B710B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_223B4D6F4;

  return sub_223B6E570(a1, v4, v5, v6);
}

uint64_t sub_223B71168(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223B56CF0;

  return sub_223B6F4B8(a1, v5);
}

uint64_t sub_223B71220(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223B4D6F4;

  return sub_223B6F4B8(a1, v5);
}

unint64_t sub_223B712D8()
{
  result = qword_27D0B16E8;
  if (!qword_27D0B16E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B16C8, &qword_223BF9E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B16E8);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_223B7137C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_223B56CF0;

  return sub_223B6EA28(a1, v4, v5, v6);
}

uint64_t sub_223B71430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223B714A0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v68 = a6;
  v70 = a5;
  v71 = a4;
  v73 = a2;
  v74 = a1;
  v66 = a7;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 24);
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  v17 = MEMORY[0x28223BE20](v11);
  v69 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v19;
  v67 = *(v19 - 8);
  v20 = *(v67 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v61 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v61 - v28;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v63 = *v33;
      type metadata accessor for NonEmptyArray();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v38 = v65;
      v39 = &v33[*(TupleTypeMetadata2 + 48)];
      v62 = *(v65 + 32);
      v40 = v62(v69, v39, v15);
      v64 = &v61;
      MEMORY[0x28223BE20](v40);
      *(&v61 - 8) = v8;
      *(&v61 - 7) = v15;
      v41 = v72;
      *(&v61 - 6) = v71;
      *(&v61 - 5) = v41;
      v42 = v70;
      *(&v61 - 4) = *(a3 + 32);
      *(&v61 - 3) = v42;
      v43 = v73;
      *(&v61 - 2) = v74;
      *(&v61 - 1) = v43;
      v44 = type metadata accessor for SearchDescription();
      v45 = v75;
      v46 = sub_223B6C6E4(sub_223B72C34, (&v61 - 10), v63, a3, v44, v41, v42, v26);
      if (v45)
      {
        (*(v38 + 8))(v69, v15);

        return (*(v67 + 32))(v68, v26, v41);
      }

      else
      {
        v56 = v46;

        type metadata accessor for NonEmptyArray();
        v57 = *(swift_getTupleTypeMetadata2() + 48);
        v58 = v66;
        *v66 = v56;
        v62(v58 + v57, v69, v15);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      (*(v9 + 32))(v13, v33, v8);
      v55 = v75;
      v74(v13, v23);
      (*(v9 + 8))(v13, v8);
      if (v55)
      {
        return (*(v67 + 32))(v68, v23, v72);
      }

      else
      {
        v60 = *(a3 + 32);
        type metadata accessor for SearchDescription();
        return swift_storeEnumTagMultiPayload();
      }
    }
  }

  else
  {
    v48 = *v33;
    LODWORD(v69) = v33[8];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v61 - 8) = v8;
    *(&v61 - 7) = v15;
    v49 = v72;
    *(&v61 - 6) = v71;
    *(&v61 - 5) = v49;
    v50 = v70;
    *(&v61 - 4) = *(a3 + 32);
    *(&v61 - 3) = v50;
    v51 = v73;
    *(&v61 - 2) = v74;
    *(&v61 - 1) = v51;
    v52 = type metadata accessor for SearchDescription();
    v53 = v75;
    v54 = sub_223B6C6E4(sub_223B73138, (&v61 - 10), v48, a3, v52, v49, v50, v29);

    if (v53)
    {
      return (*(v67 + 32))(v68, v29, v49);
    }

    else
    {
      v59 = v66;
      *v66 = v54;
      *(v59 + 8) = v69;
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_223B71A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SearchDescription();
  v19 = v21[1];
  result = sub_223B714A0(a2, a3, v18, a6, a7, a9, v17);
  if (v19)
  {
    return (*(v14 + 32))(a10, v17, a7);
  }

  return result;
}

uint64_t sub_223B71BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v71 = a1;
  v72 = a2;
  v64 = *(a3 - 8);
  v6 = *(v64 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v61 - v14;
  v67 = v13;
  v61 = v15;
  v16 = type metadata accessor for SearchDescription();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v61 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = *(TupleTypeMetadata2 - 8);
  v28 = *(v70 + 64);
  v29 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v31 = &v61 - v30;
  v32 = &v61 + *(v29 + 48) - v30;
  v69 = v17;
  v33 = *(v17 + 16);
  v33(&v61 - v30, v71, v16);
  v33(v32, v72, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v33(v26, v31, v16);
    v51 = *v26;
    v52 = v26[8];
    if (!swift_getEnumCaseMultiPayload())
    {
      v55 = *v32;
      v56 = v32[8];
      v73 = v68;
      WitnessTable = swift_getWitnessTable();
      v58 = sub_223B6CCAC(v51, v55, v16, WitnessTable);

      if (v58)
      {
        (*(v69 + 8))(v31, v16);
        v47 = v52 ^ v56 ^ 1;
        return v47 & 1;
      }

      goto LABEL_17;
    }

LABEL_13:
    (*(v70 + 8))(v31, TupleTypeMetadata2);
LABEL_18:
    v47 = 0;
    return v47 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v33(v21, v31, v16);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v53 = v64;
      v54 = v62;
      (*(v64 + 32))(v62, v32, a3);
      v47 = sub_223BF452C();
      v48 = *(v53 + 8);
      v48(v54, a3);
      v49 = v21;
      v50 = a3;
      goto LABEL_10;
    }

    (*(v64 + 8))(v21, a3);
    goto LABEL_13;
  }

  v33(v24, v31, v16);
  v35 = *v24;
  type metadata accessor for NonEmptyArray();
  v36 = v67;
  v37 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v65 + 8))(&v24[v37], v36);

    goto LABEL_13;
  }

  v38 = v36;
  v72 = *v32;
  v39 = v65;
  v40 = *(v65 + 32);
  v40(v66, &v24[v37], v38);
  v41 = &v32[v37];
  v42 = v63;
  v40(v63, v41, v38);
  v74 = v68;
  v43 = swift_getWitnessTable();
  v44 = sub_223B6CCAC(v35, v72, v16, v43);

  if ((v44 & 1) == 0)
  {
    v59 = *(v39 + 8);
    v59(v42, v38);
    v59(v66, v38);
LABEL_17:
    (*(v69 + 8))(v31, v16);
    goto LABEL_18;
  }

  v45 = *(*(v61 + 16) + 8);
  v46 = v66;
  v47 = sub_223BF452C();
  v48 = *(v39 + 8);
  v48(v42, v38);
  v49 = v46;
  v50 = v38;
LABEL_10:
  v48(v49, v50);
  (*(v69 + 8))(v31, v16);
  return v47 & 1;
}

uint64_t sub_223B72250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v63 = a4;
  v9 = *(a1 + 16);
  v62 = sub_223BF4A0C();
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v62);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v64 = *(v9 - 8);
  v17 = *(v64 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v60 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v23 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v5, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v59 = v10;
      v28 = *v25;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v57 - 4) = v9;
      *(&v57 - 3) = a2;
      *(&v57 - 2) = a3;
      v29 = sub_223B72B58();
      v30 = v65;
      v32 = sub_223B6C6E4(sub_223B72B34, (&v57 - 6), v28, a1, v9, &type metadata for SearchError, v29, v31);

      if (!v30)
      {
        v66[0] = v32;
        MEMORY[0x28223BE20](result);
        *(&v57 - 4) = v9;
        *(&v57 - 3) = a2;
        *(&v57 - 2) = a3;
        KeyPath = swift_getKeyPath();
        v35 = MEMORY[0x28223BE20](KeyPath);
        v58 = v36;
        *(&v57 - 4) = v36;
        *(&v57 - 3) = a3;
        *(&v57 - 2) = v35;
        type metadata accessor for NonEmptyArray();
        swift_getWitnessTable();
        v37 = sub_223BF464C();
        v65 = 0;

        v66[0] = v37;
        sub_223BF471C();
        swift_getWitnessTable();
        v38 = v61;
        sub_223BF491C();
        v39 = v64;
        if ((*(v64 + 48))(v38, 1, v9) == 1)
        {
          (*(v59 + 8))(v38, v62);

          return (*(v58 + 16))(v9);
        }

        else
        {
          v51 = a3;
          v52 = v60;
          (*(v39 + 32))(v60, v38, v9);
          v66[6] = v37;
          v66[3] = sub_223BF4A2C();
          v66[4] = swift_getWitnessTable();
          v66[0] = swift_allocObject();
          sub_223BF496C();
          v53 = sub_223B6D09C(v52, v66, v9);
          __swift_destroy_boxed_opaque_existential_0(v66);
          (*(v51 + 16))(v53, v9, v51);

          return (*(v39 + 8))(v52, v9);
        }
      }
    }

    else
    {
      return (*(v64 + 32))(v63, v25, v9);
    }
  }

  else
  {
    v61 = v22;
    v59 = v10;
    v40 = *v25;
    LODWORD(v60) = v25[8];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v57 - 4) = v9;
    *(&v57 - 3) = a2;
    v41 = a2;
    *(&v57 - 2) = a3;
    v42 = sub_223B72B58();
    v43 = v65;
    v45 = sub_223B6C6E4(sub_223B73150, (&v57 - 6), v40, a1, v9, &type metadata for SearchError, v42, v44);

    if (!v43)
    {
      v65 = v42;
      v66[0] = v45;
      MEMORY[0x28223BE20](result);
      *(&v57 - 4) = v9;
      *(&v57 - 3) = v41;
      *(&v57 - 2) = a3;
      v46 = swift_getKeyPath();
      v47 = MEMORY[0x28223BE20](v46);
      v58 = v48;
      *(&v57 - 4) = v48;
      *(&v57 - 3) = a3;
      *(&v57 - 2) = v47;
      type metadata accessor for NonEmptyArray();
      swift_getWitnessTable();
      v49 = sub_223BF464C();

      v66[0] = v49;
      sub_223BF471C();
      swift_getWitnessTable();
      sub_223BF491C();
      v50 = v64;
      if ((*(v64 + 48))(v16, 1, v9) == 1)
      {
        (*(v59 + 8))(v16, v62);

        return (*(v58 + 16))(v9);
      }

      v54 = *(v50 + 32);
      v55 = v61;
      v54(v61, v16, v9);
      if (v60)
      {
        v56 = sub_223BF46FC();

        if (v56 > 1)
        {
          swift_willThrowTypedImpl();
          return (*(v64 + 8))(v55, v9);
        }
      }

      else
      {
      }

      return (v54)(v63, v55, v9);
    }
  }

  return result;
}

uint64_t sub_223B72AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_223B72BE0();
  v6 = type metadata accessor for SearchDescription();
  return sub_223B72250(v6, a3, a4);
}

unint64_t sub_223B72B58()
{
  result = qword_281339A48;
  if (!qword_281339A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A48);
  }

  return result;
}

uint64_t sub_223B72BAC()
{
  v1 = *(v0 + 32);
  swift_getAtKeyPath();
  return v3;
}

unint64_t sub_223B72BE0()
{
  result = qword_281339370;
  if (!qword_281339370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339370);
  }

  return result;
}

uint64_t sub_223B72C94(uint64_t a1)
{
  type metadata accessor for NonEmptyArray();
  result = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    result = swift_getTupleTypeMetadata2();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_223B72D58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 24) - 8) + 80) + 8) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = 9;
  if (v3 > 9)
  {
    v4 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_223B72ECC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 80) + 8) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_41:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

unint64_t sub_223B730E4()
{
  result = qword_27D0B16F8[0];
  if (!qword_27D0B16F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D0B16F8);
  }

  return result;
}

void *sub_223B73224()
{
  if (v0[23])
  {
    v1 = v0[23];

    sub_223BF47FC();
  }

  v2 = v0[15];

  v3 = v0[17];
  sub_223B6D9E4(v0[16]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v4 = v0[23];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_223B732A4()
{
  sub_223B73224();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_223B732E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v35 - v15);
  sub_223B568F8(v1, v35 - v15, &qword_27D0B11C0, &qword_223BF7C48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v26 = *v16;
      return sub_223BF487C();
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_223B74D2C(*v16);

        sub_223B772BC(0, &qword_2813392E0, 0x277D82BB8);
        v20 = sub_223BF444C();

        return v20;
      }

      goto LABEL_13;
    }

    v28 = *v16;
    v29 = *(*v16 + 16);
    if (v29)
    {
      v35[0] = MEMORY[0x277D84F90];
      sub_223BF4B2C();
      v30 = 32;
      do
      {
        v31 = *(v28 + v30);
        sub_223BF489C();
        sub_223BF4AFC();
        v32 = *(v35[0] + 16);
        sub_223BF4B3C();
        sub_223BF4B4C();
        sub_223BF4B0C();
        v30 += 8;
        --v29;
      }

      while (v29);
    }

    else
    {
      v33 = *v16;
    }

    sub_223B772BC(0, &qword_27D0B1840, 0x277CCABB0);
    v34 = sub_223BF467C();

    return v34;
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v18 = *v16;
        return sub_223BF477C();
      }

LABEL_13:
      sub_223B56960(v16, &qword_27D0B11C0, &qword_223BF7C48);
      return 0;
    }

    v27 = *v16;
    return sub_223BF489C();
  }

  else
  {
    sub_223B56890(v16, v12, &qword_27D0B11F8, &qword_223BF7C80);
    v36 = v6;
    v37 = &off_283717F68;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    sub_223B568F8(v12, boxed_opaque_existential_1, &qword_27D0B11F8, &qword_223BF7C80);
    v22 = __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_223B568F8(v22, v10, &qword_27D0B11F8, &qword_223BF7C80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v10;
      v24 = v10[1];
      v25 = sub_223BF453C();
    }

    else
    {
      sub_223B56890(v10, v5, &qword_27D0B1820, &unk_223BFA720);
      sub_223BF42BC();
      v25 = sub_223BF453C();

      sub_223B56960(v5, &qword_27D0B1820, &unk_223BFA720);
    }

    sub_223B56960(v12, &qword_27D0B11F8, &qword_223BF7C80);
    __swift_destroy_boxed_opaque_existential_0(v35);
    return v25;
  }
}

uint64_t sub_223B73758()
{
  v1 = *v0;
  sub_223BF4E8C();
  sub_223BF4EAC();
  return sub_223BF4EBC();
}

uint64_t sub_223B737CC()
{
  v1 = *v0;
  sub_223BF4E8C();
  sub_223BF4EAC();
  return sub_223BF4EBC();
}

unint64_t sub_223B73810@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_223B759B8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id sub_223B73850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v15[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&v15[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os] = a7;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_223B73904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = &v7[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath];
  *v9 = a3;
  *(v9 + 1) = a4;
  v10 = &v7[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier];
  *v10 = a5;
  *(v10 + 1) = a6;
  *&v7[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os] = a7;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for InteropLayerSystemConfigurationQuery();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_223B73B2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - v10);
  sub_223B568F8(a1, &v20 - v10, &qword_27D0B11F8, &qword_223BF7C80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *v11;
    v13 = v11[1];
  }

  else
  {
    sub_223B56890(v11, v7, &qword_27D0B1820, &unk_223BFA720);
    v14 = sub_223BF42BC();
    v13 = v15;
    sub_223B56960(v7, &qword_27D0B1820, &unk_223BFA720);
  }

  v16 = &v2[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path];
  *v16 = v14;
  *(v16 + 1) = v13;
  v16[16] = EnumCaseMultiPayload == 1;
  v17 = type metadata accessor for InteropLayerFailablePath();
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_223B56960(a1, &qword_27D0B11F8, &qword_223BF7C80);
  return v18;
}

uint64_t sub_223B73D20()
{
  v1 = (v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path);
  if (*(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path + 16))
  {
    result = sub_223BF4BEC();
    __break(1u);
  }

  else
  {
    v3 = *v1;
    v2 = v1[1];

    return v3;
  }

  return result;
}

uint64_t sub_223B73E8C()
{
  v1 = (v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path);
  if (*(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path + 16) == 1)
  {
    v3 = *v1;
    v2 = v1[1];

    return v3;
  }

  else
  {
    result = sub_223BF4BEC();
    __break(1u);
  }

  return result;
}

id sub_223B742C0(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B17B0, &qword_223BFA3C0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D837D0];
  *(v5 + 16) = xmmword_223BF84C0;
  *(v5 + 56) = v6;
  *(v5 + 32) = 0x65756C6176;
  *(v5 + 40) = 0xE500000000000000;
  *(v5 + 88) = sub_223B772BC(0, &qword_2813392E0, 0x277D82BB8);
  *(v5 + 64) = a1;
  sub_223B772BC(0, &qword_2813392E8, 0x277CBEAC0);
  v7 = a1;
  *&v4[OBJC_IVAR____TtC20AudioDSPManagerSwift31InteropLayerPropertyValueCFType_value] = sub_223BF49CC();
  v10.receiver = v4;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id sub_223B743D8(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B17B0, &qword_223BFA3C0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D837D0];
  *(v4 + 16) = xmmword_223BF84C0;
  *(v4 + 56) = v5;
  *(v4 + 32) = 0x65756C6176;
  *(v4 + 40) = 0xE500000000000000;
  *(v4 + 88) = sub_223B772BC(0, &qword_2813392E0, 0x277D82BB8);
  *(v4 + 64) = a1;
  sub_223B772BC(0, &qword_2813392E8, 0x277CBEAC0);
  v6 = a1;
  *&v2[OBJC_IVAR____TtC20AudioDSPManagerSwift31InteropLayerPropertyValueCFType_value] = sub_223BF49CC();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for InteropLayerPropertyValueCFType();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id sub_223B745A8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_223B745FC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32_value] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InteropLayerPropertyValueArrayUInt32();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_223B74848()
{
  v1 = *(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_ioSemantic);
  v2 = *(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_ioSemantic + 8);

  return v1;
}

uint64_t sub_223B74890()
{
  v1 = *(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_dspSelection);
  v2 = *(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_dspSelection + 8);

  return v1;
}

id sub_223B748D8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_223BF453C();

  return v6;
}

id sub_223B7498C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  type metadata accessor for InteropLayerFailablePath();

  v4 = sub_223BF467C();

  return v4;
}

id sub_223B74C3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_223B74C90(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_223B74CF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_223B74D2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1848, &qword_223BFA748);
  result = sub_223BF4BFC();
  v3 = result;
  v4 = 0;
  v25 = result;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v27 = *(*(v26 + 56) + 8 * v15);

      result = sub_223B579B8(v19);
      v3 = v25;
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v25[6] + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      *(v25[7] + 8 * v15) = result;
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_223B74EAC(uint64_t a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
  v40 = *(v34 - 8);
  v2 = *(v40 + 64);
  v3 = MEMORY[0x28223BE20](v34);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1838, &qword_223BFA740);
  result = sub_223BF4BFC();
  v9 = 0;
  v41 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v38 = result + 8;
  v37 = xmmword_223BF84C0;
  v39 = result;
  v35 = v7;
  v36 = v5;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = *(v41 + 56);
      v46 = *(*(v41 + 48) + 4 * v20);
      sub_223B568F8(v21 + *(v40 + 72) * v20, v7, &qword_27D0B11C0, &qword_223BF7C48);
      v22 = sub_223B732E8();
      if (v22)
      {
        v23 = v22;
        v42 = type metadata accessor for InteropLayerPropertyValueCFType();
        v24 = objc_allocWithZone(v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B17B0, &qword_223BFA3C0);
        v25 = swift_allocObject();
        *(v25 + 16) = v37;
        *(v25 + 56) = MEMORY[0x277D837D0];
        *(v25 + 32) = 0x65756C6176;
        *(v25 + 40) = 0xE500000000000000;
        *(v25 + 88) = sub_223B772BC(0, &qword_2813392E0, 0x277D82BB8);
        *(v25 + 64) = v23;
        sub_223B772BC(0, &qword_2813392E8, 0x277CBEAC0);
        v26 = v23;
        *&v24[OBJC_IVAR____TtC20AudioDSPManagerSwift31InteropLayerPropertyValueCFType_value] = sub_223BF49CC();
        v44.receiver = v24;
        v44.super_class = v42;
        v27 = objc_msgSendSuper2(&v44, sel_init);

        v7 = v35;
        v5 = v36;
      }

      else
      {
        sub_223B568F8(v7, v5, &qword_27D0B11C0, &qword_223BF7C48);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v42 = *v5;
          v28 = type metadata accessor for InteropLayerPropertyValueArrayUInt32();
          v29 = objc_allocWithZone(v28);
          *&v29[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32_value] = v42;
          v45.receiver = v29;
          v45.super_class = v28;
          v27 = objc_msgSendSuper2(&v45, sel_init);
        }

        else
        {
          v27 = [objc_allocWithZone(type metadata accessor for InteropLayerPropertyValue()) init];
          sub_223B56960(v5, &qword_27D0B11C0, &qword_223BF7C48);
        }
      }

      sub_223B56960(v7, &qword_27D0B11C0, &qword_223BF7C48);
      result = v39;
      *(v38 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(result[6] + 4 * v20) = v46;
      *(result[7] + 8 * v20) = v27;
      v30 = result[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      result[2] = v32;
      v15 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return result;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_223B752A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1290, &unk_223BF7D10);
    v8 = sub_223BF4C1C();
    v21 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_223B568F8(v9, v6, &qword_27D0B1858, &unk_223BFAF40);
      v11 = *v6;
      result = sub_223B6F918(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v11;
      v15 = v8[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
      result = sub_223B56890(v6 + v21, v15 + *(*(v16 - 8) + 72) * v14, &qword_27D0B1288, &qword_223BFAF20);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v9 += v10;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_223B75488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1348, &unk_223BFA760);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1280, &unk_223BF7D00);
    v8 = sub_223BF4C1C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      sub_223B568F8(v10, v6, &qword_27D0B1348, &unk_223BFA760);
      v12 = *v6;
      v11 = v6[1];
      result = sub_223B6F81C(*v6, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v8[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
      result = sub_223B56890(v6 + v23, v17 + *(*(v18 - 8) + 72) * v15, &qword_27D0B1278, &qword_223BF8500);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
      if (!--v7)
      {

        return v8;
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

void *sub_223B7569C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1268, &qword_223BF7CF0);
  v3 = sub_223BF4C1C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_223B6F960(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_223B6F960(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_223B757B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_223BF4C1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_223B6F81C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_223B758B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B8, &unk_223BFA070);
    v3 = sub_223BF4C1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_223B6F81C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_223B759B8(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      v1 = 0;
      v2 = 3;
      return v2 | (v1 << 32);
    }

    if (a1 == 2)
    {
      v1 = 0;
      v2 = 2;
      return v2 | (v1 << 32);
    }

LABEL_8:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v2 | (v1 << 32);
}

Class sub_223B75B70(uint64_t a1)
{
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11E8, &qword_223BF7C70);
  v152 = *(v177 - 8);
  v2 = *(v152 + 64);
  MEMORY[0x28223BE20](v177);
  v183 = (&v145 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v184 = &v145 - v6;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v161 = *(v187 - 8);
  v7 = *(v161 + 64);
  v8 = MEMORY[0x28223BE20](v187);
  v176 = (&v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v186 = &v145 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v178 = (&v145 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v182 = &v145 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v181 = &v145 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v145 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v145 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v174 = &v145 - v25;
  MEMORY[0x28223BE20](v24);
  v156 = &v145 - v26;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
  v154 = *(v172 - 8);
  v27 = *(v154 + 64);
  v28 = MEMORY[0x28223BE20](v172);
  v30 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v153 = &v145 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1828, &qword_223BFA7E0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = (&v145 - v37);
  v39 = MEMORY[0x277D84F90];
  v196 = MEMORY[0x277D84F90];
  v40 = *(a1 + 64);
  v148 = a1 + 64;
  v41 = 1 << *(a1 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v150 = v42 & v40;
  v147 = (v41 + 63) >> 6;
  v146 = a1;

  v44 = 0;
  v169 = 0;
  v188 = v39;
  v179 = v20;
  v175 = v23;
  v173 = v30;
  v163 = v36;
  v162 = v38;
LABEL_6:
  v45 = v150;
  if (v150)
  {
    v46 = v44;
LABEL_11:
    v150 = (v45 - 1) & v45;
    v149 = v46;
    v47 = __clz(__rbit64(v45)) | (v46 << 6);
    v48 = (*(v146 + 48) + 16 * v47);
    v49 = *(*(v146 + 56) + 8 * v47);
    v50 = v48[1];
    v158 = *v48;
    v51 = v49 + 64;
    v52 = 1 << *(v49 + 32);
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v54 = v53 & *(v49 + 64);
    v151 = (v52 + 63) >> 6;
    v159 = v50;

    v155 = v49;

    v55 = 0;
    v157 = v49 + 64;
    while (1)
    {
      result = &qword_27D0B1830;
      if (!v54)
      {
        break;
      }

      v171 = v55;
      v56 = v55;
LABEL_25:
      v170 = (v54 - 1) & v54;
      v59 = __clz(__rbit64(v54)) | (v56 << 6);
      v60 = (*(v155 + 48) + 16 * v59);
      v62 = *v60;
      v61 = v60[1];
      v63 = v153;
      sub_223B568F8(*(v155 + 56) + *(v154 + 72) * v59, v153, &qword_27D0B11B0, &unk_223BF7F60);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730);
      v65 = *(v64 + 48);
      v66 = v163;
      *v163 = v62;
      *(v66 + 1) = v61;
      v36 = v66;
      sub_223B56890(v63, &v66[v65], &qword_27D0B11B0, &unk_223BF7F60);
      (*(*(v64 - 8) + 56))(v36, 0, 1, v64);

      v30 = v173;
      v38 = v162;
LABEL_26:
      sub_223B56890(v36, v38, &qword_27D0B1828, &qword_223BFA7E0);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730);
      if ((*(*(v67 - 8) + 48))(v38, 1, v67) == 1)
      {

        v44 = v149;
        goto LABEL_6;
      }

      v68 = v38[1];
      v168 = *v38;
      v167 = v68;
      sub_223B56890(v38 + *(v67 + 48), v30, &qword_27D0B11B0, &unk_223BF7F60);
      v69 = v156;
      sub_223B568F8(v30, v156, &qword_27D0B11F8, &qword_223BF7C80);
      v188 = type metadata accessor for InteropLayerFailablePath();
      v70 = objc_allocWithZone(v188);
      v166 = sub_223B73B2C(v69);
      v71 = v172;
      v72 = *&v30[*(v172 + 44)];
      v73 = *(v72 + 16);
      if (v73)
      {
        v195 = MEMORY[0x277D84F90];
        sub_223BF4B2C();
        v74 = v72 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
        v185 = *(v161 + 72);
        v75 = v174;
        v76 = v175;
        do
        {
          sub_223B568F8(v74, v75, &qword_27D0B11F8, &qword_223BF7C80);
          sub_223B568F8(v75, v76, &qword_27D0B11F8, &qword_223BF7C80);
          v77 = objc_allocWithZone(v188);
          v78 = v76;
          v79 = v76;
          v80 = v179;
          sub_223B568F8(v79, v179, &qword_27D0B11F8, &qword_223BF7C80);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 1)
          {
            v82 = v75;
            v83 = *v80;
            v84 = v80[1];
            v76 = v78;
            v85 = &off_2784F0000;
          }

          else
          {
            v86 = v184;
            sub_223B56890(v80, v184, &qword_27D0B1820, &unk_223BFA720);
            v83 = sub_223BF42BC();
            v84 = v87;
            v88 = v86;
            v82 = v174;
            v85 = &off_2784F0000;
            v76 = v175;
            sub_223B56960(v88, &qword_27D0B1820, &unk_223BFA720);
          }

          v89 = &v77[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path];
          *v89 = v83;
          *(v89 + 1) = v84;
          v89[16] = EnumCaseMultiPayload == 1;
          v194.receiver = v77;
          v194.super_class = v188;
          objc_msgSendSuper2(&v194, v85[339]);
          sub_223B56960(v76, &qword_27D0B11F8, &qword_223BF7C80);
          sub_223B56960(v82, &qword_27D0B11F8, &qword_223BF7C80);
          v75 = v82;
          sub_223BF4AFC();
          v90 = *(v195 + 16);
          sub_223BF4B3C();
          sub_223BF4B4C();
          sub_223BF4B0C();
          v74 += v185;
          --v73;
        }

        while (v73);
        v165 = v195;
        v71 = v172;
        v30 = v173;
      }

      else
      {
        v165 = MEMORY[0x277D84F90];
      }

      v91 = *&v30[v71[10]];
      v92 = *(v91 + 16);
      if (v92)
      {
        v195 = MEMORY[0x277D84F90];
        sub_223BF4B2C();
        v93 = v91 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
        v94 = *(v161 + 72);
        v95 = v182;
        v96 = v181;
        do
        {
          sub_223B568F8(v93, v96, &qword_27D0B11F8, &qword_223BF7C80);
          sub_223B568F8(v96, v95, &qword_27D0B11F8, &qword_223BF7C80);
          v97 = objc_allocWithZone(v188);
          v98 = v178;
          sub_223B568F8(v95, v178, &qword_27D0B11F8, &qword_223BF7C80);
          v99 = swift_getEnumCaseMultiPayload();
          if (v99 == 1)
          {
            v100 = v98;
            v101 = *v98;
            v102 = v100[1];
          }

          else
          {
            v103 = v184;
            sub_223B56890(v98, v184, &qword_27D0B1820, &unk_223BFA720);
            v101 = sub_223BF42BC();
            v102 = v104;
            sub_223B56960(v103, &qword_27D0B1820, &unk_223BFA720);
          }

          v105 = &v97[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path];
          *v105 = v101;
          *(v105 + 1) = v102;
          v105[16] = v99 == 1;
          v193.receiver = v97;
          v193.super_class = v188;
          objc_msgSendSuper2(&v193, sel_init);
          v95 = v182;
          sub_223B56960(v182, &qword_27D0B11F8, &qword_223BF7C80);
          v96 = v181;
          sub_223B56960(v181, &qword_27D0B11F8, &qword_223BF7C80);
          sub_223BF4AFC();
          v106 = *(v195 + 16);
          sub_223BF4B3C();
          sub_223BF4B4C();
          sub_223BF4B0C();
          v93 += v94;
          --v92;
        }

        while (v92);
        v107 = v195;
        v71 = v172;
        v30 = v173;
      }

      else
      {
        v107 = MEMORY[0x277D84F90];
      }

      v108 = v30[v71[9]];
      v109 = type metadata accessor for InteropLayerGraphFlavor();
      v110 = objc_allocWithZone(v109);
      v110[OBJC_IVAR____TtC20AudioDSPManagerSwift23InteropLayerGraphFlavor_value] = v108;
      v192.receiver = v110;
      v192.super_class = v109;
      v111 = objc_msgSendSuper2(&v192, sel_init);
      v112 = v183;
      v164 = v111;
      v113 = *&v30[v71[12]];
      v114 = *(v113 + 16);
      if (v114)
      {
        v160 = v107;
        v195 = MEMORY[0x277D84F90];
        sub_223BF4B2C();
        v115 = v113 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
        v180 = *(v152 + 72);
        do
        {
          sub_223B568F8(v115, v112, &qword_27D0B11E8, &qword_223BF7C70);
          v116 = v112[1];
          v185 = *v112;
          v117 = v112 + *(v177 + 36);
          v118 = v186;
          sub_223B568F8(v117, v186, &qword_27D0B11F8, &qword_223BF7C80);
          v119 = objc_allocWithZone(v188);
          v120 = v176;
          sub_223B568F8(v118, v176, &qword_27D0B11F8, &qword_223BF7C80);
          v121 = swift_getEnumCaseMultiPayload();
          if (v121 == 1)
          {
            v122 = *v120;
            v123 = v120[1];
          }

          else
          {
            v124 = v184;
            sub_223B56890(v120, v184, &qword_27D0B1820, &unk_223BFA720);

            v122 = sub_223BF42BC();
            v123 = v125;
            sub_223B56960(v124, &qword_27D0B1820, &unk_223BFA720);
          }

          v126 = &v119[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path];
          *v126 = v122;
          *(v126 + 1) = v123;
          v126[16] = v121 == 1;
          v191.receiver = v119;
          v191.super_class = v188;
          v127 = objc_msgSendSuper2(&v191, sel_init);
          sub_223B56960(v186, &qword_27D0B11F8, &qword_223BF7C80);
          v128 = type metadata accessor for InteropLayerAUPresetOverrideConfig();
          v129 = objc_allocWithZone(v128);
          v130 = &v129[OBJC_IVAR____TtC20AudioDSPManagerSwift34InteropLayerAUPresetOverrideConfig_boxName];
          *v130 = v185;
          *(v130 + 1) = v116;
          *&v129[OBJC_IVAR____TtC20AudioDSPManagerSwift34InteropLayerAUPresetOverrideConfig_filePath] = v127;
          v190.receiver = v129;
          v190.super_class = v128;
          objc_msgSendSuper2(&v190, sel_init);
          v112 = v183;
          sub_223B56960(v183, &qword_27D0B11E8, &qword_223BF7C70);
          sub_223BF4AFC();
          v131 = *(v195 + 16);
          sub_223BF4B3C();
          sub_223BF4B4C();
          sub_223BF4B0C();
          v115 += v180;
          --v114;
        }

        while (v114);
        v132 = v195;
        v71 = v172;
        v133 = &off_2784F0000;
        v107 = v160;
      }

      else
      {
        v132 = MEMORY[0x277D84F90];
        v133 = &off_2784F0000;
      }

      v134 = v169;
      v135 = sub_223B74EAC(*&v173[v71[13]]);
      v169 = v134;
      v136 = type metadata accessor for InteropLayerSystemConfigurationDatabaseEntry();
      v137 = objc_allocWithZone(v136);
      v138 = &v137[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_ioSemantic];
      v139 = v159;
      *v138 = v158;
      *(v138 + 1) = v139;
      v140 = &v137[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_dspSelection];
      v141 = v167;
      *v140 = v168;
      *(v140 + 1) = v141;
      *&v137[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_graphFilePath] = v166;
      *&v137[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_propStripFilePaths] = v165;
      *&v137[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_tuningStripFilePaths] = v107;
      *&v137[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_graphFlavor] = v164;
      *&v137[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_auPresetOverrideConfig] = v132;
      *&v137[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_properties] = v135;
      v189.receiver = v137;
      v189.super_class = v136;
      v142 = v133[339];

      objc_msgSendSuper2(&v189, v142);
      v51 = v157;
      MEMORY[0x223DF2EA0]();
      v36 = v163;
      v54 = v170;
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v144 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_223BF46AC();
        v36 = v163;
      }

      sub_223BF46EC();
      v188 = v196;
      v30 = v173;
      sub_223B56960(v173, &qword_27D0B11B0, &unk_223BF7F60);
      v38 = v162;
      v55 = v171;
    }

    if (v151 <= v55 + 1)
    {
      v57 = v55 + 1;
    }

    else
    {
      v57 = v151;
    }

    v58 = v57 - 1;
    while (1)
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v56 >= v151)
      {
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730);
        (*(*(v143 - 8) + 56))(v36, 1, 1, v143);
        v170 = 0;
        v171 = v58;
        goto LABEL_26;
      }

      v54 = *(v51 + 8 * v56);
      ++v55;
      if (v54)
      {
        v171 = v56;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= v147)
      {

        return v188;
      }

      v45 = *(v148 + 8 * v46);
      ++v44;
      if (v45)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223B76C34(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os) >= 4u)
  {
    v10 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os);
    result = sub_223BF4DCC();
    __break(1u);
  }

  else
  {
    v1 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath);
    v2 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath + 8);
    v3 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath);
    v4 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath + 8);
    v5 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier);
    v6 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier + 8);
    LOBYTE(v10) = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os);
    v11 = v1;
    v12 = v2;
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = v6;

    v7 = sub_223B7DF88(&v10);

    v8 = sub_223B75B70(v7);

    return v8;
  }

  return result;
}

unint64_t sub_223B76DA4()
{
  result = qword_27D0B1800;
  if (!qword_27D0B1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1800);
  }

  return result;
}

uint64_t sub_223B77204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_223B7724C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_223B772BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_223B77308(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_223B57E74(0, v11, 0);
  v12 = v22;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_223B57E74(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_223B56890(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27D0B1260, &qword_223BFA7F0);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223B77514@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = sub_223BF425C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223BF430C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v52 = *a1;
  v50 = v15;
  v51 = *(a1 + 4);
  v45 = *(&v52 + 1);
  v16 = v52;
  v17 = type metadata accessor for CanonicalLocationResolver();
  v18 = *(v17 + 20);
  v46 = v11;
  (*(v11 + 16))(v14, v3 + v18, v10);
  if (v51 == 1)
  {
    v19 = *(v6 + 104);
    v20 = v6;
  }

  else
  {
    v41 = v51;
    v42 = v16;
    v43 = v10;
    v44 = v6;
    LODWORD(v40) = v50;
    v37 = *(&v50 + 1);
    v39 = a1;
    if (BYTE1(v50))
    {
      v21 = (v3 + *(v17 + 24));
      v23 = *v21;
      v22 = v21[1];
    }

    else
    {
      v24 = 0xE700000000000000;
      v23 = 0x636972656E6547;
    }

    v38 = v24;
    v48 = v23;
    v49 = v24;
    v25 = *MEMORY[0x277CC91C0];
    v26 = v44;
    v27 = *(v44 + 104);
    v27(v9, v25, v5);
    v28 = sub_223B50954();
    sub_223BF42DC();
    v29 = *(v26 + 8);
    v29(v9, v5);

    v30 = 5063745;
    if (v40)
    {
      v30 = 4473174;
    }

    v48 = v30;
    v49 = 0xE300000000000000;
    v40 = v27;
    v27(v9, v25, v5);
    v36[1] = v28;
    sub_223BF42DC();
    v38 = v29;
    v29(v9, v5);

    if (v41)
    {
      v48 = v37;
      v49 = v41;
      v31 = v40;
      v40(v9, v25, v5);
      sub_223BF42DC();
      v38(v9, v5);
      v20 = v44;
      v16 = v42;
      v19 = v31;
    }

    else
    {
      v20 = v44;
      v16 = v42;
      v19 = v40;
    }

    a1 = v39;
  }

  v48 = v16;
  v49 = v45;
  v19(v9, *MEMORY[0x277CC91D0], v5);
  sub_223B50954();
  swift_bridgeObjectRetain_n();
  sub_223BF42CC();
  (*(v20 + 8))(v9, v5);
  sub_223B7E8A4(&v52);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18C8, &qword_223BFA870);
  v33 = v47 + *(v32 + 36);
  v34 = a1[1];
  *v33 = *a1;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a1 + 4);
  (*(v46 + 32))();
  return sub_223B7E94C(&v50, &v48);
}

uint64_t sub_223B77958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18C8, &qword_223BFA870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_223BF425C();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v19 = sub_223BF430C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - v25;
  v41 = a1;
  sub_223B568F8(a1, v18, &qword_27D0B1328, &qword_223BF8508);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *(v18 + 1);
    v43 = *v18;
    v44 = v27;
    v45 = *(v18 + 4);
    sub_223B77514(&v43, v6);
    v46 = v43;
    sub_223B7E8A4(&v46);
    v47 = v44;
    v48 = v45;
    sub_223B7E8F8(&v47);
    (*(v20 + 16))(v24, v6, v19);
    v28 = &qword_27D0B18C8;
    v29 = &qword_223BFA870;
    v30 = v6;
  }

  else
  {
    sub_223B56890(v18, v14, &qword_27D0B1820, &unk_223BFA720);
    *&v43 = sub_223BF42BC();
    *(&v43 + 1) = v31;
    v33 = v39;
    v32 = v40;
    (*(v39 + 104))(v10, *MEMORY[0x277CC91D8], v40);
    sub_223B50954();
    sub_223BF42EC();
    (*(v33 + 8))(v10, v32);

    v30 = v14;
    v28 = &qword_27D0B1820;
    v29 = &unk_223BFA720;
  }

  sub_223B56960(v30, v28, v29);
  v34 = *(v20 + 32);
  v34(v26, v24, v19);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1888, &qword_223BFA7E8);
  v36 = v42;
  sub_223B568F8(v41, v42 + *(v35 + 36), &qword_27D0B1328, &qword_223BF8508);
  return (v34)(v36, v26, v19);
}

uint64_t sub_223B77D70@<X0>(void (*a1)(char *)@<X0>, void *a2@<X8>)
{
  v17 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_223B568F8(v2, &v16 - v11, &qword_27D0B1288, &qword_223BFAF20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      *a2 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 4)
    {
      *a2 = *v12;
    }

    else
    {
      *a2 = *v12;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *v12;
    }

    else
    {
      *a2 = *v12;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    v14 = v12[1];
    *a2 = *v12;
    a2[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_223B56890(v12, v8, &qword_27D0B1330, &unk_223BF8510);
  v17(v8);
  if (!v3)
  {
    sub_223B56960(v8, &qword_27D0B1330, &unk_223BF8510);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_223B56960(v8, &qword_27D0B1330, &unk_223BF8510);
  __break(1u);
  return result;
}

int *sub_223B7808C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18B8, &qword_223BFA858);
  v9 = *(*(v88 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v88);
  v89 = (&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v87 = &v76 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1240, &qword_223BFA860);
  v84 = *(v86 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v76 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18C0, &qword_223BFA868);
  v99 = *(v96 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v96);
  v17 = (&v76 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1250, &unk_223BF7F40);
  v94 = *(v18 - 8);
  v95 = v18;
  v19 = *(v94 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v77 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v76 - v26;
  a1(v5);
  if (v4)
  {
LABEL_45:
    __break(1u);
    sub_223B56960(v82, &qword_27D0B1260, &qword_223BFA7F0);
    __break(1u);
    sub_223B56960(v82, &qword_27D0B1260, &qword_223BFA7F0);

    __break(1u);
    goto LABEL_46;
  }

  v82 = v27;
  v79 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  v29 = v28[10];
  v78 = *(v5 + v28[9]);
  v81 = sub_223B77308(a1, a2, *(v5 + v29));
  v30 = *(v5 + v28[11]);
  v97 = a1;
  v98 = a2;
  v31 = sub_223B77308(a1, a2, v30);
  v101 = 0;
  v80 = v31;
  v83 = v28;
  v32 = *(v5 + v28[12]);
  v33 = *(v32 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v76 = v5;
    v102 = MEMORY[0x277D84F90];
    sub_223B57E34(0, v33, 0);
    v35 = 0;
    v93 = v32 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v34 = v102;
    v36 = v77;
    v91 = v33;
    v92 = v17;
    v90 = v32;
    while (v35 < *(v32 + 16))
    {
      v100 = v34;
      v37 = v35;
      sub_223B568F8(v93 + *(v99 + 72) * v35, v17, &qword_27D0B18C0, &qword_223BFA868);
      v38 = *v17;
      v39 = v17[1];
      v40 = *(v96 + 36);

      v41 = v17 + v40;
      v34 = v17;
      v42 = v101;
      v97(v41);
      v101 = v42;
      if (v42)
      {
        goto LABEL_43;
      }

      *v21 = v38;
      *(v21 + 8) = v39;
      sub_223B56890(v36, v21 + *(v95 + 36), &qword_27D0B1260, &qword_223BFA7F0);
      sub_223B56960(v17, &qword_27D0B18C0, &qword_223BFA868);
      v34 = v100;
      v102 = v100;
      v44 = *(v100 + 16);
      v43 = *(v100 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_223B57E34(v43 > 1, v44 + 1, 1);
        v36 = v77;
        v34 = v102;
      }

      *(v34 + 16) = v44 + 1;
      v35 = v37 + 1;
      sub_223B56890(v21, v34 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v44, &qword_27D0B1250, &unk_223BF7F40);
      v17 = v92;
      v45 = v91 == v37 + 1;
      v32 = v90;
      if (v45)
      {
        v5 = v76;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_11:
  v46 = *(v5 + v83[13]);
  v47 = *(v46 + 16);
  v48 = MEMORY[0x277D84F90];
  if (v47)
  {
    v102 = MEMORY[0x277D84F90];
    sub_223B57DF4(0, v47, 0);
    v48 = v102;
    v21 = v46 + 64;
    v49 = -1 << *(v46 + 32);
    v50 = sub_223BF4A3C();
    v51 = 0;
    v99 = *(v46 + 36);
    v100 = v34;
    v90 = v46 + 72;
    v91 = v47;
    v92 = (v46 + 64);
    v93 = v46;
    while ((v50 & 0x8000000000000000) == 0 && v50 < 1 << *(v46 + 32))
    {
      v54 = v50 >> 6;
      if ((*(v21 + 8 * (v50 >> 6)) & (1 << v50)) == 0)
      {
        goto LABEL_38;
      }

      if (v99 != *(v46 + 36))
      {
        goto LABEL_39;
      }

      v94 = v51;
      v95 = 1 << v50;
      v96 = v48;
      v55 = v88;
      v56 = *(v88 + 48);
      v57 = *(v46 + 56);
      v58 = *(*(v46 + 48) + 4 * v50);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
      v60 = v87;
      sub_223B568F8(v57 + *(*(v59 - 8) + 72) * v50, &v87[v56], &qword_27D0B1288, &qword_223BFAF20);
      v21 = v89;
      *v89 = v58;
      v61 = &v60[v56];
      v34 = v85;
      sub_223B56890(v61, v21 + *(v55 + 48), &qword_27D0B1288, &qword_223BFAF20);
      v62 = v101;
      sub_223B77D70(v97, (v34 + *(v86 + 48)));
      v101 = v62;
      if (v62)
      {
        goto LABEL_44;
      }

      *v34 = v58;
      sub_223B56960(v21, &qword_27D0B18B8, &qword_223BFA858);
      v48 = v96;
      v102 = v96;
      v21 = *(v96 + 16);
      v63 = *(v96 + 24);
      if (v21 >= v63 >> 1)
      {
        sub_223B57DF4(v63 > 1, v21 + 1, 1);
        v48 = v102;
      }

      *(v48 + 16) = v21 + 1;
      sub_223B56890(v34, v48 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v21, &qword_27D0B1240, &qword_223BFA860);
      v46 = v93;
      v52 = 1 << *(v93 + 32);
      if (v50 >= v52)
      {
        goto LABEL_40;
      }

      v21 = v92;
      v64 = v92[v54];
      if ((v64 & v95) == 0)
      {
        goto LABEL_41;
      }

      if (v99 != *(v93 + 36))
      {
        goto LABEL_42;
      }

      v65 = v64 & (-2 << (v50 & 0x3F));
      if (v65)
      {
        v52 = __clz(__rbit64(v65)) | v50 & 0x7FFFFFFFFFFFFFC0;
        v34 = v100;
        v53 = v91;
      }

      else
      {
        v66 = v54 << 6;
        v67 = v54 + 1;
        v53 = v91;
        v68 = (v90 + 8 * v54);
        v34 = v100;
        while (v67 < (v52 + 63) >> 6)
        {
          v70 = *v68++;
          v69 = v70;
          v66 += 64;
          ++v67;
          if (v70)
          {
            sub_223B5AC98(v50, v99, 0);
            v52 = __clz(__rbit64(v69)) + v66;
            goto LABEL_14;
          }
        }

        sub_223B5AC98(v50, v99, 0);
      }

LABEL_14:
      v51 = v94 + 1;
      v50 = v52;
      if (v94 + 1 == v53)
      {
        goto LABEL_31;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:

    sub_223B56960(v34, &qword_27D0B18C0, &qword_223BFA868);
    sub_223B56960(v82, &qword_27D0B1260, &qword_223BFA7F0);

    __break(1u);
LABEL_44:

    sub_223B56960(v21, &qword_27D0B18B8, &qword_223BFA858);
    sub_223B56960(v82, &qword_27D0B1260, &qword_223BFA7F0);

    __break(1u);
    goto LABEL_45;
  }

LABEL_31:
  if (*(v48 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1230, &qword_223BFA020);
    v71 = sub_223BF4C1C();
  }

  else
  {
    v71 = MEMORY[0x277D84F98];
  }

  v102 = v71;
  v72 = v101;
  sub_223B7CAE4(v48, 1, &v102);
  if (!v72)
  {
    v73 = v102;
    v74 = v79;
    sub_223B56890(v82, v79, &qword_27D0B1260, &qword_223BFA7F0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12F8, &qword_223BF7F58);
    *(v74 + result[9]) = v78;
    *(v74 + result[10]) = v81;
    *(v74 + result[11]) = v80;
    *(v74 + result[12]) = v34;
    *(v74 + result[13]) = v73;
    return result;
  }

LABEL_46:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_223B78AB0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1890, &unk_223BFA820);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v36 - v17;
  v19 = *(a1 + 16);
  if (a2)
  {
    if (v19)
    {
      v36[1] = v15;
      v37 = a3;
      v39[0] = MEMORY[0x277D84F90];
      sub_223B57CF4(0, v19, 0);
      v20 = v39[0];
      v21 = *(v7 + 80);
      v36[0] = a1;
      v22 = a1 + ((v21 + 32) & ~v21);
      v38 = *(v7 + 72);
      do
      {
        sub_223B568F8(v22, v10, &qword_27D0B1820, &unk_223BFA720);
        v23 = sub_223BF42BC();
        v25 = v24;
        sub_223B56960(v10, &qword_27D0B1820, &unk_223BFA720);
        v39[0] = v20;
        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_223B57CF4((v26 > 1), v27 + 1, 1);
          v20 = v39[0];
        }

        *(v20 + 16) = v27 + 1;
        v28 = v20 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v22 += v38;
        --v19;
      }

      while (v19);

      a3 = v37;
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v39[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1898, &qword_223BFA830);
    sub_223B7E740();
    v29 = sub_223BF44BC();
    v31 = v30;

    strcpy(v39, " Attempted: ");
    BYTE5(v39[1]) = 0;
    HIWORD(v39[1]) = -5120;
    MEMORY[0x223DF2DE0](v29, v31);

    v32 = v39[0];
    v33 = v39[1];
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_223BF4AAC();

    v39[0] = 0xD000000000000014;
    v39[1] = 0x8000000223C04870;
    MEMORY[0x223DF2DE0](v32, v33);

    v34 = v39[1];
    *a3 = v39[0];
    a3[1] = v34;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (v19)
    {
      sub_223B568F8(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v14, &qword_27D0B1820, &unk_223BFA720);
      (*(v7 + 56))(v14, 0, 1, v6);
    }

    else
    {
      (*(v7 + 56))(v14, 1, 1, v6);
    }

    result = (*(v7 + 48))(v14, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_223B56890(v14, v18, &qword_27D0B1820, &unk_223BFA720);
      swift_storeEnumTagMultiPayload();
      return sub_223B56890(v18, a3, &qword_27D0B11F8, &qword_223BF7C80);
    }
  }

  return result;
}

uint64_t sub_223B78EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - v5;
  if (sub_223BF429C())
  {
    sub_223B568F8(a1, v6, &qword_27D0B1820, &unk_223BFA720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18A0, &qword_223BFA838);
    v7 = *(v3 + 72);
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_223BF84C0;
    sub_223B568F8(v6, v9 + v8, &qword_27D0B1820, &unk_223BFA720);
    v14 = v9;
    sub_223B7C06C(MEMORY[0x277D84F90]);
    sub_223B56960(v6, &qword_27D0B1820, &unk_223BFA720);
    return v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18A0, &qword_223BFA838);
    v11 = *(v3 + 72);
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_223BF84C0;
    sub_223B568F8(a1, v10 + v12, &qword_27D0B1820, &unk_223BFA720);
  }

  return v10;
}

uint64_t sub_223B79120@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  sub_223B568F8(v4, &v26 - v14, &qword_27D0B1330, &unk_223BF8510);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_223B56890(v15, v11, &qword_27D0B1328, &qword_223BF8508);
      v24 = v27;
      a1(v11);
      if (!v24)
      {
        sub_223B56960(v11, &qword_27D0B1328, &qword_223BF8508);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_14;
    }

    v11 = *v15;
    v17 = v27;
    v18 = sub_223B7DD7C(*v15, a1, a2);
    if (!v17)
    {
      v19 = v18;
      if (*(v18 + 16))
      {

        *a3 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    sub_223B56960(v11, &qword_27D0B1328, &qword_223BF8508);
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v15;
  v20 = v15[8];
  v21 = v27;
  v22 = sub_223B7DD7C(v11, a1, a2);
  if (v21)
  {
    goto LABEL_13;
  }

  v23 = v22;
  if (*(v22 + 16))
  {

    *a3 = v23;
    *(a3 + 8) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_15:
  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

uint64_t sub_223B79400(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1888, &qword_223BFA7E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  sub_223B568F8(v4, &v21 - v13, &qword_27D0B1260, &qword_223BFA7F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *v14;
    v18 = v14[8];
    v19 = sub_223B7DBF8(v10, a1, a2);
    if (!v3)
    {
      v17 = v19;
      if (*(v19 + 16))
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_223B56890(v14, v10, &qword_27D0B1888, &qword_223BFA7E8);
    a1(&v21, v10);
    if (!v3)
    {
      sub_223B56960(v10, &qword_27D0B1888, &qword_223BFA7E8);
      return v21;
    }

    goto LABEL_14;
  }

  v10 = *v14;
  v16 = sub_223B7DBF8(*v14, a1, a2);
  if (v3)
  {

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    sub_223B56960(v10, &qword_27D0B1888, &qword_223BFA7E8);
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  if (*(v16 + 16))
  {
LABEL_5:

    return v17;
  }

LABEL_15:
  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

uint64_t sub_223B79690(uint64_t a1, unsigned __int16 a2)
{
  v3 = v2;
  v4 = a1;
  if (a2 > 0xFFu)
  {

    return v4;
  }

  v5 = *(a1 + 16);
  v30 = a2;
  if (v5)
  {
    v31 = MEMORY[0x277D84F90];
    sub_223B57EB4(0, v5, 0);
    v6 = v31;
    v7 = (v4 + 41);
    while (1)
    {
      v8 = *(v7 - 9);
      v4 = *(v7 - 1);
      v9 = *v7;
      sub_223B7E7A4(v8, v4, *v7);
      v10 = sub_223B79690(v8, v4 | (v9 << 8));
      if (v3)
      {
        break;
      }

      v12 = v10;
      v13 = v11;
      v3 = 0;
      sub_223B4C574(v8, v4, v9);
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_223B57EB4((v14 > 1), v15 + 1, 1);
      }

      v7 += 16;
      *(v31 + 16) = v16;
      v17 = v31 + 16 * v15;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13 & 1;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }

    sub_223B4C574(v8, v4, v9);

    return v4;
  }

  v6 = MEMORY[0x277D84F90];
  v16 = *(MEMORY[0x277D84F90] + 16);
  if (v16)
  {
LABEL_11:
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
LABEL_12:
    v20 = (v6 + 40 + 16 * v18);
    while (v16 != v18)
    {
      if (v18 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v21 = v20 + 16;
      ++v18;
      v22 = *v20;
      v20 += 16;
      if ((v22 & 1) == 0)
      {
        v23 = *(v21 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_223B57EB4(0, *(v19 + 16) + 1, 1);
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_223B57EB4((v24 > 1), v25 + 1, 1);
        }

        *(v19 + 16) = v25 + 1;
        v26 = v19 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = 0;
        goto LABEL_12;
      }
    }

    v27 = *(v19 + 16);
    if (v27)
    {
      v4 = *(v19 + 32);
      v28 = *(v19 + 40);

      if (v27 != 1 && (v30 & 1) != 0)
      {
        sub_223B72B58();
        swift_willThrowTypedImpl();
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

LABEL_29:
  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

unint64_t sub_223B79980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v148 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
  v149 = *(v9 - 8);
  v10 = *(v149 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v151 = &v133 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12F8, &qword_223BF7F58);
  v150 = *(v12 - 8);
  v13 = *(v150 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v153 = &v133 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v145 = *(AssociatedTypeWitness - 8);
  v15 = *(v145 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v146 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v147 = &v133 - v18;
  v159 = a4;
  v160 = a5;
  v19 = type metadata accessor for SystemConfigurationFile();
  WitnessTable = swift_getWitnessTable();
  v21 = type metadata accessor for ModelAssetLocation();
  v22 = swift_getWitnessTable();
  v168 = v21;
  v169 = v19;
  v170 = v22;
  v171 = WitnessTable;
  v23 = type metadata accessor for MixedAssetLocation();
  v155 = swift_getWitnessTable();
  v24 = type metadata accessor for ConcreteLocation();
  v25 = sub_223B72BE0();
  v158 = v24;
  v161 = type metadata accessor for SearchDescription();
  v154 = *(v161 - 8);
  v26 = *(v154 + 64);
  MEMORY[0x28223BE20](v161);
  v28 = (&v133 - v27);
  v156 = v25;
  v29 = type metadata accessor for SearchDescription();
  v30 = sub_223BF4A0C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v133 - v34;
  v36 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v38 = &v133 - v37;
  v39 = a1;
  v41 = v40;
  (*(v31 + 16))(v35, v39, v30);
  if ((*(v41 + 48))(v35, 1, v29) == 1)
  {
    (*(v31 + 8))(v35, v30);
    return sub_223B757A4(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v41 + 32))(v38, v35, v29);
    v143 = a3;
    v43 = a3;
    v45 = v159;
    v44 = v160;
    v46 = sub_223B7AAB8(v43, v159, v160);
    v48 = v47;
    v49 = MEMORY[0x28223BE20](v46);
    *(&v133 - 4) = v45;
    *(&v133 - 3) = v44;
    *(&v133 - 2) = v49;
    *(&v133 - 1) = v48;
    v157 = v28;
    v144 = v41;
    v50 = v162;
    sub_223B714A0(sub_223B7E498, (&v133 - 6), v29, v158, MEMORY[0x277D84AC0], v51, v28);
    v162 = v50;

    type metadata accessor for NonEmptyArray();
    v52 = type metadata accessor for FailureTracked();
    v53 = swift_getWitnessTable();
    v172 = swift_getWitnessTable();
    v54 = swift_getWitnessTable();
    v55 = sub_223B60AAC(v52, v23, v52, v155, v53, v54);
    v56 = MEMORY[0x28223BE20](v55);
    *(&v133 - 4) = v45;
    *(&v133 - 3) = v44;
    *(&v133 - 2) = v56;
    *(&v133 - 1) = v57;
    MEMORY[0x28223BE20](v56);
    *(&v133 - 4) = v45;
    *(&v133 - 3) = v44;
    *(&v133 - 2) = sub_223B7E4C8;
    *(&v133 - 1) = v58;
    v59 = v162;
    sub_223B714A0(sub_223B7E504, (&v133 - 6), v161, v52, MEMORY[0x277D84AC0], v60, &v168);
    v155 = v29;

    v61 = v168;
    v62 = v169;
    v63 = BYTE1(v169);
    v164 = v168;
    v165 = v169;
    v64 = type metadata accessor for SearchDescription();
    v163 = &off_283718F00;
    v65 = swift_getWitnessTable();
    sub_223B72250(v64, &off_283718038, v65, &v166);
    if (v59)
    {
      sub_223B4C574(v61, v62, v63);
      sub_223B72B58();
      swift_allocError();
      (*(v154 + 8))(v157, v161);
      return (*(v144 + 8))(v38, v155);
    }

    else
    {
      v66 = v158;
      v67 = v159;
      v68 = v160;
      v156 = v38;
      sub_223B4C574(v61, v62, v63);
      v168 = v166;
      LOBYTE(v169) = v167;
      sub_223B5F4B0(v52, &v164);
      v69 = v164;
      if (v164)
      {

        v162 = &v133;
        MEMORY[0x28223BE20](v70);
        v71 = v67;
        *(&v133 - 4) = v67;
        *(&v133 - 3) = v68;
        *(&v133 - 2) = v148;
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
        v76 = sub_223B6C6E4(sub_223B7E5F0, (&v133 - 6), v69, v66, AssociatedTypeWitness, v72, MEMORY[0x277D84950], &v168);

        v77 = v147;
        sub_223B6C6D4();
        v164 = v76;
        type metadata accessor for NonEmptyArray();
        swift_getWitnessTable();
        v78 = sub_223BF496C();
        v162 = &v133;
        MEMORY[0x28223BE20](v78);
        *(&v133 - 4) = v67;
        *(&v133 - 3) = v68;
        *(&v133 - 2) = v67;
        sub_223BF4E5C();
        swift_getWitnessTable();
        v79 = v146;
        sub_223BF465C();

        v80 = v79;
        v81 = (*(v68 + 56))(v79, v71, v68);
        v82 = 0;
        v83 = MEMORY[0x28223BE20](v81);
        *(&v133 - 2) = v143;
        v84 = sub_223B7C1A4(sub_223B7E654, (&v133 - 4), v83);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11A8, &unk_223BF7C30);
        result = sub_223BF4BFC();
        v136 = result;
        v85 = 0;
        v86 = *(v84 + 64);
        v134 = v84 + 64;
        v137 = v84;
        v87 = 1 << *(v84 + 32);
        if (v87 < 64)
        {
          v88 = ~(-1 << v87);
        }

        else
        {
          v88 = -1;
        }

        v89 = v88 & v86;
        v133 = (v87 + 63) >> 6;
        v135 = result + 64;
        if (v89)
        {
          while (1)
          {
            v162 = v82;
            v90 = __clz(__rbit64(v89));
            v138 = (v89 - 1) & v89;
LABEL_18:
            v139 = v85;
            v94 = v90 | (v85 << 6);
            v95 = *(v137 + 56);
            v96 = (*(v137 + 48) + 16 * v94);
            v97 = v96[1];
            v140 = *v96;
            v141 = v94;
            v98 = *(v95 + 8 * v94);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B8, &qword_223BF7C40);
            v99 = sub_223BF4BFC();
            v100 = v99;
            v101 = *(v98 + 64);
            v143 = v98 + 64;
            v102 = 1 << *(v98 + 32);
            v103 = v102 < 64 ? ~(-1 << v102) : -1;
            v104 = v103 & v101;
            v105 = (v102 + 63) >> 6;
            v148 = v99 + 64;
            v142 = v97;

            v159 = v98;

            v106 = 0;
            v107 = v153;
            v158 = v100;
            if (v104)
            {
              break;
            }

LABEL_23:
            v109 = v106;
            while (1)
            {
              v106 = v109 + 1;
              if (__OFADD__(v109, 1))
              {
                __break(1u);
                goto LABEL_38;
              }

              if (v106 >= v105)
              {
                break;
              }

              v110 = *(v143 + 8 * v106);
              ++v109;
              if (v110)
              {
                v108 = __clz(__rbit64(v110));
                v160 = (v110 - 1) & v110;
                goto LABEL_28;
              }
            }

            v122 = v141;
            *(v135 + ((v141 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v141;
            v123 = v136;
            v124 = (*(v136 + 48) + 16 * v122);
            v125 = v142;
            *v124 = v140;
            v124[1] = v125;
            *(*(v123 + 56) + 8 * v122) = v100;
            v126 = *(v123 + 16);
            v120 = __OFADD__(v126, 1);
            v127 = v126 + 1;
            if (v120)
            {
              goto LABEL_40;
            }

            *(v123 + 16) = v127;
            v77 = v147;
            v80 = v146;
            v82 = v162;
            v85 = v139;
            v89 = v138;
            if (!v138)
            {
              goto LABEL_13;
            }
          }

          while (1)
          {
            v108 = __clz(__rbit64(v104));
            v160 = (v104 - 1) & v104;
LABEL_28:
            v111 = v108 | (v106 << 6);
            v112 = (*(v159 + 48) + 16 * v111);
            v114 = *v112;
            v113 = v112[1];
            v115 = v107;
            sub_223B568F8(*(v159 + 56) + *(v150 + 72) * v111, v107, &qword_27D0B12F8, &qword_223BF7F58);

            v116 = v151;
            v117 = v162;
            sub_223B5D040(v115, v151);
            v162 = v117;
            if (v117)
            {
              break;
            }

            sub_223B56960(v115, &qword_27D0B12F8, &qword_223BF7F58);
            *(v148 + ((v111 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v111;
            v100 = v158;
            v118 = (*(v158 + 48) + 16 * v111);
            *v118 = v114;
            v118[1] = v113;
            result = sub_223B56890(v116, *(v100 + 56) + *(v149 + 72) * v111, &qword_27D0B11B0, &unk_223BF7F60);
            v119 = *(v100 + 16);
            v120 = __OFADD__(v119, 1);
            v121 = v119 + 1;
            if (v120)
            {
              goto LABEL_39;
            }

            *(v100 + 16) = v121;
            v107 = v153;
            v104 = v160;
            if (!v160)
            {
              goto LABEL_23;
            }
          }

          sub_223B56960(v115, &qword_27D0B12F8, &qword_223BF7F58);
          v131 = *(v145 + 8);
          v132 = AssociatedTypeWitness;
          v131(v146, AssociatedTypeWitness);
          v131(v147, v132);
          (*(v154 + 8))(v157, v161);
          return (*(v144 + 8))(v156, v155);
        }

        else
        {
LABEL_13:
          v91 = v85;
          v92 = v161;
          while (1)
          {
            v85 = v91 + 1;
            if (__OFADD__(v91, 1))
            {
              break;
            }

            if (v85 >= v133)
            {

              v128 = *(v145 + 8);
              v129 = v80;
              v130 = AssociatedTypeWitness;
              v128(v129, AssociatedTypeWitness);
              v128(v77, v130);
              (*(v154 + 8))(v157, v92);
              (*(v144 + 8))(v156, v155);
              return v136;
            }

            v93 = *(v134 + 8 * v85);
            ++v91;
            if (v93)
            {
              v162 = v82;
              v90 = __clz(__rbit64(v93));
              v138 = (v93 - 1) & v93;
              goto LABEL_18;
            }
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }
      }

      else
      {

        type metadata accessor for SystemConfigurationLoader.Error();
        sub_223B7E598();
        swift_allocError();
        v74 = v73;
        v75 = sub_223BF430C();
        (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
        swift_willThrow();
        (*(v154 + 8))(v157, v161);
        return (*(v144 + 8))(v156, v155);
      }
    }
  }

  return result;
}

uint64_t (*sub_223B7AAB8(uint64_t a1, uint64_t a2, uint64_t a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_223B57430(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_223B6DC90(v7, v5 + 32);
  return sub_223B7EA10;
}

uint64_t sub_223B7AB34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = type metadata accessor for SystemConfigurationFile();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for ModelAssetLocation();
  v8 = swift_getWitnessTable();
  return sub_223B503A0(a1, v7, v5, v8, WitnessTable, a3);
}

uint64_t sub_223B7AC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v42 = a6;
  v43 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v39 - v12;
  v13 = [objc_opt_self() defaultManager];
  v45 = a1;
  sub_223BF42BC();
  v14 = sub_223BF453C();

  v15 = [v13 contentsAtPath_];

  if (v15)
  {
    v41 = a4;
    v16 = sub_223BF431C();
    v18 = v17;

    v19 = sub_223BF424C();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_223BF423C();
    swift_getAssociatedConformanceWitness();
    v22 = v46;
    sub_223BF422C();
    v23 = v6;
    if (!v6)
    {
      v39 = v16;
      v40 = v18;

      v29 = v41;
      v30 = type metadata accessor for SystemConfigurationFile();
      WitnessTable = swift_getWitnessTable();
      v32 = type metadata accessor for ModelAssetLocation();
      v33 = swift_getWitnessTable();
      v47 = v32;
      v48 = v30;
      v49 = v33;
      v50 = WitnessTable;
      v34 = type metadata accessor for MixedAssetLocation();
      swift_getWitnessTable();
      v35 = v45 + *(type metadata accessor for ConcreteLocation() + 36);
      sub_223B6A520(v34, &v47);
      v36 = v47;
      v37 = v48;
      v38 = v49;
      (*(v29 + 40))(v22, v47, v48, v49, v43, a3, v29);
      (*(v44 + 8))(v22, AssociatedTypeWitness);
      sub_223B7E9FC(v36, v37, v38);
      return sub_223B7E9A8(v39, v40);
    }

    sub_223B7E9A8(v16, v18);
  }

  else
  {
    type metadata accessor for SystemConfigurationLoader.Error();
    sub_223B7E598();
    v23 = swift_allocError();
    v26 = v25;
    v27 = sub_223BF430C();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v26, v45, v27);
    (*(v28 + 56))(v26, 0, 1, v27);
    result = swift_willThrow();
  }

  *v51 = v23;
  return result;
}

uint64_t sub_223B7B090@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28[-v16];
  v18 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v33[3] = type metadata accessor for CanonicalLocationResolver();
  v33[4] = &off_283717840;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_223B7E2D4(v18, boxed_opaque_existential_1);
  sub_223B57430(v33, v32);
  sub_223B57430(v32, v31);
  v20 = swift_allocObject();
  sub_223B6DC90(v32, v20 + 16);
  __swift_destroy_boxed_opaque_existential_0(v33);
  v29 = sub_223B7E82C;
  v30 = v20;
  sub_223B568F8(a1, v13, &qword_27D0B1330, &unk_223BF8510);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_223B56890(v13, v9, &qword_27D0B1328, &qword_223BF8508);
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      sub_223B77958(v9, v17);
      sub_223B56960(v9, &qword_27D0B1328, &qword_223BF8508);
      goto LABEL_10;
    }

    v22 = sub_223B7DD7C(*v13, sub_223B7E874, v28);
    if (!v3)
    {
      v23 = v22;
      if (*(v22 + 16))
      {

        *v17 = v23;
LABEL_10:
        swift_storeEnumTagMultiPayload();
        sub_223B56890(v17, v34, &qword_27D0B1260, &qword_223BFA7F0);

        return __swift_destroy_boxed_opaque_existential_0(v31);
      }

      goto LABEL_12;
    }

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v31);

    __break(1u);
    goto LABEL_12;
  }

  v24 = v13[8];
  v25 = sub_223B7DD7C(*v13, sub_223B7E874, v28);
  if (v3)
  {
    goto LABEL_11;
  }

  v26 = v25;
  if (*(v25 + 16))
  {

    *v17 = v26;
    v17[8] = v24;
    goto LABEL_10;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(v31);
  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

uint64_t sub_223B7B440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1888, &qword_223BFA7E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = sub_223B7DBC8;
  v17[3] = 0;
  v17[4] = sub_223B7E6A8;
  v17[5] = KeyPath;
  v44 = sub_223B7E6B0;
  v45 = v17;
  v41 = sub_223B7E6BC;
  v42 = &v43;
  sub_223B568F8(a1, v15, &qword_27D0B1260, &qword_223BFA7F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v15;
      swift_retain_n();
      v20 = v39;
      v21 = sub_223B7DBF8(v19, sub_223B7E6F8, v40);
      if (!v20)
      {
        v22 = v21;
        if (*(v21 + 16))
        {
          v23 = 0;

          v24 = 1;
          goto LABEL_10;
        }

LABEL_15:

        result = sub_223BF4BEC();
        __break(1u);
        return result;
      }

LABEL_14:

      __break(1u);
      goto LABEL_15;
    }

    sub_223B56890(v15, v11, &qword_27D0B1888, &qword_223BFA7E8);
    v28 = sub_223BF430C();
    (*(*(v28 - 8) + 16))(v7, v11, v28);
    v24 = 2;
    swift_retain_n();
    v22 = sub_223B78EEC(v7);
    v30 = v29;
    sub_223B56960(v7, &qword_27D0B1820, &unk_223BFA720);

    v46 = v30 & 1;
    sub_223B56960(v11, &qword_27D0B1888, &qword_223BFA7E8);
    v7 = v46;
    v23 = v39;
  }

  else
  {
    v25 = *v15;
    v7 = v15[8];
    swift_retain_n();
    v26 = v39;
    v27 = sub_223B7DBF8(v25, sub_223B7E6F8, v40);
    if (v26)
    {
      goto LABEL_14;
    }

    v22 = v27;
    if (!*(v27 + 16))
    {
      goto LABEL_15;
    }

    v23 = 0;

    v24 = 0;
  }

LABEL_10:
  v31 = sub_223B79690(v22, v7 | (v24 << 8));
  if (v23)
  {
    sub_223B4C574(v22, v7, v24);
    sub_223B72B58();
    result = swift_allocError();
    *v38 = result;
  }

  else
  {
    v34 = v31;
    v35 = v32;
    sub_223B4C574(v22, v7, v24);
    return sub_223B78AB0(v34, v35 & 1, v37);
  }

  return result;
}

unint64_t sub_223B7B8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v21 = a1;
  v22 = a2;
  v4 = sub_223B757A4(MEMORY[0x277D84F90]);
  v5 = 0;
LABEL_4:
  v6 = sub_223B7E338();
  for (i = &type metadata for VirtualAudioGraphConfigurationDataSource; ; i = &type metadata for MacDriverDataSource)
  {
    v8 = type metadata accessor for SystemConfigurationFile();
    WitnessTable = swift_getWitnessTable();
    v10 = type metadata accessor for ModelAssetLocation();
    v11 = swift_getWitnessTable();
    v23 = v10;
    v24 = v8;
    v25 = v11;
    v26 = WitnessTable;
    type metadata accessor for MixedAssetLocation();
    sub_223B72BE0();
    type metadata accessor for SearchDescription();
    v12 = sub_223BF4A0C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v12);
    v16 = &v21 - v15;
    (*(v13 + 16))(&v21 - v15, *(v21 + 8 * v5), v12);
    v17 = sub_223B79980(v16, v22, v27, i, v6);
    if (v3)
    {
      break;
    }

    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v4;
    sub_223B7C6A4(v18, sub_223B7D6A8, 0, isUniquelyReferenced_nonNull_native, sub_223B7BB98);
    (*(v13 + 8))(v16, v12);
    v4 = v23;
    if (!++v5)
    {
      goto LABEL_4;
    }

    if (v5 == 2)
    {
      return v4;
    }

    v6 = sub_223B7E38C();
  }

  (*(v13 + 8))(v16, v12);

  return v4;
}

uint64_t sub_223B7BB98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_223B7D028(v6, sub_223B7D60C, 0, isUniquelyReferenced_nonNull_native, &v9);
  result = v9;
  if (v3)
  {
  }

  *a3 = v9;
  return result;
}

void *sub_223B7BC38(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18D0, &qword_223BFA878);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18D8, &unk_223BFA880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_223B7BD70(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18A0, &qword_223BFA838);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_223B7BF64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18F0, &unk_223BFA900);
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

uint64_t sub_223B7C06C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_223B7BD70(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_223B7C1A4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18A8, &unk_223BFA840);
  result = sub_223BF4BFC();
  v6 = 0;
  v28 = a3;
  v29 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v28 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v31 = *(*(v28 + 56) + 8 * v17);

      a1(&v30, &v31);

      if (v3)
      {
        break;
      }

      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v29;
      v21 = v30;
      v22 = (v29[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      *(v29[7] + 8 * v17) = v21;
      v23 = v29[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_17;
      }

      v29[2] = v25;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v29;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_223B7C368(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12F8, &qword_223BF7F58);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v36 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18B0, &qword_223BFA850);
  result = sub_223BF4BFC();
  v12 = result;
  v13 = 0;
  v45 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v39 = result + 64;
  v37 = v15;
  v38 = v20;
  v41 = result;
  v21 = v46;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v47 = (v19 - 1) & v19;
LABEL_10:
      v25 = v22 | (v13 << 6);
      v26 = (*(v45 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      sub_223B568F8(*(v45 + 56) + *(v42 + 72) * v25, v21, &qword_27D0B1278, &qword_223BF8500);

      v29 = v48;
      v43(v21);
      v48 = v29;
      if (v29)
      {
        break;
      }

      sub_223B56960(v21, &qword_27D0B1278, &qword_223BF8500);
      *(v39 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = v40;
      v12 = v41;
      v31 = (*(v41 + 48) + 16 * v25);
      *v31 = v27;
      v31[1] = v28;
      result = sub_223B56890(v7, *(v12 + 56) + *(v30 + 72) * v25, &qword_27D0B12F8, &qword_223BF7F58);
      v32 = *(v12 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_17;
      }

      *(v12 + 16) = v34;
      v20 = v38;
      v19 = v47;
      v21 = v46;
      if (!v47)
      {
        goto LABEL_5;
      }
    }

    v35 = v41;

    v12 = v35;
    sub_223B56960(v21, &qword_27D0B1278, &qword_223BF8500);
    return v12;
  }

  else
  {
LABEL_5:
    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        return v12;
      }

      v24 = *(v37 + 8 * v13);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_223B7C6A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void (*a5)(uint64_t *__return_ptr, id *, uint64_t *))
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v43 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v45 = v11;
  v46 = v7;
  v47 = v6;
  while (1)
  {
    if (!v10)
    {
      v20 = v12;
      while (1)
      {
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v19 >= v11)
        {
          sub_223B7E43C();

          return;
        }

        v18 = *(v7 + 8 * v19);
        ++v20;
        if (v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      sub_223BF4DEC();
      __break(1u);
      goto LABEL_32;
    }

    v18 = v10;
    v19 = v12;
LABEL_14:
    v21 = __clz(__rbit64(v18)) | (v19 << 6);
    v22 = *(v6 + 56);
    v23 = (*(v6 + 48) + 16 * v21);
    v24 = v23[1];
    v25 = *(v22 + 8 * v21);
    v55 = *v23;
    v56 = v24;
    v57 = v25;

    a2(&v52, &v55);

    v26 = v52;
    v27 = v53;
    v28 = v54;
    v55 = v52;
    v56 = v53;
    v58 = v54;
    v29 = *v50;
    v31 = sub_223B6F81C(v52, v53);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_29;
    }

    v35 = v30;
    if (v29[3] < v34)
    {
      break;
    }

    if (a4)
    {
      if (v30)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_223B6FDF8();
      if (v35)
      {
        goto LABEL_21;
      }
    }

LABEL_5:
    v13 = *v50;
    *(*v50 + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v14 = (v13[6] + 16 * v31);
    *v14 = v26;
    v14[1] = v27;
    *(v13[7] + 8 * v31) = v28;
    v15 = v13[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_30;
    }

    v13[2] = v17;
LABEL_7:
    v10 = (v18 - 1) & v18;
    a4 = 1;
    v12 = v19;
    v6 = v47;
    v11 = v45;
    v7 = v46;
  }

  sub_223B594E8(v34, a4 & 1);
  v36 = *v50;
  v37 = sub_223B6F81C(v26, v27);
  if ((v35 & 1) != (v38 & 1))
  {
    goto LABEL_31;
  }

  v31 = v37;
  if ((v35 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  v39 = *v50;
  v51 = *(*(*v50 + 56) + 8 * v31);

  a5(&v52, &v51, &v58);
  if (!v49)
  {

    v40 = v39[7];
    v41 = *(v40 + 8 * v31);
    *(v40 + 8 * v31) = v52;

    goto LABEL_7;
  }

  v51 = v49;
  v42 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_223B7E43C();

    return;
  }

LABEL_32:
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_223BF4AAC();
  MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
  sub_223BF4BCC();
  MEMORY[0x223DF2DE0](39, 0xE100000000000000);
  sub_223BF4BEC();
  __break(1u);
}

void sub_223B7CAE4(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1240, &qword_223BFA860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (v56 - v16);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_22;
  }

  v56[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v59 = *(v15 + 72);
  v61 = a1;
  sub_223B568F8(a1 + v19, v56 - v16, &qword_27D0B1240, &qword_223BFA860);
  v65 = *v17;
  v20 = v65;
  v58 = v18;
  sub_223B56890(v17 + v18, v11, &qword_27D0B1228, &unk_223BF7CB0);
  v21 = *a3;
  v22 = sub_223B6F918(v20);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_223B59AF8(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_223B6F918(v20);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_223BF4DEC();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v22;
  sub_223B6FF68();
  v22 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();

    v64 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_223B56960(v11, &qword_27D0B1228, &unk_223BF7CB0);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  *(v34[6] + 4 * v22) = v20;
  v35 = v34[7];
  v57 = *(v8 + 72);
  sub_223B56890(v11, v35 + v57 * v22, &qword_27D0B1228, &unk_223BF7CB0);
  v36 = v34[2];
  v26 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v26)
  {
    v34[2] = v37;
    v38 = v61;
    if (v60 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v61 + v59 + v19;
    v40 = &qword_27D0B1228;
    v41 = 1;
    while (v41 < *(v38 + 16))
    {
      sub_223B568F8(v39, v17, &qword_27D0B1240, &qword_223BFA860);
      v65 = *v17;
      v42 = v65;
      v43 = v40;
      sub_223B56890(v17 + v58, v11, v40, &unk_223BF7CB0);
      v44 = *a3;
      v45 = sub_223B6F918(v42);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v26 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v26)
      {
        goto LABEL_23;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_223B59AF8(v49, 1);
        v51 = *a3;
        v45 = sub_223B6F918(v42);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v50)
      {
        goto LABEL_9;
      }

      v53 = *a3;
      *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      *(v53[6] + 4 * v45) = v42;
      v40 = v43;
      sub_223B56890(v11, v53[7] + v57 * v45, v43, &unk_223BF7CB0);
      v54 = v53[2];
      v26 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v41;
      v53[2] = v55;
      v39 += v59;
      v38 = v61;
      if (v60 == v41)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_223BF4AAC();
  MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
  sub_223BF4BCC();
  MEMORY[0x223DF2DE0](39, 0xE100000000000000);
  sub_223BF4BEC();
  __break(1u);
}

void sub_223B7D028(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v6) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1870, &qword_223BFA7D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v59 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v65 = a1;
  v66 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v67 = v19;
  v68 = 0;
  v69 = v22 & v20;
  v70 = a2;
  v71 = a3;
  v59[2] = a1;

  v59[3] = a3;

  sub_223B7D6F0(v17);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1868, &unk_223BFA7C8);
  if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
  {
LABEL_5:
    sub_223B7E43C();

    return;
  }

  v24 = *(v23 + 48);
  v26 = v17[1];
  v63 = *v17;
  v25 = v63;
  v64 = v26;
  sub_223B56890(v17 + v24, v13, &qword_27D0B11B0, &unk_223BF7F60);
  v27 = *a5;
  v28 = sub_223B6F81C(v25, v26);
  v30 = v27[2];
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v34) = v29;
  if (v27[3] < v33)
  {
    sub_223B59B1C(v33, v6 & 1);
    v35 = *a5;
    v28 = sub_223B6F81C(v25, v26);
    if ((v34 & 1) == (v36 & 1))
    {
      goto LABEL_11;
    }

LABEL_9:
    v28 = sub_223BF4DEC();
    __break(1u);
  }

  if (v6)
  {
LABEL_11:
    if (v34)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v39 = v28;
  sub_223B701BC();
  v28 = v39;
  if ((v34 & 1) == 0)
  {
LABEL_15:
    v40 = *a5;
    *(*a5 + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v41 = (v40[6] + 16 * v28);
    *v41 = v25;
    v41[1] = v26;
    sub_223B56890(v13, v40[7] + *(v60 + 72) * v28, &qword_27D0B11B0, &unk_223BF7F60);
    v42 = v40[2];
    v32 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (!v32)
    {
      v40[2] = v43;
      v6 = &qword_27D0B11B0;
      v25 = &unk_223BF7F60;
      while (1)
      {
        sub_223B7D6F0(v17);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1868, &unk_223BFA7C8);
        if ((*(*(v44 - 8) + 48))(v17, 1, v44) == 1)
        {
          goto LABEL_5;
        }

        v45 = *(v44 + 48);
        v26 = v17[1];
        v63 = *v17;
        v34 = v63;
        v64 = v26;
        sub_223B56890(v17 + v45, v13, &qword_27D0B11B0, &unk_223BF7F60);
        v46 = *a5;
        v47 = sub_223B6F81C(v34, v26);
        v49 = v46[2];
        v50 = (v48 & 1) == 0;
        v32 = __OFADD__(v49, v50);
        v51 = v49 + v50;
        if (v32)
        {
          goto LABEL_24;
        }

        v52 = v48;
        if (v46[3] < v51)
        {
          sub_223B59B1C(v51, 1);
          v53 = *a5;
          v47 = sub_223B6F81C(v34, v26);
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_9;
          }
        }

        if (v52)
        {
          goto LABEL_12;
        }

        v55 = *a5;
        *(*a5 + 8 * (v47 >> 6) + 64) |= 1 << v47;
        v56 = (v55[6] + 16 * v47);
        *v56 = v34;
        v56[1] = v26;
        sub_223B56890(v13, v55[7] + *(v60 + 72) * v47, &qword_27D0B11B0, &unk_223BF7F60);
        v57 = v55[2];
        v32 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v32)
        {
          goto LABEL_25;
        }

        v55[2] = v58;
      }
    }

    goto LABEL_25;
  }

LABEL_12:
  sub_223B7E444();
  v37 = swift_allocError();
  swift_willThrow();

  v72 = v37;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_223B56960(v13, &qword_27D0B11B0, &unk_223BF7F60);
    sub_223B7E43C();

    return;
  }

LABEL_26:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_223BF4AAC();
  MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
  sub_223BF4BCC();
  MEMORY[0x223DF2DE0](39, 0xE100000000000000);
  sub_223BF4BEC();
  __break(1u);
}

uint64_t sub_223B7D60C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1868, &unk_223BFA7C8);
  v7 = *a1;
  v6 = a1[1];
  sub_223B568F8(a1 + v4, a2 + *(v5 + 48), &qword_27D0B11B0, &unk_223BF7F60);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_223B7D6A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_223B7D6F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1828, &qword_223BFA7E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v18 = (&v42 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v48 = v22;
  if (v23)
  {
    v46 = v4;
    v47 = a1;
    v24 = v3;
    v25 = v21;
LABEL_11:
    v44 = v19;
    v45 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v25 << 6);
    v30 = (*(v19 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_223B568F8(*(v19 + 56) + *(v8 + 72) * v29, v11, &qword_27D0B11B0, &unk_223BF7F60);
    v33 = *(v24 + 48);
    *v18 = v31;
    v18[1] = v32;
    v3 = v24;
    sub_223B56890(v11, v18 + v33, &qword_27D0B11B0, &unk_223BF7F60);
    v4 = v46;
    (*(v46 + 56))(v18, 0, 1, v3);

    v28 = v25;
    v35 = v44;
    v34 = v45;
    a1 = v47;
LABEL_12:
    *v1 = v35;
    v1[1] = v20;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v28;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_223B56890(v18, v36, &qword_27D0B1828, &qword_223BFA7E0);
    v39 = 1;
    if ((*(v4 + 48))(v36, 1, v3) != 1)
    {
      v40 = v43;
      sub_223B56890(v36, v43, &qword_27D0B1830, &unk_223BFA730);
      v37(v40);
      sub_223B56960(v40, &qword_27D0B1830, &unk_223BFA730);
      v39 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1868, &unk_223BFA7C8);
    return (*(*(v41 - 8) + 56))(a1, v39, 1, v41);
  }

  else
  {
    v26 = (v22 + 64) >> 6;
    if (v26 <= v21 + 1)
    {
      v27 = v21 + 1;
    }

    else
    {
      v27 = (v22 + 64) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v25 >= v26)
      {
        v35 = v19;
        (*(v4 + 56))(v18, 1, 1, v3);
        v34 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v25);
      ++v21;
      if (v23)
      {
        v46 = v4;
        v47 = a1;
        v24 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_223B7DAD4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  a3(a1);
  a2(&v14, v11);
  result = sub_223B56960(v11, &qword_27D0B1820, &unk_223BFA720);
  v13 = v15;
  *a4 = v14;
  *(a4 + 8) = v13;
  return result;
}

uint64_t sub_223B7DBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_223B78EEC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_223B7DBF8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  sub_223B57EF4(0, v4, 0);
  v5 = v20;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0) - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_223B79400(a2, a3);
    if (v3)
    {
      break;
    }

    v15 = *(v20 + 16);
    v14 = *(v20 + 24);
    if (v15 >= v14 >> 1)
    {
      v19 = v12;
      v18 = v13;
      sub_223B57EF4((v14 > 1), v15 + 1, 1);
      v12 = v19;
      v13 = v18;
    }

    *(v20 + 16) = v15 + 1;
    v16 = v20 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
    v10 += v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223B7DD7C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v19 = a2;
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x277D84F90];
  sub_223B57E74(0, v11, 0);
  v12 = v21;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
  v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v18 = *(v13 + 72);
  while (1)
  {
    sub_223B79120(v19, v20, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_223B57E74(v15 > 1, v16 + 1, 1);
      v12 = v21;
    }

    *(v12 + 16) = v16 + 1;
    sub_223B56890(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27D0B1260, &qword_223BFA7F0);
    v14 += v18;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_223B7DF88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1860, &qword_223BFA7C0);
  v3 = *(v2 - 8);
  v28 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v27 - v5;
  v7 = sub_223BF425C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CanonicalLocationResolver();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  sub_223BF427C();
  v33 = *(a1 + 24);
  *v30 = *(a1 + 24);
  (*(v8 + 104))(v11, *MEMORY[0x277CC91C0], v7);
  v18 = *(v12 + 20);
  sub_223B50954();

  sub_223BF42EC();
  (*(v8 + 8))(v11, v7);
  sub_223B7E280(&v33);
  v19 = *(a1 + 48);
  v20 = &v15[*(v12 + 24)];
  *v20 = *(a1 + 40);
  *(v20 + 1) = v19;
  v31 = v12;
  v32 = &off_283717840;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_223B7E2D4(v15, boxed_opaque_existential_1);
  v22 = sub_223B7E338();
  (*(v22 + 32))(a1);
  v29[0] = v6;
  v23 = sub_223B7E38C();
  v24 = &v6[*(v28 + 56)];
  (*(v23 + 32))(a1);
  v29[1] = v24;

  v25 = sub_223B7B8D0(v29, a1, v30);
  sub_223B56960(v6, &qword_27D0B1860, &qword_223BFA7C0);
  sub_223B7E3E0(v15);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v25;
}

uint64_t sub_223B7E2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalLocationResolver();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_223B7E338()
{
  result = qword_281339A50;
  if (!qword_281339A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A50);
  }

  return result;
}

unint64_t sub_223B7E38C()
{
  result = qword_281339638[0];
  if (!qword_281339638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281339638);
  }

  return result;
}

uint64_t sub_223B7E3E0(uint64_t a1)
{
  v2 = type metadata accessor for CanonicalLocationResolver();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223B7E444()
{
  result = qword_27D0B1878;
  if (!qword_27D0B1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1878);
  }

  return result;
}

uint64_t sub_223B7E498()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_223B7E4C8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v1(&v4);
  return v4;
}

uint64_t sub_223B7E504@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t type metadata accessor for SystemConfigurationLoader.Error()
{
  result = qword_27D0B18E0;
  if (!qword_27D0B18E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_223B7E598()
{
  result = qword_27D0B1880;
  if (!qword_27D0B1880)
  {
    type metadata accessor for SystemConfigurationLoader.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1880);
  }

  return result;
}

uint64_t sub_223B7E614(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return (*(v4 + 48))(a1, a2, v3);
}

uint64_t sub_223B7E654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[2] = *(v2 + 16);
  result = sub_223B7C368(sub_223B7E7B8, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_223B7E6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  return sub_223B7DAD4(a1, *(v2 + 16), *(v2 + 32), a2);
}

uint64_t sub_223B7E6BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_223B7E6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

unint64_t sub_223B7E740()
{
  result = qword_281339318;
  if (!qword_281339318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1898, &qword_223BFA830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339318);
  }

  return result;
}

uint64_t sub_223B7E7A4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_223B7E874()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_223B7E9A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_223B7E9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_223B7EA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_223B7AB34(a1, v2 + 4, a2);
}

uint64_t sub_223B7EA44()
{
  v0 = sub_223BF430C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_223B7EAFC()
{
  result = qword_281339380;
  if (!qword_281339380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339380);
  }

  return result;
}

uint64_t sub_223B7EBD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_223B7EC24()
{
  result = qword_281339358;
  if (!qword_281339358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339358);
  }

  return result;
}

unint64_t sub_223B7ECB8()
{
  result = qword_281339350;
  if (!qword_281339350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339350);
  }

  return result;
}

unint64_t sub_223B7ED0C()
{
  result = qword_281339360;
  if (!qword_281339360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339360);
  }

  return result;
}

unint64_t sub_223B7ED60()
{
  result = qword_281339368;
  if (!qword_281339368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339368);
  }

  return result;
}

uint64_t sub_223B7EDF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_223B7EE48()
{
  result = qword_281339378;
  if (!qword_281339378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339378);
  }

  return result;
}

unint64_t sub_223B7EE9C()
{
  result = qword_281339388;
  if (!qword_281339388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339388);
  }

  return result;
}

unint64_t sub_223B7EEF0()
{
  result = qword_281339390[0];
  if (!qword_281339390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281339390);
  }

  return result;
}

unint64_t sub_223B7EF60()
{
  result = qword_27D0B1918;
  if (!qword_27D0B1918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1920, qword_223BFAB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1918);
  }

  return result;
}

uint64_t sub_223B7EFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_223BF4DAC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_223B7F05C(uint64_t a1)
{
  v2 = sub_223B7F674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B7F098(uint64_t a1)
{
  v2 = sub_223B7F674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B7F0D4(uint64_t a1)
{
  v2 = sub_223B7F6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B7F110(uint64_t a1)
{
  v2 = sub_223B7F6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B7F164(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1948, &qword_223BFACD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1950, &qword_223BFACE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B7F674();
  sub_223BF4EDC();
  sub_223B7F6C8();
  sub_223BF4CDC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_223B7F34C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_223B7F380(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1928, &qword_223BFACC0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1930, &unk_223BFACC8);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B7F674();
  sub_223BF4ECC();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_223BF4CCC() + 16) == 1)
    {
      sub_223B7F6C8();
      sub_223BF4C3C();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_223BF4ACC();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15C0, &qword_223BF9760) + 48);
      *v16 = &type metadata for UnitType;
      sub_223BF4C4C();
      sub_223BF4ABC();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_223B7F674()
{
  result = qword_27D0B1938;
  if (!qword_27D0B1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1938);
  }

  return result;
}

unint64_t sub_223B7F6C8()
{
  result = qword_27D0B1940;
  if (!qword_27D0B1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1940);
  }

  return result;
}

unint64_t sub_223B7F740()
{
  result = qword_27D0B1958;
  if (!qword_27D0B1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1958);
  }

  return result;
}

unint64_t sub_223B7F798()
{
  result = qword_27D0B1960;
  if (!qword_27D0B1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1960);
  }

  return result;
}

unint64_t sub_223B7F7F0()
{
  result = qword_27D0B1968;
  if (!qword_27D0B1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1968);
  }

  return result;
}

unint64_t sub_223B7F848()
{
  result = qword_27D0B1970;
  if (!qword_27D0B1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1970);
  }

  return result;
}

unint64_t sub_223B7F8A0()
{
  result = qword_27D0B1978;
  if (!qword_27D0B1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1978);
  }

  return result;
}

unint64_t sub_223B7F90C()
{
  result = qword_281339A60;
  if (!qword_281339A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A60);
  }

  return result;
}

uint64_t sub_223B7F960@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 3)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19A0, &qword_223BFAF88);
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1998, &qword_223BFAF80);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19A0, &qword_223BFAF88);
    v15 = *(v8 - 8);
    v9 = *(v15 + 72);
    v10 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_223BFAEB0;
    v12 = (v11 + v10);
    *v12 = 257;
    v12[1] = 0;
    v12[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19A8, &unk_223BFAF90);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v13 = v12 + v9;
    *v13 = xmmword_223BFAEC0;
    *(v13 + 2) = 0xEB0000000079616CLL;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *a2 = v11;
    *(a2 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v4 = *(v15 + 56);
    v6 = a2;
    v7 = 0;
    v5 = v8;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t sub_223B7FB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v50 = a7;
  v51 = a8;
  v46 = a3;
  v53 = a9;
  v52 = sub_223BF425C();
  v47 = *(v52 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1990, &unk_223BFAF70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v45 - v18;
  v20 = sub_223BF430C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v48 = v45 - v26;
  if (!a5 && (v27 = 0xE000000000000000, a6 == 0xE000000000000000) || (v27 = 0xE000000000000000, (sub_223BF4DAC() & 1) != 0))
  {
    v28 = 0;
  }

  else
  {
    v54 = a5;
    v55 = a6;

    MEMORY[0x223DF2DE0](95, 0xE100000000000000);
    v28 = v54;
    v27 = v55;
  }

  v54 = v28;
  v55 = v27;
  MEMORY[0x223DF2DE0](a1, a2);
  MEMORY[0x223DF2DE0](46, 0xE100000000000000);
  MEMORY[0x223DF2DE0](v46, a4);
  v30 = v54;
  v29 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1360, &qword_223BF8540);
  v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  v31 = *(v45[0] - 8);
  v46 = *(v31 + 72);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_223BFAEB0;
  v34 = v33 + v32;
  *v34 = v30;
  *(v34 + 8) = v29;
  *(v34 + 16) = xmmword_223BFAEC0;
  *(v34 + 32) = 0xEB0000000079616CLL;
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  sub_223BF428C();
  v35 = v21;
  v36 = *(v21 + 56);
  v37 = v20;
  v36(v19, 0, 1, v20);
  v38 = v25;
  sub_223BF426C();
  sub_223B56960(v19, &qword_27D0B1990, &unk_223BFAF70);
  v54 = v30;
  v55 = v29;
  v39 = v47;
  v40 = v49;
  v41 = v52;
  (*(v47 + 104))(v49, *MEMORY[0x277CC91D0], v52);
  sub_223B50954();
  v42 = v48;
  sub_223BF42FC();
  (*(v39 + 8))(v40, v41);
  (*(v35 + 8))(v38, v37);

  (*(v35 + 32))(v34 + v46, v42, v37);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (*(v33 + 16))
  {
    v43 = v53;
    *v53 = v33;
    *(v43 + 8) = 0;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    result = sub_223BF4BEC();
    __break(1u);
  }

  return result;
}

uint64_t sub_223B80084()
{
  v35 = MEMORY[0x277D84F90];
  sub_223B57F34(0, 6, 0);
  v0 = v35;
  v1 = off_28371A158(&type metadata for VirtualAudioGraphPropertyHandlers.FIRImpulseResponse, &off_28371A150);
  v3 = *(v35 + 16);
  v2 = *(v35 + 24);
  if (v3 >= v2 >> 1)
  {
    v29 = v1;
    sub_223B57F34((v2 > 1), v3 + 1, 1);
    v1 = v29;
    v0 = v35;
  }

  *(v0 + 16) = v3 + 1;
  v4 = v0 + 24 * v3;
  *(v4 + 32) = v1;
  *(v4 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.FIRImpulseResponse;
  *(v4 + 48) = &off_28371A150;
  v5 = sub_223B88C70(&type metadata for VirtualAudioGraphPropertyHandlers.MagneticInterferenceMitigation, &off_28371A138);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (v7 >= v6 >> 1)
  {
    v30 = v5;
    sub_223B57F34((v6 > 1), v7 + 1, 1);
    v5 = v30;
    v0 = v35;
  }

  *(v0 + 16) = v7 + 1;
  v8 = v0 + 24 * v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.MagneticInterferenceMitigation;
  *(v8 + 48) = &off_28371A138;
  v9 = sub_223B88E30(&type metadata for VirtualAudioGraphPropertyHandlers.ChannelSelectorMap, &off_28371A120);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (v11 >= v10 >> 1)
  {
    v31 = v9;
    sub_223B57F34((v10 > 1), v11 + 1, 1);
    v9 = v31;
  }

  v12 = v35;
  *(v35 + 16) = v11 + 1;
  v13 = v12 + 24 * v11;
  *(v13 + 32) = v9;
  *(v13 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.ChannelSelectorMap;
  *(v13 + 48) = &off_28371A120;
  v14 = sub_223B88E84(&type metadata for VirtualAudioGraphPropertyHandlers.BeamIndex, &off_28371A108);
  v16 = *(v12 + 16);
  v15 = *(v12 + 24);
  if (v16 >= v15 >> 1)
  {
    v32 = v14;
    sub_223B57F34((v15 > 1), v16 + 1, 1);
    v14 = v32;
    v12 = v35;
  }

  *(v12 + 16) = v16 + 1;
  v17 = v12 + 24 * v16;
  *(v17 + 32) = v14;
  *(v17 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.BeamIndex;
  *(v17 + 48) = &off_28371A108;
  v18 = sub_223B88ED8(&type metadata for VirtualAudioGraphPropertyHandlers.BeamToReverse, &off_28371A0F0);
  v20 = *(v12 + 16);
  v19 = *(v12 + 24);
  if (v20 >= v19 >> 1)
  {
    v33 = v18;
    sub_223B57F34((v19 > 1), v20 + 1, 1);
    v18 = v33;
    v12 = v35;
  }

  *(v12 + 16) = v20 + 1;
  v21 = v12 + 24 * v20;
  *(v21 + 32) = v18;
  *(v21 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.BeamToReverse;
  *(v21 + 48) = &off_28371A0F0;
  v22 = sub_223B88F2C(&type metadata for VirtualAudioGraphPropertyHandlers.ConditionalOverlayTunings, &off_28371A0D8);
  v24 = *(v12 + 16);
  v23 = *(v12 + 24);
  if (v24 >= v23 >> 1)
  {
    v34 = v22;
    sub_223B57F34((v23 > 1), v24 + 1, 1);
    v22 = v34;
  }

  v25 = v35;
  *(v35 + 16) = v24 + 1;
  v26 = v25 + 24 * v24;
  *(v26 + 32) = v22;
  *(v26 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.ConditionalOverlayTunings;
  *(v26 + 48) = &off_28371A0D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1298, &unk_223BFAF60);
  v35 = sub_223BF4C1C();

  sub_223B804D8(v27, 1, &v35);

  qword_28133B5C0 = v35;
  return result;
}

uint64_t sub_223B8040C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  result = sub_223B809D0(v5);
  *a2 = result;
  return result;
}

void sub_223B804D8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 32);
  v39 = *(a1 + 40);
  v8 = *a3;
  v9 = sub_223B6F918(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_223B59E8C(v14, a2 & 1);
    v16 = *a3;
    v9 = sub_223B6F918(v7);
    if ((v15 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_223BF4DEC();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v9;
  sub_223B7042C();
  v9 = v20;
  if (v15)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v21[6] + 4 * v9) = v7;
  *(v21[7] + 16 * v9) = v39;
  v22 = v21[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_223BF4AAC();
    MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
    sub_223BF4BCC();
    MEMORY[0x223DF2DE0](39, 0xE100000000000000);
    sub_223BF4BEC();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v24 = (a1 + 64);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *(v24 - 2);
      v40 = *v24;
      v27 = *a3;
      v28 = sub_223B6F918(v26);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v13 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v13)
      {
        goto LABEL_24;
      }

      v33 = v29;
      if (v27[3] < v32)
      {
        sub_223B59E8C(v32, 1);
        v34 = *a3;
        v28 = sub_223B6F918(v26);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v33)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v36[6] + 4 * v28) = v26;
      *(v36[7] + 16 * v28) = v40;
      v37 = v36[2];
      v13 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v13)
      {
        goto LABEL_25;
      }

      ++v25;
      v36[2] = v38;
      v24 = (v24 + 24);
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}