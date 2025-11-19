uint64_t sub_1000C5824(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v11 = sub_1000C5D90(a1, sub_1003B2EA8);
  v47 = v12;
  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  v14 = inited & 0xC000000000000001;
  *(inited + 32) = v11;

  v46 = v11;
  if (v14)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  v15 = *(*v11 + 144);
  swift_beginAccess();
  v42 = *(v5 + 16);
  v43 = v5 + 16;
  v42(v7, v11 + v15, v4);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  v17 = *(v5 + 8);
  v16 = v5 + 8;
  v45 = v16;
  v41 = v17;
  v17(v7, v4);
  sub_1000C6B54(v10, v11);
  v18 = *(v8 + 8);
  v44 = v8 + 8;
  v40 = v18;
  v18(v10, v48);
  v19 = sub_1003B3EDC(v11);
  if ((v20 & 1) == 0)
  {

    goto LABEL_8;
  }

  v16 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v2 + 16);
  v50 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {

    sub_1003B3EE8(v16, v22);

    *(v2 + 16) = v22;
LABEL_8:
    swift_setDeallocating();
    swift_arrayDestroy();
    v24 = v46;
    v23 = v47;
    if (v47 >> 62)
    {
      v35 = v47;
      v36 = _CocoaArrayWrapper.endIndex.getter();
      v23 = v35;
      v25 = v36;
      if (!v36)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v25 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_22;
      }
    }

    if (v25 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_24:
    sub_1003AF2F0();
    v22 = v50;
  }

  v26 = 0;
  v27 = v23 & 0xC000000000000001;
  do
  {
    if (v27)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v23 + 8 * v26 + 32);
    }

    v29 = *(*v28 + 144);
    swift_beginAccess();
    v42(v7, v28 + v29, v4);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v41(v7, v4);
    sub_1000C6B54(v10, v28);
    v40(v10, v48);
    v30 = sub_1003B3EDC(v28);
    if (v31)
    {
      v32 = v30;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v2 + 16);
      v49 = v34;
      if ((v33 & 1) == 0)
      {
        sub_1003AF2F0();
        v34 = v49;
      }

      sub_1003B3EE8(v32, v34);

      *(v2 + 16) = v34;
    }

    else
    {
    }

    ++v26;
    v24 = v46;
    v23 = v47;
  }

  while (v25 != v26);
LABEL_22:
  sub_1000C478C(v39, -1);
  return v24;
}

