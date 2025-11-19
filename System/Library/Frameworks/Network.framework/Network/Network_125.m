uint64_t sub_1822C57C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = v1[7];
    if (v3 == v2)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      v1[7] = 0;
    }

    else if (v3 >= v2)
    {
      __break(1u);
    }

    else
    {
      v4 = *v1 + 32 * v3;
      v6 = *(v4 + 32);
      v5 = *(v4 + 40);
      v7 = *(v4 + 48);
      LOBYTE(v4) = *(v4 + 56);
      *a1 = v6;
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;
      *(a1 + 24) = v4;
      v1[7] = v3 + 1;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

__n128 sub_1822C5868@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1822C587C()
{
  v1 = v0[1];
  v5[0] = *v0;
  v5[1] = v1;
  v2 = v0[3];
  v5[2] = v0[2];
  v5[3] = v2;
  v3 = sub_18208AD64(v5);
  sub_18206AE94(v5);
  return v3;
}

unint64_t sub_1822C590C()
{
  result = qword_1EA83BFC0;
  if (!qword_1EA83BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFC0);
  }

  return result;
}

uint64_t sub_1822C5960(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1822C59A4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 6)
  {
    sub_181E4926C(result, a2);

    return sub_181E49280(a3, a4);
  }

  return result;
}

uint64_t sub_1822C59F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v6 = result;
  v7 = a5;
  if (!a2)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_14;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_14:
    *v6 = a4;
    *(v6 + 8) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      if (v7 == 0xFFFF)
      {
        v8 = v10 - 1;
        LOWORD(v7) = -1;
        goto LABEL_14;
      }

      if (*(a4 + 16) <= v7)
      {
        break;
      }

      v11 = a4 + 32 + (v7 << 6);
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v15 = *(v11 + 32);
      v16 = *(v11 + 40);
      v17 = *(v11 + 48);
      v7 = *(v11 + 56);
      *v9 = *v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 24) = v14;
      *(v9 + 32) = v15;
      *(v9 + 40) = v16;
      *(v9 + 48) = v17;
      if (v8 == v10)
      {

        goto LABEL_14;
      }

      v9 += 56;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1822C5B04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    result = swift_beginAccess();
    v8 = *(a4 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = (v8 + 80);
      v11 = 1;
      while (v11 - 1 < v9)
      {
        v12 = *(v10 - 1);
        v13 = *v10;
        v14 = *(v10 - 16);
        v15 = *(v10 - 4);
        v16 = *(v10 - 3);
        v17 = *(v10 - 5);
        *v7 = *(v10 - 6);
        *(v7 + 8) = v17;
        *(v7 + 16) = v15;
        *(v7 + 24) = v16;
        *(v7 + 32) = v14;
        *(v7 + 40) = v12;
        *(v7 + 48) = v13;
        if (v6 == v11)
        {

          goto LABEL_12;
        }

        v18 = v11 + 1;
        v9 = *(v8 + 16);
        v10 += 8;
        v7 += 56;
        if (v11++ == v9)
        {
          v6 = v18 - 1;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1822C5C24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a4;
  v10 = a4 + 64;

  swift_unknownObjectRetain();
  v32 = v10;
  v11 = sub_182AD3AD8();
  v34 = *(v6 + 36);
  swift_unknownObjectRelease();

  if (!a2)
  {
LABEL_22:
    a3 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    *a1 = v6;
    *(a1 + 8) = a5;
    *(a1 + 16) = v11;
    *(a1 + 24) = v34;
    *(a1 + 32) = 0;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = a5;
    v28 = a1;
    result = 0;
    v29 = v6 + 72;
    v30 = v6;
    v13 = 1;
    v31 = a3;
    while (v34 == *(v6 + 36))
    {
      v14 = 1 << *(v6 + 32);
      if (v11 == v14)
      {
        a3 = result;
LABEL_24:
        a5 = v27;
        a1 = v28;
        goto LABEL_25;
      }

      if ((v11 & 0x8000000000000000) != 0 || v11 >= v14)
      {
        goto LABEL_27;
      }

      v15 = v11 >> 6;
      v16 = *(v32 + 8 * (v11 >> 6));
      if (((v16 >> v11) & 1) == 0)
      {
        goto LABEL_28;
      }

      v17 = (*(v6 + 48) + 16 * v11);
      v18 = v17[1];
      v33 = *v17;
      v19 = *(v6 + 56) + 24 * v11;
      v20 = *v19;
      a1 = *(v19 + 8);
      v21 = *(v19 + 16);
      a5 = v16 & (-2 << (v11 & 0x3F));
      if (a5)
      {

        sub_1820F5148(v20, a1, v21);
        sub_18225BB58(v11, v34, 0);
        v11 = __clz(__rbit64(a5)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v15 << 6;
        v23 = v15 + 1;
        v24 = (v29 + 8 * v15);
        while (v23 < (v14 + 63) >> 6)
        {
          v25 = *v24++;
          a5 = v25;
          v22 += 64;
          ++v23;
          if (v25)
          {

            sub_1820F5148(v20, a1, v21);
            sub_18225BB58(v11, v34, 0);
            v11 = __clz(__rbit64(a5)) + v22;
            goto LABEL_17;
          }
        }

        sub_1820F5148(v20, a1, v21);
        sub_18225BB58(v11, v34, 0);
        v11 = v14;
LABEL_17:
        v6 = v30;
      }

      *a2 = v33;
      *(a2 + 8) = v18;
      *(a2 + 16) = v20;
      *(a2 + 24) = a1;
      *(a2 + 32) = v21;
      a3 = v31;
      if (v13 == v31)
      {
        goto LABEL_24;
      }

      a2 += 40;
      result = v13;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1822C5E9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v18 = v3[7];
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_11:
    v17 = *(v3 + 1);
    *v4 = *v3;
    *(v4 + 16) = v17;
    *(v4 + 32) = *(v3 + 2);
    *(v4 + 48) = v3[6];
    *(v4 + 56) = v18;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *v3;
    if (*(*v3 + 16))
    {
      v8 = 0;
      v9 = v6 + 32 * v18;
      for (i = 1; ; ++i)
      {
        v11 = v18 + i - 1;
        v12 = *(v6 + 16);
        if (v11 == v12)
        {
          v18 = 0;
          v5 = i - 1;
          goto LABEL_11;
        }

        if (v11 >= v12)
        {
          break;
        }

        v13 = a2 + v8;
        v14 = *(v9 + v8 + 40);
        v15 = *(v9 + v8 + 48);
        v16 = *(v9 + v8 + 56);
        *v13 = *(v9 + v8 + 32);
        *(v13 + 8) = v14;
        *(v13 + 16) = v15;
        *(v13 + 24) = v16;
        if (v5 == i)
        {

          v18 += i;
          goto LABEL_11;
        }

        v8 += 32;
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1822C5FCC(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 56) + 56 * (__clz(__rbit64(v9)) | (v12 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v9 &= v9 - 1;
      v20 = v17[2];
      v21 = v17[3];
      v22 = v17[4];
      v23 = v17[5];
      v24 = v17[6];
      *v11 = *v17;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      v11[4] = v22;
      v11[5] = v23;
      v11[6] = v24;
      if (v14 == v10)
      {
        sub_18206A3C4(v18, v19, v20, v21, v22);
        goto LABEL_24;
      }

      v11 += 7;
      sub_18206A3C4(v18, v19, v20, v21, v22);
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
        goto LABEL_27;
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
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1822C613C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
        goto LABEL_27;
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

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1822C6290(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1822C62B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1822C631C(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return result;
}

void sub_1822C6360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }
}

uint64_t sub_1822C63C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1822C640C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1822C6484()
{
  result = qword_1EA83BFD0;
  if (!qword_1EA83BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFD0);
  }

  return result;
}

unint64_t sub_1822C64DC()
{
  result = qword_1EA83BFD8;
  if (!qword_1EA83BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFD8);
  }

  return result;
}

unint64_t sub_1822C6534()
{
  result = qword_1EA83BFE0;
  if (!qword_1EA83BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFE0);
  }

  return result;
}

unint64_t sub_1822C658C()
{
  result = qword_1EA83BFE8;
  if (!qword_1EA83BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFE8);
  }

  return result;
}

unint64_t sub_1822C65E4()
{
  result = qword_1EA83BFF0;
  if (!qword_1EA83BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFF0);
  }

  return result;
}

uint64_t NWActorSystemInvocationDecoder.decodeGenericSubstitutions()()
{
  v1 = v0 + *(type metadata accessor for NWActorSystemInvocationDecoder() + 20);
  result = type metadata accessor for RemoteCallEnvelope(0);
  v3 = 0;
  v4 = *(v1 + *(result + 28));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = v4 + 40 + 16 * v3;
  while (1)
  {
    if (v5 == v3)
    {
      return v6;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    ++v3;
    v8 = v7 + 16;

    v9 = sub_182AD3BC8();

    v7 = v8;
    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_181F5B3C0(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_181F5B3C0((v10 > 1), v11 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for NWActorSystemInvocationDecoder()
{
  result = qword_1EA83BFF8;
  if (!qword_1EA83BFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NWActorSystemInvocationDecoder.decodeNextArgument<A>()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v5 = sub_182AD39B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for NWActorSystemInvocationDecoder();
  v14 = (v2 + *(result + 24));
  v16 = *v14;
  v15 = v14[1];
  v17 = *(*v14 + 16);
  if (v15 == v17)
  {
    sub_181FCD1A0();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = xmmword_182B07D00;
    return swift_willThrow();
  }

  if (v15 < v17)
  {
    v34 = v6;
    v35 = v5;
    v36 = v9;
    v19 = v16 + 16 * v15;
    v20 = *(v19 + 32);
    v21 = *(v19 + 40);
    v14[1] = v15 + 1;
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = v22;
      v33 = a2;
      v24 = *(v22 + 24);
      v40 = a1;
      v41 = v22;
      __swift_allocate_boxed_opaque_existential_0Tm(v39);
      sub_181F49B58(v20, v21);
      sub_181F49B58(v20, v21);
      v37 = v21;
      v25 = v42;
      v24(v20, v21, a1, v23);
      if (v25)
      {
        __swift_deallocate_boxed_opaque_existential_1Tm(v39);
      }

      else
      {
        sub_181F75240(v39, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB60);
        if (swift_dynamicCast())
        {
          sub_181C1F2E4(v20, v37);
          v27 = v36;
          (*(v36 + 56))(v8, 0, 1, a1);
          v28 = *(v27 + 32);
          v28(v12, v8, a1);
          v28(v33, v12, a1);
          return __swift_destroy_boxed_opaque_existential_1(v39);
        }

        (*(v36 + 56))(v8, 1, 1, a1);
        (*(v34 + 8))(v8, v35);
        v29 = sub_182AD3C98();
        swift_allocError();
        v31 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40);
        __swift_project_boxed_opaque_existential_1(v39, v40);
        *v31 = swift_getDynamicType();
        sub_182AD3C88();
        (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v39);
      }

      v21 = v37;
    }

    else
    {
      sub_181F49B58(v20, v21);
      v26 = v42;
      sub_182AD1C18();
      if (!v26)
      {
        return sub_181C1F2E4(v20, v21);
      }
    }

    swift_willThrow();
    return sub_181C1F2E4(v20, v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_1822C6C6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return NWActorSystemInvocationDecoder.decodeNextArgument<A>()(a1, a2);
}

void sub_1822C6CF0()
{
  sub_182AD1C48();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RemoteCallEnvelope(319);
    if (v1 <= 0x3F)
    {
      sub_1822C6D8C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1822C6D8C()
{
  if (!qword_1EA83C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83BC50);
    sub_1822C6DFC();
    v0 = sub_182AD3E38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA83C008);
    }
  }
}

unint64_t sub_1822C6DFC()
{
  result = qword_1EA83C010;
  if (!qword_1EA83C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83BC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C010);
  }

  return result;
}

uint64_t HTTPRequest.method.getter@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 64);
  *a1 = *(*v1 + 56);
  a1[1] = v2;
}

unint64_t HTTPRequest.extendedConnectProtocol.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[30];
  v4 = v1[35];
  v5 = v1[36];
  if (sub_181CA4798(v4, v5))
  {
  }

  else
  {
    sub_181F887D0(v3, v2);
    v6 = sub_182287700(v4, v5);
    sub_181D04D28(v3, v2);
    return v6;
  }

  return v4;
}

unint64_t HTTPRequest.path.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[23];
  v4 = v1[28];
  v5 = v1[29];
  if (sub_181CA4798(v4, v5))
  {
  }

  else
  {
    sub_181F887D0(v3, v2);
    v6 = sub_182287700(v4, v5);
    sub_181D04D28(v3, v2);
    return v6;
  }

  return v4;
}

uint64_t HTTPRequest.PseudoHeaderFields.scheme.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 120);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_181F887D0(v2, v3);
}

uint64_t HTTPRequest.PseudoHeaderFields.authority.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 160);
  v7 = *(*v1 + 168);
  v8 = *(*v1 + 176);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_181F887D0(v2, v3);
}

uint64_t HTTPRequest.PseudoHeaderFields.path.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 216);
  v7 = *(*v1 + 224);
  v8 = *(*v1 + 232);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_181F887D0(v2, v3);
}

