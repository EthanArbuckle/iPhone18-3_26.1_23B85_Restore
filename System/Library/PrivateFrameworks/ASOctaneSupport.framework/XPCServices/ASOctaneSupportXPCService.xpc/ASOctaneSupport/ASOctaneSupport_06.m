uint64_t *sub_10006CFAC(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_24:
    a3 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a3;
    return IOError.errnoCode.getter(result, a2, a3);
  }

  if (a3 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a4)
  {
    v6 = 0;
    v8 = a6 - a5 == 0x8000000000000000 && a4 == -1;
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (a5)
      {
        if (v8)
        {
          goto LABEL_30;
        }

        if (v6 == (a6 - a5) / a4)
        {
          a3 = v6;
          goto LABEL_25;
        }
      }

      else if (!v6)
      {
        goto LABEL_24;
      }

      v10 = v6 * a4;
      if ((v6 * a4) >> 64 != (v6 * a4) >> 63)
      {
        goto LABEL_27;
      }

      v11 = v9 * a4;
      if ((v9 * a4) >> 64 != (v9 * a4) >> 63)
      {
        goto LABEL_28;
      }

      if (v11 < v10)
      {
        goto LABEL_29;
      }

      v12 = a5 + v10;
      v13 = a5 + v11;
      if (!a5)
      {
        v13 = 0;
        v12 = 0;
      }

      *a2 = v12;
      a2[1] = v13;
      a2 += 2;
      ++v6;
      if (v9 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10006D07C(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v4 = result;
  v5 = v3[3];
  if (!a2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_15:
    v16 = *(v3 + 1);
    *v4 = *v3;
    *(v4 + 16) = v16;
    *(v4 + 32) = v3[4];
    *(v4 + 40) = v5;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = v3[4];
    v17 = *(v3 + 22);
    v9 = *(v3 + 10);
    v10 = *(v3 + 2);
    v11 = *(v3 + 3);
    v12 = *v3;
    result = swift_beginAccess();
    v13 = v8 - v5;
    v14 = v6;
    while (1)
    {
      if (v8 == v5)
      {
        v5 = v8;
        v6 = v13;
        goto LABEL_15;
      }

      if (v5 >= v8)
      {
        break;
      }

      v15 = v5 - v10;
      if (__OFSUB__(v5, v10))
      {
        goto LABEL_17;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v11 < v10)
      {
        goto LABEL_19;
      }

      if (v15 >= v11 - v10)
      {
        goto LABEL_20;
      }

      ++v5;
      *v7++ = *(*(v12 + 24) + (v17 | (v9 << 8)) + v10 + v15);
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10006D1A8()
{
  sub_100037C08();
  v4 = v3;
  v5 = v2;
  v7 = v6;
  if (!v0)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = v1;
  if (!v1)
  {
LABEL_12:
    *v7 = v5;
    *(v7 + 8) = v4;
    *(v7 + 16) = v8;
    sub_100037B00();
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v9 = v0;
    v10 = 0;
    v11 = (v2 + 56);
    v12 = v1 - 1;
    while (1)
    {
      v13 = *(v5 + 16);
      if (v10 == v13)
      {
        v8 = v10;
        goto LABEL_12;
      }

      if (v10 >= v13)
      {
        break;
      }

      v14 = *(v11 - 1);
      v15 = *v11;
      v16 = *(v11 - 2);
      *v9 = *(v11 - 3);
      v9[1] = v16;
      v9[2] = v14;
      v9[3] = v15;
      if (v12 == v10)
      {

        goto LABEL_12;
      }

      v9 += 4;

      v11 += 4;
      ++v10;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10006D278(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = *(v3 + 14);
  v6 = *(v3 + 30);
  v7 = *(v3 + 62);
  v8 = *(v3 + 63);
  v32 = v3[8];
  if (!a2)
  {
    v9 = 0;
    goto LABEL_26;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_26:
    v25 = *(v3 + 1);
    *v4 = *v3;
    *(v4 + 16) = v25;
    *(v4 + 32) = *(v3 + 2);
    *(v4 + 48) = v3[6];
    *(v4 + 56) = v5;
    *(v4 + 60) = v6;
    *(v4 + 62) = v7;
    *(v4 + 63) = v8;
    *(v4 + 64) = v32;
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v11 = 0;
    v12 = *(v3 + 63) & 1;
    v13 = v3[1];
    v31 = *v3;
    v29 = *(v3 + 14);
    v30 = *v3 + 32;
    v27 = *(v3 + 62);
    v28 = *(v3 + 30);
    v26 = *(v3 + 63);
    while (v11 < v9)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_28;
      }

      if ((v32 & 0xFF00000000000000) == 0x200000000000000)
      {
        v9 = 0;
        LODWORD(v5) = v29;
        v7 = v27;
        v6 = v28;
        v8 = v26;
        goto LABEL_26;
      }

      v14 = *(v31 + 16);
      if (v12)
      {
        if ((v32 & 0x100000000000000) != 0)
        {
          v15 = 0;
        }

        else
        {
          v15 = *(v31 + 16);
        }

        v16 = v32 - v5 + v15;
      }

      else if ((v32 & 0x100000000000000) != 0)
      {
        v17 = v5 - v32 + v14;
        v18 = __OFSUB__(0, v17);
        v16 = -v17;
        if (v18)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v16 = v32 - v5;
      }

      if (v16 < 0)
      {
        v9 = v11;
        goto LABEL_26;
      }

      if (v14 <= v5)
      {
        goto LABEL_29;
      }

      v19 = v30 + (v5 << 6);
      v20 = *v19;
      v21 = *(v19 + 24);
      v43 = *(v19 + 8);
      v44 = v21;
      v45 = *(v19 + 40);
      v46 = *(v19 + 56);
      if (!v20)
      {
        goto LABEL_33;
      }

      v22 = *(v19 + 24);
      v39 = *(v19 + 8);
      v40 = v22;
      v41 = *(v19 + 40);
      v42 = *(v19 + 56);
      v23 = (v14 + 0x1FFFFFFFFLL) & (v5 + 1);
      v12 = v23 >= v13;
      if (HIDWORD(v23))
      {
        goto LABEL_30;
      }

      v8 = v23 >= v13;
      v5 = (v14 - 1) & (v5 + 1);
      *v10 = v20;
      v24 = v40;
      *(v10 + 8) = v39;
      *(v10 + 24) = v24;
      *(v10 + 40) = v41;
      *(v10 + 56) = v42;
      if (v11 + 1 == v9)
      {
        v34 = v20;
        v35 = v43;
        v36 = v44;
        v37 = v45;
        v38 = v46;
        sub_1000370F8(&v34, v33);
        v7 = -1;
        v6 = -1;
        goto LABEL_26;
      }

      v34 = v20;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      result = sub_1000370F8(&v34, v33);
      ++v11;
      v10 += 64;
      v7 = -1;
      v6 = -1;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10006D524(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    *v7 = a4;
    v7[1] = a5;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v11 = a3 - 1;
    while (1)
    {
      v12 = *(a4 + 16);
      if (a5 == v12)
      {
        v8 = -v10;
        goto LABEL_12;
      }

      if (a5 >= v12)
      {
        break;
      }

      *v9 = *(a4 + 32 + 16 * a5);
      if (!(v11 + v10))
      {
        swift_unknownObjectRetain();
        ++a5;
        goto LABEL_12;
      }

      ++v9;
      result = swift_unknownObjectRetain();
      --v10;
      ++a5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006D5E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(a5))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = a5;
  if (!a2)
  {
    a3 = 0;
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a6;
    *(result + 24) = a5;
    *(result + 28) = 0x1FFFFFF;
    return IOError.errnoCode.getter(result, a2, a3);
  }

  if (!a3)
  {
    LOBYTE(v8) = 1;
LABEL_21:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a6;
    *(result + 24) = v6;
    *(result + 28) = -1;
    *(result + 30) = -1;
LABEL_23:
    *(result + 31) = v8;
    return IOError.errnoCode.getter(result, a2, a3);
  }

  if (a3 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((a6 & 0x8000000000000000) == 0)
  {
    v7 = HIDWORD(a6);
    if (HIDWORD(a6))
    {
      goto LABEL_32;
    }

    LOBYTE(v8) = 1;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v8 &= 1u;
      if (a6 < a5 != v8 && v6 == a6)
      {
        *result = a4;
        *(result + 8) = a5;
        *(result + 16) = a6;
        *(result + 24) = a6;
        *(result + 28) = -1;
        *(result + 30) = -1;
        a3 = v7;
        goto LABEL_23;
      }

      v11 = *(a4 + 16);
      if (v11 <= v6)
      {
        goto LABEL_26;
      }

      v12 = (a4 + 32 + 2 * v6);
      if (v12[1])
      {
        goto LABEL_33;
      }

      v6 = (v11 + 0x1FFFFFFFFLL) & (v6 + 1);
      if (HIDWORD(v6))
      {
        goto LABEL_27;
      }

      LOBYTE(v8) = v6 >= a5;
      v6 = v6;
      *(a2 + v7++) = *v12;
      if (v9 == a3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_10006D718(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return IOError.errnoCode.getter(result, a2, a3);
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10006D7FC()
{
  sub_100037C08();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = HIWORD(v2);
  v13 = HIDWORD(v2);
  if (!v0)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v14 = v1;
  if (!v1)
  {
LABEL_14:
    *v11 = v9;
    *(v11 + 8) = v7;
    *(v11 + 16) = v5;
    *(v11 + 24) = v3;
    *(v11 + 30) = v12;
    *(v11 + 28) = v13;
    *(v11 + 32) = v14;
    sub_100037B00();
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v15 = v0;
    for (i = 0; i < v14; ++i)
    {
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }

      if (v9 == i)
      {
        v14 = v9;
        goto LABEL_14;
      }

      if (i >= v9)
      {
        goto LABEL_17;
      }

      *v15 = v7;
      *(v15 + 8) = v5;
      *(v15 + 16) = v3;
      *(v15 + 22) = v12;
      *(v15 + 20) = v13;
      if (i + 1 == v14)
      {

        goto LABEL_14;
      }

      v15 += 24;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

void *sub_10006D8EC(void *__dst, _OWORD *a2, unint64_t a3)
{
  v4 = __dst;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_14:
    memcpy(v4, v3, 0x48uLL);
    v4[9] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 0;
    v8 = *v3;
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

      if (v8 == v7)
      {
        v5 = v8;
        goto LABEL_14;
      }

      v9 = *(v3 + 3);
      v14[0] = *(v3 + 1);
      v14[1] = v9;
      v10 = *(v3 + 7);
      v14[2] = *(v3 + 5);
      v14[3] = v10;
      if (v7 >= v8)
      {
        goto LABEL_17;
      }

      v11 = *(v3 + 3);
      *v6 = *(v3 + 1);
      v6[1] = v11;
      v12 = *(v3 + 7);
      v6[2] = *(v3 + 5);
      v6[3] = v12;
      if (v7 + 1 == v5)
      {
        sub_100057CB8(v14, v13, &qword_1002ADC00);
        goto LABEL_14;
      }

      v6 += 4;
      __dst = sub_100057CB8(v14, v13, &qword_1002ADC00);
      ++v7;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return __dst;
}

uint64_t sub_10006DA24(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6)
{
  if (!a2)
  {
    v10 = 0;
    v9 = 0;
LABEL_22:
    *result = a4;
    *(result + 8) = v10;
    *(result + 16) = a5;
    *(result + 24) = a6;
    return v9;
  }

  v9 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_22;
  }

  if (a3 < 0)
  {
    goto LABEL_27;
  }

  v17 = result;
  v19 = a2;
  result = sub_10013B560(a4);
  v10 = result;
  v11 = 0;
  v12 = 0;
  v16 = v9;
LABEL_5:
  if (__OFADD__(v11, 1))
  {
    goto LABEL_26;
  }

  v18 = v11 + 1;
  v13 = v12;
  for (i = v11; ; v11 = i)
  {
    if (v10 == v13)
    {
      v9 = v11;
LABEL_20:
      result = v17;
      goto LABEL_22;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
      v15 = result;
      goto LABEL_12;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v15 = *(a4 + 8 * v13 + 32);

LABEL_12:
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_24;
    }

    v20 = v15;
    result = a5(&v20);
    if (result)
    {
      *v19++ = v15;
      v11 = v18;
      v9 = v16;
      if (v18 != v16)
      {
        goto LABEL_5;
      }

      v10 = v12;
      goto LABEL_20;
    }

    ++v13;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_10006DB90()
{
  sub_100037C08();
  v4 = v3;
  v5 = v3 + 56;
  sub_10006E4D4();
  if (!v7)
  {
    v9 = 0;
LABEL_17:
    sub_10006E540(v9);
    sub_100037B00();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    sub_10006E524();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v2)
          {
            goto LABEL_17;
          }

          v1 = *(v5 + 8 * v12);
          ++v9;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      v13 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v1)))));
      v14 = v13[1];
      v1 &= v1 - 1;
      *v0 = *v13;
      v0[1] = v14;
      if (v11 == v8)
      {

        v9 = v12;
        goto LABEL_17;
      }

      v0 += 2;

      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10006DCA0()
{
  sub_10006E4B0();
  result = memcpy(v8, v3, 0x41uLL);
  v8[9] = 0;
  if (!v2)
  {
    v0 = 0;
    goto LABEL_12;
  }

  if (!v0)
  {
LABEL_12:
    memcpy(v1, v8, 0x50uLL);
    return v0;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v8[0];
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 == v5)
      {
        v0 = v6;
        goto LABEL_12;
      }

      if (v5 >= v6)
      {
        goto LABEL_14;
      }

      ++v5;
      v8[9] = v7;
      result = sub_10006E4F4();
      v2 += 64;
      if (v7 == v0)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10006DD84()
{
  sub_100037C08();
  v4 = v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  if (!v1)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v10 = v2;
  if (!v2)
  {
LABEL_14:
    *v4 = v6;
    v4[1] = v5;
    v4[2] = v7;
    v4[3] = v8;
    v4[4] = v9;
    v4[5] = v10;
    sub_100037B00();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v11 = v1;
    for (i = 0; i < v10; ++i)
    {
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }

      if (v6 == i)
      {
        v10 = v6;
        goto LABEL_14;
      }

      if (i >= v6)
      {
        goto LABEL_17;
      }

      *v11 = v5;
      v11[1] = v7;
      v11[2] = v8;
      v11[3] = v9;
      if (i + 1 == v10)
      {
        sub_10006E574();
        goto LABEL_14;
      }

      v11 += 4;
      sub_10006E574();
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10006DE4C()
{
  sub_10006E4B0();
  result = memcpy(__dst, v3, 0x50uLL);
  __dst[10] = 0;
  if (!v2)
  {
    v0 = 0;
    goto LABEL_12;
  }

  if (!v0)
  {
LABEL_12:
    memcpy(v1, __dst, 0x58uLL);
    return v0;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = __dst[0];
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 == v5)
      {
        v0 = v6;
        goto LABEL_12;
      }

      if (v5 >= v6)
      {
        goto LABEL_14;
      }

      ++v5;
      __dst[10] = v7;
      result = sub_10006E4F4();
      v2 += 72;
      if (v7 == v0)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006DF30()
{
  sub_10006E4B0();
  result = memcpy(v8, v3, 0x42uLL);
  v8[9] = 0;
  if (!v2)
  {
    v0 = 0;
    goto LABEL_12;
  }

  if (!v0)
  {
LABEL_12:
    memcpy(v1, v8, 0x50uLL);
    return v0;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v8[0];
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 == v5)
      {
        v0 = v6;
        goto LABEL_12;
      }

      if (v5 >= v6)
      {
        goto LABEL_14;
      }

      ++v5;
      v8[9] = v7;
      result = sub_10006E4F4();
      v2 += 64;
      if (v7 == v0)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10006E014()
{
  sub_100037C08();
  v4 = v3;
  v5 = v3 + 64;
  sub_10006E4D4();
  if (!v7)
  {
    v9 = 0;
LABEL_17:
    sub_10006E540(v9);
    sub_100037B00();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    sub_10006E524();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v2)
          {
            goto LABEL_17;
          }

          v1 = *(v5 + 8 * v12);
          ++v9;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      v13 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v14 = *(*(v4 + 56) + ((v12 << 9) | (8 * v13)));
      *v0 = v14;
      if (v11 == v8)
      {
        v16 = v14;
        v9 = v12;
        goto LABEL_17;
      }

      ++v0;
      v15 = v14;
      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10006E124(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(a5))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = a2;
  v9 = a5;
  if (!a2)
  {
    v10 = 0;
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a6;
    *(result + 24) = a5;
    *(result + 28) = 0x1FFFFFF;
    return v10;
  }

  v10 = a3;
  v22 = result;
  if (!a3)
  {
LABEL_20:
    *v22 = a4;
    *(v22 + 8) = a5;
    *(v22 + 16) = a6;
    *(v22 + 24) = v9;
    sub_10006E560();
LABEL_22:
    *(v21 + 31) = v20;
    return v10;
  }

  if (a3 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a6 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a6))
    {
      goto LABEL_31;
    }

    v11 = 0;
    v12 = a6;
    v13 = a4 + 32;
    v14 = 1;
    while (1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (a6 < a5 != v14 && v9 == a6)
      {
        *v22 = a4;
        *(v22 + 8) = a5;
        *(v22 + 16) = a6;
        *(v22 + 24) = v12;
        sub_10006E560();
        v10 = v11;
        goto LABEL_22;
      }

      v17 = *(a4 + 16);
      if (v17 <= v9)
      {
        goto LABEL_25;
      }

      result = sub_100057CB8(v13 + (v9 << 6), v24, &qword_1002ADD30);
      if (v25[24] == 255)
      {
        goto LABEL_32;
      }

      v26 = v24[0];
      v27 = v24[1];
      v28[0] = *v25;
      *(v28 + 9) = *&v25[9];
      v18 = (v17 + 0x1FFFFFFFFLL) & (v9 + 1);
      if (HIDWORD(v18))
      {
        goto LABEL_26;
      }

      v14 = v18 >= a5;
      v9 = (v17 - 1) & (v9 + 1);
      *(v29 + 9) = *(v28 + 9);
      v19 = v27;
      v28[3] = v27;
      v29[0] = v28[0];
      v28[2] = v26;
      *v8 = v26;
      v8[1] = v19;
      v8[2] = v29[0];
      *(v8 + 41) = *(v29 + 9);
      v8 += 4;
      ++v11;
      if (v15 == v10)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10006E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_100037154();
  }

  return result;
}

uint64_t sub_10006E354(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002AFE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006E3C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E3E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_10006E424(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E4F4()
{

  return sub_100057CB8(v2 + 8, v0, v1);
}

uint64_t sub_10006E540@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_10006E574()
{

  return sub_10006E310(v0, v1, v2, v3);
}

void *sub_10006E594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_1000701A0();
    sub_100033FAC(v3, v4, v5);
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;

      sub_1000183C4(&qword_1002ADD08);
      sub_1000183C4(&qword_1002ADCF8);
      swift_dynamicCast();
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_100033FAC((v8 > 1), v9 + 1, 1);
      }

      v6 += 3;
      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[3 * v9];
      v10[4] = v12;
      v10[5] = v13;
      v10[6] = v14;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10006E6CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_1000701A0();
    sub_1000340CC(v3, v4, v5);
    v6 = a1 + 32;
    do
    {

      sub_1000183C4(&qword_1002ADB98);
      sub_1000183C4(&qword_1002ADCA8);
      swift_dynamicCast();
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000340CC((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      _swiftEmptyArrayStorage[v8 + 4] = v10;
      v6 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10006E7F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000343CC();
    v3 = a1 + 32;
    do
    {
      swift_unknownObjectRetain();
      sub_1000183C4(&qword_1002ADDF8);
      sub_1000183C4(&unk_1002BCD10);
      swift_dynamicCast();
      v4 = v7;
      v5 = _swiftEmptyArrayStorage[2];
      if (v5 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_1000343CC();
        v4 = v7;
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      *&_swiftEmptyArrayStorage[2 * v5 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_10006E930(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1001F7B48();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v10 = _swiftEmptyArrayStorage;
  result = sub_10003442C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_1001F7808();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_1000700E8();
      swift_dynamicCast();
      v10 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        sub_10003442C((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      v3[2] = v8 + 1;
      sub_10003708C(&v9, &v3[4 * v8 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_10006EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11)
{
  sub_10001A1F0();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11;
    sub_1000701A0();
    sub_10003444C();
    v14 = v13 + 32;
    do
    {
      ++v14;
      sub_1000183C4(&qword_1002B02E8);
      sub_1000183C4(&qword_1002B34A0);
      swift_dynamicCast();
      v15 = _swiftEmptyArrayStorage[2];
      if (v15 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_10003444C();
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[4 * v15];
      *(v16 + 2) = a10;
      *(v16 + 3) = a11;
      --v12;
    }

    while (v12);
  }

  sub_10001A1D4();
}

void *sub_10006EB84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    v4 = sub_1000701A0();
    sub_10003442C(v4, v5, v6);
    v2 = _swiftEmptyArrayStorage;
    v7 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v12 = v2;
      v9 = v2[2];
      v8 = v2[3];
      if (v9 >= v8 >> 1)
      {
        sub_10003442C((v8 > 1), v9 + 1, 1);
        v2 = v12;
      }

      v2[2] = v9 + 1;
      sub_10003708C(&v11, &v2[4 * v9 + 4]);
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10006EC7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = sub_1000701A0();
    sub_1000344DC(v5, v6, v7);
    v8 = a1 + 32;
    do
    {
      ++v8;
      sub_1000183C4(&qword_1002B02E0);
      swift_dynamicCast();
      sub_10007025C();
      if (v10)
      {
        sub_1000344DC((v9 > 1), v1, 1);
      }

      _swiftEmptyArrayStorage[2] = v1;
      *(&_swiftEmptyArrayStorage[4] + v2) = v12;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

void sub_10006ED78(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1001F7B48();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_10003454C();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_1001F7808();
        }

        else
        {
          v6 = *(a1 + 8 * v5 + 32);
        }

        sub_10007025C();
        if (v7)
        {
          sub_10003454C();
        }

        ++v5;
        _swiftEmptyArrayStorage[2] = v1;
        v8 = &_swiftEmptyArrayStorage[2 * v2];
        v8[4] = v6;
        v8[5] = &protocol witness table for SelectableEventLoop;
      }

      while (v4 != v5);
    }
  }
}

uint64_t sub_10006EE98(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 40) = sub_10002EC5C(1uLL);
  *(v3 + 48) = v7;
  *(v3 + 56) = v8;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  swift_beginAccess();
  *(v3 + 16) = a1;

  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return v3;
}

uint64_t ChannelPipeline.SynchronousOperations.addHTTPClientHandlers(position:leftOverBytesStrategy:withClientUpgrade:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    sub_10006FC68(a4);

    v12 = sub_1000701E4();
    sub_10006F7CC(v12, v13, a3, a4, a5, a6, a7);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v15 = sub_1000701E4();
    return sub_10006FA40(v15, v16, a3, a7);
  }
}

uint64_t sub_10006F138(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return sub_10006FA40(a2, a3, a4, a1);
  }

  sub_10006FC68(a5);

  sub_10006F7CC(a2, a3, a4, a5, a6, a7, a1);
  swift_bridgeObjectRelease_n();
}

uint64_t sub_10006F21C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006F254(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t ChannelPipeline.SynchronousOperations.configureHTTPServerPipeline(position:withPipeliningAssistance:withServerUpgrade:withErrorHandling:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v11 = a4 == 0;
  v12 = *(a8 + 56);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPPipelineSetup.swift", 119, 2, 215, ObjectType, v12);
  type metadata accessor for HTTPResponseEncoder();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  sub_1000183C4(&qword_1002B02D0);
  swift_allocObject();
  sub_10006FD00(2 * v11, 0);
  sub_1000183C4(&qword_1002ADDF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001FEBE0;
  *(v15 + 32) = v14;
  *(v15 + 40) = &protocol witness table for HTTPResponseEncoder;
  sub_1000183C4(&qword_1002B02D8);
  swift_allocObject();

  *(v15 + 48) = sub_10006EE98(v16, 0, 1);
  *(v15 + 56) = &protocol witness table for ByteToMessageHandler<A>;
  if (a3)
  {
    v17 = a6;
    type metadata accessor for HTTPServerPipelineHandler();
    swift_allocObject();
    v18 = HTTPServerPipelineHandler.init()();
    v19 = *(v15 + 16);
    if (v19 >= *(v15 + 24) >> 1)
    {
      sub_1000701F0();
      v15 = v45;
    }

    *(v15 + 16) = v19 + 1;
    v20 = v15 + 16 * v19;
    *(v20 + 32) = v18;
    *(v20 + 40) = &protocol witness table for HTTPServerPipelineHandler;
    a6 = v17;
  }

  if (a7)
  {
    type metadata accessor for HTTPServerProtocolErrorHandler();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = *(v15 + 16);
    if (v22 >= *(v15 + 24) >> 1)
    {
      sub_1000701F0();
      v15 = v46;
    }

    *(v15 + 16) = v22 + 1;
    v23 = v15 + 16 * v22;
    *(v23 + 32) = v21;
    *(v23 + 40) = &protocol witness table for HTTPServerProtocolErrorHandler;
  }

  v24 = a4;
  if (a4)
  {
    v25 = a6;
    sub_10006FC68(a4);

    v26 = sub_10005E8A0(1, v15);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    if (v31)
    {
      sub_1001F7F38();
      swift_unknownObjectRetain_n();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = _swiftEmptyArrayStorage;
      }

      v37 = v36[2];

      if (__OFSUB__(v32 >> 1, v30))
      {
        __break(1u);
      }

      else if (v37 == (v32 >> 1) - v30)
      {
        v34 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v35 = v25;
        v24 = a4;
        if (v34)
        {
LABEL_20:
          type metadata accessor for HTTPServerUpgradeHandler();
          swift_allocObject();

          v38 = HTTPServerUpgradeHandler.init(upgraders:httpEncoder:extraHTTPHandlers:upgradeCompletionHandler:)(v24, v14, v34, a5, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000331E0();
            v15 = v43;
          }

          v39 = *(v15 + 16);
          if (v39 >= *(v15 + 24) >> 1)
          {
            sub_1000331E0();
            v15 = v44;
          }

          *(v15 + 16) = v39 + 1;
          v40 = v15 + 16 * v39;
          *(v40 + 32) = v38;
          *(v40 + 40) = &protocol witness table for HTTPServerUpgradeHandler;
          goto LABEL_25;
        }

        v34 = _swiftEmptyArrayStorage;
LABEL_19:
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      v24 = a4;
    }

    sub_100070004(v26, v28, v30, v32);
    v34 = v33;
    v35 = v25;
    goto LABEL_19;
  }

LABEL_25:
  v41 = sub_10006E7F4(v15);

  ChannelPipeline.SynchronousOperations.addHandlers(_:position:)(v41, a1, a2);
}

uint64_t sub_10006F7CC(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 + 56);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPPipelineSetup.swift", 119, 2, 172, ObjectType, v9);
  type metadata accessor for HTTPRequestEncoder();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  sub_1000183C4(&qword_1002B02F0);
  swift_allocObject();
  sub_10006FD00(a3, 1);
  sub_1000183C4(&qword_1002ADDF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001FEBE0;
  *(v12 + 32) = v11;
  *(v12 + 40) = &protocol witness table for HTTPRequestEncoder;
  sub_1000183C4(&qword_1002B02F8);
  swift_allocObject();

  *(v12 + 48) = sub_10006EE98(v13, 0, 1);
  *(v12 + 56) = &protocol witness table for ByteToMessageHandler<A>;
  type metadata accessor for NIOHTTPClientUpgradeHandler();
  swift_allocObject();

  v14 = NIOHTTPClientUpgradeHandler.init(upgraders:httpHandlers:upgradeCompletionHandler:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000331E0();
    v12 = v19;
  }

  v15 = *(v12 + 16);
  if (v15 >= *(v12 + 24) >> 1)
  {
    sub_1000331E0();
    v12 = v20;
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 16 * v15;
  *(v16 + 32) = v14;
  *(v16 + 40) = &protocol witness table for NIOHTTPClientUpgradeHandler;
  v17 = sub_10006E7F4(v12);

  ChannelPipeline.SynchronousOperations.addHandlers(_:position:)(v17, a1, a2);
}

uint64_t sub_10006FA40(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v7 = *(a4 + 56);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPPipelineSetup.swift", 119, 2, 162, ObjectType, v7);
  type metadata accessor for HTTPRequestEncoder();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_1000183C4(&qword_1002B02F0);
  swift_allocObject();
  sub_10006FD00(a3, 1);
  sub_1000183C4(&qword_1002ADE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FEBE0;
  *(inited + 32) = v9;
  *(inited + 40) = &protocol witness table for HTTPRequestEncoder;
  sub_1000183C4(&qword_1002B02F8);
  swift_allocObject();

  *(inited + 48) = sub_10006EE98(v11, 0, 1);
  *(inited + 56) = &protocol witness table for ByteToMessageHandler<A>;
  ChannelPipeline.SynchronousOperations.addHandlers(_:position:)(inited, a1, a2);

  swift_setDeallocating();
  return sub_1001E5704();
}

uint64_t sub_10006FBD8(uint64_t a1)
{

  sub_10006F21C(v1[3], v1[4]);
  if (v1[6])
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10006FC68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10006FCA8(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006FD00(char a1, char a2)
{
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  *(v2 + 64) = 2;
  *(v2 + 96) = 0;
  *(v2 + 114) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 87) = 0;
  swift_beginAccess();
  sub_1001B91D8(16);
  swift_endAccess();
  *(v2 + 113) = a2;
  type metadata accessor for BetterHTTPParser();
  swift_allocObject();
  *(v2 + 104) = sub_1001C29E8(a2);
  *(v2 + 112) = a1;
  return v2;
}

void *sub_10006FDC0(__int128 *a1)
{
  v2 = a1[1];
  v10 = *a1;
  v11 = v2;
  v12 = a1[2];
  v3 = sub_10000B9DC(&v10);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = 0;
  do
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }

    v7 = a1[1];
    v10 = *a1;
    v11 = v7;
    v12 = a1[2];
    v4 = sub_10000BA0C(&v10, v4);
    ++v5;
  }

  while (v4);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = sub_100017AA4();
  if (sub_10006CDE8(&v10, (v8 + 4), v6) != v6)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_10006FEAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (!a2)
  {
    v3 = 0;
  }

  if (result)
  {
    v4 = result;
    if (result == -1 && v3 == 0x8000000000000000)
    {
      goto LABEL_16;
    }

    v6 = v3 / result;
    if (((v3 / result) & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v9 = sub_100017AB8();
        if (sub_10006CFAC(v10, v9 + 4, v6, v4, a2, a3) == v6)
        {
          return v9;
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void *sub_10006FF68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_100017ACC();
  sub_10006D1A8();
  v4 = v3;

  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v2;
}

void sub_100070004(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1000183C4(&qword_1002ADDF0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      sub_1000183C4(&qword_1002ADDF8);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

unint64_t sub_1000700E8()
{
  result = qword_1002AC800;
  if (!qword_1002AC800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002AC800);
  }

  return result;
}

uint64_t sub_10007012C(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v6 = ~v2 + a2;
    v2 ^= 0x7FFFFFFFFFFFFFFFuLL;
    if (v6 >= v2)
    {
      v7 = v2;
    }

    else
    {
      v7 = v6;
    }

    if (v7 > 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v4 = __OFSUB__(v2, v6);
    v3 = (v2 - v6) < 0;
    if (v2 > v6)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v8 = ~a2 + v2;
  v9 = v2 ^ 0x8000000000000000;
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (v9 <= v8)
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000701B0()
{

  return swift_getObjectType();
}

void sub_1000701F0()
{

  sub_1000331E0();
}

void *sub_100070214(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

void sub_100070270(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  EventLoop.makeCompletedFuture<A>(_:)(&a9, v18, a5 + 8, v17, a1, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t AcceptBackoffHandler.__allocating_init(backoffProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 48) = 0;
  return result;
}

uint64_t AcceptBackoffHandler.init(backoffProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 48) = 0;
  return HTTPServerProtocolErrorHandler.deinit();
}

void AcceptBackoffHandler.read(context:)(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    if (*(v1 + 24))
    {
      ChannelHandlerContext.read()();
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = static NIODeadline.now()();
      if (((v4 | v3) & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 >= v3)
      {

        sub_1000703B0();
      }

      else
      {

        sub_1000703F0(v3, a1);
      }
    }
  }
}

void sub_1000703B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 48) = 0;

  ChannelHandlerContext.read()();
}

uint64_t sub_1000703F0(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a2 + 32) + 56);
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a2;
  v8 = *(v5 + 40);
  swift_unknownObjectRetain();

  v9 = v8(a1, sub_100071E0C, v7, &type metadata for ()[8], ObjectType, v5);

  swift_unknownObjectRelease();
  *(v2 + 48) = v9;
}

uint64_t AcceptBackoffHandler.errorCaught(context:error:)(uint64_t a1)
{
  v2 = v1;
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return ChannelHandlerContext.fireErrorCaught(_:)();
  }

  v4 = (*(v1 + 32))(v11, v12, v13);
  if ((v5 & 1) != 0 || (v6 = v4, v7 = static NIODeadline.now()(), *(v2 + 16) = static NIODeadline.+ infix(_:_:)(v7, v6), *(v2 + 24) = 0, !*(v2 + 48)))
  {

    return ChannelHandlerContext.fireErrorCaught(_:)();
  }

  sub_10002D864();
  swift_allocError();
  *v8 = 1;
  swift_errorRetain();

  sub_1000A13B0();

  if ((*(v2 + 24) & 1) == 0)
  {
    v10 = *(v2 + 16);

    sub_1000703F0(v10, a1);

    return ChannelHandlerContext.fireErrorCaught(_:)();
  }

  __break(1u);
  return result;
}

void AcceptBackoffHandler.channelInactive(context:)()
{
  if (*(v0 + 48))
  {
    sub_10002D864();
    v1 = swift_allocError();
    sub_100071EB0(v1, v2);
    swift_errorRetain();
    sub_1000A13B0();

    *(v0 + 48) = 0;
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  ChannelHandlerContext.fireChannelInactive()();
}

void AcceptBackoffHandler.handlerRemoved(context:)()
{
  if (*(v0 + 48))
  {
    sub_10002D864();
    v1 = swift_allocError();
    sub_100071EB0(v1, v2);
    swift_errorRetain();
    sub_1000A13B0();

    *(v0 + 48) = 0;

    ChannelHandlerContext.read()();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
}

uint64_t AcceptBackoffHandler.deinit()
{

  return v0;
}

uint64_t AcceptBackoffHandler.__deallocating_deinit()
{
  AcceptBackoffHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t BackPressureHandler.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 256;
  return result;
}

uint64_t BackPressureHandler.init()()
{
  result = v0;
  *(v0 + 16) = 256;
  return result;
}

void BackPressureHandler.read(context:)()
{
  if (*(v0 + 17) == 1)
  {
    ChannelHandlerContext.read()();
  }

  else
  {
    *(v0 + 16) = 1;
  }
}

void BackPressureHandler.channelWritabilityChanged(context:)()
{
  sub_10009B39C();
  v2 = v1;
  ObjectType = swift_getObjectType();
  LOBYTE(v2) = (*(v2 + 80))(ObjectType, v2);
  swift_unknownObjectRelease();
  *(v0 + 17) = v2 & 1;
  if (v2)
  {
    _s25ASOctaneSupportXPCService19BackPressureHandlerC14handlerRemoved7contextyAA07ChannelF7ContextC_tF_0();
  }

  else
  {
    ChannelHandlerContext.flush()();
  }

  ChannelHandlerContext.fireChannelWritabilityChanged()();
}

void _s25ASOctaneSupportXPCService19BackPressureHandlerC14handlerRemoved7contextyAA07ChannelF7ContextC_tF_0()
{
  if (*(v0 + 16) == 1)
  {
    *(v0 + 16) = 0;
    ChannelHandlerContext.read()();
  }
}

uint64_t IdleStateHandler.__allocating_init(readTimeout:writeTimeout:allTimeout:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  result = swift_allocObject();
  *(result + 57) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  *(result + 32) = a3;
  *(result + 40) = a4 & 1;
  *(result + 48) = a5;
  *(result + 56) = a6 & 1;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t IdleStateHandler.init(readTimeout:writeTimeout:allTimeout:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 57) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4 & 1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6 & 1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 80) = 0;
  return HTTPServerProtocolErrorHandler.deinit();
}

uint64_t IdleStateHandler.handlerAdded(context:)(uint64_t a1)
{
  sub_10009B39C();
  v3 = v2;
  ObjectType = swift_getObjectType();
  LOBYTE(v3) = (*(v3 + 88))(ObjectType, v3);
  result = swift_unknownObjectRelease();
  if (v3)
  {

    return sub_100070AD4(a1);
  }

  return result;
}

uint64_t sub_100070AD4(uint64_t a1)
{
  v3 = static NIODeadline.now()();
  *(v1 + 64) = v3;
  *(v1 + 72) = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  *(v1 + 80) = sub_1000719B8(a1, v4, v5, v1, v1, &unk_100283C70, &unk_100283C98, sub_100071D74, sub_100071E3C);

  v6 = *(v1 + 32);
  v7 = *(v1 + 40);

  *(v1 + 88) = sub_1000719B8(a1, v6, v7, v1, v1, &unk_100283B80, &unk_100283BA8, sub_100071D68, sub_100071E3C);

  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  *(v1 + 96) = sub_1000719B8(a1, v8, v9, v1, v1, &unk_100283A40, &unk_100283A68, sub_100071D40, sub_100071D4C);
}

uint64_t sub_100070C6C()
{
  if (v0[10])
  {
    sub_10002D864();
    swift_allocError();
    *v1 = 1;

    swift_errorRetain();
    sub_1000A13B0();
  }

  if (v0[11])
  {
    sub_10002D864();
    swift_allocError();
    *v2 = 1;

    swift_errorRetain();
    sub_1000A13B0();
  }

  if (v0[12])
  {
    sub_10002D864();
    swift_allocError();
    *v3 = 1;

    swift_errorRetain();
    sub_1000A13B0();
  }

  v0[10] = 0;

  v0[11] = 0;

  v0[12] = 0;
}

uint64_t IdleStateHandler.channelRead(context:data:)()
{
  if (v0[24] != 1 || (v0[56] & 1) == 0)
  {
    v0[57] = 1;
  }

  return ChannelHandlerContext.fireChannelRead(_:)();
}

void IdleStateHandler.channelReadComplete(context:)()
{
  if ((*(v0 + 24) != 1 || (*(v0 + 56) & 1) == 0) && *(v0 + 57) == 1)
  {
    *(v0 + 64) = static NIODeadline.now()();
    *(v0 + 57) = 0;
  }

  ChannelHandlerContext.fireChannelReadComplete()();
}

void IdleStateHandler.write(context:data:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 40) == 1 && *(v3 + 56) == 1)
  {
    ChannelHandlerContext.write(_:promise:)();
  }

  else
  {
    if (!a3)
    {
      v4 = *(*(a1 + 32) + 56);
      ObjectType = swift_getObjectType();
      EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[8]);
      EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[8], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelHandlers.swift", 117, 2, 228, ObjectType, &type metadata for ()[8], v4);
    }

    swift_retain_n();
    swift_retain_n();

    sub_10011DE78();

    ChannelHandlerContext.write(_:promise:)();
  }
}

uint64_t sub_10007100C()
{
  sub_10009B39C();
  v1 = v0;
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 88))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_100071064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007100C();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (*(a1 + 57) != 1)
  {
    result = static NIODeadline.now()();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(a1 + 64);
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = result - v13;
        v15 = *(*(a2 + 32) + 56);
        ObjectType = swift_getObjectType();
        if (v14 >= a3)
        {
          v21 = swift_allocObject();
          v21[2] = a1;
          v21[3] = a2;
          v21[4] = a3;
          v22 = swift_allocObject();
          *(v22 + 16) = sub_100071EAC;
          *(v22 + 24) = v21;
          v23 = *(v15 + 48);

          swift_unknownObjectRetain();
          v24 = v23(a3, sub_100071E3C, v22, &type metadata for ()[8], ObjectType, v15);

          swift_unknownObjectRelease();
          *(a1 + 80) = v24;

          v26 = &type metadata for IdleStateHandler.IdleStateEvent;
          v25[0] = 1;
          ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
          return sub_100019CCC(v25);
        }

        v17 = static NIODeadline.+ infix(_:_:)(v13, a3);
        v18 = swift_allocObject();
        v18[2] = a1;
        v18[3] = a2;
        v18[4] = a3;
        v19 = swift_allocObject();
        *(v19 + 16) = sub_100071EAC;
        *(v19 + 24) = v18;
        v20 = *(v15 + 40);

        swift_unknownObjectRetain();
        v12 = v20(v17, sub_100071E3C, v19, &type metadata for ()[8], ObjectType, v15);
        goto LABEL_8;
      }
    }

    __break(1u);
    return result;
  }

  v7 = *(*(a2 + 32) + 56);
  v8 = swift_getObjectType();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100071EAC;
  *(v10 + 24) = v9;
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();

  v12 = v11(a3, sub_100071E3C, v10, &type metadata for ()[8], v8, v7);
LABEL_8:

  swift_unknownObjectRelease();
  *(a1 + 80) = v12;
}

uint64_t sub_1000713C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007100C();
  if ((result & 1) == 0)
  {
    return result;
  }

  v7 = *(a1 + 72);
  result = static NIODeadline.now()();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = result - v7;
  v9 = *(*(a2 + 32) + 56);
  ObjectType = swift_getObjectType();
  if (v8 >= a3)
  {
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100071EA8;
    *(v17 + 24) = v16;
    v18 = *(v9 + 48);
    swift_unknownObjectRetain();

    v19 = v18(a3, sub_100071E3C, v17, &type metadata for ()[8], ObjectType, v9);

    swift_unknownObjectRelease();
    *(a1 + 88) = v19;

    v21 = &type metadata for IdleStateHandler.IdleStateEvent;
    v20[0] = 0;
    ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
    return sub_100019CCC(v20);
  }

  else
  {
    v11 = static NIODeadline.+ infix(_:_:)(*(a1 + 72), a3);
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100071EA8;
    *(v13 + 24) = v12;
    v14 = *(v9 + 40);

    swift_unknownObjectRetain();
    v15 = v14(v11, sub_100071E3C, v13, &type metadata for ()[8], ObjectType, v9);

    swift_unknownObjectRelease();
    *(a1 + 88) = v15;
  }
}

uint64_t sub_10007164C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007100C();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (*(a1 + 57) != 1)
  {
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    if (((v14 | v13) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v14 <= v13)
      {
        v15 = *(a1 + 64);
      }

      else
      {
        v15 = *(a1 + 72);
      }

      result = static NIODeadline.now()();
      if ((result & 0x8000000000000000) == 0)
      {
        v16 = result - v15;
        v17 = *(*(a2 + 32) + 56);
        ObjectType = swift_getObjectType();
        if (v16 >= a3)
        {
          v23 = swift_allocObject();
          v23[2] = a1;
          v23[3] = a2;
          v23[4] = a3;
          v24 = swift_allocObject();
          *(v24 + 16) = sub_100071EA4;
          *(v24 + 24) = v23;
          v25 = *(v17 + 48);

          swift_unknownObjectRetain();
          v26 = v25(a3, sub_100071E3C, v24, &type metadata for ()[8], ObjectType, v17);

          swift_unknownObjectRelease();
          *(a1 + 80) = v26;

          v28 = &type metadata for IdleStateHandler.IdleStateEvent;
          v27[0] = 2;
          ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
          return sub_100019CCC(v27);
        }

        v19 = static NIODeadline.+ infix(_:_:)(v15, a3);
        v20 = swift_allocObject();
        v20[2] = a1;
        v20[3] = a2;
        v20[4] = a3;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_100071EA4;
        *(v21 + 24) = v20;
        v22 = *(v17 + 40);

        swift_unknownObjectRetain();
        v12 = v22(v19, sub_100071E3C, v21, &type metadata for ()[8], ObjectType, v17);
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

  v7 = *(*(a2 + 32) + 56);
  v8 = swift_getObjectType();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100071EA4;
  *(v10 + 24) = v9;
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();

  v12 = v11(a3, sub_100071E3C, v10, &type metadata for ()[8], v8, v7);
LABEL_11:

  swift_unknownObjectRelease();
  *(a1 + 80) = v12;
}

uint64_t sub_1000719B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {

    return 0;
  }

  else
  {
    v14 = *(*(a1 + 32) + 56);
    ObjectType = swift_getObjectType();
    v16 = swift_allocObject();
    v16[2] = a5;
    v16[3] = a1;
    v16[4] = a2;
    v17 = swift_allocObject();
    *(v17 + 16) = a8;
    *(v17 + 24) = v16;
    v18 = *(v14 + 48);
    swift_unknownObjectRetain();

    v10 = v18(a2, a9, v17, &type metadata for ()[8], ObjectType, v14);

    swift_unknownObjectRelease();
  }

  return v10;
}

uint64_t IdleStateHandler.deinit()
{

  return v0;
}

uint64_t IdleStateHandler.__deallocating_deinit()
{
  IdleStateHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100071B54()
{
  result = static NIODeadline.now()();
  *(v0 + 72) = result;
  return result;
}

unint64_t sub_100071B74()
{
  result = qword_1002B03F0;
  if (!qword_1002B03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B03F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdleStateHandler.IdleStateEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100071D00);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100071D80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100071DC0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100071EB0(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;
}

uint64_t sub_100071ED0(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___ASOctaneSupportXPCServiceProtocol];
  [a2 setExportedInterface:v3];
  v4 = [objc_allocWithZone(type metadata accessor for OctaneXPCService()) init];
  [a2 setExportedObject:v4];

  [a2 setRemoteObjectInterface:v3];
  [a2 resume];

  return 1;
}

id sub_100072000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OctaneXPCServiceDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100072058()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OctaneXPCServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000720B0(uint64_t a1)
{
  type metadata accessor for InAppPendingTransactionsResponse();
  swift_allocObject();
  v2 = sub_1000B7E90();
  *(v2 + 24) = 2;
  *(v2 + 32) = *(a1 + 16);
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;

  return v2;
}

uint64_t sub_100072148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F6288();
    v9 = a1 + *(a3 + 20);

    return sub_10001C990(v9, a2, v8);
  }
}

uint64_t sub_1000721E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F6288();
    v8 = v5 + *(a4 + 20);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OctaneAsset()
{
  result = qword_1002B0990;
  if (!qword_1002B0990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000722B0()
{
  result = sub_1001F6288();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007232C()
{
  type metadata accessor for OctaneAsset();
  sub_1001F6208();
  sub_100072D0C();
  v17[0] = v0;
  v17[1] = v1;
  v16[2] = v17;
  v4 = sub_1001BF6D8(1, 1, sub_100072CF0, v16, v2, v3);
  v5 = v4[2];
  if (v5)
  {
    v17[0] = _swiftEmptyArrayStorage;
    sub_1000375CC(0, v5, 0);
    v6 = v17[0];
    v7 = v4 + 7;
    do
    {

      v8 = sub_1001F6BE8();
      v10 = v9;

      v17[0] = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000375CC(v11 > 1, v12 + 1, 1);
        v6 = v17[0];
      }

      v6[2] = v12 + 1;
      v13 = &v6[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  if (v6[2] == 2)
  {
    v14 = v6[6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_1000724C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1001F6208();
  sub_100072D0C();
  v29[0] = v4;
  v29[1] = v5;
  v28 = v29;
  v8 = sub_1001BF6D8(1, 1, sub_100048E80, v27, v6, v7);
  v9 = v8[2];
  if (v9)
  {
    v30 = a1;
    v29[0] = _swiftEmptyArrayStorage;
    sub_1000375CC(0, v9, 0);
    v10 = v29[0];
    v11 = v8 + 7;
    do
    {

      v12 = sub_1001F6BE8();
      v14 = v13;

      v29[0] = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000375CC(v15 > 1, v16 + 1, 1);
        v10 = v29[0];
      }

      v10[2] = v16 + 1;
      v17 = &v10[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v11 += 4;
      --v9;
    }

    while (v9);

    a1 = v30;
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  if (v10[2])
  {
    v18 = v10[4];
    v19 = v10[5];

    *a2 = v18;
    *(a2 + 1) = v19;
    v20 = *(type metadata accessor for OctaneAsset() + 20);
    v21 = sub_1001F6288();
    return (*(*(v21 - 8) + 32))(&a2[v20], a1, v21);
  }

  else
  {

    type metadata accessor for OctaneError();
    sub_100072C98();
    swift_allocError();
    v24 = v23;
    v25 = sub_1001F6288();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v24, a1, v25);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v26 + 8))(a1, v25);
  }
}

void *sub_100072764(uint64_t a1)
{
  v34 = sub_1001F6288();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34, v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OctaneAsset();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v12 = sub_10001A2D8();

  v13 = _swiftEmptyArrayStorage;
  if (v12 & 0x100) != 0 && (v12)
  {
    v14 = [v10 defaultManager];
    sub_1001F6248(0);
    v15 = sub_1001F6B48();

    v35 = 0;
    v16 = [v14 contentsOfDirectoryAtPath:v15 error:&v35];

    v17 = v35;
    if (v16)
    {
      v18 = sub_1001F6F38();
      v19 = v17;

      __chkstk_darwin(v20, v21);
      *(&v31 - 2) = a1;
      v22 = sub_100195398(sub_100072C78, (&v31 - 4), v18);

      v23 = 0;
      v24 = *(v22 + 16);
      v31 = v3 + 16;
      v13 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v24 == v23)
        {

          return v13;
        }

        if (v23 >= *(v22 + 16))
        {
          __break(1u);
        }

        v25 = v33;
        (*(v3 + 16))(v33, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v34);
        sub_1000724C4(v25, v9);
        if (v1)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10003277C(0, v13[2] + 1, 1, v13);
          v13 = v28;
        }

        v27 = v13[2];
        v26 = v13[3];
        if (v27 >= v26 >> 1)
        {
          sub_10003277C(v26 > 1, v27 + 1, 1, v13);
          v13 = v29;
        }

        v13[2] = v27 + 1;
        sub_100059450(v9, v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27);
        ++v23;
      }
    }

    else
    {
      v13 = v35;
      sub_1001F61B8();

      swift_willThrow();
    }
  }

  return v13;
}

uint64_t sub_100072B48(void *a1)
{
  v2 = sub_1001F61C8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  (*(v3 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_10001C790();
  sub_1001F6278();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100072C98()
{
  result = qword_1002B09C8;
  if (!qword_1002B09C8)
  {
    type metadata accessor for OctaneError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B09C8);
  }

  return result;
}

void sub_100072D20(void (*a1)(uint64_t *__return_ptr))
{
  Lock.lock()();
  a1(&v2);
  Lock.unlock()();
}

void sub_100072D9C(void (*a1)(uint64_t *__return_ptr))
{
  Lock.lock()();
  a1(&v2);
  Lock.unlock()();
}

uint64_t sub_100072E28@<X0>(_BYTE *a1@<X8>)
{
  result = static _UInt24.min.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100072E5C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002DFF8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100072E8C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EC370(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100072EBC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C92E4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100072EF4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C92D0(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_100072F28@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C92D4(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_100072F74@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C929C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100073000@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C92CC();
  *a1 = result;
  return result;
}

uint64_t sub_100073030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  debugOnly(_:)(a1, a2, a3, a4, a5, a6);
  type metadata accessor for Selector();
  sub_1000730B8();

  return v6;
}

void sub_1000730B8()
{
  type metadata accessor for kevent(0);
  sub_1001F7498();

  UnsafeMutablePointer.deallocate()();
}

uint64_t sub_100073118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100073030(a1, a2, a3, a4, a5, a6);

  return swift_deallocClassInstance();
}

void sub_10007315C()
{
  v1 = pthread_self();
  if (pthread_equal(v1, *(*(v0 + 40) + 32)))
  {

    sub_1000731EC();
  }

  else
  {
    sub_100072D20(sub_100073834);
  }
}

unint64_t sub_1000731EC()
{
  sub_1001F77B8(28);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 32032;
  v2._object = 0xE200000000000000;
  sub_1001F6CA8(v2);
  return 0xD000000000000018;
}

uint64_t sub_1000732B8()
{
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if (swift_dynamicCast())
  {
    result = v2;
    switch(v3)
    {
      case 1:
        v1 = 1;
        goto LABEL_5;
      case 2:
        v1 = 2;
LABEL_5:
        sub_100073868(v2, v1);
        break;
      case 3:
        if (v2 != 3)
        {
          break;
        }

        return result;
      default:
        break;
    }
  }

  swift_willThrow();
  return swift_errorRetain();
}

Swift::Int SelectorRegistrationID.hashValue.getter(Swift::UInt32 a1)
{
  sub_1001F8068();
  sub_1001F80B8(a1);
  return sub_1001F80D8();
}

Swift::Int sub_100073418()
{
  v1 = *v0;
  sub_1001F8068();
  sub_1001F80B8(v1);
  return sub_1001F80D8();
}

unint64_t sub_100073460()
{
  result = qword_1002B09D0[0];
  if (!qword_1002B09D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B09D0);
  }

  return result;
}

_BYTE *sub_100073570(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10007363CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100073680()
{
  result = qword_1002B0A58;
  if (!qword_1002B0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0A58);
  }

  return result;
}

unint64_t sub_1000736D8()
{
  result = qword_1002B0A60;
  if (!qword_1002B0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0A60);
  }

  return result;
}

unint64_t sub_100073730()
{
  result = qword_1002B0A68;
  if (!qword_1002B0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0A68);
  }

  return result;
}

unint64_t sub_100073788()
{
  result = qword_1002B0A70;
  if (!qword_1002B0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0A70);
  }

  return result;
}

unint64_t sub_1000737E0()
{
  result = qword_1002B0A78;
  if (!qword_1002B0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0A78);
  }

  return result;
}

unint64_t sub_100073834@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000731EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100073868(uint64_t a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  return result;
}

uint64_t sub_100073888(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1000738C8(a1);
  return v2;
}

uint64_t sub_1000739AC()
{
  sub_10007393C();

  return swift_deallocClassInstance();
}

void *static System.enumerateInterfaces()()
{
  sub_100073E94(12);
  v4 = 0;
  sub_1000275F8(&v4);
  if (v0)
  {
  }

  else
  {
    v1 = v4;
    for (i = v4; i; v4 = i)
    {
      sub_100073F38();
      type metadata accessor for NIONetworkInterface();
      swift_allocObject();
      if (sub_100166F00(v5))
      {

        sub_1001F6F08();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100073F58();
        }

        sub_1001F6F98();
      }

      i = i->ifa_next;
    }

    freeifaddrs(v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t static System.enumerateDevices()()
{
  v1 = sub_1001F7818();
  v5 = v1;
  v6 = 0;
  sub_1000275F8(&v6);
  if (v0)
  {
  }

  else
  {
    v2 = v6;
    for (i = v6; i; v6 = i)
    {
      sub_100073F38();
      type metadata accessor for NIONetworkDevice.Backing();
      swift_allocObject();
      if (sub_100167B48(v7))
      {

        sub_1001F6F08();
        if (*(v5 + 16) >= *(v5 + 24) >> 1)
        {
          sub_100073F58();
        }

        sub_1001F6F98();

        v1 = v5;
      }

      i = i->ifa_next;
    }

    freeifaddrs(v2);
  }

  return v1;
}

uint64_t sub_100073D48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100073E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_100073E94(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1001F7B48();
LABEL_9:
  result = sub_1001F7818();
  *v1 = result;
  return result;
}

uint64_t sub_100073F58()
{

  return sub_1001F6F58();
}

Swift::Int sub_100073F7C()
{
  sub_1001F8068();
  ByteBufferFoundationError.hash(into:)();
  return sub_1001F80D8();
}

void ByteBuffer.readData(length:)(int a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = sub_1000754E8();
  ByteBuffer.getData(at:length:byteTransferStrategy:)(v5, v6, 2, v7, v8);
  sub_10007550C();
  if (!(!v10 & v9))
  {
    v11 = v3 + a1;
    if (__CFADD__(v3, a1))
    {
      __break(1u);
    }

    else if (v4 >= v11)
    {
      *(v1 + 8) = v11;
      return;
    }

    __break(1u);
  }
}

void ByteBuffer.readData(length:byteTransferStrategy:)(int a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = sub_1000754E8();
  ByteBuffer.getData(at:length:byteTransferStrategy:)(v5, v6, v7, v8, v9);
  sub_10007550C();
  if (!(!v11 & v10))
  {
    v12 = v3 + a1;
    if (__CFADD__(v3, a1))
    {
      __break(1u);
    }

    else if (v4 >= v12)
    {
      *(v1 + 8) = v12;
      return;
    }

    __break(1u);
  }
}

uint64_t ByteBuffer.getData(at:length:byteTransferStrategy:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001F62D8();
  sub_10001A278();
  v12 = v11;
  result = __chkstk_darwin(v13, v14);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __OFSUB__(a1, a5);
  v19 = a1 - a5;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = 0;
  if (v19 < 0 || (a2 & 0x8000000000000000) != 0)
  {
    return result;
  }

  if (HIDWORD(a5) < a5)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (((HIDWORD(a5) - a5) - a2) < v19)
  {
    return 0;
  }

  if (a3)
  {
    v20 = a3 != 1 && a2 <= 0x40000;
  }

  else
  {
    v20 = 1;
  }

  swift_beginAccess();
  if (v20)
  {
    return sub_1001F63D8();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *v17 = sub_100074DC4;
  v17[1] = v21;
  v22 = enum case for Data.Deallocator.custom(_:);
  v23 = *(v12 + 104);
  swift_unknownObjectRetain();
  v23(v17, v22, v10);
  return sub_1001F62F8();
}

uint64_t ByteBuffer.getString(at:length:encoding:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001F6B98();
  sub_10001A278();
  v12 = v11;
  __chkstk_darwin(v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ByteBuffer.getData(at:length:byteTransferStrategy:)(a1, a2, 2, a4, a5);
  v17 = 0;
  sub_10007550C();
  if (!(!v19 & v18))
  {
    (*(v12 + 16))(v16, a3, v10);
    sub_100075518();
    v17 = sub_1001F6B78();
    v20 = sub_100075518();
    sub_10003A36C(v20, v21);
  }

  return v17;
}

uint64_t ByteBuffer.readString(length:encoding:)(uint64_t result)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  if (v3 - v2 < result)
  {
    return 0;
  }

  v5 = sub_1000754E8();
  result = ByteBuffer.getString(at:length:encoding:)(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = v2 + v4;
    if (!__CFADD__(v2, v4))
    {
      if (v3 >= v11)
      {
        *(v1 + 8) = v11;
        return result;
      }

LABEL_11:
      __break(1u);
      return result;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

Swift::Int ByteBuffer.writeString(_:encoding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ByteBuffer.setString(_:encoding:at:)(a1, a2, a3, *(v3 + 12));
  v6 = v5;
  if (!v4)
  {
    ByteBuffer.moveWriterIndex(forwardBy:)(v5);
  }

  return v6;
}

uint64_t ByteBuffer.setString(_:encoding:at:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  sub_1001F6B68();
  sub_10007550C();
  if (!v9 & v8)
  {
    sub_100074DCC();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v11 = sub_100074F6C(v6, v7, v4, a4);
    if ((v11 & 0x100000000) != 0)
    {
      sub_100075518();
      sub_10005FD28();
    }

    v12 = v11;
    v13 = sub_100075518();
    sub_10003A36C(v13, v14);
    return v12;
  }
}

uint64_t ByteBuffer.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = ByteBufferAllocator.buffer(data:)(a1, a2, j_j__malloc, j_j__realloc, j_j__free, sub_10005EC68);
  sub_10003A380(a1, a2);
  return v4;
}

uint64_t ByteBufferAllocator.buffer(data:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1001F63E8();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  if (!v12)
  {
    if (qword_1002AC430 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  type metadata accessor for ByteBuffer._Storage();
  v14 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v13, a3, a4, a5, a6);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *(v14 + 16);
  while (1)
  {
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v25 = v19;
    v26 = v17;
    v27 = v18;
    v20 = sub_100074F6C(a1, a2, &v22, v16);
    if ((v20 & 0x100000000) != 0)
    {
      sub_10005FD28();
    }

    if (!__CFADD__(v24, v20))
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
LABEL_5:
    v15 = qword_1002E6088;
    v16 = HIDWORD(qword_1002E6088);
    v19 = dword_1002E6090;
    v17 = word_1002E6094;
    v18 = byte_1002E6096;
  }

  return v22;
}

Swift::Int ByteBuffer.writeContiguousBytes<A>(_:)()
{
  v0 = ByteBuffer.setContiguousBytes<A>(_:at:)();
  ByteBuffer.moveWriterIndex(forwardBy:)(v0);
  return v0;
}

Swift::Int ByteBuffer.writeData<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ByteBuffer.setData<A>(_:at:)(a1, *(v3 + 12), a2, a3);
  ByteBuffer.moveWriterIndex(forwardBy:)(v4);
  return v4;
}

uint64_t ByteBuffer.setData<A>(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v34 = a1;
  v35 = a2;
  swift_getAssociatedTypeWitness();
  v32[2] = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10001A278();
  v33 = v6;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  v10 = v32 - v9;
  sub_1001F74B8();
  sub_10001E844();
  __chkstk_darwin(v11, v12);
  v14 = v32 - v13;
  v32[1] = swift_checkMetadataState();
  sub_10001E844();
  __chkstk_darwin(v15, v16);
  v17 = swift_getAssociatedTypeWitness();
  sub_10001A278();
  v32[0] = v18;
  sub_10001E844();
  __chkstk_darwin(v19, v20);
  v22 = v32 - v21;
  v23 = sub_1001F7118();
  ByteBuffer.reserveCapacity(minimumWritableBytes:)(v23);
  v34 = a4;
  sub_1001F5F58();
  v24 = v22;
  sub_1001F6DC8();
  v25 = v17;
  swift_getAssociatedConformanceWitness();
  v26 = 0;
  v27 = (v33 + 32);
  v28 = (v33 + 8);
  while (1)
  {
    sub_1001F7578();
    if (sub_10001C990(v14, 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_7;
    }

    result = (*v27)(v10, v14, AssociatedTypeWitness);
    if (__OFADD__(v35, v26))
    {
      break;
    }

    swift_getAssociatedConformanceWitness();
    v30 = ByteBuffer.setContiguousBytes<A>(_:at:)();
    (*v28)(v10, AssociatedTypeWitness);
    v31 = __OFADD__(v26, v30);
    v26 += v30;
    if (v31)
    {
      __break(1u);
LABEL_7:
      (*(v32[0] + 8))(v24, v25);
      return v26;
    }
  }

  __break(1u);
  return result;
}

double ByteBufferView.regions.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = *(v1 + 4);
  sub_100075074(&v7, v6);
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v9;
  return result;
}

double sub_100074C30@<D0>(uint64_t a1@<X8>)
{
  ByteBufferView.regions.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void Data.init(buffer:byteTransferStrategy:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  v5 = HIDWORD(a2);
  v6 = HIDWORD(a2) - a2;
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  ByteBuffer.getData(at:length:byteTransferStrategy:)(a2, (HIDWORD(a2) - a2), a4, a1, a2);
  sub_10007550C();
  if (!(!v8 & v7))
  {

    if (!__CFADD__(v4, v6))
    {
      if (v5 >= (v4 + v6))
      {
        sub_100075518();
        return;
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100074DCC()
{
  result = qword_1002B0B00;
  if (!qword_1002B0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0B00);
  }

  return result;
}

uint64_t sub_100074E20(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  ByteBuffer._setBytes(_:at:)(&v5, &v5 + BYTE6(a2), a4);
  return result;
}

uint64_t sub_100074EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  result = sub_1001F6058();
  v10 = result;
  if (result)
  {
    result = sub_1001F6078();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1001F6068();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100075490(v10, v16, a4, a5);
  return v17 | ((HIDWORD(v17) & 1) << 32);
}

unint64_t sub_100074F6C(uint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v12 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x10007501CLL);
      }

      a1 = a1;
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v12;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a1 + 24);
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v10 = v8;
LABEL_9:
      result = sub_100074EB4(a1, v10, v9, a3, a4);
      if (!v4)
      {
        return result | ((HIDWORD(result) & 1) << 32);
      }

      return result;
    case 3uLL:
      a1 = 0;
      v7 = 0;
      goto LABEL_5;
    default:
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100074E20(a1, v7, a3, a4);
      if (!v4)
      {
        return result | ((HIDWORD(result) & 1) << 32);
      }

      return result;
  }
}

uint64_t sub_100075074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B0B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000750E8()
{
  result = qword_1002B0B10;
  if (!qword_1002B0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0B10);
  }

  return result;
}

unint64_t sub_100075140()
{
  result = qword_1002B0B18;
  if (!qword_1002B0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0B18);
  }

  return result;
}

unint64_t sub_10007519C()
{
  result = qword_1002B0B20;
  if (!qword_1002B0B20)
  {
    sub_100019BC4(&qword_1002B0B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0B20);
  }

  return result;
}

unint64_t sub_100075204()
{
  result = qword_1002B0B28;
  if (!qword_1002B0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0B28);
  }

  return result;
}

unint64_t sub_100075258()
{
  result = qword_1002B0B30;
  if (!qword_1002B0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0B30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ByteBufferFoundationError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100075354);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s20ByteTransferStrategyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100075458);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100075490(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  if (!a1)
  {
    a2 = 0;
  }

  ByteBuffer._setBytes(_:at:)(a1, a2, a4);
  return result;
}

uint64_t sub_100075524(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 32))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100075570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000755D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1000183C4(&qword_1002B0B38);
    v11 = a1 + *(a3 + 24);

    return sub_10001C990(v11, a2, v10);
  }
}

uint64_t sub_100075680(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_1000183C4(&qword_1002B0B38);
    v8 = v5 + *(a4 + 24);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CreateAppReceiptResponse()
{
  result = qword_1002B0B98;
  if (!qword_1002B0B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100075754()
{
  sub_1000757D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000757D8()
{
  if (!qword_1002B0BA8)
  {
    sub_100019BC4(&unk_1002B0BB0);
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002B0BA8);
    }
  }
}

uint64_t sub_10007583C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656B6F766572 && a2 == 0xE700000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x655264656E676973 && a2 == 0xED00007470696563)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100075950(char a1)
{
  if (!a1)
  {
    return 0x737574617473;
  }

  if (a1 == 1)
  {
    return 0x64656B6F766572;
  }

  return 0x655264656E676973;
}

uint64_t sub_1000759B0(void *a1)
{
  v3 = sub_1000183C4(&qword_1002B0BF8);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v11[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_1000762BC();
  sub_1001F8198();
  v11[15] = 0;
  sub_1001F7DA8();
  if (!v1)
  {
    v11[14] = 1;
    sub_1001F7D98();
    type metadata accessor for CreateAppReceiptResponse();
    v11[13] = 2;
    sub_1000183C4(&unk_1002B0BB0);
    sub_100076310();
    sub_1001F7D58();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_100075B60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656B6F766572 && a2 == 0xE700000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706965636572 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100075C74(char a1)
{
  if (!a1)
  {
    return 0x737574617473;
  }

  if (a1 == 1)
  {
    return 0x64656B6F766572;
  }

  return 0x74706965636572;
}

uint64_t sub_100075CC8(void *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v19 = a5;
  v22 = a3;
  v8 = sub_1000183C4(&qword_1002B0BE8);
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11, v12);
  v14 = &v18 - v13;
  sub_10001AE68(a1, a1[3]);
  sub_100076268();
  sub_1001F8198();
  LOBYTE(v20) = 0;
  sub_1000766A0();
  sub_1001F7DA8();
  if (!v5)
  {
    v15 = a4;
    v16 = v19;
    LOBYTE(v20) = 1;
    sub_1000766A0();
    sub_1001F7D98();
    v20 = v15;
    v21 = v16;
    v23 = 2;
    sub_100040C5C(v15, v16);
    sub_10004FAD4();
    sub_1000766A0();
    sub_1001F7D58();
    sub_10003A36C(v20, v21);
  }

  return (*(v10 + 8))(v14, v8);
}

uint64_t sub_100075E78(void *a1)
{
  v2 = sub_1000183C4(&qword_1002B0C10);
  sub_10001A278();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  v8 = &v11[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_100076268();
  sub_1001F8178();
  LOBYTE(v12) = 0;
  sub_1000766B0();
  v9 = sub_1001F7C98();
  LOBYTE(v12) = 1;
  sub_1000766B0();
  sub_1001F7C88();
  v11[15] = 2;
  sub_10004FB28();
  sub_1001F7C48();
  (*(v4 + 8))(v8, v2);
  sub_100019CCC(a1);
  return v9;
}

uint64_t sub_100076060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007583C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100076088(uint64_t a1)
{
  v2 = sub_1000762BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000760C4(uint64_t a1)
{
  v2 = sub_1000762BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100076118(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t sub_10007616C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100075B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100076194(uint64_t a1)
{
  v2 = sub_100076268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000761D0(uint64_t a1)
{
  v2 = sub_100076268();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007620C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100075E78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_100076268()
{
  result = qword_1002B0BF0;
  if (!qword_1002B0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0BF0);
  }

  return result;
}

unint64_t sub_1000762BC()
{
  result = qword_1002B0C00;
  if (!qword_1002B0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0C00);
  }

  return result;
}

unint64_t sub_100076310()
{
  result = qword_1002B0C08;
  if (!qword_1002B0C08)
  {
    sub_100019BC4(&unk_1002B0BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0C08);
  }

  return result;
}

_BYTE *sub_100076388(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100076454);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100076490()
{
  result = qword_1002B0C18;
  if (!qword_1002B0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0C18);
  }

  return result;
}

unint64_t sub_1000764E8()
{
  result = qword_1002B0C20;
  if (!qword_1002B0C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0C20);
  }

  return result;
}

unint64_t sub_100076540()
{
  result = qword_1002B0C28;
  if (!qword_1002B0C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0C28);
  }

  return result;
}

unint64_t sub_100076598()
{
  result = qword_1002B0C30;
  if (!qword_1002B0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0C30);
  }

  return result;
}

unint64_t sub_1000765F0()
{
  result = qword_1002B0C38;
  if (!qword_1002B0C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0C38);
  }

  return result;
}

unint64_t sub_100076648()
{
  result = qword_1002B0C40;
  if (!qword_1002B0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0C40);
  }

  return result;
}

uint64_t sub_1000766CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000766EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_100076738(int a1, uint64_t a2, char a3)
{
  type metadata accessor for BaseSocket();
  v7 = sub_1000E1DDC(a1, a2, a3);
  if (!v3)
  {
    return sub_1000E2024(v7);
  }

  type metadata accessor for Socket();
  return swift_deallocPartialClassInstance();
}

uint64_t sub_1000767D8(uint64_t a1, char a2)
{
  v4 = sub_1000E2024(a1);
  if (!v2 && (a2 & 1) != 0)
  {
    if (sub_1000E220C())
    {
      sub_10019EEBC();
    }

    else
    {
      sub_1000274C4();
      v5 = sub_1000276A0();
      sub_10007732C(v5, v6);
    }
  }

  return v4;
}

uint64_t sub_100076870(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v1 = sub_10007694C();
    }

    else
    {
      memcpy(__dst, ((a1 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v1 = sub_10007699C(__dst);
    }
  }

  else
  {
    v1 = sub_100076904();
  }

  return v1 & 1;
}

uint64_t sub_100076A00(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_10019E514(a1, __dst, 0x6Au);
  return v3 & 1;
}

uint64_t sub_100076A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v8 = a5;
  sub_10019E514(a1, v7, 0x1Cu);
  return v5 & 1;
}

uint64_t sub_100076AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  sub_10019E514(a1, v5, 0x10u);
  return v3 & 1;
}

uint64_t sub_100076B3C()
{
  v2 = 0xD00000000000001FLL;
  if (!sub_1000E220C())
  {
    v5 = "unexpected filter ";
    v4 = 9;
    goto LABEL_6;
  }

  result = sub_10017BDA4(*(v0 + 16), 0xFFFFLL, 4103);
  if (!v1)
  {
    v4 = result;
    if (result)
    {
      v5 = "pportXPCService6Socket";
      v2 = 0xD000000000000027;
LABEL_6:
      v6 = v5 | 0x8000000000000000;
      sub_1000274C4();
      sub_1000276A0();
      *v7 = v2;
      *(v7 + 8) = v6;
      *(v7 + 16) = v4;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_100076C18()
{
  if (sub_1000E220C())
  {
    sub_10019DE98();
  }

  else
  {
    sub_100077354();
    v0 = sub_1000276A0();
    sub_100077300(v0, v1);
  }
}

void sub_100076C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    __break(1u);
  }

  v7[0] = a1;
  v7[1] = a2 - a1;
  sub_1000E207C(v6, v7, a3, a4, a5, a6);
}

uint64_t sub_100076D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = sub_1000E220C();
  if (result)
  {
    if (a1)
    {
      return a3(*(v3 + 16), a1, a2 - a1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100077354();
    v8 = sub_1000276A0();
    return sub_100077300(v8, v9);
  }

  return result;
}

void sub_100076DD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t *a5)
{
  v8 = a2 - a1;
  if (!a1)
  {
    v8 = 0;
  }

  v18[0] = a1;
  v18[1] = v8;
  v9 = *a4;
  v10 = *a5;
  if (!*a5)
  {
    goto LABEL_7;
  }

  v11 = a5[1] - v10;
  if (v11 < 0)
  {
    __break(1u);
  }

  if (HIDWORD(v11))
  {
    __break(1u);
LABEL_7:
    LODWORD(v11) = 0;
  }

  v16 = v9;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  if (!sub_1000E220C())
  {
    sub_1000274C4();
    v13 = sub_1000276A0();
    sub_10007732C(v13, v14);
    goto LABEL_14;
  }

  sub_10019E8DC();
  if (v5)
  {
LABEL_14:
    *a4 = v16;
    return;
  }

  if (v12)
  {
    a5[2] = a3;
    a5[3] = v16;
    a5[4] = v18;
    a5[5] = 1;
    *(a5 + 3) = v17;
    *(a5 + 64) = 0;
  }

  *a4 = v16;
}

off_t sub_100076F20(int a1, off_t a2, off_t a3)
{
  if (sub_1000E220C())
  {
    return sub_10019ECF4(*(v3 + 16), a1, a2, a3);
  }

  sub_100077354();
  v8 = sub_1000276A0();
  return sub_100077300(v8, v9);
}

void sub_100076FB0(unsigned __int8 a1)
{
  if (sub_1000E220C())
  {
    sub_10019EAE4(*(v1 + 16), a1);
  }

  else
  {
    sub_100077354();
    v3 = sub_1000276A0();
    sub_100077300(v3, v4);
  }
}

uint64_t sub_1000770AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (v5)
  {
    return v7;
  }

  return result;
}

off_t sub_10007710C(int a1, off_t a2, off_t a3)
{
  result = sub_100076F20(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

unint64_t sub_100077160(uint64_t a1)
{
  result = sub_100077188();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100077188()
{
  result = qword_1002B0DB0;
  if (!qword_1002B0DB0)
  {
    type metadata accessor for Socket();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0DB0);
  }

  return result;
}

uint64_t sub_1000771DC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, _BYTE *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_100076A00(a1, __dst);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_10007723C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100076A7C(a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_100077278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100076AE0(a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_100077300(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000001FLL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 9;

  return swift_willThrow();
}

uint64_t sub_10007732C(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000001FLL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 9;

  return swift_willThrow();
}

unint64_t sub_100077354()
{

  return sub_1000274C4();
}

void *sub_10007736C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, Swift::String *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v7 = a1;
  v93 = 1;
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);

  v64 = a2;
  v12 = sub_1000E087C(v11);

  v57 = a4;
  if (v12)
  {
    v13 = v12[2];
    v14 = v12[5];
    v60 = v12[4];
    v61 = v12[3];

    v59 = v14;
  }

  else
  {
    v13 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
  }

  v58 = *(v7 + 32);
  v15 = *(v7 + 16);
  v16 = *(v7 + 24);

  v17 = sub_100077944(v15, v16);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = sub_10004B628();
  v22 = v21;

  sub_1000183C4(&qword_1002B0E30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001FE9E0;
  v24 = *(v7 + 72);
  *(v23 + 32) = *(v7 + 64);
  *(v23 + 40) = v24;
  *(v23 + 48) = v19;
  *(v23 + 56) = 0;
  *(v23 + 64) = v20;
  *(v23 + 72) = v22;
  *(v23 + 80) = 0;
  *(v23 + 88) = 1;
  *(v23 + 96) = 0;
  *(v23 + 104) = 1;
  *(v23 + 106) = 0;

  v25 = sub_1001F69B8();
  type metadata accessor for OctaneSubscription();
  v26 = swift_dynamicCastClass();
  v62 = v13;
  v56 = v25;
  if (!v26)
  {
    v41 = v10;
    v42 = a5;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v37 = 0;
    goto LABEL_26;
  }

  v27 = v26;
  v28 = *(v26 + 176);
  v29 = *(v26 + 184);
  v51 = v7;

  v30 = sub_1001EBEE0(v28, v29);
  v54 = v31;
  v55 = v30;
  v32 = v27[25];
  v53 = v27[24];
  v7 = v27[18];
  v33 = sub_10001A07C(v7);
  v52 = v32;
  if (v33)
  {
    v34 = v33;
    *&v67[0] = _swiftEmptyArrayStorage;
    v35 = v33 & ~(v33 >> 63);

    sub_10003440C(0, v35, 0);
    if (v34 < 0)
    {
      __break(1u);
LABEL_31:
      sub_1000332D8();
      v37 = v48;
      goto LABEL_22;
    }

    v50 = a5;
    v36 = 0;
    v37 = *&v67[0];
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v38 = sub_1001F7808();
      }

      else
      {
      }

      sub_1000E69DC(v38, __src);
      *&v67[0] = v37;
      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        sub_10003440C((v39 > 1), v40 + 1, 1);
        v37 = *&v67[0];
      }

      ++v36;
      v37[2] = v40 + 1;
      memcpy(&v37[14 * v40 + 4], __src, 0x69uLL);
    }

    while (v34 != v36);

    a5 = v50;
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  v7 = v51;
  if (!v27[17])
  {
    v41 = v10;
    v42 = a5;

    goto LABEL_26;
  }

  v43 = swift_retain_n();
  sub_1000E69DC(v43, v95);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_22:
  v41 = v10;
  v44 = v37[2];
  v42 = a5;
  if (v44 >= v37[3] >> 1)
  {
    sub_1000332D8();
    v37 = v49;
  }

  v37[2] = v44 + 1;
  memcpy(&v37[14 * v44 + 4], v95, 0x69uLL);
LABEL_26:
  v98 = *v64;
  v67[0] = v98;

  v99._countAndFlagsBits = 0x636E657272756340;
  v99._object = 0xEA00000000003D79;
  sub_1001F6CA8(v99);
  sub_1001F6CA8(a3[1]);

  sub_10001C7E4(a3);
  sub_10001C838(&v98);
  v45 = v67[0];
  v97 = v64[1];
  sub_10001C838(&v97);
  v96 = *(v64 + 4);
  sub_10001C88C(&v96);
  if (v57)
  {
    v46 = *(v7 + 112);
  }

  else
  {
    v46 = 4;
  }

  *&v66[0] = 0;
  BYTE8(v66[0]) = v93;
  *(v66 + 9) = *v92;
  HIDWORD(v66[0]) = *&v92[3];
  memset(&v66[1], 0, 48);
  *&v66[4] = v56;
  *(&v66[4] + 1) = 0xD000000000000013;
  *&v66[5] = 0x8000000100225A10;
  *(&v66[5] + 1) = v41;
  *&v66[6] = v9;
  *(&v66[6] + 1) = v62;
  *&v66[7] = v61;
  *(&v66[7] + 1) = v60;
  *&v66[9] = 0;
  v66[8] = v59;
  BYTE8(v66[9]) = 0;
  BYTE9(v66[9]) = v58;
  *(&v66[9] + 10) = v90;
  HIWORD(v66[9]) = v91;
  v66[10] = v67[0];
  *&v66[11] = v53;
  *(&v66[11] + 1) = v52;
  *&v66[12] = v55;
  *(&v66[12] + 1) = v54;
  *&v66[13] = v37;
  BYTE8(v66[13]) = v46;
  *&v67[0] = 0;
  BYTE8(v67[0]) = v93;
  HIDWORD(v67[0]) = *&v92[3];
  *(v67 + 9) = *v92;
  memset(&v67[1], 0, 48);
  v68 = v56;
  v69 = 0xD000000000000013;
  v70 = 0x8000000100225A10;
  v71 = v41;
  v72 = v9;
  v73 = v62;
  v74 = v61;
  v75 = v60;
  v78 = 0;
  v76 = v59;
  v77 = 0;
  v79 = 0;
  v80 = v58;
  v82 = v91;
  v81 = v90;
  v83 = v45;
  v84 = v53;
  v85 = v52;
  v86 = v55;
  v87 = v54;
  v88 = v37;
  v89 = v46;
  sub_100078A40(v66, v65);
  sub_100078914(v67);
  return memcpy(v42, v66, 0xD9uLL);
}

uint64_t sub_100077944(uint64_t a1, uint64_t a2)
{
  sub_100078C70(a1, a2);

  return 0;
}

uint64_t sub_1000779A4()
{
  v0 = sub_1001F7F58();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100077A04(char a1)
{
  result = 0x64692D6D657469;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x32656C746974;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x666F2D65726F7473;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x6D614E726566666FLL;
      break;
    case 7:
      result = 0x7470697263736564;
      break;
    case 8:
      result = 0x656C746974;
      break;
    case 9:
      result = 0x6E6F6973726576;
      break;
    case 10:
      result = 0x6574736F682D7369;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x61636F6C2D756369;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0x746E756F63736964;
      break;
    case 16:
      result = 1684957547;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100077C2C(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B0E00);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_1000788C0();
  sub_1001F8198();
  LOBYTE(v14) = 0;
  sub_10001E6C8();
  sub_1001F7D78();
  if (!v2)
  {
    sub_100079174(1);
    sub_1001F7D18();
    sub_100079174(2);
    sub_1001F7D18();
    sub_100079174(3);
    sub_1001F7D18();
    v14 = *(v3 + 64);
    HIBYTE(v13) = 4;
    sub_1000183C4(&qword_1002B0DC8);
    sub_100078A78(&qword_1002B0E08, sub_100078AFC);
    sub_100079288();
    sub_10001E6C8();
    sub_1001F7D58();
    sub_100079174(5);
    sub_1001F7D88();
    sub_100079174(6);
    sub_1001F7D18();
    sub_100079174(7);
    sub_1001F7D18();
    sub_100079174(8);
    sub_1001F7D18();
    sub_100079174(9);
    sub_1001F7D18();
    LOBYTE(v14) = 10;
    sub_10001E6C8();
    sub_1001F7D98();
    LOBYTE(v14) = 11;
    sub_10001E6C8();
    sub_1001F7D98();
    sub_100079174(12);
    sub_1001F7D18();
    sub_100079174(13);
    sub_1001F7D18();
    sub_100079174(14);
    sub_1001F7D18();
    v14 = *(v3 + 208);
    HIBYTE(v13) = 15;
    sub_1000183C4(&qword_1002B0DE0);
    sub_100078B50(&qword_1002B0E18, sub_100078BC8);
    sub_100079288();
    sub_10001E6C8();
    sub_1001F7D58();
    LOBYTE(v14) = *(v3 + 216);
    HIBYTE(v13) = 16;
    sub_100078C1C();
    sub_100079288();
    sub_10001E6C8();
    sub_1001F7D58();
  }

  return (*(v7 + 8))(v11, v5);
}

void *sub_100077FD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000183C4(&qword_1002B0DB8);
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  v12 = &v63 - v11;
  v105 = 1;
  v83 = a1;
  v84 = 0x8000000100225A10;
  v13 = a1[4];
  sub_10001AE68(a1, a1[3]);
  sub_1000788C0();
  sub_1001F8178();
  if (v2)
  {
    v106 = v2;
    sub_100079154();
    sub_1000791C8();
    sub_1000792B0();
    v14 = 0;
LABEL_4:
    sub_100019CCC(v83);
    v95 = v14;
    v96 = v105;
    sub_100079298();
    v97 = v12;
    v98 = v6;
    v99 = v13;
    v100 = v8;
    v101 = a2;
    v102 = v3;
    sub_1000792C4();
    v103 = v84;
    sub_1000791E8();
    v104 = 4;
    return sub_100078914(&v95);
  }

  LOBYTE(v95) = 0;
  v72 = sub_1001F7C68();
  v105 = v16 & 1;
  sub_1000791A4(1);
  v17 = sub_1001F7C08();
  v70 = v18;
  v71 = v17;
  sub_1000791A4(2);
  v68 = sub_1001F7C08();
  v69 = v19;
  sub_1000791A4(3);
  v66 = sub_1001F7C08();
  v67 = v20;
  sub_1000183C4(&qword_1002B0DC8);
  v92[0] = 4;
  sub_100078A78(&qword_1002B0DD0, sub_100078944);
  sub_100079268();
  sub_1001F7C48();
  v21 = a2;
  v22 = v95;
  sub_1000791A4(6);
  v81 = sub_1001F7C08();
  v82 = v23;
  sub_1000791A4(7);
  v79 = sub_1001F7C08();
  v80 = v24;
  sub_1000791A4(8);
  v77 = sub_1001F7C08();
  v78 = v25;
  v65 = v22;
  sub_1000791A4(9);
  v26 = sub_1001F7C08();
  v106 = 0;
  v75 = v26;
  v76 = v27;
  sub_1000791A4(10);
  v28 = v106;
  v29 = sub_1001F7C88();
  v106 = v28;
  if (v28)
  {
    v30 = sub_1000791B8();
    v31(v30);
    sub_10007918C();
LABEL_16:
    v86 = 0;
LABEL_17:
    v73 = 0;
LABEL_5:
    v12 = v71;
    v14 = v72;
    v8 = v69;
    v6 = v70;
    v3 = v67;
    v13 = v68;
    a2 = v66;
    goto LABEL_4;
  }

  v74 = v29 & 1;
  sub_1000791A4(11);
  v32 = v106;
  v33 = sub_1001F7C88();
  v106 = v32;
  if (v32)
  {
    v34 = sub_1000791B8();
    v35(v34);
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v85 = 0;
    goto LABEL_16;
  }

  v85 = v33 & 1;
  sub_1000791A4(12);
  v36 = v106;
  v90 = sub_1001F7C08();
  v91 = v37;
  v106 = v36;
  if (v36)
  {
    v38 = sub_1000791B8();
    v39(v38);
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    goto LABEL_16;
  }

  sub_1000791A4(13);
  v40 = v106;
  v88 = sub_1001F7C08();
  v89 = v41;
  v106 = v40;
  if (v40)
  {
    v42 = sub_1000791B8();
    v43(v42);
    v87 = 0;
    v88 = 0;
    v89 = 0;
    goto LABEL_16;
  }

  sub_1000791A4(14);
  v44 = v106;
  v45 = sub_1001F7C08();
  v86 = v46;
  v87 = v45;
  v106 = v44;
  if (v44)
  {
    v47 = sub_1000791B8();
    v48(v47);
    v87 = 0;
    goto LABEL_16;
  }

  sub_1000183C4(&qword_1002B0DE0);
  v92[0] = 15;
  sub_100078B50(&qword_1002B0DE8, sub_100078998);
  sub_100079268();
  v49 = v106;
  sub_1001F7C48();
  v106 = v49;
  if (v49)
  {
    v50 = sub_1000791B8();
    v51(v50);
    goto LABEL_17;
  }

  v73 = v95;
  v93 = 16;
  sub_1000789EC();
  v52 = v106;
  sub_1001F7C48();
  v106 = v52;
  if (v52)
  {
    v53 = sub_1000791B8();
    v54(v53);
    goto LABEL_5;
  }

  v55 = sub_1000791B8();
  v56(v55);
  v64 = v94;
  v57 = v72;
  *v92 = v72;
  v58 = v105;
  v92[8] = v105;
  v59 = v70;
  *&v92[16] = v71;
  *&v92[24] = v70;
  v60 = v68;
  *&v92[32] = v68;
  *&v92[40] = v69;
  v61 = v66;
  *&v92[48] = v66;
  *&v92[56] = v67;
  *&v92[64] = v65;
  *&v92[72] = 0xD000000000000013;
  v62 = v84;
  *&v92[80] = v84;
  *&v92[88] = v81;
  *&v92[96] = v82;
  *&v92[104] = v79;
  *&v92[112] = v80;
  *&v92[120] = v77;
  *&v92[128] = v78;
  *&v92[136] = v75;
  *&v92[144] = v76;
  v92[152] = v74;
  v92[153] = v85;
  *&v92[160] = v90;
  *&v92[168] = v91;
  *&v92[176] = v88;
  *&v92[184] = v89;
  *&v92[192] = v87;
  *&v92[200] = v86;
  *&v92[208] = v73;
  v92[216] = v94;
  sub_100078A40(v92, &v95);
  sub_100019CCC(v83);
  v95 = v57;
  v96 = v58;
  sub_100079298();
  v97 = v71;
  v98 = v59;
  v99 = v60;
  v100 = v69;
  v101 = v61;
  v102 = v67;
  sub_1000792C4();
  v103 = v62;
  sub_1000791E8();
  v104 = v64;
  sub_100078914(&v95);
  return memcpy(v21, v92, 0xD9uLL);
}

uint64_t sub_100078730@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000779A4();
  *a1 = result;
  return result;
}

unint64_t sub_100078760@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100077A04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100078794@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000779F8();
  *a1 = result;
  return result;
}

uint64_t sub_1000787BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000779FC();
  *a1 = result;
  return result;
}

uint64_t sub_1000787E4(uint64_t a1)
{
  v2 = sub_1000788C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100078820(uint64_t a1)
{
  v2 = sub_1000788C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10007885C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100077FD8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0xD9uLL);
  }

  return result;
}

unint64_t sub_1000788C0()
{
  result = qword_1002B0DC0;
  if (!qword_1002B0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0DC0);
  }

  return result;
}

unint64_t sub_100078944()
{
  result = qword_1002B0DD8;
  if (!qword_1002B0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0DD8);
  }

  return result;
}

unint64_t sub_100078998()
{
  result = qword_1002B0DF0;
  if (!qword_1002B0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0DF0);
  }

  return result;
}

unint64_t sub_1000789EC()
{
  result = qword_1002B0DF8;
  if (!qword_1002B0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0DF8);
  }

  return result;
}

uint64_t sub_100078A78(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B0DC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100078AFC()
{
  result = qword_1002B0E10;
  if (!qword_1002B0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0E10);
  }

  return result;
}

uint64_t sub_100078B50(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B0DE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100078BC8()
{
  result = qword_1002B0E20;
  if (!qword_1002B0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0E20);
  }

  return result;
}

unint64_t sub_100078C1C()
{
  result = qword_1002B0E28;
  if (!qword_1002B0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0E28);
  }

  return result;
}

BOOL sub_100078C70(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1001F77A8();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

_BYTE *sub_100078D68@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for Product.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Product.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100078F44);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100078F84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 217))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100078FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100079050()
{
  result = qword_1002B0E38;
  if (!qword_1002B0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0E38);
  }

  return result;
}

unint64_t sub_1000790A8()
{
  result = qword_1002B0E40;
  if (!qword_1002B0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0E40);
  }

  return result;
}

unint64_t sub_100079100()
{
  result = qword_1002B0E48;
  if (!qword_1002B0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B0E48);
  }

  return result;
}

void sub_100079154()
{
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 180) = 0;
  *(v0 + 92) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
}

void sub_10007918C()
{
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 180) = 0;
  *(v0 + 92) = 0;
}

void sub_1000791C8()
{
  v0[16] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[23] = 0;
  v0[10] = 0;
}

void sub_1000791E8()
{
  v3 = *(v1 + 152);
  *(v1 + 544) = *(v1 + 144);
  *(v1 + 552) = v3;
  v4 = *(v1 + 136);
  *(v1 + 560) = *(v1 + 128);
  *(v1 + 568) = v4;
  v5 = *(v1 + 120);
  *(v1 + 576) = *(v1 + 112);
  *(v1 + 584) = v5;
  v6 = *(v1 + 104);
  *(v1 + 592) = *(v1 + 96);
  *(v1 + 600) = v6;
  *(v1 + 608) = *(v1 + 92);
  *(v1 + 609) = *(v1 + 180);
  *(v0 + 154) = *(v0 + 218);
  *(v1 + 614) = *(v2 - 106);
  v7 = *(v1 + 224);
  *(v1 + 616) = *(v1 + 216);
  *(v1 + 624) = v7;
  v8 = *(v1 + 208);
  *(v1 + 632) = *(v1 + 200);
  *(v1 + 640) = v8;
  v9 = *(v1 + 184);
  *(v1 + 648) = *(v1 + 192);
  *(v1 + 656) = v9;
  *(v1 + 664) = *(v1 + 80);
}

void *sub_1000792D8@<X0>(void *a1@<X8>)
{
  v3 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v3);
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  sub_10007B844(__dst, &v5);
  os_unfair_lock_unlock(v3);

  return memcpy(a1, __dst, 0x50uLL);
}

uint64_t sub_10007935C()
{
  v0 = sub_1000795A8();
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0x656D614E20707041;
  }

  return v1;
}

uint64_t sub_1000793C4()
{
  sub_100037AAC();
  sub_10007B9BC();
  sub_1001EB09C();
  swift_endAccess();

  sub_100037AAC();
  v0 = sub_10007B9BC();
  sub_1001EB270(v0, v1);
  swift_endAccess();

  sub_100037AAC();
  v2 = sub_10007B9BC();
  sub_1001EB248(v2, v3);
  swift_endAccess();
}

BOOL sub_100079484()
{
  sub_10007B980();
  v7 = sub_100079640(0, v0, v1, v2, v3, v4, v5, v6);
  return EmbeddedChannel.LeftOverState.hasLeftOvers.getter(v7);
}

uint64_t sub_1000794A8(uint64_t a1)
{
  sub_100037AAC();
  sub_10011108C();
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(a1 + 32);
    v4 = *(v6 + 24);
    sub_1000183C4(&qword_1002BCCF0);
    sub_1001F7A98(isUniquelyReferenced_nonNull_native, v4);

    type metadata accessor for OctaneConfigurationOverrides();
    sub_1001F7AB8();
    *(a1 + 32) = v6;
  }

  return swift_endAccess();
}

uint64_t sub_1000795A8()
{
  v0 = sub_10007ABAC();

  sub_10007B9BC();
  sub_10007B9C8();
  sub_1000B7264(v1);
  return v0;
}

BOOL sub_10007961C()
{
  sub_10007B980();
  v7 = sub_100079640(2, v0, v1, v2, v3, v4, v5, v6);
  return EmbeddedChannel.LeftOverState.hasLeftOvers.getter(v7);
}

uint64_t sub_100079640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == 10)
  {
    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    return sub_10013208C(a2, a3, a3, a4, a5, a6, a7, a8) & 1;
  }

  else
  {
    v16 = sub_100079E8C(a1);
    v12 = *(*(v8 + 24) + 16);

    os_unfair_lock_lock(v12);
    sub_10007B9C8();
    sub_10007972C(v13, v14, v15);
    os_unfair_lock_unlock(v12);

    return v16;
  }
}

