id sub_1000298AC()
{
  v1 = v0;
  sub_100017000(&qword_100060070, &qword_100040A00);
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

void *sub_100029A18(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100017000(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_100029B54()
{
  v1 = v0;
  sub_100017000(&qword_1000600B8, &qword_100040A38);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
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

id sub_100029CC8()
{
  v1 = v0;
  sub_100017000(&qword_1000600A8, &unk_100040B70);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t sub_100029E28(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_100021FFC(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v35 = ~v7;
    v9 = 0xEB00000000656C79;
    v10 = 0x80000001000416B0;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      v37 = v8;
      if (v11 <= 4)
      {
        v14 = 0xEA00000000006D6FLL;
        if (v11 == 3)
        {
          v15 = 0x74536D6574737973;
        }

        else
        {
          v15 = 0x6F546D6574737973;
        }

        if (v11 == 3)
        {
          v16 = v9;
        }

        else
        {
          v16 = 0xEA0000000000656ELL;
        }

        if (v11 == 2)
        {
          v15 = 0xD000000000000012;
          v16 = v10;
        }

        if (*(*(v4 + 48) + v8))
        {
          v17 = 0x78456D6574737973;
        }

        else
        {
          v17 = 0x6F5A6D6574737973;
        }

        if (*(*(v4 + 48) + v8))
        {
          v14 = 0xEE00657275736F70;
        }

        v12 = *(*(v4 + 48) + v8) <= 1u ? v17 : v15;
        v13 = *(*(v4 + 48) + v8) <= 1u ? v14 : v16;
      }

      else if (*(*(v4 + 48) + v8) > 7u)
      {
        if (v11 == 8)
        {
          v13 = 0xE800000000000000;
          v12 = 0x6574657263736964;
        }

        else if (v11 == 9)
        {
          v13 = 0xE600000000000000;
          v12 = 0x72656B636970;
        }

        else
        {
          v13 = 0xE700000000000000;
          v12 = 0x6E776F6E6B6E75;
        }
      }

      else if (v11 == 5)
      {
        v12 = 0x6F436D6574737973;
        v13 = 0xEB00000000726F6CLL;
      }

      else if (v11 == 6)
      {
        v12 = 0x6E496D6574737973;
        v13 = 0xEF797469736E6574;
      }

      else
      {
        v13 = 0xEA00000000007375;
        v12 = 0x6F756E69746E6F63;
      }

      v18 = 0xEA00000000006D6FLL;
      v19 = 0x6E776F6E6B6E75;
      if (a2 == 9)
      {
        v19 = 0x72656B636970;
      }

      v20 = 0xE600000000000000;
      if (a2 != 9)
      {
        v20 = 0xE700000000000000;
      }

      if (a2 == 8)
      {
        v19 = 0x6574657263736964;
        v20 = 0xE800000000000000;
      }

      v21 = 0xEA00000000007375;
      v22 = 0x6F756E69746E6F63;
      if (a2 == 6)
      {
        v22 = 0x6E496D6574737973;
        v21 = 0xEF797469736E6574;
      }

      if (a2 == 5)
      {
        v22 = 0x6F436D6574737973;
        v21 = 0xEB00000000726F6CLL;
      }

      if (a2 <= 7u)
      {
        v19 = v22;
        v20 = v21;
      }

      if (a2 == 3)
      {
        v23 = 0x74536D6574737973;
      }

      else
      {
        v23 = 0x6F546D6574737973;
      }

      if (a2 == 3)
      {
        v24 = v9;
      }

      else
      {
        v24 = 0xEA0000000000656ELL;
      }

      if (a2 == 2)
      {
        v23 = 0xD000000000000012;
        v24 = v10;
      }

      if (a2)
      {
        v25 = 0x78456D6574737973;
      }

      else
      {
        v25 = 0x6F5A6D6574737973;
      }

      if (a2)
      {
        v18 = 0xEE00657275736F70;
      }

      if (a2 > 1u)
      {
        v18 = v24;
      }

      else
      {
        v23 = v25;
      }

      v26 = a2 <= 4u ? v23 : v19;
      v27 = a2 <= 4u ? v18 : v20;
      if (v12 == v26 && v13 == v27)
      {
        break;
      }

      v28 = v10;
      v29 = v9;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_75;
      }

      v8 = (v37 + 1) & v35;
      v9 = v29;
      v10 = v28;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

LABEL_75:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v37);
  }

  else
  {
LABEL_73:
    v30 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v33;
    sub_10002A650(a2, v8, isUniquelyReferenced_nonNull_native);
    *v33 = v38;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10002A268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100017000(&qword_1000600B0, &qword_100040A30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10002A650(Swift::Int result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_80;
  }

  if (a3)
  {
    sub_10002A268(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10002AAC8();
      goto LABEL_80;
    }

    sub_10002AC08(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  sub_100021FFC(v34);
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v33 = ~v9;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 <= 4)
      {
        v13 = 0xEA00000000006D6FLL;
        if (v10 == 3)
        {
          v14 = 0x74536D6574737973;
        }

        else
        {
          v14 = 0x6F546D6574737973;
        }

        if (v10 == 3)
        {
          v15 = 0xEB00000000656C79;
        }

        else
        {
          v15 = 0xEA0000000000656ELL;
        }

        if (v10 == 2)
        {
          v14 = 0xD000000000000012;
          v15 = 0x80000001000416B0;
        }

        if (*(*(v7 + 48) + a2))
        {
          v16 = 0x78456D6574737973;
        }

        else
        {
          v16 = 0x6F5A6D6574737973;
        }

        if (*(*(v7 + 48) + a2))
        {
          v13 = 0xEE00657275736F70;
        }

        v11 = *(*(v7 + 48) + a2) <= 1u ? v16 : v14;
        v12 = *(*(v7 + 48) + a2) <= 1u ? v13 : v15;
      }

      else if (*(*(v7 + 48) + a2) > 7u)
      {
        if (v10 == 8)
        {
          v12 = 0xE800000000000000;
          v11 = 0x6574657263736964;
        }

        else if (v10 == 9)
        {
          v12 = 0xE600000000000000;
          v11 = 0x72656B636970;
        }

        else
        {
          v12 = 0xE700000000000000;
          v11 = 0x6E776F6E6B6E75;
        }
      }

      else if (v10 == 5)
      {
        v11 = 0x6F436D6574737973;
        v12 = 0xEB00000000726F6CLL;
      }

      else if (v10 == 6)
      {
        v11 = 0x6E496D6574737973;
        v12 = 0xEF797469736E6574;
      }

      else
      {
        v12 = 0xEA00000000007375;
        v11 = 0x6F756E69746E6F63;
      }

      v17 = 0xEA00000000006D6FLL;
      v18 = 0x6E776F6E6B6E75;
      if (v34 == 9)
      {
        v18 = 0x72656B636970;
      }

      v19 = 0xE600000000000000;
      if (v34 != 9)
      {
        v19 = 0xE700000000000000;
      }

      if (v34 == 8)
      {
        v18 = 0x6574657263736964;
        v19 = 0xE800000000000000;
      }

      v20 = 0xEA00000000007375;
      v21 = 0x6F756E69746E6F63;
      if (v34 == 6)
      {
        v21 = 0x6E496D6574737973;
        v20 = 0xEF797469736E6574;
      }

      if (v34 == 5)
      {
        v21 = 0x6F436D6574737973;
        v20 = 0xEB00000000726F6CLL;
      }

      if (v34 <= 7u)
      {
        v18 = v21;
        v19 = v20;
      }

      if (v34 == 3)
      {
        v22 = 0x74536D6574737973;
      }

      else
      {
        v22 = 0x6F546D6574737973;
      }

      if (v34 == 3)
      {
        v23 = 0xEB00000000656C79;
      }

      else
      {
        v23 = 0xEA0000000000656ELL;
      }

      if (v34 == 2)
      {
        v22 = 0xD000000000000012;
        v23 = 0x80000001000416B0;
      }

      if (v34)
      {
        v24 = 0x78456D6574737973;
      }

      else
      {
        v24 = 0x6F5A6D6574737973;
      }

      if (v34)
      {
        v17 = 0xEE00657275736F70;
      }

      if (v34 > 1u)
      {
        v17 = v23;
      }

      else
      {
        v22 = v24;
      }

      v25 = v34 <= 4u ? v22 : v18;
      v26 = v34 <= 4u ? v17 : v19;
      if (v11 == v25 && v12 == v26)
      {
        goto LABEL_83;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_84;
      }

      a2 = (a2 + 1) & v33;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_80:
  v28 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + a2) = v34;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_83:

LABEL_84:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10002AAC8()
{
  v1 = v0;
  sub_100017000(&qword_1000600B0, &qword_100040A30);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

uint64_t sub_10002AC08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100017000(&qword_1000600B0, &qword_100040A30);
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
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10002AFC0(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_100033E24(v7, v6);
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
    sub_100028A60(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_100033E24(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1000298AC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100017000(&qword_100060078, &qword_100040A08);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x8000000100042B60;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v42 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_100033E24(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_100028A60(v33, 1);
        v34 = *a3;
        v29 = sub_100033E24(v7, v6);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v7;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v10;
      v38 = v36[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v39;
      v5 += 3;
      if (v42 == v26)
      {
      }
    }

    goto LABEL_25;
  }
}

Swift::Int sub_10002B350(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002C028(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10002B3BC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10002B3BC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100017000(&qword_100060058, &qword_100040C40);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10002B5A8(v7, v8, a1, v4);
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
    return sub_10002B4C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002B4C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002B5A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_10002BEA0(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_10002BBB4((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000287C8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1000287C8((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_10002BBB4((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002BEA0(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_10002BE14(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_10002BBB4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_10002BE14(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002BEA0(v3);
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

void *sub_10002BEB4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10002C03C@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, void (*a3)(uint64_t *__return_ptr, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a2(v6);
  v9 = v8;
  a3(v14, v6);
  v10 = v15;
  v11 = v16;
  sub_10002C954(v14, v15);
  v12 = (*(v11 + 8))(v10, v11);
  result = sub_1000170F4(v14);
  *a4 = v7;
  a4[1] = v9;
  a4[2] = v12;
  return result;
}

uint64_t sub_10002C0F8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_10002C194(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter(a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = String.index(_:offsetBy:limitedBy:)();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return String.subscript.getter(a1, a2, a3, a4);
}

unint64_t sub_10002C244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017000(&qword_1000600C0, &qword_100040A40);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100033E24(v5, v6);
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

unint64_t sub_10002C348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017000(&unk_100060098, &qword_100040A18);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002CE14(v4, v13, &unk_10005FC10, &unk_100040A20);
      result = sub_100033F04(v13);
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
      result = sub_10002CE7C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10002C484(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100017000(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t sub_10002C560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017000(&qword_1000600A8, &unk_100040B70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100033F8C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_10002C658(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100055C58, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002C6A4(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10002C6B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100055DB0, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002C700(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100055EF0, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002C74C()
{
  result = qword_100060028;
  if (!qword_100060028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060028);
  }

  return result;
}

uint64_t sub_10002C7A0()
{
  v1 = (type metadata accessor for PresentationAnalyticsEvent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002C8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10002C954(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10002C998(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002C9B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C9F0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10002CA38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100017000(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002CAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002CB08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002CB68()
{
  v1 = (type metadata accessor for ClientAnalyticsEvent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = *(v0 + v3 + v1[12]);

  v10 = *(v0 + v3 + v1[14]);

  v11 = *(v0 + v3 + v1[15]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002CC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_10002CD3C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v8 = *(a1(0) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));
  return sub_1000272E4(a2, a3, a4);
}

uint64_t sub_10002CE08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10002CE14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100017000(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_10002CE7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002CEA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002CF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002D000()
{
  result = qword_1000600D0;
  if (!qword_1000600D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000600D0);
  }

  return result;
}

unint64_t sub_10002D058()
{
  result = qword_1000600D8;
  if (!qword_1000600D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000600D8);
  }

  return result;
}

void sub_10002D0FC()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_1000616A8 = v2;
}

id sub_10002D16C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_1000616B0 = result;
  return result;
}

uint64_t sub_10002D1A8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002CE7C(&v6, v7);
    sub_10002D284(v7);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 BOOLForKey:v3];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_10002D284(v7);
    return 2;
  }

  return v4;
}

uint64_t sub_10002D284(uint64_t a1)
{
  v2 = sub_100017000(&qword_1000600E0, &unk_100040B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D2EC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002CE7C(&v7, v8);
    sub_10002D284(v8);
    v3 = String._bridgeToObjectiveC()();
    [v0 doubleForKey:v3];
    v5 = v4;

    return v5;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_10002D284(v8);
    return 0;
  }
}

void sub_10002D3D8()
{
  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  v0 = qword_1000616A8;
  if (qword_1000616A8)
  {
    v1 = String._bridgeToObjectiveC()();
    [v0 doubleForKey:v1];
    v3 = v2;

    if (v3 <= 0.0)
    {
      v4 = String._bridgeToObjectiveC()();
      [v0 doubleForKey:v4];
    }
  }
}

uint64_t sub_10002D4D8()
{
  if (qword_10005F520 != -1)
  {
    swift_once();
  }

  v0 = qword_1000616B0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_10002C9F0(0, &qword_1000600E8, NSKeyedUnarchiver_ptr);
      sub_10002C9F0(0, &unk_1000604F0, CAMAbstractOverlayServiceControl_ptr);
      v3 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      sub_10002D668(v5, v6);
      return v3;
    }
  }

  else
  {
    sub_10002D284(v9);
  }

  return 0;
}

uint64_t sub_10002D668(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10002D6BC(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_self();
    v17 = 0;
    v3 = a1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v17];
    v5 = v17;
    if (v4)
    {

      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (qword_10005F520 != -1)
      {
        swift_once();
      }

      v9 = qword_1000616B0;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v11 = String._bridgeToObjectiveC()();
      [v9 setObject:isa forKey:v11];

      sub_10002D668(v6, v8);
      goto LABEL_12;
    }

    v12 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_10005F528 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100016DD8(v13, qword_1000616B8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to archive lastUsedControl in writeLastUsedControl", v16, 2u);
  }

  v3 = a1;
LABEL_12:
}

id sub_10002D944()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  result = v0;
  if (!v1)
  {
    return result;
  }

  v55 = result;
  v3 = [v1 sliderType];
  v5 = v3 == 5 || v3 == 6 || v3 == 7;
  if (!v5 || (v6 = [v1 captureDeviceUniqueID]) == 0 || (v7 = v6, v8 = sub_10002E8C8(v6), v7, !v8))
  {
    v18 = [v1 sliderType];
    if (v18 != 4 && v18 != 2 && v18 != 3)
    {
      goto LABEL_25;
    }

    sub_100017000(&qword_100060118, &qword_100040B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100040B30;
    sub_10002E170();
    *(inited + 32) = NSNumber.init(integerLiteral:)(-1);
    *(inited + 40) = NSNumber.init(integerLiteral:)(-100);
    *(inited + 48) = NSNumber.init(integerLiteral:)(1);
    *(inited + 56) = NSNumber.init(integerLiteral:)(100);
    sub_10002C560(inited);
    swift_setDeallocating();
    sub_100017000(&qword_100060120, &qword_100040B68);
    swift_arrayDestroy();
    sub_10002E870();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 setDisplayValuesByValue:isa];

    v23 = [objc_allocWithZone(CAMOverlayDiscreteFloatRange) initWithMinimum:-100.0 maximum:100.0 step:50.0];
    v1 = [v1 sliderWithPrimaryValues:v23];

    goto LABEL_24;
  }

  v56 = [v1 sliderType] == 6;
  v9 = [v1 displayValuesByValue];
  if (v9)
  {
LABEL_45:

LABEL_46:
    v44 = v55;
    v45 = [v1 sliderType];

    if (v45 != 5 && v45 != 6)
    {
      goto LABEL_25;
    }

    v46 = [v1 primaryValues];
    if (v46)
    {

      goto LABEL_25;
    }

    v47 = sub_10002EA10(v56, v8, 0, 0);
    v48 = *(v47 + 16);
    v49 = v48 - 1;
    if (v48 > 1)
    {
      v58 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v50 = 40;
      while (v49)
      {
        v51 = *(v47 + v50);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v52 = v58[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v50 += 16;
        if (!--v49)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

LABEL_54:
    swift_unknownObjectRelease();
    v53 = objc_allocWithZone(CAMOverlayDiscreteFloatRange);
    sub_10002E170();
    v54 = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v53 initWithValues:v54];

    v1 = [v1 sliderWithPrimaryValues:v23];
LABEL_24:

LABEL_25:
    v24 = [v1 sliderUnpackingDisplayValuesIfNeeded];

    return v24;
  }

  v10 = [v1 valueRange];
  if (!v10)
  {
    goto LABEL_46;
  }

  v11 = v10;
  [v10 minimum];
  v57[0] = v12;
  [v11 maximum];
  v57[1] = v13;
  v14 = sub_10002C560(_swiftEmptyArrayStorage);
  v15 = objc_opt_self();
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v27 = v16;
    [v15 zoomControlDisplayValueForZoomFactor:v56 mode:v8 device:0 videoConfiguration:*&v57[v17]];
    v28.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v29.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    if ((v14 & 0xC000000000000001) != 0)
    {
      if (v14 >= 0)
      {
        v14 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v30 = __CocoaDictionary.count.getter();
      if (__OFADD__(v30, 1))
      {
        goto LABEL_56;
      }

      v14 = sub_10002E1BC(v14, v30 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v14;
    v32 = sub_100033F8C(v28.super.super.isa);
    v34 = *(v14 + 16);
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      break;
    }

    v38 = v33;
    if (*(v14 + 24) < v37)
    {
      sub_10002920C(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_100033F8C(v28.super.super.isa);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_59;
      }

LABEL_39:
      v14 = v58;
      if (v38)
      {
        goto LABEL_27;
      }

      goto LABEL_40;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_39;
    }

    v42 = v32;
    sub_100029CC8();
    v32 = v42;
    v14 = v58;
    if (v38)
    {
LABEL_27:
      v25 = *(v14 + 56);
      v26 = *(v25 + 8 * v32);
      *(v25 + 8 * v32) = v29;

      goto LABEL_28;
    }

LABEL_40:
    *(v14 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    *(*(v14 + 48) + 8 * v32) = v28;
    *(*(v14 + 56) + 8 * v32) = v29;
    v40 = *(v14 + 16);
    v36 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v36)
    {
      goto LABEL_57;
    }

    *(v14 + 16) = v41;
LABEL_28:
    v16 = 1;
    v17 = 1;
    if (v27)
    {
      sub_10002E170();
      sub_10002E870();
      v43 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v1 setDisplayValuesByValue:v43];
      swift_unknownObjectRelease();
      v9 = v43;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_10002E170();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10002E028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100033A54(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v10 = *v3;
      v4 = *v3;
      v5 = *(&v10 + 1);
      sub_100017000(&qword_100060120, &qword_100040B68);
      sub_100017000(&unk_1000605B0, &qword_100040B80);
      swift_dynamicCast();
      v6 = v11;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_100033A54((v7 > 1), v8 + 1, 1);
        v6 = v11;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      *&_swiftEmptyArrayStorage[2 * v8 + 4] = v6;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10002E170()
{
  result = qword_1000605A0;
  if (!qword_1000605A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000605A0);
  }

  return result;
}

Swift::Int sub_10002E1BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100017000(&qword_1000600A8, &unk_100040B70);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10002E170();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10002920C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_10002E3D8(id *a1, unint64_t a2)
{
  v3 = a1;
  v49 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_91;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v48 = a2 >> 62;
  if (a2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    if (v6 <= 0)
    {
      v7 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_100017000(&qword_100060118, &qword_100040B60);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v6;
      v7[3] = 2 * (v9 >> 4);
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v10 = v7[3];

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  v50 = v7;
  v51 = v3;
  v11 = v7 + 4;
  v12 = v10 >> 1;
  v45 = a2;
  if (!v6)
  {
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    v14 = a2 & 0xFFFFFFFFFFFFFF8;
    v52 = a2 & 0xC000000000000001;
    v53 = v3 & 0xC000000000000001;
    goto LABEL_39;
  }

  if (v49)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v48)
    {
      goto LABEL_20;
    }

LABEL_23:
    v14 = a2 & 0xFFFFFFFFFFFFFF8;
    v16 = a2;
    a2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

  v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v48)
  {
    goto LABEL_23;
  }

LABEL_20:
  v14 = a2 & 0xFFFFFFFFFFFFFF8;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  v16 = a2;
  a2 = v15;
LABEL_24:
  v18 = 0;
  v46 = (v3 + 4);
  v47 = v3 & 0xFFFFFFFFFFFFFF8;
  v52 = v16 & 0xC000000000000001;
  v53 = v3 & 0xC000000000000001;
  v19 = v16 + 32;
  v12 -= v6;
  do
  {
    if (v18 >= v6)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_80;
    }

    if (v13 == v18)
    {
      goto LABEL_81;
    }

    if (v53)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v47 + 16))
      {
        goto LABEL_89;
      }

      v21 = *&v46[8 * v18];
    }

    v3 = v21;
    if (a2 == v18)
    {
      goto LABEL_95;
    }

    if (v52)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v14 + 16))
      {
        goto LABEL_82;
      }

      v22 = *(v19 + 8 * v18);
    }

    *v11 = v3;
    v11[1] = v22;
    v11 += 2;
    ++v18;
    v3 = v51;
  }

  while (v20 != v6);
  a2 = v45;
  v17 = v47;
LABEL_39:
  v23 = v17;
  v24 = v6 + 4;
  while (2)
  {
    if (v49)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *(v23 + 16);
    }

    v26 = v24 - 4;
    if (v24 - 4 != v25)
    {
      if (v53)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_83;
        }

        if (v26 >= *(v23 + 16))
        {
          goto LABEL_85;
        }

        v27 = v3[v24];
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_84;
      }

      if (v48)
      {
        if (v26 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_74:

          break;
        }
      }

      else if (v26 == *(v14 + 16))
      {
        goto LABEL_74;
      }

      if (v52)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!v12)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        if (v26 >= *(v14 + 16))
        {
          goto LABEL_87;
        }

        v29 = *(a2 + 8 * v24);
        if (!v12)
        {
LABEL_57:
          v30 = v50[3];
          if (((v30 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_90;
          }

          v31 = v29;
          v32 = v30 & 0xFFFFFFFFFFFFFFFELL;
          if (v32 <= 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = v32;
          }

          sub_100017000(&qword_100060118, &qword_100040B60);
          v34 = swift_allocObject();
          v35 = j__malloc_size(v34);
          v36 = v35 - 32;
          if (v35 < 32)
          {
            v36 = v35 - 17;
          }

          v37 = v36 >> 4;
          v34[2] = v33;
          v34[3] = 2 * (v36 >> 4);
          v38 = (v34 + 4);
          v39 = v50[3] >> 1;
          if (v50[2])
          {
            v40 = v50 + 4;
            if (v34 != v50 || v38 >= v40 + 16 * v39)
            {
              memmove(v34 + 4, v40, 16 * v39);
            }

            v50[2] = 0;
          }

          v11 = (v38 + 16 * v39);
          v12 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;

          v50 = v34;
          v29 = v31;
          a2 = v45;
          v3 = v51;
        }
      }

      v41 = __OFSUB__(v12--, 1);
      if (v41)
      {
        goto LABEL_88;
      }

      *v11 = v28;
      v11[1] = v29;
      v11 += 2;
      ++v24;
      continue;
    }

    break;
  }

  v42 = v50[3];
  if (v42 < 2)
  {
    return;
  }

  v43 = v42 >> 1;
  v41 = __OFSUB__(v43, v12);
  v44 = v43 - v12;
  if (v41)
  {
LABEL_94:
    __break(1u);
LABEL_95:

    __break(1u);
    return;
  }

  v50[2] = v44;
}

unint64_t sub_10002E870()
{
  result = qword_100060128;
  if (!qword_100060128)
  {
    sub_10002E170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060128);
  }

  return result;
}

uint64_t sub_10002E8C8(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_BackWide])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_FrontWide])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_Telephoto])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_Bravo])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_Pearl])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_BackSuperWide])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_WideBravo])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_SuperBravo])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:kFigCaptureVideoSourceUniqueID_FrontSuperWide])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10002EA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = 0;
  [objc_opt_self() shouldApplyContinuousZoomForMode:a1 device:a2 videoConfiguration:a3 videoStabilizationStrength:a4 frontRearSimultaneousVideoEnabled:0 zoomFactors:&v24 displayZoomFactors:&v23];
  v5 = v23;
  v6 = v24;
  if (v24)
  {
    v24 = 0;
    sub_10002E170();
    v7 = v6;
    v8 = v5;
    v9 = v7;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v10 = v24;
    if (v24)
    {
      if (v8)
      {
        v24 = 0;
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();
        v11 = v24;
        if (v24)
        {
          if (v10 >> 62)
          {
            v12 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v11 >> 62)
          {
            if (v12 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_9;
            }
          }

          else if (v12 == *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_9:
            sub_10002E3D8(v10, v11);
            v14 = v13;

            v15 = sub_10002E028(v14);

            return v15;
          }
        }
      }
    }
  }

  else
  {
    v16 = v23;
  }

  sub_10002E170();
  v17.super.super.isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  v18 = 3.0;
  if (!a1)
  {
    v18 = 5.0;
  }

  isa = NSNumber.init(floatLiteral:)(v18).super.super.isa;
  sub_100017000(&unk_100060130, &qword_100040C60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100040B30;
  *(v15 + 32) = v17;
  *(v15 + 40) = v17;
  *(v15 + 48) = isa;
  *(v15 + 56) = isa;
  v20 = v17.super.super.isa;
  v21 = isa;

  return v15;
}

void *sub_10002EC6C(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_100033A34(0, v2 & ~(v2 >> 63), 0);
    v40 = _swiftEmptyArrayStorage;
    if (v38)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      result = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v43 = result;
    v44 = v4;
    v45 = v38 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v43;
        v10 = v45;
        v39 = v44;
        v11 = v1;
        sub_100034290(v43, v44, v45, v1);
        v13 = v12;
        v41 = 2314;
        v42 = 0xE200000000000000;
        v14 = [v12 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18._countAndFlagsBits = v15;
        v18._object = v17;
        String.append(_:)(v18);

        v19 = v41;
        v20 = v42;
        v21 = v40;
        v46 = v40;
        v23 = v40[2];
        v22 = v40[3];
        if (v23 >= v22 >> 1)
        {
          result = sub_100033A34((v22 > 1), v23 + 1, 1);
          v21 = v46;
        }

        v21[2] = v23 + 1;
        v24 = &v21[2 * v23];
        v24[4] = v19;
        v24[5] = v20;
        v40 = v21;
        if (v38)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v37;
          sub_100017000(&qword_100060550, &qword_100040C28);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v7(&v41, 0);
          if (v6 == v37)
          {
LABEL_32:
            sub_10002CE08(v43, v44, v45);
            return v40;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v25 = 1 << *(v11 + 32);
          if (v9 >= v25)
          {
            goto LABEL_36;
          }

          v26 = v9 >> 6;
          v27 = *(v36 + 8 * (v9 >> 6));
          if (((v27 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v39)
          {
            goto LABEL_38;
          }

          v28 = v27 & (-2 << (v9 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v37;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v35 + 8 * v26);
            v2 = v37;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_10002CE08(v9, v39, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_31;
              }
            }

            result = sub_10002CE08(v9, v39, 0);
          }

LABEL_31:
          v34 = *(v11 + 36);
          v43 = v25;
          v44 = v34;
          v45 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

void sub_10002F214(void *a1)
{
  v2 = v1;
  if (qword_10005F528 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100016DD8(v4, qword_1000616B8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "SceneDelegate: Disconnected scene: %{public}@", v8, 0xCu);
    sub_100035628(v9);
  }

  v11 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_window);
  *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_window) = 0;

  v12 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController);
  *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController) = 0;

  [*(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientMonitor) endMonitoring];
  v13 = [objc_opt_self() sharedInstance];
  [v13 removeObserver:v2];
}

void sub_10002F440()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_window);
  if (v2 && (v3 = [v2 windowScene]) != 0 && (v3, !*(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientAuditToken)) && (v4 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_sceneTeardownTimer, !*(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_sceneTeardownTimer)))
  {
    if (qword_10005F528 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100016DD8(v11, qword_1000616B8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SceneDelegate: Waiting for scene teardown", v14, 2u);
    }

    if (qword_10005F518 != -1)
    {
      swift_once();
    }

    v15 = qword_1000616A8;
    if (qword_1000616A8)
    {
      v16 = String._bridgeToObjectiveC()();
      [v15 doubleForKey:v16];
      v18 = v17;
    }

    else
    {
      v18 = 0.0;
    }

    if (v18 <= 0.0)
    {
      v18 = 5.0;
    }

    v19 = objc_opt_self();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24[4] = sub_100035CCC;
    v24[5] = v20;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_10002EC64;
    v24[3] = &unk_100056BC8;
    v21 = _Block_copy(v24);

    v22 = [v19 scheduledTimerWithTimeInterval:0 repeats:v21 block:v18];
    _Block_release(v21);
    v23 = *(v1 + v4);
    *(v1 + v4) = v22;
  }

  else
  {
    v5 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_sceneTeardownTimer;
    if (*(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_sceneTeardownTimer))
    {
      if (qword_10005F528 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100016DD8(v6, qword_1000616B8);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "SceneDelegate: Canceling teardown", v9, 2u);
      }

      [*(v1 + v5) invalidate];
      v10 = *(v1 + v5);
      *(v1 + v5) = 0;
    }
  }
}

