char *sub_10054E2E0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), unint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v10 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v11 = *v5;
    v12 = *v5 >> 62;
    if (!v12)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v14 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = (v16 + v15);
  if (!v17)
  {
    v10(result, 1);
    return sub_10054E194(v9, v8, 1, v7, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

char *sub_10054E3E0(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_10054E484(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100356AAC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10054E3E0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10054E544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100014C84(0, &unk_101918390);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10054E654(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10024A698(result);

  return sub_10054E544(v4, v2, 0);
}

unint64_t sub_10054E72C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  sub_1000CE6B8(&qword_10191D8A8);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v10 = a4;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_10054E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(a4);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_10054E950(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1000CE6B8(&unk_101918B20);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10054EA78(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_10024A698(result);

  return sub_10054E950(v6, v5, 1, v3);
}

uint64_t sub_10054EB64(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v10 = a3;
    v8 = a2;
    v9 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (!v16)
  {
    v10(result, 1);
    return sub_10054E81C(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_10054EC58(double a1, double a2)
{
  v3 = a1 * 100000.0;
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = a2 * 100000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = (v3 / 5) * 5.0 / 100000.0;
  v6 = (v4 / 5) * 5.0 / 100000.0;
  sub_1000CE6B8(&unk_10190D5C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E1D60;
  *(v7 + 56) = &type metadata for Double;
  *(v7 + 64) = &protocol witness table for Double;
  *(v7 + 32) = v5;
  *(v7 + 96) = &type metadata for Double;
  *(v7 + 104) = &protocol witness table for Double;
  *(v7 + 72) = v6;

  String.init(format:_:)();
}

uint64_t sub_10054EDE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC4C;

  return sub_100025084(a1, v4);
}

uint64_t sub_10054EEA4(void *a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101926868);

  return sub_10054D858(a1, a2);
}

unint64_t sub_10054EF3C()
{
  result = qword_101916EA8;
  if (!qword_101916EA8)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916EA8);
  }

  return result;
}

uint64_t sub_10054EF94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_10054A2D8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10054F068()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC4C;

  return sub_100549B88(v2, v3);
}

uint64_t sub_10054F11C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003AC40;

  return sub_100549694(v2, v4, v3);
}

uint64_t sub_10054F1E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC40;

  return sub_100547744(v2, v3);
}

uint64_t sub_10054F294()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC40;

  return sub_100547528(v2, v3);
}

uint64_t sub_10054F404@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = *(v1 + OBJC_IVAR____TtC4Maps22CarPlaceViewController_viewModel);
  strcpy(v7, "CarPlaceCard");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  (*(v4 + 104))(v7, enum case for MapsDesignAccessibilityString.view(_:), v3, v5);
  a1[3] = sub_1000CE6B8(&qword_1019268C8);
  v8 = sub_10054FB90();
  v10[1] = &type metadata for CarPlaceCardView;
  v10[2] = v8;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);

  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v7, v3);
}

void sub_10054F5B0()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_10054FDF4();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = [*&v0[OBJC_IVAR____TtC4Maps22CarPlaceViewController_placeItem] mapItem];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10054F7C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() sharedInstance];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      v6 = [*(v3 + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem) mapItem];
      [v5 displayRoutePlanningForDestination:v6];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10054F8B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005660A8();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10054F98C(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  sub_100553464(a5);
}

uint64_t sub_10054FA34()
{
  swift_unknownObjectRelease();
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps22CarPlaceViewController_actionDelegate);
}

uint64_t type metadata accessor for CarPlaceViewController()
{
  result = qword_1019268B8;
  if (!qword_1019268B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10054FB90()
{
  result = qword_1019268D0;
  if (!qword_1019268D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019268D0);
  }

  return result;
}

uint64_t sub_10054FBEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10054FDF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10054FCA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10054FDF4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

unint64_t sub_10054FDF4()
{
  result = qword_101926CD0;
  if (!qword_101926CD0)
  {
    type metadata accessor for CarPlaceCardViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926CD0);
  }

  return result;
}

uint64_t sub_10054FE54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10054FDF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10054FF10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10054FDF4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

id sub_100550108(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v2 = 0xD000000000000013;
        v8 = 0x80000001012413A0;
        v3 = 0x74756F5220646E45;
        v4 = 0x8000000101241380;
        v5 = 0xE900000000000065;
        goto LABEL_17;
      case 1:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v2 = 0xD000000000000015;
        v6 = 0xD00000000000001CLL;
        v8 = 0x8000000101241360;
        v3 = 0x6F52206573756150;
        v5 = 0xEB00000000657475;
        v4 = 0x8000000101241340;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v3, *(&v8 - 1))._countAndFlagsBits;
      case 2:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v8 = 0x8000000101241310;
        v3 = 0x6974617453205645;
        v5 = 0xEB00000000736E6FLL;
        v2 = 0xD00000000000001ELL;
        v4 = 0x80000001012412F0;
        v6 = 0xD00000000000002FLL;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v3, *(&v8 - 1))._countAndFlagsBits;
    }
  }

  else
  {
    if (a1 <= 4)
    {
      if (a1 != 3)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v2 = 0xD000000000000017;
        v8 = 0x8000000101241270;
        v3 = 0x794D20646E6946;
        v4 = 0x8000000101241250;
        v6 = 0xD000000000000034;
        v5 = 0xE700000000000000;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v3, *(&v8 - 1))._countAndFlagsBits;
      }

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v2 = 0xD000000000000016;
      v8 = 0x80000001012412D0;
      v3 = 0x6F7453207478654ELL;
      v4 = 0x80000001012412B0;
      v5 = 0xE900000000000070;
LABEL_17:
      v6 = 0xD00000000000001DLL;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v3, *(&v8 - 1))._countAndFlagsBits;
    }

    if (a1 == 5)
    {
      return sub_100550894();
    }

    if (a1 == 6)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x80000001012411E0;
      v2 = 0x7961725476614E5BLL;
      v4 = 0xEF7472617453205DLL;
      v3 = 0x7472617453;
      v6 = 0xD00000000000006CLL;
      v5 = 0xE500000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v3, *(&v8 - 1))._countAndFlagsBits;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100550528(uint64_t a1)
{
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        return 0x796D646E6966;
      case 5:
        return 0x772E657275676966;
      case 6:
        return sub_100550960();
    }

    goto LABEL_13;
  }

  result = 0;
  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      return 0x697966696E67616DLL;
    }

    if (a1 != 3)
    {
LABEL_13:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  return result;
}

id sub_100550788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavTrayButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100550840()
{
  result = qword_101926980;
  if (!qword_101926980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926980);
  }

  return result;
}

id sub_100550894()
{
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v1 = result;
    v2 = [result alternateWalkingRouteDisplayETAInfo];

    if (!v2)
    {
      return 0;
    }

    [v2 remainingMinutesToEndOfRoute];
    v3 = GEOStringForDuration();
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100550960()
{
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v1 = result;
    v2 = [result destination];

    if (!v2)
    {
      return 0;
    }

    v3 = [v2 route];

    if (!v3)
    {
      return 0;
    }

    v4 = [v3 transportType];
    v5 = @"car.fill";
    if (v4 > 3)
    {
      if (v4 == 4)
      {
        v5 = 0;
LABEL_17:
        v7 = v5;
        if (v7)
        {
          v8 = v7;
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v9;
        }

        return 0;
      }

      if (v4 != 5)
      {
        if (v4 == 6)
        {
          v5 = @"figure.wave";
        }

        goto LABEL_16;
      }
    }

    else if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = @"figure.walk";
      }

      else if (v4 == 3)
      {
        v5 = @"bicycle";
      }

      goto LABEL_16;
    }

    v5 = @"tram.fill";
LABEL_16:
    v6 = v5;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

char *sub_100550AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v5 = type metadata accessor for GridButton();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v59 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = v53 - v8;
  v9 = type metadata accessor for UUID();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GridButtonViewModel.ButtonProminence();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GridButtonViewModel.ButtonMetrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC4Maps13NavTrayButton_hostingView] = 0;
  v56 = v3;
  *&v3[OBJC_IVAR____TtC4Maps13NavTrayButton_style] = a1;
  v53[1] = sub_100550108(a1);
  v20 = sub_100550528(a1);
  v53[2] = v21;
  (*(v17 + 104))(v19, enum case for GridButtonViewModel.ButtonMetrics.nav(_:), v16);
  v53[3] = v20;
  if (a1 <= 2)
  {
    if (a1 > 1)
    {
      goto LABEL_7;
    }

    (*(v13 + 104))(v15, enum case for GridButtonViewModel.ButtonProminence.primary(_:), v12);
    static Color.red.getter();
  }

  else
  {
    if (a1 > 6)
    {
      do
      {
        v64 = a1;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
LABEL_7:
        ;
      }

      while (a1 != 2);
    }

    (*(v13 + 104))(v15, enum case for GridButtonViewModel.ButtonProminence.secondary(_:), v12);
    static Color.blue.getter();
  }

  UUID.init()();
  UUID.uuidString.getter();
  (*(v54 + 8))(v11, v55);
  type metadata accessor for GridButtonViewModel();
  swift_allocObject();
  v22 = GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
  v23 = v56;
  *&v56[OBJC_IVAR____TtC4Maps13NavTrayButton_model] = v22;
  v24 = type metadata accessor for NavTrayButton();
  v63.receiver = v23;
  v63.super_class = v24;
  v25 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26 = swift_allocObject();
  v27 = v58;
  *(v26 + 16) = v57;
  *(v26 + 24) = v27;
  v28 = v25;

  v29 = v60;
  GridButton.init(model:tapHandler:)();
  v31 = v61;
  v30 = v62;
  (*(v61 + 16))(v59, v29, v62);
  v32 = objc_allocWithZone(sub_1000CE6B8(&qword_101926988));
  v33 = _UIHostingView.init(rootView:)();
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [objc_opt_self() clearColor];
  [v33 setBackgroundColor:v34];

  v35 = *&v28[OBJC_IVAR____TtC4Maps13NavTrayButton_hostingView];
  *&v28[OBJC_IVAR____TtC4Maps13NavTrayButton_hostingView] = v33;
  v36 = v33;

  v37 = v28;
  [v37 addSubview:v36];
  v59 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1011E5C00;
  v39 = [v36 leadingAnchor];
  v40 = [v37 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v38 + 32) = v41;
  v42 = [v36 trailingAnchor];
  v43 = [v37 trailingAnchor];

  v44 = [v42 constraintEqualToAnchor:v43];
  *(v38 + 40) = v44;
  v45 = [v36 topAnchor];
  v46 = [v37 topAnchor];

  v47 = [v45 constraintEqualToAnchor:v46];
  *(v38 + 48) = v47;
  v48 = [v36 bottomAnchor];

  v49 = [v37 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v38 + 56) = v50;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v59 activateConstraints:isa];

  (*(v31 + 8))(v29, v30);
  return v37;
}

uint64_t sub_1005512B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_1000CE6B8(&qword_101910820);
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v80 = &v76 - v4;
  v5 = sub_1000CE6B8(&qword_101926998);
  __chkstk_darwin(v5 - 8);
  v85 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v76 - v8;
  v88 = type metadata accessor for MapsDesignAccessibilityString();
  v9 = *(v88 - 8);
  __chkstk_darwin(v88);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_10191DF90);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v76 - v14;
  v16 = sub_1000CE6B8(&qword_10191E4B0);
  __chkstk_darwin(v16 - 8);
  v81 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v76 - v19;
  sub_10005E838(a1, a1[3]);
  v21 = dispatch thunk of WatchPlaceHeaderViewModelProviding.titleText.getter();
  v89 = v20;
  v87 = v9;
  if (v22)
  {
    v90 = v21;
    v91 = v22;
    sub_1000E5580();
    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    v76 = v15;
    static Font.callout.getter();
    v79 = a1;
    v28 = Text.font(_:)();
    v78 = v12;
    v30 = v29;
    v77 = v13;
    v32 = v31;

    sub_1000F0A40(v23, v25, v27 & 1);

    static Font.Weight.bold.getter();
    v33 = Text.fontWeight(_:)();
    v35 = v34;
    LOBYTE(v23) = v36;
    v38 = v37;
    v39 = v32 & 1;
    v40 = v28;
    v42 = v87;
    v41 = v88;
    sub_1000F0A40(v40, v30, v39);
    v20 = v89;

    v90 = v33;
    v91 = v35;
    v92 = v23 & 1;
    v93 = v38;
    (*(v42 + 104))(v11, enum case for MapsDesignAccessibilityString.titleLabel(_:), v41);
    v43 = v76;
    View.mapsDesignAXID(_:)();
    (*(v42 + 8))(v11, v41);
    v44 = v35;
    a1 = v79;
    sub_1000F0A40(v33, v44, v23 & 1);

    sub_1000F11C4(v43, v20, &qword_10191DF90);
    (*(v77 + 56))(v20, 0, 1, v78);
  }

  else
  {
    (*(v13 + 56))(v20, 1, 1, v12);
  }

  v45 = v11;
  sub_10005E838(a1, a1[3]);
  v46 = sub_100551AA8();
  if (v47)
  {
    v90 = v46;
    v91 = v47;
    sub_1000E5580();
    v48 = Text.init<A>(_:)();
    v50 = v49;
    v52 = v51;
    static Font.caption2.getter();
    v53 = Text.font(_:)();
    v55 = v54;
    v57 = v56;

    sub_1000F0A40(v48, v50, v52 & 1);

    LODWORD(v90) = static HierarchicalShapeStyle.secondary.getter();
    v58 = Text.foregroundStyle<A>(_:)();
    v78 = v58;
    v60 = v59;
    LOBYTE(v50) = v61;
    v63 = v62;
    v79 = v62;
    sub_1000F0A40(v53, v55, v57 & 1);
    v20 = v89;

    KeyPath = swift_getKeyPath();
    v90 = v58;
    v91 = v60;
    v92 = v50 & 1;
    v93 = v63;
    v94 = KeyPath;
    v95 = 1;
    v96 = 0;
    strcpy(v45, "EnclosingPlace");
    v45[15] = -18;
    v66 = v87;
    v65 = v88;
    (*(v87 + 104))(v45, enum case for MapsDesignAccessibilityString.label(_:), v88);
    sub_1000CE6B8(&unk_10190FE90);
    sub_10014277C();
    v67 = v80;
    View.mapsDesignAXID(_:)();
    (*(v66 + 8))(v45, v65);
    sub_1000F0A40(v78, v60, v50 & 1);

    v68 = v67;
    v69 = v84;
    sub_1000F11C4(v68, v84, &qword_101910820);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v84;
  }

  (*(v82 + 56))(v69, v70, 1, v83);
  v71 = v81;
  sub_1000D2DFC(v20, v81, &qword_10191E4B0);
  v72 = v85;
  sub_1000D2DFC(v69, v85, &qword_101926998);
  v73 = v86;
  sub_1000D2DFC(v71, v86, &qword_10191E4B0);
  v74 = sub_1000CE6B8(&qword_1019269A0);
  sub_1000D2DFC(v72, v73 + *(v74 + 48), &qword_101926998);
  sub_100024F64(v69, &qword_101926998);
  sub_100024F64(v20, &qword_10191E4B0);
  sub_100024F64(v72, &qword_101926998);
  return sub_100024F64(v71, &qword_10191E4B0);
}

void *sub_100551AA8()
{
  result = dispatch thunk of WatchPlaceHeaderViewModelProviding.enclosingPlaceViewModel.getter();
  if (result)
  {
    v1 = result;
    v2 = [result unalteredLabelValue];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [v1 unalteredTokenValue];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    return v3;
  }

  return result;
}

uint64_t sub_100551B78@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000CE6B8(&qword_101926990);
  return sub_1005512B4(v1, a1 + *(v3 + 44));
}

uint64_t type metadata accessor for CarPlaceAccoladesView()
{
  result = qword_101926A10;
  if (!qword_101926A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100551C3C()
{
  sub_10018C7C0();
  if (v0 <= 0x3F)
  {
    sub_100551CC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100551CC0()
{
  result = qword_101926A20;
  if (!qword_101926A20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_101926A20);
  }

  return result;
}

uint64_t sub_100551D40@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v31 = sub_1000CE6B8(&qword_101926A50);
  __chkstk_darwin(v31);
  v3 = &v26 - v2;
  v33 = sub_1000CE6B8(&qword_101926A58);
  __chkstk_darwin(v33);
  v5 = &v26 - v4;
  v28 = sub_1000CE6B8(&qword_101926A60);
  __chkstk_darwin(v28);
  v7 = &v26 - v6;
  v32 = sub_1000CE6B8(&qword_101926A68);
  __chkstk_darwin(v32);
  v30 = &v26 - v8;
  v9 = type metadata accessor for CarLabelViewModel();
  __chkstk_darwin(v9 - 8);
  v29 = type metadata accessor for CarLabel();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1;
  v13 = (v1 + *(type metadata accessor for CarPlaceAccoladesView() + 20));
  sub_10005E838(v13, v13[3]);
  dispatch thunk of WatchPlaceAccoladesViewModelProviding.accoladeText.getter();
  if (!v14)
  {
    goto LABEL_6;
  }

  if (String.count.getter() < 1)
  {

LABEL_6:
    sub_10005E838(v13, v13[3]);
    v18 = dispatch thunk of WatchPlaceAccoladesViewModelProviding.icon.getter();
    if (v18)
    {
      v19 = v18;
      *v3 = static VerticalAlignment.center.getter();
      *(v3 + 1) = 0;
      v3[16] = 0;
      v20 = sub_1000CE6B8(&qword_101926A80);
      sub_100552348(v19, v12, &v3[*(v20 + 44)]);
      sub_1000D2DFC(v3, v7, &qword_101926A50);
      swift_storeEnumTagMultiPayload();
      sub_10055285C(&qword_10190BCF8, &type metadata accessor for CarLabel);
      sub_1005527F8();
      v21 = v30;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v21, v5, &qword_101926A68);
      swift_storeEnumTagMultiPayload();
      sub_10055273C();
      _ConditionalContent<>.init(storage:)();

      sub_100024F64(v21, &qword_101926A68);
      return sub_100024F64(v3, &qword_101926A50);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_10055273C();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  sub_10005E838(v13, v13[3]);
  v15 = dispatch thunk of WatchPlaceAccoladesViewModelProviding.icon.getter();
  v16 = v15;
  if (v15)
  {
    v17 = sub_1000F1178();
    v15 = sub_10055285C(&qword_10190DE60, sub_1000F1178);
  }

  else
  {
    v17 = 0;
    v36 = 0;
    v37 = 0;
  }

  v35 = v16;
  v38 = v17;
  v39 = v15;
  CarLabelViewModel.init(image:label:)();
  CarLabel.init(model:)();
  v23 = v27;
  v24 = v29;
  (*(v27 + 16))(v7, v11, v29);
  swift_storeEnumTagMultiPayload();
  sub_10055285C(&qword_10190BCF8, &type metadata accessor for CarLabel);
  sub_1005527F8();
  v25 = v30;
  _ConditionalContent<>.init(storage:)();
  sub_1000D2DFC(v25, v5, &qword_101926A68);
  swift_storeEnumTagMultiPayload();
  sub_10055273C();
  _ConditionalContent<>.init(storage:)();
  sub_100024F64(v25, &qword_101926A68);
  return (*(v23 + 8))(v11, v24);
}

uint64_t sub_100552348@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25 = a3;
  v24 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&qword_101926A88);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = a1;
  Image.init(uiImage:)();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v18 = Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  sub_1000CE6B8(&qword_10190F6E0);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v28[38] = v32;
  *&v28[22] = v31;
  *&v28[6] = v30;
  *&v27[2] = *v28;
  v29 = 1;
  v26 = v18;
  *v27 = 1;
  *&v27[18] = *&v28[16];
  *&v27[34] = *&v28[32];
  *&v27[48] = *(&v32 + 1);
  v19 = v24;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.iconImage(_:), v24);
  sub_1000CE6B8(&qword_101910498);
  sub_1001CA1F8();
  View.mapsDesignAXID(_:)();
  (*(v4 + 8))(v6, v19);
  v33[2] = *&v27[16];
  v33[3] = *&v27[32];
  v34 = *&v27[48];
  v33[0] = v26;
  v33[1] = *v27;
  sub_100024F64(v33, &qword_101910498);
  sub_1000D2DFC(v16, v13, &qword_101926A88);
  v20 = v25;
  sub_1000D2DFC(v13, v25, &qword_101926A88);
  v21 = v20 + *(sub_1000CE6B8(&qword_101926A90) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_100024F64(v16, &qword_101926A88);
  return sub_100024F64(v13, &qword_101926A88);
}

unint64_t sub_10055273C()
{
  result = qword_101926A70;
  if (!qword_101926A70)
  {
    sub_1000D6664(&qword_101926A68);
    sub_10055285C(&qword_10190BCF8, &type metadata accessor for CarLabel);
    sub_1005527F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926A70);
  }

  return result;
}

