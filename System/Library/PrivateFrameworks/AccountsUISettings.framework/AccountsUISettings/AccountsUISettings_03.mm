uint64_t sub_23DD25E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23DD25ED0()
{
  result = qword_27E30E8E8;
  if (!qword_27E30E8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E8F0, &qword_23DD45918);
    sub_23DD25F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E8E8);
  }

  return result;
}

unint64_t sub_23DD25F54()
{
  result = qword_27E30E8F8;
  if (!qword_27E30E8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E7E0, &qword_23DD44EB8);
    sub_23DD24D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E8F8);
  }

  return result;
}

unint64_t sub_23DD25FEC()
{
  result = qword_27E30E900;
  if (!qword_27E30E900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E908, &qword_23DD45920);
    sub_23DD26070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E900);
  }

  return result;
}

unint64_t sub_23DD26070()
{
  result = qword_27E30E910;
  if (!qword_27E30E910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E918, &qword_23DD45928);
    sub_23DCEF9F0(&qword_27E30E7F0, &qword_27E30E7E8, &qword_23DD44F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E910);
  }

  return result;
}

unint64_t sub_23DD26120()
{
  result = qword_27E30E940;
  if (!qword_27E30E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E948, &qword_23DD45940);
    sub_23DD261A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E940);
  }

  return result;
}

unint64_t sub_23DD261A4()
{
  result = qword_27E30E950;
  if (!qword_27E30E950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E800, &qword_23DD44FA8);
    sub_23DD24040();
    sub_23DD250CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E950);
  }

  return result;
}

unint64_t sub_23DD2623C()
{
  result = qword_27E30E958;
  if (!qword_27E30E958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E960, &qword_23DD45948);
    sub_23DD25204();
    sub_23DCEF9F0(&qword_27E30E860, &qword_27E30E840, &qword_23DD45010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E958);
  }

  return result;
}

void sub_23DD26348()
{
  sub_23DD264A4();
  if (v0 <= 0x3F)
  {
    sub_23DD26538();
    if (v1 <= 0x3F)
    {
      sub_23DD265CC(319, &qword_27E30E988, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_23DD265CC(319, &qword_27E30E990, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23DD2C848(319, &qword_27E30E998, MEMORY[0x277CE8520], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23DD264A4()
{
  if (!qword_27E30E978)
  {
    type metadata accessor for AccountsUIModel(255);
    sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    v0 = sub_23DD41898();
    if (!v1)
    {
      atomic_store(v0, &qword_27E30E978);
    }
  }
}

void sub_23DD26538()
{
  if (!qword_27E30E980)
  {
    type metadata accessor for AccountAddViewModel(255);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    v0 = sub_23DD41898();
    if (!v1)
    {
      atomic_store(v0, &qword_27E30E980);
    }
  }
}

void sub_23DD265CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23DD26644()
{
  sub_23DD266C8();
  if (v0 <= 0x3F)
  {
    sub_23DD41408();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DD266C8()
{
  if (!qword_27E30E9B0)
  {
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
    v0 = sub_23DD41898();
    if (!v1)
    {
      atomic_store(v0, &qword_27E30E9B0);
    }
  }
}

uint64_t sub_23DD267CC()
{
  result = sub_23DCEFAE8(319, &qword_2814FCC50, 0x277CB8F30);
  if (v1 <= 0x3F)
  {
    result = sub_23DD41408();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23DD268B4()
{
  result = qword_27E30E9B8;
  if (!qword_27E30E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E9B8);
  }

  return result;
}

uint64_t sub_23DD26908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DD269AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD26A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD26AA8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_23DD26B2C()
{
  result = qword_27E30E9E0;
  if (!qword_27E30E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E9D8, &qword_23DD45C00);
    sub_23DD26BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E9E0);
  }

  return result;
}

unint64_t sub_23DD26BB0()
{
  result = qword_27E30E9E8;
  if (!qword_27E30E9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E9F0, &qword_23DD45C08);
    sub_23DD26C3C();
    sub_23DD26C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E9E8);
  }

  return result;
}

unint64_t sub_23DD26C3C()
{
  result = qword_27E30E9F8;
  if (!qword_27E30E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E9F8);
  }

  return result;
}

unint64_t sub_23DD26C90()
{
  result = qword_27E30EA00;
  if (!qword_27E30EA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EA08, &qword_23DD45C10);
    sub_23DD26D1C();
    sub_23DD26D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA00);
  }

  return result;
}

unint64_t sub_23DD26D1C()
{
  result = qword_27E30EA10;
  if (!qword_27E30EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA10);
  }

  return result;
}

unint64_t sub_23DD26D70()
{
  result = qword_27E30EA18;
  if (!qword_27E30EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EA20, &qword_23DD45C18);
    sub_23DD26DFC();
    sub_23DD26D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA18);
  }

  return result;
}

unint64_t sub_23DD26DFC()
{
  result = qword_27E30EA28;
  if (!qword_27E30EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA28);
  }

  return result;
}

uint64_t objectdestroy_372Tm()
{
  v1 = type metadata accessor for ShowAddButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 40);

  v7 = *(v0 + v3 + 56);

  v8 = *(v1 + 32);
  v9 = sub_23DD41408();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  MEMORY[0x23EEFE770](v5 + *(v1 + 40));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_23DD26FA8(char a1)
{
  v3 = *(type metadata accessor for ShowAddButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_23DD20EC0(a1, v4);
}

unint64_t sub_23DD27018()
{
  result = qword_27E30EA30;
  if (!qword_27E30EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E9D0, &qword_23DD45BF8);
    sub_23DCEF9F0(&qword_27E30EA38, &qword_27E30E9C8, &qword_23DD45BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA30);
  }

  return result;
}

uint64_t sub_23DD270D0(uint64_t a1)
{
  v4 = *(type metadata accessor for ShowAddButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23DD03B48;

  return sub_23DD21378(a1, v6, v7, v1 + v5);
}

uint64_t sub_23DD271C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD2CE34;

  return sub_23DD247B0(a1, v5);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DD272C0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23DD2731C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23DD2731C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23DD273E8(v11, 0, 0, 1, a1, a2);
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
    sub_23DCEFBF0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_23DD273E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23DD274F4(a5, a6);
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
    result = sub_23DD42568();
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

uint64_t sub_23DD274F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_23DD27540(a1, a2);
  sub_23DD27670(&unk_28500CA40);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23DD27540(uint64_t a1, unint64_t a2)
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

  v6 = sub_23DD2775C(v5, 0);
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

  result = sub_23DD42568();
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
        v10 = sub_23DD42208();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DD2775C(v10, 0);
        result = sub_23DD42528();
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

uint64_t sub_23DD27670(uint64_t result)
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

  result = sub_23DD277D0(result, v12, 1, v3);
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

void *sub_23DD2775C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA88, &qword_23DD45D38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23DD277D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA88, &qword_23DD45D38);
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

_BYTE **sub_23DD278C4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_23DD278D4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_23DD278F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_23DD27928(uint64_t a1)
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
    sub_23DD425C8();
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
  result = sub_23DD42558();
  *v1 = result;
  return result;
}

double sub_23DD279C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23DCEA154(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23DD28A90();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_23DD2AD18((*(v12 + 56) + 32 * v9), a3);
    sub_23DD28290(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_23DD27A6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED10, &qword_23DD46338);
  v36 = a2;
  result = sub_23DD425E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_23DCEE260(v25, v37);
      }

      else
      {
        sub_23DCEE1FC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23DD42688();
      sub_23DD421D8();
      result = sub_23DD426A8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23DCEE260(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23DD27D30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED08, &qword_23DD46330);
  v38 = a2;
  result = sub_23DD425E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_23DD42688();
      sub_23DD421D8();
      result = sub_23DD426A8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23DD27FD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAC8, &qword_23DD45EF8);
  v36 = a2;
  result = sub_23DD425E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23DD2AD18(v25, v37);
      }

      else
      {
        sub_23DCEFBF0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23DD42688();
      sub_23DD421D8();
      result = sub_23DD426A8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23DD2AD18(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23DD28290(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23DD424C8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_23DD42688();

      sub_23DD421D8();
      v14 = sub_23DD426A8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23DD28440(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23DCEA154(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23DD27D30(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23DCEA154(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_23DD42678();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23DD28920();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_23DD285BC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23DCEA154(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23DD28A90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23DD27FD8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23DCEA154(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23DD42678();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_23DD2AD18(a1, v23);
  }

  else
  {
    sub_23DD2870C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_23DD2870C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23DD2AD18(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_23DD28778()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED10, &qword_23DD46338);
  v2 = *v0;
  v3 = sub_23DD425D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_23DCEE1FC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23DCEE260(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_23DD28920()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED08, &qword_23DD46330);
  v2 = *v0;
  v3 = sub_23DD425D8();
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

void *sub_23DD28A90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAC8, &qword_23DD45EF8);
  v2 = *v0;
  v3 = sub_23DD425D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23DCEFBF0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23DD2AD18(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void (*sub_23DD28C34(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEFDD80](a2, a3);
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
    *v3 = v4;
    return sub_23DD28CB4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23DD28CBC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EEFDD80](a2, a3);
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
    return sub_23DD28D3C;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD28D6C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DD42648() & 1;
  }
}

uint64_t sub_23DD28DE0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23DD28ED4;

  return v6(v2 + 32);
}

uint64_t sub_23DD28ED4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

void *sub_23DD28FE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_23DD41528();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v14[1] = *a2;
  v15 = *(a2 + 8);
  LODWORD(a1) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC0, &qword_23DD462B8) + 48);
  *a3 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC90, &qword_23DD462A8);
  result = MEMORY[0x23EEFD790](v14, v12);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v14[0] + 16))
  {
    (*(v7 + 16))(v10, v14[0] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6);

    swift_getAtKeyPath();
    return (*(v7 + 8))(v10, v6);
  }

  __break(1u);
  return result;
}

void *sub_23DD2917C@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v9[1] = *a1;
  v10 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC90, &qword_23DD462A8);
  result = MEMORY[0x23EEFD790](v9, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v9[0];
    if (v4 < *(v9[0] + 16))
    {
      v8 = sub_23DD41528();
      (*(*(v8 - 8) + 16))(a3, v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v4, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD29254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a5;
  v10[1] = *a4;
  v11 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC90, &qword_23DD462A8);
  MEMORY[0x23EEFD790](v10);
  v7 = v10[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_23DD28D58(v7);
  v7 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 < v7[2])
  {
    v9 = sub_23DD41528();
    (*(*(v9 - 8) + 24))(v7 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v6, a1, v9);
    v10[0] = v7;
    return sub_23DD41F68();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_23DD29358@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a2;
  v10[1] = *a1;
  v11 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBB8, &qword_23DD46148);
  result = MEMORY[0x23EEFD790](v10, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v10[0] + 16))
  {
    v7 = v10[0] + 16 * v4;
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);

    *a3 = v9;
    a3[1] = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD293F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *a5;
  v12[1] = *a4;
  v13 = *(a4 + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBB8, &qword_23DD46148);
  MEMORY[0x23EEFD790](v12);
  v8 = v12[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_23DD28D44(v8);
  v8 = result;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 < *(v8 + 16))
  {
    v10 = v8 + 16 * v7;
    v11 = *(v10 + 40);
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;

    v12[0] = v8;
    return sub_23DD41F68();
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_23DD294C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED10, &qword_23DD46338);
    v3 = sub_23DD425F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DCFD8B0(v4, &v13, &qword_27E30ED18, &unk_23DD46340);
      v5 = v13;
      v6 = v14;
      result = sub_23DCEA154(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23DCEE260(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_23DD295FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED08, &qword_23DD46330);
    v3 = sub_23DD425F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23DCEA154(v5, v6);
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

unint64_t sub_23DD29700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED00, &qword_23DD46328);
    v3 = sub_23DD425F8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23DCEA210(v6);
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

unint64_t sub_23DD297F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB20, &qword_23DD46078);
    v3 = sub_23DD425F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23DCEA154(v5, v6);
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

unint64_t sub_23DD298FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAA8, &qword_23DD45D60);
    v3 = sub_23DD425F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DCFD8B0(v4, v13, &qword_27E30EAA0, &unk_23DD45D50);
      result = sub_23DCEA1CC(v13);
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
      result = sub_23DD2AD18(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23DD29A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAC8, &qword_23DD45EF8);
    v3 = sub_23DD425F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DCFD8B0(v4, &v13, &qword_27E30EAD0, &qword_23DD45F00);
      v5 = v13;
      v6 = v14;
      result = sub_23DCEA154(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23DD2AD18(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23DD29B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAF8, &qword_23DD45F28);
    v3 = sub_23DD425F8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23DCEA154(v5, v6);
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

uint64_t sub_23DD29CB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23DD2CE34;

  return sub_23DD12C60(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23DD29D8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD2CE34;

  return sub_23DD28DE0(a1, v5);
}

void sub_23DD29E44(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23DD10698(a1, v5, v6, v7, v1 + v4, v8);
}

id sub_23DD29EF4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_23DD42138();
  v2 = [v0 persistentDomainForName_];

  if (v2)
  {
    v3 = sub_23DD42118();

    if (*(v3 + 16) && (v4 = sub_23DCEA154(0xD000000000000014, 0x800000023DD4C040), (v5 & 1) != 0))
    {
      sub_23DCEFBF0(*(v3 + 56) + 32 * v4, v13);

      if (swift_dynamicCast() & 1) != 0 && (v12)
      {
        LOBYTE(v6) = 1;
        return (v6 & 1);
      }
    }

    else
    {
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    v6 = MobileGestalt_copy_regionCode_obj();

    if (v6)
    {
      v9 = sub_23DD42178();
      v11 = v10;

      if (v9 == 18499 && v11 == 0xE200000000000000)
      {

        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = sub_23DD42648();
      }
    }

    return (v6 & 1);
  }

  __break(1u);
  return result;
}

id sub_23DD2A0CC()
{
  v9[3] = &type metadata for AccountAddViewModel.DimpleKey;
  v9[4] = sub_23DD2AD28();
  v0 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  if (v0)
  {
    return 0;
  }

  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 isFeatureSupported];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 sharedInstance];
  v5 = [v4 isFeatureAvailable];

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 isFeatureEnabled];

  return v7;
}

