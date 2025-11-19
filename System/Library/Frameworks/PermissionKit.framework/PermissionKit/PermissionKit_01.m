size_t sub_23A631668(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_23A631844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98750, &qword_23A639310);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23A631950(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98738, &qword_23A6392F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98740, &qword_23A639300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23A631A98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_23A631AB0()
{
  result = qword_27DF985D0;
  if (!qword_27DF985D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985D0);
  }

  return result;
}

unint64_t sub_23A631B04()
{
  result = qword_27DF985E0;
  if (!qword_27DF985E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985E0);
  }

  return result;
}

unint64_t sub_23A631B5C()
{
  result = qword_27DF985E8;
  if (!qword_27DF985E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985E8);
  }

  return result;
}

unint64_t sub_23A631BB0(uint64_t a1)
{
  *(a1 + 8) = sub_23A629234();
  result = sub_23A631BE0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23A631BE0()
{
  result = qword_27DF985F0;
  if (!qword_27DF985F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23A631C50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23A631C98(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23A631CF8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23A631DC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23A631E78()
{
  sub_23A631F5C();
  if (v0 <= 0x3F)
  {
    sub_23A631FAC(319, &qword_27DF98610, MEMORY[0x277CC8E50]);
    if (v1 <= 0x3F)
    {
      sub_23A631FAC(319, &qword_27DF98618, type metadata accessor for CGImage);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23A631F5C()
{
  if (!qword_27DF98608)
  {
    v0 = sub_23A636910();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF98608);
    }
  }
}

void sub_23A631FAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A636910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CommunicationTopic.PersonInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommunicationTopic.PersonInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23A632164(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23A6321F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A63235C()
{
  result = qword_27DF98620;
  if (!qword_27DF98620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98620);
  }

  return result;
}

unint64_t sub_23A6323B4()
{
  result = qword_27DF98628;
  if (!qword_27DF98628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98628);
  }

  return result;
}

unint64_t sub_23A63240C()
{
  result = qword_27DF98630;
  if (!qword_27DF98630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98630);
  }

  return result;
}

unint64_t sub_23A632464()
{
  result = qword_27DF98638;
  if (!qword_27DF98638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98638);
  }

  return result;
}

unint64_t sub_23A6324BC()
{
  result = qword_27DF98640;
  if (!qword_27DF98640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98640);
  }

  return result;
}

unint64_t sub_23A632514()
{
  result = qword_27DF98648;
  if (!qword_27DF98648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98648);
  }

  return result;
}

unint64_t sub_23A63256C()
{
  result = qword_27DF98650;
  if (!qword_27DF98650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98650);
  }

  return result;
}

unint64_t sub_23A6325C4()
{
  result = qword_27DF98658;
  if (!qword_27DF98658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98658);
  }

  return result;
}

unint64_t sub_23A63261C()
{
  result = qword_27DF98660;
  if (!qword_27DF98660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98660);
  }

  return result;
}

unint64_t sub_23A632674()
{
  result = qword_27DF98668;
  if (!qword_27DF98668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98668);
  }

  return result;
}

unint64_t sub_23A6326CC()
{
  result = qword_27DF98670;
  if (!qword_27DF98670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98670);
  }

  return result;
}

unint64_t sub_23A632724()
{
  result = qword_27DF98678;
  if (!qword_27DF98678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98678);
  }

  return result;
}

unint64_t sub_23A63277C()
{
  result = qword_27DF98680;
  if (!qword_27DF98680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98680);
  }

  return result;
}

unint64_t sub_23A6327D4()
{
  result = qword_27DF98688;
  if (!qword_27DF98688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98688);
  }

  return result;
}

unint64_t sub_23A63282C()
{
  result = qword_27DF98690;
  if (!qword_27DF98690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98690);
  }

  return result;
}

unint64_t sub_23A632884()
{
  result = qword_27DF98698;
  if (!qword_27DF98698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98698);
  }

  return result;
}

unint64_t sub_23A6328DC()
{
  result = qword_27DF986A0;
  if (!qword_27DF986A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986A0);
  }

  return result;
}

unint64_t sub_23A632934()
{
  result = qword_27DF986A8;
  if (!qword_27DF986A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986A8);
  }

  return result;
}

unint64_t sub_23A63298C()
{
  result = qword_27DF986B0;
  if (!qword_27DF986B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986B0);
  }

  return result;
}