uint64_t sub_1000C5CE0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_1000C5D90(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t sub_1000C5E24@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003B2F48(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000C5F2C(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  v49 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = IndexPath.row.getter();
  v14 = IndexPath.row.getter();
  v15 = v14 + a2;
  if (__OFADD__(v14, a2))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v15 < v13)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v16 = IndexPath.section.getter();
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v3 = v16;
  a1 = *v5;
  if (v16 >= *(*v5 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v42 = v8;
  v17 = a1 + 16 * v16;
  a2 = *(v17 + 32);
  v4 = *(v17 + 40);
  v8 = v4 >> 62;
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13)
    {
      goto LABEL_7;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_38:
  if (_CocoaArrayWrapper.endIndex.getter() < v13)
  {
    goto LABEL_39;
  }

LABEL_7:
  if (v13 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    result = sub_1003B2E94(v10);
    v10 = result;
    goto LABEL_23;
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v15)
  {
    goto LABEL_41;
  }

  v41 = v10;
  v44 = v3;
  v45 = a1;
  v43 = a2;
  if ((v4 & 0xC000000000000001) == 0 || v13 == v15)
  {
    v19 = v13;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v13 >= v15)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    swift_bridgeObjectRetain_n();

    v19 = v13;
    v20 = v13;
    do
    {
      sub_100058000(&qword_10076BB78);
      _ArrayBuffer._typeCheckSlowPath(_:)(v20++);
    }

    while (v15 != v20);
  }

  a1 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v8)
  {
    v8 = v19;
    a1 = _CocoaArrayWrapper.subscript.getter();
    v46 = v21;
    v13 = v22;
    a2 = v23;
  }

  else
  {

    v46 = a1 + 32;
    a2 = (2 * v15) | 1;
    v8 = v19;
    v13 = v19;
  }

  v10 = v45;
  result = swift_isUniquelyReferenced_nonNull_native();
  v3 = v44;
  if ((result & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_23:
  if (v3 >= v10[2])
  {
    __break(1u);
    goto LABEL_44;
  }

  v43 = a1;
  result = sub_1000FED50(v8, v15, &qword_10076BB78);
  *v5 = v10;
  v44 = a2;
  v45 = v13;
  v24 = __OFSUB__(a2 >> 1, v13);
  v25 = (a2 >> 1) - v13;
  if (!v25)
  {
    return v43;
  }

  if (!((v25 < 0) ^ v24 | (v25 == 0)))
  {
    v26 = (v42 + 16);
    v27 = (v42 + 8);
    v28 = (v41 + 1);
    v29 = (v46 + 8 * v45);
    do
    {
      v30 = *v29;
      v31 = *(**v29 + 144);
      swift_beginAccess();
      v32 = v30 + v31;
      v33 = v48;
      v34 = v49;
      (*v26)(v48, v32, v49);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v27)(v33, v34);
      sub_1000C687C(v12, v30);
      (*v28)(v12, v47);
      v35 = sub_1003B3EDC(v30);
      if (v36)
      {
        v37 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v5[2];
        v50 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003AE0D8();
          v39 = v50;
        }

        sub_1003B3EE8(v37, v39);

        v5[2] = v39;
      }

      else
      {
      }

      ++v29;
      --v25;
    }

    while (v25);
    return v43;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1000C63D4(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  v49 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v10 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = IndexPath.row.getter();
  v14 = IndexPath.row.getter();
  v15 = v14 + a2;
  if (__OFADD__(v14, a2))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v15 < v13)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v16 = IndexPath.section.getter();
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v3 = v16;
  a1 = *v5;
  if (v16 >= *(*v5 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v42 = v8;
  v17 = a1 + 16 * v16;
  a2 = *(v17 + 32);
  v4 = *(v17 + 40);
  v8 = v4 >> 62;
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13)
    {
      goto LABEL_7;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_38:
  if (_CocoaArrayWrapper.endIndex.getter() < v13)
  {
    goto LABEL_39;
  }

LABEL_7:
  if (v13 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    result = sub_1003B2EA8(v10);
    v10 = result;
    goto LABEL_23;
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v15)
  {
    goto LABEL_41;
  }

  v41 = v10;
  v44 = v3;
  v45 = a1;
  v43 = a2;
  if ((v4 & 0xC000000000000001) == 0 || v13 == v15)
  {
    v19 = v13;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v13 >= v15)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    swift_bridgeObjectRetain_n();

    v19 = v13;
    v20 = v13;
    do
    {
      sub_100058000(&qword_10076B788);
      _ArrayBuffer._typeCheckSlowPath(_:)(v20++);
    }

    while (v15 != v20);
  }

  a1 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v8)
  {
    v8 = v19;
    a1 = _CocoaArrayWrapper.subscript.getter();
    v46 = v21;
    v13 = v22;
    a2 = v23;
  }

  else
  {

    v46 = a1 + 32;
    a2 = (2 * v15) | 1;
    v8 = v19;
    v13 = v19;
  }

  v10 = v45;
  result = swift_isUniquelyReferenced_nonNull_native();
  v3 = v44;
  if ((result & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_23:
  if (v3 >= v10[2])
  {
    __break(1u);
    goto LABEL_44;
  }

  v43 = a1;
  result = sub_1000FED50(v8, v15, &qword_10076B788);
  *v5 = v10;
  v44 = a2;
  v45 = v13;
  v24 = __OFSUB__(a2 >> 1, v13);
  v25 = (a2 >> 1) - v13;
  if (!v25)
  {
    return v43;
  }

  if (!((v25 < 0) ^ v24 | (v25 == 0)))
  {
    v26 = (v42 + 16);
    v27 = (v42 + 8);
    v28 = (v41 + 1);
    v29 = (v46 + 8 * v45);
    do
    {
      v30 = *v29;
      v31 = *(**v29 + 144);
      swift_beginAccess();
      v32 = v30 + v31;
      v33 = v48;
      v34 = v49;
      (*v26)(v48, v32, v49);

      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      (*v27)(v33, v34);
      sub_1000C6B54(v12, v30);
      (*v28)(v12, v47);
      v35 = sub_1003B3EDC(v30);
      if (v36)
      {
        v37 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v5[2];
        v50 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003AF2F0();
          v39 = v50;
        }

        sub_1003B3EE8(v37, v39);

        v5[2] = v39;
      }

      else
      {
      }

      ++v29;
      --v25;
    }

    while (v25);
    return v43;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1000C687C(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + 8);
  v11 = *(v2 + 8);
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = sub_1003AB294(a1);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if (!sub_1000AA470(a2, v14))
  {

    return 0;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() == 1)
    {
LABEL_6:

      sub_1003A96C8(a1);

      return 1;
    }
  }

  else if (*(v14 + 16) == 1)
  {
    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v9, a1, v6);
  v29 = *v10;
  v17 = v29;
  v19 = sub_1003AB294(v9);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = v18;
  if (*(v17 + 24) >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

LABEL_22:
    sub_1003AE0EC();
    if ((v3 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  sub_100548DC4(v22, isUniquelyReferenced_nonNull_native);
  v23 = sub_1003AB294(v9);
  if ((v3 & 1) != (v24 & 1))
  {
LABEL_24:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v23;
  if ((v3 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_17:
  v25 = v29;
  v26 = *(*(v29 + 56) + 8 * v19);

  v28 = v26;
  sub_1000EA09C(a2, sub_10058DF00, sub_1000EABF0);

  if (v28)
  {
    *(*(v25 + 56) + 8 * v19) = v28;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v27 = *(v7 + 8);
    v27(*(v25 + 48) + *(v7 + 72) * v19, v6);
    sub_1003AC85C(v19, v25);
    v27(v9, v6);
  }

  *v10 = v29;
  return 1;
}

uint64_t sub_1000C6B54(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + 8);
  v11 = *(v2 + 8);
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = sub_1003AB730(a1);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if (!sub_1000AA470(a2, v14))
  {

    return 0;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() == 1)
    {
LABEL_6:

      sub_1003A97F8(a1);

      return 1;
    }
  }

  else if (*(v14 + 16) == 1)
  {
    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v9, a1, v6);
  v29 = *v10;
  v17 = v29;
  v19 = sub_1003AB730(v9);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = v18;
  if (*(v17 + 24) >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

LABEL_22:
    sub_1003AF450();
    if ((v3 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  sub_10054B560(v22, isUniquelyReferenced_nonNull_native);
  v23 = sub_1003AB730(v9);
  if ((v3 & 1) != (v24 & 1))
  {
LABEL_24:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v23;
  if ((v3 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_17:
  v25 = v29;
  v26 = *(*(v29 + 56) + 8 * v19);

  v28 = v26;
  sub_1000EA09C(a2, sub_10058E1D0, sub_1000EAE64);

  if (v28)
  {
    *(*(v25 + 56) + 8 * v19) = v28;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v27 = *(v7 + 8);
    v27(*(v25 + 48) + *(v7 + 72) * v19, v6);
    sub_1003ACEDC(v19, v25);
    v27(v9, v6);
  }

  *v10 = v29;
  return 1;
}

uint64_t sub_1000C6E2C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(v2 + 8) + 16) || (sub_1003AB294(a1), (v11 & 1) == 0))
  {
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D420;
    *(inited + 32) = a2;

    v22 = sub_100403C28(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + 8);
    result = sub_100126978(v22, a1, isUniquelyReferenced_nonNull_native);
    v25 = v30;
LABEL_15:
    *(v4 + 8) = v25;
    return result;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a1, v7);
  v13 = *(v2 + 8);
  v29 = v13;
  v15 = sub_1003AB294(v10);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v14;
  if (*(v13 + 24) >= v18)
  {
    if (v12)
    {
      if (v14)
      {
LABEL_11:
        v26 = v29;
        v28 = *(*(v29 + 56) + 8 * v15);

        sub_10058B998(&v30, a2);

        if (v28)
        {
          *(*(v26 + 56) + 8 * v15) = v28;
          result = (*(v8 + 8))(v10, v7);
        }

        else
        {
          v27 = *(v8 + 8);
          v27(*(v26 + 48) + *(v8 + 72) * v15, v7);
          sub_1003AC85C(v15, v26);
          result = (v27)(v10, v7);
        }

        v25 = v29;
        goto LABEL_15;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    sub_1003AE0EC();
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  sub_100548DC4(v18, v12);
  v19 = sub_1003AB294(v10);
  if ((v3 & 1) == (v20 & 1))
  {
    v15 = v19;
    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C70F8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(v2 + 8) + 16) || (sub_1003AB730(a1), (v11 & 1) == 0))
  {
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D420;
    *(inited + 32) = a2;

    v22 = sub_100404228(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + 8);
    result = sub_1001272B8(v22, a1, isUniquelyReferenced_nonNull_native);
    v25 = v30;
LABEL_15:
    *(v4 + 8) = v25;
    return result;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a1, v7);
  v13 = *(v2 + 8);
  v29 = v13;
  v15 = sub_1003AB730(v10);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v14;
  if (*(v13 + 24) >= v18)
  {
    if (v12)
    {
      if (v14)
      {
LABEL_11:
        v26 = v29;
        v28 = *(*(v29 + 56) + 8 * v15);

        sub_10058C928(&v30, a2);

        if (v28)
        {
          *(*(v26 + 56) + 8 * v15) = v28;
          result = (*(v8 + 8))(v10, v7);
        }

        else
        {
          v27 = *(v8 + 8);
          v27(*(v26 + 48) + *(v8 + 72) * v15, v7);
          sub_1003ACEDC(v15, v26);
          result = (v27)(v10, v7);
        }

        v25 = v29;
        goto LABEL_15;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    sub_1003AF450();
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  sub_10054B560(v18, v12);
  v19 = sub_1003AB730(v10);
  if ((v3 & 1) == (v20 & 1))
  {
    v15 = v19;
    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C73C4@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (!*(a4 + 16) || (v6 = a4, v9 = a1, v10 = sub_1003B3EDC(a1), (v11 & 1) == 0))
  {
LABEL_48:
    v32 = type metadata accessor for IndexPath();
    v26 = *(*(v32 - 8) + 56);
    v27 = v32;
    v28 = a5;
    v29 = 1;
LABEL_49:

    return v26(v28, v29, 1, v27);
  }

  v12 = *(*(v6 + 56) + 8 * v10);
  if ((a2 & 1) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    if (v12 >= *(a3 + 16))
    {
LABEL_61:
      __break(1u);
    }

    else
    {
      a3 = *(a3 + 16 * v12 + 40);
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      if (!(a3 >> 62))
      {
        v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_34;
      }
    }

    v22 = _CocoaArrayWrapper.endIndex.getter();
LABEL_34:

    v23 = 0;
    while (v22 != v23)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (v24 == v9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v23 >= *(v6 + 16))
        {
          goto LABEL_57;
        }

        if (*(a3 + 8 * v23 + 32) == v9)
        {
LABEL_43:

          IndexPath.init(row:section:)();
          v25 = type metadata accessor for IndexPath();
          v26 = *(*(v25 - 8) + 56);
          v27 = v25;
          v28 = a5;
          v29 = 0;
          goto LABEL_49;
        }
      }

      v15 = __OFADD__(v23++, 1);
      if (v15)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_48;
  }

  v34 = a5;
  Strong = swift_weakLoadStrong();

  v14 = 0;
  if (Strong)
  {
    a3 = v9;
    do
    {
      v15 = __OFADD__(v14++, 1);
      if (v15)
      {
        goto LABEL_59;
      }

      v9 = Strong;
      swift_beginAccess();
      v16 = *(Strong + 64);
      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        if (v17)
        {
LABEL_11:
          v35 = v9;
          v9 = v16 & 0xC000000000000001;
          v6 = v16 & 0xFFFFFFFFFFFFFF8;

          v18 = 0;
          while (1)
          {
            if (v9)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v20 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v19 = *(v16 + 8 * v18 + 32);

              v20 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }
            }

            if (v19 == a3)
            {

              goto LABEL_27;
            }

            v15 = __OFADD__(v14, 1);
            v21 = v14 + 1;
            if (v15)
            {
              goto LABEL_54;
            }

            if (*(v19 + 48))
            {
              v36 = 0;
              sub_10023C598(v19, &v36);
              a5 = v36;
              *(v19 + 40) = v36;
              *(v19 + 48) = 0;
            }

            else
            {
              a5 = *(v19 + 40);
            }

            v15 = __OFADD__(v21, a5);
            v14 = v21 + a5;
            if (v15)
            {
              goto LABEL_55;
            }

            ++v18;
            if (v20 == v17)
            {

LABEL_27:
              v9 = v35;
              goto LABEL_7;
            }
          }
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_11;
        }
      }

LABEL_7:
      Strong = swift_weakLoadStrong();

      a3 = v9;
    }

    while (Strong);
  }

  result = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
  }

  else if (result < 0)
  {
    v33 = type metadata accessor for IndexPath();
    return (*(*(v33 - 8) + 56))(v34, 1, 1, v33);
  }

  else
  {
    IndexPath.init(row:section:)();
    v31 = type metadata accessor for IndexPath();
    return (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
  }

  return result;
}

uint64_t sub_1000C77E8@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (!*(a4 + 16) || (v6 = a4, v9 = a1, v10 = sub_1003B3EDC(a1), (v11 & 1) == 0))
  {
LABEL_48:
    v32 = type metadata accessor for IndexPath();
    v26 = *(*(v32 - 8) + 56);
    v27 = v32;
    v28 = a5;
    v29 = 1;
LABEL_49:

    return v26(v28, v29, 1, v27);
  }

  v12 = *(*(v6 + 56) + 8 * v10);
  if ((a2 & 1) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    if (v12 >= *(a3 + 16))
    {
LABEL_61:
      __break(1u);
    }

    else
    {
      a3 = *(a3 + 16 * v12 + 40);
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      if (!(a3 >> 62))
      {
        v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_34;
      }
    }

    v22 = _CocoaArrayWrapper.endIndex.getter();
LABEL_34:

    v23 = 0;
    while (v22 != v23)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (v24 == v9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v23 >= *(v6 + 16))
        {
          goto LABEL_57;
        }

        if (*(a3 + 8 * v23 + 32) == v9)
        {
LABEL_43:

          IndexPath.init(row:section:)();
          v25 = type metadata accessor for IndexPath();
          v26 = *(*(v25 - 8) + 56);
          v27 = v25;
          v28 = a5;
          v29 = 0;
          goto LABEL_49;
        }
      }

      v15 = __OFADD__(v23++, 1);
      if (v15)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_48;
  }

  v34 = a5;
  Strong = swift_weakLoadStrong();

  v14 = 0;
  if (Strong)
  {
    a3 = v9;
    do
    {
      v15 = __OFADD__(v14++, 1);
      if (v15)
      {
        goto LABEL_59;
      }

      v9 = Strong;
      swift_beginAccess();
      v16 = *(Strong + 64);
      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        if (v17)
        {
LABEL_11:
          v35 = v9;
          v9 = v16 & 0xC000000000000001;
          v6 = v16 & 0xFFFFFFFFFFFFFF8;

          v18 = 0;
          while (1)
          {
            if (v9)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v20 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v19 = *(v16 + 8 * v18 + 32);

              v20 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }
            }

            if (v19 == a3)
            {

              goto LABEL_27;
            }

            v15 = __OFADD__(v14, 1);
            v21 = v14 + 1;
            if (v15)
            {
              goto LABEL_54;
            }

            if (*(v19 + 48))
            {
              v36 = 0;
              sub_10023C598(v19, &v36);
              a5 = v36;
              *(v19 + 40) = v36;
              *(v19 + 48) = 0;
            }

            else
            {
              a5 = *(v19 + 40);
            }

            v15 = __OFADD__(v21, a5);
            v14 = v21 + a5;
            if (v15)
            {
              goto LABEL_55;
            }

            ++v18;
            if (v20 == v17)
            {

LABEL_27:
              v9 = v35;
              goto LABEL_7;
            }
          }
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_11;
        }
      }

LABEL_7:
      Strong = swift_weakLoadStrong();

      a3 = v9;
    }

    while (Strong);
  }

  result = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
  }

  else if (result < 0)
  {
    v33 = type metadata accessor for IndexPath();
    return (*(*(v33 - 8) + 56))(v34, 1, 1, v33);
  }

  else
  {
    IndexPath.init(row:section:)();
    v31 = type metadata accessor for IndexPath();
    return (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
  }

  return result;
}

uint64_t sub_1000C7C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)(uint64_t)@<X5>, void (*a7)(uint64_t, void, uint64_t, uint64_t, uint64_t, void)@<X6>, char *a8@<X8>)
{
  v32 = a8;
  v15 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = type metadata accessor for IndexPath();
  v33 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a4 + 16))
  {
    goto LABEL_6;
  }

  result = a6(a1);
  if ((v22 & 1) == 0)
  {
    goto LABEL_6;
  }

  v23 = *(*(a4 + 56) + 8 * result);
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v23 >= *(a2 + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (*(a2 + 16 * v23 + 32) != a1)
  {
LABEL_6:
    a7(a1, a5 & 1, a2, a3, a4, a5 & 1);
    if ((*(v33 + 48))(v17, 1, v18) == 1)
    {
      sub_1000079B4(v17, &unk_100771B10);
      return (*(v33 + 56))(v32, 1, 1, v18);
    }

    v24 = *(v33 + 32);
    v24(v20, v17, v18);
    result = IndexPath.row.modify();
    if (!__OFADD__(*v25, 1))
    {
      ++*v25;
      (result)(v34, 0);
      v26 = v32;
      v24(v32, v20, v18);
      return (*(v33 + 56))(v26, 0, 1, v18);
    }

    __break(1u);
    goto LABEL_19;
  }

  if (*(a4 + 16) && (a6(a1), (v27 & 1) != 0))
  {
    v28 = v32;
    IndexPath.init(row:section:)();
    v29 = *(v33 + 56);
    v30 = v28;
    v31 = 0;
  }

  else
  {
    v30 = v32;
    v29 = *(v33 + 56);
    v31 = 1;
  }

  return v29(v30, v31, 1, v18);
}

void sub_1000C7F48()
{
  v1 = v0;
  v2 = v0 + qword_100771760;
  v3 = *(v0 + qword_100771760);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_100100898(v3);
  [*(v0 + qword_100771730) reloadData];
  v4 = *(v0 + qword_100771708);
  if (v4)
  {
    v5 = v4;
    sub_1000C8158(&unk_10076BBF0);
  }

  v6 = *(v1 + qword_100771710);
  if (v6)
  {
    v7 = v6;
    sub_1000C8264(&unk_10076BBE0, &unk_10062FE18, &unk_1007720E0);
  }
}

void sub_1000C8050()
{
  v1 = v0;
  v2 = v0 + qword_100771760;
  v3 = *(v0 + qword_100771760);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_100100898(v3);
  [*(v0 + qword_100771730) reloadData];
  v4 = *(v0 + qword_100771708);
  if (v4)
  {
    v5 = v4;
    sub_1000C8158(&unk_10076BA90);
  }

  v6 = *(v1 + qword_100771710);
  if (v6)
  {
    v7 = v6;
    sub_1000C8264(&unk_1007721E0, &unk_10062FD68, &unk_10076BA80);
  }
}

uint64_t sub_1000C8158(uint64_t result)
{
  v2 = *(v1 + qword_100787F68);
  if (v2)
  {
    v3 = result;
    if ([swift_unknownObjectRetain() localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
    }

    v6[0] = v4;
    v6[1] = v5;
    if (*(&v5 + 1))
    {
      sub_100058000(v3);
      if (swift_dynamicCast())
      {

        [v2 setLocalContext:0];
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      return sub_1000079B4(v6, &qword_10076AE40);
    }
  }

  return result;
}

uint64_t sub_1000C8264(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(a1);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = *(v3 + qword_100780CB8);
  if (v13)
  {
    v14 = qword_100780CC0;
    swift_beginAccess();
    v15 = *(v3 + v14);
    if (*(v15 + 16) && (v16 = sub_1003AB44C(v13), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      swift_endAccess();
      v19 = sub_100058000(a3);
      (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
      v20 = *(*v18 + 120);
      swift_beginAccess();

      sub_10000D184(v12, v18 + v20, a1);
      swift_endAccess();
      v21 = *(v6 + 20);
      v22 = sub_100058000(&qword_100780DC0);
      (*(*(v22 - 8) + 56))(&v8[v21], 1, 4, v22);
      *v8 = 0;
      v23 = qword_1007A8498;
      swift_beginAccess();
      sub_100100648(v8, v18 + v23);
      swift_endAccess();
    }

    else
    {
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000C8540(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v7 = v4;
  if (*(v4 + qword_100771768) == 1)
  {
    v8 = a1;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_1007716F0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Attempting to read sectionMetadata while it is being modified", v12, 2u);
    }

    a1 = v8;
  }

  v13 = v7 + qword_100771760;
  v14 = *(v7 + qword_100771760);
  if (v14)
  {
    v15 = *(v7 + qword_100771760);
  }

  else
  {
    sub_100058000(a1);
    swift_allocObject();
    sub_1000F4C70(&_swiftEmptyArrayStorage, a3);
    v15 = a4();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v23 = *v13;
    *v13 = v15;
    *(v13 + 8) = v17;
    *(v13 + 16) = v19;
    *(v13 + 24) = v21 & 1;

    sub_100100898(v23);
  }

  sub_1001008E4(v14);
  return v15;
}

uint64_t sub_1000C8754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *(&v22 + 1) = v8;
  v23 = v9;
  v24 = v10 & 1;
  v11 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  sub_100058000(&unk_10076BBA0);
  swift_allocObject();
  v12 = sub_1000F4C70(_swiftEmptyArrayStorage, sub_1000E821C);
  v13 = sub_1000C8CBC(a3, v12);

  v14 = sub_1000C9454(v13, sub_100101534);

  if (*(a2 + qword_100771788) == 1)
  {
    swift_beginAccess();
    sub_1000C98A8(a3);
    swift_endAccess();
  }

  v15 = IndexPath.section.getter();

  v16 = IndexPath.row.getter();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1003B2E94(v7);
  v7 = result;
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v15 < v7[2])
  {
    sub_1000FF698(v16, v16, v14, &qword_10076BB78, &unk_10062FDD0, sub_1001009E0, sub_1003B3EE4);

    *&v22 = v7;
    v18 = IndexPath.section.getter();
    sub_1000C4C10(v14, v18);
    sub_1000AAD80(a3, 4u, 0, 1);
    sub_1000AB0F8(v14, 0, a5, 0);

    v19 = a2 + qword_100771760;
    v20 = *(a2 + qword_100771760);
    *v19 = v22;
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;
    result = sub_100100898(v20);
    *(a2 + v11) = 0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000C8A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *(&v22 + 1) = v8;
  v23 = v9;
  v24 = v10 & 1;
  v11 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  sub_100058000(&unk_10076B770);
  swift_allocObject();
  v12 = sub_1000F4C70(&_swiftEmptyArrayStorage, sub_1000E8430);
  v13 = sub_1000C9088(a3, v12);

  v14 = sub_1000C9454(v13, sub_100101534);

  if (*(a2 + qword_100771788) == 1)
  {
    swift_beginAccess();
    sub_1000C9CD0(a3);
    swift_endAccess();
  }

  v15 = IndexPath.section.getter();

  v16 = IndexPath.row.getter();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1003B2EA8(v7);
  v7 = result;
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v15 < v7[2])
  {
    sub_1000FF698(v16, v16, v14, &qword_10076B788, &unk_10062FB80, sub_1000FF7D8, sub_1003B3EE4);

    *&v22 = v7;
    v18 = IndexPath.section.getter();
    sub_1000C4FC8(v14, v18);
    sub_1000AAF3C(a3, 4u, 0, 1);
    sub_1000AB57C(v14, 0, a5, 0);

    v19 = a2 + qword_100771760;
    v20 = *(a2 + qword_100771760);
    *v19 = v22;
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;
    result = sub_100100898(v20);
    *(a2 + v11) = 0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1000C8CBC(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *(*a1 + 144);
  swift_beginAccess();
  v15 = *(v8 + 16);
  v34 = a1;
  v35 = v13;
  v32 = v15;
  v33 = v8 + 16;
  v15(v13, a1 + v14, v7);
  v31 = v2;
  v16 = *(v2 + qword_100771740);
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = *(v16 + 16);

  if ((v17(v18) & 1) == 0 || (v29 = qword_100771728, Strong = swift_unknownObjectUnownedLoadStrong(), v32(v6, v34 + v14, v7), v27 = *(v8 + 56), v28 = v8 + 56, v27(v6, 0, 1, v7), v20 = (*(v16 + 32))(Strong, v6), Strong, sub_1000079B4(v6, &qword_100772140), v20 <= 0))
  {

LABEL_10:
    (*(v8 + 8))(v35, v7);
    return _swiftEmptyArrayStorage;
  }

  v36 = _swiftEmptyArrayStorage;
  sub_1000C4170(v20);
  v21 = 0;
  v22 = (v8 + 8);
  do
  {
    v23 = swift_unknownObjectUnownedLoadStrong();
    v32(v6, v35, v7);
    v27(v6, 0, 1, v7);
    (*(v16 + 48))(v23, v21, v6);

    sub_1000079B4(v6, &qword_100772140);
    sub_1000D0798(v10, v34, v30);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v21;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v24 = *v22;
    (*v22)(v10, v7);
  }

  while (v20 != v21);

  v24(v35, v7);
  return v36;
}

void *sub_1000C9088(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = *(*a1 + 144);
  swift_beginAccess();
  v15 = *(v8 + 16);
  v34 = a1;
  v35 = v13;
  v32 = v15;
  v33 = v8 + 16;
  v15(v13, a1 + v14, v7);
  v31 = v2;
  v16 = *(v2 + qword_100771740);
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = *(v16 + 16);

  if ((v17(v18) & 1) == 0 || (v29 = qword_100771728, Strong = swift_unknownObjectUnownedLoadStrong(), v32(v6, v34 + v14, v7), v27 = *(v8 + 56), v28 = v8 + 56, v27(v6, 0, 1, v7), v20 = (*(v16 + 32))(Strong, v6), Strong, sub_1000079B4(v6, &unk_100771B40), v20 <= 0))
  {

LABEL_10:
    (*(v8 + 8))(v35, v7);
    return &_swiftEmptyArrayStorage;
  }

  v36 = &_swiftEmptyArrayStorage;
  sub_1000C4170(v20);
  v21 = 0;
  v22 = (v8 + 8);
  do
  {
    v23 = swift_unknownObjectUnownedLoadStrong();
    v32(v6, v35, v7);
    v27(v6, 0, 1, v7);
    (*(v16 + 48))(v23, v21, v6);

    sub_1000079B4(v6, &unk_100771B40);
    sub_1000D0BC8(v11, v34, v30);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v21;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v24 = *v22;
    (*v22)(v11, v7);
  }

  while (v20 != v21);
  v24(v35, v7);

  return v36;
}

void *sub_1000C9454(uint64_t a1, void (*a2)(void **))
{
  v31 = a1;
  v32 = a2;
  v3 = v2;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  swift_beginAccess();
  v11 = *(v2 + 64);
  if (v11 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v13 = &qword_100767000;
    if (!v29)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = &qword_100767000;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  if (v13[2] != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100775D80);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Expand should begin with no child nodes", v17, 2u);
  }

LABEL_8:
  v18 = qword_1007A84C0;
  swift_beginAccess();
  (*(v5 + 16))(v10, v3 + v18, v4);
  v30 = *(v5 + 104);
  v30(v8, enum case for TTRITreeViewExpandedState.collapsed(_:), v4);
  sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v10, v4);
  if ((v19 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_100775D80);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Expand should begin with collapsed state", v24, 2u);
    }
  }

  v30(v10, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  swift_beginAccess();
  (*(v5 + 40))(v3 + v18, v10, v4);
  swift_endAccess();
  *(v3 + 64) = v31;

  v33 = &_swiftEmptyArrayStorage;
  v32(&v33);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    do
    {
      *(v26 + 40) = 0;
      *(v26 + 48) = 1;
      v27 = swift_weakLoadStrong();

      v26 = v27;
    }

    while (v27);
  }

  return v33;
}

uint64_t sub_1000C98A8(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v2 - 8);
  v27 = &v26 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for TTRITreeViewExpandedState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1007A84C0;
  swift_beginAccess();
  (*(v14 + 16))(v16, a1 + v17, v13);
  v18 = (*(v14 + 88))(v16, v13);
  if (v18 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
    goto LABEL_5;
  }

  v19 = v8;
  v20 = v28;
  if (v18 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    v21 = *(*a1 + 144);
    swift_beginAccess();
    (*(v5 + 16))(v7, a1 + v21, v4);
    v22 = v26;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    sub_10058B6B8(v12, v22);
    return (*(v19 + 8))(v12, v20);
  }

  v8 = v19;
  if (v18 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
LABEL_5:
    v24 = *(*a1 + 144);
    swift_beginAccess();
    (*(v5 + 16))(v7, a1 + v24, v4);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v25 = v27;
    sub_1000E992C(v12, v27);
    (*(v8 + 8))(v12, v28);
    return sub_1000079B4(v25, &unk_10076BB50);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C9CD0(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v2 - 8);
  v27 = &v26 - v3;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v28 - 8);
  v9 = __chkstk_darwin(v28);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = type metadata accessor for TTRITreeViewExpandedState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1007A84C0;
  swift_beginAccess();
  (*(v14 + 16))(v16, a1 + v17, v13);
  v18 = (*(v14 + 88))(v16, v13);
  if (v18 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
    goto LABEL_5;
  }

  v19 = v8;
  v20 = v28;
  if (v18 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    v21 = *(*a1 + 144);
    swift_beginAccess();
    (*(v5 + 16))(v7, a1 + v21, v4);
    v22 = v26;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    sub_10058C648(v12, v22);
    return (*(v19 + 8))(v12, v20);
  }

  v8 = v19;
  if (v18 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
LABEL_5:
    v24 = *(*a1 + 144);
    swift_beginAccess();
    (*(v5 + 16))(v7, a1 + v24, v4);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v25 = v27;
    sub_1000E9DB0(v12, v27);
    (*(v8 + 8))(v12, v28);
    return sub_1000079B4(v25, &qword_10076B8B0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CA0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CA458(sub_10023C598);
  if (*(a3 + qword_100771788) == 1)
  {
    swift_beginAccess();
    sub_1000C98A8(a2);
    swift_endAccess();
  }

  *&v23 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *(&v23 + 1) = v10;
  v24 = v11;
  v25 = v12 & 1;
  v13 = qword_100771768;
  *(a3 + qword_100771768) = 1;
  sub_1000C5F2C(a4, v9);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1000AAD80(a2, 4u, 0, 1);
  sub_1000F2CA4(v15, v17, v19, 1, a5, 0);
  swift_unknownObjectRelease();
  v20 = a3 + qword_100771760;
  v21 = *(a3 + qword_100771760);
  *v20 = v23;
  *(v20 + 16) = v24;
  *(v20 + 24) = v25;
  result = sub_100100898(v21);
  *(a3 + v13) = 0;
  return result;
}

uint64_t sub_1000CA2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CA458(sub_10023C598);
  if (*(a3 + qword_100771788) == 1)
  {
    swift_beginAccess();
    sub_1000C9CD0(a2);
    swift_endAccess();
  }

  *&v23 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *(&v23 + 1) = v10;
  v24 = v11;
  v25 = v12 & 1;
  v13 = qword_100771768;
  *(a3 + qword_100771768) = 1;
  sub_1000C63D4(a4, v9);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1000AAF3C(a2, 4u, 0, 1);
  sub_1000F30A0(v15, v17, v19, 1, a5, 0);
  swift_unknownObjectRelease();
  v20 = a3 + qword_100771760;
  v21 = *(a3 + qword_100771760);
  *v20 = v23;
  *(v20 + 16) = v24;
  *(v20 + 24) = v25;
  result = sub_100100898(v21);
  *(a3 + v13) = 0;
  return result;
}

uint64_t sub_1000CA458(void (*a1)(uint64_t, void *))
{
  v22 = a1;
  v2 = v1;
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = qword_1007A84C0;
  swift_beginAccess();
  (*(v4 + 16))(v9, v1 + v10, v3);
  v23 = *(v4 + 104);
  v23(v7, enum case for TTRITreeViewExpandedState.expanded(_:), v3);
  sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v9, v3);
  if ((v11 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100775D80);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Collapse should begin with expanded state", v16, 2u);
    }
  }

  if (*(v2 + 48) == 1)
  {
    v24[0] = 0;
    v22(v2, v24);
    v17 = v24[0];
    *(v2 + 40) = v24[0];
    *(v2 + 48) = 0;
  }

  else
  {
    v17 = *(v2 + 40);
  }

  v23(v9, enum case for TTRITreeViewExpandedState.collapsed(_:), v3);
  swift_beginAccess();
  (*(v4 + 40))(v2 + v10, v9, v3);
  swift_endAccess();
  swift_beginAccess();
  *(v2 + 64) = &_swiftEmptyArrayStorage;

  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    do
    {
      *(v19 + 40) = 0;
      *(v19 + 48) = 1;
      v20 = swift_weakLoadStrong();

      v19 = v20;
    }

    while (v20);
  }

  return v17;
}

uint64_t sub_1000CA7E0(uint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for TTRITreeViewExpandedState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_100771B50);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_100058000(&qword_10076B9C0);
  v8 = __chkstk_darwin(v7 - 8);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - v11;
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  v16 = sub_1000F4E08(v29, v15, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

  if (v16)
  {
    v17 = qword_1007A84C0;
    swift_beginAccess();
    (*(v2 + 16))(v14, v16 + v17, v1);

    v18 = *(v2 + 56);
    v18(v14, 0, 1, v1);
  }

  else
  {
    v18 = *(v2 + 56);
    v18(v14, 1, 1, v1);
  }

  (*(v2 + 104))(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v1);
  v18(v12, 0, 1, v1);
  v19 = *(v4 + 48);
  sub_10000794C(v14, v6, &qword_10076B9C0);
  sub_10000794C(v12, &v6[v19], &qword_10076B9C0);
  v20 = *(v2 + 48);
  if (v20(v6, 1, v1) != 1)
  {
    v22 = v28;
    sub_10000794C(v6, v28, &qword_10076B9C0);
    if (v20(&v6[v19], 1, v1) != 1)
    {
      v23 = v27;
      (*(v2 + 32))(v27, &v6[v19], v1);
      sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
      v24 = v22;
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v2 + 8);
      v25(v23, v1);
      sub_1000079B4(v12, &qword_10076B9C0);
      sub_1000079B4(v14, &qword_10076B9C0);
      v25(v24, v1);
      sub_1000079B4(v6, &qword_10076B9C0);
      return v21 & 1;
    }

    sub_1000079B4(v12, &qword_10076B9C0);
    sub_1000079B4(v14, &qword_10076B9C0);
    (*(v2 + 8))(v22, v1);
    goto LABEL_9;
  }

  sub_1000079B4(v12, &qword_10076B9C0);
  sub_1000079B4(v14, &qword_10076B9C0);
  if (v20(&v6[v19], 1, v1) != 1)
  {
LABEL_9:
    sub_1000079B4(v6, &unk_100771B50);
    v21 = 0;
    return v21 & 1;
  }

  sub_1000079B4(v6, &qword_10076B9C0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1000CAD68(uint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for TTRITreeViewExpandedState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_100771B50);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_100058000(&qword_10076B9C0);
  __chkstk_darwin(v7 - 8);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  v16 = sub_1000F4E08(v29, v15, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

  if (v16)
  {
    v17 = qword_1007A84C0;
    swift_beginAccess();
    (*(v2 + 16))(v14, v16 + v17, v1);

    v18 = *(v2 + 56);
    v18(v14, 0, 1, v1);
  }

  else
  {
    v18 = *(v2 + 56);
    v18(v14, 1, 1, v1);
  }

  (*(v2 + 104))(v11, enum case for TTRITreeViewExpandedState.expanded(_:), v1);
  v18(v11, 0, 1, v1);
  v19 = *(v4 + 48);
  sub_10000794C(v14, v6, &qword_10076B9C0);
  sub_10000794C(v11, &v6[v19], &qword_10076B9C0);
  v20 = *(v2 + 48);
  if (v20(v6, 1, v1) != 1)
  {
    v22 = v28;
    sub_10000794C(v6, v28, &qword_10076B9C0);
    if (v20(&v6[v19], 1, v1) != 1)
    {
      v23 = v27;
      (*(v2 + 32))(v27, &v6[v19], v1);
      sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
      v24 = v22;
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v2 + 8);
      v25(v23, v1);
      sub_1000079B4(v11, &qword_10076B9C0);
      sub_1000079B4(v14, &qword_10076B9C0);
      v25(v24, v1);
      sub_1000079B4(v6, &qword_10076B9C0);
      return v21 & 1;
    }

    sub_1000079B4(v11, &qword_10076B9C0);
    sub_1000079B4(v14, &qword_10076B9C0);
    (*(v2 + 8))(v22, v1);
    goto LABEL_9;
  }

  sub_1000079B4(v11, &qword_10076B9C0);
  sub_1000079B4(v14, &qword_10076B9C0);
  if (v20(&v6[v19], 1, v1) != 1)
  {
LABEL_9:
    sub_1000079B4(v6, &unk_100771B50);
    v21 = 0;
    return v21 & 1;
  }

  sub_1000079B4(v6, &qword_10076B9C0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1000CB2F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - v7;
  v76 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v78 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = qword_100771788;
  *(v3 + qword_100771788) = 0;
  v14 = (v3 + qword_100771778);
  swift_beginAccess();
  v15 = *v14;
  v81 = a2;
  v82 = v15;
  v80 = a1;

  sub_100058000(&unk_10076B8A0);
  sub_10000E188(&qword_10078D4F0, &unk_10076B8A0);
  sub_1001013F4(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v79 = v11;
  v16 = v8;
  v17 = Sequence.compactMapToSet<A>(_:)();

  v14[1] = v17;

  v19 = 0;
  v21 = v17 + 56;
  v20 = *(v17 + 56);
  v77 = v17;
  v22 = 1 << *(v17 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v74 = v12 + 16;
  v60 = (v9 + 16);
  v75 = v12;
  v72 = (v12 + 8);
  v73 = (v9 + 56);
  v71 = (v9 + 48);
  v69 = (v9 + 32);
  v68 = (v9 + 8);
  v65 = v3;
  v64 = v16;
  if ((v23 & v20) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v28 = v78;
  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      *(v3 + v62) = 1;
      return result;
    }

    v24 = *(v21 + 8 * v27);
    ++v19;
    if (v24)
    {
      while (1)
      {
        (*(v75 + 16))(v28, *(v77 + 48) + *(v75 + 72) * (__clz(__rbit64(v24)) | (v27 << 6)), v79);
        v29 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
        v31 = v30;
        v33 = v32;
        if (!*(v30 + 16))
        {
          break;
        }

        v34 = sub_1003AB730(v28);
        if ((v35 & 1) == 0)
        {
          break;
        }

        v67 = v29;
        v36 = *(*(v31 + 56) + 8 * v34);
        v66 = v36 & 0xC000000000000001;
        if ((v36 & 0xC000000000000001) != 0)
        {
          v37 = __CocoaSet.startIndex.getter();
          v63 = v33;
          v39 = v38;
          v40 = __CocoaSet.endIndex.getter();
          v42 = v41;
          LODWORD(v61) = static __CocoaSet.Index.== infix(_:_:)();

          v43 = v42;
          v44 = v39;
          sub_10000FBA0(v40, v43, 1);
          if (v61)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v45 = 0;
          v46 = (v36 + 56);
          v37 = 1 << *(v36 + 32);
          v47 = (v37 + 63) >> 6;
          while (1)
          {
            v49 = *v46++;
            v48 = v49;
            if (v49)
            {
              break;
            }

            v45 -= 64;
            if (!--v47)
            {
              v44 = *(v36 + 36);

              goto LABEL_23;
            }
          }

          v63 = v33;
          v50 = __clz(__rbit64(v48));
          v61 = v37;
          v51 = *(v36 + 36);

          if (v50 - v37 == v45)
          {
            v37 = v61;
            v44 = v51;
LABEL_23:
            sub_10000FBA0(v37, v44, v66 != 0);

            v3 = v65;
            v16 = v64;
            v28 = v78;
LABEL_24:

            v52 = 1;
            v53 = v76;
            goto LABEL_25;
          }

          v37 = v50 - v45;
          v44 = v51;
        }

        v54 = v66 != 0;
        v55 = sub_10057E9A0(v37, v44, v66 != 0, v36);
        v56 = v44;
        v57 = v55;
        sub_10000FBA0(v37, v56, v54);

        v58 = *(*v57 + 144);
        swift_beginAccess();
        v59 = v57 + v58;
        v16 = v64;
        v53 = v76;
        (*v60)(v64, v59, v76);

        v52 = 0;
        v3 = v65;
        v28 = v78;
LABEL_25:
        v24 &= v24 - 1;
        (*v73)(v16, v52, 1, v53);
        (*v72)(v28, v79);
        if ((*v71)(v16, 1, v53) == 1)
        {
          result = sub_1000079B4(v16, &unk_100771B40);
          v19 = v27;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v26 = v70;
          (*v69)(v70, v16, v53);
          sub_1000F4FD4(v26, 5);
          result = (*v68)(v26, v53);
          v19 = v27;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v27 = v19;
        v28 = v78;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CBA8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - v7;
  v76 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v78 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = qword_100771788;
  *(v3 + qword_100771788) = 0;
  v14 = (v3 + qword_100771778);
  swift_beginAccess();
  v15 = *v14;
  v81 = a2;
  v82 = v15;
  v80 = a1;

  sub_100058000(&unk_10076BBD0);
  sub_10000E188(&unk_100772700, &unk_10076BBD0);
  sub_1001013F4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v79 = v11;
  v16 = v8;
  v17 = Sequence.compactMapToSet<A>(_:)();

  v14[1] = v17;

  v19 = 0;
  v21 = v17 + 56;
  v20 = *(v17 + 56);
  v77 = v17;
  v22 = 1 << *(v17 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v74 = v12 + 16;
  v60 = (v9 + 16);
  v75 = v12;
  v72 = (v12 + 8);
  v73 = (v9 + 56);
  v71 = (v9 + 48);
  v69 = (v9 + 32);
  v68 = (v9 + 8);
  v65 = v3;
  v64 = v16;
  if ((v23 & v20) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v28 = v78;
  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      *(v3 + v62) = 1;
      return result;
    }

    v24 = *(v21 + 8 * v27);
    ++v19;
    if (v24)
    {
      while (1)
      {
        (*(v75 + 16))(v28, *(v77 + 48) + *(v75 + 72) * (__clz(__rbit64(v24)) | (v27 << 6)), v79);
        v29 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
        v31 = v30;
        v33 = v32;
        if (!*(v30 + 16))
        {
          break;
        }

        v34 = sub_1003AB294(v28);
        if ((v35 & 1) == 0)
        {
          break;
        }

        v67 = v29;
        v36 = *(*(v31 + 56) + 8 * v34);
        v66 = v36 & 0xC000000000000001;
        if ((v36 & 0xC000000000000001) != 0)
        {
          v37 = __CocoaSet.startIndex.getter();
          v63 = v33;
          v39 = v38;
          v40 = __CocoaSet.endIndex.getter();
          v42 = v41;
          LODWORD(v61) = static __CocoaSet.Index.== infix(_:_:)();

          v43 = v42;
          v44 = v39;
          sub_10000FBA0(v40, v43, 1);
          if (v61)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v45 = 0;
          v46 = (v36 + 56);
          v37 = 1 << *(v36 + 32);
          v47 = (v37 + 63) >> 6;
          while (1)
          {
            v49 = *v46++;
            v48 = v49;
            if (v49)
            {
              break;
            }

            v45 -= 64;
            if (!--v47)
            {
              v44 = *(v36 + 36);

              goto LABEL_23;
            }
          }

          v63 = v33;
          v50 = __clz(__rbit64(v48));
          v61 = v37;
          v51 = *(v36 + 36);

          if (v50 - v37 == v45)
          {
            v37 = v61;
            v44 = v51;
LABEL_23:
            sub_10000FBA0(v37, v44, v66 != 0);

            v3 = v65;
            v16 = v64;
            v28 = v78;
LABEL_24:

            v52 = 1;
            v53 = v76;
            goto LABEL_25;
          }

          v37 = v50 - v45;
          v44 = v51;
        }

        v54 = v66 != 0;
        v55 = sub_10057E700(v37, v44, v66 != 0, v36);
        v56 = v44;
        v57 = v55;
        sub_10000FBA0(v37, v56, v54);

        v58 = *(*v57 + 144);
        swift_beginAccess();
        v59 = v57 + v58;
        v16 = v64;
        v53 = v76;
        (*v60)(v64, v59, v76);

        v52 = 0;
        v3 = v65;
        v28 = v78;
LABEL_25:
        v24 &= v24 - 1;
        (*v73)(v16, v52, 1, v53);
        (*v72)(v28, v79);
        if ((*v71)(v16, 1, v53) == 1)
        {
          result = sub_1000079B4(v16, &qword_100772140);
          v19 = v27;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v26 = v70;
          (*v69)(v70, v16, v53);
          sub_1000FEE34(v26, 5);
          result = (*v68)(v26, v53);
          v19 = v27;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v27 = v19;
        v28 = v78;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CC228@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2();
  v8 = a3(0);
  v9 = *(v8 - 8);
  if (v7)
  {
    (*(*(v8 - 8) + 16))(a4, a1, v8);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v9 + 56))(a4, v10, 1, v8);
}

uint64_t sub_1000CC2FC()
{
  v66 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v1 = *(v66 - 8);
  v2 = __chkstk_darwin(v66);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v64 = &v60 - v4;
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = qword_100771788;
  *(v0 + qword_100771788) = 0;
  v78 = v0;
  v9 = v0 + qword_100771778;
  swift_beginAccess();
  v10 = *(v9 + 8);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_10057DB48(v10);
  *(v9 + 8) = &_swiftEmptySetSingleton;
  swift_endAccess();

  v12 = 0;
  v14 = v10 + 56;
  v13 = *(v10 + 56);
  v77 = v10;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v73 = (v6 + 8);
  v74 = v6 + 16;
  v63 = (v1 + 16);
  v62 = (v1 + 32);
  v61 = (v1 + 8);
  v71 = v6;
  v72 = v5;
  v75 = v8;
  if ((v16 & v13) != 0)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v21 = v5;
        (*(v6 + 16))(v8, *(v77 + 48) + *(v6 + 72) * (v20 | (v12 << 6)), v5);
        v22 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
        v24 = v23;
        v26 = v25;
        if (*(v23 + 16))
        {
          v76 = v22;
          v27 = sub_1003AB730(v8);
          if (v28)
          {
            break;
          }
        }

LABEL_6:

        v8 = v75;
        v5 = v21;
        result = (*v73)(v75, v21);
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      v29 = *(*(v24 + 56) + 8 * v27);
      v30 = v29 & 0xC000000000000001;
      if ((v29 & 0xC000000000000001) != 0)
      {
        break;
      }

      v40 = 0;
      v41 = (v29 + 56);
      v42 = 1 << *(v29 + 32);
      v43 = (v42 + 63) >> 6;
      while (1)
      {
        v45 = *v41++;
        v44 = v45;
        if (v45)
        {
          break;
        }

        v40 -= 64;
        if (!--v43)
        {
          v34 = *(v29 + 36);
          v46 = 1 << *(v29 + 32);

          v39 = v46;
          v21 = v72;
          goto LABEL_23;
        }
      }

      v69 = v26;
      v70 = v29 & 0xC000000000000001;
      v47 = __clz(__rbit64(v44));
      v67 = v42;
      v48 = v47 - v42;
      v49 = *(v29 + 36);

      if (v48 == v40)
      {
        v21 = v72;
        v39 = v67;
        v34 = v49;
        v30 = v70;
LABEL_23:
        sub_10000FBA0(v39, v34, v30 != 0);

        v6 = v71;
        goto LABEL_6;
      }

      v39 = v47 - v40;
      v34 = v49;
      v30 = v70;
LABEL_25:
      v50 = v30 != 0;
      v51 = v39;
      v52 = sub_10057E9A0(v39, v34, v50, v29);
      v53 = v34;
      v54 = v52;
      sub_10000FBA0(v51, v53, v50);

      v5 = v72;
      v8 = v75;
      (*v73)(v75, v72);
      v55 = *(*v54 + 144);
      swift_beginAccess();
      v56 = v54 + v55;
      v57 = v65;
      v58 = v66;
      (*v63)(v65, v56, v66);

      v59 = v64;
      (*v62)(v64, v57, v58);
      sub_1000F578C(v59, 5);
      result = (*v61)(v59, v58);
      v6 = v71;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    v31 = __CocoaSet.startIndex.getter();
    v69 = v26;
    v32 = v31;
    v34 = v33;
    v35 = __CocoaSet.endIndex.getter();
    v70 = v29 & 0xC000000000000001;
    v37 = v36;
    LODWORD(v67) = static __CocoaSet.Index.== infix(_:_:)();

    v38 = v37;
    v30 = v70;
    sub_10000FBA0(v35, v38, 1);
    v39 = v32;
    v21 = v72;
    if ((v67 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_7:
  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      *(v78 + v68) = 1;
      return result;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CC908()
{
  v66 = type metadata accessor for TTRRemindersListViewModel.Item();
  v1 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v64 = &v60 - v4;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = qword_100771788;
  *(v0 + qword_100771788) = 0;
  v78 = v0;
  v9 = v0 + qword_100771778;
  swift_beginAccess();
  v10 = *(v9 + 8);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_10057DB74(v10);
  *(v9 + 8) = &_swiftEmptySetSingleton;
  swift_endAccess();

  v12 = 0;
  v14 = v10 + 56;
  v13 = *(v10 + 56);
  v77 = v10;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v73 = (v6 + 8);
  v74 = v6 + 16;
  v63 = (v1 + 16);
  v62 = (v1 + 32);
  v61 = (v1 + 8);
  v71 = v6;
  v72 = v5;
  v75 = v8;
  if ((v16 & v13) != 0)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v21 = v5;
        (*(v6 + 16))(v8, *(v77 + 48) + *(v6 + 72) * (v20 | (v12 << 6)), v5);
        v22 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
        v24 = v23;
        v26 = v25;
        if (*(v23 + 16))
        {
          v76 = v22;
          v27 = sub_1003AB294(v8);
          if (v28)
          {
            break;
          }
        }

LABEL_6:

        v8 = v75;
        v5 = v21;
        result = (*v73)(v75, v21);
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      v29 = *(*(v24 + 56) + 8 * v27);
      v30 = v29 & 0xC000000000000001;
      if ((v29 & 0xC000000000000001) != 0)
      {
        break;
      }

      v40 = 0;
      v41 = (v29 + 56);
      v42 = 1 << *(v29 + 32);
      v43 = (v42 + 63) >> 6;
      while (1)
      {
        v45 = *v41++;
        v44 = v45;
        if (v45)
        {
          break;
        }

        v40 -= 64;
        if (!--v43)
        {
          v34 = *(v29 + 36);
          v46 = 1 << *(v29 + 32);

          v39 = v46;
          v21 = v72;
          goto LABEL_23;
        }
      }

      v69 = v26;
      v70 = v29 & 0xC000000000000001;
      v47 = __clz(__rbit64(v44));
      v67 = v42;
      v48 = v47 - v42;
      v49 = *(v29 + 36);

      if (v48 == v40)
      {
        v21 = v72;
        v39 = v67;
        v34 = v49;
        v30 = v70;
LABEL_23:
        sub_10000FBA0(v39, v34, v30 != 0);

        v6 = v71;
        goto LABEL_6;
      }

      v39 = v47 - v40;
      v34 = v49;
      v30 = v70;
LABEL_25:
      v50 = v30 != 0;
      v51 = v39;
      v52 = sub_10057E700(v39, v34, v50, v29);
      v53 = v34;
      v54 = v52;
      sub_10000FBA0(v51, v53, v50);

      v5 = v72;
      v8 = v75;
      (*v73)(v75, v72);
      v55 = *(*v54 + 144);
      swift_beginAccess();
      v56 = v54 + v55;
      v57 = v65;
      v58 = v66;
      (*v63)(v65, v56, v66);

      v59 = v64;
      (*v62)(v64, v57, v58);
      sub_1000FF900(v59, 5);
      result = (*v61)(v59, v58);
      v6 = v71;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    v31 = __CocoaSet.startIndex.getter();
    v69 = v26;
    v32 = v31;
    v34 = v33;
    v35 = __CocoaSet.endIndex.getter();
    v70 = v29 & 0xC000000000000001;
    v37 = v36;
    LODWORD(v67) = static __CocoaSet.Index.== infix(_:_:)();

    v38 = v37;
    v30 = v70;
    sub_10000FBA0(v35, v38, 1);
    v39 = v32;
    v21 = v72;
    if ((v67 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_7:
  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      *(v78 + v68) = 1;
      return result;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CCF14(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61 = qword_100771770;
  v11 = *(v6 + qword_100771770);
  if (!v11)
  {
    v12 = sub_1000E236C(v6, a3);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = *(v6 + qword_100771770);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  swift_beginAccess();
  v14 = *(v12 + 64);

  sub_10003BE34(a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 64) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100547070(0, v14[2] + 1, 1, v14);
    *(v12 + 64) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100547070((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_1001014C8;
  v18[5] = v13;
  *(v12 + 64) = v14;
  swift_endAccess();
LABEL_10:
  a1(v12);
  if (!v11)
  {
    if (*(v12 + 72))
    {

LABEL_27:
      *&v7[v61] = 0;
    }

    swift_beginAccess();
    if (!*(*(v12 + 80) + 16) && !*(*(v12 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v12 + 96) + 16))
      {
        sub_10000B0D8(v6 + qword_100771738, &v65);
        v56 = *(&v66 + 1);
        v57 = v67;
        sub_10000C36C(&v65, *(&v66 + 1));
        (*(v57 + 24))(v56, v57);

        v54 = &v65;
LABEL_26:
        sub_100004758(v54);
        goto LABEL_27;
      }
    }

    v20 = *(v12 + 48);
    v19 = *(v12 + 56);
    v21 = (v6 + qword_100771778);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];

    if (sub_1000E8AD0(v20, v22))
    {
      v24 = sub_1000E8AD0(v19, v23);

      if (v24)
      {
LABEL_21:
        __chkstk_darwin(v25);
        v26 = swift_beginAccess();
        __chkstk_darwin(v26);
        sub_100058000(&unk_10076BBD0);
        Set.removeAll(where:)();
        swift_endAccess();
        v27 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
        v29 = v28;
        v31 = v30;
        v33 = v32;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v35 = _typeName(_:qualified:)();
        sub_1000ABD78(v27, v29, v31, v33 & 1, v35, v36, &v65);

        v60 = v71;
        v73 = v70;
        v72[2] = v67;
        v72[3] = v68;
        v72[4] = v69;
        v72[0] = v65;
        v72[1] = v66;
        v37 = *&v7[qword_100771748];
        if (v37 && (v38 = *(v37 + 16), v39 = , v40 = v38(v39), , (v40 & 1) != 0))
        {
          v41 = swift_allocObject();
          *(v41 + 16) = v7;
          *(v41 + 24) = v12;
          v59 = v41;
          v42 = v7;

          v43 = sub_1001009D8;
        }

        else
        {
          v43 = 0;
          v59 = 0;
        }

        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v58 = qword_100771738;
        sub_10000B0D8(&v7[qword_100771738], v62);
        v46 = v63;
        v45 = v64;
        sub_10000C36C(v62, v63);
        v47 = *(v45 + 32);

        v47(v72, sub_100100944, v44, v43, v59, sub_1001014D4, v12, v46, v45);
        sub_10008B800(&v65);

        sub_100004758(v62);
        v48 = *(v12 + 16);
        v49 = *(v12 + 24);
        v50 = *(v12 + 32);
        v51 = *(v12 + 40);

        sub_1000E42AC(v60, v48, v49, v50, v51);

        sub_10000B0D8(&v7[v58], v62);
        v52 = v63;
        v53 = v64;
        sub_10000C36C(v62, v63);
        (*(v53 + 24))(v52, v53);

        sub_1000301AC(v43);

        v54 = v62;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }
}

uint64_t sub_1000CD5E4(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61 = qword_100771770;
  v11 = *(v6 + qword_100771770);
  if (!v11)
  {
    v12 = sub_1000E2540(v6, a3);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = *(v6 + qword_100771770);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  swift_beginAccess();
  v14 = *(v12 + 64);

  sub_10003BE34(a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 64) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100547070(0, v14[2] + 1, 1, v14);
    *(v12 + 64) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100547070((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_1000FD788;
  v18[5] = v13;
  *(v12 + 64) = v14;
  swift_endAccess();
LABEL_10:
  a1(v12);
  if (!v11)
  {
    if (*(v12 + 72))
    {

LABEL_27:
      *&v7[v61] = 0;
    }

    swift_beginAccess();
    if (!*(*(v12 + 80) + 16) && !*(*(v12 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v12 + 96) + 16))
      {
        sub_10000B0D8(v6 + qword_100771738, &v65);
        v56 = *(&v66 + 1);
        v57 = v67;
        sub_10000C36C(&v65, *(&v66 + 1));
        (*(v57 + 24))(v56, v57);

        v54 = &v65;
LABEL_26:
        sub_100004758(v54);
        goto LABEL_27;
      }
    }

    v20 = *(v12 + 48);
    v19 = *(v12 + 56);
    v21 = (v6 + qword_100771778);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];

    if (sub_1000E9230(v20, v22))
    {
      v24 = sub_1000E9230(v19, v23);

      if (v24)
      {
LABEL_21:
        __chkstk_darwin(v25);
        v26 = swift_beginAccess();
        __chkstk_darwin(v26);
        sub_100058000(&unk_10076B8A0);
        Set.removeAll(where:)();
        swift_endAccess();
        v27 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
        v29 = v28;
        v31 = v30;
        v33 = v32;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v35 = _typeName(_:qualified:)();
        sub_1000AC9F0(v27, v29, v31, v33 & 1, v35, v36, &v65);

        v60 = v71;
        v73 = v70;
        v72[2] = v67;
        v72[3] = v68;
        v72[4] = v69;
        v72[0] = v65;
        v72[1] = v66;
        v37 = *&v7[qword_100771748];
        if (v37 && (v38 = *(v37 + 16), v39 = , v40 = v38(v39), , (v40 & 1) != 0))
        {
          v41 = swift_allocObject();
          *(v41 + 16) = v7;
          *(v41 + 24) = v12;
          v59 = v41;
          v42 = v7;

          v43 = sub_1000FD780;
        }

        else
        {
          v43 = 0;
          v59 = 0;
        }

        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v58 = qword_100771738;
        sub_10000B0D8(&v7[qword_100771738], v62);
        v46 = v63;
        v45 = v64;
        sub_10000C36C(v62, v63);
        v47 = *(v45 + 32);

        v47(v72, sub_1000FD710, v44, v43, v59, sub_1000FD764, v12, v46, v45);
        sub_10008B800(&v65);

        sub_100004758(v62);
        v48 = *(v12 + 16);
        v49 = *(v12 + 24);
        v50 = *(v12 + 32);
        v51 = *(v12 + 40);

        sub_1000E45EC(v60, v48, v49, v50, v51);

        sub_10000B0D8(&v7[v58], v62);
        v52 = v63;
        v53 = v64;
        sub_10000C36C(v62, v63);
        (*(v53 + 24))(v52, v53);

        sub_1000301AC(v43);

        v54 = v62;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }
}

uint64_t sub_1000CDCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v19 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *(&v19 + 1) = v10;
  v20 = v11;
  v21 = v12 & 1;
  v13 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  sub_1000CDE9C(a3, a4, a5, a1, &v19);
  v14 = v20;
  v15 = v21;
  v16 = a2 + qword_100771760;
  v17 = *(a2 + qword_100771760);
  *v16 = v19;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  result = sub_100100898(v17);
  *(a2 + v13) = 0;
  return result;
}

uint64_t sub_1000CDDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v19 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *(&v19 + 1) = v10;
  v20 = v11;
  v21 = v12 & 1;
  v13 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  sub_1000CEB10(a3, a4, a5, a1, &v19);
  v14 = v20;
  v15 = v21;
  v16 = a2 + qword_100771760;
  v17 = *(a2 + qword_100771760);
  *v16 = v19;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  result = sub_100100898(v17);
  *(a2 + v13) = 0;
  return result;
}

uint64_t sub_1000CDE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v6 = v5;
  v94 = a2;
  v95 = a5;
  v86 = a3;
  v87 = a4;
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v89 = v75 - v9;
  v97 = type metadata accessor for TTRRemindersListViewModel.Item();
  v82 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for IndexSet.Index();
  v80 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BA18);
  __chkstk_darwin(v12);
  v14 = v75 - v13;
  v15 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v15 - 8);
  v84 = v75 - v16;
  v17 = type metadata accessor for IndexPath();
  v85 = *(v17 - 8);
  __chkstk_darwin(v17);
  v88 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v92 = v75 - v20;
  v21 = type metadata accessor for TTRITreeViewExpandedState();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v75 - v26;
  v81 = a1;
  result = IndexSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v29 = *(v6 + qword_100771740);
    if (v29)
    {
      v93 = v17;
      v30 = *(v29 + 16);

      if ((v30(v31) & 1) == 0 || (v83 = v29, v79 = v6, sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C), v33 = sub_1000F4E08(v94, v32, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700), , , , !v33))
      {
      }

      v34 = qword_1007A84C0;
      swift_beginAccess();
      (*(v22 + 16))(v27, v33 + v34, v21);
      (*(v22 + 104))(v24, enum case for TTRITreeViewExpandedState.expanded(_:), v21);
      LOBYTE(v34) = static TTRITreeViewExpandedState.== infix(_:_:)();
      v35 = *(v22 + 8);
      v35(v24, v21);
      v35(v27, v21);
      if ((v34 & 1) == 0)
      {
      }

      v36 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      v38 = v84;
      sub_1000C7C38(v33, v36, v39, v40, v37 & 1, sub_1003B3EDC, sub_1000C73C4, v84);

      v41 = v85;
      v42 = v93;
      if ((v85[6])(v38, 1, v93) == 1)
      {
        sub_1000079B4(v38, &unk_100771B10);
        if (qword_100766FC8 == -1)
        {
LABEL_8:
          v43 = type metadata accessor for Logger();
          sub_100003E30(v43, qword_1007716F0);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "Unable to find childrenStartIndexPath", v46, 2u);
          }
        }
      }

      else
      {
        v78 = v33;
        v48 = v41[4];
        v47 = v41 + 4;
        (v48)(v92, v38, v42);
        IndexSet.makeIterator()();
        v49 = *(v12 + 36);
        v81 = qword_100771728;
        v50 = type metadata accessor for IndexSet();
        sub_1001013F4(&qword_10076BA20, &type metadata accessor for IndexSet);
        v85 = (v80 + 1);
        v80 = (v82 + 2);
        v77 = (v82 + 7);
        v76 = (v47 - 2);
        v84 = (v47 - 3);
        ++v82;
        v75[1] = v49;
        while (1)
        {
          v51 = v90;
          dispatch thunk of Collection.endIndex.getter();
          sub_1001013F4(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
          v52 = v91;
          v53 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v85)(v51, v52);
          if (v53)
          {
            goto LABEL_24;
          }

          v54 = dispatch thunk of Collection.subscript.read();
          v56 = *v55;
          v54(v98, 0);
          v57 = v14;
          v14 = v50;
          dispatch thunk of Collection.formIndex(after:)();
          Strong = swift_unknownObjectUnownedLoadStrong();
          v59 = v89;
          v60 = v97;
          (*v80)(v89, v94, v97);
          (*v77)(v59, 0, 1, v60);
          v61 = v96;
          (*(v83 + 48))(Strong, v56, v59);

          sub_1000079B4(v59, &qword_100772140);
          sub_100058000(&unk_10076BBA0);
          swift_allocObject();
          v62 = v78;

          v63 = sub_1000F4C70(_swiftEmptyArrayStorage, sub_1000E821C);
          v64 = sub_1000D0798(v61, v62, v63);

          v65 = sub_1000D7B88(v64, v56, sub_10023C598, &qword_10076BB78, &unk_10062FDD0, sub_100101534);
          v67 = v66;
          v68 = v88;
          (*v76)(v88, v92, v93);
          v69 = IndexPath.row.modify();
          if (__OFADD__(*v70, v67))
          {
            break;
          }

          *v70 += v67;
          v69(v98, 0);
          v71 = IndexPath.section.getter();

          v72 = IndexPath.row.getter();
          v73 = *v95;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v71 & 0x8000000000000000) != 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v73 = sub_1003B2E94(v73);
            if ((v71 & 0x8000000000000000) != 0)
            {
LABEL_23:
              __break(1u);
LABEL_24:

              sub_1000079B4(v14, &qword_10076BA18);
              return (*v84)(v92, v93);
            }
          }

          if (v71 >= v73[2])
          {
            goto LABEL_27;
          }

          sub_1000FF698(v72, v72, v65, &qword_10076BB78, &unk_10062FDD0, sub_1001009E0, sub_1003B3EE4);

          *v95 = v73;
          v74 = IndexPath.section.getter();
          sub_1000C4C10(v65, v74);
          sub_1000AB0F8(v65, 0, v86, 0);

          (*v84)(v68, v93);
          (*v82)(v96, v97);
          v50 = v14;
          v14 = v57;
        }

        __break(1u);
LABEL_27:
        __break(1u);
      }

      swift_once();
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CEB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v6 = v5;
  v94 = a2;
  v95 = a5;
  v86 = a3;
  v87 = a4;
  v8 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v8 - 8);
  v89 = v75 - v9;
  v97 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v82 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for IndexSet.Index();
  v80 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BA18);
  __chkstk_darwin(v12);
  v14 = v75 - v13;
  v15 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v15 - 8);
  v84 = v75 - v16;
  v17 = type metadata accessor for IndexPath();
  v85 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v88 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = v75 - v20;
  v21 = type metadata accessor for TTRITreeViewExpandedState();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v75 - v26;
  v81 = a1;
  result = IndexSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v29 = *(v6 + qword_100771740);
    if (v29)
    {
      v93 = v17;
      v30 = *(v29 + 16);

      if ((v30(v31) & 1) == 0 || (v83 = v29, v79 = v6, sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68), v33 = sub_1000F4E08(v94, v32, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0), , , , !v33))
      {
      }

      v34 = qword_1007A84C0;
      swift_beginAccess();
      (*(v22 + 16))(v27, v33 + v34, v21);
      (*(v22 + 104))(v25, enum case for TTRITreeViewExpandedState.expanded(_:), v21);
      LOBYTE(v34) = static TTRITreeViewExpandedState.== infix(_:_:)();
      v35 = *(v22 + 8);
      v35(v25, v21);
      v35(v27, v21);
      if ((v34 & 1) == 0)
      {
      }

      v36 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v38 = v84;
      sub_1000C7C38(v33, v36, v39, v40, v37 & 1, sub_1003B3EDC, sub_1000C77E8, v84);

      v41 = v85;
      v42 = v93;
      if ((v85[6])(v38, 1, v93) == 1)
      {
        sub_1000079B4(v38, &unk_100771B10);
        if (qword_100766FC8 == -1)
        {
LABEL_8:
          v43 = type metadata accessor for Logger();
          sub_100003E30(v43, qword_1007716F0);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "Unable to find childrenStartIndexPath", v46, 2u);
          }
        }
      }

      else
      {
        v78 = v33;
        v48 = v41[4];
        v47 = v41 + 4;
        (v48)(v92, v38, v42);
        IndexSet.makeIterator()();
        v49 = *(v12 + 36);
        v81 = qword_100771728;
        v50 = type metadata accessor for IndexSet();
        sub_1001013F4(&qword_10076BA20, &type metadata accessor for IndexSet);
        v85 = (v80 + 1);
        v80 = (v82 + 2);
        v77 = (v82 + 7);
        v76 = (v47 - 2);
        v84 = (v47 - 3);
        ++v82;
        v75[1] = v49;
        while (1)
        {
          v51 = v90;
          dispatch thunk of Collection.endIndex.getter();
          sub_1001013F4(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
          v52 = v91;
          v53 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v85)(v51, v52);
          if (v53)
          {
            goto LABEL_24;
          }

          v54 = dispatch thunk of Collection.subscript.read();
          v56 = *v55;
          v54(v98, 0);
          v57 = v14;
          v14 = v50;
          dispatch thunk of Collection.formIndex(after:)();
          Strong = swift_unknownObjectUnownedLoadStrong();
          v59 = v89;
          v60 = v97;
          (*v80)(v89, v94, v97);
          (*v77)(v59, 0, 1, v60);
          v61 = v96;
          (*(v83 + 48))(Strong, v56, v59);

          sub_1000079B4(v59, &unk_100771B40);
          sub_100058000(&unk_10076B770);
          swift_allocObject();
          v62 = v78;

          v63 = sub_1000F4C70(&_swiftEmptyArrayStorage, sub_1000E8430);
          v64 = sub_1000D0BC8(v61, v62, v63);

          v65 = sub_1000D7B88(v64, v56, sub_10023C598, &qword_10076B788, &unk_10062FB80, sub_100101534);
          v67 = v66;
          v68 = v88;
          (*v76)(v88, v92, v93);
          v69 = IndexPath.row.modify();
          if (__OFADD__(*v70, v67))
          {
            break;
          }

          *v70 += v67;
          v69(v98, 0);
          v71 = IndexPath.section.getter();

          v72 = IndexPath.row.getter();
          v73 = *v95;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v71 & 0x8000000000000000) != 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v73 = sub_1003B2EA8(v73);
            if ((v71 & 0x8000000000000000) != 0)
            {
LABEL_23:
              __break(1u);
LABEL_24:

              sub_1000079B4(v14, &qword_10076BA18);
              return (*v84)(v92, v93);
            }
          }

          if (v71 >= v73[2])
          {
            goto LABEL_27;
          }

          sub_1000FF698(v72, v72, v65, &qword_10076B788, &unk_10062FB80, sub_1000FF7D8, sub_1003B3EE4);

          *v95 = v73;
          v74 = IndexPath.section.getter();
          sub_1000C4FC8(v65, v74);
          sub_1000AB57C(v65, 0, v86, 0);

          (*v84)(v68, v93);
          (*v82)(v96, v97);
          v50 = v14;
          v14 = v57;
        }

        __break(1u);
LABEL_27:
        __break(1u);
      }

      swift_once();
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CF784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v61 = a4;
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v60 = &v52 - v8;
  v68 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for IndexSet.Index();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076BA18);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  *&v72 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *(&v72 + 1) = v17;
  v73 = v18;
  v74 = v19 & 1;
  v66 = a2;
  v53 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  IndexSet.makeIterator()();
  v63 = *(v14 + 44);
  v59 = qword_100771728;
  type metadata accessor for IndexSet();
  sub_1001013F4(&qword_10076BA20, &type metadata accessor for IndexSet);
  v62 = (v11 + 8);
  v58 = (v9 + 56);
  v56 = (v9 + 8);
  v55 = xmmword_10062D420;
  v54 = xmmword_10062D400;
  while (1)
  {
    v24 = v64;
    dispatch thunk of Collection.endIndex.getter();
    sub_1001013F4(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
    v25 = v65;
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v62)(v24, v25);
    if (v26)
    {
      sub_1000079B4(v16, &qword_10076BA18);
      v47 = v73;
      v48 = v74;
      v49 = v66;
      v50 = v66 + qword_100771760;
      v51 = *(v66 + qword_100771760);
      *v50 = v72;
      *(v50 + 16) = v47;
      *(v50 + 24) = v48;
      result = sub_100100898(v51);
      *(v49 + v53) = 0;
      return result;
    }

    v27 = dispatch thunk of Collection.subscript.read();
    v29 = *v28;
    v27(&v71, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Strong = swift_unknownObjectUnownedLoadStrong();
    v31 = v60;
    (*v58)(v60, 1, 1, v68);
    v32 = v67;
    (*(v61 + 48))(Strong, v29, v31);

    sub_1000079B4(v31, &qword_100772140);
    sub_100058000(&unk_10076BBA0);
    swift_allocObject();
    v33 = sub_1000F4C70(_swiftEmptyArrayStorage, sub_1000E821C);
    v34 = sub_1000D0798(v32, 0, v33);

    v70 = _swiftEmptyArrayStorage;
    result = sub_10003C8CC(&v70);
    v36 = v72;
    v37 = *(v72 + 16);
    if (v37 < v29)
    {
      break;
    }

    if (v29 < 0)
    {
      goto LABEL_15;
    }

    v38 = v70;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v37 >= v36[3] >> 1)
    {
      v36 = sub_10054704C(isUniquelyReferenced_nonNull_native, v37 + 1, 1, v36);
      *&v72 = v36;
    }

    sub_1000EDC58(v29, v29, 1, v34, v38, &qword_10076BBB0);
    *&v72 = v36;
    sub_1000C4308(v29, 1);
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = v55;
    *(inited + 32) = v34;

    sub_1000C4C10(inited, v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1000C4C10(v38, v29);
    swift_beginAccess();
    v41 = *(a1 + 80);
    if (*(v41 + 16) && (v42 = sub_1003B3EDC(v34), (v43 & 1) != 0))
    {
      v44 = (*(v41 + 56) + 16 * v42);
      v45 = *v44;
      v22 = v44[1];
      swift_endAccess();

      v46 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v45;
      sub_100126C90(v57, 0, v46);
      v21 = v71;
    }

    else
    {
      swift_endAccess();
      sub_100058000(qword_100769AC8);
      v20 = swift_initStackObject();
      *(v20 + 16) = v54;
      *(v20 + 32) = 0;
      *(v20 + 40) = v57;
      v21 = sub_100460B78(v20);
      swift_setDeallocating();
      v22 = 0;
    }

    swift_beginAccess();

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a1 + 80);
    *(a1 + 80) = 0x8000000000000000;
    sub_100126B44(v21, v22, v34, v23);

    *(a1 + 80) = v69;
    swift_endAccess();

    (*v56)(v67, v68);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000CFF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v61 = a4;
  v7 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v7 - 8);
  v60 = &v52 - v8;
  v68 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for IndexSet.Index();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076BA18);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  *&v72 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *(&v72 + 1) = v17;
  v73 = v18;
  v74 = v19 & 1;
  v66 = a2;
  v53 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  IndexSet.makeIterator()();
  v63 = *(v14 + 44);
  v59 = qword_100771728;
  type metadata accessor for IndexSet();
  sub_1001013F4(&qword_10076BA20, &type metadata accessor for IndexSet);
  v62 = (v11 + 8);
  v58 = (v9 + 56);
  v56 = (v9 + 8);
  v55 = xmmword_10062D420;
  v54 = xmmword_10062D400;
  while (1)
  {
    v24 = v64;
    dispatch thunk of Collection.endIndex.getter();
    sub_1001013F4(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
    v25 = v65;
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v62)(v24, v25);
    if (v26)
    {
      sub_1000079B4(v16, &qword_10076BA18);
      v47 = v73;
      v48 = v74;
      v49 = v66;
      v50 = v66 + qword_100771760;
      v51 = *(v66 + qword_100771760);
      *v50 = v72;
      *(v50 + 16) = v47;
      *(v50 + 24) = v48;
      result = sub_100100898(v51);
      *(v49 + v53) = 0;
      return result;
    }

    v27 = dispatch thunk of Collection.subscript.read();
    v29 = *v28;
    v27(&v71, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Strong = swift_unknownObjectUnownedLoadStrong();
    v31 = v60;
    (*v58)(v60, 1, 1, v68);
    v32 = v67;
    (*(v61 + 48))(Strong, v29, v31);

    sub_1000079B4(v31, &unk_100771B40);
    sub_100058000(&unk_10076B770);
    swift_allocObject();
    v33 = sub_1000F4C70(&_swiftEmptyArrayStorage, sub_1000E8430);
    v34 = sub_1000D0BC8(v32, 0, v33);

    v70 = &_swiftEmptyArrayStorage;
    result = sub_10003C8CC(&v70);
    v36 = v72;
    v37 = *(v72 + 16);
    if (v37 < v29)
    {
      break;
    }

    if (v29 < 0)
    {
      goto LABEL_15;
    }

    v38 = v70;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v37 >= v36[3] >> 1)
    {
      v36 = sub_100547654(isUniquelyReferenced_nonNull_native, v37 + 1, 1, v36);
      *&v72 = v36;
    }

    sub_1000EDC58(v29, v29, 1, v34, v38, &unk_10076B790);
    *&v72 = v36;
    sub_1000C478C(v29, 1);
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = v55;
    *(inited + 32) = v34;

    sub_1000C4FC8(inited, v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1000C4FC8(v38, v29);

    swift_beginAccess();
    v41 = *(a1 + 80);
    if (*(v41 + 16) && (v42 = sub_1003B3EDC(v34), (v43 & 1) != 0))
    {
      v44 = (*(v41 + 56) + 16 * v42);
      v45 = *v44;
      v22 = v44[1];
      swift_endAccess();

      v46 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v45;
      sub_100126C90(v57, 0, v46);
      v21 = v71;
    }

    else
    {
      swift_endAccess();
      sub_100058000(qword_100769AC8);
      v20 = swift_initStackObject();
      *(v20 + 16) = v54;
      *(v20 + 32) = 0;
      *(v20 + 40) = v57;
      v21 = sub_100460B78(v20);
      swift_setDeallocating();
      v22 = 0;
    }

    swift_beginAccess();

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a1 + 80);
    *(a1 + 80) = 0x8000000000000000;
    sub_100127484(v21, v22, v34, v23);

    *(a1 + 80) = v69;
    swift_endAccess();

    (*v56)(v67, v68);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1000D0798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRITreeViewExpandedState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v16.n128_f64[0] = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v38 = v3;
  v19 = *(v3 + qword_100771740);
  if (!v19)
  {
    goto LABEL_8;
  }

  v37 = a3;
  v20 = *(v19 + 16);

  if ((v20(v21) & 1) == 0)
  {

    a3 = v37;
    goto LABEL_8;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = (*(v19 + 64))(Strong, v40);

  a3 = v37;
  if ((v23 & 1) == 0)
  {
LABEL_8:
    v29 = *(v9 + 104);
    v29(v18, enum case for TTRITreeViewExpandedState.notExpandable(_:), v8, v16);
    goto LABEL_9;
  }

  v24 = (v38 + qword_100771778);
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  if ((sub_1000A9AF8(v7, v25) & 1) == 0)
  {

    (*(v36 + 8))(v7, v5);
    goto LABEL_14;
  }

  v27 = sub_1000A9AF8(v7, v26);

  (*(v36 + 8))(v7, v5);
  if (v27)
  {
LABEL_14:
    v28 = &enum case for TTRITreeViewExpandedState.expanded(_:);
    goto LABEL_15;
  }

  v28 = &enum case for TTRITreeViewExpandedState.collapsed(_:);
LABEL_15:
  a3 = v37;
  v29 = *(v9 + 104);
  (v29)(v14, *v28, v8);
  (*(v9 + 32))(v18, v14, v8);
LABEL_9:
  v30 = sub_1000E1F4C(v40, v39, v18, &type metadata accessor for TTRRemindersListViewModel.Item, &qword_10076BB78, &unk_10062FDD0, sub_1003B3ED8);
  (v29)(v11, enum case for TTRITreeViewExpandedState.expanded(_:), v8);
  v31 = static TTRITreeViewExpandedState.== infix(_:_:)();
  v32 = *(v9 + 8);
  v32(v11, v8);
  if (v31)
  {
    v33 = sub_1000C8CBC(v30, a3);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v32(v18, v8);
  swift_beginAccess();
  *(v30 + 64) = v33;

  return v30;
}

unint64_t sub_1000D0BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a1;
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRITreeViewExpandedState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - v14;
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v37 = v3;
  v18 = *(v3 + qword_100771740);
  if (!v18)
  {
    goto LABEL_8;
  }

  v36 = a3;
  v19 = *(v18 + 16);

  if ((v19(v20) & 1) == 0)
  {

    a3 = v36;
    goto LABEL_8;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v22 = (*(v18 + 64))(Strong, v39);

  a3 = v36;
  if ((v22 & 1) == 0)
  {
LABEL_8:
    v28 = *(v9 + 104);
    v28(v17, enum case for TTRITreeViewExpandedState.notExpandable(_:), v8);
    goto LABEL_9;
  }

  v23 = (v37 + qword_100771778);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  if ((sub_1000AA574(v7, v24) & 1) == 0)
  {

    (*(v35 + 8))(v7, v5);
    goto LABEL_14;
  }

  v26 = sub_1000AA574(v7, v25);

  (*(v35 + 8))(v7, v5);
  if (v26)
  {
LABEL_14:
    v27 = &enum case for TTRITreeViewExpandedState.expanded(_:);
    goto LABEL_15;
  }

  v27 = &enum case for TTRITreeViewExpandedState.collapsed(_:);
LABEL_15:
  a3 = v36;
  v28 = *(v9 + 104);
  v28(v15, *v27, v8);
  (*(v9 + 32))(v17, v15, v8);
LABEL_9:
  v29 = sub_1000E1F4C(v39, v38, v17, &type metadata accessor for TTRAccountsListsViewModel.Item, &qword_10076B788, &unk_10062FB80, sub_1003B3ED8);
  v28(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v8);
  v30 = static TTRITreeViewExpandedState.== infix(_:_:)();
  v31 = *(v9 + 8);
  v31(v12, v8);
  if (v30)
  {
    v32 = sub_1000C9088(v29, a3);
  }

  else
  {
    v32 = &_swiftEmptyArrayStorage;
  }

  v31(v17, v8);
  swift_beginAccess();
  *(v29 + 64) = v32;

  return v29;
}

uint64_t sub_1000D0FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v61 = &v56 - v6;
  v7 = type metadata accessor for IndexPath();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v16 - 8);
  v18 = &v56 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  result = IndexSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    sub_10000794C(a2, v18, &qword_100772140);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v24 = sub_1000079B4(v18, &qword_100772140);
      __chkstk_darwin(v24);
      v26 = v64;
      v25 = v65;
      *(&v56 - 4) = v66;
      *(&v56 - 3) = v26;
      *(&v56 - 2) = v25;
      return sub_1000CCF14(sub_100100A58, (&v56 - 6), 0, 0, 0, 0);
    }

    else
    {
      v59 = v10;
      (*(v20 + 32))(v22, v18, v19);
      sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      v28 = v19;
      v29 = v22;
      v30 = sub_1000F4E08(v22, v27, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

      if (v30)
      {
        v57 = v28;
        v58 = v29;
        v31 = v20;
        v32 = qword_1007A84C0;
        swift_beginAccess();
        v33 = v59;
        (*(v59 + 16))(v15, v30 + v32, v9);
        (*(v33 + 104))(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
        LOBYTE(v32) = static TTRITreeViewExpandedState.== infix(_:_:)();
        v34 = v30;
        v35 = *(v33 + 8);
        v35(v12, v9);
        v35(v15, v9);
        if (v32)
        {
          v36 = v66;
          v37 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
          v39 = v61;
          sub_1000C7C38(v30, v37, v40, v41, v38 & 1, sub_1003B3EDC, sub_1000C73C4, v61);

          v43 = v62;
          v42 = v63;
          v44 = (*(v62 + 48))(v39, 1, v63);
          v45 = v57;
          v46 = v58;
          if (v44 == 1)
          {
            sub_1000079B4(v39, &unk_100771B10);
            if (qword_100766FC8 != -1)
            {
              swift_once();
            }

            v47 = type metadata accessor for Logger();
            sub_100003E30(v47, qword_1007716F0);
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              *v50 = 0;
              _os_log_impl(&_mh_execute_header, v48, v49, "Unable to find childrenStartIndexPath", v50, 2u);
            }

            else
            {
            }

            return (*(v31 + 8))(v46, v45);
          }

          else
          {
            v51 = v34;
            v52 = v60;
            v53 = (*(v43 + 32))(v60, v39, v42);
            __chkstk_darwin(v53);
            v55 = v64;
            v54 = v65;
            *(&v56 - 6) = v36;
            *(&v56 - 5) = v55;
            *(&v56 - 4) = v51;
            *(&v56 - 3) = v52;
            *(&v56 - 2) = v54;
            sub_1000CCF14(sub_100100A64, (&v56 - 8), 0, 0, 0, 0);

            (*(v31 + 8))(v46, v45);
            return (*(v43 + 8))(v52, v42);
          }
        }

        else
        {
          (*(v20 + 8))(v58, v57);
        }
      }

      else
      {
        return (*(v20 + 8))(v29, v28);
      }
    }
  }

  return result;
}

uint64_t sub_1000D17B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v61 = &v56 - v6;
  v7 = type metadata accessor for IndexPath();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v16 - 8);
  v18 = &v56 - v17;
  v19 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  result = IndexSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    sub_10000794C(a2, v18, &unk_100771B40);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v24 = sub_1000079B4(v18, &unk_100771B40);
      __chkstk_darwin(v24);
      v26 = v64;
      v25 = v65;
      *(&v56 - 4) = v66;
      *(&v56 - 3) = v26;
      *(&v56 - 2) = v25;
      return sub_1000CD5E4(sub_100100080, (&v56 - 6), 0, 0, 0, 0);
    }

    else
    {
      v59 = v10;
      (*(v20 + 32))(v22, v18, v19);
      sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v28 = v19;
      v29 = v22;
      v30 = sub_1000F4E08(v22, v27, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

      if (v30)
      {
        v57 = v28;
        v58 = v29;
        v31 = v20;
        v32 = qword_1007A84C0;
        swift_beginAccess();
        v33 = v59;
        (*(v59 + 16))(v15, v30 + v32, v9);
        (*(v33 + 104))(v13, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
        LOBYTE(v32) = static TTRITreeViewExpandedState.== infix(_:_:)();
        v34 = v30;
        v35 = *(v33 + 8);
        v35(v13, v9);
        v35(v15, v9);
        if (v32)
        {
          v36 = v66;
          v37 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
          v39 = v61;
          sub_1000C7C38(v30, v37, v40, v41, v38 & 1, sub_1003B3EDC, sub_1000C77E8, v61);

          v43 = v62;
          v42 = v63;
          v44 = (*(v62 + 48))(v39, 1, v63);
          v45 = v57;
          v46 = v58;
          if (v44 == 1)
          {
            sub_1000079B4(v39, &unk_100771B10);
            if (qword_100766FC8 != -1)
            {
              swift_once();
            }

            v47 = type metadata accessor for Logger();
            sub_100003E30(v47, qword_1007716F0);
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              *v50 = 0;
              _os_log_impl(&_mh_execute_header, v48, v49, "Unable to find childrenStartIndexPath", v50, 2u);
            }

            else
            {
            }

            return (*(v31 + 8))(v46, v45);
          }

          else
          {
            v51 = v34;
            v52 = v60;
            v53 = (*(v43 + 32))(v60, v39, v42);
            __chkstk_darwin(v53);
            v55 = v64;
            v54 = v65;
            *(&v56 - 6) = v36;
            *(&v56 - 5) = v55;
            *(&v56 - 4) = v51;
            *(&v56 - 3) = v52;
            *(&v56 - 2) = v54;
            sub_1000CD5E4(sub_10010008C, (&v56 - 8), 0, 0, 0, 0);

            (*(v31 + 8))(v46, v45);
            return (*(v43 + 8))(v52, v42);
          }
        }

        else
        {
          (*(v20 + 8))(v58, v57);
        }
      }

      else
      {
        return (*(v20 + 8))(v29, v28);
      }
    }
  }

  return result;
}

uint64_t (*sub_1000D1F78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(char *, void)
{
  v73 = a6;
  v77 = a5;
  v76 = a4;
  v83 = a3;
  v72 = a1;
  v89 = type metadata accessor for TTRRemindersListViewModel.Item();
  v84 = *(v89 - 8);
  __chkstk_darwin(v89);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v10 - 8);
  v90 = &v64 - v11;
  v12 = type metadata accessor for IndexPath();
  v85 = *(v12 - 8);
  __chkstk_darwin(v12);
  v87 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for IndexSet.Index();
  v92 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_10076BA30);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_100058000(&qword_10076BA38);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v64 - v20;
  *&v94 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *(&v94 + 1) = v22;
  v95 = v23;
  v96 = v24 & 1;
  v64 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  v25 = type metadata accessor for IndexSet();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(v17, v83, v25);
  v27(v21, v17, v25);
  v28 = v21;
  v29 = *(v19 + 44);
  v30 = sub_1001013F4(&qword_10076BA20, &type metadata accessor for IndexSet);
  v79 = v29;
  dispatch thunk of Collection.endIndex.getter();
  v31 = *(v26 + 8);
  v80 = v25;
  v31(v17, v25);
  v78 = (v92 + 8);
  v92 = qword_100771778;
  v75 = (v85 + 16);
  v67 = (v84 + 16);
  v66 = (v84 + 8);
  v65 = (v86 + 8);
  v68 = (v85 + 8);
  v71 = v12;
  v70 = v28;
  v69 = v30;
  v91 = a2;
  while (1)
  {
    v32 = v81;
    dispatch thunk of Collection.startIndex.getter();
    sub_1001013F4(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
    v33 = v82;
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v78)(v32, v33);
    if (v34)
    {
      sub_1000079B4(v28, &qword_10076BA38);
      v60 = v95;
      v61 = v96;
      v62 = a2 + qword_100771760;
      v63 = *(a2 + qword_100771760);
      *v62 = v94;
      *(v62 + 16) = v60;
      *(v62 + 24) = v61;
      result = sub_100100898(v63);
      *(a2 + v64) = 0;
      return result;
    }

    sub_1001013F4(&qword_10076BA40, &type metadata accessor for IndexSet);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v35 = dispatch thunk of Collection.subscript.read();
    v37 = *v36;
    v35(v93, 0);
    v38 = sub_1000D31B0(v37, sub_10023C598, sub_10023C598, sub_1003B3ED8);
    v40 = v39;
    (*v75)(v87, v77, v12);
    result = IndexPath.row.modify();
    if (__OFADD__(*v42, v38))
    {
      break;
    }

    *v42 += v38;
    result = result(v93, 0);
    if (__OFSUB__(v40, v38))
    {
      goto LABEL_13;
    }

    v84 = sub_1000C5F2C(v87, v40 - v38);
    v86 = v43;
    v45 = v44;
    v47 = v46;
    result = swift_beginAccess();
    v83 = v47;
    v85 = v45;
    v50 = (v47 >> 1) - v45;
    v48 = v47 >> 1 == v45;
    v49 = (v47 >> 1) <= v45;
    v51 = v74;
    if (!v48)
    {
      if (v49)
      {
        goto LABEL_14;
      }

      v52 = (v86 + 8 * v85);
      v53 = v67;
      v54 = v66;
      v55 = v65;
      do
      {
        v56 = *v52++;
        v57 = *(*v56 + 144);
        swift_beginAccess();
        v58 = v89;
        (*v53)(v8, v56 + v57, v89);

        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        (*v54)(v8, v58);
        v59 = v90;
        sub_1000E992C(v51, v90);

        (*v55)(v51, v88);
        sub_1000079B4(v59, &unk_10076BB50);
        --v50;
      }

      while (v50);
    }

    swift_endAccess();
    sub_1000F2CA4(v86, v85, v83, 1, v73, 0);
    swift_unknownObjectRelease();
    v12 = v71;
    (*v68)(v87, v71);
    a2 = v91;
    v28 = v70;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t (*sub_1000D2894(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(char *, void)
{
  v73 = a6;
  v77 = a5;
  v76 = a4;
  v83 = a3;
  v72 = a1;
  v89 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v84 = *(v89 - 8);
  __chkstk_darwin(v89);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v10 - 8);
  v90 = &v64 - v11;
  v12 = type metadata accessor for IndexPath();
  v85 = *(v12 - 8);
  __chkstk_darwin(v12);
  v87 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for IndexSet.Index();
  v92 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_10076BA30);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_100058000(&qword_10076BA38);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v64 - v20;
  *&v94 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *(&v94 + 1) = v22;
  v95 = v23;
  v96 = v24 & 1;
  v64 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  v25 = type metadata accessor for IndexSet();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(v17, v83, v25);
  v27(v21, v17, v25);
  v28 = v21;
  v29 = *(v19 + 44);
  v30 = sub_1001013F4(&qword_10076BA20, &type metadata accessor for IndexSet);
  v79 = v29;
  dispatch thunk of Collection.endIndex.getter();
  v31 = *(v26 + 8);
  v80 = v25;
  v31(v17, v25);
  v78 = (v92 + 8);
  v92 = qword_100771778;
  v75 = (v85 + 16);
  v67 = (v84 + 16);
  v66 = (v84 + 8);
  v65 = (v86 + 8);
  v68 = (v85 + 8);
  v71 = v12;
  v70 = v28;
  v69 = v30;
  v91 = a2;
  while (1)
  {
    v32 = v81;
    dispatch thunk of Collection.startIndex.getter();
    sub_1001013F4(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
    v33 = v82;
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v78)(v32, v33);
    if (v34)
    {
      sub_1000079B4(v28, &qword_10076BA38);
      v60 = v95;
      v61 = v96;
      v62 = a2 + qword_100771760;
      v63 = *(a2 + qword_100771760);
      *v62 = v94;
      *(v62 + 16) = v60;
      *(v62 + 24) = v61;
      result = sub_100100898(v63);
      *(a2 + v64) = 0;
      return result;
    }

    sub_1001013F4(&qword_10076BA40, &type metadata accessor for IndexSet);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v35 = dispatch thunk of Collection.subscript.read();
    v37 = *v36;
    v35(v93, 0);
    v38 = sub_1000D31B0(v37, sub_10023C598, sub_10023C598, sub_1003B3ED8);
    v40 = v39;
    (*v75)(v87, v77, v12);
    result = IndexPath.row.modify();
    if (__OFADD__(*v42, v38))
    {
      break;
    }

    *v42 += v38;
    result = result(v93, 0);
    if (__OFSUB__(v40, v38))
    {
      goto LABEL_13;
    }

    v84 = sub_1000C63D4(v87, v40 - v38);
    v86 = v43;
    v45 = v44;
    v47 = v46;
    result = swift_beginAccess();
    v83 = v47;
    v85 = v45;
    v50 = (v47 >> 1) - v45;
    v48 = v47 >> 1 == v45;
    v49 = (v47 >> 1) <= v45;
    v51 = v74;
    if (!v48)
    {
      if (v49)
      {
        goto LABEL_14;
      }

      v52 = (v86 + 8 * v85);
      v53 = v67;
      v54 = v66;
      v55 = v65;
      do
      {
        v56 = *v52++;
        v57 = *(*v56 + 144);
        swift_beginAccess();
        v58 = v89;
        (*v53)(v8, v56 + v57, v89);

        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        (*v54)(v8, v58);
        v59 = v90;
        sub_1000E9DB0(v51, v90);

        (*v55)(v51, v88);
        sub_1000079B4(v59, &qword_10076B8B0);
        --v50;
      }

      while (v50);
    }

    swift_endAccess();
    sub_1000F30A0(v86, v85, v83, 1, v73, 0);
    swift_unknownObjectRelease();
    v12 = v71;
    (*v68)(v87, v71);
    a2 = v91;
    v28 = v70;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000D31B0(unint64_t a1, void (*a2)(uint64_t, uint64_t *), void (*a3)(uint64_t, void *), uint64_t a4)
{
  v33 = a3;
  v7 = v4;
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = qword_1007A84C0;
  swift_beginAccess();
  (*(v10 + 16))(v15, v7 + v16, v9);
  (*(v10 + 104))(v13, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
  sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
  LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v16)
  {
    goto LABEL_6;
  }

  if (qword_100767010 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100775D80);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Remove requires expanded state", v21, 2u);
    }

LABEL_6:
    swift_beginAccess();
    v22 = *(v7 + 64);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
      {
        goto LABEL_26;
      }

      v23 = *(v22 + 8 * a1 + 32);
    }

    swift_endAccess();
    a2 = sub_1000E609C(a1, a2);
    if (*(v23 + 48) == 1)
    {
      v34[0] = 0;
      v33(v23, v34);
      v24 = v34[0];
      *(v23 + 40) = v34[0];
      *(v23 + 48) = 0;
    }

    else
    {
      v24 = *(v23 + 40);
    }

    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_25;
    }

    swift_beginAccess();
    sub_1000C5CE0(a1, a4);
    swift_endAccess();

    if ((*(v7 + 48) & 1) == 0)
    {
      break;
    }

LABEL_17:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      a4 = 1;
      do
      {
        *(v7 + 40) = 0;
        *(v7 + 48) = 1;
        v31 = swift_weakLoadStrong();

        v7 = v31;
      }

      while (v31);
    }

    if (__OFADD__(a2, v25))
    {
      goto LABEL_27;
    }

    if (a2 + v25 >= a2)
    {
      return a2;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v27 = *(v7 + 40);
  v28 = __OFSUB__(v27, v25);
  v29 = v27 - v25;
  if (!v28)
  {
    *(v7 + 40) = v29;
    *(v7 + 48) = 0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D35A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v17 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *(&v17 + 1) = v8;
  v18 = v9;
  v19 = v10 & 1;
  v11 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  sub_1000D3788(&v17, a3, a2, a1, a4);
  v12 = v18;
  v13 = v19;
  v14 = a2 + qword_100771760;
  v15 = *(a2 + qword_100771760);
  *v14 = v17;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  result = sub_100100898(v15);
  *(a2 + v11) = 0;
  return result;
}

uint64_t sub_1000D3698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v17 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *(&v17 + 1) = v8;
  v18 = v9;
  v19 = v10 & 1;
  v11 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  sub_1000D3F30(&v17, a3, a2, a1, a4);
  v12 = v18;
  v13 = v19;
  v14 = a2 + qword_100771760;
  v15 = *(a2 + qword_100771760);
  *v14 = v17;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  result = sub_100100898(v15);
  *(a2 + v11) = 0;
  return result;
}

uint64_t sub_1000D3788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v56 = a4;
  v73 = a3;
  v69 = a2;
  v58 = a1;
  v72 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v72 - 8);
  __chkstk_darwin(v72);
  v65 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v66 = *(v71 - 8);
  __chkstk_darwin(v71);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v9 - 8);
  v70 = v54 - v10;
  v62 = type metadata accessor for IndexSet.Index();
  v11 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076BA30);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = sub_100058000(&qword_10076BA38);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = v54 - v18;
  v20 = type metadata accessor for IndexSet();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v22(v15, v69, v20);
  v22(v19, v15, v20);
  v23 = v20;
  v24 = *(v17 + 44);
  v25 = v19;
  v60 = sub_1001013F4(&qword_10076BA20, &type metadata accessor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  (*(v21 + 8))(v15, v23);
  v59 = (v11 + 8);
  v68 = (v5 + 16);
  v69 = qword_100771778;
  ++v66;
  v67 = (v5 + 8);
  v55 = v19;
  v54[0] = v24;
  v54[1] = v23;
  while (1)
  {
    v26 = v61;
    dispatch thunk of Collection.startIndex.getter();
    sub_1001013F4(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
    v27 = v62;
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v59)(v26, v27);
    if (v28)
    {
      return sub_1000079B4(v25, &qword_10076BA38);
    }

    sub_1001013F4(&qword_10076BA40, &type metadata accessor for IndexSet);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v29 = dispatch thunk of Collection.subscript.read();
    v31 = *v30;
    v29(v74, 0);
    v32 = sub_1000C5380(v31);
    v34 = v33;
    swift_beginAccess();
    v35 = *(*v32 + 144);
    swift_beginAccess();
    v36 = *v68;
    v63 = v32;
    v64 = v36;
    v37 = v32 + v35;
    v38 = v65;
    v39 = v72;
    v36(v65, v37, v72);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v40 = *v67;
    (*v67)(v38, v39);
    v41 = v70;
    sub_1000E992C(v8, v70);
    v42 = *v66;
    (*v66)(v8, v71);
    result = sub_1000079B4(v41, &unk_10076BB50);
    if (v34 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v44 = result;
      if (!result)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v44 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_2;
      }
    }

    if (v44 < 1)
    {
      break;
    }

    v45 = 0;
    v46 = v34 & 0xC000000000000001;
    v47 = v34;
    do
    {
      if (v46)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v48 = *(v34 + 8 * v45 + 32);
      }

      ++v45;
      v49 = *(*v48 + 144);
      swift_beginAccess();
      v50 = v48 + v49;
      v51 = v65;
      v52 = v72;
      v64(v65, v50, v72);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v40(v51, v52);
      v53 = v70;
      sub_1000E992C(v8, v70);

      v42(v8, v71);
      sub_1000079B4(v53, &unk_10076BB50);
      v34 = v47;
    }

    while (v44 != v45);
LABEL_2:
    swift_endAccess();
    sub_1001A0B30(v63, 1u, v57, 0);

    v25 = v55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D3F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a5;
  v76 = a4;
  v85 = a3;
  v80 = a2;
  v71 = a1;
  v84 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v86 = *(v82 - 8);
  __chkstk_darwin(v82);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v9 - 8);
  v81 = &v65 - v10;
  v74 = type metadata accessor for IndexSet.Index();
  v11 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076BA30);
  __chkstk_darwin(v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_100058000(&qword_10076BA38);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v65 - v18;
  v20 = type metadata accessor for IndexSet();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v22(v15, v80, v20);
  v22(v19, v15, v20);
  v23 = *(v17 + 44);
  v24 = v19;
  v25 = sub_1001013F4(&qword_10076BA20, &type metadata accessor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  (*(v21 + 8))(v15, v20);
  v80 = qword_100771778;
  v72 = (v11 + 8);
  v79 = (v5 + 16);
  v78 = (v5 + 8);
  v77 = (v86 + 8);
  v65 = xmmword_10062D400;
  v69 = v24;
  v68 = v20;
  v67 = v23;
  v66 = v25;
  while (1)
  {
    v29 = v73;
    dispatch thunk of Collection.startIndex.getter();
    sub_1001013F4(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
    v30 = v74;
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v72)(v29, v30);
    if (v31)
    {
      return sub_1000079B4(v24, &qword_10076BA38);
    }

    sub_1001013F4(&qword_10076BA40, &type metadata accessor for IndexSet);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v32 = dispatch thunk of Collection.subscript.read();
    v34 = *v33;
    v32(v88, 0);
    v35 = sub_1000C5824(v34);
    v37 = v36;
    swift_beginAccess();
    v38 = *(*v35 + 144);
    swift_beginAccess();
    v39 = *v79;
    v40 = v35 + v38;
    v42 = v83;
    v41 = v84;
    (*v79)(v83, v40, v84);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v43 = *v78;
    (*v78)(v42, v41);
    v44 = v81;
    sub_1000E9DB0(v8, v81);
    v45 = v37;
    v46 = *v77;
    (*v77)(v8, v82);
    result = sub_1000079B4(v44, &qword_10076B8B0);
    v48 = v45;
    v75 = v35;
    if (v45 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v48 = v45;
      v49 = result;
      v86 = v45;
      if (!result)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v49 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = v45;
      if (!v49)
      {
        goto LABEL_14;
      }
    }

    if (v49 < 1)
    {
      break;
    }

    v50 = 0;
    v51 = v48 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v52 = *(v48 + 8 * v50 + 32);
      }

      ++v50;
      v53 = *(*v52 + 144);
      swift_beginAccess();
      v54 = v52 + v53;
      v55 = v83;
      v56 = v84;
      v39(v83, v54, v84);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v43(v55, v56);
      v57 = v81;
      sub_1000E9DB0(v8, v81);

      v46(v8, v82);
      sub_1000079B4(v57, &qword_10076B8B0);
      v48 = v86;
    }

    while (v49 != v50);
LABEL_14:
    swift_endAccess();
    v58 = v76;
    swift_beginAccess();
    v59 = *(v58 + 80);
    v60 = v75;
    if (*(v59 + 16) && (v61 = sub_1003B3EDC(v75), (v62 & 1) != 0))
    {
      v63 = (*(v59 + 56) + 16 * v61);
      v64 = *v63;
      v28 = v63[1];
      swift_endAccess();
      v87 = v64;

      sub_1002EA030(v70, 0, 1);
      v27 = v87;
    }

    else
    {
      swift_endAccess();
      sub_100058000(qword_100769AC8);
      inited = swift_initStackObject();
      *(inited + 16) = v65;
      *(inited + 32) = 1;
      *(inited + 40) = v70;
      v27 = sub_100460B78(inited);
      swift_setDeallocating();
      v28 = 0;
    }

    v24 = v69;
    swift_beginAccess();

    sub_1002EA1E8(v27, v28, v60);
    swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D4848(uint64_t a1, unint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v140 = a2;
  v138 = a4;
  v123 = a1;
  v7 = type metadata accessor for IndexSet();
  v132 = *(v7 - 8);
  v133 = v7;
  __chkstk_darwin(v7);
  v131 = v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v125 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v126 = v117 - v12;
  v13 = type metadata accessor for IndexPath();
  v128 = *(v13 - 8);
  v129 = v13;
  __chkstk_darwin(v13);
  v124 = v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = v117 - v16;
  v17 = type metadata accessor for TTRITreeViewExpandedState();
  v18 = *(v17 - 8);
  v136 = v17;
  v137 = v18;
  __chkstk_darwin(v17);
  v135 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v134 = v117 - v21;
  v22 = type metadata accessor for TTRRemindersListViewModel.Item();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v139 = v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v117 - v26;
  v28 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v28 - 8);
  v130 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v117 - v31;
  v33 = sub_100058000(&qword_100768B60);
  __chkstk_darwin(v33 - 8);
  v35 = v117 - v34;
  v37 = *(v36 + 56);
  sub_10000794C(a3, v117 - v34, &qword_100772140);
  sub_10000794C(a5, &v35[v37], &qword_100772140);
  v38 = *(v23 + 48);
  v142 = v22;
  if (v38(v35, 1, v22) == 1)
  {
    if (v38(&v35[v37], 1, v142) == 1)
    {
      v39 = v141;
      sub_1001A306C(0, 0, 0, 0, v39, v39, v140, v138);

      return sub_1000079B4(v35, &qword_100772140);
    }
  }

  else
  {
    sub_10000794C(v35, v32, &qword_100772140);
    if (v38(&v35[v37], 1, v142) != 1)
    {
      v40 = *(v23 + 32);
      v41 = v142;
      v40(v27, v32, v142);
      v42 = v139;
      v40(v139, &v35[v37], v41);
      sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      v44 = sub_1000F4E08(v27, v43, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

      if (!v44)
      {
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_100003E30(v63, qword_1007716F0);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v64, v65, "oldParentNode is not found, nothing to do.", v66, 2u);
        }

        v67 = *(v23 + 8);
        v68 = v142;
        v67(v42, v142);
        v67(v27, v68);
        return sub_1000079B4(v35, &qword_100772140);
      }

      sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      v46 = sub_1000F4E08(v42, v45, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

      v122 = v44;
      v121 = v27;
      if (v46)
      {
        v47 = qword_1007A84C0;
        swift_beginAccess();
        v48 = v136;
        v49 = v137;
        v50 = *(v137 + 16);
        v51 = v134;
        v120 = v137 + 16;
        v119 = v50;
        v50(v134, v46 + v47, v136);
        v52 = *(v49 + 104);
        v53 = v135;
        v117[1] = v49 + 104;
        v117[0] = v52;
        v52(v135, enum case for TTRITreeViewExpandedState.expanded(_:), v48);
        LOBYTE(v47) = static TTRITreeViewExpandedState.== infix(_:_:)();
        v54 = *(v49 + 8);
        v54(v53, v48);
        v137 = v49 + 8;
        v118 = v54;
        v54(v51, v48);
        if (v47)
        {
          v132 = v23;
          v133 = v46;
          v55 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
          v57 = v126;
          sub_1000C7C38(v44, v55, v58, v59, v56 & 1, sub_1003B3EDC, sub_1000C73C4, v126);

          v61 = v128;
          v60 = v129;
          v62 = *(v128 + 48);
          if (v62(v57, 1, v129) == 1)
          {
            sub_1000079B4(v57, &unk_100771B10);
          }

          else
          {
            v81 = *(v61 + 32);
            v81(v127, v57, v60);
            v82 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
            v84 = v125;
            sub_1000C7C38(v133, v82, v85, v86, v83 & 1, sub_1003B3EDC, sub_1000C73C4, v125);
            v87 = v129;

            if (v62(v84, 1, v87) != 1)
            {
              v97 = v124;
              v81(v124, v84, v87);
              v98 = qword_1007A84C0;
              v99 = v122;
              swift_beginAccess();
              v100 = v134;
              v101 = v136;
              v119(v134, v99 + v98, v136);
              v102 = v135;
              (v117[0])(v135, enum case for TTRITreeViewExpandedState.collapsed(_:), v101);
              LOBYTE(v98) = static TTRITreeViewExpandedState.== infix(_:_:)();
              v103 = v118;
              v118(v102, v101);
              v104 = v103(v100, v101);
              __chkstk_darwin(v104);
              if (v98)
              {
                v105 = v123;
                v117[-4] = v141;
                v117[-3] = v105;
                v115 = v133;
                v116 = v138;
                sub_1000CCF14(sub_100100A4C, &v117[-6], 0, 0, 0, 0);

                v106 = *(v132 + 8);
                v107 = v142;
                v106(v139, v142);
                v106(v121, v107);
                v108 = *(v128 + 8);
                v108(v97, v87);
                v109 = v127;
              }

              else
              {
                v110 = v140;
                v117[-8] = v141;
                v117[-7] = v99;
                v111 = v133;
                v117[-6] = v110;
                v117[-5] = v111;
                v112 = v127;
                v117[-4] = v138;
                v117[-3] = v112;
                v115 = v97;
                sub_1000CCF14(sub_100100A18, &v117[-10], 0, 0, 0, 0);

                v113 = *(v132 + 8);
                v114 = v142;
                v113(v139, v142);
                v113(v121, v114);
                v108 = *(v128 + 8);
                v108(v97, v87);
                v109 = v112;
              }

              v108(v109, v87);
              return sub_1000079B4(v35, &qword_100772140);
            }

            sub_1000079B4(v84, &unk_100771B10);
            (*(v61 + 8))(v127, v87);
          }

          v88 = v132;
          v89 = v139;
          v90 = v121;
          if (qword_100766FC8 != -1)
          {
            swift_once();
          }

          v91 = type metadata accessor for Logger();
          sub_100003E30(v91, qword_1007716F0);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&_mh_execute_header, v92, v93, "Unable to find old/newChildrenStartIndexPath", v94, 2u);
          }

          v95 = *(v88 + 8);
          v96 = v142;
          v95(v89, v142);
          v95(v90, v96);
          return sub_1000079B4(v35, &qword_100772140);
        }

        v42 = v139;
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_100003E30(v69, qword_1007716F0);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "newParentNode is not found or not expanded, treating this as a delete.", v72, 2u);
      }

      sub_100058000(&unk_10076B9F0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_10062D400;
      *(v73 + 32) = v140;
      v143 = v73;
      sub_1001013F4(&unk_100771B20, &type metadata accessor for IndexSet);
      sub_100058000(&unk_10076BA00);
      sub_10000E188(&qword_100771B30, &unk_10076BA00);
      v74 = v131;
      v75 = v133;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v76 = v130;
      v77 = v121;
      v78 = v142;
      (*(v23 + 16))(v130, v121, v142);
      (*(v23 + 56))(v76, 0, 1, v78);
      sub_1000D0FF8(v74, v76, 100);

      sub_1000079B4(v76, &qword_100772140);
      (*(v132 + 8))(v74, v75);
      v79 = *(v23 + 8);
      v79(v42, v78);
      v79(v77, v78);
      return sub_1000079B4(v35, &qword_100772140);
    }

    (*(v23 + 8))(v32, v142);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000D59B8(uint64_t a1, unint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v140 = a2;
  v138 = a4;
  v123 = a1;
  v7 = type metadata accessor for IndexSet();
  v132 = *(v7 - 8);
  v133 = v7;
  __chkstk_darwin(v7);
  v131 = v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B10);
  v10 = __chkstk_darwin(v9 - 8);
  v125 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v126 = v117 - v12;
  v13 = type metadata accessor for IndexPath();
  v128 = *(v13 - 8);
  v129 = v13;
  v14 = __chkstk_darwin(v13);
  v124 = v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v127 = v117 - v16;
  v17 = type metadata accessor for TTRITreeViewExpandedState();
  v18 = *(v17 - 8);
  v136 = v17;
  v137 = v18;
  v19 = __chkstk_darwin(v17);
  v135 = v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v134 = v117 - v21;
  v22 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v139 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v117 - v26;
  v28 = sub_100058000(&unk_100771B40);
  v29 = __chkstk_darwin(v28 - 8);
  v130 = v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = v117 - v31;
  v33 = sub_100058000(&qword_10076BA48);
  v34 = __chkstk_darwin(v33 - 8);
  v36 = v117 - v35;
  v37 = *(v34 + 56);
  sub_10000794C(a3, v117 - v35, &unk_100771B40);
  sub_10000794C(a5, &v36[v37], &unk_100771B40);
  v38 = *(v23 + 48);
  v142 = v22;
  if (v38(v36, 1, v22) == 1)
  {
    if (v38(&v36[v37], 1, v142) == 1)
    {
      v39 = v141;
      sub_1001A1644(0, 0, 0, 0, v39, v39, v140, v138);

      return sub_1000079B4(v36, &unk_100771B40);
    }
  }

  else
  {
    sub_10000794C(v36, v32, &unk_100771B40);
    if (v38(&v36[v37], 1, v142) != 1)
    {
      v40 = *(v23 + 32);
      v41 = v142;
      v40(v27, v32, v142);
      v42 = v139;
      v40(v139, &v36[v37], v41);
      sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v44 = sub_1000F4E08(v27, v43, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

      if (!v44)
      {
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_100003E30(v63, qword_1007716F0);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v64, v65, "oldParentNode is not found, nothing to do.", v66, 2u);
        }

        v67 = *(v23 + 8);
        v68 = v142;
        v67(v42, v142);
        v67(v27, v68);
        return sub_1000079B4(v36, &unk_100771B40);
      }

      sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v46 = sub_1000F4E08(v42, v45, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

      v122 = v44;
      v121 = v27;
      if (v46)
      {
        v47 = qword_1007A84C0;
        swift_beginAccess();
        v48 = v136;
        v49 = v137;
        v50 = *(v137 + 16);
        v51 = v134;
        v120 = v137 + 16;
        v119 = v50;
        v50(v134, v46 + v47, v136);
        v52 = *(v49 + 104);
        v53 = v135;
        v117[1] = v49 + 104;
        v117[0] = v52;
        v52(v135, enum case for TTRITreeViewExpandedState.expanded(_:), v48);
        LOBYTE(v47) = static TTRITreeViewExpandedState.== infix(_:_:)();
        v54 = *(v49 + 8);
        v54(v53, v48);
        v137 = v49 + 8;
        v118 = v54;
        v54(v51, v48);
        if (v47)
        {
          v132 = v23;
          v133 = v46;
          v55 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
          v57 = v126;
          sub_1000C7C38(v44, v55, v58, v59, v56 & 1, sub_1003B3EDC, sub_1000C77E8, v126);

          v61 = v128;
          v60 = v129;
          v62 = *(v128 + 48);
          if (v62(v57, 1, v129) == 1)
          {
            sub_1000079B4(v57, &unk_100771B10);
          }

          else
          {
            v81 = *(v61 + 32);
            v81(v127, v57, v60);
            v82 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
            v84 = v125;
            sub_1000C7C38(v133, v82, v85, v86, v83 & 1, sub_1003B3EDC, sub_1000C77E8, v125);
            v87 = v129;

            if (v62(v84, 1, v87) != 1)
            {
              v97 = v124;
              v81(v124, v84, v87);
              v98 = qword_1007A84C0;
              v99 = v122;
              swift_beginAccess();
              v100 = v134;
              v101 = v136;
              v119(v134, v99 + v98, v136);
              v102 = v135;
              (v117[0])(v135, enum case for TTRITreeViewExpandedState.collapsed(_:), v101);
              LOBYTE(v98) = static TTRITreeViewExpandedState.== infix(_:_:)();
              v103 = v118;
              v118(v102, v101);
              v104 = v103(v100, v101);
              __chkstk_darwin(v104);
              if (v98)
              {
                v105 = v123;
                v117[-4] = v141;
                v117[-3] = v105;
                v115 = v133;
                v116 = v138;
                sub_1000CD5E4(sub_1001000BC, &v117[-6], 0, 0, 0, 0);

                v106 = *(v132 + 8);
                v107 = v142;
                v106(v139, v142);
                v106(v121, v107);
                v108 = *(v128 + 8);
                v108(v97, v87);
                v109 = v127;
              }

              else
              {
                v110 = v140;
                v117[-8] = v141;
                v117[-7] = v99;
                v111 = v133;
                v117[-6] = v110;
                v117[-5] = v111;
                v112 = v127;
                v117[-4] = v138;
                v117[-3] = v112;
                v115 = v97;
                sub_1000CD5E4(sub_1001000A4, &v117[-10], 0, 0, 0, 0);

                v113 = *(v132 + 8);
                v114 = v142;
                v113(v139, v142);
                v113(v121, v114);
                v108 = *(v128 + 8);
                v108(v97, v87);
                v109 = v112;
              }

              v108(v109, v87);
              return sub_1000079B4(v36, &unk_100771B40);
            }

            sub_1000079B4(v84, &unk_100771B10);
            (*(v61 + 8))(v127, v87);
          }

          v88 = v132;
          v89 = v139;
          v90 = v121;
          if (qword_100766FC8 != -1)
          {
            swift_once();
          }

          v91 = type metadata accessor for Logger();
          sub_100003E30(v91, qword_1007716F0);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&_mh_execute_header, v92, v93, "Unable to find old/newChildrenStartIndexPath", v94, 2u);
          }

          v95 = *(v88 + 8);
          v96 = v142;
          v95(v89, v142);
          v95(v90, v96);
          return sub_1000079B4(v36, &unk_100771B40);
        }

        v42 = v139;
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_100003E30(v69, qword_1007716F0);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "newParentNode is not found or not expanded, treating this as a delete.", v72, 2u);
      }

      sub_100058000(&unk_10076B9F0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_10062D400;
      *(v73 + 32) = v140;
      v143 = v73;
      sub_1001013F4(&unk_100771B20, &type metadata accessor for IndexSet);
      sub_100058000(&unk_10076BA00);
      sub_10000E188(&qword_100771B30, &unk_10076BA00);
      v74 = v131;
      v75 = v133;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v76 = v130;
      v77 = v121;
      v78 = v142;
      (*(v23 + 16))(v130, v121, v142);
      (*(v23 + 56))(v76, 0, 1, v78);
      sub_1000D17B8(v74, v76, 100);

      sub_1000079B4(v76, &unk_100771B40);
      (*(v132 + 8))(v74, v75);
      v79 = *(v23 + 8);
      v79(v42, v78);
      v79(v77, v78);
      return sub_1000079B4(v36, &unk_100771B40);
    }

    (*(v23 + 8))(v32, v142);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000D6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  *&v19 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *(&v19 + 1) = v10;
  v20 = v11;
  v21 = v12 & 1;
  v13 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  sub_1000D6D18(&v19, a2, a3, a4, a5, a1);
  v14 = v20;
  v15 = v21;
  v16 = a2 + qword_100771760;
  v17 = *(a2 + qword_100771760);
  *v16 = v19;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  result = sub_100100898(v17);
  *(a2 + v13) = 0;
  return result;
}