unint64_t sub_1005527F8()
{
  result = qword_101926A78;
  if (!qword_101926A78)
  {
    sub_1000D6664(&qword_101926A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926A78);
  }

  return result;
}

uint64_t sub_10055285C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005528A4()
{
  result = qword_101926A98;
  if (!qword_101926A98)
  {
    sub_1000D6664(&qword_101926AA0);
    sub_10055273C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926A98);
  }

  return result;
}

uint64_t type metadata accessor for CarPlaceSection()
{
  result = qword_101926B00;
  if (!qword_101926B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005529A4()
{
  sub_10017F3EC();
  if (v0 <= 0x3F)
  {
    sub_100552A50();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100552A50()
{
  if (!qword_101926B10)
  {
    type metadata accessor for CarPlaceRowItem(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101926B10);
    }
  }
}

uint64_t sub_100552AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100552B48()
{
  v1 = type metadata accessor for CarLabelViewModel();
  __chkstk_darwin(v1 - 8);
  v2 = objc_opt_self();
  sub_10005E838(v0, v0[3]);
  dispatch thunk of WatchPlaceAmenityItemViewModelProviding.amenitySymbolName.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 _mapsui_resolvedSymbolImageNamed:v3 withConfiguration:0];

  if (v4)
  {
    [v4 imageWithRenderingMode:2];

    sub_1000F1178();
    sub_100552D08(&qword_10190DE60, sub_1000F1178);
  }

  sub_10005E838(v0, v0[3]);
  dispatch thunk of WatchPlaceAmenityItemViewModelProviding.title.getter();
  CarLabelViewModel.init(image:label:)();
  return CarLabel.init(model:)();
}

uint64_t sub_100552D08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CarPlaceRatingView()
{
  result = qword_101926BA8;
  if (!qword_101926BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100552DC4()
{
  result = type metadata accessor for WatchPlaceRatingRowViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100552E4C()
{
  v0 = type metadata accessor for WatchPlaceRatingRowViewModel.DisplayStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WatchPlaceRatingRowViewModel.displayStyle.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for WatchPlaceRatingRowViewModel.DisplayStyle.percentage(_:))
  {
    return WatchPlaceRatingRowViewModel.ratingAndPeopleString()()._countAndFlagsBits;
  }

  if (v4 == enum case for WatchPlaceRatingRowViewModel.DisplayStyle.star(_:))
  {
    (*(v1 + 96))(v3, v0);
    v6 = *(v3 + 1);
    v7 = *(v3 + 2);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v15._object = 0xEB00000000706C65;
    v8._countAndFlagsBits = 0x4025206E6F204025;
    v15._countAndFlagsBits = 0x59206E6F20352E34;
    v9._object = 0x8000000101241420;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    v8._object = 0xE800000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v8, v15);
    sub_1000CE6B8(&unk_10190D5C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1011E1D60;
    v11 = WatchPlaceRatingRowViewModel.ratingAndPeopleString()();
    *(v10 + 56) = &type metadata for String;
    v12 = sub_1000DA61C();
    *(v10 + 32) = v11;
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = v6;
    *(v10 + 80) = v7;
    v13 = static String.localizedStringWithFormat(_:_:)();

    return v13;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005530A4()
{
  v0 = type metadata accessor for CarLabelViewModel();
  __chkstk_darwin(v0 - 8);
  WatchPlaceRatingRowViewModel.symbol.getter();
  sub_100552E4C();
  CarLabelViewModel.init(glyph:label:)();
  return CarLabel.init(model:)();
}

uint64_t sub_10055317C()
{
  v1 = type metadata accessor for CarLabelViewModel();
  __chkstk_darwin(v1 - 8);
  sub_10005E838(v0, v0[3]);
  dispatch thunk of WatchPlaceHoursViewModelProviding.titleText.getter();
  CarLabelViewModel.init(glyph:label:)();
  return CarLabel.init(model:)();
}

uint64_t sub_100553240@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100555CB4(&unk_1019151B0, type metadata accessor for CarEVChargingDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive);
  return result;
}

uint64_t sub_100553318(uint64_t a1)
{
  if (*(v1 + 72) == a1)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_100553FDC();

    return swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return swift_unknownObjectRelease();
  }
}

void sub_100553464(char a1)
{
  v2 = *(v1 + 80);
  if (v2 == (a1 & 1))
  {
    *(v1 + 80) = a1 & 1;
    swift_getKeyPath();
    sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v2 != *(v1 + 80))
    {
      sub_10055478C();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005535F8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1000D88A8(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_1005536AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1000D88A8(a2, a3);
  return sub_1000588AC(v3);
}

uint64_t sub_1005536F8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_1000D88A8(v1, *(v3 + 40));
  return v1;
}

uint64_t sub_1005537AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_1000D88A8(a2, a3);
  return sub_1000588AC(v3);
}

unint64_t sub_1005537F8()
{
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_100100D84(v1);
  return v1;
}

unint64_t sub_1005538A4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;
  return sub_100100D84(v4);
}

uint64_t sub_100553950()
{
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void *sub_100553A1C()
{
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_100553AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_100553B7C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for WatchPlaceETAProvider();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

void *sub_100553CFC()
{
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id sub_100553DA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_100553E5C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CarEVChargingDataSource();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 64);
LABEL_8:
  *(v2 + 64) = a1;
}

id sub_100553FDC()
{
  v1 = v0;
  swift_getKeyPath();
  v29[0] = v0;
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 56);
  if (v2)
  {
    v3 = v2;
    WatchPlaceETAProvider.isActive.setter();
  }

  swift_getKeyPath();
  v29[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v1 + 72) isIntermediateMapItem] || (swift_getKeyPath(), v29[0] = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v4 = objc_msgSend(*(v1 + 72), "mapItem")) == 0))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v29[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  objc_allocWithZone(type metadata accessor for WatchPlaceETAProvider());
  swift_unknownObjectRetain();
  v5 = WatchPlaceETAProvider.init(placeItem:)();
  v26 = v5;
  sub_100553B7C(v5);
  swift_getKeyPath();
  v29[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [*(v1 + 72) mapItem];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = [objc_allocWithZone(MUPlaceDataAvailability) initWithMapItem:result options:0];

  if (![v8 supportsEVCharging])
  {
LABEL_9:
    swift_getKeyPath();
    v28[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v1 + 72);
    v17 = objc_opt_self();
    swift_unknownObjectRetain();
    v18 = [v17 sharedImageManager];
    result = [objc_opt_self() sharedLocationManager];
    if (result)
    {
      v19 = result;
      v28[0] = v16;
      v28[1] = v8;
      v28[2] = v18;
      v28[3] = v26;
      v28[4] = result;
      swift_getKeyPath();
      v20 = v26;
      v21 = v8;
      v27 = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v1 + 64);
      v23 = v22;
      sub_100555440(v28, v22);

      v24 = swift_getKeyPath();
      __chkstk_darwin(v24);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10055478C();

      return swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  swift_getKeyPath();
  v29[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v1 + 72);
  v10 = objc_opt_self();
  swift_unknownObjectRetain();
  v11 = [v10 sharedImageManager];
  result = [objc_opt_self() sharedLocationManager];
  if (result)
  {
    v29[0] = v9;
    v29[1] = v8;
    v29[2] = v11;
    v29[3] = v26;
    v29[4] = result;
    v12 = objc_allocWithZone(type metadata accessor for CarEVChargingDataSource());
    v13 = v26;
    v14 = v8;
    v15 = sub_1002486B4(v29);
    sub_100553E5C(v15);
    sub_100554B50();
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10055459C()
{
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_100554640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
  return swift_unknownObjectRetain();
}

uint64_t sub_1005546EC()
{
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 80);
}

void sub_10055478C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 56);
  if (v2)
  {
    swift_getKeyPath();
    v3 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    WatchPlaceETAProvider.isActive.setter();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 64);
  if (v4)
  {
    swift_getKeyPath();
    v5 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + 80);
    v7 = v5[OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive];
    if (v6 == v7)
    {
      v5[OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive] = v6;
      sub_10024800C(v7);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100555CB4(&unk_1019151B0, type metadata accessor for CarEVChargingDataSource);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_1005549E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
  return result;
}

void sub_100554A90(uint64_t a1, char a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = a2;
  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 != *(a1 + 80))
  {
    sub_10055478C();
  }
}

uint64_t sub_100554B50()
{
  swift_allocObject();
  swift_weakInit();
  withObservationTracking<A>(_:onChange:)();

  swift_getKeyPath();
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100100D94(v1);
}

id sub_100554CB8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = result;
  swift_getKeyPath();
  v16[0] = v3;
  sub_100555CB4(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 7);
  if (!v4)
  {

LABEL_7:
    v14 = 1;
    goto LABEL_8;
  }

  swift_getKeyPath();
  v16[0] = v3;
  v5 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [*(v3 + 9) mapItem];
  if (result)
  {
    v6 = result;
    v15 = a1;
    v7 = [objc_allocWithZone(MUPlaceDataAvailability) initWithMapItem:result options:0];

    swift_getKeyPath();
    v16[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v3 + 9);
    v9 = objc_opt_self();
    swift_unknownObjectRetain();
    v10 = [v9 sharedImageManager];
    result = [objc_opt_self() sharedLocationManager];
    if (result)
    {
      v11 = result;
      v16[0] = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v5;
      v16[4] = result;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v12 = *(v3 + 8);
      v13 = v12;
      v14 = sub_100555440(v16, v12);

      swift_unknownObjectRelease();

      a1 = v15;
LABEL_8:
      *a1 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100554F50()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_101210420, v6);
}

uint64_t sub_1005550A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10055513C, v6, v5);
}

uint64_t sub_10055513C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100554B50();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005551CC()
{
  sub_1000588AC(*(v0 + 16));
  sub_1000588AC(*(v0 + 32));
  sub_100100D94(*(v0 + 48));

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC4Maps21CarPlaceCardViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarPlaceCardViewModel()
{
  result = qword_101926C10;
  if (!qword_101926C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005552EC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005553B4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1005553DC()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_100553FDC();
}

void *sub_100555440(uint64_t a1, void *a2)
{
  v70 = a2;
  v3 = sub_1000CE6B8(&unk_10190E110);
  __chkstk_darwin(v3 - 8);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v71 = &v64 - v6;
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  v10 = type metadata accessor for CarPlaceSection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v64 - v14;
  __chkstk_darwin(v15);
  v65 = &v64 - v16;
  __chkstk_darwin(v17);
  v72 = &v64 - v18;
  __chkstk_darwin(v19);
  v68 = &v64 - v20;
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  v27 = *a1;
  v28 = *(a1 + 16);
  v29 = type metadata accessor for WatchPlaceHeaderViewModel();
  swift_allocObject();
  swift_unknownObjectRetain();
  v30 = v28;
  v69 = v27;
  v31 = WatchPlaceHeaderViewModel.init(placeItem:imageManager:)();
  sub_1000CE6B8(&unk_101924FE0);
  v32 = *(type metadata accessor for CarPlaceRowItem(0) - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1011E1D30;
  v35 = (v34 + v33);
  v35[3] = v29;
  v35[4] = &protocol witness table for WatchPlaceHeaderViewModel;
  *v35 = v31;
  type metadata accessor for CarPlaceRowItem.ContentType(0);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 2) = v34;
  v26[24] = 0;
  v75 = v10;
  v36 = &v26[*(v10 + 32)];
  strcpy(v36, "CarPlaceHeader");
  v36[15] = -18;
  v37 = sub_100356AE4(0, 1, 1, _swiftEmptyArrayStorage);
  v39 = v37[2];
  v38 = v37[3];
  if (v39 >= v38 >> 1)
  {
    v37 = sub_100356AE4(v38 > 1, v39 + 1, 1, v37);
  }

  v37[2] = v39 + 1;
  v74 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v40 = *(v11 + 72);
  sub_100555D1C(v26, v37 + v74 + v40 * v39);
  v77 = v37;
  sub_10017F628(a1, v9);
  v41 = *(v11 + 48);
  v42 = v75;
  v43 = v41(v9, 1, v75) == 1;
  v44 = v71;
  if (v43)
  {
    sub_100248D9C(v9);
    v45 = v70;
    if (v70)
    {
LABEL_10:
      swift_getKeyPath();
      v76 = v45;
      sub_100555CB4(&unk_1019151B0, type metadata accessor for CarEVChargingDataSource);
      v48 = v45;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_10024740C(v49);

      v42 = v75;
    }
  }

  else
  {
    sub_100555D1C(v9, v23);
    sub_100555D80(v23, v68);
    v47 = v37[2];
    v46 = v37[3];
    if (v47 >= v46 >> 1)
    {
      v37 = sub_100356AE4(v46 > 1, v47 + 1, 1, v37);
    }

    sub_100555DE4(v23);
    v37[2] = v47 + 1;
    sub_100555D1C(v68, v37 + v74 + v47 * v40);
    v77 = v37;
    v45 = v70;
    if (v70)
    {
      goto LABEL_10;
    }
  }

  v50 = sub_100180DA4(v69, *(a1 + 8), *(a1 + 24), *(a1 + 32));
  sub_10024740C(v50);
  sub_1001805B4(a1, v44);
  if (v41(v44, 1, v42) == 1)
  {
    sub_100248D9C(v44);
  }

  else
  {
    v51 = v44;
    v52 = v72;
    sub_100555D1C(v51, v72);
    v53 = v65;
    sub_100555D80(v52, v65);
    v54 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_100356AE4(0, v54[2] + 1, 1, v54);
    }

    v56 = v54[2];
    v55 = v54[3];
    if (v56 >= v55 >> 1)
    {
      v54 = sub_100356AE4(v55 > 1, v56 + 1, 1, v54);
    }

    sub_100555DE4(v72);
    v54[2] = v56 + 1;
    sub_100555D1C(v53, v54 + v74 + v56 * v40);
    v77 = v54;
  }

  v57 = v73;
  sub_1001809E0(a1, v73);
  if (v41(v57, 1, v42) == 1)
  {
    sub_100248D9C(v57);
    return v77;
  }

  else
  {
    v59 = v66;
    sub_100555D1C(v57, v66);
    v60 = v67;
    sub_100555D80(v59, v67);
    v58 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_100356AE4(0, v58[2] + 1, 1, v58);
    }

    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_100356AE4(v61 > 1, v62 + 1, 1, v58);
    }

    sub_100555DE4(v59);
    v58[2] = v62 + 1;
    sub_100555D1C(v60, v58 + v74 + v62 * v40);
  }

  return v58;
}

uint64_t sub_100555BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1005550A4(a1, v4, v5, v6);
}

void sub_100555C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

uint64_t sub_100555CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100555D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlaceSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100555D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlaceSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100555DE4(uint64_t a1)
{
  v2 = type metadata accessor for CarPlaceSection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100555E40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

unint64_t sub_100555E78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  sub_100100D84(v1);
  return sub_100100D94(v3);
}

uint64_t sub_100555EB4(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  ObservationRegistrar.init()();
  *(v1 + 72) = a1;
  *(v1 + 48) = 0;
  *(v1 + 80) = 0;
  swift_unknownObjectRetain();
  sub_100553FDC();
  return v1;
}

uint64_t sub_100555F24(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_100556048()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1005560C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100556134(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_routeETAManager;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (!*(v14 + 16))
  {
    return swift_endAccess();
  }

  v15 = sub_1002972F8(a1);
  if ((v16 & 1) == 0)
  {
    return swift_endAccess();
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  swift_endAccess();
  sub_100014C84(0, &qword_10190B4F0);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v9);
  v18 = v17;
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  aBlock[4] = sub_10055A220;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101621568;
  v21 = _Block_copy(aBlock);
  v22 = v18;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100041480(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v26 + 8))(v5, v3);
  (*(v25 + 8))(v8, v6);
}

void sub_100556518(unint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_didUpdate;
  if ((v2[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_didUpdate] & 1) == 0)
  {
    if (!(a1 >> 62))
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      v2[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_didUpdate] = 1;
      v2[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_searchAlongRoute] = a2 & 1;
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      if (v5)
      {
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v5 < 0)
        {
          __break(1u);
          goto LABEL_22;
        }

        v6 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v7 = *(a1 + 8 * v6 + 32);
          }

          v8 = v7;
          ++v6;
          sub_100556DC4(v7);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v5 != v6);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v2;
      static Published.subscript.setter();
      if (qword_101906948 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100021540(v10, qword_1019605C8);
      v11 = v9;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_17;
      }

      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v14 = 136315650;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      type metadata accessor for ListCellViewModel();
      v15 = Array.description.getter();
      v17 = v16;

      v18 = sub_10004DEB8(v15, v17, &v30);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      swift_beginAccess();
      type metadata accessor for UUID();
      sub_100014C84(0, &qword_10190E160);
      sub_100041480(&qword_1019156D0, &type metadata accessor for UUID);

      v19 = Dictionary.debugDescription.getter();
      v21 = v20;

      v22 = sub_10004DEB8(v19, v21, &v30);

      *(v14 + 14) = v22;
      *(v14 + 22) = 2080;
      v23 = NSStringFromBOOL();
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_10004DEB8(v25, v27, &v30);

        *(v14 + 24) = v28;
        _os_log_impl(&_mh_execute_header, v12, v13, "Displaying models : %s, search results: %s, SAR: %s", v14, 0x20u);
        swift_arrayDestroy();

LABEL_17:

        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v2[v3] = 1;
      v2[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_searchAlongRoute] = a2 & 1;
      v5 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_5;
    }
  }
}

void sub_100556988(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_modelToSearchResults;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = sub_1002972F8(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = *(v2 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onFocusResult);
    if (v9)
    {
      v10 = v8;
      sub_1000CD9D4(v9);
      v9(v2, v10);
      sub_1000588AC(v9);
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100556A58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_modelToSearchResults;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v26 = *(v12 + 56);
    v27 = v13;
    v15 = (v12 - 8);
    v25[1] = v12;
    v13(v8, v14, v4, v6);
    while (1)
    {
      swift_beginAccess();
      v17 = *(v2 + v11);
      if (*(v17 + 16) && (v18 = sub_1002972F8(v8), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);
        swift_endAccess();
        v21 = *v15;
        v22 = v20;
        v21(v8, v4);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25[0] = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = v28;
      }

      else
      {
        swift_endAccess();
        (*v15)(v8, v4);
      }

      v14 += v26;
      if (!--v10)
      {
        break;
      }

      v27(v8, v14, v4, v16);
    }
  }

  if (v9 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  v23 = *(v2 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onVisibleResultsChange);
  if (v23)
  {

    v23(v2, v9);
    sub_1000588AC(v23);
  }
}

uint64_t sub_100556CCC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100556D4C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100556DC4(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 mapItem];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100557190(v12);
    dispatch thunk of ListCellViewModel.id.getter();
    v15 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_modelToSearchResults;
    swift_beginAccess();
    v16 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27[0] = *(v2 + v15);
    *(v2 + v15) = 0x8000000000000000;
    sub_10012BA34(v16, v11, isUniquelyReferenced_nonNull_native);
    v18 = *(v8 + 8);
    v18(v11, v7);
    *(v2 + v15) = *&v27[0];
    swift_endAccess();
    if ((*(v2 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_searchAlongRoute) & 1) == 0)
    {
      v19 = [objc_allocWithZone(_MKQuickRouteManager) init];
      [v19 setMapItem:v13];
      [v19 setDelegate:v2];
      [v19 setView:v2];
      dispatch thunk of ListCellViewModel.id.getter();
      v20 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_routeETAManager;
      swift_beginAccess();
      v21 = v19;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v27[0] = *(v2 + v20);
      *(v2 + v20) = 0x8000000000000000;
      sub_10012BA20(v21, v11, v22);
      v18(v11, v7);
      *(v2 + v20) = *&v27[0];
      swift_endAccess();
    }
  }

  else
  {
    v28 = 0;
    memset(&v27[3], 0, 32);
    v23 = [a1 name];
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v25 = type metadata accessor for BottomAccessoryViewModel();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    UUID.init()();
    type metadata accessor for ListCellViewModel();
    swift_allocObject();
    return ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  }

  return v14;
}