uint64_t sub_10007972C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 == 9)
  {
    *a2 = *(a3 + 168);
  }

  result = swift_beginAccess();
  if (*(*(a3 + 32) + 16))
  {

    sub_10011108C();
    if (v7)
    {

      v8 = sub_10004FEF8(a1);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        *a2 = v8;
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100079810(uint64_t a1)
{
  sub_10007A448(a1);
  v3 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v3);
  sub_100047940();
  swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {

    sub_10011108C();
    if ((v4 & 1) == 0 || (, , sub_100050084(a1), v6 = v5, , v6))
    {
    }
  }

  os_unfair_lock_unlock(v3);

  return sub_10007B9BC();
}

uint64_t sub_10007992C()
{
  sub_10007B980();
  v1 = v0;
  v2 = sub_100079810(4);
  sub_1000E0BC4(v2, v3, v10);
  v5 = v10[0];
  v4 = v10[1];
  v7 = v10[2];
  v6 = v10[3];
  v8 = v10[4];

  if (!v4)
  {
    if (qword_1002AC458 != -1)
    {
      sub_10007B940();
    }

    v5 = qword_1002E6098;
    v4 = unk_1002E60A0;
    v7 = qword_1002E60A8;
    v6 = unk_1002E60B0;
    v8 = qword_1002E60B8;
  }

  *v1 = v5;
  v1[1] = v4;
  v1[2] = v7;
  v1[3] = v6;
  v1[4] = v8;
  return result;
}

BOOL sub_1000799F4()
{
  sub_10007B980();
  v7 = sub_100079640(1, v0, v1, v2, v3, v4, v5, v6);
  return EmbeddedChannel.LeftOverState.hasLeftOvers.getter(v7);
}

uint64_t sub_100079A18(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 10)
  {
    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    return sub_1001323E4(a4, a5, (a1 == 1) & ~a2, a4, a5, a6, a7, a8);
  }

  else
  {
    v14 = v8;
    v16 = *(*(v8 + 24) + 16);

    os_unfair_lock_lock(v16);
    sub_100079B38(a3, v14, a1, a2 & 1, a4, a5);
    os_unfair_lock_unlock(v16);
  }
}

