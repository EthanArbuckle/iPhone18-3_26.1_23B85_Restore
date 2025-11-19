char *sub_10002F074(char *a1, int64_t a2, char a3)
{
  result = sub_10002F114(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F094(char *a1, int64_t a2, char a3)
{
  result = sub_10002F22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002F0B4(void *a1, int64_t a2, char a3)
{
  result = sub_10002F338(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F0D4(char *a1, int64_t a2, char a3)
{
  result = sub_10002F46C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10002F0F4(size_t a1, int64_t a2, char a3)
{
  result = sub_10002F570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F114(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076310, &qword_100052350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_10002F22C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076358, &qword_1000523D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10002F338(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004944(&unk_100076360, &unk_1000523E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100004944(&unk_1000765A0, &qword_1000516B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002F46C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076298, &qword_100052270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

size_t sub_10002F570(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004944(&unk_1000762B0, qword_100052280);
  v10 = *(sub_100004944(&qword_100076290, &qword_100052268) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004944(&qword_100076290, &qword_100052268) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10002F760(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:_:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000305A8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10002F840(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004944(&qword_100076340, &qword_100052378);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = *(v5 + 48) + 56 * v21;
      v35 = *v22;
      v36 = *(v22 + 16);
      v37 = *(v22 + 32);
      v38 = *(v22 + 48);
      v23 = *(*(v5 + 56) + 8 * v21);
      if ((v34 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      sub_10001910C();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v35;
      *(v17 + 16) = v36;
      *(v17 + 32) = v37;
      *(v17 + 48) = v38;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002FB24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004944(&qword_1000762E0, &qword_1000522F0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v3;
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
      v22 = *(v5 + 48) + 56 * v21;
      v23 = *(*(v5 + 56) + 8 * v21);
      v38 = *(v22 + 48);
      v36 = *(v22 + 16);
      v37 = *(v22 + 32);
      v35 = *v22;
      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      sub_10001910C();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v35;
      *(v17 + 16) = v36;
      *(v17 + 32) = v37;
      *(v17 + 48) = v38;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v33 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

unint64_t sub_10002FDEC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10002E89C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10002F840(v14, a3 & 1);
      v18 = *v4;
      result = sub_10002E89C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100030094();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    v23 = v20[6] + 56 * result;
    v24 = *(a2 + 16);
    *v23 = *a2;
    *(v23 + 16) = v24;
    *(v23 + 32) = *(a2 + 32);
    *(v23 + 48) = *(a2 + 48);
    *(v20[7] + 8 * result) = a1;
    v25 = v20[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v20[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_10002FF54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10002E89C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100030214();
    result = v17;
    goto LABEL_8;
  }

  sub_10002FB24(v14, a3 & 1);
  v18 = *v4;
  result = sub_10002E89C(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    v21 = v20[6] + 56 * result;
    v22 = *(a2 + 16);
    *v21 = *a2;
    *(v21 + 16) = v22;
    *(v21 + 32) = *(a2 + 32);
    *(v21 + 48) = *(a2 + 48);
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100030094()
{
  v1 = v0;
  sub_100004944(&qword_100076340, &qword_100052378);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = (*(v2 + 48) + v19);
        v21 = *(*(v2 + 56) + v17);
        v22 = *(v4 + 48) + v19;
        v23 = *v20;
        v24 = v20[1];
        v25 = v20[2];
        *(v22 + 48) = *(v20 + 24);
        *(v22 + 16) = v24;
        *(v22 + 32) = v25;
        *v22 = v23;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_100030214()
{
  v1 = v0;
  sub_100004944(&qword_1000762E0, &qword_1000522F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v18) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = v14 << 6;
      v18 = 8 * v14;
      v19 = v17 - v18;
      v20 = (*(v2 + 48) + v19);
      v21 = *(*(v2 + 56) + v18);
      v22 = *(v4 + 48) + v19;
      v23 = *v20;
      v24 = v20[1];
      v25 = v20[2];
      *(v22 + 48) = *(v20 + 24);
      *(v22 + 16) = v24;
      *(v22 + 32) = v25;
      *v22 = v23;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_100030384(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004944(&qword_100076348, &unk_100052380);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000305A8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100030384(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1000306C8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100030808(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000306C8()
{
  v1 = v0;
  sub_100004944(&qword_100076348, &unk_100052380);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_100030808(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004944(&qword_100076348, &unk_100052380);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_1000309F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004944(&unk_100076390, &unk_100052410);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10002E80C(v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100030AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004944(&unk_100076380, &unk_100052400);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008A40(v4, &v11, &qword_100074720, &qword_10004E8B0);
      v5 = v11;
      result = sub_10002E80C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100031E08(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100030C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100004944(&qword_100076340, &qword_100052378);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 48);
  v18 = *(a1 + 32);
  v19 = v4;
  v5 = *(a1 + 80);
  v20 = *(a1 + 64);
  v21 = v5;
  v22 = v18;
  v23 = v4;
  v24 = v20;
  v25 = *(a1 + 80);
  result = sub_10002E89C(&v22);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_100008A40(&v18, v17, &unk_100076370, &unk_1000523F0);
    return v3;
  }

  v8 = (a1 + 96);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = v3[6] + 56 * result;
    v10 = v23;
    *v9 = v22;
    *(v9 + 16) = v10;
    *(v9 + 32) = v24;
    *(v9 + 48) = v25;
    *(v3[7] + 8 * result) = *(&v21 + 1);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_100008A40(&v18, v17, &unk_100076370, &unk_1000523F0);
    v14 = v8[1];
    v18 = *v8;
    v19 = v14;
    v15 = v8[3];
    v20 = v8[2];
    v21 = v15;
    v22 = v18;
    v23 = v14;
    v24 = v20;
    v25 = *(v8 + 24);
    result = sub_10002E89C(&v22);
    v8 += 4;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100030DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004944(&qword_1000762E0, &qword_1000522F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 88); ; i += 8)
    {
      v5 = *(i - 5);
      v14 = *(i - 7);
      v15 = v5;
      v16 = *(i - 3);
      v17 = *(i - 4);
      v6 = *i;
      result = sub_10002E89C(&v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 56 * result;
      v10 = v15;
      *v9 = v14;
      *(v9 + 16) = v10;
      *(v9 + 32) = v16;
      *(v9 + 48) = v17;
      *(v3[7] + 8 * result) = v6;
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

uint64_t sub_100030EC4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v8)
    {
      if (*(a2 + 48) >> 62 == 1)
      {
        return *&v2.f64[0] == *a2;
      }
    }

    else
    {
      v9 = *(a2 + 48);
      if (!(v9 >> 62))
      {
        result = 0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a2, v2), vceqq_f64(*(a2 + 16), v3)))) & 1) == 0 || *(a2 + 32) != v5)
        {
          return result;
        }

        v11 = *(a2 + 56);
        if (v7)
        {
LABEL_7:
          result = 0;
          if ((v7 >> 8) & 1) != ((v9 >> 8) & 1) || ((v9 ^ 1))
          {
            return result;
          }

          return v6 == v11;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  if (v8 != 2)
  {
    if (v7 != 0xC000000000000000 || *&v3.f64[0] | *&v2.f64[0] | *&v2.f64[1] | *&v3.f64[1] | *&v5 | *&v4 | v6)
    {
      v15 = *(a2 + 48);
      if (v15 >> 62 != 3)
      {
        return 0;
      }

      if (*(a2 + 56))
      {
        return 0;
      }

      if (v15 != 0xC000000000000000)
      {
        return 0;
      }

      if (*a2 != 1)
      {
        return 0;
      }

      v16 = vorrq_s8(*(a2 + 16), *(a2 + 32));
      if (*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(a2 + 8))
      {
        return 0;
      }
    }

    else
    {
      v13 = *(a2 + 48);
      if (v13 >> 62 != 3)
      {
        return 0;
      }

      if (v13 != 0xC000000000000000)
      {
        return 0;
      }

      v14 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *(a2 + 40) | *(a2 + 56) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  v9 = *(a2 + 48);
  if (v9 >> 62 != 2)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a2, v2), vceqq_f64(*(a2 + 16), v3)))) & 1) == 0 || *(a2 + 32) != v5)
  {
    return result;
  }

  v11 = *(a2 + 56);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_15:
  if (v9)
  {
    return 0;
  }

  result = 0;
  if (*(a2 + 40) == v4 && ((v7 >> 8) & 1) == ((v9 >> 8) & 1))
  {
    return v6 == v11;
  }

  return result;
}

id sub_1000310DC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource] = 0;
  *&v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView] = 0;
  v3 = &v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 24) = 512;
  v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_allowsNoColor] = 0;
  *&v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSwatchesPerPage] = 0;
  *&v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors] = 0;
  v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_useLandscapeLayout] = 0;
  v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_isEditing] = 0;
  v4 = &v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v6 = &v1[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator__colorPickerState];
  swift_beginAccess();
  sub_10003126C(a1, v10);
  type metadata accessor for ColorPickerState();
  sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState);

  *v6 = ObservedObject.init(wrappedValue:)();
  v6[1] = v7;
  swift_endAccess();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FavoriteColorPickerView.Coordinator();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100031304()
{
  v1 = sub_100004944(&qword_100076258, &qword_100052050);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  v7 = *(v0 + v5 + 24);

  v8 = *(v0 + v5 + 40);

  v9 = *(v0 + v5 + 48);

  return _swift_deallocObject(v0, v5 + 56, v3 | 7);
}

void sub_1000313C8()
{
  v1 = *(sub_100004944(&qword_100076258, &qword_100052050) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_10002C268(v0 + v2, v3);
}

uint64_t sub_100031460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100031478()
{
  result = qword_100076280;
  if (!qword_100076280)
  {
    sub_100008B90(&qword_100076278, &qword_100052210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076280);
  }

  return result;
}

uint64_t sub_10003154C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031594(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100076290, &qword_100052268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003166C(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[5];

  v5 = v1[7];

  v6 = v1[8];

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_1000316D4()
{
  result = qword_1000762D0;
  if (!qword_1000762D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000762D0);
  }

  return result;
}

uint64_t sub_100031728()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031760()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000317CC()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_100031840()
{
  result = qword_100076308;
  if (!qword_100076308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076308);
  }

  return result;
}

void sub_100031894()
{
  v1 = *(v0 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v1;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((v46 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v3 = v46 >> 62;
  if ((v46 >> 62) <= 1)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 == 2)
  {
LABEL_7:
    v4 = v0 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator__colorPickerState;
    swift_beginAccess();
    v5 = *(v4 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v43;
    v39 = v44;
    v40 = v45;
    LOWORD(v41) = v46;

LABEL_8:
    static Published.subscript.setter();
    return;
  }

  if (v46 != 0xC000000000000000 || v44 | v43 | *(&v43 + 1) | *(&v44 + 1) | v45 | *(&v45 + 1) | v47)
  {
    v21 = v0 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator__colorPickerState;
    swift_beginAccess();
    v22 = *(v21 + 8);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v22;
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v22;
    swift_retain_n();
    Binding.init(get:set:)();
    v36[2] = v40;
    v36[3] = v41;
    v37 = v42;
    v36[0] = v38;
    v36[1] = v39;
    sub_100004944(&qword_100076350, &qword_100051160);
    Binding.wrappedValue.getter();
    sub_1000059D4(&v38, &qword_100076350, &qword_100051160);
    v25 = [objc_opt_self() blackColor];
    sub_100019C44(v25, v35, v36);
    v26 = *(v21 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    v27 = *(v21 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    goto LABEL_8;
  }

  *(v0 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_isEditing) = 1;
  v6 = v0 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator__colorPickerState;
  swift_beginAccess();
  v7 = *(v6 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v8 = v41;
  if ((v41 & 0xFF00) != 0x200)
  {
    v32 = v39;
    v33 = v38;
    v9 = v40;
    v34 = v41 & 1;
    v10 = *(v6 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    v11 = static Published.subscript.modify();
    v13 = v12;
    v14 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_10002EC04(0, *(v14 + 2) + 1, 1, v14);
      *v13 = v14;
    }

    v16 = (v8 >> 8) & 1;
    v17 = *(v14 + 2);
    v18 = *(v14 + 3);
    v19 = v17 + 1;
    if (v17 >= v18 >> 1)
    {
      v31 = v17 + 1;
      v28 = v14;
      v29 = *(v14 + 2);
      v30 = sub_10002EC04((v18 > 1), v17 + 1, 1, v28);
      v17 = v29;
      v19 = v31;
      v14 = v30;
      *v13 = v30;
    }

    *(v14 + 2) = v19;
    v20 = &v14[56 * v17];
    *(v20 + 2) = v33;
    *(v20 + 3) = v32;
    *(v20 + 4) = v9;
    v20[80] = v34;
    v20[81] = v16;
    v11(&v38, 0);
  }
}

_OWORD *sub_100031E08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for _UIColorPickerContentViewController()
{
  result = qword_100076460;
  if (!qword_100076460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100031F00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100031F80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100031FF4()
{
  v1 = v0;
  v2 = sub_100004944(&qword_100076510, &qword_1000524F0);
  v122 = *(v2 - 8);
  v123 = v2;
  v3 = *(v122 + 64);
  __chkstk_darwin(v2);
  v121 = v109 - v4;
  v5 = sub_100004944(&qword_100076518, &qword_1000524F8);
  v125 = *(v5 - 8);
  v126 = v5;
  v6 = *(v125 + 64);
  __chkstk_darwin(v5);
  v124 = v109 - v7;
  v8 = sub_100004944(&qword_100076520, &qword_100052500);
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = *(v119 + 64);
  __chkstk_darwin(v8);
  v118 = v109 - v10;
  v11 = sub_100004944(&qword_100076528, &qword_100052508);
  v12 = *(v11 - 8);
  v128 = v11;
  v129 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v109 - v14;
  v114 = sub_100004944(&unk_100076530, &unk_100052510);
  v113 = *(v114 - 8);
  v16 = *(v113 + 64);
  __chkstk_darwin(v114);
  v110 = v109 - v17;
  v112 = sub_100004944(&unk_1000759A8, &qword_1000516E0);
  v111 = *(v112 - 8);
  v18 = *(v111 + 64);
  __chkstk_darwin(v112);
  v20 = v109 - v19;
  v21 = sub_100004944(&unk_100076540, &qword_100052520);
  v116 = *(v21 - 8);
  v117 = v21;
  v22 = *(v116 + 64);
  __chkstk_darwin(v21);
  v115 = v109 - v23;
  v24 = type metadata accessor for UIHostingControllerSizingOptions();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = (v0 + qword_100076400);
  *v26 = 0x64657463656C6573;
  v26[1] = 0xEB00000000626154;
  v27 = qword_100076408;
  *(v1 + v27) = [objc_allocWithZone(type metadata accessor for FavoritesStore()) init];
  v28 = qword_100076410;
  v29 = type metadata accessor for ColorPickerState();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v1 + v28) = sub_10002608C(_swiftEmptyArrayStorage);
  v32 = qword_100076418;
  v33 = type metadata accessor for ColorPickerConfiguration();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v36 + 40) = &type metadata for CombinedFullBrightnessWithRGBDisplayBoostBehavior;
  *(v36 + 48) = &off_10006DF78;
  *(v36 + 16) = 1;
  *(v36 + 56) = sub_1000384A0() & 1;
  *(v36 + 57) = sub_1000385C0() & 1;
  *(v1 + v32) = v36;
  *(v1 + qword_100076420) = 0;
  *(v1 + qword_100076428) = 0;
  *(v1 + qword_100076430) = 0;
  *(v1 + qword_100076438) = 0;
  *(v1 + qword_100076440) = 0;
  *(v1 + qword_100076448) = 0;
  *(v1 + qword_100076450) = 0;
  *(v1 + qword_100076458) = 0;
  v37 = *(v1 + v28);
  sub_100036398(&qword_100076250, type metadata accessor for ColorPickerState);

  v38 = ObservedObject.init(wrappedValue:)();
  v40 = v39;
  v134 = v36;
  State.init(wrappedValue:)();
  v41 = v130;
  v42 = v131;
  v130 = v38;
  v131 = v40;
  v132 = v41;
  v133 = v42;

  v43 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v44 = [v43 view];
  if (!v44)
  {
    __break(1u);
    goto LABEL_8;
  }

  v45 = v44;
  v109[1] = v42;
  v109[2] = v41;
  v109[3] = v40;
  v46 = [v44 layer];

  [v46 setHitTestsAsOpaque:1];
  UIHostingController.safeAreaRegions.setter();

  v47 = [v43 view];
  if (!v47)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v47 _setSafeAreaInsetsFrozen:1];

  v48 = qword_100076410;
  v49 = *&v43[qword_100076410];
  v50 = *&v43[qword_100076408];
  swift_getKeyPath();
  swift_getKeyPath();

  v51 = v50;
  static Published.subscript.getter();

  v52 = sub_10000C704(v130);

  swift_getKeyPath();
  swift_getKeyPath();
  v130 = v52;
  static Published.subscript.setter();
  v53 = *&v43[v48];

  sub_100025B10(v20);

  v54 = *&v43[v48];
  swift_beginAccess();

  sub_100004944(&qword_100076550, &qword_100051748);
  v55 = v15;
  Published.projectedValue.getter();
  swift_endAccess();

  v56 = sub_100008D7C(&qword_100076558, &qword_100076528, &qword_100052508);
  v57 = v110;
  v58 = v128;
  v127 = v56;
  Publisher<>.removeDuplicates()();
  v59 = *(v129 + 8);
  v60 = v55;
  v129 += 8;
  v109[0] = v59;
  v59(v55, v58);
  sub_100008D7C(&qword_100076560, &unk_1000759A8, &qword_1000516E0);
  sub_100008D7C(&qword_100076568, &unk_100076530, &unk_100052510);
  v61 = v114;
  v62 = v115;
  v63 = v112;
  Publisher.combineLatest<A>(_:)();
  (*(v113 + 8))(v57, v61);
  v64 = v20;
  v65 = v48;
  (*(v111 + 8))(v64, v63);
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = sub_100036208;
  *(v67 + 24) = v66;
  sub_100008D7C(&unk_100076570, &unk_100076540, &qword_100052520);
  v68 = v43;
  v69 = v117;
  v70 = Publisher<>.sink(receiveValue:)();

  (*(v116 + 8))(v62, v69);
  v71 = *&v68[qword_100076420];
  *&v68[qword_100076420] = v70;

  v72 = [objc_opt_self() standardUserDefaults];
  v73 = *&v68[qword_100076400];
  v74 = *&v68[qword_100076400 + 8];

  v75 = String._bridgeToObjectiveC()();

  v76 = [v72 stringForKey:v75];

  if (v76)
  {
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    v80._countAndFlagsBits = v77;
    v80._object = v79;
    v81 = _findStringSwitchCase(cases:string:)(&off_10006A610, v80);

    if (v81 <= 2)
    {
      v82 = *&v43[v48];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v130) = v81;

      static Published.subscript.setter();
    }
  }

  v83 = *&v43[v48];
  swift_beginAccess();

  sub_100004944(&qword_100075F98, &qword_1000525C0);
  v84 = v118;
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v117 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100008D7C(&unk_100076580, &qword_100076520, &qword_100052500);
  v85 = v120;
  v86 = Publisher<>.sink(receiveValue:)();

  (*(v119 + 8))(v84, v85);
  v87 = *&v68[qword_100076448];
  *&v68[qword_100076448] = v86;

  v88 = *&v43[v65];
  swift_beginAccess();

  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = v128;
  v90 = Publisher<>.sink(receiveValue:)();

  v91 = v109[0];
  (v109[0])(v60, v89);
  v92 = *&v68[qword_100076438];
  *&v68[qword_100076438] = v90;

  v93 = *&v43[v65];
  swift_beginAccess();

  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = Publisher<>.sink(receiveValue:)();

  v91(v60, v89);
  v95 = *&v68[qword_100076440];
  *&v68[qword_100076440] = v94;

  v96 = *&v43[v65];
  v97 = v65;
  swift_beginAccess();

  sub_100004944(&qword_100075FD8, &unk_100051DF0);
  v98 = v121;
  Published.projectedValue.getter();
  swift_endAccess();

  sub_100008D7C(&qword_100076590, &qword_100076510, &qword_1000524F0);
  sub_100036294();
  v99 = v123;
  v100 = v124;
  Publisher<>.removeDuplicates()();
  (*(v122 + 8))(v98, v99);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008D7C(&qword_1000765B0, &qword_100076518, &qword_1000524F8);
  v101 = v126;
  v102 = Publisher<>.sink(receiveValue:)();

  (*(v125 + 8))(v100, v101);
  v103 = *&v68[qword_100076430];
  *&v68[qword_100076430] = v102;

  v104 = *&v43[v97];

  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v106 = (v104 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close);
  v107 = *(v104 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close);
  v108 = *(v104 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close + 8);
  *v106 = sub_100036320;
  v106[1] = v105;

  sub_10000C134(v107);
}

void sub_100033044(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + qword_100076458) & 1) == 0)
    {
      v5 = Strong;
      v6 = [Strong parentViewController];
      if (v6)
      {
        v7 = v6;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
        }
      }

      else
      {
        v8 = 0;
      }

      [v8 _pickerDidSelectColor:a1 isVolatile:a2 & 1];

      Strong = v5;
    }
  }
}

void sub_100033124(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();

    v6 = *&v3[qword_100076400];
    v7 = *&v3[qword_100076400 + 8];

    v8 = String._bridgeToObjectiveC()();

    [v4 setValue:v5 forKey:v8];
  }
}

void sub_100033260(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v3 = Strong;
      v4 = [Strong parentViewController];
      if (v4)
      {
        v5 = v4;
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v7 = v6;
          v8 = swift_allocObject();
          v9 = v3;
          *(v8 + 16) = v3;
          v19 = sub_100036368;
          v20 = v8;
          aBlock = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_100033A2C;
          v18 = &unk_10006DD58;
          v10 = _Block_copy(&aBlock);
          v11 = v9;

          v12 = swift_allocObject();
          *(v12 + 16) = v11;
          v19 = sub_100036388;
          v20 = v12;
          aBlock = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_10002C56C;
          v18 = &unk_10006DDA8;
          v13 = _Block_copy(&aBlock);
          v14 = v11;

          [v7 _pickerDidShowEyedropperWithSelectionBlock:v10 dismissBlock:v13];

          _Block_release(v13);
          _Block_release(v10);
        }

        else
        {
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      v5 = Strong;
    }
  }
}

uint64_t sub_10003346C(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000598C(0, &qword_100076268, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_100036470;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002C56C;
  aBlock[3] = &unk_10006DE48;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100036398(&qword_100076270, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004944(&qword_100076278, &qword_100052210);
  sub_100008D7C(&qword_100076280, &qword_100076278, &qword_100052210);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v18);
}

uint64_t sub_100033768()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000337D4(void *a1, uint64_t a2)
{
  [a1 linearExposure];
  v5 = v4;
  v6 = *(a2 + qword_100076410);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v24;
  if (v24 >= v5)
  {
    sub_100019F88(a1, &v24);
  }

  else
  {
    v8 = [a1 standardDynamicRangeColor];
    v21 = 0.0;
    v22[0] = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    [v8 getRed:v22 green:&v21 blue:&v20 alpha:&v19];
    sub_100019F88([objc_allocWithZone(UIColor) initWithRed:v22[0] green:v21 blue:v20 alpha:v19 linearExposure:v7], &v24);
  }

  v10 = v25;
  v9 = v26;
  v11 = v24;
  v12 = v28;
  v13 = v27;
  if (v7 <= 1.0 || v28 <= 1.0)
  {
    goto LABEL_15;
  }

  v15 = v24 > v25 ? v24 : v25;
  if (v15 <= v26)
  {
    v15 = v26;
  }

  if (v15 * 255.0 <= 254.0)
  {
LABEL_15:
    LOBYTE(v21) = 1;
    v16 = 0.0;
  }

  else
  {
    LOBYTE(v21) = 0;
    v16 = (v28 + -1.0) / (v7 + -1.0);
  }

  v17 = LOBYTE(v21) | (v29 << 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v22[0] = v11;
  v22[1] = v10;
  v22[2] = v9;
  v22[3] = v13;
  v22[4] = v12;
  v22[5] = v16;
  v23 = v17;

  return static Published.subscript.setter();
}

void sub_100033A2C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100033A94(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000598C(0, &qword_100076268, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_100036390;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002C56C;
  aBlock[3] = &unk_10006DDF8;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100036398(&qword_100076270, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004944(&qword_100076278, &qword_100052210);
  sub_100008D7C(&qword_100076280, &qword_100076278, &qword_100052210);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v15);
}

uint64_t sub_100033D88(uint64_t a1)
{
  v1 = *(a1 + qword_100076410);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100033E00(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v3 = Strong;
      v4 = [Strong parentViewController];
      if (v4)
      {
        v5 = v4;
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (!v6)
        {
        }
      }

      else
      {
        v6 = 0;
      }

      [v6 _pickerDidFloatEyeDropper];

      Strong = v3;
    }
  }
}

void sub_100033EC0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_100076408);
    v4 = *(Strong + qword_100076410);
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v3;
    static Published.subscript.getter();

    sub_10000C860(v1, v7);
  }
}

void sub_100033FA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong parentViewController];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
      }
    }

    else
    {
      v4 = 0;
    }

    [v4 _pickerDidFinish];
  }
}

void sub_1000340A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for _UIColorPickerContentViewController();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillAppear:", a3);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setBackgroundColor:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10003413C(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for _UIColorPickerContentViewController();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidDisappear:", a3);
  v5 = *&v4[qword_100076410];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t sub_1000341EC(void *a1)
{
  v2 = qword_100076458;
  *(v1 + qword_100076458) = 1;
  if (a1)
  {
    v3 = a1;
    v4 = String._bridgeToObjectiveC()();
    v5 = sub_100019EAC();

    if (v5 == 2)
    {
      if (qword_1000743E0 != -1)
      {
        swift_once();
      }

      v5 = byte_10007B138;
    }

    v6 = v3;
    sub_100019C44(v6, v5 & 1, &v13);
    v7 = HIBYTE(v14);
    v8 = *(v1 + qword_100076410);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  else
  {
    v7 = 2;
  }

  v9 = *(v1 + qword_100076410);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12 == 1)
  {
    if (*(v1 + qword_100076450))
    {
      v10 = v7 == 2;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  result = static Published.subscript.setter();
  *(v1 + v2) = 0;
  return result;
}

uint64_t sub_10003450C(void *a1, uint64_t a2, void *a3)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a3;
  v6 = a1;
  sub_1000341EC(a3);
}

id sub_10003458C(void *a1)
{
  v2 = v1;
  v4 = sub_100004944(&qword_100075648, &qword_1000511B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v78 = &v77[-2] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = &v77[-2] - v8;
  v9 = *(v1 + qword_100076450);
  *(v2 + qword_100076450) = a1;
  v10 = a1;

  v11 = *(v2 + qword_100076410);
  LOBYTE(v9) = [v10 _shouldUseDarkGridInDarkMode];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v86) = v9;

  static Published.subscript.setter();
  v12 = [v10 title];
  if (!v12)
  {
    sub_10000598C(0, &qword_1000762F0, UIColorPickerViewController_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v12 = [v14 localizedStringForKey:v15 value:0 table:v16];
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  swift_getKeyPath();
  swift_getKeyPath();
  *&v86 = v17;
  *(&v86 + 1) = v19;

  static Published.subscript.setter();
  v20 = [v10 _allowsNoColor];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v86) = v20;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v86)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (HIBYTE(v89) << 8 != 512)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v86 = v82;
  v87 = v83;
  v88 = v84;
  v89 = v85;
  sub_100018314();
  v22 = v21;
  v23 = [v21 CGColor];
  v24 = CGColorGetColorSpace(v23);

  if (v24)
  {
    v25 = CGColorSpaceCopyName(v24);

    if (v25)
    {
      goto LABEL_12;
    }
  }

  if (qword_1000743E0 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v26 = (byte_10007B138 ? &kCGColorSpaceDisplayP3 : &kCGColorSpaceSRGB);
    v25 = *v26;
LABEL_12:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v22;
    sub_1000341EC(v22);

LABEL_13:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v28 = v82;
    if (v28 != [v10 showsAlpha])
    {
      v29 = [v10 showsAlpha];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v82) = v29;

      static Published.subscript.setter();
    }

    v30 = *(v2 + qword_100076408);
    v31 = sub_10000C704([v10 showsAlpha]);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v82 = v31;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = *&v82;
    [v10 maxGain];
    if (v32 != v33)
    {
      [v10 maxGain];
      v35 = v34;
      swift_getKeyPath();
      swift_getKeyPath();
      *&v82 = v35;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v36 = v85;
      if ((v85 & 0xFF00) != 0x200)
      {
        v76 = v83;
        *v77 = v82;
        v38 = *(&v84 + 1);
        v37 = *&v84;
        v80 = v85 & 1;
        LOBYTE(v81) = v85 & 1;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (*&v82 < v37)
        {
          v37 = *&v82;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v82)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v37 <= 1.0 || *&v82 <= 1.0)
          {
            goto LABEL_28;
          }

          v39 = v77[1];
          if (v77[0] > v77[1])
          {
            v39 = v77[0];
          }

          if (v39 <= *&v76)
          {
            v39 = *&v76;
          }

          if (v39 * 255.0 <= 254.0)
          {
LABEL_28:
            LOBYTE(v81) = 1;
            v38 = 0.0;
          }

          else
          {
            LOBYTE(v81) = 0;
            v38 = (v37 + -1.0) / (*&v82 + -1.0);
          }
        }

        v40 = v36 & 0x100 | v81;
        swift_getKeyPath();
        swift_getKeyPath();
        v83 = v76;
        v82 = *v77;
        *&v84 = v37;
        *(&v84 + 1) = v38;
        v85 = v40;

        static Published.subscript.setter();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v41 = v82;
    if (v41 != [v10 _showsEyedropper])
    {
      v42 = [v10 _showsEyedropper];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v82) = v42;

      static Published.subscript.setter();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v43 = v82;
    if (v43 != [v10 _showsGridOnly])
    {
      v44 = [v10 _showsGridOnly];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v82) = v44;

      static Published.subscript.setter();
    }

    v45 = [v10 _suggestedColors];
    if (!v45)
    {
      break;
    }

    sub_10000598C(0, &qword_100074CE0, UIColor_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v2 >> 62)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (!v46)
      {
LABEL_47:

        v45 = _swiftEmptyArrayStorage;
        break;
      }
    }

    else
    {
      v46 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_47;
      }
    }

    v81 = _swiftEmptyArrayStorage;
    v22 = &v81;
    sub_10002F074(0, v46 & ~(v46 >> 63), 0);
    if ((v46 & 0x8000000000000000) == 0)
    {
      v47 = 0;
      v45 = v81;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v48 = *(v2 + 8 * v47 + 32);
        }

        sub_100019C44(v48, 0, &v82);
        v81 = v45;
        v50 = v45[2];
        v49 = v45[3];
        if (v50 >= v49 >> 1)
        {
          sub_10002F074((v49 > 1), v50 + 1, 1);
          v45 = v81;
        }

        ++v47;
        v45[2] = v50 + 1;
        v51 = &v45[7 * v50];
        v52 = v82;
        v53 = v83;
        v54 = v84;
        *(v51 + 40) = v85;
        *(v51 + 3) = v53;
        *(v51 + 4) = v54;
        *(v51 + 2) = v52;
      }

      while (v46 != v47);

      break;
    }

    __break(1u);
