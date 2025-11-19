uint64_t sub_37C238()
{
  v0 = sub_3ED494();
  v4 = sub_37C2B8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_37C2B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_3EE104();
    if (!v9 || (v10 = v9, v11 = sub_37A144(v9, 0), v12 = sub_37C410(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_3ED384();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_3ED384();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_3EE484();
LABEL_4:

  return sub_3ED384();
}

unint64_t sub_37C410(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_37C630(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_3ED424();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_3EE484();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_37C630(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_3ED404();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_37C630(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_3ED434();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_3ED414();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_37C6AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_3ED814();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_30E74(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_37C744(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_36174(0, &qword_4F1C20);
    sub_100944();
    result = sub_3ED814();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_3EE3F4();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_312F4(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_3EE5A4();
  }

  v5 = result;
  v4 = sub_3EE5A4();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_37C884(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_C2A1C();
  result = sub_3ED814();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_311FC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_37C8F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = result;
  v30 = 0;
  v5 = 0;
  v28 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a4 + 56;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v31 = v11 | (v5 << 6);
    v14 = *(*(*(a3 + 48) + 8 * v31) + 32);

    v15 = [v14 identifier];
    v16 = sub_3ED244();
    v18 = v17;

    if (!*(a4 + 16))
    {

      goto LABEL_23;
    }

    v33 = v8;
    v19 = v9;
    sub_3EE954();
    sub_3ED394();
    v20 = sub_3EE9A4();
    v21 = -1 << *(a4 + 32);
    v22 = v20 & ~v21;
    if ((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = (*(a4 + 48) + 16 * v22);
        v25 = *v24 == v16 && v24[1] == v18;
        if (v25 || (sub_3EE804() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v9 = v19;
      v8 = v33;
    }

    else
    {
LABEL_22:

      v9 = v19;
      v8 = v33;
LABEL_23:

      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      if (__OFADD__(v30++, 1))
      {
        goto LABEL_29;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {

      return sub_37B9B4(v29, v27, v30, a3);
    }

    v13 = *(v28 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_37CB60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v37[1] = v3;
    v37[2] = v37;
    v38 = v8;
    __chkstk_darwin(v10);
    v40 = v37 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v9);
    v8 = 0;
    v11 = *(v5 + 56);
    v39 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = a2 + 56;
    v41 = 0;
    v42 = v15;
    while (v14)
    {
      v17 = __clz(__rbit64(v14));
      v44 = (v14 - 1) & v14;
LABEL_14:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48);
      v43 = v20;
      v22 = *(*(v21 + 8 * v20) + 32);

      v9 = [v22 identifier];
      v3 = sub_3ED244();
      v24 = v23;

      if (!*(a2 + 16))
      {

        goto LABEL_24;
      }

      v25 = v5;
      sub_3EE954();
      sub_3ED394();
      v26 = sub_3EE9A4();
      v27 = -1 << *(a2 + 32);
      v9 = v26 & ~v27;
      if ((*(v16 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v28 = ~v27;
        while (1)
        {
          v29 = (*(a2 + 48) + 16 * v9);
          v30 = *v29 == v3 && v29[1] == v24;
          if (v30 || (sub_3EE804() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v28;
          if (((*(v16 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v5 = v25;
        v15 = v42;
        v14 = v44;
      }

      else
      {
LABEL_23:

        v5 = v25;
        v15 = v42;
LABEL_24:

        *&v40[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        v31 = __OFADD__(v41++, 1);
        v14 = v44;
        if (v31)
        {
          goto LABEL_31;
        }
      }
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        v32 = sub_37B9B4(v40, v38, v41, v5);

        return v32;
      }

      v19 = *(v39 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v34 = v5;
  v35 = swift_slowAlloc();

  v36 = sub_37BC10(v35, v8, v34, a2);

  return v36;
}

Swift::Int sub_37CF1C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_37CB60(a1, a2);
  }

  sub_3EE294();
  if (sub_3EE304())
  {
    type metadata accessor for Highlight();
    v3 = a2 + 56;
    do
    {
      swift_dynamicCast();
      v11 = [*(v25 + 32) identifier];
      v12 = sub_3ED244();
      v14 = v13;

      if (*(a2 + 16) && (sub_3EE954(), sub_3ED394(), v15 = sub_3EE9A4(), v16 = -1 << *(a2 + 32), v17 = v15 & ~v16, ((*(v3 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (*(a2 + 48) + 16 * v17);
          v20 = *v19 == v12 && v19[1] == v14;
          if (v20 || (sub_3EE804() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v3 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:

        if (*(&_swiftEmptySetSingleton + 3) <= *(&_swiftEmptySetSingleton + 2))
        {
          sub_37B18C();
        }

        sub_3EE954();
        v4 = [*(v25 + 32) identifier];
        sub_3ED244();

        sub_3ED394();

        result = sub_3EE9A4();
        v6 = &_swiftEmptySetSingleton + 56;
        v7 = -1 << *(&_swiftEmptySetSingleton + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7)) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v9 == v22;
            if (v9 == v22)
            {
              v9 = 0;
            }

            v21 |= v23;
            v24 = *&v6[8 * v9];
          }

          while (v24 == -1);
          v10 = __clz(__rbit64(~v24)) + (v9 << 6);
        }

        *&v6[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v10) = v25;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (sub_3EE304());
  }

  return &_swiftEmptySetSingleton;
}

char *sub_37D23C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    if (!i)
    {
      goto LABEL_12;
    }

    result = sub_41BA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_3EE3F4();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 identifier];
      v8 = sub_3ED244();
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_41BA8((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
    }

    while (i != v4);
LABEL_12:
    v14 = sub_37C6AC(_swiftEmptyArrayStorage);

    sub_3E9D64();
    v15 = v38;
    if (v38 >> 62)
    {
      v16 = sub_3EE5A4();
      v15 = v38;
      if (!v16)
      {
LABEL_38:

        v32 = OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsDisplayedOnCurrentPage;
        swift_beginAccess();

        v34 = sub_37CF1C(v33, v14);

        *(v35 + v32) = v34;

        sub_3E9D44();
      }
    }

    else
    {
      v16 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
      if (!v16)
      {
        goto LABEL_38;
      }
    }

    v17 = 0;
    v36 = v15 & 0xFFFFFFFFFFFFFF8;
    v37 = v15 & 0xC000000000000001;
    v18 = v15 + 32;
    v19 = v14 + 56;
    while (1)
    {
      if (v37)
      {
        v20 = sub_3EE3F4();
      }

      else
      {
        if (v17 >= *(v36 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(v18 + 8 * v17);
      }

      v21 = v20;
      if (__OFADD__(v17++, 1))
      {
        break;
      }

      v23 = [v20 identifier];
      v24 = sub_3ED244();
      v26 = v25;

      if (*(v14 + 16) && (sub_3EE954(), sub_3ED394(), v27 = sub_3EE9A4(), v28 = -1 << *(v14 + 32), v29 = v27 & ~v28, ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v1 = ~v28;
        while (1)
        {
          v30 = (*(v14 + 48) + 16 * v29);
          v31 = *v30 == v24 && v30[1] == v26;
          if (v31 || (sub_3EE804() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v1;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (v17 == v16)
        {
          goto LABEL_38;
        }
      }

      else
      {
LABEL_15:

        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
        if (v17 == v16)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_37D6A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37D6D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_37D720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_37D768()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37D7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_37D810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_37D880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_37D8E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_37D940()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t ImageViewProtocol.fetch(artwork:using:checkCacheSynchronously:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v135) = a3;
  v140 = a2;
  v141 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v8 - 8);
  v118 = &v106 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB478);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v106 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB480);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v106 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB488);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v136 = &v106 - v12;
  v114 = sub_3E6724();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_3E7554();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3E9A04();
  v138 = *(v15 - 8);
  v139 = v15;
  __chkstk_darwin(v15);
  v133 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v106 - v18;
  v148 = sub_3E7CA4();
  v19 = *(v148 - 8);
  __chkstk_darwin(v148);
  v119 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v130 = &v106 - v22;
  __chkstk_darwin(v23);
  v129 = &v106 - v24;
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  __chkstk_darwin(v28);
  v30 = &v106 - v29;
  v117 = v31;
  __chkstk_darwin(v32);
  v146 = &v106 - v33;
  v34 = sub_3E61F4();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE750);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v116 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v38;
  v40 = __chkstk_darwin(v39);
  v42 = &v106 - v41;
  v43 = *(a5 + 40);
  v142 = v5;
  v147 = a4;
  v44 = a4;
  v45 = a5;
  if (v43(v44, a5, v40))
  {
    sub_3E9CA4();
  }

  sub_3E61E4();
  v144 = v42;
  sub_3E61D4();
  (*(v35 + 8))(v37, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBD8);
  sub_3EC394();
  v46 = v146;
  sub_3E7C84();
  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  v128 = (*(a5 + 64))() | v135;
  v47 = v137;
  sub_3E9984();
  v48 = *(v19 + 16);
  v49 = v148;
  v48(v30, v46, v148);
  v48(v27, v46, v49);
  v50 = v129;
  v135 = v19 + 16;
  v134 = v48;
  v48(v129, v46, v49);
  v51 = v47;
  v52 = sub_3E99F4();
  v53 = sub_3ED9C4();
  v54 = os_log_type_enabled(v52, v53);
  v143 = v45;
  v145 = v19;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = v27;
    v57 = swift_slowAlloc();
    v106 = v57;
    v108 = swift_slowAlloc();
    v152[0] = v108;
    *v55 = 138412802;
    v107 = v53;
    v58 = sub_3E7C34();
    v59 = *(v19 + 8);
    v59(v30, v49);
    *(v55 + 4) = v58;
    *v57 = v58;
    *(v55 + 12) = 2080;
    v60 = sub_3E7C94();
    v62 = v61;
    v59(v56, v148);
    v63 = sub_2EDD0(v60, v62, v152);

    *(v55 + 14) = v63;
    *(v55 + 22) = 2080;
    v49 = v148;
    v64 = v109;
    sub_3E7BF4();
    v65 = sub_3E7544();
    v67 = v66;
    (*(v110 + 8))(v64, v111);
    v59(v50, v49);
    v68 = sub_2EDD0(v65, v67, v152);

    *(v55 + 24) = v68;
    _os_log_impl(&dword_0, v52, v107, "Starting ArtworkRequest for image view protocol: %@ | %s.%s", v55, 0x20u);
    sub_FCF8(v106, &unk_502160);

    swift_arrayDestroy();

    v45 = v143;

    v69 = *(v138 + 8);
    v69(v137, v139);
  }

  else
  {

    v59 = *(v19 + 8);
    v59(v50, v49);
    v59(v27, v49);
    v59(v30, v49);
    v69 = *(v138 + 8);
    v69(v51, v139);
  }

  v70 = v146;
  v71 = v130;
  if ((v128 & 1) != 0 && (v72 = v112, sub_3E7BE4(), v73 = sub_37F3DC(v72, v144), (*(v113 + 8))(v72, v114), v73))
  {
    v74 = *(v45 + 24);
    v75 = v73;
    v74(v73, v147, v45);

    v76 = v144;
    v77 = v132;
    v78 = v131;
  }

  else
  {
    sub_3E9984();
    v134(v71, v70, v49);
    v79 = sub_3E99F4();
    v80 = sub_3ED9C4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      v83 = sub_3E7C34();
      v59(v71, v148);
      *(v81 + 4) = v83;
      *v82 = v83;
      _os_log_impl(&dword_0, v79, v80, "Fulfilling request asynchronously: %@", v81, 0xCu);
      sub_FCF8(v82, &unk_502160);
    }

    else
    {

      v59(v71, v148);
    }

    v69(v133, v139);
    (*(v45 + 24))(0, v147, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBE0);
    sub_3EC394();
    __swift_project_boxed_opaque_existential_1(v152, v152[3]);
    v149 = sub_3E62A4();
    sub_801B4();
    v84 = sub_3EDBC4();
    v151 = v84;
    v85 = sub_3EDB64();
    v86 = v118;
    (*(*(v85 - 8) + 56))(v118, 1, 1, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE708);
    sub_886BC(&qword_4EE718, &qword_4EE708);
    sub_87870();
    v87 = v120;
    sub_3EA114();
    sub_FCF8(v86, &qword_4F69E0);

    __swift_destroy_boxed_opaque_existential_1Tm(v152);
    sub_3E65F4();
    sub_3EC434();
    v88 = sub_886BC(&qword_4FB490, &qword_4FB478);
    v89 = v123;
    v90 = v122;
    sub_3E9ED4();

    (*(v121 + 8))(v87, v90);
    sub_3E7C64();
    v149 = v90;
    v150 = v88;
    swift_getOpaqueTypeConformance2();
    v91 = v125;
    sub_3E79E4();
    sub_3E9F04();
    sub_FCF8(v152, &qword_4EE870);
    (*(v124 + 8))(v89, v91);
    v141 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = v119;
    v93 = v148;
    v134(v119, v146, v148);
    v78 = v131;
    v94 = v116;
    v77 = v132;
    (*(v131 + 16))(v116, v144, v132);
    v95 = v145;
    v96 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v97 = (v117 + *(v78 + 80) + v96) & ~*(v78 + 80);
    v98 = (v115 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    v100 = v143;
    *(v99 + 16) = v147;
    *(v99 + 24) = v100;
    (*(v95 + 32))(v99 + v96, v92, v93);
    (*(v78 + 32))(v99 + v97, v94, v77);
    *(v99 + v98) = v141;
    sub_886BC(&qword_4FB498, &qword_4FB488);
    v101 = v127;
    v102 = v136;
    v103 = sub_3EA044();

    v70 = v146;
    (*(v126 + 8))(v102, v101);
    v104 = v103;
    v76 = v144;
    (*(v143 + 48))(v104, v147);
    v59 = *(v95 + 8);
  }

  v59(v70, v148);
  return (*(v78 + 8))(v76, v77);
}

void sub_37EB50(uint64_t *a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (v6)
  {
    swift_errorRetain();
    sub_3E9984();
    swift_errorRetain();
    v7 = sub_3E99F4();
    v8 = sub_3ED9D4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v6;
      v15 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
      v11 = sub_3ED2B4();
      v13 = sub_2EDD0(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "Failed to load artwork for image view: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_37ED4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v36 = a3;
  v10 = sub_3E6724();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v35 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E7CA4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3E9A04();
  v16 = *(v33 - 8);
  __chkstk_darwin(v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  sub_3E9984();
  v19 = *(v13 + 16);
  v37 = a2;
  v19(v15, a2, v12);
  v20 = sub_3E99F4();
  v21 = sub_3ED9C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = a6;
    v23 = v22;
    v24 = swift_slowAlloc();
    v31 = a5;
    v25 = v24;
    *v23 = 138412290;
    v26 = sub_3E7C34();
    (*(v13 + 8))(v15, v12);
    *(v23 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&dword_0, v20, v21, "Received async image for: %@", v23, 0xCu);
    sub_FCF8(v25, &unk_502160);
    a5 = v31;

    a6 = v32;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  (*(v16 + 8))(v18, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE750);
  sub_3E7664();
  v28 = v34;
  v27 = v35;
  v41 = v34;
  sub_3E7BE4();
  sub_3E8684();

  (*(v38 + 8))(v27, v39);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a6 + 72))(v28, a5, a6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_37F11C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37F154()
{
  v1 = sub_3E7CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE750);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_37F2BC(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_3E7CA4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE750) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_37ED4C(a1, v1 + v6, v1 + v9, v10, v3, v4);
}

char *sub_37F3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503E50);
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v56 - v5;
  v6 = sub_3E6724();
  v62 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  __chkstk_darwin(v12);
  v60 = &v56 - v13;
  v14 = sub_3E9A04();
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE750);
  v23 = a2;
  sub_3E7664();
  sub_3E8674();

  v61 = v65;
  if (v65)
  {
    sub_3E9984();
    v24 = v62;
    v25 = v60;
    (*(v62 + 16))(v60, a1, v6);
    v26 = sub_3E99F4();
    v27 = sub_3ED9C4();
    v28 = v6;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = sub_3E6714();
      (*(v24 + 8))(v25, v28);
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&dword_0, v26, v27, "Found memory-cached value for request: %@", v29, 0xCu);
      sub_FCF8(v30, &unk_502160);
    }

    else
    {

      (*(v24 + 8))(v25, v6);
    }

    (*(v63 + 8))(v22, v64);
    return v61;
  }

  else
  {
    v60 = v11;
    v61 = v19;
    v56 = v8;
    v32 = v62;
    v33 = v57;
    sub_3E7654();
    v34 = v59;
    sub_3E7644();
    (*(v58 + 8))(v33, v34);
    v35 = v65;
    v36 = a1;
    if (v65)
    {
      v37 = v61;
      sub_3E9984();
      v38 = v32;
      v39 = v60;
      (*(v32 + 16))(v60, v36, v6);
      v40 = sub_3E99F4();
      v41 = sub_3ED9C4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v58 = v23;
        v59 = v36;
        v43 = v35;
        v44 = v42;
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = sub_3E6714();
        (*(v38 + 8))(v39, v6);
        *(v44 + 4) = v46;
        *v45 = v46;
        _os_log_impl(&dword_0, v40, v41, "Found disk-cached value for request: %@", v44, 0xCu);
        sub_FCF8(v45, &unk_502160);

        v35 = v43;
        v37 = v61;
      }

      else
      {

        (*(v38 + 8))(v39, v6);
      }

      (*(v63 + 8))(v37, v64);
      sub_3E7664();
      v65 = v35;
      sub_3E8684();
    }

    else
    {
      v47 = v16;
      sub_3E9984();
      v48 = v32;
      v49 = v56;
      (*(v32 + 16))(v56, v36, v6);
      v50 = sub_3E99F4();
      v51 = sub_3ED9C4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = sub_3E6714();
        (*(v48 + 8))(v49, v6);
        *(v52 + 4) = v54;
        *v53 = v54;
        _os_log_impl(&dword_0, v50, v51, "Unable to find cached value for request: %@", v52, 0xCu);
        sub_FCF8(v53, &unk_502160);
      }

      else
      {

        (*(v48 + 8))(v49, v6);
      }

      (*(v63 + 8))(v47, v64);
      return 0;
    }
  }

  return v35;
}

uint64_t Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v31 = a7;
  v32 = a8;
  v30 = a6;
  v34 = a12;
  v33 = a11;
  v18 = sub_3E5FC4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_3E5FB4();
    a1 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    a2 = v22;
    (*(v19 + 8))(v21, v18);
  }

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v23 = v30;
  v24 = v31;
  a9[4] = a5;
  a9[5] = v23;
  v25 = v32;
  a9[6] = v24;
  a9[7] = v25;
  sub_FBD0(a10, (a9 + 8), &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  sub_FCF8(a10, &qword_4EDE00);
  *(v26 + 16) = v33 & 1;
  a9[13] = v26;
  v27 = type metadata accessor for Information();
  return sub_14A10(v34, a9 + *(v27 + 40));
}

uint64_t type metadata accessor for Information()
{
  result = qword_503EB8;
  if (!qword_503EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Information.expanded.setter(char a1)
{
  v3 = *(v1 + 104);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a1;

  os_unfair_lock_unlock((v3 + 20));
}

void (*Information.expanded.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = *(v1 + 104);
  sub_3E9874();
  *(a1 + 8) = *(a1 + 9);
  return sub_37FED8;
}

void sub_37FED8(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 5);
  LOBYTE(v1[4]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 5);
}

uint64_t Information.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Information();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_37FF68(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_37FF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Information();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_37FFCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_37FF68(v2, boxed_opaque_existential_0Tm);
}

uint64_t Information.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v80 = a3;
  v5 = sub_3E5FC4();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin(v5);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_3EBF94();
  v7 = *(v86 - 8);
  __chkstk_darwin(v86);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v82 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v66 - v12;
  v13 = sub_3EBDF4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v78 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  sub_3EBE04();
  v81 = sub_3EBDC4();
  v26 = v25;
  v28 = *(v14 + 8);
  v27 = v14 + 8;
  v29 = v24;
  v30 = v28;
  v28(v29, v13);
  v88 = a2;
  v84 = v7;
  if (v26)
  {
    v83 = v26;
  }

  else
  {
    sub_3EBE04();
    v81 = sub_3EBDC4();
    v83 = v31;
    v30(v21, v13);
  }

  v32 = 0x656C746974;
  v33 = 0xE500000000000000;
  sub_3EBE04();
  v76 = sub_3EBDC4();
  v35 = v34;
  v30(v18, v13);
  v36 = v13;
  v85 = v30;
  if (!v35)
  {
    v41 = v86;
    goto LABEL_8;
  }

  v75 = v35;
  v32 = 0x7470697263736564;
  sub_3EBE04();
  v70 = sub_3EBDC4();
  v38 = v37;
  v30(v21, v13);
  sub_3EBE04();
  v39 = v88;
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v30(v21, v36);
  v69 = v38;
  if (!(v38 | Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0))
  {

    v41 = v86;
    v33 = 0xEB000000006E6F69;
LABEL_8:

    v42 = sub_3ECEE4();
    sub_3808D4(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v44 = v43;
    v45 = type metadata accessor for Information();
    *v44 = v32;
    v44[1] = v33;
    v44[2] = v45;
    (*(*(v42 - 8) + 104))(v44, enum case for JSONError.missingProperty(_:), v42);
    swift_willThrow();
    (*(v84 + 8))(v88, v41);
    return v85(a1, v36);
  }

  v47 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  sub_3EBE04();
  v68 = sub_3EBDC4();
  v67 = v48;
  v71 = v36;
  v66 = v27;
  v30(v21, v36);
  sub_3EC634();
  sub_3EBE04();
  v49 = v84;
  (*(v84 + 16))(v77, v39, v86);
  v50 = v79;
  sub_3EC574();
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v51 = type metadata accessor for Action();
    v52 = sub_3808D4(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v87[1] = 0;
    v87[2] = 0;
  }

  v87[0] = v47;
  v87[3] = v51;
  v87[4] = v52;

  v53 = v78;
  v54 = a1;
  sub_3EBE04();
  LODWORD(v77) = sub_3EBD24();
  v85(v53, v71);
  sub_FBD0(v50, v82, &unk_4E9170);
  v55 = v83;
  if (v83)
  {
    v56 = v81;
  }

  else
  {
    v57 = v72;
    sub_3E5FB4();
    v56 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v58 = v57;
    v55 = v59;
    (*(v73 + 8))(v58, v74);
  }

  v60 = v80;
  *v80 = v56;
  v60[1] = v55;
  v61 = v75;
  v60[2] = v76;
  v60[3] = v61;
  v62 = v67;
  v60[4] = v68;
  v60[5] = v62;
  v63 = v69;
  v60[6] = v70;
  v60[7] = v63;
  sub_FBD0(v87, (v60 + 8), &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
  v64 = swift_allocObject();
  *(v64 + 20) = 0;

  (*(v49 + 8))(v88, v86);
  v85(v54, v71);
  sub_FCF8(v50, &unk_4E9170);
  sub_FCF8(v87, &qword_4EDE00);
  *(v64 + 16) = v77 & 1;
  v60[13] = v64;
  v65 = type metadata accessor for Information();
  return sub_14A10(v82, v60 + *(v65 + 40));
}

uint64_t sub_38087C(uint64_t a1)
{
  result = sub_3808D4(&qword_503E58, type metadata accessor for Information);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3808D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_380964@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3E9874();
  *a1 = v3;
  return result;
}

void sub_3809A8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 104);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 20));
}

uint64_t sub_380A00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_380AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_380B80()
{
  sub_380C84(319, &qword_4E9978, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_C30B0();
    if (v1 <= 0x3F)
    {
      sub_380C84(319, &unk_503EC8, &type metadata for Bool, &type metadata accessor for OSAllocatedUnfairLock);
      if (v2 <= 0x3F)
      {
        sub_4D334();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_380C84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t Label.shelfUniqueId.getter(Swift::String a1, char a2)
{
  if (a2)
  {
    v3 = 0x3A6E6F69746361;
    a1 = *(a1._countAndFlagsBits + 16);
  }

  else
  {
    v3 = 0x3A656C746974;
  }

  sub_3ED3D4(a1);
  return v3;
}

uint64_t Label.init(deserializing:using:)(char *a1, uint64_t a2)
{
  result = sub_38103C(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t Label.action.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t Label.clickAction.getter@<X0>(uint64_t result@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v4 = result;
    v5 = type metadata accessor for Action();
    v6 = sub_3813BC(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  a3[3] = v5;
  a3[4] = v6;
  *a3 = v4;
  return result;
}

uint64_t Label.clickSender.getter@<X0>(uint64_t result@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v4 = result;
    v5 = type metadata accessor for Action();
  }

  else
  {
    v5 = 0;
    v4 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  a3[3] = v5;
  *a3 = v4;
  return result;
}

uint64_t sub_380E88@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_38103C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
  }

  return result;
}

uint64_t sub_380EBC()
{
  v1._countAndFlagsBits = *v0;
  if (*(v0 + 16))
  {
    v3 = 0x3A6E6F69746361;
    v1 = *(v1._countAndFlagsBits + 16);
  }

  else
  {
    v1._object = *(v0 + 8);
    v3 = 0x3A656C746974;
  }

  sub_3ED3D4(v1);
  return v3;
}

void sub_380F38(void *a1@<X8>)
{
  if (*(v1 + 16) == 1)
  {
    v3 = *v1;
    v4 = type metadata accessor for Action();
    v5 = sub_3813BC(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v4;
  a1[4] = v5;
  *a1 = v3;
}

void sub_380FD8(void *a1@<X8>)
{
  if (*(v1 + 16) == 1)
  {
    v3 = *v1;
    v4 = type metadata accessor for Action();
  }

  else
  {
    v4 = 0;
    v3 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v4;
  *a1 = v3;
}

uint64_t sub_38103C(char *a1, uint64_t a2)
{
  v4 = sub_3EBDF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = sub_3EBDC4();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);
  if (v13)
  {
    v15 = a2;
  }

  else
  {
    sub_3EBE04();
    Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
    v14(v7, v4);
    v15 = a2;
    if (!Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
    {
      Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = sub_3ECEE4();
      sub_3813BC(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      *v18 = 1954047348;
      v18[1] = 0xE400000000000000;
      v18[2] = &type metadata for Label;
      (*(*(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 - 8) + 104))(v18, enum case for JSONError.missingProperty(_:), Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0);
      swift_willThrow();
      v19 = sub_3EBF94();
      (*(*(v19 - 8) + 8))(a2, v19);
      v14(a1, v4);
      return Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
    }
  }

  v16 = sub_3EBF94();
  (*(*(v16 - 8) + 8))(v15, v16);
  v14(a1, v4);
  return Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
}

unint64_t sub_381324(uint64_t a1)
{
  result = sub_38134C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_38134C()
{
  result = qword_503F10;
  if (!qword_503F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_503F10);
  }

  return result;
}

uint64_t sub_3813BC(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall LegacyArtworkLoader.prefetchArtwork(using:)(Swift::OpaquePointer using)
{
  v3 = sub_3EBBC4();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBC14();
  v14 = *(v6 - 8);
  v15 = v6;
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = v1[8];
  v10 = v1[9];
  v13 = v1[11];
  v11 = swift_allocObject();
  *(v11 + 16) = using;
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  *(v11 + 40) = v1;
  *(v11 + 48) = v9 != 0;
  aBlock[4] = sub_3867F8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_28;
  v12 = _Block_copy(aBlock);
  sub_7A6C8(v9);
  sub_7A6C8(v9);

  sub_3EBBE4();
  v17 = _swiftEmptyArrayStorage;
  sub_388DAC(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v12);
  sub_16AC0(v9);
  (*(v16 + 8))(v5, v3);
  (*(v14 + 8))(v8, v15);
}

uint64_t LegacyArtworkLoader.fetchArtwork(using:forReason:closestMatch:checkCacheSynchronously:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, uint64_t a6, void (*a7)(void, void, void))
{
  v152 = a7;
  v151 = a6;
  v137 = a5;
  v141 = a4;
  v159 = a3;
  v153 = a1;
  v134 = sub_3E9864();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_3EBBC4();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v145 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_3EBC14();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503F18);
  __chkstk_darwin(v10 - 8);
  v157 = (&v131 - v11);
  v158 = sub_3E5FC4();
  v163 = *(v158 - 8);
  __chkstk_darwin(v158);
  v143 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v12;
  __chkstk_darwin(v13);
  v161 = &v131 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v131 - v16;
  v154 = sub_3E9854();
  v18 = *(v154 - 8);
  __chkstk_darwin(v154);
  v136 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v131 - v21;
  __chkstk_darwin(v23);
  v25 = &v131 - v24;
  v165 = sub_3E97B4();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v135 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v162 = &v131 - v28;
  v140 = v29;
  __chkstk_darwin(v30);
  v32 = &v131 - v31;
  sub_3E97F4();
  sub_3E67E4();
  v33 = sub_3E5DC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v17, 1, v33) == 1)
  {
    sub_FCF8(v17, &unk_4E9EE0);
    sub_3E9834();
    sub_3E9784();
  }

  else
  {
    v35 = sub_3E5CD4();
    v37 = v36;
    (*(v34 + 8))(v17, v33);
    aBlock = v35;
    v169 = v37;
    sub_68DC4();
    sub_3EE1B4();

    sub_3E97C4();
  }

  v38 = v32;
  v40 = (v18 + 8);
  v39 = *(v18 + 8);
  v41 = v154;
  v39(v25, v154);
  sub_3E97F4();
  v42 = sub_3E9834();
  v43 = sub_3EDC84();
  if (sub_3EE014())
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v42, v43, v45, "ArtworkLoader.fetchArtwork", "", v44, 2u);
  }

  v139 = *(v164 + 16);
  v139(v162, v38, v165);
  sub_3E98A4();
  swift_allocObject();
  v160 = sub_3E9894();
  v133 = v39;
  v39(v22, v41);
  v46 = v166;
  swift_beginAccess();
  v47 = *(v46 + 64);
  v138 = v47 != 0;
  sub_7A6C8(v47);
  v48 = sub_3E67D4();
  sub_16AC0(v47);
  v49 = v161;
  sub_3E5FB4();
  sub_383964(v49, v159);
  swift_beginAccess();
  sub_FBD0(v46 + 24, &v174, &unk_4EEBF0);
  if (!v175)
  {
    sub_FCF8(&v174, &unk_4EEBF0);
LABEL_14:
    v61 = v152;
    v62 = v151;
    if (v151)
    {
      v63 = swift_allocObject();
      swift_weakInit();
      v64 = swift_allocObject();
      *(v64 + 2) = v62;
      *(v64 + 3) = v61;
      v155 = v64;
      *(v64 + 4) = v63;
      v157 = sub_3881FC;
    }

    else
    {
      v157 = 0;
      v155 = v152;
    }

    v156 = v48;
    v65 = v166;
    swift_beginAccess();
    v66 = *(v65 + 80);
    v150 = v38;
    if (v66 & 1) != 0 || (v137)
    {
      v67 = objc_opt_self();
      sub_7A6C8(v62);
      if ([v67 isMainThread])
      {
        sub_36174(0, &qword_503F20);
        v68 = [*(v166 + 16) notificationQueue];
        v69 = [objc_opt_self() mainQueue];
        v70 = sub_3EDEC4();

        v38 = v150;
        if (v70)
        {
          v71 = v156;
          v72 = sub_3846E8();
          v74 = v72;
          v75 = v47;
          v76 = v73;
          if (v75)
          {
            v77 = v73 == 2;
          }

          else
          {
            v77 = 0;
          }

          v78 = !v77;
          if (v73 && v78)
          {
            v162 = v72;
            v79 = v166;
            v151 = *(v166 + 88);
            v80 = v163;
            v152 = *(v163 + 16);
            LODWORD(v154) = v73;
            v81 = v143;
            v82 = v49;
            v83 = v158;
            v152(v143, v82, v158);
            v84 = v71;
            v85 = (*(v80 + 80) + 40) & ~*(v80 + 80);
            v86 = (v142 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
            v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF8;
            v88 = swift_allocObject();
            *(v88 + 2) = v79;
            *(v88 + 3) = v84;
            *(v88 + 4) = v159;
            (*(v80 + 32))(&v88[v85], v81, v83);
            v89 = &v88[v86];
            v90 = v157;
            v91 = v155;
            *v89 = v157;
            v89[1] = v91;
            *&v88[v87] = v160;
            v172 = sub_38805C;
            v173 = v88;
            aBlock = _NSConcreteStackBlock;
            v169 = 1107296256;
            v170 = sub_1279E4;
            v171 = &block_descriptor_12_0;
            v159 = _Block_copy(&aBlock);

            sub_7A6C8(v90);

            v92 = v144;
            sub_3EBBE4();
            v167 = _swiftEmptyArrayStorage;
            sub_388DAC(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
            sub_318924(&qword_506A30, &unk_503DE0);
            v93 = v145;
            v94 = v83;
            v49 = v161;
            v95 = v149;
            sub_3EE244();
            v96 = v159;
            sub_3EDBE4();
            _Block_release(v96);
            sub_16AC0(v157);

            v97 = v93;
            v76 = v154;
            v98 = v95;
            v74 = v162;
            (*(v148 + 8))(v97, v98);
            (*(v146 + 8))(v92, v147);
            (*(v164 + 8))(v150, v165);

            v152(v153, v49, v94);
          }

          else
          {
            v162 = v40;
            v119 = v134;
            sub_3E97F4();
            v120 = sub_3E9834();
            v121 = v135;
            sub_3E9884();
            v122 = sub_3EDC74();
            if (sub_3EE014())
            {

              v123 = v131;
              sub_3E98B4();

              v124 = v132;
              if ((*(v132 + 88))(v123, v119) == enum case for OSSignpostError.doubleEnd(_:))
              {
                v125 = "[Error] Interval already ended";
              }

              else
              {
                (*(v124 + 8))(v123, v119);
                v125 = "sync cached";
              }

              v126 = swift_slowAlloc();
              *v126 = 0;
              v121 = v135;
              v127 = sub_3E9794();
              _os_signpost_emit_with_name_impl(&dword_0, v120, v122, v127, "ArtworkLoader.fetchArtwork", v125, v126, 2u);

              v38 = v150;
            }

            v128 = *(v164 + 8);
            v129 = v165;
            v128(v121, v165);
            v133(v136, v154);
            v130 = v74;
            sub_384258(v49, v74);

            sub_16AC0(v157);

            v128(v38, v129);
            v80 = v163;
            v94 = v158;
            (*(v163 + 16))(v153, v49, v158);
          }

          if (v76 >= 3u)
          {
            v57 = 0;
          }

          else
          {
            v57 = v74;
          }

          (*(v80 + 8))(v49, v94);
          return v57;
        }
      }
    }

    else
    {
      sub_7A6C8(v62);
    }

    v99 = v166;
    v154 = *(v166 + 88);
    v100 = v163;
    v101 = v143;
    v102 = v49;
    v103 = v158;
    (*(v163 + 16))(v143, v102, v158);
    v139(v162, v38, v165);
    v104 = (*(v100 + 80) + 64) & ~*(v100 + 80);
    v105 = v104 + v142;
    v106 = v164;
    v107 = (*(v164 + 80) + v104 + v142 + 1) & ~*(v164 + 80);
    v108 = (v140 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    v110 = v156;
    *(v109 + 16) = v99;
    *(v109 + 24) = v110;
    *(v109 + 32) = v138;
    v111 = v157;
    *(v109 + 40) = v160;
    *(v109 + 48) = v111;
    *(v109 + 56) = v155;
    v112 = *(v100 + 32);
    v163 = v100 + 32;
    v152 = v112;
    v112(v109 + v104, v101, v103);
    *(v109 + v105) = v141 & 1;
    (*(v106 + 32))(v109 + v107, v162, v165);
    *(v109 + v108) = v159;
    v172 = sub_387E50;
    v173 = v109;
    aBlock = _NSConcreteStackBlock;
    v169 = 1107296256;
    v170 = sub_1279E4;
    v171 = &block_descriptor_6_0;
    v113 = _Block_copy(&aBlock);

    v114 = v157;
    sub_7A6C8(v157);

    v115 = v144;
    sub_3EBBE4();
    v167 = _swiftEmptyArrayStorage;
    sub_388DAC(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_318924(&qword_506A30, &unk_503DE0);
    v116 = v145;
    v117 = v149;
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v113);
    sub_16AC0(v114);

    (*(v148 + 8))(v116, v117);
    (*(v146 + 8))(v115, v147);
    (*(v164 + 8))(v150, v165);

    v152(v153, v161, v158);
    return 0;
  }

  sub_1D4F0(&v174, &aBlock);
  v50 = sub_3E6824();
  v52 = v51;

  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53 || (__swift_project_boxed_opaque_existential_1(&aBlock, v171), sub_3E6824(), v54 = sub_3E61C4(), , (v54 & 1) == 0))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v49 = v161;
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(&aBlock, v171);
  sub_3E6824();
  sub_3E6804();
  v55 = sub_3E6B54();
  v56 = v157;
  (*(*(v55 - 8) + 56))(v157, 1, 1, v55);
  v57 = sub_3E61B4();

  sub_FCF8(v56, &qword_503F18);
  v58 = v161;
  sub_384258(v161, v57);

  (*(v164 + 8))(v38, v165);
  v59 = v163;
  v60 = v158;
  (*(v163 + 16))(v153, v58, v158);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v59 + 8))(v58, v60);
  return v57;
}

uint64_t LegacyArtworkLoader.forgetFetch(forRequestIdentifier:)(uint64_t a1)
{
  v3 = sub_3EBBC4();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBC14();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E5FC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v17[1] = *(v1 + 88);
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_3882CC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_24_0;
  v15 = _Block_copy(aBlock);

  sub_3EBBE4();
  v21 = _swiftEmptyArrayStorage;
  sub_388DAC(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

uint64_t LegacyArtworkLoader.__allocating_init(imageStore:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  v3 = sub_3ED204();
  [v2 setName:v3];

  swift_allocObject();
  v4 = sub_388718(v2, 0);

  swift_beginAccess();

  sub_9404C(a1, v4 + 24);
  swift_endAccess();

  return v4;
}

uint64_t sub_3830BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_55564(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_59B9C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_3E5DC4();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_68780(v5, v7);
  *v2 = v7;
  return v10;
}

void *sub_383184(unint64_t a1, double a2, double a3)
{
  if (!(a1 >> 62))
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_24:
  v6 = sub_3EE5A4();
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  v7 = 0;
  v8 = 0;
  v9 = 1.79769313e308;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = sub_3EE3F4();
    }

    else
    {
      if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    [v10 size];
    if (v13 == a2 && v14 == a3)
    {

      return v11;
    }

    if (vabdd_f64(v13 / v14, a2 / a3) >= 0.2 || (v16 = vabdd_f64(v13, a2), v16 >= v9))
    {
    }

    else
    {

      v9 = v16;
      v8 = v11;
    }

    ++v7;
  }

  while (v12 != v6);
  if (v8)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t LegacyArtworkLoader.FetchError.errorDescription.getter()
{
  sub_3EE3C4(27);

  sub_3E6834();
  sub_388DAC(&qword_503F28, &type metadata accessor for LegacyArtworkLoaderConfig);
  v1._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v1);

  return 0xD000000000000019;
}

uint64_t LegacyArtworkLoader.imageStore.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_9404C(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_383490@<X0>(uint64_t *a1@<X0>, void (**a2)(double *a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_388C88;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4);
}

uint64_t sub_383524(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_388C48;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_7A6C8(v3);
  return sub_16AC0(v8);
}

uint64_t LegacyArtworkLoader.checkCacheSynchronouslyDefault.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t LegacyArtworkLoader.__allocating_init(parent:)(void *a1)
{
  v2 = swift_allocObject();
  LegacyArtworkLoader.init(parent:)(a1);
  return v2;
}

uint64_t LegacyArtworkLoader.init(parent:)(void *a1)
{
  *(v1 + 65) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 96) = sub_61FE0(_swiftEmptyArrayStorage);
  *(v1 + 104) = sub_621DC(_swiftEmptyArrayStorage);
  *(v1 + 112) = 0;
  v3 = sub_623C4(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503F30);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 120) = v4;
  v5 = a1[11];
  *(v1 + 88) = v5;
  v6 = a1[2];
  v7 = objc_allocWithZone(ASKResourceLoader);
  v8 = v5;
  *(v1 + 16) = [v7 initWithParentResourceLoader:v6];
  *(v1 + 128) = 1;
  swift_beginAccess();
  v9 = a1[8];
  v10 = a1[9];
  swift_beginAccess();
  v11 = *(v1 + 64);
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  sub_7A6C8(v9);
  sub_16AC0(v11);
  swift_beginAccess();
  sub_FBD0((a1 + 3), v13, &unk_4EEBF0);

  swift_beginAccess();
  sub_9404C(v13, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t LegacyArtworkLoader.withPageRenderController(_:)(uint64_t a1)
{
  v2 = swift_allocObject();

  LegacyArtworkLoader.init(parent:)(v3);
  *(v2 + 112) = a1;

  return v2;
}

unint64_t sub_3838C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  if (*(*a1 + 16) && (result = sub_55490(a2), (v9 & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    result = sub_3A7A4(a3 & 1, a2, isUniquelyReferenced_nonNull_native);
    v10 = 0;
    *a1 = v12;
  }

  *a4 = v10;
  return result;
}

void sub_383964(uint64_t a1, uint64_t a2)
{
  v5 = sub_3E6304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + 112))
  {
    v10 = a2 == 2;
    v11 = *(v2 + 120);
    __chkstk_darwin(v7);
    *&v14[-16] = a1;
    v14[-8] = v10;

    os_unfair_lock_lock((v11 + 24));
    sub_389404((v11 + 16), &v15);
    os_unfair_lock_unlock((v11 + 24));
    if (v15 == 1)
    {
    }

    else
    {
      *v9 = v10;
      v12 = enum case for PageRenderActivity.resourceFetchStarted(_:);
      v13 = sub_3E6474();
      (*(*(v13 - 8) + 104))(v9, v12, v13);
      (*(v6 + 104))(v9, enum case for PageRenderEvent.activity(_:), v5);
      sub_3E65E4();

      (*(v6 + 8))(v9, v5);
    }
  }
}

void sub_383B4C(uint64_t a1)
{
  v3 = sub_3E6304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 112))
  {
    v8 = *(v1 + 120);
    __chkstk_darwin(v5);
    *&v11[-16] = a1;

    os_unfair_lock_lock((v8 + 24));
    sub_389470((v8 + 16), &v12);
    os_unfair_lock_unlock((v8 + 24));
    if (v12 == 2)
    {
    }

    else
    {
      *v7 = v12 & 1;
      v9 = enum case for PageRenderActivity.resourceFetchCompleted(_:);
      v10 = sub_3E6474();
      (*(*(v10 - 8) + 104))(v7, v9, v10);
      (*(v4 + 104))(v7, enum case for PageRenderEvent.activity(_:), v3);
      sub_3E65E4();

      (*(v4 + 8))(v7, v3);
    }
  }
}

void sub_383D20(uint64_t a1, uint64_t a2)
{
  v5 = sub_3E6304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + 112))
  {
    v10 = *(v2 + 120);
    __chkstk_darwin(v7);
    *&v14[-16] = a1;

    os_unfair_lock_lock((v10 + 24));
    sub_388DF4((v10 + 16), &v15);
    os_unfair_lock_unlock((v10 + 24));
    v11 = v15;
    if (v15 == 2)
    {
    }

    else
    {
      *v9 = a2;
      v9[8] = v11 & 1;
      v12 = enum case for PageRenderActivity.resourceFetchFailed(_:);
      v13 = sub_3E6474();
      (*(*(v13 - 8) + 104))(v9, v12, v13);
      (*(v6 + 104))(v9, enum case for PageRenderEvent.activity(_:), v5);
      swift_errorRetain();
      sub_3E65E4();

      (*(v6 + 8))(v9, v5);
    }
  }
}

void sub_383F0C(uint64_t a1)
{
  v3 = sub_3E6304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 112))
  {
    v8 = *(v1 + 120);
    __chkstk_darwin(v5);
    *&v15[-16] = a1;

    os_unfair_lock_lock((v8 + 24));
    sub_389470((v8 + 16), &v16);
    os_unfair_lock_unlock((v8 + 24));
    v9 = v16;
    if (v16 == 2)
    {
    }

    else
    {
      v10 = sub_3E6764();
      sub_388DAC(&qword_504098, &type metadata accessor for PageRenderResourceError);
      v11 = swift_allocError();
      (*(*(v10 - 8) + 104))(v12, enum case for PageRenderResourceError.fetchCancelled(_:), v10);
      *v7 = v11;
      v7[8] = v9 & 1;
      v13 = enum case for PageRenderActivity.resourceFetchFailed(_:);
      v14 = sub_3E6474();
      (*(*(v14 - 8) + 104))(v7, v13, v14);
      (*(v4 + 104))(v7, enum case for PageRenderEvent.activity(_:), v3);
      sub_3E65E4();

      (*(v4 + 8))(v7, v3);
    }
  }
}

void sub_384178(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = sub_55490(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_5992C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_3E5FC4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(*(v9 + 56) + v7);
    sub_68460(v7, v9);
    *a1 = v9;
  }

  else
  {
    v12 = 2;
  }

  *a3 = v12;
}

void sub_384258(uint64_t a1, uint64_t a2)
{
  v5 = sub_3E6304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (*(v2 + 112))
    {
      v10 = *(v2 + 120);
      __chkstk_darwin(v7);
      *&v21[-16] = a1;

      os_unfair_lock_lock((v10 + 24));
      sub_389470((v10 + 16), v22);
      os_unfair_lock_unlock((v10 + 24));
      if (v22[0] == 2)
      {
      }

      else
      {
        *v9 = v22[0] & 1;
        v17 = enum case for PageRenderActivity.resourceFetchCompleted(_:);
        v18 = sub_3E6474();
        (*(*(v18 - 8) + 104))(v9, v17, v18);
        (*(v6 + 104))(v9, enum case for PageRenderEvent.activity(_:), v5);
        sub_3E65E4();

        (*(v6 + 8))(v9, v5);
      }
    }
  }

  else
  {
    v11 = sub_3E6764();
    sub_388DAC(&qword_504098, &type metadata accessor for PageRenderResourceError);
    v12 = swift_allocError();
    v14 = (*(*(v11 - 8) + 104))(v13, enum case for PageRenderResourceError.notFound(_:), v11);
    if (*(v2 + 112))
    {
      v15 = *(v2 + 120);
      __chkstk_darwin(v14);
      *&v21[-16] = a1;

      os_unfair_lock_lock((v15 + 24));
      sub_389470((v15 + 16), &v23);
      os_unfair_lock_unlock((v15 + 24));
      v16 = v23;
      if (v23 == 2)
      {
      }

      else
      {
        *v9 = v12;
        v9[8] = v16 & 1;
        v19 = enum case for PageRenderActivity.resourceFetchFailed(_:);
        v20 = sub_3E6474();
        (*(*(v20 - 8) + 104))(v9, v19, v20);
        (*(v6 + 104))(v9, enum case for PageRenderEvent.activity(_:), v5);
        swift_errorRetain();
        sub_3E65E4();

        (*(v6 + 8))(v9, v5);
      }
    }
  }
}

uint64_t sub_384638(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_errorRetain();
    sub_383D20(a2, a3);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_383B4C(a2);
  }
}

void *sub_3846E8()
{
  v1 = sub_3E94E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  *&v23[0] = sub_3E6824();
  *(&v23[0] + 1) = v6;
  *&v21 = 8217467;
  *(&v21 + 1) = 0xE300000000000000;
  sub_3E67F4();
  v7 = sub_3E94D4();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  v24 = v7;
  v25 = v9;
  sub_68DC4();
  sub_3EE194();

  v10 = sub_3ED204();

  v11 = [v5 cachedResourcesForCacheKey:v10];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_3ED584();

  v24 = _swiftEmptyArrayStorage;
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    v15 = _swiftEmptyArrayStorage;
    do
    {
      sub_2F4AC(v14, v23);
      sub_1FB90(v23, &v21);
      sub_36174(0, &qword_4E94B8);
      if ((swift_dynamicCast() & 1) != 0 && v22)
      {
        sub_3ED564();
        if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();
        v15 = v24;
      }

      v14 += 32;
      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  sub_3E6804();
  v16 = sub_383184(v15, v17, v18);

  return v16;
}

uint64_t sub_3849DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = sub_388E10;
  v13[3] = a7;
  v13[4] = a5;
  v13[5] = a6;

  sub_7A6C8(a5);
  sub_384AB0(a2, a3, a4, sub_388E30, v13);
}

void sub_384AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v81 = a2;
  v82 = a4;
  v88 = a3;
  v85 = sub_3E5FC4();
  v6 = *(v85 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v85);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E9854();
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v71 - v11;
  v13 = sub_3E97B4();
  v86 = *(v13 - 8);
  v87 = v13;
  __chkstk_darwin(v13);
  v80 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v71 - v19;
  v21 = sub_3E5DC4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_3E67E4();
  v26 = v21;
  v27 = v22;
  if ((*(v22 + 48))(v20, 1, v26) == 1)
  {
    sub_FCF8(v20, &unk_4E9EE0);
    v28 = [*(v84 + 16) notificationQueue];
    v29 = v76;
    v30 = v85;
    (*(v6 + 16))(v76, v88, v85);
    v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v32 = (v7 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v35 = v82;
    v34 = v83;
    *(v33 + 16) = v82;
    *(v33 + 24) = v34;
    (*(v6 + 32))(v33 + v31, v29, v30);
    *(v33 + v32) = v25;
    v94 = sub_388F14;
    v95 = v33;
    aBlock = _NSConcreteStackBlock;
    v91 = 1107296256;
    v92 = sub_1279E4;
    v93 = &block_descriptor_70;
    v36 = _Block_copy(&aBlock);
    sub_7A6C8(v35);

    [v28 addOperationWithBlock:v36];
    _Block_release(v36);
  }

  else
  {
    v37 = v82;
    v75 = v6;
    v72 = v25;
    v73 = v27;
    v38 = *(v27 + 32);
    v74 = v26;
    v38(v24, v20, v26);
    sub_3E97F4();
    v76 = v24;
    aBlock = sub_3E5CD4();
    v91 = v39;
    sub_68DC4();
    sub_3EE1B4();

    sub_3E97C4();
    v40 = v79;
    v41 = *(v78 + 1);
    v41(v12, v79);
    v42 = v77;
    sub_3E97F4();
    v43 = sub_3E9834();
    v44 = sub_3EDC84();
    if (sub_3EE014())
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = sub_3E9794();
      _os_signpost_emit_with_name_impl(&dword_0, v43, v44, v46, "ArtworkLoader.requestArtwork", "", v45, 2u);
    }

    v47 = *(v86 + 16);
    v78 = v17;
    v47(v80, v17, v87);
    sub_3E98A4();
    swift_allocObject();
    v48 = sub_3E9894();
    v41(v42, v40);
    v49 = swift_allocObject();
    v49[2] = sub_388FA4;
    v49[3] = v48;
    v50 = v83;
    v49[4] = v37;
    v49[5] = v50;

    sub_7A6C8(v37);
    v51 = v72;
    sub_3E67B4();
    v52 = sub_3ED204();

    v53 = swift_allocObject();
    *(v53 + 16) = sub_389448;
    *(v53 + 24) = v49;
    v54 = v84;
    swift_beginAccess();
    v55 = v52;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v54[12];
    v54[12] = 0x8000000000000000;
    sub_3AB10(v55, sub_389488, v53, v88, isUniquelyReferenced_nonNull_native);
    v54[12] = v89;
    swift_endAccess();
    swift_beginAccess();
    v57 = v54[13];
    if (*(v57 + 16) && (v58 = sub_55564(v76), (v59 & 1) != 0))
    {
      v60 = *(*(v57 + 56) + 8 * v58);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v60 = _swiftEmptyArrayStorage;
    }

    v61 = v85;
    v62 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1438);
    v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_3F5630;
    (*(v62 + 16))(v64 + v63, v88, v61);
    aBlock = v60;
    sub_41778(v64);
    v65 = aBlock;
    swift_beginAccess();
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v54[13];
    v54[13] = 0x8000000000000000;
    v67 = v76;
    sub_3A944(v65, v76, v66);
    v54[13] = v89;
    swift_endAccess();
    v68 = v54[2];
    v69 = v81;
    if ([v68 setReason:v81 forRequestWithKey:v55])
    {
    }

    else
    {
      v70 = sub_388330(v51, v67, v55, v54);
      [v68 loadResourceWithRequest:v70 reason:v69];
    }

    (*(v86 + 8))(v78, v87);
    (*(v73 + 8))(v67, v74);
  }
}

void sub_38539C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v55 = a7;
  v56 = a5;
  v57 = a6;
  v54 = a4;
  v14 = sub_3E97B4();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3E5FC4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v21 = sub_3846E8();
  v23 = v21;
  if (v22 - 1 < 2)
  {
    if (v22 != 2 || (a3 & 1) == 0)
    {
      if (a8)
      {
        v24 = *(a1 + 16);
        v49 = v21;
        v50 = [v24 notificationQueue];
        v25 = v51;
        (*(v51 + 16))(&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a9, v52);
        (*(v18 + 16))(&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v55, v17);
        v26 = (*(v25 + 80) + 16) & ~*(v25 + 80);
        v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
        v28 = (*(v18 + 80) + v48 + 8) & ~*(v18 + 80);
        v29 = swift_allocObject();
        (*(v25 + 32))(v29 + v26, v16, v52);
        v30 = (v29 + v27);
        v32 = v56;
        v31 = v57;
        *v30 = v56;
        v30[1] = v31;
        v33 = v49;
        *(v29 + v48) = v49;
        (*(v18 + 32))(v29 + v28, v20, v17);
        v62 = sub_3891D4;
        v63 = v29;
        aBlock = _NSConcreteStackBlock;
        v59 = 1107296256;
        v60 = sub_1279E4;
        v61 = &block_descriptor_88;
        v34 = _Block_copy(&aBlock);
        v23 = v33;
        sub_7A6C8(v32);

        v35 = v50;
        [v50 addOperationWithBlock:v34];

        _Block_release(v34);
      }

      goto LABEL_8;
    }

LABEL_7:
    v36 = *(a1 + 16);
    v37 = v21;
    v38 = [v36 notificationQueue];
    (*(v18 + 16))(&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v55, v17);
    v39 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v40 = swift_allocObject();
    v42 = v56;
    v41 = v57;
    *(v40 + 2) = v54;
    *(v40 + 3) = v42;
    *(v40 + 4) = v41;
    *(v40 + 5) = v37;
    (*(v18 + 32))(&v40[v39], v20, v17);
    v62 = sub_38939C;
    v63 = v40;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1279E4;
    v61 = &block_descriptor_94;
    v43 = _Block_copy(&aBlock);

    sub_7A6C8(v42);
    v44 = v37;

    [v38 addOperationWithBlock:v43];
    _Block_release(v43);

    return;
  }

  if (!v22)
  {
    goto LABEL_7;
  }

LABEL_8:
  v45 = swift_allocObject();
  v45[2] = sub_389468;
  v47 = v56;
  v46 = v57;
  v45[3] = v54;
  v45[4] = v47;
  v45[5] = v46;

  sub_7A6C8(v47);
  sub_384AB0(v53, a10, v55, sub_389448, v45);
}

uint64_t sub_3858AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v26 = a3;
  v28 = a2;
  v5 = sub_3E9864();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_3E97B4();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_3E9854();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3E97F4();
  v15 = sub_3E9834();
  sub_3E9884();
  v22 = sub_3EDC74();
  if (sub_3EE014())
  {

    sub_3E98B4();

    v16 = v23;
    if ((*(v23 + 88))(v7, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v7, v5);
      v17 = "async cached";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v15, v22, v19, "ArtworkLoader.fetchArtwork", v17, v18, 2u);
  }

  (*(v8 + 8))(v10, v27);
  result = (*(v12 + 8))(v14, v11);
  if (v28)
  {
    return v28(v24, v25, 0);
  }

  return result;
}

uint64_t sub_385BC0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a1;
  v8 = sub_3E9854();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E97F4();
  v12 = sub_3E9834();
  v13 = sub_3EDC94();
  if (sub_3EE014())
  {
    v14 = swift_slowAlloc();
    v18[0] = a4;
    v15 = v14;
    *v14 = 0;
    v16 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v16, "ArtworkLoader.fetchArtwork.closeMatchFound", "", v15, 2u);
    a4 = v18[0];
  }

  result = (*(v9 + 8))(v11, v8);
  if (a2)
  {
    return a2(a4, a5, 0);
  }

  return result;
}

uint64_t sub_385D64()
{
  v0 = sub_3E9864();
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_3E97B4();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_3E9854();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3E97F4();
  v10 = sub_3E9834();
  sub_3E9884();
  v17 = sub_3EDC74();
  if (sub_3EE014())
  {

    sub_3E98B4();

    v11 = v18;
    if ((*(v18 + 88))(v2, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v11 + 8))(v2, v0);
      v12 = "loaded";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v17, v14, "ArtworkLoader.fetchArtwork", v12, v13, 2u);
  }

  (*(v3 + 8))(v5, v19);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_386050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    sub_388AC4();
    v7 = swift_allocError();
    *v8 = a4;

    v6(0, a3, v7);
  }

  return result;
}

uint64_t sub_3860E8()
{
  v0 = sub_3E9864();
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_3E97B4();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_3E9854();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3E97F4();
  v10 = sub_3E9834();
  sub_3E9884();
  v17 = sub_3EDC74();
  if (sub_3EE014())
  {

    sub_3E98B4();

    v11 = v18;
    if ((*(v18 + 88))(v2, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v11 + 8))(v2, v0);
      v12 = "completed";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v17, v14, "ArtworkLoader.requestArtwork", v12, v13, 2u);
  }

  (*(v3 + 8))(v5, v19);
  return (*(v7 + 8))(v9, v6);
}

void sub_3863D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v28 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v36 = sub_3E5DC4();
  v12 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v15 = 0;
    v26 = a1;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = (v12 + 48);
    v34 = a1 & 0xC000000000000001;
    v30 = (v12 + 32);
    v31 = (v12 + 8);
    v25 = v11;
    v32 = i;
    while (v34)
    {
      sub_3EE3F4();
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_20;
      }

LABEL_12:
      v17 = sub_3E67D4();
      sub_3E67E4();
      v12 = v36;
      if ((*v33)(v11, 1, v36) == 1)
      {

        sub_FCF8(v11, &unk_4E9EE0);
      }

      else
      {
        (*v30)(v35, v11, v12);
        v18 = sub_3846E8();
        v12 = v18;
        if (!v19 || ((v19 == 2) & v28) != 0)
        {

          (*v31)(v35, v36);
        }

        else
        {
          v29 = v18;
          sub_3E67B4();
          v12 = sub_3ED204();

          v20 = *(a4 + 16);
          if ([v20 setReason:0 forRequestWithKey:v12])
          {
            (*v31)(v35, v36);

            return;
          }

          v21 = a2;
          v22 = a3;
          v23 = a4;
          v24 = sub_388330(v17, v35, v12, a4);
          [v20 loadResourceWithRequest:v24 reason:0];

          a4 = v23;
          a3 = v22;
          a2 = v21;
          a1 = v26;

          (*v31)(v35, v36);
          v11 = v25;
        }
      }

      ++v15;
      if (v16 == v32)
      {
        return;
      }
    }

    if (v15 >= *(v27 + 16))
    {
      goto LABEL_21;
    }

    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

uint64_t sub_3867A8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_386820(void *a1, void *a2, uint64_t a3)
{
  v66 = a3;
  v65 = a2;
  v72 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1418);
  v74 = *(v70 - 8);
  v4 = *(v74 + 64);
  __chkstk_darwin(v70);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504090);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  __chkstk_darwin(v9);
  v79 = &v62 - v5;
  __chkstk_darwin(v10);
  v73 = &v62 - v5;
  v75 = sub_3E5FC4();
  v81 = *(v75 - 8);
  __chkstk_darwin(v75);
  v82 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v80 = sub_3E5804();
  v15 = *(v80 - 8);
  __chkstk_darwin(v80);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3E5DC4();
  v69 = *(v18 - 8);
  __chkstk_darwin(v18);
  v67 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3EBC24();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = (&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = v3;
  v25 = *(v3 + 88);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20, v22);
  v26 = v25;
  LOBYTE(v25) = sub_3EBC34();
  result = (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v28 = [v72 urlRequest];
  sub_3E57B4();

  sub_3E57D4();
  (*(v15 + 8))(v17, v80);
  v29 = v69;
  if ((*(v69 + 48))(v14, 1, v18) == 1)
  {
    return sub_FCF8(v14, &unk_4E9EE0);
  }

  v30 = v67;
  (*(v29 + 32))(v67, v14, v18);
  v31 = v71;
  swift_beginAccess();
  v32 = sub_3830BC(v30);
  result = swift_endAccess();
  if (!v32)
  {
    return (*(v29 + 8))(v30, v18);
  }

  v63 = v18;
  v78 = *(v32 + 16);
  if (v78)
  {
    v33 = 0;
    v80 = v81 + 16;
    v77 = (v74 + 56);
    v64 = (v81 + 32);
    v76 = (v81 + 8);
    v34 = _swiftEmptyArrayStorage;
    v35 = (v74 + 48);
    v36 = v70;
    v37 = v75;
    v38 = v82;
    while (v33 < *(v32 + 16))
    {
      v39 = *(v81 + 16);
      v39(v38, v32 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v33, v37);
      swift_beginAccess();
      v40 = v38;
      v41 = *(v31 + 96);
      if (*(v41 + 16) && (v42 = sub_55490(v40), (v43 & 1) != 0))
      {
        v44 = *(v41 + 56) + 24 * v42;
        v45 = *v44;
        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        *(v48 + 24) = v47;
        swift_endAccess();
        swift_unknownObjectRetain();

        LODWORD(v46) = [v45 isEqual:{objc_msgSend(v72, "requestKey")}];
        swift_unknownObjectRelease();
        if (v46)
        {
          swift_unknownObjectRelease();
          v49 = v68;
          v50 = v75;
          v39(v68, v82, v75);
          (*v64)(v8, v49, v50);
          v36 = v70;
          v51 = &v8[*(v70 + 48)];
          v52 = swift_allocObject();
          v53 = 0;
          *(v52 + 16) = sub_388CE8;
          *(v52 + 24) = v48;
          *v51 = sub_388CEC;
          *(v51 + 1) = v52;
          v37 = v50;
          v31 = v71;
        }

        else
        {

          swift_unknownObjectRelease();
          v53 = 1;
          v36 = v70;
          v31 = v71;
          v37 = v75;
        }
      }

      else
      {
        swift_endAccess();
        v53 = 1;
      }

      (*v77)(v8, v53, 1, v36);
      v38 = v82;
      (*v76)(v82, v37);
      if ((*v35)(v8, 1, v36) == 1)
      {
        result = sub_FCF8(v8, &qword_504090);
      }

      else
      {
        v54 = v73;
        sub_FACC(v8, v73, &qword_4F1418);
        sub_FACC(v54, v79, &qword_4F1418);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_E1054(0, v34[2] + 1, 1, v34);
        }

        v56 = v34[2];
        v55 = v34[3];
        if (v56 >= v55 >> 1)
        {
          v34 = sub_E1054(v55 > 1, v56 + 1, 1, v34);
        }

        v34[2] = v56 + 1;
        result = sub_FACC(v79, v34 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v56, &qword_4F1418);
        v37 = v75;
        v38 = v82;
      }

      if (v78 == ++v33)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_24:

  v57 = [*(v31 + 16) notificationQueue];
  v58 = swift_allocObject();
  v59 = v65;
  v58[2] = v34;
  v58[3] = v59;
  v58[4] = v66;
  aBlock[4] = sub_388D64;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_55;
  v60 = _Block_copy(aBlock);
  v61 = v59;
  swift_errorRetain();

  [v57 addOperationWithBlock:v60];
  _Block_release(v60);

  return (*(v69 + 8))(v67, v63);
}

void sub_3871EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E5FC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1418);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v37 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504090);
  __chkstk_darwin(v12 - 8);
  v51 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v36 - v15;
  __chkstk_darwin(v16);
  v46 = &v36 - v17;
  v18 = 0;
  v40 = a2;
  v41 = a1;
  v19 = *(a1 + 16);
  v38 = a3;
  v39 = v10;
  v49 = (v10 + 48);
  v50 = (v10 + 56);
  v47 = (v7 + 32);
  v43 = (v7 + 8);
  v44 = v19;
  v20 = v19 == 0;
  if (v19)
  {
    goto LABEL_3;
  }

LABEL_2:
  v21 = 1;
  v18 = v19;
  while (1)
  {
    v23 = v51;
    v24 = *v50;
    v25 = 1;
    (*v50)(v51, v21, 1, v9);
    v26 = *v49;
    if ((*v49)(v23, 1, v9) != 1)
    {
      v42 = *(v9 + 48);
      v27 = *v47;
      v28 = v51;
      (*v47)(v37, v51, v6);
      v29 = swift_allocObject();
      *(v29 + 16) = *(v28 + v42);
      v30 = v6;
      v31 = &v48[*(v9 + 48)];
      v27();
      a3 = v38;
      a2 = v40;
      v25 = 0;
      *v31 = sub_389444;
      *(v31 + 1) = v29;
      v6 = v30;
    }

    v32 = v48;
    v24(v48, v25, 1, v9);
    v33 = v46;
    sub_FACC(v32, v46, &qword_504090);
    if (v26(v33, 1, v9) == 1)
    {
      break;
    }

    v34 = *(v33 + *(v9 + 48));
    v35 = v45;
    (*v47)(v45, v33, v6);
    v34(a2, v35, a3);

    (*v43)(v35, v6);
    v19 = v44;
    v20 = v18 >= v44;
    if (v18 == v44)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v20)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    sub_FBD0(v41 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v18, v51, &qword_4F1418);
    if (__OFADD__(v18++, 1))
    {
      goto LABEL_13;
    }

    v21 = 0;
  }
}

uint64_t sub_38772C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_55490(a2);
  if ((v5 & 1) == 0)
  {
    return swift_endAccess();
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 96);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_59E40();
  }

  v9 = *(v8 + 48);
  v10 = sub_3E5FC4();
  (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
  v11 = *(*(v8 + 56) + 24 * v6);
  sub_68AA0(v6, v8);
  *(a1 + 96) = v8;
  swift_endAccess();

  sub_383F0C(a2);
  [*(a1 + 16) setReason:1 forRequestWithKey:v11];
  return swift_unknownObjectRelease();
}

uint64_t LegacyArtworkLoader.isOccluded.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
  return sub_3878D8();
}

uint64_t sub_3878D8()
{
  v1 = sub_3EBBC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3EBC14();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v0 + 128);
  v12 = *(v0 + 88);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v0;
  aBlock[4] = sub_388CBC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_43_0;
  v10 = _Block_copy(aBlock);

  sub_3EBBE4();
  v14 = _swiftEmptyArrayStorage;
  sub_388DAC(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t (*LegacyArtworkLoader.isOccluded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_387C00;
}

uint64_t sub_387C00(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_3878D8();
  }

  return result;
}

uint64_t LegacyArtworkLoader.deinit()
{
  sub_FCF8(v0 + 24, &unk_4EEBF0);
  sub_16AC0(*(v0 + 64));

  return v0;
}

uint64_t LegacyArtworkLoader.__deallocating_deinit()
{
  LegacyArtworkLoader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_387CD0()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_3E97B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  if (*(v0 + 48))
  {
  }

  v9 = (v3 + 64) & ~v3;
  v10 = (v4 + v7 + v9 + 1) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, v5);

  return _swift_deallocObject(v0, ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

void sub_387E50()
{
  v1 = *(sub_3E5FC4() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_3E97B4() - 8);
  v5 = (v3 + *(v4 + 80) + 1) & ~*(v4 + 80);
  sub_38539C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v2, *(v0 + v3), v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_387F60()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_38805C()
{
  v1 = *(sub_3E5FC4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = (v0 + v3);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v4);

  return sub_3849DC(v5, v6, v7, v0 + v2, v9, v10, v11);
}

uint64_t sub_388184()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3881BC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_388208()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_3882CC()
{
  v1 = *(sub_3E5FC4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_38772C(v2, v3);
}

id sub_388330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v5 = sub_3E94E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3E5804();
  v13 = *(v36 - 8);
  v14 = __chkstk_darwin(v36);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2, v9, v14);
  sub_3E57C4();
  if ([objc_opt_self() alwaysSendCacheBuster])
  {
    sub_3E5794();
  }

  sub_3E6804();
  v18 = v17;
  v20 = v19;
  sub_3E6814();
  v22 = [objc_allocWithZone(ASKImageDataConsumer) initWithSize:v18 scale:{v20, v21}];
  [v22 setRetainAspectRatio:sub_3E67C4() & 1];
  v23 = objc_allocWithZone(ASKImageRequest);
  v24 = v22;
  v25 = sub_3E57A4();
  v26 = [v23 initWithURLRequest:v25 dataConsumer:v24 delegate:v35];

  v27 = v26;
  v42 = sub_3E6824();
  v43 = v28;
  v40 = 8217467;
  v41 = 0xE300000000000000;
  sub_3E67F4();
  v29 = sub_3E94D4();
  v31 = v30;
  (*(v6 + 8))(v8, v5);
  v38 = v29;
  v39 = v31;
  sub_68DC4();
  sub_3EE194();

  v32 = sub_3ED204();

  [v27 setCacheKey:v32];

  [v27 setRequestKey:v37];
  (*(v13 + 8))(v16, v36);
  return v27;
}

uint64_t sub_388718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v20 = a2;
  v4 = sub_3EDBB4();
  v17 = *(v4 - 8);
  v18 = v4;
  __chkstk_darwin(v4);
  v16 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EDB54();
  __chkstk_darwin(v6);
  v7 = sub_3EBC14();
  __chkstk_darwin(v7 - 8);
  *(v2 + 65) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 96) = sub_61FE0(_swiftEmptyArrayStorage);
  *(v2 + 104) = sub_621DC(_swiftEmptyArrayStorage);
  *(v2 + 112) = 0;
  v8 = sub_623C4(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503F30);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  *(v2 + 120) = v9;
  sub_36174(0, &qword_4F10B0);
  sub_3EBBE4();
  v21 = _swiftEmptyArrayStorage;
  sub_388DAC(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
  sub_318924(&qword_4F1CB8, &qword_4F1CB0);
  sub_3EE244();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *(v2 + 88) = sub_3EDBF4();
  v10 = [objc_allocWithZone(NSOperationQueue) init];
  [v10 setMaxConcurrentOperationCount:1];
  [v10 setUnderlyingQueue:*(v3 + 88)];
  v11 = sub_3ED204();
  [v10 setName:v11];

  v12 = [objc_opt_self() mainQueue];
  v13 = objc_allocWithZone(ASKResourceLoader);
  v14 = [v13 initWithRequestQueue:v19 accessQueue:v10 notificationQueue:v12 cacheLimit:v20];

  *(v3 + 16) = v14;
  *(v3 + 128) = 0;
  return v3;
}

unint64_t sub_388AC4()
{
  result = qword_503F38;
  if (!qword_503F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_503F38);
  }

  return result;
}

uint64_t sub_388B20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_388B68(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
  return sub_3878D8();
}

uint64_t sub_388C10()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_388C48(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v6 = a1;
  *&v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

id sub_388CBC()
{
  if (*(v0 + 16))
  {
    v1 = &selRef_enterBackground;
  }

  else
  {
    v1 = &selRef_enterForeground;
  }

  return [*(*(v0 + 24) + 16) *v1];
}

uint64_t sub_388D1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_388D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = a3;
  v7 = a1;
  return v4(&v7, a2, &v6);
}

uint64_t sub_388DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_388E34()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_388F14()
{
  v1 = *(sub_3E5FC4() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_386050(v3, v4, v0 + v2, v5);
}

uint64_t objectdestroy_63Tm()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_388FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  result = (*(v3 + 16))();
  if (v7)
  {
    return v7(a1, a2, a3);
  }

  return result;
}

uint64_t sub_38905C()
{
  v1 = sub_3E97B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_3E5FC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  v10 = v3 | v8;
  v11 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v8 + 8) & ~v8;

  (*(v7 + 8))(v0 + v12, v6);

  return _swift_deallocObject(v0, v12 + v9, v10 | 7);
}