uint64_t sub_100079B38(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (result == 9)
  {
    if (a4)
    {
      v9 = 0;
    }

    else
    {
      v9 = a3;
    }

    *(a2 + 168) = v9;
  }

  else
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(a2 + 32);

    v14 = sub_1001F43D8(a5, a6, v13);

    if (!v14)
    {
      type metadata accessor for OctaneConfigurationOverrides();
      v14 = swift_allocObject();
      *(v14 + 16) = _swiftEmptyDictionarySingleton;
      *(v14 + 24) = _swiftEmptyDictionarySingleton;
    }

    sub_10004FF64(a3, a4 & 1, v12);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a2 + 32);
    sub_1001E6154(v14, a5, a6, isUniquelyReferenced_nonNull_native);
    *(a2 + 32) = v16;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100079C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 8)
  {
    sub_100050490();
    v6 = swift_allocError();
    *v7 = 2;
  }

  else
  {
    v8 = v5;
    v14 = *(v8 + 24);
    v15 = *(v14 + 16);

    os_unfair_lock_lock(v15);
    sub_100047940();
    swift_beginAccess();
    v16 = *(v8 + 32);

    v17 = sub_10007B9A4();
    v19 = sub_1001F43D8(v17, v18, v16);

    if (!v19)
    {
      type metadata accessor for OctaneConfigurationOverrides();
      v19 = swift_allocObject();
      *(v19 + 16) = _swiftEmptyDictionarySingleton;
      *(v19 + 24) = _swiftEmptyDictionarySingleton;
    }

    v6 = sub_100050100(a1, a2, a3);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v8 + 32);
    sub_1001E6154(v19, a4, a5, isUniquelyReferenced_nonNull_native);
    *(v8 + 32) = v22;
    swift_endAccess();

    os_unfair_lock_unlock(v15);

    if ((a3 | 2) == 6)
    {
      sub_10007B9A4();
      sub_1000795A8();

      sub_1000B7264(v14);
    }
  }

  return v6;
}

