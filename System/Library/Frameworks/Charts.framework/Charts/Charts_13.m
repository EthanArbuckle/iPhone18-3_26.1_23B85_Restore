void *sub_1AAD99628()
{
  v1 = v0;
  sub_1AAD20E00();
  v2 = *v0;
  v3 = sub_1AAF90384();
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

void *sub_1AAD99778()
{
  v1 = v0;
  sub_1AAD9AE40(0, &qword_1EB4241B8, sub_1AAD9AEAC);
  v2 = *v0;
  v3 = sub_1AAF90384();
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

void *sub_1AAD998F4()
{
  v1 = v0;
  sub_1AAD9AD84();
  v2 = *v0;
  v3 = sub_1AAF90384();
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
        result = sub_1AAD9ADE4(*(v2 + 56) + 48 * v17, &v22);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 48 * v17);
        v20 = *&v23[9];
        v21 = *v23;
        *v19 = v22;
        v19[1] = v21;
        *(v19 + 25) = v20;
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

void *sub_1AAD99AA0(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AAF90384();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 56) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        v22 = (*(v5 + 56) + 16 * v18);
        *v22 = v21;
        v22[1] = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1AAD99C04()
{
  v1 = v0;
  sub_1AAD9ACC4();
  v2 = *v0;
  v3 = sub_1AAF90384();
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

void *sub_1AAD99D54()
{
  v1 = v0;
  sub_1AAD9BF84(0, &qword_1ED9B2930, sub_1AACB62F8);
  v2 = *v0;
  v3 = sub_1AAF90384();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1AACC74AC(&v29, v28))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = *(v2 + 56) + 88 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v34 = *(v18 + 80);
      v32 = v20;
      v33 = v21;
      v22 = *(v18 + 16);
      v29 = *v18;
      v30 = v22;
      v31 = v19;
      *(*(v4 + 48) + v16) = v17;
      v23 = *(v4 + 56) + 88 * v16;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v23 + 80) = v34;
      *(v23 + 48) = v26;
      *(v23 + 64) = v27;
      *(v23 + 32) = v25;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_1AAD99F34(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;

  v11 = sub_1AADB0938(v10);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1AAD89710(v16, v6 & 1);
    v11 = sub_1AADB0938(v8);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1AAF905B4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1AAD945D8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1AACBB650(0, &qword_1EB424158);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v8;
  *(v22[7] + 8 * v11) = v7;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0xD00000000000001BLL, 0x80000001AAFCDCD0);
    sub_1AAF90284();
    MEMORY[0x1AC5982F0](39, 0xE100000000000000);
    sub_1AAF902C4();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v7 = 1;
    while (v7 < a1[2])
    {
      v8 = *(v6 - 1);
      v25 = *v6;
      v26 = *a3;

      v28 = sub_1AADB0938(v27);
      v30 = v26[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v26[3] < v32)
      {
        sub_1AAD89710(v32, 1);
        v28 = sub_1AADB0938(v8);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v8;
      *(v34[7] + 8 * v28) = v25;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1AAD9A288(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AAD9A2D4()
{
  result = qword_1EB424110;
  if (!qword_1EB424110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424110);
  }

  return result;
}

uint64_t sub_1AAD9A328(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AAD9A3D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAD9B62C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAD9A440(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AAD9B4A8(0, a3, a4, a5, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAD9A4C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AAD9B4A8(0, a2, a3, a4, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAD9A534(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAD9B62C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1AAD9A5B4(_OWORD *a1)
{
  result = 0.0;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1AAD9A6F4()
{
  if (!qword_1EB422FC0)
  {
    sub_1AACBB650(255, &qword_1EB424650);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB422FC0);
    }
  }
}

void sub_1AAD9A760()
{
  if (!qword_1EB424140)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1AAD9B62C(255, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle, MEMORY[0x1E69E6720]);
    sub_1AAD9B62C(255, &qword_1EB424148, &type metadata for PlottedValueCollector.Result, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424140);
    }
  }
}

uint64_t sub_1AAD9A814(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1AAD9A828(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AAD9A83C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AAD9A83C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1AAD9A850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AAD9A814(a1, a2, a3);
  }

  return a1;
}

void sub_1AAD9A864(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AAD9B4A8(255, a3, a4, a5, type metadata accessor for Resolved3DContentList.Item);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AAD9A8E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AAD9B4A8(0, a3, a4, a5, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

unint64_t sub_1AAD9AA1C()
{
  result = qword_1ED9B36C8;
  if (!qword_1ED9B36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B36C8);
  }

  return result;
}

uint64_t sub_1AAD9AAA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AAD9AABC()
{
  if (!qword_1EB424180)
  {
    v0 = sub_1AAF8F9B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424180);
    }
  }
}

uint64_t sub_1AAD9AB7C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1AAD9A864(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AAD9ABF0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1AAD9A864(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1AAD9AC64()
{
  if (!qword_1EB4241A0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241A0);
    }
  }
}

void sub_1AAD9ACC4()
{
  if (!qword_1ED9B16C0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16C0);
    }
  }
}

void sub_1AAD9AD24()
{
  if (!qword_1EB4241A8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241A8);
    }
  }
}

void sub_1AAD9AD84()
{
  if (!qword_1EB4241B0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241B0);
    }
  }
}

void sub_1AAD9AE40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF903B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD9AEAC()
{
  if (!qword_1EB4241C0)
  {
    sub_1AAD9AF04();
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241C0);
    }
  }
}

void sub_1AAD9AF04()
{
  if (!qword_1EB423AC8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423AC8);
    }
  }
}

void sub_1AAD9AF64()
{
  if (!qword_1EB4241C8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241C8);
    }
  }
}

void sub_1AAD9AFC4()
{
  if (!qword_1ED9B16B8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16B8);
    }
  }
}

uint64_t sub_1AAD9B024(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

void sub_1AAD9B074()
{
  if (!qword_1ED9B2910)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2910);
    }
  }
}

void sub_1AAD9B0D4()
{
  if (!qword_1EB4241D0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241D0);
    }
  }
}

void sub_1AAD9B134()
{
  if (!qword_1EB4241D8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241D8);
    }
  }
}

void sub_1AAD9B1F0()
{
  if (!qword_1EB4241E0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241E0);
    }
  }
}

void sub_1AAD9B250()
{
  if (!qword_1EB4241E8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241E8);
    }
  }
}

void sub_1AAD9B2B0()
{
  if (!qword_1ED9AD780)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD780);
    }
  }
}

void sub_1AAD9B310()
{
  if (!qword_1ED9AD788)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD788);
    }
  }
}

unint64_t sub_1AAD9B370()
{
  result = qword_1ED9AED68;
  if (!qword_1ED9AED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AED68);
  }

  return result;
}

unint64_t sub_1AAD9B3C4()
{
  result = qword_1ED9B0F00;
  if (!qword_1ED9B0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F00);
  }

  return result;
}

void sub_1AAD9B418()
{
  if (!qword_1ED9AEED0)
  {
    sub_1AAD9B62C(255, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
    sub_1AAD81B28();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEED0);
    }
  }
}

void sub_1AAD9B4A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AAD9B4FC()
{
  if (!qword_1ED9B16F0)
  {
    sub_1AAD9B62C(255, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16F0);
    }
  }
}

unint64_t sub_1AAD9B578()
{
  result = qword_1ED9B1B20;
  if (!qword_1ED9B1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1B20);
  }

  return result;
}

void sub_1AAD9B5CC()
{
  if (!qword_1ED9B16C8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16C8);
    }
  }
}

void sub_1AAD9B62C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AAD9B67C()
{
  if (!qword_1ED9AD790)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD790);
    }
  }
}

void sub_1AAD9B6DC()
{
  if (!qword_1EB4241F0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241F0);
    }
  }
}

void sub_1AAD9B73C()
{
  if (!qword_1ED9AEED8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEED8);
    }
  }
}

void sub_1AAD9B79C()
{
  if (!qword_1EB4241F8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241F8);
    }
  }
}

void sub_1AAD9B7FC()
{
  if (!qword_1EB424200)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424200);
    }
  }
}

unint64_t sub_1AAD9B85C()
{
  result = qword_1ED9B0BF0;
  if (!qword_1ED9B0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0BF0);
  }

  return result;
}

void sub_1AAD9B90C()
{
  if (!qword_1EB424210)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424210);
    }
  }
}

unint64_t sub_1AAD9B96C()
{
  result = qword_1EB424220;
  if (!qword_1EB424220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424220);
  }

  return result;
}

unint64_t sub_1AAD9BA1C()
{
  result = qword_1ED9B03D0[0];
  if (!qword_1ED9B03D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B03D0);
  }

  return result;
}

uint64_t sub_1AAD9BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 < 0)
  {
    sub_1AACDC974(a1, a2, a3);

    return sub_1AACDC974(a4, a5, a6);
  }

  else
  {

    return sub_1AACCAE10(a1, a2, a3);
  }
}

void sub_1AAD9BAD4()
{
  if (!qword_1ED9B11A8)
  {
    type metadata accessor for CalendarCache.Key(255);
    sub_1AAD9C1D8(&qword_1ED9B1640, type metadata accessor for CalendarCache.Key);
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B11A8);
    }
  }
}

uint64_t sub_1AAD9BB70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD9BBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD9BC40(uint64_t a1)
{
  v2 = type metadata accessor for CalendarCache.Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAD9BC9C()
{
  if (!qword_1ED9B11B0)
  {
    sub_1AAF8CBA4();
    sub_1AAD9C1D8(&qword_1ED9B1650, MEMORY[0x1E6969AE8]);
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B11B0);
    }
  }
}

void sub_1AAD9BD38()
{
  if (!qword_1EB424228)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424228);
    }
  }
}

void sub_1AAD9BD98()
{
  if (!qword_1EB424230)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424230);
    }
  }
}

uint64_t sub_1AAD9BE5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 530))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAD9BEA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 520) = 0;
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
    *(result + 528) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
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
      *(result + 530) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 530) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AAD9BF84(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AAF903B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD9C048()
{
  if (!qword_1EB424248)
  {
    sub_1AAD216A8(255, &qword_1EB424250, &qword_1EB423B80);
    sub_1AAD80D58();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424248);
    }
  }
}

void sub_1AAD9C0CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1AAD9C128()
{
  result = qword_1EB424260;
  if (!qword_1EB424260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424260);
  }

  return result;
}

uint64_t sub_1AAD9C1D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AAD9C228()
{
  sub_1AAD9DF30(0, &qword_1EB424B60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v25 - v1;
  Value = AGGraphGetValue();
  sub_1AACB256C(Value, &v47, &unk_1ED9B4890);
  if (BYTE8(v49) == 255)
  {
    sub_1AAD9DF94(&v47, &unk_1ED9B4890);
  }

  else
  {
    if (BYTE8(v49))
    {
      sub_1AACBB198(&v47, &v38);
      goto LABEL_7;
    }

    sub_1AAD9E1BC(&v47);
  }

  v38 = 0u;
  v39 = 0u;
  v40 = 0;
LABEL_7:
  v41 = v38;
  v42 = v39;
  v43 = v40;
  v4 = AGGraphGetValue();
  sub_1AACB256C(v4 + 96, &v47, &unk_1ED9B4890);
  if (BYTE8(v49) == 255)
  {
    sub_1AAD9DF94(&v47, &unk_1ED9B4890);
  }

  else
  {
    if (BYTE8(v49))
    {
      sub_1AACBB198(&v47, &v35);
      goto LABEL_13;
    }

    sub_1AAD9E1BC(&v47);
  }

  v35 = 0u;
  v36 = 0u;
  v37 = 0;
LABEL_13:
  v38 = v35;
  v39 = v36;
  v40 = v37;
  v5 = AGGraphGetValue();
  sub_1AACB256C(v5 + 192, &v47, &unk_1ED9B4890);
  if (BYTE8(v49) == 255)
  {
    sub_1AAD9DF94(&v47, &unk_1ED9B4890);
LABEL_18:
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    goto LABEL_19;
  }

  if ((BYTE8(v49) & 1) == 0)
  {
    sub_1AAD9E1BC(&v47);
    goto LABEL_18;
  }

  sub_1AACBB198(&v47, &v32);
LABEL_19:
  v35 = v32;
  v36 = v33;
  v37 = v34;
  v6 = AGGraphGetValue();
  v7 = *(v6 + 400);
  v55 = *(v6 + 384);
  v56 = v7;
  v57 = *(v6 + 416);
  if (*(&v42 + 1) || *(&v39 + 1) || *(&v36 + 1) || *(&v55 + 1))
  {
    sub_1AACB1BC0(0, &qword_1EB423578);
    sub_1AACB256C(&v55, &v47, &qword_1EB424288);
    v8 = AGGraphGetValue();
    v9 = *(v8 + 16);
    v44 = *v8;
    v45 = v9;
    v46 = *(v8 + 32);
    v10 = AGGraphGetValue();
    v51 = *(v10 + 64);
    v52 = *(v10 + 80);
    v53 = *(v10 + 96);
    v54 = *(v10 + 112);
    v47 = *v10;
    v48 = *(v10 + 16);
    v49 = *(v10 + 32);
    v50 = *(v10 + 48);
    swift_unknownObjectRetain();
    v11 = sub_1AAF8D054();
    swift_unknownObjectRelease();
    v12 = 0;
    if (v11)
    {
      v12 = sub_1AAF8CF24();
    }

    else
    {
      v31[1] = 0;
      v31[2] = 0;
    }

    v31[0] = v11;
    v31[3] = v12;
    sub_1AACB256C(v31, &v32, &qword_1EB426A80);
    if (*(&v33 + 1))
    {
      sub_1AACED35C(&v32, v30);
      v13 = sub_1AAF8F994();
      (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
      sub_1AACED220(v30, v29);
      sub_1AAD9DC68(&v41, &v32);
      sub_1AAD9DC68(&v38, v27);
      sub_1AAD9DC68(&v35, v25);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      sub_1AACED35C(v29, (v14 + 32));
      v15 = v45;
      *(v14 + 64) = v44;
      *(v14 + 80) = v15;
      *(v14 + 96) = v46;
      v16 = v52;
      *(v14 + 168) = v51;
      *(v14 + 184) = v16;
      *(v14 + 200) = v53;
      *(v14 + 216) = v54;
      v17 = v48;
      *(v14 + 104) = v47;
      *(v14 + 120) = v17;
      v18 = v50;
      *(v14 + 136) = v49;
      *(v14 + 152) = v18;
      *(v14 + 256) = v34;
      v19 = v33;
      *(v14 + 224) = v32;
      *(v14 + 240) = v19;
      *(v14 + 296) = v28;
      v20 = v27[1];
      *(v14 + 264) = v27[0];
      *(v14 + 280) = v20;
      v21 = v25[1];
      *(v14 + 304) = v25[0];
      *(v14 + 320) = v21;
      *(v14 + 336) = v26;
      v22 = v55;
      v23 = v56;
      *(v14 + 384) = v57;
      *(v14 + 352) = v22;
      *(v14 + 368) = v23;
      sub_1AACB256C(&v55, &v32, &qword_1EB424288);
      sub_1AADC0CA4(0, 0, v2, &unk_1AAF95DB0, v14);

      sub_1AAD9DF94(&v55, &qword_1EB424288);
      sub_1AACB634C(v30);
      sub_1AAD9DEC0(&v41, &qword_1EB424278, sub_1AAD9DCFC);
    }

    else
    {
      sub_1AAD9DF94(&v55, &qword_1EB424288);
      sub_1AAD9DEC0(&v41, &qword_1EB424278, sub_1AAD9DCFC);
      sub_1AAD9DF94(&v32, &qword_1EB426A80);
    }

    sub_1AAD9DF94(v31, &qword_1EB426A80);
  }

  else
  {
    sub_1AAD9DEC0(&v41, &qword_1EB424278, sub_1AAD9DCFC);
  }

  sub_1AAD9DEC0(&v35, &qword_1EB424278, sub_1AAD9DCFC);
  return sub_1AAD9DEC0(&v38, &qword_1EB424278, sub_1AAD9DCFC);
}

uint64_t sub_1AAD9C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v10;
  v8[13] = v11;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AAD9C890, 0, 0);
}

