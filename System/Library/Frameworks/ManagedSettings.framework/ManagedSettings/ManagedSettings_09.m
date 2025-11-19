void *static SettingMetadataDirectory.allMetadata.getter()
{
  if (qword_280C72688 != -1)
  {
    swift_once();
  }

  v0 = off_280C72690;
  v1 = *(off_280C72690 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_20E4C1720(*(off_280C72690 + 2), 0);
  v3 = sub_20E4C17B0(&v5, (v2 + 4), v1, v0);

  sub_20E418D5C();
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

void *sub_20E4C1720(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA60, "HL");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_20E4C17B0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_20E442818(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_20E41B858(v20, v21);
      sub_20E41B858(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_20E4C192C()
{
  result = qword_280C72A18;
  if (!qword_280C72A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CEC98, &unk_20E4C7740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A18);
  }

  return result;
}

unint64_t sub_20E4C19A8()
{
  result = qword_280C72A48;
  if (!qword_280C72A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF4E0, &qword_20E4CA868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A48);
  }

  return result;
}

unint64_t sub_20E4C1A24()
{
  result = qword_280C72180;
  if (!qword_280C72180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CEDF0, &qword_20E4C7CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72180);
  }

  return result;
}

unint64_t sub_20E4C1AA0()
{
  result = qword_280C72178;
  if (!qword_280C72178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CEE00, &qword_20E4C7CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72178);
  }

  return result;
}

unint64_t sub_20E4C1B1C()
{
  result = qword_280C72698[0];
  if (!qword_280C72698[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF0F0, &unk_20E4C8C90);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C72698);
  }

  return result;
}

unint64_t sub_20E4C1B98()
{
  result = qword_280C72490;
  if (!qword_280C72490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF420, &unk_20E4C9FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72490);
  }

  return result;
}

unint64_t sub_20E4C1C14()
{
  result = qword_280C72158;
  if (!qword_280C72158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CED20, &unk_20E4C7C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72158);
  }

  return result;
}

unint64_t sub_20E4C1C90()
{
  result = qword_280C72A88;
  if (!qword_280C72A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF518, &unk_20E4CAA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A88);
  }

  return result;
}

unint64_t sub_20E4C1D0C()
{
  result = qword_280C72A90;
  if (!qword_280C72A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CFA08, &qword_20E4CDC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A90);
  }

  return result;
}

unint64_t sub_20E4C1D88()
{
  result = qword_280C72A68;
  if (!qword_280C72A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF960, &qword_20E4CD310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A68);
  }

  return result;
}

unint64_t sub_20E4C1E04()
{
  result = qword_280C72188;
  if (!qword_280C72188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CED48, &qword_20E4C9FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72188);
  }

  return result;
}

unint64_t sub_20E4C1E80()
{
  result = qword_280C72C38;
  if (!qword_280C72C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF768, &qword_20E4CBBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72C38);
  }

  return result;
}

unint64_t sub_20E4C1EFC()
{
  result = qword_280C72A38;
  if (!qword_280C72A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF550, &unk_20E4CAD50);
    sub_20E4C20E8(&qword_280C721C0, &qword_27C8CEDD0, &unk_20E4C7CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A38);
  }

  return result;
}

unint64_t sub_20E4C1FA0()
{
  result = qword_280C72A30;
  if (!qword_280C72A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF558, &unk_20E4CDF40);
    sub_20E4C20E8(&qword_280C721B8, &qword_27C8CEDB8, &qword_20E4C7CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A30);
  }

  return result;
}

unint64_t sub_20E4C2044()
{
  result = qword_280C72A28;
  if (!qword_280C72A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF560, &qword_20E4CAD60);
    sub_20E4C20E8(&qword_280C721B0, &qword_27C8CED88, &qword_20E4C7C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A28);
  }

  return result;
}

uint64_t sub_20E4C20E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_20E4C2158()
{
  result = qword_280C73840[0];
  if (!qword_280C73840[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF818, &qword_20E4CC4F0);
    sub_20E4A8E3C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C73840);
  }

  return result;
}

unint64_t sub_20E4C21F0()
{
  result = qword_280C72170;
  if (!qword_280C72170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF8E0, &qword_20E4CCE28);
    sub_20E4C2558(&qword_280C722C0, &qword_27C8CF2C8, &unk_20E4CDF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72170);
  }

  return result;
}

unint64_t sub_20E4C228C()
{
  result = qword_280C72160;
  if (!qword_280C72160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CED70, &qword_20E4C7C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72160);
  }

  return result;
}

