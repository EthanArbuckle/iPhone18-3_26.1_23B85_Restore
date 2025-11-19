uint64_t sub_1000DE000(void (*a1)(uint64_t, void *))
{
  if (*(v1 + 48) == 1)
  {
    v4[0] = 0;
    a1(v1, v4);
    v2 = v4[0];
    *(v1 + 40) = v4[0];
    *(v1 + 48) = 0;
  }

  else
  {
    v2 = *(v1 + 40);
  }

  swift_beginAccess();
  *(v1 + 64) = &_swiftEmptyArrayStorage;

  return v2;
}

void *sub_1000DE088(uint64_t a1, void (*a2)(void **))
{
  swift_beginAccess();
  *(v2 + 64) = a1;

  v9 = &_swiftEmptyArrayStorage;
  a2(&v9);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    do
    {
      *(v6 + 40) = 0;
      *(v6 + 48) = 1;
      v7 = swift_weakLoadStrong();

      v6 = v7;
    }

    while (v7);
  }

  return v9;
}

void sub_1000DE144(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + qword_100771740);
  if (v12)
  {
    v13 = *(v12 + 16);

    if (v13(v14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      (*(v9 + 56))(v7, 1, 1, v8);
      (*(v12 + 48))(Strong, a1, v7);

      sub_1000079B4(v7, &qword_100772140);
      sub_1000D0798(v11, 0, a2);
      v18 = _swiftEmptyArrayStorage;
      sub_10003C8CC(&v18);

      (*(v9 + 8))(v11, v8);
      return;
    }
  }

  if (qword_100766FC8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_1007716F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Need non-nil dataSource here", 28, 2);
  __break(1u);
}

void sub_1000DE3CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + qword_100771740);
  if (v12)
  {
    v13 = *(v12 + 16);

    if (v13(v14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      (*(v9 + 56))(v7, 1, 1, v8);
      (*(v12 + 48))(Strong, a1, v7);

      sub_1000079B4(v7, &unk_100771B40);
      sub_1000D0BC8(v11, 0, a2);
      v18 = &_swiftEmptyArrayStorage;
      sub_10003C8CC(&v18);

      (*(v9 + 8))(v11, v8);
      return;
    }
  }

  if (qword_100766FC8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_1007716F0);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_1003F9818("Need non-nil dataSource here", 28, 2);
  __break(1u);
}

id sub_1000DE654(uint64_t a1)
{
  v3 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  v12 = v11;
  v14 = v13;
  v16 = sub_1000F4E08(a1, v15, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);
  if (!v16)
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_5;
  }

  sub_1000C73C4(v16, v14 & 1, v10, v12, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

LABEL_5:
    sub_1000079B4(v5, &unk_100771B10);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v18 = *(v1 + qword_100771730);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 cellForRowAtIndexPath:isa];

  (*(v7 + 8))(v9, v6);
  return v20;
}

id sub_1000DE964(uint64_t a1)
{
  v3 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  v12 = v11;
  v14 = v13;
  v16 = sub_1000F4E08(a1, v15, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);
  if (!v16)
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_5;
  }

  sub_1000C77E8(v16, v14 & 1, v10, v12, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

LABEL_5:
    sub_1000079B4(v5, &unk_100771B10);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v18 = *(v1 + qword_100771730);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 cellForRowAtIndexPath:isa];

  (*(v7 + 8))(v9, v6);
  return v20;
}

uint64_t sub_1000DEC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000F4E08(a1, a3, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);
  if (result)
  {
    v8 = result;
    v9 = sub_1002EF9DC(result, a2, a4);
    if (v9 && (v10 = v9, , v10 == v8) && *(a4 + 16) && (v11 = sub_1003B3EDC(v8), (v12 & 1) != 0))
    {
      v13 = [*(v4 + qword_100771730) footerViewForSection:*(*(a4 + 56) + 8 * v11)];

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000DED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000F4E08(a1, a3, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);
  if (result)
  {
    v8 = result;
    v9 = sub_1002EF9DC(result, a2, a4);
    if (v9 && (v10 = v9, , v10 == v8) && *(a4 + 16) && (v11 = sub_1003B3EDC(v8), (v12 & 1) != 0))
    {
      v13 = [*(v4 + qword_100771730) footerViewForSection:*(*(a4 + 56) + 8 * v11)];

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1000DEE9C(char a1)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v38 - v9;
  v10 = type metadata accessor for IndexPath();
  v52 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v54 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v1;
  v13 = [*(v1 + qword_100771730) indexPathsForSelectedRows];
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = v13;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_4;
  }

LABEL_5:
  v49 = *(v15 + 16);
  if (v49)
  {
    v17 = 0;
    v48 = v52 + 16;
    v39 = (v42 + 16);
    v45 = (v52 + 8);
    v46 = (v42 + 56);
    v43 = (v42 + 32);
    v44 = (v42 + 48);
    v18 = _swiftEmptyArrayStorage;
    v40 = v5;
    v47 = v6;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v15 = sub_1003B2E80(v15);
LABEL_4:
        v16 = *(v15 + 16);
        v55[0] = v15 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
        v55[1] = v16;
        sub_1000EC324(v55);
        goto LABEL_5;
      }

      v53 = v18;
      v19 = v15;
      v20 = v15 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v17;
      v15 = v54;
      v21 = v10;
      (*(v52 + 16))(v54, v20, v10);
      v6 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      v10 = v22;
      v23 = *(v6 + 16);
      v24 = IndexPath.section.getter();
      if (v24 < 0 || v24 >= v23)
      {
        break;
      }

      v25 = IndexPath.section.getter();
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v25 >= *(v6 + 16))
      {
        goto LABEL_41;
      }

      v15 = *(v6 + 16 * v25 + 40);
      if (v15 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
        if (v36 < 0)
        {
          goto LABEL_42;
        }

        v26 = v36;
      }

      else
      {
        v26 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = IndexPath.row.getter();
      if ((v27 & 0x8000000000000000) != 0 || v27 >= v26)
      {

        v5 = v40;
        goto LABEL_25;
      }

      v28 = IndexPath.row.getter();
      v5 = v40;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v28 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v29 = *(v15 + 8 * v28 + 32);
      }

      v30 = *(*v29 + 144);
      swift_beginAccess();
      v6 = v47;
      (*v39)(v5, v29 + v30, v47);

      v31 = 0;
      v10 = v21;
      v15 = v19;
LABEL_26:
      v18 = v53;
      (*v46)(v5, v31, 1, v6);
      (*v45)(v54, v10);
      if ((*v44)(v5, 1, v6) == 1)
      {
        sub_1000079B4(v5, &qword_100772140);
      }

      else
      {
        v32 = *v43;
        v33 = v41;
        (*v43)(v41, v5, v6);
        v32(v50, v33, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100547094(0, v18[2] + 1, 1, v18);
        }

        v35 = v18[2];
        v34 = v18[3];
        if (v35 >= v34 >> 1)
        {
          v18 = sub_100547094(v34 > 1, v35 + 1, 1, v18);
        }

        v18[2] = v35 + 1;
        v32(v18 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v35, v50, v6);
      }

      if (v49 == ++v17)
      {
        goto LABEL_37;
      }
    }

LABEL_25:
    v15 = v19;

    v31 = 1;
    v10 = v21;
    v6 = v47;
    goto LABEL_26;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_37:

  return v18;
}

void *sub_1000DF504(char a1)
{
  v3 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v41 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = type metadata accessor for IndexPath();
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  v12 = [*(v1 + qword_100771730) indexPathsForSelectedRows];
  if (!v12)
  {
    return &_swiftEmptyArrayStorage;
  }

  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_4;
  }

LABEL_5:
  v48 = *(v14 + 16);
  if (v48)
  {
    v16 = 0;
    v47 = v51 + 16;
    v38 = (v41 + 16);
    v44 = (v51 + 8);
    v45 = (v41 + 56);
    v42 = (v41 + 32);
    v43 = (v41 + 48);
    v17 = &_swiftEmptyArrayStorage;
    v39 = v5;
    v46 = v6;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v14 = sub_1003B2E80(v14);
LABEL_4:
        v15 = *(v14 + 16);
        v54[0] = v14 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v54[1] = v15;
        sub_1000EC324(v54);
        goto LABEL_5;
      }

      v52 = v17;
      v18 = v14;
      v19 = v14 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v16;
      v14 = v53;
      v20 = v10;
      (*(v51 + 16))(v53, v19, v10);
      v6 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v10 = v21;
      v22 = *(v6 + 16);
      v23 = IndexPath.section.getter();
      if (v23 < 0 || v23 >= v22)
      {
        break;
      }

      v24 = IndexPath.section.getter();
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v24 >= *(v6 + 16))
      {
        goto LABEL_41;
      }

      v14 = *(v6 + 16 * v24 + 40);
      if (v14 >> 62)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
        if (v35 < 0)
        {
          goto LABEL_42;
        }

        v25 = v35;
      }

      else
      {
        v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = IndexPath.row.getter();
      if ((v26 & 0x8000000000000000) != 0 || v26 >= v25)
      {

        v5 = v39;
        goto LABEL_25;
      }

      v27 = IndexPath.row.getter();
      v5 = v39;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v27 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v28 = *(v14 + 8 * v27 + 32);
      }

      v29 = *(*v28 + 144);
      swift_beginAccess();
      v6 = v46;
      (*v38)(v5, v28 + v29, v46);

      v30 = 0;
      v10 = v20;
      v14 = v18;
LABEL_26:
      v17 = v52;
      (*v45)(v5, v30, 1, v6);
      (*v44)(v53, v10);
      if ((*v43)(v5, 1, v6) == 1)
      {
        sub_1000079B4(v5, &unk_100771B40);
      }

      else
      {
        v31 = *v42;
        v32 = v40;
        (*v42)(v40, v5, v6);
        v31(v49, v32, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100547678(0, v17[2] + 1, 1, v17);
        }

        v34 = v17[2];
        v33 = v17[3];
        if (v34 >= v33 >> 1)
        {
          v17 = sub_100547678(v33 > 1, v34 + 1, 1, v17);
        }

        v17[2] = v34 + 1;
        v31(v17 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34, v49, v6);
      }

      if (v48 == ++v16)
      {
        goto LABEL_37;
      }
    }

LABEL_25:
    v14 = v18;

    v30 = 1;
    v10 = v20;
    v6 = v46;
    goto LABEL_26;
  }

  v17 = &_swiftEmptyArrayStorage;
LABEL_37:

  return v17;
}

uint64_t sub_1000DFB6C(uint64_t a1, int a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_100058000(&unk_100771B10);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  sub_10000794C(a1, v11, &unk_100771B40);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    v18 = type metadata accessor for IndexPath();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = v39;
  }

  else
  {
    v20 = *(v6 + 32);
    v36 = v5;
    v20(v8, v11, v5);
    v37 = v3;
    v21 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
    v23 = v22;
    v25 = v24;
    v27 = sub_1000F4E08(v8, v26, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);
    if (v27)
    {
      sub_1000C77E8(v27, v25 & 1, v21, v23, v17);
    }

    else
    {

      v28 = type metadata accessor for IndexPath();
      (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    }

    (*(v6 + 8))(v8, v36);
    v19 = v39;
    v3 = v37;
  }

  v29 = *(v3 + qword_100771730);
  sub_10000794C(v17, v15, &unk_100771B10);
  v30 = type metadata accessor for IndexPath();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v15, 1, v30);
  v33 = v29;
  isa = 0;
  if (v32 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v31 + 8))(v15, v30);
  }

  [v33 selectRowAtIndexPath:isa animated:v38 & 1 scrollPosition:v19];

  return sub_1000079B4(v17, &unk_100771B10);
}

uint64_t sub_1000E0004(uint64_t a1, int a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_10000794C(a1, v11, &qword_100772140);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    v18 = type metadata accessor for IndexPath();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = v39;
  }

  else
  {
    v20 = *(v6 + 32);
    v36 = v5;
    v20(v8, v11, v5);
    v37 = v3;
    v21 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
    v23 = v22;
    v25 = v24;
    v27 = sub_1000F4E08(v8, v26, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);
    if (v27)
    {
      sub_1000C73C4(v27, v25 & 1, v21, v23, v17);
    }

    else
    {

      v28 = type metadata accessor for IndexPath();
      (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    }

    (*(v6 + 8))(v8, v36);
    v19 = v39;
    v3 = v37;
  }

  v29 = *(v3 + qword_100771730);
  sub_10000794C(v17, v14, &unk_100771B10);
  v30 = type metadata accessor for IndexPath();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v14, 1, v30);
  v33 = v29;
  isa = 0;
  if (v32 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v31 + 8))(v14, v30);
  }

  [v33 selectRowAtIndexPath:isa animated:v38 & 1 scrollPosition:v19];

  return sub_1000079B4(v17, &unk_100771B10);
}

