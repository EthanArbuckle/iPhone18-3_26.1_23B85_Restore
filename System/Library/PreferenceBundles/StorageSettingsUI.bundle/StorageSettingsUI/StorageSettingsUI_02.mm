unint64_t sub_37E84(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_34BEC(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_36314(v15, a4 & 1);
      v19 = *v5;
      result = sub_34BEC(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for FPProviderDomainID(0);
        result = sub_81E38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = result;
      sub_388DC();
      result = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * result);
    *v22 = a1;
    v22[1] = a2;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  *(v21[6] + 8 * result) = a3;
  v23 = (v21[7] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v25;

  return a3;
}

uint64_t sub_37FE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_34B30(a2, a3);
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
      sub_38C0C();
      goto LABEL_7;
    }

    sub_3698C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_34B30(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_81E38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_80A38();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_38210(v12, a2, a3, a1, v18);
}

uint64_t sub_38164(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Application();
  result = sub_3C81C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Application);
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

uint64_t sub_38210(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_80A38();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

unint64_t sub_382C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 216 * result;
  v7 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v7;
  v8 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v8;
  v9 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v9;
  v10 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v10;
  *(v6 + 208) = *(a4 + 208);
  v11 = *(a4 + 192);
  *(v6 + 176) = *(a4 + 176);
  *(v6 + 192) = v11;
  *(v6 + 160) = *(a4 + 160);
  v12 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v12;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void *sub_3834C()
{
  v1 = v0;
  v2 = type metadata accessor for Application();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_147EC(&qword_B82B0, &qword_89140);
  v5 = *v0;
  v6 = sub_81D98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_3B948(*(v5 + 56) + v27, v31, type metadata accessor for Application);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_3C81C(v26, *(v28 + 56) + v27, type metadata accessor for Application);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_385A4()
{
  v1 = v0;
  sub_147EC(&qword_B82F0, &qword_891C8);
  v2 = *v0;
  v3 = sub_81D98();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 144;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17 + 64);
        v41 = *(v19 + v17 + 48);
        v42 = v25;
        v26 = *(v19 + v17 + 128);
        v28 = *(v19 + v17 + 80);
        v27 = *(v19 + v17 + 96);
        v45 = *(v19 + v17 + 112);
        v46 = v26;
        v43 = v28;
        v44 = v27;
        v38 = *(v19 + v17);
        v39 = v24;
        v40 = v23;
        v29 = (*(v4 + 48) + v18);
        *v29 = v22;
        v29[1] = v21;
        v30 = (*(v4 + 56) + v17);
        *v30 = v38;
        v31 = v39;
        v32 = v40;
        v33 = v42;
        v30[3] = v41;
        v30[4] = v33;
        v30[1] = v31;
        v30[2] = v32;
        v34 = v43;
        v35 = v44;
        v36 = v46;
        v30[7] = v45;
        v30[8] = v36;
        v30[5] = v34;
        v30[6] = v35;

        result = sub_3BE20(&v38, &v37);
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

void *sub_38778()
{
  v1 = v0;
  sub_147EC(&qword_B83C8, &qword_89450);
  v2 = *v0;
  v3 = sub_81D98();
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

id sub_388DC()
{
  v1 = v0;
  sub_147EC(&qword_B83D0, &qword_89458);
  v2 = *v0;
  v3 = sub_81D98();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        result = v18;
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

void *sub_38A3C()
{
  v1 = v0;
  sub_147EC(&qword_B82D0, &qword_891B8);
  v2 = *v0;
  v3 = sub_81D98();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_3BC1C(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
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

char *sub_38C0C()
{
  v1 = v0;
  v36 = sub_80A38();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_147EC(&unk_B8310, &qword_89230);
  v4 = *v0;
  v5 = sub_81D98();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_38E8C()
{
  v1 = v0;
  sub_147EC(&qword_B8340, &unk_89360);
  v2 = *v0;
  v3 = sub_81D98();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_3C168(&v45, v44))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 216;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 80);
      v49 = *(v21 + 64);
      v50 = v24;
      v48 = v23;
      v25 = *(v21 + 144);
      v27 = *(v21 + 96);
      v26 = *(v21 + 112);
      v53 = *(v21 + 128);
      v54 = v25;
      v51 = v27;
      v52 = v26;
      v29 = *(v21 + 176);
      v28 = *(v21 + 192);
      v30 = *(v21 + 160);
      v58 = *(v21 + 208);
      v56 = v29;
      v57 = v28;
      v55 = v30;
      v31 = *(v21 + 16);
      v45 = *v21;
      v46 = v31;
      v47 = v22;
      v32 = (*(v4 + 48) + v17);
      *v32 = v20;
      v32[1] = v19;
      v33 = *(v4 + 56) + v16;
      v34 = v46;
      *v33 = v45;
      *(v33 + 16) = v34;
      v35 = v47;
      v36 = v48;
      v37 = v50;
      *(v33 + 64) = v49;
      *(v33 + 80) = v37;
      *(v33 + 32) = v35;
      *(v33 + 48) = v36;
      v38 = v51;
      v39 = v52;
      v40 = v54;
      *(v33 + 128) = v53;
      *(v33 + 144) = v40;
      *(v33 + 96) = v38;
      *(v33 + 112) = v39;
      v41 = v55;
      v42 = v56;
      v43 = v57;
      *(v33 + 208) = v58;
      *(v33 + 176) = v42;
      *(v33 + 192) = v43;
      *(v33 + 160) = v41;
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

void *sub_390A0()
{
  v1 = v0;
  sub_147EC(&qword_B8290, &qword_88FB8);
  v2 = *v0;
  v3 = sub_81D98();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t (*sub_39218(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_39E60(v8);
  v8[9] = sub_393D4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_392C4;
}

void (*sub_392C8(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_39E94(v8);
  v8[9] = sub_3991C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_3CD34;
}

void sub_39374(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_393D4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for Application();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_147EC(&qword_B7E50, &qword_8A3F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_34B30(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_3C81C(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for Application);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_396B0;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_3834C();
      goto LABEL_16;
    }

    sub_358F0(v24, a4 & 1);
    v28 = *v5;
    v29 = sub_34B30(a2, a3);
    if ((v25 & 1) == (v30 & 1))
    {
      v21 = v29;
      v10[11] = v29;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_81E38();
  __break(1u);
  return result;
}

void sub_396B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_14F6C(v5, v6, &qword_B7E50, &qword_8A3F0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_3C81C(v9, *(v2 + 6), type metadata accessor for Application);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_3C81C(v13, v14, type metadata accessor for Application);
        sub_38164(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_14F6C(v5, v17, &qword_B7E50, &qword_8A3F0);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_3C81C(v9, *(v2 + 7), type metadata accessor for Application);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_3C81C(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for Application);
      goto LABEL_10;
    }
  }

  sub_14FD4(v9, &qword_B7E50, &qword_8A3F0);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_3BD1C(*(v20 + 48) + 16 * v19);
    sub_37654(v19, v20, type metadata accessor for Application);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_14FD4(v23, &qword_B7E50, &qword_8A3F0);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_3991C(void *a1, uint64_t a2, uint64_t a3, char a4))(char **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x608uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[191] = v4;
  v10[190] = a3;
  v10[189] = a2;
  v12 = *v4;
  v13 = sub_34B30(a2, a3);
  *(v11 + 209) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_38E8C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_36D0C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_34B30(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_81E38();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[192] = v13;
  if (v19)
  {
    memmove(v11 + 81, (*(*v5 + 56) + 216 * v13), 0xD1uLL);
    nullsub_1(v11 + 81);
    v24 = *(v11 + 103);
    *(v11 + 37) = *(v11 + 101);
    *(v11 + 38) = v24;
    *(v11 + 39) = *(v11 + 105);
    *(v11 + 640) = *(v11 + 856);
    v25 = *(v11 + 95);
    *(v11 + 33) = *(v11 + 93);
    *(v11 + 34) = v25;
    v26 = *(v11 + 99);
    *(v11 + 35) = *(v11 + 97);
    *(v11 + 36) = v26;
    v27 = *(v11 + 87);
    *(v11 + 29) = *(v11 + 85);
    *(v11 + 30) = v27;
    v28 = *(v11 + 91);
    *(v11 + 31) = *(v11 + 89);
    *(v11 + 32) = v28;
    v29 = *(v11 + 83);
    *(v11 + 27) = *(v11 + 81);
    *(v11 + 28) = v29;
  }

  else
  {
    sub_1A6B0((v11 + 54));
  }

  return sub_39AD4;
}

void sub_39AD4(char **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 36);
  *(v3 + 64) = *(*a1 + 37);
  v5 = *(v3 + 37);
  *(v3 + 65) = *(v3 + 38);
  v6 = *(v3 + 38);
  *(v3 + 66) = *(v3 + 39);
  v8 = *(v3 + 33);
  v7 = *(v3 + 34);
  v9 = *(v3 + 32);
  *(v3 + 60) = v8;
  *(v3 + 61) = v7;
  v10 = *(v3 + 34);
  v12 = *(v3 + 35);
  v11 = *(v3 + 36);
  *(v3 + 62) = v12;
  *(v3 + 63) = v11;
  v14 = *(v3 + 29);
  v13 = *(v3 + 30);
  v15 = *(v3 + 28);
  *(v3 + 56) = v14;
  *(v3 + 57) = v13;
  v16 = *(v3 + 30);
  v18 = *(v3 + 31);
  v17 = *(v3 + 32);
  *(v3 + 58) = v18;
  *(v3 + 59) = v17;
  v19 = *(v3 + 28);
  v20 = *(v3 + 27);
  *(v3 + 54) = v20;
  *(v3 + 55) = v19;
  *(v3 + 808) = v5;
  *(v3 + 824) = v6;
  *(v3 + 840) = *(v3 + 39);
  *(v3 + 744) = v8;
  *(v3 + 760) = v10;
  *(v3 + 776) = v12;
  *(v3 + 792) = v4;
  *(v3 + 680) = v14;
  *(v3 + 696) = v16;
  *(v3 + 712) = v18;
  *(v3 + 728) = v9;
  v21 = v3 + 864;
  v3[1072] = v3[640];
  v3[856] = v3[640];
  *(v3 + 648) = v20;
  *(v3 + 664) = v15;
  v22 = sub_3C268((v3 + 648));
  v23 = v3[209];
  if ((a2 & 1) == 0)
  {
    if (v22 != 1)
    {
      v29 = *(v3 + 192);
      v30 = *(v3 + 191);
      if (v3[209])
      {
        v26 = (*(*v30 + 56) + 216 * v29);
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_6:
    if (v3[209])
    {
      v27 = *(v3 + 192);
      v28 = **(v3 + 191);
      sub_3BD1C(*(v28 + 48) + 16 * v27);
      sub_37848(v27, v28);
    }

    goto LABEL_16;
  }

  if (v22 == 1)
  {
    goto LABEL_6;
  }

  v24 = *(v3 + 192);
  v25 = *(v3 + 191);
  if ((v3[209] & 1) == 0)
  {
    v31 = *(v3 + 190);
    v32 = *(v3 + 189);
    v33 = *v25;
    v34 = *(v3 + 65);
    *(v3 + 10) = *(v3 + 64);
    *(v3 + 11) = v34;
    *(v3 + 12) = *(v3 + 66);
    v3[208] = v3[1072];
    v35 = *(v3 + 61);
    *(v3 + 6) = *(v3 + 60);
    *(v3 + 7) = v35;
    v36 = *(v3 + 63);
    *(v3 + 8) = *(v3 + 62);
    *(v3 + 9) = v36;
    v37 = *(v3 + 57);
    *(v3 + 2) = *(v3 + 56);
    *(v3 + 3) = v37;
    v38 = *(v3 + 59);
    *(v3 + 4) = *(v3 + 58);
    *(v3 + 5) = v38;
    v39 = *(v3 + 55);
    *v3 = *v21;
    *(v3 + 1) = v39;
    v33[(v24 >> 6) + 8] |= 1 << v24;
    v40 = (v33[6] + 16 * v24);
    *v40 = v32;
    v40[1] = v31;
    v30 = 216;
    v41 = v33[7] + 216 * v24;
    v42 = *(v3 + 1);
    *v41 = *v3;
    *(v41 + 16) = v42;
    v43 = *(v3 + 2);
    v44 = *(v3 + 3);
    v45 = *(v3 + 5);
    *(v41 + 64) = *(v3 + 4);
    *(v41 + 80) = v45;
    *(v41 + 32) = v43;
    *(v41 + 48) = v44;
    v46 = *(v3 + 6);
    v47 = *(v3 + 7);
    v48 = *(v3 + 9);
    *(v41 + 128) = *(v3 + 8);
    *(v41 + 144) = v48;
    *(v41 + 96) = v46;
    *(v41 + 112) = v47;
    v49 = *(v3 + 10);
    v50 = *(v3 + 11);
    v51 = *(v3 + 12);
    v29 = v3[208];
    *(v41 + 208) = v29;
    *(v41 + 176) = v50;
    *(v41 + 192) = v51;
    *(v41 + 160) = v49;
    v52 = v33[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (!v53)
    {
LABEL_15:
      v76 = *(v3 + 190);
      v33[2] = v54;

      goto LABEL_16;
    }

    __break(1u);
LABEL_14:
    v55 = *(v3 + 190);
    v56 = *(v3 + 189);
    v33 = *v30;
    v57 = *(v3 + 65);
    *(v3 + 376) = *(v3 + 64);
    *(v3 + 392) = v57;
    *(v3 + 408) = *(v3 + 66);
    v3[424] = v3[1072];
    v58 = *(v3 + 61);
    *(v3 + 312) = *(v3 + 60);
    *(v3 + 328) = v58;
    v59 = *(v3 + 63);
    *(v3 + 344) = *(v3 + 62);
    *(v3 + 360) = v59;
    v60 = *(v3 + 57);
    *(v3 + 248) = *(v3 + 56);
    *(v3 + 264) = v60;
    v61 = *(v3 + 59);
    *(v3 + 280) = *(v3 + 58);
    *(v3 + 296) = v61;
    v62 = *(v3 + 55);
    *(v3 + 216) = *v21;
    *(v3 + 232) = v62;
    v33[(v29 >> 6) + 8] |= 1 << v29;
    v63 = (v33[6] + 16 * v29);
    *v63 = v56;
    v63[1] = v55;
    v64 = v33[7] + 216 * v29;
    v65 = *(v3 + 232);
    *v64 = *(v3 + 216);
    *(v64 + 16) = v65;
    v66 = *(v3 + 248);
    v67 = *(v3 + 264);
    v68 = *(v3 + 296);
    *(v64 + 64) = *(v3 + 280);
    *(v64 + 80) = v68;
    *(v64 + 32) = v66;
    *(v64 + 48) = v67;
    v69 = *(v3 + 312);
    v70 = *(v3 + 328);
    v71 = *(v3 + 360);
    *(v64 + 128) = *(v3 + 344);
    *(v64 + 144) = v71;
    *(v64 + 96) = v69;
    *(v64 + 112) = v70;
    v72 = *(v3 + 376);
    v73 = *(v3 + 392);
    v74 = *(v3 + 408);
    *(v64 + 208) = v3[424];
    *(v64 + 176) = v73;
    *(v64 + 192) = v74;
    *(v64 + 160) = v72;
    v75 = v33[2];
    v53 = __OFADD__(v75, 1);
    v54 = v75 + 1;
    if (v53)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v26 = (*(*v25 + 56) + 216 * v24);
LABEL_10:
  memmove(v26, v3 + 864, 0xD1uLL);
LABEL_16:
  v77 = *(v3 + 38);
  *(v3 + 1240) = *(v3 + 37);
  *(v3 + 1256) = v77;
  *(v3 + 1272) = *(v3 + 39);
  v3[1288] = v3[640];
  v78 = *(v3 + 34);
  *(v3 + 1176) = *(v3 + 33);
  *(v3 + 1192) = v78;
  v79 = *(v3 + 36);
  *(v3 + 1208) = *(v3 + 35);
  *(v3 + 1224) = v79;
  v80 = *(v3 + 30);
  *(v3 + 1112) = *(v3 + 29);
  *(v3 + 1128) = v80;
  v81 = *(v3 + 32);
  *(v3 + 1144) = *(v3 + 31);
  *(v3 + 1160) = v81;
  v82 = *(v3 + 28);
  *(v3 + 1080) = *(v3 + 27);
  *(v3 + 1096) = v82;
  sub_14F6C((v3 + 864), (v3 + 1296), &qword_B8350, &qword_8A5D0);
  sub_14FD4((v3 + 1080), &qword_B8350, &qword_8A5D0);

  free(v3);
}

uint64_t (*sub_39E60(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_39E88;
}

uint64_t (*sub_39E94(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_3CCF0;
}

void *sub_39EBC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_3A014(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 88 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v25[0] = *v18;
      v25[1] = v19;
      v21 = v18[3];
      v20 = v18[4];
      LOBYTE(v17) = *(v18 + 80);
      v25[2] = v18[2];
      v26 = v17;
      v25[3] = v21;
      v25[4] = v20;
      memmove(v11, v18, 0x51uLL);
      if (v14 == v10)
      {
        sub_3BC1C(v25, v24);
        goto LABEL_24;
      }

      v11 += 88;
      sub_3BC1C(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_3A1AC(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v31 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 216 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v33[4] = v18[4];
      v33[5] = v20;
      v33[2] = v22;
      v33[3] = v21;
      v23 = v18[9];
      v25 = v18[6];
      v24 = v18[7];
      v33[8] = v18[8];
      v33[9] = v23;
      v33[6] = v25;
      v33[7] = v24;
      v27 = v18[11];
      v26 = v18[12];
      v28 = v18[10];
      v34 = *(v18 + 208);
      v33[11] = v27;
      v33[12] = v26;
      v33[10] = v28;
      memmove(v11, v18, 0xD1uLL);
      if (v14 == v10)
      {
        sub_3C168(v33, v32);
        goto LABEL_23;
      }

      v11 += 216;
      sub_3C168(v33, v32);
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
      v30 = v12 + 1;
    }

    else
    {
      v30 = v13;
    }

    v12 = v30 - 1;
    v10 = result;
LABEL_23:
    v7 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_3A36C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_81C78();
      sub_1A7F4(0, &qword_B8348, off_A91F8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1A7F4(0, &qword_B8348, off_A91F8);
    if (sub_81C48() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_81C58();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_81B78(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_81B88();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_3A590(void *a1, uint64_t a2)
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - v6;
  v20[3] = type metadata accessor for StorageShared();
  v20[4] = &off_AB6C0;
  v20[0] = a1;
  sub_3C978(v20, aBlock);
  swift_beginAccess();
  v8 = a1;
  sub_3C9DC(aBlock, a2 + 160, &qword_B8398, &qword_89420);
  swift_endAccess();
  v9 = [objc_opt_self() defaultCenter];
  v10 = MSPStorageTipsManagerTipDidChangeNotification;
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_3CA7C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_33800;
  aBlock[3] = &unk_ABA18;
  v12 = _Block_copy(aBlock);

  v13 = [v9 addObserverForName:v10 object:0 queue:0 usingBlock:v12];
  _Block_release(v12);

  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_819D8();
  if (*(&dword_10 + (*(a2 + 136) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a2 + 136) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v18 = *(&dword_10 + (*(a2 + 136) & 0xFFFFFFFFFFFFFF8));
    sub_81A08();
  }

  sub_81A28();
  swift_endAccess();
  v14 = sub_81AB8();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = sub_3CA84();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = v15;
  v16[4] = a2;
  swift_retain_n();
  sub_68AE4(0, 0, v7, &unk_89428, v16);

  swift_unknownObjectRelease();
  return sub_20FD0(v20);
}

unint64_t sub_3A894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B83D8, qword_89460);
    v3 = sub_81DB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_14F6C(v4, v13, &unk_B83E0, &qword_88A38);
      result = sub_34BA8(v13);
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
      result = sub_3C158(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3A9D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B8290, &qword_88FB8);
    v3 = sub_81DB8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_34B30(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3AAE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_147EC(&qword_B82F0, &qword_891C8);
  v3 = sub_81DB8();

  v4 = *(a1 + 144);
  v39 = *(a1 + 128);
  v40 = v4;
  v5 = *(a1 + 176);
  v41 = *(a1 + 160);
  v42 = v5;
  v6 = *(a1 + 80);
  v35 = *(a1 + 64);
  v36 = v6;
  v7 = *(a1 + 112);
  v37 = *(a1 + 96);
  v38 = v7;
  v8 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v8;
  v10 = *(&v33 + 1);
  v9 = v33;
  sub_14F6C(&v33, v32, &qword_B82F8, &qword_891D0);
  result = sub_34B30(v9, v10);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 192);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = (v3[7] + 144 * result);
    *v15 = v34;
    v16 = v35;
    v17 = v36;
    v18 = v38;
    v15[3] = v37;
    v15[4] = v18;
    v15[1] = v16;
    v15[2] = v17;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    v15[7] = v41;
    v15[8] = v21;
    v15[5] = v19;
    v15[6] = v20;
    v22 = v3[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      break;
    }

    v3[2] = v24;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v25 = v13 + 10;
    v26 = v13[7];
    v39 = v13[6];
    v40 = v26;
    v27 = v13[9];
    v41 = v13[8];
    v42 = v27;
    v28 = v13[3];
    v35 = v13[2];
    v36 = v28;
    v29 = v13[5];
    v37 = v13[4];
    v38 = v29;
    v30 = v13[1];
    v33 = *v13;
    v34 = v30;
    v10 = *(&v33 + 1);
    v9 = v33;
    sub_14F6C(&v33, v32, &qword_B82F8, &qword_891D0);
    result = sub_34B30(v9, v10);
    v13 = v25;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_3ACBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B83D0, &qword_89458);
    v3 = sub_81DB8();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      result = sub_34BEC(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3ADB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B83C8, &qword_89450);
    v3 = sub_81DB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_34BEC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3AEAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_147EC(&qword_B8340, &unk_89360);
  v3 = sub_81DB8();

  v4 = *(a1 + 240);
  v53 = *(a1 + 224);
  v54 = v4;
  v55 = *(a1 + 256);
  v5 = *(a1 + 176);
  v49 = *(a1 + 160);
  v50 = v5;
  v6 = *(a1 + 208);
  v51 = *(a1 + 192);
  v52 = v6;
  v7 = *(a1 + 112);
  v45 = *(a1 + 96);
  v46 = v7;
  v8 = *(a1 + 144);
  v47 = *(a1 + 128);
  v48 = v8;
  v9 = *(a1 + 48);
  v41 = *(a1 + 32);
  v42 = v9;
  v10 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = v10;
  v12 = *(&v41 + 1);
  v11 = v41;
  sub_14F6C(&v41, v40, &qword_B83A8, &qword_89430);
  result = sub_34B30(v11, v12);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v15 = (a1 + 264);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = (v3[6] + 16 * result);
    *v16 = v11;
    v16[1] = v12;
    v17 = v3[7] + 216 * result;
    v18 = v43;
    *v17 = v42;
    *(v17 + 16) = v18;
    v19 = v44;
    v20 = v45;
    v21 = v47;
    *(v17 + 64) = v46;
    *(v17 + 80) = v21;
    *(v17 + 32) = v19;
    *(v17 + 48) = v20;
    v22 = v48;
    v23 = v49;
    v24 = v51;
    *(v17 + 128) = v50;
    *(v17 + 144) = v24;
    *(v17 + 96) = v22;
    *(v17 + 112) = v23;
    v25 = v52;
    v26 = v53;
    v27 = v54;
    *(v17 + 208) = v55;
    *(v17 + 176) = v26;
    *(v17 + 192) = v27;
    *(v17 + 160) = v25;
    v28 = v3[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      break;
    }

    v3[2] = v30;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v31 = (v15 + 232);
    v32 = v15[13];
    v53 = v15[12];
    v54 = v32;
    v55 = *(v15 + 224);
    v33 = v15[9];
    v49 = v15[8];
    v50 = v33;
    v34 = v15[11];
    v51 = v15[10];
    v52 = v34;
    v35 = v15[5];
    v45 = v15[4];
    v46 = v35;
    v36 = v15[7];
    v47 = v15[6];
    v48 = v36;
    v37 = v15[1];
    v41 = *v15;
    v42 = v37;
    v38 = v15[3];
    v43 = v15[2];
    v44 = v38;
    v12 = *(&v41 + 1);
    v11 = v41;
    sub_14F6C(&v41, v40, &qword_B83A8, &qword_89430);
    result = sub_34B30(v11, v12);
    v15 = v31;
    if (v39)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_3B0CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B83B8, &qword_89440);
    v3 = sub_81DB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_34B30(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3B1C8(uint64_t a1)
{
  v2 = sub_147EC(&qword_B83B0, &qword_89438);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_147EC(&unk_B8310, &qword_89230);
    v8 = sub_81DB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_14F6C(v10, v6, &qword_B83B0, &qword_89438);
      v12 = *v6;
      v13 = v6[1];
      result = sub_34B30(*v6, v13);
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
      v19 = sub_80A38();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3B3B4(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8300, &qword_891D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_147EC(&qword_B82B0, &qword_89140);
    v8 = sub_81DB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_14F6C(v10, v6, &qword_B8300, &qword_891D8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_34B30(*v6, v13);
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
      v19 = type metadata accessor for Application();
      result = sub_3C81C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Application);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3B59C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B8328, &qword_892F8);
    v3 = sub_81DB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_14F6C(v4, &v13, &qword_B8330, &qword_89300);
      v5 = v13;
      v6 = v14;
      result = sub_34B30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3C158(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3B6CC()
{
  v1 = (sub_817E8() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 40);

  v7 = sub_809D8();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3B7D0(uint64_t a1)
{
  v4 = *(sub_817E8() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22EB0;

  return sub_301DC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_3B8D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_3B938(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3B948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3BAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Application();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BB04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16268;

  return sub_27478(a1, v4, v5, v6);
}

uint64_t *sub_3BBB8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_3BD70(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_3BE84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3BEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3BEE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_2EDD8(a1, v4, v5, v6);
}

uint64_t sub_3BF98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3BFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22EB0;

  return sub_29650(a1, v4, v5, v7, v6);
}

unint64_t sub_3C0A0()
{
  result = qword_B8320;
  if (!qword_B8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8320);
  }

  return result;
}

uint64_t sub_3C0F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

_OWORD *sub_3C158(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3C268(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_3C280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_33240(a1, v4, v5, v6);
}

uint64_t sub_3C334()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3C37C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22EB0;

  return sub_323A4(a1, v4, v5, v7, v6);
}

uint64_t sub_3C43C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3C484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22EB0;

  return sub_320F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_3C54C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_31F10(a1, v4, v5, v6);
}

uint64_t sub_3C600(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_31DA8(a1, v4, v5, v6);
}

uint64_t sub_3C6B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_31C44(a1, v4, v5, v6);
}

uint64_t sub_3C768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_317AC(a1, v4, v5, v6);
}

uint64_t sub_3C81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3C884()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3C8C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_28904(a1, v4, v5, v6);
}

uint64_t sub_3C978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3C9DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_147EC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_3CA44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_3CA84()
{
  result = qword_B83A0;
  if (!qword_B83A0)
  {
    type metadata accessor for RecommendationController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B83A0);
  }

  return result;
}

uint64_t sub_3CADC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3CB1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_51A54(a1, v4, v5, v6);
}

uint64_t sub_3CBD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Application();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3CE10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Application();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SyncedContent()
{
  result = qword_B8448;
  if (!qword_B8448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3CF00()
{
  type metadata accessor for MPMediaType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Application();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_3CFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SyncedContent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a1;
  v13[1] = a2;
  v14 = *(v11 + 28);
  sub_3D2DC(a3, v13 + v14, type metadata accessor for Application);
  if (a1 <= 3)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_8;
    }
  }

  else if (a1 == 4 || a1 == 512 || a1 == 2048)
  {
LABEL_8:
    v15 = sub_818E8();
    v16 = sub_818E8();
    v17 = STLocalizedString(v15);

    v18 = sub_81928();
    v20 = v19;

    sub_3D344(a3, type metadata accessor for Application);
    v13[2] = v18;
    v13[3] = v20;
    sub_3D2DC(v13, a4, type metadata accessor for SyncedContent);
    (*(v9 + 56))(a4, 0, 1, v8);
    return sub_3D344(v13, type metadata accessor for SyncedContent);
  }

  sub_3D344(a3, type metadata accessor for Application);
  sub_3D344(v13 + v14, type metadata accessor for Application);
  return (*(v9 + 56))(a4, 1, 1, v8);
}

uint64_t sub_3D2DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3D344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_3D3AC()
{
  sub_3D70C(319, &qword_B8518, &type metadata accessor for AppendSettingsNavigationPathAction);
  if (v0 <= 0x3F)
  {
    sub_3D70C(319, &qword_B8520, &type metadata accessor for SettingsAppPrimaryNavigationMode);
    if (v1 <= 0x3F)
    {
      sub_3D760();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_3D49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_147EC(&qword_B8488, &qword_894D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_147EC(qword_B8490, qword_894D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_3D5D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_147EC(&qword_B8488, &qword_894D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_147EC(qword_B8490, qword_894D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_3D70C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_80CF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_3D760()
{
  result = qword_B8528;
  if (!qword_B8528)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_B8528);
  }

  return result;
}

uint64_t sub_3D7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_81098();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_810A8();
}

uint64_t sub_3D8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_81098();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_810A8();
}

uint64_t sub_3D9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v65 = sub_81578();
  v70 = v65;
  v71 = sub_14E2C(&qword_B8530, &qword_89578);
  WitnessTable = swift_getWitnessTable();
  v63 = v71;
  v72 = WitnessTable;
  v73 = sub_3EBA4();
  v61 = v73;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  v7 = *(v56 + 64);
  v8 = __chkstk_darwin(OpaqueTypeMetadata2);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v51 - v10;
  v11 = sub_14E2C(&qword_B8540, &qword_89580);
  v12 = sub_3EC08();
  v70 = v5;
  v71 = v11;
  v72 = v4;
  v73 = v12;
  v13 = sub_80DC8();
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v52 = &v51 - v18;
  v19 = sub_80B18();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v51 - v25;
  v58 = OpaqueTypeMetadata2;
  v27 = sub_810B8();
  v59 = *(v27 - 8);
  v60 = v27;
  v28 = *(v59 + 64);
  __chkstk_darwin(v27);
  v66 = &v51 - v29;
  v57 = a1;
  v30 = v2 + *(a1 + 36);
  sub_6BB00(v26);
  (*(v20 + 104))(v24, enum case for SettingsAppPrimaryNavigationMode.classic(_:), v19);
  sub_3ECC4(&qword_B8558, &type metadata accessor for SettingsAppPrimaryNavigationMode);
  sub_819C8();
  sub_819C8();
  v31 = *(v20 + 8);
  v31(v24, v19);
  v31(v26, v19);
  if (v70 == v69)
  {
    sub_3E0A4(v57);
    v32 = swift_getWitnessTable();
    v33 = v52;
    sub_68AE0(v17, v13, v32);
    v34 = *(v53 + 8);
    v34(v17, v13);
    sub_68AE0(v33, v13, v32);
    v35 = v65;
    v37 = WitnessTable;
    v36 = v63;
    v70 = v65;
    v71 = v63;
    v38 = v61;
    v72 = WitnessTable;
    v73 = v61;
    swift_getOpaqueTypeConformance2();
    sub_3D7F4(v17, v13);
    v34(v17, v13);
    v34(v33, v13);
  }

  else
  {
    v39 = v55;
    sub_3E14C(v57, v55);
    v37 = WitnessTable;
    v36 = v63;
    v70 = v65;
    v71 = v63;
    v38 = v61;
    v72 = WitnessTable;
    v73 = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = v54;
    v42 = v58;
    sub_68AE0(v39, v58, OpaqueTypeConformance2);
    v43 = *(v56 + 8);
    v43(v39, v42);
    sub_68AE0(v41, v42, OpaqueTypeConformance2);
    swift_getWitnessTable();
    sub_3D8EC(v39, v13, v42);
    v44 = v39;
    v35 = v65;
    v43(v44, v42);
    v43(v41, v42);
  }

  v45 = swift_getWitnessTable();
  v70 = v35;
  v71 = v36;
  v72 = v37;
  v73 = v38;
  v46 = swift_getOpaqueTypeConformance2();
  v67 = v45;
  v68 = v46;
  v47 = v60;
  v48 = swift_getWitnessTable();
  v49 = v66;
  sub_68AE0(v66, v47, v48);
  return (*(v59 + 8))(v49, v47);
}

uint64_t sub_3E0A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v6 = *(a1 + 16);
  v7 = v1;
  v4[2] = v6;
  v4[3] = v1;
  v2 = sub_147EC(&qword_B8540, &qword_89580);
  sub_3EC08();
  return sub_3E810(sub_3ED0C, v5, sub_3ED18, v4, v6, v2);
}

uint64_t sub_3E14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_147EC(&qword_B8530, &qword_89578);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v24 = &v22 - v8;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = sub_81578();
  v23 = *(v13 - 8);
  v14 = *(v23 + 64);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v12;
  (*(v9 + 32))(v18 + v17, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v28 = v11;
  v29 = v12;
  v30 = v2;
  sub_81528();
  v19 = v24;
  sub_810C8();
  swift_getWitnessTable();
  sub_3EBA4();
  v20 = v25;
  sub_812F8();
  (*(v26 + 8))(v19, v20);
  return (*(v23 + 8))(v16, v13);
}

uint64_t sub_3E440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v28 = a1;
  v29 = a3;
  v3 = sub_80AE8();
  v27[0] = *(v3 - 8);
  v4 = *(v27[0] + 64);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_147EC(&qword_B8560, &qword_89588);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  v11 = sub_147EC(&qword_B8568, &unk_89590);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v27 - v13;
  v15 = sub_80B08();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v27 - v21;
  v23 = v28 + *(type metadata accessor for ProtectedNavigationLink() + 44);
  v24 = *(v23 + 8);
  (*v23)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_3ED38(v14);
    swift_storeEnumTagMultiPayload();
    sub_3ECC4(&qword_B8550, &type metadata accessor for PreferencesControllerView);
    return sub_810A8();
  }

  else
  {
    (*(v16 + 32))(v22, v14, v15);
    (*(v16 + 16))(v20, v22, v15);
    sub_80AD8();
    v26 = v27[0];
    (*(v27[0] + 16))(v10, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_3ECC4(&qword_B8550, &type metadata accessor for PreferencesControllerView);
    sub_810A8();
    (*(v26 + 8))(v6, v3);
    return (*(v16 + 8))(v22, v15);
  }
}

uint64_t sub_3E810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = __chkstk_darwin(a1);
  v7();
  return sub_80DB8();
}

uint64_t sub_3E8E0(uint64_t a1)
{
  v2 = sub_80B38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_147EC(&qword_B8568, &unk_89590);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for ProtectedNavigationLink();
  v12 = a1 + *(v11 + 44);
  v13 = *(v12 + 8);
  (*v12)();
  LODWORD(v11) = *(a1 + *(v11 + 40));
  sub_6BB28(v6);
  sub_613EC(v10, v11, v6);
  (*(v3 + 8))(v6, v2);
  return sub_3ED38(v10);
}

uint64_t sub_3EA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = a1 + *(type metadata accessor for ProtectedNavigationLink() + 48);
  v14 = *(v13 + 8);
  (*v13)();
  sub_68AE0(v10, a2, a3);
  v15 = *(v6 + 8);
  v15(v10, a2);
  sub_68AE0(v12, a2, a3);
  return (v15)(v12, a2);
}

unint64_t sub_3EBA4()
{
  result = qword_B8538;
  if (!qword_B8538)
  {
    sub_14E2C(&qword_B8530, &qword_89578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8538);
  }

  return result;
}

unint64_t sub_3EC08()
{
  result = qword_B8548;
  if (!qword_B8548)
  {
    sub_14E2C(&qword_B8540, &qword_89580);
    sub_3ECC4(&qword_B8550, &type metadata accessor for PreferencesControllerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8548);
  }

  return result;
}

uint64_t sub_3ECC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3ED38(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8568, &unk_89590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3EDA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ProtectedNavigationLink();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = (v0 + v5);
  sub_147EC(&qword_B8570, &qword_8A370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_80B38();
    (*(*(v8 - 8) + 8))(v0 + v5, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = v3[9];
  sub_147EC(&qword_B8680, &unk_895A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_80B18();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
  }

  else
  {
    v12 = *&v7[v10];
  }

  v13 = *&v7[v3[11] + 8];

  v14 = *&v7[v3[12] + 8];

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_3EF50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ProtectedNavigationLink() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_3E8E0(v4);
}

uint64_t sub_3F004(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_14E2C(&qword_B8540, &qword_89580);
  sub_3EC08();
  sub_80DC8();
  sub_81578();
  sub_14E2C(&qword_B8530, &qword_89578);
  swift_getWitnessTable();
  sub_3EBA4();
  swift_getOpaqueTypeMetadata2();
  sub_810B8();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_3F19C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v65 = sub_817E8();
  v3 = *(*(v65 - 8) + 64);
  v4 = __chkstk_darwin(v65);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v61 - v6;
  v8 = sub_147EC(&qword_B78C8, &unk_89660);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v67 = &v61 - v13;
  v14 = __chkstk_darwin(v12);
  v66 = &v61 - v15;
  __chkstk_darwin(v14);
  v17 = &v61 - v16;
  if (a1)
  {
    v18 = *&a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_deviceName + 8];
    v70 = *&a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_deviceName];
    v71 = v18;
    v64 = sub_14ED0();
    v19 = a1;

    v20 = sub_81288();
    v22 = v21;
    v70 = v20;
    v71 = v21;
    v24 = v23 & 1;
    v72 = v23 & 1;
    v73 = v25;
    sub_81398();
    sub_15034(v20, v22, v24);

    v26 = sub_818E8();
    v27 = sub_818E8();
    v28 = STLocalizedString(v26);

    v61 = sub_81928();
    sub_147EC(&qword_B7CB0, &qword_88A40);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_886E0;
    swift_getKeyPath();
    v62 = v17;
    swift_getKeyPath();
    sub_80C68();

    v30 = v65;
    v31 = *&v7[*(v65 + 32)];
    sub_3F7A0(v7);
    v32 = sub_81E68();
    v34 = v33;
    *(v29 + 56) = &type metadata for String;
    v35 = sub_1A83C();
    *(v29 + 64) = v35;
    *(v29 + 32) = v32;
    *(v29 + 40) = v34;
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v63;
    sub_80C68();

    v37 = *(v36 + *(v30 + 28));
    sub_3F7A0(v36);
    v38 = sub_81E68();
    *(v29 + 96) = &type metadata for String;
    *(v29 + 104) = v35;
    *(v29 + 72) = v38;
    *(v29 + 80) = v39;
    v40 = sub_818F8();
    v42 = v41;

    v70 = v40;
    v71 = v42;
    v43 = sub_81288();
    v45 = v44;
    LOBYTE(v29) = v46;
    LODWORD(v70) = sub_81138();
    v47 = sub_81238();
    v49 = v48;
    LOBYTE(v35) = v50;
    v52 = v51;
    sub_15034(v43, v45, v29 & 1);

    v70 = v47;
    v71 = v49;
    v72 = v35 & 1;
    v73 = v52;
    v53 = v66;
    sub_81398();
    sub_15034(v47, v49, v35 & 1);

    v54 = v62;
    v55 = v67;
    sub_3F7FC(v62, v67);
    v56 = v68;
    sub_3F7FC(v53, v68);
    v57 = v69;
    sub_3F7FC(v55, v69);
    v58 = sub_147EC(&qword_B8580, &qword_896B8);
    v59 = v57 + *(v58 + 48);
    *v59 = 0;
    *(v59 + 8) = 1;
    sub_3F7FC(v56, v57 + *(v58 + 64));
    sub_3F86C(v53);
    sub_3F86C(v54);
    sub_3F86C(v56);
    return sub_3F86C(v55);
  }

  else
  {
    type metadata accessor for StorageShared();
    sub_1635C();
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_3F734@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  *a1 = sub_81008();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_147EC(&qword_B8578, &qword_89658);
  return sub_3F19C(v4, a1 + *(v5 + 44));
}

uint64_t sub_3F7A0(uint64_t a1)
{
  v2 = sub_817E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3F7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B78C8, &unk_89660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F86C(uint64_t a1)
{
  v2 = sub_147EC(&qword_B78C8, &unk_89660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3F8D8()
{
  result = qword_B8588;
  if (!qword_B8588)
  {
    sub_14E2C(&qword_B8590, &unk_896C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8588);
  }

  return result;
}

void sub_3F93C()
{
  v1 = sub_80D18();
  v109 = *(v1 - 8);
  v110 = v1;
  v2 = *(v109 + 64);
  __chkstk_darwin(v1);
  v108 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_80FC8();
  v106 = *(v4 - 8);
  v107 = v4;
  v5 = *(v106 + 64);
  __chkstk_darwin(v4);
  v102 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_147EC(&qword_B85C0, &qword_89718);
  v100 = *(v103 - 8);
  v7 = *(v100 + 64);
  __chkstk_darwin(v103);
  v9 = &v97 - v8;
  v105 = sub_147EC(&qword_B85C8, &qword_89720);
  v104 = *(v105 - 8);
  v10 = *(v104 + 64);
  __chkstk_darwin(v105);
  v101 = &v97 - v11;
  v12 = sub_147EC(&qword_B85D0, &qword_89728);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v99 = &v97 - v14;
  v15 = type metadata accessor for HiddenAppsListWrapper();
  v120.receiver = v0;
  v120.super_class = v15;
  objc_msgSendSuper2(&v120, "viewDidLoad");
  v16 = sub_818E8();
  v17 = sub_818E8();
  v18 = STLocalizedString(v16);

  v19 = v18;
  if (!v18)
  {
    sub_81928();
    v19 = sub_818E8();
  }

  v111 = v19;
  v98 = v0;
  v20 = sub_81928();
  v22 = v21;
  type metadata accessor for StorageShared();
  sub_1635C();
  v23 = sub_80E68();
  v25 = v24;
  LOBYTE(v112) = 0;
  sub_814C8();
  v26 = v114;
  v27 = v115;
  if (qword_B7858 != -1)
  {
    swift_once();
  }

  v28 = qword_BCF88;
  v29 = sub_80C38();
  v114 = v23;
  v115 = v25;
  LOBYTE(v116) = v26;
  v117 = v27;
  v118 = v29;
  v119 = v28;
  v112 = v20;
  v113 = v22;
  v97 = v22;
  v30 = v28;
  v31 = sub_147EC(&qword_B85D8, &qword_89730);
  v32 = sub_405EC();
  v33 = sub_14ED0();
  sub_81358();

  v35 = v106;
  v34 = v107;
  v36 = v102;
  (*(v106 + 104))(v102, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v107);
  v114 = v31;
  v115 = &type metadata for String;
  v116 = v32;
  v117 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v101;
  v39 = v103;
  sub_813A8();
  (*(v35 + 8))(v36, v34);
  (*(v100 + 8))(v9, v39);
  v40 = v108;
  sub_80D08();
  v114 = v39;
  v115 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v105;
  sub_81318();
  (*(v109 + 8))(v40, v110);
  (*(v104 + 8))(v38, v41);
  v42 = objc_allocWithZone(sub_147EC(&qword_B8600, &unk_89740));
  v43 = sub_81088();
  v44 = [v43 view];
  if (!v44)
  {

    __break(1u);
    goto LABEL_21;
  }

  v45 = v44;
  v46 = v98;
  v47 = [v98 view];
  if (!v47)
  {
LABEL_21:

    __break(1u);
    goto LABEL_22;
  }

  v48 = v47;
  [v47 bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  [v45 setFrame:{v50, v52, v54, v56}];
  v57 = [v43 view];
  if (!v57)
  {
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v58 = v57;
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v46 addChildViewController:v43];
  v59 = [v46 view];
  if (!v59)
  {
LABEL_23:

    __break(1u);
    goto LABEL_24;
  }

  v60 = v59;
  v61 = [v43 view];
  if (!v61)
  {
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v62 = v61;
  [v60 addSubview:v61];

  [v43 didMoveToParentViewController:v46];
  v63 = [v46 navigationItem];
  v64 = v111;
  [v63 setTitle:v111];

  v65 = [v46 navigationItem];
  [v65 setLargeTitleDisplayMode:2];

  v66 = [v46 view];
  if (!v66)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v67 = v66;
  sub_147EC(&qword_B8C70, &qword_89E70);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_896D0;
  v69 = [v46 view];
  if (!v69)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v70 = v69;
  v71 = [v69 topAnchor];

  v72 = [v43 view];
  if (!v72)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v73 = v72;
  v74 = [v72 topAnchor];

  v75 = [v71 constraintEqualToAnchor:v74];
  *(v68 + 32) = v75;
  v76 = [v46 view];
  if (!v76)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v77 = v76;
  v78 = [v76 leadingAnchor];

  v79 = [v43 view];
  if (!v79)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v80 = v79;
  v81 = [v79 leadingAnchor];

  v82 = [v78 constraintEqualToAnchor:v81];
  *(v68 + 40) = v82;
  v83 = [v46 view];
  if (!v83)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v84 = v83;
  v85 = [v83 bottomAnchor];

  v86 = [v43 view];
  if (!v86)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v87 = v86;
  v88 = [v86 bottomAnchor];

  v89 = [v85 constraintEqualToAnchor:v88];
  *(v68 + 48) = v89;
  v90 = [v46 view];
  if (!v90)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v91 = v90;
  v92 = [v90 trailingAnchor];

  v93 = [v43 view];
  if (v93)
  {

    v94 = [v93 trailingAnchor];

    v95 = [v92 constraintEqualToAnchor:v94];
    *(v68 + 56) = v95;
    sub_40730();
    isa = sub_819E8().super.isa;

    [v67 addConstraints:isa];

    return;
  }

LABEL_33:
  __break(1u);
}

id sub_40594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HiddenAppsListWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_405EC()
{
  result = qword_B85E0;
  if (!qword_B85E0)
  {
    sub_14E2C(&qword_B85D8, &qword_89730);
    sub_40678();
    sub_406CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B85E0);
  }

  return result;
}

unint64_t sub_40678()
{
  result = qword_B85E8;
  if (!qword_B85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B85E8);
  }

  return result;
}

unint64_t sub_406CC()
{
  result = qword_B85F0;
  if (!qword_B85F0)
  {
    sub_14E2C(&qword_B85F8, &qword_89738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B85F0);
  }

  return result;
}

unint64_t sub_40730()
{
  result = qword_B8608;
  if (!qword_B8608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_B8608);
  }

  return result;
}

__n128 sub_4077C(uint64_t a1, __int128 *a2)
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
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_407C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_40810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_408B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_147EC(&qword_B8610, &qword_89918);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v62 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v56[-v7];
  v59 = sub_147EC(&qword_B8618, &qword_89920);
  v9 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v11 = &v56[-v10];
  v58 = sub_147EC(&qword_B8620, &qword_89928);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v14 = &v56[-v13];
  v15 = sub_147EC(&qword_B8628, &qword_89930);
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = &v56[-v17];
  v19 = sub_147EC(&qword_B8630, &qword_89938);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v60 = &v56[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v24 = &v56[-v23];
  v25 = *(a1 + 176);
  v26 = *(a1 + 184);
  if (*(a1 + 168))
  {
    v57 = *(a1 + 224);
    v63[31] = &OBJC_PROTOCOL___PSController;
    if (swift_dynamicCastTypeToObjCProtocolConditional())
    {
      v27 = swift_allocObject();
      v28 = *(a1 + 208);
      *(v27 + 208) = *(a1 + 192);
      *(v27 + 224) = v28;
      *(v27 + 240) = *(a1 + 224);
      *(v27 + 256) = *(a1 + 240);
      v29 = *(a1 + 144);
      *(v27 + 144) = *(a1 + 128);
      *(v27 + 160) = v29;
      v30 = *(a1 + 176);
      *(v27 + 176) = *(a1 + 160);
      *(v27 + 192) = v30;
      v31 = *(a1 + 80);
      *(v27 + 80) = *(a1 + 64);
      *(v27 + 96) = v31;
      v32 = *(a1 + 112);
      *(v27 + 112) = *(a1 + 96);
      *(v27 + 128) = v32;
      v33 = *(a1 + 16);
      *(v27 + 16) = *a1;
      *(v27 + 32) = v33;
      v34 = *(a1 + 48);
      *(v27 + 48) = *(a1 + 32);
      *(v27 + 64) = v34;
      v35 = swift_allocObject();
      v36 = *(a1 + 208);
      *(v35 + 208) = *(a1 + 192);
      *(v35 + 224) = v36;
      *(v35 + 240) = *(a1 + 224);
      *(v35 + 256) = *(a1 + 240);
      v37 = *(a1 + 144);
      *(v35 + 144) = *(a1 + 128);
      *(v35 + 160) = v37;
      v38 = *(a1 + 176);
      *(v35 + 176) = *(a1 + 160);
      *(v35 + 192) = v38;
      v39 = *(a1 + 80);
      *(v35 + 80) = *(a1 + 64);
      *(v35 + 96) = v39;
      v40 = *(a1 + 112);
      *(v35 + 112) = *(a1 + 96);
      *(v35 + 128) = v40;
      v41 = *(a1 + 16);
      *(v35 + 16) = *a1;
      *(v35 + 32) = v41;
      v42 = *(a1 + 48);
      *(v35 + 48) = *(a1 + 32);
      *(v35 + 64) = v42;
      *v18 = swift_getKeyPath();
      sub_147EC(&qword_B8570, &qword_8A370);
      swift_storeEnumTagMultiPayload();
      v43 = v15[9];
      *(v18 + v43) = swift_getKeyPath();
      sub_147EC(&qword_B8680, &unk_895A0);
      swift_storeEnumTagMultiPayload();
      *(v18 + v15[10]) = v57;
      v44 = (v18 + v15[11]);
      *v44 = sub_43204;
      v44[1] = v27;
      v45 = (v18 + v15[12]);
      *v45 = sub_43270;
      v45[1] = v35;
      sub_14F6C(v18, v14, &qword_B8628, &qword_89930);
      swift_storeEnumTagMultiPayload();
      sub_43280(a1, v63);
      sub_43280(a1, v63);
      sub_14F24(&qword_B8668, &qword_B8628, &qword_89930);
      sub_14F24(&unk_B8670, &qword_B8618, &qword_89920);
      sub_810A8();
      sub_14FD4(v18, &qword_B8628, &qword_89930);
LABEL_6:
      v46 = 0;
      goto LABEL_7;
    }
  }

  v46 = 1;
  if (v26)
  {
    *v11 = sub_81008();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v47 = sub_147EC(&qword_B8660, &qword_89960);
    sub_4127C(a1, v25, v26, &v11[*(v47 + 44)]);
    sub_14F6C(v11, v14, &qword_B8618, &qword_89920);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8668, &qword_B8628, &qword_89930);
    sub_14F24(&unk_B8670, &qword_B8618, &qword_89920);
    sub_810A8();
    sub_14FD4(v11, &qword_B8618, &qword_89920);
    goto LABEL_6;
  }

LABEL_7:
  v48 = sub_147EC(&qword_B8638, &qword_89940);
  (*(*(v48 - 8) + 56))(v24, v46, 1, v48);
  *v8 = sub_81008();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v49 = sub_147EC(&qword_B8640, &qword_89948);
  v50 = *(v49 + 44);
  __chkstk_darwin(v49);
  *&v56[-16] = a1;
  sub_147EC(&qword_B8648, &qword_89950);
  sub_4314C();
  sub_814B8();
  v51 = v60;
  sub_14F6C(v24, v60, &qword_B8630, &qword_89938);
  v52 = v62;
  sub_14F6C(v8, v62, &qword_B8610, &qword_89918);
  v53 = v61;
  sub_14F6C(v51, v61, &qword_B8630, &qword_89938);
  v54 = sub_147EC(&qword_B8658, &qword_89958);
  sub_14F6C(v52, v53 + *(v54 + 48), &qword_B8610, &qword_89918);
  sub_14FD4(v8, &qword_B8610, &qword_89918);
  sub_14FD4(v24, &qword_B8630, &qword_89938);
  sub_14FD4(v52, &qword_B8610, &qword_89918);
  return sub_14FD4(v51, &qword_B8630, &qword_89938);
}

uint64_t sub_41044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_147EC(&qword_B8688, &qword_899D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-v7];
  v25 = a1;
  v24 = a1;
  sub_432C8();
  sub_814B8();
  sub_147EC(&qword_B8698, &unk_899E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_886E0;
  v10 = sub_811A8();
  *(inited + 32) = v10;
  v11 = sub_811B8();
  *(inited + 33) = v11;
  v12 = sub_811C8();
  sub_811C8();
  if (sub_811C8() != v10)
  {
    v12 = sub_811C8();
  }

  sub_811C8();
  if (sub_811C8() != v11)
  {
    v12 = sub_811C8();
  }

  sub_80CC8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v5 + 32))(a2, v8, v4);
  result = sub_147EC(&unk_B86A0, &unk_8B770);
  v22 = a2 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_4127C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v112 = a2;
  *(&v112 + 1) = a3;
  v134 = a4;
  v108 = sub_147EC(&qword_B86B0, &qword_88500);
  v106 = *(v108 - 8);
  v5 = *(v106 + 64);
  __chkstk_darwin(v108);
  v114 = &v105 - v6;
  v7 = sub_147EC(&qword_B86B8, &qword_89A28);
  v109 = *(v7 - 8);
  v110 = v7;
  v8 = *(v109 + 64);
  __chkstk_darwin(v7);
  v107 = &v105 - v9;
  v117 = sub_147EC(&qword_B86C0, &qword_89A30);
  v10 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v111 = &v105 - v11;
  v115 = sub_147EC(&qword_B86C8, &qword_89A38);
  v12 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v116 = &v105 - v13;
  v130 = sub_147EC(&qword_B86D0, &qword_89A40);
  v14 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v118 = &v105 - v15;
  v125 = sub_147EC(&qword_B86D8, &qword_89A48);
  v16 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v113 = &v105 - v17;
  v126 = sub_147EC(&qword_B86E0, &qword_89A50);
  v18 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v128 = &v105 - v19;
  v121 = sub_147EC(&qword_B86E8, &qword_89A58);
  v20 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v122 = &v105 - v21;
  v127 = sub_147EC(&unk_B86F0, &unk_89A60);
  v22 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v124 = &v105 - v23;
  v123 = sub_147EC(&qword_B7B68, &unk_8A470);
  v120 = *(v123 - 1);
  v24 = *(v120 + 64);
  __chkstk_darwin(v123);
  v119 = &v105 - v25;
  v26 = sub_147EC(&qword_B8700, &qword_89A70);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v133 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v129 = &v105 - v30;
  v131 = sub_147EC(&qword_B8688, &qword_899D8);
  v31 = *(v131 - 1);
  v32 = *(v31 + 64);
  __chkstk_darwin(v131);
  v34 = &v105 - v33;
  v35 = sub_147EC(&unk_B86A0, &unk_8B770);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35);
  v132 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v41 = &v105 - v40;
  __chkstk_darwin(v39);
  v135 = &v105 - v42;
  v137 = a1;
  v136 = a1;
  sub_432C8();
  sub_814B8();
  sub_147EC(&qword_B8698, &unk_899E0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_886E0;
  v44 = sub_811A8();
  *(v43 + 32) = v44;
  v45 = sub_811B8();
  *(v43 + 33) = v45;
  v46 = sub_811C8();
  sub_811C8();
  if (sub_811C8() != v44)
  {
    v46 = sub_811C8();
  }

  sub_811C8();
  if (sub_811C8() != v45)
  {
    v46 = sub_811C8();
  }

  sub_80CC8();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  (*(v31 + 32))(v41, v34, v131);
  v55 = &v41[*(v35 + 36)];
  *v55 = v46;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  sub_43324(v41, v135);
  v57 = *(a1 + 16);
  v56 = *(a1 + 24);
  v58 = *(a1 + 48);
  v59 = *(a1 + 56);
  v60 = *(a1 + 144);
  v152 = *(a1 + 128);
  v153 = v60;
  v154 = *(a1 + 160);
  v61 = *(a1 + 80);
  v148 = *(a1 + 64);
  v149 = v61;
  v62 = *(a1 + 112);
  v150 = *(a1 + 96);
  v151 = v62;
  if (*(a1 + 200))
  {
    v63 = *(a1 + 192);
    if (v63)
    {
      if (v63 == 1)
      {
        *&v155 = sub_81478();
        *&v141 = 0;
        *(&v141 + 1) = 0xE000000000000000;
        sub_81D08(37);

        *&v141 = 0xD000000000000023;
        *(&v141 + 1) = 0x8000000000095790;
        v158._countAndFlagsBits = v57;
        v158._object = v56;
        sub_81978(v158);
        v64 = v113;
        sub_81398();

        v65 = (v64 + *(v125 + 36));
        v66 = *(sub_147EC(&qword_B8748, &qword_89A90) + 28);
        sub_81068();
        v67 = sub_81078();
        (*(*(v67 - 8) + 56))(v65 + v66, 0, 1, v67);
        *v65 = swift_getKeyPath();
        sub_14F6C(v64, v122, &qword_B86D8, &qword_89A48);
        swift_storeEnumTagMultiPayload();
        sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470);
        sub_433A8();
        v68 = v124;
        sub_810A8();
        sub_14F6C(v68, v128, &unk_B86F0, &unk_89A60);
        swift_storeEnumTagMultiPayload();
        sub_43680();
        sub_43738();
        v69 = v129;
        sub_810A8();
        sub_14FD4(v68, &unk_B86F0, &unk_89A60);
        v70 = v64;
      }

      else
      {
        *&v155 = sub_81478();
        *&v141 = 0;
        *(&v141 + 1) = 0xE000000000000000;
        sub_81D08(35);

        *&v141 = 0xD000000000000021;
        *(&v141 + 1) = 0x8000000000095740;
        v159._countAndFlagsBits = v57;
        v159._object = v56;
        sub_81978(v159);
        v85 = v113;
        sub_81398();

        v86 = (v85 + *(v125 + 36));
        v87 = *(sub_147EC(&qword_B8748, &qword_89A90) + 28);
        sub_81068();
        v88 = sub_81078();
        (*(*(v88 - 8) + 56))(v86 + v87, 0, 1, v88);
        *v86 = swift_getKeyPath();
        sub_14F6C(v85, v116, &qword_B86D8, &qword_89A48);
        swift_storeEnumTagMultiPayload();
        sub_433A8();
        sub_4351C();
        v89 = v118;
        sub_810A8();
        sub_14F6C(v89, v128, &qword_B86D0, &qword_89A40);
        swift_storeEnumTagMultiPayload();
        sub_43680();
        sub_43738();
        v69 = v129;
        sub_810A8();
        sub_14FD4(v89, &qword_B86D0, &qword_89A40);
        v70 = v85;
      }

      sub_14FD4(v70, &qword_B86D8, &qword_89A48);
    }

    else
    {
      v155 = v112;
      v75 = swift_allocObject();
      v76 = *(a1 + 208);
      *(v75 + 208) = *(a1 + 192);
      *(v75 + 224) = v76;
      *(v75 + 240) = *(a1 + 224);
      *(v75 + 256) = *(a1 + 240);
      v77 = *(a1 + 144);
      *(v75 + 144) = *(a1 + 128);
      *(v75 + 160) = v77;
      v78 = *(a1 + 176);
      *(v75 + 176) = *(a1 + 160);
      *(v75 + 192) = v78;
      v79 = *(a1 + 80);
      *(v75 + 80) = *(a1 + 64);
      *(v75 + 96) = v79;
      v80 = *(a1 + 112);
      *(v75 + 112) = *(a1 + 96);
      *(v75 + 128) = v80;
      v81 = *(a1 + 16);
      *(v75 + 16) = *a1;
      *(v75 + 32) = v81;
      v82 = *(a1 + 48);
      *(v75 + 48) = *(a1 + 32);
      *(v75 + 64) = v82;

      sub_43280(a1, &v141);
      v83 = sub_14ED0();
      sub_81568();
      v155 = v152;
      v156 = v153;
      v157 = v154;
      v131 = v56;
      v105 = v57;
      if (*(&v153 + 1) && (v84 = *(&v155 + 1)) != 0)
      {
        v58 = v155;
        sub_14F6C(&v155, &v141, &qword_B8708, &qword_89A78);

        v59 = v84;
      }

      else
      {
        sub_14F6C(&v155, &v141, &qword_B8708, &qword_89A78);
      }

      v139 = v58;
      v140 = v59;
      v138 = *(a1 + 232);
      sub_147EC(&unk_B8710, &qword_89A80);
      v90 = sub_814F8();
      v123 = &v105;
      v141 = v155;
      v142 = v156;
      LOBYTE(v143) = v157;
      __chkstk_darwin(v90);
      v104 = sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
      v91 = v108;
      v124 = v83;
      v92 = v107;
      v93 = v114;
      sub_81368();

      sub_14FD4(&v155, &qword_B8708, &qword_89A78);

      (*(v106 + 8))(v93, v91);
      *&v141 = 0;
      *(&v141 + 1) = 0xE000000000000000;
      sub_81D08(29);

      *&v141 = 0xD00000000000001BLL;
      *(&v141 + 1) = 0x80000000000956F0;
      v160._countAndFlagsBits = v105;
      v160._object = v131;
      sub_81978(v160);
      *&v141 = v91;
      *(&v141 + 1) = &type metadata for String;
      *&v142 = v91;
      *(&v142 + 1) = &type metadata for Text;
      v143 = &type metadata for Recommendation.Confirmation;
      v144 = v104;
      v145 = v124;
      v146 = v104;
      v147 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v94 = v110;
      v95 = v111;
      sub_81398();

      (*(v109 + 8))(v92, v94);
      sub_14F6C(v95, v116, &qword_B86C0, &qword_89A30);
      swift_storeEnumTagMultiPayload();
      sub_433A8();
      sub_4351C();
      v96 = v118;
      sub_810A8();
      sub_14F6C(v96, v128, &qword_B86D0, &qword_89A40);
      swift_storeEnumTagMultiPayload();
      sub_43680();
      sub_43738();
      v69 = v129;
      sub_810A8();
      sub_14FD4(v96, &qword_B86D0, &qword_89A40);
      sub_14FD4(v95, &qword_B86C0, &qword_89A30);
    }
  }

  else
  {
    v71 = v119;
    sub_80D28();
    v72 = v120;
    v73 = v123;
    (*(v120 + 16))(v122, v71, v123);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470);
    sub_433A8();
    v74 = v124;
    sub_810A8();
    sub_14F6C(v74, v128, &unk_B86F0, &unk_89A60);
    swift_storeEnumTagMultiPayload();
    sub_43680();
    sub_43738();
    v69 = v129;
    sub_810A8();
    sub_14FD4(v74, &unk_B86F0, &unk_89A60);
    (*(v72 + 8))(v71, v73);
  }

  v97 = v135;
  v98 = v132;
  sub_14F6C(v135, v132, &unk_B86A0, &unk_8B770);
  v99 = v133;
  sub_14F6C(v69, v133, &qword_B8700, &qword_89A70);
  v100 = v134;
  sub_14F6C(v98, v134, &unk_B86A0, &unk_8B770);
  v101 = sub_147EC(&qword_B8770, &qword_89A98);
  v102 = v100 + *(v101 + 48);
  *v102 = 0;
  *(v102 + 8) = 1;
  sub_14F6C(v99, v100 + *(v101 + 64), &qword_B8700, &qword_89A70);
  sub_14FD4(v69, &qword_B8700, &qword_89A70);
  sub_14FD4(v97, &unk_B86A0, &unk_8B770);
  sub_14FD4(v99, &qword_B8700, &qword_89A70);
  return sub_14FD4(v98, &unk_B86A0, &unk_8B770);
}

uint64_t sub_424DC(uint64_t a1)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  if (*(a1 + 152))
  {
    v17[0] = *(a1 + 232);
    v18 = 1;
    sub_147EC(&unk_B8710, &qword_89A80);
    return sub_814E8();
  }

  else
  {
    v17[0] = *(a1 + 232);
    v18 = 0;
    sub_147EC(&unk_B8710, &qword_89A80);
    sub_814E8();
    v7 = sub_81AB8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_81A88();
    sub_43280(a1, v17);
    v8 = sub_81A78();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = &protocol witness table for MainActor;
    v10 = *(a1 + 208);
    *(v9 + 224) = *(a1 + 192);
    *(v9 + 240) = v10;
    *(v9 + 256) = *(a1 + 224);
    *(v9 + 272) = *(a1 + 240);
    v11 = *(a1 + 144);
    *(v9 + 160) = *(a1 + 128);
    *(v9 + 176) = v11;
    v12 = *(a1 + 176);
    *(v9 + 192) = *(a1 + 160);
    *(v9 + 208) = v12;
    v13 = *(a1 + 80);
    *(v9 + 96) = *(a1 + 64);
    *(v9 + 112) = v13;
    v14 = *(a1 + 112);
    *(v9 + 128) = *(a1 + 96);
    *(v9 + 144) = v14;
    v15 = *(a1 + 16);
    *(v9 + 32) = *a1;
    *(v9 + 48) = v15;
    v16 = *(a1 + 48);
    *(v9 + 64) = *(a1 + 32);
    *(v9 + 80) = v16;
    sub_68AE4(0, 0, v5, &unk_89AE8, v9);
  }
}

uint64_t sub_426C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_147EC(&qword_B8780, &qword_8B7E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24[-1] - v10;
  LODWORD(v10) = *(a1 + 32);
  v24[31] = a2;
  v24[32] = a3;
  if (v10 == 1)
  {

    sub_80C98();
    v12 = sub_80CB8();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_80CB8();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = swift_allocObject();
  v15 = *(a4 + 208);
  *(v14 + 208) = *(a4 + 192);
  *(v14 + 224) = v15;
  *(v14 + 240) = *(a4 + 224);
  *(v14 + 256) = *(a4 + 240);
  v16 = *(a4 + 144);
  *(v14 + 144) = *(a4 + 128);
  *(v14 + 160) = v16;
  v17 = *(a4 + 176);
  *(v14 + 176) = *(a4 + 160);
  *(v14 + 192) = v17;
  v18 = *(a4 + 80);
  *(v14 + 80) = *(a4 + 64);
  *(v14 + 96) = v18;
  v19 = *(a4 + 112);
  *(v14 + 112) = *(a4 + 96);
  *(v14 + 128) = v19;
  v20 = *(a4 + 16);
  *(v14 + 16) = *a4;
  *(v14 + 32) = v20;
  v21 = *(a4 + 48);
  *(v14 + 48) = *(a4 + 32);
  *(v14 + 64) = v21;
  sub_43280(a4, v24);
  sub_14ED0();
  return sub_81548();
}

uint64_t sub_428B8(uint64_t a1)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  v17[0] = *(a1 + 232);
  v18 = 0;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814E8();
  v6 = sub_81AB8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_81A88();
  sub_43280(a1, v17);
  v7 = sub_81A78();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(a1 + 208);
  *(v8 + 224) = *(a1 + 192);
  *(v8 + 240) = v9;
  *(v8 + 256) = *(a1 + 224);
  *(v8 + 272) = *(a1 + 240);
  v10 = *(a1 + 144);
  *(v8 + 160) = *(a1 + 128);
  *(v8 + 176) = v10;
  v11 = *(a1 + 176);
  *(v8 + 192) = *(a1 + 160);
  *(v8 + 208) = v11;
  v12 = *(a1 + 80);
  *(v8 + 96) = *(a1 + 64);
  *(v8 + 112) = v12;
  v13 = *(a1 + 112);
  *(v8 + 128) = *(a1 + 96);
  *(v8 + 144) = v13;
  v14 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v14;
  v15 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v15;
  sub_68AE4(0, 0, v5, &unk_89AE0, v8);
}

uint64_t sub_42A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_14ED0();

  result = sub_81288();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_42AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *(a1 + 176);
  v32 = *(a1 + 192);
  v33 = *(a1 + 208);
  v34 = *(a1 + 224);
  v27 = *(a1 + 112);
  v28 = *(a1 + 128);
  v29 = *(a1 + 144);
  v30 = *(a1 + 160);
  v23 = *(a1 + 48);
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v26 = *(a1 + 96);
  v21 = *(a1 + 16);
  v22 = *(a1 + 32);
  sub_170A4();
  sub_14ED0();
  v3 = sub_81288();
  v5 = v4;
  v7 = v6;
  sub_811E8();
  v8 = sub_81258();
  v10 = v9;
  v12 = v11;

  sub_15034(v3, v5, v7 & 1);

  sub_81448();
  v13 = sub_81228();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_15034(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

double sub_42C34@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_81438();
  sub_81688();
  sub_80D68();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_42CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_42D48, v6, v5);
}

uint64_t sub_42D48()
{
  v1 = v0[2];
  if (*v1)
  {
    v0[6] = *(*v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationController);
    v2 = v1[2];
    v3 = v1[3];

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_42E8C;

    return sub_5237C(v2, v3);
  }

  else
  {
    v6 = v1[1];
    type metadata accessor for StorageShared();
    sub_439F4(&qword_B7A50, type metadata accessor for StorageShared);

    return sub_80E58();
  }
}

uint64_t sub_42E8C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_15E64, v5, v4);
}

uint64_t sub_42FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  sub_14ED0();

  result = sub_81288();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_4303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  v7 = *(a1 + 80);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = 2;
  sub_2092C(v3, v4, v7);
}

uint64_t sub_430D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v10[12] = *(v1 + 192);
  v10[13] = v2;
  v10[14] = *(v1 + 224);
  v11 = *(v1 + 240);
  v3 = *(v1 + 144);
  v10[8] = *(v1 + 128);
  v10[9] = v3;
  v4 = *(v1 + 176);
  v10[10] = *(v1 + 160);
  v10[11] = v4;
  v5 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v5;
  v6 = *(v1 + 112);
  v10[6] = *(v1 + 96);
  v10[7] = v6;
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v8 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v8;
  return sub_408B8(v10, a1);
}

unint64_t sub_4314C()
{
  result = qword_B8650;
  if (!qword_B8650)
  {
    sub_14E2C(&qword_B8648, &qword_89950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8650);
  }

  return result;
}

uint64_t sub_431D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 < 2u || a3 == 3;
  if (v3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_43204@<X0>(uint64_t a1@<X8>)
{
  v13 = *(v1 + 192);
  v14 = *(v1 + 208);
  v15 = *(v1 + 224);
  v16 = *(v1 + 240);
  v9 = *(v1 + 128);
  v10 = *(v1 + 144);
  v11 = *(v1 + 160);
  v12 = *(v1 + 176);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = *(v1 + 112);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  return sub_17290(a1);
}

unint64_t sub_432C8()
{
  result = qword_B8690;
  if (!qword_B8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8690);
  }

  return result;
}

uint64_t sub_43324(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&unk_B86A0, &unk_8B770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_433A8()
{
  result = qword_B8720;
  if (!qword_B8720)
  {
    sub_14E2C(&qword_B86D8, &qword_89A48);
    sub_43460();
    sub_14F24(&qword_B8740, &qword_B8748, &qword_89A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8720);
  }

  return result;
}

unint64_t sub_43460()
{
  result = qword_B8728;
  if (!qword_B8728)
  {
    sub_14E2C(&qword_B8730, &qword_89A88);
    sub_439F4(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8728);
  }

  return result;
}

unint64_t sub_4351C()
{
  result = qword_B8750;
  if (!qword_B8750)
  {
    sub_14E2C(&qword_B86C0, &qword_89A30);
    sub_14E2C(&qword_B86B0, &qword_88500);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
    sub_14ED0();
    swift_getOpaqueTypeConformance2();
    sub_439F4(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8750);
  }

  return result;
}

unint64_t sub_43680()
{
  result = qword_B8758;
  if (!qword_B8758)
  {
    sub_14E2C(&unk_B86F0, &unk_89A60);
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470);
    sub_433A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8758);
  }

  return result;
}

unint64_t sub_43738()
{
  result = qword_B8768;
  if (!qword_B8768)
  {
    sub_14E2C(&qword_B86D0, &qword_89A40);
    sub_433A8();
    sub_4351C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8768);
  }

  return result;
}

uint64_t sub_437E8(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8778, &qword_89AD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_14F6C(a1, &v6 - v4, &qword_B8778, &qword_89AD0);
  return sub_80F18();
}

uint64_t sub_43894()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  sub_431D4(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  if (*(v0 + 168))
  {
    v6 = *(v0 + 152);

    v7 = *(v0 + 168);
  }

  v8 = *(v0 + 200);

  if (*(v0 + 224))
  {
    v9 = *(v0 + 232);
  }

  v10 = *(v0 + 256);

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_43944(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22EB0;

  return sub_42CB0(a1, v4, v5, v1 + 32);
}

uint64_t sub_439F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_43A3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  sub_431D4(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  v5 = *(v0 + 128);

  v6 = *(v0 + 144);

  if (*(v0 + 184))
  {
    v7 = *(v0 + 168);

    v8 = *(v0 + 184);
  }

  v9 = *(v0 + 216);

  if (*(v0 + 240))
  {
    v10 = *(v0 + 248);
  }

  v11 = *(v0 + 272);

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_43AE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_16268;

  return sub_42CB0(a1, v4, v5, v1 + 32);
}

unint64_t sub_43B9C()
{
  result = qword_B8788;
  if (!qword_B8788)
  {
    sub_14E2C(&qword_B8790, &qword_89AF0);
    sub_14F24(&qword_B8798, &unk_B87A0, &qword_89AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8788);
  }

  return result;
}

void *sub_43C64(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_81D88())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_81D18();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_43D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_147EC(&unk_B88F8, &qword_89BA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for FileProviderAppDetailView(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = 0;
  sub_147EC(&qword_B88E8, &qword_89B98);
  sub_814C8();
  v15 = v44;
  v14 = v45;
  v13[4] = v44;
  v13[5] = v14;
  v37 = v14;
  v16 = *(v10 + 28);
  v17 = sub_81168();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_14F6C(v9, v7, &unk_B88F8, &qword_89BA0);
  v38 = v16;
  sub_814C8();
  sub_14FD4(v9, &unk_B88F8, &qword_89BA0);
  v18 = v13 + *(v10 + 32);
  LOBYTE(v43) = 0;
  sub_814C8();
  v19 = v45;
  *v18 = v44;
  *(v18 + 1) = v19;
  v20 = [objc_opt_self() sharedMonitor];
  v21 = [v20 fpDomains];

  sub_1A7F4(0, &qword_B8C78, FPProviderDomain_ptr);
  v22 = sub_819F8();

  v42 = a1;
  v23 = sub_43C64(sub_4DA8C, v41, v22);

  if (v23)
  {
    v24 = objc_opt_self();
    v25 = [v24 defaultManager];
    v26 = [v25 rootCollectionForProviderDomain:v23];

    v27 = type metadata accessor for ObservableItemCollection(0);
    v28 = objc_allocWithZone(v27);
    v43 = sub_487C8(v26);
    sub_814C8();
    v29 = v45;
    *v13 = v44;
    v13[1] = v29;
    v30 = [v24 defaultManager];
    v31 = [v30 trashCollectionForProviderDomain:v23];

    v32 = objc_allocWithZone(v27);
    v43 = sub_487C8(v31);
    v33 = v43;
    sub_814C8();

    v34 = v45;
    v13[2] = v44;
    v13[3] = v34;
    v35 = v40;
    sub_4C60C(v13, v40, type metadata accessor for FileProviderAppDetailView);
    (*(v39 + 56))(v35, 0, 1, v10);
    sub_4D5C0(a1, type metadata accessor for Application);
    return sub_4D5C0(v13, type metadata accessor for FileProviderAppDetailView);
  }

  else
  {
    sub_4D5C0(a1, type metadata accessor for Application);

    sub_14FD4(v13 + v38, &qword_B8860, &unk_89B70);

    return (*(v39 + 56))(v40, 1, 1, v10);
  }
}

uint64_t sub_44228(id *a1, void *a2)
{
  v3 = [*a1 topLevelBundleIdentifier];
  v4 = sub_81928();
  v6 = v5;

  if (v4 == *a2 && v6 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_81E18();
  }

  return v8 & 1;
}

uint64_t sub_442C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_147EC(&qword_B8EB0, &qword_8A0B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v48 = (v46 - v5);
  v6 = sub_147EC(&qword_B8EB8, &qword_8A0B8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v50 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v46 - v10;
  v47 = sub_147EC(&qword_B8EC0, &qword_8A0C0);
  v12 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v14 = v46 - v13;
  v15 = sub_147EC(&qword_B8EC8, &qword_8A0C8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v49 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v46 - v19;
  v21 = v1[1];
  v53 = *v1;
  v54 = v21;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v22 = v52;
  swift_getKeyPath();
  v53 = v22;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  v23 = *&v22[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v44 = *&v22[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
    }

    v24 = sub_81D88();
  }

  else
  {
    v24 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
  }

  v26 = 1;
  if (v24)
  {
    v46[1] = v46;
    __chkstk_darwin(v25);
    v46[-2] = v2;
    *v14 = sub_81008();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v27 = sub_147EC(&qword_B8ED0, &qword_8A0D0);
    sub_44A6C(&v14[*(v27 + 44)]);
    type metadata accessor for FileProviderDetailView(0);
    sub_14F24(&qword_B8ED8, &qword_B8EC0, &qword_8A0C0);
    sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView);
    sub_81618();
    v26 = 0;
  }

  v28 = sub_147EC(&qword_B8EE0, &qword_8A0D8);
  (*(*(v28 - 8) + 56))(v20, v26, 1, v28);
  v29 = *(v2 + 24);
  v53 = *(v2 + 16);
  v54 = v29;
  sub_814D8();
  v30 = v52;
  swift_getKeyPath();
  v53 = v30;
  sub_80A68();

  v31 = *&v30[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v31 >> 62)
  {
    if (v31 < 0)
    {
      v45 = *&v30[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
    }

    v32 = sub_81D88();
  }

  else
  {
    v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  }

  v34 = 1;
  if (v32)
  {
    __chkstk_darwin(v33);
    v46[-2] = v2;
    v35 = sub_81008();
    v36 = v48;
    *v48 = v35;
    v36[1] = 0;
    *(v36 + 16) = 1;
    v37 = sub_147EC(&qword_B8EE8, &qword_8A0E0);
    sub_44D98(v2, (v36 + *(v37 + 44)));
    type metadata accessor for FileProviderDetailView(0);
    sub_14F24(&qword_B8EF0, &qword_B8EB0, &qword_8A0B0);
    sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView);
    sub_81618();
    v34 = 0;
  }

  v38 = sub_147EC(&qword_B8EF8, &qword_8A0E8);
  (*(*(v38 - 8) + 56))(v11, v34, 1, v38);
  v39 = v49;
  sub_14F6C(v20, v49, &qword_B8EC8, &qword_8A0C8);
  v40 = v50;
  sub_4E810(v11, v50);
  v41 = v51;
  sub_14F6C(v39, v51, &qword_B8EC8, &qword_8A0C8);
  v42 = sub_147EC(&unk_B8F00, &unk_8A0F0);
  sub_4E810(v40, v41 + *(v42 + 48));
  sub_4E880(v11);
  sub_14FD4(v20, &qword_B8EC8, &qword_8A0C8);
  sub_4E880(v40);
  return sub_14FD4(v39, &qword_B8EC8, &qword_8A0C8);
}

__n128 sub_4497C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;
  v10 = a1[1];
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814F8();
  v9 = *(a1 + 2);
  sub_147EC(&qword_B8A98, &qword_89D00);
  sub_814F8();
  v4 = *(type metadata accessor for FileProviderAppDetailView(0) + 28);
  v5 = *(type metadata accessor for FileProviderDetailView(0) + 24);
  sub_147EC(&qword_B8860, &unk_89B70);
  sub_814F8();
  *a2 = *v7;
  result = *v7;
  *(a2 + 8) = *&v7[8];
  *(a2 + 24) = *v7;
  *(a2 + 40) = *&v7[16];
  return result;
}

uint64_t sub_44A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_80CE8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = sub_818E8();
  v11 = sub_818E8();
  v12 = STLocalizedString(v10);

  v13 = sub_81928();
  v15 = v14;

  sub_80CD8();
  v22 = 0;
  v21[0] = 1;
  v16 = v3[2];
  v16(v7, v9, v2);
  LOBYTE(v12) = v22;
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v12;
  v17 = v21[0];
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = v17;
  v18 = sub_147EC(&qword_B8F30, &qword_8A118);
  v16((a1 + *(v18 + 64)), v7, v2);
  sub_16C28(v13, v15, v12);
  v19 = v3[1];

  v19(v9, v2);
  v19(v7, v2);
  sub_15034(v13, v15, v22);
}

__n128 sub_44CA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814F8();
  v9 = *(a1 + 32);
  sub_147EC(&qword_B8A98, &qword_89D00);
  sub_814F8();
  v4 = *(type metadata accessor for FileProviderAppDetailView(0) + 28);
  v5 = *(type metadata accessor for FileProviderDetailView(0) + 24);
  sub_147EC(&qword_B8860, &unk_89B70);
  sub_814F8();
  *a2 = *v7;
  result = *v7;
  *(a2 + 8) = *&v7[8];
  *(a2 + 24) = *v7;
  *(a2 + 40) = *&v7[16];
  return result;
}

uint64_t sub_44D98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v57 = type metadata accessor for FileProviderAppDetailView(0);
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v57);
  v5 = sub_147EC(&qword_B86B0, &qword_88500);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = sub_147EC(&unk_B8F10, &unk_8A100);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  v11 = __chkstk_darwin(v9);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v56 - v13;
  v14 = sub_818E8();
  v15 = sub_818E8();
  v16 = STLocalizedString(v14);

  v17 = sub_81928();
  v58 = v18;
  v59 = v17;

  v19 = sub_818E8();
  v20 = sub_818E8();
  v21 = STLocalizedString(v19);

  v22 = sub_81928();
  v24 = v23;

  v68 = v22;
  v69 = v24;
  sub_4C60C(a1, &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileProviderAppDetailView);
  v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = swift_allocObject();
  sub_4D018(&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for FileProviderAppDetailView);
  v27 = sub_14ED0();
  v60 = v8;
  v56 = v27;
  sub_81568();
  v28 = sub_818E8();
  v29 = sub_818E8();
  v30 = STLocalizedString(v28);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_886D0;
  v32 = *(a1 + 24);
  v68 = *(a1 + 16);
  v69 = v32;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v33 = v72;
  swift_getKeyPath();
  v68 = v33;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  v34 = *&v33[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];

  if (v34 >> 62)
  {
    v35 = sub_81D88();
  }

  else
  {
    v35 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
  }

  *(v31 + 56) = &type metadata for Int;
  *(v31 + 64) = &protocol witness table for Int;
  *(v31 + 32) = v35;
  v36 = sub_81938();
  v38 = v37;

  v72 = v36;
  v73 = v38;
  v39 = a1 + *(v57 + 32);
  v40 = *v39;
  v41 = *(v39 + 8);
  v70 = v40;
  v71 = v41;
  sub_147EC(&unk_B8710, &qword_89A80);
  v42 = sub_814F8();
  __chkstk_darwin(v42);
  sub_147EC(&qword_B8C28, &qword_89E40);
  sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500);
  sub_14F24(&qword_B8C38, &qword_B8C28, &qword_89E40);
  v43 = v61;
  v44 = v63;
  v45 = v60;
  sub_81388();

  (*(v62 + 8))(v45, v44);
  v47 = v64;
  v46 = v65;
  v48 = *(v65 + 16);
  v49 = v66;
  v48(v64, v43, v66);
  v50 = v67;
  v51 = v58;
  v52 = v59;
  *v67 = v59;
  v50[1] = v51;
  *(v50 + 16) = 0;
  v50[3] = _swiftEmptyArrayStorage;
  v50[4] = 0;
  *(v50 + 40) = 1;
  v53 = sub_147EC(&qword_B8F28, &qword_8A110);
  v48(v50 + *(v53 + 64), v47, v49);
  sub_16C28(v52, v51, 0);
  v54 = *(v46 + 8);

  v54(v43, v49);
  v54(v47, v49);
  sub_15034(v52, v51, 0);
}

uint64_t sub_45520@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a1;
  v37 = a2;
  v3 = type metadata accessor for FileProviderAppDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v32 = v6;
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_80CB8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_147EC(&qword_B8C20, &qword_89E38);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v36 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v35 = &v32 - v16;
  v17 = __chkstk_darwin(v15);
  v34 = &v32 - v18;
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  sub_80C98();
  sub_4C60C(a1, v7, type metadata accessor for FileProviderAppDetailView);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_4D018(v7, v22 + v21, type metadata accessor for FileProviderAppDetailView);
  sub_81538();
  sub_80CA8();
  sub_4C60C(v33, v7, type metadata accessor for FileProviderAppDetailView);
  v23 = swift_allocObject();
  sub_4D018(v7, v23 + v21, type metadata accessor for FileProviderAppDetailView);
  v24 = v34;
  sub_81538();
  v25 = v11[2];
  v26 = v35;
  v25(v35, v20, v10);
  v27 = v36;
  v25(v36, v24, v10);
  v28 = v37;
  v25(v37, v26, v10);
  v29 = sub_147EC(&qword_B8C68, &qword_89E68);
  v25(&v28[*(v29 + 48)], v27, v10);
  v30 = v11[1];
  v30(v24, v10);
  v30(v20, v10);
  v30(v27, v10);
  return (v30)(v26, v10);
}

void sub_45900(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for FileProviderAppDetailView(0) + 32));
  v9 = *v2;
  v11 = *(v2 + 1);
  LOBYTE(v8) = 0;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814E8();
  v3 = [objc_opt_self() defaultManager];
  v10 = *(a1 + 16);
  v12 = *(a1 + 24);
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  swift_getKeyPath();
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  v4 = *&v8[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];

  v5 = objc_allocWithZone(FPDeleteOperation);
  sub_1A7F4(0, &qword_B88D0, FPItem_ptr);
  isa = sub_819E8().super.isa;

  v7 = [v5 initWithItems:isa];

  [v3 scheduleAction:v7];
}