LABEL_76:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v81)
  {
    if (v45)
    {
      v55 = sub_10002E744(v81, v45);

      if (v55)
      {

        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  if (v45)
  {
LABEL_55:
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = v45;

    static Published.subscript.setter();
  }

LABEL_56:
  if ([v10 _userInterfaceStyleForGrid])
  {
    v56 = [v10 _userInterfaceStyleForGrid];
    v57 = v79;
    if (v56 == 2)
    {
      v58 = &enum case for ColorScheme.dark(_:);
    }

    else
    {
      if ([v10 _userInterfaceStyleForGrid] != 1)
      {
        goto LABEL_64;
      }

      v58 = &enum case for ColorScheme.light(_:);
    }

    v60 = *v58;
    v61 = type metadata accessor for ColorScheme();
    v62 = *(v61 - 8);
    (*(v62 + 104))(v57, v60, v61);
    (*(v62 + 56))(v57, 0, 1, v61);
  }

  else
  {
    v59 = type metadata accessor for ColorScheme();
    v57 = v79;
    (*(*(v59 - 8) + 56))(v79, 1, 1, v59);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100036674(v57, v78);

  static Published.subscript.setter();
  sub_1000366E4(v57);
LABEL_64:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v63 = v81;
  if (v63 != [v10 _isEmbedded])
  {
    v64 = [v10 _isEmbedded];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v81) = v64;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v65 = v81;
  if (v65 != [v10 _isInPopoverPresentation])
  {
    v66 = [v10 _isInPopoverPresentation];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v81) = v66;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v67 = v81;
  if (v67 != [v10 _useLandscapeLayout])
  {
    v68 = [v10 _useLandscapeLayout];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v81) = v68;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v69 = v81;
  [v10 _preferredWidth];
  if (*&v69 != v70)
  {
    [v10 _preferredWidth];
    v72 = v71;
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = v72;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v73 = v81;
  result = [v10 _isInSheetPresentation];
  if (v73 != result)
  {
    v75 = [v10 _isInSheetPresentation];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v81) = v75;

    return static Published.subscript.setter();
  }

  return result;
}

void sub_1000356B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10003458C(v4);
}

void sub_100035724(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2]();

  _Block_release(v3);
}

void sub_10003576C(void *a1)
{
  v4 = a1;
  v1 = [v4 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  [v3 _pickerDidFinish];
}

void sub_100035810()
{
  v1 = *(v0 + qword_100076400 + 8);

  v2 = *(v0 + qword_100076410);

  v3 = *(v0 + qword_100076418);

  v4 = *(v0 + qword_100076420);

  v5 = *(v0 + qword_100076428);

  v6 = *(v0 + qword_100076430);

  v7 = *(v0 + qword_100076438);

  v8 = *(v0 + qword_100076440);

  v9 = *(v0 + qword_100076448);

  v10 = *(v0 + qword_100076450);
}

id sub_1000358E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIColorPickerContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003591C(uint64_t a1)
{
  v2 = *(a1 + qword_100076400 + 8);

  v3 = *(a1 + qword_100076410);

  v4 = *(a1 + qword_100076418);

  v5 = *(a1 + qword_100076420);

  v6 = *(a1 + qword_100076428);

  v7 = *(a1 + qword_100076430);

  v8 = *(a1 + qword_100076438);

  v9 = *(a1 + qword_100076440);

  v10 = *(a1 + qword_100076448);

  v11 = *(a1 + qword_100076450);
}

__n128 sub_100035ADC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v7;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_100035B7C(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100035C28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100035CA8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100035E44(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100035EC0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100004944(&qword_100075648, &qword_1000511B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100036674(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100036674(v10, v8);

  static Published.subscript.setter();
  return sub_1000366E4(v10);
}

void sub_100035FC8()
{
  v1 = v0;
  v2 = (v0 + qword_100076400);
  *v2 = 0x64657463656C6573;
  v2[1] = 0xEB00000000626154;
  v3 = qword_100076408;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for FavoritesStore()) init];
  v4 = qword_100076410;
  v5 = type metadata accessor for ColorPickerState();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v1 + v4) = sub_10002608C(_swiftEmptyArrayStorage);
  v8 = qword_100076418;
  v9 = type metadata accessor for ColorPickerConfiguration();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v12 + 40) = &type metadata for CombinedFullBrightnessWithRGBDisplayBoostBehavior;
  *(v12 + 48) = &off_10006DF78;
  *(v12 + 16) = 1;
  *(v12 + 56) = sub_1000384A0() & 1;
  v13 = sub_1000385C0();
  *(v1 + v8) = v12;
  *(v1 + qword_100076420) = 0;
  *(v1 + qword_100076428) = 0;
  *(v1 + qword_100076430) = 0;
  *(v1 + qword_100076438) = 0;
  *(v1 + qword_100076440) = 0;
  *(v1 + qword_100076448) = 0;
  *(v12 + 57) = v13 & 1;
  *(v1 + qword_100076450) = 0;
  *(v1 + qword_100076458) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000361D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036210()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036248(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

unint64_t sub_100036294()
{
  result = qword_100076598;
  if (!qword_100076598)
  {
    sub_100008B90(&unk_1000765A0, &qword_1000516B0);
    sub_10000DD64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076598);
  }

  return result;
}

uint64_t sub_100036330()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100036398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100036430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036470()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100033768();
}

uint64_t sub_100036674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100075648, &qword_1000511B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000366E4(uint64_t a1)
{
  v2 = sub_100004944(&qword_100075648, &qword_1000511B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000367F8()
{
  v1 = v0;
  v2 = &UIColorPickerUIServiceAppDelegate__properties;
  v3 = [v0 layer];
  v4 = UIEditMenuConfiguration_ptr;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath;
  if (*&v1[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath])
  {
    v7 = v5;
    v8 = [*&v1[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] CGPath];
    v5 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v5 setPath:v8];

  v9 = [v1 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  if (*&v1[v6])
  {
    v11 = v10;
    [*&v1[v6] lineWidth];
    v10 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  [v10 setLineWidth:v12];

  v13 = [v1 layer];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  if (*&v1[v6])
  {
    v15 = v14;
    [*&v1[v6] miterLimit];
    v14 = v15;
  }

  else
  {
    v16 = 10.0;
  }

  [v14 setMiterLimit:v16];

  v17 = [v1 layer];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClassUnconditional();
  v19 = *&v1[v6];
  v20 = &kCALineCapButt;
  if (v19)
  {
    v21 = [v19 lineCapStyle];
    v22 = &kCALineCapRound;
    if (v21 != 1)
    {
      v22 = &kCALineCapButt;
    }

    if (v21 == 2)
    {
      v20 = &kCALineCapSquare;
    }

    else
    {
      v20 = v22;
    }
  }

  v23 = *v20;
  [v18 setLineCap:v23];

  v24 = [v1 layer];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClassUnconditional();
  v26 = *&v1[v6];
  v27 = &kCALineJoinMiter;
  if (v26)
  {
    v28 = [v26 lineJoinStyle];
    v29 = &kCALineJoinRound;
    if (v28 != 1)
    {
      v29 = &kCALineJoinMiter;
    }

    if (v28 == 2)
    {
      v27 = &kCALineJoinBevel;
    }

    else
    {
      v27 = v29;
    }
  }

  v30 = *v27;
  [v25 setLineJoin:v30];

  v31 = [v1 layer];
  objc_opt_self();
  v32 = swift_dynamicCastObjCClassUnconditional();
  v33 = *&v1[v6];
  if (v33 && ([v33 usesEvenOddFillRule] & 1) != 0)
  {
    v34 = &kCAFillRuleEvenOdd;
  }

  else
  {
    v34 = &kCAFillRuleNonZero;
  }

  v35 = *v34;
  [v32 setFillRule:v35];

  v36 = *&v1[v6];
  if (v36)
  {
    v53 = 0;
    v37 = v36;
    [v37 getLineDash:0 count:&v53 phase:0];
    v38 = v53;
    if (v53 >= 1)
    {
      v52 = 0.0;
      v39 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v39 + 16) = v38;
      bzero((v39 + 32), 8 * v38);
      [v37 getLineDash:v39 + 32 count:&v53 phase:&v52];
      v40 = [v1 layer];
      objc_opt_self();
      v41 = swift_dynamicCastObjCClassUnconditional();
      v42 = v41;
      v43 = *(v39 + 16);
      if (v43)
      {
        v50 = v41;
        specialized ContiguousArray.reserveCapacity(_:)();
        v44 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithDouble:*(v39 + v44)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v45 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v44 += 8;
          --v43;
        }

        while (v43);

        v4 = UIEditMenuConfiguration_ptr;
        v2 = &UIColorPickerUIServiceAppDelegate__properties;
        v42 = v50;
      }

      else
      {
      }

      sub_10000598C(0, &qword_1000754A8, NSNumber_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v42 setLineDashPattern:isa];

      v48 = [v1 *&v2[413]];
      v49 = v4[77];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setLineDashPhase:v52];
    }
  }

  else
  {
    v46 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLineDashPattern:0];

    v51 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLineDashPhase:0.0];
  }
}