void sub_10002F7EC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10002F848(a1);
  }
}

void sub_10002F848(void *a1)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_window);
  if (v4)
  {
    v17 = v3;
    v5 = [v4 windowScene];
    if (v5)
    {
      v6 = v5;
      if ([a1 isValid])
      {
        v7 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_sceneTeardownTimer);
        if (v7)
        {
          sub_10002C9F0(0, &qword_10005F720, NSTimer_ptr);
          v8 = a1;
          v9 = v7;
          v10 = static NSObject.== infix(_:_:)();

          if (v10)
          {
            if (qword_10005F528 != -1)
            {
              swift_once();
            }

            v11 = type metadata accessor for Logger();
            sub_100016DD8(v11, qword_1000616B8);
            v12 = Logger.logObject.getter();
            v13 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              *v14 = 0;
              _os_log_impl(&_mh_execute_header, v12, v13, "SceneDelegate: Committing teardown", v14, 2u);
            }

            v15 = [v6 session];
            aBlock[4] = sub_10002FAF0;
            aBlock[5] = 0;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10002FC3C;
            aBlock[3] = &unk_100056BA0;
            v16 = _Block_copy(aBlock);
            [v17 requestSceneSessionDestruction:v15 options:0 errorHandler:v16];

            _Block_release(v16);
            return;
          }
        }
      }
    }
  }

  else
  {

    _objc_release_x1();
  }
}