uint64_t HTTPRequest.scheme.setter(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *v2;
    v6 = *(*v2 + 80);
    if (v6)
    {
      v21 = v5[9];
      v7 = v5[11];
      v8 = v5[12];
      v9 = v5[13];
      if (sub_181CA4798(a1, a2))
      {
        sub_181F887D0(v21, v6);
      }

      else
      {
        *&v22 = v4;
        *(&v22 + 1) = v3;
        *&v23 = sub_1822876F4;
        *(&v23 + 1) = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_181F887D0(v21, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v18 = sub_181CA1930(v4, v3);
      v20 = v19;

      *&v22 = v21;
      *(&v22 + 1) = v6;
      *&v23 = v7;
      *(&v23 + 1) = v8;
      v24 = v9;
      v25 = v18;
      v26 = v20;
    }

    else
    {
      if ((sub_181CA4798(a1, a2) & 1) == 0)
      {
        *&v22 = v4;
        *(&v22 + 1) = v3;
        *&v23 = sub_1822876F4;
        *(&v23 + 1) = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v15 = sub_181CA1930(v4, v3);
      v17 = v16;

      v22 = xmmword_182AE94B0;
      v23 = xmmword_182AE94B0;
      v24 = 0;
      v25 = v15;
      v26 = v17;
    }

    return HTTPRequest.PseudoHeaderFields.scheme.setter(&v22);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1822C9498();

      *v2 = v11;
    }

    v12 = *(v11 + 72);
    v13 = *(v11 + 80);
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    *(v11 + 104) = 0u;
    *(v11 + 120) = 0;

    return sub_181D04D28(v12, v13);
  }
}

uint64_t HTTPRequest.authority.setter(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *v2;
    v6 = *(*v2 + 136);
    if (v6)
    {
      v21 = v5[16];
      v7 = v5[18];
      v8 = v5[19];
      v9 = v5[20];
      if (sub_181CA4798(a1, a2))
      {
        sub_181F887D0(v21, v6);
      }

      else
      {
        *&v22 = v4;
        *(&v22 + 1) = v3;
        *&v23 = sub_1822876F4;
        *(&v23 + 1) = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_181F887D0(v21, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v18 = sub_181CA1930(v4, v3);
      v20 = v19;

      *&v22 = v21;
      *(&v22 + 1) = v6;
      *&v23 = v7;
      *(&v23 + 1) = v8;
      v24 = v9;
      v25 = v18;
      v26 = v20;
    }

    else
    {
      if ((sub_181CA4798(a1, a2) & 1) == 0)
      {
        *&v22 = v4;
        *(&v22 + 1) = v3;
        *&v23 = sub_1822876F4;
        *(&v23 + 1) = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v15 = sub_181CA1930(v4, v3);
      v17 = v16;

      v22 = xmmword_182AE94A0;
      v23 = xmmword_182AE94A0;
      v24 = 0;
      v25 = v15;
      v26 = v17;
    }

    return HTTPRequest.PseudoHeaderFields.authority.setter(&v22);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1822C9498();

      *v2 = v11;
    }

    v12 = *(v11 + 128);
    v13 = *(v11 + 136);
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
    *(v11 + 176) = 0;

    return sub_181D04D28(v12, v13);
  }
}

uint64_t HTTPRequest.path.setter(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *v2;
    v6 = *(*v2 + 192);
    if (v6)
    {
      v21 = v5[23];
      v7 = v5[25];
      v8 = v5[26];
      v9 = v5[27];
      if (sub_181CA4798(a1, a2))
      {
        sub_181F887D0(v21, v6);
      }

      else
      {
        *&v22 = v4;
        *(&v22 + 1) = v3;
        *&v23 = sub_1822876F4;
        *(&v23 + 1) = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_181F887D0(v21, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v18 = sub_181CA1930(v4, v3);
      v20 = v19;

      *&v22 = v21;
      *(&v22 + 1) = v6;
      *&v23 = v7;
      *(&v23 + 1) = v8;
      v24 = v9;
      v25 = v18;
      v26 = v20;
    }

    else
    {
      if ((sub_181CA4798(a1, a2) & 1) == 0)
      {
        *&v22 = v4;
        *(&v22 + 1) = v3;
        *&v23 = sub_1822876F4;
        *(&v23 + 1) = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v15 = sub_181CA1930(v4, v3);
      v17 = v16;

      v22 = xmmword_182AE94C0;
      v23 = xmmword_182AE94C0;
      v24 = 0;
      v25 = v15;
      v26 = v17;
    }

    return HTTPRequest.PseudoHeaderFields.path.setter(&v22);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1822C9498();

      *v2 = v11;
    }

    v12 = *(v11 + 184);
    v13 = *(v11 + 192);
    *(v11 + 184) = 0u;
    *(v11 + 200) = 0u;
    *(v11 + 216) = 0u;
    *(v11 + 232) = 0;

    return sub_181D04D28(v12, v13);
  }
}

uint64_t HTTPRequest.PseudoHeaderFields.scheme.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v13 = *(a1 + 5);
  v14 = *(a1 + 3);
  if (v3)
  {
    if (v5 != 0x656D656863733ALL || v14 != 0xE700000000000000)
    {
      v7 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1822C9498();

    *v2 = v9;
  }

  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  *(v9 + 72) = v4;
  *(v9 + 80) = v3;
  *(v9 + 88) = v5;
  *(v9 + 96) = v14;
  *(v9 + 112) = v13;

  return sub_181D04D28(v10, v11);
}

uint64_t HTTPRequest.PseudoHeaderFields.authority.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v13 = *(a1 + 5);
  v14 = *(a1 + 3);
  if (v3)
  {
    if (v5 != 0x69726F687475613ALL || v14 != 0xEA00000000007974)
    {
      v7 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1822C9498();

    *v2 = v9;
  }

  v10 = *(v9 + 128);
  v11 = *(v9 + 136);
  *(v9 + 128) = v4;
  *(v9 + 136) = v3;
  *(v9 + 144) = v5;
  *(v9 + 152) = v14;
  *(v9 + 168) = v13;

  return sub_181D04D28(v10, v11);
}

uint64_t HTTPRequest.PseudoHeaderFields.path.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v13 = *(a1 + 5);
  v14 = *(a1 + 3);
  if (v3)
  {
    if (v5 != 0x687461703ALL || v14 != 0xE500000000000000)
    {
      v7 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1822C9498();

    *v2 = v9;
  }

  v10 = *(v9 + 184);
  v11 = *(v9 + 192);
  *(v9 + 184) = v4;
  *(v9 + 192) = v3;
  *(v9 + 200) = v5;
  *(v9 + 208) = v14;
  *(v9 + 224) = v13;

  return sub_181D04D28(v10, v11);
}

uint64_t HTTPRequest.init(method:scheme:authority:path:headerFields:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  v38 = a1[1];
  v39 = *a1;
  v40 = *a8;
  v42 = 0u;
  if (a3)
  {
    v14 = a2;
    if (sub_181CA4798(a2, a3))
    {

      v15 = a3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
      sub_181F88C5C();
      sub_182AD30A8();
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = sub_181CA1930(v14, v15);
    v17 = v23;

    v37 = xmmword_182AE94B0;
    if (a5)
    {
LABEL_9:
      if (sub_181CA4798(a4, a5))
      {

        v24 = a5;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();
        a4 = 0;
        v24 = 0xE000000000000000;
      }

      v18 = sub_181CA1930(a4, v24);
      v19 = v25;

      v42 = xmmword_182AE94A0;
      if (a7)
      {
        goto LABEL_13;
      }

LABEL_6:
      v20 = 0;
      v21 = 0;
      v22 = 0uLL;
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v37 = 0uLL;
    if (a5)
    {
      goto LABEL_9;
    }
  }

  v18 = 0;
  v19 = 0;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_13:
  if (sub_181CA4798(a6, a7))
  {

    v26 = a7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
    sub_181F88C5C();
    sub_182AD30A8();
    a6 = 0;
    v26 = 0xE000000000000000;
  }

  v20 = sub_181CA1930(a6, v26);
  v21 = v27;

  v22 = xmmword_182AE94C0;
LABEL_17:
  v36 = v22;
  type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
  v28 = swift_allocObject();
  *(v28 + 128) = 0u;
  *(v28 + 144) = 0u;
  *(v28 + 160) = 0u;
  *(v28 + 176) = 0u;
  *(v28 + 192) = 0u;
  *(v28 + 208) = 0u;
  *(v28 + 224) = 0u;
  *(v28 + 240) = 0u;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0;
  *(v28 + 16) = 0x646F6874656D3ALL;
  *(v28 + 24) = 0xE700000000000000;
  *(v28 + 32) = 0x646F6874656D3ALL;
  *(v28 + 40) = 0xE700000000000000;
  *(v28 + 48) = 0;
  *(v28 + 56) = v39;
  *(v28 + 64) = v38;
  *(v28 + 88) = v37;
  *(v28 + 72) = v37;
  *(v28 + 104) = 0;
  *(v28 + 112) = v16;
  *(v28 + 120) = v17;
  sub_181D04D28(0, 0);
  v29 = *(v28 + 128);
  v30 = *(v28 + 136);
  *(v28 + 128) = v42;
  *(v28 + 144) = v42;
  *(v28 + 160) = 0;
  *(v28 + 168) = v18;
  *(v28 + 176) = v19;
  sub_181D04D28(v29, v30);
  v31 = *(v28 + 184);
  v32 = *(v28 + 192);
  *(v28 + 184) = v36;
  *(v28 + 200) = v36;
  *(v28 + 216) = 0;
  *(v28 + 224) = v20;
  *(v28 + 232) = v21;
  sub_181D04D28(v31, v32);
  v33 = *(v28 + 240);
  v34 = *(v28 + 248);
  *(v28 + 240) = 0u;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0;
  result = sub_181D04D28(v33, v34);
  *a9 = v28;
  a9[1] = v40;
  return result;
}

uint64_t HTTPRequest.PseudoHeaderFields.method.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v2 = *(*v1 + 24);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 64);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
}

uint64_t HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 264);
  v6 = *(*v1 + 272);
  v7 = *(*v1 + 280);
  v8 = *(*v1 + 288);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_181F887D0(v2, v3);
}

uint64_t HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v13 = *(a1 + 5);
  v14 = *(a1 + 3);
  if (v3)
  {
    if (v5 != 0x6F636F746F72703ALL || v14 != 0xE90000000000006CLL)
    {
      v7 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1822C9498();

    *v2 = v9;
  }

  v10 = *(v9 + 240);
  v11 = *(v9 + 248);
  *(v9 + 240) = v4;
  *(v9 + 248) = v3;
  *(v9 + 256) = v5;
  *(v9 + 264) = v14;
  *(v9 + 280) = v13;

  return sub_181D04D28(v10, v11);
}

unint64_t HTTPRequest.scheme.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[9];
  v4 = v1[14];
  v5 = v1[15];
  if (sub_181CA4798(v4, v5))
  {
  }

  else
  {
    sub_181F887D0(v3, v2);
    v6 = sub_182287700(v4, v5);
    sub_181D04D28(v3, v2);
    return v6;
  }

  return v4;
}

uint64_t HTTPRequest.method.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  v7 = *(*v1 + 32);
  v6 = *(*v1 + 40);
  v8 = *(*v1 + 48);

  v10[0] = v5;
  v10[1] = v4;
  v10[2] = v7;
  v10[3] = v6;
  v11 = v8;
  v12 = v2;
  v13 = v3;
  return HTTPRequest.PseudoHeaderFields.method.setter(v10);
}

uint64_t HTTPRequest.extendedConnectProtocol.setter(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *v2;
    v6 = *(*v2 + 248);
    if (v6)
    {
      v21 = v5[30];
      v7 = v5[32];
      v8 = v5[33];
      v9 = v5[34];
      if (sub_181CA4798(a1, a2))
      {
        sub_181F887D0(v21, v6);
      }

      else
      {
        *&v22 = v4;
        *(&v22 + 1) = v3;
        *&v23 = sub_1822876F4;
        *(&v23 + 1) = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_181F887D0(v21, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v18 = sub_181CA1930(v4, v3);
      v20 = v19;

      *&v22 = v21;
      *(&v22 + 1) = v6;
      *&v23 = v7;
      *(&v23 + 1) = v8;
      v24 = v9;
      v25 = v18;
      v26 = v20;
    }

    else
    {
      if ((sub_181CA4798(a1, a2) & 1) == 0)
      {
        *&v22 = v4;
        *(&v22 + 1) = v3;
        *&v23 = sub_1822876F4;
        *(&v23 + 1) = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v15 = sub_181CA1930(v4, v3);
      v17 = v16;

      v22 = xmmword_182AF58C0;
      v23 = xmmword_182AF58C0;
      v24 = 0;
      v25 = v15;
      v26 = v17;
    }

    return HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.setter(&v22);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1822C9498();

      *v2 = v11;
    }

    v12 = *(v11 + 240);
    v13 = *(v11 + 248);
    *(v11 + 240) = 0u;
    *(v11 + 256) = 0u;
    *(v11 + 272) = 0u;
    *(v11 + 288) = 0;

    return sub_181D04D28(v12, v13);
  }
}

uint64_t HTTPRequest.PseudoHeaderFields.method.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = a1[5];
  v9 = a1[6];
  if (v5 != 0x646F6874656D3ALL || v6 != 0xE700000000000000)
  {
    v11 = sub_182AD4268();
    result = swift_bridgeObjectRelease_n();
    if (v11)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  result = swift_bridgeObjectRelease_n();
LABEL_8:
  v13 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  result = sub_181CA3274(v8, v9);
  if ((result & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1822C9498();

    *v2 = v15;
  }

  *(v15 + 16) = v3;
  *(v15 + 24) = v4;
  *(v15 + 32) = v5;
  *(v15 + 40) = v6;
  *(v15 + 48) = v7;
  *(v15 + 56) = v8;
  *(v15 + 64) = v9;
}

uint64_t sub_1822C8708()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 5522759 && v2 == 0xE300000000000000;
  if (v3 || (sub_182AD4268() & 1) != 0)
  {
    return 1;
  }

  v4 = v1 == 1145128264 && v2 == 0xE400000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0 || v1 == 0x534E4F4954504FLL && v2 == 0xE700000000000000 || (sub_182AD4268() & 1) != 0 || v1 == 0x5952455551 && v2 == 0xE500000000000000)
  {
    return 1;
  }

  return sub_182AD4268();
}

Network::HTTPRequest::Method_optional __swiftcall HTTPRequest.Method.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = HIBYTE(rawValue._object) & 0xF;
  if ((rawValue._object & 0x2000000000000000) == 0)
  {
    v4 = rawValue._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (countAndFlagsBits = rawValue._countAndFlagsBits, v6 = sub_181CA3274(rawValue._countAndFlagsBits, rawValue._object), (v6 & 1) != 0))
  {
    *v3 = countAndFlagsBits;
    v3[1] = object;
  }

  else
  {

    *v3 = 0;
    v3[1] = 0;
  }

  result.value.rawValue._object = v7;
  result.value.rawValue._countAndFlagsBits = v6;
  result.is_nil = v8;
  return result;
}

uint64_t HTTPRequest.Method.description.getter()
{
  v1 = *v0;

  return v1;
}

double sub_1822C88C4@<D0>(Swift::String *a1@<X0>, _OWORD *a2@<X8>)
{
  HTTPRequest.Method.init(rawValue:)(*a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1822C8904@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1822C8914(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *(*a2 + 16);
  v4 = *(*a2 + 24);
  v7 = *(*a2 + 32);
  v6 = *(*a2 + 40);
  v8 = *(*a2 + 48);

  v10[0] = v5;
  v10[1] = v4;
  v10[2] = v7;
  v10[3] = v6;
  v11 = v8;
  v12 = v3;
  v13 = v2;
  return HTTPRequest.PseudoHeaderFields.method.setter(v10);
}

uint64_t (*HTTPRequest.method.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v3 + 64);
  *a1 = *(v3 + 56);
  a1[1] = v4;

  return sub_1822C89EC;
}

uint64_t sub_1822C89EC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v8 = *(v4 + 32);
  v7 = *(v4 + 40);
  v9 = *(v4 + 48);
  if (a2)
  {

    v11 = v6;
    v12 = v5;
    v13 = v8;
    v14 = v7;
    v15 = v9;
    v16 = v3;
    v17 = v2;
    HTTPRequest.PseudoHeaderFields.method.setter(&v11);
  }

  else
  {

    v11 = v6;
    v12 = v5;
    v13 = v8;
    v14 = v7;
    v15 = v9;
    v16 = v3;
    v17 = v2;
    return HTTPRequest.PseudoHeaderFields.method.setter(&v11);
  }
}