uint64_t sub_1000D6C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  *&v19 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *(&v19 + 1) = v10;
  v20 = v11;
  v21 = v12 & 1;
  v13 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  sub_1000D7450(&v19, a2, a3, a4, a5, a1);
  v14 = v20;
  v15 = v21;
  v16 = a2 + qword_100771760;
  v17 = *(a2 + qword_100771760);
  *v16 = v19;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  result = sub_100100898(v17);
  *(a2 + v13) = 0;
  return result;
}

uint64_t sub_1000D6D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6)
{
  v68 = a5;
  v66 = a1;
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&unk_10076BBA0);
  swift_allocObject();
  v15 = sub_1000F4C70(_swiftEmptyArrayStorage, sub_1000E821C);
  v16 = sub_1000D0798(a3, a4, v15);

  v65 = v16;
  v17 = sub_1000D7B88(v16, v68, sub_10023C598, &qword_10076BB78, &unk_10062FDD0, sub_100101534);
  v67 = v18;
  v19 = v12;
  v20 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  sub_1000C7C38(a4, v20, v22, v23, v21 & 1, sub_1003B3EDC, sub_1000C73C4, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1000079B4(v11, &unk_100771B10);
    if (qword_100766FC8 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

  v68 = v17;
  (*(v13 + 32))(v64, v11, v12);
  v28 = v70;
  v29 = IndexPath.row.modify();
  v31 = *v30 + v67;
  if (__OFADD__(*v30, v67))
  {
    __break(1u);
  }

  else
  {
    v62 = v13;
    v63 = v19;
    *v30 = v31;
    v29(v70, 0);
    v13 = IndexPath.section.getter();
    v19 = v68;

    v28 = IndexPath.row.getter();
    v11 = v66;
    v17 = *v66;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  v17 = sub_1003B2E94(v17);
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  if (v13 >= v17[2])
  {
LABEL_43:
    __break(1u);
LABEL_44:
    v60 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v19;
    v34 = v60;
    if (v60)
    {
      goto LABEL_12;
    }

LABEL_45:
    (*(v62 + 8))(v64, v63);
  }

  sub_1000FF698(v28, v28, v19, &qword_10076BB78, &unk_10062FDD0, sub_1001009E0, sub_1003B3EE4);

  *v11 = v17;
  v32 = IndexPath.section.getter();
  sub_1000C4C10(v19, v32);
  v33 = v19;
  if (v19 >> 62)
  {
    goto LABEL_44;
  }

  v34 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_45;
  }

LABEL_12:
  v35 = 0;
  v66 = v33 & 0xFFFFFFFFFFFFFF8;
  v67 = v33 & 0xC000000000000001;
  while (v67)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_35;
    }

LABEL_21:
    swift_beginAccess();
    v39 = *(a6 + 88);
    if (*(v39 + 16) && (v40 = sub_1003B3EDC(v37), (v41 & 1) != 0))
    {
      v42 = *(v39 + 56) + 16 * v40;
      v44 = *v42;
      v43 = *(v42 + 8);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v43 = 0;
      v44 = &_swiftEmptyDictionarySingleton;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a6 + 88);
    v46 = v69;
    *(a6 + 88) = 0x8000000000000000;
    v47 = sub_1003B3EDC(v37);
    v49 = v46[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_36;
    }

    v53 = v48;
    if (v46[3] < v52)
    {
      sub_1005491A0(v52, isUniquelyReferenced_nonNull_native);
      v47 = sub_1003B3EDC(v37);
      if ((v53 & 1) != (v54 & 1))
      {
        sub_100058000(&qword_10076BB78);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_30:
      v55 = v69;
      if (v53)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v59 = v47;
    sub_1003AE114();
    v47 = v59;
    v55 = v69;
    if (v53)
    {
LABEL_13:
      v36 = (v55[7] + 16 * v47);
      *v36 = v44;
      v36[1] = v43;

      goto LABEL_14;
    }

LABEL_31:
    v55[(v47 >> 6) + 8] |= 1 << v47;
    *(v55[6] + 8 * v47) = v37;
    v56 = (v55[7] + 16 * v47);
    *v56 = v44;
    v56[1] = v43;
    v57 = v55[2];
    v51 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v51)
    {
      goto LABEL_37;
    }

    v55[2] = v58;
LABEL_14:
    *(a6 + 88) = v55;
    swift_endAccess();
    ++v35;
    v33 = v68;
    if (v38 == v34)
    {
      goto LABEL_45;
    }
  }

  if (v35 >= *(v66 + 16))
  {
    goto LABEL_38;
  }

  v37 = *(v33 + 8 * v35 + 32);

  v38 = v35 + 1;
  if (!__OFADD__(v35, 1))
  {
    goto LABEL_21;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_3:
  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_1007716F0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Can't find indexPath to insert currentItem into", v27, 2u);
  }
}