unint64_t sub_20E4C2308()
{
  result = qword_280C73838;
  if (!qword_280C73838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF840, &qword_20E4CCE20);
    sub_20E4C23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C73838);
  }

  return result;
}

unint64_t sub_20E4C23A0()
{
  result = qword_280C72270;
  if (!qword_280C72270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72270);
  }

  return result;
}

uint64_t objectdestroy_125Tm()
{
  sub_20E48C224(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_20E4C2440(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E4C24BC()
{
  result = qword_280C72168;
  if (!qword_280C72168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF8E8, &qword_20E4CCE30);
    sub_20E4C2558(&qword_280C722B8, &qword_27C8CF2B8, &qword_20E4C95F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72168);
  }

  return result;
}

uint64_t sub_20E4C2558(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

unint64_t sub_20E4C25F4()
{
  result = qword_280C72A80;
  if (!qword_280C72A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF888, &unk_20E4CC6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A80);
  }

  return result;
}

uint64_t objectdestroy_153Tm(void (*a1)(void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  v2 = *(v1 + 48);

  __swift_destroy_boxed_opaque_existential_0((v1 + 56));

  return MEMORY[0x2821FE8E8](v1, 113, 7);
}

unint64_t sub_20E4C26C4()
{
  result = qword_280C72A70;
  if (!qword_280C72A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF7D0, &qword_20E4CC200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A70);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

unint64_t sub_20E4C2780()
{
  result = qword_280C72A78;
  if (!qword_280C72A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CFA78, &unk_20E4CDF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72A78);
  }

  return result;
}

uint64_t sub_20E4C27FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEC98, &unk_20E4C7740);
  v35 = v10;
  v36 = sub_20E4C192C();
  v11 = swift_allocObject();
  *&v34 = v11;
  v12 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = *(a1 + 80);
  v13 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;
  v14 = *a5;
  v16 = sub_20E429BA0(a2, a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_0(v23);
      return sub_20E41B858(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    sub_20E452D00();
    goto LABEL_7;
  }

  sub_20E451EB4(v19, a4 & 1);
  v25 = *a5;
  v26 = sub_20E429BA0(a2, a3);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_20E4C6970();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v10);
  v29 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v28, v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  sub_20E4C2A34(v16, a2, a3, v31, v22);

  return __swift_destroy_boxed_opaque_existential_0(&v34);
}

uint64_t sub_20E4C2A34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEC98, &unk_20E4C7740);
  v20 = sub_20E4C192C();
  v10 = swift_allocObject();
  *&v18 = v10;
  v11 = *(a4 + 48);
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a4 + 64);
  *(v10 + 96) = *(a4 + 80);
  v12 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v12;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_20E41B858(&v18, a5[7] + 40 * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
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

uint64_t SettingReflection.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_20E4C6780();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t SettingReflection.effectiveValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  v6 = sub_20E4C6780();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_20E4C2C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_20E4C6780();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E4C2D00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((v7 + *(v4 + 80)) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_20E4C2E88(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + *(v6 + 80)) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

double WebDomain.init(domain:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = xmmword_20E4C7700;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

__n128 WebDomain.init(token:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  return result;
}

uint64_t sub_20E4C3108@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_20E42E740();
}

uint64_t WebDomain.token.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_20E42E740();
}

__n128 WebDomain.init(domain:token:bookmark:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = a4;
  a6[2].n128_u64[1] = a5;
  return result;
}

id static WebDomain.compare(_:with:outExactMatch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v6 = objc_opt_self();
  v7 = sub_20E4C6490();
  v8 = sub_20E4C6490();
  v9 = [v6 compareDomain:v7 withDomainPattern:v8 outExactMatch:&v12];

  if (a5)
  {
    *a5 = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t WebDomain.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WebDomain.bookmark.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

double WebDomain.init(domain:bookmark:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = 0.0;
  *(a5 + 16) = xmmword_20E4C7700;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

__n128 WebDomain.init(token:bookmark:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  result = *a1;
  a4[1] = *a1;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

__n128 WebDomain.init(domain:token:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u64[0] = 0;
  a4[2].n128_u64[1] = 0;
  return result;
}

uint64_t WebDomain.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_20E4C69E0();
    sub_20E4C6530();
  }

  else
  {
    sub_20E4C69E0();
  }

  if (v3 >> 60 != 15)
  {
    sub_20E4C69E0();
    sub_20E4C6130();
    if (v4)
    {
      goto LABEL_6;
    }

    return sub_20E4C69E0();
  }

  sub_20E4C69E0();
  if (!v4)
  {
    return sub_20E4C69E0();
  }

LABEL_6:
  sub_20E4C69E0();

  return sub_20E4C6530();
}

uint64_t WebDomain.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_20E4C69C0();
  sub_20E4C69E0();
  if (v2)
  {
    sub_20E4C6530();
  }

  if (v4 >> 60 != 15)
  {
    sub_20E4C69E0();
    sub_20E4C6130();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_20E4C69E0();
    return sub_20E4C69F0();
  }

  sub_20E4C69E0();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_20E4C69E0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E4C3494()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_20E4C69C0();
  WebDomain.hash(into:)();
  return sub_20E4C69F0();
}

uint64_t sub_20E4C34EC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_20E4C69C0();
  WebDomain.hash(into:)();
  return sub_20E4C69F0();
}

uint64_t WebDomain.description.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  if (!v2)
  {
    if (v3 >> 60 == 15)
    {
      return 0x69616D6F44626557;
    }

    if (v5)
    {
      sub_20E424B50(v1, v3);
      sub_20E4C6830();

      v12 = 0xD000000000000011;
      sub_20E4C6830();

      goto LABEL_11;
    }

    sub_20E424B50(v1, v3);
    sub_20E4C6830();

    v12 = 0xD000000000000011;
    sub_20E4C6830();

LABEL_16:
    v11 = sub_20E4C6100();
    MEMORY[0x20F32EE70](v11);

    MEMORY[0x20F32EE70](41, 0xE100000000000000);
    MEMORY[0x20F32EE70](0xD000000000000015, 0x800000020E4CFF70);

    goto LABEL_17;
  }

  v6 = *v0;
  if (v3 >> 60 == 15)
  {
    sub_20E4C6830();

    v12 = 0xD000000000000012;
    if (v5)
    {
      MEMORY[0x20F32EE70](v6, v2);
      MEMORY[0x20F32EE70](0x616D6B6F6F62202CLL, 0xEC000000203A6B72);
      v7 = v4;
      v8 = v5;
    }

    else
    {
      v7 = v6;
      v8 = v2;
    }

    MEMORY[0x20F32EE70](v7, v8);
    MEMORY[0x20F32EE70](41, 0xE100000000000000);
    return v12;
  }

  if (!v5)
  {
    sub_20E424B50(v1, v3);
    sub_20E4C6830();

    v12 = 0xD000000000000012;
    MEMORY[0x20F32EE70](v6, v2);
    MEMORY[0x20F32EE70](0x3A6E656B6F74202CLL, 0xE900000000000020);
    sub_20E4C6830();

    goto LABEL_16;
  }

  sub_20E424B50(v1, v3);
  sub_20E4C6830();

  v12 = 0xD000000000000012;
  MEMORY[0x20F32EE70](v6, v2);
  MEMORY[0x20F32EE70](0x3A6E656B6F74202CLL, 0xE900000000000020);
  sub_20E4C6830();

LABEL_11:
  v10 = sub_20E4C6100();
  MEMORY[0x20F32EE70](v10);

  MEMORY[0x20F32EE70](41, 0xE100000000000000);
  MEMORY[0x20F32EE70](0xD000000000000015, 0x800000020E4CFF70);

  MEMORY[0x20F32EE70](0x616D6B6F6F62202CLL, 0xEC000000203A6B72);
  MEMORY[0x20F32EE70](v4, v5);
LABEL_17:
  MEMORY[0x20F32EE70](41, 0xE100000000000000);
  sub_20E424F94(v1, v3);
  return v12;
}