uint64_t sub_3891D4()
{
  v1 = *(sub_3E97B4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_3E5FC4() - 8);
  v6 = *(v0 + v4);
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  return sub_385BC0(v0 + v2, v7, v8, v6, v9);
}

uint64_t sub_3892C0()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 24))
  {
  }

  v5 = (v3 + 48) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_38939C()
{
  v1 = *(sub_3E5FC4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_3858AC(v2, v3, v4, v5, v6);
}

uint64_t LibraryActionControllerProtocol.makeAndSendMetricsEvent(episodeUuid:actionType:pageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_F3BD8(v18);
  v17[6] = v18[6];
  v17[7] = v18[7];
  v17[8] = v18[8];
  v17[2] = v18[2];
  v17[3] = v18[3];
  v17[4] = v18[4];
  v17[5] = v18[5];
  v17[0] = v18[0];
  v17[1] = v18[1];
  return (*(a8 + 264))(a1, a2, a3, a4, a5, a6, 0, 0, 0, 0, v17, a7, a8);
}

uint64_t LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_F3BD8(v18);
  v17[6] = v18[6];
  v17[7] = v18[7];
  v17[8] = v18[8];
  v17[2] = v18[2];
  v17[3] = v18[3];
  v17[4] = v18[4];
  v17[5] = v18[5];
  v17[0] = v18[0];
  v17[1] = v18[1];
  return (*(a8 + 256))(a1, a2, a3, a4, a5, a6, 0, 0, 0, 0, v17, a7, a8);
}