void sub_23DD2A1CC(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v85 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA90, &qword_23DD45D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v80 - v9;
  v10 = sub_23DD41658();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v80 - v16;
  v18 = *MEMORY[0x277CB8C00];
  if (sub_23DD42178() == a1 && v19 == a2)
  {

    if (sub_23DD2A0CC())
    {
      goto LABEL_7;
    }
  }

  else
  {
    v21 = sub_23DD42648();

    if (v21 & 1) != 0 && (sub_23DD2A0CC())
    {
LABEL_7:
      if (qword_2814FD160 != -1)
      {
        swift_once();
      }

      v22 = __swift_project_value_buffer(v10, qword_2814FD168);
      swift_beginAccess();
      (*(v11 + 16))(v17, v22, v10);
      v23 = sub_23DD42338();
      v24 = sub_23DD41638();
      v25 = os_log_type_enabled(v24, v23);
      v83 = a4;
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v86[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_23DD2731C(a1, a2, v86);
        _os_log_impl(&dword_23DCDB000, v24, v23, "AccountAddViewModel.ratchet(for:completion:) Presenting ratchet for account type %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x23EEFE6D0](v27, -1, -1);
        MEMORY[0x23EEFE6D0](v26, -1, -1);
      }

      (*(v11 + 8))(v17, v10);
      v28 = objc_allocWithZone(MEMORY[0x277CD47A8]);
      v29 = sub_23DD42138();
      v82 = [v28 initWithIdentifier_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA98, &qword_23DD45D48);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23DD44170;
      LODWORD(v86[0]) = 9;
      sub_23DD424F8();
      v31 = sub_23DD42138();
      v32 = objc_opt_self();
      v33 = [v32 bundleWithIdentifier_];

      if (v33)
      {
        v34 = sub_23DD42138();
        v35 = sub_23DD42138();
        v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

        v81 = v36;
        v37 = sub_23DD42178();
        *(inited + 96) = MEMORY[0x277D837D0];
        *(inited + 72) = v37;
        *(inited + 80) = v38;
        LODWORD(v86[0]) = 9;
        sub_23DD424F8();
        v39 = sub_23DD42138();
        v40 = [v32 bundleWithIdentifier_];

        if (v40)
        {
          v41 = sub_23DD42138();
          v42 = sub_23DD42138();
          v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

          v80 = v43;
          v44 = sub_23DD42178();
          *(inited + 168) = MEMORY[0x277D837D0];
          *(inited + 144) = v44;
          *(inited + 152) = v45;
          LODWORD(v86[0]) = 11;
          sub_23DD424F8();
          v46 = sub_23DD42138();
          v47 = [v32 bundleWithIdentifier_];

          if (v47)
          {
            v48 = sub_23DD42138();
            v49 = sub_23DD42138();
            v50 = [v47 localizedStringForKey:v48 value:v49 table:0];

            v51 = sub_23DD42178();
            *(inited + 240) = MEMORY[0x277D837D0];
            *(inited + 216) = v51;
            *(inited + 224) = v52;
            LODWORD(v86[0]) = 0;
            sub_23DD424F8();
            v53 = sub_23DD42138();
            v54 = [v32 bundleWithIdentifier_];

            if (v54)
            {
              v55 = sub_23DD42138();
              v56 = sub_23DD42138();
              v57 = [v54 localizedStringForKey:v55 value:v56 table:0];

              v58 = sub_23DD42178();
              *(inited + 312) = MEMORY[0x277D837D0];
              *(inited + 288) = v58;
              *(inited + 296) = v59;
              LODWORD(v86[0]) = 1;
              sub_23DD424F8();
              v60 = sub_23DD42138();
              v61 = [v32 bundleWithIdentifier_];

              if (v61)
              {
                v62 = sub_23DD42138();
                v63 = sub_23DD42138();
                v64 = [v61 localizedStringForKey:v62 value:v63 table:0];

                v65 = sub_23DD42178();
                *(inited + 384) = MEMORY[0x277D837D0];
                *(inited + 360) = v65;
                *(inited + 368) = v66;
                LODWORD(v86[0]) = 2;
                sub_23DD424F8();
                v67 = v84;
                sub_23DD41248();
                v68 = sub_23DD41258();
                v69 = *(v68 - 8);
                if ((*(v69 + 48))(v67, 1, v68) != 1)
                {

                  *(inited + 456) = v68;
                  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 432));
                  (*(v69 + 32))(boxed_opaque_existential_1, v67, v68);
                  sub_23DD298FC(inited);
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAA0, &unk_23DD45D50);
                  swift_arrayDestroy();
                  v71 = sub_23DD42108();

                  v72 = swift_allocObject();
                  v73 = v83;
                  *(v72 + 16) = v85;
                  *(v72 + 24) = v73;
                  v86[4] = sub_23DD2ACE8;
                  v86[5] = v72;
                  v86[0] = MEMORY[0x277D85DD0];
                  v86[1] = 1107296256;
                  v86[2] = sub_23DD0FF54;
                  v86[3] = &block_descriptor_439;
                  v74 = _Block_copy(v86);

                  v75 = v82;
                  [v82 armWithOptions:v71 completion:v74];
                  _Block_release(v74);

                  return;
                }

                goto LABEL_29;
              }

LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              return;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v10, qword_2814FD168);
  swift_beginAccess();
  (*(v11 + 16))(v15, v76, v10);
  v77 = sub_23DD42338();
  v78 = sub_23DD41638();
  if (os_log_type_enabled(v78, v77))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_23DCDB000, v78, v77, "AccountAddViewModel.ratchet(for:completion:) no need to present ratchet, moving on", v79, 2u);
    MEMORY[0x23EEFE6D0](v79, -1, -1);
  }

  (*(v11 + 8))(v15, v10);
  v85(1);
}

_OWORD *sub_23DD2AD18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23DD2AD28()
{
  result = qword_27E30EAB0;
  if (!qword_27E30EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EAB0);
  }

  return result;
}

uint64_t sub_23DD2AD7C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DD42648() & 1;
  }
}

uint64_t sub_23DD2ADE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DD41258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  *&v44[0] = a1;
  *(&v44[0] + 1) = a2;
  *&v45 = 46;
  *(&v45 + 1) = 0xE100000000000000;
  sub_23DCF4570();
  v15 = (sub_23DD42458() + 16);
  if (!*v15)
  {

    return 0;
  }

  v16 = &v15[2 * *v15];
  v17 = *v16;
  v18 = v16[1];

  v19 = sub_23DD421A8();
  v21 = v20;

  v22 = sub_23DD42138();
  v23 = NSClassFromString(v22);

  if (!v23)
  {
    goto LABEL_5;
  }

  v41 = v19;
  v24 = [objc_opt_self() bundleForClass_];
  v25 = sub_23DD42138();
  v26 = sub_23DD42138();
  v23 = [v24 URLForResource:v25 withExtension:v26];

  if (!v23)
  {
LABEL_5:

    return v23;
  }

  sub_23DD41238();

  (*(v5 + 32))(v14, v12, v4);
  (*(v5 + 16))(v9, v14, v4);
  v27 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v29 = sub_23DD23BC0(v9);
  v30 = sub_23DD42138();
  v31 = [v29 valueForKey_];

  if (v31)
  {
    sub_23DD424A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v44[0] = v45;
  v44[1] = v46;
  if (!*(&v46 + 1))
  {
    (*(v5 + 8))(v14, v4);

    sub_23DCEFA38(v44, &qword_27E30E1F0, &unk_23DD43F80);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAB8, &qword_23DD45DB0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    (*(v5 + 8))(v14, v4);

    return 0;
  }

  v39 = v29;
  v32 = v42;
  v33 = *(v42 + 16);
  if (!v33)
  {
LABEL_29:

    (*(v5 + 8))(v14, v4);
    return 0;
  }

  v34 = 0;
  v40 = 0x800000023DD4BB20;
  while (v34 < *(v32 + 16))
  {
    v23 = *(v32 + 8 * v34 + 32);
    v42 = 0xD000000000000013;
    v43 = v40;

    sub_23DD424F8();
    if (*(v23 + 2) && (v35 = sub_23DCEA1CC(v44), (v36 & 1) != 0))
    {
      sub_23DCEFBF0(*(v23 + 7) + 32 * v35, &v45);
      sub_23DCEF8B0(v44);
      if (swift_dynamicCast())
      {
        if (v42 == v41 && v43 == v21)
        {

LABEL_31:
          (*(v5 + 8))(v14, v4);

          return v23;
        }

        v37 = sub_23DD42648();

        if (v37)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {

      result = sub_23DCEF8B0(v44);
    }

    if (v33 == ++v34)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD2B3AC(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_23DD2CE34;

  return sub_23DD1121C(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_23DD2B4C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DD2B540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23DD2CE34;

  return sub_23DD0506C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23DD2B638()
{
  v1 = *(sub_23DD41408() - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t objectdestroy_516Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  a1(*(v1 + 48));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_23DD2B6F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23DD03B48;

  return sub_23DD04990(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23DD2B828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23DD2CE34;

  return sub_23DD00A30(a1, v4, v5, v7, v6);
}

unint64_t sub_23DD2B9E0()
{
  result = qword_27E30EB78;
  if (!qword_27E30EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EB70, &qword_23DD46130);
    sub_23DCEF9F0(&qword_27E30EB80, &qword_27E30EB88, &qword_23DD46138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EB78);
  }

  return result;
}

unint64_t sub_23DD2BA98()
{
  result = qword_27E30EB98;
  if (!qword_27E30EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EB38, &qword_23DD460D8);
    sub_23DD03710(&qword_27E30E9C0, type metadata accessor for ShowAddButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EB98);
  }

  return result;
}

uint64_t objectdestroy_562Tm()
{
  v1 = *(v0 + 48);

  MEMORY[0x23EEFE770](v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23DD2BBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_23DCFC0BC(a1, a2, a3 & 1);
  }

  else
  {
    sub_23DCFC0BC(a3, a4, a5 & 1);
  }
}

uint64_t sub_23DD2BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_23DCEF904(a1, a2, a3 & 1);
  }

  else
  {
    sub_23DCEF904(a3, a4, a5 & 1);
  }
}

void *sub_23DD2BC80@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  result = sub_23DD248A8(*a1, v2[2], v2[3], v2[4]);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_23DD2BCD4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v7[1] = a1[2];
  v8 = v4;
  v7[0] = v5;
  return v2(&v8, v7);
}

unint64_t sub_23DD2BD1C()
{
  result = qword_27E30EBD0;
  if (!qword_27E30EBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EBC8, &qword_23DD46170);
    sub_23DD2BDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EBD0);
  }

  return result;
}

unint64_t sub_23DD2BDA0()
{
  result = qword_27E30EBD8;
  if (!qword_27E30EBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EBE0, &qword_23DD46178);
    sub_23DD2BE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EBD8);
  }

  return result;
}

unint64_t sub_23DD2BE2C()
{
  result = qword_27E30EBE8;
  if (!qword_27E30EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EBE8);
  }

  return result;
}

void *sub_23DD2BE80@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23DD29358((v1 + 4), v1 + 7, a1);
}

unint64_t sub_23DD2BEA8()
{
  result = qword_27E30EC20;
  if (!qword_27E30EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EC08, &qword_23DD461C0);
    sub_23DCEF9F0(&qword_27E30EC28, &qword_27E30EC18, &qword_23DD46200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EC20);
  }

  return result;
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

unint64_t sub_23DD2BFE4()
{
  result = qword_27E30EC48;
  if (!qword_27E30EC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EC40, &qword_23DD46218);
    sub_23DCEF9F0(&qword_27E30EC50, &qword_27E30EC58, &qword_23DD46220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EC48);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_571Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_575Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23DD2C1E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC0, &qword_23DD462B8);
  return v4(a1, a1 + *(v5 + 48));
}

unint64_t sub_23DD2C240()
{
  result = qword_27E30ECB8;
  if (!qword_27E30ECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30ECB0, &qword_23DD462B0);
    sub_23DD2BDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ECB8);
  }

  return result;
}

void *sub_23DD2C2C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23DD2917C((v1 + 4), v1 + 7, a1);
}

uint64_t objectdestroy_581Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23DD2C334()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0) - 8) + 80);

  return sub_23DD165D0(v0 + 16);
}

uint64_t objectdestroy_546Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23DD2C3F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DD2CE34;

  return sub_23DD03AB8();
}

unint64_t sub_23DD2C4FC()
{
  result = qword_27E30ECE8;
  if (!qword_27E30ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30ECE0, &qword_23DD46320);
    sub_23DD2C588();
    sub_23DD2C5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ECE8);
  }

  return result;
}

unint64_t sub_23DD2C588()
{
  result = qword_27E30ECF0;
  if (!qword_27E30ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ECF0);
  }

  return result;
}

unint64_t sub_23DD2C5DC()
{
  result = qword_27E30ECF8;
  if (!qword_27E30ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ECF8);
  }

  return result;
}

void sub_23DD2C658()
{
  sub_23DD2C7E0();
  if (v0 <= 0x3F)
  {
    sub_23DD265CC(319, &qword_27E30E990, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23DD2C848(319, &qword_27E30E998, MEMORY[0x277CE8520], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23DD2C848(319, &qword_27E30ED38, MEMORY[0x277CE8520], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_23DD2C848(319, &qword_27E30ED40, MEMORY[0x277CE8680], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23DD2C7E0()
{
  if (!qword_27E30ED30)
  {
    sub_23DCEFAE8(255, &qword_2814FCC50, 0x277CB8F30);
    v0 = sub_23DD42448();
    if (!v1)
    {
      atomic_store(v0, &qword_27E30ED30);
    }
  }
}

void sub_23DD2C848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23DD2C8CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23DD2C914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD5_AaBPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA6ZStackVyAA012_ConditionalK0VyAPy18AccountsUISettings010AccountAddC6LegacyVAQ0pqC6ModernVGASGGAA25_AppearanceActionModifierVG_SSAA05TupleC0VyAA6ButtonVyAA4TextVG_A6_tGAPyA5_A5_GQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E3D8, &qword_23DD44200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E610, &qword_23DD44D00);
  a4();
  sub_23DCF4570();
  sub_23DCEF9F0(&qword_27E30E3E0, &qword_27E30E3D8, &qword_23DD44200);
  sub_23DD24040();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23DD2CA68()
{
  result = qword_27E30ED48;
  if (!qword_27E30ED48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30ED50, "b}");
    sub_23DCEF9F0(&qword_27E30EA58, &qword_27E30EA50, &qword_23DD45CB8);
    sub_23DD26D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ED48);
  }

  return result;
}

unint64_t sub_23DD2CB24()
{
  result = qword_27E30ED58;
  if (!qword_27E30ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ED58);
  }

  return result;
}

unint64_t sub_23DD2CBB0()
{
  result = qword_27E30EDF0;
  if (!qword_27E30EDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EDE8, &qword_23DD46588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EDF0);
  }

  return result;
}

unint64_t sub_23DD2CC34()
{
  result = qword_27E30EE10;
  if (!qword_27E30EE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EE18, &qword_23DD465A8);
    sub_23DCEF9F0(&qword_27E30ED80, &qword_27E30ED78, &qword_23DD46538);
    sub_23DCEF9F0(&qword_27E30ED88, &qword_27E30ED60, &qword_23DD46520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EE10);
  }

  return result;
}

unint64_t sub_23DD2CD14()
{
  result = qword_27E30EE20;
  if (!qword_27E30EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EE28, &unk_23DD465B0);
    sub_23DCEF9F0(&qword_27E30EDC8, &qword_27E30EDB8, &qword_23DD46568);
    sub_23DCEF9F0(&qword_27E30EDD0, &qword_27E30EDA8, &qword_23DD46558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EE20);
  }

  return result;
}

void sub_23DD2CE8C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t GenericDetailsView.init(account:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  result = sub_23DD41888();
  *a2 = result;
  a2[1] = v5;
  a2[2] = a1;
  a2[3] = 0;
  return result;
}

uint64_t sub_23DD2CF94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GenericAccountsUIPlugin();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t GenericDetailsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE30, &qword_23DD465C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  v7 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v13 = *v1;
  v8 = v13;
  v14 = v7;
  v15 = v9;
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE38, &qword_23DD465C8);
  sub_23DCEF9F0(&qword_27E30EE40, &qword_27E30EE38, &qword_23DD465C8);
  sub_23DD41BF8();
  v12[4] = v8;
  v12[5] = v7;
  v12[6] = v9;
  v12[7] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE48, &qword_23DD465D0);
  sub_23DCEF9F0(&qword_27E30EE50, &qword_27E30EE30, &qword_23DD465C0);
  sub_23DCEF9F0(&qword_27E30EE58, &qword_27E30EE48, &qword_23DD465D0);
  sub_23DD41DB8();
  return (*(v3 + 8))(v6, v2);
}

void sub_23DD2D1E4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE80, &qword_23DD46748);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  if (!a1)
  {
    goto LABEL_8;
  }

  v34 = v13;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = [v16 sharedConnection];
  if (!v18)
  {
    __break(1u);
LABEL_8:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v18 effectiveBoolValueForSetting_];

  v32 = a5;
  if (v20 == 2)
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    v22 = sub_23DD41888();
    v24 = v23;
    v21 = v22;
  }

  else
  {
    v24 = 0;
    v22 = 1;
  }

  MEMORY[0x28223BE20](v21);
  *(&v31 - 4) = a1;
  *(&v31 - 3) = a2;
  v25 = v33;
  *(&v31 - 2) = a3;
  *(&v31 - 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE88, &qword_23DD46750);
  sub_23DCEF9F0(&qword_27E30EE90, &qword_27E30EE88, &qword_23DD46750);
  sub_23DD41FE8();
  v26 = v10[2];
  v27 = v34;
  v26(v34, v15, v9);
  v28 = v32;
  *v32 = v22;
  v28[1] = v24;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE98, &qword_23DD46758);
  v26(v28 + *(v29 + 48), v27, v9);
  sub_23DD306B8(v22);
  sub_23DD306C8(v22);
  v30 = v10[1];
  v30(v15, v9);
  v30(v27, v9);
  sub_23DD306C8(v22);
}

