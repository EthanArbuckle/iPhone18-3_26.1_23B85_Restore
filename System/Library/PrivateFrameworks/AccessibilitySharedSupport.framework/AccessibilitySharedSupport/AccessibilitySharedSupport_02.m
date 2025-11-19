unint64_t sub_1C0EF7D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77928, &qword_1C0F57508);
  result = sub_1C0F50570();
  v6 = result;
  if (*(v3 + 16))
  {
    v21 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = (*(v3 + 48) + 176 * (v13 | (v7 << 6)));
      v31 = v16[7];
      v32 = v16[8];
      *v33 = v16[9];
      *&v33[9] = *(v16 + 153);
      v28 = v16[4];
      v29 = v16[5];
      v30 = v16[6];
      v24 = *v16;
      v25 = v16[1];
      v26 = v16[2];
      v27 = v16[3];
      v23 = v16[9];
      v22 = *v16;
      v17 = *(v6 + 40);
      sub_1C0F50850();
      VOMapsItem.hash(into:)();
      sub_1C0F50890();
      v18 = -1 << *(v6 + 32);
      result = sub_1C0F50550();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = (*(v6 + 48) + 176 * result);
      v19[8] = v32;
      v19[9] = *v33;
      *(v19 + 153) = *&v33[9];
      v19[4] = v28;
      v19[5] = v29;
      v19[6] = v30;
      v19[7] = v31;
      *v19 = v24;
      v19[1] = v25;
      v19[2] = v26;
      v19[3] = v27;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v2 = v21;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C0EF7FFC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1C0F4F940();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C0EF7A28(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1C0EF8508();
      goto LABEL_12;
    }

    sub_1C0EF88F4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1C0EFEEDC(&qword_1EBE77948);
  v15 = sub_1C0F50170();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1C0EFEEDC(&qword_1EBE77950);
      v23 = sub_1C0F50190();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C0F507B0();
  __break(1u);
  return result;
}