uint64_t sub_1AAD9C890()
{
  sub_1AACED220(v0[7], (v0 + 2));
  sub_1AAF8CF24();
  swift_dynamicCast();
  v1 = v0[6];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1AAD9C968;
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  return sub_1AAD9CA78(v1, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_1AAD9C968()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AAD9CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[98] = a7;
  v7[97] = a6;
  v7[96] = a5;
  v7[95] = a4;
  v7[94] = a3;
  v7[93] = a2;
  v7[92] = a1;
  v7[90] = v7;
  sub_1AAD9DF30(0, &qword_1EB424270, MEMORY[0x1E697A1F0], MEMORY[0x1E69E6720]);
  v7[99] = swift_task_alloc();
  v8 = sub_1AAF8CD94();
  v7[100] = v8;
  v7[101] = *(v8 - 8);
  v7[102] = swift_task_alloc();
  v9 = sub_1AAF8CEE4();
  v7[103] = v9;
  v7[104] = *(v9 - 8);
  v7[105] = swift_task_alloc();
  v10 = sub_1AAF8CE84();
  v7[106] = v10;
  v7[107] = *(v10 - 8);
  v7[108] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AAD9CC8C, 0, 0);
}

uint64_t sub_1AAD9CC8C()
{
  v1 = (v0 + 16);
  v2 = (v0 + 296);
  v3 = (v0 + 376);
  v4 = (v0 + 456);
  v5 = v0 + 96;
  v6 = (v0 + 176);
  v7 = v0 + 416;
  v8 = (v0 + 576);
  v9 = v0 + 720;
  v10 = *(v0 + 744);
  *(v0 + 720) = v0;
  v11 = *v10;
  v12 = v10[1];
  *(v0 + 48) = *(v10 + 32);
  *(v0 + 32) = v12;
  *(v0 + 16) = v11;
  if (*(v0 + 48) == 1)
  {
    sub_1AAD9DC68(*(v0 + 760), v0 + 296);
    if (*(v0 + 320))
    {
      v32 = v0 + 720;
      v17 = v0 + 96;
      v18 = v0 + 416;
      v19 = *(v0 + 320);
      v20 = v2[4];
      sub_1AACBB42C(v2, v2[3]);
      (*(v20 + 24))(0, 1, v19, v20);
      sub_1AACB634C(v2);
      v7 = v18;
      v5 = v17;
      v9 = v32;
    }

    else
    {
      sub_1AAD9DEC0(v0 + 296, &qword_1EB424278, sub_1AAD9DCFC);
    }

    sub_1AAD9DC68(*(v1 + 94), v3);
    if (v3[3])
    {
      v21 = v3[3];
      v22 = v3[4];
      sub_1AACBB42C(v3, v21);
      (*(v22 + 24))(0, 1, v21, v22);
      sub_1AACB634C(v3);
    }

    else
    {
      sub_1AAD9DEC0(v3, &qword_1EB424278, sub_1AAD9DCFC);
    }

    sub_1AAD9DC68(*(v1 + 95), v4);
    if (v4[3])
    {
      v23 = v4[3];
      v24 = v4[4];
      sub_1AACBB42C(v4, v23);
      (*(v24 + 24))(0, 1, v23, v24);
      sub_1AACB634C(v4);
    }

    else
    {
      sub_1AAD9DEC0(v4, &qword_1EB424278, sub_1AAD9DCFC);
    }

    v25 = *(v1 + 96);
    sub_1AACB256C(v25, v7, &qword_1EB424288);
    v26 = *v25;
    v27 = *(v25 + 16);
    *(v6 + 32) = *(v25 + 32);
    v6[1] = v27;
    *v6 = v26;
    if (*(v6 + 1))
    {
      v28 = *v6;
      v29 = v6[1];
      *(v5 + 32) = *(v6 + 32);
      *(v5 + 16) = v29;
      *v5 = v28;
      sub_1AAE847F0();
      sub_1AAD9DDE4(v5);
    }

    v30 = *(*v9 + 8);

    __asm { BR              X0 }
  }

  v13 = *(v0 + 840);
  v14 = *v1;
  *(v0 + 592) = *(v0 + 32);
  *v8 = v14;
  *(v0 + 608) = *v8;
  *(v0 + 624) = *(v0 + 592);
  *(v0 + 52) = sub_1AAD9DD60();
  sub_1AAD9DD6C(v13);
  sub_1AAD9DDE0();
  *(v0 + 872) = sub_1AAF8F974();
  *(v0 + 880) = sub_1AAF8F964();
  v16 = sub_1AAF8F954();

  return MEMORY[0x1EEE6DFA0](sub_1AAD9D0D0, v16, v15);
}

uint64_t sub_1AAD9D0D0()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v0[90] = v0;
  v0[111] = sub_1AAF8CF14();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1AAD9D1E8, 0, 0);
}

uint64_t sub_1AAD9D1E8()
{
  v1 = v0 + 2;
  v2 = v0 + 37;
  v3 = v0 + 47;
  v4 = v0 + 57;
  v27 = (v0 + 12);
  v26 = v0 + 22;
  v25 = (v0 + 52);
  v5 = v0 + 90;
  v6 = v0[111];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[99];
  v0[90] = v0;
  v0[91] = v6;
  sub_1AAD9DF30(0, &qword_1EB424290, MEMORY[0x1E697A1F0], MEMORY[0x1E69E62F8]);
  sub_1AAD9DE38();
  sub_1AAF8FBF4();
  if ((*(v7 + 48))(v9, 1, v8) == 1)
  {
    sub_1AAD9DEC0(v0[99], &qword_1EB424270, MEMORY[0x1E697A1F0]);

    sub_1AAD9DC68(v0[95], v2);
    if (v0[40])
    {
      v12 = v0[40];
      v13 = v2[4];
      sub_1AACBB42C(v2, v2[3]);
      (*(v13 + 24))(0, 1, v12, v13);
      sub_1AACB634C(v2);
    }

    else
    {
      sub_1AAD9DEC0(v2, &qword_1EB424278, sub_1AAD9DCFC);
    }

    sub_1AAD9DC68(v1[94], v3);
    if (v3[3])
    {
      v14 = v3[3];
      v15 = v3[4];
      sub_1AACBB42C(v3, v14);
      (*(v15 + 24))(0, 1, v14, v15);
      sub_1AACB634C(v3);
    }

    else
    {
      sub_1AAD9DEC0(v3, &qword_1EB424278, sub_1AAD9DCFC);
    }

    sub_1AAD9DC68(v1[95], v4);
    if (v4[3])
    {
      v16 = v4[3];
      v17 = v4[4];
      sub_1AACBB42C(v4, v16);
      (*(v17 + 24))(0, 1, v16, v17);
      sub_1AACB634C(v4);
    }

    else
    {
      sub_1AAD9DEC0(v4, &qword_1EB424278, sub_1AAD9DCFC);
    }

    v18 = v1[96];
    sub_1AACB256C(v18, v25, &qword_1EB424288);
    v19 = *v18;
    v20 = *(v18 + 16);
    *(v26 + 32) = *(v18 + 32);
    *(v26 + 1) = v20;
    *v26 = v19;
    if (v26[1])
    {
      v21 = *v26;
      v22 = *(v26 + 1);
      *(v27 + 32) = *(v26 + 32);
      *(v27 + 16) = v22;
      *v27 = v21;
      sub_1AAE847F0();
      sub_1AAD9DDE4(v27);
    }

    v23 = *(*v5 + 8);

    __asm { BR              X0 }
  }

  (*(v0[107] + 32))(v0[108], v0[99], v0[106]);

  v0[112] = sub_1AAF8CE54();
  v0[113] = sub_1AAF8F964();
  v11 = sub_1AAF8F954();

  return MEMORY[0x1EEE6DFA0](sub_1AAD9D6A4, v11, v10);
}

uint64_t sub_1AAD9D6A4()
{
  v0[90] = v0;
  v0[114] = sub_1AAF8D024();
  v0[115] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AAD9D74C, 0, 0);
}

uint64_t sub_1AAD9D74C()
{
  v1 = v0 + 2;
  v2 = v0 + 7;
  v43 = v0 + 17;
  v44 = v0 + 27;
  v3 = v0 + 67;
  v4 = v0 + 80;
  v5 = v0 + 85;
  v46 = (v0 + 32);
  v6 = v0 + 42;
  v45 = (v0 + 62);
  v7 = v0 + 90;
  v8 = v0[115];
  v9 = v0[114];
  v0[90] = v0;

  v10 = sub_1AAF8F6A4();
  LOBYTE(v8) = MEMORY[0x1AC5982D0](v9, v8, v10, v11);

  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1AAD9DC68(v0[95], v3);
  v47 = v0 + 90;
  if (v0[70])
  {
    v12 = v0[94];
    v13 = v0[70];
    v14 = v3[4];
    sub_1AACBB42C(v3, v3[3]);
    v15 = *v12;
    v16 = v12[1];
    v2[4] = *(v12 + 4);
    *(v2 + 1) = v16;
    *v2 = v15;
    sub_1AAF8CE74();
    v18 = sub_1AADC69DC(v17);
    (*(v14 + 24))(*&v18, 0, v13, v14);
    sub_1AACB634C(v3);
  }

  else
  {
    sub_1AAD9DEC0(v3, &qword_1EB424278, sub_1AAD9DCFC);
  }

  sub_1AAD9DC68(v1[94], v4);
  if (v4[3])
  {
    v19 = v1[92];
    v20 = v4[3];
    v21 = v4[4];
    sub_1AACBB42C(v4, v20);
    v22 = *(v19 + 40);
    v23 = *(v19 + 56);
    v43[4] = *(v19 + 72);
    *(v43 + 1) = v23;
    *v43 = v22;
    sub_1AAF8CE74();
    v25 = sub_1AADC69DC(v24);
    (*(v21 + 24))(*&v25, 0, v20, v21);
    sub_1AACB634C(v4);
  }

  else
  {
    sub_1AAD9DEC0(v4, &qword_1EB424278, sub_1AAD9DCFC);
  }

  sub_1AAD9DC68(v1[95], v5);
  if (v5[3])
  {
    v26 = v1[92];
    v27 = v5[3];
    v28 = v5[4];
    sub_1AACBB42C(v5, v27);
    v29 = *(v26 + 80);
    v30 = *(v26 + 96);
    v44[4] = *(v26 + 112);
    *(v44 + 1) = v30;
    *v44 = v29;
    sub_1AAF8CE74();
    v32 = sub_1AADC69DC(v31);
    (*(v28 + 24))(*&v32, 0, v27, v28);
    sub_1AACB634C(v5);
  }

  else
  {
    sub_1AAD9DEC0(v5, &qword_1EB424278, sub_1AAD9DCFC);
  }

  v7 = v47;
  v33 = v1[96];
  sub_1AACB256C(v33, v45, &qword_1EB424288);
  v34 = *v33;
  v35 = *(v33 + 16);
  *(v6 + 32) = *(v33 + 32);
  *(v6 + 1) = v35;
  *v6 = v34;
  if (v6[1])
  {
    v36 = v1[106];
    v37 = v1[105];
    v38 = v1[104];
    v39 = *v6;
    v40 = *(v6 + 1);
    *(v46 + 32) = *(v6 + 32);
    *(v46 + 16) = v40;
    *v46 = v39;
    sub_1AAF8CE64();
    sub_1AAE847F0();
    (*(v37 + 8))(v36, v38);
    sub_1AAD9DDE4(v46);
  }

  else
  {
LABEL_14:
    (*(v1[105] + 8))(v1[106], v1[104]);
  }

  v41 = *(*v7 + 8);

  return v41();
}

uint64_t sub_1AAD9DC68(uint64_t a1, uint64_t a2)
{
  sub_1AAD9DF30(0, &qword_1EB424278, sub_1AAD9DCFC, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AAD9DCFC()
{
  result = qword_1EB424280;
  if (!qword_1EB424280)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB424280);
  }

  return result;
}