id sub_100557190(void *a1)
{
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v133 = v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v139 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v7 - 8);
  v138 = v126 - v8;
  v131 = type metadata accessor for RichTextViewModel();
  v9 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v128 = v126 - v12;
  __chkstk_darwin(v13);
  v127 = v126 - v14;
  __chkstk_darwin(v15);
  v129 = v126 - v16;
  v17 = type metadata accessor for RichTextType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v144 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v126 - v21;
  sub_1000CE6B8(&qword_10190A070);
  v23 = *(v9 + 72);
  v132 = v9;
  v24 = *(v9 + 80);
  v145 = v23;
  v147 = (v24 + 32) & ~v24;
  v25 = swift_allocObject();
  v137 = xmmword_1011E1D30;
  *(v25 + 16) = xmmword_1011E1D30;
  v26 = *(v18 + 104);
  v27 = v17;
  v143 = v18 + 104;
  v142 = v26;
  (v26)(v22, enum case for RichTextType.title(_:), v17);
  v146 = a1;
  v28 = [a1 name];
  if (v28)
  {
    v29 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  v141 = *(v18 + 8);
  v141(v22, v17);
  v30 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
  v32 = v30[2];
  v31 = v30[3];
  if (v32 >= v31 >> 1)
  {
    v30 = sub_100356AC0((v31 > 1), v32 + 1, 1, v30);
  }

  v30[2] = v32 + 1;
  v30[v32 + 4] = v25;
  v154 = v30;
  if (*(v140 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_searchAlongRoute) == 1)
  {
    v33 = v146;
    v34 = [v146 _maps_detourTextForIdiom:3];
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = v147;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1011E1D60;
      v140 = v37;
      v126[1] = v37 + v36;
      v38 = enum case for RichTextType.line(_:);
      v39 = v144;
      v40 = v142;
      v142();
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      v41 = v141;
      v141(v39, v17);
      v42 = v38;
      v43 = v146;
      (v40)(v39, v42, v17);
      v44 = [v43 _maps_addressFormattedAsStreetOnly];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = v17;
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      v41(v39, v17);
      v46 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
      v48 = v46[2];
      v47 = v46[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v46 = sub_100356AC0((v47 > 1), v48 + 1, 1, v46);
      }
    }

    else
    {
      v80 = swift_allocObject();
      *(v80 + 16) = v137;
      v81 = v144;
      (v142)(v144, enum case for RichTextType.line(_:), v27);
      v82 = [v33 _maps_addressFormattedAsStreetOnly];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v140 = v80;
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      v141(v81, v27);
      v46 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
      v48 = v46[2];
      v83 = v46[3];
      v49 = v48 + 1;
      if (v48 >= v83 >> 1)
      {
        v46 = sub_100356AC0((v83 > 1), v48 + 1, 1, v46);
      }

      v45 = v27;
      v43 = v146;
    }
  }

  else
  {
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1011E1D60;
    v140 = v50;
    v51 = enum case for RichTextType.line(_:);
    v52 = v144;
    v53 = v142;
    v142();
    v54 = [v146 _maps_addressFormattedAsStreetOnly];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    v55 = v141;
    v141(v52, v17);
    (v53)(v52, v51, v17);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v155._object = 0x80000001012415B0;
    v56._countAndFlagsBits = 0x74616C75636C6143;
    v56._object = 0xAE00A680E2676E69;
    v57._countAndFlagsBits = 0xD000000000000027;
    v57._object = 0x8000000101241580;
    v155._countAndFlagsBits = 0xD000000000000043;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, qword_1019600D8, v56, v155);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    v55(v52, v17);
    v46 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
    v48 = v46[2];
    v58 = v46[3];
    v49 = v48 + 1;
    v45 = v17;
    if (v48 >= v58 >> 1)
    {
      v46 = sub_100356AC0((v58 > 1), v48 + 1, 1, v46);
    }

    v43 = v146;
  }

  v46[2] = v49;
  v46[v48 + 4] = v140;

  sub_100247A0C(v59);
  if (!MapsFeature_IsEnabled_RealTimeEVCharger() || (v60 = [v43 _realTimeAvailableEVCharger]) == 0)
  {
    v60 = [v43 _chargerNumberString];
    if (!v60)
    {
      v63 = [objc_opt_self() shouldShowAppleRatingsForMapItem:v43];
      v64 = v131;
      if (v63)
      {
        result = [v43 _geoMapItem];
        if (!result)
        {
          goto LABEL_73;
        }

        v66 = [result _overallAppleRating];
        swift_unknownObjectRelease();
        if (v66)
        {

          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v67 = qword_1019600D8;
          v68 = String._bridgeToObjectiveC()();
          v69 = String._bridgeToObjectiveC()();
          v70 = [v67 localizedStringForKey:v68 value:v69 table:0];

          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          sub_1000CE6B8(&unk_10190D5C0);
          v74 = swift_allocObject();
          *(v74 + 1) = v137;
          [v43 _normalizedUserRatingScore];
          v76 = LODWORD(v75) & 0x7FFFFFFF;
          if ((LODWORD(v75) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            __break(1u);
          }

          else
          {
            v76 = 3741319169;
            if (v75 > -9.2234e18)
            {
              if (v75 < 9.2234e18)
              {
                v74[7] = &type metadata for Int;
                v74[8] = &protocol witness table for Int;
                v74[4] = v75;
                static String.localizedStringWithFormat(_:_:)();

                v77 = v144;
                (v142)(v144, enum case for RichTextType.firstPartyRating(_:), v45);
                RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

                v141(v77, v45);
                v74 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
                v71 = v74[2];
                v76 = v74[3];
                v73 = v71 + 1;
                if (v71 < v76 >> 1)
                {
LABEL_27:
                  v78 = v145;
                  v79 = v129;
LABEL_49:
                  v74[2] = v73;
                  (*(v132 + 32))(v74 + v147 + v71 * v78, v79, v64);
LABEL_50:
                  v108 = [v43 searchResultsHoursWithConciseStyle:1 openAt:0];
                  if (v108)
                  {
                    v109 = v108;
                    v110 = [v108 localizedOpenState];
                    if (!v110)
                    {

                      if (v74[2])
                      {
                        goto LABEL_58;
                      }

                      goto LABEL_60;
                    }

                    v111 = v110;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();

                    v112 = v144;
                    (v142)(v144, enum case for RichTextType.hours(_:), v45);
                    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

                    v141(v112, v45);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v74 = sub_100355BD8(0, v74[2] + 1, 1, v74);
                    }

                    v114 = v74[2];
                    v113 = v74[3];
                    if (v114 >= v113 >> 1)
                    {
                      v74 = sub_100355BD8(v113 > 1, v114 + 1, 1, v74);
                    }

                    v74[2] = v114 + 1;
                    (*(v132 + 32))(v74 + v147 + v114 * v145, v130, v64);
                  }

                  if (v74[2])
                  {
LABEL_58:
                    sub_1000CE6B8(&unk_1019157F0);
                    inited = swift_initStackObject();
                    *(inited + 16) = v137;
                    *(inited + 32) = v74;
                    sub_100247A0C(inited);
LABEL_61:
                    v62 = 0;
                    goto LABEL_62;
                  }

LABEL_60:

                  goto LABEL_61;
                }

LABEL_71:
                v74 = sub_100355BD8(v76 > 1, v73, 1, v74);
                goto LABEL_27;
              }

LABEL_70:
              __break(1u);
              goto LABEL_71;
            }
          }

          __break(1u);
          goto LABEL_70;
        }
      }

      result = [v43 _localizedSampleSizeForUserRatingScoreString];
      if (result)
      {
        v84 = result;
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        sub_1003861CC(v85, v87);
        if (v88)
        {
          v74 = _swiftEmptyArrayStorage;
          goto LABEL_50;
        }

        v89 = [v43 _reviewsDisplayName];
        if (v89)
        {
          v90 = v89;
          v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v92;
        }

        else
        {
          v91 = 0;
          v93 = 0;
        }

        sub_1000CE6B8(&unk_10190D5C0);
        v94 = swift_allocObject();
        *(v94 + 16) = v137;
        [v43 _normalizedUserRatingScore];
        *(v94 + 56) = &type metadata for Float;
        *(v94 + 64) = &protocol witness table for Float;
        *(v94 + 32) = v95;
        v96 = static String.localizedStringWithFormat(_:_:)();
        v98 = v97;

        v99 = v128;
        if (v93)
        {
          v100 = HIBYTE(v93) & 0xF;
          if ((v93 & 0x2000000000000000) == 0)
          {
            v100 = v91 & 0xFFFFFFFFFFFFLL;
          }

          if (v100)
          {
            v101 = v144;
            (v142)(v144, enum case for RichTextType.thirdPartyRating(_:), v45);
            *&v151 = v96;
            *(&v151 + 1) = v98;
            v102._countAndFlagsBits = 32;
            v102._object = 0xE100000000000000;
            String.append(_:)(v102);
            v103._countAndFlagsBits = v91;
            v103._object = v93;
            String.append(_:)(v103);

            v104 = v127;
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            v141(v101, v45);
            v74 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
            v71 = v74[2];
            v105 = v74[3];
            v73 = v71 + 1;
            if (v71 >= v105 >> 1)
            {
              v74 = sub_100355BD8(v105 > 1, v71 + 1, 1, v74);
            }

            v79 = v104;
LABEL_48:
            v78 = v145;
            v43 = v146;
            goto LABEL_49;
          }
        }

        v106 = v144;
        (v142)(v144, enum case for RichTextType.thirdPartyRating(_:), v45);
        RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

        v141(v106, v45);
        v74 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
        v71 = v74[2];
        v107 = v74[3];
        v73 = v71 + 1;
        if (v71 >= v107 >> 1)
        {
          v74 = sub_100355BD8(v107 > 1, v71 + 1, 1, v74);
        }

        v79 = v99;
        goto LABEL_48;
      }

      __break(1u);
LABEL_73:
      __break(1u);
      return result;
    }
  }

  v61 = v60;

  v62 = 1;
LABEL_62:
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v116 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v116 - 8) + 56))(v138, 1, 1, v116);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  v117 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  if (v62)
  {
    v118 = [v43 _realTimeAvailableEVCharger];
    if (v118)
    {
      v119 = v118;
      sub_1004CE7A4(v118, 0);
      sub_1000CE6B8(&qword_10190D578);
      type metadata accessor for ContextLineAccessoryViewModel();
      *(swift_allocObject() + 16) = v137;
      v120 = *(sub_1000CE6B8(&unk_101926E60) + 48);
      AttributeContainer.init()();
      v121 = v134;
      AttributedString.init(_:attributes:)();
      v121[v120] = 1;
      (*(v135 + 104))(v121, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.realTimeCharger(_:), v136);
      ContextLineAccessoryViewModel.init(type:)();
      dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
    }

    else
    {
      v122 = [v43 _chargerNumberString];
      if (v122)
      {
        v123 = v122;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000CE6B8(&qword_10190D578);
        type metadata accessor for ContextLineAccessoryViewModel();
        *(swift_allocObject() + 16) = v137;
        v124 = *(sub_1000CE6B8(&unk_101926E60) + 48);
        AttributeContainer.init()();
        v125 = v134;
        AttributedString.init(_:attributes:)();
        v125[v124] = 0;
        (*(v135 + 104))(v125, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.realTimeCharger(_:), v136);
        ContextLineAccessoryViewModel.init(type:)();
        dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
      }
    }
  }

  return v117;
}

void sub_10055889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v4 = type metadata accessor for RichTextType();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RichTextViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_searchAlongRoute) & 1) == 0)
  {
    v15 = *(dispatch thunk of ListCellViewModel.richTextViews.getter() + 16);

    if (v15 >= 2)
    {
      v16 = dispatch thunk of ListCellViewModel.richTextViews.getter();
      if (*(v16 + 16) < 2uLL)
      {
        __break(1u);
      }

      else
      {
        v17 = *(v16 + 40);
        v55 = v8;

        v18 = *(v17 + 16);

        if (v18 < 2)
        {
          return;
        }

        v54 = v7;
        if (qword_101906948 == -1)
        {
LABEL_6:
          v19 = type metadata accessor for Logger();
          sub_100021540(v19, qword_1019605C8);
          v20 = v58;

          v21 = v20;
          v22 = Logger.logObject.getter();
          LODWORD(v20) = static os_log_type_t.debug.getter();

          v53 = v20;
          v23 = v20;
          v24 = v22;
          if (os_log_type_enabled(v22, v23))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v52 = v26;
            *v25 = 136315394;
            v59 = v26;
            v60[0] = v57;
            v60[1] = v21;

            sub_1000CE6B8(&unk_10190D010);
            v27 = String.init<A>(describing:)();
            v29 = sub_10004DEB8(v27, v28, &v59);
            v51 = v24;
            v30 = v29;

            *(v25 + 4) = v30;
            *(v25 + 12) = 2080;
            dispatch thunk of ListCellViewModel.id.getter();
            sub_100041480(&qword_101915A98, &type metadata accessor for UUID);
            v31 = dispatch thunk of CustomStringConvertible.description.getter();
            v33 = v32;
            (*(v12 + 8))(v14, v11);
            v34 = sub_10004DEB8(v31, v33, &v59);
            v35 = v55;

            *(v25 + 14) = v34;
            v36 = v58;
            v37 = v51;
            _os_log_impl(&_mh_execute_header, v51, v53, "Received ETA:%s for model: %s", v25, 0x16u);
            swift_arrayDestroy();

            v38 = v54;
            if (v36)
            {
              goto LABEL_8;
            }
          }

          else
          {

            v35 = v55;
            v38 = v54;
            if (v21)
            {
LABEL_8:
              v39 = v56;
              (*(v56 + 104))(v6, enum case for RichTextType.line(_:), v4);
              RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
              (*(v39 + 8))(v6, v4);
              v40 = dispatch thunk of ListCellViewModel.richTextViews.modify();
              v42 = v41;
              v43 = *v41;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v42 = v43;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v43 = sub_1004166F4(v43);
                *v42 = v43;
              }

              if (v43[2] < 2uLL)
              {
                __break(1u);
              }

              else
              {
                v42 = v43[5];
                v45 = swift_isUniquelyReferenced_nonNull_native();
                v43[5] = v42;
                if (v45)
                {
LABEL_12:
                  if (v42[2] >= 2uLL)
                  {
                    (*(v35 + 40))(v42 + *(v35 + 72) + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v10, v38);
LABEL_21:
                    v40(v60, 0);
                    return;
                  }

                  __break(1u);
LABEL_28:
                  v10 = sub_1004166F4(v10);
                  *v43 = v10;
LABEL_16:
                  if (v10[2] < 2uLL)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v43 = v10[5];
                    if (v43[2])
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v48 = v43[2];
                        if (v48)
                        {
LABEL_20:
                          v49 = v48 - 1;
                          (*(v35 + 8))(v43 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * (v48 - 1), v38);
                          v43[2] = v49;
                          v10[5] = v43;
                          goto LABEL_21;
                        }

LABEL_32:
                        __break(1u);
                        return;
                      }

LABEL_31:
                      v43 = sub_1004166E0(v43);
                      v48 = v43[2];
                      if (v48)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_32;
                    }
                  }

                  __break(1u);
                  goto LABEL_31;
                }
              }

              v42 = sub_1004166E0(v42);
              v43[5] = v42;
              goto LABEL_12;
            }
          }

          v40 = dispatch thunk of ListCellViewModel.richTextViews.modify();
          v43 = v46;
          v10 = *v46;
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *v43 = v10;
          if (v47)
          {
            goto LABEL_16;
          }

          goto LABEL_28;
        }
      }

      swift_once();
      goto LABEL_6;
    }
  }
}

id sub_100558F10()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000CE6B8(&qword_101926E50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = sub_1000CE6B8(&qword_101926E58);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel__state;
  v19 = 0;
  v20 = 0x80;
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v10], v9, v6);
  v11 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel__cellModels;
  v19 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101926E30);
  Published.init(initialValue:)();
  (*(v3 + 32))(&v0[v11], v5, v2);
  v0[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_didUpdate] = 0;
  v0[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_searchAlongRoute] = 0;
  v12 = &v0[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onSelectResult];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v0[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onFocusResult];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v0[OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onVisibleResultsChange];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_routeETAManager;
  *&v0[v15] = sub_1000D2480(_swiftEmptyArrayStorage);
  v16 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_modelToSearchResults;
  *&v0[v16] = sub_1000D24A4(_swiftEmptyArrayStorage);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t type metadata accessor for CarSearchResultsViewModel()
{
  result = qword_101926E10;
  if (!qword_101926E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100559314()
{
  sub_100559408();
  if (v0 <= 0x3F)
  {
    sub_1004A2404();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100559408()
{
  if (!qword_101926E20)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101926E20);
    }
  }
}

uint64_t sub_100559458@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1005594A8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ListCellViewModel.id.getter();
  v4 = static UUID.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

void sub_100559598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10055889C(a2, a3, a4);
  }
}

uint64_t sub_1005596A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1005596C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100559718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10055977C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_1005597B8()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019605C8);
  sub_100021540(v0, qword_1019605C8);
  return Logger.init(subsystem:category:)();
}

void sub_100559840(void *a1, void *a2)
{
  v93 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_101926E38);
  __chkstk_darwin(v12 - 8);
  v90 = &v78 - v13;
  v94 = sub_1000CE6B8(&qword_101926E40);
  v89 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v78 - v16;
  __chkstk_darwin(v17);
  v92 = &v78 - v18;
  v20 = __chkstk_darwin(v19);
  v22 = &v78 - v21;
  if (!a2)
  {
LABEL_29:
    __break(1u);
    return;
  }

  [a2 travelTime];
  if (v23 >= 0.0)
  {
    v80 = v9;
    v81 = v8;
    v24 = objc_opt_self();
    [a2 travelTime];
    v25 = [v24 _maps_stringWithRemainingTime:?];
    v83 = v4;
    v82 = v5;
    v87 = v11;
    v88 = v7;
    v86 = v22;
    if (v25)
    {
      v26 = v25;
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v27;
    }

    else
    {
      v79 = 0;
      v84 = 0;
    }

    v28 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_routeETAManager;
    swift_beginAccess();
    v85 = v2;
    v29 = *(v2 + v28);
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v35 = 0;
    v36 = v95;
    v91 = v29;
    while (v33)
    {
LABEL_16:
      v39 = __clz(__rbit64(v33)) | (v35 << 6);
      v40 = *(v29 + 48);
      v41 = type metadata accessor for UUID();
      v42 = *(v41 - 8);
      v43 = v42;
      v44 = v40 + *(v42 + 72) * v39;
      v45 = *(v42 + 16);
      v46 = v92;
      v95 = v41;
      v45(v92, v44);
      v47 = *(*(v29 + 56) + 8 * v39);
      v48 = v94;
      *&v46[*(v94 + 48)] = v47;
      v49 = v46;
      v50 = v96;
      sub_10055A114(v49, v96);
      sub_10055A184(v50, v36);
      v51 = *(v36 + *(v48 + 48));
      v52 = v36;
      v53 = v93;
      if (v93)
      {
        sub_100014C84(0, &qword_101926E48);
        v54 = v47;
        v55 = v53;
        v56 = static NSObject.== infix(_:_:)();

        (*(v43 + 8))(v52, v95);
        v36 = v52;
        if (v56)
        {

          v57 = v90;
          sub_10055A114(v96, v90);
          v58 = v89;
          v59 = *(v89 + 56);
          v60 = v57;
          v61 = 0;
LABEL_20:
          v62 = v94;
          v59(v60, v61, 1, v94);

          v63 = (*(v58 + 48))(v57, 1, v62);
          v65 = v87;
          v64 = v88;
          v66 = v86;
          if (v63 == 1)
          {

            v67 = &qword_101926E38;
            v68 = v57;
          }

          else
          {
            sub_10055A114(v57, v86);
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v70 = aBlock[0];
            __chkstk_darwin(v69);
            *(&v78 - 2) = v66;
            v71 = sub_100555F24(sub_10055A1F4, (&v78 - 4), v70);

            if (v71)
            {
              sub_100014C84(0, &qword_10190B4F0);
              v72 = static OS_dispatch_queue.main.getter();
              v73 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v74 = swift_allocObject();
              v74[2] = v73;
              v74[3] = v71;
              v75 = v84;
              v74[4] = v79;
              v74[5] = v75;
              aBlock[4] = sub_10055A214;
              aBlock[5] = v74;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100039C64;
              aBlock[3] = &unk_101621518;
              v76 = _Block_copy(aBlock);

              static DispatchQoS.unspecified.getter();
              aBlock[0] = _swiftEmptyArrayStorage;
              sub_100041480(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
              sub_1000CE6B8(&unk_10190B500);
              sub_1000DB3BC();
              v77 = v83;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v76);

              (*(v82 + 8))(v64, v77);
              (*(v80 + 8))(v65, v81);
            }

            else
            {
            }

            v67 = &qword_101926E40;
            v68 = v66;
          }

          sub_100024F64(v68, v67);
          return;
        }
      }

      else
      {
        v37 = v47;

        (*(v43 + 8))(v52, v95);
        v36 = v52;
      }

      v33 &= v33 - 1;
      sub_100024F64(v96, &qword_101926E40);
      v29 = v91;
    }

    while (1)
    {
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v38 >= v34)
      {

        v58 = v89;
        v57 = v90;
        v59 = *(v89 + 56);
        v60 = v90;
        v61 = 1;
        goto LABEL_20;
      }

      v33 = *(v30 + 8 * v38);
      ++v35;
      if (v33)
      {
        v35 = v38;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

uint64_t sub_10055A114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101926E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10055A184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101926E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10055A238(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_1000CE6B8(&qword_101926EB0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1002976D8(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_10055A47C()
{
  v1 = OBJC_IVAR____TtC4Maps19CarPlaceCardContext_cardIdentifiersByViewControllers;
  swift_beginAccess();
  v2 = sub_10055A238(@"primary", *(v0 + v1));
  swift_endAccess();
  if (v2)
  {
    type metadata accessor for CarPlaceViewController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = [*(v0 + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem) placeItem];
      *(v4 + OBJC_IVAR____TtC4Maps22CarPlaceViewController_placeItem) = v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_100553318(v5);
    }
  }
}

uint64_t sub_10055A56C(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = [a1 placeItem];
  v5 = type metadata accessor for CarPlaceViewController();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC4Maps22CarPlaceViewController_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC4Maps22CarPlaceViewController_placeItem] = v4;
  type metadata accessor for CarPlaceCardViewModel();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  *&v6[OBJC_IVAR____TtC4Maps22CarPlaceViewController_viewModel] = sub_100555EB4(v7);
  v23.receiver = v6;
  v23.super_class = v5;
  v8 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem] = a1;
  *&v1[OBJC_IVAR____TtC4Maps19CarPlaceCardContext_cardIdentifiersByViewControllers] = _swiftEmptyDictionarySingleton;
  v22.receiver = v1;
  v22.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v22, "init");
  v11 = OBJC_IVAR____TtC4Maps19CarPlaceCardContext_cardIdentifiersByViewControllers;
  swift_beginAccess();
  v12 = *&v10[v11];
  if ((v12 & 0xC000000000000001) == 0)
  {
    v17 = v10;
    v18 = v8;
    goto LABEL_8;
  }

  if (v12 < 0)
  {
    v13 = *&v10[v11];
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v14 = v10;
  v15 = v8;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *&v10[v11] = sub_10055BDB4(v13, result + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v10[v11];
    sub_10055BFFC(v8, @"primary", isUniquelyReferenced_nonNull_native, &v21);
    *&v10[v11] = v21;
    swift_endAccess();
    v20 = [objc_opt_self() defaultCenter];
    [v20 addObserver:v10 selector:"placeItemDidUpdateWithNote:" name:off_1019377A8 object:0];

    return v10;
  }

  __break(1u);
  return result;
}

void sub_10055A7F8()
{
  v1 = v0;
  Notification.object.getter();
  if (v7)
  {
    sub_100014C84(0, &qword_101926EB8);
    if (swift_dynamicCast())
    {
      v2 = [v5 placeCardItem];
      v3 = *(v0 + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem);
      *(v1 + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem) = v2;
      v4 = v2;

      sub_10055A47C();
    }
  }

  else
  {
    sub_100024F64(v6, &unk_101908380);
  }
}

void sub_10055AA54(void *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    goto LABEL_14;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = OBJC_IVAR____TtC4Maps19CarPlaceCardContext_cardIdentifiersByViewControllers;
  swift_beginAccess();
  v9 = sub_10055A238(v7, *(v3 + v8));

  if (!v9)
  {
    swift_endAccess();
    _StringGuts.grow(_:)(52);
    v15._countAndFlagsBits = 0xD000000000000031;
    v15._object = 0x8000000101233210;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a2;
    v16._object = a3;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    goto LABEL_17;
  }

  swift_endAccess();
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      _StringGuts.grow(_:)(41);

      v13._countAndFlagsBits = a2;
      v13._object = a3;
      String.append(_:)(v13);
      goto LABEL_17;
    }
  }

  if (!a1)
  {
    __break(1u);
LABEL_14:
    _StringGuts.grow(_:)(42);

    goto LABEL_17;
  }

  [a1 setContent:v9];
  [a1 setAccessoryType:1];
  type metadata accessor for CarPlaceViewController();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    *(v14 + OBJC_IVAR____TtC4Maps22CarPlaceViewController_actionDelegate + 8) = &off_101621B00;
    swift_unknownObjectWeakAssign();

    return;
  }