uint64_t sub_1822C8AC8@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 80);
  if (v4)
  {
    v5 = v3[9];
    v6 = v3[14];
    v7 = v3[15];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v8 = sub_182287700(v6, v7);
      v10 = v9;
      result = sub_181D04D28(v5, v4);
      v6 = v8;
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t (*HTTPRequest.scheme.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  if (v4)
  {
    v5 = v3[9];
    v6 = v3[14];
    v7 = v3[15];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v8 = sub_182287700(v6, v7);
      v10 = v9;
      sub_181D04D28(v5, v4);
      v6 = v8;
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  return sub_1822C8CC8;
}

unint64_t HTTPRequest.authority.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[16];
  v4 = v1[21];
  v5 = v1[22];
  if (sub_181CA4798(v4, v5))
  {
  }

  else
  {
    sub_181F887D0(v3, v2);
    v6 = sub_182287700(v4, v5);
    sub_181D04D28(v3, v2);
    return v6;
  }

  return v4;
}

uint64_t sub_1822C8DD0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 136);
  if (v4)
  {
    v5 = v3[16];
    v6 = v3[21];
    v7 = v3[22];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v8 = sub_182287700(v6, v7);
      v10 = v9;
      result = sub_181D04D28(v5, v4);
      v6 = v8;
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t (*HTTPRequest.authority.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(*v1 + 136);
  if (v4)
  {
    v5 = v3[16];
    v6 = v3[21];
    v7 = v3[22];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v8 = sub_182287700(v6, v7);
      v10 = v9;
      sub_181D04D28(v5, v4);
      v6 = v8;
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  return sub_1822C8FD0;
}

uint64_t sub_1822C8FE8@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 192);
  if (v4)
  {
    v5 = v3[23];
    v6 = v3[28];
    v7 = v3[29];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v8 = sub_182287700(v6, v7);
      v10 = v9;
      result = sub_181D04D28(v5, v4);
      v6 = v8;
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t (*HTTPRequest.path.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(*v1 + 192);
  if (v4)
  {
    v5 = v3[23];
    v6 = v3[28];
    v7 = v3[29];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v8 = sub_182287700(v6, v7);
      v10 = v9;
      sub_181D04D28(v5, v4);
      v6 = v8;
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  return sub_1822C91E8;
}

uint64_t sub_1822C9200@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 248);
  if (v4)
  {
    v5 = v3[30];
    v6 = v3[35];
    v7 = v3[36];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v8 = sub_182287700(v6, v7);
      v10 = v9;
      result = sub_181D04D28(v5, v4);
      v6 = v8;
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t (*HTTPRequest.extendedConnectProtocol.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(*v1 + 248);
  if (v4)
  {
    v5 = v3[30];
    v6 = v3[35];
    v7 = v3[36];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v8 = sub_182287700(v6, v7);
      v10 = v9;
      sub_181D04D28(v5, v4);
      v6 = v8;
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  return sub_1822C9400;
}

uint64_t sub_1822C9418(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t sub_1822C9498()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v20 = *(v1 + 48);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v23 = *(v1 + 72);
  v19 = *(v1 + 56);
  v17 = *(v1 + 96);
  v18 = *(v1 + 88);
  v7 = *(v1 + 112);
  v16 = *(v1 + 104);
  v21 = *(v1 + 32);
  v22 = *(v1 + 120);
  v29 = *(v1 + 128);
  v27 = *(v1 + 152);
  v28 = *(v1 + 136);
  v25 = *(v1 + 168);
  v26 = *(v1 + 160);
  v24 = *(v1 + 176);
  v32 = *(v1 + 184);
  v30 = *(v1 + 144);
  v31 = *(v1 + 192);
  v33 = *(v1 + 200);
  v41 = *(v1 + 208);
  v39 = *(v1 + 216);
  v37 = *(v1 + 224);
  v34 = *(v1 + 240);
  v35 = *(v1 + 232);
  v42 = *(v1 + 248);
  v40 = *(v1 + 256);
  v38 = *(v1 + 264);
  v36 = *(v1 + 272);
  v43 = *(v1 + 288);
  v44 = *(v1 + 280);
  v8 = swift_allocObject();
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0u;
  *(v8 + 256) = 0u;
  *(v8 + 272) = 0u;
  *(v8 + 288) = 0;
  *(v8 + 16) = v2;
  *(v8 + 24) = v3;
  *(v8 + 32) = v21;
  *(v8 + 40) = v4;
  *(v8 + 48) = v20;
  *(v8 + 56) = v19;
  *(v8 + 64) = v5;

  sub_181F887D0(v23, v6);
  sub_181F887D0(v29, v28);
  sub_181F887D0(v32, v31);
  sub_181F887D0(v34, v42);
  *(v8 + 72) = v23;
  *(v8 + 80) = v6;
  *(v8 + 88) = v18;
  *(v8 + 96) = v17;
  *(v8 + 104) = v16;
  *(v8 + 112) = v7;
  *(v8 + 120) = v22;
  sub_181D04D28(0, 0);
  v9 = *(v8 + 128);
  v10 = *(v8 + 136);
  *(v8 + 128) = v29;
  *(v8 + 136) = v28;
  *(v8 + 144) = v30;
  *(v8 + 152) = v27;
  *(v8 + 160) = v26;
  *(v8 + 168) = v25;
  *(v8 + 176) = v24;
  sub_181D04D28(v9, v10);
  v11 = *(v8 + 184);
  v12 = *(v8 + 192);
  *(v8 + 184) = v32;
  *(v8 + 192) = v31;
  *(v8 + 200) = v33;
  *(v8 + 208) = v41;
  *(v8 + 216) = v39;
  *(v8 + 224) = v37;
  *(v8 + 232) = v35;
  sub_181D04D28(v11, v12);
  v13 = *(v8 + 240);
  v14 = *(v8 + 248);
  *(v8 + 240) = v34;
  *(v8 + 248) = v42;
  *(v8 + 256) = v40;
  *(v8 + 264) = v38;
  *(v8 + 272) = v36;
  *(v8 + 280) = v44;
  *(v8 + 288) = v43;
  sub_181D04D28(v13, v14);
  return v8;
}

uint64_t sub_1822C9774()
{

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  v1 = v0[10];
  if (v1)
  {
    v2 = v0[9];
    sub_182AD4518();

    sub_182AD30E8();
    sub_182AD4518();
    sub_182AD30E8();
    sub_181D04D28(v2, v1);
    v3 = v0[17];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_182AD4518();
    v3 = v0[17];
    if (v3)
    {
LABEL_3:
      v4 = v0[16];
      sub_182AD4518();

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();
      sub_181D04D28(v4, v3);
      v5 = v0[24];
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_182AD4518();
      v7 = v0[31];
      if (v7)
      {
        goto LABEL_5;
      }

      return sub_182AD4518();
    }
  }

  sub_182AD4518();
  v5 = v0[24];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v0[23];
  sub_182AD4518();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
  sub_181D04D28(v6, v5);
  v7 = v0[31];
  if (!v7)
  {
    return sub_182AD4518();
  }

LABEL_5:
  v8 = v0[30];
  sub_182AD4518();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  return sub_181D04D28(v8, v7);
}

uint64_t sub_1822C9A80(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;

  return HTTPRequest.PseudoHeaderFields.method.setter(v8);
}

void (*HTTPRequest.PseudoHeaderFields.method.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  v7 = *(*v1 + 16);
  v6 = *(*v1 + 24);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 40);
  v10 = *(v5 + 48);
  v11 = *(v5 + 56);
  v12 = *(v5 + 64);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  *(v4 + 48) = v12;

  return sub_1822C9B9C;
}

void sub_1822C9B9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(v2 + 32);
  v8 = v2[5];
  v9 = v2[6];
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = v5;
  v10[3] = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (a2)
  {

    HTTPRequest.PseudoHeaderFields.method.setter(v10);
  }

  else
  {
    HTTPRequest.PseudoHeaderFields.method.setter(v10);
  }

  free(v2);
}

uint64_t sub_1822C9C60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  v8 = v2[14];
  v9 = v2[15];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return sub_181F887D0(v3, v4);
}

void (*HTTPRequest.PseudoHeaderFields.scheme.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 104);
  v10 = *(*v1 + 112);
  v11 = *(*v1 + 120);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  sub_181F887D0(v5, v6);
  return sub_1822C9D20;
}

uint64_t sub_1822C9D38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = v2[17];
  v5 = v2[18];
  v6 = v2[19];
  v7 = v2[20];
  v8 = v2[21];
  v9 = v2[22];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return sub_181F887D0(v3, v4);
}

void (*HTTPRequest.PseudoHeaderFields.authority.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 136);
  v7 = *(*v1 + 144);
  v8 = *(*v1 + 152);
  v9 = *(*v1 + 160);
  v10 = *(*v1 + 168);
  v11 = *(*v1 + 176);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  sub_181F887D0(v5, v6);
  return sub_1822C9DF8;
}

uint64_t sub_1822C9E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  v4 = v2[24];
  v5 = v2[25];
  v6 = v2[26];
  v7 = v2[27];
  v8 = v2[28];
  v9 = v2[29];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return sub_181F887D0(v3, v4);
}

void (*HTTPRequest.PseudoHeaderFields.path.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 192);
  v7 = *(*v1 + 200);
  v8 = *(*v1 + 208);
  v9 = *(*v1 + 216);
  v10 = *(*v1 + 224);
  v11 = *(*v1 + 232);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  sub_181F887D0(v5, v6);
  return sub_1822C9ED0;
}

uint64_t sub_1822C9EE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 240);
  v4 = v2[31];
  v5 = v2[32];
  v6 = v2[33];
  v7 = v2[34];
  v8 = v2[35];
  v9 = v2[36];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return sub_181F887D0(v3, v4);
}

uint64_t sub_1822C9F10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v13[0] = *a1;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  sub_181F887D0(v13[0], v6);
  return a5(v13);
}

void (*HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(*v1 + 240);
  v6 = *(*v1 + 248);
  v7 = *(*v1 + 256);
  v8 = *(*v1 + 264);
  v9 = *(*v1 + 272);
  v10 = *(*v1 + 280);
  v11 = *(*v1 + 288);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  sub_181F887D0(v5, v6);
  return sub_1822CA008;
}

void sub_1822CA020(uint64_t **a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v6 = **a1;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = v12;
  if (a2)
  {
    sub_181F887D0(v6, v7);
    a3(v13);
    sub_181D04D28(*v5, v5[1]);
  }

  else
  {
    a3(v13);
  }

  free(v5);
}

uint64_t HTTPRequest.PseudoHeaderFields.hashValue.getter()
{
  sub_182AD44E8();
  sub_1822C9774();
  return sub_182AD4558();
}

uint64_t sub_1822CA148()
{
  sub_182AD44E8();
  sub_1822C9774();
  return sub_182AD4558();
}

uint64_t sub_1822CA18C()
{
  sub_182AD44E8();
  sub_1822C9774();
  return sub_182AD4558();
}

uint64_t HTTPRequest.pseudoHeaderFields.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t HTTPRequest.headerFields.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t HTTPRequest.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_1822C9774();
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v5 += 64;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t HTTPRequest.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_182AD44E8();
  sub_1822C9774();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v4 += 64;
      --v3;
    }

    while (v3);
  }

  return sub_182AD4558();
}

uint64_t sub_1822CA4D4()
{
  sub_182AD44E8();
  sub_1822C9774();
  sub_182084F0C();
  return sub_182AD4558();
}

uint64_t HTTPRequest.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);

  MEMORY[0x1865D9CA0](v2, v3);

  MEMORY[0x1865D9CA0](8233, 0xE200000000000000);
  v4 = v1[10];
  if (v4)
  {
    v5 = v1[9];
    v6 = v1[14];
    v7 = v1[15];
    if (sub_181CA4798(v6, v7))
    {
    }

    else
    {
      sub_181F887D0(v5, v4);
      v25 = sub_182287700(v6, v7);
      v10 = v9;
      sub_181D04D28(v5, v4);
      v6 = v25;
      v7 = v10;
    }

    MEMORY[0x1865D9CA0](3092282, 0xE300000000000000);

    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v8, v7);

  v11 = v1[17];
  if (v11)
  {
    v12 = v1[16];
    v13 = v1[21];
    v14 = v1[22];
    if (sub_181CA4798(v13, v14))
    {
    }

    else
    {
      sub_181F887D0(v12, v11);
      v26 = sub_182287700(v13, v14);
      v16 = v15;
      sub_181D04D28(v12, v11);
      v13 = v26;
      v14 = v16;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v13, v14);

  v17 = v1[24];
  if (v17)
  {
    v18 = v1[23];
    v19 = v1[28];
    v20 = v1[29];
    if (sub_181CA4798(v19, v20))
    {
    }

    else
    {
      sub_181F887D0(v18, v17);
      v21 = sub_182287700(v19, v20);
      v23 = v22;
      sub_181D04D28(v18, v17);
      v19 = v21;
      v20 = v23;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v19, v20);

  return 40;
}

uint64_t HTTPRequest.PseudoHeaderFields.encode(to:)(void *a1)
{
  v3 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4608();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  sub_18208C37C();

  sub_182AD4208();

  if (!v2)
  {
    if (v3[10])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_182AD4208();
    }

    if (v3[17])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_182AD4208();
    }

    if (v3[24])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_182AD4208();
    }

    if (v3[31])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_182AD4208();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t HTTPRequest.PseudoHeaderFields.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  __swift_project_boxed_opaque_existential_1(v83, v84);
  if (sub_182AD41E8())
  {
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
LABEL_4:
    sub_181D04D28(v9, v8);
    sub_181D04D28(v7, v6);
    sub_181D04D28(v5, v67);
    sub_181D04D28(v69, v70);
    sub_182AD3C98();
    swift_allocError();
    sub_182AD3C68();
    goto LABEL_5;
  }

  v38 = v3;
  v45 = 0;
  v46 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v60 = 0;
  v61 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v69 = 0;
  v70 = 0;
  v66 = 0;
  v67 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v68 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v51 = 0;
LABEL_8:
  while (2)
  {
    v71 = v12;
    v72 = v11;
    v73 = v10;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
          sub_18208C3D0();
          sub_182AD41D8();
          v85 = v77;
          v13 = v81;
          if (v78 != 0x646F6874656D3ALL || v79 != 0xE700000000000000)
          {
            break;
          }

          swift_bridgeObjectRelease_n();
LABEL_30:
          if (v60)
          {
            sub_181D04D28(v47, v60);
            sub_181D04D28(v39, v51);
            sub_181D04D28(v52, v53);
            sub_181D04D28(v59, v67);
            sub_181D04D28(v69, v70);
LABEL_55:
            sub_182AD3C98();
            swift_allocError();
            goto LABEL_70;
          }

          __swift_project_boxed_opaque_existential_1(v83, v84);
          v21 = sub_182AD41E8();
          v45 = v81;
          v46 = v82;
          v49 = v79;
          v50 = v80;
          v48 = v78;
          v60 = v85;
          v47 = v76;
          if (v21)
          {
            v47 = v76;
            v48 = v78;
            v60 = v85;
            v49 = v79;
            v50 = v80;
            v45 = v81;
            v46 = v82;
LABEL_56:
            v11 = v72;
            v10 = v73;
            v12 = v71;
            goto LABEL_57;
          }
        }

        v15 = sub_182AD4268();
        swift_bridgeObjectRelease_n();
        if (v15)
        {
          goto LABEL_30;
        }

        if (v78 != 0x656D656863733ALL || v79 != 0xE700000000000000)
        {
          break;
        }

        swift_bridgeObjectRelease_n();
