uint64_t sub_23C597A80(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23C597B44()
{
  result = qword_27E1F99D0;
  if (!qword_27E1F99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99D0);
  }

  return result;
}

unint64_t sub_23C597B9C()
{
  result = qword_27E1F99D8;
  if (!qword_27E1F99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99D8);
  }

  return result;
}

unint64_t sub_23C597BF4()
{
  result = qword_27E1F99E0;
  if (!qword_27E1F99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99E0);
  }

  return result;
}

unint64_t sub_23C597C4C()
{
  result = qword_27E1F99E8;
  if (!qword_27E1F99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99E8);
  }

  return result;
}

unint64_t sub_23C597CA4()
{
  result = qword_27E1F99F0;
  if (!qword_27E1F99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99F0);
  }

  return result;
}

unint64_t sub_23C597CFC()
{
  result = qword_27E1F99F8;
  if (!qword_27E1F99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99F8);
  }

  return result;
}

unint64_t sub_23C597D54()
{
  result = qword_27E1F9A00;
  if (!qword_27E1F9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A00);
  }

  return result;
}

unint64_t sub_23C597DAC()
{
  result = qword_27E1F9A08;
  if (!qword_27E1F9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A08);
  }

  return result;
}

unint64_t sub_23C597E04()
{
  result = qword_27E1F9A10;
  if (!qword_27E1F9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A10);
  }

  return result;
}

unint64_t sub_23C597E5C()
{
  result = qword_27E1F9A18;
  if (!qword_27E1F9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A18);
  }

  return result;
}

unint64_t sub_23C597EB4()
{
  result = qword_27E1F9A20;
  if (!qword_27E1F9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A20);
  }

  return result;
}

unint64_t sub_23C597F0C()
{
  result = qword_27E1F9A28;
  if (!qword_27E1F9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A28);
  }

  return result;
}

unint64_t sub_23C597F64()
{
  result = qword_27E1F9A30;
  if (!qword_27E1F9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A30);
  }

  return result;
}

unint64_t sub_23C597FBC()
{
  result = qword_27E1F9A38;
  if (!qword_27E1F9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A38);
  }

  return result;
}

unint64_t sub_23C598014()
{
  result = qword_27E1F9A40;
  if (!qword_27E1F9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A40);
  }

  return result;
}

unint64_t sub_23C59806C()
{
  result = qword_27E1F9A48;
  if (!qword_27E1F9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A48);
  }

  return result;
}

unint64_t sub_23C5980C4()
{
  result = qword_27E1F9A50;
  if (!qword_27E1F9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A50);
  }

  return result;
}

unint64_t sub_23C59811C()
{
  result = qword_27E1F9A58;
  if (!qword_27E1F9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A58);
  }

  return result;
}

unint64_t sub_23C598174()
{
  result = qword_27E1F9A60;
  if (!qword_27E1F9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A60);
  }

  return result;
}

unint64_t sub_23C5981CC()
{
  result = qword_27E1F9A68;
  if (!qword_27E1F9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A68);
  }

  return result;
}

unint64_t sub_23C598224()
{
  result = qword_27E1F9A70;
  if (!qword_27E1F9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A70);
  }

  return result;
}

unint64_t sub_23C59827C()
{
  result = qword_27E1F9A78;
  if (!qword_27E1F9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A78);
  }

  return result;
}

unint64_t sub_23C5982D4()
{
  result = qword_27E1F9A80;
  if (!qword_27E1F9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A80);
  }

  return result;
}

unint64_t sub_23C59832C()
{
  result = qword_27E1F9A88;
  if (!qword_27E1F9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A88);
  }

  return result;
}

uint64_t sub_23C598380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C5983E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23C59844C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C40, &unk_23C87BE90);
    v3 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23C5FF898(v5, v6);
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

unint64_t sub_23C598564(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_23C5FF898(v7, v8);
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

unint64_t sub_23C598660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C50, &unk_23C87BEA0);
    v3 = sub_23C871E94();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_23C5FFB88(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
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

unint64_t sub_23C598798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBDE0, &qword_23C874D00);
    v3 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_23C5FFB88(v5, v6, v7, v8);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 32 * result);
      *v15 = v5;
      v15[1] = v6;
      v15[2] = v7;
      v15[3] = v8;
      v16 = (v3[7] + 32 * result);
      *v16 = v10;
      v16[1] = v9;
      v16[2] = v11;
      v16[3] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_23C598900(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23C871E94();

    for (i = (a1 + 64); ; i += 5)
    {
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_23C5FFB88(v7, v8, v9, v10);
      if (v13)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v5[6] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v10;
      *(v5[7] + 8 * result) = v11;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
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

unint64_t sub_23C598A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD10, &qword_23C874AF8);
    v3 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23C5FF898(v5, v6);
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

unint64_t sub_23C598B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE10, &unk_23C874CD0);
    v3 = sub_23C871E94();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C5855B0(v4, v13, &qword_27E1F9C28, &unk_23C87AB40);
      result = sub_23C5FF9C4(v13);
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
      result = sub_23C59A4B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23C598C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C18, &qword_23C874CC0);
    v3 = sub_23C871E94();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C5855B0(v4, &v13, &qword_27E1F9C20, &qword_23C874CC8);
      v5 = v13;
      v6 = v14;
      result = sub_23C5FF898(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23C59A4B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23C598D8C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C10, &qword_23C87BEF0);
  v3 = sub_23C871E94();
  v5 = a1[4];
  v4 = a1[5];
  result = sub_23C5FF958(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v8 = a1 + 7;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    *(v3[7] + 8 * result) = v4;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    sub_23C59A744(v4);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v8 - 1);
    v4 = *v8;
    result = sub_23C5FF958(v5);
    v8 += 2;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23C598E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AC8, &qword_23C874B30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AD0, &qword_23C874B38);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9AC8, &qword_23C874B30);
      result = sub_23C5FFCB8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
      result = sub_23C5983E4(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
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

unint64_t sub_23C599088(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_23C871E94();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_23C5855B0(v17, v13, a2, v28);
      result = sub_23C5FFCB8(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
      result = sub_23C5983E4(v13, v22 + *(*(v23 - 8) + 72) * v21, type metadata accessor for SiriConversationPublisher.GraphUUID);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_23C599264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AA0, &qword_23C874B00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AA8, &qword_23C874B08);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9AA0, &qword_23C874B00);
      result = sub_23C5FFCB8(v6);
      if (v13)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = *(*(type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8) + 72) * result;
      sub_23C5983E4(v6, v14 + v15, type metadata accessor for SiriConversationPublisher.GraphUUID);
      result = sub_23C5983E4(&v6[v9], v8[7] + v15, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v16 = v8[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v8[2] = v18;
      v10 += v11;
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

unint64_t sub_23C599478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B90, &qword_23C874C18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B98, &qword_23C874C20);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9B90, &qword_23C874C18);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23C5FF898(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ToolKitProtoTypedValue(0);
      result = sub_23C5983E4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for ToolKitProtoTypedValue);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
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

unint64_t sub_23C599660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B80, &qword_23C874C08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B88, &qword_23C874C10);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9B80, &qword_23C874C08);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23C5FF898(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
      result = sub_23C5983E4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
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

unint64_t sub_23C59985C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_23C5FF898(v7, v8);
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

unint64_t sub_23C599950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B68, &qword_23C874BF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B70, &qword_23C874BF8);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9B68, &qword_23C874BF0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23C5FF898(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TranscriptProtoActionParameterValue(0);
      result = sub_23C5983E4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for TranscriptProtoActionParameterValue);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
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

unint64_t sub_23C599B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B58, &qword_23C874BE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B60, &qword_23C874BE8);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9B58, &qword_23C874BE0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23C5FF898(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TranscriptProtoParameterValue(0);
      result = sub_23C5983E4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for TranscriptProtoParameterValue);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
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

unint64_t sub_23C599D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B48, &qword_23C874BD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B50, &qword_23C874BD8);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9B48, &qword_23C874BD0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23C5FF898(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TranscriptProtoShimParameters(0);
      result = sub_23C5983E4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for TranscriptProtoShimParameters);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
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

unint64_t sub_23C599F08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B38, &qword_23C874BC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B40, &qword_23C874BC8);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9B38, &qword_23C874BC0);
      v12 = *v6;
      result = sub_23C5FF910(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ToolKitProtoTypedValue(0);
      result = sub_23C5983E4(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for ToolKitProtoTypedValue);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
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

unint64_t sub_23C59A0E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B28, &qword_23C874BB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B30, &qword_23C874BB8);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9B28, &qword_23C874BB0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23C5FF898(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TranscriptProtoASTFlatValue(0);
      result = sub_23C5983E4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for TranscriptProtoASTFlatValue);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
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

unint64_t sub_23C59A2C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B18, &qword_23C874BA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B20, &qword_23C874BA8);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9B18, &qword_23C874BA0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23C5FF898(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TranscriptProtoStatementID(0);
      result = sub_23C5983E4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for TranscriptProtoStatementID);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
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

_OWORD *sub_23C59A4B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23C59A51C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23C59A6F0();
  result = MEMORY[0x23EED72E0](v2, &type metadata for MessageTypeWrapper, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_23C64E73C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23C59A590(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v4 = type metadata accessor for ComponentIdentifierBridge();
    v5 = sub_23C58ABD4(&qword_27E1F9BF0, type metadata accessor for ComponentIdentifierBridge);
    result = MEMORY[0x23EED72E0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EED7610](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_23C64E838(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_23C871C34();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_23C59A6F0()
{
  result = qword_27E1F9C00;
  if (!qword_27E1F9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9C00);
  }

  return result;
}

unint64_t sub_23C59A744(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id BiomeEventGraph.init(timestamp:events:)(uint64_t a1, double a2)
{
  sub_23C5A3FDC(0, &qword_2814FABB0, 0x277D86200);
  sub_23C871B54();
  sub_23C871664();
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEventGraphs] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___siriTurns] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_timestamp] = a2;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal] = a1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for BiomeEventGraph();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t type metadata accessor for BiomeEventGraph()
{
  result = qword_27E1F9CD8;
  if (!qword_27E1F9CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C59A99C()
{
  if (*(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events))
  {
    v1 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal);
    *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events) = v1;
    swift_bridgeObjectRetain_n();
  }

  return v1;
}

uint64_t sub_23C59A9F8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events) = a1;
}

uint64_t (*sub_23C59AA10(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59A99C();
  return sub_23C59AA58;
}

uint64_t sub_23C59AA64()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents);
  }

  else
  {
    v14 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents;
    v3 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal);
    v15 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
LABEL_20:
      v4 = sub_23C871C34();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED7610](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v9 = *&v6[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];

      ++v5;
      if (v9)
      {
        MEMORY[0x23EED7170]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23C8718D4();
        }

        sub_23C871904();
        v5 = v8;
      }
    }

    v15 = sub_23C5A3EE8(v11, sub_23C65368C, sub_23C6487D4);
    sub_23C59C9D0(&v15);

    v1 = v15;
    v12 = *(v0 + v14);
    *(v0 + v14) = v15;
  }

  return v1;
}

uint64_t sub_23C59AC7C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents) = a1;
}

uint64_t (*sub_23C59AC94(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59AA64();
  return sub_23C59ACDC;
}

void *sub_23C59ACE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92B0, &qword_23C8734F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for TranscriptProtoEvent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents];
  if (v11)
  {
    v12 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents];
  }

  else
  {
    v23 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents;
    v13 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal];
    if (v13 >> 62)
    {
      goto LABEL_21;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v0; v14; i = v0)
    {
      v15 = 0;
      v29 = v13 & 0xC000000000000001;
      v27 = v8;
      v28 = v13 & 0xFFFFFFFFFFFFFF8;
      v25 = v6;
      v26 = (v6 + 48);
      v16 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v29)
        {
          v8 = MEMORY[0x23EED7610](v15, v13);
        }

        else
        {
          if (v15 >= *(v28 + 16))
          {
            goto LABEL_20;
          }

          v8 = *(v13 + 8 * v15 + 32);
        }

        v0 = v8;
        v6 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v17 = OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_transcriptProto;
        swift_beginAccess();
        sub_23C5855B0(&v0[v17], v4, &qword_27E1F92B0, &qword_23C8734F0);

        if ((*v26)(v4, 1, v27) == 1)
        {
          v8 = sub_23C585C34(v4, &qword_27E1F92B0, &qword_23C8734F0);
        }

        else
        {
          sub_23C5A3818(v4, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_23C58443C(0, v16[2] + 1, 1, v16);
          }

          v19 = v16[2];
          v18 = v16[3];
          v0 = (v19 + 1);
          if (v19 >= v18 >> 1)
          {
            v16 = sub_23C58443C(v18 > 1, v19 + 1, 1, v16);
          }

          v16[2] = v0;
          v8 = sub_23C5A3818(v10, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19);
        }

        ++v15;
        if (v6 == v14)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v20 = v8;
      v14 = sub_23C871C34();
      v8 = v20;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_23:
    v30 = v16;

    sub_23C59C808(&v30);

    v11 = v30;
    v21 = *&i[v23];
    *&i[v23] = v30;
  }

  return v11;
}

uint64_t sub_23C59B05C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents) = a1;
}

uint64_t (*sub_23C59B074(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59ACE8();
  return sub_23C59B0BC;
}

void *sub_23C59B0C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A8, &qword_23C8734E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v5 = sub_23C871604();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents];
  if (v11)
  {
    v12 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents];
  }

  else
  {
    v41 = v8;
    v32 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents;
    v13 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal];
    if (v13 >> 62)
    {
      goto LABEL_21;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v0; v14; i = v0)
    {
      v15 = 0;
      v39 = v13 & 0xFFFFFFFFFFFFFF8;
      v40 = v13 & 0xC000000000000001;
      v16 = (v6 + 6);
      v35 = v6;
      v36 = (v6 + 4);
      v17 = MEMORY[0x277D84F90];
      v6 = &qword_27E1F92A8;
      v37 = v14;
      v38 = v10;
      v18 = &qword_23C8734E8;
      v34 = v16;
      while (1)
      {
        if (v40)
        {
          v19 = v13;
          v20 = MEMORY[0x23EED7610](v15);
        }

        else
        {
          if (v15 >= *(v39 + 16))
          {
            goto LABEL_20;
          }

          v19 = v13;
          v20 = *(v13 + 8 * v15 + 32);
        }

        v0 = v20;
        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v10 = v6;
        v22 = OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_gfiEvent;
        swift_beginAccess();
        v23 = &v0[v22];
        v6 = v10;
        sub_23C5855B0(v23, v4, v10, v18);

        v0 = v41;
        if ((*v16)(v4, 1, v41) == 1)
        {
          sub_23C585C34(v4, v10, v18);
        }

        else
        {
          v24 = v18;
          v25 = *v36;
          (*v36)(v38, v4, v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_23C58448C(0, v17[2] + 1, 1, v17);
          }

          v27 = v17[2];
          v26 = v17[3];
          v0 = (v27 + 1);
          if (v27 >= v26 >> 1)
          {
            v17 = sub_23C58448C(v26 > 1, v27 + 1, 1, v17);
          }

          v17[2] = v0;
          v25((v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v35[9] * v27), v38, v41);
          v6 = v10;
          v18 = v24;
          v16 = v34;
        }

        ++v15;
        v13 = v19;
        if (v21 == v37)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v28 = v13;
      v14 = sub_23C871C34();
      v13 = v28;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_23:
    v42 = v17;

    sub_23C59CA4C(&v42);

    v11 = v42;
    v29 = *&i[v32];
    *&i[v32] = v42;
  }

  return v11;
}

uint64_t sub_23C59B478(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents) = a1;
}