uint64_t LibraryActionControllerProtocol.makeAndSendMetricsEvent(podcastUuid:actionType:pageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_F3BD8(v18);
  v17[6] = v18[6];
  v17[7] = v18[7];
  v17[8] = v18[8];
  v17[2] = v18[2];
  v17[3] = v18[3];
  v17[4] = v18[4];
  v17[5] = v18[5];
  v17[0] = v18[0];
  v17[1] = v18[1];
  return (*(a8 + 272))(a1, a2, a3, a4, a5, a6, 0, 0, 0, 0, v17, a7, a8);
}

double ShowsSortType.showLockupStyle.getter@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 256;
  v2 = 0xC050507070C0CuLL >> (8 * a1);
  *(a2 + 2) = v2;
  *(a2 + 7) = 0;
  *(a2 + 3) = 15;
  *(a2 + 9) = 1;
  *(a2 + 10) = 0x3060603030303uLL >> (8 * a1);
  *(a2 + 11) = 2;
  *(a2 + 12) = 0x4060603030404uLL >> (8 * a1);
  *(a2 + 13) = v2;
  *(a2 + 14) = 15;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = -1;
  return result;
}

uint64_t ShowsSortType.displayTitle.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 - 4 >= 2)
    {
      v1 = [objc_opt_self() mainBundle];
      v6._countAndFlagsBits = 0xE000000000000000;
      v2._countAndFlagsBits = 0x4E414D5F54524F53;
      v2._object = 0xEB000000004C4155;
    }

    else
    {
      v1 = [objc_opt_self() mainBundle];
      v6._countAndFlagsBits = 0xE000000000000000;
      v2._countAndFlagsBits = 0xD000000000000015;
      v2._object = 0x800000000042F0C0;
    }
  }

  else if (a1 >= 2u)
  {
    v1 = [objc_opt_self() mainBundle];
    v6._countAndFlagsBits = 0xE000000000000000;
    v2._object = 0x800000000042F0E0;
    v2._countAndFlagsBits = 0xD000000000000014;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v6._countAndFlagsBits = 0xE000000000000000;
    v2._countAndFlagsBits = 0x5F59425F54524F53;
    v2._object = 0xED0000454C544954;
  }

  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v3.super.isa = v1;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v4 = sub_3E5A74(v2, v7, v3, v8, v6);

  return v4;
}