uint64_t sub_1AAD9DD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E697A2D0];
  v3 = sub_1AAF8CEE4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_1AAD9DE38()
{
  result = qword_1EB424298[0];
  if (!qword_1EB424298[0])
  {
    sub_1AAD9DF30(255, &qword_1EB424290, MEMORY[0x1E697A1F0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB424298);
  }

  return result;
}

uint64_t sub_1AAD9DEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AAD9DF30(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AAD9DF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AAD9DF94(uint64_t a1, unint64_t *a2)
{
  sub_1AACB1BC0(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAD9DFF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AAD9E0C8;

  return sub_1AAD9C85C(a1, v4, v5, v1 + 32, v1 + 64, v1 + 104, v1 + 224, v1 + 264);
}

uint64_t sub_1AAD9E0C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_1AAD9E228@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (qword_1EB422C10 != -1)
  {
    v5 = a2;
    result = swift_once();
    a2 = v5;
  }

  v3 = *(qword_1EB432210 + 16);
  if (v3)
  {
    v4 = v2 % v3;
    if ((v4 & 0x8000000000000000) == 0)
    {
      *a2 = *(qword_1EB432210 + 8 * v4 + 32);
      *(a2 + 40) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD9E2C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAD9E338()
{
  type metadata accessor for Resolved3DContentList.Item();

  return sub_1AAF8F8D4();
}

void *sub_1AAD9E39C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1AAD9E3B4(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_1AAD9E3CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD9E338();
  *a1 = result;
  return result;
}

void (*sub_1AAD9E400(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1AAD9E4D4(v2);
  return sub_1AAD9E48C;
}

void sub_1AAD9E48C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1AAD9E4D4(uint64_t *a1))(void *a1)
{
  v2 = type metadata accessor for Resolved3DContentList.Item();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AAF8F944();
  return sub_1AAD9E5BC;
}

void sub_1AAD9E5BC(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1AAD9E60C()
{
  swift_getWitnessTable();

  return sub_1AAF8FB04();
}

void *sub_1AAD9E704@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *sub_1AAD9E71C(void *result)
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

void sub_1AAD9E734(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t sub_1AAD9E744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AAD9E798()
{
  swift_getWitnessTable();
  v0 = sub_1AAD9EC60();

  return v0;
}

uint64_t sub_1AAD9E970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AAD1169C();
    sub_1AAD2000C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAD9EA40()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1AAF8FCA4();
  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAD9EB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1AAF8F584();
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

uint64_t sub_1AAD9EC64()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1AAF8DC74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAD9ED1C(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = sub_1AAF8DC74();
  v8 = *(v7 - 8);
  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v6 <= *(v8 + 84))
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = v6;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v23 = (((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;
        if (v6 == v13)
        {
          v24 = *(v5 + 48);

          return v24(v23, v6, AssociatedTypeWitness);
        }

        else
        {
          v25 = *(v8 + 48);
          v26 = (v23 + v10 + v11) & ~v11;

          return v25(v26);
        }
      }

      else
      {
        v22 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v22) = -1;
        }

        return (v22 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1AAD9EFF0(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v28 = v7;
  v8 = *(v7 + 84);
  v9 = sub_1AAF8DC74();
  v10 = *(v9 - 8);
  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  v13 = *(v10 + 80);
  if (v8 <= *(v10 + 84))
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + *(*(v9 - 8) + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_54:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v14 & 0x80000000) != 0)
  {
    v24 = (((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11;
    if (v8 == v15)
    {
      v25 = *(v28 + 56);

      v25(v24, a2, v8, AssociatedTypeWitness);
    }

    else
    {
      v26 = *(v10 + 56);
      v27 = (v24 + v12 + v13) & ~v13;

      v26(v27, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = (a2 - 1);
    }

    *a1 = v23;
  }
}

void sub_1AAD9F368(uint64_t a1@<X8>)
{
  *a1 = 3;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
}

uint64_t sub_1AAD9F380(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a2 == *a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AAF904F4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1AAD9F3E0()
{
  sub_1AAF90694();
  sub_1AAF8F6C4();

  return sub_1AAF906F4();
}

double sub_1AAD9F434@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_1AAF92AC0;
  *(a1 + 40) = 0;
  return result;
}

double sub_1AAD9F450@<D0>(_OWORD *a1@<X8>)
{
  sub_1AADA144C(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 9);
  *(a1 + 25) = *(v5 + 9);
  return result;
}

uint64_t sub_1AAD9F494@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = *(Value + 8);
  v7 = *(Value + 16);
  v9 = *(Value + 24);
  v8 = *(Value + 32);
  v10 = *(Value + 40);
  *(a2 + 504) = 0;
  *(a2 + 512) = 1;
  v11 = (a2 + 520);
  *(a2 + 488) = 0;
  *(a2 + 496) = 0;
  if (!a1)
  {
    v12 = 0;
    *(a2 + 760) = 0u;
    *(a2 + 776) = 0u;
    *(a2 + 728) = 0u;
    *(a2 + 744) = 0u;
    *(a2 + 696) = 0u;
    *(a2 + 712) = 0u;
    *(a2 + 664) = 0u;
    *(a2 + 680) = 0u;
    *(a2 + 632) = 0u;
    *(a2 + 648) = 0u;
    *(a2 + 600) = 0u;
    *(a2 + 616) = 0u;
    *(a2 + 568) = 0u;
    *(a2 + 584) = 0u;
    *(a2 + 536) = 0u;
    *(a2 + 552) = 0u;
    *v11 = 0u;
    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
    *(a2 + 40) = v10;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a2 + 72) = xmmword_1AAF92AC0;
    *(a2 + 88) = 0;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v12 = 0;
    *v11 = 0u;
    *(a2 + 536) = 0u;
    *(a2 + 552) = 0u;
    *(a2 + 568) = 0u;
    *(a2 + 584) = 0u;
    *(a2 + 600) = 0u;
    *(a2 + 616) = 0u;
    *(a2 + 632) = 0u;
    *(a2 + 648) = 0u;
    *(a2 + 664) = 0u;
    *(a2 + 680) = 0u;
    *(a2 + 696) = 0u;
    *(a2 + 712) = 0u;
    *(a2 + 728) = 0u;
    *(a2 + 744) = 0u;
    *(a2 + 760) = 0u;
    *(a2 + 776) = 0u;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1AAF92AC0;
    *(a2 + 40) = 0;
    *(a2 + 48) = v6;
    *(a2 + 56) = v5;
    *(a2 + 64) = v7;
    *(a2 + 72) = v9;
    *(a2 + 80) = v8;
    *(a2 + 88) = v10;
LABEL_5:
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 1;
    v10 = 0;
    goto LABEL_7;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v11 = 0u;
  *(a2 + 536) = 0u;
  *(a2 + 552) = 0u;
  *(a2 + 568) = 0u;
  *(a2 + 584) = 0u;
  *(a2 + 600) = 0u;
  *(a2 + 616) = 0u;
  *(a2 + 632) = 0u;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0u;
  *(a2 + 680) = 0u;
  *(a2 + 696) = 0u;
  *(a2 + 712) = 0u;
  *(a2 + 728) = 0u;
  *(a2 + 744) = 0u;
  *(a2 + 760) = 0u;
  *(a2 + 776) = 0u;
  *(a2 + 24) = xmmword_1AAF92AC0;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = xmmword_1AAF92AC0;
  *(a2 + 88) = 0;
  *(a2 + 96) = v6;
  *(a2 + 104) = v5;
  v12 = v8;
  *(a2 + 112) = v7;
  *(a2 + 120) = v9;
LABEL_7:
  *(a2 + 128) = v12;
  *(a2 + 136) = v10;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = 0;
  *(a2 + 168) = xmmword_1AAF92AC0;
  *(a2 + 184) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  *(a2 + 216) = xmmword_1AAF92AC0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 1;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 1;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a2 + 360) = 1;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 1;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 456) = 1;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a2 + 792) = 0;
  *(a2 + 794) = 0;
}

double sub_1AAD9F6C0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 480) = 1;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 791) = 0;
  return result;
}

uint64_t sub_1AAD9F750@<X0>(uint64_t a1@<X8>)
{
  v62 = type metadata accessor for AxisMarksResult();
  v2 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADA1334();
  result = AGGraphGetValue();
  v5 = *result;
  v6 = *(*result + 16);
  v57 = v6;
  if (v6 != 0.0)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v53 = a1;
    v54 = v7;

    v60 = 0.0;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v59 = 1;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v55 = v5;
    v56 = v2;
    while (1)
    {
      if (v8 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v64 = v10;
      v14 = *(v2 + 72);
      v61 = v8;
      v15 = v54 + v14 * v8;
      v16 = v63;
      sub_1AADA138C(v15, v63);
      v17 = *(v16 + *(v62 + 28));
      v18 = *(v17 + 16);
      v58 = v17;
      if (v18)
      {
        sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
        v19 = (v17 + 32);
        do
        {
          v20 = v19[3];
          v22 = *v19;
          v21 = v19[1];
          v68 = v19[2];
          v69 = v20;
          v66 = v22;
          v67 = v21;
          v23 = v19[4];
          v24 = v19[5];
          v25 = v19[7];
          v72 = v19[6];
          v73 = v25;
          v70 = v23;
          v71 = v24;
          v26 = *(&v66 + 1);
          sub_1AAD57B20(&v66, v65);
          Value = AGGraphGetValue();
          if (*Value > v26 || v26 > Value[1])
          {
            sub_1AAD57B7C(&v66);
          }

          else
          {
            if (v72 == 1)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v28 = v64;
              }

              else
              {
                v28 = sub_1AAD687A0(0, *(v64 + 2) + 1, 1, v64);
              }

              v30 = *(v28 + 2);
              v29 = *(v28 + 3);
              if (v30 >= v29 >> 1)
              {
                v28 = sub_1AAD687A0((v29 > 1), v30 + 1, 1, v28);
              }

              *(v28 + 2) = v30 + 1;
              v64 = v28;
              v31 = &v28[128 * v30];
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_1AAD687A0(0, *(v11 + 2) + 1, 1, v11);
              }

              v33 = *(v11 + 2);
              v32 = *(v11 + 3);
              if (v33 >= v32 >> 1)
              {
                v11 = sub_1AAD687A0((v32 > 1), v33 + 1, 1, v11);
              }

              *(v11 + 2) = v33 + 1;
              v31 = &v11[128 * v33];
            }

            v34 = v66;
            v35 = v67;
            v36 = v69;
            *(v31 + 4) = v68;
            *(v31 + 5) = v36;
            *(v31 + 2) = v34;
            *(v31 + 3) = v35;
            v37 = v70;
            v38 = v71;
            v39 = v73;
            *(v31 + 8) = v72;
            *(v31 + 9) = v39;
            *(v31 + 6) = v37;
            *(v31 + 7) = v38;
          }

          v19 += 8;
          --v18;
        }

        while (v18);
      }

      v40 = *(v63 + *(v62 + 32));
      v41 = *(v40 + 16);
      if (v41)
      {
        sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
        v42 = v40 + 32;
        do
        {
          sub_1AAD57CE8(v42, &v66);
          v43 = AGGraphGetValue();
          if (*v43 > *(&v66 + 1) || *(&v66 + 1) > v43[1])
          {
            sub_1AAD57D44(&v66);
          }

          else
          {
            sub_1AAD57CE8(&v66, v65);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1AAD68660(0, *(v9 + 2) + 1, 1, v9);
            }

            v46 = *(v9 + 2);
            v45 = *(v9 + 3);
            if (v46 >= v45 >> 1)
            {
              v9 = sub_1AAD68660((v45 > 1), v46 + 1, 1, v9);
            }

            sub_1AAD57D44(&v66);
            *(v9 + 2) = v46 + 1;
            memcpy(&v9[264 * v46 + 32], v65, 0x108uLL);
          }

          v42 += 264;
          --v41;
        }

        while (v41);
      }

      v47 = COERCE_DOUBLE(sub_1AAD9FC74(v11));
      if ((v48 & 1) == 0)
      {
        break;
      }

      v47 = COERCE_DOUBLE(sub_1AAD9FC74(v58));
      v5 = v55;
      v2 = v56;
      v12 = v61;
      if ((v49 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = v12 + 1;
      result = sub_1AADA13F0(v63);
      v10 = v64;
      if (v8 == *&v57)
      {

        v50 = v64;
        a1 = v53;
        v6 = v60;
        v51 = v59;
        goto LABEL_48;
      }
    }

    v5 = v55;
    v2 = v56;
    v12 = v61;
LABEL_4:
    v13 = v60;
    if (v47 < v60)
    {
      v13 = v47;
    }

    if (v59)
    {
      v13 = v47;
    }

    v60 = v13;
    v59 = 0;
    goto LABEL_9;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v51 = 1;
  v50 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
LABEL_48:
  *a1 = v11;
  *(a1 + 8) = v50;
  *(a1 + 16) = v9;
  *(a1 + 24) = v6;
  *(a1 + 32) = v51 & 1;
  return result;
}

uint64_t sub_1AAD9FC74(uint64_t a1)
{
  sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  v2 = *(AGGraphGetValue() + 8);
  v3 = *AGGraphGetValue();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 40);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AAD67B50(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1AAD67B50((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      *&v6[8 * v9 + 32] = v7;
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1AAD80F6C(v6);

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1AAD6C0D4(*(v10 + 16), 0);
    v13 = sub_1AADA9404(&v32, v12 + 4, v11, v10);

    sub_1AACC9C00();
    if (v13 == v11)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v32 = v12;
  v14 = 0;
  sub_1AADA000C(&v32);

  v15 = v32;
  v16 = *(v32 + 2);
  if (v16 >= 2)
  {
    v18 = 0;
    v19 = v16 - 1;
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = v18 + 1;
      if (v18 + 1 < v19)
      {
        if ((v18 + 2) >= *(v15 + 2))
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v21 = &v15[8 * v18];
        v23 = *(v21 + 5);
        v22 = *(v21 + 6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1AAD67B50(0, *(v17 + 2) + 1, 1, v17);
        }

        v25 = *(v17 + 2);
        v24 = *(v17 + 3);
        v14 = (v25 + 1);
        if (v25 >= v24 >> 1)
        {
          v17 = sub_1AAD67B50((v24 > 1), v25 + 1, 1, v17);
        }

        *(v17 + 2) = v14;
        *&v17[8 * v25 + 32] = v22 - v23;
      }

      v18 = v20;
      if (v19 == v20)
      {

        goto LABEL_26;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v26 = COERCE_DOUBLE(sub_1AADE69D4(v17));
  v28 = v27;

  v29 = (~*&v26 & 0x7FF0000000000000) == 0;
  if ((v2 - v3) / 100.0 > v26)
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v26;
  }

  if (v28)
  {
    return 0;
  }

  else
  {
    return *&v30;
  }
}

double sub_1AAD9FFB4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1AAD9FFC4@<D0>(uint64_t a1@<X8>)
{
  sub_1AAD9F750(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1AADA000C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB458(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1AAF90464();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1AADA0140(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1AADA0140(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1AADAA0A4(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1AADA069C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD68568(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1AAD68568((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1AADA069C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1AADA069C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

double sub_1AADA0890@<D0>(_OWORD *a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1AADA08DC@<D0>(uint64_t a1@<X8>)
{
  swift_getAtKeyPath();
  result = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_1AADA0948(unsigned __int8 a1)
{
  swift_getKeyPath();
  sub_1AACBC63C();
  sub_1AACB606C();
  sub_1AAD72E8C();
  sub_1AADA101C(&qword_1EB423DB8, sub_1AAD72E8C);

  sub_1AAF8D194();

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_1AAD9F368;
  *(v2 + 32) = 0;
  sub_1AACBC63C();
  sub_1AADA0FBC();
  sub_1AADA101C(&qword_1EB4243B8, sub_1AADA0FBC);
  sub_1AAF8D194();

  swift_getKeyPath();
  sub_1AACBC63C();
  sub_1AADA1104(0, &qword_1EB4243C0, &type metadata for Scale3D, &type metadata for NewScale.LinearScale, MEMORY[0x1E698D398]);
  sub_1AADA1078();

  sub_1AAF8D194();

  swift_getKeyPath();
  sub_1AACBC63C();
  sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  sub_1AADA1158();
  sub_1AADA101C(&qword_1EB4243D8, sub_1AADA1158);

  sub_1AAF8D194();

  sub_1AAF8E214();
  v3 = sub_1AAF8EA44();
  v5 = v4;
  v7 = v6 & 1;
  sub_1AACBC63C();
  sub_1AADA11E4();
  sub_1AAF8D194();
  sub_1AAD04750(v3, v5, v7);

  sub_1AACBC63C();
  sub_1AADA1238();
  sub_1AAF8D194();
  sub_1AACBC63C();
  sub_1AADA128C();
  sub_1AAF8D194();
  swift_getKeyPath();

  sub_1AAF8D194();

  swift_getKeyPath();

  sub_1AAF8D194();

  AGGraphCreateOffsetAttribute2();
  sub_1AACBC63C();
  sub_1AADA12E0();
  return a1 | (sub_1AAF8D194() << 32);
}

void sub_1AADA0FBC()
{
  if (!qword_1EB4243B0)
  {
    sub_1AACB606C();
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4243B0);
    }
  }
}

uint64_t sub_1AADA101C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AADA1078()
{
  result = qword_1EB4243C8;
  if (!qword_1EB4243C8)
  {
    sub_1AADA1104(255, &qword_1EB4243C0, &type metadata for Scale3D, &type metadata for NewScale.LinearScale, MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4243C8);
  }

  return result;
}

void sub_1AADA1104(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AADA1158()
{
  if (!qword_1EB4243D0)
  {
    sub_1AADA1104(255, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4243D0);
    }
  }
}

unint64_t sub_1AADA11E4()
{
  result = qword_1EB4243E0;
  if (!qword_1EB4243E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4243E0);
  }

  return result;
}

unint64_t sub_1AADA1238()
{
  result = qword_1EB4243E8;
  if (!qword_1EB4243E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4243E8);
  }

  return result;
}

unint64_t sub_1AADA128C()
{
  result = qword_1ED9AF658;
  if (!qword_1ED9AF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF658);
  }

  return result;
}

unint64_t sub_1AADA12E0()
{
  result = qword_1EB4243F0;
  if (!qword_1EB4243F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4243F0);
  }

  return result;
}

void sub_1AADA1334()
{
  if (!qword_1ED9AD960)
  {
    type metadata accessor for AxisMarksResult();
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD960);
    }
  }
}

uint64_t sub_1AADA138C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AxisMarksResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADA13F0(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarksResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADA144C@<X0>(uint64_t a1@<X8>)
{
  sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  v4 = *(result + 8);
  if (v2 >= v4)
  {
    v5 = *(result + 8);
  }

  else
  {
    v5 = v2;
  }

  if (v4 <= v2)
  {
    v4 = v2;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for CollectedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CollectedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AADA15B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AADA15F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for ChartAccessibilityContent.GroupItem.ResolvedGeometry(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AADA1664(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1AADA16AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADA1714()
{
  sub_1AADA17F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AAF8D554();
  sub_1AAD1C614(v3, qword_1EB432060);
  sub_1AAD0F5D8(v3, qword_1EB432060);
  v4 = sub_1AAF8D534();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_1AAF8D544();
}

void sub_1AADA17F8()
{
  if (!qword_1EB4243F8)
  {
    sub_1AAF8D534();
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4243F8);
    }
  }
}

uint64_t sub_1AADA1850()
{
  v1 = *v0;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AADA18C4()
{
  v1 = *v0;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AADA191C(uint64_t a1, unsigned __int8 a2, void (*a3)(uint64_t *__return_ptr))
{
  if (*(a1 + 16) && (v5 = sub_1AACB6398(a2), (v6 & 1) != 0))
  {
    v7 = *(*(a1 + 56) + 24 * v5);

    return v7;
  }

  else
  {
    a3(&v9);
    return v9;
  }
}

uint64_t sub_1AADA19B4@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AADA191C(*a1, *a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_1AADA19E8(int a1, int a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, int a9, int a10, int a11, unsigned int a12, unsigned int a13)
{
  v150 = a8;
  v159 = a7;
  v168 = a6;
  v172 = a5;
  v149 = a4;
  v170 = a1;
  v171 = a13;
  v157 = a12;
  v158 = a2;
  v165 = a9;
  v163 = a11;
  v164 = a10;
  v178 = *MEMORY[0x1E69E9840];
  v14 = sub_1AAF8D014();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v147 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD77B28();
  v140 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1AAF8D554();
  v20 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1AAF8D5F4();
  v22 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1AAF8CFB4();
  v24 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1AAF8D094();
  swift_allocObject();
  v27 = sub_1AAF8D084();
  swift_retain_n();
  sub_1AAF8D034();

  v139 = sub_1AACBC63C();
  v138 = sub_1AACBC63C();
  v137 = sub_1AACBC63C();
  v136 = sub_1AACBC63C();
  v135 = sub_1AACBC63C();
  v134 = sub_1AACBC63C();
  v133 = sub_1AACBC63C();
  v132 = sub_1AACBC63C();
  v28 = sub_1AACBC63C();
  v131 = sub_1AACBC63C();
  v130 = sub_1AACBC63C();
  v129 = sub_1AACBC63C();
  v167 = sub_1AACBC63C();
  v128 = sub_1AACBC63C();
  v127 = sub_1AACBC63C();
  v126 = sub_1AACBC63C();
  v125 = sub_1AACBC63C();
  v124 = sub_1AACBC63C();
  v123 = 0x80000001AAFCDD00;
  v122 = 0x80000001AAFCDD20;
  v121 = sub_1AAF8CD24();
  v29 = 0;
  v120 = (v20 + 16);
  v119 = (v22 + 8);
  v118 = (v24 + 8);
  v117 = (v17 + 8);
  v151 = v27;
  v148 = a3;
  v156 = v28;
  v116 = v19;
  v115 = v26;
  do
  {
    v155 = v29;
    v41 = *(&unk_1F1FCEBE8 + v29 + 32);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = sub_1AAD9F368;
    *(v42 + 32) = 0;
    LODWORD(v174) = v150;
    v175 = sub_1AADA36F4;
    v176 = v42;
    sub_1AADA0FBC();
    sub_1AADA3D58(&qword_1EB4243B8, sub_1AADA0FBC);

    sub_1AAF8D194();

    swift_allocObject();
    v162 = sub_1AAF8D084();
    v174 = 0x5F73697841;
    v175 = 0xE500000000000000;
    if (v41)
    {
      v43 = v163;
      if (v41 == 1)
      {
        v43 = v164;
      }

      v160 = v43;
    }

    else
    {
      v160 = v165;
    }

    v44 = sub_1AAF8F674();
    v46 = v45;

    MEMORY[0x1AC5982F0](v44, v46);

    sub_1AAF8D034();
    swift_allocObject();
    v47 = sub_1AAF8D084();
    v174 = 0;
    v175 = 0xE000000000000000;
    sub_1AAF900D4();

    v174 = 0xD000000000000010;
    v175 = v123;
    v48 = sub_1AAF8F674();
    v50 = v49;

    MEMORY[0x1AC5982F0](v48, v50);

    sub_1AAF8D034();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    KeyPath = swift_getKeyPath();
    sub_1AAF8FF44();
    v161 = v41;
    if (v53)
    {
      LODWORD(v174) = OffsetAttribute2;
      v175 = sub_1AAD72A64;
      v176 = KeyPath;
      sub_1AACBC63C();
      sub_1AADA3E5C(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
      sub_1AADA37A8();
      sub_1AADA3D58(&qword_1EB424410, sub_1AADA37A8);

      LOBYTE(v41) = v161;
      v54 = sub_1AAF8D194();
    }

    else
    {
      v54 = AGGraphCreateOffsetAttribute2();
    }

    LODWORD(v174) = v54;
    v175 = sub_1AADA5040;
    v176 = 0;
    sub_1AADA3E5C(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
    sub_1AADA3860();
    sub_1AADA3D58(&qword_1EB424420, sub_1AADA3860);
    v55 = sub_1AAF8D194();
    LODWORD(v174) = v54;
    v175 = sub_1AADA50AC;
    v176 = 0;
    sub_1AADA390C(0, &qword_1EB424428);
    sub_1AADA3A44(&qword_1EB424430, &qword_1EB424428);
    v56 = sub_1AAF8D194();
    LOBYTE(v174) = v41;
    HIDWORD(v174) = v158;
    v175 = __PAIR64__(v56, v172);
    LODWORD(v176) = v55;
    sub_1AADA3DA0(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AADA3994();
    v57 = sub_1AAF8D194();
    v174 = v47;
    v175 = __PAIR64__(a3, v57);
    sub_1AADA39E8();

    sub_1AAF8D194();

    AGGraphSetFlags();
    v58 = AGGraphCreateOffsetAttribute2();
    v59 = swift_getKeyPath();
    sub_1AAF8FF44();
    if (v60)
    {
      LODWORD(v174) = v58;
      v175 = sub_1AAD732D4;
      v176 = v59;
      sub_1AACBC63C();
      sub_1AADA3E5C(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
      sub_1AADA37A8();
      sub_1AADA3D58(&qword_1EB424410, sub_1AADA37A8);

      LOBYTE(v41) = v161;
      v61 = sub_1AAF8D194();
    }

    else
    {
      v61 = AGGraphCreateOffsetAttribute2();
    }

    v62 = v171;
    v63 = swift_allocObject();
    *(v63 + 16) = v41;
    LODWORD(v174) = v61;
    v175 = sub_1AADA3A3C;
    v176 = v63;
    sub_1AADA390C(0, &qword_1EB424448);
    sub_1AADA3A44(&qword_1EB424450, &qword_1EB424448);
    v64 = sub_1AAF8D194();

    v174 = __PAIR64__(v157, v64);
    sub_1AADA3A94();
    v65 = sub_1AAF8D194();
    v66 = AGGraphCreateOffsetAttribute2();
    v174 = v47;
    v175 = __PAIR64__(v65, v66);
    LODWORD(v176) = v159;
    sub_1AADA3DA0(0, &qword_1EB423598, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E64E8]);
    v68 = v67;
    sub_1AADA3AE8();

    v154 = v68;
    v69 = sub_1AAF8D194();

    v174 = __PAIR64__(v62, v69);
    v153 = sub_1AADA3B3C();
    sub_1AAF8D194();
    AGGraphSetFlags();
    sub_1AAF8CC24();

    swift_allocObject();
    v70 = sub_1AAF8D084();
    v174 = 0;
    v175 = 0xE000000000000000;
    sub_1AAF900D4();

    v174 = 0x656E694C73697841;
    v175 = 0xEF5F70756F724773;
    v71 = sub_1AAF8F674();
    v73 = v72;

    MEMORY[0x1AC5982F0](v71, v73);

    sub_1AAF8D034();
    sub_1AAF8CCA4();
    sub_1AAF8CC04();
    swift_allocObject();
    v74 = sub_1AAF8CBF4();
    v75 = v141;
    sub_1AAF8CF44();
    v76 = v62;
    if (qword_1EB422B40 != -1)
    {
      swift_once();
    }

    v77 = v146;
    v78 = sub_1AAD0F5D8(v146, qword_1EB432060);
    (*v120)(v145, v78, v77);
    v79 = v143;
    sub_1AAF8D5E4();
    v80 = v144;
    sub_1AAF8CF94();
    (*v119)(v79, v80);
    (*v118)(v75, v142);
    sub_1AAF8CC24();
    sub_1AAF8D044();
    sub_1AAF8CC24();

    sub_1AAF8D044();
    sub_1AAF8CC24();

    v169 = v74;
    sub_1AAF8D044();
    sub_1AAF8CC24();

    LOBYTE(v174) = v41;
    HIDWORD(v174) = v158;
    LODWORD(v175) = v76;
    sub_1AADA3E5C(0, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
    sub_1AADA3B90();
    v81 = sub_1AAF8D194();
    v174 = v70;
    LODWORD(v175) = v81;
    sub_1AADA3BE4();

    sub_1AAF8D194();

    AGGraphSetFlags();
    sub_1AAF8CC34();
    v82 = v116;
    sub_1AAF8CFE4();
    v83 = v140;
    sub_1AAF8CFF4();
    v84 = v174;
    for (i = v168; v174; v84 = v174)
    {
      v174 = v84;
      LODWORD(v175) = i;
      sub_1AACBC63C();
      sub_1AADA3FFC();

      sub_1AAF8D194();

      AGGraphSetFlags();

      sub_1AAF8CFF4();
    }

    (*v117)(v82, v83);
    sub_1AAF8CC24();

    v86 = AGGraphCreateOffsetAttribute2();
    LOBYTE(v174) = v161;
    HIDWORD(v174) = v170;
    v175 = __PAIR64__(v172, v86);
    v176 = v171;
    sub_1AADA3E5C(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
    v88 = v87;
    sub_1AADA3DA0(0, &qword_1EB424480, sub_1AADA3C38, &type metadata for PrimitiveAxisTick, type metadata accessor for Resolved3DTicks);
    sub_1AADA3C8C(&qword_1EB424490, &qword_1EB424480, sub_1AADA3C38, &type metadata for PrimitiveAxisTick);
    v169 = v88;
    v89 = sub_1AAF8D194();
    swift_allocObject();
    v90 = sub_1AAF8D084();
    v174 = 0;
    v175 = 0xE000000000000000;
    sub_1AAF900D4();

    v174 = 0x6B63695473697841;
    v175 = 0xEF5F70756F724773;
    v91 = sub_1AAF8F674();
    v93 = v92;

    MEMORY[0x1AC5982F0](v91, v93);

    sub_1AAF8D034();
    v174 = v90;
    v175 = __PAIR64__(v89, i);
    v94 = sub_1AAD78228();

    v166 = v94;
    sub_1AAF8D194();

    AGGraphSetFlags();
    sub_1AAF8CC24();

    v95 = swift_getKeyPath();
    sub_1AAF8FF44();
    if (v96)
    {
      LODWORD(v174) = v157;
      v175 = sub_1AAD5B498;
      v176 = v95;
      sub_1AACBC63C();
      sub_1AAF8E7E4();
      sub_1AADA3CF0();
      sub_1AADA3D58(&qword_1EB4244A0, sub_1AADA3CF0);

      v152 = sub_1AAF8D194();
    }

    else
    {
      sub_1AAF8E7E4();
      v152 = AGGraphCreateOffsetAttribute2();
    }

    v30 = v148;
    v29 = v155 + 1;
    swift_allocObject();
    v31 = sub_1AAF8D084();
    v174 = 0;
    v175 = 0xE000000000000000;
    sub_1AAF900D4();

    v174 = 0xD000000000000010;
    v175 = v122;
    v32 = v161;
    v33 = sub_1AAF8F674();
    v35 = v34;

    MEMORY[0x1AC5982F0](v33, v35);

    sub_1AAF8D034();
    v36 = AGGraphCreateOffsetAttribute2();
    LOBYTE(v174) = v32;
    LODWORD(v35) = v171;
    HIDWORD(v174) = v170;
    v175 = __PAIR64__(v172, v36);
    v176 = v171 | 0x3D75C28F00000000;
    sub_1AADA3DA0(0, &qword_1EB4244A8, sub_1AADA3E08, &type metadata for PrimitiveAxisLabel, type metadata accessor for Resolved3DTicks);
    sub_1AADA3C8C(&qword_1EB4244B8, &qword_1EB4244A8, sub_1AADA3E08, &type metadata for PrimitiveAxisLabel);
    v37 = sub_1AAF8D194();
    LODWORD(v174) = v37;
    sub_1AADA3E5C(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    sub_1AADA3EAC();
    LODWORD(v174) = sub_1AAF8D194();
    sub_1AADA3F00();
    v38 = sub_1AAF8D194();
    v174 = v31;
    v175 = __PAIR64__(v30, v159);
    a3 = v30;
    v176 = __PAIR64__(v38, v37);
    v177 = v152;
    sub_1AADA3F54();

    v39 = sub_1AAF8D194();

    v174 = __PAIR64__(v35, v39);
    sub_1AAF8D194();
    AGGraphSetFlags();
    v40 = v162;
    sub_1AAF8CC24();

    v174 = v40;
    LOBYTE(v175) = v32;
    HIDWORD(v175) = v30;
    LODWORD(v176) = v149;
    sub_1AADA3FA8();

    sub_1AAF8D194();

    AGGraphSetFlags();
    sub_1AAF8CC24();
  }

  while (v29 != 3);
  swift_allocObject();

  sub_1AAF8D084();
  sub_1AAF8D034();
  sub_1AAF8CC24();
  v97 = 0;
  while (2)
  {
    v98 = 0;
    v99 = *(&unk_1F1FCEC10 + v97 + 32);
    v162 = v97 + 1;
    do
    {
      v102 = byte_1F1FCEC38[v98 + 32];
      if (v99)
      {
        if (v99 != 1)
        {
          goto LABEL_33;
        }

        v103 = 121;
      }

      else
      {
        v103 = 120;
      }

      if (v102 < 2)
      {
        v104 = 120;
      }

      else
      {
        v104 = 121;
      }

      if (v103 == v104)
      {
LABEL_42:
        swift_bridgeObjectRelease_n();
LABEL_43:
        swift_allocObject();
        v108 = sub_1AAF8D084();
        v174 = 0;
        v175 = 0xE000000000000000;
        v173 = v102;
        sub_1AAF90284();
        v109 = sub_1AAF8F674();
        v111 = v110;

        MEMORY[0x1AC5982F0](v109, v111);

        MEMORY[0x1AC5982F0](0x7364697247, 0xE500000000000000);
        sub_1AAF8D034();
        sub_1AAF8CC24();
        v100 = AGGraphCreateOffsetAttribute2();
        LOBYTE(v174) = v99;
        HIDWORD(v174) = v170;
        v175 = __PAIR64__(v172, v100);
        LODWORD(v176) = v171;
        BYTE4(v176) = v102;
        sub_1AACBC63C();
        sub_1AAD76118();
        v101 = sub_1AAF8D194();
        v174 = v108;
        v175 = __PAIR64__(v101, v168);

        sub_1AAF8D194();

        AGGraphSetFlags();

        goto LABEL_24;
      }

LABEL_33:
      v105 = sub_1AAF904F4();
      swift_bridgeObjectRelease_n();
      if (v105)
      {
        goto LABEL_43;
      }

      if (v99 == 2)
      {
        v106 = 122;
      }

      else
      {
        if (v99 != 1)
        {
          goto LABEL_44;
        }

        v106 = 121;
      }

      if (v102)
      {
        v107 = 122;
      }

      else
      {
        v107 = 121;
      }

      if (v106 == v107)
      {
        goto LABEL_42;
      }

LABEL_44:
      v112 = sub_1AAF904F4();
      swift_bridgeObjectRelease_n();
      if (v112)
      {
        goto LABEL_43;
      }

LABEL_24:
      ++v98;
    }

    while (v98 != 3);
    v97 = v162;
    if (v162 != 3)
    {
      continue;
    }

    break;
  }

  v113 = v151;

  return v113;
}

uint64_t sub_1AADA36F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AADA191C(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

unint64_t sub_1AADA372C()
{
  result = qword_1EB424400;
  if (!qword_1EB424400)
  {
    sub_1AADA3E5C(255, &qword_1EB423588, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424400);
  }

  return result;
}

void sub_1AADA37A8()
{
  if (!qword_1EB424408)
  {
    sub_1AADA3E5C(255, &qword_1EB423588, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E62F8]);
    sub_1AADA3E5C(255, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424408);
    }
  }
}

void sub_1AADA3860()
{
  if (!qword_1EB424418)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1AADA3E5C(255, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
    sub_1AADA3E5C(255, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], v0);
    v1 = sub_1AAF8D1D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424418);
    }
  }
}

void sub_1AADA390C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1AADA3E5C(255, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
    v3 = sub_1AAF8D1D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1AADA3994()
{
  result = qword_1EB424438;
  if (!qword_1EB424438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424438);
  }

  return result;
}

unint64_t sub_1AADA39E8()
{
  result = qword_1EB424440;
  if (!qword_1EB424440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424440);
  }

  return result;
}

uint64_t sub_1AADA3A44(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AADA390C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AADA3A94()
{
  result = qword_1EB424458;
  if (!qword_1EB424458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424458);
  }

  return result;
}

unint64_t sub_1AADA3AE8()
{
  result = qword_1EB424460;
  if (!qword_1EB424460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424460);
  }

  return result;
}

unint64_t sub_1AADA3B3C()
{
  result = qword_1EB424468;
  if (!qword_1EB424468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424468);
  }

  return result;
}

unint64_t sub_1AADA3B90()
{
  result = qword_1EB424470;
  if (!qword_1EB424470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424470);
  }

  return result;
}

unint64_t sub_1AADA3BE4()
{
  result = qword_1EB424478;
  if (!qword_1EB424478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424478);
  }

  return result;
}

unint64_t sub_1AADA3C38()
{
  result = qword_1EB424488;
  if (!qword_1EB424488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424488);
  }

  return result;
}

uint64_t sub_1AADA3C8C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AADA3DA0(255, a2, a3, a4, type metadata accessor for Resolved3DTicks);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AADA3CF0()
{
  if (!qword_1EB424498)
  {
    sub_1AAF8E134();
    sub_1AAF8E7E4();
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424498);
    }
  }
}

uint64_t sub_1AADA3D58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AADA3DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AADA3E08()
{
  result = qword_1EB4244B0;
  if (!qword_1EB4244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244B0);
  }

  return result;
}

void sub_1AADA3E5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AADA3EAC()
{
  result = qword_1EB4244C0;
  if (!qword_1EB4244C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244C0);
  }

  return result;
}

unint64_t sub_1AADA3F00()
{
  result = qword_1EB4244C8;
  if (!qword_1EB4244C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244C8);
  }

  return result;
}

unint64_t sub_1AADA3F54()
{
  result = qword_1EB4244D0;
  if (!qword_1EB4244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244D0);
  }

  return result;
}

unint64_t sub_1AADA3FA8()
{
  result = qword_1EB4244D8;
  if (!qword_1EB4244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244D8);
  }

  return result;
}

unint64_t sub_1AADA3FFC()
{
  result = qword_1EB4244E0;
  if (!qword_1EB4244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244E0);
  }

  return result;
}

unint64_t sub_1AADA4064()
{
  result = qword_1EB4244E8;
  if (!qword_1EB4244E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244E8);
  }

  return result;
}

uint64_t sub_1AADA40F8(uint64_t a1, char a2)
{
  v36[1] = a1;
  sub_1AADA49C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  v9 = sub_1AAF8CFB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8D5A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*AGGraphGetValue())
  {
    result = AGGraphGetValue();
    if ((v18 & 1) == 0)
    {
      return result;
    }

    sub_1AAF8D584();
    (*(v14 + 56))(v5, 0, 1, v13);
    goto LABEL_11;
  }

  type metadata accessor for simd_quatf(0);
  Value = AGGraphGetValue();
  v20 = vmulq_f32(*Value, xmmword_1AAF965D0);
  v21 = vnegq_f32(v20);
  v22 = vtrn2q_s32(v20, vtrn1q_s32(v20, v21));
  v23 = vmulq_f32(vextq_s8(v20, v21, 8uLL), 0);
  v24 = vrev64q_s32(v20);
  v24.i32[0] = v21.i32[1];
  v24.i32[3] = v21.i32[2];
  v25 = vaddq_f32(v24, vmlaq_f32(v23, 0, vextq_s8(v22, v22, 8uLL)));
  v26 = vnegq_f32(v25);
  v27 = vtrn2q_s32(v25, vtrn1q_s32(v25, v26));
  v28 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v25, v26, 8uLL), *Value->f32, 1), vextq_s8(v27, v27, 8uLL), COERCE_FLOAT(*Value));
  v29 = vrev64q_s32(v25);
  v29.i32[0] = v26.i32[1];
  v29.i32[3] = v26.i32[2];
  v30 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v25, *Value, 3), v29, *Value, 2), v28);
  if (a2)
  {
    if (a2 == 1)
    {
      v31 = xmmword_1AAF93880;
    }

    else
    {
      v31 = xmmword_1AAF94A50;
    }
  }

  else
  {
    v31 = xmmword_1AAF93890;
  }

  v32 = vmulq_f32(v30, v31);
  v33 = acosf(fmaxf(fminf(v32.f32[2] + vaddv_f32(*v32.f32), 1.0), -1.0));
  sub_1AAD630B8((v33 + v33));
  sub_1AAF8CF44();
  sub_1AAF8CF64();
  (*(v10 + 8))(v12, v9);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1AADA4A1C(v8);
    sub_1AAF8D584();
    (*(v14 + 56))(v5, 0, 1, v13);