uint64_t sub_1C0EF8278(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(result + 144);
  v65 = *(result + 128);
  v66[0] = v6;
  *(v66 + 9) = *(result + 153);
  v7 = *(result + 80);
  v61 = *(result + 64);
  v62 = v7;
  v8 = *(result + 112);
  v63 = *(result + 96);
  v64 = v8;
  v9 = *(result + 16);
  v57 = *result;
  v58 = v9;
  v10 = *(result + 48);
  v59 = *(result + 32);
  v60 = v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C0EF7D70(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1C0EF8740();
      goto LABEL_12;
    }

    sub_1C0EF8BFC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1C0F50850();
  VOMapsItem.hash(into:)();
  result = sub_1C0F50890();
  v15 = -1 << *(v13 + 32);
  a2 = result & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v13 + 48) + 176 * a2);
      v19 = v17[1];
      v18 = v17[2];
      v53[0] = *v17;
      v53[1] = v19;
      v53[2] = v18;
      v20 = v17[3];
      v21 = v17[4];
      v22 = v17[6];
      v53[5] = v17[5];
      v53[6] = v22;
      v53[3] = v20;
      v53[4] = v21;
      v23 = v17[7];
      v24 = v17[8];
      v25 = v17[9];
      *(v54 + 9) = *(v17 + 153);
      v53[8] = v24;
      v54[0] = v25;
      v53[7] = v23;
      v26 = v17[9];
      v51 = v17[8];
      v52[0] = v26;
      *(v52 + 9) = *(v17 + 153);
      v27 = v17[5];
      v47 = v17[4];
      v48 = v27;
      v28 = v17[7];
      v49 = v17[6];
      v50 = v28;
      v29 = v17[1];
      v43 = *v17;
      v44 = v29;
      v30 = v17[3];
      v45 = v17[2];
      v46 = v30;
      v31 = _s26AccessibilitySharedSupport10VOMapsItemV2eeoiySbAC_ACtFZ_0(&v43, &v57);
      v55[8] = v51;
      v56[0] = v52[0];
      *(v56 + 9) = *(v52 + 9);
      v55[4] = v47;
      v55[5] = v48;
      v55[6] = v49;
      v55[7] = v50;
      v55[0] = v43;
      v55[1] = v44;
      v55[2] = v45;
      v55[3] = v46;
      sub_1C0EF1234(v53, &v42);
      result = sub_1C0EF1204(v55);
      if (v31)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v32 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v33 = (*(v32 + 48) + 176 * a2);
  v34 = v62;
  v33[4] = v61;
  v33[5] = v34;
  *(v33 + 153) = *(v66 + 9);
  v35 = v66[0];
  v33[8] = v65;
  v33[9] = v35;
  v36 = v64;
  v33[6] = v63;
  v33[7] = v36;
  v37 = v58;
  *v33 = v57;
  v33[1] = v37;
  v38 = v60;
  v33[2] = v59;
  v33[3] = v38;
  v39 = *(v32 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (!v40)
  {
    *(v32 + 16) = v41;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C0F507B0();
  __break(1u);
  return result;
}

void *sub_1C0EF8508()
{
  v1 = v0;
  v2 = sub_1C0F4F940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77958, &qword_1C0F57528);
  v7 = *v0;
  v8 = sub_1C0F50560();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

void *sub_1C0EF8740()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77928, &qword_1C0F57508);
  v2 = *v0;
  v3 = sub_1C0F50560();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1C0EF1234(v27, &v26))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 176 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[6];
      v27[5] = v17[5];
      v27[6] = v20;
      v27[3] = v18;
      v27[4] = v19;
      v21 = v17[7];
      v22 = v17[8];
      v23 = v17[9];
      *(v28 + 9) = *(v17 + 153);
      v27[8] = v22;
      v28[0] = v23;
      v27[7] = v21;
      v25 = v17[1];
      v24 = v17[2];
      v27[0] = *v17;
      v27[1] = v25;
      v27[2] = v24;
      memmove((*(v4 + 48) + v16), v17, 0xA9uLL);
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

      v15 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1C0EF88F4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C0F4F940();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77958, &qword_1C0F57528);
  v10 = sub_1C0F50570();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1C0EFEEDC(&qword_1EBE77948);
      result = sub_1C0F50170();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_1C0EF8BFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77928, &qword_1C0F57508);
  result = sub_1C0F50570();
  v6 = result;
  if (*(v3 + 16))
  {
    v40 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = (*(v3 + 48) + 176 * (v12 | (v7 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v54 = v15[2];
      v18 = v15[3];
      v19 = v15[4];
      v20 = v15[6];
      v57 = v15[5];
      v58 = v20;
      v55 = v18;
      v56 = v19;
      v21 = v15[7];
      v22 = v15[8];
      v23 = v15[9];
      *(v61 + 9) = *(v15 + 153);
      v60 = v22;
      v61[0] = v23;
      v59 = v21;
      v52 = v17;
      v53 = v16;
      v24 = *(v6 + 40);
      v25 = v15[9];
      v50 = v15[8];
      v51[0] = v25;
      *(v51 + 9) = *(v15 + 153);
      v26 = v15[5];
      v46 = v15[4];
      v47 = v26;
      v27 = v15[7];
      v48 = v15[6];
      v49 = v27;
      v28 = v15[1];
      v42 = *v15;
      v43 = v28;
      v29 = v15[3];
      v44 = v15[2];
      v45 = v29;
      sub_1C0F50850();
      sub_1C0EF1234(&v52, v41);
      VOMapsItem.hash(into:)();
      sub_1C0F50890();
      v30 = -1 << *(v6 + 32);
      result = sub_1C0F50550();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v31 = (*(v6 + 48) + 176 * result);
      v33 = v53;
      v32 = v54;
      *v31 = v52;
      v31[1] = v33;
      v31[2] = v32;
      v34 = v58;
      v36 = v55;
      v35 = v56;
      v31[5] = v57;
      v31[6] = v34;
      v31[3] = v36;
      v31[4] = v35;
      v37 = v59;
      v38 = v60;
      v39 = v61[0];
      *(v31 + 153) = *(v61 + 9);
      v31[8] = v38;
      v31[9] = v39;
      v31[7] = v37;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {

        v2 = v40;
        goto LABEL_18;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v6;
  }

  return result;
}

char *sub_1C0EF8E6C(char *a1, int64_t a2, char a3)
{
  result = sub_1C0EF8F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8E8C(char *a1, int64_t a2, char a3)
{
  result = sub_1C0EF9038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0EF8EAC(void *a1, int64_t a2, char a3)
{
  result = sub_1C0EF913C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8ECC(char *a1, int64_t a2, char a3)
{
  result = sub_1C0EF9270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8EEC(char *a1, int64_t a2, char a3)
{
  result = sub_1C0EF9394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8F0C(char *a1, int64_t a2, char a3)
{
  result = sub_1C0EF9488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8F2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77908, &unk_1C0F574F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0EF9038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77940, &qword_1C0F57520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1C0EF913C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77900, &qword_1C0F574E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E8, &qword_1C0F574E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0EF9270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77918, &qword_1C0F57500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0EF9394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778C8, &qword_1C0F574A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C0EF9488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778C0, &qword_1C0F5AF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_1C0EF95C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_1C0EF8E6C(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1C0EF8E6C((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1C68E9490](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_1C0F4FCA0();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_1C0F4FC40();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_1C0EF9BEC();
}

unint64_t sub_1C0EF9738(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1C0EF9924(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1C68E94A0]())
  {
LABEL_16:
    v13 = sub_1C0EF9924(a1);
    sub_1C0EF9BEC();
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_1C0F4FCA0();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_1C0EF9C8C(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1C0EF9E84(a1, a1 + 1, v4, (v10 + 16));

      return sub_1C0EF9924(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C0EF98A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C0EFA504(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C0EF9924(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C0EFA4F0(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1C0EF99AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = sub_1C0EFA52C(a1, a2, v8 + 32, v9, (v7 + 16));
    v13 = v12;

    if (v13)
    {
      return v11;
    }
  }

  else
  {
    if (!v9)
    {
      return 0;
    }

    v11 = 0;
    for (i = (v8 + 40); ; i += 2)
    {
      v15 = *(i - 1) == a1 && *i == a2;
      if (v15 || (sub_1C0F50790() & 1) != 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        return 0;
      }
    }
  }

  v16 = *a3;

  v18 = v3[2];
  v17 = v3 + 2;
  result = sub_1C0EF9B0C(v11, *(v18 + 16) - 1);
  v20 = *v17;
  if (*(*v17 + 16))
  {
    v21 = *v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C0EFA504(v20);
      v20 = result;
    }

    v22 = v20[2];
    if (v22)
    {
      v23 = v22 - 1;
      v24 = v20[v23 + 4];
      v20[2] = v23;
      *v17 = v20;
      *a3 = v24;
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0EF9B0C(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = v4[result + 4];
          v8 = v4[a2 + 4];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1C0EFA504(v4);
            v4 = result;
          }

          if (v4[2] > v3)
          {
            v9 = v4 + 4;
            v10 = v4[v3 + 4];
            v4[v3 + 4] = v8;

            if (v4[2] > a2)
            {
              v11 = v9[a2];
              v9[a2] = v7;

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1C0EF9BEC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1C68E94C0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1C0EFA2F0(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

unint64_t sub_1C0EF9C8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = sub_1C0F4FC20();
  sub_1C0F4FC70();
  if (v23)
  {
    v7 = sub_1C0F4FC30();
    while (1)
    {
      result = sub_1C0F4FC50();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_1C0F50850();

      sub_1C0F50200();
      v16 = sub_1C0F50890();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v7)
      {
        break;
      }

      if (v19 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = sub_1C0F4FC50();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      sub_1C0F4FC40();
LABEL_5:
      sub_1C0F4FC70();
    }

    if (v19 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1C0F4FC40();
}

uint64_t sub_1C0EF9E84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x1C68E9490](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = (v10 + 32 + 16 * v11);
            v13 = *v12;
            v14 = v12[1];
            v15 = *a4;
            sub_1C0F50850();

            sub_1C0F50200();
            result = sub_1C0F50890();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1C0F4FC20())
            {
              while (1)
              {
                v16 = sub_1C0F4FC50();
                if ((v17 & 1) == 0 && v16 == v11)
                {
                  break;
                }

                sub_1C0F4FC70();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_1C0F4FC60();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1C0F4FC20();
      v24 = sub_1C0F4FC50();
      if ((v25 & 1) != 0 || v24 >= v8)
      {
LABEL_33:
        result = sub_1C0F4FC70();
LABEL_18:
        v18 = a4[1];
        if (__OFSUB__(v18 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v19 = 1 << *a4;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = (v21 & (((v18 >> 6) - v5) >> 63)) + (v18 >> 6) - v5;
        if (v22 < v21)
        {
          v21 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v22 - v21) << 6);
        return result;
      }

      if (!__OFADD__(v24, v5))
      {
        sub_1C0F4FC60();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1C0F4FC20();
      v26 = sub_1C0F4FC50();
      if ((v27 & 1) == 0 && v26 >= v4)
      {
        v20 = __OFSUB__(v26, v5);
        result = v26 - v5;
        if (v20)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1C0F4FC60();
      }

      return sub_1C0F4FC70();
    }

    v4 = a2;
    v23 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1C68E9490](*a4 & 0x3F);
    if (v23 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v28 = (a3 + 32 + 16 * v4);
        v29 = *v28;
        v30 = v28[1];
        v31 = *a4;
        sub_1C0F50850();

        sub_1C0F50200();
        result = sub_1C0F50890();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1C0F4FC20())
        {
          while (1)
          {
            v32 = sub_1C0F4FC50();
            if ((v33 & 1) == 0 && v32 == v4)
            {
              break;
            }

            sub_1C0F4FC70();
          }
        }

        sub_1C0F4FC60();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t sub_1C0EFA2F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1C68E94C0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1C68E94D0](v8, a4);
    sub_1C0EFA370(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1C0EFA3C0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_1C0F50850();

        sub_1C0F50200();
        result = sub_1C0F50890();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_1C0F4FC20();

        if (v10)
        {
          while (1)
          {
            sub_1C0F4FC70();
          }
        }

        result = sub_1C0F4FC60();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C0EFA52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_1C0F50850();
  sub_1C0F50200();
  result = sub_1C0F50890();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C0F4FC20();
    result = sub_1C0F4FC50();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1C0F50790())
          {
            break;
          }

          sub_1C0F4FC70();
          result = sub_1C0F4FC50();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_1C0EFA678(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77908, &unk_1C0F574F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1C0EFA750(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1C0EF8E6C(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1C68E94C0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1C68E94C0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  result = MEMORY[0x1C68E94C0](*(v7 + 16));
  if (result <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1C0EFA2F0(v7, v15, 0, v13);

    *v3 = v20;
    return result;
  }

  if (!v10 || (v21 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v23 = *v3;
  v22 = sub_1C0F4FCA0();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

unint64_t sub_1C0EFA930(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C0F50850();
  sub_1C0F50200();
  v6 = sub_1C0F50890();

  return sub_1C0EFA9A8(a1, a2, v6);
}

unint64_t sub_1C0EFA9A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C0F50790())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C0EFAA60(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C0EFA518(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C0EFAACC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C0EFAACC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C0F50770();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C0F50290();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C0EFACDC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1C0EFABC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C0EFABC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 176 * a3 - 176;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if ((*(v8 + 344) & 1) != 0 || (*(v8 + 168) & 1) == 0 && *(v8 + 336) >= *(v8 + 160))
      {
LABEL_4:
        ++a3;
        v5 += 176;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v9 = v8 + 176;
      v25 = *(v8 + 304);
      *v26 = *(v8 + 320);
      *&v26[9] = *(v8 + 329);
      v21 = *(v8 + 240);
      v22 = *(v8 + 256);
      v23 = *(v8 + 272);
      v24 = *(v8 + 288);
      v17 = *(v8 + 176);
      v18 = *(v8 + 192);
      v19 = *(v8 + 208);
      v20 = *(v8 + 224);
      v10 = *(v8 + 144);
      *(v8 + 304) = *(v8 + 128);
      *(v8 + 320) = v10;
      *(v8 + 336) = *(v8 + 160);
      v11 = *(v8 + 80);
      *(v8 + 240) = *(v8 + 64);
      *(v8 + 256) = v11;
      v12 = *(v8 + 112);
      *(v8 + 272) = *(v8 + 96);
      *(v8 + 288) = v12;
      v13 = *(v8 + 16);
      *(v8 + 176) = *v8;
      *(v8 + 192) = v13;
      v15 = *(v8 + 32);
      v14 = *(v8 + 48);
      *(v8 + 128) = v25;
      *(v8 + 144) = *v26;
      *(v8 + 153) = *&v26[9];
      *(v8 + 64) = v21;
      *(v8 + 80) = v22;
      *(v8 + 96) = v23;
      *(v8 + 112) = v24;
      *v8 = v17;
      *(v8 + 16) = v18;
      *(v8 + 32) = v19;
      *(v8 + 48) = v20;
      v8 -= 176;
      *(v9 + 32) = v15;
      *(v9 + 48) = v14;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C0EFACDC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_133:
      result = sub_1C0EFB63C(v6);
      v6 = result;
    }

    v82 = v6;
    v83 = (v6 + 16);
    v6 = *(v6 + 16);
    if (v6 >= 2)
    {
      while (*a3)
      {
        v84 = (v82 + 16 * v6);
        v85 = *v84;
        v86 = &v83[2 * v6];
        v87 = v86[1];
        sub_1C0EFB3CC((*a3 + 176 * *v84), (*a3 + 176 * *v86), (*a3 + 176 * v87), v5);
        if (v113)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_125;
        }

        if (v6 - 2 >= *v83)
        {
          goto LABEL_126;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v83 - v6;
        if (*v83 < v6)
        {
          goto LABEL_127;
        }

        v113 = 0;
        v6 = *v83 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v83 = v6;
        if (v6 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3;
      v9 = *a3 + 176 * v5;
      v10 = *(v9 + 168);
      v11 = v10 ^ 1;
      if ((v10 & 1) == 0)
      {
        v12 = v8 + 176 * v7;
        if ((*(v12 + 168) & 1) == 0)
        {
          v11 = *(v9 + 160) < *(v12 + 160);
        }
      }

      v5 = v7 + 2;
      if (v7 + 2 < v4)
      {
        v13 = v8 + 176 * v7 + 336;
        do
        {
          if (*(v13 + 184) == 1)
          {
            if (v11)
            {
              goto LABEL_20;
            }
          }

          else if (*(v13 + 8))
          {
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          else if ((v11 ^ (*(v13 + 176) < *v13)))
          {
            goto LABEL_17;
          }

          ++v5;
          v13 += 176;
        }

        while (v4 != v5);
        v5 = v4;
        if (!v11)
        {
          goto LABEL_28;
        }

LABEL_20:
        if (v5 < v7)
        {
          goto LABEL_130;
        }

        if (v7 < v5)
        {
          v14 = 176 * v5 - 176;
          v15 = 176 * v7;
          v16 = v5;
          v17 = v7;
          do
          {
            v16 = (v16 - 1);
            if (v17 != v16)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v19 = v6;
              v20 = (v18 + v14);
              v109 = *(v18 + v15 + 128);
              *v111 = *(v18 + v15 + 144);
              *&v111[9] = *(v18 + v15 + 153);
              v101 = *(v18 + v15 + 64);
              v103 = *(v18 + v15 + 80);
              v105 = *(v18 + v15 + 96);
              v107 = *(v18 + v15 + 112);
              v93 = *(v18 + v15);
              v95 = *(v18 + v15 + 16);
              v97 = *(v18 + v15 + 32);
              v99 = *(v18 + v15 + 48);
              result = memmove((v18 + v15), (v18 + v14), 0xB0uLL);
              v20[8] = v109;
              v20[9] = *v111;
              *(v20 + 153) = *&v111[9];
              v20[4] = v101;
              v20[5] = v103;
              v20[6] = v105;
              v20[7] = v107;
              *v20 = v93;
              v20[1] = v95;
              v20[2] = v97;
              v20[3] = v99;
              v6 = v19;
            }

            v17 = (v17 + 1);
            v14 -= 176;
            v15 += 176;
          }

          while (v17 < v16);
          v4 = a3[1];
        }

        goto LABEL_28;
      }

LABEL_17:
      if (v11)
      {
        goto LABEL_20;
      }
    }

LABEL_28:
    if (v5 < v4)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_129;
      }

      if (v5 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_131;
        }

        if (v7 + a4 < v4)
        {
          v4 = v7 + a4;
        }

        if (v4 < v7)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v5 != v4)
        {
          break;
        }
      }
    }

LABEL_47:
    if (v5 < v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C0EFB650(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v35 = *(v6 + 16);
    v34 = *(v6 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1C0EFB650((v34 > 1), v35 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v36;
    v37 = v6 + 32;
    v38 = (v6 + 32 + 16 * v35);
    *v38 = v7;
    v38[1] = v5;
    __src = *v90;
    if (!*v90)
    {
      goto LABEL_138;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v6 + 32);
          v41 = *(v6 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_67:
          if (v43)
          {
            goto LABEL_115;
          }

          v56 = (v6 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_117;
          }

          v62 = (v37 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_122;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v36 < 2)
        {
          goto LABEL_123;
        }

        v66 = (v6 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_82:
        if (v61)
        {
          goto LABEL_119;
        }

        v69 = (v37 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_121;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_89:
        if (v39 - 1 >= v36)
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v77 = v6;
        v78 = (v37 + 16 * (v39 - 1));
        v6 = *v78;
        v79 = (v37 + 16 * v39);
        v80 = v79[1];
        sub_1C0EFB3CC((*a3 + 176 * *v78), (*a3 + 176 * *v79), (*a3 + 176 * v80), __src);
        if (v113)
        {
        }

        if (v80 < v6)
        {
          goto LABEL_110;
        }

        if (v39 > *(v77 + 16))
        {
          goto LABEL_111;
        }

        *v78 = v6;
        v78[1] = v80;
        v81 = *(v77 + 16);
        if (v39 >= v81)
        {
          goto LABEL_112;
        }

        v6 = v77;
        v113 = 0;
        v36 = v81 - 1;
        result = memmove((v37 + 16 * v39), v79 + 2, 16 * (v81 - 1 - v39));
        *(v77 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v37 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_113;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_114;
      }

      v51 = (v6 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_116;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_118;
      }

      if (v55 >= v47)
      {
        v73 = (v37 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_124;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_3:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_98;
    }
  }

  v21 = *a3;
  v22 = *a3 + 176 * v5 - 176;
  v23 = v7 - v5;
LABEL_38:
  v24 = v23;
  v25 = v22;
  while (1)
  {
    if ((*(v25 + 344) & 1) != 0 || (*(v25 + 168) & 1) == 0 && *(v25 + 336) >= *(v25 + 160))
    {
LABEL_37:
      ++v5;
      v22 += 176;
      --v23;
      if (v5 != v4)
      {
        goto LABEL_38;
      }

      v5 = v4;
      goto LABEL_47;
    }

    if (!v21)
    {
      break;
    }

    v26 = v25 + 176;
    v110 = *(v25 + 304);
    *v112 = *(v25 + 320);
    *&v112[9] = *(v25 + 329);
    v102 = *(v25 + 240);
    v104 = *(v25 + 256);
    v106 = *(v25 + 272);
    v108 = *(v25 + 288);
    v94 = *(v25 + 176);
    v96 = *(v25 + 192);
    v98 = *(v25 + 208);
    v100 = *(v25 + 224);
    v27 = *(v25 + 144);
    *(v25 + 304) = *(v25 + 128);
    *(v25 + 320) = v27;
    *(v25 + 336) = *(v25 + 160);
    v28 = *(v25 + 80);
    *(v25 + 240) = *(v25 + 64);
    *(v25 + 256) = v28;
    v29 = *(v25 + 112);
    *(v25 + 272) = *(v25 + 96);
    *(v25 + 288) = v29;
    v30 = *(v25 + 16);
    *(v25 + 176) = *v25;
    *(v25 + 192) = v30;
    v32 = *(v25 + 32);
    v31 = *(v25 + 48);
    *(v25 + 128) = v110;
    *(v25 + 144) = *v112;
    *(v25 + 153) = *&v112[9];
    *(v25 + 64) = v102;
    *(v25 + 80) = v104;
    *(v25 + 96) = v106;
    *(v25 + 112) = v108;
    *v25 = v94;
    *(v25 + 16) = v96;
    *(v25 + 32) = v98;
    *(v25 + 48) = v100;
    v25 -= 176;
    *(v26 + 32) = v32;
    *(v26 + 48) = v31;
    if (__CFADD__(v24++, 1))
    {
      goto LABEL_37;
    }
  }

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
  return result;
}

uint64_t sub_1C0EFB3CC(double *__dst, double *a2, char *a3, double *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 176;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 176;
  if (v9 >= v11)
  {
    v16 = 22 * v11;
    if (__src != a2 || &a2[v16] <= __src)
    {
      memmove(__src, a2, 176 * v11);
    }

    v13 = &v4[v16];
    if (v10 < 176 || v6 <= v7)
    {
LABEL_36:
      v20 = v6;
    }

    else
    {
      do
      {
        v17 = 0;
        v18 = v13;
        while (1)
        {
          v19 = &v18[v17];
          if ((v18[v17 - 8] & 1) == 0 && ((*(v6 - 8) & 1) != 0 || *(v19 - 2) < *(v6 - 2)))
          {
            break;
          }

          if (&v5[v17] != v19)
          {
            memmove(&v5[v17 - 176], v19 - 22, 0xB0uLL);
          }

          v17 -= 176;
          v13 = &v18[v17];
          if (&v18[v17] <= v4)
          {
            goto LABEL_36;
          }
        }

        v20 = v6 - 176;
        v21 = &v5[v17];
        v5 = &v5[v17 - 176];
        if (v21 != v6)
        {
          v22 = v6 - 176;
          memmove(v5, v22, 0xB0uLL);
          v20 = v22;
        }

        v13 = &v18[v17];
        if (&v18[v17] <= v4)
        {
          break;
        }

        v6 = v20;
      }

      while (v20 > v7);
      v13 = &v18[v17];
    }
  }

  else
  {
    v12 = 22 * v9;
    if (__src != __dst || &__dst[v12] <= __src)
    {
      memmove(__src, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 >= 176 && v6 < v5)
    {
      while ((v6[168] & 1) == 0 && ((v4[21] & 1) != 0 || *(v6 + 20) < v4[20]))
      {
        v14 = v6;
        v15 = v7 == v6;
        v6 += 176;
        if (!v15)
        {
          goto LABEL_11;
        }

LABEL_12:
        v7 += 22;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 22;
      if (v15)
      {
        goto LABEL_12;
      }

LABEL_11:
      memmove(v7, v14, 0xB0uLL);
      goto LABEL_12;
    }

LABEL_35:
    v20 = v7;
  }

  v23 = 22 * ((v13 - v4) / 176);
  if (v20 != v4 || v20 >= &v4[v23])
  {
    memmove(v20, v4, v23 * 8);
  }

  return 1;
}

char *sub_1C0EFB650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77910, &unk_1C0F5AF30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1C0EFB754(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
      v18 = (*(a4 + 48) + 176 * (v17 | (v12 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v30[0] = *v18;
      v30[1] = v20;
      v30[2] = v19;
      v21 = v18[6];
      v23 = v18[3];
      v22 = v18[4];
      v30[5] = v18[5];
      v30[6] = v21;
      v30[3] = v23;
      v30[4] = v22;
      v25 = v18[8];
      v24 = v18[9];
      v26 = v18[7];
      *(v31 + 9) = *(v18 + 153);
      v30[8] = v25;
      v31[0] = v24;
      v30[7] = v26;
      memmove(v11, v18, 0xA9uLL);
      if (v14 == v10)
      {
        sub_1C0EF1234(v30, v29);
        goto LABEL_24;
      }

      v11 += 176;
      sub_1C0EF1234(v30, v29);
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
      v28 = v12 + 1;
    }

    else
    {
      v28 = (63 - v7) >> 6;
    }

    v12 = v28 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C0EFB904(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_1C0F50790();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_1C0F50790();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (v18 && (a1[4] == a2[4] && v17 == v18 || (sub_1C0F50790() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C0EFBA14(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_1C0F50790();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_1C0F50790();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_1C0F50790();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (v25 && (a1[6] == a2[6] && v24 == v25 || (sub_1C0F50790() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

BOOL _s26AccessibilitySharedSupport10VOMapsItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v127 = *(a1 + 128);
  v131 = *(a1 + 136);
  v125 = *(a1 + 144);
  v128 = *(a1 + 152);
  v18 = *(a1 + 160);
  v19 = *(a1 + 168);
  v20 = *(a2 + 8);
  v132 = *(a2 + 16);
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  v23 = *(a2 + 40);
  v24 = *(a2 + 48);
  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  v27 = *(a2 + 72);
  v29 = *(a2 + 80);
  v28 = *(a2 + 88);
  v30 = *(a2 + 96);
  v31 = *(a2 + 104);
  v32 = *(a2 + 160);
  v33 = *(a2 + 120);
  v130 = *(a2 + 112);
  v126 = *(a2 + 128);
  v34 = *(a2 + 136);
  v124 = *(a2 + 144);
  v129 = *(a2 + 152);
  v123 = *(a2 + 168);
  if (v3)
  {
    if (!v20)
    {
      return 0;
    }

    v122 = *(a1 + 16);
    if (*a1 != *a2 || v3 != v20)
    {
      v118 = *(a2 + 96);
      v92 = *(a1 + 96);
      v93 = *(a2 + 32);
      v35 = *(a1 + 168);
      v103 = *(a2 + 56);
      v106 = *(a2 + 72);
      v36 = *(a2 + 136);
      v109 = *(a1 + 56);
      v112 = *(a1 + 72);
      v37 = *(a1 + 112);
      v97 = *(a1 + 32);
      v99 = *(a1 + 40);
      v91 = *(a1 + 120);
      v38 = *(a2 + 120);
      v39 = *(a1 + 104);
      v95 = *(a2 + 40);
      v40 = *(a2 + 104);
      v101 = *(a1 + 88);
      v41 = *(a1 + 80);
      v42 = *(a2 + 88);
      v115 = *(a2 + 80);
      v43 = sub_1C0F50790();
      v29 = v115;
      v30 = v118;
      v28 = v42;
      v12 = v41;
      v13 = v101;
      v31 = v40;
      v15 = v39;
      v23 = v95;
      v5 = v97;
      v17 = v91;
      v14 = v92;
      v33 = v38;
      v27 = v106;
      v9 = v109;
      v16 = v37;
      v11 = v112;
      v34 = v36;
      v25 = v103;
      v19 = v35;
      v22 = v93;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v122 = *(a1 + 16);
    if (v20)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v21)
    {
      return 0;
    }

    if (v122 != v132 || v6 != v21)
    {
      v119 = v30;
      v100 = v7;
      v102 = v13;
      v44 = v19;
      v45 = v34;
      v94 = v22;
      v96 = v23;
      v46 = v16;
      v47 = v17;
      v110 = v9;
      v113 = v11;
      v48 = v33;
      v98 = v5;
      v49 = v14;
      v104 = v25;
      v107 = v27;
      v50 = v15;
      v51 = v31;
      v52 = v12;
      v53 = v28;
      v116 = v29;
      v54 = sub_1C0F50790();
      v29 = v116;
      v30 = v119;
      v28 = v53;
      v12 = v52;
      v31 = v51;
      v27 = v107;
      v9 = v110;
      v15 = v50;
      v25 = v104;
      v14 = v49;
      v5 = v98;
      v7 = v100;
      v33 = v48;
      v11 = v113;
      v17 = v47;
      v16 = v46;
      v22 = v94;
      v23 = v96;
      v34 = v45;
      v19 = v44;
      v13 = v102;
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v7)
  {
    if (!v23)
    {
      return 0;
    }

    if (v5 != v22 || v7 != v23)
    {
      v120 = v30;
      v133 = v19;
      v55 = v34;
      v56 = v16;
      v57 = v17;
      v108 = v27;
      v111 = v9;
      v58 = v33;
      v59 = v14;
      v105 = v25;
      v60 = v15;
      v61 = v31;
      v62 = v12;
      v114 = v11;
      v63 = v28;
      v117 = v29;
      v64 = sub_1C0F50790();
      v29 = v117;
      v30 = v120;
      v28 = v63;
      v12 = v62;
      v31 = v61;
      v15 = v60;
      v25 = v105;
      v27 = v108;
      v14 = v59;
      v33 = v58;
      v9 = v111;
      v11 = v114;
      v17 = v57;
      v16 = v56;
      v34 = v55;
      v19 = v133;
      if ((v64 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v9)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v24)
    {
      v65 = v25;
    }

    else
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v26)
    {
      v66 = v27;
    }

    else
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v28)
    {
      return 0;
    }

    if (v12 != v29 || v13 != v28)
    {
      v121 = v30;
      v67 = v19;
      v68 = v34;
      v69 = v16;
      v70 = v17;
      v71 = v33;
      v72 = v14;
      v73 = v15;
      v74 = v31;
      v75 = sub_1C0F50790();
      v30 = v121;
      v31 = v74;
      v15 = v73;
      v14 = v72;
      v33 = v71;
      v17 = v70;
      v16 = v69;
      v34 = v68;
      v19 = v67;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  if (v15)
  {
    if (!v31)
    {
      return 0;
    }

    if (v14 != v30 || v15 != v31)
    {
      v76 = v19;
      v77 = v34;
      v78 = v16;
      v79 = v17;
      v80 = v33;
      v81 = sub_1C0F50790();
      v33 = v80;
      v17 = v79;
      v16 = v78;
      v34 = v77;
      v19 = v76;
      if ((v81 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v31)
  {
    return 0;
  }

  if (v17)
  {
    if (!v33)
    {
      return 0;
    }

    if (v16 != v130 || v17 != v33)
    {
      v82 = v19;
      v83 = v34;
      v84 = sub_1C0F50790();
      v34 = v83;
      v19 = v82;
      if ((v84 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  if (v131)
  {
    if (!v34)
    {
      return 0;
    }

    if (v127 != v126 || v131 != v34)
    {
      v85 = v19;
      v86 = sub_1C0F50790();
      v19 = v85;
      if ((v86 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (v128)
  {
    if (!v129)
    {
      return 0;
    }

    if (v125 != v124 || v128 != v129)
    {
      v87 = v19;
      v88 = sub_1C0F50790();
      v19 = v87;
      if ((v88 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v129)
  {
    return 0;
  }

  if ((v19 & 1) == 0)
  {
    v90 = v123;
    if (v18 != v32)
    {
      v90 = 1;
    }

    return (v90 & 1) == 0;
  }

  return (v123 & 1) != 0;
}

BOOL sub_1C0EFC0DC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (v2 == 1)
  {
    if (v8 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  if (v8 == 1)
  {
LABEL_7:
    sub_1C0EFEC0C(*a2, *(a2 + 8));
    sub_1C0EFEC0C(v3, v2);
    sub_1C0EFEC60(v3, v2);
    v21 = v7;
    v22 = v8;
LABEL_39:
    sub_1C0EFEC60(v21, v22);
    return 0;
  }

  v53 = *(a1 + 32);
  v54 = *(a1 + 40);
  if (v2)
  {
    if (!v8)
    {
      goto LABEL_38;
    }

    if (v3 != v7 || v2 != v8)
    {
      v46 = a2;
      v49 = a1;
      v23 = *(a1 + 24);
      v24 = *(a2 + 40);
      v25 = sub_1C0F50790();
      v11 = v24;
      v4 = v23;
      v26 = v25;
      a2 = v46;
      a1 = v49;
      if ((v26 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_38;
  }

  if (v4)
  {
    if (!v10)
    {
      goto LABEL_38;
    }

    if (v5 != v9 || v4 != v10)
    {
      v47 = a2;
      v50 = a1;
      v29 = v11;
      v30 = sub_1C0F50790();
      v11 = v29;
      v31 = v30;
      a2 = v47;
      a1 = v50;
      if ((v31 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_38;
  }

  if (v54)
  {
    if (v11)
    {
      if (v53 == v12 && v54 == v11)
      {
        goto LABEL_34;
      }

      v48 = a2;
      v51 = a1;
      v42 = sub_1C0F50790();
      a2 = v48;
      a1 = v51;
      if (v42)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    sub_1C0EFEC0C(v7, v8);
    sub_1C0EFEC0C(v3, v2);

    v21 = v3;
    v22 = v2;
    goto LABEL_39;
  }

  if (v11)
  {
    goto LABEL_38;
  }

LABEL_34:
  v52 = a1;
  v43 = v7;
  v44 = a2;
  sub_1C0EFEC0C(v43, v8);
  sub_1C0EFEC0C(v3, v2);

  sub_1C0EFEC60(v3, v2);
  a1 = v52;
  a2 = v44;
LABEL_3:
  v13 = *(a1 + 64);
  v69[0] = *(a1 + 48);
  v69[1] = v13;
  v14 = *(a1 + 96);
  v69[2] = *(a1 + 80);
  v69[3] = v14;
  v15 = *(a2 + 64);
  v68[0] = *(a2 + 48);
  v68[1] = v15;
  v16 = *(a2 + 96);
  v68[2] = *(a2 + 80);
  v68[3] = v16;
  v17 = v69[0];
  if (*(&v69[0] + 1) != 1)
  {
    if (*(&v68[0] + 1) != 1)
    {
      v55 = v68[0];
      v32 = *(a2 + 80);
      v56 = *(a2 + 64);
      v57 = v32;
      v18 = a2;
      v58 = *(a2 + 96);
      v62 = v32;
      v63 = v58;
      v60 = v68[0];
      v61 = v56;
      v33 = *(a1 + 64);
      v34 = *(a1 + 80);
      v70[3] = *(a1 + 96);
      v70[2] = v34;
      v70[1] = v33;
      v70[0] = v69[0];
      v35 = a1;
      v36 = sub_1C0EFBA14(v70, &v60);
      sub_1C0EED570(v69, v59, &qword_1EBE77870, &qword_1C0F57478);
      sub_1C0EED570(v68, v59, &qword_1EBE77870, &qword_1C0F57478);
      sub_1C0EEFAA8(&v55, &qword_1EBE77870, &qword_1C0F57478);
      v59[0] = v17;
      v37 = v35[5];
      v59[1] = v35[4];
      v59[2] = v37;
      v20 = v35;
      v59[3] = v35[6];
      sub_1C0EEFAA8(v59, &qword_1EBE77870, &qword_1C0F57478);
      if ((v36 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

LABEL_15:
    v60 = v69[0];
    v27 = *(a1 + 80);
    v61 = *(a1 + 64);
    v62 = v27;
    v63 = *(a1 + 96);
    v64 = v68[0];
    v28 = *(a2 + 80);
    v65 = *(a2 + 64);
    v66 = v28;
    v67 = *(a2 + 96);
    sub_1C0EED570(v69, v70, &qword_1EBE77870, &qword_1C0F57478);
    sub_1C0EED570(v68, v70, &qword_1EBE77870, &qword_1C0F57478);
    sub_1C0EEFAA8(&v60, &qword_1EBE778B8, &unk_1C0F57490);
    return 0;
  }

  if (*(&v68[0] + 1) != 1)
  {
    goto LABEL_15;
  }

  v18 = a2;
  *&v60 = *&v69[0];
  *(&v60 + 1) = 1;
  v19 = *(a1 + 80);
  v61 = *(a1 + 64);
  v62 = v19;
  v20 = a1;
  v63 = *(a1 + 96);
  sub_1C0EED570(v69, v70, &qword_1EBE77870, &qword_1C0F57478);
  sub_1C0EED570(v68, v70, &qword_1EBE77870, &qword_1C0F57478);
  sub_1C0EEFAA8(&v60, &qword_1EBE77870, &qword_1C0F57478);
LABEL_24:
  v38 = *(v20 + 14);
  v39 = *(v18 + 112);
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    v40 = *(v18 + 112);

    v41 = sub_1C0EF6E90(v38, v39);

    return (v41 & 1) != 0;
  }

  return !v39;
}

uint64_t sub_1C0EFC610(uint64_t a1)
{
  v2 = sub_1C0F4F940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1C0EFEEDC(&qword_1EBE77948);
  result = MEMORY[0x1C68E9C20](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1C0EF7408(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1C0EFC798(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C0EFEE78();
  result = MEMORY[0x1C68E9C20](v2, &type metadata for VOMapsItem, v3);
  v15 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[9];
      v16[8] = v5[8];
      v17[0] = v6;
      *(v17 + 9) = *(v5 + 153);
      v7 = v5[5];
      v16[4] = v5[4];
      v16[5] = v7;
      v8 = v5[7];
      v16[6] = v5[6];
      v16[7] = v8;
      v9 = v5[1];
      v16[0] = *v5;
      v16[1] = v9;
      v10 = v5[3];
      v16[2] = v5[2];
      v16[3] = v10;
      sub_1C0EF1234(v16, v13);
      sub_1C0EF76C0(v11, v16);
      v13[8] = v11[8];
      v14[0] = v12[0];
      *(v14 + 9) = *(v12 + 9);
      v13[4] = v11[4];
      v13[5] = v11[5];
      v13[6] = v11[6];
      v13[7] = v11[7];
      v13[0] = v11[0];
      v13[1] = v11[1];
      v13[2] = v11[2];
      v13[3] = v11[3];
      sub_1C0EF1204(v13);
      v5 += 11;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

uint64_t sub_1C0EFC888()
{
  v0 = sub_1C0F50660();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C0EFC8D4()
{
  v0 = sub_1C0F50660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C0EFC920@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77988, &qword_1C0F57878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFF2AC();
  sub_1C0F508A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_1C0F50690();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = sub_1C0F50690();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = sub_1C0F50690();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v22 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_1C0EFCB24()
{
  v0 = sub_1C0F50660();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C0EFCB70@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77998, &qword_1C0F57880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFF300();
  sub_1C0F508A0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    return sub_1C0EFF354(&v37);
  }

  else
  {
    LOBYTE(v37) = 0;
    v11 = sub_1C0F50690();
    v31 = v6;
    v32 = v12;
    v30 = a2;
    LOBYTE(v37) = 1;
    v13 = sub_1C0F50690();
    v15 = v14;
    LOBYTE(v37) = 2;
    v16 = sub_1C0F50690();
    v18 = v17;
    v45 = 3;
    v19 = sub_1C0F50690();
    v20 = *(v31 + 8);
    v31 = v19;
    v21 = v9;
    v23 = v22;
    v20(v21, v5);
    v24 = v32;
    *&v33 = v11;
    *(&v33 + 1) = v32;
    *&v34 = v13;
    *(&v34 + 1) = v15;
    *&v35 = v16;
    *(&v35 + 1) = v18;
    *&v36 = v31;
    *(&v36 + 1) = v23;
    sub_1C0EFF384(&v33, &v37);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v37 = v11;
    v38 = v24;
    v39 = v13;
    v40 = v15;
    v41 = v16;
    v42 = v18;
    v43 = v31;
    v44 = v23;
    result = sub_1C0EFF354(&v37);
    v26 = v34;
    v27 = v30;
    *v30 = v33;
    v27[1] = v26;
    v28 = v36;
    v27[2] = v35;
    v27[3] = v28;
  }

  return result;
}

uint64_t sub_1C0EFCE70(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1C0EFA750(v3, 0);
  sub_1C0EF8EAC(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v6 = (v5 + 24 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *(v16 + 16);
    if (v10)
    {
      break;
    }

LABEL_11:

    sub_1C0EF95C0(v8, v7);
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1C0EF8EAC((v13 > 1), v14 + 1, 1);
    }

    ++v4;
    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v9;
    if (v4 == v3)
    {
      return 0;
    }
  }

  v11 = (v16 + 40);
  while (1)
  {
    v12 = *(v11 - 1) == v8 && *v11 == v7;
    if (v12 || (sub_1C0F50790() & 1) != 0)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1C0EFD048()
{
  v0 = sub_1C0F50660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C0EFD094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77850, &qword_1C0F57470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_1C0EFE910();
  sub_1C0F508A0();
  if (v2)
  {
    v68 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 1;
    __swift_destroy_boxed_opaque_existential_0(v27);
    v55 = 0;
    v56 = 1;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = v68;
    v60 = v28;
    v61 = v34;
    v62 = v33;
    v63 = v32;
    v64 = v31;
    v65 = v30;
    v66 = v29;
    v67 = 0;
    return sub_1C0EFD968(&v55);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_1C0EFE964();
    sub_1C0F506B0();
    v12 = v56;
    v24 = v55;
    v25 = v57;
    v26 = v58;
    v46 = 1;
    sub_1C0EFE9B8();
    sub_1C0F506B0();
    v23 = v12;
    v68 = v47;
    v33 = v50;
    v34 = v49;
    v31 = v52;
    v32 = v51;
    v30 = v53;
    v28 = v48;
    v29 = v54;
    v45[0] = xmmword_1C0F56FB0;
    memset(&v45[1], 0, 48);
    sub_1C0EEFAA8(v45, &qword_1EBE77870, &qword_1C0F57478);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77878, &qword_1C0F57480);
    v43 = 2;
    sub_1C0EFEB40(&qword_1EBE77880, sub_1C0EFEA0C);
    sub_1C0F506B0();
    (*(v6 + 8))(v9, v5);
    v13 = v44;
    v14 = v23;
    v15 = v24;
    *&v35 = v24;
    *(&v35 + 1) = v23;
    v16 = v25;
    v36 = v25;
    v17 = v26;
    v37 = v26;
    *&v38 = v68;
    *(&v38 + 1) = v28;
    *&v39 = v34;
    *(&v39 + 1) = v33;
    *&v40 = v32;
    *(&v40 + 1) = v31;
    *&v41 = v30;
    *(&v41 + 1) = v29;
    v42 = v44;
    sub_1C0EFEA60(&v35, &v55);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v55 = v15;
    v56 = v14;
    v57 = v16;
    v58 = __PAIR128__(*(&v26 + 1), v17);
    v59 = v68;
    v60 = v28;
    v61 = v34;
    v62 = v33;
    v63 = v32;
    v64 = v31;
    v65 = v30;
    v66 = v29;
    v67 = v13;
    result = sub_1C0EFD968(&v55);
    v19 = v40;
    *(a2 + 64) = v39;
    *(a2 + 80) = v19;
    *(a2 + 96) = v41;
    *(a2 + 112) = v42;
    v20 = v36;
    *a2 = v35;
    *(a2 + 16) = v20;
    v21 = v38;
    *(a2 + 32) = v37;
    *(a2 + 48) = v21;
  }

  return result;
}

unint64_t sub_1C0EFD4F4()
{
  v35 = *MEMORY[0x1E69E9840];
  v0 = sub_1C0F4F750();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v32[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v32[-1] - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32[-1] - v9;
  v11 = [objc_opt_self() defaultManager];
  *&v34[0] = 0;
  v12 = [v11 URLForDirectory:13 inDomain:8 appropriateForURL:0 create:0 error:v34];

  v13 = *&v34[0];
  if (v12)
  {
    sub_1C0F4F720();
    v14 = v13;

    (*(v1 + 32))(v10, v8, v0);
    sub_1C0F4F710();
    v20 = sub_1C0F4F760();
    v22 = v21;
    v23 = objc_opt_self();
    v24 = sub_1C0F4F7A0();
    v32[0] = 0;
    v25 = [v23 propertyListWithData:v24 options:1 format:0 error:v32];

    v26 = v32[0];
    if (v25)
    {
      sub_1C0F50520();
      swift_unknownObjectRelease();
      sub_1C0EFEECC(v33, v34);
      sub_1C0EED190(v34, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77930, &qword_1C0F57510);
      if (swift_dynamicCast())
      {
        v27 = sub_1C0EF493C(v32[0]);
        sub_1C0EFED6C(v20, v22);

        __swift_destroy_boxed_opaque_existential_0(v34);
        v28 = *(v1 + 8);
        v28(v5, v0);
        v28(v10, v0);
        result = v27;
        goto LABEL_6;
      }

      sub_1C0EFED6C(v20, v22);
      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    else
    {
      v29 = v26;
      v30 = sub_1C0F4F6B0();

      swift_willThrow();
      sub_1C0EFED6C(v20, v22);
    }

    v15 = *(v1 + 8);
    v15(v5, v0);
    v15(v10, v0);
  }

  else
  {
    v16 = *&v34[0];
    v17 = sub_1C0F4F6B0();

    swift_willThrow();
  }

  result = 0;
LABEL_6:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0EFD8B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE69100]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_1C0F50220();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t sub_1C0EFD998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C0EEF864;

  return sub_1C0EF4B90(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C0EFDA74(double a1)
{
  v2 = sub_1C0F4F8D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = sub_1C0F4F940();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0F4F900();
  sub_1C0F4F8E0();
  (*(v11 + 8))(v14, v10);
  sub_1C0F4F8C0();
  LOBYTE(v10) = MEMORY[0x1C68E90C0](v9, v7);
  v15 = *(v3 + 8);
  v15(v7, v2);
  v15(v9, v2);
  v16 = sub_1C0F501A0();
  v17 = objc_opt_self();
  v18 = [v17 bundleWithIdentifier_];

  if (v10)
  {
    v19 = a1 / 1000.0;
    if (v18)
    {
      sub_1C0F4F640();
    }

    if (v19 < 0.1)
    {

      v20 = sub_1C0F501A0();
      v21 = [v17 bundleWithIdentifier_];

      if (v21)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_12:
    a1 = v19;
    goto LABEL_13;
  }

  v19 = a1 / 1609.344;
  if (v18)
  {
    sub_1C0F4F640();
  }

  if (v19 >= 0.1)
  {
    goto LABEL_12;
  }

  a1 = a1 * 3.28084;
  v22 = sub_1C0F501A0();
  v21 = [v17 bundleWithIdentifier_];

  if (v21)
  {
LABEL_11:
    sub_1C0F4F640();
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E63B0];
  *(v23 + 16) = xmmword_1C0F561D0;
  v25 = MEMORY[0x1E69E6438];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = a1;
  v26 = sub_1C0F501C0();

  return v26;
}

void sub_1C0EFDF3C(double a1)
{
    ;
  }

    ;
  }

  v1 = round(a1 / 30.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v2 = sub_1C0F501A0();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    sub_1C0F4F640();
  }

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E6530];
  *(v5 + 16) = xmmword_1C0F561D0;
  v7 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v4;
  sub_1C0F501C0();
}

unint64_t sub_1C0EFE16C()
{
  result = qword_1EBE77828;
  if (!qword_1EBE77828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77828);
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1C0EFE1FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 169))
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

uint64_t sub_1C0EFE258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of VOMapsManager.describeMaps(elements:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C0EFE430;

  return v8(a1);
}

uint64_t sub_1C0EFE430(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
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

uint64_t sub_1C0EFE584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
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

uint64_t sub_1C0EFE5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VOMapsItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VOMapsItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0EFE7B4()
{
  result = qword_1EBE77830;
  if (!qword_1EBE77830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77830);
  }

  return result;
}

unint64_t sub_1C0EFE80C()
{
  result = qword_1EBE77838;
  if (!qword_1EBE77838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77838);
  }

  return result;
}

unint64_t sub_1C0EFE864()
{
  result = qword_1EBE77840;
  if (!qword_1EBE77840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77840);
  }

  return result;
}

unint64_t sub_1C0EFE8BC()
{
  result = qword_1EBE77848;
  if (!qword_1EBE77848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77848);
  }

  return result;
}

unint64_t sub_1C0EFE910()
{
  result = qword_1EBE77858;
  if (!qword_1EBE77858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77858);
  }

  return result;
}

unint64_t sub_1C0EFE964()
{
  result = qword_1EBE77860;
  if (!qword_1EBE77860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77860);
  }

  return result;
}

unint64_t sub_1C0EFE9B8()
{
  result = qword_1EBE77868;
  if (!qword_1EBE77868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77868);
  }

  return result;
}

unint64_t sub_1C0EFEA0C()
{
  result = qword_1EBE77888;
  if (!qword_1EBE77888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77888);
  }

  return result;
}

unint64_t sub_1C0EFEA98()
{
  result = qword_1EBE77898;
  if (!qword_1EBE77898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77898);
  }

  return result;
}

unint64_t sub_1C0EFEAEC()
{
  result = qword_1EBE778A0;
  if (!qword_1EBE778A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE778A0);
  }

  return result;
}

uint64_t sub_1C0EFEB40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77878, &qword_1C0F57480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C0EFEBB8()
{
  result = qword_1EBE778B0;
  if (!qword_1EBE778B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE778B0);
  }

  return result;
}

uint64_t sub_1C0EFEC0C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C0EFEC60(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C0EFECB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C0EEF864;

  return sub_1C0EF70FC(a1, v5);
}

uint64_t sub_1C0EFED6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1C0EFEDC0()
{
  result = qword_1EBE778F0;
  if (!qword_1EBE778F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE778E8, &qword_1C0F574E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE778F0);
  }

  return result;
}

unint64_t sub_1C0EFEE24()
{
  result = qword_1EBE778F8;
  if (!qword_1EBE778F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE778F8);
  }

  return result;
}

unint64_t sub_1C0EFEE78()
{
  result = qword_1EBE77920;
  if (!qword_1EBE77920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77920);
  }

  return result;
}

_OWORD *sub_1C0EFEECC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C0EFEEDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C0F4F940();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0EFEF44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1C0EFEFA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C0EFF028(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1C0EFF084(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0EFF0F8()
{
  result = qword_1EBE77960;
  if (!qword_1EBE77960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77960);
  }

  return result;
}

unint64_t sub_1C0EFF150()
{
  result = qword_1EBE77968;
  if (!qword_1EBE77968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77968);
  }

  return result;
}

unint64_t sub_1C0EFF1A8()
{
  result = qword_1EBE77970;
  if (!qword_1EBE77970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77970);
  }

  return result;
}

unint64_t sub_1C0EFF200()
{
  result = qword_1EBE77978;
  if (!qword_1EBE77978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77978);
  }

  return result;
}

unint64_t sub_1C0EFF258()
{
  result = qword_1EBE77980;
  if (!qword_1EBE77980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77980);
  }

  return result;
}

unint64_t sub_1C0EFF2AC()
{
  result = qword_1EBE77990;
  if (!qword_1EBE77990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77990);
  }

  return result;
}

unint64_t sub_1C0EFF300()
{
  result = qword_1EBE779A0;
  if (!qword_1EBE779A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityAssistiveTouchAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityAssistiveTouchAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0EFF520()
{
  result = qword_1EBE779B8;
  if (!qword_1EBE779B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779B8);
  }

  return result;
}

unint64_t sub_1C0EFF578()
{
  result = qword_1EBE779C0;
  if (!qword_1EBE779C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779C0);
  }

  return result;
}

unint64_t sub_1C0EFF5D0()
{
  result = qword_1EBE779C8;
  if (!qword_1EBE779C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779C8);
  }

  return result;
}

unint64_t sub_1C0EFF628()
{
  result = qword_1EBE779D0;
  if (!qword_1EBE779D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779D0);
  }

  return result;
}

unint64_t sub_1C0EFF680()
{
  result = qword_1EBE779D8;
  if (!qword_1EBE779D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779D8);
  }

  return result;
}

unint64_t sub_1C0EFF6D8()
{
  result = qword_1EBE779E0;
  if (!qword_1EBE779E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779E0);
  }

  return result;
}

double AccessibilityAssistiveTouchActionHandler.menuState.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t dispatch thunk of AccessibilityAssistiveTouchActionHandler.handleAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEF864;

  return v13(a1, a2, a3, a4);
}

unint64_t AXLLMError.errorDescription.getter()
{
  result = 0xD000000000000015;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000022;
    }

    else
    {
      v3 = *v0;
      sub_1C0F505A0();

      MEMORY[0x1C68E9A50](v3, v2);
      return 0xD00000000000001FLL;
    }
  }

  return result;
}

uint64_t sub_1C0EFF9BC()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t sub_1C0EFFA30()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

unint64_t sub_1C0EFFA74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C0F03C18(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AXLLMManager.__allocating_init(clientName:model:handleSensitiveData:systemInstructions:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_useOnDeviceModel] = 0;
  v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_usePartnerCloud] = 0;
  v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_usePrivateCloudPlanner] = 0;
  *&v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession] = 0;
  v16 = &v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_clientName];
  *v16 = a1;
  v16[1] = a2;
  v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_handleSensitiveData] = a4;
  v17 = &v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_systemInstructions];
  *v17 = a5;
  v17[1] = a6;
  v18 = OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_locale;
  v19 = sub_1C0F4F940();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v15[v18], a7, v19);
  *&v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_model] = a3;
  v23.receiver = v15;
  v23.super_class = v7;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  (*(v20 + 8))(a7, v19);
  return v21;
}

id AXLLMManager.init(clientName:model:handleSensitiveData:systemInstructions:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_useOnDeviceModel] = 0;
  v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_usePartnerCloud] = 0;
  v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_usePrivateCloudPlanner] = 0;
  *&v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession] = 0;
  v10 = &v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_clientName];
  *v10 = a1;
  v10[1] = a2;
  v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_handleSensitiveData] = a4;
  v11 = &v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_systemInstructions];
  *v11 = a5;
  v11[1] = a6;
  v12 = OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_locale;
  v13 = sub_1C0F4F940();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v7[v12], a7, v13);
  *&v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_model] = a3;
  v17.receiver = v7;
  v17.super_class = type metadata accessor for AXLLMManager(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a7, v13);
  return v15;
}

uint64_t sub_1C0EFFE38(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1C0F4FAC0(), v5 = *(a2 + 40), sub_1C0F04E10(&qword_1EBE77AE0), v6 = sub_1C0F50170(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, v18 = a2 + 56, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v17 = a1;
    v15 = ~v7;
    v9 = *(v4 - 8);
    v16 = v9[2];
    v10 = v9[8];
    v11 = v9[9];
    v12 = (v9 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v6);
      v16(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *(a2 + 48) + v11 * v8, v4);
      sub_1C0F04E10(&qword_1EBE77AE8);
      v13 = sub_1C0F50190();
      v6 = (*v12)(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v13)
      {
        break;
      }

      v8 = (v8 + 1) & v15;
    }

    while (((*(v18 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1C0EFFFF0()
{
  v1 = v0;
  v2 = sub_1C0F4F860();
  v122 = *(v2 - 8);
  v123 = v2;
  v3 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v121 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C0F4FA30();
  v124 = *(v5 - 8);
  v125 = v5;
  v6 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AA0, &qword_1C0F57E18);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v104 - v14;
  v16 = sub_1C0F4F920();
  v126 = *(v16 - 8);
  v17 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C0F4F940();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AA8, &qword_1C0F57E20);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v104 - v27;
  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession))
  {
    v29 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession);
    goto LABEL_3;
  }

  v30 = v20;
  v115 = OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession;
  v116 = v13;
  v120 = v8;
  v117 = v1;
  v118 = v15;
  v31 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_model);
  if (v31 > 1)
  {
    v32 = v16;
    if (v31 != 2)
    {
      v33 = v126;
      v34 = v30;
      v35 = v21;
      if (v31 == 3)
      {
        v119 = 0xD000000000000019;
        v36 = v19;
LABEL_17:
        v39 = v28;
        v40 = sub_1C0F22B3C(MEMORY[0x1E69E7CC0]);
        sub_1C0F4F900();
        sub_1C0F4F930();
        (*(v35 + 8))(v24, v34);
        sub_1C0F4F910();
        (*(v33 + 8))(v36, v32);
        v41 = sub_1C0F4F890();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v39, 1, v41) == 1)
        {
          sub_1C0EEFAA8(v39, &qword_1EBE77AA8, &qword_1C0F57E20);
        }

        else
        {
          v43 = sub_1C0F4F880();
          v45 = v44;
          (*(v42 + 8))(v39, v41);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = v40;
          sub_1C0F03918(v43, v45, 0x65676175676E616CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
        }

        v47 = sub_1C0F4F9C0();
        v48 = *(v47 - 8);
        v29 = *(v48 + 64);
        MEMORY[0x1EEE9AC00](v47);
        v49 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
        v50 = v128;
        v51 = sub_1C0F4F9B0();
        v52 = v120;
        if (v50)
        {
          return v29;
        }

        v128 = 0;
        v53 = &v104 - v49;
        MEMORY[0x1EEE9AC00](v51);
        (*(v48 + 16))(&v104 - v49, &v104 - v49, v47);
        v54 = v118;
        sub_1C0F4FA20();
        v55 = v116;
        sub_1C0EED570(v54, v116, &qword_1EBE77AA0, &qword_1C0F57E18);
        v57 = v124;
        v56 = v125;
        if ((*(v124 + 48))(v55, 1, v125) == 1)
        {
          v29 = &qword_1EBE77AA0;
          sub_1C0EEFAA8(v55, &qword_1EBE77AA0, &qword_1C0F57E18);
          sub_1C0F0446C();
          swift_allocError();
          *v58 = 0;
          v58[1] = 0;
          swift_willThrow();
          sub_1C0EEFAA8(v54, &qword_1EBE77AA0, &qword_1C0F57E18);
          (*(v48 + 8))(v53, v47);
          return v29;
        }

        v111 = v53;
        v112 = v48;
        v113 = v47;
        v114 = &v104;
        (*(v57 + 32))(v52, v55, v56);
        v59 = v56;
        v60 = [objc_opt_self() processInfo];
        v61 = v57;
        v62 = [v60 processIdentifier];

        v109 = v62;
        v126 = sub_1C0F4FAB0();
        v116 = &v104;
        v119 = *(v126 - 8);
        v63 = *(v119 + 64);
        MEMORY[0x1EEE9AC00](v126);
        v64 = v52;
        v110 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
        v65 = &v104 - v110;
        v66 = v117;
        v67 = *(v117 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_clientName);
        v68 = *(v117 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_clientName + 8);
        strcpy(v127, "accessibility.");
        HIBYTE(v127[1]) = -18;
        MEMORY[0x1C68E9A50](v67, v68);
        v108 = v127[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AB0, &qword_1C0F57E28);
        v69 = *(v61 + 72);
        v70 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1C0F561D0;
        (*(v61 + 16))(v71 + v70, v64, v59);
        v72 = *(v66 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_handleSensitiveData);
        v73 = sub_1C0F4FA10();
        v74 = *(*(v73 - 8) + 64);
        MEMORY[0x1EEE9AC00](v73 - 8);
        sub_1C0F4FA00();
        sub_1C0F4FAA0();
        v108 = sub_1C0F4FD50();
        v109 = &v104;
        v75 = *(v108 - 8);
        v76 = *(v75 + 64);
        v77 = MEMORY[0x1EEE9AC00](v108);
        v107 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
        v105 = &v104 - v107;
        v106 = &v104;
        MEMORY[0x1EEE9AC00](v77);
        v78 = *(v119 + 16);
        v79 = &v104 - v110;
        v110 = v65;
        v78(v79, v65, v126);
        v127[0] = 0xD000000000000061;
        v127[1] = 0x80000001C0F66A10;
        v80 = v121;
        sub_1C0F4F850();
        v81 = sub_1C0F4F840();
        v83 = v82;
        (*(v122 + 8))(v80, v123);
        MEMORY[0x1C68E9A50](v81, v83);

        v122 = v127[1];
        v123 = v127[0];
        v84 = sub_1C0F50070();
        v121 = &v104;
        v85 = *(*(v84 - 8) + 64);
        MEMORY[0x1EEE9AC00](v84 - 8);
        v86 = sub_1C0F50140();
        v87 = *(*(v86 - 8) + 64);
        MEMORY[0x1EEE9AC00](v86);
        (*(v89 + 104))(&v104 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C63F0]);
        v90 = sub_1C0F50120();
        v91 = *(*(v90 - 8) + 64);
        v92 = MEMORY[0x1EEE9AC00](v90 - 8);
        MEMORY[0x1EEE9AC00](v92);
        v93 = v128;
        sub_1C0F50130();
        v128 = v93;
        sub_1C0F50060();
        v94 = v105;
        v95 = v108;
        v96 = sub_1C0F4FD40();
        MEMORY[0x1EEE9AC00](v96);
        (*(v75 + 16))(&v104 - v107, v94, v95);
        v97 = sub_1C0F4FD80();
        v98 = *(v97 + 48);
        v99 = *(v97 + 52);
        v29 = swift_allocObject();
        v100 = sub_1C0F4FD60();
        if (!v100)
        {
          sub_1C0F0446C();
          swift_allocError();
          *v102 = xmmword_1C0F56FB0;
          swift_willThrow();
          (*(v75 + 8))(v94, v95);
          (*(v119 + 8))(v110, v126);
          (*(v124 + 8))(v120, v125);
          sub_1C0EEFAA8(v118, &qword_1EBE77AA0, &qword_1C0F57E18);
          (*(v112 + 8))(v111, v113);
          return v29;
        }

        v29 = v100;
        (*(v75 + 8))(v94, v95);
        (*(v119 + 8))(v110, v126);
        (*(v124 + 8))(v120, v125);
        sub_1C0EEFAA8(v118, &qword_1EBE77AA0, &qword_1C0F57E18);
        (*(v112 + 8))(v111, v113);
        v101 = *(v117 + v115);
        *(v117 + v115) = v29;

LABEL_3:

        return v29;
      }

      if (v31 == 4)
      {
        v36 = v19;
        v38 = 0xD000000000000018;
LABEL_16:
        v119 = v38;
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    v37 = 0xD000000000000040;
LABEL_11:
    v119 = v37;
    v33 = v126;
    v34 = v30;
    v35 = v21;
    v36 = v19;
    goto LABEL_17;
  }

  v32 = v16;
  if (!v31)
  {
    v37 = 0xD00000000000002FLL;
    goto LABEL_11;
  }

  if (v31 == 1)
  {
    v33 = v126;
    v34 = v30;
    v35 = v21;
    v36 = v19;
    v38 = 0xD000000000000033;
    goto LABEL_16;
  }

LABEL_27:
  v127[0] = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_model);
  result = sub_1C0F507A0();
  __break(1u);
  return result;
}

uint64_t sub_1C0F00E90(uint64_t a1)
{
  v2 = sub_1C0F50120();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_systemInstructions);
  v8 = *(a1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_systemInstructions + 8);
  v16[3] = MEMORY[0x1E69E6158];
  v16[4] = MEMORY[0x1E69C6558];
  v16[0] = v9;
  v16[1] = v8;

  v10 = MEMORY[0x1E69C6390];
  sub_1C0F500E0();
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AC0, &qword_1C0F57E38);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0F561D0;
  (*(v4 + 16))(v13 + v12, v7, v2);
  MEMORY[0x1C68E98E0](v13, v2, v10);

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C0F01048(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1C0F4F9E0();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A28, &qword_1C0F57B78) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_1C0F502F0();
  v2[12] = sub_1C0F502E0();
  v8 = sub_1C0F502B0();
  v2[13] = v8;
  v2[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C0F01178, v8, v7);
}

uint64_t sub_1C0F01178()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A30, &qword_1C0F57B80);
  v0[15] = v3;
  v4 = *(v3 - 8);
  v0[16] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v0[17] = v6;
  sub_1C0F0192C(v2, v6);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A38, &unk_1C0F57B88);
  v0[18] = v7;
  v8 = *(v7 - 8);
  v0[19] = v8;
  v9 = *(v8 + 64) + 15;
  v0[20] = swift_task_alloc();
  sub_1C0F4F9F0();
  v10 = v0[11];
  v0[21] = sub_1C0F502E0();
  v11 = sub_1C0F043F4();
  v12 = *(MEMORY[0x1E69E85A8] + 4);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_1C0F013AC;
  v14 = v0[20];
  v15 = v0[18];
  v16 = v0[10];

  return MEMORY[0x1EEE6D8C8](v16, v15, v11);
}

uint64_t sub_1C0F013AC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  v2[23] = v0;

  v5 = v2[21];
  if (v0)
  {
    v6 = v2[3];

    if (v5)
    {
      v7 = v2[21];
      swift_getObjectType();
      v8 = sub_1C0F502B0();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = sub_1C0F017BC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v8 = sub_1C0F502B0();
      v10 = v12;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = sub_1C0F0154C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v8, v10);
}

uint64_t sub_1C0F0154C()
{
  v1 = v0[21];

  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1C0F015B0, v2, v3);
}

uint64_t sub_1C0F015B0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[19];
    v4 = v0[20];
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[12];
    v11 = v0[9];

    (*(v5 + 8))(v4, v6);
    (*(v9 + 8))(v7, v8);

    v12 = v0[2];
    v13 = v0[3];

    v14 = v0[1];

    return v14(v12, v13);
  }

  else
  {
    v16 = v0[9];
    (*(v3 + 32))(v16, v1, v2);
    v17 = sub_1C0F4F9D0();
    MEMORY[0x1C68E9A50](v17);

    (*(v3 + 8))(v16, v2);
    v18 = v0[11];
    v0[21] = sub_1C0F502E0();
    v19 = sub_1C0F043F4();
    v20 = *(MEMORY[0x1E69E85A8] + 4);
    v21 = swift_task_alloc();
    v0[22] = v21;
    *v21 = v0;
    v21[1] = sub_1C0F013AC;
    v22 = v0[20];
    v23 = v0[18];
    v24 = v0[10];

    return MEMORY[0x1EEE6D8C8](v24, v23, v19);
  }
}

uint64_t sub_1C0F017BC()
{
  v1 = v0[21];
  v0[4] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B0, &qword_1C0F56AE0);
  swift_willThrowTypedImpl();

  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1C0F01858, v2, v3);
}

uint64_t sub_1C0F01858()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[12];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);

  v8 = v0[23];
  v9 = v0[17];
  v11 = v0[9];
  v10 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1C0F0192C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C0F50090();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0F021E8(a1, v9);
  v10 = sub_1C0EFFFF0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v56 = v10;
  v58 = sub_1C0F4FC10();
  v59 = &v44;
  v57 = *(v58 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v54 = v6;
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C0F4FBF0();
  v52 = &v44;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = v5;
  v16 = sub_1C0F4FBD0();
  v51 = &v44;
  v17 = *(v16 - 8);
  v60 = 0;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v48 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A48, &qword_1C0F57B98);
  v19 = *(sub_1C0F4FBC0() - 8);
  v20 = *(v19 + 72);
  v21 = *(v19 + 80);
  v22 = swift_allocObject();
  v46 = xmmword_1C0F561D0;
  *(v22 + 16) = xmmword_1C0F561D0;
  sub_1C0F4FBB0();
  sub_1C0F4FBA0();
  sub_1C0F4FBE0();
  sub_1C0F4FC00();
  v51 = sub_1C0F4FB90();
  v52 = &v44;
  v49 = *(v51 - 1);
  v23 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v45 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C0F4FB70();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  MEMORY[0x1EEE9AC00](v27);
  *(swift_allocObject() + 16) = v46;
  sub_1C0F4FBB0();
  sub_1C0F4FBA0();
  sub_1C0F4FB60();
  v28 = sub_1C0F4FB80();
  v48 = &v44;
  MEMORY[0x1EEE9AC00](v28);
  *&v46 = &v40;
  v42 = v9;
  v47 = sub_1C0F4FA90();
  v29 = *(v47 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A50, &qword_1C0F57BA0);
  v44 = &v44;
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1C0F4FA40();
  v37 = (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C0EED570(v35, v35, &qword_1EBE77A50, &qword_1C0F57BA0);
  v43 = 1;
  v42 = 0;
  v41 = 1;
  v40 = 0;
  sub_1C0F4FA80();
  sub_1C0F4FA70();
  sub_1C0F4FA50();
  sub_1C0F4FA60();
  sub_1C0EEFAA8(v35, &qword_1EBE77A50, &qword_1C0F57BA0);
  v38 = v45;
  v39 = v50;
  sub_1C0F4FD70();

  (*(v29 + 8))(v32, v47);
  (*(v49 + 8))(v38, v51);
  (*(v57 + 8))(v39, v58);
  return (*(v54 + 8))(v9, v55);
}

uint64_t sub_1C0F02060()
{
  v0 = sub_1C0F50090();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0F500C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A98, &qword_1C0F57E10);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0F561D0;
  (*(v2 + 16))(v8 + v7, v5, v0);
  MEMORY[0x1C68E98C0](v8);

  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_1C0F021D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession);
  *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession) = 0;
}

uint64_t sub_1C0F021E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = type metadata accessor for AXLLMInput(0);
  v4 = *(v112 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v7 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a2;
  result = sub_1C0F500A0();
  v116 = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v109 = *(v4 + 72);
    v110 = v7;
    do
    {
      sub_1C0F04CCC(v10, v7);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v117 = sub_1C0F50140();
      v14 = *(v117 - 8);
      v15 = *(v14 + 64);
      v114 = v10;
      v115 = v9;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AD0, &qword_1C0F57E48);
          v113 = v101;
          v17 = &v7[*(v16 + 48)];
          v19 = *v17;
          v18 = *(v17 + 1);
          MEMORY[0x1EEE9AC00](v16);
          v107 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
          v20 = v101 - v107;
          (*(v14 + 32))(v101 - v107, v7, v117);
          v21 = sub_1C0F50120();
          v106 = v101;
          v108 = *(v21 - 8);
          v22 = *(v108 + 64);
          v23 = MEMORY[0x1EEE9AC00](v21);
          v105 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
          v24 = v14;
          v25 = (v101 - v105);
          MEMORY[0x1EEE9AC00](v23);
          v101[-2] = v19;
          v101[-1] = v18;
          v26 = v116;
          sub_1C0F50130();
          v116 = v26;

          v102 = sub_1C0F50070();
          v103 = v101;
          v27 = *(v102 - 8);
          v28 = *(v27 + 64);
          v29 = MEMORY[0x1EEE9AC00](v102);
          v31 = v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
          MEMORY[0x1EEE9AC00](v29);
          v32 = *(v24 + 16);
          v33 = v101 - v107;
          v107 = v20;
          v34 = v32(v33, v20, v117);
          MEMORY[0x1EEE9AC00](v34);
          v35 = *(v108 + 16);
          v36 = (v101 - v105);
          v104 = v25;
          v105 = v21;
          v35(v36, v25, v21);
          sub_1C0F50060();
          v37 = sub_1C0F50080();
          v39 = v38;
          v40 = *v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v39 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = sub_1C0F22560(0, v40[2] + 1, 1, v40);
            *v39 = v40;
          }

          v43 = v40[2];
          v42 = v40[3];
          if (v43 >= v42 >> 1)
          {
            v40 = sub_1C0F22560(v42 > 1, v43 + 1, 1, v40);
            *v39 = v40;
          }

          v40[2] = v43 + 1;
          (*(v27 + 32))(v40 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v43, v31, v102);
          v37(v118, 0);
          (*(v108 + 8))(v104, v105);
          result = (*(v24 + 8))(v107, v117);
        }

        else
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AC8, &qword_1C0F57E40);
          v113 = v101;
          v73 = &v7[*(v72 + 48)];
          v74 = *v73;
          v75 = v73[1];
          MEMORY[0x1EEE9AC00](v72);
          v107 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
          v76 = v101 - v107;
          (*(v14 + 32))(v101 - v107, v7, v117);
          v77 = v14;
          v78 = sub_1C0F50120();
          v104 = v101;
          v108 = *(v78 - 8);
          v79 = *(v108 + 64);
          v80 = MEMORY[0x1EEE9AC00](v78);
          v103 = ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
          v81 = (v101 - v103);
          MEMORY[0x1EEE9AC00](v80);
          v105 = v75;
          v106 = v74;
          v101[-2] = v74;
          v101[-1] = v75;
          v82 = v116;
          sub_1C0F50130();
          v116 = v82;
          v83 = sub_1C0F50070();
          v101[1] = v101;
          v101[0] = v83;
          v84 = *(v83 - 8);
          v85 = *(v84 + 64);
          v86 = MEMORY[0x1EEE9AC00](v83);
          v88 = v101 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
          MEMORY[0x1EEE9AC00](v86);
          v89 = *(v77 + 16);
          v90 = v101 - v107;
          v107 = v76;
          v91 = v89(v90, v76, v117);
          MEMORY[0x1EEE9AC00](v91);
          v92 = *(v108 + 16);
          v93 = (v101 - v103);
          v102 = v81;
          v103 = v78;
          v92(v93, v81, v78);
          sub_1C0F50060();
          v94 = sub_1C0F50080();
          v96 = v95;
          v97 = *v95;
          v98 = swift_isUniquelyReferenced_nonNull_native();
          *v96 = v97;
          if ((v98 & 1) == 0)
          {
            v97 = sub_1C0F22560(0, v97[2] + 1, 1, v97);
            *v96 = v97;
          }

          v100 = v97[2];
          v99 = v97[3];
          if (v100 >= v99 >> 1)
          {
            v97 = sub_1C0F22560(v99 > 1, v100 + 1, 1, v97);
            *v96 = v97;
          }

          v97[2] = v100 + 1;
          (*(v84 + 32))(v97 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v100, v88, v101[0]);
          v94(v118, 0);
          sub_1C0EFED6C(v106, v105);
          (*(v108 + 8))(v102, v103);
          result = (*(v77 + 8))(v107, v117);
        }

        v12 = v114;
        v11 = v115;
      }

      else
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AD0, &qword_1C0F57E48);
        v113 = v101;
        v45 = &v7[*(v44 + 48)];
        v47 = *v45;
        v46 = *(v45 + 1);
        MEMORY[0x1EEE9AC00](v44);
        v106 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        v48 = (v101 - v106);
        v49 = v117;
        (*(v14 + 32))(v101 - v106, v7, v117);
        v50 = sub_1C0F50120();
        v105 = v101;
        v107 = *(v50 - 8);
        v108 = v50;
        v51 = *(v107 + 64);
        v52 = MEMORY[0x1EEE9AC00](v50);
        v104 = ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        v53 = (v101 - v104);
        MEMORY[0x1EEE9AC00](v52);
        v101[-2] = v47;
        v101[-1] = v46;
        v54 = v116;
        sub_1C0F50130();
        v116 = v54;

        v102 = sub_1C0F50070();
        v103 = v101;
        v55 = *(v102 - 8);
        v56 = *(v55 + 64);
        v57 = MEMORY[0x1EEE9AC00](v102);
        v59 = v101 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v57);
        v60 = *(v14 + 16);
        v61 = (v101 - v106);
        v106 = v48;
        v62 = v60(v61, v48, v49);
        MEMORY[0x1EEE9AC00](v62);
        v63 = *(v107 + 16);
        v64 = (v101 - v104);
        v104 = v53;
        v63(v64, v53, v108);
        sub_1C0F50060();
        v65 = sub_1C0F50080();
        v67 = v66;
        v68 = *v66;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *v67 = v68;
        if ((v69 & 1) == 0)
        {
          v68 = sub_1C0F22560(0, v68[2] + 1, 1, v68);
          *v67 = v68;
        }

        v71 = v68[2];
        v70 = v68[3];
        if (v71 >= v70 >> 1)
        {
          v68 = sub_1C0F22560(v70 > 1, v71 + 1, 1, v68);
          *v67 = v68;
        }

        v12 = v114;
        v11 = v115;
        v68[2] = v71 + 1;
        (*(v55 + 32))(v68 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v71, v59, v102);
        v65(v118, 0);
        (*(v107 + 8))(v104, v108);
        result = (*(v14 + 8))(v106, v117);
      }

      v7 = v110;
      v10 = v12 + v109;
      v9 = v11 - 1;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1C0F02E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0F50120();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = MEMORY[0x1E69E6158];
  v16[4] = MEMORY[0x1E69C6558];
  v16[0] = a1;
  v16[1] = a2;

  v10 = MEMORY[0x1E69C6390];
  sub_1C0F500E0();
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AC0, &qword_1C0F57E38);
  v11 = *(v5 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0F561D0;
  (*(v6 + 16))(v13 + v12, v9, v4);
  MEMORY[0x1C68E98E0](v13, v4, v10);

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C0F03030(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C0F50120();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = &type metadata for PromptImage;
  v16[4] = sub_1C0F04D68();
  v16[0] = a1;
  v16[1] = a2;
  sub_1C0F04DBC(a1, a2);
  v10 = MEMORY[0x1E69C6390];
  sub_1C0F500E0();
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AC0, &qword_1C0F57E38);
  v11 = *(v5 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0F561D0;
  (*(v6 + 16))(v13 + v12, v9, v4);
  MEMORY[0x1C68E98E0](v13, v4, v10);

  return (*(v6 + 8))(v9, v4);
}

id AXLLMManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXLLMManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLLMManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0F0335C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0F033F4;

  return sub_1C0F01048(a1);
}

uint64_t sub_1C0F033F4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1C0F03528@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1C0F500F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C6218]);
  sub_1C0F04DBC(v4, v3);
  sub_1C0F50110();
  v9 = *MEMORY[0x1E69C6330];
  v10 = sub_1C0F50100();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_1C0F03658(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AB8, &qword_1C0F57E30);
  v40 = a2;
  result = sub_1C0F50640();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1C0F50850();
      sub_1C0F50200();
      result = sub_1C0F50890();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C0F03918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C0EFA930(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C0F03658(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1C0EFA930(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1C0F507C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C0F03AA0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_1C0F03AA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AB8, &qword_1C0F57E30);
  v2 = *v0;
  v3 = sub_1C0F50630();
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

unint64_t sub_1C0F03C18(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C0F03C48()
{
  v0 = sub_1C0F4F920();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C0F4F940();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AA8, &qword_1C0F57E20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v53 - v12;
  sub_1C0F4F900();
  sub_1C0F4F930();
  (*(v6 + 8))(v9, v5);
  sub_1C0F4F910();
  (*(v1 + 8))(v4, v0);
  v14 = sub_1C0F4F890();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C0EEFAA8(v13, &qword_1EBE77AA8, &qword_1C0F57E20);
    v16 = 0;
  }

  else
  {
    sub_1C0F4F880();

    (*(v15 + 8))(v13, v14);
    v57 = sub_1C0F4FAF0();
    v58 = &v53;
    v17 = *(v57 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x1EEE9AC00](v57);
    v56 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = (&v53 - v56);
    v54 = sub_1C0F4FB50();
    v55 = &v53;
    v20 = *(v54 - 1);
    v21 = *(v20 + 64);
    MEMORY[0x1EEE9AC00](v54);
    v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = sub_1C0F4FB10();
    v53 = &v53;
    v25 = *(v24 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x1EEE9AC00](v24);
    v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = sub_1C0F4FB30();
    v30 = *(*(v29 - 8) + 64);
    MEMORY[0x1EEE9AC00](v29);
    (*(v32 + 104))(&v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69A12A8]);
    sub_1C0F4FB00();
    sub_1C0F4FB40();
    (*(v25 + 8))(v28, v24);
    sub_1C0F4FB20();
    v33 = (*(v20 + 8))(v23, v54);
    v34 = v57;
    MEMORY[0x1EEE9AC00](v33);
    v35 = (&v53 - v56);
    (*(v17 + 16))(&v53 - v56, v19, v34);
    v36 = (*(v17 + 88))(v35, v34);
    if (MEMORY[0x1E69A0F08] && v36 == *MEMORY[0x1E69A0F08])
    {
      (*(v17 + 96))(v35, v34);
      v37 = sub_1C0F4FAE0();
      v55 = v19;
      v56 = &v53;
      v38 = *(v37 - 8);
      v39 = *(v38 + 64);
      MEMORY[0x1EEE9AC00](v37);
      v41 = &v53 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 32))(v41, v35, v37);
      v42 = sub_1C0F4FAD0();
      v43 = sub_1C0F4FAC0();
      v54 = &v53;
      v44 = v43;
      v53 = &v53;
      v45 = v34;
      v46 = *(v43 - 8);
      v47 = *(v46 + 64);
      MEMORY[0x1EEE9AC00](v43);
      v49 = &v53 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 104))(v49, *MEMORY[0x1E69A1080], v44);
      v50 = sub_1C0EFFE38(v49, v42);

      (*(v46 + 8))(v49, v44);
      (*(v38 + 8))(v41, v37);
      (*(v17 + 8))(v55, v45);
      v16 = v50 ^ 1;
    }

    else
    {
      v51 = *(v17 + 8);
      v51(v19, v34);
      v51(v35, v34);
      v16 = 1;
    }
  }

  return v16 & 1;
}

unint64_t sub_1C0F043F4()
{
  result = qword_1EBE77A40;
  if (!qword_1EBE77A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77A38, &unk_1C0F57B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77A40);
  }

  return result;
}

unint64_t sub_1C0F0446C()
{
  result = qword_1EBE77A58;
  if (!qword_1EBE77A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77A58);
  }

  return result;
}

unint64_t sub_1C0F044C4()
{
  result = qword_1EBE77A60;
  if (!qword_1EBE77A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77A60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AccessibilitySharedSupport10AXLLMErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C0F0453C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0F04590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C0F045EC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1C0F0463C()
{
  sub_1C0F046D0(319, &qword_1EBE77A78);
  if (v0 <= 0x3F)
  {
    sub_1C0F046D0(319, &qword_1EBE77A80);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C0F046D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1C0F50140();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t dispatch thunk of AXLLMManagerProtocol.ask(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0F04F38;

  return v11(a1, a2, a3);
}

{
  return (*(a3 + 24))();
}

uint64_t sub_1C0F048B4()
{
  result = sub_1C0F4F940();
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

uint64_t dispatch thunk of AXLLMManager.ask(inputs:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x188);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C0F04B18;

  return v8(a1);
}

uint64_t sub_1C0F04B18(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1C0F04CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLLMInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0F04D68()
{
  result = qword_1EBE77AD8;
  if (!qword_1EBE77AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77AD8);
  }

  return result;
}

uint64_t sub_1C0F04DBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C0F04E10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C0F4FAC0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C0F04E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0F04EC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t AccessibilityResolvedAction.identifier.getter(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1C0F501D0();
}

id _s26AccessibilitySharedSupport0A14ResolvedActionPAAE6bundleSo8NSBundleCvg_0()
{
  v0 = AXSystemRootDirectory();
  sub_1C0F501B0();

  v6 = sub_1C0F50270();
  v7 = v1;
  sub_1C0F50230();
  v2 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v3 = sub_1C0F501A0();

  v4 = [v2 initWithPath_];

  result = v4;
  if (!v4)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AAE8]) init];
  }

  return result;
}

uint64_t sub_1C0F05170(char a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 56))(a2, a3);
  (*(a3 + 24))(a2, a3);
  if (a1)
  {

    MEMORY[0x1C68E9A50](0x49575F4C4C55465FLL, 0xEB00000000485444);
  }

  v7 = sub_1C0F501A0();

  (*(a3 + 48))(a2, a3);
  v8 = sub_1C0F501A0();

  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_1C0F501B0();
  return v10;
}

uint64_t sub_1C0F052E4()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_1C0F501D0();
}