uint64_t sub_1000E049C(uint64_t a1, char *a2, uint64_t a3)
{
  v59 = a2;
  v5 = sub_100058000(&unk_10076B8D0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  __chkstk_darwin(v17);
  v60 = &v50 - v18;
  v19 = type metadata accessor for TTRITreeViewCellModel();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v57 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v50 - v23;
  sub_10000794C(a1, &v67, &qword_10076AE40);
  if (!v68)
  {
    v33 = &qword_10076AE40;
    v34 = &v67;
LABEL_8:
    sub_1000079B4(v34, v33);
    return 0;
  }

  sub_100007DD8(&v67, v69);
  sub_1000046FC(v69, &v61);
  sub_100058000(&qword_10076B8E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100004758(v69);
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v33 = &qword_10076B8E8;
    v34 = &v64;
    goto LABEL_8;
  }

  v51 = v13;
  v55 = a3;
  v56 = v10;
  sub_100005FD0(&v64, &v67);
  sub_10000E188(&qword_10076BB68, &qword_10076BB70);
  sub_10000AE84(&v67, v68);
  swift_unknownObjectRetain();
  dispatch thunk of TTRITreeViewCellProtocol.treeCellViewDelegate.setter();
  sub_1000E5314(v24);
  sub_10000C36C(&v67, v68);
  v25 = v60;
  dispatch thunk of TTRITreeViewCellProtocol.treeCellViewModel.getter();
  v26 = *(v20 + 16);
  v59 = v24;
  v27 = v24;
  v28 = v25;
  v54 = v20 + 16;
  v52 = v26;
  v26(v16, v27, v19);
  v29 = *(v20 + 56);
  v58 = v20 + 56;
  v53 = v29;
  v29(v16, 0, 1, v19);
  v30 = *(v5 + 48);
  sub_10000794C(v25, v7, &unk_1007884E0);
  sub_10000794C(v16, &v7[v30], &unk_1007884E0);
  v31 = v20;
  v32 = *(v20 + 48);
  if (v32(v7, 1, v19) == 1)
  {
    sub_1000079B4(v16, &unk_1007884E0);
    sub_1000079B4(v28, &unk_1007884E0);
    if (v32(&v7[v30], 1, v19) == 1)
    {
      sub_1000079B4(v7, &unk_1007884E0);
      (*(v20 + 8))(v59, v19);
LABEL_16:
      sub_100004758(v69);
      sub_100004758(&v67);
      return 0;
    }

    goto LABEL_11;
  }

  v36 = v51;
  sub_10000794C(v7, v51, &unk_1007884E0);
  if (v32(&v7[v30], 1, v19) == 1)
  {
    sub_1000079B4(v16, &unk_1007884E0);
    sub_1000079B4(v60, &unk_1007884E0);
    (*(v20 + 8))(v36, v19);
LABEL_11:
    sub_1000079B4(v7, &unk_10076B8D0);
    goto LABEL_12;
  }

  v37 = v57;
  (*(v20 + 32))(v57, &v7[v30], v19);
  sub_1001013F4(&qword_10076B908, &type metadata accessor for TTRITreeViewCellModel);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v31 + 8);
  v39(v37, v19);
  sub_1000079B4(v16, &unk_1007884E0);
  sub_1000079B4(v60, &unk_1007884E0);
  v39(v36, v19);
  sub_1000079B4(v7, &unk_1007884E0);
  if (v38)
  {
    v39(v59, v19);
    goto LABEL_16;
  }

LABEL_12:
  sub_10000794C(v55, &v61, &unk_10076B8C0);
  if (v62)
  {
    sub_100005FD0(&v61, &v64);
  }

  else
  {
    v40 = type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper();
    v41 = swift_allocObject();
    *(v41 + 16) = _swiftEmptyArrayStorage;
    *(v41 + 24) = _swiftEmptyArrayStorage;
    *(&v65 + 1) = v40;
    v66 = sub_1001013F4(&qword_10076B900, type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper);
    *&v64 = v41;
  }

  sub_10000C36C(&v67, v68);
  v42 = v56;
  v43 = v59;
  v52(v56, v59, v19);
  v53(v42, 0, 1, v19);
  v45 = *(&v65 + 1);
  v44 = v66;
  v46 = sub_10000C36C(&v64, *(&v65 + 1));
  v62 = v45;
  v63 = *(v44 + 8);
  v47 = sub_1000317B8(&v61);
  (*(*(v45 - 8) + 16))(v47, v46, v45);
  dispatch thunk of TTRITreeViewCellProtocol.setTreeCellViewModel(_:animator:)();
  sub_1000079B4(v42, &unk_1007884E0);
  sub_100004758(&v61);
  v48 = *(&v65 + 1);
  v49 = v66;
  sub_10000C36C(&v64, *(&v65 + 1));
  (*(v49 + 16))(v48, v49);
  (*(v31 + 8))(v43, v19);
  sub_100004758(v69);
  sub_100004758(&v64);
  sub_100004758(&v67);
  return 1;
}

