Swift::Int sub_10010E83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011801F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + v4++);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v9))
          {
            if (*(*(v3 + 48) + v9) == 1)
            {
              v13 = 0x657469726F766166;
            }

            else
            {
              v13 = 0x64616F6C6E776F64;
            }

            v14 = 0xE900000000000073;
            if (!v6)
            {
LABEL_10:
              v15 = 0xE300000000000000;
              if (v13 != 7105633)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v14 = 0xE300000000000000;
            v13 = 7105633;
            if (!v6)
            {
              goto LABEL_10;
            }
          }

          if (v6 == 1)
          {
            v16 = 0x657469726F766166;
          }

          else
          {
            v16 = 0x64616F6C6E776F64;
          }

          v15 = 0xE900000000000073;
          if (v13 != v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          if (v14 == v15)
          {

            goto LABEL_4;
          }

LABEL_19:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (v4 == v21)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_10010EAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_10010FC20(&qword_101180550);
  v3 = static _SetStorage.allocate(capacity:)();
  v4 = 0;
  v5 = v3 + 56;
  v26 = v1;
  while (2)
  {
    v6 = (a1 + 32 + 32 * v4);
    v27 = *v6;
    v28 = v6[1];
    Hasher.init(_seed:)();
    if (v28.i64[1])
    {
      if (v28.i64[1] == 1)
      {
        Hasher._combine(_:)(2uLL);
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v27.i64[1])
        {
          Hasher._combine(_:)(1u);

          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        String.hash(into:)();
      }
    }

    else
    {
      Hasher._combine(_:)(1uLL);
    }

    result = Hasher._finalize()();
    v8 = -1 << *(v3 + 32);
    v9 = result & ~v8;
    v10 = v9 >> 6;
    v11 = *(v5 + 8 * (v9 >> 6));
    v12 = 1 << v9;
    v13 = *(v3 + 48);
    if (((1 << v9) & v11) == 0)
    {
      v15 = v27;
      goto LABEL_33;
    }

    v14 = ~v8;
    v15 = v27;
    do
    {
      v16 = (v13 + 32 * v9);
      v17 = v16[1];
      v18 = v16[1].i64[1];
      if (v18)
      {
        if (v18 == 1)
        {
          if (v28.i64[1] == 1)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v28.i64[1] < 2uLL)
          {
            goto LABEL_16;
          }

          if (v16->i64[1])
          {
            if (!v27.i64[1])
            {
              goto LABEL_16;
            }

            v19 = vmovn_s64(vceqq_s64(*v16, v15));
            if ((v19.i32[0] & v19.i32[1] & 1) == 0)
            {
              v25 = v16[1];
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              v17 = v25;
              v15 = v27;
              if ((result & 1) == 0)
              {
                goto LABEL_16;
              }
            }
          }

          else if (v27.i64[1])
          {
            goto LABEL_16;
          }

          v20 = vmovn_s64(vceqq_s64(v17, v28));
          if (v20.i32[0] & v20.i32[1] & 1) != 0 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v15 = v27, (result))
          {
            sub_100110A18(v27.i64[0], v27.i64[1], v28.i64[0], v28.u64[1]);
            goto LABEL_4;
          }
        }
      }

      else if (!v28.i64[1])
      {
        goto LABEL_4;
      }

LABEL_16:
      v9 = (v9 + 1) & v14;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
    }

    while ((v11 & (1 << v9)) != 0);
    v13 = *(v3 + 48);
LABEL_33:
    *(v5 + 8 * v10) = v11 | v12;
    v21 = (v13 + 32 * v9);
    *v21 = v15;
    v21[1] = v28;
    v22 = *(v3 + 16);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      *(v3 + 16) = v24;
LABEL_4:
      if (++v4 == v26)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10010ED84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011805D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      Hasher.init(_seed:)();
      if (v6)
      {
        v7 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v7 = 0x487972617262696CLL;
      }

      if (v6)
      {
        v8 = 0xEF72656461654877;
      }

      else
      {
        v8 = 0xED00007265646165;
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v23 = v6;
        v15 = ~v10;
        do
        {
          if (*(*(v3 + 48) + v11))
          {
            v16 = 0x6F4E6E657473696CLL;
          }

          else
          {
            v16 = 0x487972617262696CLL;
          }

          if (*(*(v3 + 48) + v11))
          {
            v17 = 0xEF72656461654877;
          }

          else
          {
            v17 = 0xED00007265646165;
          }

          if (v16 == v7 && v17 == v8)
          {

            goto LABEL_4;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
        LOBYTE(v6) = v23;
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10010EFBC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&unk_101180280);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_10004056C(v7, v1);
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
        sub_100009F78(0, &qword_101183D40);
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
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
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
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
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
        sub_100009F78(0, &qword_101183D40);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
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

unint64_t sub_10010F2AC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_10010FC20(&qword_101180240);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
LABEL_12:
    while (1)
    {
      result = sub_1007E97F0(v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      Hasher.init(_seed:)();
      v10 = sub_10047E418();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = ~(-1 << v3[32]);
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *&v6[8 * (i >> 6)];
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        result = sub_10047E418();
        if (result == *(v9 + 56))
        {
          swift_unknownObjectRelease();
          if (v7 == v5)
          {
            return v3;
          }

          goto LABEL_12;
        }
      }

      *&v6[8 * (i >> 6)] = (1 << i) | v13;
      *(*(v3 + 6) + 8 * i) = v9;
      v14 = *(v3 + 2);
      v8 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v8)
      {
        goto LABEL_30;
      }

      *(v3 + 2) = v15;
      if (v7 == v5)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v16 = 0;
    v25 = v1 + 32;
    v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v16 != v17)
    {
      v18 = *(v25 + 8 * v16);
      Hasher.init(_seed:)();
      v19 = sub_10047E418();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = ~(-1 << v3[32]);
      for (j = result & v20; ; j = (j + 1) & v20)
      {
        v22 = *&v6[8 * (j >> 6)];
        if (((1 << j) & v22) == 0)
        {
          break;
        }

        result = sub_10047E418();
        if (result == *(v18 + 56))
        {
          goto LABEL_21;
        }
      }

      *&v6[8 * (j >> 6)] = (1 << j) | v22;
      *(*(v3 + 6) + 8 * j) = v18;
      v23 = *(v3 + 2);
      v8 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v8)
      {
        goto LABEL_32;
      }

      *(v3 + 2) = v24;

LABEL_21:
      if (++v16 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_10010F538(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&unk_101180380);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_1007E914C(v7, v1);
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
        sub_100009F78(0, &qword_101181F70);
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
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
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
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
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
        sub_100009F78(0, &qword_101181F70);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
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

Swift::Int sub_10010F828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011802A0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v22 = a1 + 32;
    while (1)
    {
      v23 = v4;
      v6 = *(v22 + v4);
      Hasher.init(_seed:)();
      Library.Menu.Identifier.rawValue.getter(v6);
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xD000000000000029;
          v14 = "nt";
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xD000000000000025;
              v14 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v13 = 0xD000000000000023;
              v14 = "LibraryView.Playlists";
              break;
            case 3:
              v13 = 0xD000000000000022;
              v14 = "LibraryView.Artists";
              break;
            case 4:
              v13 = 0xD000000000000021;
              v14 = "LibraryView.Albums";
              break;
            case 5:
              v13 = 0xD000000000000026;
              v14 = "LibraryView.Songs";
              break;
            case 6:
              v13 = 0xD000000000000027;
              v14 = "LibraryView.MadeForYou";
              break;
            case 7:
              v13 = 0xD000000000000022;
              v14 = "LibraryView.MusicVideos";
              break;
            case 8:
              v13 = 0xD000000000000028;
              v14 = "LibraryView.Genres";
              break;
            case 9:
              v13 = 0xD000000000000025;
              v14 = "LibraryView.Compilations";
              break;
            case 0xA:
              v13 = 0xD000000000000021;
              v14 = "LibraryView.Composers";
              break;
            case 0xB:
              v13 = 0xD000000000000026;
              v14 = "LibraryView.Shows";
              break;
            case 0xC:
              v13 = 0xD000000000000027;
              v14 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v15 = v14 | 0x8000000000000000;
          v16 = 0xD000000000000029;
          v17 = "nt";
          switch(v6)
          {
            case 1:
              v16 = 0xD000000000000025;
              v17 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v16 = 0xD000000000000023;
              v17 = "LibraryView.Playlists";
              break;
            case 3:
              v16 = 0xD000000000000022;
              v17 = "LibraryView.Artists";
              break;
            case 4:
              v16 = 0xD000000000000021;
              v17 = "LibraryView.Albums";
              break;
            case 5:
              v16 = 0xD000000000000026;
              v17 = "LibraryView.Songs";
              break;
            case 6:
              v16 = 0xD000000000000027;
              v17 = "LibraryView.MadeForYou";
              break;
            case 7:
              v16 = 0xD000000000000022;
              v17 = "LibraryView.MusicVideos";
              break;
            case 8:
              v16 = 0xD000000000000028;
              v17 = "LibraryView.Genres";
              break;
            case 9:
              v16 = 0xD000000000000025;
              v17 = "LibraryView.Compilations";
              break;
            case 10:
              v16 = 0xD000000000000021;
              v17 = "LibraryView.Composers";
              break;
            case 11:
              v16 = 0xD000000000000026;
              v17 = "LibraryView.Shows";
              break;
            case 12:
              v16 = 0xD000000000000027;
              v17 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v13 == v16 && v15 == (v17 | 0x8000000000000000))
          {
            break;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
          if ((v11 & (1 << v9)) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_36:
        *(v5 + 8 * v10) = v11 | v12;
        *(*(v3 + 48) + v9) = v6;
        v19 = *(v3 + 16);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v21;
      }

LABEL_4:
      v4 = v23 + 1;
      if (v23 + 1 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10010FC20(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10010FC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10010FC98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10010FCE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SmartTransitionAnimation.CircleDrawing(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10010FDE0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WidgetMusicItem.ArtworkColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s5SpecsV22SpringTimingParametersVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void type metadata accessor for State(uint64_t a1)
{
  sub_100011958(a1, &qword_101180080);
}

{
  sub_100011958(a1, &qword_1011B9AC0);
}

__n128 sub_10010FE68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10010FE84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10010FED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10010FFCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100110180()
{
  result = qword_1011800D0;
  if (!qword_1011800D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011800D0);
  }

  return result;
}

unint64_t sub_10011021C(uint64_t a1)
{
  result = sub_100110244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100110244()
{
  result = qword_1011801B8;
  if (!qword_1011801B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011801B8);
  }

  return result;
}

Swift::Int sub_1001102AC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10010FC20(a2);
    v4 = static _SetStorage.allocate(capacity:)();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100110448()
{
  result = qword_10118CD60;
  if (!qword_10118CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CD60);
  }

  return result;
}

unint64_t sub_10011049C()
{
  result = qword_1011803A0;
  if (!qword_1011803A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011803A0);
  }

  return result;
}

Swift::Int sub_100110518(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10010FC20(a2);
    v4 = static _SetStorage.allocate(capacity:)();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (v11 != *(v18 + v14))
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10011064C(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10010FC20(&qword_101180400);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10010FFCC(&qword_101180408, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10010FFCC(&qword_101180410, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10011096C()
{
  result = qword_1011803D8;
  if (!qword_1011803D8)
  {
    sub_1001109D0(&qword_101180370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011803D8);
  }

  return result;
}

uint64_t sub_1001109D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100110A18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
  }

  return result;
}

uint64_t sub_100110A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_100110AC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_100110C44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100110C58(uint64_t a1, int a2)
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

uint64_t sub_100110C78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100110D3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100110D5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

unint64_t sub_100111A28()
{
  result = qword_101180830;
  if (!qword_101180830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180830);
  }

  return result;
}

uint64_t sub_100111C74(uint64_t a1)
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

NSString sub_100111D84()
{
  result = String._bridgeToObjectiveC()();
  qword_101218600 = result;
  return result;
}

id Window.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene:a1];

  return v3;
}

id Window.init(windowScene:)(void *a1)
{
  v2 = sub_10002ECEC(a1);

  return v2;
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

char *Window.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC5Music6Window_screenDimensionsDidChangeHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC5Music6Window_boundsSizeDidChangeHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection] = 0;
  v12 = [objc_opt_self() mainScreen];
  v13 = UIScreen.dimensions.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v5[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions];
  *v20 = a3;
  v20[1] = a4;
  v20[2] = v13;
  *(v20 + 3) = v15;
  *(v20 + 4) = v17;
  *(v20 + 5) = v19;
  v32.receiver = v5;
  v32.super_class = type metadata accessor for Window();
  v21 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 screen];
  v23 = UIScreen.dimensions.getter();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = &v21[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions];
  v30[2] = v23;
  *(v30 + 3) = v25;
  *(v30 + 4) = v27;
  *(v30 + 5) = v29;

  return v21;
}

id CTRunRef.PartialRunView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void Window.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music6Window_screenDimensionsDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC5Music6Window_boundsSizeDidChangeHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music6Window_overrideTraitCollection) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100112228(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1001122B0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id Window.rootElementScreen.getter()
{
  v1 = [v0 screen];

  return v1;
}

Swift::Void __swiftcall Window.sendEvent(_:)(UIEvent a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "sendEvent:", a1.super.isa);
  v3 = [objc_opt_self() defaultCenter];
  if (qword_10117F190 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_101218600 object:v1];
}

Swift::Void __swiftcall Window._updateTraitsAndNotify(_:)(Swift::Bool a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "_updateWindowTraitsAndNotify:", a1);
}

Swift::Void __swiftcall Window.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", isa);
}

