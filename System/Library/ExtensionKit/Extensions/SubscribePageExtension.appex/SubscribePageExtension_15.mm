void sub_1001A6AD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      a3();
    }
  }
}

void sub_1001A6B38(uint64_t a1, double a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007543F4();
    sub_100009D34();
    sub_1001AA338(&qword_10092B4B0, sub_100009D34);
    sub_1007534A4();
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_1001A8F34();
      return;
    }

    while (1)
    {
      [v15 setAlpha:a2];

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_100754464())
      {
        sub_100009D34();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1001A6D40()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_100754434();

    if (!v3)
    {
      return;
    }
  }

  else if (!*(v2 + 16))
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) == 3 && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_1001A627C();
  }
}

unint64_t sub_1001A6F10()
{
  result = qword_10092B4A8;
  if (!qword_10092B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092B4A8);
  }

  return result;
}

uint64_t sub_1001A6F64(void *a1, void *a2)
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

    v9 = sub_100754444();

    if (v9)
    {

      sub_100009D34();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_100754434();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1001A7408(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_1001A75E8();
    }

    v18 = v8;
    sub_1001A7CB0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009D34();
  v11 = sub_100753FB4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1001A7D34(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100753FC4();

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

uint64_t sub_1001A717C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_100753094();
  sub_100754834();
  sub_100753174();
  v7 = sub_100754884();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_100753094();
      v13 = v12;
      if (v11 == sub_100753094() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_100754754();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1001A7E94(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1001A7328(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100754824();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1001A807C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_1001A7408(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000C518(&qword_10092B4B8);
    v2 = sub_100754514();
    v14 = v2;
    sub_1007543F4();
    if (sub_100754464())
    {
      sub_100009D34();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1001A75E8();
        }

        v2 = v14;
        result = sub_100753FB4(*(v14 + 40));
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

      while (sub_100754464());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1001A75E8()
{
  v1 = v0;
  v2 = *v0;
  sub_10000C518(&qword_10092B4B8);
  result = sub_100754504();
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
      result = sub_100753FB4(*(v4 + 40));
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

uint64_t sub_1001A7810()
{
  v1 = v0;
  v2 = *v0;
  sub_10000C518(&qword_10092B4E0);
  result = sub_100754504();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
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
      sub_100753094();
      sub_100754834();
      sub_100753174();
      v17 = sub_100754884();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
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

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1001A7A8C()
{
  v1 = v0;
  v2 = *v0;
  sub_10000C518(&qword_10092B4E8);
  result = sub_100754504();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
      result = sub_100754824();
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

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1001A7CB0(uint64_t a1, void *a2)
{
  sub_100753FB4(a2[5]);
  result = sub_1007543D4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1001A7D34(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001A75E8();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1001A819C();
      goto LABEL_12;
    }

    sub_1001A857C();
  }

  v8 = *v3;
  v9 = sub_100753FB4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009D34();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100753FC4();

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
  sub_1007547A4();
  __break(1u);
}

uint64_t sub_1001A7E94(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1001A7810();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1001A82EC();
      goto LABEL_16;
    }

    sub_1001A8790();
  }

  v9 = *v3;
  sub_100753094();
  sub_100754834();
  sub_100753174();
  v10 = sub_100754884();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ActivityType(0);
    do
    {
      v13 = sub_100753094();
      v15 = v14;
      if (v13 == sub_100753094() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_100754754();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1007547A4();
  __break(1u);
  return result;
}

uint64_t sub_1001A807C(uint64_t result, unint64_t a2, char a3)
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
    sub_1001A7A8C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001A843C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001A89E4();
  }

  v8 = *v3;
  result = sub_100754824();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_1007547A4();
  __break(1u);
  return result;
}

id sub_1001A819C()
{
  v1 = v0;
  sub_10000C518(&qword_10092B4B8);
  v2 = *v0;
  v3 = sub_1007544F4();
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

id sub_1001A82EC()
{
  v1 = v0;
  sub_10000C518(&qword_10092B4E0);
  v2 = *v0;
  v3 = sub_1007544F4();
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

void *sub_1001A843C()
{
  v1 = v0;
  sub_10000C518(&qword_10092B4E8);
  v2 = *v0;
  v3 = sub_1007544F4();
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

uint64_t sub_1001A857C()
{
  v1 = v0;
  v2 = *v0;
  sub_10000C518(&qword_10092B4B8);
  result = sub_100754504();
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
      result = sub_100753FB4(v15);
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

uint64_t sub_1001A8790()
{
  v1 = v0;
  v2 = *v0;
  sub_10000C518(&qword_10092B4E0);
  result = sub_100754504();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      sub_100753094();
      sub_100754834();
      v17 = v16;
      sub_100753174();
      v18 = sub_100754884();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_1001A89E4()
{
  v1 = v0;
  v2 = *v0;
  sub_10000C518(&qword_10092B4E8);
  result = sub_100754504();
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
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_100754824();
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

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

void sub_1001A8BD4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_100754664())
    {
LABEL_3:
      sub_10000C518(&qword_10092B4B8);
      v3 = sub_100754524();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_100754664();
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
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100754574();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100753FB4(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009D34();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100753FC4();

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
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
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
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_100753FB4(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009D34();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100753FC4();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1001A8EA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001A8EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A8F3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1001A8FDC(uint64_t a1)
{
  v2 = sub_100741634();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C518(&qword_10092B518);
    v9 = sub_100754524();
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
      sub_1001AA338(&qword_10092B520, &type metadata accessor for Calendar.Component);
      v16 = sub_100752FA4();
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
          sub_1001AA338(&qword_10092B528, &type metadata accessor for Calendar.Component);
          v23 = sub_100753014();
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

void *sub_1001A92FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_10092B4E0);
    v3 = sub_100754524();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100753094();
      sub_100754834();
      v27 = v7;
      sub_100753174();
      v8 = sub_100754884();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_100753094();
        v18 = v17;
        if (v16 == sub_100753094() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_100754754();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1001A94F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_10092B4C0);
    v3 = sub_100754524();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_100754834();
      sub_100754844(v10);
      result = sub_100754884();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1001A962C(uint64_t a1)
{
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C518(&qword_10092B530);
    v9 = sub_100754524();
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
      sub_1001AA338(&qword_100947C40, &type metadata accessor for IndexPath);
      v16 = sub_100752FA4();
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
          sub_1001AA338(&qword_100927EA0, &type metadata accessor for IndexPath);
          v23 = sub_100753014();
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

void *sub_1001A994C(uint64_t a1)
{
  v2 = sub_100752C84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C518(&qword_10092B4C8);
    v9 = sub_100754524();
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
      sub_1001AA338(&qword_10092B4D0, &type metadata accessor for MetricsFieldInclusionRequest);
      v16 = sub_100752FA4();
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
          sub_1001AA338(&qword_10092B4D8, &type metadata accessor for MetricsFieldInclusionRequest);
          v23 = sub_100753014();
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

unint64_t sub_1001A9C6C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_100754664();
    if (result)
    {
LABEL_3:
      sub_10000C518(&qword_10092B500);
      result = sub_100754524();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_100754664();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_100754574();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_100751A74();
    sub_1001AA338(&qword_10092B508, &type metadata accessor for AnyCancellable);
    result = sub_100752FA4();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1001AA338(&qword_10092B510, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = sub_100753014();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001A9F00(uint64_t a1)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C518(&qword_10092B4F0);
    v9 = sub_100754524();
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
      sub_1001AA338(&qword_10092B4F8, &type metadata accessor for Shelf.ContentType);
      v16 = sub_100752FA4();
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
          sub_1001AA338(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
          v23 = sub_100753014();
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

uint64_t sub_1001AA220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_10092B4E8);
    v3 = sub_100754524();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_100754824();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001AA338(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1001AA3C4(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_10092B538) = 0;
  v5 = qword_10092B540;
  type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v2 + v5) = v6;

  v7 = sub_10046AEDC(a1, a2);
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    sub_10000C518(&unk_1009249D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5A00;
    *(v10 + 32) = sub_1007519E4();
    *(v10 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_100016C60(0, &qword_100929830);
    sub_100753D44();
    swift_unknownObjectRelease();

    v11 = sub_10074C9C4();
    if (v11)
    {
      v12 = v11;
      v13 = [v7 navigationItem];
      sub_100016C60(0, &qword_100925250);

      v14 = sub_10074ECB4();
      v16 = v15;
      v21 = 0u;
      v22 = 0u;

      v23.is_nil = sub_1001ACF08(v12, a1, 0, &v21);
      v26.value._countAndFlagsBits = v14;
      v26.value._object = v16;
      v23.value.super.isa = 0;
      v24.value.super.super.isa = 0;
      isa = sub_100753644(v26, v23, v24, v25).super.super.isa;
      [v13 setRightBarButtonItem:{isa, v21, v22}];
    }

    v18 = v7;
    sub_10074C9E4();
    v19 = sub_100753064();

    [v18 setTitle:v19];

    v18[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
    v20 = [v18 navigationItem];
    [v20 setLargeTitleDisplayMode:3];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AA684(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&qword_10092BAF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1007469A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007417F4();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  result = objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1, v13);
  v17 = qword_10092B538;
  if ((*(v1 + qword_10092B538) & 1) == 0)
  {
    sub_1001AA93C(v6);
    v18 = sub_10000C518(&qword_10092BB00);
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      result = sub_10000C8CC(v6, &qword_10092BAF8);
    }

    else
    {
      v19 = *(v18 + 48);
      (*(v12 + 32))(v15, v6, v11);
      (*(v8 + 32))(v10, &v6[v19], v7);
      sub_1001AB6E8(v15);
      (*(v8 + 8))(v10, v7);
      result = (*(v12 + 8))(v15, v11);
    }
  }

  *(v1 + v17) = 1;
  return result;
}

uint64_t sub_1001AA93C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v91 = sub_100744604();
  v64 = *(v91 - 8);
  __chkstk_darwin(v91);
  v74 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100746984();
  v82 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1007469A4();
  v66 = *(v89 - 8);
  __chkstk_darwin(v89);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1007417F4();
  v65 = *(v87 - 8);
  __chkstk_darwin(v87);
  v77 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000C518(&unk_100930810);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v61 - v7;
  v93 = sub_10000C518(&qword_10092BB08);
  v83 = *(v93 - 8);
  __chkstk_darwin(v93);
  v72 = (&v61 - v8);
  v9 = sub_10000C518(&qword_10092BB10);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v92 = sub_10000C518(&unk_10092E450);
  v15 = *(v92 - 8);
  __chkstk_darwin(v92);
  v17 = &v61 - v16;
  v18 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - v19;
  v21 = sub_100747C14();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v90 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  sub_10074C9D4();
  if (!*(&v95 + 1))
  {
    sub_10000C8CC(&v94, &unk_1009276E0);
    goto LABEL_24;
  }

  v97[0] = v94;
  v97[1] = v95;
  v98 = v96;
  sub_1001AC804(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100016994(v97);
    sub_10000C8CC(v20, &qword_100942730);
    goto LABEL_24;
  }

  v25 = v90;
  (*(v22 + 32))(v90, v20, v21);
  v26 = qword_100930688;
  swift_beginAccess();
  v27 = *(v24 + v26);
  if (!v27)
  {
    (*(v22 + 8))(v25, v21);
    sub_100016994(v97);
    swift_endAccess();
    goto LABEL_24;
  }

  v61 = v22;
  v62 = v21;
  swift_endAccess();
  v28 = v27;
  v29 = v25;
  sub_100747C04();
  v30 = sub_10074CD64();

  result = (*(v15 + 8))(v17, v92);
  if (!v30)
  {
    (*(v61 + 8))(v29, v62);
    sub_100016994(v97);
LABEL_24:
    v57 = v71;
    v54 = sub_10000C518(&qword_10092BB00);
    v55 = *(*(v54 - 8) + 56);
    v56 = v57;
    return v55(v56, 1, 1, v54);
  }

  v85 = v14;
  v92 = v5;
  v32 = 0;
  v68 = v30;
  v33 = *(v30 + 16);
  v67 = v73 + 16;
  v34 = v83;
  v83 += 6;
  v84 = (v34 + 7);
  v81 = (v73 + 32);
  v80 = v82 + 1;
  v70 = (v64 + 11);
  v69 = enum case for ProductReview.ReviewSource.user(_:);
  v79 = (v66 + 8);
  v78 = (v65 + 8);
  v82 = (v73 + 8);
  v63 = (v64 + 1);
  v64 += 12;
  v35 = v77;
  v36 = v76;
  v37 = v75;
LABEL_9:
  v38 = v93;
  if (v32 == v33)
  {
LABEL_10:
    v39 = 1;
    v32 = v33;
    goto LABEL_14;
  }

  while ((v32 & 0x8000000000000000) == 0)
  {
    if (v32 >= *(v68 + 16))
    {
      goto LABEL_29;
    }

    v40 = v73;
    v41 = v68 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32;
    v42 = *(v38 + 48);
    v43 = v72;
    *v72 = v32;
    (*(v40 + 16))(&v43[v42], v41, v36);
    v44 = v43;
    v38 = v93;
    sub_100066578(v44, v11, &qword_10092BB08);
    v39 = 0;
    ++v32;
LABEL_14:
    (*v84)(v11, v39, 1, v38);
    v45 = v85;
    sub_100066578(v11, v85, &qword_10092BB10);
    if ((*v83)(v45, 1, v38) == 1)
    {

      (*(v61 + 8))(v90, v62);
      sub_100016994(v97);
      v54 = sub_10000C518(&qword_10092BB00);
      v55 = *(*(v54 - 8) + 56);
      v56 = v71;
      return v55(v56, 1, 1, v54);
    }

    v46 = v11;
    (*v81)(v37, v45 + *(v38 + 48), v36);
    sub_100747BF4();
    sub_100741764();
    v47 = v86;
    sub_100746974();
    v48 = v35;
    v49 = v92;
    sub_100747B64();
    (*v80)(v47, v88);
    sub_100744624();
    sub_1001AD1D4(&qword_100927FE0, &type metadata accessor for ProductReview);
    sub_1007468B4();
    if (!v94)
    {
      (*v79)(v49, v89);
      (*v78)(v48, v87);
      result = (*v82)(v37, v36);
      v35 = v48;
      v11 = v46;
      goto LABEL_9;
    }

    v50 = v74;
    sub_100744614();
    v51 = (*v70)(v50, v91);
    if (v51 != v69)
    {

      (*v79)(v92, v89);
      v35 = v77;
      (*v78)(v77, v87);
      v37 = v75;
      v36 = v76;
      (*v82)(v75, v76);
      result = (*v63)(v50, v91);
      v11 = v46;
      goto LABEL_9;
    }

    v52 = v89;
    (*v64)(v50, v91);
    sub_10074F014();
    v53 = sub_1007544C4();

    sub_100016994(&v94);
    v37 = v75;
    v36 = v76;
    (*v82)(v75, v76);
    v35 = v77;
    v38 = v93;
    if (v53)
    {

      (*(v61 + 8))(v90, v62);
      sub_100016994(v97);
      v58 = sub_10000C518(&qword_10092BB00);
      v59 = *(v58 + 48);
      v60 = v71;
      (*(v65 + 32))(v71, v35, v87);
      (*(v66 + 32))(v60 + v59, v92, v52);
      return (*(*(v58 - 8) + 56))(v60, 0, 1, v58);
    }

    (*v79)(v92, v52);
    result = (*v78)(v35, v87);
    v11 = v46;
    if (v32 == v33)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001AB6E8(uint64_t a1)
{
  v15[0] = a1;
  v2 = sub_10000C518(&unk_100930810);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C518(&unk_100929040);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  sub_1007468F4();
  sub_100752994();
  sub_1000E9564();
  sub_100752954();
  sub_100746944();
  sub_10074CA04();
  sub_1001AD1D4(&qword_10092BAC8, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_10074C464();
  (*(v3 + 8))(v5, v2);
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    isa = sub_100741704().super.isa;
    [v12 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1001AB9C4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001AA684(a3);
}

uint64_t sub_1001ABA18(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10092BAF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:) || (sub_10074C9B4() & 1) == 0)
  {
    sub_10041D1EC(a1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1001ABB60(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1003ED3AC;
  v14 = &unk_10086B410;
  v7 = _Block_copy(&v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v15 = sub_1001AD1C8;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1003ED3AC;
  v14 = &unk_10086B460;
  v9 = _Block_copy(&v11);
  v10 = v3;

  [a1 animateAlongsideTransition:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_1001ABCD8(int a1, id a2)
{
  v2 = [a2 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001ABD38(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1001ABB60(a5, a2, a3);
  swift_unknownObjectRelease();
}

unint64_t sub_1001ABDB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_10097EE08);
  sub_100744594();
  swift_allocObject();

  v4 = sub_100744584();
  swift_allocObject();
  v5 = sub_100744584();
  a1[3] = &type metadata for ReviewsPageGridProvider;
  result = sub_1001AD124();
  a1[4] = result;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v3;
  return result;
}

uint64_t sub_1001ABE5C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1001AD1D4(&qword_10092BAC0, type metadata accessor for ReviewsDiffablePageViewController);
  v2 = sub_10074DA44();
  v19[3] = swift_getObjectType();
  v19[0] = v2;
  v3 = sub_10074DA34();
  v20[3] = swift_getObjectType();
  v20[0] = v3;
  sub_10000C5B4(v19, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && v18)
  {
    v14 = v18;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100254A80((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v20, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && v18)
  {
    v15 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15;
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100254A80((v7 > 1), v8 + 1, 1, v4);
      v9 = v15;
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10074DA64();
  v10 = type metadata accessor for GenericPageLayoutSectionProvider();
  swift_allocObject();
  sub_10000C824(v17, v16);

  v11 = sub_10074CB64();
  result = sub_10000C620(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

uint64_t sub_1001AC15C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for ReviewsPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v3 = sub_1001AD1D4(&qword_10092BAD0, &type metadata accessor for ReviewsDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1001AD1D4(&qword_10092BAE0, type metadata accessor for ReviewsPageShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_1001AC274()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006B6008();
  sub_10074D7C4();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10074D794();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10074D7B4();
  }

  sub_10000C518(&qword_100922CE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A6580;
  sub_1001AD1D4(&qword_10092BAC0, type metadata accessor for ReviewsDiffablePageViewController);

  sub_10074DA64();
  sub_1001AD1D4(&qword_10092BAC8, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_1001AD1D4(&qword_10092BAD0, &type metadata accessor for ReviewsDiffablePagePresenter);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + qword_100930D50) = 0;
  swift_unknownObjectWeakAssign();
  sub_10000C824(v10, v4 + qword_100930D48);

  v5 = sub_10074E274();
  sub_10000C620(v10);
  *(v3 + 32) = v5;
  *(v3 + 40) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  v6 = *(v1 + qword_10092B540);
  v7 = sub_1001AD1D4(&qword_10092BAD8, type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8._rawValue = v3;
  sub_10074D784(v8);

  return v2;
}

void sub_1001AC59C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_100753824();

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    if (qword_100920870 != -1)
    {
      swift_once();
    }

    v6 = [qword_10097F830 resolvedColorWithTraitCollection:v3];
    [v5 setBackgroundColor:v6];

    *(*&v1[qword_10092B540] + 16) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1001AC6C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    v3 = [v4 traitCollection];
    [v3 userInterfaceLevel];

    sub_10007271C(a1, *(a1 + 24));
    sub_100751494();
  }
}

void sub_1001AC76C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    *(*&v0[qword_10092B540] + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1001AC804(char *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v32 - v8;
  v45 = sub_10000C518(&unk_10092E450);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v32 - v10;
  v11 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_100747C14();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v48 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_100930688;
  swift_beginAccess();
  v18 = *&v2[v17];
  if (!v18)
  {
    v30 = 1;
    goto LABEL_19;
  }

  v43 = v4;
  v46 = v14;
  v19 = v18;
  v20 = [v2 collectionView];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  v22 = sub_1007518B4();

  if (v22 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (!v22)
  {
    v30 = 1;
    v14 = v46;
    goto LABEL_19;
  }

  v34 = a1;
  v23 = v15;
  v24 = (v15 + 48);
  v42 = (v23 + 32);
  v40 = (v9 + 8);
  v39 = enum case for Shelf.ContentType.productReview(_:);
  v38 = (v5 + 104);
  v41 = (v5 + 8);
  v33 = v23;
  v35 = (v23 + 8);
  sub_1001AD1D4(&qword_10092BAC0, type metadata accessor for ReviewsDiffablePageViewController);
  v25 = 0;
  v14 = v46;
  v37 = v22;
  while (1)
  {
    sub_10074DA04();
    if ((*v24)(v13, 1, v14) == 1)
    {
      sub_10000C8CC(v13, &qword_100942730);
      goto LABEL_7;
    }

    v36 = *v42;
    v36(v48, v13, v14);
    v26 = v44;
    sub_100747C04();
    swift_getKeyPath();
    v27 = v45;
    sub_1007525B4();

    (*v40)(v26, v27);
    v28 = v43;
    (*v38)(v51, v39, v43);
    sub_1001AD1D4(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
    sub_100753274();
    sub_100753274();
    if (v54 == v52 && v55 == v53)
    {
      break;
    }

    v47 = sub_100754754();
    v29 = *v41;
    (*v41)(v51, v28);
    v29(v50, v28);

    v22 = v37;
    if (v47)
    {
      goto LABEL_17;
    }

    v14 = v46;
    (*v35)(v48, v46);
LABEL_7:
    if (v22 == ++v25)
    {
      v30 = 1;
      a1 = v34;
      goto LABEL_18;
    }
  }

  v31 = *v41;
  (*v41)(v51, v28);
  v31(v50, v28);

LABEL_17:
  a1 = v34;
  v14 = v46;
  v36(v34, v48, v46);
  v30 = 0;
LABEL_18:
  v15 = v33;
LABEL_19:
  (*(v15 + 56))(a1, v30, 1, v14);
}

uint64_t type metadata accessor for ReviewsDiffablePageViewController()
{
  result = qword_10092B570;
  if (!qword_10092B570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001ACF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10074ECB4();
  if (v7)
  {
    v8 = sub_10074ECC4();
    if (v8)
    {
      v9 = v8;
      if (sub_10074F1D4())
      {
        sub_100743AC4();
      }

      else if (sub_10074F1C4())
      {
        sub_10056028C(v9, 0);
      }
    }

    sub_100016C60(0, &qword_100929CC0);
    sub_100032C04(a4, v14);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = &protocol witness table for ReviewsDiffablePagePresenter;
    *(v11 + 32) = a1;
    v12 = v14[1];
    *(v11 + 40) = v14[0];
    *(v11 + 56) = v12;
    v10 = sub_100753FF4();
    sub_10000C8CC(a4, &unk_100923520);
  }

  else
  {
    sub_10000C8CC(a4, &unk_100923520);

    return 0;
  }

  return v10;
}

uint64_t sub_1001AD0BC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_10000C620(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1001AD124()
{
  result = qword_10092BAE8;
  if (!qword_10092BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092BAE8);
  }

  return result;
}

uint64_t sub_1001AD178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001AD190()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AD1D4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1001AD224(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100744E04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100744DC4() & 1) == 0)
  {
    [a7 pageMarginInsets];
    a1 = a1 - v13 - v14;
  }

  sub_100744E24();
  v15 = [a7 traitCollection];
  sub_100744DE4();

  (*(v10 + 8))(v12, v9);
  return a1;
}

void sub_1001AD360()
{
  v0 = sub_100744E04();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744E24();
  sub_100561A0C(v2);
  v3 = sub_100744E14();
  sub_100562538(v3);
}

uint64_t sub_1001AD498(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1001AD4E0(uint64_t a1)
{
  v3 = sub_100741494();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v171 = Strong;
  v166[1] = sub_10000C518(&unk_1009231A0);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1007AC000;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  type metadata accessor for ActionDebugSetting();
  v166[0] = a1;
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000013;
  *(v9 + 64) = 0x800000010076F370;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = sub_1001AE9D8;
  *(v9 + 112) = v8;
  v10 = v1;

  sub_100741484();
  v11 = sub_100741464();
  v13 = v12;
  v14 = *(v4 + 8);
  v174 = v3;
  v14(v6, v3);
  v189 = v11;
  v190 = v13;
  sub_1007544E4();

  *(v167 + 32) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = swift_allocObject();
  strcpy((v16 + 56), "Clear Caches");
  *(v16 + 69) = 0;
  *(v16 + 70) = -5120;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = sub_1001AE9FC;
  *(v16 + 112) = v15;
  v17 = v10;

  sub_100741484();
  v18 = sub_100741464();
  v20 = v19;
  v14(v6, v3);
  v172 = v4 + 8;
  v189 = v18;
  v190 = v20;
  sub_1007544E4();

  v21 = v167;
  *(v167 + 40) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = swift_allocObject();
  *(v23 + 56) = 0xD000000000000015;
  *(v23 + 64) = 0x800000010076F390;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = sub_1001AEA00;
  *(v23 + 112) = v22;
  v24 = v17;

  sub_100741484();
  v25 = sub_100741464();
  v27 = v26;
  v28 = v174;
  v14(v6, v174);
  v189 = v25;
  v190 = v27;
  sub_1007544E4();

  *(v21 + 48) = v23;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1007B0300;
  v29 = objc_allocWithZone(type metadata accessor for DebugSettings());
  swift_unknownObjectWeakInit();
  v30 = v171;
  swift_unknownObjectWeakAssign();
  v173 = type metadata accessor for DebugSettingsProvider();
  v188.receiver = v29;
  v188.super_class = v173;
  v169 = v30;
  v31 = objc_msgSendSuper2(&v188, "init");
  v171 = type metadata accessor for NavigationActionDebugSetting();
  v32 = swift_allocObject();
  v32[7] = 0x73676E6974746553;
  v32[8] = 0xE800000000000000;
  v32[9] = 0;
  v32[10] = 0;
  v32[11] = v31;
  v32[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v168 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[13] = 0;
  v33 = v28;
  v34 = v31;
  sub_100741484();
  v35 = sub_100741464();
  v37 = v36;
  v175 = v14;
  v14(v6, v33);
  v189 = v35;
  v190 = v37;
  sub_1007544E4();

  *(v170 + 32) = v32;
  v38 = objc_allocWithZone(type metadata accessor for StorefrontSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v187.receiver = v38;
  v187.super_class = v173;
  v39 = objc_msgSendSuper2(&v187, "init");
  v40 = swift_allocObject();
  v40[7] = 0x6F726665726F7453;
  v40[8] = 0xEA0000000000746ELL;
  v40[9] = 0;
  v40[10] = 0;
  v40[11] = v39;
  v40[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v40[13] = 0;
  v41 = v39;
  sub_100741484();
  v42 = sub_100741464();
  v44 = v43;
  v14(v6, v33);
  v189 = v42;
  v190 = v44;
  sub_1007544E4();

  v45 = v170;
  *(v170 + 40) = v40;
  v46 = objc_allocWithZone(type metadata accessor for MetricsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v47 = v173;
  v186.receiver = v46;
  v186.super_class = v173;
  v48 = objc_msgSendSuper2(&v186, "init");
  v49 = swift_allocObject();
  v49[7] = 0x7363697274654DLL;
  v49[8] = 0xE700000000000000;
  v49[9] = 0;
  v49[10] = 0;
  v50 = v168;
  v49[11] = v48;
  v49[12] = v50;
  v49[13] = 0;
  v51 = v48;
  sub_100741484();
  v52 = sub_100741464();
  v54 = v53;
  v175(v6, v174);
  v189 = v52;
  v190 = v54;
  sub_1007544E4();

  *(v45 + 48) = v49;
  v55 = objc_allocWithZone(type metadata accessor for TodaySettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v185.receiver = v55;
  v185.super_class = v47;
  v56 = objc_msgSendSuper2(&v185, "init");
  v57 = swift_allocObject();
  v57[7] = 0x7961646F54;
  v57[8] = 0xE500000000000000;
  v57[9] = 0;
  v57[10] = 0;
  v57[11] = v56;
  v57[12] = v50;
  v57[13] = 0;
  v58 = v56;
  sub_100741484();
  v59 = sub_100741464();
  v61 = v60;
  v62 = v175;
  v175(v6, v174);
  v189 = v59;
  v190 = v61;
  sub_1007544E4();

  v63 = v170;
  *(v170 + 56) = v57;
  v64 = objc_allocWithZone(type metadata accessor for ArcadeSettings());
  v65 = v169;
  v169 = v65;

  v66 = sub_10061BDA0();

  v67 = swift_allocObject();
  v67[7] = 0x656461637241;
  v67[8] = 0xE600000000000000;
  v67[9] = 0;
  v67[10] = 0;
  v68 = v168;
  v67[11] = v66;
  v67[12] = v68;
  v67[13] = 0;
  v69 = v66;
  sub_100741484();
  v70 = sub_100741464();
  v72 = v71;
  v73 = v174;
  v62(v6, v174);
  v189 = v70;
  v190 = v72;
  sub_1007544E4();

  *(v63 + 64) = v67;
  v74 = objc_allocWithZone(type metadata accessor for SearchSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v75 = v173;
  v184.receiver = v74;
  v184.super_class = v173;
  v76 = objc_msgSendSuper2(&v184, "init");
  v77 = swift_allocObject();
  v77[7] = 0x686372616553;
  v77[8] = 0xE600000000000000;
  v77[9] = 0;
  v77[10] = 0;
  v77[11] = v76;
  v77[12] = v68;
  v77[13] = 0;
  v78 = v76;
  sub_100741484();
  v79 = sub_100741464();
  v81 = v80;
  v175(v6, v73);
  v189 = v79;
  v190 = v81;
  sub_1007544E4();

  v82 = v170;
  *(v170 + 72) = v77;
  v83 = objc_allocWithZone(type metadata accessor for ProductPageSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v183.receiver = v83;
  v183.super_class = v75;
  v84 = objc_msgSendSuper2(&v183, "init");
  v85 = swift_allocObject();
  strcpy((v85 + 56), "Product Page");
  *(v85 + 69) = 0;
  *(v85 + 70) = -5120;
  *(v85 + 72) = 0;
  *(v85 + 80) = 0;
  *(v85 + 88) = v84;
  *(v85 + 96) = v68;
  *(v85 + 104) = 0;
  v86 = v84;
  sub_100741484();
  v87 = sub_100741464();
  v89 = v88;
  v175(v6, v174);
  v189 = v87;
  v190 = v89;
  sub_1007544E4();

  v82[10] = v85;
  v90 = objc_allocWithZone(type metadata accessor for AdsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v182.receiver = v90;
  v182.super_class = v75;
  v91 = objc_msgSendSuper2(&v182, "init");
  v92 = swift_allocObject();
  v92[7] = 7562305;
  v92[8] = 0xE300000000000000;
  v92[9] = 0;
  v92[10] = 0;
  v92[11] = v91;
  v92[12] = v68;
  v92[13] = 0;
  v93 = v91;
  sub_100741484();
  v94 = sub_100741464();
  v96 = v95;
  v97 = v174;
  v98 = v175;
  v175(v6, v174);
  v189 = v94;
  v190 = v96;
  sub_1007544E4();

  v82[11] = v92;
  v99 = objc_allocWithZone(type metadata accessor for OnboardingSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v181.receiver = v99;
  v181.super_class = v173;
  v100 = objc_msgSendSuper2(&v181, "init");
  v101 = swift_allocObject();
  v101[7] = 0x696472616F626E4FLL;
  v101[8] = 0xEA0000000000676ELL;
  v101[9] = 0;
  v101[10] = 0;
  v101[11] = v100;
  v101[12] = v168;
  v101[13] = 0;
  v102 = v100;
  sub_100741484();
  v103 = sub_100741464();
  v105 = v104;
  v98(v6, v97);
  v189 = v103;
  v190 = v105;
  sub_1007544E4();

  v82[12] = v101;
  v106 = objc_allocWithZone(type metadata accessor for ShelfPlaceholderSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v107 = v173;
  v180.receiver = v106;
  v180.super_class = v173;
  v108 = objc_msgSendSuper2(&v180, "init");
  v109 = swift_allocObject();
  v109[7] = 0xD000000000000012;
  v109[8] = 0x800000010076F3B0;
  v109[9] = 0;
  v109[10] = 0;
  v110 = v168;
  v109[11] = v108;
  v109[12] = v110;
  v109[13] = 0;
  v111 = v108;
  sub_100741484();
  v112 = sub_100741464();
  v114 = v113;
  v115 = v174;
  v175(v6, v174);
  v189 = v112;
  v190 = v114;
  sub_1007544E4();

  *(v170 + 104) = v109;
  v116 = objc_allocWithZone(type metadata accessor for DownloadProgressSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v179.receiver = v116;
  v179.super_class = v107;
  v117 = objc_msgSendSuper2(&v179, "init");
  v118 = swift_allocObject();
  v118[7] = 0xD000000000000011;
  v118[8] = 0x800000010076F3D0;
  v118[9] = 0;
  v118[10] = 0;
  v118[11] = v117;
  v118[12] = v110;
  v119 = v110;
  v118[13] = 0;
  v120 = v117;
  sub_100741484();
  v121 = sub_100741464();
  v123 = v122;
  v124 = v175;
  v175(v6, v115);
  v189 = v121;
  v190 = v123;
  sub_1007544E4();

  v125 = v170;
  *(v170 + 112) = v118;
  v126 = objc_allocWithZone(type metadata accessor for AppCapabilitiesSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v178.receiver = v126;
  v178.super_class = v173;
  v127 = objc_msgSendSuper2(&v178, "init");
  v128 = swift_allocObject();
  v128[7] = 0xD000000000000010;
  v128[8] = 0x800000010076F3F0;
  v128[9] = 0;
  v128[10] = 0;
  v128[11] = v127;
  v128[12] = v119;
  v128[13] = 0;
  v129 = v127;
  sub_100741484();
  v130 = sub_100741464();
  v132 = v131;
  v133 = v174;
  v124(v6, v174);
  v189 = v130;
  v190 = v132;
  sub_1007544E4();

  v134 = v125;
  *(v125 + 120) = v128;
  v135 = objc_allocWithZone(type metadata accessor for LocalizerSettings());
  swift_unknownObjectWeakInit();
  v136 = v169;
  swift_unknownObjectWeakAssign();
  v177.receiver = v135;
  v137 = v173;
  v177.super_class = v173;
  v138 = objc_msgSendSuper2(&v177, "init");
  v139 = swift_allocObject();
  v139[7] = 0x657A696C61636F4CLL;
  v139[8] = 0xE900000000000072;
  v139[9] = 0;
  v139[10] = 0;
  v140 = v168;
  v139[11] = v138;
  v139[12] = v140;
  v139[13] = 0;
  v141 = v138;
  sub_100741484();
  v142 = sub_100741464();
  v144 = v143;
  v175(v6, v133);
  v189 = v142;
  v190 = v144;
  sub_1007544E4();

  v145 = v134;
  *(v134 + 128) = v139;
  v146 = objc_allocWithZone(type metadata accessor for NotificationSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v176.receiver = v146;
  v176.super_class = v137;
  v147 = objc_msgSendSuper2(&v176, "init");

  v148 = swift_allocObject();
  strcpy((v148 + 56), "Notifications");
  *(v148 + 70) = -4864;
  *(v148 + 72) = 0;
  *(v148 + 80) = 0;
  *(v148 + 88) = v147;
  *(v148 + 96) = v140;
  *(v148 + 104) = 0;
  v149 = v147;
  sub_100741484();
  v150 = sub_100741464();
  v152 = v151;
  v153 = v174;
  v154 = v175;
  v175(v6, v174);
  v189 = v150;
  v190 = v152;
  sub_1007544E4();

  *(v145 + 136) = v148;
  v155 = v145;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_1007A7210;
  type metadata accessor for DebugSection();
  v157 = swift_allocObject();
  sub_100741484();
  v158 = sub_100741464();
  v160 = v159;
  v154(v6, v153);
  v157[2] = v158;
  v157[3] = v160;
  v157[4] = 0;
  v157[5] = 0xE000000000000000;
  v157[6] = v167;
  *(v156 + 32) = v157;
  v161 = swift_allocObject();
  sub_100741484();
  v162 = sub_100741464();
  v164 = v163;
  v154(v6, v153);
  v161[2] = v162;
  v161[3] = v164;
  v161[4] = 0;
  v161[5] = 0xE000000000000000;
  v161[6] = v155;
  *(v156 + 40) = v161;

  return v156;
}

void sub_1001AE898()
{
  sub_10000C518(&qword_10092BBA0);
  sub_100752764();
  sub_100752D34();
  [v1 invalidateMediaToken];
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
  swift_unknownObjectRelease();
}

id sub_1001AE948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugMenuSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001AE9A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AEA08()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v1 = Strong;
  v2 = [Strong presentingViewController];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 selectedViewController];

    if (!v4)
    {
      goto LABEL_8;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v2 = v4;
    if (v5)
    {
      v6 = v5;
      goto LABEL_11;
    }
  }

LABEL_8:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = [v7 presentingViewController], v8, !v9))
  {
    v6 = 0;
    goto LABEL_23;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_23;
  }

LABEL_11:
  v10 = [v6 viewControllers];
  sub_100032B70();
  v11 = sub_1007532A4();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_45:

    goto LABEL_23;
  }

  v12 = sub_100754664();
  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_13:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v11 + 8 * v14 + 32);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = sub_100754574();
LABEL_18:
  v16 = v15;

  if (!v16)
  {
LABEL_23:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_1001AEFE0(&v30);
    v11 = 0;
LABEL_24:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_25;
  }

  v11 = v16;
  sub_10000C518(&qword_10092BBB8);
  if (swift_dynamicCast())
  {
    if (*(&v31 + 1))
    {
LABEL_43:
      sub_100012160(&v30, v33);
      sub_100012160(v33, &aBlock);
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  sub_1001AEFE0(&v30);
  v24 = [v11 childViewControllers];
  v10 = sub_1007532A4();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_100754664();
  if (!result)
  {
LABEL_51:

    goto LABEL_24;
  }

LABEL_38:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(v10 + 32);
  }

  sub_10000C518(&qword_10092BBB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(&v31 + 1))
  {
    goto LABEL_43;
  }

LABEL_25:
  sub_1001AEFE0(&v30);
  aBlock = 0u;
  v27 = 0u;
  v28 = 0;
LABEL_26:
  v34[0] = aBlock;
  v34[1] = v27;
  v35 = v28;
  sub_1001AF048(v34, &aBlock);
  if (*(&v27 + 1))
  {
    sub_100012160(&aBlock, v33);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17 && (v18 = v17, v19 = [v17 presentingViewController], v18, v19))
    {
      sub_10000C824(v33, &v30);
      v20 = swift_allocObject();
      sub_100012160(&v30, v20 + 16);
      v28 = sub_1001AF0F0;
      v29 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v27 = sub_1000CF7B0;
      *(&v27 + 1) = &unk_10086B590;
      v21 = _Block_copy(&aBlock);

      [v19 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }

    else
    {
    }

    sub_10000C620(v33);
    p_aBlock = v34;
  }

  else
  {
    sub_1001AEFE0(v34);

    p_aBlock = &aBlock;
  }

  return sub_1001AEFE0(p_aBlock);
}

void sub_1001AEEF4()
{
  v0 = [objc_opt_self() sharedURLCache];
  [v0 removeAllCachedResponses];

  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_100753064();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);

  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

uint64_t sub_1001AEFE0(uint64_t a1)
{
  v2 = sub_10000C518(&unk_10092BBA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AF048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10092BBA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AF0B8()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001AF0F0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000C888(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1001AF144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001AF1AC(void (*a1)(void *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_100746084();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092EE90);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_100016B4C(v1, v11 - v8, &unk_10092EE90);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11[0];
  }

  return result;
}

void sub_1001AF398(uint64_t a1, uint64_t a2)
{
  sub_1007461A4();
  sub_1001B59B8(&unk_10092BBC8, &type metadata accessor for ProductTopLockup);
  sub_1007468B4();
  if (v12)
  {
    v4 = sub_1001AF640(a1, a2);
    v5 = sub_100746144();
    sub_1001B5434(v5, v4);

    if (sub_100746134() & 1) != 0 && (swift_getKeyPath(), sub_100746914(), , v6 = sub_1007537E4(), v12, (v6) && (swift_getKeyPath(), sub_100746914(), , v7 = sub_100753804(), v12, (v7))
    {
      sub_1001B4CE0();
      if (qword_100921718 != -1)
      {
        swift_once();
      }

      v8 = sub_100750B04();
      sub_10000D0FC(v8, qword_1009820C8);
      swift_getKeyPath();
      sub_100746914();

      sub_100751034();
      sub_10000C518(&unk_1009231A0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007A5CF0;
      *(v9 + 32) = v12;
      v10 = v12;
      v11 = sub_100751044();
      sub_100750544();
    }

    else
    {
    }
  }
}

double sub_1001AF640(uint64_t a1, uint64_t a2)
{
  v83 = *&a2;
  v3 = sub_10000C518(&qword_10092BBF0);
  __chkstk_darwin(v3 - 8);
  v67 = &v67 - v4;
  v5 = sub_10000C518(&unk_10092EE90);
  __chkstk_darwin(v5 - 8);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  v10 = sub_100742284();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074ED34();
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin(v12);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10074F6E4();
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v67 - v17;
  v19 = sub_10074F704();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  __chkstk_darwin(v26);
  v28 = &v67 - v27;
  sub_1007461A4();
  sub_1001B59B8(&unk_10092BBC8, &type metadata accessor for ProductTopLockup);
  sub_1007468B4();
  v29 = v86[0];
  if (v86[0])
  {
    v73 = v9;
    v84 = v22;
    v68 = v18;
    swift_getKeyPath();
    v69 = v29;
    sub_100746914();

    sub_10074F5C4();
    v30 = *(v20 + 8);
    v30(v28, v19);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5E4();
    v30(v25, v19);
    v31 = v68;
    v32 = v76;
    (*(v14 + 104))(v68, enum case for PageGrid.Direction.vertical(_:), v76);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5D4();
    v70 = v19;
    v72 = v20 + 8;
    v71 = v30;
    v30(v28, v19);
    (*(v14 + 16))(v75, v31, v32);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v14 + 8))(v31, v32);
    sub_10000C518(&unk_100925780);
    v33 = v83;
    sub_1007526E4();
    v34 = v86[0];
    swift_getObjectType();
    v35 = v77;
    v36 = v69;
    sub_100746174();
    v76 = v34;
    sub_1007424E4();
    (*(v78 + 8))(v35, v79);
    swift_getObjectType();
    v37 = v80;
    sub_1007423D4();
    v38 = sub_1001B4CE0();
    sub_1001B00D4(v36, v37, a1, v33, v86, v38, v39);
    v40 = v82;
    v41 = *(v81 + 8);
    v41(v37, v82);
    sub_1007423D4();
    v42 = v73;
    sub_1007460A4();
    v41(v37, v40);
    v43 = sub_100746084();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v42;
    v47 = v45(v42, 1, v43);
    v48 = 0;
    v49 = v46;
    if (v47 != 1)
    {
      v50 = v46;
      v51 = v74;
      sub_100016B4C(v50, v74, &unk_10092EE90);
      if (v45(v51, 1, v43) == 1)
      {
        v52 = &unk_10092EE90;
        v53 = v51;
      }

      else
      {
        v55 = v67;
        sub_100746074();
        (*(v44 + 8))(v51, v43);
        v56 = sub_100743E44();
        v57 = *(v56 - 8);
        if ((*(v57 + 48))(v55, 1, v56) != 1)
        {
          v58 = sub_100743E34();
          (*(v57 + 8))(v55, v56);
          v48 = v58 ^ 1;
          goto LABEL_10;
        }

        v52 = &qword_10092BBF0;
        v53 = v55;
      }

      sub_10000C8CC(v53, v52);
      v48 = 1;
    }

LABEL_10:
    if (sub_100746144() && (, ((sub_100746134() | v48) & 1) == 0))
    {
      if (qword_10091FED0 != -1)
      {
        swift_once();
      }

      v60 = qword_10097CC50;
    }

    else
    {
      if (sub_100746144())
      {

        v59 = 0.0;
LABEL_22:
        sub_10000C888(v86, v86[3]);
        v63 = v84;
        sub_10074F674();
        swift_getKeyPath();
        sub_100746914();

        sub_100750414();
        v65 = v64;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v71(v63, v70);
        v54 = v59 + v65;
        sub_10000C8CC(v49, &unk_10092EE90);
        sub_10000C620(v86);
        return v54;
      }

      v59 = 0.0;
      if (v48)
      {
        goto LABEL_22;
      }

      if (qword_10091FED8 != -1)
      {
        swift_once();
      }

      v60 = qword_10097CC78;
    }

    sub_10000C888(v60, v60[3]);
    swift_getKeyPath();
    sub_100746914();

    v61 = v85;
    sub_100750574();
    v59 = v62;

    goto LABEL_22;
  }

  return 0.0;
}

uint64_t sub_1001B00D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v145 = a4;
  v146 = a2;
  v147 = a5;
  v13 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v13 - 8);
  v144 = &v119 - v14;
  v143 = sub_10074C3E4();
  v138 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10000C518(&unk_100925560);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v119 - v16;
  v148 = sub_1007479B4();
  v137 = *(v148 - 8);
  __chkstk_darwin(v148);
  v136 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v135);
  v19 = (&v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v153 = &v119 - v21;
  v151 = sub_10074CD14();
  v152 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&unk_10092EE90);
  __chkstk_darwin(v23 - 8);
  v25 = &v119 - v24;
  v149 = sub_10074F704();
  v26 = *(v149 - 8);
  __chkstk_darwin(v149);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v154 = v28;
  sub_100746914();

  v29 = a1;
  sub_1007460A4();
  v146 = v8;
  v155 = v8;
  v156 = a1;
  v157 = a3;
  v158 = v145;
  v30 = COERCE_DOUBLE(sub_1001AF1AC(sub_1001B5904));
  LOBYTE(a1) = v31;
  sub_10000C8CC(v25, &unk_10092EE90);
  if (a1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_1001B5154();
  if (sub_100746134())
  {
    v125 = v26;
    v124 = v29;
    sub_100746164();
    if (qword_10091FE58 != -1)
    {
      swift_once();
    }

    v34 = sub_10000C518(&unk_100923C20);
    sub_10000D0FC(v34, qword_10097CB08);
    swift_getKeyPath();
    sub_100746914();

    *&v160 = v167;
    sub_100743464();
    swift_unknownObjectRelease();
    if (qword_10091FFD0 != -1)
    {
      swift_once();
    }

    v35 = sub_10000C518(&unk_10092BC10);
    sub_10000D0FC(v35, qword_10097CF90);
    swift_getKeyPath();
    sub_100746914();

    v166 = v167;
    v134 = v35;
    sub_100743464();
    swift_unknownObjectRelease();
    v36 = sub_10074F3F4();
    v168 = v36;
    v132 = sub_1001B59B8(&qword_10092AC70, &type metadata accessor for Feature);
    v169 = v132;
    v37 = sub_10000D134(&v167);
    v38 = *(v36 - 8);
    v39 = *(v38 + 104);
    v131 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v133 = v36;
    v130 = v39;
    v129 = v38 + 104;
    v39(v37);
    sub_10074FC74();
    sub_10000C620(&v167);
    v40 = v150;
    sub_10074CD04();
    sub_10074CCE4();
    v41 = *(v152 + 8);
    v152 += 8;
    v128 = v41;
    v41(v40, v151);
    sub_10074F674();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_10007DC04();
    swift_unknownObjectRelease();
    v45 = a3;
    if (qword_10091FE28 != -1)
    {
      swift_once();
    }

    v46 = v135;
    v47 = sub_10000D0FC(v135, qword_10097CAA8);
    v48 = v153;
    sub_1001B5A60(v47, v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v145 = a7;
    *(v48 + 32) = a6;
    *(v48 + 40) = a7;
    *(v48 + 8) = left;
    *(v48 + 16) = bottom;
    *(v48 + 24) = right;
    *v48 = 0;
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v32;
    v49 = v46[15];
    sub_10000C620(v48 + v49);
    sub_100012160(&v163, v48 + v49);
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v33;
    v50 = v46[16];
    sub_10000C620(v48 + v50);
    sub_100012160(&v163, v48 + v50);
    sub_10074F674();
    v51 = sub_10007DC04();
    swift_getObjectType();
    v52 = sub_10026F414(&v167, v48, v51);
    swift_unknownObjectRelease();
    if (v52)
    {
      sub_10074F674();
      sub_10007DC04();
      swift_unknownObjectRelease();
      sub_1001B5A60(v47, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v53 = v145;
      v19[4] = a6;
      v19[5] = v53;
      v19[1] = left;
      v19[2] = bottom;
      v19[3] = right;
      *v19 = 0.0;
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v32;
      v54 = v46[15];
      sub_10000C620(v19 + v54);
      sub_100012160(&v163, v19 + v54);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v33;
      v55 = v46[16];
      sub_10000C620(v19 + v55);
      sub_100012160(&v163, v19 + v55);
      if (qword_10091FF48 != -1)
      {
        swift_once();
      }

      v56 = sub_10000C518(&unk_1009249B0);
      v57 = sub_10000D0FC(v56, qword_10097CDF8);
      v58 = *(*(v56 - 8) + 24);
      v58(v19 + v46[7], v57, v56);
      if (qword_10091FF38 != -1)
      {
        swift_once();
      }

      v59 = sub_10000D0FC(v56, qword_10097CDC8);
      v58(v19 + v46[6], v59, v56);
      if (qword_10091FF60 != -1)
      {
        swift_once();
      }

      v60 = sub_10000D0FC(v56, qword_10097CE40);
      v58(v19 + v46[8], v60, v56);
      if (qword_10091FF08 != -1)
      {
        swift_once();
      }

      v61 = sub_10000C518(&unk_100923C30);
      v62 = sub_10000D0FC(v61, qword_10097CD38);
      (*(*(v61 - 8) + 24))(v19 + v46[13], v62, v61);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = 0x401C000000000000;
      v63 = v153;
      sub_1001B5A00(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v64 = v46[9];
      sub_10000C620(v19 + v64);
      sub_100012160(&v163, v19 + v64);
      sub_1001B5928(v19, v63);
      sub_10000C888(&v167, v168);
      if (qword_10091FE60 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v34, qword_10097CB20);
      swift_getKeyPath();
      sub_100746914();

      v166 = v160;
      sub_100743464();
      swift_unknownObjectRelease();
      sub_100750864();
    }

    if (qword_10091FE70 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v34, qword_10097CB50);
    swift_getKeyPath();
    sub_100746914();

    v166 = v160;
    sub_100743464();
    swift_unknownObjectRelease();
    v65 = v163;
    sub_1007460D4();
    v66 = qword_10091FFD8;
    v67 = v65;
    if (v66 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v134, qword_10097CFA8);
    swift_getKeyPath();
    v135 = v45;
    sub_100746914();

    v166 = v163;
    sub_100743464();
    swift_unknownObjectRelease();
    v68 = v133;
    v164 = v133;
    v165 = v132;
    v69 = sub_10000D134(&v163);
    v130(v69, v131, v68);
    sub_10074FC74();
    sub_10000C620(&v163);
    v70 = v150;
    sub_10074CD04();
    sub_10074CCE4();
    v128(v70, v151);
    v71 = sub_100750F34();
    swift_allocObject();
    v72 = sub_100750F14();
    swift_allocObject();
    v73 = sub_100750F14();
    swift_allocObject();
    v74 = sub_100750F14();
    swift_allocObject();
    v146 = sub_100750F14();
    v75 = sub_10056003C(0xD000000000000013, 0x800000010076F430, 0);
    [v75 size];

    swift_allocObject();
    v122 = sub_100750F14();
    swift_allocObject();
    v121 = sub_100750F14();
    swift_allocObject();
    v119 = sub_100750F14();
    swift_allocObject();
    v120 = sub_100750F14();
    sub_1007460F4();
    v123 = v67;
    v127 = v72;
    v126 = v73;
    if (v77 == 1 || (v78 = v76, , !v78))
    {
      v79 = v74;
      v162 = 0;
      v161 = 0u;
      v160 = 0u;
      v85 = v153;
    }

    else
    {
      v79 = v74;
      sub_100038D38();
      if (qword_1009210A8 != -1)
      {
        swift_once();
      }

      v80 = sub_100750534();
      sub_10000D0FC(v80, qword_100980F30);
      swift_getKeyPath();
      sub_100746914();

      v81 = v160;
      sub_100753C14();

      if (qword_10091FFF0 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v134, qword_10097CFF0);
      swift_getKeyPath();
      sub_100746914();

      v159 = v160;
      sub_100743464();
      swift_unknownObjectRelease();
      v82 = v133;
      *(&v161 + 1) = v133;
      v162 = v132;
      v83 = sub_10000D134(&v160);
      v130(v83, v131, v82);
      sub_10074FC74();
      sub_10000C620(&v160);
      v84 = v150;
      sub_10074CD04();
      sub_10074CCE4();
      v128(v84, v151);
      v85 = v153;
      v72 = v127;
      v73 = v126;
    }

    v91 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v92 = v147;
    v147[3] = v91;
    v92[4] = sub_1001B59B8(&unk_10092BC20, type metadata accessor for ProductLockupInlineUberLayout);
    v93 = sub_10000D134(v92);
    sub_1001B5A60(v85, v93, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v94 = (v93 + v91[5]);
    v94[3] = v71;
    v94[4] = &protocol witness table for LayoutViewPlaceholder;
    *v94 = v146;
    v95 = (v93 + v91[6]);
    v95[3] = v71;
    v95[4] = &protocol witness table for LayoutViewPlaceholder;
    *v95 = v73;
    v96 = (v93 + v91[7]);
    v96[3] = v71;
    v96[4] = &protocol witness table for LayoutViewPlaceholder;
    *v96 = v79;
    v97 = (v93 + v91[10]);
    v97[3] = v71;
    v97[4] = &protocol witness table for LayoutViewPlaceholder;
    *v97 = v72;
    swift_allocObject();

    v152 = v79;

    v98 = sub_100750F14();
    v99 = (v93 + v91[8]);
    v99[3] = v71;
    v99[4] = &protocol witness table for LayoutViewPlaceholder;
    *v99 = v98;
    sub_10000C824(&v167, v93 + v91[9]);
    sub_10000C824(&v163, v93 + v91[11]);
    v100 = v93 + v91[12];
    *(v100 + 4) = 0;
    *v100 = 0u;
    *(v100 + 1) = 0u;
    if (qword_1009219B8 != -1)
    {
      swift_once();
    }

    v101 = v148;
    v102 = sub_10000D0FC(v148, qword_1009827C8);
    v103 = v137;
    v104 = v136;
    (*(v137 + 16))(v136, v102, v101);
    swift_getKeyPath();
    sub_100746914();

    v105 = v138;
    v106 = v143;
    (*(v138 + 104))(v140, enum case for OfferButtonSubtitlePosition.below(_:), v143);
    (*(v105 + 56))(v144, 1, 1, v106);
    sub_1001B59B8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    v107 = v139;
    sub_10074A9C4();
    sub_100747984();
    swift_unknownObjectRelease();
    (*(v141 + 8))(v107, v142);
    (*(v103 + 8))(v104, v148);
    swift_allocObject();
    v108 = sub_100750F14();
    v109 = (v93 + v91[13]);
    v109[3] = v71;
    v109[4] = &protocol witness table for LayoutViewPlaceholder;
    *v109 = v108;
    sub_100016B4C(&v160, v93 + v91[14], &qword_10092BC30);
    v110 = v93 + v91[15];
    *(v110 + 4) = 0;
    *v110 = 0u;
    *(v110 + 1) = 0u;
    v111 = (v93 + v91[16]);
    v111[3] = v71;
    v111[4] = &protocol witness table for LayoutViewPlaceholder;
    *v111 = v122;
    v112 = (v93 + v91[17]);
    v112[3] = v71;
    v112[4] = &protocol witness table for LayoutViewPlaceholder;
    *v112 = v121;
    v113 = (v93 + v91[18]);
    v113[3] = v71;
    v113[4] = &protocol witness table for LayoutViewPlaceholder;
    *v113 = v119;
    v114 = (v93 + v91[19]);
    v114[3] = v71;
    v114[4] = &protocol witness table for LayoutViewPlaceholder;

    *v114 = v120;
    sub_10000C8CC(&v160, &qword_10092BC30);
    sub_10000C620(&v163);
    sub_1001B5A00(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    (*(v125 + 8))(v154, v149);
    return sub_10000C620(&v167);
  }

  else
  {
    swift_getKeyPath();
    sub_100746914();

    v86 = v167;
    v87 = sub_100753804();

    if (v87)
    {
      v88 = type metadata accessor for ProductLockupAccessibilityLayout(0);
      v89 = v147;
      v147[3] = v88;
      v89[4] = sub_1001B59B8(&unk_10092BC00, type metadata accessor for ProductLockupAccessibilityLayout);
      v90 = sub_10000D134(v89);
      sub_1001B1B38(v29, a3, v90, a6, a7, v32, v33);
    }

    else
    {
      v116 = type metadata accessor for ProductLockupLayout(0);
      v117 = v147;
      v147[3] = v116;
      v117[4] = sub_1001B59B8(&qword_10092BBF8, type metadata accessor for ProductLockupLayout);
      v118 = sub_10000D134(v117);
      sub_1001B3570(v29, a3, v118, a6, a7, v32, v33);
    }

    return (*(v26 + 8))(v154, v149);
  }
}

uint64_t sub_1001B19BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a3@<X8>)
{
  v6 = sub_10000C518(&unk_10092EE90);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_100746084();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = sub_100746144();
  if (v11)
  {
  }

  v12 = sub_100746134();
  v13 = sub_1001B5AC8(v8, v11 != 0, v12 & 1, a2);
  result = sub_10000C8CC(v8, &unk_10092EE90);
  *a3 = v13;
  return result;
}

uint64_t sub_1001B1B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v164 = a1;
  v144 = a3;
  v12 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v12 - 8);
  v142 = &v124 - v13;
  v140 = sub_10074C3E4();
  v134 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925560);
  v138 = *(v15 - 8);
  v139 = v15;
  __chkstk_darwin(v15);
  v135 = &v124 - v16;
  v137 = sub_1007479B4();
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v124 - v19;
  v131 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v131);
  v153 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_100744EA4();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10000C518(&qword_10092BBE0);
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v124 - v22;
  v152 = sub_10074CD14();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  *&v163 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100750534();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100038D38();
  if (qword_10091FE98 != -1)
  {
    swift_once();
  }

  v29 = sub_10000C518(&qword_100923C40);
  sub_10000D0FC(v29, qword_10097CBA8);
  swift_getKeyPath();
  sub_100746914();

  v182[0] = v183[0];
  v146 = v29;
  sub_100743464();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_100746914();

  v30 = v183[0];
  v157 = v28;
  v31 = sub_100753C14();

  v32 = *(v25 + 8);
  v147 = v27;
  v148 = v25 + 8;
  v158 = v24;
  v145 = v32;
  v32(v27, v24);
  sub_100746164();
  v33 = qword_10091FFC8;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10000C518(&unk_10092BC10);
  sub_10000D0FC(v35, qword_10097CF78);
  swift_getKeyPath();
  sub_100746914();

  v181[0] = v183[0];
  v156 = v35;
  sub_100743464();
  swift_unknownObjectRelease();
  v36 = sub_10074F3F4();
  v183[3] = v36;
  *&v162 = sub_1001B59B8(&qword_10092AC70, &type metadata accessor for Feature);
  v183[4] = v162;
  v37 = sub_10000D134(v183);
  v38 = *(v36 - 8);
  v39 = *(v38 + 104);
  v161 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v155 = v36;
  v159 = v38 + 104;
  v160 = v39;
  v39(v37);
  LOBYTE(v36) = sub_10074FC74();
  sub_10000C620(v183);
  LOBYTE(v123) = v36 & 1;
  v40 = v163;
  v132 = v34;
  sub_10074CD04();
  sub_10074CCE4();
  v41 = *(v165 + 8);
  v165 += 8;
  v154 = v41;
  v41(v40, v152);
  if (qword_10091FEA8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v146, qword_10097CBD8);
  swift_getKeyPath();
  sub_100746914();

  v181[0] = v182[0];
  v42 = v147;
  sub_100743464();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_100746914();

  v43 = v182[0];
  v44 = sub_100753C14();

  v145(v42, v158);
  v130 = sub_1007460D4();
  v45 = qword_10091FFD8;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v128 = sub_10000D0FC(v156, qword_10097CFA8);
  swift_getKeyPath();
  v127 = a2;
  sub_100746914();

  *&v178 = v182[0];
  sub_100743464();
  swift_unknownObjectRelease();
  v47 = v155;
  v182[3] = v155;
  v182[4] = v162;
  v48 = sub_10000D134(v182);
  v160(v48, v161, v47);
  sub_10074FC74();
  sub_10000C620(v182);
  v49 = v163;
  sub_10074CD04();
  sub_10074CCE4();
  v50 = v152;
  v51 = v154;
  v154(v49, v152);
  v130 = sub_100746094();
  v126 = v52;
  swift_getKeyPath();
  v53 = v46;
  sub_100746914();

  v174 = v181[0];
  sub_100743464();
  swift_unknownObjectRelease();
  v181[3] = v47;
  v181[4] = v162;
  v54 = sub_10000D134(v181);
  v160(v54, v161, v47);
  v55 = sub_10074FC74();
  sub_10000C620(v181);
  LOBYTE(v123) = v55 & 1;
  v130 = v53;
  sub_10074CD04();
  sub_10074CCE4();
  v56 = v49;
  v57 = v50;
  v51(v56, v50);
  sub_1007460B4();
  if (v58)
  {
    if (qword_10091FEB8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v146, qword_10097CC08);
    swift_getKeyPath();
    sub_100746914();

    v174 = v178;
    v59 = v147;
    sub_100743464();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    sub_100746914();

    v60 = v178;
    v61 = sub_100753C14();

    v145(v59, v158);
    v62 = qword_10091FFE0;
    v63 = v61;
    if (v62 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v156, qword_10097CFC0);
    swift_getKeyPath();
    sub_100746914();

    *&v171 = v178;
    sub_100743464();
    swift_unknownObjectRelease();
    v64 = v155;
    *(&v179 + 1) = v155;
    v180 = v162;
    v65 = sub_10000D134(&v178);
    v160(v65, v161, v64);
    LOBYTE(v64) = sub_10074FC74();
    sub_10000C620(&v178);
    LOBYTE(v123) = v64 & 1;
    v66 = v163;
    sub_10074CD04();
    sub_10074CCE4();

    v154(v66, v50);
  }

  else
  {
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
  }

  v67 = v129;
  sub_1001B58AC();
  sub_1007468E4();
  swift_getKeyPath();
  sub_100752E94();

  v68 = v174;
  swift_getKeyPath();
  sub_100752E94();

  v69 = v175;
  if (v175)
  {
    v70 = v158;
    if (v68)
    {

      goto LABEL_31;
    }
  }

  else
  {
    v70 = v158;
  }

  v71 = sub_100746114();
  v72 = v124;
  v73 = v125;
  if (v71)
  {
    v74 = v71;
  }

  else
  {
    if (!sub_100746104())
    {
LABEL_29:
      v69 = 0;
      goto LABEL_30;
    }

    v74 = sub_100749F34();
  }

  (*(v73 + 104))(v72, enum case for OfferTitleType.standard(_:), v67);
  if (!*(v74 + 16) || (v75 = sub_100412914(v72), (v76 & 1) == 0))
  {

    (*(v73 + 8))(v72, v67);
    goto LABEL_29;
  }

  v77 = (*(v74 + 56) + 16 * v75);
  v78 = v72;
  v148 = *v77;
  v79 = v73;
  v69 = v77[1];
  v80 = *(v79 + 8);

  v80(v78, v67);

LABEL_30:
  v57 = v152;
LABEL_31:
  if (qword_1009212E0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v70, qword_1009815D8);
  swift_getKeyPath();
  sub_100746914();

  v81 = v174;
  sub_100753C14();

  if (qword_10091FFF8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v156, qword_10097D008);
  swift_getKeyPath();
  sub_100746914();

  *&v168 = v174;
  sub_100743464();
  swift_unknownObjectRelease();
  v82 = v155;
  v176 = v155;
  v177 = v162;
  v83 = sub_10000D134(&v174);
  v160(v83, v161, v82);
  LOBYTE(v82) = sub_10074FC74();
  sub_10000C620(&v174);
  LOBYTE(v123) = v82 & 1;
  v84 = v163;
  sub_10074CD04();
  sub_10074CCE4();
  v154(v84, v57);
  sub_10000C888(&v174, v176);
  if (v69)
  {
  }

  sub_1007503B4();
  sub_1007460F4();
  if (v85 == 1 || (v86 = v85, , !v86))
  {
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
  }

  else
  {
    if (qword_100921098 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v158, qword_100980F00);
    swift_getKeyPath();
    sub_100746914();

    v87 = v171;
    sub_100753C14();

    if (qword_10091FFE8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v156, qword_10097CFD8);
    swift_getKeyPath();
    sub_100746914();

    v167 = v171;
    sub_100743464();
    swift_unknownObjectRelease();
    v88 = v155;
    *(&v172 + 1) = v155;
    v173 = v162;
    v89 = sub_10000D134(&v171);
    v160(v89, v161, v88);
    LOBYTE(v88) = sub_10074FC74();
    sub_10000C620(&v171);
    LOBYTE(v123) = v88 & 1;
    v90 = v163;
    sub_10074CD04();
    sub_10074CCE4();
    v154(v90, v57);
  }

  sub_1007460F4();
  if (v92 == 1 || (v93 = v91, , !v93))
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  else
  {
    if (qword_1009210A0 != -1)
    {
      swift_once();
    }

    v94 = v57;
    sub_10000D0FC(v158, qword_100980F18);
    swift_getKeyPath();
    sub_100746914();

    v95 = v168;
    sub_100753C14();

    if (qword_10091FFF0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v156, qword_10097CFF0);
    swift_getKeyPath();
    sub_100746914();

    v166 = v168;
    sub_100743464();
    swift_unknownObjectRelease();
    v96 = v155;
    *(&v169 + 1) = v155;
    v170 = v162;
    v97 = sub_10000D134(&v168);
    v160(v97, v161, v96);
    v98 = sub_10074FC74();
    sub_10000C620(&v168);
    LOBYTE(v123) = v98 & 1;
    v99 = v163;
    sub_10074CD04();
    sub_10074CCE4();
    v154(v99, v94);
  }

  v100 = sub_100750F34();
  swift_allocObject();
  v165 = sub_100750F14();
  swift_allocObject();
  v164 = sub_100750F14();
  v101 = *&UIEdgeInsetsZero.top;
  v162 = *&UIEdgeInsetsZero.bottom;
  v163 = v101;
  if (qword_10091FE30 != -1)
  {
    swift_once();
  }

  v102 = sub_10000D0FC(v131, qword_10097CAC0);
  __chkstk_darwin(v102);
  *(&v124 - 8) = a4;
  *(&v124 - 7) = a5;
  *(&v124 - 6) = a6;
  *(&v124 - 5) = a7;
  v103 = v162;
  *(&v124 - 2) = v163;
  v123 = v103;
  sub_1001B59B8(&qword_10092BC38, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10074F4B4();
  swift_getKeyPath();
  sub_100746914();

  v104 = v167;
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v105 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v105 = qword_10093FF58;
  }

  v106 = v137;
  v107 = sub_10000D0FC(v137, v105);
  v108 = v143;
  v109 = v133;
  (*(v143 + 16))(v133, v107, v106);

  (*(v108 + 32))(v151, v109, v106);
  v110 = *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  *&v163 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics;
  v111 = v144;
  sub_1001B5A60(v153, v144 + v110, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  swift_allocObject();
  v112 = sub_100750F14();
  *(v111 + 24) = v100;
  *(v111 + 32) = &protocol witness table for LayoutViewPlaceholder;
  *v111 = v112;
  sub_10000C824(v183, v111 + 40);
  sub_10000C824(v181, v111 + 80);
  sub_10000C824(v182, v111 + 120);
  sub_100016B4C(&v178, v111 + 160, &qword_10092BC30);
  swift_getKeyPath();
  sub_100746914();

  v113 = v134;
  v114 = v140;
  (*(v134 + 104))(v136, enum case for OfferButtonSubtitlePosition.below(_:), v140);
  (*(v113 + 56))(v142, 1, 1, v114);
  sub_1001B59B8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  v115 = v135;
  sub_10074A9C4();
  v116 = v151;
  sub_100747984();
  swift_unknownObjectRelease();
  (*(v138 + 8))(v115, v139);
  swift_allocObject();
  v117 = sub_100750F14();
  *(v111 + 224) = v100;
  *(v111 + 232) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 200) = v117;
  *(v111 + 240) = 0u;
  *(v111 + 256) = 0u;
  *(v111 + 272) = 0;
  v118 = v176;
  v119 = v177;
  v120 = sub_10000C888(&v174, v176);
  *(v111 + 304) = v118;
  *(v111 + 312) = *(v119 + 8);
  v121 = sub_10000D134((v111 + 280));
  (*(*(v118 - 8) + 16))(v121, v120, v118);
  sub_100016B4C(&v171, v111 + 320, &qword_10092BC30);
  sub_100016B4C(&v168, v111 + 360, &qword_10092BC30);
  *(v111 + 424) = v100;
  *(v111 + 432) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 400) = v165;
  *(v111 + 464) = v100;
  *(v111 + 472) = &protocol witness table for LayoutViewPlaceholder;

  *(v111 + 440) = v164;
  (*(v108 + 8))(v116, v106);
  sub_1001B5A00(v153, v163);
  sub_10000C8CC(&v168, &qword_10092BC30);
  sub_10000C8CC(&v171, &qword_10092BC30);
  (*(v141 + 8))(v149, v150);
  sub_10000C8CC(&v178, &qword_10092BC30);
  sub_10000C620(v181);
  sub_10000C620(v182);
  sub_10000C620(v183);
  return sub_10000C620(&v174);
}

uint64_t sub_1001B3570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v155 = a1;
  v137 = a3;
  v12 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v12 - 8);
  v135 = v125 - v13;
  v134 = sub_10074C3E4();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925560);
  v132 = *(v15 - 8);
  v133 = v15;
  __chkstk_darwin(v15);
  v130 = v125 - v16;
  v143 = sub_1007479B4();
  v136 = *(v143 - 8);
  __chkstk_darwin(v143);
  v128 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = v125 - v19;
  v20 = sub_100744EA4();
  v138 = *(v20 - 8);
  v139 = v20;
  __chkstk_darwin(v20);
  v126 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074CD14();
  v23 = *(v22 - 8);
  v153 = v22;
  v154 = v23;
  __chkstk_darwin(v22);
  v149 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&qword_10092BC40);
  __chkstk_darwin(v25 - 8);
  v27 = v125 - v26;
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v28);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  swift_getKeyPath();
  sub_100746914();

  v35 = v179[0];
  sub_10003FEA4(v179[0], v30);
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v36 = *&UIEdgeInsetsZero.bottom;
  v160 = *&UIEdgeInsetsZero.top;
  v161 = v36;
  v162 = v27;
  sub_1001B59B8(&qword_10092BC48, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10074F4B4();

  sub_1001B5A00(v30, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10000C8CC(v27, &qword_10092BC40);
  v150 = sub_100746164();
  v145 = v37;
  swift_getKeyPath();
  v38 = a2;
  sub_100746914();

  v177[0] = v179[0];
  v39 = sub_10000C518(&unk_100923C20);
  sub_100743464();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_100746914();

  *&v174 = v179[0];
  v40 = sub_10000C518(&unk_10092BC10);
  sub_100743464();
  swift_unknownObjectRelease();
  v41 = sub_10074F3F4();
  v179[3] = v41;
  v147 = sub_1001B59B8(&qword_10092AC70, &type metadata accessor for Feature);
  v179[4] = v147;
  v42 = sub_10000D134(v179);
  v43 = *(v41 - 8);
  v44 = *(v43 + 104);
  LODWORD(v152) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v148 = v41;
  v151 = v44;
  v146 = v43 + 104;
  v44(v42);
  sub_10074FC74();
  sub_10000C620(v179);
  v45 = v149;
  sub_10074CD04();
  sub_10074CCE4();
  v46 = *(v154 + 8);
  v154 += 8;
  v150 = v46;
  v46(v45, v153);
  v125[1] = v28;
  swift_getKeyPath();
  v141 = v38;
  sub_100746914();

  *&v174 = v177[0];
  v145 = v33;
  v140 = v39;
  sub_100743464();
  swift_unknownObjectRelease();
  v47 = v178[0];
  v144 = sub_1007460D4();
  v127 = v48;
  v49 = qword_10091FFD8;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = v40;
  v125[3] = sub_10000D0FC(v40, qword_10097CFA8);
  swift_getKeyPath();
  sub_100746914();

  *&v174 = v178[0];
  sub_100743464();
  swift_unknownObjectRelease();
  v53 = v147;
  v52 = v148;
  v178[3] = v148;
  v178[4] = v147;
  v54 = sub_10000D134(v178);
  (v151)(v54, v152, v52);
  sub_10074FC74();
  sub_10000C620(v178);
  v55 = v149;
  sub_10074CD04();
  sub_10074CCE4();
  v150(v55, v153);
  v127 = sub_100746094();
  v125[2] = v56;
  swift_getKeyPath();
  v57 = v50;
  sub_100746914();

  v171[0] = v177[0];
  v144 = v51;
  sub_100743464();
  swift_unknownObjectRelease();
  v177[3] = v52;
  v177[4] = v53;
  v58 = sub_10000D134(v177);
  (v151)(v58, v152, v52);
  sub_10074FC74();
  sub_10000C620(v177);
  v127 = v57;
  sub_10074CD04();
  sub_10074CCE4();
  v59 = v153;
  v150(v55, v153);
  sub_1007460B4();
  if (v60)
  {
    swift_getKeyPath();
    sub_100746914();

    *&v167 = v171[0];
    sub_100743464();
    swift_unknownObjectRelease();
    v61 = qword_10091FFE0;
    v62 = v174;
    if (v61 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v144, qword_10097CFC0);
    swift_getKeyPath();
    sub_100746914();

    *&v167 = v174;
    sub_100743464();
    swift_unknownObjectRelease();
    v63 = v148;
    *(&v175 + 1) = v148;
    v176 = v147;
    v64 = sub_10000D134(&v174);
    (v151)(v64, v152, v63);
    sub_10074FC74();
    sub_10000C620(&v174);
    v65 = v149;
    sub_10074CD04();
    sub_10074CCE4();

    v59 = v153;
    v150(v65, v153);
  }

  else
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
  }

  v66 = sub_100746114();
  v67 = v138;
  v68 = v139;
  v69 = v126;
  if (v66)
  {
    v70 = v66;
    v71 = v144;
  }

  else
  {
    v72 = sub_100746104();
    v71 = v144;
    if (!v72)
    {
      v154 = 0;
      goto LABEL_16;
    }

    v70 = sub_100749F34();
    v67 = v138;
  }

  (*(v67 + 104))(v69, enum case for OfferTitleType.standard(_:), v68);
  if (*(v70 + 16) && (v73 = sub_100412914(v69), (v74 & 1) != 0))
  {
    v75 = (*(v70 + 56) + 16 * v73);
    v76 = v75[1];
    v154 = *v75;
    v77 = *(v67 + 8);

    v77(v69, v139);

    v72 = v76;
  }

  else
  {

    (*(v67 + 8))(v69, v68);
    v154 = 0;
    v72 = 0;
  }

LABEL_16:
  v78 = qword_10091FE80;
  v141 = v72;

  if (v78 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v140, qword_10097CB80);
  swift_getKeyPath();
  sub_100746914();

  *&v164 = v171[0];
  sub_100743464();
  swift_unknownObjectRelease();
  if (qword_10091FFF8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v71, qword_10097D008);
  swift_getKeyPath();
  sub_100746914();

  v170 = v171[0];
  sub_100743464();
  swift_unknownObjectRelease();
  v79 = v148;
  v172 = v148;
  v173 = v147;
  v80 = sub_10000D134(v171);
  (v151)(v80, v152, v79);
  sub_10074FC74();
  sub_10000C620(v171);
  v81 = v149;
  sub_10074CD04();
  sub_10074CCE4();
  v150(v81, v59);
  sub_10000C888(v171, v172);
  sub_1007503B4();
  sub_1007460F4();
  if (v82 == 1 || (v83 = v82, , !v83))
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    sub_100038D38();
    if (qword_100921098 != -1)
    {
      swift_once();
    }

    v84 = sub_100750534();
    sub_10000D0FC(v84, qword_100980F00);
    swift_getKeyPath();
    sub_100746914();

    v85 = v167;
    sub_100753C14();

    if (qword_10091FFE8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v144, qword_10097CFD8);
    swift_getKeyPath();
    sub_100746914();

    v170 = v167;
    sub_100743464();
    swift_unknownObjectRelease();
    v86 = v148;
    *(&v168 + 1) = v148;
    v169 = v147;
    v87 = sub_10000D134(&v167);
    (v151)(v87, v152, v86);
    sub_10074FC74();
    sub_10000C620(&v167);
    v88 = v149;
    sub_10074CD04();
    sub_10074CCE4();
    v150(v88, v153);
  }

  sub_1007460F4();
  if (v90 == 1 || (v91 = v89, , !v91))
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
  }

  else
  {
    sub_100038D38();
    if (qword_1009210A0 != -1)
    {
      swift_once();
    }

    v92 = sub_100750534();
    sub_10000D0FC(v92, qword_100980F18);
    swift_getKeyPath();
    sub_100746914();

    v93 = v164;
    sub_100753C14();

    if (qword_10091FFF0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v144, qword_10097CFF0);
    swift_getKeyPath();
    sub_100746914();

    v163 = v164;
    sub_100743464();
    swift_unknownObjectRelease();
    v94 = v148;
    *(&v165 + 1) = v148;
    v166 = v147;
    v95 = sub_10000D134(&v164);
    (v151)(v95, v152, v94);
    sub_10074FC74();
    sub_10000C620(&v164);
    v96 = v149;
    sub_10074CD04();
    sub_10074CCE4();
    v150(v96, v153);
  }

  v97 = sub_100750F34();
  swift_allocObject();
  v153 = sub_100750F14();
  swift_allocObject();
  v152 = sub_100750F14();
  swift_getKeyPath();
  sub_100746914();

  v98 = v170;
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v99 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v99 = qword_10093FF58;
  }

  v100 = v143;
  v101 = sub_10000D0FC(v143, v99);
  v102 = v136;
  v103 = v128;
  (*(v136 + 16))(v128, v101, v100);

  (*(v102 + 32))(v142, v103, v100);
  v151 = type metadata accessor for ProductLockupLayout.Metrics;
  v104 = v137;
  sub_1001B5A60(v145, v137, type metadata accessor for ProductLockupLayout.Metrics);
  swift_allocObject();
  v105 = sub_100750F14();
  v106 = type metadata accessor for ProductLockupLayout(0);
  v107 = (v104 + v106[5]);
  v107[3] = v97;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *v107 = v105;
  sub_10000C824(v179, v104 + v106[6]);
  sub_10000C824(v177, v104 + v106[7]);
  sub_10000C824(v178, v104 + v106[8]);
  sub_100016B4C(&v174, v104 + v106[9], &qword_10092BC30);
  v108 = v104 + v106[10];
  *(v108 + 32) = 0;
  *v108 = 0u;
  *(v108 + 16) = 0u;
  swift_getKeyPath();
  sub_100746914();

  v109 = v129;
  v110 = v134;
  (*(v129 + 104))(v131, enum case for OfferButtonSubtitlePosition.below(_:), v134);
  (*(v109 + 56))(v135, 1, 1, v110);
  sub_1001B59B8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  v111 = v130;
  sub_10074A9C4();
  v112 = v142;
  sub_100747984();
  swift_unknownObjectRelease();
  (*(v132 + 8))(v111, v133);
  swift_allocObject();
  v113 = sub_100750F14();
  v114 = (v104 + v106[11]);
  v114[3] = v97;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  *v114 = v113;
  v115 = v172;
  v116 = v173;
  v117 = sub_10000C888(v171, v172);
  v118 = (v104 + v106[12]);
  v118[3] = v115;
  v118[4] = *(v116 + 8);
  v119 = sub_10000D134(v118);
  (*(*(v115 - 8) + 16))(v119, v117, v115);
  sub_100016B4C(&v167, v104 + v106[13], &qword_10092BC30);
  sub_100016B4C(&v164, v104 + v106[14], &qword_10092BC30);
  LOBYTE(v115) = sub_1007460E4();
  v120 = (v104 + v106[17]);
  v120[3] = v97;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  *v120 = v153;
  v121 = (v104 + v106[18]);
  v121[3] = v97;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;

  *v121 = v152;
  (*(v102 + 8))(v112, v143);
  sub_10000C8CC(&v164, &qword_10092BC30);
  sub_10000C8CC(&v167, &qword_10092BC30);
  sub_10000C8CC(&v174, &qword_10092BC30);
  sub_10000C620(v177);
  sub_10000C620(v178);
  sub_10000C620(v179);
  sub_1001B5A00(v145, v151);
  *(v104 + v106[15]) = v115 & 1;
  v122 = (v104 + v106[16]);
  v123 = v141;
  *v122 = v154;
  v122[1] = v123;
  return sub_10000C620(v171);
}

double sub_1001B4CE0()
{
  v0 = sub_10000C518(&qword_10092BBD8);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_10074AFC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v33 - v8;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007461A4();
  sub_1001B59B8(&unk_10092BBC8, &type metadata accessor for ProductTopLockup);
  sub_1007468B4();
  if (!v38)
  {
    return 0.0;
  }

  v34 = v4;
  v35 = v2;
  v36 = v3;
  swift_getKeyPath();
  sub_100746914();

  v33 = v38;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v17 = v16;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v19 = v18;
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v21 = v20;
  if (sub_100746134())
  {
    v22 = v34;
    v23 = &enum case for ProductPageIconDimension.large(_:);
    if (v17 >= v14)
    {
      v23 = &enum case for ProductPageIconDimension.extraSmall(_:);
    }

    v24 = v36;
    (*(v34 + 104))(v6, *v23, v36);
    v25 = v37;
    (*(v22 + 32))(v37, v6, v24);
    v26 = v35;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    v29 = sub_1007537E4();
    v26 = v35;
    v24 = v36;
    v22 = v34;
    v25 = v37;
    if (v29 & 1) != 0 && (sub_100753804())
    {
      v30 = &enum case for ProductPageIconDimension.extraLargeAccessibility(_:);
    }

    else if ((sub_1007537E4() & 1) != 0 && v21 < v19)
    {
      v30 = &enum case for ProductPageIconDimension.extraLarge(_:);
    }

    else if (v17 < v14 || (sub_100753804() & 1) != 0)
    {
      v30 = &enum case for ProductPageIconDimension.medium(_:);
    }

    else
    {
      v30 = &enum case for ProductPageIconDimension.small(_:);
    }

    (*(v22 + 104))(v25, *v30, v24);
  }

  sub_100746194();
  sub_10074AFB4();
  v28 = v31;

  sub_10000C8CC(v26, &qword_10092BBD8);
  (*(v22 + 8))(v25, v24);
  return v28;
}

double sub_1001B5154()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v4 = sub_1007460C4();
  if (v4)
  {
    v5 = v4;
    if ((sub_100746134() & 1) == 0)
    {
      v24 = v0;
      if (qword_10091FEE8 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10097CCC8, qword_10097CCE0);
      swift_getKeyPath();
      sub_100746914();

      v6 = *&v25[0];
      sub_100750574();

      v0 = v24;
    }

    v7 = sub_100746134();
    v8 = sub_10074ED64();
    if (v8)
    {
    }

    sub_10074ED54();
    sub_10000C518(&unk_10092BC50);
    v9 = sub_1007532D4();

    if (v7)
    {
      _Q3 = xmmword_1007AB740;
      v11 = 17.0;
      v12 = 0.0;
      v13 = 0.0;
    }

    else
    {
      v12 = 22.0;
      if (v8)
      {
        v12 = 15.0;
      }

      if (v9)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = v12;
      }

      v11 = 9.0;
      if (v9)
      {
        v15 = 12.0;
      }

      else
      {
        v15 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v15;
    }

    v25[0] = _Q3;
    v25[1] = _Q3;
    v26 = v11;
    v27 = v12;
    v28 = v11;
    v29 = v13;
    v30 = xmmword_1007AB770;
    v31 = xmmword_1007AB780;
    v20 = sub_10007DC04();
    sub_10074F674();
    sub_1000EAEE0(v5, v25, v20);
    v14 = v21;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0.0;
  }

  (*(v1 + 8))(v3, v0);
  return v14;
}

double sub_1001B5434(uint64_t a1, double a2)
{
  v4 = sub_10074F704();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = sub_10074E5E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10000C518(&qword_10092BBE0);
  __chkstk_darwin(v14);
  v17 = &v35[-v16];
  if (!a1)
  {
    return 0.0;
  }

  v37 = v15;
  v39 = v11;
  v40 = v10;
  swift_getKeyPath();

  sub_100746914();

  v18 = v43;
  v19 = sub_1007537D4();

  if (v19)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1001B58AC();
  sub_1007468E4();
  v41 = a1;
  sub_10074E604();
  swift_getKeyPath();
  v38 = v14;
  sub_100752E94();

  v36 = v43 ^ 1;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5E4();
  v22 = v21;
  v23 = *(v42 + 8);
  v23(v9, v4);
  swift_getKeyPath();
  sub_100746914();

  v24 = v43;
  v25 = sub_1007537D4();

  if (v25)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5D4();
    v27 = v26;
    v23(v9, v4);
    v22 = v22 - v27;
  }

  swift_getKeyPath();
  sub_100746914();

  v28 = v43;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v30 = v29;
  v23(v6, v4);
  v31 = v22 - v20;
  if (v22 - v20 < 0.0)
  {
    v31 = 0.0;
  }

  sub_1006439D4(v28, v13, v36 & 1, v30, *&v31, 0);
  v33 = v32;

  (*(v39 + 8))(v13, v40);
  (*(v37 + 8))(v17, v38);
  return v33;
}

unint64_t sub_1001B58AC()
{
  result = qword_10092BBE8;
  if (!qword_10092BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092BBE8);
  }

  return result;
}

uint64_t sub_1001B5928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B59B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B5A00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B5A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1001B5AC8(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v61 = a4;
  v56 = a2;
  v6 = sub_10074CD14();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v57 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F704();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10092EE90);
  __chkstk_darwin(v11 - 8);
  v13 = (v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  sub_100016B4C(a1, v55 - v15, &unk_10092EE90);
  v17 = sub_100746084();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  sub_100016B4C(v16, v13, &unk_10092EE90);
  v20 = (*(v18 + 88))(v13, v17);
  if (v20 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v20 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v18 + 8))(v13, v17);
LABEL_2:
      sub_10000C8CC(v16, &unk_10092EE90);
      return 0.0;
    }

    v23 = a3;
    (*(v18 + 96))(v13, v17);
    v21 = *v13;
    goto LABEL_8;
  }

  (*(v18 + 96))(v13, v17);
  v21 = *v13;
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v22 = *&v63[0];
  v23 = a3;
  if (sub_100744924())
  {

LABEL_8:

    sub_10000C8CC(v16, &unk_10092EE90);
    if ((v23 & 1) == 0)
    {
      if (qword_10091FEE0 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10097CCA0, qword_10097CCB8);
      swift_getKeyPath();
      sub_100746914();

      v24 = *&v63[0];
      sub_100750574();
    }

    v25 = sub_10074ED64();
    if (v25)
    {
    }

    sub_10074ED54();
    sub_10000C518(&unk_10092BC50);
    v26 = sub_1007532D4();

    if (v23)
    {
      _Q3 = xmmword_1007AB740;
      v28 = 17.0;
      v29 = 0.0;
      v30 = 0.0;
    }

    else
    {
      v29 = 22.0;
      if (v25)
      {
        v29 = 15.0;
      }

      if (v26)
      {
        v30 = 15.0;
      }

      else
      {
        v30 = v29;
      }

      v28 = 9.0;
      if (v26)
      {
        v47 = 12.0;
      }

      else
      {
        v47 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v47;
    }

    v63[0] = _Q3;
    v63[1] = _Q3;
    v64 = v28;
    v65 = v29;
    v66 = v28;
    v67 = v30;
    v68 = xmmword_1007AB770;
    v69 = xmmword_1007AB780;
    v52 = sub_10007DC04();
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v60 + 8))(v10, v8);
    sub_1000EAEE0(v21, v63, v52);
    v19 = v53;
    swift_unknownObjectRelease();

    return v19;
  }

  v55[2] = v22;
  v55[0] = sub_10074EDA4();
  v55[1] = v31;
  v32 = a3 | v56;
  v33 = sub_10007DC04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v35 = v34;
  (*(v60 + 8))(v10, v8);
  if (qword_100921880 != -1)
  {
    swift_once();
  }

  sub_1001B63AC(&unk_10093E990, v76);
  if (v32)
  {
    sub_10000C8CC(v77, &qword_100931390);
    memset(v77, 0, sizeof(v77));
    v78 = 0;
  }

  v61 = v21;
  sub_100038D38();
  if (qword_100921010 != -1)
  {
    swift_once();
  }

  v36 = sub_100750534();
  sub_10000D0FC(v36, qword_100980D68);
  swift_getObjectType();
  v37 = [v33 traitCollection];
  v38 = sub_100753C14();

  sub_1001B63AC(v76, v63);
  v39 = sub_100750F34();
  swift_allocObject();
  v40 = sub_100750EF4();
  v71 = v39;
  v72 = &protocol witness table for LayoutViewPlaceholder;
  v70 = v40;
  v41 = sub_10074F3F4();
  v62[3] = v41;
  v62[4] = sub_1001B59B8(&qword_10092AC70, &type metadata accessor for Feature);
  v42 = sub_10000D134(v62);
  (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
  v43 = v38;
  sub_10074FC74();
  sub_10000C620(v62);

  v44 = v57;
  sub_10074CD04();
  sub_10074CCE4();
  (*(v58 + 8))(v44, v59);
  swift_allocObject();
  v45 = sub_100750EF4();
  v74 = v39;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73 = v45;
  sub_10049F2B8(v35, v33, v63);
  v19 = v46;

  swift_unknownObjectRelease();

  sub_1001B6408(v63);
  sub_1001B645C(v76);
  sub_10000C8CC(v16, &unk_10092EE90);
  return v19;
}

uint64_t sub_1001B64B0()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10092BC60);
  sub_10000D0FC(v0, qword_10092BC60);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1001B6614(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v29 = a1;
  sub_100746F84();
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980A68);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_100750B04();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_100750B14();
  v25 = v3[1];
  v25(v5, v2);
  sub_100746FB4();
  if (qword_100920F28 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v6, qword_100980AC8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_100750B14();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_100747044();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v32);
  v15(v18, v5, v2);
  sub_100750B14();
  v16(v5, v2);
  sub_100746FC4();
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_10000D0FC(v24, qword_1009809C0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v32);
  v28(v21, v5, v2);
  sub_100750B14();
  v16(v5, v2);
  return sub_100747054();
}

char *sub_1001B6B00(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v83 = sub_100747064();
  v74 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v12;
  v13 = sub_100752AC4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074AB44();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *&v5[v24] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v25 = &v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_sizeCategory] = 7;
  v26 = &v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground] = v27;
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v28 = sub_100750534();
  v29 = sub_10000D0FC(v28, qword_100981848);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v78 = v30 + 16;
  v77 = v31;
  v31(v23, v29, v28);
  v32 = *(v30 + 56);
  v79 = v30 + 56;
  v80 = v28;
  v76 = v32;
  v32(v23, 0, 1, v28);
  (*(v18 + 104))(v20, enum case for DirectionalTextAlignment.none(_:), v17);
  v33 = objc_allocWithZone(sub_100745C84());
  v81 = v23;
  v34 = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] = v34;
  memset(v86, 0, 32);
  memset(v85, 0, sizeof(v85));
  v35 = v34;
  sub_100752A74();
  sub_10000C8CC(v85, &unk_100923520);
  sub_10000C8CC(v86, &unk_100923520);
  sub_100753C74();

  (*(v14 + 8))(v16, v13);
  v84.receiver = v5;
  v84.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v84, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v40 = v36;
  [v40 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground]];
  v41 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v42 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  v43 = [v40 traitCollection];
  sub_1001F4D8C(v43);

  v44 = qword_100920528;
  v45 = *&v40[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = v83;
  v47 = sub_10000D0FC(v83, qword_10092BC60);
  v48 = v74;
  v49 = *(v74 + 16);
  v50 = v82;
  v49(v82, v47, v46);
  v51 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v52 = v75;
  v49(v75, v50, v46);
  v53 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v48 + 24))(&v51[v53], v52, v46);
  swift_endAccess();
  [v51 setNeedsLayout];
  v54 = *(v48 + 8);
  v54(v52, v46);
  [v45 setNeedsLayout];

  v54(v50, v46);
  [*&v40[v41] setLayoutMargins:{2.0, 0.0, 3.0, 0.0}];
  v55 = qword_100920EE0;
  v56 = *(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = v80;
  v58 = sub_10000D0FC(v80, qword_1009809F0);
  v59 = v81;
  v60 = v77;
  v77(v81, v58, v57);
  v61 = v76;
  v76(v59, 0, 1, v57);
  sub_100745BA4();

  v62 = qword_100920F08;
  v63 = *(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_10000D0FC(v57, qword_100980A68);
  v60(v59, v64, v57);
  v61(v59, 0, 1, v57);
  sub_100745BA4();

  [*(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v41]];
  v65 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v40[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v65]];
  v66 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  [*&v40[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] setDelegate:v40];
  v67 = *&v40[v66];
  [v67 addTarget:v40 action:"handleTapWithGestureRecognizer:"];

  [v40 addGestureRecognizer:*&v40[v66]];
  v68 = [*&v40[v65] layer];
  [v68 setOpacity:0.0];

  v69 = [*&v40[v41] layer];
  LODWORD(v70) = 1.0;
  [v69 setOpacity:v70];

  return v40;
}

void sub_1001B74F4(char a1)
{
  if (a1)
  {
    v2 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
    v3 = sub_100753064();
    [v2 removeAnimationForKey:v3];

    v4 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
    v5 = sub_100753064();
    [v4 removeAnimationForKey:v5];
  }

  v6 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  [v6 setOpacity:0.0];

  v8 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
  LODWORD(v7) = 1.0;
  [v8 setOpacity:v7];
}

id sub_1001B7698()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001B7828(double a1, double a2)
{
  v5 = sub_1001B7960(1, a1, a2);
  v6 = sub_1001B7960(0, a1, a2);
  v7 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  v8 = sub_100753064();
  [v7 addAnimation:v5 forKey:v8];

  v9 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
  v10 = sub_100753064();
  [v9 addAnimation:v6 forKey:v10];
}

id sub_1001B7960(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = a3 + 0.3;
  v8 = a3 + 0.6;
  sub_100016C60(0, &qword_10092BE20);
  isa = sub_100753F94(v7 / v8).super.super.isa;
  v10 = sub_100753F94(0.3 / v8).super.super.isa;
  v11 = sub_100753064();
  v12 = [objc_opt_self() animationWithKeyPath:v11];

  v13 = v12;
  [v13 setRemovedOnCompletion:1];
  v14 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v13 setTimingFunction:v14];

  [v13 setBeginTime:CACurrentMediaTime() + a2];
  [v13 setDuration:v8];
  sub_10000C518(&unk_1009231A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A57A0;
  v16 = 0.0;
  *(v15 + 32) = sub_100753F94(0.0);
  *(v15 + 40) = v10;
  *(v15 + 48) = isa;
  v17 = v10;
  v18 = isa;
  *(v15 + 56) = sub_100753F94(1.0);
  v19 = sub_100753294().super.isa;

  [v13 setKeyTimes:v19];

  if (a1)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v16 = 1.0;
  }

  sub_10000C518(&unk_1009259C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A97A0;
  *(v21 + 56) = &type metadata for Double;
  *(v21 + 32) = v16;
  *(v21 + 88) = &type metadata for Double;
  *(v21 + 64) = v20;
  *(v21 + 120) = &type metadata for Double;
  *(v21 + 96) = v20;
  *(v21 + 152) = &type metadata for Double;
  *(v21 + 128) = v16;
  v22 = sub_100753294().super.isa;

  [v13 setValues:v22];

  [v13 setDelegate:v4];
  return v13;
}

void sub_1001B7D44(char *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v4 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  [v4 setHidden:0];
  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  [v6 setHidden:1];
  [v6 removeFromSuperview];
  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  [v1 addSubview:v8];
  v9 = *&a1[v3];
  *&a1[v3] = v6;
  v10 = v6;

  [a1 addSubview:v10];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v12 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v12 setHidden:0];
  [v12 removeFromSuperview];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v14 setHidden:1];
  [v14 removeFromSuperview];
  v15 = *&v1[v13];
  *&v1[v13] = v12;
  v16 = v12;

  [v1 addSubview:v16];
  v17 = *&a1[v11];
  *&a1[v11] = v14;
  v18 = v14;

  [a1 addSubview:v18];
  [a1 setNeedsLayout];
}

uint64_t sub_1001B8104()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v61 = sub_1007479B4();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v59 - v7;
  v8 = sub_100747064();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v59 - v14;
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground];
  [v1 bounds];
  [v16 setFrame:?];
  sub_1007477B4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v62 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  sub_1001F5A40(v15);
  [v25 layoutMargins];
  v27 = v26;
  v29 = v28;
  v30 = [v25 traitCollection];
  v31 = *(v9 + 16);
  v63 = v8;
  v31(v11, v15, v8);
  v32 = sub_100746FD4();
  if ((v34 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v35 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v35 = qword_10093FF58;
    }

    v36 = v61;
    v37 = sub_10000D0FC(v61, v35);
    v38 = v5;
    (*(v3 + 16))(v5, v37, v36);
    v39 = v60;
    (*(v3 + 32))(v60, v38, v36);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v3 + 8))(v39, v36);
  }

  sub_100746F14();
  v41 = v40;

  v42 = *(v9 + 8);
  v43 = v63;
  v42(v11, v63);

  v44 = v29 + v27 + v41;
  v42(v15, v43);
  v45 = *&v1[v62];
  v65.origin.x = v18;
  v65.origin.y = v20;
  v65.size.width = v22;
  v65.size.height = v24;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v18;
  v66.origin.y = v20;
  v66.size.width = v22;
  v66.size.height = v24;
  v47 = CGRectGetMidY(v66) - v44 * 0.5;
  v67.origin.x = v18;
  v67.origin.y = v20;
  v67.size.width = v22;
  v67.size.height = v24;
  [v45 setFrame:{MinX, v47, CGRectGetWidth(v67), v44}];

  v48 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] sizeThatFits:{v22, v24}];
  v50 = v49;
  v51 = *&v1[v48];
  v68.origin.x = v18;
  v68.origin.y = v20;
  v68.size.width = v22;
  v68.size.height = v24;
  v52 = CGRectGetMinX(v68);
  v69.origin.x = v18;
  v69.origin.y = v20;
  v69.size.width = v22;
  v69.size.height = v24;
  MinY = CGRectGetMinY(v69);
  v70.origin.x = v18;
  v70.origin.y = v20;
  v70.size.width = v22;
  v70.size.height = v24;
  v54 = MinY + (CGRectGetHeight(v70) - v50) * 0.5;
  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  [v51 setFrame:{v52, v54, CGRectGetWidth(v71), v50}];

  v55 = &v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v57 = *v55;
  if (*v55)
  {

    v57(v58);
    return sub_1000164A8(v57);
  }

  return result;
}

uint64_t sub_1001B89A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v201 = a6;
  v209 = a2;
  v11 = a5;
  v12 = sub_10074F314();
  __chkstk_darwin(v12 - 8);
  v200 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_100747064();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v197 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_10074F284();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_10074F964();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v190 = &v184 - v18;
  v213 = sub_10074ED34();
  v208 = *(v213 - 1);
  __chkstk_darwin(v213);
  v189 = &v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v212 = &v184 - v21;
  v22 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v22 - 8);
  v207 = &v184 - v23;
  v24 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v24 - 8);
  v206 = &v184 - v25;
  v26 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v26 - 8);
  v205 = &v184 - v27;
  v28 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v28 - 8);
  v204 = &v184 - v29;
  v30 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v30 - 8);
  v203 = &v184 - v31;
  v32 = sub_10074D734();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v202 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v35 - 8);
  v211 = &v184 - v36;
  v210 = sub_10074FB54();
  v216 = *(v210 - 8);
  __chkstk_darwin(v210);
  v188 = &v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v184 - v39;
  v41 = v7[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_sizeCategory];
  v7[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_sizeCategory] = a5;
  if (v11 == 7)
  {
    if (v41 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v7 setNeedsLayout];
    goto LABEL_6;
  }

  if (v41 == 7)
  {
    goto LABEL_5;
  }

  switch(v11)
  {
    case 6:
      if (v41 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v41 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v41 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v41 - 7) > 0xFFFFFFFC || v41 != v11)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v219 = a4;
  v42 = sub_10074FB24();
  [v7 setBackgroundColor:v42];

  v43 = [v7 traitCollection];
  if (v11 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v43 layoutDirection];
  sub_1007539B4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v7 setLayoutMargins:{v45, v47, v49, v51}];
  v214 = a1;
  v52 = sub_10074D434();
  v215 = v7;
  v217 = v52;
  v218 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v53 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  v54 = sub_10074FAF4();
  v55 = v54;
  v56 = *&v53[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v57 = *(v56 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor);
  *(v56 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor) = v54;
  if (v57)
  {
    sub_100016C60(0, &qword_100923500);
    v58 = v55;
    v57 = v57;
    v59 = sub_100753FC4();

    if (v59)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = v54;
  }

  sub_1005A3560();
  v58 = v55;
LABEL_13:

  v61 = v215;
  v62 = v218;
  v63 = *(*(*&v215[v218] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v64 = v219;
  v65 = sub_10074FAF4();
  [v63 setTextColor:v65];

  v66 = *(*(*(v61 + v62) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v67 = sub_10074FB34();
  [v66 setTextColor:v67];

  [*(*(*(v61 + v62) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:1];
  v68 = *(*(v61 + v62) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel);
  v69 = sub_10074FB34();
  [v68 setTextColor:v69];

  v70 = *(*(v61 + v62) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
  v71 = sub_10074FAF4();
  [v70 setTextColor:v71];

  v72 = v216;
  v73 = *(v216 + 16);
  v74 = v210;
  v187 = v216 + 16;
  v186 = v73;
  v73(v40, v64, v210);
  v76 = *(v72 + 88);
  v75 = v72 + 88;
  v185 = v76;
  v77 = v76(v40, v74);
  v184 = __PAIR64__(enum case for TodayCard.Style.automatic(_:), enum case for TodayCard.Style.white(_:));
  if (v77 == enum case for TodayCard.Style.automatic(_:) || v77 == enum case for TodayCard.Style.white(_:))
  {
    v78 = v218;
    [*(v61 + v218) setOverrideUserInterfaceStyle:{0, v184}];
    [*(*(*(v61 + v78) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) setTintColor:0];
  }

  else
  {
    if (v77 == enum case for TodayCard.Style.dark(_:))
    {
      v78 = v218;
      [*(v61 + v218) setOverrideUserInterfaceStyle:{2, v184}];
    }

    else
    {
      v78 = v218;
      if (v77 != enum case for TodayCard.Style.light(_:))
      {
        goto LABEL_81;
      }

      [*(v61 + v218) setOverrideUserInterfaceStyle:{1, v184}];
    }

    v79 = *(*(*(v61 + v78) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
    v80 = sub_10074FAF4();
    [v79 setTintColor:v80];
  }

  v216 = v75;
  v81 = *(v61 + v78);
  v82 = *(v33 + 104);
  v82(v202, enum case for OfferButtonPresenterViewAlignment.right(_:), v32);
  v83 = v203;
  v82(v203, enum case for OfferButtonPresenterViewAlignment.left(_:), v32);
  (*(v33 + 56))(v83, 0, 1, v32);
  sub_1001BB1A8(&unk_100925550, 255, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v84 = v81;
  v85 = v211;
  sub_10074A9C4();
  v86 = sub_10000C518(&unk_10092EEA0);
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = *&v84[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView];
  v88 = sub_10074EF24();
  if (v88)
  {
  }

  [v87 setHidden:v88 == 0];
  v89 = *&v84[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v90 = sub_100742E24();
  v91 = v204;
  (*(*(v90 - 8) + 56))(v204, 1, 1, v90);
  v92 = sub_100745E94();
  v93 = v205;
  (*(*(v92 - 8) + 56))(v205, 1, 1, v92);
  v94 = sub_10000C518(&unk_100925560);
  v95 = v206;
  (*(*(v94 - 8) + 56))(v206, 1, 1, v94);
  v96 = sub_10074F8B4();
  v97 = v207;
  (*(*(v96 - 8) + 56))(v207, 1, 1, v96);
  sub_100656038(v217, v89, v85, v209, 1, 0, v91, v93, v97, v95);
  sub_10000C8CC(v97, &unk_100925520);
  v89[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1001CE71C();
  [v89 setNeedsLayout];
  sub_10000C8CC(v95, &unk_100925990);
  sub_10000C8CC(v93, &unk_1009259A0);
  sub_10000C8CC(v91, &unk_100925530);
  v98 = v212;
  sub_10074EF44();
  v99 = sub_10074EE24();
  v101 = v100;
  v207 = sub_10074EE84();
  v103 = v102;
  v104 = sub_10074EE44();
  if (v101 && v103)
  {
    v105 = v104;
    v106 = v98;
    v107 = v208;
    v108 = v189;
    (*(v208 + 16))(v189, v106, v213);
    sub_10000C518(&unk_100925780);
    sub_100752764();
    sub_100752D34();
    v110 = aBlock;
    v109 = v221;
    type metadata accessor for CrossLinkPresenter();
    swift_allocObject();
    v111 = v84;
    v112 = v99;
    v113 = v111;
    v183 = v110;
    v61 = v215;
    v114 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v108, v112, v101, v207, v103, v105 & 1, v84, &off_10086C378, v183, v109);
    (*(v107 + 8))(v212, v213);
    sub_10000C8CC(v211, &unk_100925540);
    v115 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v113[v115] = v114;

    v116 = v219;

    v117 = &unk_10092D000;
    v118 = &selRef_initWithTitle_style_target_action_;
  }

  else
  {

    v119 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v84[v119] = 0;

    sub_1001F6890(0, 0);

    (*(v208 + 8))(v98, v213);
    sub_10000C8CC(v85, &unk_100925540);
    v117 = &unk_10092D000;
    v118 = &selRef_initWithTitle_style_target_action_;
    v116 = v219;
  }

  v120 = v218;
  v121 = *(*(v61 + v218) + v117[305]);
  v122 = *(v121 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v122)
  {
    v123 = v122;
    v124 = sub_10074FB34();
    [v123 v118[107]];

    v121 = *(*&v120[v61] + v117[305]);
  }

  v125 = &OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
  v126 = *(v121 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (!v126)
  {
    goto LABEL_39;
  }

  v127 = v126;
  v128 = sub_10074FB34();
  [v127 v118[107]];

  v129 = *(*(*&v120[v61] + v117[305]) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (!v129)
  {
    goto LABEL_39;
  }

  v130 = qword_100920F28;
  isEscapingClosureAtFileLocation = v129;
  if (v130 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v132 = sub_100750534();
    v133 = sub_10000D0FC(v132, qword_100980AC8);
    v134 = *(v132 - 8);
    v135 = v190;
    (*(v134 + 16))(v190, v133, v132);
    (*(v134 + 56))(v135, 0, 1, v132);
    sub_100745BA4();

    v136 = *(*(*&v120[v61] + v117[305]) + *v125);
    v118 = &selRef_initWithTitle_style_target_action_;
    if (v136)
    {
      [v136 setAccessibilityIgnoresInvertColors:1];
    }

LABEL_39:
    v137 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
    v138 = *(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel);
    v139 = sub_10074FAF4();
    [v138 v118[107]];

    if (!sub_10074D444())
    {
      break;
    }

    v212 = *(v61 + v137);
    v140 = sub_10074F914();
    v141 = [v61 traitCollection];
    v61 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v140];
    v213 = [v140 length];
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = v141;
    v117[4] = v61;
    *(v117 + 40) = 1;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_100047814;
    *(v142 + 24) = v117;
    v224 = sub_1000B18A8;
    v225 = v142;
    aBlock = _NSConcreteStackBlock;
    v221 = 1107296256;
    v222 = sub_100047044;
    v223 = &unk_10086B6C8;
    v116 = _Block_copy(&aBlock);
    v125 = v141;
    v120 = v61;

    [v140 enumerateAttributesInRange:0 options:v213 usingBlock:{0x100000, v116}];

    _Block_release(v116);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v143 = v212;
      [v212 setAttributedText:v120];

      v61 = v215;
      v144 = *&v215[v137];
      v145 = v191;
      sub_10074F974();
      v146 = v192;
      v147 = v193;
      v148 = (*(v192 + 88))(v145, v193);
      if (v148 == enum case for Paragraph.Alignment.left(_:))
      {
        v149 = 0;
        v120 = v218;
        v116 = v219;
      }

      else
      {
        v120 = v218;
        v116 = v219;
        if (v148 == enum case for Paragraph.Alignment.center(_:))
        {
          v149 = 1;
        }

        else if (v148 == enum case for Paragraph.Alignment.right(_:))
        {
          v149 = 2;
        }

        else if (v148 == enum case for Paragraph.Alignment.justified(_:))
        {
          v149 = 3;
        }

        else if (v148 == enum case for Paragraph.Alignment.localized(_:))
        {
          v149 = 4;
        }

        else
        {
          (*(v146 + 8))(v145, v147);
          v149 = 0;
        }
      }

      [v144 setTextAlignment:v149];

      [v61 setNeedsLayout];
      if ((*(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_isExpanded) & 1) == 0)
      {
        sub_1001B7828(3.0, 5.0);
      }

      break;
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  sub_10074D434();
  v150 = sub_10074EF24();

  if (v150)
  {
    v151 = v194;
    sub_10074F294();
    v152 = sub_10074F254();
    (*(v195 + 8))(v151, v196);
    v153 = *(*&v120[v61] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
    v154 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v155 = v198;
    v156 = v153 + v154;
    v157 = v197;
    v158 = v199;
    (*(v198 + 16))(v197, v156, v199);
    sub_100746F34();
    (*(v155 + 8))(v157, v158);
    sub_10074F374();
    v159 = *(*&v120[v61] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v159 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    [*(*&v120[v61] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView) setContentMode:v152];
    v160 = *(*&v120[v61] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    sub_1007433C4();
    sub_1001BB1A8(&qword_100925570, 255, &type metadata accessor for ArtworkView);
    v161 = v160;
    sub_100744204();

    v162 = sub_10074F1E4();
    if (v162 && (v163 = v162, [v162 _luminance], v165 = v164, v163, v165 >= 0.54))
    {
      v166 = objc_opt_self();
      v167 = v165 < 0.89;
    }

    else
    {
      v166 = objc_opt_self();
      v167 = 2;
    }

    v168 = [v166 effectWithBrightness:v167];
    v169 = sub_10074D424();
    [v168 setBackgroundColorForReducedTransparency:v169];

    v170 = *(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10000C518(&unk_1009231A0);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_1007A5CF0;
    *(v171 + 32) = v168;
    sub_100016C60(0, &qword_10092BE10);
    isa = sub_100753294().super.isa;

    [v170 setBackgroundEffects:isa];

    goto LABEL_78;
  }

  v173 = v188;
  v174 = v210;
  v186(v188, v116, v210);
  v175 = v185(v173, v174);
  if (v175 == HIDWORD(v184) || v175 == v184)
  {
    v170 = *(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    [v170 setHidden:1];
LABEL_78:
    [v170 setHidden:sub_10074D414() & 1];
  }

  if (v175 == enum case for TodayCard.Style.dark(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:2];
LABEL_77:
    v177 = v176;
    v178 = sub_10074D424();
    [v177 setBackgroundColorForReducedTransparency:v178];

    v170 = *(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10000C518(&unk_1009231A0);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_1007A5CF0;
    *(v179 + 32) = v177;
    sub_100016C60(0, &qword_10092BE10);
    v180 = v177;
    v181 = sub_100753294().super.isa;

    [v170 setBackgroundEffects:v181];

    goto LABEL_78;
  }

  if (v175 == enum case for TodayCard.Style.light(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:0];
    goto LABEL_77;
  }

LABEL_81:
  aBlock = 0;
  v221 = 0xE000000000000000;
  sub_100754534(44);

  aBlock = 0xD00000000000002ALL;
  v221 = 0x800000010076F550;
  v226._countAndFlagsBits = sub_10074FB44();
  sub_1007531B4(v226);

  result = sub_100754644();
  __break(1u);
  return result;
}

void sub_1001BA620()
{
  v1 = v0;
  v2 = sub_10074F314();
  v3 = __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  (*(v7 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Artwork.Style.unspecified(_:), v3);
  v8 = v6;
  sub_100743364();

  v9 = *(*(v0 + v5) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_100743384(v14, v10);

  v11 = *(*(v1 + v5) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  sub_1007433C4();
  sub_1001BB1A8(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v12 = v11;
  sub_100744274();
}

void sub_1001BA7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v24);
      sub_10000C518(&qword_1009242A0);
      sub_10074FBB4();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10074FBA4(), , v13))
      {
        sub_10074D454();
        if (swift_dynamicCastClass())
        {
          sub_10074D434();
          sub_10074EE94();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10000C8CC(v6, &unk_100925380);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_100749544();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1001BAB28(char *a1, char a2)
{
  if (a2)
  {
    sub_1001B7D44(a1);
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_1001BAB60(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000164A8(v4);
}

double sub_1001BABAC()
{
  v1 = sub_100747064();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_100746F34();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_1001BAD30()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1001BAD90(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_1001BAE28()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_1001BAE84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_1001BAF44(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_1001BB318;
}

void sub_1001BB010()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v3 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  sub_100743204();

  v4 = *(*(v1 + v2) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  sub_1007433C4();
  sub_1001BB1A8(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100744274();
}

uint64_t sub_1001BB104(uint64_t a1, uint64_t a2)
{
  result = sub_1001BB1A8(&qword_10092BD50, a2, type metadata accessor for TodayCardMarketingLockupOverlayView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001BB1A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001BB1F0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1001BB248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BB260()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001BB298()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001BB2D0()
{

  sub_10000C620(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1001BB324()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_sizeCategory) = 7;
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_100754644();
  __break(1u);
}

BOOL sub_1001BB40C(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
    }

    sub_100016C60(0, &qword_100922300);
    v8 = v7;
    v9 = v2;
    v10 = sub_100753FC4();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
  }

  else
  {

    return 0;
  }
}

char *sub_1001BB544(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074AB44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100928A40);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_metrics];
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = 0;
  *(v22 + 8) = &type metadata for CGFloat;
  *(v22 + 9) = &protocol witness table for CGFloat;
  *(v22 + 5) = 0;
  v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v21 = UIFontTextStyleBody;
  *(v21 + 2) = 0;
  (*(v11 + 104))(v21, enum case for FontUseCase.preferredFont(_:), v10, v19);
  (*(v11 + 56))(v21, 0, 1, v10);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  objc_allocWithZone(sub_100745C84());
  v24 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel] = sub_100745C74();
  type metadata accessor for HeaderButton();
  if (qword_100920EA0 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v10, qword_100980930);
  (*(v11 + 16))(v13, v25, v10);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton] = sub_1007466B4();
  v26 = type metadata accessor for SearchHeadingView();
  v36.receiver = v5;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel]];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton;
  v33 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton];
  sub_100747764();

  [*&v31[v32] addTarget:v31 action:"didPressWithDetailButton:" forControlEvents:64];
  [v31 addSubview:*&v31[v32]];
  sub_10000C518(&unk_1009249D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007A5A00;
  *(v34 + 32) = sub_100751554();
  *(v34 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_1001BBA8C(uint64_t a1)
{
  v3 = sub_100750534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10092BE70);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  v27 = v1;
  v26[1] = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel];
  sub_100745B94();
  v20 = *(v8 + 56);
  sub_10006A0D4(v19, v10);
  v28 = a1;
  sub_10006A0D4(a1, &v10[v20]);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) != 1)
  {
    sub_10006A0D4(v10, v16);
    if (v21(&v10[v20], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v20], v3);
      sub_1001BDBD8(&qword_10092BE78, &type metadata accessor for FontUseCase);
      v24 = sub_100753014();
      v25 = *(v4 + 8);
      v25(v6, v3);
      sub_10000C8CC(v19, &unk_100928A40);
      v25(v16, v3);
      sub_10000C8CC(v10, &unk_100928A40);
      v22 = v28;
      if (v24)
      {
        return sub_10000C8CC(v22, &unk_100928A40);
      }

      goto LABEL_7;
    }

    sub_10000C8CC(v19, &unk_100928A40);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_10000C8CC(v10, &qword_10092BE70);
    v22 = v28;
LABEL_7:
    sub_10006A0D4(v22, v13);
    sub_100745BA4();
    [v27 setNeedsLayout];
    return sub_10000C8CC(v22, &unk_100928A40);
  }

  sub_10000C8CC(v19, &unk_100928A40);
  if (v21(&v10[v20], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10000C8CC(v10, &unk_100928A40);
  v22 = v28;
  return sub_10000C8CC(v22, &unk_100928A40);
}

uint64_t sub_1001BBE78()
{
  v1 = sub_100750354();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHeadingView();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1001BD96C(&v0[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_metrics], v11);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton];
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel];
  v13 = &protocol witness table for UIView;
  v14 = v6;
  v15 = &protocol witness table for UIView;
  v7 = v12;
  v8 = v6;
  sub_1007477B4();
  sub_1001BC7AC(v7, &protocol witness table for UIView, v8, &protocol witness table for UIView, v11, v0, v10);
  sub_10000C888(v10, v10[3]);
  sub_100751124();
  (*(v2 + 8))(v4, v1);
  sub_10000C620(v10);
  return sub_1001BDB68(v11);
}

uint64_t SearchHeadingLayout.placeChildren(relativeTo:in:)(void *a1)
{
  sub_1001BC7AC(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), v1, a1, v3);
  sub_10000C888(v3, v3[3]);
  sub_100751124();
  return sub_10000C620(v3);
}

double sub_1001BC148(void *a1)
{
  sub_1001BD96C(v1 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_metrics, v8);
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton);
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel);
  v10 = &protocol witness table for UIView;
  v11 = v3;
  v12 = &protocol witness table for UIView;
  sub_1001BC7AC(v9, &protocol witness table for UIView, v3, &protocol witness table for UIView, v8, a1, v7);
  sub_10000C888(v7, v7[3]);
  sub_100750404();
  v5 = v4;
  sub_10000C620(v7);
  sub_1001BDB68(v8);
  return v5;
}

double SearchHeadingLayout.measurements(fitting:in:)(void *a1)
{
  sub_1001BC7AC(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), v1, a1, v5);
  sub_10000C888(v5, v5[3]);
  sub_100750404();
  v3 = v2;
  sub_10000C620(v5);
  return v3;
}

double sub_1001BC398(void *a1, double a2, double a3, uint64_t a4, NSString a5)
{
  v8 = [a1 traitCollection];
  if (qword_1009202A0 != -1)
  {
    swift_once();
  }

  v9 = qword_100928AB8;
  if (a5)
  {
    a5 = sub_100753064();
  }

  [v9 setTitle:a5 forState:0];

  [v9 setImage:0 forState:0];
  v10 = [v9 titleLabel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v12 font];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];
    }

    else
    {
      v15 = 0;
    }

    [v12 setFont:v15];
  }

  [v9 sizeThatFits:{a2, a3}];
  v17 = v16;

  [v9 setTitle:0 forState:0];
  [v9 setImage:0 forState:0];

  return v17 + 0.0;
}

double sub_1001BC56C(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(void, void))
{
  v8 = *(a4 + 8);
  sub_1001BD96C(a2, v13);
  v14 = a3;
  v15 = v8;
  v16 = a5;
  v17 = &protocol witness table for LayoutViewPlaceholder;
  swift_unknownObjectRetain();

  sub_1001BC7AC(a3, v8, a5, &protocol witness table for LayoutViewPlaceholder, v13, a1, v12);
  sub_10000C888(v12, v12[3]);
  sub_100750404();
  v10 = v9;
  sub_10000C620(v12);
  sub_1001BDB68(v13);
  return v10;
}

id sub_1001BC6FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHeadingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001BC7AC@<X0>(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v127 = a5;
  v125 = a4;
  v126 = a3;
  v119 = a2;
  v124 = a1;
  v128 = a7;
  v8 = sub_10074B454();
  v137 = *(v8 - 8);
  __chkstk_darwin(v8);
  v121 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10074B464();
  v136 = *(v114 - 8);
  __chkstk_darwin(v114);
  v122 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = sub_10074B434();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v117 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10074B4A4();
  v132 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_10074B494();
  v130 = *(v115 - 8);
  __chkstk_darwin(v115);
  v107 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10074B484();
  v133 = *(v118 - 8);
  __chkstk_darwin(v118);
  v113 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10074B4C4();
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v95 - v17;
  v18 = sub_100750CB4();
  v109 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100750CC4();
  v129 = *(v108 - 1);
  __chkstk_darwin(v108);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100750C64();
  v24 = *(v23 - 8);
  *&v25 = __chkstk_darwin(v23).n128_u64[0];
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a6 traitCollection];
  v29 = sub_100753804();

  if (v29)
  {
    sub_10000C518(&unk_100923060);
    v30 = *(sub_100750CF4() - 8);
    v135 = *(v30 + 72);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007A6580;
    v136 = v32;
    v137 = v32 + v31;
    v33 = v124;
    ObjectType = swift_getObjectType();
    v146 = v119;
    v144 = v33;
    *(&v142 + 1) = &type metadata for CGFloat;
    v143 = &protocol witness table for CGFloat;
    *&v141 = 0;
    v140 = 0;
    memset(v139, 0, sizeof(v139));
    v112 = v24;
    v34 = *(v24 + 13);
    v123 = (v24 + 104);
    v134 = v34;
    v106 = v23;
    (v34)(v27, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v23);
    LODWORD(v133) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v35 = v129;
    v132 = *(v129 + 104);
    v36 = v108;
    (v132)(v22);
    v138 = _swiftEmptyArrayStorage;
    v131 = sub_1001BDBD8(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    swift_unknownObjectRetain();
    v130 = sub_10000C518(&unk_100944F40);
    v124 = sub_100016BFC();
    sub_1007543A4();
    sub_100750CE4();
    v122 = *(v109 + 8);
    v122(v20, v18);
    v121 = *(v35 + 8);
    v129 = v35 + 8;
    (v121)(v22, v36);
    v37 = *(v112 + 1);
    v112 += 8;
    v120 = v37;
    v38 = v18;
    v39 = v106;
    (v37)(v27, v106);
    sub_10000C8CC(v139, &qword_100931390);
    sub_10000C620(&v141);
    sub_10000C620(&v144);
    v40 = v126;
    ObjectType = swift_getObjectType();
    v146 = v125;
    v144 = v40;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    (v134)(v27, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v39);
    (v132)(v22, v133, v36);
    *&v139[0] = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_1007543A4();
    sub_100750CE4();
    v122(v20, v38);
    (v121)(v22, v36);
    (v120)(v27, v39);
    sub_10000C8CC(&v141, &qword_100931390);
    sub_10000C620(&v144);
    v41 = sub_100750D04();
    v42 = v128;
    v128[3] = v41;
    v42[4] = &protocol witness table for VerticalFlowLayout;
    v42[5] = &protocol witness table for VerticalFlowLayout;
    sub_10000D134(v42);
    return sub_100750CD4();
  }

  else
  {
    ObjectType = &type metadata for CGFloat;
    v146 = &protocol witness table for CGFloat;
    v144 = 0;
    v44 = v130;
    v101 = *(v130 + 104);
    v129 = v130 + 104;
    v45 = v107;
    v46 = v115;
    v101(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v115);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v48 = v110;
    *v110 = v47;
    v49 = v8;
    v50 = v132;
    v51 = *(v132 + 104);
    v109 = v132 + 104;
    v112 = v51;
    v52 = v116;
    (v51)(v48, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v116);
    sub_10074B474();
    v53 = *(v50 + 8);
    v132 = v50 + 8;
    v108 = v53;
    (v53)(v48, v52);
    v54 = *(v44 + 8);
    v130 = v44 + 8;
    v106 = v54;
    v54(v45, v46);
    *(&v142 + 1) = &type metadata for Double;
    v143 = &protocol witness table for Double;
    *&v141 = 0;
    v55 = v134;
    v56 = v134[13];
    v104 = (v134 + 13);
    v105 = v56;
    v57 = v117;
    v56(v117, enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:), v135);
    v58 = v136;
    v59 = v137;
    v60 = *(v137 + 104);
    v102 = v137 + 104;
    v103 = v60;
    v61 = v121;
    v96 = v49;
    v60(v121, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:), v49);
    v62 = v122;
    sub_10074B444();
    v63 = *(v59 + 8);
    v137 = v59 + 8;
    v100 = v63;
    v63(v61, v49);
    v64 = v113;
    sub_10074B4B4();
    v65 = *(v58 + 8);
    v136 = v58 + 8;
    v124 = v65;
    v65(v62, v114);
    v66 = v55[1];
    v134 = v55 + 1;
    v119 = v66;
    v66(v57, v135);
    v67 = *(v133 + 8);
    v133 += 8;
    v99 = v67;
    v68 = v64;
    v67(v64, v118);
    sub_10000C620(&v141);
    sub_10000C620(&v144);
    v69 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:);
    v70 = v115;
    v71 = v101;
    v101(v45, enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:), v115);
    v72 = sub_10000C518(&qword_10092BE80);
    v73 = swift_allocBox();
    v75 = v74;
    v76 = *(v72 + 48);
    v97 = v120[2];
    v98 = (v120 + 2);
    v97(v74, v131, v123);
    v71(v75 + v76, v69, v70);
    *v48 = v73;
    v77 = v116;
    (v112)(v48, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v116);
    sub_10074B474();
    (v108)(v48, v77);
    v106(v45, v70);
    v78 = v117;
    v79 = v135;
    v105(v117, enum case for HorizontalAlignmentLayout.HorizontalGravity.trailing(_:), v135);
    v80 = v121;
    v81 = v96;
    v103(v121, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.high(_:), v96);
    v82 = v122;
    sub_10074B444();
    v100(v80, v81);
    v146 = &protocol witness table for Double;
    ObjectType = &type metadata for Double;
    v144 = 0;
    v83 = v111;
    sub_10074B4B4();
    v124(v82, v114);
    v119(v78, v79);
    v99(v68, v118);
    sub_10000C620(&v144);
    sub_10000C518(&qword_10092BE88);
    v84 = v120;
    v85 = v120[9];
    v86 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1007A6580;
    v88 = v87 + v86;
    v89 = v131;
    v90 = v123;
    v91 = v97;
    v97(v88, v131, v123);
    v91(v88 + v85, v83, v90);
    v92 = sub_10074B4E4();
    v93 = v128;
    v128[3] = v92;
    v93[4] = sub_1001BDBD8(&qword_10092BE90, &type metadata accessor for HorizontalAlignmentLayout);
    v93[5] = sub_1001BDBD8(&qword_10092BE98, &type metadata accessor for HorizontalAlignmentLayout);
    sub_10000D134(v93);
    sub_10074B4D4();
    v94 = v84[1];
    v94(v83, v90);
    return (v94)(v89, v90);
  }
}

__n128 sub_1001BD9C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1001BD9EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001BDA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001BDAA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001BDABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001BDB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001BDBD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001BDC20()
{
  sub_10000C4F0(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1001BDCB0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746994();
  v11 = sub_100741784();
  (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      if (a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = a1;
        v17 = v15(ObjectType, v13);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = [Strong view];

          if (!v20)
          {
            __break(1u);
            goto LABEL_19;
          }

          v21 = [v20 safeAreaLayoutGuide];

          [v21 layoutFrame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v50.origin.x = v23;
          v50.origin.y = v25;
          v50.size.width = v27;
          v50.size.height = v29;
          MinY = CGRectGetMinY(v50);
        }

        else
        {
          MinY = 0.0;
        }

        v31 = v17 - MinY;
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          v34 = *(v4 + 24);
          v35 = swift_getObjectType();
          v36 = (*(v34 + 8))(v35, v34);

          if (v36)
          {
            sub_100430C6C(a3, v31);
          }
        }

        v37 = swift_unknownObjectWeakLoadStrong();
        if (!v37)
        {
          v38 = v16;
          goto LABEL_16;
        }

        v38 = v37;
        v39 = [v37 collectionView];
        if (v39)
        {
          v40 = v39;
          [v39 _pocketInsets];
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = [v38 collectionView];
          if (v47)
          {
            v48 = v47;
            [v47 _setPocketInsets:{v31, v42, v44, v46}];

LABEL_16:
            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }
}

uint64_t sub_1001BDFA4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A704();
  sub_100039C50(v4, qword_10097E350);
  v30 = sub_10000D0FC(v4, qword_10097E350);
  v40[8] = &type metadata for Double;
  v40[9] = &protocol witness table for Double;
  v40[5] = 0x4030000000000000;
  if (qword_100921200 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981338);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_100750B04();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_100921208 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v5, qword_100981350);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_10000D134(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_100750B14();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_10000D134(v34);
  v32 = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v31);
  v18(v20, v3, v0);
  sub_100750B14();
  v19(v3, v0);
  v33 = &protocol witness table for Double;
  v32 = &type metadata for Double;
  v31[0] = 0;
  return sub_10074A6E4();
}

uint64_t sub_1001BE42C()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10092BF60);
  sub_10000D0FC(v0, qword_10092BF60);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_1001BE4C8()
{
  v0 = [objc_opt_self() systemFontOfSize:30.0];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_10092BF78 = v1;
}

char *sub_1001BE540(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconPositioningView;
  *&v5[v23] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel;
  if (qword_100921200 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v10, qword_100981338);
  v26 = *(v11 + 16);
  v26(v19, v25, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v27 = objc_allocWithZone(sub_100745C84());
  *&v5[v24] = sub_100745C74();
  v28 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel;
  if (qword_100921208 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v10, qword_100981350);
  v30 = v49;
  v26(v49, v29, v10);
  v31 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v28] = sub_10004DA8C(v30, 0, 0);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon] = 0;
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v34 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView;
  [*&v32[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView] setContentMode:1];
  [*&v32[v34] setAccessibilityIgnoresInvertColors:1];
  v35 = qword_100920540;
  v36 = *&v32[v34];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setPreferredSymbolConfiguration:qword_10092BF78];

  v37 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel;
  v38 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemGrayColor];
  [v40 setTextColor:v41];

  v42 = qword_100920538;
  v43 = *&v32[v37];
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v44, qword_10092BF60);
  v51 = v32;
  sub_100743464();

  sub_100753F54();
  v45 = [v32 contentView];
  [v45 addSubview:*&v32[v34]];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel]];

  v47 = [v32 contentView];
  [v47 addSubview:*&v32[v37]];

  return v32;
}

uint64_t sub_1001BEBE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37 = sub_100750354();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10074A724();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v34 - v12;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutSubviews", v11);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon];
  v15 = qword_100920530;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v6, qword_10097E350);
  v38 = v7;
  v17 = *(v7 + 16);
  v17(v13, v16, v6);
  if (v14)
  {
    v18 = qword_100920540;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_100743AC4();
    if (v19)
    {
      v20 = v19;
      [v19 size];
    }
  }

  sub_10074A6F4();

  v17(v9, v13, v6);
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconPositioningView];
  v49 = sub_100016C60(0, &qword_100922300);
  v50 = &protocol witness table for UIView;
  v48 = v21;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel];
  v46 = sub_100016C60(0, &qword_1009236D0);
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel();
  v44 = &protocol witness table for UIView;
  v42 = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;
  v27 = v39;
  sub_10074A714();
  v28 = [v1 contentView];
  sub_1007477B4();

  sub_10074A6D4();
  (*(v36 + 8))(v4, v37);
  if (!*&v1[v35])
  {
    goto LABEL_16;
  }

  v29 = qword_100920540;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_100743AC4();
  if (!v30)
  {

LABEL_16:
    v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView];
    [v31 frame];
    [v31 setFrame:?];
    goto LABEL_17;
  }

  v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView];
  v32 = v30;
  [v30 size];
  [v31 frame];
  [v31 setFrame:?];

LABEL_17:
  [v24 center];
  [v31 setCenter:?];
  (*(v40 + 8))(v27, v41);
  return (*(v38 + 8))(v13, v6);
}

uint64_t sub_1001BF220()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView] setImage:0];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon] = 0;
}

