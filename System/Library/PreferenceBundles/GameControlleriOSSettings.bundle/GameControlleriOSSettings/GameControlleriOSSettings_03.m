uint64_t sub_52B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_54270(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1ED4C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_54104();
        v14 = v16;
      }

      result = sub_53DB4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void (*sub_52C0C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_52F60(v6, a2, a3);
  return sub_52C94;
}

void sub_52C94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *sub_52CE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_4E0C8(*(a1 + 16), 0);
  v4 = sub_544D8(&v6, v3 + 4, v2, a1);
  sub_55660();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_52D70(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_53188(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_52E68(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_5306C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void (*sub_52F60(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_535E0(v7);
  v7[9] = sub_532A8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_5300C;
}

void sub_5300C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

char *sub_5306C(char *result, int64_t a2, char a3, char *a4)
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
    sub_DC40(&qword_117AE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_53188(char *result, int64_t a2, char a3, char *a4)
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
    sub_DC40(&qword_117AF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_532A8(void *a1, uint64_t a2, uint64_t a3, char a4))(__int128 **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x1A8uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[49] = a3;
  v10[50] = v4;
  v10[48] = a2;
  v12 = *v4;
  v13 = sub_1ED4C(a2, a3);
  *(v11 + 416) = v14 & 1;
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
      sub_53F64();
      v13 = v21;
      goto LABEL_11;
    }

    sub_53614(v18, a4 & 1);
    v13 = sub_1ED4C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_D8138();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[51] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + (v13 << 6));
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[3];
    *(v11 + 10) = v23[2];
    *(v11 + 11) = v26;
    *(v11 + 9) = v25;
  }

  else
  {
    v24 = 0uLL;
    *(v11 + 10) = 0u;
    *(v11 + 11) = 0u;
    *(v11 + 9) = 0u;
  }

  *(v11 + 8) = v24;
  return sub_53418;
}

void sub_53418(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v2[12] = (*a1)[8];
  v2[13] = v3;
  v4 = v2[11];
  v2[14] = v2[10];
  v2[15] = v4;
  v5 = *(v2 + 25);
  LOBYTE(v6) = *(v2 + 416);
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v8 = *(v2 + 50);
    v7 = *(v2 + 51);
    if (v2[26])
    {
      goto LABEL_9;
    }

    v10 = *(v2 + 48);
    v9 = *(v2 + 49);
    v6 = *v8;
    v11 = v2[9];
    *v2 = v2[8];
    v2[1] = v11;
    v12 = v2[11];
    v2[2] = v2[10];
    v2[3] = v12;
    v6[(v7 >> 6) + 8] |= 1 << v7;
    v13 = (v6[6] + 16 * v7);
    *v13 = v10;
    v13[1] = v9;
    v14 = (v6[7] + (v7 << 6));
    v15 = *v2;
    v16 = v2[1];
    v17 = v2[3];
    v14[2] = v2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v18 = v6[2];
    v19 = __OFADD__(v18, 1);
    v5 = v18 + 1;
    if (!v19)
    {
LABEL_13:
      v6[2] = v5;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v5)
  {
LABEL_10:
    if (v6)
    {
      v24 = *(v2 + 51);
      v25 = **(v2 + 50);
      sub_55668(*(v25 + 48) + 16 * v24);
      sub_53BFC(v24, v25);
    }

    goto LABEL_14;
  }

  v8 = *(v2 + 50);
  v7 = *(v2 + 51);
  if ((v6 & 1) == 0)
  {
    v27 = *(v2 + 48);
    v26 = *(v2 + 49);
    v6 = *v8;
    v28 = v2[9];
    v2[4] = v2[8];
    v2[5] = v28;
    v29 = v2[11];
    v2[6] = v2[10];
    v2[7] = v29;
    v6[(v7 >> 6) + 8] |= 1 << v7;
    v30 = (v6[6] + 16 * v7);
    *v30 = v27;
    v30[1] = v26;
    v31 = (v6[7] + (v7 << 6));
    v32 = v2[4];
    v33 = v2[5];
    v34 = v2[7];
    v31[2] = v2[6];
    v31[3] = v34;
    *v31 = v32;
    v31[1] = v33;
    v35 = v6[2];
    v19 = __OFADD__(v35, 1);
    v5 = v35 + 1;
    if (v19)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v20 = (*(*v8 + 56) + (v7 << 6));
  v21 = v2[8];
  v22 = v2[9];
  v23 = v2[11];
  v20[2] = v2[10];
  v20[3] = v23;
  *v20 = v21;
  v20[1] = v22;
LABEL_14:
  v36 = v2[9];
  v2[16] = v2[8];
  v2[17] = v36;
  v37 = v2[11];
  v2[18] = v2[10];
  v2[19] = v37;
  sub_16054((v2 + 12), (v2 + 20), &qword_117AC8);
  sub_553E8((v2 + 16));

  free(v2);
}

uint64_t (*sub_535E0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_53608;
}

uint64_t sub_53614(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_DC40(&qword_117AD8);
  v37 = a2;
  result = sub_D8098();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v37)
      {
        v40 = *v25;
        v38 = *(v25 + 8);
        v39 = *(v25 + 24);
        v41 = *(v25 + 40);
        v42 = *(v25 + 16);
        v43 = *(v25 + 56);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 48);
        *&v45[16] = *(v25 + 32);
        *&v45[32] = v28;
        v44 = v26;
        *v45 = v27;
        v41 = *&v45[24];
        v42 = v27;
        v43 = *(&v28 + 1);
        v39 = *&v45[8];
        v38 = *(&v26 + 1);
        v40 = v26;

        sub_35294(&v44, v46);
      }

      sub_D8168();
      sub_D7C78();
      result = sub_D8198();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 16) = v42;
      *(v17 + 24) = v39;
      *(v17 + 40) = v41;
      *(v17 + 56) = v43;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_53958(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_DC40(&qword_117AE0);
  v35 = a2;
  result = sub_D8098();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_D8168();
      sub_D7C78();
      result = sub_D8198();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_53BFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_D7F88() + 1) & ~v5;
    do
    {
      sub_D8168();

      sub_D7C78();
      v12 = sub_D8198();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + (v3 << 6));
        v19 = (v17 + (v6 << 6));
        if (v3 != v6 || v18 >= v19 + 4)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[3];
          v18[2] = v19[2];
          v18[3] = v11;
          *v18 = v9;
          v18[1] = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_53DB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_D7F88() + 1) & ~v5;
    do
    {
      sub_D8168();

      sub_D7C78();
      v9 = sub_D8198();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_53F64()
{
  v1 = v0;
  sub_DC40(&qword_117AD8);
  v2 = *v0;
  v3 = sub_D8088();
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
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_35294(&v32, &v31);
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

id sub_54104()
{
  v1 = v0;
  sub_DC40(&qword_117AE0);
  v2 = *v0;
  v3 = sub_D8088();
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

        result = v20;
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

uint64_t sub_54270(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ED4C(a2, a3);
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
      sub_53958(v16, a4 & 1);
      v11 = sub_1ED4C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_D8138();
        __break(1u);
        return _objc_release_x1(v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_54104();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return _objc_release_x1(v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_543E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_D8078();
    sub_D8178(v8);
    v3 = sub_D8078();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    sub_D8178(*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)));
    v3 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      sub_D7FF8();
      sub_D7EB8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_D7EB8();

      --v3;
    }

    while (v3);
  }
}

void *sub_544D8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_5462C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

unint64_t sub_54678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_DC40(&qword_117B20);
    v3 = sub_D80A8();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_1ED4C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_54798()
{
  sub_DC40(&qword_117B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DF600;
  *(inited + 32) = sub_D7C18();
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000000000E5920;
  strcpy((inited + 64), "house.circle");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = sub_D7C18();
  *(inited + 88) = v2;
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = 0x80000000000E5940;
  *(inited + 112) = 0xD000000000000018;
  *(inited + 120) = 0x80000000000E5960;
  *(inited + 128) = sub_D7C18();
  *(inited + 136) = v3;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x80000000000E5980;
  *(inited + 160) = 0x73697370696C6C65;
  *(inited + 168) = 0xEF656C637269632ELL;
  *(inited + 176) = sub_D7C18();
  *(inited + 184) = v4;
  *(inited + 192) = 0xD000000000000014;
  *(inited + 200) = 0x80000000000E59A0;
  *(inited + 208) = 0xD00000000000001ALL;
  *(inited + 216) = 0x80000000000E59C0;
  *(inited + 224) = sub_D7C18();
  *(inited + 232) = v5;
  *(inited + 240) = 0xD000000000000010;
  *(inited + 248) = 0x80000000000E59E0;
  *(inited + 256) = 0xD00000000000001DLL;
  *(inited + 264) = 0x80000000000E5A00;
  *(inited + 272) = sub_D7C18();
  *(inited + 280) = v6;
  *(inited + 288) = 0xD000000000000010;
  *(inited + 296) = 0x80000000000E5A20;
  *(inited + 304) = 0xD00000000000001ELL;
  *(inited + 312) = 0x80000000000E5A40;
  *(inited + 320) = sub_D7C18();
  *(inited + 328) = v7;
  *(inited + 336) = 0xD000000000000010;
  *(inited + 344) = 0x80000000000E5A60;
  *(inited + 352) = 0xD00000000000001DLL;
  *(inited + 360) = 0x80000000000E5A80;
  *(inited + 368) = sub_D7C18();
  *(inited + 376) = v8;
  *(inited + 384) = 0xD000000000000010;
  *(inited + 392) = 0x80000000000E5AA0;
  *(inited + 400) = 0xD00000000000001BLL;
  *(inited + 408) = 0x80000000000E5AC0;
  *(inited + 416) = sub_D7C18();
  *(inited + 424) = v9;
  *(inited + 432) = 0xD00000000000001ELL;
  *(inited + 440) = 0x80000000000E5AE0;
  *(inited + 448) = 0xD000000000000015;
  *(inited + 456) = 0x80000000000E5B00;
  *(inited + 464) = sub_D7C18();
  *(inited + 472) = v10;
  *(inited + 480) = 0xD00000000000001FLL;
  *(inited + 488) = 0x80000000000E5B20;
  *(inited + 496) = 0xD000000000000015;
  *(inited + 504) = 0x80000000000E5B40;
  *(inited + 512) = sub_D7C18();
  *(inited + 520) = v11;
  *(inited + 528) = 0xD000000000000017;
  *(inited + 536) = 0x80000000000E5B60;
  *(inited + 544) = 0x697473796F6A2E6CLL;
  *(inited + 552) = 0xEA00000000006B63;
  *(inited + 560) = sub_D7C18();
  *(inited + 568) = v12;
  *(inited + 576) = 0xD000000000000018;
  *(inited + 584) = 0x80000000000E5B80;
  *(inited + 592) = 0x697473796F6A2E72;
  *(inited + 600) = 0xEA00000000006B63;
  *(inited + 608) = sub_D7C18();
  *(inited + 616) = v13;
  *(inited + 624) = 0xD000000000000015;
  *(inited + 632) = 0x80000000000E5BA0;
  *(inited + 640) = 1684107364;
  *(inited + 648) = 0xE400000000000000;
  *(inited + 656) = sub_D7C18();
  *(inited + 664) = v14;
  *(inited + 672) = 0xD000000000000015;
  *(inited + 680) = 0x80000000000E5BC0;
  *(inited + 688) = 0xD00000000000001ALL;
  *(inited + 696) = 0x80000000000E5BE0;
  *(inited + 704) = sub_D7C18();
  *(inited + 712) = v15;
  *(inited + 720) = 0xD000000000000016;
  *(inited + 728) = 0x80000000000E5C00;
  *(inited + 736) = 0xD00000000000001ALL;
  *(inited + 744) = 0x80000000000E5C20;
  *(inited + 752) = sub_D7C18();
  *(inited + 760) = v16;
  *(inited + 768) = 0xD000000000000014;
  *(inited + 776) = 0x80000000000E5C40;
  *(inited + 784) = 0xD000000000000017;
  *(inited + 792) = 0x80000000000E5C60;
  *(inited + 800) = sub_D7C18();
  *(inited + 808) = v17;
  *(inited + 816) = 0xD000000000000015;
  *(inited + 824) = 0x80000000000E5C80;
  *(inited + 832) = 0xD000000000000017;
  *(inited + 840) = 0x80000000000E5CA0;
  v18 = sub_54678(inited);
  swift_setDeallocating();
  sub_DC40(&qword_117B18);
  swift_arrayDestroy();
  return v18;
}

unint64_t sub_54CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_DC40(&qword_117AE0);
    v3 = sub_D80A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1ED4C(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_54DEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_DC40(&qword_117AD8);
  v3 = sub_D80A8();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_16054(&v24, v23, &qword_117AF8);
  result = sub_1ED4C(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_16054(&v24, v23, &qword_117AF8);
    result = sub_1ED4C(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_54F88(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_D8118() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_D8118() & 1) == 0 || (sub_4FC20(a1[4], a2[4]) & 1) == 0 || (sub_4FC20(a1[5], a2[5]) & 1) == 0 || (sub_4FE60(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[7];
  v7 = a2[7];

  return sub_4FF40(v6, v7);
}

unint64_t sub_55048()
{
  result = qword_117AB8;
  if (!qword_117AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117AB8);
  }

  return result;
}

unint64_t sub_5509C()
{
  result = qword_117AC0;
  if (!qword_117AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117AC0);
  }

  return result;
}

uint64_t sub_5514C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_1ED4C(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_54104();
      }
    }

    else
    {
      sub_53958(v30, v43 & 1);
      v32 = sub_1ED4C(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_55660();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_D8138();
  __break(1u);
  return result;
}

uint64_t sub_553E8(uint64_t a1)
{
  v2 = sub_DC40(&qword_117AC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_55454()
{
  result = qword_117AD0;
  if (!qword_117AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117AD0);
  }

  return result;
}

__n128 sub_554B8(uint64_t a1, uint64_t a2)
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

uint64_t sub_554CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_55514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_55574(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_555A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_555F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_556BC()
{
  result = qword_117B00;
  if (!qword_117B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117B00);
  }

  return result;
}

unint64_t sub_55710()
{
  result = qword_117B08;
  if (!qword_117B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117B08);
  }

  return result;
}

uint64_t sub_557D0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_55808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  v9 = sub_D7148();
  v22[0] = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_DC40(&qword_117B28);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v22 - v14;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a4;

  sub_DC40(&qword_117B30);
  v17 = sub_EBC0(&qword_117B38);
  v18 = sub_D6FD8();
  v19 = sub_55DCC();
  v20 = sub_1AFF8(&qword_116538, &type metadata accessor for IconOnlyLabelStyle);
  v22[8] = v17;
  v22[9] = v18;
  v22[10] = v19;
  v22[11] = v20;
  swift_getOpaqueTypeConformance2();
  sub_D7848();
  sub_D7138();
  sub_15FB8(&qword_117B58, &qword_117B28);
  sub_1AFF8(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
  sub_D7428();
  (*(v22[0] + 8))(v11, v9);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_55B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_D6FD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_117B38);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  v16[0] = a1;
  v16[1] = a2;
  sub_16000();

  sub_D7768();
  v11 = &v10[*(v8 + 36)];
  v12 = *(sub_DC40(&qword_117B50) + 28);
  v13 = enum case for Image.Scale.large(_:);
  v14 = sub_D7748();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  sub_D6FC8();
  sub_55DCC();
  sub_1AFF8(&qword_116538, &type metadata accessor for IconOnlyLabelStyle);
  sub_D7408();
  (*(v5 + 8))(v7, v4);
  return sub_56490(v10);
}

unint64_t sub_55DCC()
{
  result = qword_117B40;
  if (!qword_117B40)
  {
    sub_EBC0(&qword_117B38);
    sub_15FB8(&qword_116530, &qword_116528);
    sub_15FB8(&qword_117B48, &qword_117B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117B40);
  }

  return result;
}

uint64_t sub_55ECC@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v20[0] = sub_D7148();
  v2 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_DC40(&qword_117B28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v12;
  v13[5] = v11;
  v20[4] = v9;
  v20[5] = v10;
  v20[6] = v12;
  v20[7] = v11;

  sub_DC40(&qword_117B30);
  v14 = sub_EBC0(&qword_117B38);
  v15 = sub_D6FD8();
  v16 = sub_55DCC();
  v17 = sub_1AFF8(&qword_116538, &type metadata accessor for IconOnlyLabelStyle);
  v20[8] = v14;
  v20[9] = v15;
  v20[10] = v16;
  v20[11] = v17;
  swift_getOpaqueTypeConformance2();
  sub_D7848();
  sub_D7138();
  sub_15FB8(&qword_117B58, &qword_117B28);
  sub_1AFF8(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
  v18 = v20[0];
  sub_D7428();
  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_561EC(uint64_t a1, int a2)
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

uint64_t sub_56234(uint64_t result, int a2, int a3)
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

uint64_t sub_56284()
{
  sub_EBC0(&qword_117B28);
  sub_D7148();
  sub_15FB8(&qword_117B58, &qword_117B28);
  sub_1AFF8(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_56364()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_563C8(uint64_t a1)
{
  v2 = sub_D7748();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_D6E28();
}

uint64_t sub_56490(uint64_t a1)
{
  v2 = sub_DC40(&qword_117B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_56508(unsigned __int8 a1)
{
  v1 = 44;
  v2 = 10;
  if (a1 != 2)
  {
    v2 = 32;
  }

  if (a1)
  {
    v1 = 0;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_5655C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 44;
  v5 = 10;
  if (a1 != 2)
  {
    v5 = 32;
  }

  if (a1)
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  v8 = 0xE100000000000000;
  v9 = 44;
  v10 = 10;
  if (a2 != 2)
  {
    v10 = 32;
  }

  if (a2)
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_D8118();
  }

  return v13 & 1;
}

Swift::Int sub_56648()
{
  sub_D8168();
  sub_D7C78();

  return sub_D8198();
}

uint64_t sub_566D8()
{
  sub_D7C78();
}

Swift::Int sub_56754()
{
  sub_D8168();
  sub_D7C78();

  return sub_D8198();
}

uint64_t sub_567E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_56B70(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_56810(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 44;
  v4 = 10;
  if (*v1 != 2)
  {
    v4 = 32;
  }

  if (*v1)
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE100000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_5685C()
{
  v1 = v0;

  sub_43BC4();
  sub_16000();
  v2 = sub_D7F48();

  if (v2)
  {

    sub_43BDC();
    v4 = sub_D7F08();
    v6 = v5;

    *v1 = v4;
    v1[1] = v6;
  }

  return result;
}

uint64_t sub_56964(uint64_t a1, void *a2)
{
  v8 = *sub_43B8C();

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_D7CA8(v9);
  v4 = sub_43BA8();
  v5 = *v4;
  v6 = v4[1];

  v10._countAndFlagsBits = v5;
  v10._object = v6;
  sub_D7CA8(v10);

  return v8;
}

uint64_t sub_569EC()
{
  sub_16000();
  sub_D7F08();
  v0 = sub_D7F08();

  return v0;
}

uint64_t sub_56B70(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_107EE0;
  v6._object = a2;
  v4 = sub_D80C8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_56BC0()
{
  result = qword_117B60;
  if (!qword_117B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117B60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SplitDelimiter(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SplitDelimiter(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_56D6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v8 = [objc_opt_self() bezierPathWithRoundedRect:a1 byRoundingCorners:a3 cornerRadii:{a4, a5, a6, a7, a7}];
  v9 = [v8 CGPath];
  sub_D7358();

  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

double sub_56E38@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = [objc_opt_self() bezierPathWithRoundedRect:*v5 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, *(v5 + 8), *(v5 + 8)}];
  v8 = [v7 CGPath];
  sub_D7358();

  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

void (*sub_56F2C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_D6B18();
  return sub_56FB4;
}

void sub_56FB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_57000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_59A44();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_57064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_59A44();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_570C8(uint64_t a1)
{
  v2 = sub_59A44();

  return Shape.body.getter(a1, v2);
}

id sub_57114(void *a1)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_57190()
{
  type metadata accessor for GCSPreferencesStore();
  sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_5721C@<X0>(void *a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v48 = a2;
  v52 = a3;
  v4 = sub_D6D98();
  __chkstk_darwin(v4);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_DC40(&qword_1170C8);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v46 = sub_DC40(&qword_1170D0);
  __chkstk_darwin(v46);
  v11 = &v45 - v10;
  v51 = sub_DC40(&qword_1170E8);
  __chkstk_darwin(v51);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v45 - v15;
  v49 = sub_DC40(&qword_117B68);
  v16 = __chkstk_darwin(v49);
  v50 = &v45 - v17;
  v18 = [a1 leftJoyConColor];
  if (v18)
  {
    v19 = v18;
    v20 = [a1 rightJoyConColor];
    if (v20)
    {
      v21 = v20;
      v22 = sub_D7A18();
      v47 = v23;
      v24 = sub_D6FB8();
      LOBYTE(v89[0]) = 0;
      sub_579B0(v48 & 1, v19, v21, v59);
      v71 = *&v59[160];
      v72 = *&v59[176];
      v73 = *&v59[192];
      v74 = *&v59[208];
      v67 = *&v59[96];
      v68 = *&v59[112];
      v69 = *&v59[128];
      v70 = *&v59[144];
      v63 = *&v59[32];
      v64 = *&v59[48];
      v65 = *&v59[64];
      v66 = *&v59[80];
      v61 = *v59;
      v62 = *&v59[16];
      v85 = *&v59[160];
      v86 = *&v59[176];
      v87 = *&v59[192];
      v88 = *&v59[208];
      v81 = *&v59[96];
      v82 = *&v59[112];
      v83 = *&v59[128];
      v84 = *&v59[144];
      v77 = *&v59[32];
      v78 = *&v59[48];
      v79 = *&v59[64];
      v80 = *&v59[80];
      v75 = *v59;
      v76 = *&v59[16];
      sub_16054(&v61, &v53, &qword_117B90);
      sub_160BC(&v75, &qword_117B90);
      *&v60[167] = v71;
      *&v60[183] = v72;
      *&v60[199] = v73;
      *&v60[215] = v74;
      *&v60[103] = v67;
      *&v60[119] = v68;
      *&v60[135] = v69;
      *&v60[151] = v70;
      *&v60[39] = v63;
      *&v60[55] = v64;
      *&v60[71] = v65;
      *&v60[87] = v66;
      *&v60[7] = v61;
      *&v60[23] = v62;
      v25 = v89[0];
      sub_D7A18();
      sub_D6C28();
      *&v59[209] = *&v60[176];
      *&v59[225] = *&v60[192];
      *&v59[241] = *&v60[208];
      *&v59[145] = *&v60[112];
      *&v59[161] = *&v60[128];
      *&v59[177] = *&v60[144];
      *&v59[193] = *&v60[160];
      *&v59[81] = *&v60[48];
      *&v59[97] = *&v60[64];
      *&v59[113] = *&v60[80];
      *&v59[129] = *&v60[96];
      *&v59[33] = *v60;
      *&v59[49] = *&v60[16];
      *v59 = v22;
      *&v59[8] = v47;
      *&v59[16] = v24;
      *&v59[24] = 0;
      v59[32] = v25;
      *&v59[256] = *&v60[223];
      *&v59[65] = *&v60[32];
      memcpy(v50, v59, 0x138uLL);
      swift_storeEnumTagMultiPayload();
      v26 = &qword_117B70;
      sub_16054(v59, &v53, &qword_117B70);
      sub_16054(v59, &v53, &qword_117B70);
      sub_DC40(&qword_117B70);
      sub_59274();
      sub_39688();
      sub_D70B8();

      sub_160BC(v59, &qword_117B70);
      v27 = v59;
      return sub_160BC(v27, v26);
    }
  }

  v28 = *(v4 + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = sub_D7048();
  (*(*(v30 - 8) + 104))(v6 + v28, v29, v30);
  v31 = 5.5;
  if (v48)
  {
    v31 = 7.0;
  }

  *v6 = v31;
  v6[1] = v31;
  sub_58F0C(a1, v89);
  sub_39088(v6, v9);
  v32 = &v9[*(v7 + 52)];
  v33 = v89[1];
  *v32 = v89[0];
  *(v32 + 1) = v33;
  *(v32 + 4) = v90;
  *&v9[*(v7 + 56)] = 256;
  v34 = sub_D7A18();
  v36 = v35;
  sub_58014(a1, &v61);
  v55 = v63;
  v56 = v64;
  v57 = v65;
  v53 = v61;
  v54 = v62;
  *&v58 = v34;
  *(&v58 + 1) = v36;
  sub_21A44(v9, v11, &qword_1170C8);
  v37 = &v11[*(v46 + 36)];
  v38 = v56;
  *(v37 + 2) = v55;
  *(v37 + 3) = v38;
  v39 = v58;
  *(v37 + 4) = v57;
  *(v37 + 5) = v39;
  v40 = v54;
  *v37 = v53;
  *(v37 + 1) = v40;
  *&v59[32] = v63;
  *&v59[48] = v64;
  *&v59[64] = v65;
  *v59 = v61;
  *&v59[16] = v62;
  *&v59[80] = v34;
  *&v59[88] = v36;
  sub_16054(&v53, &v75, &qword_1170E0);
  sub_160BC(v59, &qword_1170E0);
  sub_D7A18();
  sub_D6C28();
  sub_21A44(v11, v13, &qword_1170D0);
  v41 = &v13[*(v51 + 36)];
  v42 = v76;
  *v41 = v75;
  *(v41 + 1) = v42;
  *(v41 + 2) = v77;
  v26 = &qword_1170E8;
  v43 = v47;
  sub_21A44(v13, v47, &qword_1170E8);
  sub_16054(v43, v50, &qword_1170E8);
  swift_storeEnumTagMultiPayload();
  sub_DC40(&qword_117B70);
  sub_59274();
  sub_39688();
  sub_D70B8();
  v27 = v43;
  return sub_160BC(v27, v26);
}

uint64_t sub_579B0@<X0>(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v48 = sub_D7598();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = 7.0;
  }

  else
  {
    v10 = 5.5;
  }

  [a2 red];
  [a2 green];
  [a2 blue];
  v47 = enum case for Color.RGBColorSpace.sRGB(_:);
  v46 = *(v7 + 104);
  v46(v9);
  v50 = sub_D76D8();
  sub_DC40(&qword_1170D8);
  v11 = swift_allocObject();
  v45 = xmmword_DC430;
  *(v11 + 16) = xmmword_DC430;
  sub_D7668();
  v12 = sub_D76A8();

  *(v11 + 32) = v12;
  sub_D7628();
  v13 = sub_D76A8();

  *(v11 + 40) = v13;
  sub_D79D8();
  sub_D7A98();
  sub_D7A88();
  sub_D6C78();
  v14 = v83;
  v15 = v84;
  v16 = v85;
  v17 = v86;
  v18 = v87;
  v19 = sub_D7A18();
  *&v76 = v14;
  *(&v76 + 1) = v15;
  *&v77 = v16;
  *(&v77 + 1) = v17;
  *&v78 = v18;
  *(&v78 + 1) = 5;
  *&v79 = v10;
  *(&v79 + 1) = v19;
  v80 = v20;
  *&v82[70] = v20;
  *&v82[22] = v77;
  *&v82[38] = v78;
  *&v82[54] = v79;
  *&v82[6] = v76;
  v81[0] = v14;
  v81[1] = v15;
  v81[2] = v16;
  v81[3] = v17;
  v81[4] = v18;
  v81[5] = 5;
  *&v81[6] = v10;
  v81[7] = v19;
  v81[8] = v20;
  sub_16054(&v76, v69, &qword_117C68);
  sub_160BC(v81, &qword_117C68);
  v21 = v49;
  [v49 red];
  [v21 green];
  [v21 blue];
  (v46)(v9, v47, v48);
  v22 = sub_D76D8();
  v23 = swift_allocObject();
  *(v23 + 16) = v45;
  sub_D7668();
  v24 = sub_D76A8();

  *(v23 + 32) = v24;
  sub_D7628();
  v25 = sub_D76A8();

  *(v23 + 40) = v25;
  sub_D79D8();
  sub_D7A98();
  sub_D7A88();
  sub_D6C78();
  v26 = v88;
  v27 = v89;
  v28 = v90;
  v29 = v91;
  v30 = v92;
  v31 = sub_D7A18();
  *&v53 = v26;
  *(&v53 + 1) = v27;
  *&v54 = v28;
  *(&v54 + 1) = v29;
  *&v55 = v30;
  *(&v55 + 1) = 10;
  *&v56 = v10;
  *(&v56 + 1) = v31;
  v57 = v32;
  *&v75[70] = v32;
  *&v75[38] = v55;
  *&v75[54] = v56;
  *&v75[6] = v53;
  *&v75[22] = v54;
  v58[0] = v26;
  v58[1] = v27;
  v58[2] = v28;
  v58[3] = v29;
  v58[4] = v30;
  v58[5] = 10;
  *&v58[6] = v10;
  v58[7] = v31;
  v58[8] = v32;
  sub_16054(&v53, v69, &qword_117C68);
  sub_160BC(v58, &qword_117C68);
  *&v59 = 5;
  *(&v59 + 1) = v10;
  v33 = v50;
  *v60 = v50;
  *&v60[8] = 256;
  *&v60[26] = *&v82[16];
  *&v60[42] = *&v82[32];
  *&v60[58] = *&v82[48];
  *&v60[72] = *&v82[62];
  *&v60[10] = *v82;
  v52 = 0;
  *&v61 = 10;
  *(&v61 + 1) = v10;
  *v62 = v22;
  *&v62[8] = 256;
  *&v62[10] = *v75;
  *&v62[26] = *&v75[16];
  *&v62[72] = *&v75[62];
  *&v62[58] = *&v75[48];
  *&v62[42] = *&v75[32];
  *(&v51[2] + 7) = *&v62[16];
  *(&v51[1] + 7) = *v62;
  *(v51 + 7) = v61;
  *(&v51[6] + 7) = *&v75[70];
  *(&v51[5] + 7) = *&v62[64];
  *(&v51[4] + 7) = *&v62[48];
  *(&v51[3] + 7) = *&v62[32];
  v34 = *v60;
  *a4 = v59;
  *(a4 + 16) = v34;
  v35 = *&v60[16];
  v36 = *&v60[32];
  v37 = *&v60[64];
  v38 = *&v60[80];
  *(a4 + 64) = *&v60[48];
  *(a4 + 80) = v37;
  *(a4 + 32) = v35;
  *(a4 + 48) = v36;
  *(a4 + 96) = v38;
  *(a4 + 104) = 0x4010000000000000;
  *(a4 + 112) = 0;
  v39 = v51[0];
  v40 = v51[1];
  v41 = v51[3];
  *(a4 + 145) = v51[2];
  *(a4 + 129) = v40;
  *(a4 + 113) = v39;
  v42 = v51[4];
  v43 = v51[5];
  *(a4 + 208) = *(&v51[5] + 15);
  *(a4 + 193) = v43;
  *(a4 + 177) = v42;
  *(a4 + 161) = v41;
  v63[0] = 10;
  *&v63[1] = v10;
  v63[2] = v22;
  v64 = 256;
  v65 = *v75;
  *&v68[14] = *&v75[62];
  *v68 = *&v75[48];
  v67 = *&v75[32];
  v66 = *&v75[16];
  sub_16054(&v59, v69, &qword_117C70);
  sub_16054(&v61, v69, &qword_117C70);
  sub_160BC(v63, &qword_117C70);
  v69[0] = 5;
  *&v69[1] = v10;
  v69[2] = v33;
  v70 = 256;
  v72 = *&v82[16];
  v73 = *&v82[32];
  v74[0] = *&v82[48];
  *(v74 + 14) = *&v82[62];
  v71 = *v82;
  return sub_160BC(v69, &qword_117C70);
}

uint64_t sub_58014@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D7708();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [a1 logoSfSymbolsName];
  sub_D7C18();

  sub_D76F8();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v10 = sub_D7758();

  (*(v5 + 8))(v8, v4);
  v11 = [a1 logoSfSymbolsName];
  v12 = sub_D7C18();
  v14 = v13;

  if ((v12 != 0xD000000000000010 || 0x80000000000E5CC0 != v14) && (sub_D8118() & 1) == 0 && (v12 != 0x6F62782E6F676F6CLL || v14 != 0xE900000000000078))
  {
    sub_D8118();
  }

  v15 = sub_D7668();
  v16 = sub_D71F8();
  result = sub_D6B68();
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_58288()
{
  type metadata accessor for GCSPreferencesStore();
  sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

uint64_t sub_58308(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *&stru_298.sectname[swift_isaMask & *a1];
    v5 = a1;
    v6 = v4(a3);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 pilotIdentifier];
      v9 = sub_D7C18();
      v11 = v10;

      v12 = *&stru_1F8.segname[(swift_isaMask & *v5) + 16];
      v13 = v12(v9, v11);

      if (v13)
      {

        v14 = [v7 copilotIdentifier];
        v15 = sub_D7C18();
        v17 = v16;

        v18 = v12(v15, v17);

        if (!v18)
        {
          return 0;
        }

        v7 = &dword_0 + 1;
        v5 = v18;
      }

      else
      {

        v7 = 0;
      }
    }

    else
    {
    }

    return v7;
  }

  type metadata accessor for GCSPreferencesStore();
  sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

double sub_58504(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_58308(a1, a2, a3);
  result = 34.0;
  if ((v3 & 1) == 0)
  {
    return 30.0;
  }

  return result;
}

uint64_t sub_58530@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_D7A18();
  if (a1)
  {
    v9 = v7;
    v10 = v8;
    v11 = *&stru_298.sectname[swift_isaMask & *a1];
    v12 = a1;
    v51 = a3;
    v13 = v11();
    v52 = a1;
    if (v13)
    {
      v49 = v10;
      v50 = v9;
      v14 = v13;
      v15 = [v13 pilotIdentifier];
      v16 = sub_D7C18();
      v18 = v17;

      v19 = *&stru_1F8.segname[(swift_isaMask & *v12) + 16];
      v20 = v19(v16, v18);

      if (v20)
      {
        v21 = v14;
        v22 = [v14 copilotIdentifier];
        v23 = sub_D7C18();
        v25 = v24;

        v26 = v19(v23, v25);

        if (v26)
        {
          v27 = v51;

          type metadata accessor for GCSPreferencesStore();
          sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);
          v28 = sub_D6DF8();
          v30 = v29;
          v31 = sub_D6DF8();
          *&v55 = v28;
          *(&v55 + 1) = v30;
          *&v56 = v20;
          BYTE8(v56) = 0;
          __asm { FMOV            V0.2D, #-5.0 }

          v57 = _Q0;
          *&v58 = v31;
          *(&v58 + 1) = v37;
          *&v59 = v26;
          BYTE8(v59) = 0;
          __asm { FMOV            V0.2D, #5.0 }

          v60 = _Q0;
          v72 = v57;
          v73 = v58;
          v74 = v59;
          v75 = _Q0;
          v70 = v55;
          v71 = v56;
          v48 = v31;
          v39 = v26;
          v40 = v28;
          v41 = v20;
          LOBYTE(v54[0]) = 0;
          v76 = 0;
          sub_16054(&v55, &v63, &qword_117C60);
          sub_DC40(&qword_117C50);
          sub_15FB8(&qword_117C58, &qword_117C50);
          sub_59380();
          sub_D70B8();

          sub_160BC(&v55, &qword_117C60);
          v74 = v67;
          v75 = v68;
          v76 = v69;
          v70 = v63;
          v71 = v64;
          v72 = v65;
          v73 = v66;
          v10 = v49;
          v9 = v50;
LABEL_10:
          v59 = v74;
          v60 = v75;
          v61 = v76;
          v55 = v70;
          v56 = v71;
          v57 = v72;
          v58 = v73;
          v63 = v70;
          v64 = v71;
          v65 = v72;
          v66 = v73;
          v69 = v76;
          v67 = v74;
          v68 = v75;
          sub_16054(&v63, v54, &qword_117B98);
          sub_160BC(&v70, &qword_117B98);
          v59 = v67;
          v60 = v68;
          v61 = v69;
          v55 = v63;
          v56 = v64;
          v57 = v65;
          v58 = v66;
          sub_58308(v52, a2, v27);
          sub_58308(v52, a2, v27);
          sub_D7A18();
          result = sub_D6C28();
          *&v62[7] = v54[0];
          *&v62[23] = v54[1];
          *&v62[39] = v54[2];
          v44 = v60;
          *(a4 + 80) = v59;
          *(a4 + 96) = v44;
          v45 = v56;
          *(a4 + 16) = v55;
          *(a4 + 32) = v45;
          v46 = v58;
          *(a4 + 48) = v57;
          *(a4 + 64) = v46;
          v47 = *&v62[16];
          *(a4 + 113) = *v62;
          *a4 = v9;
          *(a4 + 8) = v10;
          *(a4 + 112) = v61;
          *(a4 + 129) = v47;
          *(a4 + 145) = *&v62[32];
          *(a4 + 160) = *&v62[47];
          return result;
        }

        v12 = v20;
        v10 = v49;
        v9 = v50;
        v27 = v51;
        v14 = v21;
      }

      else
      {
        v10 = v49;
        v9 = v50;
        v27 = v51;
      }
    }

    else
    {
      v14 = v12;
      v27 = v51;
    }

    type metadata accessor for GCSPreferencesStore();
    sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    LOBYTE(v55) = 1;
    *&v63 = sub_D6DF8();
    *(&v63 + 1) = v42;
    *&v64 = v27;
    BYTE8(v64) = 1;
    v69 = 1;
    sub_DC40(&qword_117C50);
    sub_15FB8(&qword_117C58, &qword_117C50);
    sub_59380();
    sub_D70B8();
    goto LABEL_10;
  }

  type metadata accessor for GCSPreferencesStore();
  sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_58B74@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = *(&stru_248.reloff + (swift_isaMask & *a1));
    v6 = a1;
    a2;
    v5();

    type metadata accessor for GCSPreferencesStore();
    sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DF8();
    sub_5932C();
    sub_59380();
    result = sub_D70B8();
    *a3 = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
    *(a3 + 25) = v11;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_599C4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

BOOL sub_58D78(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_58DA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_58DD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_58EC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_59A0C(a1);

  *a2 = v3;
  return result;
}

__n128 sub_58F0C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D7598();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 logoSfSymbolsName];
  v10 = sub_D7C18();
  v12 = v11;

  v13 = v10 == 0xD000000000000010 && 0x80000000000E5CC0 == v12;
  if (v13 || (sub_D8118() & 1) != 0)
  {

    sub_DC40(&qword_1170D8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_DCB80;
    (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  }

  else
  {
    if (v10 == 0x6F62782E6F676F6CLL && v12 == 0xE900000000000078)
    {
    }

    else
    {
      v18 = sub_D8118();

      if ((v18 & 1) == 0)
      {
        sub_DC40(&qword_1170D8);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_DC430;
        v20 = enum case for Color.RGBColorSpace.sRGB(_:);
        v21 = *(v5 + 104);
        v21(v8, enum case for Color.RGBColorSpace.sRGB(_:), v4);
        *(v19 + 32) = sub_D76D8();
        v21(v8, v20, v4);
        *(v19 + 40) = sub_D76D8();
        goto LABEL_8;
      }
    }

    sub_DC40(&qword_1170D8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_DCB80;
    (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  }

  *(v14 + 32) = sub_D76D8();
LABEL_8:
  sub_D79D8();
  sub_D6C78();
  result = v23;
  v16 = v24;
  *a2 = v22[1];
  *(a2 + 8) = result;
  *(a2 + 24) = v16;
  return result;
}

unint64_t sub_59274()
{
  result = qword_117B78;
  if (!qword_117B78)
  {
    sub_EBC0(&qword_117B70);
    sub_15FB8(&qword_117B80, &qword_117B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117B78);
  }

  return result;
}

unint64_t sub_5932C()
{
  result = qword_117BA0;
  if (!qword_117BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117BA0);
  }

  return result;
}

unint64_t sub_59380()
{
  result = qword_117BA8;
  if (!qword_117BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117BA8);
  }

  return result;
}

unint64_t sub_593D8()
{
  result = qword_117BB0;
  if (!qword_117BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117BB0);
  }

  return result;
}

unint64_t sub_59430()
{
  result = qword_117BB8;
  if (!qword_117BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117BB8);
  }

  return result;
}

unint64_t sub_59488()
{
  result = qword_117BC0;
  if (!qword_117BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117BC0);
  }

  return result;
}

unint64_t sub_59524()
{
  result = qword_117BD8;
  if (!qword_117BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117BD8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GCSRoundedCornersShape(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GCSRoundedCornersShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GCSRoundedCornersShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_5967C()
{
  result = qword_117BE0;
  if (!qword_117BE0)
  {
    sub_EBC0(&qword_117BE8);
    sub_59274();
    sub_39688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117BE0);
  }

  return result;
}

unint64_t sub_5970C()
{
  result = qword_117BF0;
  if (!qword_117BF0)
  {
    sub_EBC0(&qword_117BF8);
    sub_15FB8(&qword_117C00, &qword_117C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117BF0);
  }

  return result;
}

unint64_t sub_597C8()
{
  result = qword_117C10;
  if (!qword_117C10)
  {
    sub_EBC0(&qword_117C18);
    sub_5932C();
    sub_59380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117C10);
  }

  return result;
}

void type metadata accessor for UIRectCorner()
{
  if (!qword_117C20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_117C20);
    }
  }
}

uint64_t sub_599C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_59A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_59A44()
{
  result = qword_117C48;
  if (!qword_117C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117C48);
  }

  return result;
}

id sub_59ABC()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_5D154(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_59B48()
{
  type metadata accessor for GCSPreferencesStore();
  sub_5D154(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_59BD0()
{
  sub_DC40(&qword_1167F8);
  sub_D78B8();
  return v1;
}

void (*sub_59C84(void *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[2];
  v6 = v1[3];
  v3[8] = v5;
  v3[9] = v6;
  v7 = v1[4];
  v3[10] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  v8 = v7;

  v4[11] = sub_DC40(&qword_1167F8);
  sub_D78B8();
  return sub_5DD14;
}

uint64_t sub_59D48()
{
  sub_DC40(&qword_1167F8);
  sub_D78E8();
  return v1;
}

void (*sub_59DA4(uint64_t *a1))(uint64_t *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 56);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_23098;
}

uint64_t sub_59E58()
{
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

void (*sub_59F0C(uint64_t *a1))(uint64_t *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 80);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_27AA0;
}

uint64_t sub_59FC0()
{
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

uint64_t sub_5A01C()
{
  sub_DC40(&qword_1167F8);
  sub_D78B8();
  return v1;
}

void (*sub_5A0D0(void *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[11];
  v6 = v1[12];
  v3[8] = v5;
  v3[9] = v6;
  v7 = v1[13];
  v3[10] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  v8 = v7;

  v4[11] = sub_DC40(&qword_1167F8);
  sub_D78B8();
  return sub_5A194;
}

uint64_t sub_5A198()
{
  sub_DC40(&qword_1167F8);
  sub_D78E8();
  return v1;
}

uint64_t type metadata accessor for GCSProfileListView()
{
  result = qword_11C5F0;
  if (!qword_11C5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A258(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSProfileListView();
  sub_5D19C(a1, v4, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_116840);
  sub_D78C8();
  return sub_28ACC(a1);
}

void (*sub_5A320(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(type metadata accessor for GCSProfileParams() - 8) + 64);
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
  v5 = sub_DC40(&qword_116840);
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
  v9 = type metadata accessor for GCSProfileListView();
  sub_16054(v1 + *(v9 + 36), v8, &qword_116840);
  sub_D78B8();
  return sub_5A454;
}

void sub_5A454(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_5D19C(*(a1 + 8), v3, type metadata accessor for GCSProfileParams);
    sub_D78C8();
    sub_160BC(v2, &qword_116840);
    sub_28ACC(v4);
  }

  else
  {
    sub_D78C8();
    sub_160BC(v2, &qword_116840);
  }

  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_5A534(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for GCSProfileListView();
  v2 = sub_DC40(&qword_116840);
  return a1(v2);
}

__n128 sub_5A590@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSProfileListView();
  sub_DC40(&qword_116848);
  sub_D78B8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_5A64C()
{
  v1 = v0 + *(type metadata accessor for GCSProfileListView() + 40);
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v26 = *(v1 + 96);
  v27 = v2;
  v4 = *(v1 + 112);
  v28 = *(v1 + 128);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  v22 = *(v1 + 32);
  v23 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = v8;
  v9 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v9;
  v17 = v26;
  v18 = v4;
  v19 = *(v1 + 128);
  v13 = v22;
  v14 = v7;
  v15 = v24;
  v16 = v3;
  v29 = *(v1 + 144);
  v20 = *(v1 + 144);
  v11 = v21[0];
  v12 = v6;
  sub_16054(v21, v30, &qword_116848);
  sub_DC40(&qword_116848);
  sub_D78C8();
  v30[6] = v17;
  v30[7] = v18;
  v30[8] = v19;
  v31 = v20;
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v30[5] = v16;
  v30[0] = v11;
  v30[1] = v12;
  return sub_160BC(v30, &qword_116848);
}

void (*sub_5A794(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x510uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 152;
  v7 = (v2 + *(type metadata accessor for GCSProfileListView() + 40));
  v9 = v7[6];
  v8 = v7[7];
  v10 = v7[5];
  *(v5 + 96) = v9;
  *(v5 + 112) = v8;
  v11 = v7[7];
  *(v5 + 128) = v7[8];
  v13 = v7[2];
  v12 = v7[3];
  v14 = v7[1];
  *(v5 + 32) = v13;
  *(v5 + 48) = v12;
  v15 = v7[3];
  v17 = v7[4];
  v16 = v7[5];
  *(v5 + 64) = v17;
  *(v5 + 80) = v16;
  v18 = v7[1];
  v19 = *v7;
  *v5 = *v7;
  *(v5 + 16) = v18;
  *(v5 + 248) = v9;
  v20 = v7[8];
  *(v6 + 112) = v11;
  *(v6 + 128) = v20;
  *(v5 + 184) = v13;
  *(v5 + 200) = v15;
  *(v5 + 216) = v17;
  *(v5 + 232) = v10;
  *(v5 + 152) = v19;
  *(v5 + 144) = *(v7 + 18);
  *(v5 + 296) = *(v7 + 18);
  *(v5 + 168) = v14;
  sub_16054(v5, v5 + 304, &qword_116848);
  *(v5 + 1288) = sub_DC40(&qword_116848);
  sub_D78B8();
  return sub_23A8C;
}

double sub_5A8C8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSProfileListView();
  sub_DC40(&qword_116848);
  sub_D78E8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_5A98C()
{
  sub_A9308(0xD000000000000012, 0x80000000000E5CE0);
  sub_16000();
  sub_D73B8();
  sub_A9308(0xD000000000000011, 0x80000000000E5D00);
  sub_D73B8();
  sub_DC40(&qword_117C78);
  sub_15FB8(&qword_117C80, &qword_117C78);
  return sub_D79B8();
}

uint64_t sub_5AAE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for GCSProfileListView();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3 - 8);
  v40 = sub_DC40(&qword_116818);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_DC40(&qword_117D30);
  v35 = *(v9 - 8);
  v10 = v35;
  v36 = v9;
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = *(a1 + 32);
  v45 = *(a1 + 16);
  v46 = v16;
  sub_DC40(&qword_1167F8);
  sub_D78E8();
  v45 = v43;
  v46 = v44;
  v42 = a1;
  sub_450A0(0, &qword_118F10);
  sub_DC40(&qword_117D38);
  sub_5CDBC();
  sub_5CE24();
  v34 = v15;
  sub_D7338();
  sub_5D19C(a1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileListView);
  v17 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v18 = swift_allocObject();
  sub_5DAE0(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for GCSProfileListView);
  v32 = v8;
  sub_D7848();
  v19 = *(v10 + 16);
  v33 = v12;
  v20 = v15;
  v21 = v36;
  v19(v12, v20, v36);
  v23 = v38;
  v22 = v39;
  v24 = *(v38 + 16);
  v25 = v8;
  v26 = v40;
  v24(v39, v25, v40);
  v27 = v41;
  v19(v41, v12, v21);
  v28 = sub_DC40(&qword_117DB0);
  v24(&v27[*(v28 + 48)], v22, v26);
  v29 = *(v23 + 8);
  v29(v32, v26);
  v30 = *(v35 + 8);
  v30(v34, v21);
  v29(v22, v26);
  return (v30)(v33, v21);
}

uint64_t sub_5AF58@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for GCSProfileListView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_DC40(&qword_117D58);
  v40 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v38 = v32 - v8;
  v9 = a1;
  v10 = *a1;
  if (v10)
  {
    v11 = [v10 sortedProfiles];
    sub_450A0(0, &qword_118F10);
    v12 = sub_D7D28();

    if (v12 >> 62)
    {
      v13 = sub_D8078();
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    }

    if (v13)
    {
      v14 = [v10 sortedProfiles];
      v15 = sub_D7D28();

      v45 = v15;
      KeyPath = swift_getKeyPath();
      v35 = v9;
      v36 = type metadata accessor for GCSProfileListView;
      sub_5D19C(v9, v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileListView);
      v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v17 = swift_allocObject();
      v37 = v6;
      v33 = type metadata accessor for GCSProfileListView;
      sub_5DAE0(v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GCSProfileListView);
      v32[2] = sub_DC40(&qword_117DB8);
      v32[1] = sub_DC40(&qword_117DC0);
      v32[0] = sub_15FB8(&qword_117DC8, &qword_117DB8);
      sub_5CDBC();
      v18 = sub_EBC0(&qword_117D70);
      v19 = sub_D6D68();
      v20 = sub_5D070();
      v21 = v39;
      v22 = v20;
      v23 = sub_5D154(&qword_116E28, &type metadata accessor for PlainButtonStyle);
      v41 = v18;
      v42 = v19;
      v43 = v22;
      v44 = v23;
      swift_getOpaqueTypeConformance2();
      v24 = v38;
      sub_D7988();
      sub_5D19C(v35, v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
      v25 = swift_allocObject();
      sub_5DAE0(v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v16, v33);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_5D530;
      *(v26 + 24) = v25;
      v27 = v37;
      v28 = (v24 + *(v37 + 36));
      *v28 = sub_5D5D8;
      v28[1] = v26;
      sub_5D600(v24, v21);
      return (*(v40 + 56))(v21, 0, 1, v27);
    }

    else
    {
      v30 = v39;
      v31 = *(v40 + 56);

      return v31(v30, 1, 1, v6);
    }
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_5D154(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_5B45C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v22[0] = sub_D6D68();
  v5 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GCSProfileListView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_DC40(&qword_117D70);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  v15 = *a1;
  sub_5D19C(a2, v11, type metadata accessor for GCSProfileListView);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_5DAE0(v11, v18 + v16, type metadata accessor for GCSProfileListView);
  *(v18 + v17) = v15;
  v22[4] = v15;
  v22[5] = a2;
  v19 = v15;
  sub_DC40(&qword_117DD0);
  sub_5D960();
  sub_D7848();
  v14[*(v12 + 36)] = [v19 customizable] ^ 1;
  sub_D6D58();
  sub_5D070();
  sub_5D154(&qword_116E28, &type metadata accessor for PlainButtonStyle);
  v20 = v22[0];
  sub_D7428();
  (*(v5 + 8))(v7, v20);
  return sub_160BC(v14, &qword_117D70);
}

uint64_t sub_5B778(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  v13 = *(a1 + 104);
  v53 = *(a1 + 88);
  *&v54 = v13;
  *&v44[0] = a2;
  v14 = a2;
  sub_DC40(&qword_1167F8);
  sub_D78C8();
  sub_D20B4(v12);
  v15 = type metadata accessor for GCSProfileListView();
  sub_5D19C(v12, v9, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_116840);
  sub_D78C8();
  sub_28ACC(v12);
  sub_D78B8();
  if (*a1)
  {
    v16 = [*a1 controllers];
    sub_450A0(0, &qword_117060);
    v17 = sub_D7D28();

    sub_50648(v6, 0, v17, v63);
    v18 = a1 + *(v15 + 40);
    v19 = *(v18 + 112);
    v20 = *(v18 + 80);
    v49 = *(v18 + 96);
    v50 = v19;
    v21 = *(v18 + 112);
    v51 = *(v18 + 128);
    v22 = *(v18 + 48);
    v23 = *(v18 + 16);
    v45 = *(v18 + 32);
    v46 = v22;
    v24 = *(v18 + 48);
    v25 = *(v18 + 80);
    v47 = *(v18 + 64);
    v48 = v25;
    v26 = *(v18 + 16);
    v44[0] = *v18;
    v44[1] = v26;
    v40 = v49;
    v41 = v21;
    v42 = *(v18 + 128);
    v36 = v45;
    v37 = v24;
    v38 = v47;
    v39 = v20;
    v52 = *(v18 + 144);
    v43 = *(v18 + 144);
    v34 = v44[0];
    v35 = v23;
    v32[6] = v63[6];
    v32[7] = v63[7];
    v33 = v64;
    v32[2] = v63[2];
    v32[3] = v63[3];
    v32[4] = v63[4];
    v32[5] = v63[5];
    v32[0] = v63[0];
    v32[1] = v63[1];
    sub_16054(v44, &v53, &qword_116848);
    sub_DC40(&qword_116848);
    sub_D78C8();
    v59 = v40;
    v60 = v41;
    v61 = v42;
    v62 = v43;
    v55 = v36;
    v56 = v37;
    v57 = v38;
    v58 = v39;
    v53 = v34;
    v54 = v35;
    sub_160BC(&v53, &qword_116848);
    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    *&v34 = *(a1 + 64);
    *(&v34 + 1) = v27;
    LOBYTE(v35) = v28;
    LOBYTE(v32[0]) = 0;
    sub_DC40(&qword_116510);
    sub_D78C8();
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    *&v34 = *(a1 + 40);
    *(&v34 + 1) = v29;
    LOBYTE(v35) = v30;
    LOBYTE(v32[0]) = 1;
    return sub_D78C8();
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_5D154(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_5BB38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v53 = a3;
  v4 = sub_D6998();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_116840);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for GCSProfileListSectionViewRow();
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  *&v64 = *(a2 + 40);
  *(&v64 + 1) = v14;
  LOBYTE(v65) = v15;
  sub_DC40(&qword_116510);
  sub_D78E8();
  v50 = *(&v54 + 1);
  v51 = v54;
  v49 = v55;
  v16 = *(a2 + 72);
  v17 = *(a2 + 80);
  *&v64 = *(a2 + 64);
  *(&v64 + 1) = v16;
  LOBYTE(v65) = v17;
  sub_D78E8();
  v47 = *(&v54 + 1);
  v48 = v54;
  v46 = v55;
  v18 = *(a2 + 104);
  v64 = *(a2 + 88);
  v65 = v18;
  sub_DC40(&qword_1167F8);
  sub_D78E8();
  v44 = *(&v54 + 1);
  v45 = v54;
  v43 = v55;
  v19 = type metadata accessor for GCSProfileListView();
  sub_D78E8();
  v20 = (a2 + *(v19 + 40));
  v21 = v20[7];
  v60 = v20[6];
  v61 = v21;
  v62 = v20[8];
  v63 = *(v20 + 18);
  v22 = v20[3];
  v56 = v20[2];
  v57 = v22;
  v23 = v20[5];
  v58 = v20[4];
  v59 = v23;
  v24 = v20[1];
  v54 = *v20;
  v55 = v24;
  sub_DC40(&qword_116848);
  sub_D78E8();
  if (*a2)
  {
    v25 = *a2;
    v26 = v52;
    v27 = [v52 uuid];
    sub_D6978();

    v28 = [v25 profileUsageStats];
    type metadata accessor for GCSProfileUsageStats();
    sub_5D154(&qword_117DE8, &type metadata accessor for UUID);
    v29 = sub_D7B48();

    if (*(v29 + 16) && (v30 = sub_5DA48(v7), (v31 & 1) != 0))
    {
      v32 = *(v5 + 8);
      v33 = *(*(v29 + 56) + 8 * v30);
      v32(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      v34 = sub_A6918();
      v33 = v34;
    }

    v35 = sub_79EF0(v34);
    v37 = v36;
    v38 = v26;
    *(&v41 + 1) = v44;
    *&v41 = v45;
    sub_79F68(v35, v37, 0, v38, v51, v50, v49, v48, v13, v47, v46, v41, v43, v10, &v64, v33);
    v39 = v53;
    sub_5DAE0(v13, v53, type metadata accessor for GCSProfileListSectionViewRow);
    result = sub_DC40(&qword_117DD0);
    *(v39 + *(result + 36)) = 0;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_5D154(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

void sub_5BFF4(uint64_t a1, id *a2)
{
  v3 = sub_D6A38();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D69D8();
  if (v8)
  {
    return;
  }

  v9 = *a2;
  if (!*a2)
  {
LABEL_14:
    type metadata accessor for GCSPreferencesStore();
    sub_5D154(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = [*a2 sortedProfiles];
  sub_450A0(0, &qword_118F10);
  v12 = sub_D7D28();

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_D7FF8();
    goto LABEL_7;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(v12 + 8 * v10 + 32);
LABEL_7:
  v14 = v13;

  v15 = sub_2E18C();
  (*(v4 + 16))(v6, v15, v3);
  v16 = v14;
  v17 = sub_D6A18();
  v18 = sub_D7E38();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_0, v17, v18, "Remove selected profile: %@", v19, 0xCu);
    sub_160BC(v20, &qword_119120);
  }

  (*(v4 + 8))(v6, v3);
  v22 = v9;
  v23 = static MacParity.Pantheon.getter();
  (*&stru_2E8.segname[swift_isaMask & *v22])(v16, v23 & 1);
}

uint64_t sub_5C320(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v29 - v6;
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  v11 = *(a1 + 104);
  v50 = *(a1 + 88);
  *&v51 = v11;
  *&v41[0] = 0;
  sub_DC40(&qword_1167F8);
  sub_D78C8();
  sub_D1AF8(v10);
  v12 = type metadata accessor for GCSProfileListView();
  sub_5D19C(v10, v7, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_116840);
  sub_D78C8();
  sub_28ACC(v10);
  sub_D1AF8(v4);
  if (*a1)
  {
    v13 = [*a1 controllers];
    sub_450A0(0, &qword_117060);
    v14 = sub_D7D28();

    sub_50648(v4, 0, v14, v60);
    v15 = a1 + *(v12 + 40);
    v16 = *(v15 + 112);
    v17 = *(v15 + 80);
    v46 = *(v15 + 96);
    v47 = v16;
    v18 = *(v15 + 112);
    v48 = *(v15 + 128);
    v19 = *(v15 + 48);
    v20 = *(v15 + 16);
    v42 = *(v15 + 32);
    v43 = v19;
    v21 = *(v15 + 48);
    v22 = *(v15 + 80);
    v44 = *(v15 + 64);
    v45 = v22;
    v23 = *(v15 + 16);
    v41[0] = *v15;
    v41[1] = v23;
    v37 = v46;
    v38 = v18;
    v39 = *(v15 + 128);
    v33 = v42;
    v34 = v21;
    v35 = v44;
    v36 = v17;
    v49 = *(v15 + 144);
    v40 = *(v15 + 144);
    v31 = v41[0];
    v32 = v20;
    v29[6] = v60[6];
    v29[7] = v60[7];
    v30 = v61;
    v29[2] = v60[2];
    v29[3] = v60[3];
    v29[4] = v60[4];
    v29[5] = v60[5];
    v29[0] = v60[0];
    v29[1] = v60[1];
    sub_16054(v41, &v50, &qword_116848);
    sub_DC40(&qword_116848);
    sub_D78C8();
    v56 = v37;
    v57 = v38;
    v58 = v39;
    v59 = v40;
    v52 = v33;
    v53 = v34;
    v54 = v35;
    v55 = v36;
    v50 = v31;
    v51 = v32;
    sub_160BC(&v50, &qword_116848);
    v24 = *(a1 + 72);
    v25 = *(a1 + 80);
    *&v31 = *(a1 + 64);
    *(&v31 + 1) = v24;
    LOBYTE(v32) = v25;
    LOBYTE(v29[0]) = 1;
    sub_DC40(&qword_116510);
    sub_D78C8();
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    *&v31 = *(a1 + 40);
    *(&v31 + 1) = v26;
    LOBYTE(v32) = v27;
    LOBYTE(v29[0]) = 1;
    return sub_D78C8();
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_5D154(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_5C6BC@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0x5F454C49464F5250, 0xEB00000000444441);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_5C734()
{
  type metadata accessor for GCSPreferencesStore();
  sub_5D154(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

uint64_t sub_5C7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  v17 = type metadata accessor for GCSProfileListView();
  sub_26780(a15, a9 + v17[9]);
  v18 = a9 + v17[10];
  v19 = *(a16 + 112);
  *(v18 + 96) = *(a16 + 96);
  *(v18 + 112) = v19;
  *(v18 + 128) = *(a16 + 128);
  *(v18 + 144) = *(a16 + 144);
  v20 = *(a16 + 48);
  *(v18 + 32) = *(a16 + 32);
  *(v18 + 48) = v20;
  v21 = *(a16 + 80);
  *(v18 + 64) = *(a16 + 64);
  *(v18 + 80) = v21;
  v22 = *(a16 + 16);
  *v18 = *a16;
  *(v18 + 16) = v22;
  v23 = a9 + v17[11];
  result = sub_D77D8();
  *v23 = v25;
  *(v23 + 8) = v26;
  return result;
}

uint64_t sub_5C8B0()
{
  sub_A9308(0xD000000000000012, 0x80000000000E5CE0);
  sub_16000();
  sub_D73B8();
  sub_A9308(0xD000000000000011, 0x80000000000E5D00);
  sub_D73B8();
  sub_DC40(&qword_117C78);
  sub_15FB8(&qword_117C80, &qword_117C78);
  return sub_D79B8();
}

uint64_t sub_5CA18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_DC40(&qword_116840);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5CAE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_116840);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_5CB98()
{
  sub_26BDC();
  if (v0 <= 0x3F)
  {
    sub_26C70();
    if (v1 <= 0x3F)
    {
      sub_26D2C(319, &qword_116918, &type metadata for Bool, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_26CD4();
        if (v3 <= 0x3F)
        {
          sub_26D2C(319, &qword_116930, &type metadata for GCSProfileViewData, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            sub_26D2C(319, &qword_117340, &type metadata for Bool, &type metadata accessor for State);
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

unint64_t sub_5CCF8()
{
  result = qword_117D20;
  if (!qword_117D20)
  {
    sub_EBC0(&qword_117D28);
    sub_15FB8(&qword_117C80, &qword_117C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117D20);
  }

  return result;
}

unint64_t sub_5CDBC()
{
  result = qword_117D40;
  if (!qword_117D40)
  {
    sub_450A0(255, &qword_118F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117D40);
  }

  return result;
}

unint64_t sub_5CE24()
{
  result = qword_117D48;
  if (!qword_117D48)
  {
    sub_EBC0(&qword_117D38);
    sub_5CEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117D48);
  }

  return result;
}

unint64_t sub_5CEA8()
{
  result = qword_117D50;
  if (!qword_117D50)
  {
    sub_EBC0(&qword_117D58);
    sub_5CF60();
    sub_15FB8(&qword_117DA0, &qword_117DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117D50);
  }

  return result;
}

unint64_t sub_5CF60()
{
  result = qword_117D60;
  if (!qword_117D60)
  {
    sub_EBC0(&qword_117D68);
    sub_EBC0(&qword_117D70);
    sub_D6D68();
    sub_5D070();
    sub_5D154(&qword_116E28, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117D60);
  }

  return result;
}

unint64_t sub_5D070()
{
  result = qword_117D78;
  if (!qword_117D78)
  {
    sub_EBC0(&qword_117D70);
    sub_15FB8(&qword_117D80, &qword_117D88);
    sub_15FB8(&qword_117D90, &qword_117D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117D78);
  }

  return result;
}

uint64_t sub_5D154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5D19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5D208()
{
  v1 = *(type metadata accessor for GCSProfileListView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_5C320(v2);
}

uint64_t sub_5D268@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GCSProfileListView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_5B45C(a1, v6, a2);
}

uint64_t sub_5D2E8()
{
  v1 = (type metadata accessor for GCSProfileListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[11];

  v6 = v5 + *(sub_DC40(&qword_116840) + 32);
  v7 = sub_D6998();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for GCSProfileParams();

  v8 = v0 + v3 + v1[12];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_5D530(uint64_t a1)
{
  v3 = *(type metadata accessor for GCSProfileListView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_5BFF4(a1, v4);
}

uint64_t sub_5D5A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5D600(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117D58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5D670()
{
  v1 = (type metadata accessor for GCSProfileListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[11];

  v7 = v6 + *(sub_DC40(&qword_116840) + 32);
  v8 = sub_D6998();
  (*(*(v8 - 8) + 8))(v7, v8);
  type metadata accessor for GCSProfileParams();

  v9 = v5 + v1[12];

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_5D8CC()
{
  v1 = *(type metadata accessor for GCSProfileListView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_5B778(v0 + v2, v3);
}

unint64_t sub_5D960()
{
  result = qword_117DD8;
  if (!qword_117DD8)
  {
    sub_EBC0(&qword_117DD0);
    sub_5D154(&qword_117DE0, type metadata accessor for GCSProfileListSectionViewRow);
    sub_15FB8(&qword_1167B8, &qword_1167C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117DD8);
  }

  return result;
}

unint64_t sub_5DA48(uint64_t a1)
{
  sub_D6998();
  sub_5D154(&qword_117DE8, &type metadata accessor for UUID);
  v2 = sub_D7B78();

  return sub_5DB48(a1, v2);
}

uint64_t sub_5DAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_5DB48(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_D6998();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_5D154(&unk_119150, &type metadata accessor for UUID);
      v16 = sub_D7BA8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_5DD40()
{
  sub_DC40(&qword_116F98);
  sub_D78B8();
  return v1;
}

uint64_t (*sub_5DDF4(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[3];
  v6 = v1[4];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[5];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_116FA0);
  v4[13] = sub_DC40(&qword_116F98);
  sub_D78B8();
  return sub_5DED4;
}

uint64_t sub_5DED8()
{
  sub_DC40(&qword_116F98);
  sub_D78E8();
  return v1;
}

uint64_t sub_5DF34()
{
  sub_DC40(&qword_116F98);
  sub_D78B8();
  return v1;
}

uint64_t (*sub_5DFE8(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[6];
  v6 = v1[7];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[8];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_116FA0);
  v4[13] = sub_DC40(&qword_116F98);
  sub_D78B8();
  return sub_62004;
}

void sub_5E0C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  *(v2 + 72) = *(v2 + 64);
  *(v2 + 32) = *(v2 + 88);
  if (a2)
  {

    sub_D78C8();
    sub_164A0(v2 + 48);

    sub_160BC(v2 + 56, &qword_116FA0);
  }

  else
  {
    sub_D78C8();
    sub_164A0(v2 + 48);

    sub_160BC(v2 + 56, &qword_116FA0);
  }

  free(v2);
}

uint64_t sub_5E1BC()
{
  sub_DC40(&qword_116F98);
  sub_D78E8();
  return v1;
}

uint64_t sub_5E218@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v31 = sub_DC40(&qword_117DF0);
  v27 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v26 - v3;
  v28 = sub_DC40(&qword_117DF8);
  __chkstk_darwin(v28);
  v6 = &v26 - v5;
  v29 = sub_DC40(&qword_117E00);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v26 - v7;
  v9 = sub_D6F68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v2 + 8);
  v13 = *v2;
  v34 = *v2;
  if (v35 == 1)
  {
    if ((v13 & 1) == 0)
    {
LABEL_3:
      v32 = *(v2 + 48);
      v33 = *(v2 + 64);
      sub_DC40(&qword_116F98);
      sub_D78E8();
      v14 = swift_allocObject();
      v15 = *(v2 + 48);
      *(v14 + 48) = *(v2 + 32);
      *(v14 + 64) = v15;
      *(v14 + 80) = *(v2 + 64);
      v16 = *(v2 + 16);
      *(v14 + 16) = *v2;
      *(v14 + 32) = v16;
      sub_3570C(v2, &v32);
      sub_DC40(&qword_1165D0);
      sub_5F20C();
      sub_1EDE0();
      sub_5F2F8();
      sub_D7998();
      v17 = v27;
      v18 = v31;
      (*(v27 + 16))(v6, v4, v31);
      swift_storeEnumTagMultiPayload();
      sub_5F3D0();
      sub_5F480();
      sub_D70B8();
      return (*(v17 + 8))(v4, v18);
    }
  }

  else
  {

    sub_D7E28();
    v20 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_160BC(&v34, &qword_1165C8);
    (*(v10 + 8))(v12, v9);
    if (v32 != 1)
    {
      goto LABEL_3;
    }
  }

  v32 = *(v2 + 48);
  v33 = *(v2 + 64);
  sub_DC40(&qword_116F98);
  sub_D78E8();
  v21 = swift_allocObject();
  v22 = *(v2 + 48);
  *(v21 + 48) = *(v2 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v2 + 64);
  v23 = *(v2 + 16);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v23;
  sub_3570C(v2, &v32);
  sub_DC40(&qword_117E40);
  sub_5F20C();
  sub_15FB8(&qword_117E38, &qword_117E40);
  sub_5F2F8();
  sub_D7998();
  v24 = v26;
  v25 = v29;
  (*(v26 + 16))(v6, v8, v29);
  swift_storeEnumTagMultiPayload();
  sub_5F3D0();
  sub_5F480();
  sub_D70B8();
  return (*(v24 + 8))(v8, v25);
}

__n128 sub_5E7D8@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v100 = *a1;
  v101 = v5;
  v102 = a1[2];
  v103 = *(a1 + 6);
  v6 = *(v2 + 32);
  swift_getKeyPath();
  v7 = a1[1];
  v104 = *a1;
  v105 = v7;
  v106 = a1[2];
  *&v107 = *(a1 + 6);
  sub_DC40(&qword_117E20);
  sub_D78D8();

  *v69 = v84;
  sub_DC40(&qword_116738);
  sub_D78B8();

  if (*(v6 + 16))
  {
    v8 = sub_1ED4C(v74, *(&v74 + 1));
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v8);
      swift_getKeyPath();
      v12 = a1[1];
      v96 = *a1;
      v97 = v12;
      v98 = a1[2];
      v99 = *(a1 + 6);
      v13 = v11;
      sub_D78D8();

      v88 = v92;
      v89 = v93;
      v90 = v94;
      v91 = v95;
      sub_D78B8();

      if (*(v6 + 16))
      {
        v14 = sub_1ED4C(v86, v87);
        v16 = v15;

        if (v16)
        {
          v62 = *(*(v6 + 56) + 8 * v14);
          v60 = sub_D6FB8();
          v17 = [v13 sfSymbolsName];
          sub_D7C18();

          v66 = sub_D76F8();
          v61 = v13;
          v18 = [v13 localizedName];
          sub_D7C18();

          sub_16000();
          v19 = sub_D73B8();
          v63 = v20;
          v64 = v19;
          v59 = v21;
          v65 = v22;
          swift_getKeyPath();
          v104 = v100;
          v105 = v101;
          v106 = v102;
          *&v107 = v103;
          sub_DC40(&qword_117E20);
          sub_D78D8();

          v74 = v84;
          v75 = *v85;
          sub_DC40(&qword_116738);
          sub_D78B8();

          swift_getKeyPath();
          v84 = v100;
          *v85 = v101;
          *&v85[16] = v102;
          *&v85[32] = v103;
          sub_D78D8();

          v115 = v70;
          v116 = v71;
          sub_D78B8();

          if (v117 == v113 && v118 == v114)
          {
          }

          else
          {
            v27 = sub_D8118();

            if ((v27 & 1) == 0)
            {
              v41 = [v62 sfSymbolsName];
              sub_D7C18();

              v42 = sub_D76F8();
              v68 = sub_D7198();
              v43 = [v62 localizedName];
              v44 = sub_D7C18() >> 32;
              v46 = v45;

              DWORD1(v104) = v44;
              *(&v104 + 1) = v46;
              v47 = sub_D73B8();
              v49 = v48;
              v51 = v50;
              LODWORD(v104) = sub_D7198();
              v52 = sub_D7388();
              v54 = v53;
              v56 = v55;
              v58 = v57;
              sub_1F8F0(v47, v49, v51 & 1);

              sub_1F900(v52, v54, v56 & 1);

              sub_1F900(v52, v54, v56 & 1);

              sub_1F8F0(v52, v54, v56 & 1);

              *&v84 = v42;
              *(&v84 + 1) = v68;
              *v85 = v52;
              *&v85[8] = v54;
              *&v85[16] = v56 & 1;
              *&v85[24] = v58;
              v85[32] = 1;
              sub_DC40(&qword_116658);
              sub_15FB8(&qword_116660, &qword_116658);
              sub_D70B8();
              sub_1F8F0(v52, v54, v56 & 1);

              goto LABEL_17;
            }
          }

          DWORD1(v104) = sub_A9308(0xD000000000000011, 0x80000000000E4E70) >> 32;
          *(&v104 + 1) = v28;
          v29 = sub_D73B8();
          v31 = v30;
          v33 = v32;
          LODWORD(v104) = sub_D7198();
          v34 = sub_D7388();
          v36 = v35;
          v38 = v37;
          v40 = v39;
          sub_1F8F0(v29, v31, v33 & 1);

          *&v84 = v34;
          *(&v84 + 1) = v36;
          *v85 = v38 & 1;
          *&v85[8] = v40;
          memset(&v85[16], 0, 17);
          sub_DC40(&qword_116658);
          sub_15FB8(&qword_116660, &qword_116658);
          sub_D70B8();
LABEL_17:
          v67 = v104;
          LOBYTE(v104) = v59 & 1;
          LOBYTE(v84) = 0;
          v69[0] = v107;

          sub_1F900(v64, v63, v59 & 1);

          sub_1F910(v67, *(&v67 + 1), v105.n128_i64[0], v105.n128_i64[1], v106, *(&v106 + 1), v107);
          sub_1F980(v67, *(&v67 + 1), v105.n128_i64[0], v105.n128_i64[1], v106, *(&v106 + 1), v107);
          sub_1F8F0(v64, v63, v59 & 1);

          *&v70 = v66;
          *(&v70 + 1) = v64;
          *&v71 = v63;
          BYTE8(v71) = v59 & 1;
          *(&v71 + 9) = v84;
          HIDWORD(v71) = *(&v84 + 3);
          *&v73[1] = *v69;
          *&v73[4] = *&v69[3];
          *&v72 = v65;
          *(&v72 + 1) = 0x402E000000000000;
          v73[0] = 0;
          *&v73[24] = v105;
          *&v73[8] = v67;
          *&v73[40] = v106;
          v73[56] = v107;
          *&v74 = v66;
          *(&v74 + 1) = v64;
          *&v75 = v63;
          BYTE8(v75) = v59 & 1;
          HIDWORD(v75) = *(&v84 + 3);
          *(&v75 + 9) = v84;
          v76 = v65;
          v77 = 0x402E000000000000;
          v78 = 0;
          *v79 = *v69;
          *&v79[3] = *&v69[3];
          v80 = v67;
          v81 = v105;
          v82 = v106;
          v83 = v107;
          sub_16054(&v70, &v104, &qword_1165B0);
          sub_160BC(&v74, &qword_1165B0);

          *&v69[55] = *v73;
          *&v69[71] = *&v73[16];
          *&v69[87] = *&v73[32];
          *&v69[7] = v70;
          *&v69[23] = v71;
          *&v69[39] = v72;
          v84 = v60;
          v85[0] = 1;
          *&v85[33] = *&v69[32];
          *&v85[17] = *&v69[16];
          *&v85[1] = *v69;
          *&v85[97] = *&v73[41];
          *&v85[81] = *&v69[80];
          *&v85[65] = *&v69[64];
          *&v85[49] = *&v69[48];
          nullsub_1(&v84);
          v110 = *&v85[80];
          v111 = *&v85[96];
          v112 = v85[112];
          v106 = *&v85[16];
          v107 = *&v85[32];
          v108 = *&v85[48];
          v109 = *&v85[64];
          v104 = v84;
          v105 = *v85;
          goto LABEL_13;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

  sub_1EDC4(&v104);
LABEL_13:
  v23 = v111;
  *(a2 + 96) = v110;
  *(a2 + 112) = v23;
  *(a2 + 128) = v112;
  v24 = v107;
  *(a2 + 32) = v106;
  *(a2 + 48) = v24;
  v25 = v109;
  *(a2 + 64) = v108;
  *(a2 + 80) = v25;
  result = v105;
  *a2 = v104;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_5F20C()
{
  result = qword_117E08;
  if (!qword_117E08)
  {
    sub_EBC0(&qword_116F98);
    sub_15FB8(&qword_117050, &qword_116FA0);
    sub_15FB8(&qword_117E10, &qword_116FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117E08);
  }

  return result;
}

unint64_t sub_5F2F8()
{
  result = qword_117E18;
  if (!qword_117E18)
  {
    sub_EBC0(&qword_117E20);
    sub_5F37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117E18);
  }

  return result;
}

unint64_t sub_5F37C()
{
  result = qword_117E28;
  if (!qword_117E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117E28);
  }

  return result;
}

unint64_t sub_5F3D0()
{
  result = qword_117E30;
  if (!qword_117E30)
  {
    sub_EBC0(&qword_117E00);
    sub_15FB8(&qword_117E38, &qword_117E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117E30);
  }

  return result;
}

unint64_t sub_5F480()
{
  result = qword_117E48;
  if (!qword_117E48)
  {
    sub_EBC0(&qword_117DF0);
    sub_1EDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117E48);
  }

  return result;
}

uint64_t sub_5F504()
{
  sub_16AA0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_5F578()
{
  swift_getKeyPath();
  sub_DC40(&qword_117E20);
  sub_D78D8();

  sub_D6FB8();
  v1 = *(v0 + 32);
  swift_getKeyPath();
  sub_DC40(&qword_117E20);
  sub_D78D8();

  sub_DC40(&qword_116738);
  sub_D78B8();

  if (*(v1 + 16))
  {
    v2 = sub_1ED4C(v14, v15);
    v4 = v3;

    if (v4)
    {
      v5 = *(*(v1 + 56) + 8 * v2);
      v6 = [v5 sfSymbolsName];
      sub_D7C18();

      sub_D76F8();
      v7 = [v5 localizedName];
      sub_D7C18();

      sub_16000();
      v8 = sub_D73B8();
      v10 = v9;
      v12 = v11;

      v12 &= 1u;
      sub_1F900(v8, v10, v12);

      sub_1F8F0(v8, v10, v12);
    }
  }

  else
  {
  }

  sub_DC40(&qword_117E60);
  sub_DC40(&qword_117E68);
  sub_15FB8(&qword_117E70, &qword_117E60);
  sub_5FCC4();
  return sub_D7878();
}

uint64_t sub_5F914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = swift_getKeyPath();
  *a8 = result;
  *(a8 + 8) = 0;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  return result;
}

unint64_t sub_5FA0C()
{
  result = qword_117E50;
  if (!qword_117E50)
  {
    sub_EBC0(&qword_117E58);
    sub_5F3D0();
    sub_5F480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117E50);
  }

  return result;
}

uint64_t sub_5FA98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v11 = *(v2 + 24);
  v12 = *(v2 + 40);
  sub_DC40(&qword_116F98);
  sub_D78E8();
  *&v11 = sub_5FDE0(v13, v14, v15);
  sub_5FD74(&v11);

  v13 = v11;
  v3 = swift_allocObject();
  *(v3 + 16) = *v2;
  v5 = *(v2 + 32);
  v4 = *(v2 + 48);
  v6 = *(v2 + 16);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 48) = v5;
  *(v3 + 64) = v4;
  *(v3 + 32) = v6;
  v8 = *(v1 + 16);
  v7 = *(v1 + 32);
  v9 = *(v1 + 48);
  *(v3 + 88) = *v1;
  *(v3 + 136) = v9;
  *(v3 + 120) = v7;
  *(v3 + 104) = v8;
  sub_3570C(v2, &v11);
  sub_16054(v1, &v11, &qword_117E20);
  sub_DC40(&qword_117E80);
  sub_DC40(&qword_1166D0);
  sub_15FB8(&qword_117E88, &qword_117E80);
  sub_15FB8(&qword_1166C8, &qword_1166D0);
  sub_5F2F8();
  return sub_D7998();
}

unint64_t sub_5FCC4()
{
  result = qword_117E78;
  if (!qword_117E78)
  {
    sub_EBC0(&qword_117E68);
    sub_15FB8(&qword_1166C8, &qword_1166D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117E78);
  }

  return result;
}

Swift::Int sub_5FD74(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_61E9C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_5FF38(v5);
  *a1 = v2;
  return result;
}

void *sub_5FDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_342EC();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = v6;
  v8 = sub_5FEA0(v6, 0);

  v9 = sub_61CE0(&v11, (v8 + 4), v7, a1, a2, a3);

  if (v9 != v7)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *sub_5FEA0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_DC40(&qword_117E90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

Swift::Int sub_5FF38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_D80E8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_DC40(&qword_117E20);
        v5 = sub_D7D58();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_6033C(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_60040(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_60040(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 56 * a3 - 56;
    v5 = result - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v17 = v5;
    v21 = v5;
    while (1)
    {
      swift_getKeyPath();

      sub_DC40(&qword_117E20);
      sub_D78D8();

      sub_DC40(&qword_116758);
      sub_D78B8();

      swift_getKeyPath();
      sub_D78D8();

      sub_D78B8();

      if (v23 >= v22)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 56;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v6 = *(v4 + 64);
      v7 = *(v4 + 72);
      v8 = *(v4 + 16);
      v9 = *(v4 + 48);
      v10 = *(v4 + 56);
      *(v4 + 56) = *v4;
      v12 = *(v4 + 80);
      v11 = *(v4 + 88);
      v13 = *(v4 + 96);
      v14 = *(v4 + 104);
      *(v4 + 72) = v8;
      *(v4 + 88) = *(v4 + 32);
      *(v4 + 104) = v9;
      *v4 = v10;
      *(v4 + 8) = v6;
      *(v4 + 16) = v7;
      *(v4 + 24) = v12;
      *(v4 + 32) = v11;
      *(v4 + 40) = v13;
      *(v4 + 48) = v14;
      v4 -= 56;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6033C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_91:
    v4 = *v8;
    if (!*v8)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_93;
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  v96 = result;
  while (1)
  {
    v12 = v10;
    v98 = v10;
    if (v10 + 1 >= v9)
    {
      v15 = v10 + 1;
    }

    else
    {
      v102 = v9;
      v106 = *v7;

      swift_getKeyPath();
      sub_DC40(&qword_117E20);
      sub_D78D8();

      sub_DC40(&qword_116758);
      sub_D78B8();

      swift_getKeyPath();
      sub_D78D8();

      v4 = v110;
      sub_D78B8();

      if (v6)
      {
      }

      v13 = v10 + 2;
      v14 = v106 + 56 * v10 + 80;
      while (1)
      {
        v15 = v102;
        if (v102 == v13)
        {
          break;
        }

        v108 = v14 + 56;
        v107 = v13;
        swift_getKeyPath();

        sub_DC40(&qword_117E20);
        sub_D78D8();

        sub_DC40(&qword_116758);
        sub_D78B8();

        swift_getKeyPath();
        sub_D78D8();

        v4 = v110;
        sub_D78B8();

        v13 = v107 + 1;
        v14 = v108;
        if (v111 < v109 == v111 >= v109)
        {
          v15 = v107;
          break;
        }
      }

      v8 = v96;
      v6 = 0;
      v7 = a3;
      v12 = v10;
      if (v111 < v109)
      {
        if (v15 < v10)
        {
          goto LABEL_124;
        }

        if (v10 < v15)
        {
          v16 = 56 * v15 - 24;
          v17 = 56 * v10 + 48;
          v18 = v15;
          do
          {
            if (v12 != --v18)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v20 = (v19 + v17);
              v21 = (v19 + v16);
              v22 = *(v20 - 3);
              v23 = *(v20 - 2);
              v24 = *(v20 - 1);
              v25 = *v20;
              v27 = *(v21 - 1);
              v26 = *v21;
              v28 = *(v21 - 2);
              *v20 = *(v21 + 2);
              *(v20 - 2) = v27;
              *(v20 - 1) = v26;
              *(v20 - 3) = v28;
              *(v21 - 2) = v22;
              *(v21 - 1) = v23;
              *v21 = v24;
              *(v21 + 2) = v25;
            }

            ++v12;
            v16 -= 56;
            v17 += 56;
          }

          while (v12 < v18);
          v12 = v10;
        }
      }
    }

    v29 = v7[1];
    if (v15 >= v29)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v15, v12))
    {
      goto LABEL_121;
    }

    if (v15 - v12 < a4)
    {
      break;
    }

    v10 = v15;
LABEL_39:
    if (v10 < v98)
    {
      goto LABEL_120;
    }

LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1EC48(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v4 = *(v11 + 16);
    v42 = *(v11 + 24);
    v43 = v4 + 1;
    v44 = v98;
    if (v4 >= v42 >> 1)
    {
      result = sub_1EC48((v42 > 1), v4 + 1, 1, v11);
      v44 = v98;
      v11 = result;
    }

    *(v11 + 16) = v43;
    v45 = v11 + 16 * v4;
    *(v45 + 32) = v44;
    *(v45 + 40) = v10;
    v46 = *v8;
    if (!*v8)
    {
      goto LABEL_130;
    }

    if (v4)
    {
      while (1)
      {
        v47 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v48 = *(v11 + 32);
          v49 = *(v11 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_59:
          if (v51)
          {
            goto LABEL_109;
          }

          v64 = (v11 + 16 * v43);
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_112;
          }

          v70 = (v11 + 32 + 16 * v47);
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_116;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v43 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v74 = (v11 + 16 * v43);
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_73:
        if (v69)
        {
          goto LABEL_111;
        }

        v77 = v11 + 16 * v47;
        v79 = *(v77 + 32);
        v78 = *(v77 + 40);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_114;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_80:
        v4 = v47 - 1;
        if (v47 - 1 >= v43)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v7)
        {
          goto LABEL_127;
        }

        v85 = *(v11 + 32 + 16 * v4);
        v86 = *(v11 + 32 + 16 * v47 + 8);
        sub_60FE0((*v7 + 56 * v85), (*v7 + 56 * *(v11 + 32 + 16 * v47)), *v7 + 56 * v86, v46);
        if (v6)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1EC34(v11);
        }

        if (v4 >= *(v11 + 16))
        {
          goto LABEL_106;
        }

        v87 = v11 + 16 * v4;
        *(v87 + 32) = v85;
        *(v87 + 40) = v86;
        result = sub_1EBA8(v47);
        v43 = *(v11 + 16);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = v11 + 32 + 16 * v43;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_107;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_108;
      }

      v59 = (v11 + 16 * v43);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_110;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_113;
      }

      if (v63 >= v55)
      {
        v81 = (v11 + 32 + 16 * v47);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_117;
        }

        if (v50 < v84)
        {
          v47 = v43 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v9 = v7[1];
    v8 = v96;
    if (v10 >= v9)
    {
      goto LABEL_91;
    }
  }

  v12 = v10;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_122;
  }

  if (v10 + a4 >= v29)
  {
    v30 = v7[1];
  }

  else
  {
    v30 = v10 + a4;
  }

  if (v30 < v98)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    result = sub_1EC34(v11);
    v11 = result;
LABEL_93:
    v88 = *(v11 + 16);
    if (v88 >= 2)
    {
      while (*v7)
      {
        v89 = *(v11 + 16 * v88);
        v90 = v11;
        v91 = *(v11 + 16 * (v88 - 1) + 32);
        v11 = *(v11 + 16 * (v88 - 1) + 40);
        sub_60FE0((*v7 + 56 * v89), (*v7 + 56 * v91), *v7 + 56 * v11, v4);
        if (v6)
        {
        }

        if (v11 < v89)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1EC34(v90);
        }

        if (v88 - 2 >= *(v90 + 2))
        {
          goto LABEL_119;
        }

        v92 = &v90[16 * v88];
        *v92 = v89;
        *(v92 + 1) = v11;
        result = sub_1EBA8(v88 - 1);
        v11 = v90;
        v88 = *(v90 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  if (v15 == v30)
  {
LABEL_28:
    v10 = v15;
    if (v15 < v12)
    {
      goto LABEL_120;
    }

    goto LABEL_40;
  }

  v95 = v11;
  v97 = v6;
  v104 = *v7;
  v31 = *v7 + 56 * v15 - 56;
  v32 = v98 - v15;
  v99 = v30;
LABEL_33:
  v101 = v31;
  v103 = v15;
  v100 = v32;
  v33 = v32;
  while (1)
  {
    v105 = v33;
    swift_getKeyPath();

    sub_DC40(&qword_117E20);
    sub_D78D8();

    sub_DC40(&qword_116758);
    sub_D78B8();

    swift_getKeyPath();
    sub_D78D8();

    v4 = v110;
    sub_D78B8();

    if (v111 >= v109)
    {
LABEL_32:
      v15 = v103 + 1;
      v31 = v101 + 56;
      v10 = v99;
      v32 = v100 - 1;
      if (v103 + 1 != v99)
      {
        goto LABEL_33;
      }

      v8 = v96;
      v6 = v97;
      v7 = a3;
      v11 = v95;
      goto LABEL_39;
    }

    if (!v104)
    {
      break;
    }

    v34 = *(v31 + 64);
    v35 = *(v31 + 72);
    v36 = *(v31 + 16);
    v37 = *(v31 + 48);
    v4 = *(v31 + 56);
    *(v31 + 56) = *v31;
    v39 = *(v31 + 80);
    v38 = *(v31 + 88);
    v40 = *(v31 + 96);
    v41 = *(v31 + 104);
    *(v31 + 72) = v36;
    *(v31 + 88) = *(v31 + 32);
    *(v31 + 104) = v37;
    *v31 = v4;
    *(v31 + 8) = v34;
    *(v31 + 16) = v35;
    *(v31 + 24) = v39;
    *(v31 + 32) = v38;
    *(v31 + 40) = v40;
    *(v31 + 48) = v41;
    v31 -= 56;
    v33 = v105 + 1;
    if (v105 == -1)
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_60FE0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 56;
  v37 = a3;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 56;
  if (v8 >= v10)
  {
    if (a4 != a2 || &a2[56 * v10] <= a4)
    {
      memmove(a4, a2, 56 * v10);
    }

    v11 = &v4[56 * v10];
    if (v9 < 56 || v5 <= v6)
    {
      v17 = v5;
    }

    else
    {
      v38 = v4;
LABEL_22:
      v18 = 0;
      v19 = v11;
      v31 = v5 - 56;
      v32 = v11;
      do
      {
        v20 = &v19[v18];
        v21 = &v19[v18 - 56];
        v36 = (v37 + v18);
        v33 = v37 + v18 - 56;
        v34 = v18;
        swift_getKeyPath();

        sub_DC40(&qword_117E20);
        sub_D78D8();

        sub_DC40(&qword_116758);
        sub_D78B8();

        swift_getKeyPath();
        sub_D78D8();

        sub_D78B8();

        if (v40 < v39)
        {
          v11 = v20;
          v4 = v38;
          v17 = v5 - 56;
          if (v36 != v5)
          {
            v26 = *v31;
            v27 = *(v5 - 40);
            v28 = *(v5 - 24);
            *(v33 + 48) = *(v5 - 1);
            *(v33 + 16) = v27;
            *(v33 + 32) = v28;
            *v33 = v26;
          }

          if (v11 <= v38 || (v37 = v33, v5 -= 56, v31 <= v6))
          {
            v11 = &v32[v34];
            goto LABEL_34;
          }

          goto LABEL_22;
        }

        v22 = v36 == v20;
        v4 = v38;
        if (!v22)
        {
          v23 = *v21;
          v24 = *(v21 + 16);
          v25 = *(v21 + 32);
          *(v33 + 48) = *(v21 + 48);
          *(v33 + 16) = v24;
          *(v33 + 32) = v25;
          *v33 = v23;
        }

        v18 = v34 - 56;
        v19 = v32;
        v11 = &v32[v34 - 56];
      }

      while (v11 > v38);
      v17 = v5;
    }
  }

  else
  {
    if (a4 != __src || &__src[56 * v8] <= a4)
    {
      memmove(a4, __src, 56 * v8);
    }

    v11 = &v4[56 * v8];
    if (v7 >= 56 && v5 < v37)
    {
      v35 = &v4[56 * v8];
      do
      {
        swift_getKeyPath();

        sub_DC40(&qword_117E20);
        sub_D78D8();

        sub_DC40(&qword_116758);
        sub_D78B8();

        swift_getKeyPath();
        sub_D78D8();

        sub_D78B8();

        if (v40 >= v39)
        {
          v12 = v4;
          v13 = v4;
          v4 += 56;
        }

        else
        {
          v12 = v5;
          v13 = v5;
          v5 += 56;
        }

        if (v6 != v12)
        {
          v14 = *v13;
          v15 = *(v13 + 1);
          v16 = *(v13 + 2);
          *(v6 + 6) = *(v13 + 6);
          *(v6 + 1) = v15;
          *(v6 + 2) = v16;
          *v6 = v14;
        }

        v6 += 56;
        v11 = v35;
      }

      while (v4 < v35 && v5 < v37);
    }

    v17 = v6;
  }

LABEL_34:
  v29 = (v11 - v4) / 56;
  if (v17 != v4 || v17 >= &v4[56 * v29])
  {
    memmove(v17, v4, 56 * v29);
  }

  return 1;
}

uint64_t sub_61694()
{
  sub_16AA0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_61728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_D6FB8();
  v4 = *(v2 + 32);
  swift_getKeyPath();
  sub_DC40(&qword_117E20);
  sub_D78D8();

  sub_DC40(&qword_116738);
  sub_D78B8();

  if (*(v4 + 16))
  {
    v5 = sub_1ED4C(v37, v38);
    v7 = v6;

    if (v7)
    {
      v9 = *(*(v4 + 56) + 8 * v5);
      swift_getKeyPath();
      v40 = *(a1 + 16);
      v41 = *(a1 + 32);
      v30 = v9;
      sub_D78D8();

      sub_D78B8();

      swift_getKeyPath();
      sub_D78D8();

      sub_D78B8();

      if (v35 == v33 && v36 == v34)
      {
      }

      else
      {
        v14 = sub_D8118();

        if ((v14 & 1) == 0)
        {
          v21 = [v30 sfSymbolsName];
          sub_D7C18();

          sub_D76F8();
          v22 = [v30 localizedName];
          v23 = sub_D7C18();
          v25 = v24;

          *&v39 = v23;
          *(&v39 + 1) = v25;
          sub_16000();
          v26 = sub_D73B8();
          v28 = v27;
          LOBYTE(v22) = v29;

          sub_1F900(v26, v28, v22 & 1);

          sub_1F900(v26, v28, v22 & 1);

          sub_1F8F0(v26, v28, v22 & 1);

          sub_1F900(v26, v28, v22 & 1);

          sub_DC40(&qword_116740);
          sub_15FB8(&qword_116748, &qword_116740);
          sub_D70B8();

          sub_1F8F0(v26, v28, v22 & 1);

          sub_1F8F0(v26, v28, v22 & 1);

          goto LABEL_11;
        }
      }

      *&v39 = sub_A9308(0xD000000000000011, 0x80000000000E4E70);
      *(&v39 + 1) = v15;
      sub_16000();
      v16 = sub_D73B8();
      v18 = v17;
      v20 = v19 & 1;
      sub_1F900(v16, v17, v19 & 1);

      sub_DC40(&qword_116740);
      sub_15FB8(&qword_116748, &qword_116740);
      sub_D70B8();

      sub_1F8F0(v16, v18, v20);
LABEL_11:

      v11 = v39;
      v13 = v40;
      v10 = v41;
      v12 = BYTE8(v41);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v10 = 0;
  v11 = 0uLL;
  v12 = -1;
  v13 = 0uLL;
LABEL_12:
  *a2 = v31;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v11;
  *(a2 + 40) = v13;
  *(a2 + 56) = v10;
  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_61CE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_DC40(&qword_116F98);
  sub_15FB8(&qword_117050, &qword_116FA0);
  result = sub_D7918();
  v13 = v21;
  v22 = v21;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *a1 = a4;
    a1[1] = a5;
    a1[2] = a6;
    a1[3] = v13;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = a1;
    v14 = 1;
    while (1)
    {
      *&v17 = a4;
      *(&v17 + 1) = a5;
      *&v18 = a6;
      sub_D7928();
      v13 = v21;
      if (v22 == v21)
      {
        a3 = v14 - 1;
        goto LABEL_13;
      }

      v21 = a4;
      sub_D7948();
      a1 = v20;
      sub_D7938();
      *a2 = v17;
      *(a2 + 16) = v18;
      *(a2 + 32) = v19;
      *(a2 + 48) = v20;
      if (a3 == v14)
      {
        break;
      }

      a2 += 56;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v13 = v22;
LABEL_13:
    a1 = v16;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_61EB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_DC40(&qword_117E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_DC40(&qword_117E20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_62008@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_D6FB8();
  *(a3 + 8) = 0x401C000000000000;
  *(a3 + 16) = 0;
  v6 = sub_DC40(&qword_117E98);
  return sub_62070(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_62070@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v111 = a3;
  v4 = sub_D7708();
  v105 = *(v4 - 8);
  v106 = v4;
  __chkstk_darwin(v4);
  v104 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D7598();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_DC40(&qword_1170E8) - 8;
  __chkstk_darwin(v110);
  v115 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v102 - v12;
  v14 = sub_DC40(&qword_1178E0);
  __chkstk_darwin(v14 - 8);
  v114 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v102 - v17);
  *v18 = sub_D7A18();
  v18[1] = v19;
  v116 = v18;
  v20 = sub_DC40(&qword_1178E8);
  sub_62A08(a1, v18 + *(v20 + 44));
  v21 = [a1 localizedName];
  v22 = sub_D7C18();
  v24 = v23;

  v132 = v22;
  v133 = v24;
  v107 = sub_16000();
  v25 = sub_D73B8();
  v27 = v26;
  LOBYTE(v22) = v28;
  sub_D76B8();
  v109 = sub_D7378();
  v112 = v29;
  v113 = v30;
  v108 = v31;

  sub_1F8F0(v25, v27, v22 & 1);

  v32 = *(sub_D6D98() + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = sub_D7048();
  (*(*(v34 - 8) + 104))(&v13[v32], v33, v34);
  __asm { FMOV            V0.2D, #7.0 }

  *v13 = _Q0;
  sub_DC40(&qword_1170D8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_DC430;
  v41 = enum case for Color.RGBColorSpace.sRGB(_:);
  v42 = *(v7 + 104);
  v42(v9, enum case for Color.RGBColorSpace.sRGB(_:), v6);
  *(v40 + 32) = sub_D76D8();
  v42(v9, v41, v6);
  *(v40 + 40) = sub_D76D8();
  sub_D79D8();
  sub_D6C78();
  v43 = sub_DC40(&qword_1170C8);
  v44 = &v13[*(v43 + 52)];
  v45 = v124;
  *v44 = v123;
  *(v44 + 1) = v45;
  *(v44 + 4) = v125;
  *&v13[*(v43 + 56)] = 256;
  v46 = v13;
  v47 = sub_D7A18();
  v49 = v48;
  v50 = v103;
  v51 = [v103 sfSymbolsName];
  sub_D7C18();

  sub_D76F8();
  v53 = v104;
  v52 = v105;
  v54 = v106;
  (*(v105 + 104))(v104, enum case for Image.ResizingMode.stretch(_:), v106);
  v55 = sub_D7758();

  (*(v52 + 8))(v53, v54);
  v56 = sub_D7668();
  LOBYTE(v54) = sub_D71F8();
  sub_D6B68();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v126 = v55;
  LOWORD(v127) = 1;
  *(&v127 + 2) = v121;
  WORD3(v127) = v122;
  *(&v127 + 1) = v56;
  LOBYTE(v128) = v54;
  *(&v128 + 1) = *v120;
  DWORD1(v128) = *&v120[3];
  *(&v128 + 1) = v57;
  *&v129 = v59;
  *(&v129 + 1) = v61;
  *&v130 = v63;
  BYTE8(v130) = 0;
  HIDWORD(v130) = *(&v117 + 3);
  *(&v130 + 9) = v117;
  *&v131 = v47;
  *(&v131 + 1) = v49;
  v65 = (v46 + *(sub_DC40(&qword_1170D0) + 36));
  v66 = v129;
  v65[2] = v128;
  v65[3] = v66;
  v67 = v131;
  v65[4] = v130;
  v65[5] = v67;
  v68 = v127;
  *v65 = v126;
  v65[1] = v68;
  v132 = v55;
  v133 = 0;
  v134 = 1;
  v136 = v122;
  v135 = v121;
  v137 = v56;
  v138 = v54;
  *&v139[3] = *&v120[3];
  *v139 = *v120;
  v140 = v58;
  v141 = v60;
  v142 = v62;
  v143 = v64;
  v144 = 0;
  *v145 = v117;
  *&v145[3] = *(&v117 + 3);
  v146 = v47;
  v147 = v49;
  sub_16054(&v126, v119, &qword_1170E0);
  sub_160BC(&v132, &qword_1170E0);
  sub_D7A18();
  sub_D6C28();
  v69 = (v46 + *(v110 + 44));
  v102 = v46;
  v70 = v119[1];
  *v69 = v119[0];
  v69[1] = v70;
  v69[2] = v119[2];
  v71 = [v50 name];
  v72 = sub_D7C18();
  v74 = v73;

  v117 = v72;
  v118 = v74;
  v75 = sub_D73B8();
  v77 = v76;
  LOBYTE(v55) = v78;
  sub_D76C8();
  v79 = sub_D7378();
  v105 = v80;
  v106 = v79;
  LODWORD(v107) = v81;
  v110 = v82;

  sub_1F8F0(v75, v77, v55 & 1);

  v103 = sub_BE368(v83);
  LODWORD(v104) = v84;
  v85 = v114;
  sub_16054(v116, v114, &qword_1178E0);
  LOBYTE(v117) = v108 & 1;
  LOBYTE(v49) = v108 & 1;
  v108 &= 1u;
  v86 = v115;
  sub_16054(v46, v115, &qword_1170E8);
  v87 = v85;
  v88 = v111;
  sub_16054(v87, v111, &qword_1178E0);
  v89 = sub_DC40(&qword_1180E0);
  v90 = v88 + v89[12];
  v91 = v109;
  v93 = v112;
  v92 = v113;
  *v90 = v109;
  *(v90 + 8) = v93;
  *(v90 + 16) = v49;
  *(v90 + 24) = v92;
  v94 = v88 + v89[16];
  *v94 = 0;
  *(v94 + 8) = 1;
  v95 = v88;
  sub_16054(v86, v88 + v89[20], &qword_1170E8);
  v96 = v88 + v89[24];
  v98 = v105;
  v97 = v106;
  *v96 = v106;
  *(v96 + 8) = v98;
  LOBYTE(v49) = v107 & 1;
  *(v96 + 16) = v107 & 1;
  *(v96 + 24) = v110;
  v99 = v95 + v89[28];
  v100 = v103;
  *v99 = v103;
  LOBYTE(v95) = v104 & 1;
  *(v99 + 8) = v104 & 1;
  sub_1F900(v91, v93, v108);

  sub_1F900(v97, v98, v49);

  sub_6A5C4(v100, v95);
  sub_160BC(v102, &qword_1170E8);
  sub_160BC(v116, &qword_1178E0);
  sub_16AA0(v100, v95);
  sub_1F8F0(v97, v98, v49);

  sub_160BC(v115, &qword_1170E8);
  sub_1F8F0(v91, v112, v117);

  return sub_160BC(v114, &qword_1178E0);
}

uint64_t sub_62A08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v74 = sub_D7598();
  v3 = *(v74 - 8);
  __chkstk_darwin(v74);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_DC40(&qword_1170E8);
  __chkstk_darwin(v80);
  v7 = &v73 - v6;
  v78 = sub_DC40(&qword_1178F8);
  __chkstk_darwin(v78);
  v79 = &v73 - v8;
  v9 = sub_D7708();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = __chkstk_darwin(v9);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 bundleIdentifier];
  v13 = sub_D7C18();
  v15 = v14;

  v16 = [objc_opt_self() defaultIdentifier];
  v17 = sub_D7C18();
  v19 = v18;

  if (v13 == v17 && v15 == v19)
  {

LABEL_10:
    v34 = *(sub_D6D98() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = sub_D7048();
    (*(*(v36 - 8) + 104))(&v7[v34], v35, v36);
    __asm { FMOV            V0.2D, #7.0 }

    *v7 = _Q0;
    sub_DC40(&qword_1170D8);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_DC430;
    v43 = enum case for Color.RGBColorSpace.sRGB(_:);
    v44 = *(v3 + 104);
    v45 = v74;
    v44(v5, enum case for Color.RGBColorSpace.sRGB(_:), v74);
    *(v42 + 32) = sub_D76D8();
    v44(v5, v43, v45);
    *(v42 + 40) = sub_D76D8();
    sub_D79D8();
    sub_D6C78();
    v46 = sub_DC40(&qword_1170C8);
    v47 = &v7[*(v46 + 52)];
    v48 = v98;
    *v47 = v97;
    *(v47 + 1) = v48;
    *(v47 + 4) = v99;
    *&v7[*(v46 + 56)] = 256;
    v49 = sub_D7A18();
    v51 = v50;
    sub_D76F8();
    v53 = v75;
    v52 = v76;
    v54 = v77;
    (*(v76 + 104))(v75, enum case for Image.ResizingMode.stretch(_:), v77);
    v55 = sub_D7758();

    (*(v52 + 8))(v53, v54);
    v56 = sub_D7668();
    LOBYTE(v53) = sub_D71F8();
    sub_D6B68();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v90[0] = v55;
    LOWORD(v90[1]) = 1;
    *(&v90[1] + 2) = v87;
    WORD3(v90[1]) = v88;
    *(&v90[1] + 1) = v56;
    LOBYTE(v90[2]) = v53;
    *(&v90[2] + 1) = *v86;
    DWORD1(v90[2]) = *&v86[3];
    *(&v90[2] + 1) = v57;
    *&v90[3] = v59;
    *(&v90[3] + 1) = v61;
    *&v91 = v63;
    BYTE8(v91) = 0;
    HIDWORD(v91) = *(v89 + 3);
    *(&v91 + 9) = v89[0];
    *&v92 = v49;
    *(&v92 + 1) = v51;
    v65 = &v7[*(sub_DC40(&qword_1170D0) + 36)];
    v66 = v90[3];
    *(v65 + 2) = v90[2];
    *(v65 + 3) = v66;
    v67 = v92;
    *(v65 + 4) = v91;
    *(v65 + 5) = v67;
    v68 = v90[1];
    *v65 = v90[0];
    *(v65 + 1) = v68;
    v93 = v55;
    LOWORD(v94) = 1;
    WORD3(v94) = v88;
    *(&v94 + 2) = v87;
    *(&v94 + 1) = v56;
    v95[0] = v53;
    *&v95[4] = *&v86[3];
    *&v95[1] = *v86;
    *&v95[8] = v58;
    *&v95[16] = v60;
    *&v95[24] = v62;
    *&v95[32] = v64;
    v95[40] = 0;
    *&v95[41] = v89[0];
    *&v95[44] = *(v89 + 3);
    *&v95[48] = v49;
    v96 = v51;
    sub_16054(v90, &v83, &qword_1170E0);
    sub_160BC(&v93, &qword_1170E0);
    sub_D7A18();
    sub_D6C28();
    v69 = v79;
    v70 = &v7[*(v80 + 36)];
    v71 = v84;
    *v70 = v83;
    *(v70 + 1) = v71;
    *(v70 + 2) = v85;
    sub_16054(v7, v69, &qword_1170E8);
    swift_storeEnumTagMultiPayload();
    sub_DC40(&qword_117900);
    sub_4B248(&qword_117908, &qword_117900, &unk_DF448, sub_4B1BC);
    sub_4B248(&qword_117120, &qword_1170E8, &unk_DE5D0, sub_39714);
    sub_D70B8();
    v32 = v7;
    v33 = &qword_1170E8;
    return sub_160BC(v32, v33);
  }

  v20 = sub_D8118();

  if (v20)
  {
    goto LABEL_10;
  }

  v21 = [a1 bundleIdentifier];
  if (!v21)
  {
    sub_D7C18();
    v21 = sub_D7BD8();
  }

  v22 = [objc_opt_self() appIconImageForBundleIdentifier:v21];

  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = [v22 UIImage];

  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  sub_D76E8();
  v26 = v75;
  v25 = v76;
  v27 = v77;
  (*(v76 + 104))(v75, enum case for Image.ResizingMode.stretch(_:), v77);
  v28 = sub_D7758();

  (*(v25 + 8))(v26, v27);
  sub_D7A18();
  sub_D6C28();
  LOBYTE(v89[0]) = 1;
  v82 = 0;
  *(&v90[2] + 6) = v85;
  *(&v90[1] + 6) = v84;
  *(v90 + 6) = v83;
  v93 = v28;
  LOWORD(v94) = 257;
  *(&v94 + 2) = v97;
  WORD3(v94) = WORD2(v97);
  *(&v94 + 1) = 0x3FF0000000000000;
  *v95 = 0;
  *&v95[48] = *(&v85 + 1);
  *&v95[34] = v90[2];
  *&v95[18] = v90[1];
  *&v95[2] = v90[0];
  v29 = *&v95[16];
  v30 = v79;
  *(v79 + 2) = *v95;
  *(v30 + 3) = v29;
  *(v30 + 4) = *&v95[32];
  *(v30 + 10) = *&v95[48];
  v31 = v94;
  *v30 = v93;
  *(v30 + 1) = v31;
  swift_storeEnumTagMultiPayload();
  sub_16054(&v93, v90, &qword_117900);
  sub_DC40(&qword_117900);
  sub_4B248(&qword_117908, &qword_117900, &unk_DF448, sub_4B1BC);
  sub_4B248(&qword_117120, &qword_1170E8, &unk_DE5D0, sub_39714);
  sub_D70B8();

  v32 = &v93;
  v33 = &qword_117900;
  return sub_160BC(v32, v33);
}

uint64_t sub_633AC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  *a1 = sub_D6FB8();
  *(a1 + 8) = 0x401C000000000000;
  *(a1 + 16) = 0;
  v5 = sub_DC40(&qword_117E98);
  return sub_62070(v4, v3, a1 + *(v5 + 44));
}

id sub_63410()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_6349C()
{
  type metadata accessor for GCSPreferencesStore();
  sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_63524@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_D6F68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_DC40(&qword_117EA0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for GCSControllerCustomizeControlsView();
  sub_16054(v1 + *(v10 + 20), v9, &qword_117EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21A44(v9, a1, &qword_117EA8);
  }

  sub_D7E28();
  v12 = sub_D71C8();
  sub_D6A08();

  sub_D6F58();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t type metadata accessor for GCSControllerCustomizeControlsView()
{
  result = qword_11C7E0;
  if (!qword_11C7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6377C()
{
  v1 = sub_D6F68();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for GCSControllerCustomizeControlsView() + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_D7E28();
    v7 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_638D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D6E78();
  *a1 = result & 1;
  return result;
}

id sub_63904()
{
  v1 = *(v0 + *(type metadata accessor for GCSControllerCustomizeControlsView() + 28));

  return v1;
}

__n128 sub_63938@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSControllerCustomizeControlsView();
  sub_DC40(&qword_116848);
  sub_D78B8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_639F4()
{
  v1 = v0 + *(type metadata accessor for GCSControllerCustomizeControlsView() + 32);
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v26 = *(v1 + 96);
  v27 = v2;
  v4 = *(v1 + 112);
  v28 = *(v1 + 128);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  v22 = *(v1 + 32);
  v23 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = v8;
  v9 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v9;
  v17 = v26;
  v18 = v4;
  v19 = *(v1 + 128);
  v13 = v22;
  v14 = v7;
  v15 = v24;
  v16 = v3;
  v29 = *(v1 + 144);
  v20 = *(v1 + 144);
  v11 = v21[0];
  v12 = v6;
  sub_16054(v21, v30, &qword_116848);
  sub_DC40(&qword_116848);
  sub_D78C8();
  v30[6] = v17;
  v30[7] = v18;
  v30[8] = v19;
  v31 = v20;
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v30[5] = v16;
  v30[0] = v11;
  v30[1] = v12;
  return sub_160BC(v30, &qword_116848);
}

void (*sub_63B3C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x510uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 152;
  v7 = (v2 + *(type metadata accessor for GCSControllerCustomizeControlsView() + 32));
  v9 = v7[6];
  v8 = v7[7];
  v10 = v7[5];
  *(v5 + 96) = v9;
  *(v5 + 112) = v8;
  v11 = v7[7];
  *(v5 + 128) = v7[8];
  v13 = v7[2];
  v12 = v7[3];
  v14 = v7[1];
  *(v5 + 32) = v13;
  *(v5 + 48) = v12;
  v15 = v7[3];
  v17 = v7[4];
  v16 = v7[5];
  *(v5 + 64) = v17;
  *(v5 + 80) = v16;
  v18 = v7[1];
  v19 = *v7;
  *v5 = *v7;
  *(v5 + 16) = v18;
  *(v5 + 248) = v9;
  v20 = v7[8];
  *(v6 + 112) = v11;
  *(v6 + 128) = v20;
  *(v5 + 184) = v13;
  *(v5 + 200) = v15;
  *(v5 + 216) = v17;
  *(v5 + 232) = v10;
  *(v5 + 152) = v19;
  *(v5 + 144) = *(v7 + 18);
  *(v5 + 296) = *(v7 + 18);
  *(v5 + 168) = v14;
  sub_16054(v5, v5 + 304, &qword_116848);
  *(v5 + 1288) = sub_DC40(&qword_116848);
  sub_D78B8();
  return sub_23A8C;
}

double sub_63C70@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSControllerCustomizeControlsView();
  sub_DC40(&qword_116848);
  sub_D78E8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_63D34()
{
  sub_DC40(&qword_118E70);
  sub_D77D8();
  return v1;
}

uint64_t sub_63D7C(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2);
  sub_65510(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileParams);
  sub_D77D8();
  return sub_28ACC(a1);
}

uint64_t property wrapper backing initializer of ActivityEditView.internalTextName()
{
  sub_DC40(&qword_118ED0);
  sub_D77D8();
  return v1;
}

uint64_t sub_63E7C()
{
  v1 = v0;
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for GCSControllerCustomizeControlsView();
  v8 = *(v0 + v7[7]);
  v9 = (v0 + v7[14]);
  v10 = v9[1];
  *&v66[0] = *v9;
  v11 = *&v66[0];
  *(&v66[0] + 1) = v10;
  *&v57[0] = v8;
  v36 = v8;
  sub_DC40(&qword_117808);
  sub_D77F8();
  v12 = (v0 + v7[9]);
  v14 = *v12;
  v13 = v12[1];
  *&v66[0] = v14;
  *(&v66[0] + 1) = v13;
  sub_DC40(&qword_1180A0);
  sub_D77E8();
  v15 = *&v57[0];
  *&v66[0] = v11;
  *(&v66[0] + 1) = v10;
  sub_D77E8();
  v16 = *v0;
  if (*v0)
  {
    v17 = *&v57[0];
    v18 = [v15 profileFor:*&v57[0] with:*v1];

    v19 = (v1 + v7[10]);
    v20 = v19[1];
    *&v66[0] = *v19;
    v21 = *&v66[0];
    *(&v66[0] + 1) = v20;
    *&v57[0] = v18;
    sub_DC40(&qword_1180B0);
    sub_D77F8();
    *&v66[0] = v21;
    *(&v66[0] + 1) = v20;
    sub_D77E8();
    v22 = *&v57[0];
    sub_D20B4(v6);

    sub_65510(v6, v37, type metadata accessor for GCSProfileParams);
    sub_DC40(&qword_1172C8);
    sub_D77F8();
    sub_28ACC(v6);
    sub_D77E8();
    v23 = v36;
    v24 = [v16 controllers];
    sub_450A0(0, &qword_117060);
    v25 = sub_D7D28();

    sub_50648(v6, v23, v25, v68);
    v26 = v1 + v7[8];
    v27 = *(v26 + 7);
    v28 = *(v26 + 5);
    v62 = *(v26 + 6);
    v63 = v27;
    v29 = *(v26 + 7);
    v64 = *(v26 + 8);
    v30 = *(v26 + 3);
    v31 = *(v26 + 1);
    v58 = *(v26 + 2);
    v59 = v30;
    v32 = *(v26 + 3);
    v33 = *(v26 + 5);
    v60 = *(v26 + 4);
    v61 = v33;
    v34 = *(v26 + 1);
    v57[0] = *v26;
    v57[1] = v34;
    v53 = v62;
    v54 = v29;
    v55 = *(v26 + 8);
    v49 = v58;
    v50 = v32;
    v51 = v60;
    v52 = v28;
    v65 = *(v26 + 18);
    v56 = *(v26 + 18);
    v47 = v57[0];
    v48 = v31;
    v44 = v68[6];
    v45 = v68[7];
    v46 = v69;
    v40 = v68[2];
    v41 = v68[3];
    v42 = v68[4];
    v43 = v68[5];
    v38 = v68[0];
    v39 = v68[1];
    sub_16054(v57, v66, &qword_116848);
    sub_DC40(&qword_116848);
    sub_D78C8();
    v66[6] = v53;
    v66[7] = v54;
    v66[8] = v55;
    v67 = v56;
    v66[2] = v49;
    v66[3] = v50;
    v66[4] = v51;
    v66[5] = v52;
    v66[0] = v47;
    v66[1] = v48;
    return sub_160BC(v66, &qword_116848);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_642A8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v76 = sub_D6D28();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_DC40(&qword_117EB0);
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v67 - v4;
  v78 = sub_DC40(&qword_117EB8);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v91 = &v67 - v5;
  v77 = sub_DC40(&qword_117EC0);
  __chkstk_darwin(v77);
  v82 = &v67 - v6;
  v81 = sub_DC40(&qword_117EC8);
  __chkstk_darwin(v81);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v67 - v10;
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  v14 = type metadata accessor for GCSControllerCustomizeControlsView();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v16;
  v18 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_DC40(&qword_117ED0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v80 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  v69 = v14;
  v25 = (v2 + *(v14 + 48));
  v27 = *v25;
  v26 = v25[1];
  v94 = v27;
  v95 = v26;
  sub_DC40(&qword_117ED8);
  sub_D77E8();
  v85 = v13;
  v86 = v8;
  v83 = v20;
  v84 = v19;
  v92 = v24;
  if (v98 >> 62)
  {
    v28 = sub_D8078();

    if (v28 < 0)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v28 = *(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8));
  }

  v94 = 0;
  v95 = v28;
  swift_getKeyPath();
  v89 = type metadata accessor for GCSControllerCustomizeControlsView;
  v29 = v18;
  sub_65510(v2, v18, type metadata accessor for GCSControllerCustomizeControlsView);
  v68 = *(v15 + 80);
  v30 = (v68 + 16) & ~v68;
  v88 = v17;
  v31 = swift_allocObject();
  v90 = type metadata accessor for GCSControllerCustomizeControlsView;
  sub_6A474(v29, v31 + v30, type metadata accessor for GCSControllerCustomizeControlsView);
  sub_DC40(&qword_117030);
  sub_DC40(&qword_117EE0);
  v93 = v2;
  sub_34F90();
  sub_15FB8(&qword_117EE8, &qword_117EE0);
  v32 = sub_D7988();
  __chkstk_darwin(v32);
  sub_DC40(&qword_117EF0);
  sub_15FB8(&qword_117EF8, &qword_117EF0);
  v33 = v70;
  sub_D7348();
  v34 = v72;
  sub_D6D18();
  v35 = sub_15FB8(&qword_117F00, &qword_117EB0);
  v36 = v74;
  v37 = v76;
  sub_D7568();
  (*(v73 + 8))(v34, v37);
  (*(v71 + 8))(v33, v36);
  v38 = v93 + *(v69 + 44);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v98) = v39;
  v99 = v40;
  sub_DC40(&qword_1166E0);
  sub_D7808();
  sub_65510(v93, v29, v89);
  v67 = v30;
  v41 = swift_allocObject();
  sub_6A474(v29, v41 + v30, v90);
  sub_DC40(&qword_117F08);
  v94 = v36;
  v95 = v37;
  v96 = v35;
  v97 = &protocol witness table for GroupedListStyle;
  swift_getOpaqueTypeConformance2();
  sub_67D70();
  v42 = v82;
  v43 = v78;
  v44 = v91;
  sub_D7518();
  v45 = v93;

  v46 = v29;
  (*(v75 + 8))(v44, v43);
  v47 = v29;
  v48 = v67;
  sub_65510(v45, v47, v89);
  v49 = swift_allocObject();
  sub_6A474(v46, v49 + v48, v90);
  v50 = (v42 + *(v77 + 36));
  *v50 = sub_67FE0;
  v50[1] = v49;
  v50[2] = 0;
  v50[3] = 0;
  if (*v45)
  {
    v51 = [*v45 games];
    sub_450A0(0, &qword_1164A8);
    v52 = sub_D7D28();

    sub_65510(v45, v46, type metadata accessor for GCSControllerCustomizeControlsView);
    v53 = swift_allocObject();
    sub_6A474(v46, v53 + v48, type metadata accessor for GCSControllerCustomizeControlsView);
    v54 = v79;
    sub_21A44(v42, v79, &qword_117EC0);
    v55 = (v54 + *(v81 + 36));
    *v55 = v52;
    v55[1] = sub_67FF8;
    v55[2] = v53;
    v56 = v85;
    sub_21A44(v54, v85, &qword_117EC8);
    v58 = v83;
    v57 = v84;
    v59 = *(v83 + 16);
    v60 = v80;
    v61 = v92;
    v59(v80, v92, v84);
    v62 = v86;
    sub_16054(v56, v86, &qword_117EC8);
    v63 = v87;
    v59(v87, v60, v57);
    v64 = sub_DC40(&qword_117F20);
    sub_16054(v62, &v63[*(v64 + 48)], &qword_117EC8);
    sub_160BC(v56, &qword_117EC8);
    v65 = *(v58 + 8);
    v65(v61, v57);
    sub_160BC(v62, &qword_117EC8);
    return (v65)(v60, v57);
  }

LABEL_7:
  type metadata accessor for GCSPreferencesStore();
  sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

void sub_64E18(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_DC40(&qword_1180B8);
  __chkstk_darwin(v6 - 8);
  v88 = v73 - v7;
  v8 = sub_DC40(&qword_116840);
  __chkstk_darwin(v8 - 8);
  v85 = v73 - v9;
  v10 = type metadata accessor for GCSControllerCustomizeGameView();
  __chkstk_darwin(v10 - 8);
  v86 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_DC40(&qword_1180C0);
  __chkstk_darwin(v12);
  v14 = v73 - v13;
  v15 = sub_DC40(&qword_1180C8);
  __chkstk_darwin(v15);
  v17 = v73 - v16;
  v18 = *a1;
  v19 = type metadata accessor for GCSControllerCustomizeControlsView();
  v20 = (a2 + v19[12]);
  v22 = *v20;
  v21 = v20[1];
  *&v108 = v22;
  *(&v108 + 1) = v21;
  sub_DC40(&qword_117ED8);
  sub_D77E8();
  v91 = v15;
  v92 = a3;
  v89 = v12;
  v90 = v17;
  v87 = v14;
  if ((v98 & 0xC000000000000001) == 0)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v18 < *(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)))
    {
      v23 = *(v98 + 8 * v18 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_10;
  }

  v23 = sub_D7FF8();
LABEL_5:
  v84 = v23;

  v24 = *(a2 + v19[7]);
  v25 = (a2 + v19[9]);
  v27 = *v25;
  v26 = v25[1];
  *&v98 = v27;
  *(&v98 + 1) = v26;
  v83 = v24;
  sub_DC40(&qword_1180A0);
  sub_D7808();
  v81 = *(&v108 + 1);
  v82 = v108;
  v80 = v109;
  v29 = *a2;
  v28 = *(a2 + 8);
  type metadata accessor for GCSPreferencesStore();
  sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
  v73[1] = v28;
  v30 = sub_D6DC8();
  swift_getKeyPath();
  sub_D6DE8();

  v78 = v93;
  v77 = v94;
  v31 = (a2 + v19[10]);
  v33 = *v31;
  v32 = v31[1];
  *&v98 = v33;
  *(&v98 + 1) = v32;
  sub_DC40(&qword_1180B0);
  sub_D7808();
  v76 = v108;
  v75 = v109;
  sub_DC40(&qword_1172C8);
  v34 = v85;
  sub_D7808();
  v35 = a2 + v19[8];
  v36 = *(v35 + 112);
  v104 = *(v35 + 96);
  v105 = v36;
  v106 = *(v35 + 128);
  v107 = *(v35 + 144);
  v37 = *(v35 + 48);
  v100 = *(v35 + 32);
  v101 = v37;
  v38 = *(v35 + 80);
  v102 = *(v35 + 64);
  v103 = v38;
  v39 = *(v35 + 16);
  v98 = *v35;
  v99 = v39;
  sub_DC40(&qword_116848);
  sub_D78E8();
  v40 = (a2 + v19[14]);
  v42 = *v40;
  v41 = v40[1];
  v96 = v42;
  v97 = v41;
  sub_DC40(&qword_117808);
  v43 = sub_D7808();
  v74 = v98;
  v79 = a2;
  v44 = v99;
  v45 = v88;
  v46 = sub_89C2C(v43);
  v47 = sub_89C90(v46);
  v49 = v48;
  v50 = sub_89D08();
  v72 = v34;
  v52 = v86;
  sub_89D2C(v45, v47, v49, v50, v51 & 1, v83, v82, v81, v86, v80, v78, v77, v76, v75, v72, &v108, v74, v44);
  v88 = v19;
  if (v29)
  {
    v53 = v29;
    v54 = sub_D6A58();
    v55 = v52;
    v56 = v87;
    sub_6A474(v55, v87, type metadata accessor for GCSControllerCustomizeGameView);
    v57 = v89;
    v58 = (v56 + *(v89 + 36));
    *v58 = v54;
    v58[1] = v29;
    v59 = v84;
    v60 = [v84 localizedName];
    v61 = sub_D7C18();
    v63 = v62;

    *&v98 = v61;
    *(&v98 + 1) = v63;
    v64 = sub_6A4DC();
    v65 = sub_16000();
    sub_D7498();

    sub_160BC(v56, &qword_1180C0);
    v66 = [v59 bundleIdentifier];
    v67 = sub_D7C18();
    v69 = v68;

    v96 = v67;
    v97 = v69;
    v70 = v79 + *(v88 + 15);
    v71 = *(v70 + 16);
    v93 = *v70;
    v94 = v71;
    sub_DC40(&qword_1180A8);
    sub_D7808();
    *&v93 = v57;
    *(&v93 + 1) = &type metadata for String;
    v94 = v64;
    v95 = v65;
    swift_getOpaqueTypeConformance2();
    sub_D6C88();

    return;
  }

LABEL_10:
  sub_D6DD8();
  __break(1u);
}

uint64_t sub_65510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_65594(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 profiles];
  sub_450A0(0, &qword_118F10);
  v4 = sub_D7D28();

  *a2 = v4;
}

void sub_65608(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_450A0(0, &qword_118F10);
  isa = sub_D7D18().super.isa;
  [v2 setProfiles:isa];
}

uint64_t sub_65684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_118010);
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v66 = &v63 - v5;
  v6 = sub_DC40(&qword_118018);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v63 - v11;
  v12 = sub_DC40(&qword_118020);
  v70 = *(v12 - 8);
  __chkstk_darwin(v12);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v63 - v15;
  v64 = sub_DC40(&qword_118028);
  v16 = *(v64 - 8);
  __chkstk_darwin(v64);
  v18 = &v63 - v17;
  v19 = sub_DC40(&qword_118030);
  __chkstk_darwin(v19 - 8);
  v75 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v78 = &v63 - v22;
  v65 = type metadata accessor for GCSControllerCustomizeControlsView();
  v23 = a1;
  v24 = (a1 + *(v65 + 48));
  v26 = *v24;
  v25 = v24[1];
  v84 = v26;
  v85 = v25;
  sub_DC40(&qword_117ED8);
  sub_D77E8();
  v27 = v82;
  if (v82 >> 62)
  {
    result = sub_D8078();
  }

  else
  {
    result = *(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8));
  }

  v73 = v6;
  v74 = a2;
  v71 = v12;
  v72 = v7;
  v77 = v9;
  if (!result)
  {

    v38 = 1;
    v36 = v78;
    v37 = v64;
    goto LABEL_9;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = sub_D7FF8();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
  {
    v29 = *(v27 + 32);
LABEL_7:
    v30 = v29;

    v63 = &v63;
    __chkstk_darwin(v31);
    sub_DC40(&qword_118038);
    v32 = sub_EBC0(&qword_118040);
    v33 = sub_D6D68();
    v34 = sub_15FB8(&qword_118048, &qword_118040);
    v35 = sub_6932C(&qword_116E28, &type metadata accessor for PlainButtonStyle);
    v84 = v32;
    v85 = v33;
    v86 = v34;
    v87 = v35;
    swift_getOpaqueTypeConformance2();
    sub_D79C8();

    a1 = v23;
    v36 = v78;
    v37 = v64;
    (*(v16 + 32))(v78, v18, v64);
    v38 = 0;
LABEL_9:
    v39 = (*(v16 + 56))(v36, v38, 1, v37);
    __chkstk_darwin(v39);
    sub_DC40(&qword_118050);
    sub_15FB8(&qword_118058, &qword_118050);
    v40 = sub_D79C8();
    __chkstk_darwin(v40);
    v64 = sub_DC40(&qword_116818);
    sub_15FB8(&qword_116830, &qword_116818);
    v41 = v66;
    sub_D79C8();
    v82 = sub_A9308(0xD00000000000002ALL, 0x80000000000E5D20);
    v83 = v42;
    v43 = (a1 + *(v65 + 64));
    v44 = *v43;
    v45 = *(v43 + 1);
    v80 = v44;
    v81 = v45;
    sub_DC40(&qword_1166E0);
    v46 = sub_D7808();
    __chkstk_darwin(v46);
    sub_69414();
    sub_16000();
    v47 = v76;
    v48 = v68;
    sub_D74C8();

    (*(v67 + 8))(v41, v48);
    v49 = v75;
    sub_16054(v78, v75, &qword_118030);
    v50 = v69;
    v51 = v70;
    v68 = *(v70 + 16);
    v52 = v71;
    v68(v69, v79, v71);
    v53 = v72;
    v54 = *(v72 + 16);
    v55 = v47;
    v56 = v73;
    v54(v77, v55, v73);
    v57 = v74;
    sub_16054(v49, v74, &qword_118030);
    v58 = sub_DC40(&qword_118068);
    v68(v57 + *(v58 + 48), v50, v52);
    v59 = v57 + *(v58 + 64);
    v60 = v77;
    v54(v59, v77, v56);
    v61 = *(v53 + 8);
    v61(v76, v56);
    v62 = *(v51 + 8);
    v62(v79, v52);
    sub_160BC(v78, &qword_118030);
    v61(v60, v56);
    v62(v50, v52);
    return sub_160BC(v75, &qword_118030);
  }

  __break(1u);
  return result;
}

uint64_t sub_6600C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = sub_D6D68();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GCSControllerCustomizeControlsView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v23[0] = sub_DC40(&qword_118040);
  v11 = *(v23[0] - 8);
  v12 = __chkstk_darwin(v23[0]);
  v14 = v23 - v13;
  if (*a2)
  {
    v15 = [a1 profileFor:*(a2 + *(v8 + 28)) with:v12];
    sub_65510(a2, v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSControllerCustomizeControlsView);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    v18 = sub_6A474(v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GCSControllerCustomizeControlsView);
    *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    __chkstk_darwin(v18);
    v23[-2] = a1;
    v23[-1] = v15;
    sub_69F80();
    v19 = a1;
    sub_D7848();
    sub_D6D58();
    sub_15FB8(&qword_118048, &qword_118040);
    sub_6932C(&qword_116E28, &type metadata accessor for PlainButtonStyle);
    v20 = v23[0];
    v21 = v25;
    sub_D7428();

    (*(v24 + 8))(v7, v21);
    return (*(v11 + 8))(v14, v20);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_6640C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_116818);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &KeyPath - v9;
  v11 = type metadata accessor for GCSControllerCustomizeControlsView();
  v12 = v11 - 8;
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v53 = v13;
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_DC40(&qword_118070);
  v57 = *(v15 - 8);
  v58 = v15;
  __chkstk_darwin(v15);
  v56 = &KeyPath - v16;
  v55 = sub_DC40(&qword_118078);
  __chkstk_darwin(v55);
  v18 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &KeyPath - v20;
  __chkstk_darwin(v21);
  v65 = &KeyPath - v22;
  v23 = (a1 + *(v12 + 56));
  v25 = *v23;
  v24 = v23[1];
  v67 = v25;
  v68 = v24;
  sub_DC40(&qword_117ED8);
  sub_D77E8();
  v63 = v5;
  v64 = v4;
  v61 = v7;
  v62 = a2;
  v59 = v18;
  v60 = v10;
  if (!(v66 >> 62))
  {
    v26 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));

LABEL_3:
    v67 = 0;
    v68 = v26;
    KeyPath = swift_getKeyPath();
    v51 = type metadata accessor for GCSControllerCustomizeControlsView;
    sub_65510(a1, v14, type metadata accessor for GCSControllerCustomizeControlsView);
    v27 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v28 = swift_allocObject();
    v52 = type metadata accessor for GCSControllerCustomizeControlsView;
    sub_6A474(v14, v28 + v27, type metadata accessor for GCSControllerCustomizeControlsView);
    sub_DC40(&qword_117030);
    sub_DC40(&qword_118080);
    sub_34F90();
    sub_696AC();
    v29 = v56;
    sub_D7988();
    v30 = v51;
    sub_65510(a1, v14, v51);
    v31 = swift_allocObject();
    v32 = v52;
    sub_6A474(v14, v31 + v27, v52);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_697F0;
    *(v33 + 24) = v31;
    v34 = v54;
    (*(v57 + 32))(v54, v29, v58);
    v35 = &v34[*(v55 + 36)];
    *v35 = sub_5D5D8;
    v35[1] = v33;
    v36 = v34;
    v37 = v65;
    sub_21A44(v36, v65, &qword_118078);
    v67 = sub_A9308(0x5F5050415F444441, 0xED0000454C544954);
    v68 = v38;
    sub_65510(a1, v14, v30);
    v39 = swift_allocObject();
    sub_6A474(v14, v39 + v27, v32);
    sub_16000();
    v40 = v60;
    sub_D7868();
    v41 = v59;
    sub_16054(v37, v59, &qword_118078);
    v43 = v63;
    v42 = v64;
    v44 = *(v63 + 16);
    v45 = v61;
    v44(v61, v40, v64);
    v46 = v62;
    sub_16054(v41, v62, &qword_118078);
    v47 = sub_DC40(&qword_118090);
    v44((v46 + *(v47 + 48)), v45, v42);
    v48 = *(v43 + 8);
    v48(v40, v42);
    sub_160BC(v65, &qword_118078);
    v48(v45, v42);
    return sub_160BC(v41, &qword_118078);
  }

  v26 = sub_D8078();

  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_66A60@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_D6D68();
  v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GCSControllerCustomizeControlsView();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v10 = sub_DC40(&qword_118040);
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v42 = &v39 - v11;
  v12 = sub_DC40(&qword_118038);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v39 - v14;
  v15 = *a1;
  v16 = (a2 + *(v8 + 48));
  v18 = *v16;
  v17 = v16[1];
  v50 = v18;
  v51 = v17;
  sub_DC40(&qword_117ED8);
  sub_D77E8();
  v47 = v6;
  if ((v49 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)))
    {
      v19 = *(v49 + 8 * v15 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_15;
  }

  v19 = sub_D7FF8();
LABEL_5:
  v20 = v19;

  if (!v15 || (v48 = a3, v21 = [v20 bundleIdentifier], v22 = sub_D7C18(), v24 = v23, v21, v25 = objc_allocWithZone(LSApplicationRecord), v26 = sub_3D688(v22, v24, 0), a3 = v48, !v26))
  {

    v27 = 1;
    return (*(v13 + 56))(a3, v27, 1, v12);
  }

  if (*a2)
  {
    v29 = [v20 profileFor:*(a2 + *(v8 + 28)) with:?];
    v39 = v29;
    sub_65510(a2, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSControllerCustomizeControlsView);
    v30 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v31 = swift_allocObject();
    v32 = sub_6A474(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for GCSControllerCustomizeControlsView);
    *(v31 + ((v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
    __chkstk_darwin(v32);
    *(&v39 - 2) = v20;
    *(&v39 - 1) = v29;
    sub_69F80();
    v33 = v20;
    v34 = v42;
    sub_D7848();
    v35 = v45;
    sub_D6D58();
    sub_15FB8(&qword_118048, &qword_118040);
    sub_6932C(&qword_116E28, &type metadata accessor for PlainButtonStyle);
    v36 = v41;
    v37 = v44;
    v38 = v47;
    sub_D7428();

    (*(v46 + 8))(v35, v38);
    (*(v43 + 8))(v34, v37);
    a3 = v48;
    (*(v13 + 32))(v48, v36, v12);
    v27 = 0;
    return (*(v13 + 56))(a3, v27, 1, v12);
  }

LABEL_15:
  type metadata accessor for GCSPreferencesStore();
  sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_67060(uint64_t a1, void **a2)
{
  v3 = sub_D6A38();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = sub_DC40(&qword_117558);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  result = sub_D69D8();
  if ((v13 & 1) == 0)
  {
    v14 = result;
    v15 = type metadata accessor for GCSControllerCustomizeControlsView();
    v16 = (a2 + *(v15 + 48));
    v18 = *v16;
    v17 = v16[1];
    v62 = v18;
    v63 = v17;
    sub_DC40(&qword_117ED8);
    sub_D77E8();
    v58 = v4;
    v59 = v3;
    if ((v61 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)))
      {
        v19 = *(v61 + 8 * v14 + 32);
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_24;
    }

    v19 = sub_D7FF8();
LABEL_6:
    v20 = v19;

    v21 = [v20 controllerToProfileMappings];
    sub_D6998();
    v22 = sub_D7B48();

    v62 = v22;
    v23 = [*(a2 + *(v15 + 28)) persistentIdentifier];
    v24 = sub_D7C18();
    v26 = v25;

    sub_68FC8(v24, v26, v11);

    sub_160BC(v11, &qword_117558);
    if (*(v62 + 16))
    {
      v57 = a2;
      v27 = [v20 bundleIdentifier];
      if (!v27)
      {
        sub_D7C18();
        v27 = sub_D7BD8();
      }

      v28 = [v20 localizedName];
      v29 = [v20 controllerToCompatibilityModeMappings];
      type metadata accessor for GCSCompatibilityMode();
      sub_D7B48();
      v56 = v20;

      v30 = objc_allocWithZone(GCSGame);
      isa = sub_D7B38().super.isa;

      v32 = sub_D7B38().super.isa;

      v33 = [v30 initWithBundleIdentifier:v27 title:v28 controllerToProfileMappings:isa controllerToCompatibilityModeMappings:v32];

      v34 = *v57;
      if (*v57)
      {
        v35 = *(&stru_298.size + (swift_isaMask & *v34));
        v36 = v34;
        v37 = v56;
        v35(v56, v33, 1);

        v38 = sub_2E18C();
        v40 = v58;
        v39 = v59;
        v41 = v60;
        (*(v58 + 16))(v60, v38, v59);
        v42 = v33;
        v43 = sub_D6A18();
        v44 = sub_D7E38();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          *(v45 + 4) = v42;
          *v46 = v42;
          v47 = v42;
          _os_log_impl(&dword_0, v43, v44, "Updating %@", v45, 0xCu);
          sub_160BC(v46, &qword_119120);

          v42 = v37;
        }

        else
        {
          v47 = v43;
          v43 = v37;
        }

LABEL_19:
        return (*(v40 + 8))(v41, v39);
      }
    }

    else
    {

      v48 = *a2;
      if (*a2)
      {
        v49 = *(&stru_298.reloff + (swift_isaMask & *v48));
        v50 = v48;
        v49(v20, 1);

        v51 = sub_2E18C();
        v40 = v58;
        v39 = v59;
        (*(v58 + 16))(v8, v51, v59);
        v52 = v20;
        v43 = sub_D6A18();
        v53 = sub_D7E38();

        if (os_log_type_enabled(v43, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          *(v54 + 4) = v52;
          *v55 = v52;
          v42 = v52;
          _os_log_impl(&dword_0, v43, v53, "Removing %@", v54, 0xCu);
          sub_160BC(v55, &qword_119120);
        }

        else
        {
          v42 = v43;
          v43 = v52;
        }

        v41 = v8;
        goto LABEL_19;
      }
    }

LABEL_24:
    type metadata accessor for GCSPreferencesStore();
    sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_6777C(uint64_t a1)
{
  v2 = type metadata accessor for GCSControllerCustomizeControlsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_DC40(&qword_116810);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_D6B38();
  v8 = sub_D6B58();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_65510(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSControllerCustomizeControlsView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_6A474(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for GCSControllerCustomizeControlsView);
  return sub_D7838();
}

void sub_67960(void **a1)
{
  v2 = sub_D6D88();
  __chkstk_darwin(v2 - 8);
  v3 = sub_DC40(&qword_117EA8);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  sub_63524(&v10 - v4);
  sub_D78B8();
  sub_D6D78();
  sub_D78C8();
  sub_160BC(v5, &qword_117EA8);
  v6 = *a1;
  if (*a1)
  {
    v7 = *(a1 + *(type metadata accessor for GCSControllerCustomizeControlsView() + 28));
    v8 = v6;
    v9 = static MacParity.Pantheon.getter();
    (*(&stru_2E8.reserved2 + (swift_isaMask & *v8)))(v7, v9 & 1);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
  }
}

uint64_t sub_67B54@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0xD000000000000025, 0x80000000000E5D50);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_67BC4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GCSControllerCustomizeControlsView();
  v4 = (v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));
  v5 = *(v4 + *(v3 + 28));
  sub_DC40(&qword_1166E0);
  sub_D7808();
  sub_AB174(v5, v12, *(&v12 + 1), v13, &v12);
  v6 = *v4;
  if (*v4)
  {
    type metadata accessor for GCSPreferencesStore();
    sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    v7 = v6;
    result = sub_D6A58();
    v9 = v17;
    *(a1 + 64) = v16;
    *(a1 + 80) = v9;
    *(a1 + 96) = v18;
    v10 = v13;
    *a1 = v12;
    *(a1 + 16) = v10;
    v11 = v15;
    *(a1 + 32) = v14;
    *(a1 + 48) = v11;
    *(a1 + 112) = result;
    *(a1 + 120) = v6;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

unint64_t sub_67D70()
{
  result = qword_117F10;
  if (!qword_117F10)
  {
    sub_EBC0(&qword_117F08);
    sub_67E28();
    sub_15FB8(&qword_117418, &qword_117420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117F10);
  }

  return result;
}

unint64_t sub_67E28()
{
  result = qword_117F18;
  if (!qword_117F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117F18);
  }

  return result;
}

uint64_t sub_67E7C(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = [v2 games];
    sub_450A0(0, &qword_1164A8);
    v4 = sub_D7D28();

    __chkstk_darwin(v5);
    v11[2] = a1;
    v6 = sub_3C928(sub_6A6E0, v11, v4);
    v7 = (a1 + *(type metadata accessor for GCSControllerCustomizeControlsView() + 48));
    v9 = *v7;
    v8 = v7[1];
    v11[5] = v9;
    v11[6] = v8;
    v11[4] = v6;
    sub_DC40(&qword_117ED8);
    return sub_D77F8();
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_67FF8(unint64_t *a1)
{
  v3 = (type metadata accessor for GCSControllerCustomizeControlsView() - 8);
  v4 = v1 + ((*(*v3 + 80) + 16) & ~*(*v3 + 80));
  v5 = *a1;
  v11[2] = v4;

  v6 = sub_3C928(sub_68F98, v11, v5);
  v7 = (v4 + v3[14]);
  v9 = *v7;
  v8 = v7[1];
  v11[5] = v9;
  v11[6] = v8;
  v11[4] = v6;
  sub_DC40(&qword_117ED8);
  return sub_D77F8();
}

uint64_t sub_680D4(id *a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117558);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = *a1;
  v9 = [*a1 controllerToProfileMappings];
  v10 = sub_D6998();
  v11 = sub_D7B48();

  v12 = [*(a2 + *(type metadata accessor for GCSControllerCustomizeControlsView() + 28)) persistentIdentifier];
  v13 = sub_D7C18();
  v15 = v14;

  if (*(v11 + 16))
  {
    v16 = sub_1ED4C(v13, v15);
    v18 = v17;

    if (v18)
    {
      v19 = *(v10 - 8);
      (*(v19 + 16))(v7, *(v11 + 56) + *(v19 + 72) * v16, v10);

      v20 = 1;
      (*(v19 + 56))(v7, 0, 1, v10);
      sub_160BC(v7, &qword_117558);
      return v20 & 1;
    }
  }

  else
  {
  }

  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_160BC(v7, &qword_117558);
  v21 = [v8 bundleIdentifier];
  v22 = sub_D7C18();
  v24 = v23;

  v25 = [objc_opt_self() defaultIdentifier];
  v26 = sub_D7C18();
  v28 = v27;

  if (v22 == v26 && v24 == v28)
  {

    v20 = 1;
  }

  else
  {
    v20 = sub_D8118();
  }

  return v20 & 1;
}

uint64_t sub_683F4()
{
  type metadata accessor for GCSPreferencesStore();
  sub_6932C(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

uint64_t sub_6846C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_DC40(&qword_117EA0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_684F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v44 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v44);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  *a8 = a1;
  a8[1] = a2;
  v21 = type metadata accessor for GCSControllerCustomizeControlsView();
  sub_21A44(a3, a8 + v21[5], &qword_117438);
  v22 = a8 + v21[6];
  *v22 = a4;
  v22[8] = a5 & 1;
  *(a8 + v21[7]) = a6;
  v23 = a8 + v21[8];
  v24 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 1) = v24;
  v25 = *(a7 + 80);
  *(v23 + 4) = *(a7 + 64);
  *(v23 + 5) = v25;
  v26 = *(a7 + 48);
  *(v23 + 2) = *(a7 + 32);
  *(v23 + 3) = v26;
  *(v23 + 18) = *(a7 + 144);
  v27 = *(a7 + 128);
  *(v23 + 7) = *(a7 + 112);
  *(v23 + 8) = v27;
  *(v23 + 6) = *(a7 + 96);
  v28 = (a8 + v21[9]);
  v45 = [objc_opt_self() defaultGame];
  sub_450A0(0, &qword_1164A8);
  sub_D77D8();
  v29 = *(&v47 + 1);
  *v28 = v47;
  v28[1] = v29;
  v30 = (a8 + v21[10]);
  v45 = [objc_opt_self() defaultProfile];
  sub_450A0(0, &qword_118F10);
  sub_D77D8();
  v31 = *(&v47 + 1);
  *v30 = v47;
  v30[1] = v31;
  v32 = a8 + v21[11];
  LOBYTE(v45) = 0;
  sub_D77D8();
  v33 = *(&v47 + 1);
  *v32 = v47;
  *(v32 + 1) = v33;
  v34 = (a8 + v21[12]);
  v45 = _swiftEmptyArrayStorage;
  sub_DC40(&qword_118E70);
  sub_D77D8();
  v35 = *(&v47 + 1);
  *v34 = v47;
  v34[1] = v35;
  sub_D1AF8(v20);
  sub_65510(v20, v17, type metadata accessor for GCSProfileParams);
  sub_D77D8();
  sub_28ACC(v20);
  v36 = (a8 + v21[14]);
  v45 = [objc_allocWithZone(GCSController) initDummy];
  sub_450A0(0, &qword_117060);
  sub_D77D8();
  v37 = *(&v47 + 1);
  *v36 = v47;
  v36[1] = v37;
  v38 = a8 + v21[15];
  v45 = 0;
  v46 = 0;
  sub_DC40(&qword_118ED0);
  sub_D77D8();
  v39 = v48;
  *v38 = v47;
  *(v38 + 2) = v39;
  v40 = a8 + v21[16];
  LOBYTE(v45) = 0;
  result = sub_D77D8();
  v42 = *(&v47 + 1);
  *v40 = v47;
  *(v40 + 1) = v42;
  return result;
}

uint64_t sub_688B0(uint64_t *a1, int a2)
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

uint64_t sub_688F8(uint64_t result, int a2, int a3)
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

uint64_t sub_68958(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_DC40(&qword_117438);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_DC40(&qword_1172C8);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_68AAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_DC40(&qword_117438);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_DC40(&qword_1172C8);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_68BEC()
{
  sub_26BDC();
  if (v0 <= 0x3F)
  {
    sub_68EAC(319, &qword_117F80, &qword_117EA8, &unk_E03B0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_69C68(319, &qword_116AC0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_450A0(319, &qword_117060);
        if (v3 <= 0x3F)
        {
          sub_69C68(319, &qword_116930, &type metadata for GCSProfileViewData, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            sub_494BC(319, &qword_117760, &qword_1164A8);
            if (v5 <= 0x3F)
            {
              sub_494BC(319, &qword_117768, &qword_118F10);
              if (v6 <= 0x3F)
              {
                sub_69C68(319, &qword_117340, &type metadata for Bool, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_68EAC(319, &qword_117F88, &qword_118E70, &unk_E0420, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_49514();
                    if (v9 <= 0x3F)
                    {
                      sub_494BC(319, &qword_117758, &qword_117060);
                      if (v10 <= 0x3F)
                      {
                        sub_68EAC(319, &unk_117F90, &qword_118ED0, &unk_DF5E0, &type metadata accessor for State);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_68EAC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_EBC0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_68FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1ED4C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_69CB8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_D6998();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_69138(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_D6998();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_69138(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_D7F88() + 1) & ~v5;
    while (1)
    {
      sub_D8168();

      sub_D7C78();
      v9 = sub_D8198();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_D6998() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}