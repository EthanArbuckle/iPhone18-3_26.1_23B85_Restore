uint64_t sub_1884E3A78()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1884E3AC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1883F7E38(v5);
  *v6 = v7;
  sub_1883F7A30(v6);

  return sub_1884E10FC();
}

uint64_t sub_1884E3B70(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1884E3BC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1883F7E38(v6);
  *v7 = v8;
  v9 = sub_1883F7A30(v7);

  return sub_1884E2034(v9, v10, v2, v3, v4, v5);
}

uint64_t sub_1884E3C80(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v21 = Hasher._finalize()();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x1EEE9AC00](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                Hasher.init(_seed:)();

                String.hash(into:)();
                v36 = Hasher._finalize()();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_1884E43CC(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = sub_1884E4344(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x18CFD7E80](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1883F70C4();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1884E4158(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1884E43CC(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1884E4344(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1884E4158(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1884E43CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_18844E6FC(&qword_1EA90E6C0, &unk_1886FBD20);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1884E45E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_18844E6FC(&qword_1EA90E540, &qword_1886FB530);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](v18);
    v20 = v17;
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 48) + 16 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1884E482C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1884E486C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1884E48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
    Set.Iterator.init(_cocoa:)();
    result = v33;
    v5 = v34;
    v7 = v35;
    v6 = v36;
    v8 = v37;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  v12 = (v7 + 64) >> 6;
  v13 = MEMORY[0x1E69E7CC0];
  v31 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v6;
  v15 = v8;
  v16 = v6;
  if (v8)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(result + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_34:
      sub_1883F70C4();

      return v13;
    }

    while (1)
    {
      if (*(a4 + 16))
      {
        sub_188486310();
        if (v20)
        {
          v21 = (*(a4 + 56) + 16 * v19);
          v22 = *v21;
          v23 = v21[1];

          goto LABEL_22;
        }

        v22 = 0xD000000000000012;
      }

      else
      {
        v22 = 0xD000000000000012;
      }

      v23 = 0x8000000188702670;
LABEL_22:
      if (v22 == 0xD000000000000012 && 0x8000000188702670 == v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v13 + 16);
        sub_1884774A8();
        v13 = v29;
      }

      v26 = *(v13 + 16);
      if (v26 >= *(v13 + 24) >> 1)
      {
        sub_1884774A8();
        v13 = v30;
      }

      *(v13 + 16) = v26 + 1;
      v27 = v13 + 24 * v26;
      *(v27 + 32) = v18;
      *(v27 + 40) = v25 & 1;
      *(v27 + 48) = 0;
      v6 = v16;
      v8 = v17;
      result = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_dynamicCast();
        v18 = v38;
        v16 = v6;
        v17 = v8;
        if (v38)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_34;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1884E4C40(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_188470D2C(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1884F2D94(v6, a2, a3);
  return sub_1884E4CB4;
}

void sub_1884E4CB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1884E4D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
    Set.Iterator.init(_cocoa:)();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      do
      {
        v23 = v16;
        sub_1884F2304(&v23, a2);

        if (v3)
        {
          break;
        }

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_dynamicCast();
        v16 = v23;
        v14 = v7;
        v15 = v8;
      }

      while (v23);
    }

LABEL_19:
    sub_1883F70C4();
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1884E4F1C(uint64_t a1, void *a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v14 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v14;
      sub_1884F2660(&v14, a2);
      v13 = v14;
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;

      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1884E50C0()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[10];
  v9 = v1[9];

  v10 = *(v3 + 8);
  sub_188404D5C();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1884E523C()
{
  sub_1883F7120();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v3);
  v5 = *(v4 + 64);
  v1[9] = sub_188403038();
  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884E52C0()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = v0[8];
  v2 = sub_188403050();
  v3 = *(v1 + 128);
  if (v2)
  {
    v4 = v0[9];
    v5 = v0[7];
    sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1886F79A0;
    v7 = [v5 recordID];
    v8 = [v7 zoneID];

    *(inited + 32) = v8;
    sub_18850BFF4(1, inited);
    swift_setDeallocating();
    sub_1884E3A30();
    type metadata accessor for Date();
    sub_18844334C();
    sub_1883F90F4(v9, v10, v11, v12);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_1884E5454;
    v14 = v0[8];
    sub_1883FF484(v0[9]);
    sub_188404D5C();

    return sub_18840EDE4();
  }

  else
  {
    [*(v3 + 16) setNeedsToFetchDatabaseChanges_];
    v17 = v0[9];

    sub_1883F816C();
    sub_188404D5C();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_1884E5454()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  sub_1883F9FEC(v6, &unk_1EA90D7B0, &dword_1886F8780);
  v9 = *(v2 + 72);

  sub_1883F816C();

  return v10();
}

uint64_t sub_1884E5560()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 112);
  v5 = *(v3 + 48);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;
  *(v9 + 120) = v8;

  v10 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884E5658()
{
  sub_1883F78E0();
  v1 = v0[6];
  sub_18841FC48();
  sub_1884E6148();
  v0[16] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_priority);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1884E5728;
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[6];
  sub_1883FE860();

  return sub_1884F0054();
}

uint64_t sub_1884E5728()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v2 = v1[17];
  v3 = v1[16];
  v4 = v1[15];
  v5 = v1[6];
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;

  return MEMORY[0x1EEE6DFA0](sub_1884E5868, v5, 0);
}

uint64_t sub_1884E5868()
{
  sub_1883F78E0();
  sub_1883F9FEC(v0[13], &unk_1EA90D7B0, &dword_1886F8780);
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  sub_1883F816C();

  return v6();
}

uint64_t sub_1884E5908()
{
  sub_1883F7120();
  *(v1 + 16) = v0;
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = sub_188403038();
  v5 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884E598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_1883F8680();
  a19 = v23;
  a20 = v24;
  sub_1883FC738();
  a18 = v20;
  v25 = v20[2];
  v26 = sub_18840DDD0();
  v29 = v28;
  if (v26)
  {
    v30 = v20[2];
    v31 = v20[3];

    sub_18841F1C8();
    v20[4] = v32;
    type metadata accessor for Date();
    sub_18844334C();
    sub_1883F90F4(v33, v34, v35, v36);
    v37 = *(v30 + OBJC_IVAR____TtC8CloudKit10SyncEngine_priority);
    v38 = swift_task_alloc();
    v20[5] = v38;
    *v38 = v20;
    v38[1] = sub_1884E5BC0;
    v40 = v20[2];
    v39 = v20[3];
    sub_1883FE860();
    sub_1883F7E58();

    return sub_1884F0054();
  }

  else
  {
    v43 = v27;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v44 = v20[2];
    v45 = type metadata accessor for Logger();
    sub_1883F85F4(v45, qword_1EA90C9F8);

    v46 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_188403020();

    if (sub_1884F4988())
    {
      v47 = v20[2];
      sub_18840FB34();
      a10 = sub_18840C660();
      *v44 = 136315394;
      v48 = sub_1883FE43C();
      sub_1883FC788(v48, v49, v50);
      sub_1884F44C0();
      *(v44 + 4) = v22;
      *(v44 + 12) = 2080;
      sub_1883FE340(v43, v29, &a10);
      sub_1883FEFE0();

      *(v44 + 14) = v47;
      sub_1884F464C(&dword_1883EA000, v46, v21, "%s not scheduling user-requested-backup activity because we're not ready (%s)");
      sub_1884439F0();
      sub_1884037D8();
      sub_1883FC7E4();
    }

    else
    {
    }

    v51 = v20[3];

    sub_1883F816C();
    sub_1883F7E58();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_1884E5BC0()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v0;
  sub_1883F7110();
  *v9 = v8;

  sub_1883F9FEC(v7, &unk_1EA90D7B0, &dword_1886F8780);
  v10 = *(v2 + 24);

  sub_1883F816C();

  return v11();
}

uint64_t sub_1884E5CF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1883F7F40();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884E5D1C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = v3[7];
  v5 = v3[6];
  v6 = v3[4];
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;
  *(v10 + 64) = v9;

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884E5E34()
{
  sub_1883F7120();
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);
  sub_1883F7910();

  return v3();
}

void sub_1884E5EAC()
{
  sub_1883F8AF0();
  v3 = v0;
  v4 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v5 = sub_1883F8AE4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v8 = type metadata accessor for Logger();
  sub_1883FDE5C(v8, qword_1EA90C9F8);
  sub_1883FE860();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (sub_1884F4970())
  {
    v11 = sub_1883F9984();
    v1 = sub_1883FE540();
    v29 = v1;
    *v11 = 136315138;
    v12 = sub_1883FE43C();
    sub_1883FE340(v12, v13, &v29);
    sub_1884F44C0();
    *(v11 + 4) = v2;
    sub_1883FE8BC(&dword_1883EA000, v14, v15, "%s will schedule sync");
    sub_1883FE944(v1);
    sub_1884037D8();
    sub_1883FC7E4();
  }

  v16 = OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask;
  if (!*(v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask))
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      sub_1883F9984();
      v29 = sub_1884061C4();
      *v10 = 136315138;
      v19 = sub_1883FE43C();
      sub_1883FE340(v19, v20, &v29);
      sub_1883F9B0C();
      *(v10 + 4) = v1;
      _os_log_impl(&dword_1883EA000, v17, v18, "%s self.scheduleSyncTask is nil. Creating a new Task", v10, 0xCu);
      sub_188404FD4();
      sub_1883FD784();
    }

    type metadata accessor for TaskPriority();
    sub_18844334C();
    sub_1883F90F4(v21, v22, v23, v24);
    v25 = sub_1883FE8FC(&qword_1EA90C840, type metadata accessor for SyncEngine);
    sub_1883F7E80();
    v26 = swift_allocObject();
    v26[2] = v3;
    v26[3] = v25;
    v26[4] = v3;
    swift_retain_n();
    sub_1883FF490();
    sub_188453610();
    v27 = *(v3 + v16);
    *(v3 + v16) = v28;
  }

  sub_1883F8178();
}

uint64_t sub_1884E6148()
{
  sub_1883F877C();
  sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1886F8960;
  *(v2 + 32) = sub_18841EE98();
  *(v2 + 40) = v3;
  *(v2 + 48) = v1;
  *(v2 + 56) = v0;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883F94A4();
  sub_1884F47FC();
  BidirectionalCollection<>.joined(separator:)();

  return sub_1883F7EE0();
}

uint64_t sub_1884E61F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884E6214, 0, 0);
}

uint64_t sub_1884E6214()
{
  sub_1883F7120();
  v1 = v0[6];
  sub_1883FF050();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = v0[5];
    v4 = swift_task_alloc();
    v5 = sub_188403070(v4);
    *v5 = v6;
    v5[1] = sub_1884E62F4;
    sub_1883FE860();

    return sub_1884E63DC();
  }

  else
  {
    sub_1883F7910();

    return v8(1);
  }
}

uint64_t sub_1884E62F4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884E63DC()
{
  sub_1883F7120();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = type metadata accessor for ContinuousClock();
  v1[5] = v3;
  sub_1883F8620(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = sub_188403038();
  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

id sub_1884E64A8()
{
  sub_1883F78E0();
  v1 = v0[4];
  v2 = sub_1883F57B8();
  v0[8] = v2;
  sub_1883FEB90();
  sub_1883F60E8(0xD00000000000001BLL, v3, v2);
  result = [v2 defaultConfiguration];
  if (result)
  {
    v5 = result;
    v6 = v0[3];
    [result setSchedulerActivity_];

    sub_1883FB6F8(v2);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1884E65A8;
    v8 = v0[3];
    v9 = sub_1883FE860();

    return sub_1884E7590(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884E65A8()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 24);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;
  *(v9 + 80) = v8;

  v10 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884E66A0()
{
  sub_1883FB4AC();
  v1 = *(*(v0 + 80) + 16);
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = *(v0 + 56);
    static Clock<>.continuous.getter();
    sub_1883F7B10(&dword_1886FB5C0);
    v15 = v3;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_1884E687C;
    v5 = *(v0 + 56);
    sub_1883FF484(100000000000000000);
    sub_1883F7FD8();

    return v15();
  }

  else
  {
    *(v0 + 128) = 1;
    v7 = *(v0 + 16);

    if (v7 && *(*(v0 + 24) + 168))
    {
      v8 = *(v0 + 16);
      sub_1883F7B88();
      v9 = swift_allocObject();
      *(v0 + 136) = v9;
      *(v9 + 16) = v8;
      v16 = sub_188442F84(&unk_1886FB1F0);
      v10 = v8;
      v11 = swift_task_alloc();
      *(v0 + 144) = v11;
      *v11 = v0;
      sub_188443368(v11);

      return (v16)(&unk_1886FB680, v9);
    }

    else
    {

      v12 = *(v0 + 56);

      sub_1883F7910();
      v14 = *(v0 + 128);

      return v13(v14);
    }
  }
}

uint64_t sub_1884E687C()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  v9 = v2[3];
  if (v0)
  {

    v10 = *(v7 + 8);
  }

  else
  {
    v13 = *(v7 + 8);
  }

  v11 = sub_1883FB5D4();
  v12(v11);
  sub_1884022BC();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

void sub_1884E6A08()
{
  v1 = v0[10];
  v0[13] = 0;
  if (*(v1 + 16))
  {
    sub_1883F78E0();
    v3 = *(v2 + 32);
    v0[14] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v6 = sub_18840526C(v5);
    *v6 = v7;
    sub_18840C168(v6);

    sub_1884115F4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1884E6A9C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 120);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1884E6B94()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (v1 + 1 == v2)
  {
    v3 = 0;
    v4 = 1;
    while (v3 != *(v0 + 88))
    {
      v5 = *(v0 + 80);
      if (v3 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v6 = v3 + 1;
      v7 = *(v5 + 8 * v3 + 32);
      v8 = _convertErrorToNSError(_:)();
      ShouldDefer = CKErrorShouldDefer(v8);

      v3 = v6;
      if (ShouldDefer)
      {
        v4 = 2;
        break;
      }
    }

    *(v0 + 128) = v4;
    v10 = *(v0 + 80);
    v11 = *(v0 + 16);

    if (v11 && *(*(v0 + 24) + 168))
    {
      v12 = *(v0 + 16);
      sub_1883F7B88();
      v13 = swift_allocObject();
      *(v0 + 136) = v13;
      *(v13 + 16) = v12;
      sub_188442F84(&unk_1886FB1F0);
      v14 = v12;
      v15 = swift_task_alloc();
      *(v0 + 144) = v15;
      *v15 = v0;
      sub_188443368(v15);
      sub_188404D5C();
    }

    else
    {

      v32 = *(v0 + 56);

      sub_1883F7910();
      v33 = *(v0 + 128);
      sub_188404D5C();
    }

    v18(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v24 = *(v0 + 104) + 1;
    *(v0 + 104) = v24;
    v25 = *(v0 + 80);
    if (v24 >= *(v25 + 16))
    {
LABEL_20:
      __break(1u);
    }

    else
    {
      v26 = *(v25 + 8 * v24 + 32);
      *(v0 + 112) = v26;
      v27 = v26;
      v28 = swift_task_alloc();
      v29 = sub_18840526C(v28);
      *v29 = v30;
      sub_18840C168();
      sub_188404D5C();

      sub_1884115F4();
    }
  }
}

uint64_t sub_1884E6DB4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[3];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884E6ECC()
{
  sub_1883F7120();
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  sub_1883F7910();
  v4 = *(v0 + 128);

  return v3(v4);
}

uint64_t sub_1884E6F38(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884E6F58, 0, 0);
}

uint64_t sub_1884E6F58()
{
  sub_1883F7120();
  v1 = v0[6];
  sub_1883FF050();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v4 = sub_188403070(v3);
    *v4 = v5;
    v4[1] = sub_1884E7038;
    v6 = sub_1883FF484(v0[5]);

    return sub_1884E717C(v6);
  }

  else
  {
    sub_1883F7910();

    return v8(1);
  }
}

uint64_t sub_1884E7038()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884E7120()
{
  sub_1883F7120();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  sub_1883F7910();

  return v3();
}

uint64_t sub_1884E717C(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1884E7234, 0, 0);
}

uint64_t sub_1884E7234()
{
  sub_1883F78E0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[3].opaque[1];
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  v2 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v3 = _os_activity_create(&dword_1883EA000, "engine/user-requested-backup", v2, OS_ACTIVITY_FLAG_DEFAULT);
  v0[4].opaque[0] = v3;
  os_activity_scope_enter(v3, v0 + 1);
  v4 = swift_task_alloc();
  v0[4].opaque[1] = v4;
  *v4 = v0;
  v4[1] = sub_1884E7348;
  v6 = v0[2].opaque[1];
  v5 = v0[3].opaque[0];
  v7 = *MEMORY[0x1E69E9840];

  return sub_1884EF1CC(&v0[2], v5, v6);
}

uint64_t sub_1884E7348()
{
  sub_1883F7120();
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 72);
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;

  if (v0)
  {
  }

  v5 = *MEMORY[0x1E69E9840];
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884E747C()
{
  sub_1883F7120();
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[4].opaque[0];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v2 = v0[2].opaque[0];
  sub_1883F7910();
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_1884E7510()
{
  sub_1883F7120();
  v4 = *MEMORY[0x1E69E9840];
  v1 = v0[4].opaque[0];
  os_activity_scope_leave(v0 + 1);
  v2 = *MEMORY[0x1E69E9840];

  return swift_unknownObjectRelease();
}

uint64_t sub_1884E7590(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1884E7620, 0, 0);
}

uint64_t sub_1884E7620()
{
  sub_1883F7120();
  v10 = *MEMORY[0x1E69E9840];
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  v1 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v2 = _os_activity_create(&dword_1883EA000, "engine/sync", v1, OS_ACTIVITY_FLAG_DEFAULT);
  v0[3].opaque[1] = v2;
  os_activity_scope_enter(v2, v0 + 1);
  v3 = swift_task_alloc();
  v4 = sub_188403070(v3);
  *v4 = v5;
  v4[1] = sub_1884E7720;
  v7 = v0[2].opaque[1];
  v6 = v0[3].opaque[0];
  v8 = *MEMORY[0x1E69E9840];

  return sub_1884E7A74(&v0[2], v6, v7);
}

uint64_t sub_1884E7720()
{
  sub_1883F7120();
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 64);
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;

  if (v0)
  {
  }

  v5 = *MEMORY[0x1E69E9840];
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884E7854()
{
  sub_1883F7120();
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[3].opaque[1];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v2 = v0[2].opaque[0];
  sub_1883F7910();
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_1884E78E8()
{
  sub_1883F7120();
  v4 = *MEMORY[0x1E69E9840];
  v1 = v0[3].opaque[1];
  os_activity_scope_leave(v0 + 1);
  v2 = *MEMORY[0x1E69E9840];

  return swift_unknownObjectRelease();
}

uint64_t sub_1884E7968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884E798C, 0, 0);
}

uint64_t sub_1884E798C()
{
  sub_1883F78E0();
  sub_18841D168(*(v0 + 64), v0 + 16, &qword_1EA90E740, &qword_1886FB170);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    sub_188400B68((v0 + 16), *(v0 + 40));
    v4 = *(v3 + 8);
    sub_1883F7FE4();
    v5();
    sub_1883FE944((v0 + 16));
  }

  else
  {
    sub_1883F9FEC(v0 + 16, &qword_1EA90E740, &qword_1886FB170);
  }

  **(v0 + 56) = v1 == 0;
  sub_1883F816C();

  return v6();
}

uint64_t sub_1884E7A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884E7A98, 0, 0);
}

uint64_t sub_1884E7A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_188404C04();
  a17 = v20;
  a18 = v21;
  sub_1883F653C();
  a16 = v18;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v22 = v18[27];
  v23 = type metadata accessor for Logger();
  v18[29] = sub_1883FDE5C(v23, qword_1EA90C9F8);
  swift_retain_n();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    swift_slowAlloc();
    sub_1883F8C00();
    sub_1883FD914();
    *v19 = 136315394;
    v26 = sub_1883FE43C();
    v28 = sub_1883FE340(v26, v27, &a9);

    *(v19 + 4) = v28;
    *(v19 + 12) = 1024;
    sub_1884C7AD8(v18 + 14);
    v29 = v18[27];
    if (v18[15])
    {
      sub_1883F9FEC((v18 + 14), &unk_1EA90E4D0, &unk_1886FB460);
      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v32 = v18[27];
    *(v19 + 14) = v30;

    sub_1883F831C();
    _os_log_impl(v33, v34, v35, v36, v37, 0x12u);
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  else
  {
    v31 = v18[27];
  }

  v38 = *(v18[27] + 128);
  v18[30] = v38;
  [*(v38 + 16) setScheduledSyncInProgress_];
  sub_1884C7AD8(v18 + 2);
  if (v18[3] && (sub_1883F9FEC((v18 + 2), &unk_1EA90E4D0, &unk_1886FB460), ![*(v38 + 16) hasPendingUntrackedChanges]))
  {
    v44 = swift_task_alloc();
    v18[33] = v44;
    *v44 = v18;
    v44[1] = sub_1884E7F50;
    v45 = v18[27];
    sub_1883FF484(v18[28]);
    sub_1883F6548();

    return sub_1884E9AA4(v46);
  }

  else
  {
    v39 = swift_task_alloc();
    v18[31] = v39;
    *v39 = v18;
    v39[1] = sub_1884E7D34;
    v40 = v18[27];
    sub_1883FF484(v18[28]);
    sub_1883F6548();

    return sub_1884E812C(v41);
  }
}

uint64_t sub_1884E7D34()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 256) = v5;

  v6 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884E7F50()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 272) = v5;

  v6 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884E812C(uint64_t a1)
{
  *(v2 + 2264) = v1;
  *(v2 + 2216) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884E8150, v1, 0);
}

