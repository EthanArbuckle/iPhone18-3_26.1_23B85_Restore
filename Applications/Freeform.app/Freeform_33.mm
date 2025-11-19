uint64_t sub_10067C910(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_1005B981C(&unk_101A28660);
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

uint64_t sub_10067CA1C(uint64_t a1, uint64_t a2)
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

  sub_1007AB810(result);

  return sub_10067C910(v4, v2, 0);
}

unint64_t sub_10067CB20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(a3 + 16);
  v13 = __OFSUB__(v12, v10);
  v14 = v12 - v10;
  if (v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v8 + v14;
  if (__OFADD__(v8, v14))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = sub_10003E0D8(v9, a2, v12, a3, a5);
  *v5 = v7;
  return result;
}

uint64_t sub_10067CC60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_100677D7C(a1, v4);
}

uint64_t sub_10067CD18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_100677D7C(a1, v4);
}

unint64_t sub_10067CE54()
{
  result = qword_1019F6CA8;
  if (!qword_1019F6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6CA8);
  }

  return result;
}

uint64_t sub_10067CF4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_10067D230(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10067D058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10067D230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1005B981C(a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10067D388(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
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
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_100678438(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10067D46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *v4;
  result = sub_1005B981C(a4);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10067D5B8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
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

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100B37F40(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10067D46C(v6, a2, 0, &unk_101A050F0);
  *v2 = v4;
  return result;
}

id sub_10067D694(char a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v9 = &a4[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_delegate];
  *&a4[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_initialURL;
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  *&a4[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_textField] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_replaceAction] = 0;
  a4[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_role] = a1 & 1;
  *(v9 + 1) = a5;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_10067DE0C(a3, &a4[v10]);
  swift_endAccess();
  v14.receiver = a4;
  v14.super_class = type metadata accessor for CRLInsertEditURLAlert();
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_10000CAAC(a3, &unk_1019F33C0);
  return v12;
}

uint64_t sub_10067D804(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100006370(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_10067D934(unint64_t result, uint64_t a2, uint64_t a3)
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

  result = v6 + 32 + 2 * result + 2 * a3;
  v10 = (v6 + 32 + 2 * a2);
  if (result != v10 || result >= v10 + 2 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 2 * v9);
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

unint64_t sub_10067DA08(unint64_t result, uint64_t a2, uint64_t a3)
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

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
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

uint64_t sub_10067DB04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_10067D804(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10067DBF8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_10067DD0C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), unint64_t *a5)
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
    return sub_10067899C(v9, v8, 1, v7, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10067DE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067DF58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1005E3A54(a1, v4, v5, v6);
}

unint64_t sub_10067E168()
{
  result = qword_1019F6D30;
  if (!qword_1019F6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6D30);
  }

  return result;
}

unint64_t sub_10067E1BC()
{
  result = qword_101A28750;
  if (!qword_101A28750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28750);
  }

  return result;
}

unint64_t sub_10067E210()
{
  result = qword_1019F6D40;
  if (!qword_1019F6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6D40);
  }

  return result;
}

uint64_t sub_10067E264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1006612E4(a1, v4, v5, v6);
}

uint64_t sub_10067E318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1006620C4(a1, v4, v5, v6);
}

uint64_t sub_10067E3CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10066035C(a1, v4, v5, v6);
}

uint64_t sub_10067E480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10065DBE0(a1, v4, v5, v6);
}

uint64_t sub_10067E534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10065EDC4(a1, v4, v5, v6);
}

uint64_t sub_10067E5E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10065B180(a1, v4, v5, v6);
}

uint64_t sub_10067E69C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10065BDA4(a1, v4, v5, v6);
}

uint64_t sub_10067E750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10065CAB8(a1, v4, v5, v6);
}

unint64_t sub_10067E804()
{
  result = qword_1019F6D88;
  if (!qword_1019F6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6D88);
  }

  return result;
}

unint64_t sub_10067E858()
{
  result = qword_1019F6D90;
  if (!qword_1019F6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6D90);
  }

  return result;
}

unint64_t sub_10067E8AC()
{
  result = qword_1019F6D98;
  if (!qword_1019F6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6D98);
  }

  return result;
}

uint64_t sub_10067E90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F6DA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10067E97C()
{
  result = qword_101A287D0;
  if (!qword_101A287D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A287D0);
  }

  return result;
}

unint64_t sub_10067E9D0()
{
  result = qword_1019F6DB0;
  if (!qword_1019F6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6DB0);
  }

  return result;
}

uint64_t sub_10067EA24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_100677990(a1, v4);
}

uint64_t sub_10067EB00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_1006781DC(a1, v4, v5, v1 + 4, v6, v7, v8, v9);
}

uint64_t sub_10067EBEC(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10067EC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1006781DC(a1, v4, v5, v1 + 4, v6, v7, v8, v9);
}

uint64_t sub_10067ED30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100658C7C(a1, v4, v5, v7, v6);
}

uint64_t sub_10067EDF0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10067EE58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1006469C4(a1, v4, v5, v6);
}

uint64_t sub_10067EF0C(uint64_t a1)
{
  v1 = *(a1 + 940);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067EF20(uint64_t a1)
{
  if (*(a1 + 940) <= 1u)
  {
    return *(a1 + 940);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10067F098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 5;
  if (v5 > 1)
  {
    if (v5 == 2 || v5 == 6)
    {
    }
  }

  else if (a5 >> 5)
  {
    if (v5 == 1)
    {
    }
  }

  else
  {
    return sub_10067F0D8();
  }

  return result;
}

uint64_t sub_10067F0D8()
{
}

uint64_t sub_10067F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 5;
  if (v5 > 1)
  {
    if (v5 == 2 || v5 == 6)
    {
    }
  }

  else if (a5 >> 5)
  {
    if (v5 == 1)
    {
    }
  }

  else
  {
    return sub_10067F154();
  }

  return result;
}

uint64_t sub_10067F154()
{
}

uint64_t sub_10067F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10067F520;

  return sub_10067F61C(a1, a2, a3, a4);
}

uint64_t sub_10067F520(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10067F61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  sub_1005B981C(&qword_1019FB750);
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for CRLRealTimeMessengerConfiguration();
  v5[10] = swift_task_alloc();
  v6 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10067F7D0, 0, 0);
}

uint64_t sub_10067F7D0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 48);
  swift_defaultActor_initialize();
  v6[15] = 0;
  swift_unknownObjectWeakInit();
  v6[19] = 0;
  v6[20] = 0;
  GroupSession.id.getter();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *(v0 + 136) = v7;
  *(v0 + 144) = v8;
  (*(v2 + 8))(v1, v4);
  v6[16] = v7;
  v6[17] = v9;
  type metadata accessor for GroupSessionMessenger();
  *(v0 + 168) = enum case for GroupSessionMessenger.DeliveryMode.unreliable(_:);
  v10 = *(v5 + 104);
  *(v0 + 152) = v10;
  *(v0 + 160) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v3);

  v6[18] = GroupSessionMessenger.__allocating_init<A>(session:deliveryMode:)();

  return _swift_task_switch(sub_10067F91C, v6, 0);
}

uint64_t sub_10067F91C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 168);
  v26 = *(v0 + 136);
  v27 = *(v0 + 144);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v25 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  v6[15] = *(v0 + 40);
  swift_unknownObjectWeakAssign();
  v24 = type metadata accessor for CRLRealTimeMessengerImplementation();
  v1(v3, v2, v4);
  v9 = v5[7];
  *(v3 + v9) = 20;
  v10 = enum case for DispatchTimeInterval.seconds(_:);
  v11 = type metadata accessor for DispatchTimeInterval();
  (*(*(v11 - 8) + 104))(v3 + v9, v10, v11);
  *(v3 + v5[5]) = 980;
  *(v3 + v5[6]) = 24;
  v12 = type metadata accessor for CRLRealTimeDataEncryptor();
  v14 = *(v7 + 80);
  v13 = *(v7 + 88);
  v15 = type metadata accessor for CRLUnreliableRealTimeMessenger();

  v6[19] = sub_1012FE270(v3, v8, v6, 0, 0, v24, v12, v15, &off_101886E48, &off_10187F680);

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v25, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v6[18];
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v14;
  v19[5] = v13;
  v19[6] = v18;
  v19[7] = v26;
  v19[8] = v27;
  v19[9] = v17;

  v20 = sub_10064191C(0, 0, v25, &unk_10146FE90, v19);
  swift_unknownObjectRelease();

  v6[20] = v20;

  v21 = *(v0 + 8);
  v22 = *(v0 + 48);

  return v21(v22);
}

uint64_t sub_10067FBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[142] = a7;
  v7[141] = a6;
  v7[140] = a5;
  v7[139] = a4;
  sub_1005B981C(&qword_1019F67C0);
  v7[143] = swift_task_alloc();
  v8 = type metadata accessor for CRLProto_Data(0);
  v7[144] = v8;
  v7[145] = *(v8 - 8);
  v7[146] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v7[147] = swift_task_alloc();
  v7[148] = type metadata accessor for CRLProto_EncryptedRealTimeMessage(0);
  v7[149] = swift_task_alloc();
  sub_1005B981C(&qword_1019F7020);
  v7[150] = swift_task_alloc();
  v7[151] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[152] = v9;
  v7[153] = *(v9 - 8);
  v7[154] = swift_task_alloc();
  v10 = type metadata accessor for Participant();
  v7[155] = v10;
  v7[156] = *(v10 - 8);
  v7[157] = swift_task_alloc();
  v11 = sub_1005B981C(&qword_1019F7028);
  v7[158] = v11;
  v7[159] = *(v11 - 8);
  v7[160] = swift_task_alloc();
  v7[161] = swift_task_alloc();
  v7[162] = swift_task_alloc();
  sub_1005B981C(&qword_1019F7030);
  v7[163] = swift_task_alloc();
  v12 = sub_1005B981C(&qword_1019F7038);
  v7[164] = v12;
  v7[165] = *(v12 - 8);
  v7[166] = swift_task_alloc();
  v13 = sub_1005B981C(&qword_1019F7040);
  v7[167] = v13;
  v7[168] = *(v13 - 8);
  v7[169] = swift_task_alloc();

  return _swift_task_switch(sub_10067FFDC, 0, 0);
}