uint64_t sub_23DD2D56C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v149 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEA0, &unk_23DD46760);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v150 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v159 = v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEA8, &qword_23DD47020);
  v15 = *(v14 - 8);
  v154 = v14;
  v155 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v142 = v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v152 = v133 - v19;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEB0, &qword_23DD46770);
  v20 = *(*(v153 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v153);
  v141 = v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v151 = v133 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEB8, &qword_23DD46778);
  v147 = *(v148 - 8);
  v24 = *(v147 + 64);
  v25 = MEMORY[0x28223BE20](v148);
  v158 = v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v140 = v133 - v28;
  MEMORY[0x28223BE20](v27);
  v160 = v133 - v29;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEC0, &qword_23DD46780);
  v145 = *(v146 - 8);
  v30 = *(v145 + 64);
  v31 = MEMORY[0x28223BE20](v146);
  v157 = v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v162 = a1;
  v163 = a2;
  v164 = a3;
  v165 = a4;
  v156 = v133 - v33;
  sub_23DD41798();
  v144 = "h the account type";
  v34 = sub_23DD42138();
  v143 = objc_opt_self();
  v35 = [v143 bundleWithIdentifier_];

  if (!v35)
  {
    __break(1u);
    goto LABEL_22;
  }

  v36 = sub_23DD42138();
  v37 = sub_23DD42138();
  v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

  v39 = sub_23DD42178();
  v41 = v40;

  v42 = sub_23DD422C8();

  v43 = a1;
  v44 = a3;
  v45 = sub_23DD422B8();
  v46 = swift_allocObject();
  v161 = a1;
  v47 = MEMORY[0x277D85700];
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = v161;
  v46[5] = a2;
  v46[6] = v44;
  v46[7] = a4;
  v48 = v43;
  v49 = v44;

  v138 = v42;
  v50 = sub_23DD422B8();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v47;
  v52 = v49;
  v51[4] = v161;
  v51[5] = a2;
  v139 = a2;
  v51[6] = v49;
  v51[7] = a4;
  sub_23DD41F88();
  v166 = v39;
  v167 = v41;
  v53 = sub_23DCF4570();
  v54 = v152;
  sub_23DD42038();
  if (v161)
  {
    v55 = v54;
    v56 = objc_opt_self();
    v57 = v48;
    v137 = v56;
    v58 = [v56 sharedConnection];
    v59 = v155;
    if (v58)
    {
      v60 = v58;
      v61 = *MEMORY[0x277D25CD0];
      v62 = [v58 effectiveBoolValueForSetting_];
      v136 = v57;

      v63 = v62 == 2;
      KeyPath = swift_getKeyPath();
      v65 = swift_allocObject();
      *(v65 + 16) = v63;
      v67 = *(v59 + 32);
      v66 = v59 + 32;
      v68 = v151;
      v135 = v67;
      v67(v151, v55, v154);
      v69 = (v68 + *(v153 + 36));
      *v69 = KeyPath;
      v69[1] = sub_23DCFD788;
      v69[2] = v65;
      sub_23DCEC2F0();
      *&v168[0] = v70;
      *(&v168[0] + 1) = v71;
      v152 = sub_23DD30714();
      sub_23DD41D68();

      sub_23DCEFA38(v68, &qword_27E30EEB0, &qword_23DD46770);
      *&v168[0] = v52;
      *(&v168[0] + 1) = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
      sub_23DD41EB8();
      v72 = v52;
      v73 = v166;
      v74 = *MEMORY[0x277CB8AB8];
      *&v168[0] = sub_23DD42178();
      *(&v168[0] + 1) = v75;
      v76 = [v73 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (!v76)
      {
        memset(v168, 0, sizeof(v168));
        sub_23DCEFA38(v168, &qword_27E30E1F0, &unk_23DD43F80);
        goto LABEL_12;
      }

      v151 = v61;
      sub_23DD424A8();
      swift_unknownObjectRelease();
      sub_23DCEFA38(v168, &qword_27E30E1F0, &unk_23DD43F80);
      *&v168[0] = v72;
      *(&v168[0] + 1) = a4;
      sub_23DD41EB8();
      v77 = v166;
      v78 = [v166 accountType];

      if (v78)
      {
        v134 = v72;
        v79 = [v78 identifier];

        if (v79)
        {
          v80 = sub_23DD42178();
          v82 = v81;

          v83 = *MEMORY[0x277CB8BA0];
          v84 = sub_23DD42178();
          if (v82)
          {
            if (v80 == v84 && v82 == v85)
            {

LABEL_12:
              v86 = 1;
              v87 = v159;
              v88 = v148;
              v89 = v147;
LABEL_18:
              (*(v89 + 56))(v87, v86, 1, v88);
              v120 = v145;
              v121 = *(v145 + 16);
              v122 = v157;
              v123 = v146;
              v121(v157, v156, v146);
              v161 = *(v89 + 16);
              v161(v158, v160, v88);
              v124 = v87;
              v125 = v150;
              sub_23DCDF63C(v124, v150);
              v126 = v149;
              v121(v149, v122, v123);
              v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EED8, &qword_23DD467B8);
              v128 = v158;
              v161(&v126[*(v127 + 48)], v158, v88);
              sub_23DCDF63C(v125, &v126[*(v127 + 64)]);
              sub_23DCDF6AC(v159);
              v129 = *(v89 + 8);
              v129(v160, v88);
              v130 = *(v120 + 8);
              v130(v156, v123);
              sub_23DCDF6AC(v125);
              v129(v128, v88);
              return (v130)(v157, v123);
            }

            v132 = sub_23DD42648();

            if (v132)
            {
              goto LABEL_12;
            }

LABEL_15:
            v133[1] = v53;
            v155 = v66;
            v91 = sub_23DD42138();
            v92 = [v143 bundleWithIdentifier_];

            if (v92)
            {
              v93 = sub_23DD42138();
              v94 = sub_23DD42138();
              v95 = [v92 localizedStringForKey:v93 value:v94 table:0];

              v144 = sub_23DD42178();
              v143 = v96;

              v97 = v136;
              v98 = v134;

              v99 = sub_23DD422B8();
              v100 = swift_allocObject();
              v100[2] = v99;
              v101 = MEMORY[0x277D85700];
              v102 = v161;
              v100[3] = MEMORY[0x277D85700];
              v100[4] = v102;
              v103 = v139;
              v100[5] = v139;
              v100[6] = v98;
              v100[7] = a4;
              v104 = v97;
              v105 = v98;

              v106 = sub_23DD422B8();
              v107 = swift_allocObject();
              v107[2] = v106;
              v107[3] = v101;
              v107[4] = v102;
              v107[5] = v103;
              v107[6] = v105;
              v107[7] = a4;
              sub_23DD41F88();
              v166 = v144;
              v167 = v143;
              v108 = v142;
              sub_23DD42038();
              v109 = v104;
              v110 = [v137 sharedConnection];
              if (v110)
              {
                v111 = v110;
                v112 = [v110 effectiveBoolValueForSetting_];

                v113 = swift_getKeyPath();
                v114 = swift_allocObject();
                *(v114 + 16) = v112 == 2;
                v115 = v141;
                v135(v141, v108, v154);
                v116 = (v115 + *(v153 + 36));
                *v116 = v113;
                v116[1] = sub_23DCFDE68;
                v116[2] = v114;
                sub_23DCEC2F0();
                *&v168[0] = v117;
                *(&v168[0] + 1) = v118;
                v119 = v140;
                sub_23DD41D68();

                sub_23DCEFA38(v115, &qword_27E30EEB0, &qword_23DD46770);
                v89 = v147;
                v87 = v159;
                v88 = v148;
                (*(v147 + 32))(v159, v119, v148);
                v86 = 0;
                goto LABEL_18;
              }

              goto LABEL_25;
            }

LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        else
        {
          v90 = *MEMORY[0x277CB8BA0];
          sub_23DD42178();
        }

        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_26:
  type metadata accessor for AccountsUIModel(0);
  sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t sub_23DD2E4B0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v2 = [v7 username];

  if (v2)
  {
    sub_23DD42178();
  }

  sub_23DCF4570();
  result = sub_23DD41C48();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_23DD2E578(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_23DD2E6C4(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v2 = [v6 accountDescription];

  if (v2)
  {
    v3 = sub_23DD42178();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v5;
}

void sub_23DD2E764(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v3 = sub_23DD42138();
  [v4 setAccountDescription_];
}

uint64_t sub_23DD2E7E8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v2 = *MEMORY[0x277CB8AB8];
  *&v10 = sub_23DD42178();
  *(&v10 + 1) = v3;
  v4 = [v8 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v4)
  {
    sub_23DD424A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    result = sub_23DCEFA38(v12, &qword_27E30E1F0, &unk_23DD43F80);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v6 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_9;
  }

  v6 = v8;
  v7 = v9;
LABEL_9:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

void sub_23DD2E91C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v3 = sub_23DD42138();
  [v4 setAccountProperty:v3 forKey:*MEMORY[0x277CB8AB8]];
}

uint64_t sub_23DD2E9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v31 = a5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE70, &qword_23DD466D8);
  v9 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v11 = &v26 - v10;
  v12 = sub_23DD41AA8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E8A0, &unk_23DD466E0);
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  sub_23DD41A88();
  v36 = a1;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DD417D8();
  sub_23DD41A98();
  v32 = v27;
  v33 = v28;
  v34 = v29;
  v35 = a4;
  sub_23DD417D8();
  v22 = *(v30 + 48);
  v23 = v15[2];
  v23(v11, v21, v14);
  v23(&v11[v22], v19, v14);
  sub_23DD41A58();
  v24 = v15[1];
  v24(v19, v14);
  return (v24)(v21, v14);
}

void sub_23DD2ECBC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = sub_23DD42138();
  v13 = [objc_opt_self() bundleWithIdentifier_];

  if (v13)
  {
    v14 = sub_23DD42138();
    v15 = sub_23DD42138();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v17 = sub_23DD42178();
    v19 = v18;

    v24[0] = v17;
    v24[1] = v19;
    sub_23DD41748();
    v20 = sub_23DD41758();
    (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    sub_23DCF4570();
    v22 = a1;
    v23 = a3;

    sub_23DD41F08();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD2EEE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  [v10 reload];

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    v6 = sub_23DD416C8();
    *v7 = !*v7;
    v6(v9, 0);
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

void sub_23DD2F02C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_23DD42138();
  v9 = [objc_opt_self() bundleWithIdentifier_];

  if (v9)
  {
    v10 = sub_23DD42138();
    v11 = sub_23DD42138();
    v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

    sub_23DD42178();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    sub_23DCF4570();
    v14 = a1;
    v15 = a3;

    sub_23DD41F18();
  }

  else
  {
    __break(1u);
  }
}

void sub_23DD2F1AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  aBlock = a3;
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v8 = [v25 isDirty];

  if (v8)
  {
    if (a1)
    {
      v9 = a1;
      v10 = sub_23DCE628C();

      sub_23DD41EB8();
      v11 = v25;
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = a3;
      v12[5] = a4;
      v23 = sub_23DD305E0;
      v24 = v12;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = sub_23DD2CE8C;
      v22 = &block_descriptor_2;
      v13 = _Block_copy(&aBlock);

      v14 = v9;
      v15 = a3;

      [v10 saveAccount:v11 withCompletionHandler:v13];

      _Block_release(v13);
      return;
    }

    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a1;
  v17 = sub_23DD416C8();
  *v18 = !*v18;
  v17(&aBlock, 0);
}

uint64_t sub_23DD2F41C(int a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v43 = a4;
  v44 = a6;
  v45 = a3;
  v42 = a1;
  v8 = sub_23DD42068();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_23DD42098();
  v46 = *(v48 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23DD41658();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_2814FD168);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = a2;
  v21 = sub_23DD41638();
  v22 = sub_23DD42368();

  if (os_log_type_enabled(v21, v22))
  {
    v41 = a5;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v52 = v24;
    *v23 = 136315138;
    if (v42)
    {
      v25 = 0xEB00000000796C6CLL;
      v26 = 0x7566736563637573;
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_23DD42538();

      strcpy(&aBlock, "with an error ");
      HIBYTE(aBlock) = -18;
      v51 = a2;
      v27 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E468, &qword_23DD444B8);
      v28 = sub_23DD42188();
      MEMORY[0x23EEFDA30](v28);

      v25 = *(&aBlock + 1);
      v26 = aBlock;
    }

    v29 = sub_23DD2731C(v26, v25, &v52);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_23DCDB000, v21, v22, "save completed %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x23EEFE6D0](v24, -1, -1);
    MEMORY[0x23EEFE6D0](v23, -1, -1);

    (*(v15 + 8))(v18, v14);
    a5 = v41;
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
  v30 = sub_23DD42388();
  v31 = swift_allocObject();
  v33 = v44;
  v32 = v45;
  v34 = v43;
  v31[2] = v45;
  v31[3] = v34;
  v31[4] = a5;
  v31[5] = v33;
  v56 = sub_23DD30604;
  v57 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v54 = sub_23DCE4C84;
  v55 = &block_descriptor_17;
  v35 = _Block_copy(&aBlock);

  v36 = v32;
  v37 = a5;

  sub_23DD42088();
  *&aBlock = MEMORY[0x277D84F90];
  sub_23DD30610(&qword_2814FCCA0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
  sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0);
  v38 = v47;
  v39 = v50;
  sub_23DD424B8();
  MEMORY[0x23EEFDBD0](0, v13, v38, v35);
  _Block_release(v35);

  (*(v49 + 8))(v38, v39);
  return (*(v46 + 8))(v13, v48);
}

uint64_t sub_23DD2F9E8(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = a1;
    v3 = sub_23DD416C8();
    *v4 = !*v4;
    v3(&v6, 0);
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD2FAF0@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE30, &qword_23DD465C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  v7 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v13 = *v1;
  v8 = v13;
  v14 = v7;
  v15 = v9;
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE38, &qword_23DD465C8);
  sub_23DCEF9F0(&qword_27E30EE40, &qword_27E30EE38, &qword_23DD465C8);
  sub_23DD41BF8();
  v12[4] = v8;
  v12[5] = v7;
  v12[6] = v9;
  v12[7] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE48, &qword_23DD465D0);
  sub_23DCEF9F0(&qword_27E30EE50, &qword_27E30EE30, &qword_23DD465C0);
  sub_23DCEF9F0(&qword_27E30EE58, &qword_27E30EE48, &qword_23DD465D0);
  sub_23DD41DB8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23DD2FD2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DD2FD74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_23DD2FDC4(void *a1)
{
  [a1 copy];
  sub_23DD424A8();
  swift_unknownObjectRelease();
  sub_23DCEFAE8(0, &qword_2814FCC50, 0x277CB8F30);
  swift_dynamicCast();
  type metadata accessor for AccountsUIModel(0);
  sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  *&v50 = sub_23DD41888();
  *(&v50 + 1) = v2;
  *(&v51 + 1) = 0;
  sub_23DD304B8();
  v43 = v50;
  v42 = v45;
  v3 = sub_23DD41F48();
  strcpy(&v54, "DETAILS_ROW_");
  BYTE13(v54) = 0;
  HIWORD(v54) = -5120;
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_23DCEFAE8(0, &qword_27E30E0E0, 0x277CCACA8);
    v4 = sub_23DD423F8();
  }

  v5 = v4;
  v6 = [v4 description];
  v7 = sub_23DD42178();
  v9 = v8;

  MEMORY[0x23EEFDA30](v7, v9);

  v50 = v54;
  *&v51 = 0x10101010001;
  *(&v51 + 1) = v3;
  v52 = 0uLL;
  v53[0] = 0;
  *&v53[1] = v55[0];
  *&v53[4] = *(v55 + 3);
  *&v53[8] = 0;
  *&v53[16] = 0xE000000000000000;
  v53[24] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1E8, &unk_23DD45CF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23DD43560;
  strcpy(&v45, "ONLY_SECTION_");
  HIWORD(v45) = -4864;

  v11 = [a1 identifier];
  if (!v11)
  {
    sub_23DCEFAE8(0, &qword_27E30E0E0, 0x277CCACA8);
    v11 = sub_23DD423F8();
  }

  v12 = v11;
  v13 = [v11 description];
  v14 = sub_23DD42178();
  v16 = v15;

  MEMORY[0x23EEFDA30](v14, v16);

  v17 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE68, &qword_23DD466D0);
  v18 = swift_allocObject();
  v19 = v52;
  v18[3] = v51;
  v18[4] = v19;
  v18[5] = *v53;
  *(v18 + 89) = *&v53[9];
  v20 = v50;
  v18[1] = xmmword_23DD43570;
  v18[2] = v20;
  type metadata accessor for AccountUISettingSection();
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 40) = 0;
  *(v21 + 16) = v17;
  *(v21 + 32) = v18;
  swift_beginAccess();
  *(v21 + 48) = 0;
  *(v21 + 40) = 0;
  swift_beginAccess();
  *(v21 + 56) = 0;
  *(v10 + 32) = v21;
  v49 = v10;
  sub_23DD3050C(&v50, &v45);
  result = [a1 provisionedDataclasses];
  if (result)
  {
    v23 = result;
    v24 = [result count];

    if (v24 < 1)
    {
      sub_23DD30568(&v50);

      return v10;
    }

    result = [a1 accountType];
    if (result)
    {
      v25 = result;
      v26 = [result identifier];

      if (v26)
      {
        v27 = sub_23DD42178();
        v29 = v28;

        v30 = *MEMORY[0x277CB8BA0];
        v31 = sub_23DD42178();
        if (v29)
        {
          if (v27 == v31 && v29 == v32)
          {

LABEL_21:
            sub_23DD30568(&v50);
            return v10;
          }

          v40 = sub_23DD42648();

          if (v40)
          {

            goto LABEL_21;
          }

LABEL_16:
          *&v45 = 0x53414C4341544144;
          *(&v45 + 1) = 0xEF454C4241545F53;
          v46 = 0u;
          v47 = 0u;
          v48[0] = 7;
          *&v48[8] = 0;
          *&v48[16] = 0xE000000000000000;
          v48[24] = 1;
          v34 = swift_allocObject();
          v35 = v47;
          v36 = *v48;
          v37 = v45;
          v34[3] = v46;
          v34[4] = v35;
          v34[5] = v36;
          *(v34 + 89) = *&v48[9];
          v34[1] = xmmword_23DD43570;
          v34[2] = v37;
          v38 = swift_allocObject();
          v38[6] = 0;
          v38[7] = 0;
          v38[5] = 0;
          v38[2] = 0xD000000000000011;
          v38[3] = 0x800000023DD4C0C0;
          v38[4] = v34;
          swift_beginAccess();
          v38[6] = 0;
          v38[5] = 0;
          swift_beginAccess();
          v38[7] = 0;
          v39 = sub_23DD3050C(&v45, v44);
          MEMORY[0x23EEFDA80](v39);
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23DD42278();
          }

          sub_23DD42298();
          sub_23DD30568(&v45);
          sub_23DD30568(&v50);

          return v49;
        }
      }

      else
      {
        v33 = *MEMORY[0x277CB8BA0];
        sub_23DD42178();
      }

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23DD304B8()
{
  result = qword_27E30EE60;
  if (!qword_27E30EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EE60);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DD30604()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_23DD2F9E8(*(v0 + 16));
}

uint64_t sub_23DD30610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_23DD306B8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_23DD306C8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_23DD306D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_23DD2E4B0(a1);
}

unint64_t sub_23DD30714()
{
  result = qword_27E30EEC8;
  if (!qword_27E30EEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EEB0, &qword_23DD46770);
    sub_23DCEF9F0(&qword_27E30EED0, &qword_27E30EEA8, &qword_23DD47020);
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EEC8);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t AccountSettingsDetailModelView.init(detailModel:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUISettingsDetailModel(0);
  sub_23DD39AF4(&qword_27E30E1B8, type metadata accessor for AccountsUISettingsDetailModel);
  result = sub_23DD41818();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AccountSettingsDetailModelView.body.getter()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEE0, &unk_23DD467E0);
  sub_23DD39570(&qword_27E30EEE8, &qword_27E30EEE0, &unk_23DD467E0, sub_23DD30B60);
  sub_23DD30BB4();
  return sub_23DD41BE8();
}