uint64_t (*sub_23C59B490(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59B0C8();
  return sub_23C59B4D8;
}

void *sub_23C59B4E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9290, &unk_23C8734D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v5 = sub_23C871414();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents];
  if (v11)
  {
    v12 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents];
  }

  else
  {
    v41 = v8;
    v32 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents;
    v13 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal];
    if (v13 >> 62)
    {
      goto LABEL_21;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v0; v14; i = v0)
    {
      v15 = 0;
      v39 = v13 & 0xFFFFFFFFFFFFFF8;
      v40 = v13 & 0xC000000000000001;
      v16 = (v6 + 6);
      v35 = v6;
      v36 = (v6 + 4);
      v17 = MEMORY[0x277D84F90];
      v6 = &unk_27E1F9290;
      v37 = v14;
      v38 = v10;
      v18 = &unk_23C8734D0;
      v34 = v16;
      while (1)
      {
        if (v40)
        {
          v19 = v13;
          v20 = MEMORY[0x23EED7610](v15);
        }

        else
        {
          if (v15 >= *(v39 + 16))
          {
            goto LABEL_20;
          }

          v19 = v13;
          v20 = *(v13 + 8 * v15 + 32);
        }

        v0 = v20;
        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v10 = v6;
        v22 = OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_telemetryEvent;
        swift_beginAccess();
        v23 = &v0[v22];
        v6 = v10;
        sub_23C5855B0(v23, v4, v10, v18);

        v0 = v41;
        if ((*v16)(v4, 1, v41) == 1)
        {
          sub_23C585C34(v4, v10, v18);
        }

        else
        {
          v24 = v18;
          v25 = *v36;
          (*v36)(v38, v4, v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_23C584464(0, v17[2] + 1, 1, v17);
          }

          v27 = v17[2];
          v26 = v17[3];
          v0 = (v27 + 1);
          if (v27 >= v26 >> 1)
          {
            v17 = sub_23C584464(v26 > 1, v27 + 1, 1, v17);
          }

          v17[2] = v0;
          v25((v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v35[9] * v27), v38, v41);
          v6 = v10;
          v18 = v24;
          v16 = v34;
        }

        ++v15;
        v13 = v19;
        if (v21 == v37)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v28 = v13;
      v14 = sub_23C871C34();
      v13 = v28;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_23:
    v42 = v17;

    sub_23C59C8EC(&v42);

    v11 = v42;
    v29 = *&i[v32];
    *&i[v32] = v42;
  }

  return v11;
}

uint64_t sub_23C59B894(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents) = a1;
}

uint64_t (*sub_23C59B8AC(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59B4E4();
  return sub_23C59B8F4;
}

uint64_t sub_23C59B920()
{
  v0 = sub_23C870B74();
  v60 = *(v0 - 8);
  v1 = *(v60 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v59 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v63 = v46 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5E0, &unk_23C87AE00);
  inited = swift_initStackObject();
  v6 = MEMORY[0x277D84F90];
  inited[2] = sub_23C595CB8(MEMORY[0x277D84F90]);
  inited[3] = sub_23C595DA8(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9CF8, &unk_23C874DD0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_23C595DBC(v6);
  inited[4] = v7;
  inited[5] = sub_23C595DD0(v6);
  inited[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB5F0, &qword_23C87AE10);
  v8 = swift_initStackObject();
  *(v8 + 16) = sub_23C595EC8(v6);
  v9 = sub_23C5960B0(v6);
  v52 = v8;
  *(v8 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D00, &unk_23C874DE0);
  v10 = swift_initStackObject();
  *(v10 + 16) = sub_23C596298(v6);
  *(v10 + 24) = sub_23C59647C(v6);
  v11 = sub_23C59AA64();
  v65 = v6;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_43:

    return MEMORY[0x277D84F90];
  }

LABEL_42:
  v43 = v10;
  v44 = v11;
  v45 = sub_23C871C34();
  v11 = v44;
  v10 = v43;
  if (!v45)
  {
    goto LABEL_43;
  }

LABEL_3:
  sub_23C667984(v11, inited, v52, v10);

  v11 = sub_23C608CF4();
  v12 = v11;
  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

  v11 = sub_23C871C34();
  v13 = v11;
  if (!v11)
  {
LABEL_45:

    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v46[1] = v10;
  v14 = 0;
  v15 = 0;
  v53 = v12 & 0xC000000000000001;
  v48 = v12 & 0xFFFFFFFFFFFFFF8;
  v47 = v12 + 32;
  v62 = (v60 + 32);
  v16 = MEMORY[0x277D84F90];
  v58 = v0;
  v51 = inited;
  v50 = v12;
  v49 = v13;
  while (1)
  {
    while (1)
    {
      if (v53)
      {
        v11 = MEMORY[0x23EED7610](v14, v12);
        v17 = __OFADD__(v14++, 1);
        if (v17)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v14 >= *(v48 + 16))
        {
          goto LABEL_41;
        }

        v11 = *(v47 + 8 * v14);
        v17 = __OFADD__(v14++, 1);
        if (v17)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v18 = v11;
      v11 = sub_23C638AD4(v11);
      if (v19)
      {
        break;
      }

      if (v14 == v13)
      {
        goto LABEL_37;
      }
    }

    v20 = v19;
    v54 = *&v11;
    v55 = v18;
    v57 = v14;
    v21 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      v11 = sub_23C871C34();
      v10 = v11;
    }

    else
    {
      v10 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v15;
    if (v10)
    {
      break;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_32:
    v35 = v54;
    v36 = v20;
    v37 = sub_23C596660(v23);

    v38 = v52;

    v15 = v56;
    v39 = sub_23C5A4024(v37, v38);

    v64 = v36;
    sub_23C6360C8(v39);
    v40 = objc_allocWithZone(type metadata accessor for EventGraph());
    v41 = EventGraph.init(timestamp:events:)(v35);
    MEMORY[0x23EED7170]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23C8718D4();
      v0 = v58;
    }

    sub_23C871904();

    v16 = v65;
    inited = v51;
    v12 = v50;
    v13 = v49;
    v14 = v57;
    if (v57 == v49)
    {
LABEL_37:

      return v16;
    }
  }

  v22 = 0;
  v61 = v20 & 0xC000000000000001;
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v61)
    {
      v11 = MEMORY[0x23EED7610](v22, v20);
      v24 = v11;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 >= *(v21 + 16))
      {
        goto LABEL_39;
      }

      v24 = *(v20 + 8 * v22 + 32);

      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    v26 = v21;
    inited = v20;
    v27 = *(v24 + 24);
    result = sub_23C870CF4();
    if (!result)
    {
      break;
    }

    v29 = result;
    v30 = v59;
    sub_23C870D94();

    v31 = *v62;
    (*v62)(v63, v30, v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_23C5844B4(0, v23[2] + 1, 1, v23);
    }

    v33 = v23[2];
    v32 = v23[3];
    v21 = v26;
    if (v33 >= v32 >> 1)
    {
      v23 = sub_23C5844B4(v32 > 1, v33 + 1, 1, v23);
    }

    v23[2] = v33 + 1;
    v34 = v23 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v33;
    v0 = v58;
    v11 = v31(v34, v63, v58);
    ++v22;
    v20 = inited;
    if (v25 == v10)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C59C020(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEventGraphs);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEventGraphs) = a1;
}

uint64_t (*sub_23C59C038(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59B900();
  return sub_23C59C080;
}

uint64_t sub_23C59C0AC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_23C59C114()
{
  isUniquelyReferenced_nonNull_native = sub_23C59B900();
  v48 = MEMORY[0x277D84F90];
  v1 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_53;
  }

  v2 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = isUniquelyReferenced_nonNull_native; v2; i = v37)
  {
    v3 = 0;
    v47 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v4 = isUniquelyReferenced_nonNull_native + 32;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v47)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x23EED7610](v3, i);
      }

      else
      {
        if (v3 >= *(v1 + 16))
        {
          goto LABEL_50;
        }

        isUniquelyReferenced_nonNull_native = *(v4 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_native;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      objc_allocWithZone(type metadata accessor for SiriTurn());
      v7 = sub_23C5A3FDC(0, &qword_27E1F9CE8, 0x277D5A800);
      v8 = sub_23C601560();
      if (*(v8 + 16) && (v9 = sub_23C5FF958(v7), (v10 & 1) != 0))
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        v12 = 0;
        v13 = 1 << *(v11 + 32);
        v14 = (v13 + 63) >> 6;
        v15 = 64;
        while (1)
        {
          v16 = *(v11 + v15);
          if (v16)
          {
            break;
          }

          v12 -= 64;
          v15 += 8;
          if (!--v14)
          {
            goto LABEL_16;
          }
        }

        v17 = __clz(__rbit64(v16));
        if (v17 - v13 == v12)
        {
LABEL_16:

          goto LABEL_17;
        }

        v18 = sub_23C5A3F8C(v17 - v12, *(v11 + 36), 0, v11);

        sub_23C601CF4(v18);

        v39 = OBJC_IVAR___ISEventGraph_eventsInternal;
        v19 = *&v5[OBJC_IVAR___ISEventGraph_eventsInternal];
        v46 = v19 & 0xFFFFFFFFFFFFFF8;
        if (v19 >> 62)
        {
          v20 = sub_23C871C34();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v20)
        {
          v21 = 0;
          v43 = v19 & 0xC000000000000001;
          v40 = MEMORY[0x277D84F90];
          v41 = v2;
          v42 = v20;
          do
          {
            v22 = v21;
            while (1)
            {
              if (v43)
              {
                isUniquelyReferenced_nonNull_native = MEMORY[0x23EED7610](v22, v19);
                v23 = isUniquelyReferenced_nonNull_native;
                v24 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (v22 >= *(v46 + 16))
                {
                  goto LABEL_52;
                }

                v23 = *(v19 + 8 * v22 + 32);

                v24 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  goto LABEL_51;
                }
              }

              v25 = v1;
              v26 = v4;
              v27 = v19;
              v28 = *(v23 + 24);
              sub_23C5A3FDC(0, &qword_27E1F9CF0, 0x277D5A928);
              v29 = sub_23C870D44();
              if (v29)
              {
                break;
              }

              ++v22;
              v19 = v27;
              v4 = v26;
              v1 = v25;
              v2 = v41;
              if (v24 == v42)
              {
                goto LABEL_41;
              }
            }

            v30 = *(v23 + 16);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_23C5845FC(0, *(v40 + 16) + 1, 1, v40);
              v40 = isUniquelyReferenced_nonNull_native;
            }

            v21 = v24;
            v32 = *(v40 + 16);
            v31 = *(v40 + 24);
            if (v32 >= v31 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_23C5845FC((v31 > 1), v32 + 1, 1, v40);
              v21 = v24;
              v40 = isUniquelyReferenced_nonNull_native;
            }

            *(v40 + 16) = v32 + 1;
            *(v40 + 8 * v32 + 32) = v30;
            v19 = v27;
            v4 = v26;
            v1 = v25;
            v2 = v41;
          }

          while (v21 != v42);
        }

        else
        {
          v40 = MEMORY[0x277D84F90];
        }

LABEL_41:

        if (*(v40 + 16))
        {
          v33 = (v40 + 32);
        }

        else
        {
          v33 = &v5[OBJC_IVAR___ISEventGraph_timestamp];
        }

        v34 = *v33;

        v35 = *&v5[v39];

        EventGraph.init(timestamp:events:)(v34);

        MEMORY[0x23EED7170]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23C8718D4();
        }

        isUniquelyReferenced_nonNull_native = sub_23C871904();
        v45 = v48;
      }

      else
      {

LABEL_17:
        isUniquelyReferenced_nonNull_native = swift_deallocPartialClassInstance();
      }

      if (v3 == v2)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v37 = isUniquelyReferenced_nonNull_native;
    v2 = sub_23C871C34();
    isUniquelyReferenced_nonNull_native = v37;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_55:

  return v45;
}

uint64_t sub_23C59C5D0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___siriTurns);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___siriTurns) = a1;
}

uint64_t (*sub_23C59C5E8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59C08C();
  return sub_23C59C630;
}

uint64_t sub_23C59C63C(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + *a3);
  *(v3 + *a3) = v4;
}