id sub_100036FA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10003700C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_colorView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_maskShapeView;
  type metadata accessor for ShapeView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_barView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for RemoveColorCell();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_100037220();

  return v12;
}

id sub_100037120(void *a1)
{
  v3 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_colorView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_maskShapeView;
  type metadata accessor for ShapeView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_barView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RemoveColorCell();
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_100037220();
  }

  return v7;
}

void sub_100037220()
{
  v1 = [v0 contentView];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor:v3];

  v4 = [v0 contentView];
  v5 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_colorView];
  [v4 addSubview:v5];

  v6 = [v0 contentView];
  v7 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_maskShapeView];
  [v6 setMaskView:v7];

  v8 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_barView];
  v9 = [v2 systemRedColor];
  [v8 setBackgroundColor:v9];

  v10 = [v8 layer];
  [v10 setCornerRadius:1.5];

  v11 = [v8 layer];
  [v11 setCornerCurve:kCACornerCurveContinuous];

  [v8 setClipsToBounds:1];
  v12 = [v0 contentView];
  [v12 addSubview:v8];

  v13 = [v2 systemGray5Color];
  [v5 setBackgroundColor:v13];

  v14 = [v2 blackColor];
  v15 = [v7 layer];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClassUnconditional();
  if (v14)
  {
    v17 = v16;
    v18 = [v14 CGColor];
    v16 = v17;
  }

  else
  {
    v18 = 0;
  }

  [v16 setFillColor:v18];

  [v0 setIsAccessibilityElement:1];
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [v0 setAccessibilityLabel:v23];
}

void sub_1000376A4()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for RemoveColorCell();
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_colorView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_maskShapeView];
  [v1 bounds];
  [v3 setFrame:?];
  [v1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 bezierPathWithOvalInRect:{v5, v7, v9, v11}];
  if ([v1 isSelected])
  {
    [v1 bounds];
    v35 = CGRectInset(v34, 3.0, 3.0);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    [v1 bounds];
    v37 = CGRectInset(v36, 6.0, 6.0);
    v18 = v37.origin.x;
    v19 = v37.origin.y;
    v20 = v37.size.width;
    v21 = v37.size.height;
    v22 = [v12 bezierPathWithOvalInRect:{x, y, width, height}];
    v23 = [v22 bezierPathByReversingPath];

    [v13 appendPath:v23];
    v24 = [v12 bezierPathWithOvalInRect:{v18, v19, v20, v21}];
    [v13 appendPath:v24];
  }

  v25 = *&v3[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath];
  *&v3[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] = v13;
  v26 = v13;

  sub_1000367F8();
  v27 = [v1 isSelected];
  [v1 bounds];
  v28 = CGRectGetHeight(v38);
  v29 = -8.0;
  if (v27)
  {
    v29 = -18.0;
  }

  v30 = *&v1[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_barView];
  *&v32.a = 0x3FF0000000000000uLL;
  v31 = v28 + v29;
  v32.c = 0.0;
  v32.d = 1.0;
  *&v32.tx = 0uLL;
  [v30 setTransform:&v32];
  [v30 setBounds:{0.0, 0.0, 3.0, v31}];
  [v1 center];
  [v30 setCenter:?];
  CGAffineTransformMakeRotation(&v32, 0.785398163);
  [v30 setTransform:&v32];
}

UIAccessibilityTraits sub_100037A44()
{
  if (![v0 isSelected])
  {
    return UIAccessibilityTraitButton;
  }

  result = UIAccessibilityTraitSelected;
  if (!UIAccessibilityTraitSelected)
  {
    if (!UIAccessibilityTraitButton)
    {
      return 0;
    }

    return UIAccessibilityTraitButton | UIAccessibilityTraitSelected;
  }

  if ((UIAccessibilityTraitButton & ~UIAccessibilityTraitSelected) != 0)
  {
    return UIAccessibilityTraitButton | UIAccessibilityTraitSelected;
  }

  return result;
}

id sub_100037AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoveColorCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100037BA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = static Alignment.center.getter();
  v11 = v10;
  sub_100037DD4(v2, &v22);
  v28 = v24;
  v29[0] = v25[0];
  *(v29 + 9) = *(v25 + 9);
  v26 = v22;
  v27 = v23;
  v30[2] = v24;
  v31[0] = v25[0];
  *(v31 + 9) = *(v25 + 9);
  v30[0] = v22;
  v30[1] = v23;
  sub_100008A40(&v26, v21, &qword_100076630, &qword_100052BB0);
  sub_1000059D4(v30, &qword_100076630, &qword_100052BB0);
  v34 = v28;
  v35[0] = v29[0];
  *(v35 + 9) = *(v29 + 9);
  v32 = v26;
  v33 = v27;
  (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGBLinear(_:), v4);
  v12 = Color.init(_:white:opacity:)();
  v13 = [objc_opt_self() currentDevice];
  [v13 userInterfaceIdiom];

  LOBYTE(v13) = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v9;
  *(a1 + 8) = v11;
  v15 = v35[0];
  *(a1 + 48) = v34;
  *(a1 + 64) = v15;
  *(a1 + 73) = *(v35 + 9);
  v16 = v33;
  *(a1 + 16) = v32;
  *(a1 + 32) = v16;
  *(a1 + 96) = v12;
  *(a1 + 104) = 0x4000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = v13;
  *(a1 + 136) = v17;
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  *(a1 + 160) = v20;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_100037DD4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() systemBackgroundColor];
  v5 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v7 = a1[1];
  v31 = *a1;
  v32 = v7;
  v33 = a1[2];
  v34 = *(a1 + 24);
  v8 = sub_10001944C();
  v9 = swift_getKeyPath();
  v10 = [objc_opt_self() currentDevice];
  [v10 userInterfaceIdiom];

  LOBYTE(v10) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v30 = 0;
  *&v20 = v9;
  *(&v20 + 1) = v8;
  LOBYTE(v21) = v10;
  *(&v21 + 1) = v11;
  *v22 = v12;
  *&v22[8] = v13;
  *&v22[16] = v14;
  v22[24] = 0;
  *a2 = KeyPath;
  *(a2 + 8) = v5;
  v15 = v20;
  v16 = v21;
  v17 = *v22;
  *(a2 + 57) = *&v22[9];
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 16) = v15;
  v23[0] = v9;
  v23[1] = v8;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = 0;

  sub_100008A40(&v20, v19, &qword_100076638, &qword_100052BE8);
  sub_1000059D4(v23, &qword_100076638, &qword_100052BE8);
}

uint64_t sub_100037F88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  return sub_100037BA4(a1);
}

uint64_t sub_100037FCC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100037FF8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100038024(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100038050(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_100038080()
{
  result = qword_100076640;
  if (!qword_100076640)
  {
    sub_100008B90(&qword_100076648, &qword_100052BF0);
    sub_10003810C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076640);
  }

  return result;
}

unint64_t sub_10003810C()
{
  result = qword_100076650;
  if (!qword_100076650)
  {
    sub_100008B90(&qword_100076658, &qword_100052BF8);
    sub_100038198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076650);
  }

  return result;
}

unint64_t sub_100038198()
{
  result = qword_100076660;
  if (!qword_100076660)
  {
    sub_100008B90(&qword_100076668, &qword_100052C00);
    sub_100038224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076660);
  }

  return result;
}

unint64_t sub_100038224()
{
  result = qword_100076670;
  if (!qword_100076670)
  {
    sub_100008B90(&qword_100076678, &qword_100052C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076670);
  }

  return result;
}

void sub_100038288()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_100076680 = v2;
}

uint64_t sub_100038300()
{
  sub_10000898C(v0 + 2);
  v1 = OBJC_IVAR____TtC20ColorPickerUIService24ColorPickerConfiguration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ColorPickerConfiguration()
{
  result = qword_1000766B8;
  if (!qword_1000766B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000383F8()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000384A0()
{
  if (qword_1000743E8 != -1)
  {
    swift_once();
  }

  v0 = qword_100076680;
  if (!qword_100076680)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1000386E0(&v6);
    return 1;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t sub_1000385C0()
{
  if (qword_1000743E8 != -1)
  {
    swift_once();
  }

  v0 = qword_100076680;
  if (!qword_100076680)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1000386E0(&v6);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000386E0(uint64_t a1)
{
  v2 = sub_100004944(&unk_100076900, &unk_100052CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CombinedFullBrightnessWithRGBDisplayBoostBehavior(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for CombinedFullBrightnessWithRGBDisplayBoostBehavior(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000388D4(double a1)
{
  sub_100004944(&qword_1000746F0, &qword_10004E888);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10004E490;
  *(v2 + 32) = [objc_opt_self() blackColor];
  sub_1000195E4(a1);
  *(v2 + 40) = v3;
  return v2;
}

double sub_100038964(double a1, double a2)
{
  v2 = a1 <= 0.0;
  result = 1.0;
  if (!v2)
  {
    return a2;
  }

  return result;
}

uint64_t sub_1000389A0(__int128 *a1)
{
  if ((a1[3] & 0xFF00) == 0x200)
  {
    sub_100008BD8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000C030();
    v6 = Text.init<A>(_:)();
    v8 = v7;
    LOBYTE(v5) = v9;
    sub_100004944(&qword_100076788, &qword_100052E40);
    sub_100039664();
    View.accessibility(value:)();
    v10 = v5 & 1;
    v11 = v6;
    v12 = v8;
  }

  else
  {
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];
    v25 = *(a1 + 24);
    sub_100018314();
    v14 = v13;
    v15 = [v13 _accessibilityNameWithLuma];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000C030();
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    sub_100004944(&qword_100076788, &qword_100052E40);
    sub_100039664();
    View.accessibility(value:)();
    v10 = v20 & 1;
    v11 = v16;
    v12 = v18;
  }

  sub_10000C084(v11, v12, v10);
}

uint64_t sub_100038C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = sub_100004944(&qword_1000767B0, &qword_100052E58);
  v3 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v5 = v58 - v4;
  v60 = sub_100004944(&qword_1000767B8, &qword_100052E60);
  v59 = *(v60 - 8);
  v6 = *(v59 + 64);
  v7 = __chkstk_darwin(v60);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v58 - v10;
  v62 = sub_100004944(&qword_1000767C0, &qword_100052E68);
  v12 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = v58 - v13;
  v63 = sub_100004944(&qword_1000767C8, &qword_100052E70);
  v14 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v16 = (v58 - v15);
  v17 = sub_100004944(&qword_1000767D0, &qword_100052E78);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v58 - v22;
  v24 = *(a1 + 64);
  if ((v24 & 0xFF00) == 0x200)
  {
    v25 = [objc_opt_self() systemGray5Color];
    v26 = Color.init(uiColor:)();
    v27 = *(type metadata accessor for RoundedRectangle() + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = type metadata accessor for RoundedCornerStyle();
    (*(*(v29 - 8) + 104))(&v23[v27], v28, v29);
    __asm { FMOV            V0.2D, #1.5 }

    *v23 = _Q0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v35 = &v23[*(sub_100004944(&qword_1000767D8, &qword_100052E80) + 36)];
    v36 = v66[1];
    *v35 = v66[0];
    *(v35 + 1) = v36;
    *(v35 + 2) = v66[2];
    v37 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    v39 = &v23[*(sub_100004944(&qword_1000767E0, &qword_100052EB8) + 36)];
    *v39 = KeyPath;
    v39[1] = v37;
    static UnitPoint.center.getter();
    v40 = &v23[*(v17 + 36)];
    *v40 = 0x3FE921FB54442D18;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    sub_100008A40(v23, v21, &qword_1000767D0, &qword_100052E78);
    *v16 = v26;
    v43 = sub_100004944(&qword_1000767E8, &qword_100052EC0);
    sub_100008A40(v21, v16 + *(v43 + 48), &qword_1000767D0, &qword_100052E78);
    swift_retain_n();
    sub_1000059D4(v21, &qword_1000767D0, &qword_100052E78);

    sub_100008A40(v16, v61, &qword_1000767C8, &qword_100052E70);
    swift_storeEnumTagMultiPayload();
    sub_100008D7C(&qword_1000767F0, &qword_1000767B0, &qword_100052E58);
    sub_100008D7C(&qword_1000767F8, &qword_1000767C8, &qword_100052E70);
    _ConditionalContent<>.init(storage:)();

    sub_1000059D4(v16, &qword_1000767C8, &qword_100052E70);
    return sub_1000059D4(v23, &qword_1000767D0, &qword_100052E78);
  }

  else
  {
    v45 = *(a1 + 32);
    v67 = *(a1 + 16);
    v68 = v45;
    v69 = *(a1 + 48);
    v46 = static Color.white.getter();
    v47 = static Color.black.getter();
    v48 = swift_allocObject();
    v49 = *(a1 + 48);
    *(v48 + 48) = *(a1 + 32);
    *(v48 + 64) = v49;
    v50 = *(a1 + 16);
    *(v48 + 16) = *a1;
    *(v48 + 32) = v50;
    v51 = v68;
    *(v48 + 88) = v67;
    *(v48 + 80) = *(a1 + 64);
    *(v48 + 104) = v51;
    *(v48 + 120) = v69;
    *(v48 + 136) = v24;
    sub_100039A64(a1, v66);
    v52 = v11;
    _CALayerView<>.init(onUpdate:)();
    v53 = v59;
    v54 = *(v59 + 16);
    v55 = v60;
    v54(v9, v52, v60);
    *v5 = v46;
    *(v5 + 1) = v47;
    *(v5 + 8) = 256;
    v56 = sub_100004944(&qword_100076800, &qword_100052EC8);
    v54(&v5[*(v56 + 64)], v9, v55);
    v57 = *(v53 + 8);
    v58[1] = v46;
    swift_retain_n();
    swift_retain_n();
    v57(v9, v55);

    sub_100008A40(v5, v61, &qword_1000767B0, &qword_100052E58);
    swift_storeEnumTagMultiPayload();
    sub_100008D7C(&qword_1000767F0, &qword_1000767B0, &qword_100052E58);
    sub_100008D7C(&qword_1000767F8, &qword_1000767C8, &qword_100052E70);
    _ConditionalContent<>.init(storage:)();

    sub_1000059D4(v5, &qword_1000767B0, &qword_100052E58);
    return (v57)(v52, v55);
  }
}

void sub_10003932C(void *a1, void *a2)
{
  if (*a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100039A64(a2, v10);
    sub_100039A64(a2, v10);
    static Published.subscript.getter();

    v4 = &CADynamicRangeHigh;
    if (v10[0] <= 1.0)
    {
      v4 = &CADynamicRangeAutomatic;
    }

    v5 = *v4;
    [a1 setPreferredDynamicRange:v5];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
    sub_100039AA4(a2);

    [a1 setContentsMaximumDesiredEDR:v10[0]];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
    sub_100039AA4(a2);

    sub_1000195E4(v10[0]);
    v7 = v6;
    v8 = [v6 CGColor];

    [a1 setBackgroundColor:v8];
  }

  else
  {
    v9 = a2[1];
    type metadata accessor for ColorPickerState();
    sub_100039BA4(&qword_100076250, type metadata accessor for ColorPickerState);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10003955C()
{
  v1 = sub_100004944(&qword_100076788, &qword_100052E40);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (v10 - v3);
  v5 = v0[3];
  v14 = v0[2];
  v15 = v5;
  v16 = *(v0 + 32);
  v6 = v0[1];
  v12 = *v0;
  v13 = v6;
  *v4 = static Alignment.center.getter();
  v4[1] = v7;
  v8 = sub_100004944(&qword_100076790, &qword_100052E48);
  sub_100038C04(&v12, v4 + *(v8 + 44));
  v10[0] = v13;
  v10[1] = v14;
  v10[2] = v15;
  v11 = v16;
  sub_1000389A0(v10);
  return sub_1000059D4(v4, &qword_100076788, &qword_100052E40);
}

unint64_t sub_100039664()
{
  result = qword_100076798;
  if (!qword_100076798)
  {
    sub_100008B90(&qword_100076788, &qword_100052E40);
    sub_100008D7C(&qword_1000767A0, &qword_1000767A8, &qword_100052E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076798);
  }

  return result;
}

double sub_10003971C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Path.init()();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxY(v15);
  Path.move(to:)();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMaxX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  Path.addLine(to:)();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinY(v19);
  Path.addLine(to:)();
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxY(v21);
  Path.addLine(to:)();
  Path.closeSubpath()();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_10003987C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10000E290;
}

uint64_t sub_100039904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039CE0();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100039968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039CE0();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000399CC(uint64_t a1)
{
  v2 = sub_100039CE0();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100039A20()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 138, 7);
}

unint64_t sub_100039AE8()
{
  result = qword_100076808;
  if (!qword_100076808)
  {
    sub_100008B90(&qword_100076810, &qword_100052F28);
    sub_100039664();
    sub_100039BA4(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076808);
  }

  return result;
}

uint64_t sub_100039BA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100039C34()
{
  result = qword_100076828;
  if (!qword_100076828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076828);
  }

  return result;
}

unint64_t sub_100039C8C()
{
  result = qword_100076830;
  if (!qword_100076830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076830);
  }

  return result;
}

unint64_t sub_100039CE0()
{
  result = qword_100076838;
  if (!qword_100076838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076838);
  }

  return result;
}

id sub_100039D34(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color;
  *&v4[v9] = [objc_opt_self() blackColor];
  *&v4[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction] = 0;
  v11 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_blackHalfView;
  type metadata accessor for ShapeView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maskShapeView;
  *&v4[v14] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FavoriteColorWellCell();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_10003A078();

  return v15;
}

id sub_100039EA4(void *a1)
{
  v3 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color;
  *&v1[v3] = [objc_opt_self() blackColor];
  *&v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain] = 0x3FF0000000000000;
  v4 = &v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction] = 0;
  v5 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_blackHalfView;
  type metadata accessor for ShapeView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v6] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maskShapeView;
  *&v1[v8] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FavoriteColorWellCell();
  v9 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_10003A078();
  }

  return v10;
}

id sub_10003A000()
{
  v1 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(UIEditMenuInteraction) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10003A078()
{
  v1 = [v0 contentView];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor:v3];

  v4 = [v0 contentView];
  v5 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_blackHalfView];
  [v4 addSubview:v5];

  v6 = [v0 contentView];
  v7 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView];
  [v6 addSubview:v7];

  v8 = [v0 contentView];
  v9 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maskShapeView];
  [v8 setMaskView:v9];

  v10 = [v7 layer];
  v11 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain;
  v12 = &CADynamicRangeHigh;
  if (*&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain] <= 1.0)
  {
    v12 = &CADynamicRangeAutomatic;
  }

  v13 = *v12;
  [v10 setPreferredDynamicRange:v13];

  v14 = [v7 layer];
  [v14 setContentsMaximumDesiredEDR:*&v0[v11]];

  [v7 setBackgroundColor:*&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color]];
  v15 = [v2 blackColor];
  v16 = [v5 layer];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClassUnconditional();
  if (v15)
  {
    v18 = v17;
    v19 = [v15 CGColor];
    v17 = v18;
  }

  else
  {
    v19 = 0;
  }

  [v17 setFillColor:v19];

  v20 = [v2 blackColor];
  v21 = [v9 layer];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClassUnconditional();
  if (v20)
  {
    v23 = v22;
    v24 = [v20 CGColor];
    v22 = v23;
  }

  else
  {
    v24 = 0;
  }

  [v22 setFillColor:v24];

  v25 = sub_10003A000();
  [v0 addInteraction:v25];
}