LABEL_17:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10055ADB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];

    if (v2)
    {
      v3 = [v2 singleSearchResultItemSource];

      if (v3)
      {
        v4 = v3;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10055AF24(void *a1, void *a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v14 = sub_10055C298;
  v15 = v5;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100039C64;
  v13 = &unk_101621680;
  v6 = _Block_copy(&v10);
  v7 = a1;

  [a2 addPreparation:v6];
  _Block_release(v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_10055C2A0;
  v15 = v8;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100039C64;
  v13 = &unk_1016216A8;
  v9 = _Block_copy(&v10);

  [a2 addAnimations:v9];
  _Block_release(v9);
}

void sub_10055B0D8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v4 = [a2 mapView];
    if (v4)
    {
      v5 = v4;
      [v4 _setApplicationState:4];
    }
  }
}

void sub_10055B15C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10055B1B0();
  }
}

void sub_10055B1B0()
{
  v1 = OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem;
  v2 = [*&v0[OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem] searchResult];
  v3 = v2;
  if (!v2)
  {
    v20 = [*&v0[v1] mapItem];
    if (!v20)
    {
      return;
    }

    v21 = v20;
    v22 = [objc_allocWithZone(SearchResult) initWithMapItem:v20];

    if (!v22)
    {
      return;
    }

    v2 = v22;
  }

  v23 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v3;
  isa = v23;
  if (Strong)
  {
    v7 = [Strong searchPinsManager];

    if (v7)
    {
      v8 = [v7 singleSearchResultItemSource];

      if (v8)
      {
        sub_1000CE6B8(&qword_101908400);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1011E47B0;
        *(v9 + 32) = v23;
        sub_100014C84(0, &qword_10190E160);
        v10 = v23;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v8 setSearchResults:isa];

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_6:

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 mapCameraController];

    if (v13)
    {
      v14 = [(objc_class *)v23 mapItem];
      if (v14)
      {
        v15 = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = v0;
        *(v16 + 24) = v23;
        aBlock[4] = sub_10055C2A8;
        aBlock[5] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002ABAC8;
        aBlock[3] = &unk_1016216F8;
        v17 = _Block_copy(aBlock);
        v18 = v23;
        v19 = v0;

        [v13 frameMapItem:v15 animated:1 completion:v17];

        _Block_release(v17);
        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_10055B534(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v4 = [a2 mapSelectionManager];
    if (v4)
    {
      v5 = v4;
      [v4 clearSelection];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10055B6E8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_101906950 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100021540(v4, qword_1019605E0);
    v5 = a2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "CarPlay place card is dismissing, will notify iOS of change with place item %@", v8, 0xCu);
      sub_100024F64(v9, &qword_1019144F0);
    }

    v11 = [objc_opt_self() sharedInstance];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 platformController];

      if (v13)
      {
        v14 = [objc_allocWithZone(PlaceCardSynchronizationNotificationInfo) initWithPlaceCardItem:v5 platformController:v13];

        v15 = [objc_opt_self() defaultCenter];
        [v15 postNotificationName:off_1019377A0 object:v14];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10055B98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong searchPinsManager];

    if (v6)
    {
      [v6 selectAndShowSearchResult:a3 animated:1];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10055BAE0()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019605E0);
  sub_100021540(v0, qword_1019605E0);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_10055BB68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000CE6B8(&unk_10190BB50);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100014C84(0, &qword_10190D2F0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100014C84(0, &qword_1019209A8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100127DBC(v12 + 1, 1);
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
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10055BDB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000CE6B8(&qword_10190BA80);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100014C84(0, &unk_10190B9E0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000CE6B8(&qword_101926EB0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10012A300(v12 + 1, 1);
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
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_10055BFFC(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = *a4;
  v8 = sub_1002976D8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10012A300(v13, a3 & 1);
      v8 = sub_1002976D8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100014C84(0, &unk_10190B9E0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_10012E768();
      v8 = v16;
    }
  }

  v18 = *a4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_10055C174(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v8[4] = sub_10055C288;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100039C64;
  v8[3] = &unk_1016215E0;
  v6 = _Block_copy(v8);
  v7 = v3;

  [a1 addPreparation:v6];
  _Block_release(v6);
}

uint64_t sub_10055C338()
{
  result = type metadata accessor for CarPlaceRowItem.ContentType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10055C3A4()
{
  result = sub_10055C4F0(319, &qword_101926FD8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WatchPlaceNavAndPhoneViewModel();
    if (v2 <= 0x3F)
    {
      result = sub_10055C4F0(319, &qword_101926FE0);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for WatchPlaceRatingRowViewModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for WatchPlaceHoursViewModel();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for WatchPlaceRibbonItemViewModel();
            if (v6 <= 0x3F)
            {
              result = sub_10055C4F0(319, &unk_101926FE8);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for WatchPlaceAccoladesViewModel();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for WatchPlaceAcceptsPaymentsViewModel();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for CarDetailRowViewModel(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
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

  return result;
}

uint64_t sub_10055C4F0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10055C54C()
{
  v1 = v0;
  v2 = type metadata accessor for CarDetailRowViewModel(0);
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WatchPlaceAcceptsPaymentsViewModel();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WatchPlaceAccoladesViewModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CarPlaceRowItem.ContentType(0);
  __chkstk_darwin(v12);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10055CB48(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v24 = v29;
        (*(v29 + 32))(v7, v14, v5);
        v25._countAndFlagsBits = WatchPlaceAcceptsPaymentsViewModel.title.getter();
        strcpy(v32, "payments_item:");
        HIBYTE(v32[1]) = -18;
        String.append(_:)(v25);

        v22 = v32[0];
        (*(v24 + 8))(v7, v5);
        return v22;
      }

      if (EnumCaseMultiPayload != 9)
      {
        sub_10055CBAC(v14, v4);
        v27._countAndFlagsBits = UUID.uuidString.getter();
        v32[0] = 0xD000000000000010;
        v32[1] = 0x8000000101241760;
        String.append(_:)(v27);

        v22 = v32[0];
        sub_10055CC10(v4, type metadata accessor for CarDetailRowViewModel);
        return v22;
      }

      v20._countAndFlagsBits = *v14;
      v21 = v14[1];
      v32[0] = 0x65646165685F7665;
      v32[1] = 0xEF3A6D6574695F72;
      v20._object = v21;
      String.append(_:)(v20);
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          (*(v9 + 32))(v11, v14, v8);
          v26._countAndFlagsBits = WatchPlaceAccoladesViewModel.title.getter();
          strcpy(v32, "accolade_item:");
          HIBYTE(v32[1]) = -18;
          String.append(_:)(v26);

          v22 = v32[0];
          (*(v9 + 8))(v11, v8);
          return v22;
        }

        sub_10005E7BC(v14, v32);
        sub_10005E838(v32, v33);
        v16 = dispatch thunk of WatchPlaceAddressViewModelProviding.titleText.getter();
        v18 = 0x5F73736572646461;
        goto LABEL_17;
      }

      v23._countAndFlagsBits = WatchPlaceRibbonItemViewModel.title.getter();
      strcpy(v32, "ribbon_item:");
      BYTE5(v32[1]) = 0;
      HIWORD(v32[1]) = -5120;
      String.append(_:)(v23);
    }

    return v32[0];
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10055CC10(v14, type metadata accessor for CarPlaceRowItem.ContentType);
      return 0xD000000000000013;
    }

    sub_10055CC10(v14, type metadata accessor for CarPlaceRowItem.ContentType);
    v19 = 0x726564616568;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10005E7BC(v14, v32);
      sub_10005E838(v32, v33);
      v16 = dispatch thunk of WatchPlaceAmenityItemViewModelProviding.title.getter();
      v18 = 0x5F7974696E656D61;
LABEL_17:
      v30 = v18;
      v31 = 0xED00003A6D657469;
      String.append(_:)(*&v16);

      v22 = v30;
      sub_10004E3D0(v32);
      return v22;
    }

    if (EnumCaseMultiPayload != 3)
    {
      sub_10055CC10(v14, type metadata accessor for CarPlaceRowItem.ContentType);
      return 0x74695F7372756F68;
    }

    sub_10055CC10(v14, type metadata accessor for CarPlaceRowItem.ContentType);
    v19 = 0x676E69746172;
  }

  return v19 & 0xFFFFFFFFFFFFLL | 0x695F000000000000;
}

uint64_t sub_10055CB20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10055C54C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10055CB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlaceRowItem.ContentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10055CBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarDetailRowViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10055CC10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10055CC9C()
{
  v1 = type metadata accessor for CarLabelViewModel();
  __chkstk_darwin(v1 - 8);
  sub_10005E838(v0, v0[3]);
  dispatch thunk of WatchPlaceAddressViewModelProviding.titleText.getter();
  CarLabelViewModel.init(image:label:)();
  return CarLabel.init(model:)();
}

uint64_t sub_10055CD6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v59 = a4;
  v5 = type metadata accessor for RouteCell.RouteCellType();
  v46 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for RouteCell();
  v50 = *(v58 - 8);
  __chkstk_darwin(v58);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GuideCell.GuideCellType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GuideCell();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000CE6B8(&qword_101927018);
  __chkstk_darwin(v55);
  v57 = &v46 - v14;
  v15 = sub_1000CE6B8(&qword_101927020);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v56 = sub_1000CE6B8(&qword_101927028);
  __chkstk_darwin(v56);
  v19 = &v46 - v18;
  v20 = type metadata accessor for PlaceCell();
  v21 = *(v20 - 8);
  v23 = __chkstk_darwin(v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16))
  {
    if (*(a1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16) == 1)
    {
      (*(v9 + 104))(v11, enum case for GuideCell.GuideCellType.small(_:), v8, v23);
      v61 = type metadata accessor for LibraryListSavedItemCellModel();
      v62 = sub_10055E808(&qword_101927030, type metadata accessor for LibraryListSavedItemCellModel);
      v60 = a1;
      v26 = swift_allocObject();
      v27 = v53;
      v28 = v54;
      v26[2] = a1;
      v26[3] = v27;
      v26[4] = v28;
      v29 = a1;

      v30 = v49;
      GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();
      v32 = v51;
      v31 = v52;
      (*(v51 + 16))(v17, v30, v52);
      swift_storeEnumTagMultiPayload();
      sub_10055E808(&qword_10190D640, &type metadata accessor for PlaceCell);
      sub_10055E808(&qword_101911FB0, &type metadata accessor for GuideCell);
      _ConditionalContent<>.init(storage:)();
      sub_10055E850(v19, v57);
      swift_storeEnumTagMultiPayload();
      sub_10055E71C();
      sub_10055E808(&qword_101923F48, &type metadata accessor for RouteCell);
      _ConditionalContent<>.init(storage:)();
      sub_10055E8C0(v19);
      return (*(v32 + 8))(v30, v31);
    }

    else
    {
      (*(v46 + 104))(v47, enum case for RouteCell.RouteCellType.small(_:), v5, v23);
      v61 = type metadata accessor for LibraryListSavedItemCellModel();
      v62 = sub_10055E808(&qword_101927030, type metadata accessor for LibraryListSavedItemCellModel);
      v60 = a1;
      v39 = swift_allocObject();
      v40 = v53;
      v41 = v54;
      v39[2] = a1;
      v39[3] = v40;
      v39[4] = v41;
      v42 = a1;

      v43 = v48;
      RouteCell.init(_:model:tapHandler:)();
      v44 = v50;
      v45 = v58;
      (*(v50 + 16))(v57, v43, v58);
      swift_storeEnumTagMultiPayload();
      sub_10055E71C();
      sub_10055E808(&qword_101923F48, &type metadata accessor for RouteCell);
      _ConditionalContent<>.init(storage:)();
      return (*(v44 + 8))(v43, v45);
    }
  }

  else
  {
    v34 = v22;
    v61 = type metadata accessor for LibraryListSavedItemCellModel();
    v62 = sub_10055E808(&qword_101927030, type metadata accessor for LibraryListSavedItemCellModel);
    v60 = a1;
    v35 = swift_allocObject();
    v36 = v53;
    v37 = v54;
    v35[2] = a1;
    v35[3] = v36;
    v35[4] = v37;
    v38 = a1;

    PlaceCell.init(model:tapHandler:)();
    (*(v21 + 16))(v17, v25, v34);
    swift_storeEnumTagMultiPayload();
    sub_10055E808(&qword_10190D640, &type metadata accessor for PlaceCell);
    sub_10055E808(&qword_101911FB0, &type metadata accessor for GuideCell);
    _ConditionalContent<>.init(storage:)();
    sub_10055E850(v19, v57);
    swift_storeEnumTagMultiPayload();
    sub_10055E71C();
    sub_10055E808(&qword_101923F48, &type metadata accessor for RouteCell);
    _ConditionalContent<>.init(storage:)();
    sub_10055E8C0(v19);
    return (*(v21 + 8))(v25, v34);
  }
}

uint64_t sub_10055D6D4()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item;
  v3 = *(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item);
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 title];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v3;
      v8 = v2;
      v9 = 1;
    }

    else
    {
      v16 = v3;
      v17 = [v16 userProvidedName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v22 = [v16 userProvidedName];
      }

      else
      {
        v22 = [v16 routeName];
      }

      v23 = v22;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v3;
      v8 = v2;
      v9 = 2;
    }

    sub_100200814(v7, v8, v9);
  }

  else
  {
    v10 = v3;
    v11 = [swift_unknownObjectRetain() customName];
    if (v11)
    {
      v12 = v11;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {

        swift_unknownObjectRelease();
        return v6;
      }
    }

    v25 = [v10 name];
    if (v25)
    {
      v26 = v25;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      return 0;
    }
  }

  return v6;
}