uint64_t sub_10067FFDC()
{
  v1 = v0[166];
  v2 = v0[165];
  v3 = v0[164];
  GroupSessionMessenger.messages(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = sub_100683E50();
  v5 = swift_task_alloc();
  v0[170] = v5;
  *v5 = v0;
  v5[1] = sub_10068011C;
  v6 = v0[167];
  v7 = v0[163];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_10068011C()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = sub_100681234;
  }

  else
  {
    v2 = sub_100680230;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10068024C()
{
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1264);
  if ((*(*(v0 + 1272) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 1344) + 8))(*(v0 + 1352), *(v0 + 1336));

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 1368);
  v6 = *(v0 + 1296);
  v7 = *(v0 + 1288);
  v8 = *(v2 + 48);
  *v6 = *v1;
  v9 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v10 = *(v9 - 8);
  (*(v10 + 32))(&v6[v8], &v1[v8], v9);
  sub_10000BE14(v6, v7, &qword_1019F7028);
  v11 = *(v2 + 48);
  v12 = sub_101074ED4(*v7, *(v7 + 8));
  *(v0 + 1376) = v12;
  if (v5)
  {
    (*(v10 + 8))(v7 + v11, v9);
    if (qword_1019F2158 != -1)
    {
LABEL_70:
      swift_once();
    }

    v13 = static OS_os_log.crlRealTimeMessageTransfer;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v18, "Encountered an error while deserializing data received over the unreliable channel. %{public}@", 94, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    goto LABEL_8;
  }

  v24 = *(v0 + 1296);
  v25 = *(v0 + 1280);
  v26 = v12;
  v27 = *(v0 + 1264);
  v28 = *(v10 + 8);
  v28(v7 + v11, v9);
  sub_10000BE14(v24, v25, &qword_1019F7028);
  sub_10002640C(*v25, *(v25 + 8));
  v29 = *(v27 + 48);
  v30 = v26;
  GroupSessionMessenger.MessageContext.source.getter();
  v28(v25 + v29, v9);
  if (*(v26 + 16))
  {
    if (*(v26 + 16) == 1)
    {
      v31 = *(v0 + 1232);
      v32 = *(v0 + 1224);
      v33 = *(v0 + 1216);
      UUID.init()();
      v34 = UUID.uuidString.getter();
      v35 = *(v32 + 8);
      v155 = v34;
      v158 = v36;
      *(v0 + 1464) = v34;
      *(v0 + 1472) = v36;
      v35(v31, v33);
      v38 = *(v30 + 24);
      v37 = *(v30 + 32);
      *(v0 + 952) = 0;
      *(v0 + 920) = 0u;
      *(v0 + 936) = 0u;
      sub_100024E98(v38, v37);
      sub_100024E98(v38, v37);
      BinaryDecodingOptions.init()();
      sub_100683EB4();
      Message.init(serializedData:extensions:partial:options:)();
      v154 = v35;
      v160 = v32 + 8;
      v52 = *(v0 + 1192);
      v53 = *(v0 + 1160);
      v54 = *(v0 + 1152);
      v55 = *(v0 + 1144);
      v56 = *v52;
      sub_10000BE14(v52 + *(*(v0 + 1184) + 24), v55, &qword_1019F67C0);
      v57 = *(v53 + 48);
      v58 = v57(v55, 1, v54);
      v59 = *(v0 + 1192);
      v60 = *(v0 + 1168);
      if (v58 == 1)
      {
        v61 = *(v0 + 1152);
        v62 = *(v0 + 1144);
        *v60 = xmmword_10146F370;
        UnknownStorage.init()();
        sub_10002640C(v38, v37);
        sub_100683F0C(v59, type metadata accessor for CRLProto_EncryptedRealTimeMessage);
        if (v57(v62, 1, v61) != 1)
        {
          sub_10000CAAC(*(v0 + 1144), &qword_1019F67C0);
        }
      }

      else
      {
        v99 = *(v0 + 1144);
        sub_10002640C(v38, v37);
        sub_100683F0C(v59, type metadata accessor for CRLProto_EncryptedRealTimeMessage);
        sub_100683F6C(v99, v60);
      }

      v100 = *(v0 + 1168);
      v101 = *v100;
      v72 = v100[1];
      sub_100024E98(*v100, v72);
      sub_100683F0C(v100, type metadata accessor for CRLProto_Data);
      type metadata accessor for CRLEncryptedRealTimeMessage();
      v71 = swift_initStackObject();
      *(v0 + 1480) = v71;
      v71[2] = v56;
      v71[3] = v101;
      v71[4] = v72;
      if (qword_1019F2158 != -1)
      {
        goto LABEL_72;
      }

      goto LABEL_43;
    }

    v42 = *(v0 + 1232);
    v43 = *(v0 + 1224);
    v44 = *(v0 + 1216);
    UUID.init()();
    v45 = UUID.uuidString.getter();
    v47 = v46;
    v48 = *(v43 + 8);
    *(v0 + 1536) = v45;
    *(v0 + 1544) = v46;
    v48(v42, v44);
    v49 = *(v26 + 24);
    v50 = *(v26 + 32);
    sub_100024E98(v49, v50);
    v51 = sub_1009F96AC(v49, v50);
    *(v0 + 1552) = v51;
    v84 = v51;
    v161 = v45;
    if (qword_1019F2158 != -1)
    {
      swift_once();
    }

    v85 = *(v0 + 1232);
    v151 = *(v0 + 1216);
    v152 = *(v0 + 1120);
    v153 = *(v0 + 1128);
    v156 = static OS_os_log.crlRealTimeMessageTransfer;
    *(v0 + 1560) = static OS_os_log.crlRealTimeMessageTransfer;
    *(v0 + 1568) = sub_1005B981C(&qword_1019F54E0);
    v86 = swift_initStackObject();
    *(v86 + 16) = xmmword_10146CA70;
    v87 = UUID.uuidString.getter();
    v89 = v88;
    *(v86 + 56) = &type metadata for String;
    v90 = sub_1000053B0();
    *(v0 + 1576) = v90;
    *(v86 + 64) = v90;
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    v91 = *(v84 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
    *(v86 + 96) = &type metadata for UInt16;
    *(v86 + 104) = &protocol witness table for UInt16;
    *(v86 + 72) = v91;
    Participant.id.getter();
    v92 = UUID.uuidString.getter();
    v94 = v93;
    v48(v85, v151);
    *(v86 + 136) = &type metadata for String;
    *(v86 + 144) = v90;
    *(v86 + 112) = v92;
    *(v86 + 120) = v94;
    *(v86 + 176) = &type metadata for String;
    *(v86 + 184) = v90;
    *(v86 + 152) = v152;
    *(v86 + 160) = v153;
    *(v86 + 216) = &type metadata for String;
    *(v86 + 224) = v90;
    *(v86 + 192) = v161;
    *(v86 + 200) = v47;

    v95 = static os_log_type_t.default.getter();
    sub_100005404(v156, &_mh_execute_header, v95, "Unreliable process received chunked message with chainID: %{public}@ chunkIndex: %{public}d received from sender %{public}@ on group session UUID: %{public}@ localId:%{public}@", 176, 2, v86);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    Strong = swift_weakLoadStrong();
    *(v0 + 1584) = Strong;
    if (Strong)
    {
      v97 = Strong;
      v98 = sub_100681D48;
LABEL_63:

      return _swift_task_switch(v98, v97, 0);
    }

    v119 = *(v0 + 1576);
    v120 = *(v0 + 1560);
    v121 = *(v0 + 1544);
    v122 = *(v0 + 1536);
    v123 = swift_initStackObject();
    *(v123 + 16) = xmmword_10146C6B0;
    *(v123 + 56) = &type metadata for String;
    *(v123 + 64) = v119;
    *(v123 + 32) = v122;
    v124 = v123 + 32;
    *(v123 + 40) = v121;
    v125 = static os_log_type_t.default.getter();
    v126 = "Done processing chunked localId:%{public}@";
    v127 = v120;
    v128 = 42;
LABEL_56:
    sub_100005404(v127, &_mh_execute_header, v125, v126, v128, 2, v123);

    goto LABEL_67;
  }

  v40 = *(v26 + 24);
  v39 = *(v26 + 32);
  sub_100024E98(v40, v39);
  v41 = sub_100B8E490(v40, v39);
  *(v0 + 1384) = v41;
  v63 = v41;
  v64 = *(v0 + 1232);
  v65 = *(v0 + 1224);
  v66 = *(v0 + 1216);
  UUID.init()();
  v67 = UUID.uuidString.getter();
  v69 = v68;
  v70 = *(v65 + 8);
  v160 = v67;
  *(v0 + 1392) = v67;
  *(v0 + 1400) = v68;
  (v70)(v64, v66);
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  v71 = static OS_os_log.crlRealTimeMessageTransfer;
  *(v0 + 1408) = static OS_os_log.crlRealTimeMessageTransfer;
  *(v0 + 1416) = sub_1005B981C(&qword_1019F54E0);
  v22 = swift_initStackObject();
  v72 = v22;
  *(v22 + 16) = xmmword_10146D2A0;
  v73 = *(v63 + 24);
  v74 = *(v73 + 16);
  if (!v74)
  {
    goto LABEL_50;
  }

  v75 = 0;
  v76 = (v73 + 48);
  while (1)
  {
    v77 = *(v76 - 1);
    v78 = *v76 >> 62;
    if (v78 <= 1)
    {
      if (v78)
      {
        v82 = __OFSUB__(HIDWORD(v77), v77);
        LODWORD(v77) = HIDWORD(v77) - v77;
        if (v82)
        {
          goto LABEL_71;
        }

        v77 = v77;
      }

      else
      {
        v77 = BYTE6(*v76);
      }

      goto LABEL_33;
    }

    if (v78 != 2)
    {
      v77 = 0;
      goto LABEL_33;
    }

    v81 = v77 + 16;
    v79 = *(v77 + 16);
    v80 = *(v81 + 8);
    v82 = __OFSUB__(v80, v79);
    v77 = v80 - v79;
    if (v82)
    {
      break;
    }

LABEL_33:
    v82 = __OFADD__(v77, 24);
    v83 = v77 + 24;
    if (v82)
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v82 = __OFADD__(v75, v83);
    v75 += v83;
    if (v82)
    {
      goto LABEL_69;
    }

    v76 += 3;
    if (!--v74)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  swift_once();
LABEL_43:
  v69 = static OS_os_log.crlRealTimeMessageTransfer;
  *(v0 + 1488) = static OS_os_log.crlRealTimeMessageTransfer;
  *(v0 + 1496) = sub_1005B981C(&qword_1019F54E0);
  v22 = swift_initStackObject();
  v70 = v22;
  *(v22 + 16) = xmmword_10146D2A0;
  v102 = v71[3];
  v103 = v71[4];
  v104 = v103 >> 62;
  if ((v103 >> 62) > 1)
  {
    if (v104 != 2)
    {
      v102 = 0;
LABEL_60:
      v82 = __OFADD__(v102, 24);
      v133 = v102 + 24;
      if (!v82)
      {
        v134 = *(v0 + 1232);
        v135 = *(v0 + 1216);
        v136 = *(v0 + 1128);
        v137 = *(v0 + 1120);
        *(v22 + 56) = &type metadata for Int;
        *(v22 + 64) = &protocol witness table for Int;
        *(v22 + 32) = v133;
        Participant.id.getter();
        v138 = UUID.uuidString.getter();
        v140 = v139;
        v154(v134, v135);
        *(v70 + 96) = &type metadata for String;
        v141 = sub_1000053B0();
        *(v0 + 1504) = v141;
        *(v70 + 72) = v138;
        *(v70 + 80) = v140;
        *(v70 + 136) = &type metadata for String;
        *(v70 + 144) = v141;
        *(v70 + 104) = v141;
        *(v70 + 112) = v137;
        *(v70 + 120) = v136;
        *(v70 + 176) = &type metadata for String;
        *(v70 + 184) = v141;
        *(v70 + 152) = v155;
        *(v70 + 160) = v158;

        v142 = static os_log_type_t.default.getter();
        sub_100005404(v69, &_mh_execute_header, v142, "Unreliable process received encrypted message of size %{public}d received from sender %{public}@ on group session UUID: %{public}@ localId:%{public}@", 149, 2, v70);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v143 = swift_weakLoadStrong();
        *(v0 + 1512) = v143;
        if (v143)
        {
          v97 = v143;
          v98 = sub_1006818FC;
          goto LABEL_63;
        }

        v144 = *(v0 + 1504);
        v145 = *(v0 + 1488);
        v146 = *(v0 + 1480);
        v147 = *(v0 + 1472);
        v148 = *(v0 + 1464);
        v149 = swift_initStackObject();
        *(v149 + 16) = xmmword_10146C6B0;
        *(v149 + 56) = &type metadata for String;
        *(v149 + 64) = v144;
        *(v149 + 32) = v148;
        v124 = v149 + 32;
        *(v149 + 40) = v147;
        v150 = static os_log_type_t.default.getter();
        sub_100005404(v145, &_mh_execute_header, v150, "Done processing encrypted localId:%{public}@", 44, 2, v149);
        swift_setDeallocating();
        sub_10002640C(*(v146 + 24), *(v146 + 32));
LABEL_67:

        swift_setDeallocating();
        sub_100005070(v124);
        (*(*(v0 + 1248) + 8))(*(v0 + 1256), *(v0 + 1240));
LABEL_8:
        sub_10000CAAC(*(v0 + 1296), &qword_1019F7028);
        v19 = sub_100683E50();
        v20 = swift_task_alloc();
        *(v0 + 1360) = v20;
        *v20 = v0;
        v20[1] = sub_10068011C;
        v21 = *(v0 + 1336);
        v22 = *(v0 + 1304);
        v23 = v19;

        return dispatch thunk of AsyncIteratorProtocol.next()(v22, v21, v23);
      }

      __break(1u);
      goto LABEL_74;
    }

    v107 = v102 + 16;
    v105 = *(v102 + 16);
    v106 = *(v107 + 8);
    v82 = __OFSUB__(v106, v105);
    v102 = v106 - v105;
    if (!v82)
    {
      goto LABEL_60;
    }

    __break(1u);
LABEL_50:
    v75 = 0;
LABEL_51:
    v157 = v69;
    v159 = v71;
    v82 = __OFADD__(v75, 16);
    v108 = v75 + 16;
    if (!v82)
    {
      v109 = *(v0 + 1232);
      v110 = *(v0 + 1216);
      v111 = *(v0 + 1128);
      v112 = *(v0 + 1120);
      v72[7] = &type metadata for Int;
      v72[8] = &protocol witness table for Int;
      v72[4] = v108;
      Participant.id.getter();
      v113 = UUID.uuidString.getter();
      v115 = v114;
      (v70)(v109, v110);
      v72[12] = &type metadata for String;
      v116 = sub_1000053B0();
      *(v0 + 1424) = v116;
      v72[9] = v113;
      v72[10] = v115;
      v72[17] = &type metadata for String;
      v72[18] = v116;
      v72[13] = v116;
      v72[14] = v112;
      v72[15] = v111;
      v72[22] = &type metadata for String;
      v72[23] = v116;
      v72[19] = v160;
      v72[20] = v157;

      v117 = static os_log_type_t.default.getter();
      sub_100005404(v159, &_mh_execute_header, v117, "Unreliable process messages of size %{public}d received from sender %{public}@ on group session UUID: %{public}@ localId:%{public}@", 131, 2, v72);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v118 = swift_weakLoadStrong();
      *(v0 + 1432) = v118;
      if (v118)
      {
        v97 = v118;
        v98 = sub_1006812C0;
        goto LABEL_63;
      }

      v129 = *(v0 + 1424);
      v130 = *(v0 + 1408);
      v131 = *(v0 + 1400);
      v132 = *(v0 + 1392);
      v123 = swift_initStackObject();
      *(v123 + 16) = xmmword_10146C6B0;
      *(v123 + 56) = &type metadata for String;
      *(v123 + 64) = v129;
      *(v123 + 32) = v132;
      v124 = v123 + 32;
      *(v123 + 40) = v131;
      v125 = static os_log_type_t.default.getter();
      v126 = "Done processing localId:%{public}@";
      v127 = v130;
      v128 = 34;
      goto LABEL_56;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!v104)
  {
    v102 = BYTE6(v103);
    goto LABEL_60;
  }

  v82 = __OFSUB__(HIDWORD(v102), v102);
  LODWORD(v102) = HIDWORD(v102) - v102;
  if (!v82)
  {
    v102 = v102;
    goto LABEL_60;
  }

LABEL_75:
  __break(1u);
  return dispatch thunk of AsyncIteratorProtocol.next()(v22, v21, v23);
}

uint64_t sub_100681234()
{
  *(v0 + 1096) = *(v0 + 1368);
  sub_1005B981C(&unk_1019F6B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1006812C0()
{
  *(v0 + 1440) = *(*(v0 + 1432) + 152);

  return _swift_task_switch(sub_100681338, 0, 0);
}

uint64_t sub_100681338(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (v3[180])
  {
    v4 = v3[156];
    v5 = v3[155];
    v6 = v3[151];
    (*(v4 + 16))(v6, v3[157], v5);
    (*(v4 + 56))(v6, 0, 1, v5);
    a2 = v3[180];
    a1 = sub_1006813F8;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1006813F8()
{
  v1 = v0[180] + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[181] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v3 + 32) + **(v3 + 32));
    v5 = swift_task_alloc();
    v0[182] = v5;
    *v5 = v0;
    v5[1] = sub_1006815A4;
    v6 = v0[173];
    v7 = v0[151];

    return v9(v6, v7, ObjectType, v3);
  }

  else
  {

    sub_10000CAAC(v0[151], &qword_1019F7020);

    return _swift_task_switch(sub_1006816EC, 0, 0);
  }
}

uint64_t sub_1006815A4()
{
  v2 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 1440);
    v4 = sub_100683FD0;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 1440);
    v4 = sub_10068187C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006816EC()
{
  v1 = v0[178];
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[174];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Done processing localId:%{public}@", 34, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  (*(v0[156] + 8))(v0[157], v0[155]);
  sub_10000CAAC(v0[162], &qword_1019F7028);
  v7 = sub_100683E50();
  v8 = swift_task_alloc();
  v0[170] = v8;
  *v8 = v0;
  v8[1] = sub_10068011C;
  v9 = v0[167];
  v10 = v0[163];

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v9, v7);
}

uint64_t sub_10068187C()
{

  sub_10000CAAC(*(v0 + 1208), &qword_1019F7020);

  return _swift_task_switch(sub_1006816EC, 0, 0);
}

uint64_t sub_1006818FC()
{
  *(v0 + 1520) = *(*(v0 + 1512) + 152);

  return _swift_task_switch(sub_100681974, 0, 0);
}

void sub_100681974()
{
  if (v0[190])
  {
    v1 = v0[156];
    v2 = v0[155];
    v3 = v0[150];
    (*(v1 + 16))(v3, v0[157], v2);
    (*(v1 + 56))(v3, 0, 1, v2);
    v4 = swift_task_alloc();
    v0[191] = v4;
    *v4 = v0;
    v4[1] = sub_100681A6C;
    v5 = v0[185];
    v6 = v0[150];

    sub_1012F84A8(v5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100681A6C()
{
  v1 = *(*v0 + 1200);

  sub_10000CAAC(v1, &qword_1019F7020);

  return _swift_task_switch(sub_100681BB0, 0, 0);
}

uint64_t sub_100681BB0()
{
  v1 = v0[188];
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[184];
  v5 = v0[183];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Done processing encrypted localId:%{public}@", 44, 2, inited);
  swift_setDeallocating();
  sub_10002640C(*(v3 + 24), *(v3 + 32));

  swift_setDeallocating();
  sub_100005070(inited + 32);
  (*(v0[156] + 8))(v0[157], v0[155]);
  sub_10000CAAC(v0[162], &qword_1019F7028);
  v8 = sub_100683E50();
  v9 = swift_task_alloc();
  v0[170] = v9;
  *v9 = v0;
  v9[1] = sub_10068011C;
  v10 = v0[167];
  v11 = v0[163];

  return dispatch thunk of AsyncIteratorProtocol.next()(v11, v10, v8);
}

uint64_t sub_100681D48()
{
  *(v0 + 1592) = *(*(v0 + 1584) + 152);

  return _swift_task_switch(sub_100681DC0, 0, 0);
}

void sub_100681DC0()
{
  if (v0[199])
  {
    v1 = v0[156];
    v2 = v0[155];
    v3 = v0[150];
    (*(v1 + 16))(v3, v0[157], v2);
    (*(v1 + 56))(v3, 0, 1, v2);
    v4 = swift_task_alloc();
    v0[200] = v4;
    *v4 = v0;
    v4[1] = sub_100681EB8;
    v5 = v0[194];
    v6 = v0[150];

    sub_1012F9090(v5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100681EB8()
{
  v1 = *(*v0 + 1200);

  sub_10000CAAC(v1, &qword_1019F7020);

  return _swift_task_switch(sub_100681FFC, 0, 0);
}

uint64_t sub_100681FFC()
{
  v1 = v0[197];
  v2 = v0[195];
  v3 = v0[193];
  v4 = v0[192];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Done processing chunked localId:%{public}@", 42, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  (*(v0[156] + 8))(v0[157], v0[155]);
  sub_10000CAAC(v0[162], &qword_1019F7028);
  v7 = sub_100683E50();
  v8 = swift_task_alloc();
  v0[170] = v8;
  *v8 = v0;
  v8[1] = sub_10068011C;
  v9 = v0[167];
  v10 = v0[163];

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v9, v7);
}

uint64_t sub_10068218C()
{
  if (*(v0 + 160))
  {

    Task.cancel()();
  }

  sub_1000C1024(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100682214()
{
  sub_10068218C();

  return swift_defaultActor_deallocate();
}

uint64_t sub_100682258(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100682278, v1, 0);
}

uint64_t sub_100682278(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 24) + 152);
  *(v3 + 32) = v4;
  if (v4)
  {

    a1 = sub_1006822F8;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1006822F8()
{
  v1 = v0[4];
  v2 = sub_100B8D408();
  v3 = v1 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration;
  v4 = *(v3 + *(type metadata accessor for CRLRealTimeMessengerConfiguration() + 20)) < v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1006823D0;
  v6 = v0[2];

  return sub_1012FC954(v6, v4);
}

uint64_t sub_1006823D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1006824E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100682500, v1, 0);
}

void sub_100682500()
{
  v1 = *(v0[3] + 152);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1006825B4;
    v3 = v0[2];

    sub_1012FC27C(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006825B4()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_1006826F0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1006826F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100682754(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = type metadata accessor for Participants();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100682814, v1, 0);
}

uint64_t sub_100682814()
{
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = static OS_os_log.crlRealTimeMessageTransfer;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = sub_100B8D408();
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v5 = *(v1 + 128);
  v4 = *(v1 + 136);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v5;
  *(inited + 80) = v4;

  v6 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Unreliable transfer message of size %{public}d to all participants on group session UUID: %{public}@.", 101, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v7 = sub_100B8D4B0();
  v0[26] = v7;
  v0[27] = v8;
  v9 = v7;
  v10 = v8;
  type metadata accessor for CRLRealTimeMessageContainer();
  v11 = swift_initStackObject();
  v0[28] = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  sub_100024E98(v9, v10);
  v12 = sub_1010749E0();
  v0[29] = v12;
  v0[30] = v13;
  v14 = v12;
  v15 = v13;
  (*(v0[24] + 104))(v0[25], enum case for Participants.all(_:), v0[23]);
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  v16[1] = sub_100682ABC;
  v17 = v0[25];

  return GroupSessionMessenger.send(_:to:)(v14, v15, v17);
}

uint64_t sub_100682ABC()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = v2[25];
  v4 = v2[24];
  v5 = v2[23];
  v6 = v2[22];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100682CD0;
  }

  else
  {
    v7 = sub_100682C38;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100682C38()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_10002640C(v0[26], v0[27]);
  sub_10002640C(v1, v2);
  swift_setDeallocating();
  sub_10002640C(*(v3 + 24), *(v3 + 32));

  v4 = v0[1];

  return v4();
}

uint64_t sub_100682CD0()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_10002640C(v0[26], v0[27]);
  sub_10002640C(v1, v2);
  swift_setDeallocating();
  sub_10002640C(*(v3 + 24), *(v3 + 32));

  v4 = v0[1];

  return v4();
}

uint64_t sub_100682D68(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = type metadata accessor for Participants();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100682E28, v1, 0);
}

uint64_t sub_100682E28()
{
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = static OS_os_log.crlRealTimeMessageTransfer;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v9)
    {
      v7 = BYTE6(v8);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v9 != 2)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v12 = v7 + 16;
  v10 = *(v7 + 16);
  v11 = *(v12 + 8);
  v13 = __OFSUB__(v11, v10);
  v7 = v11 - v10;
  if (v13)
  {
    __break(1u);
LABEL_10:
    v13 = __OFSUB__(HIDWORD(v7), v7);
    LODWORD(v7) = HIDWORD(v7) - v7;
    if (v13)
    {
LABEL_18:
      __break(1u);
      return GroupSessionMessenger.send(_:to:)(inited, v4, v5);
    }

    v7 = v7;
  }

LABEL_13:
  v13 = __OFADD__(v7, 24);
  v14 = v7 + 24;
  if (v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = v0[22];
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v14;
  v17 = *(v15 + 128);
  v16 = *(v15 + 136);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(v6 + 72) = v17;
  *(v6 + 80) = v16;

  v18 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v18, "Unreliable transfer encryptedCKRecordData of size %{public}d to all participants on group session UUID: %{public}@.", 115, 2, v6);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v19 = sub_1012CC86C();
  v0[26] = v19;
  v0[27] = v20;
  v21 = v19;
  v22 = v20;
  type metadata accessor for CRLRealTimeMessageContainer();
  v23 = swift_initStackObject();
  v0[28] = v23;
  *(v23 + 16) = 1;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  sub_100024E98(v21, v22);
  v24 = sub_1010749E0();
  v0[29] = v24;
  v0[30] = v25;
  v26 = v24;
  v27 = v25;
  (*(v0[24] + 104))(v0[25], enum case for Participants.all(_:), v0[23]);
  v28 = swift_task_alloc();
  v0[31] = v28;
  *v28 = v0;
  v28[1] = sub_100683120;
  v5 = v0[25];
  inited = v26;
  v4 = v27;

  return GroupSessionMessenger.send(_:to:)(inited, v4, v5);
}

uint64_t sub_100683120()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = v2[25];
  v4 = v2[24];
  v5 = v2[23];
  v6 = v2[22];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100683FD8;
  }

  else
  {
    v7 = sub_100683FD4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10068329C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Participants();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10068335C, v1, 0);
}

uint64_t sub_10068335C()
{
  v1 = sub_1009F7E30();
  v0[12] = v1;
  v0[13] = v2;
  v3 = v1;
  v4 = v2;
  type metadata accessor for CRLRealTimeMessageContainer();
  inited = swift_initStackObject();
  v0[14] = inited;
  *(inited + 16) = 2;
  *(inited + 24) = v3;
  *(inited + 32) = v4;
  sub_100024E98(v3, v4);
  v6 = sub_1010749E0();
  v0[15] = v6;
  v0[16] = v7;
  v8 = v6;
  v9 = v7;
  (*(v0[10] + 104))(v0[11], enum case for Participants.all(_:), v0[9]);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1006834F8;
  v11 = v0[11];

  return GroupSessionMessenger.send(_:to:)(v8, v9, v11);
}

uint64_t sub_1006834F8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_10068370C;
  }

  else
  {
    v7 = sub_100683674;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100683674()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_10002640C(v0[12], v0[13]);
  sub_10002640C(v1, v2);
  swift_setDeallocating();
  sub_10002640C(*(v3 + 24), *(v3 + 32));

  v4 = v0[1];

  return v4();
}

