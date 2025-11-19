uint64_t sub_181FCCA90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 24) >> 1)
  {
    v8 = a5();
    *v6 = v8;
  }

  result = a6(v10, a2, 1, a3, a4);
  *v6 = v8;
  return result;
}

unint64_t sub_181FCCB9C()
{
  result = qword_1EA836B50;
  if (!qword_1EA836B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83AB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836B50);
  }

  return result;
}

unint64_t sub_181FCCC44(unint64_t result, _BYTE *a2, const void *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_181F59790(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_182064BD0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_181FCCD18(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a2;
  v8 = *v5;
  if (*(*v5 + 2) < a2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_182AD3168();
    v11 = result;
    v12 = result - v10;
    if (!__OFSUB__(result, v10))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = a4;
  v6 = a3;
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
    goto LABEL_22;
  }

LABEL_9:
  v13 = *(v8 + 2);
  v14 = v13 + v12;
  if (__OFADD__(v13, v12))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v13 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    v8 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v16, 1, v8);
    *v5 = v8;
  }

  result = sub_1820650DC(v9, v7, v11, v6, v4);
  *v5 = v8;
  return result;
}

uint64_t sub_181FCCE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v15 = a4;
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

  result = sub_182AD3EB8();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_182AD3EB8();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_181A49C08(result);

  return v15(v7, v6, 1, v4);
}

uint64_t sub_181FCCF8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181FC0EF8(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for NWActorSystem.ServerRole()
{
  result = qword_1EA836BA0;
  if (!qword_1EA836BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181FCD148(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_181FCD1A0()
{
  result = qword_1EA836958;
  if (!qword_1EA836958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836958);
  }

  return result;
}

uint64_t sub_181FCD258(uint64_t a1)
{
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v10 = v1[14];
  v9 = v1[15];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F54964;

  return sub_181FC45C0(a1, v4, v5, v6, v7, v8, v10, v9);
}

void *sub_181FCD36C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_181FCD404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15)
{
  if (a15 >> 62 != 1)
  {
    if (a15 >> 62)
    {
      return result;
    }

    sub_181AB612C(a8);
    sub_181D9D680(a10, a11);
    sub_181D9D680(a12, a13);
  }
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_181FCD5F0()
{
  result = qword_1EA8397C8;
  if (!qword_1EA8397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8397C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network11NWTXTRecordVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t get_enum_tag_for_layout_string_7Network13NWActorSystemC4Role33_C0A7D50B08BE5B6E2370D86208C89EBCLLO(void *a1)
{
  v1 = a1[14];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_181FCD770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3 | (*(a1 + 104) >> 11) & 0xFFFFE000 | (*(a1 + 104) >> 1 << 6);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_181FCD7E0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      v4 = -a2;
      *a1 = ((v4 << 58) | (2 * v4)) & 0xF000000000000007;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = (v4 >> 5) & 0xFE | ((v4 >> 13) << 24);
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_181FCD888(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 104) & 0xFFFF01;
    v3 = *(result + 112) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF9uLL;
    *(result + 104) = v2;
    *(result + 112) = v3;
  }

  else
  {
    *result = (a2 - 2) & 1 | (8 * ((a2 - 2) >> 1));
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0;
    *(result + 112) = 0x8000000000000000;
  }

  return result;
}

void sub_181FCD904()
{
  sub_181FCD9A8(319, &unk_1EA836BE0, &qword_1EA8397D8);
  if (v0 <= 0x3F)
  {
    sub_181FCD9A8(319, &qword_1EA836B38, &unk_1EA8397F0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_181FCD9A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8397E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_181FCDA80(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_181FCDB58(unint64_t result, uint64_t a2, __int128 *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_181CA2688(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_18206A7AC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

char *sub_181FCDC2C(char *result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_18206AA78(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_181FCDD00(unint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_181DDDFD0(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_18206AB64(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_181FCDDDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F5EB68;

  return sub_181FC97F0(a1, v5, v4);
}

uint64_t objectdestroy_88Tm()
{

  return swift_deallocObject();
}

uint64_t sub_181FCDEEC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 152);
}

double sub_181FCDF90@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_181FCDFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181FCE03C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_181FC82B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_181FCE110(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_181FCE158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181FCE21C@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 160) + 16) == 0;
  return result;
}

void sub_181FCE290(void *a1@<X8>)
{
  *(v1 + 184) = 0;
  v2 = *(v1 + 176);
  *(v1 + 176) = 0;
  *a1 = v2;
}

void sub_181FCE2A4(void *a1@<X8>)
{
  v2 = *(v1 + 192);
  *(v1 + 192) = MEMORY[0x1E69E7CC0];
  *a1 = v2;
}

uint64_t sub_181FCE2BC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 200);
}

uint64_t sub_181FCE30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_181FCE450@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 160);
}

void sub_181FCE4A0(void *a1@<X8>)
{
  *(v1 + 184) = 1;
  v2 = *(v1 + 192);
  *(v1 + 192) = MEMORY[0x1E69E7CC0];
  *a1 = v2;
}

uint64_t sub_181FCE4C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F54964;

  return sub_181FCB66C(a1, v4, v5, v7, v6);
}

uint64_t destroy for StreamSendBuffer()
{
  Frame.deinit();
}

unint64_t sub_181FCE700(unint64_t result)
{
  v4 = result;
  v5 = *(v1 + 232);
  if (*(v1 + 224))
  {
    v6 = 0;
    goto LABEL_26;
  }

  v2 = *(v1 + 216);
  if (*(v1 + 24) == 5)
  {
    v6 = nw_frame_unclaimed_length(*v1);
    if (!v2)
    {
      goto LABEL_25;
    }

LABEL_10:
    v12 = v2[4];
    v13 = v2[3] + v12;
    if (v2[2] < v13)
    {
      v13 = v2[2];
    }

    v35 = v2;
    v36 = v12;
    v37 = v13;
    v14 = swift_retain_n();
    v15 = v2;
    do
    {
      if (v12 == v37)
      {
        if ((sub_181AC81FC(v14) & 1) == 0)
        {

          goto LABEL_25;
        }

        v15 = v35;
        v12 = v36;
      }

      v17 = v15 + 8 * v12++;
      v36 = v12;
      v18 = *(v17 + 40);
      swift_beginAccess();
      if (*(v18 + 40) == 5)
      {
        v16 = *(v18 + 16);

        v3 = nw_frame_unclaimed_length(v16);
      }

      else
      {
        v19 = *(v18 + 88);
        if (v19)
        {
          v20 = *(v18 + 72);
          v21 = *(v18 + 80);
          v10 = __OFADD__(v20, v21);
          v22 = v20 + v21;
          if (v10)
          {
            goto LABEL_39;
          }

          v3 = v19 - v22;
          if (__OFSUB__(v19, v22))
          {
            goto LABEL_40;
          }
        }

        else
        {

          v3 = 0;
        }
      }

      swift_endAccess();

      v10 = __OFADD__(v6, v3);
      v6 += v3;
    }

    while (!v10);
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = *(v1 + 72);
  if (v7)
  {
    v8 = *(v1 + 56);
    v9 = *(v1 + 64);
    v10 = __OFADD__(v8, v9);
    v11 = v8 + v9;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v6 = v7 - v11;
      if (!__OFSUB__(v7, v11))
      {
        if (!v2)
        {
          goto LABEL_25;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
    return result;
  }

  v6 = 0;
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_25:
  if (v6 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_26:
  v23 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
LABEL_30:
    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1EA843418);

    v27 = sub_182AD2678();
    v28 = sub_182AD38B8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315650;
      v31 = sub_182AD3BF8();
      v33 = sub_181C64FFC(v31, v32, &v35);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v35);
      *(v29 + 22) = 2080;
      v34 = sub_181C64FFC(v3, v2, &v35);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_181A37000, v27, v28, "%s %s %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v30, -1, -1);
      MEMORY[0x1865DF520](v29, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  result = v23 - v4;
  if (v23 > v4)
  {
    if (v5 <= v4)
    {
      return result;
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD6D20);
    v24 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v24);

    MEMORY[0x1865D9CA0](0xD000000000000024, 0x8000000182BD6D40);
    v25 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v25);

    v3 = 0;
    v2 = 0xE000000000000000;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  return 0;
}

unint64_t sub_181FCEB24(size_t a1, unint64_t a2, __int128 *a3)
{
  v7 = *v3;
  v177 = *(v3 + 1);
  LODWORD(v8) = *(v3 + 24);
  v176[0] = *(v3 + 25);
  *(v176 + 15) = *(v3 + 5);
  v9 = v3[8];
  v136 = v3[7];
  v10 = v3[9];
  v11 = *(v3 + 8);
  v169 = *(v3 + 7);
  v170 = v11;
  v175 = *(v3 + 208);
  v12 = *(v3 + 12);
  v173 = *(v3 + 11);
  v174 = v12;
  v13 = *(v3 + 10);
  v171 = *(v3 + 9);
  v172 = v13;
  v14 = *(v3 + 6);
  v167 = *(v3 + 5);
  v168 = v14;
  v133 = v3[27];
  LOBYTE(v15) = *(v3 + 224);
  v16 = v3[29];
  if (qword_1EA837250 != -1)
  {
LABEL_103:
    swift_once();
  }

  v132 = byte_1EA843430;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *v140 = 0;
    *&v140[8] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD6ED0);
    v119 = a1;
    *&v153 = a1;
    v86 = sub_182AD41B8();
    v127 = a3;
    MEMORY[0x1865D9CA0](v86);

    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD6EF0);
    *&v153 = a2;
    v87 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v87);

    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD6F10);
    *&v153 = *(a3 + 7);
    v88 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v88);

    v134 = *&v140[8];
    oslog = *v140;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_126;
    }

    goto LABEL_105;
  }

  while (1)
  {
    if (a1 < v16)
    {
      *v140 = 0;
      *&v140[8] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000029, 0x8000000182BD6EA0);
      *&v153 = a1;
      v17 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v17);

      MEMORY[0x1865D9CA0](0x6761726F7473202CLL, 0xED00002074612065);
      *&v153 = v16;
      v18 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v18);

      v19 = *v140;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v20 = sub_182AD2698();
      __swift_project_value_buffer(v20, qword_1EA843418);

      v21 = sub_182AD2678();
      v22 = sub_182AD38B8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v140 = v24;
        *v23 = 136315650;
        v25 = sub_182AD3BF8();
        v27 = sub_181C64FFC(v25, v26, v140);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v140);
        *(v23 + 22) = 2080;
        v28 = sub_181C64FFC(v19, *(&v19 + 1), v140);

        *(v23 + 24) = v28;
        _os_log_impl(&dword_181A37000, v21, v22, "%s %s %s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v24, -1, -1);
        MEMORY[0x1865DF520](v23, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    if (*(a3 + 24) == 5)
    {
      v29 = nw_frame_unclaimed_length(*a3);
    }

    else
    {
      v29 = *(a3 + 9);
      if (v29)
      {
        v30 = *(a3 + 7);
        v31 = *(a3 + 8);
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_115;
        }

        v32 = __OFSUB__(v29, v33);
        v29 -= v33;
        if (v32)
        {
          goto LABEL_116;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_108;
        }
      }
    }

    if (v29 >= a2)
    {
      v29 = a2;
    }

    v130 = v29;
    if (v15)
    {
      return 0;
    }

    if (v8 == 5)
    {
      v15 = nw_frame_unclaimed_length(v7);
      a2 = v133;
      goto LABEL_30;
    }

    a2 = v133;
    if (!v10)
    {
      goto LABEL_29;
    }

    v35 = v136 + v9;
    if (__OFADD__(v136, v9))
    {
      goto LABEL_120;
    }

    v15 = v10 - v35;
    if (__OFSUB__(v10, v35))
    {
      goto LABEL_121;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_29:
      v15 = 0;
    }

LABEL_30:
    v127 = a3;
    a3 = (v16 + v15);
    if (__CFADD__(v16, v15))
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
      goto LABEL_114;
    }

    if (a3 <= a1)
    {
      v10 = 0;
      if (!a2)
      {
        return v10;
      }
    }

    else
    {
      *v140 = v7;
      *&v140[8] = v177;
      v140[24] = v8;
      *&v140[25] = v176[0];
      *&v140[40] = *(v176 + 15);
      v141 = v136;
      v142 = v9;
      v143 = v10;
      v150 = v173;
      v151 = v174;
      v152 = v175;
      v146 = v169;
      v147 = v170;
      v148 = v171;
      v149 = v172;
      v144 = v167;
      v145 = v168;
      if ((a1 - v16) < 0)
      {
        goto LABEL_117;
      }

      v9 = v130;
      v36 = sub_181FD03A0(v127, 0, a1 - v16, v130);
      if (!v36)
      {
        goto LABEL_118;
      }

      v10 = v36;
      if (v15 < v36)
      {
        goto LABEL_119;
      }

      if (v36 >= v130 || !a2)
      {
        return v10;
      }
    }

    v37 = *(a2 + 32);
    v38 = *(a2 + 24) + v37;
    if (*(a2 + 16) < v38)
    {
      v38 = *(a2 + 16);
    }

    v164 = a2;
    v165 = v37;
    v166 = v38;
    v39 = swift_retain_n();
    v119 = a1;