uint64_t sub_1000E0D14(uint64_t a1, char *a2, uint64_t a3)
{
  v59 = a2;
  v5 = sub_100058000(&unk_10076B8D0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_100058000(&unk_1007884E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v50 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  __chkstk_darwin(v15);
  v60 = &v50 - v18;
  v19 = type metadata accessor for TTRITreeViewCellModel();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v57 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v50 - v23;
  sub_10000794C(a1, &v67, &qword_10076AE40);
  if (!v68)
  {
    v33 = &qword_10076AE40;
    v34 = &v67;
LABEL_8:
    sub_1000079B4(v34, v33);
    return 0;
  }

  sub_100007DD8(&v67, v69);
  sub_1000046FC(v69, &v61);
  sub_100058000(&qword_10076B8E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100004758(v69);
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v33 = &unk_10076B8E8;
    v34 = &v64;
    goto LABEL_8;
  }

  v51 = v14;
  v55 = a3;
  v56 = v11;
  sub_100005FD0(&v64, &v67);
  sub_10000E188(&qword_10076B8F0, &qword_10076B8F8);
  sub_10000AE84(&v67, v68);
  swift_unknownObjectRetain();
  dispatch thunk of TTRITreeViewCellProtocol.treeCellViewDelegate.setter();
  sub_1000E5640(v24);
  sub_10000C36C(&v67, v68);
  v25 = v60;
  dispatch thunk of TTRITreeViewCellProtocol.treeCellViewModel.getter();
  v26 = *(v20 + 16);
  v59 = v24;
  v27 = v24;
  v28 = v25;
  v54 = v20 + 16;
  v52 = v26;
  v26(v17, v27, v19);
  v29 = *(v20 + 56);
  v58 = v20 + 56;
  v53 = v29;
  v29(v17, 0, 1, v19);
  v30 = *(v5 + 48);
  sub_10000794C(v25, v7, &unk_1007884E0);
  sub_10000794C(v17, &v7[v30], &unk_1007884E0);
  v31 = v20;
  v32 = *(v20 + 48);
  if (v32(v7, 1, v19) == 1)
  {
    sub_1000079B4(v17, &unk_1007884E0);
    sub_1000079B4(v28, &unk_1007884E0);
    if (v32(&v7[v30], 1, v19) == 1)
    {
      sub_1000079B4(v7, &unk_1007884E0);
      (*(v20 + 8))(v59, v19);
LABEL_16:
      sub_100004758(v69);
      sub_100004758(&v67);
      return 0;
    }

    goto LABEL_11;
  }

  v36 = v51;
  sub_10000794C(v7, v51, &unk_1007884E0);
  if (v32(&v7[v30], 1, v19) == 1)
  {
    sub_1000079B4(v17, &unk_1007884E0);
    sub_1000079B4(v60, &unk_1007884E0);
    (*(v20 + 8))(v36, v19);
LABEL_11:
    sub_1000079B4(v7, &unk_10076B8D0);
    goto LABEL_12;
  }

  v37 = v57;
  (*(v20 + 32))(v57, &v7[v30], v19);
  sub_1001013F4(&qword_10076B908, &type metadata accessor for TTRITreeViewCellModel);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v31 + 8);
  v39(v37, v19);
  sub_1000079B4(v17, &unk_1007884E0);
  sub_1000079B4(v60, &unk_1007884E0);
  v39(v36, v19);
  sub_1000079B4(v7, &unk_1007884E0);
  if (v38)
  {
    v39(v59, v19);
    goto LABEL_16;
  }

LABEL_12:
  sub_10000794C(v55, &v61, &unk_10076B8C0);
  if (v62)
  {
    sub_100005FD0(&v61, &v64);
  }

  else
  {
    v40 = type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper();
    v41 = swift_allocObject();
    *(v41 + 16) = &_swiftEmptyArrayStorage;
    *(v41 + 24) = &_swiftEmptyArrayStorage;
    *(&v65 + 1) = v40;
    v66 = sub_1001013F4(&qword_10076B900, type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper);
    *&v64 = v41;
  }

  sub_10000C36C(&v67, v68);
  v42 = v56;
  v43 = v59;
  v52(v56, v59, v19);
  v53(v42, 0, 1, v19);
  v45 = *(&v65 + 1);
  v44 = v66;
  v46 = sub_10000C36C(&v64, *(&v65 + 1));
  v62 = v45;
  v63 = *(v44 + 8);
  v47 = sub_1000317B8(&v61);
  (*(*(v45 - 8) + 16))(v47, v46, v45);
  dispatch thunk of TTRITreeViewCellProtocol.setTreeCellViewModel(_:animator:)();
  sub_1000079B4(v42, &unk_1007884E0);
  sub_100004758(&v61);
  v48 = *(&v65 + 1);
  v49 = v66;
  sub_10000C36C(&v64, *(&v65 + 1));
  (*(v49 + 16))(v48, v49);
  (*(v31 + 8))(v43, v19);
  sub_100004758(v69);
  sub_100004758(&v64);
  sub_100004758(&v67);
  return 1;
}

void sub_1000E158C(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v43 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v42 = v32 - v6;
  v7 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  v46 = &_swiftEmptyDictionarySingleton;
  v47 = &_swiftEmptyDictionarySingleton;
  v48 = 1;
  v39 = qword_100771740;
  v8 = *(v1 + qword_100771740);
  if (v8)
  {
    v9 = *(v8 + 16);

    if (v9(v10))
    {
      v38 = qword_100771728;
      Strong = swift_unknownObjectUnownedLoadStrong();
      v12 = v42;
      v36 = *(v3 + 56);
      v37 = v3 + 56;
      v36(v42, 1, 1, v43);
      v13 = (*(v8 + 32))(Strong, v12);

      sub_1000079B4(v12, &qword_100772140);
      if (v13 < 0)
      {
        __break(1u);
LABEL_17:
      }

      else
      {
        v32[1] = v8;
        if (!v13)
        {
LABEL_15:

          return;
        }

        v14 = 0;
        v34 = (v3 + 8);
        v33 = xmmword_10062D420;
        v35 = v13;
        while (1)
        {
          v18 = *(v2 + v39);
          if (!v18)
          {
            break;
          }

          v19 = *(v18 + 16);

          if ((v19(v20) & 1) == 0)
          {
            goto LABEL_17;
          }

          v21 = swift_unknownObjectUnownedLoadStrong();
          v23 = v42;
          v22 = v43;
          v36(v42, 1, 1, v43);
          v24 = v40;
          (*(v18 + 48))(v21, v14, v23);

          sub_1000079B4(v23, &qword_100772140);
          v25 = v2;
          v26 = sub_1000D0798(v24, 0, v41);
          v27 = v7;
          v44 = v7;
          sub_10003C8CC(&v44);

          (*v34)(v24, v22);
          v28 = v44;
          v15 = v45;
          v29 = v45[2];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v29 >= v15[3] >> 1)
          {
            v15 = sub_10054704C(isUniquelyReferenced_nonNull_native, v29 + 1, 1, v15);
            v45 = v15;
          }

          v16 = v35;
          ++v14;
          sub_1000EDC58(v29, v29, 1, v26, v28, &qword_10076BBB0);
          v45 = v15;
          sub_1000C4308(v29, 1);
          sub_100058000(&qword_10076B780);
          inited = swift_initStackObject();
          *(inited + 16) = v33;
          *(inited + 32) = v26;

          sub_1000C4C10(inited, v29);
          swift_setDeallocating();
          swift_arrayDestroy();
          sub_1000C4C10(v28, v29);

          v7 = v27;
          v2 = v25;
          if (v16 == v14)
          {
            goto LABEL_15;
          }
        }
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100003E30(v31, qword_1007716F0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Need non-nil dataSource here", 28, 2);
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1000E1A68(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v43 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v5 - 8);
  v42 = v32 - v6;
  v7 = &_swiftEmptyArrayStorage;
  v45 = &_swiftEmptyArrayStorage;
  v46 = &_swiftEmptyDictionarySingleton;
  v47 = &_swiftEmptyDictionarySingleton;
  v48 = 1;
  v39 = qword_100771740;
  v8 = *(v1 + qword_100771740);
  if (!v8)
  {
    return;
  }

  v9 = *(v8 + 16);

  if ((v9(v10) & 1) == 0)
  {
    goto LABEL_14;
  }

  v38 = qword_100771728;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = v42;
  v36 = *(v3 + 56);
  v37 = v3 + 56;
  v36(v42, 1, 1, v43);
  v13 = (*(v8 + 32))(Strong, v12);

  sub_1000079B4(v12, &unk_100771B40);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v32[1] = v8;
    if (v13)
    {
      v14 = 0;
      v34 = (v3 + 8);
      v33 = xmmword_10062D420;
      v35 = v13;
      do
      {
        v18 = *(v2 + v39);
        if (!v18)
        {
          goto LABEL_18;
        }

        v19 = *(v18 + 16);

        if ((v19(v20) & 1) == 0)
        {
          goto LABEL_17;
        }

        v21 = swift_unknownObjectUnownedLoadStrong();
        v23 = v42;
        v22 = v43;
        v36(v42, 1, 1, v43);
        v24 = v40;
        (*(v18 + 48))(v21, v14, v23);

        sub_1000079B4(v23, &unk_100771B40);
        v25 = v2;
        v26 = sub_1000D0BC8(v24, 0, v41);
        v27 = v7;
        v44 = v7;
        sub_10003C8CC(&v44);

        (*v34)(v24, v22);
        v28 = v44;
        v15 = v45;
        v29 = v45[2];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v29 >= v15[3] >> 1)
        {
          v15 = sub_100547654(isUniquelyReferenced_nonNull_native, v29 + 1, 1, v15);
          v45 = v15;
        }

        v16 = v35;
        ++v14;
        sub_1000EDC58(v29, v29, 1, v26, v28, &unk_10076B790);
        v45 = v15;
        sub_1000C478C(v29, 1);
        sub_100058000(&qword_10076B780);
        inited = swift_initStackObject();
        *(inited + 16) = v33;
        *(inited + 32) = v26;

        sub_1000C4FC8(inited, v29);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1000C4FC8(v28, v29);

        v7 = v27;
        v2 = v25;
      }

      while (v16 != v14);
    }

LABEL_14:

    return;
  }

  __break(1u);
LABEL_17:

LABEL_18:
  if (qword_100766FC8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003E30(v31, qword_1007716F0);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_1003F9818("Need non-nil dataSource here", 28, 2);
  __break(1u);
}

unint64_t sub_1000E1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v32 = a1;
  v33 = a3;
  v31 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v31 - 8);
  __chkstk_darwin(v31);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a4(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  swift_beginAccess();
  v19 = *(v7 + 16);
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    (*(v16 + 16))(v18, v32, v15);
    a7 = v31;
    (v12)[2](v14, v33, v31);
    sub_100058000(a5);
    a6 = swift_allocObject();
    *(a6 + 24) = 0;
    *(a6 + 32) = 1;
    *(a6 + 40) = 0;
    *(a6 + 48) = 1;
    swift_weakInit();
    *(a6 + 64) = &_swiftEmptyArrayStorage;
    if (qword_100767018 == -1)
    {
LABEL_12:
      *(a6 + 16) = TTRCounterBasedIdentifierGenerator.allocID()();
      swift_weakAssign();
      (*(v16 + 32))(a6 + *(*a6 + 144), v18, v15);
      (v12)[4](a6 + qword_1007A84C0, v14, a7);
      return a6;
    }

LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_11;
  }

LABEL_3:
  swift_beginAccess();
  v20 = *(v7 + 16);
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_5:
  v21 = sub_1000EF370(a7);
  if (v21)
  {
LABEL_9:
    a6 = v21;
    swift_endAccess();
    swift_weakAssign();
    v26 = *(*a6 + 144);
    swift_beginAccess();
    v27 = *(v16 + 24);

    v27(a6 + v26, v32, v15);
    swift_endAccess();
    v28 = qword_1007A84C0;
    swift_beginAccess();
    v12[3](a6 + v28, v33, v31);
    swift_endAccess();

    return a6;
  }

  v22 = *(v7 + 16);
  if (v22 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v24 = __OFSUB__(v29, 1);
    result = v29 - 1;
    if (!v24)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = __OFSUB__(v23, 1);
    result = v23 - 1;
    if (!v24)
    {
LABEL_8:
      v21 = sub_1000C5CE0(result, a7);
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E236C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  v6 = v5;
  v8 = v7;
  v9 = (a1 + qword_100771778);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];
  sub_100058000(&qword_10076BBC8);
  v12 = swift_allocObject();
  *(v12 + 64) = _swiftEmptyArrayStorage;
  *(v12 + 72) = 0;
  v13 = sub_100460B50(_swiftEmptyArrayStorage);
  v14 = sub_100460B50(_swiftEmptyArrayStorage);
  *(v12 + 80) = v13;
  *(v12 + 88) = v14;
  *(v12 + 96) = &_swiftEmptyDictionarySingleton;
  *(v12 + 16) = v4;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = 0;
  *(v12 + 48) = v11;
  *(v12 + 56) = v10;

  if (a2)
  {
    a2(v12);
  }

  *(a1 + qword_100771770) = v12;

  if ((*(v12 + 72) & 1) == 0)
  {
    sub_10000B0D8(a1 + qword_100771738, v18);
    v15 = v19;
    v16 = v20;
    sub_10000C36C(v18, v19);
    (*(v16 + 16))(v15, v16);
    sub_100004758(v18);
  }

  return v12;
}

uint64_t sub_1000E2540(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  v6 = v5;
  v8 = v7;
  v9 = (a1 + qword_100771778);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];
  sub_100058000(&qword_10076B978);
  v12 = swift_allocObject();
  *(v12 + 64) = &_swiftEmptyArrayStorage;
  *(v12 + 72) = 0;
  v13 = sub_10046161C(&_swiftEmptyArrayStorage);
  v14 = sub_10046161C(&_swiftEmptyArrayStorage);
  *(v12 + 80) = v13;
  *(v12 + 88) = v14;
  *(v12 + 96) = &_swiftEmptyDictionarySingleton;
  *(v12 + 16) = v4;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = 0;
  *(v12 + 48) = v11;
  *(v12 + 56) = v10;

  if (a2)
  {
    a2(v12);
  }

  *(a1 + qword_100771770) = v12;

  if ((*(v12 + 72) & 1) == 0)
  {
    sub_10000B0D8(a1 + qword_100771738, v18);
    v15 = v19;
    v16 = v20;
    sub_10000C36C(v18, v19);
    (*(v16 + 16))(v15, v16);
    sub_100004758(v18);
  }

  return v12;
}

uint64_t sub_1000E2740(uint64_t a1)
{
  sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  if (*(v2 + 16) && (sub_1003AB294(a1), (v3 & 1) != 0))
  {

    v5 = sub_10000FA7C(v4, sub_10057E700);

    if (v5)
    {

      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1000E2850(uint64_t a1)
{
  sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  if (*(v2 + 16) && (sub_1003AB730(a1), (v3 & 1) != 0))
  {

    v5 = sub_10000FA7C(v4, sub_10057E9A0);

    if (v5)
    {

      return 0;
    }
  }

  else
  {
  }

  return 1;
}

void sub_1000E2960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v6 - 8);
  v76 = &v60 - v7;
  v79 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v79 - 8);
  __chkstk_darwin(v79);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v60 - v11;
  __chkstk_darwin(v12);
  v78 = &v60 - v13;
  v84 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v84 - 8);
  __chkstk_darwin(v84);
  v77 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a2;
  v20 = *(a2 + qword_100771748);
  if (!v20)
  {
    return;
  }

  v21 = *(v20 + 16);

  if ((v21(v22) & 1) == 0 || (v23 = *(a1 + 16)) == 0)
  {

    return;
  }

  v63 = v20;
  v26 = *(v17 + 16);
  v25 = v17 + 16;
  v24 = v26;
  v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
  v87 = *(a3 + 16);
  v83 = v87 + 32;
  v70 = qword_100771730;
  v69 = (v14 + 16);
  v68 = (v14 + 8);
  v67 = qword_100771780;
  v66 = (v8 + 8);
  v28 = (v25 - 8);
  v62 = qword_100771728;
  v61 = (v8 + 16);
  v86 = *(v25 + 56);
  v72 = v16;
  v71 = v25;
  v82 = v26;
  v81 = (v25 - 8);
  v26(v19, v27, v16);
  while (1)
  {
    v29 = *(v87 + 16);
    v30 = IndexPath.section.getter();
    if (v30 < 0 || v30 >= v29)
    {
      goto LABEL_7;
    }

    v31 = IndexPath.section.getter();
    if (v31 < 0 || v31 >= v29)
    {
      break;
    }

    v32 = *(v83 + 16 * v31 + 8);
    if (v32 >> 62)
    {
      v59 = _CocoaArrayWrapper.endIndex.getter();
      if (v59 < 0)
      {
        goto LABEL_34;
      }

      v33 = v59;
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = IndexPath.row.getter();
    if ((v34 & 0x8000000000000000) != 0 || v34 >= v33)
    {
    }

    else
    {
      v35 = IndexPath.row.getter();
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = *(v85 + v70);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v39 = [v37 cellForRowAtIndexPath:isa];

      if (v39)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v41 = *(*v36 + 144);
        swift_beginAccess();
        v74 = *v69;
        v42 = &v36[v41];
        v80 = v36;
        v43 = v77;
        v44 = v84;
        v74(v77, v42, v84);
        (*(v63 + 32))(Strong, v39, v43);

        v73 = *v68;
        v73(v43, v44);
        v90[3] = sub_100003540(0, &qword_10076B8B8);
        v89 = 0;
        v90[0] = v39;
        memset(v88, 0, sizeof(v88));
        v75 = v39;
        v45 = v80;
        sub_1000E049C(v90, v80, v88);
        sub_1000079B4(v88, &unk_10076B8C0);
        sub_1000079B4(v90, &qword_10076AE40);
        v46 = &v45[v41];
        v47 = v84;
        v48 = v76;
        v74(v43, v46, v84);
        v49 = v78;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v73(v43, v47);
        swift_beginAccess();
        sub_1000E992C(v49, v48);
        sub_1000079B4(v48, &unk_10076BB50);
        swift_endAccess();

        (*v66)(v49, v79);
      }

      else
      {
        v50 = *(*v36 + 144);
        swift_beginAccess();
        v51 = &v36[v50];
        v52 = v77;
        v53 = v84;
        (*v69)(v77, v51, v84);
        v54 = v78;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        (*v68)(v52, v53);
        swift_beginAccess();
        v55 = v65;
        v56 = v79;
        (*v61)(v65, v54, v79);
        v57 = v64;
        sub_10058B6B8(v64, v55);
        v58 = *v66;
        (*v66)(v57, v56);
        swift_endAccess();

        v58(v54, v56);
      }

      v16 = v72;
    }

    v24 = v82;
    v28 = v81;
LABEL_7:
    (*v28)(v19, v16);
    v27 += v86;
    if (!--v23)
    {

      return;
    }

    v24(v19, v27, v16);
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1000E321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v6 - 8);
  v74 = &v58 - v7;
  v77 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v77 - 8);
  v9 = __chkstk_darwin(v77);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v62 = &v58 - v12;
  __chkstk_darwin(v11);
  v76 = &v58 - v13;
  v82 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v14 = *(v82 - 8);
  __chkstk_darwin(v82);
  v75 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  result = __chkstk_darwin(v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a2;
  v21 = *(a2 + qword_100771748);
  if (!v21)
  {
    return result;
  }

  v22 = *(v21 + 16);

  if ((v22(v23) & 1) == 0 || (v24 = *(a1 + 16)) == 0)
  {
  }

  v61 = v21;
  v27 = *(v17 + 16);
  v26 = v17 + 16;
  v25 = v27;
  v28 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v85 = *(a3 + 16);
  v81 = v85 + 32;
  v68 = qword_100771730;
  v67 = (v14 + 16);
  v66 = (v14 + 8);
  v65 = qword_100771780;
  v64 = (v8 + 8);
  v29 = (v26 - 8);
  v60 = qword_100771728;
  v59 = (v8 + 16);
  v84 = *(v26 + 56);
  v70 = v16;
  v69 = v26;
  v80 = v27;
  v79 = (v26 - 8);
  v27(v20, v28, v16);
  while (1)
  {
    v30 = *(v85 + 16);
    v31 = IndexPath.section.getter();
    if (v31 < 0 || v31 >= v30)
    {
      goto LABEL_7;
    }

    result = IndexPath.section.getter();
    if (result < 0 || result >= v30)
    {
      break;
    }

    v32 = *(v81 + 16 * result + 8);
    if (v32 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_34;
      }

      v33 = result;
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = IndexPath.row.getter();
    if ((v34 & 0x8000000000000000) != 0 || v34 >= v33)
    {
    }

    else
    {
      result = IndexPath.row.getter();
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_35;
        }

        if (result >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v35 = *(v32 + 8 * result + 32);
      }

      v36 = *(v83 + v68);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v38 = [v36 cellForRowAtIndexPath:isa];

      if (v38)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v40 = *(*v35 + 144);
        swift_beginAccess();
        v72 = *v67;
        v41 = &v35[v40];
        v78 = v35;
        v42 = v75;
        v43 = v82;
        v72(v75, v41, v82);
        (*(v61 + 32))(Strong, v38, v42);

        v71 = *v66;
        v71(v42, v43);
        v88[3] = sub_100003540(0, &qword_10076B8B8);
        v87 = 0;
        v88[0] = v38;
        memset(v86, 0, sizeof(v86));
        v73 = v38;
        v44 = v78;
        sub_1000E0D14(v88, v78, v86);
        sub_1000079B4(v86, &unk_10076B8C0);
        sub_1000079B4(v88, &qword_10076AE40);
        v45 = &v44[v40];
        v46 = v82;
        v47 = v74;
        v72(v42, v45, v82);
        v48 = v76;
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v71(v42, v46);
        swift_beginAccess();
        sub_1000E9DB0(v48, v47);
        sub_1000079B4(v47, &qword_10076B8B0);
        swift_endAccess();

        (*v64)(v48, v77);
      }

      else
      {
        v49 = *(*v35 + 144);
        swift_beginAccess();
        v50 = &v35[v49];
        v51 = v75;
        v52 = v82;
        (*v67)(v75, v50, v82);
        v53 = v76;
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        (*v66)(v51, v52);
        swift_beginAccess();
        v54 = v63;
        v55 = v77;
        (*v59)(v63, v53, v77);
        v56 = v62;
        sub_10058C648(v62, v54);
        v57 = *v64;
        (*v64)(v56, v55);
        swift_endAccess();

        v57(v53, v55);
      }

      v16 = v70;
    }

    v25 = v80;
    v29 = v79;