uint64_t ShowsSortType.displaySubtitle(currentSort:)(unsigned __int8 a1)
{
  if ((sub_3E7B54() & 1) == 0)
  {
    return 0;
  }

  if (a1 > 2u)
  {
    if (a1 <= 4u)
    {
      if (a1 != 3)
      {
        goto LABEL_9;
      }

LABEL_11:
      v2 = [objc_opt_self() mainBundle];
      v10._countAndFlagsBits = 0x800000000042EB60;
      v4 = 1701080143;
      goto LABEL_12;
    }

    if (a1 == 5)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!a1)
  {
    v2 = [objc_opt_self() mainBundle];
    v10._countAndFlagsBits = 0x800000000042EBA0;
    v3._countAndFlagsBits = 0x6E69646E65637341;
    v3._object = 0xE900000000000067;
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v2 = [objc_opt_self() mainBundle];
    v10._countAndFlagsBits = 0x800000000042F100;
    v3._countAndFlagsBits = 0x69646E6563736544;
    v3._object = 0xEA0000000000676ELL;
LABEL_15:
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0;
    v6.super.isa = v2;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    goto LABEL_16;
  }

LABEL_9:
  v2 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0x800000000042EB80;
  v4 = 1702323534;
LABEL_12:
  v3._countAndFlagsBits = v4 | 0x4620747300000000;
  v3._object = 0xEC00000074737269;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v6.super.isa = v2;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
LABEL_16:
  v9 = sub_3E5A74(v3, v5, v6, v7, v10);

  return v9;
}

uint64_t sub_389BA0()
{
}

uint64_t sub_389BF4()
{
}