LABEL_42:
    v128 = v10;
    v40 = __CFADD__(a1, v10);
    v10 += a1;
    LODWORD(v8) = v40;
    v9 = a3;
    while (1)
    {
      if (v37 == v166 && (sub_181AC81FC(v39) & 1) == 0)
      {

        return v128;
      }

      v41 = v165;
      v136 = ++v165;
      v7 = *(v164 + 8 * v41 + 40);
      swift_beginAccess();
      a3 = *(v7 + 16);
      v163 = *(v7 + 24);
      LODWORD(v15) = *(v7 + 40);
      *v162 = *(v7 + 41);
      *&v162[15] = *(v7 + 56);
      v42 = *(v7 + 72);
      v43 = *(v7 + 80);
      v16 = *(v7 + 88);
      v45 = *(v7 + 144);
      v44 = *(v7 + 160);
      v46 = *(v7 + 112);
      v155 = *(v7 + 128);
      v156 = v45;
      v47 = *(v7 + 208);
      v48 = *(v7 + 176);
      v159 = *(v7 + 192);
      v160 = v47;
      v161 = *(v7 + 224);
      v157 = v44;
      v158 = v48;
      v153 = *(v7 + 96);
      v154 = v46;
      v134 = v43;
      oslog = v42;
      if (v15 == 5)
      {

        v49 = nw_frame_unclaimed_length(a3);
      }

      else if (v16)
      {
        v50 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_101;
        }

        v32 = __OFSUB__(v16, v50);
        v51 = (v16 - v50);
        if (v32)
        {
          goto LABEL_102;
        }

        a2 = v51;

        v49 = a2;
        if ((a2 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }
      }

      else
      {

        v49 = 0;
      }

      a2 = a3;
      a3 = (v9 + v49);
      if (__CFADD__(v9, v49))
      {
        goto LABEL_99;
      }

      if (v8)
      {
        goto LABEL_100;
      }

      if (v10 < a3)
      {
        break;
      }

      swift_endAccess();

      v9 = a3;
      v37 = v136;
    }

    v52 = v10 - v9;
    if (v10 < v9)
    {
      goto LABEL_110;
    }

    v10 = v130 - v128;
    if (v130 < v128)
    {
      goto LABEL_111;
    }

    if (((v10 | v128 | v52) & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    v120 = v49;
    v122 = v130 - v128;
    v125 = v52;
    if (v132 && __nwlog_is_datapath_logging_enabled())
    {
      *v140 = 0;
      *&v140[8] = 0xE000000000000000;
      sub_182AD3BA8();

      *v140 = 0x204D4F5246;
      *&v140[8] = 0xE500000000000000;
      v139 = v125;
      v70 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v70);

      MEMORY[0x1865D9CA0](0x206874676E656C20, 0xE800000000000000);
      v139 = (v130 - v128);
      v71 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v71);

      MEMORY[0x1865D9CA0](0x666F204F544E4920, 0xED00002074657366);
      v139 = v128;
      v72 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v72);

      v73 = *v140;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v74 = sub_182AD2698();
      __swift_project_value_buffer(v74, qword_1EA843418);
      v75 = swift_allocObject();
      *(v75 + 16) = "copyIntoFrame(_:atOffset:fromOffset:length:)";
      *(v75 + 24) = 44;
      *(v75 + 32) = 2;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_181F8C724;
      *(v76 + 24) = v75;
      v113 = swift_allocObject();
      *(v113 + 16) = 1564427099;
      *(v113 + 24) = 0xE400000000000000;
      v102 = swift_allocObject();
      *(v102 + 16) = v73;

      v10 = sub_182AD2678();
      v77 = sub_182AD38A8();
      v104 = swift_allocObject();
      *(v104 + 16) = 32;
      v105 = swift_allocObject();
      *(v105 + 16) = 8;
      v78 = swift_allocObject();
      *(v78 + 16) = sub_181F8C71C;
      *(v78 + 24) = v76;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_181F8C718;
      *(v79 + 24) = v78;
      v106 = v79;
      v107 = swift_allocObject();
      *(v107 + 16) = 32;
      v108 = swift_allocObject();
      *(v108 + 16) = 8;
      v80 = swift_allocObject();
      *(v80 + 16) = sub_181F8C720;
      *(v80 + 24) = v113;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_181F8C718;
      *(v81 + 24) = v80;
      buf = v81;
      v111 = swift_allocObject();
      *(v111 + 16) = 32;
      v114 = swift_allocObject();
      *(v114 + 16) = 8;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_181F8C720;
      *(v82 + 24) = v102;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_181F8C718;
      *(v9 + 24) = v82;
      v103 = v77;
      v83 = v77;
      v8 = v10;
      if (os_log_type_enabled(v10, v83))
      {
        v10 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v137 = v84;
        v138 = 0;
        *v10 = 770;
        v85 = v84;
        v139 = (v10 + 2);
        *v140 = sub_181F8C728;
        *&v140[8] = v104;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v105;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C714;
        *&v140[8] = v106;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v107;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v108;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C714;
        *&v140[8] = buf;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v111;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v114;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C714;
        *&v140[8] = v9;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        v9 = v8;
        _os_log_impl(&dword_181A37000, v8, v103, "%s %s %s", v10, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v85, -1, -1);
        MEMORY[0x1865DF520](v10, -1, -1);
      }

      else
      {
      }
    }

    *v140 = a2;
    *&v140[8] = v163;
    v140[24] = v15;
    *&v140[25] = *v162;
    *&v140[40] = *&v162[15];
    v141 = oslog;
    v142 = v134;
    v143 = v16;
    v150 = v159;
    v151 = v160;
    v152 = v161;
    v146 = v155;
    v147 = v156;
    v148 = v157;
    v149 = v158;
    v144 = v153;
    v145 = v154;
    v53 = Frame.unclaimedBytes.getter();
    if ((v55 & 1) == 0)
    {
      v56 = v53;
      if (v53)
      {
        v9 = v54 - v53 - v125;
        if (v54 - v53 > v125)
        {
          v57 = v127[1];
          *v140 = *v127;
          *&v140[16] = v57;
          *&v140[32] = v127[2];
          v58 = *(v127 + 6);
          v16 = *(v127 + 7);
          v152 = *(v127 + 208);
          v10 = *(v127 + 8);
          v8 = *(v127 + 9);
          v59 = v127[12];
          v150 = v127[11];
          v151 = v59;
          v60 = v127[8];
          v146 = v127[7];
          v147 = v60;
          v61 = v127[10];
          v148 = v127[9];
          v149 = v61;
          v62 = v127[6];
          v144 = v127[5];
          v145 = v62;
          *&v140[48] = v58;
          v141 = v16;
          v142 = v10;
          v143 = v8;
          v63 = Frame.unclaimedBytes.getter();
          if ((v64 & 1) == 0)
          {
            break;
          }
        }
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
LABEL_105:
    v89 = sub_182AD2698();
    __swift_project_value_buffer(v89, qword_1EA843418);
    v90 = swift_allocObject();
    *(v90 + 16) = "copyOutSendData(offset:length:into:)";
    *(v90 + 24) = 36;
    *(v90 + 32) = 2;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_181F8C724;
    *(v91 + 24) = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = 1564427099;
    *(v92 + 24) = 0xE400000000000000;
    v115 = swift_allocObject();
    *(v115 + 16) = oslog;
    *(v115 + 24) = v134;

    oslog = sub_182AD2678();
    v131 = sub_182AD38A8();
    v118 = swift_allocObject();
    *(v118 + 16) = 32;
    v117 = swift_allocObject();
    *(v117 + 16) = 8;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_181F8C71C;
    *(v93 + 24) = v91;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_181F8C718;
    *(v94 + 24) = v93;
    v121 = v94;
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    v124 = swift_allocObject();
    v124[16] = 8;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_181F8C720;
    *(v95 + 24) = v92;
    v96 = swift_allocObject();
    *(v96 + 16) = sub_181F8C718;
    *(v96 + 24) = v95;
    v126 = v96;
    v129 = swift_allocObject();
    *(v129 + 16) = 32;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v98 = swift_allocObject();
    *(v98 + 16) = sub_181F8C720;
    *(v98 + 24) = v115;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_181F8C718;
    *(v99 + 24) = v98;
    if (os_log_type_enabled(oslog, v131))
    {
      v112 = v97;
      v116 = v99;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v162 = 0;
      v109 = v101;
      *v100 = 770;
      v164 = v101;
      *&v153 = v100 + 2;
      *v140 = sub_181F8C728;
      *&v140[8] = v118;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v117;
      sub_181F73AE0(v140, &v153, v162, &v164);
      a3 = v127;

      *v140 = sub_181F8C714;
      *&v140[8] = v121;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v123;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v124;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C714;
      *&v140[8] = v126;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v129;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v112;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C714;
      *&v140[8] = v116;
      sub_181F73AE0(v140, &v153, v162, &v164);

      _os_log_impl(&dword_181A37000, oslog, v131, "%s %s %s", v100, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v109, -1, -1);
      MEMORY[0x1865DF520](v100, -1, -1);

      a1 = v119;
    }

    else
    {
LABEL_108:

      a1 = v119;
      a3 = v127;
    }
  }

  v65 = v63;
  if (*(v127 + 24) == 5)
  {
    v66 = nw_frame_unclaimed_length(*v127);
    goto LABEL_74;
  }

  if (!v8)
  {
    if (v9 >= v122)
    {
      v16 = v122 & (v122 >> 63);
    }

    else
    {
      v16 = v9 & (v9 >> 63);
    }

    v68 = v128;
    goto LABEL_79;
  }

  v67 = (v16 + v10);
  if (__OFADD__(v16, v10))
  {
    goto LABEL_122;
  }

  v32 = __OFSUB__(v8, v67);
  v66 = v8 - v67;
  if (v32)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

LABEL_74:
  v68 = v128;
  v69 = v130 - v128;
  if (v9 < v122)
  {
    v69 = v9;
  }

  if (v66 >= v69)
  {
    v16 = v69;
  }

  else
  {
    v16 = v66;
  }

LABEL_79:
  if (!v65)
  {
    goto LABEL_125;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_113;
  }

  memmove((v65 + v68), &v125[v56], v16);
  if (!v16)
  {
    goto LABEL_124;
  }

  if (v120 < v16)
  {
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
    goto LABEL_123;
  }

  v10 = v16 + v128;
  a1 = v119;
  if (v130 < v16)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (v10 != v130)
    {

      v37 = v136;
      goto LABEL_42;
    }

    v10 = v130;
  }

  return v10;
}