uint64_t sub_100079E8C(uint64_t a1)
{
  sub_1000795A8();
  switch(a1)
  {
    case 0:
      sub_10007B98C();

      v6 = *(v1 + 16);
      goto LABEL_26;
    case 1:
      sub_10007B98C();

      v6 = *(v1 + 17);
      goto LABEL_26;
    case 2:
      sub_10007B98C();

      v6 = *(v1 + 20);
      goto LABEL_26;
    case 3:
    case 16:
      sub_10007B98C();
      v5 = 1;
      goto LABEL_37;
    case 5:

      v7 = sub_100081528(1);
      v9 = v8;

      if (v9)
      {
        goto LABEL_30;
      }

      v10 = sub_1001DE204(v7);
      if (v10 == 5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      v6 = v11;
      goto LABEL_43;
    case 7:
      sub_10007B98C();

      v6 = *(v1 + 152);
      goto LABEL_26;
    case 11:
      sub_10007B98C();

      v6 = *(v1 + 18);
      goto LABEL_26;
    case 12:
      sub_10007B98C();

      v6 = *(v1 + 19);
LABEL_26:

      goto LABEL_43;
    case 13:
      sub_10007B98C();
      v13 = 0;
      goto LABEL_32;
    case 14:
      sub_10007B98C();
      v5 = 0;
      goto LABEL_37;
    case 15:
      sub_10007B98C();
      sub_100081528(1);
      sub_10007B924();

      v14 = (v2 & 1) == 0;
      v15 = 8;
      goto LABEL_40;
    case 17:
      sub_10007B98C();
      sub_100081528(2);
      sub_10007B924();

      v14 = (v2 & 1) == 0;
      v15 = 17;
      goto LABEL_40;
    case 18:
      sub_10007B98C();
      v5 = 2;
      goto LABEL_37;
    case 19:
      sub_10007B98C();
      sub_100081528(3);
      sub_10007B924();

      if (v2)
      {
        v6 = 3;
      }

      else
      {
        v6 = a1;
      }

      goto LABEL_43;
    case 20:
      sub_10007B98C();
      v5 = 3;
      goto LABEL_37;
    case 21:
      sub_10007B98C();
      v13 = 4;
LABEL_32:
      sub_100081528(v13);
      sub_10007B924();

      v14 = (v2 & 1) == 0;
      v15 = 3;
      goto LABEL_40;
    case 22:
      sub_10007B98C();
      v5 = 4;
      goto LABEL_37;
    case 23:
      sub_10007B98C();
      v12 = 5;
      goto LABEL_39;
    case 24:
      sub_10007B98C();
      v5 = 5;
      goto LABEL_37;
    case 25:
      sub_10007B98C();
      v12 = 6;
LABEL_39:
      sub_100081528(v12);
      sub_10007B924();

      v14 = (v2 & 1) == 0;
      v15 = 4;
      goto LABEL_40;
    case 26:
      sub_10007B98C();
      v5 = 6;
      goto LABEL_37;
    case 27:
      sub_10007B98C();
      sub_100081528(7);
      sub_10007B924();

      v14 = (v2 & 1) == 0;
      v15 = 15;
      goto LABEL_40;
    case 28:
      sub_10007B98C();
      v5 = 7;
      goto LABEL_37;
    case 29:
      sub_10007B98C();
      sub_100081528(8);
      sub_10007B924();

      v14 = (v2 & 1) == 0;
      v15 = 5;
LABEL_40:
      if (v14)
      {
        v6 = a1;
      }

      else
      {
        v6 = v15;
      }

      goto LABEL_43;
    case 30:
      sub_10007B98C();
      v5 = 8;
LABEL_37:
      v16 = sub_1000814F0(v5);

      v6 = v16 & 1;
      goto LABEL_43;
    case 32:

LABEL_30:
      v6 = 0;
LABEL_43:
      result = v6;
      break;
    default:
      sub_1001F5E38();
      sub_100013EFC();

      result = v1;
      break;
  }

  return result;
}

uint64_t sub_10007A214(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 9)
  {
    type metadata accessor for ASOctaneSimulatedErrorCategory(0);
    result = sub_1001F7F78();
    __break(1u);
  }

  else
  {
    result = sub_100079640(2 * a1 + 14, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      v12 = sub_1001DC284(a1);
      return sub_100079640(v12, a2, a3, v13, v14, v15, v16, v17);
    }
  }

  return result;
}