LABEL_7:
    (*v29)(v20, v16);
    v28 += v84;
    if (!--v24)
    {
    }

    v25(v20, v28, v16);
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000E3B50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(_BYTE *))
{
  v9 = sub_100058000(a3);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  v12 = a5(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20[-v14];
  AnyHashable.base.getter();
  if (swift_dynamicCast())
  {
    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v15, v11, v12);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = a6(v15);
    }

    else
    {
      v18 = 0;
    }

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_1000079B4(v11, a3);
    return 0;
  }

  return v18;
}

uint64_t sub_1000E3D80(uint64_t a1)
{
  sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  if (*(v2 + 16) && (sub_1003AB294(a1), (v3 & 1) != 0))
  {

    v5 = sub_10000FA7C(v4, sub_10057E700);

    if (v5)
    {
      v6 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      v8 = sub_1000F4F58(v5, v6, v7, sub_1003B3EDC);

      if (v8)
      {
        sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
        v10 = v9;
        if (*(v9 + 16))
        {
          v11 = sub_1003B3EDC(v5);
          if (v12)
          {
            v13 = *(*(v10 + 56) + 8 * v11);

            return v13;
          }
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000E3FC4(uint64_t a1)
{
  sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  if (*(v2 + 16) && (sub_1003AB730(a1), (v3 & 1) != 0))
  {

    v5 = sub_10000FA7C(v4, sub_10057E9A0);

    if (v5)
    {
      v6 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v8 = sub_1000F4F58(v5, v6, v7, sub_1003B3EDC);

      if (v8)
      {
        sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
        v10 = v9;
        if (*(v9 + 16))
        {
          v11 = sub_1003B3EDC(v5);
          if (v12)
          {
            v13 = *(*(v10 + 56) + 8 * v11);

            return v13;
          }
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000E4208(char a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a2 + 64);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v9 = a1 & 1;

      v8(&v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

unint64_t sub_1000E42AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076BB78);
    sub_10000E188(&qword_10076BB80, &qword_10076BB78);
    result = Set.Iterator.init(_cocoa:)();
    v7 = v39[4];
    v9 = v39[5];
    v10 = v39[6];
    v11 = v39[7];
    v12 = v39[8];
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v16 = (v10 + 64) >> 6;
  v30 = v9;
  v31 = v7;
  v29 = v16;
  while (v7 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22)
    {
      return sub_10008BA48();
    }

    v39[0] = v22;
    sub_100058000(&qword_10076BB78);
    swift_dynamicCast();
    v21 = *&v37[0];
    v19 = v11;
    v20 = v12;
    if (!*&v37[0])
    {
      return sub_10008BA48();
    }

LABEL_18:
    result = sub_1000E492C(v21, a2, a3, a4, a5 & 1, v6);
    v23 = result;
    v36 = v20;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v24 = result;
      if (!result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_8;
      }
    }

    if (v24 < 1)
    {
      goto LABEL_30;
    }

    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      v39[3] = sub_100003540(0, &qword_10076B020);
      v39[0] = v27;
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      v28 = v27;
      sub_1000E049C(v39, v21, v37);

      sub_1000079B4(v37, &unk_10076B8C0);
      sub_1000079B4(v39, &qword_10076AE40);
    }

    while (v24 != v25);
LABEL_8:

    v11 = v19;
    v12 = v36;
    v9 = v30;
    v7 = v31;
    v16 = v29;
  }

  v17 = v11;
  v18 = v12;
  v19 = v11;
  if (v12)
  {
LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      return sub_10008BA48();
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      return sub_10008BA48();
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1000E45EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076B788);
    sub_10000E188(&unk_10076B910, &qword_10076B788);
    result = Set.Iterator.init(_cocoa:)();
    v7 = v39[4];
    v9 = v39[5];
    v10 = v39[6];
    v11 = v39[7];
    v12 = v39[8];
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v16 = (v10 + 64) >> 6;
  v30 = v9;
  v31 = v7;
  v29 = v16;
  while (v7 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22)
    {
      return sub_10008BA48();
    }

    v39[0] = v22;
    sub_100058000(&qword_10076B788);
    swift_dynamicCast();
    v21 = *&v37[0];
    v19 = v11;
    v20 = v12;
    if (!*&v37[0])
    {
      return sub_10008BA48();
    }

LABEL_18:
    v36 = v20;
    result = sub_1000E4E20(v21, a2, a3, a4, a5 & 1, v6);
    v23 = result;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v24 = result;
      if (!result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_8;
      }
    }

    if (v24 < 1)
    {
      goto LABEL_30;
    }

    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      v39[3] = sub_100003540(0, &qword_10076B020);
      v39[0] = v27;
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      v28 = v27;
      sub_1000E0D14(v39, v21, v37);

      sub_1000079B4(v37, &unk_10076B8C0);
      sub_1000079B4(v39, &qword_10076AE40);
    }

    while (v24 != v25);
LABEL_8:

    v11 = v19;
    v12 = v36;
    v9 = v30;
    v7 = v31;
    v16 = v29;
  }

  v17 = v11;
  v18 = v12;
  v19 = v11;
  if (v12)
  {
LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      return sub_10008BA48();
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      return sub_10008BA48();
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000E492C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v43 = a3;
  v11 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for IndexPath();
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*a1 + 144);
  swift_beginAccess();
  v21 = *(v17 + 16);
  v42 = v16;
  v21(v19, a1 + v20, v16);
  LOBYTE(v20) = sub_1000F4F58(a1, a2, a4, sub_1003B3EDC);
  sub_100058000(&qword_10076B920);
  if (v20)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10062D3F0;
    v23 = v43;
    *(v22 + 32) = sub_1002ECE14(v19, a2, v43, a4);
    result = sub_1000DEC74(v19, a2, v23, a4);
    if (result)
    {
      *(v22 + 40) = result;
    }

    else
    {
      *(v22 + 40) = 0;
    }

    goto LABEL_12;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D400;
  v25 = sub_1000F4E08(v19, v43, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);
  if (!v25)
  {
    (*(v40 + 56))(v13, 1, 1, v41);
    goto LABEL_10;
  }

  sub_1000C73C4(v25, a5 & 1, a2, a4, v13);

  v27 = v40;
  v26 = v41;
  if ((*(v40 + 48))(v13, 1, v41) == 1)
  {
LABEL_10:
    result = sub_1000079B4(v13, &unk_100771B10);
    goto LABEL_11;
  }

  v28 = v39;
  (*(v27 + 32))(v39, v13, v26);
  v29 = *(a6 + qword_100771730);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v31 = [v29 cellForRowAtIndexPath:isa];

  result = (*(v27 + 8))(v28, v26);
  if (!v31)
  {
LABEL_11:
    *(v22 + 32) = 0;
    goto LABEL_12;
  }

  *(v22 + 32) = v31;
LABEL_12:
  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  v44 = _swiftEmptyArrayStorage;
  v34 = *(v22 + 16);
  while (1)
  {
    if (v34 == v32)
    {

      (*(v17 + 8))(v19, v42);
      return v33;
    }

    if (v32 >= v34)
    {
      break;
    }

    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_22;
    }

    v36 = *(v22 + 8 * v32++ + 32);
    if (v36)
    {
      v37 = v36;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v33 = v44;
      v32 = v35;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1000E4E20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v43 = a3;
  v11 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for IndexPath();
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*a1 + 144);
  swift_beginAccess();
  v21 = *(v17 + 16);
  v42 = v16;
  v21(v19, a1 + v20, v16);
  LOBYTE(v20) = sub_1000F4F58(a1, a2, a4, sub_1003B3EDC);
  sub_100058000(&qword_10076B920);
  if (v20)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10062D3F0;
    v23 = v43;
    *(v22 + 32) = sub_1002ECEE8(v19, a2, v43, a4);
    result = sub_1000DED88(v19, a2, v23, a4);
    if (result)
    {
      *(v22 + 40) = result;
    }

    else
    {
      *(v22 + 40) = 0;
    }

    goto LABEL_12;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D400;
  v25 = sub_1000F4E08(v19, v43, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);
  if (!v25)
  {
    (*(v40 + 56))(v13, 1, 1, v41);
    goto LABEL_10;
  }

  sub_1000C77E8(v25, a5 & 1, a2, a4, v13);

  v27 = v40;
  v26 = v41;
  if ((*(v40 + 48))(v13, 1, v41) == 1)
  {
LABEL_10:
    result = sub_1000079B4(v13, &unk_100771B10);
    goto LABEL_11;
  }

  v28 = v39;
  (*(v27 + 32))(v39, v13, v26);
  v29 = *(a6 + qword_100771730);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v31 = [v29 cellForRowAtIndexPath:isa];

  result = (*(v27 + 8))(v28, v26);
  if (!v31)
  {
LABEL_11:
    *(v22 + 32) = 0;
    goto LABEL_12;
  }

  *(v22 + 32) = v31;
LABEL_12:
  v32 = 0;
  v33 = &_swiftEmptyArrayStorage;
  v44 = &_swiftEmptyArrayStorage;
  v34 = *(v22 + 16);
  while (1)
  {
    if (v34 == v32)
    {

      (*(v17 + 8))(v19, v42);
      return v33;
    }

    if (v32 >= v34)
    {
      break;
    }

    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_22;
    }

    v36 = *(v22 + 8 * v32++ + 32);
    if (v36)
    {
      v37 = v36;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v33 = v44;
      v32 = v35;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1000E5314@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 24);
  if (*(v1 + 32))
  {
    v15 = 0;
  }

  v23 = v15;
  v16 = qword_1007A84C0;
  swift_beginAccess();
  (*(v12 + 16))(v14, v1 + v16, v11);
  v17 = *(*v1 + 144);
  swift_beginAccess();
  v18 = v1 + v17;
  v19 = v24;
  (*(v2 + 16))(v4, v18, v24);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  (*(v2 + 8))(v4, v19);
  (*(v6 + 16))(v22, v10, v5);
  sub_1001013F4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  AnyHashable.init<A>(_:)();
  (*(v6 + 8))(v10, v5);
  return TTRITreeViewCellModel.init(level:expandedState:itemIdentifier:)();
}

uint64_t sub_1000E5640@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 24);
  if (*(v1 + 32))
  {
    v15 = 0;
  }

  v23 = v15;
  v16 = qword_1007A84C0;
  swift_beginAccess();
  (*(v12 + 16))(v14, v1 + v16, v11);
  v17 = *(*v1 + 144);
  swift_beginAccess();
  v18 = v1 + v17;
  v19 = v24;
  (*(v2 + 16))(v4, v18, v24);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  (*(v2 + 8))(v4, v19);
  (*(v6 + 16))(v22, v10, v5);
  sub_1001013F4(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  AnyHashable.init<A>(_:)();
  (*(v6 + 8))(v10, v5);
  return TTRITreeViewCellModel.init(level:expandedState:itemIdentifier:)();
}

uint64_t sub_1000E596C(uint64_t a1, uint64_t a2, int a3)
{
  v26 = a3;
  v27 = a2;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-v6];
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = v3;
  v13 = *(v3 + qword_10078A548);
  if (!v13)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = v13;
  v15 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  v17 = v16;
  v19 = v18;
  v21 = sub_1000F4E08(a1, v20, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);
  if (v21)
  {
    sub_1000C77E8(v21, v19 & 1, v15, v17, v7);

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      result = (*(v9 + 32))(v12, v7, v8);
      v22 = *(v28 + qword_10078A540);
      if (v22)
      {
        v23 = v22;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v23 scrollToRowAtIndexPath:isa atScrollPosition:v27 animated:v26 & 1];

        return (*(v9 + 8))(v12, v8);
      }

      goto LABEL_10;
    }
  }

  else
  {

    (*(v9 + 56))(v7, 1, 1, v8);
  }

  return sub_1000079B4(v7, &unk_100771B10);
}