uint64_t FeedUpdateResult.description.getter()
{
  v1 = (*v0 >> 57) & 0x78 | *v0 & 7;
  if (v1 == 127)
  {
    return 0x64657070696B732ELL;
  }

  if (v1 == 95)
  {
    return 0x656873696E69662ELL;
  }

  return 0x6572756C6961662ELL;
}

uint64_t getEnumTagSinglePayload for FeedUpdateContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FeedUpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_389DEC(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_389E08(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit16FeedUpdateResultO(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_389E74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v4 = v3 ^ 0x7F;
  v5 = 128 - v3;
  if (v4 >= 0x7D)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_389ED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((126 - a2) >> 2) | (32 * (126 - a2)) | ((((126 - a2) >> 2) | (32 * (126 - a2))) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_389F40(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t dispatch thunk of LibraryActionControllerProtocol.pubDateLimitPublisher(forListType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a3 + 16);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v9 = v3;
  return v4(v8);
}

uint64_t dispatch thunk of LibraryActionControllerProtocol.episodeSortTypePublisher(forListType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a3 + 24);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v9 = v3;
  return v4(v8);
}

uint64_t dispatch thunk of LibraryActionControllerProtocol.hidesPlayedEpisodesPublisher(forListType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a3 + 32);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v9 = v3;
  return v4(v8);
}

uint64_t dispatch thunk of LibraryActionControllerProtocol.updateFeed(podcast:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 128))();
}

{
  return (*(a5 + 136))();
}

uint64_t LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_801B4();
  v8 = sub_3EDBC4();
  v9 = (*(a4 + 352))(a1, a2, v8, a3, a4);

  return v9;
}

unint64_t ShowInfo.asDictionary.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5300;
  *(inited + 32) = 0x64496D616461;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "deviceShowId");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6954776F6C6C6F66;
  *(inited + 136) = 0xEA0000000000656DLL;
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = v5;

  v7 = sub_61EB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC480);
  swift_arrayDestroy();
  return v7;
}

ShelfKit::ShowLockupStyle::LockupStyleOptions __swiftcall ShowLockupStyle.LockupStyleOptions.init(followedEpisodicShowStyle:followedEpisodicShowFallbackStyle:followedSerialShowStyle:followedSerialShowFallbackStyle:unfollowedShowStyle:unfollowedShowFallbackStyle:)(ShelfKit::ShowLockupStyleType followedEpisodicShowStyle, ShelfKit::ShowLockupStyleType_optional followedEpisodicShowFallbackStyle, ShelfKit::ShowLockupStyleType_optional followedSerialShowStyle, ShelfKit::ShowLockupStyleType_optional followedSerialShowFallbackStyle, ShelfKit::ShowLockupStyleType_optional unfollowedShowStyle, ShelfKit::ShowLockupStyleType_optional unfollowedShowFallbackStyle)
{
  *v6 = followedEpisodicShowStyle;
  *(v6 + 1) = followedEpisodicShowFallbackStyle;
  *(v6 + 2) = followedSerialShowStyle;
  *(v6 + 3) = followedSerialShowFallbackStyle;
  *(v6 + 4) = unfollowedShowStyle;
  *(v6 + 5) = unfollowedShowFallbackStyle;
  result.followedEpisodicShowStyle = followedEpisodicShowStyle;
  return result;
}

uint64_t ShowLockupStyle.init(includesOfferButton:title:subline:groupedEpisodesListType:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  *&v12[17] = *(a4 + 16);
  *&v12[33] = *(a4 + 32);
  v7.i32[1] = HIDWORD(*(a4 + 32));
  *&v12[49] = *(a4 + 48);
  v12[65] = *(a4 + 64);
  *&v12[1] = *a4;
  *a5 = result;
  *(a5 + 7) = v6;
  *(a5 + 3) = v5;
  v7.i32[0] = *a3;
  v8 = vmovl_u8(v7).u8[0];
  *(a5 + 9) = *a3;
  *(a5 + 31) = *&v12[16];
  *(a5 + 47) = *&v12[32];
  v9 = *(a3 + 4);
  v10 = *(a3 + 5);
  if (v9 == 15)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(a3 + 4);
  }

  *(a5 + 1) = v8;
  *(a5 + 2) = v11;
  *(a5 + 13) = v9;
  *(a5 + 14) = v10;
  *(a5 + 63) = *&v12[48];
  *(a5 + 79) = *&v12[64];
  *(a5 + 15) = *v12;
  return result;
}

uint64_t ShowLockupStyle.init(includesOfferButton:defaultSubtitle:unfollowedSubtitle:groupedEpisodesListType:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v6[33] = *(a4 + 32);
  *&v6[17] = *(a4 + 16);
  *&v6[49] = *(a4 + 48);
  *&v6[1] = *a4;
  *(a5 + 47) = *&v6[32];
  *(a5 + 31) = *&v6[16];
  *(a5 + 63) = *&v6[48];
  v6[65] = *(a4 + 64);
  if (a3 == 15)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  *a5 = result;
  *(a5 + 1) = a2;
  *(a5 + 2) = v5;
  *(a5 + 7) = 0;
  *(a5 + 3) = 15;
  *(a5 + 9) = a2;
  *(a5 + 10) = 3855;
  *(a5 + 12) = 15;
  *(a5 + 13) = a3;
  *(a5 + 14) = 15;
  *(a5 + 79) = *&v6[64];
  *(a5 + 15) = *v6;
  return result;
}

void __swiftcall ShowInfo.init(adamId:deviceShowId:followTime:)(ShelfKit::ShowInfo *__return_ptr retstr, Swift::String adamId, Swift::String deviceShowId, Swift::Double followTime)
{
  retstr->adamId = adamId;
  retstr->deviceShowId = deviceShowId;
  retstr->followTime = followTime;
}

uint64_t static ShowInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_3EE804();
  }
}

Swift::Int ShowInfo.hashValue.getter()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_38AA9C()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

void ShowLockupStyle.title.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 3);
  *(a1 + 4) = *(v1 + 7);
  *a1 = v2;
}

void ShowLockupStyle.subline.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 13);
  *a1 = *(v1 + 9);
  *(a1 + 4) = v2;
}

uint64_t _s8ShelfKit15ShowLockupStyleV0dE7OptionsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  if (v2 == 15)
  {
    if (v7 != 15)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v7 == 15 || v2 != v7)
    {
      return result;
    }
  }

  if (v3 == 15)
  {
    if (v8 != 15)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 15 || v3 != v8)
    {
      return result;
    }
  }

  if (v4 == 15)
  {
    if (v9 != 15)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 15 || v4 != v9)
    {
      return result;
    }
  }

  if (v5 == 15)
  {
    if (v10 != 15)
    {
      return 0;
    }

LABEL_22:
    if (v6 == 15)
    {
      if (v11 == 15)
      {
        return 1;
      }
    }

    else if (v11 != 15 && v6 == v11)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if (v10 != 15 && v5 == v10)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t _s8ShelfKit15ShowLockupStyleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 7);
  v9 = *(a1 + 3);
  v2.i32[0] = *(a1 + 9);
  v10 = a1[13];
  v11 = a1[14];
  v12 = *(a1 + 4);
  v54 = *(a1 + 3);
  v55 = v12;
  v56 = a1[80];
  v13 = *(a1 + 2);
  v52 = *(a1 + 1);
  v53 = v13;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = *(a2 + 7);
  v18 = *(a2 + 3);
  v3.i32[0] = *(a2 + 9);
  v19 = a2[13];
  v61 = a2[80];
  v20 = a2[14];
  v21 = *(a2 + 4);
  v59 = *(a2 + 3);
  v60 = v21;
  v22 = *(a2 + 2);
  v57 = *(a2 + 1);
  v58 = v22;
  if (((v5 ^ v14) & 1) == 0 && v6 == v15 && v7 == v16)
  {
    v23 = v9 | (v8 << 32);
    if (v23 == 15)
    {
      if (v18 != 15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v35) = v23;
      WORD2(v35) = WORD2(v23);
      if (v18 == 15)
      {
        goto LABEL_13;
      }

      v24.i64[0] = 0xFFFFFFFFFFFFLL;
      v24.i64[1] = 0xFFFFFFFFFFFFLL;
      v25 = vandq_s8(vdupq_n_s64(v18 | (v17 << 32)), v24);
      v26 = vshlq_u64(v25, xmmword_41DED0);
      v45[0] = v18;
      *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_41DEE0));
      *v26.i8 = vmovn_s64(v26);
      v26.i16[1] = v26.i16[2];
      v26.i16[2] = v25.i16[0];
      v26.i16[3] = v25.i16[2];
      *&v45[1] = vmovn_s16(v26).u32[0];
      v45[5] = ((v18 | (v17 << 32)) >> 32) >> 8;
      if ((_s8ShelfKit15ShowLockupStyleV0dE7OptionsV2eeoiySbAE_AEtFZ_0(&v35, v45) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v27 = vmovl_u8(v2).u64[0];
    v28 = vuzp1_s8(v27, v27);
    LODWORD(v35) = v28.i32[0];
    BYTE4(v35) = v10;
    BYTE5(v35) = v11;
    *v45 = vuzp1_s8(*&vmovl_u8(v3), v28).u32[0];
    v45[4] = v19;
    v45[5] = v20;
    if ((_s8ShelfKit15ShowLockupStyleV0dE7OptionsV2eeoiySbAE_AEtFZ_0(&v35, v45) & 1) == 0)
    {
LABEL_13:
      v4 = 0;
      return v4 & 1;
    }

    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    *&v45[7] = v57;
    *&v45[23] = v58;
    *&v45[39] = v59;
    v29 = v56;
    *&v45[55] = v60;
    if (v56 == 255)
    {
      if (v61 == 255)
      {
        v35 = v52;
        v36 = v53;
        v37 = v54;
        v38 = v55;
        v39 = -1;
        sub_6B560(&v52, v50);
        sub_6B560(&v57, v50);
        sub_FCF8(&v35, &qword_4EC910);
        v4 = 1;
        return v4 & 1;
      }
    }

    else if (v61 != 255)
    {
      v31[0] = v57;
      v31[1] = v58;
      v31[2] = v59;
      v31[3] = v60;
      v32 = v61;
      v37 = v59;
      v38 = v60;
      v39 = v61;
      v35 = v57;
      v36 = v58;
      v50[2] = v54;
      v50[3] = v55;
      v50[0] = v52;
      v50[1] = v53;
      v51 = v56;
      sub_6B560(&v52, v33);
      sub_6B560(&v57, v33);
      v4 = sub_3E7F04();
      sub_FCF8(v31, &qword_4EC910);
      v33[0] = v46;
      v33[1] = v47;
      v33[2] = v48;
      v33[3] = v49;
      v34 = v29;
      sub_FCF8(v33, &qword_4EC910);
      return v4 & 1;
    }

    v35 = v52;
    v36 = v53;
    v37 = v54;
    v38 = v55;
    v39 = v56;
    v41 = *&v45[16];
    v42 = *&v45[32];
    *v43 = *&v45[48];
    *&v43[15] = *&v45[63];
    v40 = *v45;
    v44 = v61;
    sub_6B560(&v52, v50);
    sub_6B560(&v57, v50);
    sub_FCF8(&v35, &qword_5040E0);
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_38AFDC()
{
  result = qword_5040A0;
  if (!qword_5040A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040A0);
  }

  return result;
}

unint64_t sub_38B034()
{
  result = qword_5040A8;
  if (!qword_5040A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040A8);
  }

  return result;
}

unint64_t sub_38B08C()
{
  result = qword_5040B0;
  if (!qword_5040B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040B0);
  }

  return result;
}

unint64_t sub_38B0E4()
{
  result = qword_5040B8;
  if (!qword_5040B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040B8);
  }

  return result;
}

unint64_t sub_38B13C()
{
  result = qword_5040C0;
  if (!qword_5040C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040C0);
  }

  return result;
}

unint64_t sub_38B194()
{
  result = qword_5040C8;
  if (!qword_5040C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040C8);
  }

  return result;
}

unint64_t sub_38B1EC()
{
  result = qword_5040D0;
  if (!qword_5040D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040D0);
  }

  return result;
}

unint64_t sub_38B244()
{
  result = qword_5040D8;
  if (!qword_5040D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040D8);
  }

  return result;
}

uint64_t dispatch thunk of LibraryDataProviderProtocol.fetchEpisodeCountObserver(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a3 + 280);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v9 = v3;
  return v4(v8);
}

{
  return (*(a3 + 288))();
}

uint64_t dispatch thunk of LibraryDataProviderProtocol.episodeListSettingsPublisher(listType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a3 + 384);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v9 = v3;
  return v4(v8);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15EpisodeListTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 > 0xA)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_38B820(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[81])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_38B874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ShowLockupStyle.LockupStyleOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && a1[6])
  {
    return (*a1 + 242);
  }

  v3 = *a1;
  v4 = v3 >= 0xF;
  v5 = v3 - 15;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ShowLockupStyle.LockupStyleOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 4) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 14;
    }
  }

  return result;
}

uint64_t static LibraryMenuActionType.defaultEnabledValues.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  off_5040E8 = a1;
}

uint64_t sub_38BAA0(_UNKNOWN ***a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_5040E8 = v1;
}

ShelfKit::LibraryMenuActionType_optional __swiftcall LibraryMenuActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B2E78;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t LibraryMenuActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x73776F6873;
  v3 = 0x796C746E65636572;
  if (v1 != 5)
  {
    v3 = 0x796C746E65636572;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x64616F6C6E776F64;
  }

  v4 = 0x736C656E6E616863;
  if (v1 != 1)
  {
    v4 = 0x6B72616D6B6F6F62;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_38BC78()
{
  sub_3ED394();
}

void sub_38BDC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x73776F6873;
  v5 = 0xED00006465646441;
  v6 = 0x796C746E65636572;
  if (v2 != 5)
  {
    v6 = 0x796C746E65636572;
    v5 = 0xEF64657461647055;
  }

  v7 = 0xEA00000000006465;
  if (v2 != 3)
  {
    v7 = 0xEB00000000676E69;
  }

  if (*v1 <= 4u)
  {
    v6 = 0x64616F6C6E776F64;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x736C656E6E616863;
  if (v2 != 1)
  {
    v9 = 0x6B72616D6B6F6F62;
    v8 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

ShelfKit::LibraryMenuAction __swiftcall LibraryMenuAction.init(type:isEnabled:)(ShelfKit::LibraryMenuActionType type, Swift::Bool isEnabled)
{
  *v2 = *type;
  v2[1] = isEnabled;
  result.type = type;
  return result;
}

unint64_t sub_38BEE8()
{
  result = qword_5040F0;
  if (!qword_5040F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040F0);
  }

  return result;
}

unint64_t sub_38BF40()
{
  result = qword_5040F8;
  if (!qword_5040F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_504100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5040F8);
  }

  return result;
}

uint64_t sub_38BFA4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_5040E8;
}

void sub_38C018(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t LibraryRemovalController.__allocating_init(asPartOf:)()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();

  return v0;
}

uint64_t LibraryRemovalController.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();

  sub_1FE90(&v2, v0 + 16);
  return v0;
}

UIAlertController_optional __swiftcall LibraryRemovalController.removalOptionsAfterUnfollow(uuid:)(Swift::String uuid)
{
  v2 = v1;
  object = uuid._object;
  countAndFlagsBits = uuid._countAndFlagsBits;
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  if ((*(v6 + 560))(countAndFlagsBits, object, v5, v6))
  {
    v8 = v1[5];
    v9 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
    v10 = (*(v9 + 600))(countAndFlagsBits, object, v8, v9);
    v12 = v11;
    v13 = objc_opt_self();
    v14 = [v13 mainBundle];
    v31._countAndFlagsBits = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD00000000000001ELL;
    v36._object = 0x800000000042F130;
    v39.value._countAndFlagsBits = 0;
    v39.value._object = 0;
    v15.super.isa = v14;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    sub_3E5A74(v36, v39, v15, v42, v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_3F5630;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_4F39C();
    *(v16 + 32) = v10;
    *(v16 + 40) = v12;
    sub_3ED214();

    v17 = sub_3ED204();

    v18 = [objc_opt_self() alertControllerWithTitle:v17 message:0 preferredStyle:0];

    v19 = [v13 mainBundle];
    v32._countAndFlagsBits = 0x800000000042F170;
    v37._countAndFlagsBits = 0xD000000000000013;
    v37._object = 0x800000000042F150;
    v40.value._countAndFlagsBits = 0;
    v40.value._object = 0;
    v20.super.isa = v19;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    sub_3E5A74(v37, v40, v20, v43, v32);

    v21 = swift_allocObject();
    v21[2] = countAndFlagsBits;
    v21[3] = object;
    v21[4] = v2;

    v22 = sub_3ED204();

    aBlock[4] = sub_38C784;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_38C018;
    aBlock[3] = &block_descriptor_29;
    v23 = _Block_copy(aBlock);

    v24 = objc_opt_self();
    v25 = [v24 actionWithTitle:v22 style:2 handler:v23];
    _Block_release(v23);

    [v18 addAction:v25];
    v26 = [v13 mainBundle];
    v33._countAndFlagsBits = 0x800000000042F1B0;
    v38._object = 0x800000000042F190;
    v38._countAndFlagsBits = 0xD000000000000011;
    v41.value._countAndFlagsBits = 0;
    v41.value._object = 0;
    v27.super.isa = v26;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    sub_3E5A74(v38, v41, v27, v44, v33);

    v28 = sub_3ED204();

    v29 = [v24 actionWithTitle:v28 style:1 handler:0];

    [v18 addAction:v29];
    v30 = v18;
  }

  else
  {
    v30 = 0;
  }

  result.value.super.super.super.isa = v30;
  result.is_nil = v7;
  return result;
}

uint64_t sub_38C594(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = sub_3E9A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9924();

  v11 = sub_3E99F4();
  v12 = sub_3ED9F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2EDD0(a2, a3, &v19);
    _os_log_impl(&dword_0, v11, v12, "removalOptionsAfterUnfollow for podcasts %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  (*(v8 + 8))(v10, v7);
  v15 = a4[5];
  v16 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v15);
  return (*(v16 + 592))(a2, a3, 1, 1, v15, v16);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

UIAlertController_optional __swiftcall LibraryRemovalController.removeShowFromLibraryAlertController(uuid:)(Swift::String uuid)
{
  v2 = v1;
  object = uuid._object;
  countAndFlagsBits = uuid._countAndFlagsBits;
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v7 = (*(v6 + 600))(countAndFlagsBits, object, v5, v6);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v45._countAndFlagsBits = 0xE000000000000000;
  v56._countAndFlagsBits = 0xD00000000000001ELL;
  v56._object = 0x800000000042F130;
  v12 = &selRef_errorWithDomain_code_userInfo_;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v13.super.isa = v11;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_3E5A74(v56, v61, v13, v66, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_3F5630;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_4F39C();
  *(v14 + 32) = v7;
  *(v14 + 40) = v9;
  sub_3ED214();

  v15 = sub_3ED204();

  v16 = [objc_opt_self() alertControllerWithTitle:v15 message:0 preferredStyle:0];

  v17 = v2[5];
  v18 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v17);
  LOBYTE(v17) = (*(v18 + 544))(countAndFlagsBits, object, v17, v18);
  v19 = [v10 mainBundle];
  v20 = &selRef_setDefaultTabInterval_;
  if (v17)
  {
    v46._countAndFlagsBits = 0x800000000042F1F0;
    v57._object = 0x800000000042F1D0;
    v57._countAndFlagsBits = 0xD000000000000013;
    v62.value._countAndFlagsBits = 0;
    v62.value._object = 0;
    v21.super.isa = v19;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    sub_3E5A74(v57, v62, v21, v67, v46);
    v47._object = v10;

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = countAndFlagsBits;
    v23[3] = object;
    v23[4] = v22;

    v24 = sub_3ED204();

    v53 = sub_38D1A0;
    v54 = v23;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_38C018;
    v52 = &block_descriptor_16_0;
    v25 = _Block_copy(&aBlock);

    v26 = objc_opt_self();
    v27 = [v26 actionWithTitle:v24 style:0 handler:v25];
    _Block_release(v25);

    [v16 addAction:v27];
    v10 = v47._object;
    v28 = [v47._object mainBundle];
    v47._countAndFlagsBits = 0x800000000042F230;
    v58._object = 0x800000000042F210;
    v58._countAndFlagsBits = 0xD000000000000013;
    v63.value._countAndFlagsBits = 0;
    v63.value._object = 0;
    v29.super.isa = v28;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_3E5A74(v58, v63, v29, v68, v47);

    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = countAndFlagsBits;
    v31[3] = object;
    v31[4] = v30;

    v32 = sub_3ED204();
    v20 = &selRef_setDefaultTabInterval_;

    v53 = sub_38D1CC;
    v54 = v31;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v12 = &selRef_errorWithDomain_code_userInfo_;
    v51 = sub_38C018;
    v52 = &block_descriptor_23_1;
    v33 = _Block_copy(&aBlock);

    v34 = [v26 actionWithTitle:v32 style:2 handler:v33];
  }

  else
  {
    v46._countAndFlagsBits = 0x800000000042F170;
    v59._object = 0x800000000042F150;
    v59._countAndFlagsBits = 0xD000000000000013;
    v64.value._countAndFlagsBits = 0;
    v64.value._object = 0;
    v35.super.isa = v19;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    sub_3E5A74(v59, v64, v35, v69, v46);

    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = countAndFlagsBits;
    v37[3] = object;
    v37[4] = v36;

    v32 = sub_3ED204();

    v53 = sub_38D174;
    v54 = v37;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_38C018;
    v52 = &block_descriptor_9_2;
    v33 = _Block_copy(&aBlock);

    v34 = [objc_opt_self() actionWithTitle:v32 style:2 handler:v33];
  }

  v38 = v34;
  _Block_release(v33);

  [v16 v20[28]];
  v39 = [v10 v12[50]];
  v48._countAndFlagsBits = 0xE000000000000000;
  v60._countAndFlagsBits = 0x6C65636E6143;
  v60._object = 0xE600000000000000;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v40.super.isa = v39;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_3E5A74(v60, v65, v40, v70, v48);

  v41 = sub_3ED204();

  v42 = [objc_opt_self() actionWithTitle:v41 style:1 handler:0];

  [v16 v20[28]];
  v44 = v16;
  result.value.super.super.super.isa = v44;
  result.is_nil = v43;
  return result;
}

uint64_t sub_38CEFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_38CF34(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5, int a6)
{
  LODWORD(v6) = a6;
  v10 = sub_3E9A04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9924();

  v14 = sub_3E99F4();
  v15 = sub_3ED9F4();

  v16 = os_log_type_enabled(v14, v15);
  v25 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    HIDWORD(v24) = v6;
    v6 = v17;
    v18 = swift_slowAlloc();
    v19 = a2;
    v20 = v18;
    v26[0] = v18;
    *v6 = 136315138;
    *(v6 + 4) = sub_2EDD0(v19, a3, v26);
    _os_log_impl(&dword_0, v14, v15, a5, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    LOBYTE(v6) = BYTE4(v24);
  }

  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F958(result + 16, v26);

    v22 = v27;
    v23 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v23 + 592))(v25, a3, v6 & 1, 0, v22, v23);
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return result;
}