uint64_t sub_1000D7450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6)
{
  v68 = a5;
  v66 = a1;
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&unk_10076B770);
  swift_allocObject();
  v15 = sub_1000F4C70(&_swiftEmptyArrayStorage, sub_1000E8430);
  v16 = sub_1000D0BC8(a3, a4, v15);

  v65 = v16;
  v17 = sub_1000D7B88(v16, v68, sub_10023C598, &qword_10076B788, &unk_10062FB80, sub_100101534);
  v67 = v18;
  v19 = v12;
  v20 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  sub_1000C7C38(a4, v20, v22, v23, v21 & 1, sub_1003B3EDC, sub_1000C77E8, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1000079B4(v11, &unk_100771B10);
    if (qword_100766FC8 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

  v68 = v17;
  (*(v13 + 32))(v64, v11, v12);
  v28 = v70;
  v29 = IndexPath.row.modify();
  v31 = *v30 + v67;
  if (__OFADD__(*v30, v67))
  {
    __break(1u);
  }

  else
  {
    v62 = v13;
    v63 = v19;
    *v30 = v31;
    v29(v70, 0);
    v13 = IndexPath.section.getter();
    v19 = v68;

    v28 = IndexPath.row.getter();
    v11 = v66;
    v17 = *v66;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  v17 = sub_1003B2EA8(v17);
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  if (v13 >= v17[2])
  {
LABEL_43:
    __break(1u);
LABEL_44:
    v60 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v19;
    v34 = v60;
    if (v60)
    {
      goto LABEL_12;
    }

LABEL_45:
    (*(v62 + 8))(v64, v63);
  }

  sub_1000FF698(v28, v28, v19, &qword_10076B788, &unk_10062FB80, sub_1000FF7D8, sub_1003B3EE4);

  *v11 = v17;
  v32 = IndexPath.section.getter();
  sub_1000C4FC8(v19, v32);
  v33 = v19;
  if (v19 >> 62)
  {
    goto LABEL_44;
  }

  v34 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_45;
  }

LABEL_12:
  v35 = 0;
  v66 = v33 & 0xFFFFFFFFFFFFFF8;
  v67 = v33 & 0xC000000000000001;
  while (v67)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_35;
    }

LABEL_21:
    swift_beginAccess();
    v39 = *(a6 + 88);
    if (*(v39 + 16) && (v40 = sub_1003B3EDC(v37), (v41 & 1) != 0))
    {
      v42 = *(v39 + 56) + 16 * v40;
      v44 = *v42;
      v43 = *(v42 + 8);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v43 = 0;
      v44 = &_swiftEmptyDictionarySingleton;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a6 + 88);
    v46 = v69;
    *(a6 + 88) = 0x8000000000000000;
    v47 = sub_1003B3EDC(v37);
    v49 = v46[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_36;
    }

    v53 = v48;
    if (v46[3] < v52)
    {
      sub_10054B93C(v52, isUniquelyReferenced_nonNull_native);
      v47 = sub_1003B3EDC(v37);
      if ((v53 & 1) != (v54 & 1))
      {
        sub_100058000(&qword_10076B788);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_30:
      v55 = v69;
      if (v53)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v59 = v47;
    sub_1003AF6F4();
    v47 = v59;
    v55 = v69;
    if (v53)
    {
LABEL_13:
      v36 = (v55[7] + 16 * v47);
      *v36 = v44;
      v36[1] = v43;

      goto LABEL_14;
    }

LABEL_31:
    v55[(v47 >> 6) + 8] |= 1 << v47;
    *(v55[6] + 8 * v47) = v37;
    v56 = (v55[7] + 16 * v47);
    *v56 = v44;
    v56[1] = v43;
    v57 = v55[2];
    v51 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v51)
    {
      goto LABEL_37;
    }

    v55[2] = v58;
LABEL_14:
    *(a6 + 88) = v55;
    swift_endAccess();
    ++v35;
    v33 = v68;
    if (v38 == v34)
    {
      goto LABEL_45;
    }
  }

  if (v35 >= *(v66 + 16))
  {
    goto LABEL_38;
  }

  v37 = *(v33 + 8 * v35 + 32);

  v38 = v35 + 1;
  if (!__OFADD__(v35, 1))
  {
    goto LABEL_21;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_3:
  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_1007716F0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Can't find indexPath to insert currentItem into", v27, 2u);
  }
}