unint64_t sub_23A6329E4()
{
  result = qword_27DF986B8;
  if (!qword_27DF986B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986B8);
  }

  return result;
}

unint64_t sub_23A632A3C()
{
  result = qword_27DF986C0;
  if (!qword_27DF986C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986C0);
  }

  return result;
}

unint64_t sub_23A632A94()
{
  result = qword_27DF986C8;
  if (!qword_27DF986C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986C8);
  }

  return result;
}

unint64_t sub_23A632AEC()
{
  result = qword_27DF986D0;
  if (!qword_27DF986D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986D0);
  }

  return result;
}

unint64_t sub_23A632B44()
{
  result = qword_27DF986D8;
  if (!qword_27DF986D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986D8);
  }

  return result;
}

unint64_t sub_23A632B9C()
{
  result = qword_27DF986E0;
  if (!qword_27DF986E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986E0);
  }

  return result;
}

unint64_t sub_23A632BF4()
{
  result = qword_27DF986E8;
  if (!qword_27DF986E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986E8);
  }

  return result;
}

unint64_t sub_23A632C4C()
{
  result = qword_27DF986F0;
  if (!qword_27DF986F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986F0);
  }

  return result;
}

unint64_t sub_23A632CA4()
{
  result = qword_27DF986F8;
  if (!qword_27DF986F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986F8);
  }

  return result;
}

unint64_t sub_23A632CFC()
{
  result = qword_27DF98700;
  if (!qword_27DF98700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98700);
  }

  return result;
}

unint64_t sub_23A632D50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23A636C80();
  sub_23A6367D0();
  v6 = sub_23A636CA0();

  return sub_23A632E7C(a1, a2, v6);
}

unint64_t sub_23A632DC8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23A636C80();
  type metadata accessor for CFString(0);
  sub_23A633630(&qword_27DF98730, type metadata accessor for CFString);
  sub_23A6362B0();
  v4 = sub_23A636CA0();

  return sub_23A632F34(a1, v4);
}