int64_t sub_181FD03A0(__int128 *a1, uint8_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = v5[11];
  v93 = v5[10];
  v94 = v9;
  v95 = v5[12];
  v96 = *(v5 + 208);
  v10 = v5[7];
  v89 = v5[6];
  v90 = v10;
  v11 = v5[9];
  v91 = v5[8];
  v92 = v11;
  v12 = v5[3];
  v85 = v5[2];
  v86 = v12;
  v13 = v5[5];
  v87 = v5[4];
  v88 = v13;
  v14 = v5[1];
  v83 = *v5;
  v84 = v14;
  if (((a3 | a2 | a4) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v7 = a4;
  v4 = a3;
  v6 = a2;
  v8 = a1;
  if (qword_1EA837250 != -1)
  {
LABEL_28:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    sub_182AD3BA8();

    *&v69 = 0x204D4F5246;
    *(&v69 + 1) = 0xE500000000000000;
    v39 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v39);

    MEMORY[0x1865D9CA0](0x206874676E656C20, 0xE800000000000000);
    v40 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v40);

    MEMORY[0x1865D9CA0](0x666F204F544E4920, 0xED00002074657366);
    v68 = v6;
    v41 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v41);

    v23 = 0xE500000000000000;
    v19 = 0x204D4F5246;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  while (1)
  {
    v79 = v93;
    v80 = v94;
    v81 = v95;
    v82 = v96;
    v75 = v89;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v71 = v85;
    v72 = v86;
    v73 = v87;
    v74 = v88;
    v69 = v83;
    v70 = v84;
    v16 = Frame.unclaimedBytes.getter();
    result = 0;
    if ((v18 & 1) != 0 || !v16)
    {
      return result;
    }

    v19 = v15 - v16 - v4;
    if (v15 - v16 <= v4)
    {
      return 0;
    }

    v20 = v16;
    v21 = v8[1];
    v69 = *v8;
    v70 = v21;
    v71 = v8[2];
    v22 = *(v8 + 6);
    v23 = *(v8 + 7);
    v82 = *(v8 + 208);
    v25 = *(v8 + 8);
    v24 = *(v8 + 9);
    v26 = v8[12];
    v80 = v8[11];
    v81 = v26;
    v27 = v8[8];
    v76 = v8[7];
    v77 = v27;
    v28 = v8[10];
    v78 = v8[9];
    v79 = v28;
    v29 = v8[6];
    v74 = v8[5];
    v75 = v29;
    *&v72 = v22;
    *(&v72 + 1) = v23;
    *&v73 = v25;
    *(&v73 + 1) = v24;
    v30 = Frame.unclaimedBytes.getter();
    if (v31)
    {
      return 0;
    }

    if (*(v8 + 24) == 5)
    {
      v32 = v30;
      LODWORD(v33) = nw_frame_unclaimed_length(*v8);
      v30 = v32;
      v33 = v33;
LABEL_15:
      if (v19 >= v7)
      {
        v36 = v7;
      }

      else
      {
        v36 = v19;
      }

      if (v33 >= v36)
      {
        v33 = v36;
      }

LABEL_20:
      if (!v30)
      {
        __break(1u);

        while (1)
        {

          __break(1u);
        }
      }

      if ((v33 & 0x8000000000000000) == 0)
      {
        v37 = &v20[v4];
        v38 = v33;
        memmove(&v6[v30], v37, v33);
        return v38;
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (!v24)
    {
      if (v19 >= v7)
      {
        v33 = v7 & (v7 >> 63);
      }

      else
      {
        v33 = v19 & (v19 >> 63);
      }

      goto LABEL_20;
    }

    v34 = v23 + v25;
    if (__OFADD__(v23, v25))
    {
      goto LABEL_34;
    }

    v35 = __OFSUB__(v24, v34);
    v33 = v24 - v34;
    if (!v35)
    {
      goto LABEL_15;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_30:
    v42 = sub_182AD2698();
    __swift_project_value_buffer(v42, qword_1EA843418);
    v43 = swift_allocObject();
    *(v43 + 16) = "copyIntoFrame(_:atOffset:fromOffset:length:)";
    *(v43 + 24) = 44;
    *(v43 + 32) = 2;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_181F8C724;
    *(v44 + 24) = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = 1564427099;
    *(v45 + 24) = 0xE400000000000000;
    v46 = swift_allocObject();
    *(v46 + 16) = v19;
    *(v46 + 24) = v23;

    oslog = sub_182AD2678();
    v64 = sub_182AD38A8();
    buf = swift_allocObject();
    buf[16] = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C71C;
    *(v47 + 24) = v44;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C718;
    *(v48 + 24) = v47;
    v62 = v48;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C720;
    *(v49 + 24) = v45;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_181F8C718;
    *(v50 + 24) = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_181F8C720;
    *(v53 + 24) = v46;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_181F8C718;
    *(v54 + 24) = v53;
    if (os_log_type_enabled(oslog, v64))
    {
      v58 = v52;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66 = v56;
      v67 = 0;
      *v55 = 770;
      v57 = v56;
      v68 = v55 + 2;
      *&v69 = sub_181F8C728;
      *(&v69 + 1) = buf;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v59;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C714;
      *(&v69 + 1) = v62;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v63;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v61;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C714;
      *(&v69 + 1) = v50;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v51;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v58;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C714;
      *(&v69 + 1) = v54;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      _os_log_impl(&dword_181A37000, oslog, v64, "%s %s %s", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v57, -1, -1);
      MEMORY[0x1865DF520](v55, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_181FD0DD0(uint64_t result, uint64_t a2)
{
  v6 = result + a2;
  if (__CFADD__(result, a2))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    result = sub_181F59CEC(0, *(v2 + 16) + 1, 1, v2);
    v2 = result;
    goto LABEL_19;
  }

  v4 = a2;
  v5 = result;
  v7 = 0;
  v8 = v3[31];
  v3 += 31;
  v2 = v8;
  v9 = *(v8 + 16);
  v10 = 24;
  do
  {
    if (v9 == v7)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_19:
      v22 = *(v2 + 16);
      v21 = *(v2 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_181F59CEC((v21 > 1), v22 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 16) = v22 + 1;
      v23 = v2 + 16 * v22;
      *(v23 + 32) = v5;
      *(v23 + 40) = v4;
      goto LABEL_39;
    }

    if (v7 >= *(v2 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v11 = *(v2 + v10 + 8);
    v12 = *(v2 + v10 + 16);
    v13 = v11 + v12;
    if (__CFADD__(v11, v12))
    {
      goto LABEL_42;
    }

    if (v6 < v11)
    {
      return sub_181FCC964(v7, v7, v5, v4);
    }

    if (v6 == v11)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_182083584(v2);
        v2 = result;
      }

      if (v7 >= *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v24 = v2 + v10;
        *(v2 + v10 + 8) = v5;
        v25 = *(v2 + v10 + 16);
        v17 = __CFADD__(v25, v4);
        v26 = v25 + v4;
        if (!v17)
        {
          goto LABEL_33;
        }

        __break(1u);
LABEL_29:
        v4 = v6 - v13;
        if (v6 <= v13)
        {
          return result;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_31;
        }
      }

      result = sub_182083584(v2);
      v2 = result;
LABEL_31:
      if (v7 >= *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v24 = v2 + v10;
        v27 = *(v2 + v10 + 16);
        v17 = __CFADD__(v27, v4);
        v26 = v27 + v4;
        if (!v17)
        {
LABEL_33:
          *(v24 + 16) = v26;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_51:
      result = sub_182083584(v2);
      v2 = result;
LABEL_36:
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v28 = *(v2 + v10);
        v17 = __CFADD__(v28, v4);
        v29 = v28 + v4;
        if (!v17)
        {
          *(v2 + v10) = v29;
LABEL_39:
          *v3 = v2;
          return result;
        }
      }

      __break(1u);
      return result;
    }

    v14 = v11 - v5;
    if (v11 > v5)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_182083584(v2);
        v2 = result;
      }

      v15 = v2 + v10;
      v16 = *(v2 + v10 + 8);
      v17 = v16 >= v14;
      v18 = v16 - v14;
      if (!v17)
      {
        goto LABEL_43;
      }

      *(v15 + 8) = v18;
      v19 = *(v15 + 16);
      v17 = __CFADD__(v19, v14);
      v20 = v19 + v14;
      if (v17)
      {
        goto LABEL_44;
      }

      *(v15 + 16) = v20;
      *v3 = v2;
      v11 = *(v15 + 8);
    }

    if (v11 >= v5)
    {
      goto LABEL_29;
    }

    v10 += 16;
    ++v7;
  }

  while (v13 < v5);
  v4 = v6 - v13;
  if (v6 > v13)
  {
    v5 = v7 - 1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_36;
    }

    goto LABEL_51;
  }

  return result;
}

char *sub_181FD1044(char *result, uint64_t a2)
{
  v3 = &result[a2];
  if (__CFADD__(result, a2))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v4 = *(v2 + 232);
  v5 = v4 < result || v4 >= v3;
  if (v5)
  {
    goto LABEL_21;
  }

  v6 = *(v2 + 248);
  v7 = *(v6 + 2);
  if (!v7 || v3 < *(v6 + 4))
  {
    return 0;
  }

  do
  {
    v9 = *(v6 + 4);
    if (v3 < v9)
    {
      break;
    }

    v10 = *(v6 + 5);
    v5 = __CFADD__(v9, v10);
    v11 = (v9 + v10);
    if (v5)
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v11 > v3)
    {
      v3 = v11;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v7 - 1) > *(v6 + 3) >> 1)
    {
      v6 = sub_181F59CEC(isUniquelyReferenced_nonNull_native, v7, 1, v6);
    }

    v8 = *(v6 + 2);
    result = memmove(v6 + 32, v6 + 48, 16 * v8 - 16);
    *(v6 + 2) = v8 - 1;
    *(v2 + 248) = v6;
    v7 = *(v6 + 2);
  }

  while (v7);
  return v3;
}

uint64_t sub_181FD1138(char *a1, uint64_t a2)
{
  v5 = &a1[a2];
  if (__CFADD__(a1, a2))
  {
LABEL_48:
    __break(1u);
  }

  else if (qword_1EA837250 == -1)
  {
    goto LABEL_3;
  }

  v39 = a1;
  v40 = v2;
  v41 = a2;
  swift_once();
  a1 = v39;
  a2 = v41;
  v2 = v40;
LABEL_3:
  v6 = byte_1EA843430;
  v115 = v2;
  if (byte_1EA843430 != 1)
  {
    v7 = (v2 + 232);
    v8 = *(v2 + 232);
    if (v8 >= v5)
    {
      return 0;
    }

    if (v8 >= a1)
    {
      goto LABEL_7;
    }

LABEL_30:
    sub_181FD0DD0(a1, a2);
    return 0;
  }

  v3 = a1;
  v4 = a2;
  if (__nwlog_is_datapath_logging_enabled())
  {
    v112 = 1;
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_182AD3BA8();

    v120 = 0x203A666F204B4341;
    v121 = 0xE800000000000000;
    v130[0] = v3;
    v42 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v42);

    MEMORY[0x1865D9CA0](0x74676E656C202B20, 0xEA00000000002068);
    v130[0] = v4;
    v43 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v43);

    MEMORY[0x1865D9CA0](61, 0xE100000000000000);
    v130[0] = v5;
    v44 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v44);

    MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD6E20);
    v130[0] = *(v2 + 232);
    v45 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v45);

    v17 = v120;
    v18 = v121;
    if (qword_1EA837248 != -1)
    {
LABEL_77:
      swift_once();
    }

    v46 = sub_182AD2698();
    __swift_project_value_buffer(v46, qword_1EA843418);
    v47 = swift_allocObject();
    *(v47 + 16) = "acknowledgedSendData(offset:length:)";
    *(v47 + 24) = 36;
    *(v47 + 32) = 2;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C724;
    *(v48 + 24) = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = 1564427099;
    *(v49 + 24) = 0xE400000000000000;
    v50 = swift_allocObject();
    *(v50 + 16) = v17;
    *(v50 + 24) = v18;

    oslog = sub_182AD2678();
    v109 = sub_182AD38A8();
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v100 = swift_allocObject();
    *(v100 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C71C;
    *(v51 + 24) = v48;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_181F8C718;
    *(v52 + 24) = v51;
    v104 = swift_allocObject();
    *(v104 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_181F8C720;
    *(v54 + 24) = v49;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_181F8C718;
    *(v55 + 24) = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_181F8C720;
    *(v58 + 24) = v50;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_181F8C718;
    *(v59 + 24) = v58;
    if (os_log_type_enabled(oslog, v109))
    {
      v97 = v52;
      v60 = v53;
      v61 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v129 = 0;
      v98 = v128;
      *v61 = 770;
      v130[0] = v61 + 2;
      v120 = sub_181F8C728;
      v121 = v102;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v100;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v97;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v104;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v60;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v55;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v56;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v57;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v59;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      _os_log_impl(&dword_181A37000, oslog, v109, "%s %s %s", v61, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v98, -1, -1);
      MEMORY[0x1865DF520](v61, -1, -1);

      v2 = v115;
    }

    else
    {
LABEL_55:

      v2 = v115;
    }

    v6 = v112;
  }

  v7 = (v2 + 232);
  v8 = *(v2 + 232);
  if (v8 >= v5)
  {
    result = __nwlog_is_datapath_logging_enabled();
    if (!result)
    {
      return result;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v62 = sub_182AD2698();
    __swift_project_value_buffer(v62, qword_1EA843418);
    v63 = swift_allocObject();
    *(v63 + 16) = "acknowledgedSendData(offset:length:)";
    *(v63 + 24) = 36;
    *(v63 + 32) = 2;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_181F8C258;
    *(v64 + 24) = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = 1564427099;
    *(v65 + 24) = 0xE400000000000000;
    v66 = swift_allocObject();
    *(v66 + 16) = 0xD000000000000022;
    *(v66 + 24) = 0x8000000182BD6DA0;
    v67 = sub_182AD2678();
    v68 = sub_182AD38A8();
    v105 = swift_allocObject();
    *(v105 + 16) = 32;
    v107 = swift_allocObject();
    *(v107 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_181F8C264;
    *(v69 + 24) = v64;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_181F8C27C;
    *(v70 + 24) = v69;
    v110 = swift_allocObject();
    *(v110 + 16) = 32;
    v113 = swift_allocObject();
    *(v113 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_181F8C26C;
    *(v71 + 24) = v65;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C718;
    *(v72 + 24) = v71;
    v116 = swift_allocObject();
    *(v116 + 16) = 32;
    osloga = swift_allocObject();
    LOBYTE(osloga[2].isa) = 8;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C26C;
    *(v73 + 24) = v66;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_181F8C718;
    *(v74 + 24) = v73;
    v75 = v67;
    if (os_log_type_enabled(v67, v68))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v128 = v77;
      v129 = 0;
      *v76 = 770;
      v130[0] = v76 + 2;
      v120 = sub_181F8C274;
      v121 = v105;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v107;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C284;
      v121 = v70;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v110;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v113;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v72;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v116;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = osloga;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v74;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      _os_log_impl(&dword_181A37000, v75, v68, "%s %s %s", v76, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v77, -1, -1);
      MEMORY[0x1865DF520](v76, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  a2 = v4;
  a1 = v3;
  if (v8 < v3)
  {
    goto LABEL_30;
  }

LABEL_7:
  v108 = v7;
  v112 = v6;
  a1 = sub_181FD1044(a1, a2);
  if (a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = a1;
  }

  if (v8 < v9)
  {
    do
    {
      if (*(v2 + 224))
      {
        v24 = v2;
        v120 = 0;
        v121 = 0xE000000000000000;
        sub_182AD3BA8();

        v120 = 541803329;
        v121 = 0xE400000000000000;
        v130[0] = v9;
        v25 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v25);

        MEMORY[0x1865D9CA0](0xD000000000000020, 0x8000000182BD6DF0);
        v130[0] = v8;
        v26 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v26);

        MEMORY[0x1865D9CA0](33, 0xE100000000000000);
        v28 = v120;
        v27 = v121;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v29 = sub_182AD2698();
        __swift_project_value_buffer(v29, qword_1EA843418);

        v30 = sub_182AD2678();
        v31 = sub_182AD38C8();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v120 = v33;
          *v32 = 136315650;
          v34 = sub_182AD3BF8();
          v36 = sub_181C64FFC(v34, v35, &v120);

          *(v32 + 4) = v36;
          v24 = v115;
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v120);
          *(v32 + 22) = 2080;
          v37 = sub_181C64FFC(v28, v27, &v120);

          *(v32 + 24) = v37;
          _os_log_impl(&dword_181A37000, v30, v31, "%s %s %s", v32, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v33, -1, -1);
          MEMORY[0x1865DF520](v32, -1, -1);
        }

        else
        {
        }

        return *(v24 + 240);
      }

      if (*(v2 + 24) == 5)
      {
        a1 = nw_frame_unclaimed_length(*v2);
        v12 = a1;
      }

      else
      {
        v12 = *(v2 + 72);
        if (v12)
        {
          v13 = *(v2 + 56);
          v14 = *(v2 + 64);
          v15 = __OFADD__(v13, v14);
          v16 = v13 + v14;
          if (v15)
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v15 = __OFSUB__(v12, v16);
          v12 -= v16;
          if (v15)
          {
            goto LABEL_54;
          }

          if (v12 < 0)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }
      }

      v17 = v8 + v12;
      if (__CFADD__(v8, v12))
      {
        goto LABEL_47;
      }

      if (v9 < v17)
      {
        *v108 = v9;
        if (&v9[-v8] < 0)
        {
          __break(1u);
        }

        else
        {
          v38 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(&v9[-v8], 0, 1);
          v10 = v112;
          if (v38)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_64;
      }

      v18 = v9;
      oslog = v17;
      *(v2 + 232) = v17;
      FrameArray.popFirst()(&v120);
      Frame.finalize(success:)(1);
      v19 = v120;
      v20 = v121;
      v21 = v122;
      v3 = v123;
      v22 = *(&v124 + 1);
      v4 = v124;
      v5 = v125;
      if (v125 != 2 || v124 != 0)
      {
        sub_181F68EF4(v120, v121, v122, v123);

        sub_181F68F3C(v4, v22, v5);
        __break(1u);
        goto LABEL_77;
      }

      if ((v127 & 1) == 0 && v126)
      {
        MEMORY[0x1865DF520](v126, -1, -1);
      }

      sub_181F68EF4(v19, v20, v21, v3);

      v9 = v18;
      v11 = v17 >= v18;
      v2 = v115;
      v8 = v17;
    }

    while (!v11);
  }

  v10 = v112;
  if (v8 != v9)
  {
    return 0;
  }

LABEL_40:
  if (*(v2 + 224) != 1)
  {
    return 0;
  }

  if (v10 && __nwlog_is_datapath_logging_enabled())
  {
LABEL_64:
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_182AD3BA8();

    v120 = 0xD000000000000018;
    v121 = 0x8000000182BD6DD0;
    if (*(v2 + 240))
    {
      v78 = 1702195828;
    }

    else
    {
      v78 = 0x65736C6166;
    }

    if (*(v2 + 240))
    {
      v79 = 0xE400000000000000;
    }

    else
    {
      v79 = 0xE500000000000000;
    }

    MEMORY[0x1865D9CA0](v78, v79);

    v80 = v120;
    oslogb = v121;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v81 = sub_182AD2698();
    __swift_project_value_buffer(v81, qword_1EA843418);
    v82 = swift_allocObject();
    *(v82 + 16) = "acknowledgedSendData(offset:length:)";
    *(v82 + 24) = 36;
    *(v82 + 32) = 2;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_181F8C724;
    *(v83 + 24) = v82;
    v84 = swift_allocObject();
    *(v84 + 16) = 1564427099;
    *(v84 + 24) = 0xE400000000000000;
    v85 = swift_allocObject();
    *(v85 + 16) = v80;
    *(v85 + 24) = oslogb;

    v86 = sub_182AD2678();
    LOBYTE(v82) = sub_182AD38A8();
    v87 = swift_allocObject();
    *(v87 + 16) = 32;
    v106 = swift_allocObject();
    *(v106 + 16) = 8;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_181F8C71C;
    *(v88 + 24) = v83;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_181F8C718;
    *(v89 + 24) = v88;
    v103 = swift_allocObject();
    *(v103 + 16) = 32;
    v111 = swift_allocObject();
    *(v111 + 16) = 8;
    v90 = swift_allocObject();
    *(v90 + 16) = sub_181F8C720;
    *(v90 + 24) = v84;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_181F8C718;
    *(v91 + 24) = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = 32;
    v114 = swift_allocObject();
    *(v114 + 16) = 8;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_181F8C720;
    *(v93 + 24) = v85;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_181F8C718;
    *(v94 + 24) = v93;
    v101 = v82;
    if (os_log_type_enabled(v86, v82))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v128 = v96;
      v129 = 0;
      *v95 = 770;
      v99 = v96;
      v130[0] = v95 + 2;
      v120 = sub_181F8C728;
      v121 = v87;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v106;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v89;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v103;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v111;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v91;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v92;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v114;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v94;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      _os_log_impl(&dword_181A37000, v86, v101, "%s %s %s", v95, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v99, -1, -1);
      MEMORY[0x1865DF520](v95, -1, -1);
    }

    else
    {
    }

    v2 = v115;
  }

  return *(v2 + 240);
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t assignWithTake for StreamSendBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  sub_181F68EF4(v6, v7, v8, v9);
  v10 = *(a2 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v13 = *(a1 + 48);
  *(a1 + 48) = v10;
  sub_181F68F3C(v11, v12, v13);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v14 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v14;
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);

  return a1;
}

uint64_t getEnumTagSinglePayload for StreamSendBuffer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 248);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamSendBuffer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 248) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PathStatus.description.getter()
{
  v1 = 0x64696C61766E69;
  v2 = 0x6673697461736E75;
  if (*v0 != 2)
  {
    v2 = 0x6169667369746173;
  }

  if (*v0)
  {
    v1 = 0x6569667369746173;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_181FD2F38()
{
  v1 = 0x64696C61766E69;
  v2 = 0x6673697461736E75;
  if (*v0 != 2)
  {
    v2 = 0x6169667369746173;
  }

  if (*v0)
  {
    v1 = 0x6569667369746173;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

const char *PathProperties.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v95 = v0[2];
  v97 = v0[3];
  v3 = *(v0 + 5);
  v163 = *(v0 + 4);
  v164 = v3;
  v165 = *(v0 + 6);
  v166 = *(v0 + 28);
  v4 = *(v0 + 3);
  v161 = *(v0 + 2);
  v162 = v4;
  v5 = *(v0 + 116);
  v105 = *(v0 + 117);
  v102 = *(v0 + 59);
  v6 = v0[15];
  v7 = v0[16];
  v160 = *(v0 + 152);
  v159 = *(v0 + 17);
  v94 = *(v0 + 153);
  v100 = *(v0 + 77);
  v112 = *(v0 + 39);
  v8 = v0[25];
  v158 = v0[24];
  v9 = *(v0 + 11);
  v156 = *(v0 + 10);
  v157 = v9;
  v155 = *(v0 + 13);
  v109 = v0[28];
  v110 = v8;
  v10 = *(v0 + 29);
  v11 = *(v0 + 31);
  v12 = v0[34];
  v154 = v0[33];
  v152 = v10;
  v153 = v11;
  *&v108 = v0[35];
  *(&v108 + 1) = v12;
  v13 = *(v0 + 72);
  v111 = *(v0 + 73);
  v14 = *(v0 + 37);
  v15 = *(v0 + 39);
  v16 = *(v0 + 41);
  v151 = v0[43];
  v149 = v15;
  v150 = v16;
  v148 = v14;
  v17 = 0xE700000000000000;
  v103 = *(v0 + 88);
  v104 = v13;
  v107 = *(v0 + 356);
  v18 = 0xEB00000000646569;
  v19 = 0x6673697461736E75;
  v20 = *(v0 + 358);
  if (v5 != 2)
  {
    v19 = 0x6169667369746173;
    v18 = 0xEB00000000656C62;
  }

  *(v147 + 15) = *(v0 + 373);
  v21 = 0x6569667369746173;
  v99 = *(v0 + 357);
  if (v5)
  {
    v17 = 0xE900000000000064;
  }

  else
  {
    v21 = 0x64696C61766E69;
  }

  v147[0] = v20;
  v106 = v5;
  if (v5 <= 1)
  {
    v22 = v17;
  }

  else
  {
    v21 = v19;
    v22 = v18;
  }

  v23 = *(v0 + 377);
  *&v117 = v21;
  *(&v117 + 1) = v22;

  MEMORY[0x1865D9CA0](10272, 0xE200000000000000);

  v96 = v6;
  if (!v7)
  {
    v6 = 0x6F73616572206F6ELL;
  }

  v24 = v7;
  if (!v7)
  {
    v7 = 0xE90000000000006ELL;
  }

  v101 = v24;

  MEMORY[0x1865D9CA0](v6, v7);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);

  v146 = v117;
  v98 = v23;
  if (v23)
  {
    v25 = MEMORY[0x1865D9CA0](0x656C62616976202CLL, 0xE800000000000000);
  }

  v26 = v97;
  v27 = v103;
  if (v2)
  {
    v28 = *(v2 + 40);
    v29 = *(v2 + 48);
    strcpy(&v117, ", interface: ");
    HIWORD(v117) = -4864;

    MEMORY[0x1865D9CA0](v28, v29);
    MEMORY[0x1865D9CA0](v117, *(&v117 + 1));

    result = *(v2 + 120);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(result >> 32))
    {
      if (!result)
      {
        v27 = v103;
        if (*(v2 + 184) != 1)
        {
LABEL_24:

          goto LABEL_25;
        }

        v33 = 0xE600000000000000;
        v31 = 0x31312E323038;
LABEL_23:
        *&v117 = 91;
        *(&v117 + 1) = 0xE100000000000000;
        MEMORY[0x1865D9CA0](v31, v33);

        MEMORY[0x1865D9CA0](93, 0xE100000000000000);
        MEMORY[0x1865D9CA0](91, 0xE100000000000000);

        goto LABEL_24;
      }

      result = nw_interface_radio_type_to_string(result);
      v27 = v103;
      if (result)
      {
        v31 = sub_182AD3158();
        v33 = v32;
        goto LABEL_23;
      }

LABEL_155:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_25:
  if ((v104 == 12 || v104 == 6) && v111)
  {
    v25 = MEMORY[0x1865D9CA0](0x6465706F6373202CLL, 0xE800000000000000);
  }

  if ((v112 & 0x40) != 0)
  {
    v25 = MEMORY[0x1865D9CA0](0x34767069202CLL, 0xE600000000000000);
    if ((v112 & 0x80) == 0)
    {
LABEL_31:
      if (!v109)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }
  }

  else if ((v112 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  v25 = MEMORY[0x1865D9CA0](0x36767069202CLL, 0xE600000000000000);
  if (!v109)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (*(v109 + 24) >= 1)
  {
    v25 = MEMORY[0x1865D9CA0](0x736E64202CLL, 0xE500000000000000);
  }

LABEL_37:
  if ((v112 & 0x80000) != 0)
  {
LABEL_40:
    v25 = MEMORY[0x1865D9CA0](0x736E65707865202CLL, 0xEB00000000657669);
    goto LABEL_41;
  }

  if (v1)
  {
    if (*(v1 + 136))
    {
      goto LABEL_40;
    }
  }

  else if (v110)
  {
    v34 = v110;
    v35 = v110[4];
    v36 = v110[2];
    if (v36 >= v110[3] + v35)
    {
      v36 = v110[3] + v35;
    }

    v114 = v110;
    v115 = v35;
    v116 = v36;
    while (1)
    {
      if (v35 == v36)
      {
        v25 = sub_181AC81FC(v25);
        if ((v25 & 1) == 0)
        {

          v26 = v97;
          goto LABEL_70;
        }

        v34 = v114;
        v35 = v115;
      }

      v37 = v35 + 1;
      v115 = v35 + 1;
      v38 = &v34[26 * v35];
      v39 = *(v38 + 9);
      v40 = *(v38 + 13);
      v41 = *(v38 + 7);
      v120 = *(v38 + 11);
      v121 = v40;
      v118 = v41;
      v119 = v39;
      v42 = *(v38 + 17);
      v43 = *(v38 + 21);
      v44 = *(v38 + 15);
      v124 = *(v38 + 19);
      *v125 = v43;
      v122 = v44;
      v123 = v42;
      v45 = *(v38 + 25);
      v46 = *(v38 + 27);
      v47 = *(v38 + 23);
      *&v127[10] = *(v38 + 226);
      v126 = v45;
      *v127 = v46;
      *&v125[16] = v47;
      v117 = *(v38 + 5);
      v48 = *(&v117 + 1);
      if (*(&v117 + 1))
      {
        if (v127[24])
        {
          break;
        }
      }

      v36 = v116;
      v35 = v37;
    }

    sub_181AFE6F4(&v117, v113);

    sub_181AFE6A0(&v117);
    v49 = *(v48 + 136);

    v26 = v97;
    if (v49)
    {
      goto LABEL_40;
    }
  }

LABEL_70:
  if (v106 == 1 && v105 != 4 && v105 != 29 && (v2 && (*(v2 + 136) & 1) != 0 || v95 && (*(v95 + 136) & 1) != 0 || v26 && (*(v26 + 136) & 1) != 0))
  {
    goto LABEL_40;
  }

LABEL_41:
  if ((v112 & 0x100000) != 0)
  {
LABEL_90:
    v25 = MEMORY[0x1865D9CA0](0x7274736E6F63202CLL, 0xED000064656E6961);
    goto LABEL_91;
  }

  if (v1)
  {
    if ((*(v1 + 136) & 0x40) != 0)
    {
      goto LABEL_90;
    }
  }

  else if (v110)
  {
    v50 = v110;
    v51 = v110[4];
    v52 = v110[2];
    if (v52 >= v110[3] + v51)
    {
      v52 = v110[3] + v51;
    }

    v114 = v110;
    v115 = v51;
    v116 = v52;
    while (1)
    {
      if (v51 == v52)
      {
        v25 = sub_181AC81FC(v25);
        if ((v25 & 1) == 0)
        {

          v26 = v97;
          goto LABEL_81;
        }

        v50 = v114;
        v51 = v115;
      }

      v53 = v51 + 1;
      v115 = v51 + 1;
      v54 = &v50[26 * v51];
      v55 = *(v54 + 9);
      v56 = *(v54 + 13);
      v57 = *(v54 + 7);
      v120 = *(v54 + 11);
      v121 = v56;
      v118 = v57;
      v119 = v55;
      v58 = *(v54 + 17);
      v59 = *(v54 + 21);
      v60 = *(v54 + 15);
      v124 = *(v54 + 19);
      *v125 = v59;
      v122 = v60;
      v123 = v58;
      v61 = *(v54 + 25);
      v62 = *(v54 + 27);
      v63 = *(v54 + 23);
      *&v127[10] = *(v54 + 226);
      v126 = v61;
      *v127 = v62;
      *&v125[16] = v63;
      v117 = *(v54 + 5);
      v64 = *(&v117 + 1);
      if (*(&v117 + 1))
      {
        if (v127[24])
        {
          break;
        }
      }

      v52 = v116;
      v51 = v53;
    }

    sub_181AFE6F4(&v117, v113);

    sub_181AFE6A0(&v117);
    v65 = *(v64 + 136);

    v26 = v97;
    if ((v65 & 0x40) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_90;
  }

LABEL_81:
  if ((v106 == 1 || v105 != 4 && v105 != 29) && (v2 && (*(v2 + 136) & 0x40) != 0 || v95 && (*(v95 + 136) & 0x40) != 0 || v26 && (*(v26 + 136) & 0x40) != 0))
  {
    goto LABEL_90;
  }

LABEL_91:
  if (!v1)
  {
    if (v110)
    {
      v66 = v110;
      v67 = v110[4];
      v68 = v110[2];
      if (v68 >= v110[3] + v67)
      {
        v68 = v110[3] + v67;
      }

      v114 = v110;
      v115 = v67;
      v116 = v68;
      while (1)
      {
        if (v67 == v68)
        {
          v25 = sub_181AC81FC(v25);
          if ((v25 & 1) == 0)
          {

            v26 = v97;
            goto LABEL_107;
          }

          v66 = v114;
          v67 = v115;
        }

        v69 = v67 + 1;
        v115 = v67 + 1;
        v70 = &v66[26 * v67];
        v71 = *(v70 + 9);
        v72 = *(v70 + 13);
        v73 = *(v70 + 7);
        v120 = *(v70 + 11);
        v121 = v72;
        v118 = v73;
        v119 = v71;
        v74 = *(v70 + 17);
        v75 = *(v70 + 21);
        v76 = *(v70 + 15);
        v124 = *(v70 + 19);
        *v125 = v75;
        v122 = v76;
        v123 = v74;
        v77 = *(v70 + 25);
        v78 = *(v70 + 27);
        v79 = *(v70 + 23);
        *&v127[10] = *(v70 + 226);
        v126 = v77;
        *v127 = v78;
        *&v125[16] = v79;
        v117 = *(v70 + 5);
        v80 = *(&v117 + 1);
        if (*(&v117 + 1))
        {
          if (v127[24])
          {
            break;
          }
        }

        v68 = v116;
        v67 = v69;
      }

      sub_181AFE6F4(&v117, v113);

      sub_181AFE6A0(&v117);
      v81 = *(v80 + 136);

      v26 = v97;
      if ((v81 & 0x4000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_114;
    }

LABEL_107:
    v113[0] = 0;
    v113[1] = 0;
    *&v117 = v1;
    *(&v117 + 1) = v2;
    *&v118 = v95;
    *(&v118 + 1) = v26;
    v121 = v163;
    v122 = v164;
    v123 = v165;
    LODWORD(v124) = v166;
    v119 = v161;
    v120 = v162;
    BYTE4(v124) = v106;
    BYTE5(v124) = v105;
    WORD3(v124) = v102;
    *(&v124 + 1) = v96;
    *v125 = v101;
    *&v125[8] = v159;
    v125[24] = v160;
    v125[25] = v94;
    *&v125[26] = v100;
    *&v125[28] = v112;
    v126 = v156;
    *v127 = v157;
    *&v127[16] = v158;
    *&v127[24] = v110;
    v128 = v155;
    v129 = v109;
    v132 = v154;
    v131 = v153;
    v130 = v152;
    v133 = *(&v108 + 1);
    v134 = v108;
    v135 = v104;
    v136 = v111;
    v138 = v149;
    v139 = v150;
    v137 = v148;
    v140 = v151;
    v141 = v27;
    v142 = v107;
    v143 = v99;
    *&v144[15] = *(v147 + 15);
    *v144 = v147[0];
    v145 = v23;
    v82 = sub_181ADEF94(0, 0, &v114, v113);

    if ((v82 & 1) == 0 || (!v2 || (*(v2 + 137) & 0x40) == 0) && (!v95 || (*(v95 + 137) & 0x40) == 0) && (!v26 || (*(v26 + 136) & 0x4000) == 0))
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  if ((*(v1 + 137) & 0x40) == 0)
  {
    goto LABEL_107;
  }

LABEL_114:
  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD6F90);
LABEL_115:
  *&v117 = v1;
  *(&v117 + 1) = v2;
  *&v118 = v95;
  *(&v118 + 1) = v26;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  *(&v124 + 1) = v96;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v94;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v27;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(v147 + 15);
  *v144 = v147[0];
  v145 = v23;
  LOBYTE(v113[0]) = 1;
  if (sub_181A3DFE8(v113))
  {
    MEMORY[0x1865D9CA0](0x772073657375202CLL, 0xEB00000000696669);
  }

  *&v117 = v1;
  *(&v117 + 1) = v2;
  *&v118 = v95;
  *(&v118 + 1) = v97;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  *(&v124 + 1) = v96;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v94;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v27;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(v147 + 15);
  *v144 = v147[0];
  v145 = v23;
  LOBYTE(v113[0]) = 2;
  if (sub_181A3DFE8(v113))
  {
    MEMORY[0x1865D9CA0](0x632073657375202CLL, 0xEB000000006C6C65);
  }

  if (v108 != 0)
  {
    MEMORY[0x1865D9CA0](0x79786F7270202CLL, 0xE700000000000000);
  }

  *&v117 = v1;
  *(&v117 + 1) = v2;
  *&v118 = v95;
  *(&v118 + 1) = v97;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  *(&v124 + 1) = v96;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v94;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v103;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(v147 + 15);
  *v144 = v147[0];
  v145 = v23;
  if (sub_181B5AEA8(0))
  {
    *&v117 = v1;
    *(&v117 + 1) = v2;
    *&v118 = v95;
    *(&v118 + 1) = v97;
    v121 = v163;
    v122 = v164;
    v123 = v165;
    LODWORD(v124) = v166;
    v119 = v161;
    v120 = v162;
    BYTE4(v124) = v106;
    BYTE5(v124) = v105;
    WORD3(v124) = v102;
    *(&v124 + 1) = v96;
    *v125 = v101;
    v125[24] = v160;
    *&v125[8] = v159;
    v125[25] = v94;
    *&v125[26] = v100;
    *&v125[28] = v112;
    v126 = v156;
    *v127 = v157;
    *&v127[16] = v158;
    *&v127[24] = v110;
    v128 = v155;
    v129 = v109;
    v132 = v154;
    v131 = v153;
    v130 = v152;
    v133 = *(&v108 + 1);
    v134 = v108;
    v135 = v104;
    v136 = v111;
    v138 = v149;
    v139 = v150;
    v137 = v148;
    v140 = v151;
    v141 = v103;
    v142 = v107;
    v143 = v99;
    *&v144[15] = *(v147 + 15);
    *v144 = v147[0];
    v145 = v23;
    v83 = sub_181EA6088();
    MEMORY[0x1865D9CA0](v83);
  }

  if (v104 == 4 && v111)
  {
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v117 = 0x6420776F6C66202CLL;
    *(&v117 + 1) = 0xEF203A7472657669;
    LODWORD(v113[0]) = v111;
    v84 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v84);

    MEMORY[0x1865D9CA0](v117, *(&v117 + 1));
  }

  if (v103)
  {
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v117 = 0xD000000000000013;
    *(&v117 + 1) = 0x8000000182BD6F70;
    LODWORD(v113[0]) = v103;
    v85 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v85);

    MEMORY[0x1865D9CA0](v117, *(&v117 + 1));
  }

  if (nw_bucket_to_throughput(v107))
  {
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v117 = 0xD000000000000014;
    *(&v117 + 1) = 0x8000000182BD6F50;
    v113[0] = nw_bucket_to_throughput(v107);
    v86 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v86);

    MEMORY[0x1865D9CA0](7565378, 0xE300000000000000);
    MEMORY[0x1865D9CA0](v117, *(&v117 + 1));
  }

  if (nw_bucket_to_throughput(v99))
  {
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v117 = 0xD000000000000016;
    *(&v117 + 1) = 0x8000000182BD6F30;
    v113[0] = nw_bucket_to_throughput(v99);
    v87 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v87);

    MEMORY[0x1865D9CA0](7565378, 0xE300000000000000);
    MEMORY[0x1865D9CA0](v117, *(&v117 + 1));
  }

  *&v117 = v1;
  *(&v117 + 1) = v2;
  *&v118 = v95;
  *(&v118 + 1) = v97;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  v88 = v96;
  *(&v124 + 1) = v96;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v94;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v89 = v94;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v103;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(v147 + 15);
  *v144 = v147[0];
  v145 = v98;
  LOBYTE(v113[0]) = 1;
  if (sub_181A3DFE8(v113))
  {
    v90 = 0xE700000000000000;
    strcpy(&v117, ", LQM: ");
    *(&v117 + 1) = 0xE700000000000000;
    if (v94 > 49)
    {
      if (v94 == 50)
      {
        v90 = 0xE800000000000000;
        v91 = 0x6574617265646F6DLL;
      }

      else
      {
        v91 = 0x6E776F6E6B6E75;
        if (v94 == 100)
        {
          v90 = 0xE400000000000000;
          v91 = 1685024615;
        }
      }
    }

    else if (v94 == 10 || (v91 = 0x6E776F6E6B6E75, v94 == 20))
    {
      v91 = 0x6C616D696E696DLL;
    }

    MEMORY[0x1865D9CA0](v91, v90);

    MEMORY[0x1865D9CA0](v117, *(&v117 + 1));

    v89 = v94;
    v88 = v96;
  }

  *&v117 = v1;
  *(&v117 + 1) = v2;
  *&v118 = v95;
  *(&v118 + 1) = v97;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  *(&v124 + 1) = v88;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v89;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v103;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(v147 + 15);
  *v144 = v147[0];
  v145 = v98;
  LOBYTE(v113[0]) = 2;
  if (sub_181A3DFE8(v113))
  {
    v92 = 0xE700000000000000;
    strcpy(&v117, ", LQM: ");
    *(&v117 + 1) = 0xE700000000000000;
    if (v89 > 49)
    {
      v93 = 0x6E776F6E6B6E75;
      if (v89 == 50)
      {
        v92 = 0xE800000000000000;
        v93 = 0x6574617265646F6DLL;
      }

      else if (v89 == 100)
      {
        v92 = 0xE400000000000000;
        v93 = 1685024615;
      }
    }

    else
    {
      v93 = 0x6E776F6E6B6E75;
      if (v89 == 10 || v89 == 20)
      {
        v93 = 0x6C616D696E696DLL;
      }
    }

    MEMORY[0x1865D9CA0](v93, v92);

    MEMORY[0x1865D9CA0](v117, *(&v117 + 1));
  }

  return v146;
}

double sub_181FD45CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 73) = 0;
  *(a3 + 65) = 0;
  *(a3 + 81) = 1;
  *(a3 + 90) = 0;
  *(a3 + 82) = 0;
  *(a3 + 98) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 108) = 0;
  *(a3 + 100) = 0;
  *(a3 + 116) = 0;
  *(a3 + 135) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 224) = 0u;
  v4 = a3 + 224;
  *(v4 - 24) = 0u;
  *(v4 - 36) = 0u;
  *(v4 - 52) = 0u;
  *(v4 - 68) = 0u;
  *(v4 - 8) = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 126) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 1;
  *(v4 - 192) = a2;
  *(v4 - 184) = a1;
  return result;
}