uint64_t sub_10068370C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_10002640C(v0[12], v0[13]);
  sub_10002640C(v1, v2);
  swift_setDeallocating();
  sub_10002640C(*(v3 + 24), *(v3 + 32));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006837A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1006837C8, v2, 0);
}

uint64_t sub_1006837C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1006838A4;
    v4 = v0[2];
    v3 = v0[3];

    return sub_100FF7568(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1006838A4()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1006839D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_100682258(a1);
}

uint64_t sub_100683A6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1006824E0(a1);
}

uint64_t sub_100683B04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_100682754(a1);
}

uint64_t sub_100683B98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_100682D68(a1);
}

uint64_t sub_100683C2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_10068329C(a1);
}

uint64_t sub_100683CC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_1006837A4(a1, a2);
}

uint64_t sub_100683D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_10067FBF4(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_100683E50()
{
  result = qword_1019F7048;
  if (!qword_1019F7048)
  {
    sub_1005C4E5C(&qword_1019F7040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F7048);
  }

  return result;
}

unint64_t sub_100683EB4()
{
  result = qword_1019F7050;
  if (!qword_1019F7050)
  {
    type metadata accessor for CRLProto_EncryptedRealTimeMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F7050);
  }

  return result;
}

uint64_t sub_100683F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100683F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100684000(uint64_t a1)
{
  sub_100043E40(_swiftEmptyArrayStorage);
  v2 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v2, 0xD000000000000018, 0x800000010155B4C0, isUniquelyReferenced_nonNull_native);
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  sub_1006364DC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 sendEventInDomain:v5 lazily:1 eventPayload:isa];
}