void *sub_10055D8CC()
{
  v1 = type metadata accessor for AttributedString();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RichTextType();
  v6 = *(v5 - 8);
  v90 = v5;
  v91 = v6;
  __chkstk_darwin(v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v86 - v10;
  v12 = type metadata accessor for RichTextViewModel();
  v88 = *(v12 - 8);
  v89 = v12;
  __chkstk_darwin(v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v86 - v16;
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v21 = &v86 - v20;
  v24 = __chkstk_darwin(v22);
  v26 = &v86 - v25;
  v27 = v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item;
  v28 = *(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item);
  if (!*(v27 + 16))
  {
    v41 = v23;
    v42 = v28;
    v43 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v42 isPlaceHolderPlace:0];
    if (!v43)
    {

      return _swiftEmptyArrayStorage;
    }

    v44 = v43;
    v45 = [v43 _firstLocalizedCategoryName];
    if (v45)
    {
      v46 = v45;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v50 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {
        v51 = v90;
        v52 = v91;
        (*(v91 + 104))(v11, enum case for RichTextType.category(_:), v90);
        RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

        (*(v52 + 8))(v11, v51);
        v53 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
        v55 = v53[2];
        v54 = v53[3];
        if (v55 >= v54 >> 1)
        {
          v53 = sub_100355BD8(v54 > 1, v55 + 1, 1, v53);
        }

        v53[2] = v55 + 1;
        (*(v88 + 32))(v53 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v55, v26, v89);
        goto LABEL_22;
      }
    }

    v53 = _swiftEmptyArrayStorage;
LABEL_22:
    v66 = [v42 _resultSnippetLocationString];
    if (v66)
    {
      v67 = v66;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v71 = v68 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
        v72 = v90;
        v73 = v91;
        (*(v91 + 104))(v11, enum case for RichTextType.line(_:), v90);
        RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

        (*(v73 + 8))(v11, v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_100355BD8(0, v53[2] + 1, 1, v53);
        }

        v75 = v53[2];
        v74 = v53[3];
        if (v75 >= v74 >> 1)
        {
          v53 = sub_100355BD8(v74 > 1, v75 + 1, 1, v53);
        }

        v53[2] = v75 + 1;
        (*(v88 + 32))(v53 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v75, v21, v89);
      }

      else
      {
      }
    }

    v76 = v91;
    if (!v53[2])
    {
      v77 = [v44 _addressFormattedAsShortenedAddress];
      if (v77)
      {
        v78 = v77;
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = HIBYTE(v81) & 0xF;
        if ((v81 & 0x2000000000000000) == 0)
        {
          v82 = v79 & 0xFFFFFFFFFFFFLL;
        }

        if (v82)
        {
          v83 = v90;
          (*(v76 + 104))(v11, enum case for RichTextType.address(_:), v90);
          RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

          (*(v76 + 8))(v11, v83);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_100355BD8(0, v53[2] + 1, 1, v53);
          }

          v85 = v53[2];
          v84 = v53[3];
          if (v85 >= v84 >> 1)
          {
            v53 = sub_100355BD8(v84 > 1, v85 + 1, 1, v53);
          }

          v53[2] = v85 + 1;
          (*(v88 + 32))(v53 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v85, v41, v89);
        }

        else
        {
        }
      }
    }

    sub_1000CE6B8(&unk_1019157F0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1011E1D30;
    *(v37 + 32) = v53;

    return v37;
  }

  v29 = *(v27 + 8);
  if (*(v27 + 16) == 1)
  {
    v30 = v90;
    v31 = v91;
    (*(v91 + 104))(v11, enum case for RichTextType.line(_:), v90, v24);
    v32 = v28;
    v33 = [v28 subtitle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v31 + 8))(v11, v30);
    v34 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
    v36 = v34[2];
    v35 = v34[3];
    if (v36 >= v35 >> 1)
    {
      v34 = sub_100355BD8(v35 > 1, v36 + 1, 1, v34);
    }

    v34[2] = v36 + 1;
    (*(v88 + 32))(v34 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v36, v17, v89);
    sub_1000CE6B8(&unk_1019157F0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1011E1D30;
    *(v37 + 32) = v34;
    v38 = v32;
    v39 = v29;
    v40 = 1;
LABEL_18:
    sub_100200814(v38, v39, v40);
    return v37;
  }

  v87 = v28;
  v56 = v28;
  [v56 distance];
  v57 = [v56 elevationProfile];
  sub_1000D0EC4(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v59 = sub_100C86C80(v57, isa);

  v60 = v90;
  v61 = v91;
  (*(v91 + 104))(v8, enum case for RichTextType.line(_:), v90);
  result = [v59 attributedString];
  if (result)
  {
    AttributedString.init(_:)();
    RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
    (*(v2 + 8))(v4, v1);
    (*(v61 + 8))(v8, v60);
    v63 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
    v65 = v63[2];
    v64 = v63[3];
    if (v65 >= v64 >> 1)
    {
      v63 = sub_100355BD8(v64 > 1, v65 + 1, 1, v63);
    }

    v63[2] = v65 + 1;
    (*(v88 + 32))(v63 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v65, v14, v89);
    sub_1000CE6B8(&unk_1019157F0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1011E1D30;
    *(v37 + 32) = v63;

    v38 = v87;
    v39 = v29;
    v40 = 2;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void sub_10055E39C(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item);
  v4 = *(v1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [v5 image];
      a1[3] = &type metadata for MapsStaticImageProvider;
      a1[4] = sub_10017F0D4();
      sub_100200814(v5, v4, 1);
      *a1 = v7;
      a1[1] = 0;
      return;
    }

    goto LABEL_7;
  }

  v8 = v5;
  swift_unknownObjectRetain();
  v9 = [v8 _styleAttributes];
  if (!v9)
  {
    v10 = [objc_opt_self() addressMarkerStyleAttributes];
    if (!v10)
    {
      goto LABEL_13;
    }

LABEL_10:
    v13 = v10;
    swift_unknownObjectRelease();
    a1[3] = &type metadata for StyleAttributesImageProvider;
    a1[4] = sub_10017F24C();

    *a1 = v13;
    goto LABEL_11;
  }

  v10 = [v8 _styleAttributes];
  if (v10)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  v11 = [objc_opt_self() customSavedRouteStyleAttributes];
  if (v11)
  {
    v12 = v11;
    a1[3] = &type metadata for StyleAttributesImageProvider;
    a1[4] = sub_10017F24C();
    *a1 = v12;
LABEL_11:
    *(a1 + 4) = 0;
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void *sub_10055E584()
{
  if (sub_1004BAC68()[2])
  {
    sub_1000CE6B8(&unk_10190D580);
    type metadata accessor for TrailingAccessoryViewModel();
    v0 = swift_allocObject();
    *(v0 + 1) = xmmword_1011E1D30;
    static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();
  }

  else
  {
    v0 = _swiftEmptyArrayStorage;
  }

  return v0;
}

uint64_t sub_10055E67C@<X0>(uint64_t *a1@<X8>)
{
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10055E71C()
{
  result = qword_101927038;
  if (!qword_101927038)
  {
    sub_1000D6664(&qword_101927028);
    sub_10055E808(&qword_10190D640, &type metadata accessor for PlaceCell);
    sub_10055E808(&qword_101911FB0, &type metadata accessor for GuideCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927038);
  }

  return result;
}

uint64_t sub_10055E808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10055E850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101927028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10055E8C0(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101927028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10055E928()
{
  result = qword_101927040;
  if (!qword_101927040)
  {
    sub_1000D6664(&qword_101927048);
    sub_10055E71C();
    sub_10055E808(&qword_101923F48, &type metadata accessor for RouteCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927040);
  }

  return result;
}

uint64_t sub_10055EA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_1000CE6B8(&qword_10191DF90);
  __chkstk_darwin(v37);
  v33 = &v30 - v6;
  v35 = sub_1000CE6B8(&qword_101927050);
  __chkstk_darwin(v35);
  v36 = &v30 - v7;
  v8 = sub_1000CE6B8(&qword_101927058);
  __chkstk_darwin(v8);
  v10 = (&v30 - v9);
  v34 = sub_1000CE6B8(&qword_101927060);
  __chkstk_darwin(v34);
  v12 = &v30 - v11;
  v13 = sub_1000CE6B8(&qword_10191D860);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  swift_getKeyPath();
  v39 = a1;
  sub_100564DD8(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(a1 + 48);
  if (v17)
  {
    if (v17 == 1)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v18 = Text.init(_:tableName:bundle:comment:)();
      v20 = v19;
      v39 = v18;
      v40 = v19;
      v22 = v21 & 1;
      v41 = v21 & 1;
      v42 = v23;
      *v5 = 0xD000000000000011;
      v5[1] = 0x80000001012417A0;
      v25 = v31;
      v24 = v32;
      (*(v31 + 104))(v5, enum case for MapsDesignAccessibilityString.view(_:), v32);
      v26 = v33;
      View.mapsDesignAXID(_:)();
      (*(v25 + 8))(v5, v24);
      sub_1000F0A40(v18, v20, v22);

      sub_1000D2DFC(v26, v36, &qword_10191DF90);
      swift_storeEnumTagMultiPayload();
      sub_10055F27C();
      sub_1001429AC();
      _ConditionalContent<>.init(storage:)();
      v27 = v26;
      v28 = &qword_10191DF90;
    }

    else
    {
      *v10 = v17;
      v10[1] = sub_10055F388;
      v10[2] = a1;
      v10[3] = sub_10055F390;
      v10[4] = a1;
      swift_storeEnumTagMultiPayload();
      sub_100100D84(v17);
      swift_retain_n();
      sub_100100D84(v17);
      sub_1000414C8(&qword_10191D870, &qword_10191D860);
      sub_10055F334();
      swift_retain_n();
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v12, v36, &qword_101927060);
      swift_storeEnumTagMultiPayload();
      sub_10055F27C();
      sub_1001429AC();
      _ConditionalContent<>.init(storage:)();
      sub_100100D94(v17);

      v27 = v12;
      v28 = &qword_101927060;
    }

    return sub_100024F64(v27, v28);
  }

  else
  {
    ProgressView<>.init<>()();
    (*(v14 + 16))(v10, v16, v13);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10191D870, &qword_10191D860);
    sub_10055F334();
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v12, v36, &qword_101927060);
    swift_storeEnumTagMultiPayload();
    sub_10055F27C();
    sub_1001429AC();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v12, &qword_101927060);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_10055F0E4(uint64_t a1)
{
  swift_getKeyPath();
  sub_100564DD8(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(a1 + 16);
  if (v3)
  {

    v3(a1);
    return sub_1000588AC(v3);
  }

  return result;
}

uint64_t sub_10055F1AC(uint64_t a1)
{
  swift_getKeyPath();
  sub_100564DD8(&qword_101926CD0, type metadata accessor for CarPlaceCardViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(a1 + 32);
  if (v3)
  {

    v3(a1);
    return sub_1000588AC(v3);
  }

  return result;
}

unint64_t sub_10055F27C()
{
  result = qword_101927068;
  if (!qword_101927068)
  {
    sub_1000D6664(&qword_101927060);
    sub_1000414C8(&qword_10191D870, &qword_10191D860);
    sub_10055F334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927068);
  }

  return result;
}

unint64_t sub_10055F334()
{
  result = qword_101927070;
  if (!qword_101927070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927070);
  }

  return result;
}

unint64_t sub_10055F3A8()
{
  result = qword_101927078;
  if (!qword_101927078)
  {
    sub_1000D6664(&qword_101927080);
    sub_10055F27C();
    sub_1001429AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927078);
  }

  return result;
}

uint64_t sub_10055F450@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = sub_1000CE6B8(&qword_101927088);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v15 = sub_1000CE6B8(&qword_101927090);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v14 - v7;
  v18 = *v1;
  v9 = swift_allocObject();
  v10 = *(v1 + 1);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = v1[4];
  sub_1000D2DFC(&v18, v17, &qword_101927098);

  static HorizontalAlignment.leading.getter();
  sub_1000CE6B8(&qword_1019270A0);
  sub_1005642D0();
  LazyScrollableVStack.init(alignment:spacing:ignoresTopSafeArea:content:)();
  v17[0] = static Color.clear.getter();
  v11 = sub_1000414C8(&qword_1019270C0, &qword_101927088);
  View.scrollContentBackground<A>(_:)();

  (*(v3 + 8))(v5, v2);
  v17[0] = v2;
  v17[1] = &type metadata for Color;
  v17[2] = v11;
  v17[3] = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v12 = v15;
  View.scrollAccessoryEdge(_:)();
  return (*(v6 + 8))(v8, v12);
}

uint64_t sub_10055F73C(uint64_t *a1)
{
  v6 = *a1;
  v7 = v6;
  v2 = swift_allocObject();
  v3 = *(a1 + 1);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[4];

  sub_1000D2DFC(&v7, v5, &qword_101927098);

  sub_1000CE6B8(&qword_101927098);
  type metadata accessor for UUID();
  sub_1000CE6B8(&qword_1019270B8);
  sub_1000414C8(&qword_1019270C8, &qword_101927098);
  sub_1000414C8(&qword_1019270B0, &qword_1019270B8);
  sub_100564DD8(&qword_1019270D0, type metadata accessor for CarPlaceSection);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10055F900@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a2;
  v140 = a3;
  v124 = sub_1000CE6B8(&qword_1019270D8);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v132 = &v117 - v4;
  v138 = sub_1000CE6B8(&qword_1019270E0);
  __chkstk_darwin(v138);
  v122 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v125 = &v117 - v7;
  v134 = sub_1000CE6B8(&qword_1019270E8);
  __chkstk_darwin(v134);
  v136 = &v117 - v8;
  v120 = sub_1000CE6B8(&qword_1019270F0);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v131 = &v117 - v9;
  v135 = sub_1000CE6B8(&qword_1019270F8);
  __chkstk_darwin(v135);
  v118 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v117 - v12;
  v13 = sub_1000CE6B8(&qword_101927100);
  __chkstk_darwin(v13 - 8);
  v139 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v137 = &v117 - v16;
  v17 = type metadata accessor for CarLabelSectionHeaderViewModel();
  __chkstk_darwin(v17 - 8);
  v128 = type metadata accessor for CarLabelSectionHeader();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1000CE6B8(&qword_101927108);
  __chkstk_darwin(v126);
  v21 = &v117 - v20;
  v22 = sub_1000CE6B8(&qword_101927110);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v117 - v27;
  v29 = sub_1000CE6B8(&qword_101927118);
  __chkstk_darwin(v29 - 8);
  v133 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v34 = &v117 - v32;
  v35 = *(a1 + 8);
  v129 = v36;
  if (v35)
  {
    v117 = &v117 - v32;

    CarLabelSectionHeaderViewModel.init(label:)();
    CarLabelSectionHeader.init(model:)();
    sub_1000CE6B8(&qword_101909FF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E1D60;
    v38 = static Edge.Set.leading.getter();
    *(inited + 32) = v38;
    v39 = static Edge.Set.trailing.getter();
    *(inited + 33) = v39;
    v40 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v38)
    {
      v40 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v39)
    {
      v40 = Edge.Set.init(rawValue:)();
    }

    v41 = v138;
    EdgeInsets.init(_all:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    (*(v127 + 32))(v21, v19, v128);
    v50 = &v21[*(v126 + 36)];
    *v50 = v40;
    *(v50 + 1) = v43;
    *(v50 + 2) = v45;
    *(v50 + 3) = v47;
    *(v50 + 4) = v49;
    v50[40] = 0;
    v51 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_1000F11C4(v21, v25, &qword_101927108);
    v60 = &v25[*(v22 + 36)];
    *v60 = v51;
    *(v60 + 1) = v53;
    *(v60 + 2) = v55;
    *(v60 + 3) = v57;
    *(v60 + 4) = v59;
    v60[40] = 0;
    sub_1000F11C4(v25, v28, &qword_101927110);
    v61 = v28;
    v62 = v117;
    sub_1000F11C4(v61, v117, &qword_101927110);
    (*(v23 + 56))(v62, 0, 1, v22);
  }

  else
  {
    (*(v23 + 56))(&v117 - v32, 1, 1, v22, v33);
    v62 = v34;
    v41 = v138;
  }

  v63 = *(v129 + 16);
  if (*(v129 + 24) == 1)
  {
    v144 = *(v129 + 16);
    v64 = v130;
    v150 = *v130;
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    v66 = *(v64 + 1);
    *(v65 + 24) = *v64;
    *(v65 + 40) = v66;
    *(v65 + 56) = v64[4];
    swift_bridgeObjectRetain_n();
    sub_1000D2DFC(&v150, v143, &qword_101927098);

    sub_1000CE6B8(&qword_101927120);
    sub_1000CE6B8(&qword_101927248);
    sub_1000414C8(&qword_101927130, &qword_101927120);
    sub_100564ECC();
    sub_100564DD8(&qword_101927228, type metadata accessor for CarPlaceRowItem);
    ForEach<>.init(_:content:)();
    sub_1000CE6B8(&qword_101909FF0);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_1011E1D60;
    v68 = static Edge.Set.leading.getter();
    *(v67 + 32) = v68;
    v69 = static Edge.Set.trailing.getter();
    *(v67 + 33) = v69;
    v70 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v68)
    {
      v70 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v71 = Edge.Set.init(rawValue:)();
    v72 = v137;
    if (v71 != v69)
    {
      v70 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = v118;
    (*(v119 + 32))(v118, v131, v120);
    v82 = v81 + *(v135 + 36);
    *v82 = v70;
    *(v82 + 8) = v74;
    *(v82 + 16) = v76;
    *(v82 + 24) = v78;
    *(v82 + 32) = v80;
    *(v82 + 40) = 0;
    v83 = &qword_1019270F8;
    v84 = v121;
    sub_1000F11C4(v81, v121, &qword_1019270F8);
    sub_1000D2DFC(v84, v136, &qword_1019270F8);
    swift_storeEnumTagMultiPayload();
    sub_10056503C(&qword_101927230, &qword_1019270F8, &unk_101210B88, sub_100564E20);
    sub_10056503C(&qword_101927280, &qword_1019270E0, &unk_101210B70, sub_1005650C0);
    _ConditionalContent<>.init(storage:)();
    v85 = v84;
  }

  else
  {
    v144 = *(v129 + 16);
    v86 = v130;
    v150 = *v130;
    v87 = swift_allocObject();
    v88 = *(v86 + 1);
    *(v87 + 16) = *v86;
    *(v87 + 32) = v88;
    *(v87 + 48) = v86[4];

    sub_1000D2DFC(&v150, v143, &qword_101927098);

    sub_1000CE6B8(&qword_101927120);
    sub_1000CE6B8(&qword_101927128);
    sub_1000414C8(&qword_101927130, &qword_101927120);
    sub_1005643AC();
    sub_100564DD8(&qword_101927228, type metadata accessor for CarPlaceRowItem);
    ForEach<>.init(_:content:)();
    sub_1000CE6B8(&qword_101909FF0);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_1011E1D60;
    v90 = static Edge.Set.leading.getter();
    *(v89 + 32) = v90;
    v91 = static Edge.Set.trailing.getter();
    *(v89 + 33) = v91;
    v92 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v90)
    {
      v92 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v93 = Edge.Set.init(rawValue:)();
    v72 = v137;
    if (v93 != v91)
    {
      v92 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = v122;
    (*(v123 + 32))(v122, v132, v124);
    v103 = v102 + *(v41 + 36);
    *v103 = v92;
    *(v103 + 8) = v95;
    *(v103 + 16) = v97;
    *(v103 + 24) = v99;
    *(v103 + 32) = v101;
    *(v103 + 40) = 0;
    v83 = &qword_1019270E0;
    v104 = v125;
    sub_1000F11C4(v102, v125, &qword_1019270E0);
    sub_1000D2DFC(v104, v136, &qword_1019270E0);
    swift_storeEnumTagMultiPayload();
    sub_10056503C(&qword_101927230, &qword_1019270F8, &unk_101210B88, sub_100564E20);
    sub_10056503C(&qword_101927280, &qword_1019270E0, &unk_101210B70, sub_1005650C0);
    _ConditionalContent<>.init(storage:)();
    v85 = v104;
  }

  sub_100024F64(v85, v83);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v138 = v144;
  v137 = v146;
  v136 = v148;
  v135 = v149;
  v143[0] = 1;
  v142 = v145;
  v141 = v147;
  v105 = v133;
  sub_1000D2DFC(v62, v133, &qword_101927118);
  v106 = v139;
  sub_1000D2DFC(v72, v139, &qword_101927100);
  v107 = v72;
  v108 = v143[0];
  v109 = v142;
  v110 = v141;
  v111 = v62;
  v112 = v140;
  sub_1000D2DFC(v105, v140, &qword_101927118);
  v113 = sub_1000CE6B8(&qword_101927290);
  sub_1000D2DFC(v106, v112 + *(v113 + 48), &qword_101927100);
  v114 = v112 + *(v113 + 64);
  *v114 = 0;
  *(v114 + 8) = v108;
  *(v114 + 16) = v138;
  *(v114 + 24) = v109;
  *(v114 + 32) = v137;
  *(v114 + 40) = v110;
  v115 = v135;
  *(v114 + 48) = v136;
  *(v114 + 56) = v115;
  sub_100024F64(v107, &qword_101927100);
  sub_100024F64(v111, &qword_101927118);
  sub_100024F64(v106, &qword_101927100);
  return sub_100024F64(v105, &qword_101927118);
}

uint64_t sub_100560980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v271 = a1;
  v276 = a2;
  v240 = type metadata accessor for CarDetailRowView(0);
  __chkstk_darwin(v240);
  v211 = &v191 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CarDetailRowViewModel(0);
  __chkstk_darwin(v3 - 8);
  v210 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1000CE6B8(&qword_1019272C8);
  __chkstk_darwin(v241);
  v243 = (&v191 - v5);
  v231 = sub_1000CE6B8(&qword_1019272D0);
  __chkstk_darwin(v231);
  v236 = &v191 - v6;
  v242 = sub_1000CE6B8(&qword_101927208);
  __chkstk_darwin(v242);
  v238 = (&v191 - v7);
  v275 = sub_1000CE6B8(&qword_1019271F8);
  __chkstk_darwin(v275);
  v244 = &v191 - v8;
  v237 = sub_1000CE6B8(&qword_1019272D8);
  v209 = *(v237 - 8);
  __chkstk_darwin(v237);
  v208 = &v191 - v9;
  v233 = type metadata accessor for WatchPlaceAcceptsPaymentsViewModel();
  v207 = *(v233 - 8);
  __chkstk_darwin(v233);
  v229 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for Font.TextStyle();
  v198 = *(v201 - 8);
  __chkstk_darwin(v201);
  v199 = &v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for CarPlaceAccoladesView();
  __chkstk_darwin(v234);
  v203 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1000CE6B8(&qword_1019272E0);
  v206 = *(v239 - 8);
  __chkstk_darwin(v239);
  v205 = &v191 - v13;
  v230 = type metadata accessor for WatchPlaceAccoladesViewModel();
  v204 = *(v230 - 8);
  __chkstk_darwin(v230);
  v228 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1000CE6B8(&qword_1019272E8);
  __chkstk_darwin(v225);
  v227 = &v191 - v15;
  v249 = sub_1000CE6B8(&qword_1019271D8);
  __chkstk_darwin(v249);
  v232 = &v191 - v16;
  v235 = sub_1000CE6B8(&qword_1019272F0);
  v254 = *(v235 - 8);
  __chkstk_darwin(v235);
  v253 = &v191 - v17;
  v226 = sub_1000CE6B8(&qword_1019272F8);
  v202 = *(v226 - 8);
  __chkstk_darwin(v226);
  v200 = &v191 - v18;
  v246 = sub_1000CE6B8(&qword_101927300);
  __chkstk_darwin(v246);
  v248 = &v191 - v19;
  v216 = sub_1000CE6B8(&qword_101927308);
  __chkstk_darwin(v216);
  v221 = &v191 - v20;
  v247 = sub_1000CE6B8(&qword_1019271B8);
  __chkstk_darwin(v247);
  v222 = &v191 - v21;
  v267 = sub_1000CE6B8(&qword_1019271A8);
  __chkstk_darwin(v267);
  v250 = &v191 - v22;
  v223 = sub_1000CE6B8(&qword_101927310);
  v197 = *(v223 - 8);
  __chkstk_darwin(v223);
  v196 = &v191 - v23;
  v218 = type metadata accessor for CarPlaceRatingView();
  __chkstk_darwin(v218);
  v252 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_1000CE6B8(&qword_101927318);
  v195 = *(v224 - 8);
  __chkstk_darwin(v224);
  v215 = &v191 - v25;
  v262 = type metadata accessor for WatchPlaceRatingRowViewModel();
  v261 = *(v262 - 8);
  __chkstk_darwin(v262);
  v260 = &v191 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_1000CE6B8(&qword_101927320);
  __chkstk_darwin(v212);
  v214 = &v191 - v27;
  v245 = sub_1000CE6B8(&qword_101927188);
  __chkstk_darwin(v245);
  v217 = &v191 - v28;
  v220 = sub_1000CE6B8(&qword_101927328);
  v193 = *(v220 - 8);
  __chkstk_darwin(v220);
  v213 = &v191 - v29;
  v259 = type metadata accessor for WatchPlaceHoursViewModel();
  v251 = *(v259 - 8);
  __chkstk_darwin(v259);
  v258 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1000CE6B8(&qword_101927330);
  v194 = *(v219 - 8);
  __chkstk_darwin(v219);
  v192 = &v191 - v31;
  v272 = sub_1000CE6B8(&qword_101927338);
  __chkstk_darwin(v272);
  v274 = &v191 - v32;
  v263 = sub_1000CE6B8(&qword_101927340);
  __chkstk_darwin(v263);
  v265 = &v191 - v33;
  v257 = sub_1000CE6B8(&qword_101927348);
  __chkstk_darwin(v257);
  v256 = &v191 - v34;
  v35 = sub_1000CE6B8(&qword_101927350);
  __chkstk_darwin(v35);
  v37 = &v191 - v36;
  v38 = sub_1000CE6B8(&qword_101927168);
  __chkstk_darwin(v38);
  v40 = &v191 - v39;
  v264 = sub_1000CE6B8(&qword_101927158);
  __chkstk_darwin(v264);
  v42 = &v191 - v41;
  v273 = sub_1000CE6B8(&qword_101927148);
  __chkstk_darwin(v273);
  v266 = &v191 - v43;
  v44 = type metadata accessor for MapsDesignAccessibilityString();
  v45 = *(v44 - 8);
  v269 = v44;
  v270 = v45;
  __chkstk_darwin(v44);
  v268 = (&v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_1000CE6B8(&qword_101927358);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v191 - v49;
  v51 = type metadata accessor for CarPlaceRowItem.ContentType(0);
  __chkstk_darwin(v51);
  v53 = &v191 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100565164(v271, v53, type metadata accessor for CarPlaceRowItem.ContentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v124 = v207;
        v125 = v229;
        v126 = v233;
        (*(v207 + 32))(v229, v53, v233);
        v283 = v126;
        v284 = &protocol witness table for WatchPlaceAcceptsPaymentsViewModel;
        v127 = sub_10001A848(&v280);
        (*(v124 + 16))(v127, v125, v126);
        v129 = v268;
        v128 = v269;
        *v268 = 0xD000000000000017;
        v129[1] = 0x8000000101220300;
        v130 = v270;
        (*(v270 + 104))(v129, enum case for MapsDesignAccessibilityString.view(_:), v128);
        v131 = sub_100564D30();
        v132 = v208;
        View.mapsDesignAXContainer(withID:)();
        (*(v130 + 8))(v129, v128);
        sub_1005651CC(&v280);
        v133 = v209;
        v134 = v237;
        (*(v209 + 16))(v236, v132, v237);
        swift_storeEnumTagMultiPayload();
        v280 = &type metadata for CarPlaceAcceptsPaymentsView;
        v281 = v131;
        swift_getOpaqueTypeConformance2();
        sub_100564DD8(&qword_101927218, type metadata accessor for CarDetailRowView);
        v135 = v238;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v135, v243, &qword_101927208);
        swift_storeEnumTagMultiPayload();
        sub_100564C48();
        sub_100564D84();
        v136 = v244;
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v135, &qword_101927208);
        sub_1000D2DFC(v136, v274, &qword_1019271F8);
        swift_storeEnumTagMultiPayload();
        sub_100564438();
        sub_100564BBC();
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v136, &qword_1019271F8);
        (*(v133 + 8))(v132, v134);
        return (*(v124 + 8))(v229, v233);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        v89 = *(v53 + 2);
        v90 = *(v53 + 3);
        v91 = v243;
        *v243 = *v53;
        *(v91 + 2) = v89;
        *(v91 + 3) = v90;
        swift_storeEnumTagMultiPayload();
        sub_100564C48();
        sub_100564D84();
        v92 = v244;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v92, v274, &qword_1019271F8);
        swift_storeEnumTagMultiPayload();
        sub_100564438();
        sub_100564BBC();
        _ConditionalContent<>.init(storage:)();
        return sub_100024F64(v92, &qword_1019271F8);
      }

      else
      {
        v185 = v53;
        v186 = v210;
        sub_1005650FC(v185, v210, type metadata accessor for CarDetailRowViewModel);
        v187 = v211;
        sub_100565164(v186, v211, type metadata accessor for CarDetailRowViewModel);
        sub_100565164(v187, v236, type metadata accessor for CarDetailRowView);
        swift_storeEnumTagMultiPayload();
        v188 = sub_100564D30();
        v280 = &type metadata for CarPlaceAcceptsPaymentsView;
        v281 = v188;
        swift_getOpaqueTypeConformance2();
        sub_100564DD8(&qword_101927218, type metadata accessor for CarDetailRowView);
        v189 = v238;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v189, v243, &qword_101927208);
        swift_storeEnumTagMultiPayload();
        sub_100564C48();
        sub_100564D84();
        v190 = v244;
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v189, &qword_101927208);
        sub_1000D2DFC(v190, v274, &qword_1019271F8);
        swift_storeEnumTagMultiPayload();
        sub_100564438();
        sub_100564BBC();
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v190, &qword_1019271F8);
        sub_1005652C8(v187, type metadata accessor for CarDetailRowView);
        return sub_1005652C8(v186, type metadata accessor for CarDetailRowViewModel);
      }
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_10005E7BC(v53, &v280);
        sub_10005EB40(&v280, &v278);
        v56 = v268;
        v55 = v269;
        *v268 = 0x6563616C50726143;
        v56[1] = 0xEF73736572646441;
        v57 = v270;
        (*(v270 + 104))(v56, enum case for MapsDesignAccessibilityString.view(_:), v55);
        v58 = sub_100564A00();
        v59 = v200;
        View.mapsDesignAXContainer(withID:)();
        (*(v57 + 8))(v56, v55);
        sub_100565274(&v278);
        v60 = v202;
        v61 = v226;
        (*(v202 + 16))(v221, v59, v226);
        swift_storeEnumTagMultiPayload();
        v62 = sub_1005649AC();
        v278 = &type metadata for CarPlaceRibbonItemView;
        v279 = v62;
        swift_getOpaqueTypeConformance2();
        v278 = &type metadata for CarPlaceAddressView;
        v279 = v58;
        swift_getOpaqueTypeConformance2();
        v63 = v222;
        _ConditionalContent<>.init(storage:)();
        v64 = &qword_1019271B8;
        sub_1000D2DFC(v63, v248, &qword_1019271B8);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        sub_1005648CC();
        sub_100564A54();
        v110 = v250;
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v63, v64);
        sub_1000D2DFC(v110, v265, &qword_1019271A8);
        swift_storeEnumTagMultiPayload();
        sub_1005644C4();
        sub_100564840();
        v111 = v266;
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v110, &qword_1019271A8);
        sub_1000D2DFC(v111, v274, &qword_101927148);
        swift_storeEnumTagMultiPayload();
        sub_100564438();
        sub_100564BBC();
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v111, &qword_101927148);
        (*(v60 + 8))(v59, v61);
        return sub_10004E3D0(&v280);
      }

      v167 = v204;
      v168 = v228;
      v169 = v230;
      (*(v204 + 32))(v228, v53, v230);
      v170 = v234;
      v171 = v203;
      v172 = &v203[*(v234 + 20)];
      v172[3] = v169;
      v172[4] = &protocol witness table for WatchPlaceAccoladesViewModel;
      v173 = sub_10001A848(v172);
      (*(v167 + 16))(v173, v168, v169);
      v280 = 0x4026000000000000;
      (*(v198 + 104))(v199, enum case for Font.TextStyle.caption2(_:), v201);
      sub_10018C5CC();
      ScaledMetric.init(wrappedValue:relativeTo:)();
      v175 = v268;
      v174 = v269;
      *v268 = 0xD000000000000011;
      v175[1] = 0x8000000101220320;
      v176 = v270;
      (*(v270 + 104))(v175, enum case for MapsDesignAccessibilityString.view(_:), v174);
      v177 = sub_100564DD8(&qword_1019271E8, type metadata accessor for CarPlaceAccoladesView);
      v178 = v205;
      View.mapsDesignAXContainer(withID:)();
      (*(v176 + 8))(v175, v174);
      sub_1005652C8(v171, type metadata accessor for CarPlaceAccoladesView);
      v179 = v206;
      v180 = v239;
      (*(v206 + 16))(v227, v178, v239);
      swift_storeEnumTagMultiPayload();
      v181 = sub_100564B68();
      v280 = &type metadata for CarPlaceAmenityItemView;
      v281 = v181;
      swift_getOpaqueTypeConformance2();
      v280 = v170;
      v281 = v177;
      swift_getOpaqueTypeConformance2();
      v182 = v232;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v182, v248, &qword_1019271D8);
      swift_storeEnumTagMultiPayload();
      sub_1005648CC();
      sub_100564A54();
      v183 = v250;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v182, &qword_1019271D8);
      sub_1000D2DFC(v183, v265, &qword_1019271A8);
      swift_storeEnumTagMultiPayload();
      sub_1005644C4();
      sub_100564840();
      v184 = v266;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v183, &qword_1019271A8);
      sub_1000D2DFC(v184, v274, &qword_101927148);
      swift_storeEnumTagMultiPayload();
      sub_100564438();
      sub_100564BBC();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v184, &qword_101927148);
      (*(v179 + 8))(v178, v180);
      return (*(v167 + 8))(v228, v230);
    }

    v280 = *v53;
    v113 = v268;
    v112 = v269;
    *v268 = 0xD000000000000012;
    v113[1] = 0x80000001012417E0;
    v114 = v270;
    (*(v270 + 104))(v113, enum case for MapsDesignAccessibilityString.view(_:), v112);
    v115 = sub_1005649AC();

    v116 = v196;
    View.mapsDesignAXContainer(withID:)();
    (*(v114 + 8))(v113, v112);

    v117 = v197;
    v118 = v223;
    (*(v197 + 16))(v221, v116, v223);
    swift_storeEnumTagMultiPayload();
    v280 = &type metadata for CarPlaceRibbonItemView;
    v281 = v115;
    swift_getOpaqueTypeConformance2();
    v119 = sub_100564A00();
    v280 = &type metadata for CarPlaceAddressView;
    v281 = v119;
    swift_getOpaqueTypeConformance2();
    v120 = v222;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v120, v248, &qword_1019271B8);
    swift_storeEnumTagMultiPayload();
    sub_1005648CC();
    sub_100564A54();
    v121 = v250;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v120, &qword_1019271B8);
    sub_1000D2DFC(v121, v265, &qword_1019271A8);
    swift_storeEnumTagMultiPayload();
    sub_1005644C4();
    sub_100564840();
    v122 = v266;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v121, &qword_1019271A8);
    sub_1000D2DFC(v122, v274, &qword_101927148);
    swift_storeEnumTagMultiPayload();
    sub_100564438();
    sub_100564BBC();
    _ConditionalContent<>.init(storage:)();

    v123 = v122;