id Window.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100112718(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t sub_1001127A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

uint64_t getEnumTagSinglePayload for MusicWidgetUpdateReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicWidgetUpdateReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1001129D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100112A1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100112A70()
{
  v1 = *v0;
  v2 = 0xD000000000000014;
  v3 = 0xD000000000000016;
  if (v1 == 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100112B1C()
{
  result = qword_101180BC8;
  if (!qword_101180BC8)
  {
    sub_1001109D0(&qword_101180BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180BC8);
  }

  return result;
}

unint64_t sub_100112B84()
{
  result = qword_101180BD8;
  if (!qword_101180BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180BD8);
  }

  return result;
}

char *sub_100112BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = objc_allocWithZone(type metadata accessor for LibraryTableNavigationTitleView.FilterButton());
  *&v3[OBJC_IVAR____TtC5Music31LibraryTableNavigationTitleView_filterButton] = sub_100113B40(a1, a2);
  v12.receiver = v3;
  v12.super_class = type metadata accessor for LibraryTableNavigationTitleView();
  v7 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = *&v7[OBJC_IVAR____TtC5Music31LibraryTableNavigationTitleView_filterButton];
  v9 = v7;
  [v9 addSubview:v8];
  sub_10010FC20(&unk_101182D80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBC6B0;
  *(v10 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v10 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_100112EC0(void *a1, uint64_t a2, void *a3)
{
  v48 = a3;
  v4 = sub_10010FC20(&unk_101183AB0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  UIButton.configuration.getter();
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    swift_beginAccess();
    (*(v11 + 16))(v13, v14, v10);
    v16 = v13;
    if (v15(v9, 1, v10) != 1)
    {
      sub_1000095E8(v9, &unk_101183AB0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = v13;
  }

  if ([a1 isSelected])
  {
    v17 = "l.decrease.circle";
  }

  else
  {
    v17 = "v16@?0@UIButton8";
  }

  v18 = String._bridgeToObjectiveC()();

  v19 = [objc_opt_self() systemImageNamed:v18];

  UIButton.Configuration.image.setter();
  v20 = [a1 state];
  if (v20 > 0xD)
  {
LABEL_23:
    if (qword_10117F1B0 != -1)
    {
      swift_once();
    }

    v21 = qword_101180BF8;
LABEL_26:

    goto LABEL_27;
  }

  if (((1 << v20) & 0x30) != 0)
  {
    if (qword_10117F1B8 != -1)
    {
      swift_once();
    }

    v21 = qword_101180C00;
    goto LABEL_26;
  }

  if (((1 << v20) & 0x300) == 0)
  {
    if (((1 << v20) & 0x3000) != 0)
    {
      sub_10010FC20(&qword_101183990);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100EBC6D0;
      if (qword_10117F198 != -1)
      {
        swift_once();
      }

      v22 = qword_101180BE0;
      *(v21 + 32) = qword_101180BE0;
      v17 = qword_10117F1A0;
      v23 = v22;
      if (v17 != -1)
      {
        swift_once();
      }

      v24 = qword_101180BE8;
      *(v21 + 40) = qword_101180BE8;
      v25 = v24;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  sub_10010FC20(&qword_101183990);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6C0;
  if (qword_10117F1C0 != -1)
  {
    swift_once();
  }

  v26 = qword_101180C08;
  *(v21 + 32) = qword_101180C08;
  v27 = v26;
LABEL_27:
  v49 = v16;
  if (v21 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
      goto LABEL_29;
    }

LABEL_37:

    goto LABEL_38;
  }

  v28 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_37;
  }

LABEL_29:
  v50 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v28 < 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v45 = v7;
  v46 = v11;
  v47 = v10;
  v29 = 0;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v30 = sub_1007E90AC(v29, v21);
    }

    else
    {
      v30 = *(v21 + 8 * v29 + 32);
    }

    v31 = v30;
    ++v29;
    v32 = [a1 traitCollection];
    v33 = [v31 resolvedColorWithTraitCollection:v32];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v28 != v29);

  v11 = v46;
  v10 = v47;
  v7 = v45;
LABEL_38:
  sub_100009F78(0, &qword_101180C98);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [objc_opt_self() configurationWithPaletteColors:isa];

  v36 = [v48 configurationByApplyingConfiguration:v35];
  v28 = v49;
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v17 = &selRef__replacePlaceholderViewWithView_;
  if ([a1 isFocused])
  {
    if (qword_10117F1C0 == -1)
    {
LABEL_40:
      v37 = qword_101180C08;
      goto LABEL_42;
    }

LABEL_51:
    swift_once();
    goto LABEL_40;
  }

  v38 = [objc_opt_self() labelColor];
LABEL_42:
  UIButton.Configuration.baseForegroundColor.setter();
  if ([a1 *(v17 + 408)])
  {
    if (qword_10117F1C8 != -1)
    {
      swift_once();
    }

    v39 = qword_101180C10;
  }

  else
  {
    v40 = [objc_opt_self() clearColor];
  }

  v41 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v41(&v50, 0);
  (*(v11 + 16))(v7, v28, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  UIButton.configuration.setter();
  v42 = [a1 isHighlighted];
  v43 = 1.0;
  if (v42)
  {
    v43 = 0.5;
  }

  [a1 setAlpha:v43];
  return (*(v11 + 8))(v28, v10);
}

id sub_100113758(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_10011379C()
{
  sub_10010FC20(&qword_101183990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6C0;
  if (qword_10117F198 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  v1 = qword_101180BE0;
  *(v0 + 32) = qword_101180BE0;
  qword_101180BF8 = v0;

  return v1;
}

id sub_100113844()
{
  sub_10010FC20(&qword_101183990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  if (qword_10117F1A0 != -1)
  {
    swift_once();
  }

  v1 = qword_101180BE8;
  *(v0 + 32) = qword_101180BE8;
  v2 = qword_10117F1A8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_101180BF0;
  *(v0 + 40) = qword_101180BF0;
  qword_101180C00 = v0;

  return v4;
}

id sub_10011397C(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

uint64_t sub_1001139DC()
{
  static Edge.Set.all.getter();
  EdgeInsets.init(_:length:)(5.0);
  result = NSDirectionalEdgeInsets.init(_:)();
  qword_101180C18 = v1;
  unk_101180C20 = v2;
  qword_101180C28 = v3;
  unk_101180C30 = v4;
  return result;
}

id sub_100113AA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100113B40(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = a1;
  v3 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v3 - 8);
  v43 = &v34 - v4;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v5 - 8);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for LibraryTableNavigationTitleView.FilterButton();
  v45.receiver = v2;
  v45.super_class = v15;
  v16 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  static UIView.Corner.value(_:continuous:)();
  v17 = type metadata accessor for UIView.Corner();
  (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  UIView.corner.setter();
  [v16 setTintAdjustmentMode:1];
  v18 = type metadata accessor for UIButton.Configuration();
  v40 = swift_allocBox();
  v20 = v19;
  static UIButton.Configuration.plain()();
  v21 = sub_100009F78(0, &qword_101183A00);
  v22 = static UIFont.preferredFont(forTextStyle:weight:)();
  sub_10010FC20(&qword_10119FB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v21;
  *(inited + 40) = v22;
  v24 = NSFontAttributeName;
  v35 = v22;
  sub_10010BA14(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &qword_101180420);
  AttributeContainer.init(_:)();
  AttributedString.init(_:attributes:)();
  v25 = type metadata accessor for AttributedString();
  (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  UIButton.Configuration.attributedTitle.setter();
  UIButton.Configuration.imagePadding.setter();
  if (qword_10117F1D0 != -1)
  {
    swift_once();
  }

  UIButton.Configuration.contentInsets.setter();
  (*(v39 + 104))(v38, enum case for UIButton.Configuration.CornerStyle.medium(_:), v41);
  UIButton.Configuration.cornerStyle.setter();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  v26 = static UIFont.preferredFont(forTextStyle:weight:)();
  v27 = [objc_opt_self() configurationWithFont:v26 scale:2];

  v28 = *(v18 - 8);
  v29 = v43;
  (*(v28 + 16))(v43, v20, v18);
  (*(v28 + 56))(v29, 0, 1, v18);
  UIButton.configuration.setter();
  v30 = swift_allocObject();
  *(v30 + 16) = v40;
  *(v30 + 24) = v27;
  aBlock[4] = sub_1001141EC;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_10109D328;
  v31 = _Block_copy(aBlock);

  v32 = v27;

  [v16 setConfigurationUpdateHandler:v31];
  _Block_release(v31);

  [v16 setNeedsUpdateConfiguration];

  return v16;
}

id sub_1001141F4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10010FC20(&qword_101180CA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = _s12PinViewModelVMa();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100114550(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1000095E8(v9, &qword_101180CA0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_10011555C(v9, v13);
    v15 = [a1 positionUUID];
    if (!v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = String._bridgeToObjectiveC()();
    }

    v26 = String._bridgeToObjectiveC()();

    v25 = *v13;
    v24 = GridView.Base.ViewModel.ImageConfiguration.Shape.objcShape.getter();
    v16 = GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.objcPlaceholder.getter();
    sub_100114F8C();
    v27 = v3;
    if (v17)
    {
      v18 = String._bridgeToObjectiveC()();
    }

    else
    {
      v18 = 0;
    }

    v19 = [a1 isEnabled] ^ 1;
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_10109D378;
    v20 = _Block_copy(aBlock);

    BYTE1(v23) = v19;
    LOBYTE(v23) = 1;
    v21 = v26;
    v22 = [v27 initWithId:v15 title:v26 subtitle:0 artworkCatalog:v25 imageShape:v24 isTallArtwork:0 placeholder:v16 accessorySystemImage:v18 allowsTouches:v23 disabledAppearance:v20 action:?];
    _Block_release(v20);

    sub_1001155C0(v13);
    return v22;
  }
}

uint64_t sub_100114550@<X0>(char *a1@<X8>)
{
  v123 = a1;
  v2 = sub_10010FC20(&qword_101180CA8);
  v3 = __chkstk_darwin(v2 - 8);
  v120 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v117 = &v113 - v6;
  __chkstk_darwin(v5);
  v119 = &v113 - v7;
  v8 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
  v121 = *(v8 - 8);
  v122 = v8;
  v9 = __chkstk_darwin(v8);
  v118 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v113 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v113 - v15;
  __chkstk_darwin(v14);
  v18 = &v113 - v17;
  v19 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
  v124 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = (&v113 - v24);
  v26 = __chkstk_darwin(v23);
  v28 = (&v113 - v27);
  __chkstk_darwin(v26);
  v30 = &v113 - v29;
  v31 = v1;
  v32 = [v1 album];
  if (v32)
  {
    v33 = v32;
    v120 = [v32 artworkCatalog];
    *v30 = 0;
    v30[8] = 0;
    v34 = v124;
    (*(v124 + 104))(v30, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.cpuiPlaceholder(_:), v19);
    static GridView.Base.ViewModel.ImageConfiguration.Shape.roundedSquare.getter();
    v35 = [v33 title];
    v36 = v19;
    if (v35)
    {
      v37 = v35;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {

      v38 = 0;
      v40 = 0;
    }

    v61 = v121;
    v60 = v122;
    v62 = v123;
    *v123 = v120;
    v63 = _s12PinViewModelVMa();
    (*(v34 + 32))(&v62[v63[5]], v30, v36);
    (*(v61 + 32))(&v62[v63[6]], v18, v60);
    v64 = &v62[v63[7]];
    *v64 = v38;
    v64[1] = v40;
    return (*(*(v63 - 1) + 56))(v62, 0, 1, v63);
  }

  v114 = v22;
  v115 = v19;
  v116 = v16;
  v41 = v119;
  v42 = v120;
  v43 = v13;
  v44 = v118;
  v45 = [v31 artist];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 artworkCatalog];
    v48 = sub_10010FC20(&qword_101180CB0);
    v49 = *(v48 + 48);
    v50 = v28 + *(v48 + 64);
    *v28 = 0xD000000000000010;
    v28[1] = 0x8000000100E3CE70;
    v51 = type metadata accessor for Image.Scale();
    (*(*(v51 - 8) + 56))(v41, 1, 1, v51);
    sub_10011561C(v41, v28 + v49);
    *v50 = 0;
    v50[8] = 1;
    v52 = v115;
    (*(v124 + 104))(v28, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v115);
    v54 = v121;
    v53 = v122;
    (*(v121 + 104))(v116, enum case for GridView.Base.ViewModel.ImageConfiguration.Shape.circle(_:), v122);
    v55 = [v46 name];
    if (v55)
    {
      v56 = v55;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;
    }

    else
    {

      v57 = 0;
      v59 = 0;
    }

    v81 = v123;
    *v123 = v47;
    v82 = _s12PinViewModelVMa();
    (*(v124 + 32))(&v81[v82[5]], v28, v52);
    (*(v54 + 32))(&v81[v82[6]], v116, v53);
    v83 = &v81[v82[7]];
    *v83 = v57;
    v83[1] = v59;
    v84 = *(*(v82 - 1) + 56);
    v85 = v81;
    return v84(v85, 0, 1, v82);
  }

  v66 = [v31 playlist];
  if (v66)
  {
    v67 = v66;
    v68 = MPModelPlaylist.preferredArtworkCatalog.getter();
    v69 = sub_10010FC20(&qword_101180CB0);
    v70 = *(v69 + 48);
    v71 = v25;
    v72 = v25 + *(v69 + 64);
    *v25 = 0x6F6E2E636973756DLL;
    v25[1] = 0xEF7473696C2E6574;
    v73 = type metadata accessor for Image.Scale();
    v74 = v117;
    (*(*(v73 - 8) + 56))(v117, 1, 1, v73);
    sub_10011561C(v74, v25 + v70);
    *v72 = 0;
    v72[8] = 1;
    (*(v124 + 104))(v25, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v115);
    v75 = v43;
    static GridView.Base.ViewModel.ImageConfiguration.Shape.roundedSquare.getter();
    v76 = [v67 name];
    if (v76)
    {
      v77 = v76;
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;
    }

    else
    {

      v78 = 0;
      v80 = 0;
    }

    v103 = v121;
    v102 = v122;
    v104 = v123;
    *v123 = v68;
    v82 = _s12PinViewModelVMa();
    (*(v124 + 32))(&v104[v82[5]], v71, v115);
    (*(v103 + 32))(&v104[v82[6]], v75, v102);
    v105 = &v104[v82[7]];
    *v105 = v78;
    v105[1] = v80;
    v84 = *(*(v82 - 1) + 56);
    v85 = v104;
    return v84(v85, 0, 1, v82);
  }

  v86 = [v31 song];
  if (v86)
  {
    v87 = v86;
    v88 = [v86 artworkCatalog];
    if ([v87 hasVideo])
    {
      v89 = 0xED000076742E6574;
    }

    else
    {
      v89 = 0xEA00000000006574;
    }

    v90 = sub_10010FC20(&qword_101180CB0);
    v91 = *(v90 + 48);
    v92 = v114;
    v93 = v114 + *(v90 + 64);
    *v114 = 0x6F6E2E636973756DLL;
    v92[1] = v89;
    v94 = type metadata accessor for Image.Scale();
    (*(*(v94 - 8) + 56))(v42, 1, 1, v94);
    sub_10011561C(v42, v92 + v91);
    *v93 = 0;
    v93[8] = 1;
    v95 = v124;
    v96 = v115;
    (*(v124 + 104))(v92, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v115);
    static GridView.Base.ViewModel.ImageConfiguration.Shape.roundedSquare.getter();
    v97 = [v87 title];
    if (v97)
    {
      v98 = v97;
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;
    }

    else
    {

      v99 = 0;
      v101 = 0;
    }

    v110 = v121;
    v111 = v123;
    *v123 = v88;
    v82 = _s12PinViewModelVMa();
    (*(v95 + 32))(&v111[v82[5]], v92, v96);
    (*(v110 + 32))(&v111[v82[6]], v44, v122);
    v112 = &v111[v82[7]];
    *v112 = v99;
    v112[1] = v101;
    v84 = *(*(v82 - 1) + 56);
    v85 = v111;
    return v84(v85, 0, 1, v82);
  }

  v106 = _s12PinViewModelVMa();
  v107 = *(*(v106 - 8) + 56);
  v108 = v106;
  v109 = v123;

  return v107(v109, 1, 1, v108);
}

uint64_t sub_100114F8C()
{
  v1 = [v0 song];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 hasVideo];

    if (v3)
    {
      return 0x6C69662E79616C70;
    }
  }

  v5 = [v0 defaultAction];
  v6 = 0x6C69662E79616C70;
  if (v5 != 1)
  {
    v6 = 0;
  }

  if (v5 == 2)
  {
    return 0x656C6666756873;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100115100()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = type metadata accessor for MusicPin.Action();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101197070);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for MusicPin();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v0;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    MusicPin.action.getter();
    v20 = (*(v8 + 88))(v10, v7);
    if (v20 == enum case for MusicPin.Action.navigate(_:))
    {
      if (qword_10117F6D8 != -1)
      {
        swift_once();
      }

      v19 = sub_100428914();
    }

    else
    {
      if (v20 != enum case for MusicPin.Action.play(_:) && v20 != enum case for MusicPin.Action.shuffle(_:))
      {
        (*(v8 + 8))(v10, v7);
        (*(v15 + 8))(v17, v14);
        goto LABEL_3;
      }

      sub_100537A68(v17, v6);
      v22 = v25;
      v21 = v26;
      (*(v25 + 104))(v4, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v26);
      v19 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
      v23 = *(v22 + 8);
      v23(v4, v21);
      v23(v6, v21);
    }

    (*(v15 + 8))(v17, v14);
    return v19 & 1;
  }

  sub_1000095E8(v13, &unk_101197070);
LABEL_3:
  v19 = 1;
  return v19 & 1;
}

uint64_t _s12PinViewModelVMa()
{
  result = qword_101180D10;
  if (!qword_101180D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011555C(uint64_t a1, uint64_t a2)
{
  v4 = _s12PinViewModelVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001155C0(uint64_t a1)
{
  v2 = _s12PinViewModelVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011561C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101180CA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001156B4()
{
  sub_100115768();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
      if (v2 <= 0x3F)
      {
        sub_10002F678();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100115768()
{
  if (!qword_101180D20)
  {
    sub_1001157C0();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101180D20);
    }
  }
}

unint64_t sub_1001157C0()
{
  result = qword_1011A1560;
  if (!qword_1011A1560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A1560);
  }

  return result;
}

uint64_t sub_10011580C(uint64_t a1, void *a2)
{
  sub_10010FC20(&qword_101183990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBC6C0;
  *(v3 + 32) = a2;
  v4 = a2;
  return v3;
}

Class sub_100115868(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100115F38();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t sub_1001158F4()
{
  v0 = type metadata accessor for AppInterfaceContext.Activity(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - v6;
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(sub_10010FC20(&unk_10118A290) + 48);
  v11 = type metadata accessor for SearchScope();
  *v9 = 0;
  *(v9 + 1) = 0;
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  swift_storeEnumTagMultiPayload();
  sub_100115B50(v9, v7);
  sub_100115B50(v7, v4);
  v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_100115BB4(v4, v13 + v12);
  sub_100706900(v7, sub_100115C18, v13);

  sub_100115C8C(v7);
  return sub_100115C8C(v9);
}

uint64_t sub_100115B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100115BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100115C18(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100705948(a1, v4, v5, v6);
}

uint64_t sub_100115C8C(uint64_t a1)
{
  v2 = type metadata accessor for AppInterfaceContext.Activity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100115CE8(uint64_t result, int a2, int a3)
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

id sub_100115D34(uint64_t isEscapingClosureAtFileLocation)
{
  swift_getObjectType();
  v8 = 0u;
  v9 = 0u;
  v2 = UIMenuBuilder.command(for:propertyList:)();
  sub_100011DF0(&v8);
  if (v2)
  {
    [v2 setAttributes:{4, v8, v9}];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100115F08;
    *(v4 + 24) = v3;
    v10 = sub_100115F10;
    v11 = v4;
    *&v8 = _NSConcreteStackBlock;
    *(&v8 + 1) = 1107296256;
    *&v9 = sub_100115868;
    *(&v9 + 1) = &unk_10109D4C8;
    v5 = _Block_copy(&v8);
    v6 = v2;

    [isEscapingClosureAtFileLocation replaceChildrenOfMenuForIdentifier:UIMenuFind fromChildrenBlock:v5];

    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return [isEscapingClosureAtFileLocation removeMenuForIdentifier:{UIMenuFind, v8, v9}];
}

unint64_t sub_100115F38()
{
  result = qword_10118CDE0;
  if (!qword_10118CDE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118CDE0);
  }

  return result;
}

uint64_t sub_1001160B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = a1 & 0xFFFFFFFFFFFFFEFELL;
  if ((a1 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFALL && v8 != 0x3FFFFFEFCLL && v8 != 0x3FFFFFEFELL)
  {
    return sub_10069B5AC(a1, a2, a3);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void (*sub_100116288(unint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  result = 0;
  if ((a1 & 0xFFFFFFFFFFFFFEFCLL) != 0x3FFFFFEFCLL && (a1 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFALL)
  {
    if ((a1 >> 62) - 1 >= 2)
    {
      if (a1 >> 62)
      {
        result = 0;
        if (a1 == 0xC000000000000000 && !(a3 | a2))
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          return sub_10069D768;
        }
      }

      else
      {
        sub_10011896C(a1);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        return a2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_1001164C8@<Q0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101180F08);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = sub_10010FC20(&qword_101180F10);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = sub_10010FC20(&qword_101180F18);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = sub_10010FC20(&qword_101180F20);
  sub_100116950(v1, &v9[*(v16 + 44)]);
  KeyPath = swift_getKeyPath();
  v18 = &v9[*(v7 + 44)];
  *v18 = KeyPath;
  v18[8] = 1;
  v19 = static Edge.Set.vertical.getter();
  type metadata accessor for NoContentCell(0);
  sub_10056CABC(v5);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v3 + 8))(v5, v2);
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10003D17C(v9, v12, &qword_101180F08);
  v28 = &v12[*(v10 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v12, v15, &qword_101180F10);
  v29 = &v15[*(v13 + 36)];
  v30 = v44;
  *(v29 + 4) = v43;
  *(v29 + 5) = v30;
  *(v29 + 6) = v45;
  v31 = v40;
  *v29 = v39;
  *(v29 + 1) = v31;
  v32 = v42;
  *(v29 + 2) = v41;
  *(v29 + 3) = v32;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = v38;
  sub_10003D17C(v15, v38, &qword_101180F18);
  v34 = v33 + *(sub_10010FC20(&qword_101180F28) + 36);
  v35 = v51;
  *(v34 + 64) = v50;
  *(v34 + 80) = v35;
  *(v34 + 96) = v52;
  v36 = v47;
  *v34 = v46;
  *(v34 + 16) = v36;
  result = v49;
  *(v34 + 32) = v48;
  *(v34 + 48) = result;
  return result;
}

uint64_t sub_100116950@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v78 = type metadata accessor for BorderlessButtonStyle();
  v83 = *(v78 - 8);
  __chkstk_darwin(v78);
  v82 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10010FC20(&qword_101180F30);
  __chkstk_darwin(v80);
  v81 = v73 - v4;
  v87 = sub_10010FC20(&qword_101180F38);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v79 = v73 - v5;
  v6 = sub_10010FC20(&qword_101180F40);
  v7 = __chkstk_darwin(v6 - 8);
  v88 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = v73 - v9;
  v10 = sub_10010FC20(&qword_101180F48);
  __chkstk_darwin(v10);
  v12 = v73 - v11;
  v13 = sub_10010FC20(&qword_101199ED0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v73 - v15;
  v17 = sub_10010FC20(&qword_101180F50);
  v18 = __chkstk_darwin(v17 - 8);
  v84 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v73 - v20;
  v23 = *a1;
  v22 = a1[1];
  v24 = a1[2];
  v25 = sub_1001160B4(*a1, v22, v24);
  if (v26)
  {
    v90 = v25;
    v91 = v26;
    sub_100009838();
    v27 = Text.init<A>(_:)();
    v76 = v22;
    v77 = v23;
    v29 = v28;
    v31 = v30;
    LODWORD(v90) = static HierarchicalShapeStyle.secondary.getter();
    v32 = Text.foregroundStyle<A>(_:)();
    v73[1] = v10;
    v74 = v21;
    v33 = v32;
    v34 = v24;
    v36 = v35;
    v75 = v13;
    v38 = v37;
    v40 = v39;
    v41 = v31 & 1;
    v42 = v29;
    v22 = v76;
    v23 = v77;
    sub_10011895C(v27, v42, v41);

    *v12 = v33;
    *(v12 + 1) = v36;
    v24 = v34;
    v12[16] = v38 & 1;
    *(v12 + 3) = v40;
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101180F58, &qword_101199ED0);
    v43 = v74;
    _ConditionalContent<>.init(storage:)();
    v44 = v43;
  }

  else
  {
    ProgressView<>.init<>()();
    (*(v14 + 16))(v12, v16, v13);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101180F58, &qword_101199ED0);
    _ConditionalContent<>.init(storage:)();
    (*(v14 + 8))(v16, v13);
    v44 = v21;
  }

  v45 = sub_100116288(v23, v22, v24);
  if (v45)
  {
    v49 = v45;
    v50 = v46;
    v51 = v47;
    v52 = v48;
    v53 = swift_allocObject();
    v53[2] = v49;
    v53[3] = v50;
    v53[4] = v51;
    v53[5] = v52;
    __chkstk_darwin(v53);
    v73[-4] = v49;
    v73[-3] = v50;
    v73[-2] = v51;
    v73[-1] = v52;

    v54 = v81;
    Button.init(action:label:)();
    v55 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v56 = v54 + *(v80 + 36);
    *v56 = v55;
    *(v56 + 8) = v57;
    *(v56 + 16) = v58;
    *(v56 + 24) = v59;
    *(v56 + 32) = v60;
    *(v56 + 40) = 0;
    v61 = v82;
    BorderlessButtonStyle.init()();
    sub_1001188A4();
    sub_100118FB0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle);
    v62 = v79;
    v63 = v78;
    View.buttonStyle<A>(_:)();

    (*(v83 + 8))(v61, v63);
    sub_1000095E8(v54, &qword_101180F30);
    v64 = v85;
    v65 = v86;
    v66 = v87;
    (*(v85 + 32))(v86, v62, v87);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v65 = v86;
    v66 = v87;
    v64 = v85;
  }

  (*(v64 + 56))(v65, v67, 1, v66);
  v68 = v84;
  sub_1000089F8(v44, v84, &qword_101180F50);
  v69 = v88;
  sub_10006EDC4(v65, v88);
  v70 = v89;
  sub_1000089F8(v68, v89, &qword_101180F50);
  v71 = sub_10010FC20(&qword_101180F60);
  sub_10006EDC4(v69, v70 + *(v71 + 48));
  sub_10006EE34(v65);
  sub_1000095E8(v44, &qword_101180F50);
  sub_10006EE34(v69);
  return sub_1000095E8(v68, &qword_101180F50);
}

uint64_t sub_100117138@<X0>(uint64_t a1@<X8>)
{
  sub_100009838();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

__n128 sub_1001171A8@<Q0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101181070);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  v46 = sub_10010FC20(&qword_101181078);
  __chkstk_darwin(v46);
  v11 = &v46 - v10;
  v12 = *(v1 + 3);
  v51 = *v1;
  v50 = v12;
  v13 = swift_allocObject();
  v14 = v1[1];
  v13[1] = *v1;
  v13[2] = v14;
  v13[3] = v1[2];
  v48 = v1;
  sub_100118E9C(&v51, v49);
  sub_1000089F8(&v50, v49, &qword_101181080);

  sub_10010FC20(&qword_101181088);
  sub_100118EF8();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  sub_100020674(&qword_101181090, &qword_101181070);
  sub_100118FB0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v15 = static Edge.Set.top.getter();
  if (qword_10117F1D8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v11[*(sub_10010FC20(&qword_101181098) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = static Edge.Set.bottom.getter();
  if (qword_10117F1E0 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v11[*(sub_10010FC20(&qword_1011810A0) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = static Edge.Set.leading.getter();
  if (qword_10117F1E8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v36 = &v11[*(v46 + 36)];
  *v36 = v35;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v41 = v47;
  sub_10003D17C(v11, v47, &qword_101181078);
  v42 = v41 + *(sub_10010FC20(&qword_1011810A8) + 36);
  v43 = v49[5];
  *(v42 + 64) = v49[4];
  *(v42 + 80) = v43;
  *(v42 + 96) = v49[6];
  v44 = v49[1];
  *v42 = v49[0];
  *(v42 + 16) = v44;
  result = v49[3];
  *(v42 + 32) = v49[2];
  *(v42 + 48) = result;
  return result;
}

uint64_t sub_100117704@<X0>(uint64_t a1@<X8>)
{

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Color.accentColor.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10011895C(v2, v4, v6 & 1);

  result = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

double sub_100117838()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100117930()
{
  v1 = OBJC_IVAR____TtCV5Music21RelatedContentSpacing4Data__height;
  v2 = sub_10010FC20(&qword_101180F88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100117A00()
{
  sub_100117A90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100117A90()
{
  if (!qword_101180DB0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101180DB0);
    }
  }
}

uint64_t sub_100117AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100117B28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_100117BBC()
{
  sub_100117C38();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100117C38()
{
  if (!qword_10119F120)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10119F120);
    }
  }
}

uint64_t sub_100117C90(uint64_t a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 & 1 | (2 * ((*a1 >> 8) & 1)) | (4 * *(a1 + 8))) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100117CBC(void *a1)
{
  v1 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100117CD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
  if (v3 > 0x80000000)
  {
    v4 = -v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100117D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (4 * (-3 - a2)) & 0x3FFFFFE00 | (2 * ((-3 - a2) & 0x7FLL));
    }
  }

  return result;
}

uint64_t *sub_100117DA0(uint64_t *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = 0;
    result[2] = 0;
    *result = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
  }

  return result;
}

uint64_t sub_100117E1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RelatedContentSpacing.Data(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100117E5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10010FC20(&qword_101180EF0);
  sub_100118790();
  return View.accessibilityHidden(_:)();
}

double sub_100117F64@<D0>(uint64_t a1@<X8>)
{
  v77 = type metadata accessor for DynamicTypeSize();
  v80 = *(v77 - 8);
  v3 = __chkstk_darwin(v77);
  v79 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v76 = &v61 - v6;
  __chkstk_darwin(v5);
  v75 = &v61 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2063736944;
  v11._object = 0xE500000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  v78 = v1;
  v88 = *v1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v88 = String.init(localized:table:bundle:locale:comment:)();
  v89 = v13;
  sub_100009838();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  if (qword_10117F680 != -1)
  {
    swift_once();
  }

  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  sub_10011895C(v14, v16, v18 & 1);

  static Font.Weight.semibold.getter();
  v74 = Text.fontWeight(_:)();
  v73 = v24;
  v26 = v25;
  v72 = v27;
  sub_10011895C(v19, v21, v23 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v65 = v26 & 1;
  v90 = v26 & 1;
  v71 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v70 = v28;
  v69 = v29;
  v68 = v30;
  v67 = v31;
  v91 = 0;
  v66 = static Edge.Set.top.getter();
  v64 = *(type metadata accessor for DiscSectionCell(0) + 24);
  v32 = v75;
  sub_10056CABC(v75);
  v63 = enum case for DynamicTypeSize.accessibility1(_:);
  v33 = v80;
  v62 = *(v80 + 104);
  v34 = v76;
  v35 = v77;
  v62(v76);
  sub_100118FB0(&qword_1011810B0, &type metadata accessor for DynamicTypeSize);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v36 = *(v33 + 8);
  v36(v34, v35);
  v36(v32, v35);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v92 = 0;
  LODWORD(v80) = static Edge.Set.bottom.getter();
  v45 = v79;
  sub_10056CABC(v79);
  (v62)(v34, v63, v35);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v36(v34, v35);
  v36(v45, v35);
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  LOBYTE(v88) = 0;
  v54 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v55 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
  v56 = v73;
  *a1 = v74;
  *(a1 + 8) = v56;
  *(a1 + 16) = v65;
  *(a1 + 24) = v72;
  v57 = v86;
  *(a1 + 96) = v85;
  *(a1 + 112) = v57;
  *(a1 + 128) = v87;
  v58 = v82;
  *(a1 + 32) = v81;
  *(a1 + 48) = v58;
  v59 = v84;
  *(a1 + 64) = v83;
  *(a1 + 80) = v59;
  *(a1 + 144) = v71;
  *&v59 = v69;
  *(a1 + 152) = v70;
  *(a1 + 160) = v59;
  result = v67;
  *(a1 + 168) = v68;
  *(a1 + 176) = result;
  *(a1 + 184) = 0;
  *(a1 + 192) = v66;
  *(a1 + 200) = v38;
  *(a1 + 208) = v40;
  *(a1 + 216) = v42;
  *(a1 + 224) = v44;
  *(a1 + 232) = 0;
  *(a1 + 240) = v80;
  *(a1 + 248) = v47;
  *(a1 + 256) = v49;
  *(a1 + 264) = v51;
  *(a1 + 272) = v53;
  *(a1 + 280) = 0;
  *(a1 + 288) = v54;
  *(a1 + 296) = sub_100119634;
  *(a1 + 304) = 0;
  *(a1 + 312) = v55;
  *(a1 + 320) = sub_100119634;
  *(a1 + 328) = 0;
  return result;
}

double sub_100118694@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100118714()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100118790()
{
  result = qword_101180EF8;
  if (!qword_101180EF8)
  {
    sub_1001109D0(&qword_101180EF0);
    sub_10011881C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180EF8);
  }

  return result;
}

unint64_t sub_10011881C()
{
  result = qword_10119EF10;
  if (!qword_10119EF10)
  {
    sub_1001109D0(&qword_101180F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119EF10);
  }

  return result;
}

unint64_t sub_1001188A4()
{
  result = qword_101180F68;
  if (!qword_101180F68)
  {
    sub_1001109D0(&qword_101180F30);
    sub_100020674(&qword_101180F70, &qword_101180F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180F68);
  }

  return result;
}

uint64_t sub_10011895C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10011896C(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

void sub_1001189C8()
{
  sub_100117C38();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100118A4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100118A94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100118AF0()
{
  result = qword_101181028;
  if (!qword_101181028)
  {
    sub_1001109D0(&qword_101181030);
    sub_100118790();
    sub_100118FB0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181028);
  }

  return result;
}

unint64_t sub_100118BAC()
{
  result = qword_101181040;
  if (!qword_101181040)
  {
    sub_1001109D0(&qword_101180F28);
    sub_100118C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181040);
  }

  return result;
}

unint64_t sub_100118C38()
{
  result = qword_101181048;
  if (!qword_101181048)
  {
    sub_1001109D0(&qword_101180F18);
    sub_100118CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181048);
  }

  return result;
}

unint64_t sub_100118CC4()
{
  result = qword_101181050;
  if (!qword_101181050)
  {
    sub_1001109D0(&qword_101180F10);
    sub_100118D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181050);
  }

  return result;
}

unint64_t sub_100118D50()
{
  result = qword_101181058;
  if (!qword_101181058)
  {
    sub_1001109D0(&qword_101180F08);
    sub_100020674(&qword_101181060, &qword_101181068);
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181058);
  }

  return result;
}

unint64_t sub_100118EF8()
{
  result = qword_10118A580;
  if (!qword_10118A580)
  {
    sub_1001109D0(&qword_101181088);
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A580);
  }

  return result;
}

uint64_t sub_100118FB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100118FF8()
{
  result = qword_1011810B8;
  if (!qword_1011810B8)
  {
    sub_1001109D0(&qword_1011810A8);
    sub_100119084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810B8);
  }

  return result;
}

unint64_t sub_100119084()
{
  result = qword_1011810C0;
  if (!qword_1011810C0)
  {
    sub_1001109D0(&qword_101181078);
    sub_100119110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810C0);
  }

  return result;
}

unint64_t sub_100119110()
{
  result = qword_1011810C8;
  if (!qword_1011810C8)
  {
    sub_1001109D0(&qword_1011810A0);
    sub_10011919C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810C8);
  }

  return result;
}

unint64_t sub_10011919C()
{
  result = qword_1011810D0;
  if (!qword_1011810D0)
  {
    sub_1001109D0(&qword_101181098);
    sub_1001109D0(&qword_101181070);
    type metadata accessor for BorderlessButtonStyle();
    sub_100020674(&qword_101181090, &qword_101181070);
    sub_100118FB0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810D0);
  }

  return result;
}

unint64_t sub_1001192E8()
{
  result = qword_1011810D8;
  if (!qword_1011810D8)
  {
    sub_1001109D0(&qword_1011810E0);
    sub_100119374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810D8);
  }

  return result;
}

unint64_t sub_100119374()
{
  result = qword_1011810E8;
  if (!qword_1011810E8)
  {
    sub_1001109D0(&qword_1011810F0);
    sub_100119400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810E8);
  }

  return result;
}

unint64_t sub_100119400()
{
  result = qword_1011810F8;
  if (!qword_1011810F8)
  {
    sub_1001109D0(&qword_101181100);
    sub_10011948C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810F8);
  }

  return result;
}

unint64_t sub_10011948C()
{
  result = qword_101181108;
  if (!qword_101181108)
  {
    sub_1001109D0(&qword_101181110);
    sub_100119518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181108);
  }

  return result;
}

unint64_t sub_100119518()
{
  result = qword_101181118;
  if (!qword_101181118)
  {
    sub_1001109D0(&qword_101181120);
    sub_1001195A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181118);
  }

  return result;
}

unint64_t sub_1001195A4()
{
  result = qword_101181128;
  if (!qword_101181128)
  {
    sub_1001109D0(&qword_101181130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181128);
  }

  return result;
}

char *sub_100119638()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = [v0 activeFormat];
  v6 = [v5 tier];

  result = 0;
  if (v6 == 3)
  {
    return result;
  }

  v8 = [v0 alternateFormats];
  sub_10011990C();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_4:
      v22 = _swiftEmptyArrayStorage;
      result = sub_10066C770(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v21[1] = v3;
      v11 = 0;
      v12 = v22;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = sub_1007E90C0(v11, v9);
        }

        else
        {
          v13 = *(v9 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v13 tier];

        v22 = v12;
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          sub_10066C770((v16 > 1), v17 + 1, 1);
          v12 = v22;
        }

        ++v11;
        v12[2] = v17 + 1;
        v12[v17 + 4] = v15;
      }

      while (v10 != v11);

      goto LABEL_15;
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_15:
  v18 = v12[2];
  v19 = 4;
  while (v18)
  {
    v20 = v12[v19++];
    --v18;
    if (v20 == 3)
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }
  }

  return 0;
}

unint64_t sub_10011990C()
{
  result = qword_101181138;
  if (!qword_101181138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101181138);
  }

  return result;
}

uint64_t sub_100119958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v241 = a1;
  v207 = type metadata accessor for UploadedVideo();
  v210 = *(v207 - 8);
  __chkstk_darwin(v207);
  v209 = v202 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_10010FC20(&qword_101181270);
  __chkstk_darwin(v223);
  v222 = v202 - v4;
  v246 = sub_10010FC20(&qword_101181278);
  __chkstk_darwin(v246);
  v224 = v202 - v5;
  v228 = type metadata accessor for MusicVideo();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v221 = v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for TVSeason();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v208 = v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for MusicMovie();
  v229 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v212 = v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v211 = v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArtworkImage.Info(0);
  v14 = __chkstk_darwin(v13 - 8);
  v206 = v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v218 = v202 - v16;
  v220 = type metadata accessor for Playlist();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v215 = v202 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_10010FC20(&qword_101181280);
  __chkstk_darwin(v243);
  v245 = v202 - v18;
  v234 = sub_10010FC20(&qword_101181288);
  __chkstk_darwin(v234);
  v235 = v202 - v19;
  v238 = sub_10010FC20(&qword_101181290);
  __chkstk_darwin(v238);
  v237 = v202 - v20;
  v242 = sub_10010FC20(&qword_101181298);
  __chkstk_darwin(v242);
  v239 = v202 - v21;
  v244 = sub_10010FC20(&qword_1011812A0);
  __chkstk_darwin(v244);
  v236 = v202 - v22;
  v233 = type metadata accessor for MusicFavoriteStatus();
  v230 = *(v233 - 8);
  v23 = __chkstk_darwin(v233);
  v231 = v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v232 = v202 - v25;
  v26 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v26 - 8);
  v240 = v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v28 - 8);
  v30 = v202 - v29;
  v31 = _s8GridCellVMa(0);
  v32 = __chkstk_darwin(v31);
  v204 = v202 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v205 = v202 - v35;
  v36 = __chkstk_darwin(v34);
  v213 = v202 - v37;
  v38 = __chkstk_darwin(v36);
  v214 = v202 - v39;
  __chkstk_darwin(v38);
  v41 = v202 - v40;
  v42 = type metadata accessor for Album();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = v202 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for RecentlyAddedMusicItem();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = v202 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v49, v2, v46);
  v50 = (*(v47 + 88))(v49, v46);
  if (v50 != enum case for RecentlyAddedMusicItem.album(_:))
  {
    v79 = v30;
    v80 = v240;
    v203 = v31;
    if (v50 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      (*(v47 + 96))(v49, v46);
      v81 = v225;
      v82 = v49;
      v83 = v226;
      (*(v229 + 32))(v225, v82, v226);
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v83, &protocol witness table for MusicMovie, v79);
      v84 = sub_10010FC20(&unk_101182950);
      (*(*(v84 - 8) + 56))(v80, 6, 11, v84);
      v85 = _s21RecentlyAddedGridCellVMa(0);
      ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, *(v2 + *(v85 + 20)), 0, 0x3FE5555555555555, 0, 2, v247);
      v86 = Corner.medium.unsafeMutableAddressor();
      v87 = v41;
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v79, v80, 0, 1, v247, *v86, v86[1], *(v86 + 16), v41);
      v88 = MusicMovie.title.getter();
      v90 = v89;
      v91 = MusicMovie.artistName.getter();
      v93 = v92;
      v94 = v203;
      v95 = v203[10];
      v96 = type metadata accessor for ContentRating();
      (*(*(v96 - 8) + 56))(v87 + v95, 1, 1, v96);
      v97 = (v87 + v94[5]);
      *v97 = 0;
      v97[1] = 0;
      v97[2] = 0;
      *(v87 + v94[6]) = 0x3FF0000000000000;
      v98 = (v87 + v94[7]);
      *v98 = v88;
      v98[1] = v90;
      v99 = (v87 + v94[8]);
      *v99 = v91;
      v99[1] = v93;
      *(v87 + v94[9]) = 0;
      *(v87 + v94[11]) = 0;
      v100 = v94[12];
      *(v87 + v100) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610);
      swift_storeEnumTagMultiPayload();
      sub_100123474(v87, v237, _s8GridCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D290, _s8GridCellVMa);
      v101 = v239;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v101, v235, &qword_101181298);
      swift_storeEnumTagMultiPayload();
      sub_100123098();
      v102 = v236;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v101, &qword_101181298);
      sub_1000089F8(v102, v245, &qword_1011812A0);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_1011812B0, &qword_1011812A0, &unk_100EBCD88, sub_100123098);
      sub_1001232C4(&qword_1011812B8, &qword_101181278, &unk_100EBCD60, sub_100123098);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v102, &qword_1011812A0);
      sub_1001234DC(v87, _s8GridCellVMa);
      v75 = *(v229 + 8);
      v76 = v81;
    }

    else
    {
      if (v50 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
      {
        (*(v47 + 96))(v49, v46);
        v104 = v221;
        v105 = v228;
        (*(v227 + 32))(v221, v49, v228);
        ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v105, &protocol witness table for MusicVideo, v79);
        v106 = sub_10010FC20(&unk_101182950);
        (*(*(v106 - 8) + 56))(v80, 5, 11, v106);
        v107 = _s21RecentlyAddedGridCellVMa(0);
        ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v107 + 20)), 0, 0, 1, 0x3FFC71C71C71C71CLL, 0, 2, v247);
        v108 = Corner.medium.unsafeMutableAddressor();
        v109 = v41;
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v79, v80, 0, 1, v247, *v108, v108[1], *(v108 + 16), v41);
        v110 = v104;
        v240 = MusicVideo.title.getter();
        v236 = v111;
        v112 = MusicVideo.artistName.getter();
        v114 = v113;
        v115 = v232;
        MusicVideo.favoriteStatus.getter();
        v116 = v230;
        v117 = v231;
        v118 = v233;
        (*(v230 + 104))(v231, enum case for MusicFavoriteStatus.favorited(_:), v233);
        v119 = static MusicFavoriteStatus.== infix(_:_:)();
        v120 = *(v116 + 8);
        v120(v117, v118);
        v120(v115, v118);
        v121 = v203;
        v122 = v110;
        MusicVideo.contentRating.getter();
        v123 = (v109 + v121[5]);
        *v123 = 0;
        v123[1] = 0;
        v123[2] = 0;
        *(v109 + v121[6]) = 0x3FF0000000000000;
        v124 = (v109 + v121[7]);
        v125 = v236;
        *v124 = v240;
        v124[1] = v125;
        v126 = (v109 + v121[8]);
        *v126 = v112;
        v126[1] = v114;
        *(v109 + v121[9]) = v119 & 1;
        *(v109 + v121[11]) = 0;
        v127 = v121[12];
        *(v109 + v127) = swift_getKeyPath();
        sub_10010FC20(&qword_10118A610);
        swift_storeEnumTagMultiPayload();
        sub_100123474(v109, v237, _s8GridCellVMa);
        swift_storeEnumTagMultiPayload();
        sub_10012327C(&qword_10118D290, _s8GridCellVMa);
        v128 = v239;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v128, v222, &qword_101181298);
        swift_storeEnumTagMultiPayload();
        sub_100123098();
        v129 = v224;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v128, &qword_101181298);
        sub_1000089F8(v129, v245, &qword_101181278);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_1011812B0, &qword_1011812A0, &unk_100EBCD88, sub_100123098);
        sub_1001232C4(&qword_1011812B8, &qword_101181278, &unk_100EBCD60, sub_100123098);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v129, &qword_101181278);
        sub_1001234DC(v109, _s8GridCellVMa);
        v75 = *(v227 + 8);
        v76 = v122;
        v77 = &v250;
        goto LABEL_3;
      }

      if (v50 == enum case for RecentlyAddedMusicItem.playlist(_:))
      {
        (*(v47 + 96))(v49, v46);
        v130 = v215;
        (*(v219 + 32))(v215, v49, v220);
        Playlist.artworkViewModel.getter(v79);
        Playlist.variant.getter();
        v131 = sub_10010FC20(&unk_101182950);
        (*(*(v131 - 8) + 56))(v80, 0, 11, v131);
        v132 = _s21RecentlyAddedGridCellVMa(0);
        ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v132 + 20)), 0, 0, 1, 0x3FF0000000000000, 0, 2, v247);
        v133 = Corner.medium.unsafeMutableAddressor();
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v79, v80, 0, 1, v247, *v133, v133[1], *(v133 + 16), v218);
        v134 = Playlist.name.getter();
        v240 = v135;
        v136 = Playlist.curatorName.getter();
        if (v137)
        {
          v138 = v136;
          v139 = v137;
          v140 = v233;
          v141 = v230;
          v142 = v232;
          v143 = v231;
        }

        else
        {
          v229 = v134;
          v138 = sub_10034E2C4();
          v140 = v233;
          v141 = v230;
          v143 = v231;
          if (!v186)
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v138 = String.init(localized:table:bundle:locale:comment:)();
          }

          v139 = v186;
          v142 = v232;
          v134 = v229;
        }

        Playlist.favoriteStatus.getter();
        (*(v141 + 104))(v143, enum case for MusicFavoriteStatus.favorited(_:), v140);
        v187 = v141;
        v188 = v130;
        v189 = static MusicFavoriteStatus.== infix(_:_:)();
        v190 = *(v187 + 8);
        v190(v143, v140);
        v190(v142, v140);
        v191 = v203;
        v192 = v213;
        Playlist.contentRating.getter();
        sub_10012340C(v218, v192, type metadata accessor for ArtworkImage.Info);
        v193 = (v192 + v191[5]);
        *v193 = 0;
        v193[1] = 0;
        v193[2] = 0;
        *(v192 + v191[6]) = 0x3FF0000000000000;
        v194 = (v192 + v191[7]);
        v195 = v240;
        *v194 = v134;
        v194[1] = v195;
        v196 = (v192 + v191[8]);
        *v196 = v138;
        v196[1] = v139;
        *(v192 + v191[9]) = v189 & 1;
        *(v192 + v191[11]) = 0;
        v197 = v191[12];
        *(v192 + v197) = swift_getKeyPath();
        sub_10010FC20(&qword_10118A610);
        swift_storeEnumTagMultiPayload();
        v198 = v214;
        sub_10012340C(v192, v214, _s8GridCellVMa);
        sub_100123474(v198, v237, _s8GridCellVMa);
        swift_storeEnumTagMultiPayload();
        sub_10012327C(&qword_10118D290, _s8GridCellVMa);
        v199 = v239;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v199, v235, &qword_101181298);
        swift_storeEnumTagMultiPayload();
        sub_100123098();
        v200 = v236;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v199, &qword_101181298);
        sub_1000089F8(v200, v245, &qword_1011812A0);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_1011812B0, &qword_1011812A0, &unk_100EBCD88, sub_100123098);
        sub_1001232C4(&qword_1011812B8, &qword_101181278, &unk_100EBCD60, sub_100123098);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v200, &qword_1011812A0);
        sub_1001234DC(v198, _s8GridCellVMa);
        v75 = *(v219 + 8);
        v76 = v188;
        v77 = &v249;
        goto LABEL_3;
      }

      if (v50 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
      {
        (*(v47 + 96))(v49, v46);
        v144 = v208;
        v145 = v217;
        (*(v216 + 32))(v208, v49, v217);
        ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v145, &protocol witness table for TVSeason, v79);
        v146 = sub_10010FC20(&unk_101182950);
        (*(*(v146 - 8) + 56))(v80, 6, 11, v146);
        v147 = _s21RecentlyAddedGridCellVMa(0);
        ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v147 + 20)), 0, 0, 1, 0x3FF0000000000000, 0, 2, v247);
        v148 = Corner.medium.unsafeMutableAddressor();
        v149 = v41;
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v79, v80, 0, 1, v247, *v148, v148[1], *(v148 + 16), v41);
        v150 = TVSeason.showName.getter();
        v152 = v151;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v153 = String.init(localized:table:bundle:locale:comment:)();
        v155 = v154;
        v156 = v203;
        v157 = v203[10];
        v158 = type metadata accessor for ContentRating();
        (*(*(v158 - 8) + 56))(v149 + v157, 1, 1, v158);
        v159 = (v149 + v156[5]);
        *v159 = 0;
        v159[1] = 0;
        v159[2] = 0;
        *(v149 + v156[6]) = 0x3FF0000000000000;
        v160 = (v149 + v156[7]);
        *v160 = v150;
        v160[1] = v152;
        v161 = (v149 + v156[8]);
        *v161 = v153;
        v161[1] = v155;
        *(v149 + v156[9]) = 0;
        *(v149 + v156[11]) = 0;
        v162 = v156[12];
        *(v149 + v162) = swift_getKeyPath();
        sub_10010FC20(&qword_10118A610);
        swift_storeEnumTagMultiPayload();
        sub_100123474(v149, v237, _s8GridCellVMa);
        swift_storeEnumTagMultiPayload();
        sub_10012327C(&qword_10118D290, _s8GridCellVMa);
        v163 = v239;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v163, v235, &qword_101181298);
        swift_storeEnumTagMultiPayload();
        sub_100123098();
        v164 = v236;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v163, &qword_101181298);
        sub_1000089F8(v164, v245, &qword_1011812A0);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_1011812B0, &qword_1011812A0, &unk_100EBCD88, sub_100123098);
        sub_1001232C4(&qword_1011812B8, &qword_101181278, &unk_100EBCD60, sub_100123098);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v164, &qword_1011812A0);
        sub_1001234DC(v149, _s8GridCellVMa);
        v75 = *(v216 + 8);
        v76 = v144;
        v77 = &v248;
        goto LABEL_3;
      }

      if (v50 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
      {
        swift_storeEnumTagMultiPayload();
        sub_100123098();
        v201 = v224;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v201, v245, &qword_101181278);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_1011812B0, &qword_1011812A0, &unk_100EBCD88, sub_100123098);
        sub_1001232C4(&qword_1011812B8, &qword_101181278, &unk_100EBCD60, sub_100123098);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v201, &qword_101181278);
        return (*(v47 + 8))(v49, v46);
      }

      (*(v47 + 96))(v49, v46);
      v165 = v49;
      v83 = v207;
      (*(v210 + 32))(v209, v165, v207);
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v83, &protocol witness table for UploadedVideo, v79);
      v166 = sub_10010FC20(&unk_101182950);
      (*(*(v166 - 8) + 56))(v80, 5, 11, v166);
      v167 = _s21RecentlyAddedGridCellVMa(0);
      ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v167 + 20)), 0, 0, 1, 0x3FFC71C71C71C71CLL, 0, 2, v247);
      v168 = Corner.medium.unsafeMutableAddressor();
      v169 = v206;
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v79, v80, 0, 1, v247, *v168, v168[1], *(v168 + 16), v206);
      v170 = UploadedVideo.title.getter();
      if (v171)
      {
        v172 = v170;
      }

      else
      {
        v172 = 0;
      }

      if (v171)
      {
        v173 = v171;
      }

      else
      {
        v173 = 0xE000000000000000;
      }

      v174 = UploadedVideo.artistName.getter();
      v176 = v175;
      v177 = v203;
      v178 = v204;
      UploadedVideo.contentRating.getter();
      sub_10012340C(v169, v178, type metadata accessor for ArtworkImage.Info);
      v179 = (v178 + v177[5]);
      *v179 = 0;
      v179[1] = 0;
      v179[2] = 0;
      *(v178 + v177[6]) = 0x3FF0000000000000;
      v180 = (v178 + v177[7]);
      *v180 = v172;
      v180[1] = v173;
      v181 = (v178 + v177[8]);
      *v181 = v174;
      v181[1] = v176;
      *(v178 + v177[9]) = 0;
      *(v178 + v177[11]) = 0;
      v182 = v177[12];
      *(v178 + v182) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610);
      swift_storeEnumTagMultiPayload();
      v183 = v205;
      sub_10012340C(v178, v205, _s8GridCellVMa);
      sub_100123474(v183, v237, _s8GridCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D290, _s8GridCellVMa);
      v184 = v239;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v184, v222, &qword_101181298);
      swift_storeEnumTagMultiPayload();
      sub_100123098();
      v185 = v224;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v184, &qword_101181298);
      sub_1000089F8(v185, v245, &qword_101181278);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_1011812B0, &qword_1011812A0, &unk_100EBCD88, sub_100123098);
      sub_1001232C4(&qword_1011812B8, &qword_101181278, &unk_100EBCD60, sub_100123098);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v185, &qword_101181278);
      sub_1001234DC(v183, _s8GridCellVMa);
      v75 = *(v210 + 8);
      v76 = v209;
    }

    v78 = v83;
    return v75(v76, v78);
  }

  (*(v47 + 96))(v49, v46);
  v203 = v43;
  v51 = *(v43 + 32);
  v202[1] = v42;
  v51(v45, v49, v42);
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v42, &protocol witness table for Album, v30);
  v52 = _s21RecentlyAddedGridCellVMa(0);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v52 + 20)), 0, 0, 1, 0x3FF0000000000000, 0, 2, v247);
  v53 = Corner.medium.unsafeMutableAddressor();
  v54 = v30;
  v55 = *v53;
  v56 = v53[1];
  v57 = *(v53 + 16);
  v58 = sub_10010FC20(&unk_101182950);
  v59 = v240;
  (*(*(v58 - 8) + 56))(v240, 1, 11, v58);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v54, v59, 0, 1, v247, v55, v56, v57, v41);
  v240 = sub_10034DFAC();
  v229 = v60;
  v228 = sub_10034E12C();
  v62 = v61;
  v63 = v232;
  Album.favoriteStatus.getter();
  v64 = v230;
  v65 = v231;
  v66 = v233;
  (*(v230 + 104))(v231, enum case for MusicFavoriteStatus.favorited(_:), v233);
  LOBYTE(v54) = static MusicFavoriteStatus.== infix(_:_:)();
  v67 = *(v64 + 8);
  v67(v65, v66);
  v67(v63, v66);
  Album.contentRating.getter();
  v68 = &v41[v31[5]];
  *v68 = 0;
  *(v68 + 1) = 0;
  *(v68 + 2) = 0;
  *&v41[v31[6]] = 0x3FF0000000000000;
  v69 = &v41[v31[7]];
  v70 = v229;
  *v69 = v240;
  *(v69 + 1) = v70;
  v71 = &v41[v31[8]];
  *v71 = v228;
  v71[1] = v62;
  v41[v31[9]] = v54 & 1;
  v41[v31[11]] = 0;
  v72 = v31[12];
  *&v41[v72] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_100123474(v41, v237, _s8GridCellVMa);
  swift_storeEnumTagMultiPayload();
  sub_10012327C(&qword_10118D290, _s8GridCellVMa);
  v73 = v239;
  _ConditionalContent<>.init(storage:)();
  sub_1000089F8(v73, v235, &qword_101181298);
  swift_storeEnumTagMultiPayload();
  sub_100123098();
  v74 = v236;
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v73, &qword_101181298);
  sub_1000089F8(v74, v245, &qword_1011812A0);
  swift_storeEnumTagMultiPayload();
  sub_10012314C(&qword_1011812B0, &qword_1011812A0, &unk_100EBCD88, sub_100123098);
  sub_1001232C4(&qword_1011812B8, &qword_101181278, &unk_100EBCD60, sub_100123098);
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v74, &qword_1011812A0);
  sub_1001234DC(v41, _s8GridCellVMa);
  v75 = *(v203 + 1);
  v76 = v45;
  v77 = &v234;
