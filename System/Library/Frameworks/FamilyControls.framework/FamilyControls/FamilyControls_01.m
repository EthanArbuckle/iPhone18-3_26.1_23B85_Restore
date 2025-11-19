uint64_t sub_10001C6F0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_10001C8A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *sub_10001C90C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003720(&qword_10006BFC8, &qword_100056D08);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_10001CA64(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003720(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003720(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10001CBAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003720(&qword_10006C038, &qword_100056D50);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_10001CCE0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003720(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10001CEBC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003720(&qword_10006BFC8, &qword_100056D08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_10001CF68(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10001D0B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003720(&qword_10006BFD0, &unk_100056D10);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

void *sub_10001D378()
{
  v1 = v0;
  sub_100003720(&qword_10006BFD0, &unk_100056D10);
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

void *sub_10001D4F0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10001D650()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D6AC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D6EC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1(1);
  }

  return result;
}

uint64_t sub_10001D720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001D738()
{
  result = qword_10006BF30;
  if (!qword_10006BF30)
  {
    sub_1000075FC(&qword_10006C0E0, &unk_100056C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BF30);
  }

  return result;
}

uint64_t sub_10001D7F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10001D848()
{
  sub_1000032BC((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001D888(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001D8AC()
{
  sub_1000032BC((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001D904()
{
  sub_1000032BC((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001D958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10001D9BC(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10001DB14(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136446210;
    v14 = v9;
    v24 = v9;
    v15 = v14;
    v16 = [v14 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = a2;
    v18 = v17;
    v23 = v4;
    v20 = v19;

    v9 = v24;
    v21 = sub_100002CB4(v18, v20, &v26);

    *(v12 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling incoming invitation %{public}s", v12, 0xCu);
    sub_1000032BC(v13);

    (*(v5 + 8))(v8, v23);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return sub_100014F50(v9);
}

uint64_t sub_10001DD64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003720(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DDCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

_OWORD *sub_10001DE0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001DE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a1 + 32); ; i += 5)
  {
    v7 = i[3];
    v8 = i[4];
    sub_100007504(i, v7);
    (*(v8 + 56))(v25, v7, v8);
    v9 = [*sub_100007504(v25 v25[3])];
    sub_1000032BC(v25);
    if (!v9)
    {
      goto LABEL_4;
    }

    v10 = [v9 emailAddress];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == a2 && v14 == a3)
      {

        return v5;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_23;
      }
    }

    v17 = [v9 phoneNumber];
    if (v17)
    {
      break;
    }

LABEL_4:
    if (v26 == ++v5)
    {
      return 0;
    }
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 != a2 || v21 != a3)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      return v5;
    }

    goto LABEL_4;
  }

LABEL_23:

  return v5;
}

unint64_t sub_10001E018(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v5;
  v10 = v9 + 32 + 40 * result;
  sub_100003720(a4, a5);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v6);
  v12 = a3 - v6;
  if (v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_17;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_18;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E0F8(void *a1, void *a2)
{
  v214 = 0;
  v227 = type metadata accessor for Logger();
  v211 = *(v227 - 8);
  v4 = *(v211 + 64);
  v5 = __chkstk_darwin(v227);
  v7 = &v205 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v217 = &v205 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v205 - v11;
  v13 = __chkstk_darwin(v10);
  v210 = &v205 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v205 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v205 - v19;
  v21 = __chkstk_darwin(v18);
  v209 = &v205 - v22;
  __chkstk_darwin(v21);
  v208 = &v205 - v23;
  v24 = a2[3];
  v25 = a2[4];
  sub_100007504(a2, v24);
  v26 = (*(*(v25 + 8) + 8))(v24);
  v27 = [v26 zoneID];

  v28 = [v27 zoneName];
  v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v228 = v29;

  v30 = a2[3];
  v31 = a2[4];
  v215 = a2;
  sub_100007504(a2, v30);
  v32 = (*(v31 + 16))(v30, v31);
  v33 = a1[3];
  v34 = a1[4];
  sub_100007504(a1, v33);
  result = (*(v34 + 16))(v33, v34);
  v37 = result;
  v38 = *(result + 16);
  v39 = a1;
  v216 = a1;
  v223 = v7;
  v219 = v38;
  if (!v38)
  {

    v172 = 0;
    v43 = a1;
LABEL_113:
    v173 = *(v32 + 16);
    v174 = v223;
    if (!v173)
    {
LABEL_130:

      return v172 & 1;
    }

    v175 = v32 + 32;
    v230 = (v211 + 8);
    *&v171 = 136446466;
    v229 = v171;
    v226 = v32;
    while (1)
    {
      sub_10001D958(v175, &v239);
      v178 = v240;
      v179 = v241;
      sub_100007504(&v239, v240);
      if ((*(v179 + 32))(v178, v179) != 1)
      {
        v180 = v240;
        v181 = v241;
        sub_100007504(&v239, v240);
        if (((*(v181 + 24))(v180, v181) & 1) == 0)
        {
          v182 = v240;
          v183 = v241;
          sub_100007504(&v239, v240);
          (*(v183 + 56))(&v237, v182, v183);
          v184 = [*sub_100007504(&v237 v238)];
          sub_1000032BC(&v237);
          if (!v184)
          {
            goto LABEL_126;
          }

          v185 = [v184 emailAddress];
          if (!v185)
          {
            v185 = [v184 phoneNumber];
            if (!v185)
            {

LABEL_126:
              static Logger.syncEngine.getter();
              sub_10001D958(&v239, &v237);
              v196 = v228;

              v197 = Logger.logObject.getter();
              v198 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v197, v198))
              {
                v199 = swift_slowAlloc();
                *&v232 = swift_slowAlloc();
                *v199 = v229;
                *(v199 + 4) = sub_100002CB4(v224, v196, &v232);
                *(v199 + 12) = 2082;
                sub_10001D958(&v237, &v234);
                sub_100003720(&qword_10006BF90, &unk_100056CD0);
                v200 = v43;
                v201 = String.init<A>(describing:)();
                v203 = v202;
                sub_1000032BC(&v237);
                v204 = sub_100002CB4(v201, v203, &v232);
                v174 = v223;

                *(v199 + 14) = v204;
                v43 = v200;
                _os_log_impl(&_mh_execute_header, v197, v198, "Failed to share %{public}s with %{public}s", v199, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                sub_1000032BC(&v237);
              }

              (*v230)(v174, v227);
              goto LABEL_117;
            }
          }

          v186 = v185;
          v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v189 = v188;

          v190 = v217;
          static Logger.syncEngine.getter();
          v191 = v228;

          v192 = Logger.logObject.getter();
          v193 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            v237 = swift_slowAlloc();
            *v194 = v229;
            v195 = sub_100002CB4(v187, v189, &v237);

            *(v194 + 4) = v195;
            *(v194 + 12) = 2082;
            *(v194 + 14) = sub_100002CB4(v224, v191, &v237);
            _os_log_impl(&_mh_execute_header, v192, v193, "Adding %{public}s to %{public}s", v194, 0x16u);
            swift_arrayDestroy();

            v43 = v216;

            (*v230)(v217, v227);
          }

          else
          {

            (*v230)(v190, v227);
          }

          v174 = v223;
          v176 = v43[3];
          v177 = v43[4];
          sub_100007504(v43, v176);
          (*(v177 + 40))(&v239, v176, v177);

          v172 = 1;
        }
      }

LABEL_117:
      sub_1000032BC(&v239);
      v175 += 40;
      if (!--v173)
      {
        goto LABEL_130;
      }
    }
  }

  v206 = v20;
  v207 = v17;
  v212 = v12;
  v222 = 0;
  v40 = 0;
  v41 = result + 32;
  v220 = (v211 + 8);
  *&v36 = 136446466;
  v213 = v36;
  *&v36 = 136446210;
  v205 = v36;
  v221 = result;
  v42 = v219;
  v225 = result + 32;
  v43 = v39;
LABEL_6:
  if (v40 >= *(v37 + 16))
  {
    goto LABEL_132;
  }

  sub_10001D958(v41 + 40 * v40, &v239);
  v46 = v240;
  v47 = v241;
  sub_100007504(&v239, v240);
  if ((*(v47 + 32))(v46, v47) == 1)
  {
    goto LABEL_5;
  }

  v48 = v240;
  v49 = v241;
  sub_100007504(&v239, v240);
  if ((*(v49 + 24))(v48, v49))
  {
    goto LABEL_5;
  }

  v50 = v240;
  v51 = v241;
  sub_100007504(&v239, v240);
  (*(v51 + 56))(&v237, v50, v51);
  v52 = [*sub_100007504(&v237 v238)];
  sub_1000032BC(&v237);
  if (!v52)
  {
    goto LABEL_36;
  }

  v53 = [v52 emailAddress];
  if (!v53)
  {
    v53 = [v52 phoneNumber];
    if (!v53)
    {

LABEL_36:
      v89 = v212;
      static Logger.syncEngine.getter();
      sub_10001D958(&v239, &v237);
      v90 = v228;

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        *&v232 = v230;
        *v93 = v213;
        sub_10001D958(&v237, &v234);
        sub_100003720(&qword_10006BF90, &unk_100056CD0);
        v94 = v32;
        v95 = String.init<A>(describing:)();
        v96 = v43;
        v98 = v97;
        sub_1000032BC(&v237);
        v99 = sub_100002CB4(v95, v98, &v232);
        v43 = v96;

        *(v93 + 4) = v99;
        v32 = v94;
        v42 = v219;
        *(v93 + 12) = 2082;
        *(v93 + 14) = sub_100002CB4(v224, v90, &v232);
        _os_log_impl(&_mh_execute_header, v91, v92, "Removing %{public}s from %{public}s", v93, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000032BC(&v237);
      }

      (*v220)(v89, v227);
      v41 = v225;
      v44 = v43[3];
      v45 = v43[4];
      sub_100007504(v43, v44);
      (*(v45 + 48))(&v239, v44, v45);
      v222 = 1;
      v37 = v221;
      goto LABEL_5;
    }
  }

  v218 = v52;
  v54 = v32;
  v55 = v53;
  *&v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v230 = v56;

  v57 = v215[3];
  v58 = v215[4];
  sub_100007504(v215, v57);
  result = (*(v58 + 16))(v57, v58);
  v59 = result;
  v60 = *(result + 16);
  if (!v60)
  {
LABEL_31:

    v80 = v210;
    static Logger.syncEngine.getter();
    v81 = v230;

    v82 = v228;

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      *v85 = v213;
      v86 = sub_100002CB4(v229, v81, &v237);

      *(v85 + 4) = v86;
      *(v85 + 12) = 2082;
      *(v85 + 14) = sub_100002CB4(v224, v82, &v237);
      _os_log_impl(&_mh_execute_header, v83, v84, "Removing %{public}s from %{public}s", v85, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*v220)(v80, v227);
    v43 = v216;
    v37 = v221;
    v41 = v225;
    v87 = v216[3];
    v88 = v216[4];
    sub_100007504(v216, v87);
    (*(v88 + 48))(&v239, v87, v88);

    v222 = 1;
    v32 = v54;
    goto LABEL_108;
  }

  v61 = 0;
  v62 = result + 32;
  while (v61 < *(v59 + 16))
  {
    sub_10001D958(v62, &v234);
    v63 = v235;
    v64 = v236;
    sub_100007504(&v234, v235);
    (*(v64 + 56))(&v232, v63, v64);
    v65 = [*sub_100007504(&v232 v233)];
    sub_1000032BC(&v232);
    if (!v65)
    {
      goto LABEL_15;
    }

    v66 = [v65 emailAddress];
    if (v66)
    {
      v67 = v66;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      if (v229 == v68 && v230 == v70)
      {
        v100 = v230;

        goto LABEL_42;
      }

      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v72)
      {

LABEL_40:
        v100 = v230;
LABEL_42:
        sub_10001D888(&v234, &v237);

        v101 = v54;
        v102 = v54;
        v103 = v214;
        v104 = sub_10001DE1C(v102, v229, v100);
        v106 = v105;
        v214 = v103;

        v41 = v225;
        if (v106)
        {
          v107 = v101[2];
          v104 = v107;
          goto LABEL_48;
        }

        v107 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          goto LABEL_141;
        }

        v109 = v101 + 2;
        v108 = v101[2];
        if (v107 != v108)
        {
          v129 = 40 * v104 + 72;
          while (1)
          {
            if (v107 >= v108)
            {
              goto LABEL_133;
            }

            v130 = v101;
            sub_10001D958(v101 + v129, &v234);
            v131 = v235;
            v132 = v236;
            sub_100007504(&v234, v235);
            (*(v132 + 56))(&v232, v131, v132);
            v133 = [*sub_100007504(&v232 v233)];
            sub_1000032BC(&v232);
            if (!v133)
            {
              goto LABEL_85;
            }

            v134 = [v133 emailAddress];
            if (v134)
            {
              v135 = v134;
              v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v138 = v137;

              if (v229 == v136 && v230 == v138)
              {

LABEL_95:
                result = sub_1000032BC(&v234);
LABEL_96:
                v101 = v130;
                goto LABEL_66;
              }

              v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v140)
              {
                goto LABEL_94;
              }
            }

            v141 = [v133 phoneNumber];
            if (!v141)
            {
              break;
            }

            v142 = v141;
            v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v145 = v144;

            if (v229 == v143 && v230 == v145)
            {

LABEL_94:

              goto LABEL_95;
            }

            v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = sub_1000032BC(&v234);
            if (v147)
            {
              goto LABEL_96;
            }

            if (v107 != v104)
            {
LABEL_86:
              if (v104 < 0)
              {
                goto LABEL_134;
              }

              v148 = *v109;
              if (v104 >= *v109)
              {
                goto LABEL_135;
              }

              v101 = v130;
              result = sub_10001D958(&v130[5 * v104 + 4], &v234);
              if (v107 >= v148)
              {
                goto LABEL_136;
              }

              sub_10001D958(v130 + v129, &v232);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v101 = sub_10001D070(v130);
              }

              v149 = &v101[5 * v104];
              sub_1000032BC(v149 + 4);
              result = sub_10001D888(&v232, (v149 + 4));
              if (v107 >= v101[2])
              {
                goto LABEL_137;
              }

              sub_1000032BC((v101 + v129));
              result = sub_10001D888(&v234, v101 + v129);
              goto LABEL_65;
            }

LABEL_64:
            v101 = v130;
LABEL_65:
            ++v104;
LABEL_66:
            ++v107;
            v109 = v101 + 2;
            v108 = v101[2];
            v129 += 40;
            if (v107 == v108)
            {
              goto LABEL_46;
            }
          }

LABEL_85:
          result = sub_1000032BC(&v234);
          if (v107 != v104)
          {
            goto LABEL_86;
          }

          goto LABEL_64;
        }

LABEL_46:
        if (v107 < v104)
        {
          goto LABEL_138;
        }

        v41 = v225;
        if (v104 < 0)
        {
          goto LABEL_139;
        }

LABEL_48:
        if (__OFADD__(v107, v104 - v107))
        {
          goto LABEL_140;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v242 = v101;
        if (isUniquelyReferenced_nonNull_native && v104 <= v101[3] >> 1)
        {
          v226 = v101;
        }

        else
        {
          if (v107 <= v104)
          {
            v111 = v104;
          }

          else
          {
            v111 = v107;
          }

          v226 = sub_10001CA64(isUniquelyReferenced_nonNull_native, v111, 1, v101, &qword_10006BFC0, &qword_100056D00, &qword_10006BF90, &unk_100056CD0);
          v242 = v226;
        }

        sub_10001E018(v104, v107, 0, &qword_10006BF90, &unk_100056CD0);
        v112 = v240;
        v113 = v241;
        sub_100007504(&v239, v240);
        v114 = (*(v113 + 8))(v112, v113);
        if (v114 < 2)
        {
          v122 = v208;
          static Logger.syncEngine.getter();
          v123 = v230;

          v124 = v228;

          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *&v234 = swift_slowAlloc();
            *v127 = v213;
            v128 = sub_100002CB4(v229, v123, &v234);

            *(v127 + 4) = v128;
            *(v127 + 12) = 2082;
            *(v127 + 14) = sub_100002CB4(v224, v124, &v234);
            _os_log_impl(&_mh_execute_header, v125, v126, "Re-inviting %{public}s to %{public}s", v127, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*v220)(v122, v227);
          v43 = v216;
          v32 = v226;
          v37 = v221;
          v155 = v216[3];
          v156 = v216[4];
          sub_100007504(v216, v155);
          (*(v156 + 48))(&v239, v155, v156);
LABEL_105:
          v169 = v43[3];
          v170 = v43[4];
          sub_100007504(v43, v169);
          (*(v170 + 40))(&v237, v169, v170);

          sub_1000032BC(&v237);
          v222 = 1;
          goto LABEL_108;
        }

        v115 = v228;
        v116 = v209;
        v117 = v230;
        if (v114 == 2)
        {
          v150 = v206;
          static Logger.syncEngine.getter();

          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            *&v234 = swift_slowAlloc();
            *v153 = v213;
            v154 = sub_100002CB4(v229, v117, &v234);

            *(v153 + 4) = v154;
            *(v153 + 12) = 2082;
            *(v153 + 14) = sub_100002CB4(v224, v115, &v234);
            _os_log_impl(&_mh_execute_header, v151, v152, "%{public}s is already sharing %{public}s", v153, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*v220)(v150, v227);
          sub_1000032BC(&v237);
          v43 = v216;
          v32 = v226;
          v37 = v221;
LABEL_108:
          v42 = v219;
          goto LABEL_5;
        }

        if (v114 == 3)
        {
          static Logger.syncEngine.getter();

          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            *&v234 = swift_slowAlloc();
            *v120 = v213;
            v121 = sub_100002CB4(v229, v117, &v234);

            *(v120 + 4) = v121;
            *(v120 + 12) = 2082;
            *(v120 + 14) = sub_100002CB4(v224, v115, &v234);
            _os_log_impl(&_mh_execute_header, v118, v119, "Adding %{public}s to %{public}s", v120, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*v220)(v116, v227);
          v43 = v216;
          v32 = v226;
          v37 = v221;
          goto LABEL_105;
        }

        v157 = v207;
        static Logger.syncEngine.getter();
        sub_10001D958(&v239, &v234);
        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          *&v232 = v161;
          *v160 = v205;
          v162 = v235;
          v163 = v236;
          sub_100007504(&v234, v235);
          v231 = (*(v163 + 8))(v162, v163);
          type metadata accessor for ParticipantAcceptanceStatus(0);
          v164 = String.init<A>(describing:)();
          v166 = v165;
          sub_1000032BC(&v234);
          v167 = sub_100002CB4(v164, v166, &v232);

          *(v160 + 4) = v167;
          _os_log_impl(&_mh_execute_header, v158, v159, "Unknown acceptance status: %{public}s", v160, 0xCu);
          sub_1000032BC(v161);

          (*v220)(v157, v227);
          v168 = &v237;
        }

        else
        {

          (*v220)(v157, v227);
          sub_1000032BC(&v237);
          v168 = &v234;
        }

        sub_1000032BC(v168);
        v43 = v216;
        v32 = v226;
        v37 = v221;
        v42 = v219;
        v41 = v225;
LABEL_5:
        ++v40;
        result = sub_1000032BC(&v239);
        if (v40 == v42)
        {

          v172 = v222;
          goto LABEL_113;
        }

        goto LABEL_6;
      }
    }

    v73 = [v65 phoneNumber];
    if (v73)
    {
      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      if (v229 == v75 && v230 == v77)
      {
        v100 = v230;

        goto LABEL_42;
      }

      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v79)
      {

        goto LABEL_40;
      }
    }

    else
    {
    }

LABEL_15:
    ++v61;
    result = sub_1000032BC(&v234);
    v62 += 40;
    if (v60 == v61)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
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
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

void sub_10001FC44(uint64_t a1, NSObject *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[1] = a1;
    v19 = v12;
    *v11 = 136446210;
    swift_errorRetain();
    sub_100003720(&qword_10006BF60, &qword_100056CA0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100002CB4(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to save share: %{public}s", v11, 0xCu);
    sub_1000032BC(v12);
  }

  (*(v5 + 8))(v8, v4);
  v16 = [objc_opt_self() defaultCenter];
  if (qword_10006B7B0 != -1)
  {
    swift_once();
  }

  v17 = qword_10006C988;
  if (qword_10006B7E0 != -1)
  {
    swift_once();
  }

  v19 = qword_10006C9B8;
  v20 = 0;
  [v16 postNotificationName:v17 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  dispatch_group_leave(a2);
}

uint64_t sub_10001FEF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001FF40()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001FF94(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10001FFAC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001FFB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FFF8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v13 = v7;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100002CB4(v15, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sender cancelled invitation %{public}s", v11, 0xCu);
    sub_1000032BC(v12);

    return (*(v3 + 8))(v6, v20);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1000201F0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v54 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = [a1 context];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v55 = v2;
    v18 = [v17 schemaIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v19 == 0xD00000000000002CLL && 0x8000000100058310 == v21;
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static Logger.syncEngine.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Receiver accepted share invitation", v25, 2u);
      }

      swift_unknownObjectRelease();
      return (*(v3 + 8))(v13, v55);
    }

    else if (v19 == 0xD000000000000033 && 0x8000000100058340 == v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v39 = [objc_msgSend(a1 "destination")];
      swift_unknownObjectRelease();
      v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      static Logger.syncEngine.getter();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v56 = v44;
        *v43 = 136446210;
        v45 = Set.description.getter();
        v47 = sub_100002CB4(v45, v46, &v56);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s accepted verification invitation", v43, 0xCu);
        sub_1000032BC(v44);
      }

      (*(v3 + 8))(v10, v55);
      v48 = [objc_opt_self() defaultCenter];
      if (qword_10006B7B0 != -1)
      {
        swift_once();
      }

      v56 = v40;
      v57 = 1;
      [v48 postNotificationName:qword_10006C988 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      static Logger.syncEngine.getter();

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v56 = v52;
        *v51 = 136446210;
        v53 = sub_100002CB4(v19, v21, &v56);

        *(v51 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v49, v50, "Receiver accepted invitation with unknown schema: %{public}s", v51, 0xCu);
        sub_1000032BC(v52);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v7, v55);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    static Logger.syncEngine.getter();
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v56 = v31;
      *v30 = 136446210;
      v32 = v27;
      v33 = [v32 description];
      v55 = v2;
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_100002CB4(v35, v37, &v56);

      *(v30 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to extract context from accepted invitation %{public}s", v30, 0xCu);
      sub_1000032BC(v31);

      return (*(v3 + 8))(v15, v55);
    }

    else
    {

      return (*(v3 + 8))(v15, v2);
    }
  }
}

uint64_t sub_1000208EC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v13 = v7;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100002CB4(v15, v17, &v24);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Receiver declined invitation %{public}s", v11, 0xCu);
    sub_1000032BC(v12);

    (*(v3 + 8))(v6, v23);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v19 = [objc_opt_self() defaultCenter];
  if (qword_10006B7B0 != -1)
  {
    swift_once();
  }

  v20 = qword_10006C988;
  if (qword_10006B7E0 != -1)
  {
    swift_once();
  }

  v24 = qword_10006C9B8;
  v25 = 0;
  [v19 postNotificationName:v20 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  return swift_unknownObjectRelease();
}

uint64_t sub_100020BC4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100020BD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100020C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_100020CA0()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v9 = 0xD000000000000010;
  v10 = 0x8000000100058460;
  LODWORD(v12) = *v0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x656C646E7562202CLL;
  v2._object = 0xEB00000000204449;
  String.append(_:)(v2);
  v12 = *(v0 + 8);
  v11 = *(v0 + 8);
  sub_1000215B0(&v12, &v8);
  sub_100003720(&qword_10006C110, &qword_100056EA8);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x44496D616574202CLL;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  v11 = *(v0 + 24);
  v8 = *(v0 + 24);
  sub_1000215B0(&v11, &v7);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  return v9;
}

uint64_t sub_100020E10(char a1)
{
  v3 = 0xD000000000000023;
  error = 0;
  v4 = "Controls.private-client";
  v5 = String._bridgeToObjectiveC()();

  v6 = SecTaskCopyValueForEntitlement(v1, v5, &error);

  v18 = v6;
  sub_100003720(&qword_10006C050, &qword_100056E08);
  if (swift_dynamicCast())
  {
    v7 = v17;
    v8 = error;
    if (!error)
    {
      return v7;
    }

LABEL_12:

    return v7;
  }

  if (!error)
  {
    return 2;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v11 = 136315394;
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = 0xD000000000000027;
        v4 = "per.family-controls";
      }

      else
      {
        v4 = "ent.SharingCoordinator";
      }
    }

    v12 = sub_100002CB4(v3, v4 | 0x8000000000000000, &v18);

    *(v11 + 4) = v12;
    *(v11 + 12) = 2082;
    sub_100003720(&qword_10006C058, &qword_100056E10);
    v13 = String.init<A>(describing:)();
    v15 = sub_100002CB4(v13, v14, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to extract entitlement %s from SecTask: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v8 = error;
  v7 = 2;
  if (error)
  {
    goto LABEL_12;
  }

  return v7;
}

unint64_t sub_1000210BC()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_100020CA0();
}

void sub_1000210F8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *token.val = a2;
  *&token.val[2] = a3;
  *&token.val[4] = a4;
  *&token.val[6] = a5;
  v16 = SecTaskCreateWithAuditToken(0, &token);
  if (v16)
  {
    v17 = v16;
    v18 = sub_10000E2C0();
    v31 = v19;
    v32 = v18;
    v33 = sub_100020E10(1);
    *token.val = a2;
    *&token.val[2] = a3;
    *&token.val[4] = a4;
    *&token.val[6] = a5;
    v35 = 0;
    v24 = static TeamIdentifierRetriever.teamIdentifier(from:)();
    v26 = v25;
    v27 = type metadata accessor for Logger();
    (*(*(v27 - 8) + 8))(a7, v27);

    v28 = v33;
    v30 = v31;
    v29 = v32;
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create SecTask from audit token", v22, 2u);
    }

    v23 = type metadata accessor for Logger();
    (*(*(v23 - 8) + 8))(a7, v23);
    v28 = 0;
    v24 = 0;
    v26 = 0;
    v29 = 0;
    v30 = 0;
  }

  *a8 = a1;
  *(a8 + 8) = v29;
  *(a8 + 16) = v30;
  *(a8 + 24) = v24;
  *(a8 + 32) = v26;
  *(a8 + 40) = v28 & 1;
}

__n128 sub_100021454(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100021468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000214C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100021534(uint64_t a1)
{
  result = sub_10002155C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002155C()
{
  result = qword_10006C060;
  if (!qword_10006C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C060);
  }

  return result;
}

uint64_t sub_1000215B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C110, &qword_100056EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021620(char a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 & 1;
  do
  {
    v5 = v2;
    v6 = *(&off_100065C28 + v3 + 32);
    if (v6)
    {
      v7 = "ControlsAgent.slotMachine";
    }

    else
    {
      v7 = "v16@?0@<OS_xpc_object>8";
    }

    __chkstk_darwin();
    if ((v7 & 0x1000000000000000) != 0)
    {
      _StringGuts._slowWithCString<A>(_:)();
    }

    else
    {
      if ((v7 & 0x2000000000000000) != 0)
      {
        *stream = v8;
        v23 = v7 & 0xFFFFFFFFFFFFF0;
        v13 = swift_allocObject();
        *(v13 + 16) = v4;
        *(v13 + 24) = v1;
        *(v13 + 32) = v6;
        v20 = sub_10002B5A8;
        v21 = v13;
        aBlock = _NSConcreteStackBlock;
        v17 = 1107296256;
        v18 = sub_100022118;
        v19 = &unk_100066DA0;
        v10 = _Block_copy(&aBlock);
        v14 = v1;

        v12 = stream;
      }

      else
      {
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        *(v9 + 24) = v1;
        *(v9 + 32) = v6;
        v20 = sub_10002B8A0;
        v21 = v9;
        aBlock = _NSConcreteStackBlock;
        v17 = 1107296256;
        v18 = sub_100022118;
        v19 = &unk_100066DF0;
        v10 = _Block_copy(&aBlock);
        v11 = v1;

        v12 = ((v7 & 0xFFFFFFFFFFFFFF0) + 32);
      }

      xpc_set_event_stream_handler(v12, 0, v10);
      _Block_release(v10);
    }

    v2 = 1;
    v3 = &_mh_execute_header.magic + 1;
  }

  while ((v5 & 1) == 0);
  return result;
}

id sub_1000218A4()
{
  v1 = v0;
  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  if (sub_100004AE4())
  {
    sub_100047AE4(0, 0);
  }

  v2 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listener);
  [*(v1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listener) setDelegate:v1];
  [v2 resume];
  v3 = *(v1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listenerPrivate);
  [v3 setDelegate:v1];

  return [v3 resume];
}

id sub_1000219DC()
{
  v1 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent____lazy_storage___slotMachine;
  v2 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent____lazy_storage___slotMachine);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent____lazy_storage___slotMachine);
  }

  else
  {
    v4 = [objc_allocWithZone(UISSlotMachine) initWithSlotDrawer:*(v0 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotDrawer) options:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100021A64(const char *a1, char a2, void *a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4 & 1;
  v11[4] = sub_10002B8A0;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100022118;
  v11[3] = &unk_100066F30;
  v9 = _Block_copy(v11);
  v10 = a3;

  xpc_set_event_stream_handler(a1, 0, v9);
  _Block_release(v9);
}

void sub_100021B60(void *a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v16 = String.init(cString:)();
    v18 = v16;
    v19 = v17;
    if (a2)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v20 == v19)
      {

LABEL_28:

        v43 = v2;
        sub_100038CE4(v43);
        v31 = v43;

        return;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_28;
      }

      static Logger.agent.getter();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 136446210;
        v36 = sub_100002CB4(v18, v19, &v44);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "Dropping unexpecting darwin notification %{public}s", v34, 0xCu);
        sub_1000032BC(v35);
      }

      else
      {
      }

      (*(v6 + 8))(v13, v5);
    }

    else
    {
      v30 = v16 == 0xD00000000000002ELL && 0x80000001000586D0 == v17;
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_1000285D0(a1);
      }

      else
      {
        v37 = v18 == 0xD000000000000030 && 0x8000000100058700 == v19;
        if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_100022178(a1);
        }

        else
        {
          static Logger.agent.getter();

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v44 = v41;
            *v40 = 136446210;
            v42 = sub_100002CB4(v18, v19, &v44);

            *(v40 + 4) = v42;
            _os_log_impl(&_mh_execute_header, v38, v39, "Dropping unexpecting distributed notification %{public}s", v40, 0xCu);
            sub_1000032BC(v41);
          }

          else
          {
          }

          (*(v6 + 8))(v15, v5);
        }
      }
    }
  }

  else
  {
    static Logger.agent.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136446210;
      if (a2)
      {
        v27 = 0xD00000000000001ALL;
      }

      else
      {
        v27 = 0xD00000000000001CLL;
      }

      if (a2)
      {
        v28 = "ControlsAgent.slotMachine";
      }

      else
      {
        v28 = "v16@?0@<OS_xpc_object>8";
      }

      v29 = sub_100002CB4(v27, v28 | 0x8000000000000000, &v44);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get XPC event name for %{public}s", v25, 0xCu);
      sub_1000032BC(v26);
    }

    (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_100022118(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100022178(void *a1)
{
  v2 = v1;
  v90 = type metadata accessor for UUID();
  v4 = *(v90 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v90);
  v89 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v92 = &v75 - v14;
  v15 = type metadata accessor for AuthorizationRecord();
  v94 = *(v15 - 8);
  v16 = *(v94 + 64);
  v17 = __chkstk_darwin(v15);
  v95 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  *&v81 = &v75 - v20;
  v21 = __chkstk_darwin(v19);
  v93 = &v75 - v22;
  __chkstk_darwin(v21);
  v88 = &v75 - v23;
  v24 = String.utf8CString.getter();
  v25 = xpc_dictionary_get_dictionary(a1, (v24 + 32));

  if (!v25)
  {
    goto LABEL_5;
  }

  v91 = xpc_dictionary_get_array(v25, "bundleIDs");
  if (!v91)
  {
    swift_unknownObjectRelease();
LABEL_5:
    static Logger.agent.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "User info did not contain any bundle IDs", v29, 2u);
    }

    return (*(v8 + 8))(v12, v7);
  }

  result = sub_10000423C();
  v75 = v4;
  v76 = v8;
  v77 = v25;
  v79 = v2;
  v85 = v7;
  v86 = *(result + 16);
  if (v86)
  {
    v30 = 0;
    v84 = (v94 + 16);
    v83 = v97;
    v78 = (v94 + 32);
    v80 = (v94 + 8);
    v31 = &_swiftEmptyArrayStorage;
    v32 = v92;
    v33 = v88;
    v82 = result;
    while (1)
    {
      if (v30 >= *(result + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      v35 = v31;
      v87 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v36 = *(v94 + 72);
      v37 = v15;
      (*(v94 + 16))(v33, result + v87 + v36 * v30, v15);
      v98 = &_swiftEmptySetSingleton;
      v38 = swift_allocObject();
      *(v38 + 16) = &v98;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_10002B5BC;
      *(v39 + 24) = v38;
      v97[2] = sub_10002B5C4;
      v97[3] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v97[0] = sub_10002414C;
      v97[1] = &unk_100066E68;
      v40 = _Block_copy(aBlock);

      xpc_array_apply(v91, v40);
      _Block_release(v40);
      LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

      if (v40)
      {
        goto LABEL_40;
      }

      v41 = v98;

      v42 = AuthorizationRecord.bundleIdentifier.getter();
      v44 = v43;
      if (v41[2])
      {
        v45 = v42;
        v46 = v41[5];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v47 = Hasher._finalize()();
        v48 = -1 << *(v41 + 32);
        v49 = v47 & ~v48;
        if ((*(v41 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v49))
        {
          v50 = ~v48;
          while (1)
          {
            v51 = (v41[6] + 16 * v49);
            v52 = *v51 == v45 && v51[1] == v44;
            if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v49 = (v49 + 1) & v50;
            if (((*(v41 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v49) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v53 = *v78;
          v15 = v37;
          (*v78)(v81, v88, v37);
          v31 = v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100034A7C(0, v35[2] + 1, 1);
            v31 = v99;
          }

          v32 = v92;
          v56 = v31[2];
          v55 = v31[3];
          if (v56 >= v55 >> 1)
          {
            sub_100034A7C(v55 > 1, v56 + 1, 1);
            v31 = v99;
          }

          v31[2] = v56 + 1;
          v53(v31 + v87 + v56 * v36, v81, v37);
          v33 = v88;
          goto LABEL_12;
        }

LABEL_24:

        v33 = v88;
        v15 = v37;
        (*v80)(v88, v37);
        v32 = v92;
      }

      else
      {

        (*v80)(v33, v15);
      }

      v31 = v35;
LABEL_12:
      ++v30;
      v34 = v95;
      result = v82;
      if (v30 == v86)
      {
        goto LABEL_31;
      }
    }
  }

  v31 = &_swiftEmptyArrayStorage;
  v32 = v92;
  v34 = v95;
LABEL_31:

  v88 = v31[2];
  if (v88)
  {
    v58 = 0;
    v87 = v94 + 16;
    v84 = (v76 + 8);
    v83 = (v75 + 8);
    *&v57 = 136446210;
    v81 = v57;
    v86 = (v94 + 8);
    v82 = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v58 < v31[2])
    {
      v62 = v31;
      v63 = v31 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v58;
      v64 = *(v94 + 16);
      v65 = v93;
      v64(v93, v63, v15);
      static Logger.agent.getter();
      v64(v34, v65, v15);
      v66 = Logger.logObject.getter();
      v67 = v15;
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        aBlock[0] = v70;
        *v69 = v81;
        v71 = AuthorizationRecord.bundleIdentifier.getter();
        v73 = v72;
        v59 = *v86;
        (*v86)(v95, v67);
        v74 = sub_100002CB4(v71, v73, aBlock);

        *(v69 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v66, v68, "Authorized Family Controls app %{public}s was removed, revoking authorization", v69, 0xCu);
        sub_1000032BC(v70);
        v32 = v92;

        v34 = v95;
      }

      else
      {

        v59 = *v86;
        (*v86)(v34, v67);
      }

      (*v84)(v32, v85);
      ++v58;
      v60 = v89;
      v61 = v93;
      AuthorizationRecord.recordIdentifier.getter();
      sub_100022D28(v60);
      (*v83)(v60, v90);
      result = (v59)(v61, v67);
      v31 = v62;
      v15 = v67;
      if (v88 == v58)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_41;
  }

LABEL_38:

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_100022D28(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  sub_1000070DC(a1);
  result = sub_100004AE4();
  if ((result & 1) == 0)
  {
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    return sub_100048C54();
  }

  return result;
}

char *sub_100023090(char a1, uint64_t a2, void *a3)
{
  v85 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  __chkstk_darwin(v4);
  v80 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  v7 = *(v79 + 64);
  __chkstk_darwin(v81);
  v78 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for UUID();
  v70 = *(v76 - 8);
  v14 = *(v70 + 64);
  __chkstk_darwin(v76);
  v75 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Logger();
  v69 = *(v74 - 8);
  v16 = *(v69 + 64);
  __chkstk_darwin(v74);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AuthorizationStatus();
  v86 = *(v19 - 8);
  v20 = *(v86 + 64);
  v21 = __chkstk_darwin(v19);
  v84 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v60 - v23;
  v25 = type metadata accessor for AuthorizationRecord();
  v93 = *(v25 - 8);
  v94 = v25;
  v26 = *(v93 + 64);
  v27 = __chkstk_darwin(v25);
  v73 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v60 - v28;
  v30 = dispatch_group_create();
  v31 = v30;
  if (a1)
  {
LABEL_13:
    sub_100028338();
    (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v52 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v13, v9);
    v53 = swift_allocObject();
    v54 = v85;
    *(v53 + 16) = v85;
    aBlock[4] = sub_10002B628;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017E50;
    aBlock[3] = &unk_100066EB8;
    v55 = _Block_copy(aBlock);
    v56 = v54;
    v57 = v78;
    static DispatchQoS.unspecified.getter();
    v95 = &_swiftEmptyArrayStorage;
    sub_10002B778(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003720(&qword_10006C0E0, &unk_100056C80);
    sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
    v58 = v80;
    v59 = v83;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v55);

    (*(v82 + 8))(v58, v59);
    (*(v79 + 8))(v57, v81);
  }

  v71 = v18;
  v72 = v30;
  v61 = v13;
  v62 = v10;
  v77 = v9;
  v32 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  result = sub_10000423C();
  v91 = *(result + 2);
  if (!v91)
  {

    v9 = v77;
LABEL_12:
    v10 = v62;
    v13 = v61;
    v31 = v72;
    goto LABEL_13;
  }

  v67 = v32;
  v34 = 0;
  v35 = *(v93 + 80);
  v89 = &result[(v35 + 32) & ~v35];
  v92 = v93 + 16;
  v88 = enum case for AuthorizationStatus.approved(_:);
  v87 = (v86 + 104);
  v36 = (v86 + 8);
  v86 = v93 + 8;
  v66 = (v69 + 8);
  v69 = v35;
  v65 = (v35 + 16) & ~v35;
  v64 = (v26 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v93 + 32);
  v70 += 8;
  v9 = v77;
  v37 = v84;
  v68 = v24;
  v90 = result;
  while (v34 < *(result + 2))
  {
    v45 = *(v93 + 16);
    v45(v29, &v89[*(v93 + 72) * v34], v94);
    AuthorizationRecord.status.getter();
    (*v87)(v37, v88, v19);
    sub_10002B778(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v46 = *v36;
    (*v36)(v37, v19);
    v46(v24, v19);
    if (aBlock[0] == v95)
    {
      AuthorizationRecord.type.getter();
      v47 = FamilyControlsMember.rawValue.getter();
      if (v47 == FamilyControlsMember.rawValue.getter())
      {
        v48 = v71;
        static Logger.agent.getter();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Family Controls is not allowed, revoking all child authorizations", v51, 2u);
        }

        (*v66)(v48, v74);
        v38 = v72;
        dispatch_group_enter(v72);
        v39 = v75;
        AuthorizationRecord.recordIdentifier.getter();
        v40 = v73;
        v41 = v94;
        v45(v73, v29, v94);
        v42 = v64;
        v43 = swift_allocObject();
        (*v63)(v43 + v65, v40, v41);
        *(v43 + v42) = v38;
        v44 = v38;
        sub_100005F8C(v39, 0, sub_10002B6CC, v43);

        (*v70)(v39, v76);
        v9 = v77;
        v37 = v84;
        v24 = v68;
      }
    }

    ++v34;
    (*v86)(v29, v94);
    result = v90;
    if (v91 == v34)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_100023B08(uint64_t a1, char a2, uint64_t a3, NSObject *a4)
{
  v43 = a4;
  v7 = type metadata accessor for UUID();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AuthorizationRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  if (a2)
  {
    static Logger.agent.getter();
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = a1;
      v45 = v26;
      *v25 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v27 = String.init<A>(describing:)();
      v29 = sub_100002CB4(v27, v28, &v45);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to revoke authorization: %{public}s", v25, 0xCu);
      sub_1000032BC(v26);
    }

    (*(v41 + 8))(v20, v42);
  }

  else
  {
    static Logger.agent.getter();
    (*(v12 + 16))(v15, a3, v11);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v39 = v31;
      v33 = v32;
      v38 = swift_slowAlloc();
      v45 = v38;
      *v33 = 136446210;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10002B778(&qword_10006B9D8, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v40 + 8))(v10, v7);
      (*(v12 + 8))(v15, v11);
      v37 = sub_100002CB4(v34, v36, &v45);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v39, "Successfully revoked authorization: %{public}s", v33, 0xCu);
      sub_1000032BC(v38);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (*(v41 + 8))(v22, v42);
  }

  dispatch_group_leave(v43);
}

uint64_t sub_100023FBC(uint64_t a1)
{
  sub_10000D398(a1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager, v4);
  if (sub_100004AE4())
  {
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    sub_100047AE4(0, 1);
  }

  else
  {
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    sub_100048C54();
  }

  v1 = [objc_allocWithZone(MOLocalSettingsStore) init];
  if (sub_100003A18())
  {
    sub_10002B9C4(1, v1);
  }

  else
  {
    v2 = [v1 deviceActivity];
    [v2 setSharingAppleIDs:0];

    v1 = v2;
  }

  return sub_10002B4F8(v4);
}

uint64_t sub_1000240F0(int a1, xpc_object_t xstring)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    v2 = String.init(cString:)();
    sub_100034F38(&v5, v2, v3);
  }

  return 1;
}

uint64_t sub_10002414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

id sub_1000241A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listener;
  static FamilyControlsService.name.getter();
  v10 = objc_allocWithZone(NSXPCListener);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithMachServiceName:v11];

  *&v1[v9] = v12;
  v13 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listenerPrivate;
  static FamilyControlsService.namePrivate.getter();
  v14 = objc_allocWithZone(NSXPCListener);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithMachServiceName:v15];

  *&v1[v13] = v16;
  v17 = type metadata accessor for AuthorizationAuthenticator();
  v18 = [objc_allocWithZone(v17) init];
  v49[3] = v17;
  v49[4] = &off_1000661B8;
  v49[0] = v18;
  v48[3] = type metadata accessor for Locations();
  v48[4] = &protocol witness table for Locations;
  sub_10001C8A8(v48);
  Locations.init(useExplicitLocations:)();
  v19 = [objc_allocWithZone(MOLocalSettingsStore) init];
  v46 = &type metadata for AuthorizationManagedSettings;
  v47 = &off_100066F80;
  v44 = 0;
  v45[0] = v19;
  *(&v43 + 1) = sub_100004080;
  sub_10001D958(v49, v40);
  sub_10001D958(v48, v41 + 8);
  sub_10001D958(v45, v42);
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = String._bridgeToObjectiveC()();
  LOBYTE(v16) = [v20 BOOLForKey:v21];

  if ((v16 & 1) == 0)
  {
    if (sub_100003A18())
    {
      v22 = sub_100007504(v45, v46);
      sub_10002B9C4(0, *v22);
    }

    v23 = String._bridgeToObjectiveC()();
    [v20 setBool:1 forKey:v23];

    v20 = v23;
  }

  v24 = &v1[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager];
  sub_1000032BC(v48);
  sub_1000032BC(v49);
  v25 = v43;
  *(v24 + 6) = v42[1];
  *(v24 + 7) = v25;
  *(v24 + 16) = v44;
  v26 = v41[1];
  *(v24 + 2) = v41[0];
  *(v24 + 3) = v26;
  v27 = v42[0];
  *(v24 + 4) = v41[2];
  *(v24 + 5) = v27;
  v28 = v40[1];
  *v24 = v40[0];
  *(v24 + 1) = v28;
  sub_1000032BC(v45);
  v29 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotDrawer;
  *&v1[v29] = [objc_allocWithZone(type metadata accessor for FamilyActivityDrawer()) init];
  *&v1[OBJC_IVAR____TtC19FamilyControlsAgent5Agent____lazy_storage___slotMachine] = 0;
  v30 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotMachineQueue;
  sub_100028338();
  static DispatchQoS.unspecified.getter();
  *&v40[0] = &_swiftEmptyArrayStorage;
  sub_10002B778(&qword_10006BC70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003720(&qword_10006BC78, qword_1000568C0);
  sub_10002B4A4(&qword_10006BC80, &qword_10006BC78, qword_1000568C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v36 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  *&v1[v30] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39.receiver = v1;
  v39.super_class = ObjectType;
  return objc_msgSendSuper2(&v39, "init");
}

id sub_10002470C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100024884(char a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, char *a6, void *a7)
{
  v65 = a6;
  v66 = a7;
  v67 = a4;
  v11 = type metadata accessor for AuthorizationStatus();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = type metadata accessor for AuthorizationRecord();
  v64 = *(v18 - 8);
  v19 = *(v64 + 64);
  __chkstk_darwin(v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v59 - v24;
  v62 = a3;
  v26 = FamilyControlsMember.rawValue.getter();
  if (v26 == FamilyControlsMember.rawValue.getter() && (a1 & 1) == 0)
  {
    sub_10001DD64(a2, v25, &qword_10006C0E8, &qword_100056F48);
    v27 = type metadata accessor for FamilyControlsError();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v25, 1, v27) == 1)
    {
      sub_10000D5C4(v25, &qword_10006C0E8, &qword_100056F48);
      v29 = 0;
    }

    else
    {
      sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
      v29 = swift_allocError();
      (*(v28 + 32))(v38, v25, v27);
    }

    v67(0, v29);
  }

  if (!v66)
  {
    v42 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v40 = swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for FamilyControlsError.invalidArgument(_:), v42);
    swift_willThrow();
    goto LABEL_13;
  }

  v60 = a5;
  v31 = *&v65[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120];
  v30 = *&v65[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 128];
  v61 = v66;
  v31(v69);
  v32 = sub_100007504(v69, v70);
  v33 = v32[2];
  if (!v33 || (v34 = v32[1], v35 = sub_100007504(v69, v70), (v36 = v35[4]) == 0))
  {
    v39 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v40 = swift_allocError();
    (*(*(v39 - 8) + 104))(v41, enum case for FamilyControlsError.invalidArgument(_:), v39);
    swift_willThrow();

    sub_1000032BC(v69);
LABEL_13:
    swift_errorRetain();
    v67(0, v40);
  }

  v37 = v35[3];

  sub_10003BCF4(v34, v33, v37, v36, v21);

  sub_1000032BC(v69);
  AuthorizationRecord.status.getter();
  v45 = enum case for AuthorizationStatus.approved(_:);
  v46 = v63;
  v59 = *(v63 + 104);
  v59(v15, enum case for AuthorizationStatus.approved(_:), v11);
  sub_10002B778(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v47 = *(v46 + 8);
  v47(v15, v11);
  v47(v17, v11);
  if (v69[0] == v68)
  {
    v59(v17, v45, v11);
    v48 = AuthorizationStatus.rawValue.getter();
    v47(v17, v11);
    v49 = [objc_allocWithZone(NSNumber) initWithInteger:v48];
    v67(v49, 0);

    return (*(v64 + 8))(v21, v18);
  }

  else
  {
    (*(v64 + 8))(v21, v18);
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    v50 = qword_10006C9C8;
    v51 = swift_allocObject();
    v52 = v65;
    v53 = v62;
    v51[2] = v65;
    v51[3] = v53;
    v54 = v67;
    v51[4] = v66;
    v51[5] = v50;
    v55 = v60;
    v51[6] = v54;
    v51[7] = v55;
    v56 = swift_allocObject();
    v56[2] = v50;
    v56[3] = sub_10002B46C;
    v56[4] = v51;
    swift_retain_n();
    v57 = v61;
    v58 = v52;

    sub_100044BE4(1, 0, sub_10002B8A4, v56);
  }
}

uint64_t sub_100025054(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(id, uint64_t), uint64_t a9)
{
  v69 = a8;
  v66 = a4;
  v67 = a7;
  v64 = a5;
  v13 = sub_100003720(&qword_10006BB60, qword_100056698);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v59 - v15);
  v17 = type metadata accessor for AuthorizationRecord();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  __chkstk_darwin(v17);
  v65 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Logger();
  v20 = *(v68 - 1);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v68);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v59 - v25;
  if ((a3 & 1) == 0)
  {
    v60 = a2;
    v61 = v13;
    v38 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
    swift_retain_n();
    swift_retain_n();
    static Logger.authorization.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Request authorization", v41, 2u);
    }

    (*(v20 + 8))(v26, v68);
    if (a6)
    {
      v68 = a1;
      v42 = (v66 + v38);
      v44 = *(v66 + v38 + 120);
      v43 = *(v66 + v38 + 128);
      v45 = a6;
      v44(v70);
      v46 = sub_100007504(v70, v71);
      v47 = v46[2];
      if (v47)
      {
        v48 = v46[1];
        v49 = sub_100007504(v70, v71);
        v50 = v49[4];
        if (v50)
        {
          v51 = v49[3];

          v52 = v65;
          sub_10003BCF4(v48, v47, v51, v50, v65);

          sub_1000032BC(v70);
          v58 = v67;

          sub_100007A48(v64, v52, v68, v60, 0, v42, v58, v69, a9);

          (*(v62 + 8))(v52, v63);
        }
      }

      v53 = type metadata accessor for FamilyControlsError();
      sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
      v54 = swift_allocError();
      (*(*(v53 - 8) + 104))(v55, enum case for FamilyControlsError.invalidArgument(_:), v53);
      swift_willThrow();

      sub_1000032BC(v70);
    }

    else
    {
      v56 = type metadata accessor for FamilyControlsError();
      sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
      v54 = swift_allocError();
      (*(*(v56 - 8) + 104))(v57, enum case for FamilyControlsError.invalidArgument(_:), v56);
      swift_willThrow();
    }

    *v16 = v54;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_1000257AC(v16, v67, v69);

    sub_10000D5C4(v16, &qword_10006BB60, qword_100056698);
  }

  static Logger.authorization.getter();
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  sub_1000289A0(a1, a2, 1);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v70[0] = v30;
    *v29 = 136446210;
    v72 = a1;
    swift_errorRetain();
    sub_100003720(&qword_10006BF60, &qword_100056CA0);
    v31 = String.init<A>(describing:)();
    v33 = sub_100002CB4(v31, v32, v70);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch or create authorization key: %{public}s", v29, 0xCu);
    sub_1000032BC(v30);
  }

  (*(v20 + 8))(v24, v68);
  v34 = type metadata accessor for FamilyControlsError();
  sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
  v35 = swift_allocError();
  (*(*(v34 - 8) + 104))(v36, enum case for FamilyControlsError.unavailable(_:), v34);
  v69(0, v35);
}