LABEL_22:
    sub_100024F64(v123, &qword_101927148);
    return (*(v117 + 8))(v116, v118);
  }

  v191 = v50;
  v238 = v48;
  v240 = v35;
  v241 = v37;
  v242 = v47;
  v65 = v252;
  v243 = v40;
  v66 = v258;
  v67 = v260;
  v68 = v253;
  v69 = v254;
  v244 = v38;
  v70 = v256;
  v271 = v42;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10005E7BC(v53, &v280);
      sub_10005EB40(&v280, &v278);
      v94 = v268;
      v93 = v269;
      *v268 = 0x6563616C50726143;
      v94[1] = 0xEE00726564616548;
      v95 = v270;
      (*(v270 + 104))(v94, enum case for MapsDesignAccessibilityString.view(_:), v93);
      v96 = sub_100564630();
      v97 = v191;
      View.mapsDesignAXContainer(withID:)();
      (*(v95 + 8))(v94, v93);
      sub_10056537C(&v278);
      v98 = v238;
      v99 = v97;
      v100 = v242;
      (v238[2])(v241, v99, v242);
      swift_storeEnumTagMultiPayload();
      v278 = &type metadata for CarPlaceHeaderView;
      v279 = v96;
      swift_getOpaqueTypeConformance2();
      v101 = sub_100564684();
      v278 = &type metadata for CarPlaceHeaderButtonsView;
      v279 = v101;
      swift_getOpaqueTypeConformance2();
      v102 = v243;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v102, v70, &qword_101927168);
      swift_storeEnumTagMultiPayload();
      sub_100564550();
      sub_1005646D8();
      v103 = v271;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v102, &qword_101927168);
      sub_1000D2DFC(v103, v265, &qword_101927158);
      swift_storeEnumTagMultiPayload();
      sub_1005644C4();
      sub_100564840();
      v104 = v266;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v103, &qword_101927158);
      sub_1000D2DFC(v104, v274, &qword_101927148);
      swift_storeEnumTagMultiPayload();
      sub_100564438();
      sub_100564BBC();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v104, &qword_101927148);
      v98[1](v191, v100);
      return sub_10004E3D0(&v280);
    }

    v152 = *v53;
    v153 = v255;
    v278 = *v255;
    v154 = swift_allocObject();
    v155 = *(v153 + 1);
    *(v154 + 16) = *v153;
    *(v154 + 32) = v155;
    *(v154 + 48) = v153[4];
    v156 = swift_allocObject();
    v157 = *(v153 + 1);
    *(v156 + 16) = *v153;
    *(v156 + 32) = v157;
    *(v156 + 48) = v153[4];
    v158 = v152;
    v280 = v152;
    v281 = sub_1004711B4;
    v282 = v154;
    v283 = sub_1001475FC;
    v284 = v156;
    v160 = v268;
    v159 = v269;
    *v268 = 0xD000000000000015;
    v160[1] = 0x80000001012203A0;
    v161 = v270;
    (*(v270 + 104))(v160, enum case for MapsDesignAccessibilityString.view(_:), v159);
    sub_1000D2DFC(&v278, v277, &qword_101927098);

    sub_1000D2DFC(&v278, v277, &qword_101927098);
    v162 = sub_100564684();

    v262 = v158;

    v116 = v192;
    View.mapsDesignAXContainer(withID:)();
    (*(v161 + 8))(v160, v159);

    v117 = v194;
    v118 = v219;
    (*(v194 + 16))(v241, v116, v219);
    swift_storeEnumTagMultiPayload();
    v163 = sub_100564630();
    v280 = &type metadata for CarPlaceHeaderView;
    v281 = v163;
    swift_getOpaqueTypeConformance2();
    v280 = &type metadata for CarPlaceHeaderButtonsView;
    v281 = v162;
    swift_getOpaqueTypeConformance2();
    v164 = v243;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v164, v256, &qword_101927168);
    swift_storeEnumTagMultiPayload();
    sub_100564550();
    sub_1005646D8();
    v165 = v271;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v164, &qword_101927168);
    sub_1000D2DFC(v165, v265, &qword_101927158);
    swift_storeEnumTagMultiPayload();
    sub_1005644C4();
    sub_100564840();
    v166 = v266;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v165, &qword_101927158);
    sub_1000D2DFC(v166, v274, &qword_101927148);
    swift_storeEnumTagMultiPayload();
    sub_100564438();
    sub_100564BBC();
    _ConditionalContent<>.init(storage:)();

    v123 = v166;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10005E7BC(v53, &v280);
    sub_10005EB40(&v280, &v278);
    v106 = v268;
    v105 = v269;
    *v268 = 0xD000000000000013;
    v106[1] = 0x80000001012417C0;
    v107 = v270;
    (*(v270 + 104))(v106, enum case for MapsDesignAccessibilityString.view(_:), v105);
    v108 = sub_100564B68();
    v59 = v68;
    View.mapsDesignAXContainer(withID:)();
    (*(v107 + 8))(v106, v105);
    sub_100565220(&v278);
    v60 = v69;
    v61 = v235;
    (*(v69 + 16))(v227, v68, v235);
    swift_storeEnumTagMultiPayload();
    v278 = &type metadata for CarPlaceAmenityItemView;
    v279 = v108;
    swift_getOpaqueTypeConformance2();
    v109 = sub_100564DD8(&qword_1019271E8, type metadata accessor for CarPlaceAccoladesView);
    v278 = v234;
    v279 = v109;
    swift_getOpaqueTypeConformance2();
    v63 = v232;
    _ConditionalContent<>.init(storage:)();
    v64 = &qword_1019271D8;
    sub_1000D2DFC(v63, v248, &qword_1019271D8);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v71 = v261;
    v72 = v262;
    (*(v261 + 32))(v260, v53, v262);
    v73 = *(v71 + 16);
    v74 = v65;
    v73(v65, v67, v72);
    v76 = v268;
    v75 = v269;
    *v268 = 0x6563616C50726143;
    v76[1] = 0xEE00676E69746152;
    v77 = v270;
    (*(v270 + 104))(v76, enum case for MapsDesignAccessibilityString.view(_:), v75);
    v78 = sub_100564DD8(&qword_101927198, type metadata accessor for CarPlaceRatingView);
    v79 = v215;
    v80 = v218;
    View.mapsDesignAXContainer(withID:)();
    (*(v77 + 8))(v76, v75);
    sub_1005652C8(v74, type metadata accessor for CarPlaceRatingView);
    v81 = v195;
    v82 = v79;
    v83 = v224;
    (*(v195 + 16))(v214, v82, v224);
    swift_storeEnumTagMultiPayload();
    v84 = sub_1005647EC();
    v280 = &type metadata for CarPlaceHoursView;
    v281 = v84;
    swift_getOpaqueTypeConformance2();
    v280 = v80;
    v281 = v78;
    swift_getOpaqueTypeConformance2();
    v85 = v217;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v85, v70, &qword_101927188);
    swift_storeEnumTagMultiPayload();
    sub_100564550();
    sub_1005646D8();
    v86 = v271;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v85, &qword_101927188);
    sub_1000D2DFC(v86, v265, &qword_101927158);
    swift_storeEnumTagMultiPayload();
    sub_1005644C4();
    sub_100564840();
    v87 = v266;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v86, &qword_101927158);
    sub_1000D2DFC(v87, v274, &qword_101927148);
    swift_storeEnumTagMultiPayload();
    sub_100564438();
    sub_100564BBC();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v87, &qword_101927148);
    (*(v81 + 8))(v215, v83);
    return (*(v261 + 8))(v260, v262);
  }

  else
  {
    v137 = v251;
    v138 = v259;
    (*(v251 + 32))(v258, v53, v259);
    v283 = v138;
    v284 = &protocol witness table for WatchPlaceHoursViewModel;
    v139 = sub_10001A848(&v280);
    (*(v137 + 16))(v139, v66, v138);
    v141 = v268;
    v140 = v269;
    *v268 = 0x6563616C50726143;
    v141[1] = 0xED00007372756F48;
    v142 = v270;
    (*(v270 + 104))(v141, enum case for MapsDesignAccessibilityString.view(_:), v140);
    v143 = sub_1005647EC();
    v144 = v213;
    View.mapsDesignAXContainer(withID:)();
    (*(v142 + 8))(v141, v140);
    sub_100565328(&v280);
    v145 = v193;
    v146 = v144;
    v147 = v220;
    (*(v193 + 16))(v214, v146, v220);
    swift_storeEnumTagMultiPayload();
    v280 = &type metadata for CarPlaceHoursView;
    v281 = v143;
    swift_getOpaqueTypeConformance2();
    v148 = sub_100564DD8(&qword_101927198, type metadata accessor for CarPlaceRatingView);
    v280 = v218;
    v281 = v148;
    swift_getOpaqueTypeConformance2();
    v149 = v217;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v149, v70, &qword_101927188);
    swift_storeEnumTagMultiPayload();
    sub_100564550();
    sub_1005646D8();
    v150 = v271;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v149, &qword_101927188);
    sub_1000D2DFC(v150, v265, &qword_101927158);
    swift_storeEnumTagMultiPayload();
    sub_1005644C4();
    sub_100564840();
    v151 = v266;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v150, &qword_101927158);
    sub_1000D2DFC(v151, v274, &qword_101927148);
    swift_storeEnumTagMultiPayload();
    sub_100564438();
    sub_100564BBC();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v151, &qword_101927148);
    (*(v145 + 8))(v213, v147);
    return (*(v137 + 8))(v258, v259);
  }
}