void sub_1000E5C98(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a3;
  v26 = a2;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-v6];
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = v3;
  v12 = *(v3 + qword_10078A548);
  if (!v12)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  v16 = v15;
  v18 = v17;
  v20 = sub_1000F4E08(a1, v19, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);
  if (v20)
  {
    sub_1000C73C4(v20, v18 & 1, v14, v16, v7);

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      v21 = *(v27 + qword_10078A540);
      if (v21)
      {
        v22 = v21;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v22 scrollToRowAtIndexPath:isa atScrollPosition:v26 animated:v25 & 1];

        (*(v9 + 8))(v11, v8);
        return;
      }

      goto LABEL_10;
    }
  }

  else
  {

    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_1000079B4(v7, &unk_100771B10);
}

uint64_t sub_1000E5FC4(void *a1, uint64_t (*a2)(void *))
{
  v3 = v2;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v6 = *(Strong + 24), v7 = *(Strong + 32), , v7 == 1))
  {
    v6 = -1;
  }

  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = v6 + 1;
    *(v3 + 32) = 0;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_6;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_6:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return a2(a1);
}

uint64_t sub_1000E609C(int64_t a1, void (*a2)(uint64_t, uint64_t *))
{
  v5 = v3;
  if (a1 < 0)
  {
    goto LABEL_27;
  }

  v2 = a2;
  v3 = a1;
  swift_beginAccess();
  v5 = *(v5 + 64);
  v4 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); result >= v3; result = _CocoaArrayWrapper.endIndex.getter())
  {
    if ((v5 & 0xC000000000000001) != 0)
    {

      if (v3)
      {
        v7 = 0;
        do
        {
          v8 = v7 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v7);
          v7 = v8;
        }

        while (v3 != v8);
      }

      if (!v4)
      {
LABEL_9:
        v9 = 0;
        v5 &= 0xFFFFFFFFFFFFFF8uLL;
        v10 = v5 + 32;
        goto LABEL_12;
      }
    }

    else
    {

      if (!v4)
      {
        goto LABEL_9;
      }
    }

    v5 = _CocoaArrayWrapper.subscript.getter();
    v10 = v11;
    v9 = v12;
    v3 = v13 >> 1;