uint64_t sub_1C0F053C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1C0F079F0(a3, v24 - v10);
  v12 = sub_1C0F50320();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C0EEFAA8(v11, &qword_1EBE773B0, &qword_1C0F57F40);
  }

  else
  {
    sub_1C0F50310();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C0F502B0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C0F501E0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t AccessibilityActionManager.__allocating_init(client:domains:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccessibilityActionManager.init(client:domains:)(a1, a2);
  return v4;
}

void *AccessibilityActionManager.init(client:domains:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v11 = *a1;
  v10 = a1[1];
  swift_defaultActor_initialize();
  v3[14] = v11;
  v3[15] = v10;
  type metadata accessor for AccessibilityActionSender();
  v12 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_defaultActor_initialize();
  v12[18] = 0;
  swift_unknownObjectWeakInit();
  v12[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
  v12[15] = v11;
  v12[16] = v10;
  v3[16] = v12;
  v16[0] = v11;
  v16[1] = v10;
  type metadata accessor for AccessibilityActionReceiver();
  swift_allocObject();

  v3[17] = sub_1C0F0A6A8(v16, a2, v12);
  v13 = sub_1C0F50320();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;

  sub_1C0ED943C(0, 0, v9, &unk_1C0F57F50, v14);

  return v3;
}

void *AccessibilityActionSender.__allocating_init(client:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v4 = *a1;
  v3 = a1[1];
  swift_defaultActor_initialize();
  v2[18] = 0;
  swift_unknownObjectWeakInit();
  v2[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
  v2[15] = v4;
  v2[16] = v3;
  return v2;
}

uint64_t sub_1C0F05948()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C0F0596C, v1, 0);
}

uint64_t sub_1C0F0596C()
{
  v2 = v0[2];
  v1 = v0[3];
  *(v1 + 144) = sub_1C0F07A60(&qword_1EBE77B08, type metadata accessor for AccessibilityActionManager);
  swift_unknownObjectWeakAssign();
  v3 = v0[1];

  return v3();
}

void *AccessibilityActionManager.deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AccessibilityActionManager.__deallocating_deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C0F05A8C(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0F05AB0, v2, 0);
}