void sub_10002FAF0()
{
  if (qword_10005F528 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100016DD8(v0, qword_1000616B8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SceneDelegate: Failed teardown: %{public}@", v2, 0xCu);
    sub_100035628(v3);
  }
}

void sub_10002FC44(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10002FD28(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection;
  v5 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
  if (v5)
  {
    if (a1)
    {
      sub_10002C9F0(0, &qword_100060538, &off_100054B20);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = [objc_opt_self() sharedInstance];
  v19 = [v9 analyticsCollector];

  v10 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController);
  if (v10)
  {
    v11 = [v10 overlayView];
    if (v11)
    {
      v12 = v11;
      if ([v11 isSliderVisible] && !*(v2 + v4))
      {
        sub_100020B60(5);
      }
    }
  }

  if (a1)
  {
    v13 = a1;
    [v13 setFocusLocked:0];
    [v13 setQuietUIActive:0];
    [v13 sendOverlayVisibility:0 activeControlIdentifier:0];
    sub_100025BE4();
  }

  v14 = *(v2 + v4);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 auditToken];
    v17 = [v16 versionedPID];

    sub_1000230D4(v17);
  }

  if (a1)
  {
    [a1 removeObserver:v2];
  }

  v18 = *(v2 + v4);
  if (v18)
  {
    [v18 addObserver:v2];
  }

  sub_100030524();
}

void sub_10002FF5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientAuditToken);
  v2 = &off_100060000;
  if (v1 && *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_window))
  {
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 sharedInstance];
    v6 = [v5 activeConnectionForProcess:{objc_msgSend(v4, "versionedPID")}];

    v32 = v0;
    v7 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
    if (v6)
    {
      if (v7)
      {
        sub_10002C9F0(0, &qword_100060538, &off_100054B20);
        v8 = v7;
        v9 = v6;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
LABEL_15:

LABEL_16:
          v0 = v32;
          goto LABEL_17;
        }
      }
    }

    else if (!v7)
    {

      v6 = 0;
      goto LABEL_16;
    }

    v11 = [v3 sharedInstance];
    v12 = [v11 allConnections];

    sub_10002C9F0(0, &qword_100060538, &off_100054B20);
    sub_100035C08();
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10002EC6C(v13);

    sub_100017000(&unk_10005F710, &unk_10003FF60);
    sub_10001B6A8(&qword_100060050, &unk_10005F710, &unk_10003FF60);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    v33 = v14;
    v34 = v16;

    v17._countAndFlagsBits = 10;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);

    v19 = v14;
    v18 = v34;
    if (qword_10005F528 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100016DD8(v20, qword_1000616B8);
    v21 = v6;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v24 = 138543618;
      *(v24 + 4) = v21;
      *v25 = v6;
      *(v24 + 12) = 2082;
      v27 = v21;
      v28 = sub_10003344C(v19, v18, &v33);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "SceneDelegate: Adopting connection %{public}@ out of [%{public}s]", v24, 0x16u);
      sub_100035628(v25);
      v2 = &off_100060000;

      sub_1000170F4(v26);
    }

    else
    {
    }

    goto LABEL_15;
  }

  v6 = 0;