LABEL_34:
        if (v70)
        {
          sub_181D04D28(v69, v70);
          sub_181D04D28(v39, v51);
          sub_181D04D28(v52, v53);
          sub_181D04D28(v59, v67);
          sub_181D04D28(v47, v60);
          goto LABEL_55;
        }

        __swift_project_boxed_opaque_existential_1(v83, v84);
        v22 = sub_182AD41E8();
        v64 = v81;
        v65 = v82;
        v62 = v79;
        v63 = v80;
        v61 = v78;
        v69 = v76;
        v70 = v85;
        if (v22)
        {
          v69 = v76;
          v70 = v85;
          v61 = v78;
          v62 = v79;
          v63 = v80;
          v64 = v81;
          v65 = v82;
          goto LABEL_56;
        }
      }

      v16 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v16)
      {
        goto LABEL_34;
      }

      if (v78 == 0x69726F687475613ALL && v79 == 0xEA00000000007974)
      {
        swift_bridgeObjectRelease_n();
LABEL_38:
        if (!v67)
        {
          __swift_project_boxed_opaque_existential_1(v83, v84);
          v23 = sub_182AD41E8();
          v66 = v82;
          v10 = v81;
          v11 = v80;
          v12 = v79;
          v68 = v78;
          v67 = v85;
          v59 = v76;
          if ((v23 & 1) == 0)
          {
            goto LABEL_8;
          }

          v59 = v76;
          v67 = v85;
          v68 = v78;
          v12 = v79;
          v11 = v80;
          v10 = v81;
          v66 = v82;
          goto LABEL_57;
        }

        sub_181D04D28(v59, v67);
        sub_181D04D28(v39, v51);
        sub_181D04D28(v52, v53);
        sub_181D04D28(v69, v70);
        sub_181D04D28(v47, v60);
        sub_182AD3C98();
        swift_allocError();
        goto LABEL_70;
      }

      v17 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v17)
      {
        goto LABEL_38;
      }

      if (v78 == 0x687461703ALL && v79 == 0xE500000000000000)
      {
        swift_bridgeObjectRelease_n();
LABEL_42:
        if (!v53)
        {
          __swift_project_boxed_opaque_existential_1(v83, v84);
          v24 = sub_182AD41E8();
          v57 = v81;
          v58 = v82;
          v55 = v79;
          v56 = v80;
          v54 = v78;
          v52 = v76;
          v53 = v85;
          v11 = v72;
          v10 = v73;
          v12 = v71;
          if ((v24 & 1) == 0)
          {
            goto LABEL_8;
          }

          v52 = v76;
          v53 = v85;
          v54 = v78;
          v55 = v79;
          v56 = v80;
          v57 = v81;
          v58 = v82;
          goto LABEL_57;
        }

        sub_181D04D28(v52, v53);
        sub_181D04D28(v39, v51);
        sub_181D04D28(v59, v67);
        sub_181D04D28(v69, v70);
        sub_181D04D28(v47, v60);
        sub_182AD3C98();
        swift_allocError();
LABEL_70:
        sub_182AD3C68();
LABEL_71:
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1(v83);
        v3 = v38;
        return __swift_destroy_boxed_opaque_existential_1(v3);
      }

      v18 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v18)
      {
        goto LABEL_42;
      }

      if (v78 == 0x6F636F746F72703ALL && v79 == 0xE90000000000006CLL)
      {
        break;
      }

      v19 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v19)
      {
        goto LABEL_46;
      }

      v20 = v85;
      if ((sub_181CBD984(v76, v85) & 0x1FF) != 0x3A)
      {
        sub_181D04D28(v39, v51);
        sub_181D04D28(v52, v53);
        sub_181D04D28(v59, v67);
        sub_181D04D28(v69, v70);
        sub_181D04D28(v47, v60);
        sub_182AD3BA8();

        v75 = v20;

        MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
        if (sub_181CA4798(v81, v82))
        {

          v26 = v82;
        }

        else
        {
          v13 = sub_182287700(v81, v82);
          v26 = v27;
        }

        MEMORY[0x1865D9CA0](v13, v26);

        MEMORY[0x1865D9CA0](v76, v75);

        MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BE0C90);
        sub_182AD3C98();
        swift_allocError();
        sub_182AD3C68();

        goto LABEL_71;
      }

      __swift_project_boxed_opaque_existential_1(v83, v84);
      if (sub_182AD41E8())
      {
        goto LABEL_56;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_46:
    if (v51)
    {
      sub_181D04D28(v39, v51);
      sub_181D04D28(v52, v53);
      sub_181D04D28(v59, v67);
      sub_181D04D28(v69, v70);
      sub_181D04D28(v47, v60);
      sub_182AD3C98();
      swift_allocError();
      goto LABEL_70;
    }

    __swift_project_boxed_opaque_existential_1(v83, v84);
    v25 = sub_182AD41E8();
    v43 = v81;
    v44 = v82;
    v41 = v79;
    v42 = v80;
    v40 = v78;
    v51 = v85;
    v39 = v76;
    v11 = v72;
    v10 = v73;
    v12 = v71;
    if ((v25 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_57:
  v74 = v10;
  if (!v60)
  {
    v3 = v38;
    v5 = v59;
    v7 = v52;
    v6 = v53;
    v9 = v39;
    v8 = v51;
    goto LABEL_4;
  }

  v28 = v12;
  v29 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v29 = v45 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v38;
  if (v29)
  {
    if (sub_181CA3274(v45, v46))
    {
      type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
      v30 = swift_allocObject();
      *(v30 + 128) = 0u;
      *(v30 + 144) = 0u;
      *(v30 + 160) = 0u;
      *(v30 + 176) = 0u;
      *(v30 + 192) = 0u;
      *(v30 + 208) = 0u;
      *(v30 + 224) = 0u;
      *(v30 + 240) = 0u;
      *(v30 + 256) = 0u;
      *(v30 + 272) = 0u;
      *(v30 + 288) = 0;
      *(v30 + 16) = v47;
      *(v30 + 24) = v60;
      *(v30 + 32) = v48;
      *(v30 + 40) = v49;
      *(v30 + 48) = v50;
      *(v30 + 56) = v45;
      *(v30 + 64) = v46;
      *(v30 + 72) = v69;
      *(v30 + 80) = v70;
      *(v30 + 88) = v61;
      *(v30 + 96) = v62;
      *(v30 + 104) = v63;
      *(v30 + 112) = v64;
      *(v30 + 120) = v65;
      sub_181D04D28(0, 0);
      v31 = *(v30 + 128);
      v32 = *(v30 + 136);
      *(v30 + 128) = v59;
      *(v30 + 136) = v67;
      *(v30 + 144) = v68;
      *(v30 + 152) = v28;
      *(v30 + 160) = v11;
      *(v30 + 168) = v74;
      *(v30 + 176) = v66;
      sub_181D04D28(v31, v32);
      v33 = *(v30 + 184);
      v34 = *(v30 + 192);
      *(v30 + 184) = v52;
      *(v30 + 192) = v53;
      *(v30 + 200) = v54;
      *(v30 + 208) = v55;
      *(v30 + 216) = v56;
      *(v30 + 224) = v57;
      *(v30 + 232) = v58;
      sub_181D04D28(v33, v34);
      v35 = *(v30 + 240);
      v36 = *(v30 + 248);
      *(v30 + 240) = v39;
      *(v30 + 248) = v51;
      *(v30 + 256) = v40;
      *(v30 + 264) = v41;
      *(v30 + 272) = v42;
      *(v30 + 280) = v43;
      *(v30 + 288) = v44;
      sub_181D04D28(v35, v36);
      *a2 = v30;
      goto LABEL_6;
    }

    sub_181D04D28(v39, v51);
    sub_181D04D28(v52, v53);
    sub_181D04D28(v59, v67);
    sub_181D04D28(v69, v70);
  }

  else
  {

    sub_181D04D28(v39, v51);
    sub_181D04D28(v52, v53);
    sub_181D04D28(v59, v67);
    sub_181D04D28(v69, v70);
  }

  sub_182AD3BA8();

  MEMORY[0x1865D9CA0](v45, v46);
  sub_181D04D28(v47, v60);

  MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BE4CB0);
  sub_182AD3C98();
  swift_allocError();
  sub_182AD3C68();

LABEL_5:
  swift_willThrow();
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v83);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1822CBA1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6946726564616568;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x8000000182BD45A0;
  }

  else
  {
    v4 = 0xEC00000073646C65;
  }

  if (*a2)
  {
    v5 = 0x6946726564616568;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = 0xEC00000073646C65;
  }

  else
  {
    v6 = 0x8000000182BD45A0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_182AD4268();
  }

  return v8 & 1;
}

uint64_t sub_1822CBAD0()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1822CBB60()
{
  sub_182AD30E8();
}