uint64_t sub_1884E8150(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 __src, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31)
{
  sub_188417250();
  a30 = v32;
  a31 = v33;
  a29 = v31;
  [v31[277] copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1883F4C5C(0, &qword_1EA90C778, off_1E70BA4E0);
  swift_dynamicCast();
  v34 = v31[271];
  v35 = sub_1883FF67C();
  sub_1883F4C5C(v35, v36, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v37 = MEMORY[0x1E69E7CC0];
  sub_1883F712C();
  v38 = Dictionary.init(dictionaryLiteral:)();

  v31[197] = 0;
  *(v31 + 1584) = 2;
  sub_1883FA5AC((v31 + 1585));
  *(v31 + 397) = v39;
  v31[199] = v34;
  v31[200] = v37;
  v31[201] = v38;
  *(v31 + 1616) = 1;
  *(v31 + 1617) = *(v31 + 2359);
  *(v31 + 405) = *(v31 + 2362);
  v31[203] = 0;
  *(v31 + 1632) = 0;
  *(v31 + 1633) = *(v31 + 588);
  *(v31 + 409) = *(v31 + 2355);
  v31[205] = 3;
  v40 = v34;
  sub_1883F697C((v31 + 197), (v31 + 211));
  sub_1883F69F4(v40);
  if (v41 && (sub_18840B034(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    v42 = v31[197];
    v43 = *(v31 + 1584);
    type metadata accessor for SyncEngine();
    *&__src = v42;
    BYTE8(__src) = v43;
    v37 = MEMORY[0x1E69E7CC0];

    v44 = sub_1883F6734(&__src);
    v46 = v45;

    sub_1883F60E8(v44, v46, v40);
  }

  v47 = v31[277];
  sub_1883F7768((v31 + 197));
  v31[225] = 0;
  *(v31 + 1808) = 2;
  sub_1883FA5AC((v31 + 1809));
  *(v31 + 453) = v48;
  v31[227] = v40;
  v31[228] = v37;
  v31[229] = v38;
  *(v31 + 1840) = 1;
  *(v31 + 1841) = *(v31 + 2359);
  *(v31 + 461) = *(v31 + 2362);
  v31[231] = 0;
  *(v31 + 1856) = 0;
  v49 = *(v31 + 588);
  *(v31 + 465) = *(v31 + 2355);
  *(v31 + 1857) = v49;
  v31[233] = 3;
  memcpy(&__src + 7, v31 + 225, 0x48uLL);
  *(v31 + 1416) = 0;
  memcpy(v31 + 1417, &__src, 0x4FuLL);
  sub_1883F697C((v31 + 225), (v31 + 239));
  [v47 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v50 = v31[265];
  v31[284] = v50;
  v51 = v50;
  sub_1883F69F4(v51);
  sub_1883F90D4();
  sub_18840B034();
  if (v52 && (sub_1884F483C(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    type metadata accessor for SyncEngine();
    *&__src = 0;
    BYTE8(__src) = 3;
    v53 = sub_188413094(&__src);
    v55 = v54;

    sub_1883F60E8(v53, v55, v51);
  }

  v56 = v31[283];
  v57 = v51;
  if (sub_1884C7D30())
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v58 = v31[283];
    v59 = type metadata accessor for Logger();
    sub_1883F85F4(v59, qword_1EA90C9F8);

    v60 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FB3A4();
    if (sub_1884F45BC())
    {
      sub_1883FE248();
      *&__src = sub_1884061C4();
      *v58 = 136315138;
      v61 = sub_1883FE43C();
      sub_1883FE340(v61, v62, &__src);
      sub_1883F9B0C();
      *(v58 + 4) = v40;
      sub_1883FDDA4();
      _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
      sub_188404FD4();
      sub_1883FD784();
    }

    v68 = v31[283];
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    memcpy((v69 + 24), v31 + 177, 0x50uLL);
    v70 = swift_allocObject();
    v31[285] = v70;
    *(v70 + 16) = &unk_1886FB750;
    *(v70 + 24) = v69;

    sub_1883FAB38((v31 + 177), (v31 + 187));
    swift_asyncLet_begin();
    v71 = swift_allocObject();
    *(v71 + 16) = v68;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0;
    *(v71 + 40) = 3;
    *(v71 + 48) = v57;
    v72 = swift_allocObject();
    v31[286] = v72;
    *(v72 + 16) = &unk_1886FB770;
    *(v72 + 24) = v71;

    v73 = v57;
    swift_asyncLet_begin();
    sub_18840562C();

    return MEMORY[0x1EEE6DEC0](v74, v75, v76, v77);
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v78 = v31[283];
    v79 = type metadata accessor for Logger();
    v31[289] = sub_1883F85F4(v79, qword_1EA90C9F8);

    v80 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883FE248();
      *&__src = sub_1883F8C00();
      *v78 = 136315138;
      v81 = sub_1883FE43C();
      sub_1883FE340(v81, v82, &__src);
      sub_1883FE2FC();
      *(v78 + 4) = v38;
      sub_1883F831C();
      _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    memcpy(v31 + 167, v31 + 177, 0x50uLL);
    swift_task_alloc();
    sub_1883FF2B8();
    v31[290] = v88;
    *v88 = v89;
    v88[1] = sub_1884E8AA0;
    v90 = v31[283];
    sub_18840562C();

    return sub_1883FA8A4();
  }
}

uint64_t sub_1884E886C(uint64_t a1, uint64_t a2)
{
  *(v3 + 2296) = v2;
  if (v2)
  {
    return MEMORY[0x1EEE6DEB0](v3 + 16, a2, sub_1884E8F04, v3 + 1648);
  }

  else
  {
    return MEMORY[0x1EEE6DEC0](v3 + 16, a2, sub_1884E88AC, v3 + 1872);
  }
}

uint64_t sub_1884E88AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 2304) = v2;
  if (v2)
  {
    v4 = sub_1884E9274;
    v5 = v3 + 16;
    v6 = v3 + 1984;
  }

  else
  {
    v4 = sub_1884E88EC;
    v5 = v3 + 16;
    v6 = v3 + 2176;
  }

  return MEMORY[0x1EEE6DEB0](v5, a2, v4, v6);
}

uint64_t sub_1884E8AA0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 2320);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 2328) = v0;

  v9 = *(v3 + 2264);
  if (v0)
  {
    v10 = sub_1884E95E4;
  }

  else
  {
    v10 = sub_1884E8BA0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884E8BA0()
{
  sub_1883FB4E4();
  sub_1883F653C();
  v2 = *(v0 + 2312);
  v3 = *(v0 + 2264);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1883FE248();
    sub_1883F8C00();
    sub_1883FF2D4();
    *v3 = 136315138;
    v5 = sub_1883FE43C();
    sub_1883FC788(v5, v6, v7);
    sub_1883FE2FC();
    *(v3 + 4) = v1;
    sub_1883F831C();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v13 = *(v0 + 2272);
  *(v0 + 2056) = 0;
  *(v0 + 2064) = 0;
  *(v0 + 2072) = 3;
  *(v0 + 2080) = v13;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 2336) = v14;
  *v14 = v15;
  v14[1] = sub_1884E8CC8;
  v16 = *(v0 + 2264);
  sub_1883F614C();

  return sub_188413944(v17);
}

uint64_t sub_1884E8CC8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 2336);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 2344) = v0;

  v9 = *(v3 + 2264);
  if (v0)
  {
    v10 = sub_1884E9844;
  }

  else
  {
    v10 = sub_1884E8DC8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884E8F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v16 = v15[287];
  v17 = v15[286];
  v18 = v15[285];
  v19 = v16;
  v20 = sub_18840EFC4(v16);
  v21 = _convertErrorToNSError(_:)();
  ShouldDefer = CKErrorShouldDefer(v21);

  if (ShouldDefer)
  {
    a10 = v20;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v23 = v15[283];
    v24 = type metadata accessor for Logger();
    sub_1883F85F4(v24, qword_1EA90C9F8);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v15[284];
    if (v27)
    {
      v29 = sub_1883FE248();
      a9 = v17;
      a11 = sub_1883FE540();
      *v29 = 136315138;
      v30 = sub_1883FE43C();
      sub_1883FB598(v30, v31, v32, v33);
      sub_1883FDE10();
      *(v29 + 4) = v14;
      sub_1884F48B8(&dword_1883EA000, v34, v35, "%s finished performing an automatically scheduled sync for an adopter tracking their own changes due to a deferral");
      sub_1883FE944(a11);
      sub_1883F7B60();
      sub_1884F4470();
    }

    sub_1883F7768((v15 + 225));

    sub_1883FB300((v15 + 177));

    v36 = sub_1883F7528();
    sub_1883F5BA0(v36);
  }

  else
  {

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v37 = v15[283];
    v38 = type metadata accessor for Logger();
    sub_1883F85F4(v38, qword_1EA90C9F8);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v15[284];
    if (v41)
    {
      v43 = sub_1883FE248();
      a11 = sub_1883FE540();
      *v43 = 136315138;
      v44 = sub_1883FE43C();
      sub_1883FB598(v44, v45, v46, v47);
      a9 = v17;
      sub_1883F8020();

      *(v43 + 4) = v17;
      sub_188443C7C(&dword_1883EA000, v48, v49, "%s finished performing an automatically scheduled sync for an adopter tracking their own changes");
      sub_1883FE944(a11);
      sub_1884F4470();
      sub_1884037D8();
    }

    sub_1883F7768((v15 + 225));

    sub_1883FB300((v15 + 177));

    v50 = sub_1883F7528();
    sub_1883F5BA0(v50);
  }

  sub_1883F7910();
  sub_1883FEB30();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884E92B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v16 = v15[288];
  v17 = v15[286];
  v18 = v15[285];
  v19 = v16;
  v20 = sub_18840EFC4(v16);
  v21 = _convertErrorToNSError(_:)();
  ShouldDefer = CKErrorShouldDefer(v21);

  if (ShouldDefer)
  {
    a10 = v20;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v23 = v15[283];
    v24 = type metadata accessor for Logger();
    sub_1883F85F4(v24, qword_1EA90C9F8);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v15[284];
    if (v27)
    {
      v29 = sub_1883FE248();
      a9 = v17;
      a11 = sub_1883FE540();
      *v29 = 136315138;
      v30 = sub_1883FE43C();
      sub_1883FB598(v30, v31, v32, v33);
      sub_1883FDE10();
      *(v29 + 4) = v14;
      sub_1884F48B8(&dword_1883EA000, v34, v35, "%s finished performing an automatically scheduled sync for an adopter tracking their own changes due to a deferral");
      sub_1883FE944(a11);
      sub_1883F7B60();
      sub_1884F4470();
    }

    sub_1883F7768((v15 + 225));

    sub_1883FB300((v15 + 177));

    v36 = sub_1883F7528();
    sub_1883F5BA0(v36);
  }

  else
  {

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v37 = v15[283];
    v38 = type metadata accessor for Logger();
    sub_1883F85F4(v38, qword_1EA90C9F8);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v15[284];
    if (v41)
    {
      v43 = sub_1883FE248();
      a11 = sub_1883FE540();
      *v43 = 136315138;
      v44 = sub_1883FE43C();
      sub_1883FB598(v44, v45, v46, v47);
      a9 = v17;
      sub_1883F8020();

      *(v43 + 4) = v17;
      sub_188443C7C(&dword_1883EA000, v48, v49, "%s finished performing an automatically scheduled sync for an adopter tracking their own changes");
      sub_1883FE944(a11);
      sub_1884F4470();
      sub_1884037D8();
    }

    sub_1883F7768((v15 + 225));

    sub_1883FB300((v15 + 177));

    v50 = sub_1883F7528();
    sub_1883F5BA0(v50);
  }

  sub_1883F7910();
  sub_1883FEB30();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884E9AA4(uint64_t a1)
{
  *(v2 + 6336) = v1;
  *(v2 + 6328) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884E9AC8, v1, 0);
}

uint64_t sub_1884EA0D4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 6352);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 6360) = v0;

  v9 = *(v3 + 6336);
  if (v0)
  {
    v10 = sub_1884EB9A8;
  }

  else
  {
    v10 = sub_1884EA1D4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884EA52C()
{
  sub_1883F7120();
  v1 = *(v0 + 6544);
  v2 = *(v0 + 6296);
  v3 = *(v0 + 6304);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;

  return MEMORY[0x1EEE6DEB8](v0 + 1296, v0 + 6280, sub_1884EA5AC, v0 + 2768);
}

uint64_t sub_1884EA5C0()
{
  sub_1883F7120();
  v1 = *(v0 + 6544);
  v2 = *(v0 + 6280);
  v3 = *(v0 + 6288);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  v4 = v2;

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 6264, sub_1884EA640, v0 + 2608);
}

uint64_t sub_1884EA654()
{
  sub_1883FD7A0();
  sub_1883FC738();
  v1 = *(v0 + 6544);
  v2 = *(v0 + 6272);
  v3 = *(v0 + 6264);
  *(v1 + 64) = v3;
  *(v1 + 72) = v2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 6320) = MEMORY[0x1E69E7CC0];
  v5 = v3;
  v9 = 0;
LABEL_2:
  v10 = v9 - 1;
  v11 = 16 * v9 + 32;
  while (v10 != 2)
  {
    if (++v10 > 2)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEB0](v5, v6, v7, v8);
    }

    v12 = *(*(v0 + 6544) + v11);
    v11 += 16;
    if (v12)
    {
      v13 = v12;
      MEMORY[0x18CFD52F0]();
      v14 = *(v0 + 6320);
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_188426CD0(v15);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v9 = v10 + 1;
      sub_1883F7E8C();
      v5 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = *(v0 + 6320);
      goto LABEL_2;
    }
  }

  v17 = *(v0 + 6544);
  sub_18847253C(v4);
  v18 = *(v0 + 6544);
  v19 = (*(v17 + 40) & 1) != 0 && *(v18 + 56) == 1 && (*(v18 + 72) & 1) != 0;
  *(v0 + 6600) = v19;

  sub_1883F9968();

  return MEMORY[0x1EEE6DEB0](v5, v6, v7, v8);
}

uint64_t sub_1884EA7D0()
{
  sub_1883F7120();
  v1 = *(v0 + 6536);
  v2 = *(v0 + 6528);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 6280, sub_1884EA848, v0 + 2288);
}

uint64_t sub_1884EA85C()
{
  sub_1883F7120();
  v1 = *(v0 + 6520);
  v2 = *(v0 + 6512);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 6296, sub_1884EA8D4, v0 + 1936);
}

uint64_t sub_1884EA8E8()
{
  v234 = v0;
  v6 = *(v0 + 6600);
  v7 = *(v0 + 6504);
  v8 = *(v0 + 6496);

  if ((v6 & 1) == 0)
  {
    sub_1883FE424((v0 + 3208));
    sub_1884F3A5C(v0 + 3208);
    sub_18840FB4C();
    goto LABEL_35;
  }

  v9 = *(v0 + 6344);
  v10 = sub_18850C33C();
  sub_1883F4C9C(v10);
  v11 = sub_1883FDE10();
  if (v6 || (v19 = *(v0 + 6344), sub_18850C3A4(v11, v12, v13, v14, v15, v16, v17, v18, v162, v166, v171, v176, v181, v186, v192, *(&v192 + 1), v198, *(&v198 + 1), v203, *(&v203 + 1), v208, *(&v208 + 1)), v21 = *(v20 + 16), , v21))
  {
    v22 = *(v0 + 6368);
    v23 = *(v0 + 6344);
    v24 = sub_18850C33C();
    v6 = sub_1884043A8(v24);
    sub_18850C3A4(v6, v25, v26, v27, v28, v29, v30, v31, v162, v166, v171, v176, v181, v186, v192, *(&v192 + 1), v198, *(&v198 + 1), v203, *(&v203 + 1), v208, *(&v208 + 1));
    sub_1884FB89C(v32);
    v34 = v33;
    sub_1884E4D00(v6, v0 + 2488);
    sub_1884E4F1C(v34, (v0 + 2488));
    v187 = v22;

    [*(v23 + 16) purgePendingAutomaticSyncZoneIDs];
    [*(v23 + 16) purgePendingAutomaticSyncAssetSyncs];
  }

  else
  {
    v187 = *(v0 + 6368);
  }

  sub_188413F54();
  sub_1883FEBAC();
  sub_1884ECF68();
  LODWORD(v223) = v35;
  sub_1883FE424((v0 + 3448));
  v36 = sub_1884F3A5C(v0 + 3448);
  sub_1883FF2E0(v36, v37, v38, v39, v40, v41, v42, v43, v162, v166, v171, v176, v181, v187, v44, v192, v45, v198, v203, v208, v213, v215, v217, v219, v221);
  v46 = sub_1883F9FEC(v0 + 3328, &qword_1EA90E558, &qword_1886FB6A8);
  if (v223)
  {
    sub_1884F4510();
LABEL_34:
    v54 = v232;
LABEL_35:
    sub_18840F6E4(v54);
    sub_1883F9FEC(v0 + 2648, &qword_1EA90E558, &qword_1886FB6A8);
    sub_1884F4454();
    sub_1883F9700();

    __asm { BRAA            X2, X16 }
  }

  sub_188410BB8(v46, v47, v48, v49, v50, v51, v52, v53, v163, v167, v172, v177, v182, v188);
  if (!v63)
  {
    goto LABEL_18;
  }

  sub_1883FC684(v55, v56, v57, v58, v59, v60, v61, v62, v164, v168, v173, v178, v183, v189, v193, v196, v199, v201, v204, v206, v209, v211, v214, v216, v218, v220, v222, v223, v224, v225, v226, v227, v228, v229, v230);
  memcpy((v0 + v5), (v0 + v6), 0x60uLL);
  v64 = *(v0 + 5176);
  v65 = *(v0 + 5184);
  sub_1884F455C((v0 + v1));
  v2 = *(v0 + 5080);
  v66 = *(v0 + 5088);
  if (!v65)
  {
    if (!v66)
    {
      v84 = 5560;
      *(v0 + 5560) = v64;
      *(v0 + 5568) = 0;
      sub_18841726C(5576);
      sub_18840AB8C();
      sub_1884F4898();
      sub_1884F477C();
      goto LABEL_22;
    }

    v85 = sub_1883F5A84();
    sub_18841D168(v85, v86, v87, v88);
    goto LABEL_17;
  }

  *(v0 + 4984) = v64;
  *(v0 + 4992) = v65;
  sub_18841726C(5000);
  sub_188404D94();
  if (!v66)
  {
    v5 = 4792;
    sub_1883F5A84();
    sub_1884F4464();
    sub_18841D168(v89, v90, v91, v92);
    sub_1884F4770();
    sub_1884F4464();
    sub_18841D168(v93, v94, v95, v96);

LABEL_17:
    sub_1883FE518();
    *(v0 + 2072) = v2;
    *(v0 + 2080) = v66;
    sub_1884F455C((v0 + 2088));
    sub_1883F9FEC(v0 + 1976, &qword_1EA90E578, &qword_1886FB720);
    goto LABEL_18;
  }

  sub_18841E62C();
  v67 = *(v0 + 4672);
  sub_1884F4464();
  sub_18841D168(v68, v69, v70, v71);
  sub_1884F4464();
  sub_18841D168(v72, v73, v74, v75);
  sub_1884F4770();
  sub_1884F4464();
  sub_18841D168(v76, v77, v78, v79);
  v80 = sub_188410C24();
  sub_18850EF70(v80, v81);
  sub_1884F4878();
  sub_18841008C(4600);

  sub_1884F4594();
  sub_18841008C(4696);
  if (v67)
  {
    sub_1884F477C();
    v84 = v223;
    v3 = v204;
    v4 = v199;
LABEL_22:
    v2 = v209;
    v124 = v218;
    v125 = v228;
    v5 = v229;
    v126 = v224;
    v123 = v225;
    v127 = v227;
    v128 = v214;
    goto LABEL_23;
  }

LABEL_18:
  v97 = *(v0 + 6344);
  v98 = *(v0 + 6336);
  v99 = sub_18850C174();
  CKSyncEngine.State.pendingAssetSyncs.getter(v99, v100, v101, v102, v103, v104, v105, v106, v164, v168, v173, v178, v183, v189, v193, v196, v199, v201, v204, v206, v209, v211);
  sub_1884FB89C(v107);
  v109 = v108;
  type metadata accessor for SyncEngine();
  v110 = v98;
  sub_1884C7AD8(v233);
  v111 = sub_1883FB5D4();
  sub_1884EBF38(v113, v111, v112, v114);

  memcpy((v0 + 4312), v233, 0x60uLL);
  v115 = sub_1883F9FEC(v0 + 4312, &unk_1EA90E4D0, &unk_1886FB460);
  sub_1883FE0C0(v115, v116, v117, v118, v119, v120, v121, v122, v165, v169, v174, v179, v184, v190, v194, v197, v200, v202, v205, v207, v210, v212, v214, v216, v218, v220, v222, v223, v224, v225, v226, v227, v228, v229, v230);
  sub_1883F9FEC(v0 + 2168, &qword_1EA90E558, &qword_1886FB6A8);
  if (!v98)
  {
    sub_188419BC0();
    goto LABEL_35;
  }

  v231 = v4;
  v230 = v3;
  v83 = 4312;
  v84 = v109;
  v3 = v99;
  v4 = v98;
  v124 = v170;
  v123 = v175;
  v125 = v180;
  v126 = v185;
  v127 = v191;
  v128 = v195;
  v82 = v110;
LABEL_23:
  *(v0 + 6488) = v82;
  *(v0 + 6480) = v128;
  *(v0 + 6472) = v127;
  *(v0 + 6464) = v126;
  *(v0 + 6456) = v125;
  *(v0 + 6448) = v123;
  *(v0 + 6440) = v5;
  *(v0 + 6432) = v124;
  *(v0 + 6424) = v2;
  *(v0 + 6416) = v4;
  *(v0 + 6408) = v3;
  *(v0 + 6400) = v84;
  *(v0 + 6392) = v83;
  *(v0 + 6384) = v230;
  *(v0 + 6376) = v231;
  v129 = *(v0 + 6336);
  *(v0 + 2488) = v82;
  *(v0 + 2496) = v128;
  *(v0 + 2504) = v127;
  *(v0 + 2512) = v126;
  *(v0 + 2520) = v125;
  *(v0 + 2528) = v123;
  *(v0 + 2536) = v5;
  *(v0 + 2544) = v124;
  *(v0 + 2552) = v2;
  *(v0 + 2560) = v4;
  *(v0 + 2568) = v3;
  *(v0 + 2576) = v84;
  *(v0 + 2584) = v83;
  *(v0 + 2592) = v230;
  *(v0 + 2600) = v231;
  v232 = v82;
  *(v0 + 2808) = v82;
  *(v0 + 2816) = v128;
  *(v0 + 2824) = v127;
  *(v0 + 2832) = v126;
  *(v0 + 2840) = v125;
  *(v0 + 2848) = v123;
  *(v0 + 2856) = v5;
  *(v0 + 2864) = v124;
  *(v0 + 2872) = v2;
  *(v0 + 2880) = v4;
  *(v0 + 2888) = v3;
  *(v0 + 2896) = v84;
  *(v0 + 2904) = v83;
  sub_1884F4938();
  if (sub_1884C7D30())
  {
    v130 = v0 + 2488;
    sub_1884EBFD0((v0 + 5464));
    v131 = *(v0 + 5472);
    if (v131 == 1)
    {
      sub_1883FE424((v0 + 3808));
      sub_1884F3A5C(v0 + 3808);
      sub_1883F7B20();
      sub_188405058();
      goto LABEL_34;
    }

    sub_1883FAA68();
    sub_1883FA718();
    v146 = swift_allocObject();
    sub_188413FA4(v146);
    *(v124 + 120) = v84;
    v147 = swift_task_alloc();
    sub_1883F7D58(v147);
    v148 = v84;
    sub_1884F44B4();

    sub_18841D168(v0 + 5464, v0 + 4024, &qword_1EA90E560, &qword_1886FB6D8);
    sub_18844E6FC(&qword_1EA90E568, &qword_1886FB6E0);
    sub_1883F8F38();
    sub_1883FA718();
    v149 = swift_allocObject();
    v150 = sub_1884F4604(v149);
    v150[2] = v130;
    v150[3] = v4;
    v150[4] = v131;
    v151 = sub_18840ADC8(v150);
    memcpy(v151, v152, 0x50uLL);
    v153 = sub_1883FEF14();
    sub_1883FF204(v153);
    sub_1884F44B4();

    sub_18841D168(v0 + 5464, v0 + 4216, &qword_1EA90E560, &qword_1886FB6D8);
    sub_1883FED5C();
    sub_1883FA718();
    v154 = swift_allocObject();
    v155 = sub_1883FE890(v154);
    v155[2] = v130;
    v155[3] = v4;
    v155[4] = v131;
    v156 = sub_18840ADC8(v155);
    memcpy(v156, v157, 0x50uLL);
    v158 = sub_1884F4758();
    sub_1883F9648(v158);

    sub_1883FE710();
    sub_18844E6FC(&qword_1EA90E570, &qword_1886FB718);
    *(v0 + 6544) = sub_1884062C0();
    sub_1883F93FC(xmmword_1886FAC20);
    sub_1883F9700();

    return MEMORY[0x1EEE6DEB8]();
  }

  else
  {
    v132 = sub_1884ECC8C();
    *(v0 + 6552) = v133;
    if (!v133)
    {
      sub_1883FE424((v0 + 3088));
      sub_1884F3A5C(v0 + 3088);
      sub_1883F7B20();
      sub_1884F4848();
      goto LABEL_34;
    }

    sub_18840F8D4(v132, v133, v134, v135);
    v136 = swift_task_alloc();
    v137 = sub_1884F4610(v136);
    *v137 = v138;
    sub_1883FA1D4(v137);
    sub_1884F47DC();
    sub_1883F9700();

    return sub_1884EC5D4(v139, v140, v141, v142, v143);
  }
}