LABEL_17:
  v29 = v2[51];
  v30 = *&v29[v0];
  *&v29[v0] = v6;
  v31 = v6;
  sub_10002FD28(v30);
}

id sub_10003035C()
{
  v1 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate____lazy_storage___focusLockContactRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate____lazy_storage___focusLockContactRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate____lazy_storage___focusLockContactRecognizer);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = type metadata accessor for FocusLockGestureRecognizer();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR___CAMFocusLockGestureRecognizer_halfPressTimer] = 0;
    *&v7[OBJC_IVAR___CAMFocusLockGestureRecognizer_lockWindowTimer] = 0;
    v7[OBJC_IVAR___CAMFocusLockGestureRecognizer_active] = 0;
    v8 = &v7[OBJC_IVAR___CAMFocusLockGestureRecognizer_beganHandler];
    *v8 = sub_100035BC8;
    v8[1] = v4;
    v9 = &v7[OBJC_IVAR___CAMFocusLockGestureRecognizer_endedHandler];
    *v9 = sub_100035BE8;
    v9[1] = v5;
    v14.receiver = v7;
    v14.super_class = v6;
    v10 = objc_msgSendSuper2(&v14, "init");
    v11 = *(v0 + v1);
    *(v0 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_100030498(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 setFocusLocked:a2 & 1];
    }
  }
}