uint64_t sub_1000D7B88(unint64_t a1, int64_t a2, void (*a3)(uint64_t, uint64_t *), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void *))
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v8 = v6;
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = qword_1007A84C0;
  swift_beginAccess();
  (*(v12 + 16))(v17, v8 + v18, v11);
  (*(v12 + 104))(v15, enum case for TTRITreeViewExpandedState.expanded(_:), v11);
  sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
  LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  if ((v18 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_100775D80);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Insert requires expanded state", v23, 2u);
    }
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;

    if (v25 == v8)
    {
      goto LABEL_13;
    }
  }

  if (qword_100767010 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v26 = type metadata accessor for Logger();
    sub_100003E30(v26, qword_100775D80);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Subtree parent is not set correctly before calling insert.", v29, 2u);
    }

LABEL_13:
    a3 = sub_1000E609C(a2, a3);
    swift_beginAccess();
    v30 = *(v8 + 64);
    if (v30 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < a2)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < a2)
    {
      goto LABEL_25;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  sub_1000FFE64(a2, a2, a1, v38);
  swift_endAccess();

  v41[0] = &_swiftEmptyArrayStorage;
  sub_1000E5FC4(v41, v40);
  if (*(v8 + 48))
  {
LABEL_20:
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v35 = v34;
      do
      {
        *(v35 + 40) = 0;
        *(v35 + 48) = 1;
        v36 = swift_weakLoadStrong();

        v35 = v36;
      }

      while (v36);
    }

    return v41[0];
  }

  v31 = *(v8 + 40);
  if (v41[0] >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v33 = v31 + result;
    if (__OFADD__(v31, result))
    {
      goto LABEL_30;
    }

LABEL_19:
    *(v8 + 40) = v33;
    *(v8 + 48) = 0;
    goto LABEL_20;
  }

  result = *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = v31 + result;
  if (!__OFADD__(v31, result))
  {
    goto LABEL_19;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000D8020(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, int64_t a6, unint64_t a7, unint64_t a8)
{
  v16 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *&v66 = v16;
  *(&v66 + 1) = v17;
  v67 = v18;
  v68 = v19 & 1;
  v58 = qword_100771768;
  v59 = a2;
  *(a2 + qword_100771768) = 1;
  v20 = sub_1000D8C38(a4, a5, a6);
  v22 = v21;
  isUniquelyReferenced_nonNull_native = v23;
  v25 = a7;
  v26 = IndexPath.row.getter();
  v27 = v26 + v20;
  if (__OFADD__(v26, v20))
  {
    goto LABEL_56;
  }

  if (__OFADD__(v26, v22))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v26 + v22 < v27)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v64 = v26 + v22;
  v25 = a8;
  v28 = IndexPath.row.getter();
  v8 = v28 + isUniquelyReferenced_nonNull_native;
  if (__OFADD__(v28, isUniquelyReferenced_nonNull_native))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  isUniquelyReferenced_nonNull_native = IndexPath.section.getter();
  if (isUniquelyReferenced_nonNull_native != IndexPath.section.getter() || v27 >= v8)
  {
    goto LABEL_9;
  }

  v29 = v64 - v27;
  if (__OFSUB__(v64, v27))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v30 = __OFSUB__(v8, v29);
  v8 -= v29;
  if (!v30)
  {
LABEL_9:
    a7 = IndexPath.section.getter();
    v25 = a8;
    v61 = IndexPath.section.getter();
    if ((a7 & 0x8000000000000000) == 0)
    {
      if (a7 < *(v16 + 16))
      {
        v62 = a7;
        v31 = v16 + 16 * a7;
        a8 = *(v31 + 32);
        a7 = *(v31 + 40);
        v25 = (a7 >> 62);
        if (!(a7 >> 62))
        {
          if (*((a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v27)
          {
            goto LABEL_13;
          }

          goto LABEL_63;
        }

LABEL_62:
        if (_CocoaArrayWrapper.endIndex.getter() >= v27)
        {
LABEL_13:
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (v25)
            {
              v32 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v32 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v32 >= v64)
            {
              v60 = v8;
              if ((a7 & 0xC000000000000001) == 0 || v27 == v64)
              {
                swift_bridgeObjectRetain_n();
              }

              else
              {
                if (v27 >= v64)
                {
                  goto LABEL_72;
                }

                swift_bridgeObjectRetain_n();

                v8 = v22 - v20;
                v33 = v27;
                do
                {
                  sub_100058000(&qword_10076BB78);
                  _ArrayBuffer._typeCheckSlowPath(_:)(v33++);
                  --v8;
                }

                while (v8);
              }

              if (v25)
              {
                v63 = _CocoaArrayWrapper.subscript.getter();
                v22 = v34;
                v20 = v35;
                a8 = v36;
              }

              else
              {

                v63 = a7 & 0xFFFFFFFFFFFFFF8;
                v22 = (a7 & 0xFFFFFFFFFFFFFF8) + 32;
                a8 = (2 * v64) | 1;
                v20 = v27;
              }

              isUniquelyReferenced_nonNull_native = v60;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_29:
                if (v62 >= *(v16 + 16))
                {
                  __break(1u);
                }

                else
                {
                  sub_1000FED50(v27, v64, &qword_10076BB78);
                  swift_unknownObjectRetain();
                  if ((v61 & 0x8000000000000000) == 0)
                  {
                    if (v61 < *(v16 + 16))
                    {
                      v25 = (v16 + 32 + 16 * v61 + 8);
                      a7 = v63;
                      sub_100100250(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native, v63, v22, v20, a8, &qword_10076BB78);
                      swift_unknownObjectRelease();
                      *&v66 = v16;
                      if (v62 != v61)
                      {
                        v25 = &v66;
                        sub_1000FE5AC(v22, v20, a8, v61);
                      }

                      v27 = a8 >> 1;
                      if (v20 == a8 >> 1)
                      {
LABEL_35:
                        swift_unknownObjectRelease();
                        v37 = v67;
                        v38 = v68;
                        v39 = v59 + qword_100771760;
                        v40 = *(v59 + qword_100771760);
                        *v39 = v66;
                        *(v39 + 16) = v37;
                        *(v39 + 24) = v38;
                        result = sub_100100898(v40);
                        *(v59 + v58) = 0;
                        return result;
                      }

                      while (1)
                      {
                        if (v20 >= v27)
                        {
                          __break(1u);
LABEL_54:
                          __break(1u);
LABEL_55:
                          __break(1u);
LABEL_56:
                          __break(1u);
                          goto LABEL_57;
                        }

                        a8 = *(v22 + 8 * v20);
                        swift_beginAccess();
                        v43 = *(a1 + 88);
                        if (*(v43 + 16) && (v44 = sub_1003B3EDC(a8), (v45 & 1) != 0))
                        {
                          v46 = (*(v43 + 56) + 16 * v44);
                          a7 = *v46;
                          v47 = v46[1];
                          swift_endAccess();
                          v8 = v47 | 2;
                        }

                        else
                        {
                          swift_endAccess();
                          v8 = 2;
                          a7 = &_swiftEmptyDictionarySingleton;
                        }

                        swift_beginAccess();

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v65 = *(a1 + 88);
                        v25 = v65;
                        *(a1 + 88) = 0x8000000000000000;
                        v48 = sub_1003B3EDC(a8);
                        v50 = *(v25 + 2);
                        v51 = (v49 & 1) == 0;
                        v30 = __OFADD__(v50, v51);
                        v52 = v50 + v51;
                        if (v30)
                        {
                          goto LABEL_54;
                        }

                        v16 = v49;
                        if (*(v25 + 3) < v52)
                        {
                          break;
                        }

                        if (isUniquelyReferenced_nonNull_native)
                        {
                          goto LABEL_48;
                        }

                        v25 = &v65;
                        v57 = v48;
                        sub_1003AE114();
                        v48 = v57;
                        isUniquelyReferenced_nonNull_native = v65;
                        if (v16)
                        {
LABEL_36:
                          v42 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v48);
                          v25 = *v42;
                          *v42 = a7;
                          v42[1] = v8;

                          goto LABEL_37;
                        }

LABEL_49:
                        *(isUniquelyReferenced_nonNull_native + 8 * (v48 >> 6) + 64) |= 1 << v48;
                        *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v48) = a8;
                        v54 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v48);
                        *v54 = a7;
                        v54[1] = v8;
                        v55 = *(isUniquelyReferenced_nonNull_native + 16);
                        v30 = __OFADD__(v55, 1);
                        v56 = v55 + 1;
                        if (v30)
                        {
                          goto LABEL_55;
                        }

                        *(isUniquelyReferenced_nonNull_native + 16) = v56;
LABEL_37:
                        ++v20;
                        *(a1 + 88) = isUniquelyReferenced_nonNull_native;
                        swift_endAccess();
                        if (v27 == v20)
                        {
                          goto LABEL_35;
                        }
                      }

                      sub_1005491A0(v52, isUniquelyReferenced_nonNull_native);
                      v25 = v65;
                      v48 = sub_1003B3EDC(a8);
                      if ((v16 & 1) != (v53 & 1))
                      {
                        goto LABEL_73;
                      }

LABEL_48:
                      isUniquelyReferenced_nonNull_native = v65;
                      if (v16)
                      {
                        goto LABEL_36;
                      }

                      goto LABEL_49;
                    }

                    goto LABEL_69;
                  }
                }

                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

LABEL_66:
              v16 = sub_1003B2E94(v16);
              goto LABEL_29;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_100058000(&qword_10076BB78);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000D862C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, int64_t a6, unint64_t a7, unint64_t a8)
{
  v16 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *&v66 = v16;
  *(&v66 + 1) = v17;
  v67 = v18;
  v68 = v19 & 1;
  v58 = qword_100771768;
  v59 = a2;
  *(a2 + qword_100771768) = 1;
  v20 = sub_1000D90C4(a4, a5, a6);
  v22 = v21;
  isUniquelyReferenced_nonNull_native = v23;
  v25 = a7;
  v26 = IndexPath.row.getter();
  v27 = v26 + v20;
  if (__OFADD__(v26, v20))
  {
    goto LABEL_56;
  }

  if (__OFADD__(v26, v22))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v26 + v22 < v27)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v64 = v26 + v22;
  v25 = a8;
  v28 = IndexPath.row.getter();
  v8 = v28 + isUniquelyReferenced_nonNull_native;
  if (__OFADD__(v28, isUniquelyReferenced_nonNull_native))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  isUniquelyReferenced_nonNull_native = IndexPath.section.getter();
  if (isUniquelyReferenced_nonNull_native != IndexPath.section.getter() || v27 >= v8)
  {
    goto LABEL_9;
  }

  v29 = v64 - v27;
  if (__OFSUB__(v64, v27))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v30 = __OFSUB__(v8, v29);
  v8 -= v29;
  if (!v30)
  {
LABEL_9:
    a7 = IndexPath.section.getter();
    v25 = a8;
    v61 = IndexPath.section.getter();
    if ((a7 & 0x8000000000000000) == 0)
    {
      if (a7 < *(v16 + 16))
      {
        v62 = a7;
        v31 = v16 + 16 * a7;
        a8 = *(v31 + 32);
        a7 = *(v31 + 40);
        v25 = (a7 >> 62);
        if (!(a7 >> 62))
        {
          if (*((a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v27)
          {
            goto LABEL_13;
          }

          goto LABEL_63;
        }

LABEL_62:
        if (_CocoaArrayWrapper.endIndex.getter() >= v27)
        {
LABEL_13:
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (v25)
            {
              v32 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v32 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v32 >= v64)
            {
              v60 = v8;
              if ((a7 & 0xC000000000000001) == 0 || v27 == v64)
              {
                swift_bridgeObjectRetain_n();
              }

              else
              {
                if (v27 >= v64)
                {
                  goto LABEL_72;
                }

                swift_bridgeObjectRetain_n();

                v8 = v22 - v20;
                v33 = v27;
                do
                {
                  sub_100058000(&qword_10076B788);
                  _ArrayBuffer._typeCheckSlowPath(_:)(v33++);
                  --v8;
                }

                while (v8);
              }

              if (v25)
              {
                v63 = _CocoaArrayWrapper.subscript.getter();
                v22 = v34;
                v20 = v35;
                a8 = v36;
              }

              else
              {

                v63 = a7 & 0xFFFFFFFFFFFFFF8;
                v22 = (a7 & 0xFFFFFFFFFFFFFF8) + 32;
                a8 = (2 * v64) | 1;
                v20 = v27;
              }

              isUniquelyReferenced_nonNull_native = v60;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_29:
                if (v62 >= *(v16 + 16))
                {
                  __break(1u);
                }

                else
                {
                  sub_1000FED50(v27, v64, &qword_10076B788);
                  swift_unknownObjectRetain();
                  if ((v61 & 0x8000000000000000) == 0)
                  {
                    if (v61 < *(v16 + 16))
                    {
                      v25 = (v16 + 32 + 16 * v61 + 8);
                      a7 = v63;
                      sub_100100250(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native, v63, v22, v20, a8, &qword_10076B788);
                      swift_unknownObjectRelease();
                      *&v66 = v16;
                      if (v62 != v61)
                      {
                        v25 = &v66;
                        sub_1000FE8FC(v22, v20, a8, v61);
                      }

                      v27 = a8 >> 1;
                      if (v20 == a8 >> 1)
                      {
LABEL_35:
                        swift_unknownObjectRelease();
                        v37 = v67;
                        v38 = v68;
                        v39 = v59 + qword_100771760;
                        v40 = *(v59 + qword_100771760);
                        *v39 = v66;
                        *(v39 + 16) = v37;
                        *(v39 + 24) = v38;
                        result = sub_100100898(v40);
                        *(v59 + v58) = 0;
                        return result;
                      }

                      while (1)
                      {
                        if (v20 >= v27)
                        {
                          __break(1u);
LABEL_54:
                          __break(1u);
LABEL_55:
                          __break(1u);
LABEL_56:
                          __break(1u);
                          goto LABEL_57;
                        }

                        a8 = *(v22 + 8 * v20);
                        swift_beginAccess();
                        v43 = *(a1 + 88);
                        if (*(v43 + 16) && (v44 = sub_1003B3EDC(a8), (v45 & 1) != 0))
                        {
                          v46 = (*(v43 + 56) + 16 * v44);
                          a7 = *v46;
                          v47 = v46[1];
                          swift_endAccess();
                          v8 = v47 | 2;
                        }

                        else
                        {
                          swift_endAccess();
                          v8 = 2;
                          a7 = &_swiftEmptyDictionarySingleton;
                        }

                        swift_beginAccess();

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v65 = *(a1 + 88);
                        v25 = v65;
                        *(a1 + 88) = 0x8000000000000000;
                        v48 = sub_1003B3EDC(a8);
                        v50 = *(v25 + 2);
                        v51 = (v49 & 1) == 0;
                        v30 = __OFADD__(v50, v51);
                        v52 = v50 + v51;
                        if (v30)
                        {
                          goto LABEL_54;
                        }

                        v16 = v49;
                        if (*(v25 + 3) < v52)
                        {
                          break;
                        }

                        if (isUniquelyReferenced_nonNull_native)
                        {
                          goto LABEL_48;
                        }

                        v25 = &v65;
                        v57 = v48;
                        sub_1003AF6F4();
                        v48 = v57;
                        isUniquelyReferenced_nonNull_native = v65;
                        if (v16)
                        {
LABEL_36:
                          v42 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v48);
                          v25 = *v42;
                          *v42 = a7;
                          v42[1] = v8;

                          goto LABEL_37;
                        }

LABEL_49:
                        *(isUniquelyReferenced_nonNull_native + 8 * (v48 >> 6) + 64) |= 1 << v48;
                        *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v48) = a8;
                        v54 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v48);
                        *v54 = a7;
                        v54[1] = v8;
                        v55 = *(isUniquelyReferenced_nonNull_native + 16);
                        v30 = __OFADD__(v55, 1);
                        v56 = v55 + 1;
                        if (v30)
                        {
                          goto LABEL_55;
                        }

                        *(isUniquelyReferenced_nonNull_native + 16) = v56;
LABEL_37:
                        ++v20;
                        *(a1 + 88) = isUniquelyReferenced_nonNull_native;
                        swift_endAccess();
                        if (v27 == v20)
                        {
                          goto LABEL_35;
                        }
                      }

                      sub_10054B93C(v52, isUniquelyReferenced_nonNull_native);
                      v25 = v65;
                      v48 = sub_1003B3EDC(a8);
                      if ((v16 & 1) != (v53 & 1))
                      {
                        goto LABEL_73;
                      }

LABEL_48:
                      isUniquelyReferenced_nonNull_native = v65;
                      if (v16)
                      {
                        goto LABEL_36;
                      }

                      goto LABEL_49;
                    }

                    goto LABEL_69;
                  }
                }

                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

LABEL_66:
              v16 = sub_1003B2EA8(v16);
              goto LABEL_29;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_100058000(&qword_10076B788);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

int64_t sub_1000D8C38(int64_t a1, uint64_t a2, int64_t a3)
{
  v35 = a3;
  v36 = a2;
  v33 = a1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = qword_1007A84C0;
  swift_beginAccess();
  v12 = v5[2];
  v34 = v3;
  v12(v10, v3 + v11, v4);
  v13 = v5[13];
  v32 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v31 = v13;
  v13(v7);
  v30 = sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = v5[1];
  v15(v7, v4);
  v15(v10, v4);
  if (v14)
  {
    v16 = qword_1007A84C0;
    v17 = v12;
    v18 = v36;
    swift_beginAccess();
    v17(v10, v18 + v16, v4);
    v31(v7, v32, v4);
    LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v7, v4);
    v15(v10, v4);
    if (v18)
    {
      goto LABEL_7;
    }
  }

  if (qword_100767010 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100775D80);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Move requires expanded state", v22, 2u);
    }

LABEL_7:
    v23 = v35;
    result = v35;
    v26 = v33;
    v25 = v34;
    if (v36 == v34)
    {
      result = v35;
      if (v33 < v35)
      {
        result = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }
      }
    }

    sub_1000E609C(result, sub_10023C598);
    swift_beginAccess();
    v27 = *(v25 + 64);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) > v26)
    {
      v28 = *(v27 + 8 * v26 + 32);

LABEL_14:
      swift_endAccess();
      v29 = sub_1000D31B0(v26, sub_10023C598, sub_10023C598, sub_1003B3ED8);
      swift_weakAssign();
      sub_1000D7B88(v28, v23, sub_10023C598, &qword_10076BB78, &unk_10062FDD0, sub_100101534);

      return v29;
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  __break(1u);
  return result;
}

int64_t sub_1000D90C4(int64_t a1, uint64_t a2, int64_t a3)
{
  v35 = a3;
  v36 = a2;
  v33 = a1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = qword_1007A84C0;
  swift_beginAccess();
  v12 = v5[2];
  v34 = v3;
  v12(v10, v3 + v11, v4);
  v13 = v5[13];
  v32 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v31 = v13;
  v13(v8);
  v30 = sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = v5[1];
  v15(v8, v4);
  v15(v10, v4);
  if (v14)
  {
    v16 = qword_1007A84C0;
    v17 = v12;
    v18 = v36;
    swift_beginAccess();
    v17(v10, v18 + v16, v4);
    v31(v8, v32, v4);
    LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v8, v4);
    v15(v10, v4);
    if (v18)
    {
      goto LABEL_7;
    }
  }

  if (qword_100767010 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100775D80);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Move requires expanded state", v22, 2u);
    }

LABEL_7:
    v23 = v35;
    result = v35;
    v26 = v33;
    v25 = v34;
    if (v36 == v34)
    {
      result = v35;
      if (v33 < v35)
      {
        result = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }
      }
    }

    sub_1000E609C(result, sub_10023C598);
    swift_beginAccess();
    v27 = *(v25 + 64);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) > v26)
    {
      v28 = *(v27 + 8 * v26 + 32);

LABEL_14:
      swift_endAccess();
      v29 = sub_1000D31B0(v26, sub_10023C598, sub_10023C598, sub_1003B3ED8);
      swift_weakAssign();
      sub_1000D7B88(v28, v23, sub_10023C598, &qword_10076B788, &unk_10062FB80, sub_100101534);

      return v29;
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_1000D9550(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v177 = a3;
  v176 = a2;
  v165 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v7 - 8);
  v168 = &v153 - v8;
  v9 = type metadata accessor for IndexPath();
  v169 = *(v9 - 8);
  v170 = v9;
  __chkstk_darwin(v9);
  v166 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for TTRITreeViewExpandedState();
  v172 = *(v174 - 8);
  __chkstk_darwin(v174);
  v162 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v167 = &v153 - v13;
  __chkstk_darwin(v14);
  v171 = &v153 - v15;
  __chkstk_darwin(v16);
  v173 = &v153 - v17;
  v18 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v18 - 8);
  v20 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v153 - v22;
  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v175 = &v153 - v29;
  __chkstk_darwin(v30);
  v32 = &v153 - v31;
  sub_10000794C(a1, v23, &qword_100772140);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    v161 = v20;
    v157 = *(v25 + 32);
    v157(v32, v23, v24);
    sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
    v42 = sub_1000F4E08(v32, v41, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

    if (!v42)
    {
      (*(v25 + 8))(v32, v24);
      return;
    }

    v158 = v32;
    v160 = v24;
    v159 = v25;
    v43 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
    v45 = sub_1000F4F58(v42, v43, v44, sub_1003B3EDC);

    v46 = v42;
    v47 = v4;
    if (v45)
    {
      sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      v49 = v48;
      v50 = v161;
      if (*(v48 + 16))
      {
        v51 = sub_1003B3EDC(v46);
        if (v52)
        {
          v156 = v46;
          v53 = *(*(v49 + 56) + 8 * v51);

          v54 = 1;
          v55 = v159;
          v56 = v160;
          goto LABEL_41;
        }
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_100003E30(v72, qword_1007716F0);
      v67 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      v74 = os_log_type_enabled(v67, v73);
      v70 = v159;
      if (v74)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        v76 = "Unable to find section index.";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v67, v73, v76, v75, 2u);

        goto LABEL_38;
      }
    }

    else
    {
      Strong = swift_weakLoadStrong();
      v50 = v161;
      if (Strong)
      {
        v62 = Strong;
        swift_beginAccess();
        v63 = v62[8];

        v53 = sub_1000DBFE0(v46, v63);
        v65 = v64;

        if ((v65 & 1) == 0)
        {
          v156 = v46;
          v79 = *(*v62 + 144);
          swift_beginAccess();
          v55 = v159;
          v80 = v62 + v79;
          v56 = v160;
          (*(v159 + 16))(v50, v80, v160);

          v54 = 0;
LABEL_41:
          (*(v55 + 56))(v50, v54, 1, v56);
          v81 = qword_100771740;
          v82 = *(v47 + qword_100771740);
          if (v82)
          {
            v83 = *(v82 + 16);

            if (v83(v84))
            {
              v155 = qword_100771728;
              v85 = v47;
              v86 = swift_unknownObjectUnownedLoadStrong();
              (*(v82 + 48))(v86, v53, v50);

              v157(v175, v27, v160);
              v87 = v85;
              v88 = *(v85 + v81);
              v89 = v159;
              v90 = v158;
              v91 = v156;
              if (v88)
              {
                v92 = *(v88 + 16);

                if (v92(v93))
                {
                  v154 = v45;
                  v94 = swift_unknownObjectUnownedLoadStrong();
                  LODWORD(v155) = (*(v88 + 64))(v94, v175);

                  v95 = qword_1007A84C0;
                  swift_beginAccess();
                  v96 = v172;
                  v97 = v174;
                  v153 = *(v172 + 16);
                  v153(v173, v91 + v95, v174);
                  v98 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
                  v99 = *(v96 + 104);
                  v100 = v167;
                  v99(v167, enum case for TTRITreeViewExpandedState.notExpandable(_:), v97);
                  sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
                  v101 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v102 = *(v96 + 8);
                  v167 = (v96 + 8);
                  v157 = v102;
                  (v102)(v100, v97);
                  if (v155)
                  {
                    if (v101)
                    {
                      v103 = v99;
                      v104 = (v87 + qword_100771778);
                      swift_beginAccess();
                      v105 = *v104;
                      v106 = v104[1];

                      v107 = v163;
                      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
                      if (sub_1000A9AF8(v107, v105))
                      {
                        v108 = sub_1000A9AF8(v107, v106);

                        (*(v164 + 8))(v107, v165);
                        v109 = v174;
                        v110 = v171;
                        v111 = v168;
                        if ((v108 & 1) == 0)
                        {
                          v112 = &enum case for TTRITreeViewExpandedState.collapsed(_:);
LABEL_70:
                          v128 = v162;
                          v103(v162, *v112, v109);
                          (*(v172 + 32))(v110, v128, v109);
                          goto LABEL_71;
                        }
                      }

                      else
                      {

                        (*(v164 + 8))(v107, v165);
                        v109 = v174;
                        v110 = v171;
                        v111 = v168;
                      }

                      v112 = &enum case for TTRITreeViewExpandedState.expanded(_:);
                      goto LABEL_70;
                    }

                    v127 = v171;
                    v153(v171, v173, v174);
                    v110 = v127;
                  }

                  else
                  {
                    v110 = v171;
                    v99(v171, v98, v97);
                  }

                  v111 = v168;
LABEL_71:
                  v129 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
                  sub_1000C7C38(v91, v129, v131, v132, v130 & 1, sub_1003B3EDC, sub_1000C73C4, v111);

                  v133 = v169;
                  v134 = v170;
                  v135 = (*(v169 + 48))(v111, 1, v170);
                  v136 = v159;
                  v137 = v158;
                  if (v135 == 1)
                  {
                    sub_1000079B4(v111, &unk_100771B10);
                    if (qword_100766FC8 != -1)
                    {
                      swift_once();
                    }

                    v138 = type metadata accessor for Logger();
                    sub_100003E30(v138, qword_1007716F0);
                    v139 = Logger.logObject.getter();
                    v140 = static os_log_type_t.fault.getter();
                    if (os_log_type_enabled(v139, v140))
                    {
                      v141 = swift_slowAlloc();
                      *v141 = 0;
                      _os_log_impl(&_mh_execute_header, v139, v140, "Unable to find childrenStartIndexPath", v141, 2u);
                    }

                    v142 = v174;
                    v143 = v157;
                    (v157)(v173, v174);
                    sub_1000079B4(v161, &qword_100772140);
                    v144 = *(v136 + 8);
                    v145 = v137;
                    v146 = v160;
                    v144(v145, v160);
                    v143(v110, v142);
                  }

                  else
                  {
                    v147 = v166;
                    v148 = (*(v133 + 32))(v166, v111, v134);
                    __chkstk_darwin(v148);
                    *(&v153 - 8) = v87;
                    *(&v153 - 7) = v91;
                    *(&v153 - 6) = v175;
                    *(&v153 - 5) = v110;
                    *(&v153 - 32) = v154 & 1;
                    *(&v153 - 31) = v176 & 1;
                    *(&v153 - 3) = v177;
                    *(&v153 - 2) = v147;
                    v149 = v133;
                    sub_1000CCF14(sub_100100AAC, (&v153 - 10), 0, 0, 0, 0);

                    v150 = v174;
                    v151 = v157;
                    (v157)(v173, v174);
                    sub_1000079B4(v161, &qword_100772140);
                    v144 = *(v136 + 8);
                    v152 = v137;
                    v146 = v160;
                    v144(v152, v160);
                    (*(v149 + 8))(v147, v134);
                    v151(v110, v150);
                  }

                  v144(v175, v146);
                  return;
                }
              }

              if (qword_100766FC8 != -1)
              {
                swift_once();
              }

              v120 = type metadata accessor for Logger();
              sub_100003E30(v120, qword_1007716F0);
              v121 = Logger.logObject.getter();
              v122 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                *v123 = 0;
                _os_log_impl(&_mh_execute_header, v121, v122, "Unable to get new item.", v123, 2u);
              }

              sub_1000079B4(v161, &qword_100772140);
              v124 = *(v89 + 8);
              v125 = v90;
              v126 = v160;
              v124(v125, v160);
              v124(v175, v126);
              return;
            }
          }

          if (qword_100766FC8 != -1)
          {
            swift_once();
          }

          v113 = type metadata accessor for Logger();
          sub_100003E30(v113, qword_1007716F0);
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.fault.getter();
          v116 = os_log_type_enabled(v114, v115);
          v117 = v159;
          v118 = v158;
          if (v116)
          {
            v119 = swift_slowAlloc();
            *v119 = 0;
            _os_log_impl(&_mh_execute_header, v114, v115, "Unable to get new item.", v119, 2u);
          }

          sub_1000079B4(v161, &qword_100772140);
          (*(v117 + 8))(v118, v160);
          return;
        }

        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_100003E30(v66, qword_1007716F0);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.fault.getter();
        v69 = os_log_type_enabled(v67, v68);
        v70 = v159;
        if (v69)
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "Unable to find index in parent.", v71, 2u);