uint64_t sub_23DD30A0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F080, &qword_23DD474A0);
  sub_23DCEF9F0(&qword_27E30F088, &qword_27E30F080, &qword_23DD474A0);
  sub_23DD30B60();
  sub_23DD39AF4(&qword_27E30F090, type metadata accessor for AccountUISettingSection);
  return sub_23DD41FB8();
}

uint64_t sub_23DD30B58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DD30A0C();
}

unint64_t sub_23DD30B60()
{
  result = qword_27E30EEF0;
  if (!qword_27E30EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EEF0);
  }

  return result;
}

unint64_t sub_23DD30BB4()
{
  result = qword_27E30EEF8;
  if (!qword_27E30EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EEF8);
  }

  return result;
}

uint64_t sub_23DD30C08()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEE0, &unk_23DD467E0);
  sub_23DD39570(&qword_27E30EEE8, &qword_27E30EEE0, &unk_23DD467E0, sub_23DD30B60);
  sub_23DD30BB4();
  return sub_23DD41BE8();
}

uint64_t sub_23DD30CDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DD419C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFA0, &qword_23DD46CC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF90, &qword_23DD46CB8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-v12];
  sub_23DD419B8();
  sub_23DD419A8();
  sub_23DD41E48();
  sub_23DD41988();

  sub_23DD419A8();
  if (a1)
  {
    v14 = a1;
    sub_23DCE3594();

    sub_23DD41998();

    sub_23DD419A8();
    sub_23DD419E8();
    v15 = sub_23DD41C38();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = &v9[*(v6 + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFB0, &qword_23DD46CC8) + 28);
    sub_23DD41A38();
    v24 = sub_23DD41A48();
    (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
    *v22 = swift_getKeyPath();
    *v9 = v15;
    *(v9 + 1) = v17;
    v9[16] = v19 & 1;
    *(v9 + 3) = v21;
    LODWORD(v15) = sub_23DD41AC8();
    sub_23DCFD790(v9, v13, &qword_27E30EFA0, &qword_23DD46CC0);
    *&v13[*(v10 + 36)] = v15;
    v25 = sub_23DD41BA8();
    KeyPath = swift_getKeyPath();
    sub_23DCFD790(v13, a2, &qword_27E30EF90, &qword_23DD46CB8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF78, &qword_23DD46CB0);
    v28 = (a2 + *(result + 36));
    *v28 = KeyPath;
    v28[1] = v25;
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD31054()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF78, &qword_23DD46CB0);
  sub_23DD37E60();
  return sub_23DD41FE8();
}

void sub_23DD310C8(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEE0, &unk_23DD467E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  if (!a1)
  {
    goto LABEL_8;
  }

  v14 = objc_opt_self();
  v15 = a1;
  v16 = [v14 sharedConnection];
  if (!v16)
  {
    __break(1u);
LABEL_8:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 effectiveBoolValueForSetting_];

  if (v18 == 2)
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    v19 = sub_23DD41888();
    v21 = v20;
    v22 = v19;
  }

  else
  {
    v21 = 0;
    v19 = 1;
  }

  v26[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F080, &qword_23DD474A0);
  sub_23DCEF9F0(&qword_27E30F088, &qword_27E30F080, &qword_23DD474A0);
  sub_23DD30B60();
  sub_23DD39AF4(&qword_27E30F090, type metadata accessor for AccountUISettingSection);
  sub_23DD41FB8();
  v23 = v7[2];
  v23(v11, v13, v6);
  *a3 = v19;
  a3[1] = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F238, &qword_23DD470A0);
  v23(a3 + *(v24 + 48), v11, v6);
  sub_23DD306B8(v19);
  sub_23DD306C8(v19);
  v25 = v7[1];
  v25(v13, v6);
  v25(v11, v6);
  sub_23DD306C8(v19);
}

uint64_t sub_23DD31468@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for AccountUISettingSection();
  sub_23DD39AF4(&qword_27E30F030, type metadata accessor for AccountUISettingSection);

  result = sub_23DD41818();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23DD314F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  result = sub_23DD41888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DD31560()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F228, &qword_23DD47098);
  sub_23DCEF9F0(&qword_27E30F230, &qword_27E30F228, &qword_23DD47098);
  sub_23DD30BB4();
  return sub_23DD41BE8();
}

void sub_23DD3163C(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a1;
    sub_23DD416D8();

    v5 = 1;
    if (v10)
    {
      v6 = sub_23DD41978();
      type metadata accessor for AccountsUIModel(0);
      sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
      v5 = sub_23DD41888();
      v8 = 1;
      v9 = 1;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v7 = 0;
      v9 = 0;
    }

    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = v8;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    *(a2 + 40) = 0;
    *(a2 + 48) = v9;
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t DeleteButtonView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  result = sub_23DD41888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DeleteButtonView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF00, &qword_23DD467F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v11 = *v0;
  v10 = *(v0 + 8);
  sub_23DD41EF8();
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 sharedConnection];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 effectiveBoolValueForSetting_];

      LOBYTE(v15) = v16 == 2;
      KeyPath = swift_getKeyPath();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      (*(v2 + 32))(v9, v5, v1);
      v19 = &v9[*(v6 + 36)];
      *v19 = KeyPath;
      v19[1] = sub_23DD37788;
      v19[2] = v18;
      sub_23DCEC2F0();
      v23[0] = v20;
      v23[1] = v21;
      sub_23DD37848();
      sub_23DCF4570();
      sub_23DD41D68();

      return sub_23DCEFA38(v9, &qword_27E30EF00, &qword_23DD467F0);
    }

    __break(1u);
  }

  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

void sub_23DD31B14(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD31C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFE0, &qword_23DD46D48);
  v47 = *(v52 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v52);
  v7 = &v46 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFE8, &qword_23DD46D50);
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v53);
  v11 = &v46 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFF0, &qword_23DD46D58);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v51 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFF8, &qword_23DD46D60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F000, &qword_23DD46D68);
  v48 = *(v50 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v21 = &v46 - v20;
  v22 = swift_beginAccess();
  v23 = *(a2 + 48);
  if (v23)
  {
    v24 = v14;
    v25 = *(a2 + 40);
    MEMORY[0x28223BE20](v22);
    *(&v46 - 2) = a1;
    *(&v46 - 1) = a2;
    v55 = v26;
    v56 = v23;
    sub_23DCF4570();

    v55 = sub_23DD41C48();
    v56 = v27;
    LOBYTE(v57) = v28 & 1;
    v58 = v29;
    sub_23DD380A4();
    v30 = sub_23DD41FC8();
    MEMORY[0x28223BE20](v30);
    *(&v46 - 2) = a1;
    *(&v46 - 1) = a2;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F010, &qword_23DD46D70);
    v32 = sub_23DD3817C(&qword_27E30F028, &qword_27E30EFF8, &qword_23DD46D60);
    v33 = sub_23DD380F8();
    sub_23DD41CE8();
    (*(v15 + 8))(v18, v14);
    v34 = v48;
    v35 = v50;
    (*(v48 + 16))(v51, v21, v50);
    swift_storeEnumTagMultiPayload();
    v55 = v24;
    v56 = v31;
    v57 = v32;
    v58 = v33;
    swift_getOpaqueTypeConformance2();
    v36 = sub_23DD3817C(&qword_27E30F018, &qword_27E30EFE0, &qword_23DD46D48);
    v55 = v52;
    v56 = v31;
    v57 = v36;
    v58 = v33;
    swift_getOpaqueTypeConformance2();
    sub_23DD41A78();
    return (*(v34 + 8))(v21, v35);
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    *(&v46 - 2) = a1;
    *(&v46 - 1) = a2;
    sub_23DD380A4();
    v38 = sub_23DD41FE8();
    MEMORY[0x28223BE20](v38);
    *(&v46 - 2) = v39;
    *(&v46 - 1) = a2;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F010, &qword_23DD46D70);
    v48 = sub_23DD3817C(&qword_27E30F018, &qword_27E30EFE0, &qword_23DD46D48);
    v41 = v11;
    v42 = sub_23DD380F8();
    v43 = v52;
    sub_23DD41CE8();
    (*(v47 + 8))(v7, v43);
    v44 = v53;
    (*(v8 + 16))(v51, v41, v53);
    swift_storeEnumTagMultiPayload();
    v45 = sub_23DD3817C(&qword_27E30F028, &qword_27E30EFF8, &qword_23DD46D60);
    v55 = v14;
    v56 = v40;
    v57 = v45;
    v58 = v42;
    swift_getOpaqueTypeConformance2();
    v55 = v43;
    v56 = v40;
    v57 = v48;
    v58 = v42;
    swift_getOpaqueTypeConformance2();
    sub_23DD41A78();
    return (*(v8 + 8))(v41, v44);
  }
}

__n128 sub_23DD3237C@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);

  v2 = sub_23DD41888();
  v4 = v3;
  type metadata accessor for AccountUISettingSection();
  sub_23DD39AF4(&qword_27E30F030, type metadata accessor for AccountUISettingSection);
  v5 = sub_23DD41818();
  v7 = v6;
  sub_23DD41EA8();
  result = v9;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = v7;
  a1[2] = v9;
  a1[3].n128_u64[0] = v10;
  return result;
}