void sub_100030524()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection;
  v3 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v4 = [v3 updatesByID];
  if (v4)
  {
    v5 = v4;
    sub_10002C9F0(0, &qword_100060510, CAMOverlayServiceControlUpdate_ptr);
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = *(v1 + v2);
    if (!v7)
    {
LABEL_10:
      v10 = _swiftEmptyArrayStorage;
      if (sub_1000356E8())
      {
        goto LABEL_11;
      }

LABEL_9:
      v11 = _swiftEmptyArrayStorage;
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    v7 = *(v0 + v2);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = [v7 controls];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  sub_10002C9F0(0, &unk_1000604F0, CAMAbstractOverlayServiceControl_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_1000356E8())
  {
    goto LABEL_9;
  }

LABEL_11:

  v11 = v10;
LABEL_12:
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_23:
    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_25;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      if (qword_10005F528 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100016DD8(v18, qword_1000616B8);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        if (v10 >> 62)
        {
          v22 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v21 + 4) = v22;

        _os_log_impl(&_mh_execute_header, v19, v20, "SceneDelegate: Overlay disabled by setting; ignoring %ld controls.", v21, 0xCu);

        v23 = *(v1 + v2);
        if (!v23)
        {
          goto LABEL_31;
        }

LABEL_37:
        v13 = [v23 focusLockGestureEnabled];
        v70 = 0;
        goto LABEL_38;
      }

      swift_bridgeObjectRelease_n();
      v23 = *(v1 + v2);
      if (v23)
      {
        goto LABEL_37;
      }

LABEL_31:
      v70 = 0;
      v13 = 0;
      goto LABEL_38;
    }

    v23 = *(v1 + v2);
    if (v23)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_23;
  }

LABEL_14:

  v12 = *(v1 + v2);
  if (v12)
  {
    v13 = [v12 focusLockGestureEnabled];
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_lastUsedControl);
  if (!v14 || (v15 = v14, sub_100030E08(v15, v11), v70 = v16, v15, !v70))
  {
    v17 = sub_100031754(7, v11);
    if (!v17)
    {
      v17 = sub_100031754(5, v11);
    }

    v70 = v17;
  }

LABEL_38:
  v24 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController;
  v25 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController);
  if (!v25)
  {
    v31 = 0;
    v29 = 0;
    goto LABEL_43;
  }

  v26 = [v25 activeControl];
  if (!v26)
  {
    v29 = 0;
    v31 = 0;
    v32 = *(v1 + v24);
    if (!v32)
    {
      goto LABEL_43;
    }

LABEL_46:
    sub_10002C9F0(0, &unk_1000604F0, CAMAbstractOverlayServiceControl_ptr);
    v34 = v32;
    v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v6)
    {
      sub_10002C9F0(0, &qword_100060510, CAMOverlayServiceControlUpdate_ptr);
      v36.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v36.super.isa = 0;
    }

    [v34 setControls:v35.super.isa updatesByID:v36.super.isa activeControl:v70];

    v33 = *(v1 + v24);
    if (!v33)
    {
      goto LABEL_58;
    }

    goto LABEL_50;
  }

  v27 = v26;
  v28 = [v26 identifier];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = *(v1 + v24);
  if (v32)
  {
    goto LABEL_46;
  }

LABEL_43:

  v33 = *(v1 + v24);
  if (!v33)
  {
    goto LABEL_58;
  }

LABEL_50:
  v37 = [v33 overlayView];
  v38 = [v37 isSliderVisible];

  if ((v38 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (!v31)
  {
    goto LABEL_59;
  }

  if (!v70)
  {
    goto LABEL_58;
  }

  v39 = [v70 identifier];
  if (!v39)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v40)
  {

LABEL_58:

    goto LABEL_59;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v46 & 1) == 0)
  {
    v47 = *(v1 + v2);
    if (v47)
    {
      v48 = v47;
      [v48 sendActiveControlIdentifier:v39];
    }
  }

LABEL_59:
  v41 = *(v1 + v24);
  if (!v41)
  {
    goto LABEL_82;
  }

  v42 = qword_10005F518;
  v43 = v41;
  if (v42 == -1)
  {
    if (qword_1000616A8)
    {
LABEL_62:
      v44 = sub_10002D1A8();
      v45 = (v44 == 2) | v44;
      goto LABEL_69;
    }
  }

  else
  {
    swift_once();
    if (qword_1000616A8)
    {
      goto LABEL_62;
    }
  }

  v45 = 1;
LABEL_69:
  [v43 setHalfPressForOverlaySupported:v45 & 1];

  v49 = *(v1 + v24);
  if (!v49)
  {
    goto LABEL_82;
  }

  v50 = qword_10005F518;
  v51 = v49;
  if (v50 == -1)
  {
    if (qword_1000616A8)
    {
LABEL_72:
      v52 = sub_10002D1A8();
      v53 = (v52 == 2) | v52;
      goto LABEL_75;
    }
  }

  else
  {
    swift_once();
    if (qword_1000616A8)
    {
      goto LABEL_72;
    }
  }

  v53 = 1;
LABEL_75:
  [v51 setDoubleHalfPressForMenuSupported:v53 & 1];

  v54 = *(v1 + v24);
  if (!v54)
  {
    goto LABEL_82;
  }

  v55 = qword_10005F518;
  v56 = v54;
  if (v55 != -1)
  {
    swift_once();
    if (qword_1000616A8)
    {
      goto LABEL_78;
    }

LABEL_80:
    v58 = 1;
    goto LABEL_81;
  }

  if (!qword_1000616A8)
  {
    goto LABEL_80;
  }

LABEL_78:
  v57 = sub_10002D1A8();
  v58 = (v57 == 2) | v57;
LABEL_81:
  [v56 setSwipeForOverlaySupported:v58 & 1];

LABEL_82:
  if (qword_10005F518 == -1)
  {
    if (!qword_1000616A8)
    {
      goto LABEL_90;
    }
  }

  else
  {
    swift_once();
    if (!qword_1000616A8)
    {
      goto LABEL_90;
    }
  }

  if (sub_10002D1A8() & v13)
  {
    v59 = *(v1 + v24);
    if (v59)
    {
      [v59 setHalfPressHaptics:0];
      v60 = *(v1 + v24);
      if (v60)
      {
        v61 = v60;
        v62 = sub_10003035C();
        [v61 addContactRecognizer:v62];
      }
    }

    *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_isFocusLockContactRecognizerInstalled) = 1;
    goto LABEL_95;
  }

LABEL_90:
  v63 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_isFocusLockContactRecognizerInstalled;
  if (*(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_isFocusLockContactRecognizerInstalled) == 1)
  {
    v64 = *(v1 + v24);
    if (v64)
    {
      [v64 setHalfPressHaptics:1];
      v65 = *(v1 + v24);
      if (v65)
      {
        v66 = v65;
        v67 = sub_10003035C();
        [v66 removeContactRecognizer:v67];
      }
    }

    *(v1 + v63) = 0;
  }

LABEL_95:
  if (!*(v1 + v2))
  {
    v68 = *(v1 + v24);
    if (v68)
    {
      v69 = v68;
      [v69 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100030E08(void *a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v77 = v3;
  for (i = a2; v3; i = v2)
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_27;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 identifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [a1 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = v11 == v15 && v13 == v17;
      if (v18)
      {
LABEL_144:

        return;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = i;
      if (v19)
      {
        return;
      }

      ++v4;
      v3 = v77;
      if (v9 == v77)
      {
        v20 = 0;
        while (1)
        {
          if (v5)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v20 >= *(v6 + 16))
            {
              goto LABEL_29;
            }

            v21 = i[v20 + 4];
          }

          v22 = v21;
          v23 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            goto LABEL_28;
          }

          v24 = [v21 controlType];
          if (v24 == [a1 controlType])
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v25 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v20;
          if (v23 == v77)
          {
            goto LABEL_31;
          }
        }
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
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v77 = v3;
  }

LABEL_31:
  v83 = a1;
  v26 = a1;

  sub_100017000(&qword_100060518, &qword_100040BF8);
  sub_100017000(&qword_100060520, &qword_100040C00);
  v80 = v26;
  if (swift_dynamicCast())
  {

    v27 = v81;
    v28 = v82;
    if (v81 >> 62)
    {
      goto LABEL_77;
    }

    v29 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = &selRef_setDisabledMenuItemsIndices_;
    if (v29)
    {
      goto LABEL_34;
    }

LABEL_78:
    v76 = v28;
    v45 = [v76 sliderType];
    v46 = v45 == 6 || v45 == 5;
    if (v46 && v29)
    {
      v47 = 0;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
LABEL_96:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v47 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            v28 = _CocoaArrayWrapper.endIndex.getter();
            if (!v28)
            {
              goto LABEL_129;
            }

LABEL_47:
            v35 = 0;
            while (1)
            {
              if ((v29 & 0xC000000000000001) != 0)
              {
                v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v35 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_74;
                }

                v36 = *(v29 + 8 * v35 + 32);
              }

              v37 = v36;
              v38 = (v35 + 1);
              if (__OFADD__(v35, 1))
              {
                break;
              }

              v39 = [v36 pickerType];
              if (v39 == [v27 pickerType] && objc_msgSend(v37, "pickerType"))
              {
                goto LABEL_70;
              }

              ++v35;
              v18 = v38 == v28;
              v3 = v77;
              v2 = i;
              if (v18)
              {
                goto LABEL_129;
              }
            }

LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            v29 = _CocoaArrayWrapper.endIndex.getter();
            v3 = &selRef_setDisabledMenuItemsIndices_;
            if (!v29)
            {
              goto LABEL_78;
            }

LABEL_34:
            v30 = 0;
            while (1)
            {
              if ((v27 & 0xC000000000000001) != 0)
              {
                v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_72;
                }

                v31 = *(v27 + 8 * v30 + 32);
              }

              v32 = v31;
              v33 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                __break(1u);
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              v2 = [v31 sliderType];
              if (v2 == [v28 sliderType])
              {
                if ([v32 sliderType])
                {
                  break;
                }
              }

              ++v30;
              if (v33 == v29)
              {
                goto LABEL_78;
              }
            }

LABEL_123:

            return;
          }

          v48 = *(v27 + 8 * v47 + 32);
          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_96;
          }
        }

        v50 = v48;
        v2 = [v50 sliderType];

        if (v2 == 5 || v2 == 6)
        {

          goto LABEL_123;
        }

        ++v47;
      }

      while (v49 != v29);
    }

    v52 = v76;
    v53 = [v52 sliderType];

    if (v53 == 5 || v53 == 6 || v53 == 7)
    {

      if (v29)
      {
        v54 = 0;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v56 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_117;
            }
          }

          else
          {
            if (v54 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_125;
            }

            v55 = *(v27 + 8 * v54 + 32);
            v56 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
LABEL_117:
              __break(1u);
              goto LABEL_118;
            }
          }

          v57 = v55;
          v2 = [v57 sliderType];

          v58 = v2 == 5 || v2 == 6;
          if (v58 || v2 == 7)
          {
            break;
          }

          ++v54;
          if (v56 == v29)
          {
            goto LABEL_118;
          }
        }

        goto LABEL_123;
      }