id sub_1006841B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLURLLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100684210(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100684230(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

__n128 _s5ColorOwcp(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100684290(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006842B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1006842F0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10068434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 8))();
  v7 = (*(a2 + 24))(a1, a2);
  result = (*(a2 + 16))(a1, a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

uint64_t sub_100684420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 8))();
  v7 = (*(a2 + 16))(a1, a2);
  v8 = (*(a2 + 24))(a1, a2);
  v9 = (*(a2 + 32))(a1, a2);
  v10 = (*(a2 + 40))(a1, a2);
  result = (*(a2 + 48))(a1, a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = result;
  *(a3 + 48) = v12 & 1;
  return result;
}

uint64_t sub_10068453C()
{
  v1 = &qword_101464860;
  if (*v0)
  {
    v1 = &qword_101464868;
  }

  return *v1;
}

uint64_t sub_1006845D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (sub_100684A70())
    {
      swift_beginAccess();
      v2 = *(v1 + 32);
      *(v1 + 32) = _swiftEmptyArrayStorage;
      v3 = *(v2 + 16);
      if (v3)
      {
        v4 = v2 + 40;
        do
        {
          v5 = *(v4 - 8);

          v5(v6);

          v4 += 16;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1006846AC(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10098EABC(&_mh_execute_header, "performBlockOnMainThreadWhenSafeToEnqueueCommands(_:)", 53, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLAsyncCommandHelper.swift", 93, 2, 38))
  {
    if (sub_100684A70())
    {
      return a1();
    }

    else
    {
      v18 = swift_allocObject();
      *(v18 + 16) = a1;
      *(v18 + 24) = a2;
      swift_beginAccess();
      v19 = *(v3 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 32) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100B37298(0, v19[2] + 1, 1, v19);
        *(v3 + 32) = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100B37298((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      v23 = &v19[2 * v22];
      v23[4] = sub_10002AAE0;
      v23[5] = v18;
      *(v3 + 32) = v19;
      return swift_endAccess();
    }
  }

  else
  {
    sub_100006370(0, &qword_1019F2D90);
    v24[0] = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    v15[2] = v2;
    v15[3] = a1;
    v15[4] = a2;
    aBlock[4] = sub_100685F04;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10187FA00;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24[1] = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400);
    sub_10000D494();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v24[0];
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }
}

BOOL sub_100684A70()
{
  if ((sub_10098EABC(&_mh_execute_header, "isSafeToRunBlocks", 17, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLAsyncCommandHelper.swift", 93, 2, 53) & 1) == 0)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v56[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v56);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 57;
    v20 = v56[0];
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:57 isFatal:0 format:v29 args:v26];

    return 0;
  }

  v1 = Strong;
  v2 = swift_weakLoadStrong();
  if (!v2)
  {
    v30 = objc_opt_self();
    v31 = [v30 _atomicIncrementAssertCount];
    v56[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v56);
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    v34 = [v33 lastPathComponent];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_10146CA70;
    *(v39 + 56) = &type metadata for Int32;
    *(v39 + 64) = &protocol witness table for Int32;
    *(v39 + 32) = v31;
    v40 = sub_100006370(0, &qword_1019F4D30);
    *(v39 + 96) = v40;
    v41 = sub_1005CF04C();
    *(v39 + 104) = v41;
    *(v39 + 72) = v32;
    *(v39 + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(v39 + 112) = v35;
    *(v39 + 120) = v37;
    *(v39 + 176) = &type metadata for UInt;
    *(v39 + 184) = &protocol witness table for UInt;
    *(v39 + 144) = v42;
    *(v39 + 152) = 58;
    v43 = v56[0];
    *(v39 + 216) = v40;
    *(v39 + 224) = v41;
    *(v39 + 192) = v43;
    v44 = v32;
    v45 = v43;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v47, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v50 file:v51 lineNumber:58 isFatal:0 format:v52 args:v49];

    return 0;
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 > 0)
  {

    return 0;
  }

  v54 = *(v3 + 40);
  if (*(v3 + 32) == 1)
  {

    return v54 <= 0;
  }

  else if (v54 <= 0)
  {
    swift_beginAccess();
    v55 = *(*(v3 + 64) + 16);

    return v55 == 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10068528C()
{
  result = sub_100684A70();
  if (result)
  {
    swift_beginAccess();
    v2 = *(v0 + 32);
    *(v0 + 32) = _swiftEmptyArrayStorage;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 40;
      do
      {
        v5 = *(v4 - 8);

        v5(v6);

        v4 += 16;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_100685328()
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100685394()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {

    return sub_10068528C();
  }

  else
  {
    sub_100006370(0, &qword_1019F2D90);
    v12[0] = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100685A68;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10187F910;
    v10 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v12[1] = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400);
    sub_10000D494();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v11 = v12[0];
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10068568C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (sub_100684A70())
    {
      swift_beginAccess();
      v2 = *(v1 + 32);
      *(v1 + 32) = _swiftEmptyArrayStorage;
      v3 = *(v2 + 16);
      if (v3)
      {
        v4 = v2 + 40;
        do
        {
          v5 = *(v4 - 8);

          v5(v6);

          v4 += 16;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100685778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CRLSuspendResumeCoordinatorObserverWrapper();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100685854(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v2 + 32) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_1019F16E0 != -1)
  {
    swift_once();
  }

  v6 = qword_101AD6868;
  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 mainQueue];
  v10 = swift_allocObject();
  swift_weakInit();
  v15[4] = sub_100685A60;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = *"";
  v15[2] = sub_100059694;
  v15[3] = &unk_10187F8E8;
  v11 = _Block_copy(v15);

  v12 = [v5 addObserverForName:v6 object:v8 queue:v9 usingBlock:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  sub_100685778(v13, a2, &off_10187F888);

  return v2;
}

uint64_t sub_100685A70(uint64_t a1, void (**a2)(void))
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  _Block_copy(a2);
  if (sub_10098EABC(&_mh_execute_header, "performBlockOnMainThreadWhenSafeToEnqueueCommands(_:)", 53, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLAsyncCommandHelper.swift", 93, 2, 38))
  {
    if (sub_100684A70())
    {
      a2[2](a2);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = sub_100685EBC;
      *(v16 + 24) = v12;
      swift_beginAccess();
      v17 = *(a1 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 32) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_100B37298(0, v17[2] + 1, 1, v17);
        *(a1 + 32) = v17;
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_100B37298((v19 > 1), v20 + 1, 1, v17);
      }

      v17[2] = v20 + 1;
      v21 = &v17[2 * v20];
      v21[4] = sub_10002AAE4;
      v21[5] = v16;
      *(a1 + 32) = v17;
      swift_endAccess();
    }
  }

  else
  {
    sub_100006370(0, &qword_1019F2D90);
    v23[0] = v8;
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_100685EBC;
    v14[4] = v12;
    aBlock[4] = sub_100685EC4;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10187F988;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v23[1] = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400);
    sub_10000D494();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v23[0]);
  }
}

uint64_t sub_100685F08(void (*a1)(char *, void, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a1(v7, 0, 0);
  sub_100686028(v7);
  return 0;
}

uint64_t sub_100686028(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F33C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100686090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  sub_10068613C(v5, a2);
  v8 = a2 + *(a1 + 48);
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  sub_10002A948(v8, v9);
  v11 = (*(*(v10 + 32) + 24))(v14, v9);
  *v12 = *v12 + a3;
  return v11(v14, 0);
}

uint64_t sub_10068613C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLCanvasLayerAnimation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006861A0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F7328);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = type metadata accessor for CRLCanvasLayerAnimation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000630C(a1, v15);
  sub_1005B981C(&qword_1019F5870);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_100687D68(v5, v9);
    v12 = sub_1012335AC(v9, v1);
    sub_100687DCC(v9);
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_10000CAAC(v5, &qword_1019F7328);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10068635C(uint64_t a1, double a2)
{
  v5 = type metadata accessor for CRLCanvasLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    goto LABEL_7;
  }

  v7 = Strong;
  sub_100D3F52C(&v12, v2 + *(v5 + 48));

  if (!*(&v13 + 1))
  {
LABEL_7:
    sub_10000CAAC(&v12, &unk_101A09F70);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_9;
  }

  sub_1005B981C(&qword_1019F7320);
  sub_1005B981C(&qword_1019F5870);
  if (swift_dynamicCast())
  {
    if (*(&v16 + 1))
    {
      sub_100050F74(&v15, v18);
      v8 = v19;
      v9 = v20;
      sub_100020E58(v18, v19);
      v10 = (*(*(v9 + 8) + 8))(a1, v8, a2);
      sub_100005070(v18);
      return v10;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

LABEL_9:
  sub_10000CAAC(&v15, &qword_1019F57A0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100686510(double a1, double a2)
{
  v5 = type metadata accessor for CRLCanvasLayerAnimation();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = v2;
      v11 = (v2 + *(v5 + 48));
      v12 = v11[3];
      v13 = v11[4];
      sub_100020E58(v11, v12);
      (*(v13 + 56))(v53, v12, v13);
      sub_100B77684(v9, &v55);

      sub_100687CF4(v53);
      v14 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v15 = v57;
        sub_100020E58(&v55, *(&v56 + 1));
        (*(v15 + 48))(&v58, v14, v15);
        sub_100005070(&v55);
        if (v63)
        {
          v64[2] = v60;
          v64[3] = v61;
          v64[4] = v62;
          v65 = v63;
          v64[0] = v58;
          v64[1] = v59;
          v17 = v11[3];
          v16 = v11[4];
          sub_100020E58(v11, v17);
          v18 = (*(*(v16 + 32) + 8))(v17) + a1;
          v20 = v11[3];
          v19 = v11[4];
          sub_100020E58(v11, v20);
          v21 = (*(*(v19 + 32) + 8))(v20);
          v23 = v11[3];
          v22 = v11[4];
          sub_100020E58(v11, v23);
          v24 = (a2 - v18) / (v21 + (*(*(v22 + 32) + 32))(v23) + a1 - v18);
          if (v24 >= 0.0 && v24 <= 1.0)
          {
            sub_100915A54(v53);
            v26 = CACurrentMediaTime();
            v27 = sub_10068635C(v53, v26);
            sub_10000CAAC(v53, &unk_101A09F80);
            *&v28 = v24;
            [v27 solveForInput:v28];
            v30 = v29;

            v31 = v11[3];
            v32 = v11[4];
            sub_100020E58(v11, v31);
            if ((*(v32 + 184))(v31, v32))
            {
              if (*(v10 + 128) & 1) != 0 || (*(v10 + 168) & 1) != 0 || (*(v10 + 184) & 1) != 0 || (*(v10 + 200))
              {
                sub_100931458(v53);
                sub_100B76B70(&v58, v30);
                sub_100687CF4(v53);
                sub_10000BE14(&v58, v53, &unk_1019F4D00);
                v33 = v54;
                if (v54)
                {
                  v34 = sub_100020E58(v53, v54);
                  v35 = *(v33 - 8);
                  v36 = __chkstk_darwin(v34);
                  v38 = &v53[-1] - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v35 + 16))(v38, v36);
                  v39 = _bridgeAnythingToObjectiveC<A>(_:)();
                  (*(v35 + 8))(v38, v33);
                  sub_100005070(v53);
                }

                else
                {
                  v39 = 0;
                }

                v40 = String._bridgeToObjectiveC()();
                [v7 setValue:v39 forKeyPath:v40];

                swift_unknownObjectRelease();
                sub_10000CAAC(&v58, &unk_1019F4D00);
                return sub_1005F8A64(v64);
              }

              v41 = *(v10 + 192);
              v42 = v30;
              v43 = *(v10 + 176);
              v44 = sub_100120AD8(*(v10 + 96), *(v10 + 104), *(v10 + 112), *(v10 + 120), *(v10 + 136), *(v10 + 144), *(v10 + 152), *(v10 + 160), v42);
              v46 = v45;
              v48 = v47;
              v50 = v49;
              v51 = sub_100120944(v43, v41, v42);
              sub_100915C84(*(v10 + 88), 0, 0, v44, v46, v48, v50, v51);
            }
          }

          return sub_1005F8A64(v64);
        }

        return sub_10000CAAC(&v58, &unk_101A09F80);
      }
    }

    else
    {

      v57 = 0;
      v55 = 0u;
      v56 = 0u;
    }

    sub_10000CAAC(&v55, &qword_1019F7310);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
    return sub_10000CAAC(&v58, &unk_101A09F80);
  }

  return result;
}

void sub_100686A34()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F57A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v86[-2] - v3;
  v5 = type metadata accessor for CRLCanvasLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    goto LABEL_7;
  }

  v7 = Strong;
  v8 = (v0 + *(v5 + 48));
  v9 = v8[3];
  v10 = v8[4];
  sub_100020E58(v8, v9);
  (*(v10 + 56))(v87, v9, v10);
  sub_100B77684(v7, &v89);

  sub_100687CF4(v87);
  v11 = *(&v90 + 1);
  if (!*(&v90 + 1))
  {
LABEL_7:
    sub_10000CAAC(&v89, &qword_1019F7310);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = -1;
    goto LABEL_8;
  }

  v12 = v91;
  sub_100020E58(&v89, *(&v90 + 1));
  (*(v12 + 40))(&v92, v11, v12);
  sub_100005070(&v89);
  if (v108 == 77)
  {
    v20 = v93;
    v21 = v94;
    v23 = *(&v95 + 1);
    v22 = *&v95;
    v24 = sub_100120414(*&v92, *(&v92 + 1), *&v93, *(&v93 + 1));
    v26 = v25;
    v27 = *(v0 + 24);
    [*(v1 + 24) visibleUnscaledRect];
    v30 = sub_100121C3C(*&v20, *(&v20 + 1), v28, v29);
    *(v1 + 96) = sub_10011EC70(v24, v26, v30);
    *(v1 + 104) = v31;
    *(v1 + 112) = v32;
    *(v1 + 120) = v33;
    *(v1 + 128) = 0;
    v35 = *(&v21 + 1);
    v34 = *&v21;
    goto LABEL_21;
  }

  if (v108 != 255)
  {
    sub_100687CF4(&v92);
    goto LABEL_9;
  }

LABEL_8:
  sub_10000CAAC(&v92, &qword_1019F7318);
LABEL_9:
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = (v0 + *(v5 + 48));
  v16 = v15[3];
  v17 = v15[4];
  sub_100020E58(v15, v16);
  (*(v17 + 56))(v87, v16, v17);
  sub_100B77684(v14, &v89);

  sub_100687CF4(v87);
  v18 = *(&v90 + 1);
  if (!*(&v90 + 1))
  {
LABEL_16:
    sub_10000CAAC(&v89, &qword_1019F7310);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = -1;
    goto LABEL_17;
  }

  v19 = v91;
  sub_100020E58(&v89, *(&v90 + 1));
  (*(v19 + 40))(&v92, v18, v19);
  sub_100005070(&v89);
  if (v108 != 78)
  {
    if (v108 != 255)
    {
      sub_100687CF4(&v92);
      if (*(v0 + 128))
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_17:
    sub_10000CAAC(&v92, &qword_1019F7318);
    if (*(v0 + 128))
    {
      return;
    }

    goto LABEL_22;
  }

  v36 = v92;
  v23 = *(&v93 + 1);
  v22 = *&v93;
  v27 = *(v0 + 24);
  [*(v1 + 24) visibleUnscaledRect];
  v38 = v37;
  v40 = v39;
  v43 = sub_100120414(v41, v42, v37, v39);
  v45 = v44;
  [v27 visibleUnscaledRect];
  v48 = sub_100121C3C(v38, v40, v46, v47);
  *(v1 + 96) = sub_10011EC70(v43, v45, v48);
  *(v1 + 104) = v49;
  *(v1 + 112) = v50;
  *(v1 + 120) = v51;
  *(v1 + 128) = 0;
  v35 = *(&v36 + 1);
  v34 = *&v36;
LABEL_21:
  v52 = sub_100120414(v34, v35, v22, v23);
  v54 = v53;
  [v27 visibleUnscaledRect];
  v57 = sub_100121C3C(v22, v23, v55, v56);
  *(v1 + 136) = sub_10011EC70(v52, v54, v57);
  *(v1 + 144) = v58;
  *(v1 + 152) = v59;
  *(v1 + 160) = v60;
  *(v1 + 168) = 0;
  if (*(v1 + 128))
  {
    return;
  }

LABEL_22:
  if ((*(v1 + 168) & 1) == 0)
  {
    v62 = *(v1 + 112);
    v61 = *(v1 + 120);
    v63 = *(v1 + 152);
    v85 = *(v1 + 136);
    *v86 = v63;
    sub_100687BC0(v1, &v92);
    v64 = *(&v93 + 1);
    [*(&v93 + 1) unobscuredScrollViewFrame];
    v67 = sub_100121EF4(0, v62, v61, v65, v66) / v62;
    v69 = v68 / v61;
    if (v69 >= v67)
    {
      v70 = v67;
    }

    else
    {
      v70 = v69;
    }

    [v64 unobscuredScrollViewFrame];
    v71 = v86[1];
    v74 = sub_100121EF4(0, v86[0], v86[1], v72, v73);
    v75 = v74 / v86[0];
    v77 = v76 / v71;
    if (v77 < v75)
    {
      v75 = v77;
    }

    v78 = sub_1004C3240(v75, 0.1, 4.0);
    *(v1 + 176) = v70;
    *(v1 + 184) = 0;
    *(v1 + 192) = v78;
    *(v1 + 200) = 0;
    sub_100687BC0(&v92, v87);
    v79 = swift_allocObject();
    v80 = v87[3];
    *(v79 + 48) = v87[2];
    *(v79 + 64) = v80;
    *(v79 + 80) = v87[4];
    *(v79 + 96) = v88;
    v81 = v87[1];
    *(v79 + 16) = v87[0];
    *(v79 + 32) = v81;
    v82 = v85;
    *(v79 + 120) = *v86;
    *(v79 + 104) = v82;
    *(v79 + 136) = v78;
    UUID.init()();
    v83 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v84 = &v4[*(v83 + 20)];
    *v84 = sub_100687C1C;
    v84[1] = v79;
    sub_100687C30(&v92);
    (*(*(v83 - 8) + 56))(v4, 0, 1, v83);
    sub_100687C84(v4, v1 + *(v5 + 56));
  }
}

id sub_100687034(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v13 = objc_opt_self();
  [v13 begin];
  v14 = *(a1 + 8);
  v15 = *&CATransform3DIdentity.m33;
  v41[4] = *&CATransform3DIdentity.m31;
  v41[5] = v15;
  v16 = *&CATransform3DIdentity.m43;
  v41[6] = *&CATransform3DIdentity.m41;
  v41[7] = v16;
  v17 = *&CATransform3DIdentity.m13;
  v41[0] = *&CATransform3DIdentity.m11;
  v41[1] = v17;
  v18 = *&CATransform3DIdentity.m23;
  v41[2] = *&CATransform3DIdentity.m21;
  v41[3] = v18;
  [v14 setTransform:v41];
  v19 = *(a1 + 24);
  [v19 viewScale];
  if (sub_100687D48(v20, a7))
  {
    v21 = sub_100120414(a3, a4, a5, a6);
  }

  else
  {
    [v19 visibleUnscaledRect];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v40 = a6;
    v30 = v29;
    [v19 setViewScale:a7];
    [v19 i_viewScaleDidChange];
    [v19 setContentOffset:0 scrollOptions:{sub_100120414(v24, v26, v28, v30)}];
    v31 = sub_100120414(a3, a4, a5, v40);
    v33 = v32;
    [v19 growCanvasAsNeededToRestoreContentOffset:?];
    v22 = v33;
    v21 = v31;
  }

  [*(a1 + 16) setContentOffset:{sub_10091673C(v21, v22, a7)}];
  [v19 i_viewScrollDidChange];
  v34 = String._bridgeToObjectiveC()();
  [v14 removeAnimationForKey:v34];

  v35 = [v14 associatedBackgroundLayer];
  if (v35)
  {
    v36 = &v35[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    v37 = *&CGAffineTransformIdentity.c;
    *v36 = *&CGAffineTransformIdentity.a;
    *(v36 + 1) = v37;
    *(v36 + 2) = *&CGAffineTransformIdentity.tx;
    if (v35[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1 && (v35[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
    {
      v38 = v35;
      [v35 setNeedsLayout];
      v35 = v38;
    }
  }

  [v19 i_viewScrollingEnded];
  [v19 i_viewDidZoomToViewScale:1 notify:a7];
  return [v13 commit];
}

uint64_t sub_1006872F0(uint64_t a1)
{
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 1;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  v2 = *(a1 + 56);
  sub_10000CAAC(v1 + v2, &qword_1019F57A8);
  v3 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t sub_100687408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for CRLCanvasLayerAnimation()
{
  result = qword_1019F7288;
  if (!qword_1019F7288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100687520()
{
  sub_1006876FC(319, &qword_1019F7298, type metadata accessor for CGRect);
  if (v0 <= 0x3F)
  {
    sub_100687648();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        sub_100687698();
        if (v3 <= 0x3F)
        {
          sub_1006876FC(319, &qword_1019F5818, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100687648()
{
  if (!qword_1019F72A0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F72A0);
    }
  }
}

unint64_t sub_100687698()
{
  result = qword_1019F72A8;
  if (!qword_1019F72A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1019F72A8);
  }

  return result;
}

void sub_1006876FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Int sub_100687780()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100687E28(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10068781C()
{
  type metadata accessor for UUID();
  sub_100687E28(&qword_1019FB870, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10068789C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100687E28(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100687934(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = v2[3];
  v4 = v2[4];
  sub_100020E58(v2, v3);
  return (*(*(v4 + 32) + 8))(v3);
}

uint64_t sub_100687984(uint64_t a1, double a2)
{
  v4 = v2 + *(a1 + 48);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  sub_10002A948(v4, v5);
  return (*(*(v6 + 32) + 16))(v5, a2);
}

uint64_t (*sub_1006879E4(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  v4 = *(a2 + 48);
  *(a1 + 16) = v4;
  v5 = (v2 + v4);
  v7 = *(v2 + v4 + 24);
  v6 = *(v2 + v4 + 32);
  sub_100020E58(v5, v7);
  *a1 = (*(*(v6 + 32) + 8))(v7);
  return sub_100687A68;
}

uint64_t sub_100687A68(uint64_t a1)
{
  v1 = *(a1 + 8) + *(a1 + 16);
  v2 = *a1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_10002A948(v1, v3);
  return (*(*(v4 + 32) + 16))(v3, v2);
}

uint64_t sub_100687AD0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = v2[3];
  v4 = v2[4];
  sub_100020E58(v2, v3);
  return (*(*(v4 + 32) + 32))(v3);
}

uint64_t sub_100687B68(uint64_t a1)
{
  result = sub_100687E28(&qword_1019F7308, type metadata accessor for CRLCanvasLayerAnimation);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100687C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F57A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100687D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLCanvasLayerAnimation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100687DCC(uint64_t a1)
{
  v2 = type metadata accessor for CRLCanvasLayerAnimation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100687E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100687F18()
{
  type metadata accessor for CRLAppIntentsDonationManager();
  v0 = swift_allocObject();
  v0[5] = type metadata accessor for IntentDonationManager();
  v0[6] = &off_10187FCC8;
  sub_10002C58C(v0 + 2);
  result = static IntentDonationManager.shared.getter();
  qword_101AD5F90 = v0;
  return result;
}

uint64_t sub_100687F74(uint64_t a1)
{
  *(v2 + 584) = v1;
  *(v2 + 576) = a1;
  return _swift_task_switch(sub_100687F98, 0, 0);
}

uint64_t sub_100687F98()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = static OS_os_log.appIntents;
  *(v0 + 592) = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(v0 + 552) = sub_1006898F4;
  *(v0 + 560) = v1;

  sub_1005B981C(&qword_1019F7420);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(v0 + 600) = v8;
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = static os_log_type_t.info.getter();
  sub_100005404(v3, &_mh_execute_header, v9, "About to donate %@ to transcript", 32, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100688BCC(v2, (v0 + 328));
  if (*(v0 + 352))
  {
    v10 = *(v0 + 584);
    v11 = *(v0 + 376);
    *(v0 + 280) = *(v0 + 360);
    *(v0 + 296) = v11;
    *(v0 + 312) = *(v0 + 392);
    v12 = *(v0 + 344);
    *(v0 + 248) = *(v0 + 328);
    *(v0 + 264) = v12;
    sub_100020E58((v10 + 16), *(v10 + 40));
    v13 = *(v0 + 272);
    v14 = *(v0 + 280);
    v15 = sub_100020E58((v0 + 248), v13);
    v16 = swift_task_alloc();
    *(v0 + 608) = v16;
    *v16 = v0;
    v16[1] = sub_100688218;

    return sub_100689060(v15, v0 + 288, v13, v14);
  }

  else
  {
    sub_10000CAAC(v0 + 328, &qword_1019F7428);
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100688218()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_10068838C;
  }

  else
  {
    v2 = sub_10068832C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10068832C()
{
  sub_100689954(v0 + 248);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10068838C()
{
  v49 = v0;
  v5 = v0[77];
  v1 = v0[75];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[71] = v5;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  *(inited + 32) = String.init<A>(describing:)();
  v3 = inited + 32;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 40) = v4;
  v45 = objc_opt_self();
  LODWORD(v5) = [v45 _atomicIncrementAssertCount];
  v48 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v48);
  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v11 = v0[75];
    v12 = static OS_os_log.crlAssert;
    v46 = v0;
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_10146CA70;
    *(v13 + 56) = &type metadata for Int32;
    *(v13 + 64) = &protocol witness table for Int32;
    *(v13 + 32) = v5;
    v14 = sub_1005CF000();
    *(v13 + 96) = v14;
    v15 = sub_10068990C(&qword_1019F52E0, sub_1005CF000);
    v16 = v48;
    *(v13 + 72) = v47;
    *(v13 + 136) = &type metadata for String;
    *(v13 + 144) = v11;
    *(v13 + 104) = v15;
    *(v13 + 112) = v8;
    *(v13 + 120) = v10;
    *(v13 + 176) = &type metadata for UInt;
    *(v13 + 184) = &protocol witness table for UInt;
    *(v13 + 152) = 37;
    *(v13 + 216) = v14;
    *(v13 + 224) = v15;
    *(v13 + 192) = v16;
    v17 = v47;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v13);
    swift_setDeallocating();
    v47 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "Unable to perform donation: %@", 30, 2, inited);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v22 = v21 + 3;
    v21[4] = 0;
    v21[5] = 0;
    v23 = *(inited + 16);
    v0 = inited;
    if (!v23)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      v24 = (v3 + 40 * v8);
      v10 = v24[3];
      LODWORD(v5) = sub_100020E58(v24, v10);
      v25 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      inited = *v22;
      v26 = *(v25 + 16);
      v27 = __OFADD__(*v22, v26);
      v28 = *v22 + v26;
      if (v27)
      {
        break;
      }

      v5 = v21[4];
      if (v5 >= v28)
      {
        goto LABEL_19;
      }

      if (v5 + 0x4000000000000000 < 0)
      {
        goto LABEL_32;
      }

      v10 = v21[5];
      if (2 * v5 > v28)
      {
        v28 = 2 * v5;
      }

      v21[4] = v28;
      if ((v28 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_33;
      }

      v29 = v3;
      v30 = v0;
      v31 = v25;
      v32 = swift_slowAlloc();
      v33 = v32;
      v21[5] = v32;
      if (v10)
      {
        if (v32 != v10 || v32 >= &v10[8 * inited])
        {
          memmove(v32, v10, 8 * inited);
        }

        LODWORD(v5) = v21;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v25 = v31;
        v0 = v30;
        v3 = v29;
LABEL_19:
        v33 = v21[5];
        if (!v33)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v25 = v31;
      v0 = v30;
      v3 = v29;
      if (!v33)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_20:
      v35 = *(v25 + 16);
      if (v35)
      {
        v36 = (v25 + 32);
        v37 = *v22;
        while (1)
        {
          v38 = *v36++;
          *&v33[8 * v37] = v38;
          v37 = *v22 + 1;
          if (__OFADD__(*v22, 1))
          {
            break;
          }

          *v22 = v37;
          if (!--v35)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      if (++v8 == v23)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_27:
  v39 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  [v45 handleFailureInFunction:v40 file:v41 lineNumber:37 isFatal:0 format:v42 args:v39];

  swift_setDeallocating();
  swift_arrayDestroy();

  sub_100689954((v46 + 31));
  v43 = v46[1];

  return v43();
}

uint64_t sub_10068896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100688990, 0, 0);
}

uint64_t sub_100688990()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_100688A8C;
    v3 = *(v0 + 56);

    return sub_100687F74(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100688A8C()
{

  return _swift_task_switch(sub_100688BA4, 0, 0);
}

uint64_t sub_100688BCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CRLBoardEntity();
  __chkstk_darwin(v4);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24[-1] - v8;
  __chkstk_darwin(v10);
  v12 = &v24[-1] - v11;
  __chkstk_darwin(v13);
  v15 = &v24[-1] - v14;
  v16 = type metadata accessor for CRLAppIntentsDonationManager.DonatableAppIntent();
  __chkstk_darwin(v16);
  v18 = &v24[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006897E4(a1, v18, type metadata accessor for CRLAppIntentsDonationManager.DonatableAppIntent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *&v18[*(sub_1005B981C(&qword_1019F73F0) + 48)];
    sub_100688FA0(v18, v15);
    sub_100BA349C(v15, v19, a2);
  }

  else
  {
    sub_100688FA0(v18, v15);
    EntityProperty.wrappedValue.getter();
    sub_10075172C(v24[0], v24[1], v24);
    a2[3] = &type metadata for CRLCreateBoardIntent;
    a2[4] = sub_1006896D0();
    v20 = swift_allocObject();
    *a2 = v20;
    sub_100689724(v24, v20 + 16);
    a2[8] = sub_1005B981C(&qword_1019F7400);
    a2[9] = sub_100689780();
    sub_10002C58C(a2 + 5);
    sub_1006897E4(v15, v12, type metadata accessor for CRLBoardEntity);
    v21 = sub_100B0768C();
    sub_1006897E4(v12, v9, type metadata accessor for CRLBoardEntity);
    sub_1006897E4(v9, v6, type metadata accessor for CRLBoardEntity);
    IntentParameter.wrappedValue.setter();
    sub_100689004(v9);
    sub_100689004(v12);
    v23 = v21;
    sub_10068990C(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
    sub_10068984C();
    static IntentResult.result<A, B>(value:opensIntent:)();

    sub_1006898A0(v24);
  }

  return sub_100689004(v15);
}

uint64_t sub_100688EF8()
{
  sub_100005070(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLAppIntentsDonationManager.DonatableAppIntent()
{
  result = qword_1019F74A8;
  if (!qword_1019F74A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100688FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100689004(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100689060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for IntentDonationIdentifier();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100689134, 0, 0);
}

uint64_t sub_100689134()
{
  sub_100689984(*(v0 + 104), v0 + 56);
  if (*(v0 + 80))
  {
    sub_100050F74((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = sub_100020E58((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_1006892B8;
    v5 = *(v0 + 160);
    v6 = *(v0 + 120);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);

    return IntentDonationManager.donate<A, B>(intent:result:)(v5, v8, v3, v7, v2, v6, v1);
  }

  else
  {
    sub_10000CAAC(v0 + 56, &qword_1019F7430);
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_100689458;
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);

    return IntentDonationManager.donate<A>(intent:)(v10, v13, v12, v11);
  }
}

uint64_t sub_1006892B8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1006895F0;
  }

  else
  {
    (*(v2[18] + 8))(v2[20], v2[17]);
    v3 = sub_1006893E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006893E4()
{
  sub_100005070(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100689458()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100689664;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v3 = sub_100689584;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100689584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006895F0()
{
  sub_100005070(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100689664()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1006896D0()
{
  result = qword_1019F73F8;
  if (!qword_1019F73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F73F8);
  }

  return result;
}

unint64_t sub_100689780()
{
  result = qword_1019F7408;
  if (!qword_1019F7408)
  {
    sub_1005C4E5C(&qword_1019F7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F7408);
  }

  return result;
}

uint64_t sub_1006897E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10068984C()
{
  result = qword_1019F7418;
  if (!qword_1019F7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F7418);
  }

  return result;
}

uint64_t sub_10068990C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100689984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F7430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006899F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 _s6ShadowOwcp(uint64_t a1, uint64_t a2)
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

uint64_t sub_100689A28(uint64_t a1, int a2)
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

uint64_t sub_100689A70(uint64_t result, int a2, int a3)
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

void sub_100689AD4()
{
  sub_100689B48();
  if (v0 <= 0x3F)
  {
    sub_100689B90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100689B48()
{
  if (!qword_1019F74B8)
  {
    v0 = type metadata accessor for CRLBoardEntity();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F74B8);
    }
  }
}

void sub_100689B90()
{
  if (!qword_1019F74C0)
  {
    type metadata accessor for CRLBoardEntity();
    sub_1005C4E5C(&unk_1019F74C8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1019F74C0);
    }
  }
}

void sub_100689C20()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CRLWPStickyNoteRep();
  objc_msgSendSuper2(&v13, "becameSelected");
  v1 = [v0 layout];
  [v1 setSupportsInstructionalText:1];

  [v0 updateChildrenFromLayout];
  v2 = [v0 interactiveCanvasController];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 info];
    v5 = [v3 currentSelectionPathContainsInfo:v4];

    if (v5)
    {
      [v3 invalidateContentLayersForRep:v0];
      v6 = [v0 childReps];
      sub_100006370(0, &qword_1019FB7A0);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          [v3 invalidateContentLayersForRep:v10];

          ++v9;
          if (v12 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }

LABEL_17:
    }

    else
    {
    }
  }
}

id sub_100689E6C()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CRLWPStickyNoteRep();
  objc_msgSendSuper2(&v11, "becameNotSelected");
  v1 = [v0 layout];
  [v1 setSupportsInstructionalText:0];

  [v0 updateChildrenFromLayout];
  result = [v0 interactiveCanvasController];
  if (result)
  {
    v3 = result;
    [result invalidateContentLayersForRep:v0];
    v4 = [v0 childReps];
    sub_100006370(0, &qword_1019FB7A0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v3 invalidateContentLayersForRep:v8];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  return result;
}

id sub_10068A1B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPStickyNoteRep();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10068A20C(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  sub_100006370(0, &qword_1019F54D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Selector.== infix(_:_:)();
}

Swift::Int sub_10068A2B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  NSObject.hash(into:)();
  Selector.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10068A344()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();

  return Selector.hash(into:)();
}

Swift::Int sub_10068A3BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  NSObject.hash(into:)();
  Selector.hash(into:)();
  return Hasher._finalize()();
}

void *sub_10068A448()
{
  result = sub_100BD59C4(_swiftEmptyArrayStorage);
  off_1019F74F8 = result;
  return result;
}

uint64_t sub_10068A4A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  do
  {
    if (*(v5 - 32) == *a2 && *(v5 - 24) == a2[1] && *(v5 - 16) == a2[2])
    {
      v6 = *(v5 - 8);
      sub_100006370(0, &qword_1019F54D0);
      v7 = v6;
      if (static NSObject.== infix(_:_:)())
      {
        v8 = static Selector.== infix(_:_:)();

        if (v8)
        {
          return v4;
        }
      }

      else
      {
      }
    }

    ++v4;
    v5 += 40;
  }

  while (v2 != v4);
  return 0;
}

void sub_10068A5BC(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = sub_10068A4A8(*a1, a2);
  v7 = v5;
  if (!v2 && (v6 & 1) == 0)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_31;
    }

    v10 = (v4 + 16);
    v9 = *(v4 + 16);
    if (v8 != v9)
    {
      v11 = 40 * v5 + 72;
      v29 = v3;
      while (1)
      {
        if (v8 >= v9)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }

        v12 = (v4 + v11);
        if (*(v4 + v11) != *v3 || v12[1] != v3[1] || v12[2] != v3[2])
        {
          break;
        }

        v13 = v12[3];
        sub_100006370(0, &qword_1019F54D0);
        v14 = v13;
        v15 = v3;
        v16 = v14;
        if ((static NSObject.== infix(_:_:)() & 1) == 0)
        {

          v3 = v15;
          if (v8 == v7)
          {
            goto LABEL_21;
          }

          goto LABEL_14;
        }

        v17 = static Selector.== infix(_:_:)();

        v3 = v15;
        if ((v17 & 1) == 0)
        {
          break;
        }

LABEL_22:
        ++v8;
        v10 = (v4 + 16);
        v9 = *(v4 + 16);
        v11 += 40;
        if (v8 == v9)
        {
          return;
        }
      }

      if (v8 == v7)
      {
LABEL_21:
        ++v7;
        goto LABEL_22;
      }

LABEL_14:
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v7 >= *v10)
      {
        goto LABEL_28;
      }

      if (v8 >= *v10)
      {
        goto LABEL_29;
      }

      v18 = v4 + 32 + 40 * v7;
      v19 = *(v18 + 16);
      v20 = *(v4 + v11);
      v22 = v12[1];
      v21 = v12[2];
      v31 = *v18;
      v32 = *(v12 + 3);
      v30 = *(v18 + 24);
      v23 = v30;
      v24 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10113CE80(v4);
      }

      v25 = (v4 + 40 * v7);
      v26 = v25[7];
      v25[4] = v20;
      v25[5] = v22;
      v25[6] = v21;
      *(v25 + 7) = v32;

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_30;
      }

      v27 = v4 + v11;
      v28 = *(v4 + v11 + 24);
      *v27 = v31;
      *(v27 + 16) = v19;
      *(v27 + 24) = v30;

      *a1 = v4;
      v3 = v29;
      goto LABEL_21;
    }
  }
}

id sub_10068A810(void *a1, void *a2, id a3, char a4, void *a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10)
{
  if (![objc_opt_self() isMainThread] || (a4 & 1) != 0)
  {
    v65.receiver = a5;
    v65.super_class = type metadata accessor for CRLWPStickyNoteRep();
    return objc_msgSendSuper2(&v65, "newShadowImageWithSize:shadow:drawSelector:unflipped:", a6, a7, a8 & 1, a9, a10);
  }

  [a1 size];
  v21 = v20;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [a1 size];
  v23 = v22;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [a1 transform];
  v24 = sub_100139980(&v62);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *&v66 = v21;
  *(&v66 + 1) = v23;
  *&v67 = v24;
  *(&v67 + 1) = a2;
  v68 = a3;
  v25 = qword_1019F1350;
  a3 = a2;
  if (v25 != -1)
  {
LABEL_45:
    swift_once();
  }

  swift_beginAccess();
  v26 = off_1019F74F8;
  if (*(off_1019F74F8 + 2))
  {
    v27 = sub_1007C89DC(&v66);
    if (v28)
    {
      v29 = *(v26[7] + 8 * v27);
      swift_endAccess();
      v30 = qword_1019F1358;
      v31 = v29;
      if (v30 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v32 = a3;
      v33 = 0;
      sub_10068A5BC(&off_1019F7500, &v66);
      v35 = v34;

      v36 = *(off_1019F7500 + 2);
      if (v36 < v35)
      {
        __break(1u);
      }

      else
      {
        sub_10067C8E4(v35, v36);
        swift_endAccess();
        swift_beginAccess();
        v35 = off_1019F7500;
        v33 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        off_1019F7500 = v35;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_19:
          v39 = *(v35 + 2);
          v38 = *(v35 + 3);
          if (v39 >= v38 >> 1)
          {
            v35 = sub_100B372E4((v38 > 1), v39 + 1, 1, v35);
          }

          *(v35 + 2) = v39 + 1;
          v40 = &v35[40 * v39];
          v41 = v66;
          v42 = v67;
          *(v40 + 8) = v68;
          *(v40 + 2) = v41;
          *(v40 + 3) = v42;
          off_1019F7500 = v35;
          swift_endAccess();

          return v31;
        }
      }

      v35 = sub_100B372E4(0, *(v35 + 2) + 1, 1, v35);
      off_1019F7500 = v35;
      goto LABEL_19;
    }
  }

  swift_endAccess();
  if (*(off_1019F74F8 + 2) >= 0xAuLL)
  {
    if (qword_1019F1358 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_1019F7500 + 2))
    {
      v44 = *(off_1019F7500 + 3);
      v62 = *(off_1019F7500 + 2);
      v63 = v44;
      *&v64 = *(off_1019F7500 + 8);
      swift_beginAccess();
      v45 = *(&v63 + 1);
      v46 = sub_1010F5FD4(&v62);
      swift_endAccess();

      swift_beginAccess();
      if (!*(off_1019F7500 + 2))
      {
        __break(1u);
        result = swift_endAccess();
        __break(1u);
        return result;
      }

      v47 = *(off_1019F7500 + 7);
      sub_10067C8E4(0, 1);
      swift_endAccess();

      sub_10068AE98(&v62);
    }
  }

  v61.receiver = a5;
  v61.super_class = type metadata accessor for CRLWPStickyNoteRep();
  v48 = objc_msgSendSuper2(&v61, "newShadowImageWithSize:shadow:drawSelector:unflipped:", a6, a7, a8 & 1, a9, a10);
  swift_beginAccess();
  v49 = a3;
  v50 = v48;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v60 = off_1019F74F8;
  off_1019F74F8 = 0x8000000000000000;
  sub_100A9D4DC(v50, &v66, v51);

  off_1019F74F8 = v60;
  swift_endAccess();
  if (qword_1019F1358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v52 = off_1019F7500;
  v53 = v49;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  off_1019F7500 = v52;
  if ((v54 & 1) == 0)
  {
    v52 = sub_100B372E4(0, *(v52 + 2) + 1, 1, v52);
    off_1019F7500 = v52;
  }

  v56 = *(v52 + 2);
  v55 = *(v52 + 3);
  if (v56 >= v55 >> 1)
  {
    v52 = sub_100B372E4((v55 > 1), v56 + 1, 1, v52);
  }

  *(v52 + 2) = v56 + 1;
  v57 = &v52[40 * v56];
  v58 = v66;
  v59 = v67;
  *(v57 + 8) = v68;
  *(v57 + 2) = v58;
  *(v57 + 3) = v59;
  off_1019F7500 = v52;
  swift_endAccess();

  return v50;
}

uint64_t sub_10068AEC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10068AF10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10068AF6C()
{
  result = qword_1019F75C8;
  if (!qword_1019F75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F75C8);
  }

  return result;
}

uint64_t sub_10068AFC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_10068B0E8())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 allShapeItems];
    swift_unknownObjectRelease();
    type metadata accessor for CRLShapeItem();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v6;
}

id sub_10068B090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterShapeDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10068B0E8()
{
  result = qword_101A0C7E0;
  if (!qword_101A0C7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A0C7E0);
  }

  return result;
}

void sub_10068B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v10 = [Strong textFields];

  if (!v10)
  {
    return;
  }

  sub_10068BD6C();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_16:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v13 text];

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if ((v15 != a3 || v17 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        a5(v15, v17);
      }
    }

    goto LABEL_16;
  }
}

id sub_10068B2DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a1 setText:v6];

  [a1 setReturnKeyType:9];
  [a1 setClearButtonMode:1];
  [a1 setAutocapitalizationType:2];
  [a1 setDelegate:a4];

  return [a1 becomeFirstResponder];
}

void sub_10068B39C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

BOOL sub_10068B404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = [a1 text];
  if (v9)
  {
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 stringByReplacingCharactersInRange:a2 withString:{a3, v11}];

    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v13;
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = HIBYTE(a5) & 0xF;
    if ((a5 & 0x2000000000000000) == 0)
    {
      v15 = a4 & 0xFFFFFFFFFFFFLL;
    }

    v16 = Strong;
    [Strong setEnabled:v15 != 0];
  }

  v17 = String.count.getter();

  return v17 < 256;
}

id sub_10068B650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLBoardRenameAlertTextFieldDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10068B6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = [v5 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = [v5 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;

  v23 = String._bridgeToObjectiveC()();

  v48 = sub_10068BD20;
  v49 = v22;
  aBlock = _NSConcreteStackBlock;
  v45 = *"";
  v46 = sub_10068B39C;
  v47 = &unk_10187FE60;
  v24 = _Block_copy(&aBlock);

  v40 = objc_opt_self();
  v25 = [v40 actionWithTitle:v23 style:0 handler:v24];
  _Block_release(v24);

  v26 = [objc_allocWithZone(type metadata accessor for CRLBoardRenameAlertTextFieldDelegate()) init];
  swift_unknownObjectWeakAssign();
  v27 = v25;
  objc_setAssociatedObject(v16, "com.apple.freeform.renameAlertTextFieldDelegate", v26, 1);
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = v26;
  v48 = sub_10068BD30;
  v49 = v28;
  aBlock = _NSConcreteStackBlock;
  v45 = *"";
  v46 = sub_10068B39C;
  v47 = &unk_10187FEB0;
  v29 = _Block_copy(&aBlock);

  v30 = v26;

  [v16 addTextFieldWithConfigurationHandler:v29];
  _Block_release(v29);
  [v16 addAction:v27];
  [v16 setPreferredAction:v27];

  v31 = [v5 mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;

  v36 = String._bridgeToObjectiveC()();

  v48 = sub_10068BD3C;
  v49 = v35;
  aBlock = _NSConcreteStackBlock;
  v45 = *"";
  v46 = sub_10068B39C;
  v47 = &unk_10187FF00;
  v37 = _Block_copy(&aBlock);

  v38 = [v40 actionWithTitle:v36 style:1 handler:v37];
  _Block_release(v37);

  [v16 addAction:v38];
  return v16;
}

unint64_t sub_10068BD6C()
{
  result = qword_1019F7690;
  if (!qword_1019F7690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F7690);
  }

  return result;
}

void sub_10068BDC8(uint64_t a1, uint64_t a2, int a3)
{
  v93 = a3;
  v95 = a2;
  v92 = sub_1005B981C(&unk_1019FFD10);
  __chkstk_darwin(v92);
  __chkstk_darwin(v5);
  v9 = *(*(v3 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_shapeItem) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v9)
  {
    v10 = (v3 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData);
    v12 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData + 16);
    v11 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData + 24);
    v13 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData + 32);
    v101 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_shapeItem);
    v90 = &v87 - v6;
    v91 = v7;
    v89 = v8;
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = sub_100006370(0, &unk_101A09740);
        v15 = &off_10187FF48;
      }

      else
      {
        v14 = type metadata accessor for CRLWPStorage();
        v15 = &off_10187FFF8;
      }

      v99 = v14;
      v100 = v15;
      v98[0] = v12;
    }

    else
    {
      v99 = &type metadata for String;
      v100 = &off_10187FF28;
      v98[0] = v12;
      v98[1] = v11;
    }

    v16 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_isSmartPaste);
    v17 = v9;
    sub_10068D11C(v12, v11, v13);
    if (v16 == 1)
    {
      sub_10068D9AC(v98, v17);
    }

    v94 = v17;
    v18 = v101;
    sub_1012E0400(v101, &off_10188FE10);
    if (!v4)
    {
      if (!v13)
      {
        sub_10000630C(v98, v97);
        sub_1005B981C(&qword_1019F76E8);
        if (!swift_dynamicCast())
        {
          v92 = objc_opt_self();
          v51 = [v92 _atomicIncrementAssertCount];
          v96[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v96);
          StaticString.description.getter();
          v91 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v52 = String._bridgeToObjectiveC()();

          v53 = [v52 lastPathComponent];

          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v56 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v51;
          v58 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v58;
          v59 = sub_1005CF04C();
          *(inited + 104) = v59;
          v60 = v91;
          *(inited + 72) = v91;
          *(inited + 136) = &type metadata for String;
          v61 = sub_1000053B0();
          *(inited + 112) = v90;
          *(inited + 120) = v55;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v61;
          *(inited + 152) = 118;
          v62 = v96[0];
          *(inited + 216) = v58;
          *(inited + 224) = v59;
          *(inited + 192) = v62;
          v63 = v60;
          v64 = v62;
          v65 = static os_log_type_t.error.getter();
          sub_100005404(v56, &_mh_execute_header, v65, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v66 = static os_log_type_t.error.getter();
          sub_100005404(v56, &_mh_execute_header, v66, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v67 = swift_allocObject();
          v67[2] = 8;
          v67[3] = 0;
          v67[4] = 0;
          v67[5] = 0;
          v68 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v48 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v49 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v50 = String._bridgeToObjectiveC()();

          [v92 handleFailureInFunction:v48 file:v49 lineNumber:118 isFatal:0 format:v50 args:v68];
          goto LABEL_29;
        }

        sub_100A2E55C(*v10, v10[1], v96[0], v96[1], 1);

LABEL_21:
        v30 = v93;
LABEL_31:
        sub_1012CF6CC(v18, &off_10188FE10, v30);
        sub_100005070(v98);

        return;
      }

      if (v13 == 1)
      {
        sub_10000630C(v98, v97);
        sub_1005B981C(&qword_1019F76E8);
        sub_100006370(0, &qword_1019F76F0);
        if (swift_dynamicCast())
        {
          v19 = v96[0];
          v20 = *v10;
          v87 = v10[1];
          v88 = v20;
          sub_10068D144();
          v21 = v19;
          v22 = v89;
          CRAttributedString.init(_:)();
          v23 = v90;
          (*(v91 + 4))(v90, v22, v92);
          v24 = [v21 length];
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          v26 = swift_allocObject();
          *(v26 + 16) = sub_10068D198;
          *(v26 + 24) = v25;
          v97[4] = sub_10068D1A0;
          v97[5] = v26;
          v97[0] = _NSConcreteStackBlock;
          v97[1] = *"";
          v97[2] = sub_10110DB0C;
          v97[3] = &unk_101880078;
          v27 = _Block_copy(v97);

          [v21 enumerateAttributesInRange:0 options:v24 usingBlock:{0, v27}];

          _Block_release(v27);
          LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

          if ((v24 & 1) == 0)
          {
            sub_100A30128(v88, v87, v23, 0);

            (*(v91 + 1))(v23, v92);
LABEL_30:
            v30 = v93;
            v18 = v101;
            goto LABEL_31;
          }

          __break(1u);
        }

        else
        {
          v92 = objc_opt_self();
          LODWORD(v25) = [v92 _atomicIncrementAssertCount];
          v96[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v96);
          StaticString.description.getter();
          v91 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v31 = String._bridgeToObjectiveC()();

          v32 = [v31 lastPathComponent];

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v33;

          if (qword_1019F20A0 == -1)
          {
LABEL_23:
            v34 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v35 = swift_initStackObject();
            *(v35 + 16) = xmmword_10146CA70;
            *(v35 + 56) = &type metadata for Int32;
            *(v35 + 64) = &protocol witness table for Int32;
            *(v35 + 32) = v25;
            v36 = sub_100006370(0, &qword_1019F4D30);
            *(v35 + 96) = v36;
            v37 = sub_1005CF04C();
            *(v35 + 104) = v37;
            v38 = v91;
            *(v35 + 72) = v91;
            *(v35 + 136) = &type metadata for String;
            v39 = sub_1000053B0();
            v40 = v90;
            *(v35 + 112) = v23;
            *(v35 + 120) = v40;
            *(v35 + 176) = &type metadata for UInt;
            *(v35 + 184) = &protocol witness table for UInt;
            *(v35 + 144) = v39;
            *(v35 + 152) = 122;
            v41 = v96[0];
            *(v35 + 216) = v36;
            *(v35 + 224) = v37;
            *(v35 + 192) = v41;
            v42 = v38;
            v43 = v41;
            v44 = static os_log_type_t.error.getter();
            sub_100005404(v34, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v35);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v45 = static os_log_type_t.error.getter();
            sub_100005404(v34, &_mh_execute_header, v45, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v46 = swift_allocObject();
            v46[2] = 8;
            v46[3] = 0;
            v46[4] = 0;
            v46[5] = 0;
            v47 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v48 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v49 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v50 = String._bridgeToObjectiveC()();

            [v92 handleFailureInFunction:v48 file:v49 lineNumber:122 isFatal:0 format:v50 args:v47];
LABEL_29:

            goto LABEL_30;
          }
        }

        swift_once();
        goto LABEL_23;
      }

      sub_10000630C(v98, v97);
      sub_1005B981C(&qword_1019F76E8);
      type metadata accessor for CRLWPStorage();
      if (swift_dynamicCast())
      {
        v28 = v10[1];
        if (!__OFSUB__(v28, *v10))
        {
          v29 = v96[0];
          sub_100A30E84(*v10, v28 - *v10, v96[0]);

          goto LABEL_21;
        }

        __break(1u);
      }

      else
      {
        v92 = objc_opt_self();
        LODWORD(v18) = [v92 _atomicIncrementAssertCount];
        v96[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v96);
        StaticString.description.getter();
        v91 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v69 = String._bridgeToObjectiveC()();

        v70 = [v69 lastPathComponent];

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v71;

        if (qword_1019F20A0 == -1)
        {
LABEL_28:
          v72 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v73 = swift_initStackObject();
          *(v73 + 16) = xmmword_10146CA70;
          *(v73 + 56) = &type metadata for Int32;
          *(v73 + 64) = &protocol witness table for Int32;
          *(v73 + 32) = v18;
          v74 = sub_100006370(0, &qword_1019F4D30);
          *(v73 + 96) = v74;
          v75 = sub_1005CF04C();
          *(v73 + 104) = v75;
          v76 = v91;
          *(v73 + 72) = v91;
          *(v73 + 136) = &type metadata for String;
          v77 = sub_1000053B0();
          v78 = v90;
          *(v73 + 112) = v10;
          *(v73 + 120) = v78;
          *(v73 + 176) = &type metadata for UInt;
          *(v73 + 184) = &protocol witness table for UInt;
          *(v73 + 144) = v77;
          *(v73 + 152) = 126;
          v79 = v96[0];
          *(v73 + 216) = v74;
          *(v73 + 224) = v75;
          *(v73 + 192) = v79;
          v80 = v76;
          v81 = v79;
          v82 = static os_log_type_t.error.getter();
          sub_100005404(v72, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v73);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v83 = static os_log_type_t.error.getter();
          sub_100005404(v72, &_mh_execute_header, v83, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v84 = swift_allocObject();
          v84[2] = 8;
          v84[3] = 0;
          v84[4] = 0;
          v84[5] = 0;
          v85 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v48 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v49 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v50 = String._bridgeToObjectiveC()();

          [v92 handleFailureInFunction:v48 file:v49 lineNumber:126 isFatal:0 format:v50 args:v85];
          goto LABEL_29;
        }
      }

      swift_once();
      goto LABEL_28;
    }

    v86 = v94;
    sub_100005070(v98);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10068CD1C()
{
  sub_10068D0F4(*(v0 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData + 16), *(v0 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData + 24), *(v0 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData + 32));
}

id sub_10068CD78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPPasteTextCommand();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10068CE14()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_actionString);

  return v1;
}

id sub_10068CE5C(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v2 characterAtIndex:a1];

  return v3;
}

uint64_t sub_10068CEA4(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    result = Range<>.init(_:in:)();
    if ((v2 & 1) == 0)
    {
      sub_10068DB40();
      return String.replaceSubrange<A>(_:with:)();
    }
  }

  return result;
}

id sub_10068CF2C(uint64_t a1)
{
  result = [*v1 string];
  if (result)
  {
    v4 = result;
    v5 = [result characterAtIndex:a1];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10068CF8C(uint64_t a1, uint64_t a2)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v2;
    v6 = String._bridgeToObjectiveC()();
    [v5 replaceCharactersInRange:a1 withString:{v3, v6}];
  }
}

__n128 initializeBufferWithCopyOfBuffer for CRLSerializableObjectType.RawPersistenceValues(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10068D050(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10068D098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_10068D0F4(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

id sub_10068D11C(id result, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

unint64_t sub_10068D144()
{
  result = qword_1019F76F8;
  if (!qword_1019F76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F76F8);
  }

  return result;
}

uint64_t sub_10068D1A8(void *a1, char *a2)
{
  v70 = a2;
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  __chkstk_darwin(v4);
  v67 = &v57 - v6;
  v66 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v66);
  v65 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CharacterSet();
  v63 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  v17 = a1[3];
  v18 = a1[4];
  sub_100020E58(a1, v17);
  result = (*(v18 + 8))(v17, v18);
  if (result < 1)
  {
    return 0;
  }

  v20 = result;
  v21 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData);
  v64 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData + 8);
  if (v21 < 1 || (result = [v70 characterAtIndex:{objc_msgSend(v70, "previousCharacterIndex:", v21)}], (result & 0xF800) == 0xD800))
  {
    v61 = 0;
  }

  else
  {
    result = [objc_opt_self() crlwp_preSmartSet];
    if (!result)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v22 = result;
    static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = CharacterSet.contains(_:)();
    result = (*(v63 + 8))(v16, v11);
  }

  v62 = v21;
  v60 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v23 = *&v70[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v23)
  {
    __break(1u);
    goto LABEL_49;
  }

  v24 = v65;
  (*(*v23 + 896))();
  sub_1005E0A78(v24 + *(v66 + 20), v10);
  sub_1005E0ADC(v24, type metadata accessor for CRLWPShapeItemCRDTData);
  v25 = v68;
  v26 = v69;
  v27 = v67;
  v58 = *(v69 + 16);
  v59 = v69 + 16;
  v58(v67, v10, v68);
  sub_1005E0ADC(v10, type metadata accessor for CRLWPStorageCRDTData);
  v28 = CRAttributedString.attributedString.getter();
  v29 = *(v26 + 8);
  v69 = v26 + 8;
  v57 = v29;
  v29(v27, v25);
  v30 = [v28 length];

  if (v64 >= v30)
  {
    goto LABEL_13;
  }

  v31 = [v70 characterAtIndex:?];
  if ((v31 & 0xF800) == 0xD800)
  {
    goto LABEL_13;
  }

  v32 = v31;
  result = [objc_opt_self() crlwp_postSmartSet];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v33 = result;
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v33) = CharacterSet.contains(_:)();
  (*(v63 + 8))(v13, v11);
  if (v33)
  {
    LODWORD(v63) = (v32 & 0xFFFFFFFB) != 8216;
    goto LABEL_14;
  }

LABEL_13:
  LODWORD(v63) = 0;
LABEL_14:
  v34 = a1[3];
  v35 = a1[4];
  sub_100020E58(a1, v34);
  v36 = (*(v35 + 16))(0, v34, v35);
  v37 = sub_10027E4C4(v36);
  v38 = v20 - 1;
  if (v20 == 1)
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = a1[3];
    v42 = a1[4];
    sub_100020E58(a1, v41);
    v43 = (*(v42 + 16))(1, v41, v42);
    v40 = sub_10027E418(v43);
    v45 = a1[3];
    v44 = a1[4];
    sub_100020E58(a1, v45);
    v46 = (*(v44 + 16))(v20 - 2, v45, v44);
    v39 = sub_10027E418(v46);
  }

  v47 = a1[3];
  v48 = a1[4];
  sub_100020E58(a1, v47);
  v49 = (*(v48 + 16))(v38, v47, v48);
  result = sub_10027E4C4(v49);
  if (v62 < 1 || ((v37 | v61) & 1) != 0)
  {
    if (v36 != 32 || (v61 & 1) == 0 || (v40 & 1) != 0)
    {
      if (result)
      {
        if ((v49 != 32 || (v63 & 1) == 0) | v39 & 1)
        {
          return 0;
        }
      }

      else
      {
        if ((v63 & 1) == 0)
        {
          v50 = 0;
          goto LABEL_36;
        }

        if ((v49 != 32) | v39 & 1)
        {
          return 0;
        }
      }

      return 8;
    }

    if (result)
    {
      if ((v49 != 32 || (v63 & 1) == 0) | v39 & 1)
      {
        return 4;
      }
    }

    else
    {
      if ((v63 & 1) == 0)
      {
        v50 = 4;
        goto LABEL_36;
      }

      if ((v49 != 32) | v39 & 1)
      {
        return 4;
      }
    }

    return 12;
  }

  if (result)
  {
    if ((v49 != 32 || (v63 & 1) == 0) | v39 & 1)
    {
      return 1;
    }

    return 9;
  }

  if (v63)
  {
    if ((v49 != 32) | v39 & 1)
    {
      return 1;
    }

    return 9;
  }

  v50 = 1;
LABEL_36:
  v51 = *&v70[v60];
  if (!v51)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v52 = v65;
  (*(*v51 + 896))();
  sub_1005E0A78(v52 + *(v66 + 20), v10);
  sub_1005E0ADC(v52, type metadata accessor for CRLWPShapeItemCRDTData);
  v53 = v67;
  v54 = v68;
  v58(v67, v10, v68);
  sub_1005E0ADC(v10, type metadata accessor for CRLWPStorageCRDTData);
  v55 = CRAttributedString.attributedString.getter();
  v57(v53, v54);
  v56 = [v55 length];

  if (v64 >= v56)
  {
    return v50;
  }

  else
  {
    return v50 | 2;
  }
}

uint64_t sub_10068D9AC(void *a1, char *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_100020E58(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  v7 = result - 1;
  if (result >= 1)
  {
    v8 = result;
    result = sub_10068D1A8(a1, a2);
    if (result)
    {
      v9 = result;
      if (result)
      {
        v12 = a1[3];
        v13 = a1[4];
        sub_10002A948(a1, v12);
        result = (*(v13 + 24))(0, 0, 32, 0xE100000000000000, 1, v12, v13);
      }

      else if ((result & 4) != 0)
      {
        v10 = a1[3];
        v11 = a1[4];
        sub_10002A948(a1, v10);
        result = (*(v11 + 24))(0, 1, 0, 0xE000000000000000, 1, v10, v11);
      }

      if ((v9 & 2) != 0)
      {
        v16 = a1[3];
        v17 = a1[4];
        sub_10002A948(a1, v16);
        return (*(v17 + 24))(v8, v8, 32, 0xE100000000000000, 1, v16, v17);
      }

      else if ((v9 & 8) != 0)
      {
        v14 = a1[3];
        v15 = a1[4];
        sub_10002A948(a1, v14);
        return (*(v15 + 24))(v7, v8, 0, 0xE000000000000000, 1, v14, v15);
      }
    }
  }

  return result;
}

unint64_t sub_10068DB40()
{
  result = qword_1019F7700;
  if (!qword_1019F7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F7700);
  }

  return result;
}

uint64_t sub_10068DC04()
{
  result = _UISolariumEnabled();
  v1 = 12.0;
  if (result)
  {
    v1 = 6.0;
  }

  qword_1019F7728 = *&v1;
  return result;
}

uint64_t sub_10068DC34()
{
  result = _UISolariumEnabled();
  v1 = 12.0;
  if (result)
  {
    v1 = 6.0;
  }

  qword_1019F7730 = *&v1;
  return result;
}

uint64_t sub_10068DC64()
{
  result = _UISolariumEnabled();
  qword_1019F7738 = 0x4040000000000000;
  return result;
}

id sub_10068DC88(double a1, uint64_t a2, SEL *a3, void *a4)
{
  result = [objc_opt_self() *a3];
  *a4 = result;
  return result;
}

id sub_10068DCDC()
{
  v1 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8GridItem____lazy_storage___gridViewController;
  v2 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8GridItem____lazy_storage___gridViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8GridItem____lazy_storage___gridViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(_s8GridItemC18GridViewControllerCMa()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10068DD4C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v4 = *(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView);
  if (a1)
  {
    if (v4)
    {
      sub_100006370(0, &qword_1019F77C0);
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  v11 = sub_10068DCDC();
  v8 = *&v11[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView];
  v9 = v8 != 0;
  [*&v11[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView] setHidden:v8 == 0];
  v10 = *&v11[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_attributionViewBottomConstraint];
  [v10 setActive:v9];
}

_BYTE *sub_10068DE94()
{
  v1 = [objc_allocWithZone(_s8GridItemC18GridViewControllerCMa()) init];
  v2 = sub_10068DCDC();
  v3 = &v2[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem];
  swift_unknownObjectWeakLoadStrong();
  v4 = *(v3 + 1);

  *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem + 8] = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView;
  v6 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8GridItem____lazy_storage___gridViewController;
  v7 = *(*(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8GridItem____lazy_storage___gridViewController) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView);
  v8 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView];
  v9 = [v7 image];
  [v8 setImage:v9];

  v10 = *(*(v0 + v6) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel);
  v11 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel];
  v12 = [v10 text];
  [v11 setText:v12];

  v13 = *(*(v0 + v6) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel);
  v14 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel];
  v15 = [v13 text];
  [v14 setText:v15];

  v16 = *(*(v0 + v6) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
  v17 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel];
  v18 = [v16 text];
  [v17 setText:v18];

  v19 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton];
  v20 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite;
  v21 = *(*(*(v0 + v6) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton) + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite);
  v19[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite] = v21;
  v22 = *&v19[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView];
  v23 = v19;
  [v22 setHidden:v21 ^ 1u];
  if (v19[v20] == 1)
  {
    v24 = v23[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_showsOuterGlow] ^ 1;
  }

  else
  {
    v24 = 1;
  }

  [*&v23[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView] setHidden:v24 & 1];

  v25 = *(*(v0 + v6) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dimsThumbnail);
  v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dimsThumbnail] = v25;
  v26 = 1.0;
  if (v25)
  {
    v26 = 0.5;
  }

  [*&v1[v5] setAlpha:v26];
  v27 = *(*(v0 + v6) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isSelected);
  v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isSelected] = v27;
  v28 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge];
  v29 = v28[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked];
  v28[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked] = v27;
  if (v27 != v29)
  {
    [v28 setNeedsDisplay];
  }

  v30 = [*(v0 + v6) traitCollection];
  v31 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_overrideTraitCollection] = v30;
  v32 = v30;

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v34 = result;
  [result setNeedsUpdateConstraints];

  [*(*(v0 + v6) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView) frame];
  v36 = v35;
  v38 = v37;
  v39 = v1;
  [v39 setPreferredContentSize:{v36, v38}];
  sub_1005B981C(&unk_1019F4D60);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10146CE00;
  result = [v39 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v41 = result;
  v42 = [result widthAnchor];

  v43 = [v42 constraintEqualToConstant:v36];
  *(v40 + 32) = v43;
  result = [v39 view];
  if (result)
  {
    v44 = result;
    v45 = objc_opt_self();
    v46 = [v44 heightAnchor];

    v47 = [v46 constraintEqualToConstant:v38];
    *(v40 + 40) = v47;
    sub_100006370(0, &qword_1019F4D70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 activateConstraints:isa];

    return v39;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_10068E3E4()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  qword_101AD5FA0 = result;
  return result;
}

void sub_10068E438()
{
  qword_101AD5FD0 = sub_100076B60(7.0);
  qword_101AD5FD8 = v0;
  qword_101AD5FE0 = v1;
  qword_101AD5FE8 = v2;
}

UIFontWeight sub_10068E4B0()
{
  result = UIFontWeightBold;
  qword_101AD6008 = *&UIFontWeightBold;
  return result;
}

UIFontWeight sub_10068E4F4()
{
  result = UIFontWeightRegular;
  qword_101AD6020 = *&UIFontWeightRegular;
  return result;
}

void sub_10068E610()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_labelBackdropView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView) addSubview:v1];

  sub_100EE00C4();
}