uint64_t sub_100563BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v53 = sub_1000CE6B8(&qword_10190D6F0);
  __chkstk_darwin(v53);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v52 - v9;
  v11 = sub_1000CE6B8(&qword_101927298);
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_1000CE6B8(&qword_1019272A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  if (*(a2 + 16))
  {
    v52 = a3;
    type metadata accessor for CarPlaceRowItem(0);
    v17 = sub_10055C54C();
    v19 = v18;
    v20 = sub_10055C54C();
    if (v19)
    {
      if (v17 != v20 || v19 != v21)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v24 = sub_10055C54C();
    v26 = v25;
    v27 = sub_10055C54C();
    if (v26)
    {
      if (v24 == v27 && v26 == v28)
      {

        v23 = 1;
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_10055C54C();

    sub_10055C54C();
    v23 = 0;
  }

  v30 = v57;
  sub_100560980(a1, v57);
  v31 = static Alignment.center.getter();
  v33 = v32;
  v34 = (v30 + *(sub_1000CE6B8(&qword_101927258) + 36));
  sub_1005640E0(v34);
  v35 = (v34 + *(sub_1000CE6B8(&qword_101927268) + 36));
  *v35 = v31;
  v35[1] = v33;
  v36 = static Alignment.center.getter();
  v38 = v37;
  if (v23)
  {
    (*(v55 + 56))(v16, 1, 1, v56);
  }

  else
  {
    *v13 = static HorizontalAlignment.center.getter();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v39 = &v13[*(sub_1000CE6B8(&qword_1019272A8) + 44)];
    Divider.init()();
    v40 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v41 = v54;
    v42 = &v10[*(v53 + 36)];
    *v42 = v40;
    *(v42 + 1) = v43;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    *(v42 + 4) = v46;
    v42[40] = 0;
    sub_1000D2DFC(v10, v41, &qword_10190D6F0);
    *v39 = 0;
    v39[8] = 1;
    v47 = sub_1000CE6B8(&qword_1019272B0);
    sub_1000D2DFC(v41, &v39[*(v47 + 48)], &qword_10190D6F0);
    sub_100024F64(v10, &qword_10190D6F0);
    sub_100024F64(v41, &qword_10190D6F0);
    sub_1000F11C4(v13, v16, &qword_101927298);
    (*(v55 + 56))(v16, 0, 1, v56);
  }

  v48 = sub_1000CE6B8(&qword_101927248);
  v49 = v57 + *(v48 + 36);
  sub_1000F11C4(v16, v49, &qword_1019272A0);
  result = sub_1000CE6B8(&qword_101927278);
  v51 = (v49 + *(result + 36));
  *v51 = v36;
  v51[1] = v38;
  return result;
}

uint64_t sub_1005640E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UnevenRoundedRectangle();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v7 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v9 = *(v3 + 28);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v5[v9], v10, v11);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v5 = v12;
  *(v5 + 1) = v13;
  *(v5 + 2) = v14;
  *(v5 + 3) = v15;
  v16 = a1 + *(sub_1000CE6B8(&qword_1019272B8) + 36);
  sub_1005650FC(v5, v16, &type metadata accessor for UnevenRoundedRectangle);
  result = sub_1000CE6B8(&qword_1019272C0);
  *(v16 + *(result + 36)) = 256;
  *a1 = KeyPath;
  a1[1] = v7;
  return result;
}

unint64_t sub_1005642D0()
{
  result = qword_1019270A8;
  if (!qword_1019270A8)
  {
    sub_1000D6664(&qword_1019270A0);
    sub_1000414C8(&qword_1019270B0, &qword_1019270B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019270A8);
  }

  return result;
}

unint64_t sub_1005643AC()
{
  result = qword_101927138;
  if (!qword_101927138)
  {
    sub_1000D6664(&qword_101927128);
    sub_100564438();
    sub_100564BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927138);
  }

  return result;
}

unint64_t sub_100564438()
{
  result = qword_101927140;
  if (!qword_101927140)
  {
    sub_1000D6664(&qword_101927148);
    sub_1005644C4();
    sub_100564840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927140);
  }

  return result;
}

unint64_t sub_1005644C4()
{
  result = qword_101927150;
  if (!qword_101927150)
  {
    sub_1000D6664(&qword_101927158);
    sub_100564550();
    sub_1005646D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927150);
  }

  return result;
}

unint64_t sub_100564550()
{
  result = qword_101927160;
  if (!qword_101927160)
  {
    sub_1000D6664(&qword_101927168);
    sub_100564630();
    swift_getOpaqueTypeConformance2();
    sub_100564684();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927160);
  }

  return result;
}

unint64_t sub_100564630()
{
  result = qword_101927170;
  if (!qword_101927170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927170);
  }

  return result;
}

unint64_t sub_100564684()
{
  result = qword_101927178;
  if (!qword_101927178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927178);
  }

  return result;
}

unint64_t sub_1005646D8()
{
  result = qword_101927180;
  if (!qword_101927180)
  {
    sub_1000D6664(&qword_101927188);
    sub_1005647EC();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for CarPlaceRatingView();
    sub_100564DD8(&qword_101927198, type metadata accessor for CarPlaceRatingView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927180);
  }

  return result;
}

unint64_t sub_1005647EC()
{
  result = qword_101927190;
  if (!qword_101927190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927190);
  }

  return result;
}

unint64_t sub_100564840()
{
  result = qword_1019271A0;
  if (!qword_1019271A0)
  {
    sub_1000D6664(&qword_1019271A8);
    sub_1005648CC();
    sub_100564A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019271A0);
  }

  return result;
}

unint64_t sub_1005648CC()
{
  result = qword_1019271B0;
  if (!qword_1019271B0)
  {
    sub_1000D6664(&qword_1019271B8);
    sub_1005649AC();
    swift_getOpaqueTypeConformance2();
    sub_100564A00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019271B0);
  }

  return result;
}

unint64_t sub_1005649AC()
{
  result = qword_1019271C0;
  if (!qword_1019271C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019271C0);
  }

  return result;
}

unint64_t sub_100564A00()
{
  result = qword_1019271C8;
  if (!qword_1019271C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019271C8);
  }

  return result;
}

unint64_t sub_100564A54()
{
  result = qword_1019271D0;
  if (!qword_1019271D0)
  {
    sub_1000D6664(&qword_1019271D8);
    sub_100564B68();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for CarPlaceAccoladesView();
    sub_100564DD8(&qword_1019271E8, type metadata accessor for CarPlaceAccoladesView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019271D0);
  }

  return result;
}

unint64_t sub_100564B68()
{
  result = qword_1019271E0;
  if (!qword_1019271E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019271E0);
  }

  return result;
}

unint64_t sub_100564BBC()
{
  result = qword_1019271F0;
  if (!qword_1019271F0)
  {
    sub_1000D6664(&qword_1019271F8);
    sub_100564C48();
    sub_100564D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019271F0);
  }

  return result;
}

unint64_t sub_100564C48()
{
  result = qword_101927200;
  if (!qword_101927200)
  {
    sub_1000D6664(&qword_101927208);
    sub_100564D30();
    swift_getOpaqueTypeConformance2();
    sub_100564DD8(&qword_101927218, type metadata accessor for CarDetailRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927200);
  }

  return result;
}

unint64_t sub_100564D30()
{
  result = qword_101927210;
  if (!qword_101927210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927210);
  }

  return result;
}

unint64_t sub_100564D84()
{
  result = qword_101927220;
  if (!qword_101927220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927220);
  }

  return result;
}

uint64_t sub_100564DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100564E50(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100564ECC()
{
  result = qword_101927240;
  if (!qword_101927240)
  {
    sub_1000D6664(&qword_101927248);
    sub_100564F84();
    sub_1000414C8(&qword_101927270, &qword_101927278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927240);
  }

  return result;
}

unint64_t sub_100564F84()
{
  result = qword_101927250;
  if (!qword_101927250)
  {
    sub_1000D6664(&qword_101927258);
    sub_1005643AC();
    sub_1000414C8(&qword_101927260, &qword_101927268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927250);
  }

  return result;
}

uint64_t sub_10056503C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005650FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100565164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005652C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005653D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100565FF0(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1005654BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100565FF0(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100565618@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100565FF0(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100566078;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100565738(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100566040;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100565FF0(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100565894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

id sub_1005658CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC4Maps40VisitHistoryCategoryPickerViewController_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for VisitHistoryCategoryPickerViewModel();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  ObservationRegistrar.init()();
  *(v4 + 48) = a1;
  *&v1[OBJC_IVAR____TtC4Maps40VisitHistoryCategoryPickerViewController_viewModel] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  sub_1003A7704(v5);

  return v5;
}

uint64_t sub_100565A08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps40VisitHistoryCategoryPickerViewController_viewModel);
  v4 = type metadata accessor for VisitHistoryCategoryPickerView();
  a1[3] = v4;
  a1[4] = sub_100565FF0(&qword_101927398, type metadata accessor for VisitHistoryCategoryPickerView);
  v5 = sub_10001A848(a1);
  *v5 = swift_getKeyPath();
  sub_1000CE6B8(&qword_10191DF80);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v4 + 20)) = v3;
}

uint64_t sub_100565AE0()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_100565FF0(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100565D80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4[0] = a1;
      v5 = 1;
      sub_100443BCC(v4);

      swift_unknownObjectRelease();
      sub_1000F1E68(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_100565E54()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps40VisitHistoryCategoryPickerViewController_actionDelegate);
}

uint64_t sub_100565F28(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_100565FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100566040(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

void sub_1005660A8()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000FA5D4(v4);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = objc_opt_self();
  v10 = [v9 sharedApplication];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [v10 canOpenURL:v12];

  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem;
  v16 = [*(v1 + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem) mapItem];
  if (!v16 || (v17 = v16, v18 = [v16 phoneNumber], v17, !v18))
  {
LABEL_9:
    v22 = [*(v1 + v15) address];
    if (!v22)
    {
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [v22 contact];
    if (!v24)
    {
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [v24 phoneNumbers];

    sub_1000CE6B8(&unk_101918B20);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v27 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_13;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_16;
      }

      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v27 + 32);
LABEL_16:
        v29 = v28;

        v30 = [v29 value];

        if (!v30)
        {
          (*(v6 + 8))(v8, v5);

          return;
        }

        v31 = [v30 stringValue];
        if (!v31)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = String._bridgeToObjectiveC()();
        }

        v32 = [v9 sharedApplication];
        v38 = UIView.annotateView(with:);
        v39 = 0;
        aBlock = _NSConcreteStackBlock;
        v35 = 1107296256;
        v36 = sub_1002ABAC8;
        v37 = &unk_101621B18;
        v33 = _Block_copy(&aBlock);
        [v32 callPhoneNumber:v31 completion:v33];

        _Block_release(v33);
        goto LABEL_23;
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    goto LABEL_23;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = String.count.getter();

  if (v19 < 1)
  {

    goto LABEL_9;
  }

  v20 = [v9 sharedApplication];
  v38 = UIView.annotateView(with:);
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1002ABAC8;
  v37 = &unk_101621B40;
  v21 = _Block_copy(&aBlock);
  [v20 callPhoneNumber:v18 completion:v21];
  _Block_release(v21);

LABEL_23:
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005665F8()
{
  v0 = type metadata accessor for CarLabelViewModel();
  __chkstk_darwin(v0 - 8);
  WatchPlaceRibbonItemViewModel.symbol.getter();
  WatchPlaceRibbonItemViewModel.text.getter();
  CarLabelViewModel.init(glyph:label:)();
  return CarLabel.init(model:)();
}

uint64_t sub_1005666D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v106 = type metadata accessor for CarCircleButton();
  v100 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000CE6B8(&qword_1019273A8);
  v102 = *(v107 - 8);
  __chkstk_darwin(v107);
  v101 = &v96 - v4;
  v103 = sub_1000CE6B8(&qword_1019273B0);
  __chkstk_darwin(v103);
  v104 = &v96 - v5;
  v114 = sub_1000CE6B8(&qword_1019273B8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v105 = &v96 - v6;
  v7 = sub_1000CE6B8(&qword_1019273C0);
  __chkstk_darwin(v7 - 8);
  v116 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v115 = &v96 - v10;
  v125 = type metadata accessor for MapsDesignAccessibilityString();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = (&v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for CarCapsuleButton();
  v12 = *(v126 - 8);
  __chkstk_darwin(v126);
  v108 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_1019273C8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v109 = &v96 - v16;
  v17 = type metadata accessor for UUID();
  v119 = *(v17 - 8);
  v120 = v17;
  __chkstk_darwin(v17);
  v118 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000CE6B8(&qword_101909FF8);
  __chkstk_darwin(v19 - 8);
  v121 = &v96 - v20;
  v21 = type metadata accessor for LoadingState();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000CE6B8(&qword_1019273D0);
  __chkstk_darwin(v25 - 8);
  v112 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v96 - v28;
  v124 = a1;
  v30 = WatchPlaceNavAndPhoneViewModel.primaryButtonViewModel.getter();
  v127 = v14;
  v128 = v29;
  v110 = v15;
  v111 = v22;
  if (v30)
  {
    WatchPrimaryHeaderButtonViewModel.loadingState.getter();
    v31 = LoadingState.hideSymbol.getter();
    v32 = *(v22 + 8);
    v97 = v21;
    v32(v24, v21);
    WatchPrimaryHeaderButtonViewModel.titleText.getter();
    v96 = v33;
    v98 = v12;
    if ((v31 & 1) == 0)
    {
      WatchPrimaryHeaderButtonViewModel.symbolName.getter();
    }

    v34 = enum case for CarButtonVariant.primary(_:);
    v35 = type metadata accessor for CarButtonVariant();
    v36 = *(v35 - 8);
    v37 = v121;
    (*(v36 + 104))(v121, v34, v35);
    (*(v36 + 56))(v37, 0, 1, v35);
    v38 = v118;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v119 + 8))(v38, v120);
    type metadata accessor for CarButtonViewModel();
    swift_allocObject();
    CarButtonViewModel.init(id:imageName:label:variant:progress:systemImagePadding:axID:)();
    v39 = v124;
    v40 = swift_allocObject();
    v41 = *(v39 + 16);
    *(v40 + 16) = *v39;
    *(v40 + 32) = v41;
    *(v40 + 48) = *(v39 + 32);

    v42 = v108;
    CarCapsuleButton.init(model:tapHandler:)();
    v43 = v122;
    v44 = v123;
    *v122 = 0xD00000000000001FLL;
    v43[1] = 0x80000001012418D0;
    v45 = v125;
    (*(v44 + 104))(v43, enum case for MapsDesignAccessibilityString.custom(_:), v125);
    sub_10056791C(&qword_10190A038, &type metadata accessor for CarCapsuleButton);
    v46 = v109;
    v47 = v126;
    View.mapsDesignAXContainer(withID:)();

    (*(v44 + 8))(v43, v45);
    v12 = v98;
    (*(v98 + 8))(v42, v47);
    v48 = v110;
    v49 = v127;
    v50 = v128;
    (*(v110 + 32))(v128, v46, v127);
    (*(v48 + 56))(v50, 0, 1, v49);
    v21 = v97;
  }

  else
  {
    (*(v15 + 56))(v29, 1, 1, v14);
  }

  v51 = WatchPlaceNavAndPhoneViewModel.secondaryButtonViewModel.getter();
  v52 = v111;
  if (v51)
  {
    v53 = v51;
    WatchSecondaryHeaderButtonViewModel.loadingState.getter();
    v54 = LoadingState.hideSymbol.getter();
    (*(v52 + 8))(v24, v21);
    v111 = WatchSecondaryHeaderButtonViewModel.titleText.getter();
    v97 = v53;
    if ((v54 & 1) == 0)
    {
      WatchSecondaryHeaderButtonViewModel.symbolName.getter();
    }

    v57 = enum case for CarButtonVariant.secondary(_:);
    v58 = type metadata accessor for CarButtonVariant();
    v59 = *(v58 - 8);
    v60 = v121;
    (*(v59 + 104))(v121, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = v118;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v119 + 8))(v61, v120);
    type metadata accessor for CarButtonViewModel();
    swift_allocObject();
    CarButtonViewModel.init(id:imageName:label:variant:progress:systemImagePadding:axID:)();
    if (WatchPlaceNavAndPhoneViewModel.primaryButtonViewModel.getter())
    {

      v62 = v124;
      v63 = swift_allocObject();
      v64 = *(v62 + 16);
      *(v63 + 16) = *v62;
      *(v63 + 32) = v64;
      *(v63 + 48) = *(v62 + 32);

      v65 = v99;
      CarCircleButton.init(model:tapHandler:)();
      v67 = v122;
      v66 = v123;
      *v122 = 0xD000000000000019;
      v67[1] = 0x80000001012418B0;
      v68 = v125;
      (*(v66 + 104))(v67, enum case for MapsDesignAccessibilityString.custom(_:), v125);
      v69 = sub_10056791C(&qword_1019273E0, &type metadata accessor for CarCircleButton);
      v70 = v101;
      v71 = v106;
      View.mapsDesignAXContainer(withID:)();
      (*(v66 + 8))(v67, v68);
      (*(v100 + 8))(v65, v71);
      v72 = v102;
      v73 = v107;
      (*(v102 + 16))(v104, v70, v107);
      swift_storeEnumTagMultiPayload();
      v74 = sub_10056791C(&qword_10190A038, &type metadata accessor for CarCapsuleButton);
      v129 = v126;
      v130 = v74;
      swift_getOpaqueTypeConformance2();
      v129 = v71;
      v130 = v69;
      swift_getOpaqueTypeConformance2();
      v75 = v105;
      _ConditionalContent<>.init(storage:)();

      (*(v72 + 8))(v70, v73);
    }

    else
    {
      v76 = v124;
      v77 = swift_allocObject();
      v78 = v12;
      v79 = *(v76 + 16);
      *(v77 + 16) = *v76;
      *(v77 + 32) = v79;
      *(v77 + 48) = *(v76 + 32);

      v80 = v108;
      CarCapsuleButton.init(model:tapHandler:)();
      v82 = v122;
      v81 = v123;
      *v122 = 0xD000000000000019;
      v82[1] = 0x80000001012418B0;
      v83 = v125;
      (*(v81 + 104))(v82, enum case for MapsDesignAccessibilityString.custom(_:), v125);
      v84 = sub_10056791C(&qword_10190A038, &type metadata accessor for CarCapsuleButton);
      v85 = v109;
      v86 = v126;
      View.mapsDesignAXContainer(withID:)();
      (*(v81 + 8))(v82, v83);
      (*(v78 + 8))(v80, v86);
      v87 = v110;
      v88 = v127;
      (*(v110 + 16))(v104, v85, v127);
      swift_storeEnumTagMultiPayload();
      v129 = v86;
      v130 = v84;
      swift_getOpaqueTypeConformance2();
      v89 = sub_10056791C(&qword_1019273E0, &type metadata accessor for CarCircleButton);
      v129 = v106;
      v130 = v89;
      swift_getOpaqueTypeConformance2();
      v75 = v105;
      _ConditionalContent<>.init(storage:)();

      (*(v87 + 8))(v85, v88);
    }

    v56 = v115;
    sub_1000C1670(v75, v115);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v56 = v115;
  }

  (*(v113 + 56))(v56, v55, 1, v114);
  v90 = v128;
  v91 = v112;
  sub_1000D2DFC(v128, v112, &qword_1019273D0);
  v92 = v116;
  sub_1000D2DFC(v56, v116, &qword_1019273C0);
  v93 = v117;
  sub_1000D2DFC(v91, v117, &qword_1019273D0);
  v94 = sub_1000CE6B8(&qword_1019273D8);
  sub_1000D2DFC(v92, v93 + *(v94 + 48), &qword_1019273C0);
  sub_100024F64(v56, &qword_1019273C0);
  sub_100024F64(v90, &qword_1019273D0);
  sub_100024F64(v92, &qword_1019273C0);
  return sub_100024F64(v91, &qword_1019273D0);
}

uint64_t sub_1005678B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v4 = sub_1000CE6B8(&qword_1019273A0);
  return sub_1005666D4(v6, a1 + *(v4 + 44));
}

uint64_t sub_10056791C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100567964()
{
  result = qword_1019273E8;
  if (!qword_1019273E8)
  {
    sub_1000D6664(&qword_1019273F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019273E8);
  }

  return result;
}