uint64_t LibraryRemovalController.removeAndUnfollowOptionsSheetAction(show:)(uint64_t a1)
{
  v3 = sub_3E5FC4();
  v85 = *(v3 - 8);
  __chkstk_darwin(v3);
  v82 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v81 = v70 - v6;
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v73 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v70 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed);
  v14 = v1[5];
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v14);
  LOBYTE(v14) = (*(v15 + 544))(*(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid), *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid + 8), v14, v15);
  v16 = sub_38DAC8(a1, v13 & 1);
  v79 = v17;
  v80 = v16;
  v18 = sub_38DCAC(v13 & 1, v14 & 1);
  v76 = v19;
  v77 = v18;
  v86 = _swiftEmptyArrayStorage;
  v83 = v3;
  v84 = v8;
  v78 = v1;
  LODWORD(v75) = v13 & 1;
  v74 = v12;
  if (v14)
  {
    v20 = [objc_opt_self() mainBundle];
    v69._countAndFlagsBits = 0xE000000000000000;
    v87._object = 0x800000000042F1D0;
    v87._countAndFlagsBits = 0xD000000000000013;
    v88.value._countAndFlagsBits = 0;
    v88.value._object = 0;
    v21.super.isa = v20;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    v22 = sub_3E5A74(v87, v88, v21, v89, v69);
    v71 = v23;
    v72 = v22;

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = v13 & 1;
    v70[1] = v24;
    *(v25 + 32) = v24;

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for ClosureAction();
    v26 = swift_allocObject();
    v27 = (v26 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v27 = sub_38E1F8;
    v27[1] = v25;
    v28 = v73;
    (*(v84 + 16))(v73, v12, v7);
    v29 = sub_3EC634();
    v30 = v81;
    (*(*(v29 - 8) + 56))(v81, 1, 1, v29);

    v31 = v82;
    sub_3E5FB4();
    v32 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v34 = v33;
    v8 = v84;

    (*(v85 + 8))(v31, v83);
    (*(v8 + 8))(v12, v7);
    *(v26 + 16) = v32;
    *(v26 + 24) = v34;
    v35 = v71;
    *(v26 + 32) = v72;
    *(v26 + 40) = v35;
    *(v26 + 48) = 0;
    v36 = v7;
    (*(v8 + 32))(v26 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v28, v7);
    sub_14A10(v30, v26 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

    sub_3ED564();
    v37 = v28;
    if (*(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v86 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    sub_3ED604();
  }

  else
  {
    v36 = v7;
    v37 = v73;
  }

  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  *(v39 + 24) = v75;
  *(v39 + 32) = v38;

  v40 = v74;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for ClosureAction();
  v41 = swift_allocObject();
  v42 = (v41 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v42 = sub_38E1BC;
  v42[1] = v39;
  (*(v8 + 16))(v37, v40, v36);
  v43 = sub_3EC634();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v46 = v36;
  v47 = v81;
  v78 = v43;
  v75 = v45;
  v73 = (v44 + 56);
  (v45)(v81, 1, 1);

  v48 = v82;
  sub_3E5FB4();
  v49 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v51 = v50;
  v52 = v40;
  v53 = v48;

  v54 = *(v85 + 8);
  v85 += 8;
  v72 = v54;
  v54(v48, v83);
  (*(v84 + 8))(v52, v46);
  *(v41 + 16) = v49;
  *(v41 + 24) = v51;
  v55 = v76;
  *(v41 + 32) = v77;
  *(v41 + 40) = v55;
  *(v41 + 48) = 1;
  v56 = *(v84 + 32);
  v56(v41 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v37, v46);
  sub_14A10(v47, v41 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  sub_3ED564();
  if (*(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v86 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_3ED5A4();
  }

  sub_3ED604();
  v57 = v86;
  if (v86 >> 62)
  {
    type metadata accessor for Action();

    v58 = sub_3EE594();
  }

  else
  {

    sub_3EE814();
    type metadata accessor for Action();
    v58 = v57;
  }

  type metadata accessor for SheetAction();
  v59 = swift_allocObject();
  *(v59 + OBJC_IVAR____TtC8ShelfKit11SheetAction_actions) = v58;
  v60 = (v59 + OBJC_IVAR____TtC8ShelfKit11SheetAction_sheetTitle);
  v61 = v79;
  *v60 = v80;
  v60[1] = v61;
  v62 = (v59 + OBJC_IVAR____TtC8ShelfKit11SheetAction_message);
  *v62 = 0;
  v62[1] = 0;
  *(v59 + OBJC_IVAR____TtC8ShelfKit11SheetAction_isCancelable) = 1;
  v75(v47, 1, 1, v78);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v63 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v64 = v53;
  v65 = v52;
  v67 = v66;

  v72(v64, v83);
  *(v59 + 16) = v63;
  *(v59 + 24) = v67;
  *(v59 + 32) = 0;
  *(v59 + 40) = 0;
  *(v59 + 48) = 32;
  v56(v59 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v65, v46);
  sub_14A10(v47, v59 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v59;
}

uint64_t sub_38DAC8(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v3 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name + 8);
  if (v3)
  {
    v5 = objc_opt_self();

    v6 = [v5 mainBundle];
    v15._countAndFlagsBits = 0xE000000000000000;
    if (a2)
    {
      v7._object = 0x800000000042F480;
      v7._countAndFlagsBits = 0xD00000000000001CLL;
    }

    else
    {
      v7._countAndFlagsBits = 0xD00000000000001DLL;
      v7._object = 0x800000000042F460;
    }

    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v12.super.isa = v6;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    sub_3E5A74(v7, v18, v12, v20, v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_3F5630;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_4F39C();
    *(v13 + 32) = v2;
    *(v13 + 40) = v3;
    v14 = sub_3ED214();

    return v14;
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v15._countAndFlagsBits = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD00000000000001ELL;
    v16._object = 0x800000000042F440;
    v17.value._countAndFlagsBits = v2;
    v17.value._object = 0;
    v9.super.isa = v8;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v10 = sub_3E5A74(v16, v17, v9, v19, v15);

    return v10;
  }
}

uint64_t sub_38DCAC(char a1, char a2)
{
  if (a1)
  {
    v3 = [objc_opt_self() mainBundle];
    if (a2)
    {
      v10._countAndFlagsBits = 0xE000000000000000;
      v4._countAndFlagsBits = 0xD000000000000017;
      v4._object = 0x800000000042F420;
LABEL_9:
      v5.value._countAndFlagsBits = 0;
      v5.value._object = 0;
      v6.super.isa = v3;
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      goto LABEL_10;
    }

    v10._countAndFlagsBits = 0xE000000000000000;
    v4._object = 0x800000000042F400;
LABEL_8:
    v4._countAndFlagsBits = 0xD000000000000013;
    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    v3 = [objc_opt_self() mainBundle];
    v10._countAndFlagsBits = 0xE000000000000000;
    v4._object = 0x800000000042F150;
    goto LABEL_8;
  }

  v3 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0x800000000042F230;
  v4._object = 0x800000000042F210;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v6.super.isa = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
LABEL_10:
  v8 = sub_3E5A74(v4, v5, v6, v7, v10);

  return v8;
}

uint64_t sub_38DE34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, int a7)
{
  v27 = a7;
  v26 = a6;
  v9 = sub_3E9A04();
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3ED9F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_3F5630;
  v13 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v14 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid + 8);
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_4F39C();
  v30 = v13;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  sub_3B590();

  v15 = sub_3EE024();
  sub_3E9754();

  if (a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1F958(Strong + 16, v31);

      v17 = v32;
      v18 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v18 + 48))(v30, v14, v17, v18);

      __swift_destroy_boxed_opaque_existential_1Tm(v31);
    }
  }

  sub_3E9924();

  v19 = sub_3E99F4();
  v20 = sub_3ED9F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2EDD0(v30, v14, v31);
    _os_log_impl(&dword_0, v19, v20, v26, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  (*(v28 + 8))(v11, v29);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F958(result + 16, v31);

    v24 = v32;
    v25 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v25 + 592))(v30, v14, v27 & 1, 0, v24, v25);
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  return result;
}

uint64_t LibraryRemovalController.unsaveAllConfirmationSheet(uuid:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v70 = &v61 - v6;
  v69 = sub_3E5FC4();
  v74 = *(v69 - 8);
  __chkstk_darwin(v69);
  v73 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_3EC1F4();
  v68 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[5];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
  v11 = (*(v10 + 552))(a1, a2, v9, v10);
  v12 = v2[5];
  v13 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v12);
  v14 = (*(v13 + 600))(a1, a2, v12, v13);
  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v17 mainBundle];
  v59._countAndFlagsBits = 0xE000000000000000;
  v75._countAndFlagsBits = 0xD00000000000001CLL;
  v75._object = 0x800000000042F250;
  v77.value._countAndFlagsBits = 0;
  v77.value._object = 0;
  v19.super.isa = v18;
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  sub_3E5A74(v75, v77, v19, v79, v59);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_3F5310;
  *(v20 + 56) = &type metadata for Int;
  *(v20 + 64) = &protocol witness table for Int;
  *(v20 + 32) = v11;
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = sub_4F39C();
  *(v20 + 72) = v14;
  *(v20 + 80) = v16;
  v21 = sub_3ED214();
  v66 = v22;
  v67 = v21;

  v23 = [v17 mainBundle];
  v60._countAndFlagsBits = 0x800000000042F290;
  v76._object = 0x800000000042F270;
  v76._countAndFlagsBits = 0xD000000000000013;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v24.super.isa = v23;
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  v25 = sub_3E5A74(v76, v78, v24, v80, v60);
  v64 = v26;
  v65 = v25;

  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 2) = a1;
  *(v28 + 3) = a2;
  *(v28 + 4) = v27;

  v29 = v71;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for ClosureAction();
  v30 = swift_allocObject();
  v31 = (v30 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v31 = sub_38EB60;
  v31[1] = v28;
  v32 = v68;
  v33 = v29;
  v34 = v72;
  (*(v68 + 16))(v30 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v33, v72);
  v35 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v36 = sub_3EC634();
  v37 = *(v36 - 8);
  v62 = *(v37 + 56);
  v63 = v37 + 56;
  v62(v30 + v35, 1, 1, v36);

  v38 = v73;
  sub_3E5FB4();
  v39 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v41 = v40;

  v42 = *(v74 + 8);
  v74 += 8;
  v43 = v69;
  v42(v38, v69);
  v44 = v32;
  v45 = *(v32 + 8);
  v46 = v71;
  v45(v71, v34);

  *(v30 + 16) = v39;
  *(v30 + 24) = v41;
  v47 = v64;
  *(v30 + 32) = v65;
  *(v30 + 40) = v47;
  *(v30 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_3F7950;
  *(v48 + 32) = v30;
  type metadata accessor for SheetAction();
  v49 = swift_allocObject();
  *(v49 + OBJC_IVAR____TtC8ShelfKit11SheetAction_actions) = v48;
  v50 = (v49 + OBJC_IVAR____TtC8ShelfKit11SheetAction_sheetTitle);
  v51 = v66;
  *v50 = v67;
  v50[1] = v51;
  v52 = (v49 + OBJC_IVAR____TtC8ShelfKit11SheetAction_message);
  *v52 = 0;
  v52[1] = 0;
  *(v49 + OBJC_IVAR____TtC8ShelfKit11SheetAction_isCancelable) = 1;
  v53 = v70;
  v62(v70, 1, 1, v36);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v54 = v73;
  sub_3E5FB4();
  v55 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v57 = v56;
  v42(v54, v43);
  *(v49 + 16) = v55;
  *(v49 + 24) = v57;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  *(v49 + 48) = 32;
  (*(v44 + 32))(v49 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v46, v72);
  sub_14A10(v53, v49 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v49;
}

uint64_t sub_38E8B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9924();

  v8 = sub_3E99F4();
  v9 = sub_3ED9F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2EDD0(a1, a2, v17);
    _os_log_impl(&dword_0, v8, v9, "LibraryRemovalController.unsaveAllConfirmationSheet() - Confirming to unbookmark all episodes for podcast UUID %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F958(result + 16, v17);

    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    v16 = *(v14 + 424);

    v16(a1, a2, sub_390254, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_38EB6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_3E9A04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9924();

  v9 = sub_3E99F4();
  v10 = sub_3ED9F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2EDD0(a2, a3, &v15);
    _os_log_impl(&dword_0, v9, v10, "LibraryRemovalController.unsaveAllConfirmationSheet() - Confirmed to unbookmark all episodes for podcast UUID %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LibraryRemovalController.removeAllDownloadsFromShowSheetAction(uuid:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v65 = &v56 - v6;
  v7 = sub_3E5FC4();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  __chkstk_darwin(v7);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_3EC1F4();
  v63 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v11);
  v13 = (*(v12 + 600))(a1, a2, v11, v12);
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v54._countAndFlagsBits = 0xE000000000000000;
  v70._countAndFlagsBits = 0xD00000000000001ALL;
  v70._object = 0x800000000042F2B0;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v18.super.isa = v17;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  sub_3E5A74(v70, v72, v18, v74, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_3F5630;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_4F39C();
  *(v19 + 32) = v13;
  *(v19 + 40) = v15;
  v20 = sub_3ED214();
  v61 = v21;
  v62 = v20;

  v22 = [v16 mainBundle];
  v55._countAndFlagsBits = 0x800000000042B090;
  v71._countAndFlagsBits = 0xD00000000000001FLL;
  v71._object = 0x8000000000427470;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v23.super.isa = v22;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v24 = sub_3E5A74(v71, v73, v23, v75, v55);
  v59 = v25;
  v60 = v24;

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 2) = v26;
  *(v27 + 3) = a1;
  *(v27 + 4) = a2;

  v28 = v66;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for ClosureAction();
  v29 = swift_allocObject();
  v30 = (v29 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v30 = sub_38F400;
  v30[1] = v27;
  v31 = v63;
  v32 = v28;
  v33 = v67;
  (*(v63 + 16))(v29 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v32, v67);
  v34 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v35 = sub_3EC634();
  v36 = *(v35 - 8);
  v57 = *(v36 + 56);
  v58 = v36 + 56;
  v57(v29 + v34, 1, 1, v35);

  v37 = v64;
  sub_3E5FB4();
  v38 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v40 = v39;

  v41 = *(v69 + 8);
  v69 += 8;
  v41(v37, v68);
  v42 = v66;
  (*(v31 + 8))(v66, v33);

  *(v29 + 16) = v38;
  *(v29 + 24) = v40;
  v43 = v59;
  *(v29 + 32) = v60;
  *(v29 + 40) = v43;
  *(v29 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_3F7950;
  *(v44 + 32) = v29;
  type metadata accessor for SheetAction();
  v45 = swift_allocObject();
  *(v45 + OBJC_IVAR____TtC8ShelfKit11SheetAction_actions) = v44;
  v46 = (v45 + OBJC_IVAR____TtC8ShelfKit11SheetAction_sheetTitle);
  v47 = v61;
  *v46 = v62;
  v46[1] = v47;
  v48 = (v45 + OBJC_IVAR____TtC8ShelfKit11SheetAction_message);
  *v48 = 0;
  v48[1] = 0;
  *(v45 + OBJC_IVAR____TtC8ShelfKit11SheetAction_isCancelable) = 1;
  v49 = v65;
  v57(v65, 1, 1, v35);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v50 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v52 = v51;
  v41(v37, v68);
  *(v45 + 16) = v50;
  *(v45 + 24) = v52;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = 32;
  (*(v31 + 32))(v45 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v42, v67);
  sub_14A10(v49, v45 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v45;
}

uint64_t sub_38F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F958(result + 16, v8);

    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v7 + 512))(a2, a3, 0, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return result;
}

uint64_t LibraryRemovalController.removeAllDownloadsFromAllShowsSheetAction()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v1 - 8);
  v62 = &v53 - v2;
  v3 = sub_3E5FC4();
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EC1F4();
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v63 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v11 = (*(v10 + 536))(v9, v10);
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v51._countAndFlagsBits = 0xE000000000000000;
  v66._countAndFlagsBits = 0xD00000000000002ALL;
  v66._object = 0x800000000042F2D0;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v14.super.isa = v13;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_3E5A74(v66, v68, v14, v70, v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v15 = swift_allocObject();
  v57 = xmmword_3F5630;
  *(v15 + 16) = xmmword_3F5630;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = v11;
  v16 = sub_3ED214();
  v58 = v17;
  v59 = v16;

  v18 = [v12 mainBundle];
  v52._countAndFlagsBits = 0xE000000000000000;
  v67._object = 0x800000000042F300;
  v67._countAndFlagsBits = 0xD00000000000001DLL;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v19.super.isa = v18;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  sub_3E5A74(v67, v69, v19, v71, v52);

  v20 = swift_allocObject();
  *(v20 + 16) = v57;
  *(v20 + 56) = &type metadata for Int;
  *(v20 + 64) = &protocol witness table for Int;
  *(v20 + 32) = v11;
  v21 = sub_3ED214();
  v56 = v22;
  *&v57 = v21;

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v63;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for ClosureAction();
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v26 = sub_38FAB4;
  v26[1] = v23;
  v27 = v60;
  v28 = v61;
  (*(v60 + 16))(v25 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v24, v61);
  v29 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v30 = sub_3EC634();
  v31 = *(v30 - 8);
  v54 = *(v31 + 56);
  v55 = v31 + 56;
  v54(v25 + v29, 1, 1, v30);

  sub_3E5FB4();
  v32 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v34 = v33;
  v35 = *(v65 + 8);
  v65 += 8;
  v36 = v6;
  v35(v6, v64);
  v37 = v27;
  v38 = *(v27 + 8);
  v39 = v63;
  v38(v63, v28);

  *(v25 + 16) = v32;
  *(v25 + 24) = v34;
  v40 = v56;
  *(v25 + 32) = v57;
  *(v25 + 40) = v40;
  *(v25 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_3F7950;
  *(v41 + 32) = v25;
  type metadata accessor for SheetAction();
  v42 = swift_allocObject();
  *(v42 + OBJC_IVAR____TtC8ShelfKit11SheetAction_actions) = v41;
  v43 = (v42 + OBJC_IVAR____TtC8ShelfKit11SheetAction_sheetTitle);
  v44 = v58;
  *v43 = v59;
  v43[1] = v44;
  v45 = (v42 + OBJC_IVAR____TtC8ShelfKit11SheetAction_message);
  *v45 = 0;
  v45[1] = 0;
  *(v42 + OBJC_IVAR____TtC8ShelfKit11SheetAction_isCancelable) = 1;
  v46 = v62;
  v54(v62, 1, 1, v30);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v47 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v49 = v48;
  v35(v36, v64);
  *(v42 + 16) = v47;
  *(v42 + 24) = v49;
  *(v42 + 32) = 0;
  *(v42 + 40) = 0;
  *(v42 + 48) = 32;
  (*(v37 + 32))(v42 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v39, v28);
  sub_14A10(v46, v42 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v42;
}

uint64_t sub_38FA14()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F958(result + 16, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 520))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  return result;
}

UIAlertController __swiftcall LibraryRemovalController.removeAllDownloadsAlertController(uuid:)(Swift::String uuid)
{
  object = uuid._object;
  countAndFlagsBits = uuid._countAndFlagsBits;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = (*(v5 + 600))(countAndFlagsBits, object, v4, v5);
  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v28._countAndFlagsBits = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD00000000000001ALL;
  v32._object = 0x800000000042F2B0;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v11.super.isa = v10;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_3E5A74(v32, v35, v11, v38, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_3F5630;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_4F39C();
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  sub_3ED214();

  v13 = sub_3ED204();

  v14 = [objc_opt_self() alertControllerWithTitle:v13 message:0 preferredStyle:0];

  v15 = [v9 mainBundle];
  v29._countAndFlagsBits = 0x800000000042B090;
  v33._object = 0x800000000042F320;
  v33._countAndFlagsBits = 0xD000000000000010;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v16.super.isa = v15;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_3E5A74(v33, v36, v16, v39, v29);

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = countAndFlagsBits;
  v18[4] = object;

  v19 = sub_3ED204();

  aBlock[4] = sub_38FFE0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_38C018;
  aBlock[3] = &block_descriptor_47;
  v20 = _Block_copy(aBlock);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:2 handler:v20];
  _Block_release(v20);

  [v14 addAction:v22];
  v23 = [v9 mainBundle];
  v30._countAndFlagsBits = 0xE000000000000000;
  v34._countAndFlagsBits = 0x6C65636E6143;
  v34._object = 0xE600000000000000;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v24.super.isa = v23;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_3E5A74(v34, v37, v24, v40, v30);

  v25 = sub_3ED204();

  v26 = [v21 actionWithTitle:v25 style:1 handler:0];

  [v14 addAction:v26];
  return v14;
}

uint64_t sub_38FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F958(result + 16, v9);

    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v8 + 512))(a3, a4, 0, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return result;
}

uint64_t objectdestroy_26Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t LibraryRemovalController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_39021C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t Locale.paragraphAlignment.getter()
{
  sub_3E5FE4();
  v2._countAndFlagsBits = 26746;
  v2._object = 0xE200000000000000;
  v0 = sub_3ED444(v2);

  if (v0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

Swift::String __swiftcall localizedStringReferencingWiFi(_:comment:)(Swift::String _, Swift::String comment)
{
  object = comment._object;
  countAndFlagsBits = comment._countAndFlagsBits;
  v4 = _._object;
  v5 = _._countAndFlagsBits;
  if ([objc_opt_self() wapiCapability])
  {
    v6 = 1312902231;
  }

  else
  {
    v6 = 1229343063;
  }

  v13 = v6 & 0xFFFF0000FFFFFFFFLL | 0x5F00000000;
  v14._countAndFlagsBits = v5;
  v14._object = v4;
  sub_3ED3D4(v14);
  v15._countAndFlagsBits = v13;
  v15._object = 0xE500000000000000;
  v16._countAndFlagsBits = countAndFlagsBits;
  v16._object = object;
  v7 = sub_3E8614(v15, v16);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t static Localization.decimal(_:_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E6044();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = objc_allocWithZone(NSNumberFormatter);
    v11 = a1;
    v12 = [v10 init];
    [v12 setNumberStyle:1];
    [v12 setFormatterBehavior:1040];
    sub_3E6034();
    isa = sub_3E6014().super.isa;
    (*(v7 + 8))(v9, v6);
    [v12 setLocale:isa];

    [v12 setMinimumFractionDigits:a2];
    [v12 setMaximumFractionDigits:a3];
    v14 = [v12 stringFromNumber:v11];
    if (v14)
    {
      v15 = v14;
      v16 = sub_3ED244();

      return v16;
    }
  }

  return 0;
}

id static Localization.duration(_:)(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  result = [objc_opt_self() prettyShortStringWithDuration:0 abbreviated:a1];
  if (result)
  {
    v2 = result;
    v3 = sub_3ED244();

    return v3;
  }

  return result;
}

id static Localization.duration(_:abbreviated:)(char a1, double a2)
{
  if (a2 <= 0.0)
  {
    return 0;
  }

  result = [objc_opt_self() prettyShortStringWithDuration:a1 & 1 abbreviated:a2];
  if (result)
  {
    v3 = result;
    v4 = sub_3ED244();

    return v4;
  }

  return result;
}

void static Localization.fileSize(_:)(uint64_t a1)
{
  v4 = sub_3E6044();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    [v6 doubleValue];
    v11 = 1.0e12;
    if (v10 >= 1.0e12)
    {
      v21 = 0;
    }

    else
    {
      v11 = 1000000000.0;
      if (v10 >= 1000000000.0)
      {
        v21 = 1;
      }

      else
      {
        v11 = 1000000.0;
        if (v10 >= 1000000.0)
        {
          v21 = 2;
        }

        else
        {
          v11 = 1000.0;
          if (v10 < 1000.0)
          {
            v12 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
            if (v12)
            {
              v13 = v12;
              v14 = objc_allocWithZone(NSNumberFormatter);
              v1 = v13;
              v2 = [v14 init];
              [v2 setNumberStyle:1];
              [v2 setFormatterBehavior:1040];
              sub_3E6034();
              isa = sub_3E6014().super.isa;
              (*(v5 + 8))(v9, v4);
              [v2 setLocale:isa];

              [v2 setMinimumFractionDigits:0];
              [v2 setMaximumFractionDigits:3];
              v16 = [v2 stringFromNumber:v1];
              if (v16)
              {
                v17 = v16;
                v18 = sub_3ED244();
                v20 = v19;

                v36._object = 0x800000000042F4A0;
                v36._countAndFlagsBits = 0xD000000000000012;
                v38._countAndFlagsBits = 0;
                v38._object = 0xE000000000000000;
                sub_3E8614(v36, v38);
LABEL_17:
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
                v34 = swift_allocObject();
                *(v34 + 16) = xmmword_3F5630;
                *(v34 + 56) = &type metadata for String;
                *(v34 + 64) = sub_4F39C();
                *(v34 + 32) = v18;
                *(v34 + 40) = v20;
                sub_3ED214();

                return;
              }

              goto LABEL_21;
            }

LABEL_20:
            __break(1u);
LABEL_21:

            __break(1u);
            return;
          }

          v21 = 3;
        }
      }
    }

    v22 = &off_4B2FA8 + 2 * v21;
    v2 = v22[4];
    v1 = v22[5];
    v23 = round(v10 / v11 * 10.0) / 10.0;
    v24 = objc_allocWithZone(NSNumber);

    v25 = [v24 initWithDouble:v23];
    if (v25)
    {
      v26 = v25;
      v27 = objc_allocWithZone(NSNumberFormatter);
      v28 = v26;
      v29 = [v27 init];
      [v29 setNumberStyle:1];
      [v29 setFormatterBehavior:1040];
      sub_3E6034();
      v30 = sub_3E6014().super.isa;
      (*(v5 + 8))(v9, v4);
      [v29 setLocale:v30];

      [v29 setMinimumFractionDigits:0];
      [v29 setMaximumFractionDigits:3];
      v31 = [v29 stringFromNumber:v28];
      if (v31)
      {
        v32 = v31;
        v18 = sub_3ED244();
        v20 = v33;

        v37._countAndFlagsBits = v2;
        v37._object = v1;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        sub_3E8614(v37, v39);

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

id static Localization.timeRemaining(_:)(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  result = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:a1];
  if (result)
  {
    v2 = result;
    v3 = sub_3ED244();

    return v3;
  }

  return result;
}

id static Localization.timeRemaining(_:includeTimeRemainingPhrase:abbreviated:)(char a1, char a2, double a3)
{
  if (a3 <= 0.0)
  {
    return 0;
  }

  result = [objc_opt_self() prettyShortStringWithDuration:a1 & 1 includeTimeRemainingPhrase:a2 & 1 abbreviated:a3];
  if (result)
  {
    v4 = result;
    v5 = sub_3ED244();

    return v5;
  }

  return result;
}

void *LongDescription.__allocating_init(title:subtitle:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *LongDescription.init(title:subtitle:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

void *LongDescription.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_3EBF94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBDF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v37 = a1;
  sub_3EBE04();
  v14 = sub_3EBDC4();
  v16 = v15;
  v36 = *(v8 + 8);
  v36(v13, v7);
  if (v16)
  {
    type metadata accessor for Paragraph();
    v32 = v7;
    v33 = v14;
    v17 = v3;
    v18 = v35;
    v34 = v16;
    v19 = v37;
    sub_3EBE04();
    (*(v4 + 16))(v6, v18, v17);
    sub_3910E4(&qword_4F74B8, type metadata accessor for Paragraph);
    sub_3EC574();
    v20 = v38;
    sub_3EBE04();
    v21 = sub_3EBDC4();
    v23 = v22;
    (*(v4 + 8))(v18, v17);
    v24 = v32;
    v25 = v36;
    v36(v19, v32);
    v25(v10, v24);
    type metadata accessor for LongDescription();
    result = swift_allocObject();
    v27 = v34;
    result[2] = v33;
    result[3] = v27;
    result[4] = v21;
    result[5] = v23;
    result[6] = v20;
  }

  else
  {
    v28 = sub_3ECEE4();
    sub_3910E4(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v29 = 0x656C746974;
    v30 = v34;
    v29[1] = 0xE500000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, enum case for JSONError.missingProperty(_:), v28);
    swift_willThrow();
    (*(v4 + 8))(v35, v3);
    return (v36)(v37, v7);
  }

  return result;
}

uint64_t sub_3910E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LongDescription.deinit()
{

  return v0;
}

uint64_t LongDescription.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_3911C8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = LongDescription.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

NSString sub_391248()
{
  result = sub_3ED204();
  qword_504260 = result;
  return result;
}

NSString sub_3912A4()
{
  result = sub_3ED204();
  qword_504268 = result;
  return result;
}

NSString sub_391300()
{
  result = sub_3ED204();
  qword_504270 = result;
  return result;
}

NSString sub_39135C()
{
  result = sub_3ED204();
  qword_504278 = result;
  return result;
}

NSString sub_3913B8()
{
  result = sub_3ED204();
  qword_504280 = result;
  return result;
}

NSString sub_391414()
{
  result = sub_3ED204();
  qword_504288 = result;
  return result;
}

NSString sub_391470()
{
  result = sub_3ED204();
  qword_504290 = result;
  return result;
}

NSString sub_3914CC()
{
  result = sub_3ED204();
  qword_504298 = result;
  return result;
}

NSString sub_391528()
{
  result = sub_3ED204();
  qword_5042A0 = result;
  return result;
}

NSString sub_391584()
{
  result = sub_3ED204();
  qword_5042A8 = result;
  return result;
}

NSString sub_3915E0()
{
  result = sub_3ED204();
  qword_5042B0 = result;
  return result;
}

NSString sub_39163C()
{
  result = sub_3ED204();
  qword_5042B8 = result;
  return result;
}

NSString sub_391698()
{
  result = sub_3ED204();
  qword_5042C0 = result;
  return result;
}

NSString sub_3916F4()
{
  result = sub_3ED204();
  qword_5042C8 = result;
  return result;
}

NSString sub_391750()
{
  result = sub_3ED204();
  qword_5042D0 = result;
  return result;
}

NSString sub_3917AC()
{
  result = sub_3ED204();
  qword_5042D8 = result;
  return result;
}

NSString sub_391808()
{
  result = sub_3ED204();
  qword_5042E0 = result;
  return result;
}

NSString sub_391864()
{
  result = sub_3ED204();
  qword_5042E8 = result;
  return result;
}

NSString sub_3918C0()
{
  result = sub_3ED204();
  qword_5042F0 = result;
  return result;
}

id sub_39191C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_39197C()
{
  result = sub_3E6184();
  qword_5042F8 = result;
  return result;
}

uint64_t static MenuSelectors.refreshCommand.getter()
{
  if (qword_4E8C20 != -1)
  {
    swift_once();
  }

  return qword_5042F8;
}

void *NetworkObserver.__allocating_init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7DB8);
  sub_3EC394();
  swift_getObjectType();
  v0 = sub_393028(v2);

  return v0;
}

void *NetworkObserver.__allocating_init()()
{
  v0 = [objc_opt_self() sharedInstance];
  type metadata accessor for NetworkObserver();
  v1 = swift_allocObject();

  return sub_39309C(v0, v1);
}

uint64_t sub_391BE4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1000)
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  if (result == 8)
  {
    v3 = 8;
  }

  else
  {
    v3 = v2;
  }

  if (result == 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3;
  }

  if (result == 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = 0;
  }

  if (result == 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  if (result <= 6)
  {
    v4 = v6;
  }

  if (result == 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (result == 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (result == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (result == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (result <= 2)
  {
    v8 = v10;
  }

  if (result <= 4)
  {
    v4 = v8;
  }

  *a2 = v4;
  return result;
}

uint64_t NetworkObserver.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  swift_unknownObjectRelease();
  sub_13A0E0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);
  return v0;
}

uint64_t NetworkObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  swift_unknownObjectRelease();
  sub_13A0E0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_391DC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_391E20(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_391EB4;
}

void sub_391EB4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_391F38(uint64_t a1, uint64_t *a2)
{
  sub_1F958(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 40);
  sub_1D4F0(v5, v3 + 40);
  return swift_endAccess();
}

uint64_t sub_391FE4(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 40);
  sub_1D4F0(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t sub_39208C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_3920FC@<X0>(char *a1@<X8>)
{
  v3 = [*(v1 + 16) networkType];

  return sub_391BE4(v3, a1);
}

uint64_t SCNetworkReachabilityFlags.debugSummary.getter(int a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_DFAE8(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_DFAE8((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x800000000042F890;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_DFAE8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x626168636165722ELL;
    *(v8 + 5) = 0xEA0000000000656CLL;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_DFAE8((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD000000000000013;
    *(v11 + 5) = 0x800000000042F870;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_DFAE8((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0xD000000000000014;
  *(v14 + 5) = 0x800000000042F850;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_31:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_DFAE8((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0xD000000000000015;
  *(v17 + 5) = 0x800000000042F830;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_DFAE8((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0xD000000000000013;
  *(v20 + 5) = 0x800000000042F810;
  if ((a1 & 0x10000) == 0)
  {
LABEL_17:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_DFAE8((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x6C61636F4C73692ELL;
  *(v23 + 5) = 0xEF73736572646441;
  if ((a1 & 0x20000) == 0)
  {
LABEL_18:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_DFAE8((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0x636572694473692ELL;
  *(v26 + 5) = 0xE900000000000074;
  if ((a1 & 0x40000) == 0)
  {
LABEL_19:
    if ((a1 & 8) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_DFAE8((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x4E41575773692ELL;
  *(v29 + 5) = 0xE700000000000000;
  if ((a1 & 8) != 0)
  {
LABEL_56:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_DFAE8(0, *(v2 + 2) + 1, 1, v2);
    }

    v31 = *(v2 + 2);
    v30 = *(v2 + 3);
    if (v31 >= v30 >> 1)
    {
      v2 = sub_DFAE8((v30 > 1), v31 + 1, 1, v2);
    }

    *(v2 + 2) = v31 + 1;
    v32 = &v2[16 * v31];
    *(v32 + 4) = 0xD000000000000014;
    *(v32 + 5) = 0x800000000042F7F0;
  }

LABEL_61:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_9809C();
  v33 = sub_3ED134();
  v35 = v34;

  v37._countAndFlagsBits = v33;
  v37._object = v35;
  sub_3ED3D4(v37);

  v38._countAndFlagsBits = 93;
  v38._object = 0xE100000000000000;
  sub_3ED3D4(v38);
  return 91;
}

uint64_t sub_3928AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkObserver.NetworkObserverSubscription();
  (*(v5 + 16))(v7, a1, a3);

  v10 = sub_393948(v9, v7);

  v13[3] = v8;
  v13[4] = swift_getWitnessTable();
  v13[0] = v10;
  sub_3E9C44();
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t sub_392A08()
{
  v1 = *(*v0 + 80);
  v2 = sub_3EE0F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  v6 = *(v0 + 2);
  swift_beginAccess();
  *(v6 + 32) = 0;
  swift_unknownObjectWeakAssign();
  (*(*(v1 - 8) + 56))(v5, 1, 1, v1);
  v7 = *(*v0 + 112);
  swift_beginAccess();
  (*(v3 + 40))(&v0[v7], v5, v2);
  return swift_endAccess();
}

uint64_t sub_392B74(uint64_t a1)
{
  v18 = *v1;
  v2 = *(v18 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v19 = &v18 - v4;
  v5 = sub_3EE0F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() isLikelyToReachRemoteServerWithReachabilityFlags:{objc_msgSend(*(v1[2] + 16), "networkReachabilityFlags", v18)}];
  v13 = *(*v1 + 112);
  v14 = (v6 + 16);
  v15 = (v3 + 48);
  if (v12)
  {
    swift_beginAccess();
    (*v14)(v8, v1 + v13, v5);
    if ((*v15)(v8, 1, v2))
    {
      return (*(v6 + 8))(v8, v5);
    }

    v17 = v19;
    (*(v3 + 16))(v19, v8, v2);
    (*(v6 + 8))(v8, v5);
    v20 = 1;
    goto LABEL_9;
  }

  swift_beginAccess();
  (*v14)(v11, v1 + v13, v5);
  if (!(*v15)(v11, 1, v2))
  {
    v17 = v19;
    (*(v3 + 16))(v19, v11, v2);
    (*(v6 + 8))(v11, v5);
    v20 = [v1[3] isEnabled] ^ 1;
LABEL_9:
    sub_3E9C54();
    return (*(v3 + 8))(v17, v2);
  }

  return (*(v6 + 8))(v11, v5);
}

id *sub_392EEC()
{

  v1 = *(*v0 + 14);
  v2 = sub_3EE0F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_392F88()
{
  sub_392EEC();

  return swift_deallocClassInstance();
}

void *sub_393028(uint64_t a1)
{
  type metadata accessor for NetworkObserver();
  v2 = swift_allocObject();

  return sub_39309C(a1, v2);
}

void *sub_39309C(uint64_t a1, void *a2)
{
  a2[4] = 0;
  swift_unknownObjectWeakInit();
  v4 = sub_801B4();
  v5 = sub_3EDBC4();
  a2[8] = v4;
  a2[9] = &protocol witness table for OS_dispatch_queue;
  a2[5] = v5;
  a2[2] = a1;
  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:a2 selector:"networkReachabilityDidChange" name:IMNetworkReachabilityFlagsChangedNotification object:a2[2]];

  return a2;
}

unint64_t sub_393154()
{
  result = qword_504300;
  if (!qword_504300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504300);
  }

  return result;
}

unint64_t sub_3931AC()
{
  result = qword_504308;
  if (!qword_504308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504308);
  }

  return result;
}

unint64_t sub_393204()
{
  result = qword_504310;
  if (!qword_504310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504310);
  }

  return result;
}

uint64_t sub_393258@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_3932A8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_393300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1F958(v3 + 40, a2);
}

uint64_t getEnumTagSinglePayload for NetworkObserver.NetworkType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkObserver.NetworkType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_393620()
{
  result = sub_3EE0F4();
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

char *sub_393730(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_3EE0F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  *(v2 + 3) = [objc_allocWithZone(ASKAirplaneModeInquiry) init];
  v10 = *(v5 - 8);
  v11 = *(v10 + 56);
  v11(&v2[*(*v2 + 112)], 1, 1, v5);
  *(v2 + 2) = a1;
  (*(v10 + 32))(v9, a2, v5);
  v11(v9, 0, 1, v5);
  v12 = *(*v2 + 112);
  swift_beginAccess();
  v13 = *(v7 + 40);

  v13(&v2[v12], v9, v6);
  swift_endAccess();
  swift_beginAccess();
  *(a1 + 32) = &off_4C9510;
  swift_unknownObjectWeakAssign();
  return v2;
}

char *sub_393948(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NetworkObserver.NetworkObserverSubscription();
  swift_allocObject();
  return sub_393730(a1, a2);
}

uint64_t sub_39399C()
{

  return _swift_deallocObject(v0, 40, 7);
}

NSAttributedString __swiftcall NSAttributedString.init(nqml:configuration:)(Swift::String nqml, ShelfKit::NqmlConfiguration *configuration)
{
  object = nqml._object;
  countAndFlagsBits = nqml._countAndFlagsBits;
  v4 = *&configuration->listItemStyle.super.isa;
  listItemBullet = configuration->listItemBullet;
  v22 = v4;
  rawValue = configuration->markFontAttributes._rawValue;
  v5 = *&configuration->font.super.isa;
  newline = configuration->newline;
  v20 = v5;
  v6 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
  v7 = sub_39402C(countAndFlagsBits, object, &newline);
  [*&v7[OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_parser] parse];
  v8 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator;
  v9 = [*&v7[OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator] mutableString];
  if (qword_4E8C30 != -1)
  {
    swift_once();
  }

  sub_3964C8(qword_5044A8);

  v10 = *&v7[v8];
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_3E9A64();
  v13 = v10;
  sub_3E9A24();
  v14 = objc_allocWithZone(v12);
  v15 = sub_3E9A74();
  v16 = sub_3E9A14();

  v17 = [v11 initWithAttributedString:v16];
  return v17;
}

id sub_393B90()
{
  v0 = objc_allocWithZone(NSRegularExpression);
  result = sub_39514C(0x745C725C6E5C5B28, 0xEC000000292B5D20, 0);
  qword_5044A0 = result;
  return result;
}

uint64_t sub_393C0C()
{
  v0 = sub_3E5934();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5904();
  isa = sub_3E58F4().super.isa;
  result = (*(v1 + 8))(v3, v0);
  qword_5044A8 = isa;
  return result;
}

NSString sub_393CDC()
{
  result = sub_3ED204();
  qword_5044B0 = result;
  return result;
}

id static NSAttributedStringKey.marked.getter()
{
  if (qword_4E8C38 != -1)
  {
    swift_once();
  }

  v1 = qword_5044B0;

  return v1;
}

uint64_t NqmlConfiguration.markAttributes.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t NqmlConfiguration.markFontAttributes.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

void __swiftcall NqmlConfiguration.init(font:)(ShelfKit::NqmlConfiguration *__return_ptr retstr, UIFont font)
{
  retstr->markAttributes._rawValue = sub_619F4(_swiftEmptyArrayStorage);
  retstr->markFontAttributes._rawValue = sub_61B1C(_swiftEmptyArrayStorage);
  retstr->newline._countAndFlagsBits = 10;
  retstr->newline._object = 0xE100000000000000;
  retstr->font = font;
  v4 = objc_opt_self();
  v5 = font.super.isa;
  retstr->paragraphStyle.super.isa = [v4 defaultParagraphStyle];
  retstr->listItemBullet._countAndFlagsBits = 547520738;
  retstr->listItemBullet._object = 0xA400000000000000;
  [(objc_class *)v5 pointSize];
  v7 = v6;
  v8 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v8 setFirstLineHeadIndent:0.0];
  [v8 setHeadIndent:v7];
  [v8 setDefaultTabInterval:v7];
  sub_61C44(_swiftEmptyArrayStorage);
  v9 = objc_allocWithZone(NSTextTab);
  type metadata accessor for OptionKey(0);
  sub_3961DC(&qword_4E9150, type metadata accessor for OptionKey);
  isa = sub_3ED084().super.isa;

  v11 = [v9 initWithTextAlignment:4 location:isa options:v7];

  [v8 addTabStop:v11];
  retstr->listItemStyle.super.isa = v8;
}

char *sub_39402C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator;
  *&v3[v5] = [objc_allocWithZone(NSMutableAttributedString) init];
  *&v3[OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack] = _swiftEmptyArrayStorage;
  v6 = objc_allocWithZone(ASKNQMLParser);
  v7 = sub_3ED204();

  v8 = [v6 initWithString:v7];

  *&v3[OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_parser] = v8;
  v9 = &v3[OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration];
  v10 = *(a3 + 48);
  *(v9 + 2) = *(a3 + 32);
  *(v9 + 3) = v10;
  *(v9 + 8) = *(a3 + 64);
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 1) = v11;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for NqmlStringGenerator();
  v12 = objc_msgSendSuper2(&v14, "init");
  [*&v12[OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_parser] setDelegate:v12];
  return v12;
}

uint64_t sub_394150(void *a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v3) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_E1260(0, 1, 1, v4);
      *(v1 + v3) = v4;
    }

    v33 = *(v4 + 16);
    v32 = *(v4 + 24);
    if (v33 >= v32 >> 1)
    {
      v4 = sub_E1260((v32 > 1), v33 + 1, 1, v4);
    }

    *(v4 + 16) = v33 + 1;
    *(v4 + 8 * v33 + 32) = a1;
    *(v1 + v3) = v4;
    return swift_endAccess();
  }

  v35 = v3;
  v36 = v1;
  v6 = *(v4 + 8 * v5 + 24);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & a1[8];
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (!v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11;
LABEL_15:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v4 = *(a1[6] + 8 * v16);
    sub_2F4AC(a1[7] + 32 * v16, v37);
    *&v38 = v4;
    sub_1FB90(v37, (&v38 + 8));
    v17 = v4;
    v14 = v12;
LABEL_16:
    v41[0] = v38;
    v41[1] = v39;
    v42 = v40;
    v18 = v38;
    if (!v38)
    {
      break;
    }

    sub_1FB90((v41 + 8), &v38);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    *&v37[0] = v6;
    v19 = sub_5B680(v18);
    v21 = v6[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_40;
    }

    v4 = v20;
    if (v6[3] >= v24)
    {
      if (v3)
      {
        goto LABEL_22;
      }

      v3 = v19;
      sub_5A0E0();
      v19 = v3;
      v6 = *&v37[0];
      if ((v4 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_6:
      v4 = v6[7] + 32 * v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      sub_1FB90(&v38, v4);

      v11 = v14;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_5825C(v24, v3);
      v19 = sub_5B680(v18);
      if ((v4 & 1) != (v25 & 1))
      {
        type metadata accessor for Key(0);
        result = sub_3EE894();
        __break(1u);
        return result;
      }

LABEL_22:
      v6 = *&v37[0];
      if (v4)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6[(v19 >> 6) + 8] |= 1 << v19;
      *(v6[6] + 8 * v19) = v18;
      sub_1FB90(&v38, (v6[7] + 32 * v19));
      v26 = v6[2];
      v23 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v23)
      {
        goto LABEL_41;
      }

      v6[2] = v27;
      v11 = v14;
      if (!v9)
      {
LABEL_8:
        if (v10 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v10;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            v9 = 0;
            v40 = 0;
            v38 = 0u;
            v39 = 0u;
            goto LABEL_16;
          }

          v9 = a1[v12 + 8];
          ++v11;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }
  }

  v3 = v35;
  v4 = v36;
  swift_beginAccess();
  a1 = *(v36 + v35);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + v35) = a1;
  if (v28)
  {
    goto LABEL_30;
  }

LABEL_42:
  a1 = sub_E1260(0, a1[2] + 1, 1, a1);
  *(v4 + v3) = a1;
LABEL_30:
  v30 = a1[2];
  v29 = a1[3];
  if (v30 >= v29 >> 1)
  {
    a1 = sub_E1260((v29 > 1), v30 + 1, 1, a1);
  }

  a1[2] = v30 + 1;
  a1[v30 + 4] = v6;
  *(v4 + v3) = a1;
  return swift_endAccess();
}

void sub_394524()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator);
  v2 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    v3 = objc_allocWithZone(NSAttributedString);
    v4 = v1;

    v5 = sub_3ED204();
    type metadata accessor for Key(0);
    sub_3961DC(&qword_4E9140, type metadata accessor for Key);
    isa = sub_3ED084().super.isa;

    v7 = [v3 initWithString:v5 attributes:isa];

    [v4 appendAttributedString:v7];
  }

  else
  {
    __break(1u);
  }
}

id sub_394678()
{
  v1 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 8 * v3 + 24);
    if (*(v4 + 16))
    {

      v5 = sub_5B680(NSFontAttributeName);
      if (v6)
      {
        sub_2F4AC(*(v4 + 56) + 32 * v5, v10);

        sub_36174(0, &qword_4EE3C0);
        if (swift_dynamicCast())
        {
          return v9;
        }
      }

      else
      {
      }
    }
  }

  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration + 16);

  return v8;
}

id sub_39479C(int a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_394678();
  v7 = [v6 fontDescriptor];
  v8 = [v7 fontDescriptorWithSymbolicTraits:{objc_msgSend(v7, "symbolicTraits") | a1}];
  if (v8 && (v9 = v8, type metadata accessor for AttributeName(0), sub_3961DC(&qword_4E90F0, type metadata accessor for AttributeName), isa = sub_3ED084().super.isa, v11 = [v9 fontDescriptorByAddingAttributes:isa], v9, isa, v11))
  {
    [v6 pointSize];
    v13 = [objc_opt_self() fontWithDescriptor:v11 size:v12];

    return v13;
  }

  else
  {
    sub_3E9944();
    v15 = v6;
    v16 = sub_3E99F4();
    v17 = sub_3ED9B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v2;
      v21 = v20;
      v28 = v20;
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2080;
      v27 = a1;
      type metadata accessor for SymbolicTraits(0);
      v25 = v15;
      v22 = sub_3ED2B4();
      v24 = sub_2EDD0(v22, v23, &v28);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_0, v16, v17, "Font %@ does not support traits %s", v18, 0x16u);
      sub_FCF8(v19, &unk_502160);

      __swift_destroy_boxed_opaque_existential_1Tm(v21);

      (*(v3 + 8))(v5, v26);
      return v25;
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      return v15;
    }
  }
}

id sub_39505C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NqmlStringGenerator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_39514C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3ED204();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_3E5B84();

    swift_willThrow();
  }

  return v6;
}

id sub_395238(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v3 = sub_5B680(@"font-name");
    if (v4)
    {
      v5 = (*(a1 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      v27 = &type metadata for String;
      *&v26 = v6;
      *(&v26 + 1) = v7;
      sub_1FB90(&v26, v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_3AE48(v25, UIFontDescriptorNameAttribute, isUniquelyReferenced_nonNull_native);
      v9 = [objc_allocWithZone(UIFontDescriptor) init];
      if (!*(a1 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 0;
      if (!*(a1 + 16))
      {
        goto LABEL_12;
      }
    }

    v11 = sub_5B680(@"font-size");
    if (v12)
    {
      v13 = (*(a1 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      *&v26 = 0;

      LOBYTE(v14) = sub_DB960(v14, v15);

      if (v14)
      {
        v16 = v26;
        v17 = UIFontDescriptorSizeAttribute;
        goto LABEL_13;
      }
    }

LABEL_12:
    v17 = UIFontDescriptorSizeAttribute;
    [a2 pointSize];
LABEL_13:
    v27 = &type metadata for CGFloat;
    *&v26 = v16;
    sub_1FB90(&v26, v25);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_3AE48(v25, v17, v18);
    if (_swiftEmptyDictionarySingleton[2])
    {
      if (v9)
      {
        v19 = v9;
      }

      else
      {
        v19 = [a2 fontDescriptor];
      }

      type metadata accessor for AttributeName(0);
      sub_3961DC(&qword_4E90F0, type metadata accessor for AttributeName);
      v20 = v9;
      isa = sub_3ED084().super.isa;

      v22 = [v19 fontDescriptorByAddingAttributes:isa];

      v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
      return v23;
    }

    else
    {

      return a2;
    }
  }

  return a2;
}

uint64_t sub_395558()
{
  v1 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_2A5210(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v2[2] = v4 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_395600()
{
  v0 = sub_3E9A04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9944();
  swift_errorRetain();
  v4 = sub_3E99F4();
  v5 = sub_3ED9D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "init(nqml:) could not fully parse string, reason: %@", v6, 0xCu);
    sub_FCF8(v7, &unk_502160);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_3957A8(uint64_t a1, uint64_t a2)
{
  [*(v2 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator) beginEditing];
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          return;
        }

        v5 = sub_394678();
        v6 = sub_395238(a2, v5);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
        inited = swift_initStackObject();
        v8 = inited;
        *(inited + 16) = xmmword_3F5310;
        v9 = &NSUnderlineStyleAttributeName;
        goto LABEL_14;
      }

      sub_61B1C(_swiftEmptyArrayStorage);
      v35 = sub_39479C(1);

      v24 = sub_395238(a2, v35);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
      v25 = swift_initStackObject();
      v26 = v25;
      v27 = xmmword_3F5630;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504598);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_3F5630;
      *(v18 + 32) = UIFontDescriptorTraitsAttribute;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5045A0);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_3F5630;
      *(v19 + 32) = UIFontWeightTrait;
      *(v19 + 40) = UIFontWeightSemibold;
      v20 = UIFontDescriptorTraitsAttribute;
      v21 = UIFontWeightTrait;
      v22 = sub_63174(v19);
      swift_setDeallocating();
      sub_FCF8(v19 + 32, &qword_5045A8);
      *(v18 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5045B0);
      *(v18 + 40) = v22;
      sub_61B1C(v18);
      swift_setDeallocating();
      sub_FCF8(v18 + 32, &qword_4EC470);
      v23 = sub_39479C(0);

      v24 = sub_395238(a2, v23);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
      v25 = swift_initStackObject();
      v26 = v25;
      v27 = xmmword_3F5630;
    }

    *(v25 + 16) = v27;
    *(v25 + 32) = NSFontAttributeName;
    v36 = v25 + 32;
    *(v26 + 64) = sub_36174(0, &qword_4EE3C0);
    *(v26 + 40) = v24;
    v37 = NSFontAttributeName;
    v38 = v24;
    v39 = sub_619F4(v26);
    swift_setDeallocating();
    sub_FCF8(v36, &qword_4EC478);
LABEL_19:
    sub_394150(v39);

    return;
  }

  switch(a1)
  {
    case 3:
      v28 = sub_394678();
      v6 = sub_395238(a2, v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
      inited = swift_initStackObject();
      v8 = inited;
      *(inited + 16) = xmmword_3F5310;
      v9 = &NSStrikethroughStyleAttributeName;
LABEL_14:
      v29 = *v9;
      *(inited + 32) = *v9;
      v30 = objc_allocWithZone(NSNumber);
      v31 = v29;
      v32 = [v30 initWithInteger:1];
      v33 = sub_36174(0, &qword_4F1C20);
      *(v8 + 40) = v32;
      *(v8 + 64) = v33;
      *(v8 + 72) = NSFontAttributeName;
      *(v8 + 104) = sub_36174(0, &qword_4EE3C0);
      *(v8 + 80) = v6;
      v34 = NSFontAttributeName;
LABEL_18:
      v38 = v6;
      v39 = sub_619F4(v8);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC478);
      swift_arrayDestroy();
      goto LABEL_19;
    case 4:
      v40 = sub_394678();
      v6 = sub_395238(a2, v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_3F5310;
      *(v8 + 32) = NSParagraphStyleAttributeName;
      v41 = *(v2 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration + 24);
      v42 = sub_36174(0, &unk_504570);
      *(v8 + 40) = v41;
      *(v8 + 64) = v42;
      *(v8 + 72) = NSFontAttributeName;
      *(v8 + 104) = sub_36174(0, &qword_4EE3C0);
      *(v8 + 80) = v6;
      v43 = NSParagraphStyleAttributeName;
      v44 = v41;
      v45 = NSFontAttributeName;
      goto LABEL_18;
    case 5:
      v10 = v2 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration;
      v11 = sub_39479C(0);
      v12 = sub_395238(a2, v11);

      v13 = *(v10 + 56);
      v48 = sub_36174(0, &qword_4EE3C0);
      *&v47 = v12;
      sub_1FB90(&v47, v46);

      v14 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_3AD08(v46, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
      if (qword_4E8C38 != -1)
      {
        swift_once();
      }

      v16 = qword_5044B0;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_504588);
      *&v47 = a2;
      sub_1FB90(&v47, v46);

      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_3AD08(v46, v16, v17);
      sub_394150(v13);

      break;
  }
}