void *PathProperties.init(parameters:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = 1;
  *(a2 + 73) = 0;
  *(a2 + 65) = 0;
  *(a2 + 81) = 1;
  *(a2 + 90) = 0;
  *(a2 + 82) = 0;
  *(a2 + 98) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 116) = 0;
  *(a2 + 100) = 0;
  *(a2 + 108) = 0;
  *(a2 + 224) = 0u;
  v3 = a2 + 224;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 135) = 0;
  *(a2 + 156) = 0u;
  *(a2 + 172) = 0u;
  *(a2 + 188) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = MEMORY[0x1E69E7CC0];
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 350) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 1;
  type metadata accessor for MutableParametersStorage();
  v4 = swift_allocObject();
  result = memcpy((v4 + 16), a1, 0x188uLL);
  *(v3 - 192) = v4;
  return result;
}

BOOL sub_181FD4738(void *__src, char a2)
{
  memcpy(__dst, __src, 0x17AuLL);
  v4 = *(v2 + 8);
  v5 = *(v2 + 116);
  if (sub_181FD7540(__dst) == 1)
  {
    return 0;
  }

  if (v5 == BYTE4(__dst[14]) || v5 != 1 || BYTE4(__dst[14]) != 2)
  {
    v10 = v5 != BYTE4(__dst[14]) && v5 == 2 && BYTE4(__dst[14]) == 1;
    if (v10 || (a2 & 1) == 0)
    {
      return 0;
    }

    if (v4)
    {
      v13 = v4;
      if (__dst[1])
      {
        v12 = __dst[1];
        v11 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v13, &v12);

        swift_retain_n();

        return (v11 & 1) == 0;
      }
    }

    else if (!__dst[1])
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PathProperties.maximumPacketSize.getter()
{
  v1 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v4;
  v5 = *(v0 + 40);
  v16 = *(v0 + 32);
  memcpy(v18, (v0 + 48), sizeof(v18));
  v17 = v5;
  result = sub_181B6C108();
  if (result < 1)
  {
    return 1500;
  }

  v7 = result - 40;
  if (result >= 0x28)
  {
    if (v5)
    {
      v8 = result;
      v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181B5C0FC(v5 + v9, v3);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_181B5C160(v3);
      }

      else
      {
        v10 = *(v3 + 2);
        v11 = *(v3 + 3);
        v12 = *(v3 + 4);
        v13 = *(v3 + 20);
        v14 = v3[42];

        if (!v14)
        {
          sub_181AD1DE4(v10, v11, v12, v13, 0);
          return v8 - 20;
        }

        sub_181AD1DE4(v10, v11, v12, v13, v14);
      }
    }

    return v7;
  }

  return result;
}

BOOL sub_181FD49D0()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  swift_beginAccess();
  result = 0;
  if (*(v1 + 234))
  {
    if (!v3 && v2 != 4)
    {
      v5 = v0[1];
      v17 = *v0;
      v18 = v5;
      v19 = v1;
      v6 = *(v0 + 248);
      v34 = *(v0 + 264);
      v32 = *(v0 + 232);
      v33 = v6;
      v35 = *(v0 + 35);
      v7 = *(v0 + 184);
      v28 = *(v0 + 168);
      v29 = v7;
      v8 = *(v0 + 216);
      v30 = *(v0 + 200);
      v31 = v8;
      v9 = *(v0 + 120);
      v24 = *(v0 + 104);
      v25 = v9;
      v10 = *(v0 + 152);
      v26 = *(v0 + 136);
      v27 = v10;
      v11 = *(v0 + 56);
      v20 = *(v0 + 40);
      v21 = v11;
      v12 = *(v0 + 88);
      v22 = *(v0 + 72);
      v23 = v12;
      v36 = v2;
      v13 = *(v0 + 308);
      v37 = *(v0 + 292);
      v38 = v13;
      *v39 = *(v0 + 324);
      *&v39[12] = v0[21];
      v40 = 0;
      v41[0] = *(v0 + 356);
      *(v41 + 14) = *(v0 + 370);
      v16 = 4;
      if ((sub_181CCC278(&v16) & 1) == 0)
      {
        if ((*(v1 + 234) & 0xFE) == 2)
        {
          return 1;
        }

        v15 = *(v1 + 240);
        if (!v15 || !*(v15 + 16))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_181FD4B3C()
{
  v160 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 32);
  result = swift_beginAccess();
  v4 = *(v2 + 240);
  if (v4 && *(v4 + 16))
  {
    return result;
  }

  v5 = *(v0 + 156);
  if ((v5 & 0x30) != 0)
  {
    return result;
  }

  if ((*(v2 + 234) & 0xFE) == 2)
  {
    return result;
  }

  v116 = 0;
  v115 = 0;
  v114 = 0;
  result = sub_181ADC1F8();
  v7 = *(v0 + 264);
  if (!v7)
  {
    return result;
  }

  v108 = v6;
  v109 = result;
  v158 = 0;
  v159 = 0;
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  advisory = 0;
  v13 = 0;
  if (!v10)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v1 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));
      if ((*(v1 + 80) & 2) != 0)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_11;
      }
    }

    advisory = nw_path_bridge_ne_session_agent_get_advisory();
  }

  while (v10);