id sub_1001BF30C(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100920538 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_10092BF60);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

uint64_t type metadata accessor for ProductCapabilityCell()
{
  result = qword_10092BFA8;
  if (!qword_10092BFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BF5AC()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001BF65C()
{
  sub_100016C60(0, &qword_10092BFC0);
  sub_1000F04A0();
  return sub_100744274();
}

double sub_1001BF6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v52 = a4;
  v50 = a3;
  v48 = a1;
  v60 = sub_10074A724();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_10074A704();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v55 = &v44[-v9];
  v10 = sub_10074CD14();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v44[-v14];
  v51 = sub_100750F34();
  v53 = sub_100750F24();
  v16 = sub_100016C60(0, &qword_100923AB0);
  v17 = qword_100921200;

  if (v17 != -1)
  {
    swift_once();
  }

  v46 = sub_100750534();
  sub_10000D0FC(v46, qword_100981338);
  v61 = a5;
  v18 = [a5 traitCollection];
  v47 = v16;
  sub_100753C14();

  v19 = sub_10074F3F4();
  v70[3] = v19;
  v20 = sub_1001BFEF8(&qword_10092AC70, &type metadata accessor for Feature);
  v70[4] = v20;
  v21 = sub_10000D134(v70);
  v22 = *(*(v19 - 8) + 104);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v22(v21);
  sub_10074FC74();
  sub_10000C620(v70);
  sub_10074CD04();
  sub_10074CCE4();
  v23 = *(v11 + 8);
  v23(v15, v10);
  if (v50)
  {
    v48 = sub_100743E84();
  }

  else
  {
    v48 = 0;
  }

  v50 = v10;
  if (qword_100921208 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v46, qword_100981350);
  v24 = [v61 traitCollection];
  sub_100753C14();

  v68 = v19;
  v69 = v20;
  v25 = sub_10000D134(&v67);
  (v22)(v25, v45, v19);
  sub_10074FC74();
  sub_10000C620(&v67);
  v26 = v49;
  sub_10074CD04();
  sub_10074CCE4();
  v23(v26, v50);
  if (qword_100920530 != -1)
  {
    swift_once();
  }

  v27 = v58;
  v28 = sub_10000D0FC(v58, qword_10097E350);
  v29 = v56;
  v30 = *(v56 + 16);
  v31 = v55;
  v30(v55, v28, v27);
  if (v52)
  {
    v32 = qword_100920540;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = sub_100743AC4();
    if (v33)
    {
      v34 = v33;
      [v33 size];
    }
  }

  sub_10074A6F4();
  v30(v54, v31, v27);
  v65 = v51;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v53;
  sub_10000C824(v70, v63);
  v35 = v68;
  v36 = v69;
  v37 = sub_10000C888(&v67, v68);
  v62[3] = v35;
  v62[4] = *(v36 + 8);
  v38 = sub_10000D134(v62);
  (*(*(v35 - 8) + 16))(v38, v37, v35);

  v39 = v57;
  sub_10074A714();
  sub_1001BFEF8(&qword_10092BFD0, &type metadata accessor for ProductCapabilityLayout);
  v40 = v60;
  sub_100750404();
  v42 = v41;

  (*(v59 + 8))(v39, v40);
  (*(v29 + 8))(v31, v27);
  sub_10000C620(v70);
  sub_10000C620(&v67);
  return v42;
}

uint64_t sub_1001BFEF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001BFF40()
{
  v1 = v0;
  v2 = sub_100750534();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_itemLayoutContext;
  v13 = sub_1007469A4();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconPositioningView;
  *(v1 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel;
  if (qword_100921200 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v2, qword_100981338);
  v18 = *(v3 + 16);
  v18(v11, v17, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = objc_allocWithZone(sub_100745C84());
  *(v1 + v16) = sub_100745C74();
  v20 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel;
  if (qword_100921208 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v2, qword_100981350);
  v22 = v25;
  v18(v25, v21, v2);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(v1 + v20) = sub_10004DA8C(v22, 0, 0);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon) = 0;
  sub_100754644();
  __break(1u);
}

char *sub_1001C0320(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100981AD0);
  v25 = *(v23 - 8);
  v63 = *(v25 + 16);
  v64 = v24;
  v63(v19);
  v62 = *(v25 + 56);
  v62(v19, 0, 1, v23);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v26 = objc_allocWithZone(sub_100745C84());
  *&v5[v22] = sub_100745C74();
  v27 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView;
  sub_100743034();
  *&v5[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_100746ED4();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_hasArtwork] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_clickAction] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer] = 0;
  v30 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView;
  sub_1007433C4();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  ObjectType = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  v33 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView];
  sub_100016C60(0, &qword_100923500);
  v34 = v32;
  v35 = v33;
  v36 = sub_100753E94();
  [v35 setBackgroundColor:v36];

  v60 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView;
  v37 = qword_100920478;
  v38 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView];
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_10074F0C4();
  v40 = sub_10000D0FC(v39, qword_10097E128);
  v41 = *(v39 - 8);
  (*(v41 + 16))(v12, v40, v39);
  (*(v41 + 56))(v12, 0, 1, v39);
  sub_100743014();

  v42 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel] setNumberOfLines:1];
  v43 = *&v34[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  v47 = *&v34[v42];
  (v63)(v19, v64, v23);
  v62(v19, 0, 1, v23);
  v48 = v47;
  sub_100745BA4();

  v49 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView;
  v50 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
  v51 = [v44 clearColor];
  sub_100743264();

  v52 = [v34 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v34 contentView];
  [v53 addSubview:*&v34[v60]];

  v54 = [v34 contentView];
  [v54 addSubview:*(ObjectType + v32)];

  v55 = [v34 contentView];
  [v55 addSubview:*&v34[v49]];

  v56 = [v34 contentView];
  [v56 addSubview:*&v34[v42]];

  sub_10000C518(&unk_1009249D0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1007A5620;
  *(v57 + 32) = sub_100751544();
  *(v57 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v57 + 48) = sub_1007519E4();
  *(v57 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v57 + 64) = sub_100751624();
  *(v57 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D24();

  swift_unknownObjectRelease();

  return v34;
}

double sub_1001C0AFC()
{
  v1 = v0;
  v2 = sub_10074A7B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v15 - v8;
  v10 = [v0 traitCollection];
  v11 = v1[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_100753804())
  {
    sub_1001C1510(v10, v5);
  }

  else if (v11)
  {
    sub_1001C1848();
  }

  else
  {
    sub_1001C18E8();
  }

  (*(v3 + 32))(v9, v5, v2);
  sub_10074A794();
  v13 = v12;
  (*(v3 + 8))(v9, v2);
  return v13;
}

uint64_t sub_1001C0C9C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100743584();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v5);
  sub_1001C0F00(v16);
  sub_10000C888(v16, v16[3]);
  [v1 bounds];
  v8 = [v1 traitCollection];
  sub_100751244();

  sub_10000C620(v16);
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView];
  [v1 bounds];
  [v9 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView];
  [v1 bounds];
  [v10 setFrame:?];
  [v1 bounds];
  CGRectGetHeight(v18);
  v11 = enum case for CornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v7, enum case for CornerStyle.continuous(_:), v3);
  sub_100746E34();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v12(v7, v11, v3);
  sub_100743024();
  return (v13)(v7, v3);
}