LABEL_3:
  v78 = *(v77 - 32);
  return v75(v76, v78);
}

uint64_t sub_10011BE94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v307 = a1;
  v270 = type metadata accessor for UploadedVideo();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v268 = &v261 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_10010FC20(&qword_1011812C0);
  __chkstk_darwin(v282);
  v283 = &v261 - v4;
  v306 = sub_10010FC20(&qword_1011812C8);
  __chkstk_darwin(v306);
  v284 = &v261 - v5;
  v287 = type metadata accessor for MusicVideo();
  v286 = *(v287 - 8);
  __chkstk_darwin(v287);
  v285 = (&v261 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v277 = type metadata accessor for TVSeason();
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v275 = &v261 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = type metadata accessor for MusicMovie();
  v289 = *(v290 - 8);
  __chkstk_darwin(v290);
  v288 = (&v261 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v272 = &v261 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v271 = &v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for Playlist();
  v280 = *(v281 - 8);
  __chkstk_darwin(v281);
  v279 = &v261 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_10010FC20(&qword_1011812D0);
  __chkstk_darwin(v303);
  v305 = &v261 - v14;
  v294 = sub_10010FC20(&qword_1011812D8);
  __chkstk_darwin(v294);
  v295 = &v261 - v15;
  v297 = sub_10010FC20(&qword_1011812E0);
  __chkstk_darwin(v297);
  v298 = &v261 - v16;
  v302 = sub_10010FC20(&qword_1011812E8);
  __chkstk_darwin(v302);
  v299 = &v261 - v17;
  v304 = sub_10010FC20(&qword_1011812F0);
  __chkstk_darwin(v304);
  v296 = &v261 - v18;
  v19 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v19 - 8);
  v309 = &v261 - v20;
  v292 = type metadata accessor for MusicFavoriteStatus();
  v293 = *(v292 - 1);
  v21 = __chkstk_darwin(v292);
  v291 = (&v261 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v301 = &v261 - v23;
  v24 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v24 - 8);
  v300 = &v261 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v26 - 8);
  v28 = &v261 - v27;
  v29 = type metadata accessor for ArtworkImage.Info(0);
  v30 = __chkstk_darwin(v29 - 8);
  v267 = &v261 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v278 = &v261 - v33;
  __chkstk_darwin(v32);
  v308 = &v261 - v34;
  v35 = _s8ListCellVMa(0);
  v36 = __chkstk_darwin(v35);
  v265 = &v261 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v266 = &v261 - v39;
  v40 = __chkstk_darwin(v38);
  v273 = &v261 - v41;
  v42 = __chkstk_darwin(v40);
  v274 = &v261 - v43;
  __chkstk_darwin(v42);
  v45 = &v261 - v44;
  v46 = type metadata accessor for Album();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v261 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RecentlyAddedMusicItem();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = &v261 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v53, v2, v50);
  v54 = (*(v51 + 88))(v53, v50);
  if (v54 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v51 + 96))(v53, v50);
    v264 = v47;
    v55 = *(v47 + 32);
    v263 = v46;
    v55(v49, v53, v46);
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v46, &protocol witness table for Album, v28);
    v56 = _s21RecentlyAddedListCellVMa(0);
    ArtworkImage.Size.init(cgSize:)(*(v2 + *(v56 + 20)), *(v2 + *(v56 + 20) + 8), 0, v313);
    v57 = Corner.small.unsafeMutableAddressor();
    v58 = *v57;
    v59 = v57[1];
    v60 = *(v57 + 16);
    v61 = sub_10010FC20(&unk_101182950);
    v62 = v300;
    (*(*(v61 - 8) + 56))(v300, 1, 11, v61);
    ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v28, v62, 0, 1, v313, v58, v59, v60, v308);
    v300 = sub_10034DFAC();
    v290 = v63;
    v289 = sub_10034E12C();
    v288 = v64;
    v65 = v301;
    v262 = v49;
    Album.favoriteStatus.getter();
    v66 = v293;
    v67 = v291;
    v68 = v292;
    (*(v293 + 104))(v291, enum case for MusicFavoriteStatus.favorited(_:), v292);
    LODWORD(v287) = static MusicFavoriteStatus.== infix(_:_:)();
    v69 = *(v66 + 8);
    v69(v67, v68);
    v69(v65, v68);
    Album.contentRating.getter();
    v312 = 0;
    v310 = 0u;
    v311 = 0u;
    sub_10010FC20(&unk_1011847C0);
    swift_allocObject();
    OptionalObservableObject.init(publisher:)(&v310);
    v312 = 0;
    v310 = 0u;
    v311 = 0u;
    sub_10010FC20(&unk_10118D300);
    swift_allocObject();
    v301 = OptionalObservableObject.init(publisher:)(&v310);
    v70 = static HierarchicalShapeStyle.primary.getter();
    *(v45 + 3) = &type metadata for HierarchicalShapeStyle;
    *(v45 + 4) = &protocol witness table for HierarchicalShapeStyle;
    *v45 = v70;
    v45[40] = 0;
    v71 = &v45[v35[6]];
    v73 = v35[9];
    v72 = v35[10];
    v74 = type metadata accessor for ContentRating();
    (*(*(v74 - 8) + 56))(&v45[v72], 1, 1, v74);
    v293 = &v45[v35[11]];
    v75 = v35[14];
    *&v45[v75] = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610);
    swift_storeEnumTagMultiPayload();
    v76 = v308;
    sub_100123474(v308, &v45[v35[5]], type metadata accessor for ArtworkImage.Info);
    *(v71 + 1) = 0;
    *(v71 + 2) = 0;
    *v71 = 0;
    v77 = &v45[v35[7]];
    v78 = v290;
    *v77 = v300;
    *(v77 + 1) = v78;
    v79 = &v45[v35[8]];
    v80 = v288;
    *v79 = v289;
    v79[1] = v80;
    v45[v73] = v287 & 1;
    v81 = v309;
    sub_100123348(v309, &v45[v72]);
    v82 = &v45[v35[12]];
    sub_1001233B8(&unk_1011847D0, &unk_1011847C0);

    *v82 = ObservedObject.init(wrappedValue:)();
    v82[1] = v83;
    v84 = &v45[v35[13]];
    sub_1001233B8(&qword_10118D310, &unk_10118D300);
    v85 = ObservedObject.init(wrappedValue:)();
    v87 = v86;

    sub_1000095E8(v81, &unk_10118D2F0);
    sub_1001234DC(v76, type metadata accessor for ArtworkImage.Info);
    *v84 = v85;
    v84[1] = v87;
    v88 = v293;
    *v293 = 0;
    *(v88 + 8) = 0;
    sub_100123474(v45, v298, _s8ListCellVMa);
    swift_storeEnumTagMultiPayload();
    sub_10012327C(&qword_10118D2E0, _s8ListCellVMa);
    v89 = v299;
    _ConditionalContent<>.init(storage:)();
    sub_1000089F8(v89, v295, &qword_1011812E8);
    swift_storeEnumTagMultiPayload();
    sub_1001231C8();
    v90 = v296;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v89, &qword_1011812E8);
    sub_1000089F8(v90, v305, &qword_1011812F0);
    swift_storeEnumTagMultiPayload();
    sub_10012314C(&qword_101181300, &qword_1011812F0, &unk_100EBCE08, sub_1001231C8);
    sub_1001232C4(&qword_101181308, &qword_1011812C8, &unk_100EBCDE0, sub_1001231C8);
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v90, &qword_1011812F0);
    sub_1001234DC(v45, _s8ListCellVMa);
    return (*(v264 + 8))(v262, v263);
  }

  else
  {
    v92 = v301;
    v93 = v300;
    v264 = v2;
    v94 = v35;
    if (v54 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      (*(v51 + 96))(v53, v50);
      v95 = v290;
      (*(v289 + 32))();
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v95, &protocol witness table for MusicMovie, v28);
      v96 = sub_10010FC20(&unk_101182950);
      (*(*(v96 - 8) + 56))(v93, 6, 11, v96);
      v97 = _s21RecentlyAddedListCellVMa(0);
      ArtworkImage.Size.init(cgSize:)(*(v264 + *(v97 + 20)), *(v264 + *(v97 + 20) + 8), 0, v313);
      v98 = Corner.small.unsafeMutableAddressor();
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v28, v93, 0, 1, v313, *v98, v98[1], *(v98 + 16), v308);
      v301 = MusicMovie.title.getter();
      v300 = v99;
      v293 = MusicMovie.artistName.getter();
      v292 = v100;
      v101 = type metadata accessor for ContentRating();
      v102 = *(*(v101 - 8) + 56);
      v102(v309, 1, 1, v101);
      v312 = 0;
      v310 = 0u;
      v311 = 0u;
      sub_10010FC20(&unk_1011847C0);
      swift_allocObject();
      v291 = OptionalObservableObject.init(publisher:)(&v310);
      v312 = 0;
      v310 = 0u;
      v311 = 0u;
      sub_10010FC20(&unk_10118D300);
      swift_allocObject();
      v286 = OptionalObservableObject.init(publisher:)(&v310);
      v103 = static HierarchicalShapeStyle.primary.getter();
      *(v45 + 3) = &type metadata for HierarchicalShapeStyle;
      *(v45 + 4) = &protocol witness table for HierarchicalShapeStyle;
      *v45 = v103;
      v45[40] = 0;
      v104 = &v45[v35[6]];
      v105 = v94[9];
      v106 = v94[10];
      v102(&v45[v106], 1, 1, v101);
      v287 = &v45[v94[11]];
      v107 = v94[14];
      *&v45[v107] = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610);
      swift_storeEnumTagMultiPayload();
      v108 = v94[5];
      v285 = type metadata accessor for ArtworkImage.Info;
      v109 = v308;
      sub_100123474(v308, &v45[v108], type metadata accessor for ArtworkImage.Info);
      *(v104 + 1) = 0;
      *(v104 + 2) = 0;
      *v104 = 0;
      v110 = &v45[v94[7]];
      v111 = v300;
      *v110 = v301;
      v110[1] = v111;
      v112 = &v45[v94[8]];
      v113 = v292;
      *v112 = v293;
      v112[1] = v113;
      v45[v105] = 0;
      v114 = v309;
      sub_100123348(v309, &v45[v106]);
      v115 = &v45[v94[12]];
      sub_1001233B8(&unk_1011847D0, &unk_1011847C0);

      *v115 = ObservedObject.init(wrappedValue:)();
      v115[1] = v116;
      v117 = &v45[v94[13]];
      sub_1001233B8(&qword_10118D310, &unk_10118D300);
      v118 = ObservedObject.init(wrappedValue:)();
      v120 = v119;

      sub_1000095E8(v114, &unk_10118D2F0);
      sub_1001234DC(v109, v285);
      *v117 = v118;
      v117[1] = v120;
      v121 = v287;
      *v287 = 0;
      *(v121 + 8) = 0;
      sub_100123474(v45, v298, _s8ListCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D2E0, _s8ListCellVMa);
      v122 = v299;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v122, v295, &qword_1011812E8);
      swift_storeEnumTagMultiPayload();
      sub_1001231C8();
      v123 = v296;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v122, &qword_1011812E8);
      sub_1000089F8(v123, v305, &qword_1011812F0);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_101181300, &qword_1011812F0, &unk_100EBCE08, sub_1001231C8);
      sub_1001232C4(&qword_101181308, &qword_1011812C8, &unk_100EBCDE0, sub_1001231C8);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v123, &qword_1011812F0);
      sub_1001234DC(v45, _s8ListCellVMa);
      return (*(v289 + 8))(v288, v290);
    }

    else if (v54 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v51 + 96))(v53, v50);
      v124 = v287;
      (v286[4])();
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v124, &protocol witness table for MusicVideo, v28);
      v125 = sub_10010FC20(&unk_101182950);
      (*(*(v125 - 8) + 56))(v93, 5, 11, v125);
      v126 = _s21RecentlyAddedListCellVMa(0);
      ArtworkImage.Size.init(cgSize:)(*(v264 + *(v126 + 20)), *(v264 + *(v126 + 20) + 8), 0, v313);
      v127 = Corner.small.unsafeMutableAddressor();
      v128 = v308;
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v28, v93, 0, 1, v313, *v127, v127[1], *(v127 + 16), v308);
      v300 = MusicVideo.title.getter();
      v296 = v129;
      v295 = MusicVideo.artistName.getter();
      v294 = v130;
      v131 = v92;
      MusicVideo.favoriteStatus.getter();
      v132 = v293;
      v133 = v291;
      v134 = v292;
      (*(v293 + 104))(v291, enum case for MusicFavoriteStatus.favorited(_:), v292);
      LODWORD(v290) = static MusicFavoriteStatus.== infix(_:_:)();
      v135 = *(v132 + 8);
      v135(v133, v134);
      v135(v131, v134);
      v136 = v309;
      MusicVideo.contentRating.getter();
      v312 = 0;
      v310 = 0u;
      v311 = 0u;
      sub_10010FC20(&unk_1011847C0);
      swift_allocObject();
      v301 = OptionalObservableObject.init(publisher:)(&v310);
      v312 = 0;
      v310 = 0u;
      v311 = 0u;
      sub_10010FC20(&unk_10118D300);
      swift_allocObject();
      v293 = OptionalObservableObject.init(publisher:)(&v310);
      v137 = static HierarchicalShapeStyle.primary.getter();
      v138 = v45;
      *(v45 + 3) = &type metadata for HierarchicalShapeStyle;
      *(v45 + 4) = &protocol witness table for HierarchicalShapeStyle;
      *v45 = v137;
      v45[40] = 0;
      v139 = &v45[v94[6]];
      v141 = v94[9];
      v140 = v94[10];
      v142 = type metadata accessor for ContentRating();
      (*(*(v142 - 8) + 56))(v138 + v140, 1, 1, v142);
      v292 = (v138 + v94[11]);
      v143 = v94[14];
      *(v138 + v143) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610);
      swift_storeEnumTagMultiPayload();
      v144 = v94[5];
      v291 = type metadata accessor for ArtworkImage.Info;
      sub_100123474(v128, v138 + v144, type metadata accessor for ArtworkImage.Info);
      *(v139 + 1) = 0;
      *(v139 + 2) = 0;
      *v139 = 0;
      v145 = (v138 + v94[7]);
      v146 = v296;
      *v145 = v300;
      v145[1] = v146;
      v147 = (v138 + v94[8]);
      v148 = v294;
      *v147 = v295;
      v147[1] = v148;
      *(v138 + v141) = v290 & 1;
      sub_100123348(v136, v138 + v140);
      v149 = (v138 + v94[12]);
      sub_1001233B8(&unk_1011847D0, &unk_1011847C0);

      *v149 = ObservedObject.init(wrappedValue:)();
      v149[1] = v150;
      v151 = (v138 + v94[13]);
      sub_1001233B8(&qword_10118D310, &unk_10118D300);
      v152 = ObservedObject.init(wrappedValue:)();
      v154 = v153;

      sub_1000095E8(v136, &unk_10118D2F0);
      sub_1001234DC(v128, v291);
      *v151 = v152;
      v151[1] = v154;
      v155 = v292;
      *v292 = 0;
      *(v155 + 1) = 0;
      sub_100123474(v138, v298, _s8ListCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D2E0, _s8ListCellVMa);
      v156 = v299;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v156, v283, &qword_1011812E8);
      swift_storeEnumTagMultiPayload();
      sub_1001231C8();
      v157 = v284;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v156, &qword_1011812E8);
      sub_1000089F8(v157, v305, &qword_1011812C8);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_101181300, &qword_1011812F0, &unk_100EBCE08, sub_1001231C8);
      sub_1001232C4(&qword_101181308, &qword_1011812C8, &unk_100EBCDE0, sub_1001231C8);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v157, &qword_1011812C8);
      sub_1001234DC(v138, _s8ListCellVMa);
      return (v286[1])(v285, v287);
    }

    else if (v54 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v51 + 96))(v53, v50);
      (*(v280 + 32))(v279, v53, v281);
      Playlist.artworkViewModel.getter(v28);
      Playlist.variant.getter();
      v158 = sub_10010FC20(&unk_101182950);
      (*(*(v158 - 8) + 56))(v93, 0, 11, v158);
      v159 = _s21RecentlyAddedListCellVMa(0);
      ArtworkImage.Size.init(cgSize:)(*(v264 + *(v159 + 20)), *(v264 + *(v159 + 20) + 8), 0, v313);
      v160 = Corner.small.unsafeMutableAddressor();
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v28, v93, 0, 1, v313, *v160, v160[1], *(v160 + 16), v278);
      v308 = Playlist.name.getter();
      v300 = v161;
      v162 = Playlist.curatorName.getter();
      if (v163)
      {
        v289 = v163;
        v290 = v162;
        v164 = v292;
        v165 = v92;
        v166 = v293;
        v167 = v291;
      }

      else
      {
        v231 = sub_10034E2C4();
        v164 = v292;
        v165 = v92;
        v167 = v291;
        if (v232)
        {
          v289 = v232;
          v290 = v231;
        }

        else
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v290 = String.init(localized:table:bundle:locale:comment:)();
          v289 = v234;
        }

        v166 = v293;
      }

      Playlist.favoriteStatus.getter();
      (*(v166 + 104))(v167, enum case for MusicFavoriteStatus.favorited(_:), v164);
      LODWORD(v301) = static MusicFavoriteStatus.== infix(_:_:)();
      v235 = *(v166 + 8);
      v235(v167, v164);
      v235(v165, v164);
      v236 = type metadata accessor for ContentRating();
      v237 = *(*(v236 - 8) + 56);
      v237(v309, 1, 1, v236);
      v312 = 0;
      v310 = 0u;
      v311 = 0u;
      sub_10010FC20(&unk_1011847C0);
      swift_allocObject();
      v293 = OptionalObservableObject.init(publisher:)(&v310);
      v312 = 0;
      v310 = 0u;
      v311 = 0u;
      sub_10010FC20(&unk_10118D300);
      swift_allocObject();
      v291 = OptionalObservableObject.init(publisher:)(&v310);
      v238 = static HierarchicalShapeStyle.primary.getter();
      v239 = v273;
      *(v273 + 3) = &type metadata for HierarchicalShapeStyle;
      *(v239 + 32) = &protocol witness table for HierarchicalShapeStyle;
      *v239 = v238;
      *(v239 + 40) = 0;
      v240 = (v239 + v35[6]);
      v241 = v35[9];
      v242 = v35[10];
      v237(v239 + v242, 1, 1, v236);
      v292 = (v239 + v94[11]);
      v243 = v94[14];
      *(v239 + v243) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610);
      swift_storeEnumTagMultiPayload();
      v244 = v278;
      sub_100123474(v278, v239 + v94[5], type metadata accessor for ArtworkImage.Info);
      v240[1] = 0;
      v240[2] = 0;
      *v240 = 0;
      v245 = (v239 + v94[7]);
      v246 = v300;
      *v245 = v308;
      v245[1] = v246;
      v247 = (v239 + v94[8]);
      v248 = v289;
      *v247 = v290;
      v247[1] = v248;
      *(v239 + v241) = v301 & 1;
      v249 = v239 + v242;
      v250 = v309;
      sub_100123348(v309, v249);
      v251 = (v239 + v94[12]);
      sub_1001233B8(&unk_1011847D0, &unk_1011847C0);

      *v251 = ObservedObject.init(wrappedValue:)();
      v251[1] = v252;
      v253 = (v239 + v94[13]);
      sub_1001233B8(&qword_10118D310, &unk_10118D300);
      v254 = ObservedObject.init(wrappedValue:)();
      v256 = v255;

      sub_1000095E8(v250, &unk_10118D2F0);
      sub_1001234DC(v244, type metadata accessor for ArtworkImage.Info);
      *v253 = v254;
      v253[1] = v256;
      v257 = v292;
      *v292 = 0;
      *(v257 + 1) = 0;
      v258 = v274;
      sub_10012340C(v239, v274, _s8ListCellVMa);
      sub_100123474(v258, v298, _s8ListCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D2E0, _s8ListCellVMa);
      v259 = v299;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v259, v295, &qword_1011812E8);
      swift_storeEnumTagMultiPayload();
      sub_1001231C8();
      v260 = v296;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v259, &qword_1011812E8);
      sub_1000089F8(v260, v305, &qword_1011812F0);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_101181300, &qword_1011812F0, &unk_100EBCE08, sub_1001231C8);
      sub_1001232C4(&qword_101181308, &qword_1011812C8, &unk_100EBCDE0, sub_1001231C8);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v260, &qword_1011812F0);
      sub_1001234DC(v258, _s8ListCellVMa);
      return (*(v280 + 8))(v279, v281);
    }

    else if (v54 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v51 + 96))(v53, v50);
      v168 = v277;
      (*(v276 + 32))(v275, v53, v277);
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v168, &protocol witness table for TVSeason, v28);
      v169 = sub_10010FC20(&unk_101182950);
      (*(*(v169 - 8) + 56))(v93, 6, 11, v169);
      v170 = _s21RecentlyAddedListCellVMa(0);
      ArtworkImage.Size.init(cgSize:)(*(v264 + *(v170 + 20)), *(v264 + *(v170 + 20) + 8), 0, v313);
      v171 = Corner.small.unsafeMutableAddressor();
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v28, v93, 0, 1, v313, *v171, v171[1], *(v171 + 16), v308);
      v301 = TVSeason.showName.getter();
      v300 = v172;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v293 = String.init(localized:table:bundle:locale:comment:)();
      v292 = v173;
      v174 = type metadata accessor for ContentRating();
      v290 = *(*(v174 - 8) + 56);
      (v290)(v309, 1, 1, v174);
      v312 = 0;
      v310 = 0u;
      v311 = 0u;
      sub_10010FC20(&unk_1011847C0);
      swift_allocObject();
      v291 = OptionalObservableObject.init(publisher:)(&v310);
      v312 = 0;
      v310 = 0u;
      v311 = 0u;
      sub_10010FC20(&unk_10118D300);
      swift_allocObject();
      v289 = OptionalObservableObject.init(publisher:)(&v310);
      v175 = static HierarchicalShapeStyle.primary.getter();
      *(v45 + 3) = &type metadata for HierarchicalShapeStyle;
      *(v45 + 4) = &protocol witness table for HierarchicalShapeStyle;
      *v45 = v175;
      v45[40] = 0;
      v176 = &v45[v35[6]];
      v177 = v94[9];
      v178 = v94[10];
      (v290)(&v45[v178], 1, 1, v174);
      v290 = &v45[v94[11]];
      v179 = v94[14];
      *&v45[v179] = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610);
      swift_storeEnumTagMultiPayload();
      v180 = v94[5];
      v288 = type metadata accessor for ArtworkImage.Info;
      v181 = v308;
      sub_100123474(v308, &v45[v180], type metadata accessor for ArtworkImage.Info);
      *(v176 + 1) = 0;
      *(v176 + 2) = 0;
      *v176 = 0;
      v182 = &v45[v94[7]];
      v183 = v300;
      *v182 = v301;
      v182[1] = v183;
      v184 = &v45[v94[8]];
      v185 = v292;
      *v184 = v293;
      v184[1] = v185;
      v45[v177] = 0;
      v186 = v309;
      sub_100123348(v309, &v45[v178]);
      v187 = &v45[v94[12]];
      sub_1001233B8(&unk_1011847D0, &unk_1011847C0);

      *v187 = ObservedObject.init(wrappedValue:)();
      v187[1] = v188;
      v189 = &v45[v94[13]];
      sub_1001233B8(&qword_10118D310, &unk_10118D300);
      v190 = ObservedObject.init(wrappedValue:)();
      v192 = v191;

      sub_1000095E8(v186, &unk_10118D2F0);
      sub_1001234DC(v181, v288);
      *v189 = v190;
      v189[1] = v192;
      v193 = v290;
      *v290 = 0;
      *(v193 + 8) = 0;
      sub_100123474(v45, v298, _s8ListCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D2E0, _s8ListCellVMa);
      v194 = v299;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v194, v295, &qword_1011812E8);
      swift_storeEnumTagMultiPayload();
      sub_1001231C8();
      v195 = v296;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v194, &qword_1011812E8);
      sub_1000089F8(v195, v305, &qword_1011812F0);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_101181300, &qword_1011812F0, &unk_100EBCE08, sub_1001231C8);
      sub_1001232C4(&qword_101181308, &qword_1011812C8, &unk_100EBCDE0, sub_1001231C8);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v195, &qword_1011812F0);
      sub_1001234DC(v45, _s8ListCellVMa);
      return (*(v276 + 8))(v275, v277);
    }

    else
    {
      v196 = v309;
      v197 = v264;
      if (v54 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
      {
        (*(v51 + 96))(v53, v50);
        v198 = v270;
        (*(v269 + 32))();
        ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v198, &protocol witness table for UploadedVideo, v28);
        v199 = sub_10010FC20(&unk_101182950);
        (*(*(v199 - 8) + 56))(v93, 5, 11, v199);
        v200 = _s21RecentlyAddedListCellVMa(0);
        ArtworkImage.Size.init(cgSize:)(*(v197 + *(v200 + 20)), *(v197 + *(v200 + 20) + 8), 0, v313);
        v201 = Corner.small.unsafeMutableAddressor();
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v28, v93, 0, 1, v313, *v201, v201[1], *(v201 + 16), v267);
        v202 = UploadedVideo.title.getter();
        if (v203)
        {
          v204 = v202;
        }

        else
        {
          v204 = 0;
        }

        v308 = v204;
        v205 = 0xE000000000000000;
        if (v203)
        {
          v205 = v203;
        }

        v301 = v205;
        v300 = UploadedVideo.artistName.getter();
        v296 = v206;
        UploadedVideo.contentRating.getter();
        v312 = 0;
        v310 = 0u;
        v311 = 0u;
        sub_10010FC20(&unk_1011847C0);
        swift_allocObject();
        v295 = OptionalObservableObject.init(publisher:)(&v310);
        v312 = 0;
        v310 = 0u;
        v311 = 0u;
        sub_10010FC20(&unk_10118D300);
        swift_allocObject();
        v294 = OptionalObservableObject.init(publisher:)(&v310);
        v207 = static HierarchicalShapeStyle.primary.getter();
        v208 = v265;
        *(v265 + 3) = &type metadata for HierarchicalShapeStyle;
        *(v208 + 32) = &protocol witness table for HierarchicalShapeStyle;
        *v208 = v207;
        *(v208 + 40) = 0;
        v209 = (v208 + v35[6]);
        v210 = v196;
        v212 = v94[9];
        v211 = v94[10];
        v213 = type metadata accessor for ContentRating();
        (*(*(v213 - 8) + 56))(v208 + v211, 1, 1, v213);
        v293 = v208 + v94[11];
        v214 = v94[14];
        *(v208 + v214) = swift_getKeyPath();
        sub_10010FC20(&qword_10118A610);
        swift_storeEnumTagMultiPayload();
        v215 = v94[5];
        v292 = type metadata accessor for ArtworkImage.Info;
        v216 = v267;
        sub_100123474(v267, v208 + v215, type metadata accessor for ArtworkImage.Info);
        v209[1] = 0;
        v209[2] = 0;
        *v209 = 0;
        v217 = (v208 + v94[7]);
        v218 = v301;
        *v217 = v308;
        v217[1] = v218;
        v219 = (v208 + v94[8]);
        v220 = v296;
        *v219 = v300;
        v219[1] = v220;
        *(v208 + v212) = 0;
        sub_100123348(v210, v208 + v211);
        v221 = (v208 + v94[12]);
        sub_1001233B8(&unk_1011847D0, &unk_1011847C0);

        *v221 = ObservedObject.init(wrappedValue:)();
        v221[1] = v222;
        v223 = (v208 + v94[13]);
        sub_1001233B8(&qword_10118D310, &unk_10118D300);
        v224 = ObservedObject.init(wrappedValue:)();
        v226 = v225;

        sub_1000095E8(v210, &unk_10118D2F0);
        sub_1001234DC(v216, v292);
        *v223 = v224;
        v223[1] = v226;
        v227 = v293;
        *v293 = 0;
        *(v227 + 8) = 0;
        v228 = v266;
        sub_10012340C(v208, v266, _s8ListCellVMa);
        sub_100123474(v228, v298, _s8ListCellVMa);
        swift_storeEnumTagMultiPayload();
        sub_10012327C(&qword_10118D2E0, _s8ListCellVMa);
        v229 = v299;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v229, v283, &qword_1011812E8);
        swift_storeEnumTagMultiPayload();
        sub_1001231C8();
        v230 = v284;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v229, &qword_1011812E8);
        sub_1000089F8(v230, v305, &qword_1011812C8);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_101181300, &qword_1011812F0, &unk_100EBCE08, sub_1001231C8);
        sub_1001232C4(&qword_101181308, &qword_1011812C8, &unk_100EBCDE0, sub_1001231C8);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v230, &qword_1011812C8);
        sub_1001234DC(v228, _s8ListCellVMa);
        return (*(v269 + 8))(v268, v270);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_1001231C8();
        v233 = v284;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v233, v305, &qword_1011812C8);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_101181300, &qword_1011812F0, &unk_100EBCE08, sub_1001231C8);
        sub_1001232C4(&qword_101181308, &qword_1011812C8, &unk_100EBCDE0, sub_1001231C8);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v233, &qword_1011812C8);
        return (*(v51 + 8))(v53, v50);
      }
    }
  }
}