uint64_t sub_1C0F05AB0()
{
  sub_1C0F2694C(*(v0 + 288), v0 + 16);
  v1 = *(v0 + 16);
  *(v0 + 81) = v1;
  v2 = *(v0 + 17);
  *(v0 + 177) = v2;
  *(v0 + 82) = *(v0 + 18);
  *(v0 + 96) = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v0 + 312) = v3;
  *(v0 + 256) = *(v0 + 56);
  *(v0 + 265) = *(v0 + 65);
  if (v3 != 1)
  {
    v4 = *(*(v0 + 304) + 136);
    *(v0 + 320) = v4;
    if (v2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (sub_1C0F07AAC(v5 & 0xFE | ((v1 & 0x20) != 0), *(v4 + 128)))
    {
      *(v0 + 112) = v1;
      *(v0 + 113) = v2;
      *(v0 + 114) = *(v0 + 18);
      *(v0 + 128) = *(v0 + 32);
      *(v0 + 144) = v3;
      *(v0 + 152) = *(v0 + 56);
      *(v0 + 161) = *(v0 + 65);
      v6 = swift_task_alloc();
      *(v0 + 328) = v6;
      *v6 = v0;
      v6[1] = sub_1C0F05C5C;

      return sub_1C0F08DB8(v0 + 112);
    }

    sub_1C0EEFAA8(v0 + 16, &qword_1EBE77B00, &qword_1C0F58190);
  }

  [*(v0 + 296) sendEvent_];
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C0F05C5C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F05D6C, v2, 0);
}