uint64_t WebContentSettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E4C3A2C()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E4C3AA0()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E4C3AF4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t WebContentSettings.blockedByFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C74ED8 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C74EF8;
    v6 = unk_280C74F00;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C74F32;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  static WebContentSettings.FilterPolicy.value(from:)(v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED30, &qword_20E4C7C20);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  return result;
}

void sub_20E4C3D04(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (qword_280C74ED8 != -1)
  {
    v11 = v4;
    v12 = a2;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    swift_once();
    v6 = v14;
    v5 = v13;
    a2 = v12;
    v4 = v11;
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  sub_20E41F4C8(v4, v5, v6, &qword_280C74EE0, v7, v8, v9, v10);
}

uint64_t WebContentSettings.blockedByFilter.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (qword_280C74ED8 != -1)
  {
    swift_once();
  }

  sub_20E41F4C8(v2, v3, v4, &qword_280C74EE0, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));

  return sub_20E424AD4(v2, v3, v4);
}

uint64_t (*WebContentSettings.blockedByFilter.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  WebContentSettings.blockedByFilter.getter(a1);
  return sub_20E4C3EAC;
}

uint64_t sub_20E4C3EAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_20E424B3C(*a1, v4, v5);
    if (qword_280C74ED8 != -1)
    {
      swift_once();
    }

    sub_20E41F4C8(v3, v4, v5, &qword_280C74EE0, **(a1 + 24), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), *(*(a1 + 24) + 24));
    sub_20E424AD4(v3, v4, v5);
  }

  else
  {
    if (qword_280C74ED8 != -1)
    {
      swift_once();
    }

    sub_20E41F4C8(v3, v4, v5, &qword_280C74EE0, **(a1 + 24), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), *(*(a1 + 24) + 24));
  }

  return sub_20E424AD4(v3, v4, v5);
}