LABEL_11:
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      if ((advisory & 1) == 0)
      {
        return result;
      }

      *(v0 + 112) = 0;
      if (v116)
      {
        sub_181E378A4(v116, &v113, v153);
        v26 = v155;
        type metadata accessor for Interface.BackingClass();
        v27 = swift_allocObject();
        v28 = v27;
        v29 = v153[5];
        *(v27 + 80) = v153[4];
        *(v27 + 96) = v29;
        *(v27 + 112) = v153[6];
        *(v27 + 128) = v154;
        v30 = v153[1];
        *(v27 + 16) = v153[0];
        *(v27 + 32) = v30;
        v31 = v153[3];
        *(v27 + 48) = v153[2];
        *(v27 + 64) = v31;
        *(v27 + 136) = v26;
        *(v27 + 170) = *(v157 + 14);
        *(v27 + 156) = v157[0];
        *(v27 + 140) = v156;
        if (v26 & 1) != 0 && (*(v2 + 230))
        {

          if (qword_1ED4106B8 != -1)
          {
            swift_once();
          }

          v32 = sub_182AD2698();
          __swift_project_value_buffer(v32, qword_1ED411DA8);

          v33 = sub_182AD2678();
          v34 = sub_182AD3898();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *&v120 = v36;
            *v35 = 136446210;
            v37 = *(v28 + 40);
            v38 = *(v28 + 48);

            v39 = sub_181C64FFC(v37, v38, &v120);

            *(v35 + 4) = v39;
            v40 = "Fallback to expensive interface %{public}s prohibited by parameters";
            goto LABEL_70;
          }

LABEL_125:
        }

        if ((v26 & 0x40) != 0 && (*(v2 + 230) & 2) != 0)
        {

          if (qword_1ED4106B8 != -1)
          {
            swift_once();
          }

          v41 = sub_182AD2698();
          __swift_project_value_buffer(v41, qword_1ED411DA8);

          v33 = sub_182AD2678();
          v34 = sub_182AD3898();

          if (!os_log_type_enabled(v33, v34))
          {
            goto LABEL_125;
          }

          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v120 = v36;
          *v35 = 136446210;
          v42 = *(v28 + 40);
          v43 = *(v28 + 48);

          v44 = sub_181C64FFC(v42, v43, &v120);

          *(v35 + 4) = v44;
          v40 = "Fallback to constrained interface %{public}s prohibited by parameters";
LABEL_70:
          _os_log_impl(&dword_181A37000, v33, v34, v40, v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          MEMORY[0x1865DF520](v36, -1, -1);
          MEMORY[0x1865DF520](v35, -1, -1);
        }

        if ((v26 & 0x4000) != 0 && (*(v2 + 231) & 1) == 0)
        {
          v45 = *v0;
          v105 = *(v0 + 8);
          v47 = *(v0 + 16);
          v46 = *(v0 + 24);
          v2 = *(v0 + 32);
          v48 = *(v0 + 152);
          v149 = *(v0 + 136);
          v150 = v48;
          v49 = *(v0 + 184);
          v151 = *(v0 + 168);
          v152 = v49;
          v50 = *(v0 + 88);
          v145 = *(v0 + 72);
          v146 = v50;
          v51 = *(v0 + 120);
          v147 = *(v0 + 104);
          v148 = v51;
          v52 = *(v0 + 56);
          v143 = *(v0 + 40);
          v144 = v52;
          v53 = *(v0 + 200);
          v54 = *(v0 + 352);
          v141 = *(v0 + 336);
          v142[0] = v54;
          *(v142 + 10) = *(v0 + 362);
          v55 = *(v0 + 288);
          v137 = *(v0 + 272);
          v138 = v55;
          v56 = *(v0 + 320);
          v139 = *(v0 + 304);
          v140 = v56;
          v57 = *(v0 + 224);
          v133 = *(v0 + 208);
          v134 = v57;
          v58 = *(v0 + 256);
          v135 = *(v0 + 240);
          v136 = v58;
          if (v45)
          {
            if ((*(v45 + 137) & 0x40) != 0)
            {
              goto LABEL_107;
            }

LABEL_95:
            v107 = v0;
            v117 = 0;
            v118 = 0;
            *&v120 = v45;
            *(&v120 + 1) = v105;
            loga = v47;
            *&v121 = v47;
            *(&v121 + 1) = v46;
            v85 = v46;
            *&v122[104] = v149;
            *&v122[120] = v150;
            *&v122[136] = v151;
            *&v122[152] = v152;
            *&v122[40] = v145;
            *&v122[56] = v146;
            *&v122[72] = v147;
            *&v122[88] = v148;
            *&v122[8] = v143;
            *&v122[24] = v144;
            *v122 = v2;
            *&v122[168] = v53;
            *(v132 + 10) = *(v142 + 10);
            v131 = v141;
            v132[0] = v142[0];
            v127 = v137;
            v128 = v138;
            v129 = v139;
            v130 = v140;
            v123 = v133;
            v124 = v134;
            v125 = v135;
            v126 = v136;
            v86 = sub_181ADEF94(0, 0, &v110, &v117);

            if ((v86 & 1) == 0 || (!v105 || (*(v105 + 137) & 0x40) == 0) && (!loga || (BYTE1(loga[17].isa) & 0x40) == 0) && (!v85 || (*(v85 + 136) & 0x4000) == 0))
            {

              if (qword_1ED4106B8 != -1)
              {
                swift_once();
              }

              v87 = sub_182AD2698();
              __swift_project_value_buffer(v87, qword_1ED411DA8);

              v33 = sub_182AD2678();
              v34 = sub_182AD3898();

              if (!os_log_type_enabled(v33, v34))
              {
                goto LABEL_125;
              }

              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              *&v120 = v36;
              *v35 = 136446210;
              v88 = *(v28 + 40);
              v89 = *(v28 + 48);

              v90 = sub_181C64FFC(v88, v89, &v120);

              *(v35 + 4) = v90;
              v40 = "Fallback to ultra constrained interface %{public}s prohibited by parameters";
              goto LABEL_70;
            }

            v0 = v107;
          }

          else
          {
            if (!v53)
            {
              goto LABEL_95;
            }

            log = v47;
            v102 = v46;
            v69 = v53[4];
            if (v53[2] >= v53[3] + v69)
            {
              v70 = v53[3] + v69;
            }

            else
            {
              v70 = v53[2];
            }

            v110 = v53;
            v111 = v69;
            v112 = v70;
            v71 = v53;
            while (1)
            {
              if (v69 == v70)
              {
                v27 = sub_181AC81FC(v27);
                if ((v27 & 1) == 0)
                {

                  v46 = v102;
                  v47 = log;
                  goto LABEL_95;
                }

                v71 = v110;
                v69 = v111;
              }

              v72 = v69 + 1;
              v111 = v69 + 1;
              v73 = &v71[26 * v69];
              v74 = *(v73 + 9);
              v75 = *(v73 + 13);
              v76 = *(v73 + 7);
              *&v122[16] = *(v73 + 11);
              *&v122[32] = v75;
              v121 = v76;
              *v122 = v74;
              v77 = *(v73 + 17);
              v78 = *(v73 + 21);
              v79 = *(v73 + 15);
              *&v122[80] = *(v73 + 19);
              *&v122[96] = v78;
              *&v122[48] = v79;
              *&v122[64] = v77;
              v80 = *(v73 + 25);
              v81 = *(v73 + 27);
              v82 = *(v73 + 23);
              *&v122[154] = *(v73 + 226);
              *&v122[128] = v80;
              *&v122[144] = v81;
              *&v122[112] = v82;
              v120 = *(v73 + 5);
              v83 = *(&v120 + 1);
              if (*(&v120 + 1))
              {
                if (v122[168])
                {
                  break;
                }
              }

              v70 = v112;
              v69 = v72;
            }

            sub_181AFE6F4(&v120, &v117);

            sub_181AFE6A0(&v120);
            v84 = *(v83 + 136);

            v46 = v102;
            v47 = log;
            if ((v84 & 0x4000) == 0)
            {
              goto LABEL_95;
            }
          }
        }

LABEL_107:
        v91 = swift_beginAccess();
        v92 = *(v2 + 240);
        if (v92)
        {
          v93 = *(v92 + 24);
          if (v93)
          {
            v94 = v93[4];
            v95 = v93[3] + v94;
            if (v93[2] < v95)
            {
              v95 = v93[2];
            }

            v117 = v93;
            v118 = v94;
            v119 = v95;
            v96 = v93;
            while (1)
            {
              if (v94 == v119)
              {
                v91 = sub_181AC81FC(v91);
                if ((v91 & 1) == 0)
                {

                  LOBYTE(v92) = 0;
                  goto LABEL_119;
                }

                v96 = v117;
                v94 = v118;
              }

              v97 = v96 + v94++;
              v118 = v94;
              if (*(v97 + 40) == 2)
              {

                LOBYTE(v92) = 1;
                goto LABEL_119;
              }
            }
          }

          LOBYTE(v92) = 0;
        }

LABEL_119:
        if (*(v28 + 184) == 2 && ((v92 & 1) != 0 || (v114 & 1) == 0 && (v114 & 0x100) == 0 && (*(v2 + 236) & 0x10) != 0))
        {

          if (qword_1ED4106B8 != -1)
          {
            swift_once();
          }

          v98 = sub_182AD2698();
          __swift_project_value_buffer(v98, qword_1ED411DA8);

          v33 = sub_182AD2678();
          v34 = sub_182AD3898();

          if (!os_log_type_enabled(v33, v34))
          {
            goto LABEL_125;
          }

          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v117 = v36;
          *v35 = 136446210;
          v99 = *(v28 + 40);
          v100 = *(v28 + 48);

          v101 = sub_181C64FFC(v99, v100, &v117);

          *(v35 + 4) = v101;
          v40 = "Fallback to cellular interface %{public}s) prohibited by parameters";
          goto LABEL_70;
        }

        v106 = v0;
        *(v0 + 24) = v28;
      }

      else
      {

        v106 = v0;
        *(v0 + 24) = 0;
      }

      v117 = 0;
      v118 = 0xE000000000000000;
      sub_182AD3BA8();

      v117 = 0xD000000000000014;
      v118 = 0x8000000182BD7170;
      LODWORD(v153[0]) = 0;
      v16 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v16);

      MEMORY[0x1865D9CA0](0x207865646E6920, 0xE700000000000000);
      *&v153[0] = *(v106 + 24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8398B0);
      v17 = sub_182AD3018();
      MEMORY[0x1865D9CA0](v17);

      if (HIBYTE(v115) == 1)
      {
        MEMORY[0x1865D9CA0](0x6B616577202CLL, 0xE600000000000000);
      }

      if (HIBYTE(v114) == 1)
      {
        MEMORY[0x1865D9CA0](0x646563726F66202CLL, 0xE800000000000000);
      }

      if (v114 == 1)
      {
        MEMORY[0x1865D9CA0](0x726566657270202CLL, 0xEB00000000646572);
      }

      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v18 = sub_182AD2698();
      __swift_project_value_buffer(v18, qword_1ED411DA8);
      v20 = v117;
      v19 = v118;

      v21 = sub_182AD2678();
      v22 = sub_182AD38A8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v153[0] = v24;
        *v23 = 136315138;
        v25 = sub_181C64FFC(v20, v19, v153);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_181A37000, v21, v22, "%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1865DF520](v24, -1, -1);
        MEMORY[0x1865DF520](v23, -1, -1);
      }

      else
      {
      }

      *&v153[0] = v109;
      *(&v153[0] + 1) = v108;
      advisory = v106;
      if (!SystemUUID.isUUIDNULL.getter())
      {
        *(v106 + 82) = v109;
        *(v106 + 90) = v108;
        *(v106 + 98) = 0;
      }

      goto LABEL_41;
    }

    v10 = *(v7 + 64 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);

  v59 = sub_181AC47A8(v13, v1);
  v61 = v60;
  v62 = sub_181AC49BC(v10, v2);
  v64 = v63;
  v65 = *(advisory + 216);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_181F5A47C(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_181F5A47C((v66 > 1), v67 + 1, 1, v65);
  }

  *(v65 + 2) = v67 + 1;
  v68 = &v65[32 * v67];
  *(v68 + 4) = v59;
  *(v68 + 5) = v61;
  *(v68 + 6) = v62;
  *(v68 + 7) = v64;
  *(advisory + 216) = v65;
LABEL_41:
  if (HIBYTE(v115) == 1)
  {
    if (v5)
    {
      goto LABEL_47;
    }

    v5 |= 1u;
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_47;
    }

    v5 &= 0xFFFFFFCE;
  }

  *(advisory + 156) = v5;
LABEL_47:
  if (v115)
  {
    if ((v5 & 2) != 0)
    {
      goto LABEL_53;
    }

    v5 |= 2u;
  }

  else
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_53;
    }

    v5 &= ~2u;
  }

  *(advisory + 156) = v5;
LABEL_53:
  if (v114)
  {
    if ((v5 & 8) != 0)
    {
      goto LABEL_59;
    }

    v5 |= 8u;
  }

  else
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_59;
    }

    v5 &= ~8u;
  }

  *(advisory + 156) = v5;
LABEL_59:
  if ((v114 & 0x100) != 0)
  {
    if ((v5 & 4) == 0)
    {
      *(advisory + 156) = v5 | 4;
    }
  }

  else if ((v5 & 4) != 0)
  {
    *(advisory + 156) = v5 & 0xFFFFFFFB;
  }

  return result;
}

uint64_t sub_181FD5D5C()
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 264);
  v2 = *(v0 + 312);
  if (*(v0 + 168) == 0 || v2 == 0)
  {
LABEL_15:
    if (v1)
    {
      v8 = 0;
      v9 = 1 << *(v1 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v1 + 64);
      while (v11)
      {
LABEL_24:
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v14 = *(*(*(v1 + 56) + ((v8 << 9) | (8 * v13))) + 80);
        if ((v14 & 0x100) != 0 && (v14 & 0x13) != 1)
        {
          return 1;
        }
      }

      while (1)
      {
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
        }

        if (v12 >= ((v9 + 63) >> 6))
        {
          break;
        }

        v11 = *(v1 + 64 + 8 * v12);
        ++v8;
        if (v11)
        {
          v8 = v12;
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

  else
  {
    v4 = v2[4];
    v5 = v2[3] + v4;
    if (v2[2] < v5)
    {
      v5 = v2[2];
    }

    v16 = v2;
    v17 = v4;
    v18 = v5;

    do
    {
      if (v4 == v18)
      {
        if ((sub_181AC81FC(is_null) & 1) == 0)
        {

          goto LABEL_15;
        }

        v2 = v16;
        v4 = v17;
      }

      v17 = v4 + 1;
      v15 = *&v2[3 * v4 + 6];
      is_null = uuid_is_null(&v15);
      ++v4;
    }

    while (is_null == 1);

    return 1;
  }
}

uint64_t sub_181FD5F04@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 28);
  if (v6)
  {
    v7 = *(v6 + 80);
    if (v7)
    {
      v61 = *(a2 + 32);
      v8 = v7[4];
      v9 = v7[3] + v8;
      if (v7[2] < v9)
      {
        v9 = v7[2];
      }

      *&v65 = *(v6 + 80);
      *(&v65 + 1) = v8;
      *&v66 = v9;
      v10 = swift_retain_n();
      v11 = v7;
      while (1)
      {
        if (v8 == v66)
        {
          if ((sub_181AC81FC(v10) & 1) == 0)
          {

            break;
          }

          v8 = *(&v65 + 1);
          v11 = v65;
        }

        *(&v65 + 1) = v8 + 1;
        v12 = *&v11[2 * v8 + 5];
        *uu2 = v61;
        *uu1 = v12;
        v10 = uuid_compare(uu1, uu2);
        ++v8;
        if (!v10)
        {

LABEL_144:

          *a3 = 1;
          return result;
        }
      }
    }
  }

  v13 = a1[11];
  v75 = a1[10];
  v76 = v13;
  v14 = a1[13];
  v77 = a1[12];
  v78 = v14;
  v15 = a1[7];
  v71 = a1[6];
  v72 = v15;
  v16 = a1[9];
  v73 = a1[8];
  v74 = v16;
  v17 = a1[3];
  v67 = a1[2];
  v68 = v17;
  v18 = a1[5];
  v69 = a1[4];
  v70 = v18;
  v19 = a1[1];
  v65 = *a1;
  v66 = v19;
  v20 = *(a1 + 344);
  v86 = *(a1 + 328);
  v87 = v20;
  v21 = *(a1 + 376);
  v88 = *(a1 + 360);
  v89 = v21;
  v22 = *(a1 + 280);
  v82 = *(a1 + 264);
  v83 = v22;
  v23 = *(a1 + 312);
  v84 = *(a1 + 296);
  v85 = v23;
  v24 = *(a1 + 248);
  v80 = *(a1 + 232);
  v79 = v6;
  v81 = v24;
  v25 = sub_181AD3638();
  if (!v25)
  {
    goto LABEL_79;
  }

  v26 = v25;
  v27 = *(a2 + 56);
  v62 = *(a2 + 48);
  v28 = *(a2 + 72);
  v59 = a3;
  v60 = *(a2 + 64);
  v29 = *(v25 + 32);
  v30 = *(v25 + 24) + v29;
  if (*(v25 + 16) < v30)
  {
    v30 = *(v25 + 16);
  }

  *&v65 = v25;
  *(&v65 + 1) = v29;
  *&v66 = v30;
  while (1)
  {
    if (v29 != v30)
    {
      goto LABEL_21;
    }

    if ((sub_181AC81FC(v25) & 1) == 0)
    {
      break;
    }

    v29 = *(&v65 + 1);
    v26 = v65;
LABEL_21:
    v31 = (v26 + 32 * v29++);
    *(&v65 + 1) = v29;
    v25 = v31[5];
    v32 = v31[6];
    v33 = v31[7];
    v34 = v31[8];
    if (v32 > 2)
    {
      switch(v32)
      {
        case 3:
          if (v27 != 3)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
        case 4:
          if (v27 != 4)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
        case 5:
          if (v27 != 5)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
      }
    }

    else
    {
      switch(v32)
      {
        case 0:
          if (v27)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
        case 1:
          if (v27 != 1)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
        case 2:
          if (v27 != 2)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
      }
    }

    if (v27 < 6)
    {
      goto LABEL_17;
    }

    if (v25 != v62 || v32 != v27)
    {
      v25 = sub_182AD4268();
      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_44:
    if (v34 > 4)
    {
      if (v34 <= 6)
      {
        if (v34 == 5)
        {
          if (v28 == 5)
          {
            goto LABEL_77;
          }
        }

        else if (v28 == 6)
        {
          goto LABEL_77;
        }

        goto LABEL_17;
      }

      switch(v34)
      {
        case 7:
          if (v28 == 7)
          {
            goto LABEL_77;
          }

          goto LABEL_17;
        case 8:
          if (v28 == 8)
          {
            goto LABEL_77;
          }

          goto LABEL_17;
        case 9:
          if (v28 == 9)
          {
            goto LABEL_77;
          }

          goto LABEL_17;
      }
    }

    else
    {
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          if (v28 == 2)
          {
            goto LABEL_77;
          }
        }

        else if (v34 == 3)
        {
          if (v28 == 3)
          {
            goto LABEL_77;
          }
        }

        else if (v28 == 4)
        {
          goto LABEL_77;
        }

        goto LABEL_17;
      }

      if (!v34)
      {
        if (!v28)
        {
          goto LABEL_77;
        }

        goto LABEL_17;
      }

      if (v34 == 1)
      {
        if (v28 == 1)
        {
          goto LABEL_77;
        }

        goto LABEL_17;
      }
    }

    if (v28 >= 0xA)
    {
      if (v33 == v60 && v34 == v28 || (v25 = sub_182AD4268(), (v25 & 1) != 0))
      {
LABEL_77:

        *v59 = 1;
        return result;
      }
    }

LABEL_17:
    v30 = v66;
  }

  a3 = v59;