uint64_t sub_1C0F05D6C()
{
  v14 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 177);
  v10[0] = *(v0 + 81);
  v10[1] = v3;
  *v11 = *(v0 + 82);
  *&v11[14] = *(v0 + 96);
  v12 = v1;
  v13[0] = *(v0 + 256);
  *(v13 + 9) = *(v0 + 265);
  if (sub_1C0F0946C(v10))
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 177);
    *(v0 + 184) = *(v0 + 81);
    *(v0 + 185) = v5;
    *(v0 + 186) = *(v0 + 82);
    *(v0 + 200) = *(v0 + 96);
    *(v0 + 216) = v4;
    *(v0 + 224) = *(v0 + 256);
    *(v0 + 233) = *(v0 + 265);
    v6 = swift_task_alloc();
    *(v0 + 336) = v6;
    *v6 = v0;
    v6[1] = sub_1C0F05ED8;
    v7 = *(v0 + 320);

    return sub_1C0F09638(v0 + 184);
  }

  else
  {
    sub_1C0EEFAA8(v0 + 16, &qword_1EBE77B00, &qword_1C0F58190);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1C0F05ED8()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v5 = *v0;

  sub_1C0EEFAA8(v1 + 16, &qword_1EBE77B00, &qword_1C0F58190);
  v3 = *(v5 + 8);

  return v3();
}