void sub_10003A494()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for FavoriteColorWellCell();
  objc_msgSendSuper2(&v35, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView] setFrame:?];
  v10 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_blackHalfView];
  [v10 setFrame:{v3, v5, v7, v9}];
  v11 = *&v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maskShapeView];
  [v11 setFrame:{v3, v5, v7, v9}];
  v12 = [objc_allocWithZone(UIBezierPath) init];
  v36.origin.x = v3;
  v36.origin.y = v5;
  v36.size.width = v7;
  v36.size.height = v9;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v3;
  v37.origin.y = v5;
  v37.size.width = v7;
  v37.size.height = v9;
  [v12 moveToPoint:{MinX, CGRectGetMinY(v37)}];
  v38.origin.x = v3;
  v38.origin.y = v5;
  v38.size.width = v7;
  v38.size.height = v9;
  v14 = CGRectGetMinX(v38);
  v39.origin.x = v3;
  v39.origin.y = v5;
  v39.size.width = v7;
  v39.size.height = v9;
  [v12 addLineToPoint:{v14, CGRectGetMinY(v39)}];
  v40.origin.x = v3;
  v40.origin.y = v5;
  v40.size.width = v7;
  v40.size.height = v9;
  v15 = CGRectGetMinX(v40);
  v41.origin.x = v3;
  v41.origin.y = v5;
  v41.size.width = v7;
  v41.size.height = v9;
  [v12 addLineToPoint:{v15, CGRectGetMaxY(v41)}];
  v42.origin.x = v3;
  v42.origin.y = v5;
  v42.size.width = v7;
  v42.size.height = v9;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = v3;
  v43.origin.y = v5;
  v43.size.width = v7;
  v43.size.height = v9;
  [v12 addLineToPoint:{MaxX, CGRectGetMinY(v43)}];
  v44.origin.x = v3;
  v44.origin.y = v5;
  v44.size.width = v7;
  v44.size.height = v9;
  v17 = CGRectGetMinX(v44);
  v45.origin.x = v3;
  v45.origin.y = v5;
  v45.size.width = v7;
  v45.size.height = v9;
  [v12 addLineToPoint:{v17, CGRectGetMinY(v45)}];
  [v12 closePath];
  v18 = *&v10[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath];
  *&v10[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] = v12;
  v19 = v12;

  sub_1000367F8();
  v20 = objc_opt_self();
  v21 = [v20 bezierPathWithOvalInRect:{v3, v5, v7, v9}];
  if ([v1 isSelected])
  {
    v46.origin.x = v3;
    v46.origin.y = v5;
    v46.size.width = v7;
    v46.size.height = v9;
    v47 = CGRectInset(v46, 3.0, 3.0);
    x = v47.origin.x;
    y = v47.origin.y;
    width = v47.size.width;
    height = v47.size.height;
    v47.origin.x = v3;
    v47.origin.y = v5;
    v47.size.width = v7;
    v47.size.height = v9;
    v48 = CGRectInset(v47, 6.0, 6.0);
    v26 = v48.origin.x;
    v27 = v48.origin.y;
    v28 = v48.size.width;
    v29 = v48.size.height;
    v30 = [v20 bezierPathWithOvalInRect:{x, y, width, height}];
    v31 = [v30 bezierPathByReversingPath];

    [v21 appendPath:v31];
    v32 = [v20 bezierPathWithOvalInRect:{v26, v27, v28, v29}];
    [v21 appendPath:v32];
  }

  v33 = *&v11[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath];
  *&v11[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] = v21;
  v34 = v21;

  sub_1000367F8();
}

id sub_10003AB40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoriteColorWellCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003AC28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003AC38()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10003AC98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SpectrumView.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10003ACD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10003AD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10003AD98()
{
  sub_10003AE84();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_10003ADC0(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  *&v7[7] = *a1;
  *&v7[9] = v3;
  v4 = *(a1 + 49);
  LOBYTE(v7[0]) = 1;
  v7[11] = 0x3FF0000000000000;
  v7[12] = 0;
  v8 = 1;
  v9 = v4;
  sub_100018994(v7);
  [objc_opt_self() positionForColor:{*vcvt_hight_f32_f64(vcvt_f32_f64(*v7), *&v7[2]).i64}];
  return (v5 + 1.0) * 0.5 * a2;
}

unint64_t sub_10003AE84()
{
  result = qword_1000769C8;
  if (!qword_1000769C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000769C8);
  }

  return result;
}

id sub_10003AED8()
{
  v0 = [objc_allocWithZone(MTKView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setOpaque:1];
  [v0 setPaused:1];
  [v0 setEnableSetNeedsDisplay:1];
  sub_100004944(&qword_1000769D0, &qword_100053168);
  UIViewRepresentableContext.coordinator.getter();
  v1 = [objc_allocWithZone(SpectrumRenderer) initWithMetal:v0];
  v2 = *(v4 + 16);
  *(v4 + 16) = v1;

  return v0;
}

uint64_t sub_10003AFD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004944(&qword_1000769D8, &unk_100053170);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100004944(&qword_100074910, &unk_10004EF60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10003B124(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100004944(&qword_1000769D8, &unk_100053170);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100004944(&qword_100074910, &unk_10004EF60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ColorSpaceButton()
{
  result = qword_100076A38;
  if (!qword_100076A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B2AC()
{
  sub_10003B348();
  if (v0 <= 0x3F)
  {
    sub_10003B398();
    if (v1 <= 0x3F)
    {
      sub_1000153A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003B348()
{
  if (!qword_100076A48)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100076A48);
    }
  }
}

void sub_10003B398()
{
  if (!qword_100076A50)
  {
    sub_100008368();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_100076A50);
    }
  }
}

uint64_t sub_10003B410@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v23 = sub_100004944(&qword_100076A88, &qword_1000531E8);
  v22 = *(v23 - 8);
  v2 = *(v22 + 64);
  __chkstk_darwin(v23);
  v4 = &v20 - v3;
  v24 = sub_100004944(&qword_100076A90, &qword_1000531F0);
  v5 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v7 = &v20 - v6;
  v21 = sub_100004944(&qword_100076A98, &qword_1000531F8);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v21);
  v11 = &v20 - v10;
  v27 = v1;
  v26 = v1;
  sub_100004944(&qword_100076AA0, &qword_100053200);
  sub_100004944(&qword_100076AA8, &qword_100053208);
  sub_10003C3E0();
  sub_100008D7C(&qword_100076AD8, &qword_100076AA8, &qword_100053208);
  Menu.init(content:label:)();
  v12 = *(type metadata accessor for ColorSpaceButton() + 20);
  sub_100004944(&qword_1000769D8, &unk_100053170);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v22 + 32))(v7, v4, v23);
  v13 = &v7[*(v24 + 36)];
  v14 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v14;
  *(v13 + 6) = v34;
  v15 = v29;
  *v13 = v28;
  *(v13 + 1) = v15;
  v16 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v16;
  sub_10003C560();
  View.menuTitle(_:)();
  sub_10003C618(v7);
  v17 = v25;
  (*(v8 + 32))(v25, v11, v21);
  result = sub_100004944(&qword_100076AF0, &qword_100053220);
  v19 = (v17 + *(result + 36));
  *v19 = sub_10003C680;
  v19[1] = 0;
  return result;
}