uint64_t sub_1884EB074()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = v3[823];
  v5 = v3[822];
  v6 = v3[821];
  v7 = v3[820];
  v8 = v3[819];
  v9 = v3[792];
  v10 = *v0;
  sub_1883F7110();
  *v11 = v10;
  *(v13 + 6592) = v12;
  *(v13 + 6601) = v14;

  sub_1883F84DC();
  sub_1884F47DC();
  sub_1884F3A8C(v15, v16);
  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1884EB1E0()
{
  v236 = v0;
  v6 = *(v0 + 6592);
  if (!v6)
  {
    if (*(v0 + 6601) == 1)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_1883FE424((v0 + 3208));
    sub_1884F3A5C(v0 + 3208);
    sub_18840FB4C();
    goto LABEL_39;
  }

  v1 = 6312;
  MEMORY[0x18CFD52F0]();
  v7 = *(v0 + 6312);
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_188426CD0(v8);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v10 = *(v0 + 6601);
  sub_1883F7E8C();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v11 = *(v0 + 6344);
  v12 = sub_18850C33C();
  sub_1883F4C9C(v12);
  v13 = sub_1883FDE10();
  if (v6 || (v21 = *(v0 + 6344), sub_18850C3A4(v13, v14, v15, v16, v17, v18, v19, v20, v164, v168, v173, v178, v183, v188, v194, *(&v194 + 1), v200, *(&v200 + 1), v205, *(&v205 + 1), v210, *(&v210 + 1)), v23 = *(v22 + 16), , v23))
  {
    v24 = *(v0 + 6368);
    v25 = *(v0 + 6344);
    v26 = sub_18850C33C();
    v6 = sub_1884043A8(v26);
    sub_18850C3A4(v6, v27, v28, v29, v30, v31, v32, v33, v164, v168, v173, v178, v183, v188, v194, *(&v194 + 1), v200, *(&v200 + 1), v205, *(&v205 + 1), v210, *(&v210 + 1));
    sub_1884FB89C(v34);
    v36 = v35;
    sub_1884E4D00(v6, v0 + 2488);
    sub_1884E4F1C(v36, (v0 + 2488));
    v189 = v24;

    [*(v25 + 16) purgePendingAutomaticSyncZoneIDs];
    [*(v25 + 16) purgePendingAutomaticSyncAssetSyncs];
  }

  else
  {
    v189 = *(v0 + 6368);
  }

  sub_188413F54();
  sub_1883FEBAC();
  sub_1884ECF68();
  LODWORD(v225) = v37;
  sub_1883FE424((v0 + 3448));
  v38 = sub_1884F3A5C(v0 + 3448);
  sub_1883FF2E0(v38, v39, v40, v41, v42, v43, v44, v45, v164, v168, v173, v178, v183, v189, v46, v194, v47, v200, v205, v210, v215, v217, v219, v221, v223);
  v48 = sub_1883F9FEC(v0 + 3328, &qword_1EA90E558, &qword_1886FB6A8);
  if (v225)
  {
    sub_1884F4510();
LABEL_38:
    v56 = v234;
LABEL_39:
    sub_18840F6E4(v56);
    sub_1883F9FEC(v0 + 2648, &qword_1EA90E558, &qword_1886FB6A8);
    sub_1884F4454();
    sub_1883F9700();

    __asm { BRAA            X2, X16 }
  }

  sub_188410BB8(v48, v49, v50, v51, v52, v53, v54, v55, v165, v169, v174, v179, v184, v190);
  if (!v65)
  {
    goto LABEL_22;
  }

  sub_1883FC684(v57, v58, v59, v60, v61, v62, v63, v64, v166, v170, v175, v180, v185, v191, v195, v198, v201, v203, v206, v208, v211, v213, v216, v218, v220, v222, v224, v225, v226, v227, v228, v229, v230, v231, v232);
  memcpy((v0 + v5), (v0 + v6), 0x60uLL);
  v66 = *(v0 + 5176);
  v67 = *(v0 + 5184);
  sub_1884F455C((v0 + v1));
  v2 = *(v0 + 5080);
  v68 = *(v0 + 5088);
  if (!v67)
  {
    if (!v68)
    {
      v86 = 5560;
      *(v0 + 5560) = v66;
      *(v0 + 5568) = 0;
      sub_18841726C(5576);
      sub_18840AB8C();
      sub_1884F4898();
      sub_1884F477C();
      goto LABEL_26;
    }

    v87 = sub_1883F5A84();
    sub_18841D168(v87, v88, v89, v90);
    goto LABEL_21;
  }

  *(v0 + 4984) = v66;
  *(v0 + 4992) = v67;
  sub_18841726C(5000);
  sub_188404D94();
  if (!v68)
  {
    v5 = 4792;
    sub_1883F5A84();
    sub_1884F4464();
    sub_18841D168(v91, v92, v93, v94);
    sub_1884F4770();
    sub_1884F4464();
    sub_18841D168(v95, v96, v97, v98);

LABEL_21:
    sub_1883FE518();
    *(v0 + 2072) = v2;
    *(v0 + 2080) = v68;
    sub_1884F455C((v0 + 2088));
    sub_1883F9FEC(v0 + 1976, &qword_1EA90E578, &qword_1886FB720);
    goto LABEL_22;
  }

  sub_18841E62C();
  v69 = *(v0 + 4672);
  sub_1884F4464();
  sub_18841D168(v70, v71, v72, v73);
  sub_1884F4464();
  sub_18841D168(v74, v75, v76, v77);
  sub_1884F4770();
  sub_1884F4464();
  sub_18841D168(v78, v79, v80, v81);
  v82 = sub_188410C24();
  sub_18850EF70(v82, v83);
  sub_1884F4878();
  sub_18841008C(4600);

  sub_1884F4594();
  sub_18841008C(4696);
  if (v69)
  {
    sub_1884F477C();
    v86 = v225;
    v3 = v206;
    v4 = v201;
LABEL_26:
    v2 = v211;
    v126 = v220;
    v127 = v230;
    v5 = v231;
    v128 = v226;
    v125 = v227;
    v129 = v229;
    v130 = v216;
    goto LABEL_27;
  }

LABEL_22:
  v99 = *(v0 + 6344);
  v100 = *(v0 + 6336);
  v101 = sub_18850C174();
  CKSyncEngine.State.pendingAssetSyncs.getter(v101, v102, v103, v104, v105, v106, v107, v108, v166, v170, v175, v180, v185, v191, v195, v198, v201, v203, v206, v208, v211, v213);
  sub_1884FB89C(v109);
  v111 = v110;
  type metadata accessor for SyncEngine();
  v112 = v100;
  sub_1884C7AD8(v235);
  v113 = sub_1883FB5D4();
  sub_1884EBF38(v115, v113, v114, v116);

  memcpy((v0 + 4312), v235, 0x60uLL);
  v117 = sub_1883F9FEC(v0 + 4312, &unk_1EA90E4D0, &unk_1886FB460);
  sub_1883FE0C0(v117, v118, v119, v120, v121, v122, v123, v124, v167, v171, v176, v181, v186, v192, v196, v199, v202, v204, v207, v209, v212, v214, v216, v218, v220, v222, v224, v225, v226, v227, v228, v229, v230, v231, v232);
  sub_1883F9FEC(v0 + 2168, &qword_1EA90E558, &qword_1886FB6A8);
  if (!v100)
  {
    sub_188419BC0();
    goto LABEL_39;
  }

  v233 = v4;
  v232 = v3;
  v85 = 4312;
  v86 = v111;
  v3 = v101;
  v4 = v100;
  v126 = v172;
  v125 = v177;
  v127 = v182;
  v128 = v187;
  v129 = v193;
  v130 = v197;
  v84 = v112;
LABEL_27:
  *(v0 + 6488) = v84;
  *(v0 + 6480) = v130;
  *(v0 + 6472) = v129;
  *(v0 + 6464) = v128;
  *(v0 + 6456) = v127;
  *(v0 + 6448) = v125;
  *(v0 + 6440) = v5;
  *(v0 + 6432) = v126;
  *(v0 + 6424) = v2;
  *(v0 + 6416) = v4;
  *(v0 + 6408) = v3;
  *(v0 + 6400) = v86;
  *(v0 + 6392) = v85;
  *(v0 + 6384) = v232;
  *(v0 + 6376) = v233;
  v131 = *(v0 + 6336);
  *(v0 + 2488) = v84;
  *(v0 + 2496) = v130;
  *(v0 + 2504) = v129;
  *(v0 + 2512) = v128;
  *(v0 + 2520) = v127;
  *(v0 + 2528) = v125;
  *(v0 + 2536) = v5;
  *(v0 + 2544) = v126;
  *(v0 + 2552) = v2;
  *(v0 + 2560) = v4;
  *(v0 + 2568) = v3;
  *(v0 + 2576) = v86;
  *(v0 + 2584) = v85;
  *(v0 + 2592) = v232;
  *(v0 + 2600) = v233;
  v234 = v84;
  *(v0 + 2808) = v84;
  *(v0 + 2816) = v130;
  *(v0 + 2824) = v129;
  *(v0 + 2832) = v128;
  *(v0 + 2840) = v127;
  *(v0 + 2848) = v125;
  *(v0 + 2856) = v5;
  *(v0 + 2864) = v126;
  *(v0 + 2872) = v2;
  *(v0 + 2880) = v4;
  *(v0 + 2888) = v3;
  *(v0 + 2896) = v86;
  *(v0 + 2904) = v85;
  sub_1884F4938();
  if (sub_1884C7D30())
  {
    v132 = v0 + 2488;
    sub_1884EBFD0((v0 + 5464));
    v133 = *(v0 + 5472);
    if (v133 == 1)
    {
      sub_1883FE424((v0 + 3808));
      sub_1884F3A5C(v0 + 3808);
      sub_1883F7B20();
      sub_188405058();
      goto LABEL_38;
    }

    sub_1883FAA68();
    sub_1883FA718();
    v148 = swift_allocObject();
    sub_188413FA4(v148);
    *(v126 + 120) = v86;
    v149 = swift_task_alloc();
    sub_1883F7D58(v149);
    v150 = v86;
    sub_1884F44B4();

    sub_18841D168(v0 + 5464, v0 + 4024, &qword_1EA90E560, &qword_1886FB6D8);
    sub_18844E6FC(&qword_1EA90E568, &qword_1886FB6E0);
    sub_1883F8F38();
    sub_1883FA718();
    v151 = swift_allocObject();
    v152 = sub_1884F4604(v151);
    v152[2] = v132;
    v152[3] = v4;
    v152[4] = v133;
    v153 = sub_18840ADC8(v152);
    memcpy(v153, v154, 0x50uLL);
    v155 = sub_1883FEF14();
    sub_1883FF204(v155);
    sub_1884F44B4();

    sub_18841D168(v0 + 5464, v0 + 4216, &qword_1EA90E560, &qword_1886FB6D8);
    sub_1883FED5C();
    sub_1883FA718();
    v156 = swift_allocObject();
    v157 = sub_1883FE890(v156);
    v157[2] = v132;
    v157[3] = v4;
    v157[4] = v133;
    v158 = sub_18840ADC8(v157);
    memcpy(v158, v159, 0x50uLL);
    v160 = sub_1884F4758();
    sub_1883F9648(v160);

    sub_1883FE710();
    sub_18844E6FC(&qword_1EA90E570, &qword_1886FB718);
    *(v0 + 6544) = sub_1884062C0();
    sub_1883F93FC(xmmword_1886FAC20);
    sub_1883F9700();

    return MEMORY[0x1EEE6DEB8]();
  }

  else
  {
    v134 = sub_1884ECC8C();
    *(v0 + 6552) = v135;
    if (!v135)
    {
      sub_1883FE424((v0 + 3088));
      sub_1884F3A5C(v0 + 3088);
      sub_1883F7B20();
      sub_1884F4848();
      goto LABEL_38;
    }

    sub_18840F8D4(v134, v135, v136, v137);
    v138 = swift_task_alloc();
    v139 = sub_1884F4610(v138);
    *v139 = v140;
    sub_1883FA1D4();
    sub_1884F47DC();
    sub_1883F9700();

    return sub_1884EC5D4(v141, v142, v143, v144, v145);
  }
}

void sub_1884EBF38(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18841D168(__dst, v9, &unk_1EA90E4D0, &unk_1886FB460);
  sub_1884F19E4();
  sub_1884E4D00(a2, a4);
  if (a3)
  {
    v7 = sub_1883F7EE0();
    sub_1884E4F1C(v7, v8);
  }
}

void sub_1884EBFD0(uint64_t *a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = 5;
  v4 = &unk_1EFA25A58;
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *v2;
    v8 = *(*v2 + 16);

    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = sub_1883F712C();
    v11 = sub_188420F2C(v9, v10);
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    v13 = (*(v7 + 56) + 32 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    if ((v15 & 0xC000000000000001) != 0)
    {

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_10;
      }
    }

    else
    {
      v28 = *(v15 + 16);
      v29 = v13[1];

      if (!v28)
      {
LABEL_10:

LABEL_11:
        v14 = 0;
        v81 = 0;
        v16 = 0;
        v17 = 0;
        goto LABEL_12;
      }
    }

    v25 = sub_1884E4C40(v82, v5, v6);
    v26 = *(v18 + 8);
    if (v26)
    {
      *(v18 + 8) = MEMORY[0x1E69E7CD0];
    }

    v27 = sub_1884F4584(v26, v18, v19, v20, v21, v22, v23, v24, v70, v71, v72, v73, v74, v75, v76, v77, v80, v15, v82[0]);
    v25(v27);
LABEL_12:
    v30 = *(v2 + 8);
    v31 = *(v30 + 16);
    v74 = v16;
    v75 = v14;
    v80 = v5;
    if (!v31)
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_24;
    }

    v32 = sub_1883F712C();
    v34 = sub_188420F2C(v32, v33);
    if ((v35 & 1) == 0)
    {
      goto LABEL_23;
    }

    v36 = (*(v30 + 56) + 32 * v34);
    v37 = *v36;
    v38 = v36[1];
    v39 = v36[3];
    v78 = v36[2];
    if ((v38 & 0xC000000000000001) != 0)
    {

      v40 = __CocoaSet.count.getter();
    }

    else
    {
      v40 = *(v38 + 16);
    }

    v41 = v39;
    if (!v40)
    {

LABEL_23:
      v37 = 0;
      v38 = 0;
      v31 = 0;
LABEL_24:
      v41 = 0;
      goto LABEL_25;
    }

    v49 = sub_1884E4C40(v82, v80, v6);
    v50 = *(v42 + 8);
    if (v50)
    {
      *(v42 + 8) = MEMORY[0x1E69E7CD0];
    }

    v51 = sub_1884F4584(v50, v42, v43, v44, v45, v46, v47, v48, v70, v71, v72, v73, v74, v75, v76, v78, v80, v81, v82[0]);
    v49(v51);
    v31 = v79;
LABEL_25:
    v77 = v31;
    v52 = *(v2 + 16);
    v72 = v37;
    v73 = v17;
    v71 = v41;
    if (!*(v52 + 16))
    {
      goto LABEL_34;
    }

    v53 = sub_188420F2C(v80, v6);
    if ((v54 & 1) == 0)
    {
      goto LABEL_34;
    }

    v55 = (*(v52 + 56) + 32 * v53);
    v37 = *v55;
    v2 = v55[1];
    v41 = v55[2];
    v17 = v55[3];
    if ((v17 & 0xC000000000000001) != 0)
    {

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_33;
      }
    }

    else
    {
      v67 = *(v17 + 16);
      v68 = v55[1];

      if (!v67)
      {
LABEL_33:

LABEL_34:

        sub_1884F47E8();
        goto LABEL_35;
      }
    }

    v56 = sub_1884E4C40(v82, v80, v6);
    v64 = v56;
    if (*(v57 + 8))
    {
      v65 = *(v57 + 24);
      *(v57 + 24) = MEMORY[0x1E69E7CD0];
    }

    v66 = sub_1884F4584(v56, v57, v58, v59, v60, v61, v62, v63, v70, v71, v72, v73, v74, v75, v76, v77, v80, v81, v82[0]);
    v64(v66);

LABEL_35:
    v69 = v81;
    if (v38 | v81 | v2)
    {
      goto LABEL_38;
    }

    v4 += 2;
    --v3;
    v2 = v76;
  }

  while (v3);
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v38 = 0;
  v77 = 0;
  v71 = 0;
  sub_1884F47E8();
  v69 = 1;
LABEL_38:
  *v70 = v75;
  v70[1] = v69;
  v70[2] = v74;
  v70[3] = v73;
  v70[4] = v72;
  v70[5] = v38;
  v70[6] = v77;
  v70[7] = v71;
  v70[8] = v37;
  v70[9] = v2;
  v70[10] = v41;
  v70[11] = v17;
}

uint64_t sub_1884EC3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884EC3E8, 0, 0);
}

uint64_t sub_1884EC3E8()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v1 = *(v0 + 64);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  [*(v0 + 72) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1883F4C5C(0, &qword_1EA90C778, off_1E70BA4E0);
  sub_18840765C();
  *(v0 + 80) = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = sub_1884F461C(v6);
  *v7 = v8;
  sub_18840AED4(v7);
  sub_1883FB5FC();

  return sub_1884EC5D4(v9, v10, v11, v12, v13);
}