LABEL_79:
  v36 = a1[11];
  v75 = a1[10];
  v76 = v36;
  v37 = a1[13];
  v77 = a1[12];
  v78 = v37;
  v38 = a1[7];
  v71 = a1[6];
  v72 = v38;
  v39 = a1[9];
  v73 = a1[8];
  v74 = v39;
  v40 = a1[3];
  v67 = a1[2];
  v68 = v40;
  v41 = a1[5];
  v69 = a1[4];
  v70 = v41;
  v42 = a1[1];
  v65 = *a1;
  v66 = v42;
  v43 = *(a1 + 344);
  v86 = *(a1 + 328);
  v87 = v43;
  v44 = *(a1 + 376);
  v88 = *(a1 + 360);
  v89 = v44;
  v45 = *(a1 + 280);
  v82 = *(a1 + 264);
  v83 = v45;
  v46 = *(a1 + 312);
  v84 = *(a1 + 296);
  v85 = v46;
  v47 = *(a1 + 248);
  v80 = *(a1 + 232);
  v79 = v6;
  v81 = v47;
  result = sub_181AD41DC();
  if (!result)
  {
    goto LABEL_146;
  }

  v48 = result;
  v49 = *(a2 + 48);
  v50 = *(a2 + 56);
  v52 = *(a2 + 64);
  v51 = *(a2 + 72);
  v53 = *(result + 32);
  v54 = *(result + 24) + v53;
  if (*(result + 16) < v54)
  {
    v54 = *(result + 16);
  }

  *&v65 = result;
  *(&v65 + 1) = v53;
  *&v66 = v54;
  while (2)
  {
    if (v53 != v54)
    {
LABEL_88:
      v55 = (v48 + 32 * v53++);
      *(&v65 + 1) = v53;
      result = v55[5];
      v56 = v55[6];
      v57 = v55[7];
      v58 = v55[8];
      if (v56 > 2)
      {
        switch(v56)
        {
          case 3:
            if (v50 != 3)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
          case 4:
            if (v50 != 4)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
          case 5:
            if (v50 != 5)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
        }
      }

      else
      {
        switch(v56)
        {
          case 0:
            if (v50)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
          case 1:
            if (v50 != 1)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
          case 2:
            if (v50 != 2)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
        }
      }

      if (v50 < 6)
      {
        goto LABEL_84;
      }

      if (result != v49 || v56 != v50)
      {
        result = sub_182AD4268();
        if ((result & 1) == 0)
        {
          goto LABEL_84;
        }
      }

LABEL_111:
      if (v58 > 4)
      {
        if (v58 <= 6)
        {
          if (v58 == 5)
          {
            if (v51 == 5)
            {
              goto LABEL_144;
            }
          }

          else if (v51 == 6)
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (v58 == 7)
        {
          if (v51 == 7)
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (v58 == 8)
        {
          if (v51 == 8)
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (v58 != 9)
        {
          goto LABEL_140;
        }

        if (v51 == 9)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v58 > 1)
        {
          if (v58 == 2)
          {
            if (v51 == 2)
            {
              goto LABEL_144;
            }
          }

          else if (v58 == 3)
          {
            if (v51 == 3)
            {
              goto LABEL_144;
            }
          }

          else if (v51 == 4)
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (v58)
        {
          if (v58 == 1)
          {
            if (v51 == 1)
            {
              goto LABEL_144;
            }

            goto LABEL_84;
          }

LABEL_140:
          if (v51 >= 0xA)
          {
            if (v57 == v52 && v58 == v51)
            {
              goto LABEL_144;
            }

            result = sub_182AD4268();
            if (result)
            {
              goto LABEL_144;
            }
          }

          goto LABEL_84;
        }

        if (!v51)
        {
          goto LABEL_144;
        }
      }

LABEL_84:
      v54 = v66;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(result))
  {
    v53 = *(&v65 + 1);
    v48 = v65;
    goto LABEL_88;
  }

LABEL_146:
  *a3 = 0;
  return result;
}

uint64_t sub_181FD6598(uint64_t result, unsigned int a2, uint64_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    __break(1u);
  }

  if ((a3[2] & 1) == 0)
  {
    v11 = *a3;
    v10 = a3[1];
    v12 = *a3 >> 8;
    v13 = *a3 >> 16;
    v15[0] = *a3;
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = BYTE3(v11);
    v15[4] = BYTE4(v11);
    v15[5] = BYTE5(v11);
    v15[6] = BYTE6(v11);
    v15[7] = HIBYTE(v11);
    v16 = v10;

    sub_181AC04E8(v15, a4, a2, v17);

    result = v17[0];
    if (v17[0])
    {
      v14 = v17[1];

      *a7 = v14;

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_181FD670C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = swift_dynamicCastObjCProtocolUnconditional();
  result = *a3;
  v6 = *(*a3 + 24);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a3;
    if (*(*a3 + 16) < v7 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181AA69D8(isUniquelyReferenced_nonNull_native, v7);
      v9 = *a3;
    }

    sub_181AA8240((v9 + 16), v9 + 40, v4);
    return 1;
  }

  return result;
}

uint64_t sub_181FD67BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 264);
  if (!v3)
  {
LABEL_73:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return result;
  }

  v4 = 0;
  v5 = *(result + 8);
  v25 = *result;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = *(result + 16);
  v9 = *(result + 24);
  v10 = v7 & *(v3 + 64);
  v11 = (v6 + 63) >> 6;
  while (v10)
  {
LABEL_10:
    v13 = *(*(v3 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    v10 &= v10 - 1;
    result = *(v13 + 48);
    v14 = *(v13 + 56);
    v15 = *(v13 + 64);
    v16 = *(v13 + 72);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:
          if (v5 == 3)
          {
            goto LABEL_35;
          }

          break;
        case 4:
          if (v5 == 4)
          {
LABEL_35:
            if (v16 > 4)
            {
              if (v16 <= 6)
              {
                if (v16 == 5)
                {
                  if (v9 == 5)
                  {
                    goto LABEL_72;
                  }
                }

                else if (v9 == 6)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                switch(v16)
                {
                  case 7:
                    if (v9 == 7)
                    {
                      goto LABEL_72;
                    }

                    break;
                  case 8:
                    if (v9 == 8)
                    {
                      goto LABEL_72;
                    }

                    break;
                  case 9:
                    if (v9 == 9)
                    {
                      goto LABEL_72;
                    }

                    break;
                  default:
                    goto LABEL_66;
                }
              }
            }

            else if (v16 <= 1)
            {
              if (v16)
              {
                if (v16 == 1)
                {
                  if (v9 == 1)
                  {
                    goto LABEL_72;
                  }
                }

                else
                {
LABEL_66:
                  if (v9 >= 0xA)
                  {
                    v19 = v15 == v8 && v16 == v9;
                    if (v19 || (v20 = v8, v21 = v9, v22 = a2, result = sub_182AD4268(), v9 = v21, v8 = v20, a2 = v22, (result & 1) != 0))
                    {
LABEL_72:
                      *a2 = *(v13 + 32);
                      *(a2 + 16) = 0;
                      return result;
                    }
                  }
                }
              }

              else if (!v9)
              {
                goto LABEL_72;
              }
            }

            else if (v16 == 2)
            {
              if (v9 == 2)
              {
                goto LABEL_72;
              }
            }

            else if (v16 == 3)
            {
              if (v9 == 3)
              {
                goto LABEL_72;
              }
            }

            else if (v9 == 4)
            {
              goto LABEL_72;
            }
          }

          break;
        case 5:
          if (v5 == 5)
          {
            goto LABEL_35;
          }

          break;
        default:
LABEL_25:
          if (v5 >= 6)
          {
            if (result == v25 && v14 == v5)
            {
              goto LABEL_35;
            }

            v23 = v9;
            v24 = v8;
            v18 = a2;
            result = sub_182AD4268();
            v9 = v23;
            v8 = v24;
            a2 = v18;
            if (result)
            {
              goto LABEL_35;
            }
          }

          break;
      }
    }

    else if (v14)
    {
      if (v14 == 1)
      {
        if (v5 == 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 != 2)
        {
          goto LABEL_25;
        }

        if (v5 == 2)
        {
          goto LABEL_35;
        }
      }
    }

    else if (!v5)
    {
      goto LABEL_35;
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_73;
    }

    v10 = *(v3 + 64 + 8 * v12);
    ++v4;
    if (v10)
    {
      v4 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181FD6A88(uint64_t a1)
{
  v36[8] = *MEMORY[0x1E69E9840];
  v27 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 304);
  if (!v4)
  {
    return 0;
  }

  v5 = v4[4];
  if (v4[2] >= v4[3] + v5)
  {
    v6 = v4[3] + v5;
  }

  else
  {
    v6 = v4[2];
  }

  v33 = *(v1 + 304);
  v34 = v5;
  v35 = v6;
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_retain_n();
  v25 = v7;
  v8 = swift_beginAccess();
  v23 = v4;
  v24 = a1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v5 == v6)
        {
          if ((sub_181AC81FC(v8) & 1) == 0)
          {

            return 0;
          }

          v4 = v33;
          v5 = v34;
        }

        v9 = v4 + 20 * v5++;
        v34 = v5;
        v32 = *(v9 + 44);
        v36[0] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        *(v10 + 16) = 16;
        *(v10 + 24) = 2 * v11 - 64;
        *(v10 + 32) = v32;
        v12 = nw_network_agent_copy_data(0xFFFFFFFFLL);

        if (v12)
        {
          break;
        }

        v6 = v35;
      }

      v13 = v36[0];
      type metadata accessor for NetworkAgent.NetworkAgentBackingClass();
      swift_allocObject();
      v14 = sub_181AC3F18(v12, v12 + v13, 0, v31);
      if (*(v14 + 82))
      {
        v31[0] = v14;

        sub_181AC23B8(v31, v36);
        v15 = v36[0];
        if (v36[0])
        {
          break;
        }
      }

      v6 = v35;
    }

    v16 = v36[2];
    v30 = v36[1];
    v17 = v36[3];
    v28 = v36[4];
    v18 = v26;
    sub_181B5C0FC(a1 + v25, v26);
    v19 = dword_182AEE080[swift_getEnumCaseMultiPayload()];
    sub_181B5C160(v18);
    v29 = v16;
    v20 = *(v16 + 16);
    if (v20)
    {
      break;
    }

LABEL_22:

    v8 = sub_181AD1A40(v15);
    a1 = v24;
    v6 = v35;
  }

  v21 = 0;
  while (1)
  {
    if ((v21 & 1) == 0)
    {
      if (v21 >= *(v17 + 16))
      {
        __break(1u);
      }

      if (*(v17 + 32 + 4 * v21) == v19)
      {
        break;
      }
    }

    if (v20 == ++v21)
    {
      goto LABEL_22;
    }
  }

  sub_181AD1A40(v15);

  return 1;
}

uint64_t sub_181FD6E38(uint64_t a1, void *a2, uint64_t a3)
{
  updated = nw_path_bridge_config_agent_update_proxy_information(a2);
  if (updated || (Class = object_getClass(a2), Class == sub_182AD26C8()) && (updated = nw_proxy_configs_create_with_schema_array(a2)) != 0)
  {
    v6 = updated;
    v7 = (a3 + 272);
    if (*(a3 + 272) || (*v7 = *sub_182AD2388(), , , *v7))
    {
      v8 = sub_1822C275C(v6);
      sub_181F61290(v8);
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

unint64_t sub_181FD6EFC()
{
  result = qword_1EA839870;
  if (!qword_1EA839870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839870);
  }

  return result;
}

unint64_t sub_181FD6F54()
{
  result = qword_1EA839878;
  if (!qword_1EA839878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839878);
  }

  return result;
}

unint64_t sub_181FD6FAC()
{
  result = qword_1EA839880;
  if (!qword_1EA839880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PathReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PathReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_181FD7168(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 378))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181FD71B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 378) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 378) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_181FD7288()
{
  result = qword_1EA839888;
  if (!qword_1EA839888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839888);
  }

  return result;
}

unint64_t sub_181FD72E0()
{
  result = qword_1EA839890;
  if (!qword_1EA839890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839890);
  }

  return result;
}

unint64_t sub_181FD7338()
{
  result = qword_1EA839898;
  if (!qword_1EA839898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839898);
  }

  return result;
}

unint64_t sub_181FD7390()
{
  result = qword_1EA8398A0;
  if (!qword_1EA8398A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8398A0);
  }

  return result;
}

