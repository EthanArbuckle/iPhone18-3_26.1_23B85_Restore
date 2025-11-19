uint64_t sub_61048(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  sub_C62F4();
  v21 = v4;
  sub_C3D14();
  sub_67708(&qword_104C98, &type metadata accessor for UUID);
  v9 = a2;
  sub_C5304();
  v10 = sub_C6344();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      sub_19D98(*(v8 + 48) + v14 * v12, v7);
      v15 = sub_C3CE4();
      sub_19E50(v7);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_19E50(a2);
    sub_19D98(*(v8 + 48) + v14 * v12, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19D98(v9, v7);
    v22 = *v16;
    sub_64164(v7, v12, isUniquelyReferenced_nonNull_native);
    *v16 = v22;
    sub_19D34(v9, v20);
    return 1;
  }
}

uint64_t sub_6127C(double *a1, double a2, double a3)
{
  v7 = *v3;
  sub_C62F4();
  sub_23550(a2, a3);
  v8 = sub_C6344();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a2 && v12[1] == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = *v12;
    a3 = v12[1];
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_643B8(v10, isUniquelyReferenced_nonNull_native, a2, a3);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_61398(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_C3D14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_67708(&qword_104C98, &type metadata accessor for UUID);
  v33 = a2;
  v11 = sub_C52F4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_67708(&qword_1047A8, &type metadata accessor for UUID);
      v21 = sub_C53A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_64520(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_61678(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_C3E84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_67708(&qword_107718, &type metadata accessor for Calendar.Component);
  v33 = a2;
  v11 = sub_C52F4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_67708(&qword_107720, &type metadata accessor for Calendar.Component);
      v21 = sub_C53A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_647E8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_61958(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_C62F4();
  sub_C5314();
  v8 = sub_C6344();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_C6244() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_64AB0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_61AA8(void *a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  sub_C5484();
  sub_C62F4();
  sub_C5514();
  v10 = sub_C6344();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = sub_C5484();
      v16 = v15;
      if (v14 == sub_C5484() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = sub_C6244();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_64C30(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_61C64(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_C5F04();

    if (v9)
    {

      sub_67444();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_C5EF4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_61E7C(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_63800();
    }

    v18 = v8;
    sub_63A28(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_67444();
  v11 = sub_C5D34(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_64E3C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_C5D44();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

Swift::Int sub_61E7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_3CB0(&qword_107728);
    v2 = sub_C5F94();
    v14 = v2;
    sub_C5EE4();
    if (sub_C5F24())
    {
      sub_67444();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_63800();
        }

        v2 = v14;
        result = sub_C5D34(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_C5F24());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_6205C()
{
  v1 = v0;
  v2 = *v0;
  sub_3CB0(&qword_107750);
  result = sub_C5F84();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_C62F4();
      sub_C6304(v16);
      result = sub_C6344();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_622AC()
{
  v1 = v0;
  v2 = *v0;
  sub_3CB0(&qword_107B18);
  v3 = sub_C5F84();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_C62F4();
      sub_C5514();

      v12 = sub_C6344();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x62688);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_626BC()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_3CB0(&qword_107B08);
  result = sub_C5F84();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_19D34(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_C62F4();
      sub_C3D14();
      sub_67708(&qword_104C98, &type metadata accessor for UUID);
      sub_C5304();
      result = sub_C6344();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_19D34(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_629F4()
{
  v1 = *v0;
  sub_3CB0(&qword_107B00);
  result = sub_C5F84();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v1 + 48) + 16 * (v13 | (v4 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_C62F4();
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      sub_C6324(*&v19);
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      sub_C6324(*&v20);
      result = sub_C6344();
      v21 = -1 << *(v3 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v11 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v3 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v3 + 16);
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v4 >= v9)
      {
        break;
      }

      v15 = v5[v4];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v1 + 32);
    if (v28 >= 64)
    {
      bzero((v1 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v28;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_62C74()
{
  v1 = v0;
  v35 = sub_C3D14();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_3CB0(&qword_107AF8);
  result = sub_C5F84();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_67708(&qword_104C98, &type metadata accessor for UUID);
      result = sub_C52F4();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_62FD0()
{
  v1 = v0;
  v35 = sub_C3E84();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_3CB0(&qword_107710);
  result = sub_C5F84();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_67708(&qword_107718, &type metadata accessor for Calendar.Component);
      result = sub_C52F4();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_6332C()
{
  v1 = v0;
  v2 = *v0;
  sub_3CB0(&qword_107AF0);
  result = sub_C5F84();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_C62F4();
      sub_C5314();
      result = sub_C6344();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_6358C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_3CB0(a2);
  result = sub_C5F84();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_C5484();
      sub_C62F4();
      sub_C5514();
      v19 = sub_C6344();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_63800()
{
  v1 = v0;
  v2 = *v0;
  sub_3CB0(&qword_107728);
  result = sub_C5F84();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_C5D34(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_63A28(uint64_t a1, void *a2)
{
  sub_C5D34(a2[5]);
  result = sub_C5ED4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_63AAC(Swift::Int result, unint64_t a2, char a3)
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
    sub_6205C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_64F9C(&qword_107750);
      a2 = v7;
      goto LABEL_12;
    }

    sub_65A18();
  }

  v8 = *v3;
  sub_C62F4();
  sub_C6304(v4);
  result = sub_C6344();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_C6284();
  __break(1u);
  return result;
}

Swift::Int sub_63C0C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_622AC();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_64F9C(&qword_107B18);
        goto LABEL_52;
      }

      sub_65C38();
    }

    v9 = *v3;
    sub_C62F4();
    sub_B208(v6);
    sub_C5514();

    result = sub_C6344();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE400000000000000;
        v13 = 1954047348;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0x64724F7465737361;
            v12 = 0xED0000676E697265;
            break;
          case 2:
            v13 = 0xD000000000000015;
            v12 = 0x80000000000C7A70;
            break;
          case 3:
            v12 = 0xE500000000000000;
            v13 = 0x656C746974;
            break;
          case 4:
            v13 = 0x7461447972746E65;
            v12 = 0xE900000000000065;
            break;
          case 5:
            v12 = 0xE800000000000000;
            v13 = 0x6449656C646E7562;
            break;
          case 6:
            v12 = 0xEA00000000006574;
            v13 = 0x6144656C646E7562;
            break;
          case 7:
            v13 = 0x72756F5365746164;
            v12 = 0xEA00000000006563;
            break;
          case 8:
            v12 = 0xE700000000000000;
            v13 = 0x64656767616C66;
            break;
          case 9:
            v12 = 0xE600000000000000;
            v13 = 0x74706D6F7270;
            break;
          case 0xA:
            v13 = 0xD000000000000013;
            v12 = 0x80000000000C7AD0;
            break;
          case 0xB:
            v13 = 0xD000000000000011;
            v12 = 0x80000000000C7AF0;
            break;
          case 0xC:
            v12 = 0xE500000000000000;
            v13 = 0x726568746FLL;
            break;
          default:
            break;
        }

        v14 = 0xE400000000000000;
        v15 = 1954047348;
        switch(v6)
        {
          case 1:
            v14 = 0xED0000676E697265;
            if (v13 != 0x64724F7465737361)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 2:
            v14 = 0x80000000000C7A70;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v14 = 0xE500000000000000;
            if (v13 != 0x656C746974)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v14 = 0xE900000000000065;
            if (v13 != 0x7461447972746E65)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v14 = 0xE800000000000000;
            if (v13 != 0x6449656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v14 = 0xEA00000000006574;
            if (v13 != 0x6144656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v14 = 0xEA00000000006563;
            if (v13 != 0x72756F5365746164)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 8:
            v14 = 0xE700000000000000;
            if (v13 != 0x64656767616C66)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v14 = 0xE600000000000000;
            if (v13 != 0x74706D6F7270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v15 = 0xD000000000000013;
            v14 = 0x80000000000C7AD0;
            goto LABEL_45;
          case 11:
            v14 = 0x80000000000C7AF0;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v14 = 0xE500000000000000;
            if (v13 != 0x726568746FLL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v13 != v15)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v12 == v14)
            {
              goto LABEL_55;
            }

LABEL_47:
            v16 = sub_C6244();

            if (v16)
            {
              goto LABEL_56;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_52:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v6;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_55:

LABEL_56:
    sub_C6284();
    __break(1u);
    JUMPOUT(0x640FCLL);
  }

  *(v17 + 16) = v20;
  return result;
}

uint64_t sub_64164(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_626BC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_650CC();
      goto LABEL_12;
    }

    sub_66018();
  }

  v12 = *v3;
  sub_C62F4();
  sub_C3D14();
  sub_67708(&qword_104C98, &type metadata accessor for UUID);
  sub_C5304();
  v13 = sub_C6344();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      sub_19D98(*(v12 + 48) + v16 * a2, v9);
      v17 = sub_C3CE4();
      sub_19E50(v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_19D34(a1, *(v18 + 48) + *(v25 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_C6284();
  __break(1u);
  return result;
}

unint64_t sub_643B8(unint64_t result, char a2, double a3, double a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_629F4();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = result;
      sub_652B0();
      result = v9;
      goto LABEL_15;
    }

    sub_66320();
  }

  v10 = *v4;
  sub_C62F4();
  sub_23550(a3, a4);
  v11 = sub_C6344();
  v12 = -1 << *(v10 + 32);
  result = v11 & ~v12;
  if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * result);
      if (*v14 == a3 && v14[1] == a4)
      {
        goto LABEL_18;
      }

      result = (result + 1) & v13;
    }

    while (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_15:
  v16 = *v4;
  *(*v4 + 8 * (result >> 6) + 56) |= 1 << result;
  v17 = (*(v16 + 48) + 16 * result);
  *v17 = a3;
  v17[1] = a4;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_C6284();
  __break(1u);
  return result;
}

uint64_t sub_64520(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_C3D14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_62C74();
  }

  else
  {
    if (v11 > v10)
    {
      sub_653F4(&type metadata accessor for UUID, &qword_107AF8);
      goto LABEL_12;
    }

    sub_66564();
  }

  v12 = *v3;
  sub_67708(&qword_104C98, &type metadata accessor for UUID);
  v13 = sub_C52F4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_67708(&qword_1047A8, &type metadata accessor for UUID);
      v21 = sub_C53A4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_C6284();
  __break(1u);
  return result;
}

uint64_t sub_647E8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_C3E84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_62FD0();
  }

  else
  {
    if (v11 > v10)
    {
      sub_653F4(&type metadata accessor for Calendar.Component, &qword_107710);
      goto LABEL_12;
    }

    sub_66880();
  }

  v12 = *v3;
  sub_67708(&qword_107718, &type metadata accessor for Calendar.Component);
  v13 = sub_C52F4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_67708(&qword_107720, &type metadata accessor for Calendar.Component);
      v21 = sub_C53A4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_C6284();
  __break(1u);
  return result;
}

Swift::Int sub_64AB0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_6332C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_6562C();
      goto LABEL_16;
    }

    sub_66B9C();
  }

  v10 = *v4;
  sub_C62F4();
  sub_C5314();
  result = sub_C6344();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_C6244();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_C6284();
  __break(1u);
  return result;
}

uint64_t sub_64C30(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_6358C(v10 + 1, a4);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_65788(a4);
      goto LABEL_16;
    }

    v12 = a6;
    sub_66DD4(v10 + 1, a4);
  }

  v13 = *v6;
  sub_C5484();
  sub_C62F4();
  sub_C5514();
  v14 = sub_C6344();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = sub_C5484();
      v19 = v18;
      if (v17 == sub_C5484() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = sub_C6244();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v9;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_C6284();
  __break(1u);
  return result;
}

void sub_64E3C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_63800();
  }

  else
  {
    if (v7 > v6)
    {
      sub_658C8();
      goto LABEL_12;
    }

    sub_67020();
  }

  v8 = *v3;
  v9 = sub_C5D34(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_67444();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_C5D44();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_C6284();
  __break(1u);
}

void *sub_64F9C(uint64_t *a1)
{
  v2 = v1;
  sub_3CB0(a1);
  v3 = *v1;
  v4 = sub_C5F74();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_650CC()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB0(&qword_107B08);
  v6 = *v0;
  v7 = sub_C5F74();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_19D98(*(v6 + 48) + v21, v5);
        result = sub_19D34(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_652B0()
{
  v1 = v0;
  sub_3CB0(&qword_107B00);
  v2 = *v0;
  v3 = sub_C5F74();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
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

void *sub_653F4(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_3CB0(a2);
  v9 = *v2;
  v10 = sub_C5F74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_6562C()
{
  v1 = v0;
  sub_3CB0(&qword_107AF0);
  v2 = *v0;
  v3 = sub_C5F74();
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
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_65788(uint64_t *a1)
{
  v2 = v1;
  sub_3CB0(a1);
  v3 = *v1;
  v4 = sub_C5F74();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_658C8()
{
  v1 = v0;
  sub_3CB0(&qword_107728);
  v2 = *v0;
  v3 = sub_C5F74();
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
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_65A18()
{
  v1 = v0;
  v2 = *v0;
  sub_3CB0(&qword_107750);
  result = sub_C5F84();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_C62F4();
      sub_C6304(v15);
      result = sub_C6344();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_65C38()
{
  v1 = v0;
  v2 = *v0;
  sub_3CB0(&qword_107B18);
  v3 = sub_C5F84();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_C62F4();
      sub_C5514();

      v12 = sub_C6344();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x65FE4);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_66018()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_3CB0(&qword_107B08);
  result = sub_C5F84();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_19D98(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_C62F4();
      sub_C3D14();
      sub_67708(&qword_104C98, &type metadata accessor for UUID);
      sub_C5304();
      result = sub_C6344();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_19D34(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_66320()
{
  v1 = *v0;
  sub_3CB0(&qword_107B00);
  result = sub_C5F84();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      v15 = (*(v1 + 48) + 16 * (v12 | (v4 << 6)));
      v16 = *v15;
      v17 = v15[1];
      sub_C62F4();
      if (v16 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      sub_C6324(*&v18);
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      sub_C6324(*&v19);
      result = sub_C6344();
      v20 = -1 << *(v3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v9 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v9 + 8 * v22);
          if (v26 != -1)
          {
            v10 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v10 = __clz(__rbit64((-1 << v21) & ~*(v9 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = (*(v3 + 48) + 16 * v10);
      *v11 = v16;
      v11[1] = v17;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_30;
      }

      v14 = *(v1 + 56 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v7 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_66564()
{
  v1 = v0;
  v32 = sub_C3D14();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_3CB0(&qword_107AF8);
  v6 = sub_C5F84();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_67708(&qword_104C98, &type metadata accessor for UUID);
      result = sub_C52F4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_66880()
{
  v1 = v0;
  v32 = sub_C3E84();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_3CB0(&qword_107710);
  v6 = sub_C5F84();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_67708(&qword_107718, &type metadata accessor for Calendar.Component);
      result = sub_C52F4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_66B9C()
{
  v1 = v0;
  v2 = *v0;
  sub_3CB0(&qword_107AF0);
  result = sub_C5F84();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      sub_C62F4();
      sub_C5314();
      result = sub_C6344();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v18;
      v12[1] = v17;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_66DD4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_3CB0(a2);
  result = sub_C5F84();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_C5484();
      sub_C62F4();
      v19 = v18;
      sub_C5514();
      v20 = sub_C6344();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_67020()
{
  v1 = v0;
  v2 = *v0;
  sub_3CB0(&qword_107728);
  result = sub_C5F84();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_C5D34(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_67234(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_67750();
  result = sub_C5814();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_60B4C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_672A8(uint64_t a1)
{
  v2 = sub_C3E84();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_67708(&qword_107718, &type metadata accessor for Calendar.Component);
  result = sub_C5814();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_61678(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

unint64_t sub_67444()
{
  result = qword_1047A0;
  if (!qword_1047A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1047A0);
  }

  return result;
}

uint64_t sub_67490(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for NLTag(0);
  sub_67708(&qword_104590, type metadata accessor for NLTag);
  result = sub_C5814();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_61AA8(&v6, v5, &qword_107AE8, &unk_D07D8, type metadata accessor for NLTag);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_67580(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_C5814();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_61958(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_67618(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MKPointOfInterestCategory(0);
  sub_67708(&qword_1045B0, type metadata accessor for MKPointOfInterestCategory);
  result = sub_C5814();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_61AA8(&v6, v5, &qword_107AE0, &unk_D07D0, type metadata accessor for MKPointOfInterestCategory);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_67708(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_67750()
{
  result = qword_107B10;
  if (!qword_107B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107B10);
  }

  return result;
}

uint64_t sub_677A4()
{
  sub_3CB0(&qword_107B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_D0810;
  *(inited + 32) = sub_C5444();
  *(inited + 40) = sub_C5444();
  *(inited + 48) = sub_C5444();
  *(inited + 56) = sub_C5444();
  *(inited + 64) = sub_C5444();
  *(inited + 72) = sub_C5444();
  v1 = sub_67490(inited);
  swift_setDeallocating();
  type metadata accessor for NLTag(0);
  result = swift_arrayDestroy();
  qword_107B20 = v1;
  return result;
}

uint64_t sub_678AC()
{
  v0 = sub_67580(&off_F0770);
  result = swift_arrayDestroy();
  qword_107B28 = v0;
  return result;
}

uint64_t sub_678F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_C5444();
  [a4 setString:v6];

  v7 = sub_C5444();
  [a3 setString:v7];

  sub_C5954();
  return 0;
}

uint64_t sub_679EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v10 = sub_C5D04();
  if (v10)
  {
    a5 = v10;
    if (qword_104260 != -1)
    {
      swift_once();
    }

    if (sub_8A6FC(a5, qword_107B20))
    {
      sub_C55A4();
      a7 = sub_C5DE4();

      v11 = *a6 + a7;
      if (!__OFADD__(*a6, a7))
      {
        goto LABEL_14;
      }

      __break(1u);
    }
  }

  v12 = sub_C55A4();
  if ((v12 ^ v13) >> 14)
  {
    sub_C5DC4();
    a7 = sub_C5DF4();
    a5 = v14;

    if (qword_104268 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  while (1)
  {
    v11 = *a6 + 1;
    if (!__OFADD__(*a6, 1))
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_12:
    v15 = sub_87CFC(a7, a5, qword_107B28);

    if (v15)
    {
      return 1;
    }
  }

LABEL_14:
  *a6 = v11;
  return 1;
}

char *sub_67BD4(NSObject *a1, int a2, uint64_t a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v47 = a5;
  LODWORD(v46) = a4;
  v45 = a3;
  v44 = a2;
  v12 = sub_C4C54();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_C4CD4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v50 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v43[-v19];
  v21 = OBJC_IVAR____TtC20JournalNotifications5Asset_type;
  v22 = qword_115568;
  v23 = sub_C49F4();
  (*(*(v23 - 8) + 16))(&v8[v22], a1 + v21, v23);
  *&v8[qword_115570] = *(a1 + OBJC_IVAR____TtC20JournalNotifications5Asset_attachments);
  *&v8[qword_115578] = *(a1 + OBJC_IVAR____TtC20JournalNotifications5Asset_sourceAttachments);
  v24 = *(&a1->isa + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);

  if (v24)
  {
    v25 = [v24 objectID];
  }

  else
  {
    v25 = 0;
  }

  *&v8[qword_115580] = v25;
  v26 = *(&a1->isa + OBJC_IVAR____TtC20JournalNotifications5Asset_context);
  *&v8[qword_115588] = v26;
  v8[qword_115590] = v44;
  v27 = &v8[qword_115598];
  *v27 = v45;
  v27[8] = v46 & 1;
  v28 = &v8[qword_107B38];
  v29 = v47;
  *v28 = v47;
  v28[1] = a6;
  *&v8[qword_1155A0] = a7;
  v52 = 0;
  v53 = 0xE000000000000000;
  v30 = v26;

  v46 = a7;
  sub_C5FC4(26);

  v52 = 0xD000000000000018;
  v53 = 0x80000000000CA870;
  v54._countAndFlagsBits = v29;
  v54._object = a6;
  sub_C5524(v54);

  sub_C4CC4();
  v31 = qword_107B40;
  (*(v16 + 32))(&v8[qword_107B40], v20, v15);
  v32 = *(v16 + 16);
  v32(v20, &v8[v31], v15);
  sub_C4C34();
  (*(v48 + 32))(&v8[qword_107B48], v14, v49);
  v33 = type metadata accessor for ThumbnailCacheOperation();
  v51.receiver = v8;
  v51.super_class = v33;
  v34 = [&v51 init];
  v35 = v50;
  v32(v50, &v34[qword_107B40], v15);
  v36 = v34;
  v37 = sub_C4CB4();
  v38 = sub_C5A34();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "Initialized", v39, 2u);

    v40 = v46;
    v41 = a1;
    a1 = v36;
  }

  else
  {
    v40 = v36;
    v41 = v37;
    v37 = v46;
  }

  (*(v16 + 8))(v35, v15);
  return v36;
}

uint64_t sub_68090(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v5 = sub_C4C64();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_C5C64();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_C49F4();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = sub_C4C24();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_C5724();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[25] = v9;
  v3[26] = v11;

  return _swift_task_switch(sub_682BC, v9, v11);
}

uint64_t sub_682BC()
{
  v0[27] = qword_107B48;
  sub_C4C14();
  v1 = sub_C4C44();
  v2 = sub_C5BA4();
  if (sub_C5D84())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_C4C04();
    _os_signpost_emit_with_name_impl(&dword_0, v1, v2, v4, "Image attachment loading", "", v3, 2u);
  }

  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[21];

  (*(v8 + 16))(v5, v6, v7);
  sub_C4C94();
  swift_allocObject();
  v0[28] = sub_C4C84();
  v9 = *(v8 + 8);
  v0[29] = v9;
  v0[30] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  if (qword_104290 != -1)
  {
    swift_once();
  }

  v10 = v0[10];
  v0[31] = qword_1155B8;
  v11 = (v10 + qword_107B38);
  v12 = *v11;
  v0[32] = *v11;
  v13 = v11[1];
  v0[33] = v13;
  v14 = sub_6BC94(v12, v13);
  if (v14 && (v15 = v14, v16 = [v14 imageByPreparingForDisplay], v15, v16))
  {
    v17 = sub_C4CB4();
    v18 = sub_C5A64();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Cache hit.", v19, 2u);
    }

    v20 = v0[10];

    sub_69C6C(v20, "Image attachment loading", 24, 2);

    v21 = v0[1];

    return v21(v16);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = sub_68620;
    v24 = v0[8];

    return sub_69F14(v24);
  }
}

uint64_t sub_68620(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_68748, v4, v3);
}

uint64_t sub_68748()
{
  v1 = v0[35];
  if (v1)
  {
    v2 = v0[10];
    sub_6BFFC();
    v3 = sub_5E330(v1);
    if (sub_7E424(*(v2 + qword_115590)))
    {
      sub_6B8E0(v3, v0[32], v0[33]);
    }

    v4 = sub_C4CB4();
    v5 = sub_C5A64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Image file attachment found.", v6, 2u);
    }

    v7 = v0[10];

    sub_69C6C(v7, "Image attachment loading", 24, 2);
    goto LABEL_34;
  }

  (*(v0[18] + 104))(v0[19], enum case for AssetType.photo(_:), v0[17]);
  sub_6C538(&qword_107CB0, &type metadata accessor for AssetType);
  sub_C55F4();
  sub_C55F4();
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v9 + 8))(v0[19], v0[17]);
  }

  else
  {
    v11 = sub_C6244();
    (*(v9 + 8))(v8, v10);

    if ((v11 & 1) == 0)
    {
      v26 = v0[10];
      v27 = sub_C4CB4();
      v28 = sub_C5A44();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[10];
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        v32 = *&v30[qword_115570];
        if (v32 >> 62)
        {
          v49 = v31;
          v33 = sub_C60E4();
          v31 = v49;
        }

        else
        {
          v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
        }

        v34 = v0[10];
        *(v31 + 4) = v33;
        v35 = v31;

        _os_log_impl(&dword_0, v27, v28, "did not find image file attachment, attachments.count=%ld", v35, 0xCu);
      }

      else
      {
      }

      v25 = v0[10];
LABEL_33:
      sub_69C6C(v25, "Image attachment loading", 24, 2);
      v3 = 0;
LABEL_34:

      v48 = v0[1];

      return v48(v3);
    }
  }

  v0[36] = qword_107B40;
  v12 = sub_C4CB4();
  v13 = sub_C5A64();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Will try to get image from Core Data (legacy support)", v14, 2u);
  }

  v15 = v0[10];

  v16 = *(v15 + qword_115588);
  v0[37] = v16;
  if (!v16)
  {
    v21 = sub_C4CB4();
    v22 = sub_C5A44();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "context is nil", v23, 2u);
    }

    v24 = v0[10];

    v25 = v24;
    goto LABEL_33;
  }

  v17 = *(v0[10] + qword_115580);
  v0[38] = v17;
  if (!v17)
  {
    v36 = v16;
    v37 = sub_C4CB4();
    v38 = sub_C5A44();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "assetID is nil", v39, 2u);
    }

    v40 = v0[10];

    v25 = v40;
    goto LABEL_33;
  }

  v18 = v16;
  v19 = v17;
  if ([v18 concurrencyType] == &dword_0 + 1)
  {
    v20 = v18;
  }

  else
  {
    v20 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v20 setParentContext:v18];
  }

  v0[39] = v20;
  v41 = v0[10];
  (*(v0[15] + 104))(v0[16], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[14]);
  v42 = swift_allocObject();
  v0[40] = v42;
  v42[2] = v20;
  v42[3] = v19;
  v42[4] = v41;
  v43 = v19;
  v20;
  v44 = v41;
  v45 = swift_task_alloc();
  v0[41] = v45;
  v46 = sub_3CB0(&qword_106A68);
  *v45 = v0;
  v45[1] = sub_68E60;
  v47 = v0[16];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v47, sub_6BFDC, v42, v46);
}

uint64_t sub_68E60()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[39];
    (*(v2[15] + 8))(v2[16], v2[14]);

    v5 = v2[25];
    v6 = v2[26];

    return _swift_task_switch(sub_68FB4, v5, v6);
  }
}

uint64_t sub_68FB4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    v7 = objc_allocWithZone(UIImage);
    sub_4098C(v2, v1);
    isa = sub_C3974().super.isa;
    v9 = [v7 initWithData:isa];

    sub_1D580(v2, v1);
    if (v9)
    {
      v10 = *(v0 + 80);
      sub_6BFFC();
      v11 = sub_5E330(v9);
      if (sub_7E424(*(v10 + qword_115590)))
      {
        sub_6B8E0(v11, *(v0 + 256), *(v0 + 264));
      }

      v12 = sub_C4C44();
      sub_C4C74();
      v13 = sub_C5B94();
      if (sub_C5D84())
      {
        v39 = v13;
        v14 = *(v0 + 96);
        v15 = *(v0 + 104);
        v16 = *(v0 + 88);

        sub_C4CA4();

        if ((*(v14 + 88))(v15, v16) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v17 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
          v17 = "";
        }

        v25 = *(v0 + 312);
        v37 = *(v0 + 296);
        v38 = *(v0 + 304);
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = sub_C4C04();
        _os_signpost_emit_with_name_impl(&dword_0, v12, v39, v27, "Image attachment loading", v17, v26, 2u);

        sub_1D580(v2, v1);
        v12 = v37;
        v9 = v38;
      }

      else
      {
        v23 = *(v0 + 312);
        v24 = *(v0 + 296);

        sub_1D580(v2, v1);
      }

      v28 = *(v0 + 80);
      (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
      sub_69C6C(v28, "Image attachment loading", 24, 2);
      goto LABEL_28;
    }

    sub_4098C(v2, v1);
    v18 = sub_C4CB4();
    v19 = sub_C5A44();
    if (!os_log_type_enabled(v18, v19))
    {
      sub_1D580(v2, v1);
LABEL_26:
      v33 = *(v0 + 304);
      v34 = *(v0 + 296);
      v35 = *(v0 + 80);

      sub_1D580(v2, v1);
      v6 = v35;
      goto LABEL_27;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v21 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_25;
      }

      v30 = *(v2 + 16);
      v29 = *(v2 + 24);
      v31 = __OFSUB__(v29, v30);
      v22 = v29 - v30;
      if (!v31)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v1);
LABEL_25:
      *(result + 4) = v22;
      v32 = result;
      sub_1D580(v2, v1);
      _os_log_impl(&dword_0, v18, v19, "can't create image from data (size: %{bytes}ld)", v32, 0xCu);

      goto LABEL_26;
    }

    LODWORD(v22) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_25;
  }

  v3 = *(v0 + 304);
  v4 = *(v0 + 296);
  v5 = *(v0 + 80);

  v6 = v5;
LABEL_27:
  sub_69C6C(v6, "Image attachment loading", 24, 2);
  v11 = 0;
LABEL_28:

  v36 = *(v0 + 8);

  return v36(v11);
}

uint64_t sub_69430(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v8 = (*(&stru_B8.reloff + (swift_isaMask & *v2)) + **(&stru_B8.reloff + (swift_isaMask & *v2)));
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_69570;

  return v8(a1, a2);
}

uint64_t sub_69570(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 184) = a1;

  if (v3)
  {
    swift_getObjectType();
    v4 = sub_C5724();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v2 + 192) = v4;
  *(v2 + 200) = v6;

  return _swift_task_switch(sub_696C0, v4, v6);
}

uint64_t sub_696C0()
{
  v11 = v0;
  sub_C57B4();
  v1 = *(v0[21] + qword_1081C8);
  v2 = swift_task_alloc();
  *v2 = sub_6BFFC();
  KeyPath = swift_getKeyPath();

  v4 = swift_task_alloc();
  *(v4 + 16) = sub_6C638;
  *(v4 + 24) = KeyPath;

  os_unfair_lock_lock((v1 + 40));
  sub_6C640((v1 + 16), v10);
  os_unfair_lock_unlock((v1 + 40));

  LOBYTE(KeyPath) = v10[0];

  v5 = v0[23];
  if ((KeyPath & 1) != 0 || !v5)
  {
    v7 = v0[1];
    v8 = v0[23];

    return v7(v8);
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_69934;
    v6 = swift_continuation_init();
    v0[17] = sub_3CB0(&qword_107948);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_5E7EC;
    v0[13] = &unk_F27C0;
    v0[14] = v6;
    [v5 prepareForDisplayWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_69934()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_69A3C, v2, v1);
}

uint64_t sub_69A3C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 184);
  if (v1)
  {

    v2 = v1;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_69AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_69B5C;

  return sub_69430(a2, a3);
}

uint64_t sub_69B5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_69C6C(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_C4C64();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_C4C24();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_C4C44();
  sub_C4C74();
  v20 = sub_C5B94();
  result = sub_C5D84();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_C4CA4();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_C4C04();
      _os_signpost_emit_with_name_impl(&dword_0, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_69F14(uint64_t a1)
{
  v2[10] = v1;
  v4 = sub_C4D54();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_C4D24();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_3CB0(&qword_106940);
  v2[18] = swift_task_alloc();
  v6 = sub_C4BF4();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_C44D4();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_3CB0(&qword_1063B8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v8 = sub_C3934();
  v2[31] = v8;
  v2[32] = *(v8 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = type metadata accessor for AssetAttachment.AssetType(0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_C5724();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v2[39] = v9;
  v2[40] = v11;

  return _swift_task_switch(sub_6A2A4, v9, v11);
}

uint64_t sub_6A2A4()
{
  v1 = v0[10];
  v2 = *(v1 + qword_115570);
  if (v2 >> 62)
  {
LABEL_53:
    v3 = sub_C60E4();
    v1 = v0[10];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_43:

    v46 = v0[1];

    return v46(0);
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_43;
  }

LABEL_3:
  v4 = 0;
  v5 = (v1 + qword_115598);
  v6 = v0[32];
  v7 = v2 & 0xC000000000000001;
  v76 = v2 & 0xFFFFFFFFFFFFFF8;
  v70 = (v6 + 56);
  v8 = v0[20];
  v68 = v2;
  v69 = (v6 + 32);
  v71 = (v6 + 48);
  v72 = v2 & 0xC000000000000001;
  v66 = (v8 + 48);
  v67 = v3;
  v63 = (v8 + 32);
  v62 = (v8 + 8);
  v64 = (v0[24] + 8);
  v65 = (v6 + 8);
  v73 = v5;
  while (1)
  {
    if (v7)
    {
      v11 = sub_C5FE4();
    }

    else
    {
      if (v4 >= *(v76 + 16))
      {
        goto LABEL_52;
      }

      v11 = *(v2 + 8 * v4 + 32);
    }

    v0[41] = v11;
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v78 = *v5;
    v79 = *(v5 + 8);
    v77 = OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType;
    sub_3ED7C(v11 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, v0[38], type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v14 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_3ECB8(v0[38], v14);
      if (v79)
      {
        goto LABEL_41;
      }

      v19 = *(v11 + 16);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v9 = v0[38];

      v10 = v9;
LABEL_5:
      sub_3ECB8(v10, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v15 = v0[37];

    sub_3ED7C(v11 + v77, v15, type metadata accessor for AssetAttachment.AssetType);
    v16 = swift_getEnumCaseMultiPayload();
    v17 = v0[37];
    if (v16 <= 1)
    {
      if (v16)
      {
        sub_3ECB8(v17, type metadata accessor for AssetAttachment.AssetType);
        v29 = 1;
        goto LABEL_28;
      }
    }

    else if ((v16 - 2) >= 2)
    {
      v18 = v0[37];

      v17 = v18 + *(sub_3CB0(&qword_106948) + 48);
    }

    v20 = v0[27];
    v21 = v0[28];
    sub_3ED18(v17, v21);
    sub_3ED7C(v21, v20, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v0[30];
      v23 = v0[31];
      v24 = v0[27];
      sub_3ECB8(v0[28], type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*v69)(v22, v24, v23);
    }

    else
    {
      v25 = v0[28];
      v26 = v0[25];
      v27 = v0[23];
      sub_C44C4();
      v3 = v67;
      sub_C4494();

      v28 = v27;
      v2 = v68;
      (*v64)(v26, v28);
      sub_3ECB8(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v29 = 0;
    v7 = v72;
    v5 = v73;
LABEL_28:
    v75 = v0[38];
    v30 = v0[30];
    v31 = v0[31];
    (*v70)(v30, v29, 1, v31);
    v74 = *(sub_3CB0(&qword_106948) + 48);
    if ((*v71)(v30, 1, v31) == 1)
    {
      v32 = v0[30];

      sub_C060(v32, &qword_1063B8);
LABEL_38:
      v10 = v75 + v74;
      goto LABEL_5;
    }

    v34 = v0[18];
    v33 = v0[19];
    (*v69)(v0[35], v0[30], v0[31]);
    sub_C38A4();
    sub_C4B64();
    sub_C4B34();
    v35 = (*v66)(v34, 1, v33);
    v36 = v0[35];
    v37 = v0[31];
    if (v35 == 1)
    {
      v38 = v0[18];

      (*v65)(v36, v37);
      sub_C060(v38, &qword_106940);
LABEL_37:
      v3 = v67;
      v2 = v68;
      v7 = v72;
      v5 = v73;
      goto LABEL_38;
    }

    v40 = v0[21];
    v39 = v0[22];
    v41 = v0[19];
    (*v63)(v39, v0[18], v41);
    sub_C4B94();
    v61 = sub_C4BD4();
    v42 = *v62;
    (*v62)(v40, v41);
    v42(v39, v41);
    (*v65)(v36, v37);
    if ((v61 & 1) == 0)
    {

      goto LABEL_37;
    }

    v2 = v68;
    v7 = v72;
    v5 = v73;
    if (v79)
    {
      break;
    }

    v19 = *(v11 + 16);
    sub_3ECB8(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v3 = v67;
LABEL_21:
    if (v19 == v78)
    {
      goto LABEL_41;
    }

LABEL_6:
    ++v4;
    if (v12 == v3)
    {
      goto LABEL_43;
    }
  }

  sub_3ECB8(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_41:
  v43 = v0[31];
  v44 = v0[29];
  sub_7BFE8(v44);
  if ((*v71)(v44, 1, v43) == 1)
  {
    v45 = v0[29];

    sub_C060(v45, &qword_1063B8);
    goto LABEL_43;
  }

  v48 = v0[10];
  (*v69)(v0[34], v0[29], v0[31]);
  sub_C4D14();
  sub_C4D04();
  if (sub_7EC34(*(v48 + qword_115590)))
  {
    v49 = v0[10];
    sub_5DAF8();
    sub_C4CF4();
    v50 = *(v49 + qword_1155A0);
    [v50 displayScale];
    v52 = v51;
    v53 = sub_C4CE4();
    *v54 = v52 * *v54;
    v53(v0 + 2, 0);
    [v50 displayScale];
    v56 = v55;
    v57 = sub_C4CE4();
    *(v58 + 8) = v56 * *(v58 + 8);
    v57(v0 + 6, 0);
  }

  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  sub_C4D34();
  v59 = swift_task_alloc();
  v0[42] = v59;
  *v59 = v0;
  v59[1] = sub_6AC2C;
  v60 = v0[34];

  return UIImageReader.image(contentsOf:)(v60);
}

uint64_t sub_6AC2C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 344) = a1;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);

  return _swift_task_switch(sub_6AD54, v4, v3);
}

uint64_t sub_6AD54()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[32];
  if (v0[43])
  {
    v3 = v0[34];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
    (*(v2 + 8))(v3, v1);
    v36 = v0[43];
  }

  else
  {
    (*(v2 + 16))(v0[33], v0[34], v0[31]);
    v10 = sub_C4CB4();
    v33 = sub_C5A44();
    v11 = os_log_type_enabled(v10, v33);
    v12 = v0[33];
    v13 = v0[34];
    v14 = v0[31];
    v15 = v0[32];
    v16 = v0[17];
    v17 = v0[15];
    v18 = v0[12];
    v35 = v0[13];
    v37 = v0[14];
    v34 = v0[11];
    if (v11)
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v19 = 136315138;
      sub_6C538(&qword_107CC0, &type metadata accessor for URL);
      v20 = sub_C6214();
      v21 = v14;
      v31 = v14;
      v32 = v16;
      v22 = v20;
      v24 = v23;
      v25 = *(v15 + 8);
      v25(v12, v21);
      v26 = sub_BA920(v22, v24, &v38);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_0, v10, v33, "getImageStoredInFile can't create image from %s", v19, 0xCu);
      sub_BED0(v30);

      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v32, v37);
      v25(v13, v31);
    }

    else
    {

      v27 = *(v15 + 8);
      v27(v12, v14);
      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v16, v37);
      v27(v13, v14);
    }

    v36 = 0;
  }

  v28 = v0[1];

  return v28(v36);
}

void sub_6B134(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  sub_C3FE4();
  if (!swift_dynamicCastClass())
  {

    v14 = sub_C4CB4();
    v15 = sub_C5A44();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Failed to retrieve assetMO based on NSManagedObjectID", v16, 2u);
    }

    goto LABEL_11;
  }

  v5 = sub_867D8(0);
  if (!v5 || (v6 = v5, v7 = [v5 data], v6, !v7))
  {
    v11 = sub_C4CB4();
    v12 = sub_C5A64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "data attachment [0] is nil", v13, 2u);
    }

LABEL_11:
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_12;
  }

  v8 = sub_C3984();
  v10 = v9;

LABEL_12:
  *a3 = v8;
  a3[1] = v10;
}

uint64_t sub_6B32C()
{

  v1 = qword_115568;
  v2 = sub_C49F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_107B40;
  v4 = sub_C4CD4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_107B48;
  v6 = sub_C4C54();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

id sub_6B478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailCacheOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6B4B0(uint64_t a1)
{

  v2 = qword_115568;
  v3 = sub_C49F4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = qword_107B40;
  v5 = sub_C4CD4();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = qword_107B48;
  v7 = sub_C4C54();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t type metadata accessor for ThumbnailCacheOperation()
{
  result = qword_107B78;
  if (!qword_107B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6B64C()
{
  result = sub_C49F4();
  if (v1 <= 0x3F)
  {
    result = sub_C4CD4();
    if (v2 <= 0x3F)
    {
      result = sub_C4C54();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_6B7A0@<X0>(_BYTE *a1@<X8>)
{
  sub_28D98(&unk_10A100);
  sub_C6364();
  swift_getFunctionTypeMetadata1();
  sub_C5704();
  swift_getWitnessTable();
  result = sub_C58D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_6B86C()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_6B8E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C50E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_C5154();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_104298 != -1)
  {
    swift_once();
  }

  v18[1] = qword_1155C0;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_6C0C8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_34660;
  aBlock[3] = &unk_F2798;
  v15 = _Block_copy(aBlock);

  v16 = a1;

  sub_C5104();
  v20 = _swiftEmptyArrayStorage;
  sub_6C538(&qword_105558, &type metadata accessor for DispatchWorkItemFlags);
  sub_3CB0(&qword_105560);
  sub_28D34();
  sub_C5E94();
  sub_C5B34();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

uint64_t sub_6BC04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v8 = a2;
    sub_6C2B0(v8, a3, a4);
  }

  return result;
}

id sub_6BC94(uint64_t a1, uint64_t a2)
{
  v4 = sub_C3894();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_C3934();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  if (qword_1042C8 != -1)
  {
    swift_once();
  }

  v15 = sub_C44D4();
  sub_B680(v15, qword_115648);
  sub_C44A4();
  v24[0] = a1;
  v24[1] = a2;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_19DFC();
  sub_C3924();
  (*(v5 + 8))(v7, v4);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = [objc_opt_self() defaultManager];
  sub_C3904();
  v18 = sub_C5444();

  v19 = [v17 fileExistsAtPath:v18];

  v20 = 0;
  if (v19)
  {
    sub_C3884();
    v21 = objc_allocWithZone(UIImage);
    v22 = sub_C5444();

    v20 = [v21 initWithContentsOfFile:v22];
  }

  v16(v14, v8);
  return v20;
}

uint64_t sub_6BF94()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_6BFFC()
{
  result = qword_107CB8;
  if (!qword_107CB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_107CB8);
  }

  return result;
}

uint64_t sub_6C048()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6C080()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_6C0D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6C2B0(UIImage *a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_C3894();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C3934();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (qword_1042C8 != -1)
  {
    swift_once();
  }

  v16 = sub_C44D4();
  sub_B680(v16, qword_115648);
  sub_C44A4();
  v26 = a2;
  v27 = a3;
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_19DFC();
  sub_C3924();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = UIImageHEICRepresentation(v25);
  if (v18)
  {
    v19 = v18;
    v20 = sub_C3984();
    v22 = v21;

    sub_6C0EC();
    sub_BF1C(v20, v22);
  }

  return (v17)(v15, v9);
}

uint64_t sub_6C538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6C580()
{
  sub_28D98(&unk_10A100);
  sub_C6364();
  swift_getFunctionTypeMetadata1();
  sub_C5704();

  return swift_getWitnessTable();
}

uint64_t sub_6C640@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

uint64_t sub_6C6A4()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_107CC8);
  sub_B680(v0, qword_107CC8);
  return sub_C4CC4();
}

uint64_t sub_6C734(uint64_t a1)
{
  v2[3] = v1;
  v4 = sub_C3934();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_C5724();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v2[8] = v5;
  v2[9] = v7;

  return _swift_task_switch(sub_6C83C, v5, v7);
}

uint64_t sub_6C83C()
{
  v1 = v0[3];
  v2 = *(v1 + qword_107CF0);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_6D6A8();
  *v4 = v0;
  v4[1] = sub_6C938;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_D0988, v3, v5);
}

uint64_t sub_6C938()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_6CF10;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_6CA54;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6CA54()
{
  v1 = v0[2];
  if (!sub_C5CF4())
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_104270 != -1)
    {
      swift_once();
    }

    v12 = v0[3];
    v13 = sub_C4CD4();
    sub_B680(v13, qword_107CC8);
    v14 = v12;
    v1 = v1;
    v15 = sub_C4CB4();
    v16 = sub_C5A44();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[3];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      v20 = *(v17 + qword_107CE0);
      *(v18 + 4) = v20;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v1;
      *v19 = v20;
      v19[1] = v1;
      v21 = v1;
      v22 = v20;
      _os_log_impl(&dword_0, v15, v16, "error getting JournalEntryAsset.assetMetadataAsset as CKAsset for requested id: %@. Record: %@", v18, 0x16u);
      sub_3CB0(&qword_1050F0);
      swift_arrayDestroy();
    }

    sub_6D6F4();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v3 = [v2 fileURL];
  if (!v3)
  {
    if (qword_104270 != -1)
    {
      swift_once();
    }

    v26 = v0[3];
    v27 = sub_C4CD4();
    sub_B680(v27, qword_107CC8);
    v28 = v26;
    v29 = sub_C4CB4();
    v30 = sub_C5A44();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[3];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v31 + qword_107CE0);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&dword_0, v29, v30, "ckAsset.fileURL is nil for requested recordID: %@", v32, 0xCu);
      sub_60738(v33);
    }

    sub_6D6F4();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_12:

    goto LABEL_13;
  }

  v4 = v0[12];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v3;
  sub_C38F4();

  (*(v8 + 32))(v5, v6, v7);
  v11 = sub_C3944();
  if (v4)
  {
    (*(v0[5] + 8))(v0[7], v0[4], v11);

    swift_unknownObjectRelease();
LABEL_13:

    v24 = v0[1];

    return v24();
  }

  v37 = v11;
  v38 = v10;
  (*(v0[5] + 8))();
  swift_unknownObjectRelease();

  v39 = v0[1];

  return v39(v37, v38, v1);
}

uint64_t sub_6CF10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6CF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_6CFA8, 0, 0);
}

uint64_t sub_6CFA8()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_107CE0);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_6D0DC;
  v3 = swift_continuation_init();
  v0[17] = sub_3CB0(&qword_107E20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_327E0;
  v0[13] = &unk_F27E8;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6D0DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_6D20C;
  }

  else
  {
    v2 = sub_6D1EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6D20C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void sub_6D2A8()
{
  v1 = *(v0 + qword_107CF0);
}

id sub_6D2F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMetadataDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_6D330(uint64_t a1)
{
  v2 = *(a1 + qword_107CF0);
}

uint64_t type metadata accessor for AssetMetadataDownloadOperation()
{
  result = qword_107D20;
  if (!qword_107D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6D424(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_6D4CC;

  return sub_6C734(a2);
}

uint64_t sub_6D4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_6D5F8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE7C;

  return sub_6CF84(a1, a2, v6);
}

unint64_t sub_6D6A8()
{
  result = qword_107E10;
  if (!qword_107E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_107E10);
  }

  return result;
}

unint64_t sub_6D6F4()
{
  result = qword_107E18;
  if (!qword_107E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107E18);
  }

  return result;
}

unint64_t sub_6D774()
{
  result = qword_107E28;
  if (!qword_107E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107E28);
  }

  return result;
}

uint64_t type metadata accessor for CanvasContentInputType()
{
  result = qword_107EA0;
  if (!qword_107EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6D864()
{
  sub_6D8D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_6D8D8()
{
  if (!qword_107EB0)
  {
    sub_2863C();
    if (!v1)
    {
      atomic_store(v0, &qword_107EB0);
    }
  }
}

uint64_t sub_6D930(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_3CB0(&qword_108088);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_3CB0(&qword_108090);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_3CB0(&qword_108098);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_13DC4(a1, a1[3]);
  sub_71FFC();
  sub_C6384();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_72050();
    sub_C61B4();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_720A4();
    sub_C61B4();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_6DBF8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_6DC34(uint64_t a1)
{
  v2 = sub_72050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6DC70(uint64_t a1)
{
  v2 = sub_72050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6DCAC()
{
  if (*v0)
  {
    return 2036625250;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_6DCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_C6244() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_C6244();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_6DDC0(uint64_t a1)
{
  v2 = sub_71FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6DDFC(uint64_t a1)
{
  v2 = sub_71FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6DE38(uint64_t a1)
{
  v2 = sub_720A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6DE74(uint64_t a1)
{
  v2 = sub_720A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6DEB0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_71BC0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_6DF00()
{
  result = qword_107EE0;
  if (!qword_107EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107EE0);
  }

  return result;
}

uint64_t sub_6DF54(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0x7055776F6C6C6F66;
    if (a1 != 10)
    {
      v7 = 0x776F6C667265766FLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (a1 == 7)
    {
      v8 = 0x6E6F697461636F6CLL;
    }

    if (a1 == 6)
    {
      v8 = 0x6369506F69647561;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0xD000000000000010;
    v3 = 0x6369506F746F6870;
    if (a1 != 4)
    {
      v3 = 0x69506172656D6163;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6472616F6279656BLL;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_6E118(void *a1)
{
  v2 = sub_3CB0(&qword_107FD8);
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2);
  v86 = &v54 - v3;
  v4 = sub_3CB0(&qword_107FE0);
  v84 = *(v4 - 8);
  v85 = v4;
  __chkstk_darwin(v4);
  v83 = &v54 - v5;
  v6 = sub_3CB0(&qword_107FE8);
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v54 - v7;
  v8 = sub_3CB0(&qword_107FF0);
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v54 - v9;
  v10 = sub_3CB0(&qword_107FF8);
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v74 = sub_3CB0(&qword_108000);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v54 - v12;
  v70 = sub_3CB0(&qword_108008);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v54 - v13;
  v65 = sub_3CB0(&qword_108010);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v54 - v14;
  v68 = sub_3CB0(&qword_108018);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v54 - v15;
  v16 = sub_3CB0(&qword_104778);
  __chkstk_darwin(v16 - 8);
  v61 = &v54 - v17;
  v60 = sub_3CB0(&qword_108020);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v54 - v18;
  v58 = sub_3CB0(&qword_108028);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v54 - v19;
  v21 = sub_3CB0(&qword_108030);
  v55 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3CB0(&qword_108038);
  v28 = *(v27 - 8);
  v91 = v27;
  v92 = v28;
  __chkstk_darwin(v27);
  v30 = &v54 - v29;
  sub_13DC4(a1, a1[3]);
  sub_70F90();
  v90 = v30;
  sub_C6384();
  sub_70EBC(v89, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v103 = 9;
        sub_710F0();
        v37 = v80;
        v38 = v90;
        v39 = v91;
        sub_C61B4();
        v41 = v81;
        v40 = v82;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v104 = 10;
        sub_7109C();
        v37 = v83;
        v38 = v90;
        v39 = v91;
        sub_C61B4();
        v41 = v84;
        v40 = v85;
      }

      else
      {
        v105 = 11;
        sub_70FE4();
        v37 = v86;
        v38 = v90;
        v39 = v91;
        sub_C61B4();
        v41 = v87;
        v40 = v88;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v99 = 5;
        sub_71240();
        v48 = v66;
        v38 = v90;
        v39 = v91;
        sub_C61B4();
        (*(v69 + 8))(v48, v70);
        return (*(v92 + 8))(v38, v39);
      }

      if (EnumCaseMultiPayload == 7)
      {
        v101 = 7;
        sub_71198();
        v37 = v73;
        v38 = v90;
        v39 = v91;
        sub_C61B4();
        v41 = v75;
        v40 = v76;
      }

      else
      {
        v102 = 8;
        sub_71144();
        v37 = v77;
        v38 = v90;
        v39 = v91;
        sub_C61B4();
        v41 = v78;
        v40 = v79;
      }
    }

    (*(v41 + 8))(v37, v40);
    return (*(v92 + 8))(v38, v39);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v93 = 0;
      sub_71438();
      v50 = v90;
      v49 = v91;
      sub_C61B4();
      (*(v55 + 8))(v23, v21);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v96 = 2;
        sub_7133C();
        v42 = v56;
        v43 = v90;
        v44 = v91;
        sub_C61B4();
        (*(v59 + 8))(v42, v60);
        return (*(v92 + 8))(v43, v44);
      }

      v98 = 4;
      sub_71294();
      v53 = v62;
      v50 = v90;
      v49 = v91;
      sub_C61B4();
      (*(v63 + 8))(v53, v65);
    }

    return (*(v92 + 8))(v50, v49);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v32 = v61;
        sub_B874(v26, v61);
        v97 = 3;
        sub_712E8();
        v33 = v64;
        v35 = v90;
        v34 = v91;
        sub_C61B4();
        sub_C3D14();
        sub_71B78(&qword_108040, &type metadata accessor for UUID);
        v36 = v68;
        sub_C61C4();
        (*(v67 + 8))(v33, v36);
        sub_C060(v32, &qword_104778);
      }

      else
      {
        v100 = 6;
        sub_711EC();
        v51 = v71;
        v35 = v90;
        v34 = v91;
        sub_C61B4();
        v52 = v74;
        sub_C61D4();
        (*(v72 + 8))(v51, v52);
      }
    }

    else
    {
      v46 = *v26;
      v95 = 1;
      sub_71390();
      v35 = v90;
      v34 = v91;
      sub_C61B4();
      v94 = v46;
      sub_7148C();
      v47 = v58;
      sub_C61F4();
      (*(v57 + 8))(v20, v47);
    }

    return (*(v92 + 8))(v35, v34);
  }
}

void sub_6EE74()
{
  v1 = sub_C3D14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_104778);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_70EBC(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v15 = 9;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v15 = 10;
      }

      else
      {
        v15 = 11;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v15 = 5;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v15 = 7;
    }

    else
    {
      v15 = 8;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v15 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
    }

    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    v16 = *v13;
    sub_C6304(1uLL);
    v15 = v16;
LABEL_25:
    sub_C6304(v15);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_B874(v13, v10);
    sub_C6304(3uLL);
    sub_70F20(v10, v8);
    if ((*(v2 + 48))(v8, 1, v1) == 1)
    {
      sub_C6314(0);
    }

    else
    {
      (*(v2 + 32))(v4, v8, v1);
      sub_C6314(1u);
      sub_71B78(&qword_104C98, &type metadata accessor for UUID);
      sub_C5304();
      (*(v2 + 8))(v4, v1);
    }

    sub_C060(v10, &qword_104778);
  }

  else
  {
    v17 = *v13;
    sub_C6304(6uLL);
    sub_C6314(v17);
  }
}

uint64_t sub_6F1C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v114 = sub_3CB0(&qword_107EF0);
  v127 = *(v114 - 8);
  __chkstk_darwin(v114);
  v123 = &v85 - v3;
  v113 = sub_3CB0(&qword_107EF8);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v122 = &v85 - v4;
  v111 = sub_3CB0(&qword_107F00);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v119 = &v85 - v5;
  v109 = sub_3CB0(&qword_107F08);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v121 = &v85 - v6;
  v107 = sub_3CB0(&qword_107F10);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v120 = &v85 - v7;
  v105 = sub_3CB0(&qword_107F18);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v126 = &v85 - v8;
  v103 = sub_3CB0(&qword_107F20);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v118 = &v85 - v9;
  v100 = sub_3CB0(&qword_107F28);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v117 = &v85 - v10;
  v99 = sub_3CB0(&qword_107F30);
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v125 = &v85 - v11;
  v97 = sub_3CB0(&qword_107F38);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v115 = &v85 - v12;
  v95 = sub_3CB0(&qword_107F40);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v116 = &v85 - v13;
  v92 = sub_3CB0(&qword_107F48);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v124 = &v85 - v14;
  v15 = sub_3CB0(&qword_107F50);
  v129 = *(v15 - 8);
  v130 = v15;
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v18 = type metadata accessor for CanvasContentInputType();
  v19 = __chkstk_darwin(v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v85 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v85 - v26;
  __chkstk_darwin(v25);
  v29 = &v85 - v28;
  v30 = a1[3];
  v132 = a1;
  sub_13DC4(a1, v30);
  sub_70F90();
  v31 = v131;
  sub_C6374();
  if (!v31)
  {
    v86 = v27;
    v87 = v21;
    v32 = v124;
    v88 = v24;
    v34 = v125;
    v33 = v126;
    v90 = 0;
    v35 = v127;
    v91 = v18;
    v89 = v29;
    v36 = v128;
    v131 = v17;
    v37 = sub_C61A4();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 12))
    {
      v44 = sub_C6014();
      swift_allocError();
      v46 = v45;
      sub_3CB0(&qword_107F60);
      *v46 = v91;
      v48 = v130;
      v47 = v131;
      sub_C6154();
      sub_C6004();
      (*(*(v44 - 8) + 104))(v46, enum case for DecodingError.typeMismatch(_:), v44);
      swift_willThrow();
      goto LABEL_11;
    }

    if (*(v37 + 32) <= 5u)
    {
      if (*(v37 + 32) <= 2u)
      {
        v39 = v90;
        if (*(v37 + 32))
        {
          v127 = v37;
          v40 = v130;
          if (v38 == 1)
          {
            v135 = 1;
            sub_71390();
            v41 = v116;
            v42 = v131;
            sub_C6144();
            v43 = v129;
            if (v39)
            {
              (*(v129 + 8))(v42, v40);
LABEL_12:
              swift_unknownObjectRelease();
              return sub_BED0(v132);
            }

            sub_713E4();
            v80 = v95;
            sub_C6194();
            (*(v94 + 8))(v41, v80);
            (*(v43 + 8))(v42, v40);
            swift_unknownObjectRelease();
            v83 = v86;
            *v86 = v134;
            goto LABEL_50;
          }

          v136 = 2;
          sub_7133C();
          v73 = v115;
          v74 = v131;
          sub_C6144();
          v75 = v129;
          if (v39)
          {
            (*(v129 + 8))(v74, v40);
            goto LABEL_12;
          }

          (*(v96 + 8))(v73, v97);
          (*(v75 + 8))(v74, v40);
          swift_unknownObjectRelease();
          v56 = v89;
LABEL_46:
          swift_storeEnumTagMultiPayload();
LABEL_52:
          v53 = v36;
          goto LABEL_53;
        }

        v133 = 0;
        sub_71438();
        v48 = v130;
        v47 = v131;
        sub_C6144();
        if (!v39)
        {
          (*(v93 + 8))(v32, v92);
          (*(v129 + 8))(v47, v48);
          swift_unknownObjectRelease();
          v56 = v89;
          goto LABEL_46;
        }

LABEL_11:
        (*(v129 + 8))(v47, v48);
        goto LABEL_12;
      }

      v57 = v90;
      if (v38 != 3)
      {
        v58 = v129;
        v59 = v131;
        if (v38 == 4)
        {
          v138 = 4;
          sub_71294();
          v60 = v117;
          v61 = v130;
          sub_C6144();
          if (!v57)
          {
            v53 = v36;
            (*(v98 + 8))(v60, v100);
            (*(v58 + 8))(v59, v61);
            swift_unknownObjectRelease();
            v56 = v89;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        else
        {
          v139 = 5;
          sub_71240();
          v77 = v118;
          v61 = v130;
          sub_C6144();
          if (!v57)
          {
            v53 = v36;
            (*(v102 + 8))(v77, v103);
            (*(v58 + 8))(v59, v61);
            swift_unknownObjectRelease();
            v56 = v89;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        (*(v58 + 8))(v59, v61);
        goto LABEL_12;
      }

      v137 = 3;
      sub_712E8();
      v68 = v34;
      v63 = v130;
      v52 = v131;
      sub_C6144();
      v51 = v129;
      if (!v57)
      {
        sub_C3D14();
        sub_71B78(&qword_107FB0, &type metadata accessor for UUID);
        v69 = v88;
        v70 = v99;
        sub_C6164();
        (*(v101 + 8))(v68, v70);
        (*(v51 + 8))(v52, v130);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v84 = v69;
LABEL_51:
        v56 = v89;
        sub_71038(v84, v89);
        goto LABEL_52;
      }

LABEL_34:
      (*(v51 + 8))(v52, v63);
      goto LABEL_12;
    }

    v51 = v129;
    v50 = v130;
    v52 = v131;
    if (*(v37 + 32) <= 8u)
    {
      if (v38 == 6)
      {
        v140 = 6;
        sub_711EC();
        v65 = v33;
        v63 = v50;
        v66 = v90;
        sub_C6144();
        if (!v66)
        {
          v67 = v105;
          v81 = sub_C6174();
          (*(v104 + 8))(v65, v67);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v82 = v81 & 1;
          v83 = v87;
          *v87 = v82;
LABEL_50:
          swift_storeEnumTagMultiPayload();
          v84 = v83;
          goto LABEL_51;
        }

        goto LABEL_34;
      }

      v53 = v36;
      v54 = v90;
      if (v38 == 7)
      {
        v141 = 7;
        sub_71198();
        v55 = v120;
        sub_C6144();
        if (!v54)
        {
          (*(v106 + 8))(v55, v107);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v56 = v89;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      else
      {
        v142 = 8;
        sub_71144();
        v76 = v121;
        sub_C6144();
        if (!v54)
        {
          (*(v108 + 8))(v76, v109);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v56 = v89;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      (*(v51 + 8))(v52, v130);
      goto LABEL_12;
    }

    v53 = v36;
    if (v38 == 9)
    {
      v143 = 9;
      sub_710F0();
      v71 = v119;
      v63 = v50;
      v72 = v90;
      sub_C6144();
      if (!v72)
      {
        (*(v110 + 8))(v71, v111);
        (*(v51 + 8))(v52, v50);
        swift_unknownObjectRelease();
        v56 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    if (v38 == 10)
    {
      v144 = 10;
      sub_7109C();
      v62 = v122;
      v63 = v50;
      v64 = v90;
      sub_C6144();
      if (!v64)
      {
        (*(v112 + 8))(v62, v113);
        (*(v51 + 8))(v52, v50);
        swift_unknownObjectRelease();
        v56 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    v145 = 11;
    sub_70FE4();
    v78 = v123;
    v79 = v90;
    sub_C6144();
    if (v79)
    {
      (*(v51 + 8))(v52, v50);
      swift_unknownObjectRelease();
      return sub_BED0(v132);
    }

    (*(v35 + 8))(v78, v114);
    (*(v51 + 8))(v52, v50);
    swift_unknownObjectRelease();
    v56 = v89;
    swift_storeEnumTagMultiPayload();
    v53 = v36;
LABEL_53:
    sub_71038(v56, v53);
  }

  return sub_BED0(v132);
}

uint64_t sub_70584(uint64_t a1)
{
  v2 = sub_711EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_705C0(uint64_t a1)
{
  v2 = sub_711EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_705FC(uint64_t a1)
{
  v2 = sub_71240();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70638(uint64_t a1)
{
  v2 = sub_71240();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7067C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_730D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_706B0(uint64_t a1)
{
  v2 = sub_70F90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_706EC(uint64_t a1)
{
  v2 = sub_70F90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_70728(uint64_t a1)
{
  v2 = sub_7133C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70764(uint64_t a1)
{
  v2 = sub_7133C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_707A0(uint64_t a1)
{
  v2 = sub_7109C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_707DC(uint64_t a1)
{
  v2 = sub_7109C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_C6244();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_708CC(uint64_t a1)
{
  v2 = sub_71390();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70908(uint64_t a1)
{
  v2 = sub_71390();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_70944(uint64_t a1)
{
  v2 = sub_71198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70980(uint64_t a1)
{
  v2 = sub_71198();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_709BC(uint64_t a1)
{
  v2 = sub_71438();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_709F8(uint64_t a1)
{
  v2 = sub_71438();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_70A34(uint64_t a1)
{
  v2 = sub_70FE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70A70(uint64_t a1)
{
  v2 = sub_70FE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_70AAC(uint64_t a1)
{
  v2 = sub_71294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70AE8(uint64_t a1)
{
  v2 = sub_71294();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_70B24(uint64_t a1)
{
  v2 = sub_710F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70B60(uint64_t a1)
{
  v2 = sub_710F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_70B9C(uint64_t a1)
{
  v2 = sub_71144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70BD8(uint64_t a1)
{
  v2 = sub_71144();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_70C14()
{
  sub_C62F4();
  sub_C6304(0);
  return sub_C6344();
}

Swift::Int sub_70C58()
{
  sub_C62F4();
  sub_C6304(0);
  return sub_C6344();
}

uint64_t sub_70CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000000000CA9F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_C6244();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_70D48(uint64_t a1)
{
  v2 = sub_712E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_70D84(uint64_t a1)
{
  v2 = sub_712E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_70DC0()
{
  sub_C62F4();
  sub_6EE74();
  return sub_C6344();
}

Swift::Int sub_70E04()
{
  sub_C62F4();
  sub_6EE74();
  return sub_C6344();
}

uint64_t sub_70EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_70F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_70F90()
{
  result = qword_107F58;
  if (!qword_107F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107F58);
  }

  return result;
}

unint64_t sub_70FE4()
{
  result = qword_107F68;
  if (!qword_107F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107F68);
  }

  return result;
}

uint64_t sub_71038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7109C()
{
  result = qword_107F70;
  if (!qword_107F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107F70);
  }

  return result;
}

unint64_t sub_710F0()
{
  result = qword_107F78;
  if (!qword_107F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107F78);
  }

  return result;
}

unint64_t sub_71144()
{
  result = qword_107F80;
  if (!qword_107F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107F80);
  }

  return result;
}

unint64_t sub_71198()
{
  result = qword_107F88;
  if (!qword_107F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107F88);
  }

  return result;
}

unint64_t sub_711EC()
{
  result = qword_107F90;
  if (!qword_107F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107F90);
  }

  return result;
}

unint64_t sub_71240()
{
  result = qword_107F98;
  if (!qword_107F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107F98);
  }

  return result;
}

unint64_t sub_71294()
{
  result = qword_107FA0;
  if (!qword_107FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107FA0);
  }

  return result;
}

unint64_t sub_712E8()
{
  result = qword_107FA8;
  if (!qword_107FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107FA8);
  }

  return result;
}

unint64_t sub_7133C()
{
  result = qword_107FB8;
  if (!qword_107FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107FB8);
  }

  return result;
}

unint64_t sub_71390()
{
  result = qword_107FC0;
  if (!qword_107FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107FC0);
  }

  return result;
}

unint64_t sub_713E4()
{
  result = qword_107FC8;
  if (!qword_107FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107FC8);
  }

  return result;
}

unint64_t sub_71438()
{
  result = qword_107FD0;
  if (!qword_107FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107FD0);
  }

  return result;
}

unint64_t sub_7148C()
{
  result = qword_108048;
  if (!qword_108048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108048);
  }

  return result;
}

uint64_t sub_714E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_71514(uint64_t a1, uint64_t a2)
{
  v4 = sub_C3D14();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_104778);
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - v7;
  v8 = sub_3CB0(&qword_104770);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CanvasContentInputType();
  v12 = __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_3CB0(&qword_108050);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v38 - v22;
  v24 = *(v21 + 56);
  sub_70EBC(a1, &v38 - v22);
  sub_70EBC(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_38;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_38;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_70EBC(v23, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(v8 + 48);
        sub_B874(v17, v10);
        sub_B874(&v23[v24], &v10[v26]);
        v28 = v40;
        v27 = v41;
        v29 = *(v40 + 48);
        if (v29(v10, 1, v41) == 1)
        {
          if (v29(&v10[v26], 1, v27) == 1)
          {
            sub_C060(v10, &qword_104778);
LABEL_38:
            sub_71B1C(v23);
            v32 = 1;
            return v32 & 1;
          }
        }

        else
        {
          v34 = v39;
          sub_70F20(v10, v39);
          if (v29(&v10[v26], 1, v27) != 1)
          {
            v35 = v38;
            (*(v28 + 32))(v38, &v10[v26], v27);
            sub_71B78(&qword_1047A8, &type metadata accessor for UUID);
            v36 = sub_C53A4();
            v37 = *(v28 + 8);
            v37(v35, v27);
            v37(v34, v27);
            sub_C060(v10, &qword_104778);
            if (v36)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          }

          (*(v28 + 8))(v34, v27);
        }

        sub_C060(v10, &qword_104770);
LABEL_46:
        sub_71B1C(v23);
        goto LABEL_41;
      }

      sub_C060(v17, &qword_104778);
LABEL_40:
      sub_C060(v23, &qword_108050);
LABEL_41:
      v32 = 0;
      return v32 & 1;
    }

    sub_70EBC(v23, v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_40;
    }

    v30 = *v14;
  }

  else
  {
    sub_70EBC(v23, v19);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_40;
    }

    v30 = *v19;
  }

  v31 = v30 ^ v23[v24];
  sub_71B1C(v23);
  v32 = v31 ^ 1;
  return v32 & 1;
}

uint64_t sub_71B1C(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_71B78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_71BC0(void *a1)
{
  v24 = sub_3CB0(&qword_108058);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_3CB0(&qword_108060);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_3CB0(&qword_108068);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_13DC4(a1, a1[3]);
  sub_71FFC();
  v10 = v26;
  sub_C6374();
  if (v10)
  {
    return sub_BED0(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_C61A4();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_C6014();
    swift_allocError();
    v18 = v17;
    sub_3CB0(&qword_107F60);
    *v18 = &type metadata for CanvasContentInputType.KeyboardFocus;
    sub_C6154();
    sub_C6004();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_BED0(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_72050();
    sub_C6144();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_720A4();
    sub_C6144();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_BED0(v26);
  return v27;
}

unint64_t sub_71FFC()
{
  result = qword_108070;
  if (!qword_108070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108070);
  }

  return result;
}

unint64_t sub_72050()
{
  result = qword_108078;
  if (!qword_108078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108078);
  }

  return result;
}

unint64_t sub_720A4()
{
  result = qword_108080;
  if (!qword_108080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasContentInputType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CanvasContentInputType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_722EC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_7233C(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_7241C()
{
  result = qword_1080A0;
  if (!qword_1080A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080A0);
  }

  return result;
}

unint64_t sub_72474()
{
  result = qword_1080A8;
  if (!qword_1080A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080A8);
  }

  return result;
}

unint64_t sub_724CC()
{
  result = qword_1080B0;
  if (!qword_1080B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080B0);
  }

  return result;
}

unint64_t sub_72524()
{
  result = qword_1080B8;
  if (!qword_1080B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080B8);
  }

  return result;
}

unint64_t sub_7257C()
{
  result = qword_1080C0;
  if (!qword_1080C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080C0);
  }

  return result;
}

unint64_t sub_725D4()
{
  result = qword_1080C8;
  if (!qword_1080C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080C8);
  }

  return result;
}

unint64_t sub_7262C()
{
  result = qword_1080D0;
  if (!qword_1080D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080D0);
  }

  return result;
}

unint64_t sub_72684()
{
  result = qword_1080D8;
  if (!qword_1080D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080D8);
  }

  return result;
}

unint64_t sub_726DC()
{
  result = qword_1080E0;
  if (!qword_1080E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080E0);
  }

  return result;
}

unint64_t sub_72734()
{
  result = qword_1080E8;
  if (!qword_1080E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080E8);
  }

  return result;
}

unint64_t sub_7278C()
{
  result = qword_1080F0;
  if (!qword_1080F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080F0);
  }

  return result;
}

unint64_t sub_727E4()
{
  result = qword_1080F8;
  if (!qword_1080F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1080F8);
  }

  return result;
}

unint64_t sub_7283C()
{
  result = qword_108100;
  if (!qword_108100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108100);
  }

  return result;
}

unint64_t sub_72894()
{
  result = qword_108108;
  if (!qword_108108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108108);
  }

  return result;
}

unint64_t sub_728EC()
{
  result = qword_108110;
  if (!qword_108110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108110);
  }

  return result;
}

unint64_t sub_72944()
{
  result = qword_108118;
  if (!qword_108118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108118);
  }

  return result;
}

unint64_t sub_7299C()
{
  result = qword_108120;
  if (!qword_108120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108120);
  }

  return result;
}

unint64_t sub_729F4()
{
  result = qword_108128;
  if (!qword_108128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108128);
  }

  return result;
}

unint64_t sub_72A4C()
{
  result = qword_108130;
  if (!qword_108130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108130);
  }

  return result;
}

unint64_t sub_72AA4()
{
  result = qword_108138;
  if (!qword_108138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108138);
  }

  return result;
}

unint64_t sub_72AFC()
{
  result = qword_108140;
  if (!qword_108140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108140);
  }

  return result;
}

unint64_t sub_72B54()
{
  result = qword_108148;
  if (!qword_108148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108148);
  }

  return result;
}

unint64_t sub_72BAC()
{
  result = qword_108150;
  if (!qword_108150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108150);
  }

  return result;
}

unint64_t sub_72C04()
{
  result = qword_108158;
  if (!qword_108158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108158);
  }

  return result;
}

unint64_t sub_72C5C()
{
  result = qword_108160;
  if (!qword_108160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108160);
  }

  return result;
}

unint64_t sub_72CB4()
{
  result = qword_108168;
  if (!qword_108168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108168);
  }

  return result;
}

unint64_t sub_72D0C()
{
  result = qword_108170;
  if (!qword_108170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108170);
  }

  return result;
}

unint64_t sub_72D64()
{
  result = qword_108178;
  if (!qword_108178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108178);
  }

  return result;
}

unint64_t sub_72DBC()
{
  result = qword_108180;
  if (!qword_108180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108180);
  }

  return result;
}

unint64_t sub_72E14()
{
  result = qword_108188;
  if (!qword_108188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108188);
  }

  return result;
}

unint64_t sub_72E6C()
{
  result = qword_108190;
  if (!qword_108190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108190);
  }

  return result;
}

unint64_t sub_72EC4()
{
  result = qword_108198;
  if (!qword_108198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108198);
  }

  return result;
}

unint64_t sub_72F1C()
{
  result = qword_1081A0;
  if (!qword_1081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1081A0);
  }

  return result;
}

unint64_t sub_72F74()
{
  result = qword_1081A8;
  if (!qword_1081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1081A8);
  }

  return result;
}

unint64_t sub_72FCC()
{
  result = qword_1081B0;
  if (!qword_1081B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1081B0);
  }

  return result;
}

unint64_t sub_73024()
{
  result = qword_1081B8;
  if (!qword_1081B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1081B8);
  }

  return result;
}