uint64_t sub_1884EC4CC()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1884F47C8();

  return v7(v6);
}

uint64_t sub_1884EC5D4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = v5;
  if (a2)
  {
    v12 = swift_task_alloc();
    v6[3] = v12;
    *v12 = v6;
    v12[1] = sub_1884EC6E0;

    return sub_1884ED270(a1, a2, a3, a4, a5);
  }

  else
  {
    v14 = v6[1];

    return v14(0, 1);
  }
}

uint64_t sub_1884EC6E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;
  *(v9 + 32) = v8;

  v10 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884EC7D8()
{
  sub_1883F78E0();
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = sub_18840EFC4(v2);
    v4 = _convertErrorToNSError(_:)();

    LODWORD(v3) = CKErrorShouldDefer(v4);
    v5 = v3 ^ 1;
    v6 = *(v0 + 32);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  v7 = *(v0 + 8);

  return v7(v6, v5);
}

uint64_t sub_1884EC884(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1884EC970;

  return v6();
}

uint64_t sub_1884EC970()
{
  sub_1883F78E0();
  v2 = v1;
  v4 = v3;
  sub_1883F78EC();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v0;
  sub_1883F7110();
  *v9 = v8;

  *v7 = v4;
  *(v7 + 8) = v2;
  sub_1883FDB48();

  return v10();
}

uint64_t sub_1884ECA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884ECAA0, 0, 0);
}

uint64_t sub_1884ECAA0()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v1 = *(v0 + 64);
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  [*(v0 + 72) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1883F4C5C(0, &qword_1EA90C778, off_1E70BA4E0);
  sub_18840765C();
  *(v0 + 80) = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = sub_1884F461C(v6);
  *v7 = v8;
  sub_18840AED4(v7);
  sub_1883FB5FC();

  return sub_1884EC5D4(v9, v10, v11, v12, v13);
}

uint64_t sub_1884ECB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884ECBA8, 0, 0);
}

uint64_t sub_1884ECBA8()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v1 = *(v0 + 64);
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  [*(v0 + 72) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1883F4C5C(0, &qword_1EA90C778, off_1E70BA4E0);
  sub_18840765C();
  *(v0 + 80) = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = sub_1884F461C(v6);
  *v7 = v8;
  sub_18840AED4(v7);
  sub_1883FB5FC();

  return sub_1884EC5D4(v9, v10, v11, v12, v13);
}

uint64_t sub_1884ECC8C()
{
  v3 = v0 + 2;
  v4 = *v0;
  v5 = &unk_1EFA25A58;
  v6 = 5;
  while (1)
  {
    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = *(v4 + 16);

    if (v9)
    {
      v10 = sub_188410C24();
      v12 = sub_188420F2C(v10, v11);
      if (v13)
      {
        sub_18840BE2C(v12, *(v4 + 56));
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_188442E80();

          if (__CocoaSet.count.getter())
          {
            goto LABEL_25;
          }
        }

        else
        {
          v14 = *(v1 + 16);

          if (v14)
          {
LABEL_25:
            sub_1884F47A8();
            goto LABEL_27;
          }
        }
      }
    }

    v15 = *(v40 + 8);
    if (*(v15 + 16))
    {
      v16 = sub_188410C24();
      v18 = sub_188420F2C(v16, v17);
      if (v19)
      {
        sub_18840BE2C(v18, *(v15 + 56));
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_188442E80();

          if (__CocoaSet.count.getter())
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        v20 = *(v1 + 16);

        if (!v20)
        {
LABEL_15:

          goto LABEL_16;
        }

LABEL_26:
        v28 = v41;
        v29 = v8;
        v30 = v7;
LABEL_27:
        v32 = sub_1884E4C40(v28, v29, v30);
        if (!*(v31 + 8))
        {
          goto LABEL_32;
        }

        *(v31 + 8) = MEMORY[0x1E69E7CD0];
        goto LABEL_31;
      }
    }

LABEL_16:
    v21 = *v3;
    if (!*(*v3 + 16))
    {
      goto LABEL_23;
    }

    v22 = sub_188410C24();
    v24 = sub_188420F2C(v22, v23);
    if ((v25 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_18840BE2C(v24, *(v21 + 56));
    if ((v2 & 0xC000000000000001) != 0)
    {

      if (__CocoaSet.count.getter())
      {
        break;
      }

      goto LABEL_22;
    }

    v26 = *(v2 + 16);

    if (v26)
    {
      break;
    }

LABEL_22:

LABEL_23:

    v5 += 2;
    if (!--v6)
    {
      return 0;
    }
  }

  sub_1884F47A8();
  v32 = sub_1884E4C40(v33, v34, v35);
  if (!*(v36 + 8))
  {
    goto LABEL_32;
  }

  v37 = *(v36 + 24);
  *(v36 + 24) = MEMORY[0x1E69E7CD0];
LABEL_31:

LABEL_32:
  (v32)(v41, 0);
  v27 = v39;

  return v27;
}

void sub_1884ECF68()
{
  v1 = *v0;
  v2 = v0[1];
  v48 = v0[2];
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 32);
  sub_1883F8578();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v7)
  {
LABEL_7:
    v12 = *(v1 + 56);
    sub_1884F4574();
    v14 = v13[1];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = v13[2];
      v15 = v13[3];

      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *(v14 + 16);
    }

    v7 &= v7 - 1;
    if (v17)
    {

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v11 >= v9)
    {
      break;
    }

    v7 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_7;
    }
  }

  v18 = *(v2 + 64);
  v19 = *(v2 + 32);
  sub_1883F8578();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;

  v25 = 0;
  while (v22)
  {
LABEL_18:
    v27 = *(v2 + 56);
    sub_1884F4574();
    v29 = v28[1];
    if ((v29 & 0xC000000000000001) != 0)
    {
      v31 = v28[2];
      v30 = v28[3];

      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *(v29 + 16);
    }

    v22 &= v22 - 1;
    if (v32)
    {
LABEL_36:

      return;
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      v33 = *(v48 + 64);
      v34 = *(v48 + 32);
      sub_1883F8578();
      v37 = v36 & v35;
      v39 = (v38 + 63) >> 6;

      v40 = 0;
      while (v37)
      {
LABEL_29:
        v42 = *(v48 + 56);
        sub_1884F4574();
        v44 = v43[3];
        if ((v44 & 0xC000000000000001) != 0)
        {
          v46 = v43[1];
          v45 = v43[2];
          if (v44 < 0)
          {
            v47 = v43[3];
          }

          else
          {
            v47 = v44 & 0xFFFFFFFFFFFFFF8;
          }

          __CocoaSet.count.getter();
          sub_1884F481C();
        }

        else
        {
          v47 = *(v44 + 16);
        }

        v37 &= v37 - 1;
        if (v47)
        {
          goto LABEL_36;
        }
      }

      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_40;
        }

        if (v41 >= v39)
        {
          goto LABEL_36;
        }

        v37 = *(v48 + 64 + 8 * v41);
        ++v40;
        if (v37)
        {
          v40 = v41;
          goto LABEL_29;
        }
      }
    }

    v22 = *(v2 + 64 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1884ED270(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 760) = v5;
  *(v6 + 752) = a5;
  *(v6 + 744) = a4;
  *(v6 + 736) = a3;
  *(v6 + 728) = a2;
  *(v6 + 957) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884ED2A4, v5, 0);
}

uint64_t sub_1884ED2A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__src, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_188417250();
  a31 = v36;
  a32 = v37;
  a30 = v32;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  sub_1883FDF6C();
  v38 = type metadata accessor for Logger();
  *(v32 + 768) = sub_1883FDE5C(v38, qword_1EA90C9F8);

  v39 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FB3A4();

  if (sub_1884F45BC())
  {
    v40 = *(v32 + 760);
    a10 = *(v32 + 744);
    v41 = *(v32 + 728);
    v42 = *(v32 + 957);
    sub_18840FB34();
    v35 = sub_18842D4DC();
    __src = v35;
    *v34 = 136315394;
    v43 = sub_1883FE43C();
    sub_1883FB598(v43, v44, v45, v46);
    sub_1883F9B0C();
    *(v34 + 4) = &unk_1886FA000;
    sub_1884F452C();
    v47 = sub_1884F2934();
    sub_1883FB598(v47, v48, v49, v50);
    sub_1883F9B0C();
    *(v34 + 14) = &unk_1886FA000;
    sub_1883FDDA4();
    _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
    swift_arrayDestroy();
    sub_1883FC7E4();
    sub_1883FD784();
  }

  v56 = *(v32 + 957);
  if (v56 == 2)
  {
    sub_1884008B4();

    v120 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();

    if (sub_1883F9084())
    {
      v121 = *(v32 + 760);
      v35 = *(v32 + 744);
      sub_18840FB34();
      sub_1883FEEE0();
      sub_18840531C();
      *v33 = 136315394;
      v122 = sub_1883FE43C();
      sub_1883FB598(v122, v123, v124, v125);
      sub_1883F9B0C();
      sub_1883FD7D8();
      v126 = sub_1883FF67C();
      sub_1883F4C5C(v126, v127, off_1E70B9FD0);
      sub_1884F448C();
      sub_1883F66E4(v128, v129, v130);
      v131 = sub_1884F4498();
      sub_1883FB598(v131, v132, v133, v134);
      sub_1883FE2FC();
      *(v33 + 14) = v35;
      sub_1883F831C();
      _os_log_impl(v135, v136, v137, v138, v139, 0x16u);
      sub_18840E7C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

    v140 = *(v32 + 744);
    if ((v140 & 0xC000000000000001) != 0)
    {
      if (v140 < 0)
      {
        v141 = *(v32 + 744);
      }

      __CocoaSet.makeIterator()();
      sub_1883F7FE4();
      sub_1883F4C5C(v142, v143, v144);
      sub_1883F7FE4();
      sub_1883F66E4(v145, v146, v147);
      sub_1883F84DC();
      Set.Iterator.init(_cocoa:)();
      result = *(v32 + 608);
      v149 = *(v32 + 616);
      v150 = *(v32 + 624);
      v151 = *(v32 + 632);
      v152 = *(v32 + 640);
    }

    else
    {
      v153 = -1 << *(v140 + 32);
      v149 = v140 + 56;
      v150 = ~v153;
      v154 = -v153;
      if (v154 < 64)
      {
        v155 = ~(-1 << v154);
      }

      else
      {
        v155 = -1;
      }

      v152 = v155 & *(v140 + 56);

      v151 = 0;
    }

    *(v32 + 864) = v150;
    *(v32 + 856) = v149;
    *(v32 + 848) = result;
    *(v32 + 880) = v152;
    *(v32 + 872) = v151;
    if (result < 0)
    {
      v161 = __CocoaSet.Iterator.next()();
      if (!v161)
      {
        goto LABEL_54;
      }

      v150 = v32 + 720;
      *(v32 + 720) = v161;
      sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
      sub_1883F84DC();
      swift_dynamicCast();
      v160 = *(v32 + 712);
      v157 = v151;
      v159 = v152;
    }

    else
    {
      v156 = v152;
      v157 = v151;
      if (!v152)
      {
        v158 = v151;
        while (1)
        {
          v157 = v158 + 1;
          if (__OFADD__(v158, 1))
          {
            break;
          }

          if (v157 >= ((v150 + 64) >> 6))
          {
            goto LABEL_54;
          }

          v156 = *(v149 + 8 * v157);
          ++v158;
          if (v156)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_61;
      }

LABEL_34:
      v159 = (v156 - 1) & v156;
      v160 = *(*(result + 48) + ((v157 << 9) | (8 * __clz(__rbit64(v156)))));
    }

    *(v32 + 904) = v159;
    *(v32 + 896) = v157;
    *(v32 + 888) = v160;
    if (v160)
    {
      v162 = v160;
      result = [v162 size];
      if ((result & 0x8000000000000000) == 0)
      {
        v163 = *(v32 + 752);
        v164 = [objc_opt_self() progressWithTotalUnitCount_];
        *(v32 + 912) = v164;
        v165 = v163;
        v166 = v162;
        v167 = v164;
        sub_1883F69F4(v165);
        sub_18840FC80();
        if (v168 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
        {
          v169 = *(v32 + 752);
        }

        else
        {
          v169 = *(v32 + 752);
          type metadata accessor for SyncEngine();
          sub_1883F84DC();
          v171 = v170;
          sub_1884E02F8();
          sub_188404258();

          sub_1883F60E8(v171, v35, v169);
        }

        sub_188412260();
        v191 = v190;
        v192 = v166;
        v193 = v167;
        swift_task_alloc();
        sub_1883FF2B8();
        *(v32 + 920) = v194;
        *v194 = v195;
        sub_18840DED4(v194);
        sub_18840562C();

        return sub_1884D1C14(v196);
      }

LABEL_61:
      __break(1u);
      return result;
    }

LABEL_54:
    v198 = *(v32 + 864);
    v199 = *(v32 + 856);
    v200 = *(v32 + 848);
    sub_1883F70C4();
    v201 = *(v32 + 768);
    sub_1884008B4();

    v202 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();

    if (sub_1883F9084())
    {
      v203 = *(v32 + 760);
      v204 = *(v32 + 744);
      sub_18840FB34();
      sub_1883FEEE0();
      sub_18840531C();
      *v150 = 136315394;
      v205 = sub_1883FE43C();
      sub_1883FB598(v205, v206, v207, v208);
      sub_1883F9B0C();
      sub_1883FD7D8();
      v209 = sub_1883FF67C();
      sub_1883F4C5C(v209, v210, off_1E70B9FD0);
      sub_1884F448C();
      sub_1883F66E4(v211, v212, v213);
      v214 = sub_1884F4498();
      sub_1883FB598(v214, v215, v216, v217);
      sub_1883FE2FC();
      *(v150 + 14) = v204;
      sub_1883F831C();
      _os_log_impl(v218, v219, v220, v221, v222, 0x16u);
      sub_18840E7C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

LABEL_57:
    sub_1883F90C4();
    sub_18840562C();

    return v225(v223, v224, v225, v226, v227, v228, v229, v230, a9, a10, __src, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  if (v56 != 1)
  {
    if (!*(v32 + 957))
    {
      sub_1884008B4();

      v57 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();

      if (sub_1883F9084())
      {
        v58 = *(v32 + 760);
        v59 = *(v32 + 728);
        sub_18840FB34();
        sub_1883FEEE0();
        sub_18840531C();
        *v33 = 136315394;
        v60 = sub_1883FE43C();
        sub_1883FB598(v60, v61, v62, v63);
        sub_1883F9B0C();
        sub_1883FD7D8();
        v64 = sub_1883FF67C();
        sub_1883F4C5C(v64, v65, off_1E70BA650);
        sub_1884F448C();
        sub_1883F66E4(v66, v67, v68);
        v69 = sub_1884F4498();
        sub_1883FB598(v69, v70, v71, v72);
        sub_1883FE2FC();
        *(v33 + 14) = v59;
        sub_1883F831C();
        _os_log_impl(v73, v74, v75, v76, v77, 0x16u);
        sub_18840E7C8();
        sub_1883FD784();
        sub_1883F82B8();
      }

      v78 = *(v32 + 752);
      v79 = sub_1883F5DF8(*(v32 + 728));
      *(v32 + 776) = v79;
      v80 = sub_1883FF67C();
      v82 = sub_1883F4C5C(v80, v81, off_1E70BA650);
      *(v32 + 784) = v82;
      *(v32 + 792) = sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
      v83 = v78;
      v84 = MEMORY[0x1E69E7CC0];
      sub_1883FF6E8();
      Dictionary.init(dictionaryLiteral:)();
      sub_1884F4810();

      *(v32 + 176) = v79;
      *(v32 + 184) = 1;
      *(v32 + 192) = v83;
      *(v32 + 200) = v84;
      *(v32 + 208) = v82;
      *(v32 + 216) = 1;
      *(v32 + 224) = 0;
      *(v32 + 232) = 0;
      *(v32 + 240) = 3;
      v85 = v83;
      sub_1883F697C(v32 + 176, v32 + 248);
      sub_1883F69F4(v85);
      sub_188404258();
      if (v86 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
      {
        v87 = *(v32 + 752);
      }

      else
      {
        v87 = *(v32 + 752);
        v88 = *(v32 + 176);
        v89 = *(v32 + 184);
        type metadata accessor for SyncEngine();
        __src = v88;
        LOBYTE(a12) = v89;

        v90 = sub_1883F6734(&__src);
        v92 = v91;

        sub_1883F60E8(v90, v92, v87);
      }

      v179 = *(v32 + 752);
      v180 = *(v32 + 744);
      v181 = *(v32 + 736);
      v182 = *(v32 + 728);
      sub_1883F7768(v32 + 176);

      v183 = sub_1884E48FC(v182, 0, v182, v181);
      v184 = sub_1884F49B8(v183);
      *(v32 + 800) = v184;

      *(v32 + 320) = v79;
      *(v32 + 328) = 1;
      *(v32 + 329) = *(v32 + 936);
      *(v32 + 332) = *(v32 + 939);
      *(v32 + 336) = v179;
      *(v32 + 344) = MEMORY[0x1E69E7CC0];
      *(v32 + 352) = v184;
      sub_1883F6188(1);
      *v185 = *(v32 + 950);
      *(v32 + 380) = *(v32 + 953);
      sub_1884F4918(3);
      *(v32 + 16) = 0;
      memcpy((v32 + 17), &__src, 0x4FuLL);
      memcpy((v32 + 96), (v32 + 16), 0x50uLL);
      sub_1883F697C(v32 + 320, v32 + 392);
      swift_task_alloc();
      sub_1883FF2B8();
      *(v32 + 808) = v186;
      *v186 = v187;
      v186[1] = sub_1884EDF04;
      v188 = *(v32 + 760);
      sub_18840562C();

      return sub_1883FA8A4();
    }

    goto LABEL_57;
  }

  sub_1884008B4();

  v93 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();

  if (sub_1883F9084())
  {
    v94 = *(v32 + 760);
    v95 = *(v32 + 728);
    sub_18840FB34();
    sub_1883FEEE0();
    sub_18840531C();
    *v33 = 136315394;
    v96 = sub_1883FE43C();
    sub_1883FB598(v96, v97, v98, v99);
    sub_1883F9B0C();
    sub_1883FD7D8();
    v100 = sub_1883FF67C();
    sub_1883F4C5C(v100, v101, off_1E70BA650);
    sub_1884F448C();
    sub_1883F66E4(v102, v103, v104);
    v105 = sub_1884F4498();
    sub_1883FB598(v105, v106, v107, v108);
    sub_1883FE2FC();
    *(v33 + 14) = v95;
    sub_1883F831C();
    _os_log_impl(v109, v110, v111, v112, v113, 0x16u);
    sub_18840E7C8();
    sub_1883FD784();
    sub_1883F82B8();
  }

  v114 = *(v32 + 752);
  v115 = sub_1883F5DF8(*(v32 + 728));
  *(v32 + 824) = v115;
  v116 = v114;
  sub_1883FEFE0();

  sub_1883F69F4(v114);
  sub_18840FC80();
  if (v117 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
  {
    v118 = *(v32 + 752);
  }

  else
  {
    v118 = *(v32 + 752);
    v119 = type metadata accessor for SyncEngine();
    __src = v115;
    LOBYTE(a12) = 1;

    sub_188413094(&__src);
    sub_1883F90D4();

    sub_1883F60E8(v119, v119, v118);
  }

  v172 = *(v32 + 752);
  *(v32 + 680) = 0;
  *(v32 + 688) = v115;
  *(v32 + 696) = 1;
  *(v32 + 704) = v172;

  v173 = v172;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v32 + 832) = v174;
  *v174 = v175;
  v174[1] = sub_1884EE1F8;
  v176 = *(v32 + 760);
  sub_18840562C();

  return sub_188413944(v177);
}

uint64_t sub_1884EDF04()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v2 + 808);
  *v4 = *v1;
  *(v3 + 816) = v0;

  v6 = *(v2 + 760);
  if (v0)
  {
    v7 = sub_1884EE934;
  }

  else
  {
    v7 = sub_1884EE024;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1884EE1F8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 832);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 840) = v0;

  v9 = *(v3 + 760);
  if (v0)
  {
    v10 = sub_1884EEB20;
  }

  else
  {
    v10 = sub_1884EE2F8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884EE2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v14 = v12[103];
  v15 = v12[94];
  swift_bridgeObjectRelease_n();

  v16 = v12[96];
  sub_1884008B4();

  v17 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();

  if (sub_1883F9084())
  {
    v18 = v12[95];
    v19 = v12[91];
    sub_18840FB34();
    sub_1883FEEE0();
    sub_1883FF2D4();
    *v13 = 136315394;
    v20 = sub_1883FE43C();
    sub_1883FC788(v20, v21, v22);
    sub_1883F9B0C();
    sub_1883FD7D8();
    v23 = sub_1883FF67C();
    sub_1883F4C5C(v23, v24, off_1E70BA650);
    sub_1884F448C();
    sub_1883F66E4(v25, v26, v27);
    v28 = sub_1884F4498();
    sub_1883FC788(v28, v29, v30);
    sub_1883FE2FC();
    *(v13 + 14) = v19;
    sub_1883F831C();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    sub_1884022C8();
    sub_1883FD784();
    sub_1883F82B8();
  }

  sub_1883F90C4();
  sub_1883F7E58();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_1884EE45C()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 920);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  *(v5 + 928) = v0;

  if (v0)
  {
    v11 = *(v5 + 760);
    v12 = sub_1884EECB4;
  }

  else
  {
    v13 = *(v5 + 760);

    v12 = sub_1884EE57C;
    v11 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

void sub_1884EE57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v15 = v12[114];
  v16 = v12[111];
  v17 = v12[94];

  v18 = v12[113];
  v19 = v12[112];
  v12[110] = v18;
  v12[109] = v19;
  v20 = v12[106];
  if (v20 < 0)
  {
    v25 = __CocoaSet.Iterator.next()();
    if (!v25)
    {
LABEL_19:
      v45 = v12[108];
      v46 = v12[107];
      v47 = v12[106];
      sub_1883F70C4();
      v48 = v12[96];
      sub_1884008B4();

      v49 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();

      if (sub_1883F9084())
      {
        v50 = v12[95];
        v51 = v12[93];
        sub_18840FB34();
        sub_1883FEEE0();
        sub_1883FF2D4();
        *v13 = 136315394;
        v52 = sub_1883FE43C();
        sub_1883FC788(v52, v53, v54);
        sub_1883F9B0C();
        sub_1883FD7D8();
        v55 = sub_1883FF67C();
        sub_1883F4C5C(v55, v56, off_1E70B9FD0);
        sub_1884F448C();
        sub_1883F66E4(v57, v58, v59);
        v60 = sub_1884F4498();
        sub_1883FC788(v60, v61, v62);
        sub_1883FE2FC();
        *(v13 + 14) = v51;
        sub_1883F831C();
        _os_log_impl(v63, v64, v65, v66, v67, 0x16u);
        sub_1884022C8();
        sub_1883FD784();
        sub_1883F82B8();
      }

      sub_1883F90C4();
      sub_1883F7E58();

      v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12);
      return;
    }

    v12[90] = v25;
    sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
    sub_1883F84DC();
    swift_dynamicCast();
    v24 = v12[89];
    v22 = v19;
    v13 = v18;
  }

  else
  {
    v21 = v18;
    v22 = v19;
    if (!v18)
    {
      v23 = v19;
      while (1)
      {
        v22 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v22 >= ((v12[108] + 64) >> 6))
        {
          goto LABEL_19;
        }

        v21 = *(v12[107] + 8 * v22);
        ++v23;
        if (v21)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_7:
    v13 = (v21 - 1) & v21;
    v24 = *(*(v20 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
  }

  v12[113] = v13;
  v12[112] = v22;
  v12[111] = v24;
  if (!v24)
  {
    goto LABEL_19;
  }

  v26 = v24;
  v27 = [v26 size];
  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v28 = v12[94];
  v29 = [objc_opt_self() progressWithTotalUnitCount_];
  v12[114] = v29;
  v30 = v28;
  v31 = v26;
  v32 = v29;
  sub_1883F69F4(v30);
  sub_18840FC80();
  if (v33 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
  {
    v34 = v12[94];
  }

  else
  {
    v34 = v12[94];
    type metadata accessor for SyncEngine();
    sub_1883F84DC();
    v36 = v35;
    sub_1884E02F8();
    sub_188404258();

    sub_1883F60E8(v36, v14, v34);
  }

  sub_188412260();
  v38 = v37;
  v39 = v31;
  v40 = v32;
  swift_task_alloc();
  sub_1883FF2B8();
  v12[115] = v41;
  *v41 = v42;
  sub_18840DED4();
  sub_1883F7E58();

  sub_1884D1C14(v43);
}

uint64_t sub_1884EE934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v15 = *(v14 + 816);
  v16 = *(v14 + 800);
  v17 = *(v14 + 776);
  v18 = *(v14 + 752);
  sub_1883FB300(v14 + 16);
  *(v14 + 464) = v17;
  *(v14 + 472) = 1;
  *(v14 + 473) = *(v14 + 936);
  *(v14 + 476) = *(v14 + 939);
  v19 = MEMORY[0x1E69E7CC0];
  *(v14 + 480) = v18;
  *(v14 + 488) = v19;
  *(v14 + 496) = v16;
  *(v14 + 504) = 1;
  sub_1883FA5AC((v14 + 505));
  *(v14 + 508) = v20;
  *(v14 + 512) = 0;
  *(v14 + 520) = 0;
  v21 = *(v14 + 950);
  *(v14 + 524) = *(v14 + 953);
  *(v14 + 521) = v21;
  *(v14 + 528) = 3;
  sub_1883F7768(v14 + 464);
  v22 = sub_18840EFC4(v15);
  v23 = *(v14 + 768);
  sub_1883FDF6C();

  v24 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FB3A4();

  if (sub_1884F45BC())
  {
    a10 = *(v14 + 792);
    v25 = *(v14 + 784);
    v26 = *(v14 + 760);
    v27 = *(v14 + 728);
    sub_18840FB34();
    a11 = sub_18842D4DC();
    *v16 = 136315394;
    v28 = sub_1883FE43C();
    sub_1883FB598(v28, v29, v30, v31);
    sub_1883FDE10();
    *(v16 + 4) = v22;
    sub_1884F452C();
    v32 = Set.description.getter();
    sub_1883FB598(v32, v33, v34, v35);
    sub_1883FDE10();
    *(v16 + 14) = v22;
    sub_1883FDDA4();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    sub_1884038F4();
    sub_1883FC7E4();
    sub_1883FD784();
  }

  sub_1883F7910();
  sub_1883FEB30();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884EEE84(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x50uLL);
  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_1884EEF28;

  return sub_1883FA8A4();
}

uint64_t sub_1884EEF28()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1883F816C();

    return v12();
  }
}

uint64_t sub_1884EF03C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1884061E0;

  return v6();
}

uint64_t sub_1884EF124(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  *v6 = v5;
  v6[1] = sub_188414BB4;

  return sub_188413944(v5 + 16);
}

uint64_t sub_1884EF1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884EF1F0, 0, 0);
}

uint64_t sub_1884EF43C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884EF534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1883FB4E4();
  sub_1883F653C();
  v12 = *(v10 + 72);
  v13 = *(v10 + 56);

  v14 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    v15 = *(v10 + 56);
    sub_1883F9984();
    sub_1883F8C00();
    sub_1883FF2D4();
    *v13 = 136315138;
    v16 = sub_1883FE43C();
    sub_1883FC788(v16, v17, v18);
    sub_1883FE2FC();
    *(v13 + 4) = v11;
    sub_1883F831C();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  *(v10 + 104) = 1;
  if (*(*(v10 + 56) + 168))
  {
    v24 = *(v10 + 64);
    sub_1883F7B88();
    v25 = swift_allocObject();
    *(v10 + 112) = v25;
    *(v25 + 16) = v24;
    v47 = sub_188442F84(&unk_1886FB1F0);
    v26 = v24;
    v27 = swift_task_alloc();
    v28 = sub_18840526C(v27);
    *v28 = v29;
    sub_188411084(v28);
    sub_1883F614C();

    return v32(v30, v31, v32, v33, v34, v35, v36, v37, v47, a10);
  }

  else
  {
    sub_1884F46E8();

    **(v10 + 48) = *(v10 + 104);
    sub_1883FDB48();
    sub_1883F614C();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
  }
}