LABEL_38:

LABEL_58:
          (*(v70 + 8))(v158, v160);
          return;
        }

LABEL_57:

        goto LABEL_58;
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_100003E30(v77, qword_1007716F0);
      v67 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      v78 = os_log_type_enabled(v67, v73);
      v70 = v159;
      if (v78)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        v76 = "Unable to find parent node.";
        goto LABEL_37;
      }
    }

    goto LABEL_57;
  }

  sub_1000079B4(v23, &qword_100772140);
  v33 = *&v4[qword_100771740];
  if (v33)
  {
    v34 = v33[2];

    if (v34(v35))
    {
      if ((v176 & 1) == 0)
      {
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100003E30(v36, qword_1007716F0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Reloading the root(nil) only is not supported, treating reloadChildren as true", v39, 2u);
        }
      }

      v40 = v4;
      sub_1001A3704(0, 0, 0, 0, v40, v40, v33, v177);

      return;
    }
  }

  if (qword_100766FC8 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100003E30(v57, qword_1007716F0);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "dataSource is nil", v60, 2u);
  }
}

void sub_1000DAA98(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v177 = a3;
  v176 = a2;
  v165 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v7 - 8);
  v168 = &v153 - v8;
  v9 = type metadata accessor for IndexPath();
  v169 = *(v9 - 8);
  v170 = v9;
  __chkstk_darwin(v9);
  v166 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for TTRITreeViewExpandedState();
  v172 = *(v174 - 8);
  v11 = __chkstk_darwin(v174);
  v162 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v167 = &v153 - v14;
  v15 = __chkstk_darwin(v13);
  v171 = &v153 - v16;
  __chkstk_darwin(v15);
  v173 = &v153 - v17;
  v18 = sub_100058000(&unk_100771B40);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v153 - v22;
  v24 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v175 = &v153 - v30;
  __chkstk_darwin(v29);
  v32 = &v153 - v31;
  sub_10000794C(a1, v23, &unk_100771B40);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    v161 = v21;
    v157 = *(v25 + 32);
    v157(v32, v23, v24);
    sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
    v42 = sub_1000F4E08(v32, v41, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

    if (!v42)
    {
      (*(v25 + 8))(v32, v24);
      return;
    }

    v158 = v32;
    v160 = v24;
    v159 = v25;
    v43 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
    v45 = sub_1000F4F58(v42, v43, v44, sub_1003B3EDC);

    v46 = v42;
    v47 = v4;
    if (v45)
    {
      sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v49 = v48;
      v50 = v161;
      if (*(v48 + 16))
      {
        v51 = sub_1003B3EDC(v46);
        if (v52)
        {
          v156 = v46;
          v53 = *(*(v49 + 56) + 8 * v51);

          v54 = 1;
          v55 = v159;
          v56 = v160;
          goto LABEL_41;
        }
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_100003E30(v72, qword_1007716F0);
      v67 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      v74 = os_log_type_enabled(v67, v73);
      v70 = v159;
      if (v74)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        v76 = "Unable to find section index.";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v67, v73, v76, v75, 2u);

        goto LABEL_38;
      }
    }

    else
    {
      Strong = swift_weakLoadStrong();
      v50 = v161;
      if (Strong)
      {
        v62 = Strong;
        swift_beginAccess();
        v63 = v62[8];

        v53 = sub_1000DBFE0(v46, v63);
        v65 = v64;

        if ((v65 & 1) == 0)
        {
          v156 = v46;
          v79 = *(*v62 + 144);
          swift_beginAccess();
          v55 = v159;
          v80 = v62 + v79;
          v56 = v160;
          (*(v159 + 16))(v50, v80, v160);

          v54 = 0;
LABEL_41:
          (*(v55 + 56))(v50, v54, 1, v56);
          v81 = qword_100771740;
          v82 = *(v47 + qword_100771740);
          if (v82)
          {
            v83 = *(v82 + 16);

            if (v83(v84))
            {
              v155 = qword_100771728;
              v85 = v47;
              v86 = swift_unknownObjectUnownedLoadStrong();
              (*(v82 + 48))(v86, v53, v50);

              v157(v175, v28, v160);
              v87 = v85;
              v88 = *(v85 + v81);
              v89 = v159;
              v90 = v158;
              v91 = v156;
              if (v88)
              {
                v92 = *(v88 + 16);

                if (v92(v93))
                {
                  v154 = v45;
                  v94 = swift_unknownObjectUnownedLoadStrong();
                  LODWORD(v155) = (*(v88 + 64))(v94, v175);

                  v95 = qword_1007A84C0;
                  swift_beginAccess();
                  v96 = v172;
                  v97 = v174;
                  v153 = *(v172 + 16);
                  v153(v173, v91 + v95, v174);
                  v98 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
                  v99 = *(v96 + 104);
                  v100 = v167;
                  v99(v167, enum case for TTRITreeViewExpandedState.notExpandable(_:), v97);
                  sub_1001013F4(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
                  v101 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v102 = *(v96 + 8);
                  v167 = (v96 + 8);
                  v157 = v102;
                  (v102)(v100, v97);
                  if (v155)
                  {
                    if (v101)
                    {
                      v103 = v99;
                      v104 = (v87 + qword_100771778);
                      swift_beginAccess();
                      v105 = *v104;
                      v106 = v104[1];

                      v107 = v163;
                      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
                      if (sub_1000AA574(v107, v105))
                      {
                        v108 = sub_1000AA574(v107, v106);

                        (*(v164 + 8))(v107, v165);
                        v109 = v174;
                        v110 = v171;
                        v111 = v168;
                        if ((v108 & 1) == 0)
                        {
                          v112 = &enum case for TTRITreeViewExpandedState.collapsed(_:);
LABEL_70:
                          v128 = v162;
                          v103(v162, *v112, v109);
                          (*(v172 + 32))(v110, v128, v109);
                          goto LABEL_71;
                        }
                      }

                      else
                      {

                        (*(v164 + 8))(v107, v165);
                        v109 = v174;
                        v110 = v171;
                        v111 = v168;
                      }

                      v112 = &enum case for TTRITreeViewExpandedState.expanded(_:);
                      goto LABEL_70;
                    }

                    v127 = v171;
                    v153(v171, v173, v174);
                    v110 = v127;
                  }

                  else
                  {
                    v110 = v171;
                    v99(v171, v98, v97);
                  }

                  v111 = v168;
LABEL_71:
                  v129 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
                  sub_1000C7C38(v91, v129, v131, v132, v130 & 1, sub_1003B3EDC, sub_1000C77E8, v111);

                  v133 = v169;
                  v134 = v170;
                  v135 = (*(v169 + 48))(v111, 1, v170);
                  v136 = v159;
                  v137 = v158;
                  if (v135 == 1)
                  {
                    sub_1000079B4(v111, &unk_100771B10);
                    if (qword_100766FC8 != -1)
                    {
                      swift_once();
                    }

                    v138 = type metadata accessor for Logger();
                    sub_100003E30(v138, qword_1007716F0);
                    v139 = Logger.logObject.getter();
                    v140 = static os_log_type_t.fault.getter();
                    if (os_log_type_enabled(v139, v140))
                    {
                      v141 = swift_slowAlloc();
                      *v141 = 0;
                      _os_log_impl(&_mh_execute_header, v139, v140, "Unable to find childrenStartIndexPath", v141, 2u);
                    }

                    v142 = v174;
                    v143 = v157;
                    (v157)(v173, v174);
                    sub_1000079B4(v161, &unk_100771B40);
                    v144 = *(v136 + 8);
                    v145 = v137;
                    v146 = v160;
                    v144(v145, v160);
                    v143(v110, v142);
                  }

                  else
                  {
                    v147 = v166;
                    v148 = (*(v133 + 32))(v166, v111, v134);
                    __chkstk_darwin(v148);
                    *(&v153 - 8) = v87;
                    *(&v153 - 7) = v91;
                    *(&v153 - 6) = v175;
                    *(&v153 - 5) = v110;
                    *(&v153 - 32) = v154 & 1;
                    *(&v153 - 31) = v176 & 1;
                    *(&v153 - 3) = v177;
                    *(&v153 - 2) = v147;
                    v149 = v133;
                    sub_1000CD5E4(sub_100100500, (&v153 - 10), 0, 0, 0, 0);

                    v150 = v174;
                    v151 = v157;
                    (v157)(v173, v174);
                    sub_1000079B4(v161, &unk_100771B40);
                    v144 = *(v136 + 8);
                    v152 = v137;
                    v146 = v160;
                    v144(v152, v160);
                    (*(v149 + 8))(v147, v134);
                    v151(v110, v150);
                  }

                  v144(v175, v146);
                  return;
                }
              }

              if (qword_100766FC8 != -1)
              {
                swift_once();
              }

              v120 = type metadata accessor for Logger();
              sub_100003E30(v120, qword_1007716F0);
              v121 = Logger.logObject.getter();
              v122 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                *v123 = 0;
                _os_log_impl(&_mh_execute_header, v121, v122, "Unable to get new item.", v123, 2u);
              }

              sub_1000079B4(v161, &unk_100771B40);
              v124 = *(v89 + 8);
              v125 = v90;
              v126 = v160;
              v124(v125, v160);
              v124(v175, v126);
              return;
            }
          }

          if (qword_100766FC8 != -1)
          {
            swift_once();
          }

          v113 = type metadata accessor for Logger();
          sub_100003E30(v113, qword_1007716F0);
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.fault.getter();
          v116 = os_log_type_enabled(v114, v115);
          v117 = v159;
          v118 = v158;
          if (v116)
          {
            v119 = swift_slowAlloc();
            *v119 = 0;
            _os_log_impl(&_mh_execute_header, v114, v115, "Unable to get new item.", v119, 2u);
          }

          sub_1000079B4(v161, &unk_100771B40);
          (*(v117 + 8))(v118, v160);
          return;
        }

        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_100003E30(v66, qword_1007716F0);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.fault.getter();
        v69 = os_log_type_enabled(v67, v68);
        v70 = v159;
        if (v69)
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "Unable to find index in parent.", v71, 2u);

LABEL_38:

LABEL_58:
          (*(v70 + 8))(v158, v160);
          return;
        }

