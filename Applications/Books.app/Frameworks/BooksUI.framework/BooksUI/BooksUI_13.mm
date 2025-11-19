void *sub_14EC54(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_2EF0(a1, a2);
  v5 = *v3;
  v6 = sub_264CF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_A7C18(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_14EDF4()
{
  v1 = v0;
  sub_2EF0(&qword_3161A8, &qword_267F88);
  v2 = *v0;
  v3 = sub_264CF0();
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_F7E4(*(v2 + 48) + v17, v22);
        sub_30CC(*(v2 + 56) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v22[0];
        v20 = v22[1];
        *(v18 + 32) = v23;
        *v18 = v19;
        *(v18 + 16) = v20;
        result = sub_F7CC(v21, *(v4 + 56) + v17);
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

void *sub_14EF8C()
{
  v1 = v0;
  v2 = _s8RatioKeyVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2EF0(&qword_3161A0, &qword_267F80);
  v7 = *v0;
  v8 = sub_264CF0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v26 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        sub_FA58(*(v7 + 48) + v23, v6);
        v24 = *(*(v7 + 56) + 8 * v22);
        result = sub_FB18(v6, *(v9 + 48) + v23);
        *(*(v9 + 56) + 8 * v22) = v24;
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v26;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_14F1A0()
{
  sub_2EF0(&qword_31E960, &qword_278FD8);
  v28 = v0;
  v1 = *v0;
  v29 = sub_264CF0();
  if (*(v1 + 16))
  {
    result = (v29 + 64);
    v3 = ((1 << *(v29 + 32)) + 63) >> 6;
    if (v29 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v29 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 48;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = v19[5];
        v26 = (*(v29 + 48) + v15);
        *v26 = v18;
        v26[1] = v17;
        v27 = (*(v29 + 56) + v14);
        *v27 = v20;
        v27[1] = v21;
        v27[2] = v22;
        v27[3] = v23;
        v27[4] = v24;
        v27[5] = v25;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v28 = v29;
  }

  return result;
}

void *sub_14F388()
{
  v1 = v0;
  sub_2EF0(&qword_3160F0, &unk_267EE0);
  v2 = *v0;
  v3 = sub_264CF0();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        result = sub_14FF5C(&v32, v31);
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

void *sub_14F5C4(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_2EF0(a1, a2);
  v5 = *v3;
  v6 = sub_264CF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_30CC(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_14F77C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2EF0(a1, a2);
  v4 = *v2;
  v5 = sub_264CF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_14F8D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_30CC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_14F920@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_30CC(*(v3 + 56) + 40 * v13, v22);
    *&v24 = v16;
    *(&v24 + 1) = v15;
    sub_F7CC(v22, &v25);

    v18 = *(&v24 + 1);
    v19 = v24;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v25;
      v22[2] = v26;
      v23 = v27;
      v21(v22);
      return sub_8E80(v22, &qword_320380, &qword_27C460);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_14FA98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v6) = a4;
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v49 = a1;
  v50 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v51 = v8;
  v52 = 0;
  v53 = v11 & v9;
  v54 = a2;
  v55 = a3;

  sub_14F920(&v46);
  v12 = v47;
  if (!v47)
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_F7CC(v48, v45);
  v14 = *a5;
  result = sub_D410(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v21) = v16;
  if (v14[3] < v20)
  {
    sub_14E67C(v20, v6 & 1, &qword_316150, &qword_267F40, sub_FBD4);
    v22 = *a5;
    result = sub_D410(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_264FB0();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    v27 = result;
    sub_14F5C4(&qword_316150, &qword_267F40, sub_FBD4);
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 40 * v25);
    sub_3080(v26);
    sub_F7CC(v45, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_F7CC(v45, v24[7] + 40 * result);
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_14F920(&v46);
    v6 = v47;
    if (v47)
    {
      v12 = 40;
      v13 = &qword_267F40;
      do
      {
        v21 = v46;
        sub_F7CC(v48, v45);
        v33 = *a5;
        result = sub_D410(v21, v6);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        v38 = v34;
        if (v33[3] < v37)
        {
          sub_14E67C(v37, 1, &qword_316150, &qword_267F40, sub_FBD4);
          v39 = *a5;
          result = sub_D410(v21, v6);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        v41 = *a5;
        if (v38)
        {
          v31 = result;

          v32 = (v41[7] + 40 * v31);
          sub_3080(v32);
          sub_F7CC(v45, v32);
        }

        else
        {
          v41[(result >> 6) + 8] |= 1 << result;
          v42 = (v41[6] + 16 * result);
          *v42 = v21;
          v42[1] = v6;
          result = sub_F7CC(v45, v41[7] + 40 * result);
          v43 = v41[2];
          v19 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v41[2] = v44;
        }

        sub_14F920(&v46);
        v6 = v47;
      }

      while (v47);
    }

LABEL_25:
    sub_141650();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_14FEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320388, &qword_27C468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14FFB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.impressionable(_:position:)()
{
  v0 = sub_263F70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263F60();
  sub_262910();
  return (*(v1 + 8))(v4, v0);
}

uint64_t PDFCoverEffect.init(shadowScale:cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(type metadata accessor for PDFCoverEffect() + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t type metadata accessor for PDFCoverEffect()
{
  result = qword_320440;
  if (!qword_320440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_150224@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PDFCoverEffect();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261180();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t PDFCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for PDFCoverEffect();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_2EF0(&qword_320398, &qword_27C500);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v18 - v12;
  (*(v9 + 16))(&v18 - v12, a1, v8, v11);
  sub_150980(v2, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  result = sub_1509E8(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *a2 = sub_150A4C;
  a2[1] = v16;
  return result;
}

double sub_15060C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a2;
  v40 = a3;
  v39 = sub_261180();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = sub_2EF0(&qword_3204B8, &qword_27C690);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v37 - v13);
  sub_261420();
  v16 = v15;
  *v14 = sub_263530();
  v14[1] = v17;
  v18 = sub_2EF0(&qword_3204C0, &qword_27C698);
  sub_150A50(a1, v14 + *(v18 + 44), v16);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v19 = v41;
  LOBYTE(a1) = v42;
  v20 = v43;
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v48 = v42;
  v47 = v44;
  v24 = v14 + *(sub_2EF0(&qword_3204C8, &qword_27C6A0) + 36);
  *v24 = xmmword_27C480;
  *(v24 + 2) = v19;
  v24[24] = a1;
  *(v24 + 4) = v20;
  v24[40] = v21;
  *(v24 + 6) = v22;
  *(v24 + 7) = v23;
  v25 = *(v37 + 8);
  v26 = v14 + *(v11 + 44);
  v27 = *(sub_2617E0() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_261DD0();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v25;
  *(v26 + 1) = v25;
  *&v26[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_262F80();
  sub_150224(v9);
  v31 = v38;
  v30 = v39;
  (*(v4 + 104))(v38, enum case for ColorScheme.dark(_:), v39);
  sub_261170();
  v32 = *(v4 + 8);
  v32(v31, v30);
  v32(v9, v30);
  v33 = sub_263000();

  v34 = v40;
  sub_15238C(v14, v40);
  v35 = v34 + *(sub_2EF0(&qword_3204D0, &qword_27C6A8) + 36);
  *v35 = v33;
  result = 8.0;
  *(v35 + 8) = xmmword_26BA30;
  *(v35 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_150980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFCoverEffect();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1509E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFCoverEffect();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_150A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v118 = a2;
  v5 = sub_2EF0(&qword_3204D8, &qword_27C6B0);
  v6 = *(v5 - 8);
  v116 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v117 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = &v101 - v10;
  v11 = sub_2EF0(&qword_3204E0, &qword_27C6B8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v115 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v101 - v16;
  v18 = sub_2EF0(&qword_3204E8, &qword_27C6C0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v121 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v101 - v23;
  v25 = sub_2EF0(&qword_3204F0, &qword_27C6C8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v120 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v101 - v30;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v32 = sub_2EF0(&qword_320398, &qword_27C500);
  v33 = *(*(v32 - 8) + 16);
  v122 = v31;
  v33(v31, a1, v32);
  v34 = &v31[*(v26 + 44)];
  v35 = v127;
  *v34 = v126;
  *(v34 + 1) = v35;
  *(v34 + 2) = v128;
  v108 = sub_2EF0(&qword_319268, &qword_279380);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_269100;
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v36 + 32) = sub_263450();
  *(v36 + 40) = v37;
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v36 + 48) = sub_263450();
  *(v36 + 56) = v38;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v39 = *(sub_2EF0(&qword_319250, &qword_279370) + 36);
  v40 = enum case for BlendMode.multiply(_:);
  v41 = sub_263640();
  (*(*(v41 - 8) + 104))(&v24[v39], v40, v41);
  v42 = *&v124[63];
  *(v24 + 2) = *&v124[55];
  *(v24 + 3) = v42;
  *(v24 + 4) = *&v124[71];
  v43 = v125;
  v44 = *&v124[47];
  *v24 = *&v124[39];
  *(v24 + 1) = v44;
  *(v24 + 10) = v43;
  *(v24 + 11) = 0x3FD999999999999ALL;
  v119 = v24;
  KeyPath = swift_getKeyPath();
  v46 = &v24[*(v19 + 44)];
  v113 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  v47 = *(v113 + 28);
  v48 = enum case for ColorScheme.light(_:);
  v111 = enum case for ColorScheme.light(_:);
  v110 = sub_261180();
  v49 = *(v110 - 8);
  v109 = *(v49 + 104);
  v112 = v49 + 104;
  v109(v46 + v47, v48, v110);
  *v46 = KeyPath;
  v107 = sub_262170();
  v50 = *(v107 + 20);
  v51 = enum case for RoundedCornerStyle.continuous(_:);
  v104 = sub_261DD0();
  v52 = *(v104 - 8);
  v103 = *(v52 + 104);
  v105 = v52 + 104;
  v103(&v17[v50], v51, v104);
  sub_261FD0();
  *v17 = v53;
  *(v17 + 1) = v54;
  *(v17 + 2) = v55;
  *(v17 + 3) = v56;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v57 = &v17[*(sub_2EF0(&qword_3204F8, &qword_27C6D0) + 36)];
  v58 = v130;
  *v57 = v129;
  *(v57 + 1) = v58;
  *(v57 + 2) = v131;
  sub_263720();
  v60 = v59;
  v62 = v61;
  v63 = &v17[*(sub_2EF0(&qword_320500, &qword_27C6D8) + 36)];
  *v63 = vdupq_n_s64(0x3FEE666666666666uLL);
  v63[1].i64[0] = v60;
  v63[1].i64[1] = v62;
  sub_263720();
  v65 = v64;
  v67 = v66;
  v68 = &v17[*(sub_2EF0(&qword_320508, &qword_27C6E0) + 36)];
  *v68 = xmmword_27C490;
  *(v68 + 1) = xmmword_27C4A0;
  *(v68 + 4) = v65;
  *(v68 + 5) = v67;
  *(v68 + 3) = xmmword_27C4B0;
  v69 = *(sub_2EF0(&qword_320510, &qword_27C6E8) + 36);
  v106 = v17;
  v70 = &v17[v69];
  *v70 = 0x4028000000000000;
  v70[8] = 0;
  *&v17[*(v12 + 44)] = 0x3FD3333333333333;
  v102 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  v71 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v73 = v72;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_267D20;
  sub_262F80();
  *(v74 + 32) = sub_263450();
  *(v74 + 40) = v75;
  sub_262F80();
  sub_263000();

  *(v74 + 48) = sub_263450();
  *(v74 + 56) = v76;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  *(v74 + 64) = sub_263450();
  *(v74 + 72) = v77;
  sub_2636E0();
  sub_2636F0();
  sub_263460();
  sub_261590();
  v135[0] = v132;
  v135[1] = v133;
  *&v136 = v134;
  *(&v136 + 1) = 0x3FC3333333333333;
  LOBYTE(v137) = 1;
  *(&v137 + 1) = v71;
  *&v124[27] = v137;
  *&v124[11] = v133;
  *&v124[19] = v136;
  v138 = v73;
  *&v124[35] = v73;
  *&v124[3] = v132;
  v139[0] = v132;
  v139[1] = v133;
  v140 = v134;
  v141 = 0x3FC3333333333333;
  v142 = 1;
  v143 = v71;
  v144 = v73;
  sub_8198(v135, v123, &qword_320518, &qword_27C6F0);
  sub_8E80(v139, &qword_320518, &qword_27C6F0);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v78 = sub_2EF0(&qword_320520, &qword_27C6F8);
  v79 = v114;
  v80 = &v114[*(v78 + 36)];
  v103(&v80[*(v107 + 20)], v51, v104);
  sub_261FD0();
  *v80 = v81;
  *(v80 + 1) = v82;
  *(v80 + 2) = v83;
  *(v80 + 3) = v84;
  *&v80[*(sub_2EF0(&qword_320528, &qword_27C700) + 36)] = 256;
  v85 = *v124;
  *(v79 + 26) = *&v124[8];
  v86 = *&v124[24];
  *(v79 + 42) = *&v124[16];
  *(v79 + 58) = v86;
  *(v79 + 72) = *&v124[31];
  *(v79 + 10) = v85;
  v87 = v123[1];
  *(v79 + 88) = v123[0];
  *v79 = v102;
  *(v79 + 8) = 256;
  *(v79 + 104) = v87;
  *(v79 + 120) = v123[2];
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v88 = sub_263000();

  v89 = v79 + *(sub_2EF0(&qword_320530, &qword_27C708) + 36);
  *v89 = v88;
  *(v89 + 8) = a3 * 0.25;
  *(v89 + 16) = 0;
  *(v89 + 24) = a3 * 0.02;
  v90 = swift_getKeyPath();
  v91 = (v79 + *(v116 + 44));
  v109(v91 + *(v113 + 28), v111, v110);
  *v91 = v90;
  v92 = v120;
  sub_8198(v122, v120, &qword_3204F0, &qword_27C6C8);
  v93 = v121;
  sub_8198(v119, v121, &qword_3204E8, &qword_27C6C0);
  v94 = v106;
  v95 = v115;
  sub_8198(v106, v115, &qword_3204E0, &qword_27C6B8);
  v96 = v117;
  sub_8198(v79, v117, &qword_3204D8, &qword_27C6B0);
  v97 = v92;
  v98 = v118;
  sub_8198(v97, v118, &qword_3204F0, &qword_27C6C8);
  v99 = sub_2EF0(&qword_320538, &unk_27C710);
  sub_8198(v93, v98 + v99[12], &qword_3204E8, &qword_27C6C0);
  sub_8198(v95, v98 + v99[16], &qword_3204E0, &qword_27C6B8);
  sub_8198(v96, v98 + v99[20], &qword_3204D8, &qword_27C6B0);
  sub_8E80(v79, &qword_3204D8, &qword_27C6B0);
  sub_8E80(v94, &qword_3204E0, &qword_27C6B8);
  sub_8E80(v119, &qword_3204E8, &qword_27C6C0);
  sub_8E80(v122, &qword_3204F0, &qword_27C6C8);
  sub_8E80(v96, &qword_3204D8, &qword_27C6B0);
  sub_8E80(v95, &qword_3204E0, &qword_27C6B8);
  sub_8E80(v121, &qword_3204E8, &qword_27C6C0);
  return sub_8E80(v120, &qword_3204F0, &qword_27C6C8);
}

uint64_t sub_151634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_320398, &qword_27C500);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - v14;
  (*(v11 + 16))(&v20 - v14, a1, v10, v13);
  sub_150980(v4, v9);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v15, v10);
  result = sub_1509E8(v9, v18 + v17);
  *a3 = sub_152400;
  a3[1] = v18;
  return result;
}

uint64_t sub_15180C(uint64_t a1)
{
  result = sub_1519DC(&qword_3203E0, type metadata accessor for PDFCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_151878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_151910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1519DC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_151A78@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_2627A0();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMinY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetWidth(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinY(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetWidth(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetWidth(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetWidth(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMinY(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetWidth(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMaxX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetWidth(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetWidth(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetWidth(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetWidth(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetMaxX(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetWidth(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetWidth(v33);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetMaxX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMaxY(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetMinX(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxY(v37);
  sub_262780();
  sub_262790();
  sub_262770();
  sub_262790();
  sub_262770();
  sub_262790();
  sub_262790();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_151DE8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *v5;
  v8 = v5[1];
  sub_151A78(v11, a2, a3, a4, a5);
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

void (*sub_151E50(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

uint64_t sub_151ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_15209C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_151F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_15209C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_151FA0(uint64_t a1)
{
  v2 = sub_15209C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_151FF0()
{
  result = qword_3204A0;
  if (!qword_3204A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3204A0);
  }

  return result;
}

unint64_t sub_152048()
{
  result = qword_3204A8;
  if (!qword_3204A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3204A8);
  }

  return result;
}

unint64_t sub_15209C()
{
  result = qword_3204B0;
  if (!qword_3204B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3204B0);
  }

  return result;
}

uint64_t sub_1520F0()
{
  v1 = sub_2EF0(&qword_320398, &qword_27C500);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for PDFCoverEffect() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v5[8];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v8 + v6, v9);
  }

  else
  {
    v10 = *(v8 + v6);
  }

  return swift_deallocObject();
}

double sub_15229C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_2EF0(&qword_320398, &qword_27C500) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PDFCoverEffect() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_15060C(v1 + v4, v7, a1);
}

uint64_t sub_15238C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3204B8, &qword_27C690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t static FlowActionDestinationKinds._table.getter()
{
  if (qword_315A58 != -1)
  {
    swift_once();
  }

  sub_2EF0(&qword_320550, &unk_27C720);
  sub_260D20();
  v0 = sub_1524A0(v2);

  return v0;
}

unint64_t sub_1524A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2EF0(&qword_31B6B8, &qword_27C7C0);
    v2 = sub_264D10();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_2EF0(&qword_320558, &qword_27C7C8);
        sub_2EF0(&qword_31B6C8, &qword_27C7D0);
        swift_dynamicCast();
        result = sub_D410(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          *(v2[7] + 8 * v11) = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          *(v2[7] + 8 * result) = v24;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1526C8()
{
  if (qword_315A60 != -1)
  {
    swift_once();
  }

  v0 = qword_320548;
  sub_2EF0(&qword_320560, &qword_27C7D8);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  qword_320540 = v1;
}

uint64_t sub_152760()
{
  sub_2EF0(&qword_320568, &qword_27C7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D20;
  *(inited + 32) = 1684366694;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = &type metadata for FlowAction.FeedDestination;
  *(inited + 56) = &protocol witness table for FlowAction.FeedDestination;
  *(inited + 64) = 0x536472614377656ELL;
  *(inited + 72) = 0xEA00000000007465;
  *(inited + 80) = &type metadata for FlowAction.NewCardSetDestination;
  *(inited + 88) = &protocol witness table for FlowAction.NewCardSetDestination;
  strcpy((inited + 96), "newSingleCard");
  *(inited + 110) = -4864;
  *(inited + 112) = type metadata accessor for FlowAction.NewSingleCardDestination();
  *(inited + 120) = &protocol witness table for FlowAction.NewSingleCardDestination;
  v1 = sub_F368(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_320570, &qword_27C7E8);
  result = swift_arrayDestroy();
  qword_320548 = v1;
  return result;
}

void static FlowActionDestinationKinds.register<A>(_:name:)(uint64_t a1)
{
  if (qword_315A58 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_320540;
  __chkstk_darwin(a1);
  os_unfair_lock_lock((v1 + 24));
  sub_15296C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_15296C(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  result = sub_E2C8(v6, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return result;
}

uint64_t *static FlowActionDestinationKinds._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_263980();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_263840();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_A8C6C(a1);
  if (v11)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    sub_30CC(a2, v34);
    *&v36 = v14;
    *(&v36 + 1) = v15;
    v37 = v16;
    sub_10934(v35);
    sub_2647C0();
    if (v3)
    {
      return sub_A8CF4(v35);
    }

LABEL_7:
    v33 = v36;
    v24 = v36;
    v25 = sub_2E18(v35, v36);
    *(a3 + 24) = v33;
    v26 = sub_10934(a3);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    return sub_3080(v35);
  }

  v18 = sub_A8C6C(a1);
  if (v18)
  {
    v21 = v18;
    v22 = v19;
    v23 = v20;
    sub_30CC(a2, v34);
    result = sub_263810();
    if (v3)
    {
      return result;
    }

    v32 = a2[4];
    sub_2E18(a2, a2[3]);
    sub_265100();
    sub_263970();
    *&v36 = v21;
    *(&v36 + 1) = v22;
    v37 = v23;
    sub_10934(v35);
    sub_263DE0();
    goto LABEL_7;
  }

  v27 = sub_264C10();
  swift_allocError();
  v29 = v28;
  v30 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
  *v29 = a1;
  v31 = a2[4];
  sub_2E18(a2, a2[3]);
  sub_2650E0();
  sub_264BC0(21);

  v35[0] = 60;
  v35[1] = 0xE100000000000000;
  v38._countAndFlagsBits = sub_265260();
  sub_264530(v38);

  v39._object = 0x80000000002917A0;
  v39._countAndFlagsBits = 0xD000000000000012;
  sub_264530(v39);
  sub_264BF0();
  (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
  return swift_willThrow();
}

uint64_t static ListItemMetadata.recommendationsPage(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = sub_2609A0();
  v7 = v6;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  v9 = sub_2609B0();
  v11 = v10;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
  v30[4] = sub_2E5C();
  v12 = swift_allocObject();
  v30[0] = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = 3;
  v29[3] = sub_2EF0(&qword_315B48, &qword_2664C0);
  v29[4] = sub_8E38(&qword_315B50, &qword_315B48, &qword_2664C0);
  v13 = swift_allocObject();
  v29[0] = v13;
  sub_30CC(a1, v13 + 120);
  KeyPath = swift_getKeyPath();
  v33 = 0;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  *(v13 + 16) = KeyPath;
  *(v13 + 82) = 0;
  *(v13 + 88) = v15;
  *(v13 + 96) = 0;
  *(v13 + 104) = v16;
  *(v13 + 112) = 0;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_30CC(a1, v23);
  v24[3] = sub_2EF0(&qword_320578, &qword_27C868);
  v24[4] = sub_8E38(&qword_320580, &qword_320578, &qword_27C868);
  v17 = swift_allocObject();
  v24[0] = v17;
  sub_2E18(v23, v23[3]);
  v18 = sub_260960();
  v20 = v19;
  v21 = swift_getKeyPath();
  *(v17 + 16) = v21;
  *(v17 + 24) = 0;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_39D6C(v21, 0);

  sub_3080(v23);
  sub_3074(v21, 0);

  *(a2 + 272) = 0;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 80) = 0u;
  sub_34A0(v31, a2, &qword_315B58, &unk_266540);
  sub_34A0(v30, a2 + 40, &qword_315B60, &unk_276FA0);
  sub_34A0(v29, a2 + 80, &qword_315B68, &unk_266550);
  sub_34A0(v27, a2 + 160, &qword_315B70, &unk_276FB0);
  sub_34A0(v25, a2 + 200, &qword_315B78, &unk_266560);
  return sub_34A0(v24, a2 + 240, &qword_315B80, &qword_276FC0);
}

uint64_t sub_153144()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_153184()
{
  sub_3060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 82));
  sub_3074(*(v0 + 88), *(v0 + 96));
  sub_3074(*(v0 + 104), *(v0 + 112));
  sub_3080((v0 + 120));

  return swift_deallocObject();
}

uint64_t sub_153214()
{
  sub_3074(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

void ShelfGridBlurEdgeMaskView.init(insets:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0x4028000000000000;
}

void *ShelfGridBlurEdgeMaskView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v3;
  v30 = *(v1 + 32);
  v4 = sub_261D30();
  v28 = 0;
  sub_1533DC(v29, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v32, __src, sizeof(v32));
  sub_8198(__dst, &v25, &qword_320588, &qword_27C8A0);
  sub_8E80(v32, &qword_320588, &qword_27C8A0);
  memcpy(&v27[7], __dst, 0x128uLL);
  v5 = v28;
  v6 = sub_262510();
  sub_2610C0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __src[0] = 0;
  v15 = sub_262520();
  sub_2610C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  result = memcpy((a1 + 17), v27, 0x12FuLL);
  *(a1 + 320) = v6;
  *(a1 + 328) = v8;
  *(a1 + 336) = v10;
  *(a1 + 344) = v12;
  *(a1 + 352) = v14;
  *(a1 + 360) = 0;
  *(a1 + 368) = v15;
  *(a1 + 376) = v17;
  *(a1 + 384) = v19;
  *(a1 + 392) = v21;
  *(a1 + 400) = v23;
  *(a1 + 408) = 0;
  return result;
}

uint64_t sub_1533DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_262FA0();
  v5 = *(a1 + 24);
  v6 = *(a1 + 8) - *(a1 + 32);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_2EF0(&qword_3205C0, &qword_27C958);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269100;
  *(v7 + 32) = sub_262FA0();
  *(v7 + 40) = sub_262F80();
  sub_263470();
  sub_263730();
  sub_263740();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v8 = sub_262F80();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269100;
  *(v9 + 32) = sub_262FA0();
  *(v9 + 40) = sub_262F80();
  sub_263470();
  sub_263740();
  sub_263730();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v10 = sub_262FA0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v35[2] = v20;
  v35[3] = v21;
  v35[4] = v22;
  v35[0] = v18;
  v35[1] = v19;
  v37[0] = v12;
  v37[1] = v13;
  v37[3] = v15;
  v37[4] = v16;
  v37[2] = v14;
  *(a2 + 72) = v19;
  *(a2 + 56) = v18;
  *(a2 + 120) = v22;
  *(a2 + 104) = v21;
  *(a2 + 88) = v20;
  *(a2 + 168) = v13;
  *(a2 + 152) = v12;
  v36 = v23;
  v38 = v17;
  *a2 = v4;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v29;
  *(a2 + 136) = v23;
  *(a2 + 144) = v8;
  *(a2 + 216) = v16;
  *(a2 + 200) = v15;
  *(a2 + 184) = v14;
  *(a2 + 232) = v17;
  *(a2 + 240) = v10;
  *(a2 + 248) = v30;
  *(a2 + 256) = v31;
  *(a2 + 264) = v32;
  *(a2 + 272) = v33;
  *(a2 + 280) = v34;

  sub_8198(v35, v41, &qword_3205C8, &unk_27C960);

  sub_8198(v37, v41, &qword_3205C8, &unk_27C960);
  v39[2] = v14;
  v39[3] = v15;
  v39[4] = v16;
  v40 = v17;
  v39[0] = v12;
  v39[1] = v13;
  sub_8E80(v39, &qword_3205C8, &unk_27C960);

  v41[2] = v20;
  v41[3] = v21;
  v41[4] = v22;
  v42 = v23;
  v41[0] = v18;
  v41[1] = v19;
  sub_8E80(v41, &qword_3205C8, &unk_27C960);
}

uint64_t sub_1537C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1537E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1538A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_153924()
{
  result = qword_3205B0;
  if (!qword_3205B0)
  {
    sub_2F9C(&qword_3205B8, &qword_27C950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3205B0);
  }

  return result;
}

uint64_t sub_153988@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318148, &unk_26AEE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_8198(v2, &v17 - v11, &qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261690();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_153B88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for SingleBookLockupView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_15CF50(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_153D74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for SingleBookLockupView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_15CF50(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_153F60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3205D0, &qword_27CA78);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for SingleBookLockupView();
  sub_8198(v1 + *(v12 + 32), v11, &qword_3205D0, &qword_27CA78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_15CF50(v11, a1, type metadata accessor for FontConstants.SingleBookWidget);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_15414C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SingleBookLockupView() + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

__n128 SingleBookLockupView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SingleBookLockupView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_3205D0, &qword_27CA78);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[9];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a2 + v4[10];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a2 + v4[11];
  v12 = *(a1 + 112);
  *(v11 + 6) = *(a1 + 96);
  *(v11 + 7) = v12;
  *(v11 + 8) = *(a1 + 128);
  v11[144] = *(a1 + 144);
  v13 = *(a1 + 48);
  *(v11 + 2) = *(a1 + 32);
  *(v11 + 3) = v13;
  v14 = *(a1 + 80);
  *(v11 + 4) = *(a1 + 64);
  *(v11 + 5) = v14;
  result = *a1;
  v16 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 1) = v16;
  return result;
}

uint64_t SingleBookLockupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_2EF0(&qword_3205D8, &qword_27CAD0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v32 - v3;
  v5 = sub_2EF0(&qword_3205E0, &qword_27CAD8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_2EF0(&qword_3205E8, &qword_27CAE0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  sub_154750(v4);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v4, v9, &qword_3205D8, &qword_27CAD0);
  v15 = &v9[*(v6 + 44)];
  v16 = v43;
  *(v15 + 4) = v42;
  *(v15 + 5) = v16;
  *(v15 + 6) = v44;
  v17 = v39;
  *v15 = v38;
  *(v15 + 1) = v17;
  v18 = v41;
  *(v15 + 2) = v40;
  *(v15 + 3) = v18;
  KeyPath = swift_getKeyPath();
  v37 = 0;
  v20 = swift_getKeyPath();
  v36 = 0;
  v21 = swift_getKeyPath();
  v35 = 0;
  v22 = swift_getKeyPath();
  v34 = 0;
  v23 = v37;
  v24 = v36;
  v25 = v35;
  sub_22148(v9, v14, &qword_3205E0, &qword_27CAD8);
  v26 = &v14[*(v11 + 44)];
  *v26 = KeyPath;
  v26[8] = v23;
  *(v26 + 2) = v20;
  v26[24] = v24;
  *(v26 + 4) = v21;
  v26[40] = v25;
  *(v26 + 6) = v22;
  v26[56] = 0;
  *(v26 + 57) = 1;
  v27 = sub_2EF0(&qword_3205F0, &unk_27CB60);
  v28 = v33;
  v29 = (v33 + *(v27 + 36));
  v30 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  sub_155154(v29 + *(v30 + 28));
  *v29 = swift_getKeyPath();
  return sub_22148(v14, v28, &qword_3205E8, &qword_27CAE0);
}

uint64_t sub_154750@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v97 = sub_2EF0(&qword_320728, &qword_27CC40);
  v2 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v4 = &v85 - v3;
  v98 = sub_2EF0(&qword_320740, &qword_27CC50);
  v5 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v99 = &v85 - v6;
  v96 = sub_2EF0(&qword_320708, &qword_27CC30);
  v7 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v91 = (&v85 - v8);
  v94 = sub_2EF0(&qword_320748, &qword_27CC58);
  v9 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v95 = &v85 - v10;
  v11 = type metadata accessor for SizeConstants.Spacing(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SizeConstants(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2EF0(&qword_3206F8, &qword_27CC28);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v89 = (&v85 - v21);
  v93 = sub_2EF0(&qword_3206E8, &qword_27CC20);
  v22 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v88 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v90 = &v85 - v25;
  v26 = sub_261690();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v85 - v32;
  v34 = sub_2EF0(&qword_3206D8, &qword_27CC18);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v92 = &v85 - v36;
  v37 = v1;
  if (sub_15414C())
  {
    v86 = v18;
    v87 = v34;
    sub_153988(v33);
    (*(v27 + 104))(v30, enum case for DynamicTypeSize.xxxLarge(_:), v26);
    sub_15CEF0(&qword_317538, &type metadata accessor for DynamicTypeSize);
    v38 = sub_264360();
    v39 = *(v27 + 8);
    v39(v30, v26);
    v39(v33, v26);
    v40 = sub_261E60();
    if (v38)
    {
      v41 = v91;
      *v91 = v40;
      *(v41 + 8) = 0;
      *(v41 + 16) = 1;
      v42 = sub_2EF0(&qword_320758, &qword_27CCE8);
      sub_1571A0(v37, v41 + *(v42 + 44));
      v43 = sub_262560();
      v44 = v86;
      sub_153B88(v86);
      sub_15CF50(v44, v14, type metadata accessor for SizeConstants.Environment);
      sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
      sub_2610C0();
      v45 = v95;
      v46 = v41 + *(v96 + 36);
      *v46 = v43;
      *(v46 + 8) = v47;
      *(v46 + 16) = v48;
      *(v46 + 24) = v49;
      *(v46 + 32) = v50;
      *(v46 + 40) = 0;
      sub_8198(v41, v45, &qword_320708, &qword_27CC30);
      swift_storeEnumTagMultiPayload();
      sub_15C6F0();
      sub_15C7A8();
      v51 = v92;
      sub_261F80();
      sub_8E80(v41, &qword_320708, &qword_27CC30);
      v52 = v99;
    }

    else
    {
      v66 = v89;
      *v89 = v40;
      *(v66 + 8) = 0;
      *(v66 + 16) = 1;
      v67 = sub_2EF0(&qword_320750, &qword_27CCD8);
      sub_156488(v37, v66 + *(v67 + 44));
      sub_2EF0(qword_31B050, &qword_27CCE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_269100;
      v69 = sub_262510();
      *(inited + 32) = v69;
      v70 = sub_262520();
      *(inited + 33) = v70;
      v71 = sub_262540();
      sub_262540();
      if (sub_262540() != v69)
      {
        v71 = sub_262540();
      }

      sub_262540();
      if (sub_262540() != v70)
      {
        v71 = sub_262540();
      }

      v52 = v99;
      v72 = v86;
      sub_153B88(v86);
      sub_15CF50(v72, v14, type metadata accessor for SizeConstants.Environment);
      sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
      sub_2610C0();
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v81 = v88;
      sub_22148(v66, v88, &qword_3206F8, &qword_27CC28);
      v82 = v81 + *(v93 + 36);
      *v82 = v71;
      *(v82 + 8) = v74;
      *(v82 + 16) = v76;
      *(v82 + 24) = v78;
      *(v82 + 32) = v80;
      *(v82 + 40) = 0;
      v83 = v90;
      sub_22148(v81, v90, &qword_3206E8, &qword_27CC20);
      sub_8198(v83, v95, &qword_3206E8, &qword_27CC20);
      swift_storeEnumTagMultiPayload();
      sub_15C6F0();
      sub_15C7A8();
      v51 = v92;
      sub_261F80();
      sub_8E80(v83, &qword_3206E8, &qword_27CC20);
    }

    v63 = &qword_3206D8;
    v64 = &qword_27CC18;
    sub_8198(v51, v52, &qword_3206D8, &qword_27CC18);
    swift_storeEnumTagMultiPayload();
    sub_15C664();
    sub_15C860();
    sub_261F80();
    v65 = v51;
  }

  else
  {
    v53 = sub_261D10();
    v54 = sub_2EF0(&qword_320738, &qword_27CC48);
    v55 = &v4[v54[11]];
    *v55 = swift_getKeyPath();
    v55[8] = 0;
    v56 = &v4[v54[12]];
    *v56 = swift_getKeyPath();
    v56[8] = 0;
    v57 = &v4[v54[13]];
    *v57 = swift_getKeyPath();
    v57[8] = 0;
    *v4 = v53;
    v4[8] = 1;
    sub_1553D8(v37, &v4[v54[10]]);
    LOBYTE(v54) = sub_262560();
    sub_153B88(v18);
    sub_15CF50(v18, v14, type metadata accessor for SizeConstants.Environment);
    sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v58 = &v4[*(v97 + 36)];
    *v58 = v54;
    *(v58 + 1) = v59;
    *(v58 + 2) = v60;
    *(v58 + 3) = v61;
    *(v58 + 4) = v62;
    v58[40] = 0;
    v63 = &qword_320728;
    v64 = &qword_27CC40;
    sub_8198(v4, v99, &qword_320728, &qword_27CC40);
    swift_storeEnumTagMultiPayload();
    sub_15C664();
    sub_15C860();
    sub_261F80();
    v65 = v4;
  }

  return sub_8E80(v65, v63, v64);
}

uint64_t sub_155154@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v20 - v10);
  v12 = type metadata accessor for SingleBookLockupView();
  if (*(v1 + *(v12 + 44) + 144) == 1)
  {
    v13 = enum case for ColorScheme.dark(_:);
    v14 = sub_261180();
    v15 = *(*(v14 - 8) + 104);

    return v15(a1, v13, v14);
  }

  else
  {
    sub_8198(v1 + *(v12 + 28), v11, &qword_316DC0, &qword_2691C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = sub_261180();
      return (*(*(v17 - 8) + 32))(a1, v11, v17);
    }

    else
    {
      v18 = *v11;
      sub_264900();
      v19 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();

      return (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t sub_1553D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_2EF0(&qword_3208A8, &qword_27CFF0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = sub_2EF0(&qword_320870, &qword_27CF90);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = (a1 + *(type metadata accessor for SingleBookLockupView() + 44));
  v18 = v17[15];
  sub_2E18(v17 + 11, v17[14]);
  sub_260950();
  sub_30CC((v17 + 11), &v51);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v51, v49);
  *(&v50 + 1) = 0x4066800000000000;
  sub_230A8(v49);
  v55 = v49[4];
  v56 = v49[5];
  v57 = v49[6];
  v58 = v50;
  v51 = v49[0];
  v52 = v49[1];
  v53 = v49[2];
  v54 = v49[3];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  *(v16 + 6) = swift_getKeyPath();
  v16[56] = 0;
  v19 = type metadata accessor for CoverView();
  v20 = v19[6];
  *&v16[v20] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v21 = v19[7];
  *&v16[v21] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v22 = &v16[v19[8]];
  type metadata accessor for ProfileRestrictions();
  sub_15CEF0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v22 = sub_261900();
  v22[1] = v23;
  v24 = &v16[v19[9]];
  v46 = 1;
  sub_2631D0();
  v25 = v48;
  *v24 = v47;
  *(v24 + 1) = v25;
  v26 = &v16[v19[10]];
  v27 = v56;
  *(v26 + 4) = v55;
  *(v26 + 5) = v27;
  v28 = v58;
  *(v26 + 6) = v57;
  *(v26 + 7) = v28;
  v29 = v52;
  *v26 = v51;
  *(v26 + 1) = v29;
  v30 = v54;
  *(v26 + 2) = v53;
  *(v26 + 3) = v30;
  v16[v19[11]] = 1;
  v31 = sub_15584C();
  KeyPath = swift_getKeyPath();
  v33 = &v16[*(v11 + 44)];
  *v33 = KeyPath;
  v33[1] = v31;
  *v9 = sub_261E60();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v34 = sub_2EF0(&qword_3208B0, &qword_27CFF8);
  sub_1559C8(a1, &v9[*(v34 + 44)]);
  v35 = sub_156324();
  v36 = swift_getKeyPath();
  v37 = &v9[*(v4 + 44)];
  *v37 = v36;
  v37[1] = v35;
  v38 = v43;
  sub_8198(v16, v43, &qword_320870, &qword_27CF90);
  v39 = v44;
  sub_8198(v9, v44, &qword_3208A8, &qword_27CFF0);
  v40 = v45;
  sub_8198(v38, v45, &qword_320870, &qword_27CF90);
  v41 = sub_2EF0(&qword_3208B8, &qword_27D000);
  sub_8198(v39, v40 + *(v41 + 48), &qword_3208A8, &qword_27CFF0);
  sub_8E80(v9, &qword_3208A8, &qword_27CFF0);
  sub_8E80(v16, &qword_320870, &qword_27CF90);
  sub_8E80(v39, &qword_3208A8, &qword_27CFF0);
  return sub_8E80(v38, &qword_320870, &qword_27CF90);
}

uint64_t sub_15584C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for SingleBookLockupView() + 40);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = *v6;
    if (v7 > 6u)
    {
      return 3;
    }
  }

  else
  {

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    v8 = v12;
    if (v12 > 6u)
    {
      return 3;
    }
  }

  return qword_27D018[v8];
}

uint64_t sub_1559C8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = a2;
  v3 = sub_2EF0(&qword_320760, &qword_27CCF0);
  v4 = *(v3 - 8);
  v68 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v74 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v75 = &v66[-v8];
  v9 = sub_2EF0(&qword_320768, &qword_27CCF8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v73 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v70 = &v66[-v14];
  v15 = type metadata accessor for SizeConstants.Spacing(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for SizeConstants(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_2EF0(&qword_320770, &qword_27CD00);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v71 = &v66[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v66[-v28];
  sub_157F0C(a1, 1, &v76);
  *v29 = sub_261E60();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = &v29[*(sub_2EF0(&qword_320780, &qword_27CD90) + 44)];
  v72 = v29;
  sub_158548(a1, v30);
  v31 = sub_262520();
  sub_153B88(v22);
  sub_15CF50(v22, v18, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v18, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v32 = &v29[*(v24 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v37 = sub_261D30();
  v38 = v70;
  *v70 = v37;
  v38[1] = 0;
  *(v38 + 16) = 1;
  v39 = sub_2EF0(&qword_320788, &qword_27CD98);
  sub_15968C(a1, v38 + *(v39 + 44));
  LOBYTE(v24) = sub_262520();
  sub_153B88(v22);
  sub_15CF50(v22, v18, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v18, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v40 = v38 + *(v10 + 44);
  *v40 = v24;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  v45 = v75;
  sub_2633A0();
  LOBYTE(v10) = sub_262520();
  sub_153B88(v22);
  sub_15CF50(v22, v18, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v18, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v46 = &v45[*(v68 + 44)];
  *v46 = v10;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  v68 = sub_261D10();
  sub_153B88(v22);
  sub_15CF50(v22, v18, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v18, type metadata accessor for SizeConstants.Spacing);
  LOBYTE(v105[0]) = 0;
  sub_15AB0C(a1, 0, &v103);
  v95 = *&v104[20];
  v96 = *&v104[22];
  v97[0] = *&v104[24];
  *(v97 + 9) = *(&v104[25] + 1);
  v92 = *&v104[14];
  v93 = *&v104[16];
  v94 = *&v104[18];
  v88 = *&v104[6];
  v89 = *&v104[8];
  v90 = *&v104[10];
  v91 = *&v104[12];
  v84 = v103;
  v85 = *v104;
  v86 = *&v104[2];
  v87 = *&v104[4];
  v98[11] = *&v104[20];
  v98[12] = *&v104[22];
  v99[0] = *&v104[24];
  *(v99 + 9) = *(&v104[25] + 1);
  v98[8] = *&v104[14];
  v98[9] = *&v104[16];
  v98[10] = *&v104[18];
  v98[4] = *&v104[6];
  v98[5] = *&v104[8];
  v98[6] = *&v104[10];
  v98[7] = *&v104[12];
  v98[0] = v103;
  v98[1] = *v104;
  v98[2] = *&v104[2];
  v98[3] = *&v104[4];
  sub_8198(&v84, v102, &qword_320790, &qword_27CDA0);
  sub_8E80(v98, &qword_320790, &qword_27CDA0);
  *(&v83[11] + 7) = v95;
  *(&v83[12] + 7) = v96;
  *(&v83[13] + 7) = v97[0];
  v83[14] = *(v97 + 9);
  *(&v83[7] + 7) = v91;
  *(&v83[8] + 7) = v92;
  *(&v83[9] + 7) = v93;
  *(&v83[10] + 7) = v94;
  *(&v83[3] + 7) = v87;
  *(&v83[4] + 7) = v88;
  *(&v83[5] + 7) = v89;
  *(&v83[6] + 7) = v90;
  *(v83 + 7) = v84;
  *(&v83[1] + 7) = v85;
  *(&v83[2] + 7) = v86;
  v67 = LOBYTE(v105[0]);
  v51 = v71;
  sub_8198(v72, v71, &qword_320770, &qword_27CD00);
  v52 = v73;
  sub_8198(v38, v73, &qword_320768, &qword_27CCF8);
  v53 = v74;
  sub_8198(v75, v74, &qword_320760, &qword_27CCF0);
  v54 = v80;
  v55 = v81;
  v100[4] = v80;
  v100[5] = v81;
  v56 = v82;
  v101 = v82;
  v57 = v77;
  v100[0] = v76;
  v100[1] = v77;
  v58 = v79;
  v59 = v78;
  v100[2] = v78;
  v100[3] = v79;
  v60 = v69;
  *v69 = v76;
  v60[1] = v57;
  *(v60 + 48) = v56;
  v60[2] = v59;
  v60[3] = v58;
  v60[4] = v54;
  v60[5] = v55;
  v61 = sub_2EF0(&qword_3208C0, &unk_27D008);
  sub_8198(v51, v60 + v61[12], &qword_320770, &qword_27CD00);
  sub_8198(v52, v60 + v61[16], &qword_320768, &qword_27CCF8);
  sub_8198(v53, v60 + v61[20], &qword_320760, &qword_27CCF0);
  v62 = v61[24];
  *(&v102[24] + 1) = v83[11];
  *(&v102[26] + 1) = v83[12];
  *(&v102[28] + 1) = v83[13];
  *(&v102[30] + 1) = v83[14];
  *(&v102[16] + 1) = v83[7];
  *(&v102[18] + 1) = v83[8];
  *(&v102[20] + 1) = v83[9];
  *(&v102[22] + 1) = v83[10];
  *(&v102[10] + 1) = v83[4];
  *(&v102[12] + 1) = v83[5];
  *(&v102[14] + 1) = v83[6];
  *(&v102[8] + 1) = v83[3];
  *(&v102[2] + 1) = v83[0];
  *(&v102[4] + 1) = v83[1];
  v63 = v68;
  v102[0] = v68;
  v102[1] = 0x4018000000000000;
  LOBYTE(v53) = v67;
  LOBYTE(v102[2]) = v67;
  *(&v102[6] + 1) = v83[2];
  memcpy(v60 + v62, v102, 0x101uLL);
  v64 = v60 + v61[28];
  *v64 = 0;
  v64[8] = 1;
  sub_8198(v100, &v103, &qword_3207A0, &qword_27CDB0);
  sub_8198(v102, &v103, &qword_3207A8, &qword_27CDB8);
  sub_8E80(v75, &qword_320760, &qword_27CCF0);
  sub_8E80(v70, &qword_320768, &qword_27CCF8);
  sub_8E80(v72, &qword_320770, &qword_27CD00);
  *(&v104[22] + 1) = v83[11];
  *(&v104[24] + 1) = v83[12];
  *(&v104[26] + 1) = v83[13];
  *(&v104[28] + 1) = v83[14];
  *(&v104[14] + 1) = v83[7];
  *(&v104[16] + 1) = v83[8];
  *(&v104[18] + 1) = v83[9];
  *(&v104[20] + 1) = v83[10];
  *(&v104[6] + 1) = v83[3];
  *(&v104[8] + 1) = v83[4];
  *(&v104[10] + 1) = v83[5];
  *(&v104[12] + 1) = v83[6];
  *(v104 + 1) = v83[0];
  *(&v104[2] + 1) = v83[1];
  *&v103 = v63;
  *(&v103 + 1) = 0x4018000000000000;
  LOBYTE(v104[0]) = v53;
  *(&v104[4] + 1) = v83[2];
  sub_8E80(&v103, &qword_3207A8, &qword_27CDB8);
  sub_8E80(v74, &qword_320760, &qword_27CCF0);
  sub_8E80(v73, &qword_320768, &qword_27CCF8);
  sub_8E80(v71, &qword_320770, &qword_27CD00);
  v105[4] = v80;
  v105[5] = v81;
  v106 = v82;
  v105[0] = v76;
  v105[1] = v77;
  v105[2] = v78;
  v105[3] = v79;
  return sub_8E80(v105, &qword_3207A0, &qword_27CDB0);
}

uint64_t sub_156324()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SingleBookLockupView() + 40);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return qword_27D050[v7];
}

uint64_t sub_156488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_320808, &qword_27CEF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for SizeConstants.Spacing(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v46 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SizeConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_320810, &qword_27CEF8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v47 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  sub_157F0C(a1, 0, &v49);
  v24 = sub_261D10();
  v25 = sub_2EF0(&qword_320818, &qword_27CF00);
  v26 = &v23[v25[11]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v23[v25[12]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v23[v25[13]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  *v23 = v24;
  v23[8] = 1;
  sub_15692C(a1, &v23[v25[10]]);
  LOBYTE(v24) = sub_262520();
  sub_153B88(v16);
  v29 = v46;
  sub_15CF50(v16, v46, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v29, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v30 = &v23[*(v18 + 44)];
  *v30 = v24;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  *v9 = sub_261E50();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v35 = sub_2EF0(&qword_320820, &qword_27CF08);
  sub_159B48(a1, &v9[*(v35 + 44)]);
  v36 = v47;
  sub_8198(v23, v47, &qword_320810, &qword_27CEF8);
  v37 = v48;
  sub_8198(v9, v48, &qword_320808, &qword_27CEF0);
  v38 = v53;
  v39 = v54;
  v56[4] = v53;
  v56[5] = v54;
  v40 = v55;
  v57 = v55;
  v41 = v50;
  v56[0] = v49;
  v56[1] = v50;
  v42 = v52;
  v43 = v51;
  v56[2] = v51;
  v56[3] = v52;
  *a2 = v49;
  *(a2 + 16) = v41;
  *(a2 + 96) = v40;
  *(a2 + 32) = v43;
  *(a2 + 48) = v42;
  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  v44 = sub_2EF0(&qword_320828, &qword_27CF10);
  sub_8198(v36, a2 + *(v44 + 48), &qword_320810, &qword_27CEF8);
  sub_8198(v37, a2 + *(v44 + 64), &qword_320808, &qword_27CEF0);
  sub_8198(v56, v58, &qword_3207A0, &qword_27CDB0);
  sub_8E80(v9, &qword_320808, &qword_27CEF0);
  sub_8E80(v23, &qword_320810, &qword_27CEF8);
  sub_8E80(v37, &qword_320808, &qword_27CEF0);
  sub_8E80(v36, &qword_320810, &qword_27CEF8);
  v58[4] = v53;
  v58[5] = v54;
  v59 = v55;
  v58[0] = v49;
  v58[1] = v50;
  v58[2] = v51;
  v58[3] = v52;
  return sub_8E80(v58, &qword_3207A0, &qword_27CDB0);
}

uint64_t sub_15692C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_2EF0(&qword_320870, &qword_27CF90);
  v4 = *(v3 - 8);
  v54 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for SizeConstants.Spacing(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SizeConstants(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_320878, &qword_27CF98);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v53 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  v25 = sub_261E60();
  sub_153B88(v17);
  sub_15CF50(v17, v13, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v13, type metadata accessor for SizeConstants.Spacing);
  *v24 = v25;
  *(v24 + 1) = 0x4030000000000000;
  v24[16] = 0;
  v26 = sub_2EF0(&qword_320880, &qword_27CFA0);
  sub_156E74(a1, &v24[*(v26 + 44)]);
  v27 = sub_156324();
  KeyPath = swift_getKeyPath();
  v29 = &v24[*(v19 + 44)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = (a1 + *(type metadata accessor for SingleBookLockupView() + 44));
  v31 = v30[15];
  sub_2E18(v30 + 11, v30[14]);
  sub_260950();
  sub_30CC((v30 + 11), &v62);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v62, v60);
  *(&v61 + 1) = 0x4066800000000000;
  sub_230A8(v60);
  v66 = v60[4];
  v67 = v60[5];
  v68 = v60[6];
  v69 = v61;
  v62 = v60[0];
  v63 = v60[1];
  v64 = v60[2];
  v65 = v60[3];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  *(v9 + 6) = swift_getKeyPath();
  v9[56] = 0;
  v32 = type metadata accessor for CoverView();
  v33 = v32[6];
  *&v9[v33] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v34 = v32[7];
  *&v9[v34] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v35 = &v9[v32[8]];
  type metadata accessor for ProfileRestrictions();
  sub_15CEF0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v35 = sub_261900();
  v35[1] = v36;
  v37 = &v9[v32[9]];
  v57 = 1;
  sub_2631D0();
  v38 = v59;
  *v37 = v58;
  *(v37 + 1) = v38;
  v39 = &v9[v32[10]];
  v40 = v67;
  *(v39 + 4) = v66;
  *(v39 + 5) = v40;
  v41 = v69;
  *(v39 + 6) = v68;
  *(v39 + 7) = v41;
  v42 = v63;
  *v39 = v62;
  *(v39 + 1) = v42;
  v43 = v65;
  *(v39 + 2) = v64;
  *(v39 + 3) = v43;
  v9[v32[11]] = 1;
  v44 = sub_15584C();
  v45 = swift_getKeyPath();
  v46 = v53;
  v47 = &v9[*(v54 + 44)];
  *v47 = v45;
  v47[1] = v44;
  sub_8198(v24, v46, &qword_320878, &qword_27CF98);
  v48 = v55;
  sub_8198(v9, v55, &qword_320870, &qword_27CF90);
  v49 = v56;
  sub_8198(v46, v56, &qword_320878, &qword_27CF98);
  v50 = sub_2EF0(&qword_320888, &qword_27CFD0);
  sub_8198(v48, v49 + *(v50 + 48), &qword_320870, &qword_27CF90);
  sub_8E80(v9, &qword_320870, &qword_27CF90);
  sub_8E80(v24, &qword_320878, &qword_27CF98);
  sub_8E80(v48, &qword_320870, &qword_27CF90);
  return sub_8E80(v46, &qword_320878, &qword_27CF98);
}

uint64_t sub_156E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_320890, &qword_27CFD8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for SizeConstants.Spacing(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SizeConstants(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2EF0(&qword_320898, &qword_27CFE0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v31 - v24;
  *v25 = sub_261E60();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = sub_2EF0(&qword_320780, &qword_27CD90);
  sub_158548(a1, &v25[*(v26 + 44)]);
  sub_153B88(v18);
  sub_15CF50(v18, v14, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
  *v10 = sub_261D30();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v27 = sub_2EF0(&qword_320788, &qword_27CD98);
  sub_15968C(a1, &v10[*(v27 + 44)]);
  sub_8198(v25, v22, &qword_320898, &qword_27CFE0);
  sub_8198(v10, v7, &qword_320890, &qword_27CFD8);
  sub_8198(v22, a2, &qword_320898, &qword_27CFE0);
  v28 = sub_2EF0(&qword_3208A0, &qword_27CFE8);
  v29 = a2 + *(v28 + 48);
  *v29 = 0x4038000000000000;
  *(v29 + 8) = 0;
  sub_8198(v7, a2 + *(v28 + 64), &qword_320890, &qword_27CFD8);
  sub_8E80(v10, &qword_320890, &qword_27CFD8);
  sub_8E80(v25, &qword_320898, &qword_27CFE0);
  sub_8E80(v7, &qword_320890, &qword_27CFD8);
  return sub_8E80(v22, &qword_320898, &qword_27CFE0);
}

uint64_t sub_1571A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_2EF0(&qword_320760, &qword_27CCF0);
  v4 = *(v3 - 8);
  v103 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v109 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v100 - v8;
  v9 = sub_2EF0(&qword_320768, &qword_27CCF8);
  v10 = *(v9 - 8);
  v102 = v9 - 8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v108 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = (&v100 - v14);
  v15 = sub_2EF0(&qword_320770, &qword_27CD00);
  v16 = *(v15 - 8);
  v101 = v15 - 8;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v107 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v111 = (&v100 - v20);
  v21 = type metadata accessor for SizeConstants.Spacing(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SizeConstants(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2EF0(&qword_320778, &qword_27CD08);
  v30 = *(v29 - 8);
  v100 = v29 - 8;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29 - 8);
  v106 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v100 - v34;
  v36 = (a1 + *(type metadata accessor for SingleBookLockupView() + 44));
  v37 = v36[15];
  sub_2E18(v36 + 11, v36[14]);
  sub_260950();
  sub_30CC((v36 + 11), &v152);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v152, v121);
  *(&v122 + 1) = 0x4066800000000000;
  sub_230A8(v121);
  v127 = v121[4];
  v128 = v121[5];
  v129 = v121[6];
  v130 = v122;
  v123 = v121[0];
  v124 = v121[1];
  v125 = v121[2];
  v126 = v121[3];
  *v35 = swift_getKeyPath();
  v35[40] = 0;
  *(v35 + 6) = swift_getKeyPath();
  v35[56] = 0;
  v38 = type metadata accessor for CoverView();
  v39 = v38[6];
  *&v35[v39] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v40 = v38[7];
  *&v35[v40] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v41 = &v35[v38[8]];
  type metadata accessor for ProfileRestrictions();
  sub_15CEF0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v41 = sub_261900();
  v41[1] = v42;
  v43 = &v35[v38[9]];
  LOBYTE(v151[0]) = 1;
  sub_2631D0();
  v44 = *(&v152 + 1);
  *v43 = v152;
  *(v43 + 1) = v44;
  v45 = &v35[v38[10]];
  v46 = v128;
  *(v45 + 4) = v127;
  *(v45 + 5) = v46;
  v47 = v130;
  *(v45 + 6) = v129;
  *(v45 + 7) = v47;
  v48 = v124;
  *v45 = v123;
  *(v45 + 1) = v48;
  v49 = v126;
  *(v45 + 2) = v125;
  *(v45 + 3) = v49;
  v35[v38[11]] = 1;
  v50 = v36[15];
  sub_2E18(v36 + 11, v36[14]);
  sub_260950();
  sub_30CC((v36 + 11), &v152);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v152, v131);
  sub_EA708(v131);
  v51 = v36[15];
  sub_2E18(v36 + 11, v36[14]);
  sub_260950();
  sub_30CC((v36 + 11), &v152);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v152, v132);
  sub_EA708(v132);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v52 = *(sub_2EF0(&qword_3188E0, &qword_274300) + 36);
  v105 = v35;
  v53 = &v35[v52];
  v54 = v120[16];
  *v53 = v120[15];
  *(v53 + 1) = v54;
  *(v53 + 2) = v120[17];
  LOBYTE(v36) = sub_262520();
  v55 = a1;
  sub_153B88(v28);
  sub_15CF50(v28, v24, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v24, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v56 = &v35[*(v100 + 44)];
  *v56 = v36;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *(v56 + 3) = v59;
  *(v56 + 4) = v60;
  v56[40] = 0;
  sub_157F0C(a1, 1, &v113);
  v61 = sub_261E60();
  v62 = v111;
  *v111 = v61;
  v62[1] = 0;
  *(v62 + 16) = 0;
  v63 = sub_2EF0(&qword_320780, &qword_27CD90);
  sub_158548(v55, v62 + *(v63 + 44));
  LOBYTE(v36) = sub_262520();
  sub_153B88(v28);
  sub_15CF50(v28, v24, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v24, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v64 = v62 + *(v101 + 44);
  *v64 = v36;
  *(v64 + 1) = v65;
  *(v64 + 2) = v66;
  *(v64 + 3) = v67;
  *(v64 + 4) = v68;
  v64[40] = 0;
  v69 = sub_261D30();
  v70 = v110;
  *v110 = v69;
  v70[1] = 0;
  *(v70 + 16) = 1;
  v71 = sub_2EF0(&qword_320788, &qword_27CD98);
  sub_15968C(v55, v70 + *(v71 + 44));
  LOBYTE(v36) = sub_262520();
  sub_153B88(v28);
  sub_15CF50(v28, v24, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v24, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v72 = v70 + *(v102 + 44);
  *v72 = v36;
  *(v72 + 1) = v73;
  *(v72 + 2) = v74;
  *(v72 + 3) = v75;
  *(v72 + 4) = v76;
  v72[40] = 0;
  v77 = v112;
  sub_2633A0();
  LOBYTE(v36) = sub_262520();
  sub_153B88(v28);
  sub_15CF50(v28, v24, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v24, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v78 = v77 + *(v103 + 44);
  *v78 = v36;
  *(v78 + 8) = v79;
  *(v78 + 16) = v80;
  *(v78 + 24) = v81;
  *(v78 + 32) = v82;
  *(v78 + 40) = 0;
  v103 = sub_261D10();
  sub_153B88(v28);
  sub_15CF50(v28, v24, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v24, type metadata accessor for SizeConstants.Spacing);
  LOBYTE(v154[0]) = 0;
  sub_15AB0C(v55, 1, &v152);
  v144 = *&v153[20];
  v145 = *&v153[22];
  v146[0] = *&v153[24];
  *(v146 + 9) = *(&v153[25] + 1);
  v141 = *&v153[14];
  v142 = *&v153[16];
  v143 = *&v153[18];
  v137 = *&v153[6];
  v138 = *&v153[8];
  v139 = *&v153[10];
  v140 = *&v153[12];
  v133 = v152;
  v134 = *v153;
  v135 = *&v153[2];
  v136 = *&v153[4];
  v147[11] = *&v153[20];
  v147[12] = *&v153[22];
  v148[0] = *&v153[24];
  *(v148 + 9) = *(&v153[25] + 1);
  v147[8] = *&v153[14];
  v147[9] = *&v153[16];
  v147[10] = *&v153[18];
  v147[4] = *&v153[6];
  v147[5] = *&v153[8];
  v147[6] = *&v153[10];
  v147[7] = *&v153[12];
  v147[0] = v152;
  v147[1] = *v153;
  v147[2] = *&v153[2];
  v147[3] = *&v153[4];
  sub_8198(&v133, v151, &qword_320790, &qword_27CDA0);
  sub_8E80(v147, &qword_320790, &qword_27CDA0);
  *(&v120[11] + 7) = v144;
  *(&v120[12] + 7) = v145;
  *(&v120[13] + 7) = v146[0];
  v120[14] = *(v146 + 9);
  *(&v120[7] + 7) = v140;
  *(&v120[8] + 7) = v141;
  *(&v120[9] + 7) = v142;
  *(&v120[10] + 7) = v143;
  *(&v120[3] + 7) = v136;
  *(&v120[4] + 7) = v137;
  *(&v120[5] + 7) = v138;
  *(&v120[6] + 7) = v139;
  *(v120 + 7) = v133;
  *(&v120[1] + 7) = v134;
  *(&v120[2] + 7) = v135;
  LODWORD(v102) = LOBYTE(v154[0]);
  v83 = v106;
  sub_8198(v105, v106, &qword_320778, &qword_27CD08);
  v84 = v107;
  sub_8198(v111, v107, &qword_320770, &qword_27CD00);
  v85 = v108;
  sub_8198(v110, v108, &qword_320768, &qword_27CCF8);
  v86 = v109;
  sub_8198(v112, v109, &qword_320760, &qword_27CCF0);
  v87 = v83;
  v88 = v104;
  sub_8198(v87, v104, &qword_320778, &qword_27CD08);
  v89 = sub_2EF0(&qword_320798, &qword_27CDA8);
  v90 = v88 + v89[12];
  v91 = v117;
  v92 = v118;
  v149[4] = v117;
  v149[5] = v118;
  v93 = v119;
  v150 = v119;
  v94 = v114;
  v149[0] = v113;
  v149[1] = v114;
  v95 = v116;
  v96 = v115;
  v149[2] = v115;
  v149[3] = v116;
  *v90 = v113;
  *(v90 + 16) = v94;
  *(v90 + 64) = v91;
  *(v90 + 80) = v92;
  *(v90 + 32) = v96;
  *(v90 + 48) = v95;
  *(v90 + 96) = v93;
  sub_8198(v84, v88 + v89[16], &qword_320770, &qword_27CD00);
  sub_8198(v85, v88 + v89[20], &qword_320768, &qword_27CCF8);
  sub_8198(v86, v88 + v89[24], &qword_320760, &qword_27CCF0);
  v97 = v89[28];
  *(&v151[24] + 1) = v120[11];
  *(&v151[26] + 1) = v120[12];
  *(&v151[28] + 1) = v120[13];
  *(&v151[30] + 1) = v120[14];
  *(&v151[16] + 1) = v120[7];
  *(&v151[18] + 1) = v120[8];
  *(&v151[20] + 1) = v120[9];
  *(&v151[22] + 1) = v120[10];
  *(&v151[12] + 1) = v120[5];
  *(&v151[14] + 1) = v120[6];
  *(&v151[8] + 1) = v120[3];
  *(&v151[10] + 1) = v120[4];
  *(&v151[2] + 1) = v120[0];
  *(&v151[4] + 1) = v120[1];
  v98 = v103;
  v151[0] = v103;
  v151[1] = 0x4018000000000000;
  LOBYTE(v51) = v102;
  LOBYTE(v151[2]) = v102;
  *(&v151[6] + 1) = v120[2];
  memcpy((v88 + v97), v151, 0x101uLL);
  sub_8198(v149, &v152, &qword_3207A0, &qword_27CDB0);
  sub_8198(v151, &v152, &qword_3207A8, &qword_27CDB8);
  sub_8E80(v112, &qword_320760, &qword_27CCF0);
  sub_8E80(v110, &qword_320768, &qword_27CCF8);
  sub_8E80(v111, &qword_320770, &qword_27CD00);
  sub_8E80(v105, &qword_320778, &qword_27CD08);
  *(&v153[22] + 1) = v120[11];
  *(&v153[24] + 1) = v120[12];
  *(&v153[26] + 1) = v120[13];
  *(&v153[28] + 1) = v120[14];
  *(&v153[14] + 1) = v120[7];
  *(&v153[16] + 1) = v120[8];
  *(&v153[18] + 1) = v120[9];
  *(&v153[20] + 1) = v120[10];
  *(&v153[6] + 1) = v120[3];
  *(&v153[8] + 1) = v120[4];
  *(&v153[10] + 1) = v120[5];
  *(&v153[12] + 1) = v120[6];
  *(v153 + 1) = v120[0];
  *(&v153[2] + 1) = v120[1];
  *&v152 = v98;
  *(&v152 + 1) = 0x4018000000000000;
  LOBYTE(v153[0]) = v51;
  *(&v153[4] + 1) = v120[2];
  sub_8E80(&v152, &qword_3207A8, &qword_27CDB8);
  sub_8E80(v109, &qword_320760, &qword_27CCF0);
  sub_8E80(v108, &qword_320768, &qword_27CCF8);
  sub_8E80(v107, &qword_320770, &qword_27CD00);
  v154[4] = v117;
  v154[5] = v118;
  v155 = v119;
  v154[0] = v113;
  v154[1] = v114;
  v154[2] = v115;
  v154[3] = v116;
  sub_8E80(v154, &qword_3207A0, &qword_27CDB0);
  return sub_8E80(v106, &qword_320778, &qword_27CD08);
}

__n128 sub_157F0C@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v63 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SizeConstants(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v62 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v64 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_318458, &unk_26B270);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v59 - v17;
  v19 = sub_262730();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FontConstants.SingleBookWidget(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (a1 + *(type metadata accessor for SingleBookLockupView() + 44));
  if (v28[1])
  {
    v61 = a3;
    v59[1] = *v28;

    sub_153F60(v27);
    (*(v20 + 104))(v23, enum case for Font.TextStyle.caption(_:), v19);
    v60 = a2;
    v29 = enum case for Font.Design.rounded(_:);
    v30 = sub_2625C0();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v18, v29, v30);
    (*(v31 + 56))(v18, 0, 1, v30);
    sub_262680();
    sub_8E80(v18, &qword_318458, &unk_26B270);
    (*(v20 + 8))(v23, v19);
    sub_2625A0();

    sub_15C9F4(v27, type metadata accessor for FontConstants.SingleBookWidget);
    v32 = sub_262840();
    v34 = v33;
    LOBYTE(v30) = v35;

    v36 = v64;
    sub_153D74(v64);
    v37 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    sub_15C9F4(v36, type metadata accessor for ColorConstants);
    *&v82 = v37;
    v38 = sub_2627F0();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_39DBC(v32, v34, v30 & 1);

    KeyPath = swift_getKeyPath();
    v46 = sub_262520();
    if (v60)
    {
      v47 = v40;
      v48 = v62;
      sub_153B88(v62);
      v49 = v48;
      v50 = v63;
      sub_15CF50(v49, v63, type metadata accessor for SizeConstants.Environment);
      v51 = v50;
      v40 = v47;
      sub_15C9F4(v51, type metadata accessor for SizeConstants.Spacing);
    }

    sub_2610C0();
    v81 = v42 & 1;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v68 = v38;
    v69 = v40;
    v70 = v42 & 1;
    v71 = v44;
    v72 = KeyPath;
    v73 = 1;
    v74 = 0;
    v75 = v46;
    v76 = v52;
    v77 = v53;
    v78 = v54;
    v79 = v55;
    v80 = 0;
    sub_2EF0(&qword_3189C8, &qword_27CEA0);
    sub_58040();
    sub_261F80();
    a3 = v61;
  }

  else
  {
    v81 = 1;
    HIBYTE(v80) = 1;
    sub_2EF0(&qword_3189C8, &qword_27CEA0);
    sub_58040();
    sub_261F80();
  }

  v56 = v87;
  *(a3 + 64) = v86;
  *(a3 + 80) = v56;
  *(a3 + 96) = v88;
  v57 = v83;
  *a3 = v82;
  *(a3 + 16) = v57;
  result = v85;
  *(a3 + 32) = v84;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_158548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = type metadata accessor for SingleBookLockupView();
  v4 = v3 - 8;
  v129[0] = *(v3 - 8);
  v5 = *(v129[0] + 64);
  __chkstk_darwin(v3);
  v129[1] = v6;
  v130 = v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2EF0(&qword_3207D8, &qword_27CE80);
  v153 = *(v150 - 8);
  v7 = *(v153 + 64);
  __chkstk_darwin(v150);
  v131 = v129 - v8;
  v9 = sub_2EF0(&qword_3207E0, &qword_27CE88);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v151 = v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v162 = v129 - v13;
  v14 = type metadata accessor for SizeConstants.Spacing(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v149 = v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SizeConstants(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v147 = v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ColorConstants(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v154 = v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_318458, &unk_26B270);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v146 = v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v129 - v27;
  v29 = sub_262730();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v145 = v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v129 - v34;
  v36 = type metadata accessor for FontConstants.SingleBookWidget(0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v144 = v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = v129 - v40;
  v42 = a1 + *(v4 + 52);
  v44 = *(v42 + 16);
  v43 = *(v42 + 24);
  v155 = v42;

  v152 = a1;
  sub_153F60(v41);
  v163 = v30;
  v45 = v30 + 104;
  v46 = *(v30 + 104);
  v143 = enum case for Font.TextStyle.body(_:);
  v47 = v29;
  v141 = v46;
  v142 = v45;
  v46(v35);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v48 = sub_2625C0();
    v49 = *(*(v48 - 8) + 56);
    v139 = (v48 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v140 = v48;
    v49(v28, 1, 1);
  }

  else
  {
    v50 = enum case for Font.Design.serif (_:);
    v51 = sub_2625C0();
    v52 = *(v51 - 8);
    v53 = *(v52 + 104);
    v139 = (v51 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v53(v28, v50, v51);
    v54 = *(v52 + 56);
    v140 = v51;
    v54(v28, 0, 1, v51);
  }

  sub_262680();
  sub_8E80(v28, &qword_318458, &unk_26B270);
  v55 = *(v163 + 8);
  v163 += 8;
  v138 = v55;
  v133 = v47;
  v55(v35, v47);
  sub_2625A0();

  v137 = type metadata accessor for FontConstants.SingleBookWidget;
  sub_15C9F4(v41, type metadata accessor for FontConstants.SingleBookWidget);
  v56 = sub_262840();
  v58 = v57;
  v60 = v59;

  v61 = v154;
  sub_153D74(v154);
  v62 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v136 = type metadata accessor for ColorConstants;
  sub_15C9F4(v61, type metadata accessor for ColorConstants);
  v193[0] = v62;
  v63 = sub_2627F0();
  v159 = v64;
  v160 = v63;
  v66 = v65;
  v161 = v67;
  sub_39DBC(v56, v58, v60 & 1);

  KeyPath = swift_getKeyPath();
  v156 = v66 & 1;
  v215 = v66 & 1;
  v213 = 0;
  v157 = sub_262520();
  v68 = v147;
  sub_153B88(v147);
  v135 = type metadata accessor for SizeConstants.Environment;
  v69 = v149;
  sub_15CF50(v68, v149, type metadata accessor for SizeConstants.Environment);
  v134 = type metadata accessor for SizeConstants.Spacing;
  sub_15C9F4(v69, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v216 = 0;
  v78 = *(v155 + 40);
  v132 = *(v155 + 32);

  v79 = v144;
  sub_153F60(v144);
  v80 = v145;
  v81 = v133;
  v141(v145, v143, v133);
  sub_2625C0();
  v82 = v146;
  (*(*(v140 - 8) + 56))(v146, 1, 1);
  sub_262680();
  sub_8E80(v82, &qword_318458, &unk_26B270);
  v138(v80, v81);
  sub_15C9F4(v79, v137);
  v92 = sub_262840();
  v84 = v83;
  LOBYTE(v82) = v85;

  v86 = v154;
  sub_153D74(v154);
  v87 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_15C9F4(v86, v136);
  v193[0] = v87;
  v154 = sub_2627F0();
  v146 = v88;
  LOBYTE(v86) = v89;
  v163 = v90;
  sub_39DBC(v92, v84, v82 & 1);

  v91 = swift_getKeyPath();
  LODWORD(v92) = sub_262520();
  sub_153B88(v68);
  sub_15CF50(v68, v69, v135);
  sub_15C9F4(v69, v134);
  sub_2610C0();
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v101 = v86 & 1;
  LOBYTE(v193[0]) = v86 & 1;
  LOBYTE(v178[0]) = 0;
  LOBYTE(v171) = 0;
  v102 = 1;
  v103 = v150;
  if ((*(v155 + 64) & 1) == 0)
  {
    v147 = v77;
    v104 = v75;
    v105 = v73;
    v106 = v71;
    v107 = *(v155 + 48);
    if (v107 > 0.0)
    {
      v108 = *(v155 + 56);
      v109 = v130;
      sub_15CFB8(v152, v130, type metadata accessor for SingleBookLockupView);
      v110 = *(v129[0] + 80);
      LODWORD(v155) = v92;
      v92 = (v110 + 32) & ~v110;
      v111 = swift_allocObject();
      *(v111 + 16) = v107;
      *(v111 + 24) = v108;
      sub_15CF50(v109, v111 + v92, type metadata accessor for SingleBookLockupView);
      sub_2EF0(&qword_3207F8, &unk_27CEA8);
      sub_260A70();
      sub_260A50();
      sub_15CE38();
      sub_15CEF0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
      sub_15CEF0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
      LOBYTE(v92) = v155;
      v112 = v131;
      sub_260A80();
      (*(v153 + 32))(v162, v112, v103);
      v102 = 0;
    }

    v71 = v106;
    v73 = v105;
    v75 = v104;
    v77 = v147;
  }

  v145 = v91;
  LODWORD(v149) = v101;
  v113 = v162;
  (*(v153 + 56))(v162, v102, 1, v103);
  v114 = v151;
  sub_8198(v113, v151, &qword_3207E0, &qword_27CE88);
  *&v164 = v160;
  *(&v164 + 1) = v159;
  LOBYTE(v165) = v156;
  *(&v165 + 1) = *v214;
  DWORD1(v165) = *&v214[3];
  *(&v165 + 1) = v161;
  *&v166 = KeyPath;
  *(&v166 + 1) = 2;
  LOWORD(v167) = 0;
  BYTE2(v167) = 1;
  *(&v167 + 3) = v218;
  BYTE7(v167) = v219;
  BYTE8(v167) = v157;
  HIDWORD(v167) = *&v217[3];
  *(&v167 + 9) = *v217;
  *&v168 = v71;
  *(&v168 + 1) = v73;
  *&v169 = v75;
  *(&v169 + 1) = v77;
  v170 = 0;
  v115 = v148;
  *(v148 + 96) = 0;
  v116 = v165;
  *v115 = v164;
  *(v115 + 16) = v116;
  v117 = v167;
  *(v115 + 32) = v166;
  *(v115 + 48) = v117;
  v118 = v169;
  *(v115 + 64) = v168;
  *(v115 + 80) = v118;
  v119 = v154;
  v120 = v146;
  *&v171 = v154;
  *(&v171 + 1) = v146;
  LOBYTE(v172) = v101;
  DWORD1(v172) = *(v212 + 3);
  *(&v172 + 1) = v212[0];
  v121 = v163;
  *(&v172 + 1) = v163;
  *&v173 = v91;
  *(&v173 + 1) = 2;
  LOBYTE(v174) = 0;
  DWORD1(v174) = *&v211[3];
  *(&v174 + 1) = *v211;
  BYTE8(v174) = v92;
  HIDWORD(v174) = *&v210[3];
  *(&v174 + 9) = *v210;
  *&v175 = v94;
  *(&v175 + 1) = v96;
  *&v176 = v98;
  *(&v176 + 1) = v100;
  v177 = 0;
  v122 = v175;
  v123 = v176;
  *(v115 + 200) = 0;
  *(v115 + 184) = v123;
  *(v115 + 168) = v122;
  v124 = v173;
  *(v115 + 152) = v174;
  v125 = v171;
  v126 = v172;
  *(v115 + 136) = v124;
  *(v115 + 120) = v126;
  *(v115 + 104) = v125;
  v127 = v115 + *(sub_2EF0(&qword_3207E8, &qword_27CE90) + 64);
  sub_8198(v114, v127, &qword_3207E0, &qword_27CE88);
  sub_8198(&v164, v193, &qword_3207F0, &qword_27CE98);
  sub_8198(&v171, v193, &qword_3189C8, &qword_27CEA0);
  sub_8E80(v162, &qword_3207E0, &qword_27CE88);
  sub_8E80(v114, &qword_3207E0, &qword_27CE88);
  v178[0] = v119;
  v178[1] = v120;
  v179 = v149;
  *v180 = v212[0];
  *&v180[3] = *(v212 + 3);
  v181 = v121;
  v182 = v145;
  v183 = 2;
  v184 = 0;
  *v185 = *v211;
  *&v185[3] = *&v211[3];
  v186 = v92;
  *&v187[3] = *&v210[3];
  *v187 = *v210;
  v188 = v94;
  v189 = v96;
  v190 = v98;
  v191 = v100;
  v192 = 0;
  sub_8E80(v178, &qword_3189C8, &qword_27CEA0);
  v193[0] = v160;
  v193[1] = v159;
  v194 = v156;
  *v195 = *v214;
  *&v195[3] = *&v214[3];
  v196 = v161;
  v197 = KeyPath;
  v198 = 2;
  v199 = 0;
  v200 = 1;
  v201 = v218;
  v202 = v219;
  v203 = v157;
  *&v204[3] = *&v217[3];
  *v204 = *v217;
  v205 = v71;
  v206 = v73;
  v207 = v75;
  v208 = v77;
  v209 = 0;
  return sub_8E80(v193, &qword_3207F0, &qword_27CE98);
}

uint64_t sub_15941C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_2EF0(&qword_318458, &unk_26B270);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_262730();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FontConstants.SingleBookWidget(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a1, a3 + 32);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a2;
  sub_153F60(v20);
  (*(v13 + 104))(v16, enum case for Font.TextStyle.callout(_:), v12);
  v21 = sub_2625C0();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = sub_262680();
  sub_8E80(v11, &qword_318458, &unk_26B270);
  (*(v13 + 8))(v16, v12);
  sub_15C9F4(v20, type metadata accessor for FontConstants.SingleBookWidget);
  result = swift_getKeyPath();
  *(a3 + 72) = result;
  *(a3 + 80) = v22;
  return result;
}

uint64_t sub_15968C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_262730();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BuyButton(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for SingleBookLockupView();
  sub_30CC(a1 + *(v14 + 44) + 88, v45);
  v15 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  sub_30CC(v45, &v13[*(v15 + 44)]);
  v16 = *(v15 + 48);
  v17 = v15;
  v40 = v15;
  v18 = &v13[v16];
  *v18 = swift_getKeyPath();
  v41 = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for BuyButtonExternals();
  v20 = (v18 + v19[5]);
  type metadata accessor for ProfileRestrictions();
  sub_15CEF0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v20 = sub_261900();
  v20[1] = v21;
  v22 = v19[6];
  *(v18 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v23 = v18 + v19[7];
  KeyPath = swift_getKeyPath();
  v46 = 0;
  *v23 = KeyPath;
  v23[66] = 0;
  *&v13[*(v17 + 36)] = 0x8000;
  v25 = type metadata accessor for ButtonViewModel(0);
  v26 = v25[11];
  sub_260BC0();
  type metadata accessor for ButtonViewModel.Content(0);
  swift_storeEnumTagMultiPayload();
  v27 = &v13[v25[13]];
  type metadata accessor for ButtonViewModel.ActionKind(0);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v44 = 0x403C000000000000;
  v28 = enum case for Font.TextStyle.subheadline(_:);
  v29 = *(v4 + 104);
  v29(v7, enum case for Font.TextStyle.subheadline(_:), v3);
  sub_40130();
  sub_2612E0();
  v30 = v25[5];
  v44 = 0x4008000000000000;
  v29(v7, v28, v3);
  sub_2612E0();
  sub_3080(v45);
  v31 = v25[6];
  *&v13[v31] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v32 = v25[14];
  v33 = sub_260BD0();
  (*(*(v33 - 8) + 56))(&v13[v32], 1, 1, v33);
  v13[v25[7]] = 2;
  v13[v25[8]] = 0;
  v13[v25[9]] = 0;
  v34 = &v13[v25[10]];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v13[v25[12]] = 1;
  v13[*(v40 + 40)] = 2;
  v35 = v42;
  sub_15CFB8(v13, v42, type metadata accessor for BuyButton);
  v36 = v43;
  sub_15CFB8(v35, v43, type metadata accessor for BuyButton);
  v37 = v36 + *(sub_2EF0(&qword_3207D0, &qword_27CE78) + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_15C9F4(v13, type metadata accessor for BuyButton);
  return sub_15C9F4(v35, type metadata accessor for BuyButton);
}

uint64_t sub_159B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = sub_2EF0(&qword_318458, &unk_26B270);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v112 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v104 - v7;
  v9 = sub_262730();
  v10 = *(v9 - 8);
  v117 = v9;
  v118 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v104 - v14;
  v16 = type metadata accessor for FontConstants.SingleBookWidget(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v110 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v104 - v20;
  v21 = sub_2EF0(&qword_320830, &qword_27CF18);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v104 - v24;
  v26 = sub_2EF0(&qword_320838, &qword_27CF20);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v119 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v104 - v30;
  v32 = (a1 + *(type metadata accessor for SingleBookLockupView() + 44));
  v33 = v32[17];
  v109 = v32[16];
  v120 = v31;
  v116 = a1;
  v34 = v33;
  if (v33)
  {
    *v25 = sub_261D30();
    *(v25 + 1) = 0;
    v25[16] = 1;
    v35 = sub_2EF0(&qword_320848, &qword_27CF38);
    sub_15A5A0(&v25[*(v35 + 44)]);
    v36 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    KeyPath = swift_getKeyPath();
    v38 = &v25[*(v21 + 36)];
    *v38 = KeyPath;
    v38[1] = v36;
    v39 = v120;
    sub_22148(v25, v120, &qword_320830, &qword_27CF18);
    (*(v22 + 56))(v39, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(v31, 1, 1, v21);
  }

  v40 = v117;
  v41 = v126;
  if (v32[10])
  {
    v42 = v32[9];
    v43 = v32[10];

    sub_153F60(v41);
    (*(v118 + 104))(v15, enum case for Font.TextStyle.subheadline(_:), v40);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v44 = sub_2625C0();
      (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
    }

    else
    {
      v45 = enum case for Font.Design.serif (_:);
      v46 = sub_2625C0();
      v47 = *(v46 - 8);
      (*(v47 + 104))(v8, v45, v46);
      v48 = v46;
      v40 = v117;
      (*(v47 + 56))(v8, 0, 1, v48);
    }

    sub_262680();
    sub_8E80(v8, &qword_318458, &unk_26B270);
    (*(v118 + 8))(v15, v40);
    sub_15C9F4(v41, type metadata accessor for FontConstants.SingleBookWidget);
    v49 = sub_262840();
    v51 = v50;
    v53 = v52;

    v134[0] = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    v54 = sub_2627F0();
    v125 = v55;
    v126 = v54;
    v57 = v56;
    v124 = v58;
    sub_39DBC(v49, v51, v53 & 1);

    v59 = swift_getKeyPath();
    LOBYTE(v134[0]) = v57 & 1;
    LOBYTE(v127) = 0;
    v122 = v57 & 1;
    v123 = v59;
    v114 = 0x10000;
    v121 = 4;
    if (v34)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v125 = 0;
    v126 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v114 = 0;
    if (v34)
    {
LABEL_11:

      v60 = v110;
      sub_153F60(v110);
      v61 = v118;
      v62 = v111;
      (*(v118 + 104))(v111, enum case for Font.TextStyle.caption(_:), v40);
      v63 = enum case for Font.Design.rounded(_:);
      v64 = sub_2625C0();
      v65 = *(v64 - 8);
      v66 = v112;
      (*(v65 + 104))(v112, v63, v64);
      v67 = *(v65 + 56);
      v113 = 1;
      v67(v66, 0, 1, v64);
      sub_262680();
      sub_8E80(v66, &qword_318458, &unk_26B270);
      (*(v61 + 8))(v62, v40);
      sub_2625A0();

      sub_15C9F4(v60, type metadata accessor for FontConstants.SingleBookWidget);
      v68 = sub_262840();
      v70 = v69;
      LOBYTE(v65) = v71;

      v134[0] = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
      v72 = sub_2627F0();
      v111 = v73;
      v112 = v72;
      v118 = v74;
      LOBYTE(v66) = v75;
      sub_39DBC(v68, v70, v65 & 1);

      v110 = swift_getKeyPath();
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      LOBYTE(v134[0]) = v66 & 1;
      LOBYTE(v127) = 0;
      v108 = v134[14];
      v109 = v134[13];
      v116 = v134[17];
      v117 = v134[16];
      v106 = v134[18];
      v107 = v134[15];
      v34 = v66 & 1;
      goto LABEL_12;
    }
  }

  v111 = 0;
  v112 = 0;
  v117 = 0;
  v118 = 0;
  v109 = 0;
  v110 = 0;
  v113 = 0;
  v107 = 0;
  v108 = 0;
  v116 = 0;
  v106 = 0;
LABEL_12:
  v104 = 0;
  v105 = v34;
  v76 = v119;
  sub_8198(v120, v119, &qword_320838, &qword_27CF20);
  v77 = v76;
  v78 = v115;
  sub_8198(v77, v115, &qword_320838, &qword_27CF20);
  v79 = sub_2EF0(&qword_320840, &qword_27CF28);
  v80 = v78 + *(v79 + 48);
  v81 = v125;
  v82 = v126;
  *v80 = v126;
  *(v80 + 8) = v81;
  v125 = v81;
  v126 = v82;
  v83 = v81;
  v84 = v122;
  *(v80 + 16) = v122;
  v85 = v84;
  v122 = v84;
  v86 = v124;
  *(v80 + 24) = v124;
  v87 = v86;
  v124 = v86;
  v88 = v123;
  *(v80 + 32) = v123;
  v123 = v88;
  v89 = v121;
  *(v80 + 40) = v121;
  v121 = v89;
  v90 = v114;
  *(v80 + 50) = BYTE2(v114);
  *(v80 + 48) = v90;
  v91 = v78 + *(v79 + 64);
  v93 = v112;
  v92 = v113;
  *&v127 = v112;
  *(&v127 + 1) = v118;
  *&v128 = v34;
  v95 = v110;
  v94 = v111;
  *(&v128 + 1) = v111;
  *&v129 = v110;
  *(&v129 + 1) = v113;
  *&v130 = 0;
  v97 = v108;
  v96 = v109;
  *(&v130 + 1) = v109;
  *&v131 = v108;
  v98 = v106;
  v99 = v107;
  *(&v131 + 1) = v107;
  *&v132 = v117;
  *(&v132 + 1) = v116;
  v133 = v106;
  v100 = v128;
  *v91 = v127;
  *(v91 + 16) = v100;
  *(v91 + 96) = v98;
  v101 = v130;
  *(v91 + 32) = v129;
  *(v91 + 48) = v101;
  v102 = v132;
  *(v91 + 64) = v131;
  *(v91 + 80) = v102;
  sub_15C948(v82, v83, v85, v87);
  sub_8198(&v127, v134, &qword_318A28, &qword_27CF30);
  sub_8E80(v120, &qword_320838, &qword_27CF20);
  v134[0] = v93;
  v134[1] = v118;
  v134[2] = v105;
  v134[3] = v94;
  v134[4] = v95;
  v134[5] = v92;
  v134[6] = v104;
  v134[7] = v96;
  v134[8] = v97;
  v134[9] = v99;
  v134[10] = v117;
  v134[11] = v116;
  v134[12] = v98;
  sub_8E80(v134, &qword_318A28, &qword_27CF30);
  sub_15C998(v126, v125, v122, v124);
  return sub_8E80(v119, &qword_320838, &qword_27CF20);
}

uint64_t sub_15A5A0@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = type metadata accessor for ColorConstants(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_320850, &qword_27CF70);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v59 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v61 = &v53 - v17;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  *v23 = sub_261E50();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v56 = sub_2EF0(&qword_320858, &qword_27CF78);
  v24 = &v23[*(v56 + 44)];
  sub_2633A0();
  v25 = sub_262550();
  sub_153B88(v11);
  v55 = type metadata accessor for SizeConstants.Environment;
  sub_15CF50(v11, v7, type metadata accessor for SizeConstants.Environment);
  v54 = type metadata accessor for SizeConstants.Spacing;
  sub_15C9F4(v7, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v26 = &v23[*(v13 + 44)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  v57 = sub_261D30();
  v63 = 0;
  sub_15B838(&v74);
  v67 = *&v75[32];
  v68 = *&v75[48];
  v65 = *v75;
  v66 = *&v75[16];
  v64 = v74;
  v69[2] = *&v75[16];
  v69[3] = *&v75[32];
  v70 = *&v75[48];
  v69[0] = v74;
  v69[1] = *v75;
  sub_8198(&v64, &v71, &qword_3207C8, &unk_27CDD8);
  sub_8E80(v69, &qword_3207C8, &unk_27CDD8);
  *(&v62[1] + 7) = v65;
  *(&v62[2] + 7) = v66;
  *(&v62[3] + 7) = v67;
  *(&v62[4] + 7) = v68;
  *(v62 + 7) = v64;
  v31 = v63;
  v32 = v58;
  sub_153D74(v58);
  v53 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_15C9F4(v32, type metadata accessor for ColorConstants);
  *v20 = sub_261E50();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v33 = &v20[*(v56 + 44)];
  sub_2633A0();
  LOBYTE(v32) = sub_262530();
  sub_153B88(v11);
  sub_15CF50(v11, v7, v55);
  sub_15C9F4(v7, v54);
  sub_2610C0();
  v34 = &v20[*(v13 + 44)];
  *v34 = v32;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = v61;
  sub_8198(v23, v61, &qword_320850, &qword_27CF70);
  v40 = v59;
  sub_8198(v20, v59, &qword_320850, &qword_27CF70);
  v41 = v39;
  v42 = v60;
  sub_8198(v41, v60, &qword_320850, &qword_27CF70);
  v43 = sub_2EF0(&qword_320860, &qword_27CF80);
  v44 = v42 + *(v43 + 48);
  v45 = v57;
  *&v71 = v57;
  *(&v71 + 1) = 0xBFF0000000000000;
  LOBYTE(v72[0]) = v31;
  *(v72 + 1) = v62[0];
  *(&v72[1] + 1) = v62[1];
  *(&v72[3] + 1) = v62[3];
  v72[4] = *(&v62[3] + 15);
  *(&v72[2] + 1) = v62[2];
  v46 = v53;
  v73 = v53;
  v47 = v72[0];
  *v44 = v71;
  *(v44 + 16) = v47;
  v48 = v72[1];
  v49 = v72[2];
  v50 = v72[3];
  v51 = v72[4];
  *(v44 + 96) = v46;
  *(v44 + 64) = v50;
  *(v44 + 80) = v51;
  *(v44 + 32) = v48;
  *(v44 + 48) = v49;
  sub_8198(v40, v42 + *(v43 + 64), &qword_320850, &qword_27CF70);
  sub_8198(&v71, &v74, &qword_320868, &qword_27CF88);
  sub_8E80(v20, &qword_320850, &qword_27CF70);
  sub_8E80(v23, &qword_320850, &qword_27CF70);
  sub_8E80(v40, &qword_320850, &qword_27CF70);
  *&v74 = v45;
  *(&v74 + 1) = 0xBFF0000000000000;
  v75[0] = v31;
  *&v75[17] = v62[1];
  *&v75[33] = v62[2];
  *&v75[49] = v62[3];
  *&v75[64] = *(&v62[3] + 15);
  *&v75[1] = v62[0];
  v76 = v46;
  sub_8E80(&v74, &qword_320868, &qword_27CF88);
  return sub_8E80(v61, &qword_320850, &qword_27CF70);
}

uint64_t sub_15AB0C@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v41 = a2;
  v5 = type metadata accessor for SizeConstants.Spacing(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for SingleBookLockupView() + 44) + 136))
  {
    *&v44 = sub_261D30();
    LOBYTE(v70) = 0;
    sub_15B838(&v53);
    v86[1] = v55;
    v86[2] = v56;
    *&v86[3] = v57;
    v85 = v53;
    v86[0] = v54;
    *&v88[16] = v55;
    *&v88[32] = v56;
    *&v88[48] = v57;
    v87 = v53;
    *v88 = v54;
    sub_8198(&v85, v76, &qword_3207C8, &unk_27CDD8);
    sub_8E80(&v87, &qword_3207C8, &unk_27CDD8);
    v43 = v85;
    v51 = *&v86[0];
    v52 = *(&v85 + 1);
    v49 = *&v86[1];
    v50 = *(&v86[0] + 1);
    v47 = *&v86[2];
    v48 = *(&v86[1] + 1);
    v45 = *&v86[3];
    v46 = *(&v86[2] + 1);
    v16 = v70;
    sub_153D74(v15);
    v42 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    sub_15C9F4(v15, type metadata accessor for ColorConstants);
    *(&v44 + 1) = 0xBFF0000000000000;
  }

  else
  {
    v44 = 0uLL;
    v42 = 0;
    v43 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v16 = 0;
  }

  v39 = v16;
  v17 = sub_261E60();
  sub_153B88(v11);
  v18 = v11;
  v19 = v40;
  sub_15CF50(v18, v40, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v19, type metadata accessor for SizeConstants.Spacing);
  LOBYTE(v53) = 0;
  sub_15B07C(a1, v41 & 1, &v87);
  v74 = *&v88[48];
  v75[0] = *&v88[64];
  *(v75 + 9) = *&v88[73];
  v70 = v87;
  v71 = *v88;
  v72 = *&v88[16];
  v73 = *&v88[32];
  v76[0] = v87;
  v76[1] = *v88;
  v76[2] = *&v88[16];
  v76[3] = *&v88[32];
  v76[4] = *&v88[48];
  v77[0] = *&v88[64];
  *(v77 + 9) = *&v88[73];
  sub_8198(&v70, &v85, &qword_3207B0, &qword_27CDC0);
  sub_8E80(v76, &qword_3207B0, &qword_27CDC0);
  *(&v69[3] + 7) = v73;
  *(&v69[4] + 7) = v74;
  *(&v69[5] + 7) = v75[0];
  v69[6] = *(v75 + 9);
  v20 = *(v75 + 9);
  *(v69 + 7) = v70;
  *(&v69[1] + 7) = v71;
  *(&v69[2] + 7) = v72;
  v21 = v53;
  v22 = v44;
  v78 = v44;
  *&v79 = v16;
  v23 = v43;
  *(&v79 + 1) = v43;
  *&v80 = v52;
  *(&v80 + 1) = v51;
  *&v81 = v50;
  *(&v81 + 1) = v49;
  *&v82 = v48;
  *(&v82 + 1) = v47;
  *&v83 = v46;
  *(&v83 + 1) = v45;
  v62 = v44;
  v63 = v79;
  v66 = v82;
  v67 = v83;
  v64 = v80;
  v65 = v81;
  *&v85 = v17;
  *(&v85 + 1) = 0x4020000000000000;
  LOBYTE(v86[0]) = v53;
  v24 = v69[1];
  *(&v86[2] + 1) = v69[2];
  v25 = v69[0];
  *(&v86[1] + 1) = v69[1];
  *(v86 + 1) = v69[0];
  v26 = v69[5];
  *(&v86[6] + 1) = *(v75 + 9);
  v27 = v69[4];
  *(&v86[5] + 1) = v69[5];
  v28 = v69[3];
  *(&v86[4] + 1) = v69[4];
  v29 = v69[2];
  *(&v86[3] + 1) = v69[3];
  *(v68 + 8) = v85;
  *(&v68[4] + 8) = v86[3];
  *(&v68[3] + 8) = v86[2];
  *(&v68[2] + 8) = v86[1];
  *(&v68[1] + 8) = v86[0];
  *(&v68[7] + 8) = v86[6];
  v30 = v42;
  *&v68[0] = v42;
  BYTE8(v68[8]) = BYTE8(v75[1]);
  *(&v68[6] + 8) = v86[5];
  *(&v68[5] + 8) = v86[4];
  v31 = v68[7];
  a3[12] = v68[6];
  a3[13] = v31;
  *(a3 + 217) = *(&v68[7] + 9);
  v32 = v68[3];
  a3[8] = v68[2];
  a3[9] = v32;
  v33 = v68[5];
  a3[10] = v68[4];
  a3[11] = v33;
  v34 = v67;
  a3[4] = v66;
  a3[5] = v34;
  v35 = v68[1];
  a3[6] = v68[0];
  a3[7] = v35;
  v36 = v63;
  *a3 = v62;
  a3[1] = v36;
  v37 = v65;
  a3[2] = v64;
  a3[3] = v37;
  *&v88[49] = v28;
  *&v88[65] = v27;
  *&v88[81] = v26;
  v84 = v30;
  *&v87 = v17;
  *(&v87 + 1) = 0x4020000000000000;
  v88[0] = v21;
  v89 = v20;
  *&v88[1] = v25;
  *&v88[17] = v24;
  *&v88[33] = v29;
  sub_8198(&v78, &v53, &qword_3207B8, &qword_27CDC8);
  sub_8198(&v85, &v53, &qword_3207C0, &qword_27CDD0);
  sub_8E80(&v87, &qword_3207C0, &qword_27CDD0);
  v53 = __PAIR128__(*(&v44 + 1), v22);
  *&v54 = v39;
  *(&v54 + 1) = v23;
  *&v55 = v52;
  *(&v55 + 1) = v51;
  *&v56 = v50;
  *(&v56 + 1) = v49;
  v57 = v48;
  v58 = v47;
  v59 = v46;
  v60 = v45;
  v61 = v30;
  return sub_8E80(&v53, &qword_3207B8, &qword_27CDC8);
}

uint64_t sub_15B07C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v86 = a3;
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v82 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v80 - v9;
  v11 = sub_262730();
  v88 = *(v11 - 8);
  v12 = *(v88 + 64);
  __chkstk_darwin(v11);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v80 - v16;
  v18 = type metadata accessor for FontConstants.SingleBookWidget(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v81 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v80 - v22;
  v24 = (a1 + *(type metadata accessor for SingleBookLockupView() + 44));
  v25 = v24[10];
  v83 = v11;
  if (v25)
  {
    v84 = v14;
    v26 = v24[9];

    v27 = v88;
    sub_153F60(v23);
    (*(v27 + 104))(v17, enum case for Font.TextStyle.subheadline(_:), v11);
    v28 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
    v80[1] = a1;
    if (v28)
    {
      v29 = sub_2625C0();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    }

    else
    {
      v35 = enum case for Font.Design.serif (_:);
      v36 = sub_2625C0();
      v37 = *(v36 - 8);
      (*(v37 + 104))(v10, v35, v36);
      (*(v37 + 56))(v10, 0, 1, v36);
      v11 = v83;
    }

    sub_262680();
    sub_8E80(v10, &qword_318458, &unk_26B270);
    (*(v88 + 8))(v17, v11);
    sub_15C9F4(v23, type metadata accessor for FontConstants.SingleBookWidget);
    v38 = sub_262840();
    v40 = v39;
    v42 = v41;

    v95 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    v93 = sub_2627F0();
    v89 = v44;
    v90 = v43;
    v46 = v45;
    sub_39DBC(v38, v40, v42 & 1);

    v47 = 5;
    if (a2)
    {
      v47 = 8;
    }

    v92 = v47;
    KeyPath = swift_getKeyPath();
    LOBYTE(v95) = v46 & 1;
    v94 = 0;
    v91 = v46 & 1;
    v85 = 0x10000;
    v14 = v84;
    if (v24[17])
    {
      goto LABEL_10;
    }
  }

  else
  {
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v89 = 0;
    KeyPath = 0;
    v85 = 0;
    if (v24[17])
    {
LABEL_10:
      v80[0] = v24[16];

      v48 = v81;
      v49 = v88;
      sub_153F60(v81);
      v50 = v83;
      (*(v49 + 104))(v14, enum case for Font.TextStyle.caption(_:), v83);
      v51 = enum case for Font.Design.rounded(_:);
      v52 = sub_2625C0();
      v53 = *(v52 - 8);
      v54 = v82;
      (*(v53 + 104))(v82, v51, v52);
      v55 = *(v53 + 56);
      v84 = 1;
      v55(v54, 0, 1, v52);
      sub_262680();
      sub_8E80(v54, &qword_318458, &unk_26B270);
      (*(v49 + 8))(v14, v50);
      sub_2625A0();

      sub_15C9F4(v48, type metadata accessor for FontConstants.SingleBookWidget);
      v56 = sub_262840();
      v58 = v57;
      LOBYTE(v54) = v59;

      v95 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
      v30 = sub_2627F0();
      v61 = v60;
      LOBYTE(v51) = v62;
      v64 = v63;
      sub_39DBC(v56, v58, v54 & 1);

      v65 = swift_getKeyPath();
      v66 = v51 & 1;
      v31 = v61;
      v32 = v66;
      sub_43B58(v30, v61, v66);
      v33 = v64;

      v34 = v65;

      goto LABEL_11;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v84 = 0;
LABEL_11:
  v67 = v93;
  v68 = v91;
  v69 = KeyPath;
  v70 = v85;
  sub_15C948(v93, v90, v91, v89);
  v71 = v30;
  v72 = v32;
  v73 = v32;
  v74 = v30;
  v75 = v84;
  sub_15C948(v71, v31, v73, v33);
  sub_15C998(v74, v31, v72, v33);
  v76 = v86;
  *v86 = v67;
  v77 = v90;
  v76[1] = v90;
  v76[2] = v68;
  v78 = v89;
  v76[3] = v89;
  v76[4] = v69;
  v76[5] = v92;
  *(v76 + 50) = BYTE2(v70);
  *(v76 + 24) = v70;
  v76[7] = v74;
  v76[8] = v31;
  v76[9] = v72;
  v76[10] = v33;
  v76[11] = v34;
  v76[12] = v75;
  *(v76 + 104) = 0;
  sub_15C998(v74, v31, v72, v33);
  return sub_15C998(v93, v77, v91, v78);
}

uint64_t sub_15B838@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FontConstants.SingleBookWidget(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2630B0();
  sub_153F60(v14);
  sub_262690();
  v27 = sub_2625A0();

  sub_15C9F4(v14, type metadata accessor for FontConstants.SingleBookWidget);
  KeyPath = swift_getKeyPath();
  v16 = sub_2630B0();
  sub_153F60(v14);
  (*(v7 + 104))(v10, enum case for Font.TextStyle.subheadline(_:), v6);
  v17 = sub_2625C0();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v26 = sub_262680();
  sub_8E80(v5, &qword_318458, &unk_26B270);
  (*(v7 + 8))(v10, v6);
  sub_15C9F4(v14, type metadata accessor for FontConstants.SingleBookWidget);
  v18 = swift_getKeyPath();
  v19 = sub_2630B0();
  sub_153F60(v14);
  sub_262690();
  v20 = sub_2625A0();

  sub_15C9F4(v14, type metadata accessor for FontConstants.SingleBookWidget);
  v21 = swift_getKeyPath();
  v22 = v27;
  *a1 = v28;
  a1[1] = KeyPath;
  a1[2] = v22;
  a1[3] = v16;
  v23 = v26;
  a1[4] = v18;
  a1[5] = v23;
  a1[6] = v19;
  a1[7] = v21;
  a1[8] = v20;
}

uint64_t type metadata accessor for SingleBookLockupView()
{
  result = qword_320658;
  if (!qword_320658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_15BCAC(uint64_t a1)
{
  v2 = sub_261180();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_2619A0();
}

uint64_t sub_15BDA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_319858, &unk_2725D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_2EF0(&qword_3205F8, &qword_27CBF8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11] + 24);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_15BFE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_316F68, &unk_269C50);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_2EF0(&qword_316F70, &unk_2693C0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = sub_2EF0(&qword_3205F8, &qword_27CBF8);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11] + 24) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_15C200()
{
  sub_15C3B0(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
  if (v0 <= 0x3F)
  {
    sub_15C3B0(319, &qword_317C68, type metadata accessor for SizeConstants);
    if (v1 <= 0x3F)
    {
      sub_15C3B0(319, &qword_316FE8, type metadata accessor for ColorConstants);
      if (v2 <= 0x3F)
      {
        sub_15C3B0(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_15C3B0(319, &unk_320668, type metadata accessor for FontConstants.SingleBookWidget);
          if (v4 <= 0x3F)
          {
            sub_60890(319, &qword_3167D0);
            if (v5 <= 0x3F)
            {
              sub_60890(319, &qword_31D880);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_15C3B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_15C408()
{
  result = qword_3206B0;
  if (!qword_3206B0)
  {
    sub_2F9C(&qword_3205F0, &unk_27CB60);
    sub_15C4C0();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206B0);
  }

  return result;
}

unint64_t sub_15C4C0()
{
  result = qword_3206B8;
  if (!qword_3206B8)
  {
    sub_2F9C(&qword_3205E8, &qword_27CAE0);
    sub_15C54C();
    sub_EFAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206B8);
  }

  return result;
}

unint64_t sub_15C54C()
{
  result = qword_3206C0;
  if (!qword_3206C0)
  {
    sub_2F9C(&qword_3205E0, &qword_27CAD8);
    sub_15C5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206C0);
  }

  return result;
}

unint64_t sub_15C5D8()
{
  result = qword_3206C8;
  if (!qword_3206C8)
  {
    sub_2F9C(&qword_3205D8, &qword_27CAD0);
    sub_15C664();
    sub_15C860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206C8);
  }

  return result;
}

unint64_t sub_15C664()
{
  result = qword_3206D0;
  if (!qword_3206D0)
  {
    sub_2F9C(&qword_3206D8, &qword_27CC18);
    sub_15C6F0();
    sub_15C7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206D0);
  }

  return result;
}

unint64_t sub_15C6F0()
{
  result = qword_3206E0;
  if (!qword_3206E0)
  {
    sub_2F9C(&qword_3206E8, &qword_27CC20);
    sub_8E38(&qword_3206F0, &qword_3206F8, &qword_27CC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206E0);
  }

  return result;
}

unint64_t sub_15C7A8()
{
  result = qword_320700;
  if (!qword_320700)
  {
    sub_2F9C(&qword_320708, &qword_27CC30);
    sub_8E38(&qword_320710, &qword_320718, &qword_27CC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320700);
  }

  return result;
}

unint64_t sub_15C860()
{
  result = qword_320720;
  if (!qword_320720)
  {
    sub_2F9C(&qword_320728, &qword_27CC40);
    sub_8E38(&qword_320730, &qword_320738, &qword_27CC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320720);
  }

  return result;
}

uint64_t sub_15C948(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_43B58(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_15C998(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_39DBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_15C9F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_15CA54()
{
  v1 = type metadata accessor for SingleBookLockupView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261690();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = &v4[v1[5]];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(&v7[v8], v9);
  }

  else
  {
    v10 = *v7;
  }

  v11 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_261180();
    (*(*(v12 - 8) + 8))(&v4[v11], v12);
  }

  else
  {
    v13 = *&v4[v11];
  }

  v14 = v1[7];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_261180();
    (*(*(v15 - 8) + 8))(&v4[v14], v15);
  }

  else
  {
    v16 = *&v4[v14];
  }

  v17 = &v4[v1[8]];
  sub_2EF0(&qword_3205D0, &qword_27CA78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v19 = sub_261690();
    (*(*(v19 - 8) + 8))(&v17[v18], v19);
  }

  else
  {
    v20 = *v17;
  }

  sub_3074(*&v4[v1[9]], v4[v1[9] + 8]);
  sub_3074(*&v4[v1[10]], v4[v1[10] + 8]);
  v21 = &v4[v1[11]];
  v22 = *(v21 + 1);

  v23 = *(v21 + 3);

  v24 = *(v21 + 5);

  v25 = *(v21 + 10);

  sub_3080(v21 + 11);
  v26 = *(v21 + 17);

  return swift_deallocObject();
}

uint64_t sub_15CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for SingleBookLockupView() - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return sub_15941C(a1, v7, a2, v6);
}

unint64_t sub_15CE38()
{
  result = qword_320800;
  if (!qword_320800)
  {
    sub_2F9C(&qword_3207F8, &unk_27CEA8);
    sub_439B8();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320800);
  }

  return result;
}

uint64_t sub_15CEF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15CF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_15CFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_15D034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2EF0(&qword_316208, &qword_268BD0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 40);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_15D160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_316208, &qword_268BD0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 40) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ToolbarActionMenuItemLabel()
{
  result = qword_320920;
  if (!qword_320920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_15D2C4()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    sub_95918();
    if (v1 <= 0x3F)
    {
      sub_15D3D8(319, &qword_31B8F0, &type metadata for ToolbarActionMenuItemIcon, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_5027C();
        if (v3 <= 0x3F)
        {
          sub_15D3D8(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_15D3D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_15D444@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_260B00();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_316208, &qword_268BD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v49 - v8;
  v10 = sub_260BD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v49 - v15;
  v16 = sub_2EF0(&qword_31AA18, &qword_26FB18);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = sub_2EF0(&qword_320968, &qword_27D110);
  v52 = *(v22 - 8);
  v53 = v22;
  v23 = *(v52 + 64);
  __chkstk_darwin(v22);
  v54 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  v60 = v2;
  v59 = v2;
  sub_2EF0(&qword_320970, &qword_27D118);
  sub_15E964(&qword_3184E0, &type metadata accessor for LocalizedText);
  sub_15E754();
  v28 = v27;
  v57 = v3;
  sub_263130();
  v29 = type metadata accessor for ToolbarActionMenuItemLabel();
  sub_8198(v2 + *(v29 + 20), v9, &qword_316208, &qword_268BD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_8E80(v9, &qword_316208, &qword_268BD0);
    v30 = 1;
    v32 = v56;
    v31 = v57;
  }

  else
  {
    v33 = v49;
    (*(v11 + 32))(v49, v9, v10);
    (*(v11 + 16))(v50, v33, v10);
    v34 = v51;
    sub_260B10();
    (*(v11 + 8))(v33, v10);
    v35 = v56;
    v36 = v34;
    v37 = v57;
    (*(v56 + 32))(v21, v36, v57);
    v30 = 0;
    v31 = v37;
    v32 = v35;
  }

  v38 = v21;
  (*(v32 + 56))(v21, v30, 1, v31);
  v39 = v52;
  v40 = v53;
  v41 = *(v52 + 16);
  v42 = v54;
  v41(v54, v28, v53);
  v43 = v21;
  v44 = v55;
  sub_8198(v43, v55, &qword_31AA18, &qword_26FB18);
  v45 = v58;
  v41(v58, v42, v40);
  v46 = sub_2EF0(&qword_3209B8, &qword_27D138);
  sub_8198(v44, &v45[*(v46 + 48)], &qword_31AA18, &qword_26FB18);
  sub_8E80(v38, &qword_31AA18, &qword_26FB18);
  v47 = *(v39 + 8);
  v47(v28, v40);
  sub_8E80(v44, &qword_31AA18, &qword_26FB18);
  return (v47)(v42, v40);
}

uint64_t sub_15D9D8(uint64_t a1)
{
  v2 = sub_260BD0();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_260B10();
}

uint64_t sub_15DAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v63 = sub_2EF0(&qword_3209C0, &qword_27D140);
  v3 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v64 = &v61 - v4;
  v67 = sub_2EF0(&qword_3209A8, &qword_27D130);
  v5 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v7 = &v61 - v6;
  v8 = type metadata accessor for FlatCoverView();
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_260720();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  v62 = sub_261C90();
  v61 = *(v62 - 8);
  v20 = *(v61 + 64);
  __chkstk_darwin(v62);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2EF0(&qword_3209C8, &unk_27D148);
  v23 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v66 = (&v61 - v24);
  v25 = type metadata accessor for ToolbarActionMenuItemLabel();
  sub_8198(a1 + v25[6], &v78, &qword_31AC00, &qword_270F30);
  if (v81 > 1u)
  {
    if (v81 == 2)
    {
      v73 = v78;
      v74 = v79;
      v75 = v80;
      sub_30CC(&v73, &v69);
      sub_2E18(&v69, v71);
      sub_260850();
      (*(v13 + 104))(v16, enum case for ContentKind.audiobook(_:), v12);
      v27 = sub_260710();
      v28 = *(v13 + 8);
      v28(v16, v12);
      v28(v19, v12);
      if (v27)
      {
        v29 = 26.0;
      }

      else
      {
        v29 = 40.0;
      }

      sub_30CC(&v69, &v11[v8[8]]);
      *v11 = swift_getKeyPath();
      v11[40] = 0;
      *(v11 + 6) = swift_getKeyPath();
      v11[56] = 0;
      type metadata accessor for ProfileRestrictions();
      sub_15E964(&qword_326DC0, type metadata accessor for ProfileRestrictions);
      *(v11 + 8) = sub_261900();
      *(v11 + 9) = v30;
      v31 = v8[7];
      *&v11[v31] = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v32 = &v11[v8[9]];
      *v32 = 0x403A000000000000;
      *(v32 + 1) = v29;
      *&v11[v8[10]] = 0x4004000000000000;
      sub_15E9B0(v11, v64);
      swift_storeEnumTagMultiPayload();
      sub_15E964(&qword_3209B0, type metadata accessor for FlatCoverView);
      sub_261F80();
      sub_8198(v7, v66, &qword_3209A8, &qword_27D130);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_320988, &qword_27D120);
      sub_15E7E0();
      sub_15E898();
      sub_261F80();
      sub_8E80(v7, &qword_3209A8, &qword_27D130);
      sub_15EA14(v11);
      sub_15EA70(&v73);
      return sub_3080(&v69);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_15E964(&qword_3209B0, type metadata accessor for FlatCoverView);
      sub_261F80();
      sub_8198(v7, v66, &qword_3209A8, &qword_27D130);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_320988, &qword_27D120);
      sub_15E7E0();
      sub_15E898();
      sub_261F80();
      return sub_8E80(v7, &qword_3209A8, &qword_27D130);
    }
  }

  else
  {
    if (v81)
    {
      v34 = v78;
      v73 = v78;
      v69 = 8218235;
      *&v70 = 0xE300000000000000;
      v77[0] = 6778480;
      v77[1] = 0xE300000000000000;
      sub_10A84();
      v35 = sub_264AA0();
      v37 = v36;
      v73 = v34;
      v69 = 1735290926;
      *&v70 = 0xE400000000000000;
      v38 = sub_264AB0();

      v39 = a1 + v25[7];
      sub_40858(&v73);
      v40 = *(&v74 + 1);
      v41 = v75;
      sub_2E18(&v73, *(&v74 + 1));
      v69 = v35;
      *&v70 = v37;
      BYTE8(v70) = 1;
      v43 = a1 + v25[8];
      v44 = *v43;
      if (*(v43 + 8) == 1)
      {
        v42.n128_u64[0] = *v43;
      }

      else
      {

        sub_264900();
        v49 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_3074(v44, 0);
        (*(v61 + 8))(v22, v62);
        v42.n128_u64[0] = v77[0];
      }

      BYTE2(v77[0]) = -2;
      LOWORD(v77[0]) = -772;
      v50 = (*(v41 + 16))(&v69, v77, v40, v41, 26.0, 26.0, v42);

      sub_3080(&v73);
      v51 = swift_allocObject();
      *(v51 + 16) = v38 & 1;
      v52 = type metadata accessor for ImageResourceLoader();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      sub_2EF0(&qword_318728, &qword_26DBF0);
      v56 = swift_allocObject();
      *(v56 + 28) = 0;
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      *(v55 + 24) = v56;

      sub_2603B0();
      v69 = v55;

      sub_2631D0();

      v69 = sub_15EAD4;
      *&v70 = v51;
      *(&v70 + 1) = v50;
      v71 = v73;
      v72 = 1;

      swift_unknownObjectRetain();

      sub_2EF0(&qword_320998, &qword_27D128);
      sub_8E38(&qword_320990, &qword_320998, &qword_27D128);
      sub_261F80();
      v57 = v75;
      v58 = v76;
      v59 = v74;
      v60 = v66;
      *v66 = v73;
      v60[1] = v59;
      *(v60 + 4) = v57;
      *(v60 + 40) = v58;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_320988, &qword_27D120);
      sub_15E7E0();
      sub_15E898();
      sub_261F80();

      swift_unknownObjectRelease();
    }

    else
    {
      if (v79 == 1)
      {
        v26 = sub_2630B0();
      }

      else
      {
        v26 = sub_263110();
      }

      v69 = v26;
      v70 = 0u;
      v71 = 0u;
      v72 = 0;

      sub_2EF0(&qword_320998, &qword_27D128);
      sub_8E38(&qword_320990, &qword_320998, &qword_27D128);
      sub_261F80();
      v45 = v75;
      v46 = v76;
      v47 = v74;
      v48 = v66;
      *v66 = v73;
      v48[1] = v47;
      *(v48 + 4) = v45;
      *(v48 + 40) = v46;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_320988, &qword_27D120);
      sub_15E7E0();
      sub_15E898();
      sub_261F80();
    }
  }
}

void *sub_15E6F4@<X0>(void *result@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (result)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v5 = [result imageWithRenderingMode:v4];
    result = sub_2630A0();
  }

  *a3 = result;
  return result;
}

unint64_t sub_15E754()
{
  result = qword_320978;
  if (!qword_320978)
  {
    sub_2F9C(&qword_320970, &qword_27D118);
    sub_15E7E0();
    sub_15E898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320978);
  }

  return result;
}

unint64_t sub_15E7E0()
{
  result = qword_320980;
  if (!qword_320980)
  {
    sub_2F9C(&qword_320988, &qword_27D120);
    sub_8E38(&qword_320990, &qword_320998, &qword_27D128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320980);
  }

  return result;
}

unint64_t sub_15E898()
{
  result = qword_3209A0;
  if (!qword_3209A0)
  {
    sub_2F9C(&qword_3209A8, &qword_27D130);
    sub_15E964(&qword_3209B0, type metadata accessor for FlatCoverView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3209A0);
  }

  return result;
}

uint64_t sub_15E964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15E9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlatCoverView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15EA14(uint64_t a1)
{
  v2 = type metadata accessor for FlatCoverView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_15EB34(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_263490();
      v5 = sub_2646C0();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = sub_263490();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_15EC90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_3179B8, &unk_269D50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22148(v12, a1, &qword_3178F0, &qword_269C90);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_15EE70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for BooksFinishedFrameViewModel(0);
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1677B0(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t BooksFinishedFrameViewModel.init(coverViewModels:localizedYear:userName:exposureData:lowAssetCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  sub_2EF0(&qword_3179B8, &unk_269D50);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v17 = v16[5];
  *(a8 + v17) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  *(a8 + v16[11]) = 9;
  *(a8 + v16[12]) = xmmword_27D200;
  *(a8 + v16[6]) = a1;
  v18 = (a8 + v16[7]);
  *v18 = a2;
  v18[1] = a3;
  v19 = (a8 + v16[8]);
  *v19 = a4;
  v19[1] = a5;
  v20 = v16[9];
  v21 = sub_260550();
  result = (*(*(v21 - 8) + 32))(a8 + v20, a6, v21);
  *(a8 + v16[10]) = a7 ^ 1;
  return result;
}

double sub_15F1B8()
{
  v1 = type metadata accessor for SizeConstants.Spacing(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v22 - v12);
  v14 = type metadata accessor for SizeConstants(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BooksFinishedFrameViewModel(0);
  sub_8198(v0 + *(v18 + 20), v13, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1677B0(v13, v17, type metadata accessor for SizeConstants);
  }

  else
  {
    v19 = *v13;
    sub_264900();
    v20 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  sub_1677B0(v17, v4, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v4);
  return 32.0;
}

uint64_t sub_15F458()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v31 = sub_264410();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v31);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_2643F0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v17 = v16;
  v18 = *(v0 + v16[6]);
  if (*(v0 + v16[10]))
  {
    v19 = (v0 + v16[8]);
    v20 = v19[1];
    v28 = *v19;
    sub_2643E0();
    if (v20)
    {
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      sub_2643D0(v33);
      v34._countAndFlagsBits = v28;
      v34._object = v20;
      sub_2643C0(v34);
      v21._countAndFlagsBits = 0x657220756F79202CLL;
      v21._object = 0xEB00000000206461;
    }

    else
    {
      v21._countAndFlagsBits = 0x6461657220756F59;
      v21._object = 0xE900000000000020;
    }

    sub_2643D0(v21);
    v32 = *(v18 + 16);
    sub_2643B0();
    v35._countAndFlagsBits = 0x6920736B6F6F6220;
    v35._object = 0xEA0000000000206ELL;
    sub_2643D0(v35);
    sub_2643C0(*(v0 + v17[7]));
    v36._countAndFlagsBits = 46;
    v36._object = 0xE100000000000000;
    sub_2643D0(v36);
    sub_264400();
    sub_260260();
    v22 = v31;
    (*(v8 + 16))(v29, v13, v31);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v30, v7, v1);
  }

  else
  {
    v28 = v1;
    if (*(v18 + 16) == 1)
    {
      sub_2643E0();
      v24._object = 0x8000000000293780;
      v24._countAndFlagsBits = 0xD000000000000016;
    }

    else
    {
      sub_2643E0();
      v24._countAndFlagsBits = 0xD000000000000018;
      v24._object = 0x8000000000293720;
    }

    sub_2643D0(v24);
    sub_2643C0(*(v0 + v17[7]));
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    sub_2643D0(v37);
    sub_264400();
    sub_260260();
    v22 = v31;
    (*(v8 + 16))(v29, v13, v31);
    type metadata accessor for BundleFinder();
    v25 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:v25];
    v1 = v28;
    (*(v2 + 16))(v30, v7, v28);
  }

  v26 = sub_264490();
  (*(v2 + 8))(v7, v1);
  (*(v8 + 8))(v13, v22);
  return v26;
}

uint64_t sub_15FB68()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v21[-v7];
  v9 = sub_264410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v21[-v15];
  v17 = *(v0 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 40));
  sub_2643A0();
  sub_260260();
  (*(v10 + 16))(v13, v16, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v5, v8, v1);
  v19 = sub_264490();
  (*(v2 + 8))(v8, v1);
  (*(v10 + 8))(v16, v9);
  return v19;
}

uint64_t sub_15FEB8()
{
  v1 = sub_2EF0(&qword_320CB0, &qword_27D790);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - v4;
  v6 = sub_2EF0(&qword_3178F0, &qword_269C90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v14 = *(*(v0 + *(v13 + 24)) + 16);
  sub_15EC90(v12);
  v15 = *(v2 + 56);
  *v5 = v14;
  sub_22148(v12, &v5[v15], &qword_3178F0, &qword_269C90);
  if (v14 < *(v0 + *(v13 + 44)))
  {
    v16 = &qword_3178F0;
    v17 = &qword_269C90;
    v18 = &v5[v15];
LABEL_5:
    sub_8E80(v18, v16, v17);
    return 2;
  }

  v19 = sub_262180();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(&v5[v15], 1, v19) == 1)
  {
LABEL_4:
    v16 = &qword_320CB0;
    v17 = &qword_27D790;
    v18 = v5;
    goto LABEL_5;
  }

  sub_8198(&v5[v15], v9, &qword_3178F0, &qword_269C90);
  v22 = (*(v20 + 88))(v9, v19);
  if (v22 == enum case for UserInterfaceSizeClass.compact(_:))
  {
    sub_8E80(&v5[v15], &qword_3178F0, &qword_269C90);
    return 3;
  }

  else
  {
    if (v22 != enum case for UserInterfaceSizeClass.regular(_:))
    {
      (*(v20 + 8))(v9, v19);
      goto LABEL_4;
    }

    sub_8E80(&v5[v15], &qword_3178F0, &qword_269C90);
    return 4;
  }
}

void sub_160170(uint64_t *a1@<X8>)
{
  v81 = a1;
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v79 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SizeConstants(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v84 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_262180();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v68 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2EF0(&qword_317970, &qword_269D00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v64[-v17];
  v19 = sub_2EF0(&qword_3178F0, &qword_269C90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v67 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v83 = &v64[-v23];
  __chkstk_darwin(v24);
  v26 = &v64[-v25];
  __chkstk_darwin(v27);
  v29 = &v64[-v28];
  __chkstk_darwin(v30);
  v32 = &v64[-v31];
  __chkstk_darwin(v33);
  v35 = &v64[-v34];
  v36 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v37 = *(*(v1 + v36[6]) + 16);
  v38 = *(v1 + v36[11]);
  v78 = v15;
  v75 = v26;
  v66 = v29;
  if (v37 >= v38)
  {
    v39 = 3;
  }

  else
  {
    v39 = 1;
    if (*(v1 + v36[10]))
    {
      v39 = 2;
    }
  }

  v77 = v39;
  v76 = sub_15FEB8();
  v80 = v1;
  sub_15EC90(v35);
  v40 = v9[13];
  v69 = enum case for UserInterfaceSizeClass.compact(_:);
  v72 = v40;
  v40(v32);
  v70 = v9[7];
  v71 = v9 + 7;
  v70(v32, 0, 1, v8);
  v74 = v12;
  v41 = *(v12 + 48);
  sub_8198(v35, v18, &qword_3178F0, &qword_269C90);
  sub_8198(v32, &v18[v41], &qword_3178F0, &qword_269C90);
  v82 = v9;
  v42 = v9[6];
  v43 = v42(v18, 1, v8);
  v73 = v42;
  if (v43 == 1)
  {
    sub_8E80(v32, &qword_3178F0, &qword_269C90);
    sub_8E80(v35, &qword_3178F0, &qword_269C90);
    if (v42(&v18[v41], 1, v8) == 1)
    {
      sub_8E80(v18, &qword_3178F0, &qword_269C90);
      v44 = 20.0;
      v45 = v79;
      v46 = v84;
      v47 = v75;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v48 = v66;
  sub_8198(v18, v66, &qword_3178F0, &qword_269C90);
  if (v42(&v18[v41], 1, v8) == 1)
  {
    sub_8E80(v32, &qword_3178F0, &qword_269C90);
    sub_8E80(v35, &qword_3178F0, &qword_269C90);
    (v82[1])(v48, v8);
LABEL_11:
    sub_8E80(v18, &qword_317970, &qword_269D00);
    v45 = v79;
    v46 = v84;
    v47 = v75;
LABEL_12:
    v44 = 24.0;
    goto LABEL_13;
  }

  v58 = v68;
  (v82[4])(v68, &v18[v41], v8);
  sub_1661CC(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass);
  v65 = sub_264390();
  v59 = v82[1];
  v59(v58, v8);
  sub_8E80(v32, &qword_3178F0, &qword_269C90);
  sub_8E80(v35, &qword_3178F0, &qword_269C90);
  v59(v48, v8);
  sub_8E80(v18, &qword_3178F0, &qword_269C90);
  v44 = 20.0;
  v45 = v79;
  v46 = v84;
  v47 = v75;
  if ((v65 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_15EE70(v46);
  sub_1677B0(v46, v45, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v45);
  sub_15EC90(v47);
  v49 = v83;
  v72(v83, v69, v8);
  v70(v49, 0, 1, v8);
  v50 = *(v74 + 48);
  v51 = v78;
  sub_8198(v47, v78, &qword_3178F0, &qword_269C90);
  sub_8198(v49, v51 + v50, &qword_3178F0, &qword_269C90);
  v52 = v73;
  if (v73(v51, 1, v8) != 1)
  {
    v55 = v67;
    sub_8198(v51, v67, &qword_3178F0, &qword_269C90);
    if (v52(v51 + v50, 1, v8) != 1)
    {
      v60 = v82;
      v61 = v47;
      v62 = v68;
      (v82[4])(v68, v51 + v50, v8);
      sub_1661CC(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass);
      LODWORD(v80) = sub_264390();
      v63 = v60[1];
      v63(v62, v8);
      sub_8E80(v83, &qword_3178F0, &qword_269C90);
      sub_8E80(v61, &qword_3178F0, &qword_269C90);
      v63(v55, v8);
      sub_8E80(v51, &qword_3178F0, &qword_269C90);
      v53 = 20.0;
      v54 = v84;
      if (v80)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    sub_8E80(v83, &qword_3178F0, &qword_269C90);
    sub_8E80(v47, &qword_3178F0, &qword_269C90);
    (v82[1])(v55, v8);
LABEL_18:
    sub_8E80(v51, &qword_317970, &qword_269D00);
    v54 = v84;
LABEL_19:
    v53 = 24.0;
    goto LABEL_20;
  }

  sub_8E80(v49, &qword_3178F0, &qword_269C90);
  sub_8E80(v47, &qword_3178F0, &qword_269C90);
  if (v52(v51 + v50, 1, v8) != 1)
  {
    goto LABEL_18;
  }

  sub_8E80(v51, &qword_3178F0, &qword_269C90);
  v53 = 20.0;
  v54 = v84;
LABEL_20:
  sub_15EE70(v54);
  sub_1677B0(v54, v45, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v45);
  sub_15F1B8();
  v56 = v81;
  v57 = v76;
  *v81 = v77;
  *(v56 + 1) = v57;
  v56[2] = v44;
  v56[3] = v53;
  v56[4] = 32.0;
}

uint64_t sub_160ADC@<X0>(uint64_t *a1@<X8>)
{
  v100 = a1;
  v1 = sub_2643F0();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_260290();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v87 - v9;
  v11 = sub_264410();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v87 - v17;
  sub_2643A0();
  sub_260260();
  v19 = v12[2];
  v97 = v12 + 2;
  v102 = v19;
  v19(v15, v18, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v105 = objc_opt_self();
  v108 = ObjCClassFromMetadata;
  v21 = [v105 bundleForClass:ObjCClassFromMetadata];
  v22 = v4[2];
  v106 = v4 + 2;
  v109 = v22;
  v22(v7, v10, v3);
  v101 = v15;
  v23 = v7;
  v98 = sub_264490();
  v99 = v24;
  v25 = v4[1];
  v103 = v3;
  v112 = v4 + 1;
  v107 = v25;
  v25(v10, v3);
  v26 = v12[1];
  v104 = v11;
  v110 = v26;
  v111 = v12 + 1;
  v26(v18, v11);
  v27 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v28 = v95;
  if (*(v95 + *(v27 + 40)))
  {
    v29 = sub_161574(v95);
    v93 = v30;
    v94 = v29;
    sub_2EF0(&qword_320C98, &unk_27EAF0);
    v95 = type metadata accessor for BulletPointStack.Bullet(0);
    v31 = *(v95 - 1);
    v92 = *(v31 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_269100;
    v96 = v33;
    v34 = (v33 + v32);
    v91 = 0x80000000002931F0;
    sub_2643A0();
    sub_260260();
    v35 = v101;
    v36 = v102;
    v37 = v104;
    (v102)(v101, v18);
    v38 = [v105 bundleForClass:v108];
    v39 = v103;
    v109(v23, v10, v103);
    v90 = sub_264490();
    v89 = v40;
    v107(v10, v39);
    v110(v18, v37);
    sub_2643A0();
    sub_260260();
    v36(v35, v18, v37);
    v41 = v105;
    v42 = [v105 bundleForClass:v108];
    v43 = v39;
    v88 = v23;
    v109(v23, v10, v39);
    v44 = sub_264490();
    v46 = v45;
    v107(v10, v43);
    v47 = v104;
    v110(v18, v104);
    *v34 = 0xD000000000000010;
    v48 = v90;
    v34[1] = v91;
    v34[2] = v48;
    v34[3] = v89;
    v34[4] = v44;
    v34[5] = v46;
    v49 = v95[7];
    v95 += 7;
    sub_2601D0();
    v50 = (v34 + v92);
    sub_2643A0();
    sub_260260();
    v52 = v101;
    v51 = v102;
    v102(v101, v18, v47);
    v53 = [v41 bundleForClass:v108];
    v54 = v88;
    v55 = v103;
    v109(v88, v10, v103);
    v56 = v54;
    v92 = sub_264490();
    v91 = v57;
    v58 = v107;
    v107(v10, v55);
    v59 = v104;
    v110(v18, v104);
    sub_2643A0();
    sub_260260();
    v51(v52, v18, v59);
    v60 = [v105 bundleForClass:v108];
    v109(v56, v10, v55);
    v61 = sub_264490();
    v63 = v62;
    v64 = v10;
    v65 = v93;
    v58(v64, v55);
    v66 = v94;
    v110(v18, v59);
    v67 = v95;
    *v50 = 0x7261646E656C6163;
    v50[1] = 0xE800000000000000;
    v68 = v91;
    v50[2] = v92;
    v50[3] = v68;
    v50[4] = v61;
    v50[5] = v63;
    v69 = v98;
    v70 = v99;
  }

  else
  {
    v71 = v27;
    sub_2EF0(&qword_320C98, &unk_27EAF0);
    v72 = type metadata accessor for BulletPointStack.Bullet(0) - 8;
    v73 = *(*v72 + 72);
    v74 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_267D30;
    v96 = v75;
    v50 = (v75 + v74);
    v94 = 0x80000000002931F0;
    sub_2643E0();
    v113._countAndFlagsBits = 0xD000000000000030;
    v113._object = 0x8000000000293450;
    sub_2643D0(v113);
    sub_2643C0(*(v28 + *(v71 + 28)));
    v114._countAndFlagsBits = 0xD000000000000066;
    v114._object = 0x8000000000293490;
    sub_2643D0(v114);
    sub_264400();
    sub_260260();
    v76 = v104;
    v102(v101, v18, v104);
    v77 = [v105 bundleForClass:v108];
    v78 = v103;
    v109(v7, v10, v103);
    v79 = sub_264490();
    v81 = v80;
    v107(v10, v78);
    v110(v18, v76);
    v66 = 0;
    v65 = 0;
    v82 = v94;
    *v50 = 0xD000000000000010;
    v50[1] = v82;
    v83 = v99;
    v50[2] = v98;
    v50[3] = v83;
    v67 = (v72 + 36);
    v50[4] = v79;
    v50[5] = v81;
    v69 = 0;
    v70 = 0;
  }

  v84 = v50 + *v67;
  result = sub_2601D0();
  v86 = v100;
  *v100 = v69;
  v86[1] = v70;
  v86[2] = v66;
  v86[3] = v65;
  v86[4] = v96;
  return result;
}

uint64_t sub_161574(uint64_t a1)
{
  v2 = sub_260290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v24[-v8];
  v10 = sub_264410();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v24[-v16];
  v18 = sub_2643F0();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_2643E0();
  v25._countAndFlagsBits = 0x72757320656B614DLL;
  v25._object = 0xEF2072756F792065;
  sub_2643D0(v25);
  v26 = *(a1 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 28));
  sub_2643C0(v26);
  v27._object = 0x8000000000293540;
  v27._countAndFlagsBits = 0x1000000000000070;
  sub_2643D0(v27);
  sub_264400();
  sub_260260();
  (*(v11 + 16))(v14, v17, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v6, v9, v2);
  v22 = sub_264490();
  (*(v3 + 8))(v9, v2);
  (*(v11 + 8))(v17, v10);
  return v22;
}

char *sub_16188C(uint64_t a1)
{
  v3 = sub_263480();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_263490();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = xmmword_27D210;
  (*(v4 + 104))(v7, enum case for GridItem.Size.flexible(_:), v3);
  v12 = (v1 + *(a1 + 68));
  v13 = v12[2];
  sub_2634A0();
  return sub_15EB34(v11, *v12);
}

uint64_t sub_1619E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v87 = sub_262320();
  v86 = *(v87 - 8);
  v3 = *(v86 + 64);
  __chkstk_darwin(v87);
  v90 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262470();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v84 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_262490();
  v85 = *(v8 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v8);
  v83 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v12 = sub_2646F0();
  v82 = a1[5];
  v81 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = a1[3];
  v14 = v80;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v100 = v12;
  v101 = AssociatedTypeWitness;
  v102 = v14;
  v103 = WitnessTable;
  v104 = AssociatedConformanceWitness;
  v17 = sub_2633D0();
  v78 = a1[6];
  v99 = v78;
  v18 = swift_getWitnessTable();
  v100 = v17;
  v101 = v18;
  swift_getOpaqueTypeMetadata2();
  v100 = v17;
  v101 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_263660();
  v20 = swift_getWitnessTable();
  v100 = v19;
  v101 = v20;
  swift_getOpaqueTypeMetadata2();
  v67 = a1[4];
  v88 = a1;
  v68 = a1[7];
  v100 = v67;
  v101 = v68;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_263260();
  v65[1] = swift_getWitnessTable();
  v21 = sub_261120();
  v66 = *(v21 - 8);
  v22 = *(v66 + 64);
  __chkstk_darwin(v21);
  v24 = v65 - v23;
  v25 = swift_getWitnessTable();
  v100 = v21;
  v101 = v8;
  v65[0] = v8;
  v102 = v25;
  v103 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v79 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v29 = v65 - v28;
  v100 = v21;
  v101 = v8;
  v102 = v25;
  v103 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = OpaqueTypeMetadata2;
  v101 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeMetadata2();
  v74 = *(v31 - 8);
  v32 = *(v74 + 64);
  __chkstk_darwin(v31);
  v70 = v65 - v33;
  v100 = OpaqueTypeMetadata2;
  v101 = OpaqueTypeConformance2;
  v71 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v100 = v31;
  v101 = v34;
  v69 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v72 = *(v35 - 8);
  v36 = *(v72 + 64);
  __chkstk_darwin(v35);
  v38 = v65 - v37;
  sub_2621E0();
  v75 = v35;
  v39 = sub_261730();
  v77 = *(v39 - 8);
  v40 = *(v77 + 64);
  __chkstk_darwin(v39);
  v73 = v65 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v76 = v65 - v43;
  sub_2624C0();
  *&v44 = v81;
  *(&v44 + 1) = v80;
  *&v45 = v67;
  *(&v45 + 1) = v82;
  v92 = v44;
  v93 = v45;
  v94 = v78;
  v95 = v68;
  v96 = v91;
  sub_1D16D8();
  sub_262460();
  v46 = v83;
  sub_262480();
  v84 = v29;
  v47 = v65[0];
  sub_262C90();
  (*(v85 + 8))(v46, v47);
  (*(v66 + 8))(v24, v21);
  sub_262310();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v47) = sub_2624E0();
  *(inited + 32) = v47;
  v49 = sub_2624C0();
  *(inited + 33) = v49;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v47)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v49)
  {
    sub_2624D0();
  }

  v50 = v70;
  v51 = v90;
  v52 = v84;
  sub_262BA0();
  (*(v86 + 8))(v51, v87);
  (*(v79 + 8))(v52, OpaqueTypeMetadata2);
  v53 = v69;
  sub_262C40();
  (*(v74 + 8))(v50, v31);
  v54 = sub_2624F0();
  v55 = *(v91 + *(v88 + 17) + 32);
  v100 = v31;
  v101 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v73;
  v58 = v54;
  v59 = v75;
  sub_164078(v58, v55, 0);
  (*(v72 + 8))(v38, v59);
  v60 = sub_1661CC(&qword_320BF8, &type metadata accessor for SafeAreaPaddingModifier);
  v97 = v56;
  v98 = v60;
  v61 = swift_getWitnessTable();
  v62 = v76;
  sub_1609C(v57, v39, v61);
  v63 = *(v77 + 8);
  v63(v57, v39);
  sub_1609C(v62, v39, v61);
  return (v63)(v62, v39);
}

uint64_t sub_162538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a1;
  v30 = a8;
  sub_2646F0();
  v28 = a5;
  swift_getAssociatedTypeWitness();
  v40 = a3;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2633D0();
  v44 = a6;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_263660();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v14 = a4;
  v38 = a4;
  v39 = a7;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v27[2] = sub_2636B0();
  v27[1] = swift_getWitnessTable();
  v15 = sub_263260();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v27 - v21;
  v38 = a2;
  v39 = a3;
  v23 = v28;
  v40 = v14;
  WitnessTable = v28;
  AssociatedConformanceWitness = a6;
  v43 = a7;
  v27[0] = *(v29 + *(type metadata accessor for HorizontalScrollingGrid() + 68) + 24);
  v31 = a2;
  v32 = a3;
  v33 = v14;
  v34 = v23;
  v35 = a6;
  v36 = a7;
  v37 = v29;
  sub_261D30();
  sub_263250();
  v24 = swift_getWitnessTable();
  sub_1609C(v19, v15, v24);
  v25 = *(v16 + 8);
  v25(v19, v15);
  sub_1609C(v22, v15, v24);
  return (v25)(v22, v15);
}

uint64_t sub_1628F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v146 = a7;
  v124 = a6;
  v145 = a4;
  v141 = a1;
  v133 = a8;
  v120 = sub_262180();
  v144 = *(v120 - 8);
  v13 = *(v144 + 64);
  __chkstk_darwin(v120);
  v113 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_2EF0(&qword_317970, &qword_269D00);
  v15 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v130 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v134 = &v111 - v18;
  v19 = sub_2EF0(&qword_3178F0, &qword_269C90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v112 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v136 = &v111 - v23;
  __chkstk_darwin(v24);
  v126 = &v111 - v25;
  __chkstk_darwin(v26);
  v114 = &v111 - v27;
  __chkstk_darwin(v28);
  v119 = &v111 - v29;
  __chkstk_darwin(v30);
  v135 = &v111 - v31;
  v143 = *(a4 - 8);
  v32 = *(v143 + 64);
  __chkstk_darwin(v33);
  v142 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = a4;
  v158 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v129 = *(OpaqueTypeMetadata2 - 8);
  v35 = *(v129 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v131 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v127 = &v111 - v38;
  __chkstk_darwin(v39);
  v128 = &v111 - v40;
  v41 = sub_262080();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v125 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2646F0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v157 = v44;
  v158 = AssociatedTypeWitness;
  v48 = a3;
  v159 = a3;
  v160 = WitnessTable;
  v161 = AssociatedConformanceWitness;
  v49 = sub_2633D0();
  v50 = v124;
  v163 = v124;
  v51 = swift_getWitnessTable();
  v157 = v49;
  v158 = v51;
  v118 = swift_getOpaqueTypeMetadata2();
  v157 = v49;
  v158 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_263660();
  v123 = *(v52 - 8);
  v53 = *(v123 + 8);
  __chkstk_darwin(v52);
  v117 = &v111 - v54;
  v121 = swift_getWitnessTable();
  v157 = v52;
  v158 = v121;
  v122 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v140 = swift_getOpaqueTypeMetadata2();
  v137 = *(v140 - 8);
  v55 = *(v137 + 64);
  __chkstk_darwin(v140);
  v57 = &v111 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v138 = &v111 - v59;
  v157 = a2;
  v158 = v48;
  v60 = v48;
  v61 = v145;
  v159 = v145;
  v160 = a5;
  v62 = v146;
  v161 = v50;
  v162 = v146;
  v63 = type metadata accessor for HorizontalScrollingGrid();
  v64 = v141;
  v115 = sub_16188C(v63);
  v65 = v64;
  v66 = *(v64 + *(v63 + 68) + 24);
  v147 = a2;
  v148 = v60;
  v149 = v61;
  v150 = a5;
  v151 = v50;
  v152 = v62;
  v153 = v65;
  v67 = v65;
  sub_261D30();
  sub_163FF8();
  v68 = v117;
  v69 = v120;
  sub_263650();
  v70 = v121;
  sub_262C50();
  (*(v123 + 1))(v68, v52);
  v157 = v52;
  v158 = v70;
  v71 = v135;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v119;
  v74 = v140;
  v122 = v72;
  sub_1609C(v57, v140, v72);
  v75 = *(v137 + 8);
  v125 = v57;
  v124 = v137 + 8;
  v123 = v75;
  v75(v57, v74);
  (*(v143 + 16))(v142, v67 + *(v63 + 80), v61);
  LODWORD(v121) = sub_2624C0();
  sub_408A8(v71);
  v76 = v134;
  v77 = v144;
  v78 = *(v144 + 104);
  LODWORD(v118) = enum case for UserInterfaceSizeClass.regular(_:);
  v117 = v78;
  (v78)(v73);
  v79 = v77;
  OpaqueTypeConformance2 = *(v77 + 56);
  OpaqueTypeConformance2(v73, 0, 1, v69);
  v80 = *(v139 + 48);
  sub_8198(v71, v76, &qword_3178F0, &qword_269C90);
  sub_8198(v73, v76 + v80, &qword_3178F0, &qword_269C90);
  v81 = *(v79 + 48);
  if (v81(v76, 1, v69) == 1)
  {
    sub_8E80(v73, &qword_3178F0, &qword_269C90);
    sub_8E80(v71, &qword_3178F0, &qword_269C90);
    if (v81(v76 + v80, 1, v69) == 1)
    {
      sub_8E80(v76, &qword_3178F0, &qword_269C90);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v82 = v114;
  sub_8198(v76, v114, &qword_3178F0, &qword_269C90);
  if (v81(v76 + v80, 1, v69) == 1)
  {
    sub_8E80(v73, &qword_3178F0, &qword_269C90);
    sub_8E80(v135, &qword_3178F0, &qword_269C90);
    (*(v144 + 8))(v82, v69);
LABEL_6:
    sub_8E80(v76, &qword_317970, &qword_269D00);
    goto LABEL_8;
  }

  v83 = v144;
  v84 = v76 + v80;
  v85 = v113;
  (*(v144 + 32))(v113, v84, v69);
  sub_1661CC(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass);
  LODWORD(v115) = sub_264390();
  v86 = *(v83 + 8);
  v86(v85, v69);
  sub_8E80(v73, &qword_3178F0, &qword_269C90);
  sub_8E80(v135, &qword_3178F0, &qword_269C90);
  v86(v114, v69);
  sub_8E80(v134, &qword_3178F0, &qword_269C90);
LABEL_8:
  v87 = v126;
  sub_408A8(v126);
  v88 = v136;
  (v117)(v136, v118, v69);
  OpaqueTypeConformance2(v88, 0, 1, v69);
  v89 = *(v139 + 48);
  v90 = v130;
  sub_8198(v87, v130, &qword_3178F0, &qword_269C90);
  sub_8198(v88, v90 + v89, &qword_3178F0, &qword_269C90);
  if (v81(v90, 1, v69) != 1)
  {
    v91 = v112;
    sub_8198(v90, v112, &qword_3178F0, &qword_269C90);
    if (v81(v90 + v89, 1, v69) != 1)
    {
      v92 = v144;
      v93 = v90 + v89;
      v94 = v113;
      (*(v144 + 32))(v113, v93, v69);
      sub_1661CC(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass);
      sub_264390();
      v95 = *(v92 + 8);
      v95(v94, v69);
      sub_8E80(v136, &qword_3178F0, &qword_269C90);
      sub_8E80(v87, &qword_3178F0, &qword_269C90);
      v95(v91, v69);
      sub_8E80(v90, &qword_3178F0, &qword_269C90);
      goto LABEL_15;
    }

    sub_8E80(v136, &qword_3178F0, &qword_269C90);
    sub_8E80(v87, &qword_3178F0, &qword_269C90);
    (*(v144 + 8))(v91, v69);
    goto LABEL_13;
  }

  sub_8E80(v88, &qword_3178F0, &qword_269C90);
  sub_8E80(v87, &qword_3178F0, &qword_269C90);
  if (v81(v90 + v89, 1, v69) != 1)
  {
LABEL_13:
    sub_8E80(v90, &qword_317970, &qword_269D00);
    goto LABEL_15;
  }

  sub_8E80(v90, &qword_3178F0, &qword_269C90);
LABEL_15:
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v96 = v127;
  v97 = v145;
  v98 = v146;
  v99 = v142;
  sub_262CF0();
  (*(v143 + 8))(v99, v97);
  v157 = v97;
  v158 = v98;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v128;
  v102 = OpaqueTypeMetadata2;
  sub_1609C(v96, OpaqueTypeMetadata2, v100);
  v103 = v129;
  v104 = *(v129 + 8);
  v104(v96, v102);
  v105 = v125;
  v106 = v138;
  v107 = v140;
  (*(v137 + 16))(v125, v138, v140);
  v157 = v105;
  v108 = v131;
  (*(v103 + 16))(v131, v101, v102);
  v158 = v108;
  v156[0] = v107;
  v156[1] = v102;
  v154 = v122;
  v155 = v100;
  sub_10E998(&v157, 2uLL, v156);
  v104(v101, v102);
  v109 = v123;
  v123(v106, v107);
  v104(v108, v102);
  return v109(v105, v107);
}

uint64_t sub_1639B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a4;
  v59 = a7;
  v60 = a8;
  v61 = a1;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v48 = a5;
  v67 = a6;
  v68 = a7;
  v11 = type metadata accessor for HorizontalScrollingGrid();
  v52 = *(v11 - 8);
  v56 = *(v52 + 64);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_2646F0();
  v55 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = AssociatedTypeWitness;
  WitnessTable = swift_getWitnessTable();
  v53 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = v14;
  v64 = AssociatedTypeWitness;
  v65 = a3;
  v66 = WitnessTable;
  v18 = a3;
  v67 = AssociatedConformanceWitness;
  v19 = sub_2633D0();
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  __chkstk_darwin(v19);
  v46 = &v44 - v21;
  v62 = a6;
  v49 = swift_getWitnessTable();
  v63 = v19;
  v64 = v49;
  v50 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  v22 = *(v51 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v44 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v45 = &v44 - v26;
  v27 = v11;
  v63 = *(v61 + *(v11 + 72));
  v28 = v52;
  (*(v52 + 16))(v13, v25);
  v29 = (*(v28 + 80) + 64) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = a2;
  *(v30 + 3) = v18;
  v31 = v48;
  *(v30 + 4) = v58;
  *(v30 + 5) = v31;
  v32 = v59;
  *(v30 + 6) = a6;
  *(v30 + 7) = v32;
  (*(v28 + 32))(&v30[v29], v13, v27);

  v33 = v46;
  sub_2633C0();
  sub_2624C0();
  v34 = v61 + *(v27 + 68);
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);
  sub_263580();
  v37 = v44;
  v38 = v49;
  sub_262CF0();
  (*(v57 + 8))(v33, v19);
  v63 = v19;
  v64 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v45;
  v41 = OpaqueTypeMetadata2;
  sub_1609C(v37, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v42 = *(v51 + 8);
  v42(v37, v41);
  sub_1609C(v40, v41, OpaqueTypeConformance2);
  return (v42)(v40, v41);
}

uint64_t sub_163E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v28 - v16;
  v28[0] = v18;
  v28[1] = v19;
  v28[2] = v20;
  v28[3] = v21;
  v28[4] = v22;
  v28[5] = v23;
  v24 = a2 + *(type metadata accessor for HorizontalScrollingGrid() + 76);
  v25 = *(v24 + 8);
  (*v24)(a1);
  sub_1609C(v14, a4, a7);
  v26 = *(v11 + 8);
  v26(v14, a4);
  sub_1609C(v17, a4, a7);
  return (v26)(v17, a4);
}

uint64_t sub_163FF8()
{
  sub_262080();
  sub_1661CC(&qword_317430, &type metadata accessor for PinnedScrollableViews);
  return sub_265250();
}

uint64_t sub_164078(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_2621E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0uLL;
  v10 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_2610C0();
    *(&v9 + 1) = v11;
    *(&v10 + 1) = v12;
  }

  v14[0] = v9;
  v14[1] = v10;
  v15 = a3 & 1;
  sub_2621D0();
  sub_262E30();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1641B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316DC8, &qword_276F60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1677B0(v12, a1, type metadata accessor for SizeConstants.Spacing);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t BooksFinishedFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BooksFinishedFrame(0) + 28);
  v4 = *(type metadata accessor for BooksFinishedFrameViewModel(0) + 36);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_1661CC(&qword_317678, &type metadata accessor for YIRSourceData);
  a1[5] = sub_1661CC(&qword_317680, &type metadata accessor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t BooksFinishedFrame.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BooksFinishedFrame(0);
  v5 = (a2 + v4[5]);
  v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  *v5 = sub_262EE0();
  v8 = enum case for ColorScheme.light(_:);
  v9 = sub_261180();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v5 + v6, v8, v9);
  (*(v10 + 56))(v5 + v6, 0, 1, v9);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[6]) = 0;
  return sub_1677B0(a1, a2 + v4[7], type metadata accessor for BooksFinishedFrameViewModel);
}

uint64_t sub_164698@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for BooksFinishedFrame(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_2EF0(&qword_320C10, &qword_27D640);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = (&v44 - v9);
  v45 = sub_2EF0(&qword_320C18, &qword_27D648);
  v11 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v13 = &v44 - v12;
  v46 = sub_2EF0(&qword_320C20, &unk_27D650);
  v14 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v16 = &v44 - v15;
  v17 = v2 + *(v4 + 36);
  v18 = type metadata accessor for BooksFinishedFrameViewModel(0);
  if (*(v17 + *(v18 + 40)))
  {
    v19 = v18;
    sub_160170(v48);
    v20 = *(v17 + *(v19 + 24));
    sub_167744(v2, &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BooksFinishedFrame);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = swift_allocObject();
    sub_1677B0(&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for BooksFinishedFrame);
    *v10 = swift_getKeyPath();
    sub_2EF0(&qword_3179B8, &unk_269D50);
    swift_storeEnumTagMultiPayload();
    v23 = v10 + v7[17];
    v24 = v48[1];
    *v23 = v48[0];
    *(v23 + 1) = v24;
    *(v23 + 4) = v49;
    *(v10 + v7[18]) = v20;
    v25 = (v10 + v7[19]);
    *v25 = sub_167818;
    v25[1] = v22;
    v26 = (v10 + v7[20]);

    sub_160ADC(v50);
    *v26 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v27 = type metadata accessor for BulletPointStack(0);
    v28 = v26 + v27[5];
    *v28 = swift_getKeyPath();
    v28[8] = 0;
    v29 = v27[6];
    *(v26 + v29) = swift_getKeyPath();
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    v30 = v26 + v27[7];
    v31 = v50[1];
    *v30 = v50[0];
    *(v30 + 1) = v31;
    *(v30 + 4) = v51;
    v32 = *(sub_2EF0(&qword_320C28, &qword_27D6A8) + 36);
    *(v26 + v32) = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    v33 = &qword_320C10;
    v34 = &qword_27D640;
    sub_8198(v10, v13, &qword_320C10, &qword_27D640);
    swift_storeEnumTagMultiPayload();
    sub_16783C();
    sub_8E38(&qword_320C48, &qword_320C10, &qword_27D640);
    sub_261F80();
    v35 = v10;
  }

  else
  {
    sub_15F1B8();
    *v16 = sub_261E50();
    *(v16 + 1) = 0x4040000000000000;
    v16[16] = 0;
    v36 = sub_2EF0(&qword_320C50, &qword_27D6B8);
    sub_164BE0(v2, &v16[*(v36 + 44)]);
    v37 = sub_2624F0();
    sub_15F1B8();
    sub_2610C0();
    v38 = &v16[*(v46 + 36)];
    *v38 = v37;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    v33 = &qword_320C20;
    v34 = &unk_27D650;
    sub_8198(v16, v13, &qword_320C20, &unk_27D650);
    swift_storeEnumTagMultiPayload();
    sub_16783C();
    sub_8E38(&qword_320C48, &qword_320C10, &qword_27D640);
    sub_261F80();
    v35 = v16;
  }

  return sub_8E80(v35, v33, v34);
}

uint64_t sub_164BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for SizeConstants.Spacing(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_320C58, &qword_27D6C0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v50 - v11);
  v13 = type metadata accessor for BooksFinishedFrame(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v17 = sub_2EF0(&qword_320C60, &qword_27D6C8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v53 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  *v22 = sub_261D30();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = v22;
  LODWORD(v22) = *(sub_2EF0(&qword_320C68, &unk_27D6D0) + 44);
  v24 = *(v14 + 36);
  v52 = a1;
  *&v57[0] = *(a1 + v24 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 24));
  sub_167744(a1, &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BooksFinishedFrame);
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = swift_allocObject();
  sub_1677B0(&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for BooksFinishedFrame);

  sub_2EF0(&qword_31BEF0, &unk_289190);
  sub_2EF0(&qword_320C70, &unk_27D6E0);
  sub_8E38(&qword_31BF00, &qword_31BEF0, &unk_289190);
  sub_167DEC();
  sub_167EA8();
  v51 = v23;
  sub_2633C0();
  sub_160ADC(v57);
  *v12 = swift_getKeyPath();
  sub_2EF0(&qword_3179B8, &unk_269D50);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for BulletPointStack(0);
  v28 = v12 + v27[5];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v27[6];
  *(v12 + v29) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v30 = v12 + v27[7];
  v31 = v57[1];
  *v30 = v57[0];
  *(v30 + 1) = v31;
  *(v30 + 4) = v58;
  v32 = v54;
  sub_1641B4(v54);
  sub_E5250(v32);
  LOBYTE(v27) = sub_262500();
  sub_2610C0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v12 + *(sub_2EF0(&qword_320C88, &qword_27D6F0) + 36);
  *v41 = v27;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = *(v7 + 44);
  *(v12 + v42) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v43 = v53;
  sub_8198(v23, v53, &qword_320C60, &qword_27D6C8);
  v44 = v55;
  sub_8198(v12, v55, &qword_320C58, &qword_27D6C0);
  v45 = v56;
  *v56 = 0;
  *(v45 + 8) = 1;
  v46 = v45;
  v47 = sub_2EF0(&qword_320C90, &qword_27D6F8);
  sub_8198(v43, v46 + v47[12], &qword_320C60, &qword_27D6C8);
  v48 = v46 + v47[16];
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_8198(v44, v46 + v47[20], &qword_320C58, &qword_27D6C0);
  sub_8E80(v12, &qword_320C58, &qword_27D6C0);
  sub_8E80(v51, &qword_320C60, &qword_27D6C8);
  sub_8E80(v44, &qword_320C58, &qword_27D6C0);
  return sub_8E80(v43, &qword_320C60, &qword_27D6C8);
}

uint64_t sub_1651A4(__int128 *a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31BF28, &qword_272030);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  v8 = a1[5];
  v37 = a1[4];
  v38 = v8;
  v9 = a1[7];
  v39 = a1[6];
  v40 = v9;
  v10 = a1[1];
  v33 = *a1;
  v34 = v10;
  v11 = a1[3];
  v35 = a1[2];
  v36 = v11;
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  *(v7 + 6) = swift_getKeyPath();
  v7[56] = 0;
  v12 = type metadata accessor for CoverView();
  v13 = v12[6];
  *&v7[v13] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v14 = v12[7];
  *&v7[v14] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v15 = &v7[v12[8]];
  sub_5757C(&v33, v32);
  type metadata accessor for ProfileRestrictions();
  sub_1661CC(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v15 = sub_261900();
  v15[1] = v16;
  v17 = &v7[v12[9]];
  LOBYTE(v31[0]) = 1;
  sub_2631D0();
  v18 = *(&v32[0] + 1);
  *v17 = v32[0];
  *(v17 + 1) = v18;
  v19 = &v7[v12[10]];
  v20 = v38;
  *(v19 + 4) = v37;
  *(v19 + 5) = v20;
  v21 = v40;
  *(v19 + 6) = v39;
  *(v19 + 7) = v21;
  v22 = v34;
  *v19 = v33;
  *(v19 + 1) = v22;
  v23 = v36;
  *(v19 + 2) = v35;
  *(v19 + 3) = v23;
  v7[v12[11]] = 0;
  v24 = a2 + *(type metadata accessor for BooksFinishedFrame(0) + 28);
  v25 = (v24 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 48));
  v26 = *v25;
  v27 = v25[1];
  v28 = &v7[*(v4 + 36)];
  *v28 = v26 / v27;
  *(v28 + 4) = 0;
  v32[4] = v37;
  v32[5] = v38;
  v32[6] = v39;
  v32[7] = v40;
  v32[0] = v33;
  v32[1] = v34;
  v32[2] = v35;
  v32[3] = v36;
  v31[0] = CoverViewModel.axLabel.getter();
  v31[1] = v29;
  sub_C0C10();
  sub_10A84();
  sub_262C00();

  return sub_8E80(v7, &qword_31BF28, &qword_272030);
}

uint64_t sub_165490@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v11[4] = a1[4];
  v11[5] = v5;
  v6 = a1[7];
  v11[6] = a1[6];
  v11[7] = v6;
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  v8 = a1[3];
  v11[2] = a1[2];
  v11[3] = v8;
  *a3 = sub_261E50();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v9 = sub_2EF0(&qword_320CA0, &qword_27D780);
  return sub_165514(v11, a2, a3 + *(v9 + 44));
}

uint64_t sub_165514@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v5 = sub_2EF0(&qword_31BF28, &qword_272030);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = sub_2EF0(&qword_320C70, &unk_27D6E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  *(v8 + 6) = swift_getKeyPath();
  v8[56] = 0;
  v16 = type metadata accessor for CoverView();
  v17 = v16[6];
  *&v8[v17] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v18 = v16[7];
  *&v8[v18] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v19 = &v8[v16[8]];
  sub_5757C(a1, v44);
  type metadata accessor for ProfileRestrictions();
  sub_1661CC(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v19 = sub_261900();
  v19[1] = v20;
  v21 = &v8[v16[9]];
  LOBYTE(v42) = 1;
  sub_2631D0();
  v22 = *(&v44[0] + 1);
  *v21 = v44[0];
  *(v21 + 1) = v22;
  v23 = &v8[v16[10]];
  v24 = a1[5];
  *(v23 + 4) = a1[4];
  *(v23 + 5) = v24;
  v25 = a1[7];
  *(v23 + 6) = a1[6];
  *(v23 + 7) = v25;
  v26 = a1[1];
  *v23 = *a1;
  *(v23 + 1) = v26;
  v27 = a1[3];
  *(v23 + 2) = a1[2];
  *(v23 + 3) = v27;
  v8[v16[11]] = 0;
  v28 = v41 + *(type metadata accessor for BooksFinishedFrame(0) + 28);
  v29 = (v28 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 48));
  v30 = *v29;
  v31 = v29[1];
  v32 = &v8[*(v5 + 36)];
  *v32 = v30 / v31;
  *(v32 + 4) = 0;
  v33 = a1[5];
  v44[4] = a1[4];
  v44[5] = v33;
  v34 = a1[7];
  v44[6] = a1[6];
  v44[7] = v34;
  v35 = a1[1];
  v44[0] = *a1;
  v44[1] = v35;
  v36 = a1[3];
  v44[2] = a1[2];
  v44[3] = v36;
  v42 = CoverViewModel.axLabel.getter();
  v43 = v37;
  sub_C0C10();
  sub_10A84();
  sub_262C00();

  sub_8E80(v8, &qword_31BF28, &qword_272030);
  sub_8198(v15, v12, &qword_320C70, &unk_27D6E0);
  *a3 = 0;
  *(a3 + 8) = 1;
  v38 = sub_2EF0(&qword_320CA8, &qword_27D788);
  sub_8198(v12, a3 + *(v38 + 48), &qword_320C70, &unk_27D6E0);
  sub_8E80(v15, &qword_320C70, &unk_27D6E0);
  return sub_8E80(v12, &qword_320C70, &unk_27D6E0);
}

uint64_t BooksFinishedFrame.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_3209E0, &qword_27D2C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - v5;
  v7 = sub_2EF0(&qword_3209E8, &qword_27D2C8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = v1 + *(type metadata accessor for BooksFinishedFrame(0) + 28);
  sub_15F1B8();
  *v6 = sub_261E50();
  *(v6 + 1) = 0x4040000000000000;
  v6[16] = 0;
  v12 = sub_2EF0(&qword_3209F0, &qword_27D2D0);
  sub_165B18(&v6[*(v12 + 44)]);
  if (*(v11 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 40)))
  {
    v13 = sub_262560();
  }

  else
  {
    v13 = sub_262510();
  }

  v14 = v13;
  sub_15F1B8();
  sub_2610C0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_22148(v6, v10, &qword_3209E0, &qword_27D2C0);
  v23 = &v10[*(v7 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  KeyPath = swift_getKeyPath();
  v25 = (a1 + *(sub_2EF0(&qword_3209F8, &unk_27D308) + 36));
  v26 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v27 = enum case for ColorScheme.light(_:);
  v28 = sub_261180();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = KeyPath;
  return sub_22148(v10, a1, &qword_3209E8, &qword_27D2C8);
}

uint64_t sub_165B18@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_2EF0(&qword_320C00, &unk_27D550);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_2EF0(&qword_31BF38, &unk_272170);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v50 - v14);
  v16 = *(type metadata accessor for BooksFinishedFrame(0) + 28);
  v17 = sub_15F458();
  v57 = v18;
  v58 = v17;
  v56 = sub_262FD0() | 0x8000000000000000;
  v19 = sub_15FB68();
  v54 = v20;
  v55 = v19;
  v21 = type metadata accessor for TextLockup();
  v22 = v21[13];
  v23 = sub_2625C0();
  (*(*(v23 - 8) + 56))(v15 + v22, 1, 1, v23);
  v53 = sub_261E60();
  v24 = sub_263580();
  v51 = v25;
  v52 = v24;
  v26 = v21[17];
  v27 = enum case for DynamicTypeSize.accessibility2(_:);
  v28 = sub_261690();
  (*(*(v28 - 8) + 104))(v15 + v26, v27, v28);
  *v15 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v29 = v21[5];
  *(v15 + v29) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v30 = v15 + v21[6];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v15 + v21[7];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v15 + v21[8];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  *(v15 + v21[9]) = 3;
  v33 = (v15 + v21[10]);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v15 + v21[11]);
  v35 = v57;
  *v34 = v58;
  v34[1] = v35;
  v36 = v55;
  v34[2] = v56;
  v37 = (v15 + v21[12]);
  v38 = v53;
  v39 = v54;
  *v37 = v36;
  v37[1] = v39;
  *(v15 + v21[14]) = v38;
  v40 = (v15 + v21[15]);
  v41 = v51;
  *v40 = v52;
  v40[1] = v41;
  *(v15 + v21[16]) = 0;
  LOBYTE(v32) = sub_2624F0();
  sub_15F1B8();
  sub_2610C0();
  v42 = v15 + *(v9 + 44);
  *v42 = v32;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  sub_164698(v7);
  sub_8198(v15, v12, &qword_31BF38, &unk_272170);
  sub_8198(v7, v4, &qword_320C00, &unk_27D550);
  v47 = v59;
  sub_8198(v12, v59, &qword_31BF38, &unk_272170);
  v48 = sub_2EF0(&qword_320C08, &qword_27D638);
  sub_8198(v4, v47 + *(v48 + 48), &qword_320C00, &unk_27D550);
  sub_8E80(v7, &qword_320C00, &unk_27D550);
  sub_8E80(v15, &qword_31BF38, &unk_272170);
  sub_8E80(v4, &qword_320C00, &unk_27D550);
  return sub_8E80(v12, &qword_31BF38, &unk_272170);
}

uint64_t sub_165F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 28);
  v5 = *(type metadata accessor for BooksFinishedFrameViewModel(0) + 36);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_1661CC(&qword_317678, &type metadata accessor for YIRSourceData);
  a2[5] = sub_1661CC(&qword_317680, &type metadata accessor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_1660DC(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3178F0, &qword_269C90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_8198(a1, &v6 - v4, &qword_3178F0, &qword_269C90);
  return sub_261B50();
}

uint64_t sub_1661CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_166220(uint64_t a1)
{
  result = sub_1661CC(&qword_320A00, type metadata accessor for BooksFinishedFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_166278(uint64_t a1)
{
  result = sub_1661CC(&qword_320A08, type metadata accessor for BooksFinishedFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_166300(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317870, &unk_26BFB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_260550();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1664A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317870, &unk_26BFB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_260550();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_16662C()
{
  sub_588E8();
  if (v0 <= 0x3F)
  {
    sub_166B68(319, &qword_317C68, type metadata accessor for SizeConstants);
    if (v1 <= 0x3F)
    {
      sub_16678C(319, &qword_3195C0, &type metadata for CoverViewModel, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_16678C(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_260550();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_16678C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1667F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F78, &unk_269C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PageBackground(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_166950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F78, &unk_269C60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for PageBackground(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_166AA8()
{
  sub_166B68(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PageBackground(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for BooksFinishedFrameViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_166B68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_166BC0()
{
  result = qword_320B58;
  if (!qword_320B58)
  {
    sub_2F9C(&qword_3209F8, &unk_27D308);
    sub_166C78();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320B58);
  }

  return result;
}

unint64_t sub_166C78()
{
  result = qword_320B60;
  if (!qword_320B60)
  {
    sub_2F9C(&qword_3209E8, &qword_27D2C8);
    sub_8E38(qword_320B68, &qword_3209E0, &qword_27D2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320B60);
  }

  return result;
}

void sub_166D40(uint64_t a1)
{
  sub_588E8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_2646F0();
    if (v4 <= 0x3F)
    {
      sub_16D28();
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 32);
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_166E04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_262180() - 8);
  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 + 16;
  if (a2 <= v10)
  {
    goto LABEL_33;
  }

  v14 = ((v13 + (((((v12 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9) + *(v7 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_33:
      v22 = ((((a1 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) != 0)
      {
        v24 = *(v7 + 48);

        return v24((v13 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9);
      }

      else
      {
        v23 = *v22;
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_33;
  }

LABEL_20:
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

  return v10 + (v21 | v19) + 1;
}

void sub_167064(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_262180() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(*(a4 + 32) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = 8;
  if (v15 > 8)
  {
    v16 = v15;
  }

  v17 = ((v13 + 16 + (((((v16 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_52:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v24 = (((&a1[v16 + 8] & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v26 = *(v11 + 56);

    v26((v13 + 16 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *v24 = v25;
  }
}

uint64_t sub_167378(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1673C8()
{
  result = qword_320BF0;
  if (!qword_320BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320BF0);
  }

  return result;
}

uint64_t sub_167480()
{
  v11 = *(v0 + 32);
  v12 = *(v0 + 48);
  v1 = type metadata accessor for HorizontalScrollingGrid();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_262180();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
    v7 = *v4;
  }

  v8 = *&v4[v1[18]];

  v9 = *&v4[v1[19] + 8];

  (*(*(v11 - 8) + 8))(&v4[v1[20]]);
  return swift_deallocObject();
}

uint64_t sub_167650(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v11 = v1[7];
  v8 = *(type metadata accessor for HorizontalScrollingGrid() - 8);
  v9 = v1 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return sub_163E94(a1, v9, v3, v4, v5, v6, v7);
}

uint64_t sub_167744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1677B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_16783C()
{
  result = qword_320C30;
  if (!qword_320C30)
  {
    sub_2F9C(&qword_320C20, &unk_27D650);
    sub_8E38(&qword_320C38, &qword_320C40, &qword_27D6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320C30);
  }

  return result;
}

uint64_t sub_1678F4()
{
  v1 = type metadata accessor for BooksFinishedFrame(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v5 = sub_261690();
    (*(*(v5 - 8) + 8))(&v3[v4], v5);
  }

  else
  {
    v6 = *v3;
  }

  v7 = &v3[*(v1 + 20)];
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v13 = v7[1];

      v14 = sub_2EF0(&qword_316DA0, &unk_277640);
      v15 = *(v14 + 48);
      v16 = sub_261180();
      (*(*(v16 - 8) + 8))(v7 + v15, v16);
      v17 = *(v7 + *(v14 + 64));

      break;
    case 1:
      v33 = v7[15];
      sub_57200(*v7, v7[1], v7[2], v7[3], v7[4], v7[5], v7[6], v7[7], v7[8], v7[9], v7[10], v7[11], v7[12], v7[13], v7[14]);
      break;
    case 0:
      v9 = *v7;

      v10 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v11 = sub_261180();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v7 + v10, 1, v11))
      {
        (*(v12 + 8))(v7 + v10, v11);
      }

      break;
  }

  v18 = &v3[*(v1 + 28)];
  sub_2EF0(&qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_262180();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v18, 1, v19))
    {
      (*(v20 + 8))(v18, v19);
    }
  }

  else
  {
    v21 = *v18;
  }

  v22 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v23 = &v18[v22[5]];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v25 = sub_261690();
    (*(*(v25 - 8) + 8))(&v23[v24], v25);
  }

  else
  {
    v26 = *v23;
  }

  v27 = *&v18[v22[6]];

  v28 = *&v18[v22[7] + 8];

  v29 = *&v18[v22[8] + 8];

  v30 = v22[9];
  v31 = sub_260550();
  (*(*(v31 - 8) + 8))(&v18[v30], v31);

  return swift_deallocObject();
}

uint64_t sub_167D58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BooksFinishedFrame(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_167DEC()
{
  result = qword_320C78;
  if (!qword_320C78)
  {
    sub_2F9C(&qword_320C70, &unk_27D6E0);
    sub_C0C10();
    sub_1661CC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320C78);
  }

  return result;
}

unint64_t sub_167EA8()
{
  result = qword_320C80;
  if (!qword_320C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320C80);
  }

  return result;
}

uint64_t sub_167F14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  sub_2646F0();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_2633D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_263660();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_263260();
  swift_getWitnessTable();
  sub_261120();
  sub_262490();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_2621E0();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  sub_1661CC(&qword_320BF8, &type metadata accessor for SafeAreaPaddingModifier);
  return swift_getWitnessTable();
}

uint64_t static Metrics.createClickMetrics(targetId:targetType:actionType:actionDetails:actionUrl:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a1;
  v45 = a2;
  v48 = a9;
  v15 = sub_263DD0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_263A10();
  v18 = *(v46 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v46);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a3) = *a3;
  v22 = *a4;
  v23 = a8[9];
  v62 = a8[8];
  v63 = v23;
  v64 = a8[10];
  v24 = a8[5];
  v58 = a8[4];
  v59 = v24;
  v25 = a8[7];
  v60 = a8[6];
  v61 = v25;
  v26 = a8[1];
  v54 = *a8;
  v55 = v26;
  v27 = a8[3];
  v56 = a8[2];
  v57 = v27;
  v28 = &_swiftEmptyDictionarySingleton;
  if (a5)
  {
    v53 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v52 = a5;
    sub_FBD8(&v52, v50);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v50, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v28 = v49;
  }

  if (a7)
  {
    v53 = &type metadata for String;
    *&v52 = a6;
    *(&v52 + 1) = a7;
    sub_FBD8(&v52, v50);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v28;
    sub_DC90(v50, 0x72556E6F69746361, 0xE90000000000006CLL, v30);
    v28 = v49;
  }

  v51 = v22;
  v31 = Metrics.ClickActionType.rawValue.getter();
  v53 = &type metadata for String;
  *&v52 = v31;
  *(&v52 + 1) = v32;
  sub_FBD8(&v52, v50);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v28;
  sub_DC90(v50, 0x79546E6F69746361, 0xEA00000000006570, v33);
  v34 = v49;
  sub_2EF0(&qword_317218, &unk_269760);
  v35 = swift_allocObject();
  v43 = xmmword_267D30;
  *(v35 + 16) = xmmword_267D30;
  *(v35 + 32) = sub_1694E0();
  v53 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v52 = v35;
  sub_FBD8(&v52, v50);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v34;
  sub_DC90(v50, 0x6E6F697461636F6CLL, 0xE800000000000000, v36);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v37 = sub_2639E0();
  sub_B080(v37, qword_353F10);
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v38 = *(v18 + 72);
  v39 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v43;
  v41 = v46;
  (*(v18 + 16))(v40 + v39, v21, v46);
  sub_263DC0();
  sub_263AD0();
  return (*(v18 + 8))(v21, v41);
}

unint64_t static Metrics.actionDetails(assetInfo:)(void *a1)
{
  sub_2EF0(&qword_3160C0, &qword_267D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0x5050557369;
  *(inited + 40) = 0xE500000000000000;
  v3 = a1[4];
  sub_2E18(a1, a1[3]);
  v4 = sub_260990();
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v4 & 1;
  v5 = sub_E678(inited);
  swift_setDeallocating();
  sub_8E80(inited + 32, &qword_3160C8, &unk_267D50);
  return v5;
}

uint64_t sub_1688B4@<X0>(char *a1@<X8>)
{
  v2 = sub_263A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_263AE0();
  if (!*(v7 + 16) || ((*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2), , v8 = sub_263A00(), (*(v3 + 8))(v6, v2), !*(v8 + 16)) || (v9 = sub_D410(0x79546E6F69746361, 0xEA00000000006570), (v10 & 1) == 0))
  {

    v13 = 0u;
    v14 = 0u;
    goto LABEL_8;
  }

  sub_A7C18(*(v8 + 56) + 32 * v9, &v13);

  if (!*(&v14 + 1))
  {
LABEL_8:
    result = sub_8E80(&v13, &qword_316200, &qword_267FD0);
    goto LABEL_9;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return Metrics.ClickActionType.init(rawValue:)(a1);
  }

LABEL_9:
  *a1 = 34;
  return result;
}

uint64_t Metrics.ClickActionType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_264F80();

  v4 = 0;
  v5 = 16;
  switch(v2)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v4 = 1;
      goto LABEL_26;
    case 2:
      v4 = 2;
      goto LABEL_26;
    case 3:
      v4 = 3;
      goto LABEL_26;
    case 4:
      v4 = 4;
      goto LABEL_26;
    case 5:
      v4 = 5;
      goto LABEL_26;
    case 6:
      v4 = 6;
      goto LABEL_26;
    case 7:
      v4 = 7;
      goto LABEL_26;
    case 8:
      v4 = 8;
      goto LABEL_26;
    case 9:
      v4 = 9;
      goto LABEL_26;
    case 10:
      v4 = 10;
      goto LABEL_26;
    case 11:
      v4 = 11;
      goto LABEL_26;
    case 12:
      v4 = 12;
      goto LABEL_26;
    case 13:
      v4 = 13;
      goto LABEL_26;
    case 14:
      v4 = 14;
      goto LABEL_26;
    case 15:
      v4 = 15;
LABEL_26:
      v5 = v4;
      break;
    case 16:
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    case 32:
      v5 = 32;
      break;
    case 33:
      v5 = 33;
      break;
    default:
      v5 = 34;
      break;
  }

  *a1 = v5;
  return result;
}

unint64_t Metrics.ClickActionType.rawValue.getter()
{
  result = 6579297;
  switch(*v0)
  {
    case 1:
      result = 0x6E61576F54646461;
      break;
    case 2:
      result = 0x6D61536F69647561;
      break;
    case 3:
      result = 1801675106;
      break;
    case 4:
      result = 7959906;
      break;
    case 5:
      result = 0x6974696E49797562;
      break;
    case 6:
      result = 0x6F446C65636E6163;
      break;
    case 7:
      result = 0x657461657263;
      break;
    case 8:
      result = 0x6574656C6564;
      break;
    case 9:
      result = 0x676F6C616964;
      break;
    case 0xA:
      result = 0x7373696D736964;
      break;
    case 0xB:
      result = 0x64616F6C6E776F64;
      break;
    case 0xC:
      result = 0x657469726F766166;
      break;
    case 0xD:
      result = 0x7375636F66;
      break;
    case 0xE:
      result = 1702125928;
      break;
    case 0xF:
      result = 1702260588;
      break;
    case 0x10:
      result = 1701998445;
      break;
    case 0x11:
      result = 1702260589;
      break;
    case 0x12:
      result = 0x657461676976616ELL;
      break;
    case 0x13:
      result = 1954047342;
      break;
    case 0x14:
      result = 1852141679;
      break;
    case 0x15:
      result = 0x6573756170;
      break;
    case 0x16:
      result = 2036427888;
      break;
    case 0x17:
      result = 1702125938;
      break;
    case 0x18:
      result = 0x706D615364616572;
      break;
    case 0x19:
      result = 0x64616F6C6572;
      break;
    case 0x1A:
      result = 0xD000000000000014;
      break;
    case 0x1B:
      result = 0x7463656C6573;
      break;
    case 0x1C:
      result = 0x6572616873;
      break;
    case 0x1D:
      result = 0x7465656873;
      break;
    case 0x1E:
      result = 1953656691;
      break;
    case 0x1F:
      result = 1886352499;
      break;
    case 0x20:
      result = 0x69726F7661666E75;
      break;
    case 0x21:
      result = 0x657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_169020(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = Metrics.ClickActionType.rawValue.getter();
  v4 = v3;
  if (v2 == Metrics.ClickActionType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_264F10();
  }

  return v7 & 1;
}

Swift::Int sub_1690BC()
{
  v1 = *v0;
  sub_265050();
  Metrics.ClickActionType.rawValue.getter();
  sub_264500();

  return sub_265080();
}

uint64_t sub_169124()
{
  v2 = *v0;
  Metrics.ClickActionType.rawValue.getter();
  sub_264500();
}

Swift::Int sub_169188()
{
  v1 = *v0;
  sub_265050();
  Metrics.ClickActionType.rawValue.getter();
  sub_264500();

  return sub_265080();
}

uint64_t sub_1691EC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Metrics.ClickActionType.init(rawValue:)(a1);
}

unint64_t sub_1691F8@<X0>(unint64_t *a1@<X8>)
{
  result = Metrics.ClickActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Metrics.TargetType.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_300DA8;
  v9._object = a2;
  v6 = sub_264D40(v5, v9);

  v8 = 6;
  if (v6 < 6)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Metrics.TargetType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F74747562;
  v3 = 1802398060;
  v4 = 0x70756B636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x77656976657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6954656C62627562;
  if (v1 != 1)
  {
    v5 = 0x7265746C6966;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_16933C()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

void sub_169430(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  v5 = 0xE400000000000000;
  v6 = 1802398060;
  v7 = 0xE600000000000000;
  v8 = 0x70756B636F6CLL;
  if (v2 != 4)
  {
    v8 = 0x77656976657270;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000070;
  v10 = 0x6954656C62627562;
  if (v2 != 1)
  {
    v10 = 0x7265746C6966;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1694E0()
{
  v1 = v0[9];
  v35 = v0[8];
  v36 = v1;
  v37 = v0[10];
  v2 = v0[5];
  v31 = v0[4];
  v32 = v2;
  v3 = v0[7];
  v33 = v0[6];
  v34 = v3;
  v4 = v0[1];
  v27 = *v0;
  v28 = v4;
  v5 = v0[3];
  v29 = v0[2];
  v30 = v5;
  v6 = sub_25FE70();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_25FE60();
  sub_98D8C();
  v16 = sub_25FE50();
  v18 = v17;

  v19 = objc_opt_self();
  isa = sub_260070().super.isa;
  v26[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:0 error:v26];

  if (v21)
  {
    v22 = v26[0];
    sub_264AC0();
    swift_unknownObjectRelease();
    sub_2EF0(&qword_320CD0, &unk_27D9A0);
    if (swift_dynamicCast())
    {
      v15 = sub_1A4738(v25);
    }

    else
    {
      v15 = sub_E678(&_swiftEmptyArrayStorage);
    }

    sub_16A088(v16, v18);
  }

  else
  {
    v23 = v26[0];
    sub_25FFB0();

    swift_willThrow();
    sub_16A088(v16, v18);
    if (qword_315840 != -1)
    {
      swift_once();
    }

    v9 = sub_260D50();
    sub_B080(v9, qword_315F70);
    swift_errorRetain();
    v10 = sub_260D30();
    v11 = sub_2648F0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_0, v10, v11, "Failed to convert metrics model into MetricsFields: %@", v12, 0xCu);
      sub_8E80(v13, &qword_316450, &qword_2681E0);
    }

    v15 = sub_E678(&_swiftEmptyArrayStorage);
  }

  return v15;
}