uint64_t sub_1884EF6CC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884EF7CC()
{
  sub_1883F7120();
  sub_1884F46E8();

  **(v1 + 48) = *(v1 + 104);
  sub_1883FDB48();

  return v2();
}

uint64_t sub_1884EF834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v14 = *(v12 + 96);
  v15 = *(v12 + 72);
  v16 = *(v12 + 56);
  v17 = v14;
  v18 = sub_18840EFC4(v14);

  v19 = v18;
  v20 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_188405254();

  if (sub_1884F4988())
  {
    v21 = *(v12 + 56);
    v22 = sub_18840FB34();
    v23 = swift_slowAlloc();
    a10 = sub_1883FE540();
    *v22 = 136315394;
    v24 = sub_1883FE43C();
    sub_1883FC788(v24, v25, v26);
    sub_1884F44C0();
    *(v22 + 4) = v13;
    *(v22 + 12) = 2112;
    v27 = v19;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v28;
    *v23 = v28;
    sub_188410C98();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    sub_1883F9FEC(v23, &qword_1EA90DC70, &unk_1886FA190);
    sub_1884037D8();
    sub_188404FD4();
    sub_1883F82B8();
  }

  v34 = *(v12 + 96);
  v35 = v19;
  v36 = _convertErrorToNSError(_:)();

  ShouldDefer = CKErrorShouldDefer(v36);
  v38 = 1;
  if (ShouldDefer)
  {
    v38 = 2;
  }

  *(v12 + 104) = v38;
  if (*(*(v12 + 56) + 168))
  {
    v39 = *(v12 + 64);
    sub_1883F7B88();
    v40 = swift_allocObject();
    *(v12 + 112) = v40;
    *(v40 + 16) = v39;
    v62 = sub_188442F84(&unk_1886FB1F0);
    v41 = v39;
    v42 = swift_task_alloc();
    v43 = sub_18840526C(v42);
    *v43 = v44;
    sub_188411084(v43);
    sub_1883F7E58();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, v62, a10, a11, a12);
  }

  else
  {
    sub_1884F46E8();

    **(v12 + 48) = *(v12 + 104);
    sub_1883FDB48();
    sub_1883F7E58();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
  }
}

uint64_t sub_1884EFA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884F4450, 0, 0);
}

BOOL sub_1884EFAA0()
{
  if ([*(*(v0 + 128) + 16) hasPendingUntrackedChanges])
  {
    return 1;
  }

  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  v2 = *(v1 + 16);

  if (v2)
  {
    return 1;
  }

  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v5 = *(v4 + 16);

  return v5 != 0;
}

uint64_t sub_1884EFB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = *(*(sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884EFBFC, a4, 0);
}

uint64_t sub_1884EFBFC()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  static Clock<>.continuous.getter();
  sub_1883F7B10(&dword_1886FB5C0);
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1884EFCB4;
  v4 = *(v0 + 72);
  sub_1883FF484(500000000000000000);
  sub_1883F7FD8();

  return v6();
}

uint64_t sub_1884EFCB4()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  v9 = v2[5];
  if (v0)
  {

    v10 = *(v7 + 8);
  }

  else
  {
    v13 = *(v7 + 8);
  }

  v11 = sub_1883FB5D4();
  v12(v11);
  sub_1884022BC();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1884EFE40()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask);
  *(v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask) = 0;

  v4 = OBJC_IVAR____TtC8CloudKit10SyncEngine_earliestStartDateForSchedulerActivities;
  sub_1883FF050();
  swift_beginAccess();
  sub_18841D168(v1 + v4, v2, &unk_1EA90D7B0, &dword_1886F8780);
  v5 = swift_task_alloc();
  v6 = sub_1884F461C(v5);
  *v6 = v7;
  v6[1] = sub_1884EFF24;
  v8 = *(v0 + 40);
  sub_1883FF484(*(v0 + 48));

  return sub_18840EDE4();
}

uint64_t sub_1884EFF24()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[11];
  v3 = v1[9];
  v4 = v1[6];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  sub_1883F9FEC(v4, &unk_1EA90D7B0, &dword_1886F8780);

  sub_1883F816C();

  return v7();
}

uint64_t sub_1884F0054()
{
  sub_1883F7120();
  *(v1 + 592) = v0;
  *(v1 + 584) = v2;
  *(v1 + 760) = v3;
  *(v1 + 576) = v4;
  *(v1 + 568) = v5;
  *(v1 + 560) = v6;
  *(v1 + 552) = v7;
  v8 = sub_18844E6FC(&qword_1EA90E548, &qword_1886FB5F8);
  *(v1 + 600) = v8;
  sub_1883F8620(v8);
  *(v1 + 608) = v9;
  v11 = *(v10 + 64);
  *(v1 + 616) = sub_188403038();
  v12 = type metadata accessor for Date();
  *(v1 + 624) = v12;
  sub_1883F8620(v12);
  *(v1 + 632) = v13;
  v15 = *(v14 + 64);
  *(v1 + 640) = sub_188406FFC();
  *(v1 + 648) = swift_task_alloc();
  *(v1 + 656) = swift_task_alloc();
  *(v1 + 664) = swift_task_alloc();
  *(v1 + 672) = swift_task_alloc();
  *(v1 + 680) = swift_task_alloc();
  v16 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v16);
  v18 = *(v17 + 64);
  *(v1 + 688) = sub_188406FFC();
  *(v1 + 696) = swift_task_alloc();
  *(v1 + 704) = swift_task_alloc();
  *(v1 + 712) = swift_task_alloc();
  *(v1 + 720) = swift_task_alloc();
  *(v1 + 728) = swift_task_alloc();
  *(v1 + 736) = swift_task_alloc();
  v19 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1884F0218()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 592);
  v3 = *v0;
  sub_1883F7110();
  *v5 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1884F02FC, v4, 0);
}

uint64_t sub_1884F02FC()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 736);

  sub_1883F9FEC(v2, &unk_1EA90D7B0, &dword_1886F8780);
  sub_1883FAAE4();
  v5 = *(v0 + 640);
  v6 = *(v0 + 616);

  sub_1883F816C();

  return v3();
}

void sub_1884F041C(uint64_t a1, void *a2)
{
  v6[1] = a2;
  v3 = sub_1883F4C9C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x18CFD59D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_188406C1C(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1884F04DC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_188420364(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1884F05E0(uint64_t a1)
{
  sub_188400B68((a1 + 32), *(a1 + 56));

  return sub_1884E5084();
}

uint64_t sub_1884F0610()
{
  sub_1883F78E0();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = v3[6];
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[3];
  v8 = *v0;
  sub_1883F7110();
  *v9 = v8;
  *(v11 + 56) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1884F0750, v7, 0);
}

uint64_t sub_1884F0774()
{
  sub_1883F7120();
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 56);
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;

  if (v0)
  {
  }

  v5 = *MEMORY[0x1E69E9840];
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884F08A8()
{
  sub_1883F78E0();
  v5 = *MEMORY[0x1E69E9840];
  v1 = v0[3].opaque[0];
  v2 = v0[2].opaque[0];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1884F0950, v2, 0);
}

uint64_t sub_1884F0950()
{
  sub_1883F7120();
  v3 = *MEMORY[0x1E69E9840];
  sub_1883F816C();
  v1 = *MEMORY[0x1E69E9840];

  return v0();
}

uint64_t sub_1884F09CC()
{
  sub_1883F7120();
  v4 = *MEMORY[0x1E69E9840];
  v1 = v0[3].opaque[0];
  os_activity_scope_leave(v0 + 1);
  v2 = *MEMORY[0x1E69E9840];

  return swift_unknownObjectRelease();
}

uint64_t sub_1884F0A4C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  v6 = v2[62];
  v7 = v2[61];
  v8 = v2[60];
  if (v0)
  {
  }

  (*(v7 + 8))(v6, v8);
  sub_1883F7FD8();
  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884F0BCC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t __src, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  sub_188417250();
  a31 = v33;
  a32 = v34;
  a30 = v32;
  v35 = v32[59];
  v36 = sub_1883F57B8();
  v32[64] = v36;
  sub_1883FEB90();
  sub_1883F60E8(0xD000000000000026, v37, v36);
  sub_1883F7FE4();
  sub_1883F4C5C(v38, v39, v40);
  sub_1883F7FE4();
  sub_1883F66E4(v41, v42, v43);
  v44 = v36;
  v45 = MEMORY[0x1E69E7CC0];
  v46 = Dictionary.init(dictionaryLiteral:)();

  v32[22] = 0;
  *(v32 + 184) = 2;
  v47 = v32 + 66;
  v48 = (v32 + 542);
  v32[24] = v44;
  v32[25] = v45;
  v32[26] = v46;
  *(v32 + 216) = 1;
  v32[28] = 0;
  *(v32 + 232) = 0;
  v32[30] = 3;
  v49 = v44;
  sub_1883F697C((v32 + 22), (v32 + 31));
  sub_1883F69F4(v49);
  sub_188404258();
  if (v50 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    v51 = v32[22];
    v52 = *(v32 + 184);
    type metadata accessor for SyncEngine();
    __src = v51;
    a13 = v52;
    v47 = v32 + 66;

    v48 = (v32 + 542);
    v53 = sub_1883F6734(&__src);
    v55 = v54;

    v56 = v55;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1883F60E8(v53, v56, v49);
  }

  sub_1883F7768((v32 + 22));
  v32[40] = 0;
  *(v32 + 328) = 2;
  *(v32 + 329) = *v47;
  *(v32 + 83) = *(v47 + 3);
  v32[42] = v49;
  v32[43] = v45;
  v32[44] = v46;
  sub_1883F6188(1);
  v57 = *v48;
  *(v32 + 95) = *(v48 + 3);
  *v58 = v57;
  sub_1884F4918(3);
  *(v32 + 16) = 0;
  memcpy(v32 + 17, &__src, 0x4FuLL);
  memcpy(v32 + 12, v32 + 2, 0x50uLL);
  sub_1883F697C((v32 + 40), (v32 + 49));
  swift_task_alloc();
  sub_1883FF2B8();
  v32[65] = v59;
  *v59 = v60;
  v59[1] = sub_1884F0E88;
  v61 = v32[58];
  sub_18840562C();

  return sub_1883FA8A4();
}