uint64_t sub_181FD73EC(uint64_t result, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(result + 264);
  if (v2)
  {
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(*(v2 + 56) + ((v8 << 9) | (8 * v10)));
      if ((*(v11 + 80) & 0x20000) != 0 && (*(v11 + 80) & 0x13) != 1)
      {
        v12 = *(v11 + 32);
        (*(a2 + 16))(a2, &v12);
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_181FD7540(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_181FD756C()
{
  result = qword_1EA8398D0;
  if (!qword_1EA8398D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8398D0);
  }

  return result;
}

uint64_t sub_181FD75EC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_181F9F9FC();
  v4 = WORD1(v2);
  if (v3)
  {
    v4 = 0;
  }

  *v5.i8 = vzip1_s32(HIDWORD(v2), HIWORD(v2));
  v5.u64[1] = vzip1_s32(v1, (*&v1 >> 16));
  v6.i64[0] = 0xFFFF0000FFFFLL;
  v6.i64[1] = 0xFFFF0000FFFFLL;
  return vaddvq_s32(vandq_s8(v5, v6)) + v2 + v4 + v1.u16[2] + HIWORD(*&v1);
}

uint64_t sub_181FD7694(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  if (*(v2 + 24) == 5)
  {
    v3 = nw_frame_unclaimed_length(*v2);
    goto LABEL_6;
  }

  if (v8)
  {
    v9 = v6 + v7;
    if (__OFADD__(v6, v7))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v3 = v8 - v9;
    if (__OFSUB__(v8, v9))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_6:
    if (v3 >= a1)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v21 = sub_182AD2698();
    __swift_project_value_buffer(v21, qword_1EA843348);
    v22 = sub_182AD2678();
    v23 = sub_182AD38C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = a1;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v3;
      _os_log_impl(&dword_181A37000, v22, v23, "Offset %ld > frame length %ld in checksum16", v24, 0x16u);
      MEMORY[0x1865DF520](v24, -1, -1);
    }

    goto LABEL_25;
  }

  v3 = 0;
  if (a1 > 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v10 = __OFSUB__(v3, a1);
  v3 -= a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v3 < a2)
  {
    if (qword_1EA8371A0 == -1)
    {
LABEL_10:
      v11 = sub_182AD2698();
      __swift_project_value_buffer(v11, qword_1EA843348);
      v12 = sub_182AD2678();
      v13 = sub_182AD38C8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134218240;
        *(v14 + 4) = a2;
        *(v14 + 12) = 2048;
        *(v14 + 14) = v3;
        _os_log_impl(&dword_181A37000, v12, v13, "Checksum length %ld > effective frame length %ld in checksum16", v14, 0x16u);
        MEMORY[0x1865DF520](v14, -1, -1);
      }

LABEL_25:
      sub_181FD7FF8();
      swift_willThrowTypedImpl();
      return 0;
    }

LABEL_31:
    swift_once();
    goto LABEL_10;
  }

  result = Frame.unclaimedBytes.getter();
  if (v16)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v17 = sub_182AD2698();
    __swift_project_value_buffer(v17, qword_1EA843348);
    v18 = sub_182AD2678();
    v19 = sub_182AD3898();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_181A37000, v18, v19, "Frame is no longer valid in checksum16", v20, 2u);
      MEMORY[0x1865DF520](v20, -1, -1);
    }

    sub_181FD7FF8();
    swift_willThrowTypedImpl();
    return 1;
  }

  else if (result)
  {
    return sub_181FD7A64((result + a1), result + a1 + v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint32x4_t *sub_181FD7A64(uint32x4_t *result, uint64_t a2)
{
  if (!result)
  {
    v8 = 0;
    goto LABEL_29;
  }

  v2 = a2 - result;
  if (((a2 - result) & 3) == 0)
  {
    v6 = 0;
    v7 = 0;
LABEL_9:
    if (v2 >= 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = v2 + 3;
    }

    if ((v2 + 3) < 7)
    {
      v8 = 0;
      goto LABEL_21;
    }

    v10 = ((v9 >> 2) - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v10 >= 7)
    {
      v12 = v10 + 1;
      v13 = (v10 + 1) & 0x7FFFFFFFFFFFFFF8;
      v11 = (result + 4 * v13);
      v14 = result + 1;
      v15 = 0uLL;
      v16 = v13;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      do
      {
        v20 = v14[-1];
        v17 = vaddw_high_u32(v17, v20);
        v15 = vaddw_u32(v15, *v20.i8);
        v19 = vaddw_high_u32(v19, *v14);
        v18 = vaddw_u32(v18, *v14->i8);
        v14 += 2;
        v16 -= 8;
      }

      while (v16);
      v8 = vaddvq_s64(vaddq_s64(vaddq_s64(v18, v15), vaddq_s64(v19, v17)));
      if (v12 == v13)
      {
LABEL_21:
        if (((a2 - result) & 3) != 0)
        {
          if (!v6)
          {
            goto LABEL_26;
          }

          if (v7 - v6 == 2)
          {
            v23 = *v6;
            goto LABEL_28;
          }

          if (v7 - v6 == 3)
          {
            v23 = *v6 + v6[2];
          }

          else
          {
LABEL_26:
            v23 = *v6;
          }

LABEL_28:
          v8 += v23;
        }

LABEL_29:
        v24 = ((HIDWORD(v8) + v8) >> 32) + (HIDWORD(v8) + v8);
        LODWORD(v24) = ((HIDWORD(v24) + WORD1(v24) + v24) >> 16) + (WORD2(v24) + WORD1(v24) + v24);
        return (v24 + WORD1(v24));
      }
    }

    else
    {
      v8 = 0;
      v11 = result;
    }

    v21 = (result + (v9 & 0xFFFFFFFFFFFFFFFCLL));
    do
    {
      v22 = v11->i32[0];
      v11 = (v11 + 4);
      v8 += v22;
    }

    while (v11 != v21);
    goto LABEL_21;
  }

  v3 = v2 + 3;
  if (v2 >= 0)
  {
    v3 = a2 - result;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v5 = v2 - (v3 & 0xFFFFFFFFFFFFFFFCLL);
  if (!__OFSUB__(v2, v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    v6 = &result->i8[v4];
    v7 = &result->i8[v4 + v5];
    v2 = v4;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_181FD7BCC(uint64_t a1, unsigned __int8 a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  LODWORD(v8) = *(v2 + 24);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 72);
  if (v8 == 5)
  {
    v13 = nw_frame_unclaimed_length(*v4);
    goto LABEL_6;
  }

  if (!v12)
  {
LABEL_41:
    LOBYTE(v45) = 1;
    sub_181FD7FF8();
    swift_willThrowTypedImpl();
    return;
  }

  v14 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_48;
  }

  v15 = __OFSUB__(v12, v14);
  v13 = v12 - v14;
  if (v15)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_6:
  if (!v13)
  {
    goto LABEL_41;
  }

  if (*(v4 + 24) == 5)
  {
    v16 = nw_frame_unclaimed_length(*v4);
    goto LABEL_15;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  v17 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = v12 - v17;
  if (__OFSUB__(v12, v17))
  {
    __break(1u);
LABEL_14:
    v16 = 0;
  }

LABEL_15:
  v18 = *(v4 + 11);
  v55 = *(v4 + 10);
  v56 = v18;
  v57 = *(v4 + 12);
  v58 = *(v4 + 208);
  v19 = *(v4 + 7);
  v51 = *(v4 + 6);
  v52 = v19;
  v20 = *(v4 + 9);
  v53 = *(v4 + 8);
  v54 = v20;
  v21 = *(v4 + 3);
  v47 = *(v4 + 2);
  v22 = *(v4 + 4);
  v23 = *(v4 + 5);
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v24 = *(v4 + 1);
  v45 = *v4;
  v46 = v24;
  v25 = sub_181FD7694(0, v16);
  if (v3)
  {
    return;
  }

  if (((v25 == -1) & a2) != 0)
  {
    v26 = -1;
  }

  else
  {
    v26 = ~v25;
  }

  v59 = v26;
  if (*(v4 + 24) == 2)
  {
    v27 = swift_projectBox();
    sub_181FD804C(v27, v9);
    v28 = sub_182AD2868();
    (*(*(v28 - 8) + 8))(v9, v28);
    sub_1822A7368(v4, 0, &v59, &v45);
    v29 = v45;
    v30 = BYTE8(v45);
    goto LABEL_23;
  }

  v31 = *(v4 + 11);
  v55 = *(v4 + 10);
  v56 = v31;
  v57 = *(v4 + 12);
  v58 = *(v4 + 208);
  v32 = *(v4 + 7);
  v51 = *(v4 + 6);
  v52 = v32;
  v33 = *(v4 + 9);
  v53 = *(v4 + 8);
  v54 = v33;
  v34 = *(v4 + 3);
  v47 = *(v4 + 2);
  v35 = *(v4 + 4);
  v36 = *(v4 + 5);
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v37 = *(v4 + 1);
  v45 = *v4;
  v46 = v37;
  v38 = Frame.unclaimedBytes.getter();
  if ((v40 & 1) == 0)
  {
    if (*(v4 + 24) == 5)
    {
      v41 = v38;
      v42 = *v4;
      v43 = v39;
      nw_frame_unclaimed_length(v42);
      v38 = v41;
      v39 = v43;
    }

    if (v38)
    {
      v44 = v39 - v38;
      v39 = v44;
      if (v44 < a1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a1 > 0)
      {
        goto LABEL_39;
      }

      v44 = 0;
    }

    if (!__OFSUB__(v44, a1))
    {
      if (v44 - a1 >= 2)
      {
        if (v38)
        {
          *(v38 + a1) = v26;
        }

        else
        {
          v39 = 0;
        }

        if (!__OFSUB__(v39, a1))
        {
          if (v39 - a1 < 2)
          {
            goto LABEL_39;
          }

          v15 = __OFSUB__(v44, a1 + 2);
          v29 = v44 - (a1 + 2);
          if (!v15)
          {
            if ((v29 & 0x8000000000000000) == 0)
            {
              if (v29)
              {
                return;
              }

              goto LABEL_40;
            }

LABEL_53:
            __break(1u);
            return;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_39:
      v29 = 2;
      goto LABEL_40;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v30 = 1;
  v29 = 2;
LABEL_23:
  if (!v30)
  {
    return;
  }

LABEL_40:
  if (v29)
  {
    goto LABEL_41;
  }
}

uint64_t sub_181FD7F58@<X0>(uint64_t result@<X0>, _WORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 16);
  if (*(result + 32) == 1 && *(result + 24) > 1uLL)
  {
    goto LABEL_7;
  }

  v6 = *(result + 8) - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (!v7)
  {
    if (v8 >= 2)
    {
      v11 = a3;
      if (v4)
      {
        *(v4 + v5) = *a2;
      }

      result = sub_1822A6F0C(2);
      v9 = *(v3 + 24);
      v10 = *(v3 + 32);
      a3 = v11;
      goto LABEL_11;
    }

LABEL_7:
    v9 = 2;
    *(result + 24) = 2;
    v10 = 1;
    *(result + 32) = 1;
LABEL_11:
    *a3 = v9;
    *(a3 + 8) = v10;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_181FD7FF8()
{
  result = qword_1EA8398E8;
  if (!qword_1EA8398E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8398E8);
  }

  return result;
}

uint64_t sub_181FD804C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_181FD80D0()
{
  result = qword_1EA8398F0;
  if (!qword_1EA8398F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8398F0);
  }

  return result;
}

uint64_t sub_181FD8124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839950);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 40) = 0;
  *(v3 + v6) = v7;
  sub_181AB5D28(a1, v3 + *(*v3 + 96), &qword_1EA839930);
  *(v3 + *(*v3 + 104)) = sub_181FD91D0(a2);
  v8 = *(v3 + *(*v3 + 112));

  os_unfair_lock_lock(v8 + 10);
  sub_181FDC1E0(&v8[4]);
  os_unfair_lock_unlock(v8 + 10);

  sub_181F49A88(a1, &qword_1EA839930);
  return v3;
}

uint64_t sub_181FD827C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839948);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 40) = 0;
  *(v3 + v6) = v7;
  sub_181AB5D28(a1, v3 + *(*v3 + 96), &qword_1EA839928);
  *(v3 + *(*v3 + 104)) = sub_181FD91D0(a2);
  v8 = *(v3 + *(*v3 + 112));

  os_unfair_lock_lock(v8 + 10);
  sub_181FDC1B4(&v8[4]);
  os_unfair_lock_unlock(v8 + 10);

  sub_181F49A88(a1, &qword_1EA839928);
  return v3;
}

uint64_t sub_181FD83D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181FD92B0(a4, v9);
  v10 = *(a3 + *(*a3 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v11 = sub_181F9A300(v9, v10);

  *(a1 + 16) = v11;
  return result;
}

uint64_t ApplicationServiceMetadataProviders.Default.makeMetadata(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  v5 = a1[1];
  if (!*a1)
  {
    v6 = sub_18225A6AC(MEMORY[0x1E69E7CC0]);
    NWTXTRecord.init(_:)(v6, v8);
    v4 = v8[0];
    v5 = v8[1];
  }

  *a2 = v4;
  a2[1] = v5;

  return sub_181E6550C(v3);
}

uint64_t sub_181FD8570@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  v5 = a1[1];
  if (!*a1)
  {
    v6 = sub_18225A6AC(MEMORY[0x1E69E7CC0]);
    NWTXTRecord.init(_:)(v6, v8);
    v4 = v8[0];
    v5 = v8[1];
  }

  *a2 = v4;
  a2[1] = v5;

  return sub_181E6550C(v3);
}

uint64_t ApplicationServiceMetadataProviders.DecodeResult.makeMetadata(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_181FD879C(sub_181FDACF8, a2);
    v3 = sub_182AD4598();
    return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    v5 = sub_182AD4598();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

uint64_t sub_181FD879C@<X0>(void (*a1)(_BYTE *, double)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_182AD4598();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-v9];
  a1(v5, v8);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v10, v6);
}

uint64_t ApplicationServiceMetadataProviders.Decode.makeMetadata(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = a1[1];
    v10[0] = *a1;
    v10[1] = v4;
    v5 = *(a2 + 16);
    TXTRecordDecoder.decode<A>(_:from:)(v5, v10);
    v6 = *(*(v5 - 8) + 56);
    v7 = a3;
    v8 = 0;
  }

  else
  {
    v6 = *(*(*(a2 + 16) - 8) + 56);
    v7 = a3;
    v8 = 1;
  }

  return v6(v7, v8, 1);
}

uint64_t BrowserProviderFactories.ApplicationService.Endpoint.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  v5 = sub_182AD39B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t BrowserProviderFactories.ApplicationService.Endpoint.applicationService.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t BrowserProviderFactories.ApplicationService.Endpoint.serviceID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_182AD2258();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t BrowserProviderFactories.ApplicationService.Endpoint.deviceName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t BrowserProviderFactories.ApplicationService.Endpoint.deviceModel.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t BrowserProviderFactories.ApplicationService.Endpoint.contactID.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t static BrowserProviderFactories.ApplicationService.Endpoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = type metadata accessor for NWBrowser.Result(0);
  sub_181FDADB8(a1 + *(v10 + 20), v9, type metadata accessor for NWEndpoint);
  sub_181FDADB8(a2 + *(v10 + 20), v6, type metadata accessor for NWEndpoint);
  LOBYTE(a2) = _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(v9, v6);
  sub_181FDAD5C(v6);
  sub_181FDAD5C(v9);
  return a2 & 1;
}

uint64_t BrowserProviderFactories.ApplicationService.Endpoint.id.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  type metadata accessor for NWBrowser.Result(0);
  NWEndpoint.serviceID.getter(v2);
  v3 = sub_182AD2258();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_181F49A88(v2, &qword_1EA8394C0);
    return 0;
  }

  else
  {
    v6 = sub_182AD2208();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t sub_181FD8F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12)
{
  sub_181FDC27C(a1, a9, type metadata accessor for NWBrowser.Result);
  v17 = type metadata accessor for BrowserProviderFactories.ApplicationService.Endpoint();
  v18 = v17[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a9 + v18, 1, 1, AssociatedTypeWitness);
  v20 = (a9 + v17[10]);
  *v20 = a2;
  v20[1] = a3;
  v21 = v17[11];
  v22 = sub_182AD2258();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a4, v22);
  v24 = (a9 + v17[12]);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a9 + v17[13]);
  *v25 = a7;
  v25[1] = a8;
  v26 = (a9 + v17[14]);
  *v26 = a10;
  v26[1] = a11;
  *(a9 + v17[15]) = a12;
  return result;
}

uint64_t sub_181FD90F8@<X0>(uint64_t *a1@<X8>)
{
  result = BrowserProviderFactories.ApplicationService.Endpoint.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181FD9128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for BrowserProviderFactories.ApplicationService();
  (*(*(a5 - 8) + 32))(&a6[*(v10 + 36)], a3, a5);
  v11 = &a6[*(v10 + 40)];

  return sub_181FDC20C(a4, v11);
}

uint64_t sub_181FD91D0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    v2 = a1;
  }

  else
  {
    type metadata accessor for NWParameters();
    v2 = swift_allocObject();
    v3 = nw_parameters_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
    v1 = swift_allocObject();
    *(v1 + 24) = 0;
    *(v1 + 16) = v3;
    *(v2 + 16) = v1;
  }

  os_unfair_lock_lock((v1 + 24));
  sub_18228E528((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  v4 = *(v6 + 16);

  if (!v4)
  {
    NWParameters.requiredNetworkAgents.setter();
  }

  return v2;
}

uint64_t sub_181FD92B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_181AB5D28(v2 + *(v12 + 40), v7, &unk_1EA839910);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_181F49A88(v7, &unk_1EA839910);
    v13 = *v2;
    v14 = v2[1];
    *a2 = v13;
    a2[1] = v14;
  }

  else
  {
    sub_181FDC27C(v7, v11, type metadata accessor for NWBrowser.Descriptor.Options);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40) + 48);
    v16 = *v2;
    v17 = v2[1];
    *a2 = v16;
    a2[1] = v17;
    sub_181FDC27C(v11, a2 + v15, type metadata accessor for NWBrowser.Descriptor.Options);
  }

  type metadata accessor for NWBrowser.Descriptor(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t BrowserProviderFactories.ApplicationService.makeDescriptor()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181AB5D28(v2 + *(a1 + 40), v7, &unk_1EA839910);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_181F49A88(v7, &unk_1EA839910);
    v12 = *v2;
    v13 = v2[1];
    *a2 = v12;
    a2[1] = v13;
  }

  else
  {
    sub_181FDC27C(v7, v11, type metadata accessor for NWBrowser.Descriptor.Options);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40) + 48);
    v15 = *v2;
    v16 = v2[1];
    *a2 = v15;
    a2[1] = v16;
    sub_181FDC27C(v11, a2 + v14, type metadata accessor for NWBrowser.Descriptor.Options);
  }

  type metadata accessor for NWBrowser.Descriptor(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t BrowserProviderFactories.ApplicationService.makeEndpoint(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v68 = a3;
  v4 = type metadata accessor for NWBrowser.Result(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v10 = sub_182AD2258();
  v11 = *(v10 - 8);
  v65 = v10;
  v66 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v53 - v14;
  v15 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v53 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v53 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v53 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v53 - v28);
  sub_181FDADB8(a1 + *(v5 + 28), &v53 - v28, type metadata accessor for NWEndpoint);
  sub_181FDADB8(v29, v26, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181FDADB8(v29, v17, type metadata accessor for NWEndpoint);
    type metadata accessor for UnexpectedEndpointType();
    sub_181FDAE20();
    swift_allocError();
    sub_181FDC27C(v17, v35, type metadata accessor for NWEndpoint);
    swift_willThrow();
    sub_181FDAD5C(v29);
    return sub_181FDAD5C(v26);
  }

  if (nw_endpoint_get_type(*v26) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    sub_181FDADB8(v29, v23, type metadata accessor for NWEndpoint);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v30 = *v23;
      if (nw_endpoint_get_type(*v23) == (nw_endpoint_type_url|nw_endpoint_type_host))
      {
        nw_endpoint_get_application_service_name(v30);
        v61 = sub_182AD3158();
        v32 = v31;
        swift_unknownObjectRelease();
        NWEndpoint.serviceID.getter(v9);
        v33 = v65;
        v34 = v66;
        if ((*(v66 + 48))(v9, 1, v65) != 1)
        {
          v60 = v32;
          v40 = v64;
          (*(v34 + 32))(v64, v9, v33);
          v41 = a1;
          v42 = v63;
          sub_181FDADB8(v41, v63, type metadata accessor for NWBrowser.Result);
          v43 = v62;
          (*(v34 + 16))(v62, v40, v33);
          v44 = NWEndpoint.deviceName.getter();
          v58 = v45;
          v59 = v44;
          v46 = NWEndpoint.deviceModel.getter();
          v56 = v47;
          v57 = v46;
          v48 = NWEndpoint.contactID.getter();
          v54 = v49;
          v55 = v48;
          sub_181FDADB8(v29, v20, type metadata accessor for NWEndpoint);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v50 = *v20;
            if (nw_endpoint_get_type(v50) == (nw_endpoint_type_url|nw_endpoint_type_host))
            {
              device_color = nw_endpoint_get_device_color(v50);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              (*(v66 + 8))(v64, v33);
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              (*(v66 + 8))(v64, v33);
              device_color = 0;
            }

            v20 = v29;
          }

          else
          {
            swift_unknownObjectRelease();
            (*(v34 + 8))(v40, v33);
            sub_181FDAD5C(v29);
            device_color = 0;
          }

          v52 = v60;
          sub_181FDAD5C(v20);
          v37 = v68;
          sub_181FD8F68(v42, v61, v52, v43, v59, v58, v57, v56, v68, v55, v54, device_color);
          v38 = type metadata accessor for BrowserProviderFactories.ApplicationService.Endpoint();
          v39 = 0;
          return (*(*(v38 - 8) + 56))(v37, v39, 1);
        }

        sub_181FDAD5C(v29);

        swift_unknownObjectRelease();
        sub_181F49A88(v9, &qword_1EA8394C0);
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_181FDAD5C(v23);
    }

    v37 = v68;
    sub_181FDAD5C(v29);
    goto LABEL_13;
  }

  sub_181FDAD5C(v29);
  swift_unknownObjectRelease();
LABEL_9:
  v37 = v68;
LABEL_13:
  v38 = type metadata accessor for BrowserProviderFactories.ApplicationService.Endpoint();
  v39 = 1;
  return (*(*(v38 - 8) + 56))(v37, v39, 1);
}

uint64_t static BrowserProviderFactories.ApplicationService.applicationService(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839928);
  sub_181AB5D28(a3, a4 + *(v8 + 40), &unk_1EA839910);
  *(a4 + 16) = 1;
  *a4 = a1;
  *(a4 + 8) = a2;
}

uint64_t sub_181FD9DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839910);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a3, a5, v16);
  sub_181AB5D28(a4, v14, &unk_1EA839910);
  sub_181FD9128(a1, a2, v18, v14, a5, a6);
}

uint64_t static BrowserProvider.applicationService<>(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839928);
  sub_181AB5D28(a3, a4 + *(v8 + 40), &unk_1EA839910);
  *(a4 + 16) = 1;
  *a4 = a1;
  *(a4 + 8) = a2;
}

uint64_t Browser1.__allocating_init<>(for:using:)(uint64_t a1, uint64_t a2)
{
  return sub_181FDA000(a1, a2, &qword_1EA839930);
}

{
  return sub_181FDA000(a1, a2, &qword_1EA839928);
}