uint64_t WebContentSettings.effectiveBlockedByFilter.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C74ED8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return sub_20E420924(&qword_280C74EE0, a1);
}

void sub_20E4C4034()
{
  qword_280C74EE0 = 0;
  *algn_280C74EE8 = 0;
  byte_280C74EF0 = 3;
  qword_280C74EF8 = 0xD00000000000001ALL;
  unk_280C74F00 = 0x800000020E4CF5B0;
  qword_280C74F20 = &type metadata for WebContentFilterPolicyCombineOperator;
  unk_280C74F28 = &protocol witness table for WebContentFilterPolicyCombineOperator;
  word_280C74F30 = 257;
  byte_280C74F32 = 0;
  qword_280C74F38 = 0;
  byte_280C74F40 = 1;
}

uint64_t static WebContentSettings.blockedByFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C74ED8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E4C47B8(&qword_280C74EE0, v2);
}

unint64_t WebContentSettings.FilterPolicy.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      v3 = v0[1];
      sub_20E4C6830();

      v7 = 0xD00000000000001BLL;
      sub_20E4C23A0();
      v4 = sub_20E4C6620();
      MEMORY[0x20F32EE70](v4);

      MEMORY[0x20F32EE70](0x747065637865202CLL, 0xEE00203A736E6F69);
      goto LABEL_8;
    }

    sub_20E4C6830();

    v2 = 0xD00000000000001FLL;
LABEL_6:
    v7 = v2;
    sub_20E4C23A0();
LABEL_8:
    v5 = sub_20E4C6620();
    MEMORY[0x20F32EE70](v5);

    MEMORY[0x20F32EE70](41, 0xE100000000000000);
    return v7;
  }

  if (*(v0 + 16) == 2)
  {
    sub_20E4C6830();

    v2 = 0xD00000000000001DLL;
    goto LABEL_6;
  }

  return 0xD000000000000011;
}

uint64_t WebContentSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v28[0] = sub_20E4C6A10();
  v2 = *(v28[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28[0], v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v28 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v37 = *v1;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4C7720;
  v17 = qword_280C74ED8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_280C74F00;
  *(v16 + 32) = qword_280C74EF8;
  *(v16 + 40) = v18;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v15;

  WebContentSettings.blockedByFilter.getter(v31);
  v19 = v31[0];
  v20 = v31[1];
  v21 = v32;
  sub_20E420924(&qword_280C74EE0, v29);
  v22 = v29[0];
  v23 = v29[1];
  v24 = v30;
  *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA80, &qword_20E4CE020);
  v25 = swift_allocObject();
  *(v16 + 48) = v25;
  *(v25 + 16) = v19;
  *(v25 + 24) = v20;
  *(v25 + 32) = v21;
  *(v25 + 40) = v22;
  *(v25 + 48) = v23;
  *(v25 + 56) = v24;
  v26 = sub_20E4C6A00();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v28[0]);
  return sub_20E4C6A20();
}

uint64_t _s15ManagedSettings010WebContentB0V12FilterPolicyO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      return v6 > 2;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        goto LABEL_11;
      }

      return 0;
    }

    if (v6 != 1)
    {
      return 0;
    }

    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if ((sub_20E4630FC(v4, v5) & 1) == 0)
    {
      return 0;
    }

    v4 = v8;
    v5 = v7;
  }

LABEL_11:

  return sub_20E4630FC(v4, v5);
}