uint64_t sub_1822CBBDC()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1822CBC68@<X0>(char *a1@<X8>)
{
  v2 = sub_182AD3F48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1822CBCC8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000182BD45A0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x6946726564616568;
    v2 = 0xEC00000073646C65;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1822CBD14()
{
  if (*v0)
  {
    return 0x6946726564616568;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1822CBD5C@<X0>(char *a1@<X8>)
{
  v2 = sub_182AD3F48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1822CBDC0(uint64_t a1)
{
  v2 = sub_1822CD568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822CBDFC(uint64_t a1)
{
  v2 = sub_1822CD568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HTTPRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C018);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822CD568();

  sub_182AD4638();
  v12 = v8;
  v11 = 0;
  sub_1822CD5BC();
  sub_182AD4118();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_182228FF8();

    sub_182AD4118();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HTTPRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822CD568();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = 0;
  sub_1822CD610();
  sub_182AD3FF8();
  v9 = v14;
  v13 = 1;
  sub_1822290F4();
  sub_182AD3FF8();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1822CC234(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (v4 != v7)
    {
LABEL_43:
      v11 = 0;
      return v11 & 1;
    }

LABEL_9:
    v12 = v5 == v8 && v6 == v9;
    if (!v12 && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_43;
    }

    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    v156 = *(a1 + 96);
    v17 = *(a1 + 104);
    v16 = *(a1 + 112);
    v18 = *(a1 + 120);
    v19 = *(a2 + 72);
    v20 = *(a2 + 96);
    v153 = *(a2 + 104);
    v21 = *(a2 + 120);
    v150 = *(a2 + 112);
    if (v14)
    {
      v128 = *(a2 + 96);
      v147 = *(a2 + 80);
      v131 = *(a2 + 88);
      if (!v147)
      {
LABEL_35:
        v39 = v19;
        v40 = v16;
        v41 = v18;
        v42 = v13;
        sub_181F887D0(v13, v14);
        v126 = v39;
        v43 = v39;
        v29 = v21;
        v44 = v153;
        v45 = v15;
        v46 = v150;
        sub_181F887D0(v43, 0);
        sub_181F887D0(v42, v14);

        v47 = v128;

        v48 = v131;
LABEL_40:
        v159 = v42;
        v160 = v14;
        v161 = v45;
        v162 = v156;
        v163 = v17;
        v164 = v40;
        v165 = v41;
        v166 = v126;
        v167 = v147;
        v168 = v48;
        v169 = v47;
        v170 = v44;
        v171 = v46;
        goto LABEL_41;
      }

      v138 = *(a1 + 80);
      v142 = *(a1 + 112);
      v22 = *(a1 + 104);
      v134 = *(a1 + 72);
      if (v15 != *(a2 + 88) || v156 != v20)
      {
        v23 = *(a1 + 72);
        v24 = *(a1 + 120);
        v25 = sub_182AD4268();
        v18 = v24;
        v13 = v23;
        if ((v25 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v22 != v153)
      {
        goto LABEL_36;
      }

      if (v142 != v150 || v18 != v21)
      {
        v55 = v14;
        v56 = v13;
        v122 = sub_182AD4268();
        sub_181F887D0(v56, v55);
        sub_181F887D0(v19, v147);
        sub_181F887D0(v134, v138);
        sub_181D04D28(v19, v147);

        sub_181D04D28(v134, v138);
        if ((v122 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_26;
      }

      v26 = v13;
      sub_181F887D0(v13, v138);
      sub_181F887D0(v19, v147);
      sub_181F887D0(v26, v138);
      sub_181D04D28(v19, v147);

      v27 = v134;
      v28 = v138;
    }

    else
    {
      v29 = *(a2 + 120);
      v135 = *(a1 + 72);
      v30 = *(a2 + 88);
      v31 = *(a2 + 80);
      v143 = *(a1 + 112);
      v125 = *(a1 + 120);
      sub_181F887D0(v13, 0);
      if (v31)
      {
        goto LABEL_39;
      }

      sub_181F887D0(v19, 0);
      v28 = 0;
      v27 = v135;
    }

    sub_181D04D28(v27, v28);
LABEL_26:
    v13 = *(a1 + 128);
    v14 = *(a1 + 136);
    v15 = *(a1 + 144);
    v156 = *(a1 + 152);
    v17 = *(a1 + 160);
    v16 = *(a1 + 168);
    v18 = *(a1 + 176);
    v19 = *(a2 + 128);
    v20 = *(a2 + 152);
    v153 = *(a2 + 160);
    v21 = *(a2 + 176);
    v150 = *(a2 + 168);
    if (v14)
    {
      v128 = *(a2 + 152);
      v147 = *(a2 + 136);
      v131 = *(a2 + 144);
      if (v147)
      {
        v138 = *(a1 + 136);
        v144 = *(a1 + 168);
        v32 = *(a1 + 160);
        v134 = *(a1 + 128);
        if (v15 == *(a2 + 144) && v156 == v20 || (v33 = *(a1 + 128), v34 = *(a1 + 176), v35 = sub_182AD4268(), v18 = v34, v13 = v33, (v35 & 1) != 0))
        {
          if (v32 == v153)
          {
            if (v144 != v150 || v18 != v21)
            {
              v84 = v14;
              v85 = v13;
              v123 = sub_182AD4268();
              sub_181F887D0(v85, v84);
              sub_181F887D0(v19, v147);
              sub_181F887D0(v134, v138);
              sub_181D04D28(v19, v147);

              sub_181D04D28(v134, v138);
              if ((v123 & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_49;
            }

            v36 = v13;
            sub_181F887D0(v13, v138);
            sub_181F887D0(v19, v147);
            sub_181F887D0(v36, v138);
            sub_181D04D28(v19, v147);

            v37 = v134;
            v38 = v138;
LABEL_48:
            sub_181D04D28(v37, v38);
LABEL_49:
            v57 = *(a1 + 184);
            v58 = *(a1 + 192);
            v59 = *(a1 + 200);
            v157 = *(a1 + 208);
            v61 = *(a1 + 216);
            v60 = *(a1 + 224);
            v62 = *(a1 + 232);
            v63 = *(a2 + 184);
            v64 = *(a2 + 208);
            v154 = *(a2 + 216);
            v65 = *(a2 + 232);
            if (v58)
            {
              v148 = *(a2 + 192);
              v151 = *(a2 + 224);
              v136 = *(a2 + 200);
              if (v148)
              {
                v139 = *(a1 + 224);
                v145 = *(a1 + 192);
                v129 = *(a1 + 184);
                v66 = *(a1 + 216);
                if (v59 == *(a2 + 200) && v157 == v64 || (v67 = *(a1 + 184), v68 = *(a1 + 232), v69 = sub_182AD4268(), v62 = v68, v57 = v67, (v69 & 1) != 0))
                {
                  if (v66 == v154)
                  {
                    if (v139 != v151 || v62 != v65)
                    {
                      v113 = v57;
                      v124 = sub_182AD4268();
                      sub_181F887D0(v113, v58);
                      sub_181F887D0(v63, v148);
                      sub_181F887D0(v113, v58);
                      sub_181D04D28(v63, v148);

                      sub_181D04D28(v129, v58);
                      if ((v124 & 1) == 0)
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_67;
                    }

                    v70 = v57;
                    sub_181F887D0(v57, v58);
                    sub_181F887D0(v63, v148);
                    sub_181F887D0(v70, v58);
                    sub_181D04D28(v63, v148);

                    v71 = v129;
                    v72 = v58;
LABEL_66:
                    sub_181D04D28(v71, v72);
LABEL_67:
                    v90 = *(a1 + 240);
                    v91 = *(a1 + 248);
                    v93 = *(a1 + 256);
                    v92 = *(a1 + 264);
                    v95 = *(a1 + 272);
                    v94 = *(a1 + 280);
                    v158 = *(a1 + 288);
                    v96 = *(a2 + 248);
                    v98 = *(a2 + 256);
                    v97 = *(a2 + 264);
                    v99 = *(a2 + 272);
                    v100 = *(a2 + 280);
                    v152 = v90;
                    v155 = *(a2 + 288);
                    if (v91)
                    {
                      v146 = *(a2 + 240);
                      v149 = *(a2 + 280);
                      v137 = *(a2 + 248);
                      if (v96)
                      {
                        if (v93 == v98 && v92 == v97 || (v101 = v90, v102 = v94, v103 = sub_182AD4268(), v94 = v102, v90 = v101, (v103 & 1) != 0))
                        {
                          if (v95 == v99)
                          {
                            if (v94 == v100 && v158 == v155)
                            {
                              v104 = v90;
                              sub_181F887D0(v90, v91);
                              sub_181F887D0(v146, v137);
                              sub_181F887D0(v104, v91);
                              sub_181D04D28(v146, v137);
                              v11 = 1;
                            }

                            else
                            {
                              v121 = v90;
                              v11 = sub_182AD4268();
                              sub_181F887D0(v121, v91);
                              sub_181F887D0(v146, v137);
                              sub_181F887D0(v121, v91);
                              sub_181D04D28(v146, v137);
                            }

                            goto LABEL_87;
                          }

                          v117 = v90;
                          sub_181F887D0(v90, v91);
                          v118 = v137;
                          sub_181F887D0(v146, v137);
                          v119 = v117;
                          v120 = v91;
                        }

                        else
                        {
                          sub_181F887D0(v101, v91);
                          v118 = v137;
                          sub_181F887D0(v146, v137);
                          v119 = v101;
                          v120 = v91;
                        }

                        sub_181F887D0(v119, v120);
                        sub_181D04D28(v146, v118);
                        v11 = 0;
LABEL_87:

                        sub_181D04D28(v152, v91);
                        return v11 & 1;
                      }

                      v133 = v92;
                      v114 = v93;
                      v115 = *(a2 + 264);
                      v108 = v94;
                      v116 = v90;
                      sub_181F887D0(v90, v91);
                      v105 = v146;
                      v141 = v115;
                      v106 = v98;
                      v111 = v155;
                      sub_181F887D0(v146, 0);
                      v107 = v114;
                      sub_181F887D0(v116, v91);

                      v92 = v133;
                      v112 = v91;
                      v109 = v158;
                      v110 = 0;
                    }

                    else
                    {
                      v105 = *(a2 + 240);
                      v141 = v97;
                      v106 = v98;
                      v107 = v93;
                      v108 = v94;
                      v109 = v158;
                      v110 = v96;
                      sub_181F887D0(v90, 0);
                      if (!v110)
                      {
                        sub_181F887D0(v105, 0);
                        sub_181D04D28(v152, 0);
                        v11 = 1;
                        return v11 & 1;
                      }

                      v149 = v100;
                      v111 = v155;
                      sub_181F887D0(v105, v110);
                      v112 = 0;
                    }

                    v159 = v152;
                    v160 = v112;
                    v161 = v107;
                    v162 = v92;
                    v163 = v95;
                    v164 = v108;
                    v165 = v109;
                    v166 = v105;
                    v167 = v110;
                    v168 = v106;
                    v169 = v141;
                    v170 = v99;
                    v171 = v149;
                    v172 = v111;
                    goto LABEL_42;
                  }
                }

                v88 = v58;
                v89 = v57;
                sub_181F887D0(v57, v88);
                sub_181F887D0(v63, v148);
                sub_181F887D0(v89, v145);
                sub_181D04D28(v63, v148);

                v51 = v129;
                v52 = v145;
                goto LABEL_37;
              }

              v86 = *(a2 + 184);
              v78 = *(a2 + 208);
              v83 = v60;
              v81 = v62;
              v80 = v57;
              sub_181F887D0(v57, v58);
              v132 = v86;
              v87 = v86;
              v29 = v65;
              v79 = v154;
              sub_181F887D0(v87, 0);
              sub_181F887D0(v80, v58);

              v82 = v136;
            }

            else
            {
              v73 = *(a2 + 224);
              v127 = *(a2 + 232);
              v140 = *(a1 + 224);
              v74 = *(a2 + 200);
              v130 = *(a1 + 184);
              v75 = *(a2 + 192);
              v76 = *(a1 + 232);
              sub_181F887D0(v57, 0);
              if (!v75)
              {
                sub_181F887D0(v63, 0);
                v72 = 0;
                v71 = v130;
                goto LABEL_66;
              }

              v132 = v63;
              v148 = v75;
              v151 = v73;
              v77 = v75;
              v78 = v64;
              v79 = v154;
              v29 = v127;
              sub_181F887D0(v63, v77);
              v80 = v130;
              v81 = v76;
              v82 = v74;
              v83 = v140;
              v58 = 0;
            }

            v159 = v80;
            v160 = v58;
            v161 = v59;
            v162 = v157;
            v163 = v61;
            v164 = v83;
            v165 = v81;
            v166 = v132;
            v167 = v148;
            v168 = v82;
            v169 = v78;
            v170 = v79;
            v171 = v151;
LABEL_41:
            v172 = v29;
LABEL_42:
            sub_1822CD9B0(&v159);
            goto LABEL_43;
          }
        }

LABEL_36:
        v49 = v14;
        v50 = v13;
        sub_181F887D0(v13, v49);
        sub_181F887D0(v19, v147);
        sub_181F887D0(v50, v138);
        sub_181D04D28(v19, v147);

        v51 = v134;
        v52 = v138;
LABEL_37:
        sub_181D04D28(v51, v52);
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    v29 = *(a2 + 176);
    v135 = *(a1 + 128);
    v30 = *(a2 + 144);
    v31 = *(a2 + 136);
    v143 = *(a1 + 168);
    v125 = *(a1 + 176);
    sub_181F887D0(v13, 0);
    if (!v31)
    {
      sub_181F887D0(v19, 0);
      v38 = 0;
      v37 = v135;
      goto LABEL_48;
    }

LABEL_39:
    v126 = v19;
    v147 = v31;
    v53 = v31;
    v47 = v20;
    v44 = v153;
    v45 = v15;
    v46 = v150;
    sub_181F887D0(v19, v53);
    v41 = v125;
    v48 = v30;
    v42 = v135;
    v14 = 0;
    v40 = v143;
    goto LABEL_40;
  }

  v11 = 0;
  if ((sub_182AD4268() & 1) != 0 && v4 == v7)
  {
    goto LABEL_9;
  }

  return v11 & 1;
}

uint64_t _s7Network11HTTPRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];

  v6 = sub_1822CC234(v3, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = sub_18208BC10(v2, v4);

  return v7 & 1;
}

unint64_t sub_1822CD568()
{
  result = qword_1EA83C020;
  if (!qword_1EA83C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C020);
  }

  return result;
}

unint64_t sub_1822CD5BC()
{
  result = qword_1EA83C028;
  if (!qword_1EA83C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C028);
  }

  return result;
}

unint64_t sub_1822CD610()
{
  result = qword_1EA83C038;
  if (!qword_1EA83C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C038);
  }

  return result;
}

unint64_t sub_1822CD668()
{
  result = qword_1EA83C040;
  if (!qword_1EA83C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C040);
  }

  return result;
}

unint64_t sub_1822CD6C0()
{
  result = qword_1EA83C048;
  if (!qword_1EA83C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C048);
  }

  return result;
}

unint64_t sub_1822CD718()
{
  result = qword_1EA83C050;
  if (!qword_1EA83C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C050);
  }

  return result;
}

unint64_t sub_1822CD770()
{
  result = qword_1EA83C058;
  if (!qword_1EA83C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C058);
  }

  return result;
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

unint64_t sub_1822CD850()
{
  result = qword_1EA83C060;
  if (!qword_1EA83C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C060);
  }

  return result;
}

unint64_t sub_1822CD8A8()
{
  result = qword_1EA83C068;
  if (!qword_1EA83C068)
  {
    type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C068);
  }

  return result;
}

unint64_t sub_1822CD904()
{
  result = qword_1EA83C070;
  if (!qword_1EA83C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C070);
  }

  return result;
}

unint64_t sub_1822CD95C()
{
  result = qword_1EA83C078;
  if (!qword_1EA83C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C078);
  }

  return result;
}

uint64_t sub_1822CD9B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NWActorDiscoveryMechanism.init(browseDescriptor:browseParameters:connectionParameters:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1822CDB60(a4, a5, type metadata accessor for NWActorDiscoveryMechanism.Target);
  v9 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v10 = v9[5];
  sub_1822CDB60(a1, a5 + v10, type metadata accessor for NWBrowser.Descriptor);
  v11 = type metadata accessor for NWBrowser.Descriptor(0);
  result = (*(*(v11 - 8) + 56))(a5 + v10, 0, 1, v11);
  *(a5 + v9[6]) = a2;
  if (a3)
  {
    a2 = a3;
  }

  else
  {
  }

  *(a5 + v9[7]) = a2;
  return result;
}

uint64_t sub_1822CDB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1822CDBF0()
{
  type metadata accessor for NWActorDiscoveryMechanism.Target(319);
  if (v0 <= 0x3F)
  {
    sub_1822CDCDC(319, &qword_1EA83C0A0, type metadata accessor for NWBrowser.Descriptor);
    if (v1 <= 0x3F)
    {
      sub_1822CDCDC(319, &qword_1EA83C0A8, type metadata accessor for NWParameters);
      if (v2 <= 0x3F)
      {
        type metadata accessor for NWParameters();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1822CDCDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_182AD39B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1822CDD30()
{
  result = sub_1822CDDA4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NWEndpoint();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1822CDDA4()
{
  result = qword_1EA83C0C0;
  if (!qword_1EA83C0C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EA83C0C0);
  }

  return result;
}

uint64_t sub_1822CDE04()
{
  result = *(v0 + 8);
  if (((1 << (*(v0 + 32) >> 59)) & 0x1E4FFA) != 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1822CDE98(char a1, unint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2;
    v2 = sub_181F85288(*(a2 + 16), 0);
    v5 = sub_1822C5FCC(&v35, v2 + 4, v3, v4);

    sub_1820AD298();
    if (v5 != v3)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  v35 = v2;
  sub_1822D0A94();
  v6 = v35;
  v31 = v35[2];
  if (v31)
  {
    v7 = 0;
    v8 = v35 + 5;
    v30 = v35;
    while (v7 < *(v6 + 16))
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = v8[1];
      v13 = v8[2];
      v14 = v8[3];
      v15 = v8[4];
      v16 = v8[5];
      if ((a1 & 1) == 0 || ((v14 >> 59) <= 0x10 ? (v9 = ((1 << (v14 >> 59)) & 0x1AC05) == 0) : (v9 = 1), v9))
      {
        v35 = *(v8 - 1);
        v36 = v10;
        v37 = v12;
        v38 = v13;
        v39 = v14;
        v40 = v15;
        v41 = v16;
        v33 = v14;
        sub_18206A3C4(v11, v10, v12, v13, v14);
        v17 = sub_1822CEE40(&v42);
        if (v34)
        {
          v28 = v17;

          sub_18206A46C(v11, v10, v12, v13, v33);

          return v28;
        }

        v34 = 0;
        sub_18206A46C(v11, v10, v12, v13, v33);
        v6 = v30;
      }

      ++v7;
      v8 += 7;
      if (v31 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    if (qword_1EA837250 == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  if (byte_1EA843430 == 1)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_182AD3BA8();

    v35 = 0xD000000000000011;
    v36 = 0x8000000182BE4FC0;
    v18 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v18);

    v5 = v35;
    v4 = v36;
    if (qword_1EA837248 == -1)
    {
LABEL_17:
      v19 = sub_182AD2698();
      __swift_project_value_buffer(v19, qword_1EA843418);

      v20 = sub_182AD2678();
      v21 = sub_182AD38A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v35 = v23;
        *v22 = 136315650;
        v24 = sub_182AD3BF8();
        v26 = sub_181C64FFC(v24, v25, &v35);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v35);
        *(v22 + 22) = 2080;
        v27 = sub_181C64FFC(v5, v4, &v35);

        *(v22 + 24) = v27;
        _os_log_impl(&dword_181A37000, v20, v21, "%s %s %s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v23, -1, -1);
        MEMORY[0x1865DF520](v22, -1, -1);
      }

      else
      {
      }

      return v42;
    }

LABEL_26:
    swift_once();
    goto LABEL_17;
  }

  return v42;
}

uint64_t sub_1822CE2F0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  v7 = a4;
  v8 = result;
  if (a4 < result)
  {
    goto LABEL_29;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v11 = 0;
    v13 = a7 + 64;
    v14 = a5;
    v28 = a7 + 72;
    v29 = a5;
    while (!__OFADD__(v11++, 1))
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v16 = 1 << *(a7 + 32);
      if (v8 >= v16)
      {
        goto LABEL_25;
      }

      v17 = v8 >> 6;
      v18 = *(v13 + 8 * (v8 >> 6));
      if (((v18 >> v8) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(a7 + 36) != v10)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        result = sub_18225BB58(v8, v10, 0);
        v8 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        if (v10 != v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = v7;
        v21 = v13;
        v22 = v9;
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v28 + 8 * v17);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_18225BB58(v8, v10, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_21;
          }
        }

        result = sub_18225BB58(v8, v10, 0);
        v8 = v16;
LABEL_21:
        v9 = v22;
        v13 = v21;
        v7 = v20;
        v14 = v29;
        if (v10 != v9)
        {
          goto LABEL_28;
        }
      }

      v10 = v14;
      if (v8 == v7)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_18225BB58(a4, a2, 0);
  return 0;
}

uint64_t sub_1822CE4EC()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](qword_182B08878[v1]);
  return sub_182AD4558();
}

uint64_t sub_1822CE574()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](qword_182B08878[v1]);
  return sub_182AD4558();
}

uint64_t sub_1822CE5C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1822D10E0(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_1822CE614@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1822CE62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1822D2D44();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1822CE684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1822D2CF0();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1822CE6DC()
{
  v1 = *(v0 + 4) >> 59;
  if (v1 == 12)
  {
    return 0;
  }

  result = 0;
  v3 = *(v0 + 1);
  v4 = *v0;
  if (v4 > 9)
  {
    if (v4 <= 0x14)
    {
      if (((1 << v4) & 0x1B000) != 0)
      {
        return result;
      }

      if (((1 << v4) & 0x1E0000) != 0)
      {
        goto LABEL_13;
      }

      if (v4 == 14)
      {
        v5 = 2;
        goto LABEL_14;
      }
    }

    if (v4 != 10)
    {
      if (qword_1EA837278 != -1)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    v5 = 3;
LABEL_14:
    while (1)
    {
      v1 = (1 << v1);
      if ((v1 & 0x1E4FFA) == 0)
      {
        break;
      }

      if ((v3 & 0x8000000000000000) == 0)
      {
        return v3 == v5;
      }

      while (1)
      {
        __break(1u);
LABEL_24:
        v7 = v3;
        v6 = v1;
        swift_once();
        v1 = v6;
        v3 = v7;
LABEL_21:
        v5 = qword_1EA843448;
        if ((qword_1EA843448 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
      }
    }

    result = sub_182AD3EA8();
    __break(1u);
  }

  else
  {
    if (*v0 > 2u)
    {
      if (v4 - 4 >= 6)
      {
        v5 = 65527;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (v4 == 1)
    {
LABEL_13:
      v5 = 0;
      goto LABEL_14;
    }
  }

  return result;
}

void sub_1822CE864()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v6 >> 59;
  if ((v6 >> 59) > 2)
  {
    if ((v8 - 3) < 9)
    {
      goto LABEL_11;
    }

    if (v8 <= 0x14)
    {
      if (((1 << v8) & 0x1E4000) != 0)
      {
        goto LABEL_11;
      }

      if (((1 << v8) & 0x18000) != 0)
      {
LABEL_17:
        sub_18206A3C4(*v0, v0[1], v0[2], v0[3], v0[4]);
        if (qword_1EA837250 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 == 1)
        {
          v24 = 0;
          v25 = 0xE000000000000000;
          sub_182AD3E18();
          MEMORY[0x1865D9CA0](61, 0xE100000000000000);
          v30 = v1;
          v10 = ConnectionID.description.getter();
          v12 = v11;
          sub_18206A46C(v2, v1, v4, v3, v6);
          MEMORY[0x1865D9CA0](v10, v12);
          goto LABEL_21;
        }

        sub_18206A46C(v2, v1, v4, v3, v6);
        return;
      }

      if (v8 == 13)
      {
        if (qword_1EA837250 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 == 1)
        {
          v30 = 0;
          v31 = 0xE000000000000000;
          sub_182AD3E18();
          MEMORY[0x1865D9CA0](61, 0xE100000000000000);
          v24 = v1;
          v25 = v4;
          v26 = v3;
          v27 = v6;
          v28 = v5;
          v29 = v7;
          sub_182AD3E18();
          v14 = 0;
          v13 = 0xE000000000000000;
          goto LABEL_23;
        }

        return;
      }
    }

    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      LOBYTE(v30) = v2;
      sub_182AD3E18();
      goto LABEL_22;
    }

    return;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  if (v8 != 1)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](61, 0xE100000000000000);
      v30 = v1;
      v9 = StatelessResetToken.description.getter();
LABEL_15:
      MEMORY[0x1865D9CA0](v9);
LABEL_21:

LABEL_22:
      v14 = v24;
      v13 = v25;
LABEL_23:
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v15 = sub_182AD2698();
      __swift_project_value_buffer(v15, qword_1EA843418);

      v16 = sub_182AD2678();
      v17 = sub_182AD38A8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24 = v19;
        *v18 = 136315650;
        v20 = sub_182AD3BF8();
        v22 = sub_181C64FFC(v20, v21, &v24);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v24);
        *(v18 + 22) = 2080;
        v23 = sub_181C64FFC(v14, v13, &v24);

        *(v18 + 24) = v23;
        _os_log_impl(&dword_181A37000, v16, v17, "%s %s %s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v19, -1, -1);
        MEMORY[0x1865DF520](v18, -1, -1);
      }

      else
      {
      }

      return;
    }

    return;
  }

LABEL_11:
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](61, 0xE100000000000000);
    v30 = v1;
    v9 = sub_182AD41B8();
    goto LABEL_15;
  }
}

uint64_t sub_1822CEE40(uint64_t a1)
{
  v19 = a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = sub_1822CE6DC();
  if ((v9 & 1) == 0)
  {
    v10 = v6 >> 59;
    if ((v6 >> 59) <= 2)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          if (*(v3 + 16) == 16)
          {
            v11 = sub_1822CF0EC(v9, v2, v3);
LABEL_13:
            sub_1820D46D8(v11);
            sub_1822CE864();
            return 1;
          }

LABEL_19:
          sub_181F5F494();
          swift_willThrowTypedImpl();
          return 1;
        }

LABEL_10:
        v11 = sub_1822CF558(v9, v2, v3);
        goto LABEL_13;
      }

LABEL_12:
      v12 = sub_18206A3C4(v2, v3, v4, v5, v6);
      v13 = sub_1822CF464(v12, v2, v3);
      sub_18206A46C(v2, v3, v4, v5, v6);
      v11 = v13;
      goto LABEL_13;
    }

    if ((v10 - 3) < 9)
    {
      goto LABEL_10;
    }

    if (v10 <= 0x14)
    {
      if (((1 << v10) & 0x1E4000) != 0)
      {
        goto LABEL_10;
      }

      if (((1 << v10) & 0x18000) != 0)
      {
        goto LABEL_12;
      }

      if (v10 == 13)
      {
        v15[0] = v3;
        v15[1] = v4;
        v15[2] = v5;
        v16 = v6;
        v17 = v7;
        v18 = v8;
        if (*(v8 + 16) == 16 && *(v4 + 16) == 16)
        {
          v11 = sub_1822CF1E0(v9, v2, v15);
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v11 = sub_1822CF034(v9, v2);
    goto LABEL_13;
  }

  return 1;
}

uint64_t sub_1822CF034(uint64_t a1, char a2)
{
  v8[0] = qword_182B08878[a2];
  v9 = 8;
  v6[0] = 0;
  v7 = 8;
  sub_181F80BF8(v8, &v4);
  sub_181F80BF8(v6, &v5);
  v3 = MEMORY[0x1E69E7CC0];
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  swift_arrayDestroy();
  sub_181F80C54(v6);
  sub_181F80C54(v8);
  return v3;
}

uint64_t sub_1822CF0EC(uint64_t a1, char a2, uint64_t a3)
{
  v12[0] = qword_182B08878[a2];
  v13 = 8;
  v10[0] = 16;
  v11 = 8;
  v8[0] = a3;
  v9 = 11;
  sub_181F80BF8(v12, &v5);
  sub_181F80BF8(v10, &v6);
  sub_181F80BF8(v8, &v7);
  v4 = MEMORY[0x1E69E7CC0];

  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  swift_arrayDestroy();
  sub_181F80C54(v8);
  sub_181F80C54(v10);
  sub_181F80C54(v12);
  return v4;
}

uint64_t sub_1822CF1E0(uint64_t a1, char a2, uint64_t *a3)
{
  v33[0] = qword_182B08878[a2];
  v34 = 8;
  v37 = *a3;
  v3 = *(v37 + 16);
  if (__OFADD__(v3, 25))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v3 + 25, 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((v3 + 41) & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v31[0] = v3 + 41;
  v32 = 8;
  v29[0] = *(a3 + 6);
  v30 = 6;
  v4 = a3[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >> 16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27[0] = a3[2];
  v28 = 5;
  v5 = a3[4];
  v36 = a3[5];
  v25[0] = v36;
  v26 = 11;
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 >> 16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23[0] = v5;
  v24 = 5;
  if (v3 <= 0xFF)
  {
    v22[0] = v3;
    v22[40] = 0;
    v20[0] = v37;
    v21 = 11;
    v35 = a3[1];
    v18[0] = v35;
    v19 = 11;
    sub_181F80BF8(v33, &v9);
    sub_181F80BF8(v31, &v10);
    sub_181F80BF8(v29, &v11);
    sub_181F80BF8(v27, &v12);
    sub_181F80BF8(v25, &v13);
    sub_181F80BF8(v23, &v14);
    sub_181F80BF8(v22, &v15);
    sub_181F80BF8(v20, &v16);
    sub_181F80BF8(v18, &v17);
    v8 = MEMORY[0x1E69E7CC0];
    sub_1822D2850(&v36, v7);
    sub_182123280(&v37, v7);
    sub_1822D28C0(&v35, v7);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    swift_arrayDestroy();
    sub_181F80C54(v18);
    sub_181F80C54(v20);
    sub_181F80C54(v22);
    sub_181F80C54(v23);
    sub_181F80C54(v25);
    sub_181F80C54(v27);
    sub_181F80C54(v29);
    sub_181F80C54(v31);
    sub_181F80C54(v33);
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1822CF464(uint64_t a1, char a2, uint64_t a3)
{
  v12[0] = qword_182B08878[a2];
  v13 = 8;
  v10[0] = *(a3 + 16);
  v11 = 8;
  v8[0] = a3;
  v9 = 11;
  sub_181F80BF8(v12, &v5);
  sub_181F80BF8(v10, &v6);
  sub_181F80BF8(v8, &v7);
  v4 = MEMORY[0x1E69E7CC0];

  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  swift_arrayDestroy();
  sub_181F80C54(v8);
  sub_181F80C54(v10);
  sub_181F80C54(v12);
  return v4;
}

uint64_t sub_1822CF558(uint64_t a1, char a2, unint64_t a3)
{
  v13[0] = qword_182B08878[a2];
  v14 = 8;
  if (a3 < 0x40)
  {
    v3 = 1;
    goto LABEL_9;
  }

  if (a3 < 0x4000)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if (!(a3 >> 30))
  {
    v3 = 4;
    goto LABEL_9;
  }

  if (!(a3 >> 62))
  {
    v3 = 8;
LABEL_9:
    v11[0] = v3;
    v12 = 8;
    v9[0] = a3;
    v10 = 8;
    sub_181F80BF8(v13, &v6);
    sub_181F80BF8(v11, &v7);
    sub_181F80BF8(v9, &v8);
    v5 = MEMORY[0x1E69E7CC0];
    sub_1822A69B4(&v5);
    sub_1822A69B4(&v5);
    sub_1822A69B4(&v5);
    swift_arrayDestroy();
    sub_181F80C54(v9);
    sub_181F80C54(v11);
    sub_181F80C54(v13);
    return v5;
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1822CF6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 <= 0x14)
  {

    return sub_1822C3A50(v16, a3);
  }

  else
  {
    sub_182AD3BA8();

    v18 = 0xD000000000000012;
    v19 = 0x8000000182BE4F30;
    v21 = v3;
    v5 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v5);

    MEMORY[0x1865D9CA0](0x61766E6920736920, 0xEB0000000064696CLL);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);

    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v18);
      *(v9 + 22) = 2080;
      v14 = sub_181C64FFC(0xD000000000000012, 0x8000000182BE4F30, &v18);

      *(v9 + 24) = v14;
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    else
    {
    }

    v18 = 0;
    v19 = 0;
    v20 = 112;
    sub_181F5F494();
    result = swift_willThrowTypedImpl();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 112;
  }

  return result;
}

void sub_1822CF978(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 16)
  {

    StatelessResetToken.init(_:)(v5, a3);
  }

  else
  {
    sub_182AD3BA8();

    v17 = 0xD000000000000019;
    v18 = 0x8000000182BE4EB0;
    v20 = v3;
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    MEMORY[0x1865D9CA0](0x61766E6920736920, 0xEB0000000064696CLL);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);

    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315650;
      v13 = sub_182AD3BF8();
      v15 = sub_181C64FFC(v13, v14, &v17);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v17);
      *(v11 + 22) = 2080;
      v16 = sub_181C64FFC(0xD000000000000019, 0x8000000182BE4EB0, &v17);

      *(v11 + 24) = v16;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v12, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }

    v17 = 0;
    v18 = 0;
    v19 = 112;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 112;
  }
}