LABEL_11:
    v34 = sub_1AAF8CF34();
    sub_1AAF8CF74();
    return v34(v37, 0);
  }

  (*(v14 + 32))(v16, v8, v13);
  sub_1AAF8D594();
  (*(v14 + 16))(v5, v16, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  v35 = sub_1AAF8CF34();
  sub_1AAF8CF74();
  v35(v37, 0);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1AADA4600()
{
  if (sub_1AAF8F5F4() & 1) != 0 && (type metadata accessor for XYZ(), (sub_1AAF8F5F4()))
  {
    return sub_1AAF8F5F4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADA46A0()
{
  sub_1AAF8F484();
  sub_1AAF8F484();
  return sub_1AAF8F484();
}

uint64_t sub_1AADA4718()
{
  sub_1AAF90694();
  sub_1AADA46A0();
  return sub_1AAF906F4();
}

uint64_t sub_1AADA477C()
{
  sub_1AAF90694();
  sub_1AADA46A0();
  return sub_1AAF906F4();
}

uint64_t sub_1AADA47DC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AAF904F4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1AADA483C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AADA4A78();
  *a1 = result;
  return result;
}

uint64_t sub_1AADA4880()
{
  sub_1AAF90694();
  sub_1AAF8F6C4();

  return sub_1AAF906F4();
}

uint64_t sub_1AADA48D4()
{
  sub_1AAF8F6C4();
}

uint64_t sub_1AADA490C()
{
  sub_1AAF90694();
  sub_1AAF8F6C4();

  return sub_1AAF906F4();
}

unint64_t sub_1AADA4970()
{
  result = qword_1EB424500;
  if (!qword_1EB424500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424500);
  }

  return result;
}

void sub_1AADA49C4()
{
  if (!qword_1EB424508[0])
  {
    sub_1AAF8D5A4();
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, qword_1EB424508);
    }
  }
}