uint64_t sub_1000257AC(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  v23 = a2;
  v24 = a3;
  v4 = type metadata accessor for AuthorizationStatus();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_100003720(&qword_10006BB60, qword_100056698);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v23 - v14);
  sub_10001DD64(a1, &v23 - v14, &qword_10006BB60, qword_100056698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    swift_errorRetain();
    v24(0, v16);
  }

  else
  {
    v18 = v24;
    (*(v5 + 32))(v11, v15, v4);
    (*(v5 + 104))(v9, enum case for AuthorizationStatus.approved(_:), v4);
    sub_10002B778(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19 = *(v5 + 8);
    v19(v9, v4);
    if (v26 == v25)
    {
      sub_100047AE4(1, 1);
    }

    v20 = AuthorizationStatus.rawValue.getter();
    v21 = objc_allocWithZone(NSNumber);
    v22 = [v21 initWithInteger:{v20, v23}];
    v18(v22, 0);

    return (v19)(v11, v4);
  }
}

uint64_t sub_100025B60(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v18[1] = a4;
  v6 = type metadata accessor for AuthorizationStatus();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003720(&qword_10006BB60, qword_100056698);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v18 - v13);
  sub_10001DD64(a1, v18 - v13, &qword_10006BB60, qword_100056698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    swift_errorRetain();
    a3(0, v15);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    if ((sub_100004AE4() & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        swift_once();
      }

      sub_100048C54();
    }

    v17 = [objc_allocWithZone(NSNumber) initWithInteger:AuthorizationStatus.rawValue.getter()];
    a3(v17, 0);

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100025E94(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double a8)
{
  v16 = *&a2[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotMachineQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a8;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  *(v17 + 64) = a6;
  *(v17 + 72) = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10002B864;
  *(v18 + 24) = v17;
  v23[4] = sub_10002B878;
  v23[5] = v18;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1000219B4;
  v23[3] = &unk_100066CB0;
  v19 = _Block_copy(v23);

  v20 = a2;
  v21 = a5;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_100026044(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id, void))
{
  v13 = type metadata accessor for LabelSlotTag();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_slotType] = a1;
  *&v14[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width] = a3;
  *&v14[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem] = a2;
  v18.receiver = v14;
  v18.super_class = v13;

  v15 = objc_msgSendSuper2(&v18, "init");
  v16 = sub_1000219DC();
  v17 = [v16 remoteContentForLayerContextWithId:a5 style:a6 tag:{v15, v18.receiver, v18.super_class}];

  a7(v17, 0);
}

void sub_100026208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_100026290(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_10002630C(int a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v60 = a6;
  v52 = a2;
  v53 = a1;
  v9 = type metadata accessor for UUID();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v55 = v11;
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v50 - v14;
  v16 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v50 - v18;
  v20 = type metadata accessor for AuthorizationRecord();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a3;
  sub_10003C47C(a4, v19);
  v54 = a5;
  v25 = v53;
  v51 = a4;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000D5C4(v19, &unk_10006C0F0, &qword_100056690);
    v26 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v27 = swift_allocError();
    (*(*(v26 - 8) + 104))(v28, enum case for FamilyControlsError.invalidArgument(_:), v26);
    swift_willThrow();
    v29 = v51;
    swift_errorRetain();
    v30 = v60;
    a5(v27);

LABEL_3:
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    v31 = qword_10006C9C8;
    v32 = v56;
    v33 = v57;
    v34 = v58;
    (*(v57 + 16))(v56, v29, v58);
    v35 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v36 = (v55 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v59;
    *(v37 + 16) = v59;
    (*(v33 + 32))(v37 + v35, v32, v34);
    *(v37 + v36) = v31;
    v39 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v39 = v54;
    v39[1] = v30;
    v40 = swift_allocObject();
    v40[2] = v31;
    v40[3] = sub_1000288C8;
    v40[4] = v37;
    swift_retain_n();
    v41 = v38;

    sub_100044BE4(1, 0, sub_100028990, v40);
  }

  v43 = v20;
  (*(v21 + 32))(v24, v19, v20);
  AuthorizationRecord.type.getter();
  v44 = FamilyControlsMember.rawValue.getter();
  v45 = FamilyControlsMember.rawValue.getter();
  v29 = v51;
  if (v44 != v45 || (v25 & 1) != 0)
  {
    (*(v21 + 8))(v24, v20);
    v30 = v60;
    goto LABEL_3;
  }

  sub_10001DD64(v52, v15, &qword_10006C0E8, &qword_100056F48);
  v46 = type metadata accessor for FamilyControlsError();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v15, 1, v46) == 1)
  {
    sub_10000D5C4(v15, &qword_10006C0E8, &qword_100056F48);
    v48 = 0;
  }

  else
  {
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v48 = swift_allocError();
    (*(v47 + 32))(v49, v15, v46);
  }

  a5(v48);

  return (*(v21 + 8))(v24, v43);
}