void *AccessibilityActionSender.init(client:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_defaultActor_initialize();
  v1[18] = 0;
  swift_unknownObjectWeakInit();
  v1[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
  v1[15] = v2;
  v1[16] = v3;
  return v1;
}

uint64_t sub_1C0F06048(_BYTE *a1, _OWORD *a2)
{
  *(v3 + 104) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 83) = *a1;
  *(v3 + 84) = a1[1];
  *(v3 + 120) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0610C, v2, 0);
}

void sub_1C0F0610C()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 83);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0xFFFFFFFE | (v2 >> 5) & 1) == 1)
  {
    *(v0 + 81) = v2;
    *(v0 + 82) = v1;
    *(v0 + 88) = *(v0 + 120);
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_1C0F0637C;
    v5 = *(v0 + 104);

    sub_1C0F06778((v0 + 81), 1, (v0 + 88));
    return;
  }

  v6 = qword_1EBE8FBE0;
  if (__OFADD__(qword_1EBE8FBE0, 1))
  {
    __break(1u);
    return;
  }

  v7 = *(v0 + 120);
  v8 = *(*(v0 + 104) + 120);
  ++qword_1EBE8FBE0;
  *(v0 + 16) = v2;
  *(v0 + 17) = v1;
  *(v0 + 24) = v6;
  *(v0 + 32) = 0;
  *(v0 + 56) = v7;
  *(v0 + 40) = v8;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v18 = *(v0 + 48);
  v19 = *(v0 + 64);
  LOBYTE(v20) = *(v0 + 80);
  v16 = *(v0 + 16);
  v17 = *(v0 + 32);
  sub_1C0F072F4(v7, *(&v7 + 1));

  v9 = sub_1C0F26DD8();
  *(v0 + 144) = v9;
  sub_1C0F07308(v0 + 16);
  if (v9)
  {
    v10 = *(v0 + 104);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 152) = Strong;
    v12 = *(v10 + 112);
    if (Strong)
    {
      v13 = swift_task_alloc();
      *(v0 + 160) = v13;
      *v13 = v0;
      v13[1] = sub_1C0F065FC;

      sub_1C0F05A8C(v9, v12);
      return;
    }

    [v12 sendEvent_];
  }

  v14 = *(v0 + 112);

  v15 = *(v0 + 8);

  v15();
}