uint64_t sub_1AADA4A1C(uint64_t a1)
{
  sub_1AADA49C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADA4A78()
{
  v0 = sub_1AAF90414();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AADA4AE4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AADA4B5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1AADA4CB4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1AADA4F3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AADA4F8C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AADA4F8C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AAF8F914();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1AADA4FDC()
{
  result = qword_1EB4245A0;
  if (!qword_1EB4245A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4245A0);
  }

  return result;
}

uint64_t sub_1AADA5040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AADA603C(a1, v7);
  if (v8)
  {
    v6 = v9;
    v3 = v10;
    result = sub_1AAD817BC(v7);
    v5 = v6;
  }

  else
  {
    result = sub_1AADA60C4(v7);
    v5 = 0uLL;
    v3 = 1;
  }

  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1AADA50AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AADA603C(a1, v6);
  if (v7)
  {
    v3 = v8;
    v4 = v9;
    result = sub_1AAD817BC(v6);
    if (v4 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = sub_1AADA60C4(v6);
  }

  v3 = 0x3FC3333333333333;
LABEL_6:
  *a2 = v3;
  return result;
}

uint64_t sub_1AADA5120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AADA603C(a1, v17);
  if (!v17[3])
  {
    sub_1AADA60C4(v17);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v3 = v18;
  v4 = v19;
  v5 = v20;
  v6 = v21;
  sub_1AADA61DC(v18, v19, v20, v21);
  result = sub_1AAD817BC(v17);
  if (!v6)
  {
LABEL_5:
    v9 = sub_1AAF8F674();
    v11 = v10;

    v17[0] = v9;
    v17[1] = v11;
    sub_1AADA6144();
    v12 = sub_1AAF8EA64();
    v14 = v13;
    v8 = v15;
    v6 = v16;
    result = sub_1AADA6198(v3, v4, v5, 0);
    v3 = v12;
    v4 = v14;
    goto LABEL_6;
  }

  v8 = v5;
LABEL_6:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1AADA5230@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  sub_1AACD7304(*Value, v8, v9);

  v10 = AGGraphGetValue();
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_1AAF8E974();
  v13 = v12;
  sub_1AAD04750(v7, v8, v9);

  result = (*(v3 + 8))(v5, v2);
  *a1 = v11;
  a1[1] = v13;
  return result;
}

uint64_t sub_1AADA53AC()
{
  v0 = sub_1AAF8D014();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADA6220(0, &qword_1EB4245A8, MEMORY[0x1E697DB50], MEMORY[0x1E69E6720]);
  if (*AGGraphGetValue() != 3)
  {
    sub_1AAF8D874();
  }

  sub_1AAF8D074();
  sub_1AAF8D094();
  sub_1AAF8CC34();
  sub_1AAF8CFD4();
  (*(v1 + 8))(v3, v0);
  if (*AGGraphGetValue() != 3 && (sub_1AAF8D874() & 1) != 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  AGGraphGetValue();
  v5 = qword_1EB422BB0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_1AAF8CD24();
  sub_1AAF8CCF4();

  sub_1AAF8CC04();
  swift_allocObject();
  v6 = sub_1AAF8CBF4();
  v7 = *(AGGraphGetValue() + 16);

  sub_1AADAC7CC(v6, v7);

  swift_allocObject();
  sub_1AAF8D084();
  sub_1AAF8CC24();
  sub_1AAF8CC24();

  sub_1AADA6220(0, &qword_1EB4245B0, &type metadata for AnyEntity, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = v6;
  v9 = inited + 32;
  v4 = sub_1AADAB648(inited);
  swift_setDeallocating();
  sub_1AADA5FE8(v9);
  return v4;
}

uint64_t sub_1AADA5718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AADA53AC();
  *a1 = result;
  return result;
}

uint64_t sub_1AADA5748()
{
  sub_1AADA6270(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  AGGraphGetValue();
  sub_1AAF8D094();
  sub_1AAF8CC54();
  type metadata accessor for simd_quatf(0);
  v3 = *AGGraphGetValue();
  v0 = sub_1AAF8CC64();
  *(v1 + 16) = v3;
  return v0(v4, 0);
}

double sub_1AADA584C(char a1)
{
  sub_1AAD58174();
  Value = AGGraphGetValue();
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = Value[2];
      v3 = Value[3];

LABEL_7:
      sub_1AADA6220(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
      v7 = *(AGGraphGetValue() + 16);
      sub_1AAF8E184();
      if (v7 == 1)
      {
        sub_1AAF8E174();
LABEL_14:
        v8 = 0.0;
        goto LABEL_15;
      }

      v8 = -0.5;
      if ((sub_1AAF8E164() & 1) == 0)
      {
        sub_1AAF8E174();
        v8 = 0.5;
        if ((sub_1AAF8E164() & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_15;
    }

    v5 = Value + 5;
    Value += 4;
  }

  else
  {
    v5 = Value + 1;
  }

  v3 = *v5;
  v4 = *Value;
  v6 = sub_1AAF904F4();

  if (v6)
  {
    goto LABEL_7;
  }

  sub_1AADA6220(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
  v9 = *(AGGraphGetValue() + 16);
  sub_1AAF8E274();
  if (v9 == 1)
  {
    sub_1AAF8E284();
    goto LABEL_14;
  }

  v8 = -0.5;
  if ((sub_1AAF8E164() & 1) == 0)
  {
    sub_1AAF8E284();
    v8 = 0.5;
    if ((sub_1AAF8E164() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v10 = (v4 + v3) * 0.5;
  v11 = AGGraphGetValue();
  v12 = *v11;
  if (!a1)
  {
    v12.i64[0] = vextq_s8(v12, v12, 8uLL).u64[0];
    goto LABEL_19;
  }

  if (a1 == 1)
  {
LABEL_19:
    v12.i64[1] = *(v11 + 16);
  }

  v24 = v12;
  sub_1AAD57D98();
  v25 = *AGGraphGetValue();
  v13 = *AGGraphGetValue();
  v14 = *&v24.i32[1];
  if (a1)
  {
    v15 = *&v24.i32[1] + v13;
    if (v25.i32[0] < 0)
    {
      v15 = *v24.i32 - v13;
    }

    v16 = *&v24.i32[2] - v13;
    v17 = *&v24.i32[3] + v13;
    v18 = vcltz_s32(*v25.i8);
    if ((v18.i8[0] & 1) == 0)
    {
      v14 = *v24.i32;
    }

    if ((v18.i8[4] & 1) == 0)
    {
      v16 = v17;
    }

    if (a1 == 1)
    {
      v19 = v8 + v10;
    }

    else
    {
      v19 = v16;
    }

    if (a1 == 1)
    {
      v20 = v15;
    }

    else
    {
      v20 = v14;
    }

    v21 = v20;
  }

  else
  {
    v22 = *&v24.i32[1] + v13;
    v19 = *v24.i32 - v13;
    if ((vcltz_s32(*&vextq_s8(v25, v25, 4uLL)).u8[0] & 1) == 0)
    {
      v19 = v22;
    }

    v21 = v8 + v10;
  }

  return COERCE_DOUBLE(__PAIR64__(LODWORD(v19), LODWORD(v21)));
}

uint64_t sub_1AADA5BB0(unint64_t a1)
{
  v1 = HIDWORD(a1);
  sub_1AADA5F34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADA6270(0, &qword_1EB423598, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E64E8]);
  Value = AGGraphGetValue();
  v6 = *Value + 56;
  v7 = 1 << *(*Value + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*Value + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_9:
    v9 &= v9 - 1;
    swift_unknownObjectRetain_n();
    v14 = *AGGraphGetValue();
    sub_1AAF8CC04();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      sub_1AAF8D0A4();
      v15 = sub_1AAF8CDC4();
      if (!(*(*(v15 - 8) + 48))(v4, 1, v15))
      {
        v29 = sub_1AAF8CDA4();
        sub_1AADA5F8C(v4);
        sub_1AAF8CD14();
        v27 = v17;
        v28 = v16;
        *v16.i32 = v14 * 2.5;
        v31 = v16;
        sub_1AAF8CBE4();
        v30 = v18;
        sub_1AAF8CBE4();
        v20 = __PAIR64__(v19, v30);
        v21 = vdupq_lane_s32(*v31.i8, 0);
        v31 = v21;
        *v21.i8 = vmul_f32(vmul_f32(*v21.i8, v20), 0xBF333333BF000000);
        v28 = v21;
        sub_1AAF8D094();
        *&v30 = v1;
        v22 = sub_1AAF8CC64();
        v23[2] = v28;
        v22(v32, 0);
        v24 = v31;
        v24.i32[3] = 0;
        v31 = v24;
        v1 = v30;
        v25 = sub_1AAF8CC64();
        *v26 = v31;
        v25(v32, 0);

        goto LABEL_14;
      }

      swift_unknownObjectRelease_n();
      result = sub_1AADA5F8C(v4);
      v12 = v13;
    }

    else
    {
LABEL_14:
      result = swift_unknownObjectRelease_n();
      v12 = v13;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1AADA5F34()
{
  if (!qword_1EB4235E8)
  {
    sub_1AAF8CDC4();
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4235E8);
    }
  }
}

uint64_t sub_1AADA5F8C(uint64_t a1)
{
  sub_1AADA5F34();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADA603C(uint64_t a1, uint64_t a2)
{
  sub_1AADA6220(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADA60C4(uint64_t a1)
{
  sub_1AADA6220(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AADA6144()
{
  result = qword_1ED9B44A8;
  if (!qword_1ED9B44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B44A8);
  }

  return result;
}

uint64_t sub_1AADA6198(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1AAD04750(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1AADA61DC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1AACD7304(result, a2, a3 & 1);
  }

  return result;
}

void sub_1AADA6220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AADA6270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AxisLabelPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[20])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisLabelPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

float sub_1AADA63D0(uint64_t a1, uint64_t a2)
{
  result = COERCE_DOUBLE((*(a2 + 48))());
  if (v3)
  {
    return 1.0;
  }

  return result;
}

char *sub_1AADA640C(unsigned __int8 a1)
{
  v1 = a1;
  sub_1AAD58174();
  Value = AGGraphGetValue();
  v3 = (Value + 4);
  v4 = (Value + 8);
  v5 = (Value + 20);
  if (v1 == 1)
  {
    v5 = (Value + 12);
  }

  else
  {
    v4 = (Value + 16);
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = Value;
  }

  if (v1)
  {
    v3 = v5;
  }

  v44 = *v3 - *v6;
  v7 = *v3 + *v6;
  LODWORD(v8) = *AGGraphGetValue();
  v40 = v8;
  v9 = AGGraphGetValue();
  v10 = v40;
  *(&v10 + 1) = v44;
  DWORD2(v10) = *v9;
  v41 = v10;
  if (v1)
  {
    if (v1 == 1)
    {
      v39 = xmmword_1AAF96C60;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v39 = xmmword_1AAF95180;
    }

    v12 = *AGGraphGetValue();
    v13 = AGGraphGetValue();
    if ((v11 & 1) == 0)
    {
      v15 = (v13 + 8);
      v14 = 1;
      v16 = 12;
      goto LABEL_18;
    }

    v14 = 1;
  }

  else
  {
    v12 = *(AGGraphGetValue() + 8);
    v13 = AGGraphGetValue();
    v14 = 0;
    v39 = xmmword_1AAF95170;
  }

  v15 = (v13 + 16);
  v16 = 20;
LABEL_18:
  v17 = 0;
  v18 = 0;
  v19 = v7 * 0.5;
  v20 = *(v13 + v16);
  v21 = *v15;
  v47[0] = v12;
  v22 = MEMORY[0x1E69E7CC0];
  do
  {
    v23 = 0;
    v24 = 0;
    v25 = *(v47 + v18);
    v38 = v17;
    v46[0] = v21;
    v46[1] = v20;
    do
    {
      v26 = v23;
      v27 = *&v46[v24];
      if (v1)
      {
        v28 = sub_1AAF904F4();

        if (v28)
        {
          v29 = v19;
        }

        else
        {
          v29 = v25;
        }

        if (((v14 | v28) & 1) == 0)
        {
          if (sub_1AAF904F4())
          {
            v29 = v25;
          }

          else
          {
            v29 = v27;
          }
        }

        v45 = v29;
        if (v1 != 2)
        {
          v43 = v19;
          goto LABEL_42;
        }
      }

      else
      {

        v45 = v19;
      }

      v30 = sub_1AAF904F4();
      if (v30)
      {
        v31 = v19;
      }

      else
      {
        v31 = v25;
      }

      if (((v30 | v14 ^ 1) & 1) == 0)
      {
        if (sub_1AAF904F4())
        {
          v31 = v25;
        }

        else
        {
          v31 = v27;
        }
      }

      v43 = v31;
      if (v1)
      {
        v32 = v19;
        goto LABEL_47;
      }

LABEL_42:
      if (sub_1AAF904F4())
      {
        v32 = v19;
      }

      else if (sub_1AAF904F4())
      {
        v32 = v25;
      }

      else
      {
        v32 = v27;
      }

LABEL_47:
      v42 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AAD688C4(0, *(v22 + 2) + 1, 1, v22);
      }

      v34 = *(v22 + 2);
      v33 = *(v22 + 3);
      if (v34 >= v33 >> 1)
      {
        v22 = sub_1AAD688C4((v33 > 1), v34 + 1, 1, v22);
      }

      *&v35 = __PAIR64__(LODWORD(v43), LODWORD(v45));
      *(&v35 + 1) = LODWORD(v42);
      *(v22 + 2) = v34 + 1;
      v36 = &v22[48 * v34];
      *(v36 + 2) = v41;
      *(v36 + 3) = v39;
      *(v36 + 4) = v35;
      v23 = 1;
      v24 = 1;
    }

    while ((v26 & 1) == 0);
    v17 = 1;
    v18 = 1;
  }

  while ((v38 & 1) == 0);
  return v22;
}

char *sub_1AADA681C@<X0>(char **a1@<X8>)
{
  result = sub_1AADA640C(*v1);
  *a1 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AxisLineTransforms(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisLineTransforms(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[12])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisLineTransforms(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AADA6900()
{
  sub_1AAF8D014();
  sub_1AADAB5C0(&qword_1EB423F68, MEMORY[0x1E697A360]);
  sub_1AAF8FB24();
  sub_1AAF8FBA4();
  v0 = 0;
  if (v4[4] != v4[0])
  {
    v1 = sub_1AAF8FC84();
    v0 = *v2;

    v1(v4, 0);
  }

  return v0;
}

void *sub_1AADA69EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1AAF8FF74();
  if (v4 == 1 << *(a1 + 32))
  {
    sub_1AADAC0E4(__src);
    return memcpy(a2, __src, 0x228uLL);
  }

  else
  {
    v7[0] = sub_1AADAB50C(&v7[1], v4, *(a1 + 36), 0, a1);
    memcpy(__dst, &v7[1], sizeof(__dst));
    memcpy(v11, &v7[1], sizeof(v11));
    v9[0] = v7[0];
    memcpy(&v9[1], &v7[1], 0x220uLL);
    memcpy(a2, v9, 0x228uLL);
    v10 = v7[0];
    sub_1AADABF88(__dst, __src);
    sub_1AADAC07C(v9, __src, sub_1AAD46990);
    sub_1AADABE4C(&v10, sub_1AAD46990);
    memcpy(__src, v7, sizeof(__src));
    sub_1AADABE4C(__src, sub_1AAD46990);
    return nullsub_1(a2, v6);
  }
}

uint64_t sub_1AADA6B4C(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v143 = a4;
  *&v155 = a1;
  v146 = a2;
  v132 = HIDWORD(a2);
  v135 = HIDWORD(a3);
  v142 = sub_1AAF8E7E4();
  v128 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1AAF8E824();
  v127 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v145 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AAF8F614();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v144 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD77B28();
  v12 = v11;
  v134 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v152 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v127 - v15;
  v149 = sub_1AAF8D014();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v138 = (&v127 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v127 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v153 = &v127 - v23;
  v151 = 0;
  sub_1AADABC68(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
  v130 = a3;
  v129 = v24;
  Value = AGGraphGetValue();
  v26 = *Value;
  v27 = *(*Value + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v133 = v12;
  if (v27)
  {
    v159 = MEMORY[0x1E69E7CC0];

    sub_1AAD214F4(0, v27, 0);
    v28 = v159;
    v29 = v26 + 32;
    do
    {
      sub_1AAD77BBC(v29, &v157);
      v30 = v157;
      v31 = v158;
      sub_1AAF90694();
      if (v30 == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v30;
      }

      MEMORY[0x1AC5992F0](*&v32);
      sub_1AAF906B4();
      if (v31)
      {
        sub_1AAF8E7D4();
      }

      v33 = sub_1AAF906F4();
      sub_1AAD77BF4(&v157);
      v159 = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1AAD214F4((v34 > 1), v35 + 1, 1);
        v28 = v159;
      }

      *(v28 + 16) = v35 + 1;
      *(v28 + 8 * v35 + 32) = v33;
      v29 += 112;
      --v27;
    }

    while (v27);

    v12 = v133;
  }

  v36 = sub_1AAD80FE0(v28);

  v37 = sub_1AAF8D094();
  v38 = v153;
  v154 = v37;
  sub_1AAF8CC34();
  v39 = *(v148 + 16);
  v40 = v149;
  v137 = (v148 + 16);
  v136 = v39;
  (v39)(v150, v38, v149);
  sub_1AADAB5C0(&qword_1EB423F70, MEMORY[0x1E697A360]);
  sub_1AAF8F744();
  sub_1AADAB5C0(&qword_1EB423F78, sub_1AAD77B28);
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1AAF8FE94();
    if (v157 == 0.0)
    {
      break;
    }

    v42 = sub_1AAF8D024();
    v44 = sub_1AADA7F38(v42, v43);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1AACF04D8(0, *(v41 + 2) + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = sub_1AACF04D8((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      *&v41[8 * v48 + 32] = v44;
    }
  }

  v49 = v134 + 8;
  v131 = *(v134 + 8);
  v131(v16, v12);
  v50 = v148 + 8;
  v51 = v153;
  v153 = *(v148 + 8);
  (v153)(v51, v40);
  *&v52 = COERCE_DOUBLE(sub_1AAD80FE0(v41));

  v53 = *(v36 + 16) > *(v52 + 16) >> 3;
  v134 = v49;
  if (v53)
  {
    v54 = sub_1AADAA1B0(v36, v52);
  }

  else
  {
    v157 = *&v52;
    sub_1AADAA0B8(v36);

    v54 = *&v157;
  }

  v55 = v151;
  v56 = v138;
  v57 = v136;
  v58 = MEMORY[0x1E69E7CC0];
  sub_1AAF8CC34();
  *&v59 = MEMORY[0x1E69E7CD0];
  v60 = v152;
  if (v58 >> 62)
  {
    goto LABEL_134;
  }

  while (1)
  {
    v157 = *&v59;
    v61 = v149;
    (v57)(v150, v56, v149);
    v62 = sub_1AADA8B68();
    (v153)(v56, v61);

    v56 = v62 >> 62 ? sub_1AAF8FFB4() : *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v148 = v50;
    if (!v56)
    {
      break;
    }

    v63 = 0;
    v50 = v62 & 0xC000000000000001;
    v151 = v62 & 0xFFFFFFFFFFFFFF8;
    v64 = v62;
    v138 = (v62 + 32);
    v137 = (&v157 + 1);
    v57 = (v54 + 56);
    while (v50)
    {
      v60 = MEMORY[0x1AC598D40](v63, v64);
      v65 = __OFADD__(v63++, 1);
      if (v65)
      {
        goto LABEL_128;
      }

LABEL_36:
      *&v66 = COERCE_DOUBLE(sub_1AAF8D024());
      v68 = HIBYTE(v67) & 0xF;
      v69 = v66 & 0xFFFFFFFFFFFFLL;
      if ((v67 & 0x2000000000000000) != 0)
      {
        v70 = HIBYTE(v67) & 0xF;
      }

      else
      {
        v70 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (!v70)
      {

        goto LABEL_29;
      }

      if ((v67 & 0x1000000000000000) == 0)
      {
        if ((v67 & 0x2000000000000000) != 0)
        {
          v157 = *&v66;
          v158 = v67 & 0xFFFFFFFFFFFFFFLL;
          if (v66 == 43)
          {
            if (!v68)
            {
              goto LABEL_133;
            }

            v69 = v68 - 1;
            if (v68 != 1)
            {
              v73 = 0;
              v83 = v137;
              while (1)
              {
                v84 = *v83 - 48;
                if (v84 > 9)
                {
                  break;
                }

                v85 = 10 * v73;
                if ((v73 * 10) >> 64 != (10 * v73) >> 63)
                {
                  break;
                }

                v73 = v85 + v84;
                if (__OFADD__(v85, v84))
                {
                  break;
                }

                v83 = (v83 + 1);
                if (!--v69)
                {
                  goto LABEL_97;
                }
              }
            }
          }

          else if (v66 == 45)
          {
            if (!v68)
            {
              goto LABEL_132;
            }

            v69 = v68 - 1;
            if (v68 != 1)
            {
              v73 = 0;
              v77 = v137;
              while (1)
              {
                v78 = *v77 - 48;
                if (v78 > 9)
                {
                  break;
                }

                v79 = 10 * v73;
                if ((v73 * 10) >> 64 != (10 * v73) >> 63)
                {
                  break;
                }

                v73 = v79 - v78;
                if (__OFSUB__(v79, v78))
                {
                  break;
                }

                v77 = (v77 + 1);
                if (!--v69)
                {
                  goto LABEL_97;
                }
              }
            }
          }

          else if (v68)
          {
            v73 = 0;
            v88 = &v157;
            while (1)
            {
              v89 = *v88 - 48;
              if (v89 > 9)
              {
                break;
              }

              v90 = 10 * v73;
              if ((v73 * 10) >> 64 != (10 * v73) >> 63)
              {
                break;
              }

              v73 = v90 + v89;
              if (__OFADD__(v90, v89))
              {
                break;
              }

              v88 = (v88 + 1);
              if (!--v68)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else
        {
          if ((v66 & 0x1000000000000000) != 0)
          {
            v71 = ((v67 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v71 = sub_1AAF90164();
            v69 = v97;
          }

          v72 = *v71;
          if (v72 == 43)
          {
            if (v69 < 1)
            {
              goto LABEL_130;
            }

            if (--v69)
            {
              v73 = 0;
              if (!v71)
              {
                goto LABEL_95;
              }

              v80 = v71 + 1;
              while (1)
              {
                v81 = *v80 - 48;
                if (v81 > 9)
                {
                  break;
                }

                v82 = 10 * v73;
                if ((v73 * 10) >> 64 != (10 * v73) >> 63)
                {
                  break;
                }

                v73 = v82 + v81;
                if (__OFADD__(v82, v81))
                {
                  break;
                }

                ++v80;
                if (!--v69)
                {
                  goto LABEL_97;
                }
              }
            }
          }

          else if (v72 == 45)
          {
            if (v69 < 1)
            {
              goto LABEL_131;
            }

            if (--v69)
            {
              v73 = 0;
              if (v71)
              {
                v74 = v71 + 1;
                while (1)
                {
                  v75 = *v74 - 48;
                  if (v75 > 9)
                  {
                    goto LABEL_96;
                  }

                  v76 = 10 * v73;
                  if ((v73 * 10) >> 64 != (10 * v73) >> 63)
                  {
                    goto LABEL_96;
                  }

                  v73 = v76 - v75;
                  if (__OFSUB__(v76, v75))
                  {
                    goto LABEL_96;
                  }

                  ++v74;
                  if (!--v69)
                  {
                    goto LABEL_97;
                  }
                }
              }

LABEL_95:
              LOBYTE(v69) = 0;
LABEL_97:
              LOBYTE(v156) = v69;
              v91 = v69;

              if ((v91 & 1) == 0)
              {
                goto LABEL_98;
              }

              goto LABEL_29;
            }
          }

          else
          {
            if (!v69)
            {
              goto LABEL_96;
            }

            v73 = 0;
            if (!v71)
            {
              goto LABEL_95;
            }

            while (1)
            {
              v86 = *v71 - 48;
              if (v86 > 9)
              {
                break;
              }

              v87 = 10 * v73;
              if ((v73 * 10) >> 64 != (10 * v73) >> 63)
              {
                break;
              }

              v73 = v87 + v86;
              if (__OFADD__(v87, v86))
              {
                break;
              }

              ++v71;
              if (!--v69)
              {
                goto LABEL_97;
              }
            }
          }
        }

LABEL_96:
        v73 = 0;
        LOBYTE(v69) = 1;
        goto LABEL_97;
      }

      LOBYTE(v156) = 0;
      v73 = sub_1AADAA60C(v66, v67, 10);
      LODWORD(v136) = v96;

      if ((v136 & 1) == 0)
      {
LABEL_98:
        if (*(v54 + 16))
        {
          v92 = sub_1AAF90684();
          v93 = -1 << *(v54 + 32);
          v94 = v92 & ~v93;
          if ((*(v57 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94))
          {
            v95 = ~v93;
            while (*(*(v54 + 48) + 8 * v94) != v73)
            {
              v94 = (v94 + 1) & v95;
              if (((*(v57 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
              {
                goto LABEL_29;
              }
            }

            sub_1AAF8CC14();
          }
        }
      }

LABEL_29:

      v60 = v152;
      if (v63 == v56)
      {
        goto LABEL_108;
      }
    }

    if (v63 >= *(v151 + 16))
    {
      goto LABEL_129;
    }

    v60 = v138[v63];

    v65 = __OFADD__(v63++, 1);
    if (!v65)
    {
      goto LABEL_36;
    }

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
    if (sub_1AAF8FFB4())
    {
      *&v59 = COERCE_DOUBLE(sub_1AADAB7B8(MEMORY[0x1E69E7CC0]));
    }

    else
    {
      *&v59 = MEMORY[0x1E69E7CD0];
    }
  }

LABEL_108:

  v159 = MEMORY[0x1E69E7CD0];
  v98 = *AGGraphGetValue();
  v99 = *(v98 + 16);
  if (!v99)
  {
    goto LABEL_124;
  }

  v100 = v98 + 32;
  v138 = (v128 + 16);
  v137 = (v128 + 8);
  v136 = (v127 + 8);
  v101 = *MEMORY[0x1E69DB968];
  v130 = v98;

  while (2)
  {
    sub_1AAD77BBC(v100, &v157);
    v102 = v150;
    v103 = sub_1AAF8CC34();
    MEMORY[0x1EEE9AC00](v103);
    *(&v127 - 2) = &v157;
    v104 = sub_1AADA82F0(sub_1AADAB608);
    v105 = v149;
    v106 = (v153)(v102, v149);
    if (v104)
    {

      v107 = v147;
      sub_1AAF8CC34();
      v108 = sub_1AADA6900();
      (v153)(v107, v105);
      if (!v108)
      {

        goto LABEL_115;
      }
    }

    else
    {
LABEL_115:
      MEMORY[0x1EEE9AC00](v106);
      *(&v127 - 2) = &v157;
      sub_1AAE29440(sub_1AADAB628);
      if (!v109)
      {
        v110 = AGGraphGetValue();
        sub_1AACE0A98(v110, &v156);
        sub_1AAF75A98(*&v157, 0, 0);
        sub_1AAD57C94(&v156);
      }

      sub_1AAF8F604();
      sub_1AAF8CA94();
      sub_1AAF8F654();
      v111 = v158;
      v151 = v55;
      if (v158)
      {
        v112 = v99;

        v113 = v142;
        v114 = AGGraphGetValue();
        v115 = v141;
        (*v138)(v141, v114, v113);
        v116 = v139;
        sub_1AAF8E804();
        (*v137)(v115, v113);
        sub_1AAF8E814();
        v118 = v117;
        (*v136)(v116, v140);
        v119 = [objc_opt_self() systemFontOfSize:v118 weight:v101];
      }

      else
      {
        if (qword_1EB422B90 != -1)
        {
          swift_once();
        }

        v112 = v99;
        v119 = qword_1EB432090;
      }

      sub_1AAF8CD24();
      v120 = v119;
      sub_1AAF8CCF4();

      sub_1AAF8CC04();
      swift_allocObject();
      v108 = sub_1AAF8CBF4();

      v121 = *(AGGraphGetValue() + 16);

      sub_1AADAC7CC(v108, v121);

      swift_allocObject();
      sub_1AAF8D084();
      sub_1AAF8CC24();
      v122 = v157;

      v156 = sub_1AAD7616C(v111, v122);
      sub_1AAF90474();
      sub_1AAF8D034();
      sub_1AAF8CC24();

      v60 = v152;
      v99 = v112;
      v55 = v151;
    }

    sub_1AAF8CC54();

    sub_1AAD7ACE8(&v156, v108);

    swift_unknownObjectRelease();
    sub_1AAD77BF4(&v157);
    v100 += 112;
    if (--v99)
    {
      continue;
    }

    break;
  }

LABEL_124:
  sub_1AAF8CC34();
  sub_1AAF8CFE4();
  v123 = v133;
  sub_1AAF8CFF4();
  if (v157 != 0.0)
  {
    type metadata accessor for simd_quatf(0);
    do
    {
      v155 = *AGGraphGetValue();
      v124 = sub_1AAF8CC64();
      *(v125 + 16) = v155;
      v124(&v157, 0);

      sub_1AAF8CFF4();
    }

    while (v157 != 0.0);
  }

  v131(v60, v123);
  return v159;
}

uint64_t sub_1AADA7F38(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1AAF90164();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1AADAA60C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1AADA8238(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF8D024();
  v5 = v4;
  sub_1AAD7616C(*(a2 + 8), *a2);
  if (v3 == sub_1AAF90474() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AAF904F4();
  }

  return v8 & 1;
}

uint64_t sub_1AADA82F0(uint64_t (*a1)(uint64_t *))
{
  v4 = sub_1AAF8D014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD77B28();
  v9 = v8;
  v16 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v1, v4, v10);
  sub_1AADAB5C0(&qword_1EB423F70, MEMORY[0x1E697A360]);
  sub_1AAF8F744();
  sub_1AADAB5C0(&qword_1EB423F78, sub_1AAD77B28);
  while (1)
  {
    sub_1AAF8FE94();
    v13 = v18;
    if (!v18)
    {
      (*(v16 + 8))(v12, v9);
      return 0;
    }

    v17 = v18;
    v14 = a1(&v17);
    if (v2)
    {
      break;
    }

    if (v14)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  (*(v16 + 8))(v12, v9);
  return v13;
}

uint64_t sub_1AADA8568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1AADABC00(0, &qword_1ED9B4468, sub_1AAD46810, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  v12 = *a2;
  sub_1AADABA40(a1, &v30);
  if (v32)
  {
    v28 = v30;
    *v29 = *v31;
    *&v29[9] = *&v31[9];
    sub_1AACE0A98(&v28, &v24);
    if (v27 - 1 >= 2)
    {
      if (v27)
      {
        v23 = v12;
        sub_1AAF8CA74();
        sub_1AAD46810();
        sub_1AAF8C794();
        sub_1AADABA9C();
        sub_1AAF8F344();
        (*(v9 + 8))(v11, v8);
        result = sub_1AAD57C94(&v28);
        v15 = *(&v21[0] + 1);
        v14 = *&v21[0];
      }

      else
      {
        v21[1] = v25;
        v21[0] = v24;
        v22 = v26;
        v23 = v12;
        v19 = sub_1AACBB42C(v21, *(&v25 + 1));
        v14 = sub_1AAF7743C(v19, &v23, MEMORY[0x1E69E63B0]);
        v15 = v20;
        sub_1AAD57C94(&v28);
        result = sub_1AADABB2C(v21);
      }
    }

    else
    {
      sub_1AAD57C94(&v24);
      result = sub_1AAD57C94(&v28);
      v14 = 0;
      v15 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1AACBB198(&v30, &v28);
    v16 = *&v29[8];
    v17 = *&v29[16];
    sub_1AACBB42C(&v28, *&v29[8]);
    v14 = (*(v17 + 8))(v12, 0, 0, v16, v17);
    v15 = v18;
    result = sub_1AACB634C(&v28);
  }

  *a3 = v14;
  a3[1] = v15;
  return result;
}

uint64_t sub_1AADA8868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AADA6B4C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

char *sub_1AADA889C()
{
  v0 = MEMORY[0x1E69E7CD0];
  v11 = MEMORY[0x1E69E7CD0];
  sub_1AADABC68(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  v2 = *(*Value + 16);
  if (v2)
  {
    v3 = *Value + 32;

    do
    {
      sub_1AAD77BBC(v3, &v10);
      v4 = v10;
      sub_1AAD77BF4(&v10);
      sub_1AAD7ABF4(&v9, *&v4);
      v3 += 112;
      --v2;
    }

    while (v2);

    v0 = v11;
  }

  v5 = *(v0 + 16);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = sub_1AAD6C0D4(*(v0 + 16), 0);
  v7 = sub_1AADA9404(&v10, v6 + 4, v5, v0);
  sub_1AACC9C00();
  if (v7 != v5)
  {
    __break(1u);
LABEL_8:

    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = v6;

  sub_1AADA000C(&v10);

  return v10;
}

char *sub_1AADA8A0C@<X0>(char **a1@<X8>)
{
  result = sub_1AADA889C();
  *a1 = result;
  return result;
}

uint64_t sub_1AADA8A38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AAF8CAA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADABC68(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *AGGraphGetValue();

  sub_1AAF8CA94();
  sub_1AAF0D208(v6, v5, a1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AADA8B68()
{
  sub_1AAD77B28();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1AAF8D014();
  sub_1AADAB5C0(&qword_1EB423F70, MEMORY[0x1E697A360]);
  sub_1AAF8F744();
  sub_1AADAB5C0(&qword_1EB423F78, sub_1AAD77B28);
  while (1)
  {
    sub_1AAF8FE94();
    v5 = v9;
    if (!v9)
    {
      break;
    }

    v6 = sub_1AAD7AE00(&v9, v5);

    if (v6)
    {
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
    }

    else
    {
    }
  }

  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_1AADA8D60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v70 = a3;
  sub_1AACEC8E4();
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for CalendarBinningUnit(0);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v56 - v14;
  sub_1AADABCB8(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE9A60();
  v72 = v18;
  v69 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADABD50();
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AADABDE4(v3, v23, type metadata accessor for DateBins);
  v25 = *(v21 + 44);
  v65 = v23;
  v67 = v25;
  *&v23[v25] = 0;
  if (!a2)
  {
LABEL_28:
    v70 = 0;
LABEL_29:
    v28 = v65;
LABEL_32:
    sub_1AADABDE4(v28, a1, sub_1AADABD50);
    return v70;
  }

  if (!v70)
  {
    goto LABEL_29;
  }

  if ((v70 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v56 = a1;
  v57 = v9;
  v66 = (v69 + 56);
  v26 = 1;
  v62 = v12;
  v63 = v10;
  v71 = v17;
  v27 = v64;
  v28 = v65;
  while (1)
  {
    sub_1AADAC07C(v28, v27, type metadata accessor for DateBins.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1AACE99D0();
        v31 = *(v27 + *(v30 + 64));
        sub_1AADABE4C(v27, type metadata accessor for CalendarBinningUnit);
      }

      else
      {
        v32 = *(*v27 + 16);

        v31 = v32 - 1;
      }
    }

    else
    {
      v31 = v27[2];
    }

    v33 = v26 - 1;
    if (v26 - 1 == v31)
    {
      v55 = v71;
      (*v66)(v71, 1, 1, v72);
      sub_1AADABE4C(v55, sub_1AADABCB8);
      v70 = v26 - 1;
LABEL_31:
      a1 = v56;
      goto LABEL_32;
    }

    sub_1AADAC07C(v28, v12, type metadata accessor for DateBins.Storage);
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AACE99D0();
      v35 = *(v12 + *(v34 + 48));
      v36 = *(v12 + *(v34 + 64));
      sub_1AADABDE4(v12, v9, type metadata accessor for CalendarBinningUnit);
      result = v35 + v33;
      if (__OFADD__(v35, v33))
      {
        goto LABEL_34;
      }

      v37 = v59;
      sub_1AACE8E98(result, v59);
      sub_1AADABE4C(v9, type metadata accessor for CalendarBinningUnit);
      v38 = sub_1AAF8CA64();
      v39 = *(*(v38 - 8) + 32);
      v40 = v71;
      v39(v71, v37, v38);
      result = (v39)(&v40[*(v72 + 36)], &v37[*(v60 + 36)], v38);
      v41 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v43 = *v12;
      v44 = *(*v12 + 16);
      if (v33 >= (v44 - 1))
      {
        goto LABEL_33;
      }

      v61 = a2;
      v45 = sub_1AAF8CA64();
      v46 = *(v45 - 8);
      v47 = *(v46 + 16);
      v48 = v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v49 = *(v46 + 72);
      v50 = v71;
      result = v47(v71, v48 + v49 * v33, v45);
      if (v26 >= v44)
      {
        goto LABEL_35;
      }

      v47(&v50[*(v72 + 36)], v48 + v49 * v26, v45);

      v41 = v44 - 2;
      a2 = v61;
      v9 = v57;
    }

    v12 = v62;
    v27 = v64;
    v28 = v65;
LABEL_24:
    v51 = v71;
    v71[*(v72 + 40)] = v33 == v41;
    v52 = v66;
    *(v28 + v67) = v26;
    (*v52)(v51, 0, 1);
    v53 = v51;
    a1 = v68;
    sub_1AADABDE4(v53, v68, sub_1AACE9A60);
    sub_1AADABDE4(a1, a2, sub_1AACE9A60);
    if (v70 == v26)
    {
      goto LABEL_31;
    }

    a2 += *(v69 + 72);
    if (__OFADD__(v26++, 1))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  v42 = v12[2];
  sub_1AAF8C844();
  result = sub_1AAF8C844();
  v41 = v42 - 1;
  if (!__OFSUB__(v42, 1))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void *sub_1AADA9404(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1AADA9504(void *result, char *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 304 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x130uLL);
      memmove(v11, v18, 0x130uLL);
      if (v14 == v10)
      {
        sub_1AADAC07C(__dst, v22, sub_1AAD45FFC);
        goto LABEL_23;
      }

      v11 += 304;
      sub_1AADAC07C(__dst, v22, sub_1AAD45FFC);
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1AADA96BC(void *result, char *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 312 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x138uLL);
      memmove(v11, v18, 0x138uLL);
      if (v14 == v10)
      {
        sub_1AAD9BFEC(__dst, v22);
        goto LABEL_23;
      }

      v11 += 312;
      sub_1AAD9BFEC(__dst, v22);
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1AADA984C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v22 = result;
    v23 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = *(*(a4 + 48) + 8 * v16);
      v19 = (*(a4 + 56) + 544 * v16);
      memcpy(__dst, v19, sizeof(__dst));
      memcpy(__src, v19, sizeof(__src));
      *v9 = v18;
      memcpy(v9 + 1, __src, 0x220uLL);
      if (v12 == v8)
      {
        sub_1AADABF88(__dst, v24);
        v5 = v23;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 69;
      sub_1AADABF88(__dst, v24);
      result = v12;
      v20 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v20)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v21 = v10 + 1;
    }

    else
    {
      v21 = v11;
    }

    v10 = v21 - 1;
    v8 = result;
    v5 = v23;
LABEL_23:
    result = v22;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1AADA9A00(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AAF90684();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AAD7C15C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1AADA9C14(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1AADA9AF0(uint64_t a1)
{
  v3 = *v1;
  sub_1AAF90694();
  sub_1AAD7A88C(v14, a1);
  v4 = sub_1AAF906F4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {

    v9 = sub_1AAD79EF4(v8, a1);

    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14[0] = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AAD7BA6C();
    v12 = v14[0];
  }

  v13 = *(*(v12 + 48) + 8 * v6);
  sub_1AADA9D98(v6);
  result = v13;
  *v1 = v14[0];
  return result;
}

unint64_t sub_1AADA9C14(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AAF8FF84();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1AAF90684() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1AADA9D98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AAF8FF84();
    v24 = v3;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v10 = v3;
      do
      {
        v11 = v4;
        v12 = *(*(v10 + 48) + 8 * v6);
        sub_1AAF90694();
        MEMORY[0x1AC5992C0](*(v12 + 16));
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = v12 + 32;

          do
          {
            sub_1AAD80DAC(v14, v30);
            sub_1AAD80DAC(v30, v27);
            if (v29)
            {
              v25[0] = v27[0];
              v25[1] = v27[1];
              v26 = v28;
              MEMORY[0x1AC5992C0](1);
              sub_1AAF90014();
              sub_1AAD80E08(v25);
            }

            else
            {
              v15 = *&v27[0];
              MEMORY[0x1AC5992C0](0);
              MEMORY[0x1AC5992C0](v15);
            }

            sub_1AAD80E5C(v30);
            v14 += 48;
            --v13;
          }

          while (v13);
        }

        else
        {
        }

        v16 = sub_1AAF906F4();

        v17 = v16 & v7;
        if (v2 >= v9)
        {
          v4 = v11;
          v10 = v24;
          if (v17 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v11;
          v10 = v24;
          if (v17 >= v9)
          {
            goto LABEL_18;
          }
        }

        if (v2 >= v17)
        {
LABEL_18:
          v18 = *(v10 + 48);
          v19 = (v18 + 8 * v2);
          v20 = (v18 + 8 * v6);
          if (v2 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
    v3 = v24;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1AADAA018(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AADAA0A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1AADAA0B8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1AADA9A00(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
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

uint64_t sub_1AADAA1B0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v47 << 9) | (8 * v18)));
        v19 = sub_1AAF90684();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v49 = v45;
    v50 = v47;
    v51 = v11;
    v48[0] = v46;
    v48[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v14);
      v40 = sub_1AADAB098(v39, v4, v6, v5, v48);

      MEMORY[0x1AC59A0D0](v39, -1, -1);
      v45 = v49;
      v47 = v50;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v4;
    v43 = &v41;
    MEMORY[0x1EEE9AC00](v22);
    v5 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v14);
    v24 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v47 << 9) | (8 * v29)));
      v30 = sub_1AAF90684();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_1AADAB254(v5, v42, v44, v6);
LABEL_43:
    sub_1AACC9C00();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}