uint64_t sub_45AC4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for FileProviderAppDetailView(0) + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_147EC(&unk_B8710, &qword_89A80);
  return sub_814E8();
}

void sub_45B3C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_147EC(&unk_B88F8, &qword_89BA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v21 = 0;
  sub_147EC(&qword_B88E8, &qword_89B98);
  sub_814C8();
  *(a2 + 24) = v22;
  v11 = *(type metadata accessor for FolderDetailView(0) + 28);
  v12 = sub_81168();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_14F6C(v10, v8, &unk_B88F8, &qword_89BA0);
  sub_814C8();
  sub_14FD4(v10, &unk_B88F8, &qword_89BA0);
  *a2 = a1;
  v13 = objc_opt_self();
  v14 = a1;
  v15 = [v13 defaultManager];
  v16 = [v15 collectionForFolderItem:v14];

  v17 = objc_allocWithZone(type metadata accessor for ObservableItemCollection(0));
  v21 = sub_487C8(v16);
  v18 = v21;
  sub_814C8();

  v19 = *(&v22 + 1);
  *(a2 + 8) = v22;
  *(a2 + 16) = v19;
}

uint64_t sub_45D50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_147EC(&qword_B89F8, &qword_89C88);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_147EC(&qword_B8A00, &qword_89C90);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_147EC(&qword_B8A08, &qword_89C98);
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v36 = v1;
  sub_147EC(&qword_B8A10, &qword_89CA0);
  sub_4C2EC();
  sub_81218();
  v15 = sub_81698();
  v16 = *(v1 + 16);
  v37 = *(v1 + 8);
  v38 = v16;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v17 = v41;
  swift_getKeyPath();
  v37 = v17;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  v18 = *&v17[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v31 = *&v17[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
    }

    v19 = sub_81D88();
  }

  else
  {
    v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
  }

  v20 = &v6[*(v3 + 36)];
  *v20 = v15;
  v20[8] = v19 == 0;
  v21 = sub_4C46C();
  sub_812A8();
  sub_14FD4(v6, &qword_B89F8, &qword_89C88);
  v22 = [*v2 displayName];
  v23 = sub_81928();
  v25 = v24;

  v37 = v23;
  v38 = v25;
  v41 = v3;
  v42 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_14ED0();
  sub_81358();

  v28 = (*(v32 + 8))(v10, v7);
  __chkstk_darwin(v28);
  *(&v32 - 2) = v2;
  sub_147EC(&qword_B8A78, &qword_89CF0);
  v37 = v7;
  v38 = &type metadata for String;
  v39 = OpaqueTypeConformance2;
  v40 = v27;
  swift_getOpaqueTypeConformance2();
  sub_4C558();
  v29 = v34;
  sub_813C8();
  return (*(v33 + 8))(v14, v29);
}