uint64_t sub_1822CFC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if ((v4 - 62) <= 0xFFFFFFFFFFFFFFEALL)
  {
    sub_182AD3BA8();

    v35 = 0xD000000000000016;
    v36 = 0x8000000182BE4EF0;
    v34[0] = v4;
    v5 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v5);

    MEMORY[0x1865D9CA0](0x61766E6920736920, 0xEB0000000064696CLL);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);

    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, &v35);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v35);
      *(v9 + 22) = 2080;
      v14 = sub_181C64FFC(0xD000000000000016, 0x8000000182BE4EF0, &v35);

      *(v9 + 24) = v14;
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    else
    {
    }

    v35 = 0;
    v36 = 0;
    LOBYTE(v37) = 112;
    sub_181F5F494();
    result = swift_willThrowTypedImpl();
    goto LABEL_18;
  }

  v46 = 0;
  v45 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v44 = 0;
  v42 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v35 = a1 + 32;
  v36 = a1 + 32 + v4;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  Deserializer.uint32NetworkByteOrder(_:)(&v46, v34);
  Deserializer.uint16NetworkByteOrder(_:)(&v45, v33);
  Deserializer.buffer(_:length:)(16, v32);
  Deserializer.uint16NetworkByteOrder(_:)(&v44, v31);
  Deserializer.uint8(_:)(&v42, v30);
  Deserializer.buffer(_:length:)(v42, v29);
  result = Deserializer.buffer(_:length:)(16, v28);
  if (v39 != 1 || v38)
  {
LABEL_17:
    v35 = 0;
    v36 = 0;
    LOBYTE(v37) = 112;
    sub_181F5F494();
    swift_willThrowTypedImpl();

LABEL_18:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 112;
    return result;
  }

  if (v35)
  {
    v17 = v36 - v35;
  }

  else
  {
    v17 = 0;
  }

  v18 = __OFSUB__(v17, v37);
  v19 = v17 - v37;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v19 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v19)
  {
    goto LABEL_17;
  }

  sub_1822C3A50(v20, &v35);
  v27 = v35;

  StatelessResetToken.init(_:)(v21, v34);
  v22 = v34[0];
  v23 = v45;
  v24 = v46;
  v25 = v44;
  v26 = v43;

  *a3 = v27;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  *(a3 + 24) = v24;
  *(a3 + 32) = v25;
  *(a3 + 40) = v26;
  return result;
}