id BiomeEventGraph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeEventGraph.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeEventGraph();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C59C808(void **a1)
{
  v2 = *(type metadata accessor for TranscriptProtoEvent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648E14(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C59CC34(v6, type metadata accessor for TranscriptProtoEvent, sub_23C59DE6C, sub_23C59CD84);
  *a1 = v3;
  return result;
}

uint64_t sub_23C59C8EC(void **a1)
{
  v2 = *(sub_23C871414() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648E28(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C59CC34(v6, MEMORY[0x277D1F728], sub_23C59F370, sub_23C59D578);
  *a1 = v3;
  return result;
}

uint64_t sub_23C59C9D0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23C64BCE4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23C59CB30(v6);
  return sub_23C871D64();
}

uint64_t sub_23C59CA4C(void **a1)
{
  v2 = *(sub_23C871604() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648E3C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C59CC34(v6, MEMORY[0x277D20B20], sub_23C5A0ABC, sub_23C59DBCC);
  *a1 = v3;
  return result;
}

uint64_t sub_23C59CB30(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TimestampedOrderedEvent();
        v6 = sub_23C8718F4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_23C5A03C4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_23C59DAB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C59CC34(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_23C871FC4();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_23C8718F4();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_23C59CD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090) - 8) + 64);
  v9 = (MEMORY[0x28223BE20])();
  v73 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v70 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v61 - v16;
  v80 = sub_23C870AE4();
  v17 = *(v80 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v80);
  v65 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v64 = &v61 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v72 = &v61 - v24;
  MEMORY[0x28223BE20](v23);
  v79 = &v61 - v25;
  v89 = type metadata accessor for TranscriptProtoEvent(0);
  v26 = *(*(v89 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v89);
  v87 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v90 = &v61 - v30;
  result = MEMORY[0x28223BE20](v29);
  v34 = &v61 - v33;
  v63 = a2;
  if (a3 != a2)
  {
    v35 = *a4;
    v36 = *(v32 + 72);
    v77 = (v17 + 32);
    v71 = (v17 + 8);
    v37 = v35 + v36 * (a3 - 1);
    v85 = -v36;
    v86 = v35;
    v38 = a1 - a3;
    v62 = v36;
    v39 = v35 + v36 * a3;
    v40 = &qword_27E1F9D08;
    v88 = &v61 - v33;
LABEL_5:
    v69 = a3;
    v66 = v39;
    v67 = v38;
    v68 = v37;
    v41 = v82;
    v42 = v89;
    while (1)
    {
      sub_23C5A4514(v39, v34);
      sub_23C5A4514(v37, v90);
      sub_23C5855B0(&v34[*(v42 + 52)], v41, v40, &qword_23C87D090);
      v43 = type metadata accessor for TranscriptProtoTimepoint(0);
      v44 = v40;
      v45 = *(*(v43 - 8) + 48);
      if (v45(v41, 1, v43) == 1)
      {
        break;
      }

      v46 = v81;
      sub_23C5855B0(v41 + *(v43 + 28), v81, &unk_27E1F9D10, &qword_23C874E00);
      sub_23C5A4578(v41, type metadata accessor for TranscriptProtoTimepoint);
      v47 = sub_23C870EC4();
      v48 = *(v47 - 8);
      v83 = *(v48 + 48);
      v84 = v47;
      if (v83(v46, 1) == 1)
      {
        sub_23C585C34(v46, &unk_27E1F9D10, &qword_23C874E00);
        v41 = v82;
        v34 = v88;
        v40 = &qword_27E1F9D08;
        goto LABEL_15;
      }

      v78 = v38;
      v49 = v72;
      sub_23C870EB4();
      v75 = *(v48 + 8);
      v76 = v48 + 8;
      v75(v46, v84);
      v74 = *v77;
      v74(v79, v49, v80);
      v50 = v73;
      sub_23C5855B0(v90 + *(v89 + 52), v73, &qword_27E1F9D08, &qword_23C87D090);
      if (v45(v50, 1, v43) == 1)
      {
        sub_23C585C34(v50, &qword_27E1F9D08, &qword_23C87D090);
        v34 = v88;
        v40 = &qword_27E1F9D08;
        v38 = v78;
        goto LABEL_14;
      }

      v51 = v70;
      sub_23C5855B0(v50 + *(v43 + 28), v70, &unk_27E1F9D10, &qword_23C874E00);
      sub_23C5A4578(v50, type metadata accessor for TranscriptProtoTimepoint);
      v52 = (v83)(v51, 1, v84);
      v38 = v78;
      if (v52 == 1)
      {
        sub_23C585C34(v51, &unk_27E1F9D10, &qword_23C874E00);
        v34 = v88;
        v40 = &qword_27E1F9D08;
LABEL_14:
        (*v71)(v79, v80);
        v41 = v82;
LABEL_15:
        v42 = v89;
        sub_23C5A4578(v90, type metadata accessor for TranscriptProtoEvent);
        result = sub_23C5A4578(v34, type metadata accessor for TranscriptProtoEvent);
        goto LABEL_16;
      }

      v55 = v65;
      sub_23C870EB4();
      v75(v51, v84);
      v56 = v64;
      v57 = v80;
      v74(v64, v55, v80);
      v58 = v79;
      v59 = sub_23C870A94();
      v60 = *v71;
      (*v71)(v56, v57);
      v60(v58, v57);
      sub_23C5A4578(v90, type metadata accessor for TranscriptProtoEvent);
      v34 = v88;
      v42 = v89;
      result = sub_23C5A4578(v88, type metadata accessor for TranscriptProtoEvent);
      v41 = v82;
      v40 = &qword_27E1F9D08;
      if ((v59 & 1) == 0)
      {
LABEL_4:
        a3 = v69 + 1;
        v37 = v68 + v62;
        v38 = v67 - 1;
        v39 = v66 + v62;
        if (v69 + 1 == v63)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_16:
      if (!v86)
      {
        __break(1u);
        return result;
      }

      v53 = v87;
      sub_23C5A3818(v39, v87);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23C5A3818(v53, v37);
      v37 += v85;
      v39 += v85;
      if (__CFADD__(v38++, 1))
      {
        goto LABEL_4;
      }
    }

    sub_23C585C34(v41, v44, &qword_23C87D090);
    v34 = v88;
    v40 = v44;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_23C59D578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v71 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v68 = &v50[-v12];
  v13 = sub_23C870AE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v67 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v70 = &v50[-v18];
  v19 = sub_23C871414();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v72 = &v50[-v24];
  result = MEMORY[0x28223BE20](v23);
  v69 = &v50[-v27];
  v52 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v30 = *(v26 + 16);
    v29 = v26 + 16;
    v31 = *(v29 + 56);
    v32 = (v14 + 48);
    v64 = (v14 + 32);
    v65 = v30;
    v62 = (v14 + 48);
    v63 = (v14 + 8);
    v61 = (v29 - 8);
    v66 = v29;
    v33 = v28 + v31 * (a3 - 1);
    v57 = -v31;
    v58 = (v29 + 16);
    v34 = a1 - a3;
    v59 = v28;
    v51 = v31;
    v35 = v28 + v31 * a3;
LABEL_5:
    v55 = v33;
    v56 = a3;
    v53 = v35;
    v54 = v34;
    v36 = v34;
    while (1)
    {
      v37 = v65;
      v65(v69, v35, v19);
      v37(v72, v33, v19);
      v38 = v68;
      sub_23C871374();
      v39 = *v32;
      if ((*v32)(v38, 1, v13) == 1)
      {
        sub_23C870AB4();
        if (v39(v38, 1, v13) != 1)
        {
          sub_23C585C34(v68, &unk_27E2054F0, &unk_23C874DF0);
        }
      }

      else
      {
        (*v64)(v70, v38, v13);
      }

      sub_23C871374();
      v40 = v71;
      if (v39(v71, 1, v13) == 1)
      {
        v41 = v67;
        sub_23C870AB4();
        if (v39(v40, 1, v13) != 1)
        {
          sub_23C585C34(v40, &unk_27E2054F0, &unk_23C874DF0);
        }
      }

      else
      {
        v41 = v67;
        (*v64)(v67, v40, v13);
      }

      v42 = v70;
      v43 = sub_23C870A94();
      v44 = v41;
      v45 = *v63;
      (*v63)(v44, v13);
      v45(v42, v13);
      v46 = *v61;
      (*v61)(v72, v19);
      result = v46(v69, v19);
      v32 = v62;
      if ((v43 & 1) == 0)
      {
LABEL_4:
        a3 = v56 + 1;
        v33 = v55 + v51;
        v34 = v54 - 1;
        v35 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v59)
      {
        break;
      }

      v47 = *v58;
      v48 = v60;
      (*v58)(v60, v35, v19);
      swift_arrayInitWithTakeFrontToBack();
      result = v47(v33, v48, v19);
      v33 += v57;
      v35 += v57;
      if (__CFADD__(v36++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C59DAB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v19 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = *(v8 + 16);
      v12 = *(*v6 + 16);
      if (v11 == v12)
      {
        sub_23C870D74();
        v13 = *(v8 + 24);
        v14 = *(v10 + 24);

        v15 = sub_23C870D14();

        if ((v15 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v12)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v16;
      --v6;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v19 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C59DBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23C871604();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v36 - v13;
  result = MEMORY[0x28223BE20](v12);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v15 + 16);
    v48 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v44 = (v15 + 32);
    v45 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v41 = v20;
    v42 = a3;
    v39 = v22;
    v40 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v49;
      v26 = v47;
      v47(v49, v22, v8);
      v27 = v50;
      v26(v50, v24, v8);
      sub_23C8715E4();
      v29 = v28;
      sub_23C8715E4();
      v31 = v30;
      v32 = *v19;
      (*v19)(v27, v8);
      result = v32(v25, v8);
      if (v29 >= v31)
      {
LABEL_4:
        a3 = v42 + 1;
        v20 = v41 + v37;
        v21 = v40 - 1;
        v22 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v24, v34, v8);
      v24 += v43;
      v22 += v43;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C59DE6C(unint64_t *a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v196 = a4;
  v192 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v216 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v186 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v194 = &v186 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v186 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v211 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v186 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v191 = &v186 - v26;
  MEMORY[0x28223BE20](v25);
  v198 = &v186 - v27;
  v224 = sub_23C870AE4();
  v28 = *(v224 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v224);
  v206 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v205 = &v186 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v215 = &v186 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v222 = &v186 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v187 = &v186 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v186 = &v186 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v193 = &v186 - v43;
  MEMORY[0x28223BE20](v42);
  v200 = &v186 - v44;
  v45 = type metadata accessor for TranscriptProtoEvent(0);
  v209 = *(v45 - 8);
  v46 = *(v209 + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v199 = &v186 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v230 = &v186 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v234 = &v186 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v233 = &v186 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v214 = &v186 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v212 = &v186 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v189 = &v186 - v60;
  result = MEMORY[0x28223BE20](v59);
  v188 = &v186 - v62;
  v210 = a3;
  v63 = a3[1];
  if (v63 < 1)
  {
    v65 = MEMORY[0x277D84F90];
LABEL_117:
    v28 = *v192;
    if (!*v192)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_119;
    }

    goto LABEL_150;
  }

  v231 = result;
  v64 = 0;
  v221 = (v28 + 32);
  v217 = (v28 + 8);
  v65 = MEMORY[0x277D84F90];
  v66 = &qword_27E1F9D08;
  v223 = v13;
  v207 = v17;
  v220 = v24;
  while (2)
  {
    v208 = v65;
    v195 = v64;
    if (v64 + 1 >= v63)
    {
      v76 = v64 + 1;
      v101 = v196;
      goto LABEL_35;
    }

    v213 = v63;
    v190 = v5;
    v67 = v64;
    v68 = *v210;
    v229 = v68;
    v69 = *(v209 + 72);
    v70 = v68 + v69 * (v64 + 1);
    v71 = v188;
    sub_23C5A4514(v70, v188);
    v72 = v68 + v69 * v67;
    v73 = v189;
    sub_23C5A4514(v72, v189);
    LODWORD(v228) = _s26AIMLInstrumentationStreams20TranscriptProtoEventV1loiySbAC_ACtFZ_0(v71, v73);
    sub_23C5A4578(v73, type metadata accessor for TranscriptProtoEvent);
    result = sub_23C5A4578(v71, type metadata accessor for TranscriptProtoEvent);
    v74 = v195 + 2;
    v232 = v69;
    v28 = v229 + v69 * (v195 + 2);
    while (1)
    {
      v76 = v213;
      if (v213 == v74)
      {
        break;
      }

      v77 = v212;
      sub_23C5A4514(v28, v212);
      sub_23C5A4514(v70, v214);
      v78 = v77 + *(v231 + 52);
      v79 = v207;
      sub_23C5855B0(v78, v207, v66, &qword_23C87D090);
      v80 = type metadata accessor for TranscriptProtoTimepoint(0);
      v81 = *(v80 - 8);
      v82 = v66;
      v83 = *(v81 + 48);
      v229 = (v81 + 48);
      if (v83(v79, 1, v80) == 1)
      {
        sub_23C585C34(v79, v82, &qword_23C87D090);
        v75 = 1;
        v24 = v220;
        v66 = v82;
      }

      else
      {
        v226 = v83;
        v84 = v198;
        sub_23C5855B0(v79 + *(v80 + 28), v198, &unk_27E1F9D10, &qword_23C874E00);
        v85 = v79;
        v86 = v84;
        sub_23C5A4578(v85, type metadata accessor for TranscriptProtoTimepoint);
        v87 = sub_23C870EC4();
        v88 = *(v87 - 8);
        v89 = *(v88 + 48);
        v227 = v87;
        v225 = v89;
        if ((v89)(v86, 1) == 1)
        {
          sub_23C585C34(v86, &unk_27E1F9D10, &qword_23C874E00);
          v75 = 1;
          v13 = v223;
          v24 = v220;
        }

        else
        {
          v90 = v193;
          sub_23C870EB4();
          v218 = *(v88 + 8);
          v219 = v88 + 8;
          v218(v86, v227);
          v91 = *v221;
          (*v221)(v200, v90, v224);
          v92 = v194;
          sub_23C5855B0(v214 + *(v231 + 52), v194, &qword_27E1F9D08, &qword_23C87D090);
          if (v226(v92, 1, v80) == 1)
          {
            sub_23C585C34(v92, &qword_27E1F9D08, &qword_23C87D090);
            v66 = &qword_27E1F9D08;
            v13 = v223;
            v24 = v220;
LABEL_17:
            (*v217)(v200, v224);
            v75 = 1;
            goto LABEL_7;
          }

          v229 = v91;
          v93 = v191;
          sub_23C5855B0(v92 + *(v80 + 28), v191, &unk_27E1F9D10, &qword_23C874E00);
          v94 = v92;
          v95 = v93;
          sub_23C5A4578(v94, type metadata accessor for TranscriptProtoTimepoint);
          v96 = v225(v93, 1, v227);
          v24 = v220;
          if (v96 == 1)
          {
            sub_23C585C34(v93, &unk_27E1F9D10, &qword_23C874E00);
            v13 = v223;
            v66 = &qword_27E1F9D08;
            goto LABEL_17;
          }

          v97 = v187;
          sub_23C870EB4();
          v218(v95, v227);
          v98 = v186;
          v99 = v224;
          v229(v186, v97, v224);
          v75 = sub_23C870A94();
          v100 = *v217;
          (*v217)(v98, v99);
          v100(v200, v99);
          v13 = v223;
        }

        v66 = &qword_27E1F9D08;
      }

LABEL_7:
      sub_23C5A4578(v214, type metadata accessor for TranscriptProtoEvent);
      result = sub_23C5A4578(v212, type metadata accessor for TranscriptProtoEvent);
      ++v74;
      v28 += v232;
      v70 += v232;
      v65 = v208;
      if ((v228 ^ v75))
      {
        v76 = v74 - 1;
        break;
      }
    }

    v5 = v190;
    v101 = v196;
    v64 = v195;
    if (v228)
    {
      if (v76 < v195)
      {
        goto LABEL_146;
      }

      if (v195 < v76)
      {
        v102 = v76;
        v103 = v232 * (v76 - 1);
        v104 = v76 * v232;
        v213 = v76;
        v105 = v195;
        v106 = v195 * v232;
        do
        {
          if (v105 != --v102)
          {
            v107 = *v210;
            if (!*v210)
            {
LABEL_152:
              __break(1u);
              goto LABEL_153;
            }

            v28 = v107 + v106;
            sub_23C5A3818(v107 + v106, v199);
            if (v106 < v103 || v28 >= v107 + v104)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v106 != v103)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_23C5A3818(v199, v107 + v103);
            v101 = v196;
            v24 = v220;
          }

          ++v105;
          v103 -= v232;
          v104 -= v232;
          v106 += v232;
        }

        while (v105 < v102);
        v5 = v190;
        v66 = &qword_27E1F9D08;
        v64 = v195;
        v76 = v213;
      }
    }

LABEL_35:
    v108 = v210[1];
    if (v76 >= v108)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v76, v64))
    {
      goto LABEL_145;
    }

    if (v76 - v64 >= v101)
    {
LABEL_44:
      v28 = v76;
      if (v76 < v64)
      {
        goto LABEL_144;
      }

      goto LABEL_45;
    }

    if (__OFADD__(v64, v101))
    {
      goto LABEL_147;
    }

    if (v64 + v101 >= v108)
    {
      v28 = v210[1];
    }

    else
    {
      v28 = v64 + v101;
    }

    if (v28 < v64)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      result = sub_23C6473A0(v65);
      v65 = result;
LABEL_119:
      v235 = v65;
      v182 = *(v65 + 2);
      if (v182 >= 2)
      {
        while (*v210)
        {
          v183 = *&v65[16 * v182];
          v184 = *&v65[16 * v182 + 24];
          sub_23C5A14CC(*v210 + *(v209 + 72) * v183, *v210 + *(v209 + 72) * *&v65[16 * v182 + 16], *v210 + *(v209 + 72) * v184, v28);
          if (v5)
          {
          }

          if (v184 < v183)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_23C6473A0(v65);
          }

          if (v182 - 2 >= *(v65 + 2))
          {
            goto LABEL_143;
          }

          v185 = &v65[16 * v182];
          *v185 = v183;
          *(v185 + 1) = v184;
          v235 = v65;
          result = sub_23C647314(v182 - 1);
          v65 = v235;
          v182 = *(v235 + 2);
          if (v182 <= 1)
          {
          }
        }

LABEL_153:
        __break(1u);
        break;
      }
    }

    if (v76 == v28)
    {
      goto LABEL_44;
    }

    v190 = v5;
    v155 = *v210;
    v156 = *(v209 + 72);
    v157 = *v210 + v156 * (v76 - 1);
    v228 = -v156;
    v229 = v155;
    v158 = v64 - v76;
    v197 = v156;
    v5 = v155 + v76 * v156;
    v159 = v231;
    v65 = &qword_23C87D090;
    v201 = v28;
    while (2)
    {
      v213 = v76;
      v202 = v5;
      v203 = v158;
      v160 = v158;
      v204 = v157;
      v28 = v157;
      while (2)
      {
        v232 = v160;
        v161 = v233;
        sub_23C5A4514(v5, v233);
        sub_23C5A4514(v28, v234);
        sub_23C5855B0(v161 + *(v159 + 52), v13, v66, &qword_23C87D090);
        v162 = type metadata accessor for TranscriptProtoTimepoint(0);
        v163 = *(*(v162 - 8) + 48);
        if (v163(v13, 1, v162) == 1)
        {
          sub_23C585C34(v13, v66, &qword_23C87D090);
          v159 = v231;
          goto LABEL_106;
        }

        v226 = v163;
        sub_23C5855B0(&v13[*(v162 + 28)], v24, &unk_27E1F9D10, &qword_23C874E00);
        sub_23C5A4578(v13, type metadata accessor for TranscriptProtoTimepoint);
        v164 = sub_23C870EC4();
        v165 = v24;
        v166 = *(v164 - 8);
        v167 = *(v166 + 48);
        v227 = v164;
        v225 = v167;
        if ((v167)(v165, 1) == 1)
        {
          sub_23C585C34(v165, &unk_27E1F9D10, &qword_23C874E00);
          v13 = v223;
          v24 = v165;
          v159 = v231;
          v66 = &qword_27E1F9D08;
          v65 = &qword_23C87D090;
          goto LABEL_106;
        }

        v168 = v215;
        sub_23C870EB4();
        v218 = *(v166 + 8);
        v219 = v166 + 8;
        v218(v165, v227);
        v169 = *v221;
        (*v221)(v222, v168, v224);
        v170 = v216;
        v65 = &qword_23C87D090;
        sub_23C5855B0(v234 + *(v231 + 52), v216, &qword_27E1F9D08, &qword_23C87D090);
        if (v226(v170, 1, v162) == 1)
        {
          sub_23C585C34(v170, &qword_27E1F9D08, &qword_23C87D090);
          v24 = v220;
          v159 = v231;
          v66 = &qword_27E1F9D08;
LABEL_105:
          (*v217)(v222, v224);
          v13 = v223;
LABEL_106:
          sub_23C5A4578(v234, type metadata accessor for TranscriptProtoEvent);
          sub_23C5A4578(v233, type metadata accessor for TranscriptProtoEvent);
        }

        else
        {
          v171 = v169;
          v172 = v211;
          sub_23C5855B0(v170 + *(v162 + 28), v211, &unk_27E1F9D10, &qword_23C874E00);
          sub_23C5A4578(v170, type metadata accessor for TranscriptProtoTimepoint);
          if (v225(v172, 1, v227) == 1)
          {
            sub_23C585C34(v172, &unk_27E1F9D10, &qword_23C874E00);
            v24 = v220;
            v159 = v231;
            v66 = &qword_27E1F9D08;
            v65 = &qword_23C87D090;
            goto LABEL_105;
          }

          v176 = v206;
          sub_23C870EB4();
          v218(v172, v227);
          v177 = v205;
          v178 = v224;
          v171(v205, v176, v224);
          v179 = v222;
          v180 = sub_23C870A94();
          v181 = *v217;
          (*v217)(v177, v178);
          v181(v179, v178);
          sub_23C5A4578(v234, type metadata accessor for TranscriptProtoEvent);
          sub_23C5A4578(v233, type metadata accessor for TranscriptProtoEvent);
          v13 = v223;
          v24 = v220;
          v159 = v231;
          v66 = &qword_27E1F9D08;
          v65 = &qword_23C87D090;
          if ((v180 & 1) == 0)
          {
            break;
          }
        }

        v173 = v232;
        if (!v229)
        {
          goto LABEL_149;
        }

        v174 = v230;
        sub_23C5A3818(v5, v230);
        swift_arrayInitWithTakeFrontToBack();
        sub_23C5A3818(v174, v28);
        v28 += v228;
        v5 += v228;
        v175 = __CFADD__(v173, 1);
        v160 = v173 + 1;
        if (!v175)
        {
          continue;
        }

        break;
      }

      v76 = v213 + 1;
      v157 = v204 + v197;
      v158 = v203 - 1;
      v5 = v202 + v197;
      v28 = v201;
      if (v213 + 1 != v201)
      {
        continue;
      }

      break;
    }

    v5 = v190;
    v65 = v208;
    if (v201 < v195)
    {
      goto LABEL_144;
    }

LABEL_45:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v65 + 2) + 1, 1, v65);
      v65 = result;
    }

    v110 = *(v65 + 2);
    v109 = *(v65 + 3);
    v111 = v110 + 1;
    if (v110 >= v109 >> 1)
    {
      result = sub_23C584338((v109 > 1), v110 + 1, 1, v65);
      v65 = result;
    }

    *(v65 + 2) = v111;
    v112 = &v65[16 * v110];
    *(v112 + 4) = v195;
    *(v112 + 5) = v28;
    v201 = v28;
    v28 = *v192;
    if (*v192)
    {
      v113 = v5;
      if (!v110)
      {
LABEL_3:
        v63 = v210[1];
        v64 = v201;
        v5 = v113;
        v66 = &qword_27E1F9D08;
        if (v201 >= v63)
        {
          goto LABEL_117;
        }

        continue;
      }

      while (2)
      {
        v5 = v111 - 1;
        if (v111 >= 4)
        {
          v118 = &v65[16 * v111 + 32];
          v119 = *(v118 - 64);
          v120 = *(v118 - 56);
          v124 = __OFSUB__(v120, v119);
          v121 = v120 - v119;
          if (v124)
          {
            goto LABEL_131;
          }

          v123 = *(v118 - 48);
          v122 = *(v118 - 40);
          v124 = __OFSUB__(v122, v123);
          v116 = v122 - v123;
          v117 = v124;
          if (v124)
          {
            goto LABEL_132;
          }

          v125 = &v65[16 * v111];
          v127 = *v125;
          v126 = *(v125 + 1);
          v124 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v124)
          {
            goto LABEL_134;
          }

          v124 = __OFADD__(v116, v128);
          v129 = v116 + v128;
          if (v124)
          {
            goto LABEL_137;
          }

          if (v129 >= v121)
          {
            v147 = &v65[16 * v5 + 32];
            v149 = *v147;
            v148 = *(v147 + 1);
            v124 = __OFSUB__(v148, v149);
            v150 = v148 - v149;
            if (v124)
            {
              goto LABEL_141;
            }

            if (v116 < v150)
            {
              v5 = v111 - 2;
            }
          }

          else
          {
LABEL_64:
            if (v117)
            {
              goto LABEL_133;
            }

            v130 = &v65[16 * v111];
            v132 = *v130;
            v131 = *(v130 + 1);
            v133 = __OFSUB__(v131, v132);
            v134 = v131 - v132;
            v135 = v133;
            if (v133)
            {
              goto LABEL_136;
            }

            v136 = &v65[16 * v5 + 32];
            v138 = *v136;
            v137 = *(v136 + 1);
            v124 = __OFSUB__(v137, v138);
            v139 = v137 - v138;
            if (v124)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v134, v139))
            {
              goto LABEL_140;
            }

            if (v134 + v139 < v116)
            {
              goto LABEL_78;
            }

            if (v116 < v139)
            {
              v5 = v111 - 2;
            }
          }
        }

        else
        {
          if (v111 == 3)
          {
            v114 = *(v65 + 4);
            v115 = *(v65 + 5);
            v124 = __OFSUB__(v115, v114);
            v116 = v115 - v114;
            v117 = v124;
            goto LABEL_64;
          }

          v140 = &v65[16 * v111];
          v142 = *v140;
          v141 = *(v140 + 1);
          v124 = __OFSUB__(v141, v142);
          v134 = v141 - v142;
          v135 = v124;
LABEL_78:
          if (v135)
          {
            goto LABEL_135;
          }

          v143 = &v65[16 * v5];
          v145 = *(v143 + 4);
          v144 = *(v143 + 5);
          v124 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v124)
          {
            goto LABEL_138;
          }

          if (v146 < v134)
          {
            goto LABEL_3;
          }
        }

        v151 = v5 - 1;
        if (v5 - 1 >= v111)
        {
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
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v210)
        {
          __break(1u);
          goto LABEL_152;
        }

        v152 = *&v65[16 * v151 + 32];
        v153 = *&v65[16 * v5 + 40];
        sub_23C5A14CC(*v210 + *(v209 + 72) * v152, *v210 + *(v209 + 72) * *&v65[16 * v5 + 32], *v210 + *(v209 + 72) * v153, v28);
        if (v113)
        {
        }

        if (v153 < v152)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_23C6473A0(v65);
        }

        if (v151 >= *(v65 + 2))
        {
          goto LABEL_130;
        }

        v154 = &v65[16 * v151];
        *(v154 + 4) = v152;
        *(v154 + 5) = v153;
        v235 = v65;
        result = sub_23C647314(v5);
        v65 = v235;
        v111 = *(v235 + 2);
        if (v111 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_23C59F370(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v161 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v191 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v156 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v176 = &v156 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v156 - v17;
  v194 = sub_23C870AE4();
  v19 = *(v194 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v194);
  v23 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v190 = &v156 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v156 - v27;
  MEMORY[0x28223BE20](v26);
  v175 = &v156 - v29;
  v192 = sub_23C871414();
  v30 = *(v192 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x28223BE20](v192);
  v163 = &v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v180 = &v156 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v193 = &v156 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v189 = &v156 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v169 = &v156 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v174 = &v156 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v156 = &v156 - v45;
  result = MEMORY[0x28223BE20](v44);
  v159 = &v156 - v47;
  v173 = a3;
  if (a3[1] < 1)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_110:
    a4 = *v161;
    if (!*v161)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v195 = v51;
      v151 = *(v51 + 16);
      if (v151 >= 2)
      {
        while (*v173)
        {
          v152 = *(v51 + 16 * v151);
          v153 = v51;
          v154 = *(v51 + 16 * (v151 - 1) + 32);
          v51 = *(v51 + 16 * (v151 - 1) + 40);
          sub_23C5A2484(*v173 + v30[9] * v152, (*v173 + v30[9] * v154), (*v173 + v30[9] * v51), a4);
          if (v5)
          {
          }

          if (v51 < v152)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_23C6473A0(v153);
          }

          if (v151 - 2 >= *(v153 + 2))
          {
            goto LABEL_136;
          }

          v155 = &v153[16 * v151];
          *v155 = v152;
          *(v155 + 1) = v51;
          v195 = v153;
          result = sub_23C647314(v151 - 1);
          v51 = v195;
          v151 = *(v195 + 16);
          if (v151 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_23C6473A0(v51);
    v51 = result;
    goto LABEL_112;
  }

  v48 = a3[1];
  v166 = v28;
  v49 = 0;
  v186 = (v30 + 1);
  v187 = v30 + 2;
  v184 = (v19 + 32);
  v185 = (v19 + 48);
  v182 = (v30 + 4);
  v183 = (v19 + 8);
  v50 = v14;
  v51 = MEMORY[0x277D84F90];
  v160 = a4;
  v188 = v50;
  v171 = v18;
  v52 = v192;
  v170 = v30;
  while (1)
  {
    v172 = v51;
    if (v49 + 1 >= v48)
    {
      v70 = v49 + 1;
    }

    else
    {
      v177 = v48;
      v158 = v5;
      v53 = *v173;
      v165 = v53;
      v54 = v30[9];
      v55 = v30;
      v56 = v30[2];
      v181 = (v53 + v54 * (v49 + 1));
      (v56)(v159);
      v57 = v53 + v54 * v49;
      v58 = v156;
      v168 = v56;
      (v56)(v156, v57, v52);
      v59 = v159;
      LODWORD(v178) = _s27IntelligencePlatformLibrary0A13FlowTelemetryV26AIMLInstrumentationStreamsE1loiySbAC_ACtFZ_0();
      v60 = v55[1];
      v60(v58, v52);
      v167 = v60;
      result = (v60)(v59, v52);
      v157 = v49;
      v61 = v49 + 2;
      v179 = v54;
      v62 = v165 + v54 * (v49 + 2);
      v63 = v169;
      while (1)
      {
        v70 = v177;
        if (v177 == v61)
        {
          break;
        }

        v71 = v168;
        (v168)(v174, v62, v52);
        v71(v63, v181, v52);
        v72 = v194;
        v73 = v171;
        sub_23C871374();
        v74 = *v185;
        if ((*v185)(v73, 1, v72) == 1)
        {
          sub_23C870AB4();
          if (v74(v73, 1, v72) != 1)
          {
            sub_23C585C34(v171, &unk_27E2054F0, &unk_23C874DF0);
          }
        }

        else
        {
          (*v184)(v175, v73, v72);
        }

        sub_23C871374();
        v75 = v176;
        if (v74(v176, 1, v194) == 1)
        {
          v64 = v166;
          sub_23C870AB4();
          if (v74(v75, 1, v194) != 1)
          {
            sub_23C585C34(v75, &unk_27E2054F0, &unk_23C874DF0);
          }
        }

        else
        {
          v64 = v166;
          (*v184)(v166, v75, v194);
        }

        v65 = v175;
        v66 = sub_23C870A94();
        v67 = *v183;
        v68 = v194;
        (*v183)(v64, v194);
        v67(v65, v68);
        v63 = v169;
        v52 = v192;
        v69 = v167;
        v167(v169, v192);
        result = v69(v174, v52);
        ++v61;
        v62 += v179;
        v181 += v179;
        v51 = v172;
        if ((v178 ^ v66))
        {
          v70 = v61 - 1;
          break;
        }
      }

      v5 = v158;
      v30 = v170;
      a4 = v160;
      v49 = v157;
      if (v178)
      {
        if (v70 < v157)
        {
          goto LABEL_139;
        }

        if (v157 < v70)
        {
          v76 = v179 * (v70 - 1);
          v77 = v70 * v179;
          v177 = v70;
          v78 = v157;
          v79 = v157 * v179;
          do
          {
            if (v78 != --v70)
            {
              v81 = *v173;
              if (!*v173)
              {
                goto LABEL_145;
              }

              v82 = *v182;
              (*v182)(v163, v81 + v79, v192);
              if (v79 < v76 || v81 + v79 >= (v81 + v77))
              {
                v80 = v192;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v80 = v192;
                if (v79 != v76)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v82)(v81 + v76, v163, v80);
              v51 = v172;
              v52 = v80;
            }

            ++v78;
            v76 -= v179;
            v77 -= v179;
            v79 += v179;
          }

          while (v78 < v70);
          v5 = v158;
          v30 = v170;
          a4 = v160;
          v49 = v157;
          v70 = v177;
        }
      }
    }

    v83 = v173[1];
    if (v70 < v83)
    {
      if (__OFSUB__(v70, v49))
      {
        goto LABEL_138;
      }

      if (v70 - v49 < a4)
      {
        break;
      }
    }

LABEL_58:
    if (v70 < v49)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v51 + 16) + 1, 1, v51);
      v51 = result;
    }

    a4 = *(v51 + 16);
    v106 = *(v51 + 24);
    v107 = a4 + 1;
    if (a4 >= v106 >> 1)
    {
      result = sub_23C584338((v106 > 1), a4 + 1, 1, v51);
      v51 = result;
    }

    *(v51 + 16) = v107;
    v108 = v51 + 16 * a4;
    *(v108 + 32) = v49;
    *(v108 + 40) = v70;
    v109 = *v161;
    if (!*v161)
    {
      goto LABEL_147;
    }

    v164 = v70;
    if (a4)
    {
      v30 = v109;
      while (1)
      {
        v110 = v107 - 1;
        if (v107 >= 4)
        {
          break;
        }

        if (v107 == 3)
        {
          v111 = *(v51 + 32);
          v112 = *(v51 + 40);
          v121 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          v114 = v121;
LABEL_79:
          if (v114)
          {
            goto LABEL_126;
          }

          v127 = (v51 + 16 * v107);
          v129 = *v127;
          v128 = v127[1];
          v130 = __OFSUB__(v128, v129);
          v131 = v128 - v129;
          v132 = v130;
          if (v130)
          {
            goto LABEL_129;
          }

          v133 = (v51 + 32 + 16 * v110);
          v135 = *v133;
          v134 = v133[1];
          v121 = __OFSUB__(v134, v135);
          v136 = v134 - v135;
          if (v121)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v131, v136))
          {
            goto LABEL_133;
          }

          if (v131 + v136 >= v113)
          {
            if (v113 < v136)
            {
              v110 = v107 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v137 = (v51 + 16 * v107);
        v139 = *v137;
        v138 = v137[1];
        v121 = __OFSUB__(v138, v139);
        v131 = v138 - v139;
        v132 = v121;
LABEL_93:
        if (v132)
        {
          goto LABEL_128;
        }

        v140 = v51 + 16 * v110;
        v142 = *(v140 + 32);
        v141 = *(v140 + 40);
        v121 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v121)
        {
          goto LABEL_131;
        }

        if (v143 < v131)
        {
          goto LABEL_3;
        }

LABEL_100:
        a4 = v110 - 1;
        if (v110 - 1 >= v107)
        {
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
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v173)
        {
          goto LABEL_144;
        }

        v148 = *(v51 + 32 + 16 * a4);
        v149 = *(v51 + 32 + 16 * v110 + 8);
        sub_23C5A2484(*v173 + v170[9] * v148, (*v173 + v170[9] * *(v51 + 32 + 16 * v110)), (*v173 + v170[9] * v149), v30);
        if (v5)
        {
        }

        if (v149 < v148)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_23C6473A0(v51);
        }

        if (a4 >= *(v51 + 16))
        {
          goto LABEL_123;
        }

        v150 = v51 + 16 * a4;
        *(v150 + 32) = v148;
        *(v150 + 40) = v149;
        v195 = v51;
        result = sub_23C647314(v110);
        v51 = v195;
        v107 = *(v195 + 16);
        if (v107 <= 1)
        {
          goto LABEL_3;
        }
      }

      v115 = v51 + 32 + 16 * v107;
      v116 = *(v115 - 64);
      v117 = *(v115 - 56);
      v121 = __OFSUB__(v117, v116);
      v118 = v117 - v116;
      if (v121)
      {
        goto LABEL_124;
      }

      v120 = *(v115 - 48);
      v119 = *(v115 - 40);
      v121 = __OFSUB__(v119, v120);
      v113 = v119 - v120;
      v114 = v121;
      if (v121)
      {
        goto LABEL_125;
      }

      v122 = (v51 + 16 * v107);
      v124 = *v122;
      v123 = v122[1];
      v121 = __OFSUB__(v123, v124);
      v125 = v123 - v124;
      if (v121)
      {
        goto LABEL_127;
      }

      v121 = __OFADD__(v113, v125);
      v126 = v113 + v125;
      if (v121)
      {
        goto LABEL_130;
      }

      if (v126 >= v118)
      {
        v144 = (v51 + 32 + 16 * v110);
        v146 = *v144;
        v145 = v144[1];
        v121 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v121)
        {
          goto LABEL_134;
        }

        if (v113 < v147)
        {
          v110 = v107 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v48 = v173[1];
    v49 = v164;
    a4 = v160;
    v30 = v170;
    if (v164 >= v48)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v49, a4))
  {
    goto LABEL_140;
  }

  if ((v49 + a4) < v83)
  {
    v83 = v49 + a4;
  }

  if (v83 < v49)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v164 = v83;
  if (v70 == v83)
  {
    goto LABEL_58;
  }

  v158 = v5;
  v84 = *v173;
  v85 = v30[9];
  v181 = v30[2];
  v86 = (v84 + v85 * (v70 - 1));
  v178 = -v85;
  v157 = v49;
  a4 = v49 - v70;
  v179 = v84;
  v162 = v85;
  v87 = v84 + v70 * v85;
LABEL_43:
  v177 = v70;
  v165 = v87;
  v88 = v87;
  v167 = a4;
  v168 = v86;
  v89 = v86;
  while (1)
  {
    v90 = v23;
    v91 = v181;
    (v181)(v189, v88, v52);
    v91(v193, v89, v52);
    v92 = v194;
    v93 = v188;
    sub_23C871374();
    v94 = *v185;
    if ((*v185)(v93, 1, v92) == 1)
    {
      sub_23C870AB4();
      if (v94(v93, 1, v92) != 1)
      {
        sub_23C585C34(v188, &unk_27E2054F0, &unk_23C874DF0);
      }
    }

    else
    {
      (*v184)(v190, v93, v92);
    }

    sub_23C871374();
    v95 = v191;
    v96 = v90;
    if (v94(v191, 1, v194) == 1)
    {
      sub_23C870AB4();
      if (v94(v95, 1, v194) != 1)
      {
        sub_23C585C34(v95, &unk_27E2054F0, &unk_23C874DF0);
      }
    }

    else
    {
      (*v184)(v90, v95, v194);
    }

    v97 = v190;
    v98 = sub_23C870A94();
    v99 = *v183;
    v100 = v96;
    v101 = v96;
    v102 = v194;
    (*v183)(v101, v194);
    v99(v97, v102);
    v103 = *v186;
    v30 = v192;
    (*v186)(v193, v192);
    result = (v103)(v189, v30);
    if ((v98 & 1) == 0)
    {
      v52 = v192;
      v23 = v100;
LABEL_42:
      v70 = v177 + 1;
      v86 = &v168[v162];
      a4 = v167 - 1;
      v87 = v165 + v162;
      if (v177 + 1 == v164)
      {
        v5 = v158;
        v51 = v172;
        v49 = v157;
        v70 = v164;
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (!v179)
    {
      break;
    }

    v104 = *v182;
    v30 = v180;
    v52 = v192;
    (*v182)(v180, v88, v192);
    swift_arrayInitWithTakeFrontToBack();
    v104(v89, v30, v52);
    v89 += v178;
    v88 += v178;
    v105 = __CFADD__(a4++, 1);
    v23 = v100;
    if (v105)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_23C5A03C4(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v103 = result;
  v6 = *(a3 + 1);
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_98:
    v7 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_23C6473A0(v9);
      v9 = result;
    }

    v96 = *(v9 + 2);
    if (v96 >= 2)
    {
      while (*a3)
      {
        v97 = *&v9[16 * v96];
        v98 = *&v9[16 * v96 + 24];
        sub_23C5A2F5C((*a3 + 8 * v97), (*a3 + 8 * *&v9[16 * v96 + 16]), (*a3 + 8 * v98), v7);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_23C6473A0(v9);
        }

        if (v96 - 2 >= *(v9 + 2))
        {
          goto LABEL_124;
        }

        v99 = &v9[16 * v96];
        *v99 = v97;
        *(v99 + 1) = v98;
        result = sub_23C647314(v96 - 1);
        v96 = *(v9 + 2);
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v7 = a3;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8 + 1;
  v110 = v9;
  v104 = v8;
  if (v8 + 1 < v6)
  {
    v101 = v5;
    v11 = *v7;
    v5 = (v8 + 1);
    v12 = *(*v7 + 8 * v10);
    v13 = *(*v7 + 8 * v8);
    v14 = *(v12 + 16);
    v15 = *(v13 + 16);
    if (v14 == v15)
    {
      sub_23C870D74();
      v16 = *(v12 + 24);
      v17 = *(v13 + 24);

      v108 = sub_23C870D14();
    }

    else
    {
      v108 = v14 < v15;
    }

    v18 = v11 + 8 * v8 + 16;
    v105 = 8 * v8;
    v19 = 8 * v8 + 8;
    v9 = v110;
    do
    {
      v7 = v5;
      v21 = v19;
      if (++v5 >= v6)
      {
        break;
      }

      v22 = *(v18 - 8);
      v23 = *v18;
      v24 = *(*v18 + 16);
      v25 = *(v22 + 16);
      if (v24 == v25)
      {
        sub_23C870D74();
        v26 = *(v23 + 24);
        v27 = *(v22 + 24);

        v20 = sub_23C870D14();
      }

      else
      {
        v20 = v24 < v25;
      }

      v9 = v110;
      v18 += 8;
      v19 = v21 + 8;
    }

    while ((v108 & 1) == (v20 & 1));
    if (v108)
    {
      v28 = v104;
      if (v5 < v104)
      {
        goto LABEL_127;
      }

      v10 = v5;
      if (v104 >= v5)
      {
        v7 = a3;
        v5 = v101;
        v8 = v104;
        goto LABEL_27;
      }

      v5 = v101;
      v29 = v105;
      do
      {
        if (v28 != v7)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_133;
          }

          v30 = *(v32 + v29);
          *(v32 + v29) = *(v32 + v21);
          *(v32 + v21) = v30;
        }

        ++v28;
        v21 -= 8;
        v29 += 8;
      }

      while (v28 < v7--);
      v7 = a3;
    }

    else
    {
      v7 = a3;
      v10 = v5;
      v5 = v101;
    }

    v8 = v104;
  }

LABEL_27:
  v33 = *(v7 + 1);
  if (v10 >= v33)
  {
    goto LABEL_47;
  }

  if (__OFSUB__(v10, v8))
  {
    goto LABEL_126;
  }

  if (v10 - v8 >= a4)
  {
    goto LABEL_47;
  }

  v34 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_128;
  }

  if (v34 >= v33)
  {
    v34 = *(v7 + 1);
  }

  if (v34 < v8)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v10 == v34)
  {
    goto LABEL_47;
  }

  v102 = v5;
  v35 = *v7;
  v36 = *v7 + 8 * v10 - 8;
  v37 = v8 - v10;
  v106 = v34;
LABEL_37:
  v109 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = *(v38 + 16);
    v43 = *(*v40 + 16);
    if (v42 == v43)
    {
      sub_23C870D74();
      v44 = *(v38 + 24);
      v45 = *(v41 + 24);

      v46 = sub_23C870D14();

      if ((v46 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v42 >= v43)
    {
      goto LABEL_36;
    }

    if (!v35)
    {
      break;
    }

    v47 = *v40;
    v38 = v40[1];
    *v40 = v38;
    v40[1] = v47;
    --v40;
    if (__CFADD__(v39++, 1))
    {
LABEL_36:
      v10 = v109 + 1;
      v36 += 8;
      --v37;
      if (v109 + 1 != v106)
      {
        goto LABEL_37;
      }

      v10 = v106;
      v5 = v102;
      v7 = a3;
      v9 = v110;
      v8 = v104;
LABEL_47:
      if (v10 < v8)
      {
        goto LABEL_125;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23C584338(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v50 = *(v9 + 2);
      v49 = *(v9 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        result = sub_23C584338((v49 > 1), v50 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v51;
      v52 = &v9[16 * v50];
      *(v52 + 4) = v104;
      *(v52 + 5) = v10;
      v8 = v10;
      v53 = *v103;
      if (!*v103)
      {
        goto LABEL_135;
      }

      if (v50)
      {
        while (1)
        {
          v54 = v51 - 1;
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v55 = *(v9 + 4);
            v56 = *(v9 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_67:
            if (v58)
            {
              goto LABEL_114;
            }

            v71 = &v9[16 * v51];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_117;
            }

            v77 = &v9[16 * v54 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_121;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v54 = v51 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v81 = &v9[16 * v51];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_81:
          if (v76)
          {
            goto LABEL_116;
          }

          v84 = &v9[16 * v54];
          v86 = *(v84 + 4);
          v85 = *(v84 + 5);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_119;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_88:
          v92 = v54 - 1;
          if (v54 - 1 >= v51)
          {
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
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
            goto LABEL_129;
          }

          if (!*v7)
          {
            goto LABEL_132;
          }

          v93 = *&v9[16 * v92 + 32];
          v94 = *&v9[16 * v54 + 40];
          sub_23C5A2F5C((*v7 + 8 * v93), (*v7 + 8 * *&v9[16 * v54 + 32]), (*v7 + 8 * v94), v53);
          if (v5)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_110;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23C6473A0(v9);
          }

          if (v92 >= *(v9 + 2))
          {
            goto LABEL_111;
          }

          v95 = &v9[16 * v92];
          *(v95 + 4) = v93;
          *(v95 + 5) = v94;
          result = sub_23C647314(v54);
          v51 = *(v9 + 2);
          if (v51 <= 1)
          {
            goto LABEL_3;
          }
        }

        v59 = &v9[16 * v51 + 32];
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_112;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_113;
        }

        v66 = &v9[16 * v51];
        v68 = *v66;
        v67 = *(v66 + 1);
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_115;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_118;
        }

        if (v70 >= v62)
        {
          v88 = &v9[16 * v54 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_122;
          }

          if (v57 < v91)
          {
            v54 = v51 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_3:
      v6 = *(v7 + 1);
      if (v8 >= v6)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
    }
  }

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
  return result;
}

uint64_t sub_23C5A0ABC(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_23C871604();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v127 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v122 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v144 = &v122 - v17;
  result = MEMORY[0x28223BE20](v16);
  v143 = &v122 - v19;
  v135 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a3 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_23C6473A0(a3);
    }

    v145 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v135)
      {
        v118 = *(result + 16 * a3);
        v119 = result;
        v120 = *(result + 16 * (a3 - 1) + 40);
        sub_23C5A324C(&(*v135)[v10[9] * v118], &(*v135)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v135)[v10[9] * v120], v5);
        if (v6)
        {
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_23C6473A0(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        sub_23C647314(a3 - 1);
        result = v145;
        a3 = *(v145 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v141 = (v10 + 1);
  v142 = v10 + 2;
  v140 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v134 = v10;
  v124 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v128 = v22;
    if (v21 + 1 >= v20)
    {
      v39 = v21 + 1;
    }

    else
    {
      v136 = v20;
      v129 = v6;
      v25 = v10[9];
      v5 = &(*v135)[v25 * v24];
      v132 = *v135;
      v26 = v132;
      v27 = v10[2];
      v28 = v143;
      v27(v143, &v132[v25 * v24], v9);
      v29 = &v26[v25 * v23];
      v30 = v144;
      v137 = v27;
      v27(v144, v29, v9);
      sub_23C8715E4();
      v32 = v31;
      sub_23C8715E4();
      v34 = v33;
      v35 = v23;
      v36 = v10[1];
      a3 = v141;
      v36(v30, v9);
      v133 = v36;
      result = (v36)(v28, v9);
      v123 = v35;
      v37 = v35 + 2;
      v139 = v25;
      v38 = &v132[v25 * (v35 + 2)];
      while (1)
      {
        v39 = v136;
        if (v136 == v37)
        {
          break;
        }

        a3 = v143;
        v40 = v137;
        v137(v143, v38, v9);
        v41 = v144;
        v40(v144, v5, v9);
        sub_23C8715E4();
        v43 = v42;
        sub_23C8715E4();
        v45 = v44;
        v46 = v133;
        (v133)(v41, v9);
        result = v46(a3, v9);
        v10 = v134;
        ++v37;
        v38 += v139;
        v5 += v139;
        if (v32 < v34 == v43 >= v45)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v47 = v128;
      v6 = v129;
      a4 = v124;
      v23 = v123;
      if (v32 < v34)
      {
        if (v39 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v39)
        {
          v48 = v39;
          a3 = v139 * (v39 - 1);
          v5 = v39 * v139;
          v136 = v39;
          v49 = v123 * v139;
          do
          {
            if (v23 != --v48)
            {
              v129 = v6;
              v50 = *v135;
              if (!*v135)
              {
                goto LABEL_131;
              }

              v51 = *v140;
              (*v140)(v127, &v50[v49], v9, v47);
              if (v49 < a3 || &v50[v49] >= &v50[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v51)(&v50[a3], v127, v9);
              v47 = v128;
              v6 = v129;
            }

            ++v23;
            a3 -= v139;
            v5 -= v139;
            v49 += v139;
          }

          while (v23 < v48);
          v10 = v134;
          a4 = v124;
          v23 = v123;
          v39 = v136;
        }
      }
    }

    v52 = v135[1];
    if (v39 < v52)
    {
      if (__OFSUB__(v39, v23))
      {
        goto LABEL_124;
      }

      if (v39 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if (v23 + a4 >= v52)
        {
          v5 = v135[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v39 != v5)
        {
          break;
        }
      }
    }

    v5 = v39;
    if (v39 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v128;
    }

    else
    {
      result = sub_23C584338(0, *(v128 + 2) + 1, 1, v128);
      v22 = result;
    }

    a3 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a3 + 1;
    if (a3 >= v53 >> 1)
    {
      result = sub_23C584338((v53 > 1), a3 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a3];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v130 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v54)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_127;
        }

        if (!*v135)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a3 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_23C5A324C(&(*v135)[v10[9] * v95], &(*v135)[v10[9] * *&v22[16 * v5 + 32]], &(*v135)[v10[9] * v96], v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_23C6473A0(v94);
        }

        if (a3 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a3];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v145 = v94;
        result = sub_23C647314(v5);
        v22 = v145;
        v54 = *(v145 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v135[1];
    v21 = v130;
    a4 = v124;
    if (v130 >= v20)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v98 = *v135;
  v99 = v10[9];
  v139 = v10[2];
  v100 = &v98[v99 * (v39 - 1)];
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = (v101 - v39);
  v137 = v98;
  v126 = v99;
  v104 = &v98[v39 * v99];
  v130 = v5;
LABEL_85:
  v136 = v39;
  v131 = v104;
  v132 = v103;
  v105 = v104;
  v133 = v100;
  while (1)
  {
    v106 = v143;
    v107 = v139;
    (v139)(v143, v105, v9);
    v108 = v144;
    v107(v144, v100, v9);
    sub_23C8715E4();
    v110 = v109;
    sub_23C8715E4();
    v112 = v111;
    v113 = *v141;
    (*v141)(v108, v9);
    v114 = v106;
    a3 = v9;
    result = v113(v114, v9);
    if (v110 >= v112)
    {
LABEL_84:
      v39 = v136 + 1;
      v100 = &v133[v126];
      v103 = v132 - 1;
      v5 = v130;
      v104 = &v131[v126];
      if (v136 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v129;
      v10 = v134;
      v23 = v123;
      if (v130 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v115 = *v140;
    v116 = v138;
    (*v140)(v138, v105, v9);
    swift_arrayInitWithTakeFrontToBack();
    v115(v100, v116, v9);
    v100 += v102;
    v105 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_23C5A14CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v137 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v118 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = (&v110 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v120 = &v110 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v110 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v115 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v122 = (&v110 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v116 = &v110 - v24;
  MEMORY[0x28223BE20](v23);
  v125 = &v110 - v25;
  v127 = sub_23C870AE4();
  v26 = *(v127 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v127);
  v112 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v111 = &v110 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v117 = &v110 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v121 = (&v110 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v110 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v113 = &v110 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v119 = &v110 - v41;
  MEMORY[0x28223BE20](v40);
  v124 = &v110 - v42;
  v43 = type metadata accessor for TranscriptProtoEvent(0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v131 = &v110 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v130 = (&v110 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v136 = &v110 - v50;
  result = MEMORY[0x28223BE20](v49);
  v135 = &v110 - v52;
  v54 = *(v53 + 72);
  if (!v54)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  v55 = a2 - v137;
  if (a2 - v137 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_84;
  }

  v56 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_85;
  }

  v140 = v137;
  v139 = a4;
  v134 = v43;
  if (v55 / v54 < v56 / v54)
  {
    v57 = v55 / v54 * v54;
    if (a4 < v137 || v137 + v57 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v137)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v131 = a4 + v57;
    v138 = a4 + v57;
    if (v57 < 1 || a2 >= a3)
    {
      goto LABEL_82;
    }

    v129 = a3;
    v130 = (v26 + 32);
    v121 = (v26 + 8);
    v123 = v16;
    v128 = v54;
    while (1)
    {
      v60 = v135;
      sub_23C5A4514(a2, v135);
      sub_23C5A4514(a4, v136);
      sub_23C5855B0(v60 + *(v43 + 52), v16, &qword_27E1F9D08, &qword_23C87D090);
      v61 = type metadata accessor for TranscriptProtoTimepoint(0);
      v62 = *(*(v61 - 8) + 48);
      if (v62(v16, 1, v61) == 1)
      {
        break;
      }

      v132 = a4;
      v133 = a2;
      v65 = v125;
      sub_23C5855B0(&v16[*(v61 + 28)], v125, &unk_27E1F9D10, &qword_23C874E00);
      sub_23C5A4578(v16, type metadata accessor for TranscriptProtoTimepoint);
      v66 = sub_23C870EC4();
      v67 = *(v66 - 8);
      v68 = *(v67 + 48);
      if (v68(v65, 1, v66) == 1)
      {
        sub_23C585C34(v65, &unk_27E1F9D10, &qword_23C874E00);
        a4 = v132;
        a2 = v133;
        v43 = v134;
        v64 = v128;
        v63 = v129;
        goto LABEL_30;
      }

      v69 = v119;
      sub_23C870EB4();
      v126 = *(v67 + 8);
      v126(v65, v66);
      v122 = *v130;
      v122(v124, v69, v127);
      v70 = v120;
      sub_23C5855B0(v136 + *(v134 + 52), v120, &qword_27E1F9D08, &qword_23C87D090);
      if (v62(v70, 1, v61) == 1)
      {
        sub_23C585C34(v70, &qword_27E1F9D08, &qword_23C87D090);
        a4 = v132;
        v43 = v134;
        v64 = v128;
        v63 = v129;
        goto LABEL_29;
      }

      v71 = v116;
      sub_23C5855B0(&v70[*(v61 + 28)], v116, &unk_27E1F9D10, &qword_23C874E00);
      sub_23C5A4578(v70, type metadata accessor for TranscriptProtoTimepoint);
      v72 = v68(v71, 1, v66);
      v64 = v128;
      if (v72 == 1)
      {
        sub_23C585C34(v71, &unk_27E1F9D10, &qword_23C874E00);
        a4 = v132;
        v43 = v134;
        v63 = v129;
LABEL_29:
        (*v121)(v124, v127);
        a2 = v133;
LABEL_30:
        v16 = v123;
LABEL_31:
        sub_23C5A4578(v136, type metadata accessor for TranscriptProtoEvent);
        sub_23C5A4578(v135, type metadata accessor for TranscriptProtoEvent);
        goto LABEL_32;
      }

      v73 = v114;
      sub_23C870EB4();
      v126(v71, v66);
      v74 = v113;
      v75 = v127;
      v122(v113, v73, v127);
      v76 = v124;
      v77 = sub_23C870A94();
      v78 = *v121;
      (*v121)(v74, v75);
      v78(v76, v75);
      sub_23C5A4578(v136, type metadata accessor for TranscriptProtoEvent);
      sub_23C5A4578(v135, type metadata accessor for TranscriptProtoEvent);
      a4 = v132;
      a2 = v133;
      v43 = v134;
      v63 = v129;
      v16 = v123;
      if ((v77 & 1) == 0)
      {
        v79 = v132 + v64;
        if (v137 < v132 || v137 >= v79)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v137 != v132)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v139 = v79;
        a4 += v64;
        goto LABEL_38;
      }

LABEL_32:
      if (v137 < a2 || v137 >= a2 + v64)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 += v64;
      }

      else
      {
        if (v137 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v64;
      }

LABEL_38:
      v137 += v64;
      v140 = v137;
      if (a4 >= v131 || a2 >= v63)
      {
        goto LABEL_82;
      }
    }

    sub_23C585C34(v16, &qword_27E1F9D08, &qword_23C87D090);
    v43 = v134;
    v64 = v128;
    v63 = v129;
    goto LABEL_31;
  }

  v58 = v56 / v54 * v54;
  if (a4 < a2 || a2 + v58 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v80 = a4 + v58;
  if (v58 < 1)
  {
    goto LABEL_78;
  }

  v81 = -v54;
  v119 = (v26 + 8);
  v120 = (v26 + 32);
  v82 = a4 + v58;
  v132 = a4;
  v125 = v81;
  do
  {
    v113 = v80;
    v83 = a2;
    v84 = a2 + v81;
    v85 = v126;
    v86 = v80;
    v133 = v84;
    v128 = v83;
    while (1)
    {
      if (v83 <= v137)
      {
        v140 = v83;
        v80 = v113;
        goto LABEL_81;
      }

      v129 = a3;
      v135 = v82;
      v136 = v82 + v81;
      v87 = v130;
      sub_23C5A4514(v82 + v81, v130);
      sub_23C5A4514(v84, v131);
      sub_23C5855B0(v87 + *(v43 + 52), v85, &qword_27E1F9D08, &qword_23C87D090);
      v88 = type metadata accessor for TranscriptProtoTimepoint(0);
      v89 = *(*(v88 - 8) + 48);
      v90 = v89(v85, 1, v88);
      v124 = v86;
      if (v90 == 1)
      {
        sub_23C585C34(v85, &qword_27E1F9D08, &qword_23C87D090);
        v91 = 1;
        v81 = v125;
LABEL_59:
        v82 = v135;
        v97 = v129;
        goto LABEL_67;
      }

      v92 = v122;
      sub_23C5855B0(v85 + *(v88 + 28), v122, &unk_27E1F9D10, &qword_23C874E00);
      v93 = v85;
      v94 = v92;
      sub_23C5A4578(v93, type metadata accessor for TranscriptProtoTimepoint);
      v95 = sub_23C870EC4();
      v96 = *(v95 - 8);
      v123 = *(v96 + 48);
      if ((v123)(v94, 1, v95) == 1)
      {
        sub_23C585C34(v94, &unk_27E1F9D10, &qword_23C874E00);
        v91 = 1;
        v43 = v134;
        v81 = v125;
        goto LABEL_59;
      }

      v98 = v117;
      sub_23C870EB4();
      v99 = *(v96 + 8);
      v116 = v96 + 8;
      v99(v94, v95);
      v114 = *v120;
      (v114)(v121, v98, v127);
      v100 = v118;
      sub_23C5855B0(v131 + *(v134 + 52), v118, &qword_27E1F9D08, &qword_23C87D090);
      if (v89(v100, 1, v88) == 1)
      {
        sub_23C585C34(v100, &qword_27E1F9D08, &qword_23C87D090);
        v43 = v134;
        v81 = v125;
        v97 = v129;
      }

      else
      {
        v101 = v115;
        sub_23C5855B0(v100 + *(v88 + 28), v115, &unk_27E1F9D10, &qword_23C874E00);
        sub_23C5A4578(v100, type metadata accessor for TranscriptProtoTimepoint);
        v102 = v95;
        v103 = (v123)(v101, 1, v95);
        v97 = v129;
        if (v103 != 1)
        {
          v104 = v112;
          sub_23C870EB4();
          v99(v101, v102);
          v105 = v111;
          v106 = v104;
          v107 = v127;
          (v114)(v111, v106, v127);
          v108 = v121;
          v91 = sub_23C870A94();
          v109 = *v119;
          (*v119)(v105, v107);
          v109(v108, v107);
          v43 = v134;
          v81 = v125;
          goto LABEL_66;
        }

        sub_23C585C34(v101, &unk_27E1F9D10, &qword_23C874E00);
        v43 = v134;
        v81 = v125;
      }

      (*v119)(v121, v127);
      v91 = 1;
LABEL_66:
      v82 = v135;
LABEL_67:
      a3 = v97 + v81;
      sub_23C5A4578(v131, type metadata accessor for TranscriptProtoEvent);
      sub_23C5A4578(v130, type metadata accessor for TranscriptProtoEvent);
      if (v91)
      {
        break;
      }

      v86 = v136;
      v84 = v133;
      if (v97 < v82 || a3 >= v82)
      {
        swift_arrayInitWithTakeFrontToBack();
        v85 = v126;
      }

      else
      {
        v85 = v126;
        if (v97 != v82)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v82 = v86;
      v83 = v128;
      if (v136 <= v132)
      {
        v80 = v86;
        v140 = v128;
        goto LABEL_81;
      }
    }

    a2 = v133;
    if (v97 < v128 || a3 >= v128)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v97 != v128)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v80 = v124;
  }

  while (v82 > v132);
LABEL_78:
  v140 = a2;
LABEL_81:
  v138 = v80;
LABEL_82:
  sub_23C6473B4(&v140, &v139, &v138);
  return 1;
}

uint64_t sub_23C5A2484(unint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v96 = a4;
  v98 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v89 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v95 = &v77 - v14;
  MEMORY[0x28223BE20](v13);
  v90 = &v77 - v15;
  v16 = sub_23C870AE4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v85 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v88 = (&v77 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v86 = &v77 - v24;
  MEMORY[0x28223BE20](v23);
  v94 = &v77 - v25;
  v26 = sub_23C871414();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v92 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v87 = (&v77 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v97 = &v77 - v34;
  result = MEMORY[0x28223BE20](v33);
  v93 = &v77 - v36;
  v91 = *(v37 + 72);
  if (!v91)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (&a2[-a1] == 0x8000000000000000 && v91 == -1)
  {
    goto LABEL_79;
  }

  v38 = v98 - a2;
  if (v98 - a2 != 0x8000000000000000 || v91 != -1)
  {
    v39 = &a2[-a1] / v91;
    v101 = a1;
    v40 = v96;
    v100 = v96;
    if (v39 < v38 / v91)
    {
      v41 = v39 * v91;
      if (v96 < a1 || a1 + v41 <= v96)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v96 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v40 = v96;
LABEL_17:
      v92 = (v40 + v41);
      v99 = v40 + v41;
      if (v41 >= 1 && a2 < v98)
      {
        v44 = *(v27 + 16);
        v45 = (v17 + 48);
        v87 = (v17 + 32);
        v88 = v44;
        v89 = (v27 + 16);
        v84 = (v27 + 8);
        v85 = (v17 + 8);
        do
        {
          v46 = a2;
          v47 = v40;
          v48 = v88;
          v88(v93, a2, v26);
          v96 = v47;
          v48(v97, v47, v26);
          v49 = v90;
          sub_23C871374();
          v50 = *v45;
          if ((*v45)(v49, 1, v16) == 1)
          {
            sub_23C870AB4();
            if (v50(v49, 1, v16) != 1)
            {
              sub_23C585C34(v90, &unk_27E2054F0, &unk_23C874DF0);
            }
          }

          else
          {
            (*v87)(v94, v49, v16);
          }

          sub_23C871374();
          v51 = v95;
          if (v50(v95, 1, v16) == 1)
          {
            v52 = v86;
            sub_23C870AB4();
            if (v50(v51, 1, v16) != 1)
            {
              sub_23C585C34(v51, &unk_27E2054F0, &unk_23C874DF0);
            }
          }

          else
          {
            v52 = v86;
            (*v87)(v86, v51, v16);
          }

          v53 = v94;
          v54 = sub_23C870A94();
          v55 = v52;
          v56 = *v85;
          (*v85)(v55, v16);
          v56(v53, v16);
          v57 = *v84;
          (*v84)(v97, v26);
          v57(v93, v26);
          if (v54)
          {
            v58 = v91;
            a2 = (v46 + v91);
            if (a1 < v46 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v96;
          }

          else
          {
            v58 = v91;
            v59 = v96 + v91;
            a2 = v46;
            if (a1 < v96 || a1 >= v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v96)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v100 = v59;
            v40 = v59;
          }

          a1 += v58;
          v101 = a1;
        }

        while (v40 < v92 && a2 < v98);
      }

LABEL_77:
      sub_23C6473CC(&v101, &v100, &v99);
      return 1;
    }

    v42 = v38 / v91 * v91;
    if (v96 < a2 || &a2[v42] <= v96)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v96 == a2)
      {
LABEL_48:
        v94 = a2;
        v60 = v40 + v42;
        if (v42 >= 1)
        {
          v93 = v12;
          v61 = -v91;
          v83 = (v17 + 48);
          v84 = (v27 + 16);
          v81 = (v17 + 8);
          v82 = (v17 + 32);
          v80 = (v27 + 8);
          v62 = v60;
          v86 = v26;
          v90 = a1;
          v97 = -v91;
          do
          {
            v78 = v60;
            v63 = v94;
            v94 += v61;
            v91 = v63;
            while (1)
            {
              v64 = v98;
              if (v63 <= a1)
              {
                v101 = v63;
                v99 = v78;
                goto LABEL_77;
              }

              v79 = v60;
              v65 = (v62 + v61);
              v66 = *v84;
              (*v84)(v87, v65, v26);
              (v66)(v92, v94, v26);
              v67 = v93;
              sub_23C871374();
              v68 = *v83;
              if ((*v83)(v67, 1, v16) == 1)
              {
                sub_23C870AB4();
                if (v68(v67, 1, v16) != 1)
                {
                  sub_23C585C34(v93, &unk_27E2054F0, &unk_23C874DF0);
                }
              }

              else
              {
                (*v82)(v88, v67, v16);
              }

              sub_23C871374();
              v69 = v89;
              v70 = v68(v89, 1, v16);
              v71 = v85;
              v95 = v65;
              if (v70 == 1)
              {
                sub_23C870AB4();
                if (v68(v69, 1, v16) != 1)
                {
                  sub_23C585C34(v69, &unk_27E2054F0, &unk_23C874DF0);
                }
              }

              else
              {
                (*v82)(v85, v69, v16);
              }

              v98 = (v64 + v97);
              v72 = v88;
              v73 = sub_23C870A94();
              v74 = *v81;
              (*v81)(v71, v16);
              v74(v72, v16);
              v75 = *v80;
              v26 = v86;
              (*v80)(v92, v86);
              v75(v87, v26);
              if (v73)
              {
                break;
              }

              v76 = v95;
              v60 = v95;
              v63 = v91;
              if (v64 < v62 || v98 >= v62)
              {
                swift_arrayInitWithTakeFrontToBack();
                v61 = v97;
              }

              else
              {
                v61 = v97;
                if (v64 != v62)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v62 = v60;
              a1 = v90;
              if (v76 <= v96)
              {
                v94 = v63;
                goto LABEL_76;
              }
            }

            if (v64 < v91 || v98 >= v91)
            {
              swift_arrayInitWithTakeFrontToBack();
              v60 = v79;
              v61 = v97;
            }

            else
            {
              v60 = v79;
              v61 = v97;
              if (v64 != v91)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            a1 = v90;
          }

          while (v62 > v96);
        }

LABEL_76:
        v101 = v94;
        v99 = v60;
        goto LABEL_77;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v40 = v96;
    goto LABEL_48;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_23C5A2F5C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v25 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v25 > v6)
    {
      v41 = v4;
LABEL_29:
      v40 = v25;
      v26 = v25 - 8;
      v27 = v5;
      v28 = v14;
      do
      {
        v30 = *(v28 - 1);
        v28 -= 8;
        v29 = v30;
        v31 = v26;
        v32 = *v26;
        v33 = *(v30 + 16);
        v34 = *(*v26 + 16);
        if (v33 == v34)
        {
          sub_23C870D74();
          v35 = *(v29 + 24);
          v36 = *(v32 + 24);

          v37 = sub_23C870D14();

          v5 = v27 - 8;
          if (v37)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v5 = v27 - 8;
          if (v33 < v34)
          {
LABEL_37:
            v38 = v31;
            if (v27 != v40)
            {
              *v5 = *v31;
            }

            v4 = v41;
            if (v14 <= v41 || (v25 = v38, v38 <= v6))
            {
              v25 = v38;
              goto LABEL_43;
            }

            goto LABEL_29;
          }
        }

        if (v14 != v27)
        {
          *v5 = *v28;
        }

        v14 = v28;
        v27 = v5;
        v26 = v31;
      }

      while (v28 > v41);
      v14 = v28;
      v25 = v40;
      v4 = v41;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      do
      {
        v16 = *v15;
        v17 = *v4;
        v18 = *(*v15 + 16);
        v19 = *(*v4 + 16);
        if (v18 == v19)
        {
          sub_23C870D74();
          v20 = *(v16 + 24);
          v21 = *(v17 + 24);

          v22 = sub_23C870D14();

          if ((v22 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else if (v18 >= v19)
        {
LABEL_18:
          v23 = v4;
          v24 = v6 == v4;
          v4 += 8;
          if (v24)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v6 = *v23;
          goto LABEL_20;
        }

        v23 = v15;
        v24 = v6 == v15;
        v15 += 8;
        if (!v24)
        {
          goto LABEL_19;
        }

LABEL_20:
        v6 += 8;
      }

      while (v4 < v14 && v15 < v5);
    }

    v25 = v6;
  }

LABEL_43:
  if (v25 != v4 || v25 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v25, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_23C5A324C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = sub_23C871604();
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v66);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v64 = &v54 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v69 = a1;
  v68 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v19;
    if (v19 >= 1)
    {
      v36 = -v15;
      v58 = a4;
      v59 = (v8 + 16);
      v56 = (v8 + 8);
      v57 = a1;
      v37 = v35;
      v60 = -v15;
      do
      {
        v55 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v62 = v38;
        v63 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v69 = v38;
            v67 = v55;
            goto LABEL_58;
          }

          v41 = a3;
          v61 = v35;
          v42 = a3 + v36;
          v43 = v37 + v36;
          v44 = *v59;
          v45 = v64;
          v46 = v66;
          (*v59)(v64, v43, v66);
          v47 = v39;
          v48 = v65;
          (v44)(v65, v47, v46);
          sub_23C8715E4();
          v50 = v49;
          sub_23C8715E4();
          v52 = v51;
          v53 = *v56;
          (*v56)(v48, v46);
          v53(v45, v46);
          if (v50 < v52)
          {
            break;
          }

          v35 = v43;
          a3 = v42;
          if (v41 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v63;
            a1 = v57;
          }

          else
          {
            v39 = v63;
            a1 = v57;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v40 = v43 > v58;
          v36 = v60;
          v38 = v62;
          if (!v40)
          {
            a2 = v62;
            goto LABEL_57;
          }
        }

        a3 = v42;
        if (v41 < v62 || v42 >= v62)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v57;
          v36 = v60;
          v35 = v61;
        }

        else
        {
          a2 = v63;
          a1 = v57;
          v36 = v60;
          v35 = v61;
          if (v41 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v58);
    }

LABEL_57:
    v69 = a2;
    v67 = v35;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v18;
    v67 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v61 = a3;
      v62 = v8 + 16;
      v59 = (v8 + 8);
      v60 = v21;
      v22 = v65;
      do
      {
        v23 = a1;
        v24 = v64;
        v25 = a2;
        v26 = v66;
        v27 = a2;
        v28 = v60;
        (v60)(v64, v25, v66);
        v28(v22, a4, v26);
        sub_23C8715E4();
        v30 = v29;
        sub_23C8715E4();
        v32 = v31;
        v33 = *v59;
        (*v59)(v22, v26);
        v33(v24, v26);
        if (v30 >= v32)
        {
          v34 = v23;
          if (v23 < a4 || v23 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v27;
          }

          else
          {
            a2 = v27;
            if (v23 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4 + v15;
          a4 += v15;
        }

        else
        {
          a2 = v27 + v15;
          v34 = v23;
          if (v23 < v27 || v23 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v34 + v15;
        v69 = a1;
      }

      while (a4 < v63 && a2 < v61);
    }
  }

LABEL_58:
  sub_23C6473E4(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_23C5A3818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t keypath_setTm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  *(*a2 + *a5) = *a1;
}

uint64_t sub_23C5A38CC()
{
  result = sub_23C871654();
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

uint64_t sub_23C5A3EE8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_23C871C34();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23C5A3F8C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_23C5A3FDC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23C5A4024(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);

  v54 = a2;
  result = swift_beginAccess();
  v14 = 0;
  v45 = (v10 + 63) >> 6;
  v52 = v5 + 16;
  v53 = v5;
  v51 = (v5 + 8);
  v56 = MEMORY[0x277D84F90];
  v49 = v8;
  v50 = v4;
  v48 = a1 + 56;
  v46 = a1;
  while (v12)
  {
LABEL_10:
    (*(v53 + 16))(v8, *(a1 + 48) + *(v53 + 72) * (__clz(__rbit64(v12)) | (v14 << 6)), v4);
    v16 = *(v54 + 24);
    if (*(v16 + 16))
    {
      v17 = *(v54 + 24);

      v18 = sub_23C5FFB04(v8);
      v19 = MEMORY[0x277D84F90];
      if (v20)
      {
        v19 = *(*(v16 + 56) + 8 * v18);
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v21 = v12;
    (*v51)(v8, v4);
    v22 = v19 >> 62;
    v23 = v19;
    if (v19 >> 62)
    {
      v24 = sub_23C871C34();
    }

    else
    {
      v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v56;
    v26 = v56 >> 62;
    if (v56 >> 62)
    {
      result = sub_23C871C34();
    }

    else
    {
      result = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v24;
    v27 = __OFADD__(result, v24);
    v28 = result + v24;
    if (v27)
    {
      goto LABEL_46;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v26)
      {
LABEL_27:
        sub_23C871C34();
        v30 = v23;
      }

      else
      {
        v29 = v25 & 0xFFFFFFFFFFFFFF8;
        v30 = v23;
LABEL_26:
        v32 = *(v29 + 16);
      }

      v31 = v21;
      result = sub_23C871D34();
      v56 = result;
      v29 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_29;
    }

    if (v26)
    {
      goto LABEL_27;
    }

    v29 = v25 & 0xFFFFFFFFFFFFFF8;
    v30 = v23;
    if (v28 > *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

    v31 = v21;
LABEL_29:
    v33 = *(v29 + 16);
    v34 = *(v29 + 24);
    if (v22)
    {
      v36 = v29;
      result = sub_23C871C34();
      v29 = v36;
      v35 = result;
    }

    else
    {
      v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = (v31 - 1) & v31;
    if (v35)
    {
      if (((v34 >> 1) - v33) < v58)
      {
        goto LABEL_48;
      }

      v37 = v29 + 8 * v33 + 32;
      v55 = v12;
      v47 = v29;
      if (v22)
      {
        if (v35 < 1)
        {
          goto LABEL_50;
        }

        sub_23C5A44B0();
        for (i = 0; i != v35; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD50, &unk_23C87BE40);
          v39 = sub_23C594EDC(v57, i, v30);
          v41 = *v40;

          (v39)(v57, 0);
          *(v37 + 8 * i) = v41;
        }
      }

      else
      {
        type metadata accessor for TimestampedOrderedEvent();
        swift_arrayInitWithCopy();
      }

      a1 = v46;
      v8 = v49;
      v4 = v50;
      v9 = v48;
      v12 = v55;
      if (v58 >= 1)
      {
        v42 = *(v47 + 16);
        v27 = __OFADD__(v42, v58);
        v43 = v42 + v58;
        if (v27)
        {
          goto LABEL_49;
        }

        *(v47 + 16) = v43;
      }
    }

    else
    {

      v8 = v49;
      v4 = v50;
      v9 = v48;
      if (v58 > 0)
      {
        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v45)
    {

      return v56;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_23C5A44B0()
{
  result = qword_27E1FB5C0;
  if (!qword_27E1FB5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E1FBD50, &unk_23C87BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB5C0);
  }

  return result;
}

uint64_t sub_23C5A4514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C5A4578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *BiomeEventGraphsPublisher.init(streams:windowLength:trackingTag:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_inner;
  *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_inner] = 0;
  v7 = &v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_trackingTag];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_windowLength] = a4;
  *v7 = a2;
  *(v7 + 1) = a3;
  v8 = (a1 >> 62);
  if (a1 >> 62)
  {
    if (sub_23C871C34())
    {
LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EED7610](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        result = *(a1 + 32);
      }

      v6 = result;
      if (v8)
      {
        if (sub_23C871C34() >= 2)
        {
          v18 = a1;
          result = sub_23C871C34();
          if (result)
          {
            result = sub_23C871C34();
            if (result)
            {
LABEL_12:
              if ((a1 & 0xC000000000000001) != 0)
              {
                MEMORY[0x23EED7610](0, a1);
                swift_unknownObjectRelease();
                v10 = a1 & 0xFFFFFFFFFFFFFF8;
                if (!v8)
                {
LABEL_14:
                  result = *(v10 + 16);
                  goto LABEL_19;
                }
              }

              else
              {
                v10 = a1 & 0xFFFFFFFFFFFFFF8;
                if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_33:
                  __break(1u);
                  return result;
                }

                if (!v8)
                {
                  goto LABEL_14;
                }
              }

              result = sub_23C871C34();
LABEL_19:
              if (result)
              {
                v8 = v4;
                sub_23C5A7090(0, 1, sub_23C64BCEC, sub_23C5A6F84);
                if (!(v18 >> 62))
                {

                  sub_23C872024();
LABEL_22:

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D38, &qword_23C874E38);
                  v14 = sub_23C871894();

                  v24 = sub_23C5A7BE8;
                  v25 = 0;
                  aBlock = MEMORY[0x277D85DD0];
                  v21 = 1107296256;
                  v22 = sub_23C5A4A38;
                  v23 = &block_descriptor_3;
                  v15 = _Block_copy(&aBlock);
                  v16 = [v6 orderedMergeWithOthers:v14 comparator:v15];

                  _Block_release(v15);
                  v4 = v8;
                  *&v8[OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_mergedStream] = v16;
                  goto LABEL_23;
                }

LABEL_29:

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D38, &qword_23C874E38);
                sub_23C871E44();

                goto LABEL_22;
              }

              goto LABEL_32;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
      {
        v18 = a1;
        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D38, &qword_23C874E38);
      v11 = sub_23C871894();
      v24 = sub_23C5A7BE8;
      v25 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_23C5A4A38;
      v23 = &block_descriptor;
      v12 = _Block_copy(&aBlock);
      v13 = [v6 orderedMergeWithOthers:v11 comparator:v12];

      _Block_release(v12);
      *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_mergedStream] = v13;
LABEL_23:
      v19.receiver = v4;
      v19.super_class = type metadata accessor for BiomeEventGraphsPublisher();
      return objc_msgSendSuper2(&v19, sel_init);
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v17 = *(v7 + 1);

  type metadata accessor for BiomeEventGraphsPublisher();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_23C5A4A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v9[3] = swift_getObjectType();
  v9[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v6(v10, v9);

  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

uint64_t sub_23C5A4ADC(uint64_t a1, uint64_t a2)
{
  sub_23C588DC0(a1, v10);
  type metadata accessor for AnteroEvent();
  swift_dynamicCast();
  v3 = *&v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
  v4 = v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

  if (v4)
  {
    v3 = 0.0;
  }

  sub_23C588DC0(a2, v10);
  swift_dynamicCast();
  v5 = *&v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
  v6 = v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

  if (v6)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  if (v3 >= v7)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23C5A4C10()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_windowLength);
  v3 = v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_trackingTag;
  v4 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_trackingTag);
  v5 = *(v3 + 8);
  v6 = objc_allocWithZone(type metadata accessor for BiomeEventGraphsPublisher.SessionIDSubscriber());

  v7 = swift_unknownObjectRetain();
  v8 = sub_23C5A71D8(v7, v4, v5, v2);
  swift_unknownObjectRelease();
  v9 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_inner);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_inner) = v8;
  v11 = v8;

  v10 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_mergedStream);
  [v10 subscribe_];
}

uint64_t sub_23C5A4EFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CoreAnalyticsTracker();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_upstreamFinished) = 1;
  sub_23C5A53C0();
  [*(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_downstream) receiveCompletion_];
  v12 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v1 + v12, v6, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_23C585C34(v6, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C5A7A78(v6, v11);
  sub_23C5FCF78(0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraphBuilder), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount), 0);
  return sub_23C5A7ADC(v11);
}

uint64_t sub_23C5A5174()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for CoreAnalyticsTracker();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_upstreamFinished) = 1;
  [*(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_downstream) cancel];
  v10 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v0 + v10, v4, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_23C585C34(v4, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C5A7A78(v4, v9);
  sub_23C5FCF78(1, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraphBuilder), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount), 0);
  return sub_23C5A7ADC(v9);
}

void sub_23C5A53C0()
{
  v1 = v0;
  v62 = sub_23C870B74();
  v2 = *(*(v62 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v62);
  v58 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v61 = &v46 - v5;
  v6 = 0;
  v47 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_graphSessionWindowLength;
  v48 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_latestRecievedTimestamp;
  v54 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionBuilder;
  v55 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_upstreamFinished;
  v52 = v0;
  v53 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraphBuilder;
  v7 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph;
  v8 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount;
  v49 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_downstream;
  v50 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount;
  v59 = v9;
  v60 = (v9 + 32);
  for (i = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph; ; v7 = i)
  {
    if (v1[v55] == 1)
    {
      v18 = *&v1[v54];
      v19 = sub_23C63858C();
      if (!v19[2])
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 = *&v1[v54];
      v19 = sub_23C637D50(*&v1[v48] - *&v1[v47]);
      if (!v19[2])
      {
LABEL_37:

        return;
      }
    }

    v20 = v19[4];
    v21 = v19[5];
    v22 = v19[6];
    v23 = v19[7];

    v24 = *&v1[v53];
    if (*(v18 + 48) > v24)
    {
      v24 = *(v18 + 48);
    }

    *&v1[v53] = v24;
    v25 = sub_23C638DD4(v20, v21, v22, v23);
    v27 = v26;

    if (!v27)
    {
      return;
    }

    v28 = *&v1[v7];
    v29 = v27 >> 62 ? sub_23C871C34() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v29 <= v28 ? v28 : v29;
    *&v1[v7] = v30;
    v31 = *&v1[v8];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      break;
    }

    v56 = *&v25;
    *&v1[v8] = v33;
    if (v27 >> 62)
    {
      v34 = sub_23C871C34();
      v57 = v6;
      if (v34)
      {
LABEL_21:
        v35 = 0;
        v10 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x23EED7610](v35, v27);
          }

          else
          {
            if (v35 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v36 = *(v27 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          v39 = *&v36[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];
          if (v39)
          {
            v40 = *(v39 + 24);
            v41 = sub_23C870CF4();

            if (!v41)
            {
              goto LABEL_42;
            }

            v42 = v58;
            sub_23C870D94();

            v43 = *v60;
            (*v60)(v61, v42, v62);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_23C5844B4(0, *(v10 + 2) + 1, 1, v10);
            }

            v45 = *(v10 + 2);
            v44 = *(v10 + 3);
            if (v45 >= v44 >> 1)
            {
              v10 = sub_23C5844B4(v44 > 1, v45 + 1, 1, v10);
            }

            *(v10 + 2) = v45 + 1;
            v43(&v10[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v45], v61, v62);
          }

          else
          {
          }

          ++v35;
          if (v38 == v34)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }
    }

    else
    {
      v34 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v57 = v6;
      if (v34)
      {
        goto LABEL_21;
      }
    }

    v10 = MEMORY[0x277D84F90];
LABEL_3:
    v11 = v56;
    v12 = sub_23C596660(v10);

    v1 = v52;
    v13 = v52;
    v6 = v57;
    v14 = sub_23C5A6AB8(v12, v13);

    v63 = v27;
    sub_23C6360E0(v14);
    v15 = v63;
    v16 = objc_allocWithZone(type metadata accessor for BiomeEventGraph());
    v17 = BiomeEventGraph.init(timestamp:events:)(v15, v11);
    [*&v1[v49] receiveInput_];

    v8 = v50;
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_23C5A584C(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = *(result + OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp);
  }

  v3 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_latestRecievedTimestamp);
  if (v2 > v3)
  {
    v3 = v2;
  }

  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_latestRecievedTimestamp) = v3;
  v4 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder) = v6;
  v8 = (result + OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_link);
  v9 = *(result + OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_link + 8);
  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = v8[2];
  v10 = v8[3];
  v12 = *v8;

  sub_23C5A79B4(v12, v9);
  sub_23C58428C(v12, v9);
  if (v11 == 0x5F4C414349474F4CLL && v10 == 0xED00004B434F4C43)
  {

LABEL_18:
    v24 = v8[1];
    if (v24)
    {
      v25 = v8[2];
      v26 = v8[3];
      v27 = *v8;
      v28 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_logicalClockBuilder);
      sub_23C5A79B4(*v8, v8[1]);

      sub_23C666CD0(v7, v27, v24, v2);

      return swift_bridgeObjectRelease_n();
    }

    return result;
  }

  v14 = sub_23C872014();

  if (v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v51 = v1;
  v15 = OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_joiningLinks;
  result = swift_beginAccess();
  v16 = *&v7[v15];
  v17 = *(v16 + 16);
  v18 = v8[1];
  if (v17)
  {
    if (!v18)
    {
      v48 = v7;
      v34 = v7;
      goto LABEL_23;
    }

    v20 = v8[2];
    v19 = v8[3];
    v21 = *v8;
    v22 = *(v51 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionBuilder);
    v23 = v8[1];

    sub_23C63576C(v7, v21, v18, v20, v19, v2);

    v16 = *&v7[v15];
    v17 = *(v16 + 16);
    if (v17)
    {
      v48 = 0;
LABEL_23:
      v50 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionBuilder;

      for (i = (v16 + 48); ; i += 8)
      {
        v37 = i[2];
        v36 = i[3];
        v38 = i[4];
        v39 = i[5];
        v40 = v38 == 0xD000000000000011 && 0x800000023C8A7280 == v39;
        if (v40 || (v41 = *(i - 1), v49 = *(i - 2), v42 = *i, v43 = i[1], (sub_23C872014() & 1) != 0))
        {
          v44 = *(*(v51 + v50) + 32);

          sub_23C63BA88(v37, v36, v38, v39);
        }

        else
        {
          v45 = v42 == 0xD000000000000011 && 0x800000023C8A7280 == v43;
          if (!v45 && (sub_23C872014() & 1) == 0)
          {
            v47 = *(v51 + v50);
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            if (v48)
            {
              sub_23C636734(v48, v49, v41, v42, v43, v37, v36, v38, v2, v39);
            }

            else
            {
              sub_23C5A5FA4(v49, v41, v42, v43, v37, v36, v38, v39, v2);
            }

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            goto LABEL_31;
          }

          v46 = *(*(v51 + v50) + 32);

          sub_23C63BA88(v49, v41, v42, v43);
        }

LABEL_31:
        if (!--v17)
        {
        }
      }
    }
  }

  else if (v18)
  {
    v30 = v8[2];
    v29 = v8[3];
    v31 = *v8;
    v32 = *(v51 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionBuilder);
    v33 = v8[1];

    sub_23C63576C(v7, v31, v18, v30, v29, v2);
  }

  return result;
}

id BiomeEventGraphsPublisher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23C5A5F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23C5A5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v11 = a8;
  v13 = a4;
  v14 = a2;
  v124 = a5;
  v125 = a1;
  v123 = a3;
  v121 = a7;
  v15 = sub_23C637C60(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  swift_beginAccess();
  v126 = v9;
  v22 = v9[3];
  v23 = *(v22 + 16);
  v119 = v14;
  v120 = v13;
  if (v23)
  {

    v24 = sub_23C5FFB88(v15, v17, v19, v21);
    if (v25)
    {
      v114 = *(*(v22 + 56) + 8 * v24);
    }

    else
    {
      v114 = MEMORY[0x277D84F90];
    }

    v26 = v124;
    v14 = v119;
    v13 = v120;
  }

  else
  {

    v114 = MEMORY[0x277D84F90];
    v26 = v124;
  }

  v122 = a6;
  v118 = v11;
  v27 = sub_23C637C60(v125, v14, v123, v13, v26, a6, v121, v11);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  swift_beginAccess();
  v34 = v126[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v145[0] = v126[3];
  v36 = v145[0];
  v126[3] = 0x8000000000000000;
  v38 = sub_23C5FFB88(v27, v29, v31, v33);
  v39 = *(v36 + 16);
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    __break(1u);
    goto LABEL_49;
  }

  LOBYTE(v11) = v37;
  if (*(v36 + 24) >= v41)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_51;
    }

    while (1)
    {
LABEL_12:
      v44 = v123;
      v45 = v145[0];
      v126[3] = v145[0];
      if ((v11 & 1) == 0)
      {
        sub_23C6429F8(v38, v27, v29, v31, v33, MEMORY[0x277D84F90], v45);
      }

      v46 = v45[7];
      v47 = *(v46 + 8 * v38);
      *(v46 + 8 * v38) = v114;

      swift_endAccess();

      v48 = v125;
      v49 = v126[4];
      v51 = v119;
      v50 = v120;
      v145[0] = v125;
      v145[1] = v119;
      v145[2] = v44;
      v145[3] = v120;
      v52 = v44;
      v53 = v124;
      v54 = v121;
      v55 = v122;
      v145[4] = v124;
      v145[5] = v122;
      v56 = v118;
      v145[6] = v121;
      v145[7] = v118;

      sub_23C5855B0(v145, v146, &qword_27E1F9DD0, &unk_23C874ED0);
      sub_23C63B034(v48, v51, v52, v50, v53, v55, v54, v56);

      v146[0] = v48;
      v146[1] = v51;
      v146[2] = v52;
      v146[3] = v50;
      v146[4] = v53;
      v146[5] = v55;
      v146[6] = v54;
      v146[7] = v56;
      v57 = v126;
      swift_beginAccess();
      v58 = v57[5];
      if (*(v58 + 16))
      {
        sub_23C5855B0(v146, &v137, &qword_27E1F9DD0, &unk_23C874ED0);

        v59 = v123;
        v60 = sub_23C5FFB88(v125, v51, v123, v50);
        if (v61)
        {
          v62 = (*(v58 + 56) + 32 * v60);
          v63 = v62[1];
          v111 = *v62;
          v64 = v62[3];
          v113 = v62[2];
          v117 = v63;

          v110 = v64;
        }

        else
        {

          v110 = 0;
          v111 = 0;
          v117 = 0;
          v113 = 0;
        }

        v65 = v121;
        v66 = v124;
      }

      else
      {
        sub_23C5855B0(v146, &v137, &qword_27E1F9DD0, &unk_23C874ED0);
        v110 = 0;
        v111 = 0;
        v117 = 0;
        v113 = 0;
        v65 = v121;
        v59 = v123;
        v66 = v124;
      }

      v137 = v125;
      v138 = v51;
      v139 = v59;
      v140 = v50;
      v141 = v66;
      v142 = v55;
      v31 = v118;
      v143 = v65;
      v144 = v118;
      v67 = v126[5];
      v11 = v65;
      if (!*(v67 + 16))
      {
        break;
      }

      sub_23C5855B0(&v137, &v129, &qword_27E1F9DD0, &unk_23C874ED0);

      v68 = sub_23C5FFB88(v66, v55, v65, v31);
      if ((v69 & 1) == 0)
      {

        goto LABEL_25;
      }

      v70 = (*(v67 + 56) + 32 * v68);
      v71 = v70[1];
      v115 = *v70;
      v116 = v71;
      v72 = v70[3];
      v112 = v70[2];

      v109 = v72;

LABEL_26:
      v73 = v138;
      v74 = v140;
      v107 = v139;
      v108 = v137;

      if (!v117 || !v116)
      {
        goto LABEL_37;
      }

      v38 = v111;
      if ((v111 != v115 || v117 != v116) && (sub_23C872014() & 1) == 0)
      {
        sub_23C5A79B4(v38, v117);
        sub_23C5A79B4(v115, v116);

LABEL_37:
        v78 = v126;
        v79 = v126[4];

        v80 = sub_23C63BA88(v108, v73, v107, v74);

        v81 = sub_23C591B98(v80);
        v83 = v82;
        v38 = v84;
        v129 = v81;
        v130 = v82;
        v131 = v84;
        v132 = v85;
        MEMORY[0x28223BE20](v81);
        v106[2] = v78;
        v106[3] = &v129;
        sub_23C63269C(sub_23C5A79F8, v106, v80);

        v75 = v124;
        v11 = v121;
        sub_23C58428C(v81, v83);
        goto LABEL_38;
      }

      if (v113 == v112 && v110 == v109)
      {
        sub_23C5A79B4(v38, v117);
        sub_23C5A79B4(v115, v116);

        v75 = v124;
        goto LABEL_38;
      }

      v76 = sub_23C872014();
      v77 = v38;
      v38 = v117;
      sub_23C5A79B4(v77, v117);
      sub_23C5A79B4(v115, v116);

      v31 = v118;

      v75 = v124;
      if ((v76 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_38:
      v27 = v125;
      v86 = v119;
      v29 = v120;
      v129 = v125;
      v130 = v119;
      v33 = v123;
      v131 = v123;
      v132 = v120;
      v133 = v75;
      v134 = v122;
      v135 = v11;
      v136 = v31;
      v87 = v126[5];
      if (*(v87 + 16))
      {
        sub_23C5855B0(&v129, v128, &qword_27E1F9DD0, &unk_23C874ED0);

        v88 = sub_23C5FFB88(v27, v86, v33, v29);
        if (v89)
        {
          v90 = (*(v87 + 56) + 32 * v88);
          v91 = *v90;
          v92 = v90[1];
          v93 = v90[2];
          v94 = v90[3];

          v95 = v126;
          swift_beginAccess();
          v96 = v95[2];
          if (*(v96 + 16))
          {

            v97 = sub_23C5FFB88(v91, v92, v93, v94);
            v98 = 0.0;
            v100 = v124;
            v99 = v125;
            if (v101)
            {
              v98 = *(*(v96 + 56) + 8 * v97);
            }
          }

          else
          {
            v98 = 0.0;
            v100 = v124;
            v99 = v125;
          }

          if (v98 > a9)
          {
            a9 = v98;
          }

          v102 = v126;
          swift_beginAccess();
          v103 = v102[2];
          v104 = swift_isUniquelyReferenced_nonNull_native();
          v127 = v102[2];
          v102[2] = 0x8000000000000000;
          sub_23C59461C(v91, v92, v93, v94, v104, a9);
          v102[2] = v127;
          swift_endAccess();
          sub_23C58428C(v115, v116);
          sub_23C58428C(v111, v117);

          v128[0] = v99;
          v128[1] = v119;
          v128[2] = v123;
          v128[3] = v120;
          v128[4] = v100;
          v128[5] = v122;
          v128[6] = v11;
          v128[7] = v118;
          return sub_23C585C34(v128, &qword_27E1F9DD0, &unk_23C874ED0);
        }
      }

      else
      {
LABEL_49:
        __break(1u);
      }

      __break(1u);
LABEL_51:
      sub_23C64412C();
    }

    sub_23C5855B0(&v137, &v129, &qword_27E1F9DD0, &unk_23C874ED0);
LABEL_25:
    v115 = 0;
    v116 = 0;
    v112 = 0;
    v109 = 0;
    goto LABEL_26;
  }

  sub_23C63EA3C(v41, isUniquelyReferenced_nonNull_native);
  v42 = sub_23C5FFB88(v27, v29, v31, v33);
  if ((v11 & 1) == (v43 & 1))
  {
    v38 = v42;
    goto LABEL_12;
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C5A698C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for EventGraph();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23C871C34();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_23C871C34();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23C5A6AB8(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_23C870B74();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v58 = v5 + 16;
  v59 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_logicalClockBuilder;
  v60 = v5;
  v57 = (v5 + 8);

  v14 = 0;
  v64 = MEMORY[0x277D84F90];
  v54 = a1 + 56;
  v55 = v7;
  v53 = v12;
  v56 = a1;
  v51 = v3;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v12)
        {
          goto LABEL_44;
        }

        v11 = *(v8 + 8 * v15);
        ++v14;
        if (v11)
        {
          v14 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v16 = v11;
    (*(v60 + 16))(v7, *(a1 + 48) + *(v60 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v3);
    v17 = *(v61 + v59);
    v18 = sub_23C870B04();
    v20 = v19;
    swift_beginAccess();
    v21 = *(v17 + 24);
    if (!*(v21 + 16))
    {
      goto LABEL_13;
    }

LABEL_10:

    v22 = sub_23C5FF898(v18, v20);
    v24 = v23;

    if (v24)
    {
      v25 = *(*(v21 + 56) + 8 * v22);
    }

    else
    {
LABEL_13:

      v25 = MEMORY[0x277D84F90];
    }

    (*v57)(v7, v3);
    v26 = v25 >> 62;
    v27 = v64;
    v28 = v25;
    v29 = v25 >> 62 ? sub_23C871C34() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v27 >> 62;
    if (v27 >> 62)
    {
      break;
    }

    v31 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v31 + v29;
    if (__OFADD__(v31, v29))
    {
      goto LABEL_43;
    }

LABEL_18:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v66 = v29;
    if (!result)
    {
      if (v30)
      {
LABEL_25:
        sub_23C871C34();
      }

      else
      {
        v33 = v27 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
        v34 = *(v33 + 16);
      }

      result = sub_23C871D34();
      v27 = result;
      v33 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (v30)
    {
      goto LABEL_25;
    }

    v33 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v32 > *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_24;
    }

LABEL_27:
    v35 = *(v33 + 16);
    v36 = *(v33 + 24);
    if (v26)
    {
      v38 = v33;
      result = sub_23C871C34();
      v33 = v38;
      v37 = result;
    }

    else
    {
      v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = (v16 - 1) & v16;
    v64 = v27;
    if (v37)
    {
      if (((v36 >> 1) - v35) < v66)
      {
        goto LABEL_47;
      }

      v62 = v14;
      v39 = v33 + 8 * v35 + 32;
      v52 = v33;
      if (v26)
      {
        if (v37 < 1)
        {
          goto LABEL_49;
        }

        sub_23C5A7A14();
        v40 = 0;
        v41 = v28;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DD8, &unk_23C87BEB0);
          v42 = sub_23C595568(v65, v40, v41);
          v44 = v37;
          v45 = *v43;
          (v42)(v65, 0);
          *(v39 + 8 * v40) = v45;
          v37 = v44;
          ++v40;
        }

        while (v44 != v40);
      }

      else
      {
        type metadata accessor for AnteroEvent();
        swift_arrayInitWithCopy();
      }

      v7 = v55;
      a1 = v56;
      v3 = v51;
      v12 = v53;
      v8 = v54;
      v14 = v62;
      v11 = v63;
      if (v66 >= 1)
      {
        v46 = *(v52 + 16);
        v47 = __OFADD__(v46, v66);
        v48 = v46 + v66;
        if (v47)
        {
          goto LABEL_48;
        }

        *(v52 + 16) = v48;
      }
    }

    else
    {

      v8 = v54;
      v7 = v55;
      v12 = v53;
      v11 = v63;
      a1 = v56;
      if (v66 > 0)
      {
        goto LABEL_46;
      }
    }
  }

  v49 = sub_23C871C34();
  v32 = v49 + v29;
  if (!__OFADD__(v49, v29))
  {
    goto LABEL_18;
  }

LABEL_43:
  __break(1u);
LABEL_44:

  return v64;
}

uint64_t sub_23C5A6F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DF0, &qword_23C87BE00);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23C871C34();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_23C871C34();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23C5A7090(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23C871C34();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_23C871C34();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t type metadata accessor for BiomeEventGraphsPublisher.SessionIDSubscriber()
{
  result = qword_27E1F9DB8;
  if (!qword_27E1F9DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23C5A71D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v49 = a2;
  v50 = a3;
  v47 = a1;
  v7 = type metadata accessor for CoreAnalyticsTracker();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23C870AE4();
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v53 = &v46 - v17;
  v18 = sub_23C871654();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v8 + 56);
  v51 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_tracker;
  v56 = v8 + 56;
  v48 = v23;
  v23(&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_tracker], 1, 1, v7);
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraphBuilder] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_latestRecievedTimestamp] = 0;
  v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_upstreamFinished] = 0;
  v24 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DF8, &qword_23C874EF0);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84F90];
  v25[2] = sub_23C598660(MEMORY[0x277D84F90]);
  v25[3] = sub_23C598784(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E00, &qword_23C874EF8);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_23C5988EC(v26);
  v25[4] = v27;
  v25[5] = sub_23C598798(v26);
  v25[6] = 0;
  *&v5[v24] = v25;
  v28 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_logicalClockBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E08, &unk_23C874F00);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_23C59844C(v26);
  *(v29 + 24) = sub_23C598550(v26);
  *&v5[v28] = v29;
  v30 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_logger;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_downstream] = v47;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_graphSessionWindowLength] = a4;
  (*(v19 + 16))(v22, &v5[v30], v18);
  swift_unknownObjectRetain();
  v31 = sub_23C871634();
  v32 = sub_23C871AC4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_23C56D000, v31, v32, "Constructed BiomeEventGraphsSubscriber", v33, 2u);
    MEMORY[0x23EED8240](v33, -1, -1);
  }

  (*(v19 + 8))(v22, v18);
  v34 = v52;
  sub_23C870AD4();
  *&v11[v7[7]] = 0;
  *v11 = 1;
  *(v11 + 1) = 0xD00000000000001BLL;
  *(v11 + 2) = 0x800000023C8A72D0;
  v36 = v54;
  v35 = v55;
  (*(v54 + 16))(&v11[v7[6]], v34, v55);
  v37 = &v11[v7[8]];
  v38 = v50;
  *v37 = v49;
  *(v37 + 1) = v38;
  if (qword_27E1F8308 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v18, qword_27E1FB2F8);
  v39 = sub_23C871634();
  v40 = sub_23C871AC4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = 1;
    _os_log_impl(&dword_23C56D000, v39, v40, "tracker starting for %ld", v41, 0xCu);
    MEMORY[0x23EED8240](v41, -1, -1);
  }

  (*(v36 + 8))(v34, v35);
  v42 = v53;
  sub_23C5A7A78(v11, v53);
  v48(v42, 0, 1, v7);
  v43 = v51;
  swift_beginAccess();
  sub_23C5A7B70(v42, &v5[v43]);
  swift_endAccess();
  v44 = type metadata accessor for BiomeEventGraphsPublisher.SessionIDSubscriber();
  v57.receiver = v5;
  v57.super_class = v44;
  return objc_msgSendSuper2(&v57, sel_init);
}

void sub_23C5A7858()
{
  sub_23C5A795C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_23C871654();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23C5A795C()
{
  if (!qword_27E1F9DC8)
  {
    type metadata accessor for CoreAnalyticsTracker();
    v0 = sub_23C871B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1F9DC8);
    }
  }
}

uint64_t sub_23C5A79B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_23C5A7A14()
{
  result = qword_27E1F9DE0;
  if (!qword_27E1F9DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9DD8, &unk_23C87BEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9DE0);
  }

  return result;
}

uint64_t sub_23C5A7A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAnalyticsTracker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C5A7ADC(uint64_t a1)
{
  v2 = type metadata accessor for CoreAnalyticsTracker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23C5A7B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static BiomeInstrumentationStreamsFactory.constructRawJoinableProvider(startTime:endTime:maxEvents:lastN:useCase:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 155) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 154) = a7;
  *(v8 + 153) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 152) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C5A7C34, 0, 0);
}

uint64_t sub_23C5A7C34()
{
  v1 = type metadata accessor for TranscriptStream();
  v0[9] = v1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[10] = v4;
  sub_23C871644();
  *(v4 + OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_name) = 0;
  v5 = type metadata accessor for RawJoinableStream();
  v0[11] = v5;
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = 3;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v9 = type metadata accessor for GMSStream();
  v0[13] = v9;
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v0[14] = v12;
  sub_23C871644();
  *(v12 + OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_name) = 1;
  v13 = type metadata accessor for TelemetryStream();
  v0[15] = v13;
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v0[16] = v16;
  sub_23C871644();
  *(v16 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_name) = 2;
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_23C5A7E70;

  return sub_23C6289D0();
}