uint64_t sub_461C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for FileProviderDetailView(0);
  v3 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_147EC(&qword_B8A90, &qword_89CF8);
  v6 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v8 = &v27 - v7;
  v30 = sub_147EC(&qword_B8A28, &qword_89CA8);
  *&v28 = *(v30 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v30);
  v11 = &v27 - v10;
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  *v33 = v13;
  *&v33[8] = v12;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v14 = v34;
  swift_getKeyPath();
  *v33 = v14;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  v15 = *&v14[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v23 = *&v14[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
    }

    v24 = sub_81D88();

    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));

    if (v16)
    {
LABEL_3:
      *&v34 = v13;
      *(&v34 + 1) = v12;
      sub_814F8();
      v17 = *v33;
      v28 = *&v33[8];
      v34 = *(a1 + 24);
      sub_147EC(&qword_B8A98, &qword_89D00);
      sub_814F8();
      v27 = *v33;
      v18 = *&v33[16];
      v19 = *(type metadata accessor for FolderDetailView(0) + 28);
      v20 = *(v32 + 24);
      sub_147EC(&qword_B8860, &unk_89B70);
      sub_814F8();
      *v5 = v17;
      v21 = v27;
      *(v5 + 8) = v28;
      *(v5 + 24) = v21;
      *(v5 + 5) = v18;
      sub_4C60C(v5, v8, type metadata accessor for FileProviderDetailView);
      swift_storeEnumTagMultiPayload();
      sub_14F24(&qword_B8A20, &qword_B8A28, &qword_89CA8);
      sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView);
      sub_810A8();
      return sub_4D5C0(v5, type metadata accessor for FileProviderDetailView);
    }
  }

  sub_81118();
  v25 = v28;
  v26 = v30;
  (*(v28 + 16))(v8, v11, v30);
  swift_storeEnumTagMultiPayload();
  sub_14F24(&qword_B8A20, &qword_B8A28, &qword_89CA8);
  sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView);
  sub_810A8();
  return (*(v25 + 8))(v11, v26);
}