uint64_t sub_10011F028(uint64_t a1, uint64_t a2)
{
  v340 = type metadata accessor for UploadedVideo();
  v342 = *(v340 - 8);
  __chkstk_darwin(v340);
  v336 = &v329 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v337 = &v329 - v6;
  v350 = type metadata accessor for TVSeason();
  v353 = *(v350 - 8);
  __chkstk_darwin(v350);
  v343 = &v329 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v347 = &v329 - v9;
  v381 = type metadata accessor for MusicMovie();
  v384 = *(v381 - 8);
  __chkstk_darwin(v381);
  v375 = &v329 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v378 = &v329 - v12;
  v372 = type metadata accessor for MusicVideo();
  v376 = *(v372 - 8);
  __chkstk_darwin(v372);
  v369 = &v329 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v370 = &v329 - v15;
  v388 = type metadata accessor for Album();
  v390 = *(v388 - 8);
  __chkstk_darwin(v388);
  v386 = &v329 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v391 = &v329 - v18;
  v368 = type metadata accessor for MusicFavoriteStatus();
  v367 = *(v368 - 8);
  __chkstk_darwin(v368);
  v365 = &v329 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v366 = &v329 - v21;
  v387 = type metadata accessor for Artwork();
  v385 = *(v387 - 8);
  __chkstk_darwin(v387);
  v359 = &v329 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v382);
  v332 = &v329 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v344 = &v329 - v25;
  __chkstk_darwin(v26);
  v373 = &v329 - v27;
  __chkstk_darwin(v28);
  v355 = &v329 - v29;
  __chkstk_darwin(v30);
  v379 = &v329 - v31;
  __chkstk_darwin(v32);
  v349 = &v329 - v33;
  v34 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v34 - 8);
  v331 = &v329 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v333 = &v329 - v37;
  __chkstk_darwin(v38);
  v334 = &v329 - v39;
  __chkstk_darwin(v40);
  v335 = &v329 - v41;
  __chkstk_darwin(v42);
  v341 = &v329 - v43;
  __chkstk_darwin(v44);
  v346 = &v329 - v45;
  __chkstk_darwin(v46);
  v354 = &v329 - v47;
  __chkstk_darwin(v48);
  v374 = &v329 - v49;
  __chkstk_darwin(v50);
  v377 = &v329 - v51;
  __chkstk_darwin(v52);
  v345 = &v329 - v53;
  __chkstk_darwin(v54);
  v360 = &v329 - v55;
  __chkstk_darwin(v56);
  v357 = &v329 - v57;
  __chkstk_darwin(v58);
  v358 = &v329 - v59;
  __chkstk_darwin(v60);
  v380 = &v329 - v61;
  __chkstk_darwin(v62);
  v383 = &v329 - v63;
  __chkstk_darwin(v64);
  v339 = &v329 - v65;
  __chkstk_darwin(v66);
  v351 = &v329 - v67;
  __chkstk_darwin(v68);
  v352 = &v329 - v69;
  v364 = type metadata accessor for Playlist();
  v363 = *(v364 - 8);
  __chkstk_darwin(v364);
  v362 = &v329 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v361 = &v329 - v72;
  v73 = type metadata accessor for RecentlyAddedMusicItem();
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v338 = &v329 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v348 = &v329 - v77;
  __chkstk_darwin(v78);
  v80 = &v329 - v79;
  __chkstk_darwin(v81);
  v371 = &v329 - v82;
  __chkstk_darwin(v83);
  v85 = &v329 - v84;
  __chkstk_darwin(v86);
  v356 = &v329 - v87;
  v88 = sub_10010FC20(&qword_101181140);
  v89 = __chkstk_darwin(v88 - 8);
  v91 = &v329 - v90;
  v93 = *(v92 + 56);
  v94 = *(v74 + 2);
  v94(&v329 - v90, a1, v73, v89);
  (v94)(&v91[v93], a2, v73);
  v95 = *(v74 + 11);
  v96 = v95(v91, v73);
  if (v96 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    LODWORD(v384) = v96;
    (v94)(v85, v91, v73);
    v97 = *(v74 + 12);
    v97(v85, v73);
    v98 = v95(&v91[v93], v73);
    if (v98 == v384)
    {
      v97(&v91[v93], v73);
      v99 = *(v390 + 32);
      v100 = v388;
      v99(v391, v85, v388);
      v101 = v386;
      v99(v386, &v91[v93], v100);
      v102 = Album.title.getter();
      v104 = v103;
      if (v102 == Album.title.getter() && v104 == v105)
      {

        v106 = v387;
        v107 = v383;
      }

      else
      {
        v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v106 = v387;
        v107 = v383;
        if ((v138 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v389 = v91;
      v139 = Album.artistName.getter();
      v141 = v140;
      if (v139 == Album.artistName.getter() && v141 == v142)
      {

        v143 = v380;
      }

      else
      {
        v159 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v143 = v380;
        if ((v159 & 1) == 0)
        {
          v167 = 0;
          v91 = v389;
          goto LABEL_53;
        }
      }

      v330 = v73;
      Album.artwork.getter();
      Album.artwork.getter();
      v160 = *(v382 + 48);
      v161 = v379;
      sub_1000089F8(v107, v379, &unk_101188920);
      sub_1000089F8(v143, v161 + v160, &unk_101188920);
      v162 = v107;
      v163 = *(v385 + 48);
      if (v163(v161, 1, v106) == 1)
      {
        sub_1000095E8(v143, &unk_101188920);
        v164 = v379;
        sub_1000095E8(v162, &unk_101188920);
        v165 = v163(v164 + v160, 1, v106);
        v101 = v386;
        v91 = v389;
        v73 = v330;
        if (v165 == 1)
        {
          sub_1000095E8(v164, &unk_101188920);
LABEL_52:
          v203 = v366;
          Album.favoriteStatus.getter();
          v204 = v365;
          Album.favoriteStatus.getter();
          v167 = static MusicFavoriteStatus.== infix(_:_:)();
          v205 = *(v367 + 8);
          v206 = v204;
          v207 = v368;
          v205(v206, v368);
          v205(v203, v207);
          v101 = v386;
          goto LABEL_53;
        }
      }

      else
      {
        v166 = v358;
        sub_1000089F8(v161, v358, &unk_101188920);
        if (v163(v161 + v160, 1, v106) != 1)
        {
          v199 = v385;
          v200 = v161 + v160;
          v201 = v359;
          (*(v385 + 32))(v359, v200, v106);
          sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork);
          LODWORD(v384) = dispatch thunk of static Equatable.== infix(_:_:)();
          v202 = *(v199 + 8);
          v202(v201, v106);
          sub_1000095E8(v380, &unk_101188920);
          sub_1000095E8(v383, &unk_101188920);
          v202(v166, v106);
          sub_1000095E8(v161, &unk_101188920);
          v101 = v386;
          v91 = v389;
          v73 = v330;
          if (v384)
          {
            goto LABEL_52;
          }

          goto LABEL_34;
        }

        sub_1000095E8(v380, &unk_101188920);
        v164 = v379;
        sub_1000095E8(v383, &unk_101188920);
        (*(v385 + 8))(v166, v106);
        v101 = v386;
        v91 = v389;
        v73 = v330;
      }

      sub_1000095E8(v164, &unk_101191420);
LABEL_34:
      v167 = 0;
LABEL_53:
      v208 = *(v390 + 8);
      v208(v101, v100);
      v208(v391, v100);
LABEL_54:
      (*(v74 + 1))(v91, v73);
      return v167 & 1;
    }

    (*(v390 + 8))(v85, v388);
LABEL_96:
    sub_1000095E8(v91, &qword_101181140);
    v167 = 0;
    return v167 & 1;
  }

  v390 = v93;
  v391 = v95;
  v389 = v91;
  if (v96 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    v108 = v96;
    v91 = v389;
    (v94)(v80, v389, v73);
    v109 = *(v74 + 12);
    v109(v80, v73);
    v110 = v390;
    if ((v391)(&v91[v390], v73) != v108)
    {
      (*(v384 + 8))(v80, v381);
      goto LABEL_96;
    }

    v109(&v91[v110], v73);
    v111 = *(v384 + 32);
    v112 = v378;
    v113 = v110;
    v114 = v381;
    v111(v378, v80, v381);
    v115 = v375;
    v111(v375, &v91[v113], v114);
    v116 = MusicMovie.title.getter();
    v118 = v117;
    if (v116 == MusicMovie.title.getter() && v118 == v119)
    {

      v120 = v377;
      v121 = v374;
    }

    else
    {
      v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v120 = v377;
      v121 = v374;
      if ((v168 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v169 = MusicMovie.artistName.getter();
    v171 = v170;
    if (v169 == MusicMovie.artistName.getter() && v171 == v172)
    {

LABEL_47:
      MusicMovie.artwork.getter();
      MusicMovie.artwork.getter();
      v190 = *(v382 + 48);
      v191 = v120;
      v192 = v373;
      sub_1000089F8(v191, v373, &unk_101188920);
      v193 = v192;
      sub_1000089F8(v121, v192 + v190, &unk_101188920);
      v194 = *(v385 + 48);
      v195 = v387;
      if (v194(v192, 1, v387) == 1)
      {
        sub_1000095E8(v121, &unk_101188920);
        sub_1000095E8(v377, &unk_101188920);
        v196 = *(v384 + 8);
        v196(v115, v114);
        v196(v378, v114);
        v197 = v373;
        if (v194(v373 + v190, 1, v387) == 1)
        {
          sub_1000095E8(v197, &unk_101188920);
          v167 = 1;
LABEL_87:
          (*(v74 + 1))(v389, v73);
          return v167 & 1;
        }
      }

      else
      {
        v209 = v354;
        sub_1000089F8(v193, v354, &unk_101188920);
        if (v194(v193 + v190, 1, v195) != 1)
        {
          v243 = v385;
          v244 = v193 + v190;
          v245 = v359;
          (*(v385 + 32))(v359, v244, v195);
          sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork);
          v167 = dispatch thunk of static Equatable.== infix(_:_:)();
          v246 = *(v243 + 8);
          v246(v245, v195);
          sub_1000095E8(v374, &unk_101188920);
          sub_1000095E8(v377, &unk_101188920);
          v247 = *(v384 + 8);
          v248 = v381;
          v247(v375, v381);
          v247(v378, v248);
          v246(v354, v195);
          sub_1000095E8(v373, &unk_101188920);
          goto LABEL_87;
        }

        sub_1000095E8(v374, &unk_101188920);
        sub_1000095E8(v377, &unk_101188920);
        v210 = *(v384 + 8);
        v210(v375, v114);
        v210(v378, v114);
        v197 = v373;
        (*(v385 + 8))(v209, v195);
      }

      sub_1000095E8(v197, &unk_101191420);
LABEL_58:
      v167 = 0;
      goto LABEL_87;
    }

    v189 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v189)
    {
      goto LABEL_47;
    }

LABEL_50:
    v198 = *(v384 + 8);
    v198(v115, v114);
    v198(v112, v114);
    goto LABEL_58;
  }

  if (v96 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    v122 = v96;
    v123 = v371;
    v124 = v389;
    (v94)(v371, v389, v73);
    v125 = *(v74 + 12);
    v125(v123, v73);
    v126 = v390;
    if ((v391)(&v124[v390], v73) != v122)
    {
      (*(v376 + 8))(v123, v372);
      v91 = v124;
      goto LABEL_96;
    }

    v125(&v124[v126], v73);
    v127 = *(v376 + 32);
    v128 = v370;
    v129 = v123;
    v130 = v372;
    v127(v370, v129, v372);
    v131 = v369;
    v127(v369, &v124[v126], v130);
    v132 = MusicVideo.title.getter();
    v134 = v133;
    if (v132 == MusicVideo.title.getter() && v134 == v135)
    {

      v136 = v357;
      v137 = v360;
    }

    else
    {
      v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v136 = v357;
      v137 = v360;
      if ((v211 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    v212 = MusicVideo.artistName.getter();
    v214 = v213;
    if (v212 == MusicVideo.artistName.getter() && v214 == v215)
    {
    }

    else
    {
      v235 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v235 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    MusicVideo.artwork.getter();
    MusicVideo.artwork.getter();
    v236 = *(v382 + 48);
    v237 = v355;
    sub_1000089F8(v136, v355, &unk_101188920);
    sub_1000089F8(v137, v237 + v236, &unk_101188920);
    v238 = v137;
    v239 = *(v385 + 48);
    v240 = v387;
    if (v239(v237, 1, v387) == 1)
    {
      sub_1000095E8(v238, &unk_101188920);
      v241 = v355;
      sub_1000095E8(v136, &unk_101188920);
      v242 = v239(v241 + v236, 1, v240);
      v128 = v370;
      if (v242 == 1)
      {
        sub_1000095E8(v241, &unk_101188920);
        v131 = v369;
LABEL_84:
        v255 = v366;
        MusicVideo.favoriteStatus.getter();
        v256 = v365;
        MusicVideo.favoriteStatus.getter();
        v167 = static MusicFavoriteStatus.== infix(_:_:)();
        v257 = *(v367 + 8);
        v258 = v256;
        v259 = v368;
        v257(v258, v368);
        v257(v255, v259);
        v128 = v370;
        goto LABEL_86;
      }

LABEL_78:
      sub_1000095E8(v241, &unk_101191420);
      v167 = 0;
      v131 = v369;
LABEL_86:
      v260 = *(v376 + 8);
      v260(v131, v130);
      v260(v128, v130);
      goto LABEL_87;
    }

    v249 = v345;
    sub_1000089F8(v237, v345, &unk_101188920);
    if (v239(v237 + v236, 1, v240) == 1)
    {
      sub_1000095E8(v360, &unk_101188920);
      v241 = v355;
      sub_1000095E8(v136, &unk_101188920);
      (*(v385 + 8))(v249, v240);
      v128 = v370;
      goto LABEL_78;
    }

    v251 = v385;
    v252 = v237 + v236;
    v253 = v359;
    (*(v385 + 32))(v359, v252, v240);
    sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork);
    LODWORD(v391) = dispatch thunk of static Equatable.== infix(_:_:)();
    v254 = *(v251 + 8);
    v254(v253, v240);
    sub_1000095E8(v360, &unk_101188920);
    sub_1000095E8(v136, &unk_101188920);
    v254(v345, v240);
    sub_1000095E8(v237, &unk_101188920);
    v131 = v369;
    v128 = v370;
    if (v391)
    {
      goto LABEL_84;
    }

LABEL_85:
    v167 = 0;
    goto LABEL_86;
  }

  if (v96 != enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    v91 = v389;
    v173 = v391;
    if (v96 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      v174 = v96;
      v175 = v348;
      (v94)(v348, v389, v73);
      v176 = *(v74 + 12);
      v176(v175, v73);
      v177 = v390;
      if (v173(&v91[v390], v73) != v174)
      {
        v216 = *(v353 + 8);
        v217 = v175;
        v218 = &v382;
        goto LABEL_95;
      }

      v176(&v91[v177], v73);
      v178 = *(v353 + 32);
      v179 = v175;
      v180 = v347;
      v181 = v177;
      v182 = v350;
      v178(v347, v179, v350);
      v183 = v343;
      v178(v343, &v91[v181], v182);
      v184 = TVSeason.showName.getter();
      v186 = v185;
      if (v184 == TVSeason.showName.getter() && v186 == v187)
      {

        v188 = v346;
      }

      else
      {
        v261 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v188 = v346;
        if ((v261 & 1) == 0)
        {
          v296 = *(v353 + 8);
          v296(v183, v182);
          v296(v180, v182);
          goto LABEL_111;
        }
      }

      v391 = v74;
      TVSeason.artwork.getter();
      v262 = v341;
      TVSeason.artwork.getter();
      v263 = *(v382 + 48);
      v264 = v188;
      v265 = v344;
      sub_1000089F8(v264, v344, &unk_101188920);
      v266 = v265;
      sub_1000089F8(v262, v265 + v263, &unk_101188920);
      v267 = v183;
      v268 = *(v385 + 48);
      if (v268(v266, 1, v387) == 1)
      {
        sub_1000095E8(v262, &unk_101188920);
        sub_1000095E8(v346, &unk_101188920);
        v269 = *(v353 + 8);
        v269(v267, v182);
        v269(v347, v182);
        v270 = v344;
        v271 = v268(v344 + v263, 1, v387);
        v74 = v391;
        if (v271 == 1)
        {
          v272 = v270;
LABEL_93:
          sub_1000095E8(v272, &unk_101188920);
          v167 = 1;
          goto LABEL_54;
        }

        goto LABEL_106;
      }

      v293 = v335;
      sub_1000089F8(v266, v335, &unk_101188920);
      v294 = v268(v266 + v263, 1, v387);
      v74 = v391;
      if (v294 == 1)
      {
        sub_1000095E8(v341, &unk_101188920);
        sub_1000095E8(v346, &unk_101188920);
        v295 = *(v353 + 8);
        v295(v343, v182);
        v295(v347, v182);
        v270 = v344;
        (*(v385 + 8))(v293, v387);
LABEL_106:
        sub_1000095E8(v270, &unk_101191420);
LABEL_111:
        v167 = 0;
        goto LABEL_54;
      }

      v298 = v385;
      v299 = v266 + v263;
      v300 = v359;
      v301 = v387;
      (*(v385 + 32))(v359, v299, v387);
      sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork);
      v167 = dispatch thunk of static Equatable.== infix(_:_:)();
      v302 = *(v298 + 8);
      v302(v300, v301);
      sub_1000095E8(v341, &unk_101188920);
      sub_1000095E8(v346, &unk_101188920);
      v303 = *(v353 + 8);
      v304 = v350;
      v303(v343, v350);
      v303(v347, v304);
      v302(v335, v301);
      v305 = v344;
LABEL_113:
      sub_1000095E8(v305, &unk_101188920);
      goto LABEL_54;
    }

    if (v96 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      goto LABEL_96;
    }

    v219 = v391;
    v220 = v338;
    v221 = v96;
    (v94)(v338, v389, v73);
    v222 = *(v74 + 12);
    v222(v220, v73);
    v223 = v390;
    if (v219(&v91[v390], v73) != v221)
    {
      v216 = *(v342 + 8);
      v217 = v220;
      v218 = &v372;
      goto LABEL_95;
    }

    v222(&v91[v223], v73);
    v224 = v342;
    v225 = *(v342 + 32);
    v226 = v337;
    v227 = v223;
    v228 = v340;
    v225(v337, v220, v340);
    v229 = v336;
    v225(v336, &v91[v227], v228);
    v230 = UploadedVideo.title.getter();
    v232 = v231;
    v233 = UploadedVideo.title.getter();
    if (v232)
    {
      if (v234)
      {
        if (v230 == v233 && v232 == v234)
        {
        }

        else
        {
          v306 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v306 & 1) == 0)
          {
            goto LABEL_110;
          }
        }

        goto LABEL_115;
      }
    }

    else if (!v234)
    {
LABEL_115:
      v307 = UploadedVideo.artistName.getter();
      v309 = v308;
      if (v307 == UploadedVideo.artistName.getter() && v309 == v310)
      {

        goto LABEL_119;
      }

      v311 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v311)
      {
LABEL_119:
        v312 = v334;
        UploadedVideo.artwork.getter();
        v313 = v333;
        UploadedVideo.artwork.getter();
        v314 = *(v382 + 48);
        v315 = v312;
        v316 = v332;
        sub_1000089F8(v315, v332, &unk_101188920);
        v391 = v314;
        sub_1000089F8(v313, &v314[v316], &unk_101188920);
        v317 = *(v385 + 48);
        v318 = v387;
        if (v317(v316, 1, v387) == 1)
        {
          sub_1000095E8(v313, &unk_101188920);
          sub_1000095E8(v334, &unk_101188920);
          v319 = *(v342 + 8);
          v319(v229, v228);
          v319(v337, v228);
          v320 = v316;
          if (v317(&v391[v316], 1, v387) == 1)
          {
            v272 = v316;
            goto LABEL_93;
          }
        }

        else
        {
          v321 = v331;
          sub_1000089F8(v316, v331, &unk_101188920);
          v320 = v316;
          if (v317(&v391[v316], 1, v318) != 1)
          {
            v324 = v385;
            v325 = &v391[v316];
            v326 = v359;
            (*(v385 + 32))(v359, v325, v318);
            sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork);
            v167 = dispatch thunk of static Equatable.== infix(_:_:)();
            v391 = *(v324 + 8);
            (v391)(v326, v318);
            sub_1000095E8(v333, &unk_101188920);
            sub_1000095E8(v334, &unk_101188920);
            v327 = *(v342 + 8);
            v328 = v340;
            v327(v336, v340);
            v327(v337, v328);
            (v391)(v331, v318);
            v305 = v320;
            goto LABEL_113;
          }

          v322 = v321;
          sub_1000095E8(v333, &unk_101188920);
          sub_1000095E8(v334, &unk_101188920);
          v323 = *(v342 + 8);
          v323(v336, v228);
          v323(v337, v228);
          (*(v385 + 8))(v322, v318);
        }

        sub_1000095E8(v320, &unk_101191420);
        goto LABEL_111;
      }

LABEL_110:
      v297 = *(v224 + 8);
      v297(v229, v228);
      v297(v226, v228);
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v144 = v96;
  v145 = v356;
  v91 = v389;
  (v94)(v356, v389, v73);
  v146 = *(v74 + 12);
  v146(v145, v73);
  v147 = v390;
  if ((v391)(&v91[v390], v73) != v144)
  {
    v216 = *(v363 + 8);
    v217 = v145;
    v218 = &v392;
LABEL_95:
    v216(v217, *(v218 - 32));
    goto LABEL_96;
  }

  v391 = v74;
  v146(&v91[v147], v73);
  v148 = v145;
  v149 = *(v363 + 32);
  v150 = v364;
  v149(v361, v148, v364);
  v149(v362, &v91[v147], v150);
  v151 = v352;
  Playlist.artwork.getter();
  v152 = v351;
  Playlist.artwork.getter();
  v153 = *(v382 + 48);
  v154 = v349;
  sub_1000089F8(v151, v349, &unk_101188920);
  sub_1000089F8(v152, v154 + v153, &unk_101188920);
  v155 = *(v385 + 48);
  v156 = v387;
  v157 = v155(v154, 1, v387);
  v330 = v73;
  if (v157 == 1)
  {
    sub_1000095E8(v152, &unk_101188920);
    sub_1000095E8(v151, &unk_101188920);
    if (v155(v154 + v153, 1, v156) == 1)
    {
      sub_1000095E8(v154, &unk_101188920);
      v158 = 1;
      goto LABEL_99;
    }

    goto LABEL_81;
  }

  v250 = v339;
  sub_1000089F8(v154, v339, &unk_101188920);
  if (v155(v154 + v153, 1, v156) == 1)
  {
    sub_1000095E8(v351, &unk_101188920);
    sub_1000095E8(v352, &unk_101188920);
    (*(v385 + 8))(v250, v156);
LABEL_81:
    sub_1000095E8(v154, &unk_101191420);
    v158 = 0;
    goto LABEL_99;
  }

  v274 = v250;
  v275 = v385;
  v276 = v359;
  (*(v385 + 32))(v359, v154 + v153, v156);
  sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork);
  v158 = dispatch thunk of static Equatable.== infix(_:_:)();
  v277 = *(v275 + 8);
  v277(v276, v156);
  sub_1000095E8(v351, &unk_101188920);
  sub_1000095E8(v352, &unk_101188920);
  v277(v274, v156);
  sub_1000095E8(v154, &unk_101188920);
LABEL_99:
  v278 = Playlist.name.getter();
  v280 = v279;
  if (v278 == Playlist.name.getter() && v280 == v281)
  {
    v282 = 1;
  }

  else
  {
    v282 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v283 = v366;
  v284 = v361;
  Playlist.favoriteStatus.getter();
  v285 = v365;
  v286 = v362;
  Playlist.favoriteStatus.getter();
  v287 = static MusicFavoriteStatus.== infix(_:_:)();
  v288 = *(v367 + 8);
  v289 = v285;
  v290 = v368;
  v288(v289, v368);
  v288(v283, v290);
  v291 = *(v363 + 8);
  v292 = v364;
  v291(v286, v364);
  v291(v284, v292);
  v167 = v158 & v282 & v287;
  (*(v391 + 1))(v91, v330);
  return v167 & 1;
}

uint64_t sub_100121C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for UploadedVideo();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicMovie();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v68 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicVideo();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v65 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Playlist();
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for RecentlyAddedMusicItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v57 = &v55 - v19;
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v23 = *(v16 + 16);
  v58 = a1;
  v23(v22, a1, v15);
  v24 = (*(v16 + 88))(v22, v15);
  if (v24 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v16 + 96))(v22, v15);
    (*(v12 + 32))(v14, v22, v11);
    v25 = *Player.state<A>(for:)(v14);
    (*(v25 + 256))();

    return (*(v12 + 8))(v14, v11);
  }

  if (v24 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v16 + 96))(v22, v15);
    v28 = v68;
    v27 = v69;
    v29 = v70;
    (*(v69 + 32))(v68, v22, v70);
    sub_10012327C(&unk_1011A38E0, &type metadata accessor for MusicMovie);
    v30 = v28;