LABEL_118:
    }

    else
    {
    }

    v2 = i;
    if (!v77)
    {
      return;
    }

LABEL_131:
    v60 = 0;
    v61 = v2 & 0xC000000000000001;
    v62 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v61)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v60 >= *(v62 + 16))
        {
          goto LABEL_147;
        }

        v63 = *(v2 + 8 * v60 + 32);
      }

      v64 = v63;
      v65 = (v60 + 1);
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v66 = [v63 title];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = [v80 title];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      if (v67 == v71 && v69 == v73)
      {
        goto LABEL_144;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = i;
      if ((v75 & 1) == 0)
      {

        ++v60;
        if (v65 != v77)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_147:
    __break(1u);
    return;
  }

  v83 = v26;
  v34 = v26;

  sub_100017000(&qword_100060528, &qword_100040C08);
  if (swift_dynamicCast())
  {

    v29 = v81;
    v27 = v82;
    if (v81 >> 62)
    {
      goto LABEL_126;
    }

    v28 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_47;
    }

LABEL_129:
  }

  else
  {

    v83 = v34;
    sub_100017000(&qword_100060530, &unk_100040C10);
    if (swift_dynamicCast())
    {
      v27 = v82;
      if (v81 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
        if (!v28)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v28 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_129;
        }
      }

      v40 = 0;
      while (1)
      {
        if ((v81 & 0xC000000000000001) != 0)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v40 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v41 = *(v81 + 8 * v40 + 32);
        }

        v42 = v41;
        v43 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_75;
        }

        v44 = [v41 toggleType];
        if (v44 == [v82 toggleType])
        {
          if ([v42 toggleType])
          {
            break;
          }
        }

        ++v40;
        v18 = v43 == v28;
        v3 = v77;
        v2 = i;
        if (v18)
        {
          goto LABEL_129;
        }
      }

LABEL_70:

      goto LABEL_123;
    }
  }

  if (v3)
  {
    goto LABEL_131;
  }
}

uint64_t sub_100031754(id a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_19:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(a2 + 8 * i + 32);
    }

    v7 = v6;
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      if ([v9 sliderType] == a1)
      {
        break;
      }
    }

    if (v8 == v4)
    {
      return 0;
    }
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_100031990()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer;
  [*(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer) invalidate];
  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  if (!qword_1000616A8 || (v3 = sub_10002D1A8(), v3 == 2) || (v3 & 1) != 0)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_1000356C8;
    v12[5] = v4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10002EC64;
    v12[3] = &unk_100056B78;
    v5 = _Block_copy(v12);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:0.5];
    _Block_release(v5);

    v8 = *(v1 + v2);
    *(v1 + v2) = v7;

    v9 = [objc_opt_self() currentRunLoop];
    v10 = *(v1 + v2);
    if (v10)
    {
      v11 = v9;
      [v9 addTimer:v10 forMode:NSRunLoopCommonModes];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100031B84(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
    if (v3 && (v4 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer, (v5 = *(Strong + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer)) != 0))
    {
      v6 = Strong;
      sub_10002C9F0(0, &qword_10005F720, NSTimer_ptr);
      v7 = v3;
      v8 = a1;
      v9 = v5;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        if ([v7 overlayVisible])
        {
          [v7 setQuietUIActive:1];
        }

        v7 = *&v6[v4];
        *&v6[v4] = 0;
      }
    }

    else
    {
      v7 = Strong;
    }
  }
}

void sub_100031CA4(void *a1, char a2)
{
  if (a2)
  {
    sub_100031990();
  }

  else
  {
    v5 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer;
    [*(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer) invalidate];
    v6 = *(v2 + v5);
    *(v2 + v5) = 0;

    v7 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
    if (v7)
    {
      [v7 setQuietUIActive:0];
    }
  }

  v8 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
  if (v8)
  {
    v9 = v8;
    v10 = [a1 activeControl];
    if (v10)
    {
      v11 = v10;
      v13 = [v10 identifier];

      v12 = v13;
      if (!v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = String._bridgeToObjectiveC()();

        v12 = v14;
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = v12;
    [v9 sendOverlayVisibility:a2 & 1 activeControlIdentifier:?];
  }
}

void sub_100031E68(void *a1, id a2)
{
  v3 = v2;
  v4 = a2;
  v6 = [a2 controlIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [a1 controlsByID];
  if (v10)
  {
    sub_10002C9F0(0, &unk_1000604F0, CAMAbstractOverlayServiceControl_ptr);
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v11 + 16) && (v12 = sub_100033E24(v7, v9), (v13 & 1) != 0))
    {
      v10 = *(*(v11 + 56) + 8 * v12);
    }

    else
    {

      v10 = 0;
    }
  }

  v14 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection;
  v15 = *(v3 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
  if (v15)
  {
    v16 = [v15 controlsByID];
    sub_10002C9F0(0, &unk_1000604F0, CAMAbstractOverlayServiceControl_ptr);
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v17 + 16))
    {
      v18 = sub_100033E24(v7, v9);
      v20 = v19;

      if (v20)
      {
        v64 = *(*(v17 + 56) + 8 * v18);

        v21 = v64;
        if (!v10)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v21 = 0;
  v64 = 0;
  if (!v10)
  {
LABEL_16:
    v22 = sub_100035544();
    sub_100032554();

    goto LABEL_17;
  }

LABEL_13:
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v10;
  v23 = [v22 validateUpdate:v4];
  if (v23)
  {
    v24 = v23;
    sub_100032554();

    v22 = v24;
    goto LABEL_17;
  }

  [*(v3 + v14) applyControlUpdate:v4];
  v25 = *(v3 + v14);
  if (v25)
  {
    v26 = v25;
    if (([v26 quietUIActive] & 1) == 0 && !*(v3 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer))
    {
      sub_100031990();
    }
  }

  v27 = &PPSCreateTelemetryIdentifier_ptr;
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28 || (v29 = v28, v22 = v22, v30 = [v29 sliderType], v22, v30 != 5) && v30 != 6 && v30 != 7 || (v31 = objc_msgSend(a1, "controls")) == 0)
  {
LABEL_17:

    return;
  }

  v32 = v31;
  v60 = sub_10002C9F0(0, &unk_1000604F0, CAMAbstractOverlayServiceControl_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v33 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v63 = a1;
    if (i)
    {
      v35 = 0;
      v61 = v33 & 0xFFFFFFFFFFFFFF8;
      v62 = v33 & 0xC000000000000001;
      while (1)
      {
        if (v62)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v35 >= *(v61 + 16))
          {
            goto LABEL_72;
          }

          v36 = *(v33 + 8 * v35 + 32);
        }

        v37 = v36;
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v39 = v4;
        v40 = v27[366];
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          v42 = v41;
          a1 = i;
          v43 = v33;
          v44 = v27;
          v45 = v37;
          v46 = [v42 sliderType];

          v48 = v46 == 5 || v46 == 6 || v46 == 7;
          if (v48 && (static NSObject.== infix(_:_:)() & 1) == 0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v49 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v4 = v39;
          v27 = v44;
          v33 = v43;
          i = a1;
        }

        else
        {
        }

        ++v35;
        if (v38 == i)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_54:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
    {
      v50 = _swiftEmptyArrayStorage[2];
      if (!v50)
      {
        break;
      }

      goto LABEL_57;
    }

    v50 = _CocoaArrayWrapper.endIndex.getter();
    if (!v50)
    {
      break;
    }

LABEL_57:
    a1 = 0;
LABEL_58:
    v33 = a1;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_74;
        }

        v51 = _swiftEmptyArrayStorage[v33 + 4];
      }

      v52 = v51;
      a1 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v53 = v27[366];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (a1 != v50)
        {
          goto LABEL_58;
        }

        goto LABEL_77;
      }

      ++v33;
      if (a1 == v50)
      {
        goto LABEL_77;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

LABEL_77:

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v55 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_79;
    }

LABEL_86:

    goto LABEL_17;
  }

  v55 = _CocoaArrayWrapper.endIndex.getter();
  if (!v55)
  {
    goto LABEL_86;
  }