uint64_t sub_23DD324A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  result = sub_23DD41A78();
  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_23DD3254C@<X0>(_OWORD *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v222 = a2;
  v234 = a3;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1C8, &qword_23DD47040);
  v4 = *(*(v212 - 8) + 64);
  MEMORY[0x28223BE20](v212);
  v215 = (&v189 - v5);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F198, &qword_23DD47028);
  v6 = *(*(v227 - 1) + 64);
  MEMORY[0x28223BE20](v227);
  v217 = &v189 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1B8, &qword_23DD47038);
  v196 = *(v8 - 8);
  v197 = v8;
  v9 = *(v196 + 64);
  MEMORY[0x28223BE20](v8);
  v208 = &v189 - v10;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1A0, &qword_23DD47030);
  v11 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v198 = &v189 - v12;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1D0, &qword_23DD47048);
  v202 = *(v216 - 8);
  v13 = *(v202 + 64);
  MEMORY[0x28223BE20](v216);
  v201 = &v189 - v14;
  v15 = sub_23DD412F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1D8, &unk_23DD47050);
  v17 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEA8, &qword_23DD47020);
  v193 = *(v18 - 8);
  v194 = v18;
  v19 = *(v193 + 64);
  MEMORY[0x28223BE20](v18);
  v206 = &v189 - v20;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEB0, &qword_23DD46770);
  v21 = *(*(v213 - 8) + 64);
  MEMORY[0x28223BE20](v213);
  v195 = &v189 - v22;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEB8, &qword_23DD46778);
  v200 = *(v218 - 8);
  v23 = *(v200 + 64);
  MEMORY[0x28223BE20](v218);
  v199 = &v189 - v24;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1E0, &qword_23DD47060);
  v25 = *(*(v223 - 8) + 64);
  MEMORY[0x28223BE20](v223);
  v225 = &v189 - v26;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1E8, &qword_23DD47068);
  v27 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v29 = &v189 - v28;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F188, &unk_23DD47010);
  v30 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v214 = &v189 - v31;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F178, &qword_23DD47008);
  v32 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  v226 = &v189 - v33;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEC0, &qword_23DD46780);
  v192 = *(v205 - 8);
  v34 = *(v192 + 64);
  MEMORY[0x28223BE20](v205);
  v36 = &v189 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1F0, &qword_23DD47070);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v189 - v39;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F158, &unk_23DD46FF8);
  v41 = *(*(v220 - 8) + 64);
  MEMORY[0x28223BE20](v220);
  v207 = &v189 - v42;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1F8, &qword_23DD47078);
  v43 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219);
  v45 = (&v189 - v44);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F140, &qword_23DD46FF0);
  v46 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v221 = &v189 - v47;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F200, &qword_23DD47080);
  v48 = *(*(v230 - 8) + 64);
  MEMORY[0x28223BE20](v230);
  v232 = &v189 - v49;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F208, &unk_23DD47088);
  v50 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v228);
  v52 = &v189 - v51;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F110, &qword_23DD46FE0);
  v53 = *(*(v231 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v231);
  v56 = a1[3];
  v252 = a1[2];
  *v253 = v56;
  *&v253[9] = *(a1 + 57);
  v57 = a1[1];
  v251[1] = *a1;
  v251[2] = v57;
  v58 = v252;
  if (v56 <= 3u)
  {
    if (v56 <= 1u)
    {
      v59 = &v189 - v55;
      v203 = v252;
      if (v56)
      {
        v209 = *(&v57 + 1);
        v118 = v57;
        v190 = *(&v252 + 1);
        sub_23DD39158(v57, *(&v57 + 1), v252, *(&v252 + 1), 1u);
        type metadata accessor for AccountsUIModel(0);
        sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
        v119 = v118;
        v120 = sub_23DD41888();
        v122 = v121;
        type metadata accessor for AccountUISetting.CustomDataclassTableConfig(0);
        sub_23DD39AF4(&qword_27E30F220, type metadata accessor for AccountUISetting.CustomDataclassTableConfig);
        v123 = sub_23DD41818();
        v125 = v124;
        *v45 = v120;
        v45[1] = v122;
        v45[2] = v123;
        v45[3] = v124;
        swift_storeEnumTagMultiPayload();
        sub_23DD38C6C();
        sub_23DD38CC0();
        v227 = v120;
        v126 = v125;
        v127 = v221;
        sub_23DD41A78();
        sub_23DCFD8B0(v127, v52, &qword_27E30F140, &qword_23DD46FF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F120, &qword_23DD46FE8);
        sub_23DD38AAC();
        sub_23DD38BE0();
        sub_23DD41A78();
        sub_23DCEFA38(v127, &qword_27E30F140, &qword_23DD46FF0);
        sub_23DCFD8B0(v59, v232, &qword_27E30F110, &qword_23DD46FE0);
        swift_storeEnumTagMultiPayload();
        sub_23DD38A20();
        sub_23DD38DCC();
        sub_23DD41A78();

        sub_23DD39234(v118, v209, v203, v190, 1u);
      }

      else
      {
        v61 = *(&v57 + 1);
        v60 = v57;
        v62 = *(&v252 + 1);
        sub_23DD39158(v57, *(&v57 + 1), v252, *(&v252 + 1), 0);
        type metadata accessor for AccountsUIModel(0);
        sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);

        v63 = sub_23DD41888();
        v64 = vdupq_n_s64(v60);
        LOBYTE(v235) = v60 & 1;
        *v64.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v64, xmmword_23DD467D0), vshlq_u64(v64, xmmword_23DD467C0))), 0x1000100010001);
        *(&v235 + 1) = vuzp1_s8(*v64.i8, *v64.i8).u32[0];
        BYTE5(v235) = BYTE5(v60) & 1;
        *(&v235 + 1) = v61;
        v236 = 0;
        v237 = v63;
        v238 = v65;
        *&v239 = v235;
        *(&v239 + 1) = v61;
        *&v240 = 0;
        *(&v240 + 1) = v63;
        v241 = v65;
        v242 = 0;
        sub_23DD37A4C(&v235, &v243);
        sub_23DD38B38();
        sub_23DD38B8C();
        sub_23DD41A78();
        v66 = v245;
        v67 = BYTE8(v245);
        v68 = v244;
        *v52 = v243;
        *(v52 + 1) = v68;
        *(v52 + 4) = v66;
        v52[40] = v67;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F120, &qword_23DD46FE8);
        sub_23DD38AAC();
        sub_23DD38BE0();
        sub_23DD41A78();
        sub_23DCFD8B0(v59, v232, &qword_27E30F110, &qword_23DD46FE0);
        swift_storeEnumTagMultiPayload();
        sub_23DD38A20();
        sub_23DD38DCC();
        sub_23DD41A78();
        sub_23DD39450(&v235);
        sub_23DD39234(v60, v61, v203, v62, 0);
      }

      v69 = v59;
      v70 = &qword_27E30F110;
      v71 = &qword_23DD46FE0;
      return sub_23DCEFA38(v69, v70, v71);
    }

    v190 = *(&v252 + 1);
    v209 = *(&v57 + 1);
    v191 = v57;
    if (v56 == 2)
    {
      v227 = (&v189 - v55);
      if (v253[24])
      {
        v243 = v57;
        v244 = v252;
        v99 = v57;
        v203 = v252;
        sub_23DD39158(v57, *(&v57 + 1), v252, *(&v252 + 1), 2u);

        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
        MEMORY[0x23EEFD790](&v235, v100);
        v218 = *(&v235 + 1);
        v222 = v235;
        v101 = *&v253[16];
        v226 = *&v253[8];

        LODWORD(v224) = sub_23DD41788();
        v225 = v102;
        LODWORD(v223) = v103;
        type metadata accessor for AccountsUIModel(0);
        sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
        v104 = sub_23DD41888();
        v106 = v105;
        *&v251[0] = v222;
        *(&v251[0] + 1) = v218;
        sub_23DD41EA8();
        v107 = v239;
        v108 = v240;
        v109 = v224 & 1;
        v110 = v223 & 1;
        *v40 = v104;
        *(v40 + 1) = v106;
        *(v40 + 1) = v99;
        *(v40 + 4) = v203;
        *(v40 + 5) = v190;
        *(v40 + 3) = v107;
        *(v40 + 8) = v108;
        v40[72] = v109;
        *(v40 + 73) = v243;
        *(v40 + 19) = *(&v243 + 3);
        *(v40 + 10) = v225;
        v40[88] = v110;
        *(v40 + 89) = v239;
        *(v40 + 23) = *(&v239 + 3);
        *(v40 + 12) = v226;
        *(v40 + 13) = v101;
        v40[112] = 0;
        swift_storeEnumTagMultiPayload();
        sub_23DD38D78();
        sub_23DCEF9F0(&qword_27E30F168, &qword_27E30EEC0, &qword_23DD46780);
        v111 = v207;
        sub_23DD41A78();
      }

      else
      {
        v226 = &v189;
        v183 = MEMORY[0x28223BE20](v54);
        MEMORY[0x28223BE20](v183);

        sub_23DD41798();
        v184 = v192;
        v185 = v205;
        (*(v192 + 16))(v40, v36, v205);
        swift_storeEnumTagMultiPayload();
        sub_23DD38D78();
        sub_23DCEF9F0(&qword_27E30F168, &qword_27E30EEC0, &qword_23DD46780);
        v111 = v207;
        sub_23DD41A78();
        (*(v184 + 8))(v36, v185);
      }

      v182 = &unk_23DD46FF8;
      sub_23DCFD8B0(v111, v45, &qword_27E30F158, &unk_23DD46FF8);
      swift_storeEnumTagMultiPayload();
      sub_23DD38C6C();
      sub_23DD38CC0();
      v186 = v221;
      sub_23DD41A78();
      sub_23DCFD8B0(v186, v52, &qword_27E30F140, &qword_23DD46FF0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F120, &qword_23DD46FE8);
      sub_23DD38AAC();
      sub_23DD38BE0();
      v187 = v227;
      sub_23DD41A78();
      sub_23DCEFA38(v186, &qword_27E30F140, &qword_23DD46FF0);
      sub_23DCFD8B0(v187, v232, &qword_27E30F110, &qword_23DD46FE0);
      swift_storeEnumTagMultiPayload();
      sub_23DD38A20();
      sub_23DD38DCC();
      sub_23DD41A78();

      sub_23DCEFA38(v187, &qword_27E30F110, &qword_23DD46FE0);
      v69 = v111;
      v70 = &qword_27E30F158;
      goto LABEL_25;
    }

    v239 = v57;
    v240 = v252;
    v203 = v252;
    sub_23DD39158(v57, *(&v57 + 1), v252, *(&v252 + 1), 3u);

    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
    MEMORY[0x23EEFD790](&v235, v153);
    v154 = v235;
    v155 = *&v253[16];
    v229 = *&v253[8];

    v156 = sub_23DD41788();
    v228 = v157;
    v159 = v158;
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    v160 = sub_23DD41888();
    v162 = v161;
    v251[0] = v154;
    v163 = MEMORY[0x277D837D0];
    sub_23DD41EA8();
    v164 = v243;
    v165 = v244;
    *&v243 = v160;
    *(&v243 + 1) = v162;
    *&v244 = v191;
    *(&v244 + 1) = v209;
    *&v245 = v203;
    *(&v245 + 1) = v190;
    v246 = v164;
    *&v247 = v165;
    BYTE8(v247) = v156 & 1;
    *&v248 = v228;
    BYTE8(v248) = v159 & 1;
    *&v249 = v229;
    *(&v249 + 1) = v155;
    v166 = v248;
    v167 = v249;
    v168 = v246;
    *(v29 + 4) = v247;
    *(v29 + 5) = v166;
    *(v29 + 6) = v167;
    v169 = v244;
    v170 = v245;
    *v29 = v243;
    *(v29 + 1) = v169;
    v250 = 1;
    v29[112] = 1;
    *(v29 + 2) = v170;
    *(v29 + 3) = v168;
    swift_storeEnumTagMultiPayload();
    sub_23DD393D4(&v243, &v239);
    sub_23DD38D78();
    v171 = sub_23DD30714();
    v172 = sub_23DCF4570();
    *&v239 = v213;
    *(&v239 + 1) = v163;
    *&v240 = v171;
    *(&v240 + 1) = v172;
    swift_getOpaqueTypeConformance2();
    v173 = v214;
    sub_23DD41A78();
    sub_23DCFD8B0(v173, v225, &qword_27E30F188, &unk_23DD47010);
    swift_storeEnumTagMultiPayload();
    sub_23DD38E58();
    sub_23DD38F3C();
    v174 = v226;
    sub_23DD41A78();
    sub_23DCEFA38(v173, &qword_27E30F188, &unk_23DD47010);
    sub_23DCFD8B0(v174, v232, &qword_27E30F178, &qword_23DD47008);
    swift_storeEnumTagMultiPayload();
    sub_23DD38A20();
    sub_23DD38DCC();
    sub_23DD41A78();
    sub_23DD3940C(&v243);

    v117 = v174;
    return sub_23DCEFA38(v117, &qword_27E30F178, &qword_23DD47008);
  }

  if (v56 > 5u)
  {
    if (v56 != 6)
    {
      v175 = &v189 - v55;
      type metadata accessor for AccountsUIModel(0);
      sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
      v176 = sub_23DD41888();
      *&v239 = v176;
      *(&v239 + 1) = v177;
      v241 = 0;
      v240 = 0uLL;
      v242 = 1;
      sub_23DD38B38();
      sub_23DD38B8C();
      v178 = v176;
      sub_23DD41A78();
      v179 = v245;
      v180 = BYTE8(v245);
      v181 = v244;
      *v52 = v243;
      *(v52 + 1) = v181;
      *(v52 + 4) = v179;
      v52[40] = v180;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F120, &qword_23DD46FE8);
      sub_23DD38AAC();
      sub_23DD38BE0();
      sub_23DD41A78();
      v182 = &qword_23DD46FE0;
      sub_23DCFD8B0(v175, v232, &qword_27E30F110, &qword_23DD46FE0);
      swift_storeEnumTagMultiPayload();
      sub_23DD38A20();
      sub_23DD38DCC();
      sub_23DD41A78();

      v69 = v175;
      v70 = &qword_27E30F110;
LABEL_25:
      v71 = v182;
      return sub_23DCEFA38(v69, v70, v71);
    }

    *v215 = v57;
    v112 = v57;
    v203 = v58;
    swift_storeEnumTagMultiPayload();
    sub_23DD39158(v112, *(&v112 + 1), v58, *(&v58 + 1), 6u);
    v113 = sub_23DD39020();
    v114 = sub_23DCF4570();

    *&v243 = v211;
    *(&v243 + 1) = MEMORY[0x277D837D0];
    *&v244 = v113;
    *(&v244 + 1) = v114;
    swift_getOpaqueTypeConformance2();
    v115 = v217;
    sub_23DD41A78();
    sub_23DCFD8B0(v115, v225, &qword_27E30F198, &qword_23DD47028);
    swift_storeEnumTagMultiPayload();
    sub_23DD38E58();
    sub_23DD38F3C();
    v116 = v226;
    sub_23DD41A78();
    sub_23DCEFA38(v115, &qword_27E30F198, &qword_23DD47028);
    sub_23DCFD8B0(v116, v232, &qword_27E30F178, &qword_23DD47008);
    swift_storeEnumTagMultiPayload();
    sub_23DD38A20();
    sub_23DD38DCC();
    sub_23DD41A78();
    sub_23DD39234(v112, *(&v112 + 1), v203, *(&v58 + 1), 6u);
    v117 = v116;
    return sub_23DCEFA38(v117, &qword_27E30F178, &qword_23DD47008);
  }

  v209 = *(&v57 + 1);
  v191 = v57;
  if (v56 == 4)
  {
    v239 = *(a1 + 56);
    v235 = *(a1 + 56);
    v243 = v57;
    *&v244 = v252;
    sub_23DD39158(v57, *(&v57 + 1), v252, *(&v252 + 1), 4u);
    sub_23DD39324(&v239, v251);

    sub_23DD412E8();
    sub_23DD39380();
    sub_23DD411E8();
    v72 = sub_23DCF4570();
    sub_23DCEF9F0(&qword_27E30F218, &qword_27E30F1D8, &unk_23DD47050);
    v73 = MEMORY[0x277D837D0];
    v74 = v206;
    sub_23DD42048();
    v75 = v222;
    v76 = *v222;
    if (*v222)
    {
      v77 = objc_opt_self();
      v78 = v76;
      v79 = [v77 sharedConnection];
      if (v79)
      {
        v80 = v79;
        v81 = [v79 effectiveBoolValueForSetting_];

        v82 = v81 == 2;
        KeyPath = swift_getKeyPath();
        v84 = swift_allocObject();
        *(v84 + 16) = v82;
        v85 = v195;
        (*(v193 + 32))(v195, v74, v194);
        v86 = v213;
        v87 = (v85 + *(v213 + 36));
        *v87 = KeyPath;
        v87[1] = sub_23DD39D40;
        v87[2] = v84;
        sub_23DCEC2F0();
        v89 = v88;
        v91 = v90;

        *&v243 = v89;
        *(&v243 + 1) = v91;
        v92 = sub_23DD30714();
        v93 = v199;
        sub_23DD41D68();

        sub_23DCEFA38(v85, &qword_27E30EEB0, &qword_23DD46770);
        v94 = v200;
        v95 = v218;
        (*(v200 + 16))(v29, v93, v218);
        swift_storeEnumTagMultiPayload();
        sub_23DD38D78();
        *&v243 = v86;
        *(&v243 + 1) = v73;
        *&v244 = v92;
        *(&v244 + 1) = v72;
        swift_getOpaqueTypeConformance2();
        v96 = v214;
        sub_23DD41A78();
        sub_23DCFD8B0(v96, v225, &qword_27E30F188, &unk_23DD47010);
        swift_storeEnumTagMultiPayload();
        sub_23DD38E58();
        sub_23DD38F3C();
        v97 = v226;
        sub_23DD41A78();
        sub_23DCEFA38(v96, &qword_27E30F188, &unk_23DD47010);
        sub_23DCFD8B0(v97, v232, &qword_27E30F178, &qword_23DD47008);
        swift_storeEnumTagMultiPayload();
        sub_23DD38A20();
        sub_23DD38DCC();
        sub_23DD41A78();

        sub_23DCEFA38(v97, &qword_27E30F178, &qword_23DD47008);
        return (*(v94 + 8))(v93, v95);
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }
  }

  else
  {
    v239 = *(a1 + 56);
    v243 = *(a1 + 56);
    sub_23DD39158(v57, *(&v57 + 1), v252, *(&v252 + 1), 5u);
    sub_23DD39324(&v239, &v235);
    v128 = sub_23DCF4570();

    v129 = MEMORY[0x277D837D0];
    v130 = v208;
    sub_23DD41F38();
    v75 = v222;
    v131 = *v222;
    if (*v222)
    {
      v132 = objc_opt_self();
      v133 = v131;
      v134 = [v132 sharedConnection];
      if (v134)
      {
        v135 = v134;
        v136 = [v134 effectiveBoolValueForSetting_];

        v137 = v136 == 2;
        v138 = swift_getKeyPath();
        v139 = swift_allocObject();
        *(v139 + 16) = v137;
        v140 = v198;
        (*(v196 + 32))(v198, v130, v197);
        v141 = v211;
        v142 = (v140 + *(v211 + 36));
        *v142 = v138;
        v142[1] = sub_23DD39D40;
        v142[2] = v139;
        sub_23DCEC2F0();
        v144 = v143;
        v146 = v145;

        *&v243 = v144;
        *(&v243 + 1) = v146;
        v147 = sub_23DD39020();
        v148 = v201;
        sub_23DD41D68();

        sub_23DCEFA38(v140, &qword_27E30F1A0, &qword_23DD47030);
        v149 = v202;
        v150 = v216;
        (*(v202 + 16))(v215, v148, v216);
        swift_storeEnumTagMultiPayload();
        *&v243 = v141;
        *(&v243 + 1) = v129;
        *&v244 = v147;
        *(&v244 + 1) = v128;
        swift_getOpaqueTypeConformance2();
        v151 = v217;
        sub_23DD41A78();
        sub_23DCFD8B0(v151, v225, &qword_27E30F198, &qword_23DD47028);
        swift_storeEnumTagMultiPayload();
        sub_23DD38E58();
        sub_23DD38F3C();
        v152 = v226;
        sub_23DD41A78();
        sub_23DCEFA38(v151, &qword_27E30F198, &qword_23DD47028);
        sub_23DCFD8B0(v152, v232, &qword_27E30F178, &qword_23DD47008);
        swift_storeEnumTagMultiPayload();
        sub_23DD38A20();
        sub_23DD38DCC();
        sub_23DD41A78();

        sub_23DCEFA38(v152, &qword_27E30F178, &qword_23DD47008);
        return (*(v149 + 8))(v148, v150);
      }

      goto LABEL_28;
    }
  }

  v188 = v75[1];
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t DetailsHeader.init(detailsConfig:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 1);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  result = sub_23DD41888();
  *(a2 + 24) = result;
  *(a2 + 32) = v11;
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 2) = v5;
  *(a2 + 3) = v6;
  *(a2 + 4) = v7;
  *(a2 + 5) = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23DD34600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
  MEMORY[0x23EEFD790](v11, v6);
  sub_23DCF4570();
  result = sub_23DD41C48();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

uint64_t sub_23DD34680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  sub_23DCF4570();

  result = sub_23DD41C48();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_23DD346EC()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10 = v0[2];
  v11 = *(v0 + 6);
  v2 = *(&v1 + 1);
  swift_beginAccess();
  v7 = *(v2 + 32);
  v3 = swift_allocObject();
  v4 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;

  sub_23DD3895C(&v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F0E8, &qword_23DD46FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F0F0, &qword_23DD46FD8);
  sub_23DCEF9F0(&qword_27E30F0F8, &qword_27E30F0E8, &qword_23DD46FD0);
  sub_23DD38994();
  sub_23DD39104();
  return sub_23DD41FB8();
}