uint64_t sub_181FDA000(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_181AB5D28(a1, &v14 - v7, a3);
  v9 = swift_allocObject();
  v10 = (v9 + *(*v9 + 112));
  *v10 = 0;
  v10[1] = 0;
  sub_181AB5D28(v8, v9 + *(*v9 + 96), a3);
  if (a2)
  {
    swift_beginAccess();
    v11 = *(a2 + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_181FD91D0(v11);

  sub_181F49A88(a1, a3);
  sub_181F49A88(v8, a3);
  *(v9 + *(*v9 + 104)) = v12;
  return v9;
}

uint64_t Browser2.__allocating_init<>(for:where:)(uint64_t a1, uint64_t a2)
{
  return sub_181FDA1DC(a1, a2, &qword_1EA839930);
}

{
  return sub_181FDA1DC(a1, a2, &qword_1EA839928);
}

uint64_t sub_181FDA1DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_181AB5D28(a1, &v13 - v7, a3);
  v9 = swift_allocObject();
  v10 = (v9 + *(*v9 + 112));
  *v10 = 0;
  v10[1] = 0;
  sub_181AB5D28(v8, v9 + *(*v9 + 96), a3);
  v11 = sub_181FD91D0(a2);

  sub_181F49A88(a1, a3);
  sub_181F49A88(v8, a3);
  *(v9 + *(*v9 + 104)) = v11;
  return v9;
}

uint64_t sub_181FDA348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t Browser3.__allocating_init<>(for:using:)(uint64_t a1, uint64_t a2)
{
  return sub_181FDA40C(a1, a2, &qword_1EA839930, &unk_182AEE188, sub_181FD8124);
}

{
  return sub_181FDA40C(a1, a2, &qword_1EA839928, &unk_182AEE180, sub_181FD827C);
}

uint64_t sub_181FDA40C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - v10;
  sub_181AB5D28(a1, &v14 - v10, a3);
  swift_allocObject();
  v12 = a5(v11, a2);
  sub_181F49A88(a1, a3);
  return v12;
}

uint64_t sub_181FDA4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_181F5BBBC(a1, a2);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t Browser1<>.endpoints.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  Browser1.results.getter();
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a1;
  v6[4] = *(v5 + 88);
  type metadata accessor for Browser1.AsyncSequenceBrowseResults();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83B420);
  swift_getWitnessTable();
  a2[3] = sub_182AD3E28();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  sub_182AD3658();
}

{
  v5 = *v2;
  Browser1.results.getter();
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a1;
  v6[4] = *(v5 + 88);
  type metadata accessor for Browser1.AsyncSequenceBrowseResults();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83B420);
  swift_getWitnessTable();
  a2[3] = sub_182AD3E28();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  sub_182AD3658();
}

uint64_t sub_181FDA6A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  v5[7] = *a2;

  return MEMORY[0x1EEE6DFA0](sub_181FDA718, 0, 0);
}

uint64_t sub_181FDA718()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  swift_getAssociatedTypeWitness();
  v4 = sub_182AD3488();
  v5 = type metadata accessor for NWEndpoint();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_18223115C(sub_181FDC190, v3, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  *v2 = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t Browser2<>.endpoints.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  Browser2.results.getter();
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a1;
  v6[4] = *(v5 + 88);
  type metadata accessor for Browser2.AsyncSequenceBrowseResults();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83B420);
  swift_getWitnessTable();
  a2[3] = sub_182AD3E28();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  sub_182AD3658();
}

{
  v5 = *v2;
  Browser2.results.getter();
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a1;
  v6[4] = *(v5 + 88);
  type metadata accessor for Browser2.AsyncSequenceBrowseResults();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83B420);
  swift_getWitnessTable();
  a2[3] = sub_182AD3E28();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  sub_182AD3658();
}

uint64_t sub_181FDA9A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  v5[7] = *a2;

  return MEMORY[0x1EEE6DFA0](sub_181FDAA20, 0, 0);
}

uint64_t sub_181FDAA20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  swift_getAssociatedTypeWitness();
  v4 = sub_182AD3488();
  v5 = type metadata accessor for NWEndpoint();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_18223115C(sub_181FDC2EC, v3, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  *v2 = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_181FDAB64()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 8);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t _s7Network24BrowserProviderFactoriesO18ApplicationServiceV19configureParametersyAA12NWParametersCAHSgF_0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    v2 = a1;
  }

  else
  {
    type metadata accessor for NWParameters();
    v2 = swift_allocObject();
    v3 = nw_parameters_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
    v1 = swift_allocObject();
    *(v1 + 24) = 0;
    *(v1 + 16) = v3;
    *(v2 + 16) = v1;
  }

  os_unfair_lock_lock((v1 + 24));
  sub_18228E528((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  v4 = *(v6 + 16);

  if (!v4)
  {
    NWParameters.requiredNetworkAgents.setter();
  }

  return v2;
}

uint64_t sub_181FDACF8(void *a1)
{
  v4 = *(v1 + 16);
  v6 = *(v1 + 40);
  result = TXTRecordDecoder.decode<A>(_:from:)(v4, &v6);
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_181FDAD5C(uint64_t a1)
{
  v2 = type metadata accessor for NWEndpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181FDADB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_181FDAE20()
{
  result = qword_1EA839920;
  if (!qword_1EA839920)
  {
    type metadata accessor for UnexpectedEndpointType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839920);
  }

  return result;
}

uint64_t sub_181FDAE78(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F54964;

  return sub_181FDA6A0(a1, a2, v6, v7, v8);
}

uint64_t sub_181FDAF3C(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F5EB68;

  return sub_181FDA9A8(a1, a2, v6, v7, v8);
}

uint64_t sub_181FDB070()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181FDB0C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181FDB100(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_181FDB1B8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_181FDBA00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_181FDB250(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 - 1;
  if (v7 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  if (v10)
  {
    v20 = -2;
  }

  else
  {
    v20 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v18 | 7;
  if (a2 <= v15)
  {
    goto LABEL_40;
  }

  v22 = v20 + v19 - ((-45 - v18) | v18) - ((((-17 - v16) | v16) - (v17 + v21)) | v21);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v26 < 2)
    {
LABEL_40:
      if ((v14 & 0x80000000) != 0)
      {
        v31 = (a1 + v16 + 16) & ~v16;
        if (v7 == v15)
        {
          v32 = *(v6 + 48);

          return v32(v31, v7, v5);
        }

        else
        {
          v33 = ((v31 + v17 + v21) & ~v21);
          if ((v11 & 0x80000000) != 0)
          {
            v36 = (*(v9 + 48))((v18 + ((((v33 + 11) & 0xFFFFFFFFFFFFFFF8) + 35) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v18);
            v35 = v36 - 1;
            if (v36 < 2)
            {
              v35 = 0;
            }
          }

          else
          {
            v34 = *v33;
            if (v34 >= 0xFFFFFFFF)
            {
              LODWORD(v34) = -1;
            }

            v35 = v34 + 1;
          }

          if (v35 >= 2)
          {
            return v35 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v30 = *(a1 + 1);
        if (v30 >= 0xFFFFFFFF)
        {
          LODWORD(v30) = -1;
        }

        return (v30 + 1);
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_40;
  }

LABEL_27:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v15 + (v29 | v27) + 1;
}

void sub_181FDB570(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v39 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v11 + 80);
  if (v12)
  {
    v16 = v12 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v9 <= v17 - 1)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = v9;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v15 + 44) & ~v15;
  if (v12)
  {
    v21 = *(v11 + 64);
  }

  else
  {
    v21 = *(v11 + 64) + 1;
  }

  v22 = v20 + v21;
  v23 = (((v15 | 7) + v14 + ((v13 + 16) & ~v13)) & ~(v15 | 7)) + v20 + v21;
  if (a3 > v19)
  {
    v10 = 1;
    if (v23 <= 3)
    {
      v24 = ((a3 - v19 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      v25 = HIWORD(v24);
      if (v24 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v24 >= 2)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if (v25)
      {
        v10 = 4;
      }

      else
      {
        v10 = v27;
      }
    }
  }

  if (v19 < a2)
  {
    v28 = ~v19 + a2;
    if (v23 >= 4)
    {
      bzero(a1, v23);
      *a1 = v28;
      v29 = 1;
      if (v10 > 1)
      {
        goto LABEL_30;
      }

      goto LABEL_61;
    }

    v29 = (v28 >> (8 * v23)) + 1;
    if (v23)
    {
      v30 = v28 & ~(-1 << (8 * v23));
      bzero(a1, v23);
      if (v23 != 3)
      {
        if (v23 == 2)
        {
          *a1 = v30;
          if (v10 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a1 = v28;
          if (v10 > 1)
          {
LABEL_30:
            if (v10 == 2)
            {
              *(a1 + v23) = v29;
            }

            else
            {
              *(a1 + v23) = v29;
            }

            return;
          }
        }

LABEL_61:
        if (v10)
        {
          *(a1 + v23) = v29;
        }

        return;
      }

      *a1 = v30;
      *(a1 + 2) = BYTE2(v30);
    }

    if (v10 > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v23) = 0;
  }

  else if (v10)
  {
    *(a1 + v23) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

  v31 = (a1 + v13 + 16) & ~v13;
  if (v9 == v19)
  {
    v32 = *(v39 + 56);

    v32(v31, a2, v9, v7);
    return;
  }

  v33 = ((v31 + v14 + (v15 | 7)) & ~(v15 | 7));
  if (a2 >= v17)
  {
    if (v22 <= 3)
    {
      v34 = ~(-1 << (8 * v22));
    }

    else
    {
      v34 = -1;
    }

    if (!v22)
    {
      return;
    }

    v35 = v34 & (a2 - v17);
    if (v22 <= 3)
    {
      v36 = v22;
    }

    else
    {
      v36 = 4;
    }

    bzero(v33, v22);
    if (v36 <= 2)
    {
      if (v36 != 1)
      {
LABEL_90:
        *v33 = v35;
        return;
      }

LABEL_75:
      *v33 = v35;
      return;
    }

LABEL_91:
    if (v36 == 3)
    {
      *v33 = v35;
      v33[2] = BYTE2(v35);
    }

    else
    {
      *v33 = v35;
    }

    return;
  }

  if ((v16 & 0x80000000) == 0)
  {
    if (a2 + 1 < 0)
    {
      *v33 = (a2 - 0x7FFFFFFF);
    }

    else
    {
      *v33 = a2;
    }

    return;
  }

  v33 = ((v15 + ((((v33 + 11) & 0xFFFFFFFFFFFFFFF8) + 35) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v15);
  if (a2 >= v16)
  {
    if (v21 <= 3)
    {
      v38 = ~(-1 << (8 * v21));
    }

    else
    {
      v38 = -1;
    }

    if (!v21)
    {
      return;
    }

    v35 = v38 & (a2 - v16);
    if (v21 <= 3)
    {
      v36 = v21;
    }

    else
    {
      v36 = 4;
    }

    bzero(v33, v21);
    if (v36 <= 2)
    {
      if (v36 != 1)
      {
        goto LABEL_90;
      }

      goto LABEL_75;
    }

    goto LABEL_91;
  }

  v37 = *(v11 + 56);

  v37(v33, (a2 + 2));
}

void sub_181FDBA00()
{
  if (!qword_1EA839938)
  {
    type metadata accessor for NWBrowser.Descriptor.Options(255);
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA839938);
    }
  }
}

void sub_181FDBA60()
{
  type metadata accessor for NWBrowser.Result(319);
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_182AD39B8();
    if (v1 <= 0x3F)
    {
      sub_182AD2258();
      if (v2 <= 0x3F)
      {
        sub_181FDC140();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_181FDBB48(_DWORD *a1, unsigned int a2)
{
  v4 = *(sub_182AD2058() - 8);
  if (*(v4 + 64) <= 0x38uLL)
  {
    v5 = 56;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_182AD2258();
  v11 = *(v10 - 8);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (!v8)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((((v5 + (((*(v4 + 80) & 0xF8) + 15) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 16;
  v18 = v13 + 7;
  v19 = v14 + 16;
  if (v16 < a2 && *(a1 + ((((((((*(*(v10 - 8) + 64) + ((v19 + ((v18 + (v17 & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v16 + *a1 + 1;
  }

  if ((v15 & 0x80000000) == 0)
  {
    v21 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }

  v22 = (a1 + v17) & ~v12;
  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v25 = (*(v7 + 48))(v22, v8, AssociatedTypeWitness);
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v23 = *(v11 + 48);
  v24 = (v19 + ((v18 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v14;

  return v23(v24);
}

void sub_181FDBE14(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(sub_182AD2058() - 8);
  if (*(v6 + 64) <= 0x38uLL)
  {
    v7 = 56;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v30 = v9;
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(sub_182AD2258() - 8);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v11 <= *(v12 + 84))
  {
    v18 = *(v12 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v13 = *(v6 + 80);
  v20 = ((((v7 + (((v13 & 0xF8) + 15) & ~(v13 & 0xF8) & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 + v14;
  if (v10)
  {
    v22 = v15;
  }

  else
  {
    v22 = v15 + 1;
  }

  v23 = v22 + 7;
  v24 = (v23 + (v21 & ~v14)) & 0xFFFFFFFFFFFFFFF8;
  v25 = (((((((v17 + ((v16 + 16 + v24) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v19 >= a2)
  {
    if (v19 < a3)
    {
      *(a1 + v25) = 0;
    }

    if (a2)
    {
      if ((v18 & 0x80000000) != 0)
      {
        v26 = (a1 + v21) & ~v14;
        if (v11 == v19)
        {
          if (v10 >= 2)
          {
            v27 = *(v30 + 56);

            v27(v26, (a2 + 1), v10, AssociatedTypeWitness);
          }
        }

        else
        {
          v28 = *(v12 + 56);
          v29 = (v16 + 16 + ((v23 + v26) & 0xFFFFFFFFFFFFFFF8)) & ~v16;

          v28(v29, a2);
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        if (((((v7 + (((v13 & 0xF8) + 15) & ~(v13 & 0xF8) & 0x1F8) + 8) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
        {
          bzero(a1, v20);
          *a1 = a2 & 0x7FFFFFFF;
        }
      }

      else
      {
        *a1 = (a2 - 1);
      }
    }
  }

  else
  {
    bzero(a1, (((((((v17 + ((v16 + 16 + v24) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4);
    *a1 = ~v19 + a2;
    if (v19 < a3)
    {
      *(a1 + v25) = 1;
    }
  }
}

void sub_181FDC140()
{
  if (!qword_1ED410380)
  {
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED410380);
    }
  }
}

uint64_t sub_181FDC20C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_181FDC27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Connection2.nw.getter()
{
  sub_181F3D244();
}

uint64_t Connection2.connection.getter()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t Connection2.__allocating_init(to:using:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_181FE3FB0(a1, a2);

  return v4;
}

uint64_t Connection2.init(to:using:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_181FE3FB0(a1, a2);

  return v2;
}

uint64_t Connection2.__allocating_init(using:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_181FE4274(a1);

  return v2;
}

uint64_t Connection2.init(using:)(uint64_t a1)
{
  v1 = sub_181FE4274(a1);

  return v1;
}

uint64_t sub_181FDC474(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v62 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839978);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v57 - v12;
  v13 = sub_182AD2258();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839980);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v23 = *(a1 + 4);
  v24 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = a9;
    v67 = v24 | (v23 << 32);
    v26 = result;
    swift_beginAccess();
    v57 = v26;
    v27 = *(v26 + 24);
    v28 = *(v27 + 64);
    v58 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v28;
    v32 = (v29 + 63) >> 6;
    v63 = v14 + 16;
    v69 = (v14 + 32);
    v73 = (v11 + 48);
    v74 = (v11 + 56);
    v65 = v27;
    v66 = (v14 + 8);

    v33 = 0;
    v34 = v14;
    v35 = v71;
    v68 = v22;
    v60 = v14;
    if (v31)
    {
      while (1)
      {
        v36 = v33;
LABEL_13:
        v39 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v40 = v39 | (v36 << 6);
        v42 = v64;
        v41 = v65;
        (*(v34 + 16))(v64, *(v65 + 48) + *(v34 + 72) * v40, v13);
        v43 = *(v41 + 56);
        v44 = *(v10 + 48);
        v45 = *(v34 + 32);
        v75 = *(v43 + 16 * v40);
        v35 = v71;
        v45(v71, v42, v13);
        *&v35[v44] = v75;
        v72 = *v74;
        v72(v35, 0, 1, v10);

        v38 = v36;
LABEL_14:
        v46 = *v73;
        v47 = 1;
        if ((*v73)(v35, 1, v10) != 1)
        {
          v48 = *(v10 + 48);
          *&v75 = v38;
          v49 = *v69;
          (*v69)(v61, v35, v13);
          v50 = swift_allocObject();
          *(v50 + 16) = *&v71[v48];
          v51 = v10;
          v52 = &v70[*(v10 + 48)];
          v49(v70);
          v38 = v75;
          v47 = 0;
          *v52 = v59;
          *(v52 + 1) = v50;
          v35 = v71;
          v10 = v51;
          v34 = v60;
        }

        v53 = v70;
        v72(v70, v47, 1, v10);
        v54 = v53;
        v55 = v68;
        sub_181FE4E70(v54, v68);
        if (v46(v55, 1, v10) == 1)
        {
          break;
        }

        v56 = *(v55 + *(v10 + 48));
        v77 = BYTE4(v67);
        v76 = v67;
        v56(&v76);

        result = (*v66)(v55, v13);
        v33 = v38;
        if (!v31)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (v32 <= v33 + 1)
      {
        v37 = v33 + 1;
      }

      else
      {
        v37 = v32;
      }

      v38 = v37 - 1;
      while (1)
      {
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v36 >= v32)
        {
          v72 = *v74;
          v72(v35, 1, 1, v10);
          v31 = 0;
          goto LABEL_14;
        }

        v31 = *(v58 + 8 * v36);
        ++v33;
        if (v31)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t Connection2.states.getter@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  *a1 = sub_181FE4430;
  a1[1] = v1;
}

uint64_t sub_181FDCA18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v6 = sub_182AD2258();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2, v8);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v5, v2);
  sub_181FDCBFC(sub_181FE500C, v12, v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_181FDCBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v6 = *v3;
  v7 = sub_182AD27A8();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_182AD27C8();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_182AD2258();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_182AD2248();
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v25[1] = qword_1EA8433A8;
  (*(v13 + 16))(v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v16 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v6[10];
  *(v18 + 3) = v6[11];
  *(v18 + 4) = swift_allocateMetadataPack();
  *(v18 + 5) = v6[13];
  *(v18 + 6) = swift_allocateWitnessTablePack();
  *(v18 + 7) = v4;
  (*(v13 + 32))(&v18[v16], v15, v12);
  v19 = &v18[v17];
  v20 = v27;
  *v19 = v26;
  *(v19 + 1) = v20;
  aBlock[4] = sub_181FE48B4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_78;
  v21 = _Block_copy(aBlock);

  sub_182AD27B8();
  v33 = MEMORY[0x1E69E7CC0];
  sub_181FE485C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181B7CFE4();
  v22 = v30;
  v23 = v32;
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v11, v22, v21);
  _Block_release(v21);
  (*(v31 + 8))(v22, v23);
  (*(v28 + 8))(v11, v29);
}