LABEL_12:
    swift_endAccess();
    v4 = v3 - v9;
    if (v3 <= v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v3;
    }

    swift_unknownObjectRetain();
    v3 = 0;
    v15 = v14 - v9;
    v16 = v10 + 8 * v9;
    while (1)
    {
      if (!v4)
      {
        swift_unknownObjectRelease_n();
        return v3;
      }

      if (!v15)
      {
        break;
      }

      v19 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

      v20 = *v16;
      if (*(*v16 + 48) == 1)
      {
        v21[0] = 0;

        v2(v17, v21);
        v18 = v21[0];
        *(v20 + 40) = v21[0];
        *(v20 + 48) = 0;
      }

      else
      {
        v18 = *(v20 + 40);
      }

      --v15;
      v16 += 8;
      --v4;
      v3 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000E629C(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a5;
  v124 = a4;
  v125 = a3;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v89 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v88 - v10;
  __chkstk_darwin(v12);
  v14 = &v88 - v13;
  v15 = type metadata accessor for IndexSet();
  v113 = *(v15 - 8);
  __chkstk_darwin(v15);
  v108 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v127 = &v88 - v18;
  v110 = sub_100058000(&qword_10076BBF8);
  v19 = *(v110 - 8);
  __chkstk_darwin(v110);
  v21 = (&v88 - v20);
  v22 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v22 - 8);
  v98 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v117 = &v88 - v25;
  __chkstk_darwin(v26);
  v126 = &v88 - v27;
  v97 = sub_100058000(&unk_10076BC00);
  v28 = *(v97 - 8);
  v29 = __chkstk_darwin(v97);
  v96 = &v88 - v30;
  a1(v29);
  sub_100058000(&qword_100781870);
  v31 = TTRTreeDiffResult.patch.getter();
  v95 = *(v31 + 16);
  if (v95)
  {
    v32 = v15;
    v33 = v6;
    v34 = 0;
    v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v123 = qword_10078A548;
    v94 = v31 + v35;
    v93 = v28 + 16;
    v92 = v28 + 8;
    v121 = v19 + 88;
    v122 = v19 + 16;
    v118 = v19;
    v120 = (v19 + 96);
    v119 = enum case for ExtendedPatch.insertion<A>(_:);
    v106 = (v7 + 32);
    v102 = (v7 + 16);
    v107 = enum case for ExtendedPatch.deletion<A>(_:);
    v101 = (v7 + 56);
    v114 = (v7 + 8);
    v105 = enum case for ExtendedPatch.move<A>(_:);
    v115 = (v7 + 48);
    v100 = enum case for ExtendedPatch.update<A>(_:);
    v111 = (v113 + 8);
    v112 = xmmword_10062D400;
    v104 = v11;
    v103 = v14;
    v109 = v32;
    v91 = v28;
    v90 = v31;
    while (v34 < *(v31 + 16))
    {
      v36 = *(v28 + 72);
      v99 = v34;
      v37 = v96;
      v38 = v97;
      (*(v28 + 16))(v96, v94 + v36 * v34, v97);
      TTRTreeDiffResult.ParentAndPatch.parent.getter();
      v39 = TTRTreeDiffResult.ParentAndPatch.patch.getter();
      v40 = v117;
      v41 = *(v28 + 8);
      v42 = v39;
      v41(v37, v38);
      v43 = v110;
      v44 = v33;
      v45 = v32;
      v125 = *(v42 + 16);
      if (v125)
      {
        v46 = 0;
        v113 = v42;
        while (1)
        {
          if (v46 >= *(v42 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v48 = v118;
          (*(v118 + 16))(v21, v42 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v46, v43);
          v49 = (*(v48 + 88))(v21, v43);
          if (v49 == v119)
          {
            break;
          }

          if (v49 == v107)
          {
            (*v120)(v21, v43);
            v54 = *v21;
            sub_100058000(&unk_10076B9F0);
            v55 = swift_allocObject();
            *(v55 + 16) = v112;
            *(v55 + 32) = v54;
            v128 = v55;
            sub_1001013F4(&unk_100771B20, &type metadata accessor for IndexSet);
            sub_100058000(&unk_10076BA00);
            sub_10000E188(&qword_100771B30, &unk_10076BA00);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            if ((*v115)(v126, 1, v44) == 1)
            {
              v56 = TTRTreeViewAnimationByType.deleteSection.getter();
            }

            else
            {
              v56 = TTRTreeViewAnimationByType.deleteRow.getter();
            }

            v72 = v56;
            v73 = *(v124 + v123);
            v42 = v113;
            if (!v73)
            {
              goto LABEL_46;
            }

            v74 = v73;
            v75 = v108;
            sub_1000D0FF8(v108, v126, v72);

            (*v111)(v75, v45);
            goto LABEL_9;
          }

          if (v49 == v105)
          {
            (*v120)(v21, v43);
            v67 = *v21;
            v66 = v21[1];
            v68 = sub_100058000(&qword_10076BC18);
            v69 = v103;
            (*v106)(v103, v21 + *(v68 + 64), v44);
            v70 = *(v124 + v123);
            if (!v70)
            {
              goto LABEL_48;
            }

            v71 = v70;
            sub_1000D4848(v69, v67, v126, v66, v126);

            (*v114)(v69, v44);
            v40 = v117;
          }

          else
          {
            if (v49 != v100)
            {
              goto LABEL_49;
            }

            (*v120)(v21, v43);
            v76 = sub_100058000(&qword_10076BC10);
            v77 = v104;
            (*v106)(v104, v21 + *(v76 + 48), v44);
            (*v102)(v40, v77, v44);
            (*v101)(v40, 0, 1, v44);
            v78 = TTRTreeViewAnimationByType.reload.getter();
            v79 = *(v124 + v123);
            if (!v79)
            {
              goto LABEL_47;
            }

            v80 = v78;
            v81 = *(v76 + 64);
            v82 = v79;
            sub_1000D9550(v40, 0, v80);

            sub_1000079B4(v40, &qword_100772140);
            v83 = *v114;
            (*v114)(v77, v44);
            v83(v21 + v81, v44);
            v43 = v110;
            v45 = v109;
          }

          v42 = v113;
LABEL_10:
          if (v125 == ++v46)
          {
            goto LABEL_3;
          }
        }

        (*v120)(v21, v43);
        v50 = *v21;
        sub_100058000(&unk_10076B9F0);
        v51 = swift_allocObject();
        *(v51 + 16) = v112;
        *(v51 + 32) = v50;
        v128 = v51;
        sub_1001013F4(&unk_100771B20, &type metadata accessor for IndexSet);
        sub_100058000(&unk_10076BA00);
        sub_10000E188(&qword_100771B30, &unk_10076BA00);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v52 = *v115;
        if ((*v115)(v126, 1, v44) == 1)
        {
          v53 = TTRTreeViewAnimationByType.insertSection.getter();
        }

        else
        {
          v53 = TTRTreeViewAnimationByType.insertRow.getter();
        }

        v57 = v53;
        v58 = *(v124 + v123);
        if (!v58)
        {
          goto LABEL_45;
        }

        v59 = v58;
        if ((IndexSet.isEmpty.getter() & 1) == 0)
        {
          v60 = *&v59[qword_100771740];
          if (v60)
          {
            v61 = *(v60 + 16);

            if (v61(v62))
            {
              v63 = v98;
              sub_10000794C(v126, v98, &qword_100772140);
              if (v52(v63, 1, v44) == 1)
              {
                v64 = sub_1000079B4(v63, &qword_100772140);
                __chkstk_darwin(v64);
                v65 = v127;
                *(&v88 - 4) = v59;
                *(&v88 - 3) = v65;
                *(&v88 - 2) = v60;
                *(&v88 - 1) = v57;
                sub_1000CCF14(sub_100100A94, (&v88 - 6), 0, 0, 0, 0);
              }

              else
              {
                v84 = v89;
                v85 = (*v106)(v89, v63, v44);
                __chkstk_darwin(v85);
                v86 = v127;
                *(&v88 - 4) = v59;
                *(&v88 - 3) = v86;
                *(&v88 - 2) = v84;
                *(&v88 - 1) = v57;
                sub_1000CCF14(sub_100100AA0, (&v88 - 6), 0, 0, 0, 0);

                (*v114)(v84, v44);
              }

LABEL_37:
              v45 = v109;
              v42 = v113;
LABEL_8:
              v47 = *(sub_100058000(&unk_10076BC20) + 48);
              (*v111)(v127, v45);
              (*v114)(v21 + v47, v44);
              v43 = v110;
LABEL_9:
              v40 = v117;
              goto LABEL_10;
            }
          }

          goto LABEL_37;
        }

        v45 = v109;
        goto LABEL_8;
      }

LABEL_3:
      v32 = v45;
      v33 = v44;
      v34 = v99 + 1;

      sub_1000079B4(v126, &qword_100772140);
      v28 = v91;
      v31 = v90;
      if (v34 == v95)
      {
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000E7094(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a5;
  v124 = a4;
  v125 = a3;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v89 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v88 - v11;
  __chkstk_darwin(v10);
  v14 = &v88 - v13;
  v15 = type metadata accessor for IndexSet();
  v113 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v108 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v127 = &v88 - v18;
  v110 = sub_100058000(&qword_10076B9D0);
  v19 = *(v110 - 8);
  __chkstk_darwin(v110);
  v21 = (&v88 - v20);
  v22 = sub_100058000(&unk_100771B40);
  v23 = __chkstk_darwin(v22 - 8);
  v98 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v117 = &v88 - v26;
  __chkstk_darwin(v25);
  v126 = &v88 - v27;
  v97 = sub_100058000(&qword_10076B9D8);
  v28 = *(v97 - 8);
  v29 = __chkstk_darwin(v97);
  v96 = &v88 - v30;
  a1(v29);
  sub_100058000(&qword_10076B998);
  v31 = TTRTreeDiffResult.patch.getter();
  v95 = *(v31 + 16);
  if (v95)
  {
    v32 = v15;
    v33 = v6;
    v34 = 0;
    v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v123 = qword_10078A548;
    v94 = v31 + v35;
    v93 = v28 + 16;
    v92 = v28 + 8;
    v121 = v19 + 88;
    v122 = v19 + 16;
    v118 = v19;
    v120 = (v19 + 96);
    v119 = enum case for ExtendedPatch.insertion<A>(_:);
    v106 = (v7 + 32);
    v102 = (v7 + 16);
    v107 = enum case for ExtendedPatch.deletion<A>(_:);
    v101 = (v7 + 56);
    v114 = (v7 + 8);
    v105 = enum case for ExtendedPatch.move<A>(_:);
    v115 = (v7 + 48);
    v100 = enum case for ExtendedPatch.update<A>(_:);
    v111 = (v113 + 8);
    v112 = xmmword_10062D400;
    v104 = v12;
    v103 = v14;
    v109 = v32;
    v91 = v28;
    v90 = v31;
    while (v34 < *(v31 + 16))
    {
      v36 = *(v28 + 72);
      v99 = v34;
      v37 = v96;
      v38 = v97;
      (*(v28 + 16))(v96, v94 + v36 * v34, v97);
      TTRTreeDiffResult.ParentAndPatch.parent.getter();
      v39 = TTRTreeDiffResult.ParentAndPatch.patch.getter();
      v40 = v117;
      v41 = *(v28 + 8);
      v42 = v39;
      v41(v37, v38);
      v43 = v110;
      v44 = v33;
      v45 = v32;
      v125 = *(v42 + 16);
      if (v125)
      {
        v46 = 0;
        v113 = v42;
        while (1)
        {
          if (v46 >= *(v42 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v48 = v118;
          (*(v118 + 16))(v21, v42 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v46, v43);
          v49 = (*(v48 + 88))(v21, v43);
          if (v49 == v119)
          {
            break;
          }

          if (v49 == v107)
          {
            (*v120)(v21, v43);
            v54 = *v21;
            sub_100058000(&unk_10076B9F0);
            v55 = swift_allocObject();
            *(v55 + 16) = v112;
            *(v55 + 32) = v54;
            v128 = v55;
            sub_1001013F4(&unk_100771B20, &type metadata accessor for IndexSet);
            sub_100058000(&unk_10076BA00);
            sub_10000E188(&qword_100771B30, &unk_10076BA00);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            if ((*v115)(v126, 1, v44) == 1)
            {
              v56 = TTRTreeViewAnimationByType.deleteSection.getter();
            }

            else
            {
              v56 = TTRTreeViewAnimationByType.deleteRow.getter();
            }

            v72 = v56;
            v73 = *(v124 + v123);
            v42 = v113;
            if (!v73)
            {
              goto LABEL_46;
            }

            v74 = v73;
            v75 = v108;
            sub_1000D17B8(v108, v126, v72);

            (*v111)(v75, v45);
            goto LABEL_9;
          }

          if (v49 == v105)
          {
            (*v120)(v21, v43);
            v67 = *v21;
            v66 = v21[1];
            v68 = sub_100058000(&qword_10076B9E8);
            v69 = v103;
            (*v106)(v103, v21 + *(v68 + 64), v44);
            v70 = *(v124 + v123);
            if (!v70)
            {
              goto LABEL_48;
            }

            v71 = v70;
            sub_1000D59B8(v69, v67, v126, v66, v126);

            (*v114)(v69, v44);
            v40 = v117;
          }

          else
          {
            if (v49 != v100)
            {
              goto LABEL_49;
            }

            (*v120)(v21, v43);
            v76 = sub_100058000(&qword_10076B9E0);
            v77 = v104;
            (*v106)(v104, v21 + *(v76 + 48), v44);
            (*v102)(v40, v77, v44);
            (*v101)(v40, 0, 1, v44);
            v78 = TTRTreeViewAnimationByType.reload.getter();
            v79 = *(v124 + v123);
            if (!v79)
            {
              goto LABEL_47;
            }

            v80 = v78;
            v81 = *(v76 + 64);
            v82 = v79;
            sub_1000DAA98(v40, 0, v80);

            sub_1000079B4(v40, &unk_100771B40);
            v83 = *v114;
            (*v114)(v77, v44);
            v83(v21 + v81, v44);
            v43 = v110;
            v45 = v109;
          }

          v42 = v113;
LABEL_10:
          if (v125 == ++v46)
          {
            goto LABEL_3;
          }
        }

        (*v120)(v21, v43);
        v50 = *v21;
        sub_100058000(&unk_10076B9F0);
        v51 = swift_allocObject();
        *(v51 + 16) = v112;
        *(v51 + 32) = v50;
        v128 = v51;
        sub_1001013F4(&unk_100771B20, &type metadata accessor for IndexSet);
        sub_100058000(&unk_10076BA00);
        sub_10000E188(&qword_100771B30, &unk_10076BA00);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v52 = *v115;
        if ((*v115)(v126, 1, v44) == 1)
        {
          v53 = TTRTreeViewAnimationByType.insertSection.getter();
        }

        else
        {
          v53 = TTRTreeViewAnimationByType.insertRow.getter();
        }

        v57 = v53;
        v58 = *(v124 + v123);
        if (!v58)
        {
          goto LABEL_45;
        }

        v59 = v58;
        if ((IndexSet.isEmpty.getter() & 1) == 0)
        {
          v60 = *&v59[qword_100771740];
          if (v60)
          {
            v61 = *(v60 + 16);

            if (v61(v62))
            {
              v63 = v98;
              sub_10000794C(v126, v98, &unk_100771B40);
              if (v52(v63, 1, v44) == 1)
              {
                v64 = sub_1000079B4(v63, &unk_100771B40);
                __chkstk_darwin(v64);
                v65 = v127;
                *(&v88 - 4) = v59;
                *(&v88 - 3) = v65;
                *(&v88 - 2) = v60;
                *(&v88 - 1) = v57;
                sub_1000CD5E4(sub_1000FF8E8, (&v88 - 6), 0, 0, 0, 0);
              }

              else
              {
                v84 = v89;
                v85 = (*v106)(v89, v63, v44);
                __chkstk_darwin(v85);
                v86 = v127;
                *(&v88 - 4) = v59;
                *(&v88 - 3) = v86;
                *(&v88 - 2) = v84;
                *(&v88 - 1) = v57;
                sub_1000CD5E4(sub_1000FF8F4, (&v88 - 6), 0, 0, 0, 0);

                (*v114)(v84, v44);
              }

LABEL_37:
              v45 = v109;
              v42 = v113;
LABEL_8:
              v47 = *(sub_100058000(&qword_10076BA10) + 48);
              (*v111)(v127, v45);
              (*v114)(v21 + v47, v44);
              v43 = v110;
LABEL_9:
              v40 = v117;
              goto LABEL_10;
            }
          }

          goto LABEL_37;
        }

        v45 = v109;
        goto LABEL_8;
      }

LABEL_3:
      v32 = v45;
      v33 = v44;
      v34 = v99 + 1;

      sub_1000079B4(v126, &unk_100771B40);
      v28 = v91;
      v31 = v90;
      if (v34 == v95)
      {
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000E7E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v7 = (a2 + *(sub_100058000(&qword_10076BA58) + 28));
  v8 = v7[1];
  *(inited + 48) = *v7;
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x44497463656A626FLL;
  *(inited + 88) = 0xE800000000000000;

  v9 = TTRAccountsListsViewModel.Account.objectID.getter();
  *(inited + 120) = sub_100003540(0, &qword_10076BA50);
  *(inited + 96) = v9;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return a3(a2, a2);
}

uint64_t sub_1000E804C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v7 = sub_100058000(&unk_10078D400);
  v8 = (a2 + *(v7 + 28));
  v9 = v8[1];
  *(inited + 48) = *v8;
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x44497463656A626FLL;
  *(inited + 88) = 0xE800000000000000;

  v10 = TTRAccountsListsViewModel.Account.objectID.getter();
  *(inited + 120) = sub_100003540(0, &qword_10076BA50);
  *(inited + 96) = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return a3(a2, a2 + *(v7 + 32));
}

unint64_t sub_1000E821C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      v15 = v14;
      v1 = sub_1003B3EE4(v14, 0);
      sub_1000EDF3C(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1003B3ED8(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_1003B3ED8(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

unint64_t sub_1000E8430(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      v15 = v14;
      v1 = sub_1003B3EE4(v14, 0);
      sub_1000EE454(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = &_swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1003B3ED8(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_1003B3ED8(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

unint64_t sub_1000E8644(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(unint64_t))
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = &_swiftEmptyArrayStorage;
  }

  v16 = v15[2];

  if (!__OFSUB__(v9 >> 1, v10))
  {
    if (v16 == (v9 >> 1) - v10)
    {
      v14 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v14)
      {
        goto LABEL_10;
      }

      v14 = &_swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  swift_unknownObjectRelease();
  a3 = v10;
  a4 = v9;
  a5 = v8;
  a2 = v7;
LABEL_2:
  sub_1000E9784(a1, a2, a3, a4, a5);
  v14 = v13;
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    a1 = *(v14 + 16);
    v17 = a1 >> 1;
    goto LABEL_13;
  }

  while (1)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24 < -1)
    {
      __break(1u);
      goto LABEL_44;
    }

    a1 = v24;
    v17 = v24 / 2;
LABEL_13:
    if (a1 + 1 < 3)
    {
      return v14;
    }

    v9 = -v17;
    v10 = 4;
    while (1)
    {
      v7 = a1 - (v10 - 3);
      if (__OFSUB__(a1, v10 - 3))
      {
        break;
      }

      v19 = v10 - 4;
      if (v10 - 4 != v7)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19 >= v20)
          {
            goto LABEL_39;
          }

          if (v7 >= v20)
          {
            goto LABEL_40;
          }

          v8 = *(v14 + 8 * v10);
          v21 = *(v14 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
        {
          v14 = a7(v14);
          v22 = (v14 >> 62) & 1;
        }

        else
        {
          LODWORD(v22) = 0;
        }

        v23 = v14 & 0xFFFFFFFFFFFFFF8;
        *((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v21;

        if ((v14 & 0x8000000000000000) != 0 || v22)
        {
          v14 = a7(v14);
          v23 = v14 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_36:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v7 >= *(v23 + 16))
        {
          goto LABEL_41;
        }

        *(v23 + 8 * v7 + 32) = v8;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

unint64_t sub_1000E88C0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1003B3EE4(v19, 0);
      sub_1000EE2A0(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1003B3ED8(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1003B3ED8(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1000E8AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1001013F4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1001013F4(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1000E8E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSectionID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1001013F4(&qword_1007758E0, &type metadata accessor for TTRSectionID);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1001013F4(&qword_10076BE70, &type metadata accessor for TTRSectionID);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1000E9230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1001013F4(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1001013F4(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1000E95E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_1000E96E0(unint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = a2(v3, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v5 = v4;

    if (v5 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return a2;
}

void sub_1000E9784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_100058000(a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100058000(&qword_10076B780);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1000E987C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1003B3EE4(v2, 0);

    v1 = sub_1003B3294(&v5, (v3 + 32), v2, v1);
    sub_10008BA48();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_1000E992C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001013F4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1001013F4(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10058DED8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1000EB110(v13, &type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1000E9C18(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1000EACFC();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_100003540(0, &qword_10076BA50);
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10058DF14();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1000EAF70(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1000E9DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001013F4(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1001013F4(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10058E1A8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1000EB110(v13, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1000EA09C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v7 = *v3;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.contains(_:)();

    if (v8)
    {
      v9 = a3(v7, a1);

      return v9;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  v12 = *(a1 + 16);
  Hasher._combine(_:)(v12);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v5 + 32);
  v15 = v13 & ~v14;
  if (((*(v5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v14;
  while (*(*(*(v5 + 48) + 8 * v15) + 16) != v12)
  {
    v15 = (v15 + 1) & v16;
    if (((*(v5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v20 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 8 * v15);
  sub_1000EB40C(v15);
  result = v19;
  *v3 = v20;
  return result;
}

uint64_t sub_1000EA224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001013F4(&qword_100769AC0, &type metadata accessor for IndexPath);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1001013F4(&unk_100772710, &type metadata accessor for IndexPath);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10058E480();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1000EB110(v13, &type metadata accessor for IndexPath, &qword_100769AC0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1000EA510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001013F4(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1001013F4(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10058E4A8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1000EB110(v13, &type metadata accessor for TTRRemindersListViewModel.SectionID, &unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1000EA7FC(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 7;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 7;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10058E4D0();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_1000EB5B4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1000EA904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001013F4(&qword_10076BB40, &type metadata accessor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1001013F4(&qword_10076BB48, &type metadata accessor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10058E4E4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1000EB110(v13, &type metadata accessor for UUID, &qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_1000EABF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_10059437C(v6, v5);
  v16 = v7;
  Hasher.init(_seed:)();
  v8 = *(a2 + 16);
  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 48);
    while (1)
    {
      v7 = *(v14 + 8 * v12);
      if (*(v7 + 16) == v8)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  result = sub_1000EB40C(v12);
  if (v8 == *(v7 + 16))
  {
    *v3 = v16;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EACFC()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1005943A0(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100003540(0, &qword_10076BA50);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_1000EAF70(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000EAE64(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_1005947B0(v6, v5);
  v16 = v7;
  Hasher.init(_seed:)();
  v8 = *(a2 + 16);
  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 48);
    while (1)
    {
      v7 = *(v14 + 8 * v12);
      if (*(v7 + 16) == v8)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  result = sub_1000EB40C(v12);
  if (v8 == *(v7 + 16))
  {
    *v3 = v16;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000EAF70(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000EB110(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_1001013F4(v41, v42);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }

  return result;
}

unint64_t sub_1000EB40C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(*(v10 + 16));
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000EB5B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1000EB75C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a6;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v11;
      a5 = v10;
      a6 = v9;
    }

    v12 = sub_1000F4818(result, a2, a3, a4, a5, a6);

    return v12;
  }

  return result;
}

uint64_t sub_1000EB804(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v5 = a4;
  v6 = a3;
  if (*(a4 + 16) == a3)
  {

    return v5;
  }

  sub_100058000(a5);
  result = static _DictionaryStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 64;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_16:
    v17 = v14 | (v12 << 6);
    v18 = *(*(v5 + 48) + 8 * v17);
    v19 = *(v5 + 56) + 16 * v17;
    v31 = *v19;
    v30 = *(v19 + 8);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(*(v18 + 16));
    result = Hasher._finalize()();
    v20 = -1 << *(v10 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v13 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v10 + 48) + 8 * v23) = v18;
    v28 = *(v10 + 56) + 16 * v23;
    *v28 = v31;
    *(v28 + 8) = v30;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      return v10;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v10;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000EBA3C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076BB78);
    sub_10000E188(&qword_10076BB80, &qword_10076BB78);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v17;
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

  if (a1 < 0)
  {
    goto LABEL_18;
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

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_10008BA48();
    }

    while (1)
    {
      sub_1000EA09C(v15, sub_10058DF00, sub_1000EABF0);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076BB78);
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_10008BA48();
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
      return sub_10008BA48();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EBCEC(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076B788);
    sub_10000E188(&unk_10076B910, &qword_10076B788);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v17;
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

  if (a1 < 0)
  {
    goto LABEL_18;
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

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_10008BA48();
    }

    while (1)
    {
      sub_1000EA09C(v15, sub_10058E1D0, sub_1000EAE64);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076B788);
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_10008BA48();
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
      return sub_10008BA48();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EBFD8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1000EA7FC(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1000EC108(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  v8 = sub_100058000(a2);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - v9;
  v11 = a4(0);
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v12 + 8;
    v23[2] = v12 + 16;

    for (i = 0; v18; result = sub_1000079B4(v10, v24))
    {
      v21 = i;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v12 + 16))(v15, *(a1 + 48) + *(v12 + 72) * (v22 | (v21 << 6)), v11);
      v26(v15);
      (*(v12 + 8))(v15, v11);
    }

    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++i;
      if (v18)
      {
        i = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1000EC324(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000EC714(v8, v9, a1, v4);
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
    return sub_1000EC450(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000EC450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1001013F4(&qword_10076B840, &type metadata accessor for IndexPath);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000EC714(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = &_swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1000ED7BC(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1000ED13C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000ED7BC(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_1000ED730(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = &_swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_1001013F4(&qword_10076B840, &type metadata accessor for IndexPath);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100546DD8(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_100546DD8((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1000ED13C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000ED7BC(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_1000ED730(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1001013F4(&qword_10076B840, &type metadata accessor for IndexPath);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1000ED13C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for IndexPath();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_1001013F4(&qword_10076B840, &type metadata accessor for IndexPath);
          LOBYTE(v35) = dispatch thunk of static Comparable.< infix(_:_:)();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_1001013F4(&qword_10076B840, &type metadata accessor for IndexPath);
        LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_1000ED7D0(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1000ED730(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ED7BC(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000ED7D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1000ED8F0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = sub_100058000(a4);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000ED9D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10076B848);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000EDB2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 24) >> 1)
  {
    v8 = a5();
    *v6 = v8;
  }

  result = sub_1000EDC58(v10, a2, 1, a3, a4, a6);
  *v6 = v8;
  return result;
}

char *sub_1000EDC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v6;
  v13 = (v12 + 32 + 16 * a1);
  sub_100058000(a6);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v7);
  v16 = a3 - v7;
  if (v15)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = *(v12 + 16);
  v15 = __OFSUB__(v17, a2);
  v18 = v17 - a2;
  if (v15)
  {
    goto LABEL_21;
  }

  result = &v13[2 * a3];
  v19 = (v12 + 32 + 16 * a2);
  if (result != v19 || result >= &v19[16 * v18])
  {
    result = memmove(result, v19, 16 * v18);
  }

  v21 = *(v12 + 16);
  v15 = __OFADD__(v21, v16);
  v22 = v21 + v16;
  if (v15)
  {
    goto LABEL_22;
  }

  *(v12 + 16) = v22;
LABEL_13:
  if (a3 > 0)
  {
    *v13 = a4;
    v13[1] = a5;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:

    __break(1u);
    return result;
  }
}

void sub_1000EDD80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a4;
  v27 = a7;
  v14 = *v8;
  v15 = (v14 + 32 + 32 * a1);
  swift_arrayDestroy();
  v16 = __OFSUB__(a3, v9);
  v17 = a3 - v9;
  if (v16)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = *(v14 + 16);
  v16 = __OFSUB__(v18, a2);
  v19 = v18 - a2;
  if (v16)
  {
    goto LABEL_21;
  }

  v20 = &v15[4 * a3];
  v21 = (v14 + 32 + 32 * a2);
  if (v20 != v21 || v20 >= &v21[32 * v19])
  {
    memmove(v20, v21, 32 * v19);
  }

  v23 = *(v14 + 16);
  v16 = __OFADD__(v23, v17);
  v24 = v23 + v17;
  if (v16)
  {
    goto LABEL_22;
  }

  *(v14 + 16) = v24;
LABEL_13:
  if (a3 >= 1)
  {
    *v15 = v7;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = v27;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:
    v25 = v7;

    v26 = v27;
    __break(1u);
    return;
  }
}

uint64_t sub_1000EDED0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_100058000(a5);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EDF3C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&qword_10076BBC0, &qword_10076BBB8);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BBB8);
            v9 = sub_100295E94(v13, i, a3);
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
        sub_100058000(&qword_10076BB78);
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

uint64_t sub_1000EE0EC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&unk_10076BAE0, &qword_10076BAD8);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BAD8);
            v9 = sub_10002B474(v13, i, a3);
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
        sub_100003540(0, &qword_10076BAD0);
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

uint64_t sub_1000EE2A0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&qword_10076B828, &qword_10076B820);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076B820);
            v9 = sub_100295F14(v13, i, a3);
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
        sub_100003540(0, &qword_10076C550);
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

uint64_t sub_1000EE454(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&qword_10076B7B0, &qword_10076B7A8);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076B7A8);
            v9 = sub_100295E94(v13, i, a3);
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
        sub_100058000(&qword_10076B788);
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

uint64_t sub_1000EE604(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&qword_10076BC50, &qword_10076BC48);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BC48);
            v9 = sub_10002B474(v13, i, a3);
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
        sub_100003540(0, &qword_10076BC40);
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

uint64_t sub_1000EE7B8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&unk_10076BC80, &qword_10076BC78);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BC78);
            v9 = sub_10002B474(v13, i, a3);
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
        sub_100003540(0, &qword_10076BC70);
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

uint64_t sub_1000EE96C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&unk_10076BCF0, &qword_10076BCE8);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BCE8);
            v9 = sub_10002B474(v13, i, a3);
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
        sub_100003540(0, &qword_10076BCE0);
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

uint64_t sub_1000EEB20(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&unk_10076BB10, &qword_10076BB08);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BB08);
            v9 = sub_10002B474(v13, i, a3);
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
        sub_100003540(0, &qword_10076BB00);
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

uint64_t sub_1000EECD4(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&qword_10076BCC8, &qword_10076BCC0);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BCC0);
            v9 = sub_100295F94(v13, i, a3);
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
        type metadata accessor for TTRITableSection();
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

uint64_t sub_1000EEE78(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&qword_10076BCB8, &qword_10076BCB0);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BCB0);
            v9 = sub_10002B474(v13, i, a3);
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
        sub_100003540(0, &qword_10076BCA8);
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

uint64_t sub_1000EF02C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&qword_10076BCA0, &qword_10076BC98);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076BC98);
            v9 = sub_10002B474(v13, i, a3);
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
        sub_100003540(0, &unk_10076BAB0);
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

uint64_t sub_1000EF1E0(int64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  v5 = sub_1000EF248(a1, a4);
  v6 = v5[2];

  return a2(v5 + 4, v6);
}

void *sub_1000EF248(int64_t a1, uint64_t (*a2)(uint64_t, void))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, &_swiftEmptyArrayStorage);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = sub_1000E96E0(a1, a2);

      objc_setAssociatedObject(v4, &_swiftEmptyArrayStorage, v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

uint64_t sub_1000EF370(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000EF3E4(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      __CocoaDictionary.lookup(_:)();
      sub_100003540(0, &qword_10076BA50);
      swift_dynamicCast();
      sub_100003540(0, &qword_10076BB00);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  __CocoaDictionary.Index.key.getter();
  sub_100003540(0, &qword_10076BA50);
  swift_dynamicCast();
  a2 = sub_1002613B0(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

uint64_t sub_1000EF5C8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 100;
  }

  v4 = a3(*a1);
  if ((v5 & 1) == 0)
  {
    return 100;
  }

  v6 = (*(a2 + 56) + 16 * v4);
  if (v6[8])
  {
    return 100;
  }

  else
  {
    return *v6;
  }
}

BOOL sub_1000EF634(unsigned int a1, int a2)
{
  v2 = a2 & 0xFFFFFF;
  v3 = (a1 >> 22) & 3;
  if (!v3)
  {
    if (v2 < 0x400000)
    {
      return (a2 ^ a1 ^ 1) & 1;
    }

    return 0;
  }

  if (v3 != 1)
  {
    return v2 == 0x800000;
  }

  if ((a2 & 0xC00000) != 0x400000)
  {
    return 0;
  }

  v4 = ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000) >> 16);
  if ((a2 ^ a1))
  {
    LOBYTE(v4) = 0;
  }

  if (((a1 ^ a2) & 0x100) != 0)
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void *sub_1000EF6BC(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t, void))
{
  v56 = a6;
  v55 = *a2;
  v54 = *(a2 + 2);
  v53 = *(a2 + 24);
  v52 = a2[2];
  v51 = *(a2 + 6);
  v50 = *(a2 + 56);
  v10 = sub_100058000(&qword_10076B938);
  __chkstk_darwin(v10 - 8);
  v49 = &v40 - v11;
  v57 = sub_100058000(&unk_10076B940);
  v12 = *(v57 - 8);
  v13 = __chkstk_darwin(v57);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v40 - v15;
  v47 = a4;
  v46 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(a3);
    sub_10000E188(a5, a3);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v66;
    v17 = v67;
    v18 = v68;
    v19 = v69;
    v20 = v70;
  }

  else
  {
    v21 = -1 << *(a1 + 32);
    v17 = a1 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(a1 + 56);

    v19 = 0;
  }

  v44 = v18;
  v24 = (v18 + 64) >> 6;
  v48 = (v12 + 48);
  v41 = v12;
  v42 = (v12 + 32);
  v45 = &_swiftEmptyArrayStorage;
LABEL_8:
  v25 = v19;
  if (a1 < 0)
  {
    while (1)
    {
      v30 = __CocoaSet.Iterator.next()();
      if (!v30)
      {
        break;
      }

      v59 = v30;
      sub_100058000(v46);
      swift_dynamicCast();
      v29 = v71;
      v19 = v25;
      v28 = v20;
      if (!v71)
      {
        break;
      }

LABEL_17:
      v31 = a1;
      v60 = v55;
      v61 = v54;
      v62 = v53;
      v63 = v52;
      v64 = v51;
      v65 = v50;
      v32 = v49;
      v33 = v58;
      sub_1000AD868(v29, &v60, v56, v49);
      v58 = v33;
      if (v33)
      {

        sub_10008BA48();

        return v45;
      }

      if ((*v48)(v32, 1, v57) != 1)
      {
        v34 = *v42;
        v35 = v40;
        v36 = v57;
        (*v42)(v40, v32, v57);
        v34(v43, v35, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100546EDC(0, v45[2] + 1, 1, v45);
        }

        a1 = v31;
        v38 = v45[2];
        v37 = v45[3];
        if (v38 >= v37 >> 1)
        {
          v45 = sub_100546EDC(v37 > 1, v38 + 1, 1, v45);
        }

        v39 = v45;
        v45[2] = v38 + 1;
        result = (v34)(v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, v43, v57);
        v20 = v28;
        goto LABEL_8;
      }

      result = sub_1000079B4(v32, &qword_10076B938);
      v25 = v19;
      v20 = v28;
      a1 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v26 = v25;
    v27 = v20;
    v19 = v25;
    if (!v20)
    {
      while (1)
      {
        v19 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v19 >= v24)
        {
          goto LABEL_26;
        }

        v27 = *(v17 + 8 * v19);
        ++v26;
        if (v27)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }

LABEL_13:
    v28 = (v27 - 1) & v27;
    v29 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v27)))));

    if (v29)
    {
      goto LABEL_17;
    }
  }

LABEL_26:
  sub_10008BA48();
  return v45;
}

void *sub_1000EFC58(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, unint64_t *a5, void (*a6)(void))
{
  v56 = a6;
  v55 = *a2;
  v54 = *(a2 + 2);
  v53 = *(a2 + 24);
  v52 = a2[2];
  v51 = *(a2 + 6);
  v50 = *(a2 + 56);
  v10 = sub_100058000(&unk_10076B950);
  __chkstk_darwin(v10 - 8);
  v49 = &v40 - v11;
  v57 = sub_100058000(&qword_100769AA8);
  v12 = *(v57 - 8);
  v13 = __chkstk_darwin(v57);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v40 - v15;
  v47 = a4;
  v46 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(a3);
    sub_10000E188(a5, a3);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v66;
    v17 = v67;
    v18 = v68;
    v19 = v69;
    v20 = v70;
  }

  else
  {
    v21 = -1 << *(a1 + 32);
    v17 = a1 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(a1 + 56);

    v19 = 0;
  }

  v44 = v18;
  v24 = (v18 + 64) >> 6;
  v48 = (v12 + 48);
  v41 = v12;
  v42 = (v12 + 32);
  v45 = &_swiftEmptyArrayStorage;
LABEL_8:
  v25 = v19;
  if (a1 < 0)
  {
    while (1)
    {
      v30 = __CocoaSet.Iterator.next()();
      if (!v30)
      {
        break;
      }

      v59 = v30;
      sub_100058000(v46);
      swift_dynamicCast();
      v29 = v71;
      v19 = v25;
      v28 = v20;
      if (!v71)
      {
        break;
      }

LABEL_17:
      v31 = a1;
      v60 = v55;
      v61 = v54;
      v62 = v53;
      v63 = v52;
      v64 = v51;
      v65 = v50;
      v32 = v49;
      v33 = v58;
      sub_1000AD668(v29, &v60, v56, v49);
      v58 = v33;
      if (v33)
      {

        sub_10008BA48();

        return v45;
      }

      if ((*v48)(v32, 1, v57) != 1)
      {
        v34 = *v42;
        v35 = v40;
        v36 = v57;
        (*v42)(v40, v32, v57);
        v34(v43, v35, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100546F00(0, v45[2] + 1, 1, v45);
        }

        a1 = v31;
        v38 = v45[2];
        v37 = v45[3];
        if (v38 >= v37 >> 1)
        {
          v45 = sub_100546F00(v37 > 1, v38 + 1, 1, v45);
        }

        v39 = v45;
        v45[2] = v38 + 1;
        result = (v34)(v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, v43, v57);
        v20 = v28;
        goto LABEL_8;
      }

      result = sub_1000079B4(v32, &unk_10076B950);
      v25 = v19;
      v20 = v28;
      a1 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v26 = v25;
    v27 = v20;
    v19 = v25;
    if (!v20)
    {
      while (1)
      {
        v19 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v19 >= v24)
        {
          goto LABEL_26;
        }

        v27 = *(v17 + 8 * v19);
        ++v26;
        if (v27)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }

LABEL_13:
    v28 = (v27 - 1) & v27;
    v29 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v27)))));

    if (v29)
    {
      goto LABEL_17;
    }
  }

LABEL_26:
  sub_10008BA48();
  return v45;
}

uint64_t sub_1000F01F4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v72 = a4;
  v73 = a5;
  v79 = a2;
  v80 = a3;
  v13 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v13 - 8);
  v78 = &v58 - v14;
  v77 = type metadata accessor for IndexPath();
  v15 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_10076B960);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = sub_100058000(&qword_10076B968);
  v63 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v60 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v59 = &v58 - v23;
  v62 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(a6);
    sub_10000E188(a8, a6);
    Set.Iterator.init(_cocoa:)();
    result = v84;
    v25 = v85;
    v26 = v86;
    v27 = v87;
    v28 = v88;
  }

  else
  {
    v29 = -1 << *(a1 + 32);
    v25 = a1 + 56;
    v30 = ~v29;
    v31 = -v29;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(a1 + 56);

    v26 = v30;
    v28 = v33;
    v27 = 0;
  }

  v65 = a6;
  v66 = a7;
  v61 = v26;
  v34 = (v26 + 64) >> 6;
  v76 = (v15 + 48);
  v68 = (v15 + 16);
  v69 = (v15 + 32);
  v67 = (v15 + 8);
  v75 = (v63 + 56);
  v64 = &_swiftEmptyArrayStorage;
  v74 = (v63 + 48);
  v81 = result;
  v70 = v34;
LABEL_8:
  v35 = v27;
  if (result < 0)
  {
    do
    {
      v40 = __CocoaSet.Iterator.next()();
      if (!v40)
      {
        goto LABEL_32;
      }

      v83 = v40;
      sub_100058000(v65);
      swift_dynamicCast();
      v39 = v89;
      v27 = v35;
      v38 = v28;
      if (!v89)
      {
        goto LABEL_32;
      }

LABEL_17:
      v82 = v38;
      v41 = v78;
      v79(v39);
      v42 = v77;
      if ((*v76)(v41, 1, v77) == 1)
      {
        sub_1000079B4(v41, &unk_100771B10);
        if (qword_100766EC0 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_100003E30(v43, qword_100769A10);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "Unable to look up index/indexPath", v46, 2u);
        }

        v47 = 1;
      }

      else
      {
        v48 = v25;
        v49 = v20;
        v50 = v71;
        (*v69)(v71, v41, v42);
        (*v68)(v19, v50, v42);
        v51 = v72(v39);
        v52 = v50;
        v20 = v49;
        v25 = v48;
        v34 = v70;
        (*v67)(v52, v42);
        v47 = 0;
        *&v19[*(v20 + 36)] = v51;
      }

      (*v75)(v19, v47, 1, v20);

      if ((*v74)(v19, 1, v20) != 1)
      {
        v53 = v25;
        v54 = v59;
        sub_100016588(v19, v59, &qword_10076B968);
        sub_100016588(v54, v60, &qword_10076B968);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_100546F24(0, v64[2] + 1, 1, v64);
        }

        v56 = v64[2];
        v55 = v64[3];
        v25 = v53;
        if (v56 >= v55 >> 1)
        {
          v64 = sub_100546F24(v55 > 1, v56 + 1, 1, v64);
        }

        v57 = v64;
        v64[2] = v56 + 1;
        sub_100016588(v60, v57 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v56, &qword_10076B968);
        result = v81;
        v28 = v82;
        goto LABEL_8;
      }

      sub_1000079B4(v19, &qword_10076B960);
      v35 = v27;
      result = v81;
      v28 = v82;
    }

    while (v81 < 0);
  }

  v36 = v35;
  v37 = v28;
  v27 = v35;
  if (v28)
  {
LABEL_13:
    v38 = (v37 - 1) & v37;
    v39 = *(*(result + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v37)))));

    if (v39)
    {
      goto LABEL_17;
    }

LABEL_32:
    sub_10008BA48();
    return v64;
  }

  while (1)
  {
    v27 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v27 >= v34)
    {
      goto LABEL_32;
    }

    v37 = *(v25 + 8 * v27);
    ++v36;
    if (v37)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1000F097C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(a6);
    sub_10000E188(a8, a6);
    Set.Iterator.init(_cocoa:)();
    v8 = v37;
    v11 = v38;
    v12 = v39;
    v13 = v40;
    v14 = v41;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v13 = 0;
  }

  v32 = &_swiftEmptyArrayStorage;
  while (v8 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v42 = v21, sub_100058000(a6), swift_dynamicCast(), (v20 = v35) == 0))
    {
LABEL_28:
      sub_10008BA48();
      return;
    }

LABEL_18:
    a2(&v35, v20);
    if (v36 == 1)
    {
      if (qword_100766EC0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100003E30(v22, qword_100769A10);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Unable to look up index/indexPath", v25, 2u);
      }
    }

    else
    {
      v26 = v35;
      v27 = a4(v20);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100546F48(0, *(v32 + 2) + 1, 1, v32);
      }

      v29 = *(v32 + 2);
      v28 = *(v32 + 3);
      if (v29 >= v28 >> 1)
      {
        v32 = sub_100546F48((v28 > 1), v29 + 1, 1, v32);
      }

      *(v32 + 2) = v29 + 1;
      v30 = &v32[16 * v29];
      *(v30 + 4) = v26;
      *(v30 + 5) = v27;
    }
  }

  v18 = v13;
  v19 = v14;
  if (v14)
  {
LABEL_14:
    v14 = (v19 - 1) & v19;
    v20 = *(*(v8 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v20)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v13 >= ((v12 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v19 = *(v11 + 8 * v13);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}