uint64_t sub_1001C0F00@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10074A7B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v23 - v10;
  v12 = [v1 traitCollection];
  v13 = v2[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_100753804())
  {
    sub_1001C1510(v12, v7);
  }

  else if (v13)
  {
    sub_1001C1848();
  }

  else
  {
    sub_1001C18E8();
  }

  (*(v5 + 32))(v11, v7, v4);
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_hasArtwork])
  {
    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
    v15 = sub_1007433C4();
    v16 = sub_1001C3884(&qword_10092E370, &type metadata accessor for ArtworkView);
    v17 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v23[6] = 0;
    v23[7] = 0;
  }

  v23[8] = v15;
  v23[9] = v16;
  v23[5] = v14;
  v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel];
  v23[3] = sub_100745C84();
  v23[4] = &protocol witness table for UILabel;
  v23[0] = v18;
  v19 = sub_10074A7D4();
  swift_allocObject();
  v20 = v18;
  v21 = sub_10074A7C4();
  a1[3] = v19;
  result = sub_1001C3884(&qword_10092C070, &type metadata accessor for RibbonBarItemCellLayout);
  a1[4] = result;
  *a1 = v21;
  return result;
}

id sub_1001C11D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1007446D4();
  if (v5)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityLabel:v6];

  v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel];
  sub_1007446E4();
  v8 = sub_100753064();

  [v7 setText:v8];

  v9 = sub_1007446F4();
  if (v9)
  {
    sub_10074F2A4();
    v25 = v10;
    v26 = v11;

    *&v12 = v25;
    *(&v12 + 1) = v26;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = &v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  *v13 = v12;
  v13[16] = v9 == 0;
  v14 = sub_1007446F4();
  if (v14)
  {
  }

  v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_hasArtwork] = v14 != 0;
  v15 = sub_1007446F4();
  if (v15)
  {
    sub_100119858(v15, a2);
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
    sub_100743344();
    [v16 setHidden:1];
  }

  v17 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
  v18 = sub_1007446B4();
  [v17 setTintColor:v18];

  v19 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction];
  if (v19)
  {
    v20 = objc_allocWithZone(UITapGestureRecognizer);

    v21 = [v20 initWithTarget:v3 action:"handleTap"];
    v22 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer];
    *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer] = v21;
    v23 = v21;

    if (v23)
    {
      [v3 addGestureRecognizer:v23];
      sub_1000164A8(v19);
    }

    else
    {
      sub_1000164A8(v19);
    }
  }

  else if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer])
  {
    [v3 removeGestureRecognizer:?];
  }

  return [v3 setNeedsLayout];
}