uint64_t sub_10002692C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v35 = v19;
    static Logger.agent.getter();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_1000289A0(a1, a2, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = a1;
      v37 = v25;
      *v24 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v26 = String.init<A>(describing:)();
      v28 = sub_100002CB4(v26, v27, &v37);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch or create authorization key: %{public}s", v24, 0xCu);
      sub_1000032BC(v25);
    }

    (*(v17 + 8))(v21, v35);
    v29 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v30 = swift_allocError();
    (*(*(v29 - 8) + 104))(v31, enum case for FamilyControlsError.unavailable(_:), v29);
    a7(v30);
  }

  else
  {
    v33 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;

    sub_1000092B8(a5, a1, a2, (a4 + v33), a6, a7, a8);
  }
}

uint64_t sub_100026C48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v20 = a2;
  v21 = a3;
  v4 = type metadata accessor for AuthorizationStatus();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = sub_100003720(&qword_10006BB60, qword_100056698);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v20 - v14);
  sub_10001DD64(a1, &v20 - v14, &qword_10006BB60, qword_100056698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    swift_errorRetain();
    v21(v16);
  }

  else
  {
    v18 = v21;
    (*(v5 + 32))(v11, v15, v4);
    (*(v5 + 104))(v9, enum case for AuthorizationStatus.approved(_:), v4);
    sub_10002B778(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19 = *(v5 + 8);
    v19(v9, v4);
    if (v23 == v22)
    {
      sub_100047AE4(1, 1);
    }

    v18(0);
    return (v19)(v11, v4);
  }
}