void sub_466C8(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  v5 = sub_81928();
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_46774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_80CE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v18 = *(a1 + 8);
  v19 = v9;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v10 = v17[1];
  swift_getKeyPath();
  v18 = v10;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  v11 = *&v10[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v14 = *&v10[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
    }

    v15 = sub_81D88();

    if (v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 1;
    return (*(v5 + 56))(a2, v13, 1, v4);
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_80CD8();
  (*(v5 + 32))(a2, v8, v4);
  v13 = 0;
  return (*(v5 + 56))(a2, v13, 1, v4);
}

void (*sub_46958(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(sub_147EC(&unk_B88F8, &qword_89BA0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_147EC(&qword_B8AF8, &unk_89D60);
  a1[2] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for FileProviderDetailView(0);
  sub_14F6C(v1 + *(v9 + 24), v8, &qword_B8AF8, &unk_89D60);
  sub_815A8();
  return sub_46A98;
}

void sub_46A98(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    sub_14F6C(*(a1 + 8), v4, &unk_B88F8, &qword_89BA0);
    sub_815B8();
    sub_14FD4(v2, &qword_B8AF8, &unk_89D60);
    v6 = v5;
    v7 = &unk_B88F8;
    v8 = &qword_89BA0;
  }

  else
  {
    v9 = *(a1 + 8);
    sub_815B8();
    v7 = &qword_B8AF8;
    v8 = &unk_89D60;
    v6 = v2;
  }

  sub_14FD4(v6, v7, v8);
  free(v2);
  free(v5);

  free(v4);
}

uint64_t sub_46B74@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for FileProviderDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v22 = *v1;
  v23 = *(v1 + 8);
  sub_147EC(&qword_B8BE8, &unk_89DE8);
  sub_815A8();
  swift_getKeyPath();
  v22 = v27;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  v5 = *&v27[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];

  v27 = v5;
  v20[5] = swift_getKeyPath();
  sub_4C60C(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileProviderDetailView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_4D018(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for FileProviderDetailView);
  v20[4] = sub_147EC(&qword_B8BF0, &qword_89E20);
  v20[3] = sub_147EC(&qword_B8BF8, &qword_89E28);
  v20[2] = sub_14F24(&qword_B8C00, &qword_B8BF0, &qword_89E20);
  v20[1] = sub_4D100();
  v8 = sub_14E2C(&qword_B8C18, &qword_89E30);
  v9 = sub_14E2C(&qword_B8C20, &qword_89E38);
  v10 = type metadata accessor for FileView(255);
  v11 = sub_14E2C(&qword_B8C28, &qword_89E40);
  v12 = sub_4C424(&qword_B8C30, type metadata accessor for FileView);
  v13 = sub_14ED0();
  v14 = sub_14F24(&qword_B8C38, &qword_B8C28, &qword_89E40);
  v22 = v10;
  *&v23 = &type metadata for String;
  *(&v23 + 1) = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_14F24(&qword_B8C40, &qword_B8C20, &qword_89E38);
  v22 = v8;
  *&v23 = v9;
  *(&v23 + 1) = OpaqueTypeConformance2;
  v24 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  sub_815F8();
  result = sub_147EC(&qword_B8C48, &qword_89E48);
  v19 = (v17 + *(result + 36));
  *v19 = nullsub_1;
  v19[1] = 0;
  return result;
}

uint64_t sub_46F88@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = sub_80FE8();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_147EC(&unk_B8C50, &unk_89E50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v70 = &v58 - v10;
  v11 = type metadata accessor for FileProviderDetailView(0);
  v12 = *(v11 - 8);
  v68 = v11 - 8;
  v64 = v12;
  v63 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_147EC(&qword_B8930, &qword_89BA8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = type metadata accessor for FileView(0);
  v66 = v21;
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_147EC(&qword_B8C18, &qword_89E30);
  v71 = *(v69 - 8);
  v25 = *(v71 + 64);
  __chkstk_darwin(v69);
  v67 = &v58 - v26;
  v27 = *a1;
  v28 = sub_809D8();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  sub_14F6C(v20, v18, &qword_B8930, &qword_89BA8);
  v29 = v27;
  v65 = v24;
  sub_814C8();
  sub_14FD4(v20, &qword_B8930, &qword_89BA8);
  *&v24[*(v21 + 20)] = v29;
  v30 = sub_818E8();
  v31 = sub_818E8();
  v32 = STLocalizedString(v30);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_886D0;
  *(v33 + 56) = &type metadata for Int;
  *(v33 + 64) = &protocol witness table for Int;
  *(v33 + 32) = 1;
  v34 = sub_81938();
  v36 = v35;
  v61 = v35;

  v86 = v34;
  v87 = v36;
  v59 = type metadata accessor for FileProviderDetailView;
  v37 = a2;
  v38 = v62;
  sub_4C60C(a2, v62, type metadata accessor for FileProviderDetailView);
  sub_81A88();
  v39 = v29;
  v40 = sub_81A78();
  v41 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v42 = (v41 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  *(v43 + 24) = &protocol witness table for MainActor;
  sub_4D018(v38, v43 + v41, type metadata accessor for FileProviderDetailView);
  v60 = v39;
  *(v43 + v42) = v39;
  sub_4C60C(v37, v38, v59);
  v44 = sub_81A78();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = &protocol witness table for MainActor;
  sub_4D018(v38, v45 + v41, type metadata accessor for FileProviderDetailView);
  sub_815E8();
  v78 = v37;
  v79 = v39;
  v64 = sub_147EC(&qword_B8C28, &qword_89E40);
  v46 = sub_4C424(&qword_B8C30, type metadata accessor for FileView);
  v47 = sub_14ED0();
  v48 = sub_14F24(&qword_B8C38, &qword_B8C28, &qword_89E40);
  v49 = v67;
  v50 = v66;
  v51 = v65;
  sub_81388();

  sub_4D5C0(v51, type metadata accessor for FileView);
  v52 = *(v68 + 32);
  v53 = sub_147EC(&qword_B8AF8, &unk_89D60);
  v54 = v70;
  sub_815D8();
  (*(*(v53 - 8) + 56))(v54, 0, 1, v53);
  v76 = v37;
  v77 = v60;
  v55 = v72;
  sub_80FD8();
  sub_147EC(&qword_B8C20, &qword_89E38);
  v80 = v50;
  v81 = &type metadata for String;
  v82 = v64;
  v83 = v46;
  v84 = v47;
  v85 = v48;
  swift_getOpaqueTypeConformance2();
  sub_14F24(&qword_B8C40, &qword_B8C20, &qword_89E38);
  v56 = v69;
  sub_81328();
  (*(v74 + 8))(v55, v75);
  sub_14FD4(v54, &unk_B8C50, &unk_89E50);
  return (*(v71 + 8))(v49, v56);
}

void sub_47880(uint64_t a1@<X2>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  sub_147EC(&qword_B8C60, &qword_89E60);
  sub_815A8();
  v5 = [a2 itemIdentifier];
  if (v12)
  {
    v6 = sub_81928();
    v8 = v7;
    if (v6 == sub_81928() && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_81E18();
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11 & 1;
}

uint64_t sub_47984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  v6 = *(a4 + 40);
  sub_147EC(&qword_B8C60, &qword_89E60);
  return sub_815B8();
}

uint64_t sub_479E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v37 = a1;
  v4 = type metadata accessor for FileProviderDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_80CB8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_147EC(&qword_B8C20, &qword_89E38);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v40 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v39 = &v35 - v17;
  v18 = __chkstk_darwin(v16);
  v38 = &v35 - v19;
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  sub_80C98();
  v36 = type metadata accessor for FileProviderDetailView;
  sub_4C60C(a1, v7, type metadata accessor for FileProviderDetailView);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  sub_4D018(v7, v23 + v22, type metadata accessor for FileProviderDetailView);
  v24 = v41;
  *(v23 + ((v22 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
  v25 = v24;
  sub_81538();
  sub_80CA8();
  sub_4C60C(v37, v7, v36);
  v26 = swift_allocObject();
  sub_4D018(v7, v26 + v22, type metadata accessor for FileProviderDetailView);
  v27 = v38;
  sub_81538();
  v28 = v12[2];
  v29 = v39;
  v28(v39, v21, v11);
  v30 = v40;
  v28(v40, v27, v11);
  v31 = v42;
  v28(v42, v29, v11);
  v32 = sub_147EC(&qword_B8C68, &qword_89E68);
  v28(&v31[*(v32 + 48)], v30, v11);
  v33 = v12[1];
  v33(v27, v11);
  v33(v21, v11);
  v33(v30, v11);
  return (v33)(v29, v11);
}

uint64_t sub_47DD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v15 = *(a1 + 24);
  v16 = v3;
  v17 = 0;
  sub_147EC(&qword_B8C60, &qword_89E60);
  sub_815B8();
  v4 = [objc_opt_self() defaultManager];
  sub_147EC(&qword_B8C70, &qword_89E70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_89B00;
  *(v5 + 32) = a2;
  v6 = objc_allocWithZone(FPDeleteOperation);
  sub_1A7F4(0, &qword_B88D0, FPItem_ptr);
  v7 = a2;
  isa = sub_819E8().super.isa;

  v9 = [v6 initWithItems:isa];

  [v4 scheduleAction:v9];
  v10 = sub_46958(&v15);
  v12 = v11;
  v13 = sub_81168();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_81158();
  }

  return (v10)(&v15, 0);
}

uint64_t sub_47F8C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v7 = *(a1 + 24);
  v8 = v1;
  v9 = 0;
  sub_147EC(&qword_B8C60, &qword_89E60);
  sub_815B8();
  v2 = sub_46958(&v7);
  v4 = v3;
  v5 = sub_81168();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_81148();
  }

  return (v2)(&v7, 0);
}

uint64_t sub_48064(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FileProviderDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_80CB8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_80C98();
  sub_4C60C(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileProviderDetailView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_4D018(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FileProviderDetailView);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v11 = a2;
  return sub_81538();
}

uint64_t sub_48200(uint64_t a1, id a2)
{
  v3 = [a2 itemIdentifier];
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  sub_147EC(&qword_B8C60, &qword_89E60);
  return sub_815B8();
}

uint64_t sub_48280()
{
  v0 = sub_818D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = sub_147EC(&qword_B8C88, qword_89E78);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_147EC(&qword_B8C70, &qword_89E70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_89B10;
  sub_1A7F4(0, &qword_B8C80, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v10 + 32) = sub_81B58();
  swift_getKeyPath();
  sub_818C8();
  (*(v1 + 16))(v5, v7, v0);

  sub_808F8();

  (*(v1 + 8))(v7, v0);
  sub_1A7F4(0, &qword_B88D0, FPItem_ptr);
  *(v10 + 40) = sub_81B68();
  swift_getKeyPath();
  result = sub_81B58();
  *(v10 + 48) = result;
  qword_BCFD0 = v10;
  return result;
}

void sub_484B4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayName];
  v4 = sub_81928();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_4850C()
{
  swift_getKeyPath();
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  v1 = *(v0 + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems);
}

uint64_t sub_485B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
  sub_80A68();

  *a2 = *(v3 + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems);
}

uint64_t sub_4866C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems;
  v4 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems);

  v6 = sub_6D740(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection);
    sub_80A58();
  }
}

id sub_487C8(void *a1)
{
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems] = _swiftEmptyArrayStorage;
  sub_80A98();
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection_itemCollection] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ObservableItemCollection(0);
  v3 = a1;
  v4 = objc_msgSendSuper2(&v9, "init");
  v5 = qword_B7860;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1A7F4(0, &qword_B8C80, NSSortDescriptor_ptr);
  isa = sub_819E8().super.isa;
  [v3 reorderItemsWithSortDescriptors:{isa, v9.receiver, v9.super_class}];

  [v3 setDelegate:v6];
  [v3 startObserving];

  return v6;
}

id sub_48908()
{
  [*&v0[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection_itemCollection] stopObserving];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObservableItemCollection(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_48A70(void *a1)
{
  v1 = [a1 items];
  sub_1A7F4(0, &qword_B88D0, FPItem_ptr);
  v2 = sub_819F8();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_81D88())
  {
    v4 = 0;
    v17 = v2 & 0xC000000000000001;
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v5 = sub_81D18();
      }

      else
      {
        if (v4 >= *(v16 + 16))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 capabilities];
      v9 = [v6 capabilities];
      v10 = [v6 childItemCount];
      if (v10)
      {
        v11 = v2;
        v12 = v10;
        v13 = [v10 integerValue];

        if (v13 < 1)
        {

          v2 = v11;
          goto LABEL_5;
        }

        v2 = v11;
        if (v9 & 0x10 | (v8 & 1))
        {
LABEL_15:
          sub_81D38();
          v14 = _swiftEmptyArrayStorage[2];
          sub_81D58();
          sub_81D68();
          sub_81D48();
          goto LABEL_5;
        }
      }

      else if ((v9 & 0x10) != 0)
      {
        goto LABEL_15;
      }

LABEL_5:
      ++v4;
      if (v7 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return sub_4866C(_swiftEmptyArrayStorage);
}

uint64_t sub_48D28()
{
  result = sub_80AA8();
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

void sub_48E24()
{
  sub_1A7F4(319, &qword_B88D0, FPItem_ptr);
  if (v0 <= 0x3F)
  {
    sub_49370(319, &qword_B88D8, type metadata accessor for ObservableItemCollection, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_4DDC0(319, &qword_B88E0, &qword_B88E8, &qword_89B98, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_4DDC0(319, &qword_B88F0, &unk_B88F8, &qword_89BA0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_48F84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_147EC(&qword_B8930, &qword_89BA8);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_80B88();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_490D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_147EC(&qword_B8930, &qword_89BA8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_80B88();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_49224()
{
  sub_4DDC0(319, &qword_B89A0, &qword_B89A8, &qword_89BC0, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_4E118(319, &qword_B89B0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_49370(319, &unk_B89B8, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_80B88();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_49370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_493F0@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for FileView(0);
  v3 = *(v1 + *(v2 + 20));
  v4 = [v3 displayName];
  v5 = sub_81928();
  v7 = v6;

  v8 = type metadata accessor for FileIconView(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v9[8];
  sub_147EC(&qword_B8C90, &qword_89F20);
  sub_814D8();
  v14 = [v3 contentType];
  v15 = &v12[v9[9]];
  sub_80B78();

  v61 = 0;
  sub_147EC(&qword_B89A8, &qword_89BC0);
  sub_814C8();
  *v12 = v62;
  *(v12 + 2) = swift_getKeyPath();
  v12[24] = 0;
  __asm { FMOV            V0.2D, #29.0 }

  *&v12[v9[10]] = _Q0;
  v21 = sub_147EC(&unk_B8E00, &unk_8A040);
  v57 = *(v21 - 8);
  v58 = v21;
  v22 = *(v57 + 64);
  __chkstk_darwin(v21);
  v56 = &v51 - v23;
  v24 = sub_147EC(&qword_B78E8, &qword_87E88);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v55 = &v51 - v26;
  v59 = v7;
  v27 = sub_49A58(v1, v5, v7, 0, _swiftEmptyArrayStorage, v12, &v51 - v26);
  v28 = *(v2 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_4C60C(v1, &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileView);
  sub_81A88();
  v30 = sub_81A78();
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = &protocol witness table for MainActor;
  sub_4D018(&v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for FileView);
  v33 = sub_81AB8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v51 - v36;
  sub_81A98();
  if (sub_7FD88(2, 26, 4, 0))
  {
    v53 = sub_80DF8();
    v54 = &v51;
    v52 = *(v53 - 8);
    v38 = *(v52 + 64);
    __chkstk_darwin(v53);
    v51 = v33;
    v40 = &v51 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    sub_81D08(17);

    *&v62 = 0xD00000000000003BLL;
    *(&v62 + 1) = 0x8000000000095990;
    v61 = 230;
    v63._countAndFlagsBits = sub_81DF8();
    sub_81978(v63);

    __chkstk_darwin(v41);
    v42 = &v51 - v36;
    v43 = &v51 - v36;
    v44 = v51;
    (*(v34 + 16))(v42, v43, v51);
    sub_80DE8();

    (*(v34 + 8))(v37, v44);
    v45 = v56;
    sub_4E688(v55, v56);
    v46 = sub_147EC(&qword_B78F0, &qword_87E90);
    (*(v52 + 32))(v45 + *(v46 + 36), v40, v53);
  }

  else
  {

    v47 = sub_147EC(&qword_B78F8, &qword_87E98);
    v45 = v56;
    v48 = (v56 + *(v47 + 36));
    v49 = sub_80DA8();
    (*(v34 + 32))(&v48[*(v49 + 20)], &v51 - v36, v33);
    *v48 = &unk_8A058;
    *(v48 + 1) = v32;
    sub_4E688(v55, v45);
  }

  (*(v57 + 32))(v60, v45, v58);
  return sub_4D5C0(v12, type metadata accessor for FileIconView);
}

uint64_t sub_49A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a5;
  v37 = a6;
  v34 = a4;
  v35 = a3;
  v33 = a2;
  v40 = a7;
  v39 = sub_147EC(&qword_B8E18, &qword_8A068);
  v8 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v10 = &v32 - v9;
  v38 = sub_147EC(&qword_B8E20, &qword_8A070);
  v11 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v13 = &v32 - v12;
  v14 = type metadata accessor for FolderDetailView(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_147EC(&qword_B8E28, &qword_8A078);
  v32 = *(v18 - 8);
  v19 = *(v32 + 64);
  __chkstk_darwin(v18);
  v21 = &v32 - v20;
  v22 = *(a1 + *(type metadata accessor for FileView(0) + 20));
  v23 = [v22 childItemCount];
  if (v23 && (v24 = v23, v25 = [v23 integerValue], v24, v25 >= 1))
  {
    sub_45B3C(v22, v17);
    __chkstk_darwin(v26);
    v27 = v35;
    *(&v32 - 6) = v33;
    *(&v32 - 5) = v27;
    *(&v32 - 32) = v34 & 1;
    v28 = v37;
    *(&v32 - 3) = v36;
    *(&v32 - 2) = v25;
    *(&v32 - 1) = v28;
    sub_147EC(&qword_B8E48, &qword_8A088);
    sub_14F24(&qword_B8E50, &qword_B8E48, &qword_8A088);
    sub_4C424(&qword_B8E58, type metadata accessor for FolderDetailView);
    sub_80DB8();
    v29 = v32;
    (*(v32 + 16))(v13, v21, v18);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8E38, &qword_B8E28, &qword_8A078);
    sub_14F24(&qword_B8E40, &qword_B8E18, &qword_8A068);
    sub_810A8();
    return (*(v29 + 8))(v21, v18);
  }

  else
  {
    *v10 = sub_81008();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v31 = sub_147EC(&qword_B8E30, &qword_8A080);
    sub_4A26C(v33, v35, v34 & 1, v36, a1, v37, &v10[*(v31 + 44)]);
    sub_14F6C(v10, v13, &qword_B8E18, &qword_8A068);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8E38, &qword_B8E28, &qword_8A078);
    sub_14F24(&qword_B8E40, &qword_B8E18, &qword_8A068);
    sub_810A8();
    return sub_14FD4(v10, &qword_B8E18, &qword_8A068);
  }
}

uint64_t sub_49F4C()
{
  sub_147EC(&qword_B8E60, &qword_8A090);
  type metadata accessor for FileIconView(0);
  sub_14F24(&qword_B8E68, &qword_B8E60, &qword_8A090);
  sub_4C424(&qword_B8E70, type metadata accessor for FileIconView);
  return sub_814B8();
}

uint64_t sub_4A06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_818E8();
  v13 = sub_818E8();
  v14 = STLocalizedString(v12);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_886D0;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = a5;
  sub_81938();

  sub_14ED0();
  v16 = sub_81288();
  v18 = v17;
  LOBYTE(v14) = v19 & 1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = v16;
  *(a6 + 40) = v17;
  *(a6 + 48) = v19 & 1;
  *(a6 + 56) = v20;
  sub_16C28(a1, a2, a3 & 1);

  sub_16C28(a1, a2, a3 & 1);

  sub_16C28(v16, v18, v14);

  sub_15034(v16, v18, v14);

  sub_15034(a1, a2, a3);
}

uint64_t sub_4A26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v56 = a7;
  v57 = a6;
  v12 = sub_80938();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_80918();
  v16 = *(v50 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v50);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_80948();
  v20 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v21 = sub_147EC(&qword_B8E78, &qword_8A098);
  v53 = *(v21 - 8);
  v54 = v21;
  v22 = *(v53 + 64);
  v23 = __chkstk_darwin(v21);
  v55 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v48 - v25;
  v59 = a1;
  v60 = a2;
  v61 = a3 & 1;
  v62 = a4;
  v63 = a5;
  v58 = v57;
  sub_147EC(&qword_B8E80, &qword_8A0A0);
  type metadata accessor for FileIconView(0);
  sub_14F24(&qword_B8E88, &qword_B8E80, &qword_8A0A0);
  sub_4C424(&qword_B8E70, type metadata accessor for FileIconView);
  v57 = v26;
  sub_814B8();
  v27 = [*(a5 + *(type metadata accessor for FileView(0) + 20)) documentSize];
  if (v27)
  {
    v28 = v27;
    v64 = [v27 longLongValue];
    v29 = v50;
    (*(v16 + 104))(v19, enum case for ByteCountFormatStyle.Style.file(_:), v50);
    sub_80928();
    sub_80808();
    (*(v51 + 8))(v15, v52);
    (*(v16 + 8))(v19, v29);
    sub_4C424(&qword_B8E98, &type metadata accessor for ByteCountFormatStyle);
    v30 = sub_81268();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = v34 & 1;
    sub_16C28(v30, v32, v37);
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v37 = 0;
    v36 = 0;
  }

  v38 = v53;
  v39 = v54;
  v40 = *(v53 + 16);
  v41 = v55;
  v40(v55, v57, v54);
  v42 = v56;
  v40(v56, v41, v39);
  v43 = sub_147EC(&qword_B8E90, &qword_8A0A8);
  v44 = &v42[*(v43 + 48)];
  *v44 = 0;
  v44[8] = 1;
  v45 = &v42[*(v43 + 64)];
  sub_4E778(v30, v32, v37, v36);
  sub_4E7BC(v30, v32, v37, v36);
  *v45 = v30;
  v45[1] = v32;
  v45[2] = v37;
  v45[3] = v36;
  v46 = *(v38 + 8);
  v46(v57, v39);
  sub_4E7BC(v30, v32, v37, v36);
  return (v46)(v41, v39);
}

uint64_t sub_4A7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v35 = a3;
  v34 = sub_809E8();
  v10 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v11 = sub_80A38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v34 - v18;
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = [*(a5 + *(type metadata accessor for FileView(0) + 20)) contentModificationDate];
  if (v22)
  {
    v23 = v22;
    sub_80A08();

    (*(v12 + 32))(v21, v19, v11);
    (*(v12 + 16))(v16, v21, v11);
    sub_80818();
    sub_4C424(&unk_B8EA0, &type metadata accessor for Date.FormatStyle);
    sub_4C424(&qword_B7E98, &type metadata accessor for Date);
    v24 = sub_81268();
    v26 = v25;
    LOBYTE(v23) = v27;
    v29 = v28;
    (*(v12 + 8))(v21, v11);
    v30 = v23 & 1;
    sub_16C28(v24, v26, v23 & 1);
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v30 = 0;
    v29 = 0;
  }

  v31 = v35 & 1;
  sub_16C28(a1, a2, v35 & 1);
  v32 = v36;

  sub_16C28(a1, a2, v31);

  sub_4E778(v24, v26, v30, v29);
  sub_4E7BC(v24, v26, v30, v29);
  v37 = v31;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v31;
  *(a6 + 24) = v32;
  *(a6 + 32) = v24;
  *(a6 + 40) = v26;
  *(a6 + 48) = v30;
  *(a6 + 56) = v29;
  sub_4E7BC(v24, v26, v30, v29);
  sub_15034(a1, a2, v31);
}

uint64_t sub_4AB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a3;
  v4 = sub_809D8();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = *(*(sub_147EC(&qword_B8930, &qword_89BA8) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_81A88();
  v3[24] = sub_81A78();
  v9 = sub_81A58();
  v3[25] = v9;
  v3[26] = v8;

  return _swift_task_switch(sub_4AC6C, v9, v8);
}

uint64_t sub_4AC6C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = [objc_opt_self() defaultManager];
  v0[27] = v3;
  v4 = *(v2 + *(type metadata accessor for FileView(0) + 20));
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_4ADCC;
  v5 = swift_continuation_init();
  v0[17] = sub_147EC(&qword_B8E10, &qword_8A060);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_4B160;
  v0[13] = &unk_ABE48;
  v0[14] = v5;
  [v3 fetchURLForItem:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_4ADCC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 208);
  v5 = *(v1 + 200);
  if (v3)
  {
    v6 = sub_4B034;
  }

  else
  {
    v6 = sub_4AEFC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_4AEFC()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  (*(v5 + 32))(v3, v4, v6);
  (*(v5 + 56))(v3, 0, 1, v6);

  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[18];
  sub_14F6C(v7, v0[22], &qword_B8930, &qword_89BA8);
  sub_147EC(&qword_B8C90, &qword_89F20);
  sub_814E8();
  sub_14FD4(v7, &qword_B8930, &qword_89BA8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_4B034()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[19];
  v6 = v0[20];

  swift_willThrow();

  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[18];
  sub_14F6C(v7, v0[22], &qword_B8930, &qword_89BA8);
  sub_147EC(&qword_B8C90, &qword_89F20);
  sub_814E8();
  sub_14FD4(v7, &qword_B8930, &qword_89BA8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_4B160(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_809D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *sub_22CB8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    sub_809B8();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

double sub_4B2D4()
{
  v1 = sub_80FB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  v8 = *(v0 + 16);

  sub_81B28();
  v9 = sub_81198();
  sub_80B98();

  sub_80FA8();
  swift_getAtKeyPath();
  sub_4C7F8(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

void sub_4B420(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_81408();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_147EC(&qword_B8AD0, &qword_89D48);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v25 - v10);
  v12 = sub_147EC(&qword_B8AD8, &qword_89D50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v27 = *a1;
  sub_147EC(&unk_B8AC0, &qword_89D38);
  sub_814D8();
  if (v26)
  {
    v17 = v26;
    v18 = sub_81468();
    (*(v4 + 104))(v7, enum case for Color.RGBColorSpace.sRGBLinear(_:), v3);
    v19 = sub_81458();
    *v11 = v18;
    v11[1] = v19;
    v11[3] = 0;
    v11[4] = 0;
    v11[2] = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();

    sub_147EC(&qword_B8AE0, &qword_89D58);
    sub_4C8E8();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);
    sub_810A8();
  }

  else
  {
    v20 = type metadata accessor for FileIconView(0);
    v21 = a1 + *(v20 + 28);
    sub_80B68();
    v22 = objc_allocWithZone(ISIcon);
    v23 = sub_818E8();

    [v22 initWithType:{v23, v25}];

    v24 = (a1 + *(v20 + 32));
    [objc_allocWithZone(ISImageDescriptor) initWithSize:*v24 scale:{v24[1], sub_4B2D4()}];
    sub_80B58();
    (*(v13 + 16))(v11, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_147EC(&qword_B8AE0, &qword_89D58);
    sub_4C8E8();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);
    sub_810A8();
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_4B85C(uint64_t a1)
{
  v1[22] = a1;
  v2 = *(*(sub_147EC(&qword_B8930, &qword_89BA8) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_809D8();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  sub_81A88();
  v1[27] = sub_81A78();
  v7 = sub_81A58();
  v1[28] = v7;
  v1[29] = v6;

  return _swift_task_switch(sub_4B988, v7, v6);
}

uint64_t sub_4B988()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = type metadata accessor for FileIconView(0);
  sub_14F6C(v4 + *(v5 + 24), v3, &qword_B8930, &qword_89BA8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[27];
    v7 = v0[23];

    sub_14FD4(v7, &qword_B8930, &qword_89BA8);
    v8 = v0[26];
    v9 = v0[23];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[22];
    (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
    v13 = (v12 + *(v5 + 32));
    v14 = *v13;
    v15 = v13[1];
    v16 = sub_4B2D4();
    v17 = objc_allocWithZone(QLThumbnailGenerationRequest);
    sub_809A8(v18);
    v20 = v19;
    v21 = [v17 initWithFileAtURL:v19 size:4 scale:v14 representationTypes:{v15, v16}];
    v0[30] = v21;

    [v21 setIconMode:1];
    [v21 setBadgeType:0];
    v22 = [objc_opt_self() sharedGenerator];
    v0[31] = v22;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_4BC58;
    v23 = swift_continuation_init();
    v0[17] = sub_147EC(&qword_B8AB8, &qword_89D30);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_4C000;
    v0[13] = &unk_ABD08;
    v0[14] = v23;
    [v22 generateBestRepresentationForRequest:v21 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_4BC58()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_4BED4;
  }

  else
  {
    v6 = sub_4BD88;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_4BD88()
{
  v1 = v0[31];
  v2 = v0[27];

  v3 = v0[20];
  v4 = [v3 UIImage];

  v5 = v0[30];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[22];
  v11 = *v9;
  v10 = *(v9 + 8);
  v0[18] = *v9;
  v0[19] = v10;
  v0[21] = v4;
  v12 = v4;
  v13 = v11;

  sub_147EC(&unk_B8AC0, &qword_89D38);
  sub_814E8();

  (*(v7 + 8))(v6, v8);
  v14 = v0[26];
  v15 = v0[23];

  v16 = v0[1];

  return v16();
}

uint64_t sub_4BED4()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[27];

  swift_willThrow();

  v4 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[22];
  v9 = *v8;
  v10 = *(v8 + 8);
  v0[18] = *v8;
  v0[19] = v10;
  v0[21] = 0;
  v11 = v9;

  sub_147EC(&unk_B8AC0, &qword_89D38);
  sub_814E8();

  (*(v6 + 8))(v5, v7);
  v12 = v0[26];
  v13 = v0[23];

  v14 = v0[1];

  return v14();
}

uint64_t sub_4C000(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_22CB8((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_4C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B420(v2, a2);
  v8 = (v2 + *(v4 + 40));
  v9 = *v8;
  v10 = v8[1];
  sub_81688();
  sub_80D68();
  v11 = (a2 + *(sub_147EC(&qword_B8AA0, &qword_89D08) + 36));
  v12 = v20[1];
  *v11 = v20[0];
  v11[1] = v12;
  v11[2] = v20[2];
  v13 = *(v4 + 32);
  sub_4C60C(v2, v7, type metadata accessor for FileIconView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_4D018(v7, v15 + v14, type metadata accessor for FileIconView);
  v16 = (a2 + *(sub_147EC(&qword_B8AA8, &qword_89D20) + 36));
  v17 = sub_147EC(&qword_B8AB0, &qword_89D28);
  v18 = v16 + *(v17 + 36);
  sub_81A98();
  result = sub_14F6C(v2 + v13, v16 + *(v17 + 40), &qword_B8930, &qword_89BA8);
  *v16 = &unk_89D18;
  v16[1] = v15;
  return result;
}

unint64_t sub_4C2EC()
{
  result = qword_B8A18;
  if (!qword_B8A18)
  {
    sub_14E2C(&qword_B8A10, &qword_89CA0);
    sub_14F24(&qword_B8A20, &qword_B8A28, &qword_89CA8);
    sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8A18);
  }

  return result;
}

uint64_t sub_4C3F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_4866C(v4);
}

uint64_t sub_4C424(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_4C46C()
{
  result = qword_B8A48;
  if (!qword_B8A48)
  {
    sub_14E2C(&qword_B89F8, &qword_89C88);
    sub_14F24(&qword_B8A50, &qword_B8A58, &qword_89CE0);
    sub_14F24(&qword_B8A60, &unk_B8A68, &qword_89CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8A48);
  }

  return result;
}

unint64_t sub_4C558()
{
  result = qword_B8A80;
  if (!qword_B8A80)
  {
    sub_14E2C(&qword_B8A78, &qword_89CF0);
    sub_4C424(&qword_B8A88, &type metadata accessor for EditButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8A80);
  }

  return result;
}

uint64_t sub_4C60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4C674()
{
  v1 = type metadata accessor for FileIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  sub_4C7F8(*(v5 + 16), *(v5 + 24));
  v7 = *(v1 + 24);
  v8 = sub_809D8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v1 + 28);
  v11 = sub_80B88();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4C7F8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_4C804()
{
  v2 = *(type metadata accessor for FileIconView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_16268;

  return sub_4B85C(v0 + v3);
}

unint64_t sub_4C8E8()
{
  result = qword_B8AE8;
  if (!qword_B8AE8)
  {
    sub_14E2C(&qword_B8AE0, &qword_89D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8AE8);
  }

  return result;
}

uint64_t sub_4C96C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems);
  *(v1 + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems) = *(v0 + 24);
}

uint64_t sub_4C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_147EC(&qword_B8AF8, &unk_89D60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4CA94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_147EC(&qword_B8AF8, &unk_89D60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4CB44()
{
  sub_49370(319, &qword_B8B68, type metadata accessor for ObservableItemCollection, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_4DDC0(319, &qword_B8B70, &qword_B88E8, &qword_89B98, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_4DDC0(319, &unk_B8B78, &unk_B88F8, &qword_89BA0, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_4CC68()
{
  sub_14E2C(&qword_B8A08, &qword_89C98);
  sub_14E2C(&qword_B8A78, &qword_89CF0);
  sub_14E2C(&qword_B8A00, &qword_89C90);
  sub_14E2C(&qword_B89F8, &qword_89C88);
  sub_4C46C();
  swift_getOpaqueTypeConformance2();
  sub_14ED0();
  swift_getOpaqueTypeConformance2();
  sub_4C558();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4CD88()
{
  result = qword_B8BB0;
  if (!qword_B8BB0)
  {
    sub_14E2C(&qword_B8AA8, &qword_89D20);
    sub_4CE40();
    sub_14F24(&qword_B8BE0, &qword_B8AB0, &qword_89D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8BB0);
  }

  return result;
}

unint64_t sub_4CE40()
{
  result = qword_B8BB8;
  if (!qword_B8BB8)
  {
    sub_14E2C(&qword_B8AA0, &qword_89D08);
    sub_4EC38(&qword_B8BC0, &qword_B8BC8, &qword_89D88, sub_4CEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8BB8);
  }

  return result;
}

unint64_t sub_4CEF8()
{
  result = qword_B8BD0;
  if (!qword_B8BD0)
  {
    sub_14E2C(&qword_B8BD8, &qword_89D90);
    sub_4C8E8();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8BD0);
  }

  return result;
}

id sub_4CFD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 itemID];
  *a2 = result;
  return result;
}

uint64_t sub_4D018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4D080@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FileProviderDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_46F88(a1, v6, a2);
}

unint64_t sub_4D100()
{
  result = qword_B8C08;
  if (!qword_B8C08)
  {
    sub_1A7F4(255, &qword_B8C10, FPItemID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8C08);
  }

  return result;
}

uint64_t sub_4D188()
{
  v1 = (type metadata accessor for FileProviderDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = (v0 + v3 + v1[8]);
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(sub_147EC(&qword_B8AF8, &unk_89D60) + 32);
  v14 = sub_81168();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v10[v13], 1, v14))
  {
    (*(v15 + 8))(&v10[v13], v14);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v16 + 8, v2 | 7);
}

void sub_4D320(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for FileProviderDetailView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_47880(v1 + v4, v5, a1);
}

uint64_t sub_4D3C0()
{
  v1 = (type metadata accessor for FileProviderDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = (v0 + v3 + v1[8]);
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(sub_147EC(&qword_B8AF8, &unk_89D60) + 32);
  v14 = sub_81168();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v10[v13], 1, v14))
  {
    (*(v15 + 8))(&v10[v13], v14);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4D544(uint64_t a1)
{
  v3 = *(type metadata accessor for FileProviderDetailView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_47984(a1, v4, v5, v6);
}

uint64_t sub_4D5C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4D644()
{
  v1 = (type metadata accessor for FileProviderDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = (v0 + v3 + v1[8]);
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(sub_147EC(&qword_B8AF8, &unk_89D60) + 32);
  v13 = sub_81168();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v9[v12], 1, v13))
  {
    (*(v14 + 8))(&v9[v12], v13);
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_4D7EC(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FileProviderDetailView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_4D88C()
{
  v1 = (type metadata accessor for FileProviderDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = (v0 + v3 + v1[8]);
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(sub_147EC(&qword_B8AF8, &unk_89D60) + 32);
  v13 = sub_81168();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v9[v12], 1, v13))
  {
    (*(v14 + 8))(&v9[v12], v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4DA54(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4DAB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 documentSize];
  *a2 = result;
  return result;
}

id sub_4DB10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 itemIdentifier];
  *a2 = result;
  return result;
}

uint64_t sub_4DB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_147EC(&qword_B8C90, &qword_89F20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_4DC3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_147EC(&qword_B8C90, &qword_89F20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_4DD00()
{
  sub_4DDC0(319, &unk_B8D00, &qword_B8930, &qword_89BA8, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1A7F4(319, &qword_B88D0, FPItem_ptr);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_4DDC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_14E2C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_4DE38(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_147EC(&qword_B8860, &unk_89B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_4DF08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_147EC(&qword_B8860, &unk_89B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4DFB8()
{
  sub_49370(319, &qword_B88D8, type metadata accessor for ObservableItemCollection, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_4DDC0(319, &qword_B88E0, &qword_B88E8, &qword_89B98, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_4DDC0(319, &qword_B88F0, &unk_B88F8, &qword_89BA0, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_4E118(319, &qword_B8D98, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4E118(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_4E16C()
{
  result = qword_B8DD8;
  if (!qword_B8DD8)
  {
    sub_14E2C(&qword_B8C48, &qword_89E48);
    sub_4E224();
    sub_14F24(&qword_B8DF0, &qword_B8DF8, &qword_89F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8DD8);
  }

  return result;
}

unint64_t sub_4E224()
{
  result = qword_B8DE0;
  if (!qword_B8DE0)
  {
    sub_14E2C(&qword_B8DE8, &qword_89F60);
    sub_14E2C(&qword_B8C18, &qword_89E30);
    sub_14E2C(&qword_B8C20, &qword_89E38);
    type metadata accessor for FileView(255);
    sub_14E2C(&qword_B8C28, &qword_89E40);
    sub_4C424(&qword_B8C30, type metadata accessor for FileView);
    sub_14ED0();
    sub_14F24(&qword_B8C38, &qword_B8C28, &qword_89E40);
    swift_getOpaqueTypeConformance2();
    sub_14F24(&qword_B8C40, &qword_B8C20, &qword_89E38);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8DE0);
  }

  return result;
}

uint64_t sub_4E458()
{
  v1 = type metadata accessor for FileView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_809D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = *(v6 + *(sub_147EC(&qword_B8C90, &qword_89F20) + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4E5AC()
{
  v2 = *(type metadata accessor for FileView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22EB0;

  return sub_4AB34(v4, v5, v0 + v3);
}

uint64_t sub_4E688(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B78E8, &qword_87E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4E6F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_49F4C();
}

uint64_t sub_4E778(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_16C28(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_4E7BC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_15034(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_4E810(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8EB8, &qword_8A0B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4E880(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8EB8, &qword_8A0B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4E8FC()
{
  v1 = type metadata accessor for FileProviderAppDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = v0 + v3 + *(v1 + 28);
  v9 = sub_81168();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(sub_147EC(&qword_B8860, &unk_89B70) + 28));

  v12 = *(v0 + v3 + *(v1 + 32) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4EAB8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_4EBA0()
{
  sub_14E2C(&qword_B78E8, &qword_87E88);
  sub_4EC38(&qword_B8F38, &qword_B78E8, &qword_87E88, sub_4ECB4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_4EC38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_14E2C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4ECB4()
{
  result = qword_B8F40;
  if (!qword_B8F40)
  {
    sub_14E2C(&qword_B8F48, &qword_8A120);
    sub_14F24(&qword_B8E38, &qword_B8E28, &qword_8A078);
    sub_14F24(&qword_B8E40, &qword_B8E18, &qword_8A068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8F40);
  }

  return result;
}

__n128 sub_4EE0C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_4EE18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_4EE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_4EEF4@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a5;
  v9 = sub_147EC(&qword_B8F60, &qword_8A1E8);
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  __chkstk_darwin(v9);
  v77 = &v65[-v11];
  v70 = sub_147EC(&qword_B8F68, &qword_8A1F0);
  v69 = *(v70 - 8);
  v12 = *(v69 + 64);
  v13 = __chkstk_darwin(v70);
  v75 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v72 = &v65[-v15];
  v74 = sub_147EC(&qword_B8F70, &qword_8A1F8);
  v73 = *(v74 - 8);
  v16 = v73[8];
  v17 = __chkstk_darwin(v74);
  v71 = &v65[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v76 = &v65[-v19];
  v20 = sub_147EC(&qword_B8F78, &qword_8A200);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v78 = &v65[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v65[-v24];
  v26 = sub_147EC(&qword_B8F80, &qword_8A208);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v65[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v33 = &v65[-v32];
  v82 = a1;
  v83 = a2;
  v68 = a2;
  v84 = a3;
  v85 = a4;
  v66 = a3;
  v86 = a3;
  v67 = a4;
  v87 = a4;
  sub_147EC(&qword_B8F88, &qword_8A210);
  sub_814F8();
  v34 = v88;
  v35 = v89;
  LOBYTE(a2) = v90;
  type metadata accessor for StorageShared();
  sub_51240(&qword_B7A50, type metadata accessor for StorageShared);
  v88 = sub_80E68();
  v89 = v36;
  v90 = v34;
  v91 = v35;
  v92 = a2;
  sub_147EC(&qword_B8F90, &qword_8A218);
  sub_50CD0();
  sub_50D24();
  sub_81618();
  v37 = &v33[*(v27 + 44)];
  v38 = *(sub_147EC(&qword_B8FE0, &unk_8ACA0) + 28);
  v39 = sub_81248();
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  *v37 = swift_getKeyPath();
  if (a1)
  {
    v40 = a1;
    v41 = *(sub_254C4() + 16);

    if (v41)
    {
      v42 = v40[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce];

      if (v42 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_80C68();

        v43 = v88;
        v44 = v89;

        v45 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v45 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (!v45)
        {
          sub_147EC(&qword_B8FF0, &qword_8A2C0);
          sub_50ED4();
          v46 = sub_81628();
          __chkstk_darwin(v46);
          v47 = v68;
          *&v65[-32] = a1;
          *&v65[-24] = v47;
          v65[-16] = v66;
          *&v65[-8] = v67;
          sub_147EC(&qword_B9020, &qword_8A2D8);
          sub_51058();
          v48 = v72;
          sub_81628();
          v68 = v73[2];
          v49 = v71;
          v50 = v74;
          v68(v71, v76, v74);
          v51 = v69;
          v52 = *(v69 + 16);
          v53 = v48;
          v54 = v70;
          v52(v75, v53, v70);
          v68(v77, v49, v50);
          v55 = sub_147EC(&qword_B9048, &qword_8A2E8);
          v56 = v75;
          v52(&v77[*(v55 + 48)], v75, v54);
          v57 = *(v51 + 8);
          v57(v72, v54);
          v58 = v73[1];
          v59 = v74;
          v58(v76, v74);
          v57(v56, v54);
          v58(v71, v59);
          sub_511C8(v77, v25);
          v60 = 0;
LABEL_11:
          (*(v79 + 56))(v25, v60, 1, v80);
          sub_14F6C(v33, v31, &qword_B8F80, &qword_8A208);
          v61 = v78;
          sub_14F6C(v25, v78, &qword_B8F78, &qword_8A200);
          v62 = v81;
          sub_14F6C(v31, v81, &qword_B8F80, &qword_8A208);
          v63 = sub_147EC(&qword_B8FE8, &qword_8A270);
          sub_14F6C(v61, v62 + *(v63 + 48), &qword_B8F78, &qword_8A200);
          sub_14FD4(v25, &qword_B8F78, &qword_8A200);
          sub_14FD4(v33, &qword_B8F80, &qword_8A208);
          sub_14FD4(v61, &qword_B8F78, &qword_8A200);
          return sub_14FD4(v31, &qword_B8F80, &qword_8A208);
        }

LABEL_10:
        v60 = 1;
        goto LABEL_11;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

  result = sub_80E58();
  __break(1u);
  return result;
}

uint64_t sub_4F76C@<X0>(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v49 = a3;
  LODWORD(v48) = a2;
  v55 = a4;
  v56 = sub_147EC(&qword_B8FD8, &unk_8A230);
  v5 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v7 = &v45[-v6];
  v53 = sub_147EC(&qword_B9060, &qword_8A3E0);
  v8 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v10 = &v45[-v9];
  v50 = sub_147EC(&qword_B9068, &qword_8A3E8);
  v11 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v13 = &v45[-v12];
  v54 = sub_147EC(&qword_B8FB0, &qword_8A220);
  v14 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v16 = &v45[-v15];
  v17 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v45[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v45[-v22];
  v52 = type metadata accessor for AppsListView();
  v24 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v26 = &v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v27 = a1;
    v28 = *(sub_254C4() + 16);

    v51 = v16;
    if (v28)
    {
      v29 = v27[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce];

      if (v29 == 1)
      {

        KeyPath = swift_getKeyPath();
        LOBYTE(v57[0]) = v48;
        *(&v57[0] + 1) = v49;
        sub_147EC(&qword_B8F88, &qword_8A210);
        sub_814F8();
        v48 = *(&v61 + 1);
        v49 = v61;
        v46 = v62[0];
        type metadata accessor for StorageShared();
        sub_51240(&qword_B7A50, type metadata accessor for StorageShared);
        *(v26 + 2) = sub_80E68();
        *(v26 + 3) = v30;
        LOBYTE(v57[0]) = 1;
        sub_814C8();
        v31 = *(&v61 + 1);
        v26[56] = v61;
        *(v26 + 8) = v31;
        v32 = *(v52 + 36);
        v33 = type metadata accessor for Application();
        (*(*(v33 - 8) + 56))(v23, 1, 1, v33);
        sub_14F6C(v23, v21, &qword_B7E50, &qword_8A3F0);
        sub_814C8();
        sub_14FD4(v23, &qword_B7E50, &qword_8A3F0);
        *v26 = KeyPath;
        v26[8] = 1;
        v34 = v48;
        *(v26 + 4) = v49;
        *(v26 + 5) = v34;
        v26[48] = v46;
        sub_512A8(v26, v13, type metadata accessor for AppsListView);
        swift_storeEnumTagMultiPayload();
        sub_147EC(&qword_B8FC8, &qword_8A228);
        sub_51240(&qword_B8FB8, type metadata accessor for AppsListView);
        sub_14F24(&qword_B8FC0, &qword_B8FC8, &qword_8A228);
        v35 = v51;
        sub_810A8();
        sub_14F6C(v35, v10, &qword_B8FB0, &qword_8A220);
        swift_storeEnumTagMultiPayload();
        sub_50DDC();
        sub_14F24(&qword_B8FD0, &qword_B8FD8, &unk_8A230);
        sub_810A8();
        sub_14FD4(v35, &qword_B8FB0, &qword_8A220);
        return sub_51310(v26, type metadata accessor for AppsListView);
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_80C68();

    if (v61 == 1)
    {
      v37 = sub_81008();
      v58 = 1;
      sub_50128(v59);
      *(v57 + 7) = v59[0];
      *(&v57[1] + 7) = v59[1];
      *(&v57[2] + 7) = v60[0];
      v57[3] = *(v60 + 9);
      v61 = v37;
      v62[0] = v58;
      *&v62[1] = v57[0];
      *&v62[17] = v57[1];
      *&v62[33] = v57[2];
      *&v62[49] = *(v60 + 9);
      v38 = *v62;
      *v13 = v37;
      *(v13 + 1) = v38;
      v39 = *&v62[32];
      *(v13 + 2) = *&v62[16];
      *(v13 + 3) = v39;
      *(v13 + 4) = *&v62[48];
      v13[80] = v62[64];
      swift_storeEnumTagMultiPayload();
      sub_14F6C(&v61, v57, &qword_B8FC8, &qword_8A228);
      sub_147EC(&qword_B8FC8, &qword_8A228);
      sub_51240(&qword_B8FB8, type metadata accessor for AppsListView);
      sub_14F24(&qword_B8FC0, &qword_B8FC8, &qword_8A228);
      v40 = v51;
      sub_810A8();
      sub_14F6C(v40, v10, &qword_B8FB0, &qword_8A220);
      swift_storeEnumTagMultiPayload();
      sub_50DDC();
      sub_14F24(&qword_B8FD0, &qword_B8FD8, &unk_8A230);
      sub_810A8();
      sub_14FD4(&v61, &qword_B8FC8, &qword_8A228);
      v41 = v40;
      v42 = &qword_B8FB0;
      v43 = &qword_8A220;
    }

    else
    {
      *v7 = sub_81008();
      *(v7 + 1) = 0;
      v7[16] = 1;
      v44 = sub_147EC(&qword_B9070, &qword_8A440);
      sub_50254(&v7[*(v44 + 44)]);
      sub_14F6C(v7, v10, &qword_B8FD8, &unk_8A230);
      swift_storeEnumTagMultiPayload();
      sub_50DDC();
      sub_14F24(&qword_B8FD0, &qword_B8FD8, &unk_8A230);
      sub_810A8();
      v41 = v7;
      v42 = &qword_B8FD8;
      v43 = &unk_8A230;
    }

    return sub_14FD4(v41, v42, v43);
  }

  else
  {
    type metadata accessor for StorageShared();
    sub_51240(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_50128@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  v5 = sub_81288();
  v7 = v6;
  v9 = v8 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8 & 1;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_16C28(v5, v6, v8 & 1);

  sub_15034(v5, v7, v9);
}

uint64_t sub_50254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_147EC(&qword_B7B68, &unk_8A470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = sub_147EC(&qword_B9078, &qword_8BEC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_80D28();
  sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470);
  sub_81398();
  (*(v3 + 8))(v6, v2);
  sub_14F6C(v13, v11, &qword_B9078, &qword_8BEC0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v14 = sub_147EC(&qword_B9080, &qword_8A480);
  sub_14F6C(v11, a1 + *(v14 + 48), &qword_B9078, &qword_8BEC0);
  v15 = a1 + *(v14 + 64);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_14FD4(v13, &qword_B9078, &qword_8BEC0);
  return sub_14FD4(v11, &qword_B9078, &qword_8BEC0);
}

uint64_t sub_5048C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_147EC(&qword_B9018, &qword_8A2D0);
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = (&v12 - v4);
  *v5 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v6 = v2[9];
  *(v5 + v6) = swift_getKeyPath();
  sub_147EC(&qword_B8680, &unk_895A0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[10]) = 1;
  v7 = (v5 + v2[11]);
  *v7 = sub_5066C;
  v7[1] = 0;
  v8 = (v5 + v2[12]);
  *v8 = sub_506FC;
  v8[1] = 0;
  sub_14F24(&qword_B9010, &qword_B9018, &qword_8A2D0);
  sub_81398();
  sub_14FD4(v5, &qword_B9018, &qword_8A2D0);
  v9 = sub_81038();
  result = sub_147EC(&qword_B8FF0, &qword_8A2C0);
  v11 = (a1 + *(result + 36));
  *v11 = v9;
  v11[1] = sub_50920;
  v11[2] = 0;
  return result;
}

uint64_t sub_5066C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HiddenAppsListWrapper();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_80AF8();
  v2 = sub_80B08();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_506FC()
{
  sub_432C8();

  return sub_814B8();
}

uint64_t sub_50780@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_50854@<X0>(uint64_t a1@<X8>)
{
  if (qword_B7868 != -1)
  {
    swift_once();
  }

  v2 = qword_BCFD8;
  v3 = unk_BCFE0;
  v5 = qword_BCFF0;
  v4 = unk_BCFF8;
  v6 = byte_BCFE8;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = 2;
  sub_2092C(v2, v3, v6);
}

uint64_t sub_50928(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = a1;
    sub_80C68();

    sub_147EC(&qword_B81A0, &qword_88E90);
    sub_147EC(&qword_B9038, &qword_8A2E0);
    sub_14F24(&qword_B9050, &qword_B81A0, &qword_88E90);
    sub_510DC();
    sub_51240(&qword_B9058, type metadata accessor for Application);
    return sub_81608();
  }

  else
  {
    type metadata accessor for StorageShared();
    sub_51240(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_50AF4(Swift::String *a1)
{
  v2 = type metadata accessor for AppListView();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_512A8(a1, v6 + *(v4 + 20), type metadata accessor for Application);
  type metadata accessor for StorageShared();
  sub_51240(&qword_B7A50, type metadata accessor for StorageShared);
  *v6 = sub_80E68();
  v6[1] = v7;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_81D08(17);

  v9 = 0x746163696C707041;
  v10 = 0xEF2D776F526E6F69;
  sub_81978(*a1);
  sub_51240(&qword_B9040, type metadata accessor for AppListView);
  sub_81398();

  return sub_51310(v6, type metadata accessor for AppListView);
}

unint64_t sub_50CD0()
{
  result = qword_B8F98;
  if (!qword_B8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8F98);
  }

  return result;
}

unint64_t sub_50D24()
{
  result = qword_B8FA0;
  if (!qword_B8FA0)
  {
    sub_14E2C(&qword_B8F90, &qword_8A218);
    sub_50DDC();
    sub_14F24(&qword_B8FD0, &qword_B8FD8, &unk_8A230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8FA0);
  }

  return result;
}

unint64_t sub_50DDC()
{
  result = qword_B8FA8;
  if (!qword_B8FA8)
  {
    sub_14E2C(&qword_B8FB0, &qword_8A220);
    sub_51240(&qword_B8FB8, type metadata accessor for AppsListView);
    sub_14F24(&qword_B8FC0, &qword_B8FC8, &qword_8A228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8FA8);
  }

  return result;
}

unint64_t sub_50ED4()
{
  result = qword_B8FF8;
  if (!qword_B8FF8)
  {
    sub_14E2C(&qword_B8FF0, &qword_8A2C0);
    sub_50F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8FF8);
  }

  return result;
}

unint64_t sub_50F60()
{
  result = qword_B9000;
  if (!qword_B9000)
  {
    sub_14E2C(&qword_B9008, &qword_8A2C8);
    sub_14F24(&qword_B9010, &qword_B9018, &qword_8A2D0);
    sub_51240(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9000);
  }

  return result;
}

uint64_t sub_51048()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  return sub_50928(*(v0 + 16));
}

unint64_t sub_51058()
{
  result = qword_B9028;
  if (!qword_B9028)
  {
    sub_14E2C(&qword_B9020, &qword_8A2D8);
    sub_510DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9028);
  }

  return result;
}

unint64_t sub_510DC()
{
  result = qword_B9030;
  if (!qword_B9030)
  {
    sub_14E2C(&qword_B9038, &qword_8A2E0);
    sub_51240(&qword_B9040, type metadata accessor for AppListView);
    sub_51240(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9030);
  }

  return result;
}

uint64_t sub_511C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8F60, &qword_8A1E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_512A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_51310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_513B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  v6 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_51454, a4, 0);
}

uint64_t sub_51454()
{
  v22 = v0;
  v1 = v0[19];
  swift_beginAccess();
  sub_555C4(v1 + 160, (v0 + 2));
  if (v0[5])
  {
    v2 = v0[19];
    sub_3C978((v0 + 2), (v0 + 7));
    sub_14FD4((v0 + 2), &qword_B8398, &qword_89420);
    v3 = sub_22CB8(v0 + 7, v0[10]);
    swift_beginAccess();
    v4 = *(v2 + 120);
    v5 = *(v4 + 16);
    if (v5)
    {
      v20 = v3;
      v6 = sub_3445C(v5, 0);
      v7 = sub_3A1AC(&v21, v6 + 32, v5, v4);

      result = sub_208C0();
      if (v7 != v5)
      {
        __break(1u);
        return result;
      }

      v9 = v6;
      v3 = v20;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v11 = v0[20];
    v12 = v0[18];
    v13 = *v3;
    v14 = sub_81AB8();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    sub_81A88();
    v15 = v13;
    v16 = sub_81A78();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;
    v17[5] = v9;
    sub_68AE4(0, 0, v11, &unk_8A5B0, v17);

    *v12 = 0;
    sub_20FD0(v0 + 7);
  }

  else
  {
    v10 = v0[18];
    sub_14FD4((v0 + 2), &qword_B8398, &qword_89420);
    *v10 = 1;
  }

  v18 = v0[20];

  v19 = v0[1];

  return v19();
}

void (*sub_516C0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_51784;
}

void sub_51784(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = sub_81AB8();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_3CA84();
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v7;
    v8[4] = v5;
    swift_retain_n();
    sub_68DE4(0, 0, v4, &unk_8A638, v8);
  }

  free(v4);

  free(v3);
}

uint64_t sub_51888()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = sub_3AEAC(_swiftEmptyArrayStorage);
  *(v0 + 128) = [objc_allocWithZone(MSPStorageTipsManager) init];
  *(v0 + 136) = _swiftEmptyArrayStorage;
  *(v0 + 208) = 0;
  *(v0 + 144) = vnegq_f64(0);
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 185) = 0u;
  *(v0 + 216) = 1;
  v1 = [objc_opt_self() recommendationsShared];
  *(v0 + 112) = v1;
  [v1 setDelegate:v0];
  return v0;
}