uint64_t sub_1884F0E88()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = *(v2 + 520);
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  if (v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884F0F8C()
{
  sub_1883F7120();

  sub_1883F7768(v0 + 320);
  sub_1883FB300(v0 + 16);
  v1 = *(v0 + 496);

  sub_1883FDB48();

  return v2();
}

uint64_t sub_1884F0FFC()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884F10E4()
{
  sub_1883F7120();
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  **(v0 + 16) = *(v0 + 72);
  sub_1883F816C();

  return v2();
}

uint64_t sub_1884F1148()
{
  v1 = v0;
  swift_beginAccess();
  sub_18841D168(v0 + 288, aBlock, &qword_1EA90DD10, &qword_1886F8770);
  v2 = ObjectType;
  result = sub_1883F9FEC(aBlock, &qword_1EA90DD10, &qword_1886F8770);
  if (!v2)
  {
    if (qword_1EA90C9F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1883FDE5C(v4, qword_1EA90C9F8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136315138;
      v9 = sub_1883FE43C();
      v11 = sub_1883FE340(v9, v10, aBlock);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1883EA000, v5, v6, "%s starting to listen for identity updates", v7, 0xCu);
      sub_1883FE944(v8);
      MEMORY[0x18CFD7E80](v8, -1, -1);
      MEMORY[0x18CFD7E80](v7, -1, -1);
    }

    *(v0 + 282) = 1;
    v12 = [objc_opt_self() defaultCenter];
    v17 = sub_1884F35FC;
    v18 = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1884F17E8;
    ObjectType = &unk_1EFA2C1A8;
    v13 = _Block_copy(aBlock);

    v14 = [v12 addObserverForName:@"CKIdentityUpdateNotification" object:0 queue:0 usingBlock:v13];
    _Block_release(v13);

    ObjectType = swift_getObjectType();
    aBlock[0] = v14;
    swift_beginAccess();
    sub_188436394(aBlock, v1 + 288, &qword_1EA90DD10, &qword_1886F8770);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1884F1424(uint64_t a1, uint64_t a2)
{
  v3 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1883FDE5C(v7, qword_1EA90C9F8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = sub_1883FE43C();
    v14 = sub_1883FE340(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1883EA000, v8, v9, "%s received identity update while waiting", v10, 0xCu);
    sub_1883FE944(v11);
    MEMORY[0x18CFD7E80](v11, -1, -1);
    MEMORY[0x18CFD7E80](v10, -1, -1);
  }

  v15 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;

  sub_188453610();
}

uint64_t sub_1884F165C()
{
  sub_1883F7120();
  v1 = *(v0 + 16);
  sub_1884F16B8();
  sub_1884E5EAC();
  sub_1883F816C();

  return v2();
}

uint64_t sub_1884F16B8()
{
  swift_beginAccess();
  sub_18841D168(v0 + 288, &v3, &qword_1EA90DD10, &qword_1886F8770);
  if (!*(&v4 + 1))
  {
    return sub_1883F9FEC(&v3, &qword_1EA90DD10, &qword_1886F8770);
  }

  sub_188419138(&v3, v5);
  *(v0 + 282) = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_188436394(&v3, v0 + 288, &qword_1EA90DD10, &qword_1886F8770);
  swift_endAccess();
  v1 = [objc_opt_self() defaultCenter];
  sub_188400B68(v5, v6);
  [v1 removeObserver_];

  swift_unknownObjectRelease();
  return sub_1883FE944(v5);
}

uint64_t sub_1884F17E8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1884F18DC(uint64_t a1)
{
  v1 = *(a1 + 128);
  result = sub_18850BCF0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    if ([result accountStatus] == 3)
    {

      return 0;
    }

    else
    {
      v6 = [v4 accountStatus];

      if (v6 != 1 || v5 == 0)
      {

        return 0;
      }

      else
      {

        return 1;
      }
    }
  }

  return result;
}

void sub_1884F19E4()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  memset(v57, 0, 96);
  sub_1883F9FEC(v57, &unk_1EA90E4D0, &unk_1886FB460);
  memcpy(v3 + 3, v1, 0x60uLL);
  sub_18844E6FC(&qword_1EA90E588, &qword_1886FB738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886FB560;
  *(inited + 32) = 0x6867694879726576;
  *(inited + 40) = 0xE800000000000000;
  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v5 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v6 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1883FF3F4();
  *(inited + 48) = 0;
  *(inited + 56) = v5;
  *(inited + 64) = v8;
  *(inited + 72) = v6;
  *(inited + 80) = 1751607656;
  *(inited + 88) = 0xE400000000000000;
  if (sub_1883F4C9C(v7))
  {
    v9 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v10 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  v11 = sub_1883FF3F4();
  *(inited + 96) = 0;
  *(inited + 104) = v9;
  *(inited + 112) = v11;
  *(inited + 120) = v10;
  *(inited + 128) = 0x6C616D726F6ELL;
  *(inited + 136) = 0xE600000000000000;
  if (sub_1883F4C9C(v7))
  {
    v12 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v13 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v14 = sub_1883FF3F4();
  *(inited + 144) = 0;
  *(inited + 152) = v12;
  *(inited + 160) = v14;
  *(inited + 168) = v13;
  *(inited + 176) = 7827308;
  *(inited + 184) = 0xE300000000000000;
  if (sub_1883F4C9C(v7))
  {
    v15 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v16 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v17 = sub_1883FF3F4();
  *(inited + 192) = 0;
  *(inited + 200) = v15;
  *(inited + 208) = v17;
  *(inited + 216) = v16;
  *(inited + 224) = 0x776F4C79726576;
  *(inited + 232) = 0xE700000000000000;
  if (sub_1883F4C9C(v7))
  {
    v18 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v19 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1883FF3F4();
  *(inited + 240) = 0;
  *(inited + 248) = v18;
  *(inited + 256) = v20;
  *(inited + 264) = v19;
  sub_1884F3F44();
  *v3 = Dictionary.init(dictionaryLiteral:)();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1886FB560;
  *(v21 + 32) = 0x6867694879726576;
  *(v21 + 40) = 0xE800000000000000;
  if (sub_1883F4C9C(v7))
  {
    v22 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v23 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1883FF548();
  *(v21 + 48) = 1;
  *(v21 + 56) = v22;
  *(v21 + 64) = v25;
  *(v21 + 72) = v23;
  *(v21 + 80) = 1751607656;
  *(v21 + 88) = 0xE400000000000000;
  if (sub_1883F4C9C(v24))
  {
    v26 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v27 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CD0];
  }

  v28 = sub_1883FF548();
  *(v21 + 96) = 1;
  *(v21 + 104) = v26;
  *(v21 + 112) = v28;
  *(v21 + 120) = v27;
  *(v21 + 128) = 0x6C616D726F6ELL;
  *(v21 + 136) = 0xE600000000000000;
  if (sub_1883F4C9C(v24))
  {
    v29 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v30 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CD0];
  }

  v31 = sub_1883FF548();
  *(v21 + 144) = 1;
  *(v21 + 152) = v29;
  *(v21 + 160) = v31;
  *(v21 + 168) = v30;
  *(v21 + 176) = 7827308;
  *(v21 + 184) = 0xE300000000000000;
  if (sub_1883F4C9C(v24))
  {
    v32 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v33 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CD0];
  }

  v34 = sub_1883FF548();
  *(v21 + 192) = 1;
  *(v21 + 200) = v32;
  *(v21 + 208) = v34;
  sub_1884F4794();
  *(v21 + 216) = v33;
  *(v21 + 224) = v35;
  *(v21 + 232) = 0xE700000000000000;
  if (sub_1883F4C9C(v24))
  {
    v36 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v37 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
  }

  v38 = sub_1883FF548();
  *(v21 + 240) = 1;
  *(v21 + 248) = v36;
  *(v21 + 256) = v38;
  *(v21 + 264) = v37;
  v3[1] = Dictionary.init(dictionaryLiteral:)();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1886FB560;
  *(v39 + 32) = 0x6867694879726576;
  *(v39 + 40) = 0xE800000000000000;
  if (sub_1883F4C9C(v24))
  {
    v40 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v41 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CD0];
  }

  v42 = MEMORY[0x1E69E7CC0];
  v43 = sub_1883FF3F4();
  *(v39 + 48) = 2;
  *(v39 + 56) = v40;
  *(v39 + 64) = v43;
  *(v39 + 72) = v41;
  *(v39 + 80) = 1751607656;
  *(v39 + 88) = 0xE400000000000000;
  if (sub_1883F4C9C(v42))
  {
    v44 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v44 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v45 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CD0];
  }

  v46 = sub_1883FF3F4();
  *(v39 + 96) = 2;
  *(v39 + 104) = v44;
  *(v39 + 112) = v46;
  *(v39 + 120) = v45;
  *(v39 + 128) = 0x6C616D726F6ELL;
  *(v39 + 136) = 0xE600000000000000;
  if (sub_1883F4C9C(v42))
  {
    v47 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v47 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v48 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CD0];
  }

  v49 = sub_1883FF3F4();
  *(v39 + 144) = 2;
  *(v39 + 152) = v47;
  *(v39 + 160) = v49;
  *(v39 + 168) = v48;
  *(v39 + 176) = 7827308;
  *(v39 + 184) = 0xE300000000000000;
  if (sub_1883F4C9C(v42))
  {
    v50 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v50 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v51 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CD0];
  }

  v52 = sub_1883FF3F4();
  *(v39 + 192) = 2;
  *(v39 + 200) = v50;
  *(v39 + 208) = v52;
  sub_1884F4794();
  *(v39 + 216) = v51;
  *(v39 + 224) = v53;
  *(v39 + 232) = 0xE700000000000000;
  if (sub_1883F4C9C(v42))
  {
    v54 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v54 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v55 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v55 = MEMORY[0x1E69E7CD0];
  }

  v56 = Dictionary.init(dictionaryLiteral:)();
  *(v39 + 240) = 2;
  *(v39 + 248) = v54;
  *(v39 + 256) = v56;
  *(v39 + 264) = v55;
  v3[2] = Dictionary.init(dictionaryLiteral:)();
  sub_1883F8178();
}

uint64_t sub_1884F2304(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 32))
  {
    memcpy(__dst, (a2 + 24), sizeof(__dst));
    v4 = __dst[0];
    v3 = __dst[1];
    v5 = __dst[3];
    v6 = __dst[4];
    v7 = __dst[6];
    v30 = __dst[5];
    v31 = __dst[2];
    v8 = __dst[9];
    if (*(__dst[9] + 16))
    {
      v9 = __dst[11];

      v10 = v9;
      v2 = v32;
      sub_188486310();
      if (v12)
      {
        v13 = *(v8 + 56) + 56 * v11;
        v4 = *v13;
        v3 = *(v13 + 8);
        v14 = *(v13 + 16);
        v5 = *(v13 + 24);
        v15 = *(v13 + 32);
        v16 = *(v13 + 40);
        v7 = *(v13 + 48);

        sub_1883F9FEC(__dst, &unk_1EA90E4D0, &unk_1886FB460);
        if ((v15 & 1) == 0)
        {
          goto LABEL_15;
        }

        v30 = v16;
        v31 = v14;
        v2 = v32;
      }

      else
      {

        sub_1883F9FEC(__dst, &unk_1EA90E4D0, &unk_1886FB460);
        if ((v6 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {

      if ((v6 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v30 = 0xD000000000000012;
    v4 = 0x6C616D726F6ELL;
    v5 = 0xE600000000000000;
    swift_bridgeObjectRelease_n();
    v7 = 0x8000000188702670;

    v3 = 0xE600000000000000;
    v31 = 0x6C616D726F6ELL;
  }

  v18 = sub_1884E4C40(__dst, v4, v3);
  if (*(v17 + 8))
  {
    v19 = v17;
    v20 = v2;
    sub_188406C1C(&v34, v20);

    v21 = *(v19 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v19 + 16);
    sub_1884AF5D4(v30, v7, v20, isUniquelyReferenced_nonNull_native);
    *(v19 + 16) = v34;
  }

  (v18)(__dst, 0);

  v24 = sub_1884E4C40(__dst, v31, v5);
  if (*(v23 + 8))
  {
    v25 = v23;
    v26 = v32;
    sub_188406C1C(&v34, v26);

    v27 = *(v25 + 16);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v25 + 16);
    sub_1884AF5D4(0xD000000000000012, 0x8000000188702670, v26, v28);
    *(v25 + 16) = v34;
  }

  (v24)(__dst, 0);
LABEL_15:
}

void sub_1884F2660(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 recordID];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 zoneID];

    if (v6)
    {
      if (a2[4])
      {
        memcpy(__dst, a2 + 3, sizeof(__dst));
        v7 = __dst[4];
        v8 = __dst[9];
        if (*(__dst[9] + 16))
        {
          v9 = v6;
          v10 = __dst[11];

          v11 = v10;
          v6 = v9;
          sub_188486310();
          if (v13)
          {
            v14 = *(v8 + 56) + 56 * v12;
            v15 = *(v14 + 8);
            v16 = *(v14 + 24);
            v7 = *(v14 + 32);
            v17 = *(v14 + 48);
          }

          sub_1883F9FEC(__dst, &unk_1EA90E4D0, &unk_1886FB460);
        }

        else
        {
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v18 = 0x6C616D726F6ELL;
      if (a2[4] && (v19 = a2[13], *(v19 + 16)))
      {
        v20 = v3;
        sub_18848655C();
        if (v22)
        {
          v23 = (*(v19 + 56) + 16 * v21);
          v18 = *v23;
          v24 = v23[1];
        }

        else
        {
          v24 = 0xE600000000000000;
        }
      }

      else
      {
        v24 = 0xE600000000000000;
      }

      v25 = v3;
      v26 = sub_1884E4C40(__dst, v18, v24);
      if (*(v27 + 8))
      {
        sub_188501350(&v29, v25);
      }

      (v26)(__dst, 0);

LABEL_22:
    }
  }
}

uint64_t sub_1884F2934()
{
  _StringGuts.grow(_:)(37);
  MEMORY[0x18CFD5140](60, 0xE100000000000000);
  MEMORY[0x18CFD5140](0x69746341636E7953, 0xEA00000000006E6FLL);
  MEMORY[0x18CFD5140](0x707954636E797320, 0xEA00000000003D65);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](0x734449656E6F7A20, 0xE90000000000003DLL);
  v0 = sub_1883FF67C();
  sub_1883F4C5C(v0, v1, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883FB5D4();
  v2 = Set.description.getter();
  MEMORY[0x18CFD5140](v2);

  MEMORY[0x18CFD5140](0x3D73746573736120, 0xE800000000000000);
  v3 = sub_1883FF67C();
  sub_1883F4C5C(v3, v4, off_1E70B9FD0);
  sub_1883F66E4(&unk_1EA90C680, &qword_1EA90C690, off_1E70B9FD0);
  v5 = Set.description.getter();
  MEMORY[0x18CFD5140](v5);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1884F2B04()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 3);
  v3 = *v0;
  return sub_1884F2934();
}

id sub_1884F2B14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x18CFD5010]();

  v8 = [v4 initWithIdentifier:v7 container:a3 priority:a4];

  return v8;
}

uint64_t sub_1884F2B88(uint64_t result, uint64_t a2)
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
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1884F2D30()
{
  sub_1883F7120();
  v2 = v0[10];
  v1 = v0[11];

  sub_1883F816C();
  v4 = v0[15];

  return v3();
}

void (*sub_1884F2D94(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = sub_188470D2C(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1884F30E8(v7);
  v7[9] = sub_1884F2E8C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1884F2E2C;
}

void sub_1884F2E2C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1884F2E8C(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  v10 = sub_188470D2C(0x48uLL);
  *a1 = v10;
  *(v10 + 5) = a3;
  *(v10 + 6) = v4;
  *(v10 + 4) = a2;
  v11 = *v4;
  v12 = sub_188420F2C(a2, a3);
  v10[64] = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  sub_18844E6FC(&qword_1EA90E580, &qword_1886FB728);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v16))
  {
    v19 = *v5;
    v20 = sub_188420F2C(a2, a3);
    if ((v18 & 1) == (v21 & 1))
    {
      v17 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v10 + 7) = v17;
  if (v18)
  {
    v22 = (*(*v5 + 56) + 32 * v17);
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 3);
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v24 = 0uLL;
  }

  *v10 = v23;
  *(v10 + 8) = v24;
  *(v10 + 3) = v25;
  return sub_1884F2FE8;
}

void sub_1884F2FE8()
{
  sub_1883F8AF0();
  v1 = *v0;
  v2 = **v0;
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v6 = *(*v0 + 64);
  if (v3)
  {
    v7 = v1[7];
    v8 = *v1[6];
    if (v6)
    {
      v9 = *(v8 + 56) + 32 * v7;
      *v9 = v2;
      *(v9 + 8) = v3;
      *(v9 + 16) = v4;
      *(v9 + 24) = v5;
    }

    else
    {
      sub_1884AFAB8(v7, v1[4], v1[5], v2, v3, v4, v5, v8);
    }
  }

  else if ((*v0)[8])
  {
    sub_1884F3EF0(*(*v1[6] + 48) + 16 * v1[7]);
    sub_1884F3F44();
    sub_1883F712C();
    _NativeDictionary._delete(at:)();
  }

  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = sub_1884F4640();
  sub_1884F3EA0(v14, v15);
  v16 = sub_1883F712C();
  sub_1884F3A8C(v16, v17);
  sub_1883F8178();

  free(v18);
}

uint64_t (*sub_1884F30E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1884F3110;
}

Swift::Int sub_1884F311C(uint64_t a1)
{
  v1 = a1;
  if (sub_1883F4C9C(a1))
  {
    sub_18844E6FC(&qword_1EA90E598, &qword_1886FB740);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1883F4C9C(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_188426C84(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x18CFD59D0](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(*(v2 + 40));
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

Swift::Int sub_1884F32E0(uint64_t a1)
{
  v1 = a1;
  if (sub_1883F4C9C(a1))
  {
    sub_18844E6FC(&qword_1EA90E590, &qword_1886FBD30);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1883F4C9C(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_188426C84(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x18CFD59D0](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(*(v2 + 40));
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1884F34A4(void *a1)
{
  v1 = [a1 relatedApplicationBundleIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1884F34FC(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setRelatedApplicationBundleIdentifiers_];
}

uint64_t sub_1884F3568()
{
  sub_1883F78E0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1883F7E38(v4);
  *v5 = v6;
  v7 = sub_1883FF1B4(v5);

  return sub_1884EFB00(v7, v8, v9, v10);
}

uint64_t sub_1884F3604()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1883F7E80();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1884F3640()
{
  sub_1883F78E0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1883F7E38(v4);
  *v5 = v6;
  v7 = sub_1883FF1B4(v5);

  return sub_1884F163C(v7, v8, v9, v10);
}

uint64_t sub_1884F3700()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  v2 = sub_1883FDA74(v1);
  *v2 = v3;
  v2[1] = sub_1884F4440;
  v4 = sub_1883FE860();

  return sub_1884E61F4(v4, v0);
}

uint64_t sub_1884F378C()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  v2 = sub_1883FDA74(v1);
  *v2 = v3;
  v2[1] = sub_1884F3818;
  v4 = sub_1883FE860();

  return sub_1884E6F38(v4, v0);
}

uint64_t sub_1884F3818()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1884F4454();

  return v6(v5);
}

uint64_t sub_1884F38FC()
{
  sub_1883F78E0();
  sub_1883F877C();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  v5 = sub_188428FFC(v3);

  return sub_1884EFA7C(v5, v6, v1);
}

uint64_t sub_1884F3990()
{
  sub_1883F78E0();
  sub_1883F877C();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  v5 = sub_188428FFC(v3);

  return sub_1884E7968(v5, v6, v1);
}

uint64_t sub_1884F3A8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1884F3ADC()
{
  sub_1883F78E0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 120);
  v3 = swift_task_alloc();
  v4 = sub_1883FDA74(v3);
  *v4 = v5;
  v6 = sub_188410210(v4);

  return sub_1884EC3C4(v6, v7, v2);
}

uint64_t sub_1884F3B70()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1884F47C8();

  return v6(v5);
}

uint64_t sub_1884F3C58()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_1884F3CE8()
{
  sub_1883F78E0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 120);
  v3 = swift_task_alloc();
  v4 = sub_1883FDA74(v3);
  *v4 = v5;
  v6 = sub_188410210(v4);

  return sub_1884ECA7C(v6, v7, v2);
}

uint64_t sub_1884F3D7C()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {

    v2 = *(v0 + 40);

    v3 = *(v0 + 48);
  }

  if (*(v0 + 64))
  {

    v4 = *(v0 + 72);

    v5 = *(v0 + 80);
  }

  if (*(v0 + 96))
  {

    v6 = *(v0 + 104);

    v7 = *(v0 + 112);
  }

  sub_1883FA718();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_1884F3E0C()
{
  sub_1883F78E0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 120);
  v3 = swift_task_alloc();
  v4 = sub_1883FDA74(v3);
  *v4 = v5;
  v6 = sub_188410210(v4);

  return sub_1884ECB84(v6, v7, v2);
}

uint64_t sub_1884F3EA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1884F3F44()
{
  result = qword_1EA90C740;
  if (!qword_1EA90C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C740);
  }

  return result;
}

uint64_t sub_1884F3F98()
{
  sub_1883F7120();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1883FDA74(v2);
  *v3 = v4;
  v5 = sub_188410210(v3);

  return sub_1884EEE84(v5, v6);
}

uint64_t sub_1884F401C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_1884F40AC()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = sub_1883FDA74(v6);
  *v7 = v8;
  v7[1] = sub_188442BE4;
  sub_1883FE860();
  sub_188404D5C();

  return sub_1884EF124(v9, v10, v11, v12, v13);
}

uint64_t sub_1884F4164(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1884F41B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1884F423C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1884F427C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s10SyncActionV8SyncTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1884F43D8()
{
  result = qword_1EA90E5A0;
  if (!qword_1EA90E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E5A0);
  }

  return result;
}

void sub_1884F4470()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1884F4498()
{

  return Set.description.getter();
}

uint64_t sub_1884F44C0()
{
}

uint64_t sub_1884F44D8()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;
  return v1;
}

uint64_t sub_1884F44F4()
{
  v2 = *(v0 + 592);
  v3 = *(v0 + 560);

  return type metadata accessor for Logger();
}

uint64_t sub_1884F4538(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1883FE340(a1, a2, va);
}

void *sub_1884F455C(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x50uLL);
}

void *sub_1884F4594()
{
  v2[587] = v1;
  v2[588] = v0;

  return memcpy(v2 + v3, v2 + 737, 0x50uLL);
}

BOOL sub_1884F45BC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1884F45D4(uint64_t a1, unint64_t a2)
{

  return sub_1883FE340(a1, a2, (v2 - 88));
}

void sub_1884F464C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void *sub_1884F4664(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __src)
{

  return memcpy((v23 + v24), &__src, 0x60uLL);
}

uint64_t sub_1884F4680()
{
  v2 = *(v0 + 592);
  v3 = *(v0 + 560);

  return type metadata accessor for Logger();
}

uint64_t sub_1884F469C()
{
  v2 = *(v0 + 592);
  v3 = *(v0 + 560);

  return type metadata accessor for Logger();
}

uint64_t sub_1884F46B8(float a1)
{
  *v1 = a1;

  return sub_1883FE43C();
}

uint64_t sub_1884F46D0()
{
}

uint64_t sub_1884F46E8()
{
  v2 = *(v0 + 80);

  return swift_bridgeObjectRelease_n();
}

void *sub_1884F4704()
{

  return memcpy(v0, (v1 + 2488), 0x78uLL);
}

uint64_t sub_1884F4720(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18841D168(v4 + v5, v4 + 4024, a3, v3);
}

void sub_1884F473C()
{

  sub_1884EBFD0((v0 + 5464));
}

uint64_t sub_1884F4758()
{
  *(v0 + 120) = v1;

  return swift_task_alloc();
}

uint64_t sub_1884F4828(uint64_t result, uint64_t a2)
{
  v2[4] = result;
  v2[5] = a2;
  v2[6] = 0xD000000000000012;
  return result;
}

uint64_t sub_1884F4878()
{

  return sub_1883F9FEC(v0 + v3, v1, v2);
}

uint64_t sub_1884F4898()
{

  return sub_1883F9FEC(v2 + v3, v1, v0);
}

void sub_1884F48B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1884F48D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

void sub_1884F48F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

void *sub_1884F4918@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 384) = a1;

  return memcpy((v1 | 7), (v2 + 320), 0x48uLL);
}

uint64_t sub_1884F4938()
{
  *(v2 + 2912) = v1;
  *(v2 + 2920) = v0;

  return sub_1884F3A24(v2 + 2808, v2 + 2968);
}

void *sub_1884F4958(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char __src)
{

  return memcpy(a1, &__src, 0x60uLL);
}

BOOL sub_1884F4970()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_1884F4988()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1884F49A0()
{
}

uint64_t sub_1884F49B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18844E6FC(&qword_1EA90E5C8, &qword_1886FE120);
    sub_1883F9598();
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1884F9088(v2, 1, &v4);

  return v4;
}

uint64_t sub_1884F4A68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18844E6FC(&qword_1EA90E5B8, &qword_1886FBA50);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v4 = v2;
  sub_1884F937C(a1, 1, &v4);
  return v4;
}

uint64_t sub_1884F4B10()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v3 = v0[54];
  sub_1883FC800();
  v4 = sub_18840EFC4(v3);
  v0[61] = v4;
  v5 = v4;
  v6 = sub_18841BAF0();
  sub_18840F1E8(v6);

  if (v2 == 1)
  {
    v7 = swift_task_alloc();
    v8 = sub_1883FE86C(v7);
    *v8 = v9;
    sub_1883F7D78(v8);
    sub_188404D5C();

    return sub_1884115F4();
  }

  else
  {

    v0[57] = v4;
    v12 = swift_task_alloc();
    v13 = sub_18840DF00(v12);
    *v13 = v14;
    sub_1883F9E98(v13);
    sub_188405328();
    sub_188404D5C();

    return sub_18840E178();
  }
}