uint64_t sub_23DD34850@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v155 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEA8, &qword_23DD47020);
  v142 = *(v3 - 8);
  v4 = *(v142 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v129 - v5;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F260, &qword_23DD47178);
  v144 = *(v145 - 8);
  v7 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v9 = &v129 - v8;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F268, &qword_23DD47180);
  v147 = *(v148 - 8);
  v10 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v129 - v11;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F270, &qword_23DD47188);
  v12 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v143 = &v129 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F278, &qword_23DD47190);
  v14 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v16 = &v129 - v15;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F280, &qword_23DD47198);
  v17 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v19 = &v129 - v18;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F288, &qword_23DD471A0);
  v20 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v153 = &v129 - v21;
  v158 = sub_23DD41838();
  v157 = *(v158 - 8);
  v22 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v156 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F290, &qword_23DD471A8);
  v135 = *(v24 - 8);
  v25 = *(v135 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v129 - v26;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F298, &qword_23DD471B0);
  v136 = *(v138 - 8);
  v28 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v30 = &v129 - v29;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2A0, &qword_23DD471B8);
  v140 = *(v141 - 8);
  v31 = *(v140 + 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v129 - v32;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2A8, &qword_23DD471C0);
  v130 = *(v131 - 8);
  v33 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v137 = &v129 - v34;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2B0, &qword_23DD471C8);
  v35 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v133 = &v129 - v36;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2B8, &qword_23DD471D0);
  v37 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v39 = &v129 - v38;
  LOBYTE(v38) = *(v2 + 112);
  v40 = *(v2 + 104);
  v159 = *(v2 + 96);
  v150 = v40;
  if ((v38 & 1) == 0)
  {
    v141 = v16;
    v140 = v19;
    sub_23DD422C8();
    sub_23DD393D4(v2, &v160);

    v83 = sub_23DD422B8();
    v84 = swift_allocObject();
    v85 = MEMORY[0x277D85700];
    *(v84 + 16) = v83;
    *(v84 + 24) = v85;
    v86 = *(v2 + 80);
    *(v84 + 96) = *(v2 + 64);
    *(v84 + 112) = v86;
    *(v84 + 128) = *(v2 + 96);
    *(v84 + 144) = *(v2 + 112);
    v87 = *(v2 + 16);
    *(v84 + 32) = *v2;
    *(v84 + 48) = v87;
    v88 = *(v2 + 48);
    *(v84 + 64) = *(v2 + 32);
    *(v84 + 80) = v88;
    sub_23DD393D4(v2, &v160);
    v89 = sub_23DD422B8();
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v85;
    v91 = *(v2 + 80);
    *(v90 + 96) = *(v2 + 64);
    *(v90 + 112) = v91;
    *(v90 + 128) = *(v2 + 96);
    *(v90 + 144) = *(v2 + 112);
    v92 = *(v2 + 16);
    *(v90 + 32) = *v2;
    *(v90 + 48) = v92;
    v93 = *(v2 + 48);
    *(v90 + 64) = *(v2 + 32);
    *(v90 + 80) = v93;
    sub_23DD41F88();
    *&v160 = v159;
    *(&v160 + 1) = v40;
    sub_23DCF4570();
    sub_23DD42038();
    v163 = *(v2 + 72);
    v164 = *(v2 + 88);
    v160 = *(v2 + 72);
    LOBYTE(v161) = *(v2 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2C0, &qword_23DD471D8);
    sub_23DD41778();
    v94 = sub_23DCEF9F0(&qword_27E30EED0, &qword_27E30EEA8, &qword_23DD47020);
    sub_23DD41DA8();

    (*(v142 + 8))(v6, v3);
    v160 = v163;
    LOBYTE(v161) = v164;
    sub_23DD41768();
    v95 = swift_allocObject();
    v96 = *(v2 + 80);
    *(v95 + 80) = *(v2 + 64);
    *(v95 + 96) = v96;
    *(v95 + 112) = *(v2 + 96);
    *(v95 + 128) = *(v2 + 112);
    v97 = *(v2 + 16);
    *(v95 + 16) = *v2;
    *(v95 + 32) = v97;
    v98 = *(v2 + 48);
    *(v95 + 48) = *(v2 + 32);
    *(v95 + 64) = v98;
    sub_23DD393D4(v2, &v160);
    *&v160 = v3;
    *(&v160 + 1) = v94;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v100 = MEMORY[0x277D839B0];
    v101 = MEMORY[0x277D839C8];
    v102 = v146;
    v103 = v145;
    sub_23DD41DC8();

    (*(v144 + 8))(v9, v103);
    v104 = swift_allocObject();
    v105 = *(v2 + 80);
    *(v104 + 80) = *(v2 + 64);
    *(v104 + 96) = v105;
    *(v104 + 112) = *(v2 + 96);
    *(v104 + 128) = *(v2 + 112);
    v106 = *(v2 + 16);
    *(v104 + 16) = *v2;
    *(v104 + 32) = v106;
    v107 = *(v2 + 48);
    *(v104 + 48) = *(v2 + 32);
    *(v104 + 64) = v107;
    sub_23DD393D4(v2, &v160);
    v108 = v156;
    sub_23DD41828();
    *&v160 = v103;
    *(&v160 + 1) = v100;
    v161 = OpaqueTypeConformance2;
    v162 = v101;
    swift_getOpaqueTypeConformance2();
    v109 = v143;
    v110 = v148;
    sub_23DD41DD8();

    (*(v157 + 8))(v108, v158);
    (*(v147 + 8))(v102, v110);
    v111 = swift_allocObject();
    v112 = *(v2 + 80);
    *(v111 + 80) = *(v2 + 64);
    *(v111 + 96) = v112;
    *(v111 + 112) = *(v2 + 96);
    *(v111 + 128) = *(v2 + 112);
    v113 = *(v2 + 16);
    *(v111 + 16) = *v2;
    *(v111 + 32) = v113;
    v114 = *(v2 + 48);
    *(v111 + 48) = *(v2 + 32);
    *(v111 + 64) = v114;
    v115 = (v109 + *(v149 + 36));
    *v115 = 0;
    v115[1] = 0;
    v115[2] = sub_23DD39D24;
    v115[3] = v111;
    v116 = *v2;
    if (!*v2)
    {
      v128 = *(v2 + 8);
      sub_23DD393D4(v2, &v160);
      goto LABEL_13;
    }

    v117 = objc_opt_self();
    sub_23DD393D4(v2, &v160);
    v118 = v116;
    v119 = [v117 sharedConnection];
    v120 = v141;
    if (v119)
    {
      v121 = v119;
      v122 = [v119 effectiveBoolValueForSetting_];

      KeyPath = swift_getKeyPath();
      v124 = swift_allocObject();
      *(v124 + 16) = v122 == 2;
      sub_23DCDF9FC(v109, v120);
      v125 = (v120 + *(v134 + 36));
      *v125 = KeyPath;
      v125[1] = sub_23DD39D40;
      v125[2] = v124;
      *&v160 = 0x6C65694674786554;
      *(&v160 + 1) = 0xE900000000000064;
      MEMORY[0x23EEFDA30](v159, v150);
      sub_23DD3963C();
      v80 = v140;
      sub_23DD41D48();

      sub_23DCEFA38(v120, &qword_27E30F278, &qword_23DD47190);
      v81 = &qword_27E30F280;
      v82 = &qword_23DD47198;
      sub_23DCFD8B0(v80, v153, &qword_27E30F280, &qword_23DD47198);
      swift_storeEnumTagMultiPayload();
      sub_23DD39884(&qword_27E30F2D8, &qword_27E30F2B8, &qword_23DD471D0, sub_23DD39938);
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v149 = v39;
  sub_23DD422C8();

  sub_23DD393D4(v2, &v160);
  v41 = sub_23DD422B8();
  v42 = swift_allocObject();
  v43 = v40;
  v44 = MEMORY[0x277D85700];
  *(v42 + 16) = v41;
  *(v42 + 24) = v44;
  v45 = *(v2 + 80);
  *(v42 + 96) = *(v2 + 64);
  *(v42 + 112) = v45;
  *(v42 + 128) = *(v2 + 96);
  *(v42 + 144) = *(v2 + 112);
  v46 = *(v2 + 16);
  *(v42 + 32) = *v2;
  *(v42 + 48) = v46;
  v47 = *(v2 + 48);
  *(v42 + 64) = *(v2 + 32);
  *(v42 + 80) = v47;
  sub_23DD393D4(v2, &v160);
  v48 = sub_23DD422B8();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v44;
  v50 = *(v2 + 80);
  *(v49 + 96) = *(v2 + 64);
  *(v49 + 112) = v50;
  *(v49 + 128) = *(v2 + 96);
  *(v49 + 144) = *(v2 + 112);
  v51 = *(v2 + 16);
  *(v49 + 32) = *v2;
  *(v49 + 48) = v51;
  v52 = *(v2 + 48);
  *(v49 + 64) = *(v2 + 32);
  *(v49 + 80) = v52;
  sub_23DD41F88();
  *&v160 = v159;
  *(&v160 + 1) = v43;
  sub_23DCF4570();
  sub_23DD417A8();
  v163 = *(v2 + 72);
  v164 = *(v2 + 88);
  v160 = *(v2 + 72);
  LOBYTE(v161) = *(v2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2C0, &qword_23DD471D8);
  sub_23DD41778();
  v53 = sub_23DCEF9F0(&qword_27E30F2E8, &qword_27E30F290, &qword_23DD471A8);
  sub_23DD41DA8();

  (*(v135 + 8))(v27, v24);
  v160 = v163;
  LOBYTE(v161) = v164;
  sub_23DD41768();
  v54 = swift_allocObject();
  v55 = *(v2 + 80);
  *(v54 + 80) = *(v2 + 64);
  *(v54 + 96) = v55;
  *(v54 + 112) = *(v2 + 96);
  *(v54 + 128) = *(v2 + 112);
  v56 = *(v2 + 16);
  *(v54 + 16) = *v2;
  *(v54 + 32) = v56;
  v57 = *(v2 + 48);
  *(v54 + 48) = *(v2 + 32);
  *(v54 + 64) = v57;
  sub_23DD393D4(v2, &v160);
  *&v160 = v24;
  *(&v160 + 1) = v53;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = MEMORY[0x277D839B0];
  v60 = MEMORY[0x277D839C8];
  v61 = v139;
  v62 = v138;
  sub_23DD41DC8();

  (*(v136 + 8))(v30, v62);
  v63 = swift_allocObject();
  v64 = *(v2 + 80);
  *(v63 + 80) = *(v2 + 64);
  *(v63 + 96) = v64;
  *(v63 + 112) = *(v2 + 96);
  *(v63 + 128) = *(v2 + 112);
  v65 = *(v2 + 16);
  *(v63 + 16) = *v2;
  *(v63 + 32) = v65;
  v66 = *(v2 + 48);
  *(v63 + 48) = *(v2 + 32);
  *(v63 + 64) = v66;
  sub_23DD393D4(v2, &v160);
  v67 = v156;
  sub_23DD41828();
  *&v160 = v62;
  *(&v160 + 1) = v59;
  v161 = v58;
  v162 = v60;
  swift_getOpaqueTypeConformance2();
  v68 = v137;
  v69 = v141;
  sub_23DD41DD8();

  (*(v157 + 8))(v67, v158);
  (*(v140 + 1))(v61, v69);
  v70 = *v2;
  if (*v2)
  {
    v71 = objc_opt_self();
    v72 = v70;
    v73 = [v71 sharedConnection];
    if (v73)
    {
      v74 = v73;
      v75 = [v73 effectiveBoolValueForSetting_];

      v76 = swift_getKeyPath();
      v77 = swift_allocObject();
      *(v77 + 16) = v75 == 2;
      v78 = v133;
      (*(v130 + 32))(v133, v68, v131);
      v79 = (v78 + *(v132 + 36));
      *v79 = v76;
      v79[1] = sub_23DD39D40;
      v79[2] = v77;
      *&v160 = 0;
      *(&v160 + 1) = 0xE000000000000000;
      sub_23DD42538();

      *&v160 = 0x6554657275636553;
      *(&v160 + 1) = 0xEF646C6569467478;
      MEMORY[0x23EEFDA30](v159, v150);
      sub_23DD39938();
      v80 = v149;
      sub_23DD41D48();

      sub_23DCEFA38(v78, &qword_27E30F2B0, &qword_23DD471C8);
      v81 = &qword_27E30F2B8;
      v82 = &qword_23DD471D0;
      sub_23DCFD8B0(v80, v153, &qword_27E30F2B8, &qword_23DD471D0);
      swift_storeEnumTagMultiPayload();
      sub_23DD39884(&qword_27E30F2D8, &qword_27E30F2B8, &qword_23DD471D0, sub_23DD39938);
LABEL_8:
      sub_23DD39884(&qword_27E30F2F0, &qword_27E30F280, &qword_23DD47198, sub_23DD3963C);
      sub_23DD41A78();
      return sub_23DCEFA38(v80, v81, v82);
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  v127 = *(v2 + 8);
LABEL_13:
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t sub_23DD35DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v7 = *(a3 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
  sub_23DD41EB8();
  v6 = *(a3 + 16);
  v8 = *(a3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
  return sub_23DD41F68();
}

uint64_t sub_23DD35E38(uint64_t a1)
{
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
  sub_23DD41EB8();
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
  return sub_23DD41F68();
}

void *sub_23DD35EC4@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v9 = *(a1 + 72);
  LOBYTE(v10) = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2C0, &qword_23DD471D8);
  sub_23DD41768();
  if (LOBYTE(v8[0]) == 1)
  {
    v9 = *(a1 + 48);
    *&v10 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
    result = sub_23DD41EB8();
  }

  else
  {
    v5 = *(a1 + 32);
    v9 = *(a1 + 16);
    v10 = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
    result = MEMORY[0x23EEFD790](v8, v6);
  }

  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

uint64_t sub_23DD35F98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v5 = a1[1];
  v9 = *(a4 + 72);
  v12 = *(a4 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2C0, &qword_23DD471D8);
  sub_23DD41768();
  if (v8 == 1)
  {
    v10 = *(a4 + 48);
    v13 = *(a4 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
    return sub_23DD41EC8();
  }

  else
  {
    v11 = *(a4 + 16);
    v14 = *(a4 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
    return sub_23DD41F68();
  }
}

uint64_t sub_23DD36084@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 112);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_23DD34850(a1);
}

uint64_t DetailsHeader.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF10, &qword_23DD46830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF18, &qword_23DD46838);
  v42 = *(v7 - 1);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF20, &qword_23DD46840);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = v37 - v12;
  v52 = *(v1 + 4);
  v13 = v1[1];
  v50 = *v1;
  v51 = v13;
  v14 = *(&v13 + 1);
  if (!*(&v13 + 1))
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_23DD416D8();

  v16 = v46;
  if (v46)
  {
    v17 = [v46 accountType];

    if (v17)
    {
      v18 = [v17 identifier];

      if (v18)
      {
        sub_23DD42178();

        v37[1] = v37;
        v20 = MEMORY[0x28223BE20](v19);
        MEMORY[0x28223BE20](v20);
        v40 = v10;
        v38 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF38, &qword_23DD46890);
        v41 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF40, &qword_23DD46898);
        v39 = v3;
        sub_23DCEF9F0(&qword_27E30EF48, &qword_27E30EF38, &qword_23DD46890);
        sub_23DD37994();
        sub_23DD41798();

        type metadata accessor for AccountsUIModel(0);
        sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
        v21 = sub_23DD41858();
        swift_getKeyPath();
        sub_23DD41878();

        v22 = swift_allocObject();
        v23 = v51;
        *(v22 + 16) = v50;
        *(v22 + 32) = v23;
        *(v22 + 48) = v52;
        sub_23DD37A4C(&v50, &v46);
        v35 = sub_23DCEF9F0(&qword_27E30EF28, &qword_27E30EF18, &qword_23DD46838);
        v36 = sub_23DD3792C();
        v24 = v43;
        v25 = v38;
        v26 = v45;
        sub_23DD41D98();

        (*(v42 + 8))(v26, v25);
        v27 = v44;
        v28 = v40;
        (*(v44 + 16))(v6, v24, v40);
        swift_storeEnumTagMultiPayload();
        v46 = v25;
        v47 = &type metadata for DetailsSheetContent;
        v48 = v35;
        v49 = v36;
        swift_getOpaqueTypeConformance2();
        sub_23DD41A78();
        return (*(v27 + 8))(v24, v28);
      }

      goto LABEL_6;
    }

    __break(1u);
LABEL_9:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
    return result;
  }

LABEL_6:
  sub_23DD419D8();
  *v6 = sub_23DD41C38();
  *(v6 + 1) = v30;
  v6[16] = v31 & 1;
  *(v6 + 3) = v32;
  swift_storeEnumTagMultiPayload();
  v33 = sub_23DCEF9F0(&qword_27E30EF28, &qword_27E30EF18, &qword_23DD46838);
  v34 = sub_23DD3792C();
  v46 = v7;
  v47 = &type metadata for DetailsSheetContent;
  v48 = v33;
  v49 = v34;
  swift_getOpaqueTypeConformance2();
  return sub_23DD41A78();
}