void sub_1000270F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1000272DC(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((a2 & 1) == 0 && (sub_100004AE4() & 1) == 0)
  {
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    sub_100048C54();
  }

  return a4();
}

uint64_t sub_1000273A4(char *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, char *, char *, uint64_t, uint64_t))
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  v21 = a1;
  a8(v17, a6, &a1[v20], v21, a7, v19);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1000276A8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v34);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  v13 = qword_10006C9C8;
  v14 = dispatch_group_create();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  if (sub_100004AE4())
  {
    dispatch_group_enter(v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100028438;
    *(v17 + 24) = v16;

    v18 = v14;

    sub_100044FEC(sub_10002B87C, v17);
  }

  v19 = *(v13 + 184);
  dispatch thunk of FamilyCircle.currentMember.getter();
  if (v39)
  {
    sub_100007504(aBlock, v39);
    v20 = dispatch thunk of FamilyMemberable.isParent.getter();
    sub_1000032BC(aBlock);
    if (v20)
    {
      dispatch_group_enter(v14);
      v21 = swift_allocObject();
      *(v21 + 16) = v15;
      *(v21 + 24) = v14;

      v22 = v14;
      sub_100044BE4(1, 1, sub_1000283EC, v21);
    }
  }

  else
  {
    sub_10000D5C4(aBlock, &qword_10006C0C8, &qword_100056F40);
  }

  sub_100028338();
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  v24 = swift_allocObject();
  v25 = v31;
  v24[2] = v30;
  v24[3] = v25;
  v24[4] = v15;
  v40 = sub_1000283C4;
  v41 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  v39 = &unk_1000668F0;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = &_swiftEmptyArrayStorage;
  sub_10002B778(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  v27 = v33;
  v28 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v26);

  (*(v35 + 8))(v27, v28);
  (*(v32 + 8))(v7, v34);
}

void sub_100027C24(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a3);
}

void sub_100027C90(uint64_t a1, char a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  if (a2)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v8;
      v19 = v18;
      v28 = swift_slowAlloc();
      v30 = a1;
      v31 = v28;
      *v19 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v20 = String.init<A>(describing:)();
      v22 = a4;
      v23 = sub_100002CB4(v20, v21, &v31);

      *(v19 + 4) = v23;
      a4 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch all shared zones: %{public}s", v19, 0xCu);
      sub_1000032BC(v28);

      (*(v9 + 8))(v13, v29);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    swift_beginAccess();
    v27 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  else
  {
    static Logger.syncEngine.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Successfully fetched all shared zones", v26, 2u);
    }

    (*(v9 + 8))(v15, v8);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_100027F80(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_100028258()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028298()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000282D0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return v3(a1);
}

uint64_t sub_100028300()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100028338()
{
  result = qword_10006C0D0;
  if (!qword_10006C0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006C0D0);
  }

  return result;
}

uint64_t sub_100028384()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000283D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000283F8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028440()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10002851C(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10002630C(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_1000285D0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String.utf8CString.getter();
  v8 = xpc_dictionary_get_dictionary(a1, (v7 + 32));

  if (!v8)
  {
LABEL_4:
    static Logger.agent.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Skipping activity update until the app installation has completed.", v11, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }

  if (xpc_dictionary_get_BOOL(v8, "isPlaceholder"))
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  sub_1000445E4(0, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000287D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000288C8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_10002692C(a1, a2, a3 & 1, v11, v3 + v8, v10, v13, v14);
}

uint64_t sub_1000289A0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100007644(a1, a2);
  }
}

uint64_t sub_1000289AC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v74[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v74[-v13];
  v15 = __chkstk_darwin(v12);
  v17 = &v74[-v16];
  __chkstk_darwin(v15);
  v19 = &v74[-v18];
  v20 = [a1 serviceName];
  if (!v20)
  {
    static Logger.authorization.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Received connection with missing service name", v28, 2u);
    }

    (*(v4 + 8))(v8, v3);
    return 0;
  }

  v79 = v11;
  v76 = v14;
  v21 = v20;
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = String._bridgeToObjectiveC()();
  v25 = [a1 valueForEntitlement:v24];

  v77 = v17;
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  v80 = v4;
  if (*(&v83 + 1))
  {
    if (swift_dynamicCast())
    {
      v29 = v81;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10000D5C4(&v84, &qword_10006BE28, qword_100056F60);
  }

  v29 = 0;
LABEL_13:
  v30 = String._bridgeToObjectiveC()();
  v31 = [a1 valueForEntitlement:v30];

  if (v31)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v32 = v79;
  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    if (swift_dynamicCast())
    {
      if ((v29 | v81))
      {
        v79 = v1;
        v75 = v29 ^ 1 | v81;
        goto LABEL_23;
      }

LABEL_25:
      static Logger.authorization.getter();

      v45 = a1;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v84 = v49;
        *v48 = 136446466;
        v50 = sub_100002CB4(v78, v23, &v84);

        *(v48 + 4) = v50;
        *(v48 + 12) = 1024;
        *(v48 + 14) = [v45 processIdentifier];

        _os_log_impl(&_mh_execute_header, v46, v47, "Rejecting %{public}s connection from process %d due to missing entitlement", v48, 0x12u);
        sub_1000032BC(v49);
      }

      else
      {
      }

      (*(v80 + 8))(v32, v3);
      return 0;
    }
  }

  else
  {
    sub_10000D5C4(&v84, &qword_10006BE28, qword_100056F60);
  }

  if (!v29)
  {
    goto LABEL_25;
  }

  v79 = v1;
  v75 = 0;
LABEL_23:
  v33 = v80;
  static Logger.authorization.getter();

  v34 = a1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v3;
    v39 = v33;
    v40 = swift_slowAlloc();
    *&v84 = v40;
    *v37 = 136446466;
    v41 = v78;
    *(v37 + 4) = sub_100002CB4(v78, v23, &v84);
    *(v37 + 12) = 1024;
    *(v37 + 14) = [v34 processIdentifier];

    _os_log_impl(&_mh_execute_header, v35, v36, "Received %{public}s connection from process %d", v37, 0x12u);
    sub_1000032BC(v40);
    v42 = v39;
    v3 = v38;

    v43 = *(v42 + 8);
    v43(v19, v38);
  }

  else
  {

    v43 = *(v33 + 8);
    v43(v19, v3);
    v41 = v78;
  }

  v44 = v79;
  if (static FamilyControlsService.name.getter() == v41 && v51 == v23)
  {

LABEL_32:

    if (qword_10006B7D0 != -1)
    {
      swift_once();
    }

    v53 = static FamilyControlsService.remoteInterface;
    goto LABEL_35;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v52)
  {
    goto LABEL_32;
  }

  if (static FamilyControlsService.namePrivate.getter() == v41 && v55 == v23)
  {

LABEL_43:
    v53 = static FamilyControlsService.agentInterfacePrivate.getter();
    if (v75)
    {

LABEL_35:
      [v34 setExportedInterface:v53];
      [v34 setExportedObject:v44];
      [v34 activate];

      return 1;
    }

    v57 = v77;
    static Logger.authorization.getter();

    v58 = v34;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v41;
      v62 = swift_slowAlloc();
      v63 = v58;
      v64 = swift_slowAlloc();
      *&v84 = v64;
      *v62 = 136446466;
      v65 = sub_100002CB4(v61, v23, &v84);

      *(v62 + 4) = v65;
      *(v62 + 12) = 1024;
      *(v62 + 14) = [v63 processIdentifier];

      _os_log_impl(&_mh_execute_header, v59, v60, "Rejecting %{public}s connection. Process %d missing required entitlement for this interface.", v62, 0x12u);
      sub_1000032BC(v64);

      v66 = v77;
    }

    else
    {

      v66 = v57;
    }

    goto LABEL_51;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
    goto LABEL_43;
  }

  v67 = v76;
  static Logger.authorization.getter();

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = v68;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v84 = v72;
    *v71 = 136446210;
    v73 = sub_100002CB4(v41, v23, &v84);

    *(v71 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v70, v69, "Received connection with unknown service name: %{public}s", v71, 0xCu);
    sub_1000032BC(v72);

    v66 = v76;
  }

  else
  {

    v66 = v67;
  }

LABEL_51:
  v43(v66, v3);
  return 0;
}

uint64_t sub_100029398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorizationStatus();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AuthorizationRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentConnection];
  v15 = v14;
  if (v14)
  {
    v35 = v5;
    v36 = v10;
    v37 = v9;
    v16 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120);
    v17 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 128);
    v38 = v14;
    v16(v39);
    v18 = sub_100007504(v39, v40);
    v19 = v18[2];
    if (v19)
    {
      v20 = v18[1];
      v21 = sub_100007504(v39, v40);
      v22 = v21[4];
      if (v22)
      {
        v34 = a2;
        v23 = v21[3];

        sub_10003BCF4(v20, v19, v23, v22, v13);

        v29 = v38;

        sub_1000032BC(v39);
        AuthorizationRecord.status.getter();
        v30 = AuthorizationStatus.rawValue.getter();
        (*(v35 + 8))(v8, v4);
        v31 = [objc_allocWithZone(NSNumber) initWithInteger:v30];
        (*(v34 + 16))(v34, v31, 0);

        return (*(v36 + 8))(v13, v37);
      }
    }

    v24 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for FamilyControlsError.invalidArgument(_:), v24);
    swift_willThrow();

    sub_1000032BC(v39);
  }

  else
  {
    v26 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for FamilyControlsError.invalidArgument(_:), v26);
    swift_willThrow();
  }

  swift_errorRetain();
  v28 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v28);
}

void sub_1000297F8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentConnection];
  v5 = v4;
  if (v4)
  {
    v7 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120);
    v6 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 128);
    v8 = v4;
    v7(v25);
    v9 = sub_100007504(v25, v26);
    v10 = v9[2];
    if (v10)
    {
      v11 = v9[1];
      v12 = sub_100007504(v25, v26);
      v13 = v12[4];
      if (v13)
      {
        v14 = v12[3];

        v15._countAndFlagsBits = v11;
        v15._object = v10;
        String.append(_:)(v15);
        v16._countAndFlagsBits = 45;
        v16._object = 0xE100000000000000;
        String.append(_:)(v16);
        v17._countAndFlagsBits = v14;
        v17._object = v13;
        String.append(_:)(v17);
        v18._countAndFlagsBits = 45;
        v18._object = 0xE100000000000000;
        String.append(_:)(v18);

        sub_1000032BC(v25);
        v19 = String._bridgeToObjectiveC()();
        (*(a2 + 16))(a2, v19, 0);

        return;
      }
    }

    v20 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for FamilyControlsError.invalidArgument(_:), v20);
    swift_willThrow();

    sub_1000032BC(v25);
  }

  else
  {
    v22 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for FamilyControlsError.invalidArgument(_:), v22);
    swift_willThrow();
  }

  swift_errorRetain();
  v24 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v24);
}

uint64_t sub_100029B1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  switch(a2)
  {
    case 2:
      return dispatch thunk of TokenDecoder.decode(categoryIdentifierToken:)();
    case 1:
      return dispatch thunk of TokenDecoder.decode(webDomainToken:)();
    case 0:
      return dispatch thunk of TokenDecoder.decode(bundleIdentifierToken:)();
  }

  static Logger.activityItem.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unable to decode activity token", v14, 2u);
  }

  (*(v4 + 8))(v10, v3);
  return 0;
}