uint64_t sub_1884F4C08()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v3 = v0[56];
  sub_1883FC800();
  v4 = sub_18840EFC4(v3);
  v0[61] = v4;
  v5 = v4;
  v6 = sub_18841BAF0();
  sub_18840F1E8(v6);

  if (v2 == 1)
  {
    v7 = swift_task_alloc();
    v8 = sub_1883FE86C(v7);
    *v8 = v9;
    sub_1883F7D78(v8);
    sub_188404D5C();

    return sub_1884115F4();
  }

  else
  {

    v0[57] = v4;
    v12 = swift_task_alloc();
    v13 = sub_18840DF00(v12);
    *v13 = v14;
    sub_1883F9E98(v13);
    sub_188405328();
    sub_188404D5C();

    return sub_18840E178();
  }
}

uint64_t sub_1884F4D00()
{
  sub_1883F7120();
  v1 = *(v0 + 392);

  v2 = *(v0 + 416);
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884F4D5C()
{
  sub_1883F78E0();
  v1 = v0[56];
  v2 = v0[53];
  [*(*(v0[44] + 128) + 16) moveInFlightDatabaseChangesToPending];
  swift_willThrow();

  v3 = v0[56];
  sub_1883F816C();

  return v4();
}

uint64_t sub_1884F4DE4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = v3[59];
  v5 = v3[58];
  v6 = v3[46];
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;
  *(v10 + 480) = v9;

  v11 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884F4EF8()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = v0[30].i64[0];
  if (v1 && v1[2])
  {
    v2 = v0[28].i64[0];
    v3 = v1[4];
    v4 = v1[5];

    sub_1883FEFEC();
    sub_1884DFA94(v5, v6, v7);
  }

  v8 = v0[28].i64[0];
  v9 = v0[25].i64[0];
  v10 = v0[23].i64[0];
  v11 = MEMORY[0x1E69E7CC0];
  v0[18].i64[1] = MEMORY[0x1E69E7CC0];
  v0[19].i64[0] = v11;
  v12 = *(v10 + 136);
  v13 = swift_task_alloc();
  v0[30].i64[1] = v13;
  v13[1] = vextq_s8(v0[27], v0[27], 8uLL);
  sub_1884F9D6C(&unk_1886F7F08);
  v14 = v8;
  v15 = swift_task_alloc();
  v16 = sub_1883FE86C(v15);
  *v16 = v17;
  v16[1] = sub_1884F500C;
  sub_18840584C();
  sub_188404D5C();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1884F500C()
{
  sub_1883F78E0();
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;
  v5 = *(v2 + 496);
  v6 = *v1;
  sub_1883F7B78();
  *v7 = v6;
  *(v3 + 504) = v8;
  *(v3 + 512) = v9;
  *(v3 + 520) = v0;

  v10 = *(v2 + 488);
  if (v0)
  {
    v11 = *(v3 + 480);
    v12 = *(v3 + 448);
    v13 = *(v3 + 456);
    v14 = *(v3 + 368);

    v15 = sub_1883FF410();
    v16 = v14;
  }

  else
  {
    v17 = *(v3 + 368);

    v15 = sub_1883FF410();
    v16 = v17;
  }

  return MEMORY[0x1EEE6DFA0](v15, v16, 0);
}

void sub_1884F5174()
{
  v185 = (v0 + 328);
  v186 = (v0 + 312);
  v3 = *(v0 + 504);
  v4 = *(v0 + 440);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v7 = *(v3 + 32);
  sub_1883F84E8();
  v195 = v0;
  v196 = v8;
  v192 = v9 & 0xFFFFFFFFFFFFFF8;
  v189 = v9 + 32;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v191 = MEMORY[0x1E69E7CC0];
LABEL_2:
  while (2)
  {
    v194 = v11;
    if (v2)
    {
      goto LABEL_7;
    }

    do
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (v12 >= v1)
      {
        v41 = *(v195 + 504);
        v42 = *(v195 + 512);
        v43 = *(v195 + 480);
        v44 = *(v195 + 456);
        v46 = *(v195 + 432);
        v45 = *(v195 + 440);
        v0 = *(v195 + 384);

        v47 = 0;
        v48 = *(v42 + 64);
        v49 = *(v42 + 32);
        sub_18840E804();
        v52 = v51 & v50;
        v54 = (63 - v53) >> 6;
        v188 = (v0 + 8);
        v190 = *MEMORY[0x1E696A578];
        v55 = MEMORY[0x1E69E7CC0];
        v193 = MEMORY[0x1E69E7CC8];
        v56 = MEMORY[0x1E69E7CC0];
LABEL_26:
        if (v52)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v57 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_108;
          }

          if (v57 >= v54)
          {
            break;
          }

          v52 = *(v42 + 64 + 8 * v57);
          ++v47;
          if (v52)
          {
            v47 = v57;
LABEL_31:
            v58 = __clz(__rbit64(v52));
            v52 &= v52 - 1;
            v59 = *(v42 + 48);
            v60 = *(v42 + 56);
            sub_1883FF4F0(v58 | (v47 << 6));
            if (!v62)
            {
              v63 = v41;
              v0 = v195;
              MEMORY[0x18CFD52F0]();
              if (*((*(v0 + 304) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 304) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v41 = (v195 + 304);
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v56 = *(v195 + 304);
              goto LABEL_26;
            }

            v64 = *v61;
            v65 = v186;
            *v186 = *v61;
            v66 = sub_1883FF150();
            sub_188462DBC(v66, v67);
            v183 = v41;
            v68 = sub_1883FF150();
            sub_188462DBC(v68, v69);
            sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
            type metadata accessor for CKError(0);
            v0 = v195;
            sub_1883FEFEC();
            if (swift_dynamicCast())
            {
              v180 = *(v195 + 320);
              goto LABEL_39;
            }

            v70 = *(v195 + 392);
            v181 = *(v195 + 376);

            *(v195 + 328) = v64;
            v71 = v64;
            v65 = v185;
            sub_1883FEFEC();
            if (swift_dynamicCast())
            {
              v177 = *(v195 + 376);
              v178 = *(v195 + 392);
              sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1886F7400;
              *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(inited + 40) = v73;
              *(inited + 48) = 0xD000000000000012;
              *(inited + 56) = 0x80000001886FFF40;
              v74 = Dictionary.init(dictionaryLiteral:)();
              *(v195 + 352) = 20;
              sub_18847E984(v74);

              sub_18847A4EC();
              _BridgedStoredNSError.init(_:userInfo:)();
              v180 = *(v195 + 344);
              (*v188)(v178, v177);
LABEL_39:

              isUnique = swift_isUniquelyReferenced_nonNull_native();
              sub_188486310();
              v179 = v75;
              v76 = *(v193 + 16);
              sub_1883FE314();
              v80 = v78 + v79;
              v55 = MEMORY[0x1E69E7CC0];
              if (__OFADD__(v78, v79))
              {
                goto LABEL_118;
              }

              v0 = v77;
              sub_18844E6FC(&qword_1EA90E268, &qword_1886FB470);
              v41 = v193;
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v80))
              {
                sub_188486310();
                sub_188410224();
                if (!v62)
                {
                  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
                  sub_188443388();

                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  return;
                }

                if (v0)
                {
LABEL_44:
                  v82 = *(v193 + 56);
                  v83 = *(v82 + 8 * v81);
                  *(v82 + 8 * v81) = v180;

                  v84 = sub_1883FF150();
                  sub_188462CBC(v84, v85);

                  goto LABEL_26;
                }
              }

              else
              {
                v81 = v179;
                if (v0)
                {
                  goto LABEL_44;
                }
              }

              v41 = v193;
              sub_1883FF230(v193 + 8 * (v81 >> 6));
              *(*(v193 + 48) + 8 * v86) = v183;
              *(*(v193 + 56) + 8 * v86) = v180;
              v87 = sub_1883FF150();
              sub_188462CBC(v87, v88);
              v89 = *(v193 + 16);
              v90 = __OFADD__(v89, 1);
              v91 = v89 + 1;
              if (v90)
              {
                goto LABEL_119;
              }

              *(v193 + 16) = v91;
              goto LABEL_26;
            }

LABEL_110:

            _StringGuts.grow(_:)(38);
            sub_18840AEF8();
            MEMORY[0x18CFD5140](v172 + 18, v173 | 0x8000000000000000);
            swift_getErrorValue();
            v174 = *(v0 + 272);
            v175 = *(v0 + 280);
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            sub_188411124();
            sub_188404C44();
LABEL_106:
            _assertionFailure(_:_:file:line:flags:)();
            sub_188443388();
            return;
          }
        }

        v92 = *(v195 + 512);

        *(v195 + 552) = v194;
        *(v195 + 544) = v56;
        *(v195 + 536) = v193;
        *(v195 + 528) = v191;
        v93 = v194;
        v94 = sub_1883F4C9C(v194);
        if (v94)
        {
          v95 = v94;

          sub_1883FEAD4();
          sub_188477954();
          if (v95 < 0)
          {
            goto LABEL_116;
          }

          v42 = v55;
          v96 = 0;
          v0 = v55;
          do
          {
            if ((v194 & 0xC000000000000001) != 0)
            {
              v97 = MEMORY[0x18CFD59D0](v96, v93);
            }

            else
            {
              v97 = *(v93 + 8 * v96 + 32);
            }

            v98 = v97;
            v100 = *(v55 + 16);
            v99 = *(v55 + 24);
            if (v100 >= v99 >> 1)
            {
              sub_1883F8DD4(v99);
              sub_188477954();
              v93 = v194;
            }

            ++v96;
            *(v55 + 16) = v100 + 1;
            v101 = v55 + 16 * v100;
            *(v101 + 32) = v98;
            *(v101 + 40) = 0;
          }

          while (v95 != v96);
        }

        else
        {

          v0 = MEMORY[0x1E69E7CC0];
        }

        v102 = sub_1883F4C9C(v56);
        v197 = v56;
        if (v102)
        {
          v103 = v102;

          sub_1883FEAD4();
          sub_188477954();
          if (v103 < 0)
          {
            goto LABEL_117;
          }

          v104 = 0;
          v105 = v55;
          v106 = v56 & 0xC000000000000001;
          do
          {
            if (v106)
            {
              v107 = MEMORY[0x18CFD59D0](v104, v56);
            }

            else
            {
              v107 = *(v56 + 8 * v104 + 32);
            }

            v108 = v107;
            v110 = *(v105 + 16);
            v109 = *(v105 + 24);
            sub_188410C74();
            if (v112)
            {
              sub_1883F8DD4(v111);
              sub_1883FF374();
              sub_188477954();
            }

            ++v104;
            *(v105 + 16) = v42;
            v113 = v105 + 16 * v110;
            *(v113 + 32) = v108;
            *(v113 + 40) = 1;
            v56 = v197;
          }

          while (v103 != v104);
        }

        else
        {

          v105 = MEMORY[0x1E69E7CC0];
        }

        sub_188472600(v105);
        v114 = *(v191 + 16);
        if (v114)
        {
          v115 = (v191 + 40);
          v116 = MEMORY[0x1E69E7CC0];
          do
          {
            v117 = *(v195 + 368);
            v118 = *v115;
            v119 = *(v115 - 1);
            v120 = v118;
            sub_18840D758();
            LOBYTE(v118) = v121;

            v122 = v119;
            if (v118)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v129 = *(v116 + 16);
                sub_1883FA200();
                sub_1884775A0();
                v116 = v130;
              }

              v124 = *(v116 + 16);
              v123 = *(v116 + 24);
              sub_188410C74();
              if (v112)
              {
                sub_1883F8DD4(v125);
                sub_1883FF374();
                sub_1884775A0();
                v126 = v131;
                v116 = v131;
              }

              else
              {
                v126 = v116;
              }
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v132 = *(v0 + 16);
                sub_1883FA200();
                sub_1884775A0();
                v0 = v133;
              }

              v124 = *(v0 + 16);
              v127 = *(v0 + 24);
              sub_188410C74();
              if (v112)
              {
                sub_1883F8DD4(v128);
                sub_1883F9A2C();
                sub_1884775A0();
                v126 = v134;
                v0 = v134;
              }

              else
              {
                v126 = v0;
              }
            }

            *(v126 + 16) = v119;
            sub_1883FAB2C(v126 + 16 * v124);
            v115 += 2;
            --v114;
          }

          while (v114);
        }

        else
        {
          v116 = MEMORY[0x1E69E7CC0];
        }

        v135 = v193;
        v136 = *(v193 + 64);
        v137 = *(v193 + 32);
        sub_1883F8A68();
        v140 = v139 & v138;
        sub_1883FE184();
        v142 = v141 >> 6;

        v143 = 0;
        if (v140)
        {
          while (1)
          {
LABEL_90:
            v145 = *(v195 + 368);
            sub_188402300();
            v147 = *(*(v135 + 48) + v146);
            v148 = *(*(v135 + 56) + v146);
            v149 = v147;
            v150 = v148;
            sub_18840D758();
            if (v151)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v156 = *(v116 + 16);
                sub_1883FA200();
                sub_1884775A0();
                v116 = v157;
              }

              v153 = *(v116 + 16);
              v152 = *(v116 + 24);
              if (v153 >= v152 >> 1)
              {
                sub_1884055B0(v152);
                sub_1884775A0();
                v116 = v158;
              }

              *(v116 + 16) = v153 + 1;
              v154 = v116 + 16 * v153;
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v159 = *(v0 + 16);
                sub_1883FA200();
                sub_1884775A0();
                v0 = v160;
              }

              v155 = *(v0 + 16);
              if (v155 >= *(v0 + 24) >> 1)
              {
                sub_1883F9A2C();
                sub_1884775A0();
                v0 = v161;
              }

              *(v0 + 16) = v155 + 1;
              v154 = v0 + 16 * v155;
            }

            *(v154 + 32) = v149;
            sub_1883FDC80(v154);
            v135 = v193;
          }
        }

        while (1)
        {
          v144 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            break;
          }

          if (v144 >= v142)
          {
            v162 = *(v195 + 424);

            sub_18850C4BC(v0);

            *(v195 + 96) = v194;
            *(v195 + 104) = v191;
            *(v195 + 112) = v197;
            *(v195 + 120) = v193;
            *(v195 + 144) = 0;
            *(v195 + 160) = 0x4000000000000000;

            v163 = swift_task_alloc();
            *(v195 + 560) = v163;
            *v163 = v195;
            sub_1883FA498(v163);
            v164 = *(v195 + 368);
            sub_188443388();

            sub_1883FBEA8();
            return;
          }

          ++v143;
          if (*(v193 + 64 + 8 * v144))
          {
            goto LABEL_90;
          }
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v2 = *(v5 + 8 * v12);
      ++v10;
    }

    while (!v2);
    v10 = v12;
LABEL_7:
    sub_1883FDCFC();
    v14 = v13 | (v10 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    v16 = *(v3 + 56) + 16 * v14;
    v17 = *v16;
    if ((*(v16 + 8) & 1) == 0)
    {
      v18 = sub_1883FDC00();
      sub_188449260(v18);
      v19 = sub_1883FDC00();
      sub_188449260(v19);
      v20 = v15;
      v0 = v195;
      MEMORY[0x18CFD52F0]();
      if (*((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v21 = sub_1883FDC00();
      sub_18844CAFC(v21);
      v11 = *(v195 + 296);
      continue;
    }

    break;
  }

  v184 = v3;
  v187 = sub_1883F4C9C(*(v195 + 440));
  v22 = sub_1883F7F94();
  sub_188449260(v22);
  v23 = sub_1883F7F94();
  sub_188449260(v23);
  v24 = v15;
  for (i = 0; ; ++i)
  {
    if (v187 == i)
    {
      _StringGuts.grow(_:)(67);
      sub_18840AEF8();
      MEMORY[0x18CFD5140](v166 + 47, v167 | 0x8000000000000000);
      v168 = [v24 description];
      v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v171 = v170;

      MEMORY[0x18CFD5140](v169, v171);

      sub_188411124();
      sub_188404C44();
      goto LABEL_106;
    }

    if (v196)
    {
      v26 = MEMORY[0x18CFD59D0](i, *(v195 + 440));
    }

    else
    {
      if (i >= *(v192 + 16))
      {
        goto LABEL_115;
      }

      v26 = *(v189 + 8 * i);
    }

    v27 = v26;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v28 = [v27 zoneID];
    v29 = static NSObject.== infix(_:_:)();

    if (v29)
    {
      v30 = sub_1883F7F94();
      sub_188449260(v30);
      v31 = v27;
      v32 = sub_18840EFC4(v17);
      v33 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = *(v191 + 16);
        sub_1883FA200();
        sub_1884775BC();
        v191 = v39;
      }

      v0 = *(v191 + 16);
      v34 = *(v191 + 24);
      if (v0 >= v34 >> 1)
      {
        sub_1883F8DD4(v34);
        sub_188410F10();
        sub_1884775BC();
        v191 = v40;
      }

      v35 = sub_1883F7F94();
      sub_18844CAFC(v35);
      v36 = sub_1883F7F94();
      sub_18844CAFC(v36);

      *(v191 + 16) = v0 + 1;
      v37 = v191 + 16 * v0;
      *(v37 + 32) = v31;
      *(v37 + 40) = v32;
      v11 = v194;
      v3 = v184;
      goto LABEL_2;
    }
  }

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
}

uint64_t sub_1884F5EE0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *(v4 + 368);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  sub_1883FEE9C();
  sub_1883FBF6C(v2 + 16);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884F5FDC()
{
  sub_1883FB4AC();
  v1 = *(v0 + 360);
  v6 = *(v0 + 528);
  v7 = *(v0 + 544);

  *(&v2 + 1) = v6.i64[1];
  *&v2 = v7.i64[0];
  *v1 = vextq_s8(v7, v6, 8uLL);
  *(v1 + 16) = v2;
  v3 = *(v0 + 392);

  sub_1883F816C();

  return v4();
}

void sub_1884F6058()
{
  v1 = v0[65];
  v2 = v0[55];
  v3 = v1;
  v4 = sub_18840EFC4(v1);
  v5 = sub_1883F4C9C(v2);
  v126 = v0;
  if (v5)
  {
    v6 = v5;
    v128 = MEMORY[0x1E69E7CC0];
    sub_1883FE594();
    sub_1884779E4();
    if (v6 < 0)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v0[55];
    v9 = v128;
    v10 = v8 & 0xC000000000000001;
    v123 = v8 + 32;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x18CFD59D0](v7, v126[55]);
      }

      else
      {
        v11 = *(v123 + 8 * v7);
      }

      v12 = v11;
      v127 = v9;
      v14 = v9[2];
      v13 = v9[3];
      v15 = v4;
      if (v14 >= v13 >> 1)
      {
        sub_1884779E4();
      }

      ++v7;
      v9[2] = v14 + 1;
      v16 = &v9[2 * v14];
      v16[4] = v12;
      v16[5] = v15;
    }

    while (v6 != v7);
    v122 = v9;
    v0 = v126;
    v17 = v126[55];
  }

  else
  {
    v18 = v0[55];

    v122 = MEMORY[0x1E69E7CC0];
  }

  v19 = v0[54];
  v20 = 0;
  v124 = sub_1883F4C9C(v19);
  v21 = MEMORY[0x1E69E7CC8];
  while (v124 != v20)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x18CFD59D0](v20, v126[54]);
    }

    else
    {
      if (v20 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v22 = *(v19 + 32 + 8 * v20);
    }

    v23 = v22;
    if (__OFADD__(v20, 1))
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v24 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v21;
    sub_188486310();
    v26 = v21[2];
    sub_1883FE314();
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_92;
    }

    v32 = v27;
    v33 = v28;
    sub_18844E6FC(&qword_1EA90E268, &qword_1886FB470);
    v34 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v31);
    v21 = v127;
    if (v34)
    {
      sub_188486310();
      if ((v33 & 1) != (v36 & 1))
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        sub_1883F85A4();

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v32 = v35;
    }

    if (v33)
    {
      v37 = v127[7];
      v38 = *(v37 + 8 * v32);
      *(v37 + 8 * v32) = v24;
    }

    else
    {
      sub_1883FF230(&v127[v32 >> 6]);
      *(v127[6] + 8 * v32) = v23;
      *(v127[7] + 8 * v32) = v24;
      v39 = v127[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_93;
      }

      v127[2] = v41;
    }

    ++v20;
  }

  v42 = v126;
  v43 = v126[65];
  v44 = v126[54];

  v45 = MEMORY[0x1E69E7CC0];
  v126[69] = MEMORY[0x1E69E7CC0];
  v126[68] = v45;
  v126[67] = v21;
  v126[66] = v122;
  v46 = sub_1883F4C9C(v45);
  if (v46)
  {
    v47 = v46;
    sub_1883F869C();
    sub_1883F832C();
    sub_188477954();
    if (v47 < 0)
    {
      goto LABEL_95;
    }

    v48 = 0;
    v49 = v127;
    do
    {
      if (v45 >> 62)
      {
        v50 = MEMORY[0x18CFD59D0](v48, v45);
      }

      else
      {
        v50 = *(v45 + 8 * v48 + 32);
      }

      v51 = v50;
      v127 = v49;
      v53 = v49[2];
      v52 = v49[3];
      if (v53 >= v52 >> 1)
      {
        sub_1883F8DD4(v52);
        sub_188410F10();
        sub_188477954();
      }

      ++v48;
      v49[2] = v53 + 1;
      v54 = &v49[2 * v53];
      v54[4] = v51;
      *(v54 + 40) = 0;
    }

    while (v47 != v48);
    v42 = v126;
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v56 = MEMORY[0x1E69E7CC0];
  v57 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v57)
  {
    v58 = v57;
    sub_1883F869C();
    sub_1883F832C();
    sub_188477954();
    if (v58 < 0)
    {
      goto LABEL_96;
    }

    v59 = 0;
    v60 = v127;
    do
    {
      if (v56 >> 62)
      {
        v61 = MEMORY[0x18CFD59D0](v59, v56);
      }

      else
      {
        v61 = *(v56 + 8 * v59 + 32);
      }

      v62 = v61;
      v64 = v127[2];
      v63 = v127[3];
      if (v64 >= v63 >> 1)
      {
        sub_1883F8DD4(v63);
        sub_188410F10();
        sub_188477954();
      }

      ++v59;
      v127[2] = v64 + 1;
      v65 = &v127[2 * v64];
      *(v65 + 32) = v62;
      sub_1883FDC80(v65);
    }

    while (v58 != v59);
    swift_bridgeObjectRelease_n();
    v42 = v126;
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
  }

  sub_188472600(v60);
  v66 = v49;
  v67 = v122[2];
  v68 = MEMORY[0x1E69E7CC0];
  if (v67)
  {
    v69 = (v122 + 5);
    do
    {
      v70 = v42[46];
      v71 = *v69;
      v72 = *(v69 - 1);
      v73 = v71;
      sub_18840D758();
      LOBYTE(v71) = v74;

      v75 = v72;
      if (v71)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = *(v68 + 16);
          sub_1883FA200();
          sub_1884775A0();
          v68 = v82;
        }

        v77 = *(v68 + 16);
        v76 = *(v68 + 24);
        v78 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          sub_1883F8DD4(v76);
          sub_1884775A0();
          v79 = v83;
          v68 = v83;
        }

        else
        {
          v79 = v68;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = *(v66 + 16);
          sub_1883FA200();
          sub_1884775A0();
          v66 = v85;
        }

        v77 = *(v66 + 16);
        v80 = *(v66 + 24);
        v78 = v77 + 1;
        if (v77 >= v80 >> 1)
        {
          sub_1883F8DD4(v80);
          sub_1884775A0();
          v79 = v86;
          v66 = v86;
        }

        else
        {
          v79 = v66;
        }
      }

      *(v79 + 16) = v78;
      sub_1883FAB2C(v79 + 16 * v77);
      v69 += 2;
      --v67;
      v42 = v126;
    }

    while (v67);
  }

  v125 = v66;
  v87 = v21[8];
  v88 = *(v21 + 32);
  sub_1883F8A68();
  v91 = v90 & v89;
  sub_1883FE184();
  v93 = v92 >> 6;

  v94 = 0;
  if (v91)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v95 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      __break(1u);
      goto LABEL_90;
    }

    if (v95 >= v93)
    {
      break;
    }

    v91 = v21[v95 + 8];
    ++v94;
    if (v91)
    {
      v94 = v95;
      do
      {
LABEL_73:
        v96 = v42[46];
        v97 = __clz(__rbit64(v91));
        v91 &= v91 - 1;
        v98 = (v94 << 9) | (8 * v97);
        v99 = *(v21[7] + v98);
        v100 = *(v21[6] + v98);
        v101 = v99;
        sub_18840D758();
        if (v102)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = *(v68 + 16);
            sub_1883FA200();
            sub_1884775A0();
            v68 = v112;
          }

          v104 = *(v68 + 16);
          v103 = *(v68 + 24);
          sub_1883F802C();
          if (v106)
          {
            sub_1884055B0(v105);
            sub_1884775A0();
            v68 = v113;
          }

          *(v68 + 16) = v96;
          v107 = v68 + 16 * v104;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = *(v125 + 16);
            sub_1883FA200();
            sub_1884775A0();
            v125 = v115;
          }

          v109 = *(v125 + 16);
          v108 = *(v125 + 24);
          sub_1883F802C();
          if (v106)
          {
            sub_1884055B0(v110);
            sub_1884775A0();
            v125 = v116;
          }

          *(v125 + 16) = v96;
          v107 = v125 + 16 * v109;
        }

        *(v107 + 32) = v100;
        sub_1883FDC80(v107);
        v42 = v126;
      }

      while (v91);
    }
  }

  v117 = v42[53];

  sub_18850C4BC(v125);

  v118 = MEMORY[0x1E69E7CC0];
  v42[12] = MEMORY[0x1E69E7CC0];
  v42[13] = v122;
  v42[14] = v118;
  v42[15] = v21;
  v42[18] = 0;
  v42[20] = 0x4000000000000000;
  swift_bridgeObjectRetain_n();

  v119 = swift_task_alloc();
  v42[70] = v119;
  *v119 = v42;
  sub_1883FA498(v119);
  v120 = v42[46];
  sub_1883FE860();
  sub_1883F85A4();

  sub_1883FBEA8();
}