void sub_1822D0088(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_1822D10E0(a1);
  v7 = 0x6000000000000000;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  switch(v6)
  {
    case 1:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x800000000000000;
      v6 = 1;
      goto LABEL_45;
    case 2:
      v18 = v29;
      sub_1822CF978(a2, v21, &v23);
      if (v18)
      {
        goto LABEL_32;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v8 = v23;
      v7 = 0x1000000000000000;
      v6 = 2;
      goto LABEL_45;
    case 3:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x1800000000000000;
      v6 = 3;
      goto LABEL_45;
    case 4:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x2000000000000000;
      v6 = 4;
      goto LABEL_45;
    case 5:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x2800000000000000;
      v6 = 5;
      goto LABEL_45;
    case 6:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x3000000000000000;
      v6 = 6;
      goto LABEL_45;
    case 7:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x3800000000000000;
      v6 = 7;
      goto LABEL_45;
    case 8:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x4000000000000000;
      v6 = 8;
      goto LABEL_45;
    case 9:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x4800000000000000;
      v6 = 9;
      goto LABEL_45;
    case 10:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x5000000000000000;
      v6 = 10;
      goto LABEL_45;
    case 11:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x5800000000000000;
      v6 = 11;
      goto LABEL_45;
    case 12:
      goto LABEL_45;
    case 13:
      v19 = v29;
      sub_1822CFC30(a2, v21, &v23);
      if (v19)
      {
        goto LABEL_32;
      }

      v29 = 0;
      v9 = *(&v23 + 1);
      v8 = v23;
      v10 = v24;
      v11 = v26;
      v12 = v27;
      v7 = v25 | 0x6800000000000000;
      v6 = 13;
      goto LABEL_45;
    case 14:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x7000000000000000;
      v6 = 14;
      goto LABEL_45;
    case 15:
      v17 = v29;
      sub_1822CF6C0(a2, v21, &v23);
      if (v17)
      {
        goto LABEL_32;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v8 = v23;
      v7 = 0x7800000000000000;
      v6 = 15;
      goto LABEL_45;
    case 16:
      v14 = v29;
      sub_1822CF6C0(a2, v21, &v23);
      if (v14)
      {
        goto LABEL_32;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v8 = v23;
      v7 = 0x8000000000000000;
      v6 = 16;
      goto LABEL_45;
    case 17:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x8800000000000000;
      v6 = 17;
      goto LABEL_45;
    case 18:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x9000000000000000;
      v6 = 18;
      goto LABEL_45;
    case 19:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x9800000000000000;
      v6 = 19;
      goto LABEL_45;
    case 20:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0xA000000000000000;
      v6 = 20;
      goto LABEL_45;
    case 21:
      v23 = xmmword_182AED510;
      LOBYTE(v24) = 112;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      v16 = 112;
      v15 = 0;
      v8 = 2;
      goto LABEL_33;
    default:
      v13 = v29;
      sub_1822CF6C0(a2, v21, &v23);
      if (v13)
      {
LABEL_32:
        v8 = v21[0];
        v15 = v21[1];
        v16 = v22;
LABEL_33:
        *a3 = v8;
        *(a3 + 8) = v15;
        *(a3 + 16) = v16;
      }

      else
      {
        v29 = 0;
        v6 = 0;
        v9 = 0;
        v10 = 0;
        v7 = 0;
        v11 = 0;
        v12 = 0;
        v8 = v23;
LABEL_45:
        *&v23 = v6;
        *(&v23 + 1) = v8;
        v24 = v9;
        v25 = v10;
        v26 = v7;
        v27 = v11;
        v28 = v12;
        sub_18206A3C4(v6, v8, v9, v10, v7);
        sub_1822CE864();
        sub_18206A46C(v6, v8, v9, v10, v7);
        *a4 = v6;
        a4[1] = v8;
        a4[2] = v9;
        a4[3] = v10;
        a4[4] = v7;
        a4[5] = v11;
        a4[6] = v12;
      }

      return;
  }
}

uint64_t sub_1822D061C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_181F85154(*(v2 + 16), 0);
  v5 = *(v2 + 16);
  if (!v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return a1;
  }

  a1 = result;
  v6 = 0;
  v7 = (v2 + 80);
  v8 = v3 - 1;
  v9 = 32;
  while (v6 < v5)
  {
    v10 = a1 + v9;
    v11 = *(v7 - 5);
    v12 = *(v7 - 4);
    v13 = *(v7 - 3);
    v14 = *(v7 - 16);
    v15 = *(v7 - 1);
    v16 = *v7;
    *v10 = *(v7 - 6);
    *(v10 + 8) = v11;
    *(v10 + 16) = v12;
    *(v10 + 24) = v13;
    *(v10 + 32) = v14;
    *(v10 + 40) = v15;
    *(v10 + 48) = v16;
    if (v8 == v6)
    {
      goto LABEL_8;
    }

    v5 = *(v2 + 16);
    ++v6;
    v7 += 8;
    v9 += 56;
    if (v6 == v5)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1822D0730(uint64_t a1, unint64_t a2)
{
  v4 = sub_182AD3AD8();
  v5 = sub_1822CE2F0(v4, *(a1 + 36), 0, 1 << *(a1 + 32), *(a1 + 36), 0, a1);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_181F85168(v5, 0);

  swift_unknownObjectRetain();
  v8 = sub_1822C5C24(v13, (v7 + 4), v6, a1, a2);
  v9 = v13[2];
  v10 = v13[3];
  v11 = v14;
  swift_unknownObjectRelease();

  sub_18225BB58(v9, v10, v11);
  if (v8 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1822D0834(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838E50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = v5 - 32;
  v6 = v5 < 32;
  v8 = v5 - 29;
  if (!v6)
  {
    v8 = v7;
  }

  v4[1].i64[0] = v2;
  v4[1].i64[1] = 2 * (v8 >> 2);
  v9 = &v4[2];
  if (v2 < 8)
  {
    v10 = 0;
LABEL_11:
    v14 = v2 - v10;
    do
    {
      *v9++ = a2;
      --v14;
    }

    while (v14);
    return result;
  }

  v10 = v2 & 0x7FFFFFFFFFFFFFF8;
  v9 += v2 & 0x7FFFFFFFFFFFFFF8;
  v11 = vdupq_n_s32(a2);
  v12 = v4 + 3;
  v13 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 8;
  }

  while (v13);
  if (v10 != v2)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1822D0918(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1822D09F0(unint64_t a1, char *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v4, 0);

    MEMORY[0x1865DA770](a2 + 32, v4, v3);
    v3 = v5;

    if (v3 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = sub_182AD3EB8();
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1822D0A94()
{
  v38 = *v0;
  v1 = *(*v0 + 2);
  v37 = v1 - 2;
  if (v1 >= 2)
  {
    v2 = 0;
    while (1)
    {
      __buf = 0;
      arc4random_buf(&__buf, 8uLL);
      v4 = (__buf * v1) >> 64;
      if (v1 > __buf * v1)
      {
        v5 = -v1 % v1;
        if (v5 > __buf * v1)
        {
          do
          {
            __buf = 0;
            arc4random_buf(&__buf, 8uLL);
          }

          while (v5 > __buf * v1);
          v4 = (__buf * v1) >> 64;
        }
      }

      v6 = v2 + v4;
      if (__OFADD__(v2, v4))
      {
        break;
      }

      if (v2 != v6)
      {
        v7 = *(v38 + 2);
        if (v2 >= v7)
        {
          goto LABEL_19;
        }

        if (v6 >= v7)
        {
          goto LABEL_20;
        }

        v8 = &v38[56 * v2 + 32];
        v9 = &v38[56 * v6 + 32];
        v11 = *v9;
        v10 = v9[1];
        v12 = v9[2];
        v13 = v9[3];
        v14 = v9[4];
        v15 = v9[5];
        v16 = v9[6];
        v35 = v8[1];
        v36 = *v8;
        v33 = v8[3];
        v34 = v8[2];
        v31 = v8[5];
        v32 = v8[4];
        v30 = v8[6];
        sub_18206A3C4(*v8, v35, v34, v33, v32);
        sub_18206A3C4(v11, v10, v12, v13, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_18214D488(v38);
        }

        if (v2 >= *(v38 + 2))
        {
          goto LABEL_21;
        }

        v17 = &v38[56 * v2 + 32];
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = v17[4];
        *v17 = v11;
        v17[1] = v10;
        v17[2] = v12;
        v17[3] = v13;
        v17[4] = v14;
        v17[5] = v15;
        v17[6] = v16;
        sub_18206A46C(v18, v19, v20, v21, v22);
        if (v6 >= *(v38 + 2))
        {
          goto LABEL_22;
        }

        v23 = &v38[56 * v6 + 32];
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = v23[4];
        *v23 = v36;
        v23[1] = v35;
        v23[2] = v34;
        v23[3] = v33;
        v23[4] = v32;
        v23[5] = v31;
        v23[6] = v30;
        sub_18206A46C(v24, v25, v26, v27, v28);
        *v29 = v38;
      }

      --v1;
      if (v2++ == v37)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1822D0CE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_182AD42E8();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1822D0DA8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a1 + 32) >> 59;
  v8 = *(a2 + 4) >> 59;
  if (v7 == 12)
  {
    if (v8 == 12)
    {
      return 1;
    }

    v12 = *a2;
LABEL_8:
    v10 = 12;
LABEL_9:
    v11 = 0;
    result = 0;
    if (v10 != qword_182B08878[v12])
    {
      return result;
    }

    goto LABEL_10;
  }

  v10 = *a1;
  if (v8 != 12)
  {
    v12 = v6;
    switch(*a1)
    {
      case 1u:
        v10 = 1;
        break;
      case 2u:
        v10 = 2;
        break;
      case 3u:
        v10 = 3;
        break;
      case 4u:
        v10 = 4;
        break;
      case 5u:
        v10 = 5;
        break;
      case 6u:
        v10 = 6;
        break;
      case 7u:
        v10 = 7;
        break;
      case 8u:
        v10 = 8;
        break;
      case 9u:
        v10 = 9;
        break;
      case 0xAu:
        v10 = 10;
        break;
      case 0xBu:
        v10 = 11;
        break;
      case 0xCu:
        goto LABEL_8;
      case 0xDu:
        v10 = 13;
        break;
      case 0xEu:
        v10 = 14;
        break;
      case 0xFu:
        v10 = 15;
        break;
      case 0x10u:
        v10 = 16;
        break;
      case 0x11u:
        v10 = 32;
        break;
      case 0x12u:
        v10 = 47807;
        break;
      case 0x13u:
        v10 = 4278443546;
        break;
      case 0x14u:
        v10 = 4278716424;
        break;
      default:
        goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v10 != 12)
  {
    return 0;
  }

  v8 = 12;
  v11 = 1;
LABEL_10:
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        if (v8 != 2)
        {
LABEL_56:
          result = sub_182AD3EA8();
          __break(1u);
          return result;
        }

        goto LABEL_24;
      }

LABEL_20:
      v13 = sub_1822CDE04();
      return v13 == sub_1822CDE04();
    }

LABEL_22:
    if ((v8 - 15) >= 2 && v8)
    {
      goto LABEL_56;
    }

LABEL_24:

    return sub_1822C3DC0(*(&v6 + 1), v3);
  }

  if ((v7 - 3) < 9)
  {
    goto LABEL_20;
  }

  if (v7 > 0x14)
  {
    return (v11 & 1) != 0 || v6 == 12;
  }

  if (((1 << v7) & 0x1E4000) != 0)
  {
    goto LABEL_20;
  }

  if (((1 << v7) & 0x18000) != 0)
  {
    goto LABEL_22;
  }

  if (v7 != 13)
  {
    return (v11 & 1) != 0 || v6 == 12;
  }

  v14 = v4;
  if ((sub_1822C3DC0(v3, v3) & 1) == 0 || (sub_1822C3DC0(v14, v14) & 1) == 0)
  {
    return 0;
  }

  return sub_18208108C(v5, v5);
}

uint64_t sub_1822D10E0(uint64_t a1)
{
  if (a1 > 47806)
  {
    switch(a1)
    {
      case 47807:
        return 18;
      case 4278443546:
        return 19;
      case 4278716424:
        return 20;
      default:
        return 21;
    }
  }

  else
  {
    result = 1;
    switch(a1)
    {
      case 0:
        result = 0;
        break;
      case 1:
        return result;
      case 2:
        result = 2;
        break;
      case 3:
        result = 3;
        break;
      case 4:
        result = 4;
        break;
      case 5:
        result = 5;
        break;
      case 6:
        result = 6;
        break;
      case 7:
        result = 7;
        break;
      case 8:
        result = 8;
        break;
      case 9:
        result = 9;
        break;
      case 10:
        result = 10;
        break;
      case 11:
        result = 11;
        break;
      case 12:
        result = 12;
        break;
      case 13:
        result = 13;
        break;
      case 14:
        result = 14;
        break;
      case 15:
        result = 15;
        break;
      case 16:
        result = 16;
        break;
      case 32:
        result = 17;
        break;
      default:
        return 21;
    }
  }

  return result;
}

unint64_t sub_1822D11F0(uint64_t a1)
{
  v3 = v1;
  v5 = a1 + 32 + *(a1 + 16);
  v22 = a1 + 32;
  v23 = v5;
  v24 = 0;
  v25 = 0;
  v26 = 1;
  result = sub_1820E2CC0();
  if (v22)
  {
    v8 = v23 - v22;
  }

  else
  {
    v8 = 0;
  }

  v9 = __OFSUB__(v8, v24);
  v10 = v8 - v24;
  if (v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
LABEL_9:
    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843418);

    v14 = sub_182AD2678();
    v15 = sub_182AD38B8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315650;
      v18 = sub_182AD3BF8();
      v20 = sub_181C64FFC(v18, v19, &v22);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v22);
      *(v16 + 22) = 2080;
      v21 = sub_181C64FFC(v2, v3, &v22);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v17, -1, -1);
      MEMORY[0x1865DF520](v16, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    if (v7 == *(a1 + 16))
    {
      return result;
    }

    sub_182AD3BA8();

    v22 = 0x657A697320454C56;
    v23 = 0xE900000000000020;
    v11 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v11);

    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BE4F80);
    v12 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v12);

    v2 = 0x657A697320454C56;
    v3 = 0xE900000000000020;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_13:
  v22 = 0;
  v23 = 0;
  LOBYTE(v24) = 112;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  return 0;
}

uint64_t sub_1822D1530(char **a1)
{
  v2 = v1;
  v4 = sub_18225ACB8(MEMORY[0x1E69E7CC0]);
  v5 = *a1;
  v6 = (*a1 + 16);
  if (*v6 > 0xFFFE)
  {

    sub_182AD3BA8();

    *&v127 = 0xD000000000000010;
    *(&v127 + 1) = 0x8000000182BE4D80;
    v133 = *v6;
    v17 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v17);

    v18 = 0x8000000182BE4D80;
    v19 = 0xD000000000000010;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v20 = sub_182AD2698();
    __swift_project_value_buffer(v20, qword_1EA843418);

    v21 = sub_182AD2678();
    v22 = sub_182AD38B8();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_104;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v127 = v24;
LABEL_13:
    *v23 = 136315650;
    v25 = sub_182AD3BF8();
    v27 = sub_181C64FFC(v25, v26, &v127);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v127);
    *(v23 + 22) = 2080;
    v28 = sub_181C64FFC(v19, v18, &v127);

    *(v23 + 24) = v28;
    _os_log_impl(&dword_181A37000, v21, v22, "%s %s %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v24, -1, -1);
    MEMORY[0x1865DF520](v23, -1, -1);
LABEL_105:

LABEL_106:
    v127 = 0uLL;
    LOBYTE(v128) = 112;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v123 = byte_1EA843430;
  v124 = a1;
  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    *&v127 = 0xD000000000000029;
    *(&v127 + 1) = 0x8000000182BE4E50;
    v133 = *v6;
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v8 = v127;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843418);

    v10 = sub_182AD2678();
    v11 = sub_182AD38A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v127 = v121;
      *v12 = 136315650;
      v13 = sub_182AD3BF8();
      v15 = sub_181C64FFC(v13, v14, &v127);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v127);
      *(v12 + 22) = 2080;
      v16 = sub_181C64FFC(v8, *(&v8 + 1), &v127);

      *(v12 + 24) = v16;
      a1 = v124;
      _os_log_impl(&dword_181A37000, v10, v11, "%s %s %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v121, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    else
    {
    }
  }

  v29 = *v6;
  if (!*v6)
  {
    return v4;
  }

  v117 = 0;
  v118 = 0;
  v119 = 1;
  v120 = 1;
  while (2)
  {
    v122 = v4;
    while (1)
    {
      *&v127 = v5 + 32;
      *(&v127 + 1) = &v5[v29 + 32];
      v128 = 0;
      v129 = 0;
      LOBYTE(v130) = 1;
      v37 = sub_1820E2CC0();
      v38 = sub_1820E2CC0();
      if ((v38 & 0x8000000000000000) != 0)
      {
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

        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v99 = sub_182AD2698();
        __swift_project_value_buffer(v99, qword_1EA843418);
        v89 = sub_182AD2678();
        v90 = sub_182AD38B8();
        if (!os_log_type_enabled(v89, v90))
        {
          goto LABEL_118;
        }

        v91 = "nt is greater than ";
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v127 = v93;
        *v92 = 136315650;
        v100 = sub_182AD3BF8();
        v102 = sub_181C64FFC(v100, v101, &v127);

        *(v92 + 4) = v102;
        *(v92 + 12) = 2080;
        *(v92 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v127);
        *(v92 + 22) = 2080;
        v97 = 0xD000000000000025;
LABEL_116:
        *(v92 + 24) = sub_181C64FFC(v97, v91 | 0x8000000000000000, &v127);
        _os_log_impl(&dword_181A37000, v89, v90, "%s %s %s", v92, 0x20u);
        swift_arrayDestroy();
        v98 = v93;
LABEL_117:
        MEMORY[0x1865DF520](v98, -1, -1);
        MEMORY[0x1865DF520](v92, -1, -1);
        goto LABEL_118;
      }

      v39 = v38;
      v40 = v129;
      if (v130 != 1)
      {
        goto LABEL_31;
      }

      if (v129)
      {

        goto LABEL_106;
      }

      if (v127)
      {
        v41 = *(&v127 + 1) - v127;
      }

      else
      {
        v41 = 0;
      }

      v42 = __OFSUB__(v41, v128);
      v40 = v41 - v128;
      if (v42)
      {
        goto LABEL_125;
      }

      if (v40 < 0)
      {
        goto LABEL_126;
      }

      if (!v40)
      {

        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
LABEL_31:
        v43 = *v6;
        v44 = *v6 - v40;
        if (__OFSUB__(*v6, v40))
        {
          goto LABEL_122;
        }

        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_123;
        }

        v45 = v43 - v44;
        if (v43 < v44)
        {
          goto LABEL_124;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v45 <= *(v5 + 3) >> 1)
        {
          a1 = v124;
          if (v44)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v43 <= v45)
          {
            v47 = v43 - v44;
          }

          else
          {
            v47 = v43;
          }

          v5 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v47, 1, v5);
          a1 = v124;
          if (v44)
          {
LABEL_42:
            v48 = *(v5 + 2) - v44;
            memmove(v5 + 32, &v5[v44 + 32], v48);
            *(v5 + 2) = v48;
          }
        }
      }

      *a1 = v5;
      v4 = *(v5 + 2);
      if (v4 < v39 || v39 > 0xFFFE)
      {

        *&v127 = 0;
        *(&v127 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v127 = 0x2064696C61766E69;
        *(&v127 + 1) = 0xEF206874676E656CLL;
        v133 = v39;
        v86 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v86);

        v18 = *(&v127 + 1);
        v19 = v127;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v87 = sub_182AD2698();
        __swift_project_value_buffer(v87, qword_1EA843418);

        v21 = sub_182AD2678();
        v22 = sub_182AD38B8();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *&v127 = v24;
          goto LABEL_13;
        }

LABEL_104:

        goto LABEL_105;
      }

      if (v4 == v39)
      {

        v50 = v5;
        v4 = v39;
      }

      else if (v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
        v50 = swift_allocObject();
        v51 = _swift_stdlib_malloc_size(v50);
        v50[2] = v39;
        v50[3] = 2 * v51 - 64;
        memcpy(v50 + 4, v5 + 32, v39);
        v4 = *(v5 + 2);
        if (v4 < v39)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v50 = MEMORY[0x1E69E7CC0];
      }

      v52 = v4 - v39;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      if (v53 && v52 <= *(v5 + 3) >> 1)
      {
        if (!v39)
        {
          goto LABEL_58;
        }

LABEL_57:
        v4 = *(v5 + 2) - v39;
        memmove(v5 + 32, &v5[v39 + 32], v4);
        *(v5 + 2) = v4;
        goto LABEL_58;
      }

      if (v4 <= v52)
      {
        v62 = v4 - v39;
      }

      else
      {
        v62 = v4;
      }

      v5 = sub_181ADBA10(v53, v62, 1, v5);
      if (v39)
      {
        goto LABEL_57;
      }