uint64_t sub_10003B838(uint64_t a1)
{
  v2 = type metadata accessor for ColorSpaceButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10003C750(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_10003C7B8(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_10003C750(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_10003C7B8(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  Binding.init(get:set:)();
  v27 = v23;
  v28 = v24;
  v29 = v25;
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v23 = v15;
  v24 = v17;
  sub_10000C030();
  v23 = Text.init<A>(_:)();
  v24 = v18;
  v25 = v19 & 1;
  v26 = v20;
  sub_100004944(&qword_100076B08, &unk_100053268);
  sub_10003CAB0();
  sub_10003CB04();
  return Picker.init(selection:label:content:)();
}

uint64_t sub_10003BB3C()
{
  swift_getKeyPath();
  sub_100004944(&qword_100075290, qword_1000507B0);
  sub_100008D7C(&qword_100076B20, &qword_100075290, qword_1000507B0);
  sub_10003CAB0();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10003BC28@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10001840C();
  sub_10000C030();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_10003BC84@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v55 = type metadata accessor for DynamicTypeSize();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v55);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004944(&qword_100076AF8, &qword_100053228);
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v56 = &v50 - v9;
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = ObjCClassFromMetadata;
  v53 = objc_opt_self();
  v11 = [v53 bundleForClass:ObjCClassFromMetadata];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100004944(&qword_100075300, &qword_100050C20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10004E4A0;
  v16 = a1[3];
  v64 = a1[2];
  v65 = v16;
  v66 = *(a1 + 32);
  v17 = a1[1];
  v62 = *a1;
  v63 = v17;
  sub_100004944(&qword_100076350, &qword_100051160);
  Binding.wrappedValue.getter();
  v18 = sub_10001840C();
  v20 = v19;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10003C6A8();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  v21 = static String.localizedStringWithFormat(_:_:)();
  v23 = v22;

  *&v62 = v21;
  *(&v62 + 1) = v23;
  sub_10000C030();
  v24 = Text.init<A>(_:)();
  v51 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v52 = v29;
  v31 = a1 + *(type metadata accessor for ColorSpaceButton() + 24);
  sub_10001CBF0(v6);
  LOBYTE(v31) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v3 + 8))(v6, v55);
  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  KeyPath = swift_getKeyPath();
  *&v62 = v24;
  *(&v62 + 1) = v26;
  v34 = v28 & 1;
  LOBYTE(v63) = v28 & 1;
  *(&v63 + 1) = v30;
  *&v64 = KeyPath;
  BYTE8(v64) = v32;
  v35 = [v53 bundleForClass:v54];
  v36 = String._bridgeToObjectiveC()();
  v37 = String._bridgeToObjectiveC()();
  v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v60 = v39;
  v61 = v41;
  v42 = Text.init<A>(_:)();
  v44 = v43;
  LOBYTE(v37) = v45;
  sub_100004944(&qword_100076AB8, &qword_100053210);
  sub_10003C4A8();
  v46 = v56;
  View.overrideMenuTitle(_:)();
  sub_10000C084(v42, v44, v37 & 1);

  sub_10000C084(v51, v26, v34);

  v47 = v59;
  (*(v57 + 32))(v59, v46, v58);
  result = sub_100004944(&qword_100076AA0, &qword_100053200);
  v49 = (v47 + *(result + 36));
  *v49 = sub_10003C680;
  v49[1] = 0;
  return result;
}

uint64_t sub_10003C1BC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  v9 = a4[2];
  v10 = a4[3];
  v11 = *(a4 + 32);
  v7 = *a4;
  v8 = a4[1];
  sub_100004944(&qword_100076350, &qword_100051160);
  result = Binding.wrappedValue.getter();
  if (v4 != v6)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10003C2A0(__int128 *a1, char a2)
{
  v4 = a1[3];
  v21 = a1[2];
  v22 = v4;
  v23 = *(a1 + 32);
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  sub_100004944(&qword_100076350, &qword_100051160);
  Binding.wrappedValue.getter();
  if (a2)
  {
    sub_100018B1C(v24);
  }

  else
  {
    sub_100018994(v24);
  }

  v6 = a1[1];
  v7 = a1[3];
  v16 = a1[2];
  v17 = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v12 = v16;
  v13 = a1[3];
  v18 = *(a1 + 32);
  v14 = *(a1 + 32);
  v10 = v15[0];
  v11 = v6;
  sub_10003CBA0(v15, &v19);
  Binding.wrappedValue.setter();
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v19 = v10;
  v20 = v11;
  return sub_10003CC10(&v19);
}

unint64_t sub_10003C3E0()
{
  result = qword_100076AB0;
  if (!qword_100076AB0)
  {
    sub_100008B90(&qword_100076AA0, &qword_100053200);
    sub_100008B90(&qword_100076AB8, &qword_100053210);
    sub_10003C4A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076AB0);
  }

  return result;
}

unint64_t sub_10003C4A8()
{
  result = qword_100076AC0;
  if (!qword_100076AC0)
  {
    sub_100008B90(&qword_100076AB8, &qword_100053210);
    sub_100008D7C(&qword_100076AC8, &qword_100076AD0, &qword_100053218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076AC0);
  }

  return result;
}

unint64_t sub_10003C560()
{
  result = qword_100076AE0;
  if (!qword_100076AE0)
  {
    sub_100008B90(&qword_100076A90, &qword_1000531F0);
    sub_100008D7C(&qword_100076AE8, &qword_100076A88, &qword_1000531E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076AE0);
  }

  return result;
}

uint64_t sub_10003C618(uint64_t a1)
{
  v2 = sub_100004944(&qword_100076A90, &qword_1000531F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003C6A8()
{
  result = qword_100076B00;
  if (!qword_100076B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076B00);
  }

  return result;
}

uint64_t sub_10003C6FC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003C750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorSpaceButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorSpaceButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C81C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ColorSpaceButton() - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v9 = v4[2];
  v10 = v4[3];
  v11 = *(v4 + 32);
  v7 = *v4;
  v8 = v4[1];
  sub_100004944(&qword_100076350, &qword_100051160);
  result = Binding.wrappedValue.getter();
  *a1 = v6;
  return result;
}

uint64_t sub_10003C8C0()
{
  v1 = (type metadata accessor for ColorSpaceButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = v1[7];
  v10 = sub_100004944(&qword_1000769D8, &unk_100053170);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[8];
  sub_100004944(&qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DynamicTypeSize();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
    v13 = *(v6 + v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003CA3C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for ColorSpaceButton() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_10003C1BC(a1, v4, v5, v6);
}

unint64_t sub_10003CAB0()
{
  result = qword_100076B10;
  if (!qword_100076B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076B10);
  }

  return result;
}

unint64_t sub_10003CB04()
{
  result = qword_100076B18;
  if (!qword_100076B18)
  {
    sub_100008B90(&qword_100076B08, &unk_100053268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076B18);
  }

  return result;
}

uint64_t sub_10003CBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100076350, &qword_100051160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CC10(uint64_t a1)
{
  v2 = sub_100004944(&qword_100076350, &qword_100051160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003CC7C()
{
  result = qword_100076B28;
  if (!qword_100076B28)
  {
    sub_100008B90(&qword_100076AF0, &qword_100053220);
    sub_100008B90(&qword_100076A90, &qword_1000531F0);
    sub_10003C560();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076B28);
  }

  return result;
}

uint64_t sub_10003CD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003CE38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003CF08()
{
  sub_100005880();
  if (v0 <= 0x3F)
  {
    sub_100046F24(319, &qword_100074980, type metadata accessor for ColorPickerConfiguration);
    if (v1 <= 0x3F)
    {
      sub_100046F24(319, &qword_100074988, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        sub_1000451C8(319, &unk_100076C00, &type metadata for CGFloat, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10003D04C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CPSlider(0);
  v5 = *(sub_10001CE7C(*&v1[*(v4 + 40)], v1[*(v4 + 40) + 8]) + 57);

  if (v3 > 2)
  {
    if (v3 != 3 && (v3 == 4 || (v5 & 1) != 0))
    {
      a1[3] = &type metadata for DecimalSliderControlStyle;
      a1[4] = &off_10006E430;
      v7 = sub_1000408E0;
    }

    else
    {
      a1[3] = &type metadata for PercentageSliderControlStyle;
      a1[4] = &off_10006E460;
      v7 = sub_100040378;
    }
  }

  else
  {
    a1[3] = &type metadata for IntegerSliderControlStyle;
    a1[4] = &off_10006E400;
    v7 = sub_100040D18;
  }

  *a1 = v7;
  a1[1] = 0;
  return result;
}

uint64_t sub_10003D130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v47 = type metadata accessor for AccessibilityChildBehavior();
  v46 = *(v47 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v47);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CPSlider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v40 = v8;
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v9;
  v42 = sub_100004944(&qword_100076D80, &qword_100053720);
  v10 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v12 = &v36 - v11;
  v44 = sub_100004944(&qword_100076D88, &qword_100053728);
  v45 = *(v44 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v44);
  v38 = &v36 - v14;
  v41 = type metadata accessor for CPSlider;
  sub_100044994(v1, v9, type metadata accessor for CPSlider);
  v15 = *(v6 + 80);
  v37 = (v15 + 16) & ~v15;
  v16 = swift_allocObject();
  v39 = type metadata accessor for CPSlider;
  sub_100045294(v9, v16 + ((v15 + 16) & ~v15), type metadata accessor for CPSlider);
  v17 = [objc_opt_self() currentDevice];
  [v17 userInterfaceIdiom];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v64 = v66;
  v63 = v68;
  v56 = sub_1000452FC;
  v57 = v16;
  v58 = v65;
  v59 = v66;
  v60 = v67;
  v61 = v68;
  v62 = v69;
  sub_10003D04C(v53);
  v18 = v54;
  v19 = v55;
  sub_100008948(v53, v54);
  v20 = v2[2];
  v21 = v2[3];
  v50 = v2[1];
  v51 = v20;
  v52 = v21;
  sub_100004944(&qword_100075498, &qword_100053730);
  Binding.wrappedValue.getter();
  v50 = (*(v19 + 24))(v18, v19, v49, 0.0, 1.0);
  v51 = v22;
  sub_10000C030();
  v23 = Text.init<A>(_:)();
  v25 = v24;
  LOBYTE(v19) = v26;
  sub_10000898C(v53);
  sub_100004944(&qword_100076D90, &qword_100053738);
  sub_100045328();
  View.accessibility(value:)();
  sub_10000C084(v23, v25, v19 & 1);

  v27 = v43;
  static AccessibilityChildBehavior.combine.getter();
  v28 = sub_1000453E0();
  v29 = v38;
  v30 = v42;
  View.accessibilityElement(children:)();
  (*(v46 + 8))(v27, v47);
  sub_10004549C(v12);
  v31 = v36;
  sub_100044994(v2, v36, v41);
  v32 = v37;
  v33 = swift_allocObject();
  sub_100045294(v31, v33 + v32, v39);
  v56 = v30;
  v57 = v28;
  swift_getOpaqueTypeConformance2();
  v34 = v44;
  View.accessibilityAdjustableAction(_:)();

  return (*(v45 + 8))(v29, v34);
}

uint64_t sub_10003D71C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v5 = type metadata accessor for CPSlider(0);
  v62 = *(v5 - 8);
  v72 = *(v62 + 64);
  __chkstk_darwin(v5 - 8);
  v70 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GeometryProxy();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalCoordinateSpace();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for DragGesture();
  v14 = *(v13 - 8);
  v63 = v13;
  v64 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100004944(&qword_100075598, &qword_1000515B0);
  v18 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v58 = &v54 - v19;
  v66 = sub_100004944(&qword_100076DB8, &qword_100053750);
  v20 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v22 = (&v54 - v21);
  v23 = sub_100004944(&qword_100076DC0, &qword_100053758);
  v24 = *(v23 - 8);
  v67 = v23;
  v68 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v71 = &v54 - v26;
  *v22 = static Alignment.center.getter();
  v22[1] = v27;
  v60 = v22;
  v28 = sub_100004944(&qword_100076DC8, &unk_100053760);
  sub_10003DEC8(a2, a1, v22 + *(v28 + 44));
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v29 = a1;
  v30 = v7;
  (*(v8 + 16))(v10, v29, v7);
  v61 = type metadata accessor for CPSlider;
  v31 = a2;
  v32 = v70;
  sub_100044994(a2, v70, type metadata accessor for CPSlider);
  v33 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v34 = *(v62 + 80);
  v35 = (v9 + v34 + v33) & ~v34;
  v62 = v34 | 7;
  v36 = swift_allocObject();
  (*(v8 + 32))(v36 + v33, v10, v30);
  v59 = type metadata accessor for CPSlider;
  sub_100045294(v32, v36 + v35, type metadata accessor for CPSlider);
  sub_10004494C(&qword_1000755F8, &type metadata accessor for DragGesture);
  sub_10004494C(&qword_100075600, &type metadata accessor for DragGesture.Value);
  v37 = v58;
  v38 = v63;
  Gesture<>.onChanged(_:)();

  (*(v64 + 8))(v17, v38);
  v57 = v31;
  LODWORD(v64) = *(v31 + 56);
  v39 = *(v31 + 72);
  v63 = *(v31 + 64);
  v56 = v39;
  v55 = *(v31 + 80);
  LOBYTE(v76) = v64;
  v77 = v63;
  v78 = v39;
  v79 = v55;
  sub_100004944(&qword_100075608, &qword_100051108);
  GestureState.projectedValue.getter();
  v40 = v74;
  v41 = v75;
  v42 = v65;
  v43 = v37 + *(v65 + 44);
  *v43 = v73;
  *(v43 + 8) = v40;
  *(v43 + 16) = v41;
  v44 = (v37 + *(v42 + 48));
  *v44 = sub_10001F624;
  v44[1] = 0;
  static GestureMask.all.getter();
  v45 = sub_100008D7C(&qword_100076DD0, &qword_100076DB8, &qword_100053750);
  v46 = sub_100008D7C(&qword_100075640, &qword_100075598, &qword_1000515B0);
  v47 = v66;
  v48 = v60;
  View.gesture<A>(_:including:)();
  sub_1000059D4(v37, &qword_100075598, &qword_1000515B0);
  sub_1000059D4(v48, &qword_100076DB8, &qword_100053750);
  LOBYTE(v76) = v64;
  v77 = v63;
  v78 = v56;
  v79 = v55;
  GestureState.wrappedValue.getter();
  v49 = v70;
  sub_100044994(v57, v70, v61);
  v50 = swift_allocObject();
  sub_100045294(v49, v50 + ((v34 + 16) & ~v34), v59);
  v76 = v47;
  v77 = v42;
  v78 = v45;
  v79 = v46;
  swift_getOpaqueTypeConformance2();
  v51 = v67;
  v52 = v71;
  View.onChange<A>(of:initial:_:)();

  return (*(v68 + 8))(v52, v51);
}

uint64_t sub_10003DEC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v127 = a3;
  v116 = sub_100004944(&qword_100076DD8, &qword_100053778);
  v4 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v115 = &v112 - v5;
  v124 = sub_100004944(&qword_100076DE0, &qword_100053780);
  v123 = *(v124 - 8);
  v6 = *(v123 + 64);
  __chkstk_darwin(v124);
  v114 = &v112 - v7;
  v8 = sub_100004944(&qword_100076DE8, &qword_100053788);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v126 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v125 = &v112 - v12;
  *&v128 = sub_100004944(&qword_100076DF0, &qword_100053790);
  *&v118 = *(v128 - 8);
  v13 = *(v118 + 64);
  v14 = __chkstk_darwin(v128);
  v113 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v112 = &v112 - v16;
  v17 = sub_100004944(&qword_100076DF8, &qword_100053798);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v122 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v130 = &v112 - v21;
  v22 = type metadata accessor for Capsule();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100004944(&qword_100076E00, &qword_1000537A0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v112 - v28;
  v30 = sub_100004944(&qword_100076E08, &qword_1000537A8);
  v31 = v30 - 8;
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v34 = (&v112 - v33);
  v117 = sub_100004944(&qword_100076E10, &qword_1000537B0);
  v35 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v37 = &v112 - v36;
  v38 = sub_100004944(&qword_100076E18, &qword_1000537B8);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v119 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v129 = &v112 - v42;
  *v34 = static Alignment.center.getter();
  v34[1] = v43;
  v44 = sub_100004944(&qword_100076E20, &qword_1000537C0);
  sub_10003EC04(a1, v34 + *(v44 + 44));
  v45 = v34 + *(v31 + 44);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  v48 = *(*(v47 - 8) + 104);
  v48(v45, v46, v47);
  *&v45[*(sub_100004944(&qword_100076E28, &qword_1000537C8) + 36)] = 256;
  v48(v25, v46, v47);
  v120 = a1;
  v49 = *a1;
  v50 = objc_opt_self();
  v51 = &selRef_systemGrayColor;
  if (v49 != 3)
  {
    v51 = &selRef_clearColor;
  }

  v52 = [v50 *v51];
  Color.init(uiColor:)();
  v53 = Color.opacity(_:)();

  v54 = [objc_opt_self() currentTraitCollection];
  [v54 displayScale];

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100044994(v25, v29, &type metadata accessor for Capsule);
  v55 = &v29[*(sub_100004944(&qword_100076E30, &qword_1000537D0) + 36)];
  v56 = v141;
  *v55 = v140;
  *(v55 + 1) = v56;
  *(v55 + 4) = v142;
  v57 = sub_100004944(&qword_100076E38, &qword_1000537D8);
  *&v29[*(v57 + 52)] = v53;
  *&v29[*(v57 + 56)] = 256;
  v58 = static Alignment.center.getter();
  v60 = v59;
  sub_100045A20(v25, &type metadata accessor for Capsule);
  v61 = &v29[*(sub_100004944(&qword_100076E40, &qword_1000537E0) + 36)];
  *v61 = v58;
  v61[1] = v60;
  v62 = static Alignment.center.getter();
  v64 = v63;
  v65 = &v37[*(v117 + 36)];
  sub_1000084B0(v29, v65, &qword_100076E00, &qword_1000537A0);
  v66 = (v65 + *(sub_100004944(&qword_100076E48, &qword_1000537E8) + 36));
  *v66 = v62;
  v66[1] = v64;
  sub_1000084B0(v34, v37, &qword_100076E08, &qword_1000537A8);
  sub_100045A80();
  v67 = 1;
  View.accessibility(hidden:)();
  sub_1000059D4(v37, &qword_100076E10, &qword_1000537B0);
  if (v49 == 5)
  {
    v68 = static Color.black.getter();
    v69 = [objc_opt_self() currentDevice];
    [v69 userInterfaceIdiom];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v70 = v143;
    v71 = v144;
    v72 = v145;
    v73 = v146;
    v74 = v147;
    v75 = v148;
    GeometryProxy.size.getter();
    v76 = v113;
    v77 = &v113[*(v128 + 36)];
    *v77 = v78;
    *(v77 + 1) = v79;
    v80 = *(type metadata accessor for TickMarkModifier(0) + 20);
    *&v77[v80] = swift_getKeyPath();
    sub_100004944(&qword_1000754C8, &qword_100051010);
    swift_storeEnumTagMultiPayload();
    *v76 = v68;
    *(v76 + 8) = v70;
    *(v76 + 16) = v71;
    *(v76 + 24) = v72;
    *(v76 + 32) = v73;
    *(v76 + 40) = v74;
    *(v76 + 48) = v75;
    v81 = v112;
    sub_1000084B0(v76, v112, &qword_100076DF0, &qword_100053790);
    sub_1000084B0(v81, v130, &qword_100076DF0, &qword_100053790);
    v67 = 0;
  }

  (*(v118 + 56))(v130, v67, 1, v128);
  v82 = type metadata accessor for CPSlider(0);
  v83 = v120;
  v84 = &v120[*(v82 + 36)];
  if (*v84)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v85 = v125;
    if ((v139 & 0xFF00) == 0x200)
    {
      (*(v123 + 56))(v125, 1, 1, v124);
    }

    else
    {
      v118 = v136;
      v128 = v135;
      v86 = v137;
      v87 = v138;
      v88 = v139 & 1;
      v134 = v139 & 1;
      v89 = HIBYTE(v139) & 1;
      v90 = *(v83 + 2);
      v91 = *(v83 + 3);
      *&v135 = *(v83 + 1);
      *(&v135 + 1) = v90;
      *&v136 = v91;
      sub_100004944(&qword_100075498, &qword_100053730);
      Binding.projectedValue.getter();
      v92 = v131;
      v93 = v132;
      v94 = v133;
      GeometryProxy.size.getter();
      v95 = v115;
      v96 = &v115[*(v116 + 36)];
      *v96 = v92;
      *(v96 + 1) = v93;
      *(v96 + 2) = v94;
      *(v96 + 3) = v97;
      *(v96 + 4) = v98;
      v99 = *(type metadata accessor for PositionModifier(0) + 24);
      *&v96[v99] = swift_getKeyPath();
      sub_100004944(&qword_1000754C8, &qword_100051010);
      swift_storeEnumTagMultiPayload();
      v100 = v118;
      *v95 = v128;
      *(v95 + 16) = v100;
      *(v95 + 32) = v86;
      *(v95 + 40) = v87;
      *(v95 + 48) = v88;
      *(v95 + 49) = v89;
      static UnitPoint.center.getter();
      sub_100045CC8();
      v101 = v114;
      View.accessibility(activationPoint:)();
      sub_1000059D4(v95, &qword_100076DD8, &qword_100053778);
      sub_1000084B0(v101, v85, &qword_100076DE0, &qword_100053780);
      (*(v123 + 56))(v85, 0, 1, v124);
    }

    v102 = v129;
    v103 = v119;
    sub_100008A40(v129, v119, &qword_100076E18, &qword_1000537B8);
    v104 = v122;
    sub_100008A40(v130, v122, &qword_100076DF8, &qword_100053798);
    v105 = v85;
    v106 = v85;
    v107 = v126;
    sub_100008A40(v105, v126, &qword_100076DE8, &qword_100053788);
    v108 = v127;
    sub_100008A40(v103, v127, &qword_100076E18, &qword_1000537B8);
    v109 = sub_100004944(&qword_100076E90, &qword_100053800);
    sub_100008A40(v104, v108 + *(v109 + 48), &qword_100076DF8, &qword_100053798);
    sub_100008A40(v107, v108 + *(v109 + 64), &qword_100076DE8, &qword_100053788);
    sub_1000059D4(v106, &qword_100076DE8, &qword_100053788);
    sub_1000059D4(v130, &qword_100076DF8, &qword_100053798);
    sub_1000059D4(v102, &qword_100076E18, &qword_1000537B8);
    sub_1000059D4(v107, &qword_100076DE8, &qword_100053788);
    sub_1000059D4(v104, &qword_100076DF8, &qword_100053798);
    return sub_1000059D4(v103, &qword_100076E18, &qword_1000537B8);
  }

  else
  {
    v111 = *(v84 + 1);
    type metadata accessor for ColorPickerState();
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003EC04@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OpacityBackground(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100004944(&qword_100076EA8, &qword_100053808);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = *a1;
  v50 = &v44 - v18;
  if (v20 == 3)
  {
    *v12 = 0x4028000000000000;
    (*(v4 + 104))(v7, enum case for Color.RGBColorSpace.displayP3(_:), v3);
    v12[1] = Color.init(_:red:green:blue:opacity:)();
    v21 = *(v8 + 24);
    *(v12 + v21) = swift_getKeyPath();
    sub_100004944(&qword_100074F28, &qword_10004FDA0);
    swift_storeEnumTagMultiPayload();
    sub_100045294(v12, v19, type metadata accessor for OpacityBackground);
    (*(v9 + 56))(v19, 0, 1, v8);
LABEL_7:
    v22 = v17;
    sub_100004944(&qword_100076EB0, &qword_100053810);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10004F230;
    sub_10003F56C(v52);
    *(v30 + 32) = sub_10001944C();
    sub_10003F370(v53);
    *(v30 + 40) = sub_10001944C();
LABEL_8:
    Gradient.init(colors:)();
    static UnitPoint.leading.getter();
    static UnitPoint.trailing.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v26 = 0.0;
    v45 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v25 = v54;
    v49 = v55;
    v48 = v56;
    v47 = v57;
    v46 = v58;
    goto LABEL_9;
  }

  (*(v9 + 56))(&v44 - v18, 1, 1, v8);
  if (v20 == 4)
  {
    sub_100004944(&qword_100076EB0, &qword_100053810);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10004F230;
    sub_10003F56C(v52);
    v24 = &a1[*(type metadata accessor for CPSlider(0) + 36)];
    if (*v24)
    {
      v22 = v17;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      sub_1000195E4(v53[0]);
      *(v42 + 32) = Color.init(_:)();
      sub_10003F370(v53);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      sub_1000195E4(v54);
      *(v42 + 40) = Color.init(_:)();
      goto LABEL_8;
    }
  }

  else
  {
    if (v20 != 5)
    {
      goto LABEL_7;
    }

    v22 = v17;
    sub_100004944(&qword_100076EB0, &qword_100053810);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10004F230;
    *(v23 + 32) = static Color.black.getter();
    sub_10003F370(v53);
    v24 = &a1[*(type metadata accessor for CPSlider(0) + 36)];
    if (*v24)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      sub_1000195E4(v52[0]);
      *(v23 + 40) = Color.init(_:)();
      Gradient.init(colors:)();
      static UnitPoint.leading.getter();
      static UnitPoint.trailing.getter();
      LinearGradient.init(gradient:startPoint:endPoint:)();
      v25 = 0.0;
      v49 = 0;
      v48 = 0;
      v47 = 0;
      v46 = 0;
      v26 = v52[0];
      v45 = v52[1];
      v27 = v52[2];
      v28 = v52[3];
      v29 = v52[4];
LABEL_9:
      v31 = v50;
      v32 = v22;
      sub_100008A40(v50, v22, &qword_100076EA8, &qword_100053808);
      v33 = v22;
      v34 = v51;
      sub_100008A40(v33, v51, &qword_100076EA8, &qword_100053808);
      v35 = sub_100004944(&qword_100076EB8, &qword_100053818);
      v36 = (v34 + *(v35 + 48));
      v37 = v45;
      *v36 = v26;
      v36[1] = v37;
      v36[2] = v27;
      v36[3] = v28;
      v36[4] = v29;
      v38 = (v34 + *(v35 + 64));
      v39 = v49;
      *v38 = v25;
      *(v38 + 1) = v39;
      v40 = v47;
      *(v38 + 2) = v48;
      *(v38 + 3) = v40;
      *(v38 + 4) = v46;

      sub_1000059D4(v31, &qword_100076EA8, &qword_100053808);

      return sub_1000059D4(v32, &qword_100076EA8, &qword_100053808);
    }
  }

  v43 = *(v24 + 1);
  type metadata accessor for ColorPickerState();
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003F370@<X0>(uint64_t a1@<X8>)
{
  v3 = &v1[*(type metadata accessor for CPSlider(0) + 36)];
  if (*v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v13 & 0xFF00) == 0x200)
    {
      v4 = [objc_opt_self() blackColor];
      sub_100019F88(v4, v10);
    }

    else
    {
      sub_1000197D4(3, 0, v10, COERCE_UNSIGNED_INT64(1.0));
    }

    v5 = *v1;
    v6 = 1.0;
    if (v5 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v6 = *&v11[0];
    }

    result = sub_1000197D4(v5, 0, v11, v6);
    v8 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v12;
  }

  else
  {
    v9 = *(v3 + 1);
    type metadata accessor for ColorPickerState();
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003F56C@<X0>(uint64_t a1@<X8>)
{
  v3 = &v1[*(type metadata accessor for CPSlider(0) + 36)];
  if (*v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v13 & 0xFF00) == 0x200)
    {
      v4 = [objc_opt_self() blackColor];
      sub_100019F88(v4, v10);
    }

    else
    {
      sub_1000197D4(3, 0, v10, COERCE_UNSIGNED_INT64(1.0));
    }

    v5 = *v1;
    v6 = 0.0;
    if (v5 == 4)
    {
      v6 = 1.0;
    }

    result = sub_1000197D4(v5, 0, v11, *&v6);
    v8 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v12;
  }

  else
  {
    v9 = *(v3 + 1);
    type metadata accessor for ColorPickerState();
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003F714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  DragGesture.Value.location.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *(a3 + 24);
  sub_100004944(&qword_100075498, &qword_100053730);
  Binding.wrappedValue.setter();
  v6 = *(a3 + 32);
  v8 = *(a3 + 40);
  LOBYTE(v9) = *(a3 + 48);
  sub_100004944(&qword_100074608, &qword_100053770);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10003F848(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v4 = *a2;
  sub_100004944(&qword_100074608, &qword_100053770);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10003F8A8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AccessibilityAdjustmentDirection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    v10 = a2[1];
    v11 = a2[2];
    v12 = a2[3];
    v16 = v10;
    v17 = v11;
    v18 = v12;
    sub_100004944(&qword_100075498, &qword_100053730);
    Binding.wrappedValue.getter();
    v13 = fmin(v15 + 0.1, 1.0);
LABEL_6:
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v15 = v13;
    return Binding.wrappedValue.setter();
  }

  if (v9 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    v10 = a2[1];
    v11 = a2[2];
    v12 = a2[3];
    v16 = v10;
    v17 = v11;
    v18 = v12;
    sub_100004944(&qword_100075498, &qword_100053730);
    Binding.wrappedValue.getter();
    v13 = v15 + -0.1;
    if (v15 + -0.1 < 0.0)
    {
      v13 = 0.0;
    }

    goto LABEL_6;
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10003FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = v2[1];
  v15 = v2 + *(type metadata accessor for TickMarkModifier(0) + 20);
  sub_10001D2CC(v13);
  (*(v7 + 104))(v11, enum case for LayoutDirection.rightToLeft(_:), v6);
  LOBYTE(v15) = static LayoutDirection.== infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v11, v6);
  v16(v13, v6);
  v17 = 0.25;
  if (v15)
  {
    v17 = 0.75;
  }

  v18 = v14 * 0.5;
  v19 = v14 * 0.5 + v17 * (*v3 - v14);
  v20 = sub_100004944(&qword_1000770D0, &qword_1000539D0);
  (*(*(v20 - 8) + 16))(a2, a1, v20);
  result = sub_100004944(&qword_1000770D8, &qword_1000539D8);
  v22 = (a2 + *(result + 36));
  *v22 = v19;
  v22[1] = v18;
  return result;
}

double sub_10003FCA0()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = v0 + *(type metadata accessor for PositionModifier(0) + 24);
  sub_10001D2CC(v9);
  (*(v3 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v2);
  LOBYTE(v10) = static LayoutDirection.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  v12 = v1[1];
  v13 = v1[2];
  v15[1] = *v1;
  v15[2] = v12;
  v15[3] = v13;
  sub_100004944(&qword_100075498, &qword_100053730);
  Binding.wrappedValue.getter();
  if (v10)
  {
    return 1.0 - v15[0];
  }

  else
  {
    return v15[0];
  }
}

uint64_t sub_10003FE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = v5 * 0.5;
  v7 = v5 * 0.5 + sub_10003FCA0() * (*(v2 + 24) - v5);
  v8 = sub_100004944(&qword_1000770C0, &qword_1000539C0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_100004944(&qword_1000770C8, &qword_1000539C8);
  v10 = (a2 + *(result + 36));
  *v10 = v7;
  v10[1] = v6;
  return result;
}

id sub_10003FF20()
{
  result = sub_1000405B4(0, 3, 0);
  qword_100076B30 = result;
  return result;
}

id sub_10003FF4C()
{
  result = [objc_allocWithZone(NSNumberFormatter) init];
  qword_100076B38 = result;
  return result;
}

void sub_10003FF80()
{
  v0 = type metadata accessor for CharacterSet();
  sub_100044DB4(v0, qword_100076B40);
  sub_100044D7C(v0, qword_100076B40);
  if (qword_1000743F0 != -1)
  {
    swift_once();
  }

  v1 = qword_100076B30;
  v2 = [v1 minusSign];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CharacterSet.init(charactersIn:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10004006C()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v22 - v16;
  sub_100044DB4(v15, qword_100076B58);
  v22 = sub_100044D7C(v0, qword_100076B58);
  static CharacterSet.decimalDigits.getter();
  static CharacterSet.whitespaces.getter();
  CharacterSet.union(_:)();
  v23 = v1;
  v18 = *(v1 + 8);
  v18(v8, v0);
  v18(v11, v0);
  if (qword_1000743F0 != -1)
  {
    swift_once();
  }

  v19 = qword_100076B30;
  v20 = [v19 percentSymbol];

  if (v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CharacterSet.init(charactersIn:)();

    CharacterSet.union(_:)();
    v18(v5, v0);
    v18(v14, v0);
    if (qword_100074400 != -1)
    {
      swift_once();
    }

    v21 = sub_100044D7C(v0, qword_100076B40);
    (*(v23 + 16))(v11, v21, v0);
    CharacterSet.union(_:)();
    v18(v11, v0);
    v18(v17, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100040378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CharacterSet.init(charactersIn:)();
  if (qword_100074408 != -1)
  {
    swift_once();
  }

  sub_100044D7C(v4, qword_100076B58);
  v9 = CharacterSet.isSuperset(of:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 stringByReplacingCharactersInRange:v16 withString:{v17, v12}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    CharacterSet.init(charactersIn:)();

    v14 = CharacterSet.isSuperset(of:)();

    v10(v8, v4);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

id sub_100040588()
{
  result = sub_1000405B4(1, 1, 2);
  qword_100076B70 = result;
  return result;
}

id sub_1000405B4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(NSNumberFormatter) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);
  [v11 setLocale:isa];

  [v11 setAllowsFloats:a1 & 1];
  [v11 setNumberStyle:a2];
  [v11 setMinimumFractionDigits:0];
  [v11 setMaximumFractionDigits:a3];
  return v11;
}

void sub_100040720()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v12 - v7;
  sub_100044DB4(v6, qword_100076B78);
  sub_100044D7C(v0, qword_100076B78);
  static CharacterSet.decimalDigits.getter();
  if (qword_100074410 != -1)
  {
    swift_once();
  }

  v9 = qword_100076B70;
  v10 = [v9 decimalSeparator];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CharacterSet.init(charactersIn:)();

    CharacterSet.union(_:)();
    v11 = *(v1 + 8);
    v11(v5, v0);
    v11(v8, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000408E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CharacterSet.init(charactersIn:)();
  if (qword_100074418 != -1)
  {
    swift_once();
  }

  sub_100044D7C(v4, qword_100076B78);
  v9 = CharacterSet.isSuperset(of:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 stringByReplacingCharactersInRange:v16 withString:{v17, v12}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    CharacterSet.init(charactersIn:)();
    v14 = CharacterSet.isSuperset(of:)();
    v10(v8, v4);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_100040AD0(double a1, double a2, double a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:(a3 - a2) * a1 + a2];
  if (qword_100074410 != -1)
  {
    swift_once();
  }

  v4 = [qword_100076B70 stringFromNumber:v3];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_100040BC8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id sub_100040BF8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setLocale:isa];

  result = [v5 setAllowsFloats:0];
  qword_100076B90 = v5;
  return result;
}

BOOL sub_100040D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 stringByReplacingCharactersInRange:a3 withString:{a4, v15}];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  CharacterSet.init(charactersIn:)();
  static CharacterSet.decimalDigits.getter();
  if (CharacterSet.isSuperset(of:)())
  {
    v17 = String.count.getter();

    v18 = *(v7 + 8);
    v18(v11, v6);
    v18(v13, v6);
    return v17 < 4;
  }

  else
  {

    v20 = *(v7 + 8);
    v20(v11, v6);
    v20(v13, v6);
    return 0;
  }
}

uint64_t sub_100040F1C(double a1)
{
  v1 = round(a1 * 255.0);
  if (qword_100074420 != -1)
  {
    swift_once();
  }

  v2 = qword_100076B90;
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:v1];
  v4 = [v2 stringFromNumber:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_100041020(unsigned __int8 a1, double a2)
{
  v5 = *(sub_10001CE7C(*(v2 + 24), *(v2 + 32)) + 57);

  if (a1 <= 2u)
  {
    v24 = &type metadata for IntegerSliderControlStyle;
    v25 = &off_10006E400;
    v6 = sub_100040D18;
LABEL_8:
    v23 = v6;
    sub_1000449FC(&v23, v26);
    v13 = v27;
    v14 = v28;
    sub_100008948(v26, v27);
    v17 = *(v14 + 24);
    v18.n128_u64[0] = 0;
LABEL_9:
    v16.n128_u64[0] = 1.0;
    v15.n128_f64[0] = a2;
    v12 = v17(v13, v14, v15, v18, v16);
    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v24 = &type metadata for PercentageSliderControlStyle;
    v25 = &off_10006E460;
    v6 = sub_100040378;
    goto LABEL_8;
  }

  if (a1 != 4)
  {
    if (v5)
    {
      v24 = &type metadata for DecimalSliderControlStyle;
      v25 = &off_10006E430;
      v21 = sub_1000408E0;
    }

    else
    {
      v24 = &type metadata for PercentageSliderControlStyle;
      v25 = &off_10006E460;
      v21 = sub_100040378;
    }

    v23 = v21;
    sub_1000449FC(&v23, v26);
    v13 = v27;
    v14 = v28;
    sub_100008948(v26, v27);
    v17 = *(v14 + 24);
    v18.n128_u64[0] = -1.0;
    goto LABEL_9;
  }

  v24 = &type metadata for DecimalSliderControlStyle;
  v25 = &off_10006E430;
  *&v23 = sub_1000408E0;
  *(&v23 + 1) = 0;
  sub_1000449FC(&v23, v26);
  v7 = v27;
  v8 = v28;
  sub_100008948(v26, v27);
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v9.n128_u64[0] = v23;
    v10.n128_u64[0] = 1.0;
    v11.n128_f64[0] = a2;
    v12 = (*(v8 + 24))(v7, v8, v11, v10, v9);
LABEL_10:
    v19 = v12;
    sub_10000898C(v26);
    return v19;
  }

  v22 = *(v2 + 16);
  type metadata accessor for ColorPickerState();
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000412DC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10001CE7C(*(v3 + 24), *(v3 + 32)) + 57);

  if (a1 <= 2u)
  {
    v24 = &type metadata for IntegerSliderControlStyle;
    v25 = &off_10006E400;
    v8 = sub_100040D18;
LABEL_8:
    v23 = v8;
    sub_1000449FC(&v23, v26);
    v14 = v27;
    v15 = v28;
    sub_100008948(v26, v27);
    v17 = *(v15 + 32);
    v18.n128_u64[0] = 0;
LABEL_9:
    v16.n128_u64[0] = 1.0;
    v13 = v17(a2, a3, v14, v15, v18, v16);
    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v24 = &type metadata for PercentageSliderControlStyle;
    v25 = &off_10006E460;
    v8 = sub_100040378;
    goto LABEL_8;
  }

  if (a1 != 4)
  {
    if (v7)
    {
      v24 = &type metadata for DecimalSliderControlStyle;
      v25 = &off_10006E430;
      v21 = sub_1000408E0;
    }

    else
    {
      v24 = &type metadata for PercentageSliderControlStyle;
      v25 = &off_10006E460;
      v21 = sub_100040378;
    }

    v23 = v21;
    sub_1000449FC(&v23, v26);
    v14 = v27;
    v15 = v28;
    sub_100008948(v26, v27);
    v17 = *(v15 + 32);
    v18.n128_u64[0] = -1.0;
    goto LABEL_9;
  }

  v24 = &type metadata for DecimalSliderControlStyle;
  v25 = &off_10006E430;
  *&v23 = sub_1000408E0;
  *(&v23 + 1) = 0;
  sub_1000449FC(&v23, v26);
  v9 = v27;
  v10 = v28;
  sub_100008948(v26, v27);
  if (*(v3 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v11.n128_u64[0] = v23;
    v12.n128_u64[0] = 1.0;
    v13 = (*(v10 + 32))(a2, a3, v9, v10, v12, v11);
LABEL_10:
    v19 = v13;
    sub_10000898C(v26);
    return v19;
  }

  v22 = *(v3 + 16);
  type metadata accessor for ColorPickerState();
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100041D6C@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(double *a1)@<X8>)
{
  v110 = a2;
  v115 = type metadata accessor for CPSlider(0);
  v3 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100004944(&qword_100076C80, &qword_100053378);
  v6 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v112 = (&v102 - v7);
  v8 = type metadata accessor for ColorSlider(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v113 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004944(&qword_100076C88, &unk_100053380);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v117 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v102 - v15;
  v16 = _UISolariumEnabled();
  v111 = v10;
  v116 = v9;
  v108 = a1;
  LODWORD(v107) = *a1;
  if (v16)
  {
    v17 = v113;
    sub_100044994(a1, v113, type metadata accessor for ColorSlider);
    type metadata accessor for MainActor();
    v18 = static MainActor.shared.getter();
    v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = &protocol witness table for MainActor;
    sub_100045294(v17, v20 + v19, type metadata accessor for ColorSlider);
    sub_100044994(a1, v17, type metadata accessor for ColorSlider);
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_100045294(v17, v22 + v19, type metadata accessor for ColorSlider);
    Binding.init(get:set:)();
    v106 = *(&v128 + 1);
    v23 = v128;
    v24 = v129;
    v25 = *(a1 + 1);
    v26 = *(a1 + 2);
    type metadata accessor for ColorPickerState();
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
    v109 = v25;
    v102 = v26;
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v27 = v128;
    v28 = v129;
    type metadata accessor for ColorPickerConfiguration();
    sub_10004494C(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
    v29 = Environment.init<A>(_:)();
    v31 = v30;
    v32 = EnvironmentObject.init()();
    v33 = v31 & 1;
    v34 = v107;
    LOBYTE(v160) = v33;
    v35 = v112;
    *v112 = v107;
    *(v35 + 1) = v128;
    *(v35 + 1) = *(&v128 + 3);
    v36 = v106;
    *(v35 + 1) = v23;
    *(v35 + 2) = v36;
    *(v35 + 3) = v24;
    *(v35 + 2) = v27;
    *(v35 + 48) = v28;
    *(v35 + 49) = v119;
    *(v35 + 13) = *(&v119 + 3);
    *(v35 + 7) = v29;
    *(v35 + 64) = v33;
    *(v35 + 17) = *(v163 + 3);
    *(v35 + 65) = v163[0];
    *(v35 + 9) = v32;
    *(v35 + 10) = v37;
    swift_storeEnumTagMultiPayload();
    sub_10001CB0C();
    sub_10004494C(&qword_100076C90, type metadata accessor for CPSlider);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v109 = type metadata accessor for ColorSlider;
    v38 = v113;
    sub_100044994(a1, v113, type metadata accessor for ColorSlider);
    type metadata accessor for MainActor();
    v39 = static MainActor.shared.getter();
    v40 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = &protocol witness table for MainActor;
    sub_100045294(v38, v41 + v40, type metadata accessor for ColorSlider);
    sub_100044994(a1, v38, v109);
    v42 = static MainActor.shared.getter();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = &protocol witness table for MainActor;
    sub_100045294(v38, v43 + v40, type metadata accessor for ColorSlider);
    Binding.init(get:set:)();
    v44 = v128;
    v45 = v129;
    v46 = *(a1 + 1);
    v47 = *(a1 + 2);
    type metadata accessor for ColorPickerState();
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
    v109 = v46;
    v102 = v47;
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();
    v34 = v107;

    v48 = v119;
    v49 = v120;
    *v5 = v34;
    *(v5 + 8) = v44;
    *(v5 + 3) = v45;
    *(v5 + 2) = v48;
    v5[48] = v49;
    LOBYTE(v163[0]) = 0;
    GestureState.init(wrappedValue:)();
    v50 = *(&v128 + 1);
    v51 = v129;
    v5[56] = v128;
    *(v5 + 8) = v50;
    *(v5 + 72) = v51;
    v52 = v115;
    v53 = *(v115 + 32);
    *&v5[v53] = swift_getKeyPath();
    sub_100004944(&qword_1000754C8, &qword_100051010);
    swift_storeEnumTagMultiPayload();
    v54 = &v5[*(v52 + 36)];
    *v54 = EnvironmentObject.init()();
    v54[1] = v55;
    v56 = &v5[*(v52 + 40)];
    type metadata accessor for ColorPickerConfiguration();
    sub_10004494C(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
    *v56 = Environment.init<A>(_:)();
    v56[8] = v57 & 1;
    sub_100044994(v5, v112, type metadata accessor for CPSlider);
    swift_storeEnumTagMultiPayload();
    sub_10001CB0C();
    sub_10004494C(&qword_100076C90, type metadata accessor for CPSlider);
    _ConditionalContent<>.init(storage:)();
    sub_100045A20(v5, type metadata accessor for CPSlider);
  }

  v58 = v108;
  v59 = *(sub_10001CE7C(*(v108 + 3), v108[32]) + 57);

  if (v34 > 2)
  {
    v60 = v116;
    if (v34 != 3 && (v34 == 4 || (v59 & 1) != 0))
    {
      v161 = &type metadata for DecimalSliderControlStyle;
      v162 = &off_10006E430;
      v61 = sub_1000408E0;
    }

    else
    {
      v161 = &type metadata for PercentageSliderControlStyle;
      v162 = &off_10006E460;
      v61 = sub_100040378;
    }

    *&v160 = v61;
  }

  else
  {
    v161 = &type metadata for IntegerSliderControlStyle;
    v162 = &off_10006E400;
    *&v160 = sub_100040D18;
    v60 = v116;
  }

  *(&v160 + 1) = 0;
  sub_1000449FC(&v160, v163);
  v112 = type metadata accessor for ColorSlider;
  v62 = v113;
  sub_100044994(v58, v113, type metadata accessor for ColorSlider);
  type metadata accessor for MainActor();
  v63 = static MainActor.shared.getter();
  v64 = *(v60 + 80);
  v65 = (v64 + 32) & ~v64;
  v66 = swift_allocObject();
  *(v66 + 16) = v63;
  *(v66 + 24) = &protocol witness table for MainActor;
  sub_100045294(v62, v66 + v65, type metadata accessor for ColorSlider);
  sub_100044994(v58, v62, v112);
  v67 = static MainActor.shared.getter();
  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  *(v68 + 24) = &protocol witness table for MainActor;
  sub_100045294(v62, v68 + v65, type metadata accessor for ColorSlider);
  Binding.init(get:set:)();
  v115 = *(&v128 + 1);
  v116 = v128;
  v69 = v129;
  v70 = v164;
  v71 = v165;
  sub_100008948(v163, v164);
  v104 = (*(v71 + 8))(v70, v71);
  v72 = v164;
  v73 = v165;
  sub_100008948(v163, v164);
  v103 = (*(v73 + 16))(v72, v73);
  v74 = v112;
  sub_100044994(v58, v62, v112);
  v75 = (v64 + 16) & ~v64;
  v114 = swift_allocObject();
  sub_100045294(v62, v114 + v75, type metadata accessor for ColorSlider);
  sub_100044994(v58, v62, v74);
  v107 = swift_allocObject();
  sub_100045294(v62, v107 + v75, type metadata accessor for ColorSlider);
  sub_1000088E4(v163, &v128);
  v106 = swift_allocObject();
  sub_1000449FC(&v128, v106 + 16);
  type metadata accessor for ColorPickerState();
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
  v111 = EnvironmentObject.init()();
  v113 = v76;
  v155 = 0;
  State.init(wrappedValue:)();
  LODWORD(v112) = v119;
  v105 = *(&v119 + 1);
  sub_100042E40();
  v77 = [objc_opt_self() defaultMetrics];
  v78 = [objc_opt_self() currentDevice];
  v79 = [v78 userInterfaceIdiom];

  v80 = 36.0;
  if (v79 == 6)
  {
    v80 = 44.0;
  }

  [v77 scaledValueForValue:v80];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (v109)
  {
    v81 = v103 & 1;
    v82 = v104 & 1;
    v103 &= 1u;
    v104 &= 1u;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_100006314(BYTE1(v135) << 8 != 512);
    v83 = Color.init(uiColor:)();
    v84 = static Edge.Set.all.getter();
    v85 = v117;
    sub_100008A40(v118, v117, &qword_100076C88, &unk_100053380);
    v86 = v85;
    v87 = v110;
    sub_100008A40(v86, v110, &qword_100076C88, &unk_100053380);
    v88 = (v87 + *(sub_100004944(&qword_100076C98, &qword_100053438) + 48));
    *&v119 = v111;
    *(&v119 + 1) = v113;
    *&v120 = v116;
    *(&v120 + 1) = v115;
    *&v121 = v69;
    BYTE8(v121) = v82;
    BYTE9(v121) = v81;
    *(&v121 + 10) = v157;
    HIWORD(v121) = v158;
    v110 = sub_100044B00;
    *&v122 = 8;
    *(&v122 + 1) = sub_100044B00;
    *&v123 = v114;
    *(&v123 + 1) = sub_100044CAC;
    v90 = v106;
    v89 = v107;
    *&v124 = v107;
    *(&v124 + 1) = sub_100044D6C;
    *&v125 = v106;
    BYTE8(v125) = v112;
    *(&v125 + 9) = *v156;
    HIDWORD(v125) = *&v156[3];
    v91 = v105;
    *&v126[0] = v105;
    *(v126 + 8) = v152;
    *(&v126[2] + 8) = v154;
    *(&v126[1] + 8) = v153;
    *(&v126[3] + 1) = v83;
    LOBYTE(v127) = v84;
    *(&v127 + 1) = *v159;
    DWORD1(v127) = *&v159[3];
    *(&v127 + 1) = 0x4020000000000000;
    v92 = v119;
    v93 = v120;
    v94 = v122;
    v88[2] = v121;
    v88[3] = v94;
    *v88 = v92;
    v88[1] = v93;
    v95 = v123;
    v96 = v124;
    v97 = v126[0];
    v88[6] = v125;
    v88[7] = v97;
    v88[4] = v95;
    v88[5] = v96;
    v98 = v126[1];
    v99 = v126[2];
    v100 = v127;
    v88[10] = v126[3];
    v88[11] = v100;
    v88[8] = v98;
    v88[9] = v99;
    sub_100008A40(&v119, &v128, &qword_100076CA0, &qword_100053440);
    sub_1000059D4(v118, &qword_100076C88, &unk_100053380);
    v130 = v69;
    v145 = v152;
    *&v128 = v111;
    *(&v128 + 1) = v113;
    *&v129 = v116;
    *(&v129 + 1) = v115;
    v131 = v104;
    v132 = v103;
    v133 = v157;
    v134 = v158;
    v135 = 8;
    v136 = v110;
    v137 = v114;
    v138 = sub_100044CAC;
    v139 = v89;
    v140 = sub_100044D6C;
    v141 = v90;
    v142 = v112;
    *v143 = *v156;
    *&v143[3] = *&v156[3];
    v146 = v153;
    v147 = v154;
    v144 = v91;
    v148 = v83;
    v149 = v84;
    *v150 = *v159;
    *&v150[3] = *&v159[3];
    v151 = 0x4020000000000000;
    sub_1000059D4(&v128, &qword_100076CA0, &qword_100053440);
    sub_1000059D4(v117, &qword_100076C88, &unk_100053380);
    return sub_10000898C(v163);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100042D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7[3];
  v14 = a7[4];
  sub_100008948(a7, v13);
  v15 = (*(v14 + 40))(v13, v14);
  LOBYTE(a6) = v15(a1, a2, a3, a4, a5, a6);

  return a6 & 1;
}

void sub_100042E40()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = [objc_opt_self() defaultMetrics];
  if (v2 == 6)
  {
    [v3 scaledValueForValue:88.0];
LABEL_7:

    return;
  }

  if (*(v0 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = 76.0;
    if (v6)
    {
      v4 = 70.0;
    }

    [v3 scaledValueForValue:v4];
    goto LABEL_7;
  }

  v5 = *(v0 + 16);
  type metadata accessor for ColorPickerState();
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_100042FDC()
{
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_100043154@<X0>(unsigned __int8 *a1@<X2>, double *a2@<X8>)
{
  if (*(a1 + 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = v30;
    if ((v30 & 0xFF00) == 0x200)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v5 = v27;
      v6 = v26;
      v7 = v28;
      v8 = v29;
      v4 = v30;
    }

    else
    {
      v5 = v27;
      v6 = v26;
      v7 = v28;
      v8 = v29;
    }

    v26 = v6;
    v27 = v5;
    v28 = v7;
    v29 = v8;
    v30 = v4;
    v9 = *a1;
    v10 = *(a1 + 3);
    v11 = a1[32];
    v12 = sub_10001CE7C(v10, v11);
    sub_1000088E4(v12 + 16, v23);

    v13 = v24;
    v14 = v25;
    sub_100008948(v23, v24);
    v15 = (*(v14 + 8))(v13, v14);
    sub_100019A94(v9, v15 & 1);
    v17 = v16;
    result = sub_10000898C(v23);
    if (v9 == 5)
    {
      v19 = sub_10001CE7C(v10, v11);
      sub_1000088E4(v19 + 16, v23);

      v20 = v24;
      v21 = v25;
      sub_100008948(v23, v24);
      v17 = (*(v21 + 32))(&v26, v20, v21, v17);
      result = sub_10000898C(v23);
    }

    else if (v9 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v17 = (v17 + -1.0) / (*v23 + -1.0);
    }

    *a2 = v17;
  }

  else
  {
    v22 = *(a1 + 2);
    type metadata accessor for ColorPickerState();
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100043444(double *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*(a4 + 1))
  {
    v5 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v6 = v32;
    if ((v32 & 0xFF00) == 0x200)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v7 = v29;
      v8 = v28;
      v9 = v30;
      v10 = v31;
      v6 = v32;
    }

    else
    {
      v7 = v29;
      v8 = v28;
      v9 = v30;
      v10 = v31;
    }

    v28 = v8;
    v29 = v7;
    v30 = v9;
    v31 = v10;
    v32 = v6;
    v11 = *a4;
    if (v11 == 5)
    {
      v15 = sub_10001CE7C(*(a4 + 3), a4[32]);
      sub_1000088E4(v15 + 16, &v24);

      v16 = *(&v25 + 1);
      v17 = v26;
      sub_100008948(&v24, *(&v25 + 1));
      v18 = (*(v17 + 40))(&v28, v16, v17, v5);
      sub_10000898C(&v24);
      v13 = 5;
      v12 = v18;
      v14 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v11 == 4)
      {
        v12 = v5 * (*&v24 + -1.0) + 1.0;
        v13 = 4;
        v14 = 0;
      }

      else
      {
        v14 = v24;
        v13 = v11;
        v12 = v5;
      }
    }

    sub_1000197D4(v13, v14, v22, *&v12);
    v24 = v22[0];
    v25 = v22[1];
    v26 = v22[2];
    v27 = v23;
    v19 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v19);
    withAnimation<A>(_:_:)();
  }

  else
  {
    v21 = *(a4 + 2);
    type metadata accessor for ColorPickerState();
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000437E8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 8))
  {
    v3 = *(a2 + 24);
    v5 = *(a2 + 4);
    v4 = *(a2 + 5);
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = a2[1];
    v8 = *a2;

    return static Published.subscript.setter();
  }

  else
  {
    v7 = *(a1 + 16);
    type metadata accessor for ColorPickerState();
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000438EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = (a2 + *(sub_100004944(&qword_100076ED0, &unk_100053858) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)] = 256;
  v10 = sub_100004944(&qword_100076ED8, &qword_100053868);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_100043A14@<X0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = 0x4014000000000000;
  if (v5 == 6)
  {
    v6 = 0x4020000000000000;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  v7 = a1 + *(sub_100004944(&qword_100076C40, &qword_100053340) + 44);
  return sub_1000415A8(v1);
}

uint64_t sub_100043AC0@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = a3 + *(sub_100004944(&qword_1000770E0, &unk_1000539E0) + 44);
  return sub_100043B24(a2, a1);
}

uint64_t sub_100043B24(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for OpacityBackground(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = GeometryProxy.size.getter();
  v13 = v12 / *a1;
  if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  if (v13 <= 2)
  {
    v14 = 2;
  }

  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    goto LABEL_12;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v20[2] = 0;
    v20[3] = v16;
    v20[1] = swift_getKeyPath();
    sub_100044994(a1, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpacityBackground);
    (*(v5 + 16))(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v18 = (v9 + *(v5 + 80) + v17) & ~*(v5 + 80);
    v19 = swift_allocObject();
    sub_100045294(v10, v19 + v17, type metadata accessor for OpacityBackground);
    (*(v5 + 32))(v19 + v18, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_100004944(&qword_1000755D0, &qword_1000510F0);
    sub_100004944(&qword_1000770E8, &qword_100053A10);
    sub_1000211A0();
    sub_100008D7C(&qword_1000770F0, &qword_1000770E8, &qword_100053A10);
    return ForEach<>.init(_:id:content:)();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100043E44@<X0>(uint64_t *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = a4 + *(sub_100004944(&qword_1000770F8, &qword_100053A18) + 44);
  return sub_100043EB0(a2, a3, v7);
}

uint64_t sub_100043EB0(double *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OpacityBackground(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  result = GeometryProxy.size.getter();
  v10 = v9 / *a1;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  if (v10 <= 2)
  {
    v11 = 2;
  }

  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    goto LABEL_12;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v16[0] = 0;
    v16[1] = v13;
    swift_getKeyPath();
    sub_100044994(a1, v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpacityBackground);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    sub_100045294(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for OpacityBackground);
    *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    sub_100004944(&qword_1000755D0, &qword_1000510F0);
    sub_100004944(&qword_100077100, &qword_100053A20);
    sub_1000211A0();
    sub_1000477F0();
    return ForEach<>.init(_:id:content:)();
  }

LABEL_13:
  __break(1u);
  return result;
}

__n128 sub_1000440E8@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = sub_100044190(a3, *a1);
  v7 = *a2;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v9[6] = v10;
  *&v9[22] = v11;
  *&v9[38] = v12;
  *(a4 + 10) = *v9;
  *a4 = v6;
  *(a4 + 8) = 256;
  *(a4 + 26) = *&v9[16];
  result = *&v9[32];
  *(a4 + 42) = *&v9[32];
  *(a4 + 56) = *(&v12 + 1);
  return result;
}

uint64_t sub_100044190(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = v2 + *(type metadata accessor for OpacityBackground(0) + 24);
  sub_10001D044(v13);
  (*(v7 + 104))(v11, enum case for ColorScheme.dark(_:), v6);
  LOBYTE(v14) = static ColorScheme.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if (v14)
  {
    result = static Color.black.getter();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = static Color.white.getter();
    if (a2)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  if (a1)
  {
    return result;
  }

LABEL_4:

  v17 = *(v3 + 8);
}

uint64_t sub_10004431C(uint64_t a1)
{
  v2 = sub_100004944(&qword_100077168, &qword_100053AB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = sub_100004944(&qword_100077170, &qword_100053AB8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v12 = sub_100004944(&qword_100077178, &qword_100053AC0);
  v13 = *(*(v12 - 8) + 16);
  if (v11 == 6)
  {
    v13(v9, a1, v12);
    *&v9[*(v6 + 36)] = 0x3FC999999999999ALL;
    sub_100008A40(v9, v5, &qword_100077170, &qword_100053AB8);
    swift_storeEnumTagMultiPayload();
    sub_100047B5C();
    sub_100008D7C(&qword_100077188, &qword_100077178, &qword_100053AC0);
    _ConditionalContent<>.init(storage:)();
    return sub_1000059D4(v9, &qword_100077170, &qword_100053AB8);
  }

  else
  {
    v13(v5, a1, v12);
    swift_storeEnumTagMultiPayload();
    sub_100047B5C();
    sub_100008D7C(&qword_100077188, &qword_100077178, &qword_100053AC0);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000445C0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100044994(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpacityBackground);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100045294(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for OpacityBackground);
  *a2 = sub_1000472CC;
  a2[1] = v7;
  return result;
}

unint64_t sub_1000446D4()
{
  result = qword_100076C60;
  if (!qword_100076C60)
  {
    sub_100008B90(&qword_100076C48, &qword_100053348);
    sub_100008D7C(&qword_100074F08, &qword_100074F10, &qword_10004FD60);
    sub_100008D7C(&qword_100076C68, &qword_100076C70, &qword_100053368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076C60);
  }

  return result;
}

uint64_t sub_1000447DC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000447EC()
{
  v1 = type metadata accessor for ColorSlider(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v1 + 28);
  sub_100004944(&qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
    v11 = *(v6 + v9);
  }

  sub_1000447DC(*(v6 + *(v1 + 32)), *(v6 + *(v1 + 32) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004494C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100044994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000449FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100044A14@<X0>(double *a1@<X8>)
{
  v3 = *(type metadata accessor for ColorSlider(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_100043154(v6, a1);
}

uint64_t sub_100044A88(double *a1)
{
  v3 = *(type metadata accessor for ColorSlider(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_100043444(a1, v4, v5, v6);
}

uint64_t sub_100044B68()
{
  v1 = type metadata accessor for ColorSlider(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v1 + 28);
  sub_100004944(&qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  sub_1000447DC(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ColorSlider(0) - 8);
  result = sub_1000412DC(*(v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80))), a1, a2);
  *a3 = result;
  *(a3 + 8) = v9 & 1;
  return result;
}

uint64_t sub_100044D34()
{
  sub_10000898C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100044D7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100044DB4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100044EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004944(&qword_100076CA8, &qword_100053630);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100044F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004944(&qword_100076CA8, &qword_100053630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100045030()
{
  sub_1000451C8(319, &qword_100076D18, &type metadata for CGFloat, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1000451C8(319, &qword_100076D20, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_1000451C8(319, &qword_100075550, &type metadata for Bool, &type metadata accessor for GestureState);
      if (v2 <= 0x3F)
      {
        sub_100046F24(319, &unk_100076D28, &type metadata accessor for LayoutDirection);
        if (v3 <= 0x3F)
        {
          sub_100005880();
          if (v4 <= 0x3F)
          {
            sub_100046F24(319, &qword_100074980, type metadata accessor for ColorPickerConfiguration);
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

void sub_1000451C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100045294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100045328()
{
  result = qword_100076D98;
  if (!qword_100076D98)
  {
    sub_100008B90(&qword_100076D90, &qword_100053738);
    sub_100008D7C(&qword_100076DA0, &qword_100076DA8, &unk_100053740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076D98);
  }

  return result;
}

unint64_t sub_1000453E0()
{
  result = qword_100076DB0;
  if (!qword_100076DB0)
  {
    sub_100008B90(&qword_100076D80, &qword_100053720);
    sub_100045328();
    sub_10004494C(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076DB0);
  }

  return result;
}

uint64_t sub_10004549C(uint64_t a1)
{
  v2 = sub_100004944(&qword_100076D80, &qword_100053720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100045504()
{
  v1 = type metadata accessor for CPSlider(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 64);

  v11 = *(v0 + v3 + 80);

  v12 = v1[8];
  sub_100004944(&qword_1000754C8, &qword_100051010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = *(v5 + v1[9]);

  v16 = *(v5 + v1[10]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004566C(uint64_t a1)
{
  v3 = *(type metadata accessor for CPSlider(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10003F8A8(a1, v4);
}

uint64_t sub_1000456DC()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for CPSlider(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = *(v0 + v8 + 8);

  v12 = *(v0 + v8 + 16);

  v13 = *(v0 + v8 + 32);

  v14 = *(v0 + v8 + 40);

  v15 = *(v0 + v8 + 64);

  v16 = *(v0 + v8 + 80);

  v17 = v6[8];
  sub_100004944(&qword_1000754C8, &qword_100051010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for LayoutDirection();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
  }

  else
  {
    v19 = *(v10 + v17);
  }

  v20 = *(v10 + v6[9]);

  v21 = *(v10 + v6[10]);

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1000458C8(uint64_t a1)
{
  v3 = *(type metadata accessor for GeometryProxy() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CPSlider(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10003F714(a1, v1 + v4, v7);
}

uint64_t sub_1000459A0(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for CPSlider(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10003F848(a1, a2, v6);
}

uint64_t sub_100045A20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100045A80()
{
  result = qword_100076E50;
  if (!qword_100076E50)
  {
    sub_100008B90(&qword_100076E10, &qword_1000537B0);
    sub_100045B38();
    sub_100008D7C(&qword_100076E88, &qword_100076E48, &qword_1000537E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076E50);
  }

  return result;
}

unint64_t sub_100045B38()
{
  result = qword_100076E58;
  if (!qword_100076E58)
  {
    sub_100008B90(&qword_100076E08, &qword_1000537A8);
    sub_100045BF0();
    sub_100008D7C(&qword_100076E80, &qword_100076E28, &qword_1000537C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076E58);
  }

  return result;
}

unint64_t sub_100045BF0()
{
  result = qword_100076E60;
  if (!qword_100076E60)
  {
    sub_100008B90(&qword_100076E68, &qword_1000537F0);
    sub_100008D7C(&qword_100076E70, &qword_100076E78, &qword_1000537F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076E60);
  }

  return result;
}

unint64_t sub_100045CC8()
{
  result = qword_100076E98;
  if (!qword_100076E98)
  {
    sub_100008B90(&qword_100076DD8, &qword_100053778);
    sub_100025410();
    sub_10004494C(&qword_100076EA0, type metadata accessor for PositionModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076E98);
  }

  return result;
}

uint64_t sub_100045DC4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045E04(double a1)
{
  if (fabs(a1) >= 0.005)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [objc_allocWithZone(NSNumber) initWithDouble:v1];
  if (qword_1000743F0 != -1)
  {
    swift_once();
  }

  v3 = [qword_100076B30 stringFromNumber:v2];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_100045EEC(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v9;
          v12 = v18 + v8;
        }

        else
        {
          v11 = v10;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = _StringObject.sharedUTF8.getter();
          }

          v12 = (v11 + v8);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_100046088(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v29[0] = v11;
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[6] = 0;
  v29[7] = 0xE000000000000000;
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v29[2] = a1;
  v29[3] = a2;
  v29[4] = 0;
  v29[5] = v13;

  v14 = String.Iterator.next()();
  if (v14.value._object)
  {
    countAndFlagsBits = v14.value._countAndFlagsBits;
    object = v14.value._object;
    do
    {
      if (qword_100074418 != -1)
      {
        swift_once();
      }

      v18 = sub_100044D7C(v8, qword_100076B78);
      (*(v9 + 16))(v12, v18, v8);
      v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v20 = swift_allocObject();
      (*(v9 + 32))(v20 + v19, v12, v8);
      LOBYTE(v19) = sub_100045EEC(countAndFlagsBits, object, sub_1000468E4);

      if (v19)
      {
        v21._countAndFlagsBits = countAndFlagsBits;
        v21._object = object;
        String.append(_:)(v21);
      }

      v17 = String.Iterator.next()();
      countAndFlagsBits = v17.value._countAndFlagsBits;
      object = v17.value._object;
    }

    while (v17.value._object);
  }

  if (qword_100074410 != -1)
  {
    swift_once();
  }

  v22 = qword_100076B70;
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 numberFromString:{v23, v29[0]}];

  if (v24)
  {
    [v24 doubleValue];
    v26 = v25;

    if (v26 < a3)
    {
      v27 = a3;
    }

    else
    {
      v27 = v26;
    }

    if (v27 >= a4)
    {
      v27 = a4;
    }

    *&result = (v27 - a3) / (a4 - a3);
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_10004638C()
{
  if (qword_100074420 != -1)
  {
    swift_once();
  }

  v0 = qword_100076B90;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberFromString:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 integerValue];

  v4 = fmin(v3 / 255.0, 1.0);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  return *&v4;
}

uint64_t sub_100046478(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v37 = 0;
  v38 = 0xE000000000000000;
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v33 = a1;
  v34 = a2;
  v35 = 0;
  v36 = v17;

  v18 = String.Iterator.next()();
  if (v18.value._object)
  {
    countAndFlagsBits = v18.value._countAndFlagsBits;
    object = v18.value._object;
    v21 = (v5 + 8);
    v31 = (v5 + 16);
    do
    {
      CharacterSet.init(charactersIn:)();
      static CharacterSet.decimalDigits.getter();
      if (qword_100074400 != -1)
      {
        swift_once();
      }

      sub_100044D7C(v4, qword_100076B40);
      CharacterSet.union(_:)();
      v23 = *v21;
      (*v21)(v11, v4);
      (*v31)(v32, v16, v4);
      sub_10004494C(&qword_100076EC0, &type metadata accessor for CharacterSet);
      dispatch thunk of SetAlgebra.intersection(_:)();
      sub_10004494C(&qword_100076EC8, &type metadata accessor for CharacterSet);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23(v11, v4);
      v23(v14, v4);
      v23(v16, v4);
      if (v24)
      {
        v25._countAndFlagsBits = countAndFlagsBits;
        v25._object = object;
        String.append(_:)(v25);
      }

      v22 = String.Iterator.next()();
      countAndFlagsBits = v22.value._countAndFlagsBits;
      object = v22.value._object;
    }

    while (v22.value._object);
  }

  if (qword_1000743F8 != -1)
  {
    swift_once();
  }

  v26 = qword_100076B38;
  v27 = String._bridgeToObjectiveC()();

  v28 = [v26 numberFromString:v27];

  if (!v28)
  {
    return 0;
  }

  v29 = [v28 integerValue];

  return fmin(fmax(v29 / 100.0, -1.0), 1.0);
}

uint64_t sub_10004685C()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000468E4()
{
  v1 = *(type metadata accessor for CharacterSet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CharacterSet.contains(_:)() & 1;
}

uint64_t sub_100046988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004944(&qword_100076CA8, &qword_100053630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100046A38()
{
  sub_1000451C8(319, &qword_100076D18, &type metadata for CGFloat, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_100046F24(319, &unk_100076D28, &type metadata accessor for LayoutDirection);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100046B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_100004944(&qword_100076CA8, &qword_100053630);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100046BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_100004944(&qword_100076CA8, &qword_100053630);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100046C48()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_100046F24(319, &unk_100076D28, &type metadata accessor for LayoutDirection);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100046D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = sub_100004944(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100046DD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004944(&qword_1000754D8, &qword_100051028);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100046E84()
{
  sub_100046F24(319, &qword_100075548, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100046F24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100046F7C()
{
  result = qword_1000770A0;
  if (!qword_1000770A0)
  {
    sub_100008B90(&qword_1000770A8, qword_1000538C8);
    sub_100008B90(&qword_100076D80, &qword_100053720);
    sub_1000453E0();
    swift_getOpaqueTypeConformance2();
    sub_10004494C(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000770A0);
  }

  return result;
}

unint64_t sub_100047078()
{
  result = qword_1000770B0;
  if (!qword_1000770B0)
  {
    sub_100008B90(&qword_100076ED0, &unk_100053858);
    sub_100008D7C(&qword_1000770B8, &qword_100076ED8, &qword_100053868);
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000770B0);
  }

  return result;
}

uint64_t sub_1000471B0()
{
  v1 = (type metadata accessor for OpacityBackground(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[8];
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000472F8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100047390()
{
  v1 = (type metadata accessor for OpacityBackground(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  v10 = *(v0 + v3 + 8);

  v11 = v1[8];
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  else
  {
    v13 = *(v9 + v11);
  }

  v14 = v2 | v7;
  v15 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v15, v5);

  return _swift_deallocObject(v0, v15 + v8, v14 | 7);
}

uint64_t sub_100047538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OpacityBackground(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100043E44(a1, (v2 + v6), v9, a2);
}

uint64_t sub_10004761C()
{
  v1 = (type metadata accessor for OpacityBackground(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[8];
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_100047744@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OpacityBackground(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_1000440E8(a1, (v2 + v6), v7, a2).n128_u64[0];
  return result;
}

unint64_t sub_1000477F0()
{
  result = qword_100077108;
  if (!qword_100077108)
  {
    sub_100008B90(&qword_100077100, &qword_100053A20);
    sub_100008D7C(&qword_100077110, &qword_100077118, &qword_100053A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077108);
  }

  return result;
}

unint64_t sub_1000478BC()
{
  result = qword_100077120;
  if (!qword_100077120)
  {
    sub_100008B90(&qword_1000770C8, &qword_1000539C8);
    sub_100008D7C(&qword_100077128, &qword_1000770C0, &qword_1000539C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077120);
  }

  return result;
}

unint64_t sub_100047978()
{
  result = qword_100077130;
  if (!qword_100077130)
  {
    sub_100008B90(&qword_1000770D8, &qword_1000539D8);
    sub_100008D7C(&qword_100077138, &qword_1000770D0, &qword_1000539D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077130);
  }

  return result;
}

unint64_t sub_100047A34()
{
  result = qword_100077140;
  if (!qword_100077140)
  {
    sub_100008B90(&qword_100077148, &qword_100053A50);
    sub_100008D7C(&qword_100077150, &qword_100077158, &qword_100053A58);
    sub_100047AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077140);
  }

  return result;
}

unint64_t sub_100047AEC()
{
  result = qword_100077160;
  if (!qword_100077160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077160);
  }

  return result;
}

unint64_t sub_100047B5C()
{
  result = qword_100077180;
  if (!qword_100077180)
  {
    sub_100008B90(&qword_100077170, &qword_100053AB8);
    sub_100008D7C(&qword_100077188, &qword_100077178, &qword_100053AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077180);
  }

  return result;
}

unint64_t sub_100047C18()
{
  result = qword_100077190;
  if (!qword_100077190)
  {
    sub_100008B90(&qword_100077198, &qword_100053AC8);
    sub_100047B5C();
    sub_100008D7C(&qword_100077188, &qword_100077178, &qword_100053AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077190);
  }

  return result;
}

id sub_1000488EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 eyedropperDidSelectColor:a2];
    v3 = *(a1 + 32);
  }

  return [v3 eyedropperDidDismiss];
}

float sub_100048B80(float *a1, float a2)
{
  v2 = a1[1];
  v3 = *a1 * 3.0;
  v4 = ((a1[2] - *a1) * 3.0) - v3;
  v5 = (1.0 - v3) - v4;
  v6 = 8;
  v7 = a2;
  while (1)
  {
    v8 = v7 * (v3 + (v7 * (v4 + (v5 * v7))));
    if (vabds_f32(v8, a2) < 0.00001)
    {
      break;
    }

    v9 = v3 + (v7 * ((v4 + v4) + ((v5 * 3.0) * v7)));
    if (fabsf(v9) >= 0.000001)
    {
      v7 = v7 - ((v8 - a2) / v9);
      if (--v6)
      {
        continue;
      }
    }

    v7 = 0.0;
    if (a2 >= 0.0)
    {
      v7 = 1.0;
      if (a2 <= 1.0)
      {
        v10 = 0.0;
        v11 = 1.0;
        v12 = -1025;
        v7 = a2;
        do
        {
          if (__CFADD__(v12++, 1))
          {
            break;
          }

          v14 = v7 * (v3 + (v7 * (v4 + (v5 * v7))));
          if (vabds_f32(v14, a2) < 0.00001)
          {
            break;
          }

          if ((v14 - a2) >= 0.0)
          {
            v11 = v7;
          }

          else
          {
            v10 = v7;
          }

          v7 = (v11 - v10) * 0.5 + v10;
        }

        while (v10 < v11);
      }
    }

    break;
  }

  v15 = ((a1[3] - v2) * 3.0) - (v2 * 3.0);
  return v7 * ((v2 * 3.0) + (v7 * (v15 + (((1.0 - (v2 * 3.0)) - v15) * v7))));
}

float sub_100048CD8(float *a1, float a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 * 3.0;
  v5 = ((a1[3] - v3) * 3.0) - (v3 * 3.0);
  v6 = (1.0 - v4) - v5;
  v7 = 8;
  v8 = a2;
  while (1)
  {
    v9 = v8 * (v4 + (v8 * (v5 + (v6 * v8))));
    if (vabds_f32(v9, a2) < 0.00001)
    {
      break;
    }

    v10 = v4 + (v8 * ((v5 + v5) + ((v6 * 3.0) * v8)));
    if (fabsf(v10) >= 0.000001)
    {
      v8 = v8 - ((v9 - a2) / v10);
      if (--v7)
      {
        continue;
      }
    }

    v8 = 0.0;
    if (a2 >= 0.0)
    {
      v8 = 1.0;
      if (a2 <= 1.0)
      {
        v11 = 0.0;
        v12 = 1.0;
        v13 = -1025;
        v8 = a2;
        do
        {
          if (__CFADD__(v13++, 1))
          {
            break;
          }

          v15 = v8 * (v4 + (v8 * (v5 + (v6 * v8))));
          if (vabds_f32(v15, a2) < 0.00001)
          {
            break;
          }

          if ((v15 - a2) >= 0.0)
          {
            v12 = v8;
          }

          else
          {
            v11 = v8;
          }

          v8 = (v12 - v11) * 0.5 + v11;
        }

        while (v11 < v12);
      }
    }

    break;
  }

  v16 = ((a1[2] - v2) * 3.0) - (v2 * 3.0);
  return v8 * ((v2 * 3.0) + (v8 * (v16 + (((1.0 - (v2 * 3.0)) - v16) * v8))));
}

__n64 sub_100048E30(double a1)
{
  v1 = 0.5 - *(&a1 + 1) * 0.5;
  if (v1 >= 0.16667)
  {
    v3 = v1;
    if (v1 >= 0.33333)
    {
      if (v3 >= 0.500000015)
      {
        if (v1 >= 0.66667)
        {
          v8 = v3 * 6.0;
          if (v3 >= 0.833333358)
          {
            v10 = 1.0 - (v8 + -5.0);
            sub_100048B80(flt_100053B80, v10);
            return COERCE_UNSIGNED_INT(1.0);
          }

          else
          {
            v9 = v8 + -4.0;
            result.n64_f32[0] = sub_100048B80(flt_100053B80, v9);
            result.n64_u32[1] = 0;
          }
        }

        else
        {
          v6 = 1.0 - (v3 * 6.0 + -3.0);
          v7 = sub_100048B80(flt_100053B80, v6);
          result.n64_u32[0] = 0;
          result.n64_f32[1] = v7;
        }
      }

      else
      {
        v5 = v3 * 6.0 + -2.0;
        sub_100048B80(flt_100053B80, v5);
        result.n64_u32[0] = 0;
        result.n64_u32[1] = 1.0;
      }
    }

    else
    {
      v4 = 1.0 - (v3 * 6.0 + -1.0);
      result.n64_f32[0] = sub_100048B80(flt_100053B80, v4);
      result.n64_u32[1] = 1.0;
    }
  }

  else
  {
    return __PAIR64__(COERCE_UNSIGNED_INT(sub_100048B80(flt_100053B80, v1 * 6.0)), 1.0);
  }

  return result;
}

float sub_100049000(__n128 a1)
{
  if (a1.n128_f32[0] >= a1.n128_f32[1] && a1.n128_f32[0] >= a1.n128_f32[2])
  {
    v4 = (a1.n128_f32[1] - a1.n128_f32[2]) / (a1.n128_f32[0] - fminf(a1.n128_f32[1], a1.n128_f32[2]));
    goto LABEL_17;
  }

  if (a1.n128_f32[1] >= a1.n128_f32[0] && a1.n128_f32[1] >= a1.n128_f32[2])
  {
    v5 = (a1.n128_f32[2] - a1.n128_f32[0]) / (a1.n128_f32[1] - fminf(a1.n128_f32[0], a1.n128_f32[2]));
    v6 = 2.0;
LABEL_16:
    v4 = v5 + v6;
LABEL_17:
    while (v4 < 0.0)
    {
      v4 = v4 + 6.0;
    }

    return v4 * 60.0;
  }

  v4 = 0.0;
  if (a1.n128_f32[2] >= a1.n128_f32[0] && a1.n128_f32[2] >= a1.n128_f32[1])
  {
    v5 = (a1.n128_f32[0] - a1.n128_f32[1]) / (a1.n128_f32[2] - fminf(a1.n128_f32[0], a1.n128_f32[1]));
    v6 = 4.0;
    goto LABEL_16;
  }

  return v4 * 60.0;
}

float sub_10004909C(__n128 a1)
{
  v1 = sub_100049000(a1);
  *&v2 = 0;
  v3 = 100;
  v4 = 0.5;
  while (1)
  {
    v10 = v2;
    v5.n128_u64[0] = sub_100048E30(*&v2).n64_u64[0];
    v6 = sub_100049000(v5);
    if (vabds_f32(v1, v6) < 0.001)
    {
      break;
    }

    v7 = v10;
    if (v1 >= v6)
    {
      v8 = -v4;
    }

    else
    {
      v8 = v4;
    }

    *(&v7 + 1) = *(&v10 + 1) + v8;
    v4 = v4 * 0.5;
    --v3;
    v2 = v7;
    if (!v3)
    {
      return *(&v2 + 1);
    }
  }

  DWORD1(v2) = DWORD1(v10);
  return *(&v2 + 1);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}