uint64_t sub_1884F6884()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = v3[61];
  v5 = v3[60];
  v6 = v3[49];
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;
  *(v10 + 496) = v9;

  v11 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884F6998()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = *(v0 + 496);
  v2 = [objc_allocWithZone(CKOperationConfiguration) init];
  *(v0 + 504) = v2;
  if (v1)
  {
    v3 = *(v0 + 496);
    if (v3[2])
    {
      sub_18847E02C(0, 1, *(v0 + 496));
      v5 = v3[4];
      v4 = v3[5];

      v6 = sub_1883F7E8C();
      sub_1884DFA94(v6, v7, v2);
    }
  }

  v8 = *(v0 + 316);
  v9 = *(v0 + 432);
  v10 = *(v0 + 392);
  v11 = MEMORY[0x1E69E7CC0];
  *(v0 + 320) = MEMORY[0x1E69E7CC0];
  *(v0 + 328) = v11;
  v12 = *(v10 + 136);
  v13 = swift_task_alloc();
  *(v0 + 512) = v13;
  *(v13 + 16) = *(v0 + 464);
  *(v13 + 32) = v8 & 1;
  sub_1884F9D6C(&unk_1886F7F00);
  v14 = v2;
  v15 = swift_task_alloc();
  *(v0 + 520) = v15;
  *v15 = v0;
  v15[1] = sub_1884F6AE4;
  sub_18840584C();
  sub_188404D5C();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1884F6AE4()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;
  v5 = v2[65];
  v6 = *v1;
  sub_1883F7B78();
  *v7 = v6;
  v3[66] = v8;
  v3[67] = v9;
  v3[68] = v0;

  v10 = v2[64];
  v11 = v2[63];
  if (v0)
  {
    v12 = v3[62];
    v13 = v3[49];
  }

  else
  {
    v14 = v3[49];
  }

  sub_1883FF410();
  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

void sub_1884F6C54()
{
  v189 = (v0 + 352);
  v190 = (v0 + 336);
  v3 = *(v0 + 528);
  v4 = *(v0 + 464);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v7 = *(v3 + 32);
  sub_1883F84E8();
  v199 = v8;
  v195 = v9 + 32;
  v196 = v9 & 0xFFFFFFFFFFFFFF8;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v198 = MEMORY[0x1E69E7CC0];
  for (i = v0; ; v11 = *(i + 320))
  {
LABEL_2:
    v201 = v11;
    if (!v2)
    {
      do
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        if (v12 >= v1)
        {
          v42 = *(v0 + 536);
          v43 = *(v0 + 528);
          v44 = *(v0 + 496);
          v45 = *(v0 + 464);
          v46 = *(v0 + 472);
          v47 = *(i + 408);
          v48 = *(i + 316);
          sub_1884F9AC4(v45);

          v49 = 0;
          v50 = *(v42 + 64);
          v51 = *(v42 + 32);
          sub_18840E804();
          v54 = v53 & v52;
          v56 = (63 - v55) >> 6;
          v192 = (v47 + 8);
          v194 = *MEMORY[0x1E696A578];
          v0 = i;
          v57 = MEMORY[0x1E69E7CC0];
          v200 = MEMORY[0x1E69E7CC8];
          while (1)
          {
            if (v54)
            {
              v58 = v57;
              goto LABEL_32;
            }

            do
            {
              v59 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                goto LABEL_113;
              }

              if (v59 >= v56)
              {
                v93 = *(v0 + 536);

                *(v0 + 584) = v201;
                *(v0 + 576) = v57;
                *(v0 + 568) = v200;
                *(v0 + 560) = v198;
                *(v0 + 552) = 0;
                v94 = sub_1883F4C9C(v201);
                if (v94)
                {
                  v95 = v94;
                  v96 = v57;
                  v97 = MEMORY[0x1E69E7CC0];
                  v203 = MEMORY[0x1E69E7CC0];

                  sub_1883FEAD4();
                  sub_18847791C();
                  if (v95 < 0)
                  {
                    goto LABEL_121;
                  }

                  v98 = 0;
                  v99 = v203;
                  do
                  {
                    if ((v201 & 0xC000000000000001) != 0)
                    {
                      v100 = MEMORY[0x18CFD59D0](v98, v201);
                    }

                    else
                    {
                      v100 = *(v201 + 8 * v98 + 32);
                    }

                    v101 = v100;
                    v102 = [v100 recordID];

                    v104 = *(v203 + 16);
                    v103 = *(v203 + 24);
                    if (v104 >= v103 >> 1)
                    {
                      sub_1883F8DD4(v103);
                      sub_18847791C();
                    }

                    ++v98;
                    *(v203 + 16) = v104 + 1;
                    v105 = v203 + 16 * v104;
                    *(v105 + 32) = v102;
                    *(v105 + 40) = 0;
                  }

                  while (v95 != v98);
                  v57 = v96;
                }

                else
                {

                  v99 = MEMORY[0x1E69E7CC0];
                  v97 = MEMORY[0x1E69E7CC0];
                }

                v106 = sub_1883F4C9C(v57);
                v197 = v57;
                if (v106)
                {
                  v107 = v106;

                  sub_1883FEAD4();
                  sub_18847791C();
                  if (v107 < 0)
                  {
                    goto LABEL_122;
                  }

                  v108 = 0;
                  v109 = v97;
                  do
                  {
                    if ((v57 & 0xC000000000000001) != 0)
                    {
                      v110 = MEMORY[0x18CFD59D0](v108, v57);
                    }

                    else
                    {
                      v110 = *(v57 + 8 * v108 + 32);
                    }

                    v111 = v110;
                    v113 = *(v109 + 16);
                    v112 = *(v109 + 24);
                    if (v113 >= v112 >> 1)
                    {
                      sub_1883F8DD4(v112);
                      sub_18847791C();
                    }

                    ++v108;
                    *(v109 + 16) = v113 + 1;
                    v114 = v109 + 16 * v113;
                    *(v114 + 32) = v111;
                    *(v114 + 40) = 1;
                  }

                  while (v107 != v108);
                }

                else
                {

                  v109 = MEMORY[0x1E69E7CC0];
                }

                sub_18847261C(v109);
                v0 = v99;
                v115 = *(v198 + 16);
                if (v115)
                {
                  v116 = (v198 + 40);
                  v117 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v118 = *(i + 392);
                    v119 = *v116;
                    v120 = *(v116 - 1);
                    v121 = v119;
                    sub_18840D758();
                    LOBYTE(v119) = v122;

                    v123 = [v120 recordID];
                    if (v119)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v129 = *(v117 + 16);
                        sub_1883FA200();
                        sub_1884775D8();
                        v117 = v130;
                      }

                      v125 = *(v117 + 16);
                      v124 = *(v117 + 24);
                      v126 = v125 + 1;
                      if (v125 >= v124 >> 1)
                      {
                        sub_1883F8DD4(v124);
                        sub_188410F10();
                        sub_1884775D8();
                        v127 = v131;
                        v117 = v131;
                      }

                      else
                      {
                        v127 = v117;
                      }
                    }

                    else
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v132 = *(v0 + 16);
                        sub_1883FA200();
                        sub_1884775D8();
                        v0 = v133;
                      }

                      v125 = *(v0 + 16);
                      v128 = *(v0 + 24);
                      v126 = v125 + 1;
                      if (v125 >= v128 >> 1)
                      {
                        sub_1883F8DD4(v128);
                        sub_1883F9A2C();
                        sub_1884775D8();
                        v127 = v134;
                        v0 = v134;
                      }

                      else
                      {
                        v127 = v0;
                      }
                    }

                    *(v127 + 16) = v126;
                    sub_1883FAB2C(v127 + 16 * v125);
                    v116 += 2;
                    --v115;
                  }

                  while (v115);
                }

                else
                {
                  v117 = MEMORY[0x1E69E7CC0];
                }

                v135 = *(v200 + 64);
                v136 = *(v200 + 32);
                sub_1883F8A68();
                v139 = v138 & v137;
                sub_1883FE184();
                v141 = v140 >> 6;

                v142 = 0;
                if (v139)
                {
                  while (1)
                  {
LABEL_92:
                    v144 = *(i + 392);
                    sub_188402300();
                    v146 = *(*(v200 + 56) + v145);
                    v147 = *(*(v200 + 48) + v145);
                    v148 = v146;
                    sub_18840D758();
                    if (v149)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v155 = *(v117 + 16);
                        sub_1883FA200();
                        sub_1884775D8();
                        v117 = v156;
                      }

                      v151 = *(v117 + 16);
                      v150 = *(v117 + 24);
                      if (v151 >= v150 >> 1)
                      {
                        sub_1884055B0(v150);
                        sub_1884775D8();
                        v117 = v157;
                      }

                      *(v117 + 16) = v151 + 1;
                      v152 = v117 + 16 * v151;
                    }

                    else
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v158 = *(v0 + 16);
                        sub_1883FA200();
                        sub_1884775D8();
                        v0 = v159;
                      }

                      v154 = *(v0 + 16);
                      v153 = *(v0 + 24);
                      if (v154 >= v153 >> 1)
                      {
                        sub_1884055B0(v153);
                        sub_1884775D8();
                        v0 = v160;
                      }

                      *(v0 + 16) = v154 + 1;
                      v152 = v0 + 16 * v154;
                    }

                    *(v152 + 32) = v147;
                    sub_1883FDC80(v152);
                  }
                }

                while (1)
                {
                  v143 = v142 + 1;
                  if (__OFADD__(v142, 1))
                  {
                    break;
                  }

                  if (v143 >= v141)
                  {
                    v161 = *(i + 440);

                    sub_18850C4DC(v117, 0);

                    sub_18850C5AC(v0);
                    v162 = i;

                    if ([*(v161 + 16) hasInFlightUntrackedChanges])
                    {
                      v163 = *(i + 440);
                      v164 = *(i + 392);
                      sub_18840D758();
                      LOBYTE(v164) = v165;
                      v166 = *(v163 + 16);
                      v162 = i;
                      [v166 setHasInFlightUntrackedChanges_];
                      if (v164)
                      {
                        [*(*(i + 440) + 16) setHasPendingUntrackedChanges_];
                      }
                    }

                    v162[12] = v201;
                    v162[13] = v198;
                    v162[14] = v197;
                    v162[15] = v200;
                    v162[18] = 0;
                    v162[20] = 0x5000000000000000;

                    v167 = swift_task_alloc();
                    v162[74] = v167;
                    *v167 = v162;
                    sub_1884008D8(v167);
                    v168 = v162[49];
                    sub_1883FEBF8();

                    sub_1883FBEA8();
                    return;
                  }

                  ++v142;
                  if (*(v200 + 64 + 8 * v143))
                  {
                    goto LABEL_92;
                  }
                }

LABEL_114:
                __break(1u);
LABEL_115:

                sub_18846C4B0(38);
                sub_18840AEF8();
                MEMORY[0x18CFD5140](v177 + 18, v178 | 0x8000000000000000);
                swift_getErrorValue();
                v179 = *(v0 + 272);
                v180 = *(v0 + 280);
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                sub_188411124();
                sub_188404C44();
LABEL_111:
                _assertionFailure(_:_:file:line:flags:)();
                sub_1883FEBF8();
                return;
              }

              v54 = *(v42 + 64 + 8 * v59);
              ++v49;
            }

            while (!v54);
            v58 = v57;
            v49 = v59;
LABEL_32:
            v60 = __clz(__rbit64(v54));
            v54 &= v54 - 1;
            v61 = *(v42 + 48);
            v62 = *(v42 + 56);
            sub_1883FF4F0(v60 | (v49 << 6));
            if (!v64)
            {
              v65 = v57;
              MEMORY[0x18CFD52F0]();
              sub_1883FDF80(*(v0 + 328));
              if (v66)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v57 = *(v0 + 328);
              continue;
            }

            v67 = *v63;
            v68 = v190;
            *v190 = *v63;
            v69 = sub_1883FF150();
            sub_188462DBC(v69, v70);
            v188 = v57;
            v71 = sub_1883FF150();
            sub_188462DBC(v71, v72);
            sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
            type metadata accessor for CKError(0);
            v187 = v67;
            if (swift_dynamicCast())
            {
              v184 = *(v0 + 344);
              goto LABEL_40;
            }

            v73 = *(v0 + 416);
            v185 = *(v0 + 400);

            *(v0 + 352) = v67;
            v74 = v67;
            if (!swift_dynamicCast())
            {
              goto LABEL_115;
            }

            v182 = *(v0 + 400);
            v183 = *(v0 + 416);
            sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1886F7400;
            *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(inited + 40) = v76;
            *(inited + 48) = 0xD000000000000012;
            *(inited + 56) = 0x80000001886FFF40;
            v77 = Dictionary.init(dictionaryLiteral:)();
            *(v0 + 376) = 20;
            sub_18847E984(v77);

            sub_18847A4EC();
            _BridgedStoredNSError.init(_:userInfo:)();
            v184 = *(v0 + 368);
            (*v192)(v183, v182);
            v68 = v189;
LABEL_40:

            isUnique = swift_isUniquelyReferenced_nonNull_native();
            sub_188486398();
            v78 = *(v200 + 16);
            sub_1883FE314();
            v83 = v81 + v82;
            if (__OFADD__(v81, v82))
            {
              goto LABEL_123;
            }

            v84 = v79;
            v85 = v80;
            sub_18844E6FC(&unk_1EA90E4B0, &qword_1886FB450);
            if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v83))
            {
              v87 = v187;
              if ((v85 & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_48:
              v91 = *(v200 + 56);
              v92 = *(v91 + 8 * v84);
              *(v91 + 8 * v84) = v184;

              sub_188462CBC(v87, 1);
              goto LABEL_49;
            }

            sub_188486398();
            sub_188410224();
            v87 = v187;
            if (!v64)
            {
              sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
              sub_1883FEBF8();

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              return;
            }

            v84 = v86;
            if (v85)
            {
              goto LABEL_48;
            }

LABEL_45:
            sub_1883FF230(v200 + 8 * (v84 >> 6));
            *(*(v200 + 48) + 8 * v84) = v188;
            *(*(v200 + 56) + 8 * v84) = v184;
            sub_188462CBC(v87, 1);
            v88 = *(v200 + 16);
            v89 = __OFADD__(v88, 1);
            v90 = v88 + 1;
            if (v89)
            {
              goto LABEL_124;
            }

            *(v200 + 16) = v90;
LABEL_49:
            v0 = i;
            v57 = v58;
          }
        }

        v2 = *(v5 + 8 * v12);
        ++v10;
      }

      while (!v2);
      v10 = v12;
    }

    sub_1883FDCFC();
    v14 = v13 | (v10 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    v16 = *(v3 + 56) + 16 * v14;
    v17 = *v16;
    if (*(v16 + 8))
    {
      break;
    }

    v18 = sub_1883FDC00();
    sub_188449260(v18);
    v19 = sub_1883FDC00();
    sub_188449260(v19);
    v20 = v15;
    v0 = i;
    MEMORY[0x18CFD52F0]();
    if (*((*(v0 + 320) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 320) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v21 = sub_1883FDC00();
    sub_18844CAFC(v21);
  }

  v191 = sub_1883F4C9C(*(i + 464));
  v22 = sub_1883F7F94();
  sub_188449260(v22);
  v23 = sub_1883F7F94();
  sub_188449260(v23);
  v193 = v15;

  for (j = 0; ; ++j)
  {
    if (v191 == j)
    {
      v170 = *(i + 464);

      sub_18846C4B0(71);
      sub_18840AEF8();
      MEMORY[0x18CFD5140](v171 + 51, v172 | 0x8000000000000000);
      v173 = [v193 description];
      v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v176 = v175;

      MEMORY[0x18CFD5140](v174, v176);

      sub_188411124();
      sub_188404C44();
      goto LABEL_111;
    }

    if (v199)
    {
      v25 = MEMORY[0x18CFD59D0](j, *(i + 464));
    }

    else
    {
      if (j >= *(v196 + 16))
      {
        goto LABEL_120;
      }

      v25 = *(v195 + 8 * j);
    }

    v26 = v25;
    if (__OFADD__(j, 1))
    {
      break;
    }

    v27 = v3;
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v28 = [v26 recordID];
    v29 = static NSObject.== infix(_:_:)();

    if (v29)
    {
      v30 = *(i + 464);

      v31 = sub_1883F7F94();
      sub_188449260(v31);
      v32 = v26;
      v33 = sub_18840EFC4(v17);
      v3 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v198 + 16);
        sub_1883FA200();
        sub_1884776A8();
        v198 = v40;
      }

      v35 = *(v198 + 16);
      v34 = *(v198 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1883F8DD4(v34);
        sub_188405648();
        sub_1884776A8();
        v198 = v41;
      }

      v36 = sub_1883F7F94();
      sub_18844CAFC(v36);
      v37 = sub_1883F7F94();
      sub_18844CAFC(v37);

      *(v198 + 16) = v35 + 1;
      v38 = v198 + 16 * v35;
      *(v38 + 32) = v32;
      *(v38 + 40) = v33;
      v11 = v201;
      v0 = i;
      goto LABEL_2;
    }

    v3 = v27;
  }

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
}