uint64_t sub_10007A2B0(uint64_t a1, char a2, unint64_t a3)
{
  sub_1001DC234(a3);
  if ((a2 & 1) == 0)
  {
    sub_10007B9C8();
    sub_100079A18(v5, v6, v7, v8, v9, v10, v11, v12);
    sub_1001DC284(a3);
  }

  sub_10007B9C8();

  return sub_100079A18(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_10007A340()
{
  sub_10007B980();
  v1 = v0;
  v2 = sub_100079810(6);
  sub_10014B7DC(v2, v3, v23);
  v4 = v23[1];
  v5 = v23[3];
  v18 = v23[0];
  v19 = v23[2];
  v7 = v23[4];
  v6 = v23[5];
  v9 = v23[6];
  v8 = v23[7];
  v11 = v23[8];
  v10 = v23[9];

  if (v4)
  {
    v13 = v11;
    v14 = v9;
    v15 = v7;
    v16 = v18;
    v17 = v19;
  }

  else
  {
    if (qword_1002AC4A0 != -1)
    {
      sub_10007B960();
    }

    memcpy(__dst, &qword_1002E60F0, sizeof(__dst));
    v10 = __dst[9];
    v20 = __dst[8];
    v14 = __dst[6];
    v8 = __dst[7];
    v15 = __dst[4];
    v6 = __dst[5];
    v17 = __dst[2];
    v5 = __dst[3];
    v16 = __dst[0];
    v4 = __dst[1];
    result = sub_10007B844(__dst, v21);
    v13 = v20;
  }

  *v1 = v16;
  v1[1] = v4;
  v1[2] = v17;
  v1[3] = v5;
  v1[4] = v15;
  v1[5] = v6;
  v1[6] = v14;
  v1[7] = v8;
  v1[8] = v13;
  v1[9] = v10;
  return result;
}

uint64_t sub_10007A448(uint64_t a1)
{
  v2 = sub_1000795A8();
  switch(a1)
  {
    case 4:
      v6 = *(v2 + 48);

      v3 = *(v6 + 24);
      goto LABEL_6;
    case 6:
      v5 = *(v2 + 48);

      v3 = *(v5 + 72);
LABEL_6:

      break;
    case 8:
      if (qword_1002AC4B0 != -1)
      {
        swift_once();
      }

      v7 = sub_100174C7C();
      v9 = v8;

      if (v9)
      {
        v3 = v7;
      }

      else
      {
        v3 = 0;
      }

      break;
    default:

      v3 = 0;
      break;
  }

  return v3;
}

uint64_t sub_10007A5F0()
{
  sub_10007B980();
  v7 = sub_100079640(7, v0, v1, v2, v3, v4, v5, v6);
  LODWORD(result) = sub_1001CF628(v7);
  if (result <= 0xF7u)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007A620(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = 0;
  v9 = *(v4 + 24);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  sub_10007A720(v4, a3, a4, a1, a2, &v12);
  os_unfair_lock_unlock(v10);

  sub_10007B9A4();
  sub_1000795A8();

  sub_1000B7264(v9);

  return v12;
}

uint64_t sub_10007A720(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, _BYTE *a6)
{
  swift_beginAccess();
  v12 = *(a1 + 16);

  sub_1001F10F8(a2, a3, v12);
  v14 = v13;

  if (v14)
  {
    v25 = a6;

    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);

    v16 = sub_1001F6668();
    v17 = sub_1001F72B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v18 = 136380931;
      *(v18 + 4) = sub_1000E4544(a4, a5, v27);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1000E4544(a2, a3, v27);
      _os_log_impl(&_mh_execute_header, v16, v17, "Updated configuration file at %{private}s for %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    *v25 = 1;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v19 = sub_1001F6688();
    sub_100019C94(v19, qword_1002E6180);

    v20 = sub_1001F6668();
    v21 = sub_1001F72B8();

    if (os_log_type_enabled(v20, v21))
    {
      v26 = a4;
      v22 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v22 = 136315395;
      *(v22 + 4) = sub_1000E4544(a2, a3, v27);
      *(v22 + 12) = 2081;
      *(v22 + 14) = sub_1000E4544(v26, a5, v27);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s is using StoreKit Testing in Xcode.\nConfiguration at: %{private}s", v22, 0x16u);
      swift_arrayDestroy();

      a4 = v26;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + 16);
  sub_1001E5CAC(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v28;
  swift_endAccess();
  swift_beginAccess();
  sub_1001EB270(a2, a3);
  swift_endAccess();
}

uint64_t sub_10007AB10()
{
  v1 = *(*(v0 + 24) + 16);

  os_unfair_lock_lock(v1);
  v2 = *(v0 + 168);
  os_unfair_lock_unlock(v1);

  return v2;
}

BOOL sub_10007AB64()
{
  sub_10007B980();
  v7 = sub_100079640(12, v0, v1, v2, v3, v4, v5, v6);
  return EmbeddedChannel.LeftOverState.hasLeftOvers.getter(v7);
}

BOOL sub_10007AB88()
{
  sub_10007B980();
  v7 = sub_100079640(11, v0, v1, v2, v3, v4, v5, v6);
  return EmbeddedChannel.LeftOverState.hasLeftOvers.getter(v7);
}

uint64_t sub_10007ABAC()
{
  v1 = *(v0 + 24);

  v2 = sub_1000B7060(v1, v0);
  if (v2)
  {
    v3 = v2;
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v4 = sub_1001F6688();
    sub_100019C94(v4, qword_1002E6180);
    sub_100013EFC();

    v5 = sub_1001F6668();
    v6 = sub_1001F7288();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136315138;
      v9 = sub_10007B9A4();
      *(v7 + 4) = sub_1000E4544(v9, v10, v11);
      sub_10007B9D4(&_mh_execute_header, v12, v13, "Using cached configuration for %s");
      sub_100019CCC(v8);
      sub_10003A72C();
      sub_10003A72C();
    }

    return v3;
  }

  sub_10007B9A4();
  v15 = sub_10007B0BC();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    type metadata accessor for OctaneConfiguration();
    v3 = sub_1000EC770(v17, v18);

    sub_1000B7204(v1);
    return v3;
  }

  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v19 = sub_1001F6688();
  sub_100019C94(v19, qword_1002E6180);
  sub_100013EFC();

  v20 = sub_1001F6668();
  v21 = sub_1001F7298();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 136315138;
    v24 = sub_10007B9A4();
    *(v22 + 4) = sub_1000E4544(v24, v25, v26);
    sub_10007B9D4(&_mh_execute_header, v27, v28, "Tried to get configuration file for %s but the app is not using StoreKit Testing in Xcode.");
    sub_100019CCC(v23);
    sub_10003A72C();
    sub_10003A72C();
  }

  type metadata accessor for OctaneConfiguration();
  swift_allocObject();
  return sub_1000ECA08();
}

uint64_t sub_10007B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100037AAC();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 40);
  sub_1001E6168(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v10;
  return swift_endAccess();
}

uint64_t sub_10007B0BC()
{
  v1 = *(v0 + 24);

  return sub_1000B7130(v1, v0);
}

void sub_10007B13C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100047940();
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {

    sub_10011108C();
    if (v4)
    {

      v5 = sub_1001F6B48();

      v6 = sub_1001F6B48();
      v7 = [v5 stringByAppendingPathComponent:v6];

      v8 = sub_1001F6B58();
      v10 = v9;

      *a2 = v8;
      a2[1] = v10;
      return;
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t sub_10007B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 48);
  memcpy(__dst, v7 + 9, 0x50uLL);
  v8 = v7[4];
  v69 = v7[3];
  v9 = v7[6];
  v42 = v7[5];
  v10 = v7[7];
  sub_100047940();
  swift_beginAccess();
  v11 = *(a2 + 32);

  sub_10007B844(__dst, &v45);
  v12 = sub_1001F43D8(a3, a4, v11);

  if (v12)
  {
    v13 = sub_100050084(6);
    if (v14 && (sub_10014B7DC(v13, v14, &v45), , (v15 = v46) != 0))
    {
      v40 = v54;
      v41 = v53;
      v38 = v52;
      v39 = v51;
      v16 = v49;
      v17 = v50;
      v36 = v48;
      v37 = v47;
      v35 = v45;
      sub_10001C7E4(__dst);
    }

    else
    {
      v40 = __dst[9];
      v41 = __dst[8];
      v38 = __dst[7];
      v39 = __dst[6];
      v16 = __dst[4];
      v17 = __dst[5];
      v36 = __dst[3];
      v37 = __dst[2];
      v15 = __dst[1];
      v35 = __dst[0];
    }

    v18 = sub_100050084(4);
    if (v19)
    {
      sub_1000E0BC4(v18, v19, &v55);

      v20 = v56;
      if (v56)
      {
        v21 = v58;
        v34 = v59;
        v42 = v57;
        v69 = v55;

        v8 = v20;
        v9 = v21;
        v10 = v34;
      }
    }

    else
    {
    }

    v22 = v41;
    v24 = v39;
    v23 = v40;
    v26 = v37;
    v25 = v38;
    v28 = v35;
    v27 = v36;
  }

  else
  {
    v22 = __dst[8];
    v23 = __dst[9];
    v24 = __dst[6];
    v25 = __dst[7];
    v16 = __dst[4];
    v17 = __dst[5];
    v26 = __dst[2];
    v27 = __dst[3];
    v28 = __dst[0];
    v15 = __dst[1];
  }

  *&v60 = v69;
  *(&v60 + 1) = v8;
  *&v61 = v42;
  *(&v61 + 1) = v9;
  v62 = v10;
  __src[0] = v28;
  __src[1] = v15;
  __src[2] = v26;
  __src[3] = v27;
  __src[4] = v16;
  __src[5] = v17;
  __src[6] = v24;
  __src[7] = v25;
  v29 = v16 == *(a2 + 80) && v17 == *(a2 + 88);
  __src[8] = v22;
  __src[9] = v23;
  if (v29 || (sub_1001F7EA8()) && (v30 = *(a2 + 144), v63[0] = *(a2 + 128), v63[1] = v30, v64 = *(a2 + 160), v65 = v63[0], v66 = v30, v67 = v64, , , , sub_1000552A0(&v65, v43), sub_1000552A0(&v66, v43), sub_10007B8A0(&v67, v43), v31 = sub_1000E1AB8(&v60, v63), sub_10001C838(&v65), sub_10001C838(&v66), sub_10001C88C(&v67), , , , v31))
  {

    return sub_10001C7E4(__src);
  }

  else
  {
    memcpy(v43, (a2 + 48), sizeof(v43));
    memcpy((a2 + 48), __src, 0x50uLL);
    sub_10001C7E4(v43);
    v33 = v61;
    *(a2 + 128) = v60;
    *(a2 + 144) = v33;
    *(a2 + 160) = v62;

    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    sub_100130954();
  }
}

uint64_t sub_10007B630()
{

  return v0;
}

uint64_t sub_10007B6D4()
{
  sub_10007B630();

  return swift_deallocClassInstance();
}

void *sub_10007B72C()
{
  v0[2] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  v0[3] = v1;
  v0[4] = &_swiftEmptyDictionarySingleton;
  v0[5] = &_swiftEmptyDictionarySingleton;
  if (qword_1002AC4A0 != -1)
  {
    sub_10007B960();
  }

  memcpy(__dst, &qword_1002E60F0, sizeof(__dst));
  memmove(v0 + 6, &qword_1002E60F0, 0x50uLL);
  sub_10007B844(__dst, &v8);
  if (qword_1002AC458 != -1)
  {
    sub_10007B940();
  }

  v3 = unk_1002E60A0;
  v4 = qword_1002E60A8;
  v5 = unk_1002E60B0;
  v6 = qword_1002E60B8;
  v0[16] = qword_1002E6098;
  v0[17] = v3;
  v0[18] = v4;
  v0[19] = v5;
  v0[20] = v6;
  v0[21] = 0;

  return v0;
}

uint64_t sub_10007B8A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ACA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B924()
{
}

uint64_t sub_10007B940()
{

  return swift_once();
}

uint64_t sub_10007B960()
{

  return swift_once();
}

uint64_t sub_10007B98C()
{
}

void sub_10007B9D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_10007BA4C(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  sub_10007E3E8();
  v6 = a3();
  sub_100034300();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10007BAE0(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a2 < 1)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000183C4(&qword_1002ADDD0);
    v4 = swift_allocObject();
    v5 = j__malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

void *sub_10007BB78(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1001F7B48();
    if (v4)
    {
      v5 = v4;
      v2 = sub_10001A0B8(v4, 0);
      sub_100018488(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

void *sub_10007BC0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_10001A0B8(*(a1 + 16), 0);
  sub_10007E3E8();
  sub_10006E014();
  v4 = v3;
  sub_100034300();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

void sub_10007BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10007E430();
  a19 = v20;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v21;
  v31 = v26 - v28;
  if (v26 < v28)
  {
    v31 += *(v21 + 16);
  }

  if (!v31)
  {
    goto LABEL_6;
  }

  v32 = v22(v31, 0);
  v33 = v25(&a9, v32 + 32, v31, v30, v29, v27);

  if (v33 != v31)
  {
    __break(1u);
LABEL_6:
  }

  sub_10007E3FC();
}

void ByteBuffer.writeBuffer(_:)()
{
  sub_10007E294();
  v2 = v1;
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 10);
  v7 = *(v1 + 22);
  v8 = *(v0 + 12);
  sub_100061FC4();
  swift_beginAccess();
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = *(v3 + 24) + (v7 | (v6 << 8)) + v4;
  ByteBuffer._setBytes(_:at:)(v9, v9 + v5 - v4, v8);
  sub_10007E1BC();
  if (v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 12) = v11;
  if (!__CFADD__(v4, v10))
  {
    *(v2 + 2) = v4 + v10;
    sub_10002E36C();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t ByteBuffer.init()()
{
  if (qword_1002AC430 != -1)
  {
    sub_100061FE8();
  }
}

void ByteBuffer.writeBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  ByteBuffer.setBytes<A>(_:at:)(a1, *(v2 + 12), a2);
  sub_10007E1BC();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v3;
  }
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.getBytes(at:length:)(Swift::Int at, Swift::Int length)
{
  sub_10007E430();
  v5 = v2 - v4;
  if (__OFSUB__(v2, v4))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = 0;
  if (v5 < 0 || v3 < 0)
  {
    goto LABEL_9;
  }

  if (HIDWORD(v4) < v4)
  {
    goto LABEL_11;
  }

  if ((HIDWORD(v4) - v4) - v3 >= v5)
  {
    if (!__OFADD__(v5, v3))
    {
      if (v5 + v3 >= v5)
      {
        sub_100061FC4();
        swift_beginAccess();
        v6 = sub_10007E1C8();
        sub_10007BAE0(v6, v7);
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  sub_10007E3FC();
LABEL_14:
  result.is_nil = v3;
  result.value._rawValue = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  v4 = sub_10007E18C();
  result = ByteBuffer.getBytes(at:length:)(v4, v5);
  if (result.value._rawValue)
  {
    if (__CFADD__(v3, v1))
    {
      __break(1u);
    }

    else
    {
      *(v2 + 8) = v3 + v1;
    }
  }

  return result;
}

void ByteBuffer.writeStaticString(_:)(uint64_t a1, uint64_t a2, char a3)
{
  ByteBuffer.setStaticString(_:at:)(a1, a2, a3, *(v3 + 12));
  sub_10007E1BC();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 12) = v4;
  }
}

uint64_t ByteBuffer.setStaticString(_:at:)(uint64_t result, uint64_t a2, char a3, Swift::UInt32 a4)
{
  if (a3)
  {
    __break(1u);
  }

  else if (result)
  {
    ByteBuffer._setBytes(_:at:)(result, a2 + result, a4);
    return result;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ByteBuffer.writeString(_:)(Swift::String a1)
{
  sub_10007E458();
  v2 = *(v1 + 12);
  sub_10007C1E8(v3, v4, v1, *(v1 + 12));
  if (v5)
  {
    v6._countAndFlagsBits = sub_10007B9A4();
    ByteBuffer._setStringSlowpath(_:at:)(v6, v2);
  }

  sub_10007E1BC();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v8;
    sub_10007E444();
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.setString(_:at:)(Swift::String _, Swift::Int at)
{
  sub_10007E458();
  sub_10007E2E4(v2, v3, v4);
  if (v5)
  {
    sub_10007B9BC();
    sub_10007E444();

    return ByteBuffer._setStringSlowpath(_:at:)(*&v6, v8);
  }

  else
  {
    sub_10007E444();
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer._setStringSlowpath(_:at:)(Swift::String _, Swift::Int at)
{
  sub_10007E458();
  sub_10007E2E4(v4, v5, v6);
  if (v7)
  {
    v8 = sub_10007B9BC();
    sub_10007C104(v8, v9, v3, v2);
    if ((v10 & 0x100000000) != 0)
    {
      v11 = sub_10007B9BC();
      sub_10005FC34(v11, v12, v2);
    }
  }

  sub_10007E444();
  return result;
}

void sub_10007C104(uint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8[0] = a1;
      v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      ByteBuffer._setBytes(_:at:)(v8, v8 + (HIBYTE(a2) & 0xF), a4);
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v7 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = sub_1001F7858();
      }

      sub_1000606E0(v6, v7, a4, &v9);
    }
  }
}

void sub_10007C1E8(uint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9[0] = a1;
      v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      ByteBuffer._setBytes(_:at:)(v9, v9 + (HIBYTE(a2) & 0xF), a4);
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v7 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = sub_1001F7858();
      }

      if (v6)
      {
        v8 = v7 + v6;
      }

      else
      {
        v8 = 0;
      }

      ByteBuffer._setBytes(_:at:)(v6, v8, a4);
    }
  }
}

Swift::String_optional __swiftcall ByteBuffer.getString(at:length:)(Swift::Int at, Swift::Int length)
{
  sub_10007E430();
  v5 = v2 - v4;
  if (__OFSUB__(v2, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = 0;
  if (v5 < 0 || v3 < 0)
  {
    goto LABEL_11;
  }

  if (HIDWORD(v4) < v4)
  {
    goto LABEL_13;
  }

  if ((HIDWORD(v4) - v4) - v3 < v5)
  {
    goto LABEL_11;
  }

  if (__OFADD__(v5, v3))
  {
    goto LABEL_14;
  }

  if (v5 + v3 < v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_100061FC4();
  swift_beginAccess();
  sub_10007E1C8();
  sub_1001F6C08();
LABEL_11:
  sub_10007E3FC();
LABEL_16:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readString(length:)(Swift::Int length)
{
  sub_10007E430();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 12);
    v6 = v4 >= v5;
    v7 = v4 - v5;
    if (!v6)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v8 = v2;
    if (v7 >= v2)
    {
      sub_100061FC4();
      swift_beginAccess();
      v2 = sub_1001F6C08();
      if (__CFADD__(v5, v8))
      {
        goto LABEL_9;
      }

      *(v1 + 8) = v5 + v8;
    }
  }

  sub_10007E3FC();
LABEL_10:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

void ByteBuffer.writeSubstring(_:)()
{
  sub_10007E458();
  v1 = *(v0 + 12);
  v2 = sub_1001F6BE8();
  v4 = v3;
  sub_10007C1E8(v2, v3, v0, v1);
  if (v6)
  {
    v7._countAndFlagsBits = v2;
    v7._object = v4;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v1);
  }

  v8 = v5;

  v9 = *(v0 + 12);
  v10 = __CFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 12) = v11;
    sub_10007E444();
  }
}

void ByteBuffer.setSubstring(_:at:)()
{
  sub_10007E458();
  v2 = v1;
  v3 = sub_1001F6BE8();
  sub_10007C1E8(v3, v4, v0, v2);
  if (v5)
  {
    v6._countAndFlagsBits = sub_10007B9BC();
    ByteBuffer._setStringSlowpath(_:at:)(v6, v2);
  }

  sub_10007E444();
}

void ByteBuffer.writeDispatchData(_:)()
{
  ByteBuffer.setDispatchData(_:at:)();
  sub_10007E1BC();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 12) = v1;
  }
}

void ByteBuffer.setDispatchData(_:at:)()
{
  sub_10007E294();
  v2 = v1;
  v3 = sub_1001F6788();
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_13;
  }

  ByteBuffer.reserveCapacity(_:)(v2 + v3);
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  v7 = *(v0 + 22);
  sub_100061FC4();
  swift_beginAccess();
  v8 = v7 | (v6 << 8);
  v9 = v5 - v8;
  if (v5 < v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < v2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(v4, v2);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (v9 < v2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 > v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v10)
  {
    sub_1001F6798();
    sub_10002E36C();
    return;
  }

LABEL_18:
  __break(1u);
}

void ByteBuffer.getDispatchData(at:length:)()
{
  sub_10007E430();
  v4 = v3 - v1;
  if (__OFSUB__(v3, v1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v2;
  if ((v4 & 0x8000000000000000) == 0 && (v0 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v1) >= v1)
    {
      if ((HIDWORD(v1) - v1) - v0 < v4)
      {
        goto LABEL_6;
      }

      if (!__OFADD__(v4, v0))
      {
        if (v4 + v0 >= v4)
        {
          sub_100061FC4();
          swift_beginAccess();
          sub_1001F6778();
          v11 = sub_1001F67A8();
          sub_100018460(v5, 0, 1, v11);
          sub_10007E3FC();
          return;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_6:
  sub_1001F67A8();
  sub_10007E3FC();

  sub_100018460(v6, v7, v8, v9);
}

uint64_t ByteBuffer.readDispatchData(length:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F67A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000183C4(&qword_1002B10A0);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v22 - v16;
  v18 = *(v2 + 8);
  ByteBuffer.getDispatchData(at:length:)();
  sub_10007DFD4(v17, v14);
  v19 = 1;
  if (sub_10001C990(v14, 1, v5) == 1)
  {
    goto LABEL_4;
  }

  v20 = *(v6 + 32);
  result = v20(v9, v14, v5);
  if (!__CFADD__(v18, a1))
  {
    *(v2 + 8) = v18 + a1;
    v20(a2, v9, v5);
    v19 = 0;
LABEL_4:
    sub_100018460(a2, v19, 1, v5);
    return sub_10007E044(v17);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.readWithUnsafeReadableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 10);
  v8 = *(v1 + 22);
  sub_100061FC4();
  result = swift_beginAccess();
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(v4 + 24) + (v8 | (v7 << 8)) + v5;
  result = a1(v10, v10 + v6 - v5);
  if (v2)
  {
    return result;
  }

  if (__CFADD__(v5, result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v1 + 2) = v5 + result;
  return result;
}

void ByteBuffer.readWithUnsafeReadableBytes<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getTupleTypeMetadata2();
  sub_10007E2C8();
  __chkstk_darwin(v10, v11);
  v13 = &v18[-v12];
  v14 = *(v4 + 8);
  v19 = a3;
  v20 = a1;
  v21 = a2;
  ByteBuffer.withUnsafeReadableBytes<A>(_:)();
  if (!v5)
  {
    v15 = *v13;
    sub_10007E3D4();
    (*(v16 + 32))(a4, &v13[v17], a3);
    if (__CFADD__(v14, v15))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 8) = v14 + v15;
    }
  }
}

uint64_t ByteBuffer.readWithUnsafeMutableReadableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1;
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v5 = *(v1 + 2);
  v6 = *v1;
  v7 = *(v1 + 10);
  v8 = *(v3 + 22);
  sub_100061FC4();
  result = swift_beginAccess();
  v10 = *(v3 + 3);
  v11 = v10 >= v5;
  v12 = v10 - v5;
  if (!v11)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = *(v6 + 24) + (v8 | (v7 << 8)) + v5;
  result = a1(v13, v13 + v12);
  if (!v2)
  {
    if (__CFADD__(v5, result))
    {
      goto LABEL_7;
    }

    *(v3 + 2) = v5 + result;
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeMutableReadableBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getTupleTypeMetadata2();
  sub_10007E2C8();
  __chkstk_darwin(v10, v11);
  v13 = &v21[-v12];
  v22 = a3;
  v23 = a1;
  v24 = a2;
  result = ByteBuffer.withUnsafeMutableReadableBytes<A>(_:)();
  if (!v5)
  {
    v15 = *v13;
    sub_10007E3D4();
    result = (*(v16 + 32))(a4, &v13[v17], a3);
    v18 = *(v4 + 8);
    v19 = __CFADD__(v18, v15);
    v20 = v18 + v15;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 8) = v20;
    }
  }

  return result;
}

uint64_t sub_10007CCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a3(a4 + *(TupleTypeMetadata2 + 48), a1, a2);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_10007CD54()
{
  sub_10007E430();
  v3 = v2;
  sub_10007E3C0();
  sub_100061FC4();
  swift_beginAccess();
  if (v1 < v0)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_10007E244();
    ByteBuffer._setBytes(_:at:)(v4, v5, v3);
    sub_10007E3FC();
  }
}

void ByteBuffer.writeBytes(_:)(uint64_t a1, uint64_t a2)
{
  ByteBuffer._setBytes(_:at:)(a1, a2, *(v2 + 12));
  sub_10007E1BC();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v3;
  }
}

Swift::Int __swiftcall ByteBuffer.writeRepeatingByte(_:count:)(Swift::UInt8 _, Swift::Int count)
{
  result = ByteBuffer.setRepeatingByte(_:count:at:)(_, count, *(v2 + 12));
  v5 = *(v2 + 12);
  v6 = __CFADD__(v5, count);
  v7 = v5 + count;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v7;
    return count;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.setRepeatingByte(_:count:at:)(Swift::UInt8 _, Swift::Int count, Swift::Int at)
{
  sub_10007E294();
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  ByteBuffer.reserveCapacity(_:)(v6 + v5);
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v10 = *v3;
  v11 = *(v3 + 10);
  v12 = *(v3 + 22);
  sub_100061FC4();
  result = swift_beginAccess();
  if (v8 < v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 - v7 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v8 != v7)
  {
    memset((*(v10 + 24) + (v12 | (v11 << 8)) + v7), v9, v8 - v7);
  }

  sub_10002E36C();
  return result;
}

_BYTE *sub_10007CEC8(_BYTE *__c, _BYTE *__b, _BYTE *a3)
{
  if (!__b)
  {
    return __b;
  }

  if (a3 - __b >= 0)
  {
    if (a3 != __b)
    {
      memset(__b, __c, a3 - __b);
    }

    return __b;
  }

  __break(1u);
  return __c;
}

uint64_t ByteBuffer.slice()(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2) >= a2;
  v5 = (HIDWORD(a2) - a2);
  if (v4)
  {
    result = ByteBuffer.getSlice(at:length:)(a2, v5, result, a2, a3 & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.readSlice(length:)()
{
  v3 = sub_10007E18C();
  result = ByteBuffer.getSlice(at:length:)(v3, v4, v5, v6, v7);
  if (result)
  {
    if (__CFADD__(v2, v0))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 8) = v2 + v0;
    }
  }

  return result;
}

void ByteBuffer.writeImmutableBuffer(_:)()
{
  sub_10007E430();
  sub_10007E3C0();
  v3 = *(v0 + 12);
  sub_100061FC4();
  swift_beginAccess();
  if (v2 < v1)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_10007E244();
    ByteBuffer._setBytes(_:at:)(v4, v5, v3);
    sub_10007E1BC();
    if (!v7)
    {
      *(v0 + 12) = v6;
      sub_10007E3FC();
      return;
    }
  }

  __break(1u);
}

uint64_t ByteBuffer.init(string:)()
{
  ByteBufferAllocator.buffer(string:)();
  sub_10007E410();
  return v0;
}

uint64_t ByteBuffer.init(substring:)()
{
  ByteBufferAllocator.buffer(substring:)();
  sub_10007E410();
  return v0;
}

uint64_t ByteBufferAllocator.buffer(substring:)()
{
  v0 = sub_1001F7528();
  if (v0 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v0)
  {
    if (qword_1002AC430 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  type metadata accessor for ByteBuffer._Storage();
  sub_10007E2D4();
  v5 = sub_10007E3A8(v1, v2, v3, v4);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(v5 + 16);
  while (1)
  {
    v27 = v5;
    v28 = v6;
    v29 = v7;
    v30 = v10;
    v31 = v8;
    v32 = v9;
    sub_10007B9BC();
    v11 = sub_1001F6BE8();
    sub_10007C1E8(v11, v12, &v27, v7);
    if (v14)
    {
      v15._countAndFlagsBits = sub_10007B9A4();
      v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v7);
    }

    v16 = v13;

    if (!__CFADD__(v29, v16))
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    sub_100061FE8();
LABEL_5:
    v6 = qword_1002E6088;
    v7 = HIDWORD(qword_1002E6088);
    v10 = dword_1002E6090;
    v8 = word_1002E6094;
    v9 = byte_1002E6096;
  }

  return sub_10007E0FC(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
}

uint64_t ByteBuffer.init<A>(bytes:)(uint64_t a1, uint64_t a2)
{
  sub_10007E120();
  v6 = ByteBufferAllocator.buffer<A>(bytes:)(v4, v5, j_j__realloc, j_j__free, sub_10005EC68, a2);
  sub_10007E2C8();
  (*(v7 + 8))(a1, a2);
  return v6;
}

uint64_t ByteBufferAllocator.buffer<A>(bytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1001F6DD8();
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!v9)
  {
    if (qword_1002AC430 == -1)
    {
LABEL_5:
      *&v10 = qword_1002E6088;
      v25 = v10;

      goto LABEL_6;
    }

LABEL_8:
    sub_100061FE8();
    goto LABEL_5;
  }

  type metadata accessor for ByteBuffer._Storage();
  sub_10007E2D4();
  v15 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v11, v12, v13, v14, a5);
LABEL_6:
  v27 = v15;
  ByteBuffer.writeBytes<A>(_:)(a1, a6);
  return sub_10007E2AC(v16, v17, v18, v19, v20, v21, v22, v23, v25, *(&v25 + 1), v26, v27);
}

void ByteBuffer.init<A>(integer:endianness:as:)()
{
  sub_10007E458();
  v1 = v0;
  v3 = v2;
  sub_10007E178();
  ByteBufferAllocator.buffer<A>(integer:endianness:as:)();
  sub_10007E2C8();
  (*(v4 + 8))(v3, v1);
  sub_10007E444();
}

void ByteBuffer.init(dispatchData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  sub_10007E294();
  v13 = v12;
  v14 = sub_1001F6788();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  if (!v14)
  {
    if (qword_1002AC430 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  type metadata accessor for ByteBuffer._Storage();
  sub_10007E120();
  sub_10007E134();
  static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v15, v16, v17, v18, v19);
  sub_10007E30C();
  while (1)
  {
    sub_10007E264();
    if (!__CFADD__(a12, v20))
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    sub_100061FE8();
LABEL_5:
    sub_10007E384();
  }

  sub_1001F67A8();
  sub_10007E2C8();
  (*(v21 + 8))(v13);
  sub_10002E36C();
}

void Optional<A>.setOrWriteImmutableBuffer(_:)()
{
  sub_10007E294();
  v4 = BYTE6(v3);
  v5 = v2;
  v6 = v1;
  v7 = HIDWORD(v2);
  v8 = HIDWORD(v3);
  if (*v0)
  {
    v9 = *(v0 + 12);
    sub_100061FC4();
    swift_beginAccess();
    if (v7 < v5)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v6 + 24) + (v4 | (v8 << 8)) + v5;
      ByteBuffer._setBytes(_:at:)(v10, v10 + v7 - v5, v9);
      sub_10007E1BC();
      if (!v12)
      {
        *(v0 + 12) = v11;
LABEL_7:
        sub_10002E36C();
        return;
      }
    }

    __break(1u);
  }

  else if (HIDWORD(v2) >= v2)
  {
    *v0 = v1;
    *(v0 + 8) = v2;
    *(v0 + 16) = v3;
    *(v0 + 22) = BYTE6(v3);
    *(v0 + 20) = WORD2(v3);

    goto LABEL_7;
  }

  __break(1u);
}

void Optional<A>.setOrWriteBuffer(_:)(uint64_t a1)
{
  if (*v1)
  {

    ByteBuffer.writeBuffer(_:)();
  }

  else
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 12);
    if (v2 < v3)
    {
      __break(1u);
    }

    else
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      v6 = *(a1 + 22);
      *v1 = *a1;
      *(v1 + 8) = v3 | (v2 << 32);
      *(v1 + 22) = v6;
      *(v1 + 20) = v5;
      *(v1 + 16) = v4;
      *(a1 + 8) = v2;
    }
  }
}