void sub_23DD367F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v21 = *a1;
  v22 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  sub_23DD41EB8();
  v9 = BYTE5(v23);

  if (v9 != 1)
  {
    v20 = 1;
    goto LABEL_5;
  }

  v10 = sub_23DD42138();
  v11 = [objc_opt_self() bundleWithIdentifier_];

  if (v11)
  {
    v12 = sub_23DD42138();
    v13 = sub_23DD42138();
    v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

    v15 = sub_23DD42178();
    v17 = v16;

    v23 = v15;
    v24 = v17;
    v18 = swift_allocObject();
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a1 + 32);
    sub_23DD37A4C(a1, &v21);
    sub_23DCF4570();
    sub_23DD41F18();
    (*(v5 + 32))(a2, v8, v4);
    v20 = 0;
LABEL_5:
    (*(v5 + 56))(a2, v20, 1, v4);
    return;
  }

  __break(1u);
}

uint64_t sub_23DD36A98(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    v3 = sub_23DD416C8();
    *v4 = !*v4;
    v3(&v7, 0);
  }

  else
  {
    v6 = *(a1 + 32);
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD36BA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F060, &qword_23DD46DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F068, &unk_23DD46E00);
  sub_23DCEF9F0(&qword_27E30F070, &qword_27E30F060, &qword_23DD46DF8);
  sub_23DD38358();
  return sub_23DD41E98();
}

uint64_t sub_23DD36C9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v52 = *a1;
  v53 = *(a1 + 2);
  *v46 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  sub_23DD41EB8();

  v40 = a2;
  v41 = a3;
  if (v50 != 1)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 3);
  if (!v8)
  {
    goto LABEL_21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  sub_23DD416D8();

  if (!v46[0])
  {
    goto LABEL_6;
  }

  ACAccount.userFullName.getter();
  v11 = v10;

  if (v11)
  {
    sub_23DCF4570();
    v12 = sub_23DD41C48();
    v14 = v13;
    v16 = v15;
    v18 = v17 & 1;
    sub_23DCFC0BC(v12, v13, v17 & 1);
  }

  else
  {
LABEL_6:
    v12 = 0;
    v14 = 0;
    v18 = 0;
    v16 = 0;
  }

  *v47 = *a1;
  v48 = *(a1 + 2);
  sub_23DD41EB8();

  v42 = v18;
  v43 = v16;
  if (v51 != 1)
  {
LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v19 = *(a1 + 3);
  if (!v19)
  {
LABEL_21:
    v39 = *(a1 + 4);
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v19;
  sub_23DD416D8();

  if (!v47[0])
  {
    goto LABEL_12;
  }

  v21 = [v47[0] username];

  if (v21)
  {
    sub_23DD42178();

    sub_23DCF4570();
    v22 = sub_23DD41C48();
    v24 = v23;
    v21 = v22;
    v44 = v26;
    v27 = v25 & 1;
    sub_23DCFC0BC(v22, v26, v25 & 1);
    v45 = v24;

    goto LABEL_14;
  }

LABEL_13:
  v44 = 0;
  v45 = 0;
  v27 = 0;
LABEL_14:
  sub_23DD41EB8();

  v28 = v12;
  if (v50 & 1) != 0 || (sub_23DD41EB8(), , (v51))
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 1;
  }

  else
  {
    sub_23DD41EB8();

    if (v49 == 1)
    {
      _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(v40, v41);
      sub_23DCF4570();
      v34 = sub_23DD41C48();
      v36 = v35;
      v29 = v34;
      v30 = v38;
      v31 = v37 & 1;
      sub_23DCFC0BC(v34, v38, v37 & 1);
      v32 = v36;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
    }
  }

  sub_23DCFC0CC(v28, v14, v42, v43);
  sub_23DCFC0CC(v21, v44, v27, v45);
  sub_23DD3840C(v29, v30, v31, v32);
  sub_23DCFC110(v21, v44, v27, v45);
  sub_23DCFC110(v28, v14, v42, v43);
  sub_23DD3841C(v29, v30, v31, v32);
  *a4 = v28;
  a4[1] = v14;
  a4[2] = v42;
  a4[3] = v43;
  a4[4] = v21;
  a4[5] = v44;
  a4[6] = v27;
  a4[7] = v45;
  a4[8] = v29;
  a4[9] = v30;
  a4[10] = v31;
  a4[11] = v32;
  sub_23DD3841C(v29, v30, v31, v32);
  sub_23DCFC110(v21, v44, v27, v45);
  return sub_23DCFC110(v28, v14, v42, v43);
}

uint64_t sub_23DD37188@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23DD420F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED98, &qword_23DD46548);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v21 = *a1;
  v22 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  sub_23DD41EB8();
  LODWORD(a1) = v23;

  if (a1 == 1)
  {
    LOBYTE(v21) = 0;
    sub_23DCF4A10(a2, a3, &v21);
    *&v21 = v18;
    (*(v9 + 104))(v12, *MEMORY[0x277D4D810], v8);
    sub_23DD41C58();
    (*(v9 + 8))(v12, v8);

    (*(v14 + 32))(a4, v17, v13);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v14 + 56))(a4, v19, 1, v13);
}

uint64_t sub_23DD373E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v5;
  return result;
}

uint64_t sub_23DD37464(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23DD416E8();
}

uint64_t sub_23DD374D4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  result = sub_23DD41EB8();
  *a2 = v6;
  *(a2 + 1) = v7;
  *(a2 + 2) = v8;
  *(a2 + 3) = v9;
  *(a2 + 4) = v10;
  *(a2 + 5) = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  return result;
}

double sub_23DD37568@<D0>(_OWORD *a1@<X8>)
{
  v15 = *v1;
  *&v16 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  sub_23DD41EB8();
  if (v14)
  {
    sub_23DD41FF8();
    sub_23DD41848();
    v10[0] = v14;
    v13 = 257;
    sub_23DD38338(v10);
  }

  else
  {
    sub_23DD419D8();
    v10[0] = sub_23DD41C38();
    v10[1] = v3;
    v11 = v4 & 1;
    v12 = v5;
    sub_23DD3821C(v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F040, &qword_23DD46DC8);
  sub_23DD38228();
  sub_23DD41A78();
  v6 = v20;
  a1[4] = v19;
  a1[5] = v6;
  a1[6] = v21[0];
  *(a1 + 107) = *(v21 + 11);
  v7 = v16;
  *a1 = v15;
  a1[1] = v7;
  result = *&v17;
  v9 = v18;
  a1[2] = v17;
  a1[3] = v9;
  return result;
}

uint64_t sub_23DD3771C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23DD418F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23DD377A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFD8, &qword_23DD46D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DCFD8B0(a1, &v6 - v4, &qword_27E30EFD8, &qword_23DD46D40);
  return sub_23DD418B8();
}

unint64_t sub_23DD37848()
{
  result = qword_27E30EF08;
  if (!qword_27E30EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF00, &qword_23DD467F0);
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF08);
  }

  return result;
}

unint64_t sub_23DD3792C()
{
  result = qword_27E30EF30;
  if (!qword_27E30EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF30);
  }

  return result;
}

uint64_t sub_23DD37988()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23DD36BA4();
}

unint64_t sub_23DD37994()
{
  result = qword_27E30EF50;
  if (!qword_27E30EF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF40, &qword_23DD46898);
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF50);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DD37B0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23DD37B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23DD37BD4()
{
  result = qword_27E30EF68;
  if (!qword_27E30EF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF70, &qword_23DD46AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF18, &qword_23DD46838);
    sub_23DCEF9F0(&qword_27E30EF28, &qword_27E30EF18, &qword_23DD46838);
    sub_23DD3792C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF68);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DD37CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23DD37D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23DD37E60()
{
  result = qword_27E30EF80;
  if (!qword_27E30EF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF78, &qword_23DD46CB0);
    sub_23DD37F18();
    sub_23DCEF9F0(&qword_27E30EFC8, &qword_27E30EFD0, &qword_23DD46CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF80);
  }

  return result;
}

unint64_t sub_23DD37F18()
{
  result = qword_27E30EF88;
  if (!qword_27E30EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF90, &qword_23DD46CB8);
    sub_23DD37FD0();
    sub_23DCEF9F0(&qword_27E30EFB8, &qword_27E30EFC0, &qword_23DD46CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF88);
  }

  return result;
}

unint64_t sub_23DD37FD0()
{
  result = qword_27E30EF98;
  if (!qword_27E30EF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EFA0, &qword_23DD46CC0);
    sub_23DCEF9F0(&qword_27E30EFA8, &qword_27E30EFB0, &qword_23DD46CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF98);
  }

  return result;
}

double sub_23DD38088@<D0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *&result = sub_23DD3237C(a1).n128_u64[0];
  return result;
}

unint64_t sub_23DD380A4()
{
  result = qword_27E30F008;
  if (!qword_27E30F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F008);
  }

  return result;
}

unint64_t sub_23DD380F8()
{
  result = qword_27E30F020;
  if (!qword_27E30F020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F010, &qword_23DD46D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F020);
  }

  return result;
}

uint64_t sub_23DD3817C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23DD380A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DD38228()
{
  result = qword_27E30F048;
  if (!qword_27E30F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F040, &qword_23DD46DC8);
    sub_23DD382B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F048);
  }

  return result;
}

unint64_t sub_23DD382B4()
{
  result = qword_27E30F050;
  if (!qword_27E30F050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F058, &qword_23DD46DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F050);
  }

  return result;
}

unint64_t sub_23DD38358()
{
  result = qword_27E30F078;
  if (!qword_27E30F078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F068, &unk_23DD46E00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F078);
  }

  return result;
}

uint64_t sub_23DD3840C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_23DCFC0CC(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_23DD3841C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_23DCFC110(result, a2, a3, a4);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23DD3847C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DD384C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23DD38530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23DD38578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DD385D4()
{
  result = qword_27E30F098;
  if (!qword_27E30F098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0A0, &qword_23DD46F08);
    sub_23DD37E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F098);
  }

  return result;
}

unint64_t sub_23DD38664()
{
  result = qword_27E30F0A8;
  if (!qword_27E30F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0B0, &qword_23DD46F10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EFF8, &qword_23DD46D60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F010, &qword_23DD46D70);
    sub_23DD3817C(&qword_27E30F028, &qword_27E30EFF8, &qword_23DD46D60);
    sub_23DD380F8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EFE0, &qword_23DD46D48);
    sub_23DD3817C(&qword_27E30F018, &qword_27E30EFE0, &qword_23DD46D48);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F0A8);
  }

  return result;
}

unint64_t sub_23DD387E0()
{
  result = qword_27E30F0B8;
  if (!qword_27E30F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0C0, &qword_23DD46F18);
    sub_23DCEF9F0(&qword_27E30F0C8, &qword_27E30F0D0, &qword_23DD46F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F0B8);
  }

  return result;
}

unint64_t sub_23DD38890()
{
  result = qword_27E30F0D8;
  if (!qword_27E30F0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0E0, &qword_23DD46F28);
    sub_23DD38228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F0D8);
  }

  return result;
}

unint64_t sub_23DD38994()
{
  result = qword_27E30F100;
  if (!qword_27E30F100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0F0, &qword_23DD46FD8);
    sub_23DD38A20();
    sub_23DD38DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F100);
  }

  return result;
}

unint64_t sub_23DD38A20()
{
  result = qword_27E30F108;
  if (!qword_27E30F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F110, &qword_23DD46FE0);
    sub_23DD38AAC();
    sub_23DD38BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F108);
  }

  return result;
}

unint64_t sub_23DD38AAC()
{
  result = qword_27E30F118;
  if (!qword_27E30F118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F120, &qword_23DD46FE8);
    sub_23DD38B38();
    sub_23DD38B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F118);
  }

  return result;
}

unint64_t sub_23DD38B38()
{
  result = qword_27E30F128;
  if (!qword_27E30F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F128);
  }

  return result;
}

unint64_t sub_23DD38B8C()
{
  result = qword_27E30F130;
  if (!qword_27E30F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F130);
  }

  return result;
}

unint64_t sub_23DD38BE0()
{
  result = qword_27E30F138;
  if (!qword_27E30F138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F140, &qword_23DD46FF0);
    sub_23DD38C6C();
    sub_23DD38CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F138);
  }

  return result;
}

unint64_t sub_23DD38C6C()
{
  result = qword_27E30F148;
  if (!qword_27E30F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F148);
  }

  return result;
}

unint64_t sub_23DD38CC0()
{
  result = qword_27E30F150;
  if (!qword_27E30F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F158, &unk_23DD46FF8);
    sub_23DD38D78();
    sub_23DCEF9F0(&qword_27E30F168, &qword_27E30EEC0, &qword_23DD46780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F150);
  }

  return result;
}

unint64_t sub_23DD38D78()
{
  result = qword_27E30F160;
  if (!qword_27E30F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F160);
  }

  return result;
}

unint64_t sub_23DD38DCC()
{
  result = qword_27E30F170;
  if (!qword_27E30F170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F178, &qword_23DD47008);
    sub_23DD38E58();
    sub_23DD38F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F170);
  }

  return result;
}

unint64_t sub_23DD38E58()
{
  result = qword_27E30F180;
  if (!qword_27E30F180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F188, &unk_23DD47010);
    sub_23DD38D78();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EEB0, &qword_23DD46770);
    sub_23DD30714();
    sub_23DCF4570();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F180);
  }

  return result;
}

unint64_t sub_23DD38F3C()
{
  result = qword_27E30F190;
  if (!qword_27E30F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F198, &qword_23DD47028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F1A0, &qword_23DD47030);
    sub_23DD39020();
    sub_23DCF4570();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F190);
  }

  return result;
}

unint64_t sub_23DD39020()
{
  result = qword_27E30F1A8;
  if (!qword_27E30F1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F1A0, &qword_23DD47030);
    sub_23DCEF9F0(&qword_27E30F1B0, &qword_27E30F1B8, &qword_23DD47038);
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F1A8);
  }

  return result;
}

unint64_t sub_23DD39104()
{
  result = qword_27E30F1C0;
  if (!qword_27E30F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F1C0);
  }

  return result;
}

id sub_23DD39158(id result, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 2u)
  {
    if (a5 > 4u)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          return result;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (a5 != 3)
    {
      if (a5 != 4)
      {
        return result;
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_16:
  }

  if (a5 != 1)
  {
    if (a5 != 2)
    {
      return result;
    }

LABEL_9:
  }

  return result;
}

void sub_23DD39234(void *a1, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 2u)
  {
    if (a5 > 4u)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          return;
        }

        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (a5 != 3)
    {
      if (a5 != 4)
      {
        return;
      }

LABEL_13:

      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_14:

    return;
  }

  if (a5 != 1)
  {
    if (a5 != 2)
    {
      return;
    }

LABEL_9:

    goto LABEL_14;
  }
}

unint64_t sub_23DD39380()
{
  result = qword_27E30F210;
  if (!qword_27E30F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F210);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23DD394B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_23DD39500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DD39570(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

void *sub_23DD39608@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_23DD35EC4(v1 + 32, a1);
}

unint64_t sub_23DD3963C()
{
  result = qword_27E30F2C8;
  if (!qword_27E30F2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F278, &qword_23DD47190);
    sub_23DD396F4();
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F2C8);
  }

  return result;
}

unint64_t sub_23DD396F4()
{
  result = qword_27E30F2D0;
  if (!qword_27E30F2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F270, &qword_23DD47188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F268, &qword_23DD47180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F260, &qword_23DD47178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EEA8, &qword_23DD47020);
    sub_23DCEF9F0(&qword_27E30EED0, &qword_27E30EEA8, &qword_23DD47020);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F2D0);
  }

  return result;
}

uint64_t sub_23DD39884(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23DD39AF4(&qword_27E30E7B8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DD39938()
{
  result = qword_27E30F2E0;
  if (!qword_27E30F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F2B0, &qword_23DD471C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F2A0, &qword_23DD471B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F298, &qword_23DD471B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F290, &qword_23DD471A8);
    sub_23DCEF9F0(&qword_27E30F2E8, &qword_27E30F290, &qword_23DD471A8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F2E0);
  }

  return result;
}

uint64_t sub_23DD39AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_117Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 112);

  v8 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

uint64_t objectdestroy_123Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  v7 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

unint64_t sub_23DD39C40()
{
  result = qword_27E30F2F8;
  if (!qword_27E30F2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F300, &qword_23DD471E8);
    sub_23DD39884(&qword_27E30F2D8, &qword_27E30F2B8, &qword_23DD471D0, sub_23DD39938);
    sub_23DD39884(&qword_27E30F2F0, &qword_27E30F280, &qword_23DD47198, sub_23DD3963C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F2F8);
  }

  return result;
}