LABEL_79:
  if (v55 >= 1)
  {
    v56 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = _swiftEmptyArrayStorage[v56 + 4];
      }

      v58 = v57;
      ++v56;
      [v4 floatValue];
      v59 = [v58 updateWithFloatValue:?];
      [v63 applyControlUpdate:v59];
    }

    while (v55 != v56);
    goto LABEL_86;
  }

  __break(1u);
}

void sub_100032554()
{
  if (qword_10005F528 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100016DD8(v0, qword_1000616B8);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "SceneDelegate: Invalid control update from overlay: %{public}@", v3, 0xCu);
    sub_100035628(v4);
  }

  v6 = [objc_opt_self() capabilities];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 isInternalInstall];

  if (v8)
  {
LABEL_9:
    sub_100017000(&qword_100060078, &qword_100040A08);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_1000328A8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
    if (v3 && (v4 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer, (v5 = *(Strong + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer)) != 0))
    {
      v6 = Strong;
      sub_10002C9F0(0, &qword_10005F720, NSTimer_ptr);
      v7 = v3;
      v8 = a1;
      v9 = v5;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        [v7 setQuietUIActive:0];

        v7 = *&v6[v4];
        *&v6[v4] = 0;
      }
    }

    else
    {
      v7 = Strong;
    }
  }
}

void sub_100032A8C(uint64_t a1, int a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
  if (v2)
  {
    v4 = *(a1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController);
    if (v4)
    {
      v6 = v2;
      v19 = v4;
      v7 = [v6 auditToken];
      v8 = [v7 pid];

      if (v8 == a2)
      {
        v9 = [v19 overlayView];
        v10 = [v9 isSliderVisible];

        [v19 dismissOverlayForced:0];
        if (v10)
        {
          v11 = [v19 overlayView];
          v12 = [v11 isSliderVisible];

          if ((v12 & 1) == 0)
          {
            v13 = [objc_opt_self() sharedInstance];
            v14 = [v13 analyticsCollector];

            sub_100020B60(0);
          }
        }

        v15 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer;
        [*(a1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer) invalidate];
        v16 = *(a1 + v15);
        *(a1 + v15) = 0;

        v17 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer;
        [*(a1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer) invalidate];
        v18 = *(a1 + v17);
        *(a1 + v17) = 0;

        [v6 setQuietUIActive:0];
      }
    }
  }
}