uint64_t sub_1C0F0637C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0648C, v2, 0);
}

uint64_t sub_1C0F0648C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 84);
  v4 = *(v0 + 83);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = sub_1C0F50320();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1C0F07A60(&qword_1EBE77AF0, type metadata accessor for AccessibilityActionSender);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 41) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v1;
  swift_retain_n();
  sub_1C0F072F4(v2, v1);
  sub_1C0F053C4(0, 0, v5, &unk_1C0F57F78, v9);

  v10 = *(v0 + 112);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1C0F065FC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0670C, v2, 0);
}

uint64_t sub_1C0F0670C()
{
  v2 = v0[18];
  v1 = v0[19];
  swift_unknownObjectRelease();

  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C0F06778(_BYTE *a1, char a2, _OWORD *a3)
{
  *(v4 + 88) = v3;
  *(v4 + 82) = a2;
  *(v4 + 83) = *a1;
  *(v4 + 84) = a1[1];
  *(v4 + 96) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1C0F067B4, v3, 0);
}

void sub_1C0F067B4()
{
  v1 = qword_1EBE8FBE0;
  if (__OFADD__(qword_1EBE8FBE0, 1))
  {
    __break(1u);
    return;
  }

  v12 = *(v0 + 96);
  v2 = *(v0 + 84);
  v3 = *(v0 + 83);
  v4 = *(v0 + 82);
  v5 = *(*(v0 + 88) + 120);
  ++qword_1EBE8FBE0;
  *(v0 + 81) = v2;
  *(v0 + 16) = v3;
  *(v0 + 17) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v4;
  *(v0 + 56) = v12;
  *(v0 + 40) = v5;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v15 = *(v0 + 48);
  v16 = *(v0 + 64);
  v17 = *(v0 + 80);
  v13 = *(v0 + 16);
  v14 = *(v0 + 32);

  sub_1C0F072F4(v12, *(&v12 + 1));
  v6 = sub_1C0F26DD8();
  *(v0 + 112) = v6;
  sub_1C0F07308(v0 + 16);
  if (v6)
  {
    v7 = *(v0 + 88);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 120) = Strong;
    v9 = *(v7 + 112);
    if (Strong)
    {
      v10 = swift_task_alloc();
      *(v0 + 128) = v10;
      *v10 = v0;
      v10[1] = sub_1C0F0697C;

      sub_1C0F05A8C(v6, v9);
      return;
    }

    [v9 sendEvent_];
  }

  v11 = *(v0 + 8);

  v11();
}

uint64_t sub_1C0F0697C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F06A8C, v2, 0);
}

uint64_t sub_1C0F06A8C()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C0F06AF0(char *a1, uint64_t *a2)
{
  *(v3 + 32) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v3 + 74) = *a1;
  v9 = a1[1];
  *(v3 + 75) = v9;
  v10 = *a2;
  v11 = a2[1];
  *(v3 + 40) = v7;
  *(v3 + 48) = v10;
  *(v3 + 56) = v11;
  *(v3 + 72) = v8;
  *(v3 + 73) = v9;
  *(v3 + 16) = v10;
  *(v3 + 24) = v11;
  v12 = swift_task_alloc();
  *(v3 + 64) = v12;
  *v12 = v3;
  v12[1] = sub_1C0F06C04;

  return sub_1C0F06778((v3 + 72), 1, (v3 + 16));
}

uint64_t sub_1C0F06C04()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F06D14, v2, 0);
}

uint64_t sub_1C0F06D14()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 75);
  v4 = *(v0 + 74);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = sub_1C0F50320();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1C0F07A60(&qword_1EBE77AF0, type metadata accessor for AccessibilityActionSender);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 41) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v1;
  swift_retain_n();
  sub_1C0F072F4(v2, v1);
  sub_1C0F053C4(0, 0, v5, &unk_1C0F57F88, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C0F06E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 72) = a5;
  *(v7 + 32) = a4;
  v8 = *(MEMORY[0x1E69E86C8] + 4);
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *v9 = v7;
  v9[1] = sub_1C0F06F28;

  return MEMORY[0x1EEE6DA60](100000000);
}

uint64_t sub_1C0F06F28()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    *(v2 + 16) = *(v2 + 40);
    v7 = v2 + 16;
    v8 = *(v7 + 56);
    *(v7 + 58) = v8;
    *(v7 + 59) = HIBYTE(v8) & 1;
    v9 = swift_task_alloc();
    *(v7 + 48) = v9;
    *v9 = v4;
    v9[1] = sub_1C0F070BC;
    v10 = *(v7 + 16);

    return sub_1C0F06778((v7 + 58), 0, v7);
  }
}