void sub_10068E684(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dropShadowView] layer];
  v3 = [*&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView] layer];
  v4 = *&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView];
  v5 = [v4 layer];
  v46 = [*&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailBackdropView] layer];
  v45 = [*&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_labelBackdropView] layer];
  [v3 setCornerRadius:11.0];
  if (qword_1019F13A0 != -1)
  {
    swift_once();
  }

  [v3 setCornerCurve:qword_101AD5F98];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if (qword_1019F13A8 != -1)
    {
      swift_once();
    }

    v6 = [qword_101AD5FA0 CGColor];
    [v2 setShadowColor:v6];

    [v2 setShadowOffset:{0.0, 0.0}];
    LODWORD(v7) = 1.0;
    [v2 setShadowOpacity:v7];
    [v2 setShadowRadius:3.0];
    [v3 cornerRadius];
    [v2 setCornerRadius:?];
    v8 = [v3 cornerCurve];
    [v2 setCornerCurve:v8];
  }

  if (_UISolariumEnabled())
  {
    v9 = [a1 traitCollection];
    v10 = [v9 userInterfaceStyle];

    v11 = 0.0;
    if (v10 == 1)
    {
      v11 = 1.0;
      v12 = &selRef_systemFillColor;
    }

    else
    {
      v12 = &selRef_clearColor;
    }

    [v3 setBorderWidth:v11];
    v13 = [objc_opt_self() *v12];
    v14 = [v13 CGColor];

    [v3 setBorderColor:v14];
  }

  if (qword_1019F13B8 != -1)
  {
    swift_once();
  }

  v15 = [qword_101AD5FC8 CGColor];
  [v46 setBackgroundColor:v15];

  v16 = [objc_opt_self() mainScreen];
  v17 = [v16 traitCollection];

  LODWORD(v16) = [v17 crl_isUserInterfaceStyleDark];
  if (v16)
  {
    if (qword_1019F13D0 != -1)
    {
      swift_once();
    }

    v18 = &qword_101AD5FF8;
  }

  else
  {
    if (qword_1019F13C8 != -1)
    {
      swift_once();
    }

    v18 = &qword_101AD5FF0;
  }

  v19 = [*v18 CGColor];
  [v45 setBackgroundColor:v19];

  [v4 setContentMode:1];
  if (qword_1019F14B8 != -1)
  {
    swift_once();
  }

  v20 = [qword_101AD6208 CGColor];
  [v5 setBackgroundColor:v20];

  v21 = *&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel];
  if (qword_1019F13D8 != -1)
  {
    swift_once();
  }

  v42 = v5;
  v43 = v3;
  v44 = v2;
  v22 = qword_101AD6000;
  if (qword_1019F13E0 != -1)
  {
    swift_once();
  }

  v23 = objc_opt_self();
  v24 = [v23 preferredFontDescriptorWithTextStyle:v22];
  v25 = objc_opt_self();
  [v24 pointSize];
  v26 = [v25 systemFontOfSize:? weight:?];

  [v21 setFont:v26];
  if (qword_1019F13E8 != -1)
  {
    swift_once();
  }

  [v21 setTextColor:qword_101AD6010];
  LODWORD(v27) = 1132068864;
  [v21 setContentCompressionResistancePriority:0 forAxis:v27];
  v28 = *&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel];
  if (qword_1019F13F0 != -1)
  {
    swift_once();
  }

  v29 = qword_101AD6018;
  if (qword_1019F13F8 != -1)
  {
    swift_once();
  }

  v30 = [v23 preferredFontDescriptorWithTextStyle:v29];
  [v30 pointSize];
  v31 = [v25 systemFontOfSize:? weight:?];

  [v28 setFont:v31];
  if (qword_1019F1400 != -1)
  {
    swift_once();
  }

  v32 = qword_101AD6028;
  [v28 setTextColor:qword_101AD6028];
  LODWORD(v33) = 1132068864;
  [v28 setContentCompressionResistancePriority:0 forAxis:v33];
  v34 = *&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel];
  v35 = [v23 preferredFontDescriptorWithTextStyle:v29];
  [v35 pointSize];
  v36 = [v25 systemFontOfSize:? weight:?];

  [v34 setFont:v36];
  [v34 setTextColor:v32];
  LODWORD(v37) = 1132068864;
  [v34 setContentCompressionResistancePriority:0 forAxis:v37];
  v38 = *&a1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton];
  v39 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_showsOuterGlow;
  v40 = 1;
  *(v38 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_showsOuterGlow) = 1;
  v41 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite;
  [*(v38 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView) setHidden:(*(v38 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite) & 1) == 0];
  if (*(v38 + v41) == 1)
  {
    v40 = *(v38 + v39) ^ 1;
  }

  [*(v38 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView) setHidden:v40 & 1];
}