BOOL _s15ManagedSettings9WebDomainV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_20E4C6910() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      sub_20E42E740(v4, v6);
      sub_20E42E740(v9, v11);
      sub_20E424F94(v4, v6);
      goto LABEL_15;
    }

LABEL_12:
    sub_20E42E740(v4, v6);
    sub_20E42E740(v9, v11);
    sub_20E424F94(v4, v6);
    sub_20E424F94(v9, v11);
    return 0;
  }

  if (v11 >> 60 == 15)
  {
    goto LABEL_12;
  }

  sub_20E42E740(v4, v6);
  sub_20E42E740(v9, v11);
  v14 = sub_20E43587C(v4, v6, v9, v11);
  sub_20E424F94(v9, v11);
  sub_20E424F94(v4, v6);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v7)
  {
    return v12 && (v5 == v10 && v7 == v12 || (sub_20E4C6910() & 1) != 0);
  }

  return !v12;
}

uint64_t sub_20E4C47B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA78, &unk_20E4CDF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E4C482C()
{
  result = qword_280C75790;
  if (!qword_280C75790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C75790);
  }

  return result;
}

unint64_t sub_20E4C4884()
{
  result = qword_27C8CFA88;
  if (!qword_27C8CFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CFA88);
  }

  return result;
}

unint64_t sub_20E4C48DC()
{
  result = qword_27C8CFA90;
  if (!qword_27C8CFA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CFA98, &qword_20E4CE158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CFA90);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ManagedSettings5TokenVyAA9WebDomainVGSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_15ManagedSettings010WebContentB0V12FilterPolicyO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_20E4C49B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20E4C49FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_20E4C4A40(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

ManagedSettings::DeviceActivitySettings::Name_optional __swiftcall DeviceActivitySettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DeviceActivitySettings.Name.rawValue.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_20E4C4B24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "deviceActivity.allowedClients";
  v4 = 0xD000000000000021;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0xD000000000000021;
  }

  if (v2 == 1)
  {
    v6 = "deviceActivity.allowedClients";
  }

  else
  {
    v6 = "deviceActivity.sharingAppleIDs";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "webContent.blockedByFilter";
  }

  if (*a2 == 1)
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = "deviceActivity.sharingAppleIDs";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "webContent.blockedByFilter";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E4C4BF8()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4C4C90()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4C4D14()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E4C4DB4(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = "deviceActivity.allowedClients";
  v4 = 0xD000000000000021;
  if (*v1 == 1)
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = "deviceActivity.sharingAppleIDs";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "webContent.blockedByFilter";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t (*DeviceActivitySettings.allowedClients.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75BD8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41BDF8(&qword_280C75BE0, v3, v4, v5, v6);
  return sub_20E4C4F44;
}

uint64_t sub_20E4C4F9C()
{
  qword_280C75BE0 = MEMORY[0x277D84FA0];
  qword_280C75BE8 = 0xD00000000000001DLL;
  qword_280C75BF0 = 0x800000020E4CF5D0;
  qword_280C75C10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEE0, &unk_20E4CCBC0);
  result = sub_20E430A50(qword_280C75880, &qword_27C8CEEE0, &unk_20E4CCBC0);
  qword_280C75C18 = result;
  byte_280C75BF8 = 1;
  word_280C75C20 = 256;
  byte_280C75C22 = 0;
  qword_280C75C28 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C75C30 = 0;
  return result;
}

uint64_t static DeviceActivitySettings.allowedClients.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C75BD8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C75BE0, v1, &qword_27C8CEEB8, &unk_20E4C7EC0);
}

uint64_t sub_20E4C5108(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  if (*a1 != -1)
  {
    v11 = *v3;
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  return a3(a2);
}

uint64_t sub_20E4C51A0@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  if (*a2 == -1)
  {
    result = a4(a3);
  }

  else
  {
    v8 = *a1;
    v10 = a1[1];
    v11 = a1[2];
    v12 = a1[3];
    swift_once();
    result = a4(a3);
  }

  *a5 = result;
  return result;
}

uint64_t sub_20E4C523C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = *a1;
  if (*a5 != -1)
  {
    v13 = a2;
    v14 = a7;
    swift_once();
    a7 = v14;
    a2 = v13;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];

  return a7();
}

uint64_t sub_20E4C52FC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  a4();
}

uint64_t (*DeviceActivitySettings.sharingAppleIDs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75B78 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41C70C(&qword_280C75B80, v3, v4, v5, v6);
  return sub_20E4C5430;
}