Swift::Int sub_1005679CC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10056D618(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10056CAF8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_100567A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, int a9)
{
  v26 = a7;
  v27 = a8;
  v15 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v18 = *(a1 + 32);
  if (!a2)
  {
    v19 = 0;
    v21 = a9;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
    goto LABEL_6;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2 = v20;
  v21 = a9;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
LABEL_6:

  v18(v19, a2, v17, a4, a5, a6, v26, v27, v21);

  return sub_100232374(v17);
}

UIColor sub_100567BE0(char a1)
{
  sub_100014C84(0, &qword_10190CA00);
  v2._countAndFlagsBits = *&a22ff22_0[8 * a1];
  v2._object = 0xE600000000000000;
  return UIColor.init(hex:)(v2);
}

unint64_t sub_100567C34@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10056D76C(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_100567CA4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5]);
  Hasher._combine(_:)(v0[6]);
  return Hasher._finalize()();
}

void sub_100567D28()
{
  v1 = *v0;
  Hasher._combine(_:)(*(*v0 + 16));
  Hasher._combine(_:)(*(v1 + 20));
  Hasher._combine(_:)(*(v1 + 24));
}

Swift::Int sub_100567D70()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  Hasher._combine(_:)(*(*v0 + 16));
  Hasher._combine(_:)(*(v1 + 20));
  Hasher._combine(_:)(*(v1 + 24));
  return Hasher._finalize()();
}

uint64_t sub_100567DD8(uint64_t a1)
{
  v2 = v1;

  String.hash(into:)();

  Hasher._combine(_:)(*(v2 + 32));
  Hasher._combine(_:)(*(v2 + 36));
  Hasher._combine(_:)(*(v2 + 40));
  Hasher._combine(_:)(*(v2 + 56));
  swift_beginAccess();
  v4 = *(v2 + 48);

  sub_10036C730(a1, v4);
}

unint64_t sub_100567E84(int a1, int a2, unsigned int a3)
{
  v4 = v3;
  v7 = 0;
  if (a3 > 0x384)
  {
    v7 = 1;
    if (a3 > 0x708)
    {
      v7 = 2;
      if (a3 > 0xE10)
      {
        v7 = 3;
        if (a3 > 0x5460)
        {
          v7 = 4;
          if (a3 > 0xA8C0)
          {
            v7 = 5;
          }
        }
      }
    }
  }

  swift_beginAccess();
  v8 = *(v3 + 48);
  if (!*(v8 + 16) || (result = sub_100296FD4(v7), (v10 & 1) == 0))
  {
    type metadata accessor for GEOAPLatencyBucketValues();
    v19 = swift_allocObject();
    v19[4] = a1;
    v19[5] = a2;
    v19[6] = 1;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_10012BC24(v19, v7, isUniquelyReferenced_nonNull_native);
    *(v4 + 48) = v27;
    result = swift_endAccess();
LABEL_14:
    v21 = *(v4 + 32);
    v13 = __CFADD__(v21, a1);
    v22 = v21 + a1;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 32) = v22;
      v23 = *(v4 + 36);
      v13 = __CFADD__(v23, a2);
      v24 = v23 + a2;
      if (!v13)
      {
        *(v4 + 36) = v24;
        v25 = *(v4 + 40);
        v13 = __CFADD__(v25, 1);
        v26 = v25 + 1;
        if (!v13)
        {
          *(v4 + 40) = v26;
          return result;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = *(*(v8 + 56) + 8 * result);
  v12 = v11[4];
  v13 = __CFADD__(v12, a1);
  v14 = v12 + a1;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11[4] = v14;
  v15 = v11[5];
  v13 = __CFADD__(v15, a2);
  v16 = v15 + a2;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11[5] = v16;
  v17 = v11[6];
  v13 = __CFADD__(v17, 1);
  v18 = v17 + 1;
  if (!v13)
  {
    v11[6] = v18;
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100568220()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1005682E4()
{
  Hasher.init(_seed:)();
  sub_100567DD8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10056834C()
{
  Hasher.init(_seed:)();
  sub_100567DD8(v1);
  return Hasher._finalize()();
}

uint64_t sub_100568398(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000CE6B8(&qword_101927A08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();
  result = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a2)
  {
    v8 = *(result + 16 * a2 + 32);

    (*(v4 + 8))(v6, v3);
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_1005684B4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_1000CE6B8(&qword_101927A08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = a1;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();
  result = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result[2] <= a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  (*(v7 + 8))(v9, v6);
  v12 = String._bridgeToObjectiveC()();

  return v12;
}

id sub_100568618(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_10056D77C(a4);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_100568740()
{
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptyDictionarySingleton;
  type metadata accessor for GEOAPHistoricalModelItem();
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 24) = 0xE900000000000053;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = 0x455059545F4C4C41;
  *(v2 + 48) = _swiftEmptyDictionarySingleton;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v4 = result;
    v5 = v0[8];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v2;
    v0[6] = sub_10056DDB0;
    v0[7] = v6;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100567A38;
    v0[5] = &unk_101621E40;
    v7 = _Block_copy(v0 + 2);

    v8 = swift_allocObject();
    v8[2] = v1;
    v8[3] = 0x455059545F4C4C41;
    v8[4] = 0xE900000000000053;
    v8[5] = v2;
    v8[6] = v5;
    v0[6] = sub_10056DDE0;
    v0[7] = v8;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100039C64;
    v0[5] = &unk_101621E90;
    v9 = _Block_copy(v0 + 2);

    [v4 showHistoryOfAge:10000000 withVisitorBlock:v7 completion:v9];
    _Block_release(v9);
    _Block_release(v7);

    v10 = v0[1];

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFString *sub_1005689C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5 == 8)
  {
    v13 = 7;
  }

  else
  {
    v13 = a5;
  }

  switch(v13)
  {
    case 0:
      v14 = @"UNSPECIFIED";
      goto LABEL_26;
    case 1:
      v14 = @"COHORT";
      goto LABEL_26;
    case 2:
      v14 = @"15MO";
      goto LABEL_26;
    case 3:
      v14 = @"LONG";
      goto LABEL_26;
    case 4:
      v14 = @"LONG_APPID";
      goto LABEL_26;
    case 5:
      v14 = @"SHORT";
      goto LABEL_26;
    case 6:
      v14 = @"SHORT_NAV";
      goto LABEL_26;
    case 7:
      v14 = @"NO";
      goto LABEL_26;
    case 8:
      v14 = @"NO_WITH_TIME";
      goto LABEL_26;
    case 9:
      v14 = @"NAV_TRACE";
      goto LABEL_26;
    case 10:
      v14 = @"REALTIME_TRAFFIC";
      goto LABEL_26;
    case 11:
      v14 = @"BATCH_TRAFFIC";
      goto LABEL_26;
    case 12:
      v14 = @"WIFI_PROBE";
      goto LABEL_26;
    case 13:
      v14 = @"PRESSURE_DATA";
      goto LABEL_26;
    case 14:
      v14 = @"CURATED_COLLECTION";
      goto LABEL_26;
    case 15:
      v14 = @"LOG_DISCARD";
      goto LABEL_26;
    case 16:
      v14 = @"POI_BUSYNESS";
      goto LABEL_26;
    case 17:
      v14 = @"PREDEX_TRAINING";
      goto LABEL_26;
    case 19:
      v14 = @"STRN_HARVEST";
      goto LABEL_26;
    case 20:
      v14 = @"LOC_INTEL";
LABEL_26:
      v15 = v14;
      break;
    default:
      v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
      break;
  }

  result = v14;
  if (result)
  {
    v17 = result;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    swift_beginAccess();
    v21 = *(*(a10 + 16) + 16);

    if (v21 && (sub_100297040(v18, v20), (v22 & 1) != 0))
    {
      swift_endAccess();

      swift_bridgeObjectRelease_n();
    }

    else
    {
      swift_endAccess();
      type metadata accessor for GEOAPHistoricalModelItem();
      v23 = swift_allocObject();
      *(v23 + 56) = 0;
      *(v23 + 24) = v20;
      *(v23 + 32) = 0;
      *(v23 + 40) = 0;
      *(v23 + 16) = v18;
      *(v23 + 48) = _swiftEmptyDictionarySingleton;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(a10 + 16);
      *(a10 + 16) = 0x8000000000000000;
      sub_10012BD70(v23, v18, v20, isUniquelyReferenced_nonNull_native);

      *(a10 + 16) = v26;
      swift_endAccess();
      if (!*(v26 + 16) || (sub_100297040(v18, v20), (v25 & 1) == 0))
      {

        return sub_100567E84(a6, a7, a4);
      }
    }

    sub_100567E84(a6, a7, a4);

    return sub_100567E84(a6, a7, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100568CF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000CE6B8(&qword_101927A08);
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  type metadata accessor for GEOAPHistoricalModelItem();
  sub_1005699E8();
  sub_10056DA5C(&unk_101927710, type metadata accessor for GEOAPHistoricalModelItem);
  NSDiffableDataSourceSnapshot.init()();
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(v15 + 16);
  v51 = v14;
  v52 = v10;
  v45 = a5;
  if (v16)
  {
    *&v49 = a2;
    v17 = sub_100358EF4(v16, 0);
    v53 = sub_1004173F0(&v54, v17 + 4, v16, v15);
    v50 = v56;

    sub_10005F150();
    if (v53 != v16)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v14 = v51;
    v10 = v52;
    a2 = v49;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v54 = v17;

  sub_1005679CC(&v54);

  v18 = v54;
  v50 = sub_1000CE6B8(&qword_10191AE80);
  v19 = swift_allocObject();
  v49 = xmmword_1011E1D30;
  *(v19 + 16) = xmmword_1011E1D30;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;

  NSDiffableDataSourceSnapshot.appendSections(_:)(v19);

  v48 = sub_1000CE6B8(&qword_101908400);
  v20 = swift_allocObject();
  v47 = xmmword_1011E47B0;
  *(v20 + 16) = xmmword_1011E47B0;
  *(v20 + 32) = a4;
  v54 = a2;
  v55 = a3;

  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v53 = v18;
  v21 = *(v18 + 2);
  if (v21)
  {
    v22 = 0;
    v23 = v53 + 5;
    while (v22 < v53[2])
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      swift_beginAccess();
      v26 = *(a1 + 16);
      v27 = *(v26 + 16);

      if (v27 && (v28 = sub_100297040(v24, v25), (v29 & 1) != 0))
      {
        v30 = *(*(v26 + 56) + 8 * v28);
      }

      else
      {
        v30 = 0;
      }

      swift_endAccess();
      v31 = swift_allocObject();
      *(v31 + 16) = v49;
      *(v31 + 32) = v24;
      *(v31 + 40) = v25;

      v32 = v51;
      v10 = v52;
      NSDiffableDataSourceSnapshot.appendSections(_:)(v31);

      v33 = swift_allocObject();
      *(v33 + 16) = v47;
      if (!v30)
      {
        goto LABEL_18;
      }

      ++v22;
      *(v33 + 32) = v30;
      v54 = v24;
      v55 = v25;

      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      v23 += 2;
      v14 = v32;
      if (v21 == v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  swift_beginAccess();
  v34 = v45;
  *(v45 + 16) = *(a1 + 16);

  v35 = OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_snapshot;
  swift_beginAccess();
  v36 = v46;
  (*(v46 + 24))(v34 + v35, v14, v10);
  swift_endAccess();
  v37 = *(v34 + OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_dataSource);
  if (v37)
  {
    v38 = v37;

    v39 = v34 + v35;
    v40 = v44;
    (*(v36 + 16))(v44, v39, v10);
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v41 = *(v36 + 8);
    v41(v40, v10);
    return (v41)(v14, v10);
  }

LABEL_19:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100569274(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  objc_allocWithZone(type metadata accessor for GEOAPHistoricalUploadDataSource(0));
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10056DCF4;
  *(v7 + 24) = v2;

  v8 = a1;
  v9 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v10 = *(v2 + OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_dataSource);
  *(v2 + OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_dataSource) = v9;

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;

  sub_10020AAE4(0, 0, v6, &unk_101211498, v12);
}

void sub_100569408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000CE6B8(&qword_101927A08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 dequeueReusableCellWithIdentifier:v10];

  if (!v11)
  {
    goto LABEL_17;
  }

  type metadata accessor for GEOAPHistoricalUploadTableViewCell();
  v12 = swift_dynamicCastClassUnconditional();
  v13 = IndexPath.section.getter();
  v29 = IndexPath.row.getter();
  v28 = v11;
  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v12 setAccessoryType:v13 != 0];
  [v12 setSelectionStyle:v14];
  v15 = OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_snapshot;
  swift_beginAccess();
  v16 = *(v7 + 16);
  v30 = a4;
  v16(v9, a4 + v15, v6);
  v17 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v18 = *(v7 + 8);
  v18(v9, v6);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 >= *(v17 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = v12;
  v19 = v17 + 16 * v13;
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);

  v16(v9, v30 + v15, v6);
  v31 = v20;
  v32 = v21;
  v22 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  v18(v9, v6);

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v23 = v27;
    goto LABEL_11;
  }

  v23 = v27;
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v29 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 8 * v29 + 32);

LABEL_11:

    type metadata accessor for GEOAPHistoricalUploadTableViewCellConfiguration();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *&v23[OBJC_IVAR____TtC4Maps34GEOAPHistoricalUploadTableViewCell_cellConfig] = v25;

    return;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_10056970C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_100568720();
}

uint64_t sub_10056979C()
{

  v1 = OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_snapshot;
  v2 = sub_1000CE6B8(&qword_101927A08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10056988C()
{
  sub_100569934();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100569934()
{
  if (!qword_101927700)
  {
    type metadata accessor for GEOAPHistoricalModelItem();
    sub_1005699E8();
    sub_10056DA5C(&unk_101927710, type metadata accessor for GEOAPHistoricalModelItem);
    v0 = type metadata accessor for NSDiffableDataSourceSnapshot();
    if (!v1)
    {
      atomic_store(v0, &qword_101927700);
    }
  }
}

unint64_t sub_1005699E8()
{
  result = qword_101927708;
  if (!qword_101927708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101927708);
  }

  return result;
}

id sub_100569CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100569D2C(unsigned int a1, uint64_t a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(v3) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_self();
  v8 = [v7 systemLightGrayColor];
  [v6 setBackgroundColor:v8];

  v133 = v5;
  [v133 addSubview:v6];
  v128 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v128 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v7 systemBlackColor];
  [v128 setBackgroundColor:v9];

  [v6 addSubview:v128];
  v127 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v127 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v7 systemBlackColor];
  [v127 setBackgroundColor:v10];

  [v6 addSubview:v127];
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v130 = objc_opt_self();
  v12 = [v130 systemFontOfSize:11.0];
  [v11 setFont:v12];

  v13 = String._bridgeToObjectiveC()();
  [v11 setText:v13];

  v126 = v11;
  [v11 setTextAlignment:1];
  CGAffineTransformMakeRotation(&v137, -1.57079633);
  [v11 setTransform:&v137];
  [v6 addSubview:v11];
  v132 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101210FA0;
  v15 = [v6 leadingAnchor];
  v16 = [v133 layoutMarginsGuide];

  v17 = [v16 leadingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:10.0];

  *(v14 + 32) = v18;
  v19 = [v6 trailingAnchor];
  v20 = [v133 layoutMarginsGuide];

  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];

  *(v14 + 40) = v22;
  v23 = [v6 topAnchor];
  v24 = [v133 layoutMarginsGuide];

  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];

  *(v14 + 48) = v26;
  v27 = [v6 bottomAnchor];
  v28 = [v133 layoutMarginsGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:-10.0];

  *(v14 + 56) = v30;
  v31 = [v128 topAnchor];
  v32 = [v6 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v14 + 64) = v33;
  v34 = [v128 leadingAnchor];
  v136 = v6;
  v35 = [v6 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-1.0];

  *(v14 + 72) = v36;
  v37 = [v128 trailingAnchor];
  v38 = [v6 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v14 + 80) = v39;
  v40 = [v128 bottomAnchor];
  v41 = [v133 layoutMarginsGuide];

  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];

  *(v14 + 88) = v43;
  v44 = [v11 centerXAnchor];
  v45 = [v133 layoutMarginsGuide];

  v46 = [v45 leadingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46 constant:3.0];

  *(v14 + 96) = v47;
  v48 = [v11 centerYAnchor];
  v49 = [v6 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v14 + 104) = v50;
  v51 = [v11 widthAnchor];

  v52 = [v6 heightAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v14 + 112) = v53;
  v54 = [v127 leadingAnchor];
  v55 = [v133 layoutMarginsGuide];

  v56 = [v55 leadingAnchor];
  v57 = [v54 constraintEqualToAnchor:v56];

  *(v14 + 120) = v57;
  v58 = [v127 trailingAnchor];
  v59 = [v133 layoutMarginsGuide];

  v60 = [v59 trailingAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];

  *(v14 + 128) = v61;
  v62 = [v127 topAnchor];
  v63 = [v6 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v14 + 136) = v64;
  v65 = [v127 bottomAnchor];
  v66 = [v6 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:1.0];

  *(v14 + 144) = v67;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v132 activateConstraints:isa];

  v69 = [v6 leftAnchor];
  v129 = 0;
  v70 = 0;
  v71 = a1;
  v72 = a1;
  v131 = a2;
  while (1)
  {
    v120 = *(&off_101601268 + v70 + 32);
    v135 = v69;
    if (*(a2 + 16))
    {
      break;
    }

    v73 = 0.0;
    v74 = &selRef_setStringValue_;
LABEL_3:
    v75 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v76 = sub_100567BE0(v120).super.isa;
    [v75 setBackgroundColor:v76];

    [v75 v74[436]];
    [v136 addSubview:v75];
    v77 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v77 v74[436]];
    v78 = v74;
    v79 = String._bridgeToObjectiveC()();

    [v77 setText:v79];

    [v77 setTextAlignment:1];
    v80 = [v130 systemFontOfSize:9.0];
    [v77 setFont:v80];

    [v136 addSubview:v77];
    v81 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v81 v78[436]];
    v82 = String._bridgeToObjectiveC()();

    [v81 setText:v82];

    [v81 setTextAlignment:1];
    v83 = [v130 systemFontOfSize:10.0];
    [v81 setFont:v83];

    [v136 addSubview:v81];
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1011FF0C0;
    v85 = [v75 widthAnchor];
    v86 = [v136 widthAnchor];
    v87 = [v85 constraintEqualToAnchor:v86 multiplier:0.166666667];

    *(v84 + 32) = v87;
    v88 = [v75 heightAnchor];
    v89 = [v136 heightAnchor];
    v90 = [v88 constraintEqualToAnchor:v89 multiplier:v73];

    *(v84 + 40) = v90;
    v91 = [v75 bottomAnchor];
    v92 = [v136 bottomAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];

    *(v84 + 48) = v93;
    v94 = [v75 leftAnchor];
    v95 = [v94 constraintEqualToAnchor:v135];

    *(v84 + 56) = v95;
    v96 = [v77 topAnchor];
    v97 = [v75 bottomAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 constant:2.0];

    *(v84 + 64) = v98;
    v99 = [v77 bottomAnchor];
    v100 = [v133 layoutMarginsGuide];
    v101 = [v100 bottomAnchor];

    v102 = [v99 constraintEqualToAnchor:v101];
    *(v84 + 72) = v102;
    v103 = [v77 leftAnchor];
    v104 = [v103 constraintEqualToAnchor:v135];

    *(v84 + 80) = v104;
    v105 = [v77 widthAnchor];

    v106 = [v75 widthAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];

    *(v84 + 88) = v107;
    v108 = [v81 topAnchor];
    v109 = [v136 topAnchor];
    v110 = [v108 constraintEqualToAnchor:v109 constant:2.0];

    *(v84 + 96) = v110;
    v111 = [v81 heightAnchor];
    v112 = [v111 constraintEqualToConstant:10.0];

    *(v84 + 104) = v112;
    v113 = [v81 leftAnchor];
    v114 = [v113 constraintEqualToAnchor:v135];

    *(v84 + 112) = v114;
    v115 = [v81 widthAnchor];

    v116 = [v75 widthAnchor];
    v117 = [v115 constraintEqualToAnchor:v116];

    *(v84 + 120) = v117;
    v118 = Array._bridgeToObjectiveC()().super.isa;

    [v132 activateConstraints:v118];

    v119 = [v75 rightAnchor];
    v69 = v119;
    a2 = v131;
    if (++v70 == 6)
    {

      return v133;
    }
  }

  result = sub_100296FD4(v120);
  v74 = &selRef_setStringValue_;
  if ((v122 & 1) == 0)
  {
    v73 = 0.0;
    goto LABEL_3;
  }

  v123 = *(*(*(a2 + 56) + 8 * result) + 16);
  v124 = v129 + v123;
  if (!__CFADD__(v129, v123))
  {
    v73 = v123 / v71;
    sub_1000CE6B8(&unk_10190D5C0);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_1011E1D30;
    v129 = v124;
    *(v125 + 56) = &type metadata for Float;
    *(v125 + 64) = &protocol witness table for Float;
    *(v125 + 32) = (v124 * 100.0) / v72;

    String.init(format:_:)();

    goto LABEL_3;
  }

  __break(1u);
  return result;
}