void sub_10068EF78()
{
  v1 = v0;
  type metadata accessor for UILayoutPriority(0);
  sub_1005ED390();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v2 = v152;
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101470780;
  v4 = *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailContainerView];
  v5 = [v4 topAnchor];
  v6 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];

  *(inited + 32) = v8;
  v9 = [v4 leadingAnchor];
  v150 = v6;
  v10 = [v6 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(inited + 40) = v11;
  v12 = [v4 trailingAnchor];
  v13 = [v6 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(inited + 48) = v14;
  v15 = [v4 bottomAnchor];
  v16 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_labelBackdropView];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];

  *(inited + 56) = v18;
  v19 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailBackdropView];
  v20 = [v19 topAnchor];
  v21 = [v4 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(inited + 64) = v22;
  v23 = [v19 leadingAnchor];
  v24 = [v4 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(inited + 72) = v25;
  v26 = [v19 trailingAnchor];
  v27 = [v4 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(inited + 80) = v28;
  v29 = [v19 bottomAnchor];
  v30 = [v4 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(inited + 88) = v31;
  v32 = [v16 leadingAnchor];
  v33 = [v150 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(inited + 96) = v34;
  v35 = [v16 trailingAnchor];
  v36 = [v150 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(inited + 104) = v37;
  v151 = v16;
  v38 = [v16 bottomAnchor];
  v39 = [v150 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(inited + 112) = v40;

  sub_100798D30(v41);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10146E8B0;
  v43 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView];
  v44 = [v43 topAnchor];
  v45 = [v19 topAnchor];
  if (qword_1019F13B0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v46 = [v44 constraintEqualToAnchor:v45 constant:*&qword_101AD5FA8];

  *(v42 + 32) = v46;
  v47 = [v43 leadingAnchor];
  v48 = [v19 leadingAnchor];
  v49 = qword_101AD5FB0;
  v50 = qword_101AD5FC0;
  if (sub_100076BAC())
  {
    v51 = *&v49;
  }

  else
  {
    v51 = *&v50;
  }

  v52 = [v47 constraintEqualToAnchor:v48 constant:v51];

  *(v42 + 40) = v52;
  v53 = [v19 trailingAnchor];
  v54 = [v43 trailingAnchor];
  if (sub_100076BAC())
  {
    v55 = *&v50;
  }

  else
  {
    v55 = *&v49;
  }

  v56 = [v53 constraintEqualToAnchor:v54 constant:v55];

  *(v42 + 48) = v56;
  v57 = [v19 bottomAnchor];
  v58 = [v43 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:*&qword_101AD5FB8];

  *(v42 + 56) = v59;
  v153 = v42;
  v60 = [v43 widthAnchor];
  v61 = [v43 heightAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 multiplier:1.77777778];

  LODWORD(v63) = v2;
  [v62 setPriority:v63];
  v64 = v62;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v149 = v19;
  v148 = v64;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_100798D30(v147);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_101470790;
  v66 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel];
  v67 = [v66 topAnchor];
  v68 = [v151 topAnchor];
  if (qword_1019F13C0 != -1)
  {
    swift_once();
  }

  v69 = [v67 constraintEqualToAnchor:v68 constant:{*&qword_101AD5FD0, v147}];

  *(v65 + 32) = v69;
  v70 = [v66 leadingAnchor];
  v71 = [v151 leadingAnchor];
  v72 = qword_101AD5FD8;
  v73 = qword_101AD5FE8;
  if (sub_100076BAC())
  {
    v74 = *&v72;
  }

  else
  {
    v74 = *&v73;
  }

  v75 = [v70 constraintEqualToAnchor:v71 constant:v74];

  *(v65 + 40) = v75;
  v76 = [v66 trailingAnchor];
  v77 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel];
  v78 = [v77 trailingAnchor];
  v19 = &selRef_concreteClass;
  v79 = [v76 constraintLessThanOrEqualToAnchor:v78];

  *(v65 + 48) = v79;
  v80 = [v66 bottomAnchor];
  v81 = [v77 topAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v65 + 56) = v82;
  v83 = [v77 leadingAnchor];
  v84 = [v66 leadingAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v65 + 64) = v85;
  v86 = [v151 trailingAnchor];
  v87 = [v77 trailingAnchor];
  if (sub_100076BAC())
  {
    v88 = *&v73;
  }

  else
  {
    v88 = *&v72;
  }

  v89 = [v86 constraintEqualToAnchor:v87 constant:v88];

  *(v65 + 72) = v89;
  v90 = [v77 bottomAnchor];
  v91 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel];
  v45 = [v91 topAnchor];
  v92 = [v90 constraintEqualToAnchor:v45];

  *(v65 + 80) = v92;
  v93 = [v91 trailingAnchor];
  v94 = [v77 trailingAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  *(v65 + 88) = v95;
  v96 = [v91 leadingAnchor];
  v97 = [v66 leadingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];

  *(v65 + 96) = v98;
  v99 = [v151 bottomAnchor];
  v100 = [v91 bottomAnchor];
  v44 = [v99 constraintEqualToAnchor:v100 constant:*&qword_101AD5FE0];

  *(v65 + 104) = v44;
  v42 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v42)
  {
    v43 = 0;
    do
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v101 = *(v65 + 8 * v43 + 32);
      }

      v44 = v101;
      ++v43;
      LODWORD(v102) = v2;
      [v101 setPriority:v102];
    }

    while (v42 != v43);
  }

  sub_100798D30(v103);
  v104 = swift_initStackObject();
  *(v104 + 16) = xmmword_10146CE00;
  v105 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton];
  v106 = [v105 leadingAnchor];
  v107 = [v149 leadingAnchor];
  v108 = [v106 constraintEqualToAnchor:v107 constant:10.0];

  *(v104 + 32) = v108;
  v109 = [v149 bottomAnchor];
  v110 = [v105 bottomAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:7.0];

  *(v104 + 40) = v111;

  sub_100798D30(v112);
  v113 = swift_initStackObject();
  *(v113 + 16) = xmmword_10146CE00;
  v114 = [v149 trailingAnchor];
  v115 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge];
  v116 = [v115 trailingAnchor];
  v117 = [v114 constraintEqualToAnchor:v116 constant:10.0];

  *(v113 + 32) = v117;
  v118 = [v149 bottomAnchor];
  v119 = [v115 bottomAnchor];
  v120 = [v118 constraintEqualToAnchor:v119 constant:7.0];

  *(v113 + 40) = v120;

  sub_100798D30(v121);
  v122 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView];
  v123 = [v122 bottomAnchor];
  v124 = [v1 view];
  if (v124)
  {
    v125 = v124;

    swift_setDeallocating();
    swift_arrayDestroy();
    v126 = [v125 bottomAnchor];

    v127 = [v123 constraintEqualToAnchor:v126];
    v128 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_attributionViewBottomConstraint;
    v129 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_attributionViewBottomConstraint];
    *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_attributionViewBottomConstraint] = v127;
    v130 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView];
    v131 = v130 != 0;
    v132 = v130 == 0;
    v133 = v127;
    [v122 setHidden:v132];
    v134 = *&v1[v128];
    [v134 setActive:v131];

    v135 = swift_initStackObject();
    *(v135 + 16) = xmmword_10146E8A0;
    v136 = [v122 topAnchor];
    v137 = [v150 bottomAnchor];
    v138 = [v136 constraintEqualToAnchor:v137 constant:10.0];

    *(v135 + 32) = v138;
    v139 = [v122 leadingAnchor];
    v140 = [v150 leadingAnchor];
    v141 = [v139 constraintEqualToAnchor:v140];

    *(v135 + 40) = v141;
    v142 = [v122 trailingAnchor];
    v143 = [v150 trailingAnchor];
    v144 = [v142 constraintEqualToAnchor:v143];

    *(v135 + 48) = v144;
    sub_100798D30(v135);
    v145 = objc_opt_self();
    sub_100006370(0, &qword_1019F4D70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v145 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10069019C()
{
  v1 = v0;
  sub_10068E684(v0);
  sub_100EE52BC();
  sub_100EE402C();
  sub_100EE1210();
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    goto LABEL_9;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v12 != v13)
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_6;
      }

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
      if (v31 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v33 != v34)
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v35)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_11;
      }
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_6:

LABEL_10:
  v14 = 2;
LABEL_11:
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146E8A0;
  v16 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel];
  *(inited + 32) = v16;
  v17 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel];
  *(inited + 40) = v17;
  v18 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel];
  *(inited + 48) = v18;
  v19 = inited & 0xC000000000000001;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  for (i = v20; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v24 = i;
    [i setNumberOfLines:v14];

    if (v19)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_27;
      }

      v25 = *(inited + 40);
    }

    v26 = v25;
    [v25 setNumberOfLines:v14];

    if (v19)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v27 = *(inited + 48);
      goto LABEL_20;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
  v28 = v27;
  [v27 setNumberOfLines:v14];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_100690504()
{
  v1 = v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (!swift_unknownObjectWeakLoadStrong() || (v2 = *(v1 + 8), ObjectType = swift_getObjectType(), v4 = (*(v2 + 144))(ObjectType, v2), v6 = v5, swift_unknownObjectRelease(), !v6))
  {

    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v4 = qword_101A229F8;
  }

  return v4;
}

uint64_t sub_1006905C8()
{
  v1 = v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (!swift_unknownObjectWeakLoadStrong() || (v2 = *(v1 + 8), ObjectType = swift_getObjectType(), v4 = (*(v2 + 168))(ObjectType, v2), v6 = v5, swift_unknownObjectRelease(), !v6))
  {

    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v4 = qword_101A229F8;
  }

  return v4;
}

uint64_t sub_10069068C()
{
  v1 = v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (!swift_unknownObjectWeakLoadStrong() || (v2 = *(v1 + 8), ObjectType = swift_getObjectType(), v4 = (*(v2 + 216))(ObjectType, v2), v6 = v5, swift_unknownObjectRelease(), !v6))
  {

    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v4 = qword_101A229F8;
  }

  return v4;
}

_BYTE *sub_100690750(char a1)
{
  *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isSelected) = a1;
  v3 = a1 & 1;
  result = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge);
  v5 = result[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked];
  result[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked] = a1;
  if (v5 != v3)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

id sub_100690824(void *a1)
{
  v3 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_labelBackdropView;
  *&v1[v3] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_attributionViewBottomConstraint] = 0;
  v6.receiver = v1;
  v6.super_class = _s8GridItemC18GridViewControllerCMa();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1006908F4()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_attributionViewBottomConstraint);
}

id sub_100690ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100690B8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSurfaceEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100690DCC(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;

  return _swift_task_switch(sub_100690E64, 0, 0);
}

uint64_t sub_100690E64()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v0[6] = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100690F3C;
  v6 = v0[2];
  v5 = v0[3];

  return sub_100D84154(v6, &off_10188A428, v5, v1, v3);
}

uint64_t sub_100690F3C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1006910C0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 40);
    v5 = *(v2 + 24);
    v4 = *(v2 + 32);
    v6 = *(v2 + 16);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 40));
    v7 = *(v2 + 8);

    return v7();
  }
}

uint64_t sub_1006910C0()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);

  v5 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v5);

  _Block_release(*(v0 + 40));
  v6 = *(v0 + 8);

  return v6();
}

id CRLAnalyticsOSSignpostManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100691218()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002D3D4;

  return sub_100690DCC(v2, v3, v5, v4);
}

uint64_t sub_1006912D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100691318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10119D594(a1, v4, v5, v6);
}

id sub_1006913E4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for CRLItemProviderWriteAssistant();
  v6 = swift_allocObject();
  v7 = type metadata accessor for CRLMemoryWriteChannel();
  v8 = objc_allocWithZone(v7);
  v9 = a1;
  v10 = a2;
  v6[4] = [v8 init];
  v6[5] = [objc_allocWithZone(v7) init];
  v6[2] = v9;
  v6[3] = v10;
  *&v2[OBJC_IVAR____TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant_writeAssistant] = v6;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_1006914B8()
{
  qword_101AD6030 = 97;
  *algn_101AD6038 = 0xE100000000000000;
  qword_101AD6040 = swift_getKeyPath();
  unk_101AD6048 = 98;
  qword_101AD6050 = 0xE100000000000000;
  qword_101AD6058 = swift_getKeyPath();
  qword_101AD6060 = 99;
  qword_101AD6068 = 0xE100000000000000;
  qword_101AD6070 = swift_getKeyPath();
  unk_101AD6078 = 100;
  qword_101AD6080 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD6088 = result;
  return result;
}