uint64_t sub_20E4C5450(uint64_t *a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = *a1;
  if (a2)
  {

    a4(v12, a3, v7, v8, v9, v10);
  }

  else
  {
    a4(v11, a3, *v6, v6[1], v6[2], v6[3]);
  }
}

uint64_t sub_20E4C5534(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*a1 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  return a3(a2);
}

uint64_t sub_20E4C5594()
{
  qword_280C75B80 = MEMORY[0x277D84FA0];
  qword_280C75B88 = 0xD00000000000001ELL;
  qword_280C75B90 = 0x800000020E4CF5F0;
  qword_280C75BB0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF460, &qword_20E4C9FF8);
  result = sub_20E430A50(&qword_280C75878, &qword_27C8CF460, &qword_20E4C9FF8);
  qword_280C75BB8 = result;
  byte_280C75B98 = 1;
  word_280C75BC0 = 256;
  byte_280C75BC2 = 1;
  qword_280C75BC8 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C75BD0 = 0;
  return result;
}

uint64_t static DeviceActivitySettings.sharingAppleIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C75B78 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C75B80, v1, &qword_27C8CFA70, &qword_20E4CDF18);
}

uint64_t DeviceActivitySettings.shareAcrossDevices.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C75B18 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C75B20, v1, v2, v3, v4);
}

uint64_t sub_20E4C575C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C75B18 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C75B20, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E4C57F4(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C75B18 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C75B20, v4, v5, v6, v7);
}

void DeviceActivitySettings.shareAcrossDevices.setter(unsigned __int8 a1)
{
  if (qword_280C75B18 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C75B20, v2, v3, v4, v5);
}

void (*DeviceActivitySettings.shareAcrossDevices.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75B18 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75B20, v3, v4, v5, v6);
  return sub_20E4C59AC;
}

uint64_t DeviceActivitySettings.effectiveShareAcrossDevices.getter()
{
  if (qword_280C75B18 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C75B20);
}

void sub_20E4C5A24()
{
  byte_280C75B20 = 1;
  qword_280C75B28 = 0xD000000000000021;
  unk_280C75B30 = 0x800000020E4CF610;
  qword_280C75B50 = &type metadata for BoolCombineOperator;
  unk_280C75B58 = &protocol witness table for BoolCombineOperator;
  byte_280C75B38 = 1;
  word_280C75B60 = 256;
  byte_280C75B62 = 0;
  qword_280C75B68 = 0;
  byte_280C75B70 = 1;
}

uint64_t static DeviceActivitySettings.shareAcrossDevices.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C75B18 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&byte_280C75B20, v1, &qword_27C8CEC98, &unk_20E4C7740);
}

uint64_t DeviceActivitySettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v29[0] = sub_20E4C6A10();
  v2 = *(v29[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29[0], v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v29 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v29[2] = *v1;
  v29[3] = v13;
  v29[4] = v14;
  v29[5] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4C7D30;
  v17 = qword_280C75BD8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_280C75BF0;
  *(v16 + 32) = qword_280C75BE8;
  *(v16 + 40) = v18;

  v19 = sub_20E41BDF8(&qword_280C75BE0, v12, v13, v14, v15);
  v20 = sub_20E41FB38(&qword_280C75BE0);
  *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEC0, &unk_20E4C7EE0);
  *(v16 + 48) = v19;
  *(v16 + 56) = v20;
  if (qword_280C75B78 != -1)
  {
    swift_once();
  }

  v21 = qword_280C75B90;
  *(v16 + 80) = qword_280C75B88;
  *(v16 + 88) = v21;

  v22 = sub_20E41C70C(&qword_280C75B80, v12, v13, v14, v15);
  v23 = sub_20E420A70(&qword_280C75B80);
  *(v16 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFAA0, &unk_20E4CE3F0);
  *(v16 + 96) = v22;
  *(v16 + 104) = v23;
  if (qword_280C75B18 != -1)
  {
    swift_once();
  }

  v24 = unk_280C75B30;
  *(v16 + 128) = qword_280C75B28;
  *(v16 + 136) = v24;

  v25 = sub_20E41BCBC(&byte_280C75B20, v12, v13, v14, v15);
  v26 = sub_20E41FA28(&byte_280C75B20);
  *(v16 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v16 + 144) = v25;
  *(v16 + 145) = v26;
  v27 = sub_20E4C6A00();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v29[0]);
  return sub_20E4C6A20();
}

unint64_t sub_20E4C5E74()
{
  result = qword_27C8CFAA8;
  if (!qword_27C8CFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CFAA8);
  }

  return result;
}