char *AccountUISetting.CustomDataclass.__allocating_init(accountID:identifier:localizedName:icon:state:showsToggle:toggleEnabled:accessoryView:stateChangeBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v52 = a8;
  v62 = a7;
  v50 = a6;
  v49 = a5;
  v48 = a4;
  v47 = a2;
  v46 = a1;
  v60 = a17;
  v61 = a18;
  v59 = a16;
  v58 = a15;
  v56 = a13;
  v57 = a14;
  v55 = a12;
  v53 = a10;
  v54 = a11;
  v51 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v45 - v28;
  v30 = *(v18 + 48);
  v31 = *(v18 + 52);
  v32 = swift_allocObject();
  *(v32 + 7) = 0;
  v33 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__accessoryView;
  *&v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D8, &qword_23DD47200);
  sub_23DD41698();
  (*(v26 + 32))(&v32[v33], v29, v25);
  v34 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__subtext;
  v67 = 0u;
  v68 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E0, &unk_23DD440C0);
  sub_23DD41698();
  (*(v21 + 32))(&v32[v34], v24, v20);
  v35 = &v32[OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock];
  *v35 = 0;
  v35[1] = 0;
  v36 = v47;
  *(v32 + 2) = v46;
  *(v32 + 3) = v36;
  v37 = v48;
  *(v32 + 4) = a3;
  *(v32 + 5) = v37;
  *(v32 + 6) = v49;
  swift_beginAccess();
  v38 = *(v32 + 7);
  v39 = v50;
  *(v32 + 7) = v50;
  v49 = a3;
  v50 = v39;

  swift_beginAccess();
  v63 = v62;
  v64 = v52;
  v65 = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E8, &qword_23DD44510);
  sub_23DD41698();
  swift_endAccess();
  swift_beginAccess();
  v63 = v53;
  v64 = v54;
  v65 = v55;

  sub_23DD41698();
  swift_endAccess();
  swift_beginAccess();
  v63 = v56;
  v64 = v57;
  v65 = v58;

  sub_23DD41698();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v59;

  sub_23DD416E8();

  swift_beginAccess();
  v40 = *v35;
  v41 = v35[1];
  v43 = v60;
  v42 = v61;
  *v35 = v60;
  v35[1] = v42;
  sub_23DCDFF40(v43);
  sub_23DCF5098(v40);
  sub_23DCF5098(v43);
  return v32;
}

uint64_t sub_23DD3A240(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(char a1), uint64_t))
{
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(a1, v6, sub_23DD40E80, v9);
}

uint64_t AccountUISetting.DetailsConfiguration.init(iconShown:logoShown:serviceNameShown:fullNameShown:usernameShown:detailsButtonShown:detailsView:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  *(a8 + 8) = a7;
  return result;
}

__n128 AccountUISetting.init(id:type:label:editable:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *(a3 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  result = *a3;
  v9 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v9;
  *(a7 + 48) = v7;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

void *AccountUISettingSection.__allocating_init(id:settings:title:footer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[6] = 0;
  v12[7] = 0;
  v12[5] = 0;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  swift_beginAccess();
  v12[5] = a4;
  v12[6] = a5;
  swift_beginAccess();
  v12[7] = a6;
  return v12;
}

uint64_t AccountUISetting.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AccountUISetting.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AccountUISetting.DetailsConfiguration.detailsView.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

char *AccountUISetting.CustomDataclass.init(accountID:identifier:localizedName:icon:state:showsToggle:toggleEnabled:accessoryView:stateChangeBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v51 = a8;
  v61 = a7;
  v48 = a6;
  v49 = a5;
  v47 = a4;
  v46 = a2;
  v45 = a1;
  v59 = a17;
  v60 = a18;
  v58 = a16;
  v57 = a15;
  v55 = a13;
  v56 = a14;
  v54 = a12;
  v52 = a10;
  v53 = a11;
  v50 = a9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v44 - v29;
  *(v18 + 56) = 0;
  v31 = (v18 + 56);
  v32 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__accessoryView;
  *&v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D8, &qword_23DD47200);
  sub_23DD41698();
  (*(v27 + 32))(&v19[v32], v30, v26);
  v33 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__subtext;
  v66 = 0u;
  v67 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E0, &unk_23DD440C0);
  sub_23DD41698();
  (*(v22 + 32))(&v19[v33], v25, v21);
  v34 = &v19[OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock];
  *v34 = 0;
  v34[1] = 0;
  v35 = v46;
  *(v19 + 2) = v45;
  *(v19 + 3) = v35;
  v36 = v47;
  *(v19 + 4) = a3;
  *(v19 + 5) = v36;
  *(v19 + 6) = v49;
  swift_beginAccess();
  v37 = *v31;
  v38 = v48;
  *v31 = v48;
  v49 = a3;
  v48 = v38;

  swift_beginAccess();
  v62 = v61;
  v63 = v51;
  v64 = v50;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E8, &qword_23DD44510);
  sub_23DD41698();
  swift_endAccess();
  swift_beginAccess();
  v62 = v52;
  v63 = v53;
  v64 = v54;

  sub_23DD41698();
  swift_endAccess();
  swift_beginAccess();
  v62 = v55;
  v63 = v56;
  v64 = v57;

  sub_23DD41698();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v58;

  sub_23DD416E8();

  swift_beginAccess();
  v39 = *v34;
  v40 = v34[1];
  v42 = v59;
  v41 = v60;
  *v34 = v59;
  v34[1] = v41;
  sub_23DCDFF40(v42);
  sub_23DCF5098(v39);
  sub_23DCF5098(v42);
  return v19;
}

uint64_t sub_23DD3AB3C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t sub_23DD3ABBC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t sub_23DD3AC2C()
{
  swift_beginAccess();
  v2 = v0[2];
  v1 = v0[3];
  swift_beginAccess();
  v3 = v0[4];
  v4 = sub_23DD42178();
  v6 = v5;

  MEMORY[0x23EEFDA30](v4, v6);

  return v2;
}

void sub_23DD3AD20(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_23DD3AD78()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_23DD3ADBC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_23DD3AE54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 48);
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t sub_23DD3AEB4()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_23DD3AF00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void sub_23DD3AFA4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

void *sub_23DD3AFFC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_23DD3B040(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t (*sub_23DD3B114(uint64_t *a1))()
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
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3B1B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23DD3B358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3B490(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
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

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t (*sub_23DD3B63C(uint64_t *a1))()
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
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3B6E0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23DD3B880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3B9B8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
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

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__showsToggle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t sub_23DD3BB3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_23DD3BBD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t sub_23DD3BC78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t (*sub_23DD3BCE8(uint64_t *a1))()
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
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3BD8C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23DD3BF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3C064(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
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

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__toggleEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t sub_23DD3C1D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v5;
  return result;
}

uint64_t sub_23DD3C254(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t sub_23DD3C2D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t (*sub_23DD3C344(uint64_t *a1))()
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
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3C3E8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F340, &qword_23DD47338);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23DD3C588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F340, &qword_23DD47338);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3C6C0(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F340, &qword_23DD47338);
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

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__accessoryView;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

double sub_23DD3C830@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23DD3C8B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DCFC0CC(v2, v3, v4, v5);
  return sub_23DD416E8();
}

uint64_t sub_23DD3C950()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t sub_23DD3C9C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t (*sub_23DD3CA58(uint64_t *a1))()
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
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3CAFC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F348, &qword_23DD47388);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23DD3CC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F348, &qword_23DD47388);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3CDD4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F348, &qword_23DD47388);
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

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__subtext;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t sub_23DD3CF44@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23DD40E78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23DCDFF40(v4);
}

uint64_t sub_23DD3CFE4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23DD40E44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_23DCDFF40(v3);
  return sub_23DCF5098(v8);
}

uint64_t sub_23DD3D0AC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *, void *))
{
  v12 = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[0] = sub_23DD40E4C;
  v11[1] = v9;

  a5(a1, &v12, v11);
}

uint64_t sub_23DD3D158()
{
  v1 = (v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_23DCDFF40(v3);
  return v3;
}

uint64_t sub_23DD3D1B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23DCF5098(v6);
}

uint64_t sub_23DD3D274()
{
  swift_beginAccess();
  v1 = v0[4];
  v2 = sub_23DD42178();
  v4 = v3;
  v5 = v1;
  v6 = MEMORY[0x23EEFDA60](v2, v4);

  swift_beginAccess();
  v7 = v0[2];
  v8 = v0[3];

  v9 = MEMORY[0x23EEFDA60](v7, v8);

  result = v6 + v9;
  if (__OFADD__(v6, v9))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD3D330()
{
  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];

  sub_23DD421D8();

  swift_beginAccess();
  v3 = v0[4];
  sub_23DD42178();
  v4 = v3;
  sub_23DD421D8();
}

uint64_t AccountUISetting.CustomDataclass.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__showsToggle, v4);
  v5(v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__toggleEnabled, v4);
  v6 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__accessoryView;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__subtext;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock + 8);
  sub_23DCF5098(*(v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock));
  return v0;
}

uint64_t AccountUISetting.CustomDataclass.__deallocating_deinit()
{
  AccountUISetting.CustomDataclass.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DD3D5C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountUISetting.CustomDataclass(0);
  result = sub_23DD41688();
  *a1 = result;
  return result;
}

uint64_t sub_23DD3D600()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[4];
  v3 = sub_23DD42178();
  v5 = v4;
  v6 = v2;
  v7 = MEMORY[0x23EEFDA60](v3, v5);

  swift_beginAccess();
  v8 = v1[2];
  v9 = v1[3];

  v10 = MEMORY[0x23EEFDA60](v8, v9);

  result = v7 + v10;
  if (__OFADD__(v7, v10))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD3D6C0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[2];
  v3 = v1[3];

  sub_23DD421D8();

  swift_beginAccess();
  v4 = v1[4];
  sub_23DD42178();
  v5 = v4;
  sub_23DD421D8();
}

uint64_t sub_23DD3D778()
{
  sub_23DD42688();
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[2];
  v3 = v1[3];

  sub_23DD421D8();

  swift_beginAccess();
  v4 = v1[4];
  sub_23DD42178();
  v5 = v4;
  sub_23DD421D8();

  return sub_23DD426A8();
}

uint64_t sub_23DD3D83C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = v3[2];
  v4 = v3[3];
  swift_beginAccess();
  v6 = v3[4];
  v7 = sub_23DD42178();
  v9 = v8;

  MEMORY[0x23EEFDA30](v7, v9);

  *a1 = v5;
  a1[1] = v4;
  return result;
}

id AccountUISetting.CustomDataclassTableConfig.__allocating_init(customDataclasses:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_beginAccess();
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4C8, &qword_23DD47390);
  sub_23DD41698();
  swift_endAccess();
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AccountUISetting.CustomDataclassTableConfig.init(customDataclasses:)(uint64_t a1)
{
  swift_beginAccess();
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4C8, &qword_23DD47390);
  sub_23DD41698();
  swift_endAccess();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AccountUISetting.CustomDataclassTableConfig(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t (*sub_23DD3DA70(uint64_t *a1))()
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
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3DB14(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F360, &qword_23DD473E8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F358, &qword_23DD473E0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23DD3DCB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F360, &qword_23DD473E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F358, &qword_23DD473E0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3DDEC(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F360, &qword_23DD473E8);
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

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting26CustomDataclassTableConfig__customDataclasses;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F358, &qword_23DD473E0);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t sub_23DD3E04C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountUISetting.CustomDataclassTableConfig(0);
  result = sub_23DD41688();
  *a1 = result;
  return result;
}

id AccountUISetting.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_23DD39158(v2, v3, v4, v5, v6);
}

__n128 AccountUISetting.type.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_23DD39234(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  return result;
}

uint64_t AccountUISetting.label.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t AccountUISetting.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_23DD3E1C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *AccountUISettingSection.init(id:settings:title:footer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_beginAccess();
  v6[5] = a4;
  v6[6] = a5;
  swift_beginAccess();
  v6[7] = a6;
  return v6;
}

uint64_t sub_23DD3E268(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_23DD3E2C8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_23DD3E314(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_23DD3E368(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t sub_23DD3E3C8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_23DD3E400(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_23DD3E498(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_23DD3E4F8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_23DD3E530(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void *AccountUISettingSection.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t AccountUISettingSection.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23DD3E600@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
}

uint64_t sub_23DD3E64C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountUISettingSection();
  result = sub_23DD41688();
  *a1 = result;
  return result;
}

uint64_t sub_23DD3E688()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t sub_23DD3E6FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23DD416E8();
}

uint64_t (*sub_23DD3E768(uint64_t *a1))()
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
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCE2984;
}

uint64_t sub_23DD3E80C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F370, &qword_23DD47440);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F368, &qword_23DD47438);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23DD3E9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F370, &qword_23DD47440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F368, &qword_23DD47438);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3EAE4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F370, &qword_23DD47440);
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

  v10 = OBJC_IVAR____TtC18AccountsUISettings29AccountsUISettingsDetailModel__account;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F368, &qword_23DD47438);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCE6D80;
}

uint64_t sub_23DD3ECA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23DD416E8();
}

uint64_t (*sub_23DD3ED0C(uint64_t *a1))()
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
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3EDB0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F380, &qword_23DD47498);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23DD3EF50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F380, &qword_23DD47498);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3F088(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F380, &qword_23DD47498);
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

  v10 = OBJC_IVAR____TtC18AccountsUISettings29AccountsUISettingsDetailModel__sections;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

id AccountsUISettingsDetailModel.__allocating_init(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = objc_allocWithZone(v1);
  v9 = OBJC_IVAR____TtC18AccountsUISettings29AccountsUISettingsDetailModel__sections;
  v15 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F080, &qword_23DD474A0);
  sub_23DD41698();
  (*(v4 + 32))(&v8[v9], v7, v3);
  swift_beginAccess();
  v14 = a1;
  sub_23DD3F854();
  v10 = a1;
  sub_23DD41698();
  swift_endAccess();
  v13.receiver = v8;
  v13.super_class = v1;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id AccountsUISettingsDetailModel.init(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC18AccountsUISettings29AccountsUISettingsDetailModel__sections;
  v15 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F080, &qword_23DD474A0);
  sub_23DD41698();
  (*(v4 + 32))(&v1[v8], v7, v3);
  swift_beginAccess();
  v14 = a1;
  sub_23DD3F854();
  v9 = a1;
  sub_23DD41698();
  swift_endAccess();
  v10 = type metadata accessor for AccountsUISettingsDetailModel(0);
  v13.receiver = v1;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id AccountsUISettingsDetailModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23DD3F5B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23DD3F6B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUISettingsDetailModel(0);
  result = sub_23DD41688();
  *a1 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall AccountsUISettingsPlugin.sections(for:)(ACAccount a1)
{
  v1 = 0;
  result.value._rawValue = v1;
  return result;
}

uint64_t _s18AccountsUISettings16AccountUISettingV15CustomDataclassC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[4];
  swift_beginAccess();
  v5 = a2[4];
  v6 = sub_23DD42178();
  v8 = v7;
  if (v6 == sub_23DD42178() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_23DD42648();

    v12 = 0;
    if ((v11 & 1) == 0)
    {
      return v12 & 1;
    }
  }

  swift_beginAccess();
  v14 = a1[2];
  v13 = a1[3];
  swift_beginAccess();
  if (v14 == a2[2] && v13 == a2[3])
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_23DD42648();
  }

  return v12 & 1;
}

unint64_t sub_23DD3F854()
{
  result = qword_2814FCC50;
  if (!qword_2814FCC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814FCC50);
  }

  return result;
}

unint64_t sub_23DD3F8C4()
{
  result = qword_27E30F388;
  if (!qword_27E30F388)
  {
    type metadata accessor for AccountUISetting.CustomDataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F388);
  }

  return result;
}

uint64_t keypath_get_56Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t get_enum_tag_for_layout_string_18AccountsUISettings16AccountUISettingV11SettingTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23DD3F9C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_23DD3FA10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DD3FA74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23DD3FAD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_23DD3FB38()
{
  sub_23DCEF378(319, &qword_27E30F3A0, &qword_27E30E2E8, &qword_23DD44510);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23DCEF378(319, &qword_2814FCD18, &qword_27E30E2D8, &qword_23DD47200);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23DCEF378(319, &qword_27E30F3A8, &qword_27E30E2E0, &unk_23DD440C0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DD40510()
{
  sub_23DCEF378(319, &unk_27E30F3C0, &qword_27E30E4C8, &qword_23DD47390);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23DD4071C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23DD40764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_23DD407AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_23DD409E0()
{
  sub_23DD40D60();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23DCEF378(319, &qword_2814FCCF0, &qword_27E30F080, &qword_23DD474A0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DD40D60()
{
  if (!qword_2814FCCB0)
  {
    sub_23DD3F854();
    v0 = sub_23DD416F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2814FCCB0);
    }
  }
}

uint64_t sub_23DD40E4C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_23DD40E80(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}