LABEL_57:

        goto LABEL_58;
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_100003E30(v77, qword_1007716F0);
      v67 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      v78 = os_log_type_enabled(v67, v73);
      v70 = v159;
      if (v78)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        v76 = "Unable to find parent node.";
        goto LABEL_37;
      }
    }

    goto LABEL_57;
  }

  sub_1000079B4(v23, &unk_100771B40);
  v33 = *&v4[qword_100771740];
  if (v33)
  {
    v34 = v33[2];

    if (v34(v35))
    {
      if ((v176 & 1) == 0)
      {
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100003E30(v36, qword_1007716F0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Reloading the root(nil) only is not supported, treating reloadChildren as true", v39, 2u);
        }
      }

      v40 = v4;
      sub_1001A1E1C(0, 0, 0, 0, v40, v40, v33, v177);

      return;
    }
  }

  if (qword_100766FC8 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100003E30(v57, qword_1007716F0);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "dataSource is nil", v60, 2u);
  }
}

unint64_t sub_1000DBFE0(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a2 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == *(v7 + 16))
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(*(a2 + 8 * v4 + 32) + 16) == *(a1 + 16))
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_1000DC16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a3(0) - 8);
  v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  sub_1001013F4(a4, a5);
  v12 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v12;
    v10 += v11;
    if (v5 == v12)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_1000DC280(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  v116 = a8;
  LODWORD(v127) = a7;
  v114 = a6;
  v128 = a5;
  v126 = a4;
  v115 = a1;
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v122 = &v104 - v12;
  v13 = type metadata accessor for TTRITreeViewExpandedState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v130 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v125 = (&v104 - v17);
  v18 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v138 = *(v18 - 8);
  __chkstk_darwin(v18);
  v120 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v104 - v21;
  v23 = type metadata accessor for TTRRemindersListViewModel.Item();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v132 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v104 - v27;
  *&v141 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  *(&v141 + 1) = v29;
  v142 = v30;
  v143 = v31 & 1;
  v113 = qword_100771768;
  v118 = a2;
  *(a2 + qword_100771768) = 1;
  v32 = *(*a3 + 144);
  swift_beginAccess();
  v33 = *(v24 + 16);
  v135 = v24 + 16;
  v134 = v33;
  v33(v28, a3 + v32, v23);
  swift_beginAccess();
  v117 = v24;
  v34 = v24;
  v35 = v138;
  v36 = *(v34 + 24);
  v133 = v23;
  v36(a3 + v32);
  swift_endAccess();
  v37 = qword_1007A84C0;
  swift_beginAccess();
  v124 = v14;
  v38 = *(v14 + 24);
  v131 = v13;
  v38(a3 + v37, v128, v13);
  swift_endAccess();
  v112 = v28;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  LOBYTE(a2) = sub_1000C687C(v22, a3);
  v41 = *(v35 + 8);
  v40 = v35 + 8;
  v39 = v41;
  v136 = v22;
  v137 = v18;
  v41(v22, v18);
  if (a2)
  {
    v42 = v136;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    sub_1000C6E2C(v42, a3);
    v39(v42, v137);
  }

  v43 = v127;
  if (v114 & 1) == 0 || (v127)
  {
    sub_1000AAD80(a3, 3u, v116, 0);
  }

  else
  {
    v44 = v115;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *(v44 + 96);
    *(v44 + 96) = 0x8000000000000000;
    sub_100126EE0(v116, 0, a3, isUniquelyReferenced_nonNull_native);
    *(v44 + 96) = v139;
    swift_endAccess();
  }

  v46 = v118;
  if (*(v118 + qword_100771788) == 1)
  {
    swift_beginAccess();
    sub_1000C98A8(a3);
    swift_endAccess();
  }

  if ((v43 & 1) == 0)
  {
    (*(v117 + 8))(v112, v133);
    goto LABEL_45;
  }

  v47 = sub_1000DE000(sub_10023C598);
  v127 = a9;
  v109 = sub_1000C5F2C(a9, v47);
  v111 = v48;
  v50 = v49;
  v52 = v51;
  v53 = (v46 + qword_100771778);
  swift_beginAccess();
  v54 = v53[1];
  v140 = *v53;
  v108 = v52;
  v110 = v50;
  v55 = (v52 >> 1) - v50;
  v107 = a3;
  v138 = v40;
  v106 = v53;
  v105 = v54;
  if (v52 >> 1 == v50)
  {

    v56 = v39;
  }

  else
  {
    if ((v52 >> 1) <= v50)
    {
      __break(1u);
LABEL_47:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v57 = (v117 + 8);

    v58 = (v111 + 8 * v110);
    v56 = v39;
    v59 = v122;
    v60 = v133;
    v61 = v132;
    do
    {
      v62 = *v58++;
      v63 = *(*v62 + 144);
      swift_beginAccess();
      v134(v61, v62 + v63, v60);

      v64 = v136;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v57)(v61, v60);
      sub_1000E992C(v64, v59);

      v56(v64, v137);
      sub_1000079B4(v59, &unk_10076BB50);
      --v55;
    }

    while (v55);
  }

  v129 = v56;
  sub_100058000(&unk_10076BBA0);
  swift_allocObject();
  v65 = swift_unknownObjectRetain();
  v66 = sub_100100518(v65, v111, v110, v108, &qword_10076BB78, &unk_10062FDD0, sub_1003B3ED8);
  swift_unknownObjectRelease();
  v67 = v124;
  v68 = *(v124 + 104);
  v69 = v125;
  v119 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v70 = v131;
  v68(v125);
  v71 = static TTRITreeViewExpandedState.== infix(_:_:)();
  (*(v67 + 8))(v69, v70);
  if (v71)
  {
    v72 = sub_1000C8CBC(v107, v66);
  }

  else
  {
    v72 = _swiftEmptyArrayStorage;
  }

  v73 = v132;
  v74 = sub_1000DE088(v72, sub_100101534);

  v75 = IndexPath.section.getter();

  v76 = IndexPath.row.getter();
  v77 = v141;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_38;
  }

  if ((v75 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  do
  {
    v79 = _CocoaArrayWrapper.endIndex.getter();
    if (!v79)
    {
      goto LABEL_42;
    }

LABEL_24:
    v75 = 0;
    v128 = v74 & 0xC000000000000001;
    v127 = v74 & 0xFFFFFFFFFFFFFF8;
    v125 = (v67 + 16);
    v124 = v67 + 88;
    v123 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
    v121 = enum case for TTRITreeViewExpandedState.collapsed(_:);
    v66 = (v117 + 8);
    v126 = v74;
    while (v128)
    {
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v76 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_36;
      }

LABEL_31:
      v84 = qword_1007A84C0;
      swift_beginAccess();
      v85 = v77 + v84;
      v86 = v130;
      v87 = v131;
      (*v125)(v130, v85, v131);
      v88 = v86;
      v67 = v137;
      v89 = (*v124)(v88, v87);
      if (v89 != v123)
      {
        if (v89 == v121)
        {
          v90 = *(*v77 + 144);
          swift_beginAccess();
          v91 = v133;
          v134(v73, v77 + v90, v133);
          v92 = v73;
          v93 = v136;
          v94 = v120;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
          (*v66)(v92, v91);
          sub_10058B6B8(v93, v94);

          v129(v93, v67);
          goto LABEL_27;
        }

        if (v89 != v119)
        {
          goto LABEL_47;
        }
      }

      v80 = *(*v77 + 144);
      swift_beginAccess();
      v81 = v133;
      v134(v73, v77 + v80, v133);
      v82 = v136;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v66)(v73, v81);
      v83 = v122;
      sub_1000E992C(v82, v122);

      v129(v82, v67);
      sub_1000079B4(v83, &unk_10076BB50);
LABEL_27:
      ++v75;
      v73 = v132;
      v74 = v126;
      if (v76 == v79)
      {
        goto LABEL_42;
      }
    }

    if (v75 >= *(v127 + 16))
    {
      goto LABEL_37;
    }

    v77 = *(v74 + 8 * v75 + 32);

    v76 = v75 + 1;
    if (!__OFADD__(v75, 1))
    {
      goto LABEL_31;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v77 = sub_1003B2E94(v77);
    if ((v75 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

LABEL_21:
    if (v75 >= v77[2])
    {
      goto LABEL_40;
    }

    v104 = v66;
    sub_1000FF698(v76, v76, v74, &qword_10076BB78, &unk_10062FDD0, sub_1001009E0, sub_1003B3EE4);

    *&v141 = v77;
    v78 = IndexPath.section.getter();
    sub_1000C4C10(v74, v78);
  }

  while (v74 >> 62);
  v79 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
    goto LABEL_24;
  }

LABEL_42:
  v95 = v106;
  v96 = v105;
  *v106 = v140;
  v95[1] = v96;

  v97 = v116;
  if (v114)
  {
    sub_1000ABA00(v107, 3u, v116, 0);
  }

  sub_1000F2CA4(v111, v110, v108, 3, v97, 0);
  sub_1000AB0F8(v74, 3, v97, 0);
  swift_unknownObjectRelease();

  (*(v117 + 8))(v112, v133);
  v46 = v118;
LABEL_45:
  v98 = v113;
  v99 = v142;
  v100 = v143;
  v101 = v46 + qword_100771760;
  v102 = *(v46 + qword_100771760);
  *v101 = v141;
  *(v101 + 16) = v99;
  *(v101 + 24) = v100;
  result = sub_100100898(v102);
  *(v46 + v98) = 0;
  return result;
}

uint64_t sub_1000DD140(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  v116 = a8;
  LODWORD(v127) = a7;
  v114 = a6;
  v128 = a5;
  v126 = a4;
  v115 = a1;
  v11 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v11 - 8);
  v122 = &v104 - v12;
  v13 = type metadata accessor for TTRITreeViewExpandedState();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v130 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v125 = (&v104 - v17);
  v18 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v138 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v120 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v104 - v21;
  v23 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v132 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v104 - v27;
  *&v141 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  *(&v141 + 1) = v29;
  v142 = v30;
  v143 = v31 & 1;
  v113 = qword_100771768;
  v118 = a2;
  *(a2 + qword_100771768) = 1;
  v32 = *(*a3 + 144);
  swift_beginAccess();
  v33 = *(v24 + 16);
  v135 = v24 + 16;
  v134 = v33;
  v33(v28, a3 + v32, v23);
  swift_beginAccess();
  v117 = v24;
  v34 = v24;
  v35 = v138;
  v36 = *(v34 + 24);
  v133 = v23;
  v36(a3 + v32);
  swift_endAccess();
  v37 = qword_1007A84C0;
  swift_beginAccess();
  v124 = v14;
  v38 = *(v14 + 24);
  v131 = v13;
  v38(a3 + v37, v128, v13);
  swift_endAccess();
  v112 = v28;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  LOBYTE(a2) = sub_1000C6B54(v22, a3);
  v41 = *(v35 + 8);
  v40 = v35 + 8;
  v39 = v41;
  v136 = v22;
  v137 = v18;
  v41(v22, v18);
  if (a2)
  {
    v42 = v136;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    sub_1000C70F8(v42, a3);
    v39(v42, v137);
  }

  v43 = v127;
  if (v114 & 1) == 0 || (v127)
  {
    sub_1000AAF3C(a3, 3u, v116, 0);
  }

  else
  {
    v44 = v115;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *(v44 + 96);
    *(v44 + 96) = 0x8000000000000000;
    sub_1001279DC(v116, 0, a3, isUniquelyReferenced_nonNull_native);
    *(v44 + 96) = v139;
    swift_endAccess();
  }

  v46 = v118;
  if (*(v118 + qword_100771788) == 1)
  {
    swift_beginAccess();
    sub_1000C9CD0(a3);
    swift_endAccess();
  }

  if ((v43 & 1) == 0)
  {
    (*(v117 + 8))(v112, v133);
    goto LABEL_45;
  }

  v47 = sub_1000DE000(sub_10023C598);
  v127 = a9;
  v109 = sub_1000C63D4(a9, v47);
  v111 = v48;
  v50 = v49;
  v52 = v51;
  v53 = (v46 + qword_100771778);
  swift_beginAccess();
  v54 = v53[1];
  v140 = *v53;
  v108 = v52;
  v110 = v50;
  v55 = (v52 >> 1) - v50;
  v107 = a3;
  v138 = v40;
  v106 = v53;
  v105 = v54;
  if (v52 >> 1 == v50)
  {

    v56 = v39;
  }

  else
  {
    if ((v52 >> 1) <= v50)
    {
      __break(1u);
LABEL_47:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v57 = (v117 + 8);

    v58 = (v111 + 8 * v110);
    v56 = v39;
    v59 = v122;
    v60 = v133;
    v61 = v132;
    do
    {
      v62 = *v58++;
      v63 = *(*v62 + 144);
      swift_beginAccess();
      v134(v61, v62 + v63, v60);

      v64 = v136;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      (*v57)(v61, v60);
      sub_1000E9DB0(v64, v59);

      v56(v64, v137);
      sub_1000079B4(v59, &qword_10076B8B0);
      --v55;
    }

    while (v55);
  }

  v129 = v56;
  sub_100058000(&unk_10076B770);
  swift_allocObject();
  v65 = swift_unknownObjectRetain();
  v66 = sub_100100518(v65, v111, v110, v108, &qword_10076B788, &unk_10062FB80, sub_1003B3ED8);
  swift_unknownObjectRelease();
  v67 = v124;
  v68 = *(v124 + 104);
  v69 = v125;
  v119 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v70 = v131;
  v68(v125);
  v71 = static TTRITreeViewExpandedState.== infix(_:_:)();
  (*(v67 + 8))(v69, v70);
  if (v71)
  {
    v72 = sub_1000C9088(v107, v66);
  }

  else
  {
    v72 = &_swiftEmptyArrayStorage;
  }

  v73 = v132;
  v74 = sub_1000DE088(v72, sub_100101534);

  v75 = IndexPath.section.getter();

  v76 = IndexPath.row.getter();
  v77 = v141;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_38;
  }

  if ((v75 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  do
  {
    v79 = _CocoaArrayWrapper.endIndex.getter();
    if (!v79)
    {
      goto LABEL_42;
    }

LABEL_24:
    v75 = 0;
    v128 = v74 & 0xC000000000000001;
    v127 = v74 & 0xFFFFFFFFFFFFFF8;
    v125 = (v67 + 16);
    v124 = v67 + 88;
    v123 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
    v121 = enum case for TTRITreeViewExpandedState.collapsed(_:);
    v66 = (v117 + 8);
    v126 = v74;
    while (v128)
    {
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v76 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_36;
      }

LABEL_31:
      v84 = qword_1007A84C0;
      swift_beginAccess();
      v85 = v77 + v84;
      v86 = v130;
      v87 = v131;
      (*v125)(v130, v85, v131);
      v88 = v86;
      v67 = v137;
      v89 = (*v124)(v88, v87);
      if (v89 != v123)
      {
        if (v89 == v121)
        {
          v90 = *(*v77 + 144);
          swift_beginAccess();
          v91 = v133;
          v134(v73, v77 + v90, v133);
          v92 = v73;
          v93 = v136;
          v94 = v120;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          (*v66)(v92, v91);
          sub_10058C648(v93, v94);

          v129(v93, v67);
          goto LABEL_27;
        }

        if (v89 != v119)
        {
          goto LABEL_47;
        }
      }

      v80 = *(*v77 + 144);
      swift_beginAccess();
      v81 = v133;
      v134(v73, v77 + v80, v133);
      v82 = v136;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      (*v66)(v73, v81);
      v83 = v122;
      sub_1000E9DB0(v82, v122);

      v129(v82, v67);
      sub_1000079B4(v83, &qword_10076B8B0);
LABEL_27:
      ++v75;
      v73 = v132;
      v74 = v126;
      if (v76 == v79)
      {
        goto LABEL_42;
      }
    }

    if (v75 >= *(v127 + 16))
    {
      goto LABEL_37;
    }

    v77 = *(v74 + 8 * v75 + 32);

    v76 = v75 + 1;
    if (!__OFADD__(v75, 1))
    {
      goto LABEL_31;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v77 = sub_1003B2EA8(v77);
    if ((v75 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

LABEL_21:
    if (v75 >= v77[2])
    {
      goto LABEL_40;
    }

    v104 = v66;
    sub_1000FF698(v76, v76, v74, &qword_10076B788, &unk_10062FB80, sub_1000FF7D8, sub_1003B3EE4);

    *&v141 = v77;
    v78 = IndexPath.section.getter();
    sub_1000C4FC8(v74, v78);
  }

  while (v74 >> 62);
  v79 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
    goto LABEL_24;
  }

LABEL_42:
  v95 = v106;
  v96 = v105;
  *v106 = v140;
  v95[1] = v96;

  v97 = v116;
  if (v114)
  {
    sub_1000ABBBC(v107, 3u, v116, 0);
  }

  sub_1000F30A0(v111, v110, v108, 3, v97, 0);
  sub_1000AB57C(v74, 3, v97, 0);
  swift_unknownObjectRelease();

  (*(v117 + 8))(v112, v133);
  v46 = v118;
LABEL_45:
  v98 = v113;
  v99 = v142;
  v100 = v143;
  v101 = v46 + qword_100771760;
  v102 = *(v46 + qword_100771760);
  *v101 = v141;
  *(v101 + 16) = v99;
  *(v101 + 24) = v100;
  result = sub_100100898(v102);
  *(v46 + v98) = 0;
  return result;
}