LABEL_58:
      v54 = v5;
      *a1 = v5;
      sub_1822D0088(v37, v50, &v125, &v127);
      if (!v2)
      {
        break;
      }

      v4 = v125;
      v55 = v126;

      if ((v55 & 0xF0) != 0x70 || v4 != 2)
      {

        return v4;
      }

      if (v123)
      {
        *&v127 = 0;
        *(&v127 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        strcpy(&v127, "<unknown type ");
        HIBYTE(v127) = -18;
        v133 = v37;
        v56 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v56);

        MEMORY[0x1865D9CA0](0x206E656C3C203ELL, 0xE700000000000000);
        v133 = v39;
        v57 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v57);

        MEMORY[0x1865D9CA0](62, 0xE100000000000000);
        v58 = v127;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v59 = sub_182AD2698();
        __swift_project_value_buffer(v59, qword_1EA843418);

        v60 = sub_182AD2678();
        v61 = sub_182AD38A8();

        if (os_log_type_enabled(v60, v61))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *&v127 = v31;
          *v30 = 136315650;
          v32 = sub_182AD3BF8();
          v34 = sub_181C64FFC(v32, v33, &v127);

          *(v30 + 4) = v34;
          *(v30 + 12) = 2080;
          *(v30 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v127);
          *(v30 + 22) = 2080;
          v35 = sub_181C64FFC(v58, *(&v58 + 1), &v127);

          *(v30 + 24) = v35;
          a1 = v124;
          _os_log_impl(&dword_181A37000, v60, v61, "%s %s %s", v30, 0x20u);
          swift_arrayDestroy();
          v36 = v31;
          v5 = v54;
          MEMORY[0x1865DF520](v36, -1, -1);
          MEMORY[0x1865DF520](v30, -1, -1);
        }

        else
        {
        }
      }

      v2 = 0;
      v6 = (v5 + 16);
      v29 = *(v5 + 2);
      if (!v29)
      {
        v4 = v122;
        goto LABEL_108;
      }
    }

    v2 = 0;

    v63 = *(&v127 + 1);
    v64 = v127;
    v65 = v130;
    v66 = v130 >> 59;
    v115 = v131;
    v116 = v132;
    v113 = v128;
    v114 = v129;
    if (v130 >> 59 > 0xA)
    {
      if (v66 == 11)
      {
        if (qword_1EA837280 != -1)
        {
          swift_once();
        }

        v4 = qword_1EA843450;
        if (qword_1EA843450 >= v63)
        {
          v119 = 0;
          LOBYTE(v66) = v64;
          v117 = v63;
          goto LABEL_86;
        }

        *&v127 = 0;
        *(&v127 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v127 = 0xD00000000000001ELL;
        *(&v127 + 1) = 0x8000000182BE4DA0;
        v133 = v4;
LABEL_132:
        v103 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v103);

        v104 = v127;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v105 = sub_182AD2698();
        __swift_project_value_buffer(v105, qword_1EA843418);

        v89 = sub_182AD2678();
        v106 = sub_182AD38B8();

        if (!os_log_type_enabled(v89, v106))
        {

          goto LABEL_118;
        }

        v92 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v127 = v107;
        *v92 = 136315650;
        v108 = sub_182AD3BF8();
        v110 = sub_181C64FFC(v108, v109, &v127);

        *(v92 + 4) = v110;
        *(v92 + 12) = 2080;
        *(v92 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v127);
        *(v92 + 22) = 2080;
        v111 = sub_181C64FFC(v104, *(&v104 + 1), &v127);

        *(v92 + 24) = v111;
        _os_log_impl(&dword_181A37000, v89, v106, "%s %s %s", v92, 0x20u);
        swift_arrayDestroy();
        v98 = v107;
        goto LABEL_117;
      }

      if (v66 == 19)
      {
        v120 = 0;
        v118 = *(&v127 + 1);
        LOBYTE(v66) = v127;
        goto LABEL_86;
      }

LABEL_79:
      switch(v66)
      {
        case 0xCuLL:
          goto LABEL_86;
        default:
          goto LABEL_81;
      }

      goto LABEL_86;
    }

    if (v66 == 3)
    {
      if ((*(&v127 + 1) - 65528) >= 0xFFFFFFFFFFFF04B8)
      {
        goto LABEL_81;
      }

      goto LABEL_127;
    }

    if (v66 != 10)
    {
      goto LABEL_79;
    }

    if (*(&v127 + 1) >= 0x15uLL)
    {

      *&v127 = 0;
      *(&v127 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v127 = 0xD000000000000023;
      *(&v127 + 1) = 0x8000000182BE4DC0;
      v133 = 20;
      goto LABEL_132;
    }

LABEL_81:
    LOBYTE(v66) = v127;
LABEL_86:
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v122;
    v68 = sub_18224F168(v66);
    v70 = *(v122 + 16);
    v71 = (v69 & 1) == 0;
    v42 = __OFADD__(v70, v71);
    v72 = v70 + v71;
    if (v42)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      swift_once();
LABEL_111:
      if (is_mul_ok(v117, qword_1EA843200))
      {
        if (v117 * qword_1EA843200 >= v118)
        {
          return v4;
        }

        if (qword_1EA837248 == -1)
        {
          goto LABEL_114;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_114:
      v88 = sub_182AD2698();
      __swift_project_value_buffer(v88, qword_1EA843418);
      v89 = sub_182AD2678();
      v90 = sub_182AD38B8();
      if (!os_log_type_enabled(v89, v90))
      {
LABEL_118:

        v127 = xmmword_182AE69F0;
        LOBYTE(v128) = 112;
        sub_181F5F494();
        swift_willThrowTypedImpl();
        return 1;
      }

      v91 = "size is out of bounds";
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v127 = v93;
      *v92 = 136315650;
      v94 = sub_182AD3BF8();
      v96 = sub_181C64FFC(v94, v95, &v127);

      *(v92 + 4) = v96;
      *(v92 + 12) = 2080;
      *(v92 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v127);
      *(v92 + 22) = 2080;
      v97 = 0xD00000000000002BLL;
      goto LABEL_116;
    }

    v4 = v69;
    if (*(v122 + 24) >= v72)
    {
      if ((v67 & 1) == 0)
      {
        v85 = v68;
        sub_182255788();
        v68 = v85;
      }
    }

    else
    {
      sub_18225133C(v72, v67);
      v68 = sub_18224F168(v66);
      if ((v4 & 1) != (v73 & 1))
      {
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    v74 = v127;
    if (v4)
    {
      v75 = (*(v127 + 56) + 56 * v68);
      v76 = *v75;
      v77 = v75[1];
      v78 = v75[2];
      v79 = v75[3];
      v80 = v75[4];
      *v75 = v64;
      v75[1] = v63;
      v75[2] = v113;
      v75[3] = v114;
      v75[4] = v65;
      v75[5] = v115;
      v75[6] = v116;
      sub_18206A46C(v76, v77, v78, v79, v80);
      v4 = v74;
      goto LABEL_96;
    }

    *(v127 + 8 * (v68 >> 6) + 64) |= 1 << v68;
    *(v74[6] + v68) = v66;
    v81 = (v74[7] + 56 * v68);
    *v81 = v64;
    v81[1] = v63;
    v81[2] = v113;
    v81[3] = v114;
    v81[4] = v65;
    v81[5] = v115;
    v81[6] = v116;
    v82 = v74[2];
    v42 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v42)
    {
      goto LABEL_138;
    }

    v4 = v74;
    v74[2] = v83;
LABEL_96:
    a1 = v124;
    v5 = v54;
    v84 = *(v54 + 2);
    v6 = (v54 + 16);
    v29 = v84;
    if (v84)
    {
      continue;
    }

    break;
  }

LABEL_108:
  if ((v120 & 1) == 0 && (v119 & 1) == 0)
  {
    if (qword_1EA837020 == -1)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  return v4;
}

uint64_t sub_1822D2850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1822D2928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 5;
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

double sub_1822D2978(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 32 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1822D29E8(uint64_t result, int a2)
{
  *result &= 0x1FuLL;
  *(result + 36) = a2 << 27;
  return result;
}

uint64_t getEnumTagSinglePayload for TransportParameterTypes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportParameterTypes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1822D2B64()
{
  result = qword_1EA83C0C8;
  if (!qword_1EA83C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83C0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0C8);
  }

  return result;
}

unint64_t sub_1822D2BCC()
{
  result = qword_1EA83C0D8;
  if (!qword_1EA83C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0D8);
  }

  return result;
}

unint64_t sub_1822D2C44()
{
  result = qword_1EA83C0E0;
  if (!qword_1EA83C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0E0);
  }

  return result;
}

unint64_t sub_1822D2C9C()
{
  result = qword_1EA83C0E8;
  if (!qword_1EA83C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0E8);
  }

  return result;
}

unint64_t sub_1822D2CF0()
{
  result = qword_1EA83C0F0;
  if (!qword_1EA83C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0F0);
  }

  return result;
}

unint64_t sub_1822D2D44()
{
  result = qword_1EA83C0F8;
  if (!qword_1EA83C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0F8);
  }

  return result;
}

void nw_aop2_offload_options_set_control_client_name(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ((nw_protocol_options_is_aop2_offload(v3) & 1) == 0)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_aop2_offload_options_set_control_client_name";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_client_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_aop2_offload_options_set_control_client_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_client_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_client_name";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_aop2_offload_options_set_control_client_name_block_invoke;
    v18[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v18[4] = a2;
    nw_protocol_options_access_handle(v3, v18);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_aop2_offload_options_set_control_client_name";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_client_name";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null name", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_client_name";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_client_name";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_aop2_offload_options_set_control_client_name";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t nw_protocol_options_is_aop2_offload(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_setup_aop2_offload_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_aop2_offload_definition(void)::onceToken, &__block_literal_global);
    }

    v2 = nw_protocol_options_matches_definition(v1, g_aop2_offload_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_options_is_aop2_offload";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_aop2_offload";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_options_is_aop2_offload";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_aop2_offload";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_aop2_offload";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

uint64_t __nw_aop2_offload_options_set_control_client_name_block_invoke(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v7);
    if (result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    free(v7);
    a2 = 0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v8 = a2;
  v9 = __nwlog_obj();
  os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  v10 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v10);
  if (result)
  {
    goto LABEL_12;
  }

  free(v10);
  a2 = v8;
LABEL_3:
  v3 = 128;
  while (1)
  {
    v4 = *v2;
    *a2 = v4;
    if (!v4)
    {
      break;
    }

    ++a2;
    ++v2;
    if (--v3 <= 1)
    {
      *a2 = 0;
      return 1;
    }
  }

  return 1;
}

uint64_t ___ZL41nw_protocol_setup_aop2_offload_definitionv_block_invoke()
{
  if (nw_protocol_aop2_offload_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_aop2_offload_identifier::onceToken, &__block_literal_global_25);
  }

  v0 = nw_protocol_definition_create_with_identifier(nw_protocol_aop2_offload_identifier::identifier);
  v1 = g_aop2_offload_definition;
  g_aop2_offload_definition = v0;

  nw_protocol_definition_set_options_allocator(g_aop2_offload_definition, nw_aop2_offload_allocate_options, nw_aop2_offload_copy_options, nw_aop2_offload_deallocate_options);
  nw_protocol_definition_set_options_equality_check(g_aop2_offload_definition, nw_aop2_offload_option_is_equal);
  nw_protocol_definition_set_options_serializer(g_aop2_offload_definition, 0, nw_aop2_offload_serialize_options, nw_aop2_offload_deserialize_options);
  nw_protocol_definition_set_has_global_definition(g_aop2_offload_definition);
  v2 = g_aop2_offload_definition;

  return nw_protocol_register_handle(nw_protocol_aop2_offload_identifier::identifier, v2, nw_protocol_aop2_offload_create, 0);
}

uint64_t nw_aop2_offload_deserialize_options(void *a1, const void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v5;
  if (v6)
  {
    if (a3 == 516)
    {
      v8 = nw_aop2_offload_copy_options(v5, v6);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_aop2_offload_deserialize_options";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options))", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options)), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options)), no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446466;
        v26 = "nw_aop2_offload_deserialize_options";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options)), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_aop2_offload_deserialize_options";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null serialized_bytes", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null serialized_bytes, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null serialized_bytes, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v26 = "nw_aop2_offload_deserialize_options";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null serialized_bytes, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_4:

  return v8;
}

uint64_t nw_aop2_offload_copy_options(void *a1, const void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_aop2_offload_copy_options";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v12, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_aop2_offload_copy_options";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null existing_handle", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v22 = "nw_aop2_offload_copy_options";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_aop2_offload_copy_options";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null existing_handle, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_aop2_offload_copy_options";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null existing_handle, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v12)
    {
      free(v12);
    }

    v5 = 0;
    goto LABEL_8;
  }

  v4 = malloc_type_calloc(1uLL, 0x204uLL, 0xD8FFE611uLL);
  v5 = v4;
  if (v4)
  {
    bzero(v4, 0x204uLL);
LABEL_7:
    memcpy(v5, a2, 0x204uLL);
LABEL_8:

    return v5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v22 = "nw_aop2_offload_copy_options";
  v23 = 2048;
  v24 = 1;
  v25 = 2048;
  v26 = 516;
  v7 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    bzero(0, 0x204uLL);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v22 = "nw_aop2_offload_copy_options";
    v10 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v10);
    if (!result)
    {
      free(v10);
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_aop2_offload_serialize_options(void *a1, const void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v5;
  if (v6)
  {
    v8 = nw_aop2_offload_copy_options(v5, v6);
    *a3 = 516;
    goto LABEL_3;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_aop2_offload_serialize_options";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_aop2_offload_serialize_options";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null existing_handle", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_aop2_offload_serialize_options";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_aop2_offload_serialize_options";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null existing_handle, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_aop2_offload_serialize_options";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null existing_handle, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_3:

  return v8;
}

void nw_aop2_offload_deallocate_options(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t nw_aop2_offload_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x204uLL, 0x14C7C89CuLL);
  if (v2)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
LABEL_4:

    return v2;
  }

  __break(1u);
  return result;
}

void nw_aop2_offload_options_set_control_server_name(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ((nw_protocol_options_is_aop2_offload(v3) & 1) == 0)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_aop2_offload_options_set_control_server_name";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_server_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_aop2_offload_options_set_control_server_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_server_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_server_name";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_aop2_offload_options_set_control_server_name_block_invoke;
    v18[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v18[4] = a2;
    nw_protocol_options_access_handle(v3, v18);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_aop2_offload_options_set_control_server_name";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_server_name";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null name", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_server_name";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_server_name";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_aop2_offload_options_set_control_server_name";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t __nw_aop2_offload_options_set_control_server_name_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v7 = a2;
    v8 = __nwlog_obj();
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    v9 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v9);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v9);
    a2 = v7;
  }

  v3 = (a2 + 128);
  v4 = 128;
  while (1)
  {
    v5 = *v2;
    *v3 = v5;
    if (!v5)
    {
      break;
    }

    ++v3;
    ++v2;
    if (--v4 <= 1)
    {
      *v3 = 0;
      return 1;
    }
  }

  return 1;
}

void nw_aop2_offload_options_set_data_tx_name(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ((nw_protocol_options_is_aop2_offload(v3) & 1) == 0)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_aop2_offload_options_set_data_tx_name";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_tx_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_aop2_offload_options_set_data_tx_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_tx_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_tx_name";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_aop2_offload_options_set_data_tx_name_block_invoke;
    v18[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v18[4] = a2;
    nw_protocol_options_access_handle(v3, v18);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_aop2_offload_options_set_data_tx_name";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_tx_name";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null name", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_tx_name";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_tx_name";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_aop2_offload_options_set_data_tx_name";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t __nw_aop2_offload_options_set_data_tx_name_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v7 = a2;
    v8 = __nwlog_obj();
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    v9 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v9);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v9);
    a2 = v7;
  }

  v3 = (a2 + 256);
  v4 = 128;
  while (1)
  {
    v5 = *v2;
    *v3 = v5;
    if (!v5)
    {
      break;
    }

    ++v3;
    ++v2;
    if (--v4 <= 1)
    {
      *v3 = 0;
      return 1;
    }
  }

  return 1;
}

void nw_aop2_offload_options_set_data_rx_name(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ((nw_protocol_options_is_aop2_offload(v3) & 1) == 0)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_aop2_offload_options_set_data_rx_name";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_rx_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_aop2_offload_options_set_data_rx_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_rx_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_rx_name";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_aop2_offload_options_set_data_rx_name_block_invoke;
    v18[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v18[4] = a2;
    nw_protocol_options_access_handle(v3, v18);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_aop2_offload_options_set_data_rx_name";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_rx_name";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null name", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_rx_name";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_rx_name";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_aop2_offload_options_set_data_rx_name";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t __nw_aop2_offload_options_set_data_rx_name_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v7 = a2;
    v8 = __nwlog_obj();
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    v9 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v9);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v9);
    a2 = v7;
  }

  v3 = (a2 + 384);
  v4 = 128;
  while (1)
  {
    v5 = *v2;
    *v3 = v5;
    if (!v5)
    {
      break;
    }

    ++v3;
    ++v2;
    if (--v4 <= 1)
    {
      *v3 = 0;
      return 1;
    }
  }

  return 1;
}

void nw_aop2_offload_options_set_psk_binder_algorithm(void *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_aop2_offload(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_aop2_offload_options_set_psk_binder_algorithm_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_aop2_offload_options_set_psk_binder_algorithm";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_aop2_offload_options_set_psk_binder_algorithm";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v17 = "nw_aop2_offload_options_set_psk_binder_algorithm";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_aop2_offload_options_set_psk_binder_algorithm";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_aop2_offload_options_set_psk_binder_algorithm";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}