uint64_t sub_1C0F070BC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AccessibilityActionSender.deinit()
{
  v1 = *(v0 + 128);

  sub_1C0F0756C(v0 + 136);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AccessibilityActionSender.__deallocating_deinit()
{
  v1 = *(v0 + 128);

  sub_1C0F0756C(v0 + 136);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C0F07240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEFCF4;

  return sub_1C0F05928(a1, v4, v5, v6);
}

uint64_t sub_1C0F072F4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C0F0735C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 41) << 8);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C0EEFCF4;

  return sub_1C0F06E84(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  if (v0[7] != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C0F0748C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 41) << 8);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C0EEF864;

  return sub_1C0F06E84(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C0F07594(uint64_t a1)
{
  result = sub_1C0F07A60(&qword_1EBE77AF8, type metadata accessor for AccessibilityActionManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of AccessibilityActionSender.sendAction(_:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C0EEFCF4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AccessibilityActionSender.sendAction(_:isDown:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C0EEFCF4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityActionSender.sendDeviceAction(_:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C0EEF864;

  return v10(a1, a2);
}

uint64_t sub_1C0F079F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0F07A60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1C0F07AAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1C0F07ADC()
{
  v1 = v0;
  v2 = sub_1C0F504B0();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C0F504A0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1C0F50010();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69A2950]) initWithType_];
  v21[1] = sub_1C0F080D4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  aBlock = 0;
  v25 = 0xE000000000000000;
  sub_1C0F505A0();
  MEMORY[0x1C68E9A50](0xD00000000000003ALL, 0x80000001C0F66CD0);
  v30 = qword_1EBE8FBD8;
  v10 = sub_1C0F50780();
  MEMORY[0x1C68E9A50](v10);

  sub_1C0F50000();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C0F08120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B18, &unk_1C0F58180);
  sub_1C0F08178();
  sub_1C0F50530();
  (*(v22 + 104))(v5, *MEMORY[0x1E69E8090], v23);
  result = sub_1C0F504E0();
  *(v0 + 24) = result;
  if (__OFADD__(qword_1EBE8FBD8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EBE8FBD8;
    [*(v0 + 16) setDispatchQueue_];
    v12 = *(v0 + 16);
    if (!v12)
    {
      goto LABEL_5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D8, &qword_1C0F574C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C0F58110;
    *(inited + 32) = 0x7355656369766544;
    *(inited + 40) = 0xEF65676150656761;
    *(inited + 48) = 65280;
    v14 = MEMORY[0x1E69E6530];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = 0x7355656369766544;
    *(inited + 88) = 0xEB00000000656761;
    *(inited + 96) = 34;
    *(inited + 120) = v14;
    *(inited + 128) = 0x4449726F646E6556;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 10000;
    *(inited + 168) = v14;
    *(inited + 176) = 0x49746375646F7250;
    *(inited + 184) = 0xE900000000000044;
    *(inited + 192) = 10000;
    *(inited + 216) = v14;
    *(inited + 224) = 0x6E492D746C697542;
    *(inited + 232) = 0xE800000000000000;
    *(inited + 264) = MEMORY[0x1E69E6370];
    *(inited + 240) = 1;
    v15 = v12;
    sub_1C0F22A2C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E0, &unk_1C0F574D0);
    swift_arrayDestroy();
    v16 = sub_1C0F50150();

    [v15 setMatching_];

    v17 = *(v1 + 16);
    if (v17)
    {
      v28 = sub_1C0F081DC;
      v29 = v1;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1C0F07FDC;
      v27 = &block_descriptor_0;
      v18 = _Block_copy(&aBlock);
      v19 = v17;

      [v19 setEventFilterHandler_];
      _Block_release(v18);

      v20 = *(v1 + 16);
    }

    else
    {
LABEL_5:
      v20 = 0;
    }

    [v20 activate];
    return v1;
  }

  return result;
}

uint64_t sub_1C0F07FDC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = a3;
  LOBYTE(a2) = v6(a2, v8);

  return a2 & 1;
}

uint64_t sub_1C0F08058()
{
  [*(v0 + 16) cancel];

  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1C0F080D4()
{
  result = qword_1EBE77690;
  if (!qword_1EBE77690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE77690);
  }

  return result;
}

unint64_t sub_1C0F08120()
{
  result = qword_1EBE77B10;
  if (!qword_1EBE77B10)
  {
    sub_1C0F504A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77B10);
  }

  return result;
}

unint64_t sub_1C0F08178()
{
  result = qword_1EBE77B20;
  if (!qword_1EBE77B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77B18, &unk_1C0F58180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77B20);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0F081FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0F08220, 0, 0);
}

uint64_t sub_1C0F08220()
{
  v1 = *(*(v0 + 96) + 32);
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = *(v0 + 104);
    *(v0 + 16) = *v2;
    v4 = *(v2 + 32);
    v3 = *(v2 + 48);
    v5 = *(v2 + 16);
    *(v0 + 80) = *(v2 + 64);
    *(v0 + 48) = v4;
    *(v0 + 64) = v3;
    *(v0 + 32) = v5;
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_1C0F08330;

    return sub_1C0F08DB8(v0 + 16);
  }

  else
  {
    **(v0 + 88) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1C0F08330()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F08DB4, 0, 0);
}

uint64_t sub_1C0F08448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0F0846C, 0, 0);
}

uint64_t sub_1C0F0846C()
{
  v1 = *(*(v0 + 96) + 32);
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = *(v0 + 104);
    *(v0 + 16) = *v2;
    v4 = *(v2 + 32);
    v3 = *(v2 + 48);
    v5 = *(v2 + 16);
    *(v0 + 80) = *(v2 + 64);
    *(v0 + 48) = v4;
    *(v0 + 64) = v3;
    *(v0 + 32) = v5;
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_1C0F0857C;

    return sub_1C0F09638(v0 + 16);
  }

  else
  {
    **(v0 + 88) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1C0F0857C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F08694, 0, 0);
}

uint64_t sub_1C0F086BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - v5;
  sub_1C0F2694C(a1, &v41);
  v7 = v44;
  if (v44 != 1)
  {
    v8 = v41;
    v9 = v42;
    v40[0] = *v43;
    *(v40 + 14) = *&v43[14];
    v39[0] = *v45;
    *(v39 + 9) = *&v45[9];
    v10 = *(v1 + 32);
    if (v10)
    {
      v11 = *(v10 + 128);
      if (v42)
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12 & 0xFFFFFFFE | (v41 >> 5) & 1;
      v14 = *(v11 + 16);
      v15 = (v11 + 32);
      while (v14)
      {
        v16 = *v15++;
        --v14;
        if (v16 == v13)
        {
          v17 = sub_1C0F50320();
          v18 = *(*(v17 - 8) + 56);
          v18(v6, 1, 1, v17);
          v19 = swift_allocObject();
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          *(v19 + 32) = v1;
          *(v19 + 40) = v8;
          *(v19 + 41) = v9;
          *(v19 + 42) = v40[0];
          *(v19 + 56) = *(v40 + 14);
          *(v19 + 72) = v7;
          *(v19 + 80) = v39[0];
          *(v19 + 89) = *(v39 + 9);

          sub_1C0F08C2C(&v41, v35);
          sub_1C0ED973C(0, 0, v6, &unk_1C0F581A0, v19);

          if (!*(v1 + 32))
          {
            break;
          }

          v33 = v1;
          v35[0] = v8;
          v35[1] = v9;
          *v36 = v40[0];
          *&v36[14] = *(v40 + 14);
          v37 = v7;
          v38[0] = v39[0];
          *(v38 + 9) = *(v39 + 9);
          swift_unknownObjectRetain();
          v20 = sub_1C0F0946C(v35);
          swift_unknownObjectRelease();
          if (!v20)
          {
            break;
          }

          v21 = v33;
          v22 = *(v33 + 32);
          if (v22)
          {
            v32 = v18;
            swift_beginAccess();
            if (*(v22 + 136))
            {
              v29 = *(v22 + 144);
              v23 = v29;
              ObjectType = swift_getObjectType();
              v34[0] = v8;
              v34[1] = v9 & 1;
              v30 = *(v23 + 16);
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v24 = v30(v34, ObjectType, v29);
              v21 = v33;
              v25 = v24;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              v25 = 0;
            }

            v18 = v32;
          }

          else
          {
            v25 = 0;
          }

          v18(v6, 1, 1, v17);
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          *(v27 + 24) = 0;
          *(v27 + 32) = v21;
          *(v27 + 40) = v8;
          *(v27 + 41) = v9;
          *(v27 + 42) = v40[0];
          *(v27 + 56) = *(v40 + 14);
          *(v27 + 72) = v7;
          *(v27 + 80) = v39[0];
          *(v27 + 89) = *(v39 + 9);

          sub_1C0ED973C(0, 0, v6, &unk_1C0F581B0, v27);

          return v25 & 1;
        }
      }
    }

    sub_1C0F08AA8(&v41);
  }

  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1C0F08AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B00, &qword_1C0F58190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0F08B10(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 <= 1)
  {
    if (a4 >> 5)
    {
      if (v4 == 1)
      {
      }
    }

    else
    {
      return sub_1C0F08B58(result, a2);
    }
  }

  else if (v4 == 2 || v4 == 3 || v4 == 4)
  {
  }

  return result;
}

uint64_t sub_1C0F08B58(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C0F08B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEFCF4;

  return sub_1C0F081FC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1C0F08C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B00, &qword_1C0F58190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  sub_1C0F08B10(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_1C0F08CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEF864;

  return sub_1C0F08448(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1C0F08DB8(uint64_t a1)
{
  *(v2 + 248) = *a1;
  *(v2 + 249) = *(a1 + 1);
  v3 = *(a1 + 8);
  *(v2 + 88) = v1;
  *(v2 + 96) = v3;
  *(v2 + 104) = *(a1 + 24);
  *(v2 + 120) = *(a1 + 40);
  *(v2 + 136) = *(a1 + 56);
  *(v2 + 250) = *(a1 + 64);
  return MEMORY[0x1EEE6DFA0](sub_1C0F08E0C, v1, 0);
}

uint64_t sub_1C0F08E0C()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 152);
  *(v0 + 144) = v2;
  if (v2)
  {
    v3 = *(v0 + 250);
    v4 = *(*(v0 + 88) + 160);
    *(v0 + 152) = v4;
    v5 = v3 >> 5;
    *(v0 + 160) = swift_getObjectType();
    if (v3 >> 5 <= 1)
    {
      if (v5)
      {
        v39 = *(v0 + 136);
        v40 = *(v0 + 96);
        v41 = *(v0 + 249);
        v42 = *(v0 + 248);
        v50 = *(v0 + 120);
        *(v0 + 56) = v50;
        *(v0 + 40) = v50;
        *(v0 + 72) = v42;
        *(v0 + 73) = v41;
        *(v0 + 80) = v40;
        v44 = v4[4];
        v43 = (v4 + 4);
        *(v0 + 200) = v44;
        *(v0 + 208) = v43 & 0xFFFFFFFFFFFFLL | 0xD026000000000000;
        swift_unknownObjectRetain();
        sub_1C0F113A4(v50, *(&v50 + 1), v39, v3);
        v45 = *(v43 - 24);
        v12 = sub_1C0F502B0();
        v14 = v46;
        v15 = sub_1C0F09274;
      }

      else
      {
        v18 = *(v0 + 128);
        v19 = *(v0 + 249);
        v20 = *(v0 + 248);
        *(v0 + 40) = *(v0 + 104);
        *(v0 + 48) = *(v0 + 112);
        *(v0 + 64) = v18;
        *(v0 + 72) = v20;
        *(v0 + 73) = v19;
        v22 = v4[2];
        v21 = (v4 + 2);
        *(v0 + 168) = v22;
        *(v0 + 176) = v21 & 0xFFFFFFFFFFFFLL | 0x7C25000000000000;
        v23 = *(v21 - 8);
        swift_unknownObjectRetain();

        v12 = sub_1C0F502B0();
        v14 = v24;
        v15 = sub_1C0F09164;
      }
    }

    else if (v5 == 2)
    {
      v25 = *(v0 + 136);
      v26 = *(v0 + 249);
      v27 = *(v0 + 248);
      v48 = *(v0 + 120);
      *(v0 + 56) = v48;
      *(v0 + 40) = v48;
      *(v0 + 72) = v27;
      *(v0 + 73) = v26;
      v29 = v4[5];
      v28 = (v4 + 5);
      *(v0 + 216) = v29;
      *(v0 + 224) = v28 & 0xFFFFFFFFFFFFLL | 0x90B000000000000;
      swift_unknownObjectRetain();
      sub_1C0F113A4(v48, *(&v48 + 1), v25, v3);
      v30 = *(v28 - 32);
      v12 = sub_1C0F502B0();
      v14 = v31;
      v15 = sub_1C0F092FC;
    }

    else if (v5 == 3)
    {
      v6 = *(v0 + 136);
      v7 = *(v0 + 249);
      v8 = *(v0 + 248);
      v47 = *(v0 + 120);
      *(v0 + 56) = v47;
      *(v0 + 40) = v47;
      *(v0 + 72) = v8;
      *(v0 + 73) = v7;
      v10 = v4[6];
      v9 = (v4 + 6);
      *(v0 + 232) = v10;
      *(v0 + 240) = v9 & 0xFFFFFFFFFFFFLL | 0xDD49000000000000;
      swift_unknownObjectRetain();
      sub_1C0F113A4(v47, *(&v47 + 1), v6, v3);
      v11 = *(v9 - 40);
      v12 = sub_1C0F502B0();
      v14 = v13;
      v15 = sub_1C0F09384;
    }

    else
    {
      v32 = *(v0 + 136);
      v33 = *(v0 + 249);
      v34 = *(v0 + 248);
      v49 = *(v0 + 120);
      *(v0 + 56) = v49;
      *(v0 + 40) = v49;
      *(v0 + 72) = v34;
      *(v0 + 73) = v33;
      v36 = v4[3];
      v35 = (v4 + 3);
      *(v0 + 184) = v36;
      *(v0 + 192) = v35 & 0xFFFFFFFFFFFFLL | 0x2E17000000000000;
      swift_unknownObjectRetain();
      sub_1C0F113A4(v49, *(&v49 + 1), v32, v3);
      v37 = *(v35 - 16);
      v12 = sub_1C0F502B0();
      v14 = v38;
      v15 = sub_1C0F091EC;
    }

    return MEMORY[0x1EEE6DFA0](v15, v12, v14);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1C0F09164()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  (*(v0 + 168))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  v4 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C0F11408, v3, 0);
}

uint64_t sub_1C0F091EC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  (*(v0 + 184))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  sub_1C0F08B58(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11408, v3, 0);
}

uint64_t sub_1C0F09274()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  (*(v0 + 200))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  sub_1C0F08B58(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11408, v3, 0);
}

uint64_t sub_1C0F092FC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  (*(v0 + 216))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  sub_1C0F08B58(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11408, v3, 0);
}

uint64_t sub_1C0F09384()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  (*(v0 + 232))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  sub_1C0F08B58(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1C0F0940C, v3, 0);
}

uint64_t sub_1C0F0940C()
{
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_1C0F0946C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if ((v2 >> 5) - 1 < 3)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v2 >> 5)
  {
    v10 = *(v1 + 120);
    if (v10)
    {
      if (!v6)
      {
        sub_1C0F113A4(v5, 0, *(a1 + 56), v2);
        goto LABEL_21;
      }

      if (*(v1 + 112) == v5 && v10 == v6)
      {
        sub_1C0F113A4(v5, *(a1 + 48), *(a1 + 56), v2);
        goto LABEL_24;
      }

      v11 = v5;
      v12 = *(a1 + 48);
      v13 = sub_1C0F50790();
      sub_1C0F113A4(v11, v6, v7, v2);

      if (v13)
      {
        return 0;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v6 != 1)
  {
    v8 = *(v1 + 120);
    if (!v6)
    {

      if (!v8)
      {
        goto LABEL_21;
      }

      return 0;
    }

    if (v8)
    {
      if (v5 == *(v1 + 112) && v6 == v8)
      {
        v9 = v5;

        sub_1C0F113A4(v9, v6, v7, v2);

LABEL_21:

        return 1;
      }

      v14 = v5;
      v15 = *(a1 + 48);
      v16 = sub_1C0F50790();

      sub_1C0F113A4(v14, v6, v7, v2);

      return (v16 & 1) != 0;
    }

    sub_1C0F072F4(v5, *(a1 + 48));

LABEL_24:

    return 0;
  }

  return 1;
}