unint64_t sub_7307C()
{
  result = qword_1081C0;
  if (!qword_1081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1081C0);
  }

  return result;
}

uint64_t sub_730D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E496F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_C6244() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xE800000000000000 || (sub_C6244() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000CA990 == a2 || (sub_C6244() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000CA9B0 == a2 || (sub_C6244() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369506F746F6870 && a2 == 0xEB0000000072656BLL || (sub_C6244() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69506172656D6163 && a2 == 0xEC00000072656B63 || (sub_C6244() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369506F69647561 && a2 == 0xEB0000000072656BLL || (sub_C6244() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE0072656B636950 || (sub_C6244() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000000C7BD0 == a2 || (sub_C6244() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000000CA9D0 == a2 || (sub_C6244() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7055776F6C6C6F66 && a2 == -1192481450101870000 || (sub_C6244() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x776F6C667265766FLL && a2 == 0xEC0000006D657449)
  {

    return 11;
  }

  else
  {
    v6 = sub_C6244();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_73520()
{
  v1 = *(v0 + qword_1081C8);
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_755D0((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  return v5;
}

uint64_t sub_73640(uint64_t a1)
{
  v2 = v1;
  v4 = sub_C5444();
  [v2 willChangeValueForKey:v4];

  v5 = *&v2[qword_1081C8];
  type metadata accessor for OperationBase.Locked();
  sub_28D98(&unk_10A100);
  sub_C6364();
  swift_getFunctionTypeMetadata1();
  sub_C5704();
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_75584(v5 + v6, &v16);
  os_unfair_lock_unlock((v5 + v7));
  v8 = v16;
  v9 = sub_C5444();
  [v2 didChangeValueForKey:v9];

  if (!sub_C56E4())
  {
  }

  v10 = 0;
  for (i = v8 + 40; ; i += 16)
  {
    v12 = sub_C56C4();
    result = sub_C5694();
    if (!v12)
    {
      break;
    }

    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_8;
    }

    v15 = *(i - 8);

    v15(a1);

    ++v10;
    if (v14 == sub_C56E4())
    {
    }
  }

  result = sub_C5FD4();
  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_7388C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_F07C0;
  v6._object = a2;
  v4 = sub_C6134(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_738D8(char a1)
{
  if (!a1)
  {
    return 0x7964616572;
  }

  if (a1 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

uint64_t sub_73930()
{
  swift_getWitnessTable();

  return sub_C6254();
}

uint64_t sub_739A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_73A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_73A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_73AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7388C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_73B20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_738D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_73B4C()
{
  sub_28D98(&unk_10A100);
  sub_C6364();
  swift_getFunctionTypeMetadata1();
  sub_C5274();
  return 0;
}

uint64_t sub_73BC4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = swift_isaMask & *v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_C5724();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_73C8C, v4, v6);
}

uint64_t sub_73C8C()
{
  (*(*(*(v0[3] + 80) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

Swift::Int sub_73D38()
{
  v0 = sub_5A394(&off_F0828);
  sub_75278(&unk_F0848);
  return v0;
}

Swift::Int sub_73D8C()
{
  v0 = sub_5A394(&off_F0858);
  sub_75278(&unk_F0878);
  return v0;
}

Class sub_73DE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4.super.isa = sub_C57E4().super.isa;

  return v4.super.isa;
}

Swift::Int sub_73E48()
{
  v0 = sub_5A394(&off_F0888);
  sub_75278(&unk_F08A8);
  return v0;
}

uint64_t sub_73E84(void *a1)
{
  v1 = a1;
  v2 = sub_73EF4();

  return v2 & 1;
}

uint64_t sub_73EBC(void *a1)
{
  v1 = a1;
  v2 = sub_73EF4();

  return v2 & 1;
}

uint64_t sub_73EF4()
{
  sub_73520();
  type metadata accessor for OperationBase.State();
  swift_getWitnessTable();
  return sub_C6254() & 1;
}

uint64_t sub_73FA4(void *a1)
{
  v1 = a1;
  v2 = sub_73FD8();

  return v2 & 1;
}

uint64_t sub_73FD8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for OperationBase();
  v1 = objc_msgSendSuper2(&v3, "isReady");
  if (v1)
  {
    sub_73520();
    type metadata accessor for OperationBase.State();
    swift_getWitnessTable();
    LOBYTE(v1) = sub_C6254();
  }

  return v1 & 1;
}

void sub_7409C()
{
  v1 = *(&stru_20.filesize + (swift_isaMask & *v0));
  sub_28D98(&unk_10A100);
  v2 = sub_C6364();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_104E88);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  if ([v0 isCancelled])
  {
    sub_C5734();
    sub_754FC();
    v9 = swift_allocError();
    sub_C5284();
    *v5 = v9;
    swift_storeEnumTagMultiPayload();
    sub_73640(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = sub_C5794();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v0;
    v12 = v0;
    v13 = sub_BBD18(0, 0, v8, &unk_D1C08, v11);
    v14 = sub_C5444();
    [v12 willChangeValueForKey:v14];

    v15 = *(v12 + qword_1081C8);
    __chkstk_darwin(v16);
    *&v20[-16] = v1;
    *&v20[-8] = v13;
    type metadata accessor for OperationBase.Locked();
    v17 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
    v18 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v15 + v18));
    sub_754A8(v15 + v17);
    os_unfair_lock_unlock((v15 + v18));
    v19 = sub_C5444();
    [v12 didChangeValueForKey:v19];
  }
}

uint64_t sub_74404(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *(&stru_20.filesize + (swift_isaMask & *a4));
  v4[3] = v5;
  sub_28D98(&unk_10A100);
  v6 = sub_C6364();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v7 = sub_C5DA4();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_745C0, 0, 0);
}

uint64_t sub_745C0()
{
  sub_C57B4();
  v4 = (*&stru_68.sectname[swift_isaMask & **(v0 + 16)] + **&stru_68.sectname[swift_isaMask & **(v0 + 16)]);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_747BC;
  v2 = *(v0 + 72);

  return v4(v2, 0, 0);
}

uint64_t sub_747BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_74AE8;
  }

  else
  {
    v2 = sub_748D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_748D0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    type metadata accessor for OperationBase.Failure();
    swift_getWitnessTable();
    v4 = swift_allocError();
    swift_willThrow();
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    *v5 = v4;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_73640(v5);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = v0[11];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    (*(v2 + 32))(v8, v1, v3);
    (*(v2 + 16))(v9, v8, v3);
    swift_storeEnumTagMultiPayload();
    sub_73640(v9);
    (*(v10 + 8))(v9, v11);
    (*(v2 + 8))(v8, v3);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_74AE8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *v1 = v0[13];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_73640(v1);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_74BC4(void *a1)
{
  v1 = a1;
  sub_7409C();
}

uint64_t sub_74C10()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OperationBase();
  objc_msgSendSuper2(&v6, "cancel");
  v1 = *&v0[qword_1081C8];
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_7536C((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  if (v5)
  {
    sub_C57A4();
  }

  return result;
}

uint64_t sub_74D80()
{

  swift_getAtKeyPath();

  return v1;
}

void sub_74DF4(void *a1)
{
  v1 = a1;
  sub_74C10();
}

id sub_74E3C(void *a1)
{
  v1 = a1;
  sub_74EA4();

  v2 = sub_C5444();

  return v2;
}

uint64_t sub_74EA4()
{
  v0 = sub_73520();
  if (!v0)
  {
    return 0x7964616572;
  }

  if (v0 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

void sub_74F14()
{
  sub_28D98(&unk_10A100);
  sub_C6364();
  swift_getFunctionTypeMetadata1();
  sub_C5704();
  sub_C56F4(0);
}

id sub_74F9C()
{
  v1 = qword_1081C8;
  v7 = sub_73B4C();
  v8 = v2;
  v9 = v3;
  type metadata accessor for OperationBase.Locked();
  v4 = sub_751FC();

  *&v0[v1] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OperationBase();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_75088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OperationBase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7510C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 initializeBufferWithCopyOfBuffer for JournalNotificationsManager.CompatibilityScheduleItem(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_7515C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_751A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_751FC()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_C6034();
  return sub_C6024();
}

uint64_t sub_752CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

uint64_t sub_7536C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_753B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_753F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CE7C;

  return sub_74404(a1, v4, v5, v6);
}

uint64_t sub_754A8(uint64_t a1)
{
  v3 = *(v1 + 24);
  *a1 = 1;

  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_754FC()
{
  result = qword_1082D0[0];
  if (!qword_1082D0[0])
  {
    sub_C5734();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1082D0);
  }

  return result;
}

void sub_75584(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = 2;
  *a2 = *(a1 + 8);

  sub_74F14();
}

uint64_t sub_755D0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

id sub_7565C()
{
  v1 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v1 setAlignment:{objc_msgSend(v0, "alignment")}];
  [v0 firstLineHeadIndent];
  [v1 setFirstLineHeadIndent:?];
  [v0 headIndent];
  [v1 setHeadIndent:?];
  [v1 setBaseWritingDirection:{objc_msgSend(v0, "baseWritingDirection")}];
  isa = [v0 textLists];
  if (!isa)
  {
    sub_766F8();
    sub_C5674();
    isa = sub_C5664().super.isa;
  }

  [v1 setTextLists:isa];

  return v1;
}

void sub_7578C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = HIBYTE(a2) & 0xF;
  v10 = HIBYTE(a4) & 0xF;
  if (a2)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    v12 = a1;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v13 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a4) & 0xF;
  }

  v12 = a3;
  if (v13)
  {
LABEL_9:
    sub_758CC(10, v12);
    v14 = sub_C5444();
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  [v4 setDisplayName:v14];

  if (a4)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15 = v10;
    }

    if (v15)
    {
      goto LABEL_19;
    }
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v16 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = v9;
  }

  if (v16)
  {
LABEL_19:
    v17 = sub_C5444();
  }

  else
  {
LABEL_20:
    v17 = 0;
  }

  v18 = v17;
  [v4 setContentDescription:?];
}

uint64_t sub_758CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = v5;

  sub_3CB0(&qword_1083E0);
  sub_19DFC();
  sub_517B0(&qword_1083E8, &qword_1083E0);
  sub_C5E24();

  swift_beginAccess();
  if (*(v5 + 32))
  {
  }

  else
  {
    sub_C55A4();
    a2 = sub_C54F4();
  }

  return a2;
}

uint64_t sub_75ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_beginAccess();
  v15 = *(a8 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    if (v17 >= a9)
    {
      result = swift_beginAccess();
      *(a10 + 16) = a5;
      *(a10 + 24) = a6;
      *(a10 + 32) = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t sub_75B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v90 = a3;
  v4 = sub_C3A84();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_C3AD4();
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_C3B04();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_C3AA4();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_C3874();
  __chkstk_darwin(v12 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_C3F24();
  __chkstk_darwin(v14 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_C3EA4();
  __chkstk_darwin(v16 - 8);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_C3D54();
  __chkstk_darwin(v18 - 8);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3CB0(&qword_106530);
  __chkstk_darwin(v20 - 8);
  v69 = &v67 - v21;
  v22 = sub_3CB0(&qword_106538);
  __chkstk_darwin(v22 - 8);
  v24 = &v67 - v23;
  v25 = sub_C3B34();
  v67 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v68 = &v67 - v30;
  v31 = __chkstk_darwin(v29);
  v70 = &v67 - v32;
  v33 = __chkstk_darwin(v31);
  v72 = &v67 - v34;
  __chkstk_darwin(v33);
  v73 = &v67 - v35;
  v36 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v36 - 8);
  v38 = &v67 - v37;
  v39 = sub_C3CB4();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v91 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;

  v43 = sub_484B8(0, 1, 1, _swiftEmptyArrayStorage);
  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_484B8((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[2 * v45];
  v47 = v90;
  *(v46 + 4) = v89;
  *(v46 + 5) = v42;
  sub_7653C(v47, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_765AC(v38);
  }

  else
  {
    v48 = *(v40 + 32);
    v90 = v39;
    v48(v91, v38, v39);
    v49 = sub_C3A24();
    (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
    v50 = sub_C39F4();
    (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
    sub_C3D24();
    sub_C3DE4();
    sub_C3EF4();
    sub_C3864();
    sub_C3A44();
    v51 = v77;
    sub_C3A94();
    v52 = v68;
    sub_C3A54();
    (*(v78 + 8))(v51, v79);
    v53 = *(v67 + 8);
    v53(v28, v25);
    v54 = v80;
    sub_C3AE4();
    v55 = v70;
    sub_C3B24();
    (*(v81 + 8))(v54, v82);
    v53(v52, v25);
    v56 = v83;
    sub_C3AB4();
    v57 = v72;
    sub_C3A64();
    (*(v84 + 8))(v56, v85);
    v53(v55, v25);
    v58 = v86;
    sub_C3A74();
    v59 = v73;
    sub_C3A34();
    (*(v87 + 8))(v58, v88);
    v53(v57, v25);
    sub_76614();
    sub_C3C94();
    v53(v59, v25);
    v60 = v92;
    v61 = v93;
    v63 = *(v43 + 2);
    v62 = *(v43 + 3);
    if (v63 >= v62 >> 1)
    {
      v43 = sub_484B8((v62 > 1), v63 + 1, 1, v43);
    }

    (*(v40 + 8))(v91, v90);
    *(v43 + 2) = v63 + 1;
    v64 = &v43[2 * v63];
    *(v64 + 4) = v60;
    *(v64 + 5) = v61;
  }

  v92 = v43;
  sub_3CB0(&qword_1063B0);
  sub_517B0(&qword_106B08, &qword_1063B0);
  v65 = sub_C5324();

  return v65;
}