uint64_t sub_100691540@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  v43 = *(v4 - 8);
  v5 = v43;
  v44 = v4;
  __chkstk_darwin(v4);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A0D9B0);
  v8 = __chkstk_darwin(v7 - 8);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  v12 = sub_1005B981C(&unk_101A0B1C0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v18 = type metadata accessor for CRLShapeItemCRDTData(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100FED700(v21);
  *&v21[*(v19 + 28)] = _swiftEmptyDictionarySingleton;
  v22 = *(v5 + 56);
  v23 = v44;
  v22(v17, 1, 1, v44);
  v53 = v2;
  v24 = *(v2 + 56);
  v55 = v11;
  v47 = v1;
  v24(v11, 1, 1, v1);
  sub_1006950BC(&v72);
  v25 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  v26 = *(v25 + 28);
  v68 = v84;
  v69 = v85;
  v70 = v86;
  v71 = v87;
  v64 = v80;
  v65 = v81;
  v66 = v82;
  v67 = v83;
  v60 = v76;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  sub_1005B981C(&unk_101A0D830);
  sub_10069420C();
  v48 = v26;
  v27 = v45;
  CRRegister.init(wrappedValue:)();
  v52 = v25;
  *(v27 + *(v25 + 32)) = _swiftEmptyDictionarySingleton;
  v49 = v21;
  v28 = v21;
  v29 = v23;
  v30 = v43;
  v31 = v27;
  sub_100695150(v28, v27, type metadata accessor for CRLShapeItemCRDTData);
  v50 = v17;
  sub_10000BE14(v17, v15, &unk_101A0B1C0);
  v32 = *(v30 + 48);
  if (v32(v15, 1, v29) == 1)
  {
    sub_10068D144();
    v33 = v46;
    CRAttributedString.init()();
    CRAttributedString.init(_:)();
    *(v33 + *(v29 + 24)) = _swiftEmptyDictionarySingleton;
    v34 = v33;
    if (v32(v15, 1, v29) != 1)
    {
      sub_10000CAAC(v15, &unk_101A0B1C0);
    }
  }

  else
  {
    v34 = v46;
    sub_1006950E8(v15, v46, type metadata accessor for CRLWPStorageCRDTData);
  }

  sub_1006950E8(v34, v31 + *(v52 + 20), type metadata accessor for CRLWPStorageCRDTData);
  v35 = v51;
  sub_10000BE14(v55, v51, &unk_101A0D9B0);
  v36 = v53 + 48;
  v37 = *(v53 + 48);
  v38 = v47;
  if (v37(v35, 1, v47) == 1)
  {
    LODWORD(v56) = 0;
    v39 = v54;
    CRRegister.init(wrappedValue:)();
    *&v56 = 0;
    BYTE8(v56) = 0;
    sub_1005B981C(&qword_1019F7D38);
    v53 = v36;
    sub_10001A2F8(&qword_101A0DA20, &qword_1019F7D38);
    v40 = v51;
    CRRegister.init(wrappedValue:)();
    LOBYTE(v56) = 0;
    CRRegister.init(wrappedValue:)();
    *(v39 + *(v38 + 28)) = _swiftEmptyDictionarySingleton;
    if (v37(v40, 1, v38) != 1)
    {
      sub_10000CAAC(v40, &unk_101A0D9B0);
    }
  }

  else
  {
    sub_1006950E8(v35, v54, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  }

  sub_1006950E8(v54, v31 + *(v52 + 24), type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  v68 = v84;
  v69 = v85;
  v70 = v86;
  v71 = v87;
  v64 = v80;
  v65 = v81;
  v66 = v82;
  v67 = v83;
  v60 = v76;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  sub_1005B981C(&unk_101A095A0);
  CRRegister.wrappedValue.setter();
  sub_10000CAAC(v55, &unk_101A0D9B0);
  sub_10000CAAC(v50, &unk_101A0B1C0);
  return sub_10069521C(v49, type metadata accessor for CRLShapeItemCRDTData);
}

void (*sub_100691CBC(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_100695150(v1, v4, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  return sub_100691D64;
}

void sub_100691D64(uint64_t *a1)
{
  v1 = a1[1];
  sub_1006951B8(v1, *a1);

  free(v1);
}

uint64_t sub_100691DA0(uint64_t a1)
{
  v2 = sub_100694374(&qword_1019F7E60, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100691E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100691E88()
{
  sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.actionUndoingDifference(from:)();
}

uint64_t sub_100691F0C()
{
  sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.apply(_:)();
}

uint64_t sub_100691F88()
{
  sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.hasDelta(from:)();
}

uint64_t sub_100692004()
{
  sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.delta(_:from:)();
}

uint64_t sub_100692098(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100692114()
{
  sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.merge(delta:)();
}

uint64_t sub_100692194@<X0>(void *a1@<X8>)
{
  if (qword_1019F1408 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = *algn_101AD6038;
  v3 = qword_101AD6040;
  v2 = unk_101AD6048;
  v4 = qword_101AD6050;
  v5 = qword_101AD6058;
  v6 = qword_101AD6060;
  v7 = qword_101AD6068;
  v9 = qword_101AD6070;
  v8 = unk_101AD6078;
  v10 = qword_101AD6080;
  v11 = qword_101AD6088;
  *a1 = qword_101AD6030;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v11;
}

uint64_t sub_100692280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100692304(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100692388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_10069241C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100692498()
{
  sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.needToFinalizeTimestamps()();
}

uint64_t sub_100692504(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_100692580()
{
  sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.merge(_:)();
}

uint64_t sub_100692604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.merge(_:)(a1, a2, v4);
}

uint64_t sub_100692790(uint64_t a1)
{
  v2 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return static CRStruct_4.fieldKeys.getter(a1, v2);
}

uint64_t sub_1006928F8(uint64_t a1)
{
  v2 = sub_100694374(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);

  return CRStruct_4.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100692974()
{
  qword_101AD6090 = 97;
  *algn_101AD6098 = 0xE100000000000000;
  qword_101AD60A0 = swift_getKeyPath();
  unk_101AD60A8 = 98;
  qword_101AD60B0 = 0xE100000000000000;
  qword_101AD60B8 = swift_getKeyPath();
  qword_101AD60C0 = 99;
  qword_101AD60C8 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD60D0 = result;
  return result;
}

uint64_t sub_1006929E8@<X0>(void *a1@<X8>)
{
  if (qword_1019F1410 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = *algn_101AD6098;
  v3 = qword_101AD60A0;
  v2 = unk_101AD60A8;
  v4 = qword_101AD60B0;
  v5 = qword_101AD60B8;
  v6 = qword_101AD60C0;
  v7 = qword_101AD60C8;
  v8 = qword_101AD60D0;
  *a1 = qword_101AD6090;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t sub_100692AB4(uint64_t a1)
{
  v2 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return static CRStruct_3.fieldKeys.getter(a1, v2);
}

uint64_t sub_100692B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CRRegister.init(wrappedValue:)();
  sub_1005B981C(&qword_1019F7D38);
  sub_10001A2F8(&qword_101A0DA20, &qword_1019F7D38);
  CRRegister.init(wrappedValue:)();
  result = CRRegister.init(wrappedValue:)();
  *(a2 + *(a1 + 28)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100692C38(uint64_t a1)
{
  v2 = sub_100694374(&unk_101A0F360, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100692CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100692D20()
{
  sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.actionUndoingDifference(from:)();
}

uint64_t sub_100692DA4()
{
  sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.apply(_:)();
}

uint64_t sub_100692E20()
{
  sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.hasDelta(from:)();
}

uint64_t sub_100692E9C()
{
  sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.delta(_:from:)();
}

uint64_t sub_100692F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100692FAC()
{
  sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.merge(delta:)();
}

uint64_t sub_100693028(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1006930AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100693130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1006931C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100693240()
{
  sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.needToFinalizeTimestamps()();
}

uint64_t sub_1006932AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_100693328()
{
  sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.merge(_:)();
}

uint64_t sub_1006933AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_100693630(uint64_t a1)
{
  v2 = sub_100694374(&qword_1019F7EE8, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);

  return CRStruct_3.minEncodingVersion.getter(a1, v2);
}

uint64_t *sub_1006936C4(char a1)
{
  v3 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v3);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  __chkstk_darwin(v8);
  v40 = &v34 - v9;
  v10 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v10);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v37 = &v34 - v13;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  v23 = *(*v1 + 736);
  swift_beginAccess();
  if (a1)
  {
    sub_10000BE14(v1 + v23, v19, &unk_101A0F400);
    sub_10001A2F8(&qword_1019F7EF0, &unk_101A0F400);
    CRType.copy(renamingReferences:)();
    v24 = sub_10000CAAC(v19, &unk_101A0F400);
    (*(*v1 + 896))(v24);
    sub_100694374(&qword_1019F7E60, type metadata accessor for CRLWPShapeItemCRDTData);
    v25 = v40;
    CRType.copy(renamingReferences:)();
    sub_10069521C(v7, type metadata accessor for CRLWPShapeItemCRDTData);
  }

  else
  {
    v26 = sub_10000BE14(v1 + v23, v22, &unk_101A0F400);
    v25 = v40;
    (*(*v1 + 896))(v26);
  }

  v36 = v22;
  sub_10000BE14(v22, v19, &unk_101A0F400);
  sub_100695150(v25, v7, type metadata accessor for CRLWPShapeItemCRDTData);
  v27 = *(v1 + 40);
  v41[0] = *(v1 + 24);
  v41[1] = v27;
  v42 = *(v1 + 56);
  v35 = *(v1 + 16);
  type metadata accessor for CRLWPShapeItemData(0);
  v28 = swift_allocObject();
  v29 = v16;
  sub_10000BE14(v19, v16, &unk_101A0F400);
  v30 = v39;
  sub_100695150(v7, v39, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_100695150(v30, v28 + *(*v28 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = v37;
  sub_10000BE14(v29, v37, &unk_101A0F400);
  *(v28 + qword_101A27318) = 0;
  v32 = v38;
  sub_10000BE14(v31, v38, &unk_101A0F400);
  sub_10000BE14(v32, v28 + *(*v28 + 736), &unk_101A0F400);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v32, &unk_101A0F400);
  sub_10000CAAC(v31, &unk_101A0F400);
  sub_10069521C(v30, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v29, &unk_101A0F400);
  sub_10069521C(v7, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v19, &unk_101A0F400);
  sub_10069521C(v40, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v36, &unk_101A0F400);
  return sub_100747AF0(v41, v35);
}

uint64_t sub_100693C3C()
{
  v1 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*v0 + 896))(v2);
  type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  sub_1005B981C(&unk_101A0F370);
  CRRegister.wrappedValue.getter();
  sub_10069521C(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  if (v6[8])
  {
    return 0;
  }

  else
  {
    return v6[0];
  }
}

uint64_t sub_100693D4C()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A0F400);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10069521C(v0 + *(*v0 + 888), type metadata accessor for CRLWPShapeItemCRDTData);

  return swift_deallocClassInstance();
}

void sub_100693F00()
{
  sub_100039D58(319, &qword_1019F7D28);
  if (v0 <= 0x3F)
  {
    sub_100693FE4();
    if (v1 <= 0x3F)
    {
      sub_100039D58(319, &qword_1019F7D40);
      if (v2 <= 0x3F)
      {
        sub_100039F68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100693FE4()
{
  if (!qword_1019F7D30)
  {
    sub_1005C4E5C(&qword_1019F7D38);
    sub_10001A2F8(&qword_101A0DA20, &qword_1019F7D38);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F7D30);
    }
  }
}

void sub_1006940D0()
{
  type metadata accessor for CRLShapeItemCRDTData(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRLWPStorageCRDTData(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(319);
      if (v2 <= 0x3F)
      {
        sub_10069419C();
        if (v3 <= 0x3F)
        {
          sub_100039F68();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10069419C()
{
  if (!qword_1019F7DE0)
  {
    sub_1005C4E5C(&unk_101A0D830);
    sub_10069420C();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F7DE0);
    }
  }
}

unint64_t sub_10069420C()
{
  result = qword_1019F7DE8;
  if (!qword_1019F7DE8)
  {
    sub_1005C4E5C(&unk_101A0D830);
    sub_100694290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F7DE8);
  }

  return result;
}

unint64_t sub_100694290()
{
  result = qword_101A0DA30;
  if (!qword_101A0DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0DA30);
  }

  return result;
}

uint64_t sub_100694374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10069463C(uint64_t a1)
{
  result = sub_100694374(&qword_1019F7E28, type metadata accessor for CRLWPShapeItemCRDTData);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100694910()
{
  sub_1005B981C(&unk_101A0D9C0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  sub_1005B981C(&unk_101A0F370);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  sub_100695068();
  if (static CRExtensible.== infix(_:_:)())
  {
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.getter();
    v0 = 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_100694A88(uint64_t a1)
{
  if (!sub_100FF0E98())
  {
    goto LABEL_10;
  }

  v2 = a1 + *(type metadata accessor for CRLWPShapeItemCRDTData(0) + 20);
  if ((sub_100A3EB88(v2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = type metadata accessor for CRLWPStorageCRDTData(0);
  if ((sub_100A3EB88(v2 + *(v3 + 20)) & 1) == 0 || (sub_100694910() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1005B981C(&unk_101A095A0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  __src[12] = v26;
  __src[13] = v27;
  __src[14] = v28;
  __src[8] = v22;
  __src[9] = v23;
  __src[10] = v24;
  __src[11] = v25;
  __src[4] = v18;
  __src[5] = v19;
  __src[6] = v20;
  __src[7] = v21;
  __src[0] = v14;
  __src[1] = v15;
  __src[2] = v16;
  __src[3] = v17;
  *(&__src[28] + 8) = v30[13];
  *(&__src[29] + 8) = v30[14];
  *(&__src[24] + 8) = v30[9];
  *(&__src[25] + 8) = v30[10];
  *(&__src[26] + 8) = v30[11];
  *(&__src[27] + 8) = v30[12];
  *(&__src[20] + 8) = v30[5];
  *(&__src[21] + 8) = v30[6];
  *(&__src[22] + 8) = v30[7];
  *(&__src[23] + 8) = v30[8];
  *(&__src[16] + 8) = v30[1];
  *(&__src[17] + 8) = v30[2];
  *(&__src[18] + 8) = v30[3];
  *(&__src[19] + 8) = v30[4];
  *(&__src[15] + 8) = v30[0];
  v32[12] = v26;
  v32[13] = v27;
  v32[14] = v28;
  v32[8] = v22;
  v32[9] = v23;
  v32[10] = v24;
  v32[11] = v25;
  v32[4] = v18;
  v32[5] = v19;
  v32[6] = v20;
  v32[7] = v21;
  v32[0] = v14;
  v32[1] = v15;
  *&__src[15] = v29;
  *(&__src[30] + 1) = v31;
  v33 = v29;
  v32[2] = v16;
  v32[3] = v17;
  if (sub_100695050(v32) != 1)
  {
    v10[12] = *(&__src[27] + 8);
    v10[13] = *(&__src[28] + 8);
    v10[14] = *(&__src[29] + 8);
    v11 = *(&__src[30] + 1);
    v10[8] = *(&__src[23] + 8);
    v10[9] = *(&__src[24] + 8);
    v10[10] = *(&__src[25] + 8);
    v10[11] = *(&__src[26] + 8);
    v10[4] = *(&__src[19] + 8);
    v10[5] = *(&__src[20] + 8);
    v10[6] = *(&__src[21] + 8);
    v10[7] = *(&__src[22] + 8);
    v10[0] = *(&__src[15] + 8);
    v10[1] = *(&__src[16] + 8);
    v10[2] = *(&__src[17] + 8);
    v10[3] = *(&__src[18] + 8);
    if (sub_100695050(v10) != 1)
    {
      v6[12] = *(&__src[27] + 8);
      v6[13] = *(&__src[28] + 8);
      v6[14] = *(&__src[29] + 8);
      v6[8] = *(&__src[23] + 8);
      v6[9] = *(&__src[24] + 8);
      v6[10] = *(&__src[25] + 8);
      v6[11] = *(&__src[26] + 8);
      v6[4] = *(&__src[19] + 8);
      v6[5] = *(&__src[20] + 8);
      v6[6] = *(&__src[21] + 8);
      v6[7] = *(&__src[22] + 8);
      v6[0] = *(&__src[15] + 8);
      v6[1] = *(&__src[16] + 8);
      v6[2] = *(&__src[17] + 8);
      v6[3] = *(&__src[18] + 8);
      __dst[12] = *(&__src[27] + 8);
      __dst[13] = *(&__src[28] + 8);
      __dst[14] = *(&__src[29] + 8);
      __dst[8] = *(&__src[23] + 8);
      __dst[9] = *(&__src[24] + 8);
      __dst[10] = *(&__src[25] + 8);
      __dst[11] = *(&__src[26] + 8);
      __dst[4] = *(&__src[19] + 8);
      __dst[5] = *(&__src[20] + 8);
      __dst[6] = *(&__src[21] + 8);
      __dst[7] = *(&__src[22] + 8);
      __dst[0] = *(&__src[15] + 8);
      __dst[1] = *(&__src[16] + 8);
      v7 = *(&__src[30] + 1);
      *&__dst[15] = *(&__src[30] + 1);
      __dst[2] = *(&__src[17] + 8);
      __dst[3] = *(&__src[18] + 8);
      v46 = __src[12];
      v47 = __src[13];
      v48 = __src[14];
      v49 = *&__src[15];
      v42 = __src[8];
      v43 = __src[9];
      v44 = __src[10];
      v45 = __src[11];
      v38 = __src[4];
      v39 = __src[5];
      v40 = __src[6];
      v41 = __src[7];
      v34 = __src[0];
      v35 = __src[1];
      v36 = __src[2];
      v37 = __src[3];
      sub_10000BE14(&v14, v8, &unk_101A0D830);
      sub_10000BE14(v30, v8, &unk_101A0D830);
      v4 = sub_100A1A23C(&v34, __dst);
      sub_10000CAAC(v6, &unk_101A0D830);
      sub_10000CAAC(v30, &unk_101A0D830);
      sub_10000CAAC(&v14, &unk_101A0D830);
      v8[12] = __src[12];
      v8[13] = __src[13];
      v8[14] = __src[14];
      v9 = *&__src[15];
      v8[8] = __src[8];
      v8[9] = __src[9];
      v8[10] = __src[10];
      v8[11] = __src[11];
      v8[4] = __src[4];
      v8[5] = __src[5];
      v8[6] = __src[6];
      v8[7] = __src[7];
      v8[0] = __src[0];
      v8[1] = __src[1];
      v8[2] = __src[2];
      v8[3] = __src[3];
      sub_10000CAAC(v8, &unk_101A0D830);
      return v4 & 1;
    }

    goto LABEL_9;
  }

  __dst[12] = *(&__src[27] + 8);
  __dst[13] = *(&__src[28] + 8);
  __dst[14] = *(&__src[29] + 8);
  *&__dst[15] = *(&__src[30] + 1);
  __dst[8] = *(&__src[23] + 8);
  __dst[9] = *(&__src[24] + 8);
  __dst[10] = *(&__src[25] + 8);
  __dst[11] = *(&__src[26] + 8);
  __dst[4] = *(&__src[19] + 8);
  __dst[5] = *(&__src[20] + 8);
  __dst[6] = *(&__src[21] + 8);
  __dst[7] = *(&__src[22] + 8);
  __dst[0] = *(&__src[15] + 8);
  __dst[1] = *(&__src[16] + 8);
  __dst[2] = *(&__src[17] + 8);
  __dst[3] = *(&__src[18] + 8);
  if (sub_100695050(__dst) != 1)
  {
LABEL_9:
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000CAAC(__dst, &qword_1019F7ED8);
LABEL_10:
    v4 = 0;
    return v4 & 1;
  }

  v46 = __src[12];
  v47 = __src[13];
  v48 = __src[14];
  v49 = *&__src[15];
  v42 = __src[8];
  v43 = __src[9];
  v44 = __src[10];
  v45 = __src[11];
  v38 = __src[4];
  v39 = __src[5];
  v40 = __src[6];
  v41 = __src[7];
  v34 = __src[0];
  v35 = __src[1];
  v36 = __src[2];
  v37 = __src[3];
  sub_10000CAAC(&v34, &unk_101A0D830);
  v4 = 1;
  return v4 & 1;
}

uint64_t sub_100695050(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100695068()
{
  result = qword_1019F7EE0;
  if (!qword_1019F7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F7EE0);
  }

  return result;
}

double sub_1006950BC(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1006950E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100695150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006951B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069521C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006952B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for CRLFolderIdentifier(0);
  *&v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLFolderCRDTData();
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = type metadata accessor for CRLFolderDatabaseRow();
  v19 = v18[5];
  v44 = a1;
  sub_100024E98(*(a1 + v19), *(a1 + v19 + 8));
  sub_1006964DC(&qword_1019F4968, type metadata accessor for CRLFolderCRDTData);
  CRDT.init(serializedData:)();
  v42 = v6;
  sub_100696524(v14, v17, type metadata accessor for CRLFolderCRDTData);
  v20 = v44;
  sub_10069658C(v44, v8, type metadata accessor for CRLFolderIdentifier);
  v41 = v11;
  sub_10069658C(v17, v11, type metadata accessor for CRLFolderCRDTData);
  sub_10069646C(v20 + v18[7], v5);
  v21 = (v20 + v18[6]);
  v22 = v21[1];
  v23 = v20;
  if (v22 >> 60 == 15)
  {
    v24 = 0;
    v25 = v43;
  }

  else
  {
    *&v40 = v5;
    v26 = *v21;
    sub_100006370(0, &qword_101A1AEB0);
    sub_100006370(0, &qword_1019F52C0);
    sub_100024E98(v26, v22);
    v27 = v26;
    v28 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v25 = v43;
    v24 = v28;
    sub_100025870(v27, v22);
    v5 = v40;
  }

  sub_1006965F4(v17, type metadata accessor for CRLFolderCRDTData);
  v29 = v23 + v18[8];
  v30 = *(v29 + 32);
  v31 = type metadata accessor for CRLFolder();
  v32 = v31[5];
  v33 = *(v25 + 56);
  v34 = *v29;
  v43 = *(v29 + 16);
  v40 = v34;
  v35 = v45;
  v33(v45 + v32, 1, 1, v42);
  v36 = v31[6];
  sub_100696524(v8, v35, type metadata accessor for CRLFolderIdentifier);
  sub_100696524(v41, v35 + v31[7], type metadata accessor for CRLFolderCRDTData);
  sub_100696654(v5, v35 + v32);
  *(v35 + v36) = v24;
  v37 = v35 + v31[8];
  v38 = v43;
  *v37 = v40;
  *(v37 + 16) = v38;
  *(v37 + 32) = v30;
  sub_1006965F4(v23, type metadata accessor for CRLFolderDatabaseRow);
  return (*(*(v31 - 1) + 56))(v35, 0, 1, v31);
}

uint64_t sub_10069585C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v9 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v10 = *(v2 + v9), v11 = *(v2 + v9 + 8), v12 = (a1 + v9), v10 == *v12) ? (v13 = v11 == v12[1]) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v14 = type metadata accessor for CRLFolder();
    type metadata accessor for CRLFolderCRDTData();
    sub_1006964DC(&qword_1019F4968, type metadata accessor for CRLFolderCRDTData);
    CRDT.merging(_:)();
    v15 = (a1 + v14[8]);
    v16 = *(v15 + 32);
    v17 = *v15;
    v52 = v15[1];
    v51 = v17;
    sub_10001FF1C();
    sub_10069658C(v3, a2, type metadata accessor for CRLFolderIdentifier);
    sub_10069646C(a1 + v14[5], v8);
    v18 = v14[5];
    v19 = *(a1 + v14[6]);
    v20 = type metadata accessor for CRLFolderIdentifier(0);
    (*(*(v20 - 8) + 56))(a2 + v18, 1, 1, v20);
    v21 = v14[6];
    v22 = v19;
    result = sub_100696654(v8, a2 + v18);
    *(a2 + v21) = v19;
    v24 = a2 + v14[8];
    v25 = v52;
    *v24 = v51;
    *(v24 + 16) = v25;
    *(v24 + 32) = v16;
  }

  else
  {
    v26 = objc_opt_self();
    v27 = [v26 _atomicIncrementAssertCount];
    v53 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v53);
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    v30 = [v29 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v27;
    v36 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v36;
    v37 = sub_1005CF04C();
    *(inited + 104) = v37;
    *(inited + 72) = v28;
    *(inited + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    *(inited + 112) = v31;
    *(inited + 120) = v33;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v38;
    *(inited + 152) = 93;
    v39 = v53;
    *(inited + 216) = v36;
    *(inited + 224) = v37;
    *(inited + 192) = v39;
    v40 = v28;
    v41 = v39;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v43 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v43, "Attempting to merge folders with different ids, returning self without merging", 78, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to merge folders with different ids, returning self without merging");
    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v46 file:v47 lineNumber:93 isFatal:1 format:v48 args:v45];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v49, v50);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}