LABEL_13:
    v33 = *Player.state<A>(for:)(v30);
    (*(v33 + 256))();

    return (*(v27 + 8))(v28, v29);
  }

  if (v24 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v16 + 96))(v22, v15);
    v28 = v65;
    v27 = v66;
    v29 = v67;
    (*(v66 + 32))(v65, v22, v67);
    v31 = &unk_101193C00;
    v32 = &type metadata accessor for MusicVideo;
LABEL_9:
    sub_10012327C(v31, v32);
LABEL_12:
    v30 = v28;
    goto LABEL_13;
  }

  if (v24 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v16 + 96))(v22, v15);
    v28 = v62;
    v27 = v63;
    v29 = v64;
    (*(v63 + 32))(v62, v22, v64);
    goto LABEL_12;
  }

  if (v24 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
  {
    v34 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    v35 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v36 = v71;
    (*(*(v35 - 8) + 104))(v71, v34, v35);
    v37 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v38 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    return (*(v16 + 8))(v22, v15);
  }

  else
  {
    if (v24 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v16 + 96))(v22, v15);
      v28 = v59;
      v27 = v60;
      v29 = v61;
      (*(v60 + 32))(v59, v22, v61);
      v31 = &qword_101181148;
      v32 = &type metadata accessor for UploadedVideo;
      goto LABEL_9;
    }

    if (qword_10117F750 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000060E4(v39, static Logger.libraryView);
    v40 = v57;
    v23(v57, v58, v15);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = v70;
      *v43 = 136446210;
      v23(v56, v40, v15);
      v44 = String.init<A>(describing:)();
      v45 = v40;
      v47 = v46;
      v48 = *(v16 + 8);
      v48(v45, v15);
      v49 = sub_1000105AC(v44, v47, &v72);

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Unsupported Recently Added item type: %{public}s", v43, 0xCu);
      sub_10000959C(v70);
    }

    else
    {

      v48 = *(v16 + 8);
      v48(v40, v15);
    }

    v50 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    v51 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v52 = v71;
    (*(*(v51 - 8) + 104))(v71, v50, v51);
    v53 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v54 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    (*(*(v54 - 8) + 104))(v52, v53, v54);
    return (v48)(v22, v15);
  }
}