unint64_t sub_23A632E7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23A636C10())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23A632F34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23A633630(&qword_27DF98730, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23A6362A0();

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

uint64_t sub_23A633040(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65697266 && a2 == 0xE600000000000000;
  if (v4 || (sub_23A636C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C6F66 && a2 == 0xE600000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C6C6F466562 && a2 == 0xEA00000000006465 || (sub_23A636C10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819042147 && a2 == 0xE400000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61436F65646976 && a2 == 0xE90000000000006CLL || (sub_23A636C10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C61436F69647561 && a2 == 0xE90000000000006CLL || (sub_23A636C10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63696E756D6D6F63 && a2 == 0xEB00000000657461 || (sub_23A636C10() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1952540771 && a2 == 0xE400000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_23A636C10();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_23A633380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_23A636C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023A63B800 == a2 || (sub_23A636C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL || (sub_23A636C10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D49726174617661 && a2 == 0xEF61746144656761)
  {

    return 3;
  }

  else
  {
    v6 = sub_23A636C10();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_23A6334F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98728, &qword_23A6392F0);
    v3 = sub_23A636B10();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A628F84(v4, &v11, &qword_27DF98718, &qword_23A6392E0);
      v5 = v11;
      result = sub_23A632DC8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23A633620(&v12, (v3[7] + 32 * result));
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

_OWORD *sub_23A633620(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23A633630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PermissionQuestion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27DF9C738;
  v4 = sub_23A636290();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23A633790(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_23A6337F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t PermissionQuestion.choices.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

id PermissionQuestion.defaultChoice.getter@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

uint64_t PermissionQuestion.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  return sub_23A633A30(v1 + v3, a1);
}

uint64_t sub_23A633A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PermissionQuestion.expirationDate.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_23A6292F0(a1, v1 + v3, &qword_27DF98168, &qword_23A639340);
  return swift_endAccess();
}

uint64_t (*PermissionQuestion.expirationDate.modify())()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t PermissionQuestion.__allocating_init(id:title:subtitle:topic:choices:defaultChoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  PermissionQuestion.init(id:title:subtitle:topic:choices:defaultChoice:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v19;
}

uint64_t *PermissionQuestion.init(id:title:subtitle:topic:choices:defaultChoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = *v8;
  v16 = *a8;
  v17 = *(*v8 + 144);
  v18 = sub_23A636260();
  (*(*(v18 - 8) + 56))(v8 + v17, 1, 1, v18);
  v19 = qword_27DF9C738;
  v20 = sub_23A636290();
  (*(*(v20 - 8) + 32))(v8 + v19, a1, v20);
  v21 = (v8 + qword_27DF9C740);
  *v21 = a2;
  v21[1] = a3;
  v22 = (v8 + qword_27DF9C748);
  *v22 = a4;
  v22[1] = a5;
  (*(*(*(v15 + 80) - 8) + 32))(v8 + *(*v8 + 120), a6);
  *(v8 + *(*v8 + 128)) = a7;
  *(v8 + *(*v8 + 136)) = v16;
  return v8;
}

uint64_t sub_23A633DD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23A636C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736563696F6863 && a2 == 0xE700000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x43746C7561666564 && a2 == 0xED00006563696F68 || (sub_23A636C10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_23A636C10();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23A634054(unsigned __int8 a1)
{
  sub_23A636C80();
  MEMORY[0x23EE87E60](a1);
  return sub_23A636CA0();
}

uint64_t sub_23A63409C(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x43746C7561666564;
  if (a1 != 5)
  {
    v2 = 0x6974617269707865;
  }

  v3 = 0x6369706F74;
  if (a1 != 3)
  {
    v3 = 0x736563696F6863;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x656C746974;
  if (a1 != 1)
  {
    v4 = 0x656C746974627573;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_23A63417C(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_23A63401C(*a1, *a2);
}

uint64_t sub_23A634190(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_23A634054(*v1);
}

uint64_t sub_23A63419C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_23A63402C(a1, *v2);
}

uint64_t sub_23A6341A8(uint64_t a1, uint64_t a2)
{
  sub_23A636C80();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_23A63402C(v7, *v2);
  return sub_23A636CA0();
}

uint64_t sub_23A6341F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_23A63409C(*v1);
}

uint64_t sub_23A6341FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_23A633DD4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23A63422C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_23A6357B8();
  *a2 = result;
  return result;
}

uint64_t sub_23A634258(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23A6342AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t *PermissionQuestion.deinit()
{
  v1 = *v0;
  v2 = qword_27DF9C738;
  v3 = sub_23A636290();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_27DF9C740 + 8);

  v5 = *(v0 + qword_27DF9C748 + 8);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v6 = *(v0 + *(*v0 + 128));

  sub_23A63443C(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_23A63443C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PermissionQuestion.__deallocating_deinit()
{
  PermissionQuestion.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t PermissionQuestion.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - v7;
  v8 = *(v4 + 88);
  v38 = *(v4 + 80);
  v39 = v8;
  type metadata accessor for PermissionQuestion.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_23A636C00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v2;
  sub_23A636CC0();
  v45 = 0;
  sub_23A636290();
  sub_23A635D34(&qword_27DF98758, MEMORY[0x277CC95F0]);
  v16 = v40;
  sub_23A636BF0();
  if (v16)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v18 = v39;
  v19 = (v15 + qword_27DF9C740);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  v44 = 1;

  v22 = v13;
  sub_23A636BE0();

  v23 = (v15 + qword_27DF9C748);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  v43 = 2;

  sub_23A636BE0();
  v26 = v10;

  v27 = *(*v15 + 120);
  v43 = 3;
  v28 = *(v18 + 16);
  sub_23A636BF0();
  v29 = *(*v15 + 128);
  swift_beginAccess();
  v42 = *(v15 + v29);
  LOBYTE(v41) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98760, &qword_23A639348);
  sub_23A635394(&qword_27DF98768, sub_23A634A88);
  sub_23A636BF0();
  v30 = *(*v15 + 136);
  swift_beginAccess();
  v31 = *(v15 + v30);
  v41 = v31;
  v46 = 5;
  sub_23A634A88();
  v32 = v31;
  sub_23A636BF0();

  v33 = *(*v15 + 144);
  swift_beginAccess();
  v34 = v15 + v33;
  v35 = v37;
  sub_23A633A30(v34, v37);
  v46 = 6;
  sub_23A636260();
  sub_23A635D34(&qword_27DF98778, MEMORY[0x277CC9578]);
  sub_23A636BD0();
  sub_23A63443C(v35);
  return (*(v26 + 8))(v22, 0);
}

unint64_t sub_23A634A88()
{
  result = qword_27DF98770;
  if (!qword_27DF98770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98770);
  }

  return result;
}

uint64_t PermissionQuestion.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PermissionQuestion.init(from:)(a1);
  return v5;
}

char *PermissionQuestion.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v62 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v49 = v46 - v8;
  v9 = v4[10];
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = v46 - v11;
  v57 = sub_23A636290();
  v54 = *(v57 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4[11];
  v51 = v9;
  v53 = v14;
  type metadata accessor for PermissionQuestion.CodingKeys();
  swift_getWitnessTable();
  v59 = sub_23A636B90();
  v52 = *(v59 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v59);
  v17 = v46 - v16;
  v18 = v4[18];
  v19 = sub_23A636260();
  (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
  v20 = a1;
  v21 = a1[3];
  v22 = v20[4];
  v61 = v20;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v58 = v17;
  v23 = v60;
  sub_23A636CB0();
  if (v23)
  {
    sub_23A63443C(&v2[*(*v2 + 144)]);
    v40 = *(*v2 + 48);
    v41 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v52;
    v24 = v53;
    v47 = v18;
    v48 = v19;
    v60 = v2;
    v26 = v54;
    v27 = v55;
    LOBYTE(v63) = 0;
    sub_23A635D34(&qword_27DF98780, MEMORY[0x277CC95F0]);
    v28 = v56;
    v29 = v57;
    sub_23A636B70();
    v30 = *(v26 + 32);
    v31 = v60;
    v46[1] = qword_27DF9C738;
    v30(&v60[qword_27DF9C738], v28, v29);
    LOBYTE(v63) = 1;
    v32 = sub_23A636B60();
    v33 = (v31 + qword_27DF9C740);
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v63) = 2;
    v56 = 0;
    v35 = sub_23A636B60();
    v36 = (v31 + qword_27DF9C748);
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v63) = 3;
    v38 = *(v24 + 8);
    v39 = v51;
    sub_23A636B70();
    (*(v50 + 32))(v31 + *(*v31 + 120), v27, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98760, &qword_23A639348);
    v64 = 4;
    sub_23A635394(&qword_27DF98788, sub_23A63540C);
    sub_23A636B70();
    *(v31 + *(*v31 + 128)) = v63;
    v64 = 5;
    sub_23A63540C();
    sub_23A636B70();
    *(v31 + *(*v31 + 136)) = v63;
    LOBYTE(v63) = 6;
    sub_23A635D34(&qword_27DF98798, MEMORY[0x277CC9578]);
    v43 = v49;
    sub_23A636B50();
    (*(v25 + 8))(v58, v59);
    v44 = v47;
    swift_beginAccess();
    v45 = &v60[v44];
    v2 = v60;
    sub_23A6292F0(v43, v45, &qword_27DF98168, &qword_23A639340);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  return v2;
}

uint64_t sub_23A635394(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF98760, &qword_23A639348);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A63540C()
{
  result = qword_27DF98790;
  if (!qword_27DF98790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98790);
  }

  return result;
}

uint64_t sub_23A635484@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PermissionQuestion.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t PermissionQuestion<>.init(communicationTopic:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_23A636290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_23A636280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98750, &qword_23A639310);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23A639330;
  if (qword_27DF97FF0 != -1)
  {
    swift_once();
  }

  v10 = qword_27DF98340;
  *(v9 + 32) = qword_27DF98340;
  v11 = qword_27DF97FF8;
  v12 = v10;
  if (v11 == -1)
  {
    v13 = v12;
  }

  else
  {
    swift_once();
    v13 = qword_27DF98340;
  }

  v14 = qword_27DF98348;
  *(v9 + 40) = qword_27DF98348;
  v15 = *(v2 + 48);
  v16 = *(v2 + 52);
  v17 = swift_allocObject();
  v18 = *(*v17 + 144);
  v19 = sub_23A636260();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  (*(v5 + 32))(v17 + qword_27DF9C738, v8, v4);
  v20 = (v17 + qword_27DF9C740);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v17 + qword_27DF9C748);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  *(v17 + *(*v17 + 120)) = v25;
  *(v17 + *(*v17 + 128)) = v9;
  *(v17 + *(*v17 + 136)) = v13;
  v22 = v14;
  v23 = v13;
  return v17;
}

uint64_t PermissionQuestion<>.init(handle:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98140, &qword_23A637BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A637BC0;
  *(inited + 32) = v1;
  return _s13PermissionKit0A8QuestionCA2A18CommunicationTopicVRszrlE7handlesACyAEGSayAA0D6HandleVG_tcfC_0(inited);
}

uint64_t _s13PermissionKit0A8QuestionCA2A18CommunicationTopicVRszrlE7handlesACyAEGSayAA0D6HandleVG_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v54 - v4;
  v5 = type metadata accessor for CommunicationTopic.PersonInformation();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = sub_23A636290();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v54 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = v12;
    v60 = sub_23A636200();
    v17 = *(v60 - 8);
    v18 = *(v17 + 56);
    v58 = v17 + 56;
    v59 = v18;
    v19 = MEMORY[0x277D84F90];
    v20 = 32;
    v61 = a1;
    v57 = v9;
    v21 = v60;
    do
    {
      v65 = v16;
      v22 = *(a1 + v20);
      v23 = v64;
      v24 = v19;
      v25 = v59;
      v59(v64, 1, 1, v21);
      v26 = v63;
      v27 = *(v63 + 24);
      v25(&v11[v27], 1, 1, v21);
      v19 = v24;
      v28 = *(v26 + 28);
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = v22;
      v29 = v22;
      v30 = v23;
      v31 = v57;
      sub_23A6292F0(v30, &v11[v27], &qword_27DF98160, &unk_23A637C50);
      *&v11[v28] = 0;
      sub_23A628E60(v11, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_23A631640(0, v24[2] + 1, 1, v24);
      }

      v33 = v19[2];
      v32 = v19[3];
      v34 = v65;
      if (v33 >= v32 >> 1)
      {
        v19 = sub_23A631640(v32 > 1, v33 + 1, 1, v19);
      }

      v19[2] = v33 + 1;
      sub_23A629358(v31, v19 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v33);
      sub_23A628EC4(v11);
      v20 += 8;
      v16 = v34 - 1;
      a1 = v61;
    }

    while (v16);

    v15 = v54;
    v12 = v55;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  sub_23A636280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98750, &qword_23A639310);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_23A639330;
  if (qword_27DF97FF0 != -1)
  {
    swift_once();
  }

  v36 = qword_27DF98340;
  *(v35 + 32) = qword_27DF98340;
  v37 = qword_27DF97FF8;
  v38 = v36;
  if (v37 == -1)
  {
    v39 = v38;
  }

  else
  {
    swift_once();
    v39 = qword_27DF98340;
  }

  v40 = qword_27DF98348;
  *(v35 + 40) = qword_27DF98348;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98210, &qword_23A637CC0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  v45 = *(*v44 + 144);
  v46 = sub_23A636260();
  (*(*(v46 - 8) + 56))(v44 + v45, 1, 1, v46);
  (*(v56 + 32))(v44 + qword_27DF9C738, v15, v12);
  v47 = (v44 + qword_27DF9C740);
  *v47 = 0;
  v47[1] = 0xE000000000000000;
  v48 = (v44 + qword_27DF9C748);
  *v48 = 0;
  v48[1] = 0xE000000000000000;
  v49 = (v44 + *(*v44 + 120));
  v50 = MEMORY[0x277D84FA0];
  *v49 = v19;
  v49[1] = v50;
  *(v44 + *(*v44 + 128)) = v35;
  *(v44 + *(*v44 + 136)) = v39;
  v51 = v40;
  v52 = v39;
  return v44;
}

uint64_t sub_23A635D34(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23A635D7C(uint64_t a1)
{
  v2 = sub_23A636290();
  if (v3 <= 0x3F)
  {
    v9 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v10 = *(v5 - 8) + 64;
      sub_23A635F18();
      if (v8 <= 0x3F)
      {
        v11 = *(v7 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_23A635F18()
{
  if (!qword_27DF98828[0])
  {
    sub_23A636260();
    v0 = sub_23A636910();
    if (!v1)
    {
      atomic_store(v0, qword_27DF98828);
    }
  }
}

uint64_t sub_23A635F78(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23A636008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PermissionResponse.init(question:choice:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

id PermissionResponse.choice.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t sub_23A636130()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}