void sub_10002A0E0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v101 = a4;
  v103 = a1;
  v104 = a2;
  v7 = sub_100003720(&unk_10006C100, &unk_100056F50);
  v99 = *(v7 - 8);
  v8 = *(v99 + 64);
  __chkstk_darwin(v7);
  v98 = &v90 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v90 - v16;
  v105 = type metadata accessor for KeyRetriever();
  isa = v105[-1].isa;
  v18 = *(isa + 8);
  __chkstk_darwin(v105);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  type metadata accessor for FamilyActivityTokenSlotTag();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    v97 = v7;
    v24 = objc_opt_self();
    _Block_copy(a5);
    v100 = a3;
    v25 = [v24 currentConnection];
    if (!v25)
    {
LABEL_14:
      sub_100012BB4();
      swift_allocError();
      *v72 = 0;
      v73 = _convertErrorToNSError(_:)();
      (*(a5 + 2))(a5, 0, v73);

      v74 = v100;

      return;
    }

    v26 = v25;
    v92 = a5;
    v96 = v21;
    v91 = FamilyActivityTokenSlotTag.slotType.getter();
    v93 = v23;
    FamilyActivityTokenSlotTag.width.getter();
    v28 = v27;
    v94 = v20;
    KeyRetriever.init()();
    v29 = v26;
    static Logger.activityItem.getter();
    v30 = [v29 processIdentifier];
    v95 = v29;
    [v29 auditToken];
    v31 = aBlock;
    v33 = v107;
    v32 = v108;
    (*(v11 + 16))(v15, v17, v10);
    sub_1000210F8(v30, v31, *(&v31 + 1), v33, v32, v26, v15, v111);
    (*(v11 + 8))(v17, v10);
    if (v113)
    {
      v34 = v105;
      v108 = v105;
      v109 = &protocol witness table for KeyRetriever;
      v35 = sub_10001C8A8(&aBlock);
      v36 = isa;
      v37 = v94;
      (*(isa + 2))(v35, v94, v34);
      v38 = type metadata accessor for TokenDecoder();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();

      v41 = TokenDecoder.init(teamIdentifier:keyRetriever:)();
      FamilyActivityTokenSlotTag.tokenData.getter();
      v42 = v98;
      Token.init(data:)();
      v43 = FamilyActivityTokenSlotTag.tokenType.getter();
      v44 = sub_100029B1C(v41, v43);
      v46 = v45;
      v48 = v47;
      v114 = v112;
      sub_10000D5C4(&v114, &qword_10006C110, &qword_100056EA8);

      v21 = v96;
      if (v46)
      {

        (*(v99 + 8))(v42, v97);
        (*(v36 + 1))(v37, v105);
        v49 = swift_allocObject();
        v50 = v101;
        v51 = v91;
        v49[2] = v101;
        v49[3] = v51;
        v49[4] = v28;
        v52 = v104;
        v49[5] = v103;
        v49[6] = v52;
        v49[7] = sub_10002B2A4;
        v49[8] = v21;
        v53 = sub_10002B89C;
        v54 = v48;
        if (v48)
        {
          v55 = v44;
          v57 = v103;
          v56 = v104;
          if (v54 != 1)
          {
            goto LABEL_12;
          }

LABEL_25:

          v84 = v56;
          v85 = v50;
          sub_10003F2CC(v55, v46);
          v53();

          goto LABEL_28;
        }

        v81 = v104;
        goto LABEL_27;
      }

      sub_100012BB4();
      swift_allocError();
      *v79 = 2;
      v80 = _convertErrorToNSError(_:)();
      v92[2](v92, 0, v80);

      (*(v99 + 8))(v42, v97);
      (*(v36 + 1))(v37, v105);
    }

    else
    {
      aBlock = v112;
      sub_10000D5C4(&aBlock, &qword_10006C110, &qword_100056EA8);
      sub_100012BB4();
      swift_allocError();
      *v75 = 1;
      v76 = _convertErrorToNSError(_:)();
      v92[2](v92, 0, v76);

      (*(isa + 1))(v94, v105);
    }

LABEL_28:

    return;
  }

  type metadata accessor for FamilyActivityIdentifierSlotTag();
  if (swift_dynamicCastClass())
  {
    v58 = a5;
    _Block_copy(a5);
    v59 = a3;
    v51 = FamilyActivityIdentifierSlotTag.slotType.getter();
    FamilyActivityIdentifierSlotTag.width.getter();
    v28 = v60;
    v44 = FamilyActivityIdentifierSlotTag.identifier.getter();
    v46 = v61;
    v62 = FamilyActivityIdentifierSlotTag.identifierType.getter();
    if (v62)
    {
      v50 = v101;
      v55 = v44;
      if (v62 == 1)
      {

        v63 = swift_allocObject();
        v57 = v103;
        v56 = v104;
        v63[2] = v50;
        v63[3] = v51;
        v63[4] = v28;
        v63[5] = v57;
        v63[6] = v56;
        v63[7] = sub_10002B2A4;
        v63[8] = v21;
LABEL_12:

        v64 = v56;
        v65 = v21;
        v66 = v50;
        v67 = sub_10003FB5C(v55, v46);
        v105 = *&v66[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotMachineQueue];
        v68 = swift_allocObject();
        v68[2] = v51;
        v68[3] = v28;
        v68[4] = v67;
        v68[5] = v66;
        v68[6] = v57;
        v68[7] = v64;
        v68[8] = sub_10002B2A4;
        v68[9] = v65;
        v69 = swift_allocObject();
        *(v69 + 16) = sub_10002B2CC;
        *(v69 + 24) = v68;
        v109 = sub_10002B2D0;
        v110 = v69;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v107 = sub_1000219B4;
        v108 = &unk_100066BC0;
        a5 = _Block_copy(&aBlock);

        v70 = v64;
        v71 = v66;

        dispatch_sync(v105, a5);

        _Block_release(a5);
        LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

        if ((v67 & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_14;
      }

      v82 = v103;
      if (v62 != 2)
      {

        _Block_release(v58);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v83 = swift_allocObject();
      v83[2] = v50;
      v83[3] = v51;
      v83[4] = v28;
      v56 = v104;
      v83[5] = v82;
      v83[6] = v56;
      v83[7] = sub_10002B2A4;
      v83[8] = v21;
      v53 = sub_10002B2C4;
      goto LABEL_25;
    }

    v49 = swift_allocObject();
    v50 = v101;
    v49[2] = v101;
    v49[3] = v51;
    v49[4] = v28;
    v81 = v104;
    v49[5] = v103;
    v49[6] = v81;
    v49[7] = sub_10002B2A4;
    v49[8] = v21;
LABEL_27:
    v86 = type metadata accessor for ActivityItem();
    type metadata accessor for AppInfoCache();

    v87 = v81;
    v88 = v50;
    static AppInfoCache.shared.getter();
    v89 = swift_allocObject();
    v89[2] = sub_10002B89C;
    v89[3] = v49;
    v89[4] = v86;
    v89[5] = v44;
    v89[6] = v46;

    dispatch thunk of AppInfoCache.fetchAppInfo(bundleIdentifier:completionHandler:)();

    goto LABEL_28;
  }

  sub_100012BB4();
  swift_allocError();
  *v77 = 0;
  _Block_copy(a5);
  v78 = _convertErrorToNSError(_:)();
  (*(a5 + 2))(a5, 0, v78);
}

void sub_10002AD2C(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for UUID();
  v59 = *(v56 - 8);
  v3 = *(v59 + 8);
  __chkstk_darwin(v56);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AuthorizationStatus();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AuthorizationRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000423C();
  v60 = v14;
  v53 = *(v15 + 2);
  v54 = v10;
  if (v53)
  {
    v17 = 0;
    v49 = (v6 + 8);
    v50 = v11 + 16;
    v47 = v59 + 8;
    v48 = v11 + 8;
    v59 = &_swiftEmptyArrayStorage;
    v18 = v60;
    v51 = v15;
    v52 = a2;
    v45 = v9;
    v46 = v5;
    while (1)
    {
      if (v17 >= *(v15 + 2))
      {
        __break(1u);
      }

      v19 = &v15[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17];
      v20 = *(v11 + 16);
      v21 = v18;
      v22 = v11;
      v23 = v54;
      v20(v21, v19, v54);
      AuthorizationRecord.status.getter();
      v58 = AuthorizationStatus.rawValue.getter();
      (*v49)(v9, v5);
      AuthorizationRecord.type.getter();
      v57 = FamilyControlsMember.rawValue.getter();
      AuthorizationRecord.bundleIdentifier.getter();
      AuthorizationRecord.teamIdentifier.getter();
      v24 = v55;
      AuthorizationRecord.recordIdentifier.getter();
      v25 = v22;
      v26 = *(v22 + 8);
      v18 = v60;
      v26(v60, v23);
      v27 = objc_allocWithZone(FOAuthorizationRecord);
      v28 = String._bridgeToObjectiveC()();

      v29 = String._bridgeToObjectiveC()();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v31 = [v27 initWithBundleIdentifier:v28 teamIdentifier:v29 recordIdentifier:isa status:v58 type:v57];

      (*v47)(v24, v56);
      v32 = objc_opt_self();
      v61[0] = 0;
      v33 = [v32 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:v61];
      v34 = v61[0];
      if (!v33)
      {
        break;
      }

      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_10001CBAC(0, *(v59 + 2) + 1, 1, v59);
      }

      v5 = v46;
      v11 = v25;
      v39 = *(v59 + 2);
      v38 = *(v59 + 3);
      if (v39 >= v38 >> 1)
      {
        v59 = sub_10001CBAC((v38 > 1), v39 + 1, 1, v59);
      }

      ++v17;

      v40 = v59;
      *(v59 + 2) = v39 + 1;
      v41 = &v40[16 * v39];
      *(v41 + 4) = v35;
      *(v41 + 5) = v37;
      a2 = v52;
      v9 = v45;
      v15 = v51;
      if (v53 == v17)
      {
        goto LABEL_12;
      }
    }

    v43 = v34;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v52;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    (*(v44 + 16))(v44, 0, v16);
  }

  else
  {
    v59 = &_swiftEmptyArrayStorage;
LABEL_12:

    v42 = Array._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, v42, 0);
  }
}

uint64_t sub_10002B2D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10002B2F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002B348()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002B3A4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002B41C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002B4A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000075FC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B570()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10002B5C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_10002B5F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B630()
{
  v1 = type metadata accessor for AuthorizationRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10002B6CC(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for AuthorizationRecord() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100023B08(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_10002B778(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10002B7C0(void *a1)
{
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 24);
    sub_100021B60(a1, v2);
  }
}

uint64_t sub_10002B8AC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_10002B9C4(char a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[5] = &_swiftEmptySetSingleton;
  v9 = &off_10006A000;
  if ((a1 & 1) == 0)
  {
    v10 = [a2 deviceActivity];
    v11 = [v10 sharingAppleIDs];

    if (v11)
    {
      v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10002CA28(v12);
    }
  }

  v13 = type metadata accessor for FamilyCircle();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  FamilyCircle.init()();
  v16 = dispatch thunk of FamilyCircle.guardians.getter();

  v18 = *(v16 + 16);
  if (v18)
  {
    v36 = a2;
    v35 = v16;
    v19 = v16 + 32;
    v20 = (v5 + 8);
    *&v17 = 136446210;
    v37 = v17;
    v38 = v8;
    do
    {
      sub_10001D958(v19, v42);
      sub_100007504(v42, v42[3]);
      v21 = dispatch thunk of FamilyMemberable.appleID.getter();
      if (v22)
      {
        sub_100034F38(&v41, v21, v22);
      }

      else
      {
        static Logger.agent.getter();
        sub_10001D958(v42, &v41);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = v20;
          v27 = v4;
          v28 = swift_slowAlloc();
          v40 = v28;
          *v25 = v37;
          sub_10001D958(&v41, v39);
          sub_100003720(&qword_10006BF18, &unk_100056F90);
          v29 = String.init<A>(describing:)();
          v31 = v30;
          sub_1000032BC(&v41);
          v32 = sub_100002CB4(v29, v31, &v40);

          *(v25 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v23, v24, "Guardian does not have an Apple ID: %{public}s", v25, 0xCu);
          sub_1000032BC(v28);
          v4 = v27;
          v20 = v26;
          v8 = v38;
        }

        else
        {

          sub_1000032BC(&v41);
        }

        (*v20)(v8, v4);
      }

      sub_1000032BC(v42);
      v19 += 40;
      --v18;
    }

    while (v18);

    a2 = v36;
    v9 = &off_10006A000;
  }

  else
  {
  }

  v33 = [a2 v9[264]];
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v33 setSharingAppleIDs:isa];
}

uint64_t sub_10002BD9C(int a1, int a2, id a3)
{
  v3 = [a3 allowedClient];
  v4 = [v3 allowedClient];

  v5 = objc_allocWithZone(MOApplication);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithBundleIdentifier:v6];

  if (v4)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    v8 = v4;
    v9 = static NSObject.== infix(_:_:)();

    v7 = v8;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

void sub_10002BE8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v73 = a4;
  v74 = a5;
  v9 = type metadata accessor for Logger();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v71 - v14;
  v16 = FamilyControlsMember.rawValue.getter();
  if (v16 == FamilyControlsMember.rawValue.getter())
  {
    v17 = [a6 allowedClient];
    v18 = [v17 allowedClient];

    if (v18)
    {

      static Logger.agent.getter();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v75[0] = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_100002CB4(a2, a3, v75);
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to enable family controls for %{public}s because a child authorization already exists.", v21, 0xCu);
        sub_1000032BC(v22);
      }

      (*(v72 + 8))(v13, v9);
      return;
    }
  }

  v23 = [a6 deviceActivity];
  v24 = [v23 allowedClients];

  if (v24)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v25 = &_swiftEmptySetSingleton;
  }

  v75[4] = v25;
  v26 = [a6 managedSettings];
  v27 = [v26 allowedClients];

  if (v27)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v28 = &_swiftEmptySetSingleton;
  }

  v75[3] = v28;
  v29 = objc_allocWithZone(MOApplication);
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 initWithBundleIdentifier:v30];

  v32 = sub_10002B8AC(v31, v25);

  if ((v32 & 1) == 0)
  {
    sub_100035510(v75, v31);

    v33 = [a6 deviceActivity];
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v33 setAllowedClients:isa];

    v35 = FamilyControlsMember.rawValue.getter();
    if (v35 == FamilyControlsMember.rawValue.getter())
    {
      sub_10002B9C4(0, a6);
    }
  }

  v36 = sub_10002B8AC(v31, v28);

  if (v36)
  {
    if (v32)
    {

      static Logger.agent.getter();
      v37 = v31;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75[0] = v74;
        *v40 = 138543618;
        *(v40 + 4) = v37;
        *v41 = v37;
        *(v40 + 12) = 2082;
        v42 = v37;
        v43 = [v42 description];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = sub_100002CB4(v44, v46, v75);

        *(v40 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v38, v39, "Ignoring attempt to enable family controls for %{public}@ because %{public}s is already enabled", v40, 0x16u);
        sub_10002DC5C(v41);

        sub_1000032BC(v74);
      }

      else
      {
      }

      (*(v72 + 8))(v15, v9);
      return;
    }
  }

  else
  {
    v48 = v31;
    sub_100035510(v75, v48);

    v49 = [a6 managedSettings];
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v50 = Set._bridgeToObjectiveC()().super.isa;
    [v49 setAllowedClients:v50];

    v51 = FamilyControlsMember.rawValue.getter();
    if (v51 == FamilyControlsMember.rawValue.getter())
    {
      v52 = [a6 allowedClient];
      [v52 setAllowedClient:v48];

      v53 = [a6 account];
      sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
      v54 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
      [v53 setDenyiCloudLogout:v54];

      v55 = [a6 allowedClient];
      v56 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
      [v55 setDenyMDMEnrollment:v56];

      v57 = [a6 application];
      sub_100003720(&qword_10006C018, &qword_100056D40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100056C40;
      *(inited + 32) = v48;
      v59 = v48;
      sub_10002DD18(inited);
      swift_setDeallocating();
      v60 = *(inited + 16);
      swift_arrayDestroy();
      v61 = Set._bridgeToObjectiveC()().super.isa;

      [v57 setUnremovableApplications:v61];
    }
  }

  v62 = [a6 managedSettings];
  v64 = v73;
  v63 = v74;
  v65 = Data._bridgeToObjectiveC()().super.isa;
  [v62 setTokenEncodingKey:v65];

  v66 = [a6 managedSettings];
  v67 = [v66 tokenDecodingKeys];

  if (v67)
  {
    sub_10002DCC4();
    v68 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v68 = &_swiftEmptySetSingleton;
  }

  v75[2] = v68;
  sub_10000DA30(v64, v63);
  sub_100035088(v75, v64, v63);
  sub_100007644(v75[0], v75[1]);
  v69 = [a6 managedSettings];
  sub_10002DCC4();
  v70 = Set._bridgeToObjectiveC()().super.isa;

  [v69 setTokenDecodingKeys:v70];
}

void sub_10002C81C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(MOApplication);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = [a4 deviceActivity];
  v9 = [v8 allowedClients];

  if (v9)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v17[1] = v10;
  v16 = v7;
  sub_100035510(v17, v16);

  v11 = [a4 deviceActivity];
  sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
  sub_10002D2A0();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v11 setAllowedClients:isa];

  v13 = FamilyControlsMember.rawValue.getter();
  if (v13 == FamilyControlsMember.rawValue.getter())
  {
    sub_10002B9C4(0, a4);
    v14 = v16;
  }

  else
  {
    v15 = [a4 deviceActivity];
    [v15 setSharingAppleIDs:0];

    v14 = v15;
  }
}

uint64_t sub_10002CA28(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100034F38(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10002CB2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Logger();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a3 allowedClient];
  v52 = [v7 allowedClient];

  v8 = objc_allocWithZone(MOApplication);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithBundleIdentifier:v9];

  v11 = [a3 deviceActivity];
  v12 = [v11 allowedClients];

  if (v12)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  v14 = [a3 managedSettings];
  v15 = [v14 allowedClients];

  if (v15)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  v17 = v10;
  v18 = sub_10002D978(v13, v17);

  v19 = [a3 deviceActivity];
  sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
  sub_10002D2A0();
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v19 setAllowedClients:isa];

  v21 = v17;
  v22 = sub_10002D978(v16, v21);

  v23 = [a3 managedSettings];
  v24 = Set._bridgeToObjectiveC()().super.isa;

  [v23 setAllowedClients:v24];

  if ((v18 & 0xC000000000000001) != 0)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *(v18 + 16);
  }

  if (!v25)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_13;
      }