uint64_t sub_10012262C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a1;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1001F4CB8(0, 0, v9, &unk_100EBCC70, v12);
}

uint64_t sub_10012280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for MusicPropertySource();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100122928, 0, 0);
}

uint64_t sub_100122928()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for MusicVideo();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for Track.musicVideo(_:), v3);
  (*(v6 + 104))(v4, enum case for MusicPropertySource.library(_:), v5);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_100122A88;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[2];

  return sub_100138C84(v12, v10, v11, 0);
}

uint64_t sub_100122A88()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100122C44(uint64_t a1)
{
  v2 = type metadata accessor for RecentlyAddedMusicItem();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1007350B8(v5, 1);
}

uint64_t sub_100122D04(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10012280C(a1, v6, v7, v8, v1 + v5);
}

void sub_100122E44()
{
  type metadata accessor for RecentlyAddedMusicItem();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100122EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyAddedMusicItem();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100122F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyAddedMusicItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100122FEC()
{
  result = type metadata accessor for RecentlyAddedMusicItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100123098()
{
  result = qword_1011812A8;
  if (!qword_1011812A8)
  {
    sub_1001109D0(&qword_101181298);
    sub_10012327C(&qword_10118D290, _s8GridCellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011812A8);
  }

  return result;
}

uint64_t sub_10012314C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001231C8()
{
  result = qword_1011812F8;
  if (!qword_1011812F8)
  {
    sub_1001109D0(&qword_1011812E8);
    sub_10012327C(&qword_10118D2E0, _s8ListCellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011812F8);
  }

  return result;
}

uint64_t sub_10012327C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001232C4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100123348(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118D2F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001233B8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012340C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001234DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10012353C()
{
  result = qword_101181310;
  if (!qword_101181310)
  {
    sub_1001109D0(&qword_101181318);
    sub_10012314C(&qword_1011812B0, &qword_1011812A0, &unk_100EBCD88, sub_100123098);
    sub_1001232C4(&qword_1011812B8, &qword_101181278, &unk_100EBCD60, sub_100123098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181310);
  }

  return result;
}

unint64_t sub_100123620()
{
  result = qword_101181320;
  if (!qword_101181320)
  {
    sub_1001109D0(&qword_101181328);
    sub_10012314C(&qword_101181300, &qword_1011812F0, &unk_100EBCE08, sub_1001231C8);
    sub_1001232C4(&qword_101181308, &qword_1011812C8, &unk_100EBCDE0, sub_1001231C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Library.ContentFilterOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Library.ContentFilterOption(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100123858()
{
  result = qword_101181330;
  if (!qword_101181330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181330);
  }

  return result;
}

unint64_t sub_1001238AC()
{
  v1 = 0x6575657551;
  if (*v0 != 1)
  {
    v1 = 0x50206D6F74746F42;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

id sub_100123914@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  sub_100008FE4(a2, v10);
  sub_10012B7A8(a3, v9);
  v7 = objc_allocWithZone(type metadata accessor for ShareModelStoryActivity());
  result = sub_10054F29C(v6, v10, v9);
  *a4 = result;
  return result;
}

char *sub_100123994(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v6++;
    v25[0] = v8;
    a1(&v21, v25);
    if (v3)
    {
      break;
    }

    if (v22)
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1004991C4(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1004991C4((v9 > 1), v10 + 1, 1, v7);
      }

      v15 = v19;
      v16 = v20;
      v11 = v17;
      v14 = v18;
      *(v7 + 2) = v10 + 1;
      v12 = &v7[64 * v10];
      *(v12 + 4) = v15;
      *(v12 + 5) = v16;
      *(v12 + 2) = v11;
      *(v12 + 3) = v14;
    }

    else
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      sub_1000095E8(&v17, &qword_101181638);
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_100123B10(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = sub_10010FC20(&qword_1011815E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10010FC20(&unk_1011815F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for IndexPath() - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = _swiftEmptyArrayStorage;
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_1000095E8(v8, &qword_1011815E8);
    }

    else
    {
      v19 = v26;
      sub_10003D17C(v8, v26, &unk_1011815F0);
      sub_10003D17C(v19, v28, &unk_1011815F0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100499384(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_100499384(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_10003D17C(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &unk_1011815F0);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_100123E44(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v11 = v8;
      a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *sub_100123F44(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100498C88(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ActivityType(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001240F8(uint64_t a1)
{
  v77 = type metadata accessor for MusicVideo();
  v3 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v5 - 8);
  v76 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v62 - v8;
  __chkstk_darwin(v9);
  v78 = &v62 - v10;
  v11 = sub_10010FC20(&unk_101181600);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - v13;
  v71 = sub_10010FC20(&unk_101193B10);
  __chkstk_darwin(v71);
  v82 = &v62 - v15;
  sub_100020674(&unk_101181610, &unk_101181600);
  v16 = dispatch thunk of Sequence.underestimatedCount.getter();
  v79 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  v19 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v16;
  v80 = v11;
  v81 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v22 = v17[3] >> 1, v22 < v19))
  {
    if (v18 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    v17 = sub_100499334(isUniquelyReferenced_nonNull_native, v23, 1, v17);
    v22 = v17[3] >> 1;
  }

  v24 = v80;
  v25 = *(v81 + 72);
  v26 = v22 - v17[2];
  v72 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v75 = v25;
  (*(v12 + 16))(v14, a1, v80);
  v27 = dispatch thunk of Sequence._copyContents(initializing:)();
  (*(v12 + 8))(a1, v24);
  if (v27 < v20)
  {
    goto LABEL_16;
  }

  if (v27 >= 1)
  {
    v28 = v17[2];
    v29 = __OFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v17[2] = v30;
  }

  if (v27 != v26)
  {
    v31 = &unk_101193B10;
    v32 = v82;
    goto LABEL_14;
  }

LABEL_17:
  v14 = v17[2];
  v34 = *(v71 + 36);
  sub_100020674(&unk_10118C260, &unk_101181600);
  v35 = v82;
  dispatch thunk of Collection.endIndex.getter();
  v36 = *(v35 + v34);
  v68 = v34;
  if (v36 != v83[0])
  {
LABEL_20:
    v42 = dispatch thunk of Collection.subscript.read();
    v41 = v81;
    v39 = v77;
    v38 = v78;
    (*(v81 + 16))(v78);
    v42(v83, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v37 = 0;
    v40 = v74;
    goto LABEL_21;
  }

  v37 = 1;
  v39 = v77;
  v38 = v78;
  v40 = v74;
  v41 = v81;
LABEL_21:
  v43 = *(v41 + 56);
  v66 = v41 + 56;
  v67 = v43;
  v43(v38, v37, 1, v39);
  v44 = v38;
  v45 = v73;
  sub_1000089F8(v44, v73, &unk_1011846B0);
  v47 = *(v41 + 48);
  v46 = v41 + 48;
  v71 = v47;
  if (v47(v45, 1, v39) != 1)
  {
    v65 = (v3 + 32);
    v64 = (v3 + 16);
    v63 = (v3 + 8);
    v48 = v76;
    v81 = v46;
    do
    {
      sub_1000095E8(v45, &unk_1011846B0);
      v49 = v17[3];
      v50 = v49 >> 1;
      if ((v49 >> 1) < (v14 + 1))
      {
        v17 = sub_100499334(v49 > 1, (v14 + 1), 1, v17);
        v50 = v17[3] >> 1;
      }

      v51 = v65;
      sub_1000089F8(v78, v48, &unk_1011846B0);
      if ((v71)(v48, 1, v77) == 1)
      {
        v48 = v76;
        v52 = v77;
LABEL_30:
        sub_1000095E8(v48, &unk_1011846B0);
        v53 = v14;
      }

      else
      {
        v54 = *v51;
        if (v14 <= v50)
        {
          v53 = v50;
        }

        else
        {
          v53 = v14;
        }

        v48 = v76;
        v55 = v17 + v72 + v75 * v14;
        v52 = v77;
        v69 = *v51;
        v70 = v53;
        while (1)
        {
          v54(v40, v48, v52);
          if (v53 == v14)
          {
            break;
          }

          v60 = v78;
          sub_1000095E8(v78, &unk_1011846B0);
          v54(v55, v40, v52);
          v61 = v82;
          dispatch thunk of Collection.endIndex.getter();
          if (*(v61 + v68) == v83[0])
          {
            v57 = 1;
          }

          else
          {
            v56 = dispatch thunk of Collection.subscript.read();
            (*v64)(v60);
            v56(v83, 0);
            v52 = v77;
            dispatch thunk of Collection.formIndex(after:)();
            v57 = 0;
          }

          v67(v60, v57, 1, v52);
          v58 = v60;
          v48 = v76;
          sub_1000089F8(v58, v76, &unk_1011846B0);
          v59 = (v71)(v48, 1, v52);
          v40 = v74;
          v55 += v75;
          ++v14;
          v54 = v69;
          v53 = v70;
          if (v59 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v63)(v40, v52);
        v14 = v53;
        v48 = v76;
      }

      v17[2] = v53;
      v45 = v73;
      sub_1000089F8(v78, v73, &unk_1011846B0);
    }

    while ((v71)(v45, 1, v52) != 1);
  }

  sub_1000095E8(v78, &unk_1011846B0);
  sub_1000095E8(v82, &unk_101193B10);
  v32 = v45;
  v31 = &unk_1011846B0;
LABEL_14:
  result = sub_1000095E8(v32, v31);
  *v79 = v17;
  return result;
}

uint64_t sub_100124960(uint64_t a1)
{
  v77 = type metadata accessor for Album();
  v3 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v5 - 8);
  v76 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v62 - v8;
  __chkstk_darwin(v9);
  v78 = &v62 - v10;
  v11 = sub_10010FC20(&qword_1011815C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - v13;
  v71 = sub_10010FC20(&qword_1011815C8);
  __chkstk_darwin(v71);
  v82 = &v62 - v15;
  sub_100020674(&unk_1011815D0, &qword_1011815C0);
  v16 = dispatch thunk of Sequence.underestimatedCount.getter();
  v79 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  v19 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v16;
  v80 = v11;
  v81 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v22 = v17[3] >> 1, v22 < v19))
  {
    if (v18 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    v17 = sub_10049935C(isUniquelyReferenced_nonNull_native, v23, 1, v17);
    v22 = v17[3] >> 1;
  }

  v24 = v80;
  v25 = *(v81 + 72);
  v26 = v22 - v17[2];
  v72 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v75 = v25;
  (*(v12 + 16))(v14, a1, v80);
  v27 = dispatch thunk of Sequence._copyContents(initializing:)();
  (*(v12 + 8))(a1, v24);
  if (v27 < v20)
  {
    goto LABEL_16;
  }

  if (v27 >= 1)
  {
    v28 = v17[2];
    v29 = __OFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v17[2] = v30;
  }

  if (v27 != v26)
  {
    v31 = &qword_1011815C8;
    v32 = v82;
    goto LABEL_14;
  }

LABEL_17:
  v14 = v17[2];
  v34 = *(v71 + 36);
  sub_100020674(&unk_10118C140, &qword_1011815C0);
  v35 = v82;
  dispatch thunk of Collection.endIndex.getter();
  v36 = *(v35 + v34);
  v68 = v34;
  if (v36 != v83[0])
  {
LABEL_20:
    v42 = dispatch thunk of Collection.subscript.read();
    v41 = v81;
    v39 = v77;
    v38 = v78;
    (*(v81 + 16))(v78);
    v42(v83, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v37 = 0;
    v40 = v74;
    goto LABEL_21;
  }

  v37 = 1;
  v39 = v77;
  v38 = v78;
  v40 = v74;
  v41 = v81;
LABEL_21:
  v43 = *(v41 + 56);
  v66 = v41 + 56;
  v67 = v43;
  v43(v38, v37, 1, v39);
  v44 = v38;
  v45 = v73;
  sub_1000089F8(v44, v73, &unk_101184730);
  v47 = *(v41 + 48);
  v46 = v41 + 48;
  v71 = v47;
  if (v47(v45, 1, v39) != 1)
  {
    v65 = (v3 + 32);
    v64 = (v3 + 16);
    v63 = (v3 + 8);
    v48 = v76;
    v81 = v46;
    do
    {
      sub_1000095E8(v45, &unk_101184730);
      v49 = v17[3];
      v50 = v49 >> 1;
      if ((v49 >> 1) < (v14 + 1))
      {
        v17 = sub_10049935C(v49 > 1, (v14 + 1), 1, v17);
        v50 = v17[3] >> 1;
      }

      v51 = v65;
      sub_1000089F8(v78, v48, &unk_101184730);
      if ((v71)(v48, 1, v77) == 1)
      {
        v48 = v76;
        v52 = v77;
LABEL_30:
        sub_1000095E8(v48, &unk_101184730);
        v53 = v14;
      }

      else
      {
        v54 = *v51;
        if (v14 <= v50)
        {
          v53 = v50;
        }

        else
        {
          v53 = v14;
        }

        v48 = v76;
        v55 = v17 + v72 + v75 * v14;
        v52 = v77;
        v69 = *v51;
        v70 = v53;
        while (1)
        {
          v54(v40, v48, v52);
          if (v53 == v14)
          {
            break;
          }

          v60 = v78;
          sub_1000095E8(v78, &unk_101184730);
          v54(v55, v40, v52);
          v61 = v82;
          dispatch thunk of Collection.endIndex.getter();
          if (*(v61 + v68) == v83[0])
          {
            v57 = 1;
          }

          else
          {
            v56 = dispatch thunk of Collection.subscript.read();
            (*v64)(v60);
            v56(v83, 0);
            v52 = v77;
            dispatch thunk of Collection.formIndex(after:)();
            v57 = 0;
          }

          v67(v60, v57, 1, v52);
          v58 = v60;
          v48 = v76;
          sub_1000089F8(v58, v76, &unk_101184730);
          v59 = (v71)(v48, 1, v52);
          v40 = v74;
          v55 += v75;
          ++v14;
          v54 = v69;
          v53 = v70;
          if (v59 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v63)(v40, v52);
        v14 = v53;
        v48 = v76;
      }

      v17[2] = v53;
      v45 = v73;
      sub_1000089F8(v78, v73, &unk_101184730);
    }

    while ((v71)(v45, 1, v52) != 1);
  }

  sub_1000095E8(v78, &unk_101184730);
  sub_1000095E8(v82, &qword_1011815C8);
  v32 = v45;
  v31 = &unk_101184730;
LABEL_14:
  result = sub_1000095E8(v32, v31);
  *v79 = v17;
  return result;
}

uint64_t sub_1001251E0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001270A4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1001252D8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1004997E4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&unk_101181570);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1001253DC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100499B64(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&qword_10119E600);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001254E4(uint64_t result)
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

  result = sub_100499CD0(result, v10, 1, v3);
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

void *sub_1001255D8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_10049A42C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&qword_1011815E0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001256F4(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001257F0(uint64_t result)
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

  result = sub_10049A65C(result, v10, 1, v3);
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

void *sub_1001258E8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100056354(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&unk_1011815B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100125A18(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100125B5C(uint64_t result)
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

  result = sub_100498B7C(result, v10, 1, v3);
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

uint64_t sub_100125C50(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1004990D0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100125D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = &v19[-v11];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  sub_10012B7A8(a2, v19);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  (*(v7 + 32))(v17 + v15, v9, v6);
  sub_10012B828(v19, v17 + v16);
  *(v17 + ((v16 + 103) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1001F4CB8(0, 0, v12, &unk_100EBCFD8, v17);
}

uint64_t sub_100125F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100126004, v7, v6);
}

uint64_t sub_100126004()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_10012A364(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_1001260A8(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = OBJC_IVAR____TtC5Music22ActivityViewController_defaultExcludedActivityTypes;
  sub_10010FC20(&qword_101181538);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBCED0;
  *(v11 + 32) = UIActivityTypePrint;
  *(v11 + 40) = UIActivityTypeAssignToContact;
  *(v11 + 48) = UIActivityTypeAddToReadingList;
  *(v11 + 56) = UIActivityTypePostToFlickr;
  *(v11 + 64) = UIActivityTypePostToVimeo;
  *(v11 + 72) = UIActivityTypeOpenInIBooks;
  *&v7[v10] = v11;
  v12 = &v7[OBJC_IVAR____TtC5Music22ActivityViewController_recipientEmail];
  *v12 = a4;
  *(v12 + 1) = a5;
  v13 = &v7[OBJC_IVAR____TtC5Music22ActivityViewController_recipientPhoneNumber];
  *v13 = a6;
  *(v13 + 1) = a7;
  v14 = UIActivityTypePrint;
  v15 = UIActivityTypeAssignToContact;
  v16 = UIActivityTypeAddToReadingList;
  v17 = a1;
  v18 = UIActivityTypePostToFlickr;
  v19 = UIActivityTypePostToVimeo;
  v20 = UIActivityTypeOpenInIBooks;
  v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a1)
  {
    sub_100009F78(0, &unk_101183F50);

    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v22.super.isa = 0;
    v17 = _swiftEmptyArrayStorage;
  }

  v65.receiver = v7;
  v65.super_class = type metadata accessor for ActivityViewController();
  v23 = objc_msgSendSuper2(&v65, "initWithActivityItems:applicationActivities:", v21.super.isa, v22.super.isa);

  if (!(v17 >> 62))
  {
    v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_28:
    v45 = v23;
LABEL_29:

    v46 = OBJC_IVAR____TtC5Music22ActivityViewController_defaultExcludedActivityTypes;
    swift_beginAccess();
    v47 = *&v23[v46];

    if (a3)
    {
      sub_100123F44(a3);
    }

    type metadata accessor for ActivityType(0);
    v48 = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v48 setExcludedActivityTypes:isa];

    v50 = 0;
    v51 = *(v47 + 16);
    while (1)
    {
      v52 = v50;
      if (v51 == v50)
      {
        goto LABEL_41;
      }

      if (v50 >= *(v47 + 16))
      {
        break;
      }

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
      if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
      {

LABEL_41:

        [v48 setAllowsProminentActivity:v51 == v52];

        return;
      }

      ++v50;
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v58)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (v24 >= 1)
  {
    v25 = OBJC_IVAR____TtC5Music22ActivityViewController_defaultExcludedActivityTypes;
    v26 = v17 & 0xC000000000000001;
    v27 = v23;
    v28 = 0;
    v62 = v17 & 0xC000000000000001;
    v64 = v17;
    while (1)
    {
      if (v26)
      {
        v32 = sub_1007E90FC(v28, v17);
      }

      else
      {
        v32 = *(v17 + 8 * v28 + 32);
      }

      v31 = v32;
      v33 = [(NSString *)v32 activityType];
      if (!v33)
      {
        goto LABEL_10;
      }

      v30 = v33;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
      v37._countAndFlagsBits = v34;
      v37._object = v36;
      v38 = _findStringSwitchCase(cases:string:)(&off_101099418, v37);

      if (v38 > 1)
      {
        if (v38 == 2 || v38 == 3)
        {
LABEL_21:
          v39 = String._bridgeToObjectiveC()();
          goto LABEL_22;
        }
      }

      else
      {
        if (!v38)
        {
          goto LABEL_21;
        }

        if (v38 == 1)
        {
          v39 = UIActivityTypePostToFacebook;
LABEL_22:
          v40 = v39;
          swift_beginAccess();
          v41 = *&v23[v25];
          v29 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v23[v25] = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = sub_100498C88(0, v41[2] + 1, 1, v41);
            *&v23[v25] = v41;
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_100498C88((v43 > 1), v44 + 1, 1, v41);
          }

          v41[2] = v44 + 1;
          v41[v44 + 4] = v29;
          *&v23[v25] = v41;
          swift_endAccess();

          v26 = v62;
          v17 = v64;
          goto LABEL_9;
        }
      }

      v29 = v30;
      v30 = v31;
LABEL_9:

      v31 = v30;
LABEL_10:
      ++v28;

      if (v24 == v28)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_43:
  __break(1u);
}

void sub_1001266CC(id a1)
{
  if ([v1 sharingStyle] != a1)
  {
    v2 = OBJC_IVAR____TtC5Music22ActivityViewController_defaultExcludedActivityTypes;
    swift_beginAccess();
    v3 = *&v1[v2];

    if ([v1 sharingStyle] == 2)
    {
      v4 = UIActivityTypeCopyToPasteboard;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100498C88(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v6 = v3[3];
      v7 = v5 + 1;
      if (v5 >= v6 >> 1)
      {
        v12 = v5 + 1;
        v9 = v3;
        v10 = v3[2];
        v11 = sub_100498C88((v6 > 1), v5 + 1, 1, v9);
        v5 = v10;
        v7 = v12;
        v3 = v11;
      }

      v3[2] = v7;
      v3[v5 + 4] = v4;
    }

    type metadata accessor for ActivityType(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setExcludedActivityTypes:isa];
  }
}

void sub_100126814(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ActivityViewController();
  objc_msgSendSuper2(&v17, "_prepareActivity:", a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC5Music22ActivityViewController_recipientPhoneNumber + 8];
    if (!v4)
    {
      return;
    }

    v5 = *&v1[OBJC_IVAR____TtC5Music22ActivityViewController_recipientPhoneNumber];
    v6 = v3;

    v7 = [v6 messageComposeViewController];
    if (v7)
    {
      v8 = v7;
      sub_10010FC20(&unk_101181640);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100EBC6B0;
      *(v9 + 32) = v5;
      *(v9 + 40) = v4;
      v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 setRecipients:v10.super.isa];
LABEL_9:

      return;
    }

LABEL_10:

    return;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music22ActivityViewController_recipientEmail + 8];
    if (v12)
    {
      v13 = *&v1[OBJC_IVAR____TtC5Music22ActivityViewController_recipientEmail];
      v14 = v11;

      v15 = [v14 mailComposeViewController];
      if (v15)
      {
        v8 = v15;
        sub_10010FC20(&unk_101181640);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100EBC6B0;
        *(v16 + 32) = v13;
        *(v16 + 40) = v12;
        v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v8 setToRecipients:v10.super.isa];
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }
}

id sub_100126F24(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ShareActivityItemProvider()
{
  result = qword_1011814B0;
  if (!qword_1011814B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012700C()
{
  sub_100039B3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001270A4(uint64_t a1)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100127144(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_101181518, &qword_101181510);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_101181510);
            v9 = sub_1006CAC94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &unk_101183F50);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001272F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_1011815A8, &qword_1011815A0);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011815A0);
            v9 = sub_1006CAD94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &qword_1011838A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}