uint64_t sub_100032C7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100032D14()
{
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController] = 0;
  v1 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientMonitor;
  *&v0[v1] = [objc_allocWithZone(CAMOverlayClientMonitor) init];
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_figCameraViewfinder] = 0;
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_sceneTeardownTimer] = 0;
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientAuditToken] = 0;
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection] = 0;
  v2 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_lastUsedControl;
  *&v0[v2] = sub_10002D4D8();
  v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_isFocusLockContactRecognizerInstalled] = 0;
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate____lazy_storage___focusLockContactRecognizer] = 0;
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer] = 0;
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for OverlaySceneDelegate();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100032E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100033104(void *a1, const char *a2, char a3, const char *a4)
{
  if (a1)
  {
    [a1 clientAuditToken];
    v24 = v27;
    v25 = v26;
    v8 = objc_allocWithZone(BSAuditToken);
    v26 = v25;
    v27 = v24;
    v9 = [v8 initWithAuditToken:&v26];
    v10 = *(v4 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientAuditToken);
    if (v10)
    {
      v11 = v10;
      if ([v11 hasSameProcessAsAuditToken:v9])
      {
        v12 = v4;
        if (qword_10005F528 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_100016DD8(v13, qword_1000616B8);
        v14 = v9;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 67240192;
          *(v17 + 4) = [v14 pid];

          _os_log_impl(&_mh_execute_header, v15, v16, a2, v17, 8u);
        }

        else
        {

          v15 = v14;
        }

        v22 = *(v12 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController);
        if (v22)
        {
          v23 = v22;
          [v23 updateUIForCapturingMovieRecording:a3 & 1];
        }

LABEL_17:

        return;
      }
    }

    if (qword_10005F528 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100016DD8(v18, qword_1000616B8);
    v19 = v9;
    v11 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67240192;
      *(v21 + 4) = [v19 pid];

      _os_log_impl(&_mh_execute_header, v11, v20, a4, v21, 8u);
    }

    else
    {

      v11 = v19;
    }

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_10003344C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100033518(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100035C70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000170F4(v11);
  return v7;
}

unint64_t sub_100033518(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100033624(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100033624(uint64_t a1, unint64_t a2)
{
  v4 = sub_100033670(a1, a2);
  sub_1000337A0(&off_100055B70);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100033670(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10003388C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003388C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000337A0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100033900(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10003388C(uint64_t a1, uint64_t a2)
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

  sub_100017000(&qword_100060548, &qword_100040C20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100033900(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017000(&qword_100060548, &qword_100040C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000339F4(void *a1, int64_t a2, char a3)
{
  result = sub_100033BA4(a1, a2, a3, *v3, &qword_100060570, &qword_100040C48, &qword_100060578, &qword_100040C50);
  *v3 = result;
  return result;
}

char *sub_100033A34(char *a1, int64_t a2, char a3)
{
  result = sub_100033A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100033A54(void *a1, int64_t a2, char a3)
{
  result = sub_100033CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100033A74(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017000(&qword_100060558, &unk_100040C30);
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

void *sub_100033BA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100017000(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100017000(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100033CEC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100017000(&unk_100060130, &qword_100040C60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100017000(&unk_1000605B0, &qword_100040B80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100033E24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100033FD0(a1, a2, v6);
}

unint64_t sub_100033E9C(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  return sub_100034088(a1, v4);
}

unint64_t sub_100033F04(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000340F4(a1, v4);
}

unint64_t sub_100033F48(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100034088(a1, v4);
}

unint64_t sub_100033F8C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000341BC(a1, v4);
}

unint64_t sub_100033FD0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100034088(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000340F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100035D78(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100035DD4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000341BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10002C9F0(0, &qword_1000605A0, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_100034290(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10002C9F0(0, &qword_100060538, &off_100054B20);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10002C9F0(0, &qword_100060538, &off_100054B20);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

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

void sub_1000344B4(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = qword_10005F528;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100016DD8(v8, qword_1000616B8);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v5;
      *v13 = v5;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "SceneDelegate: Connecting new scene %{public}@", v12, 0xCu);
      sub_100035628(v13);
    }

    v15 = [objc_allocWithZone(CAMSystemOverlayViewController) init];
    [v15 setDelegate:v2];
    v16 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController);
    *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController) = v15;
    v17 = v15;

    v18 = [objc_allocWithZone(type metadata accessor for OverlayWindow()) initWithWindowScene:v5];
    [v18 setRootViewController:v17];
    v19 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_window) = v18;

    [v18 makeKeyAndVisible];
    v20 = [objc_opt_self() sharedInstance];
    [v20 addObserver:v2];

    [*(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientMonitor) beginMonitoringScene:v5 delegate:v2];
    sub_10002FF5C();
    sub_10002F440();
    v26 = [objc_opt_self() sharedInstance];
    [v26 addObserver:v2];
  }

  else
  {
    _StringGuts.grow(_:)(43);

    v21 = [a1 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100034828(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = qword_10005F528;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100016DD8(v6, qword_1000616B8);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240192;
      *(v10 + 4) = [v7 pid];

      _os_log_impl(&_mh_execute_header, v8, v9, "SceneDelegate: Client monitor PID: %{public}d", v10, 8u);
    }

    else
    {

      v8 = v7;
    }

    v17 = [objc_allocWithZone(FigCameraViewfinder) init];
    v18 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_figCameraViewfinder);
    *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_figCameraViewfinder) = v17;
    v19 = v17;

    sub_10002C9F0(0, &qword_100060580, OS_dispatch_queue_ptr);
    v20 = static OS_dispatch_queue.main.getter();
    [v19 setDelegate:v2 queue:v20];

    sub_10002C348(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 startWithOptions:isa];
  }

  else
  {
    if (qword_10005F528 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100016DD8(v11, qword_1000616B8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SceneDelegate: Client monitor reported no button client", v14, 2u);
    }

    v15 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_figCameraViewfinder;
    [*(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_figCameraViewfinder) stop];
    v16 = *(v2 + v15);
    *(v2 + v15) = 0;

    v7 = 0;
  }

  v22 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientAuditToken);
  *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientAuditToken) = a1;

  v23 = v7;
  sub_10002FF5C();

  sub_10002F440();
}

void sub_100034B30()
{
  v1 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController);
  if (v1)
  {
    v2 = [v1 overlayView];
    if (v2)
    {
      v6 = v2;
      v3 = [v2 isSliderVisible];
      sub_100030524();
      if (v3 && ([v6 isSliderVisible] & 1) == 0)
      {
        v4 = [objc_opt_self() sharedInstance];
        v5 = [v4 analyticsCollector];

        sub_100020B60(4);
      }
    }
  }
}

void sub_100034C24()
{
  v1 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
  if (v1)
  {
    v2 = v1;
    if (([v2 quietUIActive] & 1) == 0 && !*(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer))
    {
      sub_100031990();
    }
  }
}

void sub_100034C9C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_lastUsedControl);
  *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_lastUsedControl) = a1;
  v4 = a1;

  sub_10002D6BC(a1);
  v5 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
  if (v5)
  {
    v6 = v5;
    v7 = [v4 identifier];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v6 sendActiveControlIdentifier:v7];
  }

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 analyticsCollector];

  sub_10002537C(v4);
}

void sub_100034DC0()
{
  v1 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer;
  [*(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUITimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_connection);
  if (v3)
  {
    v13 = v3;
    if ([v13 quietUIActive])
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100035D70;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002EC64;
      aBlock[3] = &unk_100056C40;
      v5 = _Block_copy(aBlock);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:1.0];
      _Block_release(v5);

      v8 = OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer;
      v9 = *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer);
      *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_quietUIEndTimer) = v7;

      v10 = [objc_opt_self() currentRunLoop];
      v11 = *(v0 + v8);
      if (v11)
      {
        v12 = v10;
        [v10 addTimer:v11 forMode:NSRunLoopCommonModes];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100034FAC(int a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C9F0(0, &qword_100060580, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100035D0C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032C7C;
  aBlock[3] = &unk_100056C18;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100035D18();
  sub_100017000(&qword_100060590, &qword_100040C58);
  sub_10001B6A8(&qword_100060598, &qword_100060590, &qword_100040C58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v16);
}

void sub_100035278(void *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    [a1 clientAuditToken];
    v22 = v25;
    v23 = v24;
    v6 = objc_allocWithZone(BSAuditToken);
    v24 = v23;
    v25 = v22;
    v7 = [v6 initWithAuditToken:&v24];
    v8 = *(v3 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_clientAuditToken);
    if (v8)
    {
      v9 = v8;
      if ([v9 hasSameProcessAsAuditToken:v7])
      {
        v10 = v3;
        if (qword_10005F528 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_100016DD8(v11, qword_1000616B8);
        v12 = v7;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 67240192;
          *(v15 + 4) = [v12 pid];

          _os_log_impl(&_mh_execute_header, v13, v14, a2, v15, 8u);
        }

        else
        {

          v13 = v12;
        }

        v20 = *(v10 + OBJC_IVAR____TtC18CameraOverlayAngel20OverlaySceneDelegate_overlayController);
        if (v20)
        {
          v21 = [v20 overlayView];
          [v21 setSliderFeedbackDisabled:0];
        }

LABEL_17:

        return;
      }
    }

    if (qword_10005F528 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100016DD8(v16, qword_1000616B8);
    v17 = v7;
    v9 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67240192;
      *(v19 + 4) = [v17 pid];

      _os_log_impl(&_mh_execute_header, v9, v18, a3, v19, 8u);
    }

    else
    {

      v9 = v17;
    }

    goto LABEL_17;
  }

  __break(1u);
}

id sub_100035544()
{
  v0 = CAMOverlayErrorDomain;
  v5 = NSDebugDescriptionErrorKey;
  v1 = @"InvalidIdentifier";
  v6 = @"InvalidIdentifier";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:v0 code:-100 userInfo:v2];

  return v3;
}

uint64_t sub_100035628(uint64_t a1)
{
  v2 = sub_100017000(&unk_100060500, &qword_100040BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100035690()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000356D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1000356E8()
{
  keyExistsAndHasValidFormat = 0;
  v0 = CFPreferencesGetAppBooleanValue(CAMUserPreferenceCameraAdjustmentsEnabled, @"com.apple.camera", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v1 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Inspecting defaults for Camera Control usage history", buf, 2u);
    }

    v2 = CFPreferencesCopyAppValue(@"systemOverlay.swipeToPresentEnabled", @"com.apple.camera");
    v3 = CFPreferencesCopyAppValue(@"systemOverlay.halfPressGestureEnabled", @"com.apple.camera");
    v4 = [v2 BOOLValue];
    v5 = [v3 BOOLValue];
    if (v2 && (v4 & 1) == 0 && v3 && (v5 & 1) == 0)
    {
      v6 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disabling camera adjustments by default due to disabled gestures", buf, 2u);
      }

      v0 = 0;
      goto LABEL_38;
    }

    if ((v4 | v5))
    {
      v6 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enabling camera adjustments by default due to explicitly enabled gestures", buf, 2u);
      }

      v0 = 1;
      goto LABEL_38;
    }

    v7 = CFPreferencesCopyAppValue(@"systemOverlay.hidesClientControls", @"com.apple.camera");
    v8 = CFPreferencesCopyAppValue(@"systemOverlay.menuToggleMaxIntervalMilliseconds", @"com.apple.camera");
    v9 = CFPreferencesCopyAppValue(@"CameraButtonSensitivity", @"com.apple.Accessibility");
    v6 = v9;
    if (v7 || v9 || v8)
    {
      v16 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Enabling camera adjustments by default due to behavior defaults written", buf, 2u);
      }

      v0 = 1;
      goto LABEL_37;
    }

    v10 = @"com.apple.CameraOverlayAngel";
    v11 = @"systemOverlay.lastUsedControl";
    v12 = +[NSBundle mainBundle];
    v13 = [v12 bundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.CameraOverlayAngel"];

    if (v14)
    {
      v15 = +[NSUserDefaults standardUserDefaults];
      v16 = [v15 objectForKey:@"systemOverlay.lastUsedControl"];
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v30 = 0;
      v15 = [LSBundleRecord bundleRecordWithBundleIdentifier:@"com.apple.CameraOverlayAngel" allowPlaceholder:0 error:&v30];
      v19 = v30;
      v18 = v19;
      if (!v15 || v19)
      {
        v21 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v32 = v18;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find CameraOverlayAngel bundle record: %{public}@", buf, 0xCu);
        }

        v22 = 0;
      }

      else
      {
        v20 = [v15 dataContainerURL];
        v21 = [v20 path];

        v22 = _CFPreferencesCopyAppValueWithContainer();
      }

      v17 = v22;
      v16 = v17;
    }

    v0 = v16 != 0;
    v23 = os_log_create("com.apple.camera", "Camera");
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v24)
      {
        *buf = 138412290;
        v32 = v16;
        v25 = "Enabling camera adjustments by default due to last-used control data: %@";
        v26 = v23;
        v27 = 12;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }

    else if (v24)
    {
      *buf = 0;
      v25 = "Disabling camera adjustments by default due to lack of usage history";
      v26 = v23;
      v27 = 2;
      goto LABEL_35;
    }

LABEL_37:
LABEL_38:
  }

  return v0;
}

unint64_t sub_100035C08()
{
  result = qword_100060540;
  if (!qword_100060540)
  {
    sub_10002C9F0(255, &qword_100060538, &off_100054B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060540);
  }

  return result;
}

uint64_t sub_100035C70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100035CD4()
{

  return _swift_deallocObject(v0, 28, 7);
}

unint64_t sub_100035D18()
{
  result = qword_100060588;
  if (!qword_100060588)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060588);
  }

  return result;
}

uint64_t sub_100035EB4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10001AC64(v3, a2);
  sub_100016DD8(v3, a2);
  return Logger.init(subsystem:category:)();
}

void sub_10003602C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Swipe-to-enter coaching phase: %{public}@", &v2, 0xCu);
}

void sub_1000360A4(void *a1)
{
  [a1 count];
  sub_1000110B0();
  sub_1000110A0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100036128(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "OverlayVC: Attempt to request text for control index %lu with only %lu controls", &v3, 0x16u);
}

void sub_1000361B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "OverlayVC: Attempt to set value for nil control %{public}@", &v2, 0xCu);
}

void sub_100036228(uint64_t a1)
{
  v6 = CAMStringForOverlayVisibilityReason(a1);
  sub_1000110A0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000362FC(void *a1)
{
  [a1 count];
  sub_1000110B0();
  sub_1000110A0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100036394(void *a1)
{
  v1 = [a1 _loggingHeader];
  sub_100014944();
  sub_10001495C(&_mh_execute_header, v2, v3, "%{public}@: Attempted to send invalid active control ID %{public}@", v4, v5, v6, v7, v8);
}

void sub_100036424(id *a1)
{
  v1 = [*a1 _loggingHeader];
  sub_100014944();
  sub_10001495C(&_mh_execute_header, v2, v3, "%{public}@: %{public}@", v4, v5, v6, v7, v8);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t Tips.Rule.init<A>(_:_:)()
{
  return Tips.Rule.init<A>(_:_:)();
}

{
  return Tips.Rule.init<A>(_:_:)();
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  v4 = _CGSizeApplyAffineTransform(size, t);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}