LABEL_21:
      v47 = [a3 managedSettings];
      [v47 setTokenEncodingKey:0];

      v48 = [a3 managedSettings];
      [v48 setTokenDecodingKeys:0];

      v26 = v52;
      if (v52)
      {
        goto LABEL_14;
      }

LABEL_22:

      goto LABEL_23;
    }

    if (!*(v22 + 16))
    {
      goto LABEL_21;
    }
  }

LABEL_13:
  v26 = v52;
  if (!v52)
  {
    goto LABEL_22;
  }

LABEL_14:
  v27 = v21;
  v28 = v26;
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
    v34 = v51;
    static Logger.agent.getter();
    v35 = v27;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v38 = 138543618;
      *(v38 + 4) = v35;
      *v39 = v35;
      *(v38 + 12) = 2082;
      v40 = v35;
      v41 = [v40 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_100002CB4(v42, v44, &v53);

      *(v38 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "Ignoring attempt to disable family controls for %{public}@ because %{public}s is enabled", v38, 0x16u);
      sub_10002DC5C(v39);

      sub_1000032BC(v52);

      return (*(v49 + 8))(v51, v50);
    }

    else
    {

      return (*(v49 + 8))(v34, v50);
    }
  }

  v30 = [a3 allowedClient];
  [v30 setAllowedClient:0];

  v31 = [a3 account];
  [v31 setDenyiCloudLogout:0];

  v32 = [a3 allowedClient];
  [v32 setDenyMDMEnrollment:0];

  v33 = [a3 application];
  [v33 setUnremovableApplications:0];

LABEL_23:
}

uint64_t sub_10002D1E4(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {

      v12 = 0;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v12 = v11 ^ 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

unint64_t sub_10002D2A0()
{
  result = qword_10006B9C0;
  if (!qword_10006B9C0)
  {
    sub_1000112B4(255, &qword_10006B9B8, MOApplication_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B9C0);
  }

  return result;
}

unint64_t *sub_10002D308(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_10002D3A0(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_10002D3A0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a2;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = &off_10006A000;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v34 = (v8 - 1) & v8;
LABEL_13:
    v30 = v11 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v30);
    v15 = [v14 v10[268]];
    if (v15)
    {
      v16 = v15;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v32 = 0;
      v18 = 0;
    }

    v19 = v10;
    v20 = [a4 v10[268]];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v10 = v19;
      if (v18)
      {
        if (!v24)
        {
          goto LABEL_26;
        }

        if (v32 == v22 && v18 == v24)
        {

          v8 = v34;
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = v34;
          if ((v25 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v24)
        {
          goto LABEL_26;
        }

LABEL_5:

        v8 = v34;
      }
    }

    else
    {
      if (!v18)
      {
        goto LABEL_5;
      }

LABEL_26:

      v8 = v34;
LABEL_27:
      *(a1 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_30:

        sub_1000077C0(a1, v27, v29, a3);
        return;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_30;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10002D5FC(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v45 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v38 = v7;
    v39 = v3;
    v37 = &v37;
    __chkstk_darwin(v9);
    v40 = &v37 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v8);
    v41 = 0;
    v7 = 0;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v8 = v12 & *(v4 + 56);
    v3 = (v11 + 63) >> 6;
    v13 = &off_10006A000;
    v43 = v4;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v17 = v14 | (v7 << 6);
      v18 = *(v4 + 48);
      v42 = v17;
      v19 = *(v18 + 8 * v17);
      v20 = [v19 v13[268]];
      if (v20)
      {
        v21 = v20;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v44 = 0;
        v23 = 0;
      }

      v24 = [v45 v13[268]];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v23)
        {
          v4 = v43;
          if (!v28)
          {
            goto LABEL_27;
          }

          if (v44 == v26 && v23 == v28)
          {

            v13 = &off_10006A000;
          }

          else
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v13 = &off_10006A000;
            if ((v29 & 1) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v4 = v43;
          if (v28)
          {
            goto LABEL_27;
          }

LABEL_6:

          v13 = &off_10006A000;
        }
      }

      else
      {
        v4 = v43;
        if (!v23)
        {
          goto LABEL_6;
        }

LABEL_27:

        v13 = &off_10006A000;
LABEL_28:
        *&v40[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_31:
          v31 = sub_1000077C0(v40, v38, v41, v4);

          return v31;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v3)
      {
        goto LABEL_31;
      }

      v16 = *(v10 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v8 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();
  v34 = v45;
  v35 = v7;
  v36 = v34;
  v31 = sub_10002D308(v33, v35, v4, v34);

  return v31;
}

Swift::Int sub_10002D978(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10002D5FC(a1, a2);
  }

  v26 = v2;
  v3 = &_swiftEmptySetSingleton;
  v27 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    v3 = &_swiftEmptySetSingleton;
    do
    {
      swift_dynamicCast();
      v4 = [v28 bundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v9 = [v27 bundleIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        if (v8)
        {
          if (!v13)
          {
            goto LABEL_20;
          }

          if (v6 == v11 && v8 == v13)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else if (v13)
        {
LABEL_20:

LABEL_21:
          v15 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v15)
          {
            sub_100035B98(v15 + 1);
          }

          v3 = &_swiftEmptySetSingleton;
          result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
          v17 = &_swiftEmptySetSingleton + 56;
          v18 = -1 << *(&_swiftEmptySetSingleton + 32);
          v19 = result & ~v18;
          v20 = v19 >> 6;
          if (((-1 << v19) & ~*(&_swiftEmptySetSingleton + (v19 >> 6) + 7)) != 0)
          {
            v21 = __clz(__rbit64((-1 << v19) & ~*(&_swiftEmptySetSingleton + (v19 >> 6) + 7))) | v19 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = 0;
            v23 = (63 - v18) >> 6;
            do
            {
              if (++v20 == v23 && (v22 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v24 = v20 == v23;
              if (v20 == v23)
              {
                v20 = 0;
              }

              v22 |= v24;
              v25 = *&v17[8 * v20];
            }

            while (v25 == -1);
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          }

          *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v21) = v28;
          ++*(&_swiftEmptySetSingleton + 2);
          continue;
        }
      }

      else if (v8)
      {
        goto LABEL_20;
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return v3;
}

uint64_t sub_10002DC5C(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006BC50, &qword_1000568A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002DCC4()
{
  result = qword_10006C1E0;
  if (!qword_10006C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C1E0);
  }

  return result;
}

void sub_10002DD18(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100003720(&qword_10006B9C8, &qword_100056688);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10002E018(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v7 = *(*(v40 - 8) + 64);
  v8 = __chkstk_darwin(v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = &_swiftEmptyArrayStorage;
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100034AC0(0, v24[2] + 1, 1);
          v24 = v41;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_100034AC0(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        v24[2] = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v38;
  }

  return result;
}

NSString sub_10002E2E8()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C990 = result;
  return result;
}

NSString sub_10002E320()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C998 = result;
  return result;
}

NSString sub_10002E358()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C9A0 = result;
  return result;
}

uint64_t _s10DataSourceCMa()
{
  result = qword_10006C228;
  if (!qword_10006C228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E490()
{
  result = type metadata accessor for Locations();
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

uint64_t sub_10002E534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10002E654, 0, 0);
}

uint64_t sub_10002E654()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v14 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];
  CKSyncEngine.SendChangesContext.options.getter();
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v5 + 8))(v3, v4);
  CKSyncEngine.state.getter();
  v10 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  v11 = swift_task_alloc();
  *(v11 + 16) = v1;
  sub_10002E018(sub_100034628, v11, v10);

  *(swift_task_alloc() + 16) = v7;
  CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:synchronousRecordProvider:)();

  (*(v2 + 8))(v1, v14);

  v12 = v0[1];

  return v12();
}

Class sub_10002E7D0(void *a1)
{
  v2 = type metadata accessor for UsageItemRecord();
  v69 = *(v2 - 8);
  v3 = *(v69 + 64);
  __chkstk_darwin(v2);
  v67 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v65 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  static Logger.syncEngine.getter();
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v68 = v8;
  v72 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v71 = v9;
    v65 = v23;
    v74[0] = v23;
    *v22 = 136446210;
    v24 = v18;
    v66 = v2;
    v25 = v10;
    v26 = v24;
    v27 = [v24 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v14;
    v29 = v28;
    v31 = v30;

    v10 = v25;
    v2 = v66;

    v32 = sub_100002CB4(v29, v31, v74);

    *(v22 + 4) = v32;
    v14 = v70;
    _os_log_impl(&_mh_execute_header, v19, v20, "Saving record: %{public}s", v22, 0xCu);
    sub_1000032BC(v65);
    v9 = v71;
  }

  v33 = *(v10 + 8);
  v33(v17, v9);
  if (qword_10006B7A8 != -1)
  {
    swift_once();
  }

  v34 = qword_10006C980;
  sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
  v35 = v34;
  v36 = v72;
  v37 = static NSObject.== infix(_:_:)();

  if ((v37 & 1) == 0)
  {
    if (*(v73 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity) == 1)
    {
      type metadata accessor for UsageStore();
      static UsageStore.shared.getter();
      v41 = v68;
      UsageStore.subscript.getter(v36, v68);

      v42 = v69;
      if (!(*(v69 + 48))(v41, 1, v2))
      {
        v60 = v67;
        (*(v42 + 16))(v67, v41, v2);
        sub_10000D5C4(v41, &qword_10006BE78, &qword_100056C00);
        v39 = sub_100013370();
        (*(v42 + 8))(v60, v2);
        return v39;
      }

      sub_10000D5C4(v41, &qword_10006BE78, &qword_100056C00);
    }

    else
    {
      static Logger.syncEngine.getter();
      v43 = v36;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v74[0] = v47;
        *v46 = 136446210;
        v48 = v43;
        v70 = v14;
        v49 = v48;
        v50 = [v48 description];
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v9;
        v53 = v52;

        v54 = sub_100002CB4(v51, v53, v74);

        *(v46 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v44, v45, "Not saving record: %{public}s because we haven't started collecting activity", v46, 0xCu);
        sub_1000032BC(v47);

        v55 = v70;
        v56 = v71;
      }

      else
      {

        v55 = v14;
        v56 = v9;
      }

      v33(v55, v56);
    }

    return 0;
  }

  v38 = v73;
  v39 = *(v73 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_cachedAuthorizationKeyRecord);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v57 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_locations;
    v58 = type metadata accessor for Locations();
    v74[3] = v58;
    v74[4] = &protocol witness table for Locations;
    v59 = sub_10001C8A8(v74);
    (*(*(v58 - 8) + 16))(v59, v38 + v57, v58);
    v61 = sub_1000426F0(v74);
    v63 = v62;
    sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
    v39 = sub_10001471C(v61, v63);
    sub_100007644(v61, v63);
  }

  return v39;
}

uint64_t sub_10002EF9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  v3[5] = RecordZoneChanges;
  v5 = *(RecordZoneChanges - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for CKSyncEngine.Event.WillFetchRecordZoneChanges();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = type metadata accessor for CKSyncEngine.State.Serialization();
  v3[20] = v19;
  v20 = *(v19 - 8);
  v3[21] = v20;
  v21 = *(v20 + 64) + 15;
  v3[22] = swift_task_alloc();
  v22 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v3[23] = v22;
  v23 = *(v22 - 8);
  v3[24] = v23;
  v24 = *(v23 + 64) + 15;
  v3[25] = swift_task_alloc();
  v25 = type metadata accessor for UsageItemRecord();
  v3[26] = v25;
  v26 = *(v25 - 8);
  v3[27] = v26;
  v27 = *(v26 + 64) + 15;
  v3[28] = swift_task_alloc();
  v28 = *(*(sub_100003720(&qword_10006BE60, &qword_100056BE8) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v29 = sub_100003720(&qword_10006BE68, &qword_100056BF0);
  v3[30] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v31 = *(*(sub_100003720(&qword_10006BE78, &qword_100056C00) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v32 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v3[36] = v32;
  v33 = *(v32 - 8);
  v3[37] = v33;
  v34 = *(v33 + 64) + 15;
  v3[38] = swift_task_alloc();
  v35 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v3[39] = v35;
  v36 = *(v35 - 8);
  v3[40] = v36;
  v37 = *(v36 + 64) + 15;
  v3[41] = swift_task_alloc();
  v38 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v3[42] = v38;
  v39 = *(v38 - 8);
  v3[43] = v39;
  v40 = *(v39 + 64) + 15;
  v3[44] = swift_task_alloc();
  v41 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v3[45] = v41;
  v42 = *(v41 - 8);
  v3[46] = v42;
  v43 = *(v42 + 64) + 15;
  v3[47] = swift_task_alloc();
  v44 = type metadata accessor for Logger();
  v3[48] = v44;
  v45 = *(v44 - 8);
  v3[49] = v45;
  v46 = *(v45 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v47 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v3[56] = v47;
  v48 = *(v47 - 8);
  v3[57] = v48;
  v49 = *(v48 + 64) + 15;
  v3[58] = swift_task_alloc();
  v50 = type metadata accessor for CKSyncEngine.Event();
  v3[59] = v50;
  v51 = *(v50 - 8);
  v3[60] = v51;
  v52 = *(v51 + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_10002F680, 0, 0);
}

void sub_10002F680()
{
  v346 = v0;
  v1 = v0;
  v2 = v0[62];
  v3 = v0[60];
  v4 = v1[59];
  v5 = *(v3 + 16);
  (v5)(v2, v1[2], v4);
  v6 = (*(v3 + 88))(v2, v4);
  v7 = v1[59];
  if (v6 != enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v325 = v1;
    if (v6 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
    {
      v17 = v1[62];
      v19 = v1[15];
      v18 = v1[16];
      v20 = v1[14];
      (*(v1[60] + 96))(v17, v7);
      (*(v19 + 32))(v18, v17, v20);
      v21 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v1[49];
        v24 = v1[12];
        v25 = v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v26 = objc_opt_self();
        v28 = *(v24 + 16);
        v24 += 16;
        v27 = v28;
        v312 = (v24 - 8);
        v318 = *(v24 + 56);
        v306 = (v23 + 8);
        do
        {
          v29 = v1[51];
          v30 = v1[13];
          v31 = v1[11];
          v27(v30, v25, v31);
          v32 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
          (*v312)(v30, v31);
          static Logger.syncEngine.getter();
          v33 = v32;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();

          v36 = os_log_type_enabled(v34, v35);
          v37 = v1[51];
          v327 = v1[48];
          v336 = v33;
          if (v36)
          {
            v297 = v1[51];
            v38 = swift_slowAlloc();
            v295 = swift_slowAlloc();
            v345[0] = v295;
            *v38 = 136446210;
            v39 = v33;
            v40 = v27;
            v41 = v26;
            v42 = [v39 description];
            v300 = v22;
            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            v26 = v41;
            v27 = v40;

            v46 = sub_100002CB4(v43, v45, v345);
            v1 = v325;

            *(v38 + 4) = v46;
            v22 = v300;
            _os_log_impl(&_mh_execute_header, v34, v35, "Zone was deleted from server: %{public}s", v38, 0xCu);
            sub_1000032BC(v295);

            (*v306)(v297, v327);
          }

          else
          {

            (*v306)(v37, v327);
          }

          v47 = [v26 defaultCenter];
          if (qword_10006B7B8 != -1)
          {
            swift_once();
          }

          [v47 postNotificationName:qword_10006C990 object:v336];

          v25 += v318;
          --v22;
        }

        while (v22);
      }

      v117 = v1[15];
      v116 = v1[16];
      v118 = v1[14];
      goto LABEL_44;
    }

    if (v6 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
    {
      v48 = v1[62];
      v50 = v1[43];
      v49 = v1[44];
      v51 = v1[42];
      (*(v1[60] + 96))(v48, v7);
      (*(v50 + 32))(v49, v48, v51);
      v52 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
      v53 = *(v52 + 16);
      if (v53)
      {
        v54 = v1[40];
        v56 = *(v54 + 16);
        v55 = v54 + 16;
        v57 = v52 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
        v328 = *(v55 + 56);
        v337 = v56;
        do
        {
          v58 = v1[41];
          v59 = v1[39];
          v61 = v1[3];
          v60 = v1[4];
          v337(v58, v57, v59);
          v62 = CKDatabase.RecordZoneChange.Modification.record.getter();
          (*(v55 - 8))(v58, v59);
          sub_1000315AC(v62);

          v57 += v328;
          --v53;
        }

        while (v53);
      }

      v63 = v1[44];
      v64 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
      v329 = *(v64 + 16);
      if (!v329)
      {
LABEL_43:

        v117 = v1[43];
        v116 = v1[44];
        v118 = v1[42];
LABEL_44:
        (*(v117 + 8))(v116, v118);
        goto LABEL_45;
      }

      v65 = v1[49];
      v66 = v1[37];
      v278 = v1[30];
      v279 = v1[31];
      v277 = v1[29];
      v67 = v1[27];
      v68 = v64 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      type metadata accessor for UsageStore();
      v69 = v68;
      v70 = *(v66 + 16);
      v66 += 16;
      v293 = v70;
      v290 = (v66 - 8);
      v286 = (v65 + 8);
      v288 = *(v66 + 56);
      v301 = (v67 + 48);
      v307 = (v67 + 56);
      v275 = (v67 + 16);
      v276 = (v67 + 32);
      v282 = v1 + 34;
      v284 = (v67 + 8);
      v274 = v1 + 28;
      while (1)
      {
        v72 = v1[52];
        v73 = v1[38];
        v74 = v1[36];
        v319 = v69;
        v293(v73);
        v75 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
        CKDatabase.RecordZoneChange.Deletion.recordType.getter();
        (*v290)(v73, v74);
        static Logger.syncEngine.getter();
        v76 = v75;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();

        v79 = os_log_type_enabled(v77, v78);
        v80 = v1[52];
        v81 = v1[48];
        if (v79)
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v345[0] = v83;
          *v82 = 136446210;
          v84 = v76;
          v338 = v81;
          v85 = [v84 description];
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;

          v89 = sub_100002CB4(v86, v88, v345);

          *(v82 + 4) = v89;
          _os_log_impl(&_mh_execute_header, v77, v78, "Record was deleted from server: %{public}s", v82, 0xCu);
          sub_1000032BC(v83);

          v1 = v325;

          (*v286)(v80, v338);
        }

        else
        {

          (*v286)(v80, v81);
        }

        v91 = v1[34];
        v90 = v1[35];
        v92 = v1[26];
        static UsageStore.shared.getter();
        v93 = *v307;
        (*v307)(v90, 1, 1, v92);
        sub_10001DD64(v90, v91, &qword_10006BE78, &qword_100056C00);
        v94 = *v301;
        v95 = (*v301)(v91, 1, v92);
        v96 = v76;
        if (v95 != 1)
        {
          break;
        }

        v97 = v1[29];
        sub_10000D5C4(v1[34], &qword_10006BE78, &qword_100056C00);
        *(swift_task_alloc() + 16) = v96;
        UsageStore.first(where:)();

        v98 = sub_100003720(&qword_10006BE70, &qword_100056BF8);
        if ((*(*(v98 - 8) + 48))(v97, 1, v98) == 1)
        {
          sub_10000D5C4(v1[29], &qword_10006BE60, &qword_100056BE8);
          v99 = 1;
        }

        else
        {
          v280 = v1[33];
          v101 = v1[31];
          v102 = v1[29];
          v103 = v1[26];
          v104 = *(v277 + 8);
          v105 = *(v98 + 48);
          v106 = *(v278 + 48);
          *v101 = *v102;
          *(v279 + 8) = v104;
          v107 = *v276;
          (*v276)(&v101[v106], &v102[v105], v103);
          v108 = *(v279 + 8);

          v107(v280, &v101[*(v278 + 48)], v103);
          v99 = 0;
        }

        v109 = v1[33];
        v110 = v1[26];
        v93(v109, v99, 1, v110);
        if (!v94(v109, 1, v110))
        {
          v111 = v1[33];
          (*v275)(v1[28], v111, v1[26]);
          sub_10000D5C4(v111, &qword_10006BE78, &qword_100056C00);
          v100 = v274;
          goto LABEL_32;
        }

        v71 = v1[35];
        sub_10000D5C4(v1[33], &qword_10006BE78, &qword_100056C00);
        sub_10000D5C4(v71, &qword_10006BE78, &qword_100056C00);

LABEL_21:
        v69 = v319 + v288;
        v329 = (v329 - 1);
        if (!v329)
        {
          goto LABEL_43;
        }
      }

      v100 = v282;
LABEL_32:
      v112 = *v100;
      v113 = v1[35];
      v114 = v1[32];
      v115 = v1[26];
      UsageItemRecord.identifier.getter();
      (*v284)(v112, v115);
      sub_10001DD64(v113, v114, &qword_10006BE78, &qword_100056C00);
      UsageStore.subscript.setter();

      sub_10000D5C4(v113, &qword_10006BE78, &qword_100056C00);

      goto LABEL_21;
    }

    if (v6 != enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
    {
      if (v6 != enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
      {
        if (v6 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
        {
          v172 = v1[62];
          v173 = v1[9];
          v174 = v1[10];
          v175 = v1[8];
          (*(v1[60] + 96))(v172, v7);
          (*(v173 + 32))(v174, v172, v175);
          RecordZone = CKSyncEngine.Event.WillFetchRecordZoneChanges.zoneID.getter();
          sub_100037D04(RecordZone);

          (*(v173 + 8))(v174, v175);
        }

        else if (v6 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
        {
          v177 = v1[62];
          v179 = v1[6];
          v178 = v1[7];
          v181 = v1[4];
          v180 = v1[5];
          (*(v1[60] + 96))(v177, v7);
          (*(v179 + 32))(v178, v177, v180);
          v182 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
          sub_10003319C(v182);

          (*(v179 + 8))(v178, v180);
        }

        else
        {
          v183 = v1[61];
          v184 = v1[50];
          v185 = v1[2];
          v186 = v1[59];
          static Logger.syncEngine.getter();
          (v5)(v183, v185, v186);
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.debug.getter();
          v189 = os_log_type_enabled(v187, v188);
          v191 = v1[60];
          v190 = v1[61];
          v192 = v1[59];
          v193 = v1[49];
          v194 = v1[50];
          v195 = v1[48];
          if (v189)
          {
            v341 = v1[48];
            v196 = swift_slowAlloc();
            v332 = swift_slowAlloc();
            v345[0] = v332;
            *v196 = 136446210;
            sub_1000380BC(&qword_10006C238, &type metadata accessor for CKSyncEngine.Event);
            v322 = v194;
            v197 = dispatch thunk of CustomStringConvertible.description.getter();
            v199 = v198;
            v315 = v188;
            v200 = *(v191 + 8);
            v200(v190, v192);
            v201 = sub_100002CB4(v197, v199, v345);
            v1 = v325;

            *(v196 + 4) = v201;
            _os_log_impl(&_mh_execute_header, v187, v315, "Received event: %{public}s", v196, 0xCu);
            sub_1000032BC(v332);

            (*(v193 + 8))(v322, v341);
          }

          else
          {

            v200 = *(v191 + 8);
            v200(v190, v192);
            (*(v193 + 8))(v194, v195);
          }

          v200(v1[62], v1[59]);
        }

        goto LABEL_45;
      }

      v141 = v1[62];
      v143 = v1[57];
      v142 = v1[58];
      v144 = v1[56];
      (*(v1[60] + 96))(v141, v7);
      (*(v143 + 32))(v142, v141, v144);
      v145 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
      v5 = v145;
      if (!(v145 >> 62))
      {
        v146 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v146)
        {
          goto LABEL_73;
        }

LABEL_51:
        v147 = v146 - 1;
        if (v146 < 1)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v148 = 0;
        v149 = v5 & 0xC000000000000001;
        v150 = (v1[49] + 8);
        v303 = v5;
        v309 = v146 - 1;
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_54;
        }

LABEL_53:
        for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v5 + 8 * v148 + 32))
        {
          v152 = i;
          v153 = v1[55];
          static Logger.syncEngine.getter();
          v154 = v1;
          v155 = v152;
          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.debug.getter();

          v158 = os_log_type_enabled(v156, v157);
          v159 = v154[55];
          v160 = v154[48];
          if (v158)
          {
            v340 = v159;
            v161 = swift_slowAlloc();
            v321 = swift_slowAlloc();
            v345[0] = v321;
            *v161 = 136446210;
            v314 = v155;
            v331 = v160;
            v162 = [v314 description];
            v163 = v149;
            v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v165 = v148;
            v166 = v150;
            v168 = v167;

            v169 = v164;
            v149 = v163;
            v170 = sub_100002CB4(v169, v168, v345);
            v150 = v166;
            v148 = v165;

            *(v161 + 4) = v170;
            _os_log_impl(&_mh_execute_header, v156, v157, "Saved record: %{public}s", v161, 0xCu);
            sub_1000032BC(v321);
            v5 = v303;
            v147 = v309;

            (*v150)(v340, v331);
            v171 = v309 == v165;
          }

          else
          {

            (*v150)(v159, v160);
            v171 = v147 == v148;
          }

          v1 = v325;
          if (v171)
          {
            break;
          }

          ++v148;
          if (v149)
          {
            goto LABEL_53;
          }

LABEL_54:
          ;
        }

LABEL_73:
        v202 = v1[58];

        v203 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
        v204 = *(v203 + 16);
        if (v204)
        {
          v205 = v1[46];
          v207 = *(v205 + 16);
          v206 = v205 + 16;
          v208 = v203 + ((*(v206 + 64) + 32) & ~*(v206 + 64));
          v333 = *(v206 + 56);
          v342 = v207;
          do
          {
            v209 = v1[47];
            v210 = v1[45];
            v211 = v1[4];
            v342(v209, v208, v210);
            v212 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
            v213 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
            (*(v206 - 8))(v209, v210);
            sub_100030EDC(v212, v213);

            v208 += v333;
            --v204;
          }

          while (v204);
        }

        v214 = v1[58];
        v215 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
        v216 = v215;
        if (v215 >> 62)
        {
          v217 = _CocoaArrayWrapper.endIndex.getter();
          if (v217)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v217 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v217)
          {
LABEL_78:
            v218 = v217 - 1;
            if (v217 < 1)
            {
LABEL_104:
              __break(1u);
              return;
            }

            v219 = 0;
            v220 = v216 & 0xC000000000000001;
            v221 = (v1[49] + 8);
            v304 = v216;
            v310 = v217 - 1;
            if ((v216 & 0xC000000000000001) == 0)
            {
              goto LABEL_81;
            }

LABEL_80:
            for (j = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; j = *(v216 + 8 * v219 + 32))
            {
              v223 = j;
              v224 = v1[54];
              static Logger.syncEngine.getter();
              v225 = v1;
              v226 = v223;
              v227 = Logger.logObject.getter();
              v228 = static os_log_type_t.debug.getter();

              v229 = os_log_type_enabled(v227, v228);
              v230 = v225[54];
              v231 = v225[48];
              if (v229)
              {
                v343 = v230;
                v232 = swift_slowAlloc();
                v323 = swift_slowAlloc();
                v345[0] = v323;
                *v232 = 136446210;
                v316 = v226;
                v334 = v231;
                v233 = [v316 description];
                v234 = v220;
                v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v236 = v219;
                v237 = v221;
                v239 = v238;

                v240 = v235;
                v220 = v234;
                v241 = sub_100002CB4(v240, v239, v345);
                v221 = v237;
                v219 = v236;

                *(v232 + 4) = v241;
                _os_log_impl(&_mh_execute_header, v227, v228, "Deleting record: %{public}s", v232, 0xCu);
                sub_1000032BC(v323);
                v216 = v304;
                v218 = v310;

                (*v221)(v343, v334);
                v242 = v310 == v236;
              }

              else
              {

                (*v221)(v230, v231);
                v242 = v218 == v219;
              }

              v1 = v325;
              if (v242)
              {
                break;
              }

              ++v219;
              if (v220)
              {
                goto LABEL_80;
              }

LABEL_81:
              ;
            }
          }
        }

        v243 = v1[58];
        v244 = v1[49];

        v245 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
        v246 = v245;
        v247 = 0;
        v248 = v245 + 64;
        v249 = -1;
        v250 = -1 << *(v245 + 32);
        if (-v250 < 64)
        {
          v249 = ~(-1 << -v250);
        }

        v251 = v249 & *(v245 + 64);
        v252 = (63 - v250) >> 6;
        v253 = (v244 + 8);
        v299 = (v244 + 8);
        while (v251)
        {
          v254 = v247;
LABEL_99:
          v255 = v1[53];
          v256 = __clz(__rbit64(v251));
          v251 &= v251 - 1;
          v257 = (v254 << 9) | (8 * v256);
          v258 = *(*(v246 + 56) + v257);
          v259 = *(*(v246 + 48) + v257);
          v344 = v258;
          static Logger.syncEngine.getter();
          v260 = v1;
          v261 = v259;
          v262 = Logger.logObject.getter();
          LOBYTE(v259) = static os_log_type_t.debug.getter();

          v335 = v259;
          v263 = os_log_type_enabled(v262, v259);
          v264 = v260[53];
          v265 = v260[48];
          if (v263)
          {
            v324 = v264;
            v305 = swift_slowAlloc();
            v311 = swift_slowAlloc();
            v345[0] = v311;
            *v305 = 136446210;
            v266 = v261;
            v317 = v265;
            v267 = [v266 description];
            v268 = v246;
            v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v271 = v270;

            v272 = v269;
            v246 = v268;
            v273 = sub_100002CB4(v272, v271, v345);
            v253 = v299;

            *(v305 + 4) = v273;
            _os_log_impl(&_mh_execute_header, v262, v335, "Failed to delete record: %{public}s", v305, 0xCu);
            sub_1000032BC(v311);

            (*v299)(v324, v317);
          }

          else
          {

            (*v253)(v264, v265);
          }

          v247 = v254;
          v1 = v325;
        }

        while (1)
        {
          v254 = v247 + 1;
          if (__OFADD__(v247, 1))
          {
            break;
          }

          if (v254 >= v252)
          {
            (*(v1[57] + 8))(v1[58], v1[56]);

            goto LABEL_45;
          }

          v251 = *(v248 + 8 * v254);
          ++v247;
          if (v251)
          {
            goto LABEL_99;
          }
        }

        __break(1u);
        goto LABEL_103;
      }

LABEL_72:
      v146 = _CocoaArrayWrapper.endIndex.getter();
      if (!v146)
      {
        goto LABEL_73;
      }

      goto LABEL_51;
    }

    v119 = v1[62];
    v121 = v1[18];
    v120 = v1[19];
    v122 = v1[17];
    (*(v1[60] + 96))(v119, v7);
    (*(v121 + 32))(v120, v119, v122);
    v123 = CKSyncEngine.Event.SentDatabaseChanges.savedZones.getter();
    v124 = v123;
    if (v123 >> 62)
    {
      v125 = _CocoaArrayWrapper.endIndex.getter();
      if (v125)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v125 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v125)
      {
LABEL_37:
        if (v125 >= 1)
        {
          for (k = 0; k != v125; ++k)
          {
            if ((v124 & 0xC000000000000001) != 0)
            {
              v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v127 = *(v124 + 8 * k + 32);
            }

            v128 = v127;
            sub_100037A68(v127);
          }

          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_72;
      }
    }

LABEL_70:
    v10 = v1[18];
    v9 = v1[19];
    v11 = v1[17];

    goto LABEL_3;
  }

  v8 = v1[62];
  v10 = v1[24];
  v9 = v1[25];
  v12 = v1[22];
  v11 = v1[23];
  v13 = v1[20];
  v14 = v1[21];
  v16 = v1[3];
  v15 = v1[4];
  (*(v1[60] + 96))(v8, v7);
  (*(v10 + 32))(v9, v8, v11);
  CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
  sub_1000329A8(v12, v16);
  (*(v14 + 8))(v12, v13);
LABEL_3:
  (*(v10 + 8))(v9, v11);
LABEL_45:
  v130 = v1[61];
  v129 = v1[62];
  v131 = v1[58];
  v132 = v1;
  v133 = v1[55];
  v134 = v132[53];
  v135 = v132[54];
  v137 = v132[51];
  v136 = v132[52];
  v138 = v132[50];
  v139 = v132[47];
  v281 = v132[44];
  v283 = v132[41];
  v285 = v132[38];
  v287 = v132[35];
  v289 = v132[34];
  v291 = v132[33];
  v292 = v132[32];
  v294 = v132[31];
  v296 = v132[29];
  v298 = v132[28];
  v302 = v132[25];
  v308 = v132[22];
  v313 = v132[19];
  v320 = v132[16];
  v326 = v132[13];
  v330 = v132[10];
  v339 = v132[7];

  v140 = v132[1];

  v140();
}

void sub_100030EDC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v62 - v11;
  v66[0] = a2;
  swift_errorRetain();
  v13 = sub_100003720(&qword_10006BF60, &qword_100056CA0);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = v67;
  v65 = v2;
  v66[0] = v67;
  sub_1000380BC(&qword_10006B860, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if (v67 != 14)
  {

    goto LABEL_7;
  }

  v63 = v13;
  v64 = v6;
  v15 = [a1 recordID];
  v16 = [v15 recordName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == 0xD000000000000010 && 0x80000001000581B0 == v19)
  {

    goto LABEL_11;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v35 & 1) == 0)
  {

    v6 = v64;
LABEL_7:
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66[0] = v64;
      *v23 = 136446466;
      v24 = v20;
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v10;
      v27 = v6;
      v28 = v26;
      v65 = v5;
      v30 = v29;

      v31 = sub_100002CB4(v28, v30, v66);

      *(v23 + 4) = v31;
      *(v23 + 12) = 2082;
      v67 = a2;
      swift_errorRetain();
      v32 = String.init<A>(describing:)();
      v34 = sub_100002CB4(v32, v33, v66);

      *(v23 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to save record: %{public}s : %{public}s", v23, 0x16u);
      swift_arrayDestroy();

      (*(v27 + 8))(v63, v65);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }

    return;
  }

LABEL_11:
  v36 = related decl 'e' for CKErrorCode.serverRecord.getter();
  if (!v36)
  {
    goto LABEL_17;
  }

  v37 = v36;
  v38 = related decl 'e' for CKErrorCode.clientRecord.getter();
  if (!v38)
  {

LABEL_17:
    static Logger.syncEngine.getter();
    v48 = a1;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66[0] = v52;
      *v51 = 136446210;
      v53 = v48;
      v54 = [v53 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v5;
      v57 = v56;

      v58 = sub_100002CB4(v55, v57, v66);

      *(v51 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "No server or client record when merging: %{public}s", v51, 0xCu);
      sub_1000032BC(v52);

      (*(v64 + 8))(v12, v65);
    }

    else
    {

      (*(v64 + 8))(v12, v5);
    }

    return;
  }

  v39 = v38;
  v40 = sub_10001463C();
  v42 = v41;
  v43 = [v37 encryptedValues];
  if (v42 >> 60 == 15)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v66[2] = 0;
  }

  else
  {
    v47 = &protocol witness table for Data;
    v46 = &type metadata for Data;
    v44 = v40;
    v45 = v42;
  }

  v66[0] = v44;
  v66[1] = v45;
  v66[3] = v46;
  v66[4] = v47;
  swift_getObjectType();
  sub_100037EFC(v40, v42);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  sub_100037F10(v40, v42);
  v59 = *(v65 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_cachedAuthorizationKeyRecord);
  *(v65 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_cachedAuthorizationKeyRecord) = v37;
  v60 = v37;

  v61 = [objc_opt_self() defaultCenter];
  if (qword_10006B7C8 != -1)
  {
    swift_once();
  }

  [v61 postNotificationName:qword_10006C9A0 object:0];
}

void sub_1000315AC(void *a1)
{
  v2 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v158 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v161 = &v153 - v6;
  v7 = type metadata accessor for UsageItemRecord();
  v163 = *(v7 - 8);
  v164 = v7;
  v8 = *(v163 + 64);
  __chkstk_darwin(v7);
  v159 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v160 = &v153 - v17;
  v18 = __chkstk_darwin(v16);
  v162 = &v153 - v19;
  v20 = __chkstk_darwin(v18);
  v166 = &v153 - v21;
  v22 = __chkstk_darwin(v20);
  v165 = &v153 - v23;
  v24 = __chkstk_darwin(v22);
  v168 = &v153 - v25;
  __chkstk_darwin(v24);
  v27 = &v153 - v26;
  v28 = [a1 recordID];
  v29 = [v28 recordName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {

    goto LABEL_5;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
LABEL_5:
    static Logger.syncEngine.getter();
    v35 = v28;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v11;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v164 = v10;
      v41 = v40;
      v169[0] = v40;
      *v39 = 136446210;
      v42 = v35;
      v43 = [v42 description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_100002CB4(v44, v46, v169);

      *(v39 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "Ignoring fetched share: %{public}s", v39, 0xCu);
      sub_1000032BC(v41);

      (*(v38 + 8))(v15, v164);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    return;
  }

  v48 = CKSyncEngine.database.getter();
  v49 = [v48 scope];

  static Logger.syncEngine.getter();
  v50 = a1;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  v53 = os_log_type_enabled(v51, v52);
  v157 = v11;
  v154 = v49;
  v155 = v50;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v169[0] = v156;
    *v54 = 136446466;
    if (v49 == 3)
    {
      v55 = 0x646572616873;
    }

    else
    {
      v55 = 0x65746176697270;
    }

    if (v49 == 3)
    {
      v56 = 0xE600000000000000;
    }

    else
    {
      v56 = 0xE700000000000000;
    }

    v57 = sub_100002CB4(v55, v56, v169);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = v50;
    v59 = [v58 description];
    v60 = v28;
    v61 = v10;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = v62;
    v10 = v61;
    v28 = v60;
    v66 = sub_100002CB4(v65, v64, v169);

    *(v54 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v51, v52, "Fetched %{public}s record from server: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    v67 = v157;
  }

  else
  {

    v67 = v11;
  }

  v156 = *(v67 + 8);
  v156(v27, v10);
  v68 = [v28 zoneID];
  v69 = [v68 zoneName];

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  if (v70 == 0x7A69726F68747541 && v72 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v73 = v155;
    v74 = sub_10001463C();
    if (v75 >> 60 == 15)
    {
      v164 = v10;
      v76 = v166;
      static Logger.syncEngine.getter();
      v77 = v73;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v169[0] = v81;
        *v80 = 136446210;
        v82 = v77;
        v83 = [v82 description];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87 = sub_100002CB4(v84, v86, v169);

        *(v80 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v78, v79, "Missing authorization key data in record: %{public}s", v80, 0xCu);
        sub_1000032BC(v81);
      }

      else
      {
      }

      v94 = v76;
      goto LABEL_30;
    }

    v88 = v74;
    v89 = v75;
    v166 = v28;
    v90 = [objc_allocWithZone(MOLocalSettingsStore) init];
    v91 = [v90 managedSettings];
    v92 = [v91 tokenDecodingKeys];

    if (v92)
    {
      sub_10002DCC4();
      v93 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v93 = &_swiftEmptySetSingleton;
    }

    v169[5] = v93;
    sub_10000DA30(v88, v89);
    sub_100035088(v169, v88, v89);
    sub_100007644(v169[0], v169[1]);
    v96 = [v90 managedSettings];
    sub_10002DCC4();
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v96 setTokenDecodingKeys:isa];

    v98 = [v90 managedSettings];
    v99 = [v98 tokenEncodingKey];

    if (v99)
    {
      v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;

      if (v102 >> 60 != 15)
      {
        sub_100037EFC(v88, v89);
        sub_100037EFC(v100, v102);
        v103 = sub_1000372D0(v100, v102, v88, v89);
        sub_100037F10(v88, v89);
        sub_100037F10(v100, v102);
        if (v103)
        {

          sub_100037F10(v88, v89);
          sub_100037F10(v100, v102);

          return;
        }

        if (v154 != 3)
        {
          v145 = static Data.none.getter();
          v147 = v146;
          sub_100037EFC(v100, v102);
          if (v147 >> 60 == 15)
          {
            sub_100037F10(v100, v102);
            sub_100037F10(v145, v147);

LABEL_70:
            sub_100037F10(v88, v89);

            sub_100037F10(v100, v102);
            return;
          }

          v164 = v10;
          sub_10000DA30(v145, v147);
          v152 = sub_1000372D0(v100, v102, v145, v147);
          sub_100037F10(v145, v147);
          sub_100007644(v145, v147);
          sub_100037F10(v100, v102);

          if ((v152 & 1) == 0)
          {

            goto LABEL_70;
          }

          v10 = v164;
          goto LABEL_40;
        }

LABEL_39:

LABEL_40:
        static Logger.syncEngine.getter();
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&_mh_execute_header, v104, v105, "Saving synced authorization key data", v106, 2u);
        }

        v156(v168, v10);
        v107 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_locations;
        v108 = type metadata accessor for Locations();
        v169[3] = v108;
        v169[4] = &protocol witness table for Locations;
        v109 = sub_10001C8A8(v169);
        (*(*(v108 - 8) + 16))(v109, v167 + v107, v108);
        sub_100042358(v88, v89, v169);
        sub_1000032BC(v169);
        v124 = [v90 managedSettings];

        v125 = Data._bridgeToObjectiveC()().super.isa;
        [v124 setTokenEncodingKey:v125];

        if (v154 == 3)
        {
          v126 = [objc_opt_self() defaultCenter];
          if (qword_10006B7C8 != -1)
          {
            swift_once();
          }

          [v126 postNotificationName:qword_10006C9A0 object:0];

          sub_100037F10(v88, v89);
          sub_100037F10(v100, v102);
        }

        else
        {

          sub_100037F10(v88, v89);
          sub_100037F10(v100, v102);
        }

        return;
      }
    }

    else
    {
      v100 = 0;
      v102 = 0xF000000000000000;
    }

    sub_100037EFC(v88, v89);
    sub_100037EFC(v100, v102);
    sub_100037F10(v100, v102);
    sub_100037F10(v88, v89);
    goto LABEL_39;
  }

  v166 = v28;
  if (v70 == 0x7974697669746341 && v72 == 0xE800000000000000)
  {
  }

  else
  {
    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v110 & 1) == 0)
    {
      v131 = v160;
      static Logger.syncEngine.getter();
      v132 = v166;
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v164 = v10;
        v137 = v136;
        v169[0] = v136;
        *v135 = 136446210;
        v138 = v131;
        v139 = [v132 zoneID];
        v140 = [v139 zoneName];

        v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v143 = v142;

        v144 = sub_100002CB4(v141, v143, v169);

        *(v135 + 4) = v144;
        _os_log_impl(&_mh_execute_header, v133, v134, "Unexpected zone: %{public}s", v135, 0xCu);
        sub_1000032BC(v137);

        v94 = v138;
LABEL_30:
        v95 = v164;
LABEL_31:
        v156(v94, v95);
        return;
      }

      v94 = v131;
LABEL_66:
      v95 = v10;
      goto LABEL_31;
    }
  }

  if ((*(v167 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity) & 1) == 0 && v154 != 3)
  {
    v111 = v162;
    static Logger.syncEngine.getter();
    v112 = v155;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v169[0] = v116;
      *v115 = 136446210;
      v117 = v112;
      v118 = v10;
      v119 = [v117 description];
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123 = sub_100002CB4(v120, v122, v169);

      *(v115 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v113, v114, "Ignoring record: %{public}s", v115, 0xCu);
      sub_1000032BC(v116);

      v94 = v111;
      v95 = v118;
      goto LABEL_31;
    }

    v94 = v111;
    goto LABEL_66;
  }

  v127 = v155;
  v128 = v161;
  sub_1000136C0(v127, v161);
  v130 = v163;
  v129 = v164;
  if ((*(v163 + 48))(v128, 1, v164) == 1)
  {

    sub_10000D5C4(v128, &qword_10006BE78, &qword_100056C00);
  }

  else
  {
    v148 = v159;
    (*(v130 + 32))(v159, v128, v129);
    type metadata accessor for UsageStore();
    v149 = static UsageStore.shared.getter();
    __chkstk_darwin(v149);
    *(&v153 - 2) = v148;
    v150 = UsageStore.contains(where:)();

    if ((v150 & 1) == 0)
    {
      static UsageStore.shared.getter();
      UsageItemRecord.identifier.getter();
      v151 = v158;
      (*(v130 + 16))(v158, v148, v129);
      (*(v130 + 56))(v151, 0, 1, v129);
      UsageStore.subscript.setter();
    }

    (*(v130 + 8))(v148, v129);
  }
}

uint64_t sub_1000329A8(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = type metadata accessor for URL();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  v5 = __chkstk_darwin(v3);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v56 - v7;
  v8 = sub_100003720(&qword_10006C248, &unk_100057A00);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v58 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v56 - v12;
  v13 = type metadata accessor for CKSyncEngine.State.Serialization();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  v21 = type metadata accessor for Logger();
  v69 = *(v21 - 8);
  v22 = *(v69 + 64);
  v23 = __chkstk_darwin(v21);
  v67 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v57 = &v56 - v26;
  __chkstk_darwin(v25);
  v28 = &v56 - v27;
  static Logger.syncEngine.getter();
  v68 = v14;
  v29 = *(v14 + 16);
  v64 = a1;
  v29(v20, a1, v13);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = os_log_type_enabled(v30, v31);
  v65 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56 = v21;
    v35 = v34;
    v70 = v34;
    *v33 = 136446210;
    v29(v18, v20, v13);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    (*(v68 + 8))(v20, v13);
    v39 = sub_100002CB4(v36, v38, &v70);
    v40 = v69;

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Updated sync serialization: %{public}s", v33, 0xCu);
    sub_1000032BC(v35);
    v21 = v56;

    v41 = *(v40 + 8);
    v41(v28, v21);
    v42 = v68;
  }

  else
  {

    v42 = v68;
    (*(v68 + 8))(v20, v13);
    v41 = *(v69 + 8);
    v41(v28, v21);
  }

  v43 = CKSyncEngine.database.getter();
  v44 = [v43 scope];

  if (v44 == 3)
  {
    v45 = v58;
    v65(v58, v64, v13);
    (*(v42 + 56))(v45, 0, 1, v13);
    v46 = v60;
    Locations.familyControlsSharedSyncSerialization.getter();
    goto LABEL_8;
  }

  if (v44 == 2)
  {
    v45 = v59;
    v65(v59, v64, v13);
    (*(v42 + 56))(v45, 0, 1, v13);
    v46 = v61;
    Locations.familyControlsPrivateSyncSerialization.getter();
LABEL_8:
    sub_100037438(v45, v46);
    (*(v62 + 8))(v46, v63);
    return sub_10000D5C4(v45, &qword_10006C248, &unk_100057A00);
  }

  v47 = v57;
  static Logger.syncEngine.getter();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v70 = v51;
    *v50 = 136446210;
    v52 = CKDatabaseScope.description.getter();
    v54 = sub_100002CB4(v52, v53, &v70);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "Not saving serialization for engine with scope: %{public}s", v50, 0xCu);
    sub_1000032BC(v51);
  }

  return (v41)(v47, v21);
}

void sub_10003319C(void *a1)
{
  v2 = type metadata accessor for URL();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v42 = &v35 - v11;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  static Logger.syncEngine.getter();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v39 = v5;
  v41 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v37 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = v6;
    v36 = v20;
    v43 = v20;
    *v19 = 136446210;
    v21 = v14;
    v22 = v2;
    v23 = [v21 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v2 = v22;
    v27 = sub_100002CB4(v24, v26, &v43);

    *(v19 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Did fetch changes for %{public}s", v19, 0xCu);
    sub_1000032BC(v36);
    v6 = v38;

    v7 = v37;
  }

  v28 = *(v7 + 8);
  v28(v13, v6);
  sub_1000112B4(0, &qword_10006BE90, CKRecordZoneID_ptr);
  if (qword_10006B788 != -1)
  {
    swift_once();
  }

  v29 = qword_10006C960;
  v30 = static NSObject.== infix(_:_:)();

  if (v30)
  {
    static Logger.syncEngine.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Did fetch changes for activity zone, saving the local store.", v33, 2u);
    }

    v28(v42, v6);
    type metadata accessor for UsageStore();
    static UsageStore.shared.getter();
    v34 = v39;
    Locations.familyControlsStore.getter();
    dispatch thunk of UsageStore.save(to:)();
    (*(v40 + 8))(v34, v2);
  }
}

uint64_t sub_100033738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a4;
  v7 = sub_100003720(&qword_10006BE70, &qword_100056BF8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v27 - v13;
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = *(v8 + 56);
  v16 = type metadata accessor for UsageItemRecord();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v14[v15], a3, v16);
  sub_10001DD64(v14, v12, &qword_10006BE70, &qword_100056BF8);
  v18 = *(v12 + 1);

  v19 = *(v8 + 56);
  v20 = UsageItemRecord.identifier.getter();
  v22 = v21;
  (*(v17 + 8))(&v12[v19], v16);
  if (v20 == UsageItemRecord.identifier.getter() && v22 == v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_10000D5C4(v14, &qword_10006BE70, &qword_100056BF8);
  return v25 & 1;
}

void sub_100033928(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v60 - v9;
  v11 = type metadata accessor for Logger();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = (&v60 - v16);
  v17 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v18 = String._bridgeToObjectiveC()();

  v66 = v17;
  v19 = [v17 fileExistsAtPath:v18];

  if (v19)
  {
    v20 = v67;
    v21 = Data.init(contentsOf:options:)();
    v67 = v20;
    if (v20)
    {
LABEL_5:

      return;
    }

    v23 = v21;
    v24 = v22;
    v25 = type metadata accessor for PropertyListDecoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = PropertyListDecoder.init()();
    sub_100003720(&qword_10006C260, &qword_1000570E0);
    sub_100038000();
    v29 = v67;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v67 = v29;
    if (v29)
    {

      sub_100007644(v23, v24);
      goto LABEL_5;
    }

    v60 = v28;
    v61 = v24;
    v40 = v68;
    if (v68[2])
    {
      v41 = sub_100041270(0xD000000000000014, 0x80000001000589F0);
      if (v42)
      {
        v43 = v41;
        v44 = v40[7];
        v45 = type metadata accessor for CKSyncEngine.State.Serialization();
        v46 = v65;
        v47 = *(v45 - 8);
        (*(v47 + 16))(v65, v44 + *(v47 + 72) * v43, v45);

        sub_100007644(v23, v61);

        (*(v47 + 56))(v46, 0, 1, v45);
        return;
      }
    }

    v48 = v62;
    static Logger.syncEngine.getter();
    v49 = v4;
    v50 = v3;
    (*(v4 + 16))(v10, a1, v3);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v68 = v54;
      *v53 = 136446210;
      sub_1000380BC(&qword_10006C280, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v50;
      v58 = v57;
      (*(v49 + 8))(v10, v56);
      v59 = sub_100002CB4(v55, v58, &v68);

      *(v53 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "Did not find sync state serialiazation at: %{public}s", v53, 0xCu);
      sub_1000032BC(v54);

      sub_100007644(v23, v61);

      (*(v63 + 8))(v62, v64);
    }

    else
    {

      sub_100007644(v23, v61);

      (*(v49 + 8))(v10, v3);
      (*(v63 + 8))(v48, v64);
    }
  }

  else
  {
    static Logger.syncEngine.getter();
    (*(v4 + 16))(v8, a1, v3);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = v3;
    v33 = v4;
    if (os_log_type_enabled(v30, v31))
    {
      v34 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68 = v62;
      *v34 = 136446210;
      sub_1000380BC(&qword_10006C280, &type metadata accessor for URL);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v33 + 8))(v8, v32);
      v38 = sub_100002CB4(v35, v37, &v68);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Did not find sync state serialiazation at: %{public}s", v34, 0xCu);
      sub_1000032BC(v62);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    (*(v63 + 8))(v15, v64);
  }

  v39 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v39 - 8) + 56))(v65, 1, 1, v39);
}

uint64_t sub_100034078(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003411C;

  return sub_10002EF9C(a1, a2);
}

uint64_t sub_10003411C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100034210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100038104;

  return sub_10002E534(a1, a2, a3);
}

uint64_t sub_1000342C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = async function pointer to CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100038104;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_100034394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = async function pointer to CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10003445C;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10003445C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100034558